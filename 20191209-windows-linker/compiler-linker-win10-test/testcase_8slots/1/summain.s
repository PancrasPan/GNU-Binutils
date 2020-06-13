	.text
	.file	"./testcase_8slots/1/summain.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
	store32	GR2, GR30, 3
}
{
	call	add
}
{
	nop
}
{
	nop
}
{
	addi	GR30, GR30, 24
	load32	GR31, GR30, 5
	store32	GR2, GR30, 3
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
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.4byte	6                       # 0x6
	.4byte	7                       # 0x7
	.4byte	8                       # 0x8
	.4byte	9                       # 0x9
	.4byte	10                      # 0xa
	.4byte	11                      # 0xb
	.4byte	12                      # 0xc
	.4byte	13                      # 0xd
	.4byte	14                      # 0xe
	.4byte	15                      # 0xf
	.4byte	16                      # 0x10
	.4byte	17                      # 0x11
	.4byte	18                      # 0x12
	.4byte	19                      # 0x13
	.4byte	20                      # 0x14
	.size	a, 80

	.type	size,@object            # @size
	.globl	size
	.align	2
size:
	.4byte	20                      # 0x14
	.size	size, 4


