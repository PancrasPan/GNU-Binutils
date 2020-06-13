	.text
	.file	"./c_standard_lib-master/STRING/STRTOK.ll"
	.globl	strtok
	.align	2
	.type	strtok,@function
strtok:                                 # @strtok
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -40
}
{
	store32	GR31, GR30, 9
	store32	GR16, GR30, 8
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
	eqi	 GR2, 0
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
	load32	GR2, GR30, 6
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
$BB0_2:                                 # %if.else
{
	movigh	GR2,%hi(strtok.ssave)
}
{
	movigl	GR2,%lo(strtok.ssave)
}
{
	load32	GR2, GR2, 0
}
{
	nop
}
{
	nop
}
$BB0_3:                                 # %if.end
{
	store32	GR2, GR30, 4
	load32	GR5, GR30, 5
}
{
	nop
}
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
	call	strspn
}
{
	nop
}
{
	nop
}
{
	load32	GR3, GR30, 4
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR3, GR2
}
{
	store32	GR2, GR30, 4
}
{
	load8	GR2, GR2, 0
}
{
	neqi	 GR2, 0
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
# BB#5:                                 # %if.end3
{
	load32	GR5, GR30, 5
	load32	GR16, GR30, 4
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
	call	strcspn
}
{
	nop
}
{
	nop
}
{
	add	GR2, GR16, GR2
}
{
	store32	GR2, GR30, 3
}
{
	load8	GR2, GR2, 0
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
# BB#6:                                 # %if.then9
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
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store8	GR3, GR2, 0
}
$BB0_7:                                 # %if.end10
{
	movigh	GR2,%hi(strtok.ssave)
}
{
	movigl	GR2,%lo(strtok.ssave)
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
	load32	GR2, GR30, 4
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
$BB0_4:                                 # %if.then2
{
	movigh	GR2,%hi(strtok.ssave)
}
{
	movigl	GR2,%lo(strtok.ssave)
	movigh	GR3,%hi($.str)
}
{
	movigl	GR3,%lo($.str)
}
{
	store32	GR3, GR2, 0
	movigl	GR2,0
}
{
	movigh	GR2,0
}
$BB0_8:                                 # %return
{
	store32	GR2, GR30, 7
}
{
	load32	GR2, GR30, 7
	load32	GR16, GR30, 8
}
{
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
	.size	strtok, ($tmp0)-strtok

	.type	strtok.ssave,@object    # @strtok.ssave
	.data
	.align	2
strtok.ssave:
	.4byte	($.str)
	.size	strtok.ssave, 4

	.type	$.str,@object           # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.space	1
	.size	$.str, 1


