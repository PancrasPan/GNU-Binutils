	.text
	.file	".\\testcase_8slots\\SIMD_Intrinsic\\func_vector.ll"
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

	.globl	vsum
	.align	2
	.type	vsum,@function
vsum:                                   # @vsum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -1024
}
{
	vload16	VR0, GR30, 1280
}
{
	nop
}
{
	nop
}
{
	vstore20	VR2, GR30, 512
	vstore20	VR3, GR30, 256
}
{
	vstore20	VR0, GR30, 0
	vload16	VR1, GR30, 256
}
{
	nop
}
{
	nop
}
{
	vadd20	VR0, VR1, VR0
	vload16	VR1, GR30, 512
}
{
	nop
}
{
	nop
}
{
	vadd20	VR0, VR0, VR1
	movigh	GR2,%hi(init_vgb)
}
{
	movigl	GR2,%lo(init_vgb)
}
{
	vload16	VR1, GR2, 0
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
	vstore20	VR0, GR2, 0
	load32	GR2, GR30, 255
	addi	GR30, GR30, 1024
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
	.size	vsum, ($tmp1)-vsum

	.type	init_vgb,@object        # @init_vgb
	.comm	init_vgb,256,256

