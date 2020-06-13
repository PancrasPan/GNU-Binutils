	.text
	.file	"./c_standard_lib-master/MATH/ATAN2.ll"
	.globl	atan2
	.align	2
	.type	atan2,@function
atan2:                                  # @atan2
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -96
}
{
	store32	GR31, GR30, 23
	store32	GR29, GR30, 22
}
{
	store32	GR20, GR30, 21
	store32	GR19, GR30, 20
}
{
	store32	GR18, GR30, 19
	store32	GR17, GR30, 18
}
{
	store32	GR16, GR30, 17
	load32	GR2, GR30, 26
	load32	GR3, GR30, 27
	store32	GR5, GR30, 13
}
{
	store32	GR4, GR30, 12
	store32	GR3, GR30, 11
}
{
	store32	GR2, GR30, 10
	addi	GR4, GR30, 40
}
{
	call	_Dtest
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 14
	addi	GR4, GR30, 48
}
{
	call	_Dtest
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 12
	load16	GR2, GR30, 14
}
{
	lti	 GR2, 1
}
{
	jnc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %land.lhs.true
{
	load16	GR2, GR30, 12
}
{
	lti	 GR2, 1
}
{
	jnc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#2:                                 # %if.then
{
	movigl	GR18,0
}
{
	movigh	GR18,0
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 12
}
{
	nop
}
{
	load32	GR17, GR30, 13
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__gedf2
}
{
	nop
}
{
	nop
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
	movigl	GR19,-1
}
{
	movigh	GR19,-1
}
{
	gt	 GR2, GR19
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__unorddf2
}
{
	nop
}
{
	nop
}
{
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR20
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
# BB#3:                                 # %if.then8
{
	load32	GR2, GR30, 13
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
	load32	GR2, GR30, 12
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
	movigh	GR5,-32768
}
{
	call	__subdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 13
}
{
	store32	GR2, GR30, 12
	movigl	GR2,8
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 10
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
$BB0_12:                                # %if.else30
{
	load16	GR2, GR30, 14
}
{
	eqi	 GR2, 2
}
{
	jc	 $BB0_14
}
{
	nop
}
{
	nop
}
# BB#13:                                # %lor.lhs.false
{
	load16	GR2, GR30, 12
}
{
	neqi	 GR2, 2
}
{
	jc	 $BB0_18
}
{
	nop
}
{
	nop
}
$BB0_14:                                # %if.then37
{
	movigh	GR2,%hi(errno)
}
{
	movigl	GR2,%lo(errno)
	movigl	GR3,33
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR2, 0
	load16	GR2, GR30, 14
}
{
	neqi	 GR2, 2
}
{
	jc	 $BB0_16
}
{
	nop
}
{
	nop
}
# BB#15:                                # %cond.true
{
	load32	GR2, GR30, 11
	load32	GR3, GR30, 10
}
{
	nop
}
{
	jmp	$BB0_17
}
{
	nop
}
{
	nop
}
$BB0_16:                                # %cond.false
{
	load32	GR2, GR30, 13
}
{
	nop
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
$BB0_17:                                # %cond.end
{
	store32	GR3, GR30, 14
}
{
	store32	GR2, GR30, 15
}
{
	jmp	$BB0_29
}
{
	nop
}
{
	nop
}
$BB0_18:                                # %if.else41
{
	load16	GR2, GR30, 12
	load16	GR3, GR30, 14
}
{
	neq	 GR3, GR2
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
# BB#19:                                # %if.then46
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 9
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_21
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %if.else
{
	store16	GR18, GR30, 10
}
$BB0_5:                                 # %if.end
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 10
}
{
	nop
}
{
	load32	GR17, GR30, 11
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__gedf2
}
{
	nop
}
{
	nop
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
	gt	 GR2, GR19
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__unorddf2
}
{
	nop
}
{
	nop
}
{
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR20
}
{
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#6:                                 # %if.then11
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
	store32	GR2, GR30, 3
}
{
	load32	GR2, GR30, 10
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
	movigh	GR5,-32768
}
{
	call	__subdf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 11
}
{
	store32	GR2, GR30, 10
	movigl	GR2,6
}
{
	movigh	GR2,0
	load16	GR3, GR30, 10
}
{
	xor	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 10
}
$BB0_7:                                 # %if.end15
{
	load32	GR20, GR30, 13
}
{
	nop
}
{
	nop
}
{
	store32	GR20, GR30, 3
}
{
	load32	GR29, GR30, 12
}
{
	nop
}
{
	nop
}
{
	store32	GR29, GR30, 2
}
{
	load32	GR16, GR30, 10
}
{
	nop
}
{
	load32	GR17, GR30, 11
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__gedf2
}
{
	nop
}
{
	nop
}
{
	store32	GR20, GR30, 3
}
{
	store32	GR29, GR30, 2
	gt	 GR2, GR19
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__unorddf2
}
{
	nop
}
{
	nop
}
{
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR19
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
# BB#8:                                 # %if.then18
{
	load32	GR2, GR30, 13
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
	load32	GR2, GR30, 12
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
	load32	GR4, GR30, 10
}
{
	nop
}
{
	load32	GR5, GR30, 11
}
{
	nop
}
{
	nop
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
	jmp	$BB0_27
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %if.else22
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR16, GR30, 10
}
{
	nop
}
{
	load32	GR17, GR30, 11
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__ledf2
}
{
	nop
}
{
	nop
}
{
	store32	GR18, GR30, 3
}
{
	store32	GR18, GR30, 2
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
	movg2g	GR4,GR16
}
{
	movg2g	GR5,GR17
}
{
	call	__unorddf2
}
{
	nop
}
{
	nop
}
{
	neq	 GR2, GR18
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#10:                                # %if.then25
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
	store32	GR2, GR30, 3
}
{
	load32	GR2, GR30, 10
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
	jmp	$BB0_28
}
{
	nop
}
{
	nop
}
$BB0_20:                                # %if.else47
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 9
}
$BB0_21:                                # %if.end48
{
	store32	GR2, GR30, 8
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR29, GR30, 55
}
{
	load8	GR3, GR29, 0
}
{
	and	GR3, GR3, GR2
}
{
	eqi	 GR3, 0
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
# BB#22:                                # %if.then50
{
	movigl	GR3,8
}
{
	movigh	GR3,0
}
{
	jmp	$BB0_24
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %if.else27
{
	store32	GR18, GR30, 15
}
{
	store32	GR18, GR30, 14
}
{
	jmp	$BB0_29
}
{
	nop
}
{
	nop
}
$BB0_23:                                # %if.else51
{
	movigl	GR3,0
}
{
	movigh	GR3,0
}
$BB0_24:                                # %if.end52
{
	store16	GR3, GR30, 10
	addi	GR29, GR30, 47
}
{
	load8	GR3, GR29, 0
}
{
	and	GR2, GR3, GR2
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_26
}
{
	nop
}
{
	nop
}
# BB#25:                                # %if.then57
{
	movigl	GR2,6
}
{
	movigh	GR2,0
	load16	GR3, GR30, 10
}
{
	xor	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 10
}
$BB0_26:                                # %if.end61
{
	load16	GR2, GR30, 12
}
{
	neqi	 GR2, 1
}
{
	jc	 $BB0_28
}
{
	nop
}
{
	nop
}
$BB0_27:                                # %if.then65
{
	movigl	GR2,2
}
{
	movigh	GR2,0
	load16	GR3, GR30, 10
}
{
	xor	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 10
}
$BB0_28:                                # %if.end71
{
	load32	GR5, GR30, 9
	load32	GR4, GR30, 8
}
{
	load16	GR2, GR30, 10
}
{
	store32	GR2, GR30, 2
}
{
	call	_Atan
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
$BB0_29:                                # %return
{
	load32	GR2, GR30, 14
	load32	GR3, GR30, 15
}
{
	load32	GR16, GR30, 17
	load32	GR17, GR30, 18
}
{
	load32	GR18, GR30, 19
	load32	GR19, GR30, 20
}
{
	load32	GR20, GR30, 21
	load32	GR29, GR30, 22
}
{
	load32	GR31, GR30, 23
	addi	GR30, GR30, 96
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
	.size	atan2, ($tmp0)-atan2

