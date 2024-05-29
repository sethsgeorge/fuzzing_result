# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/email_spec0_product05.cil.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/email_spec0_product05.cil.c"
# 9 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/email_spec0_product05.cil.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "email_spec0_product05.cil.c", 3, "reach_error1"); }

 int __VERIFIER_nondet_int(void);



struct JoinPoint {
   void **(*fp)(struct JoinPoint * ) ;
   void **args ;
   int argsCount ;
   char const **argsType ;
   void *(*arg)(int , struct JoinPoint * ) ;
   char const *(*argType)(int , struct JoinPoint * ) ;
   void **retValue ;
   char const *retType ;
   char const *funcName ;
   char const *targetName ;
   char const *fileName ;
   char const *kind ;
   void *excep_return ;
};
struct __UTAC__CFLOW_FUNC {
   int (*func)(int , int ) ;
   int val ;
   struct __UTAC__CFLOW_FUNC *next ;
};
struct __UTAC__EXCEPTION {
   void *jumpbuf ;
   unsigned long long prtValue ;
   int pops ;
   struct __UTAC__CFLOW_FUNC *cflowfuncs ;
};
typedef unsigned int size_t;
struct __ACC__ERR {
   void *v ;
   struct __ACC__ERR *next ;
};
#pragma merger(0,"Test.i","")
 int printf(char const  __format , ...) ;
 int puts(char const *__s ) ;
