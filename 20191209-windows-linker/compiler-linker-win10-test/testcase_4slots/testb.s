	.text
	.file	"./testcase_4slots/testb.ll"
	.globl	testb
	.align	2
	.type	testb,@function
testb:                                  # @testb
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	load32	GR2, GR30, 15
}
{
	load32	GR3, GR30, 14
	load32	GR6, GR30, 13
}
{
	load32	GR7, GR30, 12
	store32	GR4, GR30, 8
}
{
	store32	GR5, GR30, 7
	store32	GR7, GR30, 6
}
{
	store32	GR6, GR30, 5
	store32	GR3, GR30, 4
}
{
	store32	GR2, GR30, 3
	movigl	GR2,10
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 6
}
{
	nop
}
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	movigh	GR3,%hi(init_gB)
}
{
	movigl	GR3,%lo(init_gB)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	movigh	GR3,%hi(uninit_gB)
}
{
	movigl	GR3,%lo(uninit_gB)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 8
}
{
	call	neg
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 2
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
$tmp0:                                  # EmittedInsts:65
	.size	testb, ($tmp0)-testb

	.globl	neg
	.align	2
	.type	neg,@function
neg:                                    # @neg
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
}
{
	load32	GR3, GR4, 0
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	sub	GR3, GR2, GR3
}
{
	store32	GR3, GR4, 0
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
$tmp1:                                  # EmittedInsts:74
	.size	neg, ($tmp1)-neg

	.type	init_gB,@object         # @init_gB
	.data
	.globl	init_gB
	.align	2
init_gB:
	.4byte	5                       # 0x5
	.size	init_gB, 4

	.type	uninit_gB,@object       # @uninit_gB
	.comm	uninit_gB,4,4

