	.text
	.file	"./testcase_4slots/local_vector.ll"
	.section	.rodata,"awM",@progbits
	.align	6
__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000300000003:
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -128
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 31
	store32	GR4, GR30, 30
}
{
	store32	GR5, GR30, 29
	movigh	GR3,%hi(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000300000003)
}
{
	movigl	GR3,%lo(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003000000030000000300000003)
}
{
	vload32	VR0, GR3, 0
}
{
	nop
}
{
	nop
}
{
	vstore40	VR0, GR30, 0
	movigh	GR3,%hi(vgb)
}
{
	movigl	GR3,%lo(vgb)
}
{
	vload32	VR1, GR3, 0
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR0, VR1
}
{
	vstore40	VR0, GR30, 0
	addi	GR30, GR30, 128
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
$tmp0:                                  # EmittedInsts:18
	.size	main, ($tmp0)-main

	.type	vgb,@object             # @vgb
	.data
	.globl	vgb
	.align	6
vgb:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.size	vgb, 64


