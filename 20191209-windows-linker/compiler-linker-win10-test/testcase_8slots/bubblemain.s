	.text
	.file	"./testcase_8slots/bubblemain.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
}                                       # 4-byte Folded Spill
{
	call	bubblesort
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,1
}
{
	movigh	GR3,0
	store32	GR2, GR30, 6
}
{
	store32	GR3, GR30, 5
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_2
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.cond
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	lti	 GR3, 5
}
{
	store32	GR2, GR30, 3
	store32	GR3, GR30, 5
}
{
	jnc	 $BB0_3
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 5
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	movigh	GR4,%hi(SortArray)
}
{
	movigl	GR4,%lo(SortArray)
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR4, GR3, -1
}
{
	nop
}
{
	load32	GR3, GR3, 0
}
{
	ge	 GR3, GR4
	movigl	GR4,0
}
{
	addi	GR2, GR2, 1
	movigh	GR4,0
}
{
	store32	GR2, GR30, 4
	store32	GR4, GR30, 3
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
$BB0_3:                                 # %for.end
{
	addi	GR30, GR30, 32
	load32	GR2, GR30, 3
	load32	GR31, GR30, 7
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


