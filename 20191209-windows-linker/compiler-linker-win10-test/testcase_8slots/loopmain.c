#define ASIZE 100

extern int add(int *array, int size);

int sum = 0;
int bound = 1024;
//$400M I am bound to earn!
int threshold = 4000000000;
//Geometric array
int ExArray[ASIZE] = {1};

int main(void){
//static int i = 0;
	// Fibonacci array
	int FiboArray[ASIZE];

	FiboArray[0] = FiboArray[1] = 1;
	for(int i = 2; i < ASIZE; i ++)
		FiboArray[i] = FiboArray[i-1] + FiboArray[i-2];
	for(int i = 1; i < ASIZE; i++)
		ExArray[i] = ExArray[i-1] * 2;

	sum = add(FiboArray, ASIZE);
	
	return sum;
}
