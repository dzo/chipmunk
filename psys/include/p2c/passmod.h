/* Header for module PasswordMod, generated by p2c */
#ifndef PASSWORDMOD_H
#define PASSWORDMOD_H



#ifndef SYSGLOBALS_H
#include <p2c/sysglobals.h>
#endif

#ifndef STRINGS_H
#include <p2c/strings.h>
#endif



#ifdef PASSWORDMOD_G
# define vextern
#else
# define vextern extern
#endif



/*but see later Import*/
/*******************************************************************/
/* Caged_Date="R        PasswordDateConst='$d $N $Y';" */
#define mam_PasswordDateConst "25 Aug 1986"
#define mam_FileFormatVersion "1"



/*Date string*/
/*Password (no <>) of home directory*/
/*Default SRM volume (usually 5)*/
/*Program to run*/
#define mam_MaxSRMs     12



/*No more than 6 SRMs on a system, oh no*/
/*Really 1..MaxSRMs*/

typedef Char mam_SRMnameArray[mam_MaxSRMs][vidleng + 1];

typedef char mam_SRMnameList[50];



vextern Char mam_PasswordDate[vidleng + 1];
vextern _PROCEDURE mam_SRMsetPrefixHook;
vextern boolean mam_PatchActive, mam_Verbose, mam_NoLowerCase, mam_AutoSRM;
vextern Char mam_HomePassword[tidleng + 1];
vextern char mam_DefaultSRM;
vextern Char mam_PasswordProgram[fidleng + 1];
vextern char mam_NumSRMs;
vextern Char (*mam_SRMnames)[vidleng + 1];
vextern char *mam_VolSRMs;



/*How many SRMs actually online*/
/*names of SRM units*/
/*SRM number for each volume*/
extern Void mam_InitDate PV();
extern long mam_NumPasswords PV();
extern Void mam_SpaceLeft PP((long *prefChars, long *maxPrefChars,
			      long *passChars, long *passNames,
			      long *maxPassNames, long *aliaschars,
			      long *aliasnames, long *maxAliasNames));
extern Void mam_InitPrefixTable PP((long maxChars));
extern boolean mam_ReadWD PP((long vol, Char *path, Char *rootname));
extern long mam_ReadPrefix PP((long vol, int verbose));
extern Void mam_ReadPrefixes PP((int verbose));
extern Char *mam_VolumePrefix PP((long vol));
extern Char *mam_VolumeSRM PP((long vol));
extern boolean mam_StorePrefix PP((long vol, Char *prefix));
extern Void mam_SuperUser PP((Char *vp));
extern Void mam_PushSU PP((Char *vp));
extern Void mam_PopSU PV();
extern Char *mam_HomePath PP((Char *mam_Result));
extern Void mam_ParseTwiddle PP((Char *name));
extern Void mam_AddPrefix PP((long vol, Char *name));
extern Void mam_StripPasswords PP((Char *name));
extern Void mam_InitPathAliases PP((long maxChars, long maxNum));
extern Void mam_ClearPathAliases PV();
extern long mam_NumPathAliases PV();
extern boolean mam_SetPathAlias PP((Char *alias, Char *path));
extern Void mam_PathAliasAt PP((long index, Char *alias, Char *path));
extern Char *mam_GetPathAlias PP((Char *mam_Result, Char *alias, long len));
extern Void mam_InitPasswords PP((long maxChars, long maxPass));
extern Void mam_ClearPasswords PV();
extern Void mam_PasswordAt PP((long index, long *SRM, Char *name,
			       Char *password));
extern Void mam_RemovePassword PP((long vol, Char *filename));
extern boolean mam_SetPassword PP((long vol, Char *filename, long len,
				   Char *password));
extern Char *mam_GetPassword PP((Char *mam_Result, long vol, Char *name,
				 long len));
extern Void mam_ParseDots PP((long vol, Char *name, int keepPrefix,
			      long *nameStart));
extern Void mam_ExpandName PP((Char *name, long *SRM, long *vol));
extern Void mam_AddPasswords PP((long vol, int storeAll, Char *name,
				 Char *newname, long newmax));
extern Void SRM_DAM_Patch PP((fib *f, int vol, damrequesttype *request));
extern Void New_ZapSpaces PP((Char *st));
extern boolean mam_GetSystem PP((Char *name, short *sys));
extern Void mam_GetSRM PP((Char *name, long *SRM, long *vol));
extern boolean mam_PutSRM PP((long SRM, Char *name));
extern Void mam_SRMfromFilename PP((Char *name, Char *SRMname));
extern Void mam_SRMtoVolNum PP((Char *name));
extern long mam_ReadPasswordFile PP((Char *name, Char *path, long sys));
extern long mam_WritePasswordFile PP((Char *name, Char *path));
extern Void mam_InitRoots PV();
extern Void mam_FindWhere PP((int system, Char *fn, long *vol));
extern Void mam_UserInit PP((Char *path));



#undef vextern

#endif /*PASSWORDMOD_H*/

/* End. */

