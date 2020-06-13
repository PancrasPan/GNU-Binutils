	.text
	.file	"./testcase_4slots/bubblemain.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR2, GR30, 6
}
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
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 4
}
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	lti	 GR2, 5
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR3,%hi(SortArray)
}
{
	movigl	GR3,%lo(SortArray)
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR3, GR2, -1
}
{
	nop
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	ge	 GR2, GR3
}
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %if.then
{
	load32	GR2, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 5
}
$BB0_4:                                 # %for.end
{
	load32	GR2, GR30, 5
	load32	GR31, GR30, 7
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
$tmp0:                                  # EmittedInsts:47
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


