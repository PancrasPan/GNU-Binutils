	.text
	.file	"./_main/_main.ll"
	.globl	_main
	.align	2
	.type	_main,@function
_main:                                  # @_main
# BB#0:                                 # %entry
{
	movigl	GR30,0
}
{
	movigh	GR30,32
	movigh	GR31,47
}
{
	movigl	GR31,65520
	addi	GR30, GR30, -16
}
{
	store32	GR31, GR30, 3
}                                       # 4-byte Folded Spill
{
	call	main
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	load32	GR31, GR30, 3
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
	.size	_main, ($tmp0)-_main

	.type	_stump,@object          # @_stump
	.data
	.globl	_stump
_stump:
	.asciz	"TJ_421"
	.size	_stump, 7


