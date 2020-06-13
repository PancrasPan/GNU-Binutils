	.text
	.file	"./testcase_8slots/fixup_bumpaftercmp_withreg.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	movigh	GR4,%hi(bound)
	load32	GR3, GR3, 0
}
{
	movigl	GR4,%lo(bound)
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	store32	GR3, GR30, 3
	store32	GR4, GR30, 2
}
{
	store32	GR2, GR30, 1
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %do.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR4,2
	load32	GR2, GR30, 1
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
	load32	GR4, GR30, 2
}
{
	lt	 GR2, GR4
	addi	GR2, GR2, 1
	movg2g	GR6,GR3
}
{
	store32	GR2, GR30, 1
	store32	GR3, GR30, 0
}
{
	store32	GR6, GR30, 3
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %do.end
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
{
	addi	GR30, GR30, 16
	movg2g	GR2,GR3
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


