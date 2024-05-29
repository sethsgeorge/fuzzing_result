# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-cbmc-regression/float-no-simp1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-cbmc-regression/float-no-simp1.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "float-no-simp1.c", 3, "reach_error1"); }
int main()
{
  unsigned int i, j;
  double d;

  i=100.0;
  d=i;
  j=d;
  if(!(j==100)) {reach_error1();abort();}
}
