	.text
	.file	"./c_standard_lib-master/_DUMMY/XFSPOS.ll"
	.globl	_Fspos
	.align	2
	.type	_Fspos,@function
_Fspos:                                 # @_Fspos
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	load32	GR2, GR30, 7
	load32	GR3, GR30, 6
	store32	GR4, GR30, 3
	store32	GR5, GR30, 2
}
{
	store32	GR3, GR30, 1
	store32	GR2, GR30, 0
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	addi	GR30, GR30, 16
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
	.size	_Fspos, ($tmp0)-_Fspos


