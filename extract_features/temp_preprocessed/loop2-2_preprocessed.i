# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-floats-scientific-comp/loop2-2.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loop-floats-scientific-comp/loop2-2.c"




 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "loop2-2.c", 7, "reach_error1"); }
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }

float pi = 3.14159 ;
 float __VERIFIER_nondet_float() ;
 int __VERIFIER_nondet_int() ;

int main()
{
 float x = __VERIFIER_nondet_float() ;
 float octant = pi/3 ;
 assume_abort_if_not(x > octant && x < pi) ;
 float oddExp = x ;
 float evenExp = 1.0 ;
 float term = x ;
 unsigned int count = 2 ;
 int multFactor = 0 ;
 int temp ;

 while(1)
 {
  term = term * (x/count) ;
  multFactor = (count>>1 % 2 == 0) ? 1 : -1 ;

  evenExp = evenExp + multFactor*term ;

  count++ ;

  term = term * (x/count) ;

  oddExp = oddExp + multFactor*term ;

  count++ ;

  temp = __VERIFIER_nondet_int() ;
  if(temp == 0) break ;
 }

 __VERIFIER_assert( oddExp >= evenExp ) ;
 return 0 ;
}
