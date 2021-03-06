/* Header for module PNP2, generated by p2c */
#ifndef PNP2_H
#define PNP2_H


#ifndef LOGDEF_H
#include "logdef.h"
#endif

#ifndef NSOLVER_H
#include "nsolver.h"
#endif

#ifndef GLOBALS_H
#include "globals.h"
#endif

#ifndef MYLIB_H
#include <p2c/mylib.h>
#endif

#ifndef NEWASM_H
#include <p2c/newasm.h>
#endif

#ifndef SYSGLOBALS_H
#include <p2c/sysglobals.h>
#endif

#ifndef NEWCI_H
#include <p2c/newci.h>
#endif


#ifdef PNP2_G
# define vextern
#else
# define vextern extern
#endif


/*$If Float$
  $float_hdw on$
  $End$*/



extern Void Log_PNP2_INITLIB_32 PP((Analog_32_action *act));


#undef vextern

#endif /*PNP2_H*/

/* End. */
