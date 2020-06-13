## Python版本

	```
	python3
	```
## 一般测试过程

	```
	clang.exe llc.exe放置在当前目录
	python rtl_c2o_8slots.py ./_main/_main.c ./_main/
	_main/_main.o代替当前目录的_main.o
	python rtl_c2o_8slots.py ./testcase_8slots/ ./testcase_8slots/
	python rtl_o2dat.py ./testcase_8slots/addition.o -o ./testcase_8slots/addition.dat
	
	```
## 其他
	```
	D:/ppp/lee_han-dsp_compiler-master/dsp_compiler_old/build-x64/Debug/bin/clang -S -target dsp -emit-llvm -I ./libc-master/include/ ./libc-master/src/string/memcpy.c -o ./libc-master/src/string/memcpy.ll 
	D:/ppp/lee_han-dsp_compiler-master/dsp_compiler_old/build-x64/Debug/bin/llc -march=dsp -mcpu=dspse -relocation-model=static -filetype=asm -debug-only=dsp-asm-printer D:/ppp/compound_condition0.ll -o D:/ppp/compound_condition0.s
	D:/ppp/lee_han-dsp_compiler-master/dsp_compiler_old/build-x64/Debug/bin/llc -march=dsp -mcpu=dspse -relocation-model=static -filetype=obj -debug-only=dsp-asm-printer ./c_standard_lib-master/MATH/ATAN.ll -o ./c_standard_lib-master/MATH/ATAN.o
	python rtl_c2o_8slots.py -t ./libc-master/src/string/ ./libc-master/src/string/
	python rtl_c2o_8slots.py -t ./c_standard_lib-master/_DUMMY/ ./c_standard_lib-master/_DUMMY/
	python rtl_c2o_8slots.py -t ./c_standard_lib-master/MATH/ ./c_standard_lib-master/MATH/
	python rtl_c2o_8slots.py -t ./c_standard_lib-master/STRING/ ./c_standard_lib-master/STRING/
	```
## 命令行介绍

- rtl_c2o_4slots.py
- rtl_c2o_8slots.py

  ```
  功能：通过遍历，功能：将一个目录底下的 .c 文件批量生成 .o 文件的脚本 
  用法: rtl_c2o.py [-h] [-t] [-v] [input] [target]
  示例：
  ->	python rtl_c2o_8slots.py -t ./testcase_8slots/ ./testcase_8slots/  
  ->	python rtl_c2o_8slots.py -t ./_main/_main.c ./_main/  
  ->	python rtl_c2o_4slots.py -t ./testcase_4slots/ ./testcase_4slots/
  ->	python rtl_c2o_4slots.py -t ./testcase_4slots/addition.c ./testcase_4slots/
  代码注意：
	1 if __name__ == '__main__'里的CLANG和LLC，即clang.exe和llc.exe调用地址,分为4slots和8slots
	  -t参数表述clang.exe和llc.exe的调用路径使用rtl_c2o_4/8slots.py代码设定的指定路径
	  去掉-t则表示使用默认路径，即当前目录下
	2 CLANG_PARAMETER和LLC_PARAMETER，即命令行参数设置，一般默认不修改即可
	// Hardware Loop
	clang -S --target=dsp -fno-unroll-loops -emit-llvm -O2 
	clang -S --target=dsp -fno-unroll-loops -emit-llvm -fno-builtin -O2 
	llc -march=hexagon
	//Forbid the VILW
	-nopack
	//Turn off hwloop
	-disable-dsp-hwloops
	//Turn off tail-call
	-fno-optimize-sibling-calls
	//watch the sequence of each Pass processing
	llc -march=dsp -debug-pass=Structure loop.ll 
	//-debug-only=dsp-asm-printer  
	->#define DEBUG_TYPE "dsp-asm-printer"
	.s文件打印槽分配情况
	//-debug
	打印所有debug信息,比如所有DEBUG()
	->DEBUG(dbgs() << "slot:" << MaskToOrder(mask) << " Instr:" << MII->getOpcode() << " order2:" << counts_Instr++ << "/n");
  ``` ​
  
- rtl_o2dat.py   
 
  ```
  功能：将一个或多个 .o 文件生成一个 .dat和.out 文件的脚本 
  用法: rtl_o2dat.py [-h] [-o datFile] [-v] objFile [objFile ...]  
  示例：python rtl_o2dat.py ./testcase_8slots/addition.o ./testcase_8slots/and_or_if.o -o ./testcase_8slots/output.dat

  内部流程:
  1)Linking
  => rtl-odat.py 
  => mipsel-linux-ld + link.x (linking with _main.o)
  =>outFile.out

  2)Extract segments
  =>trobjdat.py        
  =>mipsel-linux-objcopy
  =>outFile

  3)Changing to the big-endian
  =>trobjdat.py
  =>outFile.dat (RTL final executable file)
  ```
  
- trobjdat.py 

  ```
  功能：将一个.out文件生成一个.dat文件
  用法示例：python trobjdat.py test.out
  代码注意：
	1 windows上代码多了 “b":b'_' b'/n'等
	2 windows上代码多了 .decode()等
  ```
  
- rtl_decompiler.py

  ```
  功能：将 DSP 的 ELF 文件反汇编成 SWIFT 代码 
  用法: rtl_decompiler.py [-h] [-v] input  
  示例：python3 ./rtl_decompiler.py ./vector/vmax.out
  ```

- rtl_sco.py

  ```
  功能：比较 DSP 的 ASM 文件与 ELF 文件的编码 
  用法: rtl_sco.py [-h] [-v] ASM_file ELF_file
  示例：python3 ./rtl_sco.py ./vector/vmax.s ./vector/vmax.o
  ```
  
- ar

  ```
  功能：链接多个.o文件生成一个.a的文件
  用法: https://www.cnblogs.com/baiduboy/p/7593715.html
  示例：ar r out.a in1.o in2.o in3.o
  ```
  
##
author:  @lengyanyu258 & @changrui
reviser：@ppp 