int funcO(int a, int b);

extern int gO1;
extern int gO2;

int main(){
	int a = 1;
	int c = 2;

	c = funcO(a, gO1);
	c += gO2;

	return c;
}