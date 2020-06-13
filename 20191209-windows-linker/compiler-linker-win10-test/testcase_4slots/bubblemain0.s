	.text
	.file	".\\HWlooptest\\succ\\bubblemain0.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR31, GR30, 3
	call	bubblesort
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	movigh	GR4,%hi(SortArray)
}
{
	movigl	GR4,%lo(SortArray)
}
{
	addi	GR3, GR4, 4
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR5, GR3, 0
}
{
	ge	 GR5, GR4
}
{
	jnc	 $BB0_4
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %for.cond
                                        #   in Loop: Header=BB0_1 Depth=1
{
	addi	GR2, GR2, 1
	addi	GR3, GR3, 4
}
{
	lti	 GR2, 5
}
{
	movg2g	GR4,GR5
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
# BB#3:
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_5:                                 # %for.end
{
	load32	GR31, GR30, 3
	addi	GR30, GR30, 16
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
	.size	main, ($tmp0)-main

	.type	SortArray,@object       # @SortArray
	.data
	.globl	SortArray
	.align	2
SortArray:
	.4byte	5                       # 0x5
	.4byte	1                       # 0x1
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	2                       # 0x2
	.size	SortArray, 20

	.type	size,@object            # @size
	.globl	size
	.align	2
size:
	.4byte	5                       # 0x5
	.size	size, 4


