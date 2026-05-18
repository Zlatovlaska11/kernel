// src/task/mutex_guard.rs
use crate::task::mutex::KMutex;
use crate::task::scheduler::SCHEDULER;
use x86_64::instructions::interrupts;

pub struct KMutexGuard<'a, T> {
    pub(super) mutex: &'a KMutex<T>,
}

/// auto-unlock when guard is dropped (goes out of scope)
impl<'a, T> Drop for KMutexGuard<'a, T> {
    fn drop(&mut self) {
        interrupts::without_interrupts(|| {
            let mut inner = self.mutex.inner.lock();

            if let Some(next_owner) = inner.waiters.pop_front() {
                // hand lock directly to first waiter —
                // lock stays "locked", just changes owner
                // wake the waiter so it can run
                SCHEDULER.lock().wake_task(next_owner);
                // lock remains locked = true, next owner will hold it
            } else {
                // nobody waiting — just release the lock
                inner.locked = false;
            }
        });
    }
}

impl<'a, T> core::ops::Deref for KMutexGuard<'a, T> {
    type Target = T;
    fn deref(&self) -> &T {
        unsafe { &*self.mutex.data.get() }
    }
}

impl<'a, T> core::ops::DerefMut for KMutexGuard<'a, T> {
    fn deref_mut(&mut self) -> &mut T {
        unsafe { &mut *self.mutex.data.get() }
    }
}
