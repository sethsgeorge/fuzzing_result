 int __VERIFIER_nondet_int(void);
 unsigned long __VERIFIER_nondet_ulong(void);
 unsigned char __VERIFIER_nondet_uchar(void);
 void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
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
typedef unsigned int size_t;
typedef long int wchar_t;

typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
 typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
 size_t __ctype_get_mb_cur_max (void)  ;
 double atof (const char *__nptr)
        ;
 int atoi (const char *__nptr)
        ;
 long int atol (const char *__nptr)
        ;
  long long int atoll (const char *__nptr)
        ;
 double strtod (const char  __nptr,
        char * __endptr)
      ;
 float strtof (const char  __nptr,
       char * __endptr)  ;
 long double strtold (const char  __nptr,
       char * __endptr)
      ;
 long int strtol (const char  __nptr,
   char * __endptr, int __base)
      ;
 unsigned long int strtoul (const char  __nptr,
      char * __endptr, int __base)
      ;

 long long int strtoq (const char  __nptr,
        char * __endptr, int __base)
      ;

 unsigned long long int strtouq (const char  __nptr,
           char * __endptr, int __base)
      ;

 long long int strtoll (const char  __nptr,
         char * __endptr, int __base)
      ;

 unsigned long long int strtoull (const char  __nptr,
     char * __endptr, int __base)
      ;
 char *l64a (long int __n)  ;
 long int a64l (const char *__s)
        ;

typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
 typedef signed long long int __int64_t;
 typedef unsigned long long int __uint64_t;
 typedef long long int __quad_t;
 typedef unsigned long long int __u_quad_t;
 typedef long long int __intmax_t;
 typedef unsigned long long int __uintmax_t;
 typedef __u_quad_t __dev_t;
 typedef unsigned int __uid_t;
 typedef unsigned int __gid_t;
 typedef unsigned long int __ino_t;
 typedef __u_quad_t __ino64_t;
 typedef unsigned int __mode_t;
 typedef unsigned int __nlink_t;
 typedef long int __off_t;
 typedef __quad_t __off64_t;
 typedef int __pid_t;
 typedef struct { int __val[2]; } __fsid_t;
 typedef long int __clock_t;
 typedef unsigned long int __rlim_t;
 typedef __u_quad_t __rlim64_t;
 typedef unsigned int __id_t;
 typedef long int __time_t;
 typedef unsigned int __useconds_t;
 typedef long int __suseconds_t;
 typedef int __daddr_t;
 typedef int __key_t;
 typedef int __clockid_t;
 typedef void * __timer_t;
 typedef long int __blksize_t;
 typedef long int __blkcnt_t;
 typedef __quad_t __blkcnt64_t;
 typedef unsigned long int __fsblkcnt_t;
 typedef __u_quad_t __fsblkcnt64_t;
 typedef unsigned long int __fsfilcnt_t;
 typedef __u_quad_t __fsfilcnt64_t;
 typedef int __fsword_t;
 typedef int __ssize_t;
 typedef long int __syscall_slong_t;
 typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
 typedef int __intptr_t;
 typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef unsigned int u_int8_t ;
typedef unsigned int u_int16_t ;
typedef unsigned int u_int32_t ;
typedef unsigned int u_int64_t ;
typedef int register_t ;
static  unsigned int
__bswap_32 (unsigned int __bsx)
{
  return __builtin_bswap32 (__bsx);
}
static  __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
static  __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static  __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static  __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef __suseconds_t suseconds_t;
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;

 int select (int __nfds, fd_set  __readfds,
     fd_set  __writefds,
     fd_set  __exceptfds,
     struct timeval  __timeout);
 int pselect (int __nfds, fd_set  __readfds,
      fd_set  __writefds,
      fd_set  __exceptfds,
      const struct timespec  __timeout,
      const __sigset_t  __sigmask);


 unsigned int gnu_dev_major (__dev_t __dev)  ;
 unsigned int gnu_dev_minor (__dev_t __dev)  ;
 __dev_t gnu_dev_makedev (unsigned int __major, unsigned int __minor)  ;

typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  unsigned char __flags;
  unsigned char __shared;
  signed char __rwelision;
  unsigned char __pad2;
  int __cur_writer;
};
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock ;
  unsigned int __count;
  int __owner;
  int __kind;
 
  unsigned int __nusers;
   union
  {
    struct { short __espins; short __eelision; } __elision_data;
    __pthread_slist_t __list;
  };
 
};
struct __pthread_cond_s
{
   union
  {
     unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
   union
  {
     unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[36];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
   long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[32];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[20];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;

