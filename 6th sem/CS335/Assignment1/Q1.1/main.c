/*main.c*/
#include <stdio.h> 
void swap (); /* declaration */
int buf [] = {0x72,0x56}; /* initialised global */
int main () /* definition main */
{
    swap ();
    printf("buf[0]= %d buf[1]= %d\n", buf[0], buf[1]);
    return 0;
}
