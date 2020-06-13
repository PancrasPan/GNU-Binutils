	.text
	.file	"./testcase_8slots/exitnotfallthrough.ll"
	.globl	add
	.align	2
	.type	add,@function
add:                                    # @add
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	movg2g	GR2,GR4
}
{
	eqi	 GR4, 0
}
{
	store32	GR2, GR30, 3
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
$BB0_1:                                 # %for.cond.preheader
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
	load32	GR3, GR3, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 2
	store32	GR2, GR30, 1
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
	store32	GR2, GR30, 1
	store32	GR5, GR30, 2
}
{
	store32	GR3, GR30, 0
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
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.else
{
	movigh	GR2,%hi(a)
}
{
	movigl	GR2,%lo(a)
}
{
	load32	GR2, GR2, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 0
}                                       # 4-byte Folded Spill
$BB0_4:                                 # %if.end
{
	movigh	GR3,%hi(a)
	load32	GR2, GR30, 0
}
{
	movigl	GR3,%lo(a)
}
{
	load32	GR3, GR3, 255
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	addi	GR30, GR30, 16
	store32	GR2, GR3, 0
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


