# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_min_and_copy_shift_sum_add.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_min_and_copy_shift_sum_add.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "array_min_and_copy_shift_sum_add.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int();
int main()
{
  int i;
  int j=__VERIFIER_nondet_int();
  assume_abort_if_not(j < 10000 && j > -10000);
  int k = 0;
  int N=__VERIFIER_nondet_int();
  assume_abort_if_not(N < 10000 && N > -10000);
  int a[N+1];
  int b[N];

  for(i=0;i<N;i++) {
    assume_abort_if_not(a[i] < 10000 && a[i] > -10000);
    if (j > a[i])
      j = a[i];
  }

  for(i=0;i<N;i++) {
    b[i] = a[i]-j;
  }

  for(i=0;i<N;i++) {
    k = k+b[i]+i;
  }

  __VERIFIER_assert(k >= 0);
  return 0;
}
