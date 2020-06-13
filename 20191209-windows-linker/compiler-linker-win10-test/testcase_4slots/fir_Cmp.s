	.text
	.file	".\\benchmark\\dspstone\\fir_Cmp.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR4, 0
}
{
	store32	GR2, GR5, 0
	addi	GR5, GR5, 4
	addi	GR4, GR4, 4
}
{
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 17
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
# BB#2:                                 # %for.end
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
	movigl	GR2,1
}
{
	movigh	GR2,0
	movigh	GR3,%hi(main.h)
}
{
	movg2g	GR5,GR3
}
{
	movigl	GR5,%lo(main.h)
	movigh	GR4,%hi(main.x)
}
{
	movg2g	GR6,GR4
}
{
	movigl	GR6,%lo(main.x)
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR6, 0
	store32	GR2, GR5, 0
	addi	GR5, GR5, 4
	addi	GR6, GR6, 4
}
{
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 17
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
# BB#2:
{
	movigl	GR7,0
}
{
	movigh	GR7,0
}
{
	movg2g	GR2,GR7
}
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movg2g	GR5,GR3
}
{
	movigl	GR5,%lo(main.h)
}
{
	add	GR6, GR5, GR7
}
{
	load32	GR8, GR6, 15
}
{
	nop
}
{
	nop
}
{
	movg2g	GR6,GR4
}
{
	movigl	GR6,%lo(main.x)
}
{
	add	GR9, GR6, GR7
}
{
	load32	GR10, GR9, 15
	load32	GR11, GR9, 14
}
{
	nop
}
{
	nop
}
{
	store32	GR11, GR9, 15
	mul32	GR8, GR10, GR8
}
{
	nop
}
{
	add	GR2, GR8, GR2
	addi	GR7, GR7, -4
}
{
	neqi	 GR7, -60
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
# BB#4:                                 # %for.end
{
	load32	GR3, GR6, 0
	load32	GR4, GR5, 0
}
{
	nop
}
{
	nop
}
{
	movigl	GR7,100
}
{
	movigh	GR7,0
}
{
	store32	GR7, GR6, 0
	mul32	GR3, GR3, GR4
}
{
	nop
}
{
	movigl	GR4,1
}
{
	movigh	GR4,0
}
$BB1_5:                                 # %for.body.i20
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR4, GR6, 0
	store32	GR4, GR5, 0
	addi	GR5, GR5, 4
	addi	GR6, GR6, 4
}
{
	addi	GR4, GR4, 1
}
{
	neqi	 GR4, 17
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
# BB#6:                                 # %pin_down.exit21
{
	add	GR2, GR3, GR2
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

	.type	main.x,@object          # @main.x
	.local	main.x
	.comm	main.x,64,4
	.type	main.h,@object          # @main.h
	.local	main.h
	.comm	main.h,64,4

