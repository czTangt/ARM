	.text
	.file	"c_base.cpp"
	.globl	_Z11func_assigncsifd    // -- Begin function _Z11func_assigncsifd
	.p2align	2
	.type	_Z11func_assigncsifd,@function
_Z11func_assigncsifd:                   // @_Z11func_assigncsifd
// %bb.0:
	sub	sp, sp, #32             // =32
	mov	w8, #16
	mov	w9, #48
	mov	w10, #80
	fmov	s2, #9.00000000
	mov	x11, #140737488355328
	movk	x11, #16475, lsl #48
	fmov	d3, x11
	strb	w0, [sp, #31]
	strh	w1, [sp, #28]
	str	w2, [sp, #24]
	str	s0, [sp, #20]
	str	d1, [sp, #8]
	strb	w8, [sp, #31]
	strh	w9, [sp, #28]
	str	w10, [sp, #24]
	str	s2, [sp, #20]
	str	d3, [sp, #8]
	ldr	w0, [sp, #24]
	add	sp, sp, #32             // =32
	ret
.Lfunc_end0:
	.size	_Z11func_assigncsifd, .Lfunc_end0-_Z11func_assigncsifd
                                        // -- End function
	.globl	_Z14func_calculatev     // -- Begin function _Z14func_calculatev
	.p2align	2
	.type	_Z14func_calculatev,@function
_Z14func_calculatev:                    // @_Z14func_calculatev
// %bb.0:
	sub	sp, sp, #16             // =16
	mov	w8, #10
	mov	w9, #7
	str	w8, [sp, #12]
	str	w9, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	mul	w8, w8, w9
	str	w8, [sp, #4]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	sdiv	w8, w8, w9
	str	w8, [sp]
	add	sp, sp, #16             // =16
	ret
.Lfunc_end1:
	.size	_Z14func_calculatev, .Lfunc_end1-_Z14func_calculatev
                                        // -- End function
	.globl	_Z15func_ret_structv    // -- Begin function _Z15func_ret_structv
	.p2align	2
	.type	_Z15func_ret_structv,@function
_Z15func_ret_structv:                   // @_Z15func_ret_structv
// %bb.0:
	sub	sp, sp, #48             // =48
	str	x30, [sp, #32]          // 8-byte Folded Spill
	mov	x2, #24
	mov	w9, #1
	mov	w10, #2
	mov	w11, #3
	adrp	x12, .L.str
	add	x12, x12, :lo12:.L.str
	mov	x0, x8
	mov	w1, #0
	str	x8, [sp, #24]           // 8-byte Folded Spill
	str	w9, [sp, #20]           // 4-byte Folded Spill
	str	w10, [sp, #16]          // 4-byte Folded Spill
	str	w11, [sp, #12]          // 4-byte Folded Spill
	str	x12, [sp]               // 8-byte Folded Spill
	bl	memset
	ldr	w9, [sp, #20]           // 4-byte Folded Reload
	ldr	x8, [sp, #24]           // 8-byte Folded Reload
	str	w9, [x8]
	ldr	w10, [sp, #16]          // 4-byte Folded Reload
	str	w10, [x8, #4]
	ldr	w11, [sp, #12]          // 4-byte Folded Reload
	str	w11, [x8, #8]
	ldr	x12, [sp]               // 8-byte Folded Reload
	str	x12, [x8, #16]
	ldr	x30, [sp, #32]          // 8-byte Folded Reload
	add	sp, sp, #48             // =48
	ret
.Lfunc_end2:
	.size	_Z15func_ret_structv, .Lfunc_end2-_Z15func_ret_structv
                                        // -- End function
	.globl	main                    // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
// %bb.0:
	sub	sp, sp, #80             // =80
	stp	x29, x30, [sp, #64]     // 16-byte Folded Spill
	add	x29, sp, #64            // =64
	mov	w8, #0
	mov	w2, #49
	fmov	s0, #10.00000000
	mov	x9, #4636737291354636288
	fmov	d1, x9
	add	x9, sp, #24             // =24
	stur	wzr, [x29, #-4]
	stur	w0, [x29, #-8]
	stur	x1, [x29, #-16]
	mov	w0, #17
	mov	w1, #33
	str	w8, [sp, #20]           // 4-byte Folded Spill
	str	x9, [sp, #8]            // 8-byte Folded Spill
	bl	_Z11func_assigncsifd
	bl	_Z14func_calculatev
	ldr	x8, [sp, #8]            // 8-byte Folded Reload
	bl	_Z15func_ret_structv
	ldr	w10, [sp, #20]          // 4-byte Folded Reload
	mov	w0, w10
	ldp	x29, x30, [sp, #64]     // 16-byte Folded Reload
	add	sp, sp, #80             // =80
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
                                        // -- End function
	.type	.L.str,@object          // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"123"
	.size	.L.str, 4


	.ident	"Android (7019983 based on r365631c3) clang version 9.0.9 (https://android.googlesource.com/toolchain/llvm-project a2a1e703c0edb03ba29944e529ccbf457742737b) (based on LLVM 9.0.9svn)"
	.section	".note.GNU-stack","",@progbits
