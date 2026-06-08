pub mod join;
pub mod mutex;
pub mod mutex_guard;
pub mod scheduler;
mod switch;

use core::sync::atomic::AtomicU64;

use alloc::sync::Arc;
use spin::Mutex;

use crate::task::join::JoinState;

static NEXT_ID: AtomicU64 = AtomicU64::new(1);

#[derive(PartialEq, Clone, Debug)]
pub enum TaskState {
    Running,
    Ready,
    Blocked,
    Dead,
}

pub struct Task {
    pub id: u64,
    pub rsp: u64,
    pub state: TaskState,
    pub wake_time: Option<u64>,

    pub join_state: Option<Arc<Mutex<JoinState>>>,
}

impl Task {
    pub fn new(entry: fn() -> ()) -> Self {
        let id = NEXT_ID.fetch_add(1, core::sync::atomic::Ordering::Relaxed);
        let stack_top = crate::memory::alloc_task_stack(id).expect("task stack alloc failed");
        let rsp = plant_stack(stack_top.as_u64(), entry);

        Self {
            id,
            rsp,
            state: TaskState::Ready,
            wake_time: None,
            join_state: None,
        }
    }
}

impl Drop for Task {
    fn drop(&mut self) {
        crate::memory::free_task_stack(self.id);
    }
}

/// Blocks the current task — CPU goes to other tasks while waiting.
pub fn sleep(ms: u64) {
    scheduler::do_sleep(ms);
}

fn plant_stack(stack_top: u64, entry: fn() -> ()) -> u64 {
    let top = stack_top;

    unsafe {
        *((top - 8) as *mut u64) = task_exit as u64;
        *((top - 16) as *mut u64) = entry as u64;
        *((top - 24) as *mut u64) = 0; // r15
        *((top - 32) as *mut u64) = 0; // r14
        *((top - 40) as *mut u64) = 0; // r13
        *((top - 48) as *mut u64) = 0; // r12
        *((top - 56) as *mut u64) = 0; // rbx
        *((top - 64) as *mut u64) = 0; // rbp
    }

    top - 64
}

fn task_exit() -> ! {
    scheduler::exit_task();
}