 long int random (void) ;
 void srandom (unsigned int __seed) ;
 char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen)  ;
 char *setstate (char *__statebuf)  ;
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
 int random_r (struct random_data  __buf,
       int32_t  __result)  ;
 int srandom_r (unsigned int __seed, struct random_data *__buf)
      ;
 int initstate_r (unsigned int __seed, char  __statebuf,
   size_t __statelen,
   struct random_data  __buf)
      ;
 int setstate_r (char  __statebuf,
         struct random_data  __buf)
      ;
 int rand (void) ;
 void srand (unsigned int __seed) ;
 int rand_r (unsigned int *__seed) ;
 double drand48 (void) ;
 double erand48 (unsigned short int __xsubi[3])  ;
 long int lrand48 (void) ;
 long int nrand48 (unsigned short int __xsubi[3])
      ;
 long int mrand48 (void) ;
 long int jrand48 (unsigned short int __xsubi[3])
      ;
 void srand48 (long int __seedval) ;
 unsigned short int *seed48 (unsigned short int __seed16v[3])
      ;
 void lcong48 (unsigned short int __param[7])  ;
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
     unsigned long long int __a;
  };
 int drand48_r (struct drand48_data  __buffer,
        double  __result)  ;
 int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data  __buffer,
        double  __result)  ;
 int lrand48_r (struct drand48_data  __buffer,
        long int  __result)
      ;
 int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data  __buffer,
        long int  __result)
      ;
 int mrand48_r (struct drand48_data  __buffer,
        long int  __result)
      ;
 int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data  __buffer,
        long int  __result)
      ;
 int srand48_r (long int __seedval, struct drand48_data *__buffer)
      ;
 int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer)  ;
 int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
      ;
 void *malloc (size_t __size)   ;
 void *calloc (size_t __nmemb, size_t __size)
       ;
 void *realloc (void *__ptr, size_t __size)
      ;
 void free (void *__ptr) ;

 void *alloca (size_t __size) ;

 void *valloc (size_t __size)   ;
 int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
       ;
 void *aligned_alloc (size_t __alignment, size_t __size)
        ;
 void abort (void)  ;
 int atexit (void (*__func) (void))  ;
 int at_quick_exit (void (*__func) (void))  ;
 int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
      ;
 void exit (int __status)  ;
 void quick_exit (int __status)  ;
 void _Exit (int __status)  ;
 char *getenv (const char *__name)   ;
 int putenv (char *__string)  ;
 int setenv (const char *__name, const char *__value, int __replace)
      ;
 int unsetenv (const char *__name)  ;
 int clearenv (void) ;
 char *mktemp (char *__template)  ;
 int mkstemp (char *__template)  ;
 int mkstemps (char *__template, int __suffixlen)  ;
 char *mkdtemp (char *__template)   ;
 int system (const char *__command) ;
 char *realpath (const char  __name,
         char  __resolved)  ;
typedef int (*__compar_fn_t) (const void *, const void *);
 void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
      ;
 void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) ;
 int abs (int __x)   ;
 long int labs (long int __x)   ;
  long long int llabs (long long int __x)
       ;
 div_t div (int __numer, int __denom)
       ;
 ldiv_t ldiv (long int __numer, long int __denom)
       ;
  lldiv_t lldiv (long long int __numer,
        long long int __denom)
       ;
 char *ecvt (double __value, int __ndigit, int  __decpt,
     int  __sign)   ;
 char *fcvt (double __value, int __ndigit, int  __decpt,
     int  __sign)   ;
 char *gcvt (double __value, int __ndigit, char *__buf)
       ;
 char *qecvt (long double __value, int __ndigit,
      int  __decpt, int  __sign)
       ;
 char *qfcvt (long double __value, int __ndigit,
      int  __decpt, int  __sign)
       ;
 char *qgcvt (long double __value, int __ndigit, char *__buf)
       ;
 int ecvt_r (double __value, int __ndigit, int  __decpt,
     int  __sign, char  __buf,
     size_t __len)  ;
 int fcvt_r (double __value, int __ndigit, int  __decpt,
     int  __sign, char  __buf,
     size_t __len)  ;
 int qecvt_r (long double __value, int __ndigit,
      int  __decpt, int  __sign,
      char  __buf, size_t __len)
      ;
 int qfcvt_r (long double __value, int __ndigit,
      int  __decpt, int  __sign,
      char  __buf, size_t __len)
      ;
 int mblen (const char *__s, size_t __n) ;
 int mbtowc (wchar_t  __pwc,
     const char  __s, size_t __n) ;
 int wctomb (char *__s, wchar_t __wchar) ;
 size_t mbstowcs (wchar_t  __pwcs,
   const char  __s, size_t __n) ;
 size_t wcstombs (char  __s,
   const wchar_t  __pwcs, size_t __n)
     ;
 int rpmatch (const char *__response)   ;
 int getsubopt (char * __optionp,
        char *const  __tokens,
        char * __valuep)
       ;
 int getloadavg (double __loadavg[], int __nelem)
      ;


 void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
      ;
 void __assert (const char *__assertion, const char *__file, int __line)
      ;

