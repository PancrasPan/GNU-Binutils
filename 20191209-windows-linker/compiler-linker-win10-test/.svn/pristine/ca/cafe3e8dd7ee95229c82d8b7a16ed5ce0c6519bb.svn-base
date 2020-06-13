	.text
	.file	".\\testcase_8slots\\SIMD_Intrinsic\\global_vector.ll"
	.globl	vmax_c
	.align	2
	.type	vmax_c,@function
vmax_c:                                 # @vmax_c
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -512
}
{
	vstore10	VR2, GR30, 256
	vstore10	VR3, GR30, 0
}
{
	vload8	VR0, GR30, 256
}
{
	nop
}
{
	nop
}
{
	vmax10	VR0, VR0, VR3
	addi	GR30, GR30, 512
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
	.size	vmax_c, ($tmp0)-vmax_c

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR5, GR30, 1
	movigh	GR3,%hi(init_vgb)
}
{
	movigl	GR3,%lo(init_vgb)
}
{
	vload16	VR0, GR3, 0
}
{
	nop
}
{
	nop
}
{
	movigh	GR3,%hi(uninit_vgb)
}
{
	movigl	GR3,%lo(uninit_vgb)
}
{
	vload16	VR1, GR3, 0
}
{
	nop
}
{
	nop
}
{
	vadd20	VR0, VR1, VR0
}
{
	vstore20	VR0, GR3, 0
	movigh	GR3,%hi(uninit_vst)
}
{
	movigl	GR3,%lo(uninit_vst)
	movigh	GR4,%hi(main.init_vst)
}
{
	movigl	GR4,%lo(main.init_vst)
}
{
	vload16	VR0, GR4, 0
}
{
	nop
}
{
	nop
}
{
	vstore20	VR0, GR3, 0
	movigh	GR3,%hi(uninit_st)
}
{
	movigl	GR3,%lo(uninit_st)
	movigl	GR4,10
}
{
	movigh	GR4,0
}
{
	store32	GR4, GR3, 0
	addi	GR30, GR30, 16
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
$tmp1:
	.size	main, ($tmp1)-main

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

	.type	main.init_vst,@object   # @main.init_vst
	.align	8
main.init_vst:
	.2byte	1                       # 0x1
	.2byte	1                       # 0x1
	.2byte	1                       # 0x1
	.2byte	1                       # 0x1
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
	.size	main.init_vst, 256

	.type	uninit_vgb,@object      # @uninit_vgb
	.comm	uninit_vgb,256,256
	.type	uninit_vst,@object      # @uninit_vst
	.local	uninit_vst
	.comm	uninit_vst,256,256
	.type	uninit_st,@object       # @uninit_st
	.local	uninit_st
	.comm	uninit_st,4,4
	.type	uninit_gb,@object       # @uninit_gb
	.comm	uninit_gb,4,4

