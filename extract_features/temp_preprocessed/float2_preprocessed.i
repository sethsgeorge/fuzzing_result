# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-cbmc-regression/float2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-cbmc-regression/float2.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "float2.c", 3, "reach_error1"); }

int main()
{
  float a;
  double b;


  a=1.25L;
  if(!(a==1.25)) {reach_error1();abort();}

  b=1.250;
  if(!(b==1.25)) {reach_error1();abort();}


  a=0.5e2;
  if(!(a==50)) {reach_error1();abort();}


  a=0x1.4p+4;
  if(!(a==20)) {reach_error1();abort();}
}
