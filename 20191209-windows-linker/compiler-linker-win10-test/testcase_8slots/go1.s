	.text
	.file	"./testcase_8slots/go1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(gO2)
}
{
	movigl	GR2,%lo(gO2)
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


