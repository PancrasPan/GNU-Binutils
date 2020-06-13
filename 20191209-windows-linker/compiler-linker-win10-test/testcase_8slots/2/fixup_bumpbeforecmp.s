	.text
	.file	"./testcase_8slots/2/fixup_bumpbeforecmp.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
}
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
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
	addi	GR3, GR2, 1
}
{
	movigl	GR3,256
	store32	GR3, GR30, 1
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
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
$BB0_2:                                 # %if.then
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
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
	sl	GR2, GR3, GR2
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
}
{
	add	GR2, GR2, GR3
}
{
	movigh	GR3,%hi(sum)
	load32	GR2, GR2, -1
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
# BB#4:                                 # %do.cond
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
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
$BB0_5:                                 # %do.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	addi	GR30, GR30, 8
	load32	GR2, GR2, 0
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


