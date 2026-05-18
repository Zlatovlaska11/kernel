use core::sync::atomic::{AtomicU64, Ordering};

use super::switch::context_switch;
use super::{Task, TaskState};
use crate::task::join::{JoinHandle, JoinState};
use alloc::collections::VecDeque;
use alloc::sync::Arc;
use alloc::vec::Vec;
use spin::Mutex;

pub static SCHEDULER: Mutex<Scheduler> = Mutex::new(Scheduler::new());

pub static TICK_COUNT: AtomicU64 = AtomicU64::new(0);

pub const TICKS_PER_MS: u64 = 1; // 1 tick = 10ms

pub fn ms_to_ticks(ms: u64) -> u64 {
    ms / 10
}

pub struct Scheduler {
    pub tasks: VecDeque<Task>,
    pub current: Option<Task>,
    pub blocked: Vec<Task>,
}

impl Scheduler {
    pub const fn new() -> Self {
        Self {
            tasks: VecDeque::new(),
            current: None,
            blocked: Vec::new(),
        }
    }

    pub fn spawn(&mut self, entry: fn() -> ()) {
        self.tasks.push_back(Task::new(entry));
    }

    pub fn take_current(&mut self) -> Option<Task> {
        let mut task = self.current.take()?;
        task.state = TaskState::Blocked;
        Some(task)
    }

    pub fn wake_task(&mut self, mut task: Task) {
        task.state = TaskState::Ready;
        task.wake_time = None;
        self.tasks.push_back(task);
    }

    pub fn spawn_joinable(&mut self, entry: fn()) -> JoinHandle {
        let state = JoinState::new();
        let handle = JoinHandle {
            state: Arc::clone(&state),
        };

        let mut task = Task::new(entry);
        task.join_state = Some(state);

        self.tasks.push_back(task);
        handle
    }

    pub fn schedule_next_no_save(&mut self) {
        self.check_sleeping();

        let Some(next) = self.tasks.pop_front() else {
            // all tasks are blocked — idle loop
            unsafe {
                loop {
                    x86_64::instructions::interrupts::enable_and_hlt();
                }
            }
        };

        self.current = Some(next);
        self.current.as_mut().unwrap().state = TaskState::Running;

        unsafe {
            let rsp = self.current.as_ref().unwrap().rsp;
            x86_64::instructions::interrupts::enable();
            core::arch::asm!(
                "mov rsp, {0}",
                "pop r15", "pop r14", "pop r13",
                "pop r12", "pop rbx", "pop rbp",
                "ret",
                in(reg) rsp,
                options(noreturn),
            );
        }
    }

    pub fn sleep_current(&mut self, ms: u64) {
        let wake_at = TICK_COUNT.load(core::sync::atomic::Ordering::Relaxed) + ms_to_ticks(ms);

        if let Some(mut current) = self.current.take() {
            current.wake_time = Some(wake_at);
            current.state = super::TaskState::Blocked;
            self.blocked.push(current);
        }

        self.scheadule_next();
    }

    pub fn check_sleeping(&mut self) {
        let now = TICK_COUNT.load(Ordering::Relaxed);

        // drain tasks whose wake_time has passed into the ready queue
        let mut i = 0;
        while i < self.blocked.len() {
            let should_wake = self.blocked[i].wake_time.map(|t| now >= t).unwrap_or(false);

            if should_wake {
                let mut task = self.blocked.remove(i);
                task.state = TaskState::Ready;
                task.wake_time = None;
                self.tasks.push_back(task);
            } else {
                i += 1;
            }
        }
    }

    pub fn exit_current(&mut self) {
        self.current.take();
        self.scheadule_next();
    }

    pub fn schedule(&mut self) {
        self.check_sleeping();

        let Some(next) = self.tasks.pop_front() else {
            return;
        };

        if let Some(mut current) = self.current.take() {
            let cur_rsp = &mut current.rsp as *mut u64;
            current.state = TaskState::Ready;
            self.tasks.push_back(current);
            self.current = Some(next);

            #[allow(unused_unsafe)]
            unsafe {
                context_switch(cur_rsp, &self.current.as_ref().unwrap().rsp as *const u64);
            }
        } else {
            self.scheadule_next();
        }
    }

    pub fn scheadule_next(&mut self) {
        let Some(next) = self.tasks.pop_front() else {
            unsafe {
                loop {
                    x86_64::instructions::interrupts::enable_and_hlt();
                }
            }
        };

        self.current = Some(next);

        self.current.as_mut().unwrap().state = super::TaskState::Running;

        unsafe {
            let rsp = self.current.as_ref().unwrap().rsp;
            x86_64::instructions::interrupts::enable();
            core::arch::asm!(
                "mov rsp, {0}",
                "pop r15", "pop r14", "pop r13",
                "pop r12", "pop rbx", "pop rbp",
                "ret",
                in(reg) rsp,
                options(noreturn),
            );
        }
    }

