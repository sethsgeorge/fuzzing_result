typedef unsigned int size_t;
 void *malloc (size_t __size)   ;
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
 int __VERIFIER_nondet_int(void);
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
struct S
{
 int t;
 int * p1;
};
struct S* a[100000];
int main()
{
 int i;
 for(i = 0; i < 100000; i = i+2)
 {
  struct S* s = (struct S*) malloc(sizeof(struct S));
  s->t = __VERIFIER_nondet_int();
  if (s->t == 10)
   s->p1 = (int *) malloc(sizeof(int));
  a[i] = s;
 }
 for(i = 0; i < 100000; i = i+2)
 {
  struct S* u = a[i];
  if (u->t == 10)
  {
   __VERIFIER_assert(u->p1 != (void *) 0);
  }
 }
}
