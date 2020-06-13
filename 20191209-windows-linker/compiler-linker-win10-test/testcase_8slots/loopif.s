	.text
	.file	"./testcase_8slots/loopif.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	lt	 GR5, GR2
	store32	GR4, GR30, 7
	store32	GR5, GR30, 6
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body.lr.ph
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	movigh	GR3,%hi(threshold)
}
{
	movigl	GR3,%lo(threshold)
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
	nop
}
{
	store32	GR4, GR30, 5
	store32	GR3, GR30, 4
}
{
	store32	GR2, GR30, 3
}                                       # 4-byte Folded Spill
$BB0_2:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 3
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
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
	load32	GR5, GR30, 5
}                                       # 4-byte Folded Reload
{
	ge	 GR3, GR5
	store32	GR2, GR30, 2
	store32	GR3, GR30, 1
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
$BB0_3:                                 # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	movigh	GR4,%hi(ExArray)
}
{
	movigl	GR4,%lo(ExArray)
}
{
	add	GR2, GR4, GR2
}
{
	movigh	GR4,%hi(sum)
	load32	GR2, GR2, 0
}
{
	movigl	GR4,%lo(sum)
}
{
	load32	GR5, GR4, 0
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR5, GR2
}
{
	load32	GR4, GR30, 4
	store32	GR2, GR4, 0
}
{
	gt	 GR2, GR4
}
{
	jc	 $BB0_6
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %if.else
                                        #   in Loop: Header=BB0_2 Depth=1
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	load32	GR3, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	add	GR3, GR3, GR4
}
{
	store32	GR3, GR2, 0
}
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 2
	load32	GR4, GR30, 6
}
{
	lt	 GR3, GR4
	store32	GR3, GR30, 3
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
$BB0_6:                                 # %for.end
{
	movigh	GR2,%hi(sum)
}
{
	movigl	GR2,%lo(sum)
}
{
	addi	GR30, GR30, 32
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


