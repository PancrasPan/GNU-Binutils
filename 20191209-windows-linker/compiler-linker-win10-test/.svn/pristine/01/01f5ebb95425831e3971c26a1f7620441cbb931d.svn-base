/*Insert Sorting by binary searching the inserted position */

int binary_insert(int *array, int start, int end)
{
	if(start > end)
		return -1;

	int value; //the element to be inserted this round
	int midpos;	//the middle pos of binary search
	int srchhead; //srchhead,srchrear mark the start and end position of searching process
	int srchrear;

	for(int i = start + 1; i <= end ; i++){
		value = array[i];
		srchhead = start;
		srchrear =  i-1;

		/*shift the index until srchhead = srchrear + 1
		to ensure that all the elements, in the range of search, on the 
		left hand of srchhead are not great than its value, and all on 
		the right hand of srchrear are great than its value.
		*/
		while(srchhead <= srchrear){
			midpos = (srchhead + srchrear)/2;
			if(array[midpos] <= value)
				srchhead = midpos + 1;
			else
				srchrear = midpos -1;
		}
		
		//insert the element and rightshift one position for elements behind it   
		for(int j = i-1; j >= srchhead; j--)
			array[j+1] = array[j];
		array[srchhead] = value;
	}

	return 0;
}