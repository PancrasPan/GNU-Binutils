	.text
	.file	".\\HWlooptest\\succ\\exitnotfallthrough0.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	eqi	 GR4, 0
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
# BB#1:                                 # %for.cond.preheader
{
	movigl	GR3,0
}
{
	movigh	GR3,0
	movigh	GR4,%hi(a)
}
{
	movigl	GR4,%lo(a)
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
	nop
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
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
	add	GR2, GR2, GR5
	addi	GR4, GR4, 8
}
{
	addi	GR3, GR3, 2
	movigl	GR5,256
}
{
	movigh	GR5,0
}
{
	lt	 GR3, GR5
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
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.else
{
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	load32	GR2, GR2, 1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %if.end
{
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
}
{
	load32	GR3, GR3, 255
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
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


