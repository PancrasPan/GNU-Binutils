	.text
	.file	"./testcase_8slots/testb.ll"
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
}                                       # 4-byte Folded Spill
{
	load32	GR2, GR30, 15
	load32	GR3, GR30, 14
}
{
	movigl	GR8,10
	load32	GR6, GR30, 13
	load32	GR7, GR30, 12
}
{
	movigh	GR8,0
}
{
	store32	GR8, GR30, 8
}
{
	store32	GR4, GR7, 0
}
{
	store32	GR5, GR6, 0
}
{
	add	GR2, GR5, GR4
	store32	GR3, GR2, 0
}
{
	load32	GR3, GR7, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	load32	GR3, GR6, 0
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
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
}
{
	addi	GR2, GR30, 32
	store32	GR2, GR30, 8
	store32	GR4, GR30, 7
}
{
	movg2g	GR4,GR2
}
{
	store32	GR5, GR30, 6
}                                       # 4-byte Folded Spill
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
	load32	GR3, GR30, 6
	load32	GR4, GR30, 7
}
{
	load32	GR5, GR30, 8
}
{
	nop
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
{
	movg2g	GR2,GR5
}
{
	addi	GR30, GR30, 40
	load32	GR31, GR30, 9
	store32	GR4, GR30, 4
	store32	GR3, GR30, 3
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
	movigl	GR3,0
	load32	GR2, GR4, 0
}
{
	movigh	GR3,0
}
{
	sub	GR2, GR3, GR2
}
{
	store32	GR2, GR4, 0
}
{
	movg2g	GR2,GR3
}
{
	addi	GR30, GR30, 8
	store32	GR4, GR30, 1
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

