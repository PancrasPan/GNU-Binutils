	.text
	.file	"./testcase_8slots/global_vector.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	movigh	GR2,%hi(init_vgb)
}
{
	movigl	GR2,%lo(init_vgb)
}
{
	loadvh	VR0, GR2, 0
}
{
	movigh	GR2,%hi(uninit_vgb)
	loadvl	VR0, GR2, 0
}
{
	movigl	GR2,%lo(uninit_vgb)
}
{
	loadvh	VR1, GR2, 0
}
{
	loadvl	VR1, GR2, 0
}
{
	vadd20	VR0, VR1, VR0
}
{
	storevh	VR0, GR2, 0
}
{
	movigl	GR2,0
	storevl	VR0, GR2, 0
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

	.type	init_vgb,@object        # @init_vgb
	.data
	.globl	init_vgb
	.align	8
init_vgb:
	.2byte	1                       # 0x1
	.2byte	2                       # 0x2
	.2byte	3                       # 0x3
	.2byte	4                       # 0x4
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.2byte	0                       # 0x0
	.size	init_vgb, 256

	.type	uninit_vgb,@object      # @uninit_vgb
	.comm	uninit_vgb,256,256
	.type	uninit_gb,@object       # @uninit_gb
	.comm	uninit_gb,4,4

