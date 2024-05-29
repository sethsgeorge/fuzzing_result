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
 int __VERIFIER_nondet_int();
typedef struct
{
 int n;
}S;
void init(S a[], int size)
{
 int i;
 for(i = 0; i < size; i++)
 {
  a[i].n = __VERIFIER_nondet_int();
 }
}
int main()
{
 S a[1000000];
 int i;
 int flag;
 flag = 0;
 init(a, 1000000);
 for(i = 0; i < 1000000; i++)
 {
  if(a[i].n != 0)
  {
   flag = 1;
  }
 }
 for(i = 0; i < 1000000; i++)
 {
  if (flag == 0)
  __VERIFIER_assert(a[i].n == 0 );
 }
 return 0;
}
