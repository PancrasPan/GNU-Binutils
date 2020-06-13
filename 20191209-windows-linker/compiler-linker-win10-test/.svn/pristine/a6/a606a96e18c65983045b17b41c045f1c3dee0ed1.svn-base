	.text
	.file	"./testcase_8slots/linklist.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
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
	movigl	GR2,2
	store32	GR2, GR30, 6
}
{
	movigh	GR2,0
}
{
	addi	GR2, GR30, 16
	store32	GR2, GR30, 4
}
{
	movigl	GR3,0
	store32	GR2, GR30, 7
}
{
	movigh	GR3,0
}
{
	movigl	GR3,4
	store32	GR3, GR30, 5
}
{
	addi	GR4, GR30, 24
	movigh	GR3,0
}
{
	or	GR3, GR4, GR3
	load32	GR5, GR30, 7
}
{
	eqi	 GR5, 0
}
{
	store32	GR2, GR30, 3
	store32	GR3, GR30, 2
}
{
	store32	GR4, GR30, 1
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
$BB0_1:                                 # %while.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 2
	load32	GR4, GR2, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, 1
}
{
	store32	GR4, GR2, 0
}
{
	load32	GR2, GR3, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
	load32	GR4, GR2, 1
}
{
	neqi	 GR4, 0
}
{
	store32	GR3, GR30, 2
	store32	GR2, GR30, 1
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
$BB0_2:                                 # %while.end
{
	load32	GR2, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
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
	.size	main, ($tmp0)-main


