//#include "vector_support.h"
typedef int v4si __attribute__((vector_size(64)));
typedef char v16sc __attribute__((vector_size(64)));
typedef short v8ss __attribute__((vector_size(64)));
v4si init_vgb;

int vsum(v4si v1, v4si v2, v4si v3)
{
	init_vgb += v2 +v3 + v1;
}