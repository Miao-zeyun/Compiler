	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.align	1
	.p2align 2,,3
	.global	ComputePi
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ComputePi, %function
ComputePi:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	ble	.L6
	push	{r4, r5, r6, r7}
	vmov.f32	s15, #1.0e+0
	ldr	r7, .L14+8
	movw	r6, #52429
	vldr.32	s0, .L14
	movt	r6, 52428
.LPIC0:
	add	r7, pc
	movs	r1, #3
	movs	r3, #0
	vldr.32	s12, .L14+4
	b	.L5
.L4:
	vcmpe.f32	s15, s12
	vmrs	APSR_nzcv, FPSCR
	blt	.L12
.L5:
	umull	r4, r5, r3, r6
	vadd.f32	s0, s0, s15
	vmov	s14, r1	@ int
	adds	r1, r1, #2
	lsrs	r4, r5, #2
	lsls	r2, r4, #2
	adds	r5, r7, r2
	add	r2, r2, r4
	cmp	r3, r2
	add	r3, r3, #1
	vcvt.f32.s32	s13, s14
	itt	eq
	vaddeq.f32	s14, s0, s0
	vstreq.32	s14, [r5]
	cmp	r0, r3
	vmov	s14, r3	@ int
	vcvt.f32.s32	s14, s14
	vmul.f32	s14, s14, s15
	vdiv.f32	s15, s14, s13
	bne	.L4
.L12:
	vadd.f32	s0, s0, s0
	pop	{r4, r5, r6, r7}
	bx	lr
.L6:
	vldr.32	s0, .L14
	bx	lr
.L15:
	.align	2
.L14:
	.word	0
	.word	841731191
	.word	.LANCHOR0-(.LPIC0+4)
	.size	ComputePi, .-ComputePi
	.section	.text.startup,"ax",%progbits
	.align	1
	.p2align 2,,3
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r0, #50
	bl	ComputePi(PLT)
	ldr	r5, .L20
	ldr	r4, .L20+4
.LPIC9:
	add	r5, pc
.LPIC10:
	add	r4, pc
	mov	r0, r5
	mov	r6, r5
	add	r5, r4, #40
	vcvt.f64.f32	d7, s0
	vmov	r2, r3, d7
	bl	putf(PLT)
	movs	r0, #10
	bl	putch(PLT)
.L17:
	vldmia.32	r4!, {s15}
	mov	r0, r6
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	bl	putf(PLT)
	movs	r0, #10
	bl	putch(PLT)
	cmp	r4, r5
	bne	.L17
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L21:
	.align	2
.L20:
	.word	.LC0-(.LPIC9+4)
	.word	.LANCHOR0-(.LPIC10+4)
	.size	main, .-main
	.global	tempresult
	.comm	_sysy_idx,4,4
	.comm	_sysy_us,4096,4
	.comm	_sysy_s,4096,4
	.comm	_sysy_m,4096,4
	.comm	_sysy_h,4096,4
	.comm	_sysy_l2,4096,4
	.comm	_sysy_l1,4096,4
	.comm	_sysy_end,8,4
	.comm	_sysy_start,8,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	tempresult, %object
	.size	tempresult, 40
tempresult:
	.space	40
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%f\000"
	.ident	"GCC: (Ubuntu/Linaro 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",%progbits
