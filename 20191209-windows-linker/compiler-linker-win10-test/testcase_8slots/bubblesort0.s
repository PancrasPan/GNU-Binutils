	.text
	.file	".\\HWlooptest\\fail\\bubblesort0.ll"
	.globl	bubblesort
	.align	2
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(size)
}
{
	movigl	GR2,%lo(size)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
{
	addi	GR2, GR2, -1
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
}
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	movg2g	GR5,GR4
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %if.then
                                        #   in Loop: Header=BB0_3 Depth=2
{
	store32	GR9, GR7, -1
}
{
	store32	GR8, GR7, 0
}
{
	movg2g	GR4,GR3
}
$BB0_3:                                 # %for.cond1.outer
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
{
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	sl	GR6, GR5, GR6
	movigh	GR7,%hi(Array)
}
{
	movigl	GR7,%lo(Array)
}
{
	add	GR6, GR7, GR6
}
$BB0_4:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	ge	 GR5, GR2
}
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %for.body3
                                        #   in Loop: Header=BB0_4 Depth=3
{
	addi	GR5, GR5, 1
	addi	GR7, GR6, 4
	load32	GR9, GR6, 1
}
{
	nop
}
{
	load32	GR8, GR6, 0
}
{
	le	 GR8, GR9
	movg2g	GR6,GR7
}
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	neqi	 GR4, 0
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
$BB0_8:                                 # %for.end15
{
	movigl	GR2,0
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
	.size	bubblesort, ($tmp0)-bubblesort


