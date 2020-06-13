	.text
	.file	"./testcase_4slots/mergesort_norecur.ll"
	.globl	merge_sort
	.align	2
	.type	merge_sort,@function
merge_sort:                             # @merge_sort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	load32	GR2, GR30, 14
	store32	GR4, GR30, 10
}
{
	store32	GR5, GR30, 9
	store32	GR2, GR30, 8
}
{
	load32	GR3, GR30, 9
}
{
	le	 GR3, GR2
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
# BB#1:                                 # %if.then
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	jmp	$BB0_30
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
	store32	GR2, GR30, 7
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
$BB0_28:                                # %for.end70
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
}
{
	store32	GR3, GR30, 7
}
$BB0_3:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_18 Depth 3
                                        #     Child Loop BB0_23 Depth 2
                                        #     Child Loop BB0_26 Depth 2
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	sub	GR3, GR4, GR3
}
{
	addi	GR3, GR3, 1
	load32	GR4, GR30, 7
}
{
	ge	 GR4, GR3
}
{
	jc	 $BB0_29
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 6
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
}
{
	addi	GR4, GR3, -1
}
{
	store32	GR4, GR30, 5
	store32	GR3, GR30, 4
}
{
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
}
{
	addi	GR3, GR3, -1
	load32	GR4, GR30, 8
}
{
	le	 GR3, GR4
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
# BB#5:                                 # %cond.true
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 8
}
{
	nop
}
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
	load32	GR3, GR30, 7
}
{
	nop
}
{
	load32	GR4, GR30, 4
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
	addi	GR3, GR3, -1
}
$BB0_7:                                 # %cond.end
                                        #   in Loop: Header=BB0_3 Depth=1
{
	store32	GR3, GR30, 3
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
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
$BB0_21:                                # %cond.true48
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
$BB0_8:                                 # %while.cond10
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_9 Depth 3
                                        #       Child Loop BB0_16 Depth 3
                                        #       Child Loop BB0_18 Depth 3
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 4
}
{
	gt	 GR5, GR4
}
{
	jnc	 $BB0_9
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_23
}
{
	nop
}
{
	nop
}
$BB0_14:                                # %for.cond
                                        #   in Loop: Header=BB0_9 Depth=3
{
	sl	GR5, GR5, GR4
	load32	GR6, GR30, 10
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
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	store32	GR7, GR30, 2
	sl	GR4, GR6, GR4
	movigh	GR6,%hi(t_array)
}
{
	movigl	GR6,%lo(t_array)
}
{
	add	GR4, GR6, GR4
}
{
	store32	GR5, GR4, 0
}
$BB0_9:                                 # %for.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR4, GR30, 5
}
{
	nop
}
{
	load32	GR5, GR30, 6
}
{
	gt	 GR5, GR4
	movg2g	GR4,GR3
}
{
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB0_9 Depth=3
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	load32	GR5, GR30, 4
}
{
	le	 GR5, GR4
}
{
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	jnc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#31:                                #   in Loop: Header=BB0_9 Depth=3
{
	movigl	GR4,1
}
{
	movigh	GR4,0
}
$BB0_11:                                # %land.end
                                        #   in Loop: Header=BB0_9 Depth=3
{
	eqi	 GR4, 0
}
{
	jc	 $BB0_16
}
{
	nop
}
{
	nop
}
# BB#12:                                # %for.body
                                        #   in Loop: Header=BB0_9 Depth=3
{
	movigl	GR4,2
}
{
	movigh	GR4,0
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR4
	load32	GR6, GR30, 6
}
{
	nop
}
{
	nop
}
{
	sl	GR6, GR6, GR4
	load32	GR7, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR7, GR6
	add	GR5, GR7, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	load32	GR6, GR6, 0
}
{
	le	 GR6, GR5
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
# BB#13:                                # %if.then17
                                        #   in Loop: Header=BB0_9 Depth=3
{
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 1
}
{
	store32	GR6, GR30, 4
}
{
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %if.else
                                        #   in Loop: Header=BB0_9 Depth=3
{
	load32	GR5, GR30, 6
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 1
}
{
	store32	GR6, GR30, 6
}
{
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_17:                                # %for.body28
                                        #   in Loop: Header=BB0_16 Depth=3
{
	load32	GR4, GR30, 6
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
	store32	GR5, GR30, 6
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
	load32	GR6, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
}
{
	load32	GR4, GR4, 0
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	store32	GR7, GR30, 2
	sl	GR5, GR6, GR5
	movigh	GR6,%hi(t_array)
}
{
	movigl	GR6,%lo(t_array)
}
{
	add	GR5, GR6, GR5
}
{
	store32	GR4, GR5, 0
}
$BB0_16:                                # %for.cond26
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR4, GR30, 5
}
{
	nop
}
{
	load32	GR5, GR30, 6
}
{
	gt	 GR5, GR4
}
{
	jnc	 $BB0_17
}
{
	nop
}
{
	nop
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
$BB0_19:                                # %for.body36
                                        #   in Loop: Header=BB0_18 Depth=3
{
	load32	GR4, GR30, 4
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
	store32	GR5, GR30, 4
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
	load32	GR6, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
}
{
	load32	GR4, GR4, 0
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	store32	GR7, GR30, 2
	sl	GR5, GR6, GR5
	movigh	GR6,%hi(t_array)
}
{
	movigl	GR6,%lo(t_array)
}
{
	add	GR5, GR6, GR5
}
{
	store32	GR4, GR5, 0
}
$BB0_18:                                # %for.cond34
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	load32	GR5, GR30, 4
}
{
	gt	 GR5, GR4
}
{
	jnc	 $BB0_19
}
{
	nop
}
{
	nop
}
# BB#20:                                # %for.end41
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 6
	load32	GR5, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR4, GR5
}
{
	addi	GR5, GR4, -1
}
{
	store32	GR5, GR30, 5
	store32	GR4, GR30, 4
}
{
	load32	GR5, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR4, GR5
}
{
	addi	GR4, GR4, -1
	load32	GR5, GR30, 8
}
{
	le	 GR4, GR5
}
{
	jnc	 $BB0_21
}
{
	nop
}
{
	nop
}
# BB#22:                                # %cond.false49
                                        #   in Loop: Header=BB0_8 Depth=2
{
	load32	GR4, GR30, 7
}
{
	nop
}
{
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	addi	GR4, GR4, -1
}
{
	store32	GR4, GR30, 3
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
$BB0_24:                                # %for.body56
                                        #   in Loop: Header=BB0_23 Depth=2
{
	load32	GR4, GR30, 6
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
	store32	GR5, GR30, 6
	movigl	GR5,2
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
	load32	GR6, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR6, GR4
}
{
	load32	GR4, GR4, 0
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	addi	GR7, GR6, 1
}
{
	store32	GR7, GR30, 2
	sl	GR5, GR6, GR5
	movigh	GR6,%hi(t_array)
}
{
	movigl	GR6,%lo(t_array)
}
{
	add	GR5, GR6, GR5
}
{
	store32	GR4, GR5, 0
}
$BB0_23:                                # %for.cond54
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 6
}
{
	gt	 GR5, GR4
}
{
	jnc	 $BB0_24
}
{
	nop
}
{
	nop
}
# BB#25:                                # %for.end61
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 1
	store32	GR3, GR30, 0
}
{
	jmp	$BB0_26
}
{
	nop
}
{
	nop
}
$BB0_27:                                # %for.body65
                                        #   in Loop: Header=BB0_26 Depth=2
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
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 0
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
	movigh	GR5,%hi(t_array)
}
{
	movigl	GR5,%lo(t_array)
}
{
	add	GR3, GR5, GR3
}
{
	load32	GR3, GR3, 0
	load32	GR5, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR6, GR5, 1
}
{
	store32	GR6, GR30, 1
	sl	GR4, GR5, GR4
	load32	GR5, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	store32	GR3, GR4, 0
}
$BB0_26:                                # %for.cond63
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	load32	GR4, GR30, 1
}
{
	gt	 GR4, GR3
}
{
	jnc	 $BB0_27
}
{
	nop
}
{
	nop
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
$BB0_29:                                # %while.end71
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_30:                                # %return
{
	store32	GR2, GR30, 11
}
{
	load32	GR2, GR30, 11
	addi	GR30, GR30, 48
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
$tmp0:                                  # EmittedInsts:302
	.size	merge_sort, ($tmp0)-merge_sort

	.type	t_array,@object         # @t_array
	.local	t_array
	.comm	t_array,40,4

