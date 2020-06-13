	.text
	.file	"./testcase_8slots/1/mergesort_norecur.ll"
	.globl	merge_sort
	.align	2
	.type	merge_sort,@function
merge_sort:                             # @merge_sort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -72
}
{
	load32	GR2, GR30, 20
	store32	GR4, GR30, 16
	store32	GR5, GR30, 15
}
{
	load32	GR3, GR30, 15
	store32	GR2, GR30, 14
}
{
	le	 GR3, GR2
	store32	GR4, GR30, 5
	store32	GR5, GR30, 4
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
$BB0_1:                                 # %if.then
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 17
}
{
	jmp	$BB0_35
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.end
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 13
}
$BB0_3:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_10 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #       Child Loop BB0_21 Depth 3
                                        #     Child Loop BB0_28 Depth 2
                                        #     Child Loop BB0_31 Depth 2
{
	load32	GR2, GR30, 15
}
{
	nop
}
{
	load32	GR3, GR30, 14
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
}
{
	addi	GR2, GR2, 1
	load32	GR3, GR30, 13
}
{
	ge	 GR3, GR2
}
{
	jc	 $BB0_34
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 15
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 13
	store32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
}
{
	addi	GR3, GR2, -1
}
{
	load32	GR3, GR30, 13
	store32	GR3, GR30, 11
	store32	GR2, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
}
{
	addi	GR2, GR2, -1
	load32	GR3, GR30, 14
}
{
	le	 GR2, GR3
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
$BB0_5:                                 # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %cond.false
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 13
}
{
	nop
}
{
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 3
}                                       # 4-byte Folded Spill
$BB0_7:                                 # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
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
	movigl	GR2,0
	store32	GR2, GR30, 9
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 8
}
$BB0_8:                                 # %while.cond10
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_10 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #       Child Loop BB0_21 Depth 3
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	load32	GR3, GR30, 10
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_27
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %while.body12
                                        #   in Loop: Header=BB0_8 Depth=2
$BB0_10:                                # %for.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 11
}
{
	nop
}
{
	load32	GR3, GR30, 12
}
{
	gt	 GR3, GR2
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %land.rhs
                                        #   in Loop: Header=BB0_10 Depth=3
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	load32	GR3, GR30, 10
}
{
	le	 GR3, GR2
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
$BB0_12:                                # %land.end
                                        #   in Loop: Header=BB0_10 Depth=3
{
	load32	GR2, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_17
}
{
	nop
}
{
	nop
}
$BB0_13:                                # %for.body
                                        #   in Loop: Header=BB0_10 Depth=3
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 12
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR4, GR2
	load32	GR4, GR30, 16
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
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
	le	 GR2, GR3
}
{
	jc	 $BB0_15
}
{
	nop
}
{
	nop
}
$BB0_14:                                # %if.then17
                                        #   in Loop: Header=BB0_10 Depth=3
{
	load32	GR2, GR30, 10
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 10
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR2, GR2, 0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	movigh	GR4,%hi(t_array)
	store32	GR5, GR30, 8
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR2, GR3, 0
}
{
	jmp	$BB0_16
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %if.else
                                        #   in Loop: Header=BB0_10 Depth=3
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 12
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR2, GR2, 0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	movigh	GR4,%hi(t_array)
	store32	GR5, GR30, 8
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR2, GR3, 0
}
$BB0_16:                                # %if.end25
                                        #   in Loop: Header=BB0_10 Depth=3
{
	jmp	$BB0_10
}
{
	nop
}
{
	nop
}
$BB0_17:                                # %for.end
                                        #   in Loop: Header=BB0_8 Depth=2
$BB0_18:                                # %for.cond26
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 11
}
{
	nop
}
{
	load32	GR3, GR30, 12
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_20
}
{
	nop
}
{
	nop
}
$BB0_19:                                # %for.body28
                                        #   in Loop: Header=BB0_18 Depth=3
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 12
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR2, GR2, 0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	movigh	GR4,%hi(t_array)
	store32	GR5, GR30, 8
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR2, GR3, 0
}
{
	jmp	$BB0_18
}
{
	nop
}
{
	nop
}
$BB0_20:                                # %for.end33
                                        #   in Loop: Header=BB0_8 Depth=2
$BB0_21:                                # %for.cond34
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	load32	GR3, GR30, 10
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_23
}
{
	nop
}
{
	nop
}
$BB0_22:                                # %for.body36
                                        #   in Loop: Header=BB0_21 Depth=3
{
	load32	GR2, GR30, 10
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 10
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR2, GR2, 0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	movigh	GR4,%hi(t_array)
	store32	GR5, GR30, 8
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR2, GR3, 0
}
{
	jmp	$BB0_21
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %for.end41
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR2, GR30, 10
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 13
	store32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
}
{
	addi	GR3, GR2, -1
}
{
	load32	GR3, GR30, 13
	store32	GR3, GR30, 11
	store32	GR2, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
}
{
	addi	GR2, GR2, -1
	load32	GR3, GR30, 14
}
{
	le	 GR2, GR3
}
{
	jc	 $BB0_25
}
{
	nop
}
{
	nop
}
$BB0_24:                                # %cond.true48
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
{
	jmp	$BB0_26
}
{
	nop
}
{
	nop
}
$BB0_25:                                # %cond.false49
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR2, GR30, 13
}
{
	nop
}
{
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_26:                                # %cond.end52
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 9
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
$BB0_27:                                # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
$BB0_28:                                # %for.cond54
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	load32	GR3, GR30, 12
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
$BB0_29:                                # %for.body56
                                        #   in Loop: Header=BB0_28 Depth=2
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 12
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR4, GR30, 16
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
	load32	GR2, GR2, 0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	movigh	GR4,%hi(t_array)
	store32	GR5, GR30, 8
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR3, GR4, GR3
}
{
	store32	GR2, GR3, 0
}
{
	jmp	$BB0_28
}
{
	nop
}
{
	nop
}
$BB0_30:                                # %for.end61
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 15
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,0
	store32	GR2, GR30, 7
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
}
$BB0_31:                                # %for.cond63
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	load32	GR3, GR30, 7
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_33
}
{
	nop
}
{
	nop
}
$BB0_32:                                # %for.body65
                                        #   in Loop: Header=BB0_31 Depth=2
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 6
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	movigh	GR4,%hi(t_array)
}
{
	movigl	GR4,%lo(t_array)
}
{
	add	GR2, GR4, GR2
}
{
	load32	GR2, GR2, 0
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 1
}
{
	sl	GR3, GR4, GR3
	load32	GR4, GR30, 16
	store32	GR5, GR30, 7
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
	store32	GR2, GR3, 0
}
{
	jmp	$BB0_31
}
{
	nop
}
{
	nop
}
$BB0_33:                                # %for.end70
                                        #   in Loop: Header=BB0_3 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 13
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 13
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
$BB0_34:                                # %while.end71
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 17
}
$BB0_35:                                # %return
{
	addi	GR30, GR30, 72
	load32	GR2, GR30, 17
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
	.size	merge_sort, ($tmp0)-merge_sort

	.type	t_array,@object         # @t_array
	.local	t_array
	.comm	t_array,40,4

