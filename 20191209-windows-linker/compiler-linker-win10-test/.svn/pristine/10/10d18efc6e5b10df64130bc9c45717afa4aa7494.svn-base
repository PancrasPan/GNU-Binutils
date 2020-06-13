	.text
	.file	"./testcase_8slots/bubblesort.ll"
	.globl	bubblesort
	.align	2
	.type	bubblesort,@function
bubblesort:                             # @bubblesort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
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
{
	store32	GR2, GR30, 11
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_3 Depth 3
{
	movigl	GR3,0
	load32	GR2, GR30, 11
}
{
	addi	GR2, GR2, -1
	movigh	GR3,0
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	lt	 GR2, GR4
	movg2g	GR5,GR3
}
{
	store32	GR5, GR30, 10
	store32	GR2, GR30, 9
}
{
	store32	GR3, GR30, 8
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.cond1.outer
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_3 Depth 3
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 7
	store32	GR2, GR30, 6
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 9
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	store32	GR2, GR30, 5
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
$BB0_4:                                 # %for.body3
                                        #   in Loop: Header=BB0_3 Depth=3
{
	movigh	GR2,%hi(Array)
}
{
	movigl	GR2,%lo(Array)
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR4, GR3
}
{
	add	GR5, GR2, GR5
	addi	GR6, GR4, 1
}
{
	sl	GR3, GR6, GR3
}
{
	add	GR2, GR2, GR3
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	load32	GR7, GR5, 0
}
{
	le	 GR7, GR3
	movg2g	GR9,GR6
}
{
	store32	GR5, GR30, 4
	store32	GR6, GR30, 3
}
{
	store32	GR2, GR30, 2
	store32	GR3, GR30, 1
}
{
	store32	GR7, GR30, 0
	store32	GR9, GR30, 6
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
$BB0_5:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=2
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 0
	store32	GR2, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	movigl	GR6,1
	store32	GR4, GR5, 0
}
{
	movigh	GR6,0
	load32	GR7, GR30, 3
}
{
	nop
}
{
	store32	GR6, GR30, 10
	store32	GR7, GR30, 8
}
{
	jmp	$BB0_2
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 7
}                                       # 4-byte Folded Reload
{
	neqi	 GR2, 0
}
{
	load32	GR4, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 11
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.end15
{
	movigl	GR2,0
}
{
	addi	GR30, GR30, 48
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


