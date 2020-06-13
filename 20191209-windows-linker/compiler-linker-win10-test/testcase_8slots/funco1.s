	.text
	.file	"./testcase_8slots/funco1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR31, GR30, 3
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(gO1)
}
{
	movigl	GR2,%lo(gO1)
}
{
	movigl	GR4,1
	load32	GR5, GR2, 0
}
{
	movigh	GR4,0
}
{
	call	funcO
}
{
	nop
}
{
	nop
}
{
	movigh	GR4,%hi(gO2)
}
{
	movigl	GR4,%lo(gO2)
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	addi	GR30, GR30, 16
	load32	GR31, GR30, 3
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


