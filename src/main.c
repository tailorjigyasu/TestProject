#include "header.h"

int main()
{
    double x = 4;
    double y = 2;
    double z;
    z=add(x,y);
    printf("%lf\n", z);
    z=sub(x,y);
    printf("%lf\n", z);
    z=mul(x,y);
    printf("%lf\n", z);
    z=div(x,y);
    printf("%lf\n", z);

    print();

    return 0;
}