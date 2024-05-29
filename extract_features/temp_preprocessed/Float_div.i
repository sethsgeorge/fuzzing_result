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
void __VERIFIER_assert(int cond) { if (!(cond)) { ERROR: {reach_error1();abort();} } return; }




int main()
{
  float x = 1.0f;
  float x1 = x/2.5f;

  while(x1 != x)
  {
    x = x1;
    x1 = x/2.5f;
  }

  __VERIFIER_assert(x == 0);
  return 0;
}
