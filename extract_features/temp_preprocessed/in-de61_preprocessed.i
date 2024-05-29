# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loops-crafted-1/in-de61.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loops-crafted-1/in-de61.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "in-de61.c", 3, "reach_error1"); }
 unsigned int __VERIFIER_nondet_uint(void);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}

int main()
{
  unsigned int n = __VERIFIER_nondet_uint();
  unsigned int x=n, y=0, z;
  while(x>0)
  {
    x--;
    y++;
  }

  z = y;
  while(z>0)
  {
    x++;
    z--;
  }

  while(y>0)
  {
    y--;
    z++;
  }

  while(x>0)
  {
    x--;
    y++;
  }

  while(z>0)
  {
    x++;
    z--;
  }

  while(y>0)
  {
    y--;
    z++;
  }

  __VERIFIER_assert(z==n);
  return 0;
}
