	.text
	.file	"./c_standard_lib-master/STRING/STRSTR.ll"
	.globl	strstr
	.align	2
	.type	strstr,@function
strstr:                                 # @strstr
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
}
{
	load8	GR2, GR5, 0
}
{
	neqi	 GR2, 0
}
{
	jc	 $BB0_2
}
{
	nop
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
$BB0_6:                                 # %for.inc
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 5
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
	store32	GR2, GR30, 5
}
$BB0_2:                                 # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
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
	load8	GR5, GR2, 0
	load32	GR4, GR30, 5
}
{
	nop
}
{
	nop
}
{
	call	strchr
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 5
}
{
	eqi	 GR2, 0
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
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB0_2 Depth=1
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 3
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
$BB0_4:                                 # %for.cond5
                                        #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
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
	load8	GR2, GR2, 1
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
# BB#5:                                 # %if.else
                                        #   in Loop: Header=BB0_4 Depth=2
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
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 3
}
{
	load8	GR2, GR2, 1
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
	eq	 GR2, GR3
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
{
	jmp	$BB0_6
}
{
	nop
}
{
	nop
}
$BB0_1:                                 # %if.then
{
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
}
$BB0_8:                                 # %return
{
	store32	GR2, GR30, 6
}
{
	load32	GR2, GR30, 6
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
$BB0_7:                                 # %for.end19
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
$tmp0:
	.size	strstr, ($tmp0)-strstr


