/// Switch from `current` to `next`.
///
/// Naked so the compiler emits zero prologue/epilogue — the `ret` at the end
/// is ours and must pop exactly the right thing from whichever stack we are on.
/// Without naked, the compiler's frame-pointer epilogue (`mov rsp, rbp`)
/// would clobber RSP with 0 (we planted zeroes for rbp) and triple-fault.
#[naked]
pub unsafe extern "C" fn context_switch(current: *mut u64, next: *const u64) {
    core::arch::naked_asm!(
        // save callee-saved registers of the outgoing task
        "push rbp",
        "push rbx",
        "push r12",
        "push r13",
        "push r14",
        "push r15",
        // save current rsp into *current  (rdi = current)
        "mov [rdi], rsp",
        // load next rsp from *next  (rsi = next)
        "mov rsp, [rsi]",
        // restore callee-saved registers of the incoming task
        "pop r15",
        "pop r14",
        "pop r13",
        "pop r12",
        "pop rbx",
        "pop rbp",
        // ret jumps to the planted entry point or the saved return address
        "ret",
    );
}
