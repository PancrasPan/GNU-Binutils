	.text
	.file	"./testcase_4slots/main.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	store32	GR31, GR30, 5
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
}
{
	call	main_xx
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
	load32	GR31, GR30, 5
	addi	GR30, GR30, 24
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
$tmp0:                                  # EmittedInsts:11
	.size	main, ($tmp0)-main

	.type	_stump,@object          # @_stump
	.data
	.globl	_stump
_stump:
	.asciz	"TJ_421"
	.size	_stump, 7


