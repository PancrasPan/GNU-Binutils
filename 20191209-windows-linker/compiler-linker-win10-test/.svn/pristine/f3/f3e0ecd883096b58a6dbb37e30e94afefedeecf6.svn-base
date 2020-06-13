	.text
	.file	"./testcase_4slots/qsort.ll"
	.globl	qsort
	.align	2
	.type	qsort,@function
qsort:                                  # @qsort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
	load32	GR2, GR30, 16
}
{
	store32	GR4, GR30, 11
	store32	GR5, GR30, 10
}
{
	store32	GR2, GR30, 9
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR2, GR3
}
{
	lti	 GR2, 1
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
# BB#2:                                 # %if.end
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
	store32	GR2, GR30, 8
	load32	GR2, GR30, 9
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
{
	store32	GR2, GR30, 7
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
	load32	GR4, GR30, 11
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
$BB0_8:                                 # %if.then15
                                        #   in Loop: Header=BB0_3 Depth=1
{
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
	load32	GR4, GR30, 11
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
	store32	GR3, GR30, 5
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
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	load32	GR5, GR30, 7
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR2
}
{
	add	GR4, GR4, GR5
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 0
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
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 0
}
$BB0_3:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_5 Depth 2
{
	load32	GR3, GR30, 7
}
{
	nop
}
{
	load32	GR4, GR30, 8
}
{
	ge	 GR4, GR3
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
$BB0_4:                                 # %while.cond2
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 7
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 11
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
	gt	 GR3, GR4
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
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 8
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
	store32	GR3, GR30, 8
	load32	GR4, GR30, 7
}
{
	ge	 GR3, GR4
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
# BB#6:                                 # %while.body8
                                        #   in Loop: Header=BB0_5 Depth=2
{
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
	load32	GR4, GR30, 11
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
	lt	 GR3, GR4
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
$BB0_7:                                 # %while.end13
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 7
}
{
	nop
}
{
	load32	GR4, GR30, 8
}
{
	ge	 GR4, GR3
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
{
	jmp	$BB0_8
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %while.end21
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
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 11
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	load32	GR5, GR30, 7
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR2
}
{
	add	GR4, GR4, GR5
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR3, 0
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
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 11
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
	load32	GR5, GR30, 10
	load32	GR4, GR30, 11
}
{
	load32	GR2, GR30, 7
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
	call	qsort
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 11
	load32	GR2, GR30, 7
}
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
	store32	GR3, GR30, 2
	addi	GR5, GR2, 1
}
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_10
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
$BB0_10:                                # %return
{
	store32	GR2, GR30, 12
}
{
	load32	GR2, GR30, 12
	load32	GR31, GR30, 13
	addi	GR30, GR30, 56
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
$tmp0:                                  # EmittedInsts:177
	.size	qsort, ($tmp0)-qsort


