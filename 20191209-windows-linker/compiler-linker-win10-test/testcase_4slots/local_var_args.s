	.text
	.file	"./testcase_4slots/local_var_args.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 8
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
	movigl	GR2,3
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	load32	GR5, GR30, 6
}
{
	load32	GR4, GR30, 7
}
{
	nop
}
{
	store32	GR2, GR30, 2
}
{
	call	outFunct
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
$tmp0:                                  # EmittedInsts:20
	.size	main, ($tmp0)-main


