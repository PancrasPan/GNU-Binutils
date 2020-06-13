# -*- coding: utf-8 -*-
"""
Created on Tue Nov 15 20:36:03 2016

@author: Shawn
@version: 1.0
"""


def argv_parser():
    '''
        设置命令行选项
    '''
    import argparse

    parser = argparse.ArgumentParser(
        usage='python %(prog)s [options]', description='将一个或多个 .o 文件生成一个 .dat 文件的脚本。')
    parser.add_argument('objFiles', metavar='objFile',
                        nargs='+', help='输入一个或多个 .o 文件')
    parser.add_argument('-o', metavar='datFile', dest='datFile',
                        default='insn.dat', help='输出的 .dat 文件名')
    parser.add_argument('-V', '-v', '--version', action='version',
                        version='%(prog)s 1.0')
    return parser.parse_args()


if 1:
    results = argv_parser()

    objFiles = results.objFiles
    datFile = results.datFile
    if len(objFiles) == 1 and datFile == 'insn.dat':
        name_len = objFiles[0].rfind('.')
        if name_len > 0:
            datFile = objFiles[0][:name_len] + '.dat'
        else:
            datFile = objFiles[0] + '.dat'
else:
    objFiles = ['local_array.o']
    datFile = 'local_array.dat'

name_len = datFile.rfind('.')
if name_len > 0:
    outFile = datFile[:name_len] + '.out'
else:
    outFile = datFile + '.out'

'''
    Change "Machine <unknown>: 0x03e8" to "MIPS R3000: 0x0008"
'''
import struct

Machine = struct.pack('<H', 8)

for objFile in objFiles:
    with open(objFile, 'rb') as fd:
        buff = fd.read()

    newbuff = buff[:18] + Machine + buff[20:]

    with open(objFile, 'wb') as fd:
        fd.write(newbuff)

'''
    脚本调用
'''
import subprocess as sb

python = 'python2'
#ppp
#ld = './mipsel-linux-ld-0'
ld = './mipsel-linux-ld'

cmd = [ld, '-T', 'link.x', '-M=linkMapFile', '-o', outFile] + objFiles
sb.check_call(cmd)

cmd = [python, 'trobjdat.py', outFile]
sb.check_call(cmd)

#os.system('mv ' + datFile + ' .')
#os.system('rm ' + outFile)
#os.system('rm ' + objFile[:-2])
