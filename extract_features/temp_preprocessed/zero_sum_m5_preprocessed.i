# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-crafted/zero_sum_m5.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-crafted/zero_sum_m5.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "zero_sum_m5.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 short __VERIFIER_nondet_short(void);

short SIZE;

int main()
{
 SIZE = __VERIFIER_nondet_short();
 if(SIZE > 1)
 {
  int i;
  short a[SIZE];
  long long sum=0;

  for(int i = 0; i < SIZE; i++)
  {
    a[i] = __VERIFIER_nondet_short();
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum - a[i];
  }
  __VERIFIER_assert(sum == 0);
 }
 return 1;
}
