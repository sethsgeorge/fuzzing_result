# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/sum02-2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/sum02-2.c"
# 9 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/sum02-2.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "sum02-2.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}
 unsigned int __VERIFIER_nondet_uint();
int main() {
  unsigned int i, n=__VERIFIER_nondet_uint();
  unsigned long long sn=0;


  assume_abort_if_not(n < 4294967296U);
  for(i=0; i<=n; i++) {
    sn = sn + i;
  }

  unsigned long long nl = n;
  unsigned long long gauss = (nl*(nl+1U))/2U;
  __VERIFIER_assert(sn==gauss || sn == 0);
}
