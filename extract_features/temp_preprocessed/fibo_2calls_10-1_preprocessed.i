# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_2calls_10-1.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_2calls_10-1.c"
 int __VERIFIER_nondet_int();
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "fibo_2calls_10-1.c", 4, "reach_error1"); }

int fibo1(int n);
int fibo2(int n);

int fibo1(int n) {
    if (n < 1) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibo2(n-1) + fibo2(n-2);
    }
}

int fibo2(int n) {
    if (n < 1) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibo1(n-1) + fibo1(n-2);
    }
}
# 37 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/recursive-simple/fibo_2calls_10-1.c"
int main(void) {
    int x = 10;
    int result = fibo1(x);
    if (result != 55) {
        ERROR: {reach_error1();abort();}
    }
    return 0;
}
