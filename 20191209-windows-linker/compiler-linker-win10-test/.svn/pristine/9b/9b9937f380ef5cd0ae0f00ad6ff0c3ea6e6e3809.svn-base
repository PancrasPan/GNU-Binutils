	.text
	.file	"./testcase_8slots/heapsort.ll"
	.globl	heapsort
	.align	2
	.type	heapsort,@function
heapsort:                               # @heapsort
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
}                                       # 4-byte Folded Spill
{
	load32	GR2, GR30, 14
}
{
	nop
}
{
	movg2g	GR3,GR30
}
{
	store32	GR2, GR3, 0
	store32	GR4, GR30, 10
}
{
	store32	GR5, GR30, 9
	store32	GR2, GR30, 8
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
	movigl	GR5,-1
	load32	GR3, GR30, 9
	load32	GR4, GR30, 10
}
{
	neqi	 GR2, 0
	movigh	GR5,-1
}
{
	store32	GR5, GR30, 7
	store32	GR3, GR30, 6
}
{
	store32	GR4, GR30, 5
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %for.cond.preheader
{
	load32	GR2, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	load32	GR3, GR30, 6
}                                       # 4-byte Folded Reload
{
	le	 GR2, GR3
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	store32	GR5, GR30, 7
}                                       # 4-byte Folded Spill
{
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body.lr.ph
{
	movigl	GR2,2
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
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR4, GR2
	load32	GR5, GR30, 8
}
{
	nop
}
{
	store32	GR2, GR30, 4
	store32	GR5, GR30, 3
}
$BB0_3:                                 # %for.body
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
	load32	GR4, GR30, 5
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
	load32	GR5, GR3, 0
	load32	GR6, GR30, 4
}
{
	nop
}
{
	nop
}
{
	load32	GR7, GR6, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR7, GR3, 0
}
{
	addi	GR2, GR2, -1
	store32	GR5, GR6, 0
}
{
	movg2g	GR3,GR30
}
{
	load32	GR5, GR30, 6
	store32	GR2, GR3, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR3, 0
	store32	GR2, GR30, 2
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
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	load32	GR4, GR30, 6
}                                       # 4-byte Folded Reload
{
	gt	 GR3, GR4
	store32	GR2, GR30, 7
	store32	GR3, GR30, 3
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
$BB0_4:                                 # %return
{
	addi	GR30, GR30, 48
	load32	GR2, GR30, 7
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
$tmp0:
	.size	heapsort, ($tmp0)-heapsort

	.align	2
	.type	buildheap,@function
buildheap:                              # @buildheap
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
}                                       # 4-byte Folded Spill
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
	movg2g	GR3,GR5
	load32	GR6, GR30, 10
}
{
	nop
}
{
	lt	 GR6, GR5
	store32	GR6, GR30, 8
	store32	GR4, GR30, 7
}
{
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
}
{
	jc	 $BB1_4
}
{
	nop
}
{
	nop
}
$BB1_1:                                 # %if.end
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR2, GR3
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
	movigl	GR5,0
}
{
	movigh	GR5,0
	movigl	GR6,2
}
{
	movigh	GR6,0
}
{
	lt	 GR2, GR6
	store32	GR2, GR30, 4
	store32	GR5, GR30, 6
}
{
	jc	 $BB1_4
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %for.body.lr.ph
{
	movigl	GR2,31
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
	sra	GR2, GR2, GR4
}
{
	store32	GR2, GR30, 3
}                                       # 4-byte Folded Spill
$BB1_3:                                 # %for.body
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 3
}                                       # 4-byte Folded Reload
{
	movg2g	GR3,GR30
}
{
	load32	GR4, GR30, 8
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	load32	GR5, GR30, 5
	store32	GR4, GR3, 1
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, -1
	store32	GR5, GR3, 0
}
{
	add	GR5, GR2, GR5
	load32	GR4, GR30, 7
}
{
	nop
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
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
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 2
}
{
	lti	 GR3, 1
}
{
	store32	GR2, GR30, 6
	store32	GR3, GR30, 3
}
{
	jnc	 $BB1_3
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %return
{
	addi	GR30, GR30, 40
	load32	GR2, GR30, 6
	load32	GR31, GR30, 9
}
{
	ret