	.text
	.file	"./testcase_8slots/ch6_1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
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

	.type	gI,@object              # @gI
	.data
	.globl	gI
	.align	2
gI:
	.4byte	100                     # 0x64
	.size	gI, 4


