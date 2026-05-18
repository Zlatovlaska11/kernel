// src/task/mutex.rs
use super::mutex_guard::KMutexGuard;
use crate::task::scheduler::{SCHEDULER, TICK_COUNT};
use crate::task::Task;
use alloc::collections::VecDeque;
use core::cell::UnsafeCell;

pub struct KMutex<T> {
    pub(super) inner: spin::Mutex<MutexInner>,
    pub(super) data: UnsafeCell<T>,
}

unsafe impl<T: Send> Send for KMutex<T> {}
unsafe impl<T: Send> Sync for KMutex<T> {}

pub(super) struct MutexInner {
    pub(super) locked: bool,
    pub(super) waiters: VecDeque<Task>,
}

impl<T> KMutex<T> {
    pub const fn new(val: T) -> Self {
        Self {
            inner: spin::Mutex::new(MutexInner {
                locked: false,
                waiters: VecDeque::new(),
            }),
            data: UnsafeCell::new(val),
        }
    }

    pub fn lock(&self) -> KMutexGuard<T> {
        loop {
            // Phase 1: check / register as waiter — all under a single short lock window.
            // We get back raw pointers so the lock is dropped before any context switch.
            let switch_ptrs: Option<(*mut u64, u64)> = {
                let mut inner = self.inner.lock();

                if !inner.locked {
                    // Mutex is free — take it and return immediately.
                    inner.locked = true;
                    return KMutexGuard { mutex: self };
                }

                // Mutex is held — park ourselves in the waiter queue, then switch away.
                let mut sched = SCHEDULER.lock();
                match (sched.tasks.pop_front(), sched.current.take()) {
                    (Some(next), Some(mut cur)) => {
                        let next_rsp = next.rsp;
                        cur.state = crate::task::TaskState::Blocked;
                        inner.waiters.push_back(cur);
                        sched.current = Some(next);
                        let cur_rsp_ptr =
                            &mut inner.waiters.back_mut().unwrap().rsp as *mut u64;
                        Some((cur_rsp_ptr, next_rsp))
                    }
                    (Some(next), None) => {
                        // no current task to park — put next back
                        sched.tasks.push_front(next);
                        None
                    }
                    _ => None,
                }
                // both locks dropped here
            };

            if let Some((cur_rsp_ptr, next_rsp)) = switch_ptrs {
                // Lock is released — safe to context_switch.
                x86_64::instructions::interrupts::enable();
                unsafe {
                    crate::task::switch::context_switch(cur_rsp_ptr, &raw const next_rsp);
                }
                // Resumes here after being woken by KMutexGuard::drop.
                // Loop back and try to acquire the mutex again.
            } else {
                // No task to switch to — busy-wait with hlt.
                let deadline = TICK_COUNT.load(core::sync::atomic::Ordering::Relaxed) + 1;
                loop {
                    x86_64::instructions::interrupts::enable_and_hlt();
                    if TICK_COUNT.load(core::sync::atomic::Ordering::Relaxed) >= deadline {
                        break;
                    }
                }
            }
        }
    }
}
