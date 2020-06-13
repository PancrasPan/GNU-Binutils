	.text
	.file	"./testcase_4slots/bound_regtoreg_defwithconst.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
	movigh	GR2,%hi(lowerbound)
}
{
	movigl	GR2,%lo(lowerbound)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR3,%hi(a)
}
{
	movigl	GR3,%lo(a)
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR2, GR2, 0
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
}
{
	store32	GR2, GR3, 0
	load32	GR2, GR30, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 2
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
	movigh	GR2,%hi(upperbound)
}
{
	movigl	GR2,%lo(upperbound)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	ge	 GR3, GR2
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %for.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR2, GR2, 0
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
$tmp0:                                  # EmittedInsts:39
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


