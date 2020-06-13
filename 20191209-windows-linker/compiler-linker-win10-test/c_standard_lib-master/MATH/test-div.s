	.text
	.file	"./c_standard_lib-master/MATH/test-div.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	store32	GR2, GR30, 6
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	movigl	GR5,3
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR30, 4
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	call	__dsp_i32sdiv
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
	load32	GR2, GR30, 2
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
	.size	main, ($tmp0)-main


