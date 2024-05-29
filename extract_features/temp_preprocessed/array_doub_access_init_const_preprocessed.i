# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_doub_access_init_const.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_doub_access_init_const.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "array_doub_access_init_const.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
int main()
{
  int i;
  int N=100000;
  int a[2*N+2];

  for(i=0;i<=N;i++) {
    a[2*i]=0;
    a[2*i+1]=0;
  }

  for(i=0;i<=2*N;i++)
    __VERIFIER_assert(a[i]>=0);
  return 0;
}
