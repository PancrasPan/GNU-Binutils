	.text
	.file	"./c_standard_lib-master/_DUMMY/XFGPOS.ll"
	.globl	_Fgpos
	.align	2
	.type	_Fgpos,@function
_Fgpos:                                 # @_Fgpos
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	store32	GR5, GR30, 0
	movigl	GR2,-1
}
{
	movigh	GR2,-1
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
$tmp0:
	.size	_Fgpos, ($tmp0)-_Fgpos


