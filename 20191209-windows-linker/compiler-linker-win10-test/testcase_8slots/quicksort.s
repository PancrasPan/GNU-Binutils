	.text
	.file	"./testcase_8slots/quicksort.ll"
	.globl	partition
	.align	2
	.type	partition,@function
partition:                              # @partition
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -112
}
{
	store32	GR31, GR30, 27
}                                       # 4-byte Folded Spill
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	movg2g	GR3,GR5
	load32	GR6, GR30, 30
}
{
	nop
}
{
	gt	 GR5, GR6
	store32	GR6, GR30, 26
	store32	GR4, GR30, 25
}
{
	store32	GR3, GR30, 24
	store32	GR2, GR30, 23
}
{
	jc	 $BB0_13
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
	load32	GR2, GR30, 24
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 26
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
	load32	GR6, GR30, 25
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
	load32	GR7, GR5, 0
}
{
	movg2g	GR8,GR2
}
{
	movg2g	GR9,GR2
}
{
	load32	GR10, GR30, 26
	store32	GR2, GR30, 22
	store32	GR3, GR30, 21
}
{
	store32	GR10, GR30, 20
	store32	GR5, GR30, 19
}
{
	store32	GR7, GR30, 18
	store32	GR8, GR30, 17
}
{
	store32	GR9, GR30, 16
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.cond.preheader
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_7 Depth 3
{
	load32	GR2, GR30, 17
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 21
}                                       # 4-byte Folded Reload
{
	nop
}
{
	lt	 GR2, GR3
	movg2g	GR5,GR3
}
{
	store32	GR2, GR30, 15
	store32	GR5, GR30, 14
}
{
	store32	GR3, GR30, 13
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
$BB0_3:                                 # %for.cond
                                        #   in Loop: Header=BB0_4 Depth=3
{
	load32	GR2, GR30, 15
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 12
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	load32	GR5, GR30, 12
}
{
	nop
}
{
	store32	GR3, GR30, 14
	store32	GR5, GR30, 13
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
	load32	GR2, GR30, 14
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 25
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
	load32	GR5, GR30, 18
}                                       # 4-byte Folded Reload
{
	ge	 GR3, GR5
	addi	GR6, GR2, -1
}
{
	store32	GR6, GR30, 12
	store32	GR2, GR30, 13
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
$BB0_5:                                 # %for.cond5.preheader
                                        #   in Loop: Header=BB0_2 Depth=2
{
	load32	GR2, GR30, 13
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 15
}                                       # 4-byte Folded Reload
{
	lt	 GR3, GR2
	load32	GR5, GR30, 15
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
}
{
	store32	GR5, GR30, 9
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
$BB0_6:                                 # %for.cond5
                                        #   in Loop: Header=BB0_7 Depth=3
{
	load32	GR2, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 11
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	load32	GR5, GR30, 8
}
{
	nop
}
{
	store32	GR2, GR30, 10
	store32	GR5, GR30, 9
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
$BB0_7:                                 # %land.rhs7
                                        #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	movigl	GR3,2
	load32	GR2, GR30, 10
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 25
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
	load32	GR5, GR30, 18
}                                       # 4-byte Folded Reload
{
	le	 GR3, GR5
	addi	GR6, GR2, 1
}
{
	store32	GR6, GR30, 8
	store32	GR2, GR30, 9
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
$BB0_8:                                 # %for.end13
                                        #   in Loop: Header=BB0_2 Depth=2
{
	load32	GR2, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 11
}                                       # 4-byte Folded Reload
{
	eq	 GR2, GR3
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 7
	store32	GR3, GR30, 20
}
{
	store32	GR5, GR30, 16
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %if.end16
                                        #   in Loop: Header=BB0_2 Depth=2
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR3, GR2
	load32	GR5, GR30, 25
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	load32	GR6, GR30, 11
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR6, GR2
}
{
	add	GR2, GR5, GR2
}
{
	load32	GR7, GR2, 0
	load32	GR8, GR4, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR8, GR2, 0
}
{
	lt	 GR3, GR6
	load32	GR4, GR30, 7
	load32	GR7, GR30, 11
	store32	GR7, GR4, 0
	store32	GR6, GR30, 21
}
{
	store32	GR3, GR30, 17
	store32	GR7, GR30, 20
}
{
	store32	GR4, GR30, 16
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 20
	load32	GR3, GR30, 16
}
{
	load32	GR4, GR30, 22
}                                       # 4-byte Folded Reload
{
	eq	 GR2, GR4
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
}
{
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %if.then22
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR4, GR30, 25
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
}
{
	load32	GR5, GR2, 0
}
{
	nop
}
{
	load32	GR6, GR30, 19
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR5, GR30, 18
	store32	GR5, GR6, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR2, 0
}
$BB0_12:                                # %if.end26
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, -1
	movg2g	GR4,GR30
}
{
	load32	GR4, GR30, 25
	store32	GR3, GR4, 2
}
{
	nop
}
{
	load32	GR5, GR30, 22
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	call	partition
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
	load32	GR4, GR30, 6
}
{
	nop
}
{
	load32	GR5, GR30, 26
}                                       # 4-byte Folded Reload
{
	lt	 GR4, GR5
	addi	GR7, GR4, 1
	store32	GR2, GR30, 4
}
{
	store32	GR7, GR30, 24
	store32	GR3, GR30, 23
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
$BB0_13:                                # %return
{
	addi	GR30, GR30, 112
	load32	GR2, GR30, 23
	load32	GR31, GR30, 27
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
	.size	partition, ($tmp0)-partition


