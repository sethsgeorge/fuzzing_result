 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *)  ;
void reach_error1() { __assert_fail("0", "volatile_alias.i", 3, "reach_error1"); }




int main()
{
        int a = 4;
        volatile int * p = &a;
        p = &a;
        a = a - 4;
        if (*p != 0){
                ERROR: {reach_error1();abort();}
        }
        return 0;
}
