	.text
	.file	"./testcase_8slots/_sdiv.ll"
	.globl	__dsp_i32sdiv
	.align	2
	.type	__dsp_i32sdiv,@function
__dsp_i32sdiv:                          # @__dsp_i32sdiv
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR4, GR30, 6
	store32	GR5, GR30, 5
}
{
	load32	GR2, GR30, 6
}
{
	nop
}
{
	neqi	 GR2, 0
}
{
	jnc	 $BB0_1
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
	movigh	GR2,-32768
	load32	GR3, GR30, 6
}
{
	nop
}
{
	neq	 GR3, GR2
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
# BB#3:                                 # %land.lhs.true
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	neqi	 GR3, -1
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
$BB0_5:                                 # %if.end4
{
	load32	GR3, GR30, 5
}
{
	nop
}
{
	load32	GR4, GR30, 6
}
{
	nop
}
{
	nop
}
{
	xor	GR3, GR4, GR3
	movigl	GR4,31
}
{
	movigh	GR4,0
}
{
	srl	GR3, GR3, GR4
}
{
	store32	GR3, GR30, 3
	load32	GR3, GR30, 6
}
{
	nop
}
{
	lti	 GR3, 0
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
# BB#7:                                 # %cond.false
{
	load32	GR3, GR30, 6
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
$BB0_1:                                 # %if.then
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_6:                                 # %cond.true
{
	movigl	GR3,-1
}
{
	movigh	GR3,-1
	load32	GR5, GR30, 6
}
{
	nop
}
{
	nop
}
{
	xor	GR3, GR5, GR3
}
{
	addi	GR3, GR3, 1
}
$BB0_8:                                 # %cond.end
{
	store32	GR3, GR30, 2
	load32	GR3, GR30, 5
}
{
	nop
}
{
	lti	 GR3, 0
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
# BB#10:                                # %cond.false13
{
	load32	GR3, GR30, 5
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
$BB0_9:                                 # %cond.true10
{
	movigl	GR3,-1
}
{
	movigh	GR3,-1
	load32	GR5, GR30, 5
}
{
	nop
}
{
	nop
}
{
	xor	GR3, GR5, GR3
}
{
	addi	GR3, GR3, 1
}
$BB0_11:                                # %cond.end14
{
	store32	GR3, GR30, 1
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store32	GR3, GR30, 0
}
{
	jmp	$BB0_12
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %for.inc
                                        #   in Loop: Header=BB0_12 Depth=1
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR4, -1
}
$BB0_12:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR4, GR30, 4
}
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	lt	 GR4, GR3
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
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB0_12 Depth=1
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	srl	GR4, GR5, GR4
	load32	GR5, GR30, 1
}
{
	ltu	 GR4, GR5
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
# BB#14:                                # %if.then20
                                        #   in Loop: Header=BB0_12 Depth=1
{
	load32	GR4, GR30, 4
	movigl	GR5,1
}
{
	movigh	GR5,0
}
{
	sl	GR4, GR5, GR4
	load32	GR5, GR30, 0
}
{
	nop
}
{
	nop
}
{
	or	GR4, GR5, GR4
}
{
	store32	GR4, GR30, 0
	load32	GR4, GR30, 4
}
{
	nop
}
{
	load32	GR5, GR30, 1
}
{
	nop
}
{
	nop
}
{
	sl	GR4, GR5, GR4
	load32	GR5, GR30, 2
}
{
	nop
}
{
	nop
}
{
	sub	GR4, GR5, GR4
}
{
	store32	GR4, GR30, 2
}
{
	jmp	$BB0_15
}
{
	nop
}
{
	nop
}
$BB0_16:                                # %for.end
{
	load32	GR4, GR30, 0
}
{
	nop
}
{
	neq	 GR4, GR2
}
{
	jnc	 $BB0_20
}
{
	nop
}
{
	nop
}
# BB#17:                                # %if.else
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	eqi	 GR2, 0
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
# BB#18:                                # %cond.true26
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
{
	sub	GR2, GR3, GR2
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
$BB0_4:                                 # %if.then3
{
	movigl	GR2,-1
}
{
	movigh	GR2,32767
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
$BB0_19:                                # %cond.false28
{
	load32	GR2, GR30, 0
}
{
	nop
}
{
	nop
}
$BB0_20:                                # %cond.end29
{
	store32	GR2, GR30, 7
}
{
	load32	GR2, GR30, 7
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
$tmp0:
	.size	__dsp_i32sdiv, ($tmp0)-__dsp_i32sdiv


