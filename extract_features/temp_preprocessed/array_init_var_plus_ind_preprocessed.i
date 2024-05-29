# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_init_var_plus_ind.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-cav19/array_init_var_plus_ind.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "array_init_var_plus_ind.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int();
int N = 100000;
int main()
{
  int i;
  int j=0;
  int a[N];

  for(i=0;i<N;i++){
    int x=__VERIFIER_nondet_int();
    if(x) break;
    a[i]=j;
    j=j+i;
  }

  for(int k=1;k<i;k++)
    __VERIFIER_assert(a[k]>=0);
  return 0;
}
