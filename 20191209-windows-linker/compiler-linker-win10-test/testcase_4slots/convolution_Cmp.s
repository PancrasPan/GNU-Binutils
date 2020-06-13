	.text
	.file	".\\benchmark\\dspstone\\convolution_Cmp.ll"
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
	movigl	GR6,1
}
{
	movigh	GR6,0
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR3, GR4, GR2
}
{
	store32	GR6, GR3, 0
	add	GR3, GR5, GR2
}
{
	store32	GR6, GR3, 0
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 64
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movg2g	GR5,GR2
}
$BB1_1:                                 # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR3,%hi(main.x)
}
{
	movigl	GR3,%lo(main.x)
}
{
	add	GR4, GR3, GR5
	movigl	GR6,1
}
{
	movigh	GR6,0
}
{
	store32	GR6, GR4, 0
	movigh	GR4,%hi(main.h)
}
{
	movigl	GR4,%lo(main.h)
}
{
	add	GR7, GR4, GR5
}
{
	store32	GR6, GR7, 0
	addi	GR5, GR5, 4
}
{
	neqi	 GR5, 64
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
	movigl	GR5,60
}
{
	movigh	GR5,0
}
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR6, GR4, GR5
}
{
	load32	GR6, GR6, 0
	load32	GR7, GR3, 0
}
{
	nop
}
{
	nop
}
{
	mul32	GR6, GR6, GR7
}
{
	nop
}
{
	add	GR2, GR6, GR2
	addi	GR3, GR3, 4
}
{
	addi	GR5, GR5, -4
}
{
	neqi	 GR5, -4
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

