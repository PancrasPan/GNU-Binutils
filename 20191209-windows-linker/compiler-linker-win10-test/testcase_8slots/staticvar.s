	.text
	.file	"./testcase_8slots/staticvar.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(uninit_g)
}
{
	movigl	GR2,%lo(uninit_g)
}
{
	movigh	GR3,%hi(init_g)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(init_g)
}
{
	load32	GR3, GR3, 0
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
{
	addi	GR2, GR2, 9
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

	.type	init_g,@object          # @init_g
	.data
	.globl	init_g
	.align	2
init_g:
	.4byte	1                       # 0x1
	.size	init_g, 4

	.type	uninit_g,@object        # @uninit_g
	.comm	uninit_g,4,4

