# -*- coding: utf-8 -*-
"""
Created on Tue Jul 18 19:11:01 2017

@author: Shawn
"""
from rtl_data import ParseASM, ParseELF

ASM = ParseASM()
ELF = ParseELF()


def sco(asm, elf):
    '''
    检查汇编指令翻译的正确性，将不匹配的指令输出
    '''
    # 读取ASM文件中的指令
    asm_inst = asm.get_instruction()
    # print(asm_inst)

    # 获得正确的指令翻译结果
    asm_bits = asm.get_correct_instruction(asm_inst)
    # 获得ELF文件中的翻译结果
    obj_bits = elf.get_instruction()

    if asm_bits != obj_bits:
        wrong_inst = set()
        inst = {}
        for num_group in asm_inst:
            # print(asm_inst[num_group])
            for i in asm_inst[num_group]:
                inst[i[1]] = (i[0], i[2])
                # print(inst[i[1]])
        # exit()
        for i in asm_bits:
            if asm_bits[i] != obj_bits[i]:
                wrong_inst.add(inst[i][1][0])
                print('第', inst[i][0], '行：', inst[i][1])
                print('正确：', asm_bits[i])
                print('错误：', obj_bits[i])
        print()
        print('翻译错误的指令：', wrong_inst)
        print()
        raise ValueError('Comparing Error!')
    else:
        print('Correct!')


def main():
    '''

    :return: None
    '''
    try:
        elf = ELF.open_file(ELF_FILE)
        asm = ASM.open_file(ASM_FILE)
    except ValueError:
        elf = ELF.open_file(ASM_FILE)
        asm = ASM.open_file(ELF_FILE)
    try:
        sco(asm, elf)
    except ValueError:
        pass


if __name__ == '__main__':
    import argparse

    '''
        设置命令行选项
    '''
    PARSER = argparse.ArgumentParser(
        description='比较 DSP 的 ASM 文件与 ELF 文件的编码。',
        epilog=r'示例：python .\rtl_sco.py .\vector\vmax.s .\vector\vmax.o')
    PARSER.add_argument('ASM_file', metavar='ASM_file', help='ASM 文件')
    PARSER.add_argument('ELF_file', metavar='ELF_file', help='ELF 文件')
    PARSER.add_argument('-v', '--version', action='version',
                        version='%(prog)s 0.2 2017.07.21 author:@lengyanyu258')
    RESULTS = PARSER.parse_args()

    ASM_FILE = RESULTS.ASM_file
    ELF_FILE = RESULTS.ELF_file

    main()
