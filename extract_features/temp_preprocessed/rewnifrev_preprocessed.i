# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/rewnifrev.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/rewnifrev.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "rewnifrev.c", 3, "reach_error1"); }
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

  for( i=SIZE-1; i>=0; i-- )
  {
   if((i-1) >= 0 )
   {
    a[i-1] = i-2;
   }
   a[i] = i;
  }

  for(i = 0; i < SIZE; i++)
  {
   __VERIFIER_assert( a[i] >= i );
  }
 }
 return 1;
}
