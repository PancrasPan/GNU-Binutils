	.text
	.file	"./testcase_8slots/testa.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(init_gA)
}
{
	movigl	GR2,%lo(init_gA)
}
{
	movigh	GR2,%hi(init_gB)
	load32	GR4, GR2, 0
}
{
	movigl	GR2,%lo(init_gB)
}
{
	movigh	GR3,%hi(uninit_gB)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(uninit_gB)
	movg2g	GR5,GR30
}
{
	store32	GR3, GR5, 5
}
{
	movigh	GR2,%hi(main.uninit_sA)
	store32	GR2, GR5, 4
}
{
	movigl	GR2,%lo(main.uninit_sA)
}
{
	movigh	GR2,%hi(uninit_gA)
	store32	GR2, GR5, 3
}
{
	movigl	GR2,%lo(uninit_gA)
}
{
	movigl	GR5,2
	store32	GR2, GR5, 2
}
{
	movigh	GR5,0
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
	movigl	GR3,0
}
{
	movigh	GR3,0
	store32	GR2, GR30, 6
}
{
	movg2g	GR2,GR3
}
{
	addi	GR30, GR30, 32
	load32	GR31, GR30, 7
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
	.type	uninit_gA,@object       # @uninit_gA
	.comm	uninit_gA,4,4

