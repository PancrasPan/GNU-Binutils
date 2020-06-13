	.text
	.file	"./testcase_4slots/staticvar.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 0
	movigh	GR2,%hi(init_s)
}
{
	movigl	GR2,%lo(init_s)
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(init_g)
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
	movigh	GR3,%hi(uninit_g)
}
{
	movigl	GR3,%lo(uninit_g)
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
	add	GR2, GR2, GR3
	movigh	GR3,%hi(main.init_s_main)
}
{
	movigl	GR3,%lo(main.init_s_main)
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
	add	GR2, GR2, GR3
}
{
	addi	GR2, GR2, 4
	movigh	GR3,%hi(uninit_s)
}
{
	movigl	GR3,%lo(uninit_s)
}
{
	store32	GR2, GR3, 0
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
$tmp0:                                  # EmittedInsts:28
	.size	main, ($tmp0)-main

	.type	init_g,@object          # @init_g
	.data
	.globl	init_g
	.align	2
init_g:
	.4byte	1                       # 0x1
	.size	init_g, 4

	.type	main.init_s_main,@object # @main.init_s_main
	.align	2
main.init_s_main:
	.4byte	3                       # 0x3
	.size	main.init_s_main, 4

	.type	init_s,@object          # @init_s
	.align	2
init_s:
	.4byte	2                       # 0x2
	.size	init_s, 4

	.type	uninit_g,@object        # @uninit_g
	.comm	uninit_g,4,4
	.type	uninit_s,@object        # @uninit_s
	.local	uninit_s
	.comm	uninit_s,4,4

