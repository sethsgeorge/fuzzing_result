# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-acceleration/simple_1-2_abstracted.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-acceleration/simple_1-2_abstracted.c"
 void abort(void);
 int __VERIFIER_nondet_int();
 _Bool __VERIFIER_nondet_bool();
 char __VERIFIER_nondet_char();
 double __VERIFIER_nondet_double();
 float __VERIFIER_nondet_float();
 unsigned long __VERIFIER_nondet_ulong();
 unsigned long long __VERIFIER_nondet_ulonglong();
 unsigned int __VERIFIER_nondet_uint();
 int __VERIFIER_nondet_int();
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "simple_1-2_abstracted.c", 3, "reach_error1"); }

void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}

int main(void) {
  unsigned int x = 0;


  if (x < (268435455)) {
    long long int x__VERIFIER_LA_tmp0;
    x__VERIFIER_LA_tmp0 = x;
    long long int __VERIFIER_LA_iterations0;
    __VERIFIER_LA_iterations0 = (268435455 - x__VERIFIER_LA_tmp0) / 2L;
    unsigned int x__VERIFIER_LA_old_tmp0;
    x__VERIFIER_LA_old_tmp0 = x;
    x = (__VERIFIER_LA_iterations0 * 2L) + x__VERIFIER_LA_old_tmp0;
  }


  __VERIFIER_assert(!(x % 2));
}
