# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-patterns/array9_pattern.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-patterns/array9_pattern.c"
# 26 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-patterns/array9_pattern.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "array9_pattern.c", 28, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int() ;
 short __VERIFIER_nondet_short() ;

signed long long ARR_SIZE ;

int main()
{
 ARR_SIZE = (signed long long)__VERIFIER_nondet_short() ;
 assume_abort_if_not(ARR_SIZE > 0) ;

 int array1[ARR_SIZE] ;
 int array2[ARR_SIZE] ;
 int count = 0, num = -1;
 signed long long sum = 0 ;
 int temp ;
 short index ;

 for(count=0;count<ARR_SIZE;count++)
 {
  array1[count] = 0 ;
  array2[count] = 0 ;
 }

 count = 1 ;

 while(1)
        {

  index = __VERIFIER_nondet_short() ;
  assume_abort_if_not(index>=0 && index < ARR_SIZE) ;

  array1[index] = num * (num * count) ;
  array2[index] = (index % 3 == 0) ? array2[index] : (num * count) ;


  temp = __VERIFIER_nondet_int() ;
  if(temp == 0) break ;
 }

 for(count=0;count<ARR_SIZE;count++)
 {
  sum = sum + array1[count] + array2[count];
 }

 __VERIFIER_assert(3 * sum <= ARR_SIZE+2) ;
 return 0 ;
}
