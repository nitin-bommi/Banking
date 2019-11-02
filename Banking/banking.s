	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_clrscr                 ## -- Begin function clrscr
	.p2align	4, 0x90
_clrscr:                                ## @clrscr
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rdi
	callq	_system
	movl	%eax, -4(%rbp)          ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_newScreen              ## -- Begin function newScreen
	.p2align	4, 0x90
_newScreen:                             ## @newScreen
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	callq	_clrscr
	movl	$132, -52(%rbp)
	movq	L___const.newScreen.str(%rip), %rax
	movq	%rax, -48(%rbp)
	movq	L___const.newScreen.str+8(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	L___const.newScreen.str+16(%rip), %rax
	movq	%rax, -32(%rbp)
	movb	L___const.newScreen.str+24(%rip), %cl
	movb	%cl, -24(%rbp)
	movl	$24, -56(%rbp)
	movl	-56(%rbp), %edx
	cmpl	-52(%rbp), %edx
	jl	LBB1_2
## %bb.1:
	xorl	%eax, %eax
	movl	%eax, -68(%rbp)         ## 4-byte Spill
	jmp	LBB1_3
LBB1_2:
	movl	-52(%rbp), %eax
	subl	-56(%rbp), %eax
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movl	%eax, -68(%rbp)         ## 4-byte Spill
LBB1_3:
	movl	-68(%rbp), %eax         ## 4-byte Reload
	leaq	-48(%rbp), %r8
	movl	%eax, -60(%rbp)
	movl	-60(%rbp), %esi
	movl	-60(%rbp), %edx
	leaq	L_.str.1(%rip), %rdi
	leaq	L_.str.2(%rip), %rcx
	movb	$0, %al
	callq	_printf
	movl	$0, -64(%rbp)
	movl	%eax, -72(%rbp)         ## 4-byte Spill
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$7, -64(%rbp)
	jge	LBB1_7
## %bb.5:                               ##   in Loop: Header=BB1_4 Depth=1
	leaq	L_.str.3(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -76(%rbp)         ## 4-byte Spill
## %bb.6:                               ##   in Loop: Header=BB1_4 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB1_4
LBB1_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB1_9
## %bb.8:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB1_9:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_quit                   ## -- Begin function quit
	.p2align	4, 0x90
_quit:                                  ## @quit
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_newScreen
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-5(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-5(%rbp), %edi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	callq	_tolower
	cmpl	$121, %eax
	jne	LBB2_2
## %bb.1:
	leaq	L_.str.6(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	jmp	LBB2_3
LBB2_2:
	callq	_welcome
LBB2_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_balance                ## -- Begin function balance
	.p2align	4, 0x90
_balance:                               ## @balance
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_newScreen
	movq	_user@GOTPCREL(%rip), %rax
	movq	_j@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %esi
	leaq	L_.str.7(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.8(%rip), %rdi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-5(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-5(%rbp), %edi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	callq	_tolower
	cmpl	$121, %eax
	jne	LBB3_2
## %bb.1:
	callq	_account
LBB3_2:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_transfer               ## -- Begin function transfer
	.p2align	4, 0x90
_transfer:                              ## @transfer
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	callq	_newScreen
	leaq	L_.str.9(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-18(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.10(%rip), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-24(%rbp), %rsi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	$0, -32(%rbp)
	movl	%eax, -48(%rbp)         ## 4-byte Spill
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$5, -32(%rbp)
	jge	LBB4_8
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	_user@GOTPCREL(%rip), %rax
	leaq	-18(%rbp), %rdi
	movslq	-32(%rbp), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB4_6
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	leaq	L_.str.12(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-28(%rbp), %rsi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movq	_user@GOTPCREL(%rip), %rsi
	movq	_j@GOTPCREL(%rip), %rdi
	movl	-28(%rbp), %ecx
	movslq	(%rdi), %rdi
	imulq	$28, %rdi, %rdi
	addq	%rdi, %rsi
	cmpl	20(%rsi), %ecx
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	jne	LBB4_5
## %bb.4:
	movq	_user@GOTPCREL(%rip), %rax
	movq	_j@GOTPCREL(%rip), %rcx
	movl	-24(%rbp), %edx
	movslq	-32(%rbp), %rsi
	imulq	$28, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	addl	24(%rdi), %edx
	movl	%edx, 24(%rdi)
	movl	-24(%rbp), %edx
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	movl	24(%rax), %r8d
	subl	%edx, %r8d
	movl	%r8d, 24(%rax)
	leaq	L_.str.13(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	jmp	LBB4_8
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_6
LBB4_6:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_7
LBB4_7:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB4_1
LBB4_8:
	callq	_account
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB4_10
## %bb.9:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB4_10:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_account                ## -- Begin function account
	.p2align	4, 0x90
_account:                               ## @account
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	callq	_newScreen
	movq	_j@GOTPCREL(%rip), %rax
	movslq	(%rax), %rax
	leaq	(%rax,%rax,8), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	addq	%rax, %rcx
	movq	_user@GOTPCREL(%rip), %rax
	addq	%rcx, %rax
	leaq	L_.str.14(%rip), %rdi
	xorl	%edx, %edx
	movb	%dl, %sil
	movb	%sil, -5(%rbp)          ## 1-byte Spill
	movq	%rax, %rsi
	movb	-5(%rbp), %al           ## 1-byte Reload
	callq	_printf
	leaq	L_.str.15(%rip), %rdi
	movb	-5(%rbp), %r8b          ## 1-byte Reload
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	%r8b, %al
	callq	_printf
	leaq	L_.str.16(%rip), %rdi
	movb	-5(%rbp), %r8b          ## 1-byte Reload
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	%r8b, %al
	callq	_printf
	leaq	L_.str.17(%rip), %rdi
	movb	-5(%rbp), %r8b          ## 1-byte Reload
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	%r8b, %al
	callq	_printf
	leaq	L_.str.18(%rip), %rdi
	movb	-5(%rbp), %r8b          ## 1-byte Reload
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	%r8b, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	-5(%rbp), %r8b          ## 1-byte Reload
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	%r8b, %al
	callq	_scanf
	movl	-4(%rbp), %edx
	movl	%edx, %r9d
	subl	$1, %r9d
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	movl	%edx, -36(%rbp)         ## 4-byte Spill
	movl	%r9d, -40(%rbp)         ## 4-byte Spill
	je	LBB5_1
	jmp	LBB5_6
LBB5_6:
	movl	-36(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	je	LBB5_2
	jmp	LBB5_7
LBB5_7:
	movl	-36(%rbp), %eax         ## 4-byte Reload
	subl	$3, %eax
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	je	LBB5_3
	jmp	LBB5_4
LBB5_1:
	callq	_balance
	jmp	LBB5_5
LBB5_2:
	callq	_transfer
	jmp	LBB5_5
LBB5_3:
	callq	_welcome
LBB5_4:
	callq	_account
LBB5_5:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_check                  ## -- Begin function check
	.p2align	4, 0x90
_check:                                 ## @check
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$5, -20(%rbp)
	jge	LBB6_6
## %bb.2:                               ##   in Loop: Header=BB6_1 Depth=1
	movq	_user@GOTPCREL(%rip), %rax
	movq	_z@GOTPCREL(%rip), %rcx
	movslq	-20(%rbp), %rdx
	imulq	$28, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_1 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
LBB6_4:                                 ##   in Loop: Header=BB6_1 Depth=1
	jmp	LBB6_5
LBB6_5:                                 ##   in Loop: Header=BB6_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB6_1
LBB6_6:
	cmpl	$1, -16(%rbp)
	jle	LBB6_11
## %bb.7:
	leaq	L_.str.19(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.20(%rip), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-5(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-5(%rbp), %edi
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_tolower
	cmpl	$121, %eax
	jne	LBB6_9
## %bb.8:
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	_user@GOTPCREL(%rip), %rdi
	movq	_z@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rdi
	leaq	L_.str.5(%rip), %rcx
	movq	%rdi, -40(%rbp)         ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-40(%rbp), %rsi         ## 8-byte Reload
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	callq	_check
	jmp	LBB6_10
LBB6_9:
	callq	_quit
LBB6_10:
	jmp	LBB6_18
LBB6_11:
	movq	_z@GOTPCREL(%rip), %rax
	movq	_user@GOTPCREL(%rip), %rcx
	movslq	(%rax), %rdx
	imulq	$28, %rdx, %rdx
	addq	%rdx, %rcx
	movl	$100, 24(%rcx)
	movl	(%rax), %esi
	addl	$1, %esi
	movl	%esi, (%rax)
	leaq	L_.str.22(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.23(%rip), %rdi
	movl	%eax, -52(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-10(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-10(%rbp), %edi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	callq	_tolower
	cmpl	$121, %eax
	jne	LBB6_13
## %bb.12:
	callq	_login
	jmp	LBB6_17
LBB6_13:
	movsbl	-10(%rbp), %edi
	callq	_tolower
	cmpl	$110, %eax
	jne	LBB6_15
## %bb.14:
	callq	_quit
	jmp	LBB6_16
LBB6_15:
	callq	_welcome
LBB6_16:
	jmp	LBB6_17
LBB6_17:
	jmp	LBB6_18
LBB6_18:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_login                  ## -- Begin function login
	.p2align	4, 0x90
_login:                                 ## @login
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	callq	_newScreen
	leaq	L_.str.24(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-18(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -40(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.25(%rip), %rdi
	movl	%eax, -44(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-28(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -48(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movq	_j@GOTPCREL(%rip), %rsi
	movl	$0, (%rsi)
	movl	%eax, -52(%rbp)         ## 4-byte Spill
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	_j@GOTPCREL(%rip), %rax
	cmpl	$5, (%rax)
	jge	LBB7_7
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	_user@GOTPCREL(%rip), %rax
	movq	_j@GOTPCREL(%rip), %rcx
	leaq	-18(%rbp), %rdi
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB7_5
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	_user@GOTPCREL(%rip), %rax
	movq	_j@GOTPCREL(%rip), %rcx
	leaq	-28(%rbp), %rdi
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rax
	addq	$10, %rax
	movq	%rax, %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB7_5
## %bb.4:
	callq	_account
	jmp	LBB7_7
LBB7_5:                                 ##   in Loop: Header=BB7_1 Depth=1
	jmp	LBB7_6
LBB7_6:                                 ##   in Loop: Header=BB7_1 Depth=1
	movq	_j@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB7_1
LBB7_7:
	leaq	L_.str.26(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	L_.str.27(%rip), %rdi
	movl	%eax, -56(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	leaq	-33(%rbp), %rsi
	leaq	L_.str.5(%rip), %rdi
	movl	%eax, -60(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movsbl	-33(%rbp), %edi
	movl	%eax, -64(%rbp)         ## 4-byte Spill
	callq	_tolower
	cmpl	$121, %eax
	jne	LBB7_9
## %bb.8:
	callq	_login
	jmp	LBB7_10
LBB7_9:
	callq	_quit
LBB7_10:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB7_12
## %bb.11:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB7_12:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_reg                    ## -- Begin function reg
	.p2align	4, 0x90
_reg:                                   ## @reg
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	callq	_newScreen
	leaq	L_.str.21(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movq	_user@GOTPCREL(%rip), %rdi
	movq	_z@GOTPCREL(%rip), %rcx
	movslq	(%rcx), %rcx
	imulq	$28, %rcx, %rcx
	addq	%rcx, %rdi
	leaq	L_.str.5(%rip), %rcx
	movq	%rdi, -8(%rbp)          ## 8-byte Spill
	movq	%rcx, %rdi
	movq	-8(%rbp), %rsi          ## 8-byte Reload
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.28(%rip), %rdi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	_user@GOTPCREL(%rip), %rcx
	movq	_z@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	imulq	$28, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$10, %rcx
	leaq	L_.str.5(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	leaq	L_.str.29(%rip), %rdi
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_printf
	movq	_user@GOTPCREL(%rip), %rcx
	movq	_z@GOTPCREL(%rip), %rsi
	movslq	(%rsi), %rsi
	imulq	$28, %rsi, %rsi
	addq	%rsi, %rcx
	addq	$20, %rcx
	leaq	L_.str.11(%rip), %rdi
	movq	%rcx, %rsi
	movl	%eax, -28(%rbp)         ## 4-byte Spill
	movb	$0, %al
	callq	_scanf
	movl	%eax, -32(%rbp)         ## 4-byte Spill
	callq	_check
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_welcome                ## -- Begin function welcome
	.p2align	4, 0x90
_welcome:                               ## @welcome
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	callq	_newScreen
	leaq	L_.str.30(%rip), %rdi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, -5(%rbp)           ## 1-byte Spill
	callq	_printf
	leaq	L_.str.31(%rip), %rdi
	movb	-5(%rbp), %cl           ## 1-byte Reload
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	movb	%cl, %al
	callq	_printf
	leaq	L_.str.32(%rip), %rdi
	movb	-5(%rbp), %cl           ## 1-byte Reload
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movb	%cl, %al
	callq	_printf
	leaq	L_.str.11(%rip), %rdi
	leaq	-4(%rbp), %rsi
	movb	-5(%rbp), %cl           ## 1-byte Reload
	movl	%eax, -20(%rbp)         ## 4-byte Spill
	movb	%cl, %al
	callq	_scanf
	movl	-4(%rbp), %edx
	movl	%edx, %r8d
	subl	$1, %r8d
	movl	%eax, -24(%rbp)         ## 4-byte Spill
	movl	%edx, -28(%rbp)         ## 4-byte Spill
	movl	%r8d, -32(%rbp)         ## 4-byte Spill
	je	LBB9_1
	jmp	LBB9_5
LBB9_5:
	movl	-28(%rbp), %eax         ## 4-byte Reload
	subl	$2, %eax
	movl	%eax, -36(%rbp)         ## 4-byte Spill
	je	LBB9_2
	jmp	LBB9_3
LBB9_1:
	callq	_login
	jmp	LBB9_4
LBB9_2:
	callq	_reg
	jmp	LBB9_4
LBB9_3:
	callq	_welcome
LBB9_4:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	callq	_welcome
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"@cls||clear"

	.p2align	4               ## @__const.newScreen.str
L___const.newScreen.str:
	.asciz	"\033[31;1;51;4mBANKING\033[0m\n"

L_.str.1:                               ## @.str.1
	.asciz	"%*.*s%s\n"

L_.str.2:                               ## @.str.2
	.asciz	" "

L_.str.3:                               ## @.str.3
	.asciz	"\n"

L_.str.4:                               ## @.str.4
	.asciz	"\033[35mARE YOU SURE YOU WANT TO EXIT - \033[0m\n"

L_.str.5:                               ## @.str.5
	.asciz	"%s"

L_.str.6:                               ## @.str.6
	.asciz	"\n\n\n\n\033[34mTHANK YOU\033[0m\n\n"

L_.str.7:                               ## @.str.7
	.asciz	"\033[34mCURRENT BALANCE - $ %d\033[0m\n\n\n"

	.comm	_user,140,4             ## @user
	.comm	_j,4,2                  ## @j
L_.str.8:                               ## @.str.8
	.asciz	"\033[35mGO BACK - \033[0m"

L_.str.9:                               ## @.str.9
	.asciz	"\033[33mENTER THE USERNAME OF THE RECIPENT - \033[0m"

L_.str.10:                              ## @.str.10
	.asciz	"\n\033[33mENTER THE AMOUNT TO BE TRANSFERED - \033[0m"

L_.str.11:                              ## @.str.11
	.asciz	"%d"

L_.str.12:                              ## @.str.12
	.asciz	"\n\033[33mENTER THE PIN TO PERFORM TRANSACTION - \033[0m"

L_.str.13:                              ## @.str.13
	.asciz	"\n\033[34mTRANSACTION SUCCESSFUL\033[0m"

L_.str.14:                              ## @.str.14
	.asciz	"\033[32mWELCOME %s!\033[0m\n\n\n\n"

L_.str.15:                              ## @.str.15
	.asciz	"\033[34m1 -> BALANCE INQUIRY\033[0m\n\n"

L_.str.16:                              ## @.str.16
	.asciz	"\033[34m2 -> TRANSFER\033[0m\n\n\n\n"

L_.str.17:                              ## @.str.17
	.asciz	"\033[34m3 -> LOG OUT\033[0m\n\n\n\n"

L_.str.18:                              ## @.str.18
	.asciz	"\033[33mENTER YOUR CHOICE - \033[0m"

	.comm	_z,4,2                  ## @z
L_.str.19:                              ## @.str.19
	.asciz	"\033[31mTHIS USERNAME ALREADY EXISTS.\033[0m\n\n"

L_.str.20:                              ## @.str.20
	.asciz	"\033[35mTRY AGAIN?\033[0m"

L_.str.21:                              ## @.str.21
	.asciz	"\033[33mENTER NEW USER NAME - \033[0m"

L_.str.22:                              ## @.str.22
	.asciz	"\n\n\033[34mREGISTERED SUCCESSFULLY! YOU CAN NOW LOG IN\033[0m\n\n\n"

L_.str.23:                              ## @.str.23
	.asciz	"\033[35mDO YOU WANT TO LOGIN (Press any other key to go to the main screen) - \033[0m"

L_.str.24:                              ## @.str.24
	.asciz	"\033[31mENTER USERNAME - \033[0m"

L_.str.25:                              ## @.str.25
	.asciz	"\033[31mENTER PASSWORD - \033[0m"

L_.str.26:                              ## @.str.26
	.asciz	"\n\n\n\033[31mINCORRECT CREDENTIALS!\033[0m"

L_.str.27:                              ## @.str.27
	.asciz	"\033[33mTRY AGAIN?\033[0m"

L_.str.28:                              ## @.str.28
	.asciz	"\033[33mENTER NEW PASSWORD - \033[0m"

L_.str.29:                              ## @.str.29
	.asciz	"\033[33mENTER NEW 4-DIGIT PIN - \033[0m"

L_.str.30:                              ## @.str.30
	.asciz	"\033[32mWELCOME TO BANKING!\033[0m\n"

L_.str.31:                              ## @.str.31
	.asciz	"\n\n\n\033[34m1 -> LOG IN\n\n2 -> REGISTER\033[0m\n\n\n\n"

L_.str.32:                              ## @.str.32
	.asciz	"\033[35mENTER YOUR OPTION :- \033[0m"


.subsections_via_symbols
