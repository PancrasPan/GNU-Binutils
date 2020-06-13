	.text
	.file	"./testcase_8slots/bound_immtoreg.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
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
	lti	 GR2, 256
}
{
	store32	GR2, GR30, 3
}                                       # 4-byte Folded Spill
{
	jnc	 $BB0_4
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
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR3, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 2
	store32	GR3, GR30, 1
}
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 1
	load32	GR3, GR30, 2
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
	movigl	GR4,256
}
{
	movigh	GR4,0
}
{
	lt	 GR2, GR4
	movg2g	GR5,GR3
}
{
	store32	GR3, GR30, 0
	store32	GR5, GR30, 2
}
{
	store32	GR2, GR30, 1
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
	load32	GR3, GR30, 0
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
	addi	GR30, GR30, 16
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


