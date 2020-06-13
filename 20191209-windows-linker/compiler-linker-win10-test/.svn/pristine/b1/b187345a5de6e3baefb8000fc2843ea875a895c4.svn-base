/*Bubble Sort*/
/// \brief Comparison in Latch does not use induction.
/// Fail to convert.
extern int Array[];
extern int size;

//int bubblesort(int *Array,  int size){
int bubblesort(void){
//static int i = 0;
	int Temp;
	int hasOutOrder;

	for(int Sortpos = size-1; Sortpos > 0; Sortpos--){
		hasOutOrder = 0;
		for(int i = 0; i < Sortpos; i++){
			if(Array[i] > Array[i+1]){
				hasOutOrder = 1;
				//swap
				Temp = Array[i];
				Array[i] = Array[i+1];
				Array[i+1] = Temp;
			}
		}
		if(!hasOutOrder)
			break;
	}
	
	return 0;
}