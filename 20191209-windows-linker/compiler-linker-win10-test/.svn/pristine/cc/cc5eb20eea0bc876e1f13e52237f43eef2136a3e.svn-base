int init_gA = 1;
int uninit_gA;
static int init_sA = 2;

extern int init_gB;
extern int uninit_gB;

int testb(int, int, int*, int*, int, int*);
//int testb(int, int, int, int, int, int);

int main(void){
	static int uninit_sA;
	int locala = testb(init_gA, init_sA, 
		&uninit_gA, &uninit_sA, 
		init_gB, &uninit_gB);

//	int locala = testb(init_gA, init_sA, uninit_gA, uninit_sA, init_gB, uninit_gB);

	return 0;
}