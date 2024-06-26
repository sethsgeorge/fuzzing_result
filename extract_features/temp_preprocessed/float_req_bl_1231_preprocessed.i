# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-newlib/float_req_bl_1231.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/float-newlib/float_req_bl_1231.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "float_req_bl_1231.c", 3, "reach_error1"); }
 float __VERIFIER_nondet_float();

typedef int __int32_t;
typedef unsigned int __uint32_t;

typedef union {
  float value;
  __uint32_t word;
} ieee_float_shape_type;

int __fpclassify_float(float x) {
  __uint32_t w;

  do {
    ieee_float_shape_type gf_u;
    gf_u.value = (x);
    (w) = gf_u.word;
  } while (0);

  if (w == 0x00000000 || w == 0x80000000)
    return 2;
  else if ((w >= 0x00800000 && w <= 0x7f7fffff) ||
           (w >= 0x80800000 && w <= 0xff7fffff))
    return 4;
  else if ((w >= 0x00000001 && w <= 0x007fffff) ||
           (w >= 0x80000001 && w <= 0x807fffff))
    return 3;
  else if (w == 0x7f800000 || w == 0xff800000)
    return 1;
  else
    return 0;
}

float fmin_float(float x, float y) {
  if (__fpclassify_float(x) == 0)
    return y;
  if (__fpclassify_float(y) == 0)
    return x;

  return x < y ? x : y;
}

int __signbit_float(float x) {
  __uint32_t w;

  do {
    ieee_float_shape_type gf_u;
    gf_u.value = (x);
    (w) = gf_u.word;
  } while (0);

  return (w & 0x80000000) != 0;
}


int isnan_float(float x) { return x != x; }

int main() {






  float x = __VERIFIER_nondet_float();
  float y = __VERIFIER_nondet_float();
  if ((isnan_float(x) && !isnan_float(y)) ||
      (!isnan_float(x) && isnan_float(y))) {

    float res = fmin_float(x, y);


    if (isnan_float(x) && !isnan_float(y) && res != y) {
      {reach_error1();}
      return 1;
    }


    if (!isnan_float(x) && isnan_float(y) && res != x) {
      {reach_error1();}
      return 1;
    }
  }

  return 0;
}
