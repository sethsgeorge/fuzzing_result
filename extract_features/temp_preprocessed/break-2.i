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
struct S
{
 int n;
};
struct S s[1000000];
int main()
{
 int i;
 for(i = 0; i < 1000000; i++)
 {
  if(i > 1000000 / 2)
   break;
  s[i].n = 10;
 }
 for(i = 0; i < 1000000; i++)
 {
  if(i <= 1000000 /2 )
   __VERIFIER_assert(s[i].n == 10);
 }
 return 0;
}
