	.text
	.file	"./testcase_4slots/global_var_args.ll"
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
	store32	GR2, GR30, 6
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	load32	GR4, GR2, 0
	movigh	GR2,%hi(c)
}
{
	movigl	GR2,%lo(c)
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(b)
}
{
	movigl	GR3,%lo(b)
}
{
	store32	GR3, GR30, 5
	load32	GR5, GR3, 0
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
	load32	GR3, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR3, 0
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
$tmp0:                                  # EmittedInsts:22
	.size	main, ($tmp0)-main

	.type	a,@object               # @a
	.data
	.globl	a
	.align	2
a:
	.4byte	1                       # 0x1
	.size	a, 4


