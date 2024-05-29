# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-crafted/zero_sum_const5.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-crafted/zero_sum_const5.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "zero_sum_const5.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 long __VERIFIER_nondet_long(void);
void *malloc(unsigned int size);

long SIZE;

const int MAX = 100000;

int main()
{
 SIZE = __VERIFIER_nondet_long();
 if(SIZE > 1 && SIZE < MAX)
 {
  int i;
  long *a = malloc(sizeof(long)*SIZE);
  long sum=0;

  for(i = 0; i < SIZE; i++ )
  {
   a[i] = 1;
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }

  for(i = 0; i < SIZE; i++ )
  {
   sum = sum + a[i];
  }

  for(i = 0; i < SIZE; i++)
  {
   sum = sum - a[i];
  }
  __VERIFIER_assert(sum == 0);
 }
 return 1;
}
