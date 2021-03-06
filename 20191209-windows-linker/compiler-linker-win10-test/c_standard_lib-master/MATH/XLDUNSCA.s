	.text
	.file	"./c_standard_lib-master/MATH/XLDUNSCA.ll"
	.globl	_Ldunscale
	.align	2
	.type	_Ldunscale,@function
_Ldunscale:                             # @_Ldunscale
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
	load16	GR3, GR5, 4
	movigl	GR2,32767
}
{
	movigh	GR2,0
}
{
	and	GR3, GR3, GR2
}
{
	store16	GR3, GR30, 4
}
{
	load16	GR3, GR30, 4
}
{
	neqi	 GR3, 32767
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
	load32	GR3, GR30, 5
	movigl	GR4,0
}
{
	movigh	GR4,0
}
{
	store16	GR4, GR3, 0
}
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
	load16	GR3, GR3, 3
}
{
	and	GR2, GR3, GR2
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
	jmp	$BB0_13
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %if.else19
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
# BB#8:                                 # %land.lhs.true
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
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#9:                                 # %land.lhs.true28
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
	jc	 $BB0_12
}
{
	nop
}
{
	nop
}
# BB#10:                                # %land.lhs.true33
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
	neqi	 GR2, 0
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
$BB0_12:                                # %if.else39
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
	call	dnorm
}
{
	nop
}
{
	nop
}
{
	load16	GR3, GR30, 4
}
{
	add	GR2, GR3, GR2
}
{
	store16	GR2, GR30, 4
	movigl	GR2,-32768
}
{
	movigh	GR2,0
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	load16	GR4, GR3, 4
}
{
	and	GR2, GR4, GR2
	movigl	GR4,16382
}
{
	movigh	GR4,0
}
{
	or	GR2, GR2, GR4
}
{
	store16	GR2, GR3, 4
	movigl	GR2,-16382
}
{
	movigh	GR2,-1
	load16	GR3, GR30, 4
}
{
	add	GR2, GR3, GR2
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
$BB0_13:                                # %return
{
	store16	GR2, GR30, 12
}
$BB0_14:                                # %return
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
	jmp	$BB0_13
}
{
	nop
}
{
	nop
}
$BB0_11:                                # %if.then38
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
	.size	_Ldunscale, ($tmp0)-_Ldunscale

	.align	2
	.type	dnorm,@function
dnorm:                                  # @dnorm
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
	store16	GR2, GR30, 0
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
$BB1_6:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
{
	load32	GR3, GR30, 1
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
	store16	GR4, GR3, 3
}
{
	load32	GR3, GR30, 1
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
	store16	GR4, GR3, 2
}
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	load16	GR4, GR3, 0
}
{
	store16	GR4, GR3, 1
}
{
	load32	GR3, GR30, 1
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
	load16	GR3, GR30, 0
}
{
	addi	GR3, GR3, -16
}
{
	store16	GR3, GR30, 0
}
$BB1_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR3, GR30, 1
}
{
	nop
}
{
	nop
}
{
	load16	GR3, GR3, 3
}
{
	neqi	 GR3, 0
}
{
	jnc	 $BB1_6
}
{
	nop
}
{
	nop
}
# BB#2:
{
	movigl	GR6,1
}
{
	movigh	GR6,0
}
{
	jmp	$BB1_3
}
{
	nop
}
{
	nop
}
$BB1_4:                                 # %for.inc45
                                        #   in Loop: Header=BB1_3 Depth=1
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
	load16	GR3, GR2, 2
	movigl	GR4,15
}
{
	movigh	GR4,0
}
{
	srl	GR3, GR3, GR4
	load16	GR5, GR2, 3
}
{
	sl	GR5, GR5, GR6
}
{
	or	GR3, GR5, GR3
}
{
	store16	GR3, GR2, 3
}
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
	load16	GR3, GR2, 1
}
{
	srl	GR3, GR3, GR4
	load16	GR5, GR2, 2
}
{
	sl	GR5, GR5, GR6
}
{
	or	GR3, GR5, GR3
}
{
	store16	GR3, GR2, 2
}
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
	load16	GR3, GR2, 0
}
{
	srl	GR3, GR3, GR4
	load16	GR4, GR2, 1
}
{
	sl	GR4, GR4, GR6
}
{
	or	GR3, GR4, GR3
}
{
	store16	GR3, GR2, 1
}
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
	load16	GR3, GR2, 0
}
{
	sl	GR3, GR3, GR6
}
{
	store16	GR3, GR2, 0
}
{
	load16	GR2, GR30, 0
}
{
	addi	GR2, GR2, -1
}
{
	store16	GR2, GR30, 0
}
$BB1_3:                                 # %for.cond11
                                        # =>This Inner Loop Header: Depth=1
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
	movigl	GR3,32767
}
{
	movigh	GR3,0
}
{
	gtu	 GR2, GR3
}
{
	jnc	 $BB1_4
}
{
	nop
}
{
	nop
}
# BB#5:                                 # %for.end46
{
	load16	GR2, GR30, 0
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
$tmp1:
	.size	dnorm, ($tmp1)-dnorm


