	.text
	.file	"./testcase_4slots/startup.ll"
	.globl	pin_down
	.align	2
	.type	pin_down,@function
pin_down:                               # @pin_down
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -8
}
{
	store32	GR4, GR30, 1
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 1
	addi	GR30, GR30, 8
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
$tmp0:                                  # EmittedInsts:7
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
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 2
	store32	GR2, GR30, 252
	movigh	GR2,%hi(In)
}
{
	movigl	GR2,%lo(In)
}
{
	store32	GR2, GR30, 4
	addi	GR2, GR30, 36
}
{
	store32	GR2, GR30, 3
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
	jmp	$BB1_1
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %if.then
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 3
}
{
	store32	GR2, GR3, 0
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
$BB1_1:                                 # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_2 Depth 2
{
	store32	GR2, GR30, 5
}
$BB1_2:                                 # %while.cond
                                        #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB1_2 Depth=2
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR3, 4
}
{
	store32	GR2, GR30, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR3, 0
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	load32	GR3, GR3, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 6
	load32	GR4, GR30, 5
}
{
	eq	 GR3, GR4
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
{
	jmp	$BB1_4
}
{
	nop
}
{
	nop
}
$BB1_5:                                 # %while.end
{
	load32	GR5, GR30, 2
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 251
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
$BB1_7:                                 # %for.inc
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
	store32	GR3, GR30, 3
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
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
	jc	 $BB1_7
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %for.end
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
	store32	GR2, GR30, 4
	store32	GR5, GR30, 8
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
	store32	GR2, GR30, 5
}
{
	jmp	$BB1_9
}
{
	nop
}
{
	nop
}
$BB1_11:                                # %if.then20
                                        #   in Loop: Header=BB1_9 Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 3
}
{
	store32	GR2, GR3, 0
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
	load32	GR2, GR30, 8
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
$BB1_9:                                 # %while.cond13
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
	jc	 $BB1_12
}
{
	nop
}
{
	nop
}
# BB#10:                                # %while.body15
                                        #   in Loop: Header=BB1_9 Depth=1
{
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR3, 4
}
{
	store32	GR2, GR30, 3
	movigl	GR2,3
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR3, 0
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
	addi	GR4, GR3, 4
}
{
	store32	GR4, GR30, 4
}
{
	load32	GR3, GR3, 1
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 6
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, 1
}
{
	store32	GR3, GR30, 8
	load32	GR3, GR30, 5
}
{
	nop
}
{
	load32	GR4, GR30, 6
}
{
	eq	 GR4, GR3
}
{
	jc	 $BB1_9
}
{
	nop
}
{
	nop
}
{
	jmp	$BB1_11
}
{
	nop
}
{
	nop
}
$BB1_12:                                # %while.end25
{
	store32	GR5, GR30, 251
}
{
	jmp	$BB1_13
}
{
	nop
}
{
	nop
}
$BB1_16:                                # %cond.false
                                        #   in Loop: Header=BB1_13 Depth=1
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
}
$BB1_13:                                # %while.cond26
                                        # =>This Inner Loop Header: Depth=1
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
	jnc	 $BB1_17
}
{
	nop
}
{
	nop
}
# BB#14:                                # %while.body28
                                        #   in Loop: Header=BB1_13 Depth=1
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
	jc	 $BB1_16
}
{
	nop
}
{
	nop
}
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB1_13 Depth=1
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
	jmp	$BB1_13
}
{
	nop
}
{
	nop
}
$BB1_17:                                # %while.end33
                                        #   in Loop: Header=BB1_13 Depth=1
{
	movigl	GR2,7
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 251
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR2, -7
}
{
	neqi	 GR2, 0
}
{
	movg2g	GR3,GR5
}
{
	jc	 $BB1_22
}
{
	nop
}
{
	nop
}
# BB#18:                                # %land.lhs.true
                                        #   in Loop: Header=BB1_13 Depth=1
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
	load32	GR2, GR2, -6
}
{
	neqi	 GR2, 0
}
{
	movg2g	GR3,GR5
}
{
	jc	 $BB1_22
}
{
	nop
}
{
	nop
}
# BB#19:                                # %land.lhs.true38
                                        #   in Loop: Header=BB1_13 Depth=1
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
	load32	GR3, GR2, -4
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	and	GR3, GR3, GR2
}
{
	eqi	 GR3, 0
}
{
	movg2g	GR3,GR5
}
{
	jc	 $BB1_22
}
{
	nop
}
{
	nop
}
# BB#20:                                # %land.lhs.true41
                                        #   in Loop: Header=BB1_13 Depth=1
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
	load32	GR3, GR3, -2
}
{
	nop
}
{
	nop
}
{
	and	GR2, GR3, GR2
}
{
	eqi	 GR2, 0
}
{
	movg2g	GR3,GR5
}
{
	jc	 $BB1_22
}
{
	nop
}
{
	nop
}
# BB#21:                                # %land.rhs
                                        #   in Loop: Header=BB1_13 Depth=1
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
	load32	GR3, GR2, 0
}
{
	nop
}
{
	nop
}
$BB1_22:                                # %do.cond
                                        #   in Loop: Header=BB1_13 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	and	GR3, GR3, GR2
}
{
	store32	GR3, GR30, 7
}
{
	eqi	 GR3, 0
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
# BB#23:                                # %do.end
{
	movigl	GR3,31
}
{
	movigh	GR3,0
	load32	GR4, GR30, 8
}
{
	nop
}
{
	nop
}
{
	srl	GR3, GR4, GR3
}
{
	add	GR3, GR4, GR3
}
{
	sra	GR3, GR3, GR2
}
{
	store32	GR3, GR30, 8
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 251
}
{
	jmp	$BB1_24
}
{
	nop
}
{
	nop
}
$BB1_25:                                # %for.inc53
                                        #   in Loop: Header=BB1_24 Depth=1
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 4
}
{
	store32	GR5, GR30, 3
}
{
	store32	GR3, GR4, 0
}
{
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	addi	GR5, GR4, 4
}
{
	store32	GR5, GR30, 3
}
{
	store32	GR2, GR4, 0
}
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
	addi	GR4, GR4, 1
}
{
	store32	GR4, GR30, 251
}
$BB1_24:                                # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 251
}
{
	gt	 GR5, GR4
}
{
	jnc	 $BB1_25
}
{
	nop
}
{
	nop
}
# BB#26:                                # %for.end55
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
	movigh	GR2,0
	load32	GR31, GR30, 253
	addi	GR30, GR30, 1016
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
$tmp1:                                  # EmittedInsts:322
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


