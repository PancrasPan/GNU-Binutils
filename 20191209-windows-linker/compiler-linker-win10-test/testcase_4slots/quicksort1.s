	.text
	.file	"./testcase_4slots/quicksort1.ll"
	.globl	partition_1
	.align	2
	.type	partition_1,@function
partition_1:                            # @partition_1
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
	load32	GR2, GR30, 14
}
{
	store32	GR4, GR30, 9
	store32	GR5, GR30, 8
}
{
	store32	GR2, GR30, 7
	load32	GR3, GR30, 8
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
	jmp	$BB0_18
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.end
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
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 9
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
	nop
}
{
	store32	GR3, GR30, 6
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 5
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 4
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
$BB0_16:                                # %while.end16
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR4, GR2
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	add	GR3, GR5, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR4, 0
}
$BB0_3:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_11 Depth 2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	load32	GR4, GR30, 5
}
{
	ge	 GR4, GR3
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
{
	jmp	$BB0_17
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %while.body6
                                        #   in Loop: Header=BB0_4 Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 4
}
$BB0_4:                                 # %while.cond2
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	load32	GR4, GR30, 5
}
{
	ge	 GR4, GR3
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
# BB#7:                                 # %land.rhs
                                        #   in Loop: Header=BB0_4 Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 9
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
	load32	GR4, GR3, 0
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	ge	 GR4, GR3
}
{
	movigl	GR3,0
}
{
	movigh	GR3,0
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
# BB#6:                                 #   in Loop: Header=BB0_4 Depth=2
{
	movigl	GR3,1
}
{
	movigh	GR3,0
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
$BB0_5:                                 #   in Loop: Header=BB0_4 Depth=2
{
	movigl	GR3,0
}
{
	movigh	GR3,0
}
$BB0_8:                                 # %land.end
                                        #   in Loop: Header=BB0_4 Depth=2
{
	eqi	 GR3, 0
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
# BB#10:                                # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR4, GR2
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	add	GR3, GR5, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR4, 0
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %while.body15
                                        #   in Loop: Header=BB0_11 Depth=2
{
	load32	GR3, GR30, 5
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
{
	store32	GR3, GR30, 5
}
$BB0_11:                                # %while.cond9
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	load32	GR4, GR30, 5
}
{
	ge	 GR4, GR3
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
# BB#13:                                # %land.rhs11
                                        #   in Loop: Header=BB0_11 Depth=2
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 9
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
	load32	GR4, GR30, 6
}
{
	le	 GR3, GR4
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
$BB0_12:                                #   in Loop: Header=BB0_11 Depth=2
{
	movigl	GR3,0
}
{
	movigh	GR3,0
}
$BB0_14:                                # %land.end14
                                        #   in Loop: Header=BB0_11 Depth=2
{
	eqi	 GR3, 0
}
{
	jnc	 $BB0_15
}
{
	nop
}
{
	nop
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
$BB0_17:                                # %while.end19
{
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
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR3, GR30, 6
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
{
	load32	GR5, GR30, 8
	load32	GR4, GR30, 9
}
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 2
}
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
	load32	GR4, GR30, 9
	load32	GR2, GR30, 4
}
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
	store32	GR3, GR30, 2
	addi	GR5, GR2, 1
}
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_18:                                # %return
{
	store32	GR2, GR30, 10
}
{
	load32	GR2, GR30, 10
	load32	GR31, GR30, 11
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
$tmp0:                                  # EmittedInsts:183
	.size	partition_1, ($tmp0)-partition_1


