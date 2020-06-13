#define ASIZE 5

int SortArray[ASIZE] = {
	5, 1, 3, 4, 2
	};
int size  = ASIZE;
//extern int bubblesort(int *array, int size);
extern int bubblesort(void);

int main(void){
//static int i = 0;
	// Fibonacci array
/*	int SortArray[ASIZE] = {
		54, 34625, 346, 346, 16,
		516, 56416, 16, 1, 48,
		1318, 1564, 16, 441, 6541,
		1, 61, 6, 684, 95
	};*/

	//bubblesort(SortArray, ASIZE);
	bubblesort();
	// Check the order
	int Inorder = 1;
	for(int i = 1; i < ASIZE; i++){
		if(SortArray[i] < SortArray[i-1]){
			Inorder = 0;
			break;
		}
	}

	return Inorder;
}
