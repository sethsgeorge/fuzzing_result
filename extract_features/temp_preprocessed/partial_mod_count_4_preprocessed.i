# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-programs/partial_mod_count_4.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-programs/partial_mod_count_4.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "partial_mod_count_4.c", 3, "reach_error1"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }

int N = 1000000;
int main(){
int i,j=0,a[N];
  unsigned int R=4;
  for(i=0;i<N;i++){
    a[i]=i+1;
    if(i>N/2)
       a[i]=i%R;
  }
  for(i=0;i<N;i++){
    if (a[i]==0) j++;
     __VERIFIER_assert(j < (N/8));
  }
  return 0;
}
