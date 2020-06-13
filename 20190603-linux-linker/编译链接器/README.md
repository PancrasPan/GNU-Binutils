## Ubuntu版本

	```
	14版本编译通过,对于gcc版本为4
	16版本我试过会因为一些库不兼容导致编译不通过
	18未知
	```
	
## GNU Binutils版本
	```
	2.25版本编译通过，个人认为Binutils2.25和Ubuntu14最搭，不排除其他搭配方式
	2.24版本据上一届师兄说也可以编译通过
	2.21 2.31版本编译不通过
	其他版本未知
	```

## 源代码/文件修改

- elf32-mips.c

	```
	位置：binutils-2.25/bfd/
	功能：有关链接器符号重定位功能，主要包含HOWTO结构体，修改/增加了以下四种
	R_MIPS_PC21_S2->相对PC偏移调用函数
	R_MIPS_32->指针引用
	R_MIPS_HI16->置高十六位
	R_MIPS_LO16->置低十六位
	我已经使用符号"ppp"标出
	```

- elfxx-mips.c

	```
	位置：binutils-2.25/bfd/
	功能：使用HOWTO结构和打印信息
	和binutils-2.25源文件的对比：可以用beyongd Compare软件对比
								 我已经使用符号"ppp"标出修改处
	```

- elfxx-mips.h

	```
	位置：binutils-2.25/bfd/
	功能：elfxx-mips.c的头文件，新增函数声明在此，目前只有新增__bfd_mips_elf_sort_relocs_p这个函数的声明
		  我已经使用符号"ppp"标出
	```

## GNU链接器移植/编译过程

1 	下载GNU Binutils-2.25.tar.bz2
	http://ftp.gnu.org/gnu/binutils/
2	准备(下载安装一些依赖库,更新源等)：
	sudo apt-get install build-essential
	sudo apt-get build-dep binutils
	sudo apt-get python-dev
	sudo apt update && sudo apt upgrade
	sudo apt-get autoclean 
	sudo apt-get autoremove
3	elf32-mips.c,elfxx-mips.c,elfxx-mips.h替换源文件
4	编译：
	假设Binutils-2.25.tar.bz2存放在绝对目录/home/ppp/Downloads/下
	cd /home/ppp/Downloads/
	tar   -jxvf    binutils-2.25.tar.bz2
	mkdir build-binutils
	mkdir install-binutils
	cd build-binutils
	../binutils-2.25/configure --target=mipsel-unknown-linux-gnu --prefix=/home/ppp/Downloads/install-binutils
	make
	make install
5	注意/总结/说明：
	make不通过，在再次make之前要make clean
	make install后在install-binutils/bin/里可以找到mipsel-unknown-linux-gnu-ld等工具说明编译成功
	./configure -build,-host,-target 
		build:执行代码编译的主机，正常的话就是你的主机系统。这个参数一般由config.guess来猜就可以。当然自己指定也可以。
		host:编译出来的二进制程序所执行的主机，因为绝大多数是如果本机编译，本机执行。所以这个值就等于build。
			只有交叉编译的时候（也就是本机编译，其他系统机器执行）才会build和host不同。用host指定运行主机。
		target:这个选项只有在建立交叉编译环境的时候用到，正常编译和交叉编译都不会用到。他用build主机上的编译器，
			编译一个新的编译器（binutils, gcc,gdb等），这个新的编译器将来编译出来的其他程序将运行在target指定的系统上。
6	验证：
	将mipsel-unknown-linux-gnu-ld改名为mipsel-linux-ld
	将mipsel-unknown-linux-gnu-objcopy改名为mipsel-linux-objcopy
	将mipsel-unknown-linux-gnu-readelf改名为mipsel-linux-readelf
	三个个文件放在Toolchain目录下，即和link.x,linkMapFile,rtl_*.py等文件一起
	找一个或者多个c代码源文件，比如test1.c test2.cd
	用rtl_c2o.py把test1.c和test2.c转为test1.o和test2.o:
		python3 rtl_c2o.py test1.c test2.c
	用rtl_o2dat.py把test1.o和test2.o转为test1-2,test1-2.dat和test1-2.out:
		python3 rtl_o2dat test1.o test2.o -o test1-2.dat
	用rtl_decompiler.py把test1-2.out转为SWIFT汇编代码:
		python3 rtl_decompiler.py test1-2.out
	查看elf信息：
		./mipsel-linux-readelf -a test1-2.out
		./mipsel-linux-readelf -a test1.o test2.o
	主要利用linMapFile,SWIFT汇编代码和elf信息三者来验证链接器的两个主要功能正确与否：
		地址映射和空间分配	->	link.x 链接脚本				```主要修改点```
		符号解析和重定位	->  elf32-mips和elfxx-mips		```主要修改点```
	
## 

author:  @ppp

















