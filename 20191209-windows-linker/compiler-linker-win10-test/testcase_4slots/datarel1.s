	.text
	.file	"./testcase_4slots/datarel1.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	movigh	GR3,%hi(pa)
}
{
	movigl	GR3,%lo(pa)
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	nop
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR5, 1
}
{
	store32	GR5, GR4, 0
	movigh	GR4,%hi(pb)
}
{
	movigl	GR4,%lo(pb)
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR5, -1
}
{
	store32	GR5, GR4, 0
	movigh	GR4,%hi(pg2)
}
{
	movigl	GR4,%lo(pg2)
}
{
	load32	GR4, GR4, 0
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR4, 0
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
$tmp0:                                  # EmittedInsts:33
	.size	main, ($tmp0)-main

	.type	pg2,@object             # @pg2
	.data
	.globl	pg2
	.align	2
pg2:
	.4byte	g2
	.size	pg2, 4

	.type	pa,@object              # @pa
	.align	2
pa:
	.4byte	a
	.size	pa, 4

	.type	pb,@object              # @pb
	.align	2
pb:
	.4byte	b
	.size	pb, 4

	.type	b,@object               # @b
	.local	b
	.comm	b,4,4
	.type	a,@object               # @a
	.align	2
a:
	.4byte	1                       # 0x1
	.size	a, 4


