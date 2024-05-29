# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_init_both_ends_multiple_sum.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_init_both_ends_multiple_sum.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "array_init_both_ends_multiple_sum.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
int N = 100000;
int main()
{
  int a[N];
  int b[N];
  int i;
  int sum=0;

  for (i=0;i<N;i++) {
    a[i] = i;
  }

  for (i=0;i<N;i++) {
    b[N-i-1]=i;
  }

  for (i=0;i<N;i++) {
    sum=sum+(a[i]-b[N-i-1]);
  }

  __VERIFIER_assert(sum == 0);
  return 0;
}
