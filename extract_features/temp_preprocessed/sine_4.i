








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
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
 float __VERIFIER_nondet_float(void);
int main()
{
  float IN = __VERIFIER_nondet_float();
  assume_abort_if_not(IN > -1.57079632679f && IN < 1.57079632679f);

  float x = IN;

  float result = x - (x*x*x)/6.0f + (x*x*x*x*x)/120.0f + (x*x*x*x*x*x*x)/5040.0f;

  if(!(result <= 1.01f && result >= -1.01f))
    {reach_error1();}

  return 0;
}
