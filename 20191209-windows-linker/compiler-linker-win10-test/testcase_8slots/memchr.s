	.text
	.file	"./testcase_8slots/memchr.ll"
	.globl	memchr
	.align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 8
	store32	GR4, GR30, 4
	store32	GR5, GR30, 3
}
{
	store32	GR2, GR30, 2
	load32	GR2, GR30, 4
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 1
}
$BB0_1:                                 # %while.cond
                                        # =>This Inner Loop Header: Depth=1
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
	addi	GR3, GR2, -1
}
{
	store32	GR3, GR30, 2
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
# BB#2:                                 # %while.body
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
	addi	GR3, GR2, 1
}
{
	store32	GR3, GR30, 1
}
{
	load8	GR2, GR2, 0
	load8	GR3, GR30, 3
}
{
	neq	 GR2, GR3
}
{
	jc	 $BB0_1
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %if.then
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
	jmp	$BB0_5
}
{
	nop
}
{
	nop
}
$BB0_4:                                 # %while.end
{
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_5:                                 # %return
{
	store32	GR2, GR30, 5
}
{
	load32	GR2, GR30, 5
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
	.size	memchr, ($tmp0)-memchr

