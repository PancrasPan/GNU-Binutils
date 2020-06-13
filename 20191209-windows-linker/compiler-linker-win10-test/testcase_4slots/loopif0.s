	.text
	.file	".\\HWlooptest\\succ\\loopif0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	lti	 GR5, 1
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
# BB#2:                                 # %for.body.lr.ph
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	movigh	GR6,%hi(ExArray)
}
{
	movigl	GR6,%lo(ExArray)
	movigh	GR2,%hi(threshold)
}
{
	movigl	GR2,%lo(threshold)
}
{
	load32	GR7, GR2, 0
	movigh	GR2,%hi(bound)
}
{
	movigl	GR2,%lo(bound)
}
{
	load32	GR8, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR4, 0
}
{
	ge	 GR2, GR8
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
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR6, 0
	movigh	GR9,%hi(sum)
}
{
	movigl	GR9,%lo(sum)
}
{
	load32	GR10, GR9, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR10, GR2
}
{
	store32	GR2, GR9, 0
	gt	 GR2, GR7
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
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.else
                                        #   in Loop: Header=BB0_3 Depth=1
{
	movigh	GR9,%hi(sum)
}
{
	movigl	GR9,%lo(sum)
}
{
	load32	GR10, GR9, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR10, GR2
}
{
	store32	GR2, GR9, 0
}
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
{
	addi	GR4, GR4, 8
	addi	GR6, GR6, 8
}
{
	addi	GR3, GR3, 2
}
{
	lt	 GR3, GR5
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
$BB0_7:                                 # %for.end
{
	ret	GR31
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %entry.for.end_crit_edge
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR2, GR2, 0
}
{
	nop
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


