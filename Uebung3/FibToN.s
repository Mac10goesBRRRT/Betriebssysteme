	.file	"FibToN.c"
	.text
	.p2align 4
	.globl	fibRek
	.type	fibRek, @function
fibRek:
.LFB40:
	.cfi_startproc
	endbr64
	movq	%rdi, %r10
	testq	%rdi, %rdi
	je	.L78
	cmpq	$1, %rdi
	je	.L78
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	-2(%rdi), %rax
	xorl	%r10d, %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	%rax, 8(%rsp)
	movq	%r10, 32(%rsp)
.L3:
	movq	8(%rsp), %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	je	.L4
	cmpq	$1, %rax
	je	.L5
	leaq	-1(%rdi), %rax
	xorl	%r8d, %r8d
	movq	%rax, 16(%rsp)
	movq	%r8, 40(%rsp)
.L6:
	movq	16(%rsp), %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	je	.L7
	cmpq	$1, %rax
	je	.L9
	leaq	-1(%rdi), %rax
	xorl	%ecx, %ecx
	movq	%rax, 24(%rsp)
	movq	%rcx, 48(%rsp)
.L10:
	movq	24(%rsp), %rdi
	movq	%rdi, %rax
	addq	$1, %rax
	je	.L11
	cmpq	$1, %rax
	je	.L13
	xorl	%ecx, %ecx
	leaq	-1(%rdi), %r8
	movq	%rcx, 56(%rsp)
	movq	%r8, %rcx
.L14:
	movq	%rcx, %rax
	addq	$1, %rax
	je	.L15
	cmpq	$1, %rax
	je	.L17
	xorl	%esi, %esi
	movq	%rcx, 64(%rsp)
	leaq	-1(%rcx), %r9
	movq	%rsi, (%rsp)
	movq	%r9, %r15
.L18:
	movq	%r15, %rax
	addq	$1, %rax
	je	.L19
	cmpq	$1, %rax
	je	.L21
	leaq	-1(%r15), %r12
	xorl	%ecx, %ecx
	movq	%r15, %rsi
.L22:
	movq	%r12, %rax
	addq	$1, %rax
	je	.L23
	cmpq	$1, %rax
	je	.L25
	xorl	%ebx, %ebx
	leaq	-1(%r12), %rbp
	movq	%r12, %rdx
	movq	%rbx, %r12
.L26:
	movq	%rbp, %rax
	addq	$1, %rax
	je	.L27
	cmpq	$1, %rax
	je	.L29
	movq	%rbp, %rax
	leaq	-1(%rbp), %rbx
	xorl	%r14d, %r14d
	movq	%rcx, %rbp
	movq	%rax, %rcx
.L30:
	movq	%rbx, %r13
	addq	$1, %r13
	je	.L31
	cmpq	$1, %r13
	je	.L33
	movq	%rbx, 72(%rsp)
	xorl	%r15d, %r15d
	movq	%rsi, %rbx
.L34:
	leaq	-1(%r13), %rdi
	movq	%rcx, 88(%rsp)
	movq	%rdx, 80(%rsp)
	call	fibRek
	movq	80(%rsp), %rdx
	movq	88(%rsp), %rcx
	addq	%rax, %r15
	subq	$2, %r13
	je	.L83
	cmpq	$1, %r13
	jne	.L34
	movq	%rbx, %rsi
	movq	72(%rsp), %rbx
	addq	$1, %r15
.L35:
	addq	%r15, %r14
	testq	%rbx, %rbx
	je	.L84
	cmpq	$1, %rbx
	jne	.L31
.L33:
	movq	%rcx, %rax
	addq	$1, %r14
	movq	%rbp, %rcx
	movq	%rax, %rbp
	addq	%r14, %r12
	testq	%rbp, %rbp
	je	.L85
.L38:
	cmpq	$1, %rbp
	jne	.L27
.L29:
	movq	%r12, %rbx
	movq	%rdx, %r12
	addq	$1, %rbx
.L28:
	addq	%rbx, %rcx
	testq	%r12, %r12
	jne	.L39
	movq	%rsi, %r15
	movq	%rcx, %r14
	addq	%r14, (%rsp)
	movq	(%rsp), %rsi
	testq	%r15, %r15
	jne	.L40
