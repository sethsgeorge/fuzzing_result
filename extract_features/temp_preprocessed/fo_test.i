 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *)  ;
void reach_error1() { __assert_fail("0", "fo_test.i", 3, "reach_error1"); }
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


typedef __useconds_t useconds_t;
typedef __intptr_t intptr_t;
typedef __socklen_t socklen_t;
 int access (const char *__name, int __type)  ;
 int faccessat (int __fd, const char *__file, int __type, int __flag)
       ;
 __off_t lseek (int __fd, __off_t __offset, int __whence) ;
 int close (int __fd);
 ssize_t read (int __fd, void *__buf, size_t __nbytes) ;
 ssize_t write (int __fd, const void *__buf, size_t __n) ;
 ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) ;
 ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) ;
 int pipe (int __pipedes[2])  ;
 unsigned int alarm (unsigned int __seconds) ;
 unsigned int sleep (unsigned int __seconds);
 __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     ;
 int usleep (__useconds_t __useconds);
 int pause (void);
 int chown (const char *__file, __uid_t __owner, __gid_t __group)
       ;
 int fchown (int __fd, __uid_t __owner, __gid_t __group)  ;
 int lchown (const char *__file, __uid_t __owner, __gid_t __group)
       ;
 int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
       ;
 int chdir (const char *__path)   ;
 int fchdir (int __fd)  ;
 char *getcwd (char *__buf, size_t __size)  ;
 char *getwd (char *__buf)
        ;
 int dup (int __fd)  ;
 int dup2 (int __fd, int __fd2) ;
 char **__environ;
 int execve (const char *__path, char *const __argv[],
     char *const __envp[])  ;
 int fexecve (int __fd, char *const __argv[], char *const __envp[])
      ;
 int execv (const char *__path, char *const __argv[])
      ;
 int execle (const char *__path, const char *__arg, ...)
      ;
 int execl (const char *__path, const char *__arg, ...)
      ;
 int execvp (const char *__file, char *const __argv[])
      ;
 int execlp (const char *__file, const char *__arg, ...)
      ;
 int nice (int __inc)  ;
 void _exit (int __status) ;
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
 long int pathconf (const char *__path, int __name)
      ;
 long int fpathconf (int __fd, int __name) ;
 long int sysconf (int __name) ;
 size_t confstr (int __name, char *__buf, size_t __len) ;
 __pid_t getpid (void) ;
 __pid_t getppid (void) ;
 __pid_t getpgrp (void) ;
 __pid_t __getpgid (__pid_t __pid) ;
 __pid_t getpgid (__pid_t __pid) ;
 int setpgid (__pid_t __pid, __pid_t __pgid) ;
 int setpgrp (void) ;
 __pid_t setsid (void) ;
 __pid_t getsid (__pid_t __pid) ;
 __uid_t getuid (void) ;
 __uid_t geteuid (void) ;
 __gid_t getgid (void) ;
 __gid_t getegid (void) ;
 int getgroups (int __size, __gid_t __list[])  ;
 int setuid (__uid_t __uid)  ;
 int setreuid (__uid_t __ruid, __uid_t __euid)  ;
 int seteuid (__uid_t __uid)  ;
 int setgid (__gid_t __gid)  ;
 int setregid (__gid_t __rgid, __gid_t __egid)  ;
 int setegid (__gid_t __gid)  ;
 __pid_t fork (void) ;
 __pid_t vfork (void) ;
 char *ttyname (int __fd) ;
 int ttyname_r (int __fd, char *__buf, size_t __buflen)
       ;
 int isatty (int __fd) ;
 int ttyslot (void) ;
 int link (const char *__from, const char *__to)
       ;
 int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
       ;
 int symlink (const char *__from, const char *__to)
       ;
 ssize_t readlink (const char  __path,
    char  __buf, size_t __len)
       ;
 int symlinkat (const char *__from, int __tofd,
        const char *__to)   ;
 ssize_t readlinkat (int __fd, const char  __path,
      char  __buf, size_t __len)
       ;
 int unlink (const char *__name)  ;
 int unlinkat (int __fd, const char *__name, int __flag)
      ;
 int rmdir (const char *__path)  ;
 __pid_t tcgetpgrp (int __fd) ;
 int tcsetpgrp (int __fd, __pid_t __pgrp_id) ;
 char *getlogin (void);
 int getlogin_r (char *__name, size_t __name_len) ;
 int setlogin (const char *__name)  ;

 char *optarg;
 int optind;
 int opterr;
 int optopt;
 int getopt (int ___argc, char *const *___argv, const char *__shortopts)
        ;



 int gethostname (char *__name, size_t __len)  ;
 int sethostname (const char *__name, size_t __len)
       ;
 int sethostid (long int __id)  ;
 int getdomainname (char *__name, size_t __len)
       ;
 int setdomainname (const char *__name, size_t __len)
       ;
 int vhangup (void) ;
 int revoke (const char *__file)   ;
 int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
      ;
 int acct (const char *__name) ;
 char *getusershell (void) ;
 void endusershell (void) ;
 void setusershell (void) ;
 int daemon (int __nochdir, int __noclose)  ;
 int chroot (const char *__path)   ;
 char *getpass (const char *__prompt) ;
 int fsync (int __fd);
 long int gethostid (void);
 void sync (void) ;
 int getpagesize (void)  ;
 int getdtablesize (void) ;
 int truncate (const char *__file, __off_t __length)
       ;
 int ftruncate (int __fd, __off_t __length)  ;
 int brk (void *__addr)  ;
 void *sbrk (intptr_t __delta) ;
 long int syscall (long int __sysno, ...) ;
 int lockf (int __fd, int __cmd, __off_t __len) ;
 int fdatasync (int __fildes);
int getentropy (void *__buffer, size_t __length) ;

void __blast_assert()
{
 ERROR: {reach_error1();abort();}
}
 int __VERIFIER_nondet_int(void);
int open(char const *__file, int __oflag, ...)
{
    return __VERIFIER_nondet_int();
}
int globalState = 0;
ssize_t l_read(int,char*,size_t);
int l_open(char*,int);
int
main(int argc, char* argv[]) {
 int file = l_open("unknown",00);
 void* cbuf = (void*) malloc(sizeof(char)*100);
 int a = l_read(file,cbuf,99);
 return 0;
}
ssize_t l_read(int fd, char* cbuf, size_t count) {
 ((globalState == 1) ? (0) : __blast_assert ());
 return read(fd,cbuf,count);
}
int l_open(char* file, int flags) {
 int fd = open(file,flags);
 if(fd>0) globalState = 1;
 return fd;
}
