	.text
	.file	".\\HWlooptest\\succ\\loopmain0.ll"
	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -416
}
{
	store32	GR31, GR30, 103
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR30, 4
}
{
	store32	GR5, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movg2g	GR3,GR2
}
{
	movg2g	GR4,GR5
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
$BB0_5:                                 # %for.body.for.body_crit_edge
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR5, GR5, 1
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	add	GR4, GR5, GR4
	addi	GR5, GR30, 12
}
{
	add	GR5, GR5, GR3
}
{
	store32	GR4, GR5, 2
	addi	GR3, GR3, 4
}
{
	eqi	 GR3, 392
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#2:
{
	movigl	GR5,1
}
{
	movigh	GR5,0
}
$BB0_3:                                 # %for.body9
                                        # =>This Inner Loop Header: Depth=1
{
	movigh	GR3,%hi(ExArray)
}
{
	movigl	GR3,%lo(ExArray)
}
{
	add	GR3, GR3, GR2
}
{
	load32	GR4, GR3, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR4, GR5
}
{
	store32	GR4, GR3, 1
	addi	GR2, GR2, 4
}
{
	neqi	 GR2, 396
}
{
	jc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %for.end15
{
	addi	GR4, GR30, 12
	movigl	GR5,100
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
	movigh	GR3,%hi(sum)
}
{
	movigl	GR3,%lo(sum)
}
{
	store32	GR2, GR3, 0
	load32	GR31, GR30, 103
	addi	GR30, GR30, 416
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
	.4byte	1024                    # 0x400
	.size	bound, 4

	.type	threshold,@object       # @threshold
	.globl	threshold
	.align	2
threshold:
	.4byte	4000000000              # 0xee6b2800
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
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.size	ExArray, 400


