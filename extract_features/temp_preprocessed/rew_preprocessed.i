# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/rew.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/rew.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "rew.c", 3, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int(void);
void *malloc(unsigned int size);

int SIZE;

const int MAX = 100000;

int main()
{
 SIZE = __VERIFIER_nondet_int();
 if(SIZE > 1 && SIZE < MAX)
 {
  int i;
  int *a = malloc(sizeof(int)*SIZE);
  int val2 = 3;
  int val1 = 0;
  int low=2;

  for(i = 0; i < SIZE; i++)
  {
   if(i+1 < SIZE)
   {
    a[i+1] = val1;
   }
   a[i] = val2;
  }

  for(i = 0; i < SIZE; i++)
  {
   __VERIFIER_assert(a[i] >= low);
  }
 }
 return 1;
}
