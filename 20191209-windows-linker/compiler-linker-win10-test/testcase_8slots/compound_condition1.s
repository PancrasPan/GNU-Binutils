	.text
	.file	"./testcase_8slots/compound_condition1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 5
	store32	GR2, GR30, 4
}
$BB0_1:                                 # %while.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 4
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
	addi	GR4, GR2, 1
	movigl	GR5,4
}
{
	movigh	GR5,0
}
{
	lt	 GR4, GR5
	movg2g	GR6,GR3
}
{
	movg2g	GR7,GR4
}
{
	store32	GR2, GR30, 3
	store32	GR3, GR30, 2
}
{
	store32	GR4, GR30, 1
	store32	GR7, GR30, 4
}
{
	store32	GR6, GR30, 5
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %while.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,4
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	lt	 GR3, GR2
	load32	GR4, GR30, 1
}
{
	nop
}
{
	store32	GR3, GR30, 5
	store32	GR4, GR30, 4
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
$BB0_2:                                 # %while.end
{
	movigl	GR2,3
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR2, GR3
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
$tmp0:
	.size	main, ($tmp0)-main


