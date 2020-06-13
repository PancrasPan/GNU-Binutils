int init_gB = 5;
int uninit_gB;

int neg(int*);
//int neg(int);

int testb(int gA1, int sA1, int* pgA2, int* psA2, int gB1, int* pgB2){
//int testb(int gA1, int sA1, int gA2, int sA2, int gB1, int gB2){
	int localb = 10;
	*pgA2 = gA1;
	*psA2 = sA1;
	*pgB2 = gB1;

	localb += gA1 + *pgA2 + sA1 + *psA2 + init_gB + uninit_gB;
	//localb += gA1 + gA2 + sA1 + sA2 + init_gB + uninit_gB;

	neg(&localb);
	//localb = neg(localb);

	return localb;
}

int neg(int* x){
	*x = -(*x);
	return 0;
}


/*int neg(int x){
	return -x;
}
*/