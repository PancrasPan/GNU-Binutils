	.text
	.file	"./testcase_4slots/binary_insert.ll"
	.globl	binary_insert
	.align	2
	.type	binary_insert,@function
binary_insert:                          # @binary_insert
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	load32	GR2, GR30, 12
	store32	GR4, GR30, 8
}
{
	store32	GR5, GR30, 7
	store32	GR2, GR30, 6
}
{
	load32	GR3, GR30, 7
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
	jmp	$BB0_15
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.end
{
	load32	GR2, GR30, 7
}
{
	nop
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
$BB0_13:                                # %for.inc18
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR3, GR30, 5
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
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #       Child Loop BB0_6 Depth 3
                                        #     Child Loop BB0_11 Depth 2
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 6
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB0_14
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 8
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
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
	load32	GR3, GR30, 1
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
$BB0_9:                                 # %if.else
                                        #   in Loop: Header=BB0_5 Depth=2
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 2
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
$BB0_8:                                 # %if.then6
                                        #   in Loop: Header=BB0_6 Depth=3
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
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 3
}
$BB0_6:                                 # %while.cond
                                        #   Parent Loop BB0_3 Depth=1
                                        #     Parent Loop BB0_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	load32	GR4, GR30, 3
}
{
	gt	 GR4, GR3
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
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB0_6 Depth=3
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	movigl	GR4,31
}
{
	movigh	GR4,0
}
{
	srl	GR4, GR3, GR4
}
{
	add	GR3, GR3, GR4
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	sra	GR3, GR3, GR4
}
{
	store32	GR3, GR30, 4
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 8
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
	load32	GR4, GR30, 5
}
{
	gt	 GR3, GR4
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
{
	jmp	$BB0_8
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %while.end
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
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
$BB0_12:                                # %for.inc
                                        #   in Loop: Header=BB0_11 Depth=2
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
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 8
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
	nop
}
{
	store32	GR4, GR3, 1
}
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %for.cond11
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	load32	GR4, GR30, 0
}
{
	lt	 GR4, GR3
}
{
	jnc	 $BB0_12
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_13
}
{
	nop
}
{
	nop
}
$BB0_14:                                # %for.end19
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_15:                                # %return
{
	store32	GR2, GR30, 9
}
{
	load32	GR2, GR30, 9
	addi	GR30, GR30, 40
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
$tmp0:                                  # EmittedInsts:140
	.size	binary_insert, ($tmp0)-binary_insert


