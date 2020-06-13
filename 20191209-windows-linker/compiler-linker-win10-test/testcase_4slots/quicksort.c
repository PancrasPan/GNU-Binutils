

int partition(int* array, int start, int end)
{
	if(start > end)
		return -1;

	int part_v = array[start];
	int i = start;
	int j = end;
	int temp;

	while(i < j){
		for( ;i<j && (array[j] >= part_v); j--);//find the first element smaller from right
		for( ;i<j && (array[i] <= part_v); i++);//find the first bigger from left

		if(i == j)//must be part_v or an smaller element
			break;
		//swap
		temp = array[j];
		array[j] = array[i];
		array[i] = temp;
	}

	if(j != start){//i,j point to a smaller element behind start
		array[start] = array[j];
		array[j] = part_v;
	}

	partition(array, start, i-1);
	partition(array, j+1, end);

	return 0;
}
