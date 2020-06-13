	.text
	.file	"./testcase_8slots/loopCountUnderflow.ll"
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
	movigh	GR3,%hi(i)
}
{
	movigl	GR3,%lo(i)
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
	store32	GR3, GR30, 3
	store32	GR2, GR30, 2
}
$BB0_1:                                 # %do.body
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
	sl	GR4, GR3, GR4
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
	add	GR2, GR4, GR2
	addi	GR3, GR3, -1
}
{
	neqi	 GR3, 0
}
{
	movg2g	GR5,GR2
}
{
	store32	GR2, GR30, 1
	store32	GR5, GR30, 2
}
{
	store32	GR3, GR30, 3
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
	movigh	GR2,%hi(i)
}
{
	movigl	GR2,%lo(i)
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	addi	GR30, GR30, 16
	load32	GR2, GR30, 1
	store32	GR3, GR2, 0
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

	.type	a,@object               # @a
	.data
	.globl	a
	.align	2
a:
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	4                       # 0x4
	.4byte	5                       # 0x5
	.size	a, 20


