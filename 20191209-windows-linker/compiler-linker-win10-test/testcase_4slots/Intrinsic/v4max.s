	.text
	.file	"./testcase_4slots/Intrinsic/v4max.ll"
	.section	.rodata,"awM",@progbits
	.align	6
__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000003000000020000000100:
	.4byte	256                     # 0x100
	.4byte	512                     # 0x200
	.4byte	768                     # 0x300
	.4byte	1024                    # 0x400
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
	.section	.rodata,"awM",@progbits
	.align	6
__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000:
	.space	64
	.text
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -256
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 63
	movigh	GR3,%hi(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000003000000020000000100)
}
{
	movigl	GR3,%lo(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000003000000020000000100)
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
	vstore40	VR0, GR30, 32
	movigh	GR3,%hi(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
}
{
	movigl	GR3,%lo(__DSPVector@00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000)
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
	vstore40	VR0, GR30, 16
	vload32	VR1, GR30, 32
}
{
	nop
}
{
	nop
}
{
	vmax40	VR0, VR1, VR0
}
{
	vstore40	VR0, GR30, 0
	addi	GR30, GR30, 256
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

