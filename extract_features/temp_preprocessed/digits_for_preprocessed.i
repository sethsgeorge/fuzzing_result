# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-esbmc-regression/digits_for.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/floats-esbmc-regression/digits_for.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "digits_for.c", 3, "reach_error1"); }
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: {reach_error1();abort();} } return; }

int main()
{
  long double x = 1.0/7.0;
  long long res = 0;

  for(int i = 1; x != 0; i++)
  {
    res += ((int)(x * 10) % 10) * (i * 10);
    x = (x * 10) - (int) x * 10;
  }

  __VERIFIER_assert(res == 67050);
  return 0;
}
