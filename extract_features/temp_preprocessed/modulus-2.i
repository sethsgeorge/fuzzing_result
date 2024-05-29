







 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
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

 unsigned int __VERIFIER_nondet_uint(void);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
    ERROR: {reach_error1();abort();}
  }
  return;
}

 void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line,
      const char *__function)
      ;
 void __assert (const char *__assertion, const char *__file, int __line)
      ;

int main()
{
    unsigned int n = __VERIFIER_nondet_uint();
    unsigned int s = __VERIFIER_nondet_uint();
    unsigned int d;
    unsigned int m;
    assume_abort_if_not(s < 31);
    d = (1 << s) - 1;
    if (d > 0) {
        m = n;
        while (n > d) {
            m = 0;
            while (n > 0) {
                m += n & d;
                n = n >> s;
            }
            n = m;
        }
        if (m == d) {
            m = 0;
        }
        __VERIFIER_assert(m == n % d);
    }
    return 0;
}
