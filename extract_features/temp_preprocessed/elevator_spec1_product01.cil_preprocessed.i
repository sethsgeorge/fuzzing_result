# 0 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/elevator_spec1_product01.cil.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 0 "<command-line>" 2
# 1 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/elevator_spec1_product01.cil.c"
# 9 "/mnt/e/OneDrive/Desktop/result/extract_features/cfiles32/product-lines/elevator_spec1_product01.cil.c"
 void abort(void);
 void __assert_fail(const char *, const char *, unsigned int, const char *) ;
void reach_error1() { __assert_fail("0", "elevator_spec1_product01.cil.c", 3, "reach_error1"); }

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
#pragma merger(0,"wsllib_check.i","")
void __automaton_fail(void)
{

  {
  ERROR: {reach_error1();abort();}
  return;
}
}
#pragma merger(0,"Elevator.i","")
 int printf(char const  __format , ...) ;
int getDestination(int person ) ;
void enterElevator(int p ) ;
int isFloorCalling(int floorID ) ;
void resetCallOnFloor(int floorID ) ;
int isPersonOnFloor(int person , int floor ) ;
void removePersonFromFloor(int person , int floor ) ;
int isTopFloor(int floorID ) ;
void initFloors(void) ;
void timeShift(void) ;
int isBlocked(void) ;
void printState(void) ;
int isEmpty(void) ;
int isAnyLiftButtonPressed(void) ;
int buttonForFloorIsPressed(int floorID ) ;
void initTopDown(void) ;
void initBottomUp(void) ;
int areDoorsOpen(void) ;
int getCurrentFloorID(void) ;
int isIdle(void) ;
int currentHeading = 1;
int currentFloorID = 0;
int persons_0 ;
int persons_1 ;
int persons_2 ;
int persons_3 ;
int persons_4 ;
int persons_5 ;
int doorState = 1;
int floorButtons_0 ;
int floorButtons_1 ;
int floorButtons_2 ;
int floorButtons_3 ;
int floorButtons_4 ;
void initTopDown(void)
{

  {
  {
  currentFloorID = 4;
  currentHeading = 0;
  floorButtons_0 = 0;
  floorButtons_1 = 0;
  floorButtons_2 = 0;
  floorButtons_3 = 0;
  floorButtons_4 = 0;
  persons_0 = 0;
  persons_1 = 0;
  persons_2 = 0;
  persons_3 = 0;
  persons_4 = 0;
  persons_5 = 0;
  initFloors();
  }
  return;
}
}
void initBottomUp(void)
{

  {
  {
  currentFloorID = 0;
  currentHeading = 1;
  floorButtons_0 = 0;
  floorButtons_1 = 0;
  floorButtons_2 = 0;
  floorButtons_3 = 0;
  floorButtons_4 = 0;
  persons_0 = 0;
  persons_1 = 0;
  persons_2 = 0;
  persons_3 = 0;
  persons_4 = 0;
  persons_5 = 0;
  initFloors();
  }
  return;
}
}
int isBlocked(void)
{ int retValue_acc ;

  {
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
void enterElevator(int p )
{

  {
  if (p == 0) {
    persons_0 = 1;
  } else {
    if (p == 1) {
      persons_1 = 1;
    } else {
      if (p == 2) {
        persons_2 = 1;
      } else {
        if (p == 3) {
          persons_3 = 1;
        } else {
          if (p == 4) {
            persons_4 = 1;
          } else {
            if (p == 5) {
              persons_5 = 1;
            } else {

            }
          }
        }
      }
    }
  }
  return;
}
}
void leaveElevator(int p )
{

  {
  if (p == 0) {
    persons_0 = 0;
  } else {
    if (p == 1) {
      persons_1 = 0;
    } else {
      if (p == 2) {
        persons_2 = 0;
      } else {
        if (p == 3) {
          persons_3 = 0;
        } else {
          if (p == 4) {
            persons_4 = 0;
          } else {
            if (p == 5) {
              persons_5 = 0;
            } else {

            }
          }
        }
      }
    }
  }
  return;
}
}
void pressInLiftFloorButton(int floorID )
{

  {
  if (floorID == 0) {
    floorButtons_0 = 1;
  } else {
    if (floorID == 1) {
      floorButtons_1 = 1;
    } else {
      if (floorID == 2) {
        floorButtons_2 = 1;
      } else {
        if (floorID == 3) {
          floorButtons_3 = 1;
        } else {
          if (floorID == 4) {
            floorButtons_4 = 1;
          } else {

          }
        }
      }
    }
  }
  return;
}
}
void resetFloorButton(int floorID )
{

  {
  if (floorID == 0) {
    floorButtons_0 = 0;
  } else {
    if (floorID == 1) {
      floorButtons_1 = 0;
    } else {
      if (floorID == 2) {
        floorButtons_2 = 0;
      } else {
        if (floorID == 3) {
          floorButtons_3 = 0;
        } else {
          if (floorID == 4) {
            floorButtons_4 = 0;
          } else {

          }
        }
      }
    }
  }
  return;
}
}
int getCurrentFloorID(void)
{ int retValue_acc ;

  {
  retValue_acc = currentFloorID;
  return (retValue_acc);
  return (retValue_acc);
}
}
int areDoorsOpen(void)
{ int retValue_acc ;

  {
  retValue_acc = doorState;
  return (retValue_acc);
  return (retValue_acc);
}
}
int buttonForFloorIsPressed(int floorID )
{ int retValue_acc ;

  {
  if (floorID == 0) {
    retValue_acc = floorButtons_0;
    return (retValue_acc);
  } else {
    if (floorID == 1) {
      retValue_acc = floorButtons_1;
      return (retValue_acc);
    } else {
      if (floorID == 2) {
        retValue_acc = floorButtons_2;
        return (retValue_acc);
      } else {
        if (floorID == 3) {
          retValue_acc = floorButtons_3;
          return (retValue_acc);
        } else {
          if (floorID == 4) {
            retValue_acc = floorButtons_4;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      }
    }
  }
  return (retValue_acc);
}
}
int getCurrentHeading(void)
{ int retValue_acc ;

  {
  retValue_acc = currentHeading;
  return (retValue_acc);
  return (retValue_acc);
}
}
int isEmpty(void)
{ int retValue_acc ;

  {
  if (persons_0 == 1) {
    retValue_acc = 0;
    return (retValue_acc);
  } else {
    if (persons_1 == 1) {
      retValue_acc = 0;
      return (retValue_acc);
    } else {
      if (persons_2 == 1) {
        retValue_acc = 0;
        return (retValue_acc);
      } else {
        if (persons_3 == 1) {
          retValue_acc = 0;
          return (retValue_acc);
        } else {
          if (persons_4 == 1) {
            retValue_acc = 0;
            return (retValue_acc);
          } else {
            if (persons_5 == 1) {
              retValue_acc = 0;
              return (retValue_acc);
            } else {

            }
          }
        }
      }
    }
  }
  retValue_acc = 1;
  return (retValue_acc);
  return (retValue_acc);
}
}
int anyStopRequested(void)
{ int retValue_acc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;

  {
  {
  tmp___3 = isFloorCalling(0);
  }
  if (tmp___3) {
    retValue_acc = 1;
    return (retValue_acc);
  } else {
    if (floorButtons_0) {
      retValue_acc = 1;
      return (retValue_acc);
    } else {
      {
      tmp___2 = isFloorCalling(1);
      }
      if (tmp___2) {
        retValue_acc = 1;
        return (retValue_acc);
      } else {
        if (floorButtons_1) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          {
          tmp___1 = isFloorCalling(2);
          }
          if (tmp___1) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            if (floorButtons_2) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              {
              tmp___0 = isFloorCalling(3);
              }
              if (tmp___0) {
                retValue_acc = 1;
                return (retValue_acc);
              } else {
                if (floorButtons_3) {
                  retValue_acc = 1;
                  return (retValue_acc);
                } else {
                  {
                  tmp = isFloorCalling(4);
                  }
                  if (tmp) {
                    retValue_acc = 1;
                    return (retValue_acc);
                  } else {
                    if (floorButtons_4) {
                      retValue_acc = 1;
                      return (retValue_acc);
                    } else {

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
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
int isIdle(void)
{ int retValue_acc ;
  int tmp ;

  {
  {
  tmp = anyStopRequested();
  retValue_acc = tmp == 0;
  }
  return (retValue_acc);
  return (retValue_acc);
}
}
int stopRequestedInDirection(int dir , int respectFloorCalls , int respectInLiftCalls )
{ int retValue_acc ;
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
  if (dir == 1) {
    {
    tmp = isTopFloor(currentFloorID);
    }
    if (tmp) {
      retValue_acc = 0;
      return (retValue_acc);
    } else {

    }
    if (currentFloorID < 0) {
      if (respectFloorCalls) {
        {
        tmp___4 = isFloorCalling(0);
        }
        if (tmp___4) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          goto _L___16;
        }
      } else {
        goto _L___16;
      }
    } else {
      _L___16:
      if (currentFloorID < 0) {
        if (respectInLiftCalls) {
          if (floorButtons_0) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            goto _L___14;
          }
        } else {
          goto _L___14;
        }
      } else {
        _L___14:
        if (currentFloorID < 1) {
          if (respectFloorCalls) {
            {
            tmp___3 = isFloorCalling(1);
            }
            if (tmp___3) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              goto _L___12;
            }
          } else {
            goto _L___12;
          }
        } else {
          _L___12:
          if (currentFloorID < 1) {
            if (respectInLiftCalls) {
              if (floorButtons_1) {
                retValue_acc = 1;
                return (retValue_acc);
              } else {
                goto _L___10;
              }
            } else {
              goto _L___10;
            }
          } else {
            _L___10:
            if (currentFloorID < 2) {
              if (respectFloorCalls) {
                {
                tmp___2 = isFloorCalling(2);
                }
                if (tmp___2) {
                  retValue_acc = 1;
                  return (retValue_acc);
                } else {
                  goto _L___8;
                }
              } else {
                goto _L___8;
              }
            } else {
              _L___8:
              if (currentFloorID < 2) {
                if (respectInLiftCalls) {
                  if (floorButtons_2) {
                    retValue_acc = 1;
                    return (retValue_acc);
                  } else {
                    goto _L___6;
                  }
                } else {
                  goto _L___6;
                }
              } else {
                _L___6:
                if (currentFloorID < 3) {
                  if (respectFloorCalls) {
                    {
                    tmp___1 = isFloorCalling(3);
                    }
                    if (tmp___1) {
                      retValue_acc = 1;
                      return (retValue_acc);
                    } else {
                      goto _L___4;
                    }
                  } else {
                    goto _L___4;
                  }
                } else {
                  _L___4:
                  if (currentFloorID < 3) {
                    if (respectInLiftCalls) {
                      if (floorButtons_3) {
                        retValue_acc = 1;
                        return (retValue_acc);
                      } else {
                        goto _L___2;
                      }
                    } else {
                      goto _L___2;
                    }
                  } else {
                    _L___2:
                    if (currentFloorID < 4) {
                      if (respectFloorCalls) {
                        {
                        tmp___0 = isFloorCalling(4);
                        }
                        if (tmp___0) {
                          retValue_acc = 1;
                          return (retValue_acc);
                        } else {
                          goto _L___0;
                        }
                      } else {
                        goto _L___0;
                      }
                    } else {
                      _L___0:
                      if (currentFloorID < 4) {
                        if (respectInLiftCalls) {
                          if (floorButtons_4) {
                            retValue_acc = 1;
                            return (retValue_acc);
                          } else {
                            retValue_acc = 0;
                            return (retValue_acc);
                          }
                        } else {
                          retValue_acc = 0;
                          return (retValue_acc);
                        }
                      } else {
                        retValue_acc = 0;
                        return (retValue_acc);
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
  } else {
    if (currentFloorID == 0) {
      retValue_acc = 0;
      return (retValue_acc);
    } else {

    }
    if (currentFloorID > 0) {
      if (respectFloorCalls) {
        {
        tmp___9 = isFloorCalling(0);
        }
        if (tmp___9) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          goto _L___34;
        }
      } else {
        goto _L___34;
      }
    } else {
      _L___34:
      if (currentFloorID > 0) {
        if (respectInLiftCalls) {
          if (floorButtons_0) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            goto _L___32;
          }
        } else {
          goto _L___32;
        }
      } else {
        _L___32:
        if (currentFloorID > 1) {
          if (respectFloorCalls) {
            {
            tmp___8 = isFloorCalling(1);
            }
            if (tmp___8) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              goto _L___30;
            }
          } else {
            goto _L___30;
          }
        } else {
          _L___30:
          if (currentFloorID > 1) {
            if (respectInLiftCalls) {
              if (floorButtons_1) {
                retValue_acc = 1;
                return (retValue_acc);
              } else {
                goto _L___28;
              }
            } else {
              goto _L___28;
            }
          } else {
            _L___28:
            if (currentFloorID > 2) {
              if (respectFloorCalls) {
                {
                tmp___7 = isFloorCalling(2);
                }
                if (tmp___7) {
                  retValue_acc = 1;
                  return (retValue_acc);
                } else {
                  goto _L___26;
                }
              } else {
                goto _L___26;
              }
            } else {
              _L___26:
              if (currentFloorID > 2) {
                if (respectInLiftCalls) {
                  if (floorButtons_2) {
                    retValue_acc = 1;
                    return (retValue_acc);
                  } else {
                    goto _L___24;
                  }
                } else {
                  goto _L___24;
                }
              } else {
                _L___24:
                if (currentFloorID > 3) {
                  if (respectFloorCalls) {
                    {
                    tmp___6 = isFloorCalling(3);
                    }
                    if (tmp___6) {
                      retValue_acc = 1;
                      return (retValue_acc);
                    } else {
                      goto _L___22;
                    }
                  } else {
                    goto _L___22;
                  }
                } else {
                  _L___22:
                  if (currentFloorID > 3) {
                    if (respectInLiftCalls) {
                      if (floorButtons_3) {
                        retValue_acc = 1;
                        return (retValue_acc);
                      } else {
                        goto _L___20;
                      }
                    } else {
                      goto _L___20;
                    }
                  } else {
                    _L___20:
                    if (currentFloorID > 4) {
                      if (respectFloorCalls) {
                        {
                        tmp___5 = isFloorCalling(4);
                        }
                        if (tmp___5) {
                          retValue_acc = 1;
                          return (retValue_acc);
                        } else {
                          goto _L___18;
                        }
                      } else {
                        goto _L___18;
                      }
                    } else {
                      _L___18:
                      if (currentFloorID > 4) {
                        if (respectInLiftCalls) {
                          if (floorButtons_4) {
                            retValue_acc = 1;
                            return (retValue_acc);
                          } else {
                            retValue_acc = 0;
                            return (retValue_acc);
                          }
                        } else {
                          retValue_acc = 0;
                          return (retValue_acc);
                        }
                      } else {
                        retValue_acc = 0;
                        return (retValue_acc);
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
  return (retValue_acc);
}
}
int isAnyLiftButtonPressed(void)
{ int retValue_acc ;

  {
  if (floorButtons_0) {
    retValue_acc = 1;
    return (retValue_acc);
  } else {
    if (floorButtons_1) {
      retValue_acc = 1;
      return (retValue_acc);
    } else {
      if (floorButtons_2) {
        retValue_acc = 1;
        return (retValue_acc);
      } else {
        if (floorButtons_3) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          if (floorButtons_4) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            retValue_acc = 0;
            return (retValue_acc);
          }
        }
      }
    }
  }
  return (retValue_acc);
}
}
void continueInDirection(int dir )
{ int tmp ;

  {
  currentHeading = dir;
  if (currentHeading == 1) {
    {
    tmp = isTopFloor(currentFloorID);
    }
    if (tmp) {
      currentHeading = 0;
    } else {

    }
  } else {
    if (currentFloorID == 0) {
      currentHeading = 1;
    } else {

    }
  }
  if (currentHeading == 1) {
    currentFloorID = currentFloorID + 1;
  } else {
    currentFloorID = currentFloorID - 1;
  }
  return;
}
}
int stopRequestedAtCurrentFloor(void)
{ int retValue_acc ;
  int tmp ;
  int tmp___0 ;

  {
  {
  tmp___0 = isFloorCalling(currentFloorID);
  }
  if (tmp___0) {
    retValue_acc = 1;
    return (retValue_acc);
  } else {
    {
    tmp = buttonForFloorIsPressed(currentFloorID);
    }
    if (tmp) {
      retValue_acc = 1;
      return (retValue_acc);
    } else {
      retValue_acc = 0;
      return (retValue_acc);
    }
  }
  return (retValue_acc);
}
}
int getReverseHeading(int ofHeading )
{ int retValue_acc ;

  {
  if (ofHeading == 0) {
    retValue_acc = 1;
    return (retValue_acc);
  } else {
    retValue_acc = 0;
    return (retValue_acc);
  }
  return (retValue_acc);
}
}
void processWaitingOnFloor(int floorID )
{ int tmp ;
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
  int tmp___10 ;

  {
  {
  tmp___0 = isPersonOnFloor(0, floorID);
  }
  if (tmp___0) {
    {
    removePersonFromFloor(0, floorID);
    tmp = getDestination(0);
    pressInLiftFloorButton(tmp);
    enterElevator(0);
    }
  } else {

  }
  {
  tmp___2 = isPersonOnFloor(1, floorID);
  }
  if (tmp___2) {
    {
    removePersonFromFloor(1, floorID);
    tmp___1 = getDestination(1);
    pressInLiftFloorButton(tmp___1);
    enterElevator(1);
    }
  } else {

  }
  {
  tmp___4 = isPersonOnFloor(2, floorID);
  }
  if (tmp___4) {
    {
    removePersonFromFloor(2, floorID);
    tmp___3 = getDestination(2);
    pressInLiftFloorButton(tmp___3);
    enterElevator(2);
    }
  } else {

  }
  {
  tmp___6 = isPersonOnFloor(3, floorID);
  }
  if (tmp___6) {
    {
    removePersonFromFloor(3, floorID);
    tmp___5 = getDestination(3);
    pressInLiftFloorButton(tmp___5);
    enterElevator(3);
    }
  } else {

  }
  {
  tmp___8 = isPersonOnFloor(4, floorID);
  }
  if (tmp___8) {
    {
    removePersonFromFloor(4, floorID);
    tmp___7 = getDestination(4);
    pressInLiftFloorButton(tmp___7);
    enterElevator(4);
    }
  } else {

  }
  {
  tmp___10 = isPersonOnFloor(5, floorID);
  }
  if (tmp___10) {
    {
    removePersonFromFloor(5, floorID);
    tmp___9 = getDestination(5);
    pressInLiftFloorButton(tmp___9);
    enterElevator(5);
    }
  } else {

  }
  {
  resetCallOnFloor(floorID);
  }
  return;
}
}
void __utac_acc__Specification1_spec__3(void) ;
void timeShift(void)
{ int tmp ;
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
  {
  tmp___9 = stopRequestedAtCurrentFloor();
  }
  if (tmp___9) {
    doorState = 1;
    if (persons_0) {
      {
      tmp = getDestination(0);
      }
      if (tmp == currentFloorID) {
        {
        leaveElevator(0);
        }
      } else {

      }
    } else {

    }
    if (persons_1) {
      {
      tmp___0 = getDestination(1);
      }
      if (tmp___0 == currentFloorID) {
        {
        leaveElevator(1);
        }
      } else {

      }
    } else {

    }
    if (persons_2) {
      {
      tmp___1 = getDestination(2);
      }
      if (tmp___1 == currentFloorID) {
        {
        leaveElevator(2);
        }
      } else {

      }
    } else {

    }
    if (persons_3) {
      {
      tmp___2 = getDestination(3);
      }
      if (tmp___2 == currentFloorID) {
        {
        leaveElevator(3);
        }
      } else {

      }
    } else {

    }
    if (persons_4) {
      {
      tmp___3 = getDestination(4);
      }
      if (tmp___3 == currentFloorID) {
        {
        leaveElevator(4);
        }
      } else {

      }
    } else {

    }
    if (persons_5) {
      {
      tmp___4 = getDestination(5);
      }
      if (tmp___4 == currentFloorID) {
        {
        leaveElevator(5);
        }
      } else {

      }
    } else {

    }
    {
    processWaitingOnFloor(currentFloorID);
    resetFloorButton(currentFloorID);
    }
  } else {
    if (doorState == 1) {
      doorState = 0;
    } else {

    }
    {
    tmp___8 = stopRequestedInDirection(currentHeading, 1, 1);
    }
    if (tmp___8) {
      {
      continueInDirection(currentHeading);
      }
    } else {
      {
      tmp___6 = getReverseHeading(currentHeading);
      tmp___7 = stopRequestedInDirection(tmp___6, 1, 1);
      }
      if (tmp___7) {
        {
        tmp___5 = getReverseHeading(currentHeading);
        continueInDirection(tmp___5);
        }
      } else {
        {
        continueInDirection(currentHeading);
        }
      }
    }
  }
  {
  __utac_acc__Specification1_spec__3();
  }
  return;
}
}
void printState(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  char const  __cil_tmp6 ;
  char const  __cil_tmp7 ;
  char const  __cil_tmp8 ;
  char const  __cil_tmp9 ;
  char const  __cil_tmp10 ;
  char const  __cil_tmp11 ;
  char const  __cil_tmp12 ;
  char const  __cil_tmp13 ;
  char const  __cil_tmp14 ;
  char const  __cil_tmp15 ;
  char const  __cil_tmp16 ;
  char const  __cil_tmp17 ;
  char const  __cil_tmp18 ;
  char const  __cil_tmp19 ;
  char const  __cil_tmp20 ;
  char const  __cil_tmp21 ;
  char const  __cil_tmp22 ;
  char const  __cil_tmp23 ;
  char const  __cil_tmp24 ;
  char const  __cil_tmp25 ;
  char const  __cil_tmp26 ;

  {
  {
  __cil_tmp6 = (char const  )"Elevator ";
  printf(__cil_tmp6);
  }
  if (doorState) {
    {
    __cil_tmp7 = (char const  )"[_]";
    printf(__cil_tmp7);
    }
  } else {
    {
    __cil_tmp8 = (char const  )"[] ";
    printf(__cil_tmp8);
    }
  }
  {
  __cil_tmp9 = (char const  )" at ";
  printf(__cil_tmp9);
  __cil_tmp10 = (char const  )"%i";
  printf(__cil_tmp10, currentFloorID);
  __cil_tmp11 = (char const  )" heading ";
  printf(__cil_tmp11);
  }
  if (currentHeading) {
    {
    __cil_tmp12 = (char const  )"up";
    printf(__cil_tmp12);
    }
  } else {
    {
    __cil_tmp13 = (char const  )"down";
    printf(__cil_tmp13);
    }
  }
  {
  __cil_tmp14 = (char const  )" IL_p:";
  printf(__cil_tmp14);
  }
  if (floorButtons_0) {
    {
    __cil_tmp15 = (char const  )" %i";
    printf(__cil_tmp15, 0);
    }
  } else {

  }
  if (floorButtons_1) {
    {
    __cil_tmp16 = (char const  )" %i";
    printf(__cil_tmp16, 1);
    }
  } else {

  }
  if (floorButtons_2) {
    {
    __cil_tmp17 = (char const  )" %i";
    printf(__cil_tmp17, 2);
    }
  } else {

  }
  if (floorButtons_3) {
    {
    __cil_tmp18 = (char const  )" %i";
    printf(__cil_tmp18, 3);
    }
  } else {

  }
  if (floorButtons_4) {
    {
    __cil_tmp19 = (char const  )" %i";
    printf(__cil_tmp19, 4);
    }
  } else {

  }
  {
  __cil_tmp20 = (char const  )" F_p:";
  printf(__cil_tmp20);
  tmp = isFloorCalling(0);
  }
  if (tmp) {
    {
    __cil_tmp21 = (char const  )" %i";
    printf(__cil_tmp21, 0);
    }
  } else {

  }
  {
  tmp___0 = isFloorCalling(1);
  }
  if (tmp___0) {
    {
    __cil_tmp22 = (char const  )" %i";
    printf(__cil_tmp22, 1);
    }
  } else {

  }
  {
  tmp___1 = isFloorCalling(2);
  }
  if (tmp___1) {
    {
    __cil_tmp23 = (char const  )" %i";
    printf(__cil_tmp23, 2);
    }
  } else {

  }
  {
  tmp___2 = isFloorCalling(3);
  }
  if (tmp___2) {
    {
    __cil_tmp24 = (char const  )" %i";
    printf(__cil_tmp24, 3);
    }
  } else {

  }
  {
  tmp___3 = isFloorCalling(4);
  }
  if (tmp___3) {
    {
    __cil_tmp25 = (char const  )" %i";
    printf(__cil_tmp25, 4);
    }
  } else {

  }
  {
  __cil_tmp26 = (char const  )"\n";
  printf(__cil_tmp26);
  }
  return;
}
}
int existInLiftCallsInDirection(int d )
{ int retValue_acc ;
  int i ;
  int i___0 ;

  {
  if (d == 1) {
    i = 0;
    i = currentFloorID + 1;
    {
    while (1) {
      while_0_continue: ;
      if (i < 5) {

      } else {
        goto while_0_break;
      }
      if (i == 0) {
        if (floorButtons_0) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          goto _L___2;
        }
      } else {
        _L___2:
        if (i == 1) {
          if (floorButtons_1) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            goto _L___1;
          }
        } else {
          _L___1:
          if (i == 2) {
            if (floorButtons_2) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              goto _L___0;
            }
          } else {
            _L___0:
            if (i == 3) {
              if (floorButtons_3) {
                retValue_acc = 1;
                return (retValue_acc);
              } else {
                goto _L;
              }
            } else {
              _L:
              if (i == 4) {
                if (floorButtons_4) {
                  retValue_acc = 1;
                  return (retValue_acc);
                } else {

                }
              } else {

              }
            }
          }
        }
      }
      i = i + 1;
    }
    while_0_break: ;
    }
  } else {
    if (d == 0) {
      i___0 = 0;
      i___0 = currentFloorID - 1;
      {
      while (1) {
        while_1_continue: ;
        if (i___0 >= 0) {

        } else {
          goto while_1_break;
        }
        i___0 = currentFloorID + 1;
        {
        while (1) {
          while_2_continue: ;
          if (i___0 < 5) {

          } else {
            goto while_2_break;
          }
          if (i___0 == 0) {
            if (floorButtons_0) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              goto _L___6;
            }
          } else {
            _L___6:
            if (i___0 == 1) {
              if (floorButtons_1) {
                retValue_acc = 1;
                return (retValue_acc);
              } else {
                goto _L___5;
              }
            } else {
              _L___5:
              if (i___0 == 2) {
                if (floorButtons_2) {
                  retValue_acc = 1;
                  return (retValue_acc);
                } else {
                  goto _L___4;
                }
              } else {
                _L___4:
                if (i___0 == 3) {
                  if (floorButtons_3) {
                    retValue_acc = 1;
                    return (retValue_acc);
                  } else {
                    goto _L___3;
                  }
                } else {
                  _L___3:
                  if (i___0 == 4) {
                    if (floorButtons_4) {
                      retValue_acc = 1;
                      return (retValue_acc);
                    } else {

                    }
                  } else {

                  }
                }
              }
            }
          }
          i___0 = i___0 + 1;
        }
        while_2_break: ;
        }
        i___0 = i___0 - 1;
      }
      while_1_break: ;
      }
    } else {

    }
  }
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
#pragma merger(0,"Test.i","")
 void exit(int __status ) ;
int cleanupTimeShifts = 12;
int get_nondetMinMax07(void)
{ int retValue_acc ;
  int nd ;
  nd = __VERIFIER_nondet_int();

  {
  if (nd == 0) {
    retValue_acc = 0;
    return (retValue_acc);
  } else {
    if (nd == 1) {
      retValue_acc = 1;
      return (retValue_acc);
    } else {
      if (nd == 2) {
        retValue_acc = 2;
        return (retValue_acc);
      } else {
        if (nd == 3) {
          retValue_acc = 3;
          return (retValue_acc);
        } else {
          if (nd == 4) {
            retValue_acc = 4;
            return (retValue_acc);
          } else {
            if (nd == 5) {
              retValue_acc = 5;
              return (retValue_acc);
            } else {
              if (nd == 6) {
                retValue_acc = 6;
                return (retValue_acc);
              } else {
                if (nd == 7) {
                  retValue_acc = 7;
                  return (retValue_acc);
                } else {
                  {
                  exit(0);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  return (retValue_acc);
}
}
void initPersonOnFloor(int person , int floor ) ;
int getOrigin(int person ) ;
void bobCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(0);
  initPersonOnFloor(0, tmp);
  }
  return;
}
}
void aliceCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(1);
  initPersonOnFloor(1, tmp);
  }
  return;
}
}
void angelinaCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(2);
  initPersonOnFloor(2, tmp);
  }
  return;
}
}
void chuckCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(3);
  initPersonOnFloor(3, tmp);
  }
  return;
}
}
void monicaCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(4);
  initPersonOnFloor(4, tmp);
  }
  return;
}
}
void bigMacCall(void)
{ int tmp ;

  {
  {
  tmp = getOrigin(5);
  initPersonOnFloor(5, tmp);
  }
  return;
}
}
void threeTS(void)
{

  {
  {
  timeShift();
  timeShift();
  timeShift();
  }
  return;
}
}
void cleanup(void)
{ int i ;
  int tmp ;
  int tmp___0 ;
  int __cil_tmp4 ;

  {
  {
  timeShift();
  i = 0;
  }
  {
  while (1) {
    while_3_continue: ;
    {
    __cil_tmp4 = cleanupTimeShifts - 1;
    if (i < __cil_tmp4) {
      {
      tmp___0 = isBlocked();
      }
      if (tmp___0 != 1) {

      } else {
        goto while_3_break;
      }
    } else {
      goto while_3_break;
    }
    }
    {
    tmp = isIdle();
    }
    if (tmp) {
      return;
    } else {
      {
      timeShift();
      }
    }
    i = i + 1;
  }
  while_3_break: ;
  }
  return;
}
}
void randomSequenceOfActions(void)
{ int maxLength ;
  int tmp ;
  int counter ;
  int action ;
  int tmp___0 ;
  int origin ;
  int tmp___1 ;
  int tmp___2 ;

  {
  {
  maxLength = 4;
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp) {
    {
    initTopDown();
    }
  } else {
    {
    initBottomUp();
    }
  }
  counter = 0;
  {
  while (1) {
    while_4_continue: ;
    if (counter < maxLength) {

    } else {
      goto while_4_break;
    }
    {
    counter = counter + 1;
    tmp___0 = get_nondetMinMax07();
    action = tmp___0;
    }
    if (action < 6) {
      {
      tmp___1 = getOrigin(action);
      origin = tmp___1;
      initPersonOnFloor(action, origin);
      }
    } else {
      if (action == 6) {
        {
        timeShift();
        }
      } else {
        if (action == 7) {
          {
          timeShift();
          timeShift();
          timeShift();
          }
        } else {

        }
      }
    }
    {
    tmp___2 = isBlocked();
    }
    if (tmp___2) {
      return;
    } else {

    }
  }
  while_4_break: ;
  }
  {
  cleanup();
  }
  return;
}
}
void runTest_Simple(void)
{

  {
  {
  bigMacCall();
  angelinaCall();
  cleanup();
  }
  return;
}
}
void Specification1(void)
{

  {
  {
  bigMacCall();
  angelinaCall();
  cleanup();
  }
  return;
}
}
void Specification2(void)
{

  {
  {
  bigMacCall();
  cleanup();
  }
  return;
}
}
void Specification3(void)
{

  {
  {
  bobCall();
  timeShift();
  timeShift();
  timeShift();
  timeShift();
  timeShift();
  bobCall();
  cleanup();
  }
  return;
}
}
void setup(void)
{

  {
  return;
}
}
void __utac_acc__Specification1_spec__1(void) ;
void __utac_acc__Specification1_spec__4(void) ;
void test(void) ;
void runTest(void)
{

  {
  {
  __utac_acc__Specification1_spec__1();
  test();
  __utac_acc__Specification1_spec__4();
  }
  return;
}
}
void select_helpers(void) ;
void select_features(void) ;
int valid_product(void) ;
int main(void)
{ int retValue_acc ;
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
    runTest();
    }
  } else {

  }
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
#pragma merger(0,"Floor.i","")
void callOnFloor(int floorID ) ;
int calls_0 ;
int calls_1 ;
int calls_2 ;
int calls_3 ;
int calls_4 ;
int personOnFloor_0_0 ;
int personOnFloor_0_1 ;
int personOnFloor_0_2 ;
int personOnFloor_0_3 ;
int personOnFloor_0_4 ;
int personOnFloor_1_0 ;
int personOnFloor_1_1 ;
int personOnFloor_1_2 ;
int personOnFloor_1_3 ;
int personOnFloor_1_4 ;
int personOnFloor_2_0 ;
int personOnFloor_2_1 ;
int personOnFloor_2_2 ;
int personOnFloor_2_3 ;
int personOnFloor_2_4 ;
int personOnFloor_3_0 ;
int personOnFloor_3_1 ;
int personOnFloor_3_2 ;
int personOnFloor_3_3 ;
int personOnFloor_3_4 ;
int personOnFloor_4_0 ;
int personOnFloor_4_1 ;
int personOnFloor_4_2 ;
int personOnFloor_4_3 ;
int personOnFloor_4_4 ;
int personOnFloor_5_0 ;
int personOnFloor_5_1 ;
int personOnFloor_5_2 ;
int personOnFloor_5_3 ;
int personOnFloor_5_4 ;
void initFloors(void)
{

  {
  calls_0 = 0;
  calls_1 = 0;
  calls_2 = 0;
  calls_3 = 0;
  calls_4 = 0;
  personOnFloor_0_0 = 0;
  personOnFloor_0_1 = 0;
  personOnFloor_0_2 = 0;
  personOnFloor_0_3 = 0;
  personOnFloor_0_4 = 0;
  personOnFloor_1_0 = 0;
  personOnFloor_1_1 = 0;
  personOnFloor_1_2 = 0;
  personOnFloor_1_3 = 0;
  personOnFloor_1_4 = 0;
  personOnFloor_2_0 = 0;
  personOnFloor_2_1 = 0;
  personOnFloor_2_2 = 0;
  personOnFloor_2_3 = 0;
  personOnFloor_2_4 = 0;
  personOnFloor_3_0 = 0;
  personOnFloor_3_1 = 0;
  personOnFloor_3_2 = 0;
  personOnFloor_3_3 = 0;
  personOnFloor_3_4 = 0;
  personOnFloor_4_0 = 0;
  personOnFloor_4_1 = 0;
  personOnFloor_4_2 = 0;
  personOnFloor_4_3 = 0;
  personOnFloor_4_4 = 0;
  personOnFloor_5_0 = 0;
  personOnFloor_5_1 = 0;
  personOnFloor_5_2 = 0;
  personOnFloor_5_3 = 0;
  personOnFloor_5_4 = 0;
  return;
}
}
int isFloorCalling(int floorID )
{ int retValue_acc ;

  {
  if (floorID == 0) {
    retValue_acc = calls_0;
    return (retValue_acc);
  } else {
    if (floorID == 1) {
      retValue_acc = calls_1;
      return (retValue_acc);
    } else {
      if (floorID == 2) {
        retValue_acc = calls_2;
        return (retValue_acc);
      } else {
        if (floorID == 3) {
          retValue_acc = calls_3;
          return (retValue_acc);
        } else {
          if (floorID == 4) {
            retValue_acc = calls_4;
            return (retValue_acc);
          } else {

          }
        }
      }
    }
  }
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
void resetCallOnFloor(int floorID )
{

  {
  if (floorID == 0) {
    calls_0 = 0;
  } else {
    if (floorID == 1) {
      calls_1 = 0;
    } else {
      if (floorID == 2) {
        calls_2 = 0;
      } else {
        if (floorID == 3) {
          calls_3 = 0;
        } else {
          if (floorID == 4) {
            calls_4 = 0;
          } else {

          }
        }
      }
    }
  }
  return;
}
}
void __utac_acc__Specification1_spec__2(int floor ) ;
void callOnFloor(int floorID )
{ int __utac__ad__arg1 ;

  {
  {
  __utac__ad__arg1 = floorID;
  __utac_acc__Specification1_spec__2(__utac__ad__arg1);
  }
  if (floorID == 0) {
    calls_0 = 1;
  } else {
    if (floorID == 1) {
      calls_1 = 1;
    } else {
      if (floorID == 2) {
        calls_2 = 1;
      } else {
        if (floorID == 3) {
          calls_3 = 1;
        } else {
          if (floorID == 4) {
            calls_4 = 1;
          } else {

          }
        }
      }
    }
  }
  return;
}
}
int isPersonOnFloor(int person , int floor )
{ int retValue_acc ;

  {
  if (floor == 0) {
    if (person == 0) {
      retValue_acc = personOnFloor_0_0;
      return (retValue_acc);
    } else {
      if (person == 1) {
        retValue_acc = personOnFloor_1_0;
        return (retValue_acc);
      } else {
        if (person == 2) {
          retValue_acc = personOnFloor_2_0;
          return (retValue_acc);
        } else {
          if (person == 3) {
            retValue_acc = personOnFloor_3_0;
            return (retValue_acc);
          } else {
            if (person == 4) {
              retValue_acc = personOnFloor_4_0;
              return (retValue_acc);
            } else {
              if (person == 5) {
                retValue_acc = personOnFloor_5_0;
                return (retValue_acc);
              } else {

              }
            }
          }
        }
      }
    }
  } else {
    if (floor == 1) {
      if (person == 0) {
        retValue_acc = personOnFloor_0_1;
        return (retValue_acc);
      } else {
        if (person == 1) {
          retValue_acc = personOnFloor_1_1;
          return (retValue_acc);
        } else {
          if (person == 2) {
            retValue_acc = personOnFloor_2_1;
            return (retValue_acc);
          } else {
            if (person == 3) {
              retValue_acc = personOnFloor_3_1;
              return (retValue_acc);
            } else {
              if (person == 4) {
                retValue_acc = personOnFloor_4_1;
                return (retValue_acc);
              } else {
                if (person == 5) {
                  retValue_acc = personOnFloor_5_1;
                  return (retValue_acc);
                } else {

                }
              }
            }
          }
        }
      }
    } else {
      if (floor == 2) {
        if (person == 0) {
          retValue_acc = personOnFloor_0_2;
          return (retValue_acc);
        } else {
          if (person == 1) {
            retValue_acc = personOnFloor_1_2;
            return (retValue_acc);
          } else {
            if (person == 2) {
              retValue_acc = personOnFloor_2_2;
              return (retValue_acc);
            } else {
              if (person == 3) {
                retValue_acc = personOnFloor_3_2;
                return (retValue_acc);
              } else {
                if (person == 4) {
                  retValue_acc = personOnFloor_4_2;
                  return (retValue_acc);
                } else {
                  if (person == 5) {
                    retValue_acc = personOnFloor_5_2;
                    return (retValue_acc);
                  } else {

                  }
                }
              }
            }
          }
        }
      } else {
        if (floor == 3) {
          if (person == 0) {
            retValue_acc = personOnFloor_0_3;
            return (retValue_acc);
          } else {
            if (person == 1) {
              retValue_acc = personOnFloor_1_3;
              return (retValue_acc);
            } else {
              if (person == 2) {
                retValue_acc = personOnFloor_2_3;
                return (retValue_acc);
              } else {
                if (person == 3) {
                  retValue_acc = personOnFloor_3_3;
                  return (retValue_acc);
                } else {
                  if (person == 4) {
                    retValue_acc = personOnFloor_4_3;
                    return (retValue_acc);
                  } else {
                    if (person == 5) {
                      retValue_acc = personOnFloor_5_3;
                      return (retValue_acc);
                    } else {

                    }
                  }
                }
              }
            }
          }
        } else {
          if (floor == 4) {
            if (person == 0) {
              retValue_acc = personOnFloor_0_4;
              return (retValue_acc);
            } else {
              if (person == 1) {
                retValue_acc = personOnFloor_1_4;
                return (retValue_acc);
              } else {
                if (person == 2) {
                  retValue_acc = personOnFloor_2_4;
                  return (retValue_acc);
                } else {
                  if (person == 3) {
                    retValue_acc = personOnFloor_3_4;
                    return (retValue_acc);
                  } else {
                    if (person == 4) {
                      retValue_acc = personOnFloor_4_4;
                      return (retValue_acc);
                    } else {
                      if (person == 5) {
                        retValue_acc = personOnFloor_5_4;
                        return (retValue_acc);
                      } else {

                      }
                    }
                  }
                }
              }
            }
          } else {

          }
        }
      }
    }
  }
  retValue_acc = 0;
  return (retValue_acc);
  return (retValue_acc);
}
}
void initPersonOnFloor(int person , int floor )
{

  {
  if (floor == 0) {
    if (person == 0) {
      personOnFloor_0_0 = 1;
    } else {
      if (person == 1) {
        personOnFloor_1_0 = 1;
      } else {
        if (person == 2) {
          personOnFloor_2_0 = 1;
        } else {
          if (person == 3) {
            personOnFloor_3_0 = 1;
          } else {
            if (person == 4) {
              personOnFloor_4_0 = 1;
            } else {
              if (person == 5) {
                personOnFloor_5_0 = 1;
              } else {

              }
            }
          }
        }
      }
    }
  } else {
    if (floor == 1) {
      if (person == 0) {
        personOnFloor_0_1 = 1;
      } else {
        if (person == 1) {
          personOnFloor_1_1 = 1;
        } else {
          if (person == 2) {
            personOnFloor_2_1 = 1;
          } else {
            if (person == 3) {
              personOnFloor_3_1 = 1;
            } else {
              if (person == 4) {
                personOnFloor_4_1 = 1;
              } else {
                if (person == 5) {
                  personOnFloor_5_1 = 1;
                } else {

                }
              }
            }
          }
        }
      }
    } else {
      if (floor == 2) {
        if (person == 0) {
          personOnFloor_0_2 = 1;
        } else {
          if (person == 1) {
            personOnFloor_1_2 = 1;
          } else {
            if (person == 2) {
              personOnFloor_2_2 = 1;
            } else {
              if (person == 3) {
                personOnFloor_3_2 = 1;
              } else {
                if (person == 4) {
                  personOnFloor_4_2 = 1;
                } else {
                  if (person == 5) {
                    personOnFloor_5_2 = 1;
                  } else {

                  }
                }
              }
            }
          }
        }
      } else {
        if (floor == 3) {
          if (person == 0) {
            personOnFloor_0_3 = 1;
          } else {
            if (person == 1) {
              personOnFloor_1_3 = 1;
            } else {
              if (person == 2) {
                personOnFloor_2_3 = 1;
              } else {
                if (person == 3) {
                  personOnFloor_3_3 = 1;
                } else {
                  if (person == 4) {
                    personOnFloor_4_3 = 1;
                  } else {
                    if (person == 5) {
                      personOnFloor_5_3 = 1;
                    } else {

                    }
                  }
                }
              }
            }
          }
        } else {
          if (floor == 4) {
            if (person == 0) {
              personOnFloor_0_4 = 1;
            } else {
              if (person == 1) {
                personOnFloor_1_4 = 1;
              } else {
                if (person == 2) {
                  personOnFloor_2_4 = 1;
                } else {
                  if (person == 3) {
                    personOnFloor_3_4 = 1;
                  } else {
                    if (person == 4) {
                      personOnFloor_4_4 = 1;
                    } else {
                      if (person == 5) {
                        personOnFloor_5_4 = 1;
                      } else {

                      }
                    }
                  }
                }
              }
            }
          } else {

          }
        }
      }
    }
  }
  {
  callOnFloor(floor);
  }
  return;
}
}
void removePersonFromFloor(int person , int floor )
{

  {
  if (floor == 0) {
    if (person == 0) {
      personOnFloor_0_0 = 0;
    } else {
      if (person == 1) {
        personOnFloor_1_0 = 0;
      } else {
        if (person == 2) {
          personOnFloor_2_0 = 0;
        } else {
          if (person == 3) {
            personOnFloor_3_0 = 0;
          } else {
            if (person == 4) {
              personOnFloor_4_0 = 0;
            } else {
              if (person == 5) {
                personOnFloor_5_0 = 0;
              } else {

              }
            }
          }
        }
      }
    }
  } else {
    if (floor == 1) {
      if (person == 0) {
        personOnFloor_0_1 = 0;
      } else {
        if (person == 1) {
          personOnFloor_1_1 = 0;
        } else {
          if (person == 2) {
            personOnFloor_2_1 = 0;
          } else {
            if (person == 3) {
              personOnFloor_3_1 = 0;
            } else {
              if (person == 4) {
                personOnFloor_4_1 = 0;
              } else {
                if (person == 5) {
                  personOnFloor_5_1 = 0;
                } else {

                }
              }
            }
          }
        }
      }
    } else {
      if (floor == 2) {
        if (person == 0) {
          personOnFloor_0_2 = 0;
        } else {
          if (person == 1) {
            personOnFloor_1_2 = 0;
          } else {
            if (person == 2) {
              personOnFloor_2_2 = 0;
            } else {
              if (person == 3) {
                personOnFloor_3_2 = 0;
              } else {
                if (person == 4) {
                  personOnFloor_4_2 = 0;
                } else {
                  if (person == 5) {
                    personOnFloor_5_2 = 0;
                  } else {

                  }
                }
              }
            }
          }
        }
      } else {
        if (floor == 3) {
          if (person == 0) {
            personOnFloor_0_3 = 0;
          } else {
            if (person == 1) {
              personOnFloor_1_3 = 0;
            } else {
              if (person == 2) {
                personOnFloor_2_3 = 0;
              } else {
                if (person == 3) {
                  personOnFloor_3_3 = 0;
                } else {
                  if (person == 4) {
                    personOnFloor_4_3 = 0;
                  } else {
                    if (person == 5) {
                      personOnFloor_5_3 = 0;
                    } else {

                    }
                  }
                }
              }
            }
          }
        } else {
          if (floor == 4) {
            if (person == 0) {
              personOnFloor_0_4 = 0;
            } else {
              if (person == 1) {
                personOnFloor_1_4 = 0;
              } else {
                if (person == 2) {
                  personOnFloor_2_4 = 0;
                } else {
                  if (person == 3) {
                    personOnFloor_3_4 = 0;
                  } else {
                    if (person == 4) {
                      personOnFloor_4_4 = 0;
                    } else {
                      if (person == 5) {
                        personOnFloor_5_4 = 0;
                      } else {

                      }
                    }
                  }
                }
              }
            }
          } else {

          }
        }
      }
    }
  }
  {
  resetCallOnFloor(floor);
  }
  return;
}
}
int isTopFloor(int floorID )
{ int retValue_acc ;

  {
  retValue_acc = floorID == 4;
  return (retValue_acc);
  return (retValue_acc);
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
    while_5_continue: ;
    {
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
    __cil_tmp8 = (unsigned long )__cil_tmp7;
    __cil_tmp9 = (unsigned long )cf;
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_5_break;
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
  while_5_break: ;
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
    while_6_continue: ;
    {
    __cil_tmp7 = (struct __UTAC__CFLOW_FUNC *)0;
    __cil_tmp8 = (unsigned long )__cil_tmp7;
    __cil_tmp9 = (unsigned long )cf;
    if (__cil_tmp9 != __cil_tmp8) {

    } else {
      goto while_6_break;
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
  while_6_break: ;
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
      while_7_continue: ;
      if (count > 1) {

      } else {
        goto while_7_break;
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
    while_7_break: ;
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
#pragma merger(0,"scenario.i","")
void test(void)
{

  {
  {
  bigMacCall();
  angelinaCall();
  cleanup();
  }
  return;
}
}
#pragma merger(0,"UnitTests.i","")
void spec1(void)
{ int tmp ;
  int tmp___0 ;
  int i ;
  int tmp___1 ;

  {
  {
  initBottomUp();
  tmp = getOrigin(5);
  initPersonOnFloor(5, tmp);
  printState();
  tmp___0 = getOrigin(2);
  initPersonOnFloor(2, tmp___0);
  printState();
  i = 0;
  }
  {
  while (1) {
    while_8_continue: ;
    if (i < cleanupTimeShifts) {
      {
      tmp___1 = isBlocked();
      }
      if (tmp___1 != 1) {

      } else {
        goto while_8_break;
      }
    } else {
      goto while_8_break;
    }
    {
    timeShift();
    printState();
    i = i + 1;
    }
  }
  while_8_break: ;
  }
  return;
}
}
void spec14(void)
{ int tmp ;
  int tmp___0 ;
  int i ;
  int tmp___1 ;

  {
  {
  initTopDown();
  tmp = getOrigin(5);
  initPersonOnFloor(5, tmp);
  printState();
  timeShift();
  timeShift();
  timeShift();
  timeShift();
  tmp___0 = getOrigin(0);
  initPersonOnFloor(0, tmp___0);
  printState();
  i = 0;
  }
  {
  while (1) {
    while_9_continue: ;
    if (i < cleanupTimeShifts) {
      {
      tmp___1 = isBlocked();
      }
      if (tmp___1 != 1) {

      } else {
        goto while_9_break;
      }
    } else {
      goto while_9_break;
    }
    {
    timeShift();
    printState();
    i = i + 1;
    }
  }
  while_9_break: ;
  }
  return;
}
}
#pragma merger(0,"Person.i","")
int getWeight(int person ) ;
int getWeight(int person )
{ int retValue_acc ;

  {
  if (person == 0) {
    retValue_acc = 40;
    return (retValue_acc);
  } else {
    if (person == 1) {
      retValue_acc = 40;
      return (retValue_acc);
    } else {
      if (person == 2) {
        retValue_acc = 40;
        return (retValue_acc);
      } else {
        if (person == 3) {
          retValue_acc = 40;
          return (retValue_acc);
        } else {
          if (person == 4) {
            retValue_acc = 30;
            return (retValue_acc);
          } else {
            if (person == 5) {
              retValue_acc = 150;
              return (retValue_acc);
            } else {
              retValue_acc = 0;
              return (retValue_acc);
            }
          }
        }
      }
    }
  }
  return (retValue_acc);
}
}
int getOrigin(int person )
{ int retValue_acc ;

  {
  if (person == 0) {
    retValue_acc = 4;
    return (retValue_acc);
  } else {
    if (person == 1) {
      retValue_acc = 3;
      return (retValue_acc);
    } else {
      if (person == 2) {
        retValue_acc = 2;
        return (retValue_acc);
      } else {
        if (person == 3) {
          retValue_acc = 1;
          return (retValue_acc);
        } else {
          if (person == 4) {
            retValue_acc = 0;
            return (retValue_acc);
          } else {
            if (person == 5) {
              retValue_acc = 1;
              return (retValue_acc);
            } else {
              retValue_acc = 0;
              return (retValue_acc);
            }
          }
        }
      }
    }
  }
  return (retValue_acc);
}
}
int getDestination(int person )
{ int retValue_acc ;

  {
  if (person == 0) {
    retValue_acc = 0;
    return (retValue_acc);
  } else {
    if (person == 1) {
      retValue_acc = 0;
      return (retValue_acc);
    } else {
      if (person == 2) {
        retValue_acc = 1;
        return (retValue_acc);
      } else {
        if (person == 3) {
          retValue_acc = 3;
          return (retValue_acc);
        } else {
          if (person == 4) {
            retValue_acc = 1;
            return (retValue_acc);
          } else {
            if (person == 5) {
              retValue_acc = 3;
              return (retValue_acc);
            } else {
              retValue_acc = 0;
              return (retValue_acc);
            }
          }
        }
      }
    }
  }
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
#pragma merger(0,"Specification1_spec.i","")
int landingButtons_spc1_0 ;
int landingButtons_spc1_1 ;
int landingButtons_spc1_2 ;
int landingButtons_spc1_3 ;
int landingButtons_spc1_4 ;
void __utac_acc__Specification1_spec__1(void)
{

  {
  landingButtons_spc1_0 = 0;
  landingButtons_spc1_1 = 0;
  landingButtons_spc1_2 = 0;
  landingButtons_spc1_3 = 0;
  landingButtons_spc1_4 = 0;
  return;
}
}
void __utac_acc__Specification1_spec__2(int floor )
{

  {
  if (floor == 0) {
    landingButtons_spc1_0 = 1;
  } else {
    if (floor == 1) {
      landingButtons_spc1_1 = 1;
    } else {
      if (floor == 2) {
        landingButtons_spc1_2 = 1;
      } else {
        if (floor == 3) {
          landingButtons_spc1_3 = 1;
        } else {
          if (floor == 4) {
            landingButtons_spc1_4 = 1;
          } else {

          }
        }
      }
    }
  }
  return;
}
}
void __utac_acc__Specification1_spec__3(void)
{ int floor ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;

  {
  {
  tmp = getCurrentFloorID();
  floor = tmp;
  }
  if (floor == 0) {
    if (landingButtons_spc1_0) {
      {
      tmp___4 = areDoorsOpen();
      }
      if (tmp___4) {
        landingButtons_spc1_0 = 0;
      } else {
        goto _L___6;
      }
    } else {
      goto _L___6;
    }
  } else {
    _L___6:
    if (floor == 1) {
      if (landingButtons_spc1_1) {
        {
        tmp___3 = areDoorsOpen();
        }
        if (tmp___3) {
          landingButtons_spc1_1 = 0;
        } else {
          goto _L___4;
        }
      } else {
        goto _L___4;
      }
    } else {
      _L___4:
      if (floor == 2) {
        if (landingButtons_spc1_2) {
          {
          tmp___2 = areDoorsOpen();
          }
          if (tmp___2) {
            landingButtons_spc1_2 = 0;
          } else {
            goto _L___2;
          }
        } else {
          goto _L___2;
        }
      } else {
        _L___2:
        if (floor == 3) {
          if (landingButtons_spc1_3) {
            {
            tmp___1 = areDoorsOpen();
            }
            if (tmp___1) {
              landingButtons_spc1_3 = 0;
            } else {
              goto _L___0;
            }
          } else {
            goto _L___0;
          }
        } else {
          _L___0:
          if (floor == 4) {
            if (landingButtons_spc1_4) {
              {
              tmp___0 = areDoorsOpen();
              }
              if (tmp___0) {
                landingButtons_spc1_4 = 0;
              } else {

              }
            } else {

            }
          } else {

          }
        }
      }
    }
  }
  return;
}
}
void __utac_acc__Specification1_spec__4(void)
{

  {
  if (landingButtons_spc1_0) {
    {
    __automaton_fail();
    }
  } else {
    if (landingButtons_spc1_1) {
      {
      __automaton_fail();
      }
    } else {
      if (landingButtons_spc1_2) {
        {
        __automaton_fail();
        }
      } else {
        if (landingButtons_spc1_3) {
          {
          __automaton_fail();
          }
        } else {
          if (landingButtons_spc1_4) {
            {
            __automaton_fail();
            }
          } else {

          }
        }
      }
    }
  }
  return;
}
}
