//windows�������̣�
1 ��װmingw-get-setup.exe
1.1Basic Setupȫ����ѡ
1.2Installation-Apply Change
2Binutils-2.2x���Ƶ�MinGW/msys/1.0
3�½�binutils��installĿ¼
4����MinGW/msys/1.0/msys.bat
5���������У�
5.1cd /
5.2cd binutils
5.3../binutils-2.2x/configure --target=mipsel-unknown-linux-gnu --prefix=/install
5.4make
5.5make install
6�ҵ�install/bin/mipsel-unknown-linux-gnu-ld.exe ��mipsel-unknown-linux-gnu-objcopy.exe
�ĳ�mipsel-linux-ld.exe  mipsel-linux-objcopy.exe

//rtl_o2dat.py�޸�
1ld = "./mipsel-linux-ld"	->
ld = "mipsel-linux-ld"
2python = 'python2'		->���ݰ汾��Ҫ
python = 'python'

//trobjdat.py�޸�
1if os.path.isfile("mipsel-linux-objcopy") == False:		->
if os.path.isfile("mipsel-linux-objcopy.exe") == False:
2os.system("./mipsel-linux-objcopy -O binary "+ outFile + " " + datFileSim)		->
os.system("mipsel-linux-objcopy -O binary "+ outFile + " " + datFileSim)
3'/n'    '_'		->
b'/n'   b '_'
4fb_d.write()�е�insn0 insn1 insn2 insn3		->�ж��Ƿ�Ϊbytes���ͣ������޸�
insn0.decode() insn1.decode() insn2.decode() insn3.decode()	