# -*- coding: utf-8 -*-
"""
Created on Mon Jul 10 17:21:20 2017

@author: Shawn
"""


class SWIFTInstruction(object):
    '''
    SWIFT 指令
    '''
    special = ('NOP',)
    control = ('JMP', 'JC', 'JNC', 'CALL', 'JMPR',
               'CALLR', 'RET', 'RTT', 'LOOP', 'SYNCH')
    data_movement = (
        'MOVIGH', 'MOVIGL', 'MOVG2G', 'MOVV2V', 'VMOVCV2V', 'MOVV2G10',
        'MOVV2G20', 'MOVV2G40', 'MOVG2V10', 'MOVG2V20', 'MOVG2V40',
        'VMOVRG2V10', 'VMOVRG2V20', 'VMOVRG2V40', 'VSEL20', 'MOVG2C',
        'MOVC2G', 'MOVV2L', 'MOVL2V')
    memory = (
        'LOAD8', 'LOAD16', 'LOAD32', 'VLOAD8', 'VLOAD16', 'VLOAD32',
        'VLOADR8', 'VLOADR16', 'VLOADR32', 'STORE8', 'STORE16', 'STORE32',
        'STORE10', 'STORE20', 'STORE40', 'VSTORE10', 'VSTORE20', 'VSTORE40',
        'LOADU8', 'LOADU16', 'LOADU32', 'VLOADU8', 'VLOADU16', 'VLOADU32',
        'VLOADUR8', 'VLOADUR16', 'VLOADUR32', 'STOREU8', 'STOREU16',
        'STOREU32', 'STOREU10', 'STOREU20', 'STOREU40', 'VSTOREU10',
        'VSTOREU20', 'VSTOREU40', 'LOADVH', 'LOADVL', 'STOREVH', 'STOREVL',
        'LOADUVH', 'LOADUVL', 'STOREUVH', 'STOREUVL', 'LOADO16', 'LOADO32',
        'VLOADO8', 'VLOADO16', 'VLOADO32', 'STOREO16', 'STOREO32',
        'VSTOREO10', 'VSTOREO20', 'VSTOREO40')
    scalar = (
        'EQI', 'NEQI', 'GTI', 'LTI', 'GEI', 'LEI', 'EQ', 'NEQ', 'GT',
        'LT', 'GE', 'LE', 'GTU', 'LTU', 'GEU', 'LEU', 'ADDI', 'ADDIC', 'ADD',
        'ADDC', 'SUB', 'SUBC', 'MUL32', 'MUL64', 'MULU32', 'AND', 'OR', 'XOR',
        'NOT', 'MAX', 'MIN', 'SL', 'SRA', 'SRL', 'ABS', 'TEST', 'TESTI',
        'CBW', 'CHW', 'BFEXT', 'BFEXTU', 'BFST', 'BST', 'BCLR')
    vector = (
        'VEQ10', 'VEQ20', 'VEQ40', 'VGT10', 'VGT20', 'VGT40', 'VLT10',
        'VLT20', 'VLT40', 'VGE10', 'VGE20', 'VGE40', 'VLE10', 'VLE20',
        'VLE40', 'VADD10', 'VADD20', 'VADD40', 'VSUB10', 'VSUB20', 'VSUB40',
        'VMAX10', 'VMAX20', 'VMAX40', 'VMIN10', 'VMIN20', 'VMIN40', 'VAND',
        'VOR', 'VXOR', 'VNOT', 'VSL10', 'VSL20', 'VSL40', 'VSLS10', 'VSLS20',
        'VSLS40', 'VSRA10', 'VSRA20', 'VSRA40', 'VSRL10', 'VSRL20', 'VSRL40',
        'VABS10', 'VABS20', 'VABS40', 'VSUM10', 'VSUM20', 'VSUM40', 'VFMUL10',
        'VFMUL20', 'VFMUL40', 'VFMAC10', 'VFMAC20', 'VFMAC40', 'VCMAC10',
        'VCMAC20', 'VCMUL20', 'VCMULR40', 'VCMULI40')


