// #include <stdio.h>
int a[3];
int sum1;
static int b[3];
static int sum2;
extern int c[3];
int main()
{
    static int local_b[3];
    static int local_sum2;
    local_b[0]=b[0];
    local_b[1]=b[1];
    local_b[2]=b[2];
    local_sum2=local_b[0]+local_b[1]+local_b[2];
    sum2=local_sum2;
    sum1=a[0]+a[1]+a[2];
    a[0]+=c[0];
    a[1]+=c[1];
    a[2]+=c[2];
    return 0;
}
