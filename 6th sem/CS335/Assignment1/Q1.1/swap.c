/*swap.c*/
extern int buf []; /*declaration buf*/
int *bufp0 = &buf[0]; /* initialized global */
int *bufp1;  /* uninitialized global */
void swap () /* definition swap */
{
    static int temp = 100; /* static variable */
    bufp1 = &buf[1];
    temp = *bufp0;
    *bufp0 = *bufp1;
    *bufp1 = temp;
}
