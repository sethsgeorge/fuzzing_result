


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
 int __VERIFIER_nondet_int();

int bor (int x[100])
{
  int i;
  long long res;
  res = x[0];
  for (i = 1; i < 100; i++) {
    res = res | x[i];
  }
  return res;
}

int main ()
{
  int x[100];
  int temp;
  int ret;
  int ret2;
  int ret5;

  for (int i = 0; i < 100; i++) {
    x[i] = __VERIFIER_nondet_int();
  }

  ret = bor(x);

  temp=x[0];x[0] = x[1]; x[1] = temp;
  ret2 = bor(x);
  temp=x[0];
  for(int i =0 ; i<100 -1; i++){
     x[i] = x[i+1];
  }
  x[100 -1] = temp;
  ret5 = bor(x);

  if(ret != ret2 || ret !=ret5){
    {reach_error1();}
  }
  return 1;
}
