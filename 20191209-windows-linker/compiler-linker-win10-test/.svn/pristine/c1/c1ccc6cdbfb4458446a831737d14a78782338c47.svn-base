	.text
	.file	"./testcase_4slots/bump_reg.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
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
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
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
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
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
	load32	GR2, GR30, 1
}
{
	nop
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
{
	add	GR2, GR3, GR2
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
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
	lti	 GR2, 255
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
# BB#3:                                 # %for.end
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
$tmp0:                                  # EmittedInsts:39
	.size	add, ($tmp0)-add


