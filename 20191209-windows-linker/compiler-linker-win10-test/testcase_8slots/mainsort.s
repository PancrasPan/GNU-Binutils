	.text
	.file	"./testcase_8slots/mainsort.ll"
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
	movigl	GR4,-2
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
	load32	GR3, GR2, 3
	store32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 2
	store32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR2, 1
	store32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, 0
	store32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 6
}
{
	movg2g	GR2,GR30
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	addi	GR2, GR30, 24
	movigl	GR5,0
	store32	GR3, GR2, 2
}
{
	movigh	GR5,0
	movg2g	GR4,GR2
}
{
	store32	GR2, GR30, 5
}                                       # 4-byte Folded Spill
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
	movigl	GR3,-1
}
{
	neqi	 GR2, 0
	movigh	GR3,-1
}
{
	store32	GR3, GR30, 4
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_2
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %if.then
{
	movg2g	GR2,GR30
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	movigl	GR5,0
	store32	GR3, GR2, 2
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
	call	check
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 4
}                                       # 4-byte Folded Spill
$BB1_2:                                 # %return
{
	addi	GR30, GR30, 48
	load32	GR2, GR30, 4
	load32	GR31, GR30, 11
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
$tmp1:
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


