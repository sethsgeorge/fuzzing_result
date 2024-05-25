# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-invariants/linear-inequality-inv-a.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-invariants/linear-inequality-inv-a.c"







 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "linear-inequality-inv-a.c", 2, "reach_error1"); }
 unsigned char __VERIFIER_nondet_uchar(void);
int main() {
  unsigned char n = __VERIFIER_nondet_uchar();
  if (n == 0) {
    return 0;
  }
  unsigned char v = 0;
  unsigned int s = 0;
  unsigned int i = 0;
  while (i < n) {
    v = __VERIFIER_nondet_uchar();
    s += v;
    ++i;
  }
  if (s < v) {
    reach_error1();
    return 1;
  }
  if (s > 65025) {
    reach_error1();
    return 1;
  }
  return 0;
}