.L87:
	movq	64(%rsp), %rcx
	addq	%rsi, 56(%rsp)
	testq	%rcx, %rcx
	je	.L86
.L41:
	cmpq	$1, %rcx
	je	.L17
.L15:
	subq	$2, %rcx
	jmp	.L14
.L27:
	subq	$2, %rbp
	jmp	.L26
.L39:
	cmpq	$1, %r12
	jne	.L23
.L25:
	movq	%rcx, %r14
	movq	%rsi, %r15
	addq	$1, %r14
	addq	%r14, (%rsp)
	movq	(%rsp), %rsi
	testq	%r15, %r15
	je	.L87
.L40:
	cmpq	$1, %r15
	je	.L81
.L19:
	subq	$2, %r15
	jmp	.L18
.L23:
	subq	$2, %r12
	jmp	.L22
.L84:
	movq	%rcx, %rax
	movq	%rbp, %rcx
	addq	%r14, %r12
	movq	%rax, %rbp
	testq	%rbp, %rbp
	jne	.L38
.L85:
	movq	%r12, %rbx
	movq	%rdx, %r12
	jmp	.L28
	.p2align 4,,10
	.p2align 3
.L83:
	movq	%rbx, %rsi
	movq	72(%rsp), %rbx
	jmp	.L35
.L21:
	movq	(%rsp), %rsi
.L81:
	movq	64(%rsp), %rcx
	addq	$1, %rsi
	addq	%rsi, 56(%rsp)
	testq	%rcx, %rcx
	jne	.L41
.L86:
	movq	56(%rsp), %rcx
	addq	%rcx, 48(%rsp)
	cmpq	$0, 24(%rsp)
	jne	.L42
.L88:
	movq	48(%rsp), %rcx
	addq	%rcx, 40(%rsp)
	cmpq	$0, 16(%rsp)
	jne	.L43
.L89:
	movq	40(%rsp), %r8
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L31:
	subq	$2, %rbx
	jmp	.L30
.L17:
	movq	56(%rsp), %rcx
	addq	$1, %rcx
	addq	%rcx, 48(%rsp)
	cmpq	$0, 24(%rsp)
	je	.L88
.L42:
	cmpq	$1, 24(%rsp)
	je	.L13
.L11:
	subq	$2, 24(%rsp)
	jmp	.L10
.L13:
	movq	48(%rsp), %rcx
	addq	$1, %rcx
	addq	%rcx, 40(%rsp)
	cmpq	$0, 16(%rsp)
	je	.L89
.L43:
	cmpq	$1, 16(%rsp)
	je	.L9
.L7:
	subq	$2, 16(%rsp)
	jmp	.L6
.L9:
	movq	40(%rsp), %r8
	addq	$1, %r8
.L8:
	addq	%r8, 32(%rsp)
	cmpq	$0, 8(%rsp)
	je	.L90
	cmpq	$1, 8(%rsp)
	jne	.L4
.L5:
	movq	32(%rsp), %r10
	addq	$1, %r10
.L55:
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r10, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L4:
	.cfi_restore_state
	subq	$2, 8(%rsp)
	jmp	.L3
.L78:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	movq	%r10, %rax
	ret
.L90:
	.cfi_def_cfa_offset 160
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movq	32(%rsp), %r10
	jmp	.L55
	.cfi_endproc
.LFE40:
	.size	fibRek, .-fibRek
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Wrong Number of Arguments! Only (1) is allowed."
	.align 8
.LC1:
	.string	"Fibonacci Index: %li, Fibonacci Value: %li\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%rax
	.cfi_def_cfa_offset 16
	popq	%rax
	.cfi_def_cfa_offset 8
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L92
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	movl	$1, %edi
	call	exit@PLT
.L92:
	movq	%rsp, %r8
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movq	%r8, %rsi
	call	strtol@PLT
	movq	%rax, %rdi
	movq	%rax, %r11
	call	fibRek
	movl	$1, %edi
	movq	%r11, %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rcx
	xorl	%eax, %eax
	call	__printf_chk@PLT
	xorl	%edi, %edi
	call	exit@PLT
	.cfi_endproc
.LFE39:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
