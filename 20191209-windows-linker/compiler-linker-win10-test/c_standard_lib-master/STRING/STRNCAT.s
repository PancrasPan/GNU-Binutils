	.text
	.file	"./c_standard_lib-master/STRING/STRNCAT.ll"
	.globl	strncat
	.align	2
	.type	strncat,@function
strncat:                                # @strncat
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	load32	GR2, GR30, 6
	store32	GR4, GR30, 3
	store32	GR5, GR30, 2
}
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 3
}
{
	nop
}
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
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
	addi	GR2, GR2, 1
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store32	GR2, GR30, 0
}
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
	load8	GR2, GR2, 0
}
{
	eqi	 GR2, 0
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
{
	jmp	$BB0_3
}
{
	nop
}
{
	nop
}
$BB0_7:                                 # %for.inc11
                                        #   in Loop: Header=BB0_3 Depth=1
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
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 2
}
{
	load8	GR2, GR2, 0
	load32	GR3, GR30, 0
}
{
	nop
}
{
	nop
}
{
	addi	GR4, GR3, 1
}
{
	store32	GR4, GR30, 0
}
{
	store8	GR2, GR3, 0
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
	addi	GR2, GR2, -1
}
{
	store32	GR2, GR30, 1
}
$BB0_3:                                 # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
{
	load32	GR2, GR30, 1
}
{
	nop
}
{
	eqi	 GR2, 0
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
# BB#5:                                 # %land.rhs
                                        #   in Loop: Header=BB0_3 Depth=1
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
	load8	GR2, GR2, 0
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	neq	 GR2, GR3
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
$BB0_4:                                 #   in Loop: Header=BB0_3 Depth=1
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_6:                                 # %land.end
                                        #   in Loop: Header=BB0_3 Depth=1
{
	eqi	 GR2, 0
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
# BB#8:                                 # %for.end12
{
	load32	GR2, GR30, 0
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store8	GR3, GR2, 0
}
{
	load32	GR2, GR30, 3
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
	.size	strncat, ($tmp0)-strncat


