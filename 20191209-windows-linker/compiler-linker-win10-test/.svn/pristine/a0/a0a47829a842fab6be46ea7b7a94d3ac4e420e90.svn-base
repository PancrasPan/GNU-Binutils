	.text
	.file	"./testcase_8slots/global.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR2, 1
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	load32	GR4, GR2, 2
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
	movigh	GR4,%hi(sum1)
}
{
	movigl	GR4,%lo(sum1)
}
{
	movigh	GR3,%hi(c)
	store32	GR3, GR4, 0
}
{
	movigl	GR3,%lo(c)
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	load32	GR5, GR2, 0
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR4, GR3, 1
	store32	GR4, GR2, 0
}
{
	nop
}
{
	load32	GR5, GR2, 1
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR3, GR3, 2
	store32	GR4, GR2, 1
}
{
	nop
}
{
	load32	GR4, GR2, 2
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
}
{
	movigl	GR2,0
	store32	GR3, GR2, 2
}
{
	movigh	GR2,0
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
	.comm	a,12,4
	.type	sum1,@object            # @sum1
	.comm	sum1,4,4

