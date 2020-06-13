	.text
	.file	"./c_standard_lib-master/STRING/MEMCPY.ll"
	.globl	memcpy
	.align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -24
}
{
	load32	GR2, GR30, 8
	store32	GR4, GR30, 5
	store32	GR5, GR30, 4
}
{
	store32	GR2, GR30, 3
	load32	GR2, GR30, 5
}
{
	nop
}
{
	nop
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
{
	jmp	$BB0_1
}
{
	nop
}
{
	nop
}
$BB0_2:                                 # %for.body
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
	store8	GR2, GR3, 0
}
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
	load32	GR2, GR30, 3
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
	store32	GR2, GR30, 3
}
$BB0_1:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
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
	jnc	 $BB0_2
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %for.end
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
	.size	memcpy, ($tmp0)-memcpy


