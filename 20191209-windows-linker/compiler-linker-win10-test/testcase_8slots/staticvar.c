//.data
int init_g = 1;
static int init_s = 2;
//in .sbss
int uninit_g;
//in .bss
static int uninit_s;

int main(void){
	//.data
	static int init_s_main = 3;
	//in the stack of main()
	int local = 4;
	
	uninit_s = init_g + init_s + uninit_g + init_s_main + local;

	return uninit_s;
}