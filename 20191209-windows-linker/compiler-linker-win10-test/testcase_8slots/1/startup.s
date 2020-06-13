	.text
	.file	"./testcase_8slots/1/startup.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	movigl	GR2,0
	store32	GR4, GR30, 1
}
{
	movigh	GR2,0
}
{
	addi	GR30, GR30, 8
	store32	GR2, GR30, 1
	store32	GR4, GR30, 0
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
	.size	pin_down, ($tmp0)-pin_down

	.globl	main
	.align	2
	.type	main,@function
main:                                   # @main
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -1016
}
{
	store32	GR31, GR30, 253
}                                       # 4-byte Folded Spill
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	movigh	GR2,%hi(In)
	store32	GR2, GR30, 252
}
{
	movigl	GR2,%lo(In)
}
{
	addi	GR2, GR30, 36
	store32	GR2, GR30, 4
}
{
	load32	GR4, GR30, 251
	store32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
{
	call	pin_down
}
{
	nop
}
{
	nop
}
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
	addi	GR4, GR2, 4
}
{
	store32	GR4, GR30, 4
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
	load32	GR2, GR30, 4
	store32	GR2, GR30, 6
}
{
	nop
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
	nop
}
{
	store32	GR2, GR30, 5
}
$BB1_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	eq	 GR3, GR2
}
{
	jc	 $BB1_5
}
{
	nop
}
{
	nop
}
$BB1_2:                                 # %while.body
                                        #   in Loop: Header=BB1_1 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,0
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
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
	load32	GR3, GR30, 5
	store32	GR2, GR30, 6
}
{
	eq	 GR2, GR3
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
$BB1_3:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,0
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
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
	store32	GR2, GR30, 5
}
$BB1_4:                                 # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
{
	jmp	$BB1_1
}
{
	nop
}
{
	nop
}
$BB1_5:                                 # %while.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
}
$BB1_6:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 251
}
{
	nop
}
{
	lti	 GR2, 64
}
{
	jnc	 $BB1_9
}
{
	nop
}
{
	nop
}
$BB1_7:                                 # %for.body
                                        #   in Loop: Header=BB1_6 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,0
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB1_6 Depth=1
{
	load32	GR2, GR30, 251
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
	store32	GR2, GR30, 251
}
{
	jmp	$BB1_6
}
{
	nop
}
{
	nop
}
$BB1_9:                                 # %for.end
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
	addi	GR2, GR2, 256
}
{
	movigl	GR2,0
	store32	GR2, GR30, 4
}
{
	movigh	GR2,0
}
{
	load32	GR2, GR30, 4
	store32	GR2, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
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
	load32	GR2, GR30, 4
	store32	GR2, GR30, 6
}
{
	nop
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
	nop
}
{
	store32	GR2, GR30, 5
}
$BB1_10:                                # %while.cond13
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	eq	 GR3, GR2
}
{
	jc	 $BB1_14
}
{
	nop
}
{
	nop
}
$BB1_11:                                # %while.body15
                                        #   in Loop: Header=BB1_10 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,3
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
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
	load32	GR2, GR30, 8
	store32	GR2, GR30, 6
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
	load32	GR2, GR30, 5
	store32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 6
}
{
	eq	 GR3, GR2
}
{
	jc	 $BB1_13
}
{
	nop
}
{
	nop
}
$BB1_12:                                # %if.then20
                                        #   in Loop: Header=BB1_10 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,3
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
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
	load32	GR2, GR30, 8
	store32	GR2, GR30, 5
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
	store32	GR2, GR30, 8
}
$BB1_13:                                # %if.end24
                                        #   in Loop: Header=BB1_10 Depth=1
{
	jmp	$BB1_10
}
{
	nop
}
{
	nop
}
$BB1_14:                                # %while.end25
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
}
$BB1_15:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_16 Depth 2
$BB1_16:                                # %while.cond26
                                        #   Parent Loop BB1_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
{
	load32	GR2, GR30, 251
}
{
	nop
}
{
	lti	 GR2, 8
}
{
	jnc	 $BB1_21
}
{
	nop
}
{
	nop
}
$BB1_17:                                # %while.body28
                                        #   in Loop: Header=BB1_16 Depth=2
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
	addi	GR3, GR2, 4
}
{
	store32	GR3, GR30, 4
}
{
	load32	GR3, GR2, 1
}
{
	nop
}
{
	load32	GR2, GR2, -7
}
{
	nop
}
{
	neq	 GR2, GR3
}
{
	jc	 $BB1_19
}
{
	nop
}
{
	nop
}
$BB1_18:                                # %cond.true
                                        #   in Loop: Header=BB1_16 Depth=2
{
	load32	GR2, GR30, 251
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
	store32	GR2, GR30, 251
}
{
	jmp	$BB1_20
}
{
	nop
}
{
	nop
}
$BB1_19:                                # %cond.false
                                        #   in Loop: Header=BB1_16 Depth=2
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
}
$BB1_20:                                # %cond.end
                                        #   in Loop: Header=BB1_16 Depth=2
{
	jmp	$BB1_16
}
{
	nop
}
{
	nop
}
$BB1_21:                                # %while.end33
                                        #   in Loop: Header=BB1_15 Depth=1
{
	movigl	GR2,7
}
{
	movigh	GR2,0
}
{
	movigl	GR2,0
	store32	GR2, GR30, 251
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
	load32	GR3, GR3, -7
}
{
	neqi	 GR3, 0
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_26
}
{
	nop
}
{
	nop
}
$BB1_22:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_15 Depth=1
{
	movigl	GR2,0
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
	load32	GR3, GR3, -6
}
{
	neqi	 GR3, 0
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_26
}
{
	nop
}
{
	nop
}
$BB1_23:                                # %land.lhs.true38
                                        #   in Loop: Header=BB1_15 Depth=1
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
	movigl	GR3,1
	load32	GR2, GR2, -4
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
	movigl	GR3,0
}
{
	eqi	 GR2, 0
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_26
}
{
	nop
}
{
	nop
}
$BB1_24:                                # %land.lhs.true41
                                        #   in Loop: Header=BB1_15 Depth=1
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
	movigl	GR3,1
	load32	GR2, GR2, -2
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
	movigl	GR3,0
}
{
	eqi	 GR2, 0
	movigh	GR3,0
}
{
	store32	GR3, GR30, 2
}                                       # 4-byte Folded Spill
{
	jc	 $BB1_26
}
{
	nop
}
{
	nop
}
$BB1_25:                                # %land.rhs
                                        #   in Loop: Header=BB1_15 Depth=1
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
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
}                                       # 4-byte Folded Spill
$BB1_26:                                # %land.end
                                        #   in Loop: Header=BB1_15 Depth=1
{
	movigl	GR3,1
	load32	GR2, GR30, 2
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
}
{
	store32	GR2, GR30, 7
}
# BB#27:                                # %do.cond
                                        #   in Loop: Header=BB1_15 Depth=1
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB1_15
}
{
	nop
}
{
	nop
}
$BB1_28:                                # %do.end
{
	movigl	GR2,31
}
{
	movigh	GR2,0
	load32	GR3, GR30, 8
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
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	sra	GR2, GR2, GR3
}
{
	movigl	GR2,0
	store32	GR2, GR30, 8
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
}
$BB1_29:                                # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 8
}
{
	nop
}
{
	load32	GR3, GR30, 251
}
{
	gt	 GR3, GR2
}
{
	jc	 $BB1_32
}
{
	nop
}
{
	nop
}
$BB1_30:                                # %for.body50
                                        #   in Loop: Header=BB1_29 Depth=1
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,0
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	addi	GR3, GR2, 4
}
{
	movigl	GR3,1
	store32	GR3, GR30, 3
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
# BB#31:                                # %for.inc53
                                        #   in Loop: Header=BB1_29 Depth=1
{
	load32	GR2, GR30, 251
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
	store32	GR2, GR30, 251
}
{
	jmp	$BB1_29
}
{
	nop
}
{
	nop
}
$BB1_32:                                # %for.end55
{
	load32	GR4, GR30, 251
}
{
	nop
}
{
	nop
}
{
	call	pin_down
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
	addi	GR30, GR30, 1016
	movigh	GR2,0
	load32	GR31, GR30, 253
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

	.type	In,@object              # @In
	.data
	.globl	In
	.align	2
In:
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	3                       # 0x3
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	3                       # 0x3
	.4byte	2                       # 0x2
	.4byte	0                       # 0x0
	.4byte	2                       # 0x2
	.4byte	0                       # 0x0
	.4byte	2                       # 0x2
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	3                       # 0x3
	.4byte	2                       # 0x2
	.4byte	0                       # 0x0
	.4byte	2                       # 0x2
	.4byte	0                       # 0x0
	.4byte	2                       # 0x2
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	3                       # 0x3
	.4byte	3                       # 0x3
	.4byte	1                       # 0x1
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	1                       # 0x1
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.size	In, 960


