	.file	"kr1.f"
	.text
	.section	.rodata
.LC0:
	.string	"kr1.f"
.LC1:
	.ascii	"Kronecker Product of A and B:"
	.text
	.type	MAIN__, @function
MAIN__:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$672, %rsp
	movl	$1, -4(%rbp)
.L9:
	cmpl	$2, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L15
	movl	$1, -8(%rbp)
.L8:
	cmpl	$2, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L16
	movl	$1, -12(%rbp)
.L7:
	cmpl	$2, -12(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L17
	movl	$1, -16(%rbp)
.L6:
	cmpl	$2, -16(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L18
	movl	-8(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$3, %rax
	leaq	0(,%rax,8), %rdx
	leaq	a.2(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-16(%rbp), %eax
	cltq
	leaq	(%rax,%rax), %rdx
	movl	-12(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$3, %rax
	leaq	0(,%rax,8), %rdx
	leaq	b.1(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-8(%rbp), %eax
	subl	$1, %eax
	leal	(%rax,%rax), %edx
	movl	-16(%rbp), %eax
	addl	%edx, %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	-4(%rbp), %eax
	subl	$1, %eax
	leal	(%rax,%rax), %ecx
	movl	-12(%rbp), %eax
	addl	%ecx, %eax
	cltq
	addq	%rdx, %rax
	subq	$5, %rax
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -144(%rbp,%rax,8)
	addl	$1, -16(%rbp)
	jmp	.L6
.L18:
	nop
	addl	$1, -12(%rbp)
	jmp	.L7
.L17:
	nop
	addl	$1, -8(%rbp)
	jmp	.L8
.L16:
	nop
	addl	$1, -4(%rbp)
	jmp	.L9
.L15:
	nop
	leaq	.LC0(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$22, -656(%rbp)
	movl	$128, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	leaq	-672(%rbp), %rax
	movl	$29, %edx
	leaq	.LC1(%rip), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_character_write@PLT
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	movl	$1, -4(%rbp)
.L14:
	cmpl	$4, -4(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L19
	leaq	.LC0(%rip), %rax
	movq	%rax, -664(%rbp)
	movl	$24, -656(%rbp)
	movl	$128, -672(%rbp)
	movl	$6, -668(%rbp)
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write@PLT
	movl	$1, -8(%rbp)
.L13:
	movl	-672(%rbp), %eax
	andl	$3, %eax
	andl	$1, %eax
	testb	%al, %al
	jne	.L20
	cmpl	$4, -8(%rbp)
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	jne	.L21
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movl	-4(%rbp), %eax
	cltq
	addq	%rdx, %rax
	subq	$5, %rax
	leaq	-144(%rbp), %rdx
	salq	$3, %rax
	leaq	(%rdx,%rax), %rcx
	leaq	-672(%rbp), %rax
	movl	$8, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_gfortran_transfer_real_write@PLT
	addl	$1, -8(%rbp)
	jmp	.L13
.L20:
	nop
	jmp	.L12
.L21:
	nop
.L12:
	leaq	-672(%rbp), %rax
	movq	%rax, %rdi
	call	_gfortran_st_write_done@PLT
	addl	$1, -4(%rbp)
	jmp	.L14
.L19:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	MAIN__, .-MAIN__
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movl	-4(%rbp), %eax
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_gfortran_set_args@PLT
	leaq	options.2.0(%rip), %rax
	movq	%rax, %rsi
	movl	$7, %edi
	call	_gfortran_set_options@PLT
	call	MAIN__
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.data
	.align 32
	.type	a.2, @object
	.size	a.2, 32
a.2:
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.align 32
	.type	b.1, @object
	.size	b.1, 32
b.1:
	.long	0
	.long	1075052544
	.long	0
	.long	1075314688
	.long	0
	.long	1075576832
	.long	0
	.long	1075838976
	.section	.rodata
	.align 16
	.type	options.2.0, @object
	.size	options.2.0, 28
options.2.0:
	.long	2116
	.long	4095
	.long	0
	.long	1
	.long	1
	.long	0
	.long	31
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
