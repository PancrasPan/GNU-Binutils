	.text
	.file	"./testcase_8slots/1/parallelandnestedloop.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	movigl	GR2,1
	store32	GR4, GR30, 7
	store32	GR5, GR30, 6
}
{
	movigh	GR2,0
}
{
	sra	GR2, GR5, GR2
}
{
	movigl	GR2,0
	store32	GR2, GR30, 5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
	store32	GR5, GR30, 2
}
{
	store32	GR4, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_7 Depth 2
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	lti	 GR2, 255
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
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
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
	store32	GR2, GR30, 3
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	lt	 GR3, GR2
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
                                        #   in Loop: Header=BB0_3 Depth=2
{
	movigl	GR2,2
}
{
	movigh	GR2,0
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
	load32	GR3, GR30, 7
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
	movigh	GR3,%hi(sum)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(sum)
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
	add	GR2, GR4, GR2
}
{
	store32	GR2, GR3, 0
}
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -2
}
{
	store32	GR2, GR30, 3
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
$BB0_6:                                 # %for.end
                                        #   in Loop: Header=BB0_1 Depth=1
$BB0_7:                                 # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	lti	 GR2, 255
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
$BB0_8:                                 # %while.body
                                        #   in Loop: Header=BB0_7 Depth=2
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
	addi	GR3, GR2, 1
}
{
	movigl	GR3,2
	store32	GR3, GR30, 5
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	movigh	GR3,%hi(ex_array)
}
{
	movigl	GR3,%lo(ex_array)
}
{
	add	GR2, GR3, GR2
}
{
	movigh	GR3,%hi(sum)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(sum)
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
	sub	GR2, GR4, GR2
}
{
	store32	GR2, GR3, 0
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
$BB0_9:                                 # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
# BB#10:                                # %for.inc7
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 4
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
	store32	GR2, GR30, 4
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
$BB0_11:                                # %for.end9
$BB0_12:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
# BB#13:                                # %do.cond
                                        #   in Loop: Header=BB0_12 Depth=1
{
	load32	GR2, GR30, 4
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
	movigh	GR3,%hi(bound)
	store32	GR3, GR30, 4
}
{
	movigl	GR3,%lo(bound)
}
{
	load32	GR3, GR3, 0
}
{
	lt	 GR2, GR3
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
$BB0_14:                                # %do.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR3, GR2, 0
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
	add	GR3, GR3, GR4
}
{
	store32	GR3, GR2, 0
}
{
	addi	GR30, GR30, 32
	movg2g	GR2,GR3
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
	.size	add, ($tmp0)-add