void setClientForwardReceiver(int handle , int value ) ;
void setClientId(int handle , int value ) ;
int __SELECTED_FEATURE_Base ;
int __SELECTED_FEATURE_Keys ;
int __SELECTED_FEATURE_Encrypt ;
int __SELECTED_FEATURE_AutoResponder ;
int __SELECTED_FEATURE_AddressBook ;
int __SELECTED_FEATURE_Sign ;
int __SELECTED_FEATURE_Forward ;
int __SELECTED_FEATURE_Verify ;
int __SELECTED_FEATURE_Decrypt ;
int __GUIDSL_ROOT_PRODUCTION ;
int __GUIDSL_NON_TERMINAL_main ;
void select_features(void) ;
void select_helpers(void) ;
int valid_product(void) ;
int is_queue_empty(void) ;
int get_queued_client(void) ;
int get_queued_email(void) ;
void outgoing(int client , int msg ) ;
void sendEmail(int sender , int receiver ) ;
int bob ;
int rjh ;
int chuck ;
void setup_bob(int bob___0 ) ;
void setup_rjh(int rjh___0 ) ;
void setup_chuck(int chuck___0 ) ;
void bobToRjh(void) ;
void rjhToBob(void) ;
void test(void) ;
void setup(void) ;
int main(void) ;
void rjhEnableForwarding(void) ;
void setup_bob(int bob___0 )
{

  {
  {
  setClientId(bob___0, bob___0);
  }
  return;
}
}
void setup_rjh(int rjh___0 )
{

  {
  {
  setClientId(rjh___0, rjh___0);
  }
  return;
}
}
void setup_chuck(int chuck___0 )
{

  {
  {
  setClientId(chuck___0, chuck___0);
  }
  return;
}
}
void bobToRjh(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;

  {
  {
  puts("Please enter a subject and a message body.\n");
  sendEmail(bob, rjh);
  tmp___1 = is_queue_empty();
  }
  if (tmp___1) {

  } else {
    {
    tmp = get_queued_email();
    tmp___0 = get_queued_client();
    outgoing(tmp___0, tmp);
    }
  }
  return;
}
}
void rjhToBob(void)
{

  {
  {
  puts("Please enter a subject and a message body.\n");
  sendEmail(rjh, bob);
  }
  return;
}
}
void setup(void)
{ char const  __cil_tmp1 ;
  char const  __cil_tmp2 ;
  char const  __cil_tmp3 ;

  {
  {
  bob = 1;
  setup_bob(bob);
  __cil_tmp1 = (char const  )"bob: %d\n";
  printf(__cil_tmp1, bob);
  rjh = 2;
  setup_rjh(rjh);
  __cil_tmp2 = (char const  )"rjh: %d\n";
  printf(__cil_tmp2, rjh);
  chuck = 3;
  setup_chuck(chuck);
  __cil_tmp3 = (char const  )"chuck: %d\n";
  printf(__cil_tmp3, chuck);
  }
  return;
}
}
int main(void)
{ int retValue_acc = __VERIFIER_nondet_int();
  int tmp ;

  {
  {
  select_helpers();
  select_features();
  tmp = valid_product();
  }
  if (tmp) {
    {
    setup();
    test();
    }
  } else {

  }
  return (retValue_acc);
}
}
void rjhEnableForwarding(void)
{

  {
  {
  setClientForwardReceiver(rjh, chuck);
  }
  return;
}
}
#pragma merger(0,"wsllib_check.i","")
void __automaton_fail(void)
{

  {
  ERROR: {reach_error1();abort();}
  return;
}
}
#pragma merger(0,"scenario.i","")
void test(void)
{ int op1 ;
  int op2 ;
  int op3 ;
  int op4 ;
  int op5 ;
  int op6 ;
  int op7 ;
  int op8 ;
  int op9 ;
  int op10 ;
  int op11 ;
  int splverifierCounter ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;

  {
  op1 = 0;
  op2 = 0;
  op3 = 0;
  op4 = 0;
  op5 = 0;
  op6 = 0;
  op7 = 0;
  op8 = 0;
  op9 = 0;
  op10 = 0;
  op11 = 0;
  splverifierCounter = 0;
  {
  while (1) {
    while_0_continue: ;
    if (splverifierCounter < 4) {

    } else {
      goto while_0_break;
    }
    splverifierCounter = splverifierCounter + 1;
    if (! op1) {
      {
      tmp___9 = __VERIFIER_nondet_int();
      }
      if (tmp___9) {
        op1 = 1;
      } else {
        goto _L___8;
      }
    } else {
      _L___8:
      if (! op2) {
        {
        tmp___8 = __VERIFIER_nondet_int();
        }
        if (tmp___8) {
          op2 = 1;
        } else {
          goto _L___7;
        }
      } else {
        _L___7:
        if (! op3) {
          {
          tmp___7 = __VERIFIER_nondet_int();
          }
          if (tmp___7) {
            op3 = 1;
          } else {
            goto _L___6;
          }
        } else {
          _L___6:
          if (! op4) {
            {
            tmp___6 = __VERIFIER_nondet_int();
            }
            if (tmp___6) {
              op4 = 1;
            } else {
              goto _L___5;
            }
          } else {
            _L___5:
            if (! op5) {
              {
              tmp___5 = __VERIFIER_nondet_int();
              }
              if (tmp___5) {
                op5 = 1;
              } else {
                goto _L___4;
              }
            } else {
              _L___4:
              if (! op6) {
                {
                tmp___4 = __VERIFIER_nondet_int();
                }
                if (tmp___4) {
                  {
                  rjhEnableForwarding();
                  op6 = 1;
                  }
                } else {
                  goto _L___3;
                }
              } else {
                _L___3:
                if (! op7) {
                  {
                  tmp___3 = __VERIFIER_nondet_int();
                  }
                  if (tmp___3) {
                    op7 = 1;
                  } else {
                    goto _L___2;
                  }
                } else {
                  _L___2:
                  if (! op8) {
                    {
                    tmp___2 = __VERIFIER_nondet_int();
                    }
                    if (tmp___2) {
                      op8 = 1;
                    } else {
                      goto _L___1;
                    }
                  } else {
                    _L___1:
                    if (! op9) {
                      {
                      tmp___1 = __VERIFIER_nondet_int();
                      }
                      if (tmp___1) {
                        op9 = 1;
                      } else {
                        goto _L___0;
                      }
                    } else {
                      _L___0:
                      if (! op10) {
                        {
                        tmp___0 = __VERIFIER_nondet_int();
                        }
                        if (tmp___0) {
                          op10 = 1;
                        } else {
                          goto _L;
                        }
                      } else {
                        _L:
                        if (! op11) {
                          {
                          tmp = __VERIFIER_nondet_int();
                          }
                          if (tmp) {
                            op11 = 1;
                          } else {
                            goto while_0_break;
                          }
                        } else {
                          goto while_0_break;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  while_0_break: ;
  }
  {
  bobToRjh();
  }
  return;
}
}
#pragma merger(0,"EmailLib.i","")
int initEmail(void) ;
int getEmailId(int handle ) ;
void setEmailId(int handle , int value ) ;
int getEmailFrom(int handle ) ;
void setEmailFrom(int handle , int value ) ;
int getEmailTo(int handle ) ;
void setEmailTo(int handle , int value ) ;
char *getEmailSubject(int handle ) ;
void setEmailSubject(int handle , char *value ) ;
char *getEmailBody(int handle ) ;
void setEmailBody(int handle , char *value ) ;
int isEncrypted(int handle ) ;
void setEmailIsEncrypted(int handle , int value ) ;
int getEmailEncryptionKey(int handle ) ;
void setEmailEncryptionKey(int handle , int value ) ;
int isSigned(int handle ) ;
void setEmailIsSigned(int handle , int value ) ;
int getEmailSignKey(int handle ) ;
void setEmailSignKey(int handle , int value ) ;
int isVerified(int handle ) ;
void setEmailIsSignatureVerified(int handle , int value ) ;
int __ste_Email_counter = 0;
int initEmail(void)
{ int retValue_acc ;

  {
  if (__ste_Email_counter < 2) {
    __ste_Email_counter = __ste_Email_counter + 1;
    retValue_acc = __ste_Email_counter;
    return (retValue_acc);
  } else {
    retValue_acc = -1;
    return (retValue_acc);
  }
  return (retValue_acc);
}
}
int __ste_email_id0 = 0;
int __ste_email_id1 = 0;
int getEmailId(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_id0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_id1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailId(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_id0 = value;
  } else {
    if (handle == 2) {
      __ste_email_id1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_from0 = 0;
int __ste_email_from1 = 0;
int getEmailFrom(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_from0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_from1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailFrom(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_from0 = value;
  } else {
    if (handle == 2) {
      __ste_email_from1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_to0 = 0;
int __ste_email_to1 = 0;
int getEmailTo(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_to0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_to1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailTo(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_to0 = value;
  } else {
    if (handle == 2) {
      __ste_email_to1 = value;
    } else {

    }
  }
  return;
}
}
char *__ste_email_subject0 ;
char *__ste_email_subject1 ;
char *getEmailSubject(int handle )
{ char *retValue_acc ;
  void *__cil_tmp3 ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_subject0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_subject1;
      return (retValue_acc);
    } else {
      __cil_tmp3 = (void *)0;
      retValue_acc = (char *)__cil_tmp3;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailSubject(int handle , char *value )
{

  {
  if (handle == 1) {
    __ste_email_subject0 = value;
  } else {
    if (handle == 2) {
      __ste_email_subject1 = value;
    } else {

    }
  }
  return;
}
}
char *__ste_email_body0 = (char *)0;
char *__ste_email_body1 = (char *)0;
char *getEmailBody(int handle )
{ char *retValue_acc ;
  void *__cil_tmp3 ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_body0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_body1;
      return (retValue_acc);
    } else {
      __cil_tmp3 = (void *)0;
      retValue_acc = (char *)__cil_tmp3;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailBody(int handle , char *value )
{

  {
  if (handle == 1) {
    __ste_email_body0 = value;
  } else {
    if (handle == 2) {
      __ste_email_body1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_isEncrypted0 = 0;
int __ste_email_isEncrypted1 = 0;
int isEncrypted(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_isEncrypted0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_isEncrypted1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailIsEncrypted(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_isEncrypted0 = value;
  } else {
    if (handle == 2) {
      __ste_email_isEncrypted1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_encryptionKey0 = 0;
int __ste_email_encryptionKey1 = 0;
int getEmailEncryptionKey(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_encryptionKey0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_encryptionKey1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailEncryptionKey(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_encryptionKey0 = value;
  } else {
    if (handle == 2) {
      __ste_email_encryptionKey1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_isSigned0 = 0;
int __ste_email_isSigned1 = 0;
int isSigned(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_isSigned0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_isSigned1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailIsSigned(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_isSigned0 = value;
  } else {
    if (handle == 2) {
      __ste_email_isSigned1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_signKey0 = 0;
int __ste_email_signKey1 = 0;
int getEmailSignKey(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_signKey0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_signKey1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailSignKey(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_signKey0 = value;
  } else {
    if (handle == 2) {
      __ste_email_signKey1 = value;
    } else {

    }
  }
  return;
}
}
int __ste_email_isSignatureVerified0 ;
int __ste_email_isSignatureVerified1 ;
int isVerified(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_email_isSignatureVerified0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_email_isSignatureVerified1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
void setEmailIsSignatureVerified(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_email_isSignatureVerified0 = value;
  } else {
    if (handle == 2) {
      __ste_email_isSignatureVerified1 = value;
    } else {

    }
  }
  return;
}
}
#pragma merger(0,"libacc.i","")
 void __assert_fail(char const *__assertion ,
                                                                      char const *__file ,
                                                                      unsigned int __line ,
                                                                      char const *__function ) ;
 void *malloc(size_t __size ) ;
 void free(void *__ptr ) ;
void __utac__exception__cf_handler_set(void *exception , int (*cflow_func)(int ,
                                                                           int ) ,
                                       int val )
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  void *tmp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int (**mem_15)(int , int ) ;
  int *mem_16 ;
  struct __UTAC__CFLOW_FUNC **mem_17 ;
  struct __UTAC__CFLOW_FUNC **mem_18 ;
  struct __UTAC__CFLOW_FUNC **mem_19 ;

  {
  {
  excep = (struct __UTAC__EXCEPTION *)exception;
  tmp = malloc(24UL);
  cf = (struct __UTAC__CFLOW_FUNC *)tmp;
  mem_15 = (int (**)(int , int ))cf;
  *mem_15 = cflow_func;
  __cil_tmp7 = (unsigned long )cf;
  __cil_tmp8 = __cil_tmp7 + 8;
  mem_16 = (int *)__cil_tmp8;
  *mem_16 = val;
  __cil_tmp9 = (unsigned long )cf;
  __cil_tmp10 = __cil_tmp9 + 16;
  __cil_tmp11 = (unsigned long )excep;
  __cil_tmp12 = __cil_tmp11 + 24;
  mem_17 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp10;
  mem_18 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp12;
  *mem_17 = *mem_18;
  __cil_tmp13 = (unsigned long )excep;
  __cil_tmp14 = __cil_tmp13 + 24;
  mem_19 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp14;
  *mem_19 = cf;
  }
  return;
}
}
void __utac__exception__cf_handler_free(void *exception )
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  struct __UTAC__CFLOW_FUNC *tmp ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct __UTAC__CFLOW_FUNC *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct __UTAC__CFLOW_FUNC **mem_15 ;
  struct __UTAC__CFLOW_FUNC **mem_16 ;
  struct __UTAC__CFLOW_FUNC **mem_17 ;

  {
  excep = (struct __UTAC__EXCEPTION *)exception;
  __cil_tmp5 = (unsigned long )excep;
  __cil_tmp6 = __cil_tmp5 + 24;
  mem_15 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp6;
  cf = *mem_15;
  {
  while (1) {
    while_1_continue: ;
    {
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
    __cil_tmp8 = (unsigned long )__cil_tmp7;
    __cil_tmp9 = (unsigned long )cf;
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_1_break;
    }
    }
    {
    tmp = cf;
    __cil_tmp10 = (unsigned long )cf;
    __cil_tmp11 = __cil_tmp10 + 16;
    mem_16 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp11;
    cf = *mem_16;
    __cil_tmp12 = (void *)tmp;
    free(__cil_tmp12);
    }
  }
  while_1_break: ;
  }
  __cil_tmp13 = (unsigned long )excep;
  __cil_tmp14 = __cil_tmp13 + 24;
  mem_17 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp14;
  *mem_17 = (struct __UTAC__CFLOW_FUNC *)0;
  return;
}
}
void __utac__exception__cf_handler_reset(void *exception )
{ struct __UTAC__EXCEPTION *excep ;
  struct __UTAC__CFLOW_FUNC *cf ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct __UTAC__CFLOW_FUNC *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int (*__cil_tmp10)(int , int ) ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct __UTAC__CFLOW_FUNC **mem_16 ;
  int (**mem_17)(int , int ) ;
  int *mem_18 ;
  struct __UTAC__CFLOW_FUNC **mem_19 ;

  {
  excep = (struct __UTAC__EXCEPTION *)exception;
  __cil_tmp5 = (unsigned long )excep;
  __cil_tmp6 = __cil_tmp5 + 24;
  mem_16 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp6;
  cf = *mem_16;
  {
  while (1) {
    while_2_continue: ;
    {
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
    __cil_tmp8 = (unsigned long )__cil_tmp7;
    __cil_tmp9 = (unsigned long )cf;
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_2_break;
    }
    }
    {
    mem_17 = (int (**)(int , int ))cf;
    __cil_tmp10 = *mem_17;
    __cil_tmp11 = (unsigned long )cf;
    __cil_tmp12 = __cil_tmp11 + 8;
    mem_18 = (int *)__cil_tmp12;
    __cil_tmp13 = *mem_18;
    (*__cil_tmp10)(4, __cil_tmp13);
    __cil_tmp14 = (unsigned long )cf;
    __cil_tmp15 = __cil_tmp14 + 16;
    mem_19 = (struct __UTAC__CFLOW_FUNC **)__cil_tmp15;
    cf = *mem_19;
    }
  }
  while_2_break: ;
  }
  {
  __utac__exception__cf_handler_free(exception);
  }
  return;
}
}
void *__utac__error_stack_mgt(void *env , int mode , int count ) ;
static struct __ACC__ERR *head = (struct __ACC__ERR *)0;
void *__utac__error_stack_mgt(void *env , int mode , int count )
{ void *retValue_acc ;
  struct __ACC__ERR *new ;
  void *tmp ;
  struct __ACC__ERR *temp ;
  struct __ACC__ERR *next ;
  void *excep ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  void **mem_18 ;
  struct __ACC__ERR **mem_19 ;
  struct __ACC__ERR **mem_20 ;
  void **mem_21 ;
  struct __ACC__ERR **mem_22 ;
  void **mem_23 ;
  void **mem_24 ;

  {
  if (count == 0) {
    return (retValue_acc);
  } else {

  }
  if (mode == 0) {
    {
    tmp = malloc(16UL);
    new = (struct __ACC__ERR *)tmp;
    mem_18 = (void **)new;
    *mem_18 = env;
    __cil_tmp10 = (unsigned long )new;
    __cil_tmp11 = __cil_tmp10 + 8;
    mem_19 = (struct __ACC__ERR **)__cil_tmp11;
    *mem_19 = head;
    head = new;
    retValue_acc = (void *)new;
    }
    return (retValue_acc);
  } else {

  }
  if (mode == 1) {
    temp = head;
    {
    while (1) {
      while_3_continue: ;
      if (count > 1) {

      } else {
        goto while_3_break;
      }
      {
      __cil_tmp12 = (unsigned long )temp;
      __cil_tmp13 = __cil_tmp12 + 8;
      mem_20 = (struct __ACC__ERR **)__cil_tmp13;
      next = *mem_20;
      mem_21 = (void **)temp;
      excep = *mem_21;
      __cil_tmp14 = (void *)temp;
      free(__cil_tmp14);
      __utac__exception__cf_handler_reset(excep);
      temp = next;
      count = count - 1;
      }
    }
    while_3_break: ;
    }
    {
    __cil_tmp15 = (unsigned long )temp;
    __cil_tmp16 = __cil_tmp15 + 8;
    mem_22 = (struct __ACC__ERR **)__cil_tmp16;
    head = *mem_22;
    mem_23 = (void **)temp;
    excep = *mem_23;
    __cil_tmp17 = (void *)temp;
    free(__cil_tmp17);
    __utac__exception__cf_handler_reset(excep);
    retValue_acc = excep;
    }
    return (retValue_acc);
  } else {

  }
  if (mode == 2) {
    if (head) {
      mem_24 = (void **)head;
      retValue_acc = *mem_24;
      return (retValue_acc);
    } else {
      retValue_acc = (void *)0;
      return (retValue_acc);
    }
  } else {

  }
  return (retValue_acc);
}
}
void *__utac__get_this_arg(int i , struct JoinPoint *this )
{ void *retValue_acc ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void **__cil_tmp10 ;
  void **__cil_tmp11 ;
  int *mem_12 ;
  void ***mem_13 ;

  {
  if (i > 0) {
    {
    __cil_tmp4 = (unsigned long )this;
    __cil_tmp5 = __cil_tmp4 + 16;
    mem_12 = (int *)__cil_tmp5;
    __cil_tmp6 = *mem_12;
    if (i <= __cil_tmp6) {

    } else {
      {
      __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                    123U, "__utac__get_this_arg");
      }
    }
    }
  } else {
    {
    __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                  123U, "__utac__get_this_arg");
    }
  }
  __cil_tmp7 = i - 1;
  __cil_tmp8 = (unsigned long )this;
  __cil_tmp9 = __cil_tmp8 + 8;
  mem_13 = (void ***)__cil_tmp9;
  __cil_tmp10 = *mem_13;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp7;
  retValue_acc = *__cil_tmp11;
  return (retValue_acc);
  return (retValue_acc);
}
}
char const *__utac__get_this_argtype(int i , struct JoinPoint *this )
{ char const *retValue_acc ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  char const **__cil_tmp10 ;
  char const **__cil_tmp11 ;
  int *mem_12 ;
  char const ***mem_13 ;

  {
  if (i > 0) {
    {
    __cil_tmp4 = (unsigned long )this;
    __cil_tmp5 = __cil_tmp4 + 16;
    mem_12 = (int *)__cil_tmp5;
    __cil_tmp6 = *mem_12;
    if (i <= __cil_tmp6) {

    } else {
      {
      __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                    131U, "__utac__get_this_argtype");
      }
    }
    }
  } else {
    {
    __assert_fail("i > 0 && i <= this->argsCount", "libacc.c",
                  131U, "__utac__get_this_argtype");
    }
  }
  __cil_tmp7 = i - 1;
  __cil_tmp8 = (unsigned long )this;
  __cil_tmp9 = __cil_tmp8 + 24;
  mem_13 = (char const ***)__cil_tmp9;
  __cil_tmp10 = *mem_13;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp7;
  retValue_acc = *__cil_tmp11;
  return (retValue_acc);
  return (retValue_acc);
}
}
#pragma merger(0,"DecryptForward_spec.i","")
int isReadable(int msg ) ;
inline static void __utac_acc__DecryptForward_spec__1(int msg )
{ int tmp ;

  {
  {
  puts("before forward\n");
  tmp = isReadable(msg);
  }
  if (tmp) {

  } else {
    {
    __automaton_fail();
    }
  }
  return;
}
}
#pragma merger(0,"ClientLib.i","")
int initClient(void) ;
char *getClientName(int handle ) ;
void setClientName(int handle , char *value ) ;
int getClientOutbuffer(int handle ) ;
void setClientOutbuffer(int handle , int value ) ;
int getClientAddressBookSize(int handle ) ;
void setClientAddressBookSize(int handle , int value ) ;
int createClientAddressBookEntry(int handle ) ;
int getClientAddressBookAlias(int handle , int index ) ;
void setClientAddressBookAlias(int handle , int index , int value ) ;
int getClientAddressBookAddress(int handle , int index ) ;
void setClientAddressBookAddress(int handle , int index , int value ) ;
int getClientAutoResponse(int handle ) ;
void setClientAutoResponse(int handle , int value ) ;
int getClientPrivateKey(int handle ) ;
void setClientPrivateKey(int handle , int value ) ;
int getClientKeyringSize(int handle ) ;
int createClientKeyringEntry(int handle ) ;
int getClientKeyringUser(int handle , int index ) ;
void setClientKeyringUser(int handle , int index , int value ) ;
int getClientKeyringPublicKey(int handle , int index ) ;
void setClientKeyringPublicKey(int handle , int index , int value ) ;
int getClientForwardReceiver(int handle ) ;
int getClientId(int handle ) ;
int findPublicKey(int handle , int userid ) ;
int findClientAddressBookAlias(int handle , int userid ) ;
int __ste_Client_counter = 0;
int initClient(void)
{ int retValue_acc ;

  {
  if (__ste_Client_counter < 3) {
    __ste_Client_counter = __ste_Client_counter + 1;
    retValue_acc = __ste_Client_counter;
    return (retValue_acc);
  } else {
    retValue_acc = -1;
    return (retValue_acc);
  }
  return (retValue_acc);
}
}
char *__ste_client_name0 = (char *)0;
char *__ste_client_name1 = (char *)0;
char *__ste_client_name2 = (char *)0;
char *getClientName(int handle )
{ char *retValue_acc ;
  void *__cil_tmp3 ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_name0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_name1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_name2;
        return (retValue_acc);
      } else {
        __cil_tmp3 = (void *)0;
        retValue_acc = (char *)__cil_tmp3;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientName(int handle , char *value )
{

  {
  if (handle == 1) {
    __ste_client_name0 = value;
  } else {
    if (handle == 2) {
      __ste_client_name1 = value;
    } else {
      if (handle == 3) {
        __ste_client_name2 = value;
      } else {

      }
    }
  }
  return;
}
}
int __ste_client_outbuffer0 = 0;
int __ste_client_outbuffer1 = 0;
int __ste_client_outbuffer2 = 0;
int __ste_client_outbuffer3 = 0;
int getClientOutbuffer(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_outbuffer0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_outbuffer1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_outbuffer2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientOutbuffer(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_client_outbuffer0 = value;
  } else {
    if (handle == 2) {
      __ste_client_outbuffer1 = value;
    } else {
      if (handle == 3) {
        __ste_client_outbuffer2 = value;
      } else {

      }
    }
  }
  return;
}
}
int __ste_ClientAddressBook_size0 = 0;
int __ste_ClientAddressBook_size1 = 0;
int __ste_ClientAddressBook_size2 = 0;
int getClientAddressBookSize(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_ClientAddressBook_size0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_ClientAddressBook_size1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_ClientAddressBook_size2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientAddressBookSize(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_ClientAddressBook_size0 = value;
  } else {
    if (handle == 2) {
      __ste_ClientAddressBook_size1 = value;
    } else {
      if (handle == 3) {
        __ste_ClientAddressBook_size2 = value;
      } else {

      }
    }
  }
  return;
}
}
int createClientAddressBookEntry(int handle )
{ int retValue_acc ;
  int size ;
  int tmp ;
  int __cil_tmp5 ;

  {
  {
  tmp = getClientAddressBookSize(handle);
  size = tmp;
  }
  if (size < 3) {
    {
    __cil_tmp5 = size + 1;
    setClientAddressBookSize(handle, __cil_tmp5);
    retValue_acc = size + 1;
    }
    return (retValue_acc);
  } else {
    retValue_acc = -1;
    return (retValue_acc);
  }
  return (retValue_acc);
}
}
int __ste_Client_AddressBook0_Alias0 = 0;
int __ste_Client_AddressBook0_Alias1 = 0;
int __ste_Client_AddressBook0_Alias2 = 0;
int __ste_Client_AddressBook1_Alias0 = 0;
int __ste_Client_AddressBook1_Alias1 = 0;
int __ste_Client_AddressBook1_Alias2 = 0;
int __ste_Client_AddressBook2_Alias0 = 0;
int __ste_Client_AddressBook2_Alias1 = 0;
int __ste_Client_AddressBook2_Alias2 = 0;
int getClientAddressBookAlias(int handle , int index )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (index == 0) {
      retValue_acc = __ste_Client_AddressBook0_Alias0;
      return (retValue_acc);
    } else {
      if (index == 1) {
        retValue_acc = __ste_Client_AddressBook0_Alias1;
        return (retValue_acc);
      } else {
        if (index == 2) {
          retValue_acc = __ste_Client_AddressBook0_Alias2;
          return (retValue_acc);
        } else {
          retValue_acc = 0;
          return (retValue_acc);
        }
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        retValue_acc = __ste_Client_AddressBook1_Alias0;
        return (retValue_acc);
      } else {
        if (index == 1) {
          retValue_acc = __ste_Client_AddressBook1_Alias1;
          return (retValue_acc);
        } else {
          if (index == 2) {
            retValue_acc = __ste_Client_AddressBook1_Alias2;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          retValue_acc = __ste_Client_AddressBook2_Alias0;
          return (retValue_acc);
        } else {
          if (index == 1) {
            retValue_acc = __ste_Client_AddressBook2_Alias1;
            return (retValue_acc);
          } else {
            if (index == 2) {
              retValue_acc = __ste_Client_AddressBook2_Alias2;
              return (retValue_acc);
            } else {
              retValue_acc = 0;
              return (retValue_acc);
            }
          }
        }
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
int findClientAddressBookAlias(int handle , int userid )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (userid == __ste_Client_AddressBook0_Alias0) {
      retValue_acc = 0;
      return (retValue_acc);
    } else {
      if (userid == __ste_Client_AddressBook0_Alias1) {
        retValue_acc = 1;
        return (retValue_acc);
      } else {
        if (userid == __ste_Client_AddressBook0_Alias2) {
          retValue_acc = 2;
          return (retValue_acc);
        } else {
          retValue_acc = -1;
          return (retValue_acc);
        }
      }
    }
  } else {
    if (handle == 2) {
      if (userid == __ste_Client_AddressBook1_Alias0) {
        retValue_acc = 0;
        return (retValue_acc);
      } else {
        if (userid == __ste_Client_AddressBook1_Alias1) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          if (userid == __ste_Client_AddressBook1_Alias2) {
            retValue_acc = 2;
            return (retValue_acc);
          } else {
            retValue_acc = -1;
            return (retValue_acc);
          }
        }
      }
    } else {
      if (handle == 3) {
        if (userid == __ste_Client_AddressBook2_Alias0) {
          retValue_acc = 0;
          return (retValue_acc);
        } else {
          if (userid == __ste_Client_AddressBook2_Alias1) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            if (userid == __ste_Client_AddressBook2_Alias2) {
              retValue_acc = 2;
              return (retValue_acc);
            } else {
              retValue_acc = -1;
              return (retValue_acc);
            }
          }
        }
      } else {
        retValue_acc = -1;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientAddressBookAlias(int handle , int index , int value )
{

  {
  if (handle == 1) {
    if (index == 0) {
      __ste_Client_AddressBook0_Alias0 = value;
    } else {
      if (index == 1) {
        __ste_Client_AddressBook0_Alias1 = value;
      } else {
        if (index == 2) {
          __ste_Client_AddressBook0_Alias2 = value;
        } else {

        }
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        __ste_Client_AddressBook1_Alias0 = value;
      } else {
        if (index == 1) {
          __ste_Client_AddressBook1_Alias1 = value;
        } else {
          if (index == 2) {
            __ste_Client_AddressBook1_Alias2 = value;
          } else {

          }
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          __ste_Client_AddressBook2_Alias0 = value;
        } else {
          if (index == 1) {
            __ste_Client_AddressBook2_Alias1 = value;
          } else {
            if (index == 2) {
              __ste_Client_AddressBook2_Alias2 = value;
            } else {

            }
          }
        }
      } else {

      }
    }
  }
  return;
}
}
int __ste_Client_AddressBook0_Address0 = 0;
int __ste_Client_AddressBook0_Address1 = 0;
int __ste_Client_AddressBook0_Address2 = 0;
int __ste_Client_AddressBook1_Address0 = 0;
int __ste_Client_AddressBook1_Address1 = 0;
int __ste_Client_AddressBook1_Address2 = 0;
int __ste_Client_AddressBook2_Address0 = 0;
int __ste_Client_AddressBook2_Address1 = 0;
int __ste_Client_AddressBook2_Address2 = 0;
int getClientAddressBookAddress(int handle , int index )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (index == 0) {
      retValue_acc = __ste_Client_AddressBook0_Address0;
      return (retValue_acc);
    } else {
      if (index == 1) {
        retValue_acc = __ste_Client_AddressBook0_Address1;
        return (retValue_acc);
      } else {
        if (index == 2) {
          retValue_acc = __ste_Client_AddressBook0_Address2;
          return (retValue_acc);
        } else {
          retValue_acc = 0;
          return (retValue_acc);
        }
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        retValue_acc = __ste_Client_AddressBook1_Address0;
        return (retValue_acc);
      } else {
        if (index == 1) {
          retValue_acc = __ste_Client_AddressBook1_Address1;
          return (retValue_acc);
        } else {
          if (index == 2) {
            retValue_acc = __ste_Client_AddressBook1_Address2;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          retValue_acc = __ste_Client_AddressBook2_Address0;
          return (retValue_acc);
        } else {
          if (index == 1) {
            retValue_acc = __ste_Client_AddressBook2_Address1;
            return (retValue_acc);
          } else {
            if (index == 2) {
              retValue_acc = __ste_Client_AddressBook2_Address2;
              return (retValue_acc);
            } else {
              retValue_acc = 0;
              return (retValue_acc);
            }
          }
        }
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientAddressBookAddress(int handle , int index , int value )
{

  {
  if (handle == 1) {
    if (index == 0) {
      __ste_Client_AddressBook0_Address0 = value;
    } else {
      if (index == 1) {
        __ste_Client_AddressBook0_Address1 = value;
      } else {
        if (index == 2) {
          __ste_Client_AddressBook0_Address2 = value;
        } else {

        }
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        __ste_Client_AddressBook1_Address0 = value;
      } else {
        if (index == 1) {
          __ste_Client_AddressBook1_Address1 = value;
        } else {
          if (index == 2) {
            __ste_Client_AddressBook1_Address2 = value;
          } else {

          }
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          __ste_Client_AddressBook2_Address0 = value;
        } else {
          if (index == 1) {
            __ste_Client_AddressBook2_Address1 = value;
          } else {
            if (index == 2) {
              __ste_Client_AddressBook2_Address2 = value;
            } else {

            }
          }
        }
      } else {

      }
    }
  }
  return;
}
}
int __ste_client_autoResponse0 = 0;
int __ste_client_autoResponse1 = 0;
int __ste_client_autoResponse2 = 0;
int getClientAutoResponse(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_autoResponse0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_autoResponse1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_autoResponse2;
        return (retValue_acc);
      } else {
        retValue_acc = -1;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientAutoResponse(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_client_autoResponse0 = value;
  } else {
    if (handle == 2) {
      __ste_client_autoResponse1 = value;
    } else {
      if (handle == 3) {
        __ste_client_autoResponse2 = value;
      } else {

      }
    }
  }
  return;
}
}
int __ste_client_privateKey0 = 0;
int __ste_client_privateKey1 = 0;
int __ste_client_privateKey2 = 0;
int getClientPrivateKey(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_privateKey0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_privateKey1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_privateKey2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientPrivateKey(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_client_privateKey0 = value;
  } else {
    if (handle == 2) {
      __ste_client_privateKey1 = value;
    } else {
      if (handle == 3) {
        __ste_client_privateKey2 = value;
      } else {

      }
    }
  }
  return;
}
}
int __ste_ClientKeyring_size0 = 0;
int __ste_ClientKeyring_size1 = 0;
int __ste_ClientKeyring_size2 = 0;
int getClientKeyringSize(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_ClientKeyring_size0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_ClientKeyring_size1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_ClientKeyring_size2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientKeyringSize(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_ClientKeyring_size0 = value;
  } else {
    if (handle == 2) {
      __ste_ClientKeyring_size1 = value;
    } else {
      if (handle == 3) {
        __ste_ClientKeyring_size2 = value;
      } else {

      }
    }
  }
  return;
}
}
int createClientKeyringEntry(int handle )
{ int retValue_acc ;
  int size ;
  int tmp ;
  int __cil_tmp5 ;

  {
  {
  tmp = getClientKeyringSize(handle);
  size = tmp;
  }
  if (size < 2) {
    {
    __cil_tmp5 = size + 1;
    setClientKeyringSize(handle, __cil_tmp5);
    retValue_acc = size + 1;
    }
    return (retValue_acc);
  } else {
    retValue_acc = -1;
    return (retValue_acc);
  }
  return (retValue_acc);
}
}
int __ste_Client_Keyring0_User0 = 0;
int __ste_Client_Keyring0_User1 = 0;
int __ste_Client_Keyring0_User2 = 0;
int __ste_Client_Keyring1_User0 = 0;
int __ste_Client_Keyring1_User1 = 0;
int __ste_Client_Keyring1_User2 = 0;
int __ste_Client_Keyring2_User0 = 0;
int __ste_Client_Keyring2_User1 = 0;
int __ste_Client_Keyring2_User2 = 0;
int getClientKeyringUser(int handle , int index )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (index == 0) {
      retValue_acc = __ste_Client_Keyring0_User0;
      return (retValue_acc);
    } else {
      if (index == 1) {
        retValue_acc = __ste_Client_Keyring0_User1;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        retValue_acc = __ste_Client_Keyring1_User0;
        return (retValue_acc);
      } else {
        if (index == 1) {
          retValue_acc = __ste_Client_Keyring1_User1;
          return (retValue_acc);
        } else {
          retValue_acc = 0;
          return (retValue_acc);
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          retValue_acc = __ste_Client_Keyring2_User0;
          return (retValue_acc);
        } else {
          if (index == 1) {
            retValue_acc = __ste_Client_Keyring2_User1;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientKeyringUser(int handle , int index , int value )
{

  {
  if (handle == 1) {
    if (index == 0) {
      __ste_Client_Keyring0_User0 = value;
    } else {
      if (index == 1) {
        __ste_Client_Keyring0_User1 = value;
      } else {

      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        __ste_Client_Keyring1_User0 = value;
      } else {
        if (index == 1) {
          __ste_Client_Keyring1_User1 = value;
        } else {

        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          __ste_Client_Keyring2_User0 = value;
        } else {
          if (index == 1) {
            __ste_Client_Keyring2_User1 = value;
          } else {

          }
        }
      } else {

      }
    }
  }
  return;
}
}
int __ste_Client_Keyring0_PublicKey0 = 0;
int __ste_Client_Keyring0_PublicKey1 = 0;
int __ste_Client_Keyring0_PublicKey2 = 0;
int __ste_Client_Keyring1_PublicKey0 = 0;
int __ste_Client_Keyring1_PublicKey1 = 0;
int __ste_Client_Keyring1_PublicKey2 = 0;
int __ste_Client_Keyring2_PublicKey0 = 0;
int __ste_Client_Keyring2_PublicKey1 = 0;
int __ste_Client_Keyring2_PublicKey2 = 0;
int getClientKeyringPublicKey(int handle , int index )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (index == 0) {
      retValue_acc = __ste_Client_Keyring0_PublicKey0;
      return (retValue_acc);
    } else {
      if (index == 1) {
        retValue_acc = __ste_Client_Keyring0_PublicKey1;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        retValue_acc = __ste_Client_Keyring1_PublicKey0;
        return (retValue_acc);
      } else {
        if (index == 1) {
          retValue_acc = __ste_Client_Keyring1_PublicKey1;
          return (retValue_acc);
        } else {
          retValue_acc = 0;
          return (retValue_acc);
        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          retValue_acc = __ste_Client_Keyring2_PublicKey0;
          return (retValue_acc);
        } else {
          if (index == 1) {
            retValue_acc = __ste_Client_Keyring2_PublicKey1;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
int findPublicKey(int handle , int userid )
{ int retValue_acc ;

  {
  if (handle == 1) {
    if (userid == __ste_Client_Keyring0_User0) {
      retValue_acc = __ste_Client_Keyring0_PublicKey0;
      return (retValue_acc);
    } else {
      if (userid == __ste_Client_Keyring0_User1) {
        retValue_acc = __ste_Client_Keyring0_PublicKey1;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  } else {
    if (handle == 2) {
      if (userid == __ste_Client_Keyring1_User0) {
        retValue_acc = __ste_Client_Keyring1_PublicKey0;
        return (retValue_acc);
      } else {
        if (userid == __ste_Client_Keyring1_User1) {
          retValue_acc = __ste_Client_Keyring1_PublicKey1;
          return (retValue_acc);
        } else {
          retValue_acc = 0;
          return (retValue_acc);
        }
      }
    } else {
      if (handle == 3) {
        if (userid == __ste_Client_Keyring2_User0) {
          retValue_acc = __ste_Client_Keyring2_PublicKey0;
          return (retValue_acc);
        } else {
          if (userid == __ste_Client_Keyring2_User1) {
            retValue_acc = __ste_Client_Keyring2_PublicKey1;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientKeyringPublicKey(int handle , int index , int value )
{

  {
  if (handle == 1) {
    if (index == 0) {
      __ste_Client_Keyring0_PublicKey0 = value;
    } else {
      if (index == 1) {
        __ste_Client_Keyring0_PublicKey1 = value;
      } else {

      }
    }
  } else {
    if (handle == 2) {
      if (index == 0) {
        __ste_Client_Keyring1_PublicKey0 = value;
      } else {
        if (index == 1) {
          __ste_Client_Keyring1_PublicKey1 = value;
        } else {

        }
      }
    } else {
      if (handle == 3) {
        if (index == 0) {
          __ste_Client_Keyring2_PublicKey0 = value;
        } else {
          if (index == 1) {
            __ste_Client_Keyring2_PublicKey1 = value;
          } else {

          }
        }
      } else {

      }
    }
  }
  return;
}
}
int __ste_client_forwardReceiver0 = 0;
int __ste_client_forwardReceiver1 = 0;
int __ste_client_forwardReceiver2 = 0;
int __ste_client_forwardReceiver3 = 0;
int getClientForwardReceiver(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_forwardReceiver0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_forwardReceiver1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_forwardReceiver2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientForwardReceiver(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_client_forwardReceiver0 = value;
  } else {
    if (handle == 2) {
      __ste_client_forwardReceiver1 = value;
    } else {
      if (handle == 3) {
        __ste_client_forwardReceiver2 = value;
      } else {

      }
    }
  }
  return;
}
}
int __ste_client_idCounter0 = 0;
int __ste_client_idCounter1 = 0;
int __ste_client_idCounter2 = 0;
int getClientId(int handle )
{ int retValue_acc ;

  {
  if (handle == 1) {
    retValue_acc = __ste_client_idCounter0;
    return (retValue_acc);
  } else {
    if (handle == 2) {
      retValue_acc = __ste_client_idCounter1;
      return (retValue_acc);
    } else {
      if (handle == 3) {
        retValue_acc = __ste_client_idCounter2;
        return (retValue_acc);
      } else {
        retValue_acc = 0;
        return (retValue_acc);
      }
    }
  }
  return (retValue_acc);
}
}
void setClientId(int handle , int value )
{

  {
  if (handle == 1) {
    __ste_client_idCounter0 = value;
  } else {
    if (handle == 2) {
      __ste_client_idCounter1 = value;
    } else {
      if (handle == 3) {
        __ste_client_idCounter2 = value;
      } else {

      }
    }
  }
  return;
}
}
#pragma merger(0,"Client.i","")
void printMail(int msg ) ;
int createEmail(int from , int to ) ;
void queue(int client , int msg ) ;
void mail(int client , int msg ) ;
void deliver(int client , int msg ) ;
void incoming(int client , int msg ) ;
int createClient(char *name ) ;
void forward(int client , int msg ) ;
int queue_empty = 1;
int queued_message ;
int queued_client ;
void mail(int client , int msg )
{ int tmp ;

  {
  {
  puts("mail sent");
  tmp = getEmailTo(msg);
  incoming(tmp, msg);
  }
  return;
}
}
void outgoing(int client , int msg )
{ int tmp ;

  {
  {
  tmp = getClientId(client);
  setEmailFrom(msg, tmp);
  mail(client, msg);
  }
  return;
}
}
void deliver(int client , int msg )
{

  {
  {
  puts("mail delivered\n");
  }
  return;
}
}
void incoming__wrappee__Base(int client , int msg )
{

  {
  {
  deliver(client, msg);
  }
  return;
}
}
void incoming(int client , int msg )
{ int fwreceiver ;
  int tmp ;

  {
  {
  incoming__wrappee__Base(client, msg);
  tmp = getClientForwardReceiver(client);
  fwreceiver = tmp;
  }
  if (fwreceiver) {
    {
    setEmailTo(msg, fwreceiver);
    forward(client, msg);
    }
  } else {

  }
  return;
}
}
int createClient(char *name )
{ int retValue_acc ;
  int client ;
  int tmp ;

  {
  {
  tmp = initClient();
  client = tmp;
  retValue_acc = client;
  }
  return (retValue_acc);
  return (retValue_acc);
}
}
void sendEmail(int sender , int receiver )
{ int email ;
  int tmp ;

  {
  {
  tmp = createEmail(0, receiver);
  email = tmp;
  outgoing(sender, email);
  }
  return;
}
}
void queue(int client , int msg )
{

  {
  queue_empty = 0;
  queued_message = msg;
  queued_client = client;
  return;
}
}
int is_queue_empty(void)
{ int retValue_acc ;

  {
  retValue_acc = queue_empty;
  return (retValue_acc);
  return (retValue_acc);
}
}
int get_queued_client(void)
{ int retValue_acc ;

  {
  retValue_acc = queued_client;
  return (retValue_acc);
  return (retValue_acc);
}
}
int get_queued_email(void)
{ int retValue_acc ;

  {
  retValue_acc = queued_message;
  return (retValue_acc);
  return (retValue_acc);
}
}
void forward(int client , int msg )
{ int __utac__ad__arg1 ;

  {
  {
  __utac__ad__arg1 = msg;
  __utac_acc__DecryptForward_spec__1(__utac__ad__arg1);
  puts("Forwarding message.\n");
  printMail(msg);
  queue(client, msg);
  }
  return;
}
}
#pragma merger(0,"Util.i","")
int prompt(char *msg ) ;
int prompt(char *msg )
{ int retValue_acc ;
  int retval ;
  char const  __cil_tmp4 ;

  {
  {
  __cil_tmp4 = (char const  )"%s\n";
  printf(__cil_tmp4, msg);
  retValue_acc = retval;
  }
  return (retValue_acc);
  return (retValue_acc);
}
}
#pragma merger(0,"Email.i","")
int cloneEmail(int msg ) ;
void printMail(int msg )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  char const  __cil_tmp6 ;
  char const  __cil_tmp7 ;
  char const  __cil_tmp8 ;
  char const  __cil_tmp9 ;

  {
  {
  tmp = getEmailId(msg);
  __cil_tmp6 = (char const  )"ID:\n  %i\n";
  printf(__cil_tmp6, tmp);
  tmp___0 = getEmailFrom(msg);
  __cil_tmp7 = (char const  )"FROM:\n  %i\n";
  printf(__cil_tmp7, tmp___0);
  tmp___1 = getEmailTo(msg);
  __cil_tmp8 = (char const  )"TO:\n  %i\n";
  printf(__cil_tmp8, tmp___1);
  tmp___2 = isReadable(msg);
  __cil_tmp9 = (char const  )"IS_READABLE\n  %i\n";
  printf(__cil_tmp9, tmp___2);
  }
  return;
}
}
int isReadable(int msg )
{ int retValue_acc ;

  {
  retValue_acc = 1;
  return (retValue_acc);
  return (retValue_acc);
}
}
int cloneEmail(int msg )
{ int retValue_acc ;

  {
  retValue_acc = msg;
  return (retValue_acc);
  return (retValue_acc);
}
}
int createEmail(int from , int to )
{ int retValue_acc ;
  int msg ;

  {
  {
  msg = 1;
  setEmailFrom(msg, from);
  setEmailTo(msg, to);
  retValue_acc = msg;
  }
  return (retValue_acc);
  return (retValue_acc);
}
}
#pragma merger(0,"featureselect.i","")
int select_one(void) ;
int select_one(void)
{ int retValue_acc ;
  int choice = __VERIFIER_nondet_int();

  {
  retValue_acc = choice;
  return (retValue_acc);
  return (retValue_acc);
}
}
void select_features(void)
{

  {
  return;
}
}
void select_helpers(void)
{

  {
  return;
}
}
int valid_product(void)
{ int retValue_acc ;

  {
  retValue_acc = 1;
  return (retValue_acc);
  return (retValue_acc);
}
}
