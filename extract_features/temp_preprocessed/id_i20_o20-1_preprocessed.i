# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/id_i20_o20-1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/id_i20_o20-1.c"
 int __VERIFIER_nondet_int();
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "id_i20_o20-1.c", 4, "reach_error1"); }

int id(int x) {
  if (x==0) return 0;
  return id(x-1) + 1;
}

int main(void) {
  int input = 20;
  int result = id(input);
  if (result != 20) {
    ERROR: {reach_error1();abort();}
  }
}
