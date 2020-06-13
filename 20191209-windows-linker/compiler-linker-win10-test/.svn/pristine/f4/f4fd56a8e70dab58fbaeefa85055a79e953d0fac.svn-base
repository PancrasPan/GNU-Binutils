	.text
	.file	"./testcase_8slots/local_vector_return.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(vla)
}
{
	movigl	GR2,%lo(vla)
	movigh	GR3,%hi(vlb)
}
{
	movigl	GR3,%lo(vlb)
}
{
	loadvh	VR0, GR3, 0
}
{
	loadvl	VR0, GR3, 0
}
{
	loadvh	VR1, GR2, 0
}
{
	loadvl	VR1, GR2, 0
}
{
	vadd40	VR1, VR1, VR0
}
{
	storevh	VR1, GR2, 0
}
{
	vadd40	VR0, VR0, VR1
	storevl	VR1, GR2, 0
}
{
	storevh	VR0, GR3, 0
}
{
	movigl	GR2,0
	storevl	VR0, GR3, 0
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

	.type	vla,@object             # @vla
	.data
	.globl	vla
	.align	8
vla:
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
	.size	vla, 256

	.type	vlb,@object             # @vlb
	.globl	vlb
	.align	8
vlb:
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
	.size	vlb, 256


