	.file	"main.c"
	.text
	.globl	add
	.type	add, @function
add:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	add, .-add
	.section	.rodata
.LC0:
	.string	"compile project(test)"
.LC1:
	.string	"main.c"
.LC2:
	.string	"file:%s\n"
.LC3:
	.string	"Oct  8 2022"
.LC4:
	.string	"date:%s\n"
.LC5:
	.string	"12:12:27"
.LC6:
	.string	"time:%s\n"
.LC7:
	.string	"Please input x and y:"
.LC8:
	.string	"%d%d"
.LC9:
	.string	"x=%d, y=%d\n"
.LC10:
	.string	"MAX number=%d\n"
.LC11:
	.string	"add result=%d\n"
.LC12:
	.string	"fibonacci sequence:%d %d"
.LC13:
	.string	" %d"
.LC14:
	.string	"array:"
.LC15:
	.string	"%d "
	.text
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
	addq	$-128, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rsi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC5(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	-116(%rbp), %rdx
	leaq	-120(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %eax
	cmpl	%eax, %edx
	cmovge	%edx, %eax
	movl	%eax, %esi
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-116(%rbp), %edx
	movl	-120(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	add
	movl	%eax, %esi
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, -88(%rbp)
	movl	$0, -112(%rbp)
	movl	$1, -108(%rbp)
	movl	$1, -104(%rbp)
	movl	-108(%rbp), %edx
	movl	-112(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L5:
	movl	-108(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-112(%rbp), %eax
	addl	%eax, -108(%rbp)
	movl	-108(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC13(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-84(%rbp), %eax
	movl	%eax, -112(%rbp)
	addl	$1, -104(%rbp)
.L4:
	movl	-104(%rbp), %eax
	cmpl	-88(%rbp), %eax
	jl	.L5
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -100(%rbp)
	movl	$0, -96(%rbp)
	jmp	.L6
.L8:
	movl	-100(%rbp), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L7
	movl	-96(%rbp), %eax
	cltq
	movl	-100(%rbp), %edx
	movl	%edx, -80(%rbp,%rax,4)
	addl	$1, -96(%rbp)
.L7:
	addl	$1, -100(%rbp)
.L6:
	cmpl	$29, -100(%rbp)
	jle	.L8
	leaq	.LC14(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -92(%rbp)
	jmp	.L9
.L10:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC15(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -92(%rbp)
.L9:
	cmpl	$14, -92(%rbp)
	jle	.L10
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
