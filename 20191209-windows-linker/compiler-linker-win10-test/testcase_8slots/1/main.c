//main Startup function

//taking the 0x0 place of data segment to ensure that .data won't be empty.
char _stump[] = "TJ_421";

extern int main_xx();

int main(){
	int mainret;

	mainret = main_xx();

	return mainret;
}