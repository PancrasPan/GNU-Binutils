	.text
	.file	"./c_standard_lib-master/MATH/XDNORM.ll"
	.globl	_Dnorm
	.align	2
	.type	_Dnorm,@function
_Dnorm:                                 # @_Dnorm
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR4, GR30, 3
}
{
	load16	GR2, GR4, 3
	movigl	GR3,-32768
}
{
	movigh	GR3,0
}
{
	and	GR2, GR2, GR3
}
{
	store16	GR2, GR30, 2
	movigl	GR2,1
}
{
	movigh	GR2,0
}
{
	store16	GR2, GR30, 4
	load32	GR4, GR30, 3
}
{
	nop
}
{
	nop
}
{
	load16	GR5, GR4, 3
	movigl	GR3,15
}
{
	movigh	GR3,0
}
{
	and	GR5, GR5, GR3
}
{
	store16	GR5, GR4, 3
}
{
	neqi	 GR5, 0
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
	load32	GR4, GR30, 3
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
# BB#2:                                 # %lor.lhs.false10
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
# BB#3:                                 # %lor.lhs.false14
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
	load16	GR4, GR4, 0
}
{
	eqi	 GR4, 0
}
{
	jnc	 $BB0_4
}
{
	nop
}
{
	nop
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
$BB0_5:                                 # %for.inc
                                        #   in Loop: Header=BB0_4 Depth=1
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
	load16	GR5, GR4, 2
}
{
	store16	GR5, GR4, 3
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
	load16	GR5, GR4, 1
}
{
	store16	GR5, GR4, 2
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
	load16	GR5, GR4, 0
}
{
	store16	GR5, GR4, 1
	movigl	GR4,0
}
{
	movigh	GR4,0
	load32	GR5, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store16	GR4, GR5, 0
}
{
	load16	GR4, GR30, 4
}
{
	addi	GR4, GR4, -16
}
{
	store16	GR4, GR30, 4
}
$BB0_4:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
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
	load16	GR4, GR4, 3
}
{
	neqi	 GR4, 0
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.inc65
                                        #   in Loop: Header=BB0_6 Depth=1
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
	load16	GR5, GR4, 2
}
{
	srl	GR5, GR5, GR3
	load16	GR6, GR4, 3
}
{
	sl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 3
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
	load16	GR5, GR4, 1
}
{
	srl	GR5, GR5, GR3
	load16	GR6, GR4, 2
}
{
	sl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 2
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
	load16	GR5, GR4, 0
}
{
	srl	GR5, GR5, GR3
	load16	GR6, GR4, 1
}
{
	sl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 1
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
	load16	GR5, GR4, 0
}
{
	sl	GR5, GR5, GR2
}
{
	store16	GR5, GR4, 0
}
{
	load16	GR4, GR30, 4
}
{
	addi	GR4, GR4, -1
}
{
	store16	GR4, GR30, 4
}
$BB0_6:                                 # %for.cond31
                                        # =>This Inner Loop Header: Depth=1
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
	load16	GR4, GR4, 3
}
{
	lti	 GR4, 16
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
{
	jmp	$BB0_8
}
{
	nop
}
{
	nop
}
$BB0_9:                                 # %for.inc104
                                        #   in Loop: Header=BB0_8 Depth=1
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
	load16	GR5, GR4, 1
}
{
	sl	GR5, GR5, GR3
	load16	GR6, GR4, 0
}
{
	srl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 0
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
	load16	GR5, GR4, 2
}
{
	sl	GR5, GR5, GR3
	load16	GR6, GR4, 1
}
{
	srl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 1
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
	load16	GR5, GR4, 3
}
{
	sl	GR5, GR5, GR3
	load16	GR6, GR4, 2
}
{
	srl	GR6, GR6, GR2
}
{
	or	GR5, GR6, GR5
}
{
	store16	GR5, GR4, 2
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
	load16	GR5, GR4, 3
}
{
	srl	GR5, GR5, GR2
}
{
	store16	GR5, GR4, 3
}
{
	load16	GR4, GR30, 4
}
{
	addi	GR4, GR4, 1
}
{
	store16	GR4, GR30, 4
}
$BB0_8:                                 # %for.cond67
                                        # =>This Inner Loop Header: Depth=1
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
	load16	GR4, GR4, 3
	movigl	GR5,32
}
{
	movigh	GR5,0
}
{
	lt	 GR4, GR5
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
# BB#10:                                # %for.end105
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
	load16	GR4, GR2, 3
}
{
	and	GR3, GR4, GR3
}
{
	store16	GR3, GR2, 3
}
$BB0_11:                                # %if.end
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
	load16	GR4, GR30, 2
}
{
	or	GR3, GR3, GR4
}
{
	store16	GR3, GR2, 3
}
{
	load16	GR2, GR30, 4
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
$tmp0:
	.size	_Dnorm, ($tmp0)-_Dnorm


