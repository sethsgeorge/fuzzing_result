# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/ldv-regression/test10.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/ldv-regression/test10.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "test10.c", 3, "reach_error1"); }
 int __VERIFIER_nondet_int(void);


int a, b;
int *p1, *p2;
int **pp1, **pp2;

int f() {
    int v = __VERIFIER_nondet_int();
    *pp1 = *pp2;
    pp2 = pp1;
    return v;
}

int main() {

    int *px;

    p1 = &a;
    p2 = &b;

    pp1 = &p1;
    pp2 = &p2;

    b = 1;
    a = 5;

    a--;

    a = f();

    a = 0;
    b = 0;

    px = *pp2;

    a = 7;
    b = 8;

    if (*p1 != 8 || *px != 8) {
        goto ERROR;
    }

    return 0;

    ERROR: {reach_error1();abort();}
    return 1;
}
