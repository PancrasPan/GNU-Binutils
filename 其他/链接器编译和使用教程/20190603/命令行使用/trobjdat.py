import binascii
import sys
import os
#import re
#import struct

sourceFile = sys.argv[1]#raw_input("Input assembly source file name: ")
#sourceFile = raw_input("Input assembly source file name: ")
if os.path.isfile(sourceFile) == False:
    print(sourceFile + " doesn't exist!")
    os._exit(0)

#if os.path.isfile("as-new") == False:
#    print(sourceFile + " doesn't exist!")
#    os._exit(0)

#if os.path.isfile("mipsel-linux-ld") == False:
#    print(sourceFile + " doesn't exist!")
#    os._exit(0)

if os.path.isfile("mipsel-linux-objcopy") == False:
    print(sourceFile + " doesn't exist!")
    os._exit(0)

#objectFile = sourceFile[:-2] + ".o"
outFile = sourceFile[:-4] + ".out"
datFileSim = sourceFile[:-4]
datFileRtl = sourceFile[:-4] + ".dat"

#fopen=open(objectFile,'rb')
#w_str=""
#for line in fopen:
#        if re.search("e803",line):
#                line=re.sub("e803","0800",line)
#                w_str+=line
#        else:
#                w_str+=line
#fopen.close()
#wopen=open(objectFile,'w')
#wopen.write(w_str)
#wopen.close()
'''
with open(objectFile,'rb') as fd:
    buff = fd.read()

l = len(buff)
s = struct.unpack('%ds'%l,buff)[0]
#print(s)
s = list(s)
s[18] = 0x08
s[19] = 0x00
s = bytes(s)
buff = struct.pack('%ds'%l,s)
#print(buff)

with open(objectFile,'wb') as fd:
    fd.write(buff)
'''
#os.system("./as-new " + sourceFile + " -g --gdwarf-2 -o " + objectFile)
#os.system("./mipsel-linux-ld -T link.x " + objectFile + " -o " + outFile)
os.system("./mipsel-linux-objcopy -O binary "+ outFile + " " + datFileSim)
if os.path.isfile(datFileSim) == False:
    print("Doesn't create "+datFileSim)
    os._exit(0)
fb_s = open(datFileSim,'rb')
fb_d = open(datFileRtl,'w')

#process data segment
#1)a line in data segment file has 4 words (32bits per word),such as 1 2 3 4 ,reverse it to 4 3 2 1
#2)if encountering 9 consecutive 0 line in data segment
#  ignoring the left part of data segment
zero_count = 0
for i in range(0,65536):
    insnPack = fb_s.read(16)
    if(len(insnPack) != 16):
        break
#    if(insnPack == "0000000000000000"):
#        continue
    insnPack = binascii.b2a_hex(insnPack)
    if(insnPack == "00000000000000000000000000000000"):
        zero_count += 1
    else:
        zero_count = 0
#  do not print following zero lines after encounter 9 consecutive zero lines
#  but still reading and counting until a non-zero line, where clear zero_count
#  and restart print.
    if(zero_count > 9):
        continue
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn2 = insnPack[16:24]
    insn3 = insnPack[24:32]
#    if(insn0 == "00000000" and insn1 == "00000000" and insn2 == "00000000" and insn3 == "00000000"):
#        continue
    insn0 = insn0[6:8]+insn0[4:6]+insn0[2:4]+insn0[0:2] + '\n'
    insn1 = insn1[6:8]+insn1[4:6]+insn1[2:4]+insn1[0:2] + '_'
    insn2 = insn2[6:8]+insn2[4:6]+insn2[2:4]+insn2[0:2] + '_'
    insn3 = insn3[6:8]+insn3[4:6]+insn3[2:4]+insn3[0:2] + '_'
    addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    #i#fb_d.write(addr + '\n')
    fb_d.write("32'h000" + addr + '0,\t' + "128'h" + insn3 + insn2 + insn1 + insn0)

#process code segment
#a line in code segment file has 4 instructions(32bits per instruction) so that 16 char (32 hexes) per line,
#reversing the sequence of 4 bytes in a instruction for the sake of transform little-endian to Big-endian,
#such as 0x12345678 switched to 0x78563412.
for i in range(64,32768):
    insnPack = fb_s.read(16)
    if(len(insnPack) != 16):
        break
    insnPack = binascii.b2a_hex(insnPack)
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn2 = insnPack[16:24]
    insn3 = insnPack[24:32]
    insn0 = insn0[6:8]+insn0[4:6]+insn0[2:4]+insn0[0:2] + '_'
    insn1 = insn1[6:8]+insn1[4:6]+insn1[2:4]+insn1[0:2] + '_'
    insn2 = insn2[6:8]+insn2[4:6]+insn2[2:4]+insn2[0:2] + '_'
    insn3 = insn3[6:8]+insn3[4:6]+insn3[2:4]+insn3[0:2] + '\n'
    addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    #i#fb_d.write(addr + '\n')
    fb_d.write("32'h001" + addr + '0,\t' + "128'h" + insn0 + insn1 + insn2 + insn3)

insnPack = binascii.b2a_hex(insnPack)
if(len(insnPack) == 8):
    insn0 = insnPack[0:8]
    insn0 = insn0[6:8]+insn0[4:6]+insn0[2:4]+insn0[0:2] + '_'
    insn3 = '80000000'
    addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    fb_d.write("32'h001" + addr + '0,\t' + "128'h" + insn0 + insn3 + '_' + insn3 + '_' + insn3 + '\n')
elif(len(insnPack) == 16):
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn0 = insn0[6:8]+insn0[4:6]+insn0[2:4]+insn0[0:2] + '_'
    insn1 = insn1[6:8]+insn1[4:6]+insn1[2:4]+insn1[0:2] + '_'
    insn3 = '80000000'
    addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    fb_d.write("32'h001" + addr + '0,\t' + "128'h" + insn0 + insn1 + insn3 + '_' + insn3 + '\n')
elif(len(insnPack) == 24):
    insn0 = insnPack[0:8]
    insn1 = insnPack[8:16]
    insn2 = insnPack[16:24]
    insn0 = insn0[6:8]+insn0[4:6]+insn0[2:4]+insn0[0:2] + '_'
    insn1 = insn1[6:8]+insn1[4:6]+insn1[2:4]+insn1[0:2] + '_'
    insn2 = insn2[6:8]+insn2[4:6]+insn2[2:4]+insn2[0:2] + '_'
    insn3 = '80000000'
    addr =  '{0:0>4}'.format(hex(i).replace("0x",''))
    fb_d.write("32'h001" + addr + '0,\t' + "128'h" + insn0 + insn1 + insn2 + insn3 + '\n')
elif(len(insnPack) != 0):
    print('error in length of instructions !')


    
#insn = fb_s.read(4)
#insnString = binascii.b2a_hex(insn)
#print insnString[6:8]+insnString[4:6]+insnString[2:4]+insnString[0:2]

#insn = fb_s.read(4)
#insnString = binascii.b2a_hex(insn)
#print insnString[6:8]+insnString[4:6]+insnString[2:4]+insnString[0:2]


fb_s.close()
fb_d.close()
