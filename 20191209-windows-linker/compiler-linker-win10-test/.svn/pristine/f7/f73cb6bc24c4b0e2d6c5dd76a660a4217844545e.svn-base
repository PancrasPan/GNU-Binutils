	.text
	.file	"./testcase_8slots/func_vector.ll"
	.globl	vsum
	.align	2
	.type	vsum,@function
vsum:                                   # @vsum
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -512
}
{
	loadvh	VR0, GR30, 3
}
{
	loadvl	VR0, GR30, 3
}
{
	vadd20	VR0, VR3, VR0
}
{
	movigh	GR2,%hi(init_vgb)
	vadd20	VR0, VR0, VR2
}
{
	movigl	GR2,%lo(init_vgb)
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
	storevl	VR0, GR2, 0
}
                                        # implicit-def: V0
{
	addi	GR30, GR30, 512
	store32	VR3, GR30, 64
	store32	VR2, GR30, 0
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
	.size	vsum, ($tmp0)-vsum

	.type	init_vgb,@object        # @init_vgb
	.comm	init_vgb,256,256

