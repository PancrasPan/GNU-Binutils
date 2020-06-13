	.text
	.file	"./testcase_8slots/quicksort1.ll"
	.globl	partition_1
	.align	2
	.type	partition_1,@function
partition_1:                            # @partition_1
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -96
}
{
	store32	GR31, GR30, 23
}                                       # 4-byte Folded Spill
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	movg2g	GR3,GR5
	load32	GR6, GR30, 26
}
{
	nop
}
{
	gt	 GR5, GR6
	store32	GR6, GR30, 22
	store32	GR4, GR30, 21
}
{
	store32	GR3, GR30, 20
	store32	GR2, GR30, 19
}
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_7 Depth 3
{
	load32	GR2, GR30, 20
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 22
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR5, GR2, GR5
	load32	GR6, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
}
{
	load32	GR5, GR5, 0
}
{
	movg2g	GR7,GR2
}
{
	store32	GR2, GR30, 18
	store32	GR3, GR30, 17
}
{
	store32	GR7, GR30, 16
	store32	GR5, GR30, 15
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
$BB0_2:                                 # %while.cond2.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_7 Depth 3
{
	load32	GR2, GR30, 16
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 17
}                                       # 4-byte Folded Reload
{
	nop
}
{
	lt	 GR2, GR3
	movg2g	GR5,GR3
}
{
	store32	GR2, GR30, 14
	store32	GR5, GR30, 13
}
{
	store32	GR3, GR30, 12
}                                       # 4-byte Folded Spill
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
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.cond2
                                        #   in Loop: Header=BB0_4 Depth=3
{
	load32	GR2, GR30, 14
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 11
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	load32	GR5, GR30, 11
}
{
	nop
}
{
	store32	GR3, GR30, 13
	store32	GR5, GR30, 12
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
$BB0_4:                                 # %land.rhs
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	movigl	GR3,2
	load32	GR2, GR30, 13
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR30, 15
}                                       # 4-byte Folded Reload
{
	ge	 GR3, GR5
	addi	GR6, GR2, -1
}
{
	store32	GR6, GR30, 11
	store32	GR2, GR30, 12
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
$BB0_5:                                 # %while.end
                                        #   in Loop: Header=BB0_2 Depth=2
{
	movigl	GR3,2
	load32	GR2, GR30, 12
}
{
	movigh	GR3,0
	load32	GR4, GR30, 14
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR4, GR3
	load32	GR6, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
	sl	GR3, GR2, GR3
}
{
	add	GR3, GR6, GR3
}
{
	load32	GR7, GR3, 0
}
{
	nop
}
{
	nop
}
{
	lt	 GR4, GR2
	load32	GR7, GR30, 14
	store32	GR7, GR5, 0
	store32	GR2, GR30, 10
}
{
	store32	GR3, GR30, 9
	store32	GR4, GR30, 8
}
{
	store32	GR7, GR30, 7
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
{
	jmp	$BB0_8
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %while.cond9
                                        #   in Loop: Header=BB0_7 Depth=3
{
	load32	GR2, GR30, 6
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 10
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	load32	GR5, GR30, 6
}
{
	nop
}
{
	store32	GR2, GR30, 8
	store32	GR5, GR30, 7
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
$BB0_7:                                 # %land.rhs11
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	movigl	GR3,2
	load32	GR2, GR30, 8
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR30, 15
}                                       # 4-byte Folded Reload
{
	le	 GR3, GR5
	addi	GR6, GR2, 1
}
{
	store32	GR6, GR30, 6
	store32	GR2, GR30, 7
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
$BB0_8:                                 # %while.end16
                                        #   in Loop: Header=BB0_2 Depth=2
{
	movigl	GR3,2
	load32	GR2, GR30, 7
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 10
	store32	GR3, GR5, 0
}
{
	lt	 GR2, GR3
	store32	GR2, GR30, 16
	store32	GR3, GR30, 17
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %while.end19
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 16
	load32	GR3, GR30, 17
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR3, GR4
	load32	GR5, GR30, 21
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	load32	GR6, GR30, 15
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
	store32	GR6, GR4, 0
}
{
	movg2g	GR4,GR30
}
{
	store32	GR2, GR4, 2
}
{
	movg2g	GR4,GR5
}
{
	load32	GR5, GR30, 18
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR3, GR30, 5
}                                       # 4-byte Folded Spill
{
	call	partition_1
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	load32	GR4, GR30, 5
}
{
	nop
}
{
	load32	GR5, GR30, 22
}                                       # 4-byte Folded Reload
{
	lt	 GR4, GR5
	addi	GR7, GR4, 1
	store32	GR2, GR30, 4
}
{
	store32	GR7, GR30, 20
	store32	GR3, GR30, 19
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
$BB0_10:                                # %return
{
	addi	GR30, GR30, 96
	load32	GR2, GR30, 19
	load32	GR31, GR30, 23
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
	.size	partition_1, ($tmp0)-partition_1


