	.text
	.file	"./testcase_8slots/ch6_1p.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(gI2)
}
{
	movigl	GR2,%lo(gI2)
}
{
	movigh	GR3,%hi(gI)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(gI)
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
	add	GR2, GR3, GR2
	movigh	GR3,%hi(gI3)
}
{
	movigl	GR3,%lo(gI3)
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
	add	GR2, GR2, GR3
	movigh	GR3,%hi(gI4)
}
{
	movigl	GR3,%lo(gI4)
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
	add	GR2, GR2, GR3
	movigh	GR3,%hi(gI5)
}
{
	movigl	GR3,%lo(gI5)
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
	add	GR2, GR2, GR3
}
{
	addi	GR2, GR2, 2
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

	.type	gI,@object              # @gI
	.data
	.globl	gI
	.align	2
gI:
	.4byte	100                     # 0x64
	.size	gI, 4

	.type	gI2,@object             # @gI2
	.globl	gI2
	.align	2
gI2:
	.4byte	1                       # 0x1
	.size	gI2, 4

	.type	gI3,@object             # @gI3
	.globl	gI3
	.align	2
gI3:
	.4byte	5                       # 0x5
	.size	gI3, 4

	.type	gI4,@object             # @gI4
	.globl	gI4
	.align	2
gI4:
	.4byte	10                      # 0xa
	.size	gI4, 4

	.type	gI5,@object             # @gI5
	.globl	gI5
	.align	2
gI5:
	.4byte	20                      # 0x14
	.size	gI5, 4


