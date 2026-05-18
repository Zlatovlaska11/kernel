use alloc::sync::Arc;
use spin::Mutex;

use crate::task::scheduler::SCHEDULER;
use crate::task::{Task, TaskState};

pub struct JoinState {
    pub finished: bool,
    pub waiter: Option<Task>,
    pub result: Option<u64>,
}

impl JoinState {
    pub fn new() -> Arc<Mutex<Self>> {
        Arc::new(Mutex::new(Self {
            finished: false,
            result: None,
            waiter: None,
        }))
    }
}

pub struct JoinHandle {
    pub state: Arc<Mutex<JoinState>>,
}

impl JoinHandle {
    pub fn join(self) -> u64 {
        loop {
            // Acquire SCHEDULER first, then state — same order as exit_task to avoid inversion.
            let switch_ptrs: Option<(*mut u64, u64)> = {
                let mut sched = SCHEDULER.lock();
                let mut state = self.state.lock();

                if state.finished {
                    return state.result.unwrap_or(0);
                }

                match sched.tasks.pop_front() {
                    None => None, // no ready task — keep current, fall through to hlt-wait
                    Some(next) => match sched.current.take() {
                        Some(mut cur) => {
                            let next_rsp = next.rsp;
                            cur.state = TaskState::Blocked;
                            state.waiter = Some(cur);
                            sched.current = Some(next);
                            let cur_rsp_ptr = &mut state.waiter.as_mut().unwrap().rsp as *mut u64;
                            Some((cur_rsp_ptr, next_rsp))
                        }
                        None => {
                            sched.tasks.push_front(next);
                            None
                        }
                    },
                }
                // both locks dropped here
            };

            match switch_ptrs {
                Some((cur_rsp_ptr, next_rsp)) => {
                    x86_64::instructions::interrupts::enable();
                    unsafe {
                        crate::task::switch::context_switch(cur_rsp_ptr, &raw const next_rsp);
                    }
                    // resumes here when exit_task wakes us — loop back to check finished
                }
                None => {
                    x86_64::instructions::interrupts::enable_and_hlt();
                }
            }
        }
    }
}
