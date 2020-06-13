	.text
	.file	"./c_standard_lib-master/STRING/STRCMP.ll"
	.globl	strcmp
	.align	2
	.type	strcmp,@function
strcmp:                                 # @strcmp
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
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
$BB0_4:                                 # %for.inc
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
}
$BB0_1:                                 # %for.cond
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
# BB#2:                                 # %for.body
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
	jc	 $BB0_4
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %if.then
{
	movigl	GR2,0
}
{
	movigh	GR2,0
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
$BB0_5:                                 # %for.end
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
	jc	 $BB0_7
}
{
	nop
}
{
	nop
}
# BB#6:                                 # %if.then11
{
	movigl	GR2,-1
}
{
	movigh	GR2,-1
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
$BB0_7:                                 # %if.else
{
	movigl	GR2,1
}
{
	movigh	GR2,0
}
$BB0_8:                                 # %return
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
	.size	strcmp, ($tmp0)-strcmp