    fn activate_next(&mut self) -> Option<u64> {
        let next = self.tasks.pop_front()?;
        let rsp = next.rsp;
        self.current = Some(next);
        Some(rsp)
    }
}

/// Start the scheduler — jumps to the first task. Lock is released before the jump.
pub fn run() -> ! {
    let rsp = SCHEDULER.lock().activate_next().expect("no tasks spawned");
    unsafe { jump_to(rsp) }
}

/// Preemptive context switch. Safe to call from interrupt handlers.
/// Releases the lock before context_switch so the next IRQ can acquire it.
pub fn preempt() {
    let ptrs: Option<(*mut u64, u64)> = {
        let mut sched = SCHEDULER.lock();
        sched.check_sleeping(); // wake any tasks whose sleep has expired
        let Some(next) = sched.tasks.pop_front() else {
            return;
        };
        let next_rsp = next.rsp;
        let Some(cur) = sched.current.take() else {
            sched.tasks.push_front(next);
            return;
        };
        sched.tasks.push_back(cur);
        sched.current = Some(next);
        let cur_rsp_ptr = &mut sched.tasks.back_mut().unwrap().rsp as *mut u64;
        Some((cur_rsp_ptr, next_rsp))
    };
    if let Some((cur_rsp_ptr, next_rsp)) = ptrs {
        x86_64::instructions::interrupts::enable();
        unsafe {
            context_switch(cur_rsp_ptr, &raw const next_rsp);
        }
    }
}

/// Block the current task for `ms` milliseconds.
///
/// If another ready task exists, context_switch to it immediately (task resumes here when woken).
/// If no other ready task exists, hlt-wait in place — the task stays "current" so
/// preempt() can still switch it out if something wakes up during the wait.
pub fn do_sleep(ms: u64) {
    let wake_at = TICK_COUNT.load(Ordering::Relaxed) + ms_to_ticks(ms);

    let switch_ptrs: Option<(*mut u64, u64)> = {
        let mut sched = SCHEDULER.lock();
        match sched.tasks.pop_front() {
            None => None, // no ready task — fall through to hlt-wait below
            Some(next) => match sched.current.take() {
                None => {
                    sched.tasks.push_front(next);
                    None
                }
                Some(mut cur) => {
                    let next_rsp = next.rsp;
                    cur.wake_time = Some(wake_at);
                    cur.state = TaskState::Blocked;
                    sched.blocked.push(cur);
                    sched.current = Some(next);
                    let cur_rsp_ptr = &mut sched.blocked.last_mut().unwrap().rsp as *mut u64;
                    Some((cur_rsp_ptr, next_rsp))
                }
            },
        }
        // lock dropped here
    };

    if let Some((cur_rsp_ptr, next_rsp)) = switch_ptrs {
        x86_64::instructions::interrupts::enable();
        unsafe {
            context_switch(cur_rsp_ptr, &raw const next_rsp);
        }
        // resumes here when woken up — return to caller
        return;
    }

    // No ready task to switch to — hlt until our sleep expires.
    // We stay as "current" so preempt() can switch us out if another task wakes up.
    loop {
        x86_64::instructions::interrupts::enable_and_hlt();
        if TICK_COUNT.load(Ordering::Relaxed) >= wake_at {
            return;
        }
    }
}

pub fn exit_task() -> ! {
    let rsp = {
        let mut sched = SCHEDULER.lock();
        if let Some(mut current) = sched.current.take() {
            current.state = TaskState::Dead;
            if let Some(join_state) = current.join_state.take() {
                let mut js = join_state.lock();
                js.finished = true;
                js.result = Some(0);
                if let Some(waiter) = js.waiter.take() {
                    sched.wake_task(waiter);
                }
            }
        }
        sched.activate_next()
    };
    x86_64::instructions::interrupts::enable();
    if let Some(rsp) = rsp {
        unsafe { jump_to(rsp) }
    }
    loop {
        x86_64::instructions::interrupts::enable_and_hlt();
        let rsp = {
            let mut sched = SCHEDULER.lock();
            sched.check_sleeping();
            sched.activate_next()
        };
        if let Some(rsp) = rsp {
            x86_64::instructions::interrupts::enable();
            unsafe { jump_to(rsp) }
        }
    }
}

unsafe fn jump_to(rsp: u64) -> ! {
    core::arch::asm!(
        "mov rsp, {0}",
        "pop r15", "pop r14", "pop r13",
        "pop r12", "pop rbx", "pop rbp",
        "ret",
        in(reg) rsp,
        options(noreturn),
    );
}
