# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-programs/partial_mod_count_limited_5.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-programs/partial_mod_count_limited_5.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "partial_mod_count_limited_5.c", 3, "reach_error1"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
 int __VERIFIER_nondet_int(void);
int N = 1000;
int main(){
int i,j=0,k=0,a[N];
int lim=__VERIFIER_nondet_int();
 unsigned int R=5;
assume_abort_if_not(0 < lim && lim < N/R);
  for(i=0;i<N;i++){
    a[i]=i+1;
    if(i>N/2 && k<lim)
       a[i]=i%R;
    if(a[i]==0) k++;
  }
  for(i=0;i<N;i++){
    if (a[i]==0) j++;
     __VERIFIER_assert(j < N/(2*R));
  }
  return 0;
}
