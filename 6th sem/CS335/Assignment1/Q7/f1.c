#include<stdio.h>
int a[5] = {0,1,2,3,4};
extern int b [];
double c;
int *x = &(a[3]);
int *y = b;
extern int fn();
int main ()
{
    c = 100;
    printf("%d %f",fn(), c);
    return 0;
}
