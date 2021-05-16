/*other.c*/
int buf[2]; /* uninitialized global */
static void sf(); /* static function declaration */
void f() {
    sf();
}
static void sf() /* static function definition */
{
    buf[0] = 3;
    buf[1] = 4;
}