class SWIFTCode(object):
    '''
    SWIFT 指令编码
    '''
    op0 = (('NOP', 'RET', 'RTT', 'SYNCH'),
           ('JMP', 'JC', 'JNC', 'CALL'),
           ('VSEL20',),
           ('JMPR', 'CALLR'),
           ('MOVG2C', 'MOVC2G'),
           ('MOVV2L', 'MOVL2V'))
    op1 = (('ADD', 'ADDC', 'SUB', 'SUBC', 'AND', 'OR', 'XOR', 'MAX', 'MIN',
            'SL', 'SRA', 'SRL', 'MUL32', 'MULU32', 'MUL64'),
           ('VEQ10', 'VGT10', 'VLT10', 'VGE10', 'VLE10'),
           ('VEQ20', 'VGT20', 'VLT20', 'VGE20', 'VLE20'),
           ('VEQ40', 'VGT40', 'VLT40', 'VGE40', 'VLE40'),
           ('VMOVCV2V',),
           ('VADD10', 'VSUB10', 'VMAX10', 'VMIN10',
            'VSL10', 'VSLS10', 'VSRA10', 'VSRL10'),
           ('VADD20', 'VSUB20', 'VMAX20', 'VMIN20',
            'VSL20', 'VSLS20', 'VSRA20', 'VSRL20'),
           ('VADD40', 'VSUB40', 'VMAX40', 'VMIN40',
            'VSL40', 'VSLS40', 'VSRA40', 'VSRL40'),
           ('VAND', 'VOR', 'VXOR'),
           ('VFMUL10', 'VFMUL20', 'VFMUL40', 'VFMAC10', 'VFMAC20', 'VFMAC40'),
           ('VCMUL20', 'VCMULR40', 'VCMULI40'),
           ('VCMAC10', 'VCMAC20'),
           ('VLOADO8', 'VLOADO16', 'VLOADO32'),
           ('LOADO16', 'LOADO32'),
           ('VSTOREO10', 'VSTOREO20', 'VSTOREO40'),
           ('STOREO16', 'STOREO32'))
    op2 = (('LOAD8', 'LOAD16', 'LOAD32', 'LOADU8', 'LOADU16', 'LOADU32'),
           ('VLOAD8', 'VLOAD16', 'VLOAD32', 'VLOADR8', 'VLOADR16', 'VLOADR32'),
           ('LOADVH', 'LOADVL'),
           ('VLOADU8', 'VLOADU16', 'VLOADU32',
            'VLOADUR8', 'VLOADUR16', 'VLOADUR32'),
           ('LOADUVH', 'LOADUVL'))
    op3 = (('STORE8', 'STORE16', 'STORE32', 'STOREU8', 'STOREU16', 'STOREU32'),
           ('STORE10', 'STORE20', 'STORE40',
            'VSTORE10', 'VSTORE20', 'VSTORE40'),
           ('STOREVH', 'STOREVL'),
           ('STOREU10', 'STOREU20', 'STOREU40',
            'VSTOREU10', 'VSTOREU20', 'VSTOREU40'),
           ('STOREUVH', 'STOREUVL'))
    op4 = (('EQ', 'NEQ', 'GT', 'LT', 'GE', 'LE', 'GTU', 'LTU', 'GEU', 'LEU', 'TEST'),
           ('NOT', 'ABS', 'CBW', 'CHW'),
           ('MOVG2G', 'VMOVRG2V10', 'VMOVRG2V20', 'VMOVRG2V40', 'MOVV2V'),
           ('VNOT', 'VABS10', 'VSUM10', 'VABS20', 'VSUM20', 'VABS40', 'VSUM40'))
    op5 = (('LOOP', 'LOOPS'),
           ('MOVIGH', 'MOVIGL'),
           ('EQI', 'NEQI', 'GTI', 'LTI', 'GEI', 'LEI', 'TESTI'),
           ('BST', 'BCLR'))
    op6 = (('ADDI', 'ADDIC'),
           ('BFEXT', 'BFEXTU'),
           ('BFST',),
           ('MOVV2G10', 'MOVV2G20', 'MOVV2G40',
            'MOVG2V10', 'MOVG2V20', 'MOVG2V40'))

    funct0 = (('00000000', '00000100', '00001000', '00001100'),
              ('00001', '00101', '01001', '01101'),
              ('10',),
              ('00000011', '00000111'),
              ('00001011', '00001111'),
              ('00011011', '00011111'))
    funct1 = (('00000000', '00000001', '00000010', '00000011', '00000100',
               '00000101', '00000110', '00000111', '00001000', '00001001',
               '00001010', '00001011', '00001100', '00001101', '00001110'),
              ('00100011', '00100111', '00101011', '00101111', '00110011'),
              ('00100010', '00100110', '00101010', '00101110', '00110010'),
              ('00100001', '00100101', '00101001', '00101101', '00110001'),
              ('01100000',),
              ('01000011', '01000111', '01001011', '01001111',
               '01010011', '01010111', '01011011', '01011111'),
              ('01000010', '01000110', '01001010', '01001110',
               '01010010', '01010110', '01011010', '01011110'),
              ('01000001', '01000101', '01001001', '01001101',
               '01010001', '01010101', '01011001', '01011101'),
              ('01000000', '01000100', '01001000'),
              ('10000011', '10000010', '10000001',
               '10010011', '10010010', '10010001'),
              ('10100010', '10100001', '10100101'),
              ('10110011', '10110010'),
              ('11100011', '11100010', '11100001'),
              ('11000010', '11000001'),
              ('11110011', '11110010', '11110001'),
              ('11010010', '11010001'))
    funct2 = (('00000', '00001', '00010', '01000', '01001', '01010'),
              ('10011', '10010', '10001', '10111', '10110', '10101'),
              ('10000', '10100'),
              ('11011', '11010', '11001', '11111', '11110', '11101'),
              ('11000', '11100'))
    funct3 = (('00000', '00001', '00010', '01000', '01001', '01010'),
              ('10011', '10010', '10001', '10111', '10110', '10101'),
              ('10000', '10100'),
              ('11011', '11010', '11001', '11111', '11110', '11101'),
              ('11000', '11100'))
    funct4 = (('00000000', '00000001', '00000010', '00000011', '00000100', '00000101',
               '00001010', '00001011', '00001100', '00001101', '00000110'),
              ('01000100', '01000101', '01000110', '01000111'),
              ('10000000', '10100111', '10100110', '10100101', '10111000'),
              ('11110100', '11111011', '11111111', '11111010',
               '11111110', '11111001', '11111101'))
    funct5 = (('0000', '0100'),
              ('0001', '0101'),
              ('00010', '00110', '01010', '01110', '10010', '10110', '11010'),
              ('00011', '00111'))
    funct6 = (('000', '100'),
              ('0001', '0101'),
              ('0010',),
              ('0000011111', '0000011011', '0000010111',
               '0000101111', '0000101011', '0000100111'))


