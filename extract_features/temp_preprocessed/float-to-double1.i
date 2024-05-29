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



















typedef long double float_t;

typedef long double double_t;


 double acos (double __x) ;  double __acos (double __x) ;

 double asin (double __x) ;  double __asin (double __x) ;

 double atan (double __x) ;  double __atan (double __x) ;

 double atan2 (double __y, double __x) ;  double __atan2 (double __y, double __x) ;


 double cos (double __x) ;  double __cos (double __x) ;

 double sin (double __x) ;  double __sin (double __x) ;

 double tan (double __x) ;  double __tan (double __x) ;




 double cosh (double __x) ;  double __cosh (double __x) ;

 double sinh (double __x) ;  double __sinh (double __x) ;

 double tanh (double __x) ;  double __tanh (double __x) ;



 double acosh (double __x) ;  double __acosh (double __x) ;

 double asinh (double __x) ;  double __asinh (double __x) ;

 double atanh (double __x) ;  double __atanh (double __x) ;







 double exp (double __x) ;  double __exp (double __x) ;


 double frexp (double __x, int *__exponent) ;  double __frexp (double __x, int *__exponent) ;


 double ldexp (double __x, int __exponent) ;  double __ldexp (double __x, int __exponent) ;


 double log (double __x) ;  double __log (double __x) ;


 double log10 (double __x) ;  double __log10 (double __x) ;


 double modf (double __x, double *__iptr) ;  double __modf (double __x, double *__iptr)  ;



 double expm1 (double __x) ;  double __expm1 (double __x) ;


 double log1p (double __x) ;  double __log1p (double __x) ;


 double logb (double __x) ;  double __logb (double __x) ;






 double exp2 (double __x) ;  double __exp2 (double __x) ;


 double log2 (double __x) ;  double __log2 (double __x) ;








 double pow (double __x, double __y) ;  double __pow (double __x, double __y) ;


 double sqrt (double __x) ;  double __sqrt (double __x) ;





 double hypot (double __x, double __y) ;  double __hypot (double __x, double __y) ;






 double cbrt (double __x) ;  double __cbrt (double __x) ;








 double ceil (double __x)  ;  double __ceil (double __x)  ;


 double fabs (double __x)  ;  double __fabs (double __x)  ;


 double floor (double __x)  ;  double __floor (double __x)  ;


 double fmod (double __x, double __y) ;  double __fmod (double __x, double __y) ;




 int __isinf (double __value)  ;


 int __finite (double __value)  ;





 int isinf (double __value)  ;


 int finite (double __value)  ;


 double drem (double __x, double __y) ;  double __drem (double __x, double __y) ;



 double significand (double __x) ;  double __significand (double __x) ;





 double copysign (double __x, double __y)  ;  double __copysign (double __x, double __y)  ;






 double nan (const char *__tagb)  ;  double __nan (const char *__tagb)  ;





 int __isnan (double __value)  ;



 int isnan (double __value)  ;


 double j0 (double) ;  double __j0 (double) ;
 double j1 (double) ;  double __j1 (double) ;
 double jn (int, double) ;  double __jn (int, double) ;
 double y0 (double) ;  double __y0 (double) ;
 double y1 (double) ;  double __y1 (double) ;
 double yn (int, double) ;  double __yn (int, double) ;






 double erf (double) ;  double __erf (double) ;
 double erfc (double) ;  double __erfc (double) ;
 double lgamma (double) ;  double __lgamma (double) ;






 double tgamma (double) ;  double __tgamma (double) ;





 double gamma (double) ;  double __gamma (double) ;






 double lgamma_r (double, int *__signgamp) ;  double __lgamma_r (double, int *__signgamp) ;







 double rint (double __x) ;  double __rint (double __x) ;


 double nextafter (double __x, double __y)  ;  double __nextafter (double __x, double __y)  ;

 double nexttoward (double __x, long double __y)  ;  double __nexttoward (double __x, long double __y)  ;



 double remainder (double __x, double __y) ;  double __remainder (double __x, double __y) ;



 double scalbn (double __x, int __n) ;  double __scalbn (double __x, int __n) ;



 int ilogb (double __x) ;  int __ilogb (double __x) ;




 double scalbln (double __x, long int __n) ;  double __scalbln (double __x, long int __n) ;



 double nearbyint (double __x) ;  double __nearbyint (double __x) ;



 double round (double __x)  ;  double __round (double __x)  ;



 double trunc (double __x)  ;  double __trunc (double __x)  ;




 double remquo (double __x, double __y, int *__quo) ;  double __remquo (double __x, double __y, int *__quo) ;






 long int lrint (double __x) ;  long int __lrint (double __x) ;

 long long int llrint (double __x) ;  long long int __llrint (double __x) ;



 long int lround (double __x) ;  long int __lround (double __x) ;

 long long int llround (double __x) ;  long long int __llround (double __x) ;



 double fdim (double __x, double __y) ;  double __fdim (double __x, double __y) ;


 double fmax (double __x, double __y)  ;  double __fmax (double __x, double __y)  ;


 double fmin (double __x, double __y)  ;  double __fmin (double __x, double __y)  ;



 int __fpclassify (double __value) 
     ;


 int __signbit (double __value) 
     ;



 double fma (double __x, double __y, double __z) ;  double __fma (double __x, double __y, double __z) ;




 double scalb (double __x, double __n) ;  double __scalb (double __x, double __n) ;


 float acosf (float __x) ;  float __acosf (float __x) ;

 float asinf (float __x) ;  float __asinf (float __x) ;

 float atanf (float __x) ;  float __atanf (float __x) ;

 float atan2f (float __y, float __x) ;  float __atan2f (float __y, float __x) ;


 float cosf (float __x) ;  float __cosf (float __x) ;

 float sinf (float __x) ;  float __sinf (float __x) ;

 float tanf (float __x) ;  float __tanf (float __x) ;




 float coshf (float __x) ;  float __coshf (float __x) ;

 float sinhf (float __x) ;  float __sinhf (float __x) ;

 float tanhf (float __x) ;  float __tanhf (float __x) ;



 float acoshf (float __x) ;  float __acoshf (float __x) ;

 float asinhf (float __x) ;  float __asinhf (float __x) ;

 float atanhf (float __x) ;  float __atanhf (float __x) ;







 float expf (float __x) ;  float __expf (float __x) ;


 float frexpf (float __x, int *__exponent) ;  float __frexpf (float __x, int *__exponent) ;


 float ldexpf (float __x, int __exponent) ;  float __ldexpf (float __x, int __exponent) ;


 float logf (float __x) ;  float __logf (float __x) ;


 float log10f (float __x) ;  float __log10f (float __x) ;


 float modff (float __x, float *__iptr) ;  float __modff (float __x, float *__iptr)  ;



 float expm1f (float __x) ;  float __expm1f (float __x) ;


 float log1pf (float __x) ;  float __log1pf (float __x) ;


 float logbf (float __x) ;  float __logbf (float __x) ;






 float exp2f (float __x) ;  float __exp2f (float __x) ;


 float log2f (float __x) ;  float __log2f (float __x) ;








 float powf (float __x, float __y) ;  float __powf (float __x, float __y) ;


 float sqrtf (float __x) ;  float __sqrtf (float __x) ;





 float hypotf (float __x, float __y) ;  float __hypotf (float __x, float __y) ;






 float cbrtf (float __x) ;  float __cbrtf (float __x) ;








 float ceilf (float __x)  ;  float __ceilf (float __x)  ;


 float fabsf (float __x)  ;  float __fabsf (float __x)  ;


 float floorf (float __x)  ;  float __floorf (float __x)  ;


 float fmodf (float __x, float __y) ;  float __fmodf (float __x, float __y) ;




 int __isinff (float __value)  ;


 int __finitef (float __value)  ;





 int isinff (float __value)  ;


 int finitef (float __value)  ;


 float dremf (float __x, float __y) ;  float __dremf (float __x, float __y) ;



 float significandf (float __x) ;  float __significandf (float __x) ;





 float copysignf (float __x, float __y)  ;  float __copysignf (float __x, float __y)  ;






 float nanf (const char *__tagb)  ;  float __nanf (const char *__tagb)  ;





 int __isnanf (float __value)  ;



 int isnanf (float __value)  ;


 float j0f (float) ;  float __j0f (float) ;
 float j1f (float) ;  float __j1f (float) ;
 float jnf (int, float) ;  float __jnf (int, float) ;
 float y0f (float) ;  float __y0f (float) ;
 float y1f (float) ;  float __y1f (float) ;
 float ynf (int, float) ;  float __ynf (int, float) ;






 float erff (float) ;  float __erff (float) ;
 float erfcf (float) ;  float __erfcf (float) ;
 float lgammaf (float) ;  float __lgammaf (float) ;






 float tgammaf (float) ;  float __tgammaf (float) ;





 float gammaf (float) ;  float __gammaf (float) ;






 float lgammaf_r (float, int *__signgamp) ;  float __lgammaf_r (float, int *__signgamp) ;







 float rintf (float __x) ;  float __rintf (float __x) ;


 float nextafterf (float __x, float __y)  ;  float __nextafterf (float __x, float __y)  ;

 float nexttowardf (float __x, long double __y)  ;  float __nexttowardf (float __x, long double __y)  ;



 float remainderf (float __x, float __y) ;  float __remainderf (float __x, float __y) ;



 float scalbnf (float __x, int __n) ;  float __scalbnf (float __x, int __n) ;



 int ilogbf (float __x) ;  int __ilogbf (float __x) ;




 float scalblnf (float __x, long int __n) ;  float __scalblnf (float __x, long int __n) ;



 float nearbyintf (float __x) ;  float __nearbyintf (float __x) ;



 float roundf (float __x)  ;  float __roundf (float __x)  ;



 float truncf (float __x)  ;  float __truncf (float __x)  ;




 float remquof (float __x, float __y, int *__quo) ;  float __remquof (float __x, float __y, int *__quo) ;






 long int lrintf (float __x) ;  long int __lrintf (float __x) ;

 long long int llrintf (float __x) ;  long long int __llrintf (float __x) ;



 long int lroundf (float __x) ;  long int __lroundf (float __x) ;

 long long int llroundf (float __x) ;  long long int __llroundf (float __x) ;



 float fdimf (float __x, float __y) ;  float __fdimf (float __x, float __y) ;


 float fmaxf (float __x, float __y)  ;  float __fmaxf (float __x, float __y)  ;


 float fminf (float __x, float __y)  ;  float __fminf (float __x, float __y)  ;



 int __fpclassifyf (float __value) 
     ;


 int __signbitf (float __value) 
     ;



 float fmaf (float __x, float __y, float __z) ;  float __fmaf (float __x, float __y, float __z) ;




 float scalbf (float __x, float __n) ;  float __scalbf (float __x, float __n) ;


 long double acosl (long double __x) ;  long double __acosl (long double __x) ;

 long double asinl (long double __x) ;  long double __asinl (long double __x) ;

 long double atanl (long double __x) ;  long double __atanl (long double __x) ;

 long double atan2l (long double __y, long double __x) ;  long double __atan2l (long double __y, long double __x) ;


 long double cosl (long double __x) ;  long double __cosl (long double __x) ;

 long double sinl (long double __x) ;  long double __sinl (long double __x) ;

 long double tanl (long double __x) ;  long double __tanl (long double __x) ;




 long double coshl (long double __x) ;  long double __coshl (long double __x) ;

 long double sinhl (long double __x) ;  long double __sinhl (long double __x) ;

 long double tanhl (long double __x) ;  long double __tanhl (long double __x) ;



 long double acoshl (long double __x) ;  long double __acoshl (long double __x) ;

 long double asinhl (long double __x) ;  long double __asinhl (long double __x) ;

 long double atanhl (long double __x) ;  long double __atanhl (long double __x) ;







 long double expl (long double __x) ;  long double __expl (long double __x) ;


 long double frexpl (long double __x, int *__exponent) ;  long double __frexpl (long double __x, int *__exponent) ;


 long double ldexpl (long double __x, int __exponent) ;  long double __ldexpl (long double __x, int __exponent) ;


 long double logl (long double __x) ;  long double __logl (long double __x) ;


 long double log10l (long double __x) ;  long double __log10l (long double __x) ;


 long double modfl (long double __x, long double *__iptr) ;  long double __modfl (long double __x, long double *__iptr)  ;



 long double expm1l (long double __x) ;  long double __expm1l (long double __x) ;


 long double log1pl (long double __x) ;  long double __log1pl (long double __x) ;


 long double logbl (long double __x) ;  long double __logbl (long double __x) ;






 long double exp2l (long double __x) ;  long double __exp2l (long double __x) ;


 long double log2l (long double __x) ;  long double __log2l (long double __x) ;








 long double powl (long double __x, long double __y) ;  long double __powl (long double __x, long double __y) ;


 long double sqrtl (long double __x) ;  long double __sqrtl (long double __x) ;





 long double hypotl (long double __x, long double __y) ;  long double __hypotl (long double __x, long double __y) ;






 long double cbrtl (long double __x) ;  long double __cbrtl (long double __x) ;








 long double ceill (long double __x)  ;  long double __ceill (long double __x)  ;


 long double fabsl (long double __x)  ;  long double __fabsl (long double __x)  ;


 long double floorl (long double __x)  ;  long double __floorl (long double __x)  ;


 long double fmodl (long double __x, long double __y) ;  long double __fmodl (long double __x, long double __y) ;




 int __isinfl (long double __value)  ;


 int __finitel (long double __value)  ;





 int isinfl (long double __value)  ;


 int finitel (long double __value)  ;


 long double dreml (long double __x, long double __y) ;  long double __dreml (long double __x, long double __y) ;



 long double significandl (long double __x) ;  long double __significandl (long double __x) ;





 long double copysignl (long double __x, long double __y)  ;  long double __copysignl (long double __x, long double __y)  ;






 long double nanl (const char *__tagb)  ;  long double __nanl (const char *__tagb)  ;





 int __isnanl (long double __value)  ;



 int isnanl (long double __value)  ;


 long double j0l (long double) ;  long double __j0l (long double) ;
 long double j1l (long double) ;  long double __j1l (long double) ;
 long double jnl (int, long double) ;  long double __jnl (int, long double) ;
 long double y0l (long double) ;  long double __y0l (long double) ;
 long double y1l (long double) ;  long double __y1l (long double) ;
 long double ynl (int, long double) ;  long double __ynl (int, long double) ;






 long double erfl (long double) ;  long double __erfl (long double) ;
 long double erfcl (long double) ;  long double __erfcl (long double) ;
 long double lgammal (long double) ;  long double __lgammal (long double) ;






 long double tgammal (long double) ;  long double __tgammal (long double) ;





 long double gammal (long double) ;  long double __gammal (long double) ;






 long double lgammal_r (long double, int *__signgamp) ;  long double __lgammal_r (long double, int *__signgamp) ;







 long double rintl (long double __x) ;  long double __rintl (long double __x) ;


 long double nextafterl (long double __x, long double __y)  ;  long double __nextafterl (long double __x, long double __y)  ;

 long double nexttowardl (long double __x, long double __y)  ;  long double __nexttowardl (long double __x, long double __y)  ;



 long double remainderl (long double __x, long double __y) ;  long double __remainderl (long double __x, long double __y) ;



 long double scalbnl (long double __x, int __n) ;  long double __scalbnl (long double __x, int __n) ;



 int ilogbl (long double __x) ;  int __ilogbl (long double __x) ;




 long double scalblnl (long double __x, long int __n) ;  long double __scalblnl (long double __x, long int __n) ;



 long double nearbyintl (long double __x) ;  long double __nearbyintl (long double __x) ;



 long double roundl (long double __x)  ;  long double __roundl (long double __x)  ;



 long double truncl (long double __x)  ;  long double __truncl (long double __x)  ;




 long double remquol (long double __x, long double __y, int *__quo) ;  long double __remquol (long double __x, long double __y, int *__quo) ;






 long int lrintl (long double __x) ;  long int __lrintl (long double __x) ;

 long long int llrintl (long double __x) ;  long long int __llrintl (long double __x) ;



 long int lroundl (long double __x) ;  long int __lroundl (long double __x) ;

 long long int llroundl (long double __x) ;  long long int __llroundl (long double __x) ;



 long double fdiml (long double __x, long double __y) ;  long double __fdiml (long double __x, long double __y) ;


 long double fmaxl (long double __x, long double __y)  ;  long double __fmaxl (long double __x, long double __y)  ;


 long double fminl (long double __x, long double __y)  ;  long double __fminl (long double __x, long double __y)  ;



 int __fpclassifyl (long double __value) 
     ;


 int __signbitl (long double __value) 
     ;



 long double fmal (long double __x, long double __y, long double __z) ;  long double __fmal (long double __x, long double __y, long double __z) ;




 long double scalbl (long double __x, long double __n) ;  long double __scalbl (long double __x, long double __n) ;
 int signgam;
enum
  {
    FP_NAN =

      0,
    FP_INFINITE =

      1,
    FP_ZERO =

      2,
    FP_SUBNORMAL =

      3,
    FP_NORMAL =

      4
  };
typedef enum
{
  _IEEE_ = -1,
  _SVID_,
  _XOPEN_,
  _POSIX_,
  _ISOC_
} _LIB_VERSION_TYPE;




 _LIB_VERSION_TYPE _LIB_VERSION;
struct exception

  {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
  };




 int matherr (struct exception *__exc);







float __VERIFIER_nondet_float();

int main()
{
  float f=__VERIFIER_nondet_float();

  double d = (double)f;
  float ff = (float)d;

  if(!((f == ff) || ((sizeof (f) == sizeof (float) ? __isnanf (f) : sizeof (f) == sizeof (double) ? __isnan (f) : __isnanl (f)) && (sizeof (ff) == sizeof (float) ? __isnanf (ff) : sizeof (ff) == sizeof (double) ? __isnan (ff) : __isnanl (ff))))) {reach_error1();abort();}
}
