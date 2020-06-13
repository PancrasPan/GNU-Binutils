	.text
	.file	"./testcase_8slots/loopifmain.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
}                                       # 4-byte Folded Spill
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 7
}
{
	movigl	GR2,2
	store32	GR2, GR30, 6
}
{
	addi	GR4, GR30, 24
	movigh	GR2,0
}
{
	store32	GR4, GR30, 5
	store32	GR2, GR30, 4
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR3,2
	load32	GR2, GR30, 4
}
{
	movigh	GR3,0
}
{
	sl	GR3, GR2, GR3
	addi	GR4, GR30, 24
}
{
	add	GR3, GR4, GR3
}
{
	load32	GR4, GR3, -1
}
{
	nop
}
{
	load32	GR5, GR3, -2
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR5, GR4
}
{
	movigl	GR3,1
	store32	GR4, GR3, 0
}
{
	addi	GR2, GR2, 1
	movigh	GR3,0
}
{
	neqi	 GR2, 5
}
{
	store32	GR2, GR30, 4
	store32	GR3, GR30, 3
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
$BB0_2:                                 # %for.body9
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
	movigh	GR4,%hi(ExArray)
}
{
	movigl	GR4,%lo(ExArray)
}
{
	add	GR3, GR4, GR3
}
{
	movigl	GR5,1
	load32	GR4, GR3, -1
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR4, GR5
}
{
	addi	GR2, GR2, 1
	store32	GR4, GR3, 0
}
{
	neqi	 GR2, 5
}
{
	store32	GR2, GR30, 3
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
$BB0_3:                                 # %for.end15
{
	movigl	GR5,5
}
{
	movigh	GR5,0
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	call	add
}
{
	nop
}
{
	nop
}
{
	movigh	GR4,%hi(sum)
}
{
	movigl	GR4,%lo(sum)
}
{
	addi	GR30, GR30, 48
	load32	GR31, GR30, 11
	store32	GR2, GR4, 0
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

	.type	sum,@object             # @sum
	.bss
	.globl	sum
	.align	2
sum:
	.4byte	0                       # 0x0
	.size	sum, 4

	.type	bound,@object           # @bound
	.data
	.globl	bound
	.align	2
bound:
	.4byte	3                       # 0x3
	.size	bound, 4

	.type	threshold,@object       # @threshold
	.globl	threshold
	.align	2
threshold:
	.4byte	10                      # 0xa
	.size	threshold, 4

	.type	ExArray,@object         # @ExArray
	.globl	ExArray
	.align	2
ExArray:
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.size	ExArray, 20


