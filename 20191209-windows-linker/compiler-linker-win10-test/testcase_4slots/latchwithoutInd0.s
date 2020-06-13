	.text
	.file	".\\HWlooptest\\fail\\latchwithoutInd0.ll"
	.globl	check
	.align	2
	.type	check,@function
check:                                  # @check
# BB#0:                                 # %entry
{
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	sl	GR2, GR5, GR2
}
{
	add	GR4, GR2, GR4
	addi	GR2, GR5, -1
	load32	GR3, GR30, 2
}
{
	nop
}
{
	addi	GR4, GR4, 4
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	addi	GR2, GR2, 1
}
{
	ge	 GR2, GR3
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
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	addi	GR5, GR4, 4
	load32	GR6, GR4, 0
}
{
	nop
}
{
	load32	GR4, GR4, -1
}
{
	le	 GR4, GR6
	movg2g	GR4,GR5
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
# BB#4:
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
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
$BB0_2:
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
	.size	check, ($tmp0)-check


