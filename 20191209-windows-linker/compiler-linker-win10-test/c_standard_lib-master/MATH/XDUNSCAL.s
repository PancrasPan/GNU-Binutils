	.text
	.file	"./c_standard_lib-master/MATH/XDUNSCAL.ll"
	.globl	_Dunscale
	.align	2
	.type	_Dunscale,@function
_Dunscale:                              # @_Dunscale
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
	store32	GR4, GR30, 5
}
{
	store32	GR5, GR30, 4
	store32	GR5, GR30, 3
}
{
	load16	GR2, GR5, 3
	movigl	GR3,32752
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
	movigl	GR3,4
}
{
	movigh	GR3,0
}
{
	srl	GR2, GR2, GR3
}
{
	store16	GR2, GR30, 4
}
{
	load16	GR2, GR30, 4
}
{
	neqi	 GR2, 2047
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
# BB#1:                                 # %if.then
{
	load32	GR2, GR30, 5
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store16	GR3, GR2, 0
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
	load32	GR2, GR30, 3
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
	load32	GR2, GR30, 3
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
	load32	GR2, GR30, 3
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
	jc	 $BB0_6
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
	store16	GR2, GR30, 12
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.else19
{
	load16	GR2, GR30, 4
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
# BB#8:                                 # %lor.lhs.false23
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
	call	_Dnorm
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR30, 4
}
{
	lti	 GR2, 1
}
{
	jnc	 $BB0_10
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %if.then27
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
	load16	GR3, GR2, 3
	movigl	GR4,-32753
}
{
	movigh	GR4,0
}
{
	and	GR3, GR3, GR4
	movigl	GR4,16352
}
{
	movigh	GR4,0
}
{
	or	GR3, GR3, GR4
}
{
	store16	GR3, GR2, 3
}
{
	load16	GR2, GR30, 4
}
{
	addi	GR2, GR2, -1022
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store16	GR2, GR3, 0
	movigl	GR2,-1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 12
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$BB0_10:                                # %if.else35
{
	load32	GR2, GR30, 5
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store16	GR3, GR2, 0
}
{
	store16	GR3, GR30, 12
}
$BB0_11:                                # %return
{
	load16	GR2, GR30, 12
	load32	GR31, GR30, 7
	addi	GR30, GR30, 32
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
$BB0_6:                                 # %if.else
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 12
}
{
	jmp	$BB0_11
}
{
	nop
}
{
	nop
}
$tmp0:
	.size	_Dunscale, ($tmp0)-_Dunscale


