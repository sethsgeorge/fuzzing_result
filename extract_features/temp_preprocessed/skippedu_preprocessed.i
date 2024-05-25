# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/skippedu.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-tiling/skippedu.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "skippedu.c", 3, "reach_error1"); }
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

  for(i = 0; i < SIZE; i++)
  {
      a[i] = __VERIFIER_nondet_int();
  }

  if(SIZE % 2 != 0) { return 1; }

  assume_abort_if_not(SIZE % 2 == 0);
  for( i = 1; i <= SIZE/2; i++ )
  {
   if( a[2*i-2] > i )
   {
    a[2*i-2] = 2*i-2;
   }
   if( a[2*i-1] > i )
   {
    a[2*i-1] = 2*i-1;
   }
  }

  for(i = 0; i < SIZE; i++)
  {
   __VERIFIER_assert( a[i] <= i );
  }
 }
 return 1;
}
