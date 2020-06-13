	.text
	.file	"./testcase_4slots/bubblesort.ll"
	.globl	bubblesort
	.align	2
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
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
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %for.inc14
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
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
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 1
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_9
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
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
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
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR3, GR30, 0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	load32	GR4, GR30, 0
}
{
	ge	 GR4, GR3
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
# BB#4:                                 # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=2
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR4, GR3
	movigh	GR4,%hi(Array)
}
{
	movigl	GR4,%lo(Array)
}
{
	add	GR5, GR4, GR5
}
{
	load32	GR6, GR5, 1
}
{
	nop
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	le	 GR5, GR6
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB0_3 Depth=2
{
	store32	GR2, GR30, 2
	load32	GR5, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR3
}
{
	add	GR5, GR4, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 3
	load32	GR5, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR3
}
{
	add	GR5, GR4, GR5
}
{
	load32	GR6, GR5, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR6, GR5, 0
	load32	GR5, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR5, GR3
}
{
	add	GR3, GR3, GR4
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 1
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
	load32	GR2, GR30, 2
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_8
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %for.end15
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$tmp0:                                  # EmittedInsts:88
	.size	bubblesort, ($tmp0)-bubblesort


