/* Heap Sort */
//#include<stdio.h>

#define ndx(x) ((x) - 1 + start)
#define ord(x)	 ((x) - start + 1)

static int adjustdown(int* array, int pos, int start, int end)
{
	if(start > end || pos < start || pos > end)
		return -1;
	
	//transform index to ordinals from 1 to end-start+1
	int ordi = ord(pos);
	int ordend = ord(end);
	//locate the postion of element array[pos] adjusted to
	int location = ordi;
	int temp = array[pos];

	//when its left child exist
	while((ordi *= 2) <= ordend){
		//if right child existi and greater than left child
		if((ordi+1) <= ordend && array[ndx(ordi+1)] > array[ndx(ordi)])
			++ordi;
		//ord is the ordinal of the max between two children
		if(array[ndx(ordi)] > array[ndx(ordi/2)]){
			array[ndx(ordi/2)] = array[ndx(ordi)];
			location = ordi;
		}
		//reach the appropriate location of this element
		else  
			break;
	}
	array[ndx(location)] = temp;

	return 0;
}

static int buildheap(int* array, int start, int end)
{
	if(start > end)
		return -1;
	//the ordinal of last parent
	int lastprnt = ord(end)/2;

	for(int i = lastprnt; i>= 1; i--)
		adjustdown(array, ndx(i), start, end);	
	
	return 0;
}

int heapsort(int* array, int start, int end)
{
	int swaptemp;

	if(buildheap(array, start, end))
		return -1;

	for(int i = end; i > start; i--){
		swaptemp = array[i];
		array[i] = array[start];
		array[start] = swaptemp;
		adjustdown(array, start, start, i-1);
	}
	
	return 0;
}
