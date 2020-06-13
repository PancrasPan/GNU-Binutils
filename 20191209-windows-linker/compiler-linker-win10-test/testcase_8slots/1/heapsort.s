	.text
	.file	"./testcase_8slots/1/heapsort.ll"
	.globl	heapsort
	.align	2
	.type	heapsort,@function
heapsort:                               # @heapsort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -64
}
{
	store32	GR31, GR30, 15
}                                       # 4-byte Folded Spill
{
	load32	GR2, GR30, 18
	store32	GR4, GR30, 13
	store32	GR5, GR30, 12
}
{
	load32	GR3, GR30, 12
	load32	GR6, GR30, 13
	store32	GR2, GR30, 11
}
{
	movg2g	GR7,GR30
}
{
	store32	GR2, GR7, 2
	store32	GR4, GR30, 8
}
{
	movg2g	GR4,GR6
}
{
	store32	GR5, GR30, 7
}                                       # 4-byte Folded Spill
{
	movg2g	GR5,GR3
}
{
	call	buildheap
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 7
	load32	GR4, GR30, 8
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	store32	GR4, GR30, 6
	store32	GR3, GR30, 5
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
$BB0_1:                                 # %if.then
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 14
}
{
	jmp	$BB0_7
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.end
{
	load32	GR2, GR30, 11
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 9
}
$BB0_3:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 12
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	le	 GR3, GR2
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
$BB0_4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 13
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
	nop
}
{
	load32	GR3, GR30, 9
	store32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	sl	GR3, GR3, GR2
	load32	GR4, GR30, 13
}
{
	nop
}
{
	nop
}
{
	add	GR3, GR4, GR3
	load32	GR5, GR30, 12
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR2
}
{
	add	GR4, GR4, GR5
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
	store32	GR4, GR3, 0
}
{
	load32	GR3, GR30, 12
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 13
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
{
	load32	GR4, GR30, 13
	load32	GR2, GR30, 12
}
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
	movg2g	GR5,GR30
}
{
	store32	GR3, GR5, 3
}
{
	store32	GR2, GR5, 2
}
{
	movg2g	GR5,GR2
}
{
	call	adjustdown
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
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB0_3 Depth=1
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 9
}
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %for.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 14
}
$BB0_7:                                 # %return
{
	addi	GR30, GR30, 64
	load32	GR2, GR30, 14
	load32	GR31, GR30, 15
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
	.size	heapsort, ($tmp0)-heapsort

	.align	2
	.type	buildheap,@function
buildheap:                              # @buildheap
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
}                                       # 4-byte Folded Spill
{
	load32	GR2, GR30, 16
	store32	GR4, GR30, 11
	store32	GR5, GR30, 10
}
{
	load32	GR3, GR30, 10
	store32	GR2, GR30, 9
}
{
	le	 GR3, GR2
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
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
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 12
}
{
	jmp	$BB1_7
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %if.end
{
	load32	GR2, GR30, 10
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
}
{
	addi	GR2, GR2, 1
	movigl	GR3,31
}
{
	movigh	GR3,0
}
{
	srl	GR3, GR2, GR3
}
{
	add	GR2, GR2, GR3
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	sra	GR2, GR2, GR3
}
{
	store32	GR2, GR30, 8
	store32	GR2, GR30, 7
}
$BB1_3:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 7
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB1_6
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %for.body
                                        #   in Loop: Header=BB1_3 Depth=1
{
	load32	GR4, GR30, 11
	load32	GR2, GR30, 7
}
{
	load32	GR3, GR30, 10
	load32	GR5, GR30, 9
}
{
	nop
}
{
	movg2g	GR6,GR30
}
{
	store32	GR5, GR6, 3
}
{
	add	GR2, GR2, GR3
	store32	GR3, GR6, 2
}
{
	addi	GR5, GR2, -1
}
{
	call	adjustdown
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
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB1_3 Depth=1
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 7
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
$BB1_6:                                 # %for.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 12
}
$BB1_7:                                 # %return
{
	addi	GR30, GR30, 56
	load32	GR2, GR30, 12
	load32	GR31, GR30, 13
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
	.size	buildheap, ($tmp1)-buildheap

	.align	2
	.type	adjustdown,@function
adjustdown:                             # @adjustdown
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	load32	GR2, GR30, 15
	load32	GR3, GR30, 14
	store32	GR4, GR30, 10
	store32	GR5, GR30, 9
}
{
	store32	GR3, GR30, 8
	store32	GR2, GR30, 7
}
{
	load32	GR3, GR30, 8
}
{
	gt	 GR3, GR2
	store32	GR4, GR30, 2
	store32	GR5, GR30, 1
}
{
	jc	 $BB2_3
}
{
	nop
}
{
	nop
}
$BB2_1:                                 # %lor.lhs.false
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB2_3
}
{
	nop
}
{
	nop
}
$BB2_2:                                 # %lor.lhs.false2
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	le	 GR3, GR2
}
{
	jc	 $BB2_4
}
{
	nop
}
{
	nop
}
$BB2_3:                                 # %if.then
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	store32	GR2, GR30, 11
}
{
	jmp	$BB2_14
}
{
	nop
}
{
	nop
}
$BB2_4:                                 # %if.end
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
}
{
	addi	GR2, GR2, 1
}
{
	load32	GR2, GR30, 8
	store32	GR2, GR30, 6
}
{
	nop
}
{
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
}
{
	addi	GR2, GR2, 1
}
{
	load32	GR2, GR30, 6
	store32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,2
	store32	GR2, GR30, 4
}
{
	movigh	GR2,0
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
	load32	GR3, GR30, 10
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
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
}
$BB2_5:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	sl	GR2, GR3, GR2
}
{
	load32	GR3, GR30, 5
	store32	GR2, GR30, 6
}
{
	gt	 GR2, GR3
}
{
	jc	 $BB2_13
}
{
	nop
}
{
	nop
}
$BB2_6:                                 # %while.body
                                        #   in Loop: Header=BB2_5 Depth=1
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 1
	load32	GR3, GR30, 5
}
{
	gt	 GR2, GR3
}
{
	jc	 $BB2_9
}
{
	nop
}
{
	nop
}
$BB2_7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB2_5 Depth=1
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR3, GR30, 10
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
	load32	GR3, GR2, -1
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
	jc	 $BB2_9
}
{
	nop
}
{
	nop
}
$BB2_8:                                 # %if.then17
                                        #   in Loop: Header=BB2_5 Depth=1
{
	load32	GR2, GR30, 6
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
	store32	GR2, GR30, 6
}
$BB2_9:                                 # %if.end18
                                        #   in Loop: Header=BB2_5 Depth=1
{
	movigl	GR2,31
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	srl	GR2, GR3, GR2
}
{
	add	GR2, GR3, GR2
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	srl	GR2, GR2, GR4
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	add	GR3, GR3, GR4
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
	sl	GR2, GR2, GR4
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	add	GR3, GR3, GR4
}
{
	load32	GR3, GR3, -1
}
{
	nop
}
{
	load32	GR2, GR2, -1
}
{
	nop
}
{
	le	 GR3, GR2
}
{
	jc	 $BB2_11
}
{
	nop
}
{
	nop
}
$BB2_10:                                # %if.then26
                                        #   in Loop: Header=BB2_5 Depth=1
{
	movigl	GR2,31
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	srl	GR2, GR3, GR2
}
{
	add	GR2, GR3, GR2
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	srl	GR2, GR2, GR4
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	add	GR3, GR3, GR4
	movigl	GR4,2
}
{
	movigh	GR4,0
}
{
	sl	GR3, GR3, GR4
	sl	GR2, GR2, GR4
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR4
	add	GR3, GR3, GR4
}
{
	load32	GR3, GR3, -1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, -1
}
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 4
}
{
	jmp	$BB2_12
}
{
	nop
}
{
	nop
}
$BB2_11:                                # %if.else
{
	jmp	$BB2_13
}
{
	nop
}
{
	nop
}
$BB2_12:                                # %if.end34
                                        #   in Loop: Header=BB2_5 Depth=1
{
	jmp	$BB2_5
}
{
	nop
}
{
	nop
}
$BB2_13:                                # %while.end
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
	movigl	GR3,2
}
{
	movigh	GR3,0
}
{
	sl	GR2, GR2, GR3
	load32	GR3, GR30, 10
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR2, GR3
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,0
	store32	GR3, GR2, -1
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 11
}
$BB2_14:                                # %return
{
	addi	GR30, GR30, 48
	load32	GR2, GR30, 11
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
$tmp2:
	.size	adjustdown, ($tmp2)-adjustdown