void __VERIFIER_assert(int cond) {
    if (!(cond)) {
          ERROR: {reach_error1();abort();}
                   }
      return;
}
unsigned char __CS_round = 0;
unsigned char __CS_ret = 0;
const unsigned char __CS_ret_PREEMPTED = 0x01;
const unsigned char __CS_ret_ERROR = 0x02;
const unsigned char __CS_ret_FINISHED = 0x04;
unsigned char __CS_error = 0;
unsigned char __CS_thread_index;
unsigned char __CS_thread_allocated[2 +1];
unsigned char __CS_thread_born_round[2 +1];
void *(*__CS_thread[2 +1])(void *);
unsigned char __CS_thread_status[6][2 +1];
const unsigned char __THREAD_UNUSED = 0x00;
const unsigned char __THREAD_RUNNING = 0x01;
const unsigned char __THREAD_FINISHED = 0x02;
unsigned char *__CS_thread_lockedon[6][2 +1];
int __VERIFIER_nondet_int();
void __CS_cs(void)
{
 unsigned char k = __VERIFIER_nondet_uchar();
 assume_abort_if_not(__CS_round+k < 6);
 __CS_round += k;
 __CS_ret = (__VERIFIER_nondet_int() && __CS_round == 6 -1)?__CS_ret_PREEMPTED:__CS_ret;
}
int __CS_pthread_mutex_init(unsigned char *mutex, void *attr)
{
 return 0;
}
int __CS_pthread_mutex_destroy(unsigned char *lock)
{
 if (*lock != __CS_thread_index && *lock != 0) {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
 }
 else *lock = 0;
 return 0;
}
int __CS_pthread_mutex_lock(unsigned char *lock)
{
 if (*lock == 0) *lock = (__CS_thread_index+1);
  else { __CS_ret = __CS_ret_PREEMPTED; return 1; }
 return 0;
}
int __CS_pthread_mutex_unlock(unsigned char *lock)
{
 if (*lock != (__CS_thread_index+1)) {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
  return 1;
 } else *lock = 0;
 return 0;
}
int __CS_pthread_cond_init(unsigned char *cond, void *attr)
{
 return 0;
}
int __CS_pthread_cond_signal(unsigned char *cond)
{
 int j;
 for (j=0; j<=2; j++)
  if (__CS_thread_lockedon[__CS_round][j] == cond)
   __CS_thread_lockedon[__CS_round][j] = 0;
 return 0;
}
int __CS_pthread_cond_broadcast(unsigned char *cond)
{
 int j;
 for (j=0; j<=2; j++)
  if (__CS_thread_lockedon[__CS_round][j] == cond)
   __CS_thread_lockedon[__CS_round][j] = 0;
 return 0;
}
int __CS_pthread_cond_wait(unsigned char *cond, unsigned char *lock)
{
 if (*lock != (__CS_thread_index+1)) {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
  return 1;
 }
 else *lock = 0;
 __CS_thread_lockedon[__CS_round][__CS_thread_index] = cond;
 __CS_ret = __CS_ret_PREEMPTED;
 if (*lock == 0) *lock = __CS_thread_index+1;
 else { __CS_ret = __CS_ret_PREEMPTED; return 1; }
 return 0;
}
void __CS_assert(int expr)
{
 if (!expr) {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
 }
}
void __CS_assume(int expr)
{
 if (!expr) __CS_ret = __CS_ret_PREEMPTED;
}
int __CS_pthread_join(unsigned char thread, void **value_ptr)
{
 if (thread != 123 && thread > 2 +1)
 {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
  return 0;
 }
 if ( thread == 123 || __CS_thread_status[__CS_round][thread] == __THREAD_RUNNING )
 {
  __CS_ret = __CS_ret_PREEMPTED;
  return 0;
 }
 if (__CS_thread_status[__CS_round][thread] == __THREAD_UNUSED)
 {
  __CS_error = 1;
  __CS_ret = __CS_ret_ERROR;
  return 0;
 }
 assume_abort_if_not( __CS_thread_status[__CS_round][thread] == __THREAD_FINISHED );
 return 0;
}
int __CS_pthread_create(unsigned char *id1, void *attr, void *(*t1)(void*), void *arg)
{
 if (__CS_thread_index == 2) {
  *id1 = 123;
  return -1;
 }
 __CS_thread_index++;
 __CS_thread_allocated[__CS_thread_index] = 1;
 __CS_thread_born_round[__CS_thread_index] = __CS_round;
 __CS_thread[__CS_thread_index] = t1;
 __CS_thread_status[__CS_round][__CS_thread_index] = __THREAD_RUNNING;
 *id1 = __CS_thread_index;
 return __CS_thread_index;
}
int i[6] = {1};
int j[6] = {1};
union __CS__u {
 int i[6];
 int j[6];
};
union __CS__u __CS_u;
void *t1(void *arg)
{
 int k = 0;
 __CS_cs(); if (__CS_ret != 0) return 0;
 for (k = 0; k < 5; k++)
 {
  __CS_cs(); if (__CS_ret != 0) return 0;
 __CS_u.i[__CS_round] = i[__CS_round];
 i[__CS_round] += j[__CS_round];
 if (__CS_ret) i[__CS_round]= __CS_u.i[__CS_round];
 }
 __CS_cs(); if (__CS_ret != 0) return 0;
 ;
 __CS_cs(); if (__CS_ret != 0) return 0;
}
void *t2(void *arg)
{
 int k = 0;
 __CS_cs(); if (__CS_ret != 0) return 0;
 for (k = 0; k < 5; k++)
 {
  __CS_cs(); if (__CS_ret != 0) return 0;
 __CS_u.j[__CS_round] = j[__CS_round];
 j[__CS_round] += i[__CS_round];
 if (__CS_ret) j[__CS_round]= __CS_u.j[__CS_round];
 }
 __CS_cs(); if (__CS_ret != 0) return 0;
 ;
 __CS_cs(); if (__CS_ret != 0) return 0;
}
void *main_thread(void *arg)
{
 int __CS_main_arg_argc = __VERIFIER_nondet_int();
 char **argv;
 unsigned char id1 = __VERIFIER_nondet_uchar();
 unsigned char id2 = __VERIFIER_nondet_uchar();
 __CS_cs(); if (__CS_ret != 0) return 0;
 __CS_pthread_create(&id1, 0, t1, 0);
 __CS_cs(); if (__CS_ret != 0) return 0;
 __CS_pthread_create(&id2, 0, t2, 0);
 __CS_cs(); if (__CS_ret != 0) return 0;
 if ((i[__CS_round] > 144) || (j[__CS_round] > 144))
 {
  __CS_cs(); if (__CS_ret != 0) return 0;
  goto __CS_ERROR;
  __CS_cs(); if (__CS_ret != 0) return 0;
  __CS_ERROR: __CS_error = 1; __CS_ret = __CS_ret_ERROR; return 0;
  __CS_cs(); if (__CS_ret != 0) return 0;
  ;
  __CS_cs(); if (__CS_ret != 0) return 0;
 }
 __CS_cs(); if (__CS_ret != 0) return 0;
 }
