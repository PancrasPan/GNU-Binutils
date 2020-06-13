	.text
	.file	"./testcase_8slots/pointer_global_var_args.ll"
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
}                                       # 4-byte Folded Spill
{
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	movigh	GR2,%hi(c)
	load32	GR4, GR2, 0
}
{
	movigl	GR2,%lo(c)
	movg2g	GR3,GR30
}
{
	movigh	GR2,%hi(b)
	store32	GR2, GR3, 2
}
{
	movigl	GR2,%lo(b)
}
{
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 4
}                                       # 4-byte Folded Spill
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
	load32	GR3, GR30, 4
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR30, GR30, 24
	load32	GR31, GR30, 5
	store32	GR2, GR3, 0
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

	.type	a,@object               # @a
	.data
	.globl	a
	.align	2
a:
	.4byte	1                       # 0x1
	.size	a, 4


