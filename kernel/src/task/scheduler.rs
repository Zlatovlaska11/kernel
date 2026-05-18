use super::switch::context_switch;
use super::Task;
use alloc::collections::VecDeque;
use spin::Mutex;

pub static SCHEDULER: Mutex<Scheduler> = Mutex::new(Scheduler::new());

pub struct Scheduler {
    tasks: VecDeque<Task>,
    current: Option<Task>,
}

impl Scheduler {
    pub const fn new() -> Self {
        Self {
            tasks: VecDeque::new(),
            current: None,
        }
    }

    pub fn spawn(&mut self, entry: fn() -> ()) {
        self.tasks.push_back(Task::new(entry));
    }

    // Makes the front task current and returns its rsp. Lock must be dropped before jumping.
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
    // MutexGuard is dropped here — lock is free before the noreturn jump.
    unsafe { jump_to(rsp) }
}

/// Preemptive context switch. Safe to call from interrupt handlers.
/// Releases the lock before context_switch so the next IRQ can acquire it.
pub fn preempt() {
    // Compute the swap under the lock, return raw ptrs, drop the lock, then switch.
    let ptrs: Option<(*mut u64, u64)> = {
        let mut sched = SCHEDULER.lock();
        let Some(next) = sched.tasks.pop_front() else { return; };
        let next_rsp = next.rsp;
        let Some(cur) = sched.current.take() else {
            sched.tasks.push_front(next);
            return;
        };
        sched.tasks.push_back(cur);
        sched.current = Some(next);
        let cur_rsp_ptr = &mut sched.tasks.back_mut().unwrap().rsp as *mut u64;
        Some((cur_rsp_ptr, next_rsp))
        // MutexGuard dropped here
    };
    if let Some((cur_rsp_ptr, next_rsp)) = ptrs {
        // We are inside an IRQ handler so interrupts are disabled — no race between
        // the lock drop above and this call.
        unsafe { context_switch(cur_rsp_ptr, &raw const next_rsp); }
    }
}

/// Called when a task finishes. Drops it and jumps to the next task.
/// Lock is released before the noreturn jump.
pub fn exit_task() -> ! {
    let rsp = {
        let mut sched = SCHEDULER.lock();
        sched.current.take(); // drop finished task's stack
        sched.activate_next()
        // MutexGuard dropped here
    };
    match rsp {
        Some(rsp) => unsafe { jump_to(rsp) },
        None => loop {
            x86_64::instructions::hlt();
        },
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
