	.text
	.file	"./testcase_8slots/qsort.ll"
	.globl	qsort
	.align	2
	.type	qsort,@function
qsort:                                  # @qsort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -104
}
{
	store32	GR31, GR30, 25
}                                       # 4-byte Folded Spill
{
	load32	GR2, GR30, 28
}
{
	nop
}
{
	nop
}
{
	sub	GR3, GR2, GR5
	movigl	GR6,1
}
{
	movigh	GR6,0
}
{
	lt	 GR3, GR6
	movigl	GR6,-1
}
{
	movigh	GR6,-1
}
{
	store32	GR6, GR30, 24
	store32	GR5, GR30, 23
}
{
	store32	GR2, GR30, 22
	store32	GR4, GR30, 21
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
$BB0_1:                                 # %if.end.lr.ph
{
	load32	GR2, GR30, 22
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
	load32	GR4, GR30, 23
}
{
	nop
}
{
	store32	GR3, GR30, 20
	store32	GR4, GR30, 19
}
$BB0_2:                                 # %if.end
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_5 Depth 3
{
	load32	GR2, GR30, 19
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 20
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
	load32	GR7, GR5, 0
}
{
	movg2g	GR8,GR2
}
{
	store32	GR2, GR30, 18
	store32	GR3, GR30, 17
}
{
	store32	GR8, GR30, 16
	store32	GR5, GR30, 15
}
{
	store32	GR7, GR30, 14
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_9
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.cond2.preheader
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_4 Depth 3
                                        #       Child Loop BB0_5 Depth 3
{
	load32	GR2, GR30, 17
	load32	GR3, GR30, 16
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 13
	store32	GR2, GR30, 12
}
$BB0_4:                                 # %while.cond2
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 12
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
	movigl	GR3,2
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
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR30, 14
}                                       # 4-byte Folded Reload
{
	gt	 GR5, GR6
	movg2g	GR7,GR2
}
{
	load32	GR8, GR30, 13
	store32	GR2, GR30, 11
	store32	GR3, GR30, 10
}
{
	store32	GR8, GR30, 9
	store32	GR7, GR30, 12
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
$BB0_5:                                 # %while.cond6
                                        #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 9
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
	load32	GR3, GR30, 11
}
{
	ge	 GR2, GR3
	store32	GR2, GR30, 8
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
$BB0_6:                                 # %while.body8
                                        #   in Loop: Header=BB0_5 Depth=3
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR4, GR30, 21
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
	load32	GR6, GR30, 14
}                                       # 4-byte Folded Reload
{
	lt	 GR5, GR6
	store32	GR3, GR30, 9
	store32	GR2, GR30, 7
}
{
	store32	GR5, GR30, 6
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.then15
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR2, GR30, 10
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR30, 7
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 6
	store32	GR3, GR4, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
$BB0_8:                                 # %while.cond.backedge
                                        #   in Loop: Header=BB0_3 Depth=2
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
	lt	 GR2, GR3
	store32	GR2, GR30, 16
	store32	GR3, GR30, 17
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
$BB0_9:                                 # %while.end21
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 17
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
	load32	GR5, GR3, 0
}
{
	nop
}
{
	load32	GR6, GR30, 15
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR5, GR30, 14
	store32	GR5, GR6, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR3, 0
}
{
	addi	GR7, GR2, -1
	movg2g	GR3,GR30
}
{
	load32	GR5, GR30, 18
	store32	GR7, GR3, 2
}
{
	nop
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	call	qsort
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
	nop
}
{
	addi	GR5, GR4, 1
	load32	GR6, GR30, 22
}
{
	nop
}
{
	nop
}
{
	sub	GR7, GR6, GR5
}
{
	lti	 GR7, 1
}
{
	store32	GR2, GR30, 4
	store32	GR5, GR30, 19
}
{
	store32	GR3, GR30, 24
}                                       # 4-byte Folded Spill
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %return
{
	addi	GR30, GR30, 104
	load32	GR2, GR30, 24
	load32	GR31, GR30, 25
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
	.size	qsort, ($tmp0)-qsort


