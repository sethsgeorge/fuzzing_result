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



 void *memcpy (void  __dest, const void  __src,
       size_t __n)  ;
 void *memmove (void *__dest, const void *__src, size_t __n)
      ;

 void *memccpy (void  __dest, const void  __src,
        int __c, size_t __n)
      ;

 void *memset (void *__s, int __c, size_t __n)  ;
 int memcmp (const void *__s1, const void *__s2, size_t __n)
       ;
 void *memchr (const void *__s, int __c, size_t __n)
        ;


 char *strcpy (char  __dest, const char  __src)
      ;
 char *strncpy (char  __dest,
        const char  __src, size_t __n)
      ;
 char *strcat (char  __dest, const char  __src)
      ;
 char *strncat (char  __dest, const char  __src,
        size_t __n)  ;
 int strcmp (const char *__s1, const char *__s2)
       ;
 int strncmp (const char *__s1, const char *__s2, size_t __n)
       ;
 int strcoll (const char *__s1, const char *__s2)
       ;
 size_t strxfrm (char  __dest,
         const char  __src, size_t __n)
      ;

typedef struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
} *__locale_t;
typedef __locale_t locale_t;
 int strcoll_l (const char *__s1, const char *__s2, __locale_t __l)
       ;
 size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    __locale_t __l)  ;
 char *strdup (const char *__s)
       ;
 char *strndup (const char *__string, size_t __n)
       ;

 char *strchr (const char *__s, int __c)
       ;
 char *strrchr (const char *__s, int __c)
       ;


 size_t strcspn (const char *__s, const char *__reject)
       ;
 size_t strspn (const char *__s, const char *__accept)
       ;
 char *strpbrk (const char *__s, const char *__accept)
       ;
 char *strstr (const char *__haystack, const char *__needle)
       ;
 char *strtok (char  __s, const char  __delim)
      ;

 char *__strtok_r (char  __s,
    const char  __delim,
    char * __save_ptr)
      ;
 char *strtok_r (char  __s, const char  __delim,
         char * __save_ptr)
      ;

 size_t strlen (const char *__s)
       ;

 size_t strnlen (const char *__string, size_t __maxlen)
       ;

 char *strerror (int __errnum) ;

 int strerror_r (int __errnum, char *__buf, size_t __buflen)   ;
 char *strerror_l (int __errnum, __locale_t __l) ;
 void __bzero (void *__s, size_t __n)  ;
 void bcopy (const void *__src, void *__dest, size_t __n)
      ;
 void bzero (void *__s, size_t __n)  ;
 int bcmp (const void *__s1, const void *__s2, size_t __n)
       ;
 char *index (const char *__s, int __c)
       ;
 char *rindex (const char *__s, int __c)
       ;
 int ffs (int __i)  ;
 int strcasecmp (const char *__s1, const char *__s2)
       ;
 int strncasecmp (const char *__s1, const char *__s2, size_t __n)
       ;
 char *strsep (char * __stringp,
       const char  __delim)
      ;
 char *strsignal (int __sig) ;
 char *__stpcpy (char  __dest, const char  __src)
      ;
 char *stpcpy (char  __dest, const char  __src)
      ;
 char *__stpncpy (char  __dest,
   const char  __src, size_t __n)
      ;
 char *stpncpy (char  __dest,
        const char  __src, size_t __n)
      ;

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
typedef struct identify_s {
  int id1;
  int id2;
  int id3;
  int id4;
} identify_t;
typedef unsigned int uint8;
typedef struct info_s
{
  int id;
  int is_valid;
  struct {
    int n_ids;
    identify_t identify[4];
  } identifies;
} info_t;
typedef struct data_s
{
  int length;
  char value[20];
} data_t;
typedef enum message_type_s {
  M_HELLO = 0,
  M_OPEN,
  M_CLOSE
} message_type_t;
typedef struct hello_s {
  int index;
  unsigned int operations;
  data_t data;
} hello_t;
typedef struct open_s {
  int index;
  int time;
  data_t data;
} open_t;
typedef struct close_s {
  int index;
  int is_valid;
  data_t data;
} close_t;
typedef struct message_s
{
  int id;
  message_type_t type;
  union {
    hello_t hello;
    open_t open;
    close_t close;
  } u;
} message_t;
typedef enum sys_state_s {
  AS_INVALID = 0,
  AS_NULL,
  AS_START,
  AS_IDLE,
  AS_STOP,
  AS_STATE_MAX
} sys_state_t;
typedef enum e_primitive_s {
  _EVENT_START = 0,
  _EVENT_HELLO,
  _EVENT_OPEN,
  _EVENT_CLOSE,
  _EVENT_MAX
} e_primitive_t;
typedef struct event_run_s {
  int index;
} event_run_t;
typedef struct event_start_s {
  int is_emergency;
} event_start_t;
typedef struct event_stop_s {
  int switch_off;
  int type;
} event_stop_t;
typedef struct event_s {
  e_primitive_t primitive;
  unsigned int userid;
  union {
    event_start_t start;
    event_stop_t stop;
    event_run_t run;
  } u;
} event_t;
typedef struct user_s {
  sys_state_t status;
  int user_id;
  int timeout;
  info_t *info;
  message_t message;
} user_t;
user_t *user;
int event_precess(event_t *e);
int message_send() {
  message_t* message = &user->message;
  switch (message->type) {
  case M_HELLO:
    user->info->identifies.identify[0].id1 = message->u.hello.data.value[0];
    user->info->identifies.identify[0].id2 = message->u.hello.data.value[1];
    user->info->identifies.identify[0].id3 = message->u.hello.data.value[2];
    user->info->identifies.identify[0].id4 = message->u.hello.data.value[3];
    break;
  case M_OPEN:
    user->info->identifies.identify[1].id1 = message->u.hello.data.value[0];
    user->info->identifies.identify[1].id2 = message->u.hello.data.value[1];
    user->info->identifies.identify[1].id3 = message->u.hello.data.value[2];
    user->info->identifies.identify[1].id4 = message->u.hello.data.value[3];
    break;
  case M_CLOSE:
    user->info->identifies.identify[2].id1 = message->u.hello.data.value[0];
    user->info->identifies.identify[2].id2 = message->u.hello.data.value[1];
    user->info->identifies.identify[2].id3 = message->u.hello.data.value[2];
    user->info->identifies.identify[2].id4 = message->u.hello.data.value[3];
    break;
  }
  user->timeout--;
  if (user->timeout <= 0) {
    event_t e = {0};
    e.primitive = _EVENT_CLOSE;
    return event_precess(&e);
  }
  return 0;
}
void error() {
}
int status_update(sys_state_t status) {
  if (status < AS_STATE_MAX) {
    if (user->status != status) {
      user->status = status;
      return 10;
    } else {
      return 30;
    }
  }
  return 20;
}
int system_cleanup() {
  memset(&user->message, 0, sizeof(message_t));
  return 0;
}
int system_initialize() {
  event_t e = {0};
  if (!user->info->is_valid) {
    e.primitive = _EVENT_CLOSE;
  } else {
    e.primitive = _EVENT_OPEN;
  }
  return event_precess(&e);
}
int ASNull(event_t *e) {
  e_primitive_t primitive = e->primitive;
  if (primitive == _EVENT_START) {
    status_update(AS_START);
    return system_initialize();
  } else {
    return -1;
  }
}
int ASStop(event_t *e) {
  e_primitive_t primitive = e->primitive;
  switch (primitive) {
  case _EVENT_START:
    status_update(AS_START);
    return system_initialize();
  case _EVENT_CLOSE:
    system_cleanup();
    break;
  case _EVENT_OPEN:
    status_update(AS_START);
    return event_precess(e);
  default: break;
  }
  return 0;
}
void hello_message(hello_t *message) {
  message->index = 2;
  message->operations = 2;
  message->data.length = 15;
  strncpy((char*) message->data.value, "Hello world", 15);
}
void open_message(open_t *message) {
  message->index = 3;
  message->time = 2;
  message->data.length = 15;
  strncpy((char*) message->data.value, "Open System", message->data.length);
}
void close_message(close_t *message) {
  message->index = 4;
  message->is_valid = 2;
  message->data.length = 15;
  strncpy((char*) message->data.value, "Hello world", message->data.length);
}
int ASStart(event_t *e) {
  e_primitive_t primitive = e->primitive;
  int rc = -1;
  switch (primitive) {
  case _EVENT_OPEN: {
    message_t *message = &user->message;
    message = calloc(0,sizeof(*message));
    message->id = 4;
    message->type = M_OPEN;
    open_message(&message->u.open);
    rc = message_send();
    if (rc == 0){
      status_update(AS_IDLE);
      e->primitive = _EVENT_HELLO;
    }
    rc = event_precess(e);
  }
  break;
  case _EVENT_CLOSE: {
    message_t *message = &user->message;
    message = calloc(0, sizeof(*message));
    message->id = 3;
    message->type = M_CLOSE;
    close_message(&message->u.close);
    rc = message_send();
    if (rc == 0){
      status_update(AS_STOP);
      e->primitive = _EVENT_CLOSE;
    }
    rc = event_precess(e);
  }
  break;
  default: break;
  }
  return rc;
}
int ASIdle(event_t *e) {
  e_primitive_t primitive = e->primitive;
  int rc = 0;
  switch (primitive) {
  case _EVENT_HELLO: {
    message_t *message = &user->message;
    message = calloc(0,sizeof(*message));
    message->id = 4;
    message->type = M_HELLO;
    hello_message(&message->u.hello);
    rc = message_send();
    rc = event_precess(e);
  } break;
  case _EVENT_OPEN:
    ERRORLABEL:{reach_error1();abort();}
    status_update(AS_START);
    rc = event_precess(e);
    break;
  case _EVENT_CLOSE:
    status_update(AS_STOP);
    rc = event_precess(e);
    break;
  default: break;
  }
  return rc;
}
int event_precess(event_t *e) {
  sys_state_t status = user->status;
  int rc = -1;
  if (status < AS_STATE_MAX)
    switch (status) {
    case AS_NULL:
      rc = ASNull(e);
      break;
    case AS_START:
      rc = ASStart(e);
      break;
    case AS_IDLE:
      rc = ASIdle(e);
      break;
    case AS_STOP:
      rc = ASStop(e);
      break;
    default:
      rc = -1;
      break;
    }
  return rc;
}
void user_initialize() {
  user->info = calloc(1, sizeof(info_t));
  user->message.id = 11;
  user->info->is_valid = 0;
  user->status = AS_NULL;
  user->user_id = 11;
  user->timeout = 3;
}
int main(int argc, char const *argv[])
{
  user = malloc(sizeof(user_t));
  user_initialize();
  event_t e = {0};
  e.primitive = _EVENT_START;
  event_precess(&e);
  return 0;
}
