	.text
	.file	"./testcase_8slots/sample3.ll"
	.globl	check
	.align	2
	.type	check,@function
check:                                  # @check
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 5
	store32	GR4, GR30, 4
}
{
	store32	GR5, GR30, 3
}                                       # 4-byte Folded Spill
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 5
}                                       # 4-byte Folded Reload
{
	ge	 GR2, GR3
	movigl	GR5,0
}
{
	movigh	GR5,0
	store32	GR2, GR30, 2
}
{
	store32	GR5, GR30, 1
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_3
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
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR3, GR2
	load32	GR5, GR30, 4
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
	addi	GR6, GR3, 1
}
{
	sl	GR2, GR6, GR2
}
{
	add	GR2, GR5, GR2
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	load32	GR4, GR4, 0
}
{
	le	 GR4, GR2
	movigl	GR4,-1
}
{
	movigh	GR4,-1
	store32	GR6, GR30, 3
}
{
	store32	GR4, GR30, 1
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
$BB0_3:                                 # %for.end
{
	addi	GR30, GR30, 24
	load32	GR2, GR30, 1
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
	.size	check, ($tmp0)-check


