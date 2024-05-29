# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/num_conversion_1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/num_conversion_1.c"
# 9 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector/num_conversion_1.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "num_conversion_1.c", 3, "reach_error1"); }

 int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}


int main()
{
    unsigned char x;
    unsigned char y;
    unsigned char c;

    x = 37;
    y = 0;
    c = 0;
    while (c < (unsigned char)8) {
        unsigned char i = ((unsigned char)1) << c;
        unsigned char bit = x & i;
        if (bit != (unsigned char)0) {
            y = y + i;
        }
        c = c + ((unsigned char)1);
    }
    __VERIFIER_assert(x == y);

    return 0;
}
