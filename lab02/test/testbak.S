	.file	"test.c"

	.text
	.global	tempresult

	.bss
	.align	2
	.type	tempresult, %object
	.size	tempresult, 40
tempresult:
	.space	40

	.text
	.align	1
	.global	ComputePi
	.syntax unified
	.type	ComputePi, %function
ComputePi:
	push	{r4, r7}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #0
	str	r3, [r7, #12]	@ float
	mov	r3, #1065353216
	str	r3, [r7, #16]	@ float
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L2
.L5:
	vldr.32	s14, [r7, #12]
	vldr.32	s15, [r7, #16]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [r7, #12]
	ldr	r1, [r7, #20]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r1, r3
	asrs	r2, r4, #1
	asrs	r3, r1, #31
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	subs	r2, r1, r3
	cmp	r2, #0
	bne	.L3
	ldr	r2, [r7, #20]
	movw	r3, #26215
	movt	r3, 26214
	smull	r3, r4, r2, r3
	asrs	r1, r4, #1
	asrs	r3, r2, #31
	subs	r3, r1, r3
	vldr.32	s15, [r7, #12]
	vadd.f32	s15, s15, s15
	ldr	r2, .L7+4
.LPIC0:
	add	r2, pc
	lsls	r3, r3, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
.L3:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #16]
	vmul.f32	s13, s14, s15
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	adds	r3, r3, #1
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #16]
.L2:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L4
	vldr.32	s15, [r7, #16]
	vldr.32	s14, .L7
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bge	.L5
.L4:
	vldr.32	s15, [r7, #12]
	vadd.f32	s15, s15, s15
	vmov.f32	s0, s15
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
.L8:
	.align	2
.L7:
	.word	841731191
	.word	tempresult-(.LPIC0+4)

	.section	.rodata
	.align	2
.FORMAT_FLOAT:
	.ascii	"%f\000"

	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.type	main, %function
main:
	push	{r7, lr}
	sub		sp, sp, #16
	mov		r7, sp
	
	@ float pi = ComputePi(50)
	mov		r0, #50
	bl		ComputePi(PLT)
	vstr	s0, [r7, #4] @pi

	@ putf("%f", pi)
	ldr		r1, .PARAMETER
.CALL_PUTF1:
	add		r1, r1, pc
	mov		r0, r1
	vldr	s1, [r7, #4]
	vcvt.f64.f32	d0, s1
	vmov	r2, r3, d0
	bl		putf(PLT)
	@ putch('\n');
	ldr		r0, .PARAMETER + 4
	bl		putch(PLT)

	@ const int n = 10
	mov		r4, #10
	str		r4, [r7, #8] @n
	@ int i = 0
	mov		r5, #0
	str		r5, [r7, #12] @i

	@ while循环体
.Loop:
	ldr		r5, [r7, #12]
	cmp		r5, r4
	bge		.out

	ldr		r3, .PARAMETER + 8
.GET_TEMPRESULT:
	add		r3, r3, pc
	mov		r2, r3
	mov		r3, r5
	lsl		r3, r3, #2
	add		r3, r3, r2
	vldr	s0, [r3]
	vcvt.f64.f32	d0, s0
	vmov	r2, r3, d0

	@ putf("%f", tempresult[i]);
	ldr		r1, .PARAMETER + 12
.CALL_PUTF2:
	add		r1, r1, pc
	mov		r0, r1
	bl		putf(PLT)
	@ putch('\n')
	ldr		r0, .PARAMETER + 4
	bl		putch(PLT)
	@ i++
	add		r5, r5, #1
	str		r5, [r7, #12]
	b		.Loop

.out:
	@ return 0
	mov		r0, #0
	add		r7, r7, #16
	mov		sp, r7
	pop		{r7, pc}

.PARAMETER:
	.word	.FORMAT_FLOAT - (.CALL_PUTF1 + 4)
	.word	10 @"\n"
	.word	tempresult - (.GET_TEMPRESULT + 4)
	.word	.FORMAT_FLOAT - (.CALL_PUTF2 + 4)
	
