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
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
 typedef int __intptr_t;
 typedef unsigned int __socklen_t;
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
union wait
  {
    int w_status;
    struct
      {
 unsigned int __w_termsig:7;
 unsigned int __w_coredump:1;
 unsigned int __w_retcode:8;
 unsigned int:16;
      } __wait_terminated;
    struct
      {
 unsigned int __w_stopval:8;
 unsigned int __w_stopsig:8;
 unsigned int:16;
      } __wait_stopped;
  };
typedef union
  {
    union wait *__uptr;
    int *__iptr;
  } __WAIT_STATUS ;

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



typedef __time_t time_t;


typedef __clockid_t clockid_t;
typedef __timer_t timer_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef int int8_t ;
typedef int int16_t ;
typedef int int32_t ;
typedef int int64_t ;
typedef unsigned int u_int8_t ;
typedef unsigned int u_int16_t ;
typedef unsigned int u_int32_t ;
typedef unsigned int u_int64_t ;
typedef int register_t ;
typedef int __sig_atomic_t;
typedef struct
  {
    unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
  } __sigset_t;
typedef __sigset_t sigset_t;
struct timespec
  {
    __time_t tv_sec;
    __syscall_slong_t tv_nsec;
  };
struct timeval
  {
    __time_t tv_sec;
    __suseconds_t tv_usec;
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



 unsigned int gnu_dev_major (unsigned long long int __dev)
      ;

 unsigned int gnu_dev_minor (unsigned long long int __dev)
      ;

 unsigned long long int gnu_dev_makedev (unsigned int __major,
            unsigned int __minor)
      ;

typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef unsigned long int pthread_t;
union pthread_attr_t
{
  char __size[36];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
    int __kind;
    unsigned int __nusers;
     union
    {
      struct
      {
 short __espins;
 short __elision;
      } __elision_data;
      __pthread_slist_t __list;
    };
  } __data;
  char __size[24];
  long int __align;
} pthread_mutex_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
     unsigned long long int __total_seq;
     unsigned long long int __wakeup_seq;
     unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
   long long int __align;
} pthread_cond_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
typedef union
{
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    unsigned char __flags;
    unsigned char __shared;
    signed char __rwelision;
    unsigned char __pad2;
    int __writer;
  } __data;
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

 void cfree (void *__ptr) ;

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

typedef struct node {
  int data;
  struct node* next;
} *SLL;
void myexit(int s) {
 _EXIT: goto _EXIT;
}
SLL node_create(int data) {
  SLL temp = (SLL) malloc(sizeof(struct node));
  if(((void *)0) == temp) {
    myexit(1);
  }
  temp->next = ((void *)0);
  temp->data = data;
  return temp;
}
SLL sll_create(int len, int data) {
  SLL head = ((void *)0);
  for(; len > 0; len--) {
    SLL new_head = node_create(data);
    new_head->next = head;
    head = new_head;
  }
  return head;
}
void sll_destroy(SLL head) {
  while(head) {
    SLL temp = head->next;
    free(head);
    head = temp;
  }
}
int sll_get_data_at(SLL head, int index) {
  while(index > 0) {
    head = head->next;
    index--;
  }
  return head->data;
}
void sll_update_at(SLL head, int data, int index) {
  while(index > 0) {
    head = head->next;
    index--;
  }
  head->data = data;
}
int main() {
  const int len = 2;
  const int data = 1;
  SLL s = sll_create(len, data);
  int i;
  for(i = len - 1; i >= 0; i--) {
    int new_data = i + len;
    sll_update_at(s, new_data, i);
  }
  for(i = len - 1; i >= 0; i--) {
    int expected = i + len;
    if(expected != sll_get_data_at(s, i)) {
      goto ERROR;
    }
  }
  sll_destroy(s);
  return 0;
 ERROR: {reach_error1();abort();}
  return 1;
}
