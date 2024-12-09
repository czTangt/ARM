	.text
	.syntax unified                
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:
	.save	{r11, lr}
	push	{r11, lr}
	.setfp	r11, sp
	mov	r11, sp
	.pad	#8
	sub	sp, sp, #8
	ldr	r0, .LCPI0_0
.LPC0_0:
	add	r0, pc, r0
	ldr	r1, .LCPI0_1
.LPC0_1:
	add	r1, pc, r1
	movw	r2, #0
	str	r2, [sp, #4]
	bl	printf
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	2
@ %bb.1:
.LCPI0_0:
	.long	.L.str-(.LPC0_0+8)
.LCPI0_1:
	.long	.L.str.1-(.LPC0_1+8)
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend
                                        @ -- End function
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"hello %s\n"
	.size	.L.str, 10

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"armv7a"
	.size	.L.str.1, 7


	.section	".note.GNU-stack","",%progbits
