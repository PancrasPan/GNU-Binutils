	.text
	.file	"./c_standard_lib-master/_DUMMY/SYSTEM.ll"
	.globl	system
	.align	2
	.type	system,@function
system:                                 # @system
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	movigl	GR2,0
}
{
	movigh	GR2,0
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
	.size	system, ($tmp0)-system


