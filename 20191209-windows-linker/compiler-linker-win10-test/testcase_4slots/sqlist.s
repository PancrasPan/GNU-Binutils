	.text
	.file	"./testcase_4slots/sqlist.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 13
	addi	GR2, GR30, 8
}
{
	store32	GR2, GR30, 1
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
$BB0_2:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR3,2
}
{
	movigh	GR3,0
	load32	GR4, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR4, GR3
}
{
	add	GR3, GR2, GR3
}
{
	store32	GR4, GR3, 0
	load32	GR3, GR30, 0
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR3, GR30, 0
}
{
	load32	GR3, GR30, 0
}
{
	nop
}
{
	lti	 GR3, 10
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
	movigl	GR2,10
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 12
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 10
	addi	GR30, GR30, 56
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
$tmp0:                                  # EmittedInsts:33
	.size	main, ($tmp0)-main


