# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-benchs/Rump_float.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-benchs/Rump_float.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "Rump_float.c", 3, "reach_error1"); }


void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: {reach_error1();abort();} } return; }

int main()
{
  float x,y,r;
  x = 77617.f;
  y = 33096.f;
  r = 333.75f * y*y*y*y*y*y + x*x * (11.0f * x*x*y*y - y*y*y*y*y*y - 121.0f * y*y*y*y - 2.0f) + 5.5f * y*y*y*y*y*y*y*y + x / (2.f * y);

  __VERIFIER_assert((r >= 0));
  return 0;
}
