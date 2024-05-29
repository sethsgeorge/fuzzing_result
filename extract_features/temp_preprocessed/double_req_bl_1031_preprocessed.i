# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-newlib/double_req_bl_1031.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-newlib/double_req_bl_1031.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "double_req_bl_1031.c", 3, "reach_error1"); }

typedef int __int32_t;
typedef unsigned int __uint32_t;

typedef union {
  double value;
  struct {
    __uint32_t lsw;
    __uint32_t msw;
  } parts;
} ieee_double_shape_type;


int isnan_double(double x) { return x != x; }

double round_double(double x) {
  __int32_t msw, exponent_less_1023;
  __uint32_t lsw;
  do {
    ieee_double_shape_type ew_u;
    ew_u.value = (x);
    (msw) = ew_u.parts.msw;
    (lsw) = ew_u.parts.lsw;
  } while (0);
  exponent_less_1023 = ((msw & 0x7ff00000) >> 20) - 1023;
  if (exponent_less_1023 < 20) {
    if (exponent_less_1023 < 0) {
      msw &= 0x80000000;
      if (exponent_less_1023 == -1)
        msw |= (1023 << 20);
      lsw = 0;
    } else {
      __uint32_t exponent_mask = 0x000fffff >> exponent_less_1023;
      if ((msw & exponent_mask) == 0 && lsw == 0)
        return x;
      msw += 0x00080000 >> exponent_less_1023;
      msw &= ~exponent_mask;
      lsw = 0;
    }
  } else if (exponent_less_1023 > 51) {
    if (exponent_less_1023 == 1024)
      return x + x;
    else
      return x;
  } else {
    __uint32_t exponent_mask = 0xffffffff >> (exponent_less_1023 - 20);
    __uint32_t tmp;
    if ((lsw & exponent_mask) == 0)
      return x;
    tmp = lsw + (1 << (51 - exponent_less_1023));
    if (tmp < lsw)
      msw += 1;
    lsw = tmp;
    lsw &= ~exponent_mask;
  }
  do {
    ieee_double_shape_type iw_u;
    iw_u.parts.msw = (msw);
    iw_u.parts.lsw = (lsw);
    (x) = iw_u.value;
  } while (0);
  return x;
}

int main() {







  double x = 0.0 / 0.0;
  double res = round_double(x);


  if (!isnan_double(res)) {
    {reach_error1();}
    return 1;
  }

  return 0;
}
