	.text
	.file	"./c_standard_lib-master/MATH/XDINT.ll"
	.globl	_Dint
	.align	2
	.type	_Dint,@function
_Dint:                                  # @_Dint
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	store32	GR4, GR30, 4
	store16	GR5, GR30, 6
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
	store32	GR2, GR30, 2
}
{
	load16	GR3, GR2, 3
	movigl	GR2,15
}
{
	movigh	GR2,0
}
{
	and	GR4, GR3, GR2
	movigl	GR3,1
}
{
	movigh	GR3,0
	neqi	 GR4, 0
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
# BB#1:                                 # %lor.lhs.false
{
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR4, GR4, 2
}
{
	neqi	 GR4, 0
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
# BB#2:                                 # %lor.lhs.false4
{
	load32	GR4, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR4, GR4, 1
}
{
	neqi	 GR4, 0
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
# BB#3:                                 # %lor.rhs
{
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR3, GR3, 0
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	neq	 GR3, GR4
}
$BB0_4:                                 # %lor.end
{
	store16	GR3, GR30, 2
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR3, GR3, 3
	movigl	GR4,32752
}
{
	movigh	GR4,0
}
{
	and	GR4, GR3, GR4
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	srl	GR4, GR4, GR3
}
{
	store16	GR4, GR30, 0
}
{
	load16	GR4, GR30, 0
}
{
	neqi	 GR4, 0
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
# BB#5:                                 # %land.lhs.true
{
	load16	GR4, GR30, 2
}
{
	neqi	 GR4, 0
}
{
	jnc	 $BB0_21
}
{
	nop
}
{
	nop
}
$BB0_6:                                 # %if.else
{
	load16	GR4, GR30, 0
}
{
	neqi	 GR4, 2047
}
{
	jnc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#10:                                # %if.end27
{
	load16	GR4, GR30, 0
	movigl	GR5,1075
}
{
	movigh	GR5,0
}
{
	sub	GR4, GR5, GR4
	load16	GR5, GR30, 6
}
{
	sub	GR4, GR4, GR5
}
{
	store16	GR4, GR30, 0
}
{
	load16	GR4, GR30, 0
}
{
	lti	 GR4, 1
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
# BB#11:                                # %if.else36
{
	movigl	GR4,53
}
{
	movigh	GR4,0
	load16	GR5, GR30, 0
}
{
	lt	 GR5, GR4
}
{
	jc	 $BB0_13
}
{
	nop
}
{
	nop
}
# BB#12:                                # %if.then40
{
	load32	GR2, GR30, 2
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store16	GR3, GR2, 3
}
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	store16	GR3, GR2, 2
}
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	store16	GR3, GR2, 1
}
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	store16	GR3, GR2, 0
	movigl	GR2,-1
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.else23
{
	load16	GR2, GR30, 2
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
# BB#9:                                 # %if.else26
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
	movigl	GR2,2
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %if.then25
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_13:                                # %if.else45
{
	load16	GR4, GR30, 0
}
{
	and	GR2, GR4, GR2
	movigl	GR4,1
}
{
	movigh	GR4,0
}
{
	sl	GR2, GR2, GR4
	movigh	GR5,%hi(_Dint.mask)
}
{
	movigl	GR5,%lo(_Dint.mask)
}
{
	add	GR2, GR5, GR2
}
{
	load16	GR2, GR2, 0
}
{
	store16	GR2, GR30, 2
	load16	GR2, GR30, 0
}
{
	srl	GR2, GR2, GR3
}
{
	store16	GR2, GR30, 0
	movigh	GR2,%hi(_Dint.sub)
}
{
	movigl	GR2,%lo(_Dint.sub)
	movigl	GR3,2
}
{
	movigh	GR3,0
	load16	GR5, GR30, 0
}
{
	sl	GR5, GR5, GR3
}
{
	add	GR5, GR2, GR5
}
{
	load32	GR5, GR5, 0
}
{
	nop
}
{
	nop
}
{
	sl	GR5, GR5, GR4
	load32	GR6, GR30, 2
}
{
	nop
}
{
	nop
}
{
	add	GR5, GR6, GR5
}
{
	load16	GR5, GR5, 0
	load16	GR6, GR30, 2
}
{
	and	GR5, GR6, GR5
}
{
	store16	GR5, GR30, 2
	load16	GR6, GR30, 0
}
{
	sl	GR3, GR6, GR3
}
{
	add	GR2, GR2, GR3
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
	sl	GR2, GR2, GR4
	load32	GR3, GR30, 2
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
	load16	GR3, GR2, 0
}
{
	xor	GR3, GR3, GR5
}
{
	store16	GR3, GR2, 0
}
{
	load16	GR2, GR30, 0
}
{
	eqi	 GR2, 1
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
# BB#14:                                # %if.else45
{
	eqi	 GR2, 2
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
# BB#15:                                # %if.else45
{
	neqi	 GR2, 3
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
# BB#16:                                # %sw.bb
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR2, GR2, 2
	load16	GR3, GR30, 2
}
{
	or	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 2
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
	nop
}
{
	store16	GR2, GR3, 2
}
$BB0_17:                                # %sw.bb70
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR2, GR2, 1
	load16	GR3, GR30, 2
}
{
	or	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 2
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
	nop
}
{
	store16	GR2, GR3, 1
}
$BB0_18:                                # %sw.bb77
{
	load32	GR2, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load16	GR2, GR2, 0
	load16	GR3, GR30, 2
}
{
	or	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 2
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
	nop
}
{
	store16	GR2, GR3, 0
}
$BB0_19:                                # %sw.epilog
{
	load16	GR2, GR30, 2
}
{
	eqi	 GR2, 0
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
# BB#20:                                # %if.then85
{
	movigl	GR2,-1
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_22
}
{
	nop
}
{
	nop
}
$BB0_21:                                # %if.else86
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_22:                                # %return
{
	store16	GR2, GR30, 10
}
{
	load16	GR2, GR30, 10
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
$tmp0:
	.size	_Dint, ($tmp0)-_Dint

	.type	_Dint.mask,@object      # @_Dint.mask
	.section	.rodata,"a",@progbits
	.align	1
_Dint.mask:
	.2byte	0                       # 0x0
	.2byte	1                       # 0x1
	.2byte	3                       # 0x3
	.2byte	7                       # 0x7
	.2byte	15                      # 0xf
	.2byte	31                      # 0x1f
	.2byte	63                      # 0x3f
	.2byte	127                     # 0x7f
	.2byte	255                     # 0xff
	.2byte	511                     # 0x1ff
	.2byte	1023                    # 0x3ff
	.2byte	2047                    # 0x7ff
	.2byte	4095                    # 0xfff
	.2byte	8191                    # 0x1fff
	.2byte	16383                   # 0x3fff
	.2byte	32767                   # 0x7fff
	.size	_Dint.mask, 32

	.type	_Dint.sub,@object       # @_Dint.sub
	.align	2
_Dint.sub:
	.4byte	0                       # 0x0
	.4byte	1                       # 0x1
	.4byte	2                       # 0x2
	.4byte	3                       # 0x3
	.size	_Dint.sub, 16


