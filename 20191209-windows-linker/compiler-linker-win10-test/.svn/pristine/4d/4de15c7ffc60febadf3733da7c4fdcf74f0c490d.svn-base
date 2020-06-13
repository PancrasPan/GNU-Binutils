	.text
	.file	"./testcase_4slots/doublenestedloop.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_5:                                 # %for.inc5
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 2
}
$BB0_1:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
{
	store32	GR2, GR30, 1
}
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	lti	 GR2, 256
}
{
	jnc	 $BB0_6
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
	load32	GR2, GR30, 1
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
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigl	GR3,10
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
	movigh	GR4,%hi(a)
}
{
	movigl	GR4,%lo(a)
}
{
	add	GR3, GR4, GR3
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(sum)
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
	load32	GR2, GR30, 0
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
$BB0_3:                                 # %for.cond1
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	store32	GR2, GR30, 0
}
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	lti	 GR2, 256
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
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.end7
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR2, GR2, 0
	addi	GR30, GR30, 8
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
$tmp0:                                  # EmittedInsts:59
	.size	add, ($tmp0)-add


