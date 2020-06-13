	.text
	.file	"./c_standard_lib-master/MATH/XDTENTO.ll"
	.globl	_Dtento
	.align	2
	.type	_Dtento,@function
_Dtento:                                # @_Dtento
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -80
}
{
	store32	GR31, GR30, 19
	store32	GR17, GR30, 18
}
{
	store32	GR16, GR30, 17
	load32	GR2, GR30, 22
	store32	GR5, GR30, 13
}
{
	store32	GR4, GR30, 12
	store16	GR2, GR30, 22
}
{
	load16	GR2, GR30, 22
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_32
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %lor.lhs.false
{
	movigl	GR17,0
}
{
	movigh	GR17,0
}
{
	store32	GR17, GR30, 3
}
{
	store32	GR17, GR30, 2
}
{
	load32	GR4, GR30, 12
}
{
	nop
}
{
	load32	GR5, GR30, 13
}
{
	nop
}
{
	nop
}
{
	call	__nedf2
}
{
	nop
}
{
	nop
}
{
	neqi	 GR2, 0
}
{
	jnc	 $BB0_32
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %if.end
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 9
}
{
	store32	GR17, GR30, 8
	load16	GR2, GR30, 22
}
{
	lti	 GR2, 0
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
# BB#16:                                # %if.else
{
	movigl	GR16,1
}
{
	movigh	GR16,0
	load16	GR2, GR30, 22
}
{
	lt	 GR2, GR16
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#17:                                # %if.then38
{
	store32	GR17, GR30, 6
}
{
	jmp	$BB0_18
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %for.inc55
                                        #   in Loop: Header=BB0_18 Depth=1
{
	load16	GR2, GR30, 22
}
{
	srl	GR2, GR2, GR16
}
{
	store16	GR2, GR30, 22
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
$BB0_18:                                # %for.cond39
                                        # =>This Inner Loop Header: Depth=1
{
	load16	GR2, GR30, 22
}
{
	lt	 GR2, GR16
	movg2g	GR2,GR17
}
{
	jc	 $BB0_20
}
{
	nop
}
{
	nop
}
# BB#19:                                # %land.rhs43
                                        #   in Loop: Header=BB0_18 Depth=1
{
	movigl	GR2,8
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	nop
}
{
	ltu	 GR3, GR2
}
$BB0_20:                                # %land.end46
                                        #   in Loop: Header=BB0_18 Depth=1
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_24
}
{
	nop
}
{
	nop
}
# BB#21:                                # %for.body47
                                        #   in Loop: Header=BB0_18 Depth=1
{
	load8	GR2, GR30, 44
}
{
	and	GR2, GR2, GR16
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_23
}
{
	nop
}
{
	nop
}
# BB#22:                                # %if.then51
                                        #   in Loop: Header=BB0_18 Depth=1
{
	movigl	GR2,3
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
	movigh	GR3,%hi(pows)
}
{
	movigl	GR3,%lo(pows)
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
	nop
}
{
	store32	GR3, GR30, 3
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
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB0_23
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.then7
{
	load16	GR2, GR30, 22
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	sub	GR2, GR16, GR2
}
{
	store32	GR2, GR30, 5
	store32	GR16, GR30, 6
}
{
	jmp	$BB0_4
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	srl	GR2, GR2, GR17
}
{
	store32	GR2, GR30, 5
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
$BB0_4:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 5
}
{
	eqi	 GR2, 0
}
{
	movg2g	GR2,GR16
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
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR2,8
}
{
	movigh	GR2,0
	load32	GR3, GR30, 6
}
{
	ltu	 GR3, GR2
}
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jnc	 $BB0_6
}
{
	nop
}
{
	nop
}
# BB#33:                                #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_6:                                 # %land.end
                                        #   in Loop: Header=BB0_4 Depth=1
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_10
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR17,1
}
{
	movigh	GR17,0
	load8	GR2, GR30, 20
}
{
	and	GR2, GR2, GR17
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_9
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %if.then13
                                        #   in Loop: Header=BB0_4 Depth=1
{
	movigl	GR2,3
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
	movigh	GR3,%hi(pows)
}
{
	movigl	GR3,%lo(pows)
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
	nop
}
{
	store32	GR3, GR30, 3
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
}
{
	load32	GR4, GR30, 8
}
{
	nop
}
{
	load32	GR5, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %for.end
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
	store32	GR2, GR30, 3
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
	store32	GR2, GR30, 2
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigl	GR5,0
}
{
	movigh	GR5,16368
}
{
	call	__divdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 48
}
{
	call	dmul
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 14
}
{
	load16	GR2, GR30, 14
}
{
	lti	 GR2, 0
}
{
	jnc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#11:                                # %land.lhs.true
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#12:                                # %if.then20
{
	movigh	GR2,%hi(pows)
}
{
	movigl	GR2,%lo(pows)
}
{
	load32	GR3, GR2, 17
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	load32	GR2, GR2, 16
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 2
	movigl	GR4,0
}
{
	movigh	GR4,0
	movigl	GR5,0
}
{
	movigh	GR5,16368
}
{
	call	__divdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB0_13
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %for.inc32
                                        #   in Loop: Header=BB0_13 Depth=1
{
	load32	GR2, GR30, 5
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
	store32	GR2, GR30, 5
}
$BB0_13:                                # %for.cond22
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#14:                                # %for.body25
                                        #   in Loop: Header=BB0_13 Depth=1
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 48
}
{
	call	dmul
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 14
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_15
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_30
}
{
	nop
}
{
	nop
}
$BB0_24:                                # %for.end60
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 48
}
{
	call	dmul
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 14
}
{
	load16	GR2, GR30, 14
}
{
	lti	 GR2, 0
}
{
	jnc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#25:                                # %land.lhs.true65
{
	load16	GR2, GR30, 22
}
{
	lt	 GR2, GR16
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#26:                                # %if.then69
{
	movigh	GR2,%hi(pows)
}
{
	movigl	GR2,%lo(pows)
}
{
	load32	GR3, GR2, 17
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 9
	load32	GR2, GR2, 16
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 8
}
{
	jmp	$BB0_27
}
{
	nop
}
{
	nop
}
$BB0_29:                                # %for.inc81
                                        #   in Loop: Header=BB0_27 Depth=1
{
	load16	GR2, GR30, 22
}
{
	addi	GR2, GR2, -1
}
{
	store16	GR2, GR30, 22
}
$BB0_27:                                # %for.cond70
                                        # =>This Inner Loop Header: Depth=1
{
	load16	GR2, GR30, 22
}
{
	lt	 GR2, GR16
}
{
	jc	 $BB0_30
}
{
	nop
}
{
	nop
}
# BB#28:                                # %for.body74
                                        #   in Loop: Header=BB0_27 Depth=1
{
	load32	GR2, GR30, 8
	load32	GR3, GR30, 9
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
	addi	GR4, GR30, 48
}
{
	call	dmul
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 14
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_29
}
{
	nop
}
{
	nop
}
$BB0_30:                                # %if.end86
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load16	GR3, GR30, 14
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_32
}
{
	nop
}
{
	nop
}
# BB#31:                                # %if.then90
{
	movigh	GR2,%hi(errno)
}
{
	movigl	GR2,%lo(errno)
	movigl	GR3,34
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
}
$BB0_32:                                # %if.end91
{
	load32	GR2, GR30, 12
	load32	GR3, GR30, 13
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 15
}
{
	store32	GR2, GR30, 14
}
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	load32	GR16, GR30, 17
	load32	GR17, GR30, 18
}
{
	load32	GR31, GR30, 19
	addi	GR30, GR30, 80
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
	.size	_Dtento, ($tmp0)-_Dtento

	.align	2
	.type	dmul,@function
dmul:                                   # @dmul
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -48
}
{
	store32	GR31, GR30, 11
	store32	GR16, GR30, 10
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	nop
}
{
	store32	GR4, GR30, 9
	store32	GR3, GR30, 7
}
{
	store32	GR2, GR30, 6
	load32	GR5, GR30, 9
}
{
	nop
}
{
	addi	GR4, GR30, 20
}
{
	call	_Dunscale
}
{
	nop
}
{
	nop
}
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
	store32	GR2, GR30, 3
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
	store32	GR2, GR30, 2
}
{
	load32	GR16, GR30, 9
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR16, 0
}
{
	nop
}
{
	load32	GR5, GR16, 1
}
{
	nop
}
{
	nop
}
{
	call	__muldf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR16, 1
}
{
	store32	GR2, GR16, 0
}
{
	load16	GR5, GR30, 10
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	_Dscale
}
{
	nop
}
{
	nop
}
{
	load32	GR16, GR30, 10
	load32	GR31, GR30, 11
	addi	GR30, GR30, 48
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
	.size	dmul, ($tmp1)-dmul

	.type	pows,@object            # @pows
	.section	.rodata,"a",@progbits
	.align	3
pows:
	.8byte	4621819117588971520     # double 1.000000e+01
	.8byte	4636737291354636288     # double 1.000000e+02
	.8byte	4666723172467343360     # double 1.000000e+04
	.8byte	4726483295884279808     # double 1.000000e+08
	.8byte	4846369599423283200     # double 1.000000e+16
	.8byte	5085611494797045271     # double 1.000000e+32
	.8byte	5564284217833028085     # double 1.000000e+64
	.8byte	6521906365687930162     # double 1.000000e+128
	.8byte	8436737289693151036     # double 1.000000e+256
	.size	pows, 72


