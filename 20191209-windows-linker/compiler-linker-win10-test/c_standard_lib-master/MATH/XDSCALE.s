	.text
	.file	"./c_standard_lib-master/MATH/XDSCALE.ll"
	.globl	_Dscale
	.align	2
	.type	_Dscale,@function
_Dscale:                                # @_Dscale
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -56
}
{
	store32	GR31, GR30, 13
	store32	GR16, GR30, 12
}
{
	store32	GR4, GR30, 10
	store16	GR5, GR30, 18
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
	store32	GR2, GR30, 7
}
{
	load16	GR2, GR2, 3
	movigl	GR3,32752
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
	movigl	GR16,4
}
{
	movigh	GR16,0
}
{
	srl	GR2, GR2, GR16
}
{
	store16	GR2, GR30, 12
}
{
	load16	GR2, GR30, 12
}
{
	neqi	 GR2, 2047
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
# BB#1:                                 # %if.then
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
	load16	GR2, GR2, 3
	movigl	GR3,15
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
}
{
	neqi	 GR2, 0
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
# BB#2:                                 # %lor.lhs.false
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
	load16	GR2, GR2, 2
}
{
	neqi	 GR2, 0
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
# BB#3:                                 # %lor.lhs.false10
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
	load16	GR2, GR2, 1
}
{
	neqi	 GR2, 0
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
# BB#4:                                 # %lor.lhs.false14
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
	load16	GR2, GR2, 0
}
{
	eqi	 GR2, 0
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
$BB0_5:                                 # %if.then18
{
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 22
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
$BB0_6:                                 # %if.else19
{
	load16	GR2, GR30, 12
}
{
	lti	 GR2, 1
}
{
	jnc	 $BB0_9
}
{
	nop
}
{
	nop
}
# BB#7:                                 # %if.else24
{
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	call	_Dnorm
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 12
	movigl	GR3,1
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
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
# BB#8:                                 # %if.then28
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 22
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
$BB0_9:                                 # %if.end30
{
	load16	GR2, GR30, 12
	load16	GR3, GR30, 18
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 8
	movigl	GR3,2047
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
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
# BB#10:                                # %if.then35
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
	load8	GR2, GR2, 7
	movigl	GR3,128
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
}
{
	eqi	 GR2, 0
}
{
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#11:                                # %if.then40
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
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR4, 1
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
$BB0_15:                                # %if.else43
{
	movigl	GR2,1
}
{
	movigh	GR2,0
	load32	GR3, GR30, 8
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_17
}
{
	nop
}
{
	nop
}
# BB#16:                                # %if.then46
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
	sl	GR2, GR2, GR16
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load16	GR4, GR3, 3
	movigl	GR5,-32753
}
{
	movigh	GR5,0
}
{
	and	GR4, GR4, GR5
}
{
	or	GR2, GR4, GR2
}
{
	store16	GR2, GR3, 3
	movigl	GR2,-1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 22
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
$BB0_17:                                # %if.else54
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
	load16	GR2, GR2, 3
	movigl	GR3,-32768
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
}
{
	store16	GR2, GR30, 10
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load16	GR2, GR3, 3
	movigl	GR4,15
}
{
	movigh	GR4,0
}
{
	and	GR4, GR2, GR4
	movigl	GR2,16
}
{
	movigh	GR2,0
}
{
	or	GR4, GR4, GR2
}
{
	store16	GR4, GR3, 3
}
{
	load32	GR3, GR30, 8
}
{
	nop
}
{
	nop
}
{
	addi	GR3, GR3, -1
}
{
	store32	GR3, GR30, 8
}
{
	lti	 GR3, -52
}
{
	jnc	 $BB0_19
}
{
	nop
}
{
	nop
}
# BB#18:                                # %if.then67
{
	load32	GR2, GR30, 7
}
{
	nop
}
{
	load16	GR3, GR30, 10
}
{
	store16	GR3, GR2, 3
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR3, 2
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
	store16	GR2, GR3, 1
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
	store16	GR2, GR3, 0
}
{
	store16	GR2, GR30, 22
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
$BB0_12:                                # %if.else41
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
	load32	GR4, GR30, 10
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR4, 1
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
$BB0_13:                                # %if.end42
{
	store32	GR2, GR4, 0
}
$BB0_14:                                # %if.else
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 22
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
$BB0_19:                                # %if.else72
{
	load16	GR3, GR30, 16
}
{
	jmp	$BB0_20
}
{
	nop
}
{
	nop
}
$BB0_21:                                # %for.inc
                                        #   in Loop: Header=BB0_20 Depth=1
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
	load16	GR4, GR3, 1
}
{
	store16	GR4, GR3, 0
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
	load16	GR4, GR3, 2
}
{
	store16	GR4, GR3, 1
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
	load16	GR4, GR3, 3
}
{
	store16	GR4, GR3, 2
	movigl	GR3,0
}
{
	movigh	GR3,0
	load32	GR4, GR30, 7
}
{
	nop
}
{
	nop
}
{
	store16	GR3, GR4, 3
}
{
	load16	GR3, GR30, 18
}
{
	addi	GR3, GR3, 16
}
$BB0_20:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store16	GR3, GR30, 18
}
{
	load16	GR3, GR30, 18
}
{
	lti	 GR3, -15
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
# BB#22:                                # %for.end
{
	load16	GR3, GR30, 18
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	sub	GR4, GR4, GR3
}
{
	store16	GR4, GR30, 18
	movigl	GR3,-1
}
{
	movigh	GR3,0
}
{
	and	GR4, GR4, GR3
}
{
	eqi	 GR4, 0
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
# BB#23:                                # %if.then93
{
	load16	GR4, GR30, 18
}
{
	sub	GR5, GR2, GR4
	load32	GR6, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load16	GR7, GR6, 1
}
{
	sl	GR5, GR7, GR5
	load16	GR7, GR6, 0
}
{
	srl	GR4, GR7, GR4
}
{
	or	GR4, GR4, GR5
}
{
	store16	GR4, GR6, 0
}
{
	load16	GR4, GR30, 18
}
{
	sub	GR5, GR2, GR4
	load32	GR6, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load16	GR7, GR6, 2
}
{
	sl	GR5, GR7, GR5
	load16	GR7, GR6, 1
}
{
	srl	GR4, GR7, GR4
}
{
	or	GR4, GR4, GR5
}
{
	store16	GR4, GR6, 1
}
{
	load16	GR4, GR30, 18
}
{
	sub	GR2, GR2, GR4
	load32	GR5, GR30, 7
}
{
	nop
}
{
	nop
}
{
	load16	GR6, GR5, 3
}
{
	sl	GR2, GR6, GR2
	load16	GR6, GR5, 2
}
{
	srl	GR4, GR6, GR4
}
{
	or	GR2, GR4, GR2
}
{
	store16	GR2, GR5, 2
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
	load16	GR4, GR2, 3
	load16	GR5, GR30, 18
}
{
	srl	GR4, GR4, GR5
}
{
	store16	GR4, GR2, 3
}
$BB0_24:                                # %if.end135
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
	load16	GR4, GR2, 3
	load16	GR5, GR30, 10
}
{
	or	GR4, GR4, GR5
}
{
	store16	GR4, GR2, 3
}
{
	store16	GR3, GR30, 22
}
$BB0_25:                                # %return
{
	load16	GR2, GR30, 22
	load32	GR16, GR30, 12
}
{
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
$tmp0:
	.size	_Dscale, ($tmp0)-_Dscale


