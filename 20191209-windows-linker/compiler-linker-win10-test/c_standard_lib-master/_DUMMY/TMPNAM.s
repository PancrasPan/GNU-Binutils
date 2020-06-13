	.text
	.file	"./c_standard_lib-master/_DUMMY/TMPNAM.ll"
	.globl	tmpnam
	.align	2
	.type	tmpnam,@function
tmpnam:                                 # @tmpnam
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	store32	GR17, GR30, 8
}
{
	store32	GR16, GR30, 7
	store32	GR4, GR30, 6
}
{
	neqi	 GR4, 0
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
# BB#1:                                 # %if.then
{
	movigh	GR2,%hi(tmpnam.buf)
}
{
	movigl	GR2,%lo(tmpnam.buf)
}
{
	store32	GR2, GR30, 6
}
$BB0_2:                                 # %if.end
{
	movigh	GR17,%hi(tmpnam.seed)
}
{
	movigl	GR17,%lo(tmpnam.seed)
}
{
	load16	GR2, GR17, 0
}
{
	addi	GR2, GR2, 1
}
{
	store16	GR2, GR17, 0
	load32	GR4, GR30, 6
	movigh	GR5,%hi($.str)
}
{
	movigl	GR5,%lo($.str)
}
{
	call	strcpy
}
{
	nop
}
{
	nop
}
{
	movigl	GR2,5
}
{
	movigh	GR2,0
}
{
	store32	GR2, GR30, 5
	load32	GR16, GR30, 6
}
{
	nop
}
{
	nop
}
{
	movg2g	GR4,GR16
}
{
	call	strlen
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR16, GR2
	load32	GR3, GR30, 5
}
{
	nop
}
{
	nop
}
{
	add	GR4, GR2, GR3
	movigh	GR5,%hi($.str1)
}
{
	movigl	GR5,%lo($.str1)
	store32	GR4, GR30, 4
}
{
	call	strcpy
}
{
	nop
}
{
	nop
}
{
	load16	GR2, GR17, 0
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
$BB0_4:                                 # %for.body
                                        #   in Loop: Header=BB0_3 Depth=1
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
	addi	GR3, GR2, -1
	load16	GR4, GR30, 3
}
{
	store32	GR3, GR30, 4
	movigl	GR3,7
}
{
	movigh	GR3,0
}
{
	and	GR3, GR4, GR3
	movigl	GR4,48
}
{
	movigh	GR4,0
}
{
	or	GR3, GR3, GR4
}
{
	store8	GR3, GR2, -1
	movigl	GR2,3
}
{
	movigh	GR2,0
	load16	GR3, GR30, 3
}
{
	srl	GR2, GR3, GR2
}
$BB0_3:                                 # %for.cond
                                        # =>This Inner Loop Header: Depth=1
{
	store16	GR2, GR30, 3
	load32	GR2, GR30, 5
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
	store32	GR2, GR30, 5
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	lt	 GR2, GR3
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
# BB#5:                                 # %for.end
{
	load32	GR2, GR30, 6
	load32	GR16, GR30, 7
}
{
	load32	GR17, GR30, 8
	load32	GR31, GR30, 9
	addi	GR30, GR30, 40
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
	.size	tmpnam, ($tmp0)-tmpnam

	.type	tmpnam.buf,@object      # @tmpnam.buf
	.local	tmpnam.buf
	.comm	tmpnam.buf,16,1
	.type	tmpnam.seed,@object     # @tmpnam.seed
	.local	tmpnam.seed
	.comm	tmpnam.seed,2,2
	.type	$.str,@object           # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"ctm"
	.size	$.str, 4

	.type	$.str1,@object          # @.str1
$.str1:
	.asciz	".tmp"
	.size	$.str1, 5


