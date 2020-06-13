	.text
	.file	"./c_standard_lib-master/MATH/LOG.ll"
	.globl	log
	.align	2
	.type	log,@function
log:                                    # @log
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
}
{
	call	_Log
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
	.size	log, ($tmp0)-log


