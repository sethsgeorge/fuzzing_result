# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_10-2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_10-2.c"
 int __VERIFIER_nondet_int();
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "fibo_10-2.c", 4, "reach_error1"); }


int fibo(int n) {
    if (n < 1) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibo(n-1) + fibo(n-2);
    }
}
# 25 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_10-2.c"
int main(void) {
    int x = 10;
    int result = fibo(x);
    if (result != 55) {
        ERROR: {reach_error1();abort();}
    }
    return 0;
}
