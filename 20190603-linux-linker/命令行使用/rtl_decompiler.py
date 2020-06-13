# -*- coding: utf-8 -*-
"""
Created on Sat Jul 15 00:43:25 2017

@author: Shawn
"""
from rtl_data import ParseELF, SWIFTCode as Code

ELF = ParseELF()


def main():
    '''

    :return: None
    '''
    # print(SOURCE)
    elf = ELF.open_file(SOURCE)
    asm_bits = elf.get_instruction()
    symtab_dict = elf.get_symtab_dict()

    func_dict = {}
    for i in symtab_dict:
        # print(symtab_dict[i])
        if symtab_dict[i]['type'] == 'FUNC':
            func_dict[symtab_dict[i]['value']] = symtab_dict[i]['name']

    instructions = (Code.op0, Code.op1, Code.op2,
                    Code.op3, Code.op4, Code.op5, Code.op6)
    funct_code = (Code.funct0, Code.funct1, Code.funct2,
                  Code.funct3, Code.funct4, Code.funct5, Code.funct6)
    address = elf.get_section_dict('.text')['addr']

    print('Disassembly of section .text:')
    if RESULTS.test:
        print('Address:', 'instruction_code(big endian):', 'instruction:',
            '\t Rd \t Rs \t Rt \t Rt1 \t imm')
    else:
        print('Address:', 'instruction_code(big endian):', 'instruction:')

    for i in asm_bits:
        try:
            print(func_dict[address] + ':')
        except KeyError:
            pass
        line = ''
        instruction_code = asm_bits[i]
        op_code = instruction_code[3:6]
        op_num = int('0b' + op_code, 2)

        inst = {
            'Rd': ['GR', None],
            'Rs': ['GR', None],
            'Rt': ['GR', None],
            'Rt1': ['GR', None],
            'imm': ''
        }
        inst_type = int('0b' + instruction_code[-2:], 2)
        if op_num == 0:
            if inst_type in (0, 3):
                funct = instruction_code[-8:]
                if inst_type == 3:
                    if int('0b' + funct[:6], 2) in (0, 1, 2, 6):
                        inst['Rs'][1] = instruction_code[12:18]
                        if int('0b' + funct[:6], 2) == 6:
                            inst['Rs'][0] = 'VR'
                    else:
                        inst['Rd'][1] = instruction_code[6:12]
                        if int('0b' + funct[:6], 2) == 7:
                            inst['Rd'][0] = 'VR'
            elif inst_type == 1:
                funct = instruction_code[-5:]
                inst['imm'] = instruction_code[6:27]
            elif inst_type == 2:
                funct = instruction_code[-2:]
                inst['Rd'] = ['VR', instruction_code[6:12]]
                inst['Rs'][1] = instruction_code[12:18]
                inst['Rt'] = ['VR', instruction_code[18:24]]
                inst['Rt1'] = ['VR', instruction_code[24:30]]
        elif op_num == 1:
            funct = instruction_code[-8:]
            inst['Rd'] = ['VR', instruction_code[6:12]]
            inst['Rs'] = ['VR', instruction_code[12:18]]
            inst['Rt'] = ['VR', instruction_code[18:24]]
            inst_type = int('0b' + funct[:3], 2)
            if inst_type in (0, 6):
                inst['Rd'][0] = 'GR'
                inst['Rs'][0] = 'GR'
                inst['Rt'][0] = 'GR'
            elif inst_type == 1:
                inst['Rd'][0] = 'GR'
            elif inst_type == 3:
                inst['Rt'][0] = 'GR'
            elif inst_type == 7:
                inst['Rs'][0] = 'GR'
                inst['Rt'][0] = 'GR'
        elif op_num in (2, 3):
            funct = instruction_code[-5:]
            inst['Rd'] = ['VR', instruction_code[6:12]]
            inst['Rs'][1] = instruction_code[12:18]
            inst['imm'] = instruction_code[18:27]
            if funct[0] == '0':
                inst['Rd'][0] = 'GR'
        elif op_num == 4:
            funct = instruction_code[-8:]
            if inst_type == 0:
                inst['Rs'][1] = instruction_code[12:18]
                inst['Rt'][1] = instruction_code[18:24]
            else:
                inst['Rd'][1] = instruction_code[6:12]
                inst['Rs'][1] = instruction_code[12:18]
                inst_type = int('0b' + funct[:4], 2)
                if inst_type >= 10:
                    inst['Rd'][0] = 'VR'
                if inst_type >= 11:
                    inst['Rs'][0] = 'VR'
        elif op_num == 5:
            if inst_type in (0, 1):
                funct = instruction_code[-4:]
                inst['Rd'][1] = instruction_code[6:12]
                inst['imm'] = instruction_code[12:28]
            elif inst_type == 2:
                funct = instruction_code[-5:]
                inst['Rs'][1] = instruction_code[12:18]
                inst['imm'] = instruction_code[18:27]
                if int('0b' + funct[:3], 2) == 6:
                    inst['imm'] = instruction_code[22:27]
            elif inst_type == 3:
                funct = instruction_code[-5:]
                inst['Rd'][1] = instruction_code[6:12]
                inst['imm'] = instruction_code[18:23]
        elif op_num == 6:
            if inst_type == 0:
                funct = instruction_code[-3:]
                inst['Rd'][1] = instruction_code[6:12]
                inst['Rs'][1] = instruction_code[12:18]
                inst['imm'] = instruction_code[18:29]
            elif inst_type in (1, 2):
                funct = instruction_code[-4:]
                inst['Rd'][1] = instruction_code[6:12]
                inst['Rs'][1] = instruction_code[12:18]
                inst['imm'] = instruction_code[18:28]
            elif inst_type == 3:
                funct = instruction_code[-10:]
                if funct[4] == '1':
                    inst['Rd'][0] = 'VR'
                if funct[5] == '1':
                    inst['Rs'][0] = 'VR'
                inst['Rd'][1] = instruction_code[6:12]
                inst['Rs'][1] = instruction_code[12:18]
                inst['imm'] = instruction_code[18:22]
        else:
            print(instruction_code)
            raise ValueError('Wrong code!')

        for inst_type, inst_group in enumerate(funct_code[op_num]):
            try:
                num = inst_group.index(funct)
            except ValueError:
                pass
            else:
                break
        else:
            print(instruction_code)
            raise ValueError('Wrong code!')

        instruction = instructions[op_num][inst_type][num]

        inst_code = hex(int('0b' + instruction_code, 2))[2:]
        line = hex(address)[2:].rjust(8) + ':\t'
        print(line + inst_code[:2], inst_code[2:4], inst_code[4:6], inst_code[6:], end='\t\t')
        address += 4

        line = ' '
        if instruction_code[0] == '1':
            try:
                if asm_bits[i - 1][0] != '1':
                    line = '└'
            except KeyError:
                pass
        else:
            try:
                if asm_bits[i - 1][0] == '1':
                    line = '┌'
                else:
                    line = '├'
            except KeyError:
                line = '┌'  # the first VLIW
        line += instruction.ljust(10) + '\t'
        if RESULTS.test:
            if inst['Rd'][1] is not None:
                line += inst['Rd'][0] + ':' + str(int('0b' + inst['Rd'][1], 2)).rjust(2)
            line += '\t'
            if inst['Rs'][1] is not None:
                line += inst['Rs'][0] + ':' + str(int('0b' + inst['Rs'][1], 2)).rjust(2)
            line += '\t'
            if inst['Rt'][1] is not None:
                line += inst['Rt'][0] + ':' + str(int('0b' + inst['Rt'][1], 2)).rjust(2)
            line += '\t'
            if inst['Rt1'][1] is not None:
                line += inst['Rt1'][0] + ':' + str(int('0b' + inst['Rt1'][1], 2)).rjust(2)
            line += '\t'
        else:
            if inst['Rd'][1] is not None:
                line += inst['Rd'][0] + ':' + str(int('0b' + inst['Rd'][1], 2)) + '\t'
            if inst['Rs'][1] is not None:
                line += inst['Rs'][0] + ':' + str(int('0b' + inst['Rs'][1], 2)) + '\t'
            if inst['Rt'][1] is not None:
                line += inst['Rt'][0] + ':' + str(int('0b' + inst['Rt'][1], 2)) + '\t'
            if inst['Rt1'][1] is not None:
                line += inst['Rt1'][0] + ':' + str(int('0b' + inst['Rt1'][1], 2)) + '\t'
        if inst['imm'] != '':
            num = int('0b' + inst['imm'], 2)
            if inst['imm'][0] == '1':
                num = num - 2**len(inst['imm'])
            if instruction in ['JMP', 'JC', 'JNC', 'CALL', 'LOOP']:
                number = address + num * 4
                if instruction == 'CALL':
                    try:
                        line += func_dict[number] + '(addr:' + str(hex(number)[2:]) + ')'
                    except KeyError:
                        line += str(num)
                else:
                    line += str(hex(number)[2:]) + '(Address)'
            else:
                line += str(num)
        print(line)


if __name__ == '__main__':
    import argparse

    '''
        设置命令行选项
    '''
    PARSER = argparse.ArgumentParser(
        description='将 DSP 的 ELF 文件反汇编成 SWIFT 指令的汇编代码。',
        epilog=r'示例：python .\rtl_decompiler.py .\vector\vmax.out')
    PARSER.add_argument('input', metavar='input', help='源文件')
    PARSER.add_argument('-t', '--test', help='dev use.', action='store_true')
    PARSER.add_argument('-v', '--version', action='version',
                        version='%(prog)s 2.0 2017.07.21 author:@lengyanyu258')
    RESULTS = PARSER.parse_args()

    SOURCE = RESULTS.input

    main()
