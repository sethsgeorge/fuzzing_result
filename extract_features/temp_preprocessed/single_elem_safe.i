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
void *malloc(unsigned int size);
struct S
{
 int *p;
 int n;
};
struct S *a[1000000];
int main()
{
 int i;
 for (i = 0; i < 1000000; i++)
 {
  int q = __VERIFIER_nondet_int();
  struct S *s = (void *)0;
  if (q == 0)
  {
   s = (struct S*) malloc(sizeof(struct S));
   s->n = q % 2;
  }
  if (s != 0)
  {
   if (s->n == 0)
   {
    s->p = (int *) malloc(sizeof(int));
   }
   else
   {
    s->p = (void *)0;
   }
  }
  a[i] = s;
 }
 a[3] = (struct S*) malloc(sizeof(struct S));
 for (i = 0; i < 1000000; i++)
 {
  struct S *s1 = a[i];
  if (i != 3 && s1 != (void *)0 && s1->n == 0)
  {
   __VERIFIER_assert(s1->p != (void *)0);
  }
 }
 return 0;
}
