	.text
	.file	"c_class.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	2               // -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  // @__cxx_global_var_init
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48             // =48
	stp	x29, x30, [sp, #32]     // 16-byte Folded Spill
	add	x29, sp, #32            // =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, g_cnumber
	add	x8, x8, :lo12:g_cnumber
	adrp	x0, _ZN7CNumberD2Ev
	add	x0, x0, :lo12:_ZN7CNumberD2Ev
	adrp	x2, __dso_handle
	add	x2, x2, :lo12:__dso_handle
	stur	x0, [x29, #-8]          // 8-byte Folded Spill
	mov	x0, x8
	str	x8, [sp, #16]           // 8-byte Folded Spill
	str	x2, [sp, #8]            // 8-byte Folded Spill
	bl	_ZN7CNumberC2Ev
	ldur	x0, [x29, #-8]          // 8-byte Folded Reload
	ldr	x1, [sp, #16]           // 8-byte Folded Reload
	ldr	x2, [sp, #8]            // 8-byte Folded Reload
	bl	__cxa_atexit
	ldp	x29, x30, [sp, #32]     // 16-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        // -- End function
	.section	.text._ZN7CNumberC2Ev,"axG",@progbits,_ZN7CNumberC2Ev,comdat
	.weak	_ZN7CNumberC2Ev         // -- Begin function _ZN7CNumberC2Ev
	.p2align	2
	.type	_ZN7CNumberC2Ev,@function
_ZN7CNumberC2Ev:                        // @_ZN7CNumberC2Ev
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _ZTV7CNumber
	add	x8, x8, :lo12:_ZTV7CNumber
	mov	x9, #16
	add	x8, x8, x9
	mov	w10, #2
	adrp	x9, .L.str
	add	x9, x9, :lo12:.L.str
	str	x0, [sp, #8]
	ldr	x11, [sp, #8]
	str	x8, [x11]
	str	w10, [x11, #12]
	mov	x0, x9
	bl	printf
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.Lfunc_end1:
	.size	_ZN7CNumberC2Ev, .Lfunc_end1-_ZN7CNumberC2Ev
	.cfi_endproc
                                        // -- End function
	.section	.text._ZN7CNumberD2Ev,"axG",@progbits,_ZN7CNumberD2Ev,comdat
	.weak	_ZN7CNumberD2Ev         // -- Begin function _ZN7CNumberD2Ev
	.p2align	2
	.type	_ZN7CNumberD2Ev,@function
_ZN7CNumberD2Ev:                        // @_ZN7CNumberD2Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception0
// %bb.0:
	sub	sp, sp, #32             // =32
	stp	x29, x30, [sp, #16]     // 16-byte Folded Spill
	add	x29, sp, #16            // =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _ZTV7CNumber
	add	x8, x8, :lo12:_ZTV7CNumber
	mov	x9, #16
	add	x8, x8, x9
	adrp	x9, .L.str.1
	add	x9, x9, :lo12:.L.str.1
	str	x0, [sp, #8]
	ldr	x10, [sp, #8]
	str	x8, [x10]
.Ltmp0:
	mov	x0, x9
	bl	printf
.Ltmp1:
	b	.LBB2_1
.LBB2_1:
	ldp	x29, x30, [sp, #16]     // 16-byte Folded Reload
	add	sp, sp, #32             // =32
	ret
.LBB2_2:
.Ltmp2:
	bl	__clang_call_terminate
.Lfunc_end2:
	.size	_ZN7CNumberD2Ev, .Lfunc_end2-_ZN7CNumberD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     // @LPStart Encoding = omit
	.byte	156                     // @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0   // >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0          //   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   //     jumps to .Ltmp2
	.byte	1                       //   On action: 1
.Lcst_end0:
	.byte	1                       // >> Action Record 1 <<
                                        //   Catch TypeInfo 1
	.byte	0                       //   No further actions
	.p2align	2
                                        // >> Catch TypeInfos <<
	.xword	0                       // TypeInfo 1
.Lttbase0:
	.p2align	2
                                        // -- End function
	.text
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 156, DW.ref.__gxx_personality_v0
	.cfi_lsda 28, .Lexception1
// %bb.0:
	sub	sp, sp, #112            // =112
	stp	x29, x30, [sp, #96]     // 16-byte Folded Spill
	add	x29, sp, #96            // =96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #1
	mov	w9, #2
	mov	w10, #3
	sub	x11, x29, #40           // =40
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	x0, x11
	str	w8, [sp, #36]           // 4-byte Folded Spill
	str	w9, [sp, #32]           // 4-byte Folded Spill
	str	w10, [sp, #28]          // 4-byte Folded Spill
	str	x11, [sp, #16]          // 8-byte Folded Spill
	bl	_ZN7CNumberC2Ev
	ldr	w8, [sp, #36]           // 4-byte Folded Reload
	stur	w8, [x29, #-32]
	ldr	w9, [sp, #32]           // 4-byte Folded Reload
	stur	w9, [x29, #-28]
.Ltmp3:
	ldr	x0, [sp, #16]           // 8-byte Folded Reload
	ldr	w1, [sp, #28]           // 4-byte Folded Reload
	bl	_ZN7CNumber10setnumber1Ei
.Ltmp4:
	b	.LBB3_1
.LBB3_1:
.Ltmp5:
	sub	x0, x29, #40            // =40
	bl	_ZN7CNumber10getnumber1Ev
.Ltmp6:
	str	w0, [sp, #12]           // 4-byte Folded Spill
	b	.LBB3_2
.LBB3_2:
.Ltmp7:
	adrp	x0, g_cnumber
	add	x0, x0, :lo12:g_cnumber
	bl	_ZN7CNumber10getnumber3Ev
.Ltmp8:
	str	w0, [sp, #8]            // 4-byte Folded Spill
	b	.LBB3_3
.LBB3_3:
	ldr	w8, [sp, #12]           // 4-byte Folded Reload
	ldr	w9, [sp, #8]            // 4-byte Folded Reload
	add	w10, w8, w9
	str	w10, [sp, #40]
	stur	wzr, [x29, #-4]
	sub	x0, x29, #40            // =40
	bl	_ZN7CNumberD2Ev
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #96]     // 16-byte Folded Reload
	add	sp, sp, #112            // =112
	ret
.LBB3_4:
.Ltmp9:
                                        // kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #48]
	str	w1, [sp, #44]
	sub	x0, x29, #40            // =40
	bl	_ZN7CNumberD2Ev
// %bb.5:
	ldr	x0, [sp, #48]
	bl	_Unwind_Resume
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                     // @LPStart Encoding = omit
	.byte	255                     // @TType Encoding = omit
	.byte	1                       // Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1 // >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1   //   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                       //     has no landing pad
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1   // >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp3          //   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin1   //     jumps to .Ltmp9
	.byte	0                       //   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1   // >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp8     //   Call between .Ltmp8 and .Lfunc_end3
	.byte	0                       //     has no landing pad
	.byte	0                       //   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        // -- End function
	.section	.text._ZN7CNumber10setnumber1Ei,"axG",@progbits,_ZN7CNumber10setnumber1Ei,comdat
	.weak	_ZN7CNumber10setnumber1Ei // -- Begin function _ZN7CNumber10setnumber1Ei
	.p2align	2
	.type	_ZN7CNumber10setnumber1Ei,@function
_ZN7CNumber10setnumber1Ei:              // @_ZN7CNumber10setnumber1Ei
// %bb.0:
	sub	sp, sp, #16             // =16
	mov	w8, #1
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x9, [sp, #8]
	str	w8, [x9, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end4:
	.size	_ZN7CNumber10setnumber1Ei, .Lfunc_end4-_ZN7CNumber10setnumber1Ei
                                        // -- End function
	.section	.text._ZN7CNumber10getnumber1Ev,"axG",@progbits,_ZN7CNumber10getnumber1Ev,comdat
	.weak	_ZN7CNumber10getnumber1Ev // -- Begin function _ZN7CNumber10getnumber1Ev
	.p2align	2
	.type	_ZN7CNumber10getnumber1Ev,@function
_ZN7CNumber10getnumber1Ev:              // @_ZN7CNumber10getnumber1Ev
// %bb.0:
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end5:
	.size	_ZN7CNumber10getnumber1Ev, .Lfunc_end5-_ZN7CNumber10getnumber1Ev
                                        // -- End function
	.section	.text._ZN7CNumber10getnumber3Ev,"axG",@progbits,_ZN7CNumber10getnumber3Ev,comdat
	.weak	_ZN7CNumber10getnumber3Ev // -- Begin function _ZN7CNumber10getnumber3Ev
	.p2align	2
	.type	_ZN7CNumber10getnumber3Ev,@function
_ZN7CNumber10getnumber3Ev:              // @_ZN7CNumber10getnumber3Ev
// %bb.0:
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #16]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end6:
	.size	_ZN7CNumber10getnumber3Ev, .Lfunc_end6-_ZN7CNumber10getnumber3Ev
                                        // -- End function
	.section	.text._ZN7CNumber10setnumber3Ei,"axG",@progbits,_ZN7CNumber10setnumber3Ei,comdat
	.weak	_ZN7CNumber10setnumber3Ei // -- Begin function _ZN7CNumber10setnumber3Ei
	.p2align	2
	.type	_ZN7CNumber10setnumber3Ei,@function
_ZN7CNumber10setnumber3Ei:              // @_ZN7CNumber10setnumber3Ei
// %bb.0:
	sub	sp, sp, #16             // =16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #4]
	str	w9, [x8, #16]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end7:
	.size	_ZN7CNumber10setnumber3Ei, .Lfunc_end7-_ZN7CNumber10setnumber3Ei
                                        // -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  // -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	2
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 // @__clang_call_terminate
// %bb.0:
	str	x30, [sp, #-16]!        // 8-byte Folded Spill
	bl	__cxa_begin_catch
	bl	_ZSt9terminatev
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
                                        // -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	2               // -- Begin function _GLOBAL__sub_I_c_class.cpp
	.type	_GLOBAL__sub_I_c_class.cpp,@function
_GLOBAL__sub_I_c_class.cpp:             // @_GLOBAL__sub_I_c_class.cpp
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!   // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__cxx_global_var_init
	ldp	x29, x30, [sp], #16     // 16-byte Folded Reload
	ret
.Lfunc_end9:
	.size	_GLOBAL__sub_I_c_class.cpp, .Lfunc_end9-_GLOBAL__sub_I_c_class.cpp
	.cfi_endproc
                                        // -- End function
	.type	g_cnumber,@object       // @g_cnumber
	.bss
	.globl	g_cnumber
	.p2align	3
g_cnumber:
	.zero	24
	.size	g_cnumber, 24

	.hidden	__dso_handle
	.type	_ZTV7CNumber,@object    // @_ZTV7CNumber
	.section	.data.rel.ro._ZTV7CNumber,"aGw",@progbits,_ZTV7CNumber,comdat
	.weak	_ZTV7CNumber
	.p2align	3
_ZTV7CNumber:
	.xword	0
	.xword	_ZTI7CNumber
	.xword	_ZN7CNumber10setnumber3Ei
	.xword	_ZN7CNumber10getnumber3Ev
	.size	_ZTV7CNumber, 32

	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"CNumber"
	.size	.L.str, 8

	.type	_ZTS7CNumber,@object    // @_ZTS7CNumber
	.section	.rodata._ZTS7CNumber,"aG",@progbits,_ZTS7CNumber,comdat
	.weak	_ZTS7CNumber
_ZTS7CNumber:
	.asciz	"7CNumber"
	.size	_ZTS7CNumber, 9

	.type	_ZTI7CNumber,@object    // @_ZTI7CNumber
	.section	.data.rel.ro._ZTI7CNumber,"aGw",@progbits,_ZTI7CNumber,comdat
	.weak	_ZTI7CNumber
	.p2align	3
_ZTI7CNumber:
	.xword	_ZTVN10__cxxabiv117__class_type_infoE+16
	.xword	_ZTS7CNumber
	.size	_ZTI7CNumber, 16

	.type	.L.str.1,@object        // @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"~CNumber"
	.size	.L.str.1, 9

	.section	.init_array,"aw",@init_array
	.p2align	3
	.xword	_GLOBAL__sub_I_c_class.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.xword	__gxx_personality_v0

	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",@progbits
