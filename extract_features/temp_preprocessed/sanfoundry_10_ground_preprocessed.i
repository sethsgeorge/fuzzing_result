# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-examples/sanfoundry_10_ground.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/array-examples/sanfoundry_10_ground.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "sanfoundry_10_ground.c", 3, "reach_error1"); }
void __VERIFIER_assert(int cond) { if(!(cond)) { ERROR: {reach_error1();abort();} } }
 int __VERIFIER_nondet_int();






int main()
{
    int i;
    int n = 100000;
    int pos;
    int element = __VERIFIER_nondet_int();
    int found = 0;
    int vectorx[n];

  for(i = 0; i < n; i++)
  {
    vectorx[i] = __VERIFIER_nondet_int();
  }

    for (i = 0; i < n && !found; i++)
    {
        if (vectorx[i] == element)
        {
            found = 1;
            pos = i;
        }
    }
    if ( found )
    {
        for (i = pos; i < n - 1; i++)
        {
            vectorx[i] = vectorx[i + 1];
        }
    }

    if ( found ) {
      int x;
      for ( x = 0 ; x < pos ; x++ ) {
        __VERIFIER_assert( vectorx[x] != element );
      }
    }
  return 0;
}
