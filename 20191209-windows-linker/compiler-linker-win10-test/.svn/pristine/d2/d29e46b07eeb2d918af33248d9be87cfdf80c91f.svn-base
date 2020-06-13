	.text
	.file	"./testcase_8slots/global_var_args.ll"
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
}
{
	movigh	GR3,%hi(b)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(b)
}
{
	load32	GR5, GR3, 0
}
{
	movg2g	GR6,GR30
}
{
	store32	GR2, GR6, 2
	store32	GR3, GR30, 4
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


