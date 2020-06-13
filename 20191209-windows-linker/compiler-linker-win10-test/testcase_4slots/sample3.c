
/*check whether the order after sorting is right.*/
int check(int* Array, int start, int end)
{
	int flag = 0;
	for(int i = start; i< end; i++)
		if(Array[i] > Array[i+1]){
			flag = -1;
			break;
		}
	return flag;
}
