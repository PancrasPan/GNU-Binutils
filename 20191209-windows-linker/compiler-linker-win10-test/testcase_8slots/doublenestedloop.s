	.text
	.file	"./testcase_8slots/doublenestedloop.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.body3.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
{
	movigh	GR3,%hi(sum)
	load32	GR2, GR30, 5
}
{
	movigl	GR3,%lo(sum)
}
{
	load32	GR3, GR3, 0
}
{
	movg2g	GR4,GR2
}
{
	store32	GR2, GR30, 4
	store32	GR3, GR30, 3
}
{
	store32	GR4, GR30, 2
}                                       # 4-byte Folded Spill
$BB0_2:                                 # %for.body3
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	movigl	GR4,10
	load32	GR2, GR30, 2
	load32	GR3, GR30, 3
}
{
	movigh	GR4,0
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR5, GR4
	movigh	GR6,%hi(a)
}
{
	movigl	GR6,%lo(a)
}
{
	add	GR4, GR6, GR4
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	sl	GR6, GR2, GR6
}
{
	add	GR4, GR4, GR6
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
	addi	GR2, GR2, 1
}
{
	neqi	 GR2, 256
}
{
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
$BB0_3:                                 # %for.inc5
                                        #   in Loop: Header=BB0_1 Depth=1
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
	load32	GR2, GR30, 4
	store32	GR3, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR2, 2
	movigl	GR5,256
}
{
	movigh	GR5,0
}
{
	lt	 GR4, GR5
	store32	GR4, GR30, 5
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.end7
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


