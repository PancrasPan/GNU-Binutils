	.text
	.file	"./c_standard_lib-master/MATH/POW.ll"
	.globl	pow
	.align	2
	.type	pow,@function
pow:                                    # @pow
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -152
}
{
	store32	GR31, GR30, 37
	store32	GR29, GR30, 36
}
{
	store32	GR20, GR30, 35
	store32	GR19, GR30, 34
}
{
	store32	GR18, GR30, 33
	store32	GR17, GR30, 32
}
{
	store32	GR16, GR30, 31
	load32	GR2, GR30, 40
	load32	GR3, GR30, 41
	store32	GR5, GR30, 27
}
{
	store32	GR4, GR30, 26
	store32	GR3, GR30, 25
}
{
	store32	GR2, GR30, 24
	store32	GR3, GR30, 23
}
{
	store32	GR2, GR30, 22
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	store16	GR16, GR30, 28
	addi	GR4, GR30, 64
	addi	GR5, GR30, 104
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
	store16	GR2, GR30, 26
	addi	GR4, GR30, 88
}
{
	movg2g	GR5,GR16
}
{
	call	_Dint
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 24
	load16	GR2, GR30, 26
}
{
	lti	 GR2, 0
}
{
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#1:                                 # %lor.lhs.false
{
	movigl	GR20,1
}
{
	movigh	GR20,0
	load16	GR2, GR30, 24
}
{
	lt	 GR2, GR20
}
{
	jc	 $BB0_38
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %if.then
{
	movigh	GR2,%hi(_Nan)
}
{
	movigl	GR2,%lo(_Nan)
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
	store32	GR3, GR30, 19
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 18
	load16	GR2, GR30, 26
}
{
	eqi	 GR2, 2
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
# BB#3:                                 # %lor.lhs.false9
{
	load16	GR2, GR30, 24
}
{
	neqi	 GR2, 2
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
$BB0_4:                                 # %if.then13
{
	load16	GR2, GR30, 26
}
{
	neqi	 GR2, 2
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
# BB#5:                                 # %if.then17
{
	load32	GR2, GR30, 26
	load32	GR3, GR30, 27
}
{
	nop
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
$BB0_6:                                 # %if.else
{
	load32	GR2, GR30, 24
}
{
	nop
}
{
	load32	GR3, GR30, 25
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.end
{
	store32	GR3, GR30, 19
}
{
	store32	GR2, GR30, 18
}
$BB0_8:                                 # %if.end
{
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 26
}
$BB0_31:                                # %if.end93
{
	load16	GR2, GR30, 26
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
# BB#33:                                # %if.else98
{
	load16	GR2, GR30, 26
}
{
	neqi	 GR2, 1
}
{
	jc	 $BB0_91
}
{
	nop
}
{
	nop
}
# BB#34:                                # %if.then102
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
	load16	GR2, GR30, 28
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_36
}
{
	nop
}
{
	nop
}
# BB#35:                                # %if.then104
{
	movigh	GR2,%hi(_Inf)
}
{
	movigl	GR2,%lo(_Inf)
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
	jmp	$BB0_90
}
{
	nop
}
{
	nop
}
$BB0_32:                                # %if.then97
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 29
}
{
	jmp	$BB0_94
}
{
	nop
}
{
	nop
}
$BB0_38:                                # %if.end107
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
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
	jc	 $BB0_40
}
{
	nop
}
{
	nop
}
# BB#39:                                # %if.then110
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 29
}
{
	store32	GR16, GR30, 28
}
{
	jmp	$BB0_95
}
{
	nop
}
{
	nop
}
$BB0_91:                                # %if.else106
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
}
$BB0_92:                                # %if.else267
{
	load32	GR2, GR30, 18
	load32	GR3, GR30, 19
}
{
	nop
}
{
	jmp	$BB0_93
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %if.else18
{
	load16	GR2, GR30, 24
}
{
	neqi	 GR2, 1
}
{
	jc	 $BB0_19
}
{
	nop
}
{
	nop
}
# BB#10:                                # %if.then22
{
	load16	GR2, GR30, 26
}
{
	neqi	 GR2, 1
}
{
	jnc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#12:                                # %if.else27
{
	load16	GR2, GR30, 32
}
{
	lti	 GR2, 1
}
{
	jnc	 $BB0_15
}
{
	nop
}
{
	nop
}
# BB#13:                                # %if.then31
{
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR29, GR30, 103
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
	jnc	 $BB0_11
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_40:                                # %if.end111
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 26
}
{
	nop
}
{
	load32	GR18, GR30, 27
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
	lt	 GR2, GR20
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_42
}
{
	nop
}
{
	nop
}
# BB#41:                                # %if.then114
{
	store16	GR16, GR30, 28
}
{
	jmp	$BB0_45
}
{
	nop
}
{
	nop
}
$BB0_19:                                # %if.else57
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
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
	jc	 $BB0_21
}
{
	nop
}
{
	nop
}
# BB#20:                                # %if.then60
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 29
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_94
}
{
	nop
}
{
	nop
}
$BB0_36:                                # %if.else105
{
	movigh	GR2,%hi(_Inf)
}
{
	movigl	GR2,%lo(_Inf)
}
{
	jmp	$BB0_37
}
{
	nop
}
{
	nop
}
$BB0_42:                                # %if.else115
{
	load16	GR2, GR30, 24
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_43
}
{
	nop
}
{
	nop
}
# BB#44:                                # %if.else120
{
	load32	GR2, GR30, 27
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
	load32	GR2, GR30, 26
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
	store32	GR3, GR30, 27
}
{
	store32	GR2, GR30, 26
	addi	GR4, GR30, 88
	movigl	GR5,-1
}
{
	movigh	GR5,-1
}
{
	call	_Dint
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,31
}
{
	movigh	GR3,0
}
{
	srl	GR2, GR2, GR3
}
{
	store16	GR2, GR30, 28
}
$BB0_45:                                # %if.end128
{
	movigl	GR19,-24418
}
{
	movigh	GR19,16358
}
{
	store32	GR19, GR30, 3
	movigl	GR29,15309
}
{
	movigh	GR29,26239
}
{
	store32	GR29, GR30, 2
}
{
	load32	GR17, GR30, 26
}
{
	nop
}
{
	load32	GR18, GR30, 27
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR19, GR30, 3
}
{
	store32	GR29, GR30, 2
	movigl	GR29,-1
}
{
	movigh	GR29,-1
}
{
	gt	 GR2, GR29
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_47
}
{
	nop
}
{
	nop
}
# BB#46:                                # %if.then131
{
	load32	GR5, GR30, 27
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 3
}
{
	load32	GR4, GR30, 26
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	call	__adddf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 27
}
{
	store32	GR2, GR30, 26
	load16	GR2, GR30, 32
}
{
	addi	GR2, GR2, -1
}
{
	store16	GR2, GR30, 32
}
$BB0_47:                                # %if.end132
{
	movigl	GR19,-14336
}
{
	movigh	GR19,-16228
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	store16	GR16, GR30, 34
	store32	GR16, GR30, 21
}
{
	store32	GR16, GR30, 20
	load32	GR17, GR30, 24
}
{
	nop
}
{
	load32	GR18, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
}
{
	call	__gtdf2
}
{
	nop
}
{
	nop
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR16, GR30, 2
	gt	 GR2, GR16
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_52
}
{
	nop
}
{
	nop
}
# BB#48:                                # %if.then135
{
	load16	GR2, GR30, 32
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_49
}
{
	nop
}
{
	nop
}
# BB#50:                                # %if.else140
{
	load16	GR2, GR30, 32
}
{
	neqi	 GR2, 0
}
{
	jc	 $BB0_54
}
{
	nop
}
{
	nop
}
# BB#51:                                # %if.then144
{
	store16	GR16, GR30, 30
}
{
	jmp	$BB0_67
}
{
	nop
}
{
	nop
}
$BB0_52:                                # %if.else148
{
	movigl	GR19,-14336
}
{
	movigh	GR19,16540
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 24
}
{
	nop
}
{
	load32	GR18, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
}
{
	call	__ltdf2
}
{
	nop
}
{
	nop
}
{
	store32	GR19, GR30, 3
}
{
	store32	GR16, GR30, 2
	lt	 GR2, GR16
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_57
}
{
	nop
}
{
	nop
}
# BB#53:                                # %if.then151
{
	load16	GR2, GR30, 32
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_54
}
{
	nop
}
{
	nop
}
# BB#55:                                # %if.else156
{
	load16	GR2, GR30, 32
}
{
	neqi	 GR2, 0
}
{
	jnc	 $BB0_56
}
{
	nop
}
{
	nop
}
$BB0_49:                                # %if.then139
{
	movigl	GR2,1842
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 30
}
{
	jmp	$BB0_67
}
{
	nop
}
{
	nop
}
$BB0_21:                                # %if.else61
{
	load16	GR2, GR30, 26
}
{
	neqi	 GR2, 1
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
# BB#22:                                # %if.then65
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 24
}
{
	nop
}
{
	load32	GR18, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	gt	 GR2, GR3
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
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
# BB#23:                                # %if.then68
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_25
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %if.else36
{
	load16	GR2, GR30, 32
}
{
	neqi	 GR2, 1
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
# BB#16:                                # %land.lhs.true
{
	movigl	GR2,0
}
{
	movigh	GR2,16352
}
{
	store32	GR2, GR30, 3
	movigl	GR16,0
}
{
	movigh	GR16,0
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 26
}
{
	nop
}
{
	load32	GR5, GR30, 27
}
{
	nop
}
{
	nop
}
{
	call	__eqdf2
}
{
	nop
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_8
}
{
	nop
}
{
	nop
}
# BB#17:                                # %lor.lhs.false42
{
	movigl	GR2,0
}
{
	movigh	GR2,-16416
}
{
	store32	GR2, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 26
}
{
	nop
}
{
	load32	GR5, GR30, 27
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
	jnc	 $BB0_8
}
{
	nop
}
{
	nop
}
$BB0_18:                                # %if.else46
{
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR29, GR30, 103
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
	jc	 $BB0_11
}
{
	nop
}
{
	nop
}
$BB0_14:                                # %if.else34
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 26
}
{
	jmp	$BB0_31
}
{
	nop
}
{
	nop
}
$BB0_54:                                # %if.else145
{
	movigl	GR2,-1842
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 30
}
{
	jmp	$BB0_67
}
{
	nop
}
{
	nop
}
$BB0_57:                                # %if.else164
{
	load16	GR4, GR30, 32
}
{
	call	__dsp_floatsidf
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
}
{
	store32	GR3, GR30, 11
}
{
	store32	GR2, GR30, 10
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
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
	store32	GR3, GR30, 21
}
{
	store32	GR2, GR30, 20
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__fixdfsi
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
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_59
}
{
	nop
}
{
	nop
}
# BB#58:                                # %if.then170
{
	load32	GR2, GR30, 24
	load32	GR3, GR30, 25
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 21
}
{
	store32	GR2, GR30, 20
	addi	GR4, GR30, 80
	movigl	GR5,16
}
{
	movigh	GR5,0
}
{
	call	_Dint
}
{
	nop
}
{
	nop
}
{
	load32	GR2, GR30, 21
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 7
	store32	GR2, GR30, 3
}
{
	load32	GR18, GR30, 20
}
{
	nop
}
{
	nop
}
{
	store32	GR18, GR30, 2
}
{
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
}
{
	nop
}
{
	nop
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
	load32	GR17, GR30, 11
}
{
	nop
}
{
	nop
}
{
	store32	GR17, GR30, 3
	store32	GR29, GR30, 8
}
{
	load32	GR29, GR30, 10
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
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	store32	GR2, GR30, 6
	store32	GR3, GR30, 5
	load32	GR4, GR30, 9
}
{
	nop
}
{
	nop
}
{
	call	__dsp_floatsidf
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
{
	movg2g	GR19,GR3
}
{
	store32	GR17, GR30, 3
}
{
	store32	GR29, GR30, 2
	load32	GR29, GR30, 8
}
{
	movg2g	GR4,GR18
}
{
	load32	GR5, GR30, 7
}                                       # 4-byte Folded Reload
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
	store32	GR19, GR30, 3
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	load32	GR4, GR30, 5
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
	load32	GR4, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__adddf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 21
}
{
	store32	GR2, GR30, 20
}
$BB0_59:                                # %if.end177
{
	movigl	GR2,11842
}
{
	movigh	GR2,16358
}
{
	store32	GR2, GR30, 3
	movigl	GR2,14831
}
{
	movigh	GR2,-262
}
{
	store32	GR2, GR30, 2
}
{
	load32	GR4, GR30, 20
}
{
	nop
}
{
	load32	GR5, GR30, 21
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
	store32	GR3, GR30, 21
}
{
	store32	GR2, GR30, 20
	load32	GR2, GR30, 9
}
{
	nop
}
{
	lti	 GR2, -1841
}
{
	jnc	 $BB0_61
}
{
	nop
}
{
	nop
}
# BB#60:                                # %if.then181
{
	movigl	GR2,-1842
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_64
}
{
	nop
}
{
	nop
}
$BB0_43:                                # %if.then119
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
	movigh	GR2,%hi(_Nan)
}
{
	movigl	GR2,%lo(_Nan)
}
$BB0_37:                                # %return
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
	store32	GR3, GR30, 29
	load32	GR2, GR2, 0
}
{
	nop
}
{
	jmp	$BB0_94
}
{
	nop
}
{
	nop
}
$BB0_29:                                # %if.else84
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 24
}
{
	nop
}
{
	load32	GR18, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
	movigl	GR3,-1
}
{
	movigh	GR3,-1
}
{
	gt	 GR2, GR3
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
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
$BB0_11:                                # %if.then26
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 26
}
{
	jmp	$BB0_31
}
{
	nop
}
{
	nop
}
$BB0_61:                                # %if.else182
{
	load32	GR2, GR30, 9
}
{
	nop
}
{
	lti	 GR2, 1842
}
{
	jnc	 $BB0_63
}
{
	nop
}
{
	nop
}
# BB#62:                                # %if.then185
{
	load16	GR2, GR30, 18
}
{
	jmp	$BB0_64
}
{
	nop
}
{
	nop
}
$BB0_24:                                # %if.else69
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_25:                                # %if.end70
{
	store16	GR2, GR30, 26
	movigl	GR2,128
}
{
	movigh	GR2,0
	addi	GR29, GR30, 111
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
	jc	 $BB0_28
}
{
	nop
}
{
	nop
}
# BB#26:                                # %land.lhs.true75
{
	load16	GR2, GR30, 24
}
{
	neqi	 GR2, 0
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
# BB#27:                                # %land.rhs
{
	addi	GR4, GR30, 96
	movigl	GR5,-1
}
{
	movigh	GR5,-1
}
{
	call	_Dint
}
{
	nop
}
{
	nop
}
{
	movigl	GR3,31
}
{
	movigh	GR3,0
}
{
	srl	GR16, GR2, GR3
}
$BB0_28:                                # %land.end
{
	store16	GR16, GR30, 28
}
{
	jmp	$BB0_31
}
{
	nop
}
{
	nop
}
$BB0_30:                                # %if.else88
{
	store16	GR16, GR30, 26
}
{
	jmp	$BB0_31
}
{
	nop
}
{
	nop
}
$BB0_63:                                # %if.else187
{
	movigl	GR2,1842
}
{
	movigh	GR2,0
}
$BB0_64:                                # %if.end189
{
	store16	GR2, GR30, 30
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
}
{
	nop
}
{
	nop
}
{
	call	__fixdfsi
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 34
	movigl	GR3,-1023
}
{
	movigh	GR3,-1
}
{
	lt	 GR2, GR3
}
{
	jc	 $BB0_66
}
{
	nop
}
{
	nop
}
# BB#65:                                # %lor.lhs.false194
{
	movigl	GR2,1024
}
{
	movigh	GR2,0
	load16	GR3, GR30, 34
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_67
}
{
	nop
}
{
	nop
}
$BB0_66:                                # %if.then198
{
	store16	GR16, GR30, 34
}
{
	jmp	$BB0_67
}
{
	nop
}
{
	nop
}
$BB0_56:                                # %if.then160
{
	store16	GR16, GR30, 30
}
$BB0_67:                                # %if.end201
{
	movigl	GR2,0
}
{
	movigh	GR2,16368
}
{
	store32	GR2, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	store32	GR2, GR30, 19
}
{
	store32	GR16, GR30, 18
	load32	GR4, GR30, 26
}
{
	nop
}
{
	load32	GR5, GR30, 27
}
{
	nop
}
{
	nop
}
{
	call	__eqdf2
}
{
	nop
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_79
}
{
	nop
}
{
	nop
}
# BB#68:                                # %if.then204
{
	load16	GR4, GR30, 34
}
{
	call	__dsp_floatsidf
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
}
{
	load32	GR4, GR30, 24
}
{
	nop
}
{
	load32	GR5, GR30, 25
}
{
	nop
}
{
	nop
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	store32	GR3, GR30, 23
}
{
	store32	GR2, GR30, 22
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
}
{
	call	__eqdf2
}
{
	nop
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_70
}
{
	nop
}
{
	nop
}
# BB#69:                                # %if.then209
{
	load32	GR5, GR30, 27
	load32	GR4, GR30, 26
}
{
	nop
}
{
	store32	GR16, GR30, 2
}
{
	call	_Log
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 23
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
}
{
	load32	GR4, GR30, 22
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR3
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
	store32	GR3, GR30, 3
}
{
	store32	GR2, GR30, 2
}
{
	load32	GR4, GR30, 20
}
{
	nop
}
{
	load32	GR5, GR30, 21
}
{
	nop
}
{
	nop
}
{
	call	__adddf3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR30, 21
}
{
	store32	GR2, GR30, 20
}
$BB0_70:                                # %if.end213
{
	load16	GR2, GR30, 34
}
{
	lti	 GR2, 0
}
{
	jnc	 $BB0_72
}
{
	nop
}
{
	nop
}
# BB#71:                                # %if.then217
{
	load16	GR2, GR30, 34
}
{
	sub	GR2, GR16, GR2
}
{
	store16	GR2, GR30, 34
}
$BB0_72:                                # %if.end221
{
	load32	GR2, GR30, 26
	load32	GR3, GR30, 27
}
{
	nop
}
{
	jmp	$BB0_73
}
{
	nop
}
{
	nop
}
$BB0_76:                                # %for.inc
                                        #   in Loop: Header=BB0_73 Depth=1
{
	load32	GR5, GR30, 23
}
{
	nop
}
{
	nop
}
{
	store32	GR5, GR30, 3
}
{
	load32	GR4, GR30, 22
}
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 2
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
$BB0_73:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR3, GR30, 23
}
{
	store32	GR2, GR30, 22
	load8	GR2, GR30, 68
}
{
	and	GR2, GR2, GR20
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_75
}
{
	nop
}
{
	nop
}
# BB#74:                                # %if.then225
                                        #   in Loop: Header=BB0_73 Depth=1
{
	load32	GR2, GR30, 23
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
	load32	GR2, GR30, 22
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
	load32	GR4, GR30, 18
}
{
	nop
}
{
	load32	GR5, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	store32	GR2, GR30, 18
}
$BB0_75:                                # %if.end227
                                        #   in Loop: Header=BB0_73 Depth=1
{
	load16	GR2, GR30, 34
}
{
	sra	GR2, GR2, GR20
}
{
	store16	GR2, GR30, 34
}
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_76
}
{
	nop
}
{
	nop
}
# BB#77:                                # %for.end
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR17, GR30, 24
}
{
	nop
}
{
	load32	GR18, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
	gt	 GR2, GR29
}
{
	movg2g	GR4,GR17
}
{
	movg2g	GR5,GR18
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
	neq	 GR2, GR16
}
{
	or	GR2, GR2, GR19
}
{
	jc	 $BB0_79
}
{
	nop
}
{
	nop
}
# BB#78:                                # %if.then238
{
	load32	GR2, GR30, 19
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
	load32	GR2, GR30, 18
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
	store32	GR3, GR30, 19
}
{
	store32	GR2, GR30, 18
}
$BB0_79:                                # %if.end240
{
	store32	GR16, GR30, 3
}
{
	store32	GR16, GR30, 2
}
{
	load32	GR4, GR30, 20
}
{
	nop
}
{
	load32	GR5, GR30, 21
}
{
	nop
}
{
	nop
}
{
	call	__eqdf2
}
{
	nop
}
{
	nop
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_86
}
{
	nop
}
{
	nop
}
# BB#80:                                # %if.then243
{
	addi	GR4, GR30, 80
	movigl	GR17,0
}
{
	movigh	GR17,0
}
{
	movg2g	GR5,GR17
}
{
	call	_Exp
}
{
	nop
}
{
	nop
}
{
	lti	 GR2, 0
}
{
	jc	 $BB0_81
}
{
	nop
}
{
	nop
}
# BB#82:                                # %if.else250
{
	store32	GR17, GR30, 3
}
{
	store32	GR17, GR30, 2
}
{
	load32	GR18, GR30, 24
}
{
	nop
}
{
	load32	GR19, GR30, 25
}
{
	nop
}
{
	movg2g	GR4,GR18
}
{
	movg2g	GR5,GR19
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
	store32	GR17, GR30, 3
}
{
	store32	GR17, GR30, 2
	gt	 GR2, GR29
}
{
	movg2g	GR4,GR18
}
{
	movg2g	GR5,GR19
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
	neq	 GR2, GR17
}
{
	or	GR2, GR2, GR20
}
{
	jc	 $BB0_84
}
{
	nop
}
{
	nop
}
# BB#83:                                # %if.then253
{
	store32	GR17, GR30, 19
}
{
	store32	GR17, GR30, 18
}
{
	jmp	$BB0_86
}
{
	nop
}
{
	nop
}
$BB0_81:                                # %if.then248
{
	load32	GR2, GR30, 21
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
	load32	GR2, GR30, 20
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
	load32	GR4, GR30, 18
}
{
	nop
}
{
	load32	GR5, GR30, 19
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
	store32	GR3, GR30, 19
}
{
	jmp	$BB0_85
}
{
	nop
}
{
	nop
}
$BB0_84:                                # %if.else254
{
	movigh	GR2,%hi(_Inf)
}
{
	movigl	GR2,%lo(_Inf)
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
	store32	GR3, GR30, 19
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_85:                                # %if.end257
{
	store32	GR2, GR30, 18
}
$BB0_86:                                # %if.end257
{
	load16	GR5, GR30, 30
	addi	GR4, GR30, 72
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
	lt	 GR2, GR16
}
{
	jc	 $BB0_88
}
{
	nop
}
{
	nop
}
# BB#87:                                # %if.then262
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
$BB0_88:                                # %if.end263
{
	load16	GR2, GR30, 28
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_92
}
{
	nop
}
{
	nop
}
# BB#89:                                # %if.then265
{
	load32	GR2, GR30, 19
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
	load32	GR2, GR30, 18
}
{
	nop
}
{
	nop
}
$BB0_90:                                # %return
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
$BB0_93:                                # %return
{
	store32	GR3, GR30, 29
}
$BB0_94:                                # %return
{
	store32	GR2, GR30, 28
}
$BB0_95:                                # %return
{
	load32	GR2, GR30, 28
	load32	GR3, GR30, 29
}
{
	load32	GR16, GR30, 31
	load32	GR17, GR30, 32
}
{
	load32	GR18, GR30, 33
	load32	GR19, GR30, 34
}
{
	load32	GR20, GR30, 35
	load32	GR29, GR30, 36
}
{
	load32	GR31, GR30, 37
	addi	GR30, GR30, 152
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
	.size	pow, ($tmp0)-pow

	.type	pow.shuge,@object       # @pow.shuge
	.section	.rodata,"a",@progbits
	.align	1
pow.shuge:
	.2byte	1842                    # 0x732
	.size	pow.shuge, 2

	.type	pow.dhuge,@object       # @pow.dhuge
	.align	3
pow.dhuge:
	.8byte	4655816017119805440     # double 1842
	.size	pow.dhuge, 8

	.type	pow.ln2,@object         # @pow.ln2
	.align	3
pow.ln2:
	.8byte	4604418534313441775     # double 0.69314718055994529
	.size	pow.ln2, 8

	.type	pow.rthalf,@object      # @pow.rthalf
	.align	3
pow.rthalf:
	.8byte	4604544271217802189     # double 0.70710678118654757
	.size	pow.rthalf, 8


