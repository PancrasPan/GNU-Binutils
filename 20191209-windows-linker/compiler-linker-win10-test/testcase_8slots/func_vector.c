#include <swift_math.h>
//#include <swift_vector.h>
dspvi16 init_vgb;

int vsum(dspvi16 v1, dspvi16 v2, dspvi16 v3)
{
	init_vgb += v2 +v3 + v1;
}