int main(int argc, char **argv)
{
 unsigned char __CS_cp___CS_thread_status[6][2 +1];
 unsigned char *__CS_cp___CS_thread_lockedon[6][2 +1];
 int __CS_cp_i[6];
 int __CS_cp_j[6];
 int k, l;
 for(k = 0; k < 6; k++) {
   __CS_cp_i[k] = __VERIFIER_nondet_int();
   __CS_cp_j[k] = __VERIFIER_nondet_int();
   for(l = 0; l < 3; l++) {
     __CS_cp___CS_thread_status[k][l] = __VERIFIER_nondet_uchar();
     __CS_cp___CS_thread_lockedon[k][l] = (unsigned char *) (void *)__VERIFIER_nondet_ulong();
   }
 }
 __CS_thread_status[1][0] = __CS_cp___CS_thread_status[1][0];
 __CS_thread_status[2][0] = __CS_cp___CS_thread_status[2][0];
 __CS_thread_status[3][0] = __CS_cp___CS_thread_status[3][0];
 __CS_thread_status[4][0] = __CS_cp___CS_thread_status[4][0];
 __CS_thread_status[5][0] = __CS_cp___CS_thread_status[5][0];
 __CS_thread_status[1][1] = __CS_cp___CS_thread_status[1][1];
 __CS_thread_status[2][1] = __CS_cp___CS_thread_status[2][1];
 __CS_thread_status[3][1] = __CS_cp___CS_thread_status[3][1];
 __CS_thread_status[4][1] = __CS_cp___CS_thread_status[4][1];
 __CS_thread_status[5][1] = __CS_cp___CS_thread_status[5][1];
 __CS_thread_status[1][2] = __CS_cp___CS_thread_status[1][2];
 __CS_thread_status[2][2] = __CS_cp___CS_thread_status[2][2];
 __CS_thread_status[3][2] = __CS_cp___CS_thread_status[3][2];
 __CS_thread_status[4][2] = __CS_cp___CS_thread_status[4][2];
 __CS_thread_status[5][2] = __CS_cp___CS_thread_status[5][2];
 __CS_thread_lockedon[1][0] = __CS_cp___CS_thread_lockedon[1][0];
 __CS_thread_lockedon[2][0] = __CS_cp___CS_thread_lockedon[2][0];
 __CS_thread_lockedon[3][0] = __CS_cp___CS_thread_lockedon[3][0];
 __CS_thread_lockedon[4][0] = __CS_cp___CS_thread_lockedon[4][0];
 __CS_thread_lockedon[5][0] = __CS_cp___CS_thread_lockedon[5][0];
 __CS_thread_lockedon[1][1] = __CS_cp___CS_thread_lockedon[1][1];
 __CS_thread_lockedon[2][1] = __CS_cp___CS_thread_lockedon[2][1];
 __CS_thread_lockedon[3][1] = __CS_cp___CS_thread_lockedon[3][1];
 __CS_thread_lockedon[4][1] = __CS_cp___CS_thread_lockedon[4][1];
 __CS_thread_lockedon[5][1] = __CS_cp___CS_thread_lockedon[5][1];
 __CS_thread_lockedon[1][2] = __CS_cp___CS_thread_lockedon[1][2];
 __CS_thread_lockedon[2][2] = __CS_cp___CS_thread_lockedon[2][2];
 __CS_thread_lockedon[3][2] = __CS_cp___CS_thread_lockedon[3][2];
 __CS_thread_lockedon[4][2] = __CS_cp___CS_thread_lockedon[4][2];
 __CS_thread_lockedon[5][2] = __CS_cp___CS_thread_lockedon[5][2];
 i[1] = __CS_cp_i[1];
 i[2] = __CS_cp_i[2];
 i[3] = __CS_cp_i[3];
 i[4] = __CS_cp_i[4];
 i[5] = __CS_cp_i[5];
 j[1] = __CS_cp_j[1];
 j[2] = __CS_cp_j[2];
 j[3] = __CS_cp_j[3];
 j[4] = __CS_cp_j[4];
 j[5] = __CS_cp_j[5];
 __CS_round = 0;
 __CS_thread_index = 0;
 __CS_thread_born_round[0] = __CS_round;
 __CS_thread_status[0][0] = __THREAD_RUNNING;
 __CS_thread[0] = main_thread;
 __CS_thread_allocated[0] = 1;
 if (__CS_thread_allocated[0] == 1) {
  __CS_round = __CS_thread_born_round[0];
  __CS_ret = 0;
  __CS_thread[0](0);
  if (__CS_ret!=__CS_ret_PREEMPTED) __CS_thread_status[__CS_round][0] = __THREAD_FINISHED;
 }
 if (__CS_thread_allocated[1] == 1) {
  __CS_round = __CS_thread_born_round[1];
  __CS_ret = 0;
  __CS_thread[1](0);
  if (__CS_ret!=__CS_ret_PREEMPTED) __CS_thread_status[__CS_round][1] = __THREAD_FINISHED;
 }
 if (__CS_thread_allocated[2] == 1) {
  __CS_round = __CS_thread_born_round[2];
  __CS_ret = 0;
  __CS_thread[2](0);
  if (__CS_ret!=__CS_ret_PREEMPTED) __CS_thread_status[__CS_round][2] = __THREAD_FINISHED;
 }
 assume_abort_if_not(__CS_thread_status[0][0] == __CS_cp___CS_thread_status[1][0]);
 assume_abort_if_not(__CS_thread_status[1][0] == __CS_cp___CS_thread_status[2][0]);
 assume_abort_if_not(__CS_thread_status[2][0] == __CS_cp___CS_thread_status[3][0]);
 assume_abort_if_not(__CS_thread_status[3][0] == __CS_cp___CS_thread_status[4][0]);
 assume_abort_if_not(__CS_thread_status[4][0] == __CS_cp___CS_thread_status[5][0]);
 assume_abort_if_not(__CS_thread_status[0][1] == __CS_cp___CS_thread_status[1][1]);
 assume_abort_if_not(__CS_thread_status[1][1] == __CS_cp___CS_thread_status[2][1]);
 assume_abort_if_not(__CS_thread_status[2][1] == __CS_cp___CS_thread_status[3][1]);
 assume_abort_if_not(__CS_thread_status[3][1] == __CS_cp___CS_thread_status[4][1]);
 assume_abort_if_not(__CS_thread_status[4][1] == __CS_cp___CS_thread_status[5][1]);
 assume_abort_if_not(__CS_thread_status[0][2] == __CS_cp___CS_thread_status[1][2]);
 assume_abort_if_not(__CS_thread_status[1][2] == __CS_cp___CS_thread_status[2][2]);
 assume_abort_if_not(__CS_thread_status[2][2] == __CS_cp___CS_thread_status[3][2]);
 assume_abort_if_not(__CS_thread_status[3][2] == __CS_cp___CS_thread_status[4][2]);
 assume_abort_if_not(__CS_thread_status[4][2] == __CS_cp___CS_thread_status[5][2]);
 assume_abort_if_not(__CS_thread_lockedon[0][0] == __CS_cp___CS_thread_lockedon[1][0]);
 assume_abort_if_not(__CS_thread_lockedon[1][0] == __CS_cp___CS_thread_lockedon[2][0]);
 assume_abort_if_not(__CS_thread_lockedon[2][0] == __CS_cp___CS_thread_lockedon[3][0]);
 assume_abort_if_not(__CS_thread_lockedon[3][0] == __CS_cp___CS_thread_lockedon[4][0]);
 assume_abort_if_not(__CS_thread_lockedon[4][0] == __CS_cp___CS_thread_lockedon[5][0]);
 assume_abort_if_not(__CS_thread_lockedon[0][1] == __CS_cp___CS_thread_lockedon[1][1]);
 assume_abort_if_not(__CS_thread_lockedon[1][1] == __CS_cp___CS_thread_lockedon[2][1]);
 assume_abort_if_not(__CS_thread_lockedon[2][1] == __CS_cp___CS_thread_lockedon[3][1]);
 assume_abort_if_not(__CS_thread_lockedon[3][1] == __CS_cp___CS_thread_lockedon[4][1]);
 assume_abort_if_not(__CS_thread_lockedon[4][1] == __CS_cp___CS_thread_lockedon[5][1]);
 assume_abort_if_not(__CS_thread_lockedon[0][2] == __CS_cp___CS_thread_lockedon[1][2]);
 assume_abort_if_not(__CS_thread_lockedon[1][2] == __CS_cp___CS_thread_lockedon[2][2]);
 assume_abort_if_not(__CS_thread_lockedon[2][2] == __CS_cp___CS_thread_lockedon[3][2]);
 assume_abort_if_not(__CS_thread_lockedon[3][2] == __CS_cp___CS_thread_lockedon[4][2]);
 assume_abort_if_not(__CS_thread_lockedon[4][2] == __CS_cp___CS_thread_lockedon[5][2]);
 assume_abort_if_not(i[0] == __CS_cp_i[1]);
 assume_abort_if_not(i[1] == __CS_cp_i[2]);
 assume_abort_if_not(i[2] == __CS_cp_i[3]);
 assume_abort_if_not(i[3] == __CS_cp_i[4]);
 assume_abort_if_not(i[4] == __CS_cp_i[5]);
 assume_abort_if_not(j[0] == __CS_cp_j[1]);
 assume_abort_if_not(j[1] == __CS_cp_j[2]);
 assume_abort_if_not(j[2] == __CS_cp_j[3]);
 assume_abort_if_not(j[3] == __CS_cp_j[4]);
 assume_abort_if_not(j[4] == __CS_cp_j[5]);
 __VERIFIER_assert(__CS_error != 1);
}
