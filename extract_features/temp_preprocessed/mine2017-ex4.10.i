
 void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert (const char *__assertion, const char *__file, int __line)
      ;

 void abort(void);
void reach_error1() { ((void) sizeof ((0) ? 1 : 0)); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
int main() {
  int v = 1;
  while (v <= 50) {
    __VERIFIER_assert(1 <= v);
    v += 2;
    __VERIFIER_assert(v <= 52);
  }
  __VERIFIER_assert(51 <= v);
  __VERIFIER_assert(v <= 52);
  return 0;
}
