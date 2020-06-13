//Error under O2 optimizer but fine under default optimizer.
extern int outFunct(int a, int b, int c);


int main(void){
	int a = 1;
	int b = 3;
	int c = 2;

	b = outFunct(a, b, c);

	return b;
}