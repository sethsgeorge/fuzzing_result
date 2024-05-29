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
 int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
struct S
{
 int p;
 int n;
};
struct S a[100000];
int main()
{
 int i;
 for (i = 0; i < 100000; i++)
 {
  int q = __VERIFIER_nondet_int();
  struct S s;
	
	s.n = __VERIFIER_nondet_int();
	
  if (s.n == 0)
  {
      s.p =10 ;
  }
  else
  {
    s.p = 20;
  }
  a[i] = s;
 }
 a[3].p = 30;
 a[3].n = 40;
 for (i = 0; i < 100000; i++)
 {
  struct S s1 = a[i];
  if (i != 3 && s1.n == 0)
  {
   __VERIFIER_assert(s1.p == 10);
  }
 }
 return 0;
}
