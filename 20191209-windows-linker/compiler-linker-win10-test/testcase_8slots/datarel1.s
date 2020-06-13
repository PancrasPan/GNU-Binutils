	.text
	.file	"./testcase_8slots/datarel1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(pg2)
}
{
	movigl	GR2,%lo(pg2)
}
{
	movigl	GR3,3
	load32	GR2, GR2, 0
}
{
	movigh	GR3,0
}
{
	movigl	GR2,0
	store32	GR3, GR2, 0
}
{
	movigh	GR2,0
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

	.type	pg2,@object             # @pg2
	.data
	.globl	pg2
	.align	2
pg2:
	.4byte	g2
	.size	pg2, 4


