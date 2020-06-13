#include "sort.h"

/*check whether the order after sorting is right.*/
int check(int* Array, int start, int end)
{
	int flag = 0;

	for(int i = start; i< end; i++)
		if(Array[i] > Array[i+1]){
			flag = SORTERROR;
			break;
		}

	return flag;
}


int main()
{
	int sortret;
	int Array[5] = {3,1,4,2,5};

	//sortret = heapsort(Array, 0, 4);
	sortret = qsort(Array, 0, 4);

	// int base = 0x1700;
	// base <<= 8;

	//for(int i = 0; i < 5; i++){
	//	__builtin_dsp_storeu_32(Array[i], base, 1);
	//}
	//__builtin_dsp_storeu_32(Array[0], base, 1);

	if(sortret==0)
		return check(Array, 0, 4);
	else
		return INPUTERROR;
}

