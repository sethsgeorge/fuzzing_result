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

 int __VERIFIER_nondet_int(void);
struct DItem {
    struct DItem* next;
    int value;
};
struct TLItem {
    struct TLItem* next;
    struct DItem* data;
};
int main() {
    struct TLItem* data = ((void *)0);
    struct DItem* item, * item2;
    struct TLItem *lItem;
    int c1 = 0;
    while (c1 < 5 && __VERIFIER_nondet_int()) {
        c1++;
        item = malloc(sizeof *item);
        if (!item)
            abort();
        item->next = ((void *)0);
        if(c1 < 2)
        item->value = 2;
        if(c1 < 4)
        item->value = c1 + 2;
        if(c1 < 6)
        item->value = 2 * c1 + 4;
        lItem = malloc(sizeof *lItem);
        if (data) {
            lItem->next = data->next;
            data->next = lItem;
        } else {
            lItem->next = lItem;
            data = lItem;
        }
        lItem->data = item;
        item = ((void *)0);
        lItem = ((void *)0);
    }
    if (!data)
        return 0;
    while (data->next != data) {
        item = data->data;
        item2 = data->next->data;
        lItem = data->next;
        data->next = lItem->next;
        free(lItem);
        struct DItem** dst = &data->data;
        while (item && item2) {
            if (item->value > item2->value) {
                *dst = item;
                item = item->next;
            } else {
                *dst = item2;
                item2 = item2->next;
            }
            dst = &(*dst)->next;
        }
        if (item) {
            *dst = item;
            item = ((void *)0);
        } else if (item2) {
            *dst = item2;
            item2 = ((void *)0);
        }
        dst = ((void *)0);
        data = data->next;
    }
    item = data->data;
    free(data);
    while (item) {
        item2 = item;
        item = item->next;
        if(item2->value > 1 && item2->value < 15 ) {
          free(item2);
        }
    }
    return 0;
}
