#define MAXSIZE 10

typedef struct {
	int key[MAXSIZE];
	int length;
}SqList, *SqListptr;

int main(){
	SqList L;
	SqListptr p = &L;

	for(int i = 0; i<MAXSIZE; i++)
		L.key[i] = i;
	L.length = MAXSIZE;

	return p->length;
}