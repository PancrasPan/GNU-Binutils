//windows编译流程：
1 安装mingw-get-setup.exe
1.1Basic Setup全部勾选
1.2Installation-Apply Change
2Binutils-2.2x复制到MinGW/msys/1.0
3新建binutils和install目录
4运行MinGW/msys/1.0/msys.bat
5输入命令行：
5.1cd /
5.2cd binutils
5.3../binutils-2.2x/configure --target=mipsel-unknown-linux-gnu --prefix=/install
5.4make
5.5make install
6找到install/bin/mipsel-unknown-linux-gnu-ld.exe 和mipsel-unknown-linux-gnu-objcopy.exe
改成mipsel-linux-ld.exe  mipsel-linux-objcopy.exe

//rtl_o2dat.py修改
1ld = "./mipsel-linux-ld"	->
ld = "mipsel-linux-ld"
2python = 'python2'		->根据版本需要
python = 'python'

//trobjdat.py修改
1if os.path.isfile("mipsel-linux-objcopy") == False:		->
if os.path.isfile("mipsel-linux-objcopy.exe") == False:
2os.system("./mipsel-linux-objcopy -O binary "+ outFile + " " + datFileSim)		->
os.system("mipsel-linux-objcopy -O binary "+ outFile + " " + datFileSim)
3'/n'    '_'		->
b'/n'   b '_'
4fb_d.write()中的insn0 insn1 insn2 insn3		->判断是否为bytes类型，是则修改
insn0.decode() insn1.decode() insn2.decode() insn3.decode()	