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
	.file	"c_class.cpp"
	.section	.text.startup,"ax",%progbits
	.p2align	2               @ -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,%function
	.code	32                      @ @__cxx_global_var_init
__cxx_global_var_init:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	ldr	r0, .LCPI0_3
.LPC0_3:
	add	r0, pc, r0
	bl	_ZN7CNumberC2Ev
	ldr	r1, .LCPI0_0
.LPC0_0:
	add	r1, pc, r1
	ldr	r2, .LCPI0_1
.LPC0_1:
	add	r2, pc, r2
	ldr	r3, .LCPI0_2
.LPC0_2:
	add	r3, pc, r3
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	__cxa_atexit
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	_ZN7CNumberD2Ev-(.LPC0_0+8)
.LCPI0_1:
	.long	g_cnumber-(.LPC0_1+8)
.LCPI0_2:
	.long	__dso_handle-(.LPC0_2+8)
.LCPI0_3:
	.long	g_cnumber-(.LPC0_3+8)
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumberC2Ev,"axG",%progbits,_ZN7CNumberC2Ev,comdat
	.weak	_ZN7CNumberC2Ev         @ -- Begin function _ZN7CNumberC2Ev
	.p2align	2
	.type	_ZN7CNumberC2Ev,%function
	.code	32                      @ @_ZN7CNumberC2Ev
_ZN7CNumberC2Ev:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	ldr	r1, .LCPI1_0
.LPC1_0:
	add	r1, pc, r1
	ldr	r2, .LCPI1_1
