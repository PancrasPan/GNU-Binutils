	.text
	.file	"./c_standard_lib-master/STRING/STRERROR.ll"
	.globl	_Strerror
	.align	2
	.type	_Strerror,@function
_Strerror:                              # @_Strerror
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -32
}
{
	store32	GR31, GR30, 7
	store32	GR16, GR30, 6
}
{
	store32	GR4, GR30, 4
	store32	GR5, GR30, 3
}
{
	neqi	 GR5, 0
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
	movigh	GR2,%hi(_Strerror.sbuf)
}
{
	movigl	GR2,%lo(_Strerror.sbuf)
}
{
	store32	GR2, GR30, 3
}
$BB0_2:                                 # %if.end
{
	load32	GR2, GR30, 4
}
{
	lti	 GR2, 33
}
{
	jnc	 $BB0_5
}
{
	nop
}
{
	nop
}
# BB#3:                                 # %if.end
{
	eqi	 GR2, 0
}
{
	jnc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#4:                                 # %sw.bb
{
	movigh	GR2,%hi($.str)
}
{
	movigl	GR2,%lo($.str)
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
$BB0_5:                                 # %if.end
{
	eqi	 GR2, 33
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
# BB#6:                                 # %if.end
{
	eqi	 GR2, 34
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
# BB#10:                                # %sw.bb2
{
	movigh	GR2,%hi($.str2)
}
{
	movigl	GR2,%lo($.str2)
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
$BB0_9:                                 # %sw.bb1
{
	movigh	GR2,%hi($.str1)
}
{
	movigl	GR2,%lo($.str1)
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
$BB0_7:                                 # %if.end
{
	eqi	 GR2, 35
}
{
	jnc	 $BB0_11
}
{
	nop
}
{
	nop
}
# BB#8:                                 # %sw.bb3
{
	movigh	GR2,%hi($.str3)
}
{
	movigl	GR2,%lo($.str3)
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
$BB0_11:                                # %sw.default
{
	movigl	GR2,0
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_13
}
{
	nop
}
{
	nop
}
# BB#12:                                # %lor.lhs.false
{
	movigl	GR2,36
}
{
	movigh	GR2,0
	load32	GR3, GR30, 4
}
{
	lt	 GR3, GR2
}
{
	jc	 $BB0_14
}
{
	nop
}
{
	nop
}
$BB0_13:                                # %if.then6
{
	movigh	GR2,%hi($.str4)
}
{
	movigl	GR2,%lo($.str4)
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
$BB0_14:                                # %if.else
{
	load32	GR4, GR30, 3
	movigh	GR5,%hi($.str5)
}
{
	movigl	GR5,%lo($.str5)
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
	movigl	GR16,10
}
{
	movigh	GR16,0
	load32	GR4, GR30, 4
}
{
	nop
}
{
	movg2g	GR5,GR16
}
{
	call	__dsp_i32srem
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 48
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store8	GR2, GR3, 9
}
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	movg2g	GR5,GR16
}
{
	call	__dsp_i32sdiv
}
{
	nop
}
{
	nop
}
{
	store32	GR2, GR30, 4
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR16
}
{
	call	__dsp_i32srem
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 48
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store8	GR2, GR3, 8
}
{
	load32	GR4, GR30, 4
}
{
	nop
}
{
	movg2g	GR5,GR16
}
{
	call	__dsp_i32sdiv
}
{
	nop
}
{
	nop
}
{
	movg2g	GR4,GR2
}
{
	movg2g	GR5,GR16
}
{
	call	__dsp_i32srem
}
{
	nop
}
{
	nop
}
{
	addi	GR2, GR2, 48
	load32	GR3, GR30, 3
}
{
	nop
}
{
	nop
}
{
	store8	GR2, GR3, 7
}
{
	load32	GR2, GR30, 3
}
{
	nop
}
{
	nop
}
$BB0_15:                                # %return
{
	store32	GR2, GR30, 5
}
{
	load32	GR2, GR30, 5
	load32	GR16, GR30, 6
}
{
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
	.size	_Strerror, ($tmp0)-_Strerror

	.globl	strerror
	.align	2
	.type	strerror,@function
strerror:                               # @strerror
# BB#0:                                 # %entry
{
	addi	GR30, GR30, -16
}
{
	store32	GR31, GR30, 3
	store32	GR4, GR30, 2
	movigl	GR5,0
}
{
	movigh	GR5,0
}
{
	call	_Strerror
}
{
	nop
}
{
	nop
}
{
	load32	GR31, GR30, 3
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
$tmp1:
	.size	strerror, ($tmp1)-strerror

	.type	_Strerror.sbuf,@object  # @_Strerror.sbuf
	.data
_Strerror.sbuf:
	.asciz	"error #xxx"
	.size	_Strerror.sbuf, 11

	.type	$.str,@object           # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
$.str:
	.asciz	"no error"
	.size	$.str, 9

	.type	$.str1,@object          # @.str1
$.str1:
	.asciz	"domain error"
	.size	$.str1, 13

	.type	$.str2,@object          # @.str2
$.str2:
	.asciz	"range error"
	.size	$.str2, 12

	.type	$.str3,@object          # @.str3
$.str3:
	.asciz	"file positioning error"
	.size	$.str3, 23

	.type	$.str4,@object          # @.str4
$.str4:
	.asciz	"unknown error"
	.size	$.str4, 14

	.type	$.str5,@object          # @.str5
$.str5:
	.asciz	"error #xxx"
	.size	$.str5, 11


