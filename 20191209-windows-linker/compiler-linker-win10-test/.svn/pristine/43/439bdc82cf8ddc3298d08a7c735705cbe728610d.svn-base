	.text
	.file	"./testcase_8slots/datarel2.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(g2)
}
{
	movigl	GR2,%lo(g2)
}
{
	load32	GR3, GR2, 0
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
{
	store32	GR3, GR2, 0
}
                                        # implicit-def: V0
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

	.type	g2,@object              # @g2
	.comm	g2,4,4

