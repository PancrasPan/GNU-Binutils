	.text
	.file	"./testcase_4slots/mainsort.ll"
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
	store32	GR4, GR30, 5
}
{
	store32	GR5, GR30, 4
	store32	GR2, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 4
}
{
	nop
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
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
{
	load32	GR2, GR30, 1
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
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 3
}
{
	nop
}
{
	load32	GR3, GR30, 1
}
{
	ge	 GR3, GR2
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	load32	GR3, GR2, 1
}
{
	nop
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	le	 GR2, GR3
}
{
	jc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %if.then
{
	movigl	GR2,-2
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 2
}
$BB0_4:                                 # %for.end
{
	load32	GR2, GR30, 2
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
$tmp0:                                  # EmittedInsts:43
	.size	check, ($tmp0)-check

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR30, 12
	movigh	GR2,%hi($main.Array)
}
{
	movigl	GR2,%lo($main.Array)
}
{
	load32	GR3, GR2, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 10
	load32	GR3, GR2, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
	load32	GR3, GR2, 2
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 8
	load32	GR3, GR2, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 7
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
	movigl	GR2,4
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	store32	GR2, GR30, 2
	addi	GR4, GR30, 24
}
{
	call	qsort
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 11
}
{
	neqi	 GR2, 0
}
{
	jnc	 $BB1_1
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %if.else
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	jmp	$BB1_3
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %if.then
{
	load32	GR2, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 24
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	call	check
}
{
	nop
}
{
	nop
}
$BB1_3:                                 # %return
{
	store32	GR2, GR30, 12
}
{
	load32	GR2, GR30, 12
	load32	GR31, GR30, 13
	addi	GR30, GR30, 56
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
$tmp1:                                  # EmittedInsts:92
	.size	main, ($tmp1)-main

	.type	$main.Array,@object     # @main.Array
	.section	.rodata,"a",@progbits
	.align	2
$main.Array:
	.4byte	3                       # 0x3
	.4byte	1                       # 0x1
	.4byte	4                       # 0x4
	.4byte	2                       # 0x2
	.4byte	5                       # 0x5
	.size	$main.Array, 20


