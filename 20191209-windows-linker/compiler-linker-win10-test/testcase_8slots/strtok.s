	.text
	.file	"./testcase_8slots/strtok.ll"
	.globl	strtok
	.align	2
	.type	strtok,@function
strtok:                                 # @strtok
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
	store32	GR4, GR30, 6
}
{
	store32	GR5, GR30, 5
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
	movigh	GR2,%hi(strtok.p)
}
{
	movigl	GR2,%lo(strtok.p)
	load32	GR3, GR30, 6
}
{
	nop
}
{
	nop
}
{
	store32	GR3, GR2, 0
}
$BB0_2:                                 # %if.end
{
	movigh	GR2,%hi(strtok.p)
}
{
	movigl	GR2,%lo(strtok.p)
}
{
	store32	GR2, GR30, 3
	load32	GR4, GR2, 0
}
{
	nop
}
{
	load32	GR5, GR30, 5
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
	load32	GR4, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR4, GR30, 3
	load32	GR3, GR4, 0
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
	store32	GR2, GR4, 0
	store32	GR2, GR30, 4
}
{
	load32	GR4, GR4, 0
}
{
	nop
}
{
	load32	GR5, GR30, 5
}
{
	nop
}
{
	nop
}
{
	call	strpbrk
}
{
	nop
}
{
	nop
}
{
	load32	GR4, GR30, 3
}                                       # 4-byte Folded Reload
{
	nop
}
{
	nop
}
{
	store32	GR2, GR4, 0
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
# BB#3:                                 # %if.then3
{
	load32	GR2, GR4, 0
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
	store32	GR3, GR4, 0
	movigl	GR3,0
}
{
	movigh	GR3,0
}
{
	store8	GR3, GR2, 0
}
$BB0_4:                                 # %if.end4
{
	load32	GR2, GR30, 4
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
$tmp0:
	.size	strtok, ($tmp0)-strtok

	.type	strtok.p,@object        # @strtok.p
	.local	strtok.p
	.comm	strtok.p,4,4

