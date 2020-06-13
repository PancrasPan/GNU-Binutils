	.text
	.file	"./testcase_8slots/bound_regtoreg_defwithconst.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	movigh	GR2,%hi(upperbound)
}
{
	movigl	GR2,%lo(upperbound)
}
{
	movigh	GR3,%hi(lowerbound)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(lowerbound)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	ge	 GR3, GR2
	store32	GR3, GR30, 5
}
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body.lr.ph
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	movigh	GR3,%hi(upperbound)
	load32	GR2, GR2, 0
}
{
	movigl	GR3,%lo(upperbound)
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 5
	store32	GR3, GR30, 4
	store32	GR2, GR30, 3
}
{
	store32	GR4, GR30, 2
}                                       # 4-byte Folded Spill
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 2
	load32	GR3, GR30, 3
}
{
	movigh	GR4,0
}
{
	sl	GR4, GR2, GR4
	movigh	GR5,%hi(a)
}
{
	movigl	GR5,%lo(a)
}
{
	add	GR4, GR5, GR4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
	addi	GR2, GR2, 2
	load32	GR4, GR30, 4
}
{
	lt	 GR2, GR4
	movg2g	GR6,GR3
}
{
	store32	GR3, GR30, 1
	store32	GR6, GR30, 3
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %for.cond.for.end_crit_edge
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
	load32	GR3, GR30, 1
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
$BB0_4:                                 # %for.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	addi	GR30, GR30, 24
	load32	GR2, GR2, 0
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
	.size	add, ($tmp0)-add

	.type	lowerbound,@object      # @lowerbound
	.bss
	.globl	lowerbound
	.align	2
lowerbound:
	.4byte	0                       # 0x0
	.size	lowerbound, 4

	.type	upperbound,@object      # @upperbound
	.data
	.globl	upperbound
	.align	2
upperbound:
	.4byte	256                     # 0x100
	.size	upperbound, 4


