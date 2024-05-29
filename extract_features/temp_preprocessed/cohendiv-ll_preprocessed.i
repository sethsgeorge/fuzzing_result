# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/nla-digbench/cohendiv-ll.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/nla-digbench/cohendiv-ll.c"





 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "cohendiv-ll.c", 8, "reach_error1"); }
 int __VERIFIER_nondet_int(void);
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) {
    if (!(cond)) {
    ERROR:
 {reach_error1();}
    }
    return;
}

int main() {
    int x, y;
    long long q, r, a, b;

    x = __VERIFIER_nondet_int();
    y = __VERIFIER_nondet_int();

    assume_abort_if_not(y >= 1);

    q = 0;
    r = x;
    a = 0;
    b = 0;

    while (1) {
 __VERIFIER_assert(b == y*a);
 __VERIFIER_assert(x == q*y + r);

 if (!(r >= y))
     break;
 a = 1;
 b = y;

 while (1) {
     __VERIFIER_assert(b == y*a);
     __VERIFIER_assert(x == q*y + r);
     __VERIFIER_assert(r >= 0);

     if (!(r >= 2 * b))
  break;

     __VERIFIER_assert(r >= 2 * y * a);

     a = 2 * a;
     b = 2 * b;
 }
 r = r - b;
 q = q + a;
    }

    __VERIFIER_assert(x == q*y + r);
    return 0;
}
