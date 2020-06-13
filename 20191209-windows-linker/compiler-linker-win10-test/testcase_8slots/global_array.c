
int g_Array[5] ={1,2,3,4,5};

int main(void){

    for(int i=0; i<5; i++)
        g_Array[i] = 5-i;
	for(int i =0; i<5; i++)
		g_Array[i]++;

	return 0;
}