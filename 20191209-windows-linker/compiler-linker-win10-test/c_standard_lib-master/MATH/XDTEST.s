	.text
	.file	"./c_standard_lib-master/MATH/XDTEST.ll"
	.globl	_Dtest
	.align	2
	.type	_Dtest,@function
_Dtest:                                 # @_Dtest
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR4, GR30, 2
	store32	GR4, GR30, 1
}
{
	load16	GR2, GR4, 3
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
	store16	GR2, GR30, 0
}
{
	load16	GR2, GR30, 0
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
	load32	GR2, GR30, 1
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
	load32	GR2, GR30, 1
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
	load32	GR2, GR30, 1
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
	load32	GR2, GR30, 1
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
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.end
{
	load16	GR2, GR30, 0
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
# BB#8:                                 # %lor.lhs.false22
{
	load32	GR2, GR30, 1
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
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#9:                                 # %lor.lhs.false27
{
	load32	GR2, GR30, 1
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
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#10:                                # %lor.lhs.false31
{
	load32	GR2, GR30, 1
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
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#11:                                # %lor.lhs.false35
{
	load32	GR2, GR30, 1
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
	jc	 $BB0_13
}
{
	nop
}
{
	nop
}
$BB0_12:                                # %if.then39
{
	movigl	GR2,-1
}
{
	movigh	GR2,0
}
$BB0_14:                                # %return
{
	store16	GR2, GR30, 6
}
{
	load16	GR2, GR30, 6
	addi	GR30, GR30, 16
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
	jmp	$BB0_14
}
{
	nop
}
{
	nop
}
$BB0_13:                                # %if.else40
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$tmp0:
	.size	_Dtest, ($tmp0)-_Dtest


