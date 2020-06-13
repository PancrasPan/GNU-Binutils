	.text
	.file	"./testcase_4slots/testa.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
	store32	GR2, GR30, 8
	movigh	GR2,%hi(init_sA)
}
{
	movigl	GR2,%lo(init_sA)
}
{
	load32	GR5, GR2, 0
	movigh	GR2,%hi(init_gA)
}
{
	movigl	GR2,%lo(init_gA)
}
{
	load32	GR4, GR2, 0
	movigh	GR2,%hi(init_gB)
}
{
	movigl	GR2,%lo(init_gB)
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(uninit_gB)
}
{
	movigl	GR3,%lo(uninit_gB)
}
{
	store32	GR3, GR30, 5
}
{
	store32	GR2, GR30, 4
	movigh	GR2,%hi(main.uninit_sA)
}
{
	movigl	GR2,%lo(main.uninit_sA)
}
{
	store32	GR2, GR30, 3
	movigh	GR2,%hi(uninit_gA)
}
{
	movigl	GR2,%lo(uninit_gA)
}
{
	store32	GR2, GR30, 2
}
{
	call	testb
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 7
	load32	GR2, GR30, 6
}
{
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
$tmp0:                                  # EmittedInsts:25
	.size	main, ($tmp0)-main

	.type	init_gA,@object         # @init_gA
	.data
	.globl	init_gA
	.align	2
init_gA:
	.4byte	1                       # 0x1
	.size	init_gA, 4

	.type	main.uninit_sA,@object  # @main.uninit_sA
	.local	main.uninit_sA
	.comm	main.uninit_sA,4,4
	.type	init_sA,@object         # @init_sA
	.align	2
init_sA:
	.4byte	2                       # 0x2
	.size	init_sA, 4

	.type	uninit_gA,@object       # @uninit_gA
	.comm	uninit_gA,4,4

