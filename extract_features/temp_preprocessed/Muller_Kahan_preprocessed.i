# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-benchs/Muller_Kahan.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-benchs/Muller_Kahan.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "Muller_Kahan.c", 3, "reach_error1"); }
# 12 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-benchs/Muller_Kahan.c"
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: {reach_error1();abort();} } return; }

int main()
{
  double x0, x1, x2;
  int i;

  x0 = 11. / 2.;
  x1 = 61. / 11.;
  for (i = 0; i < 100; i++) {
    x2 = 111. - (1130. - 3000. / x0) / x1;
    x0 = x1;
    x1 = x2;
  }

  __VERIFIER_assert(x0 >= 99. && x0 <= 101.);
  return 0;
}
