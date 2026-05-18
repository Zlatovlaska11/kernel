pub mod scheduler;
mod switch;

use core::sync::atomic::AtomicU64;

use alloc::boxed::Box;

static NEXT_ID: AtomicU64 = AtomicU64::new(1);

pub struct Task {
    pub id: u64,
    pub stack: Box<[u8; 8192]>,
    pub rsp: u64,
}

impl Task {
    pub fn new(entry: fn() -> ()) -> Self {
        let mut stack = Box::new([0u8; 8192]);

        let rsp = plant_stack(&mut *stack, entry);

        Self {
            id: NEXT_ID.fetch_add(1, core::sync::atomic::Ordering::Relaxed),
            stack,
            rsp,
        }
    }
}

fn plant_stack(stack: &mut [u8; 8192], entry: fn() -> ()) -> u64 {
    let base = stack.as_mut_ptr() as u64;
    let top = base + 8192;

    unsafe {
        *((top - 8) as *mut u64) = task_exit as u64; // sentinel
        *((top - 16) as *mut u64) = entry as u64; // entry point
        *((top - 24) as *mut u64) = 0; // r15
        *((top - 32) as *mut u64) = 0; // r14
        *((top - 40) as *mut u64) = 0; // r13
        *((top - 48) as *mut u64) = 0; // r12
        *((top - 56) as *mut u64) = 0; // rbx
        *((top - 64) as *mut u64) = 0; // rbp
    }

    top - 64 // rsp points at fake rbp
}

fn task_exit() -> ! {
    scheduler::exit_task();
}
