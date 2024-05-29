







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

 unsigned short __VERIFIER_nondet_ushort(void);
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
    unsigned short x = __VERIFIER_nondet_ushort();
    unsigned short y = __VERIFIER_nondet_ushort();
    unsigned int xx;
    unsigned int yy;
    unsigned int zz;
    unsigned int z = 0;
    unsigned int i = 0;
    while (i < sizeof(x) * 8) {
        z |= ((x & (1U << i)) << i) | ((y & (1U << i)) << (i + 1));
        i += 1U;
    }
    xx = x;
    yy = y;
    xx = (xx | (xx << 8u)) & 16711935U;
    xx = (xx | (xx << 4u)) & 252645135U;
    xx = (xx | (xx << 2u)) & 858993459U;
    xx = (xx | (xx << 1u)) & 1431655765U;
    yy = (yy | (yy << 8u)) & 16711935U;
    yy = (yy | (yy << 4u)) & 252645135U;
    yy = (yy | (yy << 2u)) & 858993459U;
    yy = (yy | (yy << 1u)) & 1431655765U;

    zz = xx | (yy << 1U);

    __VERIFIER_assert(z == zz);
}
