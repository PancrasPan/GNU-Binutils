	.text
	.file	"./c_standard_lib-master/STRING/STRNCMP.ll"
	.globl	strncmp
	.align	2
	.type	strncmp,@function
strncmp:                                # @strncmp
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	load32	GR2, GR30, 6
	store32	GR4, GR30, 2
	store32	GR5, GR30, 1
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
$BB0_7:                                 # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
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
	addi	GR2, GR2, 1
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 1
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
{
	store32	GR2, GR30, 1
	load32	GR2, GR30, 0
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
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
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
	load8	GR2, GR2, 0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load8	GR3, GR3, 0
}
{
	eq	 GR3, GR2
}
{
	jnc	 $BB0_3
}
{
	nop
}
{
	nop
}
# BB#6:                                 # %if.else9
                                        #   in Loop: Header=BB0_1 Depth=1
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
}
{
	neqi	 GR2, 0
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
$BB0_8:                                 # %for.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.then
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
	load8	GR2, GR2, 0
	load32	GR3, GR30, 2
}
{
	nop
}
{
	nop
}
{
	load8	GR3, GR3, 0
}
{
	ge	 GR3, GR2
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
# BB#4:                                 # %if.then8
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
}
{
	jmp	$BB0_9
}
{
	nop
}
{
	nop
}
$BB0_5:                                 # %if.else
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_9:                                 # %return
{
	store32	GR2, GR30, 3
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
	.size	strncmp, ($tmp0)-strncmp


