#include <swift_math.h>
//#include <swift_vector.h>
dspvi16 vgb = {1,2,3,4};

int main(int argc, char const *argv[])
{
	dspvi16 vla = {3,3,3,3};
	vla += vgb;
	return 0;
}