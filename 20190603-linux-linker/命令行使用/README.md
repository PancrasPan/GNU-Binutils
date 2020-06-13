## Python版本

	```
	建议：python2和3版本都装，除了trobjdat.py 使用python2以外，
	其他都使用python3
	```
	
## 命令行介绍

- rtl_c2o.py

  ```
  功能：通过遍历，功能：将一个目录底下的 .c 文件批量生成 .o 文件的脚本 
  用法: rtl_c2o.py [-h] [-t] [-v] [input] [target]
  示例：python3 ./rtl_c2o.py ./vector/global_array.c ./output/  
  ``` ​
  
- rtl_o2dat.py   
 
  ```
  功能：将一个或多个 .o 文件生成一个 .dat 文件的脚本 
  用法: rtl_o2dat.py [-h] [-o datFile] [-v] objFile [objFile ...]  
  示例：python3 rtl-o2dat.py vector/testa.o vector/testb.o -o vector/test.dat
	
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
  
  
## How to add test cases

Edit `.gitignore` file:

if you just want to add .c, .h files, you should add `two` lines:

```diff
@@ -12,6 +12,8 @@
 /vector/*
 !/test-case
 /test-case/*
+!/your-test-case-directory-name
+/your-test-case-directory-name/*
 
 # except other directories
 !/input
```

if you want to add .s or elf files too, you just need add `one` line:

```diff
@@ -12,6 +12,8 @@
 /vector/*
 !/test-case
 /test-case/*
 
 # except other directories
 !/input
 !/output
+!/your-test-case-directory-name
```

## 

author:  @lengyanyu258 & @changrui
reviser：@ppp 
