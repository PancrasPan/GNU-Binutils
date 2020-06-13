	.text
	.file	".\\HWlooptest\\succ\\condition_neq0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	movigl	GR4,0
}
{
	movigh	GR4,0
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
	nop
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR5,%hi(a)
}
{
	movigl	GR5,%lo(a)
}
{
	add	GR5, GR5, GR4
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR5
	addi	GR4, GR4, 8
}
{
	neqi	 GR4, 1024
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
# BB#2:                                 # %for.end
{
	store32	GR2, GR3, 0
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


