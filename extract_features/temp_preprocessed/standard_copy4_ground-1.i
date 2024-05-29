 void abort(void);

 void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert (const char *__assertion, const char *__file, int __line)
      ;

void reach_error1() { ((void) sizeof ((0) ? 1 : 0)); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int();
int main( ) {
  int a1[100000];
  int a2[100000];
  int a3[100000];
  int a4[100000];
  int a5[100000];
  int a;
  for ( a = 0 ; a < 100000 ; a++ ) {
    a1[a] = __VERIFIER_nondet_int();
  }
  int i;
  for ( i = 0 ; i < 100000 ; i++ ) {
    a2[i] = a1[i];
  }
  for ( i = 0 ; i < 100000 ; i++ ) {
    a3[i] = a2[i];
  }
  for ( i = 0 ; i < 100000 ; i++ ) {
    a4[i] = a3[i];
  }
  for ( i = 0 ; i < 100000 ; i++ ) {
    a5[i] = a4[i];
  }
  int x;
  for ( x = 0 ; x < 100000 ; x++ ) {
    __VERIFIER_assert( a1[x] == a5[x] );
  }
  return 0;
}
