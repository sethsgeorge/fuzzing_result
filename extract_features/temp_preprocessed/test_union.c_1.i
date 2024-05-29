 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *)  ;
void reach_error1() { __assert_fail("0", "test_union.c_1.i", 3, "reach_error1"); }


void __blast_assert()
{
 ERROR: {reach_error1();abort();}
}









union A {
 int list;
 int l2;
 char * str;
};

int main(void) {
 union A x;
 x.list = 0;

 ((x.l2 == 0) ? (0) : __blast_assert ());



}
