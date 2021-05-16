#include<stdio.h>
struct {
    int y;
    int x;
} rec;

void f1 ()
{
    printf(" %d %d\n", rec.x, rec.y);
}
