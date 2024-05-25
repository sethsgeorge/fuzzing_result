# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/ldv-regression/test22-2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/ldv-regression/test22-2.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "test22-2.c", 3, "reach_error1"); }
 int __VERIFIER_nondet_int(void);
 _Bool __VERIFIER_nondet_bool(void);

struct dummy {
  int a, b;
};

struct dummy d1, d2;

void init()
{
  d1.a = __VERIFIER_nondet_int();
  d1.b = __VERIFIER_nondet_int();

  d2.a = __VERIFIER_nondet_int();
  d2.b = __VERIFIER_nondet_int();
}

struct dummy *get_dummy()
{
  return (__VERIFIER_nondet_bool() ? &d1 : &d2);
}

int check(struct dummy *s1, int i)
{
  return s1->a == i;
}

int main()
{
  init();
  struct dummy *pd1 = get_dummy(), *pd2 = get_dummy(), *pd3 = get_dummy();
  int i = __VERIFIER_nondet_int();
  if (pd1 != 0 && pd1 == pd2 && (*pd2).a > 0) {
    int *pa = &pd1->a;
    i = pd3->a - 10;
    while (i < *pa) {
      ++i;
    }
    if (!check(pd2, i)) {
      goto ERROR;
    }
  }

  return 0;

  ERROR: {reach_error1();abort();}
  return 1;
}
