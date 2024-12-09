	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"c_base.cpp"
	.globl	_Z11func_assigncsifd    @ -- Begin function _Z11func_assigncsifd
	.p2align	3
	.type	_Z11func_assigncsifd,%function
	.code	32                      @ @_Z11func_assigncsifd
_Z11func_assigncsifd:
	.fnstart
@ %bb.0:
	.pad	#16
	sub	sp, sp, #16
	vmov	s0, r3
	vldr	d16, [sp, #16]
	vldr	d17, .LCPI0_0
	strb	r0, [sp, #15]
	strh	r1, [sp, #12]
	str	r2, [sp, #8]
	vstr	s0, [sp, #4]
	movw	r0, #16
	strb	r0, [sp, #15]
	movw	r0, #48
	strh	r0, [sp, #12]
	movw	r0, #80
	str	r0, [sp, #8]
	vmov.f32	s0, #9.000000e+00
	vstr	s0, [sp, #4]
	vstr	d17, [sp, #16]
	ldr	r0, [sp, #8]
	add	sp, sp, #16
	bx	lr
	.p2align	3
@ %bb.1:
.LCPI0_0:
	.long	0                       @ double 110
	.long	1079738368
.Lfunc_end0:
	.size	_Z11func_assigncsifd, .Lfunc_end0-_Z11func_assigncsifd
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	_Z14func_calculatev     @ -- Begin function _Z14func_calculatev
	.p2align	2
	.type	_Z14func_calculatev,%function
	.code	32                      @ @_Z14func_calculatev
_Z14func_calculatev:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	movw	r0, #10
	str	r0, [r11, #-4]
	movw	r0, #7
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	mul	r0, r0, r1
	str	r0, [sp, #4]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	bl	__aeabi_idiv
	str	r0, [sp]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	_Z14func_calculatev, .Lfunc_end1-_Z14func_calculatev
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	_Z15func_ret_structv    @ -- Begin function _Z15func_ret_structv
	.p2align	2
	.type	_Z15func_ret_structv,%function
	.code	32                      @ @_Z15func_ret_structv
_Z15func_ret_structv:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	ldr	r1, .LCPI2_0
.LPC2_0:
	add	r1, pc, r1
	mov	r2, r0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r2
	movw	r2, #0
	and	r2, r2, #255
	str	r1, [sp]                @ 4-byte Spill
	mov	r1, r2
	movw	r2, #16
	bl	memset
	movw	r0, #1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	str	r0, [r1]
	movw	r0, #2
	str	r0, [r1, #4]
	movw	r0, #3
	str	r0, [r1, #8]
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [r1, #12]
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI2_0:
	.long	.L.str-(.LPC2_0+8)
.Lfunc_end2:
	.size	_Z15func_ret_structv, .Lfunc_end2-_Z15func_ret_structv
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	main                    @ -- Begin function main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#40
	sub	sp, sp, #40
	vldr	d16, .LCPI3_0
	movw	r2, #0
	str	r2, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	movw	r0, #17
	and	r0, r0, #255
	movw	r1, #33
	sxth	r1, r1
	movw	r2, #49
	vmov.f32	s0, #1.000000e+01
	vmov	r3, s0
	vstr	d16, [sp]
	bl	_Z11func_assigncsifd
	str	r0, [sp, #8]            @ 4-byte Spill
	bl	_Z14func_calculatev
	add	r0, sp, #12
	bl	_Z15func_ret_structv
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ %bb.1:
.LCPI3_0:
	.long	0                       @ double 100
	.long	1079574528
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"123"
	.size	.L.str, 4


	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
