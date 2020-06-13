/* Merge Sorting without recursive calling but its sorting generating 
tree is unbalanced. (Actually it is Complete Binary Tree.)*/

#define MAXSIZE 10

static int t_array[MAXSIZE];	//temp array

int merge_sort(int* Array, int start, int end)
{
	if (start > end)
		return -1;

	/*every time, two subarrays are merged. the number of elements in each one 
	is dist, or less when this subarray is the last one partitioned by the whole Array,
	whose elements are remainder and in the ranged of [1,dist].
	*/
	
	int dist = 1; //ranges from 1 to 2^(floor(logn))
	int a1_i;	//the index of first subarray of Array
	int a1_e;	//the end of first subarray
	int a2_i;	//the index of second subarray
	int a2_e;	//the end of the second subarray
	int k;	//index of temp array

	/*when there are more than dist elements in the Array,so they can be 
	parted into two subarrays or more subarrays to be done merging round.
	*/
	while(dist < (end-start+1)){	
		/*Merging a pair each time. In every round, each subarray (at least two) 
		has dist elements except the last one and they are partial ordered in 
		their subarray, because this subarray was merged by two subarrays with 
		(dist/2) elements at last round. 
		*/
		/*If dist > (end - start  + 1) , it means only one subarray at this round,
		that is the Array itself. Due to it is partial ordered,it is global ordered
		as well. So sorting done!
		*/

		a1_i = start;
		a1_e = a1_i + dist - 1;
		a2_i = a1_e + 1;
		/*When the number of the second subarray is less than dist, setting
		its a2_e = end.*/
		a2_e = ((a2_i+dist-1) > end)? end: (a2_i+dist-1);
		k = 0;

		/*Merging two subarrays until one or no subarray leaves*/
		while(a2_i <= end){

			/*Merging two subarrays to temp array*/
			for(; (a1_i<=a1_e) && (a2_i<=a2_e); )
				if(Array[a1_i] > Array[a2_i])
					t_array[k++] = Array[a2_i++];
				else
					t_array[k++] = Array[a1_i++];
				
			for(; a1_i <= a1_e; )
				t_array[k++] = Array[a1_i++];
			for(; a2_i <= a2_e; )
				t_array[k++] = Array[a2_i++];

			/*Adjusting index and end of the next subarrays 
			Maybe one or two subarrays leave, or reaching the end already.*/
			a1_i = a2_i;
			a1_e = a1_i + dist - 1;
			a2_i = a1_e + 1;
			a2_e = ((a2_i+dist-1) > end) ? end : (a2_i+dist-1);
		}

		/*Copying elements of the last subarray to temp array*/
		for(; a1_i <= end; )
			t_array[k++] = Array[a1_i++];

		/*Copying elements from temp array to Array*/
		for(int i = start, k = 0; i <= end; )
			Array[i++] = t_array[k++];

		dist *= 2;
	}

	return 0;
}

