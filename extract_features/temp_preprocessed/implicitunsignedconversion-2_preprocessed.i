# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector-regression/implicitunsignedconversion-2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/bitvector-regression/implicitunsignedconversion-2.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "implicitunsignedconversion-2.c", 3, "reach_error1"); }

int main() {
  unsigned int plus_one = 1;
  int minus_one = -1;

  if(plus_one > minus_one) {
    goto ERROR;
  }

  return (0);
  ERROR: {reach_error1();abort();}
  return (-1);
}
