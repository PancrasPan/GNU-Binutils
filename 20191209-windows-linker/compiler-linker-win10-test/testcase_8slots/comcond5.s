	.text
	.file	"./testcase_8slots/comcond5.ll"
	.globl	part
	.align	2
	.type	part,@function
part:                                   # @part
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	le	 GR5, GR4
	movg2g	GR2,GR5
}
{
	movg2g	GR3,GR2
}
{
	store32	GR2, GR30, 5
	store32	GR3, GR30, 4
}
{
	store32	GR4, GR30, 3
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %land.rhs.lr.ph
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(array)
}
{
	movigl	GR4,%lo(array)
}
{
	add	GR2, GR4, GR2
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	store32	GR2, GR30, 2
	store32	GR4, GR30, 1
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %while.cond
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 0
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 3
}                                       # 4-byte Folded Reload
{
	le	 GR2, GR3
	load32	GR5, GR30, 0
}
{
	nop
}
{
	store32	GR2, GR30, 1
	store32	GR5, GR30, 4
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
$BB0_3:                                 # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 1
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	movigh	GR4,%hi(array)
}
{
	movigl	GR4,%lo(array)
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR3, GR3, 0
}
{
	nop
}
{
	load32	GR4, GR30, 2
}                                       # 4-byte Folded Reload
{
	gt	 GR3, GR4
	addi	GR5, GR2, -1
}
{
	store32	GR5, GR30, 0
	store32	GR2, GR30, 4
}
{
	jc	 $BB0_2
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.end
{
	load32	GR2, GR30, 4
}                                       # 4-byte Folded Reload
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
	nop
}
{
	sub	GR2, GR2, GR3
	addi	GR30, GR30, 24
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
	.size	part, ($tmp0)-part


