# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/eqn2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-fpi/eqn2.c"







 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "eqn2.c", 10, "reach_error1"); }
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

 long long i;
 long long *a = malloc(sizeof(long long)*N);
 long long *b = malloc(sizeof(long long)*N);

 a[0] = 4;
 b[0] = 1;

 for(i=1; i<N; i++)
 {
  a[i] = a[i-1] + 4;
 }

 for(i=1; i<N; i++)
 {
  b[i] = b[i-1] + a[i-1];
 }

 for(i=0; i<N; i++)
 {
  __VERIFIER_assert(b[i] == 2*i*i + 2*i + 1);
 }
 return 1;
}
