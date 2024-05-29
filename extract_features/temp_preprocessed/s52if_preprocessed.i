# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/s52if.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/s52if.c"







 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "s52if.c", 10, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int(void);
void* malloc(unsigned int size);

int N;

int main()
{
 N = __VERIFIER_nondet_int();
 if(N <= 0) return 1;
 assume_abort_if_not(N <= 2147483647/sizeof(int));

 int i;
 long long sum[1];
 int *a = malloc(sizeof(int)*N);

 sum[0] = 0;
 for(i=0; i<N; i++)
 {
  a[i] = 1;
 }

 for(i=0; i<N; i++)
 {
  if(a[i] == 1) {
   a[i] = a[i] + 5;
  } else {
   a[i] = a[i] - 1;
  }
 }

 for(i=0; i<N; i++)
 {
  if(a[i] == 6)
  {
   sum[0] = sum[0] + a[i];
  } else {
   sum[0] = sum[0] * a[i];
  }
 }

 __VERIFIER_assert(sum[0] == 6*N);
 return 1;
}
