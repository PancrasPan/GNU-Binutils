
int qsort(int *array, int beg, int end)
{
	if(end - beg < 1) return -1;
	
	int i = beg, j = end + 1;
	int pivot = array[beg], temp;

	while(i < j){
		while(array[--j] > pivot) continue;
		while(++i < j)
			if(array[i] >= pivot) break;
		if(i < j){
			temp = array[i];
			array[i] = array[j];
			array[j] = temp;
		}
	}
	//j always stops at a value where array[j] <= pivot.
	array[beg] = array[j];
	array[j] = pivot;

	qsort(array, beg, j-1);
	qsort(array, j+1, end);
	return 0;
}