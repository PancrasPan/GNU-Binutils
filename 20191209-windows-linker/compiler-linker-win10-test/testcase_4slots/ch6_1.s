	.text
	.file	"./testcase_4slots/ch6_1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	movigh	GR2,%hi(gI)
}
{
	movigl	GR2,%lo(gI)
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
{
	addi	GR2, GR2, 2
}
{
	store32	GR2, GR30, 1
	addi	GR30, GR30, 16
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
$tmp0:                                  # EmittedInsts:14
	.size	main, ($tmp0)-main

	.type	gI,@object              # @gI
	.data
	.globl	gI
	.align	2
gI:
	.4byte	100                     # 0x64
	.size	gI, 4


