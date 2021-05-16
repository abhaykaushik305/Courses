#include<stdio.h>
struct {
    int x;
    int y;
} rec = {13,5};
void f1();

int main ()
{
    f1 ();
    printf(" %d %d\n", rec.x, rec.y);
    return 0;
}