class ParseELF(object):
    '''
    Parse ELF file
    '''

    def __init__(self):
        self.__obj_buff = None
        self.__Data = None
        self.__endian = None
        self.__phoff = None
        self.__phentsize = None
        self.__phnum = None
        self.__program_header = None
        self.__start_of_section_headers = None
        self.__size_of_section_headers = None
        self.__shstrtab_section = None

    def open_file(self, obj_file):
        '''
        open obj file
        '''
        with open(obj_file, 'rb') as obj:
            self.__obj_buff = obj.read()
        if self.__obj_buff[:4] != b'\x7fELF':
            raise ValueError('Not ELF file!')
        self.__init_shstrtab_section()
        return self

    def __init_shstrtab_section(self):
        '''
        init shstrtab section
        '''
        import struct

        ELFDATA2LSB = '<'
        ELFDATA2MSB = '>'

        self.__Data = self.__obj_buff[0x5]
        if self.__Data == 1:
            self.__endian = ELFDATA2LSB
        elif self.__Data == 2:
            self.__endian = ELFDATA2MSB

        self.__start_of_section_headers = struct.unpack(self.__endian + 'I',
                                                        self.__obj_buff[0x20:0x24])[0]
        # default number is 40
        self.__size_of_section_headers = struct.unpack(self.__endian + 'H',
                                                       self.__obj_buff[0x2e:0x30])[0]
        section_header_string_table_index = struct.unpack(self.__endian + 'H',
                                                          self.__obj_buff[0x32:0x34])[0]
        start_of_shstrtab_section_headers = (self.__start_of_section_headers +
                                             self.__size_of_section_headers *
                                             section_header_string_table_index)
        shstrtab_section_headers = self.__obj_buff[start_of_shstrtab_section_headers:
                                                   start_of_shstrtab_section_headers +
                                                   self.__size_of_section_headers]
        # case size_of_section_headers is 40
        off_of_shstrtab_section = struct.unpack(self.__endian + 'I',
                                                shstrtab_section_headers[0x10:0x14])[0]
        size_of_shstrtab_section = struct.unpack(self.__endian + 'I',
                                                 shstrtab_section_headers[0x14:0x18])[0]
        self.__shstrtab_section = self.__obj_buff[off_of_shstrtab_section:
                                                  off_of_shstrtab_section +
                                                  size_of_shstrtab_section]

    def get_program_MemSiz(self):
        '''
        get_program_MemSiz
        '''
        import struct
        self.__phoff = struct.unpack(
            self.__endian + 'I', self.__obj_buff[0x1c:0x20])[0]
        self.__phentsize = struct.unpack(
            self.__endian + 'H', self.__obj_buff[0x2a:0x2c])[0]
        self.__phnum = struct.unpack(
            self.__endian + 'H', self.__obj_buff[0x2c:0x2e])[0]
        self.__program_header = self.__obj_buff[self.__phoff:self.__phoff +
                                                self.__phentsize * self.__phnum]
        for i in range(self.__phnum):
            elf32_phdr = self.__program_header[self.__phentsize * i:
                                               self.__phentsize * (i + 1)]
            entry = struct.unpack(self.__endian + 'IIIIIIII', elf32_phdr)
            if entry[-2] == 6:
                break
        else:
            raise ValueError('There is no RW entry!')
        return entry[-3]

    def get_section_dict(self, section_name):
        """
        定位 .o 文件中 section_name 所在段
        :param section_name: str, the section which you want to get
        :return: bytes, the content which belongs to the section
        :raise IndexError: the elf file does not exist the section
        """
        import struct

        index = self.__shstrtab_section.find(section_name.encode())
        if index < 0:
            raise IndexError("There is no " + section_name + " section!")
        index = struct.pack(self.__endian + 'I', index)
        number_of_section_headers = struct.unpack(self.__endian + 'H',
                                                  self.__obj_buff[0x30:0x32])[0]
        start_of_section_headers = self.__start_of_section_headers
        for i in range(number_of_section_headers):
            section_index = self.__obj_buff[start_of_section_headers:
                                            start_of_section_headers + 0x04]
            if section_index == index:
                break
            start_of_section_headers += self.__size_of_section_headers
        else:
            raise IndexError(section_name, "section does not found!")
        section_headers = self.__obj_buff[start_of_section_headers:
                                          start_of_section_headers +
                                          self.__size_of_section_headers]
        section_dict = {}
        # case size_of_section_headers is 40
        entry = struct.unpack(self.__endian + 'IIIIIIIIII', section_headers)
        section_dict['name'] = entry[0]
        section_dict['type'] = entry[1]
        section_dict['flags'] = entry[2]
        section_dict['addr'] = entry[3]
        section_dict['offset'] = entry[4]
        section_dict['size'] = entry[5]
        section_dict['link'] = entry[6]
        section_dict['info'] = entry[7]
        section_dict['addralign'] = entry[8]
        section_dict['entsize'] = entry[9]
        section_dict['buff'] = self.__obj_buff[section_dict['offset']:
                                               section_dict['offset'] +
                                               section_dict['size']]
        return section_dict

    def get_instruction(self):
        """
        读取 .o 文件中汇编指令翻译的结果
        :return: asm_bits{}
        """
        import struct

        # 定位 .o 文件中 .text 所在段
        text_section_dict = self.get_section_dict('.text')

        asm_bits = {}
        inst_step = 4
        index = 0
        i = 1
        while index < len(text_section_dict['buff']):
            bits = struct.unpack(self.__endian + 'I',
                                 text_section_dict['buff'][index:index + inst_step])[0]
            # bit = (bits & 0x80) >> 7
            # slot = (bits & 0x60) >> 5
            asm_bits[i] = '{:032b}'.format(bits)
            index += inst_step
            i += 1
        return asm_bits

    def get_symtab_dict(self):
        """
        读取 .o 文件中 .symtab 所在段
        :return: symtab_dict{}
        """
        import struct

        symtab_section_dict = self.get_section_dict('.symtab')
        strtab_section_dict = self.get_section_dict('.strtab')

        symtab_dict = {}
        stt = {
            0: 'NOTYPE',
            1: 'OBJECT',
            2: 'FUNC',
            3: 'SECTION',
            4: 'FILE',
            13: 'LOPROC',
            15: 'HIPROC'
        }
        stb = {
            0: 'LOCAL',
            1: 'GLOBAL',
            2: 'WEAK',
            13: 'LOPROC',
            15: 'HIPROC'
        }
        shn = {
            0: 'UNDEF',
            # 0xff00: 'LORESERVE',
            0xff00: 'LOPROC',
            0xff1f: 'HIPROC',
            0xfff1: 'ABS',
            0xfff2: 'COMMON',
            # 0xffff: 'HIRESERVE'
        }

        for i in range(len(symtab_section_dict['buff']) // 0x10):
            entry = struct.unpack(self.__endian + 'IIIBBH',
                                  symtab_section_dict['buff'][0x10 * i:0x10 * (i + 1)])
            st_name = entry[0]
            if st_name == 0:
                st_name = None
            else:
                st_name = strtab_section_dict['buff'][st_name:].decode().split('\x00')[0]
            st_value = entry[1]
            st_size = entry[2]
            st_info = entry[3]
            st_other = entry[4]
            st_shndx = entry[5]
            if st_shndx in shn:
                st_shndx = shn[st_shndx]

            #  0 STT_NOTYPE
            #  1 STT_OBJECT
            #  2 STT_FUNC
            #  3 STT_SECTION
            #  4 STT_FILE
            # 13 STT_LOPROC
            # 15 STT_HIPROC
            st_type = stt[st_info & 0xf]

            #  0 STB_LOCAL
            #  1 STB_GLOBAL
            #  2 STB_WEAK
            # 13 STB_LOPROC
            # 15 STB_HIPROC
            st_bind = stb[st_info >> 4]

            symtab_dict[i] = {
                'value': st_value,
                'size': st_size,
                'type': st_type,
                'bind': st_bind,
                'other': st_other,
                'shndx': st_shndx,
                'name': st_name
            }

        return symtab_dict


class ParseASM(object):
    '''
    Parse ASM file.
    '''

    def __init__(self):
        self.__asm_lines = None
        self.__num_group = None
        self.__inst_label = None
        self.__init_instruction_condition()
        self.__init_instruction_code()

    def open_file(self, asm_file):
        '''
        open asm file.
        '''
        with open(asm_file) as asm:
            self.__asm_lines = asm.readlines()
        return self

    def __init_instruction_condition(self):
        """
        得到分配槽的条件
        """
        Instruction = SWIFTInstruction()

        '''
        |==========|＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝｜
        | PIPELINE |　　　　　　　　　　Ｉｎｓｔｒｕｃｔｉｏｎ　Ｃｌａｓｓｅｓ　　　　　　　　　　｜
        |==========|＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝｜
        |  SLOT 0  |　　ＮＯＰ、控制流指令、标量运算指令、矢量运算指令、数据传输指令　　　　　　　｜
        |----------|－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－｜
        |  SLOT 1  |　　ＮＯＰ、标量运算指令（除ＭＵＬ６４）、矢量运算指令、数据传输指令　　　　　｜
        |          |（除ＭＯＶ．Ｇ２Ｃ、ＭＯＶ．Ｃ２Ｇ、ＭＯＶ．Ｖ２Ｌ、ＭＯＶ．Ｌ２Ｖ）　　　　　｜
        |----------|－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－｜
        |  SLOT 2  |　　ＮＯＰ、加载／存储指令、ＭＯＶＩ．ＧＨ、ＭＯＶＩ．ＧＬ、ＭＯＶ．Ｇ２Ｇ、　｜
        |          |ＭＯＶ．Ｖ２Ｖ、所有ＭＯＶ．Ｖ２Ｇ、所有ＭＯＶ．Ｇ２Ｖ、所有ＶＭＯＶＲ．Ｇ２Ｖ｜
        |----------|－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－｜
        |  SLOT 3  |　　ＮＯＰ、加载／存储指令、ＭＯＶＩ．ＧＨ、ＭＯＶＩ．ＧＬ、ＭＯＶ．Ｇ２Ｇ、　｜
        |          |ＭＯＶ．Ｖ２Ｖ、所有ＭＯＶ．Ｖ２Ｇ、所有ＭＯＶ．Ｇ２Ｖ、所有ＶＭＯＶＲ．Ｇ２Ｖ｜
        |==========|＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝＝｜
        '''
        self.__condition_0 = (Instruction.special + Instruction.control + Instruction.scalar +
                              Instruction.vector + Instruction.data_movement)
        scalar_temp = list(Instruction.scalar)
        scalar_temp.remove('MUL64')
        data_movement_temp = list(Instruction.data_movement)
        data_movement_temp.remove('MOVG2C')
        data_movement_temp.remove('MOVC2G')
        data_movement_temp.remove('MOVV2L')
        data_movement_temp.remove('MOVL2V')

        self.__condition_1 = (Instruction.special + tuple(scalar_temp) +
                              Instruction.vector + tuple(data_movement_temp))
        data_movement_temp = (('MOVIGH', 'MOVIGL', 'MOVG2G', 'MOVV2V') +
                              ('MOVV2G10', 'MOVV2G20', 'MOVV2G40') +
                              ('MOVG2V10', 'MOVG2V20', 'MOVG2V40') +
                              ('VMOVRG2V10', 'VMOVRG2V20', 'VMOVRG2V40'))

        self.__condition_2 = (Instruction.special + Instruction.memory +
                              tuple(data_movement_temp))
        self.__condition_3 = self.__condition_2

        instruction = (Instruction.special + Instruction.control + Instruction.data_movement +
                       Instruction.memory + Instruction.scalar + Instruction.vector)
        condition = (self.__condition_0, self.__condition_1,
                     self.__condition_2, self.__condition_3)
        self.__instruction_priority = {}
        for inst in instruction:
            self.__instruction_priority[inst] = 0
            for i in condition:
                if inst in i:
                    self.__instruction_priority[inst] += 1

    def __init_instruction_code(self):
        '''
        得到指令编码的条件
        '''
        Code = SWIFTCode()

        instructions = (Code.op0, Code.op1, Code.op2,
                        Code.op3, Code.op4, Code.op5, Code.op6)
        funct_code = (Code.funct0, Code.funct1, Code.funct2,
                      Code.funct3, Code.funct4, Code.funct5, Code.funct6)
        self.__instruction_code = {}

        for op_num, inst_class in enumerate(instructions):
            op_code = '{:03b}'.format(op_num)
            for inst_type, inst_group in enumerate(inst_class):
                for num, inst in enumerate(inst_group):
                    if op_num == 0:
                        if inst_type == 0:
                            code = '0' * 18
                        elif inst_type == 1:
                            code = '{0[0]:021b}'
                        elif inst_type == 2:
                            code = '{0[0]:06b}{0[1]:06b}{0[2]:06b}{0[3]:06b}'
                        elif inst_type == 3:
                            code = '0' * 6 + '{0[0]:06b}' + '0' * 6
                        elif inst_type in (4, 5):
                            if num == 1:
                                code = '{0[0]:06b}' + '0' * 12
                            else:
                                code = '0' * 6 + '{0[0]:06b}' + '0' * 6
                    elif op_num == 1:
                        code = '{0[0]:06b}{0[1]:06b}{0[2]:06b}'
                    elif op_num in (2, 3):
                        code = '{0[0]:06b}{0[1]:06b}{0[2]:09b}'
                    elif op_num == 4:
                        if inst_type == 0:
                            code = '0' * 6 + '{0[0]:06b}{0[1]:06b}'
                        else:
                            code = '{0[0]:06b}{0[1]:06b}' + '0' * 6
                    elif op_num == 5:
                        if inst_type in (0, 1):
                            code = '{0[0]:06b}{0[1]:016b}'
                        elif inst_type == 2:
                            if num == 6:
                                code = (
                                    '0' * 6 + '{0[0]:06b}' + '0' * 4 + '{0[1]:05b}')
                            else:
                                code = '0' * 6 + '{0[0]:06b}{0[1]:09b}'
                        elif inst_type == 3:
                            code = ('{0[0]:06b}' + '0' * 6 +
                                    '{0[1]:05b}' + '0' * 4)
                    elif op_num == 6:
                        if inst_type == 0:
                            code = '{0[0]:06b}{0[1]:06b}{0[2]:011b}'
                        elif inst_type in (1, 2):
                            code = '{0[0]:06b}{0[1]:06b}{0[2]:010b}'
                        else:
                            code = '{0[0]:06b}{0[1]:06b}{0[2]:04b}'
                    self.__instruction_code[inst] = (
                        op_code + code + funct_code[op_num][inst_type][num])
                    # print(self.__instruction_code[inst])
        # exit()

    def get_instruction(self):
        """
        读取 .s 文件中的汇编指令
        :return: asm_inst{num_line, num_inst, inst}
        """
        import re

        self.asm_inst = {}
        opening_curly_bracket = False
        closing_curly_bracket = False
        self.__num_group = 0
        self.__inst_label = {}
        num_inst = 0
        for num_line, line in enumerate(self.__asm_lines):
            if re.match('^{', line):
                if opening_curly_bracket is False or closing_curly_bracket is True:
                    inst = []
                    self.__num_group += 1
                    opening_curly_bracket = True
                    closing_curly_bracket = False
                else:
                    print('.s文件中第', num_line + 1,
                          '行：expect 后括号\'}\', but 前括号\'{\' found.')
                    raise ValueError('Comparing Error!')
            elif re.match(r'^\t\w+', line):
                line = line.replace('\r', '\t')  # in case 'NOP\r'
                line = line.replace('\n', '\t')
                line = line.replace(',', '\t')
                line = line.split()
                line = tuple(map(lambda x: x.upper(), line))
                num_inst += 1
                inst.append([num_line + 1, num_inst, line])
            elif re.match('^}', line):
                if opening_curly_bracket is True or closing_curly_bracket is False:
                    self.asm_inst[self.__num_group] = inst
                    opening_curly_bracket = False
                    closing_curly_bracket = True
                else:
                    print('.s文件中第', num_line + 1,
                          '行：expect 前括号\'{\', but 后括号\'}\' found.')
                    raise ValueError('Comparing Error!')
                # print(inst)
            elif re.match(r'^\$\w+:', line):
                # $BB0_2
                self.__inst_label[line.split()[0][:-1].upper()] = num_inst
        return self.asm_inst

    def get_correct_instruction(self, asm_inst):
        """
        得到正确的翻译结果
        :return: inst_bits{}
        """
        import re

        inst_bits = {}
        for num_group in range(1, self.__num_group + 1):
            slot_0 = True
            slot_1 = True
            slot_2 = True
            slot_3 = True
            # 按照优先级重排序
            try:
                inst_group = sorted(asm_inst[num_group],
                                    key=lambda x: self.__instruction_priority[x[-1][0]])
            except KeyError:
                print('找不到指令，请检查指令是否正确！')
                raise ValueError('Comparing Error!')
            # 得到排序后的槽数
            for num, inst in enumerate(inst_group):
                if slot_0 is True and inst[-1][0] in self.__condition_0:
                    slot = 0
                    slot_0 = False
                elif slot_1 is True and inst[-1][0] in self.__condition_1:
                    slot = 1
                    slot_1 = False
                elif slot_2 is True and inst[-1][0] in self.__condition_2:
                    slot = 2
                    slot_2 = False
                elif slot_3 is True and inst[-1][0] in self.__condition_3:
                    slot = 3
                    slot_3 = False
                else:
                    print(inst)
                    print('No more slot/Wrong instruction!')
                    print('请检查该指令！')
                    exit()
                inst_group[num].append([0, slot])   # bit, slot
            # 排回原来顺序
            inst_group.sort(key=lambda x: x[0])
            # 若是 VLIW 则最后一条的指令以 1 结尾
            inst_group[-1][-1][0] = 1
            # 若非 VLIW 则还是以 1 结尾🤣

            for inst in inst_group:
                code = '{0:b}{1:02b}'.format(inst[-1][0], inst[-1][1])
                code += self.__instruction_code[inst[-2][0]]
                format_code = re.findall(r'\{0\[\d\]:0\d+b}', code)
                register = []
                for num, reg in enumerate(inst[-2][1:]):
                    if re.match(r'^(G|V)R\d+', reg):
                        register.append(int(reg[2:]))
                    elif re.match(r'^\$\w+', reg):
                        distance = int(self.__inst_label[reg] - inst[1])
                        if distance < 0:
                            # print(distance)
                            power = int(format_code[num].split(':')[-1][:-2])
                            distance = 2**power - 1 ^ ~distance
                        register.append(distance)
                    elif re.match(r'^-\d+', reg):
                        power = int(format_code[num].split(':')[-1][:-2])
                        register.append(2**power - 1 ^ ~int(reg))
                    elif re.match(r'^\d+', reg):
                        register.append(int(reg))
                    elif inst[2][0] == 'CALL' or re.match(r'^%\w+\(*', reg):
                        register.append(0)
                    else:
                        print('INST:', inst)
                        print('can not match this str:', reg)
                        print('请呼叫作者维护……')
                        exit()
                # inst_bits[inst[1]] = [tuple(inst[:2]), (inst[-2][0],
                # code.format(register))]
                inst_bits[inst[1]] = code.format(register)
                # print(inst_bits[inst[1]])
        # exit()
        return inst_bits

    def get_maximum_stack_size(self):
        """
        分析函数的调用关系，计算其堆栈所占用的最大大小
        :return:
        """
        import re

        graph_dict = {}

        function_name = None
        match_name = False

        for line in self.__asm_lines:
            if re.match(r'^[A-Za-z_]\w*:', line):
                function_name = line[:line.find(':')]
                node_dict = {
                    'size': 0,
                    'function': []
                }
                match_name = True
            elif re.match(r'\W+addi\W+GR30,\W+GR30,\W+-\d+', line) and match_name is True:
                node_dict['size'] = int(line[line.find('-') + 1:])
                match_name = False
            elif re.match(r'\W+call\W+[A-Za-z_]\w*', line):
                # noinspection PyTypeChecker
                node_dict['function'].append(line.split()[-1])
            elif re.match(r'\W+ret\W+GR31', line):
                graph_dict[function_name] = node_dict

        size_list = []

        def dfs(func_name, size):
            '''
            dfs function
            '''
            if graph_dict[func_name]['function']:
                for name in graph_dict[func_name]['function']:
                    dfs(name, size + graph_dict[func_name]['size'])
            else:
                size_list.append(size + graph_dict[func_name]['size'])

        try:
            for function_name in graph_dict:
                dfs(function_name, 0)
        except KeyError as err:
            print('！没有这个函数实体 :', err)

        return max(size_list)


if __name__ == '__main__':
    import argparse

    '''
        设置命令行选项
    '''
    PARSER = argparse.ArgumentParser(
        description='提供其他脚本所需要的数据',
        epilog='目前的数据有：SWIFTInstruction、SWIFTCode，ParseELF、ParseASM')
    PARSER.add_argument('-v', '--version', action='version',
                        version='%(prog)s version:4.0 date:2017.07.21 author:@lengyanyu258')
    RESULTS = PARSER.parse_args()
