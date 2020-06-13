	.text
	.file	"./testcase_8slots/1/loopifmain.ll"
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movigl	GR2,1
	store32	GR2, GR30, 10
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 6
}
{
	movigl	GR2,2
	store32	GR2, GR30, 5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 4
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	lti	 GR2, 5
}
{
	jnc	 $BB0_4
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
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	addi	GR3, GR30, 20
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR3, GR2, -2
}
{
	nop
}
{
	load32	GR4, GR2, -1
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
	store32	GR3, GR2, 0
}
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 4
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %for.end
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 3
}
$BB0_5:                                 # %for.cond7
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	lti	 GR2, 5
}
{
	jnc	 $BB0_8
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.body9
                                        #   in Loop: Header=BB0_5 Depth=1
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
	movigh	GR3,%hi(ExArray)
}
{
	movigl	GR3,%lo(ExArray)
}
{
	add	GR2, GR3, GR2
}
{
	movigl	GR4,1
	load32	GR3, GR2, -1
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
}
{
	store32	GR3, GR2, 0
}
# BB#7:                                 # %for.inc13
                                        #   in Loop: Header=BB0_5 Depth=1
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 3
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
$BB0_8:                                 # %for.end15
{
	addi	GR4, GR30, 20
	movigl	GR5,5
}
{
	movigh	GR5,0
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


