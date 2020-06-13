	.text
	.file	"./testcase_8slots/1/local_var_args.ll"
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
}                                       # 4-byte Folded Spill
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movigl	GR2,1
	store32	GR2, GR30, 8
}
{
	movigh	GR2,0
}
{
	movigl	GR2,3
	store32	GR2, GR30, 7
}
{
	movigh	GR2,0
}
{
	movigl	GR2,2
	store32	GR2, GR30, 6
}
{
	movigh	GR2,0
}
{
	load32	GR5, GR30, 6
	load32	GR4, GR30, 7
	store32	GR2, GR30, 5
}
{
	movg2g	GR3,GR30
}
{
	store32	GR2, GR3, 2
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
	addi	GR30, GR30, 40
	load32	GR31, GR30, 9
	store32	GR2, GR30, 6
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


