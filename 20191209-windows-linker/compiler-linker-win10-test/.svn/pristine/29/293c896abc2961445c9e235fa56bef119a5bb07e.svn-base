	.text
	.file	"./testcase_4slots/Intrinsic/func_vector.ll"
	.globl	vsum
	.align	2
	.type	vsum,@function
vsum:                                   # @vsum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -256
}
{
	vload32	VR0, GR30, 80
}
{
	nop
}
{
	nop
}
{
	vstore40	VR2, GR30, 32
	vstore40	VR3, GR30, 16
}
{
	vstore40	VR0, GR30, 0
	vload32	VR1, GR30, 16
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR1, VR0
	vload32	VR1, GR30, 32
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR0, VR1
	movigh	GR2,%hi(init_vgb)
}
{
	movigl	GR2,%lo(init_vgb)
}
{
	vload32	VR1, GR2, 0
}
{
	nop
}
{
	nop
}
{
	vadd40	VR0, VR1, VR0
}
{
	vstore40	VR0, GR2, 0
	load32	GR2, GR30, 63
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
$tmp0:                                  # EmittedInsts:21
	.size	vsum, ($tmp0)-vsum

	.type	init_vgb,@object        # @init_vgb
	.comm	init_vgb,64,64

