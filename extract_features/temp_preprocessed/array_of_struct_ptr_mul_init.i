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
struct S {
 unsigned short p;
 unsigned short q;
} a[100000];
short __VERIFIER_nondet_short();
unsigned char __VERIFIER_nondet_uchar();
int main()
{
 unsigned char k;
 int i;
 for (i = 0; i < 100000 ; i++)
 {
  a[i].p = i;
  a[i].q = i ;
 }
 for (i = 0; i < 100000; i++)
 {
  if ( __VERIFIER_nondet_short())
  {
   k = __VERIFIER_nondet_uchar();
   a[i].p = k;
   a[i].q = k * k ;
  }
 }
 for (i = 0; i < 100000; i++)
 {
  __VERIFIER_assert(a[i].p == a[i].q || a[i].q == a[i].p * a[i].p);
 }
 return 0;
}
