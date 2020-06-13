/* Merge Sorting */
#define MAXSIZE 10

static int t_array[MAXSIZE];

int merge_sortR(int* array, int start, int end)
{
	if(start >= end)
		return -1;

	//Partition and recusively processing
	int mid = (start + end)/2;

	merge_sortR(array, start, mid);
	merge_sortR(array, mid+1, end);

	//Merging
	int i = start;	//index of first array
	int j = mid + 1;	//index of the second
	int k = start;	//index of temp array

	for( ; i<=mid && j <= end; )
		if(array[i] > array[j])//keeping the stability
			t_array[k++] = array[j++];
		else
			t_array[k++] = array[i++];
	//processing the remainder
	for( ; i<=mid; i++, k++)
		t_array[k] = array[i];
	for( ; j<=end; j++, k++)
		t_array[k] = array[j];
	
	//tranfering elements from temp array to original array
	for( ; start <= end; start ++)
		array[start] = t_array[start];

	return 0;
}