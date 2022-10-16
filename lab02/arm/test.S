	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.comm	_sysy_start,8,4
	.comm	_sysy_end,8,4
	.comm	_sysy_l1,4096,4
	.comm	_sysy_l2,4096,4
	.comm	_sysy_h,4096,4
	.comm	_sysy_m,4096,4
	.comm	_sysy_s,4096,4
	.comm	_sysy_us,4096,4
	.comm	_sysy_idx,4,4
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
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ComputePi, %function
ComputePi:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
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
	.size	ComputePi, .-ComputePi
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%f\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	movs	r0, #50
	bl	ComputePi(PLT)
	vstr.32	s0, [r7, #8]
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L13
.LPIC1:
	add	r1, pc
	mov	r0, r1
	bl	putf(PLT)
	movs	r0, #10
	bl	putch(PLT)
	movs	r3, #10
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L10
.L11:
	ldr	r3, .L13+4
.LPIC2:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L13+8
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	putf(PLT)
	movs	r0, #10
	bl	putch(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L10:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	blt	.L11
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	.LC0-(.LPIC1+4)
	.word	tempresult-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
