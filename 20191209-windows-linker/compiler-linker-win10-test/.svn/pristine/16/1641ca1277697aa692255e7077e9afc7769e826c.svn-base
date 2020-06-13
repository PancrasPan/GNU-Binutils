/*Binary searching the given value of element ,return its index in array*/

int binarysearch(int* array, int value, int start, int end)
{
	if(start > end)
		return -1;

	int bottem = start;
	int top = end;
	int midpos;

	while(bottem <= top){
		midpos = (bottem + top)/2;

		if(array[midpos] == value)
			return midpos;
		else if(array[midpos] < value)
			bottem = midpos + 1;
		else
			top = midpos - 1;
	}
	//no one match
	return -2;
}