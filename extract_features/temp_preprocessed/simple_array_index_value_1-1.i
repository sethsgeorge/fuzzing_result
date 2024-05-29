





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
void __VERIFIER_assert(int cond)
{
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}

int main()
{
  unsigned int array[1000];
  unsigned int index;

  for (index = 0; index < 1000; index++) {
    array[index] = (index % 2);
  }

  for (index = 0; index < 1000; index++) {
    if (index % 2 == 0) {
      __VERIFIER_assert(array[index] == 0);
    } else {
      __VERIFIER_assert(array[index] != 0);
    }
  }

}
