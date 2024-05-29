# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/brs1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/brs1.c"







 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "brs1.c", 10, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int(void);
void *malloc(unsigned int size);

int N;

int main()
{
 N = __VERIFIER_nondet_int();
 if(N <= 0) return 1;
 assume_abort_if_not(N <= 2147483647/sizeof(int));

 int i;
 int sum[1];
 int *a = malloc(sizeof(int)*N);

 for(i=0; i<N; i++)
 {
  if(i%1==0) {
   a[i] = 1;
  } else {
   a[i] = 0;
  }
 }

 for(i=0; i<N; i++)
 {
  if(i==0) {
   sum[0] = 0;
  } else {
   sum[0] = sum[0] + a[i];
  }
 }
 __VERIFIER_assert(sum[0] <= N);
 return 1;
}
