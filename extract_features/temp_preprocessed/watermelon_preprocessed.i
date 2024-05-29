# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loops-crafted-1/watermelon.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/loops-crafted-1/watermelon.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "watermelon.c", 3, "reach_error1"); }
 unsigned int __VERIFIER_nondet_uint(void);
void __VERIFIER_assert(int cond) {
  if (!(cond)) {
      ERROR: {reach_error1();abort();}
  }
  return;
}

int true = 1;
int false = 0;

int correct_version(int w)
{
  int is_divisible = true;

  if(w < 4)
    is_divisible = false;
  else
  {
    int i;
    for(i = 0; i < w; i += 2)
    {}

    if(i != w)
      is_divisible = false;
  }

  return is_divisible;
}

int student_version(int w)
{
  int is_divisible = true;

  if(w < 4)
    is_divisible = false;
  else
  {
    int i;
    for(i = 0; i < w; i += 2)
    {}

    if(i != w)
      is_divisible = false;
  }

  return is_divisible;
}

int main(){

  unsigned int w=__VERIFIER_nondet_uint();

  int is_divisible1 = true, is_divisible2 = true;

  if(w > 0 && w < 10000000)
  {
    is_divisible1 = correct_version(w);
    is_divisible2 = student_version(w);
    __VERIFIER_assert(is_divisible1 == is_divisible2);
  }
  return 0;

}
