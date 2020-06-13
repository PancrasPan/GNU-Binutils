	.text
	.file	".\\biquad_N_sections_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	movg2g	GR4,GR2
	movigl	GR7,7
}
{
	movigh	GR7,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR6, GR5, GR4
}
{
	store32	GR7, GR6, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 80
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#2:
{
	movg2g	GR4,GR2
}
$BB0_3:                                 # %for.body3
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR5, GR3, GR4
}
{
	store32	GR2, GR5, 0
	addi	GR4, GR4, 4
}
{
	neqi	 GR4, 32
}
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %for.end7
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	ret	GR31
}
{
	nop
}
{
	nop
}
$tmp0:
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigl	GR6,7
}
{
	movigh	GR6,0
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR3,%hi(main.coefficients)
}
{
	movigl	GR3,%lo(main.coefficients)
}
{
	add	GR4, GR3, GR2
}
{
	store32	GR6, GR4, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 80
}
{
	jc	 $BB1_1
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.body3.i.preheader
{
	movigl	GR4,0
}
{
	movigh	GR4,0
	addi	GR5, GR30, 0
}
{
	addi	GR7, GR5, 4
	movg2g	GR2,GR4
}
$BB1_3:                                 # %for.body3.i
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR5, GR2
}
{
	store32	GR4, GR8, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 32
}
{
	jc	 $BB1_3
}
{
	nop
}
{
	nop
}
# BB#4:
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	movg2g	GR8,GR4
}
$BB1_5:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR9, GR3, GR8
}
{
	load32	GR10, GR9, 0
	load32	GR11, GR7, -1
}
{
	nop
}
{
	nop
}
{
	mul32	GR10, GR11, GR10
}
{
	nop
}
{
	sub	GR2, GR2, GR10
	load32	GR10, GR9, 1
	load32	GR12, GR7, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR10, GR12, GR10
}
{
	nop
}
{
	sub	GR2, GR2, GR10
	load32	GR10, GR9, 4
	load32	GR13, GR9, 2
}
{
	load32	GR9, GR9, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR11, GR7, 0
	mul32	GR9, GR9, GR11
}
{
	nop
}
{
	mul32	GR11, GR2, GR13
}
{
	nop
}
{
	add	GR9, GR11, GR9
	mul32	GR10, GR10, GR12
}
{
	nop
}
{
	store32	GR2, GR7, -1
	add	GR2, GR9, GR10
	addi	GR7, GR7, 8
}
{
	addi	GR8, GR8, 20
}
{
	neqi	 GR8, 80
}
{
	jc	 $BB1_5
}
{
	nop
}
{
	nop
}
# BB#6:
{
	movg2g	GR7,GR4
}
$BB1_7:                                 # %for.body.i36
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR8, GR3, GR7
}
{
	store32	GR6, GR8, 0
	addi	GR7, GR7, 4
}
{
	neqi	 GR7, 80
}
{
	jc	 $BB1_7
}
{
	nop
}
{
	nop
}
# BB#8:
{
	movg2g	GR3,GR4
}
$BB1_9:                                 # %for.body3.i41
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR6, GR5, GR3
}
{
	store32	GR4, GR6, 0
	addi	GR3, GR3, 4
}
{
	neqi	 GR3, 32
}
{
	jc	 $BB1_9
}
{
	nop
}
{
	nop
}
# BB#10:                                # %pin_down.exit42
{
	addi	GR30, GR30, 32
}
{
	ret	GR31
}
{
	nop
}
{
	nop
}
$tmp1:
	.size	main, ($tmp1)-main

	.type	main.coefficients,@object # @main.coefficients
	.local	main.coefficients
	.comm	main.coefficients,80,4

