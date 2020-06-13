.global start                
_begin:
start:
.text
.ent main

.exptable:
jmp  exp_lable0|||         #bus error 0
nop|||
nop|||
nop|||

jmp  exp_lable1|||         #bus error 1        
nop|||
nop|||
nop|||

jmp  exp_lable2|||         #bus error 2
nop|||
nop|||
nop|||

jmp  exp_lable3|||         #bus error 3
nop|||
nop|||
nop|||

jmp  exp_lable4|||         #exception illegale instruction 
nop|||
nop|||
nop|||

jmp  exp_lable5|||         #exception overflow
nop|||
nop|||
nop|||

jmp  exp_lable6|||         # exception illegale address
nop|||
nop|||
nop|||

jmp  exp_lable7|||          # exception 3
nop|||
nop|||
nop|||

jmp  exp_lable8|||          #unavoided pic 0
nop|||
nop|||
nop|||

jmp  exp_lable9|||          #unavoided pic 1 (wathc dog)
nop|||
nop|||
nop|||

jmp  exp_lablea|||          #inner pic 2
nop|||
nop|||
nop|||

jmp  exp_lableb|||           #timer pic
nop|||
nop|||
nop|||

jmp  exp_lablec|||           # outer pic 4
nop|||
nop|||
nop|||

jmp  exp_labled|||          # outer pic 5
nop|||
nop|||
nop|||

exp_lable0:
movigl GR0 0|||
rtt|||
nop|||
nop|||

exp_lable1:
movigl GR0 1|||
rtt|||
nop|||
nop|||

exp_lable2:
movigl GR0 1|||
rtt|||
nop|||
nop|||

exp_lable3:
movigl GR0 3|||
rtt|||
nop|||
nop|||

exp_lable4:
movigl GR0 4|||
rtt|||
nop|||
nop|||

exp_lable5:
movigl GR0 5|||
rtt|||
nop|||
nop|||

exp_lable6:
movigl GR0 6|||
rtt|||
nop|||
nop|||

exp_lable7:
movigl GR0 7|||
rtt|||
nop|||
nop|||

exp_lable8:
movigl GR0 8|||
rtt|||
nop|||
nop|||

exp_lable9:
movigl GR0 9|||
rtt|||
nop|||
nop|||

exp_lablea:
movigl GR0 10|||
rtt|||
nop|||
nop|||

exp_lableb:
movigl GR0 11|||
rtt|||
nop|||
nop|||

exp_lablec:
movigl GR0 12|||
rtt|||
nop|||
nop|||

exp_labled:
movigl GR0 13|||
rtt|||
nop|||
nop|||

boot:
.=1024
#strore Data:0x0001 to Mem adr:0x0000
#[GR1] <- (GR2 + GR3)
#[0x0000] <- ( 0x0001 - 0x0000 )

	movigl	GR3 0|||
	movigh	GR3 0|||
	movigl	GR4 20|||
	movigh	GR4 0|||
	movg2g	GR2 GR3|||
	loop	 GR4 endlabel|||
	nop|||
	nop|||
	movigh	GR4 0x0000|||
	movigl	GR4 0x0008|||
	add	GR4 GR4 GR3|||
	||load32	GR4 GR4 0|
	nop|||
	nop|||
	jmp endlabel|||
	nop|||
	nop|||
	add	GR2 GR4 GR2|||
endlabel:
	addi	GR3 GR3 4|||
	nop|||
	nop|||

#myloop:
nop|nop|nop|nop
nop|nop|nop|nop
nop|nop|nop|nop
nop|nop|nop|nop
#jmp myloop|||
nop|nop|nop|nop
nop|nop|nop|nop
nop|nop|nop|nop
nop|nop|nop|nop
