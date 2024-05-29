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
struct _S
{
 int n;
};
typedef struct _S S;
S a[100000];
int main()
{
 int i,x;
 int y = 100;
 for(i = 0; i < 100000; i++)
 {
  x = y;
  a[i].n = y;
  y++;
 }
 for(i = 0; i < 100000; i++)
 {
  __VERIFIER_assert(a[i].n >= 100);
 }
 return 0;
}