.LPC1_1:
	add	r2, pc, r2
	add	r2, r2, #8
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r2, [r0]
	movw	r2, #2
	str	r2, [r0, #8]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI1_0:
	.long	.L.str-(.LPC1_0+8)
.LCPI1_1:
	.long	_ZTV7CNumber-(.LPC1_1+8)
.Lfunc_end1:
	.size	_ZN7CNumberC2Ev, .Lfunc_end1-_ZN7CNumberC2Ev
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumberD2Ev,"axG",%progbits,_ZN7CNumberD2Ev,comdat
	.weak	_ZN7CNumberD2Ev         @ -- Begin function _ZN7CNumberD2Ev
	.p2align	2
	.type	_ZN7CNumberD2Ev,%function
	.code	32                      @ @_ZN7CNumberD2Ev
_ZN7CNumberD2Ev:
.Lfunc_begin0:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#16
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldr	r1, .LCPI2_0
.LPC2_0:
	add	r1, pc, r1
	add	r1, r1, #8
	str	r1, [r0]
.Ltmp0:
	ldr	r1, .LCPI2_1
.LPC2_1:
	add	r1, pc, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	bl	printf
.Ltmp1:
	b	.LBB2_1
.LBB2_1:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	sp, r11
	pop	{r11, pc}
.LBB2_2:
.Ltmp2:
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	__clang_call_terminate
	.p2align	2
@ %bb.3:
.LCPI2_0:
	.long	_ZTV7CNumber-(.LPC2_0+8)
.LCPI2_1:
	.long	.L.str.1-(.LPC2_1+8)
.Lfunc_end2:
	.size	_ZN7CNumberD2Ev, .Lfunc_end2-_ZN7CNumberD2Ev
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	0                       @ @TType Encoding = absptr
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       @ Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0   @ >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0          @   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   @     jumps to .Ltmp2
	.byte	1                       @   On action: 1
.Lcst_end0:
	.byte	1                       @ >> Action Record 1 <<
                                        @   Catch TypeInfo 1
	.byte	0                       @   No further actions
	.p2align	2
                                        @ >> Catch TypeInfos <<
	.long	0                       @ TypeInfo 1
.Lttbase0:
	.p2align	2
	.fnend
                                        @ -- End function
	.text
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
.Lfunc_begin1:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#56
	sub	sp, sp, #56
	mov	r2, #0
	str	r2, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	add	r0, sp, #28
	str	r0, [sp, #12]           @ 4-byte Spill
	bl	_ZN7CNumberC2Ev
	mov	r0, #1
	str	r0, [sp, #32]
	mov	r0, #2
	str	r0, [sp, #36]
.Ltmp3:
	mov	r1, #3
	ldr	r0, [sp, #12]           @ 4-byte Reload
	bl	_ZN7CNumber10setnumber1Ei
.Ltmp4:
	b	.LBB3_1
.LBB3_1:
.Ltmp5:
	add	r0, sp, #28
	bl	_ZN7CNumber10getnumber1Ev
.Ltmp6:
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB3_2
.LBB3_2:
.Ltmp7:
	ldr	r0, .LCPI3_0
.LPC3_0:
	add	r0, pc, r0
	bl	_ZN7CNumber10getnumber3Ev
.Ltmp8:
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB3_3
.LBB3_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	add	r2, r0, r1
	str	r2, [sp, #16]
	movw	r2, #0
	str	r2, [r11, #-4]
	add	r0, sp, #28
	bl	_ZN7CNumberD2Ev
	ldr	r1, [r11, #-4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
.LBB3_4:
.Ltmp9:
	str	r0, [sp, #24]
	str	r1, [sp, #20]
	add	r0, sp, #28
	bl	_ZN7CNumberD2Ev
@ %bb.5:
	ldr	r0, [sp, #24]
	bl	_Unwind_Resume
	.p2align	2
@ %bb.6:
.LCPI3_0:
	.long	g_cnumber-(.LPC3_0+8)
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.globl	__gxx_personality_v0
	.personality __gxx_personality_v0
	.handlerdata
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                     @ @LPStart Encoding = omit
	.byte	255                     @ @TType Encoding = omit
	.byte	1                       @ Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 @ >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1   @   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1   @ >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp3          @   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1   @     jumps to .Ltmp9
	.byte	0                       @   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1   @ >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp8     @   Call between .Ltmp8 and .Lfunc_end3
	.byte	0                       @     has no landing pad
	.byte	0                       @   On action: cleanup
.Lcst_end1:
	.p2align	2
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumber10setnumber1Ei,"axG",%progbits,_ZN7CNumber10setnumber1Ei,comdat
	.weak	_ZN7CNumber10setnumber1Ei @ -- Begin function _ZN7CNumber10setnumber1Ei
	.p2align	2
	.type	_ZN7CNumber10setnumber1Ei,%function
	.code	32                      @ @_ZN7CNumber10setnumber1Ei
_ZN7CNumber10setnumber1Ei:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	movw	r1, #1
	str	r1, [r0, #4]
	add	sp, sp, #8
	bx	lr
.Lfunc_end4:
	.size	_ZN7CNumber10setnumber1Ei, .Lfunc_end4-_ZN7CNumber10setnumber1Ei
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumber10getnumber1Ev,"axG",%progbits,_ZN7CNumber10getnumber1Ev,comdat
	.weak	_ZN7CNumber10getnumber1Ev @ -- Begin function _ZN7CNumber10getnumber1Ev
	.p2align	2
	.type	_ZN7CNumber10getnumber1Ev,%function
	.code	32                      @ @_ZN7CNumber10getnumber1Ev
_ZN7CNumber10getnumber1Ev:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0, #4]
	add	sp, sp, #4
	bx	lr
.Lfunc_end5:
	.size	_ZN7CNumber10getnumber1Ev, .Lfunc_end5-_ZN7CNumber10getnumber1Ev
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumber10getnumber3Ev,"axG",%progbits,_ZN7CNumber10getnumber3Ev,comdat
	.weak	_ZN7CNumber10getnumber3Ev @ -- Begin function _ZN7CNumber10getnumber3Ev
	.p2align	2
	.type	_ZN7CNumber10getnumber3Ev,%function
	.code	32                      @ @_ZN7CNumber10getnumber3Ev
_ZN7CNumber10getnumber3Ev:
	.fnstart
@ %bb.0:
	.pad	#4
	sub	sp, sp, #4
	str	r0, [sp]
	ldr	r0, [sp]
	ldr	r0, [r0, #12]
	add	sp, sp, #4
	bx	lr
.Lfunc_end6:
	.size	_ZN7CNumber10getnumber3Ev, .Lfunc_end6-_ZN7CNumber10getnumber3Ev
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text._ZN7CNumber10setnumber3Ei,"axG",%progbits,_ZN7CNumber10setnumber3Ei,comdat
	.weak	_ZN7CNumber10setnumber3Ei @ -- Begin function _ZN7CNumber10setnumber3Ei
	.p2align	2
	.type	_ZN7CNumber10setnumber3Ei,%function
	.code	32                      @ @_ZN7CNumber10setnumber3Ei
_ZN7CNumber10setnumber3Ei:
	.fnstart
@ %bb.0:
	.pad	#8
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	str	r1, [r0, #12]
	add	sp, sp, #8
	bx	lr
.Lfunc_end7:
	.size	_ZN7CNumber10setnumber3Ei, .Lfunc_end7-_ZN7CNumber10setnumber3Ei
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.__clang_call_terminate,"axG",%progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  @ -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	2
	.type	__clang_call_terminate,%function
	.code	32                      @ @__clang_call_terminate
__clang_call_terminate:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	bl	__cxa_begin_catch
	str	r0, [sp, #4]            @ 4-byte Spill
	bl	_ZSt9terminatev
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
	.cantunwind
	.fnend
                                        @ -- End function
	.section	.text.startup,"ax",%progbits
	.p2align	2               @ -- Begin function _GLOBAL__sub_I_c_class.cpp
	.type	_GLOBAL__sub_I_c_class.cpp,%function
	.code	32                      @ @_GLOBAL__sub_I_c_class.cpp
_GLOBAL__sub_I_c_class.cpp:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	bl	__cxx_global_var_init
	pop	{r11, pc}
.Lfunc_end9:
	.size	_GLOBAL__sub_I_c_class.cpp, .Lfunc_end9-_GLOBAL__sub_I_c_class.cpp
	.fnend
                                        @ -- End function
	.type	g_cnumber,%object       @ @g_cnumber
	.bss
	.globl	g_cnumber
	.p2align	2
g_cnumber:
	.zero	16
	.size	g_cnumber, 16

	.hidden	__dso_handle
	.type	_ZTV7CNumber,%object    @ @_ZTV7CNumber
	.section	.data.rel.ro._ZTV7CNumber,"aGw",%progbits,_ZTV7CNumber,comdat
	.weak	_ZTV7CNumber
	.p2align	2
_ZTV7CNumber:
	.long	0
	.long	_ZTI7CNumber
	.long	_ZN7CNumber10setnumber3Ei
	.long	_ZN7CNumber10getnumber3Ev
	.size	_ZTV7CNumber, 16

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"CNumber"
	.size	.L.str, 8

	.type	_ZTS7CNumber,%object    @ @_ZTS7CNumber
	.section	.rodata._ZTS7CNumber,"aG",%progbits,_ZTS7CNumber,comdat
	.weak	_ZTS7CNumber
_ZTS7CNumber:
	.asciz	"7CNumber"
	.size	_ZTS7CNumber, 9

	.type	_ZTI7CNumber,%object    @ @_ZTI7CNumber
	.section	.data.rel.ro._ZTI7CNumber,"aGw",%progbits,_ZTI7CNumber,comdat
	.weak	_ZTI7CNumber
	.p2align	2
_ZTI7CNumber:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS7CNumber
	.size	_ZTI7CNumber, 8

	.type	.L.str.1,%object        @ @.str.1
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.1:
	.asciz	"~CNumber"
	.size	.L.str.1, 9

	.section	.init_array,"aw",%init_array
	.p2align	2
	.long	_GLOBAL__sub_I_c_class.cpp(target1)

	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",%progbits
