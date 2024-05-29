








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
float f(float x)
{
  return x - (x*x*x)/6.0f + (x*x*x*x*x)/120.0f + (x*x*x*x*x*x*x)/5040.0f;
}

float fp(float x)
{
  return 1 - (x*x)/2.0f + (x*x*x*x)/24.0f + (x*x*x*x*x*x)/720.0f;
}

int main()
{
  float IN = __VERIFIER_nondet_float();
  assume_abort_if_not(IN > -0.6f && IN < 0.6f);

  float x = IN - f(IN)/fp(IN);

  x = x - f(x)/fp(x);





  if(!(x < 0.1))
    {reach_error1();}

  return 0;
}
