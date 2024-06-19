0000000000203690 <<&T as core::fmt::Debug>::fmt::hb8b166391f6bbfc7>:
  203690:      	subq	$0xc8, %rsp
  203697:      	movq	(%rdi), %rax
  20369a:      	movq	(%rax), %rax
  20369d:      	movq	0x20(%rsi), %rdi
  2036a1:      	movq	0x28(%rsi), %rsi
  2036a5:      	movq	%rax, (%rsp)
  2036a9:      	leaq	0xb210(%rip), %rax      # 0x20e8c0
  2036b0:      	movq	%rax, 0x8(%rsp)
  2036b5:      	leaq	0xd4(%rip), %rax        # 0x203790 <<&T as core::fmt::Display>::fmt::h6ed9a0180afab3a3>
  2036bc:      	movq	%rax, 0x10(%rsp)
  2036c1:      	movq	%rsp, %rax
  2036c4:      	movq	%rax, 0x18(%rsp)
  2036c9:      	movq	0xbbe8(%rip), %rax      # 0x20f2b8
  2036d0:      	movq	%rax, 0x20(%rsp)
  2036d5:      	movq	$0x2, 0x58(%rsp)
  2036de:      	movq	$0x2, 0x68(%rsp)
  2036e7:      	movq	$0x0, 0x78(%rsp)
  2036f0:      	movq	$0x20, 0x80(%rsp)
  2036fc:      	movb	$0x3, 0x88(%rsp)
  203704:      	movq	$0x2, 0x90(%rsp)
  203710:      	movq	$0x2, 0xa0(%rsp)
  20371c:      	movq	$0x1, 0xb0(%rsp)
  203728:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  203732:      	movq	%rax, 0xb8(%rsp)
  20373a:      	movb	$0x3, 0xc0(%rsp)
  203742:      	leaq	0xb147(%rip), %rax      # 0x20e890
  203749:      	movq	%rax, 0x28(%rsp)
  20374e:      	movq	$0x3, 0x30(%rsp)
  203757:      	leaq	0x58(%rsp), %rax
  20375c:      	movq	%rax, 0x48(%rsp)
  203761:      	movq	$0x2, 0x50(%rsp)
  20376a:      	leaq	0x8(%rsp), %rax
  20376f:      	movq	%rax, 0x38(%rsp)
  203774:      	movq	$0x2, 0x40(%rsp)
  20377d:      	leaq	0x28(%rsp), %rdx
  203782:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  203787:      	addq	$0xc8, %rsp
  20378e:      	retq
  20378f:      	int3

0000000000203790 <<&T as core::fmt::Display>::fmt::h6ed9a0180afab3a3>:
  203790:      	movq	%rsi, %rdx
  203793:      	movq	(%rdi), %rax
  203796:      	movq	0x8(%rdi), %rsi
  20379a:      	movq	%rax, %rdi
  20379d:      	jmp	0x20b700 <<str as core::fmt::Display>::fmt::h22ee6e3a4d9e89f8>
  2037a2:      	int3
  2037a3:      	int3
  2037a4:      	int3
  2037a5:      	int3
  2037a6:      	int3
  2037a7:      	int3
  2037a8:      	int3
  2037a9:      	int3
  2037aa:      	int3
  2037ab:      	int3
  2037ac:      	int3
  2037ad:      	int3
  2037ae:      	int3
  2037af:      	int3

00000000002037b0 <<&T as core::fmt::Display>::fmt::h9365d7e63c90edc4>:
  2037b0:      	movq	(%rdi), %rdi
  2037b3:      	jmp	0x20cda0 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::hb3777c9da9e7cd68>
  2037b8:      	int3
  2037b9:      	int3
  2037ba:      	int3
  2037bb:      	int3
  2037bc:      	int3
  2037bd:      	int3
  2037be:      	int3
  2037bf:      	int3

00000000002037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>:
  2037c0:      	pushq	%r15
  2037c2:      	pushq	%r14
  2037c4:      	pushq	%rbx
  2037c5:      	subq	$0x10, %rsp
  2037c9:      	movq	%rdi, %rbx
  2037cc:      	movq	(%rdx), %rax
  2037cf:      	testq	%rax, %rax
  2037d2:      	je	0x20380d <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0x4d>
  2037d4:      	movl	%eax, %ecx
  2037d6:      	notl	%ecx
  2037d8:      	testb	$0x3, %cl
  2037db:      	je	0x2037e4 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0x24>
  2037dd:      	orq	$0x3, %rax
  2037e1:      	movq	%rax, (%rdx)
  2037e4:      	testb	$0x1, %al
  2037e6:      	je	0x203881 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xc1>
  2037ec:      	testb	%al, %al
  2037ee:      	js	0x20386b <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xab>
  2037f0:      	movabsq	$0xffffffffff000, %rcx  # imm = 0xFFFFFFFFFF000
  2037fa:      	andq	%rcx, %rax
  2037fd:      	movq	%rsi, %rdi
  203800:      	movq	%rax, %rsi
  203803:      	callq	0x20a340 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6>
  203808:      	movq	%rax, %r14
  20380b:      	jmp	0x203862 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xa2>
  20380d:      	movq	%rdx, %r15
  203810:      	movq	%rsi, %r14
  203813:      	movq	%rsp, %rdi
  203816:      	movq	%rcx, %rsi
  203819:      	callq	0x204c50 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8>
  20381e:      	cmpq	$0x0, (%rsp)
  203823:      	je	0x203872 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xb2>
  203825:      	movq	0x8(%rsp), %rax
  20382a:      	testl	$0xfff, %eax            # imm = 0xFFF
  20382f:      	jne	0x203899 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xd9>
  203831:      	movq	%rax, %rcx
  203834:      	orq	$0x3, %rcx
  203838:      	movq	%rcx, (%r15)
  20383b:      	movabsq	$0xffffffffff000, %rsi  # imm = 0xFFFFFFFFFF000
  203845:      	andq	%rax, %rsi
  203848:      	movq	%r14, %rdi
  20384b:      	callq	0x20a340 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6>
  203850:      	movq	%rax, %r14
  203853:      	movl	$0x1000, %edx           # imm = 0x1000
  203858:      	movq	%rax, %rdi
  20385b:      	xorl	%esi, %esi
  20385d:      	callq	0x20d7c0 <memset>
  203862:      	movq	%r14, 0x8(%rbx)
  203866:      	movb	$0x0, (%rbx)
  203869:      	jmp	0x203877 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xb7>
  20386b:      	movw	$0x1, (%rbx)
  203870:      	jmp	0x203877 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222+0xb7>
  203872:      	movw	$0x101, (%rbx)          # imm = 0x101
  203877:      	addq	$0x10, %rsp
  20387b:      	popq	%rbx
  20387c:      	popq	%r14
  20387e:      	popq	%r15
  203880:      	retq
  203881:      	leaq	-0x3472(%rip), %rdi     # 0x200416
  203888:      	leaq	0xafd1(%rip), %rdx      # 0x20e860
  20388f:      	movl	$0x24, %esi
  203894:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  203899:      	leaq	-0x3540(%rip), %rdi     # 0x200360
  2038a0:      	leaq	0xafa1(%rip), %rdx      # 0x20e848
  2038a7:      	movl	$0x31, %esi
  2038ac:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  2038b1:      	int3
  2038b2:      	int3
  2038b3:      	int3
  2038b4:      	int3
  2038b5:      	int3
  2038b6:      	int3
  2038b7:      	int3
  2038b8:      	int3
  2038b9:      	int3
  2038ba:      	int3
  2038bb:      	int3
  2038bc:      	int3
  2038bd:      	int3
  2038be:      	int3
  2038bf:      	int3

00000000002038c0 <<x86_64::structures::paging::mapper::MapToError<S> as core::fmt::Debug>::fmt::haea59e1e80df95e5>:
  2038c0:      	movq	%rsi, %rax
  2038c3:      	movq	(%rdi), %rcx
  2038c6:      	testq	%rcx, %rcx
  2038c9:      	je	0x2038e4 <<x86_64::structures::paging::mapper::MapToError<S> as core::fmt::Debug>::fmt::haea59e1e80df95e5+0x24>
  2038cb:      	cmpl	$0x1, %ecx
  2038ce:      	jne	0x2038f8 <<x86_64::structures::paging::mapper::MapToError<S> as core::fmt::Debug>::fmt::haea59e1e80df95e5+0x38>
  2038d0:      	leaq	-0x346f(%rip), %rsi     # 0x200468
  2038d7:      	movl	$0x13, %edx
  2038dc:      	movq	%rax, %rdi
  2038df:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  2038e4:      	leaq	-0x3498(%rip), %rsi     # 0x200453
  2038eb:      	movl	$0x15, %edx
  2038f0:      	movq	%rax, %rdi
  2038f3:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  2038f8:      	pushq	%rax
  2038f9:      	addq	$0x8, %rdi
  2038fd:      	movq	%rdi, (%rsp)
  203901:      	leaq	-0x348d(%rip), %rsi     # 0x20047b
  203908:      	leaq	0xafc1(%rip), %r8       # 0x20e8d0
  20390f:      	movq	%rsp, %rcx
  203912:      	movl	$0x11, %edx
  203917:      	movq	%rax, %rdi
  20391a:      	callq	0x20b630 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107>
  20391f:      	popq	%rcx
  203920:      	retq
  203921:      	int3
  203922:      	int3
  203923:      	int3
  203924:      	int3
  203925:      	int3
  203926:      	int3
  203927:      	int3
  203928:      	int3
  203929:      	int3
  20392a:      	int3
  20392b:      	int3
  20392c:      	int3
  20392d:      	int3
  20392e:      	int3
  20392f:      	int3

0000000000203930 <kernel_main>:
  203930:      	pushq	%rbp
  203931:      	pushq	%r15
  203933:      	pushq	%r14
  203935:      	pushq	%r13
  203937:      	pushq	%r12
  203939:      	pushq	%rbx
  20393a:      	subq	$0x88, %rsp
  203941:      	movq	%rdi, %r14
  203944:      	callq	0x2054e0 <kernel::init::hd1ab722fa03b49ce>
  203949:      	leaq	-0x34c4(%rip), %rax     # 0x20048c
  203950:      	movq	%rax, 0x78(%rsp)
  203955:      	movq	$0x15a, 0x80(%rsp)      # imm = 0x15A
  203961:      	leaq	0x78(%rsp), %rax
  203966:      	movq	%rax, 0x48(%rsp)
  20396b:      	leaq	-0x1e2(%rip), %rax      # 0x203790 <<&T as core::fmt::Display>::fmt::h6ed9a0180afab3a3>
  203972:      	movq	%rax, 0x50(%rsp)
  203977:      	leaq	-0x3376(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20397e:      	movq	%rax, 0x8(%rsp)
  203983:      	movq	$0x1, 0x10(%rsp)
  20398c:      	movq	$0x0, 0x28(%rsp)
  203995:      	leaq	0x48(%rsp), %rax
  20399a:      	movq	%rax, 0x18(%rsp)
  20399f:      	movq	$0x1, 0x20(%rsp)
  2039a8:      	leaq	0x8(%rsp), %rdi
  2039ad:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  2039b2:      	movq	0x608(%r14), %rdi
  2039b9:      	movq	%rdi, %rax
  2039bc:      	shrq	$0x2f, %rax
  2039c0:      	je	0x2039da <kernel_main+0xaa>
  2039c2:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  2039c7:      	je	0x2039da <kernel_main+0xaa>
  2039c9:      	cmpl	$0x1, %eax
  2039cc:      	jne	0x203d88 <kernel_main+0x458>
  2039d2:      	shlq	$0x10, %rdi
  2039d6:      	sarq	$0x10, %rdi
  2039da:      	callq	0x204bf0 <kernel::memory::init::hd35be6f2c471daf0>
  2039df:      	movq	%rax, 0x60(%rsp)
  2039e4:      	leaq	0x68(%rsp), %rbx
  2039e9:      	movq	%rdx, 0x68(%rsp)
  2039ee:      	movq	%r14, 0x48(%rsp)
  2039f3:      	movq	$0x0, 0x50(%rsp)
  2039fc:      	leaq	0xd8(%rax), %rdx
  203a03:      	leaq	0x8(%rsp), %rdi
  203a08:      	leaq	0x48(%rsp), %rcx
  203a0d:      	movq	%rbx, %rsi
  203a10:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203a15:      	cmpb	$0x0, 0x8(%rsp)
  203a1a:      	jne	0x203d45 <kernel_main+0x415>
  203a20:      	movl	$0xd58, %edx            # imm = 0xD58
  203a25:      	addq	0x10(%rsp), %rdx
  203a2a:      	leaq	0x8(%rsp), %rdi
  203a2f:      	leaq	0x48(%rsp), %rcx
  203a34:      	movq	%rbx, %rsi
  203a37:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203a3c:      	cmpb	$0x0, 0x8(%rsp)
  203a41:      	jne	0x203d45 <kernel_main+0x415>
  203a47:      	movl	$0x6f8, %edx            # imm = 0x6F8
  203a4c:      	addq	0x10(%rsp), %rdx
  203a51:      	leaq	0x8(%rsp), %rdi
  203a56:      	leaq	0x48(%rsp), %rcx
  203a5b:      	movq	%rbx, %rsi
  203a5e:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203a63:      	cmpb	$0x0, 0x8(%rsp)
  203a68:      	jne	0x203d45 <kernel_main+0x415>
  203a6e:      	movq	0x10(%rsp), %rax
  203a73:      	cmpq	$0x0, 0x578(%rax)
  203a7b:      	jne	0x203d51 <kernel_main+0x421>
  203a81:      	movabsq	$0x444444440000, %r13   # imm = 0x444444440000
  203a8b:      	movq	$0xb8003, 0x578(%rax)   # imm = 0xB8003
  203a96:      	movabsq	$0xdeadbeaf000, %rax    # imm = 0xDEADBEAF000
  203aa0:      	invlpg	(%rax)
  203aa3:      	movq	%r13, 0x40(%rsp)
  203aa8:      	leaq	0x18000(%r13), %rax
  203aaf:      	movq	%rax, 0x38(%rsp)
  203ab4:      	leaq	0x8(%rsp), %r15
  203ab9:      	leaq	0x48(%rsp), %r14
  203abe:      	movq	0xb7fb(%rip), %rbp      # 0x20f2c0
  203ac5:      	leaq	0x8(%rbp), %rcx
  203ac9:      	movq	%rcx, 0x70(%rsp)
  203ace:      	nop
  203ad0:      	cmpq	$-0x1000, %r13          # imm = 0xF000
  203ad7:      	jae	0x203b10 <kernel_main+0x1e0>
  203ad9:      	leaq	0x1000(%r13), %rax
  203ae0:      	movq	%rax, %rcx
  203ae3:      	shrq	$0x2f, %rcx
  203ae7:      	je	0x203b02 <kernel_main+0x1d2>
  203ae9:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  203aef:      	je	0x203b02 <kernel_main+0x1d2>
  203af1:      	cmpl	$0x1, %ecx
  203af4:      	jne	0x203d1c <kernel_main+0x3ec>
  203afa:      	shlq	$0x10, %rax
  203afe:      	sarq	$0x10, %rax
  203b02:      	leaq	0x40(%rsp), %rcx
  203b07:      	jmp	0x203b49 <kernel_main+0x219>
  203b09:      	nopl	(%rax)
  203b10:      	cmpq	$0x1000, %rax           # imm = 0x1000
  203b16:      	jb	0x203d10 <kernel_main+0x3e0>
  203b1c:      	addq	$-0x1000, %rax          # imm = 0xF000
  203b22:      	movq	%rax, %rcx
  203b25:      	shrq	$0x2f, %rcx
  203b29:      	je	0x203b44 <kernel_main+0x214>
  203b2b:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  203b31:      	je	0x203b44 <kernel_main+0x214>
  203b33:      	cmpl	$0x1, %ecx
  203b36:      	jne	0x203d1c <kernel_main+0x3ec>
  203b3c:      	shlq	$0x10, %rax
  203b40:      	sarq	$0x10, %rax
  203b44:      	leaq	0x38(%rsp), %rcx
  203b49:      	shlq	$0x10, %rax
  203b4d:      	sarq	$0x10, %rax
  203b51:      	andq	$-0x1000, %rax          # imm = 0xF000
  203b57:      	movq	%rax, (%rcx)
  203b5a:      	movq	%r15, %rdi
  203b5d:      	movq	%r14, %rsi
  203b60:      	callq	0x204c50 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8>
  203b65:      	cmpq	$0x0, 0x8(%rsp)
  203b6b:      	je	0x203cc1 <kernel_main+0x391>
  203b71:      	movq	0x10(%rsp), %rbx
  203b76:      	movq	%r13, %rdx
  203b79:      	shrq	$0x27, %rdx
  203b7d:      	andl	$0x1ff, %edx            # imm = 0x1FF
  203b83:      	shll	$0x3, %edx
  203b86:      	addq	0x60(%rsp), %rdx
  203b8b:      	movq	%r15, %rdi
  203b8e:      	leaq	0x68(%rsp), %r12
  203b93:      	movq	%r12, %rsi
  203b96:      	movq	%r14, %rcx
  203b99:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203b9e:      	cmpb	$0x0, 0x8(%rsp)
  203ba3:      	jne	0x203cb3 <kernel_main+0x383>
  203ba9:      	movq	%r13, %rdx
  203bac:      	shrq	$0x1e, %rdx
  203bb0:      	andl	$0x1ff, %edx            # imm = 0x1FF
  203bb6:      	shll	$0x3, %edx
  203bb9:      	addq	0x10(%rsp), %rdx
  203bbe:      	movq	%r15, %rdi
  203bc1:      	movq	%r12, %rsi
  203bc4:      	movq	%r14, %rcx
  203bc7:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203bcc:      	cmpb	$0x0, 0x8(%rsp)
  203bd1:      	jne	0x203cb3 <kernel_main+0x383>
  203bd7:      	movq	%r13, %rdx
  203bda:      	shrq	$0x15, %rdx
  203bde:      	andl	$0x1ff, %edx            # imm = 0x1FF
  203be4:      	shll	$0x3, %edx
  203be7:      	addq	0x10(%rsp), %rdx
  203bec:      	movq	%r15, %r12
  203bef:      	movq	%r15, %rdi
  203bf2:      	leaq	0x68(%rsp), %rsi
  203bf7:      	movq	%r14, %rcx
  203bfa:      	callq	0x2037c0 <x86_64::structures::paging::mapper::mapped_page_table::PageTableWalker<P>::create_next_table::hbe72396931542222>
  203bff:      	cmpb	$0x0, 0x8(%rsp)
  203c04:      	jne	0x203cb3 <kernel_main+0x383>
  203c0a:      	movq	%r13, %rax
  203c0d:      	shrq	$0xc, %rax
  203c11:      	movq	0x10(%rsp), %rcx
  203c16:      	andl	$0x1ff, %eax            # imm = 0x1FF
  203c1b:      	movl	%eax, %edx
  203c1d:      	cmpq	$0x0, (%rcx,%rdx,8)
  203c22:      	jne	0x203cc5 <kernel_main+0x395>
  203c28:      	movq	%rbx, %rdx
  203c2b:      	shlq	$0x34, %rdx
  203c2f:      	jne	0x203cf8 <kernel_main+0x3c8>
  203c35:      	movq	%r12, %r15
  203c38:      	orq	$0x3, %rbx
  203c3c:      	movq	%rbx, (%rcx,%rax,8)
  203c40:      	invlpg	(%r13)
  203c45:      	xorl	%eax, %eax
  203c47:      	movb	$0x1, %cl
  203c49:      	lock
  203c4a:      	cmpxchgb	%cl, (%rbp)
  203c4e:      	jne	0x203c62 <kernel_main+0x332>
  203c50:      	jmp	0x203c73 <kernel_main+0x343>
  203c52:      	nopw	%cs:(%rax,%rax)
  203c60:      	pause
  203c62:      	movzbl	(%rbp), %eax
  203c66:      	testb	%al, %al
  203c68:      	jne	0x203c60 <kernel_main+0x330>
  203c6a:      	xorl	%eax, %eax
  203c6c:      	lock
  203c6d:      	cmpxchgb	%cl, (%rbp)
  203c71:      	jne	0x203c62 <kernel_main+0x332>
  203c73:      	movl	$0x19000, %edx          # imm = 0x19000
  203c78:      	movq	0x70(%rsp), %rdi
  203c7d:      	movabsq	$0x444444440000, %rsi   # imm = 0x444444440000
  203c87:      	callq	0x205270 <kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator::init::ha6713572118f4452>
  203c8c:      	movb	$0x0, (%rbp)
  203c90:      	movq	%r13, 0x58(%rsp)
  203c95:      	movq	0x40(%rsp), %rcx
  203c9a:      	movq	0x38(%rsp), %rax
  203c9f:      	movq	%rcx, %r13
  203ca2:      	cmpq	%rax, %rcx
  203ca5:      	jbe	0x203ad0 <kernel_main+0x1a0>
  203cab:      	nopl	(%rax,%rax)
  203cb0:      	hlt
  203cb1:      	jmp	0x203cb0 <kernel_main+0x380>
  203cb3:      	movzbl	0x9(%rsp), %eax
  203cb8:      	xorb	$0x1, %al
  203cba:      	movq	0x58(%rsp), %rbx
  203cbf:      	jmp	0x203cc7 <kernel_main+0x397>
  203cc1:      	xorl	%eax, %eax
  203cc3:      	jmp	0x203cc7 <kernel_main+0x397>
  203cc5:      	movb	$0x2, %al
  203cc7:      	movzbl	%al, %eax
  203cca:      	movq	%rax, 0x8(%rsp)
  203ccf:      	movq	%rbx, 0x10(%rsp)
  203cd4:      	leaq	-0x36a3(%rip), %rdi     # 0x200638 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0x10>
  203cdb:      	leaq	0xab2e(%rip), %rcx      # 0x20e810
  203ce2:      	leaq	0xac07(%rip), %r8       # 0x20e8f0
  203ce9:      	leaq	0x8(%rsp), %rdx
  203cee:      	movl	$0x11, %esi
  203cf3:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  203cf8:      	leaq	-0x399f(%rip), %rdi     # 0x200360
  203cff:      	leaq	0xab42(%rip), %rdx      # 0x20e848
  203d06:      	movl	$0x31, %esi
  203d0b:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  203d10:      	leaq	0xab61(%rip), %rdi      # 0x20e878
  203d17:      	callq	0x20ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>
  203d1c:      	movq	%rax, 0x8(%rsp)
  203d21:      	leaq	-0x3b28(%rip), %rdi     # 0x200200
  203d28:      	leaq	0xaaa9(%rip), %rcx      # 0x20e7d8
  203d2f:      	leaq	0xaac2(%rip), %r8       # 0x20e7f8
  203d36:      	leaq	0x8(%rsp), %rdx
  203d3b:      	movl	$0x4a, %esi
  203d40:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  203d45:      	movzbl	0x9(%rsp), %eax
  203d4a:      	xorb	$0x1, %al
  203d4c:      	movzbl	%al, %eax
  203d4f:      	jmp	0x203d56 <kernel_main+0x426>
  203d51:      	movl	$0x2, %eax
  203d56:      	movq	%rax, 0x8(%rsp)
  203d5b:      	movq	$0xb8000, 0x10(%rsp)    # imm = 0xB8000
  203d64:      	leaq	-0x3ac2(%rip), %rdi     # 0x2002a9
  203d6b:      	leaq	0xaa9e(%rip), %rcx      # 0x20e810
  203d72:      	leaq	0xaab7(%rip), %r8       # 0x20e830
  203d79:      	leaq	0x8(%rsp), %rdx
  203d7e:      	movl	$0xd, %esi
  203d83:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  203d88:      	movq	%rdi, 0x8(%rsp)
  203d8d:      	jmp	0x203d21 <kernel_main+0x3f1>
  203d8f:      	int3

0000000000203d90 <rust_begin_unwind>:
  203d90:      	subq	$0x48, %rsp
  203d94:      	movq	%rdi, (%rsp)
  203d98:      	movq	%rsp, %rax
  203d9b:      	movq	%rax, 0x8(%rsp)
  203da0:      	leaq	-0x5f7(%rip), %rax      # 0x2037b0 <<&T as core::fmt::Display>::fmt::h9365d7e63c90edc4>
  203da7:      	movq	%rax, 0x10(%rsp)
  203dac:      	leaq	0xab55(%rip), %rax      # 0x20e908
  203db3:      	movq	%rax, 0x18(%rsp)
  203db8:      	movq	$0x2, 0x20(%rsp)
  203dc1:      	movq	$0x0, 0x38(%rsp)
  203dca:      	leaq	0x8(%rsp), %rax
  203dcf:      	movq	%rax, 0x28(%rsp)
  203dd4:      	movq	$0x1, 0x30(%rsp)
  203ddd:      	leaq	0x18(%rsp), %rdi
  203de2:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  203de7:      	nopw	(%rax,%rax)
  203df0:      	hlt
  203df1:      	jmp	0x203df0 <rust_begin_unwind+0x60>
  203df3:      	int3
  203df4:      	int3
  203df5:      	int3
  203df6:      	int3
  203df7:      	int3
  203df8:      	int3
  203df9:      	int3
  203dfa:      	int3
  203dfb:      	int3
  203dfc:      	int3
  203dfd:      	int3
  203dfe:      	int3
  203dff:      	int3

0000000000203e00 <_start>:
  203e00:      	pushq	%rax
  203e01:      	callq	0x203930 <kernel_main>
  203e06:      	int3
  203e07:      	int3
  203e08:      	int3
  203e09:      	int3
  203e0a:      	int3
  203e0b:      	int3
  203e0c:      	int3
  203e0d:      	int3
  203e0e:      	int3
  203e0f:      	int3

0000000000203e10 <__rust_alloc_error_handler>:
  203e10:      	jmp	0x20a7c0 <__rdl_oom>
  203e15:      	int3
  203e16:      	int3
  203e17:      	int3
  203e18:      	int3
  203e19:      	int3
  203e1a:      	int3
  203e1b:      	int3
  203e1c:      	int3
  203e1d:      	int3
  203e1e:      	int3
  203e1f:      	int3

0000000000203e20 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe>:
  203e20:      	pushq	%rbx
  203e21:      	movq	(%rdi), %rcx
  203e24:      	testq	%rcx, %rcx
  203e27:      	je	0x203f01 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xe1>
  203e2d:      	movq	0x8(%rdi), %rsi
  203e31:      	movq	0xb488(%rip), %rbx      # 0x20f2c0
  203e38:      	movb	$0x1, %dl
  203e3a:      	nopw	(%rax,%rax)
  203e40:      	xorl	%eax, %eax
  203e42:      	lock
  203e43:      	cmpxchgb	%dl, (%rbx)
  203e46:      	jne	0x203e52 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x32>
  203e48:      	jmp	0x203e5b <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x3b>
  203e4a:      	nopw	(%rax,%rax)
  203e50:      	pause
  203e52:      	movzbl	(%rbx), %eax
  203e55:      	testb	%al, %al
  203e57:      	jne	0x203e50 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x30>
  203e59:      	jmp	0x203e40 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x20>
  203e5b:      	cmpq	$0x9, %rcx
  203e5f:      	jb	0x203ed8 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xb8>
  203e61:      	movl	$0x1, %eax
  203e66:      	cmpq	$0x11, %rcx
  203e6a:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203e6c:      	movl	$0x2, %eax
  203e71:      	cmpq	$0x21, %rcx
  203e75:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203e77:      	movl	$0x3, %eax
  203e7c:      	cmpq	$0x41, %rcx
  203e80:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203e82:      	movl	$0x4, %eax
  203e87:      	cmpq	$0x81, %rcx
  203e8e:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203e90:      	movl	$0x5, %eax
  203e95:      	cmpq	$0x101, %rcx            # imm = 0x101
  203e9c:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203e9e:      	movl	$0x6, %eax
  203ea3:      	cmpq	$0x201, %rcx            # imm = 0x201
  203eaa:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203eac:      	movl	$0x7, %eax
  203eb1:      	cmpq	$0x401, %rcx            # imm = 0x401
  203eb8:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203eba:      	movl	$0x8, %eax
  203ebf:      	cmpq	$0x801, %rcx            # imm = 0x801
  203ec6:      	jb	0x203eda <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  203ec8:      	leaq	0x50(%rbx), %rdi
  203ecc:      	movl	$0x1, %edx
  203ed1:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  203ed6:      	jmp	0x203efe <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xde>
  203ed8:      	xorl	%eax, %eax
  203eda:      	movq	0x8(%rbx,%rax,8), %rcx
  203edf:      	movq	$0x0, 0x8(%rbx,%rax,8)
  203ee8:      	leaq	-0x35a7(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  203eef:      	cmpq	$0x7, (%rdx,%rax,8)
  203ef4:      	jbe	0x203f03 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xe3>
  203ef6:      	movq	%rcx, (%rsi)
  203ef9:      	movq	%rsi, 0x8(%rbx,%rax,8)
  203efe:      	movb	$0x0, (%rbx)
  203f01:      	popq	%rbx
  203f02:      	retq
  203f03:      	leaq	-0x352e(%rip), %rdi     # 0x2009dc <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456>
  203f0a:      	leaq	0xabbf(%rip), %rdx      # 0x20ead0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456>
  203f11:      	movl	$0x3e, %esi
  203f16:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  203f1b:      	int3
  203f1c:      	int3
  203f1d:      	int3
  203f1e:      	int3
  203f1f:      	int3

0000000000203f20 <<core::fmt::Error as core::fmt::Debug>::fmt::h0c20d8767e09fac0>:
  203f20:      	movq	%rsi, %rdi
  203f23:      	leaq	-0x382a(%rip), %rsi     # 0x200700 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0xd8>
  203f2a:      	movl	$0x5, %edx
  203f2f:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  203f34:      	int3
  203f35:      	int3
  203f36:      	int3
  203f37:      	int3
  203f38:      	int3
  203f39:      	int3
  203f3a:      	int3
  203f3b:      	int3
  203f3c:      	int3
  203f3d:      	int3
  203f3e:      	int3
  203f3f:      	int3

0000000000203f40 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633>:
  203f40:      	pushq	%rbp
  203f41:      	pushq	%r15
  203f43:      	pushq	%r14
  203f45:      	pushq	%rbx
  203f46:      	pushq	%rax
  203f47:      	movq	%rdi, %rbx
  203f4a:      	cmpl	$0x80, %esi
  203f50:      	jae	0x203f7b <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x3b>
  203f52:      	movq	0x10(%rbx), %r14
  203f56:      	cmpq	(%rbx), %r14
  203f59:      	jne	0x203f67 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x27>
  203f5b:      	movq	%rbx, %rdi
  203f5e:      	movl	%esi, %ebp
  203f60:      	callq	0x206700 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c>
  203f65:      	movl	%ebp, %esi
  203f67:      	movq	0x8(%rbx), %rax
  203f6b:      	movb	%sil, (%rax,%r14)
  203f6f:      	incq	%r14
  203f72:      	movq	%r14, 0x10(%rbx)
  203f76:      	jmp	0x204035 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xf5>
  203f7b:      	movl	$0x0, 0x4(%rsp)
  203f83:      	movl	%esi, %eax
  203f85:      	cmpl	$0x800, %esi            # imm = 0x800
  203f8b:      	jae	0x203fa3 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x63>
  203f8d:      	shrl	$0x6, %eax
  203f90:      	orb	$-0x40, %al
  203f92:      	movb	%al, 0x4(%rsp)
  203f96:      	movl	$0x2, %r14d
  203f9c:      	movl	$0x1, %eax
  203fa1:      	jmp	0x203ffe <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xbe>
  203fa3:      	cmpl	$0x10000, %esi          # imm = 0x10000
  203fa9:      	jae	0x203fce <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x8e>
  203fab:      	shrl	$0xc, %eax
  203fae:      	orb	$-0x20, %al
  203fb0:      	movb	%al, 0x4(%rsp)
  203fb4:      	movl	%esi, %eax
  203fb6:      	shrl	$0x6, %eax
  203fb9:      	andb	$0x3f, %al
  203fbb:      	orb	$-0x80, %al
  203fbd:      	movb	%al, 0x5(%rsp)
  203fc1:      	movl	$0x3, %r14d
  203fc7:      	movl	$0x2, %eax
  203fcc:      	jmp	0x203ffe <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xbe>
  203fce:      	shrl	$0x12, %eax
  203fd1:      	andb	$0x7, %al
  203fd3:      	orb	$-0x10, %al
  203fd5:      	movb	%al, 0x4(%rsp)
  203fd9:      	movl	%esi, %eax
  203fdb:      	shrl	$0xc, %eax
  203fde:      	andb	$0x3f, %al
  203fe0:      	orb	$-0x80, %al
  203fe2:      	movb	%al, 0x5(%rsp)
  203fe6:      	movl	%esi, %eax
  203fe8:      	shrl	$0x6, %eax
  203feb:      	andb	$0x3f, %al
  203fed:      	orb	$-0x80, %al
  203fef:      	movb	%al, 0x6(%rsp)
  203ff3:      	movl	$0x4, %r14d
  203ff9:      	movl	$0x3, %eax
  203ffe:      	andb	$0x3f, %sil
  204002:      	orb	$-0x80, %sil
  204006:      	movb	%sil, 0x4(%rsp,%rax)
  20400b:      	movq	(%rbx), %rax
  20400e:      	movq	0x10(%rbx), %r15
  204012:      	subq	%r15, %rax
  204015:      	cmpq	%r14, %rax
  204018:      	jb	0x204042 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x102>
  20401a:      	movq	0x8(%rbx), %rdi
  20401e:      	addq	%r15, %rdi
  204021:      	leaq	0x4(%rsp), %rsi
  204026:      	movq	%r14, %rdx
  204029:      	callq	0x20d7d0 <memcpy>
  20402e:      	addq	%r14, %r15
  204031:      	movq	%r15, 0x10(%rbx)
  204035:      	xorl	%eax, %eax
  204037:      	addq	$0x8, %rsp
  20403b:      	popq	%rbx
  20403c:      	popq	%r14
  20403e:      	popq	%r15
  204040:      	popq	%rbp
  204041:      	retq
  204042:      	movq	%rbx, %rdi
  204045:      	movq	%r15, %rsi
  204048:      	movq	%r14, %rdx
  20404b:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  204050:      	movq	0x10(%rbx), %r15
  204054:      	jmp	0x20401a <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xda>
  204056:      	int3
  204057:      	int3
  204058:      	int3
  204059:      	int3
  20405a:      	int3
  20405b:      	int3
  20405c:      	int3
  20405d:      	int3
  20405e:      	int3
  20405f:      	int3

0000000000204060 <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563>:
  204060:      	pushq	%r15
  204062:      	pushq	%r14
  204064:      	pushq	%r12
  204066:      	pushq	%rbx
  204067:      	pushq	%rax
  204068:      	movq	%rdx, %rbx
  20406b:      	movq	%rdi, %r14
  20406e:      	movq	(%rdi), %rax
  204071:      	movq	0x10(%rdi), %r15
  204075:      	subq	%r15, %rax
  204078:      	cmpq	%rdx, %rax
  20407b:      	jb	0x2040a1 <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563+0x41>
  20407d:      	movq	0x8(%r14), %rdi
  204081:      	addq	%r15, %rdi
  204084:      	movq	%rbx, %rdx
  204087:      	callq	0x20d7d0 <memcpy>
  20408c:      	addq	%rbx, %r15
  20408f:      	movq	%r15, 0x10(%r14)
  204093:      	xorl	%eax, %eax
  204095:      	addq	$0x8, %rsp
  204099:      	popq	%rbx
  20409a:      	popq	%r12
  20409c:      	popq	%r14
  20409e:      	popq	%r15
  2040a0:      	retq
  2040a1:      	movq	%r14, %rdi
  2040a4:      	movq	%rsi, %r12
  2040a7:      	movq	%r15, %rsi
  2040aa:      	movq	%rbx, %rdx
  2040ad:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  2040b2:      	movq	%r12, %rsi
  2040b5:      	movq	0x10(%r14), %r15
  2040b9:      	jmp	0x20407d <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563+0x1d>
  2040bb:      	int3
  2040bc:      	int3
  2040bd:      	int3
  2040be:      	int3
  2040bf:      	int3

00000000002040c0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838>:
  2040c0:      	pushq	%rbp
  2040c1:      	pushq	%r15
  2040c3:      	pushq	%r14
  2040c5:      	pushq	%r13
  2040c7:      	pushq	%r12
  2040c9:      	pushq	%rbx
  2040ca:      	subq	$0x88, %rsp
  2040d1:      	movq	$0x0, 0x60(%rsp)
  2040da:      	movq	$0x1, 0x68(%rsp)
  2040e3:      	movq	$0x0, 0x70(%rsp)
  2040ec:      	movq	0x8(%rdi), %r12
  2040f0:      	movq	0x10(%rdi), %r15
  2040f4:      	xorl	%ebx, %ebx
  2040f6:      	movq	%r12, %rsi
  2040f9:      	movq	%r15, %rax
  2040fc:      	jmp	0x204116 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x56>
  2040fe:      	nop
  204100:      	addq	%rdx, %rbx
  204103:      	incq	%rbx
  204106:      	leaq	(%r12,%rbx), %rsi
  20410a:      	movq	%r15, %rax
  20410d:      	subq	%rbx, %rax
  204110:      	jb	0x2042d6 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x216>
  204116:      	cmpq	$0x10, %rax
  20411a:      	jae	0x204150 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x90>
  20411c:      	xorl	%edx, %edx
  20411e:      	cmpq	%rbx, %r15
  204121:      	je	0x204141 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x81>
  204123:      	nopw	%cs:(%rax,%rax)
  204130:      	cmpb	$0x20, (%rsi,%rdx)
  204134:      	je	0x204168 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa8>
  204136:      	incq	%rdx
  204139:      	cmpq	%rdx, %rax
  20413c:      	jne	0x204130 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x70>
  20413e:      	movq	%rax, %rdx
  204141:      	xorl	%eax, %eax
  204143:      	cmpq	$0x1, %rax
  204147:      	je	0x204180 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xc0>
  204149:      	jmp	0x2042d6 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x216>
  20414e:      	nop
  204150:      	movl	$0x20, %edi
  204155:      	movq	%rax, %rdx
  204158:      	callq	0x20bd00 <core::slice::memchr::memchr_aligned::ha68086179d30585a>
  20415d:      	cmpq	$0x1, %rax
  204161:      	je	0x204180 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xc0>
  204163:      	jmp	0x2042d6 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x216>
  204168:      	movl	$0x1, %eax
  20416d:      	cmpq	$0x1, %rax
  204171:      	jne	0x2042d6 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x216>
  204177:      	nopw	(%rax,%rax)
  204180:      	leaq	(%rbx,%rdx), %r13
  204184:      	cmpq	%r13, %r15
  204187:      	jbe	0x204100 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x40>
  20418d:      	cmpb	$0x20, (%r12,%r13)
  204192:      	jne	0x204100 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x40>
  204198:      	cmpq	%r13, %r15
  20419b:      	jb	0x204bc2 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xb02>
  2041a1:      	movq	$0x0, 0x48(%rsp)
  2041aa:      	movq	$0x1, 0x50(%rsp)
  2041b3:      	movq	$0x0, 0x58(%rsp)
  2041bc:      	movq	$0x20, 0x38(%rsp)
  2041c5:      	movb	$0x3, 0x40(%rsp)
  2041ca:      	movq	$0x0, 0x8(%rsp)
  2041d3:      	movq	$0x0, 0x18(%rsp)
  2041dc:      	leaq	0x48(%rsp), %rax
  2041e1:      	movq	%rax, 0x28(%rsp)
  2041e6:      	leaq	0xa73b(%rip), %rax      # 0x20e928
  2041ed:      	movq	%rax, 0x30(%rsp)
  2041f2:      	leaq	0x8(%rsp), %rdx
  2041f7:      	movq	%r12, %rdi
  2041fa:      	movq	%r13, %rsi
  2041fd:      	callq	0x20b700 <<str as core::fmt::Display>::fmt::h22ee6e3a4d9e89f8>
  204202:      	testb	%al, %al
  204204:      	jne	0x204b86 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xac6>
  20420a:      	cmpq	%r13, %r15
  20420d:      	jb	0x204baa <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xaea>
  204213:      	leaq	(%r12,%r13), %rbp
  204217:      	movq	0x48(%rsp), %rax
  20421c:      	movq	%rax, 0x80(%rsp)
  204224:      	movq	0x50(%rsp), %rbx
  204229:      	movq	0x58(%rsp), %r14
  20422e:      	testq	%r13, %r13
  204231:      	je	0x204242 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x182>
  204233:      	cmpq	%r13, %r15
  204236:      	jbe	0x204242 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x182>
  204238:      	cmpb	$-0x41, (%rbp)
  20423c:      	jle	0x204baa <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xaea>
  204242:      	movl	$0x1, %r12d
  204248:      	subq	%r13, %r15
  20424b:      	je	0x204283 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x1c3>
  20424d:      	js	0x204bd9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xb19>
  204253:      	movq	0xb076(%rip), %rax      # 0x20f2d0
  20425a:      	movzbl	(%rax), %eax
  20425d:      	movq	0xb05c(%rip), %rdi      # 0x20f2c0
  204264:      	movl	$0x1, %r13d
  20426a:      	movl	$0x1, %esi
  20426f:      	movq	%r15, %rdx
  204272:      	callq	0x205280 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815>
  204277:      	testq	%rax, %rax
  20427a:      	je	0x204bdc <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xb1c>
  204280:      	movq	%rax, %r12
  204283:      	movq	%r12, %rdi
  204286:      	movq	%rbp, %rsi
  204289:      	movq	%r15, %rdx
  20428c:      	callq	0x20d7d0 <memcpy>
  204291:      	movq	0x60(%rsp), %rcx
  204296:      	testq	%rcx, %rcx
  204299:      	je	0x20454c <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x48c>
  20429f:      	movq	0x68(%rsp), %rsi
  2042a4:      	movq	0xb015(%rip), %r13      # 0x20f2c0
  2042ab:      	movb	$0x1, %dl
  2042ad:      	nopl	(%rax)
  2042b0:      	xorl	%eax, %eax
  2042b2:      	lock
  2042b3:      	cmpxchgb	%dl, (%r13)
  2042b8:      	je	0x20445b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x39b>
  2042be:      	nop
  2042c0:      	movzbl	(%r13), %eax
  2042c5:      	testb	%al, %al
  2042c7:      	je	0x2042b0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x1f0>
  2042c9:      	pause
  2042cb:      	movzbl	(%r13), %eax
  2042d0:      	testb	%al, %al
  2042d2:      	jne	0x2042c9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x209>
  2042d4:      	jmp	0x2042b0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x1f0>
  2042d6:      	movq	$0x0, 0x48(%rsp)
  2042df:      	movq	$0x1, 0x50(%rsp)
  2042e8:      	movq	$0x0, 0x58(%rsp)
  2042f1:      	movq	$0x20, 0x38(%rsp)
  2042fa:      	movb	$0x3, 0x40(%rsp)
  2042ff:      	movq	$0x0, 0x8(%rsp)
  204308:      	movq	$0x0, 0x18(%rsp)
  204311:      	leaq	0x48(%rsp), %rax
  204316:      	movq	%rax, 0x28(%rsp)
  20431b:      	leaq	0xa606(%rip), %rax      # 0x20e928
  204322:      	movq	%rax, 0x30(%rsp)
  204327:      	leaq	0x8(%rsp), %rdx
  20432c:      	movq	%r12, %rdi
  20432f:      	movq	%r15, %rsi
  204332:      	callq	0x20b700 <<str as core::fmt::Display>::fmt::h22ee6e3a4d9e89f8>
  204337:      	testb	%al, %al
  204339:      	jne	0x204b86 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xac6>
  20433f:      	movq	0x48(%rsp), %r15
  204344:      	movq	0x50(%rsp), %rbx
  204349:      	movq	0x58(%rsp), %r14
  20434e:      	cmpq	$0x5, %r14
  204352:      	je	0x20456d <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x4ad>
  204358:      	cmpq	$0x4, %r14
  20435c:      	jne	0x204599 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x4d9>
  204362:      	cmpl	$0x706c6568, (%rbx)     # imm = 0x706C6568
  204368:      	je	0x20444f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x38f>
  20436e:      	cmpl	$0x74736574, (%rbx)     # imm = 0x74736574
  204374:      	jne	0x204599 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x4d9>
  20437a:      	movq	0x1219f(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204381:      	testq	%rax, %rax
  204384:      	jne	0x204409 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x349>
  20438a:      	movl	$0x1, %ecx
  20438f:      	xorl	%eax, %eax
  204391:      	lock
  204392:      	cmpxchgq	%rcx, 0x12186(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  20439a:      	jne	0x204409 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x349>
  20439c:      	leaq	0x1217d(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2043a3:      	movq	%rax, 0x8(%rsp)
  2043a8:      	movq	$0x1, 0x1213d(%rip)     # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  2043b3:      	movb	$0x0, 0x1213e(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2043ba:      	movq	$0xb8000, 0x1213b(%rip) # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  2043c5:      	movq	$0x0, 0x12138(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  2043d0:      	movq	$0x0, 0x12135(%rip)     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  2043db:      	movb	$0xd, 0x12136(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  2043e2:      	movb	$0x0, 0x10(%rsp)
  2043e7:      	movl	$0x2, %eax
  2043ec:      	xchgq	%rax, 0x1212d(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2043f3:      	leaq	0x8(%rsp), %rdi
  2043f8:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  2043fd:      	jmp	0x204419 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x359>
  2043ff:      	nop
  204400:      	pause
  204402:      	movq	0x12117(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204409:      	cmpq	$0x1, %rax
  20440d:      	je	0x204400 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x340>
  20440f:      	cmpq	$0x2, %rax
  204413:      	jne	0x204b39 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa79>
  204419:      	movb	$0x1, %cl
  20441b:      	nopl	(%rax,%rax)
  204420:      	xorl	%eax, %eax
  204422:      	lock
  204423:      	cmpxchgb	%cl, 0x120ce(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20442a:      	jne	0x204442 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x382>
  20442c:      	jmp	0x2044e8 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x428>
  204431:      	nopw	%cs:(%rax,%rax)
  204440:      	pause
  204442:      	movzbl	0x120af(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204449:      	testb	%al, %al
  20444b:      	jne	0x204440 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x380>
  20444d:      	jmp	0x204420 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x360>
  20444f:      	leaq	0xa592(%rip), %rax      # 0x20e9e8
  204456:      	jmp	0x2045a0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x4e0>
  20445b:      	cmpq	$0x9, %rcx
  20445f:      	jb	0x20451d <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45d>
  204465:      	movl	$0x1, %eax
  20446a:      	cmpq	$0x11, %rcx
  20446e:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  204474:      	movl	$0x2, %eax
  204479:      	cmpq	$0x21, %rcx
  20447d:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  204483:      	movl	$0x3, %eax
  204488:      	cmpq	$0x41, %rcx
  20448c:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  204492:      	movl	$0x4, %eax
  204497:      	cmpq	$0x81, %rcx
  20449e:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  2044a0:      	movl	$0x5, %eax
  2044a5:      	cmpq	$0x101, %rcx            # imm = 0x101
  2044ac:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  2044ae:      	movl	$0x6, %eax
  2044b3:      	cmpq	$0x201, %rcx            # imm = 0x201
  2044ba:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  2044bc:      	movl	$0x7, %eax
  2044c1:      	cmpq	$0x401, %rcx            # imm = 0x401
  2044c8:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  2044ca:      	movl	$0x8, %eax
  2044cf:      	cmpq	$0x801, %rcx            # imm = 0x801
  2044d6:      	jb	0x20451f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x45f>
  2044d8:      	leaq	0x50(%r13), %rdi
  2044dc:      	movl	$0x1, %edx
  2044e1:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  2044e6:      	jmp	0x204547 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x487>
  2044e8:      	movzbl	0x12029(%rip), %eax     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  2044ef:      	movq	0x1200a(%rip), %rcx     # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  2044f6:      	movb	$0x62, 0xa0(%rcx)
  2044fd:      	movb	%al, 0xa1(%rcx)
  204503:      	movb	$0x0, 0x11fee(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20450a:      	movq	0x60(%rsp), %rcx
  20450f:      	testq	%rcx, %rcx
  204512:      	jne	0x2045e1 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x521>
  204518:      	jmp	0x2046b7 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5f7>
  20451d:      	xorl	%eax, %eax
  20451f:      	movq	0x8(%r13,%rax,8), %rcx
  204524:      	movq	$0x0, 0x8(%r13,%rax,8)
  20452d:      	leaq	-0x3bec(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  204534:      	cmpq	$0x7, (%rdx,%rax,8)
  204539:      	jbe	0x204b6e <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xaae>
  20453f:      	movq	%rcx, (%rsi)
  204542:      	movq	%rsi, 0x8(%r13,%rax,8)
  204547:      	movb	$0x0, (%r13)
  20454c:      	movq	%r15, 0x60(%rsp)
  204551:      	movq	%r12, 0x68(%rsp)
  204556:      	movq	%r15, 0x70(%rsp)
  20455b:      	movq	0x80(%rsp), %r15
  204563:      	cmpq	$0x5, %r14
  204567:      	jne	0x204358 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x298>
  20456d:      	movl	$0x68796173, %eax       # imm = 0x68796173
  204572:      	xorl	(%rbx), %eax
  204574:      	movzbl	0x4(%rbx), %ecx
  204578:      	xorl	$0x69, %ecx
  20457b:      	orl	%eax, %ecx
  20457d:      	je	0x2047af <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6ef>
  204583:      	movl	$0x61656c63, %eax       # imm = 0x61656C63
  204588:      	xorl	(%rbx), %eax
  20458a:      	movzbl	0x4(%rbx), %ecx
  20458e:      	xorl	$0x72, %ecx
  204591:      	orl	%eax, %ecx
  204593:      	je	0x2047da <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x71a>
  204599:      	leaq	0xa438(%rip), %rax      # 0x20e9d8
  2045a0:      	movq	%rax, 0x8(%rsp)
  2045a5:      	movq	$0x1, 0x10(%rsp)
  2045ae:      	movq	$0x0, 0x28(%rsp)
  2045b7:      	movq	$0x8, 0x18(%rsp)
  2045c0:      	movq	$0x0, 0x20(%rsp)
  2045c9:      	leaq	0x8(%rsp), %rdi
  2045ce:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  2045d3:      	movq	0x60(%rsp), %rcx
  2045d8:      	testq	%rcx, %rcx
  2045db:      	je	0x2046b7 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5f7>
  2045e1:      	movq	0x68(%rsp), %rsi
  2045e6:      	movq	0xacd3(%rip), %r14      # 0x20f2c0
  2045ed:      	movb	$0x1, %dl
  2045ef:      	nop
  2045f0:      	xorl	%eax, %eax
  2045f2:      	lock
  2045f3:      	cmpxchgb	%dl, (%r14)
  2045f7:      	jne	0x204602 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x542>
  2045f9:      	jmp	0x20460c <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x54c>
  2045fb:      	nopl	(%rax,%rax)
  204600:      	pause
  204602:      	movzbl	(%r14), %eax
  204606:      	testb	%al, %al
  204608:      	jne	0x204600 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x540>
  20460a:      	jmp	0x2045f0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x530>
  20460c:      	cmpq	$0x9, %rcx
  204610:      	jb	0x204689 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5c9>
  204612:      	movl	$0x1, %eax
  204617:      	cmpq	$0x11, %rcx
  20461b:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  20461d:      	movl	$0x2, %eax
  204622:      	cmpq	$0x21, %rcx
  204626:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  204628:      	movl	$0x3, %eax
  20462d:      	cmpq	$0x41, %rcx
  204631:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  204633:      	movl	$0x4, %eax
  204638:      	cmpq	$0x81, %rcx
  20463f:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  204641:      	movl	$0x5, %eax
  204646:      	cmpq	$0x101, %rcx            # imm = 0x101
  20464d:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  20464f:      	movl	$0x6, %eax
  204654:      	cmpq	$0x201, %rcx            # imm = 0x201
  20465b:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  20465d:      	movl	$0x7, %eax
  204662:      	cmpq	$0x401, %rcx            # imm = 0x401
  204669:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  20466b:      	movl	$0x8, %eax
  204670:      	cmpq	$0x801, %rcx            # imm = 0x801
  204677:      	jb	0x20468b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5cb>
  204679:      	leaq	0x50(%r14), %rdi
  20467d:      	movl	$0x1, %edx
  204682:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  204687:      	jmp	0x2046b3 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5f3>
  204689:      	xorl	%eax, %eax
  20468b:      	movq	0x8(%r14,%rax,8), %rcx
  204690:      	movq	$0x0, 0x8(%r14,%rax,8)
  204699:      	leaq	-0x3d58(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  2046a0:      	cmpq	$0x7, (%rdx,%rax,8)
  2046a5:      	jbe	0x204b6e <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xaae>
  2046ab:      	movq	%rcx, (%rsi)
  2046ae:      	movq	%rsi, 0x8(%r14,%rax,8)
  2046b3:      	movb	$0x0, (%r14)
  2046b7:      	testq	%r15, %r15
  2046ba:      	je	0x20479d <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6dd>
  2046c0:      	movq	0xabf9(%rip), %r14      # 0x20f2c0
  2046c7:      	movb	$0x1, %cl
  2046c9:      	nopl	(%rax)
  2046d0:      	xorl	%eax, %eax
  2046d2:      	lock
  2046d3:      	cmpxchgb	%cl, (%r14)
  2046d7:      	jne	0x2046e2 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x622>
  2046d9:      	jmp	0x2046ec <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x62c>
  2046db:      	nopl	(%rax,%rax)
  2046e0:      	pause
  2046e2:      	movzbl	(%r14), %eax
  2046e6:      	testb	%al, %al
  2046e8:      	jne	0x2046e0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x620>
  2046ea:      	jmp	0x2046d0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x610>
  2046ec:      	cmpq	$0x9, %r15
  2046f0:      	jb	0x20476f <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6af>
  2046f2:      	movl	$0x1, %eax
  2046f7:      	cmpq	$0x11, %r15
  2046fb:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  2046fd:      	movl	$0x2, %eax
  204702:      	cmpq	$0x21, %r15
  204706:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  204708:      	movl	$0x3, %eax
  20470d:      	cmpq	$0x41, %r15
  204711:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  204713:      	movl	$0x4, %eax
  204718:      	cmpq	$0x81, %r15
  20471f:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  204721:      	movl	$0x5, %eax
  204726:      	cmpq	$0x101, %r15            # imm = 0x101
  20472d:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  20472f:      	movl	$0x6, %eax
  204734:      	cmpq	$0x201, %r15            # imm = 0x201
  20473b:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  20473d:      	movl	$0x7, %eax
  204742:      	cmpq	$0x401, %r15            # imm = 0x401
  204749:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  20474b:      	movl	$0x8, %eax
  204750:      	cmpq	$0x801, %r15            # imm = 0x801
  204757:      	jb	0x204771 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6b1>
  204759:      	leaq	0x50(%r14), %rdi
  20475d:      	movl	$0x1, %edx
  204762:      	movq	%rbx, %rsi
  204765:      	movq	%r15, %rcx
  204768:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  20476d:      	jmp	0x204799 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x6d9>
  20476f:      	xorl	%eax, %eax
  204771:      	movq	0x8(%r14,%rax,8), %rcx
  204776:      	movq	$0x0, 0x8(%r14,%rax,8)
  20477f:      	leaq	-0x3e3e(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  204786:      	cmpq	$0x7, (%rdx,%rax,8)
  20478b:      	jbe	0x204b6e <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xaae>
  204791:      	movq	%rcx, (%rbx)
  204794:      	movq	%rbx, 0x8(%r14,%rax,8)
  204799:      	movb	$0x0, (%r14)
  20479d:      	addq	$0x88, %rsp
  2047a4:      	popq	%rbx
  2047a5:      	popq	%r12
  2047a7:      	popq	%r13
  2047a9:      	popq	%r14
  2047ab:      	popq	%r15
  2047ad:      	popq	%rbp
  2047ae:      	retq
  2047af:      	leaq	0x60(%rsp), %rax
  2047b4:      	movq	%rax, 0x78(%rsp)
  2047b9:      	cmpq	$0x0, 0x70(%rsp)
  2047bf:      	je	0x2048d0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x810>
  2047c5:      	movq	0x11d54(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2047cc:      	testq	%rax, %rax
  2047cf:      	jne	0x204999 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8d9>
  2047d5:      	jmp	0x20491a <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x85a>
  2047da:      	movq	0x11d3f(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2047e1:      	testq	%rax, %rax
  2047e4:      	jne	0x204869 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7a9>
  2047ea:      	movl	$0x1, %ecx
  2047ef:      	xorl	%eax, %eax
  2047f1:      	lock
  2047f2:      	cmpxchgq	%rcx, 0x11d26(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2047fa:      	jne	0x204869 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7a9>
  2047fc:      	leaq	0x11d1d(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204803:      	movq	%rax, 0x8(%rsp)
  204808:      	movq	$0x1, 0x11cdd(%rip)     # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  204813:      	movb	$0x0, 0x11cde(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20481a:      	movq	$0xb8000, 0x11cdb(%rip) # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  204825:      	movq	$0x0, 0x11cd8(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  204830:      	movq	$0x0, 0x11cd5(%rip)     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  20483b:      	movb	$0xd, 0x11cd6(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  204842:      	movb	$0x0, 0x10(%rsp)
  204847:      	movl	$0x2, %eax
  20484c:      	xchgq	%rax, 0x11ccd(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204853:      	leaq	0x8(%rsp), %rdi
  204858:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  20485d:      	jmp	0x204879 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7b9>
  20485f:      	nop
  204860:      	pause
  204862:      	movq	0x11cb7(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204869:      	cmpq	$0x1, %rax
  20486d:      	je	0x204860 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7a0>
  20486f:      	cmpq	$0x2, %rax
  204873:      	jne	0x204b39 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa79>
  204879:      	movb	$0x1, %cl
  20487b:      	nopl	(%rax,%rax)
  204880:      	xorl	%eax, %eax
  204882:      	lock
  204883:      	cmpxchgb	%cl, 0x11c6e(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20488a:      	je	0x2048aa <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7ea>
  20488c:      	nopl	(%rax)
  204890:      	movzbl	0x11c61(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204897:      	testb	%al, %al
  204899:      	je	0x204880 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7c0>
  20489b:      	pause
  20489d:      	movzbl	0x11c54(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2048a4:      	testb	%al, %al
  2048a6:      	jne	0x20489b <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7db>
  2048a8:      	jmp	0x204880 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x7c0>
  2048aa:      	leaq	0x11c4f(%rip), %rdi     # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  2048b1:      	callq	0x206a10 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7>
  2048b6:      	movb	$0x0, 0x11c3b(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2048bd:      	movq	0x60(%rsp), %rcx
  2048c2:      	testq	%rcx, %rcx
  2048c5:      	jne	0x2045e1 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x521>
  2048cb:      	jmp	0x2046b7 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x5f7>
  2048d0:      	leaq	0xa121(%rip), %rax      # 0x20e9f8
  2048d7:      	movq	%rax, 0x8(%rsp)
  2048dc:      	movq	$0x1, 0x10(%rsp)
  2048e5:      	movq	$0x0, 0x28(%rsp)
  2048ee:      	movq	$0x8, 0x18(%rsp)
  2048f7:      	movq	$0x0, 0x20(%rsp)
  204900:      	leaq	0x8(%rsp), %rdi
  204905:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  20490a:      	movq	0x11c0f(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204911:      	testq	%rax, %rax
  204914:      	jne	0x204999 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8d9>
  20491a:      	movl	$0x1, %ecx
  20491f:      	xorl	%eax, %eax
  204921:      	lock
  204922:      	cmpxchgq	%rcx, 0x11bf6(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  20492a:      	jne	0x204999 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8d9>
  20492c:      	leaq	0x11bed(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204933:      	movq	%rax, 0x8(%rsp)
  204938:      	movq	$0x1, 0x11bad(%rip)     # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  204943:      	movb	$0x0, 0x11bae(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20494a:      	movq	$0xb8000, 0x11bab(%rip) # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  204955:      	movq	$0x0, 0x11ba8(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  204960:      	movq	$0x0, 0x11ba5(%rip)     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  20496b:      	movb	$0xd, 0x11ba6(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  204972:      	movb	$0x0, 0x10(%rsp)
  204977:      	movl	$0x2, %eax
  20497c:      	xchgq	%rax, 0x11b9d(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204983:      	leaq	0x8(%rsp), %rdi
  204988:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  20498d:      	jmp	0x2049a9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8e9>
  20498f:      	nop
  204990:      	pause
  204992:      	movq	0x11b87(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204999:      	cmpq	$0x1, %rax
  20499d:      	je	0x204990 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8d0>
  20499f:      	cmpq	$0x2, %rax
  2049a3:      	jne	0x204b39 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa79>
  2049a9:      	movb	$0x1, %cl
  2049ab:      	nopl	(%rax,%rax)
  2049b0:      	xorl	%eax, %eax
  2049b2:      	lock
  2049b3:      	cmpxchgb	%cl, 0x11b3e(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2049ba:      	jne	0x2049c2 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x902>
  2049bc:      	jmp	0x2049cf <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x90f>
  2049be:      	nop
  2049c0:      	pause
  2049c2:      	movzbl	0x11b2f(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2049c9:      	testb	%al, %al
  2049cb:      	jne	0x2049c0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x900>
  2049cd:      	jmp	0x2049b0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x8f0>
  2049cf:      	movb	$0xe, 0x11b42(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  2049d6:      	movb	$0x0, 0x11b1b(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2049dd:      	leaq	0xa024(%rip), %rax      # 0x20ea08
  2049e4:      	movq	%rax, 0x8(%rsp)
  2049e9:      	movq	$0x1, 0x10(%rsp)
  2049f2:      	movq	$0x0, 0x28(%rsp)
  2049fb:      	movq	$0x8, 0x18(%rsp)
  204a04:      	movq	$0x0, 0x20(%rsp)
  204a0d:      	leaq	0x8(%rsp), %rdi
  204a12:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  204a17:      	movq	0x11b02(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204a1e:      	testq	%rax, %rax
  204a21:      	jne	0x204aa9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x9e9>
  204a27:      	movl	$0x1, %ecx
  204a2c:      	xorl	%eax, %eax
  204a2e:      	lock
  204a2f:      	cmpxchgq	%rcx, 0x11ae9(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204a37:      	jne	0x204aa9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x9e9>
  204a39:      	leaq	0x11ae0(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204a40:      	movq	%rax, 0x8(%rsp)
  204a45:      	movq	$0x1, 0x11aa0(%rip)     # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  204a50:      	movb	$0x0, 0x11aa1(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204a57:      	movq	$0xb8000, 0x11a9e(%rip) # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  204a62:      	movq	$0x0, 0x11a9b(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  204a6d:      	movq	$0x0, 0x11a98(%rip)     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  204a78:      	movb	$0xd, 0x11a99(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  204a7f:      	movb	$0x0, 0x10(%rsp)
  204a84:      	movl	$0x2, %eax
  204a89:      	xchgq	%rax, 0x11a90(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204a90:      	leaq	0x8(%rsp), %rdi
  204a95:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  204a9a:      	jmp	0x204ab9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x9f9>
  204a9c:      	nopl	(%rax)
  204aa0:      	pause
  204aa2:      	movq	0x11a77(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  204aa9:      	cmpq	$0x1, %rax
  204aad:      	je	0x204aa0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x9e0>
  204aaf:      	cmpq	$0x2, %rax
  204ab3:      	jne	0x204b39 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa79>
  204ab9:      	movb	$0x1, %cl
  204abb:      	nopl	(%rax,%rax)
  204ac0:      	xorl	%eax, %eax
  204ac2:      	lock
  204ac3:      	cmpxchgb	%cl, 0x11a2e(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204aca:      	jne	0x204ad2 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa12>
  204acc:      	jmp	0x204adf <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa1f>
  204ace:      	nop
  204ad0:      	pause
  204ad2:      	movzbl	0x11a1f(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204ad9:      	testb	%al, %al
  204adb:      	jne	0x204ad0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa10>
  204add:      	jmp	0x204ac0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa00>
  204adf:      	movb	$0xd, 0x11a32(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  204ae6:      	movb	$0x0, 0x11a0b(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  204aed:      	leaq	0x78(%rsp), %rax
  204af2:      	movq	%rax, 0x48(%rsp)
  204af7:      	leaq	0x492(%rip), %rax       # 0x204f90 <<&mut T as core::fmt::Display>::fmt::h36c1e9287c44aa0d>
  204afe:      	movq	%rax, 0x50(%rsp)
  204b03:      	leaq	-0x4502(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  204b0a:      	movq	%rax, 0x8(%rsp)
  204b0f:      	movq	$0x1, 0x10(%rsp)
  204b18:      	movq	$0x0, 0x28(%rsp)
  204b21:      	leaq	0x48(%rsp), %rax
  204b26:      	movq	%rax, 0x18(%rsp)
  204b2b:      	movq	$0x1, 0x20(%rsp)
  204b34:      	jmp	0x2045c9 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0x509>
  204b39:      	testq	%rax, %rax
  204b3c:      	jne	0x204b56 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838+0xa96>
  204b3e:      	leaq	-0x3fb8(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  204b45:      	leaq	0xa164(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  204b4c:      	movl	$0x28, %esi
  204b51:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  204b56:      	leaq	-0x3f4d(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  204b5d:      	leaq	0xa164(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  204b64:      	movl	$0x11, %esi
  204b69:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  204b6e:      	leaq	-0x4199(%rip), %rdi     # 0x2009dc <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456>
  204b75:      	leaq	0x9f54(%rip), %rdx      # 0x20ead0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456>
  204b7c:      	movl	$0x3e, %esi
  204b81:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  204b86:      	leaq	-0x4538(%rip), %rdi     # 0x200655 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0x2d>
  204b8d:      	leaq	0x9dc4(%rip), %rcx      # 0x20e958
  204b94:      	leaq	0x9ddd(%rip), %r8       # 0x20e978
  204b9b:      	leaq	0x78(%rsp), %rdx
  204ba0:      	movl	$0x37, %esi
  204ba5:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  204baa:      	leaq	0x9e0f(%rip), %r8       # 0x20e9c0
  204bb1:      	movq	%r12, %rdi
  204bb4:      	movq	%r15, %rsi
  204bb7:      	movq	%r13, %rdx
  204bba:      	movq	%r15, %rcx
  204bbd:      	callq	0x20c190 <core::str::slice_error_fail::h8baa942aeb8c0197>
  204bc2:      	leaq	0x9ddf(%rip), %r8       # 0x20e9a8
  204bc9:      	movq	%r12, %rdi
  204bcc:      	movq	%r15, %rsi
  204bcf:      	xorl	%edx, %edx
  204bd1:      	movq	%r13, %rcx
  204bd4:      	callq	0x20c190 <core::str::slice_error_fail::h8baa942aeb8c0197>
  204bd9:      	xorl	%r13d, %r13d
  204bdc:      	movq	%r13, %rdi
  204bdf:      	movq	%r15, %rsi
  204be2:      	callq	0x20a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>
  204be7:      	int3
  204be8:      	int3
  204be9:      	int3
  204bea:      	int3
  204beb:      	int3
  204bec:      	int3
  204bed:      	int3
  204bee:      	int3
  204bef:      	int3

0000000000204bf0 <kernel::memory::init::hd35be6f2c471daf0>:
  204bf0:      	movq	%cr3, %rcx
  204bf3:      	movabsq	$0xffffffffff000, %rax  # imm = 0xFFFFFFFFFF000
  204bfd:      	andq	%rcx, %rax
  204c00:      	addq	%rdi, %rax
  204c03:      	movq	%rax, %rcx
  204c06:      	shrq	$0x2f, %rcx
  204c0a:      	je	0x204c21 <kernel::memory::init::hd35be6f2c471daf0+0x31>
  204c0c:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  204c12:      	je	0x204c21 <kernel::memory::init::hd35be6f2c471daf0+0x31>
  204c14:      	cmpl	$0x1, %ecx
  204c17:      	jne	0x204c25 <kernel::memory::init::hd35be6f2c471daf0+0x35>
  204c19:      	shlq	$0x10, %rax
  204c1d:      	sarq	$0x10, %rax
  204c21:      	movq	%rdi, %rdx
  204c24:      	retq
  204c25:      	pushq	%rax
  204c26:      	movq	%rax, (%rsp)
  204c2a:      	leaq	-0x443c(%rip), %rdi     # 0x2007f5 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0x1cd>
  204c31:      	leaq	0x9de0(%rip), %rcx      # 0x20ea18
  204c38:      	leaq	0x9df9(%rip), %r8       # 0x20ea38
  204c3f:      	movq	%rsp, %rdx
  204c42:      	movl	$0x4a, %esi
  204c47:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  204c4c:      	int3
  204c4d:      	int3
  204c4e:      	int3
  204c4f:      	int3

0000000000204c50 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8>:
  204c50:      	pushq	%r15
  204c52:      	pushq	%r14
  204c54:      	pushq	%rbx
  204c55:      	movq	%rsi, %rbx
  204c58:      	movq	%rdi, %r14
  204c5b:      	movabsq	$0x10000000000000, %r15 # imm = 0x10000000000000
  204c65:      	movq	(%rsi), %rdi
  204c68:      	callq	0x209f60 <<bootloader::bootinfo::memory_map::MemoryMap as core::ops::deref::Deref>::deref::h766533be9c9d64cd>
  204c6d:      	leaq	(%rdx,%rdx,2), %rcx
  204c71:      	leaq	(%rax,%rcx,8), %rsi
  204c75:      	movq	0x8(%rbx), %rcx
  204c79:      	movb	$0x1, %r10b
  204c7c:      	xorl	%edx, %edx
  204c7e:      	xorl	%r8d, %r8d
  204c81:      	testq	%r9, %r9
  204c84:      	sete	%r11b
  204c88:      	orb	%r10b, %r11b
  204c8b:      	cmpq	%rcx, %r8
  204c8e:      	je	0x204d34 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0xe4>
  204c94:      	testb	$0x1, %r11b
  204c98:      	je	0x204d00 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0xb0>
  204c9a:      	testq	%rax, %rax
  204c9d:      	je	0x204d8f <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x13f>
  204ca3:      	movq	%rax, %r10
  204ca6:      	cmpq	%rsi, %rax
  204ca9:      	je	0x204d8f <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x13f>
  204caf:      	nop
  204cb0:      	cmpl	$0x0, 0x10(%r10)
  204cb5:      	je	0x204cd0 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x80>
  204cb7:      	addq	$0x18, %r10
  204cbb:      	cmpq	%rsi, %r10
  204cbe:      	jne	0x204cb0 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x60>
  204cc0:      	jmp	0x204d8f <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x13f>
  204cc5:      	nopw	%cs:(%rax,%rax)
  204cd0:      	movq	(%r10), %rdi
  204cd3:      	movq	0x8(%r10), %r9
  204cd7:      	shlq	$0xc, %rdi
  204cdb:      	shlq	$0xc, %r9
  204cdf:      	leaq	0x18(%r10), %rax
  204ce3:      	subq	%rdi, %r9
  204ce6:      	jbe	0x204c9a <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x4a>
  204ce8:      	cmovbq	%rdx, %r9
  204cec:      	shrq	$0xc, %r9
  204cf0:      	addq	$0x18, %r10
  204cf4:      	movq	%r10, %rax
  204cf7:      	nopw	(%rax,%rax)
  204d00:      	incq	%r8
  204d03:      	leaq	0x1000(%rdi), %r11
  204d0a:      	decq	%r9
  204d0d:      	xorl	%r10d, %r10d
  204d10:      	cmpq	%r15, %rdi
  204d13:      	movq	%r11, %rdi
  204d16:      	jb	0x204c81 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x31>
  204d1c:      	leaq	-0x461e(%rip), %rdi     # 0x200705 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0xdd>
  204d23:      	leaq	0x9c66(%rip), %rdx      # 0x20e990
  204d2a:      	movl	$0x43, %esi
  204d2f:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  204d34:      	testb	$0x1, %r11b
  204d38:      	je	0x204d77 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x127>
  204d3a:      	xorl	%edx, %edx
  204d3c:      	testq	%rax, %rax
  204d3f:      	je	0x204d8f <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x13f>
  204d41:      	movq	%rax, %rdi
  204d44:      	nopw	%cs:(%rax,%rax)
  204d50:      	cmpq	%rsi, %rdi
  204d53:      	je	0x204d8f <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x13f>
  204d55:      	leaq	0x18(%rdi), %rax
  204d59:      	cmpl	$0x0, 0x10(%rdi)
  204d5d:      	movq	%rax, %rdi
  204d60:      	jne	0x204d50 <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0x100>
  204d62:      	movq	-0x18(%rax), %rdi
  204d66:      	movq	-0x10(%rax), %r8
  204d6a:      	shlq	$0xc, %rdi
  204d6e:      	shlq	$0xc, %r8
  204d72:      	cmpq	%rdi, %r8
  204d75:      	jbe	0x204d3c <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0xec>
  204d77:      	cmpq	%r15, %rdi
  204d7a:      	jae	0x204d1c <<kernel::memory::BootInfoFrameAllocator as x86_64::structures::paging::frame_alloc::FrameAllocator<x86_64::structures::paging::page::Size4KiB>>::allocate_frame::h59cd7cf2c22e1ea8+0xcc>
  204d7c:      	addq	$-0x1000, %r15          # imm = 0xF000
  204d83:      	andq	%r15, %rdi
  204d86:      	movq	%rdi, 0x8(%r14)
  204d8a:      	movl	$0x1, %edx
  204d8f:      	movq	%rdx, (%r14)
  204d92:      	incq	%rcx
  204d95:      	movq	%rcx, 0x8(%rbx)
  204d99:      	movq	%r14, %rax
  204d9c:      	popq	%rbx
  204d9d:      	popq	%r14
  204d9f:      	popq	%r15
  204da1:      	retq
  204da2:      	int3
  204da3:      	int3
  204da4:      	int3
  204da5:      	int3
  204da6:      	int3
  204da7:      	int3
  204da8:      	int3
  204da9:      	int3
  204daa:      	int3
  204dab:      	int3
  204dac:      	int3
  204dad:      	int3
  204dae:      	int3
  204daf:      	int3

0000000000204db0 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700>:
  204db0:      	movzbl	%dl, %eax
  204db3:      	leal	-0x3c(%rax), %ecx
  204db6:      	cmpl	$0x3e, %ecx
  204db9:      	ja	0x204de4 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x34>
  204dbb:      	leaq	-0x4582(%rip), %rdx     # 0x200840 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0x218>
  204dc2:      	movslq	(%rdx,%rcx,4), %rcx
  204dc6:      	addq	%rdx, %rcx
  204dc9:      	jmpq	*%rcx
  204dcb:      	cmpb	$0x1, %sil
  204dcf:      	jne	0x204f0d <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x15d>
  204dd5:      	xorb	$0x1, 0x6(%rdi)
  204dd9:      	movl	$0x3c00, %eax           # imm = 0x3C00
  204dde:      	xorl	%ecx, %ecx
  204de0:      	orq	%rcx, %rax
  204de3:      	retq
  204de4:      	cmpl	$0x22, %eax
  204de7:      	jne	0x204e08 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x58>
  204de9:      	cmpb	$0x1, %sil
  204ded:      	jne	0x204f0d <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x15d>
  204df3:      	cmpb	$0x0, 0x8(%rdi)
  204df7:      	je	0x204f63 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x1b3>
  204dfd:      	movl	$0x1000, %eax           # imm = 0x1000
  204e02:      	xorl	%ecx, %ecx
  204e04:      	orq	%rcx, %rax
  204e07:      	retq
  204e08:      	cmpb	$0x1, %sil
  204e0c:      	jne	0x204f0d <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x15d>
  204e12:      	pushq	%rax
  204e13:      	leaq	0x9(%rdi), %rsi
  204e17:      	movzbl	(%rdi), %ecx
  204e1a:      	incq	%rdi
  204e1d:      	movq	%rdi, %rdx
  204e20:      	movq	%rsi, %rdi
  204e23:      	movl	%eax, %esi
  204e25:      	callq	0x208140 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b>
  204e2a:      	movzbl	%al, %ecx
  204e2d:      	andq	$-0x100, %rax
  204e33:      	addq	$0x8, %rsp
  204e37:      	orq	%rcx, %rax
  204e3a:      	retq
  204e3b:      	testb	%sil, %sil
  204e3e:      	je	0x204f09 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x159>
  204e44:      	movzbl	%sil, %ecx
  204e48:      	cmpl	$0x1, %ecx
  204e4b:      	jne	0x204f4e <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x19e>
  204e51:      	movb	$0x1, 0x8(%rdi)
  204e55:      	movl	$0x7a00, %eax           # imm = 0x7A00
  204e5a:      	xorl	%ecx, %ecx
  204e5c:      	orq	%rcx, %rax
  204e5f:      	retq
  204e60:      	testb	%sil, %sil
  204e63:      	je	0x204f18 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x168>
  204e69:      	movzbl	%sil, %ecx
  204e6d:      	cmpl	$0x1, %ecx
  204e70:      	jne	0x204f5d <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x1ad>
  204e76:      	movb	$0x1, 0x2(%rdi)
  204e7a:      	movl	$0x5700, %eax           # imm = 0x5700
  204e7f:      	xorl	%ecx, %ecx
  204e81:      	orq	%rcx, %rax
  204e84:      	retq
  204e85:      	testb	%sil, %sil
  204e88:      	je	0x204f27 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x177>
  204e8e:      	movzbl	%sil, %ecx
  204e92:      	cmpl	$0x1, %ecx
  204e95:      	jne	0x204f4e <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x19e>
  204e9b:      	movb	$0x1, 0x3(%rdi)
  204e9f:      	movl	$0x5d00, %eax           # imm = 0x5D00
  204ea4:      	xorl	%ecx, %ecx
  204ea6:      	orq	%rcx, %rax
  204ea9:      	retq
  204eaa:      	testb	%sil, %sil
  204ead:      	je	0x204f36 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x186>
  204eb3:      	movzbl	%sil, %ecx
  204eb7:      	cmpl	$0x1, %ecx
  204eba:      	jne	0x204f4e <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x19e>
  204ec0:      	movb	$0x1, 0x1(%rdi)
  204ec4:      	movl	$0x4c00, %eax           # imm = 0x4C00
  204ec9:      	xorl	%ecx, %ecx
  204ecb:      	orq	%rcx, %rax
  204ece:      	retq
  204ecf:      	testb	%sil, %sil
  204ed2:      	je	0x204f45 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x195>
  204ed4:      	movzbl	%sil, %ecx
  204ed8:      	cmpl	$0x1, %ecx
  204edb:      	jne	0x204f4e <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x19e>
  204edd:      	movb	$0x1, 0x7(%rdi)
  204ee1:      	movl	$0x6100, %eax           # imm = 0x6100
  204ee6:      	xorl	%ecx, %ecx
  204ee8:      	orq	%rcx, %rax
  204eeb:      	retq
  204eec:      	testb	%sil, %sil
  204eef:      	je	0x204f54 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x1a4>
  204ef1:      	movzbl	%sil, %ecx
  204ef5:      	cmpl	$0x1, %ecx
  204ef8:      	jne	0x204f4e <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700+0x19e>
  204efa:      	movb	$0x1, 0x4(%rdi)
  204efe:      	movl	$0x6400, %eax           # imm = 0x6400
  204f03:      	xorl	%ecx, %ecx
  204f05:      	orq	%rcx, %rax
  204f08:      	retq
  204f09:      	movb	$0x0, 0x8(%rdi)
  204f0d:      	movl	$0x2, %ecx
  204f12:      	xorl	%eax, %eax
  204f14:      	orq	%rcx, %rax
  204f17:      	retq
  204f18:      	movb	$0x0, 0x2(%rdi)
  204f1c:      	movl	$0x2, %ecx
  204f21:      	xorl	%eax, %eax
  204f23:      	orq	%rcx, %rax
  204f26:      	retq
  204f27:      	movb	$0x0, 0x3(%rdi)
  204f2b:      	movl	$0x2, %ecx
  204f30:      	xorl	%eax, %eax
  204f32:      	orq	%rcx, %rax
  204f35:      	retq
  204f36:      	movb	$0x0, 0x1(%rdi)
  204f3a:      	movl	$0x2, %ecx
  204f3f:      	xorl	%eax, %eax
  204f41:      	orq	%rcx, %rax
  204f44:      	retq
  204f45:      	movb	$0x0, 0x7(%rdi)
  204f49:      	movl	$0x2, %ecx
  204f4e:      	xorl	%eax, %eax
  204f50:      	orq	%rcx, %rax
  204f53:      	retq
  204f54:      	movb	$0x0, 0x4(%rdi)
  204f58:      	movl	$0x2, %ecx
  204f5d:      	xorl	%eax, %eax
  204f5f:      	orq	%rcx, %rax
  204f62:      	retq
  204f63:      	xorb	$0x1, 0x5(%rdi)
  204f67:      	movl	$0x2200, %eax           # imm = 0x2200
  204f6c:      	xorl	%ecx, %ecx
  204f6e:      	orq	%rcx, %rax
  204f71:      	retq
  204f72:      	int3
  204f73:      	int3
  204f74:      	int3
  204f75:      	int3
  204f76:      	int3
  204f77:      	int3
  204f78:      	int3
  204f79:      	int3
  204f7a:      	int3
  204f7b:      	int3
  204f7c:      	int3
  204f7d:      	int3
  204f7e:      	int3
  204f7f:      	int3

0000000000204f80 <<&T as core::fmt::Debug>::fmt::h8caae058ed6860cb>:
  204f80:      	movq	(%rdi), %rdi
  204f83:      	jmp	0x20a390 <<x86_64::structures::idt::_::InternalBitFlags as core::fmt::Debug>::fmt::h0b1b453ec1c7e6ff>
  204f88:      	int3
  204f89:      	int3
  204f8a:      	int3
  204f8b:      	int3
  204f8c:      	int3
  204f8d:      	int3
  204f8e:      	int3
  204f8f:      	int3

0000000000204f90 <<&mut T as core::fmt::Display>::fmt::h36c1e9287c44aa0d>:
  204f90:      	movq	%rsi, %rdx
  204f93:      	movq	(%rdi), %rax
  204f96:      	movq	0x8(%rax), %rdi
  204f9a:      	movq	0x10(%rax), %rsi
  204f9e:      	jmp	0x20b700 <<str as core::fmt::Display>::fmt::h22ee6e3a4d9e89f8>
  204fa3:      	int3
  204fa4:      	int3
  204fa5:      	int3
  204fa6:      	int3
  204fa7:      	int3
  204fa8:      	int3
  204fa9:      	int3
  204faa:      	int3
  204fab:      	int3
  204fac:      	int3
  204fad:      	int3
  204fae:      	int3
  204faf:      	int3

0000000000204fb0 <core::fmt::Write::write_fmt::h0d52a67e0fabc6d9>:
  204fb0:      	movq	%rsi, %rdx
  204fb3:      	leaq	0x9a96(%rip), %rsi      # 0x20ea50
  204fba:      	jmp	0x20acd0 <core::fmt::write::h6d306477db77c931>
  204fbf:      	int3

0000000000204fc0 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe>:
  204fc0:      	pushq	%rbx
  204fc1:      	movq	(%rdi), %rcx
  204fc4:      	testq	%rcx, %rcx
  204fc7:      	je	0x2050a1 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xe1>
  204fcd:      	movq	0x8(%rdi), %rsi
  204fd1:      	movq	0xa2e8(%rip), %rbx      # 0x20f2c0
  204fd8:      	movb	$0x1, %dl
  204fda:      	nopw	(%rax,%rax)
  204fe0:      	xorl	%eax, %eax
  204fe2:      	lock
  204fe3:      	cmpxchgb	%dl, (%rbx)
  204fe6:      	jne	0x204ff2 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x32>
  204fe8:      	jmp	0x204ffb <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x3b>
  204fea:      	nopw	(%rax,%rax)
  204ff0:      	pause
  204ff2:      	movzbl	(%rbx), %eax
  204ff5:      	testb	%al, %al
  204ff7:      	jne	0x204ff0 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x30>
  204ff9:      	jmp	0x204fe0 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0x20>
  204ffb:      	cmpq	$0x9, %rcx
  204fff:      	jb	0x205078 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xb8>
  205001:      	movl	$0x1, %eax
  205006:      	cmpq	$0x11, %rcx
  20500a:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  20500c:      	movl	$0x2, %eax
  205011:      	cmpq	$0x21, %rcx
  205015:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  205017:      	movl	$0x3, %eax
  20501c:      	cmpq	$0x41, %rcx
  205020:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  205022:      	movl	$0x4, %eax
  205027:      	cmpq	$0x81, %rcx
  20502e:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  205030:      	movl	$0x5, %eax
  205035:      	cmpq	$0x101, %rcx            # imm = 0x101
  20503c:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  20503e:      	movl	$0x6, %eax
  205043:      	cmpq	$0x201, %rcx            # imm = 0x201
  20504a:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  20504c:      	movl	$0x7, %eax
  205051:      	cmpq	$0x401, %rcx            # imm = 0x401
  205058:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  20505a:      	movl	$0x8, %eax
  20505f:      	cmpq	$0x801, %rcx            # imm = 0x801
  205066:      	jb	0x20507a <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xba>
  205068:      	leaq	0x50(%rbx), %rdi
  20506c:      	movl	$0x1, %edx
  205071:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  205076:      	jmp	0x20509e <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xde>
  205078:      	xorl	%eax, %eax
  20507a:      	movq	0x8(%rbx,%rax,8), %rcx
  20507f:      	movq	$0x0, 0x8(%rbx,%rax,8)
  205088:      	leaq	-0x4747(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  20508f:      	cmpq	$0x7, (%rdx,%rax,8)
  205094:      	jbe	0x2050a3 <core::ptr::drop_in_place<alloc::string::String>::h422ebe9bfc02ccbe+0xe3>
  205096:      	movq	%rcx, (%rsi)
  205099:      	movq	%rsi, 0x8(%rbx,%rax,8)
  20509e:      	movb	$0x0, (%rbx)
  2050a1:      	popq	%rbx
  2050a2:      	retq
  2050a3:      	leaq	-0x46ce(%rip), %rdi     # 0x2009dc <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456>
  2050aa:      	leaq	0x9a1f(%rip), %rdx      # 0x20ead0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456>
  2050b1:      	movl	$0x3e, %esi
  2050b6:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  2050bb:      	int3
  2050bc:      	int3
  2050bd:      	int3
  2050be:      	int3
  2050bf:      	int3

00000000002050c0 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633>:
  2050c0:      	pushq	%rbp
  2050c1:      	pushq	%r15
  2050c3:      	pushq	%r14
  2050c5:      	pushq	%rbx
  2050c6:      	pushq	%rax
  2050c7:      	movq	%rdi, %rbx
  2050ca:      	cmpl	$0x80, %esi
  2050d0:      	jae	0x2050fb <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x3b>
  2050d2:      	movq	0x10(%rbx), %r14
  2050d6:      	cmpq	(%rbx), %r14
  2050d9:      	jne	0x2050e7 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x27>
  2050db:      	movq	%rbx, %rdi
  2050de:      	movl	%esi, %ebp
  2050e0:      	callq	0x206700 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c>
  2050e5:      	movl	%ebp, %esi
  2050e7:      	movq	0x8(%rbx), %rax
  2050eb:      	movb	%sil, (%rax,%r14)
  2050ef:      	incq	%r14
  2050f2:      	movq	%r14, 0x10(%rbx)
  2050f6:      	jmp	0x2051c0 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x100>
  2050fb:      	movl	$0x0, 0x4(%rsp)
  205103:      	movl	%esi, %eax
  205105:      	cmpl	$0x800, %esi            # imm = 0x800
  20510b:      	jae	0x20512b <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x6b>
  20510d:      	shrl	$0x6, %eax
  205110:      	orb	$-0x40, %al
  205112:      	movb	%al, 0x4(%rsp)
  205116:      	andb	$0x3f, %sil
  20511a:      	orb	$-0x80, %sil
  20511e:      	movb	%sil, 0x5(%rsp)
  205123:      	movl	$0x2, %r14d
  205129:      	jmp	0x205196 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xd6>
  20512b:      	cmpl	$0x10000, %esi          # imm = 0x10000
  205131:      	jae	0x20515e <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x9e>
  205133:      	shrl	$0xc, %eax
  205136:      	orb	$-0x20, %al
  205138:      	movb	%al, 0x4(%rsp)
  20513c:      	movl	%esi, %eax
  20513e:      	shrl	$0x6, %eax
  205141:      	andb	$0x3f, %al
  205143:      	orb	$-0x80, %al
  205145:      	movb	%al, 0x5(%rsp)
  205149:      	andb	$0x3f, %sil
  20514d:      	orb	$-0x80, %sil
  205151:      	movb	%sil, 0x6(%rsp)
  205156:      	movl	$0x3, %r14d
  20515c:      	jmp	0x205196 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xd6>
  20515e:      	shrl	$0x12, %eax
  205161:      	andb	$0x7, %al
  205163:      	orb	$-0x10, %al
  205165:      	movb	%al, 0x4(%rsp)
  205169:      	movl	%esi, %eax
  20516b:      	shrl	$0xc, %eax
  20516e:      	andb	$0x3f, %al
  205170:      	orb	$-0x80, %al
  205172:      	movb	%al, 0x5(%rsp)
  205176:      	movl	%esi, %eax
  205178:      	shrl	$0x6, %eax
  20517b:      	andb	$0x3f, %al
  20517d:      	orb	$-0x80, %al
  20517f:      	movb	%al, 0x6(%rsp)
  205183:      	andb	$0x3f, %sil
  205187:      	orb	$-0x80, %sil
  20518b:      	movb	%sil, 0x7(%rsp)
  205190:      	movl	$0x4, %r14d
  205196:      	movq	(%rbx), %rax
  205199:      	movq	0x10(%rbx), %r15
  20519d:      	subq	%r15, %rax
  2051a0:      	cmpq	%r14, %rax
  2051a3:      	jb	0x2051cd <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0x10d>
  2051a5:      	movq	0x8(%rbx), %rdi
  2051a9:      	addq	%r15, %rdi
  2051ac:      	leaq	0x4(%rsp), %rsi
  2051b1:      	movq	%r14, %rdx
  2051b4:      	callq	0x20d7d0 <memcpy>
  2051b9:      	addq	%r14, %r15
  2051bc:      	movq	%r15, 0x10(%rbx)
  2051c0:      	xorl	%eax, %eax
  2051c2:      	addq	$0x8, %rsp
  2051c6:      	popq	%rbx
  2051c7:      	popq	%r14
  2051c9:      	popq	%r15
  2051cb:      	popq	%rbp
  2051cc:      	retq
  2051cd:      	movq	%rbx, %rdi
  2051d0:      	movq	%r15, %rsi
  2051d3:      	movq	%r14, %rdx
  2051d6:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  2051db:      	movq	0x10(%rbx), %r15
  2051df:      	jmp	0x2051a5 <<alloc::string::String as core::fmt::Write>::write_char::hdfce3cd3b4e64633+0xe5>
  2051e1:      	int3
  2051e2:      	int3
  2051e3:      	int3
  2051e4:      	int3
  2051e5:      	int3
  2051e6:      	int3
  2051e7:      	int3
  2051e8:      	int3
  2051e9:      	int3
  2051ea:      	int3
  2051eb:      	int3
  2051ec:      	int3
  2051ed:      	int3
  2051ee:      	int3
  2051ef:      	int3

00000000002051f0 <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563>:
  2051f0:      	pushq	%r15
  2051f2:      	pushq	%r14
  2051f4:      	pushq	%r12
  2051f6:      	pushq	%rbx
  2051f7:      	pushq	%rax
  2051f8:      	movq	%rdx, %rbx
  2051fb:      	movq	%rdi, %r14
  2051fe:      	movq	(%rdi), %rax
  205201:      	movq	0x10(%rdi), %r15
  205205:      	subq	%r15, %rax
  205208:      	cmpq	%rdx, %rax
  20520b:      	jb	0x205231 <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563+0x41>
  20520d:      	movq	0x8(%r14), %rdi
  205211:      	addq	%r15, %rdi
  205214:      	movq	%rbx, %rdx
  205217:      	callq	0x20d7d0 <memcpy>
  20521c:      	addq	%rbx, %r15
  20521f:      	movq	%r15, 0x10(%r14)
  205223:      	xorl	%eax, %eax
  205225:      	addq	$0x8, %rsp
  205229:      	popq	%rbx
  20522a:      	popq	%r12
  20522c:      	popq	%r14
  20522e:      	popq	%r15
  205230:      	retq
  205231:      	movq	%r14, %rdi
  205234:      	movq	%rsi, %r12
  205237:      	movq	%r15, %rsi
  20523a:      	movq	%rbx, %rdx
  20523d:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  205242:      	movq	%r12, %rsi
  205245:      	movq	0x10(%r14), %r15
  205249:      	jmp	0x20520d <<alloc::string::String as core::fmt::Write>::write_str::hfba178e6a036e563+0x1d>
  20524b:      	int3
  20524c:      	int3
  20524d:      	int3
  20524e:      	int3
  20524f:      	int3

0000000000205250 <<core::alloc::layout::LayoutError as core::fmt::Debug>::fmt::h80cdb6f087e4210f.llvm.14347507059935776456>:
  205250:      	movq	%rsi, %rdi
  205253:      	leaq	-0x491e(%rip), %rsi     # 0x20093c <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671+0x314>
  20525a:      	movl	$0xb, %edx
  20525f:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  205264:      	int3
  205265:      	int3
  205266:      	int3
  205267:      	int3
  205268:      	int3
  205269:      	int3
  20526a:      	int3
  20526b:      	int3
  20526c:      	int3
  20526d:      	int3
  20526e:      	int3
  20526f:      	int3

0000000000205270 <kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator::init::ha6713572118f4452>:
  205270:      	addq	$0x48, %rdi
  205274:      	jmp	0x209ed0 <linked_list_allocator::Heap::init::h4536f0bb5256ea1f>
  205279:      	int3
  20527a:      	int3
  20527b:      	int3
  20527c:      	int3
  20527d:      	int3
  20527e:      	int3
  20527f:      	int3

0000000000205280 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815>:
  205280:      	pushq	%rbx
  205281:      	subq	$0x10, %rsp
  205285:      	movq	%rdi, %rbx
  205288:      	movb	$0x1, %cl
  20528a:      	xorl	%eax, %eax
  20528c:      	lock
  20528d:      	cmpxchgb	%cl, (%rdi)
  205290:      	jne	0x2052a2 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x22>
  205292:      	jmp	0x2052b1 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x31>
  205294:      	nopw	%cs:(%rax,%rax)
  2052a0:      	pause
  2052a2:      	movzbl	(%rbx), %eax
  2052a5:      	testb	%al, %al
  2052a7:      	jne	0x2052a0 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x20>
  2052a9:      	xorl	%eax, %eax
  2052ab:      	lock
  2052ac:      	cmpxchgb	%cl, (%rbx)
  2052af:      	jne	0x2052a2 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x22>
  2052b1:      	cmpq	%rsi, %rdx
  2052b4:      	movq	%rsi, %rax
  2052b7:      	cmovaq	%rdx, %rax
  2052bb:      	cmpq	$0x9, %rax
  2052bf:      	jb	0x205329 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xa9>
  2052c1:      	movl	$0x1, %ecx
  2052c6:      	cmpq	$0x11, %rax
  2052ca:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  2052cc:      	movl	$0x2, %ecx
  2052d1:      	cmpq	$0x21, %rax
  2052d5:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  2052d7:      	movl	$0x3, %ecx
  2052dc:      	cmpq	$0x41, %rax
  2052e0:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  2052e2:      	movl	$0x4, %ecx
  2052e7:      	cmpq	$0x81, %rax
  2052ed:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  2052ef:      	movl	$0x5, %ecx
  2052f4:      	cmpq	$0x101, %rax            # imm = 0x101
  2052fa:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  2052fc:      	movl	$0x6, %ecx
  205301:      	cmpq	$0x201, %rax            # imm = 0x201
  205307:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  205309:      	movl	$0x7, %ecx
  20530e:      	cmpq	$0x401, %rax            # imm = 0x401
  205314:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  205316:      	movl	$0x8, %ecx
  20531b:      	cmpq	$0x801, %rax            # imm = 0x801
  205321:      	jb	0x20532b <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xab>
  205323:      	leaq	0x50(%rbx), %rdi
  205327:      	jmp	0x205389 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x109>
  205329:      	xorl	%ecx, %ecx
  20532b:      	movq	0x8(%rbx,%rcx,8), %rax
  205330:      	movq	$0x0, 0x8(%rbx,%rcx,8)
  205339:      	testq	%rax, %rax
  20533c:      	je	0x205356 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0xd6>
  20533e:      	movq	(%rax), %rdx
  205341:      	movq	$0x0, (%rax)
  205348:      	movq	%rdx, 0x8(%rbx,%rcx,8)
  20534d:      	movb	$0x0, (%rbx)
  205350:      	addq	$0x10, %rsp
  205354:      	popq	%rbx
  205355:      	retq
  205356:      	leaq	-0x4a15(%rip), %rax     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  20535d:      	movq	(%rax,%rcx,8), %rdx
  205361:      	leaq	-0x1(%rdx), %rax
  205365:      	movq	%rdx, %rcx
  205368:      	xorq	%rax, %rcx
  20536b:      	cmpq	%rax, %rcx
  20536e:      	jbe	0x205397 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x117>
  205370:      	movabsq	$-0x8000000000000000, %rax # imm = 0x8000000000000000
  20537a:      	subq	%rdx, %rax
  20537d:      	cmpq	%rdx, %rax
  205380:      	jb	0x205397 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815+0x117>
  205382:      	leaq	0x50(%rbx), %rdi
  205386:      	movq	%rdx, %rsi
  205389:      	callq	0x209f10 <linked_list_allocator::Heap::allocate_first_fit::he7a1ac5bcab288c5>
  20538e:      	movb	$0x0, (%rbx)
  205391:      	addq	$0x10, %rsp
  205395:      	popq	%rbx
  205396:      	retq
  205397:      	leaq	-0x49ed(%rip), %rdi     # 0x2009b1 <anon.994c69268c969b3a3a7dd216b7da14d0.10.llvm.14347507059935776456>
  20539e:      	leaq	0x96db(%rip), %rcx      # 0x20ea80 <anon.994c69268c969b3a3a7dd216b7da14d0.9.llvm.14347507059935776456>
  2053a5:      	leaq	0x96f4(%rip), %r8       # 0x20eaa0 <anon.994c69268c969b3a3a7dd216b7da14d0.11.llvm.14347507059935776456>
  2053ac:      	leaq	0xf(%rsp), %rdx
  2053b1:      	movl	$0x2b, %esi
  2053b6:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  2053bb:      	int3
  2053bc:      	int3
  2053bd:      	int3
  2053be:      	int3
  2053bf:      	int3

00000000002053c0 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665>:
  2053c0:      	pushq	%rbx
  2053c1:      	movb	$0x1, %r8b
  2053c4:      	nopw	%cs:(%rax,%rax)
  2053d0:      	xorl	%eax, %eax
  2053d2:      	lock
  2053d3:      	cmpxchgb	%r8b, (%rdi)
  2053d7:      	jne	0x2053e2 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0x22>
  2053d9:      	jmp	0x2053eb <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0x2b>
  2053db:      	nopl	(%rax,%rax)
  2053e0:      	pause
  2053e2:      	movzbl	(%rdi), %eax
  2053e5:      	testb	%al, %al
  2053e7:      	jne	0x2053e0 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0x20>
  2053e9:      	jmp	0x2053d0 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0x10>
  2053eb:      	cmpq	%rdx, %rcx
  2053ee:      	movq	%rdx, %r8
  2053f1:      	cmovaq	%rcx, %r8
  2053f5:      	cmpq	$0x9, %r8
  2053f9:      	jb	0x205482 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc2>
  2053ff:      	movl	$0x1, %eax
  205404:      	cmpq	$0x11, %r8
  205408:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  20540a:      	movl	$0x2, %eax
  20540f:      	cmpq	$0x21, %r8
  205413:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  205415:      	movl	$0x3, %eax
  20541a:      	cmpq	$0x41, %r8
  20541e:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  205420:      	movl	$0x4, %eax
  205425:      	cmpq	$0x81, %r8
  20542c:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  20542e:      	movl	$0x5, %eax
  205433:      	cmpq	$0x101, %r8             # imm = 0x101
  20543a:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  20543c:      	movl	$0x6, %eax
  205441:      	cmpq	$0x201, %r8             # imm = 0x201
  205448:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  20544a:      	movl	$0x7, %eax
  20544f:      	cmpq	$0x401, %r8             # imm = 0x401
  205456:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  205458:      	movl	$0x8, %eax
  20545d:      	cmpq	$0x801, %r8             # imm = 0x801
  205464:      	jb	0x205484 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xc4>
  205466:      	testq	%rsi, %rsi
  205469:      	je	0x2054c5 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0x105>
  20546b:      	leaq	0x50(%rdi), %rax
  20546f:      	movq	%rdi, %rbx
  205472:      	movq	%rax, %rdi
  205475:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  20547a:      	movq	%rbx, %rdi
  20547d:      	movb	$0x0, (%rdi)
  205480:      	popq	%rbx
  205481:      	retq
  205482:      	xorl	%eax, %eax
  205484:      	movq	0x8(%rdi,%rax,8), %rcx
  205489:      	movq	$0x0, 0x8(%rdi,%rax,8)
  205492:      	leaq	-0x4b51(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  205499:      	cmpq	$0x7, (%rdx,%rax,8)
  20549e:      	jbe	0x2054ad <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665+0xed>
  2054a0:      	movq	%rcx, (%rsi)
  2054a3:      	movq	%rsi, 0x8(%rdi,%rax,8)
  2054a8:      	movb	$0x0, (%rdi)
  2054ab:      	popq	%rbx
  2054ac:      	retq
  2054ad:      	leaq	-0x4ad8(%rip), %rdi     # 0x2009dc <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456>
  2054b4:      	leaq	0x9615(%rip), %rdx      # 0x20ead0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456>
  2054bb:      	movl	$0x3e, %esi
  2054c0:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  2054c5:      	leaq	0x95ec(%rip), %rdi      # 0x20eab8 <anon.994c69268c969b3a3a7dd216b7da14d0.12.llvm.14347507059935776456>
  2054cc:      	callq	0x20ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>
  2054d1:      	int3
  2054d2:      	int3
  2054d3:      	int3
  2054d4:      	int3
  2054d5:      	int3
  2054d6:      	int3
  2054d7:      	int3
  2054d8:      	int3
  2054d9:      	int3
  2054da:      	int3
  2054db:      	int3
  2054dc:      	int3
  2054dd:      	int3
  2054de:      	int3
  2054df:      	int3

00000000002054e0 <kernel::init::hd1ab722fa03b49ce>:
  2054e0:      	pushq	%r14
  2054e2:      	pushq	%rbx
  2054e3:      	subq	$0x18, %rsp
  2054e7:      	leaq	0xff2a(%rip), %rbx      # 0x215418 <<kernel::gdt::GDT as core::ops::deref::Deref>::deref::__stability::LAZY::hbef8f8d6f7ecdf64>
  2054ee:      	movq	%rbx, %rdi
  2054f1:      	callq	0x207ff0 <spin::once::Once<T>::call_once::hf790107e50caeeb2>
  2054f6:      	leaq	0xe(%rsp), %r14
  2054fb:      	movq	%r14, %rdi
  2054fe:      	movq	%rax, %rsi
  205501:      	callq	0x20a740 <x86_64::structures::gdt::GlobalDescriptorTable::pointer::h25220b4c5ca8ddc1>
  205506:      	lgdtq	(%r14)
  20550a:      	movq	%rbx, %rdi
  20550d:      	callq	0x207ff0 <spin::once::Once<T>::call_once::hf790107e50caeeb2>
  205512:      	movzwl	0x48(%rax), %eax
  205516:      	pushq	%rax
  205517:      	leaq	0x3(%rip), %rax         # 0x205521 <kernel::init::hd1ab722fa03b49ce+0x41>
  20551e:      	pushq	%rax
  20551f:      	lretq
  205521:      	movq	%rbx, %rdi
  205524:      	callq	0x207ff0 <spin::once::Once<T>::call_once::hf790107e50caeeb2>
  205529:      	movzwl	0x4a(%rax), %eax
  20552d:      	ltrw	%ax
  205530:      	leaq	0xff79(%rip), %rdi      # 0x2154b0 <<kernel::interuptions::IDT as core::ops::deref::Deref>::deref::__stability::LAZY::h9021357f3cf16313.llvm.8840107463618713011>
  205537:      	callq	0x207480 <spin::once::Once<T>::call_once::h0189cd59c13c7d03>
  20553c:      	leaq	0xe(%rsp), %rbx
  205541:      	movq	%rbx, %rdi
  205544:      	movq	%rax, %rsi
  205547:      	callq	0x20a160 <x86_64::structures::idt::InterruptDescriptorTable::pointer::h8b1ccfbb58fedcd1>
  20554c:      	lidtq	(%rbx)
  20554f:      	movq	0x9d82(%rip), %r9       # 0x20f2d8
  205556:      	movb	$0x1, %cl
  205558:      	nopl	(%rax,%rax)
  205560:      	xorl	%eax, %eax
  205562:      	lock
  205563:      	cmpxchgb	%cl, (%r9)
  205567:      	jne	0x205572 <kernel::init::hd1ab722fa03b49ce+0x92>
  205569:      	jmp	0x20557c <kernel::init::hd1ab722fa03b49ce+0x9c>
  20556b:      	nopl	(%rax,%rax)
  205570:      	pause
  205572:      	movzbl	(%r9), %eax
  205576:      	testb	%al, %al
  205578:      	jne	0x205570 <kernel::init::hd1ab722fa03b49ce+0x90>
  20557a:      	jmp	0x205560 <kernel::init::hd1ab722fa03b49ce+0x80>
  20557c:      	movzwl	0x4(%r9), %ecx
  205581:      	movl	%ecx, %edx
  205583:      	inb	%dx, %al
  205584:      	movl	%eax, %esi
  205586:      	movzwl	0xa(%r9), %edi
  20558b:      	movl	%edi, %edx
  20558d:      	inb	%dx, %al
  20558e:      	movl	%eax, %r8d
  205591:      	movzwl	0x2(%r9), %edx
  205596:      	movb	$0x11, %al
  205598:      	outb	%al, %dx
  205599:      	movw	$0x80, %dx
  20559d:      	xorl	%eax, %eax
  20559f:      	outb	%al, %dx
  2055a0:      	movzwl	0x8(%r9), %edx
  2055a5:      	movb	$0x11, %al
  2055a7:      	outb	%al, %dx
  2055a8:      	movw	$0x80, %dx
  2055ac:      	xorl	%eax, %eax
  2055ae:      	outb	%al, %dx
  2055af:      	movzbl	0x6(%r9), %eax
  2055b4:      	movl	%ecx, %edx
  2055b6:      	outb	%al, %dx
  2055b7:      	movw	$0x80, %dx
  2055bb:      	xorl	%eax, %eax
  2055bd:      	outb	%al, %dx
  2055be:      	movzbl	0xc(%r9), %eax
  2055c3:      	movl	%edi, %edx
  2055c5:      	outb	%al, %dx
  2055c6:      	movw	$0x80, %dx
  2055ca:      	xorl	%eax, %eax
  2055cc:      	outb	%al, %dx
  2055cd:      	movl	%ecx, %edx
  2055cf:      	movb	$0x4, %al
  2055d1:      	outb	%al, %dx
  2055d2:      	movw	$0x80, %dx
  2055d6:      	xorl	%eax, %eax
  2055d8:      	outb	%al, %dx
  2055d9:      	movl	%edi, %edx
  2055db:      	movb	$0x2, %al
  2055dd:      	outb	%al, %dx
  2055de:      	movw	$0x80, %dx
  2055e2:      	xorl	%eax, %eax
  2055e4:      	outb	%al, %dx
  2055e5:      	movl	%ecx, %edx
  2055e7:      	movb	$0x1, %al
  2055e9:      	outb	%al, %dx
  2055ea:      	movw	$0x80, %dx
  2055ee:      	xorl	%eax, %eax
  2055f0:      	outb	%al, %dx
  2055f1:      	movl	%edi, %edx
  2055f3:      	movb	$0x1, %al
  2055f5:      	outb	%al, %dx
  2055f6:      	movw	$0x80, %dx
  2055fa:      	xorl	%eax, %eax
  2055fc:      	outb	%al, %dx
  2055fd:      	movl	%ecx, %edx
  2055ff:      	movl	%esi, %eax
  205601:      	outb	%al, %dx
  205602:      	movl	%edi, %edx
  205604:      	movl	%r8d, %eax
  205607:      	outb	%al, %dx
  205608:      	movb	$0x0, (%r9)
  20560c:      	sti
  20560d:      	addq	$0x18, %rsp
  205611:      	popq	%rbx
  205612:      	popq	%r14
  205614:      	retq
  205615:      	int3
  205616:      	int3
  205617:      	int3
  205618:      	int3
  205619:      	int3
  20561a:      	int3
  20561b:      	int3
  20561c:      	int3
  20561d:      	int3
  20561e:      	int3
  20561f:      	int3

0000000000205620 <<x86_64::structures::idt::PageFaultErrorCode as core::fmt::Debug>::fmt::h216491ad187ae61a>:
  205620:      	pushq	%rax
  205621:      	movq	%rsi, %rax
  205624:      	movq	%rdi, (%rsp)
  205628:      	leaq	-0x4bb6(%rip), %rsi     # 0x200a79 <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456+0x9d>
  20562f:      	leaq	0x94b2(%rip), %r8       # 0x20eae8 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x18>
  205636:      	movq	%rsp, %rcx
  205639:      	movl	$0x12, %edx
  20563e:      	movq	%rax, %rdi
  205641:      	callq	0x20b630 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107>
  205646:      	popq	%rcx
  205647:      	retq
  205648:      	int3
  205649:      	int3
  20564a:      	int3
  20564b:      	int3
  20564c:      	int3
  20564d:      	int3
  20564e:      	int3
  20564f:      	int3

0000000000205650 <<x86_64::structures::idt::InterruptStackFrame as core::fmt::Debug>::fmt::h1e6a7021fbd7da4f>:
  205650:      	jmp	0x20a1c0 <<x86_64::structures::idt::InterruptStackFrameValue as core::fmt::Debug>::fmt::h526610a89386258c>
  205655:      	int3
  205656:      	int3
  205657:      	int3
  205658:      	int3
  205659:      	int3
  20565a:      	int3
  20565b:      	int3
  20565c:      	int3
  20565d:      	int3
  20565e:      	int3
  20565f:      	int3

0000000000205660 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30>:
  205660:      	pushq	%rax
  205661:      	pushq	%r15
  205663:      	pushq	%r14
  205665:      	pushq	%r11
  205667:      	pushq	%r10
  205669:      	pushq	%r9
  20566b:      	pushq	%r8
  20566d:      	pushq	%rdi
  20566e:      	pushq	%rsi
  20566f:      	pushq	%rdx
  205670:      	pushq	%rcx
  205671:      	pushq	%rbx
  205672:      	pushq	%rax
  205673:      	subq	$0x90, %rsp
  20567a:      	cld
  20567b:      	leaq	0x9486(%rip), %rax      # 0x20eb08 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x38>
  205682:      	movq	%rax, 0x18(%rsp)
  205687:      	movq	$0x1, 0x20(%rsp)
  205690:      	movq	$0x0, 0x38(%rsp)
  205699:      	leaq	0x10(%rsp), %rax
  20569e:      	movq	%rax, 0x28(%rsp)
  2056a3:      	movq	$0x0, 0x30(%rsp)
  2056ac:      	leaq	0x18(%rsp), %rdi
  2056b1:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  2056b6:      	movq	%cr2, %rax
  2056b9:      	movq	%rax, %rcx
  2056bc:      	shrq	$0x2f, %rcx
  2056c0:      	je	0x2056db <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30+0x7b>
  2056c2:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  2056c8:      	je	0x2056db <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30+0x7b>
  2056ca:      	cmpl	$0x1, %ecx
  2056cd:      	jne	0x205823 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30+0x1c3>
  2056d3:      	shlq	$0x10, %rax
  2056d7:      	sarq	$0x10, %rax
  2056db:      	leaq	0x100(%rsp), %r15
  2056e3:      	movq	%rax, 0x80(%rsp)
  2056eb:      	leaq	0x80(%rsp), %r14
  2056f3:      	movq	%r14, 0x50(%rsp)
  2056f8:      	movq	0x9be9(%rip), %rax      # 0x20f2e8
  2056ff:      	movq	%rax, 0x58(%rsp)
  205704:      	leaq	0x940d(%rip), %rax      # 0x20eb18 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x48>
  20570b:      	movq	%rax, 0x18(%rsp)
  205710:      	movq	$0x2, 0x20(%rsp)
  205719:      	movq	$0x0, 0x38(%rsp)
  205722:      	leaq	0x50(%rsp), %rbx
  205727:      	movq	%rbx, 0x28(%rsp)
  20572c:      	movq	$0x1, 0x30(%rsp)
  205735:      	leaq	0x18(%rsp), %rdi
  20573a:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  20573f:      	leaq	0xf8(%rsp), %rax
  205747:      	movq	%rax, 0x50(%rsp)
  20574c:      	leaq	-0x133(%rip), %rax      # 0x205620 <<x86_64::structures::idt::PageFaultErrorCode as core::fmt::Debug>::fmt::h216491ad187ae61a>
  205753:      	movq	%rax, 0x58(%rsp)
  205758:      	leaq	0x93d9(%rip), %rax      # 0x20eb38 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x68>
  20575f:      	movq	%rax, 0x18(%rsp)
  205764:      	movq	$0x2, 0x20(%rsp)
  20576d:      	movq	$0x0, 0x38(%rsp)
  205776:      	movq	%rbx, 0x28(%rsp)
  20577b:      	movq	$0x1, 0x30(%rsp)
  205784:      	leaq	0x18(%rsp), %rbx
  205789:      	movq	%rbx, %rdi
  20578c:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  205791:      	movq	%r15, 0x80(%rsp)
  205799:      	leaq	-0x150(%rip), %rax      # 0x205650 <<x86_64::structures::idt::InterruptStackFrame as core::fmt::Debug>::fmt::h1e6a7021fbd7da4f>
  2057a0:      	movq	%rax, 0x88(%rsp)
  2057a8:      	movq	$0x2, 0x18(%rsp)
  2057b1:      	movq	$0x2, 0x28(%rsp)
  2057ba:      	movq	$0x0, 0x38(%rsp)
  2057c3:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  2057cd:      	movq	%rax, 0x40(%rsp)
  2057d2:      	movb	$0x3, 0x48(%rsp)
  2057d7:      	leaq	0x937a(%rip), %rax      # 0x20eb58 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x88>
  2057de:      	movq	%rax, 0x50(%rsp)
  2057e3:      	movq	$0x2, 0x58(%rsp)
  2057ec:      	movq	%rbx, 0x70(%rsp)
  2057f1:      	movq	$0x1, 0x78(%rsp)
  2057fa:      	movq	%r14, 0x60(%rsp)
  2057ff:      	movq	$0x1, 0x68(%rsp)
  205808:      	leaq	0x50(%rsp), %rdi
  20580d:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  205812:      	nopw	%cs:(%rax,%rax)
  205820:      	hlt
  205821:      	jmp	0x205820 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30+0x1c0>
  205823:      	movq	%rax, 0x18(%rsp)
  205828:      	leaq	-0x4d6f(%rip), %rdi     # 0x200ac0 <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456+0xe4>
  20582f:      	leaq	0x9342(%rip), %rcx      # 0x20eb78 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0xa8>
  205836:      	leaq	0x935b(%rip), %r8       # 0x20eb98 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0xc8>
  20583d:      	leaq	0x18(%rsp), %rdx
  205842:      	movl	$0x4a, %esi
  205847:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  20584c:      	int3
  20584d:      	int3
  20584e:      	int3
  20584f:      	int3

0000000000205850 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf>:
  205850:      	pushq	%rbp
  205851:      	pushq	%r15
  205853:      	pushq	%r14
  205855:      	pushq	%r11
  205857:      	pushq	%r10
  205859:      	pushq	%r9
  20585b:      	pushq	%r8
  20585d:      	pushq	%rdi
  20585e:      	pushq	%rsi
  20585f:      	pushq	%rdx
  205860:      	pushq	%rcx
  205861:      	pushq	%rbx
  205862:      	pushq	%rax
  205863:      	subq	$0x50, %rsp
  205867:      	cld
  205868:      	movq	0x10c61(%rip), %rax     # 0x2164d0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4>
  20586f:      	testq	%rax, %rax
  205872:      	jne	0x205909 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xb9>
  205878:      	movl	$0x1, %ecx
  20587d:      	xorl	%eax, %eax
  20587f:      	lock
  205880:      	cmpxchgq	%rcx, 0x10c48(%rip)     # 0x2164d0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4>
  205888:      	jne	0x205909 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xb9>
  20588a:      	leaq	0x10c3f(%rip), %rax     # 0x2164d0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4>
  205891:      	movq	%rax, 0x10(%rsp)
  205896:      	movw	$0x1, 0x10c39(%rip)     # 0x2164d8 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x8>
  20589f:      	movb	$0x0, 0x10c34(%rip)     # 0x2164da <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xa>
  2058a6:      	movw	$0x0, 0x10c2d(%rip)     # 0x2164dc <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xc>
  2058af:      	movb	$0x0, 0x10c28(%rip)     # 0x2164de <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xe>
  2058b6:      	movb	$0x1, 0x10c23(%rip)     # 0x2164e0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x10>
  2058bd:      	movabsq	$0x100000000, %rax      # imm = 0x100000000
  2058c7:      	movq	%rax, 0x10c13(%rip)     # 0x2164e1 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x11>
  2058ce:      	movb	$0x0, 0x10c14(%rip)     # 0x2164e9 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x19>
  2058d5:      	movb	$0x0, 0x18(%rsp)
  2058da:      	movl	$0x2, %eax
  2058df:      	xchgq	%rax, 0x10bea(%rip)     # 0x2164d0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4>
  2058e6:      	leaq	0x10(%rsp), %rdi
  2058eb:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  2058f0:      	jmp	0x205919 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xc9>
  2058f2:      	nopw	%cs:(%rax,%rax)
  205900:      	pause
  205902:      	movq	0x10bc7(%rip), %rax     # 0x2164d0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4>
  205909:      	cmpq	$0x1, %rax
  20590d:      	je	0x205900 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xb0>
  20590f:      	cmpq	$0x2, %rax
  205913:      	jne	0x205fe4 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x794>
  205919:      	movb	$0x1, %cl
  20591b:      	nopl	(%rax,%rax)
  205920:      	xorl	%eax, %eax
  205922:      	lock
  205923:      	cmpxchgb	%cl, 0x10bb0(%rip)      # 0x2164da <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xa>
  20592a:      	jne	0x205932 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xe2>
  20592c:      	jmp	0x20593f <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xef>
  20592e:      	nop
  205930:      	pause
  205932:      	movzbl	0x10ba1(%rip), %eax     # 0x2164da <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xa>
  205939:      	testb	%al, %al
  20593b:      	jne	0x205930 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xe0>
  20593d:      	jmp	0x205920 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0xd0>
  20593f:      	movw	$0x60, %dx
  205943:      	inb	%dx, %al
  205944:      	movzbl	%al, %esi
  205947:      	leaq	0x10b9b(%rip), %rdi     # 0x2164e9 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x19>
  20594e:      	callq	0x208ce0 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348>
  205953:      	leal	-0x3(%rax), %ecx
  205956:      	cmpb	$0x1, %cl
  205959:      	jbe	0x205f5d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x70d>
  20595f:      	movzwl	%ax, %edx
  205962:      	shrl	$0x8, %edx
  205965:      	movzbl	%al, %esi
  205968:      	leaq	0x10b71(%rip), %rdi     # 0x2164e0 <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0x10>
  20596f:      	callq	0x204db0 <pc_keyboard::EventDecoder<L>::process_keyevent::ha429f995cdbb3700>
  205974:      	testb	$0x1, %al
  205976:      	je	0x205f5d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x70d>
  20597c:      	shrq	$0x20, %rax
  205980:      	cmpl	$0x8, %eax
  205983:      	jne	0x205a5f <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x20f>
  205989:      	movq	0x10b90(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  205990:      	testq	%rax, %rax
  205993:      	jne	0x205a19 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x1c9>
  205999:      	movl	$0x1, %ecx
  20599e:      	xorl	%eax, %eax
  2059a0:      	lock
  2059a1:      	cmpxchgq	%rcx, 0x10b77(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2059a9:      	jne	0x205a19 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x1c9>
  2059ab:      	leaq	0x10b6e(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2059b2:      	movq	%rax, 0x10(%rsp)
  2059b7:      	movq	$0x1, 0x10b2e(%rip)     # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  2059c2:      	movb	$0x0, 0x10b2f(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2059c9:      	movq	$0xb8000, 0x10b2c(%rip) # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  2059d4:      	movq	$0x0, 0x10b29(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  2059df:      	movq	$0x0, 0x10b26(%rip)     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  2059ea:      	movb	$0xd, 0x10b27(%rip)     # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  2059f1:      	movb	$0x0, 0x18(%rsp)
  2059f6:      	movl	$0x2, %eax
  2059fb:      	xchgq	%rax, 0x10b1e(%rip)     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  205a02:      	leaq	0x10(%rsp), %rdi
  205a07:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  205a0c:      	jmp	0x205a29 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x1d9>
  205a0e:      	nop
  205a10:      	pause
  205a12:      	movq	0x10b07(%rip), %rax     # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  205a19:      	cmpq	$0x1, %rax
  205a1d:      	je	0x205a10 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x1c0>
  205a1f:      	cmpq	$0x2, %rax
  205a23:      	jne	0x205fe4 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x794>
  205a29:      	movb	$0x1, %cl
  205a2b:      	nopl	(%rax,%rax)
  205a30:      	xorl	%eax, %eax
  205a32:      	lock
  205a33:      	cmpxchgb	%cl, 0x10abe(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  205a3a:      	jne	0x205a52 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x202>
  205a3c:      	jmp	0x205ada <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x28a>
  205a41:      	nopw	%cs:(%rax,%rax)
  205a50:      	pause
  205a52:      	movzbl	0x10a9f(%rip), %eax     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  205a59:      	testb	%al, %al
  205a5b:      	jne	0x205a50 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x200>
  205a5d:      	jmp	0x205a30 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x1e0>
  205a5f:      	movl	%eax, 0xc(%rsp)
  205a63:      	leal	-0x61(%rax), %ecx
  205a66:      	cmpl	$0x1a, %ecx
  205a69:      	jae	0x205b8d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x33d>
  205a6f:      	leaq	0xfa02(%rip), %rdi      # 0x215478 <<kernel::interuptions::cmd as core::ops::deref::Deref>::deref::__stability::LAZY::h50f976f060b25af1>
  205a76:      	callq	0x207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>
  205a7b:      	movq	%rax, %rdi
  205a7e:      	movq	%rax, %r15
  205a81:      	movb	$0x1, %cl
  205a83:      	xorl	%eax, %eax
  205a85:      	lock
  205a86:      	cmpxchgb	%cl, (%rdi)
  205a89:      	jne	0x205a92 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x242>
  205a8b:      	jmp	0x205aa3 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x253>
  205a8d:      	nopl	(%rax)
  205a90:      	pause
  205a92:      	movzbl	(%r15), %eax
  205a96:      	testb	%al, %al
  205a98:      	jne	0x205a90 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x240>
  205a9a:      	xorl	%eax, %eax
  205a9c:      	lock
  205a9d:      	cmpxchgb	%cl, (%r15)
  205aa1:      	jne	0x205a92 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x242>
  205aa3:      	addq	$0x8, %rdi
  205aa7:      	movl	0xc(%rsp), %ebp
  205aab:      	cmpl	$0x80, %ebp
  205ab1:      	jae	0x205c0a <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x3ba>
  205ab7:      	movq	0x18(%r15), %rbx
  205abb:      	cmpq	0x8(%r15), %rbx
  205abf:      	jne	0x205ac6 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x276>
  205ac1:      	callq	0x206700 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c>
  205ac6:      	movq	0x10(%r15), %rax
  205aca:      	movb	%bpl, (%rax,%rbx)
  205ace:      	incq	%rbx
  205ad1:      	movq	%rbx, 0x18(%r15)
  205ad5:      	jmp	0x205dea <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x59a>
  205ada:      	movq	0x10a27(%rip), %rax     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  205ae1:      	decq	%rax
  205ae4:      	cmpq	$0x4e, %rax
  205ae8:      	ja	0x205b1a <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x2ca>
  205aea:      	movq	0x10a1f(%rip), %rdi     # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  205af1:      	cmpq	$0x19, %rdi
  205af5:      	jae	0x206019 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x7c9>
  205afb:      	leaq	(%rdi,%rdi,4), %rcx
  205aff:      	shlq	$0x5, %rcx
  205b03:      	addq	0x109f6(%rip), %rcx     # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  205b0a:      	movb	$0x20, (%rcx,%rax,2)
  205b0e:      	movb	$0x4, 0x1(%rcx,%rax,2)
  205b13:      	movq	%rax, 0x109ee(%rip)     # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  205b1a:      	movb	$0x0, 0x109d7(%rip)     # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  205b21:      	leaq	0xf950(%rip), %rdi      # 0x215478 <<kernel::interuptions::cmd as core::ops::deref::Deref>::deref::__stability::LAZY::h50f976f060b25af1>
  205b28:      	callq	0x207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>
  205b2d:      	movq	%rax, %rcx
  205b30:      	movb	$0x1, %dl
  205b32:      	nopw	%cs:(%rax,%rax)
  205b40:      	xorl	%eax, %eax
  205b42:      	lock
  205b43:      	cmpxchgb	%dl, (%rcx)
  205b46:      	jne	0x205b52 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x302>
  205b48:      	jmp	0x205b5b <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x30b>
  205b4a:      	nopw	(%rax,%rax)
  205b50:      	pause
  205b52:      	movzbl	(%rcx), %eax
  205b55:      	testb	%al, %al
  205b57:      	jne	0x205b50 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x300>
  205b59:      	jmp	0x205b40 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x2f0>
  205b5b:      	movq	0x18(%rcx), %rax
  205b5f:      	testq	%rax, %rax
  205b62:      	je	0x205b85 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x335>
  205b64:      	movq	0x10(%rcx), %r8
  205b68:      	movzbl	-0x1(%r8,%rax), %esi
  205b6e:      	movq	$-0x1, %rdx
  205b75:      	testb	%sil, %sil
  205b78:      	js	0x205c38 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x3e8>
  205b7e:      	addq	%rax, %rdx
  205b81:      	movq	%rdx, 0x18(%rcx)
  205b85:      	movb	$0x0, (%rcx)
  205b88:      	jmp	0x205f5d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x70d>
  205b8d:      	cmpl	$0xa, %eax
  205b90:      	je	0x205c6d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x41d>
  205b96:      	cmpl	$0x20, %eax
  205b99:      	jne	0x205f5d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x70d>
  205b9f:      	leaq	0xf8d2(%rip), %rdi      # 0x215478 <<kernel::interuptions::cmd as core::ops::deref::Deref>::deref::__stability::LAZY::h50f976f060b25af1>
  205ba6:      	callq	0x207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>
  205bab:      	movq	%rax, %rdi
  205bae:      	movq	%rax, %r15
  205bb1:      	movb	$0x1, %cl
  205bb3:      	xorl	%eax, %eax
  205bb5:      	lock
  205bb6:      	cmpxchgb	%cl, (%rdi)
  205bb9:      	jne	0x205bc2 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x372>
  205bbb:      	jmp	0x205bd3 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x383>
  205bbd:      	nopl	(%rax)
  205bc0:      	pause
  205bc2:      	movzbl	(%r15), %eax
  205bc6:      	testb	%al, %al
  205bc8:      	jne	0x205bc0 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x370>
  205bca:      	xorl	%eax, %eax
  205bcc:      	lock
  205bcd:      	cmpxchgb	%cl, (%r15)
  205bd1:      	jne	0x205bc2 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x372>
  205bd3:      	addq	$0x8, %rdi
  205bd7:      	movl	0xc(%rsp), %ebp
  205bdb:      	cmpl	$0x80, %ebp
  205be1:      	jae	0x205d53 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x503>
  205be7:      	movq	0x18(%r15), %rbx
  205beb:      	cmpq	0x8(%r15), %rbx
  205bef:      	jne	0x205bf6 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x3a6>
  205bf1:      	callq	0x206700 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c>
  205bf6:      	movq	0x10(%r15), %rax
  205bfa:      	movb	%bpl, (%rax,%rbx)
  205bfe:      	incq	%rbx
  205c01:      	movq	%rbx, 0x18(%r15)
  205c05:      	jmp	0x205f1f <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x6cf>
  205c0a:      	movl	$0x0, 0x10(%rsp)
  205c12:      	movl	%ebp, %eax
  205c14:      	cmpl	$0x800, %ebp            # imm = 0x800
  205c1a:      	jae	0x205d21 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4d1>
  205c20:      	shrl	$0x6, %eax
  205c23:      	orb	$-0x40, %al
  205c25:      	movb	%al, 0x10(%rsp)
  205c29:      	movl	$0x2, %ebx
  205c2e:      	movl	$0x1, %eax
  205c33:      	jmp	0x205dae <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x55e>
  205c38:      	movzbl	-0x2(%r8,%rax), %edi
  205c3e:      	cmpb	$-0x41, %dil
  205c42:      	jg	0x205d4b <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4fb>
  205c48:      	movzbl	-0x3(%r8,%rax), %ebx
  205c4e:      	cmpb	$-0x40, %bl
  205c51:      	jge	0x205e3a <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x5ea>
  205c57:      	movzbl	-0x4(%r8,%rax), %ebp
  205c5d:      	andl	$0x7, %ebp
  205c60:      	shll	$0x6, %ebp
  205c63:      	andl	$0x3f, %ebx
  205c66:      	orl	%ebp, %ebx
  205c68:      	jmp	0x205e3d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x5ed>
  205c6d:      	leaq	0xf804(%rip), %rdi      # 0x215478 <<kernel::interuptions::cmd as core::ops::deref::Deref>::deref::__stability::LAZY::h50f976f060b25af1>
  205c74:      	callq	0x207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>
  205c79:      	movq	%rax, %rbx
  205c7c:      	movb	$0x1, %bpl
  205c7f:      	nop
  205c80:      	xorl	%eax, %eax
  205c82:      	lock
  205c83:      	cmpxchgb	%bpl, (%rbx)
  205c87:      	jne	0x205c92 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x442>
  205c89:      	jmp	0x205c9b <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x44b>
  205c8b:      	nopl	(%rax,%rax)
  205c90:      	pause
  205c92:      	movzbl	(%rbx), %eax
  205c95:      	testb	%al, %al
  205c97:      	jne	0x205c90 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x440>
  205c99:      	jmp	0x205c80 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x430>
  205c9b:      	movq	%rbx, %rdi
  205c9e:      	addq	$0x8, %rdi
  205ca2:      	callq	0x2040c0 <kernel::cmd_handler::handle_cmd::hfab621ccf1208838>
  205ca7:      	movb	$0x0, (%rbx)
  205caa:      	leaq	0x8f0f(%rip), %rax      # 0x20ebc0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0xf0>
  205cb1:      	movq	%rax, 0x10(%rsp)
  205cb6:      	movq	$0x1, 0x18(%rsp)
  205cbf:      	movq	$0x0, 0x30(%rsp)
  205cc8:      	movq	$0x8, 0x20(%rsp)
  205cd1:      	movq	$0x0, 0x28(%rsp)
  205cda:      	leaq	0x10(%rsp), %rdi
  205cdf:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  205ce4:      	leaq	0xf78d(%rip), %rdi      # 0x215478 <<kernel::interuptions::cmd as core::ops::deref::Deref>::deref::__stability::LAZY::h50f976f060b25af1>
  205ceb:      	callq	0x207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>
  205cf0:      	movq	%rax, %rcx
  205cf3:      	xorl	%eax, %eax
  205cf5:      	lock
  205cf6:      	cmpxchgb	%bpl, (%rcx)
  205cfa:      	je	0x205d11 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4c1>
  205cfc:      	movb	$0x1, %dl
  205cfe:      	jmp	0x205d02 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4b2>
  205d00:      	pause
  205d02:      	movzbl	(%rcx), %eax
  205d05:      	testb	%al, %al
  205d07:      	jne	0x205d00 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4b0>
  205d09:      	xorl	%eax, %eax
  205d0b:      	lock
  205d0c:      	cmpxchgb	%dl, (%rcx)
  205d0f:      	jne	0x205d02 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x4b2>
  205d11:      	movq	$0x0, 0x18(%rcx)
  205d19:      	movb	$0x0, (%rcx)
  205d1c:      	jmp	0x205f5d <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x70d>
  205d21:      	cmpl	$0x10000, %ebp          # imm = 0x10000
  205d27:      	jae	0x205d81 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x531>
  205d29:      	shrl	$0xc, %eax
  205d2c:      	orb	$-0x20, %al
  205d2e:      	movb	%al, 0x10(%rsp)
  205d32:      	movl	%ebp, %eax
  205d34:      	shrl	$0x6, %eax
  205d37:      	andb	$0x3f, %al
  205d39:      	orb	$-0x80, %al
  205d3b:      	movb	%al, 0x11(%rsp)
  205d3f:      	movl	$0x3, %ebx
  205d44:      	movl	$0x2, %eax
  205d49:      	jmp	0x205dae <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x55e>
  205d4b:      	andl	$0x1f, %edi
  205d4e:      	jmp	0x205e45 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x5f5>
  205d53:      	movl	$0x0, 0x10(%rsp)
  205d5b:      	movl	%ebp, %eax
  205d5d:      	cmpl	$0x800, %ebp            # imm = 0x800
  205d63:      	jae	0x205e8c <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x63c>
  205d69:      	shrl	$0x6, %eax
  205d6c:      	orb	$-0x40, %al
  205d6e:      	movb	%al, 0x10(%rsp)
  205d72:      	movl	$0x2, %ebx
  205d77:      	movl	$0x1, %eax
  205d7c:      	jmp	0x205ee3 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x693>
  205d81:      	shrl	$0x12, %eax
  205d84:      	orb	$-0x10, %al
  205d86:      	movb	%al, 0x10(%rsp)
  205d8a:      	movl	%ebp, %eax
  205d8c:      	shrl	$0xc, %eax
  205d8f:      	andb	$0x3f, %al
  205d91:      	orb	$-0x80, %al
  205d93:      	movb	%al, 0x11(%rsp)
  205d97:      	movl	%ebp, %eax
  205d99:      	shrl	$0x6, %eax
  205d9c:      	andb	$0x3f, %al
  205d9e:      	orb	$-0x80, %al
  205da0:      	movb	%al, 0x12(%rsp)
  205da4:      	movl	$0x4, %ebx
  205da9:      	movl	$0x3, %eax
  205dae:      	andb	$0x3f, %bpl
  205db2:      	orb	$-0x80, %bpl
  205db6:      	movb	%bpl, 0x10(%rsp,%rax)
  205dbb:      	movq	0x8(%r15), %rax
  205dbf:      	movq	0x18(%r15), %r14
  205dc3:      	subq	%r14, %rax
  205dc6:      	cmpq	%rbx, %rax
  205dc9:      	jb	0x205fbc <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x76c>
  205dcf:      	movq	0x10(%r15), %rdi
  205dd3:      	addq	%r14, %rdi
  205dd6:      	leaq	0x10(%rsp), %rsi
  205ddb:      	movq	%rbx, %rdx
  205dde:      	callq	0x20d7d0 <memcpy>
  205de3:      	addq	%rbx, %r14
  205de6:      	movq	%r14, 0x18(%r15)
  205dea:      	movb	$0x0, (%r15)
  205dee:      	leaq	0xc(%rsp), %rax
  205df3:      	movq	%rax, 0x40(%rsp)
  205df8:      	movq	0x94f1(%rip), %rax      # 0x20f2f0
  205dff:      	movq	%rax, 0x48(%rsp)
  205e04:      	leaq	-0x5803(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  205e0b:      	movq	%rax, 0x10(%rsp)
  205e10:      	movq	$0x1, 0x18(%rsp)
  205e19:      	movq	$0x0, 0x30(%rsp)
  205e22:      	leaq	0x40(%rsp), %rax
  205e27:      	movq	%rax, 0x20(%rsp)
  205e2c:      	movq	$0x1, 0x28(%rsp)
  205e35:      	jmp	0x205f53 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x703>
  205e3a:      	andl	$0xf, %ebx
  205e3d:      	shll	$0x6, %ebx
  205e40:      	andl	$0x3f, %edi
  205e43:      	orl	%ebx, %edi
  205e45:      	shll	$0x6, %edi
  205e48:      	andl	$0x3f, %esi
  205e4b:      	orl	%edi, %esi
  205e4d:      	cmpl	$0x110000, %esi         # imm = 0x110000
  205e53:      	je	0x205b85 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x335>
  205e59:      	cmpl	$0x80, %esi
  205e5f:      	jb	0x205b7e <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x32e>
  205e65:      	movq	$-0x2, %rdx
  205e6c:      	cmpl	$0x800, %esi            # imm = 0x800
  205e72:      	jb	0x205b7e <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x32e>
  205e78:      	xorl	%edx, %edx
  205e7a:      	cmpl	$0x10000, %esi          # imm = 0x10000
  205e80:      	setb	%dl
  205e83:      	orq	$-0x4, %rdx
  205e87:      	jmp	0x205b7e <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x32e>
  205e8c:      	cmpl	$0x10000, %ebp          # imm = 0x10000
  205e92:      	jae	0x205eb6 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x666>
  205e94:      	shrl	$0xc, %eax
  205e97:      	orb	$-0x20, %al
  205e99:      	movb	%al, 0x10(%rsp)
  205e9d:      	movl	%ebp, %eax
  205e9f:      	shrl	$0x6, %eax
  205ea2:      	andb	$0x3f, %al
  205ea4:      	orb	$-0x80, %al
  205ea6:      	movb	%al, 0x11(%rsp)
  205eaa:      	movl	$0x3, %ebx
  205eaf:      	movl	$0x2, %eax
  205eb4:      	jmp	0x205ee3 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x693>
  205eb6:      	shrl	$0x12, %eax
  205eb9:      	orb	$-0x10, %al
  205ebb:      	movb	%al, 0x10(%rsp)
  205ebf:      	movl	%ebp, %eax
  205ec1:      	shrl	$0xc, %eax
  205ec4:      	andb	$0x3f, %al
  205ec6:      	orb	$-0x80, %al
  205ec8:      	movb	%al, 0x11(%rsp)
  205ecc:      	movl	%ebp, %eax
  205ece:      	shrl	$0x6, %eax
  205ed1:      	andb	$0x3f, %al
  205ed3:      	orb	$-0x80, %al
  205ed5:      	movb	%al, 0x12(%rsp)
  205ed9:      	movl	$0x4, %ebx
  205ede:      	movl	$0x3, %eax
  205ee3:      	andb	$0x3f, %bpl
  205ee7:      	orb	$-0x80, %bpl
  205eeb:      	movb	%bpl, 0x10(%rsp,%rax)
  205ef0:      	movq	0x8(%r15), %rax
  205ef4:      	movq	0x18(%r15), %r14
  205ef8:      	subq	%r14, %rax
  205efb:      	cmpq	%rbx, %rax
  205efe:      	jb	0x205fd0 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x780>
  205f04:      	movq	0x10(%r15), %rdi
  205f08:      	addq	%r14, %rdi
  205f0b:      	leaq	0x10(%rsp), %rsi
  205f10:      	movq	%rbx, %rdx
  205f13:      	callq	0x20d7d0 <memcpy>
  205f18:      	addq	%rbx, %r14
  205f1b:      	movq	%r14, 0x18(%r15)
  205f1f:      	movb	$0x0, (%r15)
  205f23:      	leaq	0x8c86(%rip), %rax      # 0x20ebb0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0xe0>
  205f2a:      	movq	%rax, 0x10(%rsp)
  205f2f:      	movq	$0x1, 0x18(%rsp)
  205f38:      	movq	$0x0, 0x30(%rsp)
  205f41:      	movq	$0x8, 0x20(%rsp)
  205f4a:      	movq	$0x0, 0x28(%rsp)
  205f53:      	leaq	0x10(%rsp), %rdi
  205f58:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  205f5d:      	movq	0x9374(%rip), %rbx      # 0x20f2d8
  205f64:      	movb	$0x1, %cl
  205f66:      	nopw	%cs:(%rax,%rax)
  205f70:      	xorl	%eax, %eax
  205f72:      	lock
  205f73:      	cmpxchgb	%cl, (%rbx)
  205f76:      	jne	0x205f82 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x732>
  205f78:      	jmp	0x205f8b <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x73b>
  205f7a:      	nopw	(%rax,%rax)
  205f80:      	pause
  205f82:      	movzbl	(%rbx), %eax
  205f85:      	testb	%al, %al
  205f87:      	jne	0x205f80 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x730>
  205f89:      	jmp	0x205f70 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x720>
  205f8b:      	leaq	0x2(%rbx), %rdi
  205f8f:      	movl	$0x21, %esi
  205f94:      	callq	0x209b70 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931>
  205f99:      	movb	$0x0, (%rbx)
  205f9c:      	movb	$0x0, 0x10537(%rip)     # 0x2164da <<kernel::interuptions::keyboard_interrupt_handler::KEYBOARD as core::ops::deref::Deref>::deref::__stability::LAZY::h36fd4df0bee95ed4+0xa>
  205fa3:      	addq	$0x50, %rsp
  205fa7:      	popq	%rax
  205fa8:      	popq	%rbx
  205fa9:      	popq	%rcx
  205faa:      	popq	%rdx
  205fab:      	popq	%rsi
  205fac:      	popq	%rdi
  205fad:      	popq	%r8
  205faf:      	popq	%r9
  205fb1:      	popq	%r10
  205fb3:      	popq	%r11
  205fb5:      	popq	%r14
  205fb7:      	popq	%r15
  205fb9:      	popq	%rbp
  205fba:      	iretq
  205fbc:      	movq	%r14, %rsi
  205fbf:      	movq	%rbx, %rdx
  205fc2:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  205fc7:      	movq	0x18(%r15), %r14
  205fcb:      	jmp	0x205dcf <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x57f>
  205fd0:      	movq	%r14, %rsi
  205fd3:      	movq	%rbx, %rdx
  205fd6:      	callq	0x206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>
  205fdb:      	movq	0x18(%r15), %r14
  205fdf:      	jmp	0x205f04 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x6b4>
  205fe4:      	testq	%rax, %rax
  205fe7:      	jne	0x206001 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf+0x7b1>
  205fe9:      	leaq	-0x5463(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  205ff0:      	leaq	0x8cb9(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  205ff7:      	movl	$0x28, %esi
  205ffc:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  206001:      	leaq	-0x53f8(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  206008:      	leaq	0x8cb9(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  20600f:      	movl	$0x11, %esi
  206014:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  206019:      	leaq	0x8c78(%rip), %rdx      # 0x20ec98 <anon.b09cb26d78f32e98471514fe06be8a95.7.llvm.14001740393075564532>
  206020:      	movl	$0x19, %esi
  206025:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  20602a:      	int3
  20602b:      	int3
  20602c:      	int3
  20602d:      	int3
  20602e:      	int3
  20602f:      	int3

0000000000206030 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117>:
  206030:      	pushq	%r11
  206032:      	pushq	%r10
  206034:      	pushq	%r9
  206036:      	pushq	%r8
  206038:      	pushq	%rdi
  206039:      	pushq	%rsi
  20603a:      	pushq	%rdx
  20603b:      	pushq	%rcx
  20603c:      	pushq	%rbx
  20603d:      	pushq	%rax
  20603e:      	pushq	%rax
  20603f:      	cld
  206040:      	movq	0x9291(%rip), %rbx      # 0x20f2d8
  206047:      	movb	$0x1, %cl
  206049:      	nopl	(%rax)
  206050:      	xorl	%eax, %eax
  206052:      	lock
  206053:      	cmpxchgb	%cl, (%rbx)
  206056:      	jne	0x206062 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117+0x32>
  206058:      	jmp	0x20606b <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117+0x3b>
  20605a:      	nopw	(%rax,%rax)
  206060:      	pause
  206062:      	movzbl	(%rbx), %eax
  206065:      	testb	%al, %al
  206067:      	jne	0x206060 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117+0x30>
  206069:      	jmp	0x206050 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117+0x20>
  20606b:      	leaq	0x2(%rbx), %rdi
  20606f:      	movl	$0x20, %esi
  206074:      	callq	0x209b70 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931>
  206079:      	movb	$0x0, (%rbx)
  20607c:      	addq	$0x8, %rsp
  206080:      	popq	%rax
  206081:      	popq	%rbx
  206082:      	popq	%rcx
  206083:      	popq	%rdx
  206084:      	popq	%rsi
  206085:      	popq	%rdi
  206086:      	popq	%r8
  206088:      	popq	%r9
  20608a:      	popq	%r10
  20608c:      	popq	%r11
  20608e:      	iretq

0000000000206090 <kernel::interuptions::breakpoint_handler::he578ba234a698531>:
  206090:      	pushq	%r11
  206092:      	pushq	%r10
  206094:      	pushq	%r9
  206096:      	pushq	%r8
  206098:      	pushq	%rdi
  206099:      	pushq	%rsi
  20609a:      	pushq	%rdx
  20609b:      	pushq	%rcx
  20609c:      	pushq	%rax
  20609d:      	subq	$0x80, %rsp
  2060a4:      	cld
  2060a5:      	leaq	0xc8(%rsp), %rax
  2060ad:      	movq	%rax, 0x8(%rsp)
  2060b2:      	leaq	-0xa69(%rip), %rax      # 0x205650 <<x86_64::structures::idt::InterruptStackFrame as core::fmt::Debug>::fmt::h1e6a7021fbd7da4f>
  2060b9:      	movq	%rax, 0x10(%rsp)
  2060be:      	movq	$0x2, 0x48(%rsp)
  2060c7:      	movq	$0x2, 0x58(%rsp)
  2060d0:      	movq	$0x0, 0x68(%rsp)
  2060d9:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  2060e3:      	movq	%rax, 0x70(%rsp)
  2060e8:      	movb	$0x3, 0x78(%rsp)
  2060ed:      	leaq	0x8adc(%rip), %rax      # 0x20ebd0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x100>
  2060f4:      	movq	%rax, 0x18(%rsp)
  2060f9:      	movq	$0x2, 0x20(%rsp)
  206102:      	leaq	0x48(%rsp), %rax
  206107:      	movq	%rax, 0x38(%rsp)
  20610c:      	movq	$0x1, 0x40(%rsp)
  206115:      	leaq	0x8(%rsp), %rax
  20611a:      	movq	%rax, 0x28(%rsp)
  20611f:      	movq	$0x1, 0x30(%rsp)
  206128:      	leaq	0x18(%rsp), %rdi
  20612d:      	callq	0x2067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>
  206132:      	addq	$0x80, %rsp
  206139:      	popq	%rax
  20613a:      	popq	%rcx
  20613b:      	popq	%rdx
  20613c:      	popq	%rsi
  20613d:      	popq	%rdi
  20613e:      	popq	%r8
  206140:      	popq	%r9
  206142:      	popq	%r10
  206144:      	popq	%r11
  206146:      	iretq
  206148:      	int3
  206149:      	int3
  20614a:      	int3
  20614b:      	int3
  20614c:      	int3
  20614d:      	int3
  20614e:      	int3
  20614f:      	int3

0000000000206150 <kernel::interuptions::double_fault_handler::h58ca4dfb1afb4aa9>:
  206150:      	pushq	%rax
  206151:      	pushq	%r11
  206153:      	pushq	%r10
  206155:      	pushq	%r9
  206157:      	pushq	%r8
  206159:      	pushq	%rdi
  20615a:      	pushq	%rsi
  20615b:      	pushq	%rdx
  20615c:      	pushq	%rcx
  20615d:      	pushq	%rax
  20615e:      	subq	$0x88, %rsp
  206165:      	cld
  206166:      	leaq	0xe0(%rsp), %rax
  20616e:      	movq	%rax, 0x10(%rsp)
  206173:      	leaq	-0xb2a(%rip), %rax      # 0x205650 <<x86_64::structures::idt::InterruptStackFrame as core::fmt::Debug>::fmt::h1e6a7021fbd7da4f>
  20617a:      	movq	%rax, 0x18(%rsp)
  20617f:      	movq	$0x2, 0x50(%rsp)
  206188:      	movq	$0x2, 0x60(%rsp)
  206191:      	movq	$0x0, 0x70(%rsp)
  20619a:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  2061a4:      	movq	%rax, 0x78(%rsp)
  2061a9:      	movb	$0x3, 0x80(%rsp)
  2061b1:      	leaq	0x8a38(%rip), %rax      # 0x20ebf0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x120>
  2061b8:      	movq	%rax, 0x20(%rsp)
  2061bd:      	movq	$0x1, 0x28(%rsp)
  2061c6:      	leaq	0x50(%rsp), %rax
  2061cb:      	movq	%rax, 0x40(%rsp)
  2061d0:      	movq	$0x1, 0x48(%rsp)
  2061d9:      	leaq	0x10(%rsp), %rax
  2061de:      	movq	%rax, 0x30(%rsp)
  2061e3:      	movq	$0x1, 0x38(%rsp)
  2061ec:      	leaq	0x8a0d(%rip), %rsi      # 0x20ec00 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456+0x130>
  2061f3:      	leaq	0x20(%rsp), %rdi
  2061f8:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  2061fd:      	int3
  2061fe:      	int3
  2061ff:      	int3

0000000000206200 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532>:
  206200:      	pushq	%rbx
  206201:      	subq	$0x10, %rsp
  206205:      	movl	$0x0, 0xc(%rsp)
  20620d:      	cmpl	$0x80, %esi
  206213:      	jae	0x20621f <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1f>
  206215:      	movb	%sil, 0xc(%rsp)
  20621a:      	xorl	%r10d, %r10d
  20621d:      	jmp	0x206243 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x43>
  20621f:      	movl	%esi, %eax
  206221:      	cmpl	$0x800, %esi            # imm = 0x800
  206227:      	jae	0x206341 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x141>
  20622d:      	shrl	$0x6, %eax
  206230:      	orb	$-0x40, %al
  206232:      	movb	%al, 0xc(%rsp)
  206236:      	movl	%esi, %eax
  206238:      	andb	$0x3f, %al
  20623a:      	orb	$-0x80, %al
  20623c:      	movb	%al, 0xd(%rsp)
  206240:      	movb	$0x1, %r10b
  206243:      	xorl	%r9d, %r9d
  206246:      	movzbl	0x18(%rdi), %ecx
  20624a:      	movq	(%rdi), %rdx
  20624d:      	movq	0x8(%rdi), %r8
  206251:      	movq	0x10(%rdi), %rax
  206255:      	movzbl	0xc(%rsp), %r11d
  20625b:      	cmpb	$0x1f, %r11b
  20625f:      	jbe	0x206297 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x97>
  206261:      	cmpb	$0x7e, %r11b
  206265:      	ja	0x2062bb <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xbb>
  206267:      	cmpq	$0x50, %r8
  20626b:      	jb	0x206277 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x77>
  20626d:      	incq	%rax
  206270:      	movq	%rax, 0x10(%rdi)
  206274:      	xorl	%r8d, %r8d
  206277:      	cmpq	$0x19, %rax
  20627b:      	jae	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  206281:      	leaq	(%rax,%rax,4), %rbx
  206285:      	shlq	$0x5, %rbx
  206289:      	addq	%rdx, %rbx
  20628c:      	movb	%r11b, (%rbx,%r8,2)
  206290:      	movb	%cl, 0x1(%rbx,%r8,2)
  206295:      	jmp	0x2062ea <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xea>
  206297:      	cmpb	$0xa, %r11b
  20629b:      	jne	0x2062bb <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xbb>
  20629d:      	incq	%rax
  2062a0:      	movq	%rax, 0x10(%rdi)
  2062a4:      	xorl	%r8d, %r8d
  2062a7:      	movq	%r8, 0x8(%rdi)
  2062ab:      	cmpl	$0x80, %esi
  2062b1:      	jae	0x2062f9 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xf9>
  2062b3:      	xorl	%eax, %eax
  2062b5:      	addq	$0x10, %rsp
  2062b9:      	popq	%rbx
  2062ba:      	retq
  2062bb:      	cmpq	$0x50, %r8
  2062bf:      	jb	0x2062cb <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xcb>
  2062c1:      	incq	%rax
  2062c4:      	movq	%rax, 0x10(%rdi)
  2062c8:      	xorl	%r8d, %r8d
  2062cb:      	cmpq	$0x19, %rax
  2062cf:      	jae	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  2062d5:      	leaq	(%rax,%rax,4), %r11
  2062d9:      	shlq	$0x5, %r11
  2062dd:      	addq	%rdx, %r11
  2062e0:      	movb	$-0x2, (%r11,%r8,2)
  2062e5:      	movb	%cl, 0x1(%r11,%r8,2)
  2062ea:      	incq	%r8
  2062ed:      	movq	%r8, 0x8(%rdi)
  2062f1:      	cmpl	$0x80, %esi
  2062f7:      	jb	0x2062b3 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xb3>
  2062f9:      	movzbl	0xd(%rsp), %esi
  2062fe:      	cmpb	$0x1f, %sil
  206302:      	jbe	0x206378 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x178>
  206304:      	cmpb	$0x7f, %sil
  206308:      	jae	0x206397 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x197>
  20630e:      	cmpq	$0x50, %r8
  206312:      	jb	0x20631e <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x11e>
  206314:      	incq	%rax
  206317:      	movq	%rax, 0x10(%rdi)
  20631b:      	xorl	%r8d, %r8d
  20631e:      	cmpq	$0x18, %rax
  206322:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  206328:      	leaq	(%rax,%rax,4), %r11
  20632c:      	shlq	$0x5, %r11
  206330:      	addq	%rdx, %r11
  206333:      	movb	%sil, (%r11,%r8,2)
  206337:      	movb	%cl, 0x1(%r11,%r8,2)
  20633c:      	jmp	0x2063c6 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1c6>
  206341:      	cmpl	$0x10000, %esi          # imm = 0x10000
  206347:      	jae	0x20641e <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x21e>
  20634d:      	shrl	$0xc, %eax
  206350:      	orb	$-0x20, %al
  206352:      	movb	%al, 0xc(%rsp)
  206356:      	movl	%esi, %eax
  206358:      	shrl	$0x6, %eax
  20635b:      	andb	$0x3f, %al
  20635d:      	orb	$-0x80, %al
  20635f:      	movb	%al, 0xd(%rsp)
  206363:      	movl	%esi, %eax
  206365:      	andb	$0x3f, %al
  206367:      	orb	$-0x80, %al
  206369:      	movb	%al, 0xe(%rsp)
  20636d:      	movb	$0x1, %r9b
  206370:      	xorl	%r10d, %r10d
  206373:      	jmp	0x206246 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x46>
  206378:      	cmpb	$0xa, %sil
  20637c:      	jne	0x206397 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x197>
  20637e:      	incq	%rax
  206381:      	movq	%rax, 0x10(%rdi)
  206385:      	xorl	%r8d, %r8d
  206388:      	movq	%r8, 0x8(%rdi)
  20638c:      	testb	%r10b, %r10b
  20638f:      	jne	0x2062b3 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xb3>
  206395:      	jmp	0x2063d6 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1d6>
  206397:      	cmpq	$0x50, %r8
  20639b:      	jb	0x2063a7 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1a7>
  20639d:      	incq	%rax
  2063a0:      	movq	%rax, 0x10(%rdi)
  2063a4:      	xorl	%r8d, %r8d
  2063a7:      	cmpq	$0x18, %rax
  2063ab:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  2063b1:      	leaq	(%rax,%rax,4), %rsi
  2063b5:      	shlq	$0x5, %rsi
  2063b9:      	addq	%rdx, %rsi
  2063bc:      	movb	$-0x2, (%rsi,%r8,2)
  2063c1:      	movb	%cl, 0x1(%rsi,%r8,2)
  2063c6:      	incq	%r8
  2063c9:      	movq	%r8, 0x8(%rdi)
  2063cd:      	testb	%r10b, %r10b
  2063d0:      	jne	0x2062b3 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xb3>
  2063d6:      	movzbl	0xe(%rsp), %esi
  2063db:      	cmpb	$0x1f, %sil
  2063df:      	jbe	0x206452 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x252>
  2063e1:      	cmpb	$0x7f, %sil
  2063e5:      	jae	0x206471 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x271>
  2063eb:      	cmpq	$0x50, %r8
  2063ef:      	jb	0x2063fb <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1fb>
  2063f1:      	incq	%rax
  2063f4:      	movq	%rax, 0x10(%rdi)
  2063f8:      	xorl	%r8d, %r8d
  2063fb:      	cmpq	$0x18, %rax
  2063ff:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  206405:      	leaq	(%rax,%rax,4), %r10
  206409:      	shlq	$0x5, %r10
  20640d:      	addq	%rdx, %r10
  206410:      	movb	%sil, (%r10,%r8,2)
  206414:      	movb	%cl, 0x1(%r10,%r8,2)
  206419:      	jmp	0x2064a0 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2a0>
  20641e:      	shrl	$0x12, %eax
  206421:      	andb	$0x7, %al
  206423:      	orb	$-0x10, %al
  206425:      	movb	%al, 0xc(%rsp)
  206429:      	movl	%esi, %eax
  20642b:      	shrl	$0xc, %eax
  20642e:      	andb	$0x3f, %al
  206430:      	orb	$-0x80, %al
  206432:      	movb	%al, 0xd(%rsp)
  206436:      	movl	%esi, %eax
  206438:      	shrl	$0x6, %eax
  20643b:      	andb	$0x3f, %al
  20643d:      	orb	$-0x80, %al
  20643f:      	movb	%al, 0xe(%rsp)
  206443:      	movl	%esi, %eax
  206445:      	andb	$0x3f, %al
  206447:      	orb	$-0x80, %al
  206449:      	movb	%al, 0xf(%rsp)
  20644d:      	jmp	0x20621a <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x1a>
  206452:      	cmpb	$0xa, %sil
  206456:      	jne	0x206471 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x271>
  206458:      	incq	%rax
  20645b:      	movq	%rax, 0x10(%rdi)
  20645f:      	xorl	%r8d, %r8d
  206462:      	movq	%r8, 0x8(%rdi)
  206466:      	testb	%r9b, %r9b
  206469:      	jne	0x2062b3 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xb3>
  20646f:      	jmp	0x2064b0 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2b0>
  206471:      	cmpq	$0x50, %r8
  206475:      	jb	0x206481 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x281>
  206477:      	incq	%rax
  20647a:      	movq	%rax, 0x10(%rdi)
  20647e:      	xorl	%r8d, %r8d
  206481:      	cmpq	$0x18, %rax
  206485:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  20648b:      	leaq	(%rax,%rax,4), %rsi
  20648f:      	shlq	$0x5, %rsi
  206493:      	addq	%rdx, %rsi
  206496:      	movb	$-0x2, (%rsi,%r8,2)
  20649b:      	movb	%cl, 0x1(%rsi,%r8,2)
  2064a0:      	incq	%r8
  2064a3:      	movq	%r8, 0x8(%rdi)
  2064a7:      	testb	%r9b, %r9b
  2064aa:      	jne	0x2062b3 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0xb3>
  2064b0:      	movzbl	0xf(%rsp), %esi
  2064b5:      	cmpb	$0x1f, %sil
  2064b9:      	jbe	0x2064e8 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2e8>
  2064bb:      	cmpb	$0x7f, %sil
  2064bf:      	jae	0x2064fa <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2fa>
  2064c1:      	cmpq	$0x50, %r8
  2064c5:      	jb	0x2064d1 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2d1>
  2064c7:      	incq	%rax
  2064ca:      	movq	%rax, 0x10(%rdi)
  2064ce:      	xorl	%r8d, %r8d
  2064d1:      	cmpq	$0x18, %rax
  2064d5:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  2064d7:      	leaq	(%rax,%rax,4), %rax
  2064db:      	shlq	$0x5, %rax
  2064df:      	addq	%rax, %rdx
  2064e2:      	movb	%sil, (%rdx,%r8,2)
  2064e6:      	jmp	0x206520 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x320>
  2064e8:      	cmpb	$0xa, %sil
  2064ec:      	jne	0x2064fa <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x2fa>
  2064ee:      	incq	%rax
  2064f1:      	movq	%rax, 0x10(%rdi)
  2064f5:      	xorl	%r8d, %r8d
  2064f8:      	jmp	0x206528 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x328>
  2064fa:      	cmpq	$0x50, %r8
  2064fe:      	jb	0x20650a <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x30a>
  206500:      	incq	%rax
  206503:      	movq	%rax, 0x10(%rdi)
  206507:      	xorl	%r8d, %r8d
  20650a:      	cmpq	$0x18, %rax
  20650e:      	ja	0x206534 <core::fmt::Write::write_char::ha79b22e7079924ae.llvm.14001740393075564532+0x334>
  206510:      	leaq	(%rax,%rax,4), %rax
  206514:      	shlq	$0x5, %rax
  206518:      	addq	%rax, %rdx
  20651b:      	movb	$-0x2, (%rdx,%r8,2)
  206520:      	movb	%cl, 0x1(%rdx,%r8,2)
  206525:      	incq	%r8
  206528:      	movq	%r8, 0x8(%rdi)
  20652c:      	xorl	%eax, %eax
  20652e:      	addq	$0x10, %rsp
  206532:      	popq	%rbx
  206533:      	retq
  206534:      	leaq	0x8745(%rip), %rdx      # 0x20ec80 <anon.b09cb26d78f32e98471514fe06be8a95.6.llvm.14001740393075564532>
  20653b:      	movl	$0x19, %esi
  206540:      	movq	%rax, %rdi
  206543:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  206548:      	int3
  206549:      	int3
  20654a:      	int3
  20654b:      	int3
  20654c:      	int3
  20654d:      	int3
  20654e:      	int3
  20654f:      	int3

0000000000206550 <core::fmt::Write::write_fmt::h30dbb4fc6ce18b6a.llvm.14001740393075564532>:
  206550:      	movq	%rsi, %rdx
  206553:      	leaq	0x86be(%rip), %rsi      # 0x20ec18 <anon.b09cb26d78f32e98471514fe06be8a95.1.llvm.14001740393075564532>
  20655a:      	jmp	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20655f:      	int3

0000000000206560 <<core::fmt::Error as core::fmt::Debug>::fmt::h0c20d8767e09fac0.llvm.14001740393075564532>:
  206560:      	movq	%rsi, %rdi
  206563:      	leaq	-0x5a1e(%rip), %rsi     # 0x200b4c <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456+0x170>
  20656a:      	movl	$0x5, %edx
  20656f:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  206574:      	int3
  206575:      	int3
  206576:      	int3
  206577:      	int3
  206578:      	int3
  206579:      	int3
  20657a:      	int3
  20657b:      	int3
  20657c:      	int3
  20657d:      	int3
  20657e:      	int3
  20657f:      	int3

0000000000206580 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532>:
  206580:      	pushq	%r15
  206582:      	pushq	%r14
  206584:      	pushq	%r13
  206586:      	pushq	%r12
  206588:      	pushq	%rbx
  206589:      	movq	%rdi, %rbx
  20658c:      	movl	$0x1, %r13d
  206592:      	testq	%rsi, %rsi
  206595:      	je	0x20662e <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xae>
  20659b:      	movq	%rdx, %r14
  20659e:      	cmpq	$0x0, 0x8(%rcx)
  2065a3:      	je	0x2065f7 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0x77>
  2065a5:      	movq	0x10(%rcx), %r15
  2065a9:      	testq	%r15, %r15
  2065ac:      	je	0x2065f7 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0x77>
  2065ae:      	movq	(%rcx), %r12
  2065b1:      	movq	0x8d08(%rip), %rdi      # 0x20f2c0
  2065b8:      	movl	$0x1, %esi
  2065bd:      	movq	%r14, %rdx
  2065c0:      	callq	0x205280 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815>
  2065c5:      	testq	%rax, %rax
  2065c8:      	je	0x20661f <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0x9f>
  2065ca:      	movq	%rax, %rdi
  2065cd:      	movq	%r12, %rsi
  2065d0:      	movq	%r15, %rdx
  2065d3:      	movq	%rax, %r13
  2065d6:      	callq	0x20d7d0 <memcpy>
  2065db:      	movq	0x8cde(%rip), %rdi      # 0x20f2c0
  2065e2:      	movl	$0x1, %edx
  2065e7:      	movq	%r12, %rsi
  2065ea:      	movq	%r15, %rcx
  2065ed:      	callq	0x2053c0 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::dealloc::h5a5e3a32b815c665>
  2065f2:      	movq	%r13, %rax
  2065f5:      	jmp	0x20663d <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xbd>
  2065f7:      	testq	%r14, %r14
  2065fa:      	je	0x206638 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xb8>
  2065fc:      	movq	0x8ccd(%rip), %rax      # 0x20f2d0
  206603:      	movzbl	(%rax), %eax
  206606:      	movq	0x8cb3(%rip), %rdi      # 0x20f2c0
  20660d:      	movl	$0x1, %esi
  206612:      	movq	%r14, %rdx
  206615:      	callq	0x205280 <kernel::alocator::fixed_size_blocks::<impl core::alloc::global::GlobalAlloc for kernel::alocator::Locked<kernel::alocator::fixed_size_blocks::FixedSizeBlockAlocator>>::alloc::h38df9c9fd57cf815>
  20661a:      	testq	%rax, %rax
  20661d:      	jne	0x20663d <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xbd>
  20661f:      	movq	$0x1, 0x8(%rbx)
  206627:      	movl	$0x10, %eax
  20662c:      	jmp	0x206649 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xc9>
  20662e:      	movl	$0x8, %eax
  206633:      	xorl	%r14d, %r14d
  206636:      	jmp	0x206649 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532+0xc9>
  206638:      	movl	$0x1, %eax
  20663d:      	movq	%rax, 0x8(%rbx)
  206641:      	movl	$0x10, %eax
  206646:      	xorl	%r13d, %r13d
  206649:      	movq	%r14, (%rbx,%rax)
  20664d:      	movq	%r13, (%rbx)
  206650:      	popq	%rbx
  206651:      	popq	%r12
  206653:      	popq	%r13
  206655:      	popq	%r14
  206657:      	popq	%r15
  206659:      	retq
  20665a:      	int3
  20665b:      	int3
  20665c:      	int3
  20665d:      	int3
  20665e:      	int3
  20665f:      	int3

0000000000206660 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20>:
  206660:      	pushq	%r14
  206662:      	pushq	%rbx
  206663:      	subq	$0x38, %rsp
  206667:      	addq	%rdx, %rsi
  20666a:      	jb	0x2066e4 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20+0x84>
  20666c:      	movq	%rdi, %rbx
  20666f:      	movq	(%rdi), %rax
  206672:      	leaq	(%rax,%rax), %rcx
  206676:      	cmpq	%rsi, %rcx
  206679:      	cmovaq	%rcx, %rsi
  20667d:      	cmpq	$0x9, %rsi
  206681:      	movl	$0x8, %r14d
  206687:      	cmovaeq	%rsi, %r14
  20668b:      	movq	%r14, %rsi
  20668e:      	notq	%rsi
  206691:      	shrq	$0x3f, %rsi
  206695:      	testq	%rax, %rax
  206698:      	je	0x2066af <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20+0x4f>
  20669a:      	movq	0x8(%rbx), %rcx
  20669e:      	movq	%rcx, 0x20(%rsp)
  2066a3:      	movq	%rax, 0x30(%rsp)
  2066a8:      	movl	$0x1, %eax
  2066ad:      	jmp	0x2066b1 <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20+0x51>
  2066af:      	xorl	%eax, %eax
  2066b1:      	movq	%rax, 0x28(%rsp)
  2066b6:      	leaq	0x8(%rsp), %rdi
  2066bb:      	leaq	0x20(%rsp), %rcx
  2066c0:      	movq	%r14, %rdx
  2066c3:      	callq	0x206580 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532>
  2066c8:      	cmpq	$0x0, 0x8(%rsp)
  2066ce:      	jne	0x2066eb <alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle::h847cd7e5ae893f20+0x8b>
  2066d0:      	movq	0x10(%rsp), %rax
  2066d5:      	movq	%rax, 0x8(%rbx)
  2066d9:      	movq	%r14, (%rbx)
  2066dc:      	addq	$0x38, %rsp
  2066e0:      	popq	%rbx
  2066e1:      	popq	%r14
  2066e3:      	retq
  2066e4:      	xorl	%edi, %edi
  2066e6:      	callq	0x20a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>
  2066eb:      	movq	0x10(%rsp), %rdi
  2066f0:      	movq	0x18(%rsp), %rsi
  2066f5:      	callq	0x20a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>
  2066fa:      	int3
  2066fb:      	int3
  2066fc:      	int3
  2066fd:      	int3
  2066fe:      	int3
  2066ff:      	int3

0000000000206700 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c>:
  206700:      	pushq	%r14
  206702:      	pushq	%rbx
  206703:      	subq	$0x38, %rsp
  206707:      	movq	(%rdi), %rax
  20670a:      	movq	%rax, %rcx
  20670d:      	incq	%rcx
  206710:      	je	0x206787 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c+0x87>
  206712:      	movq	%rdi, %rbx
  206715:      	leaq	(%rax,%rax), %rdx
  206719:      	cmpq	%rcx, %rdx
  20671c:      	cmovaq	%rdx, %rcx
  206720:      	cmpq	$0x9, %rcx
  206724:      	movl	$0x8, %r14d
  20672a:      	cmovaeq	%rcx, %r14
  20672e:      	movq	%r14, %rsi
  206731:      	notq	%rsi
  206734:      	shrq	$0x3f, %rsi
  206738:      	testq	%rax, %rax
  20673b:      	je	0x206752 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c+0x52>
  20673d:      	movq	0x8(%rbx), %rcx
  206741:      	movq	%rcx, 0x20(%rsp)
  206746:      	movq	%rax, 0x30(%rsp)
  20674b:      	movl	$0x1, %eax
  206750:      	jmp	0x206754 <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c+0x54>
  206752:      	xorl	%eax, %eax
  206754:      	movq	%rax, 0x28(%rsp)
  206759:      	leaq	0x8(%rsp), %rdi
  20675e:      	leaq	0x20(%rsp), %rcx
  206763:      	movq	%r14, %rdx
  206766:      	callq	0x206580 <alloc::raw_vec::finish_grow::h43206109ef9d4314.llvm.14001740393075564532>
  20676b:      	cmpq	$0x0, 0x8(%rsp)
  206771:      	jne	0x20678e <alloc::raw_vec::RawVec<T,A>::grow_one::h05c0f152886abb3c+0x8e>
  206773:      	movq	0x10(%rsp), %rax
  206778:      	movq	%rax, 0x8(%rbx)
  20677c:      	movq	%r14, (%rbx)
  20677f:      	addq	$0x38, %rsp
  206783:      	popq	%rbx
  206784:      	popq	%r14
  206786:      	retq
  206787:      	xorl	%edi, %edi
  206789:      	callq	0x20a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>
  20678e:      	movq	0x10(%rsp), %rdi
  206793:      	movq	0x18(%rsp), %rsi
  206798:      	callq	0x20a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>
  20679d:      	int3
  20679e:      	int3
  20679f:      	int3

00000000002067a0 <kernel::vga_buffer::_print::hfd7c669f945582f9>:
  2067a0:      	pushq	%rbx
  2067a1:      	subq	$0x20, %rsp
  2067a5:      	movq	%rdi, %rbx
  2067a8:      	pushfq
  2067a9:      	popq	%rax
  2067aa:      	testl	$0x200, %eax            # imm = 0x200
  2067af:      	jne	0x20688f <kernel::vga_buffer::_print::hfd7c669f945582f9+0xef>
  2067b5:      	movq	0xfd64(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2067bc:      	testq	%rax, %rax
  2067bf:      	jne	0x206849 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xa9>
  2067c5:      	movl	$0x1, %ecx
  2067ca:      	xorl	%eax, %eax
  2067cc:      	lock
  2067cd:      	cmpxchgq	%rcx, 0xfd4b(%rip)      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2067d5:      	jne	0x206849 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xa9>
  2067d7:      	leaq	0xfd42(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2067de:      	movq	%rax, 0x10(%rsp)
  2067e3:      	movq	$0x1, 0xfd02(%rip)      # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  2067ee:      	movb	$0x0, 0xfd03(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2067f5:      	movq	$0xb8000, 0xfd00(%rip)  # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  206800:      	movq	$0x0, 0xfcfd(%rip)      # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  20680b:      	movq	$0x0, 0xfcfa(%rip)      # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  206816:      	movb	$0xd, 0xfcfb(%rip)      # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  20681d:      	movb	$0x0, 0x18(%rsp)
  206822:      	movl	$0x2, %eax
  206827:      	xchgq	%rax, 0xfcf2(%rip)      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  20682e:      	leaq	0x10(%rsp), %rdi
  206833:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  206838:      	jmp	0x206859 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xb9>
  20683a:      	nopw	(%rax,%rax)
  206840:      	pause
  206842:      	movq	0xfcd7(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  206849:      	cmpq	$0x1, %rax
  20684d:      	je	0x206840 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xa0>
  20684f:      	cmpq	$0x2, %rax
  206853:      	jne	0x2069ae <kernel::vga_buffer::_print::hfd7c669f945582f9+0x20e>
  206859:      	movb	$0x1, %cl
  20685b:      	nopl	(%rax,%rax)
  206860:      	xorl	%eax, %eax
  206862:      	lock
  206863:      	cmpxchgb	%cl, 0xfc8e(%rip)       # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20686a:      	jne	0x206882 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xe2>
  20686c:      	jmp	0x20695f <kernel::vga_buffer::_print::hfd7c669f945582f9+0x1bf>
  206871:      	nopw	%cs:(%rax,%rax)
  206880:      	pause
  206882:      	movzbl	0xfc6f(%rip), %eax      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  206889:      	testb	%al, %al
  20688b:      	jne	0x206880 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xe0>
  20688d:      	jmp	0x206860 <kernel::vga_buffer::_print::hfd7c669f945582f9+0xc0>
  20688f:      	cli
  206890:      	movq	0xfc89(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  206897:      	testq	%rax, %rax
  20689a:      	jne	0x206929 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x189>
  2068a0:      	movl	$0x1, %ecx
  2068a5:      	xorl	%eax, %eax
  2068a7:      	lock
  2068a8:      	cmpxchgq	%rcx, 0xfc70(%rip)      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2068b0:      	jne	0x206929 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x189>
  2068b2:      	leaq	0xfc67(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  2068b9:      	movq	%rax, 0x10(%rsp)
  2068be:      	movq	$0x1, 0xfc27(%rip)      # 0x2164f0 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532>
  2068c9:      	movb	$0x0, 0xfc28(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2068d0:      	movq	$0xb8000, 0xfc25(%rip)  # imm = 0xB8000
                                                # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  2068db:      	movq	$0x0, 0xfc22(%rip)      # 0x216508 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x18>
  2068e6:      	movq	$0x0, 0xfc1f(%rip)      # 0x216510 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x20>
  2068f1:      	movb	$0xd, 0xfc20(%rip)      # 0x216518 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x28>
  2068f8:      	movb	$0x0, 0x18(%rsp)
  2068fd:      	movl	$0x2, %eax
  206902:      	xchgq	%rax, 0xfc17(%rip)      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  206909:      	leaq	0x10(%rsp), %rdi
  20690e:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  206913:      	jmp	0x206935 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x195>
  206915:      	nopw	%cs:(%rax,%rax)
  206920:      	pause
  206922:      	movq	0xfbf7(%rip), %rax      # 0x216520 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x30>
  206929:      	cmpq	$0x1, %rax
  20692d:      	je	0x206920 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x180>
  20692f:      	cmpq	$0x2, %rax
  206933:      	jne	0x2069ae <kernel::vga_buffer::_print::hfd7c669f945582f9+0x20e>
  206935:      	movb	$0x1, %cl
  206937:      	nopw	(%rax,%rax)
  206940:      	xorl	%eax, %eax
  206942:      	lock
  206943:      	cmpxchgb	%cl, 0xfbae(%rip)       # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  20694a:      	jne	0x206952 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x1b2>
  20694c:      	jmp	0x206986 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x1e6>
  20694e:      	nop
  206950:      	pause
  206952:      	movzbl	0xfb9f(%rip), %eax      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  206959:      	testb	%al, %al
  20695b:      	jne	0x206950 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x1b0>
  20695d:      	jmp	0x206940 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x1a0>
  20695f:      	leaq	0xfb9a(%rip), %rdi      # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  206966:      	leaq	0x82ab(%rip), %rsi      # 0x20ec18 <anon.b09cb26d78f32e98471514fe06be8a95.1.llvm.14001740393075564532>
  20696d:      	movq	%rbx, %rdx
  206970:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  206975:      	testb	%al, %al
  206977:      	jne	0x2069e3 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x243>
  206979:      	movb	$0x0, 0xfb78(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  206980:      	addq	$0x20, %rsp
  206984:      	popq	%rbx
  206985:      	retq
  206986:      	leaq	0xfb73(%rip), %rdi      # 0x216500 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x10>
  20698d:      	leaq	0x8284(%rip), %rsi      # 0x20ec18 <anon.b09cb26d78f32e98471514fe06be8a95.1.llvm.14001740393075564532>
  206994:      	movq	%rbx, %rdx
  206997:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20699c:      	testb	%al, %al
  20699e:      	jne	0x2069e3 <kernel::vga_buffer::_print::hfd7c669f945582f9+0x243>
  2069a0:      	movb	$0x0, 0xfb51(%rip)      # 0x2164f8 <<kernel::vga_buffer::WRITER as core::ops::deref::Deref>::deref::__stability::LAZY::ha4c2e86583c27ff9.llvm.14001740393075564532+0x8>
  2069a7:      	sti
  2069a8:      	addq	$0x20, %rsp
  2069ac:      	popq	%rbx
  2069ad:      	retq
  2069ae:      	testq	%rax, %rax
  2069b1:      	jne	0x2069cb <kernel::vga_buffer::_print::hfd7c669f945582f9+0x22b>
  2069b3:      	leaq	-0x5e2d(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  2069ba:      	leaq	0x82ef(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  2069c1:      	movl	$0x28, %esi
  2069c6:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  2069cb:      	leaq	-0x5dc2(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  2069d2:      	leaq	0x82ef(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  2069d9:      	movl	$0x11, %esi
  2069de:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  2069e3:      	leaq	-0x5e99(%rip), %rdi     # 0x200b51 <anon.b09cb26d78f32e98471514fe06be8a95.3.llvm.14001740393075564532>
  2069ea:      	leaq	0x8257(%rip), %rcx      # 0x20ec48 <anon.b09cb26d78f32e98471514fe06be8a95.2.llvm.14001740393075564532>
  2069f1:      	leaq	0x8270(%rip), %r8       # 0x20ec68 <anon.b09cb26d78f32e98471514fe06be8a95.5.llvm.14001740393075564532>
  2069f8:      	leaq	0xf(%rsp), %rdx
  2069fd:      	movl	$0x2b, %esi
  206a02:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  206a07:      	int3
  206a08:      	int3
  206a09:      	int3
  206a0a:      	int3
  206a0b:      	int3
  206a0c:      	int3
  206a0d:      	int3
  206a0e:      	int3
  206a0f:      	int3

0000000000206a10 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7>:
  206a10:      	movq	(%rdi), %rax
  206a13:      	movzbl	0x18(%rdi), %ecx
  206a17:      	xorl	%edx, %edx
  206a19:      	nopl	(%rax)
  206a20:      	movb	$0x20, (%rax,%rdx,2)
  206a24:      	movb	%cl, 0x1(%rax,%rdx,2)
  206a28:      	movb	$0x20, 0x2(%rax,%rdx,2)
  206a2d:      	movb	%cl, 0x3(%rax,%rdx,2)
  206a31:      	movb	$0x20, 0x4(%rax,%rdx,2)
  206a36:      	movb	%cl, 0x5(%rax,%rdx,2)
  206a3a:      	movb	$0x20, 0x6(%rax,%rdx,2)
  206a3f:      	movb	%cl, 0x7(%rax,%rdx,2)
  206a43:      	movb	$0x20, 0x8(%rax,%rdx,2)
  206a48:      	movb	%cl, 0x9(%rax,%rdx,2)
  206a4c:      	leaq	0x5(%rdx), %rsi
  206a50:      	movq	%rsi, %rdx
  206a53:      	cmpq	$0x50, %rsi
  206a57:      	jne	0x206a20 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x10>
  206a59:      	xorl	%edx, %edx
  206a5b:      	nopl	(%rax,%rax)
  206a60:      	movb	$0x20, 0xa0(%rax,%rdx,2)
  206a68:      	movb	%cl, 0xa1(%rax,%rdx,2)
  206a6f:      	movb	$0x20, 0xa2(%rax,%rdx,2)
  206a77:      	movb	%cl, 0xa3(%rax,%rdx,2)
  206a7e:      	movb	$0x20, 0xa4(%rax,%rdx,2)
  206a86:      	movb	%cl, 0xa5(%rax,%rdx,2)
  206a8d:      	movb	$0x20, 0xa6(%rax,%rdx,2)
  206a95:      	movb	%cl, 0xa7(%rax,%rdx,2)
  206a9c:      	movb	$0x20, 0xa8(%rax,%rdx,2)
  206aa4:      	movb	%cl, 0xa9(%rax,%rdx,2)
  206aab:      	leaq	0x5(%rdx), %rsi
  206aaf:      	movq	%rsi, %rdx
  206ab2:      	cmpq	$0x50, %rsi
  206ab6:      	jne	0x206a60 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x50>
  206ab8:      	xorl	%edx, %edx
  206aba:      	nopw	(%rax,%rax)
  206ac0:      	movb	$0x20, 0x140(%rax,%rdx,2)
  206ac8:      	movb	%cl, 0x141(%rax,%rdx,2)
  206acf:      	movb	$0x20, 0x142(%rax,%rdx,2)
  206ad7:      	movb	%cl, 0x143(%rax,%rdx,2)
  206ade:      	movb	$0x20, 0x144(%rax,%rdx,2)
  206ae6:      	movb	%cl, 0x145(%rax,%rdx,2)
  206aed:      	movb	$0x20, 0x146(%rax,%rdx,2)
  206af5:      	movb	%cl, 0x147(%rax,%rdx,2)
  206afc:      	movb	$0x20, 0x148(%rax,%rdx,2)
  206b04:      	movb	%cl, 0x149(%rax,%rdx,2)
  206b0b:      	leaq	0x5(%rdx), %rsi
  206b0f:      	movq	%rsi, %rdx
  206b12:      	cmpq	$0x50, %rsi
  206b16:      	jne	0x206ac0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0xb0>
  206b18:      	xorl	%edx, %edx
  206b1a:      	nopw	(%rax,%rax)
  206b20:      	movb	$0x20, 0x1e0(%rax,%rdx,2)
  206b28:      	movb	%cl, 0x1e1(%rax,%rdx,2)
  206b2f:      	movb	$0x20, 0x1e2(%rax,%rdx,2)
  206b37:      	movb	%cl, 0x1e3(%rax,%rdx,2)
  206b3e:      	movb	$0x20, 0x1e4(%rax,%rdx,2)
  206b46:      	movb	%cl, 0x1e5(%rax,%rdx,2)
  206b4d:      	movb	$0x20, 0x1e6(%rax,%rdx,2)
  206b55:      	movb	%cl, 0x1e7(%rax,%rdx,2)
  206b5c:      	movb	$0x20, 0x1e8(%rax,%rdx,2)
  206b64:      	movb	%cl, 0x1e9(%rax,%rdx,2)
  206b6b:      	leaq	0x5(%rdx), %rsi
  206b6f:      	movq	%rsi, %rdx
  206b72:      	cmpq	$0x50, %rsi
  206b76:      	jne	0x206b20 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x110>
  206b78:      	xorl	%edx, %edx
  206b7a:      	nopw	(%rax,%rax)
  206b80:      	movb	$0x20, 0x280(%rax,%rdx,2)
  206b88:      	movb	%cl, 0x281(%rax,%rdx,2)
  206b8f:      	movb	$0x20, 0x282(%rax,%rdx,2)
  206b97:      	movb	%cl, 0x283(%rax,%rdx,2)
  206b9e:      	movb	$0x20, 0x284(%rax,%rdx,2)
  206ba6:      	movb	%cl, 0x285(%rax,%rdx,2)
  206bad:      	movb	$0x20, 0x286(%rax,%rdx,2)
  206bb5:      	movb	%cl, 0x287(%rax,%rdx,2)
  206bbc:      	movb	$0x20, 0x288(%rax,%rdx,2)
  206bc4:      	movb	%cl, 0x289(%rax,%rdx,2)
  206bcb:      	leaq	0x5(%rdx), %rsi
  206bcf:      	movq	%rsi, %rdx
  206bd2:      	cmpq	$0x50, %rsi
  206bd6:      	jne	0x206b80 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x170>
  206bd8:      	leaq	0x8(%rdi), %rdx
  206bdc:      	movq	$0x0, 0x10(%rdi)
  206be4:      	movq	$0x0, 0x8(%rdi)
  206bec:      	xorl	%esi, %esi
  206bee:      	nop
  206bf0:      	movb	$0x20, 0x320(%rax,%rsi,2)
  206bf8:      	movb	%cl, 0x321(%rax,%rsi,2)
  206bff:      	movb	$0x20, 0x322(%rax,%rsi,2)
  206c07:      	movb	%cl, 0x323(%rax,%rsi,2)
  206c0e:      	movb	$0x20, 0x324(%rax,%rsi,2)
  206c16:      	movb	%cl, 0x325(%rax,%rsi,2)
  206c1d:      	movb	$0x20, 0x326(%rax,%rsi,2)
  206c25:      	movb	%cl, 0x327(%rax,%rsi,2)
  206c2c:      	movb	$0x20, 0x328(%rax,%rsi,2)
  206c34:      	movb	%cl, 0x329(%rax,%rsi,2)
  206c3b:      	leaq	0x5(%rsi), %rdi
  206c3f:      	movq	%rdi, %rsi
  206c42:      	cmpq	$0x50, %rdi
  206c46:      	jne	0x206bf0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x1e0>
  206c48:      	xorl	%esi, %esi
  206c4a:      	nopw	(%rax,%rax)
  206c50:      	movb	$0x20, 0x3c0(%rax,%rsi,2)
  206c58:      	movb	%cl, 0x3c1(%rax,%rsi,2)
  206c5f:      	movb	$0x20, 0x3c2(%rax,%rsi,2)
  206c67:      	movb	%cl, 0x3c3(%rax,%rsi,2)
  206c6e:      	movb	$0x20, 0x3c4(%rax,%rsi,2)
  206c76:      	movb	%cl, 0x3c5(%rax,%rsi,2)
  206c7d:      	movb	$0x20, 0x3c6(%rax,%rsi,2)
  206c85:      	movb	%cl, 0x3c7(%rax,%rsi,2)
  206c8c:      	movb	$0x20, 0x3c8(%rax,%rsi,2)
  206c94:      	movb	%cl, 0x3c9(%rax,%rsi,2)
  206c9b:      	leaq	0x5(%rsi), %rdi
  206c9f:      	movq	%rdi, %rsi
  206ca2:      	cmpq	$0x50, %rdi
  206ca6:      	jne	0x206c50 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x240>
  206ca8:      	xorl	%esi, %esi
  206caa:      	nopw	(%rax,%rax)
  206cb0:      	movb	$0x20, 0x460(%rax,%rsi,2)
  206cb8:      	movb	%cl, 0x461(%rax,%rsi,2)
  206cbf:      	movb	$0x20, 0x462(%rax,%rsi,2)
  206cc7:      	movb	%cl, 0x463(%rax,%rsi,2)
  206cce:      	movb	$0x20, 0x464(%rax,%rsi,2)
  206cd6:      	movb	%cl, 0x465(%rax,%rsi,2)
  206cdd:      	movb	$0x20, 0x466(%rax,%rsi,2)
  206ce5:      	movb	%cl, 0x467(%rax,%rsi,2)
  206cec:      	movb	$0x20, 0x468(%rax,%rsi,2)
  206cf4:      	movb	%cl, 0x469(%rax,%rsi,2)
  206cfb:      	leaq	0x5(%rsi), %rdi
  206cff:      	movq	%rdi, %rsi
  206d02:      	cmpq	$0x50, %rdi
  206d06:      	jne	0x206cb0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x2a0>
  206d08:      	xorl	%esi, %esi
  206d0a:      	nopw	(%rax,%rax)
  206d10:      	movb	$0x20, 0x500(%rax,%rsi,2)
  206d18:      	movb	%cl, 0x501(%rax,%rsi,2)
  206d1f:      	movb	$0x20, 0x502(%rax,%rsi,2)
  206d27:      	movb	%cl, 0x503(%rax,%rsi,2)
  206d2e:      	movb	$0x20, 0x504(%rax,%rsi,2)
  206d36:      	movb	%cl, 0x505(%rax,%rsi,2)
  206d3d:      	movb	$0x20, 0x506(%rax,%rsi,2)
  206d45:      	movb	%cl, 0x507(%rax,%rsi,2)
  206d4c:      	movb	$0x20, 0x508(%rax,%rsi,2)
  206d54:      	movb	%cl, 0x509(%rax,%rsi,2)
  206d5b:      	leaq	0x5(%rsi), %rdi
  206d5f:      	movq	%rdi, %rsi
  206d62:      	cmpq	$0x50, %rdi
  206d66:      	jne	0x206d10 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x300>
  206d68:      	xorl	%esi, %esi
  206d6a:      	nopw	(%rax,%rax)
  206d70:      	movb	$0x20, 0x5a0(%rax,%rsi,2)
  206d78:      	movb	%cl, 0x5a1(%rax,%rsi,2)
  206d7f:      	movb	$0x20, 0x5a2(%rax,%rsi,2)
  206d87:      	movb	%cl, 0x5a3(%rax,%rsi,2)
  206d8e:      	movb	$0x20, 0x5a4(%rax,%rsi,2)
  206d96:      	movb	%cl, 0x5a5(%rax,%rsi,2)
  206d9d:      	movb	$0x20, 0x5a6(%rax,%rsi,2)
  206da5:      	movb	%cl, 0x5a7(%rax,%rsi,2)
  206dac:      	movb	$0x20, 0x5a8(%rax,%rsi,2)
  206db4:      	movb	%cl, 0x5a9(%rax,%rsi,2)
  206dbb:      	leaq	0x5(%rsi), %rdi
  206dbf:      	movq	%rdi, %rsi
  206dc2:      	cmpq	$0x50, %rdi
  206dc6:      	jne	0x206d70 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x360>
  206dc8:      	xorl	%esi, %esi
  206dca:      	nopw	(%rax,%rax)
  206dd0:      	movb	$0x20, 0x640(%rax,%rsi,2)
  206dd8:      	movb	%cl, 0x641(%rax,%rsi,2)
  206ddf:      	movb	$0x20, 0x642(%rax,%rsi,2)
  206de7:      	movb	%cl, 0x643(%rax,%rsi,2)
  206dee:      	movb	$0x20, 0x644(%rax,%rsi,2)
  206df6:      	movb	%cl, 0x645(%rax,%rsi,2)
  206dfd:      	movb	$0x20, 0x646(%rax,%rsi,2)
  206e05:      	movb	%cl, 0x647(%rax,%rsi,2)
  206e0c:      	movb	$0x20, 0x648(%rax,%rsi,2)
  206e14:      	movb	%cl, 0x649(%rax,%rsi,2)
  206e1b:      	leaq	0x5(%rsi), %rdi
  206e1f:      	movq	%rdi, %rsi
  206e22:      	cmpq	$0x50, %rdi
  206e26:      	jne	0x206dd0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x3c0>
  206e28:      	xorl	%esi, %esi
  206e2a:      	nopw	(%rax,%rax)
  206e30:      	movb	$0x20, 0x6e0(%rax,%rsi,2)
  206e38:      	movb	%cl, 0x6e1(%rax,%rsi,2)
  206e3f:      	movb	$0x20, 0x6e2(%rax,%rsi,2)
  206e47:      	movb	%cl, 0x6e3(%rax,%rsi,2)
  206e4e:      	movb	$0x20, 0x6e4(%rax,%rsi,2)
  206e56:      	movb	%cl, 0x6e5(%rax,%rsi,2)
  206e5d:      	movb	$0x20, 0x6e6(%rax,%rsi,2)
  206e65:      	movb	%cl, 0x6e7(%rax,%rsi,2)
  206e6c:      	movb	$0x20, 0x6e8(%rax,%rsi,2)
  206e74:      	movb	%cl, 0x6e9(%rax,%rsi,2)
  206e7b:      	leaq	0x5(%rsi), %rdi
  206e7f:      	movq	%rdi, %rsi
  206e82:      	cmpq	$0x50, %rdi
  206e86:      	jne	0x206e30 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x420>
  206e88:      	xorl	%esi, %esi
  206e8a:      	nopw	(%rax,%rax)
  206e90:      	movb	$0x20, 0x780(%rax,%rsi,2)
  206e98:      	movb	%cl, 0x781(%rax,%rsi,2)
  206e9f:      	movb	$0x20, 0x782(%rax,%rsi,2)
  206ea7:      	movb	%cl, 0x783(%rax,%rsi,2)
  206eae:      	movb	$0x20, 0x784(%rax,%rsi,2)
  206eb6:      	movb	%cl, 0x785(%rax,%rsi,2)
  206ebd:      	movb	$0x20, 0x786(%rax,%rsi,2)
  206ec5:      	movb	%cl, 0x787(%rax,%rsi,2)
  206ecc:      	movb	$0x20, 0x788(%rax,%rsi,2)
  206ed4:      	movb	%cl, 0x789(%rax,%rsi,2)
  206edb:      	leaq	0x5(%rsi), %rdi
  206edf:      	movq	%rdi, %rsi
  206ee2:      	cmpq	$0x50, %rdi
  206ee6:      	jne	0x206e90 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x480>
  206ee8:      	xorl	%esi, %esi
  206eea:      	nopw	(%rax,%rax)
  206ef0:      	movb	$0x20, 0x820(%rax,%rsi,2)
  206ef8:      	movb	%cl, 0x821(%rax,%rsi,2)
  206eff:      	movb	$0x20, 0x822(%rax,%rsi,2)
  206f07:      	movb	%cl, 0x823(%rax,%rsi,2)
  206f0e:      	movb	$0x20, 0x824(%rax,%rsi,2)
  206f16:      	movb	%cl, 0x825(%rax,%rsi,2)
  206f1d:      	movb	$0x20, 0x826(%rax,%rsi,2)
  206f25:      	movb	%cl, 0x827(%rax,%rsi,2)
  206f2c:      	movb	$0x20, 0x828(%rax,%rsi,2)
  206f34:      	movb	%cl, 0x829(%rax,%rsi,2)
  206f3b:      	leaq	0x5(%rsi), %rdi
  206f3f:      	movq	%rdi, %rsi
  206f42:      	cmpq	$0x50, %rdi
  206f46:      	jne	0x206ef0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x4e0>
  206f48:      	xorl	%esi, %esi
  206f4a:      	nopw	(%rax,%rax)
  206f50:      	movb	$0x20, 0x8c0(%rax,%rsi,2)
  206f58:      	movb	%cl, 0x8c1(%rax,%rsi,2)
  206f5f:      	movb	$0x20, 0x8c2(%rax,%rsi,2)
  206f67:      	movb	%cl, 0x8c3(%rax,%rsi,2)
  206f6e:      	movb	$0x20, 0x8c4(%rax,%rsi,2)
  206f76:      	movb	%cl, 0x8c5(%rax,%rsi,2)
  206f7d:      	movb	$0x20, 0x8c6(%rax,%rsi,2)
  206f85:      	movb	%cl, 0x8c7(%rax,%rsi,2)
  206f8c:      	movb	$0x20, 0x8c8(%rax,%rsi,2)
  206f94:      	movb	%cl, 0x8c9(%rax,%rsi,2)
  206f9b:      	leaq	0x5(%rsi), %rdi
  206f9f:      	movq	%rdi, %rsi
  206fa2:      	cmpq	$0x50, %rdi
  206fa6:      	jne	0x206f50 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x540>
  206fa8:      	movq	$0x0, 0x8(%rdx)
  206fb0:      	movq	$0x0, (%rdx)
  206fb7:      	xorl	%esi, %esi
  206fb9:      	nopl	(%rax)
  206fc0:      	movb	$0x20, 0x960(%rax,%rsi,2)
  206fc8:      	movb	%cl, 0x961(%rax,%rsi,2)
  206fcf:      	movb	$0x20, 0x962(%rax,%rsi,2)
  206fd7:      	movb	%cl, 0x963(%rax,%rsi,2)
  206fde:      	movb	$0x20, 0x964(%rax,%rsi,2)
  206fe6:      	movb	%cl, 0x965(%rax,%rsi,2)
  206fed:      	movb	$0x20, 0x966(%rax,%rsi,2)
  206ff5:      	movb	%cl, 0x967(%rax,%rsi,2)
  206ffc:      	movb	$0x20, 0x968(%rax,%rsi,2)
  207004:      	movb	%cl, 0x969(%rax,%rsi,2)
  20700b:      	leaq	0x5(%rsi), %rdi
  20700f:      	movq	%rdi, %rsi
  207012:      	cmpq	$0x50, %rdi
  207016:      	jne	0x206fc0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x5b0>
  207018:      	xorl	%esi, %esi
  20701a:      	nopw	(%rax,%rax)
  207020:      	movb	$0x20, 0xa00(%rax,%rsi,2)
  207028:      	movb	%cl, 0xa01(%rax,%rsi,2)
  20702f:      	movb	$0x20, 0xa02(%rax,%rsi,2)
  207037:      	movb	%cl, 0xa03(%rax,%rsi,2)
  20703e:      	movb	$0x20, 0xa04(%rax,%rsi,2)
  207046:      	movb	%cl, 0xa05(%rax,%rsi,2)
  20704d:      	movb	$0x20, 0xa06(%rax,%rsi,2)
  207055:      	movb	%cl, 0xa07(%rax,%rsi,2)
  20705c:      	movb	$0x20, 0xa08(%rax,%rsi,2)
  207064:      	movb	%cl, 0xa09(%rax,%rsi,2)
  20706b:      	leaq	0x5(%rsi), %rdi
  20706f:      	movq	%rdi, %rsi
  207072:      	cmpq	$0x50, %rdi
  207076:      	jne	0x207020 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x610>
  207078:      	xorl	%esi, %esi
  20707a:      	nopw	(%rax,%rax)
  207080:      	movb	$0x20, 0xaa0(%rax,%rsi,2)
  207088:      	movb	%cl, 0xaa1(%rax,%rsi,2)
  20708f:      	movb	$0x20, 0xaa2(%rax,%rsi,2)
  207097:      	movb	%cl, 0xaa3(%rax,%rsi,2)
  20709e:      	movb	$0x20, 0xaa4(%rax,%rsi,2)
  2070a6:      	movb	%cl, 0xaa5(%rax,%rsi,2)
  2070ad:      	movb	$0x20, 0xaa6(%rax,%rsi,2)
  2070b5:      	movb	%cl, 0xaa7(%rax,%rsi,2)
  2070bc:      	movb	$0x20, 0xaa8(%rax,%rsi,2)
  2070c4:      	movb	%cl, 0xaa9(%rax,%rsi,2)
  2070cb:      	leaq	0x5(%rsi), %rdi
  2070cf:      	movq	%rdi, %rsi
  2070d2:      	cmpq	$0x50, %rdi
  2070d6:      	jne	0x207080 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x670>
  2070d8:      	xorl	%esi, %esi
  2070da:      	nopw	(%rax,%rax)
  2070e0:      	movb	$0x20, 0xb40(%rax,%rsi,2)
  2070e8:      	movb	%cl, 0xb41(%rax,%rsi,2)
  2070ef:      	movb	$0x20, 0xb42(%rax,%rsi,2)
  2070f7:      	movb	%cl, 0xb43(%rax,%rsi,2)
  2070fe:      	movb	$0x20, 0xb44(%rax,%rsi,2)
  207106:      	movb	%cl, 0xb45(%rax,%rsi,2)
  20710d:      	movb	$0x20, 0xb46(%rax,%rsi,2)
  207115:      	movb	%cl, 0xb47(%rax,%rsi,2)
  20711c:      	movb	$0x20, 0xb48(%rax,%rsi,2)
  207124:      	movb	%cl, 0xb49(%rax,%rsi,2)
  20712b:      	leaq	0x5(%rsi), %rdi
  20712f:      	movq	%rdi, %rsi
  207132:      	cmpq	$0x50, %rdi
  207136:      	jne	0x2070e0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x6d0>
  207138:      	xorl	%esi, %esi
  20713a:      	nopw	(%rax,%rax)
  207140:      	movb	$0x20, 0xbe0(%rax,%rsi,2)
  207148:      	movb	%cl, 0xbe1(%rax,%rsi,2)
  20714f:      	movb	$0x20, 0xbe2(%rax,%rsi,2)
  207157:      	movb	%cl, 0xbe3(%rax,%rsi,2)
  20715e:      	movb	$0x20, 0xbe4(%rax,%rsi,2)
  207166:      	movb	%cl, 0xbe5(%rax,%rsi,2)
  20716d:      	movb	$0x20, 0xbe6(%rax,%rsi,2)
  207175:      	movb	%cl, 0xbe7(%rax,%rsi,2)
  20717c:      	movb	$0x20, 0xbe8(%rax,%rsi,2)
  207184:      	movb	%cl, 0xbe9(%rax,%rsi,2)
  20718b:      	leaq	0x5(%rsi), %rdi
  20718f:      	movq	%rdi, %rsi
  207192:      	cmpq	$0x50, %rdi
  207196:      	jne	0x207140 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x730>
  207198:      	xorl	%esi, %esi
  20719a:      	nopw	(%rax,%rax)
  2071a0:      	movb	$0x20, 0xc80(%rax,%rsi,2)
  2071a8:      	movb	%cl, 0xc81(%rax,%rsi,2)
  2071af:      	movb	$0x20, 0xc82(%rax,%rsi,2)
  2071b7:      	movb	%cl, 0xc83(%rax,%rsi,2)
  2071be:      	movb	$0x20, 0xc84(%rax,%rsi,2)
  2071c6:      	movb	%cl, 0xc85(%rax,%rsi,2)
  2071cd:      	movb	$0x20, 0xc86(%rax,%rsi,2)
  2071d5:      	movb	%cl, 0xc87(%rax,%rsi,2)
  2071dc:      	movb	$0x20, 0xc88(%rax,%rsi,2)
  2071e4:      	movb	%cl, 0xc89(%rax,%rsi,2)
  2071eb:      	leaq	0x5(%rsi), %rdi
  2071ef:      	movq	%rdi, %rsi
  2071f2:      	cmpq	$0x50, %rdi
  2071f6:      	jne	0x2071a0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x790>
  2071f8:      	xorl	%esi, %esi
  2071fa:      	nopw	(%rax,%rax)
  207200:      	movb	$0x20, 0xd20(%rax,%rsi,2)
  207208:      	movb	%cl, 0xd21(%rax,%rsi,2)
  20720f:      	movb	$0x20, 0xd22(%rax,%rsi,2)
  207217:      	movb	%cl, 0xd23(%rax,%rsi,2)
  20721e:      	movb	$0x20, 0xd24(%rax,%rsi,2)
  207226:      	movb	%cl, 0xd25(%rax,%rsi,2)
  20722d:      	movb	$0x20, 0xd26(%rax,%rsi,2)
  207235:      	movb	%cl, 0xd27(%rax,%rsi,2)
  20723c:      	movb	$0x20, 0xd28(%rax,%rsi,2)
  207244:      	movb	%cl, 0xd29(%rax,%rsi,2)
  20724b:      	leaq	0x5(%rsi), %rdi
  20724f:      	movq	%rdi, %rsi
  207252:      	cmpq	$0x50, %rdi
  207256:      	jne	0x207200 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x7f0>
  207258:      	xorl	%esi, %esi
  20725a:      	nopw	(%rax,%rax)
  207260:      	movb	$0x20, 0xdc0(%rax,%rsi,2)
  207268:      	movb	%cl, 0xdc1(%rax,%rsi,2)
  20726f:      	movb	$0x20, 0xdc2(%rax,%rsi,2)
  207277:      	movb	%cl, 0xdc3(%rax,%rsi,2)
  20727e:      	movb	$0x20, 0xdc4(%rax,%rsi,2)
  207286:      	movb	%cl, 0xdc5(%rax,%rsi,2)
  20728d:      	movb	$0x20, 0xdc6(%rax,%rsi,2)
  207295:      	movb	%cl, 0xdc7(%rax,%rsi,2)
  20729c:      	movb	$0x20, 0xdc8(%rax,%rsi,2)
  2072a4:      	movb	%cl, 0xdc9(%rax,%rsi,2)
  2072ab:      	leaq	0x5(%rsi), %rdi
  2072af:      	movq	%rdi, %rsi
  2072b2:      	cmpq	$0x50, %rdi
  2072b6:      	jne	0x207260 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x850>
  2072b8:      	xorl	%esi, %esi
  2072ba:      	nopw	(%rax,%rax)
  2072c0:      	movb	$0x20, 0xe60(%rax,%rsi,2)
  2072c8:      	movb	%cl, 0xe61(%rax,%rsi,2)
  2072cf:      	movb	$0x20, 0xe62(%rax,%rsi,2)
  2072d7:      	movb	%cl, 0xe63(%rax,%rsi,2)
  2072de:      	movb	$0x20, 0xe64(%rax,%rsi,2)
  2072e6:      	movb	%cl, 0xe65(%rax,%rsi,2)
  2072ed:      	movb	$0x20, 0xe66(%rax,%rsi,2)
  2072f5:      	movb	%cl, 0xe67(%rax,%rsi,2)
  2072fc:      	movb	$0x20, 0xe68(%rax,%rsi,2)
  207304:      	movb	%cl, 0xe69(%rax,%rsi,2)
  20730b:      	leaq	0x5(%rsi), %rdi
  20730f:      	movq	%rdi, %rsi
  207312:      	cmpq	$0x50, %rdi
  207316:      	jne	0x2072c0 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x8b0>
  207318:      	xorl	%esi, %esi
  20731a:      	nopw	(%rax,%rax)
  207320:      	movb	$0x20, 0xf00(%rax,%rsi,2)
  207328:      	movb	%cl, 0xf01(%rax,%rsi,2)
  20732f:      	movb	$0x20, 0xf02(%rax,%rsi,2)
  207337:      	movb	%cl, 0xf03(%rax,%rsi,2)
  20733e:      	movb	$0x20, 0xf04(%rax,%rsi,2)
  207346:      	movb	%cl, 0xf05(%rax,%rsi,2)
  20734d:      	movb	$0x20, 0xf06(%rax,%rsi,2)
  207355:      	movb	%cl, 0xf07(%rax,%rsi,2)
  20735c:      	movb	$0x20, 0xf08(%rax,%rsi,2)
  207364:      	movb	%cl, 0xf09(%rax,%rsi,2)
  20736b:      	leaq	0x5(%rsi), %rdi
  20736f:      	movq	%rdi, %rsi
  207372:      	cmpq	$0x50, %rdi
  207376:      	jne	0x207320 <kernel::vga_buffer::Writer::clear_screen::h66bef481f09d90f7+0x910>
  207378:      	movq	$0x0, 0x8(%rdx)
  207380:      	movq	$0x0, (%rdx)
  207387:      	retq
  207388:      	int3
  207389:      	int3
  20738a:      	int3
  20738b:      	int3
  20738c:      	int3
  20738d:      	int3
  20738e:      	int3
  20738f:      	int3

0000000000207390 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977>:
  207390:      	pushq	%rbx
  207391:      	testq	%rdx, %rdx
  207394:      	je	0x207464 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xd4>
  20739a:      	movq	%rdi, %rax
  20739d:      	movzbl	0x18(%rdi), %ecx
  2073a1:      	movq	(%rdi), %r8
  2073a4:      	movq	0x8(%rdi), %r10
  2073a8:      	movq	0x10(%rdi), %rdi
  2073ac:      	xorl	%r9d, %r9d
  2073af:      	jmp	0x2073da <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x4a>
  2073b1:      	nopw	%cs:(%rax,%rax)
  2073c0:      	incq	%rdi
  2073c3:      	movq	%rdi, 0x10(%rax)
  2073c7:      	xorl	%r10d, %r10d
  2073ca:      	movq	%r10, 0x8(%rax)
  2073ce:      	incq	%r9
  2073d1:      	cmpq	%r9, %rdx
  2073d4:      	je	0x207464 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xd4>
  2073da:      	movzbl	(%rsi,%r9), %r11d
  2073df:      	cmpb	$0x1f, %r11b
  2073e3:      	jbe	0x207420 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x90>
  2073e5:      	cmpb	$0x7e, %r11b
  2073e9:      	ja	0x207426 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x96>
  2073eb:      	cmpq	$0x50, %r10
  2073ef:      	jb	0x2073fb <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x6b>
  2073f1:      	incq	%rdi
  2073f4:      	movq	%rdi, 0x10(%rax)
  2073f8:      	xorl	%r10d, %r10d
  2073fb:      	cmpq	$0x19, %rdi
  2073ff:      	jae	0x207468 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xd8>
  207401:      	leaq	(%rdi,%rdi,4), %rbx
  207405:      	shlq	$0x5, %rbx
  207409:      	addq	%r8, %rbx
  20740c:      	movb	%r11b, (%rbx,%r10,2)
  207410:      	movb	%cl, 0x1(%rbx,%r10,2)
  207415:      	jmp	0x207451 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xc1>
  207417:      	nopw	(%rax,%rax)
  207420:      	cmpb	$0xa, %r11b
  207424:      	je	0x2073c0 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x30>
  207426:      	cmpq	$0x50, %r10
  20742a:      	jb	0x207436 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xa6>
  20742c:      	incq	%rdi
  20742f:      	movq	%rdi, 0x10(%rax)
  207433:      	xorl	%r10d, %r10d
  207436:      	cmpq	$0x19, %rdi
  20743a:      	jae	0x207468 <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0xd8>
  20743c:      	leaq	(%rdi,%rdi,4), %r11
  207440:      	shlq	$0x5, %r11
  207444:      	addq	%r8, %r11
  207447:      	movb	$-0x2, (%r11,%r10,2)
  20744c:      	movb	%cl, 0x1(%r11,%r10,2)
  207451:      	incq	%r10
  207454:      	movq	%r10, 0x8(%rax)
  207458:      	incq	%r9
  20745b:      	cmpq	%r9, %rdx
  20745e:      	jne	0x2073da <<kernel::vga_buffer::Writer as core::fmt::Write>::write_str::h1ea3b798f8466977+0x4a>
  207464:      	xorl	%eax, %eax
  207466:      	popq	%rbx
  207467:      	retq
  207468:      	leaq	0x7811(%rip), %rdx      # 0x20ec80 <anon.b09cb26d78f32e98471514fe06be8a95.6.llvm.14001740393075564532>
  20746f:      	movl	$0x19, %esi
  207474:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  207479:      	int3
  20747a:      	int3
  20747b:      	int3
  20747c:      	int3
  20747d:      	int3
  20747e:      	int3
  20747f:      	int3

0000000000207480 <spin::once::Once<T>::call_once::h0189cd59c13c7d03>:
  207480:      	pushq	%rbp
  207481:      	pushq	%r15
  207483:      	pushq	%r14
  207485:      	pushq	%r13
  207487:      	pushq	%r12
  207489:      	pushq	%rbx
  20748a:      	subq	$0x1c68, %rsp           # imm = 0x1C68
  207491:      	leaq	0x1010(%rdi), %rcx
  207498:      	movq	0x1010(%rdi), %rax
  20749f:      	testq	%rax, %rax
  2074a2:      	jne	0x207ba5 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x725>
  2074a8:      	movl	$0x1, %edx
  2074ad:      	xorl	%eax, %eax
  2074af:      	lock
  2074b0:      	cmpxchgq	%rdx, (%rcx)
  2074b4:      	jne	0x207ba5 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x725>
  2074ba:      	movq	%rdi, 0x68(%rsp)
  2074bf:      	movq	%rcx, 0x70(%rsp)
  2074c4:      	movb	$0x1, 0x78(%rsp)
  2074c9:      	movl	$0x1c, %eax
  2074ce:      	movabsq	$0xe0000000000, %rcx    # imm = 0xE0000000000
  2074d8:      	nopl	(%rax,%rax)
  2074e0:      	movq	%rcx, 0x64(%rsp,%rax)
  2074e5:      	movq	$0x0, 0x6c(%rsp,%rax)
  2074ee:      	movq	%rcx, 0x74(%rsp,%rax)
  2074f3:      	movq	$0x0, 0x7c(%rsp,%rax)
  2074fc:      	addq	$0x20, %rax
  207500:      	cmpq	$0xe1c, %rax            # imm = 0xE1C
  207506:      	jne	0x2074e0 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x60>
  207508:      	movzwl	0x84(%rsp), %r14d
  207511:      	movl	0x8c(%rsp), %r12d
  207519:      	movzwl	0x94(%rsp), %ebx
  207521:      	leaq	0x9c(%rsp), %rsi
  207529:      	leaq	0xe84(%rsp), %rdi
  207531:      	movl	$0xde4, %edx            # imm = 0xDE4
  207536:      	callq	0x20d7d0 <memcpy>
  20753b:      	leaq	-0x14b2(%rip), %r8      # 0x206090 <kernel::interuptions::breakpoint_handler::he578ba234a698531>
  207542:      	movq	%r8, %rax
  207545:      	shrq	$0x2f, %rax
  207549:      	je	0x20756a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0xea>
  20754b:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  207550:      	je	0x20756a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0xea>
  207552:      	cmpl	$0x1, %eax
  207555:      	jne	0x207bff <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x77f>
  20755b:      	leaq	-0x14d2(%rip), %r8      # 0x206090 <kernel::interuptions::breakpoint_handler::he578ba234a698531>
  207562:      	shlq	$0x10, %r8
  207566:      	sarq	$0x10, %r8
  20756a:      	movl	%cs, %r11d
  20756d:      	leaq	-0x1f14(%rip), %rbp     # 0x205660 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30>
  207574:      	movq	%rbp, %rax
  207577:      	shrq	$0x2f, %rax
  20757b:      	je	0x20759c <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x11c>
  20757d:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  207582:      	je	0x20759c <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x11c>
  207584:      	cmpl	$0x1, %eax
  207587:      	jne	0x207c08 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x788>
  20758d:      	leaq	-0x1f34(%rip), %rbp     # 0x205660 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30>
  207594:      	shlq	$0x10, %rbp
  207598:      	sarq	$0x10, %rbp
  20759c:      	movl	%cs, %r10d
  20759f:      	leaq	-0x1576(%rip), %rcx     # 0x206030 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117>
  2075a6:      	movq	%rcx, %rax
  2075a9:      	shrq	$0x2f, %rax
  2075ad:      	je	0x2075ce <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x14e>
  2075af:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  2075b4:      	je	0x2075ce <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x14e>
  2075b6:      	cmpl	$0x1, %eax
  2075b9:      	jne	0x207c11 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x791>
  2075bf:      	leaq	-0x1596(%rip), %rcx     # 0x206030 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117>
  2075c6:      	shlq	$0x10, %rcx
  2075ca:      	sarq	$0x10, %rcx
  2075ce:      	movl	%cs, %edx
  2075d0:      	leaq	-0x1d87(%rip), %rsi     # 0x205850 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf>
  2075d7:      	movq	%rsi, %rax
  2075da:      	shrq	$0x2f, %rax
  2075de:      	je	0x2075ff <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x17f>
  2075e0:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  2075e5:      	je	0x2075ff <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x17f>
  2075e7:      	cmpl	$0x1, %eax
  2075ea:      	jne	0x207c1a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x79a>
  2075f0:      	leaq	-0x1da7(%rip), %rsi     # 0x205850 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf>
  2075f7:      	shlq	$0x10, %rsi
  2075fb:      	sarq	$0x10, %rsi
  2075ff:      	movl	%cs, %r9d
  207602:      	leaq	-0x14b9(%rip), %r15     # 0x206150 <kernel::interuptions::double_fault_handler::h58ca4dfb1afb4aa9>
  207609:      	movq	%r15, %rax
  20760c:      	shrq	$0x2f, %rax
  207610:      	movl	%r12d, 0x2c(%rsp)
  207615:      	movw	%dx, 0x16(%rsp)
  20761a:      	movw	%r9w, 0x14(%rsp)
  207620:      	movw	%r10w, 0x12(%rsp)
  207626:      	movw	%r11w, 0x10(%rsp)
  20762c:      	je	0x20764d <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x1cd>
  20762e:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  207633:      	je	0x20764d <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x1cd>
  207635:      	cmpl	$0x1, %eax
  207638:      	jne	0x207c23 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x7a3>
  20763e:      	leaq	-0x14f5(%rip), %r15     # 0x206150 <kernel::interuptions::double_fault_handler::h58ca4dfb1afb4aa9>
  207645:      	shlq	$0x10, %r15
  207649:      	sarq	$0x10, %r15
  20764d:      	movl	%cs, %eax
  20764f:      	movw	%ax, 0xe(%rsp)
  207654:      	movq	%r15, %rax
  207657:      	shrq	$0x20, %rax
  20765b:      	movq	%rax, 0x40(%rsp)
  207660:      	movl	%r15d, %eax
  207663:      	shrl	$0x10, %eax
  207666:      	movl	%eax, 0x18(%rsp)
  20766a:      	orl	$0x8000, %ebx           # imm = 0x8000
  207670:      	movl	%ebx, 0x20(%rsp)
  207674:      	movq	%rsi, %rax
  207677:      	shrq	$0x20, %rax
  20767b:      	movq	%rax, 0x60(%rsp)
  207680:      	movl	%esi, %eax
  207682:      	shrl	$0x10, %eax
  207685:      	movl	%eax, 0x28(%rsp)
  207689:      	orl	$0x8000, %r14d          # imm = 0x8000
  207690:      	movl	%r14d, 0x1c(%rsp)
  207695:      	movq	%rcx, %rax
  207698:      	shrq	$0x20, %rax
  20769c:      	movq	%rax, 0x58(%rsp)
  2076a1:      	movl	%ecx, %eax
  2076a3:      	shrl	$0x10, %eax
  2076a6:      	movl	%eax, 0x24(%rsp)
  2076aa:      	movq	%rbp, %rax
  2076ad:      	shrq	$0x20, %rax
  2076b1:      	movq	%rax, 0x38(%rsp)
  2076b6:      	movl	%ebp, %ebx
  2076b8:      	shrl	$0x10, %ebx
  2076bb:      	movq	%r8, %r12
  2076be:      	movq	%r8, %r14
  2076c1:      	shrq	$0x20, %r14
  2076c5:      	movl	%r12d, %r13d
  2076c8:      	shrl	$0x10, %r13d
  2076cc:      	leaq	0x80(%rsp), %rdi
  2076d4:      	movq	%rsi, 0x50(%rsp)
  2076d9:      	leaq	0xe84(%rsp), %rsi
  2076e1:      	movl	$0xde4, %edx            # imm = 0xDE4
  2076e6:      	movq	%rbp, 0x30(%rsp)
  2076eb:      	movq	%rcx, 0x48(%rsp)
  2076f0:      	callq	0x20d7d0 <memcpy>
  2076f5:      	movq	0x68(%rsp), %rbp
  2076fa:      	movq	$0x0, 0x8(%rbp)
  207702:      	movq	$0x1, (%rbp)
  20770a:      	movl	$0x0, 0x10(%rbp)
  207711:      	movw	$0xe00, 0x14(%rbp)      # imm = 0xE00
  207717:      	movq	$0x0, 0x16(%rbp)
  20771f:      	movq	$0x0, 0x1c(%rbp)
  207727:      	movw	$0xe00, 0x24(%rbp)      # imm = 0xE00
  20772d:      	movq	$0x0, 0x26(%rbp)
  207735:      	movq	$0x0, 0x2c(%rbp)
  20773d:      	movq	$0xe00, 0x34(%rbp)      # imm = 0xE00
  207745:      	movl	$0x0, 0x3c(%rbp)
  20774c:      	movw	%r12w, 0x40(%rbp)
  207751:      	movzwl	0x10(%rsp), %eax
  207756:      	movw	%ax, 0x42(%rbp)
  20775a:      	movw	$0x8e00, 0x44(%rbp)     # imm = 0x8E00
  207760:      	movw	%r13w, 0x46(%rbp)
  207765:      	movl	%r14d, 0x48(%rbp)
  207769:      	movq	$0x0, 0x4c(%rbp)
  207771:      	movw	$0xe00, 0x54(%rbp)      # imm = 0xE00
  207777:      	movq	$0x0, 0x5c(%rbp)
  20777f:      	movq	$0x0, 0x56(%rbp)
  207787:      	movw	$0xe00, 0x64(%rbp)      # imm = 0xE00
  20778d:      	movq	$0x0, 0x6c(%rbp)
  207795:      	movq	$0x0, 0x66(%rbp)
  20779d:      	movw	$0xe00, 0x74(%rbp)      # imm = 0xE00
  2077a3:      	movq	$0x0, 0x7c(%rbp)
  2077ab:      	movq	$0x0, 0x76(%rbp)
  2077b3:      	movq	$0xe00, 0x84(%rbp)      # imm = 0xE00
  2077be:      	movl	$0x0, 0x8c(%rbp)
  2077c8:      	movw	%r15w, 0x90(%rbp)
  2077d0:      	movzwl	0xe(%rsp), %eax
  2077d5:      	movw	%ax, 0x92(%rbp)
  2077dc:      	movw	$0x8e01, 0x94(%rbp)     # imm = 0x8E01
  2077e5:      	movl	0x18(%rsp), %eax
  2077e9:      	movw	%ax, 0x96(%rbp)
  2077f0:      	movq	0x40(%rsp), %rax
  2077f5:      	movl	%eax, 0x98(%rbp)
  2077fb:      	movq	$0x0, 0x9c(%rbp)
  207806:      	movw	$0xe00, 0xa4(%rbp)      # imm = 0xE00
  20780f:      	movq	$0x0, 0xa6(%rbp)
  20781a:      	movq	$0x0, 0xac(%rbp)
  207825:      	movw	$0xe00, 0xb4(%rbp)      # imm = 0xE00
  20782e:      	movq	$0x0, 0xbc(%rbp)
  207839:      	movq	$0x0, 0xb6(%rbp)
  207844:      	movw	$0xe00, 0xc4(%rbp)      # imm = 0xE00
  20784d:      	movq	$0x0, 0xc6(%rbp)
  207858:      	movq	$0x0, 0xcc(%rbp)
  207863:      	movw	$0xe00, 0xd4(%rbp)      # imm = 0xE00
  20786c:      	movq	$0x0, 0xd6(%rbp)
  207877:      	movq	$0x0, 0xdc(%rbp)
  207882:      	movq	$0xe00, 0xe4(%rbp)      # imm = 0xE00
  20788d:      	movl	$0x0, 0xec(%rbp)
  207897:      	movq	0x30(%rsp), %rax
  20789c:      	movw	%ax, 0xf0(%rbp)
  2078a3:      	movzwl	0x12(%rsp), %eax
  2078a8:      	movw	%ax, 0xf2(%rbp)
  2078af:      	movw	$0x8e00, 0xf4(%rbp)     # imm = 0x8E00
  2078b8:      	movw	%bx, 0xf6(%rbp)
  2078bf:      	movq	0x38(%rsp), %rax
  2078c4:      	movl	%eax, 0xf8(%rbp)
  2078ca:      	movq	$0x0, 0xfc(%rbp)
  2078d5:      	movw	$0xe00, 0x104(%rbp)     # imm = 0xE00
  2078de:      	movq	$0x0, 0x106(%rbp)
  2078e9:      	movq	$0x0, 0x10c(%rbp)
  2078f4:      	movw	$0xe00, 0x114(%rbp)     # imm = 0xE00
  2078fd:      	movq	$0x0, 0x11c(%rbp)
  207908:      	movq	$0x0, 0x116(%rbp)
  207913:      	movw	$0xe00, 0x124(%rbp)     # imm = 0xE00
  20791c:      	movq	$0x0, 0x12c(%rbp)
  207927:      	movq	$0x0, 0x126(%rbp)
  207932:      	movw	$0xe00, 0x134(%rbp)     # imm = 0xE00
  20793b:      	movq	$0x0, 0x13c(%rbp)
  207946:      	movq	$0x0, 0x136(%rbp)
  207951:      	movw	$0xe00, 0x144(%rbp)     # imm = 0xE00
  20795a:      	movq	$0x0, 0x14c(%rbp)
  207965:      	movq	$0x0, 0x146(%rbp)
  207970:      	movw	$0xe00, 0x154(%rbp)     # imm = 0xE00
  207979:      	movq	$0x0, 0x15c(%rbp)
  207984:      	movq	$0x0, 0x156(%rbp)
  20798f:      	movw	$0xe00, 0x164(%rbp)     # imm = 0xE00
  207998:      	movq	$0x0, 0x16c(%rbp)
  2079a3:      	movq	$0x0, 0x166(%rbp)
  2079ae:      	movw	$0xe00, 0x174(%rbp)     # imm = 0xE00
  2079b7:      	movq	$0x0, 0x17c(%rbp)
  2079c2:      	movq	$0x0, 0x176(%rbp)
  2079cd:      	movw	$0xe00, 0x184(%rbp)     # imm = 0xE00
  2079d6:      	movq	$0x0, 0x18c(%rbp)
  2079e1:      	movq	$0x0, 0x186(%rbp)
  2079ec:      	movw	$0xe00, 0x194(%rbp)     # imm = 0xE00
  2079f5:      	movq	$0x0, 0x19c(%rbp)
  207a00:      	movq	$0x0, 0x196(%rbp)
  207a0b:      	movw	$0xe00, 0x1a4(%rbp)     # imm = 0xE00
  207a14:      	movq	$0x0, 0x1ac(%rbp)
  207a1f:      	movq	$0x0, 0x1a6(%rbp)
  207a2a:      	movw	$0xe00, 0x1b4(%rbp)     # imm = 0xE00
  207a33:      	movq	$0x0, 0x1bc(%rbp)
  207a3e:      	movq	$0x0, 0x1b6(%rbp)
  207a49:      	movw	$0xe00, 0x1c4(%rbp)     # imm = 0xE00
  207a52:      	movq	$0x0, 0x1cc(%rbp)
  207a5d:      	movq	$0x0, 0x1c6(%rbp)
  207a68:      	movw	$0xe00, 0x1d4(%rbp)     # imm = 0xE00
  207a71:      	movq	$0x0, 0x1dc(%rbp)
  207a7c:      	movq	$0x0, 0x1d6(%rbp)
  207a87:      	movw	$0xe00, 0x1e4(%rbp)     # imm = 0xE00
  207a90:      	movq	$0x0, 0x1ec(%rbp)
  207a9b:      	movq	$0x0, 0x1e6(%rbp)
  207aa6:      	movw	$0xe00, 0x1f4(%rbp)     # imm = 0xE00
  207aaf:      	movq	$0x0, 0x1fc(%rbp)
  207aba:      	movq	$0x0, 0x1f6(%rbp)
  207ac5:      	movl	$0xe00, 0x204(%rbp)     # imm = 0xE00
  207acf:      	movq	$0x0, 0x208(%rbp)
  207ada:      	movq	0x48(%rsp), %rax
  207adf:      	movw	%ax, 0x210(%rbp)
  207ae6:      	movzwl	0x16(%rsp), %eax
  207aeb:      	movw	%ax, 0x212(%rbp)
  207af2:      	movl	0x1c(%rsp), %eax
  207af6:      	movw	%ax, 0x214(%rbp)
  207afd:      	movl	0x24(%rsp), %eax
  207b01:      	movw	%ax, 0x216(%rbp)
  207b08:      	movq	0x58(%rsp), %rax
  207b0d:      	movl	%eax, 0x218(%rbp)
  207b13:      	movl	0x2c(%rsp), %eax
  207b17:      	movl	%eax, 0x21c(%rbp)
  207b1d:      	movq	0x50(%rsp), %rax
  207b22:      	movw	%ax, 0x220(%rbp)
  207b29:      	movzwl	0x14(%rsp), %eax
  207b2e:      	movw	%ax, 0x222(%rbp)
  207b35:      	movl	0x20(%rsp), %eax
  207b39:      	movw	%ax, 0x224(%rbp)
  207b40:      	movl	0x28(%rsp), %eax
  207b44:      	movw	%ax, 0x226(%rbp)
  207b4b:      	leaq	0x10(%rbp), %rbx
  207b4f:      	movq	0x60(%rsp), %rax
  207b54:      	movl	%eax, 0x228(%rbp)
  207b5a:      	leaq	0x22c(%rbp), %rdi
  207b61:      	movl	$0xde4, %edx            # imm = 0xDE4
  207b66:      	leaq	0x80(%rsp), %rsi
  207b6e:      	callq	0x20d7d0 <memcpy>
  207b73:      	movb	$0x0, 0x78(%rsp)
  207b78:      	movl	$0x2, %eax
  207b7d:      	xchgq	%rax, 0x1010(%rbp)
  207b84:      	leaq	0x70(%rsp), %rdi
  207b89:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  207b8e:      	movq	%rbx, %rax
  207b91:      	jmp	0x207bb8 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x738>
  207b93:      	nopw	%cs:(%rax,%rax)
  207ba0:      	pause
  207ba2:      	movq	(%rcx), %rax
  207ba5:      	cmpq	$0x1, %rax
  207ba9:      	je	0x207ba0 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x720>
  207bab:      	cmpq	$0x2, %rax
  207baf:      	jne	0x207bca <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x74a>
  207bb1:      	addq	$0x10, %rdi
  207bb5:      	movq	%rdi, %rax
  207bb8:      	addq	$0x1c68, %rsp           # imm = 0x1C68
  207bbf:      	popq	%rbx
  207bc0:      	popq	%r12
  207bc2:      	popq	%r13
  207bc4:      	popq	%r14
  207bc6:      	popq	%r15
  207bc8:      	popq	%rbp
  207bc9:      	retq
  207bca:      	testq	%rax, %rax
  207bcd:      	jne	0x207be7 <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x767>
  207bcf:      	leaq	-0x7049(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  207bd6:      	leaq	0x70d3(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  207bdd:      	movl	$0x28, %esi
  207be2:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207be7:      	leaq	-0x6fde(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  207bee:      	leaq	0x70d3(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  207bf5:      	movl	$0x11, %esi
  207bfa:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207bff:      	leaq	-0x1b76(%rip), %rax     # 0x206090 <kernel::interuptions::breakpoint_handler::he578ba234a698531>
  207c06:      	jmp	0x207c2a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x7aa>
  207c08:      	leaq	-0x25af(%rip), %rax     # 0x205660 <kernel::interuptions::page_interupt_handler::hb328b45cccf6fe30>
  207c0f:      	jmp	0x207c2a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x7aa>
  207c11:      	leaq	-0x1be8(%rip), %rax     # 0x206030 <kernel::interuptions::timer_interrupt_handler::h27a5d16be9152117>
  207c18:      	jmp	0x207c2a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x7aa>
  207c1a:      	leaq	-0x23d1(%rip), %rax     # 0x205850 <kernel::interuptions::keyboard_interrupt_handler::hfc569e5de71898bf>
  207c21:      	jmp	0x207c2a <spin::once::Once<T>::call_once::h0189cd59c13c7d03+0x7aa>
  207c23:      	leaq	-0x1ada(%rip), %rax     # 0x206150 <kernel::interuptions::double_fault_handler::h58ca4dfb1afb4aa9>
  207c2a:      	movq	%rax, 0x80(%rsp)
  207c32:      	leaq	-0x6fb9(%rip), %rdi     # 0x200c80 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x70>
  207c39:      	leaq	0x70a0(%rip), %rcx      # 0x20ece0 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x18>
  207c40:      	leaq	0x70b9(%rip), %r8       # 0x20ed00 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x38>
  207c47:      	leaq	0x80(%rsp), %rdx
  207c4f:      	movl	$0x4a, %esi
  207c54:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  207c59:      	int3
  207c5a:      	int3
  207c5b:      	int3
  207c5c:      	int3
  207c5d:      	int3
  207c5e:      	int3
  207c5f:      	int3

0000000000207c60 <spin::once::Once<T>::call_once::hba85b97d6b186d82>:
  207c60:      	pushq	%r14
  207c62:      	pushq	%rbx
  207c63:      	subq	$0x18, %rsp
  207c67:      	movq	(%rdi), %rax
  207c6a:      	testq	%rax, %rax
  207c6d:      	jne	0x207cd5 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x75>
  207c6f:      	movl	$0x1, %ecx
  207c74:      	xorl	%eax, %eax
  207c76:      	lock
  207c77:      	cmpxchgq	%rcx, (%rdi)
  207c7b:      	jne	0x207cd5 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x75>
  207c7d:      	movq	%rdi, 0x8(%rsp)
  207c82:      	cmpq	$0x0, 0x8(%rdi)
  207c87:      	je	0x207dab <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x14b>
  207c8d:      	movq	0x18(%rdi), %rcx
  207c91:      	testq	%rcx, %rcx
  207c94:      	je	0x207dab <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x14b>
  207c9a:      	movq	0x20(%rdi), %rsi
  207c9e:      	movq	0x761b(%rip), %rbx      # 0x20f2c0
  207ca5:      	movb	$0x1, %dl
  207ca7:      	nopw	(%rax,%rax)
  207cb0:      	xorl	%eax, %eax
  207cb2:      	lock
  207cb3:      	cmpxchgb	%dl, (%rbx)
  207cb6:      	jne	0x207cc2 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x62>
  207cb8:      	jmp	0x207cf4 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x94>
  207cba:      	nopw	(%rax,%rax)
  207cc0:      	pause
  207cc2:      	movzbl	(%rbx), %eax
  207cc5:      	testb	%al, %al
  207cc7:      	jne	0x207cc0 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x60>
  207cc9:      	jmp	0x207cb0 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x50>
  207ccb:      	nopl	(%rax,%rax)
  207cd0:      	pause
  207cd2:      	movq	(%rdi), %rax
  207cd5:      	cmpq	$0x1, %rax
  207cd9:      	je	0x207cd0 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x70>
  207cdb:      	cmpq	$0x2, %rax
  207cdf:      	jne	0x207df5 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x195>
  207ce5:      	addq	$0x10, %rdi
  207ce9:      	movq	%rdi, %rax
  207cec:      	addq	$0x18, %rsp
  207cf0:      	popq	%rbx
  207cf1:      	popq	%r14
  207cf3:      	retq
  207cf4:      	cmpq	$0x9, %rcx
  207cf8:      	jb	0x207d7e <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x11e>
  207cfe:      	movl	$0x1, %eax
  207d03:      	cmpq	$0x11, %rcx
  207d07:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d09:      	movl	$0x2, %eax
  207d0e:      	cmpq	$0x21, %rcx
  207d12:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d14:      	movl	$0x3, %eax
  207d19:      	cmpq	$0x41, %rcx
  207d1d:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d1f:      	movl	$0x4, %eax
  207d24:      	cmpq	$0x81, %rcx
  207d2b:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d2d:      	movl	$0x5, %eax
  207d32:      	cmpq	$0x101, %rcx            # imm = 0x101
  207d39:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d3b:      	movl	$0x6, %eax
  207d40:      	cmpq	$0x201, %rcx            # imm = 0x201
  207d47:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d49:      	movl	$0x7, %eax
  207d4e:      	cmpq	$0x401, %rcx            # imm = 0x401
  207d55:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d57:      	movl	$0x8, %eax
  207d5c:      	cmpq	$0x801, %rcx            # imm = 0x801
  207d63:      	jb	0x207d80 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x120>
  207d65:      	leaq	0x50(%rbx), %rax
  207d69:      	movl	$0x1, %edx
  207d6e:      	movq	%rdi, %r14
  207d71:      	movq	%rax, %rdi
  207d74:      	callq	0x209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>
  207d79:      	movq	%r14, %rdi
  207d7c:      	jmp	0x207da8 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x148>
  207d7e:      	xorl	%eax, %eax
  207d80:      	movq	0x8(%rbx,%rax,8), %rcx
  207d85:      	movq	$0x0, 0x8(%rbx,%rax,8)
  207d8e:      	leaq	-0x744d(%rip), %rdx     # 0x200948 <anon.994c69268c969b3a3a7dd216b7da14d0.7.llvm.14347507059935776456>
  207d95:      	cmpq	$0x7, (%rdx,%rax,8)
  207d9a:      	jbe	0x207e2a <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x1ca>
  207da0:      	movq	%rcx, (%rsi)
  207da3:      	movq	%rsi, 0x8(%rbx,%rax,8)
  207da8:      	movb	$0x0, (%rbx)
  207dab:      	movq	$0x1, 0x8(%rdi)
  207db3:      	leaq	0x10(%rdi), %rbx
  207db7:      	movb	$0x0, 0x10(%rdi)
  207dbb:      	movq	$0x0, 0x18(%rdi)
  207dc3:      	movq	$0x1, 0x20(%rdi)
  207dcb:      	movq	$0x0, 0x28(%rdi)
  207dd3:      	movb	$0x0, 0x10(%rsp)
  207dd8:      	movl	$0x2, %eax
  207ddd:      	xchgq	%rax, (%rdi)
  207de0:      	leaq	0x8(%rsp), %rdi
  207de5:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  207dea:      	movq	%rbx, %rax
  207ded:      	addq	$0x18, %rsp
  207df1:      	popq	%rbx
  207df2:      	popq	%r14
  207df4:      	retq
  207df5:      	testq	%rax, %rax
  207df8:      	jne	0x207e12 <spin::once::Once<T>::call_once::hba85b97d6b186d82+0x1b2>
  207dfa:      	leaq	-0x7274(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  207e01:      	leaq	0x6ea8(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  207e08:      	movl	$0x28, %esi
  207e0d:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207e12:      	leaq	-0x7209(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  207e19:      	leaq	0x6ea8(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  207e20:      	movl	$0x11, %esi
  207e25:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207e2a:      	leaq	-0x7455(%rip), %rdi     # 0x2009dc <anon.994c69268c969b3a3a7dd216b7da14d0.13.llvm.14347507059935776456>
  207e31:      	leaq	0x6c98(%rip), %rdx      # 0x20ead0 <anon.994c69268c969b3a3a7dd216b7da14d0.14.llvm.14347507059935776456>
  207e38:      	movl	$0x3e, %esi
  207e3d:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207e42:      	int3
  207e43:      	int3
  207e44:      	int3
  207e45:      	int3
  207e46:      	int3
  207e47:      	int3
  207e48:      	int3
  207e49:      	int3
  207e4a:      	int3
  207e4b:      	int3
  207e4c:      	int3
  207e4d:      	int3
  207e4e:      	int3
  207e4f:      	int3

0000000000207e50 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1>:
  207e50:      	pushq	%rbx
  207e51:      	subq	$0x20, %rsp
  207e55:      	movq	(%rdi), %rax
  207e58:      	testq	%rax, %rax
  207e5b:      	jne	0x207f75 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x125>
  207e61:      	movl	$0x1, %ecx
  207e66:      	xorl	%eax, %eax
  207e68:      	lock
  207e69:      	cmpxchgq	%rcx, (%rdi)
  207e6d:      	jne	0x207f75 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x125>
  207e73:      	movq	%rdi, 0x10(%rsp)
  207e78:      	leaq	0x8521(%rip), %rax      # 0x2103a0 <<kernel::gdt::TSS as core::ops::deref::Deref>::deref::__static_ref_initialize::STACK::hc1bbe07c8024a132>
  207e7f:      	movq	%rax, %rcx
  207e82:      	shrq	$0x2f, %rcx
  207e86:      	je	0x207ea8 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x58>
  207e88:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  207e8e:      	je	0x207ea8 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x58>
  207e90:      	leaq	0x8509(%rip), %rax      # 0x2103a0 <<kernel::gdt::TSS as core::ops::deref::Deref>::deref::__static_ref_initialize::STACK::hc1bbe07c8024a132>
  207e97:      	cmpl	$0x1, %ecx
  207e9a:      	jne	0x207fc3 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x173>
  207ea0:      	shlq	$0x10, %rax
  207ea4:      	sarq	$0x10, %rax
  207ea8:      	addq	$0x5000, %rax           # imm = 0x5000
  207eae:      	movq	%rax, %rcx
  207eb1:      	shrq	$0x2f, %rcx
  207eb5:      	je	0x207ed0 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x80>
  207eb7:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  207ebd:      	je	0x207ed0 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x80>
  207ebf:      	cmpl	$0x1, %ecx
  207ec2:      	jne	0x207fc3 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x173>
  207ec8:      	shlq	$0x10, %rax
  207ecc:      	sarq	$0x10, %rax
  207ed0:      	movl	$0x1, 0x8(%rdi)
  207ed7:      	leaq	0xc(%rdi), %rbx
  207edb:      	movq	$0x0, 0xc(%rdi)
  207ee3:      	movq	$0x0, 0x14(%rdi)
  207eeb:      	movq	$0x0, 0x1c(%rdi)
  207ef3:      	movq	$0x0, 0x24(%rdi)
  207efb:      	movl	$0x0, 0x2c(%rdi)
  207f02:      	movq	%rax, 0x30(%rdi)
  207f06:      	movq	$0x0, 0x38(%rdi)
  207f0e:      	movq	$0x0, 0x40(%rdi)
  207f16:      	movq	$0x0, 0x48(%rdi)
  207f1e:      	movq	$0x0, 0x50(%rdi)
  207f26:      	movq	$0x0, 0x58(%rdi)
  207f2e:      	movq	$0x0, 0x60(%rdi)
  207f36:      	movq	$0x0, 0x68(%rdi)
  207f3e:      	movl	$0x680000, 0x70(%rdi)   # imm = 0x680000
  207f45:      	movb	$0x0, 0x18(%rsp)
  207f4a:      	movl	$0x2, %eax
  207f4f:      	xchgq	%rax, (%rdi)
  207f52:      	leaq	0x10(%rsp), %rdi
  207f57:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  207f5c:      	movq	%rbx, %rax
  207f5f:      	addq	$0x20, %rsp
  207f63:      	popq	%rbx
  207f64:      	retq
  207f65:      	nopw	%cs:(%rax,%rax)
  207f70:      	pause
  207f72:      	movq	(%rdi), %rax
  207f75:      	cmpq	$0x1, %rax
  207f79:      	je	0x207f70 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x120>
  207f7b:      	cmpq	$0x2, %rax
  207f7f:      	jne	0x207f8e <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x13e>
  207f81:      	addq	$0xc, %rdi
  207f85:      	movq	%rdi, %rax
  207f88:      	addq	$0x20, %rsp
  207f8c:      	popq	%rbx
  207f8d:      	retq
  207f8e:      	testq	%rax, %rax
  207f91:      	jne	0x207fab <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1+0x15b>
  207f93:      	leaq	-0x740d(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  207f9a:      	leaq	0x6d0f(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  207fa1:      	movl	$0x28, %esi
  207fa6:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207fab:      	leaq	-0x73a2(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  207fb2:      	leaq	0x6d0f(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  207fb9:      	movl	$0x11, %esi
  207fbe:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  207fc3:      	movq	%rax, 0x8(%rsp)
  207fc8:      	leaq	-0x734f(%rip), %rdi     # 0x200c80 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x70>
  207fcf:      	leaq	0x6d0a(%rip), %rcx      # 0x20ece0 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x18>
  207fd6:      	leaq	0x6d23(%rip), %r8       # 0x20ed00 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x38>
  207fdd:      	leaq	0x8(%rsp), %rdx
  207fe2:      	movl	$0x4a, %esi
  207fe7:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  207fec:      	int3
  207fed:      	int3
  207fee:      	int3
  207fef:      	int3

0000000000207ff0 <spin::once::Once<T>::call_once::hf790107e50caeeb2>:
  207ff0:      	pushq	%r14
  207ff2:      	pushq	%rbx
  207ff3:      	subq	$0x18, %rsp
  207ff7:      	movq	(%rdi), %rax
  207ffa:      	testq	%rax, %rax
  207ffd:      	jne	0x2080e5 <spin::once::Once<T>::call_once::hf790107e50caeeb2+0xf5>
  208003:      	movl	$0x1, %ecx
  208008:      	xorl	%eax, %eax
  20800a:      	lock
  20800b:      	cmpxchgq	%rcx, (%rdi)
  20800f:      	jne	0x2080e5 <spin::once::Once<T>::call_once::hf790107e50caeeb2+0xf5>
  208015:      	movq	%rdi, 0x8(%rsp)
  20801a:      	leaq	0xd37f(%rip), %rax      # 0x2153a0 <<kernel::gdt::TSS as core::ops::deref::Deref>::deref::__stability::LAZY::ha8188ee4c5132a8a.llvm.14347507059935776456>
  208021:      	movq	%rdi, %rbx
  208024:      	movq	%rax, %rdi
  208027:      	callq	0x207e50 <spin::once::Once<T>::call_once::hd2a437cffc7bbdf1>
  20802c:      	movq	%rax, %rcx
  20802f:      	shrq	$0x20, %rcx
  208033:      	movl	%eax, %edx
  208035:      	andl	$0xfffffc, %edx         # imm = 0xFFFFFC
  20803b:      	shlq	$0x10, %rdx
  20803f:      	andl	$0xff000000, %eax       # imm = 0xFF000000
  208044:      	shlq	$0x20, %rax
  208048:      	orq	%rdx, %rax
  20804b:      	movabsq	$0x890000000067, %rdx   # imm = 0x890000000067
  208055:      	orq	%rax, %rdx
  208058:      	movq	$0x1, 0x8(%rbx)
  208060:      	leaq	0x10(%rbx), %r14
  208064:      	movq	$0x0, 0x10(%rbx)
  20806c:      	movabsq	$0xaf9b000000ffff, %rax # imm = 0xAF9B000000FFFF
  208076:      	movq	%rax, 0x18(%rbx)
  20807a:      	movq	%rdx, 0x20(%rbx)
  20807e:      	movq	%rcx, 0x28(%rbx)
  208082:      	movq	$0x0, 0x30(%rbx)
  20808a:      	movq	$0x0, 0x38(%rbx)
  208092:      	movq	$0x0, 0x40(%rbx)
  20809a:      	movq	$0x0, 0x48(%rbx)
  2080a2:      	movq	$0x4, 0x50(%rbx)
  2080aa:      	movl	$0x100008, 0x58(%rbx)   # imm = 0x100008
  2080b1:      	movb	$0x0, 0x10(%rsp)
  2080b6:      	movl	$0x2, %eax
  2080bb:      	xchgq	%rax, (%rbx)
  2080be:      	leaq	0x8(%rsp), %rdi
  2080c3:      	callq	0x20a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>
  2080c8:      	movq	%r14, %rax
  2080cb:      	addq	$0x18, %rsp
  2080cf:      	popq	%rbx
  2080d0:      	popq	%r14
  2080d2:      	retq
  2080d3:      	nopw	%cs:(%rax,%rax)
  2080e0:      	pause
  2080e2:      	movq	(%rdi), %rax
  2080e5:      	cmpq	$0x1, %rax
  2080e9:      	je	0x2080e0 <spin::once::Once<T>::call_once::hf790107e50caeeb2+0xf0>
  2080eb:      	cmpq	$0x2, %rax
  2080ef:      	jne	0x208100 <spin::once::Once<T>::call_once::hf790107e50caeeb2+0x110>
  2080f1:      	addq	$0x10, %rdi
  2080f5:      	movq	%rdi, %rax
  2080f8:      	addq	$0x18, %rsp
  2080fc:      	popq	%rbx
  2080fd:      	popq	%r14
  2080ff:      	retq
  208100:      	testq	%rax, %rax
  208103:      	jne	0x20811d <spin::once::Once<T>::call_once::hf790107e50caeeb2+0x12d>
  208105:      	leaq	-0x757f(%rip), %rdi     # 0x200b8d <anon.5a3d5bd12bdd766c33caf675178fbc64.4.llvm.4359899688343239276>
  20810c:      	leaq	0x6b9d(%rip), %rdx      # 0x20ecb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.6.llvm.4359899688343239276>
  208113:      	movl	$0x28, %esi
  208118:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  20811d:      	leaq	-0x7514(%rip), %rdi     # 0x200c10 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276>
  208124:      	leaq	0x6b9d(%rip), %rdx      # 0x20ecc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276>
  20812b:      	movl	$0x11, %esi
  208130:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  208135:      	int3
  208136:      	int3
  208137:      	int3
  208138:      	int3
  208139:      	int3
  20813a:      	int3
  20813b:      	int3
  20813c:      	int3
  20813d:      	int3
  20813e:      	int3
  20813f:      	int3

0000000000208140 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b>:
  208140:      	movzbl	%sil, %esi
  208144:      	leal	-0x1c(%rsi), %eax
  208147:      	cmpl	$0x3a, %eax
  20814a:      	ja	0x2085ce <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x48e>
  208150:      	leaq	-0x748b(%rip), %rdi     # 0x200ccc <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0xbc>
  208157:      	movslq	(%rdi,%rax,4), %rax
  20815b:      	addq	%rdi, %rax
  20815e:      	jmpq	*%rax
  208160:      	movzbl	0x1(%rdx), %eax
  208164:      	orb	(%rdx), %al
  208166:      	movzbl	%al, %eax
  208169:      	shlq	$0x25, %rax
  20816d:      	movabsq	$0x5b00000000, %rsi     # imm = 0x5B00000000
  208177:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20817c:      	testb	%cl, %cl
  20817e:      	jne	0x208600 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x4c0>
  208184:      	movzbl	0x3(%rdx), %eax
  208188:      	orb	0x2(%rdx), %al
  20818b:      	je	0x208600 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x4c0>
  208191:      	movabsq	$0x400000000, %rsi      # imm = 0x400000000
  20819b:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2081a0:      	testb	%cl, %cl
  2081a2:      	jne	0x20862b <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x4eb>
  2081a8:      	movzbl	0x3(%rdx), %eax
  2081ac:      	orb	0x2(%rdx), %al
  2081af:      	je	0x20862b <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x4eb>
  2081b5:      	movabsq	$0xe00000000, %rsi      # imm = 0xE00000000
  2081bf:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2081c4:      	testb	%cl, %cl
  2081c6:      	jne	0x208656 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x516>
  2081cc:      	movzbl	0x3(%rdx), %eax
  2081d0:      	orb	0x2(%rdx), %al
  2081d3:      	je	0x208656 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x516>
  2081d9:      	movabsq	$0x1100000000, %rsi     # imm = 0x1100000000
  2081e3:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2081e8:      	movzbl	0x1(%rdx), %eax
  2081ec:      	orb	(%rdx), %al
  2081ee:      	movabsq	$0x2d00000000, %rax     # imm = 0x2D00000000
  2081f8:      	movabsq	$0x5f00000000, %rsi     # imm = 0x5F00000000
  208202:      	cmoveq	%rax, %rsi
  208206:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20820b:      	testb	%cl, %cl
  20820d:      	jne	0x208681 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x541>
  208213:      	movzbl	0x3(%rdx), %eax
  208217:      	orb	0x2(%rdx), %al
  20821a:      	je	0x208681 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x541>
  208220:      	movabsq	$0x1800000000, %rsi     # imm = 0x1800000000
  20822a:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20822f:      	movzbl	0x1(%rdx), %eax
  208233:      	orb	(%rdx), %al
  208235:      	movzbl	%al, %eax
  208238:      	shlq	$0x24, %rax
  20823c:      	movabsq	$0x2f00000000, %rsi     # imm = 0x2F00000000
  208246:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20824b:      	testb	%cl, %cl
  20824d:      	jne	0x2086ac <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x56c>
  208253:      	movzbl	0x3(%rdx), %eax
  208257:      	orb	0x2(%rdx), %al
  20825a:      	je	0x2086ac <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x56c>
  208260:      	movabsq	$0xc00000000, %rsi      # imm = 0xC00000000
  20826a:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20826f:      	testb	%cl, %cl
  208271:      	jne	0x2086d7 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x597>
  208277:      	movzbl	0x3(%rdx), %eax
  20827b:      	orb	0x2(%rdx), %al
  20827e:      	je	0x2086d7 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x597>
  208284:      	movabsq	$0x1300000000, %rsi     # imm = 0x1300000000
  20828e:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208293:      	testb	%cl, %cl
  208295:      	jne	0x208702 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x5c2>
  20829b:      	movzbl	0x3(%rdx), %eax
  20829f:      	orb	0x2(%rdx), %al
  2082a2:      	je	0x208702 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x5c2>
  2082a8:      	movabsq	$0x800000000, %rsi      # imm = 0x800000000
  2082b2:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2082b7:      	testb	%cl, %cl
  2082b9:      	jne	0x20872d <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x5ed>
  2082bf:      	movzbl	0x3(%rdx), %eax
  2082c3:      	orb	0x2(%rdx), %al
  2082c6:      	je	0x20872d <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x5ed>
  2082cc:      	movabsq	$0x200000000, %rsi      # imm = 0x200000000
  2082d6:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2082db:      	testb	%cl, %cl
  2082dd:      	jne	0x208758 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x618>
  2082e3:      	movzbl	0x3(%rdx), %eax
  2082e7:      	orb	0x2(%rdx), %al
  2082ea:      	je	0x208758 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x618>
  2082f0:      	movabsq	$0x1600000000, %rsi     # imm = 0x1600000000
  2082fa:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2082ff:      	testb	%cl, %cl
  208301:      	jne	0x208783 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x643>
  208307:      	movzbl	0x3(%rdx), %eax
  20830b:      	orb	0x2(%rdx), %al
  20830e:      	je	0x208783 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x643>
  208314:      	movabsq	$0x1900000000, %rsi     # imm = 0x1900000000
  20831e:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208323:      	testb	%cl, %cl
  208325:      	jne	0x2087ae <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x66e>
  20832b:      	movzbl	0x3(%rdx), %eax
  20832f:      	orb	0x2(%rdx), %al
  208332:      	je	0x2087ae <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x66e>
  208338:      	movabsq	$0x600000000, %rsi      # imm = 0x600000000
  208342:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208347:      	movzbl	0x1(%rdx), %eax
  20834b:      	orb	(%rdx), %al
  20834d:      	movzbl	%al, %eax
  208350:      	shlq	$0x24, %rax
  208354:      	movabsq	$0x2c00000000, %rsi     # imm = 0x2C00000000
  20835e:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208363:      	movzbl	0x1(%rdx), %eax
  208367:      	orb	(%rdx), %al
  208369:      	movzbl	%al, %eax
  20836c:      	shlq	$0x24, %rax
  208370:      	movabsq	$0x2e00000000, %rsi     # imm = 0x2E00000000
  20837a:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20837f:      	movzbl	0x1(%rdx), %eax
  208383:      	orb	(%rdx), %al
  208385:      	movzbl	%al, %eax
  208388:      	shlq	$0x25, %rax
  20838c:      	movabsq	$0x5d00000000, %rsi     # imm = 0x5D00000000
  208396:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20839b:      	movzbl	0x1(%rdx), %eax
  20839f:      	xorl	%esi, %esi
  2083a1:      	orb	(%rdx), %al
  2083a3:      	sete	%sil
  2083a7:      	orq	$0x3a, %rsi
  2083ab:      	shlq	$0x20, %rsi
  2083af:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2083b4:      	testb	%cl, %cl
  2083b6:      	jne	0x2087d9 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x699>
  2083bc:      	movzbl	0x3(%rdx), %eax
  2083c0:      	orb	0x2(%rdx), %al
  2083c3:      	je	0x2087d9 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x699>
  2083c9:      	movabsq	$0x300000000, %rsi      # imm = 0x300000000
  2083d3:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2083d8:      	testb	%cl, %cl
  2083da:      	jne	0x208804 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x6c4>
  2083e0:      	movzbl	0x3(%rdx), %eax
  2083e4:      	orb	0x2(%rdx), %al
  2083e7:      	je	0x208804 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x6c4>
  2083ed:      	movabsq	$0x700000000, %rsi      # imm = 0x700000000
  2083f7:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2083fc:      	testb	%cl, %cl
  2083fe:      	jne	0x20882f <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x6ef>
  208404:      	movzbl	0x3(%rdx), %eax
  208408:      	orb	0x2(%rdx), %al
  20840b:      	je	0x20882f <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x6ef>
  208411:      	movabsq	$0xf00000000, %rsi      # imm = 0xF00000000
  20841b:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208420:      	movzbl	0x1(%rdx), %eax
  208424:      	orb	(%rdx), %al
  208426:      	movabsq	$0x2700000000, %rax     # imm = 0x2700000000
  208430:      	movabsq	$0x2200000000, %rsi     # imm = 0x2200000000
  20843a:      	cmoveq	%rax, %rsi
  20843e:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208443:      	testb	%cl, %cl
  208445:      	jne	0x20885a <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x71a>
  20844b:      	movzbl	0x3(%rdx), %eax
  20844f:      	orb	0x2(%rdx), %al
  208452:      	je	0x20885a <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x71a>
  208458:      	movabsq	$0x500000000, %rsi      # imm = 0x500000000
  208462:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208467:      	testb	%cl, %cl
  208469:      	jne	0x208885 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x745>
  20846f:      	movzbl	0x3(%rdx), %eax
  208473:      	orb	0x2(%rdx), %al
  208476:      	je	0x208885 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x745>
  20847c:      	movabsq	$0x1700000000, %rsi     # imm = 0x1700000000
  208486:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20848b:      	testb	%cl, %cl
  20848d:      	jne	0x2088b0 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x770>
  208493:      	movzbl	0x3(%rdx), %eax
  208497:      	orb	0x2(%rdx), %al
  20849a:      	je	0x2088b0 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x770>
  2084a0:      	movabsq	$0x1000000000, %rsi     # imm = 0x1000000000
  2084aa:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2084af:      	testb	%cl, %cl
  2084b1:      	jne	0x2088db <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x79b>
  2084b7:      	movzbl	0x3(%rdx), %eax
  2084bb:      	orb	0x2(%rdx), %al
  2084be:      	je	0x2088db <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x79b>
  2084c4:      	movabsq	$0x900000000, %rsi      # imm = 0x900000000
  2084ce:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2084d3:      	testb	%cl, %cl
  2084d5:      	jne	0x208906 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x7c6>
  2084db:      	movzbl	0x3(%rdx), %eax
  2084df:      	orb	0x2(%rdx), %al
  2084e2:      	je	0x208906 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x7c6>
  2084e8:      	movabsq	$0x1200000000, %rsi     # imm = 0x1200000000
  2084f2:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2084f7:      	testb	%cl, %cl
  2084f9:      	jne	0x208931 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x7f1>
  2084ff:      	movzbl	0x3(%rdx), %eax
  208503:      	orb	0x2(%rdx), %al
  208506:      	je	0x208931 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x7f1>
  20850c:      	movabsq	$0x1500000000, %rsi     # imm = 0x1500000000
  208516:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20851b:      	movzbl	0x1(%rdx), %eax
  20851f:      	orb	(%rdx), %al
  208521:      	movabsq	$0x3d00000000, %rax     # imm = 0x3D00000000
  20852b:      	movabsq	$0x2b00000000, %rsi     # imm = 0x2B00000000
  208535:      	cmoveq	%rax, %rsi
  208539:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  20853e:      	testb	%cl, %cl
  208540:      	jne	0x20895c <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x81c>
  208546:      	movzbl	0x3(%rdx), %eax
  20854a:      	orb	0x2(%rdx), %al
  20854d:      	je	0x20895c <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x81c>
  208553:      	movabsq	$0x1400000000, %rsi     # imm = 0x1400000000
  20855d:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208562:      	testb	%cl, %cl
  208564:      	jne	0x208984 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x844>
  20856a:      	movzbl	0x3(%rdx), %eax
  20856e:      	orb	0x2(%rdx), %al
  208571:      	je	0x208984 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x844>
  208577:      	movabsq	$0xb00000000, %rsi      # imm = 0xB00000000
  208581:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  208586:      	testb	%cl, %cl
  208588:      	jne	0x2089ac <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x86c>
  20858e:      	movzbl	0x3(%rdx), %eax
  208592:      	orb	0x2(%rdx), %al
  208595:      	je	0x2089ac <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x86c>
  20859b:      	movabsq	$0xa00000000, %rsi      # imm = 0xA00000000
  2085a5:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2085aa:      	testb	%cl, %cl
  2085ac:      	jne	0x2089d4 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x894>
  2085b2:      	movzbl	0x3(%rdx), %eax
  2085b6:      	orb	0x2(%rdx), %al
  2085b9:      	je	0x2089d4 <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x894>
  2085bf:      	movabsq	$0x1a00000000, %rsi     # imm = 0x1A00000000
  2085c9:      	jmp	0x2089fd <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8bd>
  2085ce:      	pushq	%rax
  2085cf:      	movzbl	%cl, %ecx
  2085d2:      	leaq	0x7(%rsp), %rdi
  2085d7:      	callq	0x208dd0 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5>
  2085dc:      	movq	%rax, %rcx
  2085df:      	movabsq	$-0x100000000, %rsi     # imm = 0xFFFFFFFF00000000
  2085e9:      	andq	%rax, %rsi
  2085ec:      	movzbl	%cl, %eax
  2085ef:      	andl	$0xffffff00, %ecx       # imm = 0xFFFFFF00
  2085f5:      	addq	$0x8, %rsp
  2085f9:      	orq	%rcx, %rax
  2085fc:      	orq	%rsi, %rax
  2085ff:      	retq
  208600:      	movzbl	0x1(%rdx), %eax
  208604:      	orb	(%rdx), %al
  208606:      	setne	%al
  208609:      	cmpb	$0x0, 0x5(%rdx)
  20860d:      	setne	%cl
  208610:      	xorb	%al, %cl
  208612:      	xorb	$0x1, %cl
  208615:      	movzbl	%cl, %eax
  208618:      	shlq	$0x25, %rax
  20861c:      	movabsq	$0x4400000000, %rsi     # imm = 0x4400000000
  208626:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20862b:      	movzbl	0x1(%rdx), %eax
  20862f:      	orb	(%rdx), %al
  208631:      	setne	%al
  208634:      	cmpb	$0x0, 0x5(%rdx)
  208638:      	setne	%cl
  20863b:      	xorb	%al, %cl
  20863d:      	xorb	$0x1, %cl
  208640:      	movzbl	%cl, %eax
  208643:      	shlq	$0x25, %rax
  208647:      	movabsq	$0x4e00000000, %rsi     # imm = 0x4E00000000
  208651:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208656:      	movzbl	0x1(%rdx), %eax
  20865a:      	orb	(%rdx), %al
  20865c:      	setne	%al
  20865f:      	cmpb	$0x0, 0x5(%rdx)
  208663:      	setne	%cl
  208666:      	xorb	%al, %cl
  208668:      	xorb	$0x1, %cl
  20866b:      	movzbl	%cl, %eax
  20866e:      	shlq	$0x25, %rax
  208672:      	movabsq	$0x5100000000, %rsi     # imm = 0x5100000000
  20867c:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208681:      	movzbl	0x1(%rdx), %eax
  208685:      	orb	(%rdx), %al
  208687:      	setne	%al
  20868a:      	cmpb	$0x0, 0x5(%rdx)
  20868e:      	setne	%cl
  208691:      	xorb	%al, %cl
  208693:      	xorb	$0x1, %cl
  208696:      	movzbl	%cl, %eax
  208699:      	shlq	$0x25, %rax
  20869d:      	movabsq	$0x5800000000, %rsi     # imm = 0x5800000000
  2086a7:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2086ac:      	movzbl	0x1(%rdx), %eax
  2086b0:      	orb	(%rdx), %al
  2086b2:      	setne	%al
  2086b5:      	cmpb	$0x0, 0x5(%rdx)
  2086b9:      	setne	%cl
  2086bc:      	xorb	%al, %cl
  2086be:      	xorb	$0x1, %cl
  2086c1:      	movzbl	%cl, %eax
  2086c4:      	shlq	$0x25, %rax
  2086c8:      	movabsq	$0x4c00000000, %rsi     # imm = 0x4C00000000
  2086d2:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2086d7:      	movzbl	0x1(%rdx), %eax
  2086db:      	orb	(%rdx), %al
  2086dd:      	setne	%al
  2086e0:      	cmpb	$0x0, 0x5(%rdx)
  2086e4:      	setne	%cl
  2086e7:      	xorb	%al, %cl
  2086e9:      	xorb	$0x1, %cl
  2086ec:      	movzbl	%cl, %eax
  2086ef:      	shlq	$0x25, %rax
  2086f3:      	movabsq	$0x5300000000, %rsi     # imm = 0x5300000000
  2086fd:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208702:      	movzbl	0x1(%rdx), %eax
  208706:      	orb	(%rdx), %al
  208708:      	setne	%al
  20870b:      	cmpb	$0x0, 0x5(%rdx)
  20870f:      	setne	%cl
  208712:      	xorb	%al, %cl
  208714:      	xorb	$0x1, %cl
  208717:      	movzbl	%cl, %eax
  20871a:      	shlq	$0x25, %rax
  20871e:      	movabsq	$0x4800000000, %rsi     # imm = 0x4800000000
  208728:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20872d:      	movzbl	0x1(%rdx), %eax
  208731:      	orb	(%rdx), %al
  208733:      	setne	%al
  208736:      	cmpb	$0x0, 0x5(%rdx)
  20873a:      	setne	%cl
  20873d:      	xorb	%al, %cl
  20873f:      	xorb	$0x1, %cl
  208742:      	movzbl	%cl, %eax
  208745:      	shlq	$0x25, %rax
  208749:      	movabsq	$0x4200000000, %rsi     # imm = 0x4200000000
  208753:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208758:      	movzbl	0x1(%rdx), %eax
  20875c:      	orb	(%rdx), %al
  20875e:      	setne	%al
  208761:      	cmpb	$0x0, 0x5(%rdx)
  208765:      	setne	%cl
  208768:      	xorb	%al, %cl
  20876a:      	xorb	$0x1, %cl
  20876d:      	movzbl	%cl, %eax
  208770:      	shlq	$0x25, %rax
  208774:      	movabsq	$0x5600000000, %rsi     # imm = 0x5600000000
  20877e:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208783:      	movzbl	0x1(%rdx), %eax
  208787:      	orb	(%rdx), %al
  208789:      	setne	%al
  20878c:      	cmpb	$0x0, 0x5(%rdx)
  208790:      	setne	%cl
  208793:      	xorb	%al, %cl
  208795:      	xorb	$0x1, %cl
  208798:      	movzbl	%cl, %eax
  20879b:      	shlq	$0x25, %rax
  20879f:      	movabsq	$0x5900000000, %rsi     # imm = 0x5900000000
  2087a9:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2087ae:      	movzbl	0x1(%rdx), %eax
  2087b2:      	orb	(%rdx), %al
  2087b4:      	setne	%al
  2087b7:      	cmpb	$0x0, 0x5(%rdx)
  2087bb:      	setne	%cl
  2087be:      	xorb	%al, %cl
  2087c0:      	xorb	$0x1, %cl
  2087c3:      	movzbl	%cl, %eax
  2087c6:      	shlq	$0x25, %rax
  2087ca:      	movabsq	$0x4600000000, %rsi     # imm = 0x4600000000
  2087d4:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2087d9:      	movzbl	0x1(%rdx), %eax
  2087dd:      	orb	(%rdx), %al
  2087df:      	setne	%al
  2087e2:      	cmpb	$0x0, 0x5(%rdx)
  2087e6:      	setne	%cl
  2087e9:      	xorb	%al, %cl
  2087eb:      	xorb	$0x1, %cl
  2087ee:      	movzbl	%cl, %eax
  2087f1:      	shlq	$0x25, %rax
  2087f5:      	movabsq	$0x4300000000, %rsi     # imm = 0x4300000000
  2087ff:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208804:      	movzbl	0x1(%rdx), %eax
  208808:      	orb	(%rdx), %al
  20880a:      	setne	%al
  20880d:      	cmpb	$0x0, 0x5(%rdx)
  208811:      	setne	%cl
  208814:      	xorb	%al, %cl
  208816:      	xorb	$0x1, %cl
  208819:      	movzbl	%cl, %eax
  20881c:      	shlq	$0x25, %rax
  208820:      	movabsq	$0x4700000000, %rsi     # imm = 0x4700000000
  20882a:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20882f:      	movzbl	0x1(%rdx), %eax
  208833:      	orb	(%rdx), %al
  208835:      	setne	%al
  208838:      	cmpb	$0x0, 0x5(%rdx)
  20883c:      	setne	%cl
  20883f:      	xorb	%al, %cl
  208841:      	xorb	$0x1, %cl
  208844:      	movzbl	%cl, %eax
  208847:      	shlq	$0x25, %rax
  20884b:      	movabsq	$0x4f00000000, %rsi     # imm = 0x4F00000000
  208855:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20885a:      	movzbl	0x1(%rdx), %eax
  20885e:      	orb	(%rdx), %al
  208860:      	setne	%al
  208863:      	cmpb	$0x0, 0x5(%rdx)
  208867:      	setne	%cl
  20886a:      	xorb	%al, %cl
  20886c:      	xorb	$0x1, %cl
  20886f:      	movzbl	%cl, %eax
  208872:      	shlq	$0x25, %rax
  208876:      	movabsq	$0x4500000000, %rsi     # imm = 0x4500000000
  208880:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208885:      	movzbl	0x1(%rdx), %eax
  208889:      	orb	(%rdx), %al
  20888b:      	setne	%al
  20888e:      	cmpb	$0x0, 0x5(%rdx)
  208892:      	setne	%cl
  208895:      	xorb	%al, %cl
  208897:      	xorb	$0x1, %cl
  20889a:      	movzbl	%cl, %eax
  20889d:      	shlq	$0x25, %rax
  2088a1:      	movabsq	$0x5700000000, %rsi     # imm = 0x5700000000
  2088ab:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2088b0:      	movzbl	0x1(%rdx), %eax
  2088b4:      	orb	(%rdx), %al
  2088b6:      	setne	%al
  2088b9:      	cmpb	$0x0, 0x5(%rdx)
  2088bd:      	setne	%cl
  2088c0:      	xorb	%al, %cl
  2088c2:      	xorb	$0x1, %cl
  2088c5:      	movzbl	%cl, %eax
  2088c8:      	shlq	$0x25, %rax
  2088cc:      	movabsq	$0x5000000000, %rsi     # imm = 0x5000000000
  2088d6:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2088db:      	movzbl	0x1(%rdx), %eax
  2088df:      	orb	(%rdx), %al
  2088e1:      	setne	%al
  2088e4:      	cmpb	$0x0, 0x5(%rdx)
  2088e8:      	setne	%cl
  2088eb:      	xorb	%al, %cl
  2088ed:      	xorb	$0x1, %cl
  2088f0:      	movzbl	%cl, %eax
  2088f3:      	shlq	$0x25, %rax
  2088f7:      	movabsq	$0x4900000000, %rsi     # imm = 0x4900000000
  208901:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208906:      	movzbl	0x1(%rdx), %eax
  20890a:      	orb	(%rdx), %al
  20890c:      	setne	%al
  20890f:      	cmpb	$0x0, 0x5(%rdx)
  208913:      	setne	%cl
  208916:      	xorb	%al, %cl
  208918:      	xorb	$0x1, %cl
  20891b:      	movzbl	%cl, %eax
  20891e:      	shlq	$0x25, %rax
  208922:      	movabsq	$0x5200000000, %rsi     # imm = 0x5200000000
  20892c:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208931:      	movzbl	0x1(%rdx), %eax
  208935:      	orb	(%rdx), %al
  208937:      	setne	%al
  20893a:      	cmpb	$0x0, 0x5(%rdx)
  20893e:      	setne	%cl
  208941:      	xorb	%al, %cl
  208943:      	xorb	$0x1, %cl
  208946:      	movzbl	%cl, %eax
  208949:      	shlq	$0x25, %rax
  20894d:      	movabsq	$0x5500000000, %rsi     # imm = 0x5500000000
  208957:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  20895c:      	movzbl	0x1(%rdx), %eax
  208960:      	orb	(%rdx), %al
  208962:      	setne	%al
  208965:      	cmpb	$0x0, 0x5(%rdx)
  208969:      	setne	%cl
  20896c:      	xorb	%al, %cl
  20896e:      	xorb	$0x1, %cl
  208971:      	movzbl	%cl, %eax
  208974:      	shlq	$0x25, %rax
  208978:      	movabsq	$0x5400000000, %rsi     # imm = 0x5400000000
  208982:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  208984:      	movzbl	0x1(%rdx), %eax
  208988:      	orb	(%rdx), %al
  20898a:      	setne	%al
  20898d:      	cmpb	$0x0, 0x5(%rdx)
  208991:      	setne	%cl
  208994:      	xorb	%al, %cl
  208996:      	xorb	$0x1, %cl
  208999:      	movzbl	%cl, %eax
  20899c:      	shlq	$0x25, %rax
  2089a0:      	movabsq	$0x4b00000000, %rsi     # imm = 0x4B00000000
  2089aa:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2089ac:      	movzbl	0x1(%rdx), %eax
  2089b0:      	orb	(%rdx), %al
  2089b2:      	setne	%al
  2089b5:      	cmpb	$0x0, 0x5(%rdx)
  2089b9:      	setne	%cl
  2089bc:      	xorb	%al, %cl
  2089be:      	xorb	$0x1, %cl
  2089c1:      	movzbl	%cl, %eax
  2089c4:      	shlq	$0x25, %rax
  2089c8:      	movabsq	$0x4a00000000, %rsi     # imm = 0x4A00000000
  2089d2:      	jmp	0x2089fa <<pc_keyboard::layouts::dvorak104::Dvorak104Key as pc_keyboard::KeyboardLayout>::map_keycode::h033cd8159d2c0e6b+0x8ba>
  2089d4:      	movzbl	0x1(%rdx), %eax
  2089d8:      	orb	(%rdx), %al
  2089da:      	setne	%al
  2089dd:      	cmpb	$0x0, 0x5(%rdx)
  2089e1:      	setne	%cl
  2089e4:      	xorb	%al, %cl
  2089e6:      	xorb	$0x1, %cl
  2089e9:      	movzbl	%cl, %eax
  2089ec:      	shlq	$0x25, %rax
  2089f0:      	movabsq	$0x5a00000000, %rsi     # imm = 0x5A00000000
  2089fa:      	orq	%rax, %rsi
  2089fd:      	movl	$0x1, %eax
  208a02:      	xorl	%ecx, %ecx
  208a04:      	orq	%rcx, %rax
  208a07:      	orq	%rsi, %rax
  208a0a:      	retq
  208a0b:      	int3
  208a0c:      	int3
  208a0d:      	int3
  208a0e:      	int3
  208a0f:      	int3

0000000000208a10 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f>:
  208a10:      	movzbl	%dil, %ecx
  208a14:      	movb	$0x1, %al
  208a16:      	movb	$0x3, %dl
  208a18:      	decl	%ecx
  208a1a:      	cmpl	$0x57, %ecx
  208a1d:      	ja	0x208c2a <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x21a>
  208a23:      	leaq	-0x7c72(%rip), %rsi     # 0x200db8 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x1a8>
  208a2a:      	movslq	(%rsi,%rcx,4), %rcx
  208a2e:      	addq	%rsi, %rcx
  208a31:      	jmpq	*%rcx
  208a33:      	xorl	%edx, %edx
  208a35:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a3a:      	movb	$0xb, %dl
  208a3c:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a41:      	movb	$0x5a, %dl
  208a43:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a48:      	movb	$0x5b, %dl
  208a4a:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a4f:      	movb	$0x3b, %dl
  208a51:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a56:      	movb	$0x9, %dl
  208a58:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a5d:      	movb	$0xe, %dl
  208a5f:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a64:      	movb	$0x3a, %dl
  208a66:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a6b:      	movb	$0x4a, %dl
  208a6d:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a72:      	movb	$0x34, %dl
  208a74:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a79:      	movb	$0x53, %dl
  208a7b:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a80:      	movb	$0x5f, %dl
  208a82:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a87:      	movb	$0x56, %dl
  208a89:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a8e:      	movb	$0x52, %dl
  208a90:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a95:      	movb	$0x33, %dl
  208a97:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208a9c:      	movb	$0x46, %dl
  208a9e:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208aa3:      	movb	$0x68, %dl
  208aa5:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208aaa:      	movb	$0x45, %dl
  208aac:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ab1:      	movb	$0x43, %dl
  208ab3:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ab8:      	movb	$0x4d, %dl
  208aba:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208abf:      	movb	$0x25, %dl
  208ac1:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ac6:      	movb	$0x29, %dl
  208ac8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208acd:      	movb	$0x2c, %dl
  208acf:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ad4:      	movb	$0x1d, %dl
  208ad6:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208adb:      	movb	$0x30, %dl
  208add:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ae2:      	movb	$0x7, %dl
  208ae4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ae9:      	movb	$0x2e, %dl
  208aeb:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208af0:      	movb	$0x1a, %dl
  208af2:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208af7:      	movb	$0x40, %dl
  208af9:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208afe:      	movb	$0x59, %dl
  208b00:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b05:      	movb	$0x48, %dl
  208b07:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b0c:      	movb	$0x47, %dl
  208b0e:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b13:      	movb	$0x2d, %dl
  208b15:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b1a:      	movb	$0x1c, %dl
  208b1c:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b21:      	movb	$0x2a, %dl
  208b23:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b28:      	movb	$0x12, %dl
  208b2a:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b2f:      	movb	$0x5d, %dl
  208b31:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b36:      	movb	$0x3e, %dl
  208b38:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b3d:      	movb	$0x15, %dl
  208b3f:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b44:      	movb	$0x1b, %dl
  208b46:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b4b:      	movb	$0xf, %dl
  208b4d:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b52:      	movb	$0x2f, %dl
  208b54:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b59:      	movb	$0x11, %dl
  208b5b:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b60:      	movb	$0x16, %dl
  208b62:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b67:      	movb	$0x17, %dl
  208b69:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b6e:      	movb	$0x4e, %dl
  208b70:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b75:      	movb	$0x1e, %dl
  208b77:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b7c:      	movb	$0x26, %dl
  208b7e:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b83:      	movb	$0x51, %dl
  208b85:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b8a:      	movb	$0x3d, %dl
  208b8c:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b91:      	movb	$0x13, %dl
  208b93:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b98:      	movb	$0x4f, %dl
  208b9a:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208b9f:      	movb	$0x14, %dl
  208ba1:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208ba6:      	movb	$0x44, %dl
  208ba8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208baa:      	movb	$0x19, %dl
  208bac:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bae:      	movb	$0x57, %dl
  208bb0:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bb2:      	movb	$0x49, %dl
  208bb4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bb6:      	movb	$0x69, %dl
  208bb8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bba:      	movb	$0x18, %dl
  208bbc:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bbe:      	movb	$0x28, %dl
  208bc0:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bc2:      	movb	$0x41, %dl
  208bc4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bc6:      	movb	$0x27, %dl
  208bc8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bca:      	movb	$0x24, %dl
  208bcc:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bce:      	movb	$0x4c, %dl
  208bd0:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bd2:      	movb	$0x2b, %dl
  208bd4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bd6:      	movb	$0x3c, %dl
  208bd8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bda:      	movb	$0x5, %dl
  208bdc:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bde:      	movb	$0x6, %dl
  208be0:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208be2:      	movb	$0x39, %dl
  208be4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208be6:      	movb	$0x60, %dl
  208be8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bea:      	movb	$0x32, %dl
  208bec:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bee:      	movb	$0x31, %dl
  208bf0:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bf2:      	movb	$0x8, %dl
  208bf4:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bf6:      	movb	$0x55, %dl
  208bf8:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bfa:      	movb	$0x42, %dl
  208bfc:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208bfe:      	movb	$0x3f, %dl
  208c00:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c02:      	movb	$0x50, %dl
  208c04:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c06:      	movb	$0xa, %dl
  208c08:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c0a:      	movb	$0x2, %dl
  208c0c:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c0e:      	movb	$0x22, %dl
  208c10:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c12:      	movb	$0xc, %dl
  208c14:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c16:      	movb	$0x54, %dl
  208c18:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c1a:      	movb	$0x4, %dl
  208c1c:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c1e:      	movb	$0x38, %dl
  208c20:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c22:      	movb	$0x1, %dl
  208c24:      	jmp	0x208c28 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f+0x218>
  208c26:      	movb	$0x4b, %dl
  208c28:      	xorl	%eax, %eax
  208c2a:      	retq
  208c2b:      	int3
  208c2c:      	int3
  208c2d:      	int3
  208c2e:      	int3
  208c2f:      	int3

0000000000208c30 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71>:
  208c30:      	movzbl	%dil, %ecx
  208c34:      	movb	$0x1, %al
  208c36:      	movb	$0x3, %dl
  208c38:      	addl	$-0x10, %ecx
  208c3b:      	cmpl	$0x6d, %ecx
  208c3e:      	ja	0x208cd8 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa8>
  208c44:      	leaq	-0x7d33(%rip), %rsi     # 0x200f18 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x308>
  208c4b:      	movslq	(%rsi,%rcx,4), %rcx
  208c4f:      	addq	%rsi, %rcx
  208c52:      	jmpq	*%rcx
  208c54:      	movb	$0x6f, %dl
  208c56:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c58:      	movb	$0x65, %dl
  208c5a:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c5c:      	movb	$0x66, %dl
  208c5e:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c60:      	movb	$0x5e, %dl
  208c62:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c64:      	movb	$0x1f, %dl
  208c66:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c68:      	movb	$0x6c, %dl
  208c6a:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c6c:      	movb	$0x23, %dl
  208c6e:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c70:      	movb	$0x77, %dl
  208c72:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c74:      	movb	$0x37, %dl
  208c76:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c78:      	movb	$0x67, %dl
  208c7a:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c7c:      	movb	$0x6d, %dl
  208c7e:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c80:      	movb	$0x6a, %dl
  208c82:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c84:      	movb	$0x73, %dl
  208c86:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c88:      	movb	$0x74, %dl
  208c8a:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c8c:      	movb	$0x64, %dl
  208c8e:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c90:      	movb	$0x71, %dl
  208c92:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c94:      	movb	$0x70, %dl
  208c96:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c98:      	movb	$0x35, %dl
  208c9a:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208c9c:      	movb	$0x75, %dl
  208c9e:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208ca0:      	movb	$0x7b, %dl
  208ca2:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208ca4:      	movb	$0x61, %dl
  208ca6:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208ca8:      	movb	$0x5c, %dl
  208caa:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cac:      	movb	$0x20, %dl
  208cae:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cb0:      	movb	$0x6b, %dl
  208cb2:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cb4:      	movb	$0x72, %dl
  208cb6:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cb8:      	movb	$0x21, %dl
  208cba:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cbc:      	movb	$0x76, %dl
  208cbe:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cc0:      	movb	$0x58, %dl
  208cc2:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cc4:      	movb	$0xd, %dl
  208cc6:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cc8:      	movb	$0x36, %dl
  208cca:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208ccc:      	movb	$0x63, %dl
  208cce:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cd0:      	movb	$0x62, %dl
  208cd2:      	jmp	0x208cd6 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71+0xa6>
  208cd4:      	movb	$0x6e, %dl
  208cd6:      	xorl	%eax, %eax
  208cd8:      	retq
  208cd9:      	int3
  208cda:      	int3
  208cdb:      	int3
  208cdc:      	int3
  208cdd:      	int3
  208cde:      	int3
  208cdf:      	int3

0000000000208ce0 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348>:
  208ce0:      	pushq	%rax
  208ce1:      	movzbl	(%rdi), %eax
  208ce4:      	testl	%eax, %eax
  208ce6:      	je	0x208d31 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x51>
  208ce8:      	cmpl	$0x1, %eax
  208ceb:      	je	0x208d1e <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x3e>
  208ced:      	cmpl	$0x4, %eax
  208cf0:      	jne	0x208db8 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xd8>
  208cf6:      	movb	$0x0, (%rdi)
  208cf9:      	testb	%sil, %sil
  208cfc:      	js	0x208d56 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x76>
  208cfe:      	xorl	%eax, %eax
  208d00:      	cmpb	$0x1d, %sil
  208d04:      	movl	$0x7a, %ecx
  208d09:      	movl	$0x3, %edx
  208d0e:      	cmovel	%ecx, %edx
  208d11:      	setne	%al
  208d14:      	leal	(%rax,%rax,2), %eax
  208d17:      	incl	%eax
  208d19:      	jmp	0x208dab <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xcb>
  208d1e:      	movb	$0x0, (%rdi)
  208d21:      	testb	%sil, %sil
  208d24:      	js	0x208d47 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x67>
  208d26:      	movzbl	%sil, %edi
  208d2a:      	callq	0x208c30 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71>
  208d2f:      	jmp	0x208d87 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xa7>
  208d31:      	cmpb	$-0x20, %sil
  208d35:      	je	0x208d72 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x92>
  208d37:      	movzbl	%sil, %eax
  208d3b:      	cmpl	$0xe1, %eax
  208d40:      	jne	0x208d7b <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x9b>
  208d42:      	movb	$0x4, (%rdi)
  208d45:      	jmp	0x208d75 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0x95>
  208d47:      	andb	$0x7f, %sil
  208d4b:      	movzbl	%sil, %edi
  208d4f:      	callq	0x208c30 <pc_keyboard::scancodes::set1::ScancodeSet1::map_extended_scancode::hf78e2be87c38bb71>
  208d54:      	jmp	0x208da2 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xc2>
  208d56:      	andb	$0x7f, %sil
  208d5a:      	xorl	%eax, %eax
  208d5c:      	cmpb	$0x1d, %sil
  208d60:      	setne	%al
  208d63:      	movl	$0x7a, %ecx
  208d68:      	movl	$0x3, %edx
  208d6d:      	cmovel	%ecx, %edx
  208d70:      	jmp	0x208da8 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xc8>
  208d72:      	movb	$0x1, (%rdi)
  208d75:      	movw	$0x3, %ax
  208d79:      	jmp	0x208dab <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xcb>
  208d7b:      	testb	%sil, %sil
  208d7e:      	js	0x208d95 <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xb5>
  208d80:      	movl	%eax, %edi
  208d82:      	callq	0x208a10 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f>
  208d87:      	xorl	%ecx, %ecx
  208d89:      	testb	$0x1, %al
  208d8b:      	setne	%cl
  208d8e:      	leal	(%rcx,%rcx,2), %eax
  208d91:      	incl	%eax
  208d93:      	jmp	0x208dab <<pc_keyboard::scancodes::set1::ScancodeSet1 as pc_keyboard::ScancodeSet>::advance_state::hec48617a1fe85348+0xcb>
  208d95:      	andb	$0x7f, %sil
  208d99:      	movzbl	%sil, %edi
  208d9d:      	callq	0x208a10 <pc_keyboard::scancodes::set1::ScancodeSet1::map_scancode::h49a42c71a910590f>
  208da2:      	movzbl	%al, %eax
  208da5:      	andl	$0x1, %eax
  208da8:      	shll	$0x2, %eax
  208dab:      	movzbl	%dl, %ecx
  208dae:      	shll	$0x8, %ecx
  208db1:      	movzwl	%ax, %eax
  208db4:      	orl	%ecx, %eax
  208db6:      	popq	%rcx
  208db7:      	retq
  208db8:      	leaq	-0x7cef(%rip), %rdi     # 0x2010d0 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x4c0>
  208dbf:      	leaq	0x5f52(%rip), %rdx      # 0x20ed18 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x50>
  208dc6:      	movl	$0xf, %esi
  208dcb:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>

0000000000208dd0 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5>:
  208dd0:      	movzbl	%sil, %esi
  208dd4:      	cmpb	$0x69, %sil
  208dd8:      	ja	0x2096a7 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x8d7>
  208dde:      	movb	$0x1, %al
  208de0:      	leaq	-0x7c9b(%rip), %rdi     # 0x20114c <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x53c>
  208de7:      	movslq	(%rdi,%rsi,4), %r8
  208deb:      	addq	%rdi, %r8
  208dee:      	jmpq	*%r8
  208df1:      	movabsq	$0xa00000000, %rsi      # imm = 0xA00000000
  208dfb:      	movzbl	%al, %eax
  208dfe:      	orq	%rsi, %rax
  208e01:      	retq
  208e02:      	movabsq	$0x2000000000, %rsi     # imm = 0x2000000000
  208e0c:      	movzbl	%al, %eax
  208e0f:      	orq	%rsi, %rax
  208e12:      	retq
  208e13:      	movabsq	$0x3500000000, %rsi     # imm = 0x3500000000
  208e1d:      	movzbl	%al, %eax
  208e20:      	orq	%rsi, %rax
  208e23:      	retq
  208e24:      	testb	%cl, %cl
  208e26:      	jne	0x2096b3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x8e3>
  208e2c:      	movzbl	0x3(%rdx), %ecx
  208e30:      	orb	0x2(%rdx), %cl
  208e33:      	je	0x2096b3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x8e3>
  208e39:      	movabsq	$0x200000000, %rsi      # imm = 0x200000000
  208e43:      	movzbl	%al, %eax
  208e46:      	orq	%rsi, %rax
  208e49:      	retq
  208e4a:      	testb	%cl, %cl
  208e4c:      	jne	0x2096e3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x913>
  208e52:      	movzbl	0x3(%rdx), %ecx
  208e56:      	orb	0x2(%rdx), %cl
  208e59:      	je	0x2096e3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x913>
  208e5f:      	movabsq	$0x1800000000, %rsi     # imm = 0x1800000000
  208e69:      	movzbl	%al, %eax
  208e6c:      	orq	%rsi, %rax
  208e6f:      	retq
  208e70:      	testb	%cl, %cl
  208e72:      	jne	0x209713 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x943>
  208e78:      	movzbl	0x3(%rdx), %ecx
  208e7c:      	orb	0x2(%rdx), %cl
  208e7f:      	je	0x209713 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x943>
  208e85:      	movabsq	$0x400000000, %rsi      # imm = 0x400000000
  208e8f:      	movzbl	%al, %eax
  208e92:      	orq	%rsi, %rax
  208e95:      	retq
  208e96:      	movzbl	0x4(%rdx), %eax
  208e9a:      	testb	%al, %al
  208e9c:      	movl	$0x6500, %ecx           # imm = 0x6500
  208ea1:      	movabsq	$0x3400000000, %rsi     # imm = 0x3400000000
  208eab:      	cmoveq	%rcx, %rsi
  208eaf:      	movzbl	%al, %eax
  208eb2:      	orq	%rsi, %rax
  208eb5:      	retq
  208eb6:      	testb	%cl, %cl
  208eb8:      	jne	0x209743 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x973>
  208ebe:      	movzbl	0x3(%rdx), %ecx
  208ec2:      	orb	0x2(%rdx), %cl
  208ec5:      	je	0x209743 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x973>
  208ecb:      	movabsq	$0x1300000000, %rsi     # imm = 0x1300000000
  208ed5:      	movzbl	%al, %eax
  208ed8:      	orq	%rsi, %rax
  208edb:      	retq
  208edc:      	movabsq	$0x2b00000000, %rsi     # imm = 0x2B00000000
  208ee6:      	movzbl	%al, %eax
  208ee9:      	orq	%rsi, %rax
  208eec:      	retq
  208eed:      	testb	%cl, %cl
  208eef:      	jne	0x209773 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x9a3>
  208ef5:      	movzbl	0x3(%rdx), %ecx
  208ef9:      	orb	0x2(%rdx), %cl
  208efc:      	je	0x209773 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x9a3>
  208f02:      	movabsq	$0xb00000000, %rsi      # imm = 0xB00000000
  208f0c:      	movzbl	%al, %eax
  208f0f:      	orq	%rsi, %rax
  208f12:      	retq
  208f13:      	testb	%cl, %cl
  208f15:      	jne	0x2097a3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x9d3>
  208f1b:      	movzbl	0x3(%rdx), %ecx
  208f1f:      	orb	0x2(%rdx), %cl
  208f22:      	je	0x2097a3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x9d3>
  208f28:      	movabsq	$0x500000000, %rsi      # imm = 0x500000000
  208f32:      	movzbl	%al, %eax
  208f35:      	orq	%rsi, %rax
  208f38:      	retq
  208f39:      	testb	%cl, %cl
  208f3b:      	jne	0x2097d3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa03>
  208f41:      	movzbl	0x3(%rdx), %ecx
  208f45:      	orb	0x2(%rdx), %cl
  208f48:      	je	0x2097d3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa03>
  208f4e:      	movabsq	$0x1500000000, %rsi     # imm = 0x1500000000
  208f58:      	movzbl	%al, %eax
  208f5b:      	orq	%rsi, %rax
  208f5e:      	retq
  208f5f:      	testb	%cl, %cl
  208f61:      	jne	0x209803 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa33>
  208f67:      	movzbl	0x3(%rdx), %ecx
  208f6b:      	orb	0x2(%rdx), %cl
  208f6e:      	je	0x209803 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa33>
  208f74:      	movabsq	$0x1400000000, %rsi     # imm = 0x1400000000
  208f7e:      	movzbl	%al, %eax
  208f81:      	orq	%rsi, %rax
  208f84:      	retq
  208f85:      	movzbl	0x4(%rdx), %eax
  208f89:      	testb	%al, %al
  208f8b:      	movl	$0x2000, %ecx           # imm = 0x2000
  208f90:      	movabsq	$0x3700000000, %rsi     # imm = 0x3700000000
  208f9a:      	cmoveq	%rcx, %rsi
  208f9e:      	movzbl	%al, %eax
  208fa1:      	orq	%rsi, %rax
  208fa4:      	retq
  208fa5:      	movzbl	0x4(%rdx), %eax
  208fa9:      	testb	%al, %al
  208fab:      	movl	$0x3700, %ecx           # imm = 0x3700
  208fb0:      	movabsq	$0x3300000000, %rsi     # imm = 0x3300000000
  208fba:      	cmoveq	%rcx, %rsi
  208fbe:      	movzbl	%al, %eax
  208fc1:      	orq	%rsi, %rax
  208fc4:      	retq
  208fc5:      	movzbl	0x1(%rdx), %ecx
  208fc9:      	orb	(%rdx), %cl
  208fcb:      	movabsq	$0x2d00000000, %rcx     # imm = 0x2D00000000
  208fd5:      	movabsq	$0x5f00000000, %rsi     # imm = 0x5F00000000
  208fdf:      	cmoveq	%rcx, %rsi
  208fe3:      	movzbl	%al, %eax
  208fe6:      	orq	%rsi, %rax
  208fe9:      	retq
  208fea:      	movzbl	0x1(%rdx), %ecx
  208fee:      	orb	(%rdx), %cl
  208ff0:      	movabsq	$0x3000000000, %rcx     # imm = 0x3000000000
  208ffa:      	movabsq	$0x2900000000, %rsi     # imm = 0x2900000000
  209004:      	cmoveq	%rcx, %rsi
  209008:      	movzbl	%al, %eax
  20900b:      	orq	%rsi, %rax
  20900e:      	retq
  20900f:      	testb	%cl, %cl
  209011:      	jne	0x209833 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa63>
  209017:      	movzbl	0x3(%rdx), %ecx
  20901b:      	orb	0x2(%rdx), %cl
  20901e:      	je	0x209833 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa63>
  209024:      	movabsq	$0x1000000000, %rsi     # imm = 0x1000000000
  20902e:      	movzbl	%al, %eax
  209031:      	orq	%rsi, %rax
  209034:      	retq
  209035:      	testb	%cl, %cl
  209037:      	jne	0x209863 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa93>
  20903d:      	movzbl	0x3(%rdx), %ecx
  209041:      	orb	0x2(%rdx), %cl
  209044:      	je	0x209863 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xa93>
  20904a:      	movabsq	$0x600000000, %rsi      # imm = 0x600000000
  209054:      	movzbl	%al, %eax
  209057:      	orq	%rsi, %rax
  20905a:      	retq
  20905b:      	testb	%cl, %cl
  20905d:      	jne	0x209893 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xac3>
  209063:      	movzbl	0x3(%rdx), %ecx
  209067:      	orb	0x2(%rdx), %cl
  20906a:      	je	0x209893 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xac3>
  209070:      	movabsq	$0x1200000000, %rsi     # imm = 0x1200000000
  20907a:      	movzbl	%al, %eax
  20907d:      	orq	%rsi, %rax
  209080:      	retq
  209081:      	movzbl	0x1(%rdx), %ecx
  209085:      	orb	(%rdx), %cl
  209087:      	movabsq	$0x3600000000, %rcx     # imm = 0x3600000000
  209091:      	movabsq	$0x5e00000000, %rsi     # imm = 0x5E00000000
  20909b:      	cmoveq	%rcx, %rsi
  20909f:      	movzbl	%al, %eax
  2090a2:      	orq	%rsi, %rax
  2090a5:      	retq
  2090a6:      	testb	%cl, %cl
  2090a8:      	jne	0x2098c3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xaf3>
  2090ae:      	movzbl	0x3(%rdx), %ecx
  2090b2:      	orb	0x2(%rdx), %cl
  2090b5:      	je	0x2098c3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xaf3>
  2090bb:      	movabsq	$0x1100000000, %rsi     # imm = 0x1100000000
  2090c5:      	movzbl	%al, %eax
  2090c8:      	orq	%rsi, %rax
  2090cb:      	retq
  2090cc:      	movzbl	0x1(%rdx), %ecx
  2090d0:      	orb	(%rdx), %cl
  2090d2:      	movzbl	%cl, %ecx
  2090d5:      	shlq	$0x25, %rcx
  2090d9:      	movabsq	$0x5b00000000, %rsi     # imm = 0x5B00000000
  2090e3:      	orq	%rcx, %rsi
  2090e6:      	movzbl	%al, %eax
  2090e9:      	orq	%rsi, %rax
  2090ec:      	retq
  2090ed:      	movzbl	0x1(%rdx), %ecx
  2090f1:      	orb	(%rdx), %cl
  2090f3:      	movzbl	%cl, %ecx
  2090f6:      	shlq	$0x25, %rcx
  2090fa:      	movabsq	$0x5c00000000, %rsi     # imm = 0x5C00000000
  209104:      	orq	%rcx, %rsi
  209107:      	movzbl	%al, %eax
  20910a:      	orq	%rsi, %rax
  20910d:      	retq
  20910e:      	movzbl	0x1(%rdx), %ecx
  209112:      	orb	(%rdx), %cl
  209114:      	movabsq	$0x3800000000, %rcx     # imm = 0x3800000000
  20911e:      	movabsq	$0x2a00000000, %rsi     # imm = 0x2A00000000
  209128:      	cmoveq	%rcx, %rsi
  20912c:      	movzbl	%al, %eax
  20912f:      	orq	%rsi, %rax
  209132:      	retq
  209133:      	movzbl	0x1(%rdx), %ecx
  209137:      	orb	(%rdx), %cl
  209139:      	movabsq	$0x3200000000, %rcx     # imm = 0x3200000000
  209143:      	movabsq	$0x4000000000, %rsi     # imm = 0x4000000000
  20914d:      	cmoveq	%rcx, %rsi
  209151:      	movzbl	%al, %eax
  209154:      	orq	%rsi, %rax
  209157:      	retq
  209158:      	testb	%cl, %cl
  20915a:      	jne	0x2098f3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb23>
  209160:      	movzbl	0x3(%rdx), %ecx
  209164:      	orb	0x2(%rdx), %cl
  209167:      	je	0x2098f3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb23>
  20916d:      	movabsq	$0x1900000000, %rsi     # imm = 0x1900000000
  209177:      	movzbl	%al, %eax
  20917a:      	orq	%rsi, %rax
  20917d:      	retq
  20917e:      	testb	%cl, %cl
  209180:      	jne	0x209923 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb53>
  209186:      	movzbl	0x3(%rdx), %ecx
  20918a:      	orb	0x2(%rdx), %cl
  20918d:      	je	0x209923 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb53>
  209193:      	movabsq	$0x700000000, %rsi      # imm = 0x700000000
  20919d:      	movzbl	%al, %eax
  2091a0:      	orq	%rsi, %rax
  2091a3:      	retq
  2091a4:      	movzbl	0x1(%rdx), %ecx
  2091a8:      	xorl	%edi, %edi
  2091aa:      	orb	(%rdx), %cl
  2091ac:      	sete	%dil
  2091b0:      	shlq	$0x24, %rdi
  2091b4:      	movabsq	$0x2400000000, %rsi     # imm = 0x2400000000
  2091be:      	orq	%rdi, %rsi
  2091c1:      	movzbl	%al, %eax
  2091c4:      	orq	%rsi, %rax
  2091c7:      	retq
  2091c8:      	movzbl	0x1(%rdx), %ecx
  2091cc:      	orb	(%rdx), %cl
  2091ce:      	movabsq	$0x3700000000, %rcx     # imm = 0x3700000000
  2091d8:      	movabsq	$0x2600000000, %rsi     # imm = 0x2600000000
  2091e2:      	cmoveq	%rcx, %rsi
  2091e6:      	movzbl	%al, %eax
  2091e9:      	orq	%rsi, %rax
  2091ec:      	retq
  2091ed:      	movzbl	0x1(%rdx), %ecx
  2091f1:      	xorl	%edi, %edi
  2091f3:      	orb	(%rdx), %cl
  2091f5:      	sete	%dil
  2091f9:      	shlq	$0x24, %rdi
  2091fd:      	movabsq	$0x2100000000, %rsi     # imm = 0x2100000000
  209207:      	orq	%rdi, %rsi
  20920a:      	movzbl	%al, %eax
  20920d:      	orq	%rsi, %rax
  209210:      	retq
  209211:      	movabsq	$0x2f00000000, %rsi     # imm = 0x2F00000000
  20921b:      	movzbl	%al, %eax
  20921e:      	orq	%rsi, %rax
  209221:      	retq
  209222:      	movzbl	0x1(%rdx), %ecx
  209226:      	orb	(%rdx), %cl
  209228:      	movabsq	$0x6000000000, %rcx     # imm = 0x6000000000
  209232:      	movabsq	$0x7e00000000, %rsi     # imm = 0x7E00000000
  20923c:      	cmoveq	%rcx, %rsi
  209240:      	movzbl	%al, %eax
  209243:      	orq	%rsi, %rax
  209246:      	retq
  209247:      	movzbl	0x1(%rdx), %ecx
  20924b:      	orb	(%rdx), %cl
  20924d:      	movzbl	%cl, %ecx
  209250:      	shlq	$0x25, %rcx
  209254:      	movabsq	$0x5d00000000, %rsi     # imm = 0x5D00000000
  20925e:      	orq	%rcx, %rsi
  209261:      	movzbl	%al, %eax
  209264:      	orq	%rsi, %rax
  209267:      	retq
  209268:      	movabsq	$0x1b00000000, %rsi     # imm = 0x1B00000000
  209272:      	movzbl	%al, %eax
  209275:      	orq	%rsi, %rax
  209278:      	retq
  209279:      	testb	%cl, %cl
  20927b:      	jne	0x209953 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb83>
  209281:      	movzbl	0x3(%rdx), %ecx
  209285:      	orb	0x2(%rdx), %cl
  209288:      	je	0x209953 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xb83>
  20928e:      	movabsq	$0xc00000000, %rsi      # imm = 0xC00000000
  209298:      	movzbl	%al, %eax
  20929b:      	orq	%rsi, %rax
  20929e:      	retq
  20929f:      	movzbl	0x1(%rdx), %ecx
  2092a3:      	xorl	%edi, %edi
  2092a5:      	orb	(%rdx), %cl
  2092a7:      	sete	%dil
  2092ab:      	shlq	$0x24, %rdi
  2092af:      	movabsq	$0x2300000000, %rsi     # imm = 0x2300000000
  2092b9:      	orq	%rdi, %rsi
  2092bc:      	movzbl	%al, %eax
  2092bf:      	orq	%rsi, %rax
  2092c2:      	retq
  2092c3:      	testb	%cl, %cl
  2092c5:      	jne	0x209983 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xbb3>
  2092cb:      	movzbl	0x3(%rdx), %ecx
  2092cf:      	orb	0x2(%rdx), %cl
  2092d2:      	je	0x209983 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xbb3>
  2092d8:      	movabsq	$0x100000000, %rsi      # imm = 0x100000000
  2092e2:      	movzbl	%al, %eax
  2092e5:      	orq	%rsi, %rax
  2092e8:      	retq
  2092e9:      	movabsq	$0x2d00000000, %rsi     # imm = 0x2D00000000
  2092f3:      	movzbl	%al, %eax
  2092f6:      	orq	%rsi, %rax
  2092f9:      	retq
  2092fa:      	movzbl	0x1(%rdx), %ecx
  2092fe:      	xorl	%esi, %esi
  209300:      	orb	(%rdx), %cl
  209302:      	sete	%sil
  209306:      	orq	$0x3a, %rsi
  20930a:      	shlq	$0x20, %rsi
  20930e:      	movzbl	%al, %eax
  209311:      	orq	%rsi, %rax
  209314:      	retq
  209315:      	testb	%cl, %cl
  209317:      	jne	0x2099b3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xbe3>
  20931d:      	movzbl	0x3(%rdx), %ecx
  209321:      	orb	0x2(%rdx), %cl
  209324:      	je	0x2099b3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xbe3>
  20932a:      	movabsq	$0x300000000, %rsi      # imm = 0x300000000
  209334:      	movzbl	%al, %eax
  209337:      	orq	%rsi, %rax
  20933a:      	retq
  20933b:      	movzbl	0x1(%rdx), %ecx
  20933f:      	orb	(%rdx), %cl
  209341:      	movabsq	$0x3900000000, %rcx     # imm = 0x3900000000
  20934b:      	movabsq	$0x2800000000, %rsi     # imm = 0x2800000000
  209355:      	cmoveq	%rcx, %rsi
  209359:      	movzbl	%al, %eax
  20935c:      	orq	%rsi, %rax
  20935f:      	retq
  209360:      	movabsq	$0x2a00000000, %rsi     # imm = 0x2A00000000
  20936a:      	movzbl	%al, %eax
  20936d:      	orq	%rsi, %rax
  209370:      	retq
  209371:      	movzbl	0x4(%rdx), %eax
  209375:      	testb	%al, %al
  209377:      	movl	$0x5800, %ecx           # imm = 0x5800
  20937c:      	movabsq	$0x3800000000, %rsi     # imm = 0x3800000000
  209386:      	cmoveq	%rcx, %rsi
  20938a:      	movzbl	%al, %eax
  20938d:      	orq	%rsi, %rax
  209390:      	retq
  209391:      	movzbl	0x1(%rdx), %ecx
  209395:      	xorl	%edi, %edi
  209397:      	orb	(%rdx), %cl
  209399:      	sete	%dil
  20939d:      	shlq	$0x24, %rdi
  2093a1:      	movabsq	$0x2500000000, %rsi     # imm = 0x2500000000
  2093ab:      	orq	%rdi, %rsi
  2093ae:      	movzbl	%al, %eax
  2093b1:      	orq	%rsi, %rax
  2093b4:      	retq
  2093b5:      	movzbl	0x1(%rdx), %ecx
  2093b9:      	orb	(%rdx), %cl
  2093bb:      	movabsq	$0x3d00000000, %rcx     # imm = 0x3D00000000
  2093c5:      	movabsq	$0x2b00000000, %rsi     # imm = 0x2B00000000
  2093cf:      	cmoveq	%rcx, %rsi
  2093d3:      	movzbl	%al, %eax
  2093d6:      	orq	%rsi, %rax
  2093d9:      	retq
  2093da:      	testb	%cl, %cl
  2093dc:      	jne	0x2099e3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc13>
  2093e2:      	movzbl	0x3(%rdx), %ecx
  2093e6:      	orb	0x2(%rdx), %cl
  2093e9:      	je	0x2099e3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc13>
  2093ef:      	movabsq	$0x800000000, %rsi      # imm = 0x800000000
  2093f9:      	movzbl	%al, %eax
  2093fc:      	orq	%rsi, %rax
  2093ff:      	retq
  209400:      	testb	%cl, %cl
  209402:      	jne	0x209a13 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc43>
  209408:      	movzbl	0x3(%rdx), %ecx
  20940c:      	orb	0x2(%rdx), %cl
  20940f:      	je	0x209a13 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc43>
  209415:      	movabsq	$0x1700000000, %rsi     # imm = 0x1700000000
  20941f:      	movzbl	%al, %eax
  209422:      	orq	%rsi, %rax
  209425:      	retq
  209426:      	testb	%cl, %cl
  209428:      	jne	0x209a43 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc73>
  20942e:      	movzbl	0x3(%rdx), %ecx
  209432:      	orb	0x2(%rdx), %cl
  209435:      	je	0x209a43 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xc73>
  20943b:      	movabsq	$0x1600000000, %rsi     # imm = 0x1600000000
  209445:      	movzbl	%al, %eax
  209448:      	orq	%rsi, %rax
  20944b:      	retq
  20944c:      	testb	%cl, %cl
  20944e:      	jne	0x209a73 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xca3>
  209454:      	movzbl	0x3(%rdx), %ecx
  209458:      	orb	0x2(%rdx), %cl
  20945b:      	je	0x209a73 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xca3>
  209461:      	movabsq	$0xd00000000, %rsi      # imm = 0xD00000000
  20946b:      	movzbl	%al, %eax
  20946e:      	orq	%rsi, %rax
  209471:      	retq
  209472:      	movzbl	0x4(%rdx), %eax
  209476:      	testb	%al, %al
  209478:      	movl	$0x3600, %ecx           # imm = 0x3600
  20947d:      	movabsq	$0x3100000000, %rsi     # imm = 0x3100000000
  209487:      	cmoveq	%rcx, %rsi
  20948b:      	movzbl	%al, %eax
  20948e:      	orq	%rsi, %rax
  209491:      	retq
  209492:      	movzbl	0x4(%rdx), %eax
  209496:      	testb	%al, %al
  209498:      	movl	$0x6600, %ecx           # imm = 0x6600
  20949d:      	movabsq	$0x3200000000, %rsi     # imm = 0x3200000000
  2094a7:      	cmoveq	%rcx, %rsi
  2094ab:      	movzbl	%al, %eax
  2094ae:      	orq	%rsi, %rax
  2094b1:      	retq
  2094b2:      	testb	%cl, %cl
  2094b4:      	jne	0x209aa3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xcd3>
  2094ba:      	movzbl	0x3(%rdx), %ecx
  2094be:      	orb	0x2(%rdx), %cl
  2094c1:      	je	0x209aa3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xcd3>
  2094c7:      	movabsq	$0xe00000000, %rsi      # imm = 0xE00000000
  2094d1:      	movzbl	%al, %eax
  2094d4:      	orq	%rsi, %rax
  2094d7:      	retq
  2094d8:      	testb	%cl, %cl
  2094da:      	jne	0x209ad3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd03>
  2094e0:      	movzbl	0x3(%rdx), %ecx
  2094e4:      	orb	0x2(%rdx), %cl
  2094e7:      	je	0x209ad3 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd03>
  2094ed:      	movabsq	$0xf00000000, %rsi      # imm = 0xF00000000
  2094f7:      	movzbl	%al, %eax
  2094fa:      	orq	%rsi, %rax
  2094fd:      	retq
  2094fe:      	testb	%cl, %cl
  209500:      	jne	0x209b03 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd33>
  209506:      	movzbl	0x3(%rdx), %ecx
  20950a:      	orb	0x2(%rdx), %cl
  20950d:      	je	0x209b03 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd33>
  209513:      	movabsq	$0x900000000, %rsi      # imm = 0x900000000
  20951d:      	movzbl	%al, %eax
  209520:      	orq	%rsi, %rax
  209523:      	retq
  209524:      	testb	%cl, %cl
  209526:      	jne	0x209b33 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd63>
  20952c:      	movzbl	0x3(%rdx), %ecx
  209530:      	orb	0x2(%rdx), %cl
  209533:      	je	0x209b33 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0xd63>
  209539:      	movabsq	$0x1a00000000, %rsi     # imm = 0x1A00000000
  209543:      	movzbl	%al, %eax
  209546:      	orq	%rsi, %rax
  209549:      	retq
  20954a:      	movzbl	0x4(%rdx), %eax
  20954e:      	testb	%al, %al
  209550:      	movl	$0x2100, %ecx           # imm = 0x2100
  209555:      	movabsq	$0x3900000000, %rsi     # imm = 0x3900000000
  20955f:      	cmoveq	%rcx, %rsi
  209563:      	movzbl	%al, %eax
  209566:      	orq	%rsi, %rax
  209569:      	retq
  20956a:      	movabsq	$0x7f00000000, %rsi     # imm = 0x7F00000000
  209574:      	movzbl	%al, %eax
  209577:      	orq	%rsi, %rax
  20957a:      	retq
  20957b:      	movzbl	0x1(%rdx), %ecx
  20957f:      	orb	(%rdx), %cl
  209581:      	movabsq	$0x2700000000, %rcx     # imm = 0x2700000000
  20958b:      	movabsq	$0x2200000000, %rsi     # imm = 0x2200000000
  209595:      	cmoveq	%rcx, %rsi
  209599:      	movzbl	%al, %eax
  20959c:      	orq	%rsi, %rax
  20959f:      	retq
  2095a0:      	movzbl	0x4(%rdx), %eax
  2095a4:      	testb	%al, %al
  2095a6:      	movl	$0x1f00, %ecx           # imm = 0x1F00
  2095ab:      	movabsq	$0x3000000000, %rsi     # imm = 0x3000000000
  2095b5:      	cmoveq	%rcx, %rsi
  2095b9:      	movzbl	%al, %eax
  2095bc:      	orq	%rsi, %rax
  2095bf:      	retq
  2095c0:      	movzbl	0x1(%rdx), %ecx
  2095c4:      	orb	(%rdx), %cl
  2095c6:      	movzbl	%cl, %ecx
  2095c9:      	shlq	$0x24, %rcx
  2095cd:      	movabsq	$0x2e00000000, %rsi     # imm = 0x2E00000000
  2095d7:      	orq	%rcx, %rsi
  2095da:      	movzbl	%al, %eax
  2095dd:      	orq	%rsi, %rax
  2095e0:      	retq
  2095e1:      	cmpb	$0x0, 0x4(%rdx)
  2095e5:      	movabsq	$0x7f00000000, %rcx     # imm = 0x7F00000000
  2095ef:      	movabsq	$0x2e00000000, %rsi     # imm = 0x2E00000000
  2095f9:      	cmoveq	%rcx, %rsi
  2095fd:      	movzbl	%al, %eax
  209600:      	orq	%rsi, %rax
  209603:      	retq
  209604:      	testb	%cl, %cl
  209606:      	jne	0x209615 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x845>
  209608:      	movzbl	0x3(%rdx), %ecx
  20960c:      	orb	0x2(%rdx), %cl
  20960f:      	jne	0x208df1 <<pc_keyboard::layouts::us104::Us104Key as pc_keyboard::KeyboardLayout>::map_keycode::h909c47184768fca5+0x21>
  209615:      	movzbl	0x1(%rdx), %ecx
  209619:      	orb	(%rdx), %cl
  20961b:      	setne	%cl
  20961e:      	cmpb	$0x0, 0x5(%rdx)
  209622:      	setne	%dl
  209625:      	xorb	%cl, %dl
  209627:      	xorb	$0x1, %dl
  20962a:      	movzbl	%dl, %ecx
  20962d:      	shlq	$0x25, %rcx
  209631:      	movabsq	$0x4a00000000, %rsi     # imm = 0x4A00000000
  20963b:      	orq	%rcx, %rsi
  20963e:      	movzbl	%al, %eax
  209641:      	orq	%rsi, %rax
  209644:      	retq
  209645:      	movzbl	0x4(%rdx), %eax
  209649:      	testb	%al, %al
  20964b:      	movl	$0x6700, %ecx           # imm = 0x6700
  209650:      	movabsq	$0x3600000000, %rsi     # imm = 0x3600000000
  20965a:      	cmoveq	%rcx, %rsi
  20965e:      	movzbl	%al, %eax
  209661:      	orq	%rsi, %rax
  209664:      	retq
  209665:      	movzbl	0x1(%rdx), %ecx
  209669:      	orb	(%rdx), %cl
  20966b:      	movzbl	%cl, %ecx
  20966e:      	shlq	$0x24, %rcx
  209672:      	movabsq	$0x2f00000000, %rsi     # imm = 0x2F00000000
  20967c:      	orq	%rcx, %rsi
  20967f:      	movzbl	%al, %eax
  209682:      	orq	%rsi, %rax
  209685:      	retq
  209686:      	movzbl	0x1(%rdx), %ecx
  20968a:      	orb	(%rdx), %cl
  20968c:      	movzbl	%cl, %ecx
  20968f:      	shlq	$0x24, %rcx
  209693:      	movabsq	$0x2c00000000, %rsi     # imm = 0x2C00000000
  20969d:      	orq	%rcx, %rsi
  2096a0:      	movzbl	%al, %eax
  2096a3:      	orq	%rsi, %rax
  2096a6:      	retq
  2096a7:      	shll	$0x8, %esi
  2096aa:      	xorl	%eax, %eax
  2096ac:      	movzbl	%al, %eax
  2096af:      	orq	%rsi, %rax
  2096b2:      	retq
  2096b3:      	movzbl	0x1(%rdx), %ecx
  2096b7:      	orb	(%rdx), %cl
  2096b9:      	setne	%cl
  2096bc:      	cmpb	$0x0, 0x5(%rdx)
  2096c0:      	setne	%dl
  2096c3:      	xorb	%cl, %dl
  2096c5:      	xorb	$0x1, %dl
  2096c8:      	movzbl	%dl, %ecx
  2096cb:      	shlq	$0x25, %rcx
  2096cf:      	movabsq	$0x4200000000, %rsi     # imm = 0x4200000000
  2096d9:      	orq	%rcx, %rsi
  2096dc:      	movzbl	%al, %eax
  2096df:      	orq	%rsi, %rax
  2096e2:      	retq
  2096e3:      	movzbl	0x1(%rdx), %ecx
  2096e7:      	orb	(%rdx), %cl
  2096e9:      	setne	%cl
  2096ec:      	cmpb	$0x0, 0x5(%rdx)
  2096f0:      	setne	%dl
  2096f3:      	xorb	%cl, %dl
  2096f5:      	xorb	$0x1, %dl
  2096f8:      	movzbl	%dl, %ecx
  2096fb:      	shlq	$0x25, %rcx
  2096ff:      	movabsq	$0x5800000000, %rsi     # imm = 0x5800000000
  209709:      	orq	%rcx, %rsi
  20970c:      	movzbl	%al, %eax
  20970f:      	orq	%rsi, %rax
  209712:      	retq
  209713:      	movzbl	0x1(%rdx), %ecx
  209717:      	orb	(%rdx), %cl
  209719:      	setne	%cl
  20971c:      	cmpb	$0x0, 0x5(%rdx)
  209720:      	setne	%dl
  209723:      	xorb	%cl, %dl
  209725:      	xorb	$0x1, %dl
  209728:      	movzbl	%dl, %ecx
  20972b:      	shlq	$0x25, %rcx
  20972f:      	movabsq	$0x4400000000, %rsi     # imm = 0x4400000000
  209739:      	orq	%rcx, %rsi
  20973c:      	movzbl	%al, %eax
  20973f:      	orq	%rsi, %rax
  209742:      	retq
  209743:      	movzbl	0x1(%rdx), %ecx
  209747:      	orb	(%rdx), %cl
  209749:      	setne	%cl
  20974c:      	cmpb	$0x0, 0x5(%rdx)
  209750:      	setne	%dl
  209753:      	xorb	%cl, %dl
  209755:      	xorb	$0x1, %dl
  209758:      	movzbl	%dl, %ecx
  20975b:      	shlq	$0x25, %rcx
  20975f:      	movabsq	$0x5300000000, %rsi     # imm = 0x5300000000
  209769:      	orq	%rcx, %rsi
  20976c:      	movzbl	%al, %eax
  20976f:      	orq	%rsi, %rax
  209772:      	retq
  209773:      	movzbl	0x1(%rdx), %ecx
  209777:      	orb	(%rdx), %cl
  209779:      	setne	%cl
  20977c:      	cmpb	$0x0, 0x5(%rdx)
  209780:      	setne	%dl
  209783:      	xorb	%cl, %dl
  209785:      	xorb	$0x1, %dl
  209788:      	movzbl	%dl, %ecx
  20978b:      	shlq	$0x25, %rcx
  20978f:      	movabsq	$0x4b00000000, %rsi     # imm = 0x4B00000000
  209799:      	orq	%rcx, %rsi
  20979c:      	movzbl	%al, %eax
  20979f:      	orq	%rsi, %rax
  2097a2:      	retq
  2097a3:      	movzbl	0x1(%rdx), %ecx
  2097a7:      	orb	(%rdx), %cl
  2097a9:      	setne	%cl
  2097ac:      	cmpb	$0x0, 0x5(%rdx)
  2097b0:      	setne	%dl
  2097b3:      	xorb	%cl, %dl
  2097b5:      	xorb	$0x1, %dl
  2097b8:      	movzbl	%dl, %ecx
  2097bb:      	shlq	$0x25, %rcx
  2097bf:      	movabsq	$0x4500000000, %rsi     # imm = 0x4500000000
  2097c9:      	orq	%rcx, %rsi
  2097cc:      	movzbl	%al, %eax
  2097cf:      	orq	%rsi, %rax
  2097d2:      	retq
  2097d3:      	movzbl	0x1(%rdx), %ecx
  2097d7:      	orb	(%rdx), %cl
  2097d9:      	setne	%cl
  2097dc:      	cmpb	$0x0, 0x5(%rdx)
  2097e0:      	setne	%dl
  2097e3:      	xorb	%cl, %dl
  2097e5:      	xorb	$0x1, %dl
  2097e8:      	movzbl	%dl, %ecx
  2097eb:      	shlq	$0x25, %rcx
  2097ef:      	movabsq	$0x5500000000, %rsi     # imm = 0x5500000000
  2097f9:      	orq	%rcx, %rsi
  2097fc:      	movzbl	%al, %eax
  2097ff:      	orq	%rsi, %rax
  209802:      	retq
  209803:      	movzbl	0x1(%rdx), %ecx
  209807:      	orb	(%rdx), %cl
  209809:      	setne	%cl
  20980c:      	cmpb	$0x0, 0x5(%rdx)
  209810:      	setne	%dl
  209813:      	xorb	%cl, %dl
  209815:      	xorb	$0x1, %dl
  209818:      	movzbl	%dl, %ecx
  20981b:      	shlq	$0x25, %rcx
  20981f:      	movabsq	$0x5400000000, %rsi     # imm = 0x5400000000
  209829:      	orq	%rcx, %rsi
  20982c:      	movzbl	%al, %eax
  20982f:      	orq	%rsi, %rax
  209832:      	retq
  209833:      	movzbl	0x1(%rdx), %ecx
  209837:      	orb	(%rdx), %cl
  209839:      	setne	%cl
  20983c:      	cmpb	$0x0, 0x5(%rdx)
  209840:      	setne	%dl
  209843:      	xorb	%cl, %dl
  209845:      	xorb	$0x1, %dl
  209848:      	movzbl	%dl, %ecx
  20984b:      	shlq	$0x25, %rcx
  20984f:      	movabsq	$0x5000000000, %rsi     # imm = 0x5000000000
  209859:      	orq	%rcx, %rsi
  20985c:      	movzbl	%al, %eax
  20985f:      	orq	%rsi, %rax
  209862:      	retq
  209863:      	movzbl	0x1(%rdx), %ecx
  209867:      	orb	(%rdx), %cl
  209869:      	setne	%cl
  20986c:      	cmpb	$0x0, 0x5(%rdx)
  209870:      	setne	%dl
  209873:      	xorb	%cl, %dl
  209875:      	xorb	$0x1, %dl
  209878:      	movzbl	%dl, %ecx
  20987b:      	shlq	$0x25, %rcx
  20987f:      	movabsq	$0x4600000000, %rsi     # imm = 0x4600000000
  209889:      	orq	%rcx, %rsi
  20988c:      	movzbl	%al, %eax
  20988f:      	orq	%rsi, %rax
  209892:      	retq
  209893:      	movzbl	0x1(%rdx), %ecx
  209897:      	orb	(%rdx), %cl
  209899:      	setne	%cl
  20989c:      	cmpb	$0x0, 0x5(%rdx)
  2098a0:      	setne	%dl
  2098a3:      	xorb	%cl, %dl
  2098a5:      	xorb	$0x1, %dl
  2098a8:      	movzbl	%dl, %ecx
  2098ab:      	shlq	$0x25, %rcx
  2098af:      	movabsq	$0x5200000000, %rsi     # imm = 0x5200000000
  2098b9:      	orq	%rcx, %rsi
  2098bc:      	movzbl	%al, %eax
  2098bf:      	orq	%rsi, %rax
  2098c2:      	retq
  2098c3:      	movzbl	0x1(%rdx), %ecx
  2098c7:      	orb	(%rdx), %cl
  2098c9:      	setne	%cl
  2098cc:      	cmpb	$0x0, 0x5(%rdx)
  2098d0:      	setne	%dl
  2098d3:      	xorb	%cl, %dl
  2098d5:      	xorb	$0x1, %dl
  2098d8:      	movzbl	%dl, %ecx
  2098db:      	shlq	$0x25, %rcx
  2098df:      	movabsq	$0x5100000000, %rsi     # imm = 0x5100000000
  2098e9:      	orq	%rcx, %rsi
  2098ec:      	movzbl	%al, %eax
  2098ef:      	orq	%rsi, %rax
  2098f2:      	retq
  2098f3:      	movzbl	0x1(%rdx), %ecx
  2098f7:      	orb	(%rdx), %cl
  2098f9:      	setne	%cl
  2098fc:      	cmpb	$0x0, 0x5(%rdx)
  209900:      	setne	%dl
  209903:      	xorb	%cl, %dl
  209905:      	xorb	$0x1, %dl
  209908:      	movzbl	%dl, %ecx
  20990b:      	shlq	$0x25, %rcx
  20990f:      	movabsq	$0x5900000000, %rsi     # imm = 0x5900000000
  209919:      	orq	%rcx, %rsi
  20991c:      	movzbl	%al, %eax
  20991f:      	orq	%rsi, %rax
  209922:      	retq
  209923:      	movzbl	0x1(%rdx), %ecx
  209927:      	orb	(%rdx), %cl
  209929:      	setne	%cl
  20992c:      	cmpb	$0x0, 0x5(%rdx)
  209930:      	setne	%dl
  209933:      	xorb	%cl, %dl
  209935:      	xorb	$0x1, %dl
  209938:      	movzbl	%dl, %ecx
  20993b:      	shlq	$0x25, %rcx
  20993f:      	movabsq	$0x4700000000, %rsi     # imm = 0x4700000000
  209949:      	orq	%rcx, %rsi
  20994c:      	movzbl	%al, %eax
  20994f:      	orq	%rsi, %rax
  209952:      	retq
  209953:      	movzbl	0x1(%rdx), %ecx
  209957:      	orb	(%rdx), %cl
  209959:      	setne	%cl
  20995c:      	cmpb	$0x0, 0x5(%rdx)
  209960:      	setne	%dl
  209963:      	xorb	%cl, %dl
  209965:      	xorb	$0x1, %dl
  209968:      	movzbl	%dl, %ecx
  20996b:      	shlq	$0x25, %rcx
  20996f:      	movabsq	$0x4c00000000, %rsi     # imm = 0x4C00000000
  209979:      	orq	%rcx, %rsi
  20997c:      	movzbl	%al, %eax
  20997f:      	orq	%rsi, %rax
  209982:      	retq
  209983:      	movzbl	0x1(%rdx), %ecx
  209987:      	orb	(%rdx), %cl
  209989:      	setne	%cl
  20998c:      	cmpb	$0x0, 0x5(%rdx)
  209990:      	setne	%dl
  209993:      	xorb	%cl, %dl
  209995:      	xorb	$0x1, %dl
  209998:      	movzbl	%dl, %ecx
  20999b:      	shlq	$0x25, %rcx
  20999f:      	movabsq	$0x4100000000, %rsi     # imm = 0x4100000000
  2099a9:      	orq	%rcx, %rsi
  2099ac:      	movzbl	%al, %eax
  2099af:      	orq	%rsi, %rax
  2099b2:      	retq
  2099b3:      	movzbl	0x1(%rdx), %ecx
  2099b7:      	orb	(%rdx), %cl
  2099b9:      	setne	%cl
  2099bc:      	cmpb	$0x0, 0x5(%rdx)
  2099c0:      	setne	%dl
  2099c3:      	xorb	%cl, %dl
  2099c5:      	xorb	$0x1, %dl
  2099c8:      	movzbl	%dl, %ecx
  2099cb:      	shlq	$0x25, %rcx
  2099cf:      	movabsq	$0x4300000000, %rsi     # imm = 0x4300000000
  2099d9:      	orq	%rcx, %rsi
  2099dc:      	movzbl	%al, %eax
  2099df:      	orq	%rsi, %rax
  2099e2:      	retq
  2099e3:      	movzbl	0x1(%rdx), %ecx
  2099e7:      	orb	(%rdx), %cl
  2099e9:      	setne	%cl
  2099ec:      	cmpb	$0x0, 0x5(%rdx)
  2099f0:      	setne	%dl
  2099f3:      	xorb	%cl, %dl
  2099f5:      	xorb	$0x1, %dl
  2099f8:      	movzbl	%dl, %ecx
  2099fb:      	shlq	$0x25, %rcx
  2099ff:      	movabsq	$0x4800000000, %rsi     # imm = 0x4800000000
  209a09:      	orq	%rcx, %rsi
  209a0c:      	movzbl	%al, %eax
  209a0f:      	orq	%rsi, %rax
  209a12:      	retq
  209a13:      	movzbl	0x1(%rdx), %ecx
  209a17:      	orb	(%rdx), %cl
  209a19:      	setne	%cl
  209a1c:      	cmpb	$0x0, 0x5(%rdx)
  209a20:      	setne	%dl
  209a23:      	xorb	%cl, %dl
  209a25:      	xorb	$0x1, %dl
  209a28:      	movzbl	%dl, %ecx
  209a2b:      	shlq	$0x25, %rcx
  209a2f:      	movabsq	$0x5700000000, %rsi     # imm = 0x5700000000
  209a39:      	orq	%rcx, %rsi
  209a3c:      	movzbl	%al, %eax
  209a3f:      	orq	%rsi, %rax
  209a42:      	retq
  209a43:      	movzbl	0x1(%rdx), %ecx
  209a47:      	orb	(%rdx), %cl
  209a49:      	setne	%cl
  209a4c:      	cmpb	$0x0, 0x5(%rdx)
  209a50:      	setne	%dl
  209a53:      	xorb	%cl, %dl
  209a55:      	xorb	$0x1, %dl
  209a58:      	movzbl	%dl, %ecx
  209a5b:      	shlq	$0x25, %rcx
  209a5f:      	movabsq	$0x5600000000, %rsi     # imm = 0x5600000000
  209a69:      	orq	%rcx, %rsi
  209a6c:      	movzbl	%al, %eax
  209a6f:      	orq	%rsi, %rax
  209a72:      	retq
  209a73:      	movzbl	0x1(%rdx), %ecx
  209a77:      	orb	(%rdx), %cl
  209a79:      	setne	%cl
  209a7c:      	cmpb	$0x0, 0x5(%rdx)
  209a80:      	setne	%dl
  209a83:      	xorb	%cl, %dl
  209a85:      	xorb	$0x1, %dl
  209a88:      	movzbl	%dl, %ecx
  209a8b:      	shlq	$0x25, %rcx
  209a8f:      	movabsq	$0x4d00000000, %rsi     # imm = 0x4D00000000
  209a99:      	orq	%rcx, %rsi
  209a9c:      	movzbl	%al, %eax
  209a9f:      	orq	%rsi, %rax
  209aa2:      	retq
  209aa3:      	movzbl	0x1(%rdx), %ecx
  209aa7:      	orb	(%rdx), %cl
  209aa9:      	setne	%cl
  209aac:      	cmpb	$0x0, 0x5(%rdx)
  209ab0:      	setne	%dl
  209ab3:      	xorb	%cl, %dl
  209ab5:      	xorb	$0x1, %dl
  209ab8:      	movzbl	%dl, %ecx
  209abb:      	shlq	$0x25, %rcx
  209abf:      	movabsq	$0x4e00000000, %rsi     # imm = 0x4E00000000
  209ac9:      	orq	%rcx, %rsi
  209acc:      	movzbl	%al, %eax
  209acf:      	orq	%rsi, %rax
  209ad2:      	retq
  209ad3:      	movzbl	0x1(%rdx), %ecx
  209ad7:      	orb	(%rdx), %cl
  209ad9:      	setne	%cl
  209adc:      	cmpb	$0x0, 0x5(%rdx)
  209ae0:      	setne	%dl
  209ae3:      	xorb	%cl, %dl
  209ae5:      	xorb	$0x1, %dl
  209ae8:      	movzbl	%dl, %ecx
  209aeb:      	shlq	$0x25, %rcx
  209aef:      	movabsq	$0x4f00000000, %rsi     # imm = 0x4F00000000
  209af9:      	orq	%rcx, %rsi
  209afc:      	movzbl	%al, %eax
  209aff:      	orq	%rsi, %rax
  209b02:      	retq
  209b03:      	movzbl	0x1(%rdx), %ecx
  209b07:      	orb	(%rdx), %cl
  209b09:      	setne	%cl
  209b0c:      	cmpb	$0x0, 0x5(%rdx)
  209b10:      	setne	%dl
  209b13:      	xorb	%cl, %dl
  209b15:      	xorb	$0x1, %dl
  209b18:      	movzbl	%dl, %ecx
  209b1b:      	shlq	$0x25, %rcx
  209b1f:      	movabsq	$0x4900000000, %rsi     # imm = 0x4900000000
  209b29:      	orq	%rcx, %rsi
  209b2c:      	movzbl	%al, %eax
  209b2f:      	orq	%rsi, %rax
  209b32:      	retq
  209b33:      	movzbl	0x1(%rdx), %ecx
  209b37:      	orb	(%rdx), %cl
  209b39:      	setne	%cl
  209b3c:      	cmpb	$0x0, 0x5(%rdx)
  209b40:      	setne	%dl
  209b43:      	xorb	%cl, %dl
  209b45:      	xorb	$0x1, %dl
  209b48:      	movzbl	%dl, %ecx
  209b4b:      	shlq	$0x25, %rcx
  209b4f:      	movabsq	$0x5a00000000, %rsi     # imm = 0x5A00000000
  209b59:      	orq	%rcx, %rsi
  209b5c:      	movzbl	%al, %eax
  209b5f:      	orq	%rsi, %rax
  209b62:      	retq
  209b63:      	int3
  209b64:      	int3
  209b65:      	int3
  209b66:      	int3
  209b67:      	int3
  209b68:      	int3
  209b69:      	int3
  209b6a:      	int3
  209b6b:      	int3
  209b6c:      	int3
  209b6d:      	int3
  209b6e:      	int3
  209b6f:      	int3

0000000000209b70 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931>:
  209b70:      	movzbl	0x4(%rdi), %eax
  209b74:      	cmpb	%sil, %al
  209b77:      	ja	0x209b89 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x19>
  209b79:      	addb	$0x8, %al
  209b7b:      	cmpb	%sil, %al
  209b7e:      	jbe	0x209b89 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x19>
  209b80:      	movzbl	0xa(%rdi), %eax
  209b84:      	leal	0x8(%rax), %ecx
  209b87:      	jmp	0x209b9a <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x2a>
  209b89:      	movzbl	0xa(%rdi), %eax
  209b8d:      	cmpb	%sil, %al
  209b90:      	ja	0x209bb1 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x41>
  209b92:      	leal	0x8(%rax), %ecx
  209b95:      	cmpb	%sil, %cl
  209b98:      	jbe	0x209bb1 <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x41>
  209b9a:      	cmpb	%sil, %cl
  209b9d:      	jbe	0x209bab <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x3b>
  209b9f:      	cmpb	%sil, %al
  209ba2:      	ja	0x209bab <pic8259::ChainedPics::notify_end_of_interrupt::hf2fd6e324cafa931+0x3b>
  209ba4:      	movzwl	0x6(%rdi), %edx
  209ba8:      	movb	$0x20, %al
  209baa:      	outb	%al, %dx
  209bab:      	movzwl	(%rdi), %edx
  209bae:      	movb	$0x20, %al
  209bb0:      	outb	%al, %dx
  209bb1:      	retq
  209bb2:      	int3
  209bb3:      	int3
  209bb4:      	int3
  209bb5:      	int3
  209bb6:      	int3
  209bb7:      	int3
  209bb8:      	int3
  209bb9:      	int3
  209bba:      	int3
  209bbb:      	int3
  209bbc:      	int3
  209bbd:      	int3
  209bbe:      	int3
  209bbf:      	int3

0000000000209bc0 <<core::alloc::layout::LayoutError as core::fmt::Debug>::fmt::h80cdb6f087e4210f>:
  209bc0:      	movq	%rsi, %rdi
  209bc3:      	leaq	-0x88d6(%rip), %rsi     # 0x2012f4 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x6e4>
  209bca:      	movl	$0xb, %edx
  209bcf:      	jmp	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  209bd4:      	int3
  209bd5:      	int3
  209bd6:      	int3
  209bd7:      	int3
  209bd8:      	int3
  209bd9:      	int3
  209bda:      	int3
  209bdb:      	int3
  209bdc:      	int3
  209bdd:      	int3
  209bde:      	int3
  209bdf:      	int3

0000000000209be0 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302>:
  209be0:      	pushq	%r15
  209be2:      	pushq	%r14
  209be4:      	pushq	%r12
  209be6:      	pushq	%rbx
  209be7:      	pushq	%rax
  209be8:      	cmpq	$0x11, %rcx
  209bec:      	movl	$0x10, %eax
  209bf1:      	cmovaeq	%rcx, %rax
  209bf5:      	addq	$0x7, %rax
  209bf9:      	andq	$-0x8, %rax
  209bfd:      	leaq	-0x1(%rdx), %r8
  209c01:      	movq	%rdx, %r9
  209c04:      	xorq	%r8, %r9
  209c07:      	movabsq	$-0x8000000000000000, %r10 # imm = 0x8000000000000000
  209c11:      	subq	%rdx, %r10
  209c14:      	xorl	%ecx, %ecx
  209c16:      	cmpq	%rax, %r10
  209c19:      	cmovaeq	%rdx, %rcx
  209c1d:      	cmpq	%r8, %r9
  209c20:      	jbe	0x209d1e <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x13e>
  209c26:      	testq	%rcx, %rcx
  209c29:      	je	0x209d1e <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x13e>
  209c2f:      	movq	0x8(%rsi), %r9
  209c33:      	movl	$0x8, %edx
  209c38:      	testq	%r9, %r9
  209c3b:      	je	0x209cd4 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0xf4>
  209c41:      	leaq	-0x1(%rcx), %r8
  209c45:      	movq	%rcx, %r10
  209c48:      	xorq	%r8, %r10
  209c4b:      	cmpq	%r8, %r10
  209c4e:      	jbe	0x209d42 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x162>
  209c54:      	movq	%rcx, %r11
  209c57:      	negq	%r11
  209c5a:      	jmp	0x209c6c <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x8c>
  209c5c:      	nopl	(%rax)
  209c60:      	movq	0x8(%r8), %r9
  209c64:      	movq	%r8, %rsi
  209c67:      	testq	%r9, %r9
  209c6a:      	je	0x209cd4 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0xf4>
  209c6c:      	movq	%r9, %r8
  209c6f:      	leaq	(%rcx,%r9), %r14
  209c73:      	decq	%r14
  209c76:      	andq	%r11, %r14
  209c79:      	leaq	(%rcx,%r9), %rbx
  209c7d:      	addq	$0xf, %rbx
  209c81:      	andq	%r11, %rbx
  209c84:      	cmpq	%r9, %r14
  209c87:      	movq	%rbx, %r9
  209c8a:      	cmoveq	%r8, %r9
  209c8e:      	movq	(%r8), %r15
  209c91:      	leaq	(%r9,%rax), %r10
  209c95:      	leaq	(%r15,%r8), %r12
  209c99:      	cmpq	%r12, %r10
  209c9c:      	ja	0x209c60 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x80>
  209c9e:      	movq	%r8, %r12
  209ca1:      	subq	%r9, %r12
  209ca4:      	addq	%r15, %r12
  209ca7:      	movq	%r12, %r15
  209caa:      	subq	%rax, %r15
  209cad:      	je	0x209cb5 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0xd5>
  209caf:      	cmpq	$0xf, %r15
  209cb3:      	jbe	0x209c60 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x80>
  209cb5:      	movq	0x8(%r8), %rdx
  209cb9:      	movq	$0x0, 0x8(%r8)
  209cc1:      	movq	%rdx, 0x8(%rsi)
  209cc5:      	cmpq	%r8, %r14
  209cc8:      	jne	0x209cd8 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0xf8>
  209cca:      	movq	%rsi, %r8
  209ccd:      	cmpq	%rax, %r12
  209cd0:      	jne	0x209ceb <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x10b>
  209cd2:      	jmp	0x209cfa <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x11a>
  209cd4:      	xorl	%eax, %eax
  209cd6:      	jmp	0x209d0b <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x12b>
  209cd8:      	subq	%r8, %rbx
  209cdb:      	movq	%rbx, (%r8)
  209cde:      	movq	%rdx, 0x8(%r8)
  209ce2:      	movq	%r8, 0x8(%rsi)
  209ce6:      	cmpq	%rax, %r12
  209ce9:      	je	0x209cfa <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x11a>
  209ceb:      	movq	0x8(%r8), %rdx
  209cef:      	movq	%r15, (%r10)
  209cf2:      	movq	%rdx, 0x8(%r10)
  209cf6:      	movq	%r10, 0x8(%r8)
  209cfa:      	testq	%r9, %r9
  209cfd:      	je	0x209d5a <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302+0x17a>
  209cff:      	movq	%r9, (%rdi)
  209d02:      	movq	%rcx, 0x8(%rdi)
  209d06:      	movl	$0x10, %edx
  209d0b:      	movq	%rax, (%rdi,%rdx)
  209d0f:      	movq	%rdi, %rax
  209d12:      	addq	$0x8, %rsp
  209d16:      	popq	%rbx
  209d17:      	popq	%r12
  209d19:      	popq	%r14
  209d1b:      	popq	%r15
  209d1d:      	retq
  209d1e:      	leaq	-0x8a26(%rip), %rdi     # 0x2012ff <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x6ef>
  209d25:      	leaq	0x5004(%rip), %rcx      # 0x20ed30 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x68>
  209d2c:      	leaq	0x501d(%rip), %r8       # 0x20ed50 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x88>
  209d33:      	leaq	0x7(%rsp), %rdx
  209d38:      	movl	$0x2b, %esi
  209d3d:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  209d42:      	leaq	-0x88ed(%rip), %rdi     # 0x20145c <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x84c>
  209d49:      	leaq	0x5060(%rip), %rdx      # 0x20edb0 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0xe8>
  209d50:      	movl	$0x1c, %esi
  209d55:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  209d5a:      	leaq	0x5007(%rip), %rdi      # 0x20ed68 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0xa0>
  209d61:      	callq	0x20ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>
  209d66:      	int3
  209d67:      	int3
  209d68:      	int3
  209d69:      	int3
  209d6a:      	int3
  209d6b:      	int3
  209d6c:      	int3
  209d6d:      	int3
  209d6e:      	int3
  209d6f:      	int3

0000000000209d70 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a>:
  209d70:      	pushq	%rbx
  209d71:      	subq	$0x10, %rsp
  209d75:      	movq	%rdx, %r8
  209d78:      	cmpq	$0x11, %rcx
  209d7c:      	movl	$0x10, %edx
  209d81:      	cmovaeq	%rcx, %rdx
  209d85:      	addq	$0x7, %rdx
  209d89:      	andq	$-0x8, %rdx
  209d8d:      	leaq	-0x1(%r8), %rcx
  209d91:      	movq	%r8, %r9
  209d94:      	xorq	%rcx, %r9
  209d97:      	movabsq	$-0x8000000000000000, %r10 # imm = 0x8000000000000000
  209da1:      	subq	%r8, %r10
  209da4:      	xorl	%eax, %eax
  209da6:      	cmpq	%rdx, %r10
  209da9:      	cmovaeq	%r8, %rax
  209dad:      	cmpq	%rcx, %r9
  209db0:      	jbe	0x209ea5 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x135>
  209db6:      	testq	%rax, %rax
  209db9:      	je	0x209ea5 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x135>
  209dbf:      	cmpq	$0x10, %rdx
  209dc3:      	jb	0x209e34 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xc4>
  209dc5:      	movq	%rdx, %rcx
  209dc8:      	jmp	0x209de9 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x79>
  209dca:      	nopw	(%rax,%rax)
  209dd0:      	movq	0x8(%r8), %r9
  209dd4:      	movq	$0x0, 0x8(%r8)
  209ddc:      	movq	%r9, 0x8(%rdi)
  209de0:      	addq	%r10, %rcx
  209de3:      	cmpq	$0xf, %rcx
  209de7:      	jbe	0x209e34 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xc4>
  209de9:      	movq	(%rdi), %r9
  209dec:      	testq	%r9, %r9
  209def:      	movq	%rdi, %r11
  209df2:      	cmoveq	%r9, %r11
  209df6:      	addq	%r9, %r11
  209df9:      	cmpq	%rsi, %r11
  209dfc:      	ja	0x209e8d <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x11d>
  209e02:      	movq	0x8(%rdi), %r8
  209e06:      	testq	%r8, %r8
  209e09:      	je	0x209e4c <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xdc>
  209e0b:      	movq	(%r8), %r10
  209e0e:      	leaq	(%rcx,%rsi), %rbx
  209e12:      	cmpq	%rsi, %r11
  209e15:      	jne	0x209e1c <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xac>
  209e17:      	cmpq	%r8, %rbx
  209e1a:      	je	0x209e5d <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xed>
  209e1c:      	cmpq	%rsi, %r11
  209e1f:      	je	0x209e51 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0xe1>
  209e21:      	cmpq	%r8, %rbx
  209e24:      	je	0x209dd0 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x60>
  209e26:      	cmpq	%rsi, %r8
  209e29:      	ja	0x209e7c <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x10c>
  209e2b:      	movq	%r8, %rdi
  209e2e:      	cmpq	$0xf, %rcx
  209e32:      	ja	0x209de9 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x79>
  209e34:      	leaq	-0x8aa5(%rip), %rdi     # 0x201396 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x786>
  209e3b:      	leaq	0x4f3e(%rip), %rdx      # 0x20ed80 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0xb8>
  209e42:      	movl	$0x2e, %esi
  209e47:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  209e4c:      	cmpq	%rsi, %r11
  209e4f:      	jne	0x209e7c <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a+0x10c>
  209e51:      	addq	%rcx, %r9
  209e54:      	movq	%r9, (%rdi)
  209e57:      	addq	$0x10, %rsp
  209e5b:      	popq	%rbx
  209e5c:      	retq
  209e5d:      	addq	%rcx, %r9
  209e60:      	addq	%r10, %r9
  209e63:      	movq	%r9, (%rdi)
  209e66:      	movq	0x8(%r8), %rcx
  209e6a:      	movq	$0x0, 0x8(%r8)
  209e72:      	movq	%rcx, 0x8(%rdi)
  209e76:      	addq	$0x10, %rsp
  209e7a:      	popq	%rbx
  209e7b:      	retq
  209e7c:      	movq	%rcx, (%rsi)
  209e7f:      	movq	%r8, 0x8(%rsi)
  209e83:      	movq	%rsi, 0x8(%rdi)
  209e87:      	addq	$0x10, %rsp
  209e8b:      	popq	%rbx
  209e8c:      	retq
  209e8d:      	leaq	-0x8ad0(%rip), %rdi     # 0x2013c4 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x7b4>
  209e94:      	leaq	0x4efd(%rip), %rdx      # 0x20ed98 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0xd0>
  209e9b:      	movl	$0x2d, %esi
  209ea0:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  209ea5:      	leaq	-0x8bad(%rip), %rdi     # 0x2012ff <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x6ef>
  209eac:      	leaq	0x4e7d(%rip), %rcx      # 0x20ed30 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x68>
  209eb3:      	leaq	0x4e96(%rip), %r8       # 0x20ed50 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x88>
  209eba:      	leaq	0xf(%rsp), %rdx
  209ebf:      	movl	$0x2b, %esi
  209ec4:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  209ec9:      	int3
  209eca:      	int3
  209ecb:      	int3
  209ecc:      	int3
  209ecd:      	int3
  209ece:      	int3
  209ecf:      	int3

0000000000209ed0 <linked_list_allocator::Heap::init::h4536f0bb5256ea1f>:
  209ed0:      	movq	%rsi, 0x10(%rdi)
  209ed4:      	movq	%rdx, 0x18(%rdi)
  209ed8:      	movq	$0x0, 0x20(%rdi)
  209ee0:      	leaq	0x7(%rsi), %rax
  209ee4:      	andq	$-0x8, %rax
  209ee8:      	movq	%rax, %rcx
  209eeb:      	subq	%rsi, %rcx
  209eee:      	xorl	%esi, %esi
  209ef0:      	subq	%rcx, %rdx
  209ef3:      	cmovaeq	%rdx, %rsi
  209ef7:      	movq	%rsi, (%rax)
  209efa:      	movq	$0x0, 0x8(%rax)
  209f02:      	movq	$0x0, (%rdi)
  209f09:      	movq	%rax, 0x8(%rdi)
  209f0d:      	retq
  209f0e:      	int3
  209f0f:      	int3

0000000000209f10 <linked_list_allocator::Heap::allocate_first_fit::he7a1ac5bcab288c5>:
  209f10:      	pushq	%rbx
  209f11:      	subq	$0x20, %rsp
  209f15:      	movq	%rdx, %rcx
  209f18:      	movq	%rsi, %rdx
  209f1b:      	movq	%rdi, %rbx
  209f1e:      	leaq	0x8(%rsp), %rdi
  209f23:      	movq	%rbx, %rsi
  209f26:      	callq	0x209be0 <linked_list_allocator::hole::HoleList::allocate_first_fit::h4993be48d53c0302>
  209f2b:      	cmpq	$0x0, 0x10(%rsp)
  209f31:      	je	0x209f47 <linked_list_allocator::Heap::allocate_first_fit::he7a1ac5bcab288c5+0x37>
  209f33:      	movq	0x8(%rsp), %rax
  209f38:      	movq	0x18(%rsp), %rcx
  209f3d:      	addq	%rcx, 0x20(%rbx)
  209f41:      	addq	$0x20, %rsp
  209f45:      	popq	%rbx
  209f46:      	retq
  209f47:      	xorl	%eax, %eax
  209f49:      	addq	$0x20, %rsp
  209f4d:      	popq	%rbx
  209f4e:      	retq
  209f4f:      	int3

0000000000209f50 <linked_list_allocator::Heap::deallocate::h6363063a7a3bb23b>:
  209f50:      	pushq	%rbx
  209f51:      	movq	%rdi, %rbx
  209f54:      	callq	0x209d70 <linked_list_allocator::hole::HoleList::deallocate::hc24e1839a5b6a35a>
  209f59:      	subq	%rdx, 0x20(%rbx)
  209f5d:      	popq	%rbx
  209f5e:      	retq
  209f5f:      	int3

0000000000209f60 <<bootloader::bootinfo::memory_map::MemoryMap as core::ops::deref::Deref>::deref::h766533be9c9d64cd>:
  209f60:      	movq	0x600(%rdi), %rdx
  209f67:      	cmpq	$0x41, %rdx
  209f6b:      	jae	0x209f71 <<bootloader::bootinfo::memory_map::MemoryMap as core::ops::deref::Deref>::deref::h766533be9c9d64cd+0x11>
  209f6d:      	movq	%rdi, %rax
  209f70:      	retq
  209f71:      	pushq	%rax
  209f72:      	leaq	0x4e4f(%rip), %rax      # 0x20edc8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x100>
  209f79:      	movl	$0x40, %esi
  209f7e:      	movq	%rdx, %rdi
  209f81:      	movq	%rax, %rdx
  209f84:      	callq	0x20cbf0 <core::slice::index::slice_end_index_len_fail::hd5694c18c18ac04d>
  209f89:      	int3
  209f8a:      	int3
  209f8b:      	int3
  209f8c:      	int3
  209f8d:      	int3
  209f8e:      	int3
  209f8f:      	int3

0000000000209f90 <<&T as core::fmt::LowerHex>::fmt::h7ae9111c294f4d60.llvm.492118972621535791>:
  209f90:      	movq	(%rdi), %rdi
  209f93:      	jmp	0x20a900 <core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h5280f8b9eecf0abf>
  209f98:      	int3
  209f99:      	int3
  209f9a:      	int3
  209f9b:      	int3
  209f9c:      	int3
  209f9d:      	int3
  209f9e:      	int3
  209f9f:      	int3

0000000000209fa0 <core::fmt::num::<impl core::fmt::Debug for u64>::fmt::h47a4cbe93fbe8aa9>:
  209fa0:      	movl	0x34(%rsi), %eax
  209fa3:      	testb	$0x10, %al
  209fa5:      	jne	0x20a900 <core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h5280f8b9eecf0abf>
  209fab:      	testb	$0x20, %al
  209fad:      	jne	0x20a9a0 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h0d2f8713318facdd>
  209fb3:      	jmp	0x20c940 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363>
  209fb8:      	int3
  209fb9:      	int3
  209fba:      	int3
  209fbb:      	int3
  209fbc:      	int3
  209fbd:      	int3
  209fbe:      	int3
  209fbf:      	int3

0000000000209fc0 <<x86_64::addr::VirtAddrNotValid as core::fmt::Debug>::fmt::hf60b17212b94a935>:
  209fc0:      	pushq	%r14
  209fc2:      	pushq	%rbx
  209fc3:      	subq	$0x98, %rsp
  209fca:      	movq	%rdi, %r14
  209fcd:      	leaq	-0x99bc(%rip), %rdx     # 0x200618 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791+0x10>
  209fd4:      	leaq	0x80(%rsp), %rbx
  209fdc:      	movl	$0x10, %ecx
  209fe1:      	movq	%rbx, %rdi
  209fe4:      	callq	0x20b5f0 <core::fmt::Formatter::debug_tuple::he0639cdfd2a3270b>
  209fe9:      	movq	%r14, 0x8(%rsp)
  209fee:      	movq	0x52c3(%rip), %rax      # 0x20f2b8
  209ff5:      	movq	%rax, 0x10(%rsp)
  209ffa:      	movq	$0x2, 0x48(%rsp)
  20a003:      	movq	$0x2, 0x58(%rsp)
  20a00c:      	movq	$0x0, 0x68(%rsp)
  20a015:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  20a01f:      	movq	%rax, 0x70(%rsp)
  20a024:      	movb	$0x3, 0x78(%rsp)
  20a029:      	leaq	-0x9a28(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20a030:      	movq	%rax, 0x18(%rsp)
  20a035:      	movq	$0x1, 0x20(%rsp)
  20a03e:      	leaq	0x48(%rsp), %rax
  20a043:      	movq	%rax, 0x38(%rsp)
  20a048:      	movq	$0x1, 0x40(%rsp)
  20a051:      	leaq	0x8(%rsp), %rax
  20a056:      	movq	%rax, 0x28(%rsp)
  20a05b:      	movq	$0x1, 0x30(%rsp)
  20a064:      	leaq	0x4d75(%rip), %rdx      # 0x20ede0 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x118>
  20a06b:      	leaq	0x18(%rsp), %rsi
  20a070:      	movq	%rbx, %rdi
  20a073:      	callq	0x20d530 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed>
  20a078:      	movq	%rax, %rdi
  20a07b:      	callq	0x20d6a0 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296>
  20a080:      	addq	$0x98, %rsp
  20a087:      	popq	%rbx
  20a088:      	popq	%r14
  20a08a:      	retq
  20a08b:      	int3
  20a08c:      	int3
  20a08d:      	int3
  20a08e:      	int3
  20a08f:      	int3

000000000020a090 <<x86_64::addr::VirtAddr as core::fmt::Debug>::fmt::h8ff21a8003b34900>:
  20a090:      	pushq	%r14
  20a092:      	pushq	%rbx
  20a093:      	subq	$0x98, %rsp
  20a09a:      	movq	%rdi, %r14
  20a09d:      	leaq	-0x8bb4(%rip), %rdx     # 0x2014f0 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x8e0>
  20a0a4:      	leaq	0x80(%rsp), %rbx
  20a0ac:      	movl	$0x8, %ecx
  20a0b1:      	movq	%rbx, %rdi
  20a0b4:      	callq	0x20b5f0 <core::fmt::Formatter::debug_tuple::he0639cdfd2a3270b>
  20a0b9:      	movq	%r14, 0x8(%rsp)
  20a0be:      	movq	0x51f3(%rip), %rax      # 0x20f2b8
  20a0c5:      	movq	%rax, 0x10(%rsp)
  20a0ca:      	movq	$0x2, 0x48(%rsp)
  20a0d3:      	movq	$0x2, 0x58(%rsp)
  20a0dc:      	movq	$0x0, 0x68(%rsp)
  20a0e5:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  20a0ef:      	movq	%rax, 0x70(%rsp)
  20a0f4:      	movb	$0x3, 0x78(%rsp)
  20a0f9:      	leaq	-0x9af8(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20a100:      	movq	%rax, 0x18(%rsp)
  20a105:      	movq	$0x1, 0x20(%rsp)
  20a10e:      	leaq	0x48(%rsp), %rax
  20a113:      	movq	%rax, 0x38(%rsp)
  20a118:      	movq	$0x1, 0x40(%rsp)
  20a121:      	leaq	0x8(%rsp), %rax
  20a126:      	movq	%rax, 0x28(%rsp)
  20a12b:      	movq	$0x1, 0x30(%rsp)
  20a134:      	leaq	0x4ca5(%rip), %rdx      # 0x20ede0 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x118>
  20a13b:      	leaq	0x18(%rsp), %rsi
  20a140:      	movq	%rbx, %rdi
  20a143:      	callq	0x20d530 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed>
  20a148:      	movq	%rax, %rdi
  20a14b:      	callq	0x20d6a0 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296>
  20a150:      	addq	$0x98, %rsp
  20a157:      	popq	%rbx
  20a158:      	popq	%r14
  20a15a:      	retq
  20a15b:      	int3
  20a15c:      	int3
  20a15d:      	int3
  20a15e:      	int3
  20a15f:      	int3

000000000020a160 <x86_64::structures::idt::InterruptDescriptorTable::pointer::h8b1ccfbb58fedcd1>:
  20a160:      	movq	%rsi, %rax
  20a163:      	shrq	$0x2f, %rax
  20a167:      	je	0x20a17d <x86_64::structures::idt::InterruptDescriptorTable::pointer::h8b1ccfbb58fedcd1+0x1d>
  20a169:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  20a16e:      	je	0x20a17d <x86_64::structures::idt::InterruptDescriptorTable::pointer::h8b1ccfbb58fedcd1+0x1d>
  20a170:      	cmpl	$0x1, %eax
  20a173:      	jne	0x20a18a <x86_64::structures::idt::InterruptDescriptorTable::pointer::h8b1ccfbb58fedcd1+0x2a>
  20a175:      	shlq	$0x10, %rsi
  20a179:      	sarq	$0x10, %rsi
  20a17d:      	movw	$0xfff, (%rdi)          # imm = 0xFFF
  20a182:      	movq	%rsi, 0x2(%rdi)
  20a186:      	movq	%rdi, %rax
  20a189:      	retq
  20a18a:      	pushq	%rax
  20a18b:      	movq	%rsi, (%rsp)
  20a18f:      	leaq	-0x8c2f(%rip), %rdi     # 0x201567 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x957>
  20a196:      	leaq	0x4c63(%rip), %rcx      # 0x20ee00 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x138>
  20a19d:      	leaq	0x4c7c(%rip), %r8       # 0x20ee20 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x158>
  20a1a4:      	movq	%rsp, %rdx
  20a1a7:      	movl	$0x4a, %esi
  20a1ac:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  20a1b1:      	int3
  20a1b2:      	int3
  20a1b3:      	int3
  20a1b4:      	int3
  20a1b5:      	int3
  20a1b6:      	int3
  20a1b7:      	int3
  20a1b8:      	int3
  20a1b9:      	int3
  20a1ba:      	int3
  20a1bb:      	int3
  20a1bc:      	int3
  20a1bd:      	int3
  20a1be:      	int3
  20a1bf:      	int3

000000000020a1c0 <<x86_64::structures::idt::InterruptStackFrameValue as core::fmt::Debug>::fmt::h526610a89386258c>:
  20a1c0:      	pushq	%r15
  20a1c2:      	pushq	%r14
  20a1c4:      	pushq	%r12
  20a1c6:      	pushq	%rbx
  20a1c7:      	subq	$0x18, %rsp
  20a1cb:      	movq	%rdi, %r14
  20a1ce:      	leaq	-0x8c24(%rip), %rdx     # 0x2015b1 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9a1>
  20a1d5:      	leaq	0x8(%rsp), %rbx
  20a1da:      	movl	$0x13, %ecx
  20a1df:      	movq	%rbx, %rdi
  20a1e2:      	callq	0x20b5b0 <core::fmt::Formatter::debug_struct::hcf3d543192419406>
  20a1e7:      	leaq	-0x8c2a(%rip), %rsi     # 0x2015c4 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9b4>
  20a1ee:      	leaq	0x4c43(%rip), %r15      # 0x20ee38 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x170>
  20a1f5:      	movl	$0x13, %edx
  20a1fa:      	movq	%rbx, %rdi
  20a1fd:      	movq	%r14, %rcx
  20a200:      	movq	%r15, %r8
  20a203:      	callq	0x20d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>
  20a208:      	leaq	0x8(%r14), %rcx
  20a20c:      	leaq	-0x8c3c(%rip), %rsi     # 0x2015d7 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9c7>
  20a213:      	leaq	0x4c3e(%rip), %r12      # 0x20ee58 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x190>
  20a21a:      	movl	$0xc, %edx
  20a21f:      	movq	%rbx, %rdi
  20a222:      	movq	%r12, %r8
  20a225:      	callq	0x20d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>
  20a22a:      	movq	0x10(%r14), %rax
  20a22e:      	movq	%rax, (%rsp)
  20a232:      	leaq	-0x8c56(%rip), %rsi     # 0x2015e3 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9d3>
  20a239:      	leaq	0x4c38(%rip), %r8       # 0x20ee78 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x1b0>
  20a240:      	movq	%rsp, %rcx
  20a243:      	movl	$0x9, %edx
  20a248:      	movq	%rbx, %rdi
  20a24b:      	callq	0x20d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>
  20a250:      	leaq	0x18(%r14), %rcx
  20a254:      	leaq	-0x8c6f(%rip), %rsi     # 0x2015ec <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9dc>
  20a25b:      	movl	$0xd, %edx
  20a260:      	movq	%rbx, %rdi
  20a263:      	movq	%r15, %r8
  20a266:      	callq	0x20d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>
  20a26b:      	addq	$0x20, %r14
  20a26f:      	leaq	-0x8c7d(%rip), %rsi     # 0x2015f9 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x9e9>
  20a276:      	movl	$0xd, %edx
  20a27b:      	movq	%rbx, %rdi
  20a27e:      	movq	%r14, %rcx
  20a281:      	movq	%r12, %r8
  20a284:      	callq	0x20d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>
  20a289:      	movq	%rbx, %rdi
  20a28c:      	callq	0x20d4d0 <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc>
  20a291:      	addq	$0x18, %rsp
  20a295:      	popq	%rbx
  20a296:      	popq	%r12
  20a298:      	popq	%r14
  20a29a:      	popq	%r15
  20a29c:      	retq
  20a29d:      	int3
  20a29e:      	int3
  20a29f:      	int3

000000000020a2a0 <<<x86_64::structures::idt::InterruptStackFrameValue as core::fmt::Debug>::fmt::Hex as core::fmt::Debug>::fmt::h31cd6a4b6c361abc>:
  20a2a0:      	subq	$0x78, %rsp
  20a2a4:      	movq	%rdi, (%rsp)
  20a2a8:      	movq	0x5009(%rip), %rax      # 0x20f2b8
  20a2af:      	movq	%rax, 0x8(%rsp)
  20a2b4:      	movq	$0x2, 0x40(%rsp)
  20a2bd:      	movq	$0x2, 0x50(%rsp)
  20a2c6:      	movq	$0x0, 0x60(%rsp)
  20a2cf:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  20a2d9:      	movq	%rax, 0x68(%rsp)
  20a2de:      	movb	$0x3, 0x70(%rsp)
  20a2e3:      	leaq	-0x9ce2(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20a2ea:      	movq	%rax, 0x10(%rsp)
  20a2ef:      	movq	$0x1, 0x18(%rsp)
  20a2f8:      	leaq	0x40(%rsp), %rax
  20a2fd:      	movq	%rax, 0x30(%rsp)
  20a302:      	movq	$0x1, 0x38(%rsp)
  20a30b:      	movq	%rsp, %rax
  20a30e:      	movq	%rax, 0x20(%rsp)
  20a313:      	movq	$0x1, 0x28(%rsp)
  20a31c:      	movq	0x20(%rsi), %rdi
  20a320:      	movq	0x28(%rsi), %rsi
  20a324:      	leaq	0x10(%rsp), %rdx
  20a329:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20a32e:      	addq	$0x78, %rsp
  20a332:      	retq
  20a333:      	int3
  20a334:      	int3
  20a335:      	int3
  20a336:      	int3
  20a337:      	int3
  20a338:      	int3
  20a339:      	int3
  20a33a:      	int3
  20a33b:      	int3
  20a33c:      	int3
  20a33d:      	int3
  20a33e:      	int3
  20a33f:      	int3

000000000020a340 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6>:
  20a340:      	addq	(%rdi), %rsi
  20a343:      	movq	%rsi, %rax
  20a346:      	shrq	$0x2f, %rax
  20a34a:      	je	0x20a360 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6+0x20>
  20a34c:      	cmpl	$0x1ffff, %eax          # imm = 0x1FFFF
  20a351:      	je	0x20a360 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6+0x20>
  20a353:      	cmpl	$0x1, %eax
  20a356:      	jne	0x20a364 <<x86_64::structures::paging::mapper::offset_page_table::PhysOffset as x86_64::structures::paging::mapper::mapped_page_table::PageTableFrameMapping>::frame_to_pointer::h9172fd0a47353aa6+0x24>
  20a358:      	shlq	$0x10, %rsi
  20a35c:      	sarq	$0x10, %rsi
  20a360:      	movq	%rsi, %rax
  20a363:      	retq
  20a364:      	pushq	%rax
  20a365:      	movq	%rsi, (%rsp)
  20a369:      	leaq	-0x8e09(%rip), %rdi     # 0x201567 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x957>
  20a370:      	leaq	0x4a89(%rip), %rcx      # 0x20ee00 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x138>
  20a377:      	leaq	0x4aa2(%rip), %r8       # 0x20ee20 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x158>
  20a37e:      	movq	%rsp, %rdx
  20a381:      	movl	$0x4a, %esi
  20a386:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>
  20a38b:      	int3
  20a38c:      	int3
  20a38d:      	int3
  20a38e:      	int3
  20a38f:      	int3

000000000020a390 <<x86_64::structures::idt::_::InternalBitFlags as core::fmt::Debug>::fmt::h0b1b453ec1c7e6ff>:
  20a390:      	subq	$0x78, %rsp
  20a394:      	movq	(%rdi), %rax
  20a397:      	testq	%rax, %rax
  20a39a:      	je	0x20a3b0 <<x86_64::structures::idt::_::InternalBitFlags as core::fmt::Debug>::fmt::h0b1b453ec1c7e6ff+0x20>
  20a39c:      	movq	%rax, 0x40(%rsp)
  20a3a1:      	leaq	0x40(%rsp), %rdi
  20a3a6:      	callq	0x20a450 <bitflags::parser::to_writer::h0237e7846e103a19>
  20a3ab:      	addq	$0x78, %rsp
  20a3af:      	retq
  20a3b0:      	leaq	-0x8ebf(%rip), %rax     # 0x2014f8 <anon.5a3d5bd12bdd766c33caf675178fbc64.7.llvm.4359899688343239276+0x8e8>
  20a3b7:      	movq	%rax, (%rsp)
  20a3bb:      	movq	0x4ef6(%rip), %rax      # 0x20f2b8
  20a3c2:      	movq	%rax, 0x8(%rsp)
  20a3c7:      	movq	$0x2, 0x40(%rsp)
  20a3d0:      	movq	$0x2, 0x50(%rsp)
  20a3d9:      	movq	$0x0, 0x60(%rsp)
  20a3e2:      	movabsq	$0x400000020, %rax      # imm = 0x400000020
  20a3ec:      	movq	%rax, 0x68(%rsp)
  20a3f1:      	movb	$0x3, 0x70(%rsp)
  20a3f6:      	leaq	-0x9df5(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20a3fd:      	movq	%rax, 0x10(%rsp)
  20a402:      	movq	$0x1, 0x18(%rsp)
  20a40b:      	leaq	0x40(%rsp), %rax
  20a410:      	movq	%rax, 0x30(%rsp)
  20a415:      	movq	$0x1, 0x38(%rsp)
  20a41e:      	movq	%rsp, %rax
  20a421:      	movq	%rax, 0x20(%rsp)
  20a426:      	movq	$0x1, 0x28(%rsp)
  20a42f:      	movq	0x20(%rsi), %rdi
  20a433:      	movq	0x28(%rsi), %rsi
  20a437:      	leaq	0x10(%rsp), %rdx
  20a43c:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20a441:      	addq	$0x78, %rsp
  20a445:      	retq
  20a446:      	int3
  20a447:      	int3
  20a448:      	int3
  20a449:      	int3
  20a44a:      	int3
  20a44b:      	int3
  20a44c:      	int3
  20a44d:      	int3
  20a44e:      	int3
  20a44f:      	int3

000000000020a450 <bitflags::parser::to_writer::h0237e7846e103a19>:
  20a450:      	pushq	%rbp
  20a451:      	pushq	%r15
  20a453:      	pushq	%r14
  20a455:      	pushq	%r13
  20a457:      	pushq	%r12
  20a459:      	pushq	%rbx
  20a45a:      	subq	$0x58, %rsp
  20a45e:      	movq	(%rdi), %r13
  20a461:      	testq	%r13, %r13
  20a464:      	je	0x20a71e <bitflags::parser::to_writer::h0237e7846e103a19+0x2ce>
  20a46a:      	movq	%rsi, %rbp
  20a46d:      	testb	$0x1, %r13b
  20a471:      	jne	0x20a4cd <bitflags::parser::to_writer::h0237e7846e103a19+0x7d>
  20a473:      	movl	$0xf, %edx
  20a478:      	testb	$0x2, %r13b
  20a47c:      	jne	0x20a4ea <bitflags::parser::to_writer::h0237e7846e103a19+0x9a>
  20a47e:      	testb	$0x4, %r13b
  20a482:      	jne	0x20a502 <bitflags::parser::to_writer::h0237e7846e103a19+0xb2>
  20a484:      	testb	$0x8, %r13b
  20a488:      	jne	0x20a51f <bitflags::parser::to_writer::h0237e7846e103a19+0xcf>
  20a48e:      	testb	$0x10, %r13b
  20a492:      	jne	0x20a534 <bitflags::parser::to_writer::h0237e7846e103a19+0xe4>
  20a498:      	testb	$0x20, %r13b
  20a49c:      	jne	0x20a54e <bitflags::parser::to_writer::h0237e7846e103a19+0xfe>
  20a4a2:      	testb	$0x40, %r13b
  20a4a6:      	jne	0x20a568 <bitflags::parser::to_writer::h0237e7846e103a19+0x118>
  20a4ac:      	movl	$0x3, %edx
  20a4b1:      	testw	%r13w, %r13w
  20a4b5:      	js	0x20a582 <bitflags::parser::to_writer::h0237e7846e103a19+0x132>
  20a4bb:      	testl	%r13d, %r13d
  20a4be:      	js	0x20a597 <bitflags::parser::to_writer::h0237e7846e103a19+0x147>
  20a4c4:      	movq	%r13, (%rsp)
  20a4c8:      	jmp	0x20a69d <bitflags::parser::to_writer::h0237e7846e103a19+0x24d>
  20a4cd:      	movq	$-0x2, %r14
  20a4d4:      	movl	$0x14, %edx
  20a4d9:      	movl	$0x1, %ebx
  20a4de:      	leaq	0x49eb(%rip), %rax      # 0x20eed0 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828>
  20a4e5:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a4ea:      	movq	$-0x3, %r14
  20a4f1:      	movl	$0x2, %ebx
  20a4f6:      	leaq	0x49eb(%rip), %rax      # 0x20eee8 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x18>
  20a4fd:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a502:      	movq	$-0x5, %r14
  20a509:      	movl	$0x9, %edx
  20a50e:      	movl	$0x3, %ebx
  20a513:      	leaq	0x49e6(%rip), %rax      # 0x20ef00 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x30>
  20a51a:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a51f:      	movq	$-0x9, %r14
  20a526:      	movl	$0x4, %ebx
  20a52b:      	leaq	0x49e6(%rip), %rax      # 0x20ef18 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x48>
  20a532:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a534:      	movq	$-0x11, %r14
  20a53b:      	movl	$0x11, %edx
  20a540:      	movl	$0x5, %ebx
  20a545:      	leaq	0x49e4(%rip), %rax      # 0x20ef30 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x60>
  20a54c:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a54e:      	movq	$-0x21, %r14
  20a555:      	movl	$0xe, %edx
  20a55a:      	movl	$0x6, %ebx
  20a55f:      	leaq	0x49e2(%rip), %rax      # 0x20ef48 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x78>
  20a566:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a568:      	movq	$-0x41, %r14
  20a56f:      	movl	$0xc, %edx
  20a574:      	movl	$0x7, %ebx
  20a579:      	leaq	0x49e0(%rip), %rax      # 0x20ef60 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x90>
  20a580:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a582:      	movq	$-0x8001, %r14          # imm = 0xFFFF7FFF
  20a589:      	movl	$0x8, %ebx
  20a58e:      	leaq	0x49e3(%rip), %rax      # 0x20ef78 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0xa8>
  20a595:      	jmp	0x20a5ad <bitflags::parser::to_writer::h0237e7846e103a19+0x15d>
  20a597:      	movabsq	$-0x80000001, %r14      # imm = 0xFFFFFFFF7FFFFFFF
  20a5a1:      	movl	$0x9, %ebx
  20a5a6:      	leaq	0x49e3(%rip), %rax      # 0x20ef90 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0xc0>
  20a5ad:      	movq	(%rax), %rsi
  20a5b0:      	movq	%rbp, %rdi
  20a5b3:      	callq	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  20a5b8:      	movb	$0x1, %cl
  20a5ba:      	testb	%al, %al
  20a5bc:      	jne	0x20a720 <bitflags::parser::to_writer::h0237e7846e103a19+0x2d0>
  20a5c2:      	andq	%r13, %r14
  20a5c5:      	leaq	0x4904(%rip), %rcx      # 0x20eed0 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828>
  20a5cc:      	leaq	-0x8fcb(%rip), %rsi     # 0x201608 <anon.414c1e4719e728bcd40fbcfa83a6ad06.3.llvm.10940654621670657316>
  20a5d3:      	cmpq	$0x8, %rbx
  20a5d7:      	ja	0x20a678 <bitflags::parser::to_writer::h0237e7846e103a19+0x228>
  20a5dd:      	testq	%r14, %r14
  20a5e0:      	je	0x20a71e <bitflags::parser::to_writer::h0237e7846e103a19+0x2ce>
  20a5e6:      	leaq	(%rbx,%rbx,2), %rax
  20a5ea:      	incq	%rbx
  20a5ed:      	leaq	(%rcx,%rax,8), %rax
  20a5f1:      	addq	$0x10, %rax
  20a5f5:      	jmp	0x20a60d <bitflags::parser::to_writer::h0237e7846e103a19+0x1bd>
  20a5f7:      	nopw	(%rax,%rax)
  20a600:      	incq	%rbx
  20a603:      	addq	$0x18, %rax
  20a607:      	cmpq	$0xa, %rbx
  20a60b:      	je	0x20a678 <bitflags::parser::to_writer::h0237e7846e103a19+0x228>
  20a60d:      	movq	-0x8(%rax), %r15
  20a611:      	testq	%r15, %r15
  20a614:      	je	0x20a600 <bitflags::parser::to_writer::h0237e7846e103a19+0x1b0>
  20a616:      	movq	(%rax), %r12
  20a619:      	testq	%r14, %r12
  20a61c:      	je	0x20a600 <bitflags::parser::to_writer::h0237e7846e103a19+0x1b0>
  20a61e:      	movq	%r12, %rcx
  20a621:      	andq	%r13, %rcx
  20a624:      	cmpq	%r12, %rcx
  20a627:      	jne	0x20a600 <bitflags::parser::to_writer::h0237e7846e103a19+0x1b0>
  20a629:      	movq	-0x10(%rax), %rax
  20a62d:      	movq	%rax, 0x8(%rsp)
  20a632:      	movl	$0x3, %edx
  20a637:      	movq	%rbp, %rdi
  20a63a:      	callq	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  20a63f:      	testb	%al, %al
  20a641:      	jne	0x20a71a <bitflags::parser::to_writer::h0237e7846e103a19+0x2ca>
  20a647:      	notq	%r12
  20a64a:      	andq	%r12, %r14
  20a64d:      	movq	%rbp, %rdi
  20a650:      	movq	0x8(%rsp), %rsi
  20a655:      	movq	%r15, %rdx
  20a658:      	callq	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  20a65d:      	testb	%al, %al
  20a65f:      	leaq	0x486a(%rip), %rcx      # 0x20eed0 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828>
  20a666:      	leaq	-0x9065(%rip), %rsi     # 0x201608 <anon.414c1e4719e728bcd40fbcfa83a6ad06.3.llvm.10940654621670657316>
  20a66d:      	je	0x20a5d3 <bitflags::parser::to_writer::h0237e7846e103a19+0x183>
  20a673:      	jmp	0x20a71a <bitflags::parser::to_writer::h0237e7846e103a19+0x2ca>
  20a678:      	movq	%r14, (%rsp)
  20a67c:      	testq	%r14, %r14
  20a67f:      	je	0x20a71e <bitflags::parser::to_writer::h0237e7846e103a19+0x2ce>
  20a685:      	leaq	-0x9084(%rip), %rsi     # 0x201608 <anon.414c1e4719e728bcd40fbcfa83a6ad06.3.llvm.10940654621670657316>
  20a68c:      	movl	$0x3, %edx
  20a691:      	movq	%rbp, %rdi
  20a694:      	callq	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  20a699:      	testb	%al, %al
  20a69b:      	jne	0x20a71a <bitflags::parser::to_writer::h0237e7846e103a19+0x2ca>
  20a69d:      	leaq	-0x909e(%rip), %rsi     # 0x201606 <anon.414c1e4719e728bcd40fbcfa83a6ad06.2.llvm.10940654621670657316>
  20a6a4:      	movl	$0x2, %edx
  20a6a9:      	movq	%rbp, %rdi
  20a6ac:      	callq	0x20b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>
  20a6b1:      	testb	%al, %al
  20a6b3:      	jne	0x20a71a <bitflags::parser::to_writer::h0237e7846e103a19+0x2ca>
  20a6b5:      	movq	%rsp, %rax
  20a6b8:      	movq	%rax, 0x10(%rsp)
  20a6bd:      	leaq	0x10(%rsp), %rax
  20a6c2:      	movq	%rax, 0x18(%rsp)
  20a6c7:      	leaq	-0x73e(%rip), %rax      # 0x209f90 <<&T as core::fmt::LowerHex>::fmt::h7ae9111c294f4d60.llvm.492118972621535791>
  20a6ce:      	movq	%rax, 0x20(%rsp)
  20a6d3:      	leaq	-0xa0d2(%rip), %rax     # 0x200608 <anon.9b291cb5211ed2ca2f570ce54e735000.37.llvm.492118972621535791>
  20a6da:      	movq	%rax, 0x28(%rsp)
  20a6df:      	movq	$0x1, 0x30(%rsp)
  20a6e8:      	movq	$0x0, 0x48(%rsp)
  20a6f1:      	leaq	0x18(%rsp), %rax
  20a6f6:      	movq	%rax, 0x38(%rsp)
  20a6fb:      	movq	$0x1, 0x40(%rsp)
  20a704:      	movq	0x20(%rbp), %rdi
  20a708:      	movq	0x28(%rbp), %rsi
  20a70c:      	leaq	0x28(%rsp), %rdx
  20a711:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20a716:      	testb	%al, %al
  20a718:      	je	0x20a71e <bitflags::parser::to_writer::h0237e7846e103a19+0x2ce>
  20a71a:      	movb	$0x1, %cl
  20a71c:      	jmp	0x20a720 <bitflags::parser::to_writer::h0237e7846e103a19+0x2d0>
  20a71e:      	xorl	%ecx, %ecx
  20a720:      	movl	%ecx, %eax
  20a722:      	addq	$0x58, %rsp
  20a726:      	popq	%rbx
  20a727:      	popq	%r12
  20a729:      	popq	%r13
  20a72b:      	popq	%r14
  20a72d:      	popq	%r15
  20a72f:      	popq	%rbp
  20a730:      	retq
  20a731:      	int3
  20a732:      	int3
  20a733:      	int3
  20a734:      	int3
  20a735:      	int3
  20a736:      	int3
  20a737:      	int3
  20a738:      	int3
  20a739:      	int3
  20a73a:      	int3
  20a73b:      	int3
  20a73c:      	int3
  20a73d:      	int3
  20a73e:      	int3
  20a73f:      	int3

000000000020a740 <x86_64::structures::gdt::GlobalDescriptorTable::pointer::h25220b4c5ca8ddc1>:
  20a740:      	movq	%rsi, %rax
  20a743:      	movq	%rsi, %rcx
  20a746:      	shrq	$0x2f, %rcx
  20a74a:      	je	0x20a764 <x86_64::structures::gdt::GlobalDescriptorTable::pointer::h25220b4c5ca8ddc1+0x24>
  20a74c:      	cmpl	$0x1ffff, %ecx          # imm = 0x1FFFF
  20a752:      	je	0x20a764 <x86_64::structures::gdt::GlobalDescriptorTable::pointer::h25220b4c5ca8ddc1+0x24>
  20a754:      	cmpl	$0x1, %ecx
  20a757:      	jne	0x20a779 <x86_64::structures::gdt::GlobalDescriptorTable::pointer::h25220b4c5ca8ddc1+0x39>
  20a759:      	movq	%rsi, %rax
  20a75c:      	shlq	$0x10, %rax
  20a760:      	sarq	$0x10, %rax
  20a764:      	movl	0x40(%rsi), %ecx
  20a767:      	leal	-0x1(,%rcx,8), %ecx
  20a76e:      	movw	%cx, (%rdi)
  20a771:      	movq	%rax, 0x2(%rdi)
  20a775:      	movq	%rdi, %rax
  20a778:      	retq
  20a779:      	pushq	%rax
  20a77a:      	movq	%rsi, (%rsp)
  20a77e:      	leaq	-0x911b(%rip), %rdi     # 0x20166a <anon.414c1e4719e728bcd40fbcfa83a6ad06.3.llvm.10940654621670657316+0x62>
  20a785:      	leaq	0x470c(%rip), %rcx      # 0x20ee98 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x1d0>
  20a78c:      	leaq	0x4725(%rip), %r8       # 0x20eeb8 <anon.5a3d5bd12bdd766c33caf675178fbc64.8.llvm.4359899688343239276+0x1f0>
  20a793:      	movq	%rsp, %rdx
  20a796:      	movl	$0x4a, %esi
  20a79b:      	callq	0x20cd10 <core::result::unwrap_failed::h2e64338953f44fd5>

000000000020a7a0 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5>:
  20a7a0:      	cmpb	$0x0, 0x8(%rdi)
  20a7a4:      	je	0x20a7b1 <<spin::once::Finish as core::ops::drop::Drop>::drop::ha80776954667e6f5+0x11>
  20a7a6:      	movq	(%rdi), %rax
  20a7a9:      	movl	$0x3, %ecx
  20a7ae:      	xchgq	%rcx, (%rax)
  20a7b1:      	retq
  20a7b2:      	int3
  20a7b3:      	int3
  20a7b4:      	int3
  20a7b5:      	int3
  20a7b6:      	int3
  20a7b7:      	int3
  20a7b8:      	int3
  20a7b9:      	int3
  20a7ba:      	int3
  20a7bb:      	int3
  20a7bc:      	int3
  20a7bd:      	int3
  20a7be:      	int3
  20a7bf:      	int3

000000000020a7c0 <__rdl_oom>:
  20a7c0:      	subq	$0x48, %rsp
  20a7c4:      	movq	%rdi, (%rsp)
  20a7c8:      	movq	0x4af9(%rip), %rax      # 0x20f2c8
  20a7cf:      	cmpb	$0x0, (%rax)
  20a7d2:      	jne	0x20a82c <__rdl_oom+0x6c>
  20a7d4:      	movq	%rsp, %rax
  20a7d7:      	movq	%rax, 0x8(%rsp)
  20a7dc:      	movq	0x4afd(%rip), %rax      # 0x20f2e0
  20a7e3:      	movq	%rax, 0x10(%rsp)
  20a7e8:      	leaq	0x47b9(%rip), %rax      # 0x20efa8 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0xd8>
  20a7ef:      	movq	%rax, 0x18(%rsp)
  20a7f4:      	movq	$0x2, 0x20(%rsp)
  20a7fd:      	movq	$0x0, 0x38(%rsp)
  20a806:      	leaq	0x8(%rsp), %rax
  20a80b:      	movq	%rax, 0x28(%rsp)
  20a810:      	movq	$0x1, 0x30(%rsp)
  20a819:      	leaq	0x47a8(%rip), %rdx      # 0x20efc8 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0xf8>
  20a820:      	leaq	0x18(%rsp), %rdi
  20a825:      	xorl	%esi, %esi
  20a827:      	callq	0x20cee0 <core::panicking::panic_nounwind_fmt::h59dd07cbf82bb3c7>
  20a82c:      	movq	%rsp, %rax
  20a82f:      	movq	%rax, 0x8(%rsp)
  20a834:      	movq	0x4aa5(%rip), %rax      # 0x20f2e0
  20a83b:      	movq	%rax, 0x10(%rsp)
  20a840:      	leaq	0x4761(%rip), %rax      # 0x20efa8 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0xd8>
  20a847:      	movq	%rax, 0x18(%rsp)
  20a84c:      	movq	$0x2, 0x20(%rsp)
  20a855:      	movq	$0x0, 0x38(%rsp)
  20a85e:      	leaq	0x8(%rsp), %rax
  20a863:      	movq	%rax, 0x28(%rsp)
  20a868:      	movq	$0x1, 0x30(%rsp)
  20a871:      	leaq	0x4768(%rip), %rsi      # 0x20efe0 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x110>
  20a878:      	leaq	0x18(%rsp), %rdi
  20a87d:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20a882:      	int3
  20a883:      	int3
  20a884:      	int3
  20a885:      	int3
  20a886:      	int3
  20a887:      	int3
  20a888:      	int3
  20a889:      	int3
  20a88a:      	int3
  20a88b:      	int3
  20a88c:      	int3
  20a88d:      	int3
  20a88e:      	int3
  20a88f:      	int3

000000000020a890 <alloc::raw_vec::capacity_overflow::hacf94268eaea694a.llvm.5123633203886467781>:
  20a890:      	subq	$0x38, %rsp
  20a894:      	leaq	0x475d(%rip), %rax      # 0x20eff8 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x128>
  20a89b:      	movq	%rax, 0x8(%rsp)
  20a8a0:      	movq	$0x1, 0x10(%rsp)
  20a8a9:      	movq	$0x0, 0x28(%rsp)
  20a8b2:      	movq	$0x8, 0x18(%rsp)
  20a8bb:      	movq	$0x0, 0x20(%rsp)
  20a8c4:      	leaq	0x473d(%rip), %rsi      # 0x20f008 <anon.50033402e8b52c63a9686901ef171ecd.74.llvm.16972901045911479828+0x138>
  20a8cb:      	leaq	0x8(%rsp), %rdi
  20a8d0:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20a8d5:      	int3
  20a8d6:      	int3
  20a8d7:      	int3
  20a8d8:      	int3
  20a8d9:      	int3
  20a8da:      	int3
  20a8db:      	int3
  20a8dc:      	int3
  20a8dd:      	int3
  20a8de:      	int3
  20a8df:      	int3

000000000020a8e0 <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72>:
  20a8e0:      	pushq	%rax
  20a8e1:      	testq	%rdi, %rdi
  20a8e4:      	jne	0x20a8eb <alloc::raw_vec::handle_error::h59fc55bfb7f9ce72+0xb>
  20a8e6:      	callq	0x20a890 <alloc::raw_vec::capacity_overflow::hacf94268eaea694a.llvm.5123633203886467781>
  20a8eb:      	callq	0x20a8f0 <alloc::alloc::handle_alloc_error::h304d5b731089ab52>

000000000020a8f0 <alloc::alloc::handle_alloc_error::h304d5b731089ab52>:
  20a8f0:      	pushq	%rax
  20a8f1:      	movq	%rdi, %rax
  20a8f4:      	movq	%rsi, %rdi
  20a8f7:      	movq	%rax, %rsi
  20a8fa:      	callq	0x203e10 <__rust_alloc_error_handler>
  20a8ff:      	int3

000000000020a900 <core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h5280f8b9eecf0abf>:
  20a900:      	subq	$0x88, %rsp
  20a907:      	movq	(%rdi), %rax
  20a90a:      	leaq	0x88(%rsp), %r8
  20a912:      	xorl	%r9d, %r9d
  20a915:      	movq	%rax, %rcx
  20a918:      	nopl	(%rax,%rax)
  20a920:      	shrq	$0x4, %rcx
  20a924:      	movl	%eax, %edx
  20a926:      	andb	$0xf, %dl
  20a929:      	leal	0x30(%rdx), %edi
  20a92c:      	leal	0x57(%rdx), %r10d
  20a930:      	cmpb	$0xa, %dl
  20a933:      	movzbl	%dil, %edx
  20a937:      	movzbl	%r10b, %edi
  20a93b:      	cmovbl	%edx, %edi
  20a93e:      	movb	%dil, -0x1(%r8)
  20a942:      	decq	%r8
  20a945:      	incq	%r9
  20a948:      	cmpq	$0x10, %rax
  20a94c:      	movq	%rcx, %rax
  20a94f:      	jae	0x20a920 <core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h5280f8b9eecf0abf+0x20>
  20a951:      	movl	$0x80, %edi
  20a956:      	subq	%r9, %rdi
  20a959:      	cmpq	$0x80, %rdi
  20a960:      	ja	0x20a983 <core::fmt::num::<impl core::fmt::LowerHex for usize>::fmt::h5280f8b9eecf0abf+0x83>
  20a962:      	leaq	-0x90ba(%rip), %rdx     # 0x2018af <anon.a46c5626f151a4dcc59353cd10b7a2e4.4.llvm.12319386654944200313>
  20a969:      	movl	$0x2, %ecx
  20a96e:      	movq	%rsi, %rdi
  20a971:      	movl	$0x1, %esi
  20a976:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20a97b:      	addq	$0x88, %rsp
  20a982:      	retq
  20a983:      	leaq	0x4696(%rip), %rdx      # 0x20f020 <anon.a46c5626f151a4dcc59353cd10b7a2e4.2.llvm.12319386654944200313>
  20a98a:      	movl	$0x80, %esi
  20a98f:      	callq	0x20cb70 <core::slice::index::slice_start_index_len_fail::hccfdea9858c4cd10>
  20a994:      	int3
  20a995:      	int3
  20a996:      	int3
  20a997:      	int3
  20a998:      	int3
  20a999:      	int3
  20a99a:      	int3
  20a99b:      	int3
  20a99c:      	int3
  20a99d:      	int3
  20a99e:      	int3
  20a99f:      	int3

000000000020a9a0 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h0d2f8713318facdd>:
  20a9a0:      	subq	$0x88, %rsp
  20a9a7:      	movq	(%rdi), %rax
  20a9aa:      	leaq	0x88(%rsp), %r8
  20a9b2:      	xorl	%r9d, %r9d
  20a9b5:      	movq	%rax, %rcx
  20a9b8:      	nopl	(%rax,%rax)
  20a9c0:      	shrq	$0x4, %rcx
  20a9c4:      	movl	%eax, %edx
  20a9c6:      	andb	$0xf, %dl
  20a9c9:      	leal	0x30(%rdx), %edi
  20a9cc:      	leal	0x37(%rdx), %r10d
  20a9d0:      	cmpb	$0xa, %dl
  20a9d3:      	movzbl	%dil, %edx
  20a9d7:      	movzbl	%r10b, %edi
  20a9db:      	cmovbl	%edx, %edi
  20a9de:      	movb	%dil, -0x1(%r8)
  20a9e2:      	decq	%r8
  20a9e5:      	incq	%r9
  20a9e8:      	cmpq	$0x10, %rax
  20a9ec:      	movq	%rcx, %rax
  20a9ef:      	jae	0x20a9c0 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h0d2f8713318facdd+0x20>
  20a9f1:      	movl	$0x80, %edi
  20a9f6:      	subq	%r9, %rdi
  20a9f9:      	cmpq	$0x80, %rdi
  20aa00:      	ja	0x20aa23 <core::fmt::num::<impl core::fmt::UpperHex for usize>::fmt::h0d2f8713318facdd+0x83>
  20aa02:      	leaq	-0x915a(%rip), %rdx     # 0x2018af <anon.a46c5626f151a4dcc59353cd10b7a2e4.4.llvm.12319386654944200313>
  20aa09:      	movl	$0x2, %ecx
  20aa0e:      	movq	%rsi, %rdi
  20aa11:      	movl	$0x1, %esi
  20aa16:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20aa1b:      	addq	$0x88, %rsp
  20aa22:      	retq
  20aa23:      	leaq	0x45f6(%rip), %rdx      # 0x20f020 <anon.a46c5626f151a4dcc59353cd10b7a2e4.2.llvm.12319386654944200313>
  20aa2a:      	movl	$0x80, %esi
  20aa2f:      	callq	0x20cb70 <core::slice::index::slice_start_index_len_fail::hccfdea9858c4cd10>
  20aa34:      	int3
  20aa35:      	int3
  20aa36:      	int3
  20aa37:      	int3
  20aa38:      	int3
  20aa39:      	int3
  20aa3a:      	int3
  20aa3b:      	int3
  20aa3c:      	int3
  20aa3d:      	int3
  20aa3e:      	int3
  20aa3f:      	int3

000000000020aa40 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330>:
  20aa40:      	pushq	%r14
  20aa42:      	pushq	%rbx
  20aa43:      	subq	$0x18, %rsp
  20aa47:      	movl	%esi, %ebx
  20aa49:      	cmpl	$0x27, %esi
  20aa4c:      	ja	0x20aa6a <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x2a>
  20aa4e:      	movl	%ebx, %eax
  20aa50:      	leaq	-0x90db(%rip), %rcx     # 0x20197c <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313+0xcb>
  20aa57:      	movslq	(%rcx,%rax,4), %rax
  20aa5b:      	addq	%rcx, %rax
  20aa5e:      	jmpq	*%rax
  20aa60:      	movw	$0x305c, (%rdi)         # imm = 0x305C
  20aa65:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20aa6a:      	cmpl	$0x5c, %ebx
  20aa6d:      	jne	0x20aa79 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x39>
  20aa6f:      	movw	$0x5c5c, (%rdi)         # imm = 0x5C5C
  20aa74:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20aa79:      	cmpl	$0x300, %ebx            # imm = 0x300
  20aa7f:      	jb	0x20ab9f <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x15f>
  20aa85:      	andl	$0x1, %edx
  20aa88:      	je	0x20ab9f <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x15f>
  20aa8e:      	movq	%rdi, %r14
  20aa91:      	movl	%ebx, %edi
  20aa93:      	callq	0x20ca50 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2>
  20aa98:      	movq	%r14, %rdi
  20aa9b:      	testb	%al, %al
  20aa9d:      	je	0x20ab9f <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x15f>
  20aaa3:      	movl	%ebx, %eax
  20aaa5:      	orl	$0x1, %eax
  20aaa8:      	bsrl	%eax, %ecx
  20aaab:      	xorl	$0x1c, %ecx
  20aaae:      	shrl	$0x2, %ecx
  20aab1:      	leaq	-0x2(%rcx), %rax
  20aab5:      	movb	$0x0, 0x10(%rsp)
  20aaba:      	movw	$0x0, 0xe(%rsp)
  20aac1:      	movl	%ebx, %esi
  20aac3:      	shrl	$0x14, %esi
  20aac6:      	andl	$0xf, %esi
  20aac9:      	leaq	-0xa4a8(%rip), %rdx     # 0x200628 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671>
  20aad0:      	movzbl	(%rsi,%rdx), %esi
  20aad4:      	movb	%sil, 0x11(%rsp)
  20aad9:      	movl	%ebx, %esi
  20aadb:      	shrl	$0x10, %esi
  20aade:      	andl	$0xf, %esi
  20aae1:      	movzbl	(%rsi,%rdx), %esi
  20aae5:      	movb	%sil, 0x12(%rsp)
  20aaea:      	movl	%ebx, %esi
  20aaec:      	shrl	$0xc, %esi
  20aaef:      	andl	$0xf, %esi
  20aaf2:      	movzbl	(%rsi,%rdx), %esi
  20aaf6:      	movb	%sil, 0x13(%rsp)
  20aafb:      	movl	%ebx, %esi
  20aafd:      	shrl	$0x8, %esi
  20ab00:      	andl	$0xf, %esi
  20ab03:      	movzbl	(%rsi,%rdx), %esi
  20ab07:      	movb	%sil, 0x14(%rsp)
  20ab0c:      	movl	%ebx, %esi
  20ab0e:      	shrl	$0x4, %esi
  20ab11:      	andl	$0xf, %esi
  20ab14:      	movzbl	(%rsi,%rdx), %esi
  20ab18:      	movb	%sil, 0x15(%rsp)
  20ab1d:      	andl	$0xf, %ebx
  20ab20:      	movzbl	(%rbx,%rdx), %edx
  20ab24:      	movb	%dl, 0x16(%rsp)
  20ab28:      	movb	$0x7d, 0x17(%rsp)
  20ab2d:      	cmpq	$0xa, %rax
  20ab31:      	jae	0x20aca3 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x263>
  20ab37:      	movw	$0x755c, 0xc(%rsp,%rcx) # imm = 0x755C
  20ab3e:      	movb	$0x7b, 0xe(%rsp,%rcx)
  20ab43:      	movzwl	0x16(%rsp), %ecx
  20ab48:      	movw	%cx, 0x8(%rdi)
  20ab4c:      	movq	0xe(%rsp), %rcx
  20ab51:      	movq	%rcx, (%rdi)
  20ab54:      	movb	%al, 0xa(%rdi)
  20ab57:      	movb	$0xa, 0xb(%rdi)
  20ab5b:      	addq	$0x18, %rsp
  20ab5f:      	popq	%rbx
  20ab60:      	popq	%r14
  20ab62:      	retq
  20ab63:      	movw	$0x6e5c, (%rdi)         # imm = 0x6E5C
  20ab68:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20ab6d:      	testl	$0x100, %edx            # imm = 0x100
  20ab73:      	je	0x20ab9f <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x15f>
  20ab75:      	movw	$0x275c, (%rdi)         # imm = 0x275C
  20ab7a:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20ab7f:      	movw	$0x725c, (%rdi)         # imm = 0x725C
  20ab84:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20ab89:      	movw	$0x745c, (%rdi)         # imm = 0x745C
  20ab8e:      	jmp	0x20ac7c <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x23c>
  20ab93:      	testl	$0x10000, %edx          # imm = 0x10000
  20ab99:      	jne	0x20ac77 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x237>
  20ab9f:      	movq	%rdi, %r14
  20aba2:      	movl	%ebx, %edi
  20aba4:      	callq	0x20c700 <core::unicode::printable::is_printable::hd5b913c848e5f51e>
  20aba9:      	testb	%al, %al
  20abab:      	je	0x20abbd <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x17d>
  20abad:      	movb	$-0x80, (%r14)
  20abb1:      	movl	%ebx, 0x4(%r14)
  20abb5:      	addq	$0x18, %rsp
  20abb9:      	popq	%rbx
  20abba:      	popq	%r14
  20abbc:      	retq
  20abbd:      	movl	%ebx, %eax
  20abbf:      	orl	$0x1, %eax
  20abc2:      	bsrl	%eax, %eax
  20abc5:      	xorl	$0x1c, %eax
  20abc8:      	shrl	$0x2, %eax
  20abcb:      	leaq	-0x2(%rax), %rdi
  20abcf:      	movb	$0x0, 0x10(%rsp)
  20abd4:      	movw	$0x0, 0xe(%rsp)
  20abdb:      	movl	%ebx, %edx
  20abdd:      	shrl	$0x14, %edx
  20abe0:      	andl	$0xf, %edx
  20abe3:      	leaq	-0xa5c2(%rip), %rcx     # 0x200628 <anon.936a16858544f0cad722709816bb0ed1.10.llvm.953444372067373671>
  20abea:      	movzbl	(%rdx,%rcx), %edx
  20abee:      	movb	%dl, 0x11(%rsp)
  20abf2:      	movl	%ebx, %edx
  20abf4:      	shrl	$0x10, %edx
  20abf7:      	andl	$0xf, %edx
  20abfa:      	movzbl	(%rdx,%rcx), %edx
  20abfe:      	movb	%dl, 0x12(%rsp)
  20ac02:      	movl	%ebx, %edx
  20ac04:      	shrl	$0xc, %edx
  20ac07:      	andl	$0xf, %edx
  20ac0a:      	movzbl	(%rdx,%rcx), %edx
  20ac0e:      	movb	%dl, 0x13(%rsp)
  20ac12:      	movl	%ebx, %edx
  20ac14:      	shrl	$0x8, %edx
  20ac17:      	andl	$0xf, %edx
  20ac1a:      	movzbl	(%rdx,%rcx), %edx
  20ac1e:      	movb	%dl, 0x14(%rsp)
  20ac22:      	movl	%ebx, %edx
  20ac24:      	shrl	$0x4, %edx
  20ac27:      	andl	$0xf, %edx
  20ac2a:      	movzbl	(%rdx,%rcx), %edx
  20ac2e:      	movb	%dl, 0x15(%rsp)
  20ac32:      	andl	$0xf, %ebx
  20ac35:      	movzbl	(%rbx,%rcx), %ecx
  20ac39:      	movb	%cl, 0x16(%rsp)
  20ac3d:      	movb	$0x7d, 0x17(%rsp)
  20ac42:      	cmpq	$0xa, %rdi
  20ac46:      	jae	0x20ac92 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330+0x252>
  20ac48:      	movw	$0x755c, 0xc(%rsp,%rax) # imm = 0x755C
  20ac4f:      	movb	$0x7b, 0xe(%rsp,%rax)
  20ac54:      	movzwl	0x16(%rsp), %eax
  20ac59:      	movw	%ax, 0x8(%r14)
  20ac5e:      	movq	0xe(%rsp), %rax
  20ac63:      	movq	%rax, (%r14)
  20ac66:      	movb	%dil, 0xa(%r14)
  20ac6a:      	movb	$0xa, 0xb(%r14)
  20ac6f:      	addq	$0x18, %rsp
  20ac73:      	popq	%rbx
  20ac74:      	popq	%r14
  20ac76:      	retq
  20ac77:      	movw	$0x225c, (%rdi)         # imm = 0x225C
  20ac7c:      	movq	$0x0, 0x2(%rdi)
  20ac84:      	movw	$0x200, 0xa(%rdi)       # imm = 0x200
  20ac8a:      	addq	$0x18, %rsp
  20ac8e:      	popq	%rbx
  20ac8f:      	popq	%r14
  20ac91:      	retq
  20ac92:      	leaq	0x43cf(%rip), %rdx      # 0x20f068 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671>
  20ac99:      	movl	$0xa, %esi
  20ac9e:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  20aca3:      	leaq	0x43be(%rip), %rdx      # 0x20f068 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671>
  20acaa:      	movl	$0xa, %esi
  20acaf:      	movq	%rax, %rdi
  20acb2:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  20acb7:      	int3
  20acb8:      	int3
  20acb9:      	int3
  20acba:      	int3
  20acbb:      	int3
  20acbc:      	int3
  20acbd:      	int3
  20acbe:      	int3
  20acbf:      	int3

000000000020acc0 <<core::fmt::Arguments as core::fmt::Debug>::fmt::he4ebde8d927f84e1>:
  20acc0:      	movq	%rdi, %rdx
  20acc3:      	movq	0x20(%rsi), %rdi
  20acc7:      	movq	0x28(%rsi), %rsi
  20accb:      	jmp	0x20acd0 <core::fmt::write::h6d306477db77c931>

000000000020acd0 <core::fmt::write::h6d306477db77c931>:
  20acd0:      	pushq	%rbp
  20acd1:      	pushq	%r15
  20acd3:      	pushq	%r14
  20acd5:      	pushq	%r13
  20acd7:      	pushq	%r12
  20acd9:      	pushq	%rbx
  20acda:      	subq	$0x48, %rsp
  20acde:      	movq	$0x20, 0x38(%rsp)
  20ace7:      	movb	$0x3, 0x40(%rsp)
  20acec:      	movq	$0x0, 0x8(%rsp)
  20acf5:      	movq	$0x0, 0x18(%rsp)
  20acfe:      	movq	%rdi, 0x28(%rsp)
  20ad03:      	movq	%rsi, 0x30(%rsp)
  20ad08:      	movq	0x20(%rdx), %r12
  20ad0c:      	testq	%r12, %r12
  20ad0f:      	movq	%rdx, (%rsp)
  20ad13:      	je	0x20ae25 <core::fmt::write::h6d306477db77c931+0x155>
  20ad19:      	movq	0x28(%rdx), %rax
  20ad1d:      	testq	%rax, %rax
  20ad20:      	je	0x20ae8e <core::fmt::write::h6d306477db77c931+0x1be>
  20ad26:      	movq	(%rdx), %r13
  20ad29:      	movq	0x10(%rdx), %rbp
  20ad2d:      	addq	$0x8, %r13
  20ad31:      	imulq	$0x38, %rax, %r14
  20ad35:      	xorl	%ebx, %ebx
  20ad37:      	xorl	%r15d, %r15d
  20ad3a:      	nopw	(%rax,%rax)
  20ad40:      	movq	(%r13), %rdx
  20ad44:      	testq	%rdx, %rdx
  20ad47:      	je	0x20ad62 <core::fmt::write::h6d306477db77c931+0x92>
  20ad49:      	movq	0x28(%rsp), %rdi
  20ad4e:      	movq	0x30(%rsp), %rax
  20ad53:      	movq	-0x8(%r13), %rsi
  20ad57:      	callq	*0x18(%rax)
  20ad5a:      	testb	%al, %al
  20ad5c:      	jne	0x20aec0 <core::fmt::write::h6d306477db77c931+0x1f0>
  20ad62:      	movl	0x28(%r12,%rbx), %eax
  20ad67:      	movl	%eax, 0x38(%rsp)
  20ad6b:      	movzbl	0x30(%r12,%rbx), %eax
  20ad71:      	movb	%al, 0x40(%rsp)
  20ad75:      	movl	0x2c(%r12,%rbx), %eax
  20ad7a:      	movl	%eax, 0x3c(%rsp)
  20ad7e:      	movq	0x10(%r12,%rbx), %rcx
  20ad83:      	movq	0x18(%r12,%rbx), %rax
  20ad88:      	testq	%rcx, %rcx
  20ad8b:      	je	0x20ada8 <core::fmt::write::h6d306477db77c931+0xd8>
  20ad8d:      	cmpl	$0x1, %ecx
  20ad90:      	jne	0x20ad9e <core::fmt::write::h6d306477db77c931+0xce>
  20ad92:      	shlq	$0x4, %rax
  20ad96:      	cmpq	$0x0, 0x8(%rbp,%rax)
  20ad9c:      	je	0x20ada2 <core::fmt::write::h6d306477db77c931+0xd2>
  20ad9e:      	xorl	%ecx, %ecx
  20ada0:      	jmp	0x20adad <core::fmt::write::h6d306477db77c931+0xdd>
  20ada2:      	addq	%rbp, %rax
  20ada5:      	movq	(%rax), %rax
  20ada8:      	movl	$0x1, %ecx
  20adad:      	movq	%rcx, 0x8(%rsp)
  20adb2:      	movq	%rax, 0x10(%rsp)
  20adb7:      	movq	(%r12,%rbx), %rcx
  20adbb:      	cmpq	$0x2, %rcx
  20adbf:      	je	0x20add7 <core::fmt::write::h6d306477db77c931+0x107>
  20adc1:      	movq	0x8(%r12,%rbx), %rax
  20adc6:      	cmpl	$0x1, %ecx
  20adc9:      	jne	0x20ade1 <core::fmt::write::h6d306477db77c931+0x111>
  20adcb:      	shlq	$0x4, %rax
  20adcf:      	cmpq	$0x0, 0x8(%rbp,%rax)
  20add5:      	je	0x20addb <core::fmt::write::h6d306477db77c931+0x10b>
  20add7:      	xorl	%ecx, %ecx
  20add9:      	jmp	0x20ade6 <core::fmt::write::h6d306477db77c931+0x116>
  20addb:      	addq	%rbp, %rax
  20adde:      	movq	(%rax), %rax
  20ade1:      	movl	$0x1, %ecx
  20ade6:      	movq	%rcx, 0x18(%rsp)
  20adeb:      	movq	%rax, 0x20(%rsp)
  20adf0:      	movq	0x20(%r12,%rbx), %rax
  20adf5:      	shlq	$0x4, %rax
  20adf9:      	movq	(%rbp,%rax), %rdi
  20adfe:      	leaq	0x8(%rsp), %rsi
  20ae03:      	callq	*0x8(%rbp,%rax)
  20ae07:      	testb	%al, %al
  20ae09:      	jne	0x20aec0 <core::fmt::write::h6d306477db77c931+0x1f0>
  20ae0f:      	addq	$0x10, %r13
  20ae13:      	addq	$0x38, %rbx
  20ae17:      	incq	%r15
  20ae1a:      	cmpq	%rbx, %r14
  20ae1d:      	jne	0x20ad40 <core::fmt::write::h6d306477db77c931+0x70>
  20ae23:      	jmp	0x20ae91 <core::fmt::write::h6d306477db77c931+0x1c1>
  20ae25:      	movq	0x18(%rdx), %rbx
  20ae29:      	testq	%rbx, %rbx
  20ae2c:      	je	0x20aec4 <core::fmt::write::h6d306477db77c931+0x1f4>
  20ae32:      	movq	0x10(%rdx), %r12
  20ae36:      	movq	(%rdx), %r13
  20ae39:      	shlq	$0x4, %rbx
  20ae3d:      	xorl	%ebp, %ebp
  20ae3f:      	leaq	0x8(%rsp), %r14
  20ae44:      	xorl	%r15d, %r15d
  20ae47:      	nopw	(%rax,%rax)
  20ae50:      	movq	0x8(%r13,%rbp), %rdx
  20ae55:      	testq	%rdx, %rdx
  20ae58:      	je	0x20ae70 <core::fmt::write::h6d306477db77c931+0x1a0>
  20ae5a:      	movq	0x28(%rsp), %rdi
  20ae5f:      	movq	0x30(%rsp), %rax
  20ae64:      	movq	(%r13,%rbp), %rsi
  20ae69:      	callq	*0x18(%rax)
  20ae6c:      	testb	%al, %al
  20ae6e:      	jne	0x20aec0 <core::fmt::write::h6d306477db77c931+0x1f0>
  20ae70:      	movq	(%r12,%rbp), %rdi
  20ae74:      	movq	%r14, %rsi
  20ae77:      	callq	*0x8(%r12,%rbp)
  20ae7c:      	testb	%al, %al
  20ae7e:      	jne	0x20aec0 <core::fmt::write::h6d306477db77c931+0x1f0>
  20ae80:      	addq	$0x10, %rbp
  20ae84:      	incq	%r15
  20ae87:      	cmpq	%rbp, %rbx
  20ae8a:      	jne	0x20ae50 <core::fmt::write::h6d306477db77c931+0x180>
  20ae8c:      	jmp	0x20ae91 <core::fmt::write::h6d306477db77c931+0x1c1>
  20ae8e:      	xorl	%r15d, %r15d
  20ae91:      	movq	(%rsp), %rax
  20ae95:      	cmpq	0x8(%rax), %r15
  20ae99:      	jae	0x20aed1 <core::fmt::write::h6d306477db77c931+0x201>
  20ae9b:      	movq	(%rsp), %rax
  20ae9f:      	movq	(%rax), %rax
  20aea2:      	shlq	$0x4, %r15
  20aea6:      	movq	0x28(%rsp), %rdi
  20aeab:      	movq	0x30(%rsp), %rcx
  20aeb0:      	movq	(%rax,%r15), %rsi
  20aeb4:      	movq	0x8(%rax,%r15), %rdx
  20aeb9:      	callq	*0x18(%rcx)
  20aebc:      	testb	%al, %al
  20aebe:      	je	0x20aed1 <core::fmt::write::h6d306477db77c931+0x201>
  20aec0:      	movb	$0x1, %al
  20aec2:      	jmp	0x20aed3 <core::fmt::write::h6d306477db77c931+0x203>
  20aec4:      	xorl	%r15d, %r15d
  20aec7:      	movq	(%rsp), %rax
  20aecb:      	cmpq	0x8(%rax), %r15
  20aecf:      	jb	0x20ae9b <core::fmt::write::h6d306477db77c931+0x1cb>
  20aed1:      	xorl	%eax, %eax
  20aed3:      	addq	$0x48, %rsp
  20aed7:      	popq	%rbx
  20aed8:      	popq	%r12
  20aeda:      	popq	%r13
  20aedc:      	popq	%r14
  20aede:      	popq	%r15
  20aee0:      	popq	%rbp
  20aee1:      	retq
  20aee2:      	int3
  20aee3:      	int3
  20aee4:      	int3
  20aee5:      	int3
  20aee6:      	int3
  20aee7:      	int3
  20aee8:      	int3
  20aee9:      	int3
  20aeea:      	int3
  20aeeb:      	int3
  20aeec:      	int3
  20aeed:      	int3
  20aeee:      	int3
  20aeef:      	int3

000000000020aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>:
  20aef0:      	pushq	%rbp
  20aef1:      	pushq	%r15
  20aef3:      	pushq	%r14
  20aef5:      	pushq	%r13
  20aef7:      	pushq	%r12
  20aef9:      	pushq	%rbx
  20aefa:      	subq	$0x28, %rsp
  20aefe:      	movq	%r9, %r13
  20af01:      	movq	%r8, 0x10(%rsp)
  20af06:      	movq	%rcx, %rbp
  20af09:      	movq	%rdx, %r12
  20af0c:      	testl	%esi, %esi
  20af0e:      	je	0x20af5b <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x6b>
  20af10:      	movl	0x34(%rdi), %ebx
  20af13:      	movl	%ebx, %r14d
  20af16:      	andl	$0x1, %r14d
  20af1a:      	movl	$0x110000, %eax         # imm = 0x110000
  20af1f:      	movl	$0x2b, %edx
  20af24:      	cmovel	%eax, %edx
  20af27:      	addq	%r13, %r14
  20af2a:      	testb	$0x4, %bl
  20af2d:      	je	0x20af6c <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x7c>
  20af2f:      	cmpq	$0x20, %rbp
  20af33:      	jae	0x20afc7 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0xd7>
  20af39:      	testq	%rbp, %rbp
  20af3c:      	je	0x20b05d <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x16d>
  20af42:      	movl	%ebp, %ecx
  20af44:      	andl	$0x3, %ecx
  20af47:      	cmpq	$0x4, %rbp
  20af4b:      	jae	0x20b061 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x171>
  20af51:      	xorl	%eax, %eax
  20af53:      	xorl	%r10d, %r10d
  20af56:      	jmp	0x20b0b4 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1c4>
  20af5b:      	leaq	0x1(%r13), %r14
  20af5f:      	movl	0x34(%rdi), %ebx
  20af62:      	movl	$0x2d, %edx
  20af67:      	testb	$0x4, %bl
  20af6a:      	jne	0x20af2f <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x3f>
  20af6c:      	xorl	%r12d, %r12d
  20af6f:      	cmpq	$0x0, (%rdi)
  20af73:      	je	0x20b0e4 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1f4>
  20af79:      	movl	%edx, 0x4(%rsp)
  20af7d:      	movq	0x8(%rdi), %r15
  20af81:      	subq	%r14, %r15
  20af84:      	jbe	0x20afb0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0xc0>
  20af86:      	testb	$0x8, %bl
  20af89:      	jne	0x20afed <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0xfd>
  20af8b:      	movzbl	0x38(%rdi), %eax
  20af8f:      	leaq	-0x957a(%rip), %rcx     # 0x201a1c <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313+0x16b>
  20af96:      	movslq	(%rcx,%rax,4), %rdx
  20af9a:      	addq	%rcx, %rdx
  20af9d:      	movq	%r13, 0x18(%rsp)
  20afa2:      	jmpq	*%rdx
  20afa4:      	xorl	%eax, %eax
  20afa6:      	movq	%rax, 0x8(%rsp)
  20afab:      	jmp	0x20b174 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x284>
  20afb0:      	movq	0x20(%rdi), %rbx
  20afb4:      	movq	0x28(%rdi), %r14
  20afb8:      	movq	%rbx, %rdi
  20afbb:      	movq	%r14, %rsi
  20afbe:      	movl	0x4(%rsp), %edx
  20afc2:      	jmp	0x20b0f2 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x202>
  20afc7:      	movq	%r13, 0x18(%rsp)
  20afcc:      	movl	%edx, %r13d
  20afcf:      	movq	%rdi, %r15
  20afd2:      	movq	%r12, %rdi
  20afd5:      	movq	%rbp, %rsi
  20afd8:      	callq	0x20bdf0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8>
  20afdd:      	movq	%r15, %rdi
  20afe0:      	movl	%r13d, %edx
  20afe3:      	movq	0x18(%rsp), %r13
  20afe8:      	jmp	0x20b0d7 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1e7>
  20afed:      	movl	0x30(%rdi), %eax
  20aff0:      	movl	%eax, 0x24(%rsp)
  20aff4:      	movl	$0x30, 0x30(%rdi)
  20affb:      	movzbl	0x38(%rdi), %eax
  20afff:      	movb	%al, 0x3(%rsp)
  20b003:      	movb	$0x1, 0x38(%rdi)
  20b007:      	movq	0x20(%rdi), %r14
  20b00b:      	movq	%rdi, 0x8(%rsp)
  20b010:      	movq	0x28(%rdi), %rbx
  20b014:      	movq	%r14, %rdi
  20b017:      	movq	%rbx, %rsi
  20b01a:      	movl	0x4(%rsp), %edx
  20b01e:      	movq	%r12, %rcx
  20b021:      	movq	%rbp, %r8
  20b024:      	callq	0x20b230 <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e>
  20b029:      	movb	$0x1, %bpl
  20b02c:      	testb	%al, %al
  20b02e:      	jne	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b034:      	incq	%r15
  20b037:      	nopw	(%rax,%rax)
  20b040:      	decq	%r15
  20b043:      	je	0x20b134 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x244>
  20b049:      	movq	%r14, %rdi
  20b04c:      	movl	$0x30, %esi
  20b051:      	callq	*0x20(%rbx)
  20b054:      	testb	%al, %al
  20b056:      	je	0x20b040 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x150>
  20b058:      	jmp	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b05d:      	xorl	%eax, %eax
  20b05f:      	jmp	0x20b0d7 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1e7>
  20b061:      	movl	%ebp, %esi
  20b063:      	andl	$0x1c, %esi
  20b066:      	xorl	%eax, %eax
  20b068:      	xorl	%r10d, %r10d
  20b06b:      	nopl	(%rax,%rax)
  20b070:      	xorl	%r8d, %r8d
  20b073:      	cmpb	$-0x40, (%r12,%r10)
  20b078:      	setge	%r8b
  20b07c:      	addq	%rax, %r8
  20b07f:      	xorl	%eax, %eax
  20b081:      	cmpb	$-0x40, 0x1(%r12,%r10)
  20b087:      	setge	%al
  20b08a:      	xorl	%r9d, %r9d
  20b08d:      	cmpb	$-0x40, 0x2(%r12,%r10)
  20b093:      	setge	%r9b
  20b097:      	addq	%rax, %r9
  20b09a:      	addq	%r8, %r9
  20b09d:      	xorl	%eax, %eax
  20b09f:      	cmpb	$-0x40, 0x3(%r12,%r10)
  20b0a5:      	setge	%al
  20b0a8:      	addq	%r9, %rax
  20b0ab:      	addq	$0x4, %r10
  20b0af:      	cmpq	%r10, %rsi
  20b0b2:      	jne	0x20b070 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x180>
  20b0b4:      	testq	%rcx, %rcx
  20b0b7:      	je	0x20b0d7 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1e7>
  20b0b9:      	addq	%r12, %r10
  20b0bc:      	xorl	%esi, %esi
  20b0be:      	nop
  20b0c0:      	xorl	%r8d, %r8d
  20b0c3:      	cmpb	$-0x40, (%r10,%rsi)
  20b0c8:      	setge	%r8b
  20b0cc:      	addq	%r8, %rax
  20b0cf:      	incq	%rsi
  20b0d2:      	cmpq	%rsi, %rcx
  20b0d5:      	jne	0x20b0c0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x1d0>
  20b0d7:      	addq	%rax, %r14
  20b0da:      	cmpq	$0x0, (%rdi)
  20b0de:      	jne	0x20af79 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x89>
  20b0e4:      	movq	0x20(%rdi), %rbx
  20b0e8:      	movq	0x28(%rdi), %r14
  20b0ec:      	movq	%rbx, %rdi
  20b0ef:      	movq	%r14, %rsi
  20b0f2:      	movq	%r12, %rcx
  20b0f5:      	movq	%rbp, %r8
  20b0f8:      	callq	0x20b230 <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e>
  20b0fd:      	movb	$0x1, %bpl
  20b100:      	testb	%al, %al
  20b102:      	je	0x20b115 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x225>
  20b104:      	movl	%ebp, %eax
  20b106:      	addq	$0x28, %rsp
  20b10a:      	popq	%rbx
  20b10b:      	popq	%r12
  20b10d:      	popq	%r13
  20b10f:      	popq	%r14
  20b111:      	popq	%r15
  20b113:      	popq	%rbp
  20b114:      	retq
  20b115:      	movq	0x18(%r14), %rax
  20b119:      	movq	%rbx, %rdi
  20b11c:      	movq	0x10(%rsp), %rsi
  20b121:      	movq	%r13, %rdx
  20b124:      	addq	$0x28, %rsp
  20b128:      	popq	%rbx
  20b129:      	popq	%r12
  20b12b:      	popq	%r13
  20b12d:      	popq	%r14
  20b12f:      	popq	%r15
  20b131:      	popq	%rbp
  20b132:      	jmpq	*%rax
  20b134:      	movq	%r14, %rdi
  20b137:      	movq	0x10(%rsp), %rsi
  20b13c:      	movq	%r13, %rdx
  20b13f:      	callq	*0x18(%rbx)
  20b142:      	testb	%al, %al
  20b144:      	jne	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b146:      	movq	0x8(%rsp), %r13
  20b14b:      	movl	0x24(%rsp), %eax
  20b14f:      	movl	%eax, 0x30(%r13)
  20b153:      	movzbl	0x3(%rsp), %eax
  20b158:      	movb	%al, 0x38(%r13)
  20b15c:      	xorl	%ebp, %ebp
  20b15e:      	jmp	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b160:      	movq	%r15, %rax
  20b163:      	shrq	%rax
  20b166:      	incq	%r15
  20b169:      	shrq	%r15
  20b16c:      	movq	%r15, 0x8(%rsp)
  20b171:      	movq	%rax, %r15
  20b174:      	movq	0x20(%rdi), %r13
  20b178:      	movq	0x28(%rdi), %r14
  20b17c:      	movl	0x30(%rdi), %ebx
  20b17f:      	incq	%r15
  20b182:      	nopw	%cs:(%rax,%rax)
  20b190:      	movq	%r13, %rdi
  20b193:      	decq	%r15
  20b196:      	je	0x20b1aa <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x2ba>
  20b198:      	movl	%ebx, %esi
  20b19a:      	callq	*0x20(%r14)
  20b19e:      	testb	%al, %al
  20b1a0:      	je	0x20b190 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x2a0>
  20b1a2:      	movb	$0x1, %bpl
  20b1a5:      	jmp	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b1aa:      	movq	%r14, %rsi
  20b1ad:      	movl	0x4(%rsp), %edx
  20b1b1:      	movq	%r12, %rcx
  20b1b4:      	movq	%rbp, %r8
  20b1b7:      	callq	0x20b230 <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e>
  20b1bc:      	movb	$0x1, %bpl
  20b1bf:      	testb	%al, %al
  20b1c1:      	jne	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b1c7:      	movq	%r13, %rdi
  20b1ca:      	movq	0x10(%rsp), %rsi
  20b1cf:      	movq	0x18(%rsp), %rdx
  20b1d4:      	callq	*0x18(%r14)
  20b1d8:      	testb	%al, %al
  20b1da:      	jne	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b1e0:      	movq	0x8(%rsp), %rbp
  20b1e5:      	movq	%rbp, %r12
  20b1e8:      	negq	%r12
  20b1eb:      	movq	$-0x1, %r15
  20b1f2:      	nopw	%cs:(%rax,%rax)
  20b200:      	leaq	(%r12,%r15), %rax
  20b204:      	cmpq	$-0x1, %rax
  20b208:      	je	0x20b21c <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x32c>
  20b20a:      	movq	%r13, %rdi
  20b20d:      	movl	%ebx, %esi
  20b20f:      	callq	*0x20(%r14)
  20b213:      	incq	%r15
  20b216:      	testb	%al, %al
  20b218:      	je	0x20b200 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x310>
  20b21a:      	jmp	0x20b21f <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x32f>
  20b21c:      	movq	%rbp, %r15
  20b21f:      	cmpq	%rbp, %r15
  20b222:      	setb	%bpl
  20b226:      	jmp	0x20b104 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d+0x214>
  20b22b:      	int3
  20b22c:      	int3
  20b22d:      	int3
  20b22e:      	int3
  20b22f:      	int3

000000000020b230 <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e>:
  20b230:      	pushq	%r15
  20b232:      	pushq	%r14
  20b234:      	pushq	%r12
  20b236:      	pushq	%rbx
  20b237:      	pushq	%rax
  20b238:      	movq	%r8, %rbx
  20b23b:      	movq	%rcx, %r14
  20b23e:      	movq	%rsi, %r15
  20b241:      	cmpl	$0x110000, %edx         # imm = 0x110000
  20b247:      	je	0x20b25d <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e+0x2d>
  20b249:      	movq	%rdi, %r12
  20b24c:      	movl	%edx, %esi
  20b24e:      	callq	*0x20(%r15)
  20b252:      	movq	%r12, %rdi
  20b255:      	movl	%eax, %ecx
  20b257:      	movb	$0x1, %al
  20b259:      	testb	%cl, %cl
  20b25b:      	jne	0x20b27b <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e+0x4b>
  20b25d:      	testq	%r14, %r14
  20b260:      	je	0x20b279 <core::fmt::Formatter::pad_integral::write_prefix::h39aa48a93bd20c4e+0x49>
  20b262:      	movq	0x18(%r15), %rax
  20b266:      	movq	%r14, %rsi
  20b269:      	movq	%rbx, %rdx
  20b26c:      	addq	$0x8, %rsp
  20b270:      	popq	%rbx
  20b271:      	popq	%r12
  20b273:      	popq	%r14
  20b275:      	popq	%r15
  20b277:      	jmpq	*%rax
  20b279:      	xorl	%eax, %eax
  20b27b:      	addq	$0x8, %rsp
  20b27f:      	popq	%rbx
  20b280:      	popq	%r12
  20b282:      	popq	%r14
  20b284:      	popq	%r15
  20b286:      	retq
  20b287:      	int3
  20b288:      	int3
  20b289:      	int3
  20b28a:      	int3
  20b28b:      	int3
  20b28c:      	int3
  20b28d:      	int3
  20b28e:      	int3
  20b28f:      	int3

000000000020b290 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc>:
  20b290:      	pushq	%rbp
  20b291:      	pushq	%r15
  20b293:      	pushq	%r14
  20b295:      	pushq	%r13
  20b297:      	pushq	%r12
  20b299:      	pushq	%rbx
  20b29a:      	pushq	%rax
  20b29b:      	movq	%rdx, %rbx
  20b29e:      	movq	%rsi, %r14
  20b2a1:      	movq	(%rdi), %rax
  20b2a4:      	movq	0x10(%rdi), %rcx
  20b2a8:      	movq	%rax, %rdx
  20b2ab:      	orq	%rcx, %rdx
  20b2ae:      	je	0x20b4b8 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x228>
  20b2b4:      	testq	%rcx, %rcx
  20b2b7:      	je	0x20b3d9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x149>
  20b2bd:      	movq	0x18(%rdi), %rsi
  20b2c1:      	leaq	(%r14,%rbx), %rdx
  20b2c5:      	xorl	%ecx, %ecx
  20b2c7:      	testq	%rsi, %rsi
  20b2ca:      	je	0x20b361 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0xd1>
  20b2d0:      	movq	%r14, %r8
  20b2d3:      	jmp	0x20b2f2 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x62>
  20b2d5:      	nopw	%cs:(%rax,%rax)
  20b2e0:      	leaq	0x1(%r8), %r9
  20b2e4:      	subq	%r8, %rcx
  20b2e7:      	addq	%r9, %rcx
  20b2ea:      	movq	%r9, %r8
  20b2ed:      	decq	%rsi
  20b2f0:      	je	0x20b364 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0xd4>
  20b2f2:      	cmpq	%rdx, %r8
  20b2f5:      	je	0x20b3d9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x149>
  20b2fb:      	movzbl	(%r8), %r9d
  20b2ff:      	testb	%r9b, %r9b
  20b302:      	jns	0x20b2e0 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x50>
  20b304:      	cmpb	$-0x20, %r9b
  20b308:      	jb	0x20b355 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0xc5>
  20b30a:      	cmpb	$-0x10, %r9b
  20b30e:      	jb	0x20b35b <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0xcb>
  20b310:      	movzbl	0x1(%r8), %r10d
  20b315:      	andl	$0x3f, %r10d
  20b319:      	movzbl	0x2(%r8), %r11d
  20b31e:      	andl	$0x3f, %r11d
  20b322:      	movzbl	0x3(%r8), %ebp
  20b327:      	andl	$0x7, %r9d
  20b32b:      	shll	$0x12, %r9d
  20b32f:      	shll	$0xc, %r10d
  20b333:      	shll	$0x6, %r11d
  20b337:      	orl	%r10d, %r11d
  20b33a:      	andl	$0x3f, %ebp
  20b33d:      	orl	%r11d, %ebp
  20b340:      	orl	%r9d, %ebp
  20b343:      	cmpl	$0x110000, %ebp         # imm = 0x110000
  20b349:      	je	0x20b3d9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x149>
  20b34f:      	leaq	0x4(%r8), %r9
  20b353:      	jmp	0x20b2e4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x54>
  20b355:      	leaq	0x2(%r8), %r9
  20b359:      	jmp	0x20b2e4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x54>
  20b35b:      	leaq	0x3(%r8), %r9
  20b35f:      	jmp	0x20b2e4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x54>
  20b361:      	movq	%r14, %r9
  20b364:      	cmpq	%rdx, %r9
  20b367:      	je	0x20b3d9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x149>
  20b369:      	movzbl	(%r9), %edx
  20b36d:      	testb	%dl, %dl
  20b36f:      	jns	0x20b3b4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x124>
  20b371:      	cmpb	$-0x20, %dl
  20b374:      	jb	0x20b3b4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x124>
  20b376:      	cmpb	$-0x10, %dl
  20b379:      	jb	0x20b3b4 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x124>
  20b37b:      	movzbl	0x1(%r9), %esi
  20b380:      	andl	$0x3f, %esi
  20b383:      	movzbl	0x2(%r9), %r8d
  20b388:      	andl	$0x3f, %r8d
  20b38c:      	movzbl	0x3(%r9), %r9d
  20b391:      	andl	$0x7, %edx
  20b394:      	shll	$0x12, %edx
  20b397:      	shll	$0xc, %esi
  20b39a:      	shll	$0x6, %r8d
  20b39e:      	orl	%esi, %r8d
  20b3a1:      	andl	$0x3f, %r9d
  20b3a5:      	orl	%r8d, %r9d
  20b3a8:      	orl	%edx, %r9d
  20b3ab:      	cmpl	$0x110000, %r9d         # imm = 0x110000
  20b3b2:      	je	0x20b3d9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x149>
  20b3b4:      	testq	%rcx, %rcx
  20b3b7:      	je	0x20b3cb <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x13b>
  20b3b9:      	cmpq	%rbx, %rcx
  20b3bc:      	jae	0x20b3c9 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x139>
  20b3be:      	cmpb	$-0x40, (%r14,%rcx)
  20b3c3:      	jge	0x20b3cb <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x13b>
  20b3c5:      	xorl	%edx, %edx
  20b3c7:      	jmp	0x20b3ce <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x13e>
  20b3c9:      	jne	0x20b3c5 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x135>
  20b3cb:      	movq	%r14, %rdx
  20b3ce:      	testq	%rdx, %rdx
  20b3d1:      	cmovneq	%rcx, %rbx
  20b3d5:      	cmovneq	%rdx, %r14
  20b3d9:      	testq	%rax, %rax
  20b3dc:      	je	0x20b4b8 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x228>
  20b3e2:      	movq	0x8(%rdi), %r12
  20b3e6:      	cmpq	$0x20, %rbx
  20b3ea:      	jae	0x20b402 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x172>
  20b3ec:      	testq	%rbx, %rbx
  20b3ef:      	je	0x20b418 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x188>
  20b3f1:      	movl	%ebx, %ecx
  20b3f3:      	andl	$0x3, %ecx
  20b3f6:      	cmpq	$0x4, %rbx
  20b3fa:      	jae	0x20b41c <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x18c>
  20b3fc:      	xorl	%eax, %eax
  20b3fe:      	xorl	%edx, %edx
  20b400:      	jmp	0x20b474 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x1e4>
  20b402:      	movq	%rdi, %r15
  20b405:      	movq	%r14, %rdi
  20b408:      	movq	%rbx, %rsi
  20b40b:      	callq	0x20bdf0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8>
  20b410:      	movq	%r15, %rdi
  20b413:      	jmp	0x20b496 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x206>
  20b418:      	xorl	%eax, %eax
  20b41a:      	jmp	0x20b496 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x206>
  20b41c:      	movl	%ebx, %esi
  20b41e:      	andl	$0x1c, %esi
  20b421:      	xorl	%eax, %eax
  20b423:      	xorl	%edx, %edx
  20b425:      	nopw	%cs:(%rax,%rax)
  20b430:      	xorl	%r8d, %r8d
  20b433:      	cmpb	$-0x40, (%r14,%rdx)
  20b438:      	setge	%r8b
  20b43c:      	addq	%rax, %r8
  20b43f:      	xorl	%eax, %eax
  20b441:      	cmpb	$-0x40, 0x1(%r14,%rdx)
  20b447:      	setge	%al
  20b44a:      	xorl	%r9d, %r9d
  20b44d:      	cmpb	$-0x40, 0x2(%r14,%rdx)
  20b453:      	setge	%r9b
  20b457:      	addq	%rax, %r9
  20b45a:      	addq	%r8, %r9
  20b45d:      	xorl	%eax, %eax
  20b45f:      	cmpb	$-0x40, 0x3(%r14,%rdx)
  20b465:      	setge	%al
  20b468:      	addq	%r9, %rax
  20b46b:      	addq	$0x4, %rdx
  20b46f:      	cmpq	%rdx, %rsi
  20b472:      	jne	0x20b430 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x1a0>
  20b474:      	testq	%rcx, %rcx
  20b477:      	je	0x20b496 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x206>
  20b479:      	addq	%r14, %rdx
  20b47c:      	xorl	%esi, %esi
  20b47e:      	nop
  20b480:      	xorl	%r8d, %r8d
  20b483:      	cmpb	$-0x40, (%rdx,%rsi)
  20b487:      	setge	%r8b
  20b48b:      	addq	%r8, %rax
  20b48e:      	incq	%rsi
  20b491:      	cmpq	%rsi, %rcx
  20b494:      	jne	0x20b480 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x1f0>
  20b496:      	subq	%rax, %r12
  20b499:      	jbe	0x20b4b8 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x228>
  20b49b:      	movzbl	0x38(%rdi), %eax
  20b49f:      	leaq	-0x9a7a(%rip), %rcx     # 0x201a2c <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313+0x17b>
  20b4a6:      	movslq	(%rcx,%rax,4), %rax
  20b4aa:      	addq	%rcx, %rax
  20b4ad:      	jmpq	*%rax
  20b4af:      	movq	%r12, (%rsp)
  20b4b3:      	xorl	%r12d, %r12d
  20b4b6:      	jmp	0x20b4f8 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x268>
  20b4b8:      	movq	0x20(%rdi), %rax
  20b4bc:      	movq	0x28(%rdi), %rcx
  20b4c0:      	movq	0x18(%rcx), %rcx
  20b4c4:      	movq	%rax, %rdi
  20b4c7:      	movq	%r14, %rsi
  20b4ca:      	movq	%rbx, %rdx
  20b4cd:      	addq	$0x8, %rsp
  20b4d1:      	popq	%rbx
  20b4d2:      	popq	%r12
  20b4d4:      	popq	%r13
  20b4d6:      	popq	%r14
  20b4d8:      	popq	%r15
  20b4da:      	popq	%rbp
  20b4db:      	jmpq	*%rcx
  20b4dd:      	xorl	%eax, %eax
  20b4df:      	movq	%rax, (%rsp)
  20b4e3:      	jmp	0x20b4f8 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x268>
  20b4e5:      	movq	%r12, %rax
  20b4e8:      	shrq	%rax
  20b4eb:      	incq	%r12
  20b4ee:      	shrq	%r12
  20b4f1:      	movq	%r12, (%rsp)
  20b4f5:      	movq	%rax, %r12
  20b4f8:      	movq	0x20(%rdi), %r15
  20b4fc:      	movq	0x28(%rdi), %r13
  20b500:      	movl	0x30(%rdi), %ebp
  20b503:      	incq	%r12
  20b506:      	nopw	%cs:(%rax,%rax)
  20b510:      	movq	%r15, %rdi
  20b513:      	decq	%r12
  20b516:      	je	0x20b526 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x296>
  20b518:      	movl	%ebp, %esi
  20b51a:      	callq	*0x20(%r13)
  20b51e:      	testb	%al, %al
  20b520:      	je	0x20b510 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x280>
  20b522:      	movb	$0x1, %al
  20b524:      	jmp	0x20b575 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x2e5>
  20b526:      	movq	%r14, %rsi
  20b529:      	movq	%rbx, %rdx
  20b52c:      	callq	*0x18(%r13)
  20b530:      	movl	%eax, %ecx
  20b532:      	movb	$0x1, %al
  20b534:      	testb	%cl, %cl
  20b536:      	jne	0x20b575 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x2e5>
  20b538:      	movq	(%rsp), %r12
  20b53c:      	movq	%r12, %r14
  20b53f:      	negq	%r14
  20b542:      	movq	$-0x1, %rbx
  20b549:      	nopl	(%rax)
  20b550:      	leaq	(%r14,%rbx), %rax
  20b554:      	cmpq	$-0x1, %rax
  20b558:      	je	0x20b56c <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x2dc>
  20b55a:      	movq	%r15, %rdi
  20b55d:      	movl	%ebp, %esi
  20b55f:      	callq	*0x20(%r13)
  20b563:      	incq	%rbx
  20b566:      	testb	%al, %al
  20b568:      	je	0x20b550 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x2c0>
  20b56a:      	jmp	0x20b56f <core::fmt::Formatter::pad::hc800d22bcdfb4ecc+0x2df>
  20b56c:      	movq	%r12, %rbx
  20b56f:      	cmpq	%r12, %rbx
  20b572:      	setb	%al
  20b575:      	addq	$0x8, %rsp
  20b579:      	popq	%rbx
  20b57a:      	popq	%r12
  20b57c:      	popq	%r13
  20b57e:      	popq	%r14
  20b580:      	popq	%r15
  20b582:      	popq	%rbp
  20b583:      	retq
  20b584:      	int3
  20b585:      	int3
  20b586:      	int3
  20b587:      	int3
  20b588:      	int3
  20b589:      	int3
  20b58a:      	int3
  20b58b:      	int3
  20b58c:      	int3
  20b58d:      	int3
  20b58e:      	int3
  20b58f:      	int3

000000000020b590 <<core::fmt::Formatter as core::fmt::Write>::write_str::h0afbaa0c9e190b04>:
  20b590:      	movq	0x20(%rdi), %rax
  20b594:      	movq	0x28(%rdi), %rcx
  20b598:      	movq	0x18(%rcx), %rcx
  20b59c:      	movq	%rax, %rdi
  20b59f:      	jmpq	*%rcx
  20b5a1:      	int3
  20b5a2:      	int3
  20b5a3:      	int3
  20b5a4:      	int3
  20b5a5:      	int3
  20b5a6:      	int3
  20b5a7:      	int3
  20b5a8:      	int3
  20b5a9:      	int3
  20b5aa:      	int3
  20b5ab:      	int3
  20b5ac:      	int3
  20b5ad:      	int3
  20b5ae:      	int3
  20b5af:      	int3

000000000020b5b0 <core::fmt::Formatter::debug_struct::hcf3d543192419406>:
  20b5b0:      	pushq	%r14
  20b5b2:      	pushq	%rbx
  20b5b3:      	pushq	%rax
  20b5b4:      	movq	%rsi, %rbx
  20b5b7:      	movq	%rdi, %r14
  20b5ba:      	movq	0x20(%rsi), %rdi
  20b5be:      	movq	0x28(%rsi), %rax
  20b5c2:      	movq	%rdx, %rsi
  20b5c5:      	movq	%rcx, %rdx
  20b5c8:      	callq	*0x18(%rax)
  20b5cb:      	movq	%rbx, (%r14)
  20b5ce:      	movb	%al, 0x8(%r14)
  20b5d2:      	movb	$0x0, 0x9(%r14)
  20b5d7:      	movq	%r14, %rax
  20b5da:      	addq	$0x8, %rsp
  20b5de:      	popq	%rbx
  20b5df:      	popq	%r14
  20b5e1:      	retq
  20b5e2:      	int3
  20b5e3:      	int3
  20b5e4:      	int3
  20b5e5:      	int3
  20b5e6:      	int3
  20b5e7:      	int3
  20b5e8:      	int3
  20b5e9:      	int3
  20b5ea:      	int3
  20b5eb:      	int3
  20b5ec:      	int3
  20b5ed:      	int3
  20b5ee:      	int3
  20b5ef:      	int3

000000000020b5f0 <core::fmt::Formatter::debug_tuple::he0639cdfd2a3270b>:
  20b5f0:      	pushq	%r15
  20b5f2:      	pushq	%r14
  20b5f4:      	pushq	%rbx
  20b5f5:      	movq	%rcx, %rbx
  20b5f8:      	movq	%rsi, %r14
  20b5fb:      	movq	%rdi, %r15
  20b5fe:      	movq	0x20(%rsi), %rdi
  20b602:      	movq	0x28(%rsi), %rax
  20b606:      	movq	%rdx, %rsi
  20b609:      	movq	%rcx, %rdx
  20b60c:      	callq	*0x18(%rax)
  20b60f:      	testq	%rbx, %rbx
  20b612:      	movq	%r14, 0x8(%r15)
  20b616:      	movb	%al, 0x10(%r15)
  20b61a:      	movq	$0x0, (%r15)
  20b621:      	sete	0x11(%r15)
  20b626:      	movq	%r15, %rax
  20b629:      	popq	%rbx
  20b62a:      	popq	%r14
  20b62c:      	popq	%r15
  20b62e:      	retq
  20b62f:      	int3

000000000020b630 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107>:
  20b630:      	pushq	%r15
  20b632:      	pushq	%r14
  20b634:      	pushq	%r12
  20b636:      	pushq	%rbx
  20b637:      	subq	$0x18, %rsp
  20b63b:      	movq	%r8, %rbx
  20b63e:      	movq	%rcx, %r14
  20b641:      	movq	%rdx, %r15
  20b644:      	movq	%rdi, %r12
  20b647:      	movq	0x20(%rdi), %rdi
  20b64b:      	movq	0x28(%r12), %rax
  20b650:      	callq	*0x18(%rax)
  20b653:      	testq	%r15, %r15
  20b656:      	movq	%r12, 0x8(%rsp)
  20b65b:      	movb	%al, 0x10(%rsp)
  20b65f:      	movq	$0x0, (%rsp)
  20b667:      	sete	0x11(%rsp)
  20b66c:      	movq	%rsp, %rdi
  20b66f:      	movq	%r14, %rsi
  20b672:      	movq	%rbx, %rdx
  20b675:      	callq	0x20d530 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed>
  20b67a:      	movq	(%rsp), %rcx
  20b67e:      	movzbl	0x10(%rsp), %edx
  20b683:      	testq	%rcx, %rcx
  20b686:      	je	0x20b6de <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0xae>
  20b688:      	movb	$0x1, %al
  20b68a:      	testb	%dl, %dl
  20b68c:      	jne	0x20b6e0 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0xb0>
  20b68e:      	movq	0x8(%rsp), %rbx
  20b693:      	cmpq	$0x1, %rcx
  20b697:      	jne	0x20b6c5 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0x95>
  20b699:      	cmpb	$0x0, 0x11(%rsp)
  20b69e:      	je	0x20b6c5 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0x95>
  20b6a0:      	testb	$0x4, 0x34(%rbx)
  20b6a4:      	jne	0x20b6c5 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0x95>
  20b6a6:      	movq	0x20(%rbx), %rdi
  20b6aa:      	movq	0x28(%rbx), %rax
  20b6ae:      	leaq	-0x9080(%rip), %rsi     # 0x202635 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.53.llvm.15512266440168297285>
  20b6b5:      	movl	$0x1, %edx
  20b6ba:      	callq	*0x18(%rax)
  20b6bd:      	movl	%eax, %ecx
  20b6bf:      	movb	$0x1, %al
  20b6c1:      	testb	%cl, %cl
  20b6c3:      	jne	0x20b6e0 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0xb0>
  20b6c5:      	movq	0x20(%rbx), %rdi
  20b6c9:      	movq	0x28(%rbx), %rax
  20b6cd:      	leaq	-0x909e(%rip), %rsi     # 0x202636 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.54.llvm.15512266440168297285>
  20b6d4:      	movl	$0x1, %edx
  20b6d9:      	callq	*0x18(%rax)
  20b6dc:      	jmp	0x20b6e0 <core::fmt::Formatter::debug_tuple_field1_finish::hdd7c02dd2a7c7107+0xb0>
  20b6de:      	movl	%edx, %eax
  20b6e0:      	testb	%al, %al
  20b6e2:      	setne	%al
  20b6e5:      	addq	$0x18, %rsp
  20b6e9:      	popq	%rbx
  20b6ea:      	popq	%r12
  20b6ec:      	popq	%r14
  20b6ee:      	popq	%r15
  20b6f0:      	retq
  20b6f1:      	int3
  20b6f2:      	int3
  20b6f3:      	int3
  20b6f4:      	int3
  20b6f5:      	int3
  20b6f6:      	int3
  20b6f7:      	int3
  20b6f8:      	int3
  20b6f9:      	int3
  20b6fa:      	int3
  20b6fb:      	int3
  20b6fc:      	int3
  20b6fd:      	int3
  20b6fe:      	int3
  20b6ff:      	int3

000000000020b700 <<str as core::fmt::Display>::fmt::h22ee6e3a4d9e89f8>:
  20b700:      	movq	%rdx, %rax
  20b703:      	movq	%rsi, %rdx
  20b706:      	movq	%rdi, %rsi
  20b709:      	movq	%rax, %rdi
  20b70c:      	jmp	0x20b290 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc>
  20b711:      	int3
  20b712:      	int3
  20b713:      	int3
  20b714:      	int3
  20b715:      	int3
  20b716:      	int3
  20b717:      	int3
  20b718:      	int3
  20b719:      	int3
  20b71a:      	int3
  20b71b:      	int3
  20b71c:      	int3
  20b71d:      	int3
  20b71e:      	int3
  20b71f:      	int3

000000000020b720 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a>:
  20b720:      	pushq	%r15
  20b722:      	pushq	%r14
  20b724:      	pushq	%r12
  20b726:      	pushq	%rbx
  20b727:      	subq	$0x18, %rsp
  20b72b:      	movq	%rdi, %r14
  20b72e:      	movq	0x20(%rsi), %rbx
  20b732:      	movq	0x28(%rsi), %r12
  20b736:      	movq	0x20(%r12), %r15
  20b73b:      	movq	%rbx, %rdi
  20b73e:      	movl	$0x27, %esi
  20b743:      	callq	*%r15
  20b746:      	movl	%eax, %ecx
  20b748:      	movb	$0x1, %al
  20b74a:      	testb	%cl, %cl
  20b74c:      	jne	0x20b7a5 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a+0x85>
  20b74e:      	movl	(%r14), %esi
  20b751:      	leaq	0xc(%rsp), %rdi
  20b756:      	movl	$0x101, %edx            # imm = 0x101
  20b75b:      	callq	0x20aa40 <core::char::methods::<impl char>::escape_debug_ext::h60822c820afe8330>
  20b760:      	cmpb	$-0x80, 0xc(%rsp)
  20b765:      	jne	0x20b782 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a+0x62>
  20b767:      	movl	0x10(%rsp), %esi
  20b76b:      	movq	%rbx, %rdi
  20b76e:      	callq	*%r15
  20b771:      	testb	%al, %al
  20b773:      	jne	0x20b7a3 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a+0x83>
  20b775:      	movq	%rbx, %rdi
  20b778:      	movl	$0x27, %esi
  20b77d:      	callq	*%r15
  20b780:      	jmp	0x20b7a5 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a+0x85>
  20b782:      	movzbl	0x16(%rsp), %eax
  20b787:      	movzbl	0x17(%rsp), %edx
  20b78c:      	subq	%rax, %rdx
  20b78f:      	leaq	(%rsp,%rax), %rsi
  20b793:      	addq	$0xc, %rsi
  20b797:      	movq	%rbx, %rdi
  20b79a:      	callq	*0x18(%r12)
  20b79f:      	testb	%al, %al
  20b7a1:      	je	0x20b775 <<char as core::fmt::Debug>::fmt::h42f33a3cf2376b7a+0x55>
  20b7a3:      	movb	$0x1, %al
  20b7a5:      	addq	$0x18, %rsp
  20b7a9:      	popq	%rbx
  20b7aa:      	popq	%r12
  20b7ac:      	popq	%r14
  20b7ae:      	popq	%r15
  20b7b0:      	retq
  20b7b1:      	int3
  20b7b2:      	int3
  20b7b3:      	int3
  20b7b4:      	int3
  20b7b5:      	int3
  20b7b6:      	int3
  20b7b7:      	int3
  20b7b8:      	int3
  20b7b9:      	int3
  20b7ba:      	int3
  20b7bb:      	int3
  20b7bc:      	int3
  20b7bd:      	int3
  20b7be:      	int3
  20b7bf:      	int3

000000000020b7c0 <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f>:
  20b7c0:      	movq	(%rsi), %rax
  20b7c3:      	orq	0x10(%rsi), %rax
  20b7c7:      	movl	(%rdi), %eax
  20b7c9:      	jne	0x20b7db <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0x1b>
  20b7cb:      	movq	0x20(%rsi), %rdi
  20b7cf:      	movq	0x28(%rsi), %rcx
  20b7d3:      	movq	0x20(%rcx), %rcx
  20b7d7:      	movl	%eax, %esi
  20b7d9:      	jmpq	*%rcx
  20b7db:      	pushq	%rax
  20b7dc:      	movl	$0x0, 0x4(%rsp)
  20b7e4:      	cmpl	$0x80, %eax
  20b7e9:      	jae	0x20b7f9 <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0x39>
  20b7eb:      	movb	%al, 0x4(%rsp)
  20b7ef:      	movl	$0x1, %edx
  20b7f4:      	jmp	0x20b87f <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0xbf>
  20b7f9:      	movl	%eax, %ecx
  20b7fb:      	cmpl	$0x800, %eax            # imm = 0x800
  20b800:      	jae	0x20b81b <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0x5b>
  20b802:      	shrl	$0x6, %ecx
  20b805:      	orb	$-0x40, %cl
  20b808:      	movb	%cl, 0x4(%rsp)
  20b80c:      	andb	$0x3f, %al
  20b80e:      	orb	$-0x80, %al
  20b810:      	movb	%al, 0x5(%rsp)
  20b814:      	movl	$0x2, %edx
  20b819:      	jmp	0x20b87f <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0xbf>
  20b81b:      	cmpl	$0x10000, %eax          # imm = 0x10000
  20b820:      	jae	0x20b84a <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0x8a>
  20b822:      	shrl	$0xc, %ecx
  20b825:      	orb	$-0x20, %cl
  20b828:      	movb	%cl, 0x4(%rsp)
  20b82c:      	movl	%eax, %ecx
  20b82e:      	shrl	$0x6, %ecx
  20b831:      	andb	$0x3f, %cl
  20b834:      	orb	$-0x80, %cl
  20b837:      	movb	%cl, 0x5(%rsp)
  20b83b:      	andb	$0x3f, %al
  20b83d:      	orb	$-0x80, %al
  20b83f:      	movb	%al, 0x6(%rsp)
  20b843:      	movl	$0x3, %edx
  20b848:      	jmp	0x20b87f <<char as core::fmt::Display>::fmt::hccf87d1560d0a08f+0xbf>
  20b84a:      	shrl	$0x12, %ecx
  20b84d:      	orb	$-0x10, %cl
  20b850:      	movb	%cl, 0x4(%rsp)
  20b854:      	movl	%eax, %ecx
  20b856:      	shrl	$0xc, %ecx
  20b859:      	andb	$0x3f, %cl
  20b85c:      	orb	$-0x80, %cl
  20b85f:      	movb	%cl, 0x5(%rsp)
  20b863:      	movl	%eax, %ecx
  20b865:      	shrl	$0x6, %ecx
  20b868:      	andb	$0x3f, %cl
  20b86b:      	orb	$-0x80, %cl
  20b86e:      	movb	%cl, 0x6(%rsp)
  20b872:      	andb	$0x3f, %al
  20b874:      	orb	$-0x80, %al
  20b876:      	movb	%al, 0x7(%rsp)
  20b87a:      	movl	$0x4, %edx
  20b87f:      	leaq	0x4(%rsp), %rax
  20b884:      	movq	%rsi, %rdi
  20b887:      	movq	%rax, %rsi
  20b88a:      	callq	0x20b290 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc>
  20b88f:      	popq	%rcx
  20b890:      	retq
  20b891:      	int3
  20b892:      	int3
  20b893:      	int3
  20b894:      	int3
  20b895:      	int3
  20b896:      	int3
  20b897:      	int3
  20b898:      	int3
  20b899:      	int3
  20b89a:      	int3
  20b89b:      	int3
  20b89c:      	int3
  20b89d:      	int3
  20b89e:      	int3
  20b89f:      	int3

000000000020b8a0 <<&T as core::fmt::Debug>::fmt::h16d69338141005ba>:
  20b8a0:      	movq	(%rdi), %rax
  20b8a3:      	movq	0x8(%rdi), %rcx
  20b8a7:      	movq	0x18(%rcx), %rcx
  20b8ab:      	movq	%rax, %rdi
  20b8ae:      	jmpq	*%rcx

000000000020b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>:
  20b8b0:      	movq	%rsi, %rax
  20b8b3:      	movq	(%rdi), %rsi
  20b8b6:      	movq	0x8(%rdi), %rdx
  20b8ba:      	movq	%rax, %rdi
  20b8bd:      	jmp	0x20b290 <core::fmt::Formatter::pad::hc800d22bcdfb4ecc>
  20b8c2:      	int3
  20b8c3:      	int3
  20b8c4:      	int3
  20b8c5:      	int3
  20b8c6:      	int3
  20b8c7:      	int3
  20b8c8:      	int3
  20b8c9:      	int3
  20b8ca:      	int3
  20b8cb:      	int3
  20b8cc:      	int3
  20b8cd:      	int3
  20b8ce:      	int3
  20b8cf:      	int3

000000000020b8d0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9>:
  20b8d0:      	pushq	%r14
  20b8d2:      	pushq	%rbx
  20b8d3:      	subq	$0x88, %rsp
  20b8da:      	movq	%rsi, %rbx
  20b8dd:      	movq	%rdi, %r14
  20b8e0:      	movl	0x34(%rsi), %eax
  20b8e3:      	testb	$0x10, %al
  20b8e5:      	jne	0x20b9c2 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0xf2>
  20b8eb:      	testb	$0x20, %al
  20b8ed:      	jne	0x20ba12 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x142>
  20b8f3:      	movq	(%r14), %rcx
  20b8f6:      	movl	$0x27, %eax
  20b8fb:      	cmpq	$0x2710, %rcx           # imm = 0x2710
  20b902:      	jb	0x20ba8b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x1bb>
  20b908:      	movl	$0x27, %r8d
  20b90e:      	movabsq	$0x346dc5d63886594b, %rsi # imm = 0x346DC5D63886594B
  20b918:      	leaq	-0xa06e(%rip), %rdi     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20b91f:      	nop
  20b920:      	movq	%rcx, %rax
  20b923:      	mulq	%rsi
  20b926:      	shrq	$0xb, %rdx
  20b92a:      	imull	$0x2710, %edx, %eax     # imm = 0x2710
  20b930:      	movl	%ecx, %r9d
  20b933:      	subl	%eax, %r9d
  20b936:      	imull	$0x147b, %r9d, %r10d    # imm = 0x147B
  20b93d:      	shrl	$0x13, %r10d
  20b941:      	imull	$0x64, %r10d, %eax
  20b945:      	subl	%eax, %r9d
  20b948:      	movzwl	%r9w, %r9d
  20b94c:      	leaq	-0x4(%r8), %rax
  20b950:      	movzwl	(%rdi,%r10,2), %r10d
  20b955:      	movw	%r10w, 0x4(%rsp,%r8)
  20b95b:      	movzwl	(%rdi,%r9,2), %r9d
  20b960:      	movw	%r9w, 0x6(%rsp,%r8)
  20b966:      	movq	%rax, %r8
  20b969:      	cmpq	$0x5f5e0ff, %rcx        # imm = 0x5F5E0FF
  20b970:      	movq	%rdx, %rcx
  20b973:      	ja	0x20b920 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x50>
  20b975:      	cmpq	$0x63, %rdx
  20b979:      	jbe	0x20b9a9 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0xd9>
  20b97b:      	movzwl	%dx, %ecx
  20b97e:      	shrl	$0x2, %ecx
  20b981:      	imull	$0x147b, %ecx, %ecx     # imm = 0x147B
  20b987:      	shrl	$0x11, %ecx
  20b98a:      	imull	$0x64, %ecx, %esi
  20b98d:      	subl	%esi, %edx
  20b98f:      	movzwl	%dx, %edx
  20b992:      	leaq	-0xa0e8(%rip), %rsi     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20b999:      	movzwl	(%rsi,%rdx,2), %edx
  20b99d:      	movw	%dx, 0x6(%rsp,%rax)
  20b9a2:      	addq	$-0x2, %rax
  20b9a6:      	movq	%rcx, %rdx
  20b9a9:      	cmpq	$0xa, %rdx
  20b9ad:      	jae	0x20ba9d <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x1cd>
  20b9b3:      	orb	$0x30, %dl
  20b9b6:      	movb	%dl, 0x7(%rsp,%rax)
  20b9ba:      	decq	%rax
  20b9bd:      	jmp	0x20bab1 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x1e1>
  20b9c2:      	movq	(%r14), %rax
  20b9c5:      	leaq	0x88(%rsp), %r8
  20b9cd:      	xorl	%r9d, %r9d
  20b9d0:      	movq	%rax, %rcx
  20b9d3:      	nopw	%cs:(%rax,%rax)
  20b9e0:      	shrq	$0x4, %rcx
  20b9e4:      	movl	%eax, %edx
  20b9e6:      	andb	$0xf, %dl
  20b9e9:      	leal	0x30(%rdx), %esi
  20b9ec:      	leal	0x57(%rdx), %edi
  20b9ef:      	cmpb	$0xa, %dl
  20b9f2:      	movzbl	%sil, %edx
  20b9f6:      	movzbl	%dil, %esi
  20b9fa:      	cmovbl	%edx, %esi
  20b9fd:      	movb	%sil, -0x1(%r8)
  20ba01:      	decq	%r8
  20ba04:      	incq	%r9
  20ba07:      	cmpq	$0x10, %rax
  20ba0b:      	movq	%rcx, %rax
  20ba0e:      	jae	0x20b9e0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x110>
  20ba10:      	jmp	0x20ba60 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x190>
  20ba12:      	movq	(%r14), %rax
  20ba15:      	leaq	0x88(%rsp), %r8
  20ba1d:      	xorl	%r9d, %r9d
  20ba20:      	movq	%rax, %rcx
  20ba23:      	nopw	%cs:(%rax,%rax)
  20ba30:      	shrq	$0x4, %rcx
  20ba34:      	movl	%eax, %edx
  20ba36:      	andb	$0xf, %dl
  20ba39:      	leal	0x30(%rdx), %esi
  20ba3c:      	leal	0x37(%rdx), %edi
  20ba3f:      	cmpb	$0xa, %dl
  20ba42:      	movzbl	%sil, %edx
  20ba46:      	movzbl	%dil, %esi
  20ba4a:      	cmovbl	%edx, %esi
  20ba4d:      	movb	%sil, -0x1(%r8)
  20ba51:      	decq	%r8
  20ba54:      	incq	%r9
  20ba57:      	cmpq	$0x10, %rax
  20ba5b:      	movq	%rcx, %rax
  20ba5e:      	jae	0x20ba30 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x160>
  20ba60:      	movl	$0x80, %edi
  20ba65:      	subq	%r9, %rdi
  20ba68:      	cmpq	$0x80, %rdi
  20ba6f:      	ja	0x20bcea <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x41a>
  20ba75:      	leaq	-0xa1cd(%rip), %rdx     # 0x2018af <anon.a46c5626f151a4dcc59353cd10b7a2e4.4.llvm.12319386654944200313>
  20ba7c:      	movl	$0x2, %ecx
  20ba81:      	movq	%rbx, %rdi
  20ba84:      	movl	$0x1, %esi
  20ba89:      	jmp	0x20bad1 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x201>
  20ba8b:      	movq	%rcx, %rdx
  20ba8e:      	cmpq	$0x63, %rdx
  20ba92:      	ja	0x20b97b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0xab>
  20ba98:      	jmp	0x20b9a9 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0xd9>
  20ba9d:      	leaq	-0xa1f3(%rip), %rcx     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20baa4:      	movzwl	(%rcx,%rdx,2), %ecx
  20baa8:      	movw	%cx, 0x6(%rsp,%rax)
  20baad:      	addq	$-0x2, %rax
  20bab1:      	leaq	(%rsp,%rax), %r8
  20bab5:      	addq	$0x8, %r8
  20bab9:      	movl	$0x27, %r9d
  20babf:      	subq	%rax, %r9
  20bac2:      	movl	$0x1, %edx
  20bac7:      	movq	%rbx, %rdi
  20baca:      	movl	$0x1, %esi
  20bacf:      	xorl	%ecx, %ecx
  20bad1:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20bad6:      	movl	%eax, %ecx
  20bad8:      	movb	$0x1, %al
  20bada:      	testb	%cl, %cl
  20badc:      	jne	0x20bcdf <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x40f>
  20bae2:      	movq	0x20(%rbx), %rdi
  20bae6:      	movq	0x28(%rbx), %rax
  20baea:      	leaq	-0xa042(%rip), %rsi     # 0x201aaf <anon.936a16858544f0cad722709816bb0ed1.11.llvm.953444372067373671+0x73>
  20baf1:      	movl	$0x2, %edx
  20baf6:      	callq	*0x18(%rax)
  20baf9:      	movl	%eax, %ecx
  20bafb:      	movb	$0x1, %al
  20bafd:      	testb	%cl, %cl
  20baff:      	jne	0x20bcdf <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x40f>
  20bb05:      	movl	0x34(%rbx), %eax
  20bb08:      	testb	$0x10, %al
  20bb0a:      	jne	0x20bbaa <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x2da>
  20bb10:      	testb	$0x20, %al
  20bb12:      	jne	0x20bbf2 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x322>
  20bb18:      	movq	0x8(%r14), %rcx
  20bb1c:      	movl	$0x27, %eax
  20bb21:      	leaq	-0xa277(%rip), %rsi     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20bb28:      	cmpq	$0x2710, %rcx           # imm = 0x2710
  20bb2f:      	jb	0x20bc6b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x39b>
  20bb35:      	movl	$0x27, %r8d
  20bb3b:      	movabsq	$0x346dc5d63886594b, %rdi # imm = 0x346DC5D63886594B
  20bb45:      	nopw	%cs:(%rax,%rax)
  20bb50:      	movq	%rcx, %rax
  20bb53:      	mulq	%rdi
  20bb56:      	shrq	$0xb, %rdx
  20bb5a:      	imull	$0x2710, %edx, %eax     # imm = 0x2710
  20bb60:      	movl	%ecx, %r9d
  20bb63:      	subl	%eax, %r9d
  20bb66:      	imull	$0x147b, %r9d, %r10d    # imm = 0x147B
  20bb6d:      	shrl	$0x13, %r10d
  20bb71:      	imull	$0x64, %r10d, %eax
  20bb75:      	subl	%eax, %r9d
  20bb78:      	movzwl	%r9w, %r9d
  20bb7c:      	leaq	-0x4(%r8), %rax
  20bb80:      	movzwl	(%rsi,%r10,2), %r10d
  20bb85:      	movw	%r10w, 0x4(%rsp,%r8)
  20bb8b:      	movzwl	(%rsi,%r9,2), %r9d
  20bb90:      	movw	%r9w, 0x6(%rsp,%r8)
  20bb96:      	movq	%rax, %r8
  20bb99:      	cmpq	$0x5f5e0ff, %rcx        # imm = 0x5F5E0FF
  20bba0:      	movq	%rdx, %rcx
  20bba3:      	ja	0x20bb50 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x280>
  20bba5:      	jmp	0x20bc6e <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x39e>
  20bbaa:      	movq	0x8(%r14), %rax
  20bbae:      	leaq	0x88(%rsp), %r8
  20bbb6:      	xorl	%r9d, %r9d
  20bbb9:      	movq	%rax, %rcx
  20bbbc:      	nopl	(%rax)
  20bbc0:      	shrq	$0x4, %rcx
  20bbc4:      	movl	%eax, %edx
  20bbc6:      	andb	$0xf, %dl
  20bbc9:      	leal	0x30(%rdx), %esi
  20bbcc:      	leal	0x57(%rdx), %edi
  20bbcf:      	cmpb	$0xa, %dl
  20bbd2:      	movzbl	%sil, %edx
  20bbd6:      	movzbl	%dil, %esi
  20bbda:      	cmovbl	%edx, %esi
  20bbdd:      	movb	%sil, -0x1(%r8)
  20bbe1:      	decq	%r8
  20bbe4:      	incq	%r9
  20bbe7:      	cmpq	$0x10, %rax
  20bbeb:      	movq	%rcx, %rax
  20bbee:      	jae	0x20bbc0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x2f0>
  20bbf0:      	jmp	0x20bc40 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x370>
  20bbf2:      	movq	0x8(%r14), %rax
  20bbf6:      	leaq	0x88(%rsp), %r8
  20bbfe:      	xorl	%r9d, %r9d
  20bc01:      	movq	%rax, %rcx
  20bc04:      	nopw	%cs:(%rax,%rax)
  20bc10:      	shrq	$0x4, %rcx
  20bc14:      	movl	%eax, %edx
  20bc16:      	andb	$0xf, %dl
  20bc19:      	leal	0x30(%rdx), %esi
  20bc1c:      	leal	0x37(%rdx), %edi
  20bc1f:      	cmpb	$0xa, %dl
  20bc22:      	movzbl	%sil, %edx
  20bc26:      	movzbl	%dil, %esi
  20bc2a:      	cmovbl	%edx, %esi
  20bc2d:      	movb	%sil, -0x1(%r8)
  20bc31:      	decq	%r8
  20bc34:      	incq	%r9
  20bc37:      	cmpq	$0x10, %rax
  20bc3b:      	movq	%rcx, %rax
  20bc3e:      	jae	0x20bc10 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x340>
  20bc40:      	movl	$0x80, %edi
  20bc45:      	subq	%r9, %rdi
  20bc48:      	cmpq	$0x80, %rdi
  20bc4f:      	ja	0x20bcea <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x41a>
  20bc55:      	leaq	-0xa3ad(%rip), %rdx     # 0x2018af <anon.a46c5626f151a4dcc59353cd10b7a2e4.4.llvm.12319386654944200313>
  20bc5c:      	movl	$0x2, %ecx
  20bc61:      	movq	%rbx, %rdi
  20bc64:      	movl	$0x1, %esi
  20bc69:      	jmp	0x20bcda <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x40a>
  20bc6b:      	movq	%rcx, %rdx
  20bc6e:      	cmpq	$0x63, %rdx
  20bc72:      	jbe	0x20bc9b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x3cb>
  20bc74:      	movzwl	%dx, %ecx
  20bc77:      	shrl	$0x2, %ecx
  20bc7a:      	imull	$0x147b, %ecx, %ecx     # imm = 0x147B
  20bc80:      	shrl	$0x11, %ecx
  20bc83:      	imull	$0x64, %ecx, %edi
  20bc86:      	subl	%edi, %edx
  20bc88:      	movzwl	%dx, %edx
  20bc8b:      	movzwl	(%rsi,%rdx,2), %edx
  20bc8f:      	movw	%dx, 0x6(%rsp,%rax)
  20bc94:      	addq	$-0x2, %rax
  20bc98:      	movq	%rcx, %rdx
  20bc9b:      	cmpq	$0xa, %rdx
  20bc9f:      	jae	0x20bcad <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x3dd>
  20bca1:      	orb	$0x30, %dl
  20bca4:      	movb	%dl, 0x7(%rsp,%rax)
  20bca8:      	decq	%rax
  20bcab:      	jmp	0x20bcba <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9+0x3ea>
  20bcad:      	movzwl	(%rsi,%rdx,2), %ecx
  20bcb1:      	movw	%cx, 0x6(%rsp,%rax)
  20bcb6:      	addq	$-0x2, %rax
  20bcba:      	leaq	(%rsp,%rax), %r8
  20bcbe:      	addq	$0x8, %r8
  20bcc2:      	movl	$0x27, %r9d
  20bcc8:      	subq	%rax, %r9
  20bccb:      	movl	$0x1, %edx
  20bcd0:      	movq	%rbx, %rdi
  20bcd3:      	movl	$0x1, %esi
  20bcd8:      	xorl	%ecx, %ecx
  20bcda:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20bcdf:      	addq	$0x88, %rsp
  20bce6:      	popq	%rbx
  20bce7:      	popq	%r14
  20bce9:      	retq
  20bcea:      	leaq	0x332f(%rip), %rdx      # 0x20f020 <anon.a46c5626f151a4dcc59353cd10b7a2e4.2.llvm.12319386654944200313>
  20bcf1:      	movl	$0x80, %esi
  20bcf6:      	callq	0x20cb70 <core::slice::index::slice_start_index_len_fail::hccfdea9858c4cd10>
  20bcfb:      	int3
  20bcfc:      	int3
  20bcfd:      	int3
  20bcfe:      	int3
  20bcff:      	int3

000000000020bd00 <core::slice::memchr::memchr_aligned::ha68086179d30585a>:
  20bd00:      	pushq	%r14
  20bd02:      	pushq	%rbx
  20bd03:      	leaq	0x7(%rsi), %r8
  20bd07:      	andq	$-0x8, %r8
  20bd0b:      	subq	%rsi, %r8
  20bd0e:      	je	0x20bd3d <core::slice::memchr::memchr_aligned::ha68086179d30585a+0x3d>
  20bd10:      	cmpq	%rdx, %r8
  20bd13:      	cmovaeq	%rdx, %r8
  20bd17:      	testq	%rdx, %rdx
  20bd1a:      	je	0x20bd3d <core::slice::memchr::memchr_aligned::ha68086179d30585a+0x3d>
  20bd1c:      	xorl	%ecx, %ecx
  20bd1e:      	nop
  20bd20:      	cmpb	%dil, (%rsi,%rcx)
  20bd24:      	je	0x20bdd8 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xd8>
  20bd2a:      	incq	%rcx
  20bd2d:      	cmpq	%rcx, %r8
  20bd30:      	jne	0x20bd20 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0x20>
  20bd32:      	leaq	-0x10(%rdx), %rax
  20bd36:      	cmpq	%rax, %r8
  20bd39:      	jbe	0x20bd44 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0x44>
  20bd3b:      	jmp	0x20bda4 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xa4>
  20bd3d:      	leaq	-0x10(%rdx), %rax
  20bd41:      	xorl	%r8d, %r8d
  20bd44:      	movabsq	$-0x101010101010101, %rcx # imm = 0xFEFEFEFEFEFEFEFF
  20bd4e:      	movzbl	%dil, %r10d
  20bd52:      	movabsq	$0x101010101010101, %r9 # imm = 0x101010101010101
  20bd5c:      	imulq	%r10, %r9
  20bd60:      	movabsq	$-0x7f7f7f7f7f7f7f80, %r10 # imm = 0x8080808080808080
  20bd6a:      	nopw	(%rax,%rax)
  20bd70:      	movq	(%rsi,%r8), %r11
  20bd74:      	xorq	%r9, %r11
  20bd77:      	leaq	(%r11,%rcx), %rbx
  20bd7b:      	notq	%r11
  20bd7e:      	andq	%rbx, %r11
  20bd81:      	movq	0x8(%rsi,%r8), %rbx
  20bd86:      	xorq	%r9, %rbx
  20bd89:      	leaq	(%rbx,%rcx), %r14
  20bd8d:      	notq	%rbx
  20bd90:      	andq	%r14, %rbx
  20bd93:      	orq	%r11, %rbx
  20bd96:      	testq	%r10, %rbx
  20bd99:      	jne	0x20bda4 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xa4>
  20bd9b:      	addq	$0x10, %r8
  20bd9f:      	cmpq	%rax, %r8
  20bda2:      	jbe	0x20bd70 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0x70>
  20bda4:      	subq	%r8, %rdx
  20bda7:      	je	0x20bdc3 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xc3>
  20bda9:      	addq	%r8, %rsi
  20bdac:      	xorl	%eax, %eax
  20bdae:      	xorl	%ecx, %ecx
  20bdb0:      	cmpb	%dil, (%rsi,%rcx)
  20bdb4:      	je	0x20bdc9 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xc9>
  20bdb6:      	incq	%rcx
  20bdb9:      	cmpq	%rcx, %rdx
  20bdbc:      	jne	0x20bdb0 <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xb0>
  20bdbe:      	movq	%rdx, %rcx
  20bdc1:      	jmp	0x20bdce <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xce>
  20bdc3:      	xorl	%ecx, %ecx
  20bdc5:      	xorl	%eax, %eax
  20bdc7:      	jmp	0x20bdce <core::slice::memchr::memchr_aligned::ha68086179d30585a+0xce>
  20bdc9:      	movl	$0x1, %eax
  20bdce:      	addq	%r8, %rcx
  20bdd1:      	movq	%rcx, %rdx
  20bdd4:      	popq	%rbx
  20bdd5:      	popq	%r14
  20bdd7:      	retq
  20bdd8:      	movl	$0x1, %eax
  20bddd:      	movq	%rcx, %rdx
  20bde0:      	popq	%rbx
  20bde1:      	popq	%r14
  20bde3:      	retq
  20bde4:      	int3
  20bde5:      	int3
  20bde6:      	int3
  20bde7:      	int3
  20bde8:      	int3
  20bde9:      	int3
  20bdea:      	int3
  20bdeb:      	int3
  20bdec:      	int3
  20bded:      	int3
  20bdee:      	int3
  20bdef:      	int3

000000000020bdf0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8>:
  20bdf0:      	leaq	0x7(%rdi), %r9
  20bdf4:      	andq	$-0x8, %r9
  20bdf8:      	movq	%r9, %rax
  20bdfb:      	subq	%rdi, %rax
  20bdfe:      	movq	%rsi, %rcx
  20be01:      	subq	%rax, %rcx
  20be04:      	jb	0x20be0c <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1c>
  20be06:      	cmpq	$0x8, %rcx
  20be0a:      	jae	0x20be25 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x35>
  20be0c:      	testq	%rsi, %rsi
  20be0f:      	je	0x20be22 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x32>
  20be11:      	movl	%esi, %ecx
  20be13:      	andl	$0x3, %ecx
  20be16:      	cmpq	$0x4, %rsi
  20be1a:      	jae	0x20be3f <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x4f>
  20be1c:      	xorl	%eax, %eax
  20be1e:      	xorl	%edx, %edx
  20be20:      	jmp	0x20be90 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xa0>
  20be22:      	xorl	%eax, %eax
  20be24:      	retq
  20be25:      	pushq	%r15
  20be27:      	pushq	%r14
  20be29:      	pushq	%r13
  20be2b:      	pushq	%r12
  20be2d:      	pushq	%rbx
  20be2e:      	movl	%ecx, %edx
  20be30:      	andl	$0x7, %edx
  20be33:      	cmpq	%rdi, %r9
  20be36:      	jne	0x20beb6 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xc6>
  20be38:      	xorl	%esi, %esi
  20be3a:      	jmp	0x20bf47 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x157>
  20be3f:      	andq	$-0x4, %rsi
  20be43:      	xorl	%eax, %eax
  20be45:      	xorl	%edx, %edx
  20be47:      	nopw	(%rax,%rax)
  20be50:      	xorl	%r8d, %r8d
  20be53:      	cmpb	$-0x40, (%rdi,%rdx)
  20be57:      	setge	%r8b
  20be5b:      	addq	%rax, %r8
  20be5e:      	xorl	%eax, %eax
  20be60:      	cmpb	$-0x40, 0x1(%rdi,%rdx)
  20be65:      	setge	%al
  20be68:      	xorl	%r9d, %r9d
  20be6b:      	cmpb	$-0x40, 0x2(%rdi,%rdx)
  20be70:      	setge	%r9b
  20be74:      	addq	%rax, %r9
  20be77:      	addq	%r8, %r9
  20be7a:      	xorl	%eax, %eax
  20be7c:      	cmpb	$-0x40, 0x3(%rdi,%rdx)
  20be81:      	setge	%al
  20be84:      	addq	%r9, %rax
  20be87:      	addq	$0x4, %rdx
  20be8b:      	cmpq	%rdx, %rsi
  20be8e:      	jne	0x20be50 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x60>
  20be90:      	testq	%rcx, %rcx
  20be93:      	je	0x20beb5 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xc5>
  20be95:      	addq	%rdx, %rdi
  20be98:      	xorl	%edx, %edx
  20be9a:      	nopw	(%rax,%rax)
  20bea0:      	xorl	%esi, %esi
  20bea2:      	cmpb	$-0x40, (%rdi,%rdx)
  20bea6:      	setge	%sil
  20beaa:      	addq	%rsi, %rax
  20bead:      	incq	%rdx
  20beb0:      	cmpq	%rdx, %rcx
  20beb3:      	jne	0x20bea0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xb0>
  20beb5:      	retq
  20beb6:      	movl	%eax, %r8d
  20beb9:      	andl	$0x3, %r8d
  20bebd:      	movq	%rdi, %rsi
  20bec0:      	subq	%r9, %rsi
  20bec3:      	cmpq	$-0x4, %rsi
  20bec7:      	jbe	0x20bed0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xe0>
  20bec9:      	xorl	%esi, %esi
  20becb:      	xorl	%r9d, %r9d
  20bece:      	jmp	0x20bf24 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x134>
  20bed0:      	movl	%eax, %r10d
  20bed3:      	andl	$0x4, %r10d
  20bed7:      	xorl	%esi, %esi
  20bed9:      	xorl	%r9d, %r9d
  20bedc:      	nopl	(%rax)
  20bee0:      	xorl	%r11d, %r11d
  20bee3:      	cmpb	$-0x40, (%rdi,%r9)
  20bee8:      	setge	%r11b
  20beec:      	addq	%rsi, %r11
  20beef:      	xorl	%esi, %esi
  20bef1:      	cmpb	$-0x40, 0x1(%rdi,%r9)
  20bef7:      	setge	%sil
  20befb:      	xorl	%ebx, %ebx
  20befd:      	cmpb	$-0x40, 0x2(%rdi,%r9)
  20bf03:      	setge	%bl
  20bf06:      	addq	%rsi, %rbx
  20bf09:      	addq	%r11, %rbx
  20bf0c:      	xorl	%esi, %esi
  20bf0e:      	cmpb	$-0x40, 0x3(%rdi,%r9)
  20bf14:      	setge	%sil
  20bf18:      	addq	%rbx, %rsi
  20bf1b:      	addq	$0x4, %r9
  20bf1f:      	cmpq	%r9, %r10
  20bf22:      	jne	0x20bee0 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0xf0>
  20bf24:      	testq	%r8, %r8
  20bf27:      	je	0x20bf47 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x157>
  20bf29:      	addq	%rdi, %r9
  20bf2c:      	xorl	%r10d, %r10d
  20bf2f:      	nop
  20bf30:      	xorl	%r11d, %r11d
  20bf33:      	cmpb	$-0x40, (%r9,%r10)
  20bf38:      	setge	%r11b
  20bf3c:      	addq	%r11, %rsi
  20bf3f:      	incq	%r10
  20bf42:      	cmpq	%r10, %r8
  20bf45:      	jne	0x20bf30 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x140>
  20bf47:      	addq	%rax, %rdi
  20bf4a:      	testq	%rdx, %rdx
  20bf4d:      	je	0x20bfe2 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f2>
  20bf53:      	movq	%rcx, %r8
  20bf56:      	andq	$-0x8, %r8
  20bf5a:      	xorl	%eax, %eax
  20bf5c:      	cmpb	$-0x40, (%rdi,%r8)
  20bf61:      	setge	%al
  20bf64:      	cmpl	$0x1, %edx
  20bf67:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bf69:      	xorl	%r9d, %r9d
  20bf6c:      	cmpb	$-0x40, 0x1(%rdi,%r8)
  20bf72:      	setge	%r9b
  20bf76:      	addq	%r9, %rax
  20bf79:      	cmpl	$0x2, %edx
  20bf7c:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bf7e:      	xorl	%r9d, %r9d
  20bf81:      	cmpb	$-0x40, 0x2(%rdi,%r8)
  20bf87:      	setge	%r9b
  20bf8b:      	addq	%r9, %rax
  20bf8e:      	cmpl	$0x3, %edx
  20bf91:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bf93:      	xorl	%r9d, %r9d
  20bf96:      	cmpb	$-0x40, 0x3(%rdi,%r8)
  20bf9c:      	setge	%r9b
  20bfa0:      	addq	%r9, %rax
  20bfa3:      	cmpl	$0x4, %edx
  20bfa6:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bfa8:      	xorl	%r9d, %r9d
  20bfab:      	cmpb	$-0x40, 0x4(%rdi,%r8)
  20bfb1:      	setge	%r9b
  20bfb5:      	addq	%r9, %rax
  20bfb8:      	cmpl	$0x5, %edx
  20bfbb:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bfbd:      	xorl	%r9d, %r9d
  20bfc0:      	cmpb	$-0x40, 0x5(%rdi,%r8)
  20bfc6:      	setge	%r9b
  20bfca:      	addq	%r9, %rax
  20bfcd:      	cmpl	$0x6, %edx
  20bfd0:      	je	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bfd2:      	xorl	%edx, %edx
  20bfd4:      	cmpb	$-0x40, 0x6(%rdi,%r8)
  20bfda:      	setge	%dl
  20bfdd:      	addq	%rdx, %rax
  20bfe0:      	jmp	0x20bfe4 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x1f4>
  20bfe2:      	xorl	%eax, %eax
  20bfe4:      	addq	%rsi, %rax
  20bfe7:      	shrq	$0x3, %rcx
  20bfeb:      	movabsq	$0x101010101010101, %r8 # imm = 0x101010101010101
  20bff5:      	movabsq	$0xff00ff00ff00ff, %rsi # imm = 0xFF00FF00FF00FF
  20bfff:      	movabsq	$0x1000100010001, %rdx  # imm = 0x1000100010001
  20c009:      	jmp	0x20c043 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x253>
  20c00b:      	nopl	(%rax,%rax)
  20c010:      	xorl	%ebx, %ebx
  20c012:      	addq	%r9, %rdi
  20c015:      	subq	%r10, %rcx
  20c018:      	movl	%r10d, %r11d
  20c01b:      	andl	$0x3, %r11d
  20c01f:      	movq	%rbx, %r14
  20c022:      	andq	%rsi, %r14
  20c025:      	shrq	$0x8, %rbx
  20c029:      	andq	%rsi, %rbx
  20c02c:      	addq	%r14, %rbx
  20c02f:      	imulq	%rdx, %rbx
  20c033:      	shrq	$0x30, %rbx
  20c037:      	addq	%rbx, %rax
  20c03a:      	testq	%r11, %r11
  20c03d:      	jne	0x20c0f9 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x309>
  20c043:      	testq	%rcx, %rcx
  20c046:      	je	0x20c17a <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x38a>
  20c04c:      	movq	%rdi, %r9
  20c04f:      	cmpq	$0xc0, %rcx
  20c056:      	movl	$0xc0, %r10d
  20c05c:      	cmovbq	%rcx, %r10
  20c060:      	leal	(,%r10,8), %edi
  20c068:      	cmpq	$0x4, %rcx
  20c06c:      	jb	0x20c010 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x220>
  20c06e:      	movl	%edi, %r11d
  20c071:      	andl	$0x7e0, %r11d           # imm = 0x7E0
  20c078:      	addq	%r9, %r11
  20c07b:      	xorl	%ebx, %ebx
  20c07d:      	movq	%r9, %r14
  20c080:      	movq	(%r14), %r15
  20c083:      	movq	0x8(%r14), %r12
  20c087:      	movq	%r15, %r13
  20c08a:      	notq	%r13
  20c08d:      	shrq	$0x7, %r13
  20c091:      	shrq	$0x6, %r15
  20c095:      	orq	%r13, %r15
  20c098:      	andq	%r8, %r15
  20c09b:      	addq	%rbx, %r15
  20c09e:      	movq	%r12, %rbx
  20c0a1:      	notq	%rbx
  20c0a4:      	shrq	$0x7, %rbx
  20c0a8:      	shrq	$0x6, %r12
  20c0ac:      	orq	%rbx, %r12
  20c0af:      	andq	%r8, %r12
  20c0b2:      	movq	0x10(%r14), %r13
  20c0b6:      	movq	%r13, %rbx
  20c0b9:      	notq	%rbx
  20c0bc:      	shrq	$0x7, %rbx
  20c0c0:      	shrq	$0x6, %r13
  20c0c4:      	orq	%rbx, %r13
  20c0c7:      	andq	%r8, %r13
  20c0ca:      	addq	%r12, %r13
  20c0cd:      	addq	%r15, %r13
  20c0d0:      	movq	0x18(%r14), %rbx
  20c0d4:      	movq	%rbx, %r15
  20c0d7:      	notq	%r15
  20c0da:      	shrq	$0x7, %r15
  20c0de:      	shrq	$0x6, %rbx
  20c0e2:      	orq	%r15, %rbx
  20c0e5:      	andq	%r8, %rbx
  20c0e8:      	addq	%r13, %rbx
  20c0eb:      	addq	$0x20, %r14
  20c0ef:      	cmpq	%r11, %r14
  20c0f2:      	jne	0x20c080 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x290>
  20c0f4:      	jmp	0x20c012 <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x222>
  20c0f9:      	andl	$0xfc, %r10d
  20c100:      	movl	%r10d, %ecx
  20c103:      	movq	(%r9,%rcx,8), %rcx
  20c107:      	movq	%rcx, %rdi
  20c10a:      	notq	%rdi
  20c10d:      	shrq	$0x7, %rdi
  20c111:      	shrq	$0x6, %rcx
  20c115:      	orq	%rdi, %rcx
  20c118:      	andq	%r8, %rcx
  20c11b:      	cmpl	$0x1, %r11d
  20c11f:      	je	0x20c15f <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x36f>
  20c121:      	movq	0x8(%r9,%r10,8), %rdi
  20c126:      	movq	%rdi, %rbx
  20c129:      	notq	%rbx
  20c12c:      	shrq	$0x7, %rbx
  20c130:      	shrq	$0x6, %rdi
  20c134:      	orq	%rbx, %rdi
  20c137:      	andq	%r8, %rdi
  20c13a:      	addq	%rdi, %rcx
  20c13d:      	cmpl	$0x2, %r11d
  20c141:      	je	0x20c15f <core::str::count::do_count_chars::ha44261f7ceb6a9b8+0x36f>
  20c143:      	movq	0x10(%r9,%r10,8), %rdi
  20c148:      	movq	%rdi, %r9
  20c14b:      	notq	%r9
  20c14e:      	shrq	$0x7, %r9
  20c152:      	shrq	$0x6, %rdi
  20c156:      	orq	%r9, %rdi
  20c159:      	andq	%r8, %rdi
  20c15c:      	addq	%rdi, %rcx
  20c15f:      	movq	%rcx, %rdi
  20c162:      	andq	%rsi, %rdi
  20c165:      	shrq	$0x8, %rcx
  20c169:      	andq	%rsi, %rcx
  20c16c:      	addq	%rdi, %rcx
  20c16f:      	imulq	%rdx, %rcx
  20c173:      	shrq	$0x30, %rcx
  20c177:      	addq	%rcx, %rax
  20c17a:      	popq	%rbx
  20c17b:      	popq	%r12
  20c17d:      	popq	%r13
  20c17f:      	popq	%r14
  20c181:      	popq	%r15
  20c183:      	retq
  20c184:      	int3
  20c185:      	int3
  20c186:      	int3
  20c187:      	int3
  20c188:      	int3
  20c189:      	int3
  20c18a:      	int3
  20c18b:      	int3
  20c18c:      	int3
  20c18d:      	int3
  20c18e:      	int3
  20c18f:      	int3

000000000020c190 <core::str::slice_error_fail::h8baa942aeb8c0197>:
  20c190:      	pushq	%rax
  20c191:      	callq	0x20c1a0 <core::str::slice_error_fail_rt::h98f4bccb96704762>
  20c196:      	int3
  20c197:      	int3
  20c198:      	int3
  20c199:      	int3
  20c19a:      	int3
  20c19b:      	int3
  20c19c:      	int3
  20c19d:      	int3
  20c19e:      	int3
  20c19f:      	int3

000000000020c1a0 <core::str::slice_error_fail_rt::h98f4bccb96704762>:
  20c1a0:      	subq	$0xd8, %rsp
  20c1a7:      	movq	%rdx, 0xc0(%rsp)
  20c1af:      	movq	%rcx, 0xc8(%rsp)
  20c1b7:      	cmpq	$0x101, %rsi            # imm = 0x101
  20c1be:      	jb	0x20c22f <core::str::slice_error_fail_rt::h98f4bccb96704762+0x8f>
  20c1c0:      	movl	$0x3, %r9d
  20c1c6:      	cmpb	$-0x41, 0x100(%rdi)
  20c1cd:      	jg	0x20c1ec <core::str::slice_error_fail_rt::h98f4bccb96704762+0x4c>
  20c1cf:      	movl	$0x2, %r9d
  20c1d5:      	cmpb	$-0x41, 0xff(%rdi)
  20c1dc:      	jg	0x20c1ec <core::str::slice_error_fail_rt::h98f4bccb96704762+0x4c>
  20c1de:      	xorl	%r9d, %r9d
  20c1e1:      	cmpb	$-0x40, 0xfe(%rdi)
  20c1e8:      	setge	%r9b
  20c1ec:      	leaq	0xfd(%r9), %rax
  20c1f3:      	cmpb	$-0x41, 0xfd(%rdi,%r9)
  20c1fc:      	jle	0x20c2e9 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x149>
  20c202:      	movq	%rdi, 0x10(%rsp)
  20c207:      	movq	%rax, 0x18(%rsp)
  20c20c:      	movl	$0x5, %eax
  20c211:      	leaq	-0xa767(%rip), %r9      # 0x201ab1 <anon.936a16858544f0cad722709816bb0ed1.11.llvm.953444372067373671+0x75>
  20c218:      	movq	%r9, 0xa0(%rsp)
  20c220:      	movq	%rax, 0xa8(%rsp)
  20c228:      	cmpq	%rsi, %rdx
  20c22b:      	jbe	0x20c256 <core::str::slice_error_fail_rt::h98f4bccb96704762+0xb6>
  20c22d:      	jmp	0x20c262 <core::str::slice_error_fail_rt::h98f4bccb96704762+0xc2>
  20c22f:      	movq	%rdi, 0x10(%rsp)
  20c234:      	movq	%rsi, 0x18(%rsp)
  20c239:      	movl	$0x1, %r9d
  20c23f:      	xorl	%eax, %eax
  20c241:      	movq	%r9, 0xa0(%rsp)
  20c249:      	movq	%rax, 0xa8(%rsp)
  20c251:      	cmpq	%rsi, %rdx
  20c254:      	ja	0x20c262 <core::str::slice_error_fail_rt::h98f4bccb96704762+0xc2>
  20c256:      	cmpq	%rsi, %rcx
  20c259:      	jbe	0x20c2f3 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x153>
  20c25f:      	movq	%rcx, %rdx
  20c262:      	movq	%rdx, 0xb0(%rsp)
  20c26a:      	leaq	0xb0(%rsp), %rax
  20c272:      	movq	%rax, 0x50(%rsp)
  20c277:      	movq	0x3062(%rip), %rax      # 0x20f2e0
  20c27e:      	movq	%rax, 0x58(%rsp)
  20c283:      	leaq	0x10(%rsp), %rax
  20c288:      	movq	%rax, 0x60(%rsp)
  20c28d:      	leaq	-0x9e4(%rip), %rax      # 0x20b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>
  20c294:      	movq	%rax, 0x68(%rsp)
  20c299:      	leaq	0xa0(%rsp), %rcx
  20c2a1:      	movq	%rcx, 0x70(%rsp)
  20c2a6:      	movq	%rax, 0x78(%rsp)
  20c2ab:      	leaq	0x2e5e(%rip), %rax      # 0x20f110 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0xa8>
  20c2b2:      	movq	%rax, 0x20(%rsp)
  20c2b7:      	movq	$0x3, 0x28(%rsp)
  20c2c0:      	movq	$0x0, 0x40(%rsp)
  20c2c9:      	leaq	0x50(%rsp), %rax
  20c2ce:      	movq	%rax, 0x30(%rsp)
  20c2d3:      	movq	$0x3, 0x38(%rsp)
  20c2dc:      	leaq	0x20(%rsp), %rdi
  20c2e1:      	movq	%r8, %rsi
  20c2e4:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20c2e9:      	xorl	%edx, %edx
  20c2eb:      	movq	%rax, %rcx
  20c2ee:      	callq	0x20c190 <core::str::slice_error_fail::h8baa942aeb8c0197>
  20c2f3:      	cmpq	%rcx, %rdx
  20c2f6:      	jbe	0x20c393 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x1f3>
  20c2fc:      	leaq	0xc0(%rsp), %rax
  20c304:      	movq	%rax, 0x50(%rsp)
  20c309:      	movq	0x2fd0(%rip), %rax      # 0x20f2e0
  20c310:      	movq	%rax, 0x58(%rsp)
  20c315:      	leaq	0xc8(%rsp), %rcx
  20c31d:      	movq	%rcx, 0x60(%rsp)
  20c322:      	movq	%rax, 0x68(%rsp)
  20c327:      	leaq	0x10(%rsp), %rax
  20c32c:      	movq	%rax, 0x70(%rsp)
  20c331:      	leaq	-0xa88(%rip), %rax      # 0x20b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>
  20c338:      	movq	%rax, 0x78(%rsp)
  20c33d:      	leaq	0xa0(%rsp), %rcx
  20c345:      	movq	%rcx, 0x80(%rsp)
  20c34d:      	movq	%rax, 0x88(%rsp)
  20c355:      	leaq	0x2d24(%rip), %rax      # 0x20f080 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0x18>
  20c35c:      	movq	%rax, 0x20(%rsp)
  20c361:      	movq	$0x4, 0x28(%rsp)
  20c36a:      	movq	$0x0, 0x40(%rsp)
  20c373:      	leaq	0x50(%rsp), %rax
  20c378:      	movq	%rax, 0x30(%rsp)
  20c37d:      	movq	$0x4, 0x38(%rsp)
  20c386:      	leaq	0x20(%rsp), %rdi
  20c38b:      	movq	%r8, %rsi
  20c38e:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20c393:      	testq	%rdx, %rdx
  20c396:      	je	0x20c3a3 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x203>
  20c398:      	cmpq	%rsi, %rdx
  20c39b:      	jae	0x20c3a3 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x203>
  20c39d:      	cmpb	$-0x40, (%rdi,%rdx)
  20c3a1:      	jl	0x20c3a6 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x206>
  20c3a3:      	movq	%rcx, %rdx
  20c3a6:      	movq	%rdx, 0xd0(%rsp)
  20c3ae:      	movq	%rsi, %rax
  20c3b1:      	cmpq	%rsi, %rdx
  20c3b4:      	jae	0x20c447 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a7>
  20c3ba:      	xorl	%ecx, %ecx
  20c3bc:      	movq	%rdx, %rax
  20c3bf:      	subq	$0x3, %rax
  20c3c3:      	cmovaeq	%rax, %rcx
  20c3c7:      	leaq	0x1(%rdx), %rax
  20c3cb:      	cmpq	%rax, %rcx
  20c3ce:      	jbe	0x20c3e2 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x242>
  20c3d0:      	leaq	0x2d69(%rip), %rdx      # 0x20f140 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0xd8>
  20c3d7:      	movq	%rcx, %rdi
  20c3da:      	movq	%rax, %rsi
  20c3dd:      	callq	0x20cc70 <core::slice::index::slice_index_order_fail::h23fec535e55fcd8e>
  20c3e2:      	je	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c3e4:      	leaq	(%rdi,%rcx), %r9
  20c3e8:      	addq	%rdi, %rax
  20c3eb:      	subq	%r9, %rax
  20c3ee:      	cmpb	$-0x41, (%rdi,%rdx)
  20c3f2:      	jle	0x20c3f9 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x259>
  20c3f4:      	decq	%rax
  20c3f7:      	jmp	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c3f9:      	cmpq	%rdx, %rcx
  20c3fc:      	je	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c3fe:      	addq	%rdi, %rdx
  20c401:      	cmpb	$-0x41, -0x1(%rdx)
  20c405:      	jle	0x20c40d <core::str::slice_error_fail_rt::h98f4bccb96704762+0x26d>
  20c407:      	addq	$-0x2, %rax
  20c40b:      	jmp	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c40d:      	leaq	-0x1(%rdx), %r10
  20c411:      	cmpq	%r10, %r9
  20c414:      	je	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c416:      	cmpb	$-0x41, -0x2(%rdx)
  20c41a:      	jle	0x20c422 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x282>
  20c41c:      	addq	$-0x3, %rax
  20c420:      	jmp	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c422:      	leaq	-0x2(%rdx), %r10
  20c426:      	cmpq	%r10, %r9
  20c429:      	je	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c42b:      	cmpb	$-0x41, -0x3(%rdx)
  20c42f:      	jle	0x20c437 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x297>
  20c431:      	addq	$-0x4, %rax
  20c435:      	jmp	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c437:      	addq	$-0x3, %rdx
  20c43b:      	cmpq	%rdx, %r9
  20c43e:      	je	0x20c444 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2a4>
  20c440:      	addq	$-0x5, %rax
  20c444:      	addq	%rcx, %rax
  20c447:      	testq	%rax, %rax
  20c44a:      	je	0x20c467 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2c7>
  20c44c:      	cmpq	%rsi, %rax
  20c44f:      	jae	0x20c462 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2c2>
  20c451:      	cmpb	$-0x41, (%rdi,%rax)
  20c455:      	jg	0x20c464 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2c4>
  20c457:      	movq	%rax, %rdx
  20c45a:      	movq	%rsi, %rcx
  20c45d:      	callq	0x20c190 <core::str::slice_error_fail::h8baa942aeb8c0197>
  20c462:      	jne	0x20c457 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2b7>
  20c464:      	addq	%rax, %rdi
  20c467:      	cmpq	%rsi, %rax
  20c46a:      	jne	0x20c474 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2d4>
  20c46c:      	movq	%r8, %rdi
  20c46f:      	callq	0x20ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>
  20c474:      	movzbl	(%rdi), %edx
  20c477:      	testb	%dl, %dl
  20c479:      	js	0x20c489 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2e9>
  20c47b:      	movl	%edx, 0xc(%rsp)
  20c47f:      	movl	$0x1, %ecx
  20c484:      	jmp	0x20c50b <core::str::slice_error_fail_rt::h98f4bccb96704762+0x36b>
  20c489:      	movl	%edx, %ecx
  20c48b:      	andl	$0x1f, %ecx
  20c48e:      	movzbl	0x1(%rdi), %r9d
  20c493:      	andl	$0x3f, %r9d
  20c497:      	cmpb	$-0x21, %dl
  20c49a:      	jbe	0x20c4cd <core::str::slice_error_fail_rt::h98f4bccb96704762+0x32d>
  20c49c:      	movzbl	0x2(%rdi), %esi
  20c4a0:      	shll	$0x6, %r9d
  20c4a4:      	andl	$0x3f, %esi
  20c4a7:      	orl	%r9d, %esi
  20c4aa:      	cmpb	$-0x10, %dl
  20c4ad:      	jb	0x20c4d7 <core::str::slice_error_fail_rt::h98f4bccb96704762+0x337>
  20c4af:      	movzbl	0x3(%rdi), %edx
  20c4b3:      	andl	$0x7, %ecx
  20c4b6:      	shll	$0x12, %ecx
  20c4b9:      	shll	$0x6, %esi
  20c4bc:      	andl	$0x3f, %edx
  20c4bf:      	orl	%esi, %edx
  20c4c1:      	orl	%ecx, %edx
  20c4c3:      	cmpl	$0x110000, %edx         # imm = 0x110000
  20c4c9:      	je	0x20c46c <core::str::slice_error_fail_rt::h98f4bccb96704762+0x2cc>
  20c4cb:      	jmp	0x20c4de <core::str::slice_error_fail_rt::h98f4bccb96704762+0x33e>
  20c4cd:      	shll	$0x6, %ecx
  20c4d0:      	orl	%r9d, %ecx
  20c4d3:      	movl	%ecx, %edx
  20c4d5:      	jmp	0x20c4de <core::str::slice_error_fail_rt::h98f4bccb96704762+0x33e>
  20c4d7:      	shll	$0xc, %ecx
  20c4da:      	orl	%ecx, %esi
  20c4dc:      	movl	%esi, %edx
  20c4de:      	movl	%edx, 0xc(%rsp)
  20c4e2:      	movl	$0x1, %ecx
  20c4e7:      	cmpl	$0x80, %edx
  20c4ed:      	jb	0x20c50b <core::str::slice_error_fail_rt::h98f4bccb96704762+0x36b>
  20c4ef:      	movl	$0x2, %ecx
  20c4f4:      	cmpl	$0x800, %edx            # imm = 0x800
  20c4fa:      	jb	0x20c50b <core::str::slice_error_fail_rt::h98f4bccb96704762+0x36b>
  20c4fc:      	cmpl	$0x10000, %edx          # imm = 0x10000
  20c502:      	movl	$0x4, %ecx
  20c507:      	sbbq	$0x0, %rcx
  20c50b:      	addq	%rax, %rcx
  20c50e:      	movq	%rax, 0xb0(%rsp)
  20c516:      	movq	%rcx, 0xb8(%rsp)
  20c51e:      	leaq	0xd0(%rsp), %rax
  20c526:      	movq	%rax, 0x50(%rsp)
  20c52b:      	movq	0x2dae(%rip), %rax      # 0x20f2e0
  20c532:      	movq	%rax, 0x58(%rsp)
  20c537:      	leaq	0xc(%rsp), %rax
  20c53c:      	movq	%rax, 0x60(%rsp)
  20c541:      	movq	0x2db8(%rip), %rax      # 0x20f300
  20c548:      	movq	%rax, 0x68(%rsp)
  20c54d:      	leaq	0xb0(%rsp), %rax
  20c555:      	movq	%rax, 0x70(%rsp)
  20c55a:      	leaq	-0xc91(%rip), %rax      # 0x20b8d0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt::h3bbb6ea9349085e9>
  20c561:      	movq	%rax, 0x78(%rsp)
  20c566:      	leaq	0x10(%rsp), %rax
  20c56b:      	movq	%rax, 0x80(%rsp)
  20c573:      	leaq	-0xcca(%rip), %rax      # 0x20b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>
  20c57a:      	movq	%rax, 0x88(%rsp)
  20c582:      	leaq	0xa0(%rsp), %rcx
  20c58a:      	movq	%rcx, 0x90(%rsp)
  20c592:      	movq	%rax, 0x98(%rsp)
  20c59a:      	leaq	0x2b1f(%rip), %rax      # 0x20f0c0 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0x58>
  20c5a1:      	movq	%rax, 0x20(%rsp)
  20c5a6:      	movq	$0x5, 0x28(%rsp)
  20c5af:      	movq	$0x0, 0x40(%rsp)
  20c5b8:      	leaq	0x50(%rsp), %rax
  20c5bd:      	movq	%rax, 0x30(%rsp)
  20c5c2:      	movq	$0x5, 0x38(%rsp)
  20c5cb:      	leaq	0x20(%rsp), %rdi
  20c5d0:      	movq	%r8, %rsi
  20c5d3:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20c5d8:      	int3
  20c5d9:      	int3
  20c5da:      	int3
  20c5db:      	int3
  20c5dc:      	int3
  20c5dd:      	int3
  20c5de:      	int3
  20c5df:      	int3

000000000020c5e0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155>:
  20c5e0:      	pushq	%r15
  20c5e2:      	pushq	%r14
  20c5e4:      	pushq	%rbx
  20c5e5:      	testq	%rdx, %rdx
  20c5e8:      	je	0x20c65a <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x7a>
  20c5ea:      	movl	%edi, %r11d
  20c5ed:      	shrl	$0x8, %r11d
  20c5f1:      	leaq	(%rsi,%rdx,2), %rdx
  20c5f5:      	xorl	%eax, %eax
  20c5f7:      	movq	%rsi, %r14
  20c5fa:      	movzbl	0x1(%rsi), %ebx
  20c5fe:      	addq	$0x2, %rsi
  20c602:      	leaq	(%rax,%rbx), %r10
  20c606:      	cmpb	%r11b, (%r14)
  20c609:      	jne	0x20c650 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x70>
  20c60b:      	cmpq	%r10, %rax
  20c60e:      	ja	0x20c6d4 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xf4>
  20c614:      	cmpq	%r8, %r10
  20c617:      	ja	0x20c6e6 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x106>
  20c61d:      	addq	%rcx, %rax
  20c620:      	xorl	%r14d, %r14d
  20c623:      	nopw	%cs:(%rax,%rax)
  20c630:      	cmpq	%r14, %rbx
  20c633:      	je	0x20c652 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x72>
  20c635:      	leaq	0x1(%r14), %r15
  20c639:      	cmpb	%dil, (%rax,%r14)
  20c63d:      	movq	%r15, %r14
  20c640:      	jne	0x20c630 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x50>
  20c642:      	jmp	0x20c6ba <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xda>
  20c644:      	nopw	%cs:(%rax,%rax)
  20c650:      	ja	0x20c65a <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x7a>
  20c652:      	movq	%r10, %rax
  20c655:      	cmpq	%rdx, %rsi
  20c658:      	jne	0x20c5f7 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0x17>
  20c65a:      	movq	0x20(%rsp), %rax
  20c65f:      	testq	%rax, %rax
  20c662:      	je	0x20c6be <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xde>
  20c664:      	leaq	(%r9,%rax), %rcx
  20c668:      	cmpq	$0x1, %rax
  20c66c:      	movq	%r9, %rsi
  20c66f:      	sbbq	$-0x1, %rsi
  20c673:      	movzwl	%di, %edx
  20c676:      	movb	$0x1, %al
  20c678:      	nopl	(%rax,%rax)
  20c680:      	movzbl	(%r9), %edi
  20c684:      	testb	%dil, %dil
  20c687:      	jns	0x20c69e <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xbe>
  20c689:      	cmpq	%rcx, %rsi
  20c68c:      	je	0x20c6c8 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xe8>
  20c68e:      	movzbl	(%rsi), %r8d
  20c692:      	incq	%rsi
  20c695:      	andl	$0x7f, %edi
  20c698:      	shll	$0x8, %edi
  20c69b:      	orl	%r8d, %edi
  20c69e:      	movq	%rsi, %r9
  20c6a1:      	subl	%edi, %edx
  20c6a3:      	js	0x20c6c0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xe0>
  20c6a5:      	xorb	$0x1, %al
  20c6a7:      	xorl	%esi, %esi
  20c6a9:      	cmpq	%rcx, %r9
  20c6ac:      	setne	%sil
  20c6b0:      	addq	%r9, %rsi
  20c6b3:      	cmpq	%rcx, %r9
  20c6b6:      	jne	0x20c680 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xa0>
  20c6b8:      	jmp	0x20c6c0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xe0>
  20c6ba:      	xorl	%eax, %eax
  20c6bc:      	jmp	0x20c6c0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155+0xe0>
  20c6be:      	movb	$0x1, %al
  20c6c0:      	andb	$0x1, %al
  20c6c2:      	popq	%rbx
  20c6c3:      	popq	%r14
  20c6c5:      	popq	%r15
  20c6c7:      	retq
  20c6c8:      	leaq	0x2a89(%rip), %rdi      # 0x20f158 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0xf0>
  20c6cf:      	callq	0x20ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>
  20c6d4:      	leaq	0x2a95(%rip), %rdx      # 0x20f170 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0x108>
  20c6db:      	movq	%rax, %rdi
  20c6de:      	movq	%r10, %rsi
  20c6e1:      	callq	0x20cc70 <core::slice::index::slice_index_order_fail::h23fec535e55fcd8e>
  20c6e6:      	leaq	0x2a83(%rip), %rdx      # 0x20f170 <anon.936a16858544f0cad722709816bb0ed1.12.llvm.953444372067373671+0x108>
  20c6ed:      	movq	%r10, %rdi
  20c6f0:      	movq	%r8, %rsi
  20c6f3:      	callq	0x20cbf0 <core::slice::index::slice_end_index_len_fail::hd5694c18c18ac04d>
  20c6f8:      	int3
  20c6f9:      	int3
  20c6fa:      	int3
  20c6fb:      	int3
  20c6fc:      	int3
  20c6fd:      	int3
  20c6fe:      	int3
  20c6ff:      	int3

000000000020c700 <core::unicode::printable::is_printable::hd5b913c848e5f51e>:
  20c700:      	pushq	%rax
  20c701:      	cmpl	$0x20, %edi
  20c704:      	jae	0x20c70a <core::unicode::printable::is_printable::hd5b913c848e5f51e+0xa>
  20c706:      	xorl	%eax, %eax
  20c708:      	popq	%rcx
  20c709:      	retq
  20c70a:      	movb	$0x1, %al
  20c70c:      	cmpl	$0x7f, %edi
  20c70f:      	jae	0x20c713 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x13>
  20c711:      	popq	%rcx
  20c712:      	retq
  20c713:      	cmpl	$0x10000, %edi          # imm = 0x10000
  20c719:      	jae	0x20c74a <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x4a>
  20c71b:      	movq	$0x12d, (%rsp)          # imm = 0x12D
  20c723:      	leaq	-0xa848(%rip), %rsi     # 0x201ee2 <anon.a7b853e2f4891e233a6976a209d5a6f6.32.llvm.5727351571976847155>
  20c72a:      	leaq	-0xa7ff(%rip), %rcx     # 0x201f32 <anon.a7b853e2f4891e233a6976a209d5a6f6.33.llvm.5727351571976847155>
  20c731:      	leaq	-0xa6e6(%rip), %r9      # 0x202052 <anon.a7b853e2f4891e233a6976a209d5a6f6.34.llvm.5727351571976847155>
  20c738:      	movl	$0x28, %edx
  20c73d:      	movl	$0x120, %r8d            # imm = 0x120
  20c743:      	callq	0x20c5e0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155>
  20c748:      	popq	%rcx
  20c749:      	retq
  20c74a:      	cmpl	$0x20000, %edi          # imm = 0x20000
  20c750:      	jae	0x20c781 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x81>
  20c752:      	movq	$0x1c2, (%rsp)          # imm = 0x1C2
  20c75a:      	leaq	-0xab5d(%rip), %rsi     # 0x201c04 <anon.a7b853e2f4891e233a6976a209d5a6f6.29.llvm.5727351571976847155>
  20c761:      	leaq	-0xab0c(%rip), %rcx     # 0x201c5c <anon.a7b853e2f4891e233a6976a209d5a6f6.30.llvm.5727351571976847155>
  20c768:      	leaq	-0xaa4f(%rip), %r9      # 0x201d20 <anon.a7b853e2f4891e233a6976a209d5a6f6.31.llvm.5727351571976847155>
  20c76f:      	movl	$0x2c, %edx
  20c774:      	movl	$0xc4, %r8d
  20c77a:      	callq	0x20c5e0 <core::unicode::printable::check::h3216ca5c0e81a6d1.llvm.5727351571976847155>
  20c77f:      	popq	%rcx
  20c780:      	retq
  20c781:      	leal	-0x323b0(%rdi), %ecx
  20c787:      	xorl	%eax, %eax
  20c789:      	cmpl	$0xadd50, %ecx          # imm = 0xADD50
  20c78f:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c791:      	leal	-0x3134b(%rdi), %ecx
  20c797:      	cmpl	$0x5, %ecx
  20c79a:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7a0:      	leal	-0x2fa1e(%rdi), %ecx
  20c7a6:      	cmpl	$0x5e2, %ecx            # imm = 0x5E2
  20c7ac:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7b2:      	leal	-0x2ee5e(%rdi), %ecx
  20c7b8:      	cmpl	$0x9a2, %ecx            # imm = 0x9A2
  20c7be:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7c4:      	leal	-0x2ebe1(%rdi), %ecx
  20c7ca:      	cmpl	$0xf, %ecx
  20c7cd:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7d3:      	leal	-0x2cea2(%rdi), %ecx
  20c7d9:      	cmpl	$0xe, %ecx
  20c7dc:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7e2:      	movl	%edi, %ecx
  20c7e4:      	andl	$-0x2, %ecx
  20c7e7:      	cmpl	$0x2b81e, %ecx          # imm = 0x2B81E
  20c7ed:      	je	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c7f3:      	movl	%edi, %ecx
  20c7f5:      	andl	$-0x20, %ecx
  20c7f8:      	cmpl	$0x2a6e0, %ecx          # imm = 0x2A6E0
  20c7fe:      	je	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c804:      	leal	-0x2b73a(%rdi), %ecx
  20c80a:      	cmpl	$0x6, %ecx
  20c80d:      	jb	0x20c711 <core::unicode::printable::is_printable::hd5b913c848e5f51e+0x11>
  20c813:      	addl	$0xffef0000, %edi       # imm = 0xFFEF0000
  20c819:      	cmpl	$0xfffd01f0, %edi       # imm = 0xFFFD01F0
  20c81f:      	setb	%al
  20c822:      	popq	%rcx
  20c823:      	retq
  20c824:      	int3
  20c825:      	int3
  20c826:      	int3
  20c827:      	int3
  20c828:      	int3
  20c829:      	int3
  20c82a:      	int3
  20c82b:      	int3
  20c82c:      	int3
  20c82d:      	int3
  20c82e:      	int3
  20c82f:      	int3

000000000020c830 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b>:
  20c830:      	subq	$0x28, %rsp
  20c834:      	movl	(%rdi), %ecx
  20c836:      	movl	$0x27, %eax
  20c83b:      	leaq	-0xaf91(%rip), %rdi     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20c842:      	cmpq	$0x2710, %rcx           # imm = 0x2710
  20c849:      	jb	0x20c8f5 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0xc5>
  20c84f:      	movl	$0x27, %r9d
  20c855:      	movabsq	$0x346dc5d63886594b, %r8 # imm = 0x346DC5D63886594B
  20c85f:      	nop
  20c860:      	movq	%rcx, %rax
  20c863:      	mulq	%r8
  20c866:      	shrq	$0xb, %rdx
  20c86a:      	imull	$0x2710, %edx, %eax     # imm = 0x2710
  20c870:      	movl	%ecx, %r10d
  20c873:      	subl	%eax, %r10d
  20c876:      	imull	$0x147b, %r10d, %r11d   # imm = 0x147B
  20c87d:      	shrl	$0x13, %r11d
  20c881:      	imull	$0x64, %r11d, %eax
  20c885:      	subl	%eax, %r10d
  20c888:      	movzwl	%r10w, %r10d
  20c88c:      	leaq	-0x4(%r9), %rax
  20c890:      	movzwl	(%rdi,%r11,2), %r11d
  20c895:      	movw	%r11w, -0x3(%rsp,%r9)
  20c89b:      	movzwl	(%rdi,%r10,2), %r10d
  20c8a0:      	movw	%r10w, -0x1(%rsp,%r9)
  20c8a6:      	movq	%rax, %r9
  20c8a9:      	cmpq	$0x5f5e0ff, %rcx        # imm = 0x5F5E0FF
  20c8b0:      	movq	%rdx, %rcx
  20c8b3:      	ja	0x20c860 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0x30>
  20c8b5:      	cmpq	$0x63, %rdx
  20c8b9:      	jbe	0x20c8e4 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0xb4>
  20c8bb:      	movzwl	%dx, %ecx
  20c8be:      	shrl	$0x2, %ecx
  20c8c1:      	imull	$0x147b, %ecx, %ecx     # imm = 0x147B
  20c8c7:      	shrl	$0x11, %ecx
  20c8ca:      	imull	$0x64, %ecx, %r8d
  20c8ce:      	subl	%r8d, %edx
  20c8d1:      	movzwl	%dx, %edx
  20c8d4:      	movzwl	(%rdi,%rdx,2), %edx
  20c8d8:      	movw	%dx, -0x1(%rsp,%rax)
  20c8dd:      	addq	$-0x2, %rax
  20c8e1:      	movq	%rcx, %rdx
  20c8e4:      	cmpq	$0xa, %rdx
  20c8e8:      	jae	0x20c900 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0xd0>
  20c8ea:      	orb	$0x30, %dl
  20c8ed:      	movb	%dl, (%rsp,%rax)
  20c8f0:      	decq	%rax
  20c8f3:      	jmp	0x20c90d <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0xdd>
  20c8f5:      	movq	%rcx, %rdx
  20c8f8:      	cmpq	$0x63, %rdx
  20c8fc:      	ja	0x20c8bb <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0x8b>
  20c8fe:      	jmp	0x20c8e4 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt::hf83979cb7096519b+0xb4>
  20c900:      	movzwl	(%rdi,%rdx,2), %ecx
  20c904:      	movw	%cx, -0x1(%rsp,%rax)
  20c909:      	addq	$-0x2, %rax
  20c90d:      	leaq	(%rsp,%rax), %r8
  20c911:      	incq	%r8
  20c914:      	movl	$0x27, %r9d
  20c91a:      	subq	%rax, %r9
  20c91d:      	movl	$0x1, %edx
  20c922:      	movq	%rsi, %rdi
  20c925:      	movl	$0x1, %esi
  20c92a:      	xorl	%ecx, %ecx
  20c92c:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20c931:      	addq	$0x28, %rsp
  20c935:      	retq
  20c936:      	int3
  20c937:      	int3
  20c938:      	int3
  20c939:      	int3
  20c93a:      	int3
  20c93b:      	int3
  20c93c:      	int3
  20c93d:      	int3
  20c93e:      	int3
  20c93f:      	int3

000000000020c940 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363>:
  20c940:      	subq	$0x28, %rsp
  20c944:      	movq	(%rdi), %rcx
  20c947:      	movl	$0x27, %eax
  20c94c:      	leaq	-0xb0a2(%rip), %rdi     # 0x2018b1 <anon.a46c5626f151a4dcc59353cd10b7a2e4.5.llvm.12319386654944200313>
  20c953:      	cmpq	$0x2710, %rcx           # imm = 0x2710
  20c95a:      	jb	0x20ca05 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0xc5>
  20c960:      	movl	$0x27, %r9d
  20c966:      	movabsq	$0x346dc5d63886594b, %r8 # imm = 0x346DC5D63886594B
  20c970:      	movq	%rcx, %rax
  20c973:      	mulq	%r8
  20c976:      	shrq	$0xb, %rdx
  20c97a:      	imull	$0x2710, %edx, %eax     # imm = 0x2710
  20c980:      	movl	%ecx, %r10d
  20c983:      	subl	%eax, %r10d
  20c986:      	imull	$0x147b, %r10d, %r11d   # imm = 0x147B
  20c98d:      	shrl	$0x13, %r11d
  20c991:      	imull	$0x64, %r11d, %eax
  20c995:      	subl	%eax, %r10d
  20c998:      	movzwl	%r10w, %r10d
  20c99c:      	leaq	-0x4(%r9), %rax
  20c9a0:      	movzwl	(%rdi,%r11,2), %r11d
  20c9a5:      	movw	%r11w, -0x3(%rsp,%r9)
  20c9ab:      	movzwl	(%rdi,%r10,2), %r10d
  20c9b0:      	movw	%r10w, -0x1(%rsp,%r9)
  20c9b6:      	movq	%rax, %r9
  20c9b9:      	cmpq	$0x5f5e0ff, %rcx        # imm = 0x5F5E0FF
  20c9c0:      	movq	%rdx, %rcx
  20c9c3:      	ja	0x20c970 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0x30>
  20c9c5:      	cmpq	$0x63, %rdx
  20c9c9:      	jbe	0x20c9f4 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0xb4>
  20c9cb:      	movzwl	%dx, %ecx
  20c9ce:      	shrl	$0x2, %ecx
  20c9d1:      	imull	$0x147b, %ecx, %ecx     # imm = 0x147B
  20c9d7:      	shrl	$0x11, %ecx
  20c9da:      	imull	$0x64, %ecx, %r8d
  20c9de:      	subl	%r8d, %edx
  20c9e1:      	movzwl	%dx, %edx
  20c9e4:      	movzwl	(%rdi,%rdx,2), %edx
  20c9e8:      	movw	%dx, -0x1(%rsp,%rax)
  20c9ed:      	addq	$-0x2, %rax
  20c9f1:      	movq	%rcx, %rdx
  20c9f4:      	cmpq	$0xa, %rdx
  20c9f8:      	jae	0x20ca10 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0xd0>
  20c9fa:      	orb	$0x30, %dl
  20c9fd:      	movb	%dl, (%rsp,%rax)
  20ca00:      	decq	%rax
  20ca03:      	jmp	0x20ca1d <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0xdd>
  20ca05:      	movq	%rcx, %rdx
  20ca08:      	cmpq	$0x63, %rdx
  20ca0c:      	ja	0x20c9cb <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0x8b>
  20ca0e:      	jmp	0x20c9f4 <core::fmt::num::imp::<impl core::fmt::Display for usize>::fmt::h892d8bde5e3c6363+0xb4>
  20ca10:      	movzwl	(%rdi,%rdx,2), %ecx
  20ca14:      	movw	%cx, -0x1(%rsp,%rax)
  20ca19:      	addq	$-0x2, %rax
  20ca1d:      	leaq	(%rsp,%rax), %r8
  20ca21:      	incq	%r8
  20ca24:      	movl	$0x27, %r9d
  20ca2a:      	subq	%rax, %r9
  20ca2d:      	movl	$0x1, %edx
  20ca32:      	movq	%rsi, %rdi
  20ca35:      	movl	$0x1, %esi
  20ca3a:      	xorl	%ecx, %ecx
  20ca3c:      	callq	0x20aef0 <core::fmt::Formatter::pad_integral::hcf2278287c0c877d>
  20ca41:      	addq	$0x28, %rsp
  20ca45:      	retq
  20ca46:      	int3
  20ca47:      	int3
  20ca48:      	int3
  20ca49:      	int3
  20ca4a:      	int3
  20ca4b:      	int3
  20ca4c:      	int3
  20ca4d:      	int3
  20ca4e:      	int3
  20ca4f:      	int3

000000000020ca50 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2>:
  20ca50:      	pushq	%rax
  20ca51:      	movl	%edi, %eax
  20ca53:      	shll	$0xb, %eax
  20ca56:      	movl	$0x21, %esi
  20ca5b:      	xorl	%ecx, %ecx
  20ca5d:      	leaq	-0xa860(%rip), %rdx     # 0x202204 <core::unicode::unicode_data::grapheme_extend::SHORT_OFFSET_RUNS::h91daac5f603978dd.llvm.3839200172009692468>
  20ca64:      	movl	$0x21, %r8d
  20ca6a:      	nopw	(%rax,%rax)
  20ca70:      	shrq	%rsi
  20ca73:      	addq	%rcx, %rsi
  20ca76:      	movl	(%rdx,%rsi,4), %r9d
  20ca7a:      	shll	$0xb, %r9d
  20ca7e:      	cmpl	%eax, %r9d
  20ca81:      	je	0x20ca9c <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x4c>
  20ca83:      	leaq	0x1(%rsi), %r10
  20ca87:      	cmpl	%eax, %r9d
  20ca8a:      	cmovaq	%rsi, %r8
  20ca8e:      	cmovbq	%r10, %rcx
  20ca92:      	movq	%r8, %rsi
  20ca95:      	subq	%rcx, %rsi
  20ca98:      	ja	0x20ca70 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x20>
  20ca9a:      	jmp	0x20caa2 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x52>
  20ca9c:      	incq	%rsi
  20ca9f:      	movq	%rsi, %rcx
  20caa2:      	cmpq	$0x20, %rcx
  20caa6:      	ja	0x20cb5b <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x10b>
  20caac:      	movl	(%rdx,%rcx,4), %eax
  20caaf:      	shrl	$0x15, %eax
  20cab2:      	movl	$0x2d7, %esi            # imm = 0x2D7
  20cab7:      	cmpq	$0x20, %rcx
  20cabb:      	je	0x20cad0 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x80>
  20cabd:      	leaq	(%rdx,%rcx,4), %r8
  20cac1:      	addq	$0x4, %r8
  20cac5:      	testq	%r8, %r8
  20cac8:      	je	0x20cad0 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x80>
  20caca:      	movl	(%r8), %esi
  20cacd:      	shrl	$0x15, %esi
  20cad0:      	testq	%rcx, %rcx
  20cad3:      	je	0x20caef <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x9f>
  20cad5:      	movl	$0x1fffff, %r8d         # imm = 0x1FFFFF
  20cadb:      	andl	-0x4(%rdx,%rcx,4), %r8d
  20cae0:      	movq	%rax, %rcx
  20cae3:      	notq	%rcx
  20cae6:      	addq	%rsi, %rcx
  20cae9:      	jne	0x20cafd <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0xad>
  20caeb:      	andb	$0x1, %al
  20caed:      	popq	%rcx
  20caee:      	retq
  20caef:      	xorl	%r8d, %r8d
  20caf2:      	movq	%rax, %rcx
  20caf5:      	notq	%rcx
  20caf8:      	addq	%rsi, %rcx
  20cafb:      	je	0x20caeb <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0x9b>
  20cafd:      	subl	%r8d, %edi
  20cb00:      	decq	%rsi
  20cb03:      	xorl	%ecx, %ecx
  20cb05:      	leaq	-0xa884(%rip), %rdx     # 0x202288 <core::unicode::unicode_data::grapheme_extend::OFFSETS::hd6516b692ebfcf40.llvm.3839200172009692468>
  20cb0c:      	movq	%rax, %r8
  20cb0f:      	nop
  20cb10:      	cmpq	$0x2d6, %r8             # imm = 0x2D6
  20cb17:      	ja	0x20cb3b <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0xeb>
  20cb19:      	movzbl	(%r8,%rdx), %r9d
  20cb1e:      	addl	%r9d, %ecx
  20cb21:      	cmpl	%edi, %ecx
  20cb23:      	ja	0x20cb34 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0xe4>
  20cb25:      	incq	%r8
  20cb28:      	cmpq	%r8, %rsi
  20cb2b:      	jne	0x20cb10 <core::unicode::unicode_data::grapheme_extend::lookup_slow::h246cad78ebf68df2+0xc0>
  20cb2d:      	movq	%rsi, %rax
  20cb30:      	andb	$0x1, %al
  20cb32:      	popq	%rcx
  20cb33:      	retq
  20cb34:      	movq	%r8, %rax
  20cb37:      	andb	$0x1, %al
  20cb39:      	popq	%rcx
  20cb3a:      	retq
  20cb3b:      	cmpq	$0x2d8, %rax            # imm = 0x2D8
  20cb41:      	movl	$0x2d7, %edi            # imm = 0x2D7
  20cb46:      	cmovaeq	%rax, %rdi
  20cb4a:      	leaq	0x267f(%rip), %rdx      # 0x20f1d0 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468>
  20cb51:      	movl	$0x2d7, %esi            # imm = 0x2D7
  20cb56:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  20cb5b:      	leaq	0x2656(%rip), %rdx      # 0x20f1b8 <anon.dc6856458fb29ad9f92d0f9ce98e6639.26.llvm.3839200172009692468>
  20cb62:      	movl	$0x21, %esi
  20cb67:      	movq	%rcx, %rdi
  20cb6a:      	callq	0x20cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>
  20cb6f:      	int3

000000000020cb70 <core::slice::index::slice_start_index_len_fail::hccfdea9858c4cd10>:
  20cb70:      	subq	$0x68, %rsp
  20cb74:      	movq	%rdi, 0x8(%rsp)
  20cb79:      	movq	%rsi, 0x10(%rsp)
  20cb7e:      	leaq	0x8(%rsp), %rax
  20cb83:      	movq	%rax, 0x18(%rsp)
  20cb88:      	movq	0x2751(%rip), %rax      # 0x20f2e0
  20cb8f:      	movq	%rax, 0x20(%rsp)
  20cb94:      	leaq	0x10(%rsp), %rcx
  20cb99:      	movq	%rcx, 0x28(%rsp)
  20cb9e:      	movq	%rax, 0x30(%rsp)
  20cba3:      	leaq	0x263e(%rip), %rax      # 0x20f1e8 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0x18>
  20cbaa:      	movq	%rax, 0x38(%rsp)
  20cbaf:      	movq	$0x2, 0x40(%rsp)
  20cbb8:      	movq	$0x0, 0x58(%rsp)
  20cbc1:      	leaq	0x18(%rsp), %rax
  20cbc6:      	movq	%rax, 0x48(%rsp)
  20cbcb:      	movq	$0x2, 0x50(%rsp)
  20cbd4:      	leaq	0x38(%rsp), %rdi
  20cbd9:      	movq	%rdx, %rsi
  20cbdc:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20cbe1:      	int3
  20cbe2:      	int3
  20cbe3:      	int3
  20cbe4:      	int3
  20cbe5:      	int3
  20cbe6:      	int3
  20cbe7:      	int3
  20cbe8:      	int3
  20cbe9:      	int3
  20cbea:      	int3
  20cbeb:      	int3
  20cbec:      	int3
  20cbed:      	int3
  20cbee:      	int3
  20cbef:      	int3

000000000020cbf0 <core::slice::index::slice_end_index_len_fail::hd5694c18c18ac04d>:
  20cbf0:      	subq	$0x68, %rsp
  20cbf4:      	movq	%rdi, 0x8(%rsp)
  20cbf9:      	movq	%rsi, 0x10(%rsp)
  20cbfe:      	leaq	0x8(%rsp), %rax
  20cc03:      	movq	%rax, 0x18(%rsp)
  20cc08:      	movq	0x26d1(%rip), %rax      # 0x20f2e0
  20cc0f:      	movq	%rax, 0x20(%rsp)
  20cc14:      	leaq	0x10(%rsp), %rcx
  20cc19:      	movq	%rcx, 0x28(%rsp)
  20cc1e:      	movq	%rax, 0x30(%rsp)
  20cc23:      	leaq	0x25de(%rip), %rax      # 0x20f208 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0x38>
  20cc2a:      	movq	%rax, 0x38(%rsp)
  20cc2f:      	movq	$0x2, 0x40(%rsp)
  20cc38:      	movq	$0x0, 0x58(%rsp)
  20cc41:      	leaq	0x18(%rsp), %rax
  20cc46:      	movq	%rax, 0x48(%rsp)
  20cc4b:      	movq	$0x2, 0x50(%rsp)
  20cc54:      	leaq	0x38(%rsp), %rdi
  20cc59:      	movq	%rdx, %rsi
  20cc5c:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20cc61:      	int3
  20cc62:      	int3
  20cc63:      	int3
  20cc64:      	int3
  20cc65:      	int3
  20cc66:      	int3
  20cc67:      	int3
  20cc68:      	int3
  20cc69:      	int3
  20cc6a:      	int3
  20cc6b:      	int3
  20cc6c:      	int3
  20cc6d:      	int3
  20cc6e:      	int3
  20cc6f:      	int3

000000000020cc70 <core::slice::index::slice_index_order_fail::h23fec535e55fcd8e>:
  20cc70:      	subq	$0x68, %rsp
  20cc74:      	movq	%rdi, 0x8(%rsp)
  20cc79:      	movq	%rsi, 0x10(%rsp)
  20cc7e:      	leaq	0x8(%rsp), %rax
  20cc83:      	movq	%rax, 0x18(%rsp)
  20cc88:      	movq	0x2651(%rip), %rax      # 0x20f2e0
  20cc8f:      	movq	%rax, 0x20(%rsp)
  20cc94:      	leaq	0x10(%rsp), %rcx
  20cc99:      	movq	%rcx, 0x28(%rsp)
  20cc9e:      	movq	%rax, 0x30(%rsp)
  20cca3:      	leaq	0x257e(%rip), %rax      # 0x20f228 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0x58>
  20ccaa:      	movq	%rax, 0x38(%rsp)
  20ccaf:      	movq	$0x2, 0x40(%rsp)
  20ccb8:      	movq	$0x0, 0x58(%rsp)
  20ccc1:      	leaq	0x18(%rsp), %rax
  20ccc6:      	movq	%rax, 0x48(%rsp)
  20cccb:      	movq	$0x2, 0x50(%rsp)
  20ccd4:      	leaq	0x38(%rsp), %rdi
  20ccd9:      	movq	%rdx, %rsi
  20ccdc:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20cce1:      	int3
  20cce2:      	int3
  20cce3:      	int3
  20cce4:      	int3
  20cce5:      	int3
  20cce6:      	int3
  20cce7:      	int3
  20cce8:      	int3
  20cce9:      	int3
  20ccea:      	int3
  20cceb:      	int3
  20ccec:      	int3
  20cced:      	int3
  20ccee:      	int3
  20ccef:      	int3

000000000020ccf0 <core::option::unwrap_failed::h34badeaa229a3a03>:
  20ccf0:      	pushq	%rax
  20ccf1:      	movq	%rdi, %rdx
  20ccf4:      	leaq	-0xa745(%rip), %rdi     # 0x2025b6 <core::unicode::unicode_data::grapheme_extend::OFFSETS::hd6516b692ebfcf40.llvm.3839200172009692468+0x32e>
  20ccfb:      	movl	$0x2b, %esi
  20cd00:      	callq	0x20cf40 <core::panicking::panic::h617e0a4fcdc02ecc>
  20cd05:      	int3
  20cd06:      	int3
  20cd07:      	int3
  20cd08:      	int3
  20cd09:      	int3
  20cd0a:      	int3
  20cd0b:      	int3
  20cd0c:      	int3
  20cd0d:      	int3
  20cd0e:      	int3
  20cd0f:      	int3

000000000020cd10 <core::result::unwrap_failed::h2e64338953f44fd5>:
  20cd10:      	subq	$0x78, %rsp
  20cd14:      	movq	%rdi, 0x8(%rsp)
  20cd19:      	movq	%rsi, 0x10(%rsp)
  20cd1e:      	movq	%rdx, 0x18(%rsp)
  20cd23:      	movq	%rcx, 0x20(%rsp)
  20cd28:      	leaq	0x8(%rsp), %rax
  20cd2d:      	movq	%rax, 0x28(%rsp)
  20cd32:      	leaq	-0x1489(%rip), %rax     # 0x20b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>
  20cd39:      	movq	%rax, 0x30(%rsp)
  20cd3e:      	leaq	0x18(%rsp), %rax
  20cd43:      	movq	%rax, 0x38(%rsp)
  20cd48:      	leaq	-0x14af(%rip), %rax     # 0x20b8a0 <<&T as core::fmt::Debug>::fmt::h16d69338141005ba>
  20cd4f:      	movq	%rax, 0x40(%rsp)
  20cd54:      	leaq	0x24ed(%rip), %rax      # 0x20f248 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0x78>
  20cd5b:      	movq	%rax, 0x48(%rsp)
  20cd60:      	movq	$0x2, 0x50(%rsp)
  20cd69:      	movq	$0x0, 0x68(%rsp)
  20cd72:      	leaq	0x28(%rsp), %rax
  20cd77:      	movq	%rax, 0x58(%rsp)
  20cd7c:      	movq	$0x2, 0x60(%rsp)
  20cd85:      	leaq	0x48(%rsp), %rdi
  20cd8a:      	movq	%r8, %rsi
  20cd8d:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20cd92:      	int3
  20cd93:      	int3
  20cd94:      	int3
  20cd95:      	int3
  20cd96:      	int3
  20cd97:      	int3
  20cd98:      	int3
  20cd99:      	int3
  20cd9a:      	int3
  20cd9b:      	int3
  20cd9c:      	int3
  20cd9d:      	int3
  20cd9e:      	int3
  20cd9f:      	int3

000000000020cda0 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::hb3777c9da9e7cd68>:
  20cda0:      	pushq	%r15
  20cda2:      	pushq	%r14
  20cda4:      	pushq	%r12
  20cda6:      	pushq	%rbx
  20cda7:      	subq	$0x68, %rsp
  20cdab:      	movq	%rdi, %rbx
  20cdae:      	movq	0x20(%rsi), %r14
  20cdb2:      	movq	0x28(%rsi), %r15
  20cdb6:      	movq	0x18(%r15), %r12
  20cdba:      	leaq	-0xa7de(%rip), %rsi     # 0x2025e3 <core::unicode::unicode_data::grapheme_extend::OFFSETS::hd6516b692ebfcf40.llvm.3839200172009692468+0x35b>
  20cdc1:      	movl	$0xc, %edx
  20cdc6:      	movq	%r14, %rdi
  20cdc9:      	callq	*%r12
  20cdcc:      	testb	%al, %al
  20cdce:      	jne	0x20ce67 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::hb3777c9da9e7cd68+0xc7>
  20cdd4:      	movq	0x30(%rbx), %rax
  20cdd8:      	leaq	0x10(%rax), %rcx
  20cddc:      	movq	%rax, 0x8(%rsp)
  20cde1:      	addq	$0x14, %rax
  20cde5:      	leaq	-0x153c(%rip), %rdx     # 0x20b8b0 <<&T as core::fmt::Display>::fmt::h27706284c72d5e98>
  20cdec:      	movq	%rdx, 0x10(%rsp)
  20cdf1:      	movq	%rcx, 0x18(%rsp)
  20cdf6:      	movq	0x24fb(%rip), %rcx      # 0x20f2f8
  20cdfd:      	movq	%rcx, 0x20(%rsp)
  20ce02:      	movq	%rax, 0x28(%rsp)
  20ce07:      	movq	%rcx, 0x30(%rsp)
  20ce0c:      	leaq	0x2375(%rip), %rax      # 0x20f188 <anon.dc6856458fb29ad9f92d0f9ce98e6639.7.llvm.3839200172009692468>
  20ce13:      	movq	%rax, 0x38(%rsp)
  20ce18:      	movq	$0x3, 0x40(%rsp)
  20ce21:      	movq	$0x0, 0x58(%rsp)
  20ce2a:      	leaq	0x8(%rsp), %rax
  20ce2f:      	movq	%rax, 0x48(%rsp)
  20ce34:      	movq	$0x3, 0x50(%rsp)
  20ce3d:      	leaq	0x38(%rsp), %rdx
  20ce42:      	movq	%r14, %rdi
  20ce45:      	movq	%r15, %rsi
  20ce48:      	callq	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20ce4d:      	testb	%al, %al
  20ce4f:      	jne	0x20ce67 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::hb3777c9da9e7cd68+0xc7>
  20ce51:      	leaq	-0xa869(%rip), %rsi     # 0x2025ef <core::unicode::unicode_data::grapheme_extend::OFFSETS::hd6516b692ebfcf40.llvm.3839200172009692468+0x367>
  20ce58:      	movl	$0x2, %edx
  20ce5d:      	movq	%r14, %rdi
  20ce60:      	callq	*%r12
  20ce63:      	testb	%al, %al
  20ce65:      	je	0x20ce75 <<core::panic::panic_info::PanicInfo as core::fmt::Display>::fmt::hb3777c9da9e7cd68+0xd5>
  20ce67:      	movb	$0x1, %al
  20ce69:      	addq	$0x68, %rsp
  20ce6d:      	popq	%rbx
  20ce6e:      	popq	%r12
  20ce70:      	popq	%r14
  20ce72:      	popq	%r15
  20ce74:      	retq
  20ce75:      	movq	%r14, %rdi
  20ce78:      	movq	%r15, %rsi
  20ce7b:      	movq	%rbx, %rdx
  20ce7e:      	addq	$0x68, %rsp
  20ce82:      	popq	%rbx
  20ce83:      	popq	%r12
  20ce85:      	popq	%r14
  20ce87:      	popq	%r15
  20ce89:      	jmp	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20ce8e:      	int3
  20ce8f:      	int3

000000000020ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>:
  20ce90:      	subq	$0x48, %rsp
  20ce94:      	movq	0x28(%rdi), %rax
  20ce98:      	movq	%rax, 0x30(%rsp)
  20ce9d:      	movq	0x20(%rdi), %rax
  20cea1:      	movq	%rax, 0x28(%rsp)
  20cea6:      	movq	0x18(%rdi), %rax
  20ceaa:      	movq	%rax, 0x20(%rsp)
  20ceaf:      	movq	0x10(%rdi), %rax
  20ceb3:      	movq	%rax, 0x18(%rsp)
  20ceb8:      	movq	(%rdi), %rax
  20cebb:      	movq	0x8(%rdi), %rcx
  20cebf:      	movq	%rcx, 0x10(%rsp)
  20cec4:      	movq	%rax, 0x8(%rsp)
  20cec9:      	movq	%rsi, 0x38(%rsp)
  20cece:      	movw	$0x1, 0x40(%rsp)
  20ced5:      	leaq	0x8(%rsp), %rdi
  20ceda:      	callq	0x203d90 <rust_begin_unwind>
  20cedf:      	int3

000000000020cee0 <core::panicking::panic_nounwind_fmt::h59dd07cbf82bb3c7>:
  20cee0:      	subq	$0x48, %rsp
  20cee4:      	movq	0x28(%rdi), %rax
  20cee8:      	movq	%rax, 0x30(%rsp)
  20ceed:      	movq	0x20(%rdi), %rax
  20cef1:      	movq	%rax, 0x28(%rsp)
  20cef6:      	movq	0x18(%rdi), %rax
  20cefa:      	movq	%rax, 0x20(%rsp)
  20ceff:      	movq	0x10(%rdi), %rax
  20cf03:      	movq	%rax, 0x18(%rsp)
  20cf08:      	movq	(%rdi), %rax
  20cf0b:      	movq	0x8(%rdi), %rcx
  20cf0f:      	movq	%rcx, 0x10(%rsp)
  20cf14:      	movq	%rax, 0x8(%rsp)
  20cf19:      	movq	%rdx, 0x38(%rsp)
  20cf1e:      	movb	$0x0, 0x40(%rsp)
  20cf23:      	movb	%sil, 0x41(%rsp)
  20cf28:      	leaq	0x8(%rsp), %rdi
  20cf2d:      	callq	0x203d90 <rust_begin_unwind>
  20cf32:      	int3
  20cf33:      	int3
  20cf34:      	int3
  20cf35:      	int3
  20cf36:      	int3
  20cf37:      	int3
  20cf38:      	int3
  20cf39:      	int3
  20cf3a:      	int3
  20cf3b:      	int3
  20cf3c:      	int3
  20cf3d:      	int3
  20cf3e:      	int3
  20cf3f:      	int3

000000000020cf40 <core::panicking::panic::h617e0a4fcdc02ecc>:
  20cf40:      	subq	$0x48, %rsp
  20cf44:      	movq	%rdi, 0x8(%rsp)
  20cf49:      	movq	%rsi, 0x10(%rsp)
  20cf4e:      	leaq	0x8(%rsp), %rax
  20cf53:      	movq	%rax, 0x18(%rsp)
  20cf58:      	movq	$0x1, 0x20(%rsp)
  20cf61:      	movq	$0x0, 0x38(%rsp)
  20cf6a:      	movq	$0x8, 0x28(%rsp)
  20cf73:      	movq	$0x0, 0x30(%rsp)
  20cf7c:      	leaq	0x18(%rsp), %rdi
  20cf81:      	movq	%rdx, %rsi
  20cf84:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20cf89:      	int3
  20cf8a:      	int3
  20cf8b:      	int3
  20cf8c:      	int3
  20cf8d:      	int3
  20cf8e:      	int3
  20cf8f:      	int3

000000000020cf90 <core::panicking::panic_bounds_check::h1b9f2395752b8d1c>:
  20cf90:      	subq	$0x68, %rsp
  20cf94:      	movq	%rdi, 0x8(%rsp)
  20cf99:      	movq	%rsi, 0x10(%rsp)
  20cf9e:      	leaq	0x10(%rsp), %rax
  20cfa3:      	movq	%rax, 0x18(%rsp)
  20cfa8:      	movq	0x2331(%rip), %rax      # 0x20f2e0
  20cfaf:      	movq	%rax, 0x20(%rsp)
  20cfb4:      	leaq	0x8(%rsp), %rcx
  20cfb9:      	movq	%rcx, 0x28(%rsp)
  20cfbe:      	movq	%rax, 0x30(%rsp)
  20cfc3:      	leaq	0x229e(%rip), %rax      # 0x20f268 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0x98>
  20cfca:      	movq	%rax, 0x38(%rsp)
  20cfcf:      	movq	$0x2, 0x40(%rsp)
  20cfd8:      	movq	$0x0, 0x58(%rsp)
  20cfe1:      	leaq	0x18(%rsp), %rax
  20cfe6:      	movq	%rax, 0x48(%rsp)
  20cfeb:      	movq	$0x2, 0x50(%rsp)
  20cff4:      	leaq	0x38(%rsp), %rdi
  20cff9:      	movq	%rdx, %rsi
  20cffc:      	callq	0x20ce90 <core::panicking::panic_fmt::ha6e04b181f9e8c3d>
  20d001:      	int3
  20d002:      	int3
  20d003:      	int3
  20d004:      	int3
  20d005:      	int3
  20d006:      	int3
  20d007:      	int3
  20d008:      	int3
  20d009:      	int3
  20d00a:      	int3
  20d00b:      	int3
  20d00c:      	int3
  20d00d:      	int3
  20d00e:      	int3
  20d00f:      	int3

000000000020d010 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1>:
  20d010:      	pushq	%rbp
  20d011:      	pushq	%r15
  20d013:      	pushq	%r14
  20d015:      	pushq	%r13
  20d017:      	pushq	%r12
  20d019:      	pushq	%rbx
  20d01a:      	subq	$0x28, %rsp
  20d01e:      	movabsq	$-0x101010101010101, %r15 # imm = 0xFEFEFEFEFEFEFEFF
  20d028:      	movabsq	$0xa0a0a0a0a0a0a0a, %rbp # imm = 0xA0A0A0A0A0A0A0A
  20d032:      	movq	0x10(%rdi), %rax
  20d036:      	movq	%rax, 0x18(%rsp)
  20d03b:      	movq	(%rdi), %rax
  20d03e:      	movq	%rax, 0x10(%rsp)
  20d043:      	movq	0x8(%rdi), %rax
  20d047:      	movq	%rax, 0x8(%rsp)
  20d04c:      	movq	%rsi, (%rsp)
  20d050:      	leaq	0x8(%rsi), %rax
  20d054:      	movq	%rax, 0x20(%rsp)
  20d059:      	xorl	%r12d, %r12d
  20d05c:      	xorl	%r14d, %r14d
  20d05f:      	jmp	0x20d0bc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0xac>
  20d061:      	nopw	%cs:(%rax,%rax)
  20d070:      	cmpb	$0xa, -0x1(%r11,%rbp)
  20d076:      	sete	%al
  20d079:      	subq	%r12, %rbp
  20d07c:      	addq	%r11, %r12
  20d07f:      	movq	0x18(%rsp), %rcx
  20d084:      	movb	%al, (%rcx)
  20d086:      	movq	0x10(%rsp), %rdi
  20d08b:      	movq	%r12, %rsi
  20d08e:      	movq	%rbp, %rdx
  20d091:      	movq	0x8(%rsp), %rax
  20d096:      	callq	*0x18(%rax)
  20d099:      	orb	%al, %r15b
  20d09c:      	movq	%r13, %r12
  20d09f:      	movabsq	$-0x101010101010101, %r15 # imm = 0xFEFEFEFEFEFEFEFF
  20d0a9:      	movq	%rbx, %rdx
  20d0ac:      	movabsq	$0xa0a0a0a0a0a0a0a, %rbp # imm = 0xA0A0A0A0A0A0A0A
  20d0b6:      	jne	0x20d288 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x278>
  20d0bc:      	cmpq	%rdx, %r14
  20d0bf:      	jbe	0x20d0d0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0xc0>
  20d0c1:      	movq	%r14, %r13
  20d0c4:      	movq	(%rsp), %r11
  20d0c8:      	jmp	0x20d233 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x223>
  20d0cd:      	nopl	(%rax)
  20d0d0:      	movq	(%rsp), %r11
  20d0d4:      	jmp	0x20d0ec <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0xdc>
  20d0d6:      	nopw	%cs:(%rax,%rax)
  20d0e0:      	movq	%r13, %r14
  20d0e3:      	cmpq	%rdx, %r13
  20d0e6:      	ja	0x20d233 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x223>
  20d0ec:      	movq	%rdx, %rax
  20d0ef:      	subq	%r14, %rax
  20d0f2:      	leaq	(%r11,%r14), %rcx
  20d0f6:      	cmpq	$0x10, %rax
  20d0fa:      	jae	0x20d130 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x120>
  20d0fc:      	cmpq	%r14, %rdx
  20d0ff:      	je	0x20d230 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x220>
  20d105:      	xorl	%esi, %esi
  20d107:      	nopw	(%rax,%rax)
  20d110:      	cmpb	$0xa, (%rcx,%rsi)
  20d114:      	je	0x20d1f3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1e3>
  20d11a:      	incq	%rsi
  20d11d:      	cmpq	%rsi, %rax
  20d120:      	jne	0x20d110 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x100>
  20d122:      	jmp	0x20d230 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x220>
  20d127:      	nopw	(%rax,%rax)
  20d130:      	leaq	0x7(%rcx), %rbx
  20d134:      	andq	$-0x8, %rbx
  20d138:      	subq	%rcx, %rbx
  20d13b:      	movabsq	$-0x7f7f7f7f7f7f7f80, %r13 # imm = 0x8080808080808080
  20d145:      	jne	0x20d1a0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x190>
  20d147:      	leaq	-0x10(%rax), %rsi
  20d14b:      	xorl	%ebx, %ebx
  20d14d:      	movq	0x20(%rsp), %rdi
  20d152:      	addq	%r14, %rdi
  20d155:      	nopw	%cs:(%rax,%rax)
  20d160:      	movq	-0x8(%rdi,%rbx), %r8
  20d165:      	movq	(%rdi,%rbx), %r9
  20d169:      	movq	%r8, %r10
  20d16c:      	xorq	%rbp, %r10
  20d16f:      	addq	%r15, %r10
  20d172:      	notq	%r8
  20d175:      	andq	%r10, %r8
  20d178:      	movq	%r9, %r10
  20d17b:      	xorq	%rbp, %r10
  20d17e:      	addq	%r15, %r10
  20d181:      	notq	%r9
  20d184:      	andq	%r10, %r9
  20d187:      	orq	%r8, %r9
  20d18a:      	testq	%r13, %r9
  20d18d:      	jne	0x20d1d0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1c0>
  20d18f:      	addq	$0x10, %rbx
  20d193:      	cmpq	%rsi, %rbx
  20d196:      	jbe	0x20d160 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x150>
  20d198:      	jmp	0x20d1d0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1c0>
  20d19a:      	nopw	(%rax,%rax)
  20d1a0:      	xorl	%esi, %esi
  20d1a2:      	nopw	%cs:(%rax,%rax)
  20d1b0:      	cmpb	$0xa, (%rcx,%rsi)
  20d1b4:      	je	0x20d1f3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1e3>
  20d1b6:      	incq	%rsi
  20d1b9:      	cmpq	%rsi, %rbx
  20d1bc:      	jne	0x20d1b0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1a0>
  20d1be:      	leaq	-0x10(%rax), %rsi
  20d1c2:      	cmpq	%rsi, %rbx
  20d1c5:      	jbe	0x20d14d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x13d>
  20d1c7:      	nopw	(%rax,%rax)
  20d1d0:      	cmpq	%rbx, %rax
  20d1d3:      	je	0x20d230 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x220>
  20d1d5:      	nopw	%cs:(%rax,%rax)
  20d1e0:      	cmpb	$0xa, (%rcx,%rbx)
  20d1e4:      	je	0x20d1f0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1e0>
  20d1e6:      	incq	%rbx
  20d1e9:      	cmpq	%rbx, %rax
  20d1ec:      	jne	0x20d1e0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x1d0>
  20d1ee:      	jmp	0x20d230 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x220>
  20d1f0:      	movq	%rbx, %rsi
  20d1f3:      	leaq	(%rsi,%r14), %r13
  20d1f7:      	incq	%r13
  20d1fa:      	leaq	(%rsi,%r14), %rax
  20d1fe:      	cmpq	%rdx, %rax
  20d201:      	jae	0x20d0e0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0xd0>
  20d207:      	addq	%r11, %rsi
  20d20a:      	cmpb	$0xa, (%r14,%rsi)
  20d20f:      	jne	0x20d0e0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0xd0>
  20d215:      	movq	%rdx, %rbx
  20d218:      	xorl	%r15d, %r15d
  20d21b:      	movq	%r13, %r14
  20d21e:      	movq	%r13, %rbp
  20d221:      	jmp	0x20d247 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x237>
  20d223:      	nopw	%cs:(%rax,%rax)
  20d230:      	movq	%rdx, %r13
  20d233:      	movq	%r13, %r14
  20d236:      	movb	$0x1, %r15b
  20d239:      	movq	%r12, %r13
  20d23c:      	movq	%rdx, %rbp
  20d23f:      	movq	%rdx, %rbx
  20d242:      	cmpq	%rdx, %r12
  20d245:      	je	0x20d282 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x272>
  20d247:      	movq	0x18(%rsp), %rax
  20d24c:      	cmpb	$0x0, (%rax)
  20d24f:      	je	0x20d272 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x262>
  20d251:      	movl	$0x4, %edx
  20d256:      	movq	0x10(%rsp), %rdi
  20d25b:      	leaq	-0xce13(%rip), %rsi     # 0x20044f
  20d262:      	movq	0x8(%rsp), %rax
  20d267:      	callq	*0x18(%rax)
  20d26a:      	movq	(%rsp), %r11
  20d26e:      	testb	%al, %al
  20d270:      	jne	0x20d286 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x276>
  20d272:      	cmpq	%r12, %rbp
  20d275:      	jne	0x20d070 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x60>
  20d27b:      	xorl	%eax, %eax
  20d27d:      	jmp	0x20d079 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x69>
  20d282:      	xorl	%eax, %eax
  20d284:      	jmp	0x20d288 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1+0x278>
  20d286:      	movb	$0x1, %al
  20d288:      	addq	$0x28, %rsp
  20d28c:      	popq	%rbx
  20d28d:      	popq	%r12
  20d28f:      	popq	%r13
  20d291:      	popq	%r14
  20d293:      	popq	%r15
  20d295:      	popq	%rbp
  20d296:      	retq
  20d297:      	int3
  20d298:      	int3
  20d299:      	int3
  20d29a:      	int3
  20d29b:      	int3
  20d29c:      	int3
  20d29d:      	int3
  20d29e:      	int3
  20d29f:      	int3

000000000020d2a0 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::h202754391425a28e>:
  20d2a0:      	pushq	%rbp
  20d2a1:      	pushq	%r15
  20d2a3:      	pushq	%r14
  20d2a5:      	pushq	%rbx
  20d2a6:      	pushq	%rax
  20d2a7:      	movq	0x10(%rdi), %r14
  20d2ab:      	cmpb	$0x0, (%r14)
  20d2af:      	movq	(%rdi), %rbx
  20d2b2:      	movq	0x8(%rdi), %r15
  20d2b6:      	je	0x20d2e3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::h202754391425a28e+0x43>
  20d2b8:      	leaq	-0xce70(%rip), %rax     # 0x20044f
  20d2bf:      	movl	$0x4, %edx
  20d2c4:      	movq	%rbx, %rdi
  20d2c7:      	movl	%esi, %ebp
  20d2c9:      	movq	%rax, %rsi
  20d2cc:      	callq	*0x18(%r15)
  20d2d0:      	movl	%ebp, %esi
  20d2d2:      	testb	%al, %al
  20d2d4:      	je	0x20d2e3 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_char::h202754391425a28e+0x43>
  20d2d6:      	movb	$0x1, %al
  20d2d8:      	addq	$0x8, %rsp
  20d2dc:      	popq	%rbx
  20d2dd:      	popq	%r14
  20d2df:      	popq	%r15
  20d2e1:      	popq	%rbp
  20d2e2:      	retq
  20d2e3:      	cmpl	$0xa, %esi
  20d2e6:      	sete	(%r14)
  20d2ea:      	movq	0x20(%r15), %rax
  20d2ee:      	movq	%rbx, %rdi
  20d2f1:      	addq	$0x8, %rsp
  20d2f5:      	popq	%rbx
  20d2f6:      	popq	%r14
  20d2f8:      	popq	%r15
  20d2fa:      	popq	%rbp
  20d2fb:      	jmpq	*%rax
  20d2fd:      	int3
  20d2fe:      	int3
  20d2ff:      	int3

000000000020d300 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c>:
  20d300:      	pushq	%rbp
  20d301:      	pushq	%r15
  20d303:      	pushq	%r14
  20d305:      	pushq	%r13
  20d307:      	pushq	%r12
  20d309:      	pushq	%rbx
  20d30a:      	subq	$0x68, %rsp
  20d30e:      	movq	%rdi, %rbx
  20d311:      	movb	$0x1, %bpl
  20d314:      	cmpb	$0x0, 0x8(%rdi)
  20d318:      	je	0x20d334 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x34>
  20d31a:      	movb	%bpl, 0x8(%rbx)
  20d31e:      	movb	$0x1, 0x9(%rbx)
  20d322:      	movq	%rbx, %rax
  20d325:      	addq	$0x68, %rsp
  20d329:      	popq	%rbx
  20d32a:      	popq	%r12
  20d32c:      	popq	%r13
  20d32e:      	popq	%r14
  20d330:      	popq	%r15
  20d332:      	popq	%rbp
  20d333:      	retq
  20d334:      	movq	%rcx, %r14
  20d337:      	movq	%r8, 0x8(%rsp)
  20d33c:      	movq	(%rbx), %r15
  20d33f:      	movl	0x34(%r15), %eax
  20d343:      	movzbl	0x9(%rbx), %ecx
  20d347:      	testb	$0x4, %al
  20d349:      	jne	0x20d3c9 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0xc9>
  20d34b:      	movq	%rsi, %r13
  20d34e:      	movq	%rdx, %r12
  20d351:      	xorl	%edx, %edx
  20d353:      	testb	%cl, %cl
  20d355:      	leaq	-0xad39(%rip), %rax     # 0x202623 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.41.llvm.15512266440168297285>
  20d35c:      	leaq	-0xad3d(%rip), %rsi     # 0x202626 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.42.llvm.15512266440168297285>
  20d363:      	cmoveq	%rax, %rsi
  20d367:      	sete	%dl
  20d36a:      	orq	$0x2, %rdx
  20d36e:      	movq	0x20(%r15), %rdi
  20d372:      	movq	0x28(%r15), %rax
  20d376:      	callq	*0x18(%rax)
  20d379:      	movb	$0x1, %bpl
  20d37c:      	testb	%al, %al
  20d37e:      	jne	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d380:      	movq	0x20(%r15), %rdi
  20d384:      	movq	0x28(%r15), %rax
  20d388:      	movq	%r13, %rsi
  20d38b:      	movq	%r12, %rdx
  20d38e:      	callq	*0x18(%rax)
  20d391:      	testb	%al, %al
  20d393:      	jne	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d395:      	movq	0x20(%r15), %rdi
  20d399:      	movq	0x28(%r15), %rax
  20d39d:      	leaq	-0xad7c(%rip), %rsi     # 0x202628 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.43.llvm.15512266440168297285>
  20d3a4:      	movl	$0x2, %edx
  20d3a9:      	callq	*0x18(%rax)
  20d3ac:      	testb	%al, %al
  20d3ae:      	jne	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d3b4:      	movq	%r14, %rdi
  20d3b7:      	movq	%r15, %rsi
  20d3ba:      	movq	0x8(%rsp), %rax
  20d3bf:      	callq	*0x18(%rax)
  20d3c2:      	movl	%eax, %ebp
  20d3c4:      	jmp	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d3c9:      	testb	%cl, %cl
  20d3cb:      	jne	0x20d3ff <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0xff>
  20d3cd:      	movq	%rsi, %r12
  20d3d0:      	movq	%rdx, %r13
  20d3d3:      	movq	0x20(%r15), %rdi
  20d3d7:      	movq	0x28(%r15), %rax
  20d3db:      	leaq	-0xadb8(%rip), %rsi     # 0x20262a <anon.544ce18f21f6cb231f0b502ad6c7d0ac.44.llvm.15512266440168297285>
  20d3e2:      	movl	$0x3, %edx
  20d3e7:      	callq	*0x18(%rax)
  20d3ea:      	movb	$0x1, %bpl
  20d3ed:      	testb	%al, %al
  20d3ef:      	jne	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d3f5:      	movl	0x34(%r15), %eax
  20d3f9:      	movq	%r13, %rdx
  20d3fc:      	movq	%r12, %rsi
  20d3ff:      	movb	$0x1, 0x7(%rsp)
  20d404:      	movq	0x20(%r15), %rcx
  20d408:      	movq	0x28(%r15), %rdi
  20d40c:      	movq	%rcx, 0x10(%rsp)
  20d411:      	movq	%rdi, 0x18(%rsp)
  20d416:      	leaq	0x7(%rsp), %rcx
  20d41b:      	movq	%rcx, 0x20(%rsp)
  20d420:      	movl	0x30(%r15), %ecx
  20d424:      	movzbl	0x38(%r15), %edi
  20d429:      	movq	(%r15), %r8
  20d42c:      	movq	0x8(%r15), %r9
  20d430:      	movq	0x10(%r15), %r10
  20d434:      	movq	0x18(%r15), %r11
  20d438:      	movl	%eax, 0x5c(%rsp)
  20d43c:      	movl	%ecx, 0x58(%rsp)
  20d440:      	movb	%dil, 0x60(%rsp)
  20d445:      	movq	%r8, 0x28(%rsp)
  20d44a:      	movq	%r9, 0x30(%rsp)
  20d44f:      	movq	%r10, 0x38(%rsp)
  20d454:      	movq	%r11, 0x40(%rsp)
  20d459:      	leaq	0x10(%rsp), %rdi
  20d45e:      	movq	%rdi, 0x48(%rsp)
  20d463:      	leaq	0x1bce(%rip), %rax      # 0x20f038 <anon.80bd864aff95627c9bc18df110510794.0.llvm.15989499084974745661>
  20d46a:      	movq	%rax, 0x50(%rsp)
  20d46f:      	callq	0x20d010 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1>
  20d474:      	testb	%al, %al
  20d476:      	jne	0x20d4a6 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a6>
  20d478:      	leaq	-0xae57(%rip), %rsi     # 0x202628 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.43.llvm.15512266440168297285>
  20d47f:      	leaq	0x10(%rsp), %rdi
  20d484:      	movl	$0x2, %edx
  20d489:      	callq	0x20d010 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str::h8c890cc35cbcf2f1>
  20d48e:      	testb	%al, %al
  20d490:      	jne	0x20d4a6 <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a6>
  20d492:      	leaq	0x28(%rsp), %rsi
  20d497:      	movq	%r14, %rdi
  20d49a:      	movq	0x8(%rsp), %rax
  20d49f:      	callq	*0x18(%rax)
  20d4a2:      	testb	%al, %al
  20d4a4:      	je	0x20d4ae <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1ae>
  20d4a6:      	movb	$0x1, %bpl
  20d4a9:      	jmp	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d4ae:      	movq	0x48(%rsp), %rdi
  20d4b3:      	movq	0x50(%rsp), %rax
  20d4b8:      	leaq	-0xae92(%rip), %rsi     # 0x20262d <anon.544ce18f21f6cb231f0b502ad6c7d0ac.45.llvm.15512266440168297285>
  20d4bf:      	movl	$0x2, %edx
  20d4c4:      	callq	*0x18(%rax)
  20d4c7:      	movl	%eax, %ebp
  20d4c9:      	jmp	0x20d31a <core::fmt::builders::DebugStruct::field::h0e6cbd9d1812990c+0x1a>
  20d4ce:      	int3
  20d4cf:      	int3

000000000020d4d0 <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc>:
  20d4d0:      	cmpb	$0x0, 0x9(%rdi)
  20d4d4:      	movzbl	0x8(%rdi), %ecx
  20d4d8:      	je	0x20d4e4 <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc+0x14>
  20d4da:      	movb	$0x1, %al
  20d4dc:      	testb	%cl, %cl
  20d4de:      	je	0x20d4ea <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc+0x1a>
  20d4e0:      	movb	%al, 0x8(%rdi)
  20d4e3:      	retq
  20d4e4:      	testb	%cl, %cl
  20d4e6:      	setne	%al
  20d4e9:      	retq
  20d4ea:      	pushq	%rbx
  20d4eb:      	movq	%rdi, %rbx
  20d4ee:      	movq	(%rdi), %rax
  20d4f1:      	testb	$0x4, 0x34(%rax)
  20d4f5:      	jne	0x20d50d <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc+0x3d>
  20d4f7:      	movq	0x20(%rax), %rdi
  20d4fb:      	movq	0x28(%rax), %rax
  20d4ff:      	leaq	-0xaed6(%rip), %rsi     # 0x202630 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.50.llvm.15512266440168297285>
  20d506:      	movl	$0x2, %edx
  20d50b:      	jmp	0x20d521 <core::fmt::builders::DebugStruct::finish::hd299ee40c15278bc+0x51>
  20d50d:      	movq	0x20(%rax), %rdi
  20d511:      	movq	0x28(%rax), %rax
  20d515:      	leaq	-0xaeed(%rip), %rsi     # 0x20262f <anon.544ce18f21f6cb231f0b502ad6c7d0ac.49.llvm.15512266440168297285>
  20d51c:      	movl	$0x1, %edx
  20d521:      	callq	*0x18(%rax)
  20d524:      	movq	%rbx, %rdi
  20d527:      	popq	%rbx
  20d528:      	movb	%al, 0x8(%rdi)
  20d52b:      	retq
  20d52c:      	int3
  20d52d:      	int3
  20d52e:      	int3
  20d52f:      	int3

000000000020d530 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed>:
  20d530:      	pushq	%r15
  20d532:      	pushq	%r14
  20d534:      	pushq	%r13
  20d536:      	pushq	%r12
  20d538:      	pushq	%rbx
  20d539:      	subq	$0x60, %rsp
  20d53d:      	movq	%rdi, %rbx
  20d540:      	cmpb	$0x0, 0x10(%rdi)
  20d544:      	movq	(%rdi), %r12
  20d547:      	movb	$0x1, %al
  20d549:      	je	0x20d565 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x35>
  20d54b:      	movb	%al, 0x10(%rbx)
  20d54e:      	incq	%r12
  20d551:      	movq	%r12, (%rbx)
  20d554:      	movq	%rbx, %rax
  20d557:      	addq	$0x60, %rsp
  20d55b:      	popq	%rbx
  20d55c:      	popq	%r12
  20d55e:      	popq	%r13
  20d560:      	popq	%r14
  20d562:      	popq	%r15
  20d564:      	retq
  20d565:      	movq	0x8(%rbx), %r14
  20d569:      	movl	0x34(%r14), %eax
  20d56d:      	testb	$0x4, %al
  20d56f:      	jne	0x20d5b3 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x83>
  20d571:      	movq	%rsi, %r15
  20d574:      	movq	%rdx, %r13
  20d577:      	xorl	%edx, %edx
  20d579:      	testq	%r12, %r12
  20d57c:      	leaq	-0xaf51(%rip), %rax     # 0x202632 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.51.llvm.15512266440168297285>
  20d583:      	leaq	-0xaf64(%rip), %rsi     # 0x202626 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.42.llvm.15512266440168297285>
  20d58a:      	cmoveq	%rax, %rsi
  20d58e:      	setne	%dl
  20d591:      	incq	%rdx
  20d594:      	movq	0x20(%r14), %rdi
  20d598:      	movq	0x28(%r14), %rax
  20d59c:      	callq	*0x18(%rax)
  20d59f:      	movl	%eax, %ecx
  20d5a1:      	movb	$0x1, %al
  20d5a3:      	testb	%cl, %cl
  20d5a5:      	jne	0x20d54b <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x1b>
  20d5a7:      	movq	%r15, %rdi
  20d5aa:      	movq	%r14, %rsi
  20d5ad:      	callq	*0x18(%r13)
  20d5b1:      	jmp	0x20d54b <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x1b>
  20d5b3:      	testq	%r12, %r12
  20d5b6:      	jne	0x20d5eb <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0xbb>
  20d5b8:      	movq	%rsi, %r15
  20d5bb:      	movq	%rdx, %r13
  20d5be:      	movq	0x20(%r14), %rdi
  20d5c2:      	movq	0x28(%r14), %rax
  20d5c6:      	leaq	-0xaf9a(%rip), %rsi     # 0x202633 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.52.llvm.15512266440168297285>
  20d5cd:      	movl	$0x2, %edx
  20d5d2:      	callq	*0x18(%rax)
  20d5d5:      	movl	%eax, %ecx
  20d5d7:      	movb	$0x1, %al
  20d5d9:      	testb	%cl, %cl
  20d5db:      	jne	0x20d54b <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x1b>
  20d5e1:      	movl	0x34(%r14), %eax
  20d5e5:      	movq	%r13, %rdx
  20d5e8:      	movq	%r15, %rsi
  20d5eb:      	movb	$0x1, 0x7(%rsp)
  20d5f0:      	movq	0x20(%r14), %rcx
  20d5f4:      	movq	0x28(%r14), %rdi
  20d5f8:      	movq	%rcx, 0x48(%rsp)
  20d5fd:      	movq	%rdi, 0x50(%rsp)
  20d602:      	leaq	0x7(%rsp), %rcx
  20d607:      	movq	%rcx, 0x58(%rsp)
  20d60c:      	movl	0x30(%r14), %ecx
  20d610:      	movzbl	0x38(%r14), %edi
  20d615:      	movq	(%r14), %r8
  20d618:      	movq	0x8(%r14), %r9
  20d61c:      	movq	0x10(%r14), %r10
  20d620:      	movq	0x18(%r14), %r11
  20d624:      	movl	%eax, 0x3c(%rsp)
  20d628:      	movl	%ecx, 0x38(%rsp)
  20d62c:      	movb	%dil, 0x40(%rsp)
  20d631:      	movq	%r8, 0x8(%rsp)
  20d636:      	movq	%r9, 0x10(%rsp)
  20d63b:      	movq	%r10, 0x18(%rsp)
  20d640:      	movq	%r11, 0x20(%rsp)
  20d645:      	leaq	0x48(%rsp), %rax
  20d64a:      	movq	%rax, 0x28(%rsp)
  20d64f:      	leaq	0x19e2(%rip), %rax      # 0x20f038 <anon.80bd864aff95627c9bc18df110510794.0.llvm.15989499084974745661>
  20d656:      	movq	%rax, 0x30(%rsp)
  20d65b:      	leaq	0x8(%rsp), %rax
  20d660:      	movq	%rsi, %rdi
  20d663:      	movq	%rax, %rsi
  20d666:      	callq	*0x18(%rdx)
  20d669:      	testb	%al, %al
  20d66b:      	je	0x20d674 <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x144>
  20d66d:      	movb	$0x1, %al
  20d66f:      	jmp	0x20d54b <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x1b>
  20d674:      	movq	0x28(%rsp), %rdi
  20d679:      	movq	0x30(%rsp), %rax
  20d67e:      	leaq	-0xb058(%rip), %rsi     # 0x20262d <anon.544ce18f21f6cb231f0b502ad6c7d0ac.45.llvm.15512266440168297285>
  20d685:      	movl	$0x2, %edx
  20d68a:      	callq	*0x18(%rax)
  20d68d:      	jmp	0x20d54b <core::fmt::builders::DebugTuple::field::hd2a4eda0c9f696ed+0x1b>
  20d692:      	int3
  20d693:      	int3
  20d694:      	int3
  20d695:      	int3
  20d696:      	int3
  20d697:      	int3
  20d698:      	int3
  20d699:      	int3
  20d69a:      	int3
  20d69b:      	int3
  20d69c:      	int3
  20d69d:      	int3
  20d69e:      	int3
  20d69f:      	int3

000000000020d6a0 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296>:
  20d6a0:      	movq	(%rdi), %rcx
  20d6a3:      	movzbl	0x10(%rdi), %edx
  20d6a7:      	testq	%rcx, %rcx
  20d6aa:      	je	0x20d720 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x80>
  20d6ac:      	movb	$0x1, %al
  20d6ae:      	testb	%dl, %dl
  20d6b0:      	jne	0x20d71b <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x7b>
  20d6b2:      	pushq	%r14
  20d6b4:      	pushq	%rbx
  20d6b5:      	pushq	%rax
  20d6b6:      	movq	0x8(%rdi), %rbx
  20d6ba:      	cmpq	$0x1, %rcx
  20d6be:      	jne	0x20d6f4 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x54>
  20d6c0:      	cmpb	$0x0, 0x11(%rdi)
  20d6c4:      	je	0x20d6f4 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x54>
  20d6c6:      	testb	$0x4, 0x34(%rbx)
  20d6ca:      	jne	0x20d6f4 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x54>
  20d6cc:      	movq	0x20(%rbx), %rax
  20d6d0:      	movq	0x28(%rbx), %rcx
  20d6d4:      	leaq	-0xb0a6(%rip), %rsi     # 0x202635 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.53.llvm.15512266440168297285>
  20d6db:      	movl	$0x1, %edx
  20d6e0:      	movq	%rdi, %r14
  20d6e3:      	movq	%rax, %rdi
  20d6e6:      	callq	*0x18(%rcx)
  20d6e9:      	movq	%r14, %rdi
  20d6ec:      	movl	%eax, %ecx
  20d6ee:      	movb	$0x1, %al
  20d6f0:      	testb	%cl, %cl
  20d6f2:      	jne	0x20d714 <core::fmt::builders::DebugTuple::finish::h6d415ffae25be296+0x74>
  20d6f4:      	movq	0x20(%rbx), %rax
  20d6f8:      	movq	0x28(%rbx), %rcx
  20d6fc:      	leaq	-0xb0cd(%rip), %rsi     # 0x202636 <anon.544ce18f21f6cb231f0b502ad6c7d0ac.54.llvm.15512266440168297285>
  20d703:      	movl	$0x1, %edx
  20d708:      	movq	%rdi, %rbx
  20d70b:      	movq	%rax, %rdi
  20d70e:      	callq	*0x18(%rcx)
  20d711:      	movq	%rbx, %rdi
  20d714:      	addq	$0x8, %rsp
  20d718:      	popq	%rbx
  20d719:      	popq	%r14
  20d71b:      	movb	%al, 0x10(%rdi)
  20d71e:      	movl	%eax, %edx
  20d720:      	testb	%dl, %dl
  20d722:      	setne	%al
  20d725:      	retq
  20d726:      	int3
  20d727:      	int3
  20d728:      	int3
  20d729:      	int3
  20d72a:      	int3
  20d72b:      	int3
  20d72c:      	int3
  20d72d:      	int3
  20d72e:      	int3
  20d72f:      	int3

000000000020d730 <core::fmt::Write::write_fmt::h02dd1984c3e786a0>:
  20d730:      	movq	%rsi, %rdx
  20d733:      	leaq	0x1b4e(%rip), %rsi      # 0x20f288 <anon.dc6856458fb29ad9f92d0f9ce98e6639.27.llvm.3839200172009692468+0xb8>
  20d73a:      	jmp	0x20acd0 <core::fmt::write::h6d306477db77c931>
  20d73f:      	int3

000000000020d740 <compiler_builtins::mem::memcpy::hdefb882ab39c70a9>:
  20d740:      	movq	%rdi, %rax
  20d743:      	movl	%eax, %r8d
  20d746:      	negl	%r8d
  20d749:      	andl	$0x7, %r8d
  20d74d:      	cmpq	%rdx, %r8
  20d750:      	cmovaeq	%rdx, %r8
  20d754:      	movq	%r8, %rcx
  20d757:      	rep		movsb	(%rsi), %es:(%rdi)
  20d759:      	subq	%r8, %rdx
  20d75c:      	movq	%rdx, %rcx
  20d75f:      	shrq	$0x3, %rcx
  20d763:      	rep		movsq	(%rsi), %es:(%rdi)
  20d766:      	andl	$0x7, %edx
  20d769:      	movq	%rdx, %rcx
  20d76c:      	rep		movsb	(%rsi), %es:(%rdi)
  20d76e:      	retq
  20d76f:      	int3

000000000020d770 <compiler_builtins::mem::memset::ha76d673a56a791eb>:
  20d770:      	movq	%rdx, %r8
  20d773:      	movq	%rdi, %rdx
  20d776:      	movzbl	%sil, %ecx
  20d77a:      	movabsq	$0x101010101010101, %rax # imm = 0x101010101010101
  20d784:      	imulq	%rcx, %rax
  20d788:      	movl	%edx, %ecx
  20d78a:      	negl	%ecx
  20d78c:      	andl	$0x7, %ecx
  20d78f:      	cmpq	%r8, %rcx
  20d792:      	cmovaeq	%r8, %rcx
  20d796:      	subq	%rcx, %r8
  20d799:      	movq	%r8, %rsi
  20d79c:      	shrq	$0x3, %rsi
  20d7a0:      	andl	$0x7, %r8d
  20d7a4:      	rep		stosb	%al, %es:(%rdi)
  20d7a6:      	movq	%rsi, %rcx
  20d7a9:      	rep		stosq	%rax, %es:(%rdi)
  20d7ac:      	movq	%r8, %rcx
  20d7af:      	rep		stosb	%al, %es:(%rdi)
  20d7b1:      	movq	%rdx, %rax
  20d7b4:      	retq
  20d7b5:      	int3
  20d7b6:      	int3
  20d7b7:      	int3
  20d7b8:      	int3
  20d7b9:      	int3
  20d7ba:      	int3
  20d7bb:      	int3
  20d7bc:      	int3
  20d7bd:      	int3
  20d7be:      	int3
  20d7bf:      	int3

000000000020d7c0 <memset>:
  20d7c0:      	jmp	0x20d770 <compiler_builtins::mem::memset::ha76d673a56a791eb>
  20d7c5:      	int3
  20d7c6:      	int3
  20d7c7:      	int3
  20d7c8:      	int3
  20d7c9:      	int3
  20d7ca:      	int3
  20d7cb:      	int3
  20d7cc:      	int3
  20d7cd:      	int3
  20d7ce:      	int3
  20d7cf:      	int3

000000000020d7d0 <memcpy>:
  20d7d0:      	jmp	0x20d740 <compiler_builtins::mem::memcpy::hdefb882ab39c70a9>
