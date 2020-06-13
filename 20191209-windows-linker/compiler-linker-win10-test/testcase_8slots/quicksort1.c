

int partition_1(int* array, int start, int end)
{
	if(start > end)
		return -1;

	int part_v = array[start];
	int i = start;
	int j = end;

	while(i < j){
		while(i<j && array[j]>=part_v)
			j--;//find the first element smaller from right
		array[i] = array[j];
		while(i<j && array[i]<=part_v)
			i++;//find the first bigger from left
		array[j] = array[i];
	}

		array[j] = part_v;

	partition_1(array, start, i-1);
	partition_1(array, j+1, end);

	return 0;
}
