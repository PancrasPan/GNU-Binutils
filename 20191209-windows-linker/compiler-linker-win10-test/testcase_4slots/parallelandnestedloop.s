	.text
	.file	"./testcase_4slots/parallelandnestedloop.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	store32	GR4, GR30, 5
	store32	GR5, GR30, 4
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	sra	GR2, GR5, GR2
}
{
	store32	GR2, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
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
$BB0_7:                                 # %for.inc7
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 2
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
	store32	GR3, GR30, 2
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_5 Depth 2
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	lti	 GR3, 255
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR3, GR30, 3
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
$BB0_4:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=2
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR4, GR3
	load32	GR4, GR30, 5
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
	movigh	GR4,%hi(sum)
}
{
	movigl	GR4,%lo(sum)
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR5, GR3
}
{
	store32	GR3, GR4, 0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -2
}
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR3, GR30, 1
}
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	lt	 GR3, GR2
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
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %while.body
                                        #   in Loop: Header=BB0_5 Depth=2
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
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 3
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
	movigh	GR4,%hi(ex_array)
}
{
	movigl	GR4,%lo(ex_array)
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
	movigh	GR4,%hi(sum)
}
{
	movigl	GR4,%lo(sum)
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	sub	GR3, GR5, GR3
}
{
	store32	GR3, GR4, 0
}
$BB0_5:                                 # %while.cond
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	lti	 GR3, 255
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
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %do.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 2
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
	store32	GR3, GR30, 2
	movigh	GR3,%hi(bound)
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
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#9:                                 # %do.end
{
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR2, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
}
{
	store32	GR2, GR3, 0
	addi	GR30, GR30, 24
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
$tmp0:                                  # EmittedInsts:102
	.size	add, ($tmp0)-add


