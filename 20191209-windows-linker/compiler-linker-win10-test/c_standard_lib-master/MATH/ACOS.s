	.text
	.file	"./c_standard_lib-master/MATH/ACOS.ll"
	.globl	acos
	.align	2
	.type	acos,@function
acos:                                   # @acos
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
	store32	GR5, GR30, 5
}
{
	store32	GR4, GR30, 4
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
}
{
	call	_Asin
}
{
	nop
}
{
	nop
}
{
	load32	GR31, GR30, 7
	addi	GR30, GR30, 32
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
	.size	acos, ($tmp0)-acos


