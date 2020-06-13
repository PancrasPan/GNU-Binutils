	.text
	.file	"./testcase_4slots/go2.ll"
	.globl	funcO
	.align	2
	.type	funcO,@function
funcO:                                  # @funcO
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	store32	GR5, GR30, 0
}
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	mul32	GR2, GR2, GR5
	addi	GR30, GR30, 8
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
$tmp0:                                  # EmittedInsts:9
	.size	funcO, ($tmp0)-funcO

	.type	gO1,@object             # @gO1
	.data
	.globl	gO1
	.align	2
gO1:
	.4byte	10                      # 0xa
	.size	gO1, 4

	.type	gO2,@object             # @gO2
	.globl	gO2
	.align	2
gO2:
	.4byte	20                      # 0x14
	.size	gO2, 4

	.type	gO0,@object             # @gO0
	.comm	gO0,4,4

