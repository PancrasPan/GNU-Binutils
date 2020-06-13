	.text
	.file	".\\HWlooptest\\succ\\doublenestedloop0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
}
$BB0_1:                                 # %for.body3.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	movigl	GR5,256
}
{
	movigh	GR5,0
	movigh	GR4,%hi(sum)
}
{
	movigl	GR4,%lo(sum)
}
{
	load32	GR6, GR4, 0
}
{
	nop
}
{
	movg2g	GR7,GR3
}
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR8, GR7, 0
}
{
	nop
}
{
	nop
}
{
	add	GR6, GR6, GR8
	addi	GR7, GR7, 4
}
{
	addi	GR5, GR5, -1
}
{
	neq	 GR5, GR2
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
# BB#3:                                 # %for.inc5
                                        #   in Loop: Header=BB0_1 Depth=1
{
	store32	GR6, GR4, 0
	movigl	GR5,2056
}
{
	movigh	GR5,0
}
{
	add	GR3, GR3, GR5
	addi	GR2, GR2, 2
	movigl	GR5,256
}
{
	movigh	GR5,0
}
{
	lt	 GR2, GR5
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
# BB#4:                                 # %for.end7
{
	load32	GR2, GR4, 0
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


