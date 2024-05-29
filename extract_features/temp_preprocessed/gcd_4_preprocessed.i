# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/gcd_4.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/gcd_4.c"
# 9 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/gcd_4.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "gcd_4.c", 3, "reach_error1"); }

 int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}
long gcd_test(long a, long b)
{
    if (a < 0) a = -a;
    if (b < 0) b = -b;

    if (a == 0) {
        return b;
    }

    while (b != 0) {
        if (a > b) {
            a = a - b;
        } else {
            b = b - a;
        }
    }
    return a;
}


int main()
{
    long x;
    long y;
    long g;

    x = 63;
    y = 18;

    g = gcd_test(x, y);

    __VERIFIER_assert(x % g == 0);
    __VERIFIER_assert(y % g == 0);
    __VERIFIER_assert(g == 9);

    return 0;
}
