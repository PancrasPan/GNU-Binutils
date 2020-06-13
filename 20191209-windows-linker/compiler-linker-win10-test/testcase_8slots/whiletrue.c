extern int flagsar[10];
extern int bound;
/*Can the Exiting Block be different from Latch Block ?*/
int check(int* Array, int start, int end)
{

	int i = 0;
	int flag = 0;

	do{

		if(Array[i] > Array[i+1]){
			flag = -1;
		}
		if(i >= bound)
			break;

		flagsar[i] = -1;
		i++;
	} while(1);

	return flag;
}
