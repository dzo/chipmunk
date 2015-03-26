# 1 "log.c"
 
 
  

 






















 
















# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\unistd.h" 1 3
 






# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\io.h" 1 3
 






























 
# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\_mingw.h" 1 3
 
























 















    











# 33 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\io.h" 2 3


 
# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdio.h" 1 3
 
































 







# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 

# 161 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 

 


































typedef unsigned int size_t;





















 




 





























 


























typedef short unsigned int wchar_t;
























typedef unsigned int  wint_t;




 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 





















# 42 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdio.h" 2 3




 




 







 


 








 





 








 








 





 

















 






typedef	char* va_list;


 








typedef struct _iobuf
{
	char*	_ptr;
	int	_cnt;
	char*	_base;
	int	_flag;
	int	_file;
	int	_charbuf;
	int	_bufsiz;
	char*	_tmpfname;
} FILE;



 










__attribute__((dllimport)) extern  FILE _iob[];	 











 



FILE*	fopen (const char* szFileName, const char* szMode);
FILE*	freopen (const char* szNewFileName, const char* szNewMode,
		 FILE* fileChangeAssociation);
int	fflush (FILE* fileFlush);
int	fclose (FILE* fileClose);
int	remove (const char* szFileName);
int	rename (const char* szOldFileName, const char* szNewFileName);
FILE*	tmpfile ();
char*	tmpnam (char caName[]);
char*	_tempnam (const char* szPath, const char* szPrefix);


char*	tempnam (const char* szPath, const char* szPrefix);


int	setvbuf (FILE* fileSetBuffer, char* caBuffer, int nMode,
		 size_t sizeBuffer);

void	setbuf (FILE* fileSetBuffer, char* caBuffer);

 



int	fprintf (FILE* filePrintTo, const char* szFormat, ...);
int	printf (const char* szFormat, ...);
int	sprintf (char* caBuffer, const char* szFormat, ...);
int	vfprintf (FILE* filePrintTo, const char* szFormat, va_list varg);
int	vprintf (const char* szFormat, va_list varg);
int	vsprintf (char* caBuffer, const char* szFormat, va_list varg);

 
int	fwprintf (FILE* filePrintTo, const wchar_t* wsFormat, ...);
int	wprintf (const wchar_t* wsFormat, ...);
int	swprintf (wchar_t* wcaBuffer, const wchar_t* wsFormat, ...);
int	vfwprintf (FILE* filePrintTo, const wchar_t* wsFormat, va_list varg);
int	vwprintf (const wchar_t* wsFormat, va_list varg);
int	vswprintf (wchar_t* wcaBuffer, const wchar_t* wsFormat, va_list varg);

 



int	fscanf (FILE* fileReadFrom, const char* szFormat, ...);
int	scanf (const char* szFormat, ...);
int	sscanf (const char* szReadFrom, const char* szFormat, ...);

 
int	fwscanf (FILE* fileReadFrom, const wchar_t* wsFormat, ...);
int	wscanf (const wchar_t* wsFormat, ...);
int	swscanf (wchar_t* wsReadFrom, const wchar_t* wsFormat, ...);

 



int	fgetc (FILE* fileRead);
char*	fgets (char* caBuffer, int nBufferSize, FILE* fileRead);
int	fputc (int c, FILE* fileWrite);
int	fputs (const char* szOutput, FILE* fileWrite);
int	getc (FILE* fileRead);
int	getchar ();
char*	gets (char* caBuffer);	 

int	putc (int c, FILE* fileWrite);
int	putchar (int c);
int	puts (const char* szOutput);
int	ungetc (int c, FILE* fileWasRead);

 
wint_t	fgetwc (FILE* fileRead);
wint_t	fputwc (wchar_t wc, FILE* fileWrite);
wint_t	ungetwc (wchar_t wc, FILE* fileWasRead);


 


# 265 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdio.h" 3


 


 



size_t	fread (void* pBuffer, size_t sizeObject, size_t sizeObjCount,
		FILE* fileRead);
size_t	fwrite (const void* pObjArray, size_t sizeObject, size_t sizeObjCount,
		FILE* fileWrite);


 



int	fseek	(FILE* fileSetPosition, long lnOffset, int nOrigin);
long	ftell	(FILE* fileGetPosition);
void	rewind	(FILE* fileRewind);

 







typedef long	fpos_t;

int	fgetpos	(FILE* fileGetPosition, fpos_t* pfpos);
int	fsetpos (FILE* fileSetPosition, fpos_t* pfpos);

 



void	clearerr (FILE* fileClearErrors);
int	feof (FILE* fileIsAtEnd);
int	ferror (FILE* fileIsError);
void	perror (const char* szErrorMessage);




 


FILE*	_popen (const char* szPipeName, const char* szMode);
int	_pclose (FILE* pipeClose);


FILE*	popen (const char* szPipeName, const char* szMode);
int	pclose (FILE* pipeClose);


 

# 343 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdio.h" 3


 


int	_fgetchar ();
int	_fputchar (int c);
FILE*	_fdopen (int nHandle, const char* szMode);
wint_t	_fgetwchar(void);
wint_t	_fputwchar(wint_t c);
int	_fileno (FILE* fileGetHandle);
int	_getw (FILE*);
int	_putw (int, FILE*);


int	fgetchar ();
int	fputchar (int c);
FILE*	fdopen (int nHandle, const char* szMode);
wint_t	fgetwchar(void);
wint_t	fputwchar(wint_t c);
int	fileno (FILE* fileGetHandle);
int	getw (FILE*);
int	putw (int, FILE*);











# 36 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\io.h" 2 3


 




# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\sys\\types.h" 1 3
 





























 






# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 





















typedef int ptrdiff_t;









 




 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




# 312 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 





















# 38 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\sys\\types.h" 2 3







typedef	long	time_t;







typedef long _off_t;


typedef _off_t	off_t;









typedef short _dev_t;



typedef _dev_t	dev_t;






typedef short _ino_t;


typedef _ino_t	ino_t;






typedef int	_pid_t;


typedef _pid_t	pid_t;






typedef unsigned short _mode_t;


typedef _mode_t	mode_t;






typedef int	_sigset_t;


typedef _sigset_t	sigset_t;








# 43 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\io.h" 2 3


 














typedef	unsigned long	_fsize_t;



 



struct _finddata_t
{
	unsigned	attrib;		 
	time_t		time_create;
	time_t		time_access;	 
	time_t		time_write;
	_fsize_t	size;
	char		name[(260) ];	 
};





 





int	_findfirst (const char* szFilespec, struct _finddata_t* find);
int	_findnext (int nHandle, struct _finddata_t* find);
int	_findclose (int nHandle);

int	_chdir (const char* szPath);
char*	_getcwd (char* caBuffer, int nBufferSize);
int	_mkdir (const char* szPath);
char*	_mktemp (char* szTemplate);
int	_rmdir (const char* szPath);





int	chdir (const char* szPath);
char*	getcwd (char* caBuffer, int nBufferSize);
int	mkdir (const char* szPath);
char*	mktemp (char* szTemplate);
int	rmdir (const char* szPath);












 




 












int		_access (const char* szFileName, int nAccessMode);
int		_chsize (int nHandle, long lnNewSize);
int		_close (int nHandle);

 

int		_creat (const char* szFileName, unsigned unPermissions);

int		_dup (int nHandle);
int		_dup2 (int nOldHandle, int nNewHandle);
long		_filelength (int nHandle);
int		_fileno (FILE* fileGetHandle);
long		_get_osfhandle (int nHandle);
int		_isatty (int nHandle);

 





int		_eof (int nHandle);


 
int		_locking (int nHandle, int nCmd, long lnLockRegionLength);

long		_lseek (int nHandle, long lnOffset, int nOrigin);

 
int		_open (const char* szFileName, int nFlags, ...);

int		_open_osfhandle (long lnOSHandle, int nFlags);
int		_pipe (int *naHandles, unsigned int unSize, int nMode);
int		_read (int nHandle, void* caBuffer, unsigned int nToRead);

 

int		_sopen (char* szFileName, int nFlags, int nShFlags, ...);

long		_tell (int nHandle);
 
int		_umask (int nMode);
int		_unlink (const char* szFileName);
int		_write (int nHandle, const void* caBuffer,
		        unsigned int unToWrite);



 





int		access (const char* szFileName, int nAccessMode);
int		chsize (int nHandle, long lnNewSize);
int		close (int nHandle);
int		creat (const char* szFileName, int nAccessMode);
int		dup (int nHandle);
int		dup2 (int nOldHandle, int nNewHandle);
int		eof (int nHandle);
long		filelength (int nHandle);
int		fileno (FILE* fileGetHandle);
int		isatty (int nHandle);
long		lseek (int nHandle, long lnOffset, int nOrigin);
int		open (const char* szFileName, int nFlags, ...);
int		read (int nHandle, void* caBuffer, unsigned int nToRead);
int		sopen (char* szFileName, int nAccess, int nFlag, ...);
long		tell (int nHandle);
int		umask (int nMode);
int		unlink (const char* szFileName);
int		write (int nHandle, const void* caBuffer,
		       unsigned int nToWrite);














# 8 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\unistd.h" 2 3



# 45 "log.c" 2


# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\time.h" 1 3
 




























 





# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 

# 161 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




# 312 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 





















# 36 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\time.h" 2 3



 




 









 









 




typedef	long	clock_t;



 



struct tm
{
	int	tm_sec;		 
	int	tm_min;		 
	int	tm_hour;	 
	int	tm_mday;	 
	int	tm_mon;		 
	int	tm_year;	 
	int	tm_wday;	 
	int	tm_yday;	 
	int	tm_isdst;	 

};





clock_t	clock ();
time_t	time (time_t* tp);
double	difftime (time_t t2, time_t t1);
time_t	mktime (struct tm* tmsp);

 









char*		asctime (const struct tm* tmsp);
char*		ctime (const time_t* tp);
struct tm*	gmtime (const time_t* tm);
struct tm*	localtime (const time_t* tm);


size_t	strftime (char* caBuffer, size_t sizeMax, const char* szFormat,
		  const struct tm* tpPrint);

size_t	wcsftime (wchar_t* wcaBuffer, size_t sizeMax,
		  const wchar_t* wsFormat, const struct tm* tpPrint);


extern void	_tzset (void);


extern void	tzset (void);




 





# 149 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\time.h" 3


# 161 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\time.h" 3


__attribute__((dllimport)) extern  int	_daylight_dll;
__attribute__((dllimport)) extern  long	_timezone_dll;
__attribute__((dllimport)) extern  char*	_tzname[2];










 











# 47 "log.c" 2








# 1 "..\\..\\psys\\include\\p2c\\p2c.h" 1




 

 




# 20 "..\\..\\psys\\include\\p2c\\p2c.h"

  






 




















# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 







 

 






 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 


# 156 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 




 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3
















 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 













 







# 49 "..\\..\\psys\\include\\p2c\\p2c.h" 2

# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdlib.h" 1 3
 




























 


 





 





 


























 





extern int	_argc;
extern char**	_argv;

 


















__attribute__((dllimport)) extern  int    __argc_dll;
__attribute__((dllimport)) extern  char**  __argv_dll;







 







int*	_errno();


int*	__doserrno();


 











     __attribute__((dllimport)) extern  char ** _environ_dll;






# 155 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdlib.h" 3


 





__attribute__((dllimport)) extern  int	_sys_nerr_dll;









__attribute__((dllimport)) extern  char*	_sys_errlist[];





 




# 197 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdlib.h" 3

 

# 212 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdlib.h" 3


__attribute__((dllimport)) extern  unsigned int	_osver_dll;
__attribute__((dllimport)) extern  unsigned int	_winver_dll;
__attribute__((dllimport)) extern  unsigned int	_winmajor_dll;
__attribute__((dllimport)) extern  unsigned int	_winminor_dll;
















# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 


# 156 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 




 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3
















 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 













 







# 234 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stdlib.h" 2 3








double	atof	(const char* szNumber);
int	atoi	(const char* szNumber);
long	atol	(const char* szNumber);


double	strtod	(const char* szNumber, char** pszAfterNumber);
double	wcstod	(const wchar_t* wsNumber, wchar_t** pwsAfterNumber);
long	strtol	(const char* szNumber, char** pszAfterNumber, int nBase);
long	wcstol	(const wchar_t* wsNumber, wchar_t** pwsAfterNumber, int nBase);

unsigned long	strtoul	(const char* szNumber, char** pszAfterNumber,
			int nBase);
unsigned long	wcstoul (const wchar_t* wsNumber, wchar_t** pwsAfterNumber,
			int nBase);

size_t	wcstombs	(char* mbsDest, const wchar_t* wsConvert, size_t size);
int	wctomb		(char* mbDest, wchar_t wc);

int	mblen		(const char* mbs, size_t sizeString);
size_t	mbstowcs	(wchar_t* wcaDest, const char* mbsConvert,
			 size_t size);
int	mbtowc		(wchar_t* wcDest, const char* mbConvert, size_t size);

int	rand	();
void	srand	(unsigned int nSeed);

void*	calloc	(size_t sizeObjCnt, size_t sizeObject);
void*	malloc	(size_t	sizeObject);
void*	realloc	(void* pObject, size_t sizeNew);
void	free	(void* pObject);

void	abort	() __attribute__ ((noreturn)) ;
void	exit	(int nStatus) __attribute__ ((noreturn)) ;
int	atexit	(void (*pfuncExitProcessing)(void));

int	system	(const char* szCommand);
char*	getenv	(const char* szVarName);

typedef	int (*_pfunccmp_t)(const void*, const void*);

void*	bsearch	(const void* pKey, const void* pBase, size_t cntObjects,
		size_t sizeObject, _pfunccmp_t pfuncCmp);
void	qsort	(const void* pBase, size_t cntObjects, size_t sizeObject,
		_pfunccmp_t pfuncCmp);

int	abs	(int n);
long	labs	(long n);

 







typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

div_t	div	(int nNumerator, int nDenominator);
ldiv_t	ldiv	(long lNumerator, long lDenominator);




 



void	_beep (unsigned int, unsigned int);
void	_seterrormode (int nMode);
void	_sleep (unsigned long ulTime);

void	_exit	(int nStatus) __attribute__ ((noreturn)) ;

int	_putenv	(const char* szNameEqValue);
void	_searchenv (const char* szFileName, const char* szVar,
		char* szFullPathBuf);

char*	_itoa (int nValue, char* sz, int nRadix);
char*	_ltoa (long lnValue, char* sz, int nRadix);

char*	_ecvt (double dValue, int nDig, int* pnDec, int* pnSign);
char*	_fcvt (double dValue, int nDig, int* pnDec, int* pnSign);
char*	_gcvt (double dValue, int nDec, char* caBuf);

void	_makepath (char* caPath, const char* szDrive, const char* szDir,
		const char* szName, const char* szExtension);
void	_splitpath (const char* szPath, char* caDrive, char* caDir,
		char* caName, char* caExtension);
char*	_fullpath (char* caBuf, const char* szPath, size_t sizeMax);



void	beep (unsigned int, unsigned int);
void	seterrormode (int nMode);
void	sleep (unsigned long ulTime);


int	putenv (const char* szNameEqValue);
void	searchenv (const char* szFileName, const char* szVar,
		char* szFullPathBuf);

char*	itoa (int nValue, char* sz, int nRadix);
char*	ltoa (long lnValue, char* sz, int nRadix);


char*	ecvt (double dValue, int nDig, int* pnDec, int* pnSign);
char*	fcvt (double dValue, int nDig, int* pnDec, int* pnSign);
char*	gcvt (double dValue, int nDec, char* caBuf);





 












# 50 "..\\..\\psys\\include\\p2c\\p2c.h" 2



# 66 "..\\..\\psys\\include\\p2c\\p2c.h"





  

# 85 "..\\..\\psys\\include\\p2c\\p2c.h"

# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\string.h" 1 3
 




























 


 






# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 


# 156 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 




 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3
















 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 













 







# 40 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\string.h" 2 3









 


void*	memchr (const void* p, int cSearchFor, size_t sizeSearch);
int 	memcmp (const void* p1, const void* p2, size_t sizeSearch);
void* 	memcpy (void* pCopyTo, const void* pSource, size_t sizeSource);
void*	memmove (void* pMoveTo, const void* pSource, size_t sizeSource);
void*	memset (void* p, int cFill, size_t sizeRepeatCount);
char*	strcat (char* szAddTo, const char* szAdd);
char*	strchr (const char* szSearch, int cFor);
int	strcmp (const char* sz1, const char* sz2);
int	strcoll (const char* sz1, const char* sz2);  
char*	strcpy (char* szCopyTo, const char* szSource);
size_t	strcspn (const char* szGetPrefix, const char* szNotIncluding);
char*	strerror (int nError);  
char*	_strerror (int nError);
size_t	strlen (const char* sz);
char*	strncat (char* szAddTo, const char* szAdd, size_t sizeMaxAdd);
int	strncmp (const char* sz1, const char* sz2, size_t sizeMaxCompare);
char*	strncpy (char* szCopyTo, const char* szSource, size_t sizeMaxCopy);
char*	strpbrk (const char* szSearch, const char* szAnyOf);
char*	strrchr (const char* szSearch, int cFor);
size_t	strspn (const char* szGetPrefix, const char *szIncluding);
char*	strstr (const char* szSearch, const char *szFor);
char*	strtok (char* szTokenize, const char* szDelimiters);
size_t	strxfrm (char* szTransformed, const char *szSource,
	         size_t sizeTransform);


 


void*	_memccpy (void* pCopyTo, const void* pSource, int cTerminator,
	          size_t sizeMaxCopy);
int 	_memicmp (const void* p1, const void* p2, size_t sizeSearch);
char* 	_strdup (const char *szDuplicate);
int	_strcmpi (const char* sz1, const char* sz2);
int	_stricmp (const char* sz1, const char* sz2);
int	_stricoll (const char* sz1, const char* sz2);
char*	_strlwr (char* szToConvert);
int	_strnicmp (const char* sz1, const char* sz2,
	           size_t sizeMaxCompare);
char*	_strnset (char* szToFill, int cFill, size_t sizeMaxFill);
char*	_strrev (char* szToReverse);
char*	_strset (char* szToFill, int cFill);
char*	_strupr (char* szToConvert);
void	_swab (const char* caFrom, char* caTo, size_t sizeToCopy);

 


unsigned char*	_mbschr (unsigned char*, unsigned char*);
unsigned char*	_mbsncat (unsigned char*, const unsigned char*, size_t);
unsigned char*	_mbstok (unsigned char*, unsigned char*);




 


wchar_t* wcscat (wchar_t* wsAddTo, const wchar_t* wsAdd);
wchar_t* wcschr (const wchar_t* wsSearch, wchar_t wcFor);
int	wcscmp (const wchar_t* ws1, const wchar_t* ws2);
int	wcscoll (const wchar_t* ws1, const wchar_t* ws2);
wchar_t* wcscpy (wchar_t* wsCopyTo, const wchar_t* wsSource);
size_t	wcscspn (const wchar_t* wsGetPrefix, const wchar_t* wsNotIncluding);
 
size_t	wcslen (const wchar_t* ws);
wchar_t* wcsncat (wchar_t* wsAddTo, const wchar_t* wsAdd, size_t sizeMaxAdd);
int	wcsncmp(const wchar_t* ws1, const wchar_t* ws2, size_t sizeMaxCompare);
wchar_t* wcsncpy(wchar_t* wsCopyTo, const wchar_t* wsSource,
                 size_t sizeMaxCopy);
wchar_t* wcspbrk(const wchar_t* wsSearch, const wchar_t* wsAnyOf);
wchar_t* wcsrchr(const wchar_t* wsSearch, wchar_t wcFor);
size_t	wcsspn(const wchar_t* wsGetPrefix, const wchar_t* wsIncluding);
wchar_t* wcsstr(const wchar_t* wsSearch, const wchar_t* wsFor);
wchar_t* wcstok(wchar_t* wsTokenize, const wchar_t* wsDelimiters);
size_t	wcsxfrm(wchar_t* wsTransformed, const wchar_t *wsSource,
	        size_t sizeTransform);



 



 


wchar_t* _wcsdup (wchar_t* wsToDuplicate);
int	_wcsicmp (const wchar_t* ws1, const wchar_t* ws2);
int	_wcsicoll (const wchar_t* ws1, const wchar_t* ws2);
wchar_t* _wcslwr (wchar_t* wsToConvert);
int	_wcsnicmp (const wchar_t* ws1, const wchar_t* ws2,
	           size_t sizeMaxCompare);
wchar_t* _wcsnset (wchar_t* wsToFill, wchar_t wcFill, size_t sizeMaxFill);
wchar_t* _wcsrev (wchar_t* wsToReverse);
wchar_t* _wcsset (wchar_t* wsToFill, wchar_t wcToFill);
wchar_t* _wcsupr (wchar_t* wsToConvert);







 





void*	memccpy (void* pCopyTo, const void* pSource, int cTerminator,
	         size_t sizeMaxCopy);
int	memicmp (const void* p1, const void* p2, size_t sizeSearch);
char*	strdup (const char *szDuplicate);
int	strcmpi (const char* sz1, const char* sz2);
int	stricmp (const char* sz1, const char* sz2);
int	strcasecmp (const char* sz1, const char* sz2);
int	stricoll (const char* sz1, const char* sz2);
char*	strlwr (char* szToConvert);
int	strnicmp (const char* sz1, const char* sz2, size_t sizeMaxCompare);
int	strncasecmp (const char* sz1, const char* sz2, size_t sizeMaxCompare);
char*	strnset (char* szToFill, int cFill, size_t sizeMaxFill);
char*	strrev (char* szToReverse);
char*	strset (char* szToFill, int cFill);
char*	strupr (char* szToConvert);

void	swab (const char* caFrom, char* caTo, size_t sizeToCopy);


 
int	wcscmpi	(const wchar_t* ws1, const wchar_t* ws2);
wchar_t* wcsdup (wchar_t* wsToDuplicate);
int	wcsicmp (const wchar_t* ws1, const wchar_t* ws2);
int	wcsicoll (const wchar_t* ws1, const wchar_t* ws2);
wchar_t* wcslwr (wchar_t* wsToConvert);
int	wcsnicmp (const wchar_t* ws1, const wchar_t* ws2,
	          size_t sizeMaxCompare);
wchar_t* wcsnset (wchar_t* wsToFill, wchar_t wcFill, size_t sizeMaxFill);
wchar_t* wcsrev (wchar_t* wsToReverse);
wchar_t* wcsset (wchar_t* wsToFill, wchar_t wcToFill);
wchar_t* wcsupr (wchar_t* wsToConvert);













# 86 "..\\..\\psys\\include\\p2c\\p2c.h" 2












# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\ctype.h" 1 3
 




























 





# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 1 3
 

































 


# 47 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3





 


 





 


# 91 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 





 


















 





 

 


# 156 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3


 




 

 


# 218 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3




 




 


# 298 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3
















 

 

# 346 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\stddef.h" 3






 













 







# 36 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\ctype.h" 2 3




 





















int	isalnum(int c);
int	isalpha(int c);
int	iscntrl(int c);
int	isdigit(int c);
int	isgraph(int c);
int	islower(int c);
int	isprint(int c);
int	ispunct(int c);
int	isspace(int c);
int	isupper(int c);
int	isxdigit(int c);


int	_isctype (int c, int ctypeFlags);


int	tolower(int c);
int	toupper(int c);

 




int	_tolower(int c);
int	_toupper(int c);






 








typedef int	wctype_t;

 
int	iswalnum(wint_t wc);
int	iswalpha(wint_t wc);
int	iswascii(wint_t wc);
int	iswcntrl(wint_t wc);
int	iswctype(wint_t wc, wctype_t wctypeFlags);
int	is_wctype(wint_t wc, wctype_t wctypeFlags);	 
int	iswdigit(wint_t wc);
int	iswgraph(wint_t wc);
int	iswlower(wint_t wc);
int	iswprint(wint_t wc);
int	iswpunct(wint_t wc);
int	iswspace(wint_t wc);
int	iswupper(wint_t wc);
int	iswxdigit(wint_t wc);

wchar_t	towlower(wchar_t c);
wchar_t	towupper(wchar_t c);

int	isleadbyte (int c);


int	__isascii (int c);
int	__toascii (int c);
int	__iscsymf (int c);	 
int	__iscsym (int c);	 


int	isascii (int c);
int	toascii (int c);
int	iscsymf (int c);
int	iscsym (int c);












# 98 "..\\..\\psys\\include\\p2c\\p2c.h" 2

# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\math.h" 1 3
 




























 


 










 























 










# 90 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\math.h" 3






 
__attribute__((dllimport)) extern  double	_HUGE_dll;





struct _exception
{
	int	type;
	char	*name;
	double	arg1;
	double	arg2;
	double	retval;
};


double	sin (double x);
double	cos (double x);
double	tan (double x);
double	sinh (double x);
double	cosh (double x);
double	tanh (double x);
double	asin (double x);
double	acos (double x);
double	atan (double x);
double	atan2 (double y, double x);
double	exp (double x);
double	log (double x);
double	log10 (double x);
double	pow (double x, double y);
double	sqrt (double x);
double	ceil (double x);
double	floor (double x);
double	fabs (double x);
double	ldexp (double x, int n);
double	frexp (double x, int* exp);
double	modf (double x, double* ip);
double	fmod (double x, double y);




 
struct _complex
{
	double	x;	 
	double	y;	 
};

double	_cabs (struct _complex x);
double	_hypot (double x, double y);
double	_j0 (double x);
double	_j1 (double x);
double	_jn (int n, double x);
double	_y0 (double x);
double	_y1 (double x);
double	_yn (int n, double x);
int	_matherr (struct _exception *);



 



double cabs (struct _complex x);
double hypot (double x, double y);
double j0 (double x);
double j1 (double x);
double jn (int n, double x);
double y0 (double x);
double y1 (double x);
double yn (int n, double x);













# 99 "..\\..\\psys\\include\\p2c\\p2c.h" 2

# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\setjmp.h" 1 3
 





























 








 








typedef int  jmp_buf[16 ];

 



int	_setjmp (jmp_buf);



 



void	longjmp (jmp_buf, int);









# 100 "..\\..\\psys\\include\\p2c\\p2c.h" 2

# 1 "c:\\gcc\\bin\\..\\lib\\gcc-lib\\i386-mingw32\\2.95.2\\..\\..\\..\\..\\include\\assert.h" 1 3
 




























 

















 



void	_assert (const char* szExpression, const char* szFileName, int nLine)

	__attribute__ ((noreturn))

	;

 













# 101 "..\\..\\psys\\include\\p2c\\p2c.h" 2


 











typedef struct __p2c_jmp_buf {
    struct __p2c_jmp_buf *next;
    jmp_buf jbuf;
} __p2c_jmp_buf;


 


























 









































typedef void *Anyptr;
typedef const void *Constptr;
# 205 "..\\..\\psys\\include\\p2c\\p2c.h"



















typedef signed    char schar;
typedef unsigned char uchar;
typedef unsigned char boolean;







typedef struct {
    Anyptr proc, link;
} _PROCEDURE;






extern void     PASCAL_MAIN    (int, char  **)   ;
extern char     **P_argv;
extern int     P_argc;
extern short   P_escapecode;
extern int     P_ioresult;
extern __p2c_jmp_buf *__top_jb;
extern int     bigendian;

# 275 "..\\..\\psys\\include\\p2c\\p2c.h"







extern int      _OutMem     (void) ;
extern int      _CaseCheck  (void) ;
extern int      _NilCheck   (void) ;
extern int	_Escape       (int)   ;
extern int	_EscIO        (int)   ;

extern int      microsleep     (long)   ;
extern long     ipow          (long, long)   ;
extern char     *strsub        (char  *, char  *, int, int)   ;
extern char     *strltrim      (char  *)   ;
extern char     *strrtrim      (char  *)   ;
extern char     *strrpt        (char  *, char  *, int)   ;
extern char     *strpad        (char  *, char  *, int, int)   ;
extern int      strpos2       (char  *, char  *, int)   ;
extern long     memavail    (void) ;
extern int      P_peek        (FILE *)   ;
extern int      P_eof         (FILE *)   ;
extern int      P_eoln        (FILE *)   ;
extern void      P_readpaoc    (FILE *, char  *, int)   ;
extern void      P_readlnpaoc   (FILE *, char  *, int)   ;
extern long     P_maxpos      (FILE *)   ;
extern char     *P_trimname    (char  *, int)   ;
extern long    *P_setunion    (long *, long *, long *)   ;
extern long    *P_setint      (long *, long *, long *)   ;
extern long    *P_setdiff     (long *, long *, long *)   ;
extern long    *P_setxor      (long *, long *, long *)   ;
extern int      P_inset       (unsigned, long *)   ;
extern int      P_setequal    (long *, long *)   ;
extern int      P_subset      (long *, long *)   ;
extern long    *P_addset      (long *, unsigned)   ;
extern long    *P_addsetr     (long *, unsigned, unsigned)   ;
extern long    *P_remset      (long *, unsigned)   ;
extern long    *P_setcpy      (long *, long *)   ;
extern long    *P_expset      (long *, long)   ;
extern long     P_packset     (long *)   ;
extern int      P_getcmdline   (int l, int h, char  *line)   ;
extern void      TimeStamp     (int *Day, int *Month, int *Year,
				 int *Hour, int *Min, int *Sec)   ;
extern void 	P_sun_argv    (char *, int, int)   ;


 




 






 




 



































typedef struct {
    FILE *f;
    int   f_BFLAGS  ;  char     f_BUFFER   ;
    char  name[120 ];
} _TEXT;

 







extern Anyptr __MallocTemp__;





 


     



















 










 
















  






 



 


# 55 "log.c" 2


# 70 "log.c"




# 1 "logdef.h" 1


 
 





# 1 "..\\..\\psys\\include\\p2c\\mylib.h" 1
 



 









typedef uchar m_colorarray[17];

typedef uchar m_vcolorarray[1000001L];

typedef long m_pointarray[10];

typedef uchar m_screenvararr[199680L];

typedef uchar m_packedscreenvararr[99840L];

typedef uchar m_picturevararr[];

typedef long m_chpicarr[32];

typedef struct m_chpicrec {
    int xsize : 8, ysize : 8, xoff : 8, yoff : 8;
 
    unsigned xdim : 8, ydim : 8, width : 8, height : 8;
    m_chpicarr pic;
} m_chpicrec;

typedef struct m_fchpic {
    uchar ch, junk;
    m_chpicrec pic;
} m_fchpic;

typedef m_chpicrec *m_chfontarr[256];

typedef uchar m_cchpicarr[32][32];

typedef struct m_cchpicrec {
    int xsize : 8, ysize : 8, xoff : 8, yoff : 8;
 
    unsigned xdim : 8, ydim : 8, width : 8, height : 8;
    m_cchpicarr pic;
} m_cchpicrec;

typedef struct m_fcchpic {
    uchar ch, junk;
    m_cchpicrec pic;
} m_fcchpic;

typedef m_cchpicrec *m_cchfontarr[256];

typedef struct m_tablet_info {
    long x, y;
    short phx, phy, fill1;
    int ax : 8, ay : 8;
 
    unsigned menu : 8, depressed : 1, near_ : 1, dn : 1, up : 1, off : 1, clip : 1,
             moving : 1, inalpha : 1;
} m_tablet_info;





















































extern  _PROCEDURE m_usercolor[16];
extern  _PROCEDURE m_fastusercolor;
extern  uchar m_chgfrom, m_chgto;
extern  m_colorarray m_chgtable;
extern  boolean m_blackflag;
extern  long m_hitcount, m_across, m_down;

 
extern  long m_maxcolor, m_scanmask;
extern  int *m_display;
extern  int m_window;
extern  int m_initialized;
extern  int BlackAndWhite;
extern  int screennum;



extern int m_colors[4 +1][16 ];

 
extern void m_set_display_name(char* display_name);
extern char m_display_name[];
extern boolean m_autoraise;

extern void m_init_screen();
extern void m_init_colors();
extern void m_init_pen();
extern void m_init_graphics();
extern void m_init_graphics_nopen();
extern void m_init_dzg();
extern void m_modern();
extern void m_version();
extern long m_curversion();
extern void m_setplanes();
extern long m_seeplanes();
extern void m_clear();
extern void m_clearwindow();
extern void m_vsync();
extern void m_clip();
extern void m_noclip();
extern void m_unclip();
extern void m_transform();
extern void m_upside_down();
extern void m_rotscale();
extern void m_rotscaled();
extern void m_notransform();
extern void m_untransform();
extern void m_cursor();
extern void m_nocursor();
extern void m_setcursor();
extern void m_setcursorshape();
extern void m_choosecursor();
extern void m_seecursor();
extern void m_color();
extern void m_colormode();
extern void m_uncolor();
extern long m_curcolor();
extern long m_curcolormode();
extern void m_setpattern();
extern void m_seepattern();
extern void m_scanpos();
extern void m_setcolor();
extern void m_seecolor();
extern void m_setcolors();
extern void m_seecolors();
extern void m_vsetcolors();
extern void m_vseecolors();
extern void m_choosecolors();
extern void m_nullusercolor();
extern void m_pixelpos();
extern void m_pixelptr();
extern void m_nullfastusercolor();
extern void m_linestyle();
extern void m_nolinestyle();
extern void m_unlinestyle();
extern long m_curlinestyle();
extern void m_setlinestyle();
extern void m_seelinestyle();
extern void m_linewidth();
extern void m_nolinewidth();
extern void m_unlinewidth();
extern void m_move();
extern void m_moverel();
extern void m_move2();
extern void m_moverel2();
extern void m_draw();
extern void m_drawrel();
extern void m_seeposn();
extern void m_drawline();
extern void m_drawrect();
extern void m_fillrect();
extern void m_grid();
extern void m_drawpoint();
extern long m_seepoint();
extern void m_scanrect();
extern void m_crt_out();
extern void m_circle();
extern void m_ellipse();
extern void m_drawarc();
extern void m_fillarc();
extern void m_computearc3();
extern void m_drawarc3();
extern void m_fillarc3();
extern void m_computearct();
extern void m_drawarct();
extern void m_fillarct();
extern void m_roundrect();
extern void m_bezier();
extern void m_bezier2();
extern void m_cbezier();
extern void m_polycurve();
extern void m_drawarrow();
extern void m_fillarrow();
extern void m_drawpoly();
extern void m_fillpoly();
extern void m_floodfill();
extern void m_boundaryfill();
extern void m_areafill();
extern void m_colorrect();
extern void m_movescreen();
extern void m_swapscreen();
extern void m_packscreen();
extern void m_unpackscreen();
extern void m_setscreen();
extern void m_seescreen();
extern void m_getpicture();
extern void m_getpicture2();
extern void m_putpicture();
extern void m_putpicture2();
extern void m_getcpicture();
extern void m_putcpicture();
extern void m_putcpicture2();
extern void m_xorcpicture();
extern void m_setcpicture();
extern void m_disposepicture();
extern void m_bunny();
extern void m_hscroll();
extern void m_vscroll();
extern void m_blit();
extern void m_loadfont();
extern void m_drawchar();
extern void m_displaytext();
extern void m_drawstr();
extern void m_centerstr();
extern void m_rightstr();
extern long m_strwidth();
extern long m_strlength();
extern void m_setfont();

 
extern void m_seefont();
extern void m_makechar();
extern void m_changechar();
extern void m_copychar();
extern void m_disposechar();
extern void m_loadcfont();
extern void m_drawcchar();
extern void m_xorcchar();
extern void m_drawcchar2();
extern void m_xorcchar2();
extern void m_makecchar();
extern void m_changecchar();
extern void m_copycchar();
extern void m_disposecchar();
extern void m_getcchar();
extern void m_graphics_on();
extern void m_alpha_on();




extern void m_readpen();
extern void m_trackpen();
extern void m_clipxy();
extern boolean m_pollkbd();
extern uchar m_inkey();
extern uchar m_inkeyn();
extern uchar m_testkey();






 

# 10 "logdef.h" 2




# 1 "..\\..\\psys\\include\\p2c\\newasm.h" 1
 

















 

typedef char  na_chararray[];


typedef union na_word {
  short i;
  unsigned short u;
  struct {
    char  c1, c2;
  } U7;
  struct {
    uchar ub1, ub2;
  } U8;
  struct {
    char sb1, sb2;
  } U9;
  unsigned short b4;
  unsigned short b2;
  unsigned short b;
  char  str[2];
} na_word;

typedef na_word na_wordarray[];

typedef Anyptr na_long;


typedef union na_longword  {
  long i;
  struct {
    short i1, i2;
  } U2;
  struct {
    short x, y;
  } U3;
  struct {
    unsigned short u1, u2;
  } U4;
  struct {
    char fill1;
    signed  int s3 : 24;
  } U5;
  struct {
    uchar fill2;
    unsigned u3 : 24;
  } U6;
  char  c[4];
  uchar ub[4];
  long sb;
  unsigned long b4;
  unsigned long b2;
  unsigned long b;
  Anyptr sr;
  char  str[4];
  char  *sp;
  Anyptr p;
  double *rp;
  na_word *wp;
  union na_longword  *lp;
  union na_quadword *qp;
  struct na_strlistrec *sl;
  char  *cap;
  na_word *wap;
  union na_longword  *lap;
  union na_quadword *qap;
  struct {
    unsigned sign : 1, mag : 31;
  } U27;
  long *setp;
  struct {
    na_word w1, w2;
  } U99;
} na_longword ;


typedef na_long na_longwordarray[];

typedef union na_quadword {
  struct {
    long i1, i2;
  } U1;
  short si[4];
  unsigned short su[4];
  char  c[8];
  uchar ub[8];
  short sb[4];
  uchar b4[8];
  uchar b2[8];
  uchar b[8];
  struct {
    Anyptr sr1, sr2;
  } U13;
  double r;
  char  str[8];
  struct {
    char  *sp1, *sp2;
  } U16;
  struct {
    Anyptr p1, p2;
  } U17;
  struct {
    double *rp1, *rp2;
  } U18;
  struct {
    na_word *wp1, *wp2;
  } U19;
  struct {
    na_long *lp1, *lp2;
  } U20;
  struct {
    union na_quadword *qp1, *qp2;
  } U21;
  struct {
    struct na_strlistrec *sl1, *sl2;
  } U22;
  struct {
    char  *cap1, *cap2;
  } U23;
  struct {
    na_word *wap1, *wap2;
  } U24;
  struct {
    na_long *lap1, *lap2;
  } U25;
  struct {
    union na_quadword *qap1, *qap2;
  } U26;
  _PROCEDURE pr;
  struct {
    unsigned rsign : 1, rexp : 11, rmant1 : 20;
    long rmant2;
  } U28;
  na_word w[4];
  struct {
    na_long l1, l2;
  } U99;
} na_quadword;

typedef na_quadword na_quadwordarray[];

typedef struct na_strlistrec {
  struct na_strlistrec *next;
  na_long value;    
  char  kind;    
  char  len;    
  char  s[256];    
} na_strlistrec;



 

extern Anyptr *P_nil2;


typedef na_strlistrec na_strlist;

extern void  na_fillbyte  (long *d, long w, long n)  ;
extern void  na_fillword  (long *d, long w, long n)  ;
extern void  na_fill  (long *d, long w, long n)  ;
extern void  na_fillp  (Anyptr d, long w, long n)  ;
extern void  na_move  (long *s, long *d, long size)  ;
extern void  na_movep  (Anyptr s, Anyptr d, long size)  ;
extern void  na_exch  (long *s, long *d, long size)  ;
extern void  na_exchp  (Anyptr s, Anyptr d, long size)  ;
extern long na_comp  (long *a, long *b, long size)  ;
extern long na_compp  (Anyptr a, Anyptr b, long size)  ;
extern long na_scaneq  (long *s, long what, long size)  ;
extern long na_scaneqp  (Anyptr s, long what, long size)  ;
extern long na_scanne  (long *s, long what, long size)  ;

extern long na_scannep  (Anyptr s, long what, long size)  ;
extern void  na_new  (Anyptr *p, long s)  ;
extern void  na_dispose  (Anyptr *p, long s)  ;
extern void  na_alloc  (Anyptr *p, long s)  ;
extern void  na_outeralloc  (Anyptr *p, long s, long parframe)  ;
extern void  na_free  (Anyptr *p)  ;

extern long na_memavail (void) ;
extern long na_and  (long x, long y)  ;
extern long na_bic  (long x, long y)  ;
extern long na_or  (long x, long y)  ;
extern long na_xor  (long x, long y)  ;
extern long na_not  (long x)  ;
extern boolean na_mask  (long x, long y)  ;
extern boolean na_test  (long n, long x)  ;
extern void  na_set  (long n, long *x)  ;
extern void  na_clear  (long n, long *x)  ;
extern long na_log2  (long n)  ;
extern long na_po2  (long n)  ;
extern long na_lobits  (long n)  ;
extern long na_hibits  (long n)  ;
extern long na_asl  (long n, long x)  ;
extern long na_lsl  (long n, long x)  ;

extern long na_rol  (long n, long x)  ;
extern void  na_bfclr  (long *v, long offset, long size)  ;
extern void  na_bfset  (long *v, long offset, long size)  ;
extern void  na_bfchg  (long *v, long offset, long size)  ;
extern boolean na_bftst  (long *v, long offset, long size)  ;
extern void  na_bffill  (long *v, long offset, long size, int b)  ;
extern void  na_bfmove  (long *s, long soff, long *d, long doff, long size)  ;
extern void  na_bfrev  (long *v, long offset, long size)  ;
extern void  na_bfins  (long *v, long offset, long size, long val)  ;
extern long na_bfextu  (long *v, long offset, long size)  ;
extern long na_bfexts  (long *v, long offset, long size)  ;
extern long na_bfffo  (long *v, long offset, long size)  ;
extern long na_bfffz  (long *v, long offset, long size)  ;

extern long na_bfcount  (long *v, long offset, long size)  ;
extern long na_setcard  (long *s)  ;
extern long na_setlast  (long *s)  ;
extern long na_setnext  (long *s, long offset)  ;

extern long na_setnextnot  (long *s, long offset)  ;
extern long P_imax  (long a, long b)  ;
extern long P_imin  (long a, long b)  ;
extern long P_isgn  (long a)  ;
extern double P_rmax  (double a, double b)  ;
extern double P_rmin  (double a, double b)  ;

extern long P_rsgn  (double a)  ;
extern long P_imax2  (long a, long b)  ;
extern long P_imin2  (long a, long b)  ;
extern long P_imax3  (long a, long b, long c)  ;
extern long P_imin3  (long a, long b, long c)  ;
extern long P_imax4  (long a, long b, long c, long d)  ;
extern long P_imin4  (long a, long b, long c, long d)  ;
extern void  P_iswap2  (long *a, long *b)  ;
extern void  P_isort2  (long *a, long *b)  ;
extern void  P_isort3  (long *a, long *b, long *c)  ;
extern void  P_isort4  (long *a, long *b, long *c, long *d)  ;
extern long P_ibound  (long min, long i, long max)  ;
extern boolean P_ibetween  (long min, long i, long max)  ;
extern boolean P_ibetweenm  (long min, long i, long max, long margin)  ;
extern void  P_iamin  (long *min, long i)  ;
extern void  P_iamax  (long *max, long i)  ;

extern void  P_iaminmax  (long *min, long *max, long i)  ;
extern long P_isqrt  (long n)  ;

extern long P_ipow  (long y, long x)  ;
extern long na_add  (long a, long b)  ;
extern long na_sub  (long a, long b)  ;
extern void  na_addc  (long *a, long b, boolean *c)  ;
extern void  na_subc  (long *a, long b, boolean *c)  ;
extern long na_smul  (long a, long b)  ;
extern long na_umul  (long a, long b)  ;
extern na_quadword na_smul64  (long a, long b)  ;
extern na_quadword na_umul64  (long a, long b)  ;
extern void  na_udiv64  (na_quadword *q, long *r, na_quadword a, long b)  ;

extern void  na_sdiv64  (na_quadword *q, long *r, na_quadword a, long b)  ;
extern void  P_return (void) ;
extern void  P_returnb  (int b)  ;
extern void  P_returnc  (int c)  ;
extern void  P_returni  (long i)  ;
extern void  P_returnp  (Anyptr p)  ;

extern void  P_returnr  (double r)  ;
extern Anyptr na_rtosr  (double r)  ;

extern double na_srtor  (Anyptr sr)  ;
extern double na_stor  (long s)  ;
extern long na_rtos  (double r)  ;
extern long na_sm  (long a, long b)  ;
extern long na_sd  (long a, long b)  ;
extern long na_strunc  (long s)  ;
extern long na_sround  (long s)  ;
extern long na_sint  (long s)  ;
extern long na_sfrac  (long s)  ;
extern long na_itos  (long s)  ;

extern long na_ssqrt  (long s)  ;
extern void  na_compint  (na_long a, na_long b, long *res)  ;
extern void  na_compstr  (na_long a, na_long b, long *res)  ;


extern void  na_qsort  (na_long *a, long n, _PROCEDURE comp)  ;
extern void  strsafeappend  (char  *s, char  *s2)  ;
extern void  strappendc  (char  *s, int ch)  ;
extern char  *strupper  (char  *Result, char  *s)  ;
extern char  *strlower  (char  *Result, char  *s)  ;
extern char  charupper  (int ch)  ;
extern char  charlower  (int ch)  ;
extern char  *strpart  (char  *Result, char  *s, long first, long last)  ;
extern char  *strlast  (char  *Result, char  *s, long num)  ;
extern char  *strljust  (char  *Result, char  *s, long wid)  ;
extern char  *strrjust  (char  *Result, char  *s, long wid)  ;
extern char  *strcjust  (char  *Result, char  *s, long wid)  ;
extern boolean strbegins  (char  *s1, char  *s2)  ;
extern boolean strends  (char  *s1, char  *s2)  ;
extern boolean strcibegins  (char  *s1, char  *s2)  ;
extern boolean strciends  (char  *s1, char  *s2)  ;
extern boolean strequal  (char  *s1, char  *s2)  ;
extern long strsubcmp  (long n, char  *s1, long i1, char  *s2, long i2)  ;
extern boolean strcisubcmp  (long n, char  *s1, long i1, char  *s2, long i2)  ;
extern void  strsubst  (char  *repl, char  *s, long index, long size)  ;
extern char  *strint  (char  *Result, long i)  ;
extern char  *strint2  (char  *Result, long i, long w)  ;
extern char  *strreal  (char  *Result, double r)  ;
extern char  *strchar  (char  *Result, int ch)  ;
extern long strreadint  (char  *s)  ;
extern double strreadreal  (char  *s)  ;
extern long strposb  (char  *s1, char  *s2, long i)  ;
extern long strposc  (char  *s1, int ch, long i)  ;
extern long strposcset  (char  *s1, char  *s2, long i)  ;
extern long strposbcset  (char  *s1, char  *s2, long i)  ;
extern long strcipos2  (char  *s1, char  *s2, long i)  ;
extern long strciposb  (char  *s1, char  *s2, long i)  ;
extern boolean strcontains  (char  *s1, char  *s2)  ;
extern boolean strsubset  (char  *s1, char  *s2)  ;
extern boolean strcommon  (char  *s1, char  *s2)  ;
extern long strlenv  (char  *s)  ;
extern char  *strhex  (char  *Result, long i, long w)  ;
extern char  *strbinary  (char  *Result, long i, long w)  ;
extern char  *strdate  (char  *Result, char  *opts)  ;
extern void  strword  (char  *s, char  *word)  ;
extern void  strword2  (char  *s, char  *word)  ;
extern void  strcomment  (char  *s, char  *bracket)  ;
extern void  strcompress  (char  *s, char  *chars, int all)  ;
extern void  strdispose  (char  **sp)  ;

extern void  strchange  (char  **sp, char  *s)  ;
extern void  strlist_init  (na_strlistrec **base)  ;
extern na_strlistrec *strlist_find  (na_strlistrec *base, char  *s)  ;
extern na_strlistrec *strlist_cifind  (na_strlistrec *base, char  *s)  ;
extern void  strlist_change  (na_strlistrec **base, na_strlistrec **ptr,
			       char  *s)  ;
extern void  strlist_remove  (na_strlistrec **base, char  *s)  ;
extern void  strlist_delete  (na_strlistrec **base, na_strlistrec *ptr)  ;
extern void  strlist_dispose  (na_strlistrec **ptr)  ;
extern void  strlist_empty  (na_strlistrec **base)  ;
extern void  strlist_copy  (na_strlistrec **dest, na_strlistrec *src)  ;

extern void  na_bfand  (long *s, long soff, long *d, long doff, long size)  ;
extern void  na_bfbic  (long *s, long soff, long *d, long doff, long size)  ;
extern void  na_bfor  (long *s, long soff, long *d, long doff, long size)  ;
extern void  na_bfxor  (long *s, long soff, long *d, long doff, long size)  ;
extern char  *strnew  (char  *s)  ;
extern na_strlist *strlist_add  (na_strlist **base, char  *s)  ;
extern na_strlist *strlist_append  (na_strlist **base, char  *s)  ;
extern na_strlist *strlist_insert  (na_strlist **base, char  *s)  ;

extern void  strlist_dump  (FILE *f, na_strlistrec *base)  ;






 
# 14 "logdef.h" 2






























































typedef short log_zoomtab[7];
typedef short log_rottab[8];

 

# 93 "logdef.h"

extern  const  log_rottab log_rotxx;
extern  const  log_rottab log_rotxy;
extern  const  log_rottab log_rotyx;
extern  const  log_rottab log_rotyy;
extern  const  log_rottab log_irotxx;
extern  const  log_rottab log_irotxy;
extern  const  log_rottab log_irotyx;
extern  const  log_rottab log_irotyy;
extern  const  log_zoomtab zoomscales;


typedef Anyptr log_long;

typedef char  log_pac4[4];
typedef char  log_pac8[8];

typedef uchar log_procarray[1000000L ];
typedef uchar log_uchararray[1000000L  + 1];



typedef na_long log_longword;

typedef union log_kflags {
  short i;
  unsigned short a;
  struct {
    unsigned noflip : 1;    
    unsigned toggle : 1;    
    unsigned visible : 1;    
    unsigned named : 1;    
    unsigned nright : 1;    
    unsigned nosolder : 1;    
    unsigned f6 : 1, f7 : 1, f8 : 1, f9 : 1, f10 : 1, f11 : 1, f12 : 1,
	     expanded : 1;
	 
    unsigned user1 : 1, user2 : 1;    
  } U3;
} log_kflags;

typedef struct log_vectorrec {
  char  vkind;
  schar numcoords, x1, y1;
  union {
    struct {
      schar x2, y2, x3, y3, x4, y4;
    } U99;
    struct {
      uchar ux2, uy2, num;
    } U98;
    struct {
      uchar tsize, torg;
      char  *sp;
    } U116;
  } UU;
} log_vectorrec;

typedef log_vectorrec log_vectorrecs[1000000L ];

typedef struct log_pinrec {
  schar x, y, s, c;
} log_pinrec;

typedef log_pinrec log_pinrecs[1000000L ];
typedef na_strlistrec *log_pinnames[1000000L ];

typedef struct log_pnumrec {
  schar x, y;
  short num;
} log_pnumrec;

typedef log_pnumrec log_pnumrecs[1000000L ];

typedef struct log_kattrrec {
  unsigned blnk : 1, opt : 1;    
  uchar prec;    
  uchar vr, vra;    
  uchar x, y;    
  uchar dtype;
  union {
    struct {
      double r;
      char  u[4];
    } U82;
    struct {
      long i1, i2;
    } U73;
    char  *c;
    char  *sp;



    unsigned b : 1 ;

    struct {
      na_strlistrec *v;
      short nv, dv;
    } U86;
  } UU;
} log_kattrrec;

typedef log_kattrrec log_kattrrecs[1000000L ];

typedef struct log_gattrrec {
  uchar x2;
  unsigned blnk : 1, supr : 1;
   
  unsigned changed : 1;
  union {
    double r;
    struct {
      long i1, i2;
    } U73;
    char  *c;
    char  *sp;



    unsigned b : 1 ; 

    short nv;
  } UU;
} log_gattrrec;    

typedef log_gattrrec log_gattrrecs[1000000L ];

 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef struct log_krec {
  na_long info;
  uchar *proc;
  log_kattrrec *attr;
  struct log_tool *simtype;
  char  name[9];
  uchar group;
  short dummy1, dummy2, numvects, numpins, numpnums, numattrs;
  log_kflags flag;
  schar x1, y1, x2, y2;
  long code;
  na_strlistrec *lbl;
  log_vectorrec *vector;
  log_pinrec *pin;
  log_pnumrec *pnum;
  struct log_krec *next;
  schar bbx1, bby1, bbx2, bby2;    
  short bbmax;    
  long bigprocsize, biglblsize, bigvectsize;
  na_strlistrec **pinnames;
} log_krec;

typedef struct log_pinposrec {
  short x, y;
} log_pinposrec;

typedef log_pinposrec log_pinposarray[255 ];

typedef struct log_nrec *log_pinarray[255 ];

typedef struct log_nrec {
  struct log_nrec *next;
  na_long info;
  struct log_tool *simtype;
  struct log_nrec *confnext;
  short ref;
  log_gattrrec *attr;
  na_long temp;
  unsigned changed : 1, conflict : 1, oconflict : 1, flag : 1, keep : 1,
	   conflict1 : 1, conflict2 : 1, f8 : 1, f7 : 1, f6 : 1, f5 : 1,
	   f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_nrec;    

typedef struct log_sigrec {
  char  *name;
  unsigned f : 1, keep : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
  na_long temp;
  log_nrec *np;    
} log_sigrec;    

typedef log_sigrec log_sigrecs[1000000L ];

typedef struct log_htrec {
  struct log_htrec *next;
  double time;
  Anyptr val[1000000L ];    
} log_htrec;    

typedef struct log_hnrec {
  short y, sig, num;
  log_gattrrec *attr;
  struct log_hnrec *next;
} log_hnrec;    

typedef struct log_hwrec {
  short x1, x2, y;    
  log_nrec *node;    
  struct log_hwrec *next;    
  na_long temp;
  uchar wcolr;    
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_hwrec;    

typedef struct log_vwrec {
  short x, y1, y2;    
  log_nrec *node;    
  struct log_vwrec *next;    
  na_long temp;
  uchar wcolr;    
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_vwrec;    

typedef struct log_srec {
  short x, y;    
  log_hwrec *hwire, *hwire2;    
  log_vwrec *vwire, *vwire2;    
  struct log_srec *next;    
  na_long temp;
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_srec;    

typedef struct log_grec {
  struct log_grec *next, *confnext;
  na_long info;
  log_nrec **pin;
  log_pinposrec *pinpos;
  log_gattrrec *attr;
  na_long vars;
  log_krec *kind;
  short g, x, y, gc, sig;
  na_long temp;
  uchar rot;
  unsigned conflict : 1, oconflict : 1, dimcolor : 1, conflict1 : 1,
	   conflict2 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_grec;    

typedef struct log_lrec {
  short x, y, w;
  char  name[255  + 1];
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
  struct log_lrec *next;
  na_long temp;
} log_lrec;    

typedef struct log_brec {
  short x1, y1, x2, y2;
  struct log_brec *next;
  na_long temp;
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_brec;    

typedef struct log_regrec {
  short pagenum, x1, y1, x2, y2;
  long regstamp;
  na_long info;
  struct log_regrec *next;
  boolean f7, f6, f5, f4, f3, f2, f1, f0;
} log_regrec;    


typedef enum {
  simst_null, simst_off, simst_notactive, simst_notready, simst_running
} log_simstatekinds;

typedef enum {
  act_init, act_endinit, act_exit, act_clearmsg, act_status, act_cnf,
  act_immed, act_func, act_color, act_select, act_clear, act_edit, act_pass,
  act_tstep, act_erasegate, act_touchgate, act_history, act_histval,
  act_histstr, act_trigger, act_glowcol, act_newgate, act_disposegate,
  act_copygate, act_writegate, act_readgate, act_connectgate,
  act_disconnectgate, act_configgate, act_configchgate, act_configrelgate,
  act_confignode, act_configchnode, act_configrelnode, act_confighist,
  act_configchhist, act_configrelhist, act_newkind, act_disposekind,
  act_newnode, act_disposenode, act_copynode, act_combinenodes,
  act_combineintonode, act_writenode, act_readnode, act_refnodes, act_nodeval,
  act_general, act_gennode, act_genkind, act_gengate
 

} log_actionkinds;

typedef struct log_hooks {
  void  (*hidecursor) (void) ;
  void  (*hidecursorrect)  (long x1, long y1, long x2, long y2)  ;
  void  (*unhidecursor) (void) ;
  void  (*nodeconflict)  (log_nrec *n)  ;
  void  (*gateconflict)  (log_grec *g)  ;
  void  (*clearconflicts)  (struct log_tool *tool)  ;
  void  (*setdimgate)  (log_grec *g, int dim)  ;
  void  (*xform)  (log_grec *g, short *x, short *y)  ;
  void  (*getsig)  (char  *name, log_sigrec **sig)  ;
  void  (*report)  (int num, char  *name)  ;
  void  (*alert) (void) ;
  void  (*warning) (void) ;
  void  (*working) (void) ;
  void  (*message)  (char  *msg)  ;
  void  (*vmessage)  (char  *msg)  ;
  void  (*vmessageflag)  (char  *msg, int b)  ;
  void  (*trace)  (char  *msg)  ;
  void  (*dump)  (char  *msg)  ;
  void  (*setdump)  (char  *name)  ;
  void  (*closefiles) (void) ;
  void  (*clearalpha) (void) ;
  void  (*drawstr)  (int x, int y, char  *s)  ;
  void  (*rightstr)  (int x, int y, char  *s)  ;
  void  (*centerstr)  (int x, int y, char  *s)  ;
  void  (*clip) (void) ;
  void  (*remcursor) (void) ;
  void  (*clearscreen) (void) ;
  void  (*setmode)  (char  *s)  ;
  void  (*getword)  (char  *buf, char  *wrd)  ;
  void  (*getint)  (char  *buf, long *i, long def)  ;
  void  (*getreal)  (char  *buf, double *r, double def)  ;
  void  (*getbool)  (char  *buf, boolean *b)  ;
  void  (*pen) (void) ;
  void  (*pass) (void) ;
  void  (*trykbd) (void) ;
  void  (*scroll) (void) ;
  void  (*trykbdscroll) (void) ;
  void  (*inkey)  (char  *ch)  ;
  void  (*udrawgate)  (int x, int y, int g, int c)  ;
  void  (*gdrawgate)  (int x, int y, int g, int c)  ;
  void  (*drawgate)  (log_grec *g)  ;
  void  (*erasegate)  (log_grec *g)  ;
  void  (*drawnode)  (log_nrec *n, int c)  ;
  void  (*refresh) (void) ;    
  void  (*refreshsoon) (void) ;
  void  (*beginbottom) (void) ;
  void  (*endbottom) (void) ;
  void  (*beginerror) (void) ;
  void  (*enderror) (void) ;
  void  (*redraw) (void) ;    
  void  (*redrawscreen) (void) ;    
  void  (*change)  (int pg)  ;
  void  (*newgate)  (log_grec **g, int gt)  ;
  void  (*copygate)  (log_grec *old, log_grec **g)  ;
  void  (*disposegate)  (log_grec **g)  ;
  void  (*newnode)  (log_nrec **n, int st)  ;
  void  (*copynode)  (log_nrec *old, log_nrec **n)  ;
  void  (*disposenode)  (log_nrec **n)  ;
  void  (*switchnode)  (log_nrec **n, log_nrec *n2)  ;
  void  (*dumpnodes) (void) ;
  void  (*readlnpass)  (char  *s, int mode)  ;
  void  (*clearfunc) (void) ;
  void  (*refrfunc) (void) ;
  void  (*assertfunc)  (char  *name)  ;
  void  (*findobject)  (int x, int y)  ;
  void  (*findwire)  (int x, int y)  ;
  void  (*deletehw)  (log_hwrec *hw)  ;
  void  (*deletevw)  (log_vwrec *vw)  ;
  void  (*disconnectgate)  (log_grec *g)  ;
  void  (*deletegate)  (log_grec *g)  ;
  void  (*addhw)  (int x1, int x2, int y)  ;
  void  (*addvw)  (int x, int y1, int y2)  ;
  void  (*connectgate)  (log_grec *g, boolean *success)  ;
  void  (*waitnear) (void) ;
  void  (*addgate)  (int x, int y, int gtype)  ;
  void  (*uaddgate)  (int x, int y, int gtype)  ;
  void  (*getgate)  (char  *name, short *gtype)  ;
  void  (*realunit)  (double r, int p, char  *u, char  *s)  ;
  void  (*realunit2)  (double r, int p, char  *u, char  *s)  ;
  void  (*addlabel)  (log_lrec **l, char  *s)  ;
  void  (*getcolor)  (char  *name, short *val, int def)  ;
  void  (*setcmap)  (int n, int r, int g, int b)  ;
  void  (*parselabel)
        (na_strlistrec **lbl, short *numattrs, log_kattrrec **attr)  ;
  void  (*editattrs)
        (log_gattrrec *gattr, int numattrs, log_kattrrec *kattr,
	   na_strlistrec *lbl, char  *name, void  (*proc) (void) ,
	   void  (*chproc) (void) , void  (*relproc) (void) )  ;
  void  (*newattrs)
        (log_gattrrec **gattr, int numattrs, log_kattrrec *kattr)  ;
  void  (*disposeattrs)
        (log_gattrrec **gattr, int numattrs, log_kattrrec *kattr)  ;
  void  (*copyattrs)  (log_gattrrec **gattr, log_gattrrec *oldattr,
			int numattrs, log_kattrrec *kattr)  ;
  void  (*initscreen) (void) ;
  void  (*clearshowalpha) (void) ;
  void  (*setupregion)  (log_regrec **r, int pagenum)  ;
  void  (*stamp)  (long *i)  ;
  void  (*noclip) (void) ;
} log_hooks;

typedef struct log_hook2 {
  void  (*getnodeval)  (log_nrec *n, double *val, char  *opts)  ;
  void  (*solderat)  (int x, int y)  ;
  void  (*unsolderwires)  (log_hwrec *hw, log_vwrec *vw)  ;
  void  (*settofrom)  (log_grec **g, char  *name)  ;
  void  (*findattrnum)  (log_krec *k, char  *name, char  *kinds, short *num)  ;
  void  (*findattrname)  (log_krec *k, int num, char  *name)  ;
  void  (*findpinnum)  (log_krec *k, char  *name, short *num)  ;
  void  (*findpinname)  (log_krec *k, int num, char  *name)  ;
  void  (*setgattr)  (log_grec *g, int num, char  *value)  ;
  void  (*setnattr)  (log_nrec *n, int num, char  *value)  ;
  void  (*findpointmarker)  (log_krec *k, int num, short *x, short *y)  ;
  void  (*findboxmarker)
        (log_krec *k, int num, short *x1, short *y1, short *x2, short *y2)  ;
  void  (*send_general)  (struct log_tool *sim, char  *act)  ;
  void  (*send_gennode)  (log_nrec *n, char  *act)  ;
  void  (*send_genkind)  (log_krec *k, char  *act)  ;
  void  (*send_gengate)  (log_grec *g, char  *act)  ;
  void  (*send_all)  (char  *act)  ;
  void  (*send_allnodes)  (char  *act)  ;
  void  (*send_allkinds)  (char  *act)  ;
  void  (*send_allgates)  (char  *act)  ;
  void  (*addlabelat)  (int x, int y, char  *s)  ;
  void  (*addboxat)  (int x1, int y1, int x2, int y2)  ;
  void  (*plainxform)  (log_grec *g, short *x, short *y)  ;
  void  (*findattrnum2)  (int numattrs, log_kattrrec *kattr,
			   na_strlistrec *lbl, char  *name, char  *kinds,
			   short *num)  ;
  void  (*findattrname2)  (int numattrs, log_kattrrec *kattr,
			    na_strlistrec *lbl, int num, char  *name)  ;
  void  (*showpinname)  (log_grec *g, int i, int c, char  *name)  ;
} log_hook2;

typedef struct log_colorrec {
  short backgr, cursor, gate, dimgate, kindgate, catgate, gatepin, pinnum;
  short wire[4  - 0  + 1];
  short xwire, solder, conflict, menuword, selword, message, baseline,
	curbaseline, page1, page2, page3, page4, select, signal, scroll,
	labeltext, dashbox, marker, chart, division, popupbox, popupword,
	popupsel, redword, blueword, vlsicut;
} log_colorrec;

typedef struct log_action {
  log_actionkinds action;
  log_krec *actkind;
  log_grec *actgate, *actgate2;
  log_nrec *actnode, *actnode2;
  long actx, acty;
  boolean actflag, actflag2;
  FILE **actfile;
  struct log_tool *acttool;
  char  *actstr;
  double actval, actval2, actval3;
  log_gattrrec *actgattr;
  log_kattrrec *actkattr;
  uchar *actproc;

  boolean pagechanged[9 ];
  log_grec *gbase[9 ];
  log_srec *sbase[9 ];
  log_hwrec *hwbase[9 ];
  log_vwrec *vwbase[9 ];
  log_lrec *lbase[9 ];
  log_brec *bbase[9 ];
  log_nrec *nbase;

  log_sigrec *signaltab;
  short maxsignal, lastsignal;

  long numpages;    
  long curpage;    
  long showpage;    

  short scale, hscale;
  long xoff, yoff;    

  char  func[17];
  char  *funcarg;

  log_grec *neargate;
  log_lrec *nearlabel;
  log_brec *nearbox;
  log_hwrec *nearhw, *movinghw;
  log_vwrec *nearvw, *movingvw;

  log_nrec *probenode;
  log_grec *probegate;
  short probepin;
  struct log_tool *probesimtype;
  short baselinecolor;

  log_hnrec *hnbase;
  log_htrec *htbase, *htlast;

  long fastspeed, fastmin, fastmax, fastrate;

  long singlestepcount;

  double time, prevtimestep;

  log_simstatekinds simstate, oldsimstate;
  struct log_tool *simstatetool, *oldsimstatetool;

  boolean histactive;    
  boolean dumpopen;    
  boolean traceopen;    
  boolean verbose;    
  boolean traceflag;    
  boolean quiet;    
  boolean glowmode;    
  boolean probemode;    
  boolean markers;    
  boolean invisible;    
  boolean textinvisible;    
  boolean dotsvisible;    
  boolean resetflag;    
  boolean pwrflag;    
  boolean initdone;    
  boolean refrflag;    

  boolean busyflag;    

  short markerx1, markery1, markerx2, markery2;

  m_tablet_info t, t0;
  boolean startpoint, stillnear, incircuit;
  short gridx, gridy, posx, posy, oldx, oldy, cx_min, cy_min, cx_max, cy_max;
       

  FILE **dumpfile, **tracefile;

  long rndseed;    

  char  *homedirname;

  enum {
    log_host_log, log_host_loged, log_host_3, log_host_4
  } host;
  struct log_tool *toolbase;
  log_hooks hook;
  log_colorrec color;

  long curstamp, labelstamp;    
  long boxstamp;    
  long msgstamp;    
  long refrstamp;    
  long nattrstamp;    
  long gattrstamp;    
  long sigstamp;    
  long loadstamp;    
  long pagestamp[9 ];
  long colorstamp;    
  long resetstamp;    
  log_regrec *pageregions[9 ];
  long markerstamp;    

  log_krec *probekind;
  na_strlistrec *actstrlist;
  log_hook2 *hook2;
  log_hwrec *probehwire;
  log_vwrec *probevwire;
  long actx2, acty2;
  na_quadword actq1, actq2;
  char  genfunc[17];
  long runstamp;
} log_action;

typedef struct log_tool {
  char  name[17];
  void  (*proc)  (log_action *act)  ;
  char  *fname, *comment;
  char  *shortname;
  unsigned ready : 1, simulator : 1, keep : 1, nostatus : 1, tstepflag : 1;
  uchar simtype;
  double nexttstep;
  na_strlistrec *nlbl, *hlbl;
  short nnumattrs, hnumattrs;
  log_kattrrec *nattr, *hattr;
  na_long info;
  struct log_tool *next;
  long netstamp;    
  double deltatime;
} log_tool;






 
# 74 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\sysglobals.h" 1
 













typedef char  fsidctype[20];





 


 


 


 


 


 


 


 


 


 


 

 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef enum {
    untypedfile, badfile, codefile, textfile, asciifile, datafile, sysfile,
    fkind7, fkind8, fkind9, fkind10, fkind11, fkind12, fkind13, fkind14,
    lastfkind
} filekind;

typedef char  window[];

typedef enum {
    readbytes, writebytes, flush, writeeol, readtoeol, clearunit, setcursor,
    getcursor, startread, startwrite, unitstatus, seekeof
} amrequesttype;

typedef struct fib {
    char  *fwindow;
    struct fib *flistptr;
    long frecsize;
    short feft;
    unsigned fkind : 4, fistextvar : 1, fbuffered : 1, fanonymous : 1,
	     fisnew : 1, freadable : 1, fwriteable : 1, freadmode : 1,
	     fbufvalid : 1, feoln : 1, feof_ : 1, fmodified : 1,
	     fbufchanged : 1;
    long fpos, fleof, fpeof, flastpos;
    short freptcnt;
    _PROCEDURE am;
    long fstartaddress;
    char  fvid[16  + 1];
    char  ffpw[16  + 1];
    char  ftid[16  + 1];
    long pathid;
    short fanonctr;
    char  *foptstring;
    long fileid;
    unsigned fb0 : 1, fb1 : 1, fnosrmtemp : 1, fwaitonlock : 1,
	     fpurgeoldlink : 1, foverwritten : 1, fsavepathid : 1,
	     flockable : 1, flocked : 1, fbusy : 1, funit : 6;
    _PROCEDURE feot;
    long fxpos, fypos, foldfileid;
    long fextra[3];
    short fextra2;
    union {
	char  ftitle[120  + 1];
	char  fbuffer[512 ];
    } UU;
} fib;

typedef enum {
    getvolumename, setvolumename, getvolumedate, setvolumedate, changename,
    purgename, openfile, createfile, overwritefile, closefile, purgefile,
    stretchit, makedirectory, crunch, opendirectory, closedirectory, catalog,
    stripname, setunitprefix, openvolume, duplicatelink, openparentdir,
    catpasswords, setpasswords, lockfile, unlockfile, openunit
} damrequesttype;

typedef struct unitentry {
    _PROCEDURE dam;
    _PROCEDURE tm;
    uchar sc, ba, du, dv;
    long byteoffset, devid;
    char  uvid[16  + 1];
    long dvrtemp;
    short dvrtemp2;
    char  letter;
    unsigned offline : 1, uisinteractive : 1, umediavalid : 1, uuppercase : 1,
	     uisfixed : 1, ureportchange : 1, pad : 1, uisblkd : 1;
    union {
	long umaxbytes;
    } UU;
} unitentry;

typedef unitentry unitabletype[50  + 1];

typedef _PROCEDURE amtabletype[16];

typedef char  suftabletype[16][6];

typedef short efttabletype[16];

typedef enum {
    inoerror, zbadblock, ibadunit, zbadmode, ztimeout, ilostunit, ilostfile,
    ibadtitle, inoroom, inounit, inofile, idupfile, inotclosed, inotopen,
    ibadformat, znosuchblk, znodevice, zinitfail, zprotected, zstrangei,
    zbadhardware, zcatchall, zbaddma, inotvalidsize, inotreadable,
    inotwriteable, inotdirect, idirfull, istrovfl, ibadclose, ieof,
    zuninitialized, znoblock, znotready, znomedium, inodirectory,
    ibadfiletype, ibadvalue, icantstretch, ibadrequest, inotlockable,
    ifilelocked, ifileunlocked, idirnotempty, itoomanyopen, inoaccess,
    ibadpass, ifilenotdir, inotondir, ineedtempdir, isrmcatchall,
    zmediumchanged, endioerrs
} iorsltwd;

typedef struct isrib {
    char  *intregaddr;
    uchar intregmask, intregvalue;
    unsigned chainflag : 1;
    _PROCEDURE proc;
    struct isrib *link;
} isrib;

typedef isrib *inttabletype[7];

typedef struct daterec {
    char year;
    unsigned day : 5, month : 4;
} daterec;

typedef struct timerec {
    unsigned hour : 5, minute : 6, centisecond : 13;
} timerec;

typedef struct datetimerec {
    daterec date;
    timerec time;
} datetimerec;



extern  short sysescapecode;
extern  Anyptr *openfileptr, *recoverblock, *heapmax, *heapbase;
extern  long sysioresult, hardwarestatus, locklevel;
extern  unitentry *unitable;
extern  inttabletype interrupttable;
extern  long endisrhook, actionspending;
extern  FILE **gfiles[6];
extern  _PROCEDURE *amtable;
extern  char  (*suffixtable)[6];
extern  short *efttable;
extern  long sysunit;
extern  char  syvid[16  + 1], dkvid[16  + 1];
extern  char  syslibrary[120  + 1];
extern  _PROCEDURE debugger;
extern  _PROCEDURE cleariohook;
extern  inttabletype perminttable;
extern  _PROCEDURE deferredaction[10];
extern  _PROCEDURE serialtextamhook;
extern  char  sysname[10];
extern  struct {
    unsigned reserved1 : 1, reserved2 : 1, nointhpib : 1, crtconfigreg : 1,
	     nokeyboard : 1, highlightsxorbiggraphics : 1, biggraphics : 1,
	     alpha50 : 1;
} sysflag;
extern  struct {
    char pad7to1;
    unsigned prompresent : 1;
} sysflag2;
extern  short endsysvars;







 

# 78 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\sysdevs.h" 1
 



















 
 
 
 



 
 
 
 
 

typedef union CRTWORD {
    struct {
	char  HIGHLIGHTBYTE, CHARACTER;
    } U1;
    short WHOLEWORD;
} CRTWORD;

typedef enum {
    CLLPUT, CLLSHIFTL, CLLSHIFTR, CLLCLEAR, CLLDISPLAY, PUTSTATUS
} CRTLLOPS;

typedef enum {
    DBINFO, DBEXCG, DBGOTOXY, DBPUT, DBINIT, DBCLEAR, DBCLINE, DBSCROLLUP,
    DBSCROLLDN, DBSCROLLL, DBSCROLLR, DBHIGHL
} DBCRTOPS;

typedef struct DBCINFO {
    char  *SAVEAREA;
    long SAVESIZE, DCURSORADDR;
    short XMIN, XMAX, YMIN, YMAX, CURSX, CURSY;
    char  C;
    boolean AREAISDBCRT, CHARISMAPPED;
    short DEBUGHIGHLIGHT;
} DBCINFO;

typedef uchar crtconsttype[12];

typedef struct crtfrec {
    unsigned nobreak : 1, stupid : 1, slowterm : 1, hasxycrt : 1,
	     haslccrt : 1, hasclock : 1, canupscroll : 1, candownscroll : 1;
} crtfrec;

typedef unsigned short b9;

typedef unsigned short b14;

typedef struct crtcrec {
    char  rlf, ndfs, eraseeol, eraseeos, home, escape, backspace;
    uchar fillcount;
    char  clearscreen, clearline;
    unsigned short prefixed;
} crtcrec;

typedef struct crtirec {
    short width, height;
    long crtmemaddr, crtcontroladdr, keybufferaddr, progstateinfoaddr;
    short keybuffersize;
    crtconsttype crtcon;
    char  right, left, down, up, badch, chardel, stop, break_, flush, eof,
	 altmode, linedel, backspace, etx, prefix;
    unsigned short prefixed;
    long cursormask, spare;
} crtirec;

typedef struct psysenviron {
    crtfrec miscinfo;
    long crttype;
    crtcrec crtctrl;
    crtirec crtinfo;
} psysenviron;

typedef enum {
    NOCRT, ALPHATYPE, BITMAPTYPE, SPECIALCRT1, SPECIALCRT2
} crtkinds;



 
 
 
 
 
 
 
 
 











 

typedef enum {
    NOKBD, LARGEKBD, SMALLKBD, ITFKBD, SPECIALKBD1, SPECIALKBD2
} KEYBOARDTYPE;

typedef enum {
    NO_KBD, FINISH_KBD, BELGIAN_KBD, CDN_ENG_KBD, CDN_FR_KBD, NORWEGIAN_KBD,
    DANISH_KBD, DUTCH_KBD, SWISS_GR_KBD, SWISS_FR_KBD, SPANISH_EUR_KBD,
    SPANISH_LATIN_KBD, UK_KBD, ITALIAN_KBD, FRENCH_KBD, GERMAN_KBD,
    SWEDISH_KBD, SPANISH_KBD, KATAKANA_KBD, US_KBD, ROMAN8_KBD, NS1_KBD,
    NS2_KBD, NS3_KBD, SWISS_GR_B_KBD, SWISS_FR_B_KBD
} LANGTYPE;

typedef enum {
    M_NONE, M_SYSNORM, M_SYSSHIFT, M_U1, M_U2, M_U3, M_U4
} MENUTYPE;



 
 








 
 
 







 



 
 

typedef struct RTCTIME {
    long PACKEDTIME, PACKEDDATE;
} RTCTIME;

typedef enum {
    CGETDATE, CGETTIME, CSETDATE, CSETTIME
} CLOCKFUNC;

typedef enum {
    CGET, CSET, CUPDATE
} CLOCKOP;

typedef union CLOCKDATA {
    timerec TIMETYPE;
    daterec DATETYPE;
} CLOCKDATA;



 
 
 

typedef enum {
    CYCLICT, PERIODICT, DELAYT, DELAY7T, MATCHT
} TIMERTYPES;

typedef enum {
    SETT, READT, GETTINFO
} TIMEROPTYPE;

typedef union TIMERDATA {
    long COUNT;
    timerec MATCH;
    struct {
	long RESOLUTION, RANGE;
    } U2;
} TIMERDATA;



 




typedef enum {
    KGETCHAR, KAPPEND, KNONADVANCE, KCLEAR, KDISPLAY, KGETLAST, KPUTFIRST
} KOPTYPE;

typedef char  KBUFTYPE[255  + 1];

typedef struct KBUFREC {
    boolean ECHO;
    char  NON_CHAR;
    long MAXSIZE, SIZE, INP, OUTP;
    char  *BUFFER;
} KBUFREC;



 
 
 
 
 
 
 

typedef enum {
    KPASSTHRU, KSHIFT_EXTC, KPASS_EXTC
} KEYTRANSTYPE;

typedef enum {
    ALPHA_KEY, NONADV_KEY, SPECIAL_KEY, IGNORED_KEY, NONA_ALPHA_KEY
} KEYTYPE;

typedef struct LANGCOMREC {
    uchar STATUS, DATA;
    char  KEY;
    KEYTYPE RESULT;
    boolean SHIFT, CONTROL, EXTENSION;
} LANGCOMREC;

typedef struct LANGKEYREC {
    boolean NO_CAPSLOCK, NO_SHIFT, NO_CONTROL, NO_EXTENSION;
    KEYTYPE KEYCLASS;
    char  KEYS[2];
} LANGKEYREC;

typedef struct LANGRECORD {
    boolean CAN_NONADV;
    LANGTYPE LANGCODE;
    _PROCEDURE SEMANTICS;
    LANGKEYREC KEYTABLE[128];
} LANGRECORD;



 
 








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef enum {
    datastarting, dataended, resetdevice, uninitdevice
} loopdvrop;

typedef enum {
    RAWSHIFTOP, NORMSHIFTOP, CHECKLOOPOP, CONFIGUREOP, LCOMMANDOP
} HPHILOP;

typedef union descriprec {
    struct {
	uchar id;
	unsigned twosets : 1, abscoords : 1, size16 : 1, hasprompts : 1,
		 ext_desc : 1, security : 1, numaxes : 2;
	signed  int counts : 16, maxcountx : 16, maxcounty : 16,
		   maxcountz : 16;
	unsigned promptack : 1, nprompts : 3, proximity : 1, nbuttons : 3;
    } U1;
    char  darray[11];
} descriprec;

typedef struct devicerec {
    long devstate;
    descriprec descrip;
    _PROCEDURE opsproc;
    _PROCEDURE dataproc;
} devicerec;

typedef struct loopdriverrec {
    uchar lowid, highid, daddr;
    _PROCEDURE opsproc;
    _PROCEDURE dataproc;
    struct loopdriverrec *next;
} loopdriverrec;

typedef struct LOOPCONTROLREC {
    boolean rawmode;
    devicerec loopdevices[7 ];
    char loopdevice;
    uchar loopcmd, loopdata;
    boolean looperror, loopinconfig, loopcmddone, loopisok, loopdevreading;
} LOOPCONTROLREC;



 
 



 
 







 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef union HPHIL_COMM_REC_TYPE {
    struct {
	short dvr_type;
	char dev_addr;
	boolean latch, active, reading;
	uchar devices;
	_PROCEDURE update;
	union HPHIL_COMM_REC_TYPE *link;
	long extend;
	short xloc, yloc, zloc, codetype, ncodes;
	char  codes[16];
    } U1;
    char  barray[54];
} HPHIL_COMM_REC_TYPE;



extern  psysenviron *SYSCOM;
extern  boolean ALPHASTATE, GRAPHICSTATE;
extern  _PROCEDURE CRTIOHOOK;
extern  _PROCEDURE TOGGLEALPHAHOOK;
extern  _PROCEDURE TOGGLEGRAPHICSHOOK;
extern  _PROCEDURE DUMPALPHAHOOK;
extern  _PROCEDURE DUMPGRAPHICSHOOK;
extern  _PROCEDURE UPDATECURSORHOOK;
extern  _PROCEDURE CRTINITHOOK;
extern  _PROCEDURE CRTLLHOOK;
extern  _PROCEDURE DBCRTHOOK;
extern  short XPOS, YPOS;
extern  crtkinds CURRENTCRT;
extern  long BITMAPADDR, FRAMEADDR;
extern  short REPLREGCOPY, WINDOWREGCOPY, WRITEREGCOPY;
extern  _PROCEDURE KBDREQHOOK;
extern  _PROCEDURE KBDIOHOOK;
extern  _PROCEDURE KBDISRHOOK;
extern  _PROCEDURE KBDPOLLHOOK;
extern  KEYBOARDTYPE KBDTYPE;
extern  uchar KBDCONFIG;
extern  LANGTYPE KBDLANG;
extern  char  *SYSMENU, *SYSMENUSHIFT;
extern  MENUTYPE MENUSTATE;
extern  _PROCEDURE MASKOPSHOOK, BEEPERHOOK;
extern  uchar BFREQUENCY, BDURATION;
extern  _PROCEDURE RPGREQHOOK;
extern  _PROCEDURE RPGISRHOOK;
extern  boolean BATTERYPRESENT;
extern  _PROCEDURE BATCMDHOOK;
extern  _PROCEDURE BATREADHOOK;
extern  _PROCEDURE CLOCKREQHOOK;
extern  _PROCEDURE CLOCKIOHOOK;
extern  _PROCEDURE TIMERIOHOOK;
extern  _PROCEDURE TIMERISRHOOK;
extern  KBUFREC *KEYBUFFER;
extern  _PROCEDURE KBDWAITHOOK;
extern  _PROCEDURE KBDRELEASEHOOK;
extern  char  STATUSLINE[8];
extern  LANGCOMREC LANGCOM;
extern  LANGRECORD *LANGTABLE[2];
extern  char LANGINDEX;
extern  _PROCEDURE KBDTRANSHOOK;
extern  KEYTRANSTYPE TRANSMODE;
extern  boolean KBDSYSMODE, KBDALTLOCK, KBDCAPSLOCK;
extern  loopdriverrec *loopdriverlist;
extern  LOOPCONTROLREC *LOOPCONTROL;
extern  _PROCEDURE HPHILCMDHOOK;
extern  HPHIL_COMM_REC_TYPE *HPHIL_DATA_LINK;



 
 
 
 
extern void  SYSDEV_INIT (void) ;

 
extern void  BEEP (void) ;
extern void  BEEPER  (int FREQUENCY, int DURATION)  ;

 
extern void  SETRPGRATE  (int RATE)  ;

 
extern void  KBDSETUP  (int CMD, int VALUE)  ;
extern void  KBDIO  (fib *FP, int REQUEST, char  *BUFFER, long BUFSIZE,
		      long POSITION)  ;
extern void  lockedaction  (_PROCEDURE a)  ;

 
extern void  CRTIO  (fib *FP, int REQUEST, char  *BUFFER, long BUFSIZE,
		      long POSITION)  ;
extern void  DUMMYCRTLL  (int OP, long *POSITION, int C)  ;

 
extern void  BATCOMMAND  (int CMD, long NUMDATA, int B1, int B2, int B3,
			   int B4, int B5)  ;
extern uchar BATBYTERECEIVED (void) ;

 
extern long sysclock (void) ;

 
extern void  sysdate  (daterec *thedate)  ;
extern void  systime  (timerec *thetime)  ;
extern void  setsysdate  (daterec thedate)  ;
extern void  setsystime  (timerec thetime)  ;

 
extern void  KEYBUFOPS  (int OP, char  *C)  ;

 
extern void  SETSTATUS  (long N, int C)  ;
extern char  RUNLIGHT (void) ;
extern void  SETRUNLIGHT  (int C)  ;







 

# 82 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\rnd.h" 1










extern void P_random();
extern long P_rand();




# 86 "log.c" 2



 


# 1 "..\\..\\psys\\include\\p2c\\misc.h" 1
 





 





# 1 "..\\..\\psys\\include\\p2c\\asm.h" 1
 



















extern void  asm_moveleft  (long *s, long *d, long z)  ;
extern void  asm_moveright  (long *s, long *d, long z)  ;
extern void  asm_fastmove  (Anyptr s, Anyptr d, long z)  ;
extern void  asm_newbytes  (Anyptr *p, long z)  ;
extern void  asm_powerup (void) ;
extern void  asm_errmsg (void) ;
extern void  asm_findroms (void) ;
extern void  asm_f_pwr_on (void) ;
extern void  asm_flpyread  (long sector, long *buffer)  ;
extern void  asm_flpy_wrt  (long sector, long *buffer)  ;
extern void  asm_flpymread  (long sector_count, long sector, long *buffer)  ;
extern void  asm_flpymwrite  (long sector_count, long sector, long *buffer)  ;
extern void  asm_flpyinit  (Anyptr ptr, int i)  ;
extern void  asm_setintlevel  (long level)  ;
extern long asm_intlevel (void) ;
extern void  asm_newwords  (Anyptr *p, long wordsize)  ;
extern void  asm_userprogram  (long execloc, long initsp)  ;
extern void  asm_sappend  (char  *dest, int MAX_dest, char  *src)  ;
extern long asm_iand  (long a, long b)  ;
extern long asm_ior  (long a, long b)  ;
extern void  asm_ci_switch (void) ;
extern void  asm_initvects (void) ;
extern void  asm_cpymsg  (char  *msg)  ;

 
extern long asm_ticker (void) ;
extern void  asm_cache_on (void) ;
extern void  asm_cache_off (void) ;
extern void  asm_icache_off (void) ;
extern void  asm_icache_on (void) ;
extern void  asm_flush_icache (void) ;







 

# 13 "..\\..\\psys\\include\\p2c\\misc.h" 2

































































 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

typedef struct misc_catentry {
    char  cname[16  + 1];
    short ceft;
    filekind ckind;
    long cpsize, clsize, cstart, cblocksize;
    daterec ccreatedate, clastdate;
    timerec ccreatetime, clasttime;
    long cextra1, cextra2;
    char  cinfo[21];
} misc_catentry;

typedef struct misc_passentry {
    long pbits;
    char  pword[16  + 1];
} misc_passentry;



extern  uchar misc_idle;



 
extern void  misc_getioerrmsg  (char  *s, long lastior)  ;
extern void  misc_printerror  (long errorcode, long lastior)  ;
extern void  misc_upc  (char  *s)  ;
extern long misc_ueovbytes  (int unit)  ;
extern void  misc_unblockeddam  (fib *f, int unum, int request)  ;
extern void  misc_initfilekinds (void) ;
extern void  misc_lockup (void) ;
extern void  misc_lockdown (void) ;







 

# 92 "log.c" 2


 

# 1 "help.h" 1






# 96 "log.c" 2



# 1 "..\\..\\psys\\include\\p2c\\newci.h" 1
 















 






 

typedef char  *newci_argarr[100001L];

typedef struct newci_parserec {
    char  switch_[4];
    uchar used;
    char  kind;
    union {
	long i;
	double r;
	char  *s;
	_PROCEDURE p;
	_PROCEDURE p1;
    } UU;
} newci_parserec;

typedef newci_parserec newci_parsetab[1000000L];

typedef struct newci_fshandle {
    long a, b;
} newci_fshandle;

typedef enum {
    im_normal, im_keep, im_default, im_key, im_grab
} newci_imode;

typedef struct timers_desc {
    long rate;
    _PROCEDURE proc;
    long count;
    boolean perm;
    struct timers_desc *next;
    Anyptr *user;
} timers_desc;







extern  _PROCEDURE newci_progentryhook;
extern  _PROCEDURE newci_progexithook;
extern int P_argc;
extern char  **P_argv;
extern  char  *newci_programname;
extern  char  *newci_programargs;
extern  boolean newci_rediroutput, newci_redirinput;
extern  char  newci_inputhighlight;
extern  boolean newci_markuserflag, newci_ucfilenames, newci_verbose;
extern  short newci_errorcode;
extern  char  *newci_shellname;
extern  boolean newci_shellflag, respond_flag, respond_enable;
extern  long newci_exitcode;
extern  _PROCEDURE newci_checkrespondhook;
extern  short timers_phase, timers_permphase;
extern  long timers_clocks[16];
extern  FILE **newci_stdterm;



extern FILE **newci_stdin (void) ;
extern FILE **newci_stdout (void) ;
extern FILE **newci_stderr (void) ;
extern void  newci_parseargs  (char  *s)  ;
extern void  newci_parseswitch  (newci_parserec *tab, long size, char  *bad)  ;
extern void  newci_eatargument (void) ;
extern void  newci_fixfname  (char  *s, char  *ext, char  *home)  ;
extern void  newci_forcefname  (char  *s, char  *ext, char  *home)  ;
extern void  newci_chainprogram  (char  *name)  ;
extern void  newci_markprogram  (long *id)  ;
extern void  newci_loadprogram  (char  *name)  ;
extern void  newci_reloadprogram  (char  *name)  ;
extern void  newci_releaseprogram  (long *id)  ;
extern void  newci_runprogram  (char  *name)  ;
extern void  newci_shellrunprogram  (char  *name, int debugging)  ;
extern void  newci_basicrunprogram  (char  *name, int debugging)  ;
extern void  newci_shellescape  (char  *args)  ;
extern void  newci_fullshellescape  (char  *args, char  *opts)  ;
extern void  newci_fulleditescape  (char  *fn, char  *opts, long ln, long pos)  ;
extern void  newci_permanentprogram (void) ;
extern void  newci_unpermanentprogram (void) ;
extern void  newci_recursiveprogram (void) ;
extern void  newci_flushexecutionbits (void) ;
extern void  newci_getenv  (char  *variable, char  *value, boolean *exists)  ;
extern boolean newci_canreleaseprogram  (long id)  ;
extern void  newci_exit  (long code)  ;
extern void  newci_assert  (int flag, char  *msg)  ;
extern void  newci_ferror  (char  *msg)  ;
extern void  newci_merror  (char  *s, char  *msg)  ;
extern char  *newci_showerror  (char  *newci_Result, char  *msg)  ;
extern void  newci_fescape  (long esc, long ior, char  *msg)  ;
extern void  newci_mescape  (char  *s, long esc, long ior, char  *msg)  ;
extern char  *newci_showescape  (char  *newci_Result, long esc, long ior,
				  char  *msg)  ;
extern void  newci_nullrecover (void) ;
extern void  newci_reescape (void) ;
extern void  newci_checkior (void) ;
extern void  newci_iorecover (void) ;
extern Anyptr *newci_findsymbol  (char  *name)  ;

 
extern void  newci_initfindsymbol2  (newci_fshandle *handle)  ;
extern Anyptr *newci_findsymbol2  (char  *suffix, newci_fshandle *handle,
				     char  *name)  ;
extern boolean newci_findprogram  (char  *name)  ;
extern boolean newci_findprocedure  (char  *name, _PROCEDURE *start)  ;
extern boolean newci_findprocedure2  (char  *name, _PROCEDURE *start)  ;
extern Anyptr *newci_findglobal  (char  *name, long offset)  ;
extern void  newci_findabove  (long *addr, char  *name)  ;
extern void  newci_findbelow  (long *addr, char  *name)  ;
extern void  push_var  (long *v)  ;

 
extern void  push_varstr  (char  *s)  ;
extern void  push_boolean  (int b)  ;
extern void  push_char  (int c)  ;
extern void  push_shortint  (long i)  ;

 
extern void  push_ptr  (Anyptr *p)  ;
extern void  push_integer  (long i)  ;
extern void  push_real  (double r)  ;
extern void  push_string  (char  *s)  ;
extern void  newci_callfunction  (_PROCEDURE start, long *ret, long retsize)  ;
extern boolean newci_callboolean  (_PROCEDURE start)  ;
extern void  newci_inputbegin (void) ;
extern void  newci_inputmap (void) ;
extern void  newci_inputunmap (void) ;
extern void  newci_inputstring  (char  *s, int mode, char  *possterm,
				  char  *term, int echoterm, long *pos)  ;
extern void  newci_addrecallstr  (char  *s)  ;
extern void  interrupt_input  (int ch)  ;
extern void  newci_streamopen  (char  *sfile, int report)  ;
extern void  newci_streamclose (void) ;
extern void  check_respond (void) ;
extern void  timers_add  (timers_desc *t)  ;
extern void  timers_addperm  (timers_desc *t)  ;
extern void  timers_remove  (timers_desc *t)  ;
extern long timers_sysclock (void) ;
extern void  timers_refreshclock (void) ;
extern void  timers_clockon (void) ;
extern void  timers_clockoff (void) ;
extern void  timers_setalarm  (long hour, long min)  ;
extern long newci_fullseconds (void) ;
extern void  newci_fulltime  (long *sec, long *csec)  ;
extern long newci_dayofweek (void) ;







 

# 99 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\filepack.h" 1
 









 















typedef char  fp_volumearray[50][26];

typedef enum {
    fp_keepit, fp_purgeit
} fp_closecode;

typedef misc_passentry fp_passarray[201];



extern void  fp_volumes  (char  **v)  ;
extern void  fp_filecopy  (char  *filename1, char  *filename2, int writeover)  ;
extern void  fp_filecopy2  (char  *filename1, char  *filename2, int writeover,
			     int saveDate)  ;
extern void  fp_duplicate  (char  *filename1, char  *filename2, int purgeold)  ;
extern void  fp_change  (char  *filename1, char  *filename2)  ;
extern void  fp_makefile  (char  *filename)  ;
extern void  fp_makedir  (char  *filename)  ;
extern void  fp_remove  (char  *filename)  ;
extern void  fp_prefix  (char  *filename, int unitonly, int sysvol)  ;
extern boolean fp_getwd  (char  *path, char  *rootname)  ;
extern boolean fp_f_readable  (char  *filename)  ;
extern boolean fp_f_exists  (char  *filename)  ;
extern void  fp_f_flush  (fib *outfib)  ;
extern void  fp_stat  (char  *path, misc_catentry *cat)  ;
extern void  fp_fstat  (fib *f, misc_catentry *cat)  ;
extern void  fp_setFileTimes  (char  *fn, int set_access, int set_create,
				misc_catentry *cat)  ;
extern void  fp_fSetFileTimes  (fib *f, int set_access, int set_create,
				 misc_catentry *cat)  ;
extern void  fp_open_parentdir  (fib *dirfib, char  *dirname,
				  misc_catentry *dirinfo)  ;
extern void  fp_open_dir  (fib *dirfib, char  *dirname,
			    misc_catentry *dirinfo)  ;
extern void  fp_open_dir0  (fib *dirfib, char  *dirname,
			     misc_catentry *dirinfo)  ;
extern void  fp_close_dir  (fib *dfib)  ;
extern void  fp_cat_dir  (fib *dfib, short *numfiles, Anyptr *where)  ;
extern void  fp_close_pass  (fib *pfib)  ;
extern void  fp_open_pass  (fib *pfib, char  *fname, misc_passentry **owords)  ;
extern void  fp_cat_pass  (fib *pfib, short *numpass, misc_passentry *pwords)  ;
extern void  fp_add_pass  (fib *pfib, misc_passentry *entry_)  ;
extern void  fp_bits_to_words  (long b, misc_passentry *ow, char  *s)  ;
extern void  fp_words_to_bits  (char  *s, misc_passentry *ow, long *b)  ;
extern void  fp_iocheck (void) ;
extern void  fp_badio  (int iocode)  ;
extern void  fp_setup_fib  (char  *filename, fib *lfib, int needdirec)  ;
extern void  fp_openinfile  (fib *infib, char  *filename)  ;
extern void  fp_openoutfile  (fib *outfib, char  *filename)  ;
extern void  fp_closeinfile  (fib *infib)  ;
extern void  fp_closeoutfile  (fib *outfib, int option)  ;
extern long fp_uwrite  (fib *f, char  *buffer, long request)  ;
extern long fp_uread  (fib *f, char  *buffer, long request)  ;







 

# 103 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\citinfomod.h" 1
 


























typedef struct P_citinforec {
    char  username[31];
    char  homepath[120  + 1];
    datetimerec loginat;
    short node, userid, groupid;
    char  machine[20];
    boolean novice;
} P_citinforec;



extern  P_citinforec *P_citinfo;
extern  _PROCEDURE P_changeCitInfoHook;
extern  long P_citSystem;







 

# 107 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\iodecl.h" 1
 




















































































































typedef enum {
    ren_line, ifc_line, srq_line, eoi_line, nrfd_line, ndac_line, dav_line,
    atn_line
} type_hpib_line;

typedef enum {
    no_parity, odd_parity, even_parity, zero_parity, one_parity
} type_parity;

typedef enum {
    rts_line, cts_line, dcd_line, dsr_line, drs_line, ri_line, dtr_line
} type_serial_line;

typedef struct drv_table_type {
    _PROCEDURE iod_init;
    _PROCEDURE iod_isr;
    _PROCEDURE iod_rdb;
    _PROCEDURE iod_wtb;
    _PROCEDURE iod_rdw;
    _PROCEDURE iod_wtw;
    _PROCEDURE iod_rds;
    _PROCEDURE iod_wtc;
    _PROCEDURE iod_end;
    _PROCEDURE iod_tfr;
    _PROCEDURE iod_send;
    _PROCEDURE iod_ppoll;
    _PROCEDURE iod_set, iod_clr;
    _PROCEDURE iod_test;
} drv_table_type;

typedef union io_funny_proc {
    _PROCEDURE real_proc;
    struct {
	Anyptr *dummy_pr, *dummy_sl;
    } U0;
} io_funny_proc;

typedef struct io_temp_type {
    isrib myisrib;
    io_funny_proc user_isr;
    Anyptr *user_parm, *card_addr, *in_bufptr, *out_bufptr;
    char  eirbyte;
    uchar my_isc;
    long timeout;
    short addressed;
    char  drv_misc[32];
} io_temp_type;

typedef struct io_temp_type2 {
    isrib myisrib;
    io_funny_proc user_isr;
    Anyptr *user_parm, *card_addr, *in_bufptr, *out_bufptr;
    char  eirbyte;
    uchar my_isc;
    long timeout;
    short addressed;
    char  drv_misc[128];
} io_temp_type2;

typedef struct io_temp_type3 {
    isrib myisrib;
    io_funny_proc user_isr;
    Anyptr *user_parm, *card_addr, *in_bufptr, *out_bufptr;
    char  eirbyte;
    uchar my_isc;
    long timeout;
    short addressed;
    char  drv_misc[160];
} io_temp_type3;

typedef struct io_temp_type4 {
    isrib myisrib;
    io_funny_proc user_isr;
    Anyptr *user_parm, *card_addr, *in_bufptr, *out_bufptr;
    char  eirbyte;
    uchar my_isc;
    long timeout;
    short addressed;
    char  drv_misc[164];
} io_temp_type4;

typedef struct isc_table_type {
    drv_table_type *io_drv_ptr;
    io_temp_type *io_tmp_ptr;
    short card_type;
    long user_time;
    short card_id;
    Anyptr *card_ptr;
} isc_table_type;

typedef enum {
    dummy_tfr_1, serial_DMA, serial_FHS, serial_FASTEST, dummy_tfr_2,
    overlap_INTR, overlap_DMA, overlap_FHS, overlap_FASTEST, P_OVERLAP
} user_tfr_type;

typedef enum {
    no_tfr, INTR_tfr, DMA_tfr, BURST_tfr, FHS_tfr
} actual_tfr_type;

typedef enum {
    to_memory, from_memory
} dir_of_tfr;

typedef char  buf_type[];

typedef struct buf_info_type {
    io_temp_type *drv_tmp_ptr;
    uchar active_isc;
    actual_tfr_type act_tfr;
    user_tfr_type usr_tfr;
    boolean b_w_mode, end_mode;
    dir_of_tfr direction;
    short term_char;
    long term_count;
    char  *buf_ptr;
    long buf_size;
    Anyptr *buf_empty, *buf_fill;
    io_funny_proc eot_proc;
    Anyptr *eot_parm;
    boolean dma_priority;
} buf_info_type;



extern  io_funny_proc dma_ch_0;
extern  uchar dma_isc_0;
extern  io_funny_proc dma_ch_1;
extern  uchar dma_isc_1;
extern  isrib dma_isrib0, dma_isrib1;
extern  boolean dma_here;
extern  char  io_work_char;
extern  long ioe_result, ioe_isc;
extern  isc_table_type isc_table[31  - 0  + 1];
extern  char  io_revid[97];
extern  _PROCEDURE io_error_link;



extern void  io_escape  (long my_code, long select_code)  ;
extern uchar io_find_isc  (Anyptr *iod_temp)  ;







 

# 111 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\gen1.h" 1
 
















extern void  P_ioinitialize (void) ;
extern void  P_iouninitialize (void) ;
extern void  P_ioreset  (int select_code)  ;
extern void  P_readchar  (int select_code, char  *value)  ;
extern void  P_writechar  (int select_code, int value)  ;
extern void  P_readword  (int select_code, long *num)  ;
extern void  P_writeword  (int select_code, long value)  ;
extern void  set_timeout  (int select_code, double time)  ;







 

# 115 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\gen2.h" 1
 
















extern void  P_readnumber  (long device, double *num)  ;
extern void  P_writenumber  (long device, double value)  ;
extern void  P_readstring  (long device, char  *str)  ;
extern void  readstring_until  (int term, long device, char  *str)  ;
extern void  P_writestring  (long device, char  *str)  ;
extern void  P_readnumberln  (long device, double *num)  ;
extern void  P_writenumberln  (long device, double value)  ;
extern void  P_writestringln  (long device, char  *str)  ;
extern void  P_readuntil  (int term, long device)  ;
extern void  P_skipfor  (long count, long device)  ;







 

# 119 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\gen3.h" 1
 
















extern char  *ioerror_message  (char  *P_Result, long ioerror)  ;







 

# 123 "log.c" 2




# 1 "..\\..\\psys\\include\\p2c\\fs.h" 1
 





 






















typedef enum {
    fs_cnormal, fs_lock, fs_purge, fs_ccrunch
} fs_closetype;

typedef enum {
    fs_readonly, fs_writeonly, fs_readwrite, fs_writeappend, fs_overwrite
} fs_faccess;

typedef union fs_vptr {
    long j;
    short *i;
    char  *s;
} fs_vptr;



extern void  fs_fstripname  (char  *s, char  *pvname, char  *ppath,
			      char  *pfname)  ;
extern void  fs_fixname  (char  *title, int kind)  ;
extern void  fs_zapspaces  (char  *s)  ;
extern filekind fs_suffix  (char  *ftitle)  ;
extern boolean fs_scantitle  (char  *fname, char  *fvid, char  *ftitle,
				long *fsegs, filekind *fkind)  ;
extern char fs_findvolume  (char  *fvid, int verify)  ;
extern void  fs_doprefix  (char  *dirname, char  *kvid, long *kunit,
			    int findunit)  ;
extern void  fs_finitb  (fib *f, char  *window_, long recbytes)  ;
extern void  fs_fhpopen  (fib *f, int typ, char  *title, char  *option)  ;
extern void  fs_fhpreset  (fib *f, int typ)  ;
extern void  fs_fcloseit  (fib *f, char  *stype)  ;
extern void  fs_fclose  (fib *f, int ftype)  ;
extern void  fs_fmaketype  (fib *f, char  *title, char  *option,
			     char  *typestring)  ;
extern void  fs_foverfile  (fib *f, char  *title, char  *option,
			     char  *typestring)  ;
extern void  fs_fanonfile  (fib *f, char  *name, int kind, long size)  ;
extern void  fs_fseek  (fib *f, long position)  ;
extern long fs_fposition  (fib *f)  ;
extern long fs_fmaxpos  (fib *f)  ;
extern char  *fs_fbufferref  (fib *f)  ;
extern void  fs_fget  (fib *f)  ;
extern void  fs_fput  (fib *f)  ;
extern boolean fs_feof  (fib *f)  ;
extern boolean fs_feoln  (fib *f)  ;
extern void  fs_fwriteln  (fib *f)  ;
extern void  fs_fread  (fib *f, char  *buf)  ;
extern void  fs_fwrite  (fib *f, char  *buf)  ;
extern void  fs_freadbytes  (fib *f, char  *buf, long size)  ;
extern void  fs_fwritebytes  (fib *f, char  *buf, long size)  ;
extern long fs_fblockio  (fib *f, char  *buf, long nblocks, long rblock,
			    int doread)  ;
extern void  fs_killchar  (fib *f, long *sinx)  ;
extern void  fs_fpage  (FILE *t)  ;
extern void  fs_foverprint  (FILE *t)  ;
extern void  fs_fgotoxy  (fib *f, long x, long y)  ;
extern void  fs_fgetxy  (fib *f, long *x, long *y)  ;
extern void  fs_freadln  (FILE *t)  ;
extern void  fs_fwritechar  (FILE *t, int ch, int rleng)  ;
extern void  fs_freadchar  (FILE *t, char  *ch)  ;
extern void  fs_freadword  (FILE *t, short *i)  ;
extern void  fs_freadint  (FILE *t, long *i)  ;
extern void  fs_fwriteword  (FILE *t, int i, int rleng)  ;
extern void  fs_fwriteint  (FILE *t, long i, int rleng)  ;
extern void  fs_fwritestr  (FILE *t, char  *s, int rleng)  ;
extern void  fs_freadstr  (FILE *t, char  *s)  ;
extern void  fs_fwritepaoc  (FILE *t, char  *a, int aleng, int rleng)  ;
extern void  fs_freadpaoc  (FILE *t, char  *a, int aleng)  ;
extern void  fs_freadenum  (FILE *t, short *i, fs_vptr p)  ;
extern void  fs_fwriteenum  (FILE *t, int i, int rleng, fs_vptr p)  ;
extern void  fs_freadbool  (FILE *t, boolean *b)  ;
extern void  fs_fwritebool  (FILE *t, int b, int rleng)  ;
extern void  fs_freadstrchar  (char  *s, long *p2, char  *ch)  ;
extern void  fs_fwritestrchar  (char  *s, long *p2, int ch, int rleng)  ;
extern void  fs_freadstrword  (char  *s, long *p2, short *i)  ;

 
extern void  fs_fwritestrword  (char  *s, long *p2, int i, int rleng)  ;

 
 
extern void  fs_freadstrstr  (char  *t, long *p2, char  *s)  ;
extern void  fs_fwritestrstr  (char  *s, long *p2, char  *t, int rleng)  ;
extern void  fs_fwritestrpaoc  (char  *s, long *p2, char  *a, int aleng,
				 int rleng)  ;
extern void  fs_freadstrpaoc  (char  *s, long *p2, char  *a, int aleng)  ;
extern void  fs_freadstrenum  (char  *s, long *p2, short *i, fs_vptr p)  ;
extern void  fs_fwritestrenum  (char  *s, long *p2, int i, int rleng,
				 fs_vptr p)  ;
extern void  fs_freadstrbool  (char  *s, long *p2, boolean *b)  ;
extern void  fs_fwritestrbool  (char  *s, long *p2, int b, int rleng)  ;







 

# 127 "log.c" 2






 
 

# 1 "logfont.h" 1



# 136 "log.c" 2



# 1 "..\\..\\psys\\include\\p2c\\newkbd.h" 1
 



































typedef CRTWORD nk_scrtype[];



 

typedef char  nk_progkeys[20][72];























typedef struct nk_keyinforec {
    uchar k, c;
} nk_keyinforec;

typedef nk_keyinforec nk_keyinfovector[(1  + 2 )  - 0  + 1];

typedef nk_keyinfovector nk_keymatrix[125  - (-2)  + 1];

typedef uchar nk_keycapsvector[(125  - (-2)  + 8) / 8];

typedef struct nk_keytransinfo {
    nk_keymatrix matrix;
    nk_keycapsvector caps;
    short rpgbufsize;
} nk_keytransinfo;



typedef struct nk_userkeyrec {
    struct nk_userkeyrec *next;
    _PROCEDURE proc;
    uchar kn, km;
    short special;
} nk_userkeyrec;



typedef struct nk_remap_info {
    short rnum, rmod;
    nk_keyinforec rinfo;
} nk_remap_info;

typedef nk_remap_info nk_remap_array[];



extern  char  nk_error_fid[120  + 1];
extern  CRTWORD *nk_screen;


 
extern  char  (*nk_k0k9)[72];
extern  boolean nk_capslock;



extern void  nk_lockkeyboard (void) ;
extern void  nk_unlockkeyboard (void) ;

 
extern long nk_keybuffree (void) ;
extern long nk_keybufmax (void) ;
extern void  nk_keybufclear (void) ;
extern void  nk_keylastclear (void) ;

 
extern void  nk_ungetkey  (int c)  ;
extern void  nk_addkey  (int c)  ;

 
extern void  nk_getstr  (char  *s)  ;
extern void  nk_getstruntil  (int c, char  *s)  ;
extern void  nk_ungetstr  (char  *s)  ;
extern void  nk_addstr  (char  *s)  ;


 
 
extern void  nk_crtwritestr  (int x, int y, char  *s, int field)  ;
extern void  nk_crtreadstr  (int x, int y, char  *s)  ;
extern void  nk_getcomperr  (long errnum, char  *errstr)  ;

 
extern boolean nk_setcapslock  (int newcaps)  ;
extern void  nk_settransarray  (int opcode, nk_keytransinfo **table)  ;
extern void  nk_set_trans_array  (int opcode, int rpgbuf,
				   nk_keytransinfo **table)  ;
extern void  nk_adduserkey  (int perm, int keynum, int keymod,
			      _PROCEDURE proc, nk_userkeyrec *ukr)  ;
extern void  nk_deluserkey  (nk_userkeyrec *ukr)  ;
extern void  nk_restoreuserkeys (void) ;
extern void  nk_remap  (int numkeys, nk_remap_info *newdefs)  ;
extern void  nk_unmap  (int numkeys, nk_remap_info *newdefs)  ;
extern void  nk_newkbdinstall (void) ;
extern void  nk_newkbdremove (void) ;







 

# 139 "log.c" 2








# 1 "..\\..\\psys\\include\\p2c\\newcrt.h" 1
 


 










 




 
 
 
 
 
 
 
 

typedef struct nc_windowRec {
    short top, height, left, width;
    long area;
    short font, gcolor, gtop, gheight, gleft, gwidth, gminx, gmaxx, gminy,
	  gmaxy, goffx, goffy, savex, savey, saveHigh;
    long saveSize;
    Anyptr *saveArea;
} nc_windowRec;



 
 
 
 
 
 

typedef short nc_maparray[256];



 
 
 
 
 




typedef struct nc_fontRec {
    short foffset, fwidth, fheight;
} nc_fontRec;



 
 









 





 





 




 

typedef char  nc_commandArray[256];



 
 
 
 
 
 
 
 
 
 

typedef union nc_crtword {
    struct {
      char  h, c;
    } U1;
    short i;
} nc_crtword;

typedef nc_crtword nc_scrtype[];



 
 

typedef uchar nc_colorarray[3][256];



extern nc_windowRec *nc_curWindow;
extern nc_windowRec *nc_mainWindow, *nc_lastLineWindow, *nc_statusWindow,
		    *nc_defaultWindow;

extern  int nc_text_in_window;
extern  int nc_window;
extern  int nc_initialized;
extern  int nc_gc;
extern  short nc_highlight, nc_defaultHighlight;
extern  nc_windowRec *nc_tempWindow;
extern  nc_fontRec nc_fonts[4  + 1];
extern  char  *nc_commands;
extern  _PROCEDURE nc_startAlphaHook, nc_endAlphaHook;
extern  struct {
    short left, top, xincr, yincr, width, height, colors, gColors;
} nc_g;
extern  nc_crtword *nc_screen;
extern  uchar (*nc_colors)[256];



 
extern void  nc_scrollDown (void) ;
extern void  nc_scrollUp (void) ;
extern void  nc_setWindow  (int s, int l)  ;
extern void  nc_revCheck  (char  *rev)  ;
extern void  nc_setbeep  (int b)  ;
extern short nc_getNumPlanes (void) ;
extern short nc_getAlphaPlanes (void) ;
extern void  nc_setAlphaPlanes  (int num)  ;
extern short nc_getGraphicsPlanes (void) ;
extern void  nc_setGraphicsPlanes  (int num)  ;
extern boolean nc_alphashared (void) ;
extern void  nc_sharealpha  (int b)  ;
extern void  nc_setAlpha  (int on)  ;
extern void  nc_setGraphics  (int on)  ;
extern short nc_getPlanes (void) ;
extern void  nc_setPlanes  (int mask)  ;
extern void  nc_putChar  (int x, int y, int c)  ;
extern void  nc_putChars  (int x, int y, int len, char  *c)  ;
extern void  nc_putStr  (int x, int y, char  *s)  ;
extern void  nc_writeStr  (int x, int y, char  *s)  ;
extern char  nc_getChar  (int x, int y)  ;
extern void  nc_getChars  (int x, int y, int len, char  *c)  ;
extern void  nc_getStr  (int x, int y, char  *s)  ;
extern short nc_getHighlight  (int x, int y)  ;
extern void  nc_setHighlight  (int high)  ;
extern void  nc_writeHighlight  (int x, int y, int len, int newhigh)  ;
extern void  nc_orHighlight  (int x, int y, int len, int newhigh)  ;
extern void  nc_andnotHighlight  (int x, int y, int len, int newhigh)  ;
extern void  nc_putWord  (int x, int y, int w)  ;
extern void  nc_putWords  (int x, int y, int len, short *w)  ;
extern short nc_getWord  (int x, int y)  ;
extern void  nc_getWords  (int x, int y, int len, short *w)  ;
extern void  nc_makeWindow  (nc_windowRec *w, int ptop, int pheight,
			      int pleft, int pwidth)  ;
extern void  nc_setWindow_  (nc_windowRec *w)  ;
extern void  nc_saveWindow (void) ;
extern void  nc_restoreWindow (void) ;
extern void  nc_exchangeWindow (void) ;
extern void  nc_refreshON (void) ;
extern void  nc_refreshOFF (void) ;
extern void  nc_refreshXY  (int x, int y, int dx, int dy)  ;
extern void  nc_refreshWindow (void) ;
extern void  nc_refreshScreenXY  (int x, int y, int dx, int dy)  ;
extern void  nc_refreshScreen (void) ;
extern short nc_gType (void) ;
extern void  nc_aCMap  (int col, int r, int g, int b)  ;
extern void  nc_defaCMap (void) ;
extern void  nc_gCMap  (int col, int r, int g, int b)  ;
extern void  nc_defgCMap (void) ;
extern void  nc_gColor  (int col)  ;
extern void  nc_gLine  (int x1, int y1, int x2, int y2)  ;
extern void  nc_gFillRect  (int x1, int y1, int x2, int y2)  ;
extern void  nc_gBlit  (int repl_rule, int dox, int doy, int sox, int soy,
			 int width, int height)  ;
extern void  nc_gClear (void) ;
extern void  nc_gClipToWindow  (int x1, int y1, int x2, int y2)  ;
extern void  nc_gClipToHardware  (int x1, int y1, int x2, int y2)  ;
extern void  nc_clearXY  (int x, int y, int dx, int dy)  ;
extern void  nc_clear (void) ;
extern void  nc_scrollUp_ (void) ;
extern void  nc_scrollDown_ (void) ;
extern void  nc_scrollLeft (void) ;
extern void  nc_scrollRight (void) ;
extern void  nc_scrollXY  (int dx, int dy)  ;
extern void  nc_insChar  (int x, int y, int numChars)  ;
extern void  nc_insLine  (int y, int numLines)  ;
extern void  nc_getXY  (long *x, long *y)  ;
extern void  nc_setXY  (int x, int y)  ;
extern void  nc_gotoXY  (int x, int y)  ;
extern void  nc_cursXY  (int x, int y)  ;
extern void  nc_cursorOn (void) ;
extern void  nc_cursorOff (void) ;
extern void  nc_nothing (void) ;
extern void  nc_unInit (void) ;
extern void  nc_init (void) ;
extern void  nc_setDevice  (long newDevice)  ;

char *nc_fgets  (char *s, int n, FILE *stream)  ;
char *nc_gets  (char *s)  ;

















 

# 147 "log.c" 2




extern char *GetChipmunkPath();
char *my_strdup();


extern boolean findprocedure  (char  *name, void  (**start)())  ;

















     

     






















 











































 





























typedef struct descrec {



  long ptr;

  uchar numvects, numpins, numpnums, lblsize, simtype, procsize;
    short flag;
  schar xx1, yy1, xx2, yy2;
} descrec;

typedef struct ovectorrec {
  schar x1, y1, x2, y2;
} ovectorrec;

typedef union filerec {
  uchar b[256];
  schar sb[256];
  char  c[256];
  short sh[128];



  long i[64];

  log_pac8 ix[32];
  ovectorrec vec[64];
  log_pinrec pin[64];
  log_pnumrec pnum[64];
  descrec desc[16];
  log_pac4 c4[64];
} filerec;

typedef struct filerecfilerec {
  FILE *f;
  int   f_BFLAGS  ;  filerec    f_BUFFER   ;
} filerecfilerec;

typedef struct rablistrec {
  short x, y, next;
} rablistrec;    

typedef rablistrec rablisttype[23  + 1];

typedef struct rabmusrec {
  short note, time;
} rabmusrec;    

typedef rabmusrec rabmustype[32 ];

typedef short kindgrouptype[40 ];
typedef log_gattrrec *kindattrtype[40 ];

typedef uchar loadedgatesarray[(1000000L  + 7) / 8];
typedef char  indexarray[1000000L ][9];
typedef short ioffsetarray[1000000L ];
typedef uchar igrouparray[1000000L ];
 

typedef struct logmenurec {
  char  name[17];
  char  cmd[33];
  boolean *bool;
} logmenurec;    

typedef logmenurec logmenutype[8];



 
 
 
 
 
 


typedef struct cnrec {
  log_nrec *n, **np;
  boolean done;
  struct cnrec *next;
} cnrec;    


typedef struct blobrec {
  log_hwrec *hw;
  log_vwrec *vw;
  short x, y;
  struct blobrec *next;
} blobrec;


typedef struct cnfrec {
  char  tool[17];
  struct cnfrec *next;
  char  s[256];    
} cnfrec;    


typedef struct macrorec {
  char  key;
  struct macrorec *next;
  char  name[33];
} macrorec;    


typedef struct catboxrec {
  short pos, count;
  struct catboxrec *next;
} catboxrec;    


typedef struct librstrrec {
  char  name[9];
  char  *str;
  struct librstrrec *left, *right;
} librstrrec;


typedef struct baseptrs {
  log_grec *gcopy;
  log_srec *scopy;
  log_hwrec *hwcopy;
  log_vwrec *vwcopy;
  log_lrec *lcopy;
  log_brec *bcopy;
  short x1copy, y1copy, x2copy, y2copy, dxcopy, dycopy, pgnum;
  boolean valid;
} baseptrs;







 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

static const  rablisttype rablist = {
  { 0, 0, 1 },
  { 0, 4, 2 },
  { 0, 3, 3 },
  { 0, 2, 4 },
  { 0, 1, 5 },
  { 0, 0, 6 },
  { 1, 0, 7 },
  { 2, 0, 8 },
  { 3, 0, 9 },
  { 4, 0, 10 },
  { 4, 1, 11 },
  { 4, 2, -12 },
  { 3, 2, 13 },
  { 2, 2, 14 },
  { 1, 2, 15 },
  { 2, 2, -18 },
  { 0, 2, 17 },
  { 1, 2, 15 },
  { 3, 2, -20 },
  { 2, 3, -20 },
  { 3, 3, 21 },
  { 4, 3, -23 },
  { 3, 4, -23 },
  { 4, 4, 42 }
};

static const  rabmustype discomadness = {
  { 3, 46 },
  { 0, 8 },
  { 4, 10 },
  { 0, 15 },
  { 4, 12 },
  { 0, 2 },
  { 5, 35 },
  { 0, 6 },
  { 4, 35 },
  { 0, 6 },
  { 5, 8 },
  { 0, 17 },
  { 5, 12 },
  { 0, 2 },
  { 6, 35 },
  { 0, 6 },
  { 5, 35 },
  { 0, 6 },
  { 6, 8 },
  { 0, 17 },
  { 6, 12 },
  { 0, 2 },
  { 8, 35 },
  { 0, 6 },
  { 3, 35 },
  { 0, 6 },
  { 4, 8 },
  { 0, 16 },
  { 4, 12 },
  { 0, 3 },
  { 5, 50 },
  { 0, 0 }
};






static  log_action gg;    

static  short cursx, cursy;    
static  short cursx1, cursy1;    
static  short cursx2, cursy2;    
static  short chairx, chairy;    

static  boolean cursorflag;    
static  boolean prevcursorflag;
     
static  boolean chairflag;    
static  boolean chairflag2;    
static  boolean rbandflag;    
static  boolean rabbits, rabflag;    
static  boolean avoidrabbits;

static  short txacross, txdown, across, down, baseline, line1, line2,
	     kindgroupbase, kindgroupleft, kindgroupright, kindgroupstart,
	     kindgroupsize, histdown;

static  boolean entrycapslock;    
static  boolean oldcapslock;    

static  boolean signalcaps;    
static  boolean labelcaps;    

static  char  (*index_)[9];    
static  short *indexoffset;    
static  uchar *indexfile;    
static  uchar *indexgroup;    
static  uchar *loadedgates;    
static  log_krec *kind[255 ];    
static  kindgrouptype kindgroup;    
static  kindgrouptype kindsig;
static  kindattrtype kindattr;
static  na_strlist *gatefilenames;
static  short maxkinds, catwidth;
static  catboxrec *catboxes;
static  librstrrec *librstrs;

static  char  *gatesname[15 ];
static  char  *loghelpname, *lognewsname;    

static  long temp1, temp2, temp3, temp4;    
static  char  tempch;

static  short zoom;    
static  boolean ospointflag;    

static  long xoff0, yoff0;    

static  short curwcolor;    
static  char cureditmode;    
static  short curlistgroup;    

static  boolean vlsimode[9 ];    
static  long xoffp[9 ], yoffp[9 ];
     
static  short gatecount[9 ];    
static  char  *curfilename[9 ];    
static  long realcurpage;

static  log_nrec *freenode;    
static  log_grec *freegate;    

static  baseptrs copybuf;    

static  long htcount;    
static  short hncount;    
static  short hnocount;    
static  short histtrig;    
static  na_strlist *histlbl;
static  short histnumattrs;
static  log_kattrrec *histkattr;
static  log_gattrrec *histgattr;
static  short histgridmode, histgridwhich;
static  log_hnrec *histgridhn;
static  double histvalrange, histdivsacross;
static  boolean histonscreen;    
static  boolean histreset;    
static  double histtime;    

static  boolean probeflag;    

static  log_nrec *nodeconflictbase;    
static  log_grec *gateconflictbase;    

static  cnfrec *cnfbase;    
static  na_strlist *colorbase;    
static  macrorec *macrobase;    
static  na_strlist *thingstodo, *nexttodo;    
static  na_strlist *messages;    
static  na_strlist *commandlist;    

static  char  modename[9];    
static  boolean modeflag;    
static  long modetime;    
static  log_krec *modeprobekind;

static  nk_keytransinfo *curkeytrans;    

static  enum {
  normal, grid, delete__, copy_, paste, boxcursor
} cursortype, oldcursortype;
 

 
static  short bottomcount;    

static  uchar rcolormap[16], gcolormap[16], bcolormap[16];

static  short gategreen, gateyellow, gatered, gateorange, gateblack, gatewhite;

static  short defineboxcolor, definebackcolor, definetextcolor, catboxcolor;

static  short messagepos;    
static  short messageright;    

static  long fastsavetime;

static  long watchdog, rabtime;    

static  log_tool *simtype_ignore;    
static  log_tool *simtype_common;    

static  double status_oldtime, status_oldtstep;
static  long status_oldmem;

static  rablistrec rabtable[10 ];    
static  short rabstate;    

static  long helpptr;    

static  boolean popup_grid;    
static  logmenurec *popupmenus[4];

static  filerecfilerec *libf1[15 ];    
static  short libfstart[15 ];
     
static  short libptr;    
static  short idxsize;    
static  char  *librgroupnames[9];

static  short refrtimer, refrtimer0;    

static  long tabletaddr;

static  char  *dumpfname, *tracefname;
static  FILE *dumpfile, *tracefile;

static  long programmark;

static  char  pushedbackkey, realkey;

extern long EXCP_LINE;    
static  long excpline;

static  short conflictdelay;

static  boolean eightcolors;    
static  boolean onescreen;    
static  boolean doingcnffunction;    
static  boolean justonecommand;    
static  boolean displaynews;    
static  boolean immedscroll;    
static  boolean tempverbose;    
static  boolean commandfound;    
static  boolean cursorhide;    
static  boolean reportnowait;    
static  boolean firsttraining;    
static  boolean training;    
static  boolean snapflag;    
static  boolean showsolder;    
static  boolean briefprobe;    
static  boolean conflictenbl;    
static  boolean conflictstop;    
static  boolean anyconflicts;    
static  boolean steppingoff;    
static  boolean suppressdots;    
static  boolean glowsolder;    
static  boolean vlsi;    




 



 









extern void  m_saveclip (void) ;

extern void  nc_cursor_on (void) ;

extern void  nc_cursor_off (void) ;




 
 
 
 
 
 

static  void  initcolormap()
{
  m_setcolor((long)0 , 4L, 4L, 4L);
  m_setcolor((long)1 , 15L, 0L, 0L);
  m_setcolor((long)2 , 0L, 15L, 0L);
  m_setcolor((long)3 , 15L, 15L, 0L);
  if (eightcolors) {
    m_setcolor((long)4 , 15L, 0L, 0L);
    m_setcolor((long)5 , 0L, 0L, 0L);
  } else {
    m_setcolor((long)4 , 11L, 0L, 0L);
    m_setcolor((long)5 , 15L, 9L, 0L);
  }
  m_setcolor((long)6 , 0L, 15L, 15L);
  m_setcolor((long)7 , 15L, 15L, 15L);
  m_setcolor((long)8 , 0L, 0L, 0L);
  m_setcolor((long)9 , 15L, 9L, 9L);
  m_setcolor((long)10 , 12L, 12L, 0L);
  m_setcolor((long)11 , 0L, 13L, 0L);
  m_setcolor((long)12 , 0L, 10L, 10L);
  m_setcolor((long)13 , 8L, 0L, 0L);
  m_setcolor((long)14 , 10L, 10L, 10L);
  m_setcolor((long)15 , 15L, 0L, 0L);
  m_vseecolors(0L, 16L, rcolormap, gcolormap, bcolormap);
}


static  void  fixcolormap()
{
  m_vsetcolors(0L, 16L, rcolormap, gcolormap, bcolormap);
  recolor_log_cursors(gg.color.cursor, 1 );
}



static  void  initscreen()
{
  m_init_screen();
  m_upside_down();
  m_setlinestyle(1L, 0xf0f0L);
  m_setlinestyle(2L, 0xaaaaL);
 

  m_setfont(((void *)0)  );
  init_X_screen();
  onescreen = nc_alphashared();
  eightcolors = (m_maxcolor <= 7);

  txacross = nc_curWindow->width - 1;
  txdown = nc_curWindow->height - 1;
  across = m_across;
  down = m_down;
  baseline = down - 53;    
  line1 = down - 43;    
  line2 = down - 23;    
  histdown = down - 26;
  histdivsacross = (double)(across - 40 ) / 30 ;
  histvalrange = (double)histdown / 30  * 5;
  kindgroupsize = (across - 160) / (25  * 2) ;
  kindgroupleft = (across - kindgroupsize * (25  * 2) ) / 2;
  kindgroupright = kindgroupleft + kindgroupsize * (25  * 2) ;
  kindgroupstart = kindgroupleft + (25  * 2)  / 2;
  kindgroupbase = (baseline + down) / 2;

 
 

  nc_printf ("\200\210");
  SETRUNLIGHT(' ');

  cursorflag = 0 ;
  gg.stillnear = 1 ;
}


static  void  initscreen2()
{
  initscreen();
  m_clear();
  m_graphics_on();
}



static  char  *ioresult_message(Result, iores)
char  *Result;
long iores;
{
  char  s[81];

  misc_getioerrmsg(s, iores);    
  return strcpy(Result, s);
}




 
 
 
 
 

static  void  working()
{
}



 
 
 
 
 
 

static  void  alert()
{
  if (!gg.quiet)
    BEEPER(17, 10);
}



 
 
 
 
 
 

static  void  warning()
{
  if (!gg.quiet)
    BEEPER(4, 10);
}





 
 
 
 
 

static  void  noblink()
{
  nc_cursXY(-1, -1);
   






}




static  void  clearalpha()
{
  if (!onescreen) {
    nc_printf ("\f");
    noblink();
     ;
  }
  nc_gotoXY( 0 ,  0 ) ;
}



static  void  showalpha()
{
   ;
  m_alpha_on();
}



static  void  clearshowalpha (void) ;





 
 
 
 
 

static  void  message  (char  *msg)  ;


static  void  report(num, s)
short num;
char  *s;
{
  char  ch;
  char  STR2[256];

  if (reportnowait) {
    sprintf(STR2, "Internal error %d in %s", num, s);
    message(STR2);
    return;
  }
  BEEPER(4, 15);
  clearshowalpha();
  nc_gotoXY( 0 ,  txdown - 1 ) ;
 
 
 

  nc_printf ("\215--> Internal error %d in %s\210\n", num, s);
  if (gg.traceflag)
    nc_fprintf (tracefile, "--> Internal error %d in %s\n", num, s);
  m_alpha_on();
  nc_printf ("    Press any key to continue.");
  ch = m_inkey ();
  if (ch == 'N' || ch == 'n')
    reportnowait = 1 ;
  nc_putchar ('\n');
}






 
 
 
 
 

static  void  line(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  m_drawline(x1 * gg.scale - gg.xoff, y1 * gg.scale - gg.yoff,
	     x2 * gg.scale - gg.xoff, y2 * gg.scale - gg.yoff);
}



 
 
 
 
 
 

static  void  hline(x1, x2, y)
short x1, x2, y;
{
  short yy;

  yy = y * gg.scale - gg.yoff;
  m_drawline(x1 * gg.scale - gg.xoff, (long)yy, x2 * gg.scale - gg.xoff,
	     (long)yy);
}



 
 
 
 
 
 

static  void  vline(x, y1, y2)
short x, y1, y2;
{
  short xx;

  xx = x * gg.scale - gg.xoff;
  m_drawline((long)xx, y1 * gg.scale - gg.yoff, (long)xx,
	     y2 * gg.scale - gg.yoff);
}



 
 
 
 
 

static  void  point(x, y)
short x, y;
{
  m_drawpoint(x * gg.scale - gg.xoff, y * gg.scale - gg.yoff);
}



 
 
 
 
 

static  void  rect(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  m_drawrect(x1 * gg.scale - gg.xoff, y1 * gg.scale - gg.yoff,
	     x2 * gg.scale - gg.xoff, y2 * gg.scale - gg.yoff);
}



 
 
 
 
 

static  void  box(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  m_fillrect(x1 * gg.scale - gg.xoff, y1 * gg.scale - gg.yoff,
	     x2 * gg.scale - gg.xoff, y2 * gg.scale - gg.yoff);
}



 
 
 
 
 

static  void  drawstr2(x, y, s)
short x, y;
char  *s;
{
  long save;

  if (m_curcolor() < 16) {
    save = m_curcolor();
    m_color((long)gg.color.backgr);
 

    m_fillrect(x - 1L, y - 2L, x + m_strwidth(((void *)0)  , s), y + 9L);
    m_color(save);
  }
  m_move((long)x, (long)y);
  m_displaytext(s);
}


static  void  rightstr2(x, y, s)
short x, y;
char  *s;
{
  long save;

  if (m_curcolor() < 16) {
    save = m_curcolor();
    m_color((long)gg.color.backgr);
 

    m_fillrect(x + m_strwidth(((void *)0)  , s) - 1, y - 2L, x + 1L, y + 9L);
    m_color(save);
  }
 

  m_rightstr((long)x, (long)y, ((void *)0)  , s);
}


static  void  centerstr2(x, y, s)
short x, y;
char  *s;
{
  short w;
  long save;

  if (m_curcolor() < 16) {
    save = m_curcolor();
    m_color((long)gg.color.backgr);
    w = m_strwidth(((void *)0)  , s) / 2 + 2;
 

    m_fillrect((long)(x - w), y - 2L, (long)(x + w), y + 9L);
    m_color(save);
  }
 

  m_centerstr((long)x, (long)y, ((void *)0)  , s);
}



 
 
 
 
 
 

static  void  drawnum1(x, y, n)
short x, y, n;
{
  char  s[2];

  m_move((long)x, (long)y);
  strcpy(s, " ");
  s[0] = n + '0';
  m_displaytext(s);
}



 
 
 
 
 
 

static  void  drawnum2(x, y, n)
short x, y, n;
{
  char  s[3];

  m_move((long)x, (long)y);
  strcpy(s, "  ");
  if (n >= 10)
    s[0] = n / 10 + '0';
  s[1] = n % 10 + '0';
 

  m_displaytext(s);
}





static  void  xformcoords(g, x, y)
log_grec *g;
short *x, *y;
{
  short xx, yy;

  if (g == ((void *)0) ) {
    *x = *x * gg.scale - gg.xoff;
    *y = *y * gg.scale - gg.yoff;
    return;
  }
  xx = *x * gg.scale;
  yy = *y * gg.scale;
  *x = g->x * gg.scale - gg.xoff +
       (log_rotxx[g->rot] * xx + log_rotyx[g->rot] * yy) / 5 ;
  *y = g->y * gg.scale - gg.yoff +
       (log_rotxy[g->rot] * xx + log_rotyy[g->rot] * yy) / 5 ;
}



static  void  plainxformcoords(g, x, y)
log_grec *g;
short *x, *y;
{
  short xx;

  if (g == ((void *)0) ) {
    *x *= 5 ;
    *y *= 5 ;
    return;
  }
  xx = *x;
  *x = g->x * 5  + log_rotxx[g->rot] * xx + log_rotyx[g->rot] * *y;
  *y = g->y * 5  + log_rotxy[g->rot] * xx + log_rotyy[g->rot] * *y;
}






 
 
 
 
 

static  void  clipon()
{
  m_clip(0L, 0L, (long)across, baseline - 1L);
}



 
 
 
 
 

static  void  clipoff()
{
  m_noclip();
}



 
 
 
 
 
 

static  void  uerase(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  m_color((long)gg.color.backgr);
  m_fillrect((long)x1, (long)y1, (long)x2, (long)y2);
}



 
 
 
 
 
 

static  void  erase(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  m_color((long)gg.color.backgr);
  box(x1, y1, x2, y2);
}



 
 
 
 
 
 

static  void  norabbits()
{
  short i;

  clipoff();
  for (i = 0; i < 10 ; i++) {
    if (rabtable[i].next == 1) {
      m_bunny((long)rabtable[i].x, (long)rabtable[i].y);
      rabtable[i].next = 0;
    }
  }
  rabflag = 0 ;
}


 
 
 
 
 

static  void  addrabbit()
{
  short i, j, rx, ry;
  boolean nogood;
  rablistrec *WITH;

  clipoff();
  j = -1;
  for (i = 1; i <= 10 ; i++) {
    if (rabtable[i - 1].next == 0)
      j = i;
  }
  if (j == -1) {
    j = P_rand(&gg.rndseed, (long)10 ) + 1;
    m_bunny((long)rabtable[j - 1].x, (long)rabtable[j - 1].y);
    rabtable[j - 1].next = 0;
  }
  do {
    rx = P_rand(&gg.rndseed, across - 24L);
    ry = P_rand(&gg.rndseed, baseline - 40L) + down - baseline + 30;
    nogood = 0 ;
    for (i = 0; i < 10 ; i++) {
      WITH = &rabtable[i];
      if (WITH->next == 1) {
	if (WITH->x + 24 >= rx && WITH->x <= rx + 24 && WITH->y + 26 >= ry &&
	    WITH->y <= ry + 26)
	  nogood = 1 ;
      }
    }
  } while (nogood);
  rabtable[j - 1].next = 1;
  rabtable[j - 1].x = rx;
  rabtable[j - 1].y = ry;
  m_bunny((long)rx, (long)ry);
  rabflag = 1 ;
  rabtime = timers_sysclock();
}




 
 
 
 
 
 
 
 
 

static  boolean hvline(x1, y1, x2, y2)
short x1, y1, *x2, *y2;
{
  boolean Result;

  Result = 1 ;
  if (x1 == *x2 && y1 == *y2)
    return 0 ;
  if (abs(*x2 - x1) > abs(*y2 - y1) && abs(*y2 - y1) < abs(*x2 - x1) / 3 + 20)
  {    
    *y2 = y1;
    return Result;
  }
  if (abs(*y2 - y1) <= abs(*x2 - x1) ||
      abs(*x2 - x1) >= abs(*y2 - y1) / 3 + 20)
	 
	  return 0 ;
  *x2 = x1;
  return Result;
}



 
 
 
 
 
 

static  void  fixxy(x, y)
short *x, *y;
{
  *x = (*x + gg.xoff + gg.hscale) / gg.scale * gg.scale - gg.xoff;
  *y = (*y + gg.yoff + gg.hscale) / gg.scale * gg.scale - gg.yoff;
}



 
 
 
 
 
 

static  void  nocrosshair()
{
  chairflag2 = 0 ;
}



 
 
 
 
 
 

static  void  crosshair(x, y)
short x, y;
{
  chairx = x * gg.scale - gg.xoff;
  chairy = y * gg.scale - gg.yoff;
  chairflag2 = 1 ;
}



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

static  void  xorcursor()
{
  long curcm;
  short cx0, cy0;

  gg.cx_min = 0;
  gg.cx_max = across;
  gg.cy_min = 0;
  gg.cy_max = baseline - 1;
  curcm = m_curcolormode();
  m_colormode((long)16 );
  m_color((long)gg.color.cursor);
  if (!chairflag || cursortype == grid) {
    if (cursortype != normal && cursy < baseline) {
      switch (cursortype) {

      case grid:
	choose_log_cursor(0);
 

	if (chairflag) {
	  m_drawline(cursx1 - 3L, cursy1 - 5L, cursx1 + 3L, cursy1 + 5L);
	  m_drawline(cursx1 - 3L, cursy1 + 5L, cursx1 + 3L, cursy1 - 5L);
	}
	cx0 = (cursx + gg.xoff) / gg.scale * gg.scale - gg.xoff;
	cy0 = (cursy + gg.yoff) / gg.scale * gg.scale - gg.yoff;
	m_drawline(0L, (long)cy0, (long)across, (long)cy0);
	m_drawline((long)cx0, 0L, (long)cx0, baseline - 1L);
	break;

      case delete__:
	choose_log_cursor(2);
 

	break;

      case copy_:
	choose_log_cursor(1);
 

	break;

      case boxcursor:
	choose_log_cursor(4);
 

	break;

      case paste:
	choose_log_cursor(0);
 

	cx0 = (cursx + gg.xoff + 2) / gg.scale;
	cy0 = (cursy + gg.yoff + 2) / gg.scale;
	m_saveclip();
	m_clip(0L, 0L, (long)across, baseline - 1L);
	gg.cx_min = cx0;
	gg.cx_max = cx0 + copybuf.dxcopy;
	gg.cy_min = cy0;
	gg.cy_max = cy0 + copybuf.dycopy;
	rect(gg.cx_min, gg.cy_min, gg.cx_max, gg.cy_max);
	m_unclip();
	break;
      }
    } else {
      if (rabbits && !avoidrabbits && cursy < baseline) {
	choose_log_cursor(0);
 

	if (cursx < 45)
	  m_bunny(0L, cursy - 17L);
	else
	  m_bunny(cursx - 45L, cursy - 17L);
      } else if (gg.probemode) {
	choose_log_cursor(3);
 

      } else {
	choose_log_cursor(0);
 

      }
    }
  }
  if (chairflag) {
    if (rbandflag) {
      choose_log_cursor(0);
 

      if (vlsi)
	m_color((long)gg.color.wire[curwcolor - 0 ]);
      else
	m_color((long)gg.color.xwire);
      m_drawline((long)cursx1, (long)cursy1, (long)cursx2, (long)cursy2);
    } else {
      choose_log_cursor(0);
 

    }
  }
  oldcursortype = cursortype;
  m_colormode(curcm);

   
}



 
 
 
 
 
 

static  void  hidecursor()
{
  if (cursorflag)
    xorcursor();
}




static  void  hidecursor_hook()
{
  if (!cursorhide)
    hidecursor();
  cursorhide = 1 ;
}


static  void  unhidecursor_hook()
{
  if (cursorhide)
    hidecursor();
  cursorhide = 0 ;
}


static  void  hidecursorrect_hook(x1, y1, x2, y2)
long x1, y1, x2, y2;
{
  if (!cursorhide && x1 <= gg.cx_max && x2 >= gg.cx_min && y1 <= gg.cy_max &&
      y2 >= gg.cy_min)
    hidecursor_hook();
}







 
 
 
 
 
 

static  void  drawcursor(x, y)
short x, y;
{
  if (x != cursx || y != cursy || !cursorflag || cursortype != oldcursortype) {
    if (cursorflag && !cursorhide)
      xorcursor();
    cursx = x;
    cursy = y;
    cursx1 = chairx;
    cursy1 = chairy;
    cursx2 = x;
    cursy2 = y;
    chairflag = chairflag2;
    if (chairflag) {
      chairflag = 1 ;
      fixxy(&cursx2, &cursy2);
      rbandflag = (abs(cursx1 - cursx2) + abs(cursy1 - cursy2) >= gg.scale &&
		   hvline(cursx1, cursy1, &cursx2, &cursy2));
    }
    xorcursor();
  } else {
    if (!cursorflag && !cursorhide)
      xorcursor();
  }
  cursorflag = 1 ;
  cursorhide = 0 ;
}



 
 
 
 
 

static  void  remcursor()
{
  prevcursorflag = cursorflag;
  if (cursorflag)
    xorcursor();
  cursorflag = 0 ;
  cursorhide = 0 ;
}



 
 
 
 
 
 

static  void  restorecursor()
{
  if (prevcursorflag != cursorflag)
    xorcursor();
  cursorflag = prevcursorflag;
}





 
 
 
 
 
 

static  void  refreditmode (void) ;

static  void  log_setmode(s)
const  char  *s;


{
  time_t h;
  char *cp;

  remcursor();
  clipoff();
  m_color((long)gg.color.backgr);
  if (gg.showpage > 0)
    drawstr2(across + (-69) , line2, modename);
  refreditmode();    
  if (*s != '\0') {
    strcpy(modename, s);
    modeflag = 1 ;
    m_color((long)gg.color.selword);
  } else {
    if (gg.probekind != ((void *)0) ) {
      strcpy(modename, gg.probekind->name);
      m_color((long)gg.color.selword);
    } else {
      time(&h);
      cp = ctime(&h);
      sprintf(modename, "%.5s", cp + 11);
      modetime = timers_sysclock() / 6000;
      if (!strcmp(modename, "00:00"))
	strcpy(modename, "__@/ ");
      m_color((long)gg.color.menuword);
    }
    modeflag = 0 ;
    modeprobekind = gg.probekind;
  }
  if (gg.showpage > 0)
    drawstr2(across + (-69) , line2, modename);
}







static  void  dounits(s, r)
char  *s;
double *r;
{
  char  ch;

  if (*s == '\0')
    return;
  ch = s[0];
  if (ch >= 'a')
    ch -= 32;
  if (ch == 'F') {
    *r *= 1e-15;
    return;
  }
  if (ch == 'P') {
    *r *= 1e-12;
    return;
  }
  if (ch == 'N') {
    *r *= 1e-9;
    return;
  }
  if (ch == 'U') {
    *r *= 1e-6;
    return;
  }
  if (ch == 'K') {
    *r *= 1e3;
    return;
  }
  if (ch == 'G') {
    *r *= 1e9;
    return;
  }
  if (ch == 'T') {
    *r *= 1e12;
    return;
  }
  if (ch != 'M')
    return;
  if (strlen(s) >= 3 && (s[1] == 'E' || s[1] == 'e') &&
      (s[2] == 'G' || s[2] == 'g'))
    *r *= 1e6;
  else
    *r *= 1e-3;
}



static  void  readreal(s_, r)
char  *s_;
double *r;
{
  char  s[256];
  long i;
  char  *STR1;
  char  STR2[256];

  strcpy(s, s_);
  if (!(*s != '\0' &&
	(s[0] == '.' || s[0] == '+' || s[0] == '-' || isdigit(s[0]))))
    return;
  *r = strtod(s, &STR1);
  i = STR1 - s + 1;
  strcpy(s, s + i - 1);
  strcpy(STR2, strltrim(s));
  strcpy(s, STR2);
  dounits(s, r);
}





static  void  strwordx(buf, wrd)
char  *buf, *wrd;
{
  short i;
  char  STR1[256];
  char  STR2[256];

  strcpy(STR1, strltrim(strrtrim(strcpy(STR2, buf))));
  strcpy(buf, STR1);
  if (*buf != '"') {
    strword(buf, wrd);
    return;
  }
  i = strposc(buf, '"', 2L);
  if (i == 0)
    i = strlen(buf) + 1;
  strpart(wrd, buf, 2, i - 1);
  strcpy(buf, buf + i);
}



static  void  getword(buf, wrd)
char  *buf, *wrd;
{
  char  STR1[256];
  char  STR2[256];

  strcpy(STR1, strltrim(strrtrim(strcpy(STR2, buf))));
  strcpy(buf, STR1);
  if (*buf == '"')
    strwordx(buf, wrd);
  else {
    strwordx(buf, wrd);
    strupper(wrd, wrd);
  }
}



static  long getint(s, def)
char  *s;
long def;
{
  char  w[10];
  long i, j, sign;
  boolean valid;
  long FORLIM;

  getword(s, w);
  if (*w == '-') {
    strcpy(w, w + 1);
    sign = -1;
  } else
    sign = 1;
  j = 0;
  valid = 1 ;
  FORLIM = strlen(w);
  for (i = 0; i < FORLIM; i++) {
    if (w[i] < '0' || w[i] > '9')
      valid = 0 ;
    else
      j = j * 10 + w[i] - 48;
  }
  if (*w != '\0' && valid)
    return (j * sign);
  else
    return def;
}



static  void  pgetint(buf, i, def)
char  *buf;
long *i, def;
{
  *i = getint(buf, def);
}



static  double getreal(s, def)
char  *s;
double def;
{
  char  w[81];
  double r;

  getword(s, w);
  r = def;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    readreal(w, &r);
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    r = def;
  } } while (0) ;
  return r;
}



static  void  pgetreal(buf, r, def)
char  *buf;
double *r, def;
{
  *r = getreal(buf, def);
}



static  void  getbool(buf, b)
char  *buf;
boolean *b;
{
  char  w[17];

  getword(buf, w);
  if (!strcmp(w, "ON") || !strcmp(w, "YES") || !strcmp(w, "Y") ||
      !strcmp(w, "RABBITS"))
  {    
    *b = 1 ;
    return;
  }
  if (!strcmp(w, "OFF") || !strcmp(w, "NO") || !strcmp(w, "N")) {
    *b = 0 ;
    return;
  }
  if (!strcmp(w, "?"))
    tempverbose = 1 ;
  else if (*w == '\0')
    *b = !*b;
}






 
 
 
 
 
 

static  void  sortshints(x, y)
short *x, *y;
{
  short temp;

  if (*x <= *y)
    return;
  temp = *x;
  *x = *y;
  *y = temp;
}



 
 
 
 
 

 

static  boolean insidegate(g, x, y)
log_grec *g;
short x, y;
{
  short xx1, xx2, yy1, yy2, z;
  short loc_x1, loc_x2;
  log_krec *WITH;

  x = (x - g->x) * 5 ;
  y = (y - g->y) * 5 ;
  WITH = g->kind;
  loc_x1 = WITH->x1;
  loc_x2 = WITH->x2;

   

  if (WITH->flag.U3.named && g->sig > 0) {
     char  STR1[256];
     short xwid = m_strwidth(((void *)0) , strrtrim(strcpy(STR1,
	    gg.signaltab[g->sig - 1].name))) - 17;

     if (WITH->flag.U3.nright) {
	if (xwid > loc_x2) loc_x2 = xwid;
     }
     else {
	if (-xwid < loc_x1) loc_x1 = -xwid;
     }
  }

  if (g->rot == 0)
    return (loc_x1 <= x && x <= loc_x2 && WITH->y1 <= y && y <= WITH->y2);
  else {
    z = g->rot;
    xx1 = loc_x1 * log_rotxx[z] + WITH->y1 * log_rotyx[z];
    xx2 = loc_x2 * log_rotxx[z] + WITH->y2 * log_rotyx[z];
    sortshints(&xx1, &xx2);
    yy1 = loc_x1 * log_rotxy[z] + WITH->y1 * log_rotyy[z];
    yy2 = loc_x2 * log_rotxy[z] + WITH->y2 * log_rotyy[z];
    sortshints(&yy1, &yy2);
    return (xx1 <= x && x <= xx2 && yy1 <= y && y <= yy2);
  }
}




 
 
 
 
 
 
 

static  void  unprobe()
{
  gg.probenode = ((void *)0) ;
  gg.probegate = ((void *)0) ;
  gg.probepin = 0;
  gg.probesimtype = ((void *)0) ;
  gg.probekind = ((void *)0) ;
  gg.probehwire = ((void *)0) ;
  gg.probevwire = ((void *)0) ;
  probeflag = 0 ;
}





static  log_krec *peninkind(xx, yy)
short xx, yy;
{
  log_krec *Result;
  short i;

  Result = ((void *)0) ;
  if (!(P_ibetween((long)kindgroupleft, (long)xx, kindgroupright - 1L) &&
	P_ibetween((long)baseline, (long)yy, (long)down)))
    return Result;
  i = kindgroup[(xx - kindgroupleft) / (25  * 2) ];
  if (i > 0)
    return (kind[(i & (256  - 1)) - 1]);
  return Result;
}




static  void  testprobe(xx, yy)
short xx, yy;
{
  log_grec *g;
  log_krec *k;
  short i, x, y;
  log_hwrec *hw;
  log_vwrec *vw;
  short FORLIM;

  x = (xx + gg.hscale + gg.xoff) / gg.scale;
  y = (yy + gg.hscale + gg.yoff) / gg.scale;
  unprobe();
  if (gg.showpage > 0 && !gg.invisible) {
    if (gg.incircuit) {
      g = gg.gbase[gg.curpage - 1];
      while (g != ((void *)0)  && gg.probegate == ((void *)0) ) {
	k = g->kind;
	if (g->x >= x - k->bbmax && g->x <= x + k->bbmax &&
	    g->y >= y - k->bbmax && g->y <= y + k->bbmax) {
	  if (insidegate(g, x, y))
	    gg.probegate = g;
	  else if (g->kind->simtype->simtype >= 8) {
	    FORLIM = g->kind->numpins;
	    for (i = 1; i <= FORLIM; i++) {
	      if (x == g->pinpos[i - 1].x && y == g->pinpos[i - 1].y) {
		gg.probegate = g;
		gg.probenode = g->pin[i - 1];
		gg.probepin = i;
	      }
	    }
	  }
	}
	g = g->next;
      }
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0)  && gg.probenode == ((void *)0) ) {
	if (hw->x1 <= x && x <= hw->x2 && hw->y == y) {
	  gg.probehwire = hw;
	  gg.probenode = hw->node;
	}
	hw = hw->next;
      }
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0)  && gg.probenode == ((void *)0) ) {
	if (vw->y1 <= y && y <= vw->y2 && vw->x == x) {
	  gg.probevwire = vw;
	  gg.probenode = vw->node;
	}
	vw = vw->next;
      }
    } else
      gg.probekind = peninkind(xx, yy);
  }
  if (gg.probegate != ((void *)0) )
    gg.probekind = gg.probegate->kind;
  if (gg.probenode != ((void *)0) )
    gg.probesimtype = gg.probenode->simtype;
  else if (gg.probekind != ((void *)0) )
    gg.probesimtype = gg.probekind->simtype;
}




static  void  checkprobe(xx, yy)
short xx, yy;
{
  short x, y;

  x = (xx + gg.hscale + gg.xoff) / gg.scale;
  y = (yy + gg.hscale + gg.yoff) / gg.scale;
  if (gg.probegate != ((void *)0)  &&
      (gg.probegate->x < x - gg.probekind->bbmax ||
       gg.probegate->x > x + gg.probekind->bbmax ||
       gg.probegate->y < y - gg.probekind->bbmax ||
       gg.probegate->y > y + gg.probekind->bbmax)) {
    unprobe();
    return;
  }
  if (gg.probekind != ((void *)0)  && gg.probegate == ((void *)0)  &&
      peninkind(xx, yy) != gg.probekind) {
    unprobe();
    return;
  }
  if (gg.probehwire != ((void *)0)  &&
      (gg.probehwire->x1 > x || x > gg.probehwire->x2 ||
       gg.probehwire->y != y))
    unprobe();
  else if (gg.probevwire != ((void *)0)  &&
	   (gg.probevwire->y1 > y || y > gg.probevwire->y2 ||
	    gg.probevwire->x != x))
    unprobe();
}







static  void  parselabel(lbl, numattrs, attr)
na_strlist **lbl;
short *numattrs;
log_kattrrec **attr;
{
  short j, j1, j2, j3, yy, maxx;
  na_strlist *l1, *l2, *l3, *attrnames;
  char  buf[256];
  boolean haveprec;
  log_kattrrec *WITH;
  char  STR1[256];
  char  STR2[256];
  short FORLIM;

  j = 1;
  *numattrs = 0;
  attrnames = ((void *)0) ;
  l1 = *lbl;
  while (l1 != ((void *)0) ) {
    j = strposc(l1->s, ':', 1L);
    if (j != 0 && j != strpos2(l1->s, "::", 1))
      (*numattrs)++;
    l1->value = (na_long)strlen(l1->s);
    l1 = l1->next;
  }
 
  *attr = (log_kattrrec *)((__MallocTemp__ = malloc(( *numattrs * (sizeof(log_kattrrec) + ((sizeof(log_kattrrec)) & 1))  ) ? ( *numattrs * (sizeof(log_kattrrec) + ((sizeof(log_kattrrec)) & 1))  ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  maxx = 0;
  l1 = *lbl;
  j = 1;
  yy = 0;
  while (l1 != ((void *)0) ) {
    j1 = strposc(l1->s, ':', 1L);
    if (j1 != 0 && j1 != strpos2(l1->s, "::", 1)) {
      WITH = &(*attr)[j - 1];
      WITH->vr = 0;
      WITH->vra = 0;
      strcpy(STR1, strltrim(l1->s));
      strcpy(l1->s, STR1);
      while (*l1->s == '[') {
	j2 = strposc(l1->s, ']', 1L);
	if (j2 < 3)
	  continue;
	l2 = strlist_append(&attrnames, strpart(STR1, l1->s, 2, j2 - 1));
	l2->value = (na_long)((long)j);
	strcpy(l1->s, l1->s + j2);
	strcpy(STR1, strltrim(l1->s));
	strcpy(l1->s, STR1);
      }
      j2 = strposc(l1->s, ';', 1L);
      if (j2 != 0 && j2 < j1) {
	sprintf(buf, "%.*s", j2 - 1, l1->s);
	strrtrim(buf);
	j3 = 1;
	while (j3 < j && WITH->vra == 0) {
	  if ((*attr)[j3 - 1].dtype == 'V') {
	    l2 = (*attr)[j3 - 1].UU.U86.v;
	    while (l2 != ((void *)0)  && strcicmp(l2->s, buf) != 0)
	      l2 = l2->next;
	    if (l2 != ((void *)0) ) {
	      WITH->vr = (long)l2->value;
	      WITH->vra = j3;
	    }
	  }
	  j3++;
	}
	strcpy(l1->s, l1->s + j2);
      }
      if (l1->s[0] == ' ') {
	strcpy(STR1, strltrim(l1->s));
	strcpy(l1->s, STR1);
      }
      WITH->prec = 0;
      haveprec = 0 ;
      while (isdigit(l1->s[0])) {
	WITH->prec = WITH->prec * 10 + l1->s[0] - 48;
	haveprec = 1 ;
	strcpy(l1->s, l1->s + 1);
      }
      if (l1->s[0] == ' ') {
	strcpy(STR1, strltrim(l1->s));
	strcpy(l1->s, STR1);
      }
      WITH->opt = 0 ;
      do {
	WITH->dtype = toupper(l1->s[0]);
	if (l1->s[0] != ':') {
	  do {
	    strcpy(l1->s, l1->s + 1);
	  } while (l1->s[0] == ' ');
	}
	if (WITH->dtype == 'O')
	  WITH->opt = 1 ;
      } while (WITH->dtype == 'O');
      if (WITH->dtype == 'F' || WITH->dtype == 'U' || WITH->dtype == 'R') {
	*WITH->UU.U82.u = '\0';
	if (WITH->dtype == 'F' || WITH->dtype == 'U') {
	  while (l1->s[0] != ',' && l1->s[0] != ':') {
	    if (l1->s[0] != ' ' && strlen(WITH->UU.U82.u) < 3)
	      sprintf(WITH->UU.U82.u + strlen(WITH->UU.U82.u), "%c", l1->s[0]);
	    strcpy(l1->s, l1->s + 1);
	  }
	  if (l1->s[0] == ',')
	    strcpy(l1->s, l1->s + 1);
	  strcpy(STR1, strltrim(l1->s));
	  strcpy(l1->s, STR1);
	}
	*buf = '\0';
	while (l1->s[0] != ':') {
	  sprintf(buf + strlen(buf), "%c", l1->s[0]);
	  strcpy(l1->s, l1->s + 1);
	}
	WITH->UU.U82.r = 0.0;
	WITH->blnk = 1 ;
	if (*buf != '\0') {
	  readreal(buf, &WITH->UU.U82.r);
	  WITH->blnk = 0 ;
	}
	if (!haveprec)
	  WITH->prec = 0;
      } else if (WITH->dtype == 'I') {
	WITH->UU.U73.i1 = 0;
	WITH->blnk = 1 ;
	while (isdigit(l1->s[0])) {
	  WITH->UU.U73.i1 = WITH->UU.U73.i1 * 10 + l1->s[0] - 48;
	  strcpy(l1->s, l1->s + 1);
	  WITH->blnk = 0 ;
	}
	if (!haveprec)
	  WITH->prec = 1;
      } else if (WITH->dtype == 'H') {
	WITH->UU.U73.i1 = 0;
	j1 = 0;
	WITH->blnk = 1 ;
	while (l1->s[0] >= 'a' && l1->s[0] <= 'f' ||
	       l1->s[0] >= 'A' && l1->s[0] <= 'F' || isdigit(l1->s[0])) {
	  WITH->UU.U73.i1 = WITH->UU.U73.i1 * 10 + l1->s[0] - 48;
	  if (l1->s[0] >= 'A')
	    WITH->UU.U73.i1 -= 7;
	  if (l1->s[0] >= 'a')
	    WITH->UU.U73.i1 -= 32;
	  strcpy(l1->s, l1->s + 1);
	  j1++;
	  WITH->blnk = 0 ;
	}
	if (!haveprec) {
	  if (j1 != 0)
	    WITH->prec = j1;
	  else
	    WITH->prec = 1;
	}
      } else if (WITH->dtype == 'C') {
	j1 = strposc(l1->s, ':', 1L);
	sprintf(buf, "%.*s", j1 - 1, l1->s);
	strrtrim(buf);
	strcpy(l1->s, l1->s + j1 - 1);
	if (!haveprec)
	  WITH->prec = 255;
	if (strlen(buf) > WITH->prec) {
	  buf[WITH->prec] = '\0';
 

	}
	WITH->UU.c = (char  *)((__MallocTemp__ = malloc(( WITH->prec + 1L ) ? ( WITH->prec + 1L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	strcpy(WITH->UU.c, buf);
	WITH->blnk = (*buf == '\0');
      } else if (WITH->dtype == 'A') {
	j1 = strposc(l1->s, ':', 1L);
	sprintf(buf, "%.*s", j1 - 1, l1->s);
	strrtrim(buf);
	strcpy(l1->s, l1->s + j1 - 1);
	WITH->prec = 255;
	WITH->UU.sp = my_strdup (buf);
	WITH->blnk = (*buf == '\0');
      } else if (WITH->dtype == 'B') {
	WITH->blnk = 0 ;
	if (l1->s[0] == 'y' || l1->s[0] == 'Y' || l1->s[0] == 't' ||
	    l1->s[0] == 'T')
	  WITH->UU.b = 1 ;
	else if (l1->s[0] == 'n' || l1->s[0] == 'N' || l1->s[0] == 'f' ||
		 l1->s[0] == 'F')
	  WITH->UU.b = 0 ;
	else
	  WITH->blnk = 1 ;
	if (l1->s[0] == 'x' || l1->s[0] == 'X' || l1->s[0] == 'f' ||
	    l1->s[0] == 'F' || l1->s[0] == 't' || l1->s[0] == 'T')
	  WITH->prec = 2;
	else
	  WITH->prec = 1;
      } else if (WITH->dtype == 'V') {
	strlist_init(&l2);
	WITH->UU.U86.nv = 0;
	do {
	  *buf = '\0';
	  while (l1->s[0] != ',' && l1->s[0] != ':') {
	    sprintf(buf + strlen(buf), "%c", l1->s[0]);
	    strcpy(l1->s, l1->s + 1);
	  }
	  if (l1->s[0] == ',')
	    strcpy(l1->s, l1->s + 1);
	  l3 = strlist_append(&l2,
	      strcpy(STR1, strltrim(strrtrim(strcpy(STR2, buf)))));
	  l3->value = (na_long)((long)WITH->UU.U86.nv);
	  WITH->UU.U86.nv++;
	  strcpy(STR1, strltrim(l1->s));
	  strcpy(l1->s, STR1);
	} while (l1->s[0] != ':');
	WITH->UU.U86.v = l2;
	WITH->blnk = 0 ;
	if (haveprec)
	  WITH->UU.U86.dv = WITH->prec;
	else
	  WITH->UU.U86.dv = 0;
	WITH->prec = 1;
      } else {
	WITH->dtype = 'R';
	WITH->UU.U82.r = 0.0;
	WITH->blnk = 1 ;
	if (!haveprec)
	  WITH->prec = 0;
      }
      if (WITH->blnk)
	WITH->opt = 1 ;
      j1 = strposc(l1->s, ':', 1L);
      strcpy(l1->s, l1->s + j1);
      j++;
      WITH->y = yy;
      if (strlen(l1->s) > maxx)
	maxx = strlen(l1->s);
    }
    j1 = 1;
    while (j1 < strlen(l1->s)) {
      if (l1->s[j1 - 1] == ':' && l1->s[j1] == ':')
	strcpy(l1->s + j1 - 1, l1->s + j1);
      j1++;
    }
    yy++;
    l1 = l1->next;
  }
  if (attrnames != ((void *)0) ) {
    l1 = strlist_insert(lbl, "");
    l1->kind = '\001';
    l1->value = (Anyptr)attrnames;
  }
  FORLIM = *numattrs;
  for (j = 0; j < FORLIM; j++)
    (*attr)[j].x = maxx + 1;
}






static  void  stamp(i)
long *i;
{
  gg.curstamp++;
  *i = gg.curstamp;
}




static  void  newtool(t, name)
log_tool **t;
char  *name;
{
  log_tool *t2;

  *t = (log_tool *)((__MallocTemp__ = malloc(( sizeof(log_tool) ) ? ( sizeof(log_tool) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  strcpy((*t)->name, name);
  (*t)->ready = 0 ;
  (*t)->simulator = 0 ;
  (*t)->keep = 0 ;
  (*t)->nostatus = 0 ;
  (*t)->fname = ((void *)0) ;
  (*t)->comment = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *(*t)->comment = '\0';
  (*t)->info = (na_long)0;
  (*t)->nlbl = ((void *)0) ;
  (*t)->hlbl = ((void *)0) ;
  (*t)->shortname = (char  *)((__MallocTemp__ = malloc(( 33 ) ? ( 33 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  strcpy((*t)->shortname, name);
  stamp(&(*t)->netstamp);
  (*t)->deltatime = 0.0;
  t2 = gg.toolbase;
  while (t2 != ((void *)0)  && t2->next != ((void *)0) )
    t2 = t2->next;
  if (t2 == ((void *)0) )
    gg.toolbase = *t;
  else
    t2->next = *t;
  (*t)->next = ((void *)0) ;
}




static  log_tool *findtool(name_)
char  *name_;
{
  log_tool *Result;
  char  name[17];
  log_tool *lp;
  char  savefunc[17];
  char  saveargs[256];
  char  suffix[51];
  void  (*proc)  (log_action *act)  ;
  boolean ready;
  cnfrec *cnfp;

  strcpy(name, name_);
  strcpy(savefunc, gg.func);
  strcpy(saveargs, gg.funcarg);
  lp = gg.toolbase;
  while (lp != ((void *)0)  && strcmp(lp->name, name))
    lp = lp->next;
  if (lp == ((void *)0) )
    newtool(&lp, name);
  if (!lp->ready) {
    sprintf(suffix, "LOG_%s_PROC", name);
    ready = findprocedure (suffix, (void (**) (void) )(&proc));
    if (gg.traceflag)
      nc_fprintf (tracefile, "Findtool to load: %s -  %s.\n", suffix, lp->fname);
    if (!ready && lp->fname != ((void *)0) ) {
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	newci_fixfname(lp->fname, "code", "");
	if (gg.traceflag)
	  nc_fprintf (tracefile, "Findtool, loading %s\n", lp->fname);
	newci_loadprogram(lp->fname);
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
      } } while (0) ;
      ready = findprocedure (suffix, (void (**) (void) )(&proc));
      if (gg.traceflag)
	nc_fprintf (tracefile, "Findtool, ready=%s\n", ready ? " TRUE" : "FALSE");
    }
    if (ready) {
      lp->proc = proc;
      gg.action = act_init;
      gg.acttool = lp;
      (*proc)(&gg);
      if (lp->ready) {
	cnfp = cnfbase;
	while (cnfp != ((void *)0) ) {
	  if (!strcmp(cnfp->tool, name)) {
	    doingcnffunction = 1 ;
	    gg.action = act_cnf;
	    strcpy(gg.funcarg, cnfp->s);
	    getword(gg.funcarg, gg.func);
	    (*proc)(&gg);
	    doingcnffunction = 0 ;
	  }
	  cnfp = cnfp->next;
	}
	gg.action = act_color;
	(*proc)(&gg);
	gg.action = act_endinit;
	(*proc)(&gg);
	lp->nexttstep = 0.0;
	lp->nnumattrs = 0;
	lp->nattr = ((void *)0) ;
	if (lp->nlbl != ((void *)0) )
	  parselabel(&lp->nlbl, &lp->nnumattrs, &lp->nattr);
	lp->hnumattrs = 0;
	lp->hattr = ((void *)0) ;
	if (lp->hlbl != ((void *)0) )
	  parselabel(&lp->hlbl, &lp->hnumattrs, &lp->hattr);
      }
    }
  }
  Result = lp;
  strcpy(gg.func, savefunc);
  strcpy(gg.funcarg, saveargs);
  return Result;
}



static  void  calltool(t, act)
log_tool *t;
log_actionkinds act;
{
  log_tool *savetool;

  savetool = gg.acttool;
  gg.action = act;
  gg.acttool = t;
  (*t->proc)(&gg);
  gg.acttool = savetool;
}



static  void  calltoolgate(g, act)
log_grec *g;
log_actionkinds act;
{
  gg.actgate = g;
  calltool(g->kind->simtype, act);
}



static  void  calltoolnode(n, act)
log_nrec *n;
log_actionkinds act;
{
  gg.actnode = n;
  calltool(n->simtype, act);
}



static  void  calltoolkind(k, act)
log_krec *k;
log_actionkinds act;
{
  gg.actkind = k;
  calltool(k->simtype, act);
}



static  void  calltools(act)
log_actionkinds act;
{
  log_tool *tp;

  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready)
      calltool(tp, act);
    tp = tp->next;
  }
}


static  void  callsimtools(act)
log_actionkinds act;
{
  log_tool *tp;

  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready && tp->simulator)
      calltool(tp, act);
    tp = tp->next;
  }
}




static  void  send_general(sim, act)
log_tool *sim;
char  *act;
{
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  strcpy(gg.genfunc, act);
  calltool(sim, act_general);
  strcpy(gg.genfunc, savefunc);
}



static  void  send_gennode(n, act)
log_nrec *n;
char  *act;
{
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  strcpy(gg.genfunc, act);
  calltoolnode(n, act_gennode);
  strcpy(gg.genfunc, savefunc);
}


static  void  send_genkind(k, act)
log_krec *k;
char  *act;
{
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  strcpy(gg.genfunc, act);
  calltoolkind(k, act_genkind);
  strcpy(gg.genfunc, savefunc);
}


static  void  send_gengate(g, act)
log_grec *g;
char  *act;
{
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  strcpy(gg.genfunc, act);
  calltoolgate(g, act_gengate);
  strcpy(gg.genfunc, savefunc);
}



static  void  send_all(act)
char  *act;
{
  log_tool *tp;
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready && tp->simulator) {
      strcpy(gg.genfunc, act);
      calltool(tp, act_general);
    }
    tp = tp->next;
  }
  strcpy(gg.genfunc, savefunc);
}


static  void  send_allnodes(act)
char  *act;
{
  log_tool *tp;
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready && tp->simulator) {
      strcpy(gg.genfunc, act);
      gg.actnode = ((void *)0) ;
      calltool(tp, act_gennode);
    }
    tp = tp->next;
  }
  strcpy(gg.genfunc, savefunc);
}


static  void  send_allkinds(act)
char  *act;
{
  log_tool *tp;
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready && tp->simulator) {
      strcpy(gg.genfunc, act);
      gg.actkind = ((void *)0) ;
      calltool(tp, act_genkind);
    }
    tp = tp->next;
  }
  strcpy(gg.genfunc, savefunc);
}


static  void  send_allgates(act)
char  *act;
{
  log_tool *tp;
  char  savefunc[17];

  strcpy(savefunc, gg.genfunc);
  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (tp->ready && tp->simulator) {
      strcpy(gg.genfunc, act);
      gg.actgate = ((void *)0) ;
      calltool(tp, act_gengate);
    }
    tp = tp->next;
  }
  strcpy(gg.genfunc, savefunc);
}






static  void  closetool(tp)
log_tool *tp;
{
  if (tp->ready)
    calltool(tp, act_exit);
  tp->ready = 0 ;
}



static  void  closetools()
{
  log_tool *tp;

  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    closetool(tp);
    tp = tp->next;
  }
}



static  long glowcol(n, def)
log_nrec *n;
long def;
{
  gg.actx = def;
  calltoolnode(n, act_glowcol);
  return (gg.actx);
}





static  void  resetmessages()
{
  short opos;

  opos = messagepos;
  messagepos = 2 ;
  messageright = 0;
  if (messagepos != opos) {
    calltools(act_clearmsg);
    stamp(&gg.msgstamp);
  }
}





 
 
 
 
 

static  void  clearscreen()
{
  remcursor();
  m_noclip();
  m_vsetcolors((long)gg.color.backgr, 1L, &rcolormap[gg.color.backgr],
	       &gcolormap[gg.color.backgr], &bcolormap[gg.color.backgr]);
  m_color((long)gg.color.backgr);
  m_fillrect(0L, 0L, (long)across, (long)down);
  fixcolormap();
  resetmessages();
  bottomcount = 0;
  gg.showpage = 0;
}




static  void  clearshowalpha()
{
  if (onescreen)
    clearscreen();
  nc_printf ("\f");
  nc_gotoXY( 0 ,  0 ) ;
  noblink();
  showalpha();
}








 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

static  void  show_events()
{
   















}


static  void  pen()
{




  long x, y;
  short i, rx, ry, cred;
  static  boolean pollkbd2(void);
  static oldx, oldy;
  static long awake;
  long now; 
  char  rval, gval, bval;


   
   

   
  now = timers_sysclock();
  if (gg.t.x!=oldx || gg.t.y!=oldy || pollkbd2() || gg.busyflag  ) {
    awake = now;
    oldx = gg.t.x; oldy = gg.t.y;
  }
   
  if (now-awake > (unsigned long)1000 )
   microsleep((unsigned long)10000* 20 );
 
   

  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    gg.t0 = gg.t;
    m_readpen(&gg.t);
    show_events();
    gg.stillnear = (gg.stillnear && gg.t.near_);
    gg.incircuit = (gg.t.y < baseline && gg.showpage > 0);
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_printf ("Graphics tablet error\n");
    m_init_pen(tabletaddr);
    m_alpha_on();
  } } while (0) ;
  if (snapflag && gg.incircuit) {
    gg.t.x = (gg.t.x + gg.hscale + gg.xoff) / gg.scale * gg.scale - gg.xoff;
    gg.t.y = (gg.t.y + gg.hscale + gg.yoff) / gg.scale * gg.scale - gg.yoff;
  }
  if (gg.t.x < 0)
    gg.t.x = 0;
  else if (gg.t.x > across)
    gg.t.x = across;
  if (gg.t.y < 0)
    gg.t.y = 0;
  else if (gg.t.y > down)
    gg.t.y = down;
  if (gg.t.near_ && !gg.t.depressed) {
    rx = gg.t.x * 5 / across;
    ry = gg.t.y * 5 / down;
    if (rx != rablist[rabstate].x || ry != rablist[rabstate].y) {
      i = abs(rablist[rabstate].next) - 1;
      do {
	i++;
      } while ((rablist[i].x != rx || rablist[i].y != ry) &&
	       rablist[i].next < 0);
      if (rablist[i].x == rx && rablist[i].y == ry) {
	if (i == 23 ) {
	  remcursor();
	  rabbits = !rabbits;
	  if (rabbits && !gg.quiet) {
	    i = 1;
	    x = timers_sysclock();
	    do {
	      y = discomadness[i - 1].time;
	      BEEPER(discomadness[i - 1].note, (int)y);
	      do {
	      } while (timers_sysclock() <= x + y);
	       
	      i++;
	      x = timers_sysclock();
	    } while (y != 0);
	  }
	  rabstate = 0;
	} else
	  rabstate = i;
      } else
	rabstate = 0;
    }
  } else
    rabstate = 0;
  if (gg.probemode) {
    if (cursx != gg.t.x || cursy != gg.t.y) {
      if (gg.probesimtype != ((void *)0) )
	checkprobe((int)gg.t.x, (int)gg.t.y);
      probeflag = 0 ;
      drawcursor((int)gg.t.x, (int)gg.t.y);
    } else {
      if (!cursorflag)
	drawcursor((int)gg.t.x, (int)gg.t.y);
      if (!probeflag) {
	testprobe((int)gg.t.x, (int)gg.t.y);
	probeflag = 1 ;
      }
    }
    if (!gg.t.near_ && briefprobe) {
      remcursor();
      gg.probemode = 0 ;
    }
  } else {
    briefprobe = 0 ;
    if (gg.probesimtype != ((void *)0) )
      unprobe();
    if (gg.t.near_)
      drawcursor((int)gg.t.x, (int)gg.t.y);
    else
      remcursor();
  }
  cred = gg.color.conflict;
  if (anyconflicts && (cred == 15  || cred == 4 ) &&
      (rcolormap[cred] == 255 || gcolormap[cred] == 255 ||
       bcolormap[cred] == 255)) {
    x = timers_sysclock() * 6 % 137 + 119;
 

    rval = (char )(x * rcolormap[cred] / 255);
    gval = (char )(x * gcolormap[cred] / 255);
    bval = (char )(x * bcolormap[cred] / 255);
    m_vsetcolors((long)cred, 1L, &rval, &gval, &bval);
  }
  if (gg.t.moving) {
    gg.fastspeed = gg.fastmin;
    fastsavetime = timers_sysclock();
  } else if (gg.fastspeed < gg.fastmax &&
	     timers_sysclock() > fastsavetime + gg.fastrate) {
    gg.fastspeed++;
    fastsavetime = timers_sysclock();
  }
  gg.gridx = (gg.t.x + gg.hscale + gg.xoff) / gg.scale;
  gg.gridy = (gg.t.y + gg.hscale + gg.yoff) / gg.scale;
}



 
 
 
 
 
 

static  boolean justtap()
{
  long t0;
  short tx, ty;

  t0 = timers_sysclock() + 30 ;
  tx = gg.t.x;
  ty = gg.t.y;
  m_tracking(1L);
  do {
    pen();
  } while (gg.t.depressed && labs(gg.t.x - tx) <= 5  &&
	   labs(gg.t.y - ty) <= 5  && timers_sysclock() <= t0);
  return (!gg.t.depressed);
}







 
 
 
 
 
 

static  boolean pollkbd2()
{
  return (m_pollkbd () != 0 || pushedbackkey != '\0');
}



 
 
 
 
 

static  char  testkey2()
{
  if (pushedbackkey != '\0')
    return pushedbackkey;
  else if (pollkbd2())
    return (m_testkey() );
  else
    return ' ';
}



 
 
 
 
 
 

static  char  inkey2()
{
  char  ch;

  do {
  } while (!pollkbd2());
  if (pushedbackkey != '\0') {
    realkey = pushedbackkey;
    pushedbackkey = '\0';
  } else
    realkey = m_inkey ();
  ch = realkey;
  if ((ch & 255) >= 168 && (ch & 255) <= 239 && nk_capslock) {
 
 
    if ((ch & 255) <= 193) {
 
      ch += 46;
    } else if ((ch & 255) >= 214) {
 
      ch -= 46;
    }
  }
  gg.fastspeed = gg.fastmin;
  return ch;
}


static  void  inkey3(ch)
char  *ch;
{
  *ch = inkey2();
}


static  char  inkey4()
{
   
  char  ch;

  ch = inkey2();
  if (!nk_capslock)
    return ch;
  if (isupper(ch))
    ch += 32;
  else if (islower(ch))
    ch -= 32;
  return ch;
}


static  void  ungetkey2(ch)
char  ch;
{
  pushedbackkey = ch;
}



 
 
 
 
 

static  void  waitforkey()
{
  char  ch;

  while (pollkbd2())
    ch = inkey2();
  do {
    pen();
  } while (!(pollkbd2() || gg.t.dn && gg.t.off));
  if (pollkbd2())
    ch = inkey2();
}





 
 
 
 
 
 

static  boolean inbox(x, y, x1, y1)
short x, y, x1, y1;
{
  return (gg.t.x >= x && gg.t.y >= y && gg.t.x <= x + x1 && gg.t.y <= y + y1);
}



 
 
 
 
 
 

static  void  drawvector2(v, x1, y1, x2, y2)
log_vectorrec *v;
long x1, y1, x2, y2;
{
  long diam, savecol, coord;

  switch (v->vkind) {

  case 'v':
    m_drawline(x1, y1, x2, y2);
    break;

  case 'C':
    diam = P_imax2(labs(x1 - x2), labs(y1 - y2));
    switch (diam) {

    case 3:
      if (x1 == x2) {
	coord = P_imin2(y1, y2);
	m_move2(x1, coord);
	m_draw(x1 + 2, coord + 1);
	m_draw(x1 + 2, coord + 2);
	m_draw(x1, coord + 3);
	m_draw(x1 - 2, coord + 2);
	m_draw(x1 - 2, coord + 1);
	m_draw(x1, coord);
      } else if (y1 == y2) {
	coord = P_imin2(x1, x2);
	m_move2(coord, y1);
	m_draw(coord + 1, y1 + 2);
	m_draw(coord + 2, y1 + 2);
	m_draw(coord + 3, y1);
	m_draw(coord + 2, y1 - 2);
	m_draw(coord + 1, y1 - 2);
	m_draw(coord, y1);
      } else
	m_circle((x1 + x2) / 2, (y1 + y2) / 2, 1L);
      break;

    case 5:
      if (x1 == x2) {
	coord = P_imin2(y1, y2);
	m_move2(x1, coord);
	m_draw(x1 + 3, coord + 1);
	m_draw(x1 + 3, coord + 4);
	m_draw(x1, coord + 5);
	m_draw(x1 - 3, coord + 4);
	m_draw(x1 - 3, coord + 1);
	m_draw(x1, coord);
      } else if (y1 == y2) {
	coord = P_imin2(x1, x2);
	m_move2(coord, y1);
	m_draw(coord + 1, y1 + 3);
	m_draw(coord + 4, y1 + 3);
	m_draw(coord + 5, y1);
	m_draw(coord + 4, y1 - 3);
	m_draw(coord + 1, y1 - 3);
	m_draw(coord, y1);
      } else
	m_circle((x1 + x2) / 2, (y1 + y2) / 2, 2L);
      break;

    default:
      m_circle((x1 + x2) / 2, (y1 + y2) / 2, diam / 2);
      break;
    }
    break;

  case 'e':
    savecol = m_curcolor();
    m_color(0xffffL );
    m_ellipse((x1 + x2) / 2, (y1 + y2) / 2, (x1 - x2) / 2, (y1 - y2) / 2,
	      savecol);
    m_color(savecol);
    break;

  case 'E':
    m_ellipse((x1 + x2) / 2, (y1 + y2) / 2, (x1 - x2) / 2, (y1 - y2) / 2,
	      m_curcolor());
    break;

  case 'r':    
    m_drawrect(x1, y1, x2, y2);
    break;
  }
}


static  void  drawvector4(v, x1, y1, x2, y2, x3, y3, x4, y4)
log_vectorrec *v;
long x1, y1, x2, y2, x3, y3, x4, y4;
{
  long xarr[4], yarr[4];

  switch (v->vkind) {

  case 'c':
    m_bezier(x1, y1, x2, y2, x3, y3, x4, y4);
    break;

  case 'F':
    xarr[0] = x1;
    yarr[0] = y1;
    xarr[1] = x2;
    yarr[1] = y2;
    xarr[2] = x3;
    yarr[2] = y3;
    xarr[3] = x4;
    yarr[3] = y4;
    m_fillpoly(4L, xarr, yarr);
    break;
  }
}






static  void  drawtext(v, scale, rot, xx, yy)
log_vectorrec *v;
long scale, rot, xx, yy;
{
  long sc, i, j, tx, ty;
  char  mode;
  char  buf[256];
  long FORLIM;

  sc = v->UU.U116.tsize * scale;
  if (sc >= 5  * 70) {
    tx = (v->UU.U116.torg % 3 - 1) * log_rotxx[rot] +
	 (v->UU.U116.torg / 3 - 1) * log_rotyx[rot];
    ty = (v->UU.U116.torg % 3 - 1) * log_rotxy[rot] +
	 (v->UU.U116.torg / 3 - 1) * log_rotyy[rot];
    i = strposc(v->UU.U116.sp, '$', 1L);
    if (i > 0 && i < strlen(v->UU.U116.sp)) {
      strcpy(buf, v->UU.U116.sp);
      mode = 'X';
      while (i <= strlen(buf)) {
	if (buf[i - 1] == '$' && i < strlen(buf)) {
	  switch (toupper(buf[i])) {

	  case '$':
	    strcpy(buf + i - 1, buf + i);
	    i++;
	    break;

	  case 'P':
	  case 'B':
	  case 'O':
	  case 'X':
	    mode = toupper(buf[i]);    
	    strcpy(buf + i - 1, buf + i + 1);
	    break;

	  default:
	    i++;
	    break;
	  }
	  continue;
	}
	switch (mode) {

	case 'P':
	  j = strposc("0.,+123-456*789/E()^", buf[i - 1], 1L);
	  if (j > 0)
	    buf[i - 1] = (char )(j + 147);
	  break;

	case 'B':
	  j = strposc("0.,+123-456*789/\0()^ABCDEFGHIJKLMNOPQRSTUVWXYZ",
		      toupper(buf[i - 1]), 1L);
	  if (j > 20)
	    buf[i - 1] = (char )(j + 147);
	  else if (j > 0)
	    buf[i - 1] = (char )(j + 127);
	  break;

	case 'O':
	  j = strposc("ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
		      toupper(buf[i - 1]), 1L);
	  if (j > 0)
	    buf[i - 1] = (char )(j + 213);
	  break;
	}
	i++;
      }
      switch (tx) {

      case -1:
	m_drawstr(xx, yy - (ty + 1) * 3, ((void *)0) , buf);
	break;

      case 0:
	m_centerstr(xx, yy - (ty + 1) * 3, ((void *)0) , buf);
	break;

      case 1:
	m_rightstr(xx, yy - (ty + 1) * 3, ((void *)0) , buf);
	break;
      }
      return;
    }
    switch (tx) {

    case -1:
      m_drawstr(xx, yy - (ty + 1) * 3, ((void *)0) , v->UU.U116.sp);
      break;

    case 0:
      m_centerstr(xx, yy - (ty + 1) * 3, ((void *)0) , v->UU.U116.sp);
      break;

    case 1:
      m_rightstr(xx, yy - (ty + 1) * 3, ((void *)0) , v->UU.U116.sp);
      break;
    }
    return;
  }
  if (sc < 5  * 40)
    return;
  if (sc >= 5  * 50) {
    if (!strsubset(v->UU.U116.sp, "0.,+123-456*789/\0()^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz " ))
      return;
    buf[strlen(v->UU.U116.sp)] = '\0';
    FORLIM = strlen(v->UU.U116.sp);
 

    for (i = 0; i < FORLIM; i++) {
      j = strposc("0.,+123-456*789/\0()^ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz " , v->UU.U116.sp[i], 1L);
      if (j <= 20)
	buf[i] = (char )(j + 127);
      else if (j <= 46)
	buf[i] = (char )(j + 147);
      else if (j <= 72)
	buf[i] = (char )(j + 121);
      else
	buf[i] = ' ';
    }
    tx = (v->UU.U116.torg % 3 - 1) * log_rotxx[rot] +
	 (v->UU.U116.torg / 3 - 1) * log_rotyx[rot];
    ty = (v->UU.U116.torg % 3 - 1) * log_rotxy[rot] +
	 (v->UU.U116.torg / 3 - 1) * log_rotyy[rot];
    switch (tx) {

    case -1:
      m_drawstr(xx, yy - (ty + 2) * 2, ((void *)0) , buf);
      break;

    case 0:
      m_centerstr(xx, yy - (ty + 2) * 2, ((void *)0) , buf);
      break;

    case 1:
      m_rightstr(xx, yy - (ty + 2) * 2, ((void *)0) , buf);
      break;
    }
    return;
  }
  if (!strsubset(v->UU.U116.sp, "0.,\000123-456\000789 " ))
    return;
  buf[strlen(v->UU.U116.sp)] = '\0';
  FORLIM = strlen(v->UU.U116.sp);
 

  for (i = 0; i < FORLIM; i++) {
    j = strposc("0.,\000123-456\000789 " , v->UU.U116.sp[i], 1L);
    if (j <= 15)
      buf[i] = (char )(j + 193);
    else
      buf[i] = ' ';
  }
  tx = (v->UU.U116.torg % 3 - 1) * log_rotxx[rot] +
       (v->UU.U116.torg / 3 - 1) * log_rotyx[rot];
  ty = (v->UU.U116.torg % 3 - 1) * log_rotxy[rot] +
       (v->UU.U116.torg / 3 - 1) * log_rotyy[rot];
  switch (tx) {

  case -1:
    m_drawstr(xx, yy - (ty + 1) * 2 - 3, ((void *)0) , buf);
    break;

  case 0:
    m_centerstr(xx, yy - (ty + 1) * 2 - 3, ((void *)0) , buf);
    break;

  case 1:
    m_rightstr(xx, yy - (ty + 1) * 2 - 3, ((void *)0) , buf);
    break;
  }
}






static  void  plaindrawgatec(x, y, g, c)
short x, y, g, c;
{
  short i, z, rxx, rxy, ryx, ryy;
  log_krec *k;
  boolean hascolor;
  short FORLIM;
  log_vectorrec *WITH1;

  k = kind[(g & (256  - 1)) - 1];
  z = 5  * k->bbmax + 2;
  if (x < -z || x > across + z || y < -z || y > down + z)
    return;
  hidecursor();
  hascolor = (c != gg.color.backgr && c != gg.color.conflict);
  m_color((long)c);
  if (g < 256 ) {
    FORLIM = k->numvects;
    for (i = 0; i < FORLIM; i++) {
      WITH1 = &k->vector[i];
      switch (WITH1->vkind) {

      case '1':
	if (hascolor)
	  m_color((long)c);
	break;

      case '2':
	if (hascolor)
	  m_color((long)gategreen);
	break;

      case '3':
	if (hascolor)
	  m_color((long)gateyellow);
	break;

      case '4':
	if (hascolor)
	  m_color((long)gatered);
	break;

      case '5':
	if (hascolor)
	  m_color((long)gateorange);
	break;

      case '6':
	if (hascolor)
	  m_color((long)gateblack);
	break;

      case '7':
	if (hascolor)
	  m_color((long)gatewhite);
	break;

      case 'v':
      case 'C':
      case 'e':
      case 'E':
      case 'r':
	drawvector2(&k->vector[i], (long)(x + WITH1->x1),
		    (long)(y + WITH1->y1), (long)(x + WITH1->UU.U99.x2),
		    (long)(y + WITH1->UU.U99.y2));
	break;

      case 'c':
      case 'F':
	drawvector4(&k->vector[i], (long)(x + WITH1->x1),
	  (long)(y + WITH1->y1), (long)(x + WITH1->UU.U99.x2),
	  (long)(y + WITH1->UU.U99.y2), (long)(x + WITH1->UU.U99.x3),
	  (long)(y + WITH1->UU.U99.y3), (long)(x + WITH1->UU.U99.x4),
	  (long)(y + WITH1->UU.U99.y4));
	break;

      case 't':
	drawtext(&k->vector[i], (long)5 , 0L, (long)(x + WITH1->x1),
		 (long)(y + WITH1->y1));
	break;
      }
    }
  } else {
    z = g / 256 ;
    rxx = log_rotxx[z];
    rxy = log_rotxy[z];
    ryx = log_rotyx[z];
    ryy = log_rotyy[z];
    FORLIM = k->numvects;
    for (i = 0; i < FORLIM; i++) {
      WITH1 = &k->vector[i];
      switch (WITH1->vkind) {

      case '1':
	if (hascolor)
	  m_color((long)c);
	break;

      case '2':
	if (hascolor)
	  m_color((long)gategreen);
	break;

      case '3':
	if (hascolor)
	  m_color((long)gateyellow);
	break;

      case '4':
	if (hascolor)
	  m_color((long)gatered);
	break;

      case '5':
	if (hascolor)
	  m_color((long)gateorange);
	break;

      case '6':
	if (hascolor)
	  m_color((long)gateblack);
	break;

      case '7':
	if (hascolor)
	  m_color((long)gatewhite);
	break;

      case 'v':
      case 'C':
      case 'e':
      case 'E':
      case 'r':
	drawvector2(&k->vector[i],
	  (long)(x + WITH1->x1 * rxx + WITH1->y1 * ryx),
	  (long)(y + WITH1->x1 * rxy + WITH1->y1 * ryy),
	  (long)(x + WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx),
	  (long)(y + WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy));
	break;

      case 'c':
      case 'F':
	drawvector4(&k->vector[i],
	  (long)(x + WITH1->x1 * rxx + WITH1->y1 * ryx),
	  (long)(y + WITH1->x1 * rxy + WITH1->y1 * ryy),
	  (long)(x + WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx),
	  (long)(y + WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy),
	  (long)(x + WITH1->UU.U99.x3 * rxx + WITH1->UU.U99.y3 * ryx),
	  (long)(y + WITH1->UU.U99.x3 * rxy + WITH1->UU.U99.y3 * ryy),
	  (long)(x + WITH1->UU.U99.x4 * rxx + WITH1->UU.U99.y4 * ryx),
	  (long)(y + WITH1->UU.U99.x4 * rxy + WITH1->UU.U99.y4 * ryy));
	break;

      case 't':
	drawtext(&k->vector[i], (long)5 , (long)z,
		 (long)(x + WITH1->x1 * rxx + WITH1->y1 * ryx),
		 (long)(y + WITH1->x1 * rxy + WITH1->y1 * ryy));
	break;
      }
    }
  }
  hidecursor();
}



static  void  udrawgatec(x, y, g, c)
short x, y, g, c;
{
  short i, z, rxx, rxy, ryx, ryy;
  log_krec *k;
  boolean hascolor;
  short FORLIM;
  log_vectorrec *WITH1;

  if (g == 0) {
    hidecursor();
    m_color((long)c);
    m_drawpoint((long)x, (long)y);
    hidecursor();
    return;
  }
  k = kind[(g & (256  - 1)) - 1];
  if (k->bbmax <= (25  / 5 ) ) {
    plaindrawgatec(x, y, g, c);
    return;
  }
  hascolor = (c != gg.color.backgr);
  z = 5  * k->bbmax + 2;
  if (x < -z || x > across + z || y < -z || y > down + z)
    return;
  z = g / 256 ;
  rxx = log_rotxx[z] * (25  / 5 ) ;
  rxy = log_rotxy[z] * (25  / 5 ) ;
  ryx = log_rotyx[z] * (25  / 5 ) ;
  ryy = log_rotyy[z] * (25  / 5 ) ;
  hidecursor();
  m_color((long)c);
  FORLIM = k->numvects;
  for (i = 0; i < FORLIM; i++) {
    WITH1 = &k->vector[i];
    switch (WITH1->vkind) {

    case '1':
      if (hascolor)
	m_color((long)c);
      break;

    case '2':
      if (hascolor)
	m_color((long)gategreen);
      break;

    case '3':
      if (hascolor)
	m_color((long)gateyellow);
      break;

    case '4':
      if (hascolor)
	m_color((long)gatered);
      break;

    case '5':
      if (hascolor)
	m_color((long)gateorange);
      break;

    case '6':
      if (hascolor)
	m_color((long)gateblack);
      break;

    case '7':
      if (hascolor)
	m_color((long)gatewhite);
      break;

    case 'v':
    case 'C':
    case 'e':
    case 'E':
    case 'r':
      drawvector2(&k->vector[i],
	(long)(x + (WITH1->x1 * rxx + WITH1->y1 * ryx) / k->bbmax),
	(long)(y + (WITH1->x1 * rxy + WITH1->y1 * ryy) / k->bbmax),
	(long)(x + (WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx) / k->bbmax),
	(long)(y + (WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy) / k->bbmax));
      break;

    case 'c':
    case 'F':
      drawvector4(&k->vector[i], (long)(x + (WITH1->x1 * rxx +
		WITH1->y1 * ryx) / k->bbmax), (long)
	  (y + (WITH1->x1 * rxy + WITH1->y1 * ryy) / k->bbmax), (long)
	  (x + (WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx) / k->bbmax),
	(long)
	  (y + (WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy) / k->bbmax),
	(long)
	  (x + (WITH1->UU.U99.x3 * rxx + WITH1->UU.U99.y3 * ryx) / k->bbmax),
	(long)
	  (y + (WITH1->UU.U99.x3 * rxy + WITH1->UU.U99.y3 * ryy) / k->bbmax),
	(long)
	  (x + (WITH1->UU.U99.x4 * rxx + WITH1->UU.U99.y4 * ryx) / k->bbmax),
	(long)
	  (y + (WITH1->UU.U99.x4 * rxy + WITH1->UU.U99.y4 * ryy) / k->bbmax));
 

      break;
    }
  }
  hidecursor();
}




 
 
 
 
 
 

static  void  drawgatedotsc(x, y, g, c)
short x, y, g, c;
{
  short i, z, rxx, rxy, ryx, ryy;
  log_krec *WITH;
  short FORLIM;

  if (g == 0 || vlsi)
    return;
  m_color((long)c);
  z = g / 256 ;
  if (z != 0) {
    rxx = log_rotxx[z];
    rxy = log_rotxy[z];
    ryx = log_rotyx[z];
    ryy = log_rotyy[z];
    WITH = kind[(g & (256  - 1)) - 1];
    FORLIM = WITH->numpins;
    for (i = 0; i < FORLIM; i++)
      point(x + WITH->pin[i].x * rxx + WITH->pin[i].y * ryx,
	    y + WITH->pin[i].x * rxy + WITH->pin[i].y * ryy);
    return;
  }
  WITH = kind[(g & (256  - 1)) - 1];
  FORLIM = WITH->numpins;
  for (i = 0; i < FORLIM; i++)
    point(x + WITH->pin[i].x, y + WITH->pin[i].y);
}


static  void  drawgatec(x, y, g, c)
short x, y, g, c;
{
  short i, xx, yy, z, rxx, rxy, ryx, ryy;
  long savecol;
  boolean hascolor;
  log_krec *WITH;
  short FORLIM;
  log_vectorrec *WITH1;

  if (zoom == 0)
    plaindrawgatec((int)(x * gg.scale - gg.xoff),
		   (int)(y * gg.scale - gg.yoff), g, c);
  else {
    z = g / 256 ;
    rxx = log_rotxx[z] * gg.scale;
    rxy = log_rotxy[z] * gg.scale;
    ryx = log_rotyx[z] * gg.scale;
    ryy = log_rotyy[z] * gg.scale;
    xx = x * gg.scale - gg.xoff;
    yy = y * gg.scale - gg.yoff;
    hidecursor();
    m_color((long)c);
    hascolor = (c != gg.color.backgr && c != gg.color.conflict);
    WITH = kind[(g & (256  - 1)) - 1];
    FORLIM = WITH->numvects;
    for (i = 0; i < FORLIM; i++) {
      WITH1 = &WITH->vector[i];
      switch (WITH1->vkind) {

      case '1':
	if (hascolor)
	  m_color((long)c);
	break;

      case '2':
	if (hascolor)
	  m_color((long)gategreen);
	break;

      case '3':
	if (hascolor)
	  m_color((long)gateyellow);
	break;

      case '4':
	if (hascolor)
	  m_color((long)gatered);
	break;

      case '5':
	if (hascolor)
	  m_color((long)gateorange);
	break;

      case '6':
	if (hascolor)
	  m_color((long)gateblack);
	break;

      case '7':
	if (hascolor)
	  m_color((long)gatewhite);
	break;

      case 'v':
      case 'r':
	drawvector2(
	  &WITH->vector[i],
	  (long)(xx + (WITH1->x1 * rxx + WITH1->y1 * ryx) / 5 ),
	  (long)(yy + (WITH1->x1 * rxy + WITH1->y1 * ryy) / 5 ),
	  (long)
	    (xx + (WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx) / 5 ),
	  (long)
	  (yy +
	   (WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy) / 5 ));
 

	break;

      case 'C':
	m_circle(xx + ((WITH1->x1 + WITH1->UU.U99.x2) * rxx + (WITH1->y1 +
		    WITH1->UU.U99.y2) * ryx) / (5  * 2L),
	  yy + ((WITH1->x1 + WITH1->UU.U99.x2) * rxy + (WITH1->y1 + WITH1->
		      UU.U99.y2) * ryy) / (5  * 2L),
	  P_imax2((long)abs((WITH1->x1 - WITH1->UU.U99.x2) * rxx +
		    (WITH1->y1 - WITH1->UU.U99.y2) * ryx),
	      (long)abs((WITH1->x1 - WITH1->UU.U99.x2) * ryx +
		    (WITH1->y1 - WITH1->UU.U99.y2) * ryy)) /
	    (5  * 2));
 

	break;

      case 'e':
	savecol = m_curcolor();
	m_color(0xffffL );
	m_ellipse(
	  xx + ((WITH1->x1 + WITH1->UU.U99.x2) * rxx +
		(WITH1->y1 + WITH1->UU.U99.y2) * ryx) / (5  * 2L),
	  yy + ((WITH1->x1 + WITH1->UU.U99.x2) * rxy +
		(WITH1->y1 + WITH1->UU.U99.y2) * ryy) / (5  * 2L),
	  ((WITH1->x1 - WITH1->UU.U99.x2) * rxx +
	      (WITH1->y1 - WITH1->UU.U99.y2) * ryx) / (5  * 2L),
	  ((WITH1->x1 - WITH1->UU.U99.x2) * ryx +
	      (WITH1->y1 - WITH1->UU.U99.y2) * ryy) / (5  * 2L),
	  savecol);
 

	m_color(savecol);
	break;

      case 'E':
	m_ellipse(
	  xx + ((WITH1->x1 + WITH1->UU.U99.x2) * rxx +
		(WITH1->y1 + WITH1->UU.U99.y2) * ryx) / (5  * 2L),
	  yy + ((WITH1->x1 + WITH1->UU.U99.x2) * rxy +
		(WITH1->y1 + WITH1->UU.U99.y2) * ryy) / (5  * 2L),
	  ((WITH1->x1 - WITH1->UU.U99.x2) * rxx +
	      (WITH1->y1 - WITH1->UU.U99.y2) * ryx) / (5  * 2L),
	  ((WITH1->x1 - WITH1->UU.U99.x2) * ryx +
	      (WITH1->y1 - WITH1->UU.U99.y2) * ryy) / (5  * 2L),
	  m_curcolor());
 

	break;

      case 'c':
      case 'F':
	drawvector4(&WITH->vector[i], (long)(xx + (WITH1->x1 * rxx +
		  WITH1->y1 * ryx) / 5 ), (long)(yy +
	      (WITH1->x1 * rxy + WITH1->y1 * ryy) / 5 ), (long)(xx +
	      (WITH1->UU.U99.x2 * rxx + WITH1->UU.U99.y2 * ryx) / 5 ),
	  (long)(yy +
	      (WITH1->UU.U99.x2 * rxy + WITH1->UU.U99.y2 * ryy) / 5 ),
	  (long)(xx +
	      (WITH1->UU.U99.x3 * rxx + WITH1->UU.U99.y3 * ryx) / 5 ),
	  (long)(yy +
	      (WITH1->UU.U99.x3 * rxy + WITH1->UU.U99.y3 * ryy) / 5 ),
	  (long)(xx +
	      (WITH1->UU.U99.x4 * rxx + WITH1->UU.U99.y4 * ryx) / 5 ),
	  (long)(yy + (WITH1->UU.U99.x4 * rxy + WITH1->UU.U99.y4 * ryy) /
		5 ));
 

	break;

      case 't':
	drawtext(&WITH->vector[i], (long)gg.scale, (long)z,
	  (long)(xx + (WITH1->x1 * rxx + WITH1->y1 * ryx) / 5 ),
	  (long)(yy + (WITH1->x1 * rxy + WITH1->y1 * ryy) / 5 ));
	break;
      }
    }
    hidecursor();
  }
  if ((c == gg.color.gate || c == gg.color.dimgate) && !suppressdots)
    drawgatedotsc(x, y, g, gg.color.gatepin);
}






static  void  signallabel(x, y, gtype, sig, c)
short x, y, gtype, sig, c;
{
  log_krec *k;
  char  STR1[256];

  k = kind[(gtype & (256  - 1)) - 1];
  if (!(sig != 0 && k->flag.U3.named))
    return;
  remcursor();
  m_color((long)c);
  if (k->flag.U3.nright != (gtype / 256  == 0))
    drawstr2((int)(x - m_strwidth(((void *)0) ,
		     strrtrim(strcpy(STR1, gg.signaltab[sig - 1].name))) + 17),
	     y - 3, gg.signaltab[sig - 1].name);
  else
    drawstr2(x - 17, y - 3, gg.signaltab[sig - 1].name);
}



static  void  gsignallabel(x, y, g, c)
short x, y;
log_grec *g;
short c;
{
  signallabel((int)(x * gg.scale - gg.xoff), (int)(y * gg.scale - gg.yoff),
	      g->g, g->sig, c);
}



 





static  void  drawpnums(g, c)
log_grec *g;
short c;
{
  short rxx, rxy, ryx, ryy, i, j, k;
  char  s[7];
  log_krec *WITH;
  short FORLIM, FORLIM1;

  if (zoom <= 0 || gg.textinvisible)
    return;
  m_color((long)c);
  rxx = log_rotxx[g->rot];
  rxy = log_rotxy[g->rot];
  ryx = log_rotyx[g->rot];
  ryy = log_rotyy[g->rot];
  WITH = g->kind;
  FORLIM = WITH->numpnums;
  for (i = 0; i < FORLIM; i++) {
    sprintf(s, "%d", WITH->pnum[i].num);
    FORLIM1 = strlen(s);
    for (j = 0; j < FORLIM1; j++) {
      k = strposc("0123-456789" , s[j], 1L);
      if (k != 0)
	s[j] = "\224\230\231\232\233\234\235\236\240\241\242" [k - 1];
    }
    m_move(g->x * gg.scale + (WITH->pnum[i].x * rxx + WITH->pnum[i].y * ryx) *
			     gg.scale / 5  - gg.xoff,
	   g->y * gg.scale + (WITH->pnum[i].x * rxy + WITH->pnum[i].y * ryy) *
			     gg.scale / 5  - gg.yoff);
    m_displaytext(s);
  }
}








static  void  kdrawgatec(i, c)
short i, c;
{
  short x, y;

  x = (i - 1) * (25  * 2)  + kindgroupstart;
  y = (down + baseline) / 2;
  udrawgatec(x, y, kindgroup[i - 1], c);
  if (kindgroup[i - 1] != 0)
    signallabel(x, y, kindgroup[i - 1], kindsig[i - 1], c);
}









 
 
 
 
 
 

static  void  drawgatexc(g, c)
log_grec *g;
short c;
{
  if (g->dimcolor && c == gg.color.gate)
    c = gg.color.dimgate;
  drawgatec(g->x, g->y, g->g, c);
  if (!gg.textinvisible)
    gsignallabel(g->x, g->y, g, gg.color.signal);
  if (g->kind->numpnums > 0)
    drawpnums(g, gg.color.pinnum);
}


static  void  drawgatex(g)
log_grec *g;
{
  drawgatexc(g, gg.color.gate);
}



static  void  setdimgate(g, dim)
log_grec *g;
boolean dim;
{
  log_grec *g1;

  if (g->dimcolor == dim)
    return;
  g->dimcolor = dim;
  if (gg.showpage <= 0)
    return;
  g1 = gg.gbase[gg.showpage - 1];
  while (g1 != ((void *)0)  && g1 != g)
    g1 = g1->next;
  if (g1 != g)
    return;
  m_saveclip();
  clipon();
  drawgatex(g);
  m_unclip();
}







 
 
 
 
 
 

static  void  eragate(g)
log_grec *g;
{
  log_grec *g1, *g2;

  if (g->conflict || g->oconflict) {
    g1 = gateconflictbase;
    g2 = ((void *)0) ;
    while (g1 != ((void *)0)  && g1 != g) {
      g2 = g1;
      g1 = g1->confnext;
    }
    if (g1 == ((void *)0) )
      report(10, "ERAGATE" );
    else if (g2 == ((void *)0) )
      gateconflictbase = g->confnext;
    else
      g2->confnext = g->confnext;
    g->conflict = 0 ;
    g->conflict1 = 0 ;
    g->conflict2 = 0 ;
    g->oconflict = 0 ;
  }
  drawgatec(g->x, g->y, g->g, gg.color.backgr);
  gsignallabel(g->x, g->y, g, gg.color.backgr);
  if (g->kind->numpnums > 0)
    drawpnums(g, gg.color.backgr);
  drawgatedotsc(g->x, g->y, g->g, gg.color.backgr);
  calltoolgate(g, act_erasegate);
}





 
 
 
 
 
 

static  void  drawsolderc(x, y, c)
short x, y, c;
{
  if (!showsolder)
    return;
  if (vlsi) {
    if (c == gg.color.conflict || c == gg.color.backgr)
      m_color((long)c);
    else
      m_color((long)gg.color.vlsicut);
    x = x * gg.scale - gg.xoff;
    y = y * gg.scale - gg.yoff;
    m_drawline(x - 3L, y - 3L, x + 3L, y + 3L);
    m_drawline(x - 3L, y + 3L, x + 3L, y - 3L);
    m_drawline(x - 2L, y - 3L, x + 4L, y + 3L);
    m_drawline(x - 2L, y + 3L, x + 4L, y - 3L);
    return;
  }
  m_color((long)c);
  x = x * gg.scale - gg.xoff;
  y = y * gg.scale - gg.yoff;
  m_drawline(x - 1L, y - 2L, x + 1L, y - 2L);
  m_drawline(x - 2L, y - 1L, x + 2L, y - 1L);
  m_drawline(x - 2L, (long)y, x + 2L, (long)y);
  m_drawline(x - 2L, y + 1L, x + 2L, y + 1L);
  m_drawline(x - 1L, y + 2L, x + 1L, y + 2L);
}



 
 
 
 
 
 

static  void  drawtransc(x, y, c)
short x, y, c;
{
  if (!vlsi)
    return;
  if (c == gg.color.solder)
    m_color((long)gg.color.vlsicut);
  else
    m_color((long)c);
  x = x * gg.scale - gg.xoff;
  y = y * gg.scale - gg.yoff;
  m_circle((long)x, (long)y, 4L);
}



 
 
 
 
 

static  void  eralabel(l)
log_lrec *l;
{
  m_color((long)gg.color.backgr);
 

  m_drawstr(l->x * gg.scale - gg.xoff, l->y * gg.scale - gg.yoff + 2,
	    ((void *)0)  , l->name);
}



 
 
 
 
 

static  void  xorlabel(x, y, l)
short x, y;
log_lrec *l;
{
  m_colormode((long)16 );
  m_color((long)gg.color.labeltext);
 

  m_drawstr(x * gg.scale - gg.xoff, y * gg.scale - gg.yoff + 2, ((void *)0)  ,
	    l->name);
  m_colormode((long)0 );
}



 
 
 
 
 

static  void  drawboxc0(x1, y1, x2, y2, c)
short x1, y1, x2, y2, c;
{
  m_color((long)c);
  m_linestyle(1L);
  rect(x1, y1, x2, y2);
  m_linestyle(0L);
}


static  void  drawboxc(b, c)
log_brec *b;
short c;
{
  drawboxc0(b->x1, b->y1, b->x2, b->y2, c);
}



 
 
 
 
 

static  void  drawmarkersc(c)
short c;
{
  clipon();
  m_color((long)c);
  hline(gg.markerx1, gg.markerx1 + 2, gg.markery1);
  vline(gg.markerx1, gg.markery1, gg.markery1 + 2);
  hline(gg.markerx2 - 2, gg.markerx2, gg.markery2);
  vline(gg.markerx2, gg.markery2 - 2, gg.markery2);
  clipoff();
}






 
 
 
 
 
 

static  void  drawnodec(n, c)
log_nrec *n;
short c;
{
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;

  hidecursor();
  if ((unsigned)c > 15) {
    if (gg.glowmode && gg.showpage > 0)
      c = glowcol(n, (long)gg.color.wire[0]);
    else
      c = gg.color.wire[0];
  }
  if (vlsi && c == gg.color.wire[0]) {
    hw = gg.hwbase[gg.curpage - 1];
    while (hw != ((void *)0) ) {
      if (hw->node == n && hw != gg.movinghw) {
	m_color((long)gg.color.wire[hw->wcolr - 0 ]);
	hline(hw->x1, hw->x2, hw->y);
      }
      hw = hw->next;
    }
    vw = gg.vwbase[gg.curpage - 1];
    while (vw != ((void *)0) ) {
      if (vw->node == n && vw != gg.movingvw) {
	m_color((long)gg.color.wire[vw->wcolr - 0 ]);
	vline(vw->x, vw->y1, vw->y2);
      }
      vw = vw->next;
    }
  } else {
    m_color((long)c);
    hw = gg.hwbase[gg.curpage - 1];
    while (hw != ((void *)0) ) {
      if (hw->node == n && hw != gg.movinghw)
	hline(hw->x1, hw->x2, hw->y);
      hw = hw->next;
    }
    vw = gg.vwbase[gg.curpage - 1];
    while (vw != ((void *)0) ) {
      if (vw->node == n && vw != gg.movingvw)
	vline(vw->x, vw->y1, vw->y2);
      vw = vw->next;
    }
  }
  if (showsolder) {
    s = gg.sbase[gg.curpage - 1];
    while (s != ((void *)0) ) {
      if (s->hwire != ((void *)0)  && s->hwire->node == n ||
	  s->vwire != ((void *)0)  && s->vwire->node == n)
	drawsolderc(s->x, s->y, c);
      s = s->next;
    }
  }
  hidecursor();
}




 
 
 
 
 
 

static  void  drawnode(n)
log_nrec *n;
{
  drawnodec(n, -1);
}



 
 
 
 
 

static  boolean pageempty  (int pg)  ;


static  void  refrpagedisp()
{
  short num;

  m_color((long)gg.color.page1);
  drawstr2(across - 49, 2, "PAGE");
  m_color((long)gg.color.page2);
  drawnum2(across - 14, 2, (int)gg.curpage);
  m_color((long)gg.color.page3);
  drawstr2(across - 35, 14, "OF");
  m_color((long)gg.color.page4);
  num = gg.numpages;
  while (num > gg.curpage && pageempty(num))
    num--;
  drawnum2(across - 14, 14, num);
}



 
 
 
 
 

static  void  refreditmode()
{
  hidecursor();
  m_color((long)gg.color.backgr);
  m_fillrect(across + (-27)  - 1L, line2 - 2L, across + (-27)  + 30L,
	     line2 + 9L);
  switch (cureditmode) {

  case 1:
    m_color((long)gg.color.menuword);
    drawstr2(across + (-27) , line2, "ROT");
    break;

  case 2:
    m_color((long)gg.color.menuword);
    drawstr2(across + (-27) , line2, "MIR-");
    break;

  case 3:
    m_color((long)gg.color.menuword);
    drawstr2(across + (-27) , line2, "MIR|");
    break;

  case 4:
    m_color((long)gg.color.selword);
    drawstr2(across + (-27) , line2, "CNFG");
    break;
  }
  hidecursor();
}



 
 
 
 
 

static  void  refrbaseline(always)
boolean always;
{
  short c;

  if (anyconflicts)
    c = gg.color.conflict;
  else
    c = gg.baselinecolor;
  if (!(c != gg.color.curbaseline || always))
    return;
  clipoff();
  gg.color.curbaseline = c;
  hidecursor();
  m_color((long)c);
  m_fillrect(0L, (long)baseline, (long)kindgroupleft, baseline + 1L);
  m_fillrect((long)kindgroupright, (long)baseline, (long)across,
	     baseline + 1L);
  hidecursor();
}







 
 
 
 
 
 

static  void  refresh()
{
  long x1, y1, x2, y2;
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_nrec *n;
  log_srec *s;
  log_lrec *l;
  log_brec *b;

  stamp(&gg.refrstamp);
  gg.showpage = gg.curpage;
  showsolder = (zoom > -1 && (vlsi || !gg.glowmode || glowsolder));
  x1 = (gg.xoff - 30) / gg.scale;
  y1 = (gg.yoff - 30) / gg.scale;
  x2 = (gg.xoff + across + 30) / gg.scale;
  y2 = (gg.yoff + down + 30) / gg.scale;
  refrtimer = -1;
  remcursor();
  clipon();
  refrpagedisp();
  if (!gg.invisible) {
    working();
    suppressdots = gg.dotsvisible;
    g = gg.gbase[gg.curpage - 1];
    while (g != ((void *)0) ) {
      if (P_ibetweenm(x1, (long)g->x, x2, (long)g->kind->bbmax) &&
	  P_ibetweenm(y1, (long)g->y, y2, (long)g->kind->bbmax))
	drawgatex(g);
      g = g->next;
    }
    suppressdots = 0 ;
    working();
    if (gg.glowmode) {
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0) ) {
	if (hw->y > y1 && hw->y < y2 && hw != gg.movinghw) {
	  m_color(glowcol(hw->node,
			  (long)gg.color.wire[hw->wcolr - 0 ]));
	  hline(hw->x1, hw->x2, hw->y);
	}
	hw = hw->next;
      }
      working();
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0) ) {
	if (vw->x > x1 && vw->x < x2 && vw != gg.movingvw) {
	  m_color(glowcol(vw->node,
			  (long)gg.color.wire[vw->wcolr - 0 ]));
	  vline(vw->x, vw->y1, vw->y2);
	}
	vw = vw->next;
      }
      working();
      if (showsolder) {
	s = gg.sbase[gg.curpage - 1];
	while (s != ((void *)0) ) {
	  if (s->hwire != ((void *)0) )
	    n = s->hwire->node;
	  else
	    n = s->vwire->node;
	  drawsolderc(s->x, s->y, (int)glowcol(n, (long)gg.color.solder));
	  s = s->next;
	}
      }
    } else {
      m_color((long)gg.color.wire[0]);
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0) ) {
	if (hw->y > y1 && hw->y < y2 && hw != gg.movinghw) {
	  if (vlsi)
	    m_color((long)gg.color.wire[hw->wcolr - 0 ]);
	  hline(hw->x1, hw->x2, hw->y);
	}
	hw = hw->next;
      }
      working();
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0) ) {
	if (vw->x > x1 && vw->x < x2 && vw != gg.movingvw) {
	  if (vlsi)
	    m_color((long)gg.color.wire[vw->wcolr - 0 ]);
	  vline(vw->x, vw->y1, vw->y2);
	}
	vw = vw->next;
      }
      working();
      if (showsolder) {
	s = gg.sbase[gg.curpage - 1];
	while (s != ((void *)0) ) {
	  if (s->hwire != ((void *)0) )
	    n = s->hwire->node;
	  else
	    n = s->vwire->node;
	  drawsolderc(s->x, s->y, gg.color.solder);
	  s = s->next;
	}
      }
    }
    if (gg.dotsvisible) {
      g = gg.gbase[gg.curpage - 1];
      while (g != ((void *)0) ) {
	if (g->x > x1 && g->x < x2 && g->y > y1 && g->y < y2)
	  drawgatedotsc(g->x, g->y, g->g, gg.color.gatepin);
	g = g->next;
      }
    }
  } else {
    working();
    g = gg.gbase[gg.curpage - 1];
    while (g != ((void *)0) ) {
      if (g->kind->flag.U3.visible)
	drawgatex(g);
      g = g->next;
    }
  }
  working();
  if (!gg.textinvisible) {
    b = gg.bbase[gg.curpage - 1];
    while (b != ((void *)0) ) {
      drawboxc(b, gg.color.dashbox);
      b = b->next;
    }
    working();
    l = gg.lbase[gg.curpage - 1];
    m_color((long)gg.color.labeltext);
    while (l != ((void *)0) ) {
      if (l->y > y1 && l->y < y2) {
 

	m_drawstr(l->x * gg.scale - gg.xoff, l->y * gg.scale - gg.yoff + 2,
		  ((void *)0)  , l->name);
      }
      l = l->next;
    }
  }
  working();
  if (gg.markers)
    drawmarkersc(gg.color.marker);
  if (memavail() < 20000 )
    message("Low on memory!");
  clipoff();
  restorecursor();
}





 
 
 
 
 
 

static  void  refreshsoon()
{
  refrtimer0 = 70 ;
  refrtimer = 70 ;
  gg.refrflag = 1 ;
}










static  void  message(msg)
char  *msg;
{
  na_strlist *l1;

  if (!gg.initdone) {
    l1 = strlist_append(&messages, msg);
    l1->value = (na_long)0;
    return;
  }
  if (messagepos + 10  >= baseline) {
    uerase(0, 0, messageright, messagepos);
    resetmessages();
    refreshsoon();
  }
  messageright = P_imax2((long)messageright,
			 m_strwidth(((void *)0)  , msg) + 3);
 

  m_color((long)gg.color.message);
 

  m_drawstr(2L, (long)messagepos, ((void *)0)  , msg);
  messagepos += 10 ;
}





static  void  vmessage(msg)
char  *msg;
{
  na_strlist *l1;

  if (gg.initdone) {
    if (gg.verbose || tempverbose)
      message(msg);
  } else {
    l1 = strlist_append(&messages, msg);
    if (tempverbose)
      l1->value = (na_long)0;
    else
      l1->value = (na_long)1;
  }
  tempverbose = 0 ;
}



static  void  vmessageflag(msg, b)
char  *msg;
boolean b;
{
  char  STR1[256];

  if (b) {
    sprintf(STR1, "%sON", msg);
    vmessage(STR1);
  } else {
    sprintf(STR1, "%sOFF", msg);
    vmessage(STR1);
  }
}



static  void  tracemessage(msg)
char  *msg;
{
  if (!gg.traceflag)
    return;
  if (!gg.traceopen) {
    if (*tracefname == '\0') {
      do {
	sprintf(tracefname, "/tmp/%.10s%03ld",
         
      	cuserid(((void *)0) ), P_rand(&gg.rndseed, 1000L)); 

      } while (access(tracefname, 0 ) == 0);
    }
    if (tracefile != ((void *)0) )
      tracefile = freopen(tracefname, "a", tracefile);
    else
      tracefile = fopen(tracefname, "a");
    if (tracefile == ((void *)0) )
      _EscIO(10 );
    gg.traceopen = 1 ;
  }
  nc_fprintf (tracefile, "%s\n", msg);
}



static  void  dumpmessage(msg)
char  *msg;
{
  if (*dumpfname == '\0')
    return;
  if (!gg.dumpopen) {
    if (dumpfile != ((void *)0) )
      dumpfile = freopen(dumpfname, "a", dumpfile);
    else
      dumpfile = fopen(dumpfname, "a");
    if (dumpfile == ((void *)0) )
      _EscIO(10 );
    gg.dumpopen = 1 ;
  }
  nc_fprintf (dumpfile, "%s\n", msg);
}



static  void  closedump()
{
  if (gg.dumpopen) {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      if (dumpfile != ((void *)0) )
	fclose(dumpfile);
      dumpfile = ((void *)0) ;
    __top_jb = __try_jb.next; } else { ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
    } } while (0) ;
  }
  gg.dumpopen = 0 ;
}



static  void  closetrace()
{
  if (gg.traceopen) {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      if (tracefile != ((void *)0) )
	fclose(tracefile);
      tracefile = ((void *)0) ;
    __top_jb = __try_jb.next; } else { ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
    } } while (0) ;
  }
  gg.traceopen = 0 ;
}



static  void  setdumpname(name_)
char  *name_;
{
  char  name[256];

  strcpy(name, name_);
  newci_fixfname(name, "text", "");
  closedump();
  strcpy(dumpfname, name);
}



static  void  settracename(name_)
char  *name_;
{
  char  name[256];

  strcpy(name, name_);
  newci_fixfname(name, "text", "");
  closetrace();
  strcpy(tracefname, name);
  if (gg.traceflag)
    tracemessage("Trace mode ON");
}



static  void  closedumpfiles()
{
  closedump();
  closetrace();
}





 
 
 
 
 

static  void  refrmenu()
{
  short i, FORLIM;

  working();
  remcursor();
  uerase(0, baseline + 2, across, down);
  clipoff();
  refrbaseline(1 );
  m_color((long)gg.color.backgr);
  m_fillrect(kindgroupleft + 1L, (long)baseline, kindgroupright - 1L,
	     baseline + 1L);
  m_color((long)gg.color.menuword);
  drawstr2(1 , line1, "Frills");
  drawstr2(48 , line1, "Editing");
  drawstr2(1 , line2, "HELP");
  drawstr2(48 , line2, "CAT");
  drawstr2(across + (-69) , line1, "Cursor");
  drawstr2(across + (-27) , line1, "Misc");
  refreditmode();
  if (modeflag)
    log_setmode(modename);
  else
    log_setmode("");
  FORLIM = kindgroupsize;
  for (i = 1; i <= FORLIM; i++)
    kdrawgatec(i, gg.color.kindgate);
}




static  void  beginbottom()
{
  remcursor();
  clipoff();
  bottomcount++;
  if (m_autoraise)
    {
      clearshowalpha();
    }
  else
    {
      clearalpha();
    }
  nc_gotoXY( 0 ,  txdown - 1 ) ;
}



static  void  endbottom()
{
  remcursor();
  bottomcount--;
  if (m_autoraise)
    {
      if (bottomcount < 1)    
	{
	  bottomcount =0;
	  m_graphics_on();
	}
    }
  else
    {
      m_graphics_on();    
    }
  clearalpha();

}




 
 
 
 
 

static  void  beginerror()
{
  beginbottom();
  strlist_empty(&thingstodo);
  warning();
}




 
 
 
 
 

static  void  enderror()
{
  nc_printf ("  Press any key to continue.");
  m_alpha_on();
  waitforkey();
  endbottom();
}




 
 
 
 
 

static  void  refrscreen1()
{
  m_colormode((long)0 );
  m_noclip();
  remcursor();
  uerase(0, 0, across, baseline - 1);
  resetmessages();
  refresh();
  gg.refrflag = 1 ;
}






 
 
 
 
 

void  refrscreen()
{
  gg.showpage = gg.curpage;
  bottomcount = 0;
  m_colormode((long)0 );
  m_noclip();
  fixcolormap();
  clearalpha();
  refrmenu();
  refrscreen1();
  m_graphics_on();
}



void  resize_screen()
{
  initscreen2();
  refrscreen();
}







static  void  chpage(pg)
short pg;
{
  log_regrec *r;

  stamp(&gg.pagestamp[pg - 1]);
  gg.pagechanged[pg - 1] = 1 ;
  r = gg.pageregions[pg - 1];
  while (r != ((void *)0) ) {
    stamp(&r->regstamp);
    r = r->next;
  }
}


static  void  chpageplace(pg, x1, y1, x2, y2)
short pg, x1, y1, x2, y2;
{
  log_regrec *r;

  stamp(&gg.pagestamp[pg - 1]);
  gg.pagechanged[pg - 1] = 1 ;
  r = gg.pageregions[pg - 1];
  if (r == ((void *)0) )
    return;
  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  while (r != ((void *)0) ) {
    if (r->x1 <= x2 && x1 <= r->x2 && r->y1 <= y2 && y1 <= r->y2)
      stamp(&r->regstamp);
    r = r->next;
  }
}



static  boolean pageempty(pg)
short pg;
{
  return (gg.gbase[pg - 1] == ((void *)0)  && gg.hwbase[pg - 1] == ((void *)0)  &&
	  gg.vwbase[pg - 1] == ((void *)0)  && gg.bbase[pg - 1] == ((void *)0)  &&
	  gg.lbase[pg - 1] == ((void *)0) );
}


static  boolean pagenull(pg)
short pg;
{
  return (pageempty(pg) && gg.pageregions[pg - 1] == ((void *)0) );
}


static  boolean pagechanged(pg)
short pg;
{
  return (gg.pagechanged[pg - 1] && !pageempty(pg));
}



static  boolean anychanged()
{
  short i;

  i = 1;
  while (i <= gg.numpages && !pagechanged(i))
    i++;
  return (i <= gg.numpages);
}







static  void  reportnodeconflict(n)
log_nrec *n;
{
  if (n->conflict || !conflictenbl)
    return;
  if (!n->oconflict) {
    n->confnext = nodeconflictbase;
    nodeconflictbase = n;
    n->conflict1 = (3L - conflictdelay) & 1;
    n->conflict2 = ((3L - conflictdelay) / 2) & 1;
  }
  n->conflict = 1 ;
}



static  void  reportgateconflict(g)
log_grec *g;
{
  if (g->conflict || !conflictenbl)
    return;
  if (!g->oconflict) {
    g->confnext = gateconflictbase;
    gateconflictbase = g;
    g->conflict1 = (3L - conflictdelay) & 1;
    g->conflict2 = ((3L - conflictdelay) / 2) & 1;
  }
  g->conflict = 1 ;
}







static  void  drawhistdivisions(x1, x2)
short x1, x2;
{
  short x, y;

  m_color((long)gg.color.division);
  x = 40 ;
  while (x <= x2) {
    if (x >= x1) {
      y = histdown;
      while (y >= 0) {
	m_drawpoint((long)x, (long)y);
	y -= 30 ;
      }
    }
    x += 30 ;
  }
}



static  void  historypointx(ht, x)
log_htrec *ht;
short *x;
{
  gg.actval = (ht->time - histgattr[11  - 1].UU.r) /
	      histgattr[13  - 1].UU.r;
  if (gg.actval > histdivsacross) {
    *x = across * 2;
    return;
  }
  if (gg.actval < 0)
    *x = -across;
  else
    *x = 40  + (long)floor(gg.actval * 30  + 0.5);
}



static  void  historyvaluey(hn, value, outval, y)
log_hnrec *hn;
double value, *outval;
short *y;
{
  gg.actval = value;
  gg.actx = hn->sig;
  gg.actgattr = hn->attr;
  gg.acty = gg.color.chart;
  calltoolnode(gg.signaltab[gg.actx - 1].np, act_histval);
  *outval = gg.actval;
  if (gg.actval < -histvalrange)
    gg.actval = -histvalrange;
  else if (gg.actval > histvalrange)
    gg.actval = histvalrange;
  *y = hn->y - (long)floor(gg.actval * 30  + 0.5);
}   



static  void  historypointy(hn, ht, y)
log_hnrec *hn;
log_htrec *ht;
short *y;
{
  double r;

  historyvaluey(hn, na_srtor(ht->val[hn->num - 1]), &r, y);
}




static  void  getnodeval(n, val, opts)
log_nrec *n;
double *val;
char  *opts;
{
  gg.actval = 0.0;
  strcpy(gg.actstr, opts);
  calltoolnode(n, act_nodeval);
  *val = gg.actval;
}





 
 
 
 
 
 
 
 
 

static  void  pass()
{
  log_grec *g, *g1, *g2;
  log_nrec *n, *n1, *n2;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_tool *st, *mintimetool;
  log_htrec *ht;
  log_hnrec *hn;
  long i1;
  short histsweep, hx1, hx2, hy1, hy2;
  boolean havetime, hadconflicts;
  double mintime, dtime;
  boolean flag, flag2;
  log_gattrrec *WITH;
  log_hwrec *WITH1;
  log_vwrec *WITH2;
  log_srec *WITH3;

  watchdog = timers_sysclock();
  gg.busyflag = 0 ;
  gg.oldsimstate = gg.simstate;
  gg.oldsimstatetool = gg.simstatetool;
  gg.simstate = simst_null;
  gg.simstatetool = ((void *)0) ;
  if (!gg.pwrflag)
    gg.fastspeed = gg.fastmin;
  if (gg.showpage > 0 && !modeflag &&
      (timers_sysclock() / 6000 != modetime || gg.probekind != modeprobekind))
    log_setmode("");
  if (gg.showpage > 0 || bottomcount > 0)
    clipon();
  else if (gg.showpage == (-2) ) {
    if (bottomcount == 0)
      m_clip((long)40 , 0L, (long)across, (long)histdown);
    else
      m_clip((long)40 , 0L, (long)across, baseline - 1L);
  }
  histsweep = histgattr[1  - 1].UU.nv;
  if (gg.resetflag) {
    stamp(&gg.resetstamp);
    gg.time = 0.0;
    gg.singlestepcount = 0;
    histreset = 1 ;
    if (histsweep == 0  ||
	(histsweep == 1  &&
	 (histgattr[3  - 1].blnk ||
	  histgattr[3  - 1].UU.r == 0)))
      gg.histactive = 1 ;
    st = gg.toolbase;
    while (st != ((void *)0) ) {
      if (st->simulator)
	st->deltatime = 0.0;
      st = st->next;
    }
  }
  if (!gg.histactive && (histsweep == 2 ) && (histtrig != 0)) {
    gg.actflag = 0 ;
    gg.actx = histtrig;
    calltoolnode(gg.signaltab[gg.actx - 1].np, act_trigger);
    if (gg.actflag) {
      histreset = 1 ;
      gg.histactive = 1 ;
    }
  }
  if (histreset || hncount != hnocount) {
    if (gg.htbase != ((void *)0) ) {
      if (gg.showpage == (-2)  && gg.htbase != gg.htlast) {
	historypointx(gg.htbase, &hx1);
	historypointx(gg.htlast, &hx2);
	if (hx1 < 40 )
	  hx1 = 40 ;
	if (hx2 > across)
	  hx2 = across;
	if (hx1 <= hx2) {
	  m_color((long)gg.color.backgr);
	  m_fillrect((long)hx1, 0L, (long)hx2, (long)histdown);
	  drawhistdivisions(hx1, hx2);
	}
      }
      while (gg.htbase != ((void *)0) ) {
	ht = gg.htbase->next;
	(free((Anyptr)( gg.htbase )), ( gg.htbase )= ((void *)0) ) ;
	gg.htbase = ht;
      }
      gg.htlast = ((void *)0) ;
    }
    htcount = 0;
    WITH = &histgattr[6  - 1];
    if (WITH->blnk)
      histtime = gg.time;
    else
      histtime = gg.time - WITH->UU.r;
  }
  if (gg.histactive && !histgattr[7  - 1].blnk) {
    mintime = histgattr[7  - 1].UU.r;
    havetime = (mintime > 0);
    mintimetool = ((void *)0) ;
  } else
    havetime = 0 ;
  st = gg.toolbase;
  while (st != ((void *)0) ) {
    if (st->simulator) {
      st->nexttstep = -1.0;
      calltool(st, act_pass);
      if (st->nexttstep >= 0.0) {
	dtime = st->nexttstep - st->deltatime;
	if (dtime < 0.0) {
	  st->deltatime = st->nexttstep * 0.999999999;
	  dtime = st->nexttstep - st->deltatime;
	}
	if (!havetime || dtime < mintime) {
	  mintime = dtime;
	  mintimetool = st;
	}
	havetime = 1 ;
      }
    }
    st = st->next;
  }
  if (gg.histactive && gg.pwrflag &&
      htcount >= histgattr[8  - 1].UU.U73.i1 &&
      histgattr[1  - 1].UU.nv != 0 ) {
    m_saveclip();
    m_noclip();
    vmessage("Warning: scope memory is 100% full");
    switch (histgattr[5  - 1].UU.nv) {

    case 0:
      gg.histactive = 0 ;
      break;

    case 1:
      gg.pwrflag = 0 ;
      vmessage("Simulation is OFF (scope full)");
      break;
    }
    m_unclip();
  }
  if (gg.pwrflag) {
    gg.simstatetool = mintimetool;
    if (havetime) {
      if (mintime > 0) {
	gg.simstate = simst_running;
	if (histsweep == 1 ) {
	  flag = (gg.time >= histgattr[3  - 1].UU.r);
	  flag2 = (gg.time >= histgattr[4  - 1].UU.r);
	}
	gg.time += mintime;
	gg.prevtimestep = mintime;
	if (histsweep == 1 ) {
	  if (!histgattr[3  - 1].blnk && !flag &&
	      gg.time >= histgattr[3  - 1].UU.r)
	    gg.histactive = 1 ;
	  if (!histgattr[4  - 1].blnk && !flag2 &&
	      gg.time >= histgattr[4  - 1].UU.r)
	    gg.histactive = 0 ;
	}
	st = gg.toolbase;
	while (st != ((void *)0) ) {
	  if (st->simulator) {
	    if (st->nexttstep > 0.0) {
	      gg.actflag = (st->nexttstep - st->deltatime == mintime);
	      if (gg.actflag)
		st->deltatime = 0.0;
	      else
		st->deltatime += mintime;
	      calltool(st, act_tstep);
	    }
	  }
	  st = st->next;
	}
	if (gg.histactive && hncount > 0 &&
	    (histgattr[6  - 1].blnk ||
	     gg.time - histtime >= histgattr[6  - 1].UU.r)) {
	  if (htcount >= histgattr[8  - 1].UU.U73.i1) {
	    if (gg.showpage == (-2) )
	      historypointx(gg.htbase, &hx1);
	    while (htcount >= histgattr[8  - 1].UU.U73.i1) {
	      ht = gg.htbase->next;
	      (free((Anyptr)( gg.htbase )), ( gg.htbase )= ((void *)0) ) ;
	      gg.htbase = ht;
	      htcount--;
	    }
	    if (gg.showpage == (-2) ) {
	      if (gg.htbase != ((void *)0) )
		historypointx(gg.htbase, &hx2);
	      else
		hx2 = across;
	      if (hx2 >= hx1) {
		m_color((long)gg.color.backgr);
		m_fillrect((long)hx1, 0L, (long)hx2, (long)histdown);
		drawhistdivisions(hx1, hx2);
	      }
	    }
	  }
	  if (gg.htbase == ((void *)0) ) {
	    histgattr[11  - 1].UU.r = gg.time;
	    histgattr[11  - 1].changed = 1 ;
	    histonscreen = 0 ;
	  }
 







          ht = (log_htrec *)((__MallocTemp__ = malloc(( sizeof(log_htrec) -
                                  1000000L  * sizeof(Anyptr) +
                                  hncount * sizeof(Anyptr) ) ? ( sizeof(log_htrec) -                                   1000000L  * sizeof(Anyptr) +                                   hncount * sizeof(Anyptr) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;


	  ht->next = ((void *)0) ;
	  ht->time = gg.time;
	  hn = gg.hnbase;
	  i1 = 0;
	  while (hn != ((void *)0) ) {
	    gg.actval = 0.0;
	    gg.actx = hn->sig;
	    gg.actgattr = hn->attr;
	    calltoolnode(gg.signaltab[gg.actx - 1].np, act_history);
	    i1++;
	    ht->val[i1 - 1] = na_rtosr(gg.actval);
	    hn = hn->next;
	  }
	  if (gg.showpage == (-2)  && gg.htlast != ((void *)0) ) {
	    historypointx(gg.htlast, &hx1);
	    historypointx(ht, &hx2);
	    hn = gg.hnbase;
	    while (hn != ((void *)0) ) {
	      historypointy(hn, gg.htlast, &hy1);
	      historypointy(hn, ht, &hy2);
	      if ((unsigned long)gg.acty <= 15) {
		m_color(gg.acty);
		m_drawline((long)hx1, (long)hy1, (long)hx2, (long)hy2);
	      }
	      hn = hn->next;
	    }
	  }
	  if (gg.htlast == ((void *)0) )
	    gg.htbase = ht;
	  else
	    gg.htlast->next = ht;
	  gg.htlast = ht;
	  htcount++;
	  histtime = gg.time;
	  if (histsweep != 0 ) {
	    i1 = histgattr[8  - 1].UU.U73.i1;
	    if (htcount >= i1 * 9 / 10) {
	      if (htcount == i1 * 9 / 10) {
		m_noclip();
		vmessage("Warning: scope memory is 90% full");
	      }
	      if (htcount == i1 * 19 / 20) {
		m_noclip();
		vmessage("Warning: scope memory is 95% full");
	      }
	    }
	  }
	}
      } else
	gg.simstate = simst_notready;
    } else
      gg.simstate = simst_notactive;
    if (gg.glowmode && gg.showpage > 0 && !gg.invisible) {
      flag = 0 ;
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0) ) {
	WITH1 = hw;
	if ((!WITH1->node->conflict1 || !WITH1->node->conflict2) &&
	    WITH1->node->changed && hw != gg.movinghw) {
	  hidecursor_hook();
	  m_color(glowcol(hw->node,
			  (long)gg.color.wire[hw->wcolr - 0 ]));
	  hline(WITH1->x1, WITH1->x2, WITH1->y);
	  flag = 1 ;
	}
	hw = WITH1->next;
      }
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0) ) {
	WITH2 = vw;
	if ((!WITH2->node->conflict1 || !WITH2->node->conflict2) &&
	    WITH2->node->changed && vw != gg.movingvw) {
	  hidecursor_hook();
	  m_color(glowcol(vw->node,
			  (long)gg.color.wire[vw->wcolr - 0 ]));
	  vline(WITH2->x, WITH2->y1, WITH2->y2);
	  flag = 1 ;
	}
	vw = WITH2->next;
      }
      if (glowsolder) {
	s = gg.sbase[gg.curpage - 1];
	while (s != ((void *)0) ) {
	  WITH3 = s;
	  n = WITH3->hwire->node;
	  if ((!n->conflict1 || !n->conflict2) && n->changed &&
	      WITH3->hwire != gg.movinghw && WITH3->vwire != gg.movingvw) {
	    hidecursor_hook();
	    drawsolderc(WITH3->x, WITH3->y,
			(int)glowcol(n, (long)gg.color.solder));
	    flag = 1 ;
	  }
	  s = WITH3->next;
	}
      }
      if (flag) {
	n = gg.nbase;
	while (n != ((void *)0) ) {
	  n->changed = 0 ;
	  n = n->next;
	}
	unhidecursor_hook();
      }
    }   
  } else
    gg.simstate = simst_off;
  hadconflicts = anyconflicts;
  anyconflicts = 0 ;
  n = nodeconflictbase;
  n1 = ((void *)0) ;
  while (n != ((void *)0) ) {
    n2 = n->confnext;
    if (n->conflict) {
      flag2 = (n->conflict1 && n->conflict2);
      if (gg.simstate == simst_running && !flag2 && n->oconflict) {
	n->conflict1 = !n->conflict1;
	if (!n->conflict1)
	  n->conflict2 = 1 ;
      }
      if (n->conflict1 && n->conflict2) {
	anyconflicts = 1 ;
	if ((gg.refrflag || !flag2 || !n->oconflict) && gg.showpage > 0)
	  drawnodec(n, gg.color.conflict);
      }
      n->oconflict = 1 ;
    } else {
      if (gg.showpage > 0)
	drawnode(n);
      if (n1 == ((void *)0) )
	nodeconflictbase = n2;
      else
	n1->confnext = n2;
      n->oconflict = 0 ;
      n->conflict1 = 0 ;
      n->conflict2 = 0 ;
      n = n1;
    }
    n1 = n;
    n = n2;
  }
  g = gateconflictbase;
  g1 = ((void *)0) ;
  while (g != ((void *)0) ) {
    g2 = g->confnext;
    if (g->conflict) {
      flag2 = (g->conflict1 && g->conflict2);
      if (gg.simstate == simst_running && !flag2 && g->oconflict) {
	g->conflict1 = !g->conflict1;
	if (!g->conflict1)
	  g->conflict2 = 1 ;
      }
      if (g->conflict2 && g->conflict2) {
	anyconflicts = 1 ;
	if ((gg.refrflag || !flag2 || !g->oconflict) && gg.showpage > 0)
	  drawgatexc(g, gg.color.conflict);
      }
      g->oconflict = 1 ;
    } else {
      if (gg.showpage > 0)
	drawgatex(g);
      if (g1 == ((void *)0) )
	gateconflictbase = g2;
      else
	g1->confnext = g2;
      g->oconflict = 0 ;
      g->conflict1 = 0 ;
      g->conflict2 = 0 ;
      g = g1;
    }
    g1 = g;
    g = g2;
  }
   
  if (gg.showpage > 0 && bottomcount == 0)
    refrbaseline(0 );
  gg.baselinecolor = gg.color.baseline;
  gg.resetflag = 0 ;
  histreset = 0 ;
  hnocount = hncount;
  if (gg.singlestepcount > 0 && gg.simstate == simst_running) {
    gg.singlestepcount--;
    if (gg.singlestepcount == 0) {
      gg.pwrflag = 0 ;
      if (steppingoff)
	vmessage("Simulation is OFF (single-step)");
      steppingoff = 0 ;
    }
  }
  if (conflictstop && anyconflicts && !hadconflicts) {
    gg.pwrflag = 0 ;
    vmessage("Simulation is OFF (conflict occurred)");
  }
  gg.refrflag = 0 ;
}





static  void  clearconflicts(tool)
log_tool *tool;
{
  log_grec *g;
  log_nrec *n;

  n = nodeconflictbase;
  while (n != ((void *)0) ) {
    if (n->simtype == tool)
      n->conflict = 0 ;
    n = n->confnext;
  }
  g = gateconflictbase;
  while (g != ((void *)0) ) {
    if (g->kind->simtype == tool)
      g->conflict = 0 ;
    g = g->confnext;
  }
}






static  short getsignal  (int d, char  *n)  ;





 
 
 
 
 

static  void  newhw(hw)
log_hwrec **hw;
{
  *hw = (log_hwrec *)((__MallocTemp__ = malloc(( sizeof(log_hwrec) ) ? ( sizeof(log_hwrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*hw)->next = gg.hwbase[gg.curpage - 1];
  gg.hwbase[gg.curpage - 1] = *hw;
  (*hw)->temp = (na_long)0;
}






 
 
 
 
 

static  void  disphw(hw)
log_hwrec **hw;
{
  log_hwrec *hw1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Dispose hwire %ld\n", (long)(*hw));
  if (*hw == ((void *)0) )
    return;
  hw1 = gg.hwbase[gg.curpage - 1];
  if (*hw == hw1)
    gg.hwbase[gg.curpage - 1] = (*hw)->next;
  else {
    while (hw1 != ((void *)0)  && hw1->next != *hw)
      hw1 = hw1->next;
    if (hw1 == ((void *)0) )
      report(10, "DISPHW" );
    else
      hw1->next = (*hw)->next;
  }
  chpageplace((int)gg.curpage, (*hw)->x1, (*hw)->y, (*hw)->x2, (*hw)->y);
  (free((Anyptr)( *hw )), ( *hw )= ((void *)0) ) ;
}





 
 
 
 
 

static  void  newvw(vw)
log_vwrec **vw;
{
  *vw = (log_vwrec *)((__MallocTemp__ = malloc(( sizeof(log_vwrec) ) ? ( sizeof(log_vwrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*vw)->next = gg.vwbase[gg.curpage - 1];
  gg.vwbase[gg.curpage - 1] = *vw;
  (*vw)->temp = (na_long)0;
}






 
 
 
 
 

static  void  dispvw(vw)
log_vwrec **vw;
{
  log_vwrec *vw1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Dispose vwire %ld\n", (long)(*vw));
  if (*vw == ((void *)0) )
    return;
  vw1 = gg.vwbase[gg.curpage - 1];
  if (*vw == vw1)
    gg.vwbase[gg.curpage - 1] = (*vw)->next;
  else {
    while (vw1 != ((void *)0)  && vw1->next != *vw)
      vw1 = vw1->next;
    if (vw1 == ((void *)0) )
      report(10, "DISPVW" );
    else
      vw1->next = (*vw)->next;
  }
  chpageplace((int)gg.curpage, (*vw)->x, (*vw)->y1, (*vw)->x, (*vw)->y2);
  (free((Anyptr)( *vw )), ( *vw )= ((void *)0) ) ;
}





 
 
 
 
 

static  void  newsolder(s)
log_srec **s;
{
  *s = (log_srec *)((__MallocTemp__ = malloc(( sizeof(log_srec) ) ? ( sizeof(log_srec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*s)->next = gg.sbase[gg.curpage - 1];
  gg.sbase[gg.curpage - 1] = *s;
  (*s)->hwire = ((void *)0) ;
  (*s)->hwire2 = ((void *)0) ;
  (*s)->vwire = ((void *)0) ;
  (*s)->vwire2 = ((void *)0) ;
  (*s)->temp = (na_long)0;
}






 
 
 
 
 

static  void  dispsolder(s)
log_srec **s;
{
  log_srec *s1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Dispose solder %ld\n", (long)(*s));
  if (*s == ((void *)0) )
    return;
  s1 = gg.sbase[gg.curpage - 1];
  if (*s == s1)
    gg.sbase[gg.curpage - 1] = (*s)->next;
  else {
    while (s1 != ((void *)0)  && s1->next != *s)
      s1 = s1->next;
    if (s1 == ((void *)0) )
      report(10, "DISPSOLDER" );
    else
      s1->next = (*s)->next;
  }
  chpageplace((int)gg.curpage, (*s)->x, (*s)->y, (*s)->x, (*s)->y);
  (free((Anyptr)( *s )), ( *s )= ((void *)0) ) ;
}





 
 
 
 
 

static  void  linkgate(g)
log_grec **g;
{
  (*g)->next = gg.gbase[gg.curpage - 1];
  gg.gbase[gg.curpage - 1] = *g;
  chpageplace((int)gg.curpage, (*g)->x - (*g)->kind->bbmax,
	      (*g)->y - (*g)->kind->bbmax, (*g)->x + (*g)->kind->bbmax,
	      (*g)->y + (*g)->kind->bbmax);
}





static  void  newattrs(gattr, numattrs, kattr)
log_gattrrec **gattr;
short numattrs;
log_kattrrec *kattr;
{
  short i;

 
  *gattr = (log_gattrrec *)((__MallocTemp__ = malloc(( numattrs * (sizeof(log_gattrrec) + ((sizeof(log_gattrrec)) & 1))  ) ? ( numattrs * (sizeof(log_gattrrec) + ((sizeof(log_gattrrec)) & 1))  ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  for (i = 0; i < numattrs; i++) {
    switch (kattr[i].dtype) {

    case 'R':
    case 'U':
    case 'F':
      (*gattr)[i].UU.r = kattr[i].UU.U82.r;
      break;

    case 'I':
    case 'H':
      (*gattr)[i].UU.U73.i1 = kattr[i].UU.U73.i1;
      break;

    case 'C':
      (*gattr)[i].UU.c = (char  *)((__MallocTemp__ = malloc(( kattr[i].prec + 1L ) ? ( kattr[i].prec + 1L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      strcpy((*gattr)[i].UU.c, kattr[i].UU.c);
      break;

    case 'A':
      (*gattr)[i].UU.sp = my_strdup (kattr[i].UU.sp);
      break;

    case 'B':
      (*gattr)[i].UU.b = kattr[i].UU.b;
      break;

    case 'V':
      (*gattr)[i].UU.nv = kattr[i].UU.U86.dv;
      break;
    }
    (*gattr)[i].blnk = kattr[i].blnk;
    (*gattr)[i].changed = 0 ;
  }
}



static  void  disposeattrs(gattr, numattrs, kattr)
log_gattrrec **gattr;
short numattrs;
log_kattrrec *kattr;
{
  short i;

  for (i = 0; i < numattrs; i++) {
    switch (kattr[i].dtype) {

    case 'C':
      (free((Anyptr)( (*gattr)[i].UU.c )), ( (*gattr)[i].UU.c )= ((void *)0) ) ;
      break;

    case 'A':
      strdispose(&(*gattr)[i].UU.sp);
      break;
    }
  }
  (free((Anyptr)( *gattr )), ( *gattr )= ((void *)0) ) ;
}



static  void  copyattrs(gattr, oldattr, numattrs, kattr)
log_gattrrec **gattr, *oldattr;
short numattrs;
log_kattrrec *kattr;
{
  short i;

 
  *gattr = (log_gattrrec *)((__MallocTemp__ = malloc(( numattrs * (sizeof(log_gattrrec) + ((sizeof(log_gattrrec)) & 1))  ) ? ( numattrs * (sizeof(log_gattrrec) + ((sizeof(log_gattrrec)) & 1))  ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  for (i = 0; i < numattrs; i++) {
    (*gattr)[i] = oldattr[i];
    switch (kattr[i].dtype) {

    case 'C':
      (*gattr)[i].UU.c = (char  *)((__MallocTemp__ = malloc(( kattr[i].prec + 1L ) ? ( kattr[i].prec + 1L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      strcpy((*gattr)[i].UU.c, oldattr[i].UU.c);
      break;

    case 'A':
      (*gattr)[i].UU.sp = my_strdup (oldattr[i].UU.sp);
      break;
    }
  }
}





 
 
 
 
 

static  void  newgptr(g)
log_grec **g;
{
  if (freegate == ((void *)0) )
    *g = (log_grec *)((__MallocTemp__ = malloc(( sizeof(log_grec) ) ? ( sizeof(log_grec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  else {
    *g = freegate;
    freegate = freegate->next;
  }
}


static  void  newgate2(g, gt, sig, attrs)
log_grec **g;
short gt, sig;
log_gattrrec *attrs;
{
  short i;
  char  name[256];

  newgptr(g);
  (*g)->g = gt;
  (*g)->rot = gt / 256 ;
  (*g)->kind = kind[(gt & (256  - 1)) - 1];
  (*g)->vars = (na_long)0;
  (*g)->conflict = 0 ;
  (*g)->conflict1 = 0 ;
  (*g)->conflict2 = 0 ;
  (*g)->oconflict = 0 ;
  (*g)->dimcolor = 0 ;
  (*g)->pin = (log_nrec **)((__MallocTemp__ = malloc(( (*g)->kind->numpins * sizeof(log_nrec *) ) ? ( (*g)->kind->numpins * sizeof(log_nrec *) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*g)->pinpos = (log_pinposrec *)
		 ((__MallocTemp__ = malloc(( (*g)->kind->numpins * sizeof(log_pinposrec) ) ? ( (*g)->kind->numpins * sizeof(log_pinposrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  if (attrs != ((void *)0) )
    copyattrs(&(*g)->attr, attrs, (*g)->kind->numattrs, (*g)->kind->attr);
  else
    newattrs(&(*g)->attr, (*g)->kind->numattrs, (*g)->kind->attr);
  if (sig != 0)
    (*g)->sig = sig;
  else if ((*g)->kind->simtype == simtype_common) {
    *name = '\0';
    i = 1;
    while ((*g)->kind->proc[i - 1] != '\0') {
      sprintf(name + strlen(name), "%c", (*g)->kind->proc[i - 1]);
      i++;
    }
    (*g)->sig = getsignal(0, name);
  } else
    (*g)->sig = 0;
  (*g)->info = (na_long)0;
  (*g)->temp = (na_long)0;
  gg.actflag = (attrs != ((void *)0) );
  calltoolgate(*g, act_newgate);
}



static  void  newgate(g, gt)
log_grec **g;
short gt;
{
  newgate2(g, gt, 0, ((void *)0) );
}





 
 
 
 
 

static  void  copygate(old, g)
log_grec *old, **g;
{
  long i, FORLIM;

  newgptr(g);
  **g = *old;
  if ((*g)->conflict || (*g)->oconflict) {
    (*g)->confnext = gateconflictbase;
    gateconflictbase = *g;
  }
  (*g)->pin = (log_nrec **)((__MallocTemp__ = malloc(( (*g)->kind->numpins * sizeof(log_nrec *) ) ? ( (*g)->kind->numpins * sizeof(log_nrec *) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = (*g)->kind->numpins;
  for (i = 0; i < FORLIM; i++)
    (*g)->pin[i] = old->pin[i];
  (*g)->pinpos = (log_pinposrec *)
		 ((__MallocTemp__ = malloc(( (*g)->kind->numpins * sizeof(log_pinposrec) ) ? ( (*g)->kind->numpins * sizeof(log_pinposrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = (*g)->kind->numpins;
  for (i = 0; i < FORLIM; i++)
    (*g)->pinpos[i] = old->pinpos[i];
  copyattrs(&(*g)->attr, old->attr, (*g)->kind->numattrs, (*g)->kind->attr);
  (*g)->info = (na_long)0;
  gg.actgate2 = old;
  calltoolgate(*g, act_copygate);
}





 
 
 
 
 

static  void  unlkgate(g)
log_grec **g;
{
  log_grec *g1;

  g1 = gg.gbase[gg.curpage - 1];
  while (g1 != ((void *)0)  && g1->next != *g)
    g1 = g1->next;
  if (g1 == ((void *)0) )
    gg.gbase[gg.curpage - 1] = (*g)->next;
  else
    g1->next = (*g)->next;
  chpageplace((int)gg.curpage, (*g)->x - (*g)->kind->bbmax,
	      (*g)->y - (*g)->kind->bbmax, (*g)->x + (*g)->kind->bbmax,
	      (*g)->y + (*g)->kind->bbmax);
}



 
 
 
 
 

static  void  disposegptr(g)
log_grec **g;
{
  (*g)->next = freegate;
  freegate = *g;
}





static  void  disposegate(g)
log_grec **g;
{
  log_grec *g1, *g2;

  if ((*g)->conflict || (*g)->oconflict) {
    g1 = gateconflictbase;
    g2 = ((void *)0) ;
    while (g1 != ((void *)0)  && g1 != *g) {
      g2 = g1;
      g1 = g1->confnext;
    }
    if (g1 == ((void *)0) )
      report(10, "DISPOSEGATE" );
    else if (g2 == ((void *)0) )
      gateconflictbase = (*g)->confnext;
    else
      g2->confnext = (*g)->confnext;
  }
  if (*g == gg.probegate)
    gg.probegate = ((void *)0) ;
  calltoolgate(*g, act_disposegate);
  disposeattrs(&(*g)->attr, (*g)->kind->numattrs, (*g)->kind->attr);
  (free((Anyptr)( (*g)->pin )), ( (*g)->pin )= ((void *)0) ) ;
  (free((Anyptr)( (*g)->pinpos )), ( (*g)->pinpos )= ((void *)0) ) ;
  disposegptr(g);
}





 
 
 
 
 

static  void  linklabel(l)
log_lrec *l;
{
  l->next = gg.lbase[gg.curpage - 1];
  gg.lbase[gg.curpage - 1] = l;
  stamp(&gg.labelstamp);
}


static  void  newlabel(l)
log_lrec **l;
{
  *l = (log_lrec *)((__MallocTemp__ = malloc(( sizeof(log_lrec) ) ? ( sizeof(log_lrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*l)->temp = (na_long)0;
  linklabel(*l);
}



 
 
 
 
 

static  void  unlinklabel(l)
log_lrec *l;
{
  log_lrec *l1;

  l1 = gg.lbase[gg.curpage - 1];
  while (l1 != ((void *)0)  && l1->next != l)
    l1 = l1->next;
  if (l1 == ((void *)0) )
    gg.lbase[gg.curpage - 1] = l->next;
  else
    l1->next = l->next;
  chpageplace((int)gg.curpage, l->x, l->y, l->x + l->w, l->y + 2);
  stamp(&gg.labelstamp);
}


static  void  displabel(l)
log_lrec **l;
{
  unlinklabel(*l);
  (free((Anyptr)( *l )), ( *l )= ((void *)0) ) ;
}



 
 
 
 
 

static  void  linkbox(b)
log_brec *b;
{
  b->next = gg.bbase[gg.curpage - 1];
  gg.bbase[gg.curpage - 1] = b;
  stamp(&gg.boxstamp);
}


static  void  newbox(b)
log_brec **b;
{
  *b = (log_brec *)((__MallocTemp__ = malloc(( sizeof(log_brec) ) ? ( sizeof(log_brec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*b)->temp = (na_long)0;
  linkbox(*b);
}



 
 
 
 
 

static  void  unlinkbox(b)
log_brec *b;
{
  log_brec *b1;

  b1 = gg.bbase[gg.curpage - 1];
  while (b1 != ((void *)0)  && b1->next != b)
    b1 = b1->next;
  if (b1 == ((void *)0) )
    gg.bbase[gg.curpage - 1] = b->next;
  else
    b1->next = b->next;
  chpageplace((int)gg.curpage, b->x1, b->y1, b->x2, b->y2);
  stamp(&gg.boxstamp);
}


static  void  dispbox(b)
log_brec **b;
{
  unlinkbox(*b);
  (free((Anyptr)( *b )), ( *b )= ((void *)0) ) ;
}







static  void  defsimulator(act)
log_action *act;
{
  switch (act->action) {

  case act_init:
    act->acttool->simulator = 1 ;
    act->acttool->ready = 1 ;
    break;
  }
}




static  log_tool *findsimtype(st)
uchar st;
{
  char  simname[17];
  log_tool *stp;
  boolean rdy;

  sprintf(simname, "%d", st);
  stp = findtool(simname);
  if (gg.traceflag)
    nc_fprintf (tracefile, "Findsimtype of %d gets %ld\n", st, (long)stp);
  if (!stp->ready || !stp->simulator) {
    rdy = stp->ready;
    if (rdy)
      calltool(stp, act_exit);
    stp->proc = defsimulator;
    gg.action = act_init;
    gg.acttool = stp;
    defsimulator(&gg);
    stp->nexttstep = 0.0;
    stp->nnumattrs = 0;
    stp->nattr = ((void *)0) ;
    stp->hnumattrs = 0;
    stp->hattr = ((void *)0) ;
    beginerror();
    if (rdy)
      nc_printf ("Tool %d is not a simulator!\n", st);
    else
      nc_printf ("No program loaded for gate-simulation type %d\n", st);
    enderror();
  }
  stp->keep = 1 ;
  stp->simtype = st;
  if (!strcmp(stp->shortname, simname))
    sprintf(stp->shortname, "Type %s", simname);
  return stp;
}




 
 
 
 
 

static  void  newnptr(n)
log_nrec **n;
{
  if (freenode == ((void *)0) )
    *n = (log_nrec *)((__MallocTemp__ = malloc(( sizeof(log_nrec) ) ? ( sizeof(log_nrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  else {
    *n = freenode;
    freenode = freenode->next;
  }
}


static  void  newnode(n, st)
log_nrec **n;
uchar st;
{
  newnptr(n);
  (*n)->simtype = findsimtype(st);
  (*n)->changed = 0 ;
  (*n)->conflict = 0 ;
  (*n)->conflict1 = 0 ;
  (*n)->conflict2 = 0 ;
  (*n)->oconflict = 0 ;
  (*n)->flag = 0 ;
  (*n)->keep = 0 ;
  (*n)->ref = 0;
  newattrs(&(*n)->attr, (*n)->simtype->nnumattrs, (*n)->simtype->nattr);
  (*n)->info = (na_long)0;
  (*n)->temp = (na_long)0;
  stamp(&(*n)->simtype->netstamp);
  calltoolnode(*n, act_newnode);
  (*n)->next = gg.nbase;
  gg.nbase = *n;
  if (gg.traceflag)
    nc_fprintf (tracefile, "Make node %ld\n", (long)(*n));
}





static  void  dumpconflicts()
{
   
  log_grec *g;
  log_nrec *n;

  n = nodeconflictbase;
  g = gateconflictbase;
  nc_printf ("\f");
  if (n != ((void *)0)  || g != ((void *)0) ) {
    nc_printf ("Conflicts:\n");
    while (n != ((void *)0) ) {
      nc_printf ("   Conflict node %ld  c=%c  delay=%d  oc=%c\n",
	     (long)n, n->conflict ? 'T' : 'F',
	     3 - n->conflict - n->conflict2 * 2, n->oconflict ? 'T' : 'F');
      n = n->confnext;
    }
    while (g != ((void *)0) ) {
      nc_printf ("   Conflict gate %ld  c=%c  delay=%d  oc=%c\n",
	     (long)g, g->conflict ? 'T' : 'F',
	     3 - g->conflict - g->conflict2 * 2, g->oconflict ? 'T' : 'F');
      g = g->confnext;
    }
  } else
    nc_printf ("No conflicts registered.\n");
  m_alpha_on();
}




 
 
 
 
 

static  void  copynode(old, n)
log_nrec *old, **n;
{
  newnptr(n);
  **n = *old;
  (*n)->ref = 0;
  copyattrs(&(*n)->attr, old->attr, (*n)->simtype->nnumattrs,
	    (*n)->simtype->nattr);
  gg.actnode2 = old;
  calltoolnode(*n, act_copynode);
  (*n)->next = gg.nbase;
  gg.nbase = *n;
  if ((*n)->conflict || (*n)->oconflict) {
    (*n)->confnext = nodeconflictbase;
    nodeconflictbase = *n;
  }
  if (gg.traceflag)
    nc_fprintf (tracefile, "Copy node %ld from %ld\n", (long)(*n), (long)old);
}



 
 
 
 
 

static  void  disposenptr(n)
log_nrec **n;
{
  (*n)->next = freenode;
  freenode = *n;
}





static  void  disposenode(n)
log_nrec **n;
{
  log_nrec *n1, *n2;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Dispose node %ld\n", (long)(*n));
  if (*n == ((void *)0) )
    return;
  if ((*n)->conflict || (*n)->oconflict) {
    n1 = nodeconflictbase;
    n2 = ((void *)0) ;
    while (n1 != ((void *)0)  && n1 != *n) {
      n2 = n1;
      n1 = n1->confnext;
    }
    if (n1 == ((void *)0) )
      report(11, "DISPNODE" );
    else if (n2 == ((void *)0) )
      nodeconflictbase = (*n)->confnext;
    else
      n2->confnext = (*n)->confnext;
  }
  if (*n == gg.probenode)
    gg.probenode = ((void *)0) ;
  stamp(&(*n)->simtype->netstamp);
  calltoolnode(*n, act_disposenode);
  n1 = gg.nbase;
  if (*n == n1)
    gg.nbase = (*n)->next;
  else {
    while (n1 != ((void *)0)  && n1->next != *n)
      n1 = n1->next;
    if (n1 == ((void *)0) )
      report(10, "DISPNODE" );
    else
      n1->next = (*n)->next;
  }
  disposeattrs(&(*n)->attr, (*n)->simtype->nnumattrs, (*n)->simtype->nattr);
  disposenptr(n);
}






static  boolean nodeexists(n)
log_nrec *n;
{
  log_nrec *n1;

  n1 = gg.nbase;
  while (n1 != ((void *)0)  && n1 != n)
    n1 = n1->next;
  return (n1 != ((void *)0) );
}



static  void  newnoderef(n, st, ref)
log_nrec **n;
uchar st;
long ref;
{
  newnode(n, st);
  (*n)->ref = ref;
}



static  log_nrec *refnode(n)
log_nrec *n;
{
  if (n == ((void *)0) )
    return n;
  n->ref++;
  if (gg.traceflag)
    nc_fprintf (tracefile, "Reference node %ld -> %d\n", (long)n, n->ref);
  return n;
}






static  void  unrefnode(n)
log_nrec **n;
{
  if (*n == ((void *)0) )
    return;
  (*n)->ref--;
  if (gg.traceflag)
    nc_fprintf (tracefile, "Unref node %ld -> %d\n", (long)(*n), (*n)->ref);
  if ((*n)->ref > 0)
    return;
  if ((*n)->ref < 0)
    report(10, "UNREFNODE" );
  else {
    if (!(*n)->keep)
      disposenode(n);
  }
}





static  void  switchnode(n, n2)
log_nrec **n, *n2;
{
  if (*n != n2) {
    unrefnode(n);
    *n = refnode(n2);
  }
}





 
 
 
 
 
 

static  void  garbagecoll()
{
  log_nrec *n, *n1;
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  short i, pg, FORLIM, FORLIM1;

  working();
  n = gg.nbase;
  while (n != ((void *)0) ) {
    n->ref = 0;
    n = n->next;
  }
  FORLIM = gg.numpages;
  for (pg = 0; pg < FORLIM; pg++) {
    hw = gg.hwbase[pg];
    while (hw != ((void *)0) ) {
      hw->node->ref++;
      hw = hw->next;
    }
    vw = gg.vwbase[pg];
    while (vw != ((void *)0) ) {
      vw->node->ref++;
      vw = vw->next;
    }
    g = gg.gbase[pg];
    while (g != ((void *)0) ) {
      FORLIM1 = g->kind->numpins;
      for (i = 0; i < FORLIM1; i++)
	g->pin[i]->ref++;
      g = g->next;
    }
  }
  FORLIM = gg.lastsignal;
  for (i = 0; i < FORLIM; i++) {
    if (gg.signaltab[i].np != ((void *)0) )
      gg.signaltab[i].np->ref++;
  }
  callsimtools(act_refnodes);
  working();
  n = gg.nbase;
  while (n != ((void *)0) ) {
    n1 = n->next;
    if (n->ref == 0 && !n->keep)
      disposenode(&n);
    n = n1;
  }
}







 
 
 
 
 
 
 
 

static  short getsignal(d, n_)
short d;
char  *n_;
{
  char  n[256];
  short i, j, pg;
  log_nrec *n1;
  log_hnrec *hn;
  log_grec *g;
  char  STR1[256], STR2[256];
  short FORLIM;
  log_sigrec *WITH;

  strcpy(n, n_);
  strcpy(STR1, strltrim(strrtrim(strcpy(STR2, n))));
  strcpy(n, STR1);
  if (*n == '\0')
    i = d;
  else {
    i = 1;
    while (i <= gg.lastsignal &&
	   (gg.signaltab[i - 1].name == ((void *)0)  ||
	    strcmp(gg.signaltab[i - 1].name, n)))
      i++;
    if (i > gg.lastsignal) {
      stamp(&gg.sigstamp);
      i = 1;
      while (i <= gg.maxsignal && gg.signaltab[i - 1].name != ((void *)0) )
	i++;
      if (i > gg.maxsignal) {
	FORLIM = gg.maxsignal;
	for (i = 0; i < FORLIM; i++)
	  gg.signaltab[i].f = gg.signaltab[i].keep;
	FORLIM = gg.numpages;
	for (pg = 0; pg < FORLIM; pg++) {
	  g = gg.gbase[pg];
	  while (g != ((void *)0) ) {
	    if (g->sig != 0)
	      gg.signaltab[g->sig - 1].f = 1 ;
	    g = g->next;
	  }
	}
	if (histtrig != 0)
	  gg.signaltab[histtrig - 1].f = 1 ;
	hn = gg.hnbase;
	while (hn != ((void *)0) ) {
	  gg.signaltab[hn->sig - 1].f = 1 ;
	  hn = hn->next;
	}
	FORLIM = kindgroupsize;
	for (i = 0; i < FORLIM; i++) {
	  if (kindsig[i] != 0)
	    gg.signaltab[kindsig[i] - 1].f = 1 ;
	}
	j = -1;
	gg.lastsignal = 0;
	FORLIM = gg.maxsignal;
	for (i = 1; i <= FORLIM; i++) {
	  if (!gg.signaltab[i - 1].f) {
	    if (j == -1)
	      j = i;
	    WITH = &gg.signaltab[i - 1];
	    if (WITH->name != ((void *)0) )
	      strdispose(&WITH->name);
	    n1 = gg.signaltab[i - 1].np;
	    if (!nodeexists(n1))
	      report(10, "GETSIGNAL" );
	    unrefnode(&gg.signaltab[i - 1].np);
	    if (nodeexists(n1))
	      report(11, "GETSIGNAL" );
	    gg.signaltab[i - 1].np = ((void *)0) ;
	  } else
	    gg.lastsignal = i;
	}
	if (j < 0) {
	  beginerror();
	  nc_printf ("Only %d distinct signal names are allowed!\n", gg.maxsignal);
	  enderror();
	  j = 0;
	}
	i = j;
      }
      if (i != 0) {
	WITH = &gg.signaltab[i - 1];
	WITH->name = my_strdup (n);
	WITH->keep = 0 ;
	newnoderef(&WITH->np, 0, 1L);
	WITH->temp = (na_long)0;
      }
    }
  }
  if (i > gg.lastsignal)
    gg.lastsignal = i;
  return i;
}





static  void  getsigname(name, sig)
char  *name;
log_sigrec **sig;
{
  short i;

  i = getsignal(0, name);
  if (i != 0) {
    *sig = &gg.signaltab[i - 1];
    (*sig)->keep = 1 ;
  } else
    *sig = ((void *)0) ;
}





 
 
 
 
 

static  void  setscale(s)
short s;
{
  zoom = s;
  gg.scale = zoomscales[s + 3];
  gg.hscale = gg.scale / 2;
}




 
 
 
 
 

static  void  newpage(p)
short p;
{
  short i;

  garbagecoll();
  for (i = gg.numpages; i < p; i++) {
    xoffp[i] = (16384  + across / 2) * gg.scale / 5  - across / 2;
    yoffp[i] = (16384  + baseline / 2) * gg.scale / 5  - baseline / 2;
    gatecount[i] = 0;
    gg.gbase[i] = ((void *)0) ;
    gg.sbase[i] = ((void *)0) ;
    gg.hwbase[i] = ((void *)0) ;
    gg.vwbase[i] = ((void *)0) ;
    gg.lbase[i] = ((void *)0) ;
    gg.bbase[i] = ((void *)0) ;
    gg.pagechanged[i] = 0 ;
    stamp(&gg.pagestamp[i]);
    gg.pageregions[i] = ((void *)0) ;
    curfilename[i] = ((void *)0) ;
    vlsimode[i] = vlsi;
  }
  if (p != gg.curpage) {
    xoffp[gg.curpage - 1] = gg.xoff;
    yoffp[gg.curpage - 1] = gg.yoff;
    gg.xoff = xoffp[p - 1];
    gg.yoff = yoffp[p - 1];
    vlsi = vlsimode[p - 1];
    curwcolor = 0 ;
    gg.numpages = P_imax2((long)p, gg.numpages);
    gg.curpage = p;
    realcurpage = p;
  }
  while (gg.numpages > gg.curpage && pagenull((int)gg.numpages))
    gg.numpages--;
}




static  void  setupregion(r, pagenum)
log_regrec **r;
short pagenum;
{
  log_regrec *r2;

  if (pagenum < 1 || pagenum > gg.numpages) {
    if (*r != ((void *)0) ) {
      if (*r == gg.pageregions[(*r)->pagenum - 1])
	gg.pageregions[(*r)->pagenum - 1] = (*r)->next;
      else {
	r2 = gg.pageregions[(*r)->pagenum - 1];
	while (r2 != ((void *)0)  && r2->next != *r)
	  r2 = r2->next;
	if (r2 != ((void *)0) )
	  r2->next = (*r)->next;
      }
      (free((Anyptr)( *r )), ( *r )= ((void *)0) ) ;
    }
    while (gg.numpages > gg.curpage && pagenull((int)gg.numpages))
      gg.numpages--;
    return;
  }
  *r = (log_regrec *)((__MallocTemp__ = malloc(( sizeof(log_regrec) ) ? ( sizeof(log_regrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*r)->pagenum = pagenum;
  (*r)->x1 = -32768L;
  (*r)->y1 = -32768L;
  (*r)->x2 = 32767;
  (*r)->y2 = 32767;
  stamp(&(*r)->regstamp);
  (*r)->info = (na_long)0;
  (*r)->next = gg.pageregions[pagenum - 1];
  gg.pageregions[pagenum - 1] = *r;
}





 
 
 
 
 
 

static  char  *colorname(Result, c)
char  *Result;
short c;
{
  if (c == 0 )
    return strcpy(Result, "U");
  else if (c == 1 )
    return strcpy(Result, "G");
  else if (c == 3 )
    return strcpy(Result, "R");
  else if (c == 4 )
    return strcpy(Result, "B");
  else if (c == 2 )
    return strcpy(Result, "Y");
  else {
    sprintf(Result, "%02d", c);
    return Result;
  }
}



 
 
 
 
 
 

static  void  dumpnodes()
{
  log_nrec *n, *n1;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_grec *g;
  short i, j;
  timerec timevar;
  daterec datevar;
  boolean savebool;
  char  STR3[9];
  short FORLIM;
  log_krec *WITH;

  savebool = gg.traceflag;
  gg.traceflag = 1 ;
  tracemessage("");
  gg.traceflag = savebool;
  sysdate(&datevar);
  systime(&timevar);
  nc_fprintf (tracefile,
	  "--------------------------------------------------------  ");
  nc_fprintf (tracefile, "%2d/%2d/%2d", datevar.month, datevar.day, datevar.year);
  nc_fprintf (tracefile, "  %2d:%2d\n\n", timevar.hour, timevar.minute);
  n = gg.nbase;
  nc_fprintf (tracefile, "NODES\n");
  i = 0;
  j = 0;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    while (j == i && n != ((void *)0) ) {
      i++;
      nc_fprintf (tracefile, "%12ld  T:%s  Ref:%d",
	      (long)n, n->simtype->name, n->ref);
      FORLIM = gg.lastsignal;
      for (j = 0; j < FORLIM; j++) {
	if (gg.signaltab[j].np == n)
	  nc_fprintf (tracefile, "   %s", gg.signaltab[j].name);
      }
      nc_putc ('\n', tracefile);
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	gg.actfile = gg.tracefile;
	gg.actflag = 1 ;
	calltoolnode(n, act_writenode);
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  goto _Ltry6;
	nc_fprintf (tracefile, "  (Failed to output node value)   %d\n",
		P_escapecode);
      } } while (0) ;
      n1 = gg.nbase;
      j = 1;
      while (j < i && n1 != n) {
	j++;
	n1 = n1->next;
      }
      if (j < i)
	nc_fprintf (tracefile, "Infinite loop in node list\n");
      n = n->next;
    }
  __top_jb = __try_jb.next; } else { if (0) {  _Ltry6 : __top_jb = __try_jb.next; } ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_fprintf (tracefile, "  Internal error, %d\n", P_escapecode);
  } } while (0) ;
  nc_putc ('\n', tracefile);
  hw = gg.hwbase[gg.curpage - 1];
  nc_fprintf (tracefile, "HWIRES\n");
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    while (hw != ((void *)0) ) {
      nc_fprintf (tracefile, "%12ld  X1:%4d X2:%4d  Y:%4d  N:%ld  C:%s\n",
	      (long)hw, hw->x1, hw->x2, hw->y, (long)hw->node,
	      colorname(STR3, hw->wcolr));
      hw = hw->next;
    }
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_fprintf (tracefile, "  Internal error, %d\n", P_escapecode);
  } } while (0) ;
  nc_putc ('\n', tracefile);
  vw = gg.vwbase[gg.curpage - 1];
  nc_fprintf (tracefile, "VWIRES\n");
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    while (vw != ((void *)0) ) {
      nc_fprintf (tracefile, "%12ld   X:%4d Y1:%4d Y2:%4d  N:%ld  C:%s\n",
	      (long)vw, vw->x, vw->y1, vw->y2, (long)vw->node,
	      colorname(STR3, vw->wcolr));
      vw = vw->next;
    }
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_fprintf (tracefile, "  Internal error, %d\n", P_escapecode);
  } } while (0) ;
  nc_putc ('\n', tracefile);
  s = gg.sbase[gg.curpage - 1];
  nc_fprintf (tracefile, "SOLDER\n");
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    while (s != ((void *)0) ) {
      nc_fprintf (tracefile, "%12ld   X:%4d  Y:%4d    HW: %ld,%ld",
	      (long)s, s->x, s->y, (long)s->hwire, (long)s->hwire2);
      if (s->hwire == ((void *)0) )
	nc_fprintf (tracefile, "      ");
      nc_fprintf (tracefile, "    VW: %ld,%ld\n", (long)s->vwire, (long)s->vwire2);
      s = s->next;
    }
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_fprintf (tracefile, "  Internal error, %d\n", P_escapecode);
  } } while (0) ;
  nc_putc ('\n', tracefile);
  g = gg.gbase[gg.curpage - 1];
  nc_fprintf (tracefile, "GATES\n");
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    while (g != ((void *)0) ) {
      nc_fprintf (tracefile, "%12ld  G:%3d    X:%4d  Y:%4d  T:%s        %s\n",
	      (long)g, g->g, g->x, g->y, g->kind->simtype->name,
	      g->kind->name);
      WITH = g->kind;
      FORLIM = WITH->numpins;
      for (i = 0; i < FORLIM; i++) {
	nc_fprintf (tracefile, "              Pin %2d   X:%4d  Y:%4d  N:%ld",
		i + 1, g->pinpos[i].x, g->pinpos[i].y, (long)g->pin[i]);
	do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	  nc_fprintf (tracefile, " [%d]", g->pin[i]->ref);
	__top_jb = __try_jb.next; } else { ;
	  if (P_escapecode == -20)
	    goto _Ltry11;
	} } while (0) ;
	nc_putc ('\n', tracefile);
      }
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	gg.actfile = gg.tracefile;
	gg.actflag = 1 ;
	calltoolgate(g, act_writegate);
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  goto _Ltry11;
	nc_fprintf (tracefile, "  (Failed to output gate value)   %d\n",
		P_escapecode);
      } } while (0) ;
      g = g->next;
    }
  __top_jb = __try_jb.next; } else { if (0) {  _Ltry11 : __top_jb = __try_jb.next; } ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_fprintf (tracefile, "  Internal error, %d\n", P_escapecode);
  } } while (0) ;
  nc_fprintf (tracefile,
    "\n\n-------------------------------------------------------------------------\n\n\n");
}






 
 
 
 
 

static  void  gethelp(s)
char  *s;
{  
   char  cmdline[256];
   char *pager;
  



   vmessage("Read the log.doc file!");


   pager = getenv("PAGER");
   if (!pager)
     pager = "more";

# 7076 "log.c"

 
    sprintf(cmdline, "edit %s/log.doc & \n", 
	    GetChipmunkPath("LOGLIB", log ));
 
  
  


 
}


 
 
 
 
 
 

static  void  readlnpass(s, mode)
char  *s;
short mode;
{
  uchar ch;
  short i, xleft, oxleft;
  long x, y;
  boolean redraw, starting;
  char  STR1[256];

  m_alpha_on();
  if (mode != 3)    
    *s = '\0';
   
  nc_getXY( &x ,  &y ) ;    
  oxleft = 1;
  xleft = 1;
  i = 1;
  starting = 1 ;
  redraw = 1 ;
  do {
    xleft = P_imax2(1L, x + i - txacross + 1);
    if (redraw || xleft != oxleft) {
      hidecursor();
      nc_gotoXY( (int)x ,  (int)y ) ;
      nc_printf ("%s\t", strsub(STR1, s, xleft, (int)(txacross - x)));
      hidecursor();
      oxleft = xleft;
      redraw = 0 ;
    }
    nc_gotoXY( (int)(x + i - xleft) ,  (int)y ) ;
    nc_cursor_on();
    if (!pollkbd2()) {
      do {
	pass();
	pen();
      } while (!(pollkbd2() || gg.t.dn));
    }
    nc_cursor_off();
    if (gg.t.dn)
      ch = '\015';
    else
      ch = inkey2();
    if (ch == '\b' && i > 1)
      i--;
    else if (ch == '\034' && i <= strlen(s))
      i++;
    else if (ch == '\007' && i > 1) {
      i--;
      strcpy(s + i - 1, s + i);
      redraw = 1 ;
    } else if (ch == '\177') {
      *s = '\0';
      i = 1;
      redraw = 1 ;
    } else if (ch >= ' ' && ch != 250 && ch != 251 && strlen(s) < 255) {
 
 
 
      if (starting)
	*s = '\0';
      sprintf(STR1, "%c%s", ch, s + i - 1);
      strcpy(s + i - 1, STR1);
      i++;
      redraw = 1 ;
    }
    if ((unsigned)mode < 32 && ((1L << mode) & 0xc) != 0 && ch < 32 &&
	((1L << ch) & 0x80000400L) != 0) {
      ungetkey2(ch);
      ch = '\015';
    }
    starting = 0 ;
  } while (ch >= 32 || ((1L << ch) & 0x2008) == 0);
  remcursor();
  sprintf(STR1, "%c", ch);
  if (!strcmp(STR1, "\003" )) {
    *s = '\0';
    nc_gotoXY( (int)x ,  (int)y ) ;
    nc_putchar ('\t');
  }
  if (gg.t.dn) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
}






static  void  dofunction (void) ;


static  void  assertfunc  (char  *name)  ;



static  void  clearfunc()
{
  if (doingcnffunction)
    *gg.func = '\0';
  else
    assertfunc("");
}



static  void  refrfunc()
{
  if (gg.initdone && !doingcnffunction)
    assertfunc("REFR");
  else
    clearfunc();
}



static  void  zoomto(z)
short z;
{
  short s0, i, FORLIM;

  if (-3 > z || z > 3 || z == zoom) {
    clearfunc();
    return;
  }
  s0 = gg.scale;
  setscale(z);
  xoff0 += (gg.xoff + across / 2) * gg.scale / s0 - across / 2 - gg.xoff;
  yoff0 += (gg.yoff + baseline / 2) * gg.scale / s0 - baseline / 2 - gg.yoff;
  FORLIM = gg.numpages;
  for (i = 0; i < FORLIM; i++) {
    xoffp[i] = (xoffp[i] + across / 2) * gg.scale / s0 - across / 2;
    yoffp[i] = (yoffp[i] + baseline / 2) * gg.scale / s0 - baseline / 2;
  }
  refrfunc();
}



static  void  scroll()
{
  char  ch, TEMP;

  if (strcmp(gg.func, "REFR"))
    return;
  remcursor();
  gg.xoff += xoff0;
  gg.yoff += yoff0;
  refrscreen1();
  xoff0 = 0;
  yoff0 = 0;
  TEMP = m_testkey() ;
  if ((uchar)TEMP < 32 && ((1L << TEMP) & 0x90000500L) != 0)
    ch = inkey2();
  restorecursor();
  gg.startpoint = 0 ;
  clearfunc();
}




static  void  doimmedcnffunction()
{
  char  STR1[256], STR2[256];

  if (*gg.func == '\0')
    return;
  if (!strcmp(gg.func, "SNAP")) {
    getbool(gg.funcarg, &snapflag);
    vmessageflag("Snap-to-grid is ", snapflag);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "GLOW")) {
    getbool(gg.funcarg, &gg.glowmode);
    refrfunc();
    vmessageflag("Glow mode is ", gg.glowmode);
    return;
  }
  if (!strcmp(gg.func, "AUTOWINDOW")) {
    getbool(gg.funcarg, &m_autoraise);
    refrfunc();
    vmessageflag("AUTOWINDOW mode is ", m_autoraise);
    return;
  }
  if (!strcmp(gg.func, "GLOWSOLDER")) {
    getbool(gg.funcarg, &glowsolder);
    refrfunc();
    vmessageflag("Glowing solder mode is ", glowsolder);
    return;
  }
  if (!strcmp(gg.func, "PROBE")) {
    if (gg.initdone)
      remcursor();
    getbool(gg.funcarg, &gg.probemode);
    briefprobe = 0 ;
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "DOTS")) {
    getbool(gg.funcarg, &gg.dotsvisible);
    refrfunc();
    if (gg.dotsvisible)
      vmessage("Dots are now visible");
    else
      vmessage("Dots are now hidden");
    return;
  }
  if (!strcmp(gg.func, "ONOFF") || !strcmp(gg.func, "SIM") ||
      !strcmp(gg.func, "POWER")) {
    getbool(gg.funcarg, &gg.pwrflag);
    vmessageflag("Simulation is ", gg.pwrflag);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "ON")) {
    gg.pwrflag = 1 ;
    vmessageflag("Simulation is ", gg.pwrflag);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "OFF")) {
    gg.pwrflag = 0 ;
    vmessageflag("Simulation is ", gg.pwrflag);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "INVISIBLE")) {
    getbool(gg.funcarg, &gg.invisible);
    refrfunc();
    vmessageflag("Invisible mode is ", gg.invisible);
    return;
  }
  if (!strcmp(gg.func, "INVLABEL")) {
    getbool(gg.funcarg, &gg.textinvisible);
    refrfunc();
    vmessageflag("Invisible-labels mode is ", gg.textinvisible);
    return;
  }
  if (!strcmp(gg.func, "QUIET")) {
    getbool(gg.funcarg, &gg.quiet);
    vmessageflag("Quiet mode is ", gg.quiet);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "CONFLICT")) {
    if (*gg.funcarg != '\0' && isdigit(gg.funcarg[0])) {
      conflictenbl = 1 ;
      conflictdelay = getint(gg.funcarg, 1L);
      if (conflictdelay > 3)    
	conflictdelay = 3;
    } else
      getbool(gg.funcarg, &conflictenbl);
    if (conflictenbl) {
      sprintf(STR2, "Conflicts are enabled with delay %d", conflictdelay);
      vmessage(STR2);
    } else
      vmessage("Conflicts are disabled");
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "CSTOP")) {
    getbool(gg.funcarg, &conflictstop);
    vmessageflag("Conflict-stopping is ", conflictstop);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "RESPONSE")) {
    gg.fastmin = getint(gg.funcarg, gg.fastmin);
    gg.fastmax = getint(gg.funcarg, gg.fastmax);
    gg.fastrate = getint(gg.funcarg, gg.fastrate);
    if (gg.fastmax < gg.fastmin)
      gg.fastmax = gg.fastmin;
    if (gg.fastspeed < gg.fastmin)
      gg.fastspeed = gg.fastmin;
    else if (gg.fastspeed > gg.fastmax)
      gg.fastspeed = gg.fastmax;
    if (gg.fastrate < 1)
      gg.fastrate = 1;
    sprintf(STR1, "Response: min=%ld, max=%ld, rate=%ld",
	    gg.fastmin, gg.fastmax, gg.fastrate);
    vmessage(STR1);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "VERBOSE")) {
    getbool(gg.funcarg, &gg.verbose);
    if (gg.verbose)
      message("Verbose mode is ON");
    else
      message("Verbose mode is OFF");
    clearfunc();
    return;
  }
  if (strcmp(gg.func, "AVOID"))
    return;
  if (gg.initdone)
    remcursor();
  getbool(gg.funcarg, &avoidrabbits);
  if (avoidrabbits)
    vmessage("Avoiding rabbits");
  else
    vmessage("Not avoiding rabbits");
  clearfunc();
}



static  void  doimmedfunction()
{
  log_tool *tp;
  char  cmd[256];
  na_strlist *l1;

  if (*gg.func != '\0') {
    l1 = strlist_find(commandlist, gg.func);
    if (l1 != ((void *)0) ) {
      if (*(char  *)l1->value != '\0') {
	tp = findtool((char  *)l1->value);
	if (tp->ready)
	  strlist_delete(&commandlist, l1);
      }
    }
    doingcnffunction = 0 ;
    strcpy(cmd, gg.func);
    tp = gg.toolbase;
    while (tp != ((void *)0)  && !strcmp(gg.func, cmd)) {
      if (tp->ready)
	calltool(tp, act_immed);
      tp = tp->next;
    }
    doimmedcnffunction();
  }
  if (*gg.func == '\0')
    return;
  if (!strcmp(gg.func, "HELP")) {
    gethelp(gg.funcarg);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "RESET")) {
    gg.resetflag = 1 ;
    vmessage("Resetting simulation");
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "TRACE")) {
    getbool(gg.funcarg, &gg.traceflag);
    vmessageflag("Trace mode ", gg.traceflag);
    if (gg.traceflag)
      tracemessage("Trace mode ON");
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "DUMPFILE")) {
    setdumpname(gg.funcarg);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "TRACEFILE")) {
    settracename(gg.funcarg);
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "CLOSEFILES")) {
    closedumpfiles();
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "DUMP")) {
    dumpnodes();
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "HOME")) {
    xoff0 = 16384  - gg.xoff;
    yoff0 = 16384  - gg.yoff;
    setscale(0);
    refrfunc();
    return;
  }
  if (!strcmp(gg.func, "ZOOMDN")) {
    zoomto(zoom - 1);
    return;
  }
  if (!strcmp(gg.func, "ZOOMUP")) {
    zoomto(zoom + 1);
    return;
  }
  if (!strcmp(gg.func, "GRID")) {
    remcursor();
    if (cursortype == grid)
      cursortype = normal;
    else
      cursortype = grid;
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "EXAMINE")) {
    clearfunc();
    remcursor();
    gg.probemode = 1 ;
    briefprobe = 1 ;
    return;
  }
  if (!strcmp(gg.func, "ARROW")) {
    remcursor();
    cursortype = normal;
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "ALTPOSN")) {
    xoff0 = xoffp[gg.curpage - 1] - gg.xoff;
    yoff0 = yoffp[gg.curpage - 1] - gg.yoff;
    xoffp[gg.curpage - 1] = gg.xoff;
    yoffp[gg.curpage - 1] = gg.yoff;
    refrfunc();
    return;
  }
  if (!strcmp(gg.func, "PAGE")) {
    if (!strcmp(gg.funcarg, "+")) {
      if (gg.curpage < 9 )
	newpage((int)(gg.curpage + 1));
    } else if (!strcmp(gg.funcarg, "-")) {
      if (gg.curpage > 1)
	newpage((int)(gg.curpage - 1));
    } else if (strlen(gg.funcarg) == 1 && gg.funcarg[0] >= '1' &&
	       gg.funcarg[0] <= '9')
      newpage(gg.funcarg[0] - 48);
    refrfunc();
    return;
  }
  if (strcmp(gg.func, "DO")) {
    if (immedscroll)
      scroll();
    return;
  }
  if (*gg.funcarg != '\0') {
    assertfunc(gg.funcarg);
    return;
  }
  beginbottom();
  m_alpha_on();
  nc_printf ("Do: ");
  readlnpass(cmd, 0);
  endbottom();
  assertfunc(cmd);
}




static  void  assertfunc(name_)
char  *name_;
{
  char  name[256];
  char  cmd[17];

  strcpy(name, name_);
  remcursor();
  commandfound = 1 ;
  while (*name == ':')
    strcpy(name, name + 1);
  getword(name, cmd);
  doingcnffunction = 0 ;
  if (!strcmp(gg.func, cmd)) {
    *gg.func = '\0';
    return;
  }
  strcpy(gg.func, cmd);
  strcpy(gg.funcarg, name);
  if (briefprobe) {
    remcursor();
    gg.probemode = 0 ;
  }
  doimmedfunction();
}






 
 
 
 
 

static  void  trykbd()
{
  long t;
  boolean moving;
  char  ch;
  macrorec *mp;
  na_strlist *todo;
  char  TEMP;

  if (gg.t.near_ && !gg.t0.near_ && gg.showpage >= 0) {
    m_graphics_on();
     ;
  }
  if (thingstodo != ((void *)0) ) {
    if (nexttodo == ((void *)0) )
      todo = thingstodo;
    else
      todo = nexttodo;
    nexttodo = todo->next;
    assertfunc(todo->s);
    if (nexttodo == ((void *)0) )
      strlist_empty(&thingstodo);
    return;
  }
  if (!pollkbd2())
    return;
  norabbits();
  rabtime = timers_sysclock();
  ch = inkey4();
  switch (ch) {

  case '\003':
    assertfunc("ABORT");
    break;

  case '\b':
  case '\034':    
    do {
      m_graphics_on();
      m_colormode((long)16 );
      m_color((long)gg.color.scroll);
      m_drawline(xoff0 - 1, 0L, xoff0 - 1, baseline - 1L);
      m_drawline(xoff0 + across + 1, 0L, xoff0 + across + 1, baseline - 1L);
      if (ch == '\b')
	xoff0 -= gg.scale * 2 ;
      if (ch == '\034')
	xoff0 += gg.scale * 2 ;
      m_drawline(xoff0 - 1, 0L, xoff0 - 1, baseline - 1L);
      m_drawline(xoff0 + across + 1, 0L, xoff0 + across + 1, baseline - 1L);
      m_colormode((long)0 );
      t = timers_sysclock() + 25 ;
      do {
      } while (timers_sysclock() <= t && testkey2() == ' ');
      TEMP = testkey2();
      moving = ((uchar)TEMP < 32 && ((1L << TEMP) & 0x10000100L) != 0);
      if (moving)
	ch = inkey2();
    } while (moving && labs(xoff0) <= across - 10);
    refrfunc();
    break;

  case '\n':
  case '\037':    
    do {
      m_graphics_on();
      m_colormode((long)16 );
      m_color((long)gg.color.scroll);
      if (yoff0 < baseline)
	m_drawline(0L, yoff0 - 1, (long)across, yoff0 - 1);
      if (yoff0 < 0)
	m_drawline(0L, yoff0 + baseline, (long)across, yoff0 + baseline);
      if (ch == '\n')
	yoff0 += gg.scale * 2 ;
      if (ch == '\037')
	yoff0 -= gg.scale * 2 ;
      if (yoff0 < baseline)
	m_drawline(0L, yoff0 - 1, (long)across, yoff0 - 1);
      if (yoff0 < 0)
	m_drawline(0L, yoff0 + baseline, (long)across, yoff0 + baseline);
      m_colormode((long)0 );
      t = timers_sysclock() + 25 ;
      do {
      } while (timers_sysclock() <= t && testkey2() == ' ');
      TEMP = testkey2();
      moving = ((uchar)TEMP < 32 && ((1L << TEMP) & 0x80000400L) != 0);
      if (moving)
	ch = inkey2();
    } while (moving && labs(yoff0) <= baseline - 10);
    refrfunc();
    break;

  default:
    mp = macrobase;
    while (mp != ((void *)0)  && mp->key != ch)
      mp = mp->next;
    if (mp != ((void *)0) )
      assertfunc(mp->name);
    break;
  }
}





static  void  trykbdscroll()
{
  immedscroll = 1 ;
  trykbd();
  immedscroll = 0 ;
  scroll();
}






 
 
 
 
 
 

static  void  closergate(x, y)
short x, y;
{
  if (gg.textinvisible)
    gg.nearlabel = ((void *)0) ;
  else {
    gg.nearlabel = gg.lbase[gg.curpage - 1];
    while (gg.nearlabel != ((void *)0)  &&
	   (x < gg.nearlabel->x ||
	    x > gg.nearlabel->x + m_strwidth(((void *)0)  ,
					     gg.nearlabel->name) / gg.scale ||
	    y < gg.nearlabel->y || y > gg.nearlabel->y + 2)) {
 

      gg.nearlabel = gg.nearlabel->next;
    }
  }
  if (gg.nearlabel != ((void *)0) ) {
    gg.nearbox = ((void *)0) ;
    gg.neargate = ((void *)0) ;
    return;
  }
  if (!gg.textinvisible) {
    gg.nearbox = gg.bbase[gg.curpage - 1];
    while (gg.nearbox != ((void *)0)  &&
	   ((x != gg.nearbox->x1 && x != gg.nearbox->x2 &&
	     y != gg.nearbox->y1 &&
	     y != gg.nearbox->y2) || x < gg.nearbox->x1 ||
	    x > gg.nearbox->x2 || y < gg.nearbox->y1 || y > gg.nearbox->y2))
      gg.nearbox = gg.nearbox->next;
  } else
    gg.nearbox = ((void *)0) ;
  if (gg.nearbox != ((void *)0) ) {
    gg.neargate = ((void *)0) ;
    return;
  }
  gg.neargate = gg.gbase[gg.curpage - 1];
  while (gg.neargate != ((void *)0)  && !insidegate(gg.neargate, x, y))
    gg.neargate = gg.neargate->next;
}



 
 
 
 
 
 

static  void  closerwire(x, y)
short x, y;
{
  if (gg.invisible) {
    gg.nearhw = ((void *)0) ;
    gg.nearvw = ((void *)0) ;
    return;
  }
  gg.nearhw = gg.hwbase[gg.curpage - 1];
  while (gg.nearhw != ((void *)0)  &&
	 (gg.nearhw->y != y || gg.nearhw->x1 > x || gg.nearhw->x2 < x))
    gg.nearhw = gg.nearhw->next;
  gg.nearvw = gg.vwbase[gg.curpage - 1];
  while (gg.nearvw != ((void *)0)  &&
	 (gg.nearvw->x != x || gg.nearvw->y1 > y || gg.nearvw->y2 < y))
    gg.nearvw = gg.nearvw->next;
}


 







 
 
 
 
 

static  void  addsolder(x, y, hw, hw2, vw, vw2)
short x, y;
log_hwrec *hw, *hw2;
log_vwrec *vw, *vw2;
{
  log_srec *s;
  log_nrec *n;

  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0)  && (s->x != x || s->y != y))
    s = s->next;
  if (s == ((void *)0) ) {
    newsolder(&s);
    s->x = x;
    s->y = y;
    chpageplace((int)gg.curpage, x, y, x, y);
    s->hwire = ((void *)0) ;
    s->hwire2 = ((void *)0) ;
    s->vwire = ((void *)0) ;
    s->vwire2 = ((void *)0) ;
    n = ((void *)0) ;
    if (hw != ((void *)0) )
      n = hw->node;
    if (vw != ((void *)0)  && n == ((void *)0) )
      n = vw->node;
    hidecursor();
    if (gg.glowmode && n != ((void *)0) )
      drawsolderc(x, y, (int)glowcol(n, (long)gg.color.solder));
    else
      drawsolderc(x, y, gg.color.solder);
    hidecursor();
  }
  if (hw != ((void *)0)  && hw != s->hwire && hw != s->hwire2) {
    if (s->hwire == ((void *)0) )
      s->hwire = hw;
    else if (s->hwire2 == ((void *)0) )
      s->hwire2 = hw2;
    else
      report(1, "ADDSOLDER" );
  }
  if (hw2 != ((void *)0)  && hw2 != s->hwire && hw2 != s->hwire2) {
    if (s->hwire2 == ((void *)0) )
      s->hwire2 = hw2;
    else
      report(2, "ADDSOLDER" );
  }
  if (vw != ((void *)0)  && vw != s->vwire && vw != s->vwire2) {
    if (s->vwire == ((void *)0) )
      s->vwire = vw;
    else if (s->vwire2 == ((void *)0) )
      s->vwire2 = vw;
    else
      report(3, "ADDSOLDER" );
  }
  if (vw2 != ((void *)0)  && vw2 != s->vwire && vw2 != s->vwire2) {
    if (s->vwire2 == ((void *)0) )
      s->vwire2 = vw2;
    else
      report(4, "ADDSOLDER" );
  }
  if (gg.traceflag)
    nc_fprintf (tracefile, "Add solder %ld\n", (long)s);
}





 
 
 
 
 

static  log_srec *findsolder(x, y)
short x, y;
{
  log_srec *s;

  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0)  && (s->x != x || s->y != y))
    s = s->next;
  return s;
}



 
 
 
 
 
 

static  void  addsoldert(hw, vw)
log_hwrec *hw;
log_vwrec *vw;
{
  if (hw->x1 == vw->x && hw->y != vw->y1 && hw->y != vw->y2) {
    addsolder(hw->x1, hw->y, hw, ((void *)0) , vw, ((void *)0) );
    return;
  }
  if (hw->x2 == vw->x && hw->y != vw->y1 && hw->y != vw->y2) {
    addsolder(hw->x2, hw->y, hw, ((void *)0) , vw, ((void *)0) );
    return;
  }
  if (hw->y == vw->y1 && hw->x1 != vw->x && hw->x2 != vw->x)
    addsolder(vw->x, vw->y1, hw, ((void *)0) , vw, ((void *)0) );
  else if (hw->y == vw->y2 && hw->x1 != vw->x && hw->x2 != vw->x)
    addsolder(vw->x, vw->y2, hw, ((void *)0) , vw, ((void *)0) );
}







 
 
 
 
 

static  void  chggate  (log_grec *g, int i, log_nrec *oldnode, log_nrec *n)  ;

static  void  chgvw  (log_vwrec *vw, log_nrec *oldnode, log_nrec *n)  ;





static  void  chghw(hw, oldnode, n)
log_hwrec *hw;
log_nrec *oldnode, *n;
{
  log_vwrec *vw;
  log_hwrec *hw1;
  log_grec *g;
  log_srec *s;
  short i, px, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Change hwire %ld to node %ld\n", (long)hw, (long)n);
  switchnode(&hw->node, n);
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->y - hw->y) <= g->kind->bbmax &&
	P_ibetweenm((long)hw->x1, (long)g->x, (long)hw->x2,
		    (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 1; i <= FORLIM; i++) {
	px = g->pinpos[i - 1].x;
	if (hw->x1 <= px && px <= hw->x2 && g->pinpos[i - 1].y == hw->y &&
	    g->pin[i - 1] == oldnode)
	  chggate(g, i, oldnode, n);
      }
    }
    g = g->next;
  }
  vw = gg.vwbase[gg.curpage - 1];
  while (vw != ((void *)0) ) {
    if (hw->x1 <= vw->x && vw->x <= hw->x2 && vw->y1 <= hw->y &&
	hw->y <= vw->y2 && vw->node == oldnode) {
      if ((hw->x1 == vw->x || hw->x2 == vw->x || vw->y1 == hw->y ||
	   vw->y2 == hw->y) &&
	  (hw->wcolr == vw->wcolr || hw->wcolr == 4  ||
	   vw->wcolr == 4 ))
	chgvw(vw, oldnode, n);
      else {   
	s = gg.sbase[gg.curpage - 1];
	while (s != ((void *)0)  && (s->x != vw->x || s->y != hw->y))
	  s = s->next;
	if (s != ((void *)0) )
	  chgvw(vw, oldnode, n);
      }
    }
    vw = vw->next;
  }
  hw1 = gg.hwbase[gg.curpage - 1];
  while (hw1 != ((void *)0)  && vlsi) {
    if (hw->y == hw1->y && (hw->x1 == hw1->x2 || hw->x2 == hw1->x1) &&
	(hw->wcolr == 4  || hw1->wcolr == 4 ) &&
	hw1->node == oldnode)
      chghw(hw1, oldnode, n);
    hw1 = hw1->next;
  }
}







static  void  chgvw(vw, oldnode, n)
log_vwrec *vw;
log_nrec *oldnode, *n;
{
  log_hwrec *hw;
  log_vwrec *vw1;
  log_grec *g;
  log_srec *s;
  short i, py, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Change vwire %ld to node %ld\n", (long)vw, (long)n);
  switchnode(&vw->node, n);
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->x - vw->x) <= g->kind->bbmax &&
	P_ibetweenm((long)vw->y1, (long)g->y, (long)vw->y2,
		    (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 1; i <= FORLIM; i++) {
	py = g->pinpos[i - 1].y;
	if (vw->y1 <= py && py <= vw->y2 && g->pinpos[i - 1].x == vw->x &&
	    g->pin[i - 1] == oldnode)
	  chggate(g, i, oldnode, n);
      }
    }
    g = g->next;
  }
  hw = gg.hwbase[gg.curpage - 1];
  while (hw != ((void *)0) ) {
    if (hw->x1 <= vw->x && vw->x <= hw->x2 && vw->y1 <= hw->y &&
	hw->y <= vw->y2 && hw->node == oldnode) {
      if (hw->x1 == vw->x || hw->x2 == vw->x || vw->y1 == hw->y ||
	  vw->y2 == hw->y)
	chghw(hw, oldnode, n);
      else {
	s = gg.sbase[gg.curpage - 1];
	while (s != ((void *)0)  && (s->x != vw->x || s->y != hw->y))
	  s = s->next;
	if (s != ((void *)0) )
	  chghw(hw, oldnode, n);
      }
    }
    hw = hw->next;
  }
  vw1 = gg.vwbase[gg.curpage - 1];
  while (vw1 != ((void *)0)  && vlsi) {
    if (vw->x == vw1->x && (vw->y1 == vw1->y2 || vw->y2 == vw1->y1) &&
	(vw->wcolr == 4  || vw1->wcolr == 4 ) &&
	vw1->node == oldnode)
      chgvw(vw1, oldnode, n);
    vw1 = vw1->next;
  }
}







static  void  chggate(g, i, oldnode, n)
log_grec *g;
short i;
log_nrec *oldnode, *n;
{
  log_hwrec *hw;
  log_vwrec *vw;
  log_grec *g1;
  short j, k, savepg, pg, x, y, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Change gate %ld pin %d to node %ld\n",
	    (long)g, i, (long)n);
  j = i;
  do {
    if (g->pin[j - 1] == oldnode) {
      switchnode(&g->pin[j - 1], n);
       
       
      x = g->pinpos[j - 1].x;
      y = g->pinpos[j - 1].y;
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0) ) {
	if (hw->x1 <= x && x <= hw->x2 && hw->y == y && hw->node == oldnode)
	  chghw(hw, oldnode, n);
	hw = hw->next;
      }
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0) ) {
	if (vw->y1 <= y && y <= vw->y2 && vw->x == x && vw->node == oldnode)
	  chgvw(vw, oldnode, n);
	vw = vw->next;
      }
      g1 = gg.gbase[gg.curpage - 1];
      while (g1 != ((void *)0) ) {
	if (g1 != g && P_imax2((long)abs(g1->x - x), (long)abs(g1->y - y)) <=
		       g1->kind->bbmax) {
	  FORLIM = g1->kind->numpins;
	  for (k = 1; k <= FORLIM; k++) {
	    if (x == g1->pinpos[k - 1].x && y == g1->pinpos[k - 1].y &&
		g1->pin[k - 1] == oldnode)
	      chggate(g1, k, oldnode, n);
	  }
	}
	g1 = g1->next;
      }
    }
    j = g->kind->pin[j - 1].c;
  } while (j != i && j != 0);
  if (i != 1 || g->kind->simtype != simtype_common || g->sig == 0 ||
      gg.signaltab[g->sig - 1].np != oldnode)
    return;
  switchnode(&gg.signaltab[g->sig - 1].np, n);
  savepg = gg.curpage;
  FORLIM = gg.numpages;
  for (pg = 1; pg <= FORLIM; pg++) {
    gg.curpage = pg;
    g1 = gg.gbase[gg.curpage - 1];
    while (g1 != ((void *)0) ) {
      if (g1->kind->simtype == simtype_common && g1->sig == g->sig &&
	  g1->pin[0] == oldnode)
	chggate(g1, 1, oldnode, n);
      g1 = g1->next;
    }
  }
  gg.curpage = savepg;
}




 
struct LOC_wantsolder {
  boolean hasred, hasgreen, hasyellow, hasblue;
} ;

static  void  markcolor(hw, LINK)
log_hwrec **hw;
struct LOC_wantsolder *LINK;
{
  if (*hw == ((void *)0) )
    return;
  switch ((*hw)->wcolr) {

  case 3 :
    LINK->hasred = 1 ;
    break;

  case 1 :
    LINK->hasgreen = 1 ;
    break;

  case 2 :
    LINK->hasyellow = 1 ;
    break;

  case 4 :
    LINK->hasblue = 1 ;
    break;
  }
}




 
 
 
 
 
 

static  boolean wantsolder(s)
log_srec *s;
{
  struct LOC_wantsolder V;

  V.hasred = 0 ;
  V.hasgreen = 0 ;
  V.hasyellow = 0 ;
  V.hasblue = 0 ;
  markcolor(&s->hwire, &V);
  markcolor(&s->hwire2, &V);
  markcolor((log_hwrec **)(&s->vwire), &V);
  markcolor((log_hwrec **)(&s->vwire2), &V);
  return (V.hasblue && (V.hasgreen || V.hasyellow || V.hasred));
}



static  void  delgetnode(save, old, n)
log_nrec **save, **old, **n;
{
   






  copynode(*old, n);
}



static  void  delhwire(hw)
log_hwrec *hw;
{
  log_vwrec *vw;
  log_hwrec *hw1;
  log_srec *s, *s1;
  log_nrec *oldnode, *n, *savenode;
  log_grec *g;
  short i, x, y, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Delete hwire %ld\n", (long)hw);
  working();
  clipon();
  m_color((long)gg.color.backgr);
  hline(hw->x1, hw->x2, hw->y);
  oldnode = hw->node;
  stamp(&oldnode->simtype->netstamp);
  switchnode(&hw->node, ((void *)0) );
  savenode = oldnode;
  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0) ) {
    s1 = s->next;
    if (s->hwire == hw || s->hwire2 == hw) {
      if (s->hwire == hw)
	s->hwire = s->hwire2;
      s->hwire2 = ((void *)0) ;
      if (!wantsolder(s)) {
	drawsolderc(s->x, s->y, gg.color.backgr);
	dispsolder(&s);
      } else {
	if (gg.traceflag)
	  nc_fprintf (tracefile, "DELHW keeping solder %ld\n", (long)s);
      }
    }
    s = s1;
  }
  vw = gg.vwbase[gg.curpage - 1];
  while (vw != ((void *)0) ) {
    if (hw->x1 <= vw->x && vw->x <= hw->x2 && vw->y1 <= hw->y &&
	hw->y <= vw->y2 && vw->node == oldnode) {
      delgetnode(&savenode, &oldnode, &n);
      if (n != oldnode)
	chgvw(vw, oldnode, n);
    }
    vw = vw->next;
  }
  hw1 = gg.hwbase[gg.curpage - 1];
  while (hw1 != ((void *)0)  && vlsi) {
    if (hw->y == hw1->y && (hw1->x1 == hw->x2 || hw1->x2 == hw->x1) &&
	hw1->node == oldnode) {
      delgetnode(&savenode, &oldnode, &n);
      if (n != oldnode)
	chghw(hw1, oldnode, n);
    }
    hw1 = hw1->next;
  }
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->y - hw->y) <= g->kind->bbmax &&
	P_ibetweenm((long)hw->x1, (long)g->x, (long)hw->x2,
		    (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 1; i <= FORLIM; i++) {
	if (g->pin[i - 1] == oldnode) {
	  x = g->pinpos[i - 1].x;
	  y = g->pinpos[i - 1].y;
	  if (hw->x1 <= x && x <= hw->x2 && y == hw->y) {
	    delgetnode(&savenode, &oldnode, &n);
	    if (n != oldnode)
	      chggate(g, i, oldnode, n);
	  }
	}
      }
    }
    g = g->next;
  }
  disphw(&hw);
  clipoff();
}



static  void  delvwire(vw)
log_vwrec *vw;
{
  log_hwrec *hw;
  log_vwrec *vw1;
  log_srec *s, *s1;
  log_nrec *oldnode, *n, *savenode;
  log_grec *g;
  short i, x, y, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Delete vwire %ld\n", (long)vw);
  working();
  clipon();
  m_color((long)gg.color.backgr);
  vline(vw->x, vw->y1, vw->y2);
  oldnode = vw->node;
  stamp(&oldnode->simtype->netstamp);
  switchnode(&vw->node, ((void *)0) );
  savenode = oldnode;
  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0) ) {
    s1 = s->next;
    if (s->vwire == vw || s->vwire2 == vw) {
      if (s->vwire == vw)
	s->vwire = s->vwire2;
      s->vwire2 = ((void *)0) ;
      if (!wantsolder(s)) {
	drawsolderc(s->x, s->y, gg.color.backgr);
	dispsolder(&s);
      } else {
	if (gg.traceflag)
	  nc_fprintf (tracefile, "DELVW keeping solder %ld\n", (long)s);
      }
    }
    s = s1;
  }
  hw = gg.hwbase[gg.curpage - 1];
  while (hw != ((void *)0) ) {
    if (hw->x1 <= vw->x && vw->x <= hw->x2 && vw->y1 <= hw->y &&
	hw->y <= vw->y2 && hw->node == oldnode) {
      delgetnode(&savenode, &oldnode, &n);
      if (n != oldnode)
	chghw(hw, oldnode, n);
    }
    hw = hw->next;
  }
  vw1 = gg.vwbase[gg.curpage - 1];
  while (vw1 != ((void *)0)  && vlsi) {
    if (vw->x == vw1->x && (vw1->y1 == vw->y2 || vw1->y2 == vw->y1) &&
	vw1->node == oldnode) {
      delgetnode(&savenode, &oldnode, &n);
      if (n != oldnode)
	chgvw(vw1, oldnode, n);
    }
    vw1 = vw1->next;
  }
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->x - vw->x) <= g->kind->bbmax &&
	P_ibetweenm((long)vw->y1, (long)g->y, (long)vw->y2,
		    (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 1; i <= FORLIM; i++) {
	if (g->pin[i - 1] == oldnode) {
	  x = g->pinpos[i - 1].x;
	  y = g->pinpos[i - 1].y;
	  if (vw->y1 <= y && y <= vw->y2 && x == vw->x) {
	    delgetnode(&savenode, &oldnode, &n);
	    if (n != oldnode)
	      chggate(g, i, oldnode, n);
	  }
	}
      }
    }
    g = g->next;
  }
  vw1 = vw;
  dispvw(&vw);
  clipoff();
}



static  void  chggatepin(g, i, oldnode, savenode)
log_grec *g;
short i;
log_nrec **oldnode, **savenode;
{
  log_nrec *n;
  log_hwrec *hw;
  log_vwrec *vw;
  log_grec *g1;
  short j, x, y, FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Change gate %ld pin %d from node %ld\n",
	    (long)g, i, (long)(*oldnode));
  x = g->pinpos[i - 1].x;
  y = g->pinpos[i - 1].y;
  hw = gg.hwbase[gg.curpage - 1];
  while (hw != ((void *)0) ) {
    if (hw->x1 <= x && x <= hw->x2 && hw->y == y && hw->node == *oldnode) {
      delgetnode(savenode, oldnode, &n);
      if (n != *oldnode)
	chghw(hw, *oldnode, n);
    }
    hw = hw->next;
  }
  vw = gg.vwbase[gg.curpage - 1];
  while (vw != ((void *)0) ) {
    if (vw->y1 <= y && y <= vw->y2 && vw->x == x && vw->node == *oldnode) {
      delgetnode(savenode, oldnode, &n);
      if (n != *oldnode)
	chgvw(vw, *oldnode, n);
    }
    vw = vw->next;
  }
  g1 = gg.gbase[gg.curpage - 1];
  while (g1 != ((void *)0) ) {
    if (g1 != g &&
	P_imax2((long)abs(g1->x - x), (long)abs(g1->y - y)) <= g1->kind->bbmax) {
      FORLIM = g1->kind->numpins;
      for (j = 1; j <= FORLIM; j++) {
	if (x == g1->pinpos[j - 1].x && y == g1->pinpos[j - 1].y &&
	    g1->pin[j - 1] == *oldnode) {
	  delgetnode(savenode, oldnode, &n);
	  if (n != *oldnode)
	    chggate(g1, j, *oldnode, n);
	}
      }
    }
    g1 = g1->next;
  }
}



static  void  disconnectgate(g)
log_grec *g;
{
  log_nrec *savenode;
  short i, j;
  log_nrec **oldnode;
  long done[255  / 32 + 2];
  short FORLIM;
  long SET[9];

  if (gg.traceflag)
    nc_fprintf (tracefile, "Disconnect gate %ld\n", (long)g);
  stamp(&g->kind->simtype->netstamp);
  calltoolgate(g, act_disconnectgate);
  oldnode = (log_nrec **)((__MallocTemp__ = malloc(( g->kind->numpins * sizeof(log_nrec *) ) ? ( g->kind->numpins * sizeof(log_nrec *) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = g->kind->numpins;
  for (i = 0; i < FORLIM; i++) {
    oldnode[i] = g->pin[i];
    stamp(&oldnode[i]->simtype->netstamp);
    switchnode(&g->pin[i], ((void *)0) );
  }
  P_expset(done, 0L);
  FORLIM = g->kind->numpins;
  for (i = 1; i <= FORLIM; i++) {
    if (!P_inset(i, done)) {
      j = i;
      if (i == 1 && g->kind->simtype == simtype_common && g->sig != 0)
	savenode = ((void *)0) ;
      else
	savenode = oldnode[i - 1];
      do {
	chggatepin(g, j, &oldnode[i - 1], &savenode);
	P_addset(done, j);
	j = g->kind->pin[j - 1].c;
      } while (j != i && j != 0);
    }
  }
  unlkgate(&g);
}



static  void  delgate(g)
log_grec *g;
{
  clipon();
  eragate(g);
  disconnectgate(g);
  disposegate(&g);
  clipoff();
}











static  void  confirmsimtype(n)
log_nrec *n;
{
  log_grec *g;
  short i, pg;
  boolean found;
  log_hnrec *hn;
  short FORLIM, FORLIM1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Confirm simtype of %ld\n", (long)n);
  if (n == ((void *)0)  || n->simtype->simtype < 8)
    return;
  found = 0 ;
  FORLIM = gg.numpages;
  for (pg = 0; pg < FORLIM; pg++) {
    g = gg.gbase[pg];
    while (g != ((void *)0)  && !found) {
      FORLIM1 = g->kind->numpins;
      for (i = 0; i < FORLIM1; i++) {
	if (g->pin[i] == n) {
	  if (g->kind->pin[i].s >= 8)
	    found = 1 ;
	}
      }
      g = g->next;
    }
  }
  if (found)
    return;
  if (gg.traceflag)
    nc_fprintf (tracefile, "Deleting simtype of %ld\n", (long)n);
  calltoolnode(n, act_disposenode);
  disposeattrs(&n->attr, n->simtype->nnumattrs, n->simtype->nattr);
  hn = gg.hnbase;
  while (hn != ((void *)0) ) {
    if (gg.signaltab[hn->sig - 1].np == n)
      disposeattrs(&hn->attr, n->simtype->hnumattrs, n->simtype->hattr);
    hn = hn->next;
  }
  n->simtype = simtype_ignore;
}









 
 
 
 
 
 

static  void  combinenodes(n2, n1, cnbase)
log_nrec **n2, **n1;
cnrec *cnbase;
{
  log_nrec *nn1, *nn2, *n3;
  log_hwrec *hw;
  log_vwrec *vw;
  log_grec *g;
  cnrec *cn;
  log_hnrec *hn;
  log_tool *oldsimtype, *newsimtype;
  short i, pg, FORLIM, FORLIM1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Combine node %ld into %ld\n",
	    (long)(*n1), (long)(*n2));
  working();
  if (*n2 == ((void *)0) )
    switchnode(n2, *n1);
  nn1 = *n1;    
  nn2 = *n2;
  if (nn1 != ((void *)0) ) {
    if (nn2 == nn1)
      stamp(&nn2->simtype->netstamp);
    else {
      if (nn1->simtype != nn2->simtype) {
	if (nn1->simtype->simtype >= 8) {
	  if (nn2->simtype->simtype >= 8) {
	     
	    report(10, "COMBINENODES" );
	  } else {
	    n3 = nn1;
	    nn1 = nn2;
	    nn2 = n3;
	  }
	}
	gg.actx = nn1->simtype->simtype;
	gg.actnode2 = nn1;
	calltoolnode(nn2, act_combineintonode);
      } else {
	gg.actnode2 = nn1;
	calltoolnode(nn2, act_combinenodes);
      }
      oldsimtype = nn1->simtype;
      newsimtype = nn2->simtype;
      stamp(&newsimtype->netstamp);
      nn2->changed = 1 ;
      FORLIM = gg.numpages;
      for (pg = 0; pg < FORLIM; pg++) {
	hw = gg.hwbase[pg];
	while (hw != ((void *)0) ) {
	  if (hw->node == nn1)
	    switchnode(&hw->node, nn2);
	  hw = hw->next;
	}
	vw = gg.vwbase[pg];
	while (vw != ((void *)0) ) {
	  if (vw->node == nn1)
	    switchnode(&vw->node, nn2);
	  vw = vw->next;
	}
	g = gg.gbase[pg];
	while (g != ((void *)0) ) {
	  FORLIM1 = g->kind->numpins;
	  for (i = 0; i < FORLIM1; i++) {
	    if (g->pin[i] == nn1)
	      switchnode(&g->pin[i], nn2);
	  }
	  g = g->next;
	}
      }
      FORLIM = gg.lastsignal;
      for (i = 1; i <= FORLIM; i++) {
	if (gg.signaltab[i - 1].np == nn1) {
	  switchnode(&gg.signaltab[i - 1].np, nn2);
	  if (oldsimtype->simtype < 8 && newsimtype->simtype >= 8) {
	    hn = gg.hnbase;
	    while (hn != ((void *)0) ) {
	      if (hn->sig == i)
		newattrs(&hn->attr, newsimtype->hnumattrs, newsimtype->hattr);
	      hn = hn->next;
	    }
	  }
	}
      }
      cn = cnbase;
      while (cn != ((void *)0) ) {
	if (cn->n == nn1)
	  cn->n = nn2;
	cn = cn->next;
      }
      if (nodeexists(nn1)) {
	report(11, "COMBINENODES" );
	disposenode(&nn1);
      }
    }
  }
  *n1 = *n2;
}







 



static  void  queuecombine(cnbase, n, n2)
cnrec **cnbase;
log_nrec **n, **n2;
{
  cnrec *cn;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Queue-combine,  n = %ld,  np -> %ld\n",
	    (long)(*n), (long)(*n2));
  if (*n == ((void *)0) )
    return;
  cn = (cnrec *)((__MallocTemp__ = malloc(( sizeof(cnrec) ) ? ( sizeof(cnrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  cn->next = *cnbase;
  *cnbase = cn;
  cn->n = *n;
  cn->np = n2;
}


 
struct LOC_checkcombine {
  cnrec **cnbase;
  short passcount;
  boolean good;
  log_tool *cursimtype;
} ;

static  void  scancn  (cnrec *cn, struct LOC_checkcombine *LINK)  ;

static  void  checknode(n, LINK)
log_nrec *n;
struct LOC_checkcombine *LINK;
{
  log_tool *newsimtype;
  char  STR1[94];

  newsimtype = n->simtype;
  if (newsimtype->simtype < 8)
    return;
  if (LINK->cursimtype->simtype < 8) {
    LINK->cursimtype = newsimtype;
    return;
  }
  if (LINK->cursimtype->simtype == newsimtype->simtype)
    return;
  if (LINK->passcount == 2) {
    sprintf(STR1, "Tried to connect %s signal to %s",
	    newsimtype->shortname, LINK->cursimtype->shortname);
    message(STR1);
  }
  LINK->good = 0 ;
}

 
struct LOC_scancn {
  struct LOC_checkcombine *LINK;
} ;

static  void  scan(n, LINK)
log_nrec **n;
struct LOC_scancn *LINK;
{
  cnrec *cn;

  if (!LINK->LINK->good)
    return;
  if (*n != ((void *)0) )
    checknode(*n, LINK->LINK);
  cn = *LINK->LINK->cnbase;
  while (cn != ((void *)0)  && LINK->LINK->good) {
    if (cn->n == *n && *n != ((void *)0)  || cn->np == n)
      scancn(cn, LINK->LINK);
    cn = cn->next;
  }
}

static  void  scancn(cn, LINK)
cnrec *cn;
struct LOC_checkcombine *LINK;
{
  struct LOC_scancn V;

  V.LINK = LINK;
  if (cn->done)
    return;
  cn->done = 1 ;
  scan(&cn->n, &V);
  scan(cn->np, &V);
}



 



static  boolean checkcombine(cnbase_)
cnrec **cnbase_;
{
  struct LOC_checkcombine V;
  cnrec *cn;

  V.cnbase = cnbase_;
  V.passcount = 1;
  do {
    cn = *V.cnbase;
    while (cn != ((void *)0) ) {
      cn->done = 0 ;
      cn = cn->next;
    }
    cn = *V.cnbase;
    V.good = 1 ;
    while (cn != ((void *)0)  && V.good) {
      V.cursimtype = simtype_ignore;
      scancn(cn, &V);
      cn = cn->next;
    }
    if (!V.good && V.passcount == 1) {
      cn = *V.cnbase;
      while (cn != ((void *)0) ) {
	confirmsimtype(cn->n);
	confirmsimtype(*cn->np);
	cn = cn->next;
      }
    }
    if (gg.traceflag && *V.cnbase != ((void *)0) )
      nc_fprintf (tracefile, "Check-combine (pass %d) finds %s\n",
	      V.passcount, V.good ? " TRUE" : "FALSE");
    V.passcount++;
  } while (!(V.good || V.passcount > 2));
  if (V.good) {
    cn = *V.cnbase;
    while (cn != ((void *)0) ) {
      combinenodes(cn->np, &cn->n, *V.cnbase);
      cn = cn->next;
    }
  }
  while (*V.cnbase != ((void *)0) ) {
    cn = (*V.cnbase)->next;
    (free((Anyptr)( *V.cnbase )), ( *V.cnbase )= ((void *)0) ) ;
    *V.cnbase = cn;
  }
  return V.good;
}



static  boolean trycombinenodes(n1, n2)
log_nrec **n1, **n2;
{
  cnrec *cnbase;

  cnbase = ((void *)0) ;
  queuecombine(&cnbase, n1, n2);
  return (checkcombine(&cnbase));
}





static  void  fryhwire(hw)
log_hwrec *hw;
{
  long t0;

  remcursor();
  clipon();
  t0 = timers_sysclock();
  while (labs(timers_sysclock() - t0) < 50 ) {
    m_color((long)gg.color.conflict);
    hline(hw->x1, hw->x2, hw->y);
    m_color((long)gg.color.backgr);
    hline(hw->x1, hw->x2, hw->y);
  }
  clipoff();
  refreshsoon();
}


static  void  fryvwire(vw)
log_vwrec *vw;
{
  long t0;

  remcursor();
  clipon();
  t0 = timers_sysclock();
  while (labs(timers_sysclock() - t0) < 50 ) {
    m_color((long)gg.color.conflict);
    vline(vw->x, vw->y1, vw->y2);
    m_color((long)gg.color.backgr);
    vline(vw->x, vw->y1, vw->y2);
  }
  clipoff();
  refreshsoon();
}


static  void  frygate(g)
log_grec *g;
{
  long t0;

  remcursor();
  clipon();
  t0 = timers_sysclock();
  while (labs(timers_sysclock() - t0) < 50 ) {
    drawgatec(g->x, g->y, g->g, gg.color.conflict);
    eragate(g);
  }
  clipoff();
  refreshsoon();
}


static  void  frysolder(x, y)
short x, y;
{
  long t0;

  remcursor();
  clipon();
  t0 = timers_sysclock();
  while (labs(timers_sysclock() - t0) < 50 ) {
    drawsolderc(x, y, gg.color.conflict);
    drawsolderc(x, y, gg.color.backgr);
  }
  clipoff();
  refreshsoon();
}





static  void  addblobs(blbase, x1, y1, x2, y2)
blobrec **blbase;
short x1, y1, x2, y2;
{
  blobrec *blp;
  log_srec *s;

  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0) ) {
    if (P_ibetween((long)x1, (long)s->x, (long)x2) &&
	P_ibetween((long)y1, (long)s->y, (long)y2)) {
      blp = (blobrec *)((__MallocTemp__ = malloc(( sizeof(blobrec) ) ? ( sizeof(blobrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      blp->x = s->x;
      blp->y = s->y;
      blp->next = *blbase;
      *blbase = blp;
    }
    s = s->next;
  }
}


static  void  doblobs(blp)
blobrec *blp;
{
  log_hwrec *hw;
  log_vwrec *vw;
  short x, y;

  while (blp != ((void *)0) ) {
    if (blp->x != -32768L) {
      x = blp->x;
      y = blp->y;
      hw = gg.hwbase[gg.curpage - 1];
      while (hw != ((void *)0)  && (hw->y != y || hw->x1 > x || hw->x2 < x))
	hw = hw->next;
      vw = gg.vwbase[gg.curpage - 1];
      while (vw != ((void *)0)  && (vw->x != x || vw->y1 > y || vw->y2 < y))
	vw = vw->next;
      if (hw != ((void *)0)  && vw != ((void *)0)  && hw->node != vw->node) {
	if (trycombinenodes(&hw->node, &vw->node)) {
	  clipon();
	  addsolder(x, y, hw, ((void *)0) , vw, ((void *)0) );
	  clipoff();
	}
      }
    }
    blp = blp->next;
  }
}


static  void  dispblobs(blbase)
blobrec **blbase;
{
  blobrec *blp;

  while (*blbase != ((void *)0) ) {
    blp = *blbase;
    *blbase = blp->next;
    (free((Anyptr)( blp )), ( blp )= ((void *)0) ) ;
  }
}








 
 
 
 
 
 
 
 
 
 
 
 

static  void  addhwire(x1, x2, y, colr)
short x1, x2, y, colr;
{
  cnrec *cnbase;
  log_hwrec *hw, *hw1, *hw2;
  log_vwrec *vw1, *vw2;
  log_grec *g;
  short i, xp, hx1, hx2, hy, vx, vy1, vy2, hcolr, vcolr;
  blobrec *blbase;
  short FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Add hwire %d-%d, %d\n", x1, x2, y);
  sortshints(&x1, &x2);
  cnbase = ((void *)0) ;
  remcursor();
  working();
  clipon();
  if (!vlsi)
    colr = 0 ;
  newhw(&hw);
  hw->x1 = 32767 ;
  hw->x2 = 32767 ;
  hw->y = 32767 ;
  hw->node = ((void *)0) ;
  hw1 = hw->next;
  blbase = ((void *)0) ;
  while (hw1 != ((void *)0) ) {
    hw2 = hw1->next;
    hx1 = hw1->x1;
    hx2 = hw1->x2;
    hy = hw1->y;
    hcolr = hw1->wcolr;
    if (hy == y && hx1 <= x2 && hx2 >= x1) {
      if (hcolr == colr) {
	x1 = P_imin2((long)x1, (long)hx1);
	x2 = P_imax2((long)x2, (long)hx2);
	addblobs(&blbase, hx1, hy, hx2, hy);
	delhwire(hw1);
      }
    }
    hw1 = hw2;
  }
  hw->x1 = x1;
  hw->x2 = x2;
  hw->y = y;
  hw->wcolr = colr;
  chpageplace((int)gg.curpage, x1, y, x2, y);
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->y - y) <= g->kind->bbmax &&
	P_ibetweenm((long)x1, (long)g->x, (long)x2, (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 0; i < FORLIM; i++) {
	xp = g->pinpos[i].x;
	if (g->pinpos[i].y == y && x1 <= xp && xp <= x2)
	  queuecombine(&cnbase, &g->pin[i], &hw->node);
      }
    }
    g = g->next;
  }
  vw1 = gg.vwbase[gg.curpage - 1];
  while (vw1 != ((void *)0) ) {
    vx = vw1->x;
    vy1 = vw1->y1;
    vy2 = vw1->y2;
    vcolr = vw1->wcolr;
    vw2 = vw1->next;
    if (((vx == x1 || vx == x2) && vy1 <= y && y <= vy2 ||
	 (vy1 == y || vy2 == y) && x1 <= vx && vx <= x2) &&
	(colr == vcolr || colr == 4  || vcolr == 4 ))
      queuecombine(&cnbase, &vw1->node, &hw->node);
    else if (vlsi && x1 < vx && vx < x2 && vy1 < y && y < vy2 && colr == vcolr)
      queuecombine(&cnbase, &vw1->node, &hw->node);
    vw1 = vw2;
  }
  if (cnbase == ((void *)0) )
    newnoderef(&hw->node, 0, 1L);
  if (!checkcombine(&cnbase)) {
    fryhwire(hw);
    disphw(&hw);
    gg.nearhw = ((void *)0) ;
    goto _L1;    
  }
  vw1 = gg.vwbase[gg.curpage - 1];
  while (vw1 != ((void *)0) ) {
    vx = vw1->x;
    vy1 = vw1->y1;
    vy2 = vw1->y2;
    vcolr = vw1->wcolr;
    vw2 = vw1->next;
    if (((vx == x1 || vx == x2) && vy1 <= y && y <= vy2 ||
	 (vy1 == y || vy2 == y) && x1 <= vx && vx <= x2) &&
	(colr == vcolr || colr == 4  || vcolr == 4 )) {
      clipon();
      if (!vlsi)
	addsoldert(hw, vw1);
      else if (colr != vcolr)
	addsolder(vx, y, hw, ((void *)0) , vw1, ((void *)0) );
    }
    vw1 = vw2;
  }
  clipon();
  if (hw->node->conflict1 && hw->node->conflict2)    
    m_color((long)gg.color.conflict);
  else if (gg.glowmode)
    m_color(glowcol(hw->node, (long)gg.color.wire[colr - 0 ]));
  else
    m_color((long)gg.color.wire[colr - 0 ]);
  hline(x1, x2, y);
  doblobs(blbase);
  gg.nearhw = hw;
  clipoff();
  refreshsoon();
  if (gg.traceflag)
    nc_fprintf (tracefile, "Added hwire %ld\n", (long)hw);
_L1:
  dispblobs(&blbase);

   
   
}




static  void  addhwire2(x1, x2, y)
short x1, x2, y;
{
  addhwire(x1, x2, y, 0 );
}






static  void  addvwire(x, y1, y2, colr)
short x, y1, y2, colr;
{
  cnrec *cnbase;
  log_vwrec *vw, *vw1, *vw2;
  log_hwrec *hw1, *hw2;
  log_grec *g;
  short i, yp, hy, hx1, hx2, vx, vy1, vy2, hcolr, vcolr;
  blobrec *blbase;
  short FORLIM;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Add vwire %d, %d-%d\n", x, y1, y2);
  sortshints(&y1, &y2);
  cnbase = ((void *)0) ;
  remcursor();
  working();
  clipon();
  if (!vlsi)
    colr = 0 ;
  newvw(&vw);
  vw->x = 32767 ;
  vw->y1 = 32767 ;
  vw->y2 = 32767 ;
  vw->node = ((void *)0) ;
  vw1 = vw->next;
  blbase = ((void *)0) ;
  while (vw1 != ((void *)0) ) {
    vw2 = vw1->next;
    vx = vw1->x;
    vy1 = vw1->y1;
    vy2 = vw1->y2;
    vcolr = vw1->wcolr;
    if (vx == x && vy1 <= y2 && vy2 >= y1) {
      if (vcolr == colr) {
	y1 = P_imin2((long)y1, (long)vy1);
	y2 = P_imax2((long)y2, (long)vy2);
	addblobs(&blbase, vx, vy1, vx, vy2);
	delvwire(vw1);
      }
    }
    vw1 = vw2;
  }
  vw->y1 = y1;
  vw->y2 = y2;
  vw->x = x;
  vw->wcolr = colr;
  chpageplace((int)gg.curpage, x, y1, x, y2);
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    if (abs(g->x - x) <= g->kind->bbmax &&
	P_ibetweenm((long)y1, (long)g->y, (long)y2, (long)g->kind->bbmax)) {
      FORLIM = g->kind->numpins;
      for (i = 0; i < FORLIM; i++) {
	yp = g->pinpos[i].y;
	if (g->pinpos[i].x == x && y1 <= yp && yp <= y2)
	  queuecombine(&cnbase, &g->pin[i], &vw->node);
      }
    }
    g = g->next;
  }
  hw1 = gg.hwbase[gg.curpage - 1];
  while (hw1 != ((void *)0) ) {
    hy = hw1->y;
    hx1 = hw1->x1;
    hx2 = hw1->x2;
    hcolr = hw1->wcolr;
    hw2 = hw1->next;
    if (((hy == y1 || hy == y2) && hx1 <= x && x <= hx2 ||
	 (hx1 == x || hx2 == x) && y1 <= hy && hy <= y2) &&
	(colr == hcolr || colr == 4  || hcolr == 4 ))
      queuecombine(&cnbase, &hw1->node, &vw->node);
    else if (vlsi && y1 < hy && hy < y2 && hx1 < x && x < hx2 && colr == hcolr)
      queuecombine(&cnbase, &hw1->node, &vw->node);
    hw1 = hw2;
  }
  if (cnbase == ((void *)0) )
    newnoderef(&vw->node, 0, 1L);
  if (!checkcombine(&cnbase)) {
    fryvwire(vw);
    dispvw(&vw);
    gg.nearvw = ((void *)0) ;
    goto _L1;    
  }
  hw1 = gg.hwbase[gg.curpage - 1];
  while (hw1 != ((void *)0) ) {
    hy = hw1->y;
    hx1 = hw1->x1;
    hx2 = hw1->x2;
    hcolr = hw1->wcolr;
    hw2 = hw1->next;
    if (((hy == y1 || hy == y2) && hx1 <= x && x <= hx2 ||
	 (hx1 == x || hx2 == x) && y1 <= hy && hy <= y2) &&
	(colr == hcolr || colr == 4  || hcolr == 4 )) {
      clipon();
      if (!vlsi)
	addsoldert(hw1, vw);
      else if (colr != hcolr)
	addsolder(x, hy, hw1, ((void *)0) , vw, ((void *)0) );
    }
    hw1 = hw2;
  }
  clipon();
  if (vw->node->conflict1 && vw->node->conflict2)    
    m_color((long)gg.color.conflict);
  else if (gg.glowmode)
    m_color(glowcol(vw->node, (long)gg.color.wire[colr - 0 ]));
  else
    m_color((long)gg.color.wire[colr - 0 ]);
  vline(x, y1, y2);
  doblobs(blbase);
  gg.nearvw = vw;
  clipoff();
  refreshsoon();
  if (gg.traceflag)
    nc_fprintf (tracefile, "Added vwire %ld\n", (long)vw);
_L1:
  dispblobs(&blbase);

   
   
}




static  void  addvwire2(x, y1, y2)
short x, y1, y2;
{
  addvwire(x, y1, y2, 0 );
}




 
 
 
 
 
 

static  void  initpinpos(g)
log_grec *g;
{
  short i, rxx, rxy, ryx, ryy;
  log_krec *WITH;
  short FORLIM;

  rxx = log_rotxx[g->rot];
  rxy = log_rotxy[g->rot];
  ryx = log_rotyx[g->rot];
  ryy = log_rotyy[g->rot];
  WITH = g->kind;
  FORLIM = WITH->numpins;
  for (i = 0; i < FORLIM; i++) {
    g->pinpos[i].x = g->x + WITH->pin[i].x * rxx + WITH->pin[i].y * ryx;
    g->pinpos[i].y = g->y + WITH->pin[i].x * rxy + WITH->pin[i].y * ryy;
  }
}


static  boolean connectgate(g)
log_grec *g;
{
  boolean Result;
  cnrec *cnbase;
  short i, j, xp, yp;
  log_hwrec *hw;
  log_vwrec *vw;
  log_nrec **n1;
  log_grec *g1;
  short ptrs[255 ];
  boolean success;
  short FORLIM, FORLIM1;

  if (gg.traceflag)
    nc_fprintf (tracefile, "Connect gate %ld, type %s\n", (long)g, g->kind->name);
  linkgate(&g);
  working();
  initpinpos(g);
  FORLIM = g->kind->numpins;
  for (i = 0; i < FORLIM; i++) {
    ptrs[i] = 0;
    g->pin[i] = ((void *)0) ;
  }
  FORLIM = g->kind->numpins;
  for (i = 1; i <= FORLIM; i++) {
    if (ptrs[i - 1] == 0) {
      newnoderef(&g->pin[i - 1], g->kind->pin[i - 1].s, 1L);
      if (g->pin[i - 1] == ((void *)0) ) {
	Result = 0 ;
	goto _L1;    
      }
      j = i;
      do {
	ptrs[j - 1] = i;
	j = g->kind->pin[j - 1].c;
      } while (j != i && j != 0);
    }
  }
  cnbase = ((void *)0) ;
  FORLIM = g->kind->numpins;
  for (i = 0; i < FORLIM; i++) {
    xp = g->pinpos[i].x;
    yp = g->pinpos[i].y;
    n1 = ((void *)0) ;
    hw = gg.hwbase[gg.curpage - 1];
    while (hw != ((void *)0)  && n1 == ((void *)0) ) {
      if (hw->x1 <= xp && xp <= hw->x2 && yp == hw->y)
	n1 = &hw->node;
      hw = hw->next;
    }
    vw = gg.vwbase[gg.curpage - 1];
    while (vw != ((void *)0)  && n1 == ((void *)0) ) {
      if (vw->y1 <= yp && yp <= vw->y2 && xp == vw->x)
	n1 = &vw->node;
      vw = vw->next;
    }
    g1 = gg.gbase[gg.curpage - 1];
    while (g1 != ((void *)0)  && n1 == ((void *)0) ) {
      if (g1 != g && P_imax2((long)abs(g1->x - xp), (long)abs(g1->y - yp)) <=
		     g1->kind->bbmax) {
	FORLIM1 = g1->kind->numpins;
	for (j = 0; j < FORLIM1; j++) {
	  if (g1->pinpos[j].x == xp && g1->pinpos[j].y == yp)
	    n1 = &g1->pin[j];
	}
      }
      g1 = g1->next;
    }
    if (n1 != ((void *)0) )
      queuecombine(&cnbase, &g->pin[ptrs[i] - 1], n1);
  }
  if (g->kind->simtype == simtype_common && g->sig != 0)
    queuecombine(&cnbase, &gg.signaltab[g->sig - 1].np, g->pin);
  gg.actflag = 1 ;
  calltoolgate(g, act_connectgate);
  success = gg.actflag;
  if (success && checkcombine(&cnbase)) {
    FORLIM = g->kind->numpins;
    for (i = 0; i < FORLIM; i++) {
      if (ptrs[i] != i + 1)
	g->pin[i] = refnode(g->pin[ptrs[i] - 1]);
    }
    Result = 1 ;
  } else
    success = 0 ;
  if (!success) {
    Result = 0 ;
    FORLIM = g->kind->numpins;
    for (i = 1; i <= FORLIM; i++) {
      if (ptrs[i - 1] == i)
	unrefnode(&g->pin[i - 1]);
    }
    unlkgate(&g);
  }
_L1:
  return Result;
}



static  void  pconnectgate(g, success)
log_grec *g;
boolean *success;
{
  *success = connectgate(g);
}







 
 
 
 
 

static  void  initbuf(bases)
baseptrs *bases;
{
  bases->gcopy = ((void *)0) ;
  bases->scopy = ((void *)0) ;
  bases->hwcopy = ((void *)0) ;
  bases->vwcopy = ((void *)0) ;
  bases->lcopy = ((void *)0) ;
  bases->bcopy = ((void *)0) ;
  bases->pgnum = 0;
  bases->valid = 0 ;
}


static  void  clearbuf(bases)
baseptrs *bases;
{
  log_grec *g;
  log_srec *s;
  log_hwrec *hw;
  log_vwrec *vw;
  log_lrec *l;
  log_brec *b;

  while (bases->gcopy != ((void *)0) ) {
    g = bases->gcopy->next;
    disposegate(&bases->gcopy);
    bases->gcopy = g;
  }
  while (bases->scopy != ((void *)0) ) {
    s = bases->scopy->next;
    (free((Anyptr)( bases->scopy )), ( bases->scopy )= ((void *)0) ) ;
    bases->scopy = s;
  }
  while (bases->hwcopy != ((void *)0) ) {
    hw = bases->hwcopy->next;
    (free((Anyptr)( bases->hwcopy )), ( bases->hwcopy )= ((void *)0) ) ;
    bases->hwcopy = hw;
  }
  while (bases->vwcopy != ((void *)0) ) {
    vw = bases->vwcopy->next;
    (free((Anyptr)( bases->vwcopy )), ( bases->vwcopy )= ((void *)0) ) ;
    bases->vwcopy = vw;
  }
  while (bases->lcopy != ((void *)0) ) {
    l = bases->lcopy->next;
    (free((Anyptr)( bases->lcopy )), ( bases->lcopy )= ((void *)0) ) ;
    bases->lcopy = l;
  }
  while (bases->bcopy != ((void *)0) ) {
    b = bases->bcopy->next;
    (free((Anyptr)( bases->bcopy )), ( bases->bcopy )= ((void *)0) ) ;
    bases->bcopy = b;
  }
  bases->pgnum = 0;
  bases->valid = 0 ;
}



static  boolean bufempty(bases)
baseptrs *bases;
{
  return (bases->gcopy == ((void *)0)  && bases->scopy == ((void *)0)  &&
	  bases->hwcopy == ((void *)0)  && bases->vwcopy == ((void *)0)  &&
	  bases->lcopy == ((void *)0)  && bases->bcopy == ((void *)0) );
}



static  boolean bufissmall(bases)
baseptrs *bases;
{
  return ((bases->gcopy == ((void *)0)  || bases->gcopy->next == ((void *)0)  ||
	   bases->gcopy->next->next == ((void *)0)  ||
	   bases->gcopy->next->next->next == ((void *)0) ) &&
	  (bases->hwcopy == ((void *)0)  || bases->hwcopy->next == ((void *)0)  ||
	   bases->hwcopy->next->next == ((void *)0)  ||
	   bases->hwcopy->next->next->next == ((void *)0) ) &&
	  (bases->vwcopy == ((void *)0)  || bases->vwcopy->next == ((void *)0)  ||
	   bases->vwcopy->next->next == ((void *)0)  ||
	   bases->vwcopy->next->next->next == ((void *)0) ) &&
	  (bases->lcopy == ((void *)0)  || bases->lcopy->next == ((void *)0)  ||
	   bases->lcopy->next->next == ((void *)0) ) &&
	  (bases->bcopy == ((void *)0)  || bases->bcopy->next == ((void *)0)  ||
	   bases->bcopy->next->next == ((void *)0) ));
}






 
 
 
 
 
 
 

static  void  cutcopy(bases, x1, y1, x2, y2, cut, tap)
baseptrs *bases;
short x1, y1, x2, y2;
boolean cut, tap;
{
  log_grec *g, *g1, *g2;
  log_hwrec *hw, *hw1, *hw2;
  log_vwrec *vw, *vw1, *vw2;
  log_srec *s, *s2;
  log_lrec *l, *l1, *l2;
  log_brec *b, *b1, *b2;
  short xx1, yy1, xx2, yy2, anchorx, anchory;
  boolean found;
  blobrec *blbase;

  clearbuf(bases);
  anchorx = x2;
  anchory = y2;
  if (tap) {
    x2 = x1;
    y2 = y1;
    closergate(x1, y1);
    if (gg.nearlabel == ((void *)0)  && gg.nearbox == ((void *)0)  && gg.neargate == ((void *)0) ) {
      closerwire(x1, y1);
      if (gg.nearhw != ((void *)0) ) {
	gg.nearvw = ((void *)0) ;
	x1 = gg.nearhw->x1;
	x2 = gg.nearhw->x2;
	y1 = gg.nearhw->y;
	y2 = gg.nearhw->y;
      } else if (gg.nearvw != ((void *)0) ) {
	x1 = gg.nearvw->x;
	x2 = gg.nearvw->x;
	y1 = gg.nearvw->y1;
	y2 = gg.nearvw->y2;
      }
    } else {
      gg.nearhw = ((void *)0) ;
      gg.nearvw = ((void *)0) ;
    }
  }
  bases->x1copy = x1;
  bases->y1copy = y1;
  bases->x2copy = x2;
  bases->y2copy = y2;
  bases->dxcopy = x1 - x2;
  bases->dycopy = y1 - y2;
  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  bases->pgnum = gg.curpage;
  g = gg.gbase[gg.curpage - 1];
  while (g != ((void *)0) ) {
    g1 = g->next;
    if (tap)
      found = (g == gg.neargate);
    else
      found = (x1 <= g->x && g->x <= x2 && y1 <= g->y && g->y <= y2);
    if (found) {
      copygate(g, &g2);
      g2->next = bases->gcopy;
      bases->gcopy = g2;
      g2->x = g->x - anchorx;
      g2->y = g->y - anchory;
      if (cut)
	delgate(g);
    }
    g = g1;
  }
  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0) ) {
    if (tap)
      found = (s->hwire == gg.nearhw && s->hwire != ((void *)0)  ||
	       s->vwire == gg.nearvw && s->vwire != ((void *)0) );
    else
      found = (x1 <= s->x && s->x <= x2 && y1 <= s->y && s->y <= y2);
    if (found &&
	(s->hwire == ((void *)0)  || s->hwire->x1 != s->x && s->hwire->x2 != s->x) &&
	(s->vwire == ((void *)0)  || s->vwire->y1 != s->y && s->vwire->y2 != s->y)) {
      s2 = (log_srec *)((__MallocTemp__ = malloc(( sizeof(log_srec) ) ? ( sizeof(log_srec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      s2->next = bases->scopy;
      bases->scopy = s2;
      s2->x = s->x - anchorx;
      s2->y = s->y - anchory;
    }
    s = s->next;
  }
  hw = gg.hwbase[gg.curpage - 1];
  while (hw != ((void *)0) ) {
    hw1 = hw->next;
    xx1 = hw->x1;
    xx2 = hw->x2;
    yy1 = hw->y;
    if (tap)
      found = (hw == gg.nearhw);
    else
      found = (x1 <= xx2 && xx1 <= x2 && y1 <= yy1 && yy1 <= y2);
    if (found) {
      hw2 = (log_hwrec *)((__MallocTemp__ = malloc(( sizeof(log_hwrec) ) ? ( sizeof(log_hwrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      hw2->x1 = P_imax2((long)xx1, (long)x1) - anchorx;
      hw2->x2 = P_imin2((long)xx2, (long)x2) - anchorx;
      hw2->y = yy1 - anchory;
      hw2->wcolr = hw->wcolr;
      if (hw2->x1 == hw2->x2)
	(free((Anyptr)( hw2 )), ( hw2 )= ((void *)0) ) ;
      else {
	hw2->next = bases->hwcopy;
	bases->hwcopy = hw2;
	if (cut) {
	  blbase = ((void *)0) ;
	  if (xx1 < x1)
	    addblobs(&blbase, xx1, yy1, x1, yy1);
	  if (xx2 > x2)
	    addblobs(&blbase, x2, yy1, xx2, yy1);
	  delhwire(hw);
	  if (xx1 < x1)
	    addhwire(xx1, x1, yy1, hw2->wcolr);
	  if (xx2 > x2)
	    addhwire(x2, xx2, yy1, hw2->wcolr);
	  doblobs(blbase);
	  dispblobs(&blbase);
	}
      }
    }
    hw = hw1;
  }
  vw = gg.vwbase[gg.curpage - 1];
  while (vw != ((void *)0) ) {
    vw1 = vw->next;
    xx1 = vw->x;
    yy1 = vw->y1;
    yy2 = vw->y2;
    if (tap)
      found = (vw == gg.nearvw);
    else
      found = (y1 <= yy2 && yy1 <= y2 && x1 <= xx1 && xx1 <= x2);
    if (found) {
      vw2 = (log_vwrec *)((__MallocTemp__ = malloc(( sizeof(log_vwrec) ) ? ( sizeof(log_vwrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      vw2->x = xx1 - anchorx;
      vw2->y1 = P_imax2((long)yy1, (long)y1) - anchory;
      vw2->y2 = P_imin2((long)yy2, (long)y2) - anchory;
      vw2->wcolr = vw->wcolr;
      if (vw2->y1 == vw2->y2)
	(free((Anyptr)( vw2 )), ( vw2 )= ((void *)0) ) ;
      else {
	vw2->next = bases->vwcopy;
	bases->vwcopy = vw2;
	if (cut) {
	  blbase = ((void *)0) ;
	  if (yy1 < y1)
	    addblobs(&blbase, xx1, y1, xx1, yy1);
	  if (yy2 > y2)
	    addblobs(&blbase, xx1, yy2, xx1, y2);
	  delvwire(vw);
	  if (yy1 < y1)
	    addvwire(xx1, yy1, y1, vw2->wcolr);
	  if (yy2 > y2)
	    addvwire(xx1, y2, yy2, vw2->wcolr);
	  doblobs(blbase);
	  dispblobs(&blbase);
	}
      }
    }
    vw = vw1;
  }
  l = gg.lbase[gg.curpage - 1];
  while (l != ((void *)0) ) {
    l1 = l->next;
    if (tap)
      found = (l == gg.nearlabel);
    else {
      found = (x1 <= l->x + m_strwidth(((void *)0)  , l->name) / gg.scale &&
	       l->x <= x2 && y1 <= l->y + 2 && l->y <= y2);
 

    }
    if (found) {
      l2 = (log_lrec *)((__MallocTemp__ = malloc(( sizeof(log_lrec) ) ? ( sizeof(log_lrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      l2->next = bases->lcopy;
      bases->lcopy = l2;
      l2->x = l->x - anchorx;
      l2->y = l->y - anchory;
      strcpy(l2->name, l->name);
      if (cut) {
	eralabel(l);
	displabel(&l);
      }
    }
    l = l1;
  }
  b = gg.bbase[gg.curpage - 1];
  while (b != ((void *)0) ) {
    b1 = b->next;
    if (tap)
      found = (b == gg.nearbox);
    else
      found = (x1 <= b->x1 && b->x2 <= x2 && y1 <= b->y1 && b->y2 <= y2);
    if (found) {
      b2 = (log_brec *)((__MallocTemp__ = malloc(( sizeof(log_brec) ) ? ( sizeof(log_brec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      b2->next = bases->bcopy;
      bases->bcopy = b2;
      b2->x1 = b->x1 - anchorx;
      b2->y1 = b->y1 - anchory;
      b2->x2 = b->x2 - anchorx;
      b2->y2 = b->y2 - anchory;
      if (cut) {
	drawboxc(b, gg.color.backgr);
	dispbox(&b);
      }
    }
    b = b1;
  }
  bases->valid = 1 ;
  if (pageempty((int)gg.curpage) && curfilename[gg.curpage - 1] != ((void *)0) )
    (free((Anyptr)( curfilename[gg.curpage - 1] )), ( curfilename[gg.curpage - 1] )= ((void *)0) ) ;
}







static  void  checkabort()
{
  if (!gg.stillnear || gg.t.dn && !gg.incircuit || *gg.func != '\0')
    _Escape(5);
}




static  void  waitnear()
{
  m_tracking(0L);
  do {
    gg.stillnear = 1 ;
    pass();
    trykbdscroll();
    pen();
  } while (!(gg.stillnear || *gg.func != '\0'));
  checkabort();
}




static  void  getfirstpoint()
{
  checkabort();
  m_tracking(0L);
  do {
    pass();
    trykbdscroll();
    pen();
    checkabort();
  } while (!gg.t.dn);
  gg.posx = gg.gridx;
  gg.posy = gg.gridy;
}




static  boolean getrectangle(x1, y1, x2, y2, first)
short *x1, *y1, *x2, *y2;
boolean first;
{
  boolean flag;
  long time;

  if (first)
    getfirstpoint();
  *x1 = gg.posx;
  *y1 = gg.posy;
  time = timers_sysclock();
  do {
    m_tracking(1L);
    pen();
    *x2 = gg.gridx;
    *y2 = gg.gridy;
    m_colormode((long)16 );
    m_color((long)gg.color.select);
    flag = gg.incircuit;
    if (flag)
      rect(*x1, *y1, *x2, *y2);
    m_colormode((long)0 );
    do {
      pass();
      trykbd();
      pen();
    } while (gg.gridx == *x2 && gg.gridy == *y2 && gg.t.depressed &&
	     *gg.func == '\0');
    m_colormode((long)16 );
    m_color((long)gg.color.select);
    if (flag)
      rect(*x1, *y1, *x2, *y2);
    m_colormode((long)0 );
    scroll();
    gg.stillnear = 1 ;
    checkabort();
  } while (gg.t.depressed);
  remcursor();
  if (!gg.incircuit)
    _Escape(5);
  return (abs(*x1 - *x2) < 2 && abs(*y1 - *y2) < 2 &&
	  timers_sysclock() - time < 30 );
}





 
 
 
 
 
 

static  void  delcommand()
{
  short x1, y1, x2, y2;
  boolean flag;

  log_setmode("DEL");
  clearfunc();
  cursortype = delete__;
  waitnear();
  do {
    flag = getrectangle(&x1, &y1, &x2, &y2, 1 );
    cutcopy(&copybuf, x1, y1, x2, y2, 1 , flag);
  } while (1 );
}





static  boolean pagembb(pg, x1, y1, x2, y2)
short pg, *x1, *y1, *x2, *y2;
{
  short max;
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_lrec *l;
  log_brec *b;

  *x1 = 32767 ;
  *y1 = 32767 ;
  *x2 = - 32767 ;
  *y2 = - 32767 ;
  g = gg.gbase[pg - 1];
  while (g != ((void *)0) ) {
    max = g->kind->bbmax;
    if (g->x - max < *x1)
      *x1 = g->x - max;
    if (g->x + max > *x2)
      *x2 = g->x + max;
    if (g->y - max < *y1)
      *y1 = g->y - max;
    if (g->y + max > *y2)
      *y2 = g->y + max;
    g = g->next;
  }
  hw = gg.hwbase[pg - 1];
  while (hw != ((void *)0) ) {
    if (hw->x1 < *x1)
      *x1 = hw->x1;
    if (hw->x2 > *x2)
      *x2 = hw->x2;
    if (hw->y < *y1)
      *y1 = hw->y;
    if (hw->y > *y2)
      *y2 = hw->y;
    hw = hw->next;
  }
  vw = gg.vwbase[pg - 1];
  while (vw != ((void *)0) ) {
    if (vw->x < *x1)
      *x1 = vw->x;
    if (vw->x > *x2)
      *x2 = vw->x;
    if (vw->y1 < *y1)
      *y1 = vw->y1;
    if (vw->y2 > *y2)
      *y2 = vw->y2;
    vw = vw->next;
  }
  l = gg.lbase[pg - 1];
  while (l != ((void *)0) ) {
    if (l->x < *x1)
      *x1 = l->x;
    max = m_strwidth(((void *)0)  , l->name) / gg.scale;
 

    if (l->x + max > *x2)
      *x2 = l->x + max;
    if (l->y < *y1)
      *y1 = l->y;
    if (l->y + 2 > *y2)
      *y2 = l->y + 2;
    l = l->next;
  }
  b = gg.bbase[pg - 1];
  while (b != ((void *)0) ) {
    if (b->x1 < *x1)
      *x1 = b->x1;
    if (b->x2 > *x2)
      *x2 = b->x2;
    if (b->y1 < *y1)
      *y1 = b->y1;
    if (b->y2 > *y2)
      *y2 = b->y2;
    b = b->next;
  }
  (*x1)--;
  (*y1)--;
  (*x2)++;
  (*y2)++;
  return (*x1 < *x2);
}



static  void  deleverything()
{
  short x1, y1, x2, y2;

  if (pagembb((int)gg.curpage, &x1, &y1, &x2, &y2))
    cutcopy(&copybuf, x1, y1, x2, y2, 1 , 0 );
}







 
 
 
 
 
 

static  void  changekind2(i, gtype, sig, attrs)
short i, gtype, sig;
log_gattrrec *attrs;
{
  log_krec *k;

  clipoff();
  kdrawgatec(i, gg.color.backgr);
  if (kindattr[i - 1] != ((void *)0) ) {
    k = kind[(kindgroup[i - 1] & (256  - 1)) - 1];
    disposeattrs(&kindattr[i - 1], k->numattrs, k->attr);
    kindattr[i - 1] = ((void *)0) ;
  }
  k = kind[(gtype & (256  - 1)) - 1];
  if (!k->flag.U3.named)
    sig = 0;
  kindgroup[i - 1] = gtype;
  kindsig[i - 1] = sig;
  if (attrs != ((void *)0) )
    copyattrs(&kindattr[i - 1], attrs, k->numattrs, k->attr);
  kdrawgatec(i, gg.color.kindgate);
}



static  void  changekind(gtype, sig, attrs)
short gtype, sig;
log_gattrrec *attrs;
{
  short i;

  if (kindgroupleft <= gg.t.x && gg.t.x < kindgroupright) {
    i = (gg.t.x - kindgroupleft) / (25  * 2)  + 1;
    changekind2(i, gtype, sig, attrs);
  }
}


static  void  showstick(x1, y1, x2, y2, mode)
long x1, y1, x2, y2, mode;
{
  m_colormode(mode);
  m_color((long)gg.color.select);
  x1 = x1 * gg.scale - gg.xoff;
  y1 = y1 * gg.scale - gg.yoff;
  x2 = x2 * gg.scale - gg.xoff;
  y2 = y2 * gg.scale - gg.yoff;
  m_drawline(x1, y1, x2, y2);
  m_drawarrow(x1, y1, x2, y2, 4L, 4L);
  m_drawarrow(x2, y2, x1, y1, 4L, 4L);
  m_colormode((long)0 );
}








static  void  yardstick()
{
  long x1, y1, x2, y2;

  x1 = gg.posx;
  y1 = gg.posy;
  do {
    x2 = gg.gridx;
    y2 = gg.gridy;
    showstick(x1, y1, x2, y2, (long)16 );
    do {
      pass();
      trykbd();
      m_tracking(1L);
      pen();
    } while (gg.gridx == x2 && gg.gridy == y2 && gg.t.depressed &&
	     *gg.func == '\0');
    showstick(x1, y1, x2, y2, (long)16 );
    scroll();
  } while (gg.t.depressed && *gg.func == '\0');
  x1 -= x2;
  y1 -= y2;
  while (gg.t.near_ && *gg.func == '\0') {
    remcursor();
    showstick(x2 + x1, y2 + y1, x2, y2, (long)0 );
    do {
      x2 = gg.gridx;
      y2 = gg.gridy;
      showstick(x2 + x1, y2 + y1, x2, y2, (long)16 );
      do {
	pass();
	trykbd();
	m_tracking(1L);
	pen();
      } while (gg.gridx == x2 && gg.gridy == y2 && gg.t.near_ && !gg.t.dn &&
	       *gg.func == '\0');
      showstick(x2 + x1, y2 + y1, x2, y2, (long)16 );
      scroll();
    } while (!gg.t.dn && gg.t.near_ && *gg.func == '\0');
  }
}



static  void  yardstickcommand()
{
  log_setmode("YARD");
  clearfunc();
  cursortype = copy_;
  getfirstpoint();
  waitnear();
  yardstick();
  cursortype = normal;
  log_setmode("");
}





 
 
 
 
 
 

static  void  addgate2(x, y, gtype, sig, attrs)
short x, y, gtype, sig;
log_gattrrec *attrs;
{
  log_grec *g, *g1;
  short i, gmax;
  boolean flag;

  newgate2(&g, gtype, sig, attrs);
  if (gatecount[gg.curpage - 1] == 32767 ) {
    i = 0;
    gmax = 0;
    do {
      i++;
      g1 = gg.gbase[gg.curpage - 1];
      flag = 0 ;
      while (g1 != ((void *)0)  && !flag) {
	if (g1->gc > gmax)
	  gmax = g1->gc;
	flag = (g1->gc == i);
      }
    } while (flag);
    g->gc = i;
    gatecount[gg.curpage - 1] = gmax;
  } else {
    gatecount[gg.curpage - 1]++;
    g->gc = gatecount[gg.curpage - 1];
  }
  g->x = x;
  g->y = y;
  clipon();
  drawgatex(g);
  clipoff();
  if (!connectgate(g)) {
    frygate(g);
    disposegate(&g);
  }
  gg.refrflag = 1 ;
  gg.neargate = g;
}



static  void  addgate1(x, y, gtype)
short x, y, gtype;
{
  addgate2(x, y, gtype, 0, ((void *)0) );
}



static  void  uaddgate(x, y, gtype)
short x, y, gtype;
{
  short xx, yy;
  log_grec *g;
  log_krec *k;

  x = P_imin2(P_imax2((long)x, 25  * 3L / 2), across - 25  * 3L / 2);
  y = P_imin2(P_imax2((long)y, 25  * 3L / 2), baseline - 25  * 3L / 2);
  k = kind[(gtype & (256  - 1)) - 1];
  do {
    xx = (x + gg.xoff) / gg.scale;
    yy = (y + gg.yoff) / gg.scale;
    g = gg.gbase[gg.curpage - 1];
    while (g != ((void *)0)  && P_imax2((long)abs(g->x - xx), (long)abs(g->y - yy)) >
			g->kind->bbmax + k->bbmax)
      g = g->next;
    if (g != ((void *)0) ) {
      x += 25  * 2;
      if (x > across - 25  * 3) {
	x = 25  * 2;
	y += 25  * 2;
      }
    }
  } while (g != ((void *)0) );
  addgate1(xx, yy, gtype);
}






 
 
 
 
 
 

static  void  movexorgate(x, y, g, sig, yy)
short x, y, g, sig, yy;
{
  clipoff();
  m_colormode((long)16 );
  if (yy < baseline) {
    drawgatec(x, y, g, gg.color.gate);
    signallabel((int)(x * gg.scale - gg.xoff), (int)(y * gg.scale - gg.yoff),
		g, sig, gg.color.signal);
  } else {
    udrawgatec((int)(x * gg.scale - gg.xoff), (int)(y * gg.scale - gg.yoff),
	       g, gg.color.gate);
    if (zoom == 0 &&
	kind[(g & (256  - 1)) - 1]->bbmax <= (25  / 5 ) )
      drawgatedotsc(x, y, g, gg.color.gatepin);
  }
  m_colormode((long)0 );
}


static  boolean addgate(gtype, sig, attrs)
short gtype, sig;
log_gattrrec *attrs;
{
  boolean Result;
  short yy;
  boolean oo;
  log_krec *k;

  Result = 0 ;
  if (gtype != 0 && (gtype & (256  - 1)) <= maxkinds) {
    k = kind[(gtype & (256  - 1)) - 1];
    if (k != ((void *)0) ) {
      do {
	yy = gg.t.y;
	gg.posx = gg.gridx;
	gg.posy = gg.gridy;
	oo = gg.t.off;
	movexorgate(gg.posx, gg.posy, gtype, sig, yy);
	do {
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	} while (gg.gridx == gg.posx && gg.gridy == gg.posy &&
		 gg.t.depressed && strcmp(gg.func, "REFR"));
	movexorgate(gg.posx, gg.posy, gtype, sig, yy);
	scroll();
      } while (gg.t.depressed);
      if (!oo && !gg.t.off) {
	if (gg.t.y < baseline) {
	  addgate2(gg.posx, gg.posy, gtype, sig, attrs);
	  Result = 1 ;
	} else
	  changekind(gtype, sig, attrs);
      }
    }
  }
  gg.startpoint = 0 ;
  return Result;
}



static  void  nextkindsig(i)
short i;
{
  char  buf[256];
  short j;
  char  STR1[256];

  if (kindsig[i - 1] == 0)
    return;
  strcpy(buf, gg.signaltab[kindsig[i - 1] - 1].name);
  j = strlen(buf);
  if (!(j > 0 && isdigit(buf[j - 1])))
    return;
  while (j > 0 && buf[j - 1] == '9') {
    buf[j - 1] = '0';
    j--;
  }
  if (j > 0 && isdigit(buf[j - 1]))
    buf[j - 1]++;
  else {
    sprintf(STR1, "1%s", buf + j);
    strcpy(buf + j, STR1);
  }
  kdrawgatec(i, gg.color.backgr);
  kindsig[i - 1] = getsignal(0, buf);
  kdrawgatec(i, gg.color.kindgate);
}


 
struct LOC_xorcopybuf {
  long *count, max, time;
  boolean aborting;
} ;

static  boolean abortit(LINK)
struct LOC_xorcopybuf *LINK;
{
  if (LINK->max == ((long)(((unsigned long) -1) >> 1)) ) {
    if (LINK->aborting || timers_sysclock() - LINK->time <= 10)
      return LINK->aborting;
    clipoff();
    m_tracking(1L);
    pen();
    clipon();
    m_color((long)gg.color.select);
    if (gg.posx != gg.gridx || gg.posy != gg.gridy || gg.t.dn ||
	!gg.stillnear || pollkbd2())
      LINK->aborting = 1 ;
    return LINK->aborting;
  } else
    return (*LINK->count >= LINK->max);
}







 
 
 
 
 

static  void  xorcopybuf(bases, x, y, count_)
baseptrs *bases;
short x, y;
long *count_;
{
  struct LOC_xorcopybuf V;
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_brec *b;
  log_lrec *l;

  V.count = count_;
  V.max = *V.count;
  *V.count = 0;
  V.time = timers_sysclock();
  V.aborting = 0 ;
  clipon();
  m_colormode((long)16 );
  b = bases->bcopy;
  while (b != ((void *)0)  && !abortit(&V)) {
    drawboxc0(b->x1 + x, b->y1 + y, b->x2 + x, b->y2 + y, gg.color.select);
    (*V.count)++;
    b = b->next;
  }
  m_color((long)gg.color.select);
  hw = bases->hwcopy;
  while (hw != ((void *)0)  && !abortit(&V)) {
    hline(hw->x1 + x, hw->x2 + x, hw->y + y);
    (*V.count)++;
    hw = hw->next;
  }
  vw = bases->vwcopy;
  while (vw != ((void *)0)  && !abortit(&V)) {
    vline(vw->x + x, vw->y1 + y, vw->y2 + y);
    (*V.count)++;
    vw = vw->next;
  }
  g = bases->gcopy;
  while (g != ((void *)0)  && !abortit(&V)) {
    drawgatec(g->x + x, g->y + y, g->g, gg.color.select);
    (*V.count)++;
    g = g->next;
  }
  m_color((long)gg.color.select);
  l = bases->lcopy;
  while (l != ((void *)0)  && !abortit(&V)) {
 

    m_drawstr((l->x + x) * gg.scale - gg.xoff,
	      (l->y + y) * gg.scale - gg.yoff + 2, ((void *)0)  , l->name);
    (*V.count)++;
    l = l->next;
  }
  m_colormode((long)0 );
  clipoff();
}



 
 
 
 
 

static  void  pastebuf(bases, x, y)
baseptrs *bases;
short x, y;
{
  log_grec *g, *g1;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_lrec *l, *l1;
  log_brec *b, *b1;

  clipon();
  g = bases->gcopy;
  while (g != ((void *)0) ) {
    copygate(g, &g1);
    g1->x = g->x + x;
    g1->y = g->y + y;
    if (connectgate(g1))
      drawgatex(g1);
    else {
      frygate(g1);
      disposegate(&g1);
      clipon();
    }
    g = g->next;
  }
  clipoff();
  hw = bases->hwcopy;
  while (hw != ((void *)0) ) {
    addhwire(hw->x1 + x, hw->x2 + x, hw->y + y, hw->wcolr);
    hw = hw->next;
  }
  vw = bases->vwcopy;
  while (vw != ((void *)0) ) {
    addvwire(vw->x + x, vw->y1 + y, vw->y2 + y, vw->wcolr);
    vw = vw->next;
  }
  s = bases->scopy;
  while (s != ((void *)0) ) {
    closerwire(s->x + x, s->y + y);
    if (gg.nearhw != ((void *)0)  && gg.nearvw != ((void *)0) ) {
      if (trycombinenodes(&gg.nearvw->node, &gg.nearhw->node)) {
	clipon();
	addsolder(s->x + x, s->y + y, gg.nearhw, ((void *)0) , gg.nearvw, ((void *)0) );
	clipoff();
      } else
	frysolder(s->x + x, s->y + y);
    }
    s = s->next;
  }
  l = bases->lcopy;
  while (l != ((void *)0) ) {
    l1 = (log_lrec *)((__MallocTemp__ = malloc(( sizeof(log_lrec) ) ? ( sizeof(log_lrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
    l1->next = gg.lbase[gg.curpage - 1];
    gg.lbase[gg.curpage - 1] = l1;
    l1->x = l->x + x;
    l1->y = l->y + y;
    strcpy(l1->name, l->name);
    l1->w = m_strwidth(((void *)0)  , l1->name) / 5 ;
 

    l1->temp = (na_long)0;
    clipon();
    m_color((long)gg.color.labeltext);
    if (!gg.textinvisible) {
 

      m_drawstr(l1->x * gg.scale - gg.xoff, l1->y * gg.scale - gg.yoff + 2,
		((void *)0)  , l1->name);
    }
    clipoff();
    chpageplace((int)gg.curpage, l1->x, l1->y, l1->x + l1->w, l1->y + 2);
    stamp(&gg.labelstamp);
    l = l->next;
  }
  b = bases->bcopy;
  while (b != ((void *)0) ) {
    b1 = (log_brec *)((__MallocTemp__ = malloc(( sizeof(log_brec) ) ? ( sizeof(log_brec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
    b1->next = gg.bbase[gg.curpage - 1];
    gg.bbase[gg.curpage - 1] = b1;
    b1->x1 = b->x1 + x;
    b1->y1 = b->y1 + y;
    b1->x2 = b->x2 + x;
    b1->y2 = b->y2 + y;
    b1->temp = (na_long)0;
    clipon();
    if (!gg.textinvisible)
      drawboxc(b1, gg.color.dashbox);
    clipoff();
    chpageplace((int)gg.curpage, b1->x1, b1->y1, b1->x2, b1->y2);
    stamp(&gg.boxstamp);
    b = b->next;
  }
}


static  void  xororiginal()
{
  remcursor();
  clipon();
  m_colormode((long)16 );
  m_color((long)gg.color.dashbox);
  m_linestyle(1L);
  rect(copybuf.x1copy, copybuf.y1copy, copybuf.x2copy, copybuf.y2copy);
  m_linestyle(0L);
  m_colormode((long)0 );
  clipoff();
}



 
 
 
 
 
 
 
 
 

static  void  pastecommand(movemode)
long movemode;
{
  short thepage;
  long max;
  baseptrs deleted;
  long time;
  boolean smallbuf;

  clearfunc();
  if (!copybuf.valid)
    return;
  log_setmode("PASTE");
  smallbuf = (bufissmall(&copybuf) && !bufempty(&copybuf));
  if (smallbuf)
    cursortype = normal;
  else
    cursortype = paste;
  xororiginal();
  waitnear();
  xororiginal();
  do {
    do {
      if (smallbuf) {
	pen();
	checkabort();
	if (!gg.t.dn) {
	  xororiginal();
	  gg.posx = gg.gridx;
	  gg.posy = gg.gridy;
	  max = ((long)(((unsigned long) -1) >> 1)) ;
	  xorcopybuf(&copybuf, gg.posx, gg.posy, &max);
	  while (gg.posx == gg.gridx && gg.posy == gg.gridy && !gg.t.dn &&
		 gg.stillnear && *gg.func == '\0') {
	    pass();
	    trykbd();
	    m_tracking(1L);
	    pen();
	  }
	  xorcopybuf(&copybuf, gg.posx, gg.posy, &max);
	  xororiginal();
	}
      } else {
	xororiginal();
	time = timers_sysclock();
	do {
	  gg.posx = gg.gridx;
	  gg.posy = gg.gridy;
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	  if (gg.posx != gg.gridx || gg.posy != gg.gridy)
	    time = timers_sysclock();
	} while (!(timers_sysclock() - time > 25 || smallbuf || gg.t.dn) &&
		 gg.stillnear && *gg.func == '\0');
	xororiginal();
	scroll();
	checkabort();
	if (gg.posx == gg.gridx && gg.posy == gg.gridy && !gg.t.dn) {
	  xororiginal();
	  max = ((long)(((unsigned long) -1) >> 1)) ;
	  xorcopybuf(&copybuf, gg.posx, gg.posy, &max);
	  while (gg.posx == gg.gridx && gg.posy == gg.gridy && !gg.t.dn &&
		 gg.stillnear && *gg.func == '\0') {
	    pass();
	    trykbd();
	    m_tracking(1L);
	    pen();
	  }
	  xorcopybuf(&copybuf, gg.posx, gg.posy, &max);
	  xororiginal();
	}
      }
      scroll();
      checkabort();
    } while (!gg.t.dn);
    remcursor();
    if (movemode >= 1) {
      if (gg.posx != copybuf.x1copy || gg.posy != copybuf.y1copy ||
	  gg.curpage != copybuf.pgnum) {
	initbuf(&deleted);
	thepage = gg.curpage;
	if (thepage != copybuf.pgnum) {
	  newpage(copybuf.pgnum);
	  refrscreen1();
	}
	cutcopy(&deleted, copybuf.x1copy, copybuf.y1copy, copybuf.x2copy,
		copybuf.y2copy, 1 , 0 );
	if (thepage != copybuf.pgnum) {
	  newpage(thepage);
	  refrscreen1();
	}
	clearbuf(&deleted);
	pastebuf(&copybuf, gg.posx, gg.posy);
      }
      if (movemode == 2)
	movemode = 0;
    } else
      pastebuf(&copybuf, gg.posx, gg.posy);
    gg.refrflag = 1 ;
  } while (movemode != 1);
  cursortype = normal;
  log_setmode("");
}



static  void  extract()
{
  boolean okay;
  short x1, y1, x2, y2;

  okay = pagembb((int)gg.curpage, &x1, &y1, &x2, &y2);
  if (okay)
    cutcopy(&copybuf, x1, y1, x2, y2, 1 , 0 );
  if (!strcmp(gg.funcarg, "*"))
    dumpnodes();
  if (okay)
    pastebuf(&copybuf, x2, y2);
  clearfunc();
}





 
 
 
 
 

static  void  copycommand()
{
  short x1, y1, x2, y2;
  boolean flag;

  log_setmode("COPY");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    flag = getrectangle(&x1, &y1, &x2, &y2, 1 );
    cutcopy(&copybuf, x1, y1, x2, y2, 0 , flag);
    if (!bufempty(&copybuf))
      pastecommand(0L);
  } while (1 );
}





 
 
 
 
 
 
 

static  void  movecommand(waitflag)
boolean waitflag;
{
  short x1, y1, x2, y2;
  boolean flag;

  log_setmode("MOVE");
  clearfunc();
  cursortype = copy_;
  if (waitflag)
    waitnear();
  do {
    flag = getrectangle(&x1, &y1, &x2, &y2, waitflag);
    cutcopy(&copybuf, x1, y1, x2, y2, 0 , flag);
    if (!bufempty(&copybuf)) {
      if (waitflag)
	pastecommand(1L);
      else
	pastecommand(2L);
    }
  } while (waitflag);
  _Escape(5);
}




static  void  OLDmovecommand()
{
  short x1, y1, oldpg, stillhere;
  baseptrs buf;
  long max;

  log_setmode("MOVE");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    gg.posx = gg.gridx;
    gg.posy = gg.gridy;
    pass();
    trykbdscroll();
    pen();
  } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
  while (gg.incircuit && gg.stillnear && *gg.func == '\0') {
    x1 = gg.posx;
    y1 = gg.posy;
    do {
      pen();
      x1 = gg.gridx;
      y1 = gg.gridy;
      m_colormode((long)16 );
      m_color((long)gg.color.select);
      rect(gg.posx, gg.posy, x1, y1);
      m_colormode((long)0 );
      do {
	pass();
	trykbd();
	pen();
      } while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
	       *gg.func == '\0');
      m_colormode((long)16 );
      m_color((long)gg.color.select);
      rect(gg.posx, gg.posy, x1, y1);
      m_colormode((long)0 );
      scroll();
    } while ((gg.t.depressed || abs(x1 - gg.posx) < 2 ||
	      abs(y1 - gg.posy) < 2) && *gg.func == '\0');
    sortshints(&gg.posx, &x1);
    sortshints(&gg.posy, &y1);
    remcursor();
    if (!(gg.incircuit && *gg.func == '\0'))
      continue;
    buf.gcopy = ((void *)0) ;
    buf.scopy = ((void *)0) ;
    buf.hwcopy = ((void *)0) ;
    buf.vwcopy = ((void *)0) ;
    buf.lcopy = ((void *)0) ;
    buf.bcopy = ((void *)0) ;
    cutcopy(&buf, gg.posx, gg.posy, x1, y1, 0 , 0 );
    oldpg = gg.curpage;
    cursortype = paste;
    clipon();
    m_color((long)gg.color.dashbox);
    m_linestyle(1L);
    rect(buf.x1copy, buf.y1copy, buf.x2copy, buf.y2copy);
    m_linestyle(0L);
    clipoff();
    do {
      stillhere = 50;
      do {
	gg.posx = gg.gridx;
	gg.posy = gg.gridy;
	pass();
	trykbd();
	if (!strcmp(gg.func, "REFR")) {
	  scroll();
	  clipon();
	  m_color((long)gg.color.dashbox);
	  m_linestyle(1L);
	  rect(buf.x1copy, buf.y1copy, buf.x2copy, buf.y2copy);
	  m_linestyle(0L);
	  clipoff();
	}
	pen();
	stillhere--;
      } while (!(gg.posx != gg.gridx || gg.posy != gg.gridy ||
		 stillhere < 0 ||
		 gg.t.dn) && gg.stillnear && *gg.func == '\0');
      if (gg.posx == gg.gridx && gg.posy == gg.gridy && !gg.t.dn &&
	  gg.stillnear && *gg.func == '\0') {
	remcursor();
	max = ((long)(((unsigned long) -1) >> 1)) ;
	xorcopybuf(&buf, gg.posx, gg.posy, &max);
	restorecursor();
	while (gg.posx == gg.gridx && gg.posy == gg.gridy && !gg.t.dn &&
	       gg.stillnear && *gg.func == '\0') {
	  pass();
	  trykbd();
	  pen();
	}
	remcursor();
	xorcopybuf(&buf, gg.posx, gg.posy, &max);
	restorecursor();
      }
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    remcursor();
    clipon();
    m_color((long)gg.color.backgr);
    rect(buf.x1copy, buf.y1copy, buf.x2copy, buf.y2copy);
    clipoff();
    if (gg.incircuit && gg.stillnear && *gg.func == '\0')
      pastebuf(&buf, gg.posx, gg.posy);
    clearbuf(&buf);
    refreshsoon();
  }
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}


static  boolean near_(x, y)
short x, y;
{
  return (abs(x - y) < 2);
}






 
 
 
 
 

static  void  moveobject()
{
  short gtype, x1, y1, yy, hx1, hx2, hy, vx, vy1, vy2, hc, vc, oldpg, newpg,
	oldx1, oldy1, oldx2, oldy2;
  boolean fh1, fv1, fh2, fv2, oo;
  log_srec *s;
  log_hwrec *hw1;
  log_vwrec *vw1;
  blobrec *blbase, *blp;

  closergate(gg.posx, gg.posy);
  oldpg = gg.curpage;
  gg.gridx = gg.posx;
  gg.gridy = gg.posy;
  if (gg.markers && (gg.gridx == gg.markerx1 && gg.gridy == gg.markery1 ||
		     gg.gridx == gg.markerx2 && gg.gridy == gg.markery2)) {
    remcursor();
    drawmarkersc(gg.color.backgr);
    gg.markers = 0 ;
    stamp(&gg.markerstamp);
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      m_colormode((long)16 );
      drawmarkersc(gg.color.marker);
      m_colormode((long)0 );
      do {
	pass();
	trykbd();
	m_tracking(1L);
	pen();
      } while (gg.gridx == gg.posx && gg.gridy == gg.posy && gg.t.depressed &&
	       strcmp(gg.func, "REFR"));
      m_colormode((long)16 );
      drawmarkersc(gg.color.marker);
      m_colormode((long)0 );
      if (gg.posx == gg.markerx1 && gg.posy == gg.markery1 &&
	  gg.gridx < gg.markerx2 && gg.gridy < gg.markery2 && gg.incircuit) {
	gg.markerx1 = gg.gridx;
	gg.markery1 = gg.gridy;
      } else if (gg.posx == gg.markerx2 && gg.posy == gg.markery2 &&
		 gg.gridx > gg.markerx1 && gg.gridy > gg.markery1 &&
		 gg.incircuit) {
	gg.markerx2 = gg.gridx;
	gg.markery2 = gg.gridy;
      }
      scroll();
    } while (gg.t.depressed);
    stamp(&gg.markerstamp);
    gg.markers = 1 ;
    remcursor();
    drawmarkersc(gg.color.marker);
    refreshsoon();
    gg.startpoint = 0 ;
    return;
  }
  if (gg.nearlabel != ((void *)0) ) {
    remcursor();
    oldx1 = gg.nearlabel->x;
    oldy1 = gg.nearlabel->y;
    oldx2 = oldx1 + gg.nearlabel->w;
    oldy2 = oldy1 + 2;
    chpageplace((int)gg.curpage, oldx1, oldy1, oldx2, oldy2);
    stamp(&gg.labelstamp);
    clipon();
    eralabel(gg.nearlabel);
    clipoff();
    x1 = gg.nearlabel->x - gg.posx;
    y1 = gg.nearlabel->y - gg.posy;
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      oo = gg.t.off;
      clipon();
      xorlabel(gg.posx + x1, gg.posy + y1, gg.nearlabel);
      clipoff();
      do {
	pass();
	trykbd();
	m_tracking(1L);
	pen();
      } while (gg.gridx == gg.posx && gg.gridy == gg.posy && gg.t.depressed &&
	       strcmp(gg.func, "REFR"));
      clipon();
      xorlabel(gg.posx + x1, gg.posy + y1, gg.nearlabel);
      clipoff();
      if (!strcmp(gg.func, "REFR")) {
	scroll();
	clipon();
	eralabel(gg.nearlabel);
	clipoff();
      }
    } while (gg.t.depressed);
    remcursor();
    chpageplace(oldpg, oldx1, oldy1, oldx2, oldy2);
    if (gg.incircuit && !oo && !gg.t.off) {
      gg.posx += x1;
      gg.posy += y1;
      gg.nearlabel->x = gg.posx;
      gg.nearlabel->y = gg.posy;
      if (gg.curpage != oldpg) {
	newpg = gg.curpage;
	gg.curpage = oldpg;
	unlinklabel(gg.nearlabel);
	gg.curpage = newpg;
	linklabel(gg.nearlabel);
      }
      m_color((long)gg.color.labeltext);
 

      m_drawstr(gg.posx * gg.scale - gg.xoff,
		gg.posy * gg.scale - gg.yoff + 2, ((void *)0)  ,
		gg.nearlabel->name);
      gg.refrflag = 1 ;
      chpageplace((int)gg.curpage, gg.nearlabel->x, gg.nearlabel->y,
		  gg.nearlabel->x + gg.nearlabel->w, gg.nearlabel->y + 2);
    } else {
      newpg = gg.curpage;
      gg.curpage = oldpg;
      displabel(&gg.nearlabel);
      gg.curpage = newpg;
    }
    stamp(&gg.labelstamp);
    refreshsoon();
    gg.startpoint = 0 ;
    return;
  }
  if (gg.nearbox != ((void *)0) ) {
    remcursor();
    oldx1 = gg.nearbox->x1;
    oldy1 = gg.nearbox->y1;
    oldx2 = gg.nearbox->x2;
    oldy2 = gg.nearbox->y2;
    chpageplace((int)gg.curpage, oldx1, oldy1, oldx2, oldy2);
    stamp(&gg.boxstamp);
    clipon();
    drawboxc(gg.nearbox, gg.color.backgr);
    clipoff();
    hx1 = gg.nearbox->x1;
    hx2 = gg.nearbox->x2;
    vy1 = gg.nearbox->y1;
    vy2 = gg.nearbox->y2;
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      oo = gg.t.off;
      clipon();
      m_colormode((long)16 );
      drawboxc0(hx1, vy1, hx2, vy2, gg.color.dashbox);
      m_colormode((long)0 );
      clipoff();
      do {
	pass();
	trykbd();
	m_tracking(1L);
	pen();
      } while (gg.gridx == gg.posx && gg.gridy == gg.posy && gg.t.depressed &&
	       strcmp(gg.func, "REFR"));
      clipon();
      m_colormode((long)16 );
      drawboxc0(hx1, vy1, hx2, vy2, gg.color.dashbox);
      m_colormode((long)0 );
      clipoff();
      if (near_(gg.posx, hx1) && near_(gg.posy, vy1)) {
	hx1 = gg.gridx;
	vy1 = gg.gridy;
      } else if (near_(gg.posx, hx1) && near_(gg.posy, vy2)) {
	hx1 = gg.gridx;
	vy2 = gg.gridy;
      } else if (near_(gg.posx, hx2) && near_(gg.posy, vy1)) {
	hx2 = gg.gridx;
	vy1 = gg.gridy;
      } else if (near_(gg.posx, hx2) && near_(gg.posy, vy2)) {
	hx2 = gg.gridx;
	vy2 = gg.gridy;
      } else {
	hx1 += gg.gridx - gg.posx;
	hx2 += gg.gridx - gg.posx;
	vy1 += gg.gridy - gg.posy;
	vy2 += gg.gridy - gg.posy;
      }
      if (!strcmp(gg.func, "REFR")) {
	scroll();
	clipon();
	drawboxc(gg.nearbox, gg.color.backgr);
	clipoff();
      }
    } while (gg.t.depressed);
    remcursor();
    sortshints(&hx1, &hx2);
    sortshints(&vy1, &vy2);
    gg.nearbox->x1 = hx1;
    gg.nearbox->x2 = hx2;
    gg.nearbox->y1 = vy1;
    gg.nearbox->y2 = vy2;
    chpageplace(oldpg, oldx1, oldy1, oldx2, oldy2);
    if (gg.incircuit && !oo && !gg.t.off) {
      if (gg.curpage != oldpg) {
	newpg = gg.curpage;
	gg.curpage = oldpg;
	unlinkbox(gg.nearbox);
	gg.curpage = newpg;
	linkbox(gg.nearbox);
      }
      clipon();
      drawboxc(gg.nearbox, gg.color.dashbox);
      clipoff();
      chpageplace((int)gg.curpage, gg.nearbox->x1, gg.nearbox->y1,
		  gg.nearbox->x2, gg.nearbox->y2);
      gg.refrflag = 1 ;
    } else {
      newpg = gg.curpage;
      gg.curpage = oldpg;
      dispbox(&gg.nearbox);
      gg.curpage = newpg;
    }
    stamp(&gg.boxstamp);
    refreshsoon();
    gg.startpoint = 0 ;
    return;
  }
  if (gg.neargate != ((void *)0) ) {
    gtype = gg.neargate->g;
    remcursor();
    clipon();
    eragate(gg.neargate);
    clipoff();
    disconnectgate(gg.neargate);
    x1 = gg.neargate->x - gg.posx;
    y1 = gg.neargate->y - gg.posy;
    do {
      yy = gg.t.y;
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      oo = gg.t.off;
      movexorgate(gg.posx + x1, gg.posy + y1, gtype, gg.neargate->sig, yy);
      do {
	pass();
	trykbd();
	m_tracking(1L);
	pen();
      } while (gg.gridx == gg.posx && gg.gridy == gg.posy && gg.t.depressed &&
	       strcmp(gg.func, "REFR"));
      movexorgate(gg.posx + x1, gg.posy + y1, gtype, gg.neargate->sig, yy);
      scroll();
    } while (gg.t.depressed);
    remcursor();
    if (gg.incircuit && !oo && !gg.t.off) {
      gg.posx += x1;
      gg.posy += y1;
      gg.neargate->x = gg.posx;
      gg.neargate->y = gg.posy;
      clipon();
      drawgatex(gg.neargate);
      clipoff();
      if (!connectgate(gg.neargate)) {
	frygate(gg.neargate);
	disposegate(&gg.neargate);
      }
      gg.refrflag = 1 ;
    } else if (gg.t.y >= baseline) {
      changekind(gg.neargate->g, gg.neargate->sig, gg.neargate->attr);
      disposegate(&gg.neargate);
    } else
      disposegate(&gg.neargate);
    refreshsoon();
    gg.startpoint = 0 ;
    return;
  }
  closerwire(gg.posx, gg.posy);
  if (gg.nearhw == ((void *)0)  && gg.nearvw == ((void *)0) ) {
    gg.startpoint = 0 ;
    assertfunc("MOVE *");
    return;
  }
  remcursor();
  clipon();
  m_color((long)gg.color.backgr);
  if (gg.nearhw != ((void *)0) ) {
    hx1 = gg.nearhw->x1;
    hx2 = gg.nearhw->x2;
    hy = gg.nearhw->y;
    fh1 = (gg.posx == hx1 && gg.posy == hy);
    fh2 = (gg.posx == hx2 && gg.posy == hy);
    hline(hx1, hx2, hy);
    gg.movinghw = gg.nearhw;
    hc = gg.nearhw->wcolr;
  }
  if (gg.nearvw != ((void *)0) ) {
    vx = gg.nearvw->x;
    vy1 = gg.nearvw->y1;
    vy2 = gg.nearvw->y2;
    fv1 = (gg.posy == vy1 && gg.posx == vx);
    fv2 = (gg.posy == vy2 && gg.posx == vx);
    vline(vx, vy1, vy2);
    gg.movingvw = gg.nearvw;
    vc = gg.nearvw->wcolr;
  }
  blbase = ((void *)0) ;
  s = gg.sbase[gg.curpage - 1];
  while (s != ((void *)0) ) {
    if (gg.nearhw != ((void *)0)  && (s->hwire == gg.nearhw || s->hwire2 == gg.nearhw) ||
	gg.nearvw != ((void *)0)  && (s->vwire == gg.nearvw || s->vwire2 == gg.nearvw)) {
      drawsolderc(s->x, s->y, gg.color.backgr);
      blp = (blobrec *)((__MallocTemp__ = malloc(( sizeof(blobrec) ) ? ( sizeof(blobrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      if (s->hwire == gg.nearhw)
	blp->hw = ((void *)0) ;
      else
	blp->hw = s->hwire;
      if (s->vwire == gg.nearvw)
	blp->vw = ((void *)0) ;
      else
	blp->vw = s->vwire;
      blp->next = blbase;
      blbase = blp;
    }
    s = s->next;
  }
  clipoff();
  do {
    gg.posx = gg.gridx;
    gg.posy = gg.gridy;
    oo = gg.t.off;
    clipon();
    m_colormode((long)16 );
    if (gg.nearhw != ((void *)0) ) {
      if (fh1) {
	hx1 = gg.posx;
	hy = gg.posy;
      } else if (fh2) {
	hx2 = gg.posx;
	hy = gg.posy;
      } else {
	if (gg.posx < hx1)
	  hx1 = gg.posx;
	if (gg.posx > hx2)
	  hx2 = gg.posx;
	hy = gg.posy;
      }
      m_color((long)gg.color.wire[gg.nearhw->wcolr - 0 ]);
      hline(hx1, hx2, hy);
    }
    if (gg.nearvw != ((void *)0) ) {
      if (fv1) {
	vy1 = gg.posy;
	vx = gg.posx;
      } else if (fv2) {
	vy2 = gg.posy;
	vx = gg.posx;
      } else {
	if (gg.posy < vy1)
	  vy1 = gg.posy;
	if (gg.posy > vy2)
	  vy2 = gg.posy;
	vx = gg.posx;
      }
      m_color((long)gg.color.wire[gg.nearvw->wcolr - 0 ]);
      vline(vx, vy1, vy2);
    }
    m_colormode((long)0 );
    clipoff();
    do {
      pass();
      trykbd();
      m_tracking(1L);
      pen();
    } while (gg.gridx == gg.posx && gg.gridy == gg.posy && gg.t.depressed &&
	     strcmp(gg.func, "REFR"));
    clipon();
    m_colormode((long)16 );
    if (gg.nearhw != ((void *)0) ) {
      m_color((long)gg.color.wire[gg.nearhw->wcolr - 0 ]);
      hline(hx1, hx2, hy);
    }
    if (gg.nearvw != ((void *)0) ) {
      m_color((long)gg.color.wire[gg.nearvw->wcolr - 0 ]);
      vline(vx, vy1, vy2);
    }
    m_colormode((long)0 );
    clipoff();
    scroll();
  } while (gg.t.depressed);
  working();
  gg.movinghw = ((void *)0) ;
  gg.movingvw = ((void *)0) ;
  remcursor();
  gg.curpage = oldpg;
  if (gg.nearhw != ((void *)0) )
    delhwire(gg.nearhw);
  else {
    hx1 = 0;
    hx2 = 0;
  }
  if (gg.nearvw != ((void *)0) )
    delvwire(gg.nearvw);
  else {
    vy1 = 0;
    vy2 = 0;
  }
  gg.curpage = realcurpage;
  if (gg.incircuit && !oo && !gg.t.off) {
    blp = blbase;
    while (blp != ((void *)0) ) {
      if (blp->hw != ((void *)0) ) {
	hw1 = gg.hwbase[gg.curpage - 1];
	while (hw1 != ((void *)0)  &&
	       (hw1->node != blp->hw->node ||
		!P_ibetween((long)hw1->x1, (long)vx, (long)hw1->x2) ||
		!P_ibetween((long)vy1, (long)hw1->y, (long)vy2)))
	  hw1 = hw1->next;
	if (hw1 != ((void *)0) ) {
	  blp->x = vx;
	  blp->y = hw1->y;
	} else
	  blp->x = -32768L;
      } else if (blp->vw != ((void *)0) ) {
	vw1 = gg.vwbase[gg.curpage - 1];
	while (vw1 != ((void *)0)  &&
	       (vw1->node != blp->vw->node ||
		!P_ibetween((long)vw1->y1, (long)hy, (long)vw1->y2) ||
		!P_ibetween((long)hx1, (long)vw1->x, (long)hx2)))
	  vw1 = vw1->next;
	if (vw1 != ((void *)0) ) {
	  blp->x = vw1->x;
	  blp->y = hy;
	} else
	  blp->x = -32768L;
      } else {
	blp->x = vx;
	blp->y = hy;
      }
      blp = blp->next;
    }
    if (hx1 != hx2)
      addhwire(hx1, hx2, hy, hc);
    if (vy1 != vy2)
      addvwire(vx, vy1, vy2, vc);
    doblobs(blbase);
  }
  dispblobs(&blbase);
  refreshsoon();
  gg.startpoint = 0 ;

   
   
}







static  void  shiftgate(g, dx, dy)
log_grec *g;
short dx, dy;
{
  short i, FORLIM;
  log_pinposrec *WITH;

  g->x += dx;
  g->y += dy;
  FORLIM = g->kind->numpins;
  for (i = 0; i < FORLIM; i++) {
    WITH = &g->pinpos[i];
    WITH->x += dx;
    WITH->y += dy;
  }
}


static  void  xorrect(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  short y3;

  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  y3 = (y1 + y2) / 2;
  m_colormode((long)16 );
  m_color((long)gg.color.select);
  rect(x1, y1, x2, y2);
  hline(x1, x2, y3);
  line(x2 - 1, y3 - 1, x2, y3);
  line(x2 - 1, y3 + 1, x2, y3);
  m_colormode((long)0 );
}






 
 
 
 
 

static  void  openhoriz()
{
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_lrec *l;
  log_brec *b;
  short x1, y1;
  boolean flag;

  log_setmode("OPNH");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    m_tracking(0L);
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      pass();
      trykbdscroll();
      pen();
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    if (gg.incircuit && gg.stillnear && *gg.func == '\0') {
      x1 = gg.posx;
      y1 = gg.posy;
      do {
	pen();
	x1 = gg.gridx;
	y1 = gg.gridy;
	xorrect(gg.posx, gg.posy, x1, y1);
	do {
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	} while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
		 *gg.func == '\0');
	xorrect(gg.posx, gg.posy, x1, y1);
	scroll();
      } while ((gg.t.depressed || x1 == gg.posx || y1 == gg.posy) &&
	       *gg.func == '\0');
      sortshints(&gg.posx, &x1);
      sortshints(&gg.posy, &y1);
      remcursor();
      if (gg.incircuit && *gg.func == '\0') {
	chpage((int)gg.curpage);
	vw = gg.vwbase[gg.curpage - 1];
	flag = 0 ;
	while (vw != ((void *)0) ) {
	  if (vw->x > gg.posx &&
	      (vw->y1 < gg.posy && gg.posy < vw->y2 ||
	       vw->y1 < y1 && y1 < vw->y2))
	    flag = 1 ;
	  vw = vw->next;
	}
	if (!flag) {
	  g = gg.gbase[gg.curpage - 1];
	  while (g != ((void *)0) ) {
	    if (gg.posy <= g->y && g->y <= y1 && g->x >= gg.posx)
	      shiftgate(g, x1 - gg.posx, 0);
	    g = g->next;
	  }
	  s = gg.sbase[gg.curpage - 1];
	  while (s != ((void *)0) ) {
	    if (!vlsi && gg.posy <= s->vwire->y2 && s->vwire->y1 <= y1 &&
		s->vwire->x > gg.posx)
	      s->x += x1 - gg.posx;
	    s = s->next;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    if (gg.posy <= hw->y && hw->y <= y1) {
	      if (hw->x1 > gg.posx)
		hw->x1 += x1 - gg.posx;
	      if (hw->x2 >= gg.posx)
		hw->x2 += x1 - gg.posx;
	    }
	    hw = hw->next;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    if (gg.posy <= vw->y2 && vw->y1 <= y1 && vw->x > gg.posx)
	      vw->x += x1 - gg.posx;
	    vw = vw->next;
	  }
	  b = gg.bbase[gg.curpage - 1];
	  while (b != ((void *)0) ) {
	    if (gg.posy <= b->y1 && b->y2 <= y1) {
	      if (b->x1 >= gg.posx)
		b->x1 += x1 - gg.posx;
	      if (b->x2 >= gg.posx)
		b->x2 += x1 - gg.posx;
	    }
	    b = b->next;
	  }
	  l = gg.lbase[gg.curpage - 1];
	  while (l != ((void *)0) ) {
	    if (gg.posy <= l->y && l->y <= y1 && l->x >= gg.posx)
	      l->x += x1 - gg.posx;
	    l = l->next;
	  }
	  refrfunc();
	  scroll();
	} else {
	  beginerror();
	  nc_printf ("Can't Open: Blocked by vertical wires\n");
	  enderror();
	}
      }
    }
  } while (gg.incircuit && gg.stillnear && *gg.func == '\0');
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}


static  void  xorrect_(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  short x3;

  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  x3 = (x1 + x2) / 2;
  m_colormode((long)16 );
  m_color((long)gg.color.select);
  rect(x1, y1, x2, y2);
  vline(x3, y1, y2);
  line(x3 - 1, y2 - 1, x3, y2);
  line(x3 + 1, y2 - 1, x3, y2);
  m_colormode((long)0 );
}



 
 
 
 
 

static  void  openvert()
{
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_lrec *l;
  log_brec *b;
  short x1, y1;
  boolean flag;

  log_setmode("OPNV");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    m_tracking(0L);
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      pass();
      trykbdscroll();
      pen();
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    if (gg.incircuit && gg.stillnear && *gg.func == '\0') {
      x1 = gg.posx;
      y1 = gg.posy;
      do {
	x1 = gg.gridx;
	y1 = gg.gridy;
	xorrect_(gg.posx, gg.posy, x1, y1);
	do {
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	} while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
		 *gg.func == '\0');
	xorrect_(gg.posx, gg.posy, x1, y1);
	scroll();
      } while ((gg.t.depressed || x1 == gg.posx || y1 == gg.posy) &&
	       *gg.func == '\0');
      sortshints(&gg.posx, &x1);
      sortshints(&gg.posy, &y1);
      remcursor();
      if (gg.incircuit && *gg.func == '\0') {
	chpage((int)gg.curpage);
	hw = gg.hwbase[gg.curpage - 1];
	flag = 0 ;
	while (hw != ((void *)0) ) {
	  if (hw->y > gg.posy &&
	      (hw->x1 < gg.posx && gg.posx < hw->x2 ||
	       hw->x1 < x1 && x1 < hw->x2))
	    flag = 1 ;
	  hw = hw->next;
	}
	if (!flag) {
	  g = gg.gbase[gg.curpage - 1];
	  while (g != ((void *)0) ) {
	    if (gg.posx <= g->x && g->x <= x1 && g->y >= gg.posy)
	      shiftgate(g, 0, y1 - gg.posy);
	    g = g->next;
	  }
	  s = gg.sbase[gg.curpage - 1];
	  while (s != ((void *)0) ) {
	    if (!vlsi && gg.posx <= s->hwire->x2 && s->hwire->x1 <= x1 &&
		s->hwire->y > gg.posy)
	      s->y += y1 - gg.posy;
	    s = s->next;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    if (gg.posx <= vw->x && vw->x <= x1) {
	      if (vw->y1 > gg.posy)
		vw->y1 += y1 - gg.posy;
	      if (vw->y2 >= gg.posy)
		vw->y2 += y1 - gg.posy;
	    }
	    vw = vw->next;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    if (gg.posx <= hw->x2 && hw->x1 <= x1 && hw->y > gg.posy)
	      hw->y += y1 - gg.posy;
	    hw = hw->next;
	  }
	  b = gg.bbase[gg.curpage - 1];
	  while (b != ((void *)0) ) {
	    if (gg.posx <= b->x1 && b->x2 <= x1) {
	      if (b->y1 >= gg.posy)
		b->y1 += y1 - gg.posy;
	      if (b->y2 >= gg.posy)
		b->y2 += y1 - gg.posy;
	    }
	    b = b->next;
	  }
	  l = gg.lbase[gg.curpage - 1];
	  while (l != ((void *)0) ) {
	    if (gg.posx <= l->x && l->x <= x1 && l->y >= gg.posy)
	      l->y += y1 - gg.posy;
	    l = l->next;
	  }
	  refrfunc();
	  scroll();
	} else {
	  beginerror();
	  nc_printf ("Can't Open: Blocked by horizontal wires\n");
	  enderror();
	}
      }
    }
  } while (gg.incircuit && gg.stillnear && *gg.func == '\0');
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}


static  void  xorrect__(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  short y3;

  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  y3 = (y1 + y2) / 2;
  m_colormode((long)16 );
  m_color((long)gg.color.select);
  rect(x1, y1, x2, y2);
  hline(x1, x2, y3);
  line(x1 + 1, y3 - 1, x1, y3);
  line(x1 + 1, y3 + 1, x1, y3);
  m_colormode((long)0 );
}



 
 
 
 
 

static  void  closehoriz()
{
  log_grec *g, *g1;
  log_hwrec *hw, *hw1;
  log_vwrec *vw, *vw1;
  log_srec *s, *s1;
  log_lrec *l, *l1;
  log_brec *b, *b1;
  short x1, y1;
  boolean flag;

  log_setmode("CLSH");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    m_tracking(0L);
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      pass();
      trykbdscroll();
      pen();
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    if (gg.incircuit && gg.stillnear && *gg.func == '\0') {
      x1 = gg.posx;
      y1 = gg.posy;
      do {
	x1 = gg.gridx;
	y1 = gg.gridy;
	xorrect__(gg.posx, gg.posy, x1, y1);
	do {
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	} while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
		 *gg.func == '\0');
	xorrect__(gg.posx, gg.posy, x1, y1);
	scroll();
      } while ((gg.t.depressed || x1 == gg.posx || y1 == gg.posy) &&
	       *gg.func == '\0');
      sortshints(&gg.posx, &x1);
      sortshints(&gg.posy, &y1);
      remcursor();
      if (gg.incircuit && *gg.func == '\0') {
	chpage((int)gg.curpage);
	vw = gg.vwbase[gg.curpage - 1];
	flag = 0 ;
	while (vw != ((void *)0) ) {
	  if (vw->x >= gg.posx &&
	      (vw->y1 < gg.posy && gg.posy < vw->y2 ||
	       vw->y1 < y1 && y1 < vw->y2))
	    flag = 1 ;
	  vw = vw->next;
	}
	if (!flag) {
	  g = gg.gbase[gg.curpage - 1];
	  while (g != ((void *)0) ) {
	    g1 = g->next;
	    if (gg.posy <= g->y && g->y <= y1 && g->x >= gg.posx) {
	      if (g->x <= x1)
		delgate(g);
	      else
		shiftgate(g, gg.posx - x1, 0);
	    }
	    g = g1;
	  }
	  s = gg.sbase[gg.curpage - 1];
	  while (s != ((void *)0) ) {
	    s1 = s->next;
	    if (!vlsi && gg.posy <= s->vwire->y2 && s->vwire->y1 <= y1 &&
		s->vwire->x >= gg.posx) {
	      if (s->vwire->x > x1)
		s->x += gg.posx - x1;
	    }
	    s = s1;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    hw1 = hw->next;
	    if (gg.posy <= hw->y && hw->y <= y1 && hw->x2 >= gg.posx) {
	      if (hw->x1 >= gg.posx && hw->x2 < x1)
		delhwire(hw);
	    }
	    hw = hw1;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    vw1 = vw->next;
	    if (gg.posy <= vw->y2 && vw->y1 <= y1 && vw->x >= gg.posx &&
		vw->x <= x1)
	      delvwire(vw);
	    vw = vw1;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    if (gg.posy <= hw->y && hw->y <= y1 && hw->x2 >= gg.posx) {
	      if (hw->x1 >= gg.posx) {
		if (hw->x1 < x1)
		  hw->x1 = gg.posx;
		else {
		  hw->x1 += gg.posx - x1;
		  hw->x2 += gg.posx - x1;
		}
	      } else if (hw->x2 >= x1)
		hw->x2 += gg.posx - x1;
	      else if (hw->x2 >= gg.posx)
		hw->x2 = gg.posx;
	    }
	    hw = hw->next;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    if (gg.posy <= vw->y2 && vw->y1 <= y1 && vw->x >= gg.posx)
	      vw->x += gg.posx - x1;
	    vw = vw->next;
	  }
	  b = gg.bbase[gg.curpage - 1];
	  while (b != ((void *)0) ) {
	    b1 = b->next;
	    if (gg.posy <= b->y1 && b->y2 <= y1) {
	      if (b->x1 >= x1) {
		b->x1 += gg.posx - x1;
		b->x2 += gg.posx - x1;
	      } else if (b->x1 >= gg.posx) {
		if (b->x2 < x1)
		  dispbox(&b);
		else {
		  b->x1 = gg.posx;
		  b->x2 += gg.posx - x1;
		}
	      } else if (b->x2 >= x1)
		b->x2 += gg.posx - x1;
	      else if (b->x2 >= gg.posx)
		b->x2 = gg.posx;
	    }
	    b = b1;
	  }
	  l = gg.lbase[gg.curpage - 1];
	  while (l != ((void *)0) ) {
	    l1 = l->next;
	    if (gg.posy <= l->y && l->y <= y1 && l->x >= gg.posx) {
	      if (l->x + strlen(gg.nearlabel->name) * 7 / gg.scale <= x1)
		displabel(&l);
	      else
		l->x += gg.posx - x1;
	    }
	    l = l1;
	  }
	  refrfunc();
	  scroll();
	} else {
	  beginerror();
	  nc_printf ("Can't Close: Blocked by vertical wires\n");
	  enderror();
	}
      }
    }
  } while (gg.incircuit && gg.stillnear && *gg.func == '\0');
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}


static  void  xorrect___(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  short x3;

  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  x3 = (x1 + x2) / 2;
  m_colormode((long)16 );
  m_color((long)gg.color.select);
  rect(x1, y1, x2, y2);
  vline(x3, y1, y2);
  line(x3 - 1, y1 + 1, x3, y1);
  line(x3 + 1, y1 + 1, x3, y1);
  m_colormode((long)0 );
}



 
 
 
 
 

static  void  closevert()
{
  log_grec *g, *g1;
  log_hwrec *hw, *hw1;
  log_vwrec *vw, *vw1;
  log_srec *s, *s1;
  log_lrec *l, *l1;
  log_brec *b, *b1;
  short x1, y1;
  boolean flag;

  log_setmode("CLSV");
  clearfunc();
  cursortype = copy_;
  waitnear();
  do {
    m_tracking(0L);
    do {
      gg.posx = gg.gridx;
      gg.posy = gg.gridy;
      pass();
      trykbdscroll();
      pen();
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    if (gg.incircuit && gg.stillnear && *gg.func == '\0') {
      x1 = gg.posx;
      y1 = gg.posy;
      do {
	x1 = gg.gridx;
	y1 = gg.gridy;
	xorrect___(gg.posx, gg.posy, x1, y1);
	do {
	  pass();
	  trykbd();
	  m_tracking(1L);
	  pen();
	} while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
		 *gg.func == '\0');
	xorrect___(gg.posx, gg.posy, x1, y1);
	scroll();
      } while ((gg.t.depressed || x1 == gg.posx || y1 == gg.posy) &&
	       *gg.func == '\0');
      sortshints(&gg.posx, &x1);
      sortshints(&gg.posy, &y1);
      remcursor();
      if (gg.incircuit && *gg.func == '\0') {
	chpage((int)gg.curpage);
	hw = gg.hwbase[gg.curpage - 1];
	flag = 0 ;
	while (hw != ((void *)0) ) {
	  if (hw->y >= gg.posy &&
	      (hw->x1 < gg.posx && gg.posx < hw->x2 ||
	       hw->x1 < x1 && x1 < hw->x2))
	    flag = 1 ;
	  hw = hw->next;
	}
	if (!flag) {
	  g = gg.gbase[gg.curpage - 1];
	  while (g != ((void *)0) ) {
	    g1 = g->next;
	    if (gg.posx <= g->x && g->x <= x1 && g->y >= gg.posy) {
	      if (g->y <= y1)
		delgate(g);
	      else
		shiftgate(g, 0, gg.posy - y1);
	    }
	    g = g1;
	  }
	  s = gg.sbase[gg.curpage - 1];
	  while (s != ((void *)0) ) {
	    s1 = s->next;
	    if (!vlsi && gg.posx <= s->hwire->x2 && s->hwire->x1 <= x1 &&
		s->hwire->y >= gg.posy) {
	      if (s->hwire->y > y1)
		s->y += gg.posy - y1;
	    }
	    s = s1;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    vw1 = vw->next;
	    if (gg.posx <= vw->x && vw->x <= x1 && vw->y2 >= gg.posy) {
	      if (vw->y1 >= gg.posy && vw->y2 < y1)
		delvwire(vw);
	    }
	    vw = vw1;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    hw1 = hw->next;
	    if (gg.posx <= hw->x2 && hw->x1 <= x1 && hw->y >= gg.posy &&
		hw->y <= y1)
	      delhwire(hw);
	    hw = hw1;
	  }
	  vw = gg.vwbase[gg.curpage - 1];
	  while (vw != ((void *)0) ) {
	    if (gg.posx <= vw->x && vw->x <= x1 && vw->y2 >= gg.posy) {
	      if (vw->y1 >= gg.posy) {
		if (vw->y1 < y1)
		  vw->y1 = gg.posy;
		else {
		  vw->y1 += gg.posy - y1;
		  vw->y2 += gg.posy - y1;
		}
	      } else if (vw->y2 >= y1)
		vw->y2 += gg.posy - y1;
	      else if (vw->y2 >= gg.posy)
		vw->y2 = gg.posy;
	    }
	    vw = vw->next;
	  }
	  hw = gg.hwbase[gg.curpage - 1];
	  while (hw != ((void *)0) ) {
	    if (gg.posx <= hw->x2 && hw->x1 <= x1 && hw->y >= gg.posy)
	      hw->y += gg.posy - y1;
	    hw = hw->next;
	  }
	  b = gg.bbase[gg.curpage - 1];
	  while (b != ((void *)0) ) {
	    b1 = b->next;
	    if (gg.posx <= b->x1 && b->x2 <= x1) {
	      if (b->y1 >= y1) {
		b->y1 += gg.posy - y1;
		b->y2 += gg.posy - y1;
	      } else if (b->y1 >= gg.posy) {
		if (b->y2 < y1)
		  dispbox(&b);
		else {
		  b->y1 = gg.posy;
		  b->y2 += gg.posy - y1;
		}
	      } else if (b->y2 >= y1)
		b->y2 += gg.posy - y1;
	      else if (b->y2 >= gg.posy)
		b->y2 = gg.posy;
	    }
	    b = b1;
	  }
	  l = gg.lbase[gg.curpage - 1];
	  while (l != ((void *)0) ) {
	    l1 = l->next;
	    if (gg.posx <= l->x && l->y >= gg.posy &&
		l->x + strlen(gg.nearlabel->name) * 7 / gg.scale <= x1) {
	      if (l->y <= y1)
		displabel(&l);
	      else
		l->y += gg.posy - y1;
	    }
	    l = l1;
	  }
	  refrfunc();
	  scroll();
	} else {
	  beginerror();
	  nc_printf ("Can't Close: Blocked by horizontal wires\n");
	  enderror();
	}
      }
    }
  } while (gg.incircuit && gg.stillnear && *gg.func == '\0');
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}





static  void  centercommand()
{
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_srec *s;
  log_lrec *l;
  log_brec *b;
  short dx, dy, x1, y1, x2, y2;

  if (pagembb((int)gg.curpage, &x1, &y1, &x2, &y2)) {
    dx = (16384  + across / 2) / 5  - (x2 + x1) / 2;
    dy = (16384  + baseline / 2) / 5  - (y2 + y1) / 2;
    g = gg.gbase[gg.curpage - 1];
    while (g != ((void *)0) ) {
      shiftgate(g, dx, dy);
      g = g->next;
    }
    hw = gg.hwbase[gg.curpage - 1];
    while (hw != ((void *)0) ) {
      hw->x1 += dx;
      hw->x2 += dx;
      hw->y += dy;
      hw = hw->next;
    }
    vw = gg.vwbase[gg.curpage - 1];
    while (vw != ((void *)0) ) {
      vw->x += dx;
      vw->y1 += dy;
      vw->y2 += dy;
      vw = vw->next;
    }
    s = gg.sbase[gg.curpage - 1];
    while (s != ((void *)0) ) {
      s->x += dx;
      s->y += dy;
      s = s->next;
    }
    l = gg.lbase[gg.curpage - 1];
    while (l != ((void *)0) ) {
      l->x += dx;
      l->y += dy;
      l = l->next;
    }
    b = gg.bbase[gg.curpage - 1];
    while (b != ((void *)0) ) {
      b->x1 += dx;
      b->x2 += dx;
      b->y1 += dy;
      b->y2 += dy;
      b = b->next;
    }
  }
  xoff0 = 16384  - gg.xoff;
  yoff0 = 16384  - gg.yoff;
  setscale(0);
  refrfunc();
}








 
 
 
 
 
 

static  void  showcatalog()
{
  short i;
  catboxrec *cb;
  short x1, y1, x2, y2, FORLIM;

  clearscreen();
  gg.showpage = (-1) ;
  FORLIM = maxkinds;
  for (i = 1; i <= FORLIM; i++) {
    if (kind[i - 1] != ((void *)0) ) {
 

      udrawgatec((int)(((i - 1) % catwidth * 2 + 1) * 25 ),
		 (int)(((i - 1) / catwidth * 2 + 1) * 25 ), i,
		 gg.color.catgate);
    }
  }
  cb = catboxes;
  while (cb != ((void *)0) ) {
    x1 = (cb->pos - 1) % catwidth * 25  * 2;
 

    y1 = (cb->pos - 1) / catwidth * 25  * 2;
    x2 = ((cb->pos + cb->count - 2) % catwidth + 1) * 25  * 2;
 

    y2 = ((cb->pos + cb->count - 2) / catwidth + 1) * 25  * 2;
    m_color((long)catboxcolor);
    m_linestyle(2L);
    m_drawline((long)x1, (long)y1, (long)x2, (long)y1);
    m_linestyle(2L);
    m_drawline((long)x1, (long)y2, (long)x2, (long)y2);
    m_linestyle(2L);
    m_drawline((long)x1, (long)y1, (long)x1, (long)y2);
    m_linestyle(2L);
    m_drawline((long)x2, (long)y1, (long)x2, (long)y2);
    m_linestyle(0L);
    cb = cb->next;
  }
}




 
 
 
 
 
 
 
 
 
 

static  boolean comparestr(s_, g, t_)
char  *s_;
short g;
char  *t_;
{
  boolean Result;
  char  s[9], t[9];
  char  ch;
  short i;
  boolean match;
  short FORLIM;

  strcpy(s, s_);
  strcpy(t, t_);
  if (*t == '\0' || !strcmp(s, t))
    return (strcmp(s, t) == 0);
  else {
    ch = t[0];
    if (ch == '*' || ch == '?' || ch == '=') {
      strcpy(t, t + 1);
      do {
	match = comparestr(s, g, t);
	if (!match && *s != '\0')
	  strcpy(s, s + 1);
      } while (!(match || *s == '\0'));
      return (match || comparestr(s, g, t));
    } else if (ch == ';') {
      Result = 0 ;
      if (*s != '\0')
	return Result;
      FORLIM = strlen(t);
      for (i = 1; i < FORLIM; i++) {
	if (t[i] == g + 48)
	  Result = 1 ;
      }
      return Result;
    } else if (*s != '\0' && (ch == '%' || ch == s[0])) {
      strcpy(s, s + 1);
      strcpy(t, t + 1);
      return (comparestr(s, g, t));
    } else
      return 0 ;
  }
  return Result;
}





 
struct LOC_readlibrary_at {
  short p, f;
  long dist;
} ;

static  void  readint(LINK)
struct LOC_readlibrary_at *LINK;
{
  if (LINK->p >= 64) {
    (  libf1[LINK->f - 1]->f_BFLAGS   == 1 ? fread(&   libf1[LINK->f - 1]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[LINK->f - 1]->f )) : (  libf1[LINK->f - 1]->f_BFLAGS   = 1)) ;
    LINK->p = 0;
  }
}

static  long readnum(LINK)
struct LOC_readlibrary_at *LINK;
{
  long Result;

  if (LINK->p >= 256) {
    (  libf1[LINK->f - 1]->f_BFLAGS   == 1 ? fread(&   libf1[LINK->f - 1]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[LINK->f - 1]->f )) : (  libf1[LINK->f - 1]->f_BFLAGS   = 1)) ;
    LINK->p = 0;
  }
  Result = (*((  libf1[LINK->f - 1]->f_BFLAGS   == 1 && ((  libf1[LINK->f - 1]->f_BFLAGS   = 2), fread(&   libf1[LINK->f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[LINK->f - 1]->f )))),	&   libf1[LINK->f - 1]->f_BUFFER  )) .b[LINK->p];
  LINK->p++;
  LINK->dist++;
  return Result;
}

static  long readcoord(LINK)
struct LOC_readlibrary_at *LINK;
{
  long i;

  i = readnum(LINK);
  if (i < 128)
    return i;
  else if (i == 128)
    return 0;
  else
    return (i - 256);
}

static  void  bound(k, x, y, LINK)
log_krec *k;
long x, y;
struct LOC_readlibrary_at *LINK;
{
  if (x < k->bbx1)
    k->bbx1 = x;
  if (x > k->bbx2)
    k->bbx2 = x;
  if (y < k->bby1)
    k->bby1 = y;
  if (y > k->bby2)
    k->bby2 = y;
}

static  long uncompress(i, LINK)
long i;
struct LOC_readlibrary_at *LINK;
{
  if (i < 0)
    i += 256;
  if (i == 0)
    return 0;
  else
    return (na_po2(i / 16) * ((i & 15) + 16) * 4);
}


static  descrec *readdesc(rec)
char *rec;
{
       unsigned short i,j1,j2,s1,s2;
       static descrec d;
       d.ptr = getintsw(rec);
       d.numvects = rec[4];
       d.numpins = rec[5];
       d.numpnums= rec[6];
       d.lblsize = rec[7];
       d.simtype = rec[8];
       d.procsize= rec[9];
       d.flag = getshortsw(&(rec[10]));

       if (!bigendian)
	 {
	    
	   d.flag = reverse(d.flag); 
	 }
       d.xx1= rec[12];
       d.yy1= rec[13];
       d.xx2= rec[14];
       d.yy2= rec[15];
       return &d;
}


static  log_pnumrec readpnum(rec)
 char *rec;
{
       static log_pnumrec p;

       p.x = rec[0];
       p.y = rec[1];
       p.num = getshortsw(&(rec[2]));
       return p;
}


 
 
 
 
 
 
 
 

static  short readlibrary_at(n_, where, loadit)
char  *n_;
short where;
boolean loadit;
{
  struct LOC_readlibrary_at V;
  short Result;
  char  n[9];
  short i, i0, i00, j, j0, j00, j000, count;
  long j1;
  na_strlist *l2;
  log_grec *g;
  char  buf[256];
  char  ch, ch2, curcol;
  boolean found, flag;
  log_vectorrec *tempvects;
  char  STR1[256];
  short FORLIM, FORLIM1;
  long TEMP;
  log_krec *WITH;
  descrec *WITH1;
  log_vectorrec *WITH2;
  long FORLIM2;

  strcpy(n, n_);
  working();
  strcpy(n, strrtrim(strcpy(STR1, strltrim(n))));
  found = 0 ;
  count = 0;
  FORLIM = idxsize;
  for (i0 = 1; i0 <= FORLIM; i0++) {
    if (comparestr(index_[i0 - 1], indexgroup[i0 - 1], n)) {
      found = 1 ;
      if (((int)(( loadedgates )[(  i0 - 1 )>>(  3 )-(  0 )] >> (((~(  i0 - 1 ))&((1<<(  3 )-(  0 ))-1)) << (  0 )) & (1<<(1<<(  0 )))-1)) ) {
	i = 0;
	FORLIM1 = maxkinds;
	for (j = 1; j <= FORLIM1; j++) {
	  if (kind[j - 1] != ((void *)0)  && kind[j - 1]->code == i0)
	    i = j;
	}
	goto _L1;
      }
      if (!loadit) {
	count++;
	goto _L1;
      }
      i = where;
      while (i <= maxkinds && kind[i - 1] != ((void *)0) )
	i++;
      if (i > maxkinds) {
	i = 1;
	while (i <= maxkinds && kind[i - 1] != ((void *)0) )
	  i++;
      }
      if (i > maxkinds) {    
	i = libptr;
	do {
	  if (i >= maxkinds)
	    i = 0;
	  i++;
	  flag = 0 ;
	  FORLIM1 = gg.numpages;
	  for (j = 0; j < FORLIM1; j++) {
	    g = gg.gbase[j];
	    while (g != ((void *)0) ) {
	      flag = (flag || (g->g & (256  - 1)) == i);
	      g = g->next;
	    }
	  }
	  FORLIM1 = kindgroupsize;
	  for (j = 0; j < FORLIM1; j++)
	    flag = (flag || (kindgroup[j] & (256  - 1)) == i);
	} while (flag && i != libptr);
	if (flag) {
	  beginerror();
	  nc_printf ("Maximum of %d gate types are in use.\n", maxkinds);
	  enderror();
	  i = 0;
	  goto _L1;
	}
	libptr = i;
	clipoff();
	if (gg.showpage == (-1) ) {
 

	  udrawgatec((int)(((i - 1) % catwidth * 2 + 1) * 25 ),
		     (int)(((i - 1) / catwidth * 2 + 1) * 25 ), i,
		     gg.color.backgr);
	}
	TEMP = kind[i - 1]->code - 1;
	(( loadedgates )[(  TEMP )>>(  3 )-(  0 )] &= ~( ((1<<(1<<(  0 )))-1) << (((~(  TEMP ))&((1<<(  3 )-(  0 ))-1)) << (  0 ))) ) ;
	WITH = kind[i - 1];
	calltoolkind(kind[i - 1], act_disposekind);
	if (WITH->proc != ((void *)0) )
	  (free((Anyptr)( WITH->proc )), ( WITH->proc )= ((void *)0) ) ;
	if (WITH->lbl != ((void *)0) )
	  strlist_empty(&WITH->lbl);
	if (WITH->attr != ((void *)0) )
	  (free((Anyptr)( WITH->attr )), ( WITH->attr )= ((void *)0) ) ;
	if (WITH->vector != ((void *)0) )
	  (free((Anyptr)( WITH->vector )), ( WITH->vector )= ((void *)0) ) ;
	if (WITH->pin != ((void *)0) )
	  (free((Anyptr)( WITH->pin )), ( WITH->pin )= ((void *)0) ) ;
	if (WITH->pnum != ((void *)0) )
	  (free((Anyptr)( WITH->pnum )), ( WITH->pnum )= ((void *)0) ) ;
	(free((Anyptr)( kind[i - 1] )), ( kind[i - 1] )= ((void *)0) ) ;
	kind[i - 1] = ((void *)0) ;
      }
      V.f = indexfile[i0 - 1];
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	i00 = indexoffset[i0 - 1];
	fseek(libf1[V.f - 1]->f,
	      (libfstart[V.f - 1] + (i00 - 1L) / 16 - 1) * sizeof(filerec),
	      0);
	(  libf1[V.f - 1]->f_BFLAGS   = 0) ;
	(  libf1[V.f - 1]->f_BFLAGS   == 1 ? fread(&   libf1[V.f - 1]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[V.f - 1]->f )) : (  libf1[V.f - 1]->f_BFLAGS   = 1)) ;
	WITH1 = readdesc(& (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .b[16*((i00 - 1) &
                15)]);
	kind[i - 1] = (log_krec *)((__MallocTemp__ = malloc(( sizeof(log_krec) ) ? ( sizeof(log_krec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	kind[i - 1]->simtype = findsimtype(WITH1->simtype);
	kind[i - 1]->numvects = WITH1->numvects;
	kind[i - 1]->numpins = WITH1->numpins;
	kind[i - 1]->flag.i = WITH1->flag;
	if (kind[i - 1]->flag.U3.expanded) {
	  kind[i - 1]->bigprocsize = uncompress((long)WITH1->procsize, &V);
	  kind[i - 1]->biglblsize = uncompress((long)WITH1->lblsize, &V);
	  kind[i - 1]->numpnums = 0;
	  kind[i - 1]->bigvectsize = uncompress((long)WITH1->numpnums, &V);
	} else {
	  kind[i - 1]->bigprocsize = WITH1->procsize * 4;
	  kind[i - 1]->biglblsize = WITH1->lblsize * 4;
	  kind[i - 1]->numpnums = WITH1->numpnums;
	}
	kind[i - 1]->x1 = WITH1->xx1;
	kind[i - 1]->y1 = WITH1->yy1;
	kind[i - 1]->x2 = WITH1->xx2;
	kind[i - 1]->y2 = WITH1->yy2;
	j1 = WITH1->ptr;
	fseek(libf1[V.f - 1]->f, j1 / 64 * sizeof(filerec), 0);
	(  libf1[V.f - 1]->f_BFLAGS   = 0) ;
	(  libf1[V.f - 1]->f_BFLAGS   == 1 ? fread(&   libf1[V.f - 1]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[V.f - 1]->f )) : (  libf1[V.f - 1]->f_BFLAGS   = 1)) ;
	WITH = kind[i - 1];
	WITH->code = i0;
	strcpy(WITH->name, index_[i0 - 1]);
	WITH->proc = ((void *)0) ;
	WITH->lbl = ((void *)0) ;
	WITH->attr = ((void *)0) ;
	WITH->vector = ((void *)0) ;
	WITH->pin = ((void *)0) ;
	WITH->pinnames = ((void *)0) ;
	WITH->pnum = ((void *)0) ;
	WITH->info = (na_long)0;
	V.p = j1 & 63;
	WITH->bbx1 = - 5 ;
	WITH->bby1 = - 5 ;
	WITH->bbx2 = 5 ;
	WITH->bby2 = 5 ;
	bound(kind[i - 1], (long)WITH->x1, (long)WITH->y1, &V);
	bound(kind[i - 1], (long)WITH->x2, (long)WITH->y2, &V);
	if (WITH->numvects != 0) {
	  if (WITH->flag.U3.expanded) {
	    tempvects = (log_vectorrec *)
			((__MallocTemp__ = malloc(( WITH->numvects * sizeof(log_vectorrec) * 2 ) ? ( WITH->numvects * sizeof(log_vectorrec) * 2 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	    j = 0;
	    curcol = '1';
	    V.dist = 0;
	    V.p *= 4;
	    FORLIM1 = WITH->numvects;
	    for (j0 = 1; j0 <= FORLIM1; j0++) {
	      ch = (char )readnum(&V);
	      if (ch >= '1' && ch <= '7') {
		do {
		  ch2 = ch;
		  ch = (char )readnum(&V);
		} while (ch >= '1' && ch <= '7');
		if (ch2 != curcol) {
		  j++;
		  tempvects[j - 1].vkind = ch2;
		  tempvects[j - 1].numcoords = 0;
		  curcol = ch2;
		}
	      }
	      j++;
	      WITH2 = &tempvects[j - 1];
	      WITH2->vkind = ch;
	      switch (ch) {

	      case 'v':
	      case 'C':
	      case 'e':
	      case 'E':
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->UU.U99.x2 = readcoord(&V);
		WITH2->UU.U99.y2 = readcoord(&V);
		WITH2->numcoords = 2;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x2,
		      (long)WITH2->UU.U99.y2, &V);
		break;

	      case 'r':
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->UU.U99.x2 = readcoord(&V);
		WITH2->UU.U99.y2 = readcoord(&V);
		WITH2->UU.U98.num = readcoord(&V);
		WITH2->numcoords = 2;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x2,
		      (long)WITH2->UU.U99.y2, &V);
		break;

	      case 'F':
	      case 'c':
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->UU.U99.x2 = readcoord(&V);
		WITH2->UU.U99.y2 = readcoord(&V);
		WITH2->UU.U99.x3 = readcoord(&V);
		WITH2->UU.U99.y3 = readcoord(&V);
		WITH2->UU.U99.x4 = readcoord(&V);
		WITH2->UU.U99.y4 = readcoord(&V);
		WITH2->numcoords = 4;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x2,
		      (long)WITH2->UU.U99.y2, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x3,
		      (long)WITH2->UU.U99.y3, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x4,
		      (long)WITH2->UU.U99.y4, &V);
		break;

	      case 'p':
		WITH2->UU.U98.num = readnum(&V);
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->numcoords = 1;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		break;

	      case 'b':
		WITH2->UU.U98.num = readnum(&V);
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->UU.U99.x2 = readcoord(&V);
		WITH2->UU.U99.y2 = readcoord(&V);
		WITH2->numcoords = 2;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		bound(kind[i - 1], (long)WITH2->UU.U99.x2,
		      (long)WITH2->UU.U99.y2, &V);
		break;

	      case 't':
		WITH2->UU.U116.tsize = readnum(&V);
		WITH2->UU.U116.torg = readnum(&V) - 1;
		WITH2->x1 = readcoord(&V);
		WITH2->y1 = readcoord(&V);
		WITH2->numcoords = 1;
		bound(kind[i - 1], (long)WITH2->x1, (long)WITH2->y1, &V);
		j000 = readnum(&V);
		buf[j000] = '\0';
 

		for (j00 = 0; j00 < j000; j00++)
		  buf[j00] = (char )readnum(&V);
		WITH2->UU.U116.sp = my_strdup (buf);
		break;

	      default:
		j--;
		break;
	      }
	    }
	    WITH->numvects = j;
	    WITH->vector = (log_vectorrec *)
			   ((__MallocTemp__ = malloc(( WITH->numvects * sizeof(log_vectorrec) ) ? ( WITH->numvects * sizeof(log_vectorrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	    memmove((Anyptr)WITH->vector, (Anyptr)tempvects,
		    WITH->numvects * sizeof(log_vectorrec));
	    while (V.dist < WITH->bigvectsize)
	      j0 = readnum(&V);
	    V.p /= 4;
	    (free((Anyptr)( tempvects )), ( tempvects )= ((void *)0) ) ;
	  } else {
	    WITH->vector = (log_vectorrec *)
			   ((__MallocTemp__ = malloc(( WITH->numvects * sizeof(log_vectorrec) ) ? ( WITH->numvects * sizeof(log_vectorrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	    FORLIM1 = WITH->numvects;
	    for (j = 0; j < FORLIM1; j++) {
	      readint(&V);
	      WITH->vector[j].vkind = 'v';
	      WITH->vector[j].numcoords = 2;
	      WITH->vector[j].x1 = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .vec[V.p].x1;
	      WITH->vector[j].y1 = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .vec[V.p].y1;
	      WITH->vector[j].UU.U99.x2 =
		(*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .vec[V.p].x2;
	      WITH->vector[j].UU.U99.y2 =
		(*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .vec[V.p].y2;
	      bound(kind[i - 1], (long)WITH->vector[j].x1,
		    (long)WITH->vector[j].y1, &V);
	      bound(kind[i - 1], (long)WITH->vector[j].UU.U99.x2,
		    (long)WITH->vector[j].UU.U99.y2, &V);
	      V.p++;
	    }
	  }
	}
	if (WITH->numpins != 0) {
	  WITH->pin = (log_pinrec *)((__MallocTemp__ = malloc(( WITH->numpins * sizeof(log_pinrec) ) ? ( WITH->numpins * sizeof(log_pinrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	  WITH->pinnames = (na_strlist **)
			   ((__MallocTemp__ = malloc(( WITH->numpins * sizeof(na_strlist *) ) ? ( WITH->numpins * sizeof(na_strlist *) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	  FORLIM1 = WITH->numpins;
	  for (j = 0; j < FORLIM1; j++) {
	    readint(&V);
	    WITH->pin[j].x = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .pin[V.p].x /
			     5 ;
	    WITH->pin[j].y = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .pin[V.p].y /
			     5 ;
	    WITH->pin[j].s = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .pin[V.p].s;
	    WITH->pin[j].c = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .pin[V.p].c;
	    bound(kind[i - 1], (long)(WITH->pin[j].x * 5 ),
		  (long)(WITH->pin[j].y * 5 ), &V);
	    WITH->pinnames[j] = ((void *)0) ;
	    V.p++;
	  }
	}
 
	if (WITH->numpnums != 0) {
	  WITH->pnum = (log_pnumrec *)((__MallocTemp__ = malloc(( WITH->numpnums * 
                        sizeof(log_pnumrec) ) ? ( WITH->numpnums *                          sizeof(log_pnumrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	  FORLIM1 = WITH->numpnums;
	  for (j = 0; j < FORLIM1; j++) {
	    readint(&V);
            WITH->pnum[j] = readpnum(& (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .b
                            [4*V.p]);
	    bound(kind[i - 1], (long)WITH->pnum[j].x, (long)WITH->pnum[j].y,
		  &V);
	    V.p++;
	  }
	}
 
	WITH->numattrs = 0;
	if (WITH->biglblsize != 0) {
	  strlist_init(&WITH->lbl);
	  *buf = '\0';
	  ch = '\001';
	  FORLIM2 = WITH->biglblsize / 4;
	  for (j1 = 1; j1 <= FORLIM2; j1++) {
	    readint(&V);
	    for (j = 0; j <= 3; j++) {
	      if (ch != '\0') {
		ch = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof(  filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .c4[V.p][j];
		if (ch == '\001') {
		  if (*buf == '\002') {
		    j0 = 0;
		    while (*buf != '\0') {
		      if (buf[0] == '\002')
			j0++;
		      strcpy(buf, buf + 1);
		      j00 = strposc(buf, '\002', 1L);
		      if (j00 == 0)
			j00 = strlen(buf) + 1;
		      j000 = strposc(buf, '\003', 1L);
		      if (j000 == 0)
			j000 = strlen(buf) + 1;
		      j00 = P_imin2((long)j00, (long)j000);
		      if (j00 > 1) {
			if (j0 <= WITH->numpins) {
			  sprintf(STR1, "%.*s", j00 - 1, buf);
			  l2 = strlist_append(&WITH->pinnames[j0 - 1], STR1);
			  l2->value = (na_long)((long)j0);
			}
		      }
		      strcpy(buf, buf + j00 - 1);
		    }
		  } else
		    l2 = strlist_append(&WITH->lbl, buf);
		  *buf = '\0';
		} else if (ch != '\0')
		  sprintf(buf + strlen(buf), "%c", ch);
	      }
	    }
	    V.p++;
	  }
	  parselabel(&WITH->lbl, &j, &WITH->attr);
	  WITH->numattrs = j;
	}
	if (WITH->bigprocsize != 0) {
	  WITH->proc = (uchar *)((__MallocTemp__ = malloc(( WITH->bigprocsize ) ? ( WITH->bigprocsize ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	  FORLIM2 = WITH->bigprocsize / 4;
	  for (j1 = 1; j1 <= FORLIM2; j1++) {
	    readint(&V);
	    for (j0 = 0; j0 <= 3; j0++)
	      WITH->proc[j1 * 4 + j0 - 4] = (*((  libf1[V.f - 1]->f_BFLAGS   == 1 && ((  libf1[V.f - 1]->f_BFLAGS   = 2), fread(&   libf1[V.f - 1]->f_BUFFER  , sizeof( 
						    filerec ),1,( libf1[V.f - 1]->f )))),	&   libf1[V.f - 1]->f_BUFFER  )) .c[V.p * 4 + j0];
	    V.p++;
	  }
	} else {
	  WITH->proc = (uchar *)((__MallocTemp__ = malloc(( 4L ) ? ( 4L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	  WITH->proc[0] = '\0';
	}
	WITH->bbx1 = -((5  - WITH->bbx1 - 1) / 5 );
	WITH->bby1 = -((5  - WITH->bby1 - 1) / 5 );
	WITH->bbx2 = (5  + WITH->bbx2 - 1) / 5 ;
	WITH->bby2 = (5  + WITH->bby2 - 1) / 5 ;
	WITH->bbmax = P_imax2(P_imax2((long)(-WITH->bbx1), (long)WITH->bbx2),
			      P_imax2((long)(-WITH->bby1), (long)WITH->bby2));
	calltoolkind(kind[i - 1], act_newkind);
	(( loadedgates )[(  i0 - 1 )>>(  3 )-(  0 )] |= (  1 ) << (((~(  i0 - 1 ))&((1<<(  3 )-(  0 ))-1)) << (  0 ))) ;
      __top_jb = __try_jb.next; } else { ;
	kind[i - 1] = ((void *)0) ;
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
	else {
	  if (P_escapecode != 0) {
	    beginerror();
	    nc_printf ("%d/%d/%ld: ", P_escapecode, i, EXCP_LINE);
	    nc_printf ("Unable to read file \"%s\"\n", gatesname[V.f - 1]);
	    enderror();
	  }
	  i = 0;
	  goto _L1;
	}
      } } while (0) ;
      clipoff();
      if (gg.showpage == (-1) ) {
 

	udrawgatec((int)(((i - 1) % catwidth * 2 + 1) * 25 ),
		   (int)(((i - 1) / catwidth * 2 + 1) * 25 ), i,
		   gg.color.catgate);
      }
_L1:
      Result = i;
    }
  }
  if (!loadit)
    return count;
  if (found)
    return Result;
  beginerror();
  nc_printf ("Can't find gate \"%s\"\n", n);
  enderror();
  Result = 0;
  if (!gg.initdone)
    _Escape(0);
  return Result;
}





static  short readlibrary(n)
char  *n;
{
  return (readlibrary_at(n, 1, 1 ));
}


static  void  getgate(name, gtype)
char  *name;
short *gtype;
{
  *gtype = readlibrary(name);
}


static  void  getgategroup(grp)
na_strlist *grp;
{
  na_strlist *l1;
  short pos, i, count;
  boolean done;
  catboxrec *cb;

  l1 = grp;
  count = 0;
  while (l1 != ((void *)0) ) {
    count += readlibrary_at(l1->s, 1, 0 );
    l1 = l1->next;
  }
  if (count != 0) {
    if (count > maxkinds)
      count = maxkinds;
    pos = 0;
    do {
      pos++;
      if (count > catwidth) {
	done = ((pos - 1) % catwidth == 0);
 

      } else
	done = ((pos - 1) / catwidth == (pos + count - 2) / catwidth);
      for (i = pos - 1; i <= pos + count - 2; i++) {
	if (kind[i] != ((void *)0) )
	  done = 0 ;
      }
    } while (!(done || pos + count > maxkinds));
    if (done) {
      if (count <= catwidth) {
	cb = (catboxrec *)((__MallocTemp__ = malloc(( sizeof(catboxrec) ) ? ( sizeof(catboxrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	cb->pos = pos;
	cb->count = count;
	cb->next = catboxes;
	catboxes = cb;
      }
    } else
      pos = 1;
  } else
    pos = 1;
  l1 = grp;
  while (l1 != ((void *)0) ) {
    i = readlibrary_at(l1->s, pos, 1 );
    l1 = l1->next;
  }
  strlist_empty(&grp);
}










static  void  showpinname(g, i, c, name)
log_grec *g;
short i, c;
char  *name;
{
  short j, j2, x, y, w, y0, y1, y2;
  boolean small;
  char  buf[256];
  short FORLIM;

  if (zoom < 2) {
    *buf = '\0';
    small = 1 ;
    FORLIM = strlen(name);
    for (j = 0; j < FORLIM; j++) {
      j2 = strposc("0.,+123-456*789/.()^" , name[j], 1L);
      if (j2 > 0)
	sprintf(buf + strlen(buf), "%c", j2 + 127);
      else if (isupper(name[j]))
	sprintf(buf + strlen(buf), "%c", name[j] + 103);
      else
	small = 0 ;
    }
  } else
    small = 0 ;
  if (small) {
    y0 = -5;
    y1 = -3;
    y2 = 3;
  } else {
    y0 = -3;
    y1 = -4;
    y2 = 4;
    strcpy(buf, name);
  }
  x = g->pinpos[i - 1].x * gg.scale - gg.xoff;
  y = g->pinpos[i - 1].y * gg.scale - gg.yoff;
  w = m_strwidth(((void *)0)  , buf);
 

  m_color((long)c);
  if (c == gg.color.backgr)
    m_fillrect(x - w / 2L - 1, (long)(y + y1), x + w / 2L + 1, (long)(y + y2));
  else {
 

    m_centerstr((long)x, (long)(y + y0), ((void *)0)  , buf);
  }
}











static  void  showgateinfo(info, g)
na_strlist *info;
log_grec *g;
{
  na_strlist *l1;
  long width, height, i;
  short gx, gy, gx1, gy1, gx2, gy2, mx, my, y, z;
  log_krec *WITH;

  width = 10;
  height = 0;
  l1 = info;
  while (l1 != ((void *)0) ) {
    i = m_strwidth(((void *)0)  , l1->s);
 

    if (i > width)
      width = i;
    height += 12 ;
    l1 = l1->next;
  }
  width += 3  * 2;
  height += 3  * 2 - 1;
  mx = -1;
  if (g != ((void *)0) ) {
    gx = g->x * gg.scale - gg.xoff;
    gy = g->y * gg.scale - gg.yoff;
    z = g->rot;
    WITH = g->kind;
    gx1 = gx + (WITH->x1 * log_rotxx[z] + WITH->y1 * log_rotyx[z]) *
	       gg.scale / 5 ;
    gx2 = gx + (WITH->x2 * log_rotxx[z] + WITH->y2 * log_rotyx[z]) *
	       gg.scale / 5 ;
    sortshints(&gx1, &gx2);
    gy1 = gy + (WITH->x1 * log_rotxy[z] + WITH->y1 * log_rotyy[z]) *
	       gg.scale / 5 ;
    gy2 = gy + (WITH->x2 * log_rotxy[z] + WITH->y2 * log_rotyy[z]) *
	       gg.scale / 5 ;
    sortshints(&gy1, &gy2);
    gx1 -= 2;
    gx2 += 2;
    gy1 -= 2;
    gy2 += 2;
    if (gx2 + 30  + width < across)
      mx = gx2 + 30 ;
    else if (gx1 - 30  - width > 0)
      mx = gx1 - 30  - width;
    else if (gx < across / 2)
      mx = across - width;
    else
      mx = 0;
    if (gy2 + 20  + height < baseline)
      my = gy2 + 20 ;
    else if (gy1 - 20  - height > 0)
      my = gy1 - 20  - height;
    else if (gy < baseline / 2)
      my = baseline - height;
    else
      my = 0;

    if (0 ) {
      if (gx < across / 3)
	mx = (gx2 + across - width) / 2;
      else if (gx > across * 2 / 3 || gy >= baseline / 3 && gy <= baseline)
	mx = (gx1 - width) / 2;
      else
	mx = (across - width) / 2;
      mx = P_imax2(P_imin2((long)mx, across - width), 0L);
      if (gy < baseline / 3)
	my = (gy2 + baseline - height) / 2;
      else if (gy > baseline * 2 / 3 || gx >= across / 3 && gx <= across)
	my = (gy1 - height) / 2;
      else
	my = (baseline - height) / 2;
      my = P_imax2(P_imin2((long)my, baseline - height), 0L);
    }

    m_color((long)defineboxcolor);
    m_linestyle(2L);
    if (mx < gx1 || my < gy1)
      m_drawline((long)gx1, (long)gy1, (long)mx, (long)my);
    if (mx + width > gx2 || my < gy1)
      m_drawline((long)gx2, (long)gy1, mx + width, (long)my);
    if (mx < gx1 || my + height > gy2)
      m_drawline((long)gx1, (long)gy2, (long)mx, my + height);
    if (mx + width > gx2 || my + height > gy2)
      m_drawline((long)gx2, (long)gy2, mx + width, my + height);
    m_linestyle(0L);
  }
  if (mx < 0) {
    mx = P_imax2(across * 3L / 5 - width / 2, 0L);
    my = P_imax2(baseline * 3L / 5 - height / 2, 0L);
  }
  m_color((long)definebackcolor);
  m_fillrect((long)mx, (long)my, mx + width, my + height);
  m_color((long)defineboxcolor);
  m_drawrect((long)mx, (long)my, mx + width, my + height);
  m_color((long)gg.color.selword);
  y = my + 3 ;
  l1 = info;
  while (l1 != ((void *)0) ) {
 

    m_drawstr((long)(mx + 3 ), (long)y, ((void *)0)  , l1->s);
    y += 12 ;
    m_color((long)definetextcolor);
    l1 = l1->next;
  }
  strlist_empty(&info);
}








static  void  showgatedef(k, g)
log_krec *k;
log_grec *g;
{
  na_strlist *l1;
  char  STR1[42];

  gg.actstrlist = ((void *)0) ;
  if (g != ((void *)0) ) {
    send_gengate(g, "DUMPKIND");
    gg.actflag = 0 ;
    send_gengate(g, "SHOWPINS");
  }
  if (gg.actstrlist == ((void *)0) )
    send_genkind(k, "DUMPKIND");
  if (gg.actstrlist == ((void *)0) ) {
    sprintf(STR1, "No definition available for gate %s", k->name);
    l1 = strlist_append(&gg.actstrlist, STR1);
  }
  showgateinfo(gg.actstrlist, g);
}




static  void  gatedefinitioncommand()
{
  long i;
  char  STR1[256];

  if (*gg.funcarg == '\0') {
    clearfunc();
    do {
      do {
	beginbottom();
	m_alpha_on();
	nc_gotoXY( 0 ,  txdown - 1 ) ;
	nc_printf ("Select a gate to view its simulator definition.");
	do {
	  pass();
	  trykbd();
	  pen();
	  m_alpha_on();
	} while (!(gg.t.dn || *gg.func != '\0'));
	endbottom();
	scroll();
      } while (!(gg.t.dn || *gg.func != '\0'));
      if (*gg.func == '\0') {
	closergate(gg.gridx, gg.gridy);
	if (gg.neargate != ((void *)0) )
	  showgatedef(gg.neargate->kind, gg.neargate);
      } else
	gg.neargate = ((void *)0) ;
    } while (gg.neargate != ((void *)0) );
    return;
  }
  i = readlibrary(strupper(STR1, gg.funcarg));
  clearfunc();
  if (i != 0)
    showgatedef(kind[i - 1], ((void *)0) );
}








 
 
 
 
 
 
 
 

static  char  *strreverse(Result, s)
char  *Result, *s;
{
  long i;
  char  s2[256];

  *s2 = '\0';
  for (i = strlen(s) - 1; i >= 0; i--)
    sprintf(s2 + strlen(s2), "%c", s[i]);
  return strcpy(Result, s2);
}


static  librstrrec *findlibrstr(name_)
char  *name_;
{
  char  name[9];
  librstrrec *lsp;
  char  STR1[256];

  strcpy(name, name_);
  lsp = librstrs;
  strcpy(name, strreverse(STR1, name));
  while (lsp != ((void *)0)  && strcmp(lsp->name, name)) {
    if (strcmp(name, lsp->name) < 0)
      lsp = lsp->left;
    else
      lsp = lsp->right;
  }
  return lsp;
}







 
struct LOC_listlibrary {
  short maxi, maxj;
  short karr[12  + 1][45 ];
} ;

static  short kfunc(i, j, LINK)
short *i, *j;
struct LOC_listlibrary *LINK;
{
   
  *i = (gg.t.ax - 2) / 10;
  *j = gg.t.ay - 1;
  if (!gg.t.near_)
    return -1;
  else if (*j <= 0 || (unsigned)(*i) > LINK->maxi)
    return -2;
  else if (*j > LINK->maxj) {
    if (*i < 1)
      return -3;
    else if (*i < 3)
      return -4;
    else
      return -2;
  } else if (LINK->karr[*i][*j - 1] == 0)
    return (30000  + *j * 8 + *i);
  else
    return (LINK->karr[*i][*j - 1]);
}


static  void  listlibrary()
{
  struct LOC_listlibrary V;
  short i, j, ii, jj, k, nn0, nn;
  librstrrec *lsp;
  char  ch;
  boolean exitflag;
  char  STR1[256];
  short FORLIM, FORLIM1;

  V.maxi = P_imin2((txacross - 9L) / 10, (long)12 );
  V.maxj = P_imin2(txdown - 3L, (long)45 );
  nn0 = 1;
  exitflag = 0 ;
  do {
    clearshowalpha();
    nc_printf ("Listing of gates ");
    if (librgroupnames[curlistgroup] != ((void *)0)  &&
	strlen(librgroupnames[curlistgroup]) <= txacross - 26)
      nc_fputs (strcjust(STR1, librgroupnames[curlistgroup], txacross - 26L),
	    (&_iob[1 ]) );
    else
      nc_printf ("%*c", txacross - 26, ' ');
    nc_printf ("Group%2d\n", curlistgroup);
    FORLIM = V.maxi;
    for (i = 0; i <= FORLIM; i++) {
      FORLIM1 = V.maxj;
      for (j = 0; j < FORLIM1; j++)
	V.karr[i][j] = 0;
    }
    i = 0;
    j = 1;
    nn = nn0;
    do {
      if (indexgroup[nn - 1] == curlistgroup) {
	V.karr[i][j - 1] = nn;
	nc_gotoXY( i * 10 + 2 ,  j + 1 ) ;
	if (((int)(( loadedgates )[(  nn - 1 )>>(  3 )-(  0 )] >> (((~(  nn - 1 ))&((1<<(  3 )-(  0 ))-1)) << (  0 )) & (1<<(1<<(  0 )))-1)) )
	  nc_putchar (137 );
	nc_printf ("%s%c", index_[nn - 1], 136 );
	j++;
	if (j > V.maxj) {
	  j = 1;
	  i++;
	}
      }
      nn++;
    } while (i <= V.maxi && nn <= idxsize);
    nc_gotoXY( 0 ,  txdown ) ;
    nc_printf ("+ for next group, - for last group, space bar to quit.");
    do {
      k = kfunc(&i, &j, &V);
      lsp = ((void *)0) ;
      if (k > 0) {
	if (k < 30000 ) {
	  lsp = findlibrstr(index_[k - 1]);
	  if (lsp != ((void *)0) ) {
	    nc_gotoXY( 0 ,  txdown - 1 ) ;
	    nc_printf ("%.*s", txacross, lsp->str);
	  }
	}
	nc_gotoXY( i * 10 + 2 ,  j + 1 ) ;
	if (k < 30000 ) {
	  if (((int)(( loadedgates )[(  k - 1 )>>(  3 )-(  0 )] >> (((~(  k - 1 ))&((1<<(  3 )-(  0 ))-1)) << (  0 )) & (1<<(1<<(  0 )))-1)) )
	    nc_putchar (137 );
	  nc_printf ("%c%s%c%c", 129 , index_[k - 1], 136 , 128 );
	}
      } else {
	switch (k) {

	case -1:
	   
	  break;

	case -2:
	  nc_gotoXY( 49 ,  txdown ) ;
	  nc_printf ("%cquit%c.", 129 , 128 );
	  break;

	case -3:
	  nc_gotoXY( 0 ,  txdown ) ;
	  nc_printf ("%c+%c", 129 , 128 );
	  break;

	case -4:
	  nc_gotoXY( 18 ,  txdown ) ;
	  nc_printf ("%c-%c", 129 , 128 );
	  break;
	}
      }
      if (gg.t.near_ && gg.t.inalpha)
	nc_gotoXY( gg.t.ax ,  gg.t.ay ) ;
      else
	noblink();
      do {
	pass();
	m_tracking(0L);
	pen();
      } while (!(pollkbd2() || gg.t.dn || k != kfunc(&ii, &jj, &V)));
      remcursor();
      if (k > 0) {
	if (k < 30000 ) {
	  if (lsp != ((void *)0) ) {
	    nc_gotoXY( 0 ,  txdown - 1 ) ;
	    nc_putchar ('\t');
	  }
	  nc_gotoXY( i * 10 + 2 ,  j + 1 ) ;
	  if (((int)(( loadedgates )[(  k - 1 )>>(  3 )-(  0 )] >> (((~(  k - 1 ))&((1<<(  3 )-(  0 ))-1)) << (  0 )) & (1<<(1<<(  0 )))-1)) )
	    nc_putchar (137 );
	  nc_printf ("%s%c", index_[k - 1], 136 );
	}
      } else {
	switch (k) {

	case -1:
	   
	  break;

	case -2:
	  nc_gotoXY( 49 ,  txdown ) ;
	  nc_printf ("quit.");
	  break;

	case -3:
	  nc_gotoXY( 0 ,  txdown ) ;
	  nc_putchar ('+');
	  break;

	case -4:
	  nc_gotoXY( 18 ,  txdown ) ;
	  nc_putchar ('-');
	  break;
	}
      }
    } while (!(pollkbd2() || gg.t.dn));
    ch = '\0';
    if (pollkbd2())
      ch = inkey2();
    if (gg.t.dn) {
      if (k >= 30000 )
	ch = '\003';
      else if (k > 0) {
	if (readlibrary(index_[k - 1]) != 0) {
	  remcursor();
	  nc_gotoXY( i * 10 + 2 ,  j + 1 ) ;
	  nc_printf ("%c%s%c", 137 , index_[k - 1], 136 );
	}
      } else {
	switch (k) {

	case -1:
	case -2:
	  ch = '\003';
	  break;

	case -3:
	  ch = '+';
	  break;

	case -4:
	  ch = '-';
	  break;
	}
      }
    }
    if (ch >= '0' && ch <= '8')
      curlistgroup = ch - 48;
    else if (ch == '\b' || ch == '-') {
      curlistgroup = (curlistgroup + 8) % 9;
 

    } else if (ch == '\034' || ch == '+') {
      curlistgroup = (curlistgroup + 1) % 9;
 

    } else if (ch == '\003' || ch == '\015' || ch == 'Q' || ch == 'q' ||
	       (ch & 255) == 171 || ch == ' ')
      exitflag = 1 ;
  } while (!exitflag);
  clearscreen();
  m_graphics_on();
  clearalpha();
}







 
 
 
 
 
 

static  void  gatecatalog(librmode)
boolean librmode;
{
  short x, y, x0, y0, x00, y00, w, x1, y1;
  char  nm[9];
   
  uchar ch;
  log_krec *k;
  char  bot1[256], bot2[256], bot3[256];
  na_strlist *lp;
  boolean flag, oo, done, botflag, refrflag;
  long bottime;
  librstrrec *lsp;

  clearfunc();
  done = 0 ;
  do {
    refrflag = 0 ;
    if (librmode) {
      if (ch >= '0' && ch <= '8')
	curlistgroup = ch - 48;
      listlibrary();
      librmode = 0 ;
    } else {
      showcatalog
		();
      m_color((long)gg.color.selword);
      drawstr2(10, down - 27, "LIBR");
      drawstr2(across - 32, down - 27, "LIBR");
       
      pen();
      do {
	ch = '\0';
	x0 = gg.t.x / (25  * 2);
	y0 = gg.t.y / (25  * 2);
	*bot1 = '\0';
	*bot2 = '\0';
	*bot3 = '\0';
	botflag = 0 ;
	if ((unsigned)x0 < catwidth && y0 >= 0 &&
	    y0 * catwidth + x0 < maxkinds &&
	    gg.t.near_ && kind[y0 * catwidth + x0] != ((void *)0) ) {
	  flag = 1 ;
	  nm[8] = '\0';
	  k = kind[y0 * catwidth + x0];
	  strrtrim(strcpy(nm, k->name));
	  w = m_strwidth(((void *)0)  , nm);
 

	  x00 = (x0 * 2 + 1) * 25  - w / 2;
	  y00 = (y0 + 1) * 25  * 2 + 2;
	  remcursor();
	   




	  m_colormode((long)16 );
	  m_color((long)gg.color.selword);
 

	  m_centerstr((x0 * 2L + 1) * 25 , (long)y00, ((void *)0)  , nm);
	  m_colormode((long)0 );
	  lp = k->lbl;
	  while (lp != ((void *)0)  && lp->kind != '\0')
	    lp = lp->next;
	  while (lp != ((void *)0)  && *bot3 == '\0') {
	    if (*bot1 == '\0')
	      strcpy(bot1, lp->s);
	    else if (*bot2 == '\0')
	      strcpy(bot2, lp->s);
	    else if (*bot3 == '\0')
	      strcpy(bot3, lp->s);
	    lp = lp->next;
	  }
	  if (*bot1 == '\0') {
	    lsp = findlibrstr(k->name);
	    if (lsp != ((void *)0) )
	      strcpy(bot1, lsp->str);
	  }
	  bottime = timers_sysclock();
	} else
	  flag = 0 ;
	do {
	  x = gg.t.x;
	  y = gg.t.y;
	  pass();
	  m_tracking(2L);
	  pen();
	  if (*bot1 != '\0' && !botflag) {
	    if (labs(x - gg.t.x) > 10 || labs(y - gg.t.y) > 10)
	      bottime = timers_sysclock();
	    else if (timers_sysclock() > bottime + 10) {
	      m_color((long)gg.color.selword);
	      m_centerstr(across / 2L, down - 27L, ((void *)0) , bot1);
	      if (*bot2 != '\0')
		m_centerstr(across / 2L, down - 17L, ((void *)0) , bot2);
	      if (*bot3 != '\0')
		m_centerstr(across / 2L, down - 7L, ((void *)0) , bot3);
	      botflag = 1 ;
	    }
	  }
	  if (pollkbd2())
	    ch = inkey2();
	  x1 = gg.t.x / (25  * 2);
	  y1 = gg.t.y / (25  * 2);
	} while (!gg.t.dn && gg.t.near_ && x0 == x1 && y0 == y1 && ch == '\0');
	if (flag) {
	  remcursor();
	   

	  m_colormode((long)16 );
	  m_color((long)gg.color.selword);
 

	  m_centerstr((x0 * 2L + 1) * 25 , (long)y00, ((void *)0)  , nm);
	  m_colormode((long)0 );
	  m_color((long)gg.color.backgr);
	  if (botflag) {
	    m_centerstr(across / 2L, down - 27L, ((void *)0) , bot1);
	    if (*bot2 != '\0')
	      m_centerstr(across / 2L, down - 17L, ((void *)0) , bot2);
	    if (*bot3 != '\0')
	      m_centerstr(across / 2L, down - 7L, ((void *)0) , bot3);
	  }
	}
	if (gg.t.dn) {
	  if ((x < 40 || x >= across - 37) && y >= down - 32)
	    librmode = 1 ;
	  else
	    done = 1 ;
	}
	if (ch == 251 || ch == 250 || ch == ' ') {
 
 
	  refrflag = 1 ;
	} else if (ch == '\003' || ch == 171 || ch == 'Q' || ch == 'q')
	  done = 1 ;
	else if (ch >= '0' && ch <= '8' || ch == 'L' || ch == 'l')
	  librmode = 1 ;
	else if (ch == 'D' || ch == 'd') {
	  if ((unsigned)x0 < catwidth && y0 >= 0 &&
	      y0 * catwidth + x0 < maxkinds &&
	      gg.t.near_ && kind[y0 * catwidth + x0] != ((void *)0) )
	    showgatedef(kind[y0 * catwidth + x0], ((void *)0) );
	}
      } while (!(done || librmode || refrflag));
      oo = gg.t.off;
      pen();
      pen();
      if (done && gg.t.depressed && !oo && !gg.t.off && flag) {
	refrscreen();
	addgate(y0 * catwidth + x0 + 1, 0, ((void *)0) );
      }
    }
  } while (!done);
}





 
 
 
 
 

static  void  setvlsimode(flag)
boolean flag;
{
  if (flag) {
    beginerror();
    nc_printf ("VLSI mode not supported in version %s\n", "4.1" );
    enderror();
    flag = 0 ;
  }

   






























  if (flag)
    curwcolor = 4 ;
  else
    curwcolor = 0 ;
  vlsi = flag;
  vlsimode[gg.curpage - 1] = vlsi;
}




 
 
 
 
 

static  char  *realstr(Result, r, p)
char  *Result;
double r;
short p;
{
  long i, j;
  char  s[81];

  s[80] = '\0';
  if ((fabs(r) < 1e-2 || fabs(r) >= 1e6) && r != 0) {
    sprintf(s, "% .13E", r);
    i = strlen(s) + 1;
    s[i - 1] = '\0';
 

    i = strposc(s, 'E', 1L) - 1;
    j = strposc(s, '.', 1L);
    while (s[i - 1] == '0' || p != 0 && i > j + p) {
      strcpy(s + i - 1, s + i);
      i--;
    }
    if (s[i - 1] == '.') {
      strcpy(s + i - 1, s + i);
      i--;
    }
    while (strlen(s) > i + 3 && s[i + 2] == '0')
      strcpy(s + i + 2, s + i + 3);
    if (s[i + 1] == '+')
      strcpy(s + i + 1, s + i + 2);
    return strcpy(Result, strltrim(s));
  }
  if (p == 0) {
    sprintf(s, "%30.9f", r);
    i = strlen(s) + 1;
    do {
      i--;
    } while (s[i - 1] == '0');
    if (s[i - 1] == '.')
      i--;
    s[i] = '\0';
 

    return strcpy(Result, strltrim(s));
  }
  sprintf(s, "%25.*f", p, r);
  i = strlen(s) + 1;
  s[i - 1] = '\0';
 
 

  return strcpy(Result, strltrim(s));
}



 
 
 
 
 

static  char  *realunit(Result, r, p, u, mu)
char  *Result;
double r;
short p;
char  *u;
boolean mu;
{
  char  s[81], STR1[81];
  char  STR2[162];

 
  *s = '\0';
  if (r == 0 || fabs(r) >= 1.0e15 || fabs(r) < 1.0e-16)
    *s = '\0';
  else if (fabs(r) >= 1e12) {
    strcpy(s, "T");
    r /= 1e12;
  } else if (fabs(r) >= 1e9) {
    strcpy(s, "G");
    r /= 1e9;
  } else if (fabs(r) >= 1e6) {
    strcpy(s, "Meg");  
    r /= 1e6;
  } else if (fabs(r) >= 1e3) {
    strcpy(s, "K");
    r /= 1e3;
  } else if (fabs(r) >= 0.1) {
    *s = '\0';
  } else if (fabs(r) >= 1e-3) {
    strcpy(s, "m");
    r *= 1e3;
  } else if (fabs(r) >= 1e-6) {
    strcpy(s, "u");
    r *= 1e6;
  } else if (fabs(r) >= 1e-9) {
    strcpy(s, "n");
    r *= 1e9;
  } else if (fabs(r) >= 1e-12) {
    strcpy(s, "p");
    r *= 1e12;
  } else {
    strcpy(s, "f");
    r *= 1e15;
  }
  sprintf(s, "%s%s", realstr(STR1, r, p), strcpy(STR2, s));
  sprintf(Result, "%s%s", s, u);
  
  return Result;
}

 

extern void prealunit(r, p, u, s)
double r;
short p;
char  *u;
char  *s;
{
  realunit(s, r, p, u, 0 );
}

 

extern void prealunit2(r, p, u, s)
double r;
short p;
char  *u;
char  *s;
{
  realunit(s, r, p, u, 1 );
}


 
struct LOC_editattrs {
  log_gattrrec *gattr;
  short numattrs;
  log_kattrrec *kattr;
  na_strlist *lbl;
  char  name[256];
  void  (*chproc) (void) ;
  log_tool *tool;
  log_grec *gate;
  log_nrec *node;
  short acty, p, ybase;
} ;

static  void  drawlabelline(i, LINK)
long i;
struct LOC_editattrs *LINK;
{
  long j;
  na_strlist *l1;
  long FORLIM;

  l1 = LINK->lbl;
  while (l1 != ((void *)0)  && l1->kind != '\0')
    l1 = l1->next;
  FORLIM = i + LINK->ybase;
  for (j = 1; j <= FORLIM; j++) {
    if (l1 != ((void *)0) )
      l1 = l1->next;
  }
  if (l1 != ((void *)0) )
    nc_putStr(0, (int)i, l1->s);
}

static  void  eraselabelline(i, LINK)
long i;
struct LOC_editattrs *LINK;
{
  remcursor();
  nc_gotoXY( 0 ,  (int)i ) ;
  nc_putchar ('\t');
}

static  void  drawlabel(LINK)
struct LOC_editattrs *LINK;
{
  short i, FORLIM;

  remcursor();
  nc_putStr(txacross - strlen(LINK->name), 0, LINK->name);
  FORLIM = txdown;
  for (i = 0; i <= FORLIM; i++)
    drawlabelline((long)i, LINK);
}

static  void  drawvalue(i, highlight, LINK)
short i;
boolean highlight;
struct LOC_editattrs *LINK;
{
  na_strlist *l1;
  log_kattrrec *WITH;
  char  STR1[81];
  char  STR4[256];

  WITH = &LINK->kattr[i - 1];
  if (WITH->y < LINK->ybase || WITH->y > LINK->ybase + txdown)
    return;
  remcursor();
  nc_gotoXY( WITH->x ,  WITH->y - LINK->ybase ) ;
  if (highlight)
    nc_putchar (129);
 
 

  if (!LINK->gattr[i - 1].blnk) {
    switch (WITH->dtype) {

    case 'R':
      nc_fputs (realstr(STR1, LINK->gattr[i - 1].UU.r, WITH->prec), (&_iob[1 ]) );
      break;

    case 'U':
      nc_fputs (realunit(STR1, LINK->gattr[i - 1].UU.r, WITH->prec,
		     WITH->UU.U82.u, 0 ), (&_iob[1 ]) );
      break;

    case 'F':
      nc_printf ("%s%s",
	     realstr(STR1, LINK->gattr[i - 1].UU.r, WITH->prec),
	     WITH->UU.U82.u);
      break;

    case 'I':
      nc_printf ("%*ld", WITH->prec, LINK->gattr[i - 1].UU.U73.i1);
      break;

    case 'H':
      nc_fputs (strhex(STR4, LINK->gattr[i - 1].UU.U73.i1, (long)WITH->prec),
	    (&_iob[1 ]) );
      break;

    case 'C':
      nc_printf ("%.*s", txacross - WITH->x + 1, LINK->gattr[i - 1].UU.c);
      break;

    case 'A':
      nc_printf ("%.*s", txacross - WITH->x + 1, LINK->gattr[i - 1].UU.sp);
      break;

    case 'B':
      if (WITH->prec == 1) {
	if (LINK->gattr[i - 1].UU.b)
	  nc_printf ("Yes");
	else
	  nc_printf ("No");
      } else {
	if (LINK->gattr[i - 1].UU.b)
	  nc_printf ("True");
	else
	  nc_printf ("False");
      }
      break;

    case 'V':
      l1 = WITH->UU.U86.v;
      while (l1 != ((void *)0)  && (long)l1->value != LINK->gattr[i - 1].UU.nv)
	l1 = l1->next;
      if (l1 != ((void *)0) )
	nc_fputs (l1->s, (&_iob[1 ]) );
      else
	nc_printf ("(value not found)");
      break;
    }
  }
  if (WITH->x == XPOS)
    nc_putchar (' ');
  LINK->gattr[i - 1].x2 = XPOS - 1;    
   
 
 

  nc_printf ("\t\200");
  LINK->gattr[i - 1].changed = 0 ;
}

static  void  maskvalues(LINK)
struct LOC_editattrs *LINK;
{
  short i, FORLIM;

  FORLIM = LINK->numattrs;
  for (i = 0; i < FORLIM; i++) {
    if (LINK->kattr[i].vra != 0 &&
	LINK->kattr[i].vr != LINK->gattr[LINK->kattr[i].vra - 1].UU.nv) {
      if (!LINK->gattr[i].supr)
	eraselabelline((long)LINK->kattr[i].y, LINK);
      LINK->gattr[i].supr = 1 ;
    } else {
      if (LINK->gattr[i].supr) {
	drawlabelline((long)LINK->kattr[i].y, LINK);
	drawvalue(i + 1, 0 , LINK);
      }
      LINK->gattr[i].supr = 0 ;
    }
  }
}

static  double cleanup(r, r1, LINK)
double r, r1;
struct LOC_editattrs *LINK;
{
  long i;
  char  s[81];
  char  *STR1;

  if (fabs(r) * 2 < r1)
    return 0.0;
  else if (fabs(r) < 1e9 && r >= 1e-5) {
    sprintf(s, "%20.0f", r / r1);
    i = strlen(s) + 1;
    s[i - 1] = '\0';
 

    r = strtod(s, &STR1);
    i = STR1 - s + 1;
    return (r * r1);
  } else
    return r;
}

static  double scrnincr(p, LINK)
short p;
struct LOC_editattrs *LINK;
{
  long i;
  double r1;
  char  s[81];
  log_kattrrec *WITH;

  WITH = &LINK->kattr[p - 1];
  switch (WITH->dtype) {

  case 'R':
    realstr(s, LINK->gattr[p - 1].UU.r, WITH->prec);
    break;

  case 'U':
    realunit(s, LINK->gattr[p - 1].UU.r, WITH->prec, "", 0 );
    break;

  case 'F':
    realstr(s, LINK->gattr[p - 1].UU.r, WITH->prec);
    break;
  }
  strcat(s, " ");
  i = 0;
  do {
    i++;
    if (s[i - 1] == '-')
      s[i - 1] = '+';
    else if (isdigit(s[i - 1]))
      s[i - 1] = '0';
  } while (s[i - 1] == '.' || s[i - 1] == '+' || s[i - 1] == '0');
  if (i > 1)
    s[i - 2] = '1';
  r1 = 0.0;
  readreal(s, &r1);
  return r1;
}

static  void  callconfig(proc, LINK)
void  (*proc) (void) ;
struct LOC_editattrs *LINK;
{
  gg.actx = LINK->p;
  gg.acty = LINK->acty;
  gg.acttool = LINK->tool;
  gg.actgate = LINK->gate;
  gg.actnode = LINK->node;
  gg.actgattr = LINK->gattr;
  gg.actkattr = LINK->kattr;
  (*proc)();
}

static  boolean tryconfig(LINK)
struct LOC_editattrs *LINK;
{
  gg.actflag = 1 ;
  callconfig(LINK->chproc, LINK);
  return (gg.actflag);
}





static  void  editattrs(gattr_, numattrs_, kattr_, lbl_, name_, proc, chproc_,
		      relproc, attrstamp)
log_gattrrec *gattr_;
short numattrs_;
log_kattrrec *kattr_;
na_strlist *lbl_;
char  *name_;
void  (*proc) (void) , (*chproc_) (void) , (*relproc) (void) ;
long *attrstamp;
{
  struct LOC_editattrs V;
  short i, i1, p0, olday, ytotal;
  na_strlist *l1;
  long j, j1, savei;
  double r1, saver;
  char  ch;
  char  buf[256], savebuf[256];
  boolean exitflag, saveb, saveb2, touched, understood;
  short FORLIM;
  log_gattrrec *WITH;
  char  STR1[256];
  char  *STR2;
  char  STR3[256];

  V.gattr = gattr_;
  V.numattrs = numattrs_;
  V.kattr = kattr_;
  V.lbl = lbl_;
  strcpy(V.name, name_);
  V.chproc = chproc_;
  if (V.lbl == ((void *)0) )
    return;
  V.tool = gg.acttool;
  V.gate = gg.actgate;
  V.node = gg.actnode;
  V.acty = gg.acty;
  clearshowalpha();
  V.ybase = 0;
  ytotal = 0;
  l1 = V.lbl;
  while (l1 != ((void *)0) ) {
    if (l1->kind == '\0')
      ytotal++;
    l1 = l1->next;
  }
  drawlabel(&V);
  gg.actflag = 1 ;
  callconfig(proc, &V);
  FORLIM = V.numattrs;
  for (i = 0; i < FORLIM; i++) {
    WITH = &V.gattr[i];
    touched = 0 ;
    WITH->supr = 0 ;
  }
  maskvalues(&V);
  FORLIM = V.numattrs;
  for (i = 1; i <= FORLIM; i++) {
    if (!V.gattr[i - 1].supr)
      drawvalue(i, 0 , &V);
  }
  showalpha();
  if (V.numattrs == 0) {
    do {
      noblink();
      do {
	pass();
	pen();
      } while (!(pollkbd2() || gg.t.dn));
      if (pollkbd2())
	ch = inkey2();
      else
	ch = '\015';
    } while (ch != '\003' && ch != '\015' && ch != ' ');
  } else {
    V.p = 1;
    olday = -1;
    exitflag = 0 ;
    do {
      noblink();
      if (V.kattr[V.p - 1].y <= V.ybase ||
	  V.kattr[V.p - 1].y >= V.ybase + txdown) {
	i1 = V.ybase;
	if (V.kattr[V.p - 1].y <= V.ybase) {
	  V.ybase = V.kattr[V.p - 1].y - 1;
	  if (V.p == 1)
	    V.ybase = P_imax2(0L, (long)(V.kattr[V.p - 1].y - txdown));
	} else {
	  V.ybase = V.kattr[V.p - 1].y - txdown + 1;
	  if (V.p == V.numattrs)
	    V.ybase = P_imin2(ytotal - txdown - 1L, (long)V.kattr[V.p - 1].y);
	}
	if (abs(V.ybase - i1) < txdown)
	  nc_scrollXY(0, V.ybase - i1);
	else
	  clearshowalpha();
	drawlabel(&V);
	FORLIM = V.numattrs;
	for (i = 0; i < FORLIM; i++)
	  V.gattr[i].supr = 0 ;
	maskvalues(&V);
	FORLIM = V.numattrs;
	for (i = 1; i <= FORLIM; i++) {
	  if (!V.gattr[i - 1].supr)
	    drawvalue(i, i == V.p, &V);
	}
      } else
	drawvalue(V.p, 1 , &V);
      do {
	ch = '\0';
	pass();
	gg.actflag = 0 ;
	callconfig(proc, &V);
	FORLIM = V.numattrs;
	for (i = 1; i <= FORLIM; i++) {
	  if (V.gattr[i - 1].changed) {
	    stamp(attrstamp);
	    if (!V.gattr[i - 1].supr) {
	      drawvalue(i, i == V.p, &V);
	      if (V.kattr[i - 1].dtype == 'V')
		maskvalues(&V);
	      if (V.gattr[V.p - 1].supr)
		ch = '\037';
	      noblink();
	    }
	  }
	}
	pen();
	 










	if (pollkbd2())
	  ch = inkey2();
      } while (!(ch != '\0' || gg.t.dn));
      drawvalue(V.p, 0 , &V);
      if (gg.t.dn)
	ch = '\003';
      p0 = V.p;
      understood = 1 ;
      WITH = &V.gattr[V.p - 1];
      if (ch == '\003' || ch == ' ')
	exitflag = 1 ;
      else if ((ch & 255) != 251 && (ch & 255) != 250) {
	if (ch == '\n') {
	  do {
	    V.p++;
	  } while (V.p <= V.numattrs && V.gattr[V.p - 1].supr);
	  if (V.p > V.numattrs)
	    V.p = p0;
	} else if (ch == '\037') {
	  do {
	    V.p--;
	  } while (V.p >= 1 && V.gattr[V.p - 1].supr);
	  if (V.p < 1)    
	    V.p = p0;
	} else if (ch == '\034') {
	  gg.actflag = 0 ;
	  gg.actflag2 = 1 ;
	  callconfig(relproc, &V);
	  if (!gg.actflag) {
	    switch (V.kattr[V.p - 1].dtype) {

	    case 'R':
	    case 'U':
	    case 'F':
	      if (!WITH->blnk) {
		r1 = scrnincr(V.p, &V);
		saver = WITH->UU.r;
		WITH->UU.r = cleanup(WITH->UU.r + r1, r1, &V);
		if (tryconfig(&V)) {
		  drawvalue(V.p, 0 , &V);
		  touched = 1 ;
		} else
		  WITH->UU.r = saver;
	      }
	      break;

	    case 'I':
	    case 'H':
	      if (!WITH->blnk) {
		WITH->UU.U73.i1++;
		if (tryconfig(&V)) {
		  drawvalue(V.p, 0 , &V);
		  touched = 1 ;
		} else
		  WITH->UU.U73.i1--;
	      }
	      break;

	    case 'C':
	    case 'A':
	      understood = 0 ;
	      break;

	    case 'B':
	      saveb = WITH->UU.b;
	      saveb2 = WITH->blnk;
	      WITH->UU.b = 1 ;
	      WITH->blnk = 0 ;
	      if (!tryconfig(&V)) {
		WITH->UU.b = saveb;
		WITH->blnk = saveb2;
	      }
	      if (WITH->UU.b != saveb || WITH->blnk != saveb2) {
		drawvalue(V.p, 0 , &V);
		touched = 1 ;
	      }
	      break;

	    case 'V':
	      savei = WITH->UU.nv;
	      if (WITH->UU.nv < V.kattr[V.p - 1].UU.U86.nv - 1)
		WITH->UU.nv++;
	      if (!tryconfig(&V))
		WITH->UU.nv = savei;
	      if (WITH->UU.nv != savei) {
		maskvalues(&V);
		drawvalue(V.p, 0 , &V);
		touched = 1 ;
	      }
	      break;
	    }
	  }
	  stamp(attrstamp);
	  chpage((int)gg.curpage);
	} else if (ch == '\b') {
	  gg.actflag = 0 ;
	  gg.actflag2 = 0 ;
	  callconfig(relproc, &V);
	  if (!gg.actflag) {
	    switch (V.kattr[V.p - 1].dtype) {

	    case 'R':
	    case 'U':
	    case 'F':
	      if (!WITH->blnk) {
		r1 = scrnincr(V.p, &V);
		saver = WITH->UU.r;
		WITH->UU.r = cleanup(WITH->UU.r - r1, r1, &V);
		if (tryconfig(&V)) {
		  drawvalue(V.p, 0 , &V);
		  touched = 1 ;
		} else
		  WITH->UU.r = saver;
	      }
	      break;

	    case 'I':
	    case 'H':
	      if (!WITH->blnk) {
		WITH->UU.U73.i1--;
		if (tryconfig(&V)) {
		  drawvalue(V.p, 0 , &V);
		  touched = 1 ;
		} else
		  WITH->UU.U73.i1++;
	      }
	      break;

	    case 'C':
	    case 'A':
	      understood = 0 ;
	      break;

	    case 'B':
	      saveb = WITH->UU.b;
	      saveb2 = WITH->blnk;
	      WITH->UU.b = 0 ;
	      WITH->blnk = 0 ;
	      if (!tryconfig(&V)) {
		WITH->UU.b = saveb;
		WITH->blnk = saveb2;
	      }
	      if (WITH->UU.b != saveb || WITH->blnk != saveb2) {
		drawvalue(V.p, 0 , &V);
		touched = 1 ;
	      }
	      break;

	    case 'V':
	      savei = WITH->UU.nv;
	      if (WITH->UU.nv > 0)
		WITH->UU.nv--;
	      if (!tryconfig(&V))
		WITH->UU.nv = savei;
	      if (WITH->UU.nv != savei) {
		maskvalues(&V);
		drawvalue(V.p, 0 , &V);
		touched = 1 ;
	      }
	      break;
	    }
	  }
	  stamp(attrstamp);
	  chpage((int)gg.curpage);
	} else
	  understood = 0 ;
      }
      if (!understood) {
	nc_gotoXY( V.kattr[V.p - 1].x ,  V.kattr[V.p - 1].y - V.ybase ) ;
	nc_putchar ('\t');
	if (ch == '\015')
	  ungetkey2('\003');
	else
	  ungetkey2(ch);
	switch (V.kattr[V.p - 1].dtype) {

	case 'R':
	case 'U':
	case 'F':
	  readlnpass(buf, 2);
	  strcpy(STR1, strltrim(buf));
	  strcpy(buf, STR1);
	  saveb2 = touched;
	  saveb = WITH->blnk;
	  saver = WITH->UU.r;
	  if (*buf == '\0' ||
	      !(buf[0] == '-' || buf[0] == '+' || buf[0] == '.' ||
		isdigit(buf[0]))) {
	    if (V.kattr[V.p - 1].opt)
	      WITH->blnk = 1 ;
	    else {
	      WITH->blnk = 0 ;
	      WITH->UU.r = V.kattr[V.p - 1].UU.U82.r;
	    }
	    touched = 1 ;
	  } else {
	    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	      readreal(buf, &r1);
	      WITH->UU.r = r1;
	      WITH->blnk = 0 ;
	      touched = 1 ;
	    __top_jb = __try_jb.next; } else { ;
	      if (P_escapecode == -20)
		_Escape(P_escapecode);
	      warning();
	    } } while (0) ;
	  }
	  if (!tryconfig(&V)) {
	    WITH->UU.r = saver;
	    WITH->blnk = saveb;
	    touched = saveb2;
	  }
	  break;

	case 'I':
	  readlnpass(buf, 2);
	  strcpy(STR1, strltrim(buf));
	  strcpy(buf, STR1);
	  saveb2 = touched;
	  saveb = WITH->blnk;
	  savei = WITH->UU.U73.i1;
	  if (*buf == '\0' ||
	      !(buf[0] == '+' || buf[0] == '-' || isdigit(buf[0]))) {
	    if (V.kattr[V.p - 1].opt)
	      WITH->blnk = 1 ;
	    else {
	      WITH->blnk = 0 ;
	      WITH->UU.U73.i1 = V.kattr[V.p - 1].UU.U73.i1;
	    }
	    touched = 1 ;
	  } else {
	    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	      j1 = strtol(buf, &STR2, 10);
	      j = STR2 - buf + 1;
	      WITH->UU.U73.i1 = j1;
	      WITH->blnk = 0 ;
	      touched = 1 ;
	    __top_jb = __try_jb.next; } else { ;
	      if (P_escapecode == -20)
		_Escape(P_escapecode);
	      warning();
	    } } while (0) ;
	  }
	  if (!tryconfig(&V)) {
	    WITH->UU.U73.i1 = savei;
	    WITH->blnk = saveb;
	    touched = saveb2;
	  }
	  break;

	case 'H':
	  readlnpass(buf, 2);
	  strcpy(STR1, strltrim(buf));
	  strcpy(buf, STR1);
	  saveb2 = touched;
	  saveb = WITH->blnk;
	  savei = WITH->UU.U73.i1;
	  if (*buf == '\0' ||
	      !(buf[0] >= 'a' && buf[0] <= 'f' ||
		buf[0] >= 'A' && buf[0] <= 'F' || isdigit(buf[0]))) {
	    if (V.kattr[V.p - 1].opt)
	      WITH->blnk = 1 ;
	    else {
	      WITH->blnk = 0 ;
	      WITH->UU.U73.i1 = V.kattr[V.p - 1].UU.U73.i1;
	    }
	    touched = 1 ;
	  } else {
	    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	      WITH->UU.U73.i1 = strtol(buf, ((void *)0) , 16);
	      WITH->blnk = 0 ;
	      touched = 1 ;
	    __top_jb = __try_jb.next; } else { ;
	      if (P_escapecode == -20)
		_Escape(P_escapecode);
	      warning();
	    } } while (0) ;
	  }
	  if (!tryconfig(&V)) {
	    WITH->UU.U73.i1 = savei;
	    WITH->blnk = saveb;
	    touched = saveb2;
	  }
	  break;

	case 'C':
	  strcpy(buf, WITH->UU.c);
	  readlnpass(buf, 3);
	  strcpy(savebuf, WITH->UU.c);
	  strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
	  strcpy(buf, STR1);
	  if (*buf == '\0' && !V.kattr[V.p - 1].opt)
	    strcpy(buf, V.kattr[V.p - 1].UU.c);
	  else if (strlen(buf) > V.kattr[V.p - 1].prec) {
	    buf[V.kattr[V.p - 1].prec] = '\0';
 

	  }
	  strcpy(WITH->UU.c, buf);
	  if (tryconfig(&V))
	    touched = 1 ;
	  else
	    strcpy(WITH->UU.c, savebuf);
	  WITH->blnk = (*WITH->UU.c == '\0');
	  break;

	case 'A':
	  strcpy(buf, WITH->UU.c);
	  readlnpass(buf, 3);
	  strcpy(savebuf, WITH->UU.sp);
	  strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
	  strcpy(buf, STR1);
	  if (*buf == '\0' && !V.kattr[V.p - 1].opt)
	    strcpy(buf, V.kattr[V.p - 1].UU.sp);
	  strchange(&WITH->UU.sp, buf);
	  if (tryconfig(&V))
	    touched = 1 ;
	  else
	    strchange(&WITH->UU.sp, savebuf);
	  WITH->blnk = (*WITH->UU.sp == '\0');
	  break;

	case 'B':
	  saveb = WITH->blnk;
	  saveb2 = WITH->UU.b;
	  ch = inkey2();
	  if (ch == '1' || ch == 'y' || ch == 'Y' || ch == 't' || ch == 'T') {
	    WITH->UU.b = 1 ;
	    WITH->blnk = 0 ;
	  } else if (ch == '0' || ch == 'n' || ch == 'N' || ch == 'f' ||
		     ch == 'F') {
	    WITH->UU.b = 0 ;
	    WITH->blnk = 0 ;
	  } else if ((ch == '\003' || ch == '\015' || ch == 'x' || ch == 'X') &&
		     V.kattr[V.p - 1].opt)
	    WITH->blnk = 1 ;
	  else if (ch == '\003' || ch == '\015' || ch == 'z' || ch == 'Z') {
	    WITH->UU.b = !WITH->UU.b;
	    WITH->blnk = 0 ;
	  }
	  if (tryconfig(&V))
	    touched = 1 ;
	  else {
	    WITH->blnk = saveb;
	    WITH->UU.b = saveb2;
	  }
	  break;

	case 'V':
	  readlnpass(buf, 2);
	  savei = WITH->UU.nv;
	  strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
	  strcpy(buf, STR1);
	  l1 = V.kattr[V.p - 1].UU.U86.v;
	  while (l1 != ((void *)0)  && strcicmp(l1->s, buf) != 0)
	    l1 = l1->next;
	  if (l1 != ((void *)0) )
	    WITH->UU.nv = (long)l1->value;
	  if (tryconfig(&V)) {
	    maskvalues(&V);
	    touched = 1 ;
	  } else
	    WITH->UU.nv = savei;
	  break;
	}
	stamp(attrstamp);
	chpage((int)gg.curpage);
	drawvalue(V.p, 0 , &V);
      }
    } while (!exitflag);
  }
  m_graphics_on();
  clearalpha();

 
 
   
}



static  void  editattrsx(gattr, numattrs, kattr, lbl, name, proc, chproc,
		       relproc)
log_gattrrec *gattr;
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
char  *name;
void  (*proc) (void) , (*chproc) (void) , (*relproc) (void) ;
{
  long stamp;

  editattrs(gattr, numattrs, kattr, lbl, name, proc, chproc, relproc, &stamp);
}



static  void  gproc1()
{
  calltool(gg.acttool, act_configgate);
}


static  void  gproc2()
{
  calltool(gg.acttool, act_configchgate);
}


static  void  gproc3()
{
  calltool(gg.acttool, act_configrelgate);
}


static  void  configgate(g)
log_grec *g;
{
  void  (*TEMP) (void) ;
  void  (*TEMP5) (void) ;
  void  (*TEMP6) (void) ;

  gg.actgate = g;
  gg.acttool = g->kind->simtype;
  TEMP = gproc1;
  TEMP5 = gproc2;
  TEMP6 = gproc3;
  editattrs(g->attr, g->kind->numattrs, g->kind->attr, g->kind->lbl,
	    g->kind->name, TEMP, TEMP5, TEMP6, &gg.gattrstamp);
}




static  void  nproc1()
{
  calltool(gg.acttool, act_confignode);
}


static  void  nproc2()
{
  calltool(gg.acttool, act_configchnode);
}


static  void  nproc3()
{
  calltool(gg.acttool, act_configrelnode);
}


static  void  confignode(n, name)
log_nrec *n;
char  *name;
{
  void  (*TEMP) (void) ;
  void  (*TEMP5) (void) ;
  void  (*TEMP6) (void) ;

  gg.actnode = n;
  gg.acttool = n->simtype;
  TEMP = nproc1;
  TEMP5 = nproc2;
  TEMP6 = nproc3;
  editattrs(n->attr, n->simtype->nnumattrs, n->simtype->nattr,
	    n->simtype->nlbl, name, TEMP, TEMP5, TEMP6, &gg.nattrstamp);
}




static  void  configkind(i)
short i;
{
  log_krec *k;
  log_grec *g;

  if (kindgroup[i - 1] == 0)
    return;
  k = kind[(kindgroup[i - 1] & (256  - 1)) - 1];
  newgate(&g, kindgroup[i - 1]);
  if (kindattr[i - 1] != ((void *)0) ) {
    disposeattrs(&g->attr, k->numattrs, k->attr);
    copyattrs(&g->attr, kindattr[i - 1], k->numattrs, k->attr);
  }
  configgate(g);
  if (kindattr[i - 1] != ((void *)0) )
    disposeattrs(&kindattr[i - 1], k->numattrs, k->attr);
  copyattrs(&kindattr[i - 1], g->attr, k->numattrs, k->attr);
  disposegate(&g);
}


 
struct LOC_setattr {
  log_gattrrec *gattr;
  log_kattrrec *kattr;
  short p;
} ;

static  boolean tryconfig_(LINK)
struct LOC_setattr *LINK;
{
  gg.actflag = 1 ;
  gg.actx = LINK->p;
  gg.actgattr = LINK->gattr;
  gg.actkattr = LINK->kattr;
  (*gg.acttool->proc)(&gg);
  return (gg.actflag);
}





static  boolean setattr(gattr_, kattr_, p_, buf)
log_gattrrec *gattr_;
log_kattrrec *kattr_;
short p_;
char  *buf;
{
  struct LOC_setattr V;
  boolean touched;
  long savei;
  double r1, saver;
  boolean saveb, saveb2;
  char  savebuf[256];
  long j, j1;
  na_strlist *l1;
  log_gattrrec *WITH;
  char  STR1[256];
  char  *STR2;
  char  STR3[256];

  V.gattr = gattr_;
  V.kattr = kattr_;
  V.p = p_;
  touched = 0 ;
  WITH = &V.gattr[V.p - 1];
  switch (V.kattr[V.p - 1].dtype) {

  case 'R':
  case 'U':
  case 'F':
    strcpy(STR1, strltrim(buf));
    strcpy(buf, STR1);
    saveb2 = touched;
    saveb = WITH->blnk;
    saver = WITH->UU.r;
    if (*buf == '\0' || !(buf[0] == '-' || buf[0] == '+' || buf[0] == '.' ||
			  isdigit(buf[0]))) {
      if (V.kattr[V.p - 1].opt)
	WITH->blnk = 1 ;
      else {
	WITH->blnk = 0 ;
	WITH->UU.r = V.kattr[V.p - 1].UU.U82.r;
      }
      touched = 1 ;
    } else {
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	readreal(buf, &r1);
	WITH->UU.r = r1;
	WITH->blnk = 0 ;
	touched = 1 ;
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
      } } while (0) ;
    }
    if (!tryconfig_(&V)) {
      WITH->UU.r = saver;
      WITH->blnk = saveb;
      touched = saveb2;
    }
    break;

  case 'I':
    strcpy(STR1, strltrim(buf));
    strcpy(buf, STR1);
    saveb2 = touched;
    saveb = WITH->blnk;
    savei = WITH->UU.U73.i1;
    if (*buf == '\0' || !(buf[0] == '+' || buf[0] == '-' || isdigit(buf[0]))) {
      if (V.kattr[V.p - 1].opt)
	WITH->blnk = 1 ;
      else {
	WITH->blnk = 0 ;
	WITH->UU.U73.i1 = V.kattr[V.p - 1].UU.U73.i1;
      }
      touched = 1 ;
    } else {
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	j1 = strtol(buf, &STR2, 10);
	j = STR2 - buf + 1;
	WITH->UU.U73.i1 = j1;
	WITH->blnk = 0 ;
	touched = 1 ;
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
      } } while (0) ;
    }
    if (!tryconfig_(&V)) {
      WITH->UU.U73.i1 = savei;
      WITH->blnk = saveb;
      touched = saveb2;
    }
    break;

  case 'H':
    strcpy(STR1, strltrim(buf));
    strcpy(buf, STR1);
    saveb2 = touched;
    saveb = WITH->blnk;
    savei = WITH->UU.U73.i1;
    if (*buf == '\0' ||
	!(buf[0] >= 'a' && buf[0] <= 'f' || buf[0] >= 'A' && buf[0] <= 'F' ||
	  isdigit(buf[0]))) {
      if (V.kattr[V.p - 1].opt)
	WITH->blnk = 1 ;
      else {
	WITH->blnk = 0 ;
	WITH->UU.U73.i1 = V.kattr[V.p - 1].UU.U73.i1;
      }
      touched = 1 ;
    } else {
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	WITH->UU.U73.i1 = strtol(buf, ((void *)0) , 16);
	WITH->blnk = 0 ;
	touched = 1 ;
      __top_jb = __try_jb.next; } else { ;
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
      } } while (0) ;
    }
    if (!tryconfig_(&V)) {
      WITH->UU.U73.i1 = savei;
      WITH->blnk = saveb;
      touched = saveb2;
    }
    break;

  case 'C':
    strcpy(savebuf, WITH->UU.c);
    strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
    strcpy(buf, STR1);
    if (*buf == '\0' && !V.kattr[V.p - 1].opt)
      strcpy(buf, V.kattr[V.p - 1].UU.c);
    else if (strlen(buf) > V.kattr[V.p - 1].prec) {
      buf[V.kattr[V.p - 1].prec] = '\0';
 

    }
    strcpy(WITH->UU.c, buf);
    if (tryconfig_(&V))
      touched = 1 ;
    else
      strcpy(WITH->UU.c, savebuf);
    WITH->blnk = (*WITH->UU.c == '\0');
    break;

  case 'A':
    strcpy(savebuf, WITH->UU.sp);
    strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
    strcpy(buf, STR1);
    if (*buf == '\0' && !V.kattr[V.p - 1].opt)
      strcpy(buf, V.kattr[V.p - 1].UU.sp);
    strchange(&WITH->UU.sp, buf);
    if (tryconfig_(&V))
      touched = 1 ;
    else
      strchange(&WITH->UU.sp, savebuf);
    WITH->blnk = (*WITH->UU.sp == '\0');
    break;

  case 'B':
    saveb = WITH->blnk;
    saveb2 = WITH->UU.b;
    if (*buf == '\0')
      strcpy(buf, " ");
    if (buf[0] == '1' || buf[0] == 'y' || buf[0] == 'Y' || buf[0] == 't' ||
	buf[0] == 'T') {
      WITH->UU.b = 1 ;
      WITH->blnk = 0 ;
    } else if (buf[0] == '0' || buf[0] == 'n' || buf[0] == 'N' ||
	       buf[0] == 'f' || buf[0] == 'F') {
      WITH->UU.b = 0 ;
      WITH->blnk = 0 ;
    } else if ((buf[0] == 'x' || buf[0] == 'X' || buf[0] == ' ') &&
	       V.kattr[V.p - 1].opt)
      WITH->blnk = 1 ;
    else if (buf[0] == 'z' || buf[0] == 'Z' || buf[0] == ' ') {
      WITH->UU.b = !WITH->UU.b;
      WITH->blnk = 0 ;
    }
    if (tryconfig_(&V))
      touched = 1 ;
    else {
      WITH->blnk = saveb;
      WITH->UU.b = saveb2;
    }
    break;

  case 'V':
    savei = WITH->UU.nv;
    strcpy(STR1, strltrim(strrtrim(strcpy(STR3, buf))));
    strcpy(buf, STR1);
    l1 = V.kattr[V.p - 1].UU.U86.v;
    while (l1 != ((void *)0)  && strcicmp(l1->s, buf) != 0)
      l1 = l1->next;
    if (l1 != ((void *)0) )
      WITH->UU.nv = (long)l1->value;
    if (tryconfig_(&V))
      touched = 1 ;
    else
      WITH->UU.nv = savei;
    break;
  }
  return touched;
}



static  void  setgattr(g, num, value_)
log_grec *g;
short num;
char  *value_;
{
  char  value[256];
  log_grec *g1;
  short pg;
  log_tool *saveacttool;

  strcpy(value, value_);
  if (num < 1 || num > g->kind->numattrs)
    return;
  saveacttool = gg.acttool;
  gg.actgate = g;
  gg.actnode = ((void *)0) ;
  gg.acttool = g->kind->simtype;
  gg.action = act_configchgate;
  if (setattr(g->attr, g->kind->attr, num, value)) {
    stamp(&gg.gattrstamp);
    g1 = ((void *)0) ;
    pg = gg.numpages + 1;
    while (pg > 1 && g1 != ((void *)0) ) {
      pg--;
      g1 = gg.gbase[pg - 1];
      while (g1 != ((void *)0)  && g1 != g)
	g1 = g1->next;
    }
    if (g1 != ((void *)0) )
      chpage(pg);
  }
  gg.acttool = saveacttool;
}



static  void  setnattr(n, num, value_)
log_nrec *n;
short num;
char  *value_;
{
  char  value[256];
  log_tool *saveacttool;

  strcpy(value, value_);
  if (num < 1 || num > n->simtype->nnumattrs)
    return;
  saveacttool = gg.acttool;
  gg.actgate = ((void *)0) ;
  gg.actnode = n;
  gg.acttool = n->simtype;
  gg.action = act_configchnode;
  if (setattr(n->attr, n->simtype->nattr, num, value))
    stamp(&gg.nattrstamp);
  gg.acttool = saveacttool;
}


typedef short flipvec[8];
typedef flipvec fliparr[4];


const  fliparr flips = {
  { 4, 5, 6, 7, 0, 1, 2, 3 },
  { 1, 2, 3, 0, 5, 6, 7, 4 },
  { 4, 7, 6, 5, 0, 3, 2, 1 },
  { 6, 5, 4, 7, 2, 1, 0, 3 }
};











static  short doflip(rot, mode)
short rot, mode;
{
  return (flips[mode][rot]);
}




 
 
 
 
 

static  void  flipgate(g)
log_grec *g;
{
  short i;
  log_krec *WITH;

  if (g->kind->flag.U3.noflip) {
    configgate(g);
    return;
  }
  WITH = g->kind;
  if (g->kind->flag.U3.toggle)
    i = 0;
  else
    i = cureditmode;
  switch (i) {

  case 0:
  case 1:
  case 2:
  case 3:
    remcursor();
    clipon();
    eragate(g);
    disconnectgate(g);
    g->rot = doflip(g->rot, i);
    g->g = g->rot * 256  + (g->g & (256  - 1));
    drawgatex(g);
    clipoff();
    if (!connectgate(g)) {
      frygate(g);
      disposegate(&g);
    }
    restorecursor();
    refreshsoon();
    break;

  case 4:
    configgate(g);
    break;
  }
}



 
 
 
 
 

static  void  flipkind()
{
  short i, z, k;

  remcursor();
  i = (gg.t.x - kindgroupleft) / (25  * 2)  + 1;
  k = kindgroup[i - 1] & (256  - 1);
  if (kindgroup[i - 1] != 0 && !kind[k - 1]->flag.U3.noflip) {
    clipoff();
    kdrawgatec(i, gg.color.backgr);
    z = kindgroup[i - 1] / 256 ;
    if (kind[k - 1]->flag.U3.named)
      z = doflip(z, 2);
    else {
      switch (cureditmode) {

      case 1:
      case 2:
      case 3:
	z = doflip(z, cureditmode);
	break;

      case 4:
	z = doflip(z, 1);
	break;
      }
    }
    kindgroup[i - 1] = z * 256  + k;
    kdrawgatec(i, gg.color.kindgate);
  }
  restorecursor();
}




 
 
 
 
 

static  void  settofrom(g, name)
log_grec **g;
char  *name;
{
  if (!(*g)->kind->flag.U3.named)
    return;
  disconnectgate(*g);
  clipon();
  eragate(*g);
  clipoff();
  (*g)->sig = getsignal((*g)->sig, name);
  if (connectgate(*g)) {
    clipon();
    drawgatex(*g);
    clipoff();
    return;
  }
  frygate(*g);
  disposegate(g);
  *g = ((void *)0) ;
}


static  void  adjustsignal(g)
log_grec *g;
{
  char  n[256];
  uchar ch;
  boolean savecaps, rightface;
  char  STR1[256], STR2[256];

  alert();
  savecaps = nk_setcapslock(signalcaps);
  rightface = (g->kind->flag.U3.nright != (g->rot == 0));
  gsignallabel(g->x, g->y, g, gg.color.backgr);
  *n = '\0';
  do {
    strcat(n, "_");
    remcursor();
    m_colormode((long)16 );
    m_color((long)gg.color.signal);
    if (rightface) {
 

      drawstr2((int)(g->x * gg.scale - gg.xoff - m_strwidth(((void *)0)  ,
		       strrtrim(strcpy(STR1, n))) + 17),
	       (int)(g->y * gg.scale - gg.yoff - 3),
	       strrtrim(strcpy(STR2, n)));
    } else
      drawstr2((int)(g->x * gg.scale - gg.xoff - 17),
	       (int)(g->y * gg.scale - gg.yoff - 3),
	       strrtrim(strcpy(STR1, n)));
    m_colormode((long)0 );
    if (!pollkbd2()) {
      do {
	pass();
	pen();
      } while (!(pollkbd2() || gg.t.dn));
    }
    remcursor();
    m_colormode((long)16 );
    m_color((long)gg.color.signal);
    if (rightface) {
 

      drawstr2((int)(g->x * gg.scale - gg.xoff - m_strwidth(((void *)0)  ,
		       strrtrim(strcpy(STR1, n))) + 17),
	       (int)(g->y * gg.scale - gg.yoff - 3),
	       strrtrim(strcpy(STR2, n)));
    } else
      drawstr2((int)(g->x * gg.scale - gg.xoff - 17),
	       (int)(g->y * gg.scale - gg.yoff - 3),
	       strrtrim(strcpy(STR1, n)));
    m_colormode((long)0 );
    n[strlen(n) - 1] = '\0';
    if (pollkbd2()) {
      ch = inkey2();
      if (ch > ' ' && ch != 250 && ch != 251 || ch == ' ' && *n != '\0')
	sprintf(n + strlen(n), "%c", ch);
 
 
      if (ch == '\007' && *n != '\0')
	n[strlen(n) - 1] = '\0';
    }
  } while (!(ch < 32 && ((1L << ch) & 0x2008) != 0 || gg.t.dn));
  remcursor();
  m_color((long)gg.color.signal);
  if (rightface) {
 

    drawstr2((int)(g->x * gg.scale - gg.xoff - m_strwidth(((void *)0)  ,
		     strrtrim(strcpy(STR1, n))) + 17),
	     (int)(g->y * gg.scale - gg.yoff - 3), strrtrim(strcpy(STR2, n)));
  } else
    drawstr2((int)(g->x * gg.scale - gg.xoff - 17),
	     (int)(g->y * gg.scale - gg.yoff - 3), strrtrim(strcpy(STR1, n)));
  settofrom(&g, n);
  signalcaps = nk_setcapslock(savecaps);
}



static  void  touchgate(g)
log_grec *g;
{
  short xx, yy;

  if (g->kind->flag.U3.named) {
    adjustsignal(g);
    return;
  }
  xx = gg.gridx - g->x;
  yy = gg.gridy - g->y;
  gg.actx = log_irotxx[g->rot] * xx + log_irotyx[g->rot] * yy;
  gg.acty = log_irotxy[g->rot] * xx + log_irotyy[g->rot] * yy;
  xx = gg.t.x - g->x * gg.scale + gg.xoff;
  yy = gg.t.y - g->y * gg.scale + gg.yoff;
  gg.actx2 = log_irotxx[g->rot] * xx + log_irotyx[g->rot] * yy;
  gg.acty2 = log_irotxy[g->rot] * xx + log_irotyy[g->rot] * yy;
  gg.actflag = 0 ;
  calltoolgate(g, act_touchgate);
  if (gg.actflag)
    chpageplace((int)gg.curpage, g->x - g->kind->bbmax, g->y - g->kind->bbmax,
		g->x + g->kind->bbmax, g->y + g->kind->bbmax);
  else if (!gg.invisible || g->kind->flag.U3.visible)
    flipgate(g);
}





static  void  unsoldernear()
{
  short oldx, oldy1, oldy2, oldcolr;
  blobrec *blbase;

  oldx = gg.nearvw->x;
  oldy1 = gg.nearvw->y1;
  oldy2 = gg.nearvw->y2;
  oldcolr = gg.nearvw->wcolr;
  if (gg.nearhw->y == oldy1 || gg.nearhw->y == oldy2 ||
      gg.nearhw->x1 == oldx || gg.nearhw->x2 == oldx)
    return;
  remcursor();
  blbase = ((void *)0) ;
  addblobs(&blbase, oldx, oldy1, oldx, gg.nearhw->y - 1);
  addblobs(&blbase, oldx, gg.nearhw->y + 1, oldx, oldy2);
  delvwire(gg.nearvw);
  addvwire(oldx, oldy1, oldy2, oldcolr);
  doblobs(blbase);
  dispblobs(&blbase);
}


static  void  unsolderwires(hw, vw)
log_hwrec *hw;
log_vwrec *vw;
{
  if (hw == ((void *)0)  || vw == ((void *)0) )
    return;
  gg.nearhw = hw;
  gg.nearvw = vw;
  unsoldernear();
}



static  void  soldernear()
{
  if (!trycombinenodes(&gg.nearvw->node, &gg.nearhw->node)) {
    frysolder(gg.nearvw->x, gg.nearhw->y);
    return;
  }
  clipon();
  addsolder(gg.nearvw->x, gg.nearhw->y, gg.nearhw, ((void *)0) , gg.nearvw, ((void *)0) );
  clipoff();
}


static  void  solderat(x, y)
short x, y;
{
  if (findsolder(x, y) != ((void *)0) )
    return;
  closerwire(x, y);
  if (gg.nearhw != ((void *)0)  && gg.nearvw != ((void *)0)  && gg.nearhw->x1 != x &&
      gg.nearhw->x2 != x && gg.nearvw->y1 != y && gg.nearvw->y2 != y)
    soldernear();
}





static  void  findattrnum2(numattrs, kattr, lbl, name, kinds, num)
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
char  *name, *kinds;
short *num;
{
  na_strlist *l1;

  if (strsubset(name, "0123456789")) {
    if (*name == '\0')
      *num = 0;
    else
      *num = strtol(name, ((void *)0) , 0);
  } else {
    l1 = lbl;
    while (l1 != ((void *)0)  && l1->kind != '\001')
      l1 = l1->next;
    if (l1 != ((void *)0) )
      l1 = strlist_find((na_strlist *)l1->value, name);
    if (l1 != ((void *)0) )
      *num = (long)l1->value;
    else
      *num = 0;
  }
  if (*num < 1 || *num > numattrs ||
      strposc(kinds, kattr[*num - 1].dtype, 1L) == 0 && *kinds != '\0')
    *num = 0;
}


static  void  findattrnum(k, name, kinds, num)
log_krec *k;
char  *name, *kinds;
short *num;
{
  findattrnum2(k->numattrs, k->attr, k->lbl, name, kinds, num);
}



static  void  findattrname2(numattrs, kattr, lbl, num, name)
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
short num;
char  *name;
{
  na_strlist *l1;

  if (num < 1 || num > numattrs) {
    *name = '\0';
    return;
  }
  l1 = lbl;
  while (l1 != ((void *)0)  && l1->kind != '\001')
    l1 = l1->next;
  if (l1 != ((void *)0) ) {
    l1 = (na_strlist *)l1->value;
    while (l1 != ((void *)0)  && (long)l1->value != num)
      l1 = l1->next;
  }
  if (l1 != ((void *)0) )
    strcpy(name, l1->s);
  else
    sprintf(name, "%d", num);
}


static  void  findattrname(k, num, name)
log_krec *k;
short num;
char  *name;
{
  findattrname2(k->numattrs, k->attr, k->lbl, num, name);
}




static  void  findpinnum(k, name_, num)
log_krec *k;
char  *name_;
short *num;
{
  char  name[256];

  strcpy(name, name_);
  if (*name == '#')
    strcpy(name, name + 1);
  if (strsubset(name, "0123456789")) {
    if (*name == '\0') {
      *num = 0;
      return;
    }
    *num = strtol(name, ((void *)0) , 0);
    if (*num < 1 || *num > k->numpins)
      *num = 0;
    return;
  }
  *num = 1;
  while (*num <= k->numpins &&
	 strlist_find(k->pinnames[*num - 1], name) == ((void *)0) )
    (*num)++;
  if (*num > k->numpins)
    *num = 0;
}



static  void  findpinname(k, num, name)
log_krec *k;
short num;
char  *name;
{
  if (num >= 1 && num <= k->numpins && k->pinnames[num - 1] != ((void *)0) ) {
    strcpy(name, k->pinnames[num - 1]->s);
    return;
  }
  if (num == 0)
    *name = '\0';
  else
    sprintf(name, "%d", num);
}




static  void  findpointmarker(k, num, x, y)
log_krec *k;
short num, *x, *y;
{
  long i;

  i = k->numvects;
  while (i >= 1 && (k->vector[i - 1].vkind != 'p' ||
		    k->vector[i - 1].UU.U98.num != num))
    i--;
  if (i >= 1) {
    *x = k->vector[i - 1].x1;
    *y = k->vector[i - 1].y1;
  }
}



static  void  findboxmarker(k, num, x1, y1, x2, y2)
log_krec *k;
short num, *x1, *y1, *x2, *y2;
{
  long i;

  i = k->numvects;
  while (i >= 1 && (k->vector[i - 1].vkind != 'b' ||
		    k->vector[i - 1].UU.U98.num != num))
    i--;
  if (i < 1)
    return;
  k->x1 = k->vector[i - 1].x1;
  k->y1 = k->vector[i - 1].y1;
  k->x2 = k->vector[i - 1].UU.U99.x2;
  k->y2 = k->vector[i - 1].UU.U99.y2;
}









static  void  addlabelat(x, y, s)
short x, y;
char  *s;
{
  log_lrec *l;

  newlabel(&l);
  strcpy(l->name, s);
  l->x = x;
  l->y = y;
  l->w = m_strwidth(((void *)0)  , s) / 5 ;
 

  chpageplace((int)gg.curpage, x, y, x + l->w, y + 2);
  remcursor();
  clipon();
  m_color((long)gg.color.labeltext);
 

  m_drawstr(x * gg.scale - gg.xoff, y * gg.scale - gg.yoff + 2, ((void *)0)  ,
	    s);
  clipoff();
  gg.nearlabel = l;
}



static  void  addlabel(l, s)
log_lrec **l;
char  *s;
{
  boolean conflict;
  log_lrec *l1;
  short x, y;

  x = 0;
  y = baseline - 15;
  do {
    fixxy(&x, &y);
    conflict = 0 ;
    l1 = gg.lbase[gg.curpage - 1];
    while (l1 != ((void *)0) ) {
      if (l1->y * gg.scale - gg.yoff == y &&
	  labs(l1->x * gg.scale - gg.xoff - x) < 20)
	conflict = 1 ;
      l1 = l1->next;
    }
    if (conflict) {
      y -= gg.scale * 2;
      if (y < 10) {
	y = baseline - 15;
	x += gg.scale * 20;
      }
    }
  } while (conflict);
  x = (x + gg.xoff) / gg.scale;
  y = (y + gg.yoff) / gg.scale;
  if (x * gg.scale < gg.xoff)
    x++;
  addlabelat(x, y, s);
  *l = gg.nearlabel;
}








 
 
 
 
 

static  void  editlabel(l)
log_lrec *l;
{
  short i, x1, y1;
  long j;
  uchar ch;
  boolean savecaps, redraw, touching;
  char  name[255  + 1];
  char  STR1[256];

  m_graphics_on();
  clearalpha();
  remcursor();
  alert();
  savecaps = nk_setcapslock(labelcaps);
  touching = (l != ((void *)0)  && l == gg.nearlabel);
  if (l == ((void *)0) )
    addlabel(&l, "");
  x1 = l->x * gg.scale - gg.xoff;
  y1 = l->y * gg.scale - gg.yoff + 2;
  i = 1;
  strcpy(name, l->name);
  if (touching) {
    while (i <= strlen(name) &&
	   gg.t.x - x1 > m_strwidth(((void *)0)  ,
				    (sprintf(STR1, "%.*s", i, name), STR1))) {
 

      i++;
    }
  }
  do {
    do {
      remcursor();
      clipon();
      m_colormode((long)16 );
      m_color((long)gg.color.labeltext);
      sprintf(STR1, "%.*s", i - 1, name);
 

      m_move(x1 + m_strwidth(((void *)0)  , STR1) - 1, y1 + 8L);
      if (i > strlen(name))
	m_drawrel(6L, 0L);
      else {
	sprintf(STR1, "%.1s", name + i - 1);
 

	m_drawrel(m_strwidth(((void *)0)  , STR1), 0L);
      }
      m_colormode((long)0 );
      clipoff();
      j = timers_sysclock() + 25 ;
      if (!pollkbd2()) {
	do {
	  pass();
	  pen();
	} while (!(pollkbd2() || gg.t.dn || timers_sysclock() > j));
      }
      remcursor();
      clipon();
      m_colormode((long)16 );
      m_color((long)gg.color.labeltext);
      sprintf(STR1, "%.*s", i - 1, name);
 

      m_move(x1 + m_strwidth(((void *)0)  , STR1) - 1, y1 + 8L);
      if (i > strlen(name))
	m_drawrel(6L, 0L);
      else {
	sprintf(STR1, "%.1s", name + i - 1);
 

	m_drawrel(m_strwidth(((void *)0)  , STR1), 0L);
      }
      m_colormode((long)0 );
      clipoff();
      j = timers_sysclock() + 25 ;
      if (!(pollkbd2() || gg.t.dn)) {
	do {
	  pass();
	  pen();
	} while (!(pollkbd2() || gg.t.dn || timers_sysclock() > j));
      }
    } while (!(pollkbd2() || gg.t.dn));
    if (!gg.t.dn) {
      ch = inkey2();
      if (ch >= 32 || ((1L << ch) & 0x10002108L) == 0) {
	remcursor();
	m_color((long)gg.color.backgr);
 

	m_drawstr((long)x1, (long)y1, ((void *)0)  , name);
	redraw = 1 ;
      } else
	redraw = 0 ;
      if (ch >= ' ' && ch != 250 && ch != 251 && strlen(name) < 255 ) {
 
 
	if (i <= strlen(name)) {
	  sprintf(STR1, " %s", name + i - 1);
	  strcpy(name + i - 1, STR1);
	} else
	  strcat(name, " ");
	name[i - 1] = ch;
	i++;
      } else if (ch == '\007' && i > 1) {
	i--;
	strcpy(name + i - 1, name + i);
      } else if (ch == '\030' && i <= strlen(name))
	strcpy(name + i - 1, name + i);
      else if (ch == '\b' && i > 1)
	i--;
      else if (ch == '\034' && i <= strlen(name))
	i++;
      else if (ch == '\031')
	i = 1;
      else if (ch == '\032')
	i = strlen(name) + 1;
      else if (ch == '\n' && strlen(name) < 255 ) {
	sprintf(STR1, " %s", name + i - 1);
	strcpy(name + i - 1, STR1);
      } else if (ch == '\037' && i <= strlen(name) && strlen(name) > 1)
	strcpy(name + i - 1, name + i);
      if (redraw) {
	remcursor();
	m_color((long)gg.color.labeltext);
 

	m_drawstr((long)x1, (long)y1, ((void *)0)  , name);
      }
    }
  } while (!(ch < 32 && ((1L << ch) & 0x2008) != 0 || gg.t.dn));
  if (*name == '\0')
    displabel(&l);
  else if (strcmp(name, l->name)) {
    strcpy(l->name, name);
    l->w = m_strwidth(((void *)0)  , l->name) / 5 ;
 

    stamp(&gg.labelstamp);
    chpageplace((int)gg.curpage, l->x, l->y, l->x + l->w, l->y + 2);
  }
  labelcaps = nk_setcapslock(savecaps);
  gg.t.depressed = 0 ;
  refreshsoon();
}







 
 
 
 
 

static  void  addboxat(x1, y1, x2, y2)
short x1, y1, x2, y2;
{
  log_brec *b;

  newbox(&b);
  sortshints(&x1, &x2);
  sortshints(&y1, &y2);
  b->x1 = x1;
  b->y1 = y1;
  b->x2 = x2;
  b->y2 = y2;
  remcursor();
  clipon();
  drawboxc(b, gg.color.dashbox);
  clipoff();
  chpageplace((int)gg.curpage, x1, y1, x2, y2);
  gg.nearbox = b;
}



static  void  addbox()
{
  short x1, y1;

  log_setmode("BOX");
  clearfunc();
  cursortype = boxcursor;
  waitnear();
  do {
    m_tracking(0L);
    do {
      pass();
      trykbdscroll();
      pen();
    } while (!gg.t.dn && gg.stillnear && *gg.func == '\0');
    gg.posx = gg.gridx;
    gg.posy = gg.gridy;
    if (gg.incircuit && gg.stillnear && *gg.func == '\0') {
      x1 = gg.posx;
      y1 = gg.posy;
      m_tracking(1L);
      do {
	pen();
	x1 = gg.gridx;
	y1 = gg.gridy;
	m_colormode((long)16 );
	m_color((long)gg.color.dashbox);
	m_linestyle(1L);
	rect(gg.posx, gg.posy, x1, y1);
	m_linestyle(0L);
	m_colormode((long)0 );
	do {
	  pass();
	  trykbd();
	  pen();
	} while (gg.gridx == x1 && gg.gridy == y1 && gg.t.depressed &&
		 *gg.func == '\0');
	m_colormode((long)16 );
	m_color((long)gg.color.dashbox);
	m_linestyle(1L);
	rect(gg.posx, gg.posy, x1, y1);
	m_linestyle(0L);
	m_colormode((long)0 );
	scroll();
      } while (gg.t.depressed || abs(x1 - gg.posx) < 2 ||
	       abs(y1 - gg.posy) < 2);
      sortshints(&gg.posx, &x1);
      sortshints(&gg.posy, &y1);
      remcursor();
      if (gg.incircuit && *gg.func == '\0')
	addboxat(gg.posx, gg.posy, x1, y1);
    }
  } while (gg.incircuit && gg.stillnear && *gg.func == '\0');
  gg.startpoint = 0 ;
  log_setmode("");
  if (gg.t.dn && !gg.incircuit) {
    gg.t.dn = 0 ;
    gg.t.depressed = 0 ;
  }
  cursortype = normal;
}






static  void  initcolors (void) ;

 
struct LOC_doshellescape {
  long oldc;
} ;

static  void  recov(LINK)
struct LOC_doshellescape *LINK;
{
  nk_settransarray((-1) , &curkeytrans);
  m_initialized=0;
  initscreen2();
 
    initcolormap();
  m_init_pen(tabletaddr);
  initcolors();
  refrscreen();
}


static  void  doshellescape(arg)
char  *arg;
{
  struct LOC_doshellescape V;
  nk_keytransinfo *ktemp;
  long i, j;
  char  STR1[256];

   ;
  m_alpha_on();
  V.oldc = m_maxcolor;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    closedumpfiles();
    nk_settransarray(1 , &ktemp);
     ;
    m_graphics_on();
    recov(&V);
  __top_jb = __try_jb.next; } else { ;
    i = P_escapecode;
    j = P_ioresult;
    recov(&V);
    if (i != -20) {
      beginerror();
      nc_puts (_ShowEscape(STR1, i, j, "During shell escape"));
      enderror();
    }
  } } while (0) ;
}






static  void  dumphistory()
{
  log_htrec *ht;
  log_hnrec *hn;
  short i, FORLIM;

   ;
  clearalpha();
  m_alpha_on();
  hn = gg.hnbase;
  i = 0;
  nc_printf ("Time               ");
  while (hn != ((void *)0) ) {
    nc_printf ("%s%*c",
	   gg.signaltab[hn->sig - 1].name,
	   (int)(15 - strlen(gg.signaltab[hn->sig - 1].name)), ' ');
    hn = hn->next;
    i++;
  }
  nc_putchar ('\n');
  ht = gg.htbase;
  while (ht != ((void *)0) ) {
    nc_printf ("% .5E   ", ht->time);
    FORLIM = hncount;
    for (i = 0; i < FORLIM; i++)
      nc_printf ("%12.6f   ", na_srtor(ht->val[i]));
    nc_putchar ('\n');
    ht = ht->next;
  }
  nc_printf ("Press any key to continue.\n");
  waitforkey();
  gg.showpage = 0;
}





 
 
 
 
 


static  void  reshuffle()
{
  log_hnrec *hn;
  short i;

  i = 0;
  hn = gg.hnbase;
  while (hn != ((void *)0) ) {
    i++;
    hn->num = i;
    hn = hn->next;
  }
  hncount = i;
  histreset = 1 ;
}


static  void  histdelsignals()
{
  log_hnrec *hn;
  log_tool *tool;

  while (gg.hnbase != ((void *)0) ) {
    tool = gg.signaltab[gg.hnbase->sig - 1].np->simtype;
    disposeattrs(&gg.hnbase->attr, tool->hnumattrs, tool->hattr);
    hn = gg.hnbase->next;
    (free((Anyptr)( gg.hnbase )), ( gg.hnbase )= ((void *)0) ) ;
    gg.hnbase = hn;
  }
  histgridhn = ((void *)0) ;
  if (histgridwhich == 2)
    histgridwhich = 0;
  reshuffle();
}





static  void  alignsigname(y)
short *y;
{
  if (histgattr[10  - 1].UU.b)
    *y = histdown - (histdown - *y + (30  / 2)  / 2) / (30  / 2)  * (30  / 2) ;
}




static  short histaddsignalpos()
{
  log_hnrec *hn;
  short y;

  y = 30  / 2;
  do {
    hn = gg.hnbase;
    while (hn != ((void *)0)  && (hn->y + 6  < y - 6  ||
			  hn->y - 6  > y + 6 ))
      hn = hn->next;
    y += 30 ;
  } while (hn != ((void *)0)  && y <= histdown);
  y -= 30 ;
  alignsigname(&y);
  return y;
}


static  void  histaddsignal(hn, sig, y)
log_hnrec **hn;
short sig, y;
{
  log_tool *tool;

  *hn = (log_hnrec *)((__MallocTemp__ = malloc(( sizeof(log_hnrec) ) ? ( sizeof(log_hnrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  (*hn)->y = y;
  (*hn)->sig = sig;
  tool = gg.signaltab[sig - 1].np->simtype;
  newattrs(&(*hn)->attr, tool->hnumattrs, tool->hattr);
  if (gg.traceflag)
    nc_fprintf (tracefile, "Histaddsignal: %ld, %d\n",
	    (long)(*hn)->attr, tool->hnumattrs);
  (*hn)->next = gg.hnbase;
  gg.hnbase = *hn;
  reshuffle();
}



static  void  hnproc1()
{
  calltool(gg.acttool, act_confighist);
}


static  void  hnproc2()
{
  calltool(gg.acttool, act_configchhist);
}


static  void  hnproc3()
{
  calltool(gg.acttool, act_configrelhist);
}


static  void  haproc1()
{
  log_gattrrec *WITH;

  WITH = &histgattr[9  - 1];
  if (WITH->UU.U73.i1 != htcount) {
    WITH->UU.U73.i1 = htcount;
    WITH->blnk = 0 ;
    WITH->changed = 1 ;
  }
  WITH = &histgattr[12  - 1];
  if (WITH->UU.r != gg.time) {
    WITH->UU.r = gg.time;
    WITH->blnk = 0 ;
    WITH->changed = 1 ;
  }
  WITH = &histgattr[14  - 1];
  if (WITH->UU.r == gg.prevtimestep)
    return;
  WITH->UU.r = gg.prevtimestep;
  WITH->blnk = 0 ;
  WITH->changed = 1 ;
}


static  void  haproc2()
{
  log_gattrrec *WITH;

  WITH = &histgattr[gg.actx - 1];
  switch (gg.actx) {

  case 2 :
    if (!strcmp(WITH->UU.c, "(none)"))
      histtrig = 0;
    else
      histtrig = getsignal(0, WITH->UU.c);
    break;

  case 3 :
    if (WITH->UU.r <= 0)
      WITH->blnk = 1 ;
    if (!WITH->blnk && WITH->UU.r >= histgattr[4  - 1].UU.r) {
      histgattr[4  - 1].blnk = 1 ;
      histgattr[4  - 1].changed = 1 ;
    }
    break;

  case 4 :
    if (WITH->UU.r < 0)
      WITH->blnk = 1 ;
    if (!WITH->blnk && WITH->UU.r <= histgattr[3  - 1].UU.r) {
      histgattr[3  - 1].blnk = 1 ;
      histgattr[3  - 1].changed = 1 ;
    }
    break;

  case 6 :
  case 7 :
    if (WITH->UU.r <= 0)
      WITH->blnk = 1 ;
    break;

  case 13 :
    if (WITH->UU.r <= 0)
      gg.actflag = 0 ;
    break;

  case 8 :
    if (WITH->UU.U73.i1 < 2)
      WITH->UU.U73.i1 = 2;
    break;

  case 9 :
  case 12 :
  case 14 :
    gg.actflag = 0 ;
    break;
  }
}


static  void  haproc3()
{
   
}

































typedef short ararr[1000000L ];


 
struct LOC_historycommand {
  boolean rflag, oldtrigger, oldreset, oldonoff, oldfast;
  short oldgridmode, oldgridwhich, gridx1, gridy1, gridx2, gridy2, valuey,
	whichmenu, vmenu1, vmenu2;
  boolean xactive, yactive;
  char  xexpr[256], yexpr[256];
  double gridval, gridval2, gridtime;
  char  gridstr[81];
  long stamp;
} ;

static  double valueattime(hn, time, LINK)
log_hnrec *hn;
double time;
struct LOC_historycommand *LINK;
{
  log_htrec *ht, *ht0;
  double v1, v2, alpha;

  ht = gg.htbase;
  ht0 = ((void *)0) ;
  while (ht != ((void *)0)  && ht->time < time) {
    ht0 = ht;
    ht = ht->next;
  }
  if (ht == ((void *)0)  || ht0 == ((void *)0) )
    return 0.0;
  else {
    v1 = na_srtor(ht0->val[hn->num - 1]);
    v2 = na_srtor(ht->val[hn->num - 1]);
    alpha = (time - ht0->time) / (ht->time - ht0->time);
    return (v1 + (v2 - v1) * alpha);
  }
}

static  log_hnrec *findtrace(x, y, LINK)
short x, y;
struct LOC_historycommand *LINK;
{
  log_htrec *ht, *ht0;
  double v1, v2, value, alpha, time;
  log_hnrec *hn, *besthn;
  short yy, besty;

  time = (double)(x - 40 ) / 30  *
	 histgattr[13  - 1].UU.r + histgattr[11  - 1].UU.r;
  ht = gg.htbase;
  ht0 = ((void *)0) ;
  while (ht != ((void *)0)  && ht->time < time) {
    ht0 = ht;
    ht = ht->next;
  }
  if (ht == ((void *)0)  || ht0 == ((void *)0) )
    return ((void *)0) ;
  else {
    alpha = (time - ht0->time) / (ht->time - ht0->time);
    hn = gg.hnbase;
    besty = 9999;
    while (hn != ((void *)0) ) {
      v1 = na_srtor(ht0->val[hn->num - 1]);
      v2 = na_srtor(ht->val[hn->num - 1]);
      value = v1 + (v2 - v1) * alpha;
      historyvaluey(hn, value, &v1, &yy);
      if (abs(yy - y) < besty) {
	besty = abs(yy - y);
	besthn = hn;
      }
      hn = hn->next;
    }
    if (besty < 15 )
      return besthn;
    else
      return ((void *)0) ;
  }
}



static  void  refrtrigger(LINK)
struct LOC_historycommand *LINK;
{
  if (gg.histactive == LINK->oldtrigger || LINK->whichmenu != 0)
    return;
  remcursor();
  clipoff();
  if (gg.histactive)
    m_color((long)gg.color.selword);
  else
    m_color((long)gg.color.menuword);
  drawstr2((int)((2  + 44)  + 63) , LINK->vmenu1, "Trigger");
  LINK->oldtrigger = gg.histactive;
}

static  void  refrreset(LINK)
struct LOC_historycommand *LINK;
{
  if (gg.resetflag == LINK->oldreset || LINK->whichmenu != 0)
    return;
  remcursor();
  clipoff();
  if (gg.resetflag)
    m_color((long)gg.color.selword);
  else
    m_color((long)gg.color.menuword);
  drawstr2((int)(((2  + 44)  + 63)  + 51) , LINK->vmenu1, "Reset");
  LINK->oldreset = gg.resetflag;
}

static  void  refronoff(LINK)
struct LOC_historycommand *LINK;
{
  if (gg.pwrflag == LINK->oldonoff || LINK->whichmenu != 0)
    return;
  remcursor();
  clipoff();
  if (gg.pwrflag) {
    m_color((long)gg.color.selword);
    drawstr2((int)((((2  + 44)  + 63)  + 51)  + 45) , LINK->vmenu1, "ON ");
  } else {
    m_color((long)gg.color.menuword);
    drawstr2((int)((((2  + 44)  + 63)  + 51)  + 45) , LINK->vmenu1, "OFF");
  }
  LINK->oldonoff = gg.pwrflag;
}

static  void  refrgridmode(LINK)
struct LOC_historycommand *LINK;
{
  if (histgridmode != LINK->oldgridmode && LINK->whichmenu == 0) {
    remcursor();
    clipoff();
    m_color((long)gg.color.selword);
    switch (histgridmode) {

    case 0:
      drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu1, "Delta:   ");
      break;

    case 1:
      drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu1, "Absolute:");
      break;

    case 2:
      drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu1, "Value:   ");
      break;

    case 3:
      drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu1, "Slope:   ");
      break;
    }
    LINK->oldgridmode = histgridmode;
  }
  if (histgridwhich == LINK->oldgridwhich)
    return;
  remcursor();
  clipoff();
  switch (histgridwhich) {

  case 0:
    m_color((long)gg.color.selword);
    drawstr2((int)((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60) , LINK->vmenu1, "Time  ");
    break;

  case 1:
    m_color((long)gg.color.selword);
    drawstr2((int)((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60) , LINK->vmenu1, "Freq  ");
    break;

  case 2:
    m_color((long)gg.color.menuword);
    drawstr2((int)((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60) , LINK->vmenu1, "Signal");
    break;
  }
  LINK->oldgridwhich = histgridwhich;
}

static  void  refrfast(LINK)
struct LOC_historycommand *LINK;
{
  boolean fast;

  fast = (gg.fastspeed == gg.fastmax);
  if (fast == LINK->oldfast || LINK->whichmenu != 0)
    return;
  remcursor();
  clipoff();
  if (fast)
    m_color((long)gg.color.selword);
  else
    m_color((long)gg.color.menuword);
  drawstr2((int)(((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54) , LINK->vmenu1, "Fast");
  LINK->oldfast = fast;
}

static  void  drawsigname(hn, opt, LINK)
log_hnrec *hn;
short opt;
struct LOC_historycommand *LINK;
{
  remcursor();
  clipoff();
  if (opt == 3)
    m_colormode((long)16 );
  else
    m_colormode((long)0 );
  if (opt == 2)
    m_color((long)gg.color.backgr);
  else if (hn == histgridhn && opt != 1)
    m_color((long)gg.color.selword);
  else
    m_color((long)gg.color.signal);
  drawstr2(0, hn->y - 4, gg.signaltab[hn->sig - 1].name);
  m_colormode((long)0 );
}

 
struct LOC_drawhistory {
  struct LOC_historycommand *LINK;
  short x, y, oldx;
  log_htrec *ht;
  short *ar;
} ;

static  void  drawtrace(hn, i, LINK)
log_hnrec *hn;
short i;
struct LOC_drawhistory *LINK;
{
  historypointy(hn, LINK->ht, &LINK->y);
  if ((unsigned long)gg.acty > 15) {
    LINK->ar[i - 1] = 32767 ;
    return;
  }
  m_color(gg.acty);
  if (LINK->ar[i - 1] != 32767 ) {
    m_move((long)LINK->oldx, (long)LINK->ar[i - 1]);
    m_draw((long)LINK->x, (long)LINK->y);
  }
  LINK->ar[i - 1] = LINK->y;
}

static  void  drawhistory(LINK)
struct LOC_historycommand *LINK;
{
  struct LOC_drawhistory V;
  short i, gridi;
  log_hnrec *hn;
  log_htrec *ht1;
  short FORLIM;

  V.LINK = LINK;
  hn = gg.hnbase;
  while (hn != ((void *)0) ) {
    if (histgridhn != hn)
      drawsigname(hn, 0, LINK);
    hn = hn->next;
  }
  if (histgridhn != ((void *)0) )
    drawsigname(histgridhn, 0, LINK);
  if (gg.htbase == ((void *)0) )
    return;
  V.ar = (short *)((__MallocTemp__ = malloc(( hncount * 2 ) ? ( hncount * 2 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = hncount;
  for (i = 0; i < FORLIM; i++)
    V.ar[i] = 32767 ;
  m_clip((long)40 , 0L, (long)across, (long)histdown);
  V.ht = gg.htbase;
  ht1 = gg.htbase;
  while (ht1 != ((void *)0)  && ht1->time < histgattr[11  - 1].UU.r) {
    V.ht = ht1;
    ht1 = ht1->next;
  }
  do {
    historypointx(V.ht, &V.x);
    hn = gg.hnbase;
    i = 0;
    while (hn != ((void *)0) ) {
      i++;
      if (histgridhn != hn)
	drawtrace(hn, i, &V);
      else
	gridi = i;
      hn = hn->next;
    }
    if (histgridhn != ((void *)0) )
      drawtrace(histgridhn, gridi, &V);
    V.oldx = V.x;
    V.ht = V.ht->next;
  } while (V.ht != ((void *)0)  && V.x <= across);
  m_noclip();
  (free((Anyptr)( V.ar )), ( V.ar )= ((void *)0) ) ;
}

static  void  setgridwhich(hn, LINK)
log_hnrec *hn;
struct LOC_historycommand *LINK;
{
  if (histgridhn != ((void *)0) )
    drawsigname(histgridhn, 1, LINK);
  histgridhn = hn;
  if (hn != ((void *)0) )
    histgridwhich = 2;
  else if (histgridwhich == 2)
    histgridwhich = 0;
  if (histgridhn != ((void *)0) )
    drawsigname(histgridhn, 0, LINK);
}

static  void  nextgridwhich(LINK)
struct LOC_historycommand *LINK;
{
  log_hnrec *nexthn;

  nexthn = histgridhn;
  if (nexthn != ((void *)0) )
    drawsigname(nexthn, 1, LINK);
  switch (histgridwhich) {

  case 0:
    histgridwhich = 1;
    break;

  case 1:
    nexthn = gg.hnbase;
    if (nexthn != ((void *)0) )
      histgridwhich = 2;
    else
      histgridwhich = 0;
    break;

  case 2:
    nexthn = nexthn->next;
    if (nexthn == ((void *)0) )
      histgridwhich = 0;
    break;
  }
  histgridhn = nexthn;
  if (histgridhn != ((void *)0) )
    drawsigname(histgridhn, 0, LINK);
}

static  void  nextgridmode(LINK)
struct LOC_historycommand *LINK;
{
  if (histgridmode == 0)
    histgridmode = 3;
  else
    histgridmode--;
}

static  void  confighistmode(LINK)
struct LOC_historycommand *LINK;
{
  boolean flag;
  log_hnrec *hn;
  void  (*TEMP) (void) ;
  void  (*TEMP5) (void) ;
  void  (*TEMP6) (void) ;

  flag = histgattr[10  - 1].UU.b;
  TEMP = haproc1;
  TEMP5 = haproc2;
  TEMP6 = haproc3;
  editattrs(histgattr, histnumattrs, histkattr, histlbl, "Scope", TEMP, TEMP5,
	    TEMP6, &LINK->stamp);
  if (flag)
    return;
  hn = gg.hnbase;
  while (hn != ((void *)0) ) {
    alignsigname(&hn->y);
    hn = hn->next;
  }
}

static  void  passetc(LINK)
struct LOC_historycommand *LINK;
{
  m_noclip();
  refrtrigger(LINK);
  refrreset(LINK);
  refronoff(LINK);
  refrfast(LINK);
  pass();
  pen();
}

static  void  fastmode(LINK)
struct LOC_historycommand *LINK;
{
  long t0;

  t0 = timers_sysclock();
  do {
    gg.fastspeed = gg.fastmax;
    passetc(LINK);
  } while (gg.t.near_ && timers_sysclock() <= t0 + 50);
  gg.fastspeed = gg.fastmax;
}

static  void  dumpcmd(LINK)
struct LOC_historycommand *LINK;
{
  char  fn[256];
  log_htrec *ht;
  log_hnrec *hn;
  short i;
  long j;
  char  STR2[256], STR3[256];
  short FORLIM;

  if (gg.htbase == ((void *)0) )
    return;
  m_color((long)gg.color.selword);
  drawstr2((int)((((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54)  + 40) , LINK->vmenu1, "Dump");
  beginbottom();
  m_alpha_on();
  nc_printf ("Dump file name");
  if (*dumpfname != '\0')
    nc_printf (" [%s]", dumpfname);
  nc_printf (": ");
  readlnpass(fn, 0);
  endbottom();
  beginbottom();
  m_alpha_on();
  if (*fn != '\0')
    setdumpname(fn);
  else
    nc_printf ("Dump file is %s\n", dumpfname);
  if (*dumpfname != '\0') {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;

       









      dumpmessage("");
      sprintf(STR2, "%s (", dumpfname);
      dumpmessage(STR2);    
      dumpmessage("(DATA:");
      dumpmessage("(TITLE: TIME )");
      dumpmessage("(POINTS:");
      ht = gg.htbase;
      while (ht != ((void *)0) ) {    
	sprintf(STR2, "%g", ht->time);
	dumpmessage(STR2);
	ht = ht->next;
      }
      dumpmessage("))");
      hn = gg.hnbase;
      FORLIM = hncount;
      for (i = 0; i < FORLIM; i++) {    
	dumpmessage("(DATA:");    
	sprintf(STR3, "(TITLE: \\\\%s\\)", gg.signaltab[hn->sig - 1].name);
	dumpmessage(STR3);
	dumpmessage("(POINTS:");
	ht = gg.htbase;
	while (ht != ((void *)0) ) {   
	  sprintf(STR3, "%g", na_srtor(ht->val[i]));
	  dumpmessage(STR3);
	  ht = ht->next;
	}
	dumpmessage("))");
	hn = hn->next;
      }
      dumpmessage(")");
       

      closedump();
    __top_jb = __try_jb.next; } else { ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
      i = P_ioresult;
      j = P_escapecode;
      beginerror();
      if (0   || 1  )
	nc_printf ("%ld/%d/%ld   ", j, i, EXCP_LINE);
      nc_printf ("Unable to write dump file \"%s\"\n", dumpfname);
      enderror();
    } } while (0) ;
  }
  endbottom();
  LINK->rflag = 1 ;
}

static  void  refraxis(pos, name, expr, flag, LINK)
long pos;
char  *name, *expr;
boolean flag;
struct LOC_historycommand *LINK;
{
  if (flag)
    m_color((long)gg.color.selword);
  else
    m_color((long)gg.color.menuword);
  drawstr2((int)pos, LINK->vmenu1, name);
  uerase((int)pos, LINK->vmenu2 - 2, (int)(pos + 50  - 3),
	 LINK->vmenu2 + 12);
  m_clip(pos, LINK->vmenu2 - 2L, pos + 50  - 3, LINK->vmenu2 + 12L);
  m_color((long)gg.color.menuword);
  drawstr2((int)pos, LINK->vmenu2, expr);
  m_noclip();
}

static  void  refraxes(LINK)
struct LOC_historycommand *LINK;
{
  refraxis((2  + 44) , "X-axis", LINK->xexpr, LINK->xactive, LINK);
  refraxis(((2  + 44)  + 50 ) , "Y-axis", LINK->yexpr, LINK->yactive, LINK);
}

static  void  setaxis(expr, LINK)
char  *expr;
struct LOC_historycommand *LINK;
{
  if (LINK->xactive) {
    LINK->xactive = 0 ;
    strcpy(LINK->xexpr, expr);
    if (*LINK->yexpr == '\0')
      LINK->yactive = 1 ;
    refraxes(LINK);
    return;
  }
  if (!LINK->yactive)
    return;
  LINK->yactive = 0 ;
  strcpy(LINK->yexpr, expr);
  if (*LINK->xexpr == '\0')
    LINK->xactive = 1 ;
  refraxes(LINK);
}

static  void  getexpr(LINK)
struct LOC_historycommand *LINK;
{
  char  expr[256];

  if (!(LINK->xactive || LINK->yactive))
    return;
  beginbottom();
  m_alpha_on();
  nc_printf ("Expression to plot: ");
  readlnpass(expr, 0);
  endbottom();
  strcompress(expr, " ", 1 );
  if (*expr != '\0')
    setaxis(expr, LINK);
}

static  void  plotcmd(LINK)
struct LOC_historycommand *LINK;
{
  char  STR1[256];

  if (*LINK->xexpr == '\0' || *LINK->yexpr == '\0')
    return;
  sprintf(STR1, "PLOT SCOPE %s %s", LINK->xexpr, LINK->yexpr);
  assertfunc(STR1);
  dofunction();
  clearfunc();
  LINK->rflag = 1 ;
}

static  void  measurecmd(LINK)
struct LOC_historycommand *LINK;
{
  char  STR1[81];

  do {
    m_tracking(1L);
    while ((gg.t.x < 40  || gg.t.y > histdown) && gg.t.depressed)
      pen();
    LINK->gridx2 = gg.t.x;
    LINK->gridy2 = gg.t.y;
    m_colormode((long)16 );
    m_color((long)gg.color.scroll);
    *LINK->gridstr = '\0';
    if (histgridwhich == 2) {
      gg.actx = histgridhn->sig;
      gg.actgattr = histgridhn->attr;
    }
    *gg.actstr = '\0';
    gg.acty = histgridmode;
    switch (histgridwhich * 100 + histgridmode) {

    case 0:
      m_drawline((long)LINK->gridx1, 0L, (long)LINK->gridx1, (long)histdown);
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      gg.actval = (double)abs(LINK->gridx2 - LINK->gridx1) / 30 ;
      realunit(LINK->gridstr, gg.actval * histgattr[13  - 1].UU.r, 4,
	       "s", 1 );
      break;

    case 1:
    case 101:
    case 2:
    case 102:
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      gg.actval = (double)(LINK->gridx2 - 40 ) / 30 ;
      realunit(LINK->gridstr, gg.actval * histgattr[13  - 1].UU.r +
			      histgattr[11  - 1].UU.r, 4, "s",
	       1 );
      break;

    case 3:
    case 103:
      m_drawline((long)LINK->gridx1, (long)LINK->gridy1, (long)LINK->gridx2,
		 (long)LINK->gridy2);
      break;

    case 100:
      m_drawline((long)LINK->gridx1, 0L, (long)LINK->gridx1, (long)histdown);
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      gg.actval = (double)abs(LINK->gridx2 - LINK->gridx1) / 30 ;
      if (gg.actval != 0)
	realunit(LINK->gridstr,
		 1 / (gg.actval * histgattr[13  - 1].UU.r), 4, "Hz",
		 1 );
      break;

    case 200:
      m_drawline((long)40 , (long)LINK->gridy1, (long)across,
		 (long)LINK->gridy1);
      m_drawline((long)40 , (long)LINK->gridy2, (long)across,
		 (long)LINK->gridy2);
      gg.actval2 = (double)LINK->gridy1 / 30 ;
      gg.actval3 = (double)LINK->gridy2 / 30 ;
      gg.actval = fabs(gg.actval3 - gg.actval2);
      calltoolnode(gg.signaltab[gg.actx - 1].np, act_histstr);
      if (*gg.actstr == '\0')
	realunit(LINK->gridstr, gg.actval, 4, "", 1 );
      else
	strcpy(LINK->gridstr, gg.actstr);
      break;

    case 201:
      m_drawline((long)40 , (long)LINK->gridy2, (long)across,
		 (long)LINK->gridy2);
      gg.actval = (double)(histgridhn->y - LINK->gridy2) / 30 ;
      calltoolnode(gg.signaltab[gg.actx - 1].np, act_histstr);
      if (*gg.actstr == '\0')
	realunit(LINK->gridstr, gg.actval, 4, "", 1 );
      else
	strcpy(LINK->gridstr, gg.actstr);
      break;

    case 202:
      LINK->gridtime =
	(double)(LINK->gridx2 - 40 ) / 30  *
	histgattr[13  - 1].UU.r + histgattr[11  - 1].UU.r;
      LINK->gridval2 = valueattime(histgridhn, LINK->gridtime, LINK);
      historyvaluey(histgridhn, LINK->gridval2, &LINK->gridval, &LINK->valuey);
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      m_drawline((long)40 , (long)LINK->valuey, (long)across,
		 (long)LINK->valuey);
      gg.actval = LINK->gridval;
      gg.actval2 = LINK->gridval2;
      gg.actval3 = LINK->gridtime;
      *gg.actstr = '\0';
      gg.acty = histgridmode;
      gg.actx = histgridhn->sig;
      gg.actgattr = histgridhn->attr;
      calltoolnode(gg.signaltab[gg.actx - 1].np, act_histstr);
      if (*gg.actstr == '\0')
	strcpy(gg.actstr, realunit(STR1, gg.actval, 4, "", 1 ));
      sprintf(LINK->gridstr, "%s  ->  %s",
	      realunit(STR1, LINK->gridtime, 4, "s", 1 ), gg.actstr);
      break;

    case 203:
      m_drawline((long)LINK->gridx1, (long)LINK->gridy1, (long)LINK->gridx2,
		 (long)LINK->gridy2);
      if (LINK->gridx1 != LINK->gridx2) {
	gg.actval2 = (LINK->gridx2 - LINK->gridx1) * histgattr[13  - 1].UU.r;
	gg.actval = (LINK->gridy1 - LINK->gridy2) / gg.actval2;
	gg.actval2 /= 30 ;
	gg.actval3 = (double)LINK->gridy1 / 30 ;
	calltoolnode(gg.signaltab[gg.actx - 1].np, act_histstr);
	if (*gg.actstr == '\0')
	  realunit(LINK->gridstr, gg.actval, 4, "", 1 );
	else
	  strcpy(LINK->gridstr, gg.actstr);
	strcat(LINK->gridstr, "/s");
      }
      break;
    }
    m_color((long)gg.color.selword);
    m_colormode((long)0 );
    clipoff();
    drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu2, LINK->gridstr);
    do {
      passetc(LINK);
    } while (!gg.t.moving);
    m_colormode((long)16 );
    m_color((long)gg.color.selword);
    clipoff();
    drawstr2((int)(((((2  + 44)  + 63)  + 51)  + 45)  + 26) , LINK->vmenu2, LINK->gridstr);
    m_color((long)gg.color.scroll);
    switch (histgridwhich * 100 + histgridmode) {

    case 0:
    case 100:
      m_drawline((long)LINK->gridx1, 0L, (long)LINK->gridx1, (long)histdown);
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      break;

    case 1:
    case 101:
    case 2:
    case 102:
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      break;

    case 3:
    case 103:
    case 203:
      m_drawline((long)LINK->gridx1, (long)LINK->gridy1, (long)LINK->gridx2,
		 (long)LINK->gridy2);
      break;

    case 200:
      m_drawline((long)40 , (long)LINK->gridy1, (long)across,
		 (long)LINK->gridy1);
      m_drawline((long)40 , (long)LINK->gridy2, (long)across,
		 (long)LINK->gridy2);
      break;

    case 201:
      m_drawline((long)40 , (long)LINK->gridy2, (long)across,
		 (long)LINK->gridy2);
      break;

    case 202:
      m_drawline((long)LINK->gridx2, 0L, (long)LINK->gridx2, (long)histdown);
      m_drawline((long)40 , (long)LINK->valuey, (long)across,
		 (long)LINK->valuey);
      break;
    }
    m_colormode((long)0 );
  } while (gg.t.depressed);
}


static  void  historycommand()
{
  struct LOC_historycommand V;
  short y, i;
  long t;
  log_hnrec *hn, *hn0, *hn1, *hn2, *hn1a, *hn2a, *movinghn;
  uchar ch;
  char  name[256];
  log_tool *tool;
  boolean flag, rmflag, keyflag, savecaps;
  short scrollpos, scrollmin;
  double newhistfirsttime;
  boolean gridflag;
  void  (*TEMP) (void) ;
  void  (*TEMP5) (void) ;
  void  (*TEMP6) (void) ;
  char  STR2[256];
  char  STR3[256];
  char  TEMP7;

  savecaps = nk_setcapslock(signalcaps);
  remcursor();
  clipoff();
  V.vmenu1 = histdown + 5;
  V.vmenu2 = V.vmenu1 + 11;
  gridflag = 0 ;
  *V.xexpr = '\0';
  *V.yexpr = '\0';
  V.xactive = 0 ;
  V.yactive = 1 ;
  V.whichmenu = 0;
  V.rflag = 1 ;
  rmflag = 1 ;
  hn = gg.hnbase;
  while (hn != ((void *)0) ) {
    if (hn->y > histdown)
      hn->y = histaddsignalpos();
    hn = hn->next;
  }
  do {
    if (V.rflag) {
      clearscreen();
      movinghn = ((void *)0) ;
      pass();
      gg.showpage = (-2) ;
      rmflag = 1 ;
    }
    if (rmflag) {
      uerase(0, histdown + 1, across, down);
      m_color((long)gg.color.menuword);
      drawstr2(2 , V.vmenu1, "QUIT");
      drawstr2(484 , V.vmenu1, "QUIT");
      switch (V.whichmenu) {

      case 0:
	drawstr2((int)(2  + 44) , V.vmenu1, "Configure");
	V.oldfast = (gg.fastspeed != gg.fastmax);
	refrfast(&V);
	m_color((long)gg.color.menuword);
	drawstr2((int)((((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54)  + 40) , V.vmenu1, "Dump");
	drawstr2((int)(484  - 50) , V.vmenu1, "PLOT");
	V.oldtrigger = !gg.histactive;
	refrtrigger(&V);
	V.oldreset = !gg.resetflag;
	refrreset(&V);
	V.oldonoff = !gg.pwrflag;
	refronoff(&V);
	V.oldgridmode = histgridmode - 1;
	V.oldgridwhich = histgridwhich - 1;
	refrgridmode(&V);
	break;

      case 1:
	drawstr2((int)(((2  + 44)  + 50 )  + 50  + 20) , V.vmenu1, "Expression");
	drawstr2((int)((((2  + 44)  + 50 )  + 50  + 20)  + 65) , V.vmenu1, "Time");
	drawstr2((int)(((((2  + 44)  + 50 )  + 50  + 20)  + 65)  + 80) , V.vmenu1, "Plot");
	drawstr2((int)(484  - 50) , V.vmenu1, "SCOPE");
	refraxes(&V);
	break;
      }
    }
    if (V.rflag) {
      drawhistdivisions(40 , across);
      drawhistory(&V);
    }
    V.rflag = 0 ;
    rmflag = 0 ;
    refrgridmode(&V);
    ch = '\0';
    m_tracking(0L);
    do {
      if (histgattr[1  - 1].UU.nv == 0  &&
	  gg.histactive) {
	passetc(&V);
	flag = (gg.time < histgattr[11  - 1].UU.r +
			  histdivsacross * histgattr[13  - 1].UU.r);
	if (!flag && histonscreen) {
	  histgattr[11  - 1].UU.r =
	    gg.time - histdivsacross * histgattr[13  - 1].UU.r * 0.1;
	  ch = ' ';
	}
	histonscreen = flag;
      } else {
	passetc(&V);
	histonscreen = 0 ;
      }
      if (pollkbd2())
	ch = inkey2();
    } while (!(gg.t.dn || ch != '\0'));
    if (gg.t.dn) {
      remcursor();
      clipoff();
      V.gridx1 = gg.t.x;
      V.gridy1 = gg.t.y;
      if (gg.t.y > histdown) {
	if (gg.t.x < (2  + 44)  - 3)
	  ch = '\003';
	else if (gg.t.x >= 484  - 3)
	  ch = '\003';
	else if (gg.t.x >= (484  - 50)  - 3) {
	  V.whichmenu = (V.whichmenu + 1) & (2  - 1);
	  rmflag = 1 ;
	} else {
	  switch (V.whichmenu) {

	  case 0:
	    if (gg.t.x < ((2  + 44)  + 63)  - 3) {
	      confighistmode(&V);
	      V.rflag = 1 ;
	    } else if (gg.t.x < (((2  + 44)  + 63)  + 51)  - 3) {
	      if (gg.histactive)
		gg.histactive = 0 ;
	      else {
		gg.histactive = 1 ;
		histreset = 1 ;
	      }
	    } else if (gg.t.x < ((((2  + 44)  + 63)  + 51)  + 45)  - 3)
	      gg.resetflag = 1 ;
	    else if (gg.t.x < (((((2  + 44)  + 63)  + 51)  + 45)  + 26)  - 3)
	      gg.pwrflag = !gg.pwrflag;
	    else if (gg.t.x < ((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  - 3)
	      nextgridmode(&V);
	    else if (gg.t.x < (((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54)  - 3)
	      nextgridwhich(&V);
	    else if (gg.t.x < ((((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54)  + 40)  - 3)
	      fastmode(&V);
	    else if (gg.t.x < (((((((((2  + 44)  + 63)  + 51)  + 45)  + 26)  + 60)  + 54)  + 40)  + 40)  - 3)
	      dumpcmd(&V);
	    break;

	  case 1:
	    if (gg.t.x < ((2  + 44)  + 50 )  - 3) {
	      V.xactive = !V.xactive;
	      V.yactive = 0 ;
	      refraxes(&V);
	    } else if (gg.t.x < (((2  + 44)  + 50 )  + 50  + 20)  - 3) {
	      V.xactive = 0 ;
	      V.yactive = !V.yactive;
	      refraxes(&V);
	    } else if (gg.t.x < ((((2  + 44)  + 50 )  + 50  + 20)  + 65)  - 3)
	      getexpr(&V);
	    else if (gg.t.x < (((((2  + 44)  + 50 )  + 50  + 20)  + 65)  + 80)  - 3)
	      setaxis("Time", &V);
	    else if (gg.t.x < ((((((2  + 44)  + 50 )  + 50  + 20)  + 65)  + 80)  + 50)  - 3)
	      plotcmd(&V);
	    break;
	  }
	}
      } else if (gg.t.x < 40  - 3) {
	hn = gg.hnbase;
	hn0 = ((void *)0) ;
	hn1 = ((void *)0) ;
	hn2 = ((void *)0) ;
	hn1a = ((void *)0) ;
	hn2a = ((void *)0) ;
	while (hn != ((void *)0) ) {
	  if (hn->y > gg.t.y - 6  && hn->y < gg.t.y + 6 ) {
	    if (histgridhn == hn) {
	      hn2 = hn;
	      hn2a = hn0;
	    } else {
	      hn1 = hn;
	      hn1a = hn0;
	    }
	  }
	  hn0 = hn;
	  hn = hn->next;
	}
	if (hn2 != ((void *)0) ) {
	  hn = hn2;
	  hn0 = hn2a;
	} else {
	  hn = hn1;
	  hn0 = hn1a;
	}
	if (hn != ((void *)0) ) {
	  switch (V.whichmenu) {

	  case 0:
	    if (justtap()) {
	      gg.actnode = gg.signaltab[hn->sig - 1].np;
	      gg.acty = hn->sig;
	      gg.acttool = gg.actnode->simtype;
	      TEMP = hnproc1;
	      TEMP5 = hnproc2;
	      TEMP6 = hnproc3;
	      editattrs(hn->attr, gg.acttool->hnumattrs, gg.acttool->hattr,
			gg.acttool->hlbl, gg.signaltab[hn->sig - 1].name,
			TEMP, TEMP5, TEMP6, &V.stamp);
	      V.rflag = 1 ;
	    } else {
	      movinghn = hn;
	      drawsigname(hn, 2, &V);
	      m_tracking(1L);
	      do {
		hn->y = gg.t.y;
		flag = (gg.t.y > 0 && gg.t.y < histdown + 3);
		alignsigname(&hn->y);
		if (gg.t.y >= histdown)
		  gg.t.y = histdown;
		if (flag)
		  drawsigname(hn, 3, &V);
		do {
		  passetc(&V);
		} while (gg.t.depressed && gg.t.y == gg.t0.y);
		if (flag)
		  drawsigname(hn, 3, &V);
	      } while (gg.t.depressed);
	      if (!flag) {
		if (gg.traceflag)
		  nc_fprintf (tracefile, "Delete trace %ld\n", (long)hn);
		if (hn == histgridhn) {
		  histgridwhich = 0;
		  histgridhn = ((void *)0) ;
		}
		tool = gg.signaltab[hn->sig - 1].np->simtype;
		disposeattrs(&hn->attr, tool->hnumattrs, tool->hattr);
		if (hn0 == ((void *)0) )
		  gg.hnbase = hn->next;
		else
		  hn0->next = hn->next;
		(free((Anyptr)( hn )), ( hn )= ((void *)0) ) ;
		reshuffle();
	      }
	      V.rflag = 1 ;
	    }
	    break;

	  case 1:
	    setaxis(gg.signaltab[hn->sig - 1].name, &V);
	    break;
	  }
	}
      } else {
	switch (V.whichmenu) {

	case 0:
	  if (justtap()) {
	    hn = findtrace(V.gridx1, V.gridy1, &V);
	    if (hn != ((void *)0) )
	      setgridwhich(hn, &V);
	  } else
	    measurecmd(&V);
	  break;

	case 1:
	  hn = findtrace((int)gg.t.x, (int)gg.t.y, &V);
	  if (hn != ((void *)0) )
	    setaxis(gg.signaltab[hn->sig - 1].name, &V);
	  break;
	}
      }
    } else if (ch == 251 || ch == 250 || ch == ' ') {
 
 
      V.rflag = 1 ;
    } else if (ch == '<') {
      do {
	histgattr[13  - 1].UU.r *= 2;
	t = timers_sysclock() + 25 ;
	do {
	} while (!(timers_sysclock() > t || pollkbd2()));
	if (testkey2() == '<')
	  ch = inkey2();
	else
	  V.rflag = 1 ;
      } while (!V.rflag);
    } else if (ch == '>') {
      do {
	histgattr[13  - 1].UU.r /= 2;
	t = timers_sysclock() + 25 ;
	do {
	} while (!(timers_sysclock() > t || pollkbd2()));
	if (testkey2() == '>')
	  ch = inkey2();
	else
	  V.rflag = 1 ;
      } while (!V.rflag);
    } else if (ch < 32 && ((1L << ch) & 0x10000100L) != 0) {
      scrollpos = 0;
      gg.actval = -histgattr[11  - 1].UU.r /
		  histgattr[13  - 1].UU.r;
      if (gg.actval < -histdivsacross)
	scrollmin = -across * 2;
      else
	scrollmin = (long)floor(gg.actval * 30  + 0.5);
      do {
	if (ch == '\b')
	  scrollpos -= 2  * 5;
	if (ch == '\034')
	  scrollpos += 2  * 5;
	if (scrollpos < scrollmin)
	  scrollpos = scrollmin;
	m_colormode((long)16 );
	m_color((long)gg.color.scroll);
	if (scrollpos > 0)
	  m_drawline(scrollpos + 40  - 1L, 0L, scrollpos + 40  - 1L,
		     (long)histdown);
	m_drawline(scrollpos + across + 1L, 0L, scrollpos + across + 1L,
		   (long)histdown);
	m_colormode((long)0 );
	t = timers_sysclock() + 25 ;
	do {
	} while (!(timers_sysclock() > t || pollkbd2()));
	TEMP7 = testkey2();
	if ((uchar)TEMP7 < 32 && ((1L << TEMP7) & 0x10000100L) != 0)
	  ch = inkey2();
	else
	  ch = ' ';
	m_colormode((long)16 );
	m_color((long)gg.color.scroll);
	if (scrollpos > 0)
	  m_drawline(scrollpos + 40  - 1L, 0L, scrollpos + 40  - 1L,
		     (long)histdown);
	m_drawline(scrollpos + across + 1L, 0L, scrollpos + across + 1L,
		   (long)histdown);
	m_colormode((long)0 );
      } while (ch < 32 && ((1L << ch) & 0x10000100L) != 0 &&
	       abs(scrollpos) <= across - 40  - 10);
      if (scrollpos == scrollmin)
	newhistfirsttime = 0.0;
      else
	newhistfirsttime = histgattr[11  - 1].UU.r +
	    (double)scrollpos / 30  * histgattr[13  - 1].UU.r;
      if (histgattr[11  - 1].UU.r != newhistfirsttime) {
	histgattr[11  - 1].UU.r = newhistfirsttime;
	histgattr[11  - 1].changed = 1 ;
	V.rflag = 1 ;
      }
      histonscreen = 0 ;
    } else if (ch == '!') {
      doshellescape("");
      V.rflag = 1 ;
    } else if (ch > ' ') {
      switch (V.whichmenu) {

      case 0:
	y = histaddsignalpos();
	*name = '\0';
	keyflag = 1 ;
	do {
	  strcat(name, "_");
	  remcursor();
          clipoff();
	  m_colormode((long)16 );
	  m_color((long)gg.color.signal);
	  drawstr2(0, y - 4, name);
	  m_colormode((long)0 );
	  while (!gg.t.dn && !keyflag) {
	    passetc(&V);
	    if (pollkbd2()) {
	      ch = inkey2();
	      keyflag = 1 ;
	    }
	  }
	  m_colormode((long)16 );
	  m_color((long)gg.color.signal);
	  clipoff();
          drawstr2(0, y - 4, name);
	  m_colormode((long)0 );
	  name[strlen(name) - 1] = '\0';
	  if (keyflag) {
	    keyflag = 0 ;
	    if (ch > ' ' || ch == ' ' && *name != '\0')
	      sprintf(name + strlen(name), "%c", ch);
	    if (ch == '\007' && *name != '\0')
	      name[strlen(name) - 1] = '\0';
	  }
	} while (!(ch < 32 && ((1L << ch) & 0x2008) != 0 || gg.t.dn));
	sprintf(STR2, "%c", ch);
	if (!strcmp(STR2, "\003" ))
	  *name = '\0';
	else
	  strcpy(name, strrtrim(strcpy(STR3, name)));
	remcursor();
        clipoff();
	i = getsignal(0, name);
	if (i != 0) {
	  histaddsignal(&hn, i, y);
	  V.rflag = 1 ;
	}
	break;

      case 1:
	if (V.xactive || V.yactive) {
	  ungetkey2(realkey);
	  getexpr(&V);
	}
	break;
      }
    }
  } while (strcmp((sprintf(STR2, "%c", ch), STR2), "\003" ));
  signalcaps = nk_setcapslock(savecaps);
}























 
struct LOC_savepage {
  log_hwrec *firsthwire;
  log_vwrec *firstvwire;
  log_nrec *firstnode;
  short numhw, maxunat;
} ;

static  short countnode(n, LINK)
log_nrec *n;
struct LOC_savepage *LINK;
{
  short i;
  log_nrec *n1;

  i = 1;
  n1 = LINK->firstnode;
  while (n1 != n && n1 != ((void *)0) ) {
    i++;
    n1 = (log_nrec *)n1->temp;
  }
  return i;
}

static  short counthw(hw, LINK)
log_hwrec *hw;
struct LOC_savepage *LINK;
{
  short i;
  log_hwrec *hw1;

  i = 1;
  hw1 = LINK->firsthwire;
  while (hw1 != hw && hw1 != ((void *)0) ) {
    i++;
    hw1 = (log_hwrec *)hw1->temp;
  }
  if (hw1 == ((void *)0) )
    nc_printf ("\007Unable to find hwire %ld\n", (long)hw);
  return i;
}

static  short countvw(vw, LINK)
log_vwrec *vw;
struct LOC_savepage *LINK;
{
  short i;
  log_vwrec *vw1;

  i = 1;
  vw1 = LINK->firstvwire;
  while (vw1 != vw && vw1 != ((void *)0) ) {
    i++;
    vw1 = (log_vwrec *)vw1->temp;
  }
  if (vw1 == ((void *)0) )
    nc_printf ("\007Unable to find vwire %ld\n", (long)vw);
  return (i + LINK->numhw);
}

static  boolean eqattr(ka, ga, LINK)
log_kattrrec *ka;
log_gattrrec *ga;
struct LOC_savepage *LINK;
{
  boolean Result;

  switch (ka->dtype) {

  case 'R':
  case 'U':
  case 'F':
    Result = (ga->blnk == ka->blnk && ga->UU.r == ka->UU.U82.r);
    break;

  case 'I':
  case 'H':
    Result = (ga->blnk == ka->blnk && ga->UU.U73.i1 == ka->UU.U73.i1);
    break;

  case 'C':
    Result = (strcmp(ga->UU.c, ka->UU.c) == 0);
    break;

  case 'A':
    Result = (strcmp(ga->UU.sp, ka->UU.sp) == 0);
    break;

  case 'B':
    Result = (ga->blnk == ka->blnk && ga->UU.b == ka->UU.b);
    break;

  case 'V':
    Result = (ga->UU.nv == ka->UU.U86.dv);
    break;
  }
  return Result;
}

static  na_strlist *attrname(i, lbl, LINK)
short i;
na_strlist *lbl;
struct LOC_savepage *LINK;
{
  na_strlist *l1;

  l1 = lbl;
  while (l1 != ((void *)0)  && l1->kind != '\001')
    l1 = l1->next;
  if (l1 == ((void *)0) )
    return l1;
  l1 = (na_strlist *)l1->value;
  while (l1 != ((void *)0)  && (long)l1->value != i)
    l1 = l1->next;
  return l1;
}

static  short countattrs(gattr, numattrs, kattr, lbl, LINK)
log_gattrrec *gattr;
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
struct LOC_savepage *LINK;
{
  short i, j;

  j = 0;
  for (i = 1; i <= numattrs; i++) {
    if (!eqattr(&kattr[i - 1], &gattr[i - 1], LINK) &&
	attrname(i, lbl, LINK) == ((void *)0) )
      j = i;
  }
  LINK->maxunat = j;
  for (i = j; i < numattrs; i++) {
    if (!eqattr(&kattr[i], &gattr[i], LINK))
      j++;
  }
  return j;
}

static  void  writeattrs(f, gattr, numattrs, kattr, lbl, LINK)
FILE **f;
log_gattrrec *gattr;
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
struct LOC_savepage *LINK;
{
  short num, i;    
  na_strlist *l1;
  char  STR2[81];

  num = countattrs(gattr, numattrs, kattr, lbl, LINK);
  for (i = 1; i <= numattrs; i++) {
    if (i <= LINK->maxunat || !eqattr(&kattr[i - 1], &gattr[i - 1], LINK)) {
      l1 = attrname(i, lbl, LINK);
      if (l1 != ((void *)0) )
	nc_fprintf (*f, "[%s] ", l1->s);
      if (gattr[i - 1].blnk)
	nc_fprintf (*f, "X\n");
      else {
	nc_putc (kattr[i - 1].dtype, *f);
	switch (kattr[i - 1].dtype) {

	case 'R':
	case 'U':
	case 'F':
	  nc_fprintf (*f, "%s\n",
		  realstr(STR2, gattr[i - 1].UU.r, kattr[i - 1].prec));
	  break;

	case 'I':
	case 'H':
	  nc_fprintf (*f, "%ld\n", gattr[i - 1].UU.U73.i1);
	  break;

	case 'C':
	  nc_fprintf (*f, "%s\n", gattr[i - 1].UU.c);
	  break;

	case 'A':
	  nc_fprintf (*f, "%s\n", gattr[i - 1].UU.sp);
	  break;

	case 'B':
	  nc_fprintf (*f, "%d\n", gattr[i - 1].UU.b);
	  break;

	case 'V':
	  nc_fprintf (*f, "%d\n", gattr[i - 1].UU.nv);
	  break;
	}
      }
    }
  }
}









static  void  savepage(pgnum, filename_)
short pgnum;
char  *filename_;
{
  struct LOC_savepage V;
  char  filename[256];
  FILE *f;
  log_grec *g;
  log_srec *s, *firstsolder;
  log_hwrec *hw;
  log_vwrec *vw;
  log_lrec *l, *firstlabel;
  log_brec *b, *firstbox;
  log_krec *k;
  log_hnrec *hn;
  char  buf[256];
  log_nrec *n1, *lastnode;
  short i, j, count, numvw, numnodes;
  char  STR1[9];
  char  STR2[256];
  short FORLIM;

  strcpy(filename, filename_);
  f = ((void *)0) ;
  newci_fixfname(filename, "lgf", "");
  if (*filename != '\0' && pageempty(pgnum) && access(filename, 0 ) == 0) {
    sprintf(STR2, "File %s not overwritten with empty page!", filename);
    message(STR2);
    *filename = '\0';
  }
  if (*filename != '\0') {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      strcpy(buf, filename);
      newci_forcefname(buf, "lfo", "");
      fp_change(filename, buf);
    __top_jb = __try_jb.next; } else { ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
    } } while (0) ;
    if (f != ((void *)0) )
      f = freopen(filename, "w", f);
    else
      f = fopen(filename, "w");
    if (f == ((void *)0) )
      _EscIO(10 );
    nc_fprintf (f, "-5\n");
     


    nc_fprintf (f, "f s\n");
    n1 = gg.nbase;
    while (n1 != ((void *)0) ) {
      n1->flag = 0 ;
      n1 = n1->next;
    }
    hw = gg.hwbase[pgnum - 1];
    while (hw != ((void *)0) ) {
      hw->node->flag = 1 ;
      hw = hw->next;
    }
    vw = gg.vwbase[pgnum - 1];
    while (vw != ((void *)0) ) {
      vw->node->flag = 1 ;
      vw = vw->next;
    }
    g = gg.gbase[pgnum - 1];
    while (g != ((void *)0) ) {
      FORLIM = g->kind->numpins;
      for (i = 0; i < FORLIM; i++)
	g->pin[i]->flag = 1 ;
      g = g->next;
    }
    numnodes = 0;
    V.firstnode = ((void *)0) ;
    lastnode = ((void *)0) ;
    n1 = gg.nbase;
    while (n1 != ((void *)0) ) {
      if (n1->flag) {
	numnodes++;
	 

	if (lastnode != ((void *)0) )
	  lastnode->temp = (Anyptr)n1;
	else
	  V.firstnode = n1;
	n1->temp = ((void *)0) ;
	lastnode = n1;
      }
      n1 = n1->next;
    }
    nc_fprintf (f, "n %d\n", numnodes);
    n1 = V.firstnode;
    while (n1 != ((void *)0) ) {
      nc_fprintf (f, "%d ", n1->simtype->simtype);
      nc_fprintf (f, "%d\n",
	      countattrs(n1->attr, n1->simtype->nnumattrs, n1->simtype->nattr,
			 n1->simtype->nlbl, &V));
      writeattrs(&f, n1->attr, n1->simtype->nnumattrs, n1->simtype->nattr,
		 n1->simtype->nlbl, &V);
      gg.actfile = &f;
      gg.actflag = 0 ;
      calltoolnode(n1, act_writenode);
      nc_putc ('\n', f);
      n1 = (log_nrec *)n1->temp;
    }
    count = 0;
    FORLIM = gg.lastsignal;
    for (i = 0; i < FORLIM; i++) {
      if (gg.signaltab[i].np != ((void *)0)  && gg.signaltab[i].np->flag)
	count++;
    }
    nc_fprintf (f, "s %d\n", count);
    FORLIM = gg.lastsignal;
    for (i = 0; i < FORLIM; i++) {
      if (gg.signaltab[i].np != ((void *)0)  && gg.signaltab[i].np->flag)
	nc_fprintf (f, "%d %s\n",
		countnode(gg.signaltab[i].np, &V), gg.signaltab[i].name);
    }
    V.numhw = 0;
    hw = gg.hwbase[pgnum - 1];
    V.firsthwire = ((void *)0) ;
    while (hw != ((void *)0) ) {
      V.numhw++;
      hw->temp = (Anyptr)V.firsthwire;
      V.firsthwire = hw;
      hw = hw->next;
    }
    numvw = 0;
    vw = gg.vwbase[pgnum - 1];
    V.firstvwire = ((void *)0) ;
    while (vw != ((void *)0) ) {
      numvw++;
      vw->temp = (Anyptr)V.firstvwire;
      V.firstvwire = vw;
      vw = vw->next;
    }
    nc_fprintf (f, "w %d\n", V.numhw + numvw);
    hw = V.firsthwire;
    while (hw != ((void *)0) ) {
      nc_fprintf (f, "%d %d %d %d %d %s\n",
	      hw->x1, hw->y, hw->x2, hw->y, countnode(hw->node, &V),
	      colorname(STR1, hw->wcolr));
      hw = (log_hwrec *)hw->temp;
    }
    vw = V.firstvwire;
    while (vw != ((void *)0) ) {
      nc_fprintf (f, "%d %d %d %d %d %s\n",
	      vw->x, vw->y1, vw->x, vw->y2, countnode(vw->node, &V),
	      colorname(STR1, vw->wcolr));
      vw = (log_vwrec *)vw->temp;
    }
    count = 0;
    s = gg.sbase[pgnum - 1];
    firstsolder = ((void *)0) ;
    while (s != ((void *)0) ) {
      count++;
      s->temp = (Anyptr)firstsolder;
      firstsolder = s;
      s = s->next;
    }
    nc_fprintf (f, "p %d\n", count);
    s = firstsolder;
    while (s != ((void *)0) ) {
      nc_fprintf (f, "%d %d", s->x, s->y);
      if (s->hwire != ((void *)0) )
	nc_fprintf (f, " %d", counthw(s->hwire, &V));
      if (s->hwire2 != ((void *)0) )
	nc_fprintf (f, " %d", counthw(s->hwire2, &V));
      if (s->vwire != ((void *)0) )
	nc_fprintf (f, " %d", countvw(s->vwire, &V));
      if (s->vwire2 != ((void *)0) )
	nc_fprintf (f, " %d", countvw(s->vwire2, &V));
      nc_putc ('\n', f);
      s = (log_srec *)s->temp;
    }
    count = 0;
    l = gg.lbase[pgnum - 1];
    firstlabel = ((void *)0) ;
    while (l != ((void *)0) ) {
      count++;
      l->temp = (Anyptr)firstlabel;
      firstlabel = l;
      l = l->next;
    }
    nc_fprintf (f, "l %d\n", count);
    l = firstlabel;
    while (l != ((void *)0) ) {
      nc_fprintf (f, "%d %d %ld %s\n",
	      l->x, l->y, m_strwidth(((void *)0)  , l->name) / 5 ,
	      l->name);
      l = (log_lrec *)l->temp;
    }
 

    count = 0;
    b = gg.bbase[pgnum - 1];
    firstbox = ((void *)0) ;
    while (b != ((void *)0) ) {
      count++;
      b->temp = (Anyptr)firstbox;
      firstbox = b;
      b = b->next;
    }
    nc_fprintf (f, "b %d\n", count);
    b = firstbox;
    while (b != ((void *)0) ) {
      nc_fprintf (f, "%d %d %d %d\n", b->x1, b->y1, b->x2, b->y2);
      b = (log_brec *)b->temp;
    }
    count = 0;
    g = gg.gbase[pgnum - 1];
    while (g != ((void *)0) ) {
      count++;
      g = g->next;
    }
    nc_fprintf (f, "g %d\n", count);
    g = gg.gbase[pgnum - 1];
    while (g != ((void *)0) ) {
      k = g->kind;
      nc_fprintf (f, "%s\n", k->name);
      i = 0;
      if (g->sig != 0) {
	FORLIM = g->sig;
	for (j = 0; j < FORLIM; j++) {
	  if (gg.signaltab[j].np != ((void *)0)  && gg.signaltab[j].np->flag)
	    i++;
	}
      }
      nc_fprintf (f, "%d %d %d ", g->x, g->y, g->rot);
      nc_fprintf (f, "%d %ld %d ", g->gc, (long)g->vars, i);
      nc_fprintf (f, "%d\n",
	      countattrs(g->attr, k->numattrs, k->attr, k->lbl, &V));
      FORLIM = k->numpins;
      for (i = 1; i <= FORLIM; i++) {
	if (i != 1)
	  nc_putc (' ', f);
	nc_fprintf (f, "%d", countnode(g->pin[i - 1], &V));
      }
      nc_putc ('\n', f);
      writeattrs(&f, g->attr, k->numattrs, k->attr, k->lbl, &V);
      gg.actfile = &f;
      gg.actflag = 0 ;
      calltoolgate(g, act_writegate);
      nc_putc ('\n', f);
      g = g->next;
    }
    nc_fprintf (f, "h %d\n", hncount);
    hn = gg.hnbase;
    while (hn != ((void *)0) ) {
      n1 = gg.signaltab[hn->sig - 1].np;
      nc_fprintf (f, "%d ", hn->y);
      nc_fprintf (f, "%d", countattrs(hn->attr, n1->simtype->hnumattrs,
				  n1->simtype->hattr, n1->simtype->hlbl, &V));
      nc_fprintf (f, " %s\n", gg.signaltab[hn->sig - 1].name);
      writeattrs(&f, hn->attr, n1->simtype->hnumattrs, n1->simtype->hattr,
		 n1->simtype->hlbl, &V);
      hn = hn->next;
    }
    nc_fprintf (f, ".\n");
    if (f != ((void *)0) )
      fclose(f);
    f = ((void *)0) ;
    gg.pagechanged[pgnum - 1] = 0 ;
    if (curfilename[pgnum - 1] == ((void *)0) )
      curfilename[pgnum - 1] = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
    strcpy(curfilename[pgnum - 1], filename);
  }
  if (f != ((void *)0) )
    fclose(f);
}




static  void  emergencysave(pgnum)
short pgnum;
{
  char  filename[256];

  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    nc_printf ("File name");
    if (curfilename[pgnum - 1] != ((void *)0) )
      nc_printf ("(was %s)", curfilename[pgnum - 1]);
    nc_printf (": ");
    nc_gets (filename);
    if (*filename != '\0')
      savepage(pgnum, filename);
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    nc_printf ("Saving page %d failed.\n", pgnum);
  } } while (0) ;
}


static  void  safesavepage(pgnum, fn)
short pgnum;
char  *fn;
{
  long i, j;

  if (*fn == '\0')
    return;
  beginbottom();
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    nc_printf ("Saving file %s\n", fn);
    m_alpha_on();
    savepage(pgnum, fn);
    endbottom();
  __top_jb = __try_jb.next; } else { ;
    i = P_escapecode;
    j = P_ioresult;
    endbottom();
    beginerror();
    if (0   || 1   || gg.traceflag)
      nc_printf ("%ld/%ld/%ld   ", i, j, EXCP_LINE);
    nc_printf ("Unable to save file %s\n", fn);
    enderror();
  } } while (0) ;
}




static  void  savecommand()
{
  short pgnum;
  char  filename[256];
  short FORLIM;
  char  STR1[256];
  char  STR2[256];

  garbagecoll();
  if (*gg.funcarg == '\0') {
    FORLIM = gg.numpages;
    for (pgnum = 1; pgnum <= FORLIM; pgnum++) {
      if (!pagechanged(pgnum)) {
	sprintf(STR2, "No changes to page %d", pgnum);
	message(STR2);
      } else if (curfilename[pgnum - 1] == ((void *)0) ) {
	sprintf(STR2, "Page %d: no file name!", pgnum);
	message(STR2);
      } else {
	sprintf(STR1, "Saving page %d", pgnum);
	message(STR1);
	safesavepage(pgnum, curfilename[pgnum - 1]);
      }
    }
  } else if (!strcmp(gg.funcarg, "*")) {
    beginbottom();
    nc_printf ("File name to save: ");
    if (curfilename[gg.curpage - 1] != ((void *)0) )
      strcpy(filename, curfilename[gg.curpage - 1]);
    else
      *filename = '\0';
    readlnpass(filename, 3);
    endbottom();
    if (*filename != '\0')
      safesavepage((int)gg.curpage, filename);
  } else
    safesavepage((int)gg.curpage, gg.funcarg);
  clearfunc();
}




static  void  namecommand()
{
  char  filename[256];
  char  STR2[256], STR3[256];

  if (*gg.funcarg == '\0') {
    beginbottom();
    nc_printf ("File name for page %ld", gg.curpage);
    if (curfilename[gg.curpage - 1] != ((void *)0) )
      nc_printf (" [%s]", curfilename[gg.curpage - 1]);
    nc_printf (": ");
    readlnpass(filename, 0);
    endbottom();
  } else if (!strcmp(gg.funcarg, "?"))
    *filename = '\0';
  else
    strcpy(filename, gg.funcarg);
  if (*filename != '\0') {
    if (!strcmp(filename, "\"\"") || *strcpy(STR3, strltrim(filename)) == '\0')
      (free((Anyptr)( curfilename[gg.curpage - 1] )), ( curfilename[gg.curpage - 1] )= ((void *)0) ) ;
    else {
      newci_fixfname(filename, "lgf", "");
      if (curfilename[gg.curpage - 1] == ((void *)0) )
	curfilename[gg.curpage - 1] = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      strcpy(curfilename[gg.curpage - 1], filename);
    }
  }
  if (curfilename[gg.curpage - 1] == ((void *)0) ) {
    sprintf(STR2, "No file name for page %ld", gg.curpage);
    message(STR2);
  } else {
    sprintf(STR2, "Current file name is %s", curfilename[gg.curpage - 1]);
    message(STR2);
  }
  clearfunc();
}










static  void  loadlog30(f, ver)
FILE **f;
short ver;
{
  short i, j, x, y, x1, y1, x2, y2;
  char  nam[81];
  char  ch;
  log_lrec *l;
  log_brec *b;
  char  *TEMP;

  fscanf(*f, "%*[^\n]");    
  getc(*f);
  fscanf(*f, "%c%*[^\n]", &ch);
  getc(*f);
  if (ch == '\n')
    ch = ' ';
  switch (ch) {

  case 'V':
  case 'v':
    vlsi = 1 ;
    break;

  case 'T':
  case 't':
    vlsi = 0 ;
    break;
  }
  fscanf(*f, "%*[^\n]");    
  getc(*f);
  setvlsimode(vlsi);
  j = gg.color.wire[0];
  if (vlsi) {
    fscanf(*f, "%hd%hd%hd%hd%hd%*[^\n]", &x1, &x2, &y, &i, &j);
    getc(*f);
  } else {
    fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x1, &x2, &y, &i);
    getc(*f);
  }
  while (x1 != -9999) {
    addhwire(x1, x2, y, 0 );
    if (vlsi) {
      fscanf(*f, "%hd%hd%hd%hd%hd%*[^\n]", &x1, &x2, &y, &i, &j);
      getc(*f);
    } else {
      fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x1, &x2, &y, &i);
      getc(*f);
    }
  }
  if (vlsi) {
    fscanf(*f, "%hd%hd%hd%hd%hd%*[^\n]", &x, &y1, &y2, &i, &j);
    getc(*f);
  } else {
    fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y1, &y2, &i);
    getc(*f);
  }
  while (x != -9999) {
    addvwire(x, y1, y2, 0 );
    if (vlsi) {
      fscanf(*f, "%hd%hd%hd%hd%hd%*[^\n]", &x, &y1, &y2, &i, &j);
      getc(*f);
    } else {
      fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y1, &y2, &i);
      getc(*f);
    }
  }
  fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y, &i, &j);
  getc(*f);
  while (x != -9999) {
    closerwire(x, y);
    if (gg.nearhw != ((void *)0)  && gg.nearvw != ((void *)0) ) {
      if (trycombinenodes(&gg.nearvw->node, &gg.nearhw->node)) {
	clipon();
	addsolder(x, y, gg.nearhw, ((void *)0) , gg.nearvw, ((void *)0) );
	clipoff();
      } else
	frysolder(x, y);
    }
    fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y, &i, &j);
    getc(*f);
  }
  if (ver >= 3) {
    fscanf(*f, "%hd%hd%hd%c", &x, &y, &i, &ch);
    if (ch == '\n')
      ch = ' ';
    nc_fgets (nam, 81, *f);
    TEMP = strchr(nam, '\n');
    if (TEMP != ((void *)0) )
      *TEMP = 0;
  } else {
    fscanf(*f, "%hd%hd%c", &x, &y, &ch);
    if (ch == '\n')
      ch = ' ';
    nc_fgets (nam, 81, *f);
    TEMP = strchr(nam, '\n');
    if (TEMP != ((void *)0) )
      *TEMP = 0;
  }
  while (x != -9999) {
    newlabel(&l);
    l->x = x;
    l->y = y;
    strcpy(l->name, nam);
    l->w = m_strwidth(((void *)0)  , l->name) / 5 ;
 

    if (ver >= 3) {
      fscanf(*f, "%hd%hd%hd%c", &x, &y, &i, &ch);
      if (ch == '\n')
	ch = ' ';
      nc_fgets (nam, 81, *f);
      TEMP = strchr(nam, '\n');
      if (TEMP != ((void *)0) )
	*TEMP = 0;
    } else {
      fscanf(*f, "%hd%hd%c", &x, &y, &ch);
      if (ch == '\n')
	ch = ' ';
      nc_fgets (nam, 81, *f);
      TEMP = strchr(nam, '\n');
      if (TEMP != ((void *)0) )
	*TEMP = 0;
    }
    if (ch != ':')
      _Escape(0);
  }
  fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y, &x1, &y1);
  getc(*f);
  while (x != -9999) {
    newbox(&b);
    b->x1 = x;
    b->y1 = y;
    b->x2 = x1;
    b->y2 = y1;
    fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x, &y, &x1, &y1);
    getc(*f);
  }
  fscanf(*f, "%hd%hd%hd%hd%hd%hd%hd%c", &i, &x, &y, &y1, &x1, &y2, &x2, &ch);
  if (ch == '\n')
    ch = ' ';
  nc_fgets (nam, 81, *f);
  TEMP = strchr(nam, '\n');
  if (TEMP != ((void *)0) )
    *TEMP = 0;
  while (i != -9999) {
    if ((unsigned)(i & 127) < 32 && ((1L << (i & 127)) & 0x1800) != 0) {
      if (i == 11)
	j = readlibrary("TO");
      else
	j = readlibrary("FROM");
      addgate1(x, y, j + i / 128 * 128);
      gg.neargate->sig = getsignal(0, nam);
    } else {
      j = readlibrary(nam);
      addgate1(x, y, j + i / 128 * 128);
    }
    for (i = 1; i <= y2 + x2; i++) {    
      fscanf(*f, "%*[^\n]");
      getc(*f);
    }
    fscanf(*f, "%hd%hd%hd%hd%hd%hd%hd%c", &i, &x, &y, &y1, &x1, &y2, &x2, &ch);
    if (ch == '\n')
      ch = ' ';
    nc_fgets (nam, 81, *f);
    TEMP = strchr(nam, '\n');
    if (TEMP != ((void *)0) )
      *TEMP = 0;
  }
  chpage((int)gg.curpage);
}




static  void  readattrs(f, gattr, numattrs, kattr, lbl, count)
FILE **f;
log_gattrrec **gattr;
short numattrs;
log_kattrrec *kattr;
na_strlist *lbl;
short count;
{
  short j, jj;
  char  ch;
  char  buf[256];
  na_strlist *l1, *names;

  l1 = lbl;
  while (l1 != ((void *)0)  && l1->kind != '\001')
    l1 = l1->next;
  if (l1 != ((void *)0) )
    names = (na_strlist *)l1->value;
  else
    names = ((void *)0) ;
  for (j = 1; j <= count; j++) {
    ch = getc(*f);
    if (ch == '\n')
      ch = ' ';
    if (ch == '[') {
      *buf = '\0';
      ch = getc(*f);
      if (ch == '\n')
	ch = ' ';
      while (ch != ']' && !P_eoln(*f)) {
	sprintf(buf + strlen(buf), "%c", ch);
	ch = getc(*f);
	if (ch == '\n')
	  ch = ' ';
      }
      jj = -1;
      if (!P_eoln(*f)) {
	l1 = names;
	while (l1 != ((void *)0)  && strcmp(buf, l1->s))
	  l1 = l1->next;
	if (l1 != ((void *)0) )
	  jj = (long)l1->value;
	do {
	  ch = getc(*f);
	  if (ch == '\n')
	    ch = ' ';
	} while (ch == ' ');
      }
    } else
      jj = j;
    if (jj >= 1 && jj <= numattrs) {
      ch = toupper(ch);
      if (ch == 'X') {
	(*gattr)[jj - 1].blnk = 1 ;
	switch (kattr[jj - 1].dtype) {

	case 'C':
	  *(*gattr)[jj - 1].UU.c = '\0';
	  break;

	case 'A':
	  strchange(&(*gattr)[jj - 1].UU.sp, "");
	  break;
	}
      } else {
	(*gattr)[jj - 1].blnk = 0 ;
	switch (kattr[jj - 1].dtype) {

	case 'R':
	case 'U':
	case 'F':
	  if (ch == 'F' || ch == 'U' || ch == 'R')
	    fscanf(*f, "%lg", &(*gattr)[jj - 1].UU.r);
	  break;

	case 'I':
	case 'H':
	  if (ch == 'H' || ch == 'I')
	    fscanf(*f, "%ld", &(*gattr)[jj - 1].UU.U73.i1);
	  break;

	case 'C':
	  if (ch == 'A' || ch == 'C') {
	    *buf = '\0';
	    fscanf(*f, "%[^\n]", buf);
	    if (strlen(buf) <= kattr[jj - 1].prec)
	      strcpy((*gattr)[jj - 1].UU.c, buf);
	  }
	  break;

	case 'A':
	  if (ch == 'A' || ch == 'C') {
	    *buf = '\0';
	    fscanf(*f, "%[^\n]", buf);
	    strchange(&(*gattr)[jj - 1].UU.sp, buf);
	  }
	  break;

	case 'B':
	  if (ch == 'B') {
	    ch = getc(*f);
	    if (ch == '\n')
	      ch = ' ';
	    (*gattr)[jj - 1].UU.b = (ch == 't' || ch == 'T' || ch == '1');
	  }
	  break;

	case 'V':
	  if (ch == 'V') {
	    fscanf(*f, "%hd", &(*gattr)[jj - 1].UU.nv);
	    if ((*gattr)[jj - 1].UU.nv >= kattr[jj - 1].UU.U86.nv)
	      (*gattr)[jj - 1].UU.nv = 0;
	  }
	  break;
	}
      }
    }
    fscanf(*f, "%*[^\n]");
    getc(*f);
  }
}





typedef log_nrec *nodearray[1000000L ];

typedef struct wirerec {
  boolean horiz;
  union {
    log_hwrec *hw;
    log_vwrec *vw;
  } UU;
} wirerec;

typedef wirerec wirearray[1000000L ];
typedef long intarray[1000000L ];


 
struct LOC_loadpage {
  char  *reason;
  short numnodes;
  log_nrec **np;
} ;

static  void  loadfail(msg, LINK)
char  *msg;
struct LOC_loadpage *LINK;
{
  strcpy(LINK->reason, msg);
  _Escape(1);
}

static  log_nrec *countnode_(i, LINK)
short i;
struct LOC_loadpage *LINK;
{
  char  STR2[256];

  if (i >= 1 && i <= LINK->numnodes)
    return (refnode(LINK->np[i - 1]));
  sprintf(STR2, "Bad node number: %d", i);
  loadfail(STR2, LINK);
}

static  boolean tryfindfile(name, path, LINK)
char  *name;
char  *path;
struct LOC_initialize *LINK;
{
  boolean Result;
  char  fname[256];
  FILE *f;

  f = ((void *)0) ;
  Result = 0 ;
  if (*name != '\0' &&
      (*path == '\0' || (name[0] != '*' && name[0] != '/' && name[0] != '%' &&
			 name[0] != '~'))) {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      sprintf(fname, "%s%s", path, name);
       
      if (f != ((void *)0) )
	f = freopen(fname, "r", f);
      else
	f = fopen(fname, "r");
      if (f == ((void *)0) ) {
	P_escapecode = -10;
	P_ioresult = 10 ;
	goto _Ltry31;
      }
      strcpy(name, fname);
      Result = 1 ;
    __top_jb = __try_jb.next; } else { if (0) {  _Ltry31 : __top_jb = __try_jb.next; } ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
    } } while (0) ;
  }
  if (f != ((void *)0) )
    fclose(f);
  return Result;
}

static  boolean locatefile(name, LINK)
char  *name;
struct LOC_initialize *LINK;
{
  char  path[256];

  sprintf(path, "%s/", GetChipmunkPath("LOGLIB", log ));
  return (tryfindfile(name, "", LINK) ||
	  tryfindfile(name, gg.homedirname, LINK) ||
	  tryfindfile(name, path, LINK));
}



static  void  loadpage(filename_, reason_)
char  *filename_;
char  *reason_;
{
  struct LOC_loadpage V;
  char  filename[256];
  FILE *f;
  log_nrec *n, *n1;
  log_grec *g, *g1;
  log_srec *s;
  log_hwrec *hw;
  log_vwrec *vw;
  log_lrec *l;
  log_brec *b;
  log_hnrec *hn;
  short i, j, k, x, y, x1, y1, x2, y2, numwires, count, ver;
  long ii;
  cnrec *cnbase;
  char  tempname[256];
  char  labelname[255  + 1];
  char  ch, ch1, ch2;
  wirerec *wp;
  long *ip;
  char  STR2[20];
  char  STR3[18];
  short FORLIM;
  char  *TEMP;

  strcpy(filename, filename_);
  V.reason = reason_;
  f = ((void *)0) ;
  *V.reason = '\0';
  if (*filename != '\0') {
    newci_fixfname(filename, "lgf", "");

    locatefile(filename, &V);

    if (f != ((void *)0) )
      f = freopen(filename, "r", f);
    else
      f = fopen(filename, "r");
    if (f == ((void *)0) )
      _EscIO(10 );
    fscanf(f, "%hd", &ver);
    ver = -ver;
    gg.actx = gg.curpage;
    calltools(act_clear);
    hw = gg.hwbase[gg.curpage - 1];
    while (hw != ((void *)0) ) {
      gg.hwbase[gg.curpage - 1] = hw->next;
      stamp(&hw->node->simtype->netstamp);
      (free((Anyptr)( hw )), ( hw )= ((void *)0) ) ;
      hw = gg.hwbase[gg.curpage - 1];
    }
    vw = gg.vwbase[gg.curpage - 1];
    while (vw != ((void *)0) ) {
      gg.vwbase[gg.curpage - 1] = vw->next;
      stamp(&vw->node->simtype->netstamp);
      (free((Anyptr)( vw )), ( vw )= ((void *)0) ) ;
      vw = gg.vwbase[gg.curpage - 1];
    }
    s = gg.sbase[gg.curpage - 1];
    while (s != ((void *)0) ) {
      gg.sbase[gg.curpage - 1] = s->next;
      (free((Anyptr)( s )), ( s )= ((void *)0) ) ;
      s = gg.sbase[gg.curpage - 1];
    }
    g = gg.gbase[gg.curpage - 1];
    while (g != ((void *)0) ) {
      gg.gbase[gg.curpage - 1] = g->next;
      stamp(&g->kind->simtype->netstamp);
      disposegate(&g);
      g = gg.gbase[gg.curpage - 1];
    }
    l = gg.lbase[gg.curpage - 1];
    if (l != ((void *)0) )
      stamp(&gg.labelstamp);
    while (l != ((void *)0) ) {
      gg.lbase[gg.curpage - 1] = l->next;
      (free((Anyptr)( l )), ( l )= ((void *)0) ) ;
      l = gg.lbase[gg.curpage - 1];
    }
    b = gg.bbase[gg.curpage - 1];
    if (b != ((void *)0) )
      stamp(&gg.boxstamp);
    while (b != ((void *)0) ) {
      gg.bbase[gg.curpage - 1] = b->next;
      (free((Anyptr)( b )), ( b )= ((void *)0) ) ;
      b = gg.bbase[gg.curpage - 1];
    }
    garbagecoll();
    stamp(&gg.loadstamp);
    stamp(&gg.pagestamp[gg.curpage - 1]);
    if (ver < 5)
      loadlog30(&f, ver);
    else {
      cnbase = ((void *)0) ;
      fscanf(f, "%*[^\n]");
      getc(f);
      fscanf(f, "%c%c%c%*[^\n]", &ch, &ch1, &ch2);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (ch1 == '\n')
	ch1 = ' ';
      if (ch2 == '\n')
	ch2 = ' ';
      if (tolower(ch) != 'f' || ch1 != ' ')
	loadfail("Bad format line", &V);
      if (tolower(ch2) != 's') {
	sprintf(STR2, "Bad format name: %c", ch2);
	loadfail(STR2, &V);
      }
      vlsi = 0 ;
      setvlsimode(vlsi);
      fscanf(f, "%c%hd%*[^\n]", &ch, &V.numnodes);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'n')
	loadfail("No node-count line", &V);
      V.np = (log_nrec **)((__MallocTemp__ = malloc(( V.numnodes * sizeof(log_nrec *) ) ? ( V.numnodes * sizeof(log_nrec *) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      n = gg.nbase;
      while (n != ((void *)0)  && n->next != ((void *)0) )
	n = n->next;
      FORLIM = V.numnodes;
      for (i = 0; i < FORLIM; i++) {
	fscanf(f, "%hd%hd%*[^\n]", &j, &x1);
	getc(f);
	n1 = n;
	newnode(&n, j);
	gg.nbase = n->next;
	if (n1 == ((void *)0) )
	  gg.nbase = n;
	else
	  n1->next = n;
	n->next = ((void *)0) ;
	readattrs(&f, &n->attr, n->simtype->nnumattrs, n->simtype->nattr,
		  n->simtype->nlbl, x1);
	V.np[i] = n;
	gg.actfile = &f;
	calltoolnode(n, act_readnode);
	stamp(&n->simtype->netstamp);
	while (!P_eoln(f) && !P_eof(f)) {
	  fscanf(f, "%*[^\n]");
	  getc(f);
	}
	if (P_eof(f))
	  loadfail("End-of-file while reading nodes", &V);
	fscanf(f, "%*[^\n]");
	getc(f);
      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 's')
	loadfail("No signal-count line", &V);
      ip = (long *) ((__MallocTemp__ = malloc(( count * sizeof(long) ) ? ( count * sizeof(long) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      for (i = 0; i < count; i++) {
	fscanf(f, "%hd%c", &j, &ch);
	if (ch == '\n')
	  ch = ' ';
	nc_fgets (tempname, 256, f);
	TEMP = strchr(tempname, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	n = V.np[j - 1];
	x = getsignal(0, tempname);
	ip[i] = x;
	queuecombine(&cnbase, &V.np[j - 1], &gg.signaltab[x - 1].np);
      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'w')
	loadfail("No wire-count line", &V);
      numwires = count;
      wp = (wirerec *)((__MallocTemp__ = malloc(( numwires * sizeof(wirerec) ) ? ( numwires * sizeof(wirerec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      for (i = 0; i < numwires; i++) {
	fscanf(f, "%hd%hd%hd%hd%hd%c%c%*[^\n]", &x1, &y1, &x2, &y2, &j, &ch,
	       &ch1);
	getc(f);
	if (ch == '\n')
	  ch = ' ';
	if (ch1 == '\n')
	  ch1 = ' ';
	switch (ch1) {

	case 'U':
	  x = 0 ;
	  break;

	case 'G':
	  x = 1 ;
	  break;

	case 'R':
	  x = 3 ;
	  break;

	case 'B':
	  x = 4 ;
	  break;

	case 'Y':
	  x = 2 ;
	  break;

	default:
	  sprintf(STR3, "Bad color name: %c", ch1);
	  loadfail(STR3, &V);
	  break;
	}
	n = countnode_(j, &V);
	if (y1 == y2) {
	  newhw(&hw);
	  hw->x1 = x1;
	  hw->x2 = x2;
	  hw->y = y1;
	  hw->node = n;
	  hw->wcolr = x;
	  wp[i].horiz = 1 ;
	  wp[i].UU.hw = hw;
	} else if (x1 == x2) {
	  newvw(&vw);
	  vw->x = x1;
	  vw->y1 = y1;
	  vw->y2 = y2;
	  vw->node = n;
	  vw->wcolr = x;
	  wp[i].horiz = 0 ;
	  wp[i].UU.vw = vw;
	} else
	  loadfail("Wire is not horizontal or vertical", &V);
      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'p')
	loadfail("No solder-count line", &V);
      for (i = 1; i <= count; i++) {
	fscanf(f, "%hd%hd", &x, &y);
	newsolder(&s);
	s->x = x;
	s->y = y;
	while (!P_eoln(f)) {
	  fscanf(f, "%hd", &j);
	  if (wp[j - 1].horiz) {
	    if (s->hwire == ((void *)0) )
	      s->hwire = wp[j - 1].UU.hw;
	    else
	      s->hwire2 = wp[j - 1].UU.hw;
	  } else {
	    if (s->vwire == ((void *)0) )
	      s->vwire = wp[j - 1].UU.vw;
	    else
	      s->vwire2 = wp[j - 1].UU.vw;
	  }
	}
	fscanf(f, "%*[^\n]");
	getc(f);
      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'l')
	loadfail("No label-count line", &V);
      if (count > 0)
	stamp(&gg.labelstamp);
      for (i = 1; i <= count; i++) {
	fscanf(f, "%hd%hd%hd%c", &x, &y, &j, &ch);
	if (ch == '\n')
	  ch = ' ';
	nc_fgets (labelname, 255  + 1, f);
	TEMP = strchr(labelname, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	if (ch != ' ')
	  loadfail("Bad label name", &V);
	newlabel(&l);
	l->x = x;
	l->y = y;
	strcpy(l->name, labelname);
	l->w = m_strwidth(((void *)0)  , l->name) / 5 ;
 

      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'b')
	loadfail("No box-count line", &V);
      if (count > 0)
	stamp(&gg.boxstamp);
      for (i = 1; i <= count; i++) {
	fscanf(f, "%hd%hd%hd%hd%*[^\n]", &x1, &y1, &x2, &y2);
	getc(f);
	newbox(&b);
	b->x1 = x1;
	b->y1 = y1;
	b->x2 = x2;
	b->y2 = y2;
      }
      fscanf(f, "%c%hd%*[^\n]", &ch, &count);
      getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) != 'g')
	loadfail("No gate-count line", &V);
      g = ((void *)0) ;
      for (i = 1; i <= count; i++) {
	nc_fgets (tempname, 256, f);
	TEMP = strchr(tempname, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	j = readlibrary(tempname);
	if (j != 0) {
	  fscanf(f, "%hd%hd%hd%hd%ld%hd%hd%*[^\n]", &x, &y, &x1, &y1, &ii,
		 &x2, &y2);
	  getc(f);
	  g1 = g;
	  newgate(&g, j + x1 * 256 );
	  if (g1 == ((void *)0) )
	    gg.gbase[gg.curpage - 1] = g;
	  else
	    g1->next = g;
	  g->next = ((void *)0) ;
	  g->rot = x1;
	  g->x = x;
	  g->y = y;
	  g->gc = y1;
	  g->vars = (na_long)ii;
	  if (x2 == 0)
	    g->sig = 0;
	  else
	    g->sig = ip[x2 - 1];
	  stamp(&g->kind->simtype->netstamp);
	  j = 1;
	  while (j <= g->kind->numpins && !P_eoln(f)) {
	    fscanf(f, "%hd", &k);
	    g->pin[j - 1] = countnode_(k, &V);
	    j++;
	  }
	  while (j <= g->kind->numpins) {
	    newnode(&g->pin[j - 1], g->kind->pin[j - 1].s);
	    j++;
	  }
	  fscanf(f, "%*[^\n]");
	  getc(f);
	  readattrs(&f, &g->attr, g->kind->numattrs, g->kind->attr,
		    g->kind->lbl, y2);
	  initpinpos(g);
	  gg.actflag = 1 ;
	  calltoolgate(g, act_connectgate);
	  if (!gg.actflag)
	    report(11, "LOADPAGE" );
	  gg.actfile = &f;
	  gg.actflag = 1 ;
	  calltoolgate(g, act_readgate);
	}
	while (!P_eoln(f) && !P_eof(f)) {
	  fscanf(f, "%*[^\n]");
	  getc(f);
	}
	if (P_eof(f))
	  loadfail("End-of-file while reading gates", &V);
	fscanf(f, "%*[^\n]");
	getc(f);
      }
      if (!checkcombine(&cnbase))
	loadfail("Simtype collision on signal names", &V);
      ch = getc(f);
      if (ch == '\n')
	ch = ' ';
      if (tolower(ch) == 'h') {
	fscanf(f, "%hd%*[^\n]", &count);
	getc(f);
	histdelsignals();
	for (i = 1; i <= count; i++) {
	  fscanf(f, "%hd%hd%c", &y, &x1, &ch);
	  if (ch == '\n')
	    ch = ' ';
	  nc_fgets (tempname, 256, f);
	  TEMP = strchr(tempname, '\n');
	  if (TEMP != ((void *)0) )
	    *TEMP = 0;
	  x = getsignal(0, tempname);
	  n = gg.signaltab[x - 1].np;
	  histaddsignal(&hn, x, y);
	  readattrs(&f, &hn->attr, n->simtype->hnumattrs, n->simtype->hattr,
		    n->simtype->hlbl, x1);
	}
	ch = getc(f);
	if (ch == '\n')
	  ch = ' ';
      }
      if (tolower(ch) != '.')
	loadfail("No end line in file", &V);
    }
    if (f != ((void *)0) )
      fclose(f);
    f = ((void *)0) ;
    chpage((int)gg.curpage);
    gg.pagechanged[gg.curpage - 1] = 0 ;
    if (curfilename[gg.curpage - 1] == ((void *)0) )
      curfilename[gg.curpage - 1] = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
    strcpy(curfilename[gg.curpage - 1], filename);
  }
  if (f != ((void *)0) )
    fclose(f);
}









typedef misc_catentry catarray[21 ];
typedef char  dirarray[45  + 1][120  + 1];






 
 
 
 
 
 

static  void  loadcommand()
{
  short i, j, x, y, x1, y1, dirmax, dircol;
  char  filename[256];
  char  ch;
  char  name[120  + 1];
  misc_catentry *cat;
  char  (*dirs[8  + 1])[120  + 1];
  char  STR3[256];

  dircol = P_imin2((txacross - 14L) / 15, (long)8 );
  dirmax = -1;
  cat = ((void *)0) ;
  for (i = 0; i <= dircol; i++)
    dirs[i] = ((void *)0) ;
  if (!strcmp(gg.funcarg, "*")) {
    beginbottom();
    nc_printf ("Name of file to load: ");
    readlnpass(filename, 0);
    endbottom();
  } else if (*gg.funcarg == '\0') {
    clearshowalpha();
    if (cat != ((void *)0) )
      (free((Anyptr)( cat )), ( cat )= ((void *)0) ) ;
    nc_gotoXY( 5 ,  txdown - 1 ) ;
    nc_printf ("Press ENTER alone to abort command.\n");
    nc_gotoXY( 2 ,  txdown - 2 ) ;
    nc_printf ("Name of file to load: ");
    *filename = '\0';
    ch = '\015';
    do {
      do {
	x = (gg.t.ax - 2) / 15;
	y = gg.t.ay - 2;
	 



	if (x < 0 || (unsigned)y > dirmax || x > dircol || dirs[x] == ((void *)0)  ||
	    *dirs[x][y] == '\0')
	  x = -1;
	else {
	  nc_gotoXY( x * 15 + 2 ,  y + 2 ) ;
	  nc_printf ("%c%s%c", 129 , dirs[x][y], 128 );
	}
	if (gg.t.near_ && gg.t.inalpha)
	  nc_gotoXY( gg.t.ax ,  gg.t.ay ) ;
	else
	  nc_gotoXY( (int)(strlen(filename) + 24) ,  txdown - 2 ) ;
	nc_cursor_on();
	do {
	  pass();
	  m_tracking(1L);
	  pen();
	  x1 = (gg.t.ax - 2) / 15;
	  y1 = gg.t.ay - 2;
	   



	  if (y1 < 0 || x1 < 0 || y1 > dirmax || x1 > dircol ||
	      dirs[x1] == ((void *)0)  || *dirs[x1][y1] == '\0')
	    x1 = -1;
	} while (!(pollkbd2() || gg.t.dn || x != x1 || y != y1) && gg.t.near_);
	nc_cursor_off();
	remcursor();
	if (x != -1) {
	  nc_gotoXY( x * 15 + 2 ,  y + 2 ) ;
	  nc_fputs (dirs[x][y], (&_iob[1 ]) );
	}
      } while (!(pollkbd2() || gg.t.dn));
      if (gg.t.dn && x != -1) {
	strcpy(filename, dirs[x][y]);
	nc_gotoXY( 24 ,  txdown - 2 ) ;
	nc_printf ("%s\t", filename);
      }
      if (gg.t.dn)
	ch = '\015';
      else
	ch = inkey2();
      if (ch == '\007' && *filename != '\0') {
	nc_gotoXY( (int)(strlen(filename) + 23) ,  txdown - 2 ) ;
	nc_putchar (' ');
	filename[strlen(filename) - 1] = '\0';
      } else if (ch >= ' ' && ch <= '~' && strlen(filename) < 255) {
	nc_gotoXY( (int)(strlen(filename) + 24) ,  txdown - 2 ) ;
	nc_putchar (ch);
	strcat(filename, " ");
	filename[strlen(filename) - 1] = ch;
      }
    } while ((uchar)ch >= 32 || ((1L << ch) & 0x2008) == 0);
    for (i = 0; i <= dircol; i++) {
      if (dirs[i] != ((void *)0) )
	(free((Anyptr)( dirs[i] )), ( dirs[i] )= ((void *)0) ) ;
    }
    sprintf(STR3, "%c", ch);
    if (!strcmp(STR3, "\003" ))
      *filename = '\0';
    clearalpha();
    if (m_autoraise)
      {
      }
    else
      {
	m_graphics_on(); 
      }
  } else
    strcpy(filename, gg.funcarg);
  if (*filename != '\0') {
    beginbottom();
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      nc_printf ("Loading file %s\n", filename);
      m_alpha_on();
      loadpage(filename, name);
      endbottom();
    __top_jb = __try_jb.next; } else { ;
      i = P_escapecode;
      j = P_ioresult;
      endbottom();
      beginerror();
      if (0   || 1   || gg.traceflag)
	nc_printf ("%d/%d/%ld  ", i, j, EXCP_LINE);
      if (i == -10 && (unsigned)j < 32 && ((1L << j) & 0x600) != 0)
	nc_printf ("Can't find file \"%s\"\n", filename);
      else if (i == -20)
	nc_printf ("STOP key pressed while loading file.\n");
      else if (i > 0)
	nc_printf ("Format error in file \"%s\" (%s)\n", filename, name);
      else
	nc_printf ("Unable to load file \"%s\"\n", filename);
      enderror();
    } } while (0) ;
  }
  clearfunc();
  refrscreen();
}






typedef long intarray_[1000000L ];


 
struct LOC_readlgf {
  char  *reason;
} ;

static  void  loadfail_(msg, LINK)
char  *msg;
struct LOC_readlgf *LINK;
{
  strcpy(LINK->reason, msg);
  _Escape(1);
}





static  void  readlgf(f, reason_)
FILE **f;
char  *reason_;
{
  struct LOC_readlgf V;
  char  buf[256];
  char  ch;
  long i, j, k, m, n, ii;
  short x1, y1, x2, y2;
  long *ip;
  log_grec *g;
  log_hnrec *hn;
  log_nrec *n1;
  char  *TEMP;
  char  STR2[38];

  V.reason = reason_;
  nc_fgets (buf, 256, *f);
  TEMP = strchr(buf, '\n');
  if (TEMP != ((void *)0) )
    *TEMP = 0;
  if (strcmp(buf, "f s"))
    loadfail_("Not an LGF file", &V);
  do {
    while (P_eoln(*f) && !P_eof(*f)) {
      fscanf(*f, "%*[^\n]");
      getc(*f);
    }
    do {
      if (P_eof(*f))
	ch = '.';
      else {
	ch = getc(*f);
	if (ch == '\n')
	  ch = ' ';
      }
    } while (ch == ' ');
    switch (tolower(ch)) {

    case '#':    
      fscanf(*f, "%*[^\n]");
      getc(*f);
      break;

    case 'n':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%ld%ld%*[^\n]", &m, &n);
	getc(*f);    
	for (m = 1; m <= n; m++) {    
	  fscanf(*f, "%*[^\n]");
	  getc(*f);
	}
	while (!P_eoln(*f) && !P_eof(*f)) {    
	  fscanf(*f, "%*[^\n]");
	  getc(*f);
	}
      }
      break;

    case 's':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      ip = (long *)((__MallocTemp__ = malloc(( i * sizeof(long)  ) ? ( i * sizeof(long)  ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      for (j = 0; j < i; j++) {
	fscanf(*f, "%ld%c", &n, &ch);
	if (ch == '\n')
	  ch = ' ';
	nc_fgets (buf, 256, *f);
	TEMP = strchr(buf, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	ip[j] = getsignal(0, buf);
      }
      break;

    case 'w':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x1, &y1, &x2, &y2);
	getc(*f);    
	if (x1 != x2)
	  addhwire2(x1, x2, y1);
	else if (y1 != y2)
	  addvwire2(x1, y1, y2);
      }
      break;

    case 'p':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%hd%hd%*[^\n]", &x1, &y1);
	getc(*f);    
	solderat(x1, y1);
      }
      break;

    case 'l':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%hd%hd%ld%c", &x1, &y1, &k, &ch);
	if (ch == '\n')
	  ch = ' ';
	nc_fgets (buf, 256, *f);
	TEMP = strchr(buf, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	if (ch != ' ')
	  loadfail_("Bad label name", &V);
	addlabelat(x1, y1, buf);
      }
      break;

    case 'b':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%hd%hd%hd%hd%*[^\n]", &x1, &y1, &x2, &y2);
	getc(*f);
	addboxat(x1, y1, x2, y2);
      }
      break;

    case 'g':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      for (j = 1; j <= i; j++) {
	nc_fgets (buf, 256, *f);
	TEMP = strchr(buf, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	k = readlibrary(buf);
	if (k != 0) {
	  fscanf(*f, "%hd%hd%hd%hd%ld%ld%ld%*[^\n]", &x1, &y1, &x2, &y2, &ii,
		 &m, &n);
	  getc(*f);
	  addgate1(x1, y1, (int)(k + x2 * 256 ));
	  if (gg.neargate != ((void *)0) ) {
	    g = gg.neargate;
	    g->gc = y2;
	    g->vars = (na_long)ii;
	    if (m != 0)
	      settofrom(&g, gg.signaltab[ip[m - 1] - 1].name);
	    fscanf(*f, "%*[^\n]");    
	    getc(*f);
	    readattrs(f, &g->attr, g->kind->numattrs, g->kind->attr,
		      g->kind->lbl, (int)n);
	    gg.actfile = f;
	    gg.actflag = 0 ;
	    calltoolgate(g, act_readgate);
	  }
	}
	while (!P_eoln(*f) && !P_eof(*f)) {
	  fscanf(*f, "%*[^\n]");
	  getc(*f);
	}
	if (P_eof(*f))
	  loadfail_("End-of-file while reading gates", &V);
	fscanf(*f, "%*[^\n]");
	getc(*f);
      }
      break;

    case 'h':    
      fscanf(*f, "%ld%*[^\n]", &i);
      getc(*f);
      histdelsignals();
      for (j = 1; j <= i; j++) {
	fscanf(*f, "%hd%hd%c", &y1, &x1, &ch);
	if (ch == '\n')
	  ch = ' ';
	nc_fgets (buf, 256, *f);
	TEMP = strchr(buf, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	x2 = getsignal(0, buf);
	n1 = gg.signaltab[x2 - 1].np;
	histaddsignal(&hn, x2, y1);
	readattrs(f, &hn->attr, n1->simtype->hnumattrs, n1->simtype->hattr,
		  n1->simtype->hlbl, x1);
      }
      break;

    case '.':
       
      break;

    default:
      sprintf(STR2, "Don't understand header character: %c", ch);
      loadfail_(STR2, &V);
      break;
    }
  } while (ch != '.');
}


 
struct LOC_readpage {
  char  *reason;
} ;

static  void  loadfail__(msg, LINK)
char  *msg;
struct LOC_readpage *LINK;
{
  strcpy(LINK->reason, msg);
  _Escape(1);
}



static  void  readpage(filename_, reason_)
char  *filename_;
char  *reason_;
{
  struct LOC_readpage V;
  char  filename[256];
  FILE *f;
  char  buf[256];
  char  *TEMP;

  strcpy(filename, filename_);
  V.reason = reason_;
  f = ((void *)0) ;
  *V.reason = '\0';
  newci_fixfname(filename, "lgf", "");
  if (f != ((void *)0) )
    f = freopen(filename, "r", f);
  else
    f = fopen(filename, "r");
  if (f == ((void *)0) )
    _EscIO(10 );
  nc_fgets (buf, 256, f);
  TEMP = strchr(buf, '\n');
  if (TEMP != ((void *)0) )
    *TEMP = 0;
  if (!strcmp(buf, "-5"))
    readlgf(&f, V.reason);
  else if (*buf == '-')
    loadfail__("Unable to read old-format files", &V);
  else
    loadfail__("Not an LGF file", &V);
  if (f != ((void *)0) )
    fclose(f);
  f = ((void *)0) ;
  chpage((int)gg.curpage);
  gg.pagechanged[gg.curpage - 1] = 0 ;
  if (curfilename[gg.curpage - 1] == ((void *)0) )
    curfilename[gg.curpage - 1] = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  strcpy(curfilename[gg.curpage - 1], filename);
  if (f != ((void *)0) )
    fclose(f);
}



static  void  readcommand()
{
  char  filename[256], reason[256];
  long i, j;

  if (*gg.funcarg == '\0' || !strcmp(gg.funcarg, "*")) {
    beginbottom();
    nc_printf ("Name of file to read: ");
    readlnpass(filename, 0);
    endbottom();
  } else
    strcpy(filename, gg.funcarg);
  if (*filename != '\0') {
    beginbottom();
    nc_printf ("Reading file %s\n", filename);
    deleverything();
    garbagecoll();
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      m_alpha_on();
      readpage(filename, reason);
      endbottom();
    __top_jb = __try_jb.next; } else { ;
      i = P_escapecode;
      j = P_ioresult;
      endbottom();
      beginerror();
      if (0   || 1   || gg.traceflag)
	nc_printf ("%ld/%ld/%ld  ", i, j, EXCP_LINE);
      if (i == -10 && (unsigned long)j < 32 && ((1L << j) & 0x600) != 0)
	nc_printf ("Can't find file \"%s\"\n", filename);
      else if (i == -20)
	nc_printf ("STOP key pressed while reading file.\n");
      else if (i > 0)
	nc_printf ("Format error in file \"%s\" (%s)\n", filename, reason);
      else
	nc_printf ("Unable to read file \"%s\"\n", filename);
      enderror();
    } } while (0) ;
  }
  clearfunc();
}





static  void  singlestep()
{
  gg.singlestepcount = getint(gg.funcarg, 1L);
  steppingoff = gg.pwrflag;
  gg.pwrflag = 1 ;
  gg.refrflag = 1 ;
}





static  void  getgatecmd()
{
  short i;
  char  name[9];

  do {
    getword(gg.funcarg, name);
    if (*name != '\0')
      i = readlibrary(name);
  } while (*name != '\0');
  clearfunc();
}




static  void  makegatecmd()
{
  short i;
  char  name[9];

  do {
    getword(gg.funcarg, name);
    if (*name != '\0') {
      i = readlibrary(name);
      if (i != 0)
	uaddgate(0, 0, i);
    }
  } while (*name != '\0');
  clearfunc();
}





 
struct LOC_toolcommand {
  log_tool *ta[23  + 1];
  boolean refrflag, wasselected;
} ;

static  void  describe(i, LINK)
long i;
struct LOC_toolcommand *LINK;
{
  if (LINK->ta[i] == ((void *)0) )
    return;
  remcursor();
  nc_gotoXY( 4 ,  (int)i ) ;
  if (LINK->ta[i]->ready)
    nc_putchar (137 );
  nc_printf ("%16s   ", LINK->ta[i]->name);
  nc_fputs (LINK->ta[i]->comment, (&_iob[1 ]) );
  nc_printf ("%c\n", 136 );
}

static  long which(LINK)
struct LOC_toolcommand *LINK;
{
  if (gg.t.near_ && gg.t.ay >= 1 && gg.t.ay <= 23 )
    return (gg.t.ay);
  else
    return -1;
}

static  void  selecttool(name, LINK)
char  *name;
struct LOC_toolcommand *LINK;
{
  log_tool *tp;

  tp = findtool(name);
  if (!tp->ready) {
    warning();
    return;
  }
  calltool(tp, act_select);
  if (!tp->keep)
    closetool(tp);
  LINK->refrflag = 1 ;
  LINK->wasselected = 1 ;
}





static  void  toolcommand()
{
  struct LOC_toolcommand V;
  log_tool *tp;
  long i, j, numtools;
  boolean exitflag;
  char  ch;

  V.wasselected = 0 ;
  if (*gg.funcarg != '\0')
    selecttool(gg.funcarg, &V);
  else {
    do {
      for (i = 0; i <= 23 ; i++)
	V.ta[i] = ((void *)0) ;
      numtools = 0;
      tp = gg.toolbase;
      while (tp != ((void *)0) ) {
	if (*tp->comment != '\0' && numtools < 23 ) {
	  numtools++;
	  V.ta[numtools + 1] = tp;
	}
	tp = tp->next;
      }
      clearshowalpha();
      nc_printf ("LOG tools available:\n");
      for (i = 0; i <= 23 ; i++)
	describe(i, &V);
      exitflag = 0 ;
      V.refrflag = 0 ;
      do {
	do {
	  j = which(&V);
	  if (j >= 0) {
	    nc_putchar (129 );
	    describe(j, &V);
	    nc_putchar (128 );
	  }
	  if (gg.t.near_ && gg.t.inalpha)
	    nc_gotoXY( gg.t.ax ,  gg.t.ay ) ;
	  else
	    noblink();
	  do {
	    pass();
	    m_tracking(1L);
	    pen();
	  } while (!(which(&V) != j || gg.t.dn || pollkbd2()));
	  if (j >= 0)
	    describe(j, &V);
	} while (!(gg.t.dn || pollkbd2()));
	nc_gotoXY( 0 ,  txdown ) ;
	if (pollkbd2())
	  ch = toupper(inkey2());
	else
	  ch = '\0';
	if (gg.t.dn) {
	  switch (j) {

	  case -1:
	    ch = '\003';
	    break;

	  default:
	    ch = (char )(j + 64);
	    if (V.ta[ch - 64] == ((void *)0) )
	      ch = '\003';
	    break;
	  }
	}
	if (ch >= 'A' && ch <= 'X') {
	  tp = V.ta[ch - 64];
	  if (tp != ((void *)0) ) {
	    selecttool(tp->name, &V);
	    exitflag = 1 ;
	  }
	} else if (ch == '\003' || ch == '\015' || ch == ' ')
	  exitflag = 1 ;
      } while (!(V.refrflag || exitflag));
    } while (!exitflag);
  }
  clearalpha();
  if (V.wasselected) {
    m_graphics_on();
    refresh();
  }
  m_graphics_on();
}










static  log_tool *counttool(i)
long i;
{
  log_tool *tp;

  tp = gg.toolbase;
  while (tp->nostatus)
    tp = tp->next;
  while (i > 1) {
    tp = tp->next;
    if (!tp->nostatus)
      i--;
  }
  return tp;
}

static  char  *onoff(Result, b)
char  *Result;
boolean b;
{
  if (b)
    return strcpy(Result, "ON ");
  else
    return strcpy(Result, "OFF");
}

static  void  status_log()
{
  timerec time;
  daterec date;
  char  STR2[9];
  char  STR3[81];

  if (gg.actflag) {
    sysdate(&date);
    nc_printf ("   Date %2d-%.3s-%01d   Time\n",
	   date.day, "JanFebMarAprMayJunJulAugSepOctNovDec"  + date.month * 3L - 3, date.year);
    nc_printf ("   Available memory:   \n\n");
    nc_printf ("   Simulation time:    \n");
    nc_printf ("   Simulation timestep:\n");
    nc_printf ("   Simulation status:  \n\n\n");
    nc_printf ("   Invisible mode %s", onoff(STR2, gg.invisible));
    nc_printf ("     Invisible labels %s", onoff(STR2, gg.textinvisible));
    nc_printf ("   Glow mode %s\n", onoff(STR2, gg.glowmode));
    nc_printf ("   Simulation %s", onoff(STR2, gg.pwrflag));
    nc_printf ("         Snap-to-grid %s", onoff(STR2, snapflag));
    nc_printf ("       Markers %s\n", onoff(STR2, gg.markers));
    nc_printf ("   Quiet mode %s", onoff(STR2, gg.quiet));
    nc_printf ("         Verbose mode %s", onoff(STR2, gg.verbose));
    nc_printf ("       Trace mode %s\n", onoff(STR2, gg.traceflag));
    nc_gotoXY( 0 ,  txdown - 3 ) ;
    nc_printf ("Use the arrow keys to view status pages.  Press the space bar to quit.\n");
    status_oldtime = -1.0;
    status_oldtstep = -1.0;
    status_oldmem = -1;
  }
  if (labs(timers_sysclock() - gg.actx) > 50) {
    nc_gotoXY( 25 ,  4 ) ;
    systime(&time);
    nc_printf ("%2d:%02d:%02ld", time.hour, time.minute, time.centisecond / 100L);
    gg.actx = timers_sysclock();
  }
  if (memavail() != status_oldmem) {
    nc_gotoXY( 23 ,  5 ) ;
    nc_printf ("%ld", memavail());
    status_oldmem = memavail();
  }
  if (gg.time != status_oldtime) {
    nc_gotoXY( 23 ,  7 ) ;
    nc_printf ("%s\t", realunit(STR3, gg.time, 4, "sec", 0 ));
    status_oldtime = gg.time;
  }
  if (gg.prevtimestep != status_oldtstep) {
    nc_gotoXY( 23 ,  8 ) ;
    nc_printf ("%s\t", realunit(STR3, gg.prevtimestep, 4, "sec", 0 ));
    status_oldtstep = gg.prevtimestep;
  }
  if (gg.simstate == gg.oldsimstate && gg.simstatetool == gg.oldsimstatetool)
    return;
  nc_gotoXY( 23 ,  9 ) ;
  switch (gg.simstate) {

  case simst_off:
    nc_printf ("Off\t");
    break;

  case simst_notactive:
    nc_printf ("Not active\t");
    break;

  case simst_notready:
    nc_printf ("Halted (%s)\t", gg.simstatetool->shortname);
    break;

  case simst_running:
    if (gg.simstatetool == ((void *)0) )
      nc_printf ("Running (scope-mode interpolation)\t");
    else
      nc_printf ("Running (%s)\t", gg.simstatetool->shortname);
    break;
  }
}



static  void  status_mem()
{
  long i, j;
  log_grec *g;
  log_hwrec *hw;
  log_vwrec *vw;
  log_lrec *l;
  log_brec *b;
  log_nrec *n;
  long FORLIM;

  if (!gg.actflag)
    return;
  nc_printf ("          gates  wires labels  boxes  changed  filename\n");
  for (i = 0; i <= 8; i++) {
    if (i + 1 == gg.curpage)
      nc_putchar (137 );
    nc_printf ("Page %ld -- ", i + 1);
    if (i + 1 <= gg.numpages) {
      g = gg.gbase[i];
      j = 0;
      while (g != ((void *)0) ) {
	j++;
	g = g->next;
      }
      nc_printf ("%4ld", j);
      hw = gg.hwbase[i];
      j = 0;
      while (hw != ((void *)0) ) {
	j++;
	hw = hw->next;
      }
      vw = gg.vwbase[i];
      while (vw != ((void *)0) ) {
	j++;
	vw = vw->next;
      }
      nc_printf ("%7ld", j);
      l = gg.lbase[i];
      j = 0;
      while (l != ((void *)0) ) {
	j++;
	l = l->next;
      }
      nc_printf ("%7ld", j);
      b = gg.bbase[i];
      j = 0;
      while (b != ((void *)0) ) {
	j++;
	b = b->next;
      }
      nc_printf ("%7ld     ", j);
      if (pagechanged((int)(i + 1)))
	nc_printf ("Yes    ");
      else
	nc_printf ("No     ");
      if (curfilename[i] != ((void *)0) )
	nc_fputs (curfilename[i], (&_iob[1 ]) );
    } else
      nc_printf ("Empty.");
    nc_printf ("%c\n", 136 );
  }
  nc_printf ("\nPaste  -- ");
  if (copybuf.valid) {
    g = copybuf.gcopy;
    j = 0;
    while (g != ((void *)0) ) {
      j++;
      g = g->next;
    }
    nc_printf ("%4ld", j);
    hw = copybuf.hwcopy;
    j = 0;
    while (hw != ((void *)0) ) {
      j++;
      hw = hw->next;
    }
    vw = copybuf.vwcopy;
    while (vw != ((void *)0) ) {
      j++;
      vw = vw->next;
    }
    nc_printf ("%7ld", j);
    l = copybuf.lcopy;
    j = 0;
    while (l != ((void *)0) ) {
      j++;
      l = l->next;
    }
    nc_printf ("%7ld", j);
    b = copybuf.bcopy;
    j = 0;
    while (b != ((void *)0) ) {
      j++;
      b = b->next;
    }
    nc_printf ("%7ld\n", j);
  } else
    nc_printf ("Empty.\n");
  nc_putchar ('\n');
  n = gg.nbase;
  j = 0;
  while (n != ((void *)0) ) {
    j++;
    n = n->next;
  }
  nc_printf ("Total nodes:         %12ld\n", j);
  j = 0;
  FORLIM = gg.lastsignal;
  for (i = 0; i < FORLIM; i++) {
    if (gg.signaltab[i].np != ((void *)0) )
      j++;
  }
  nc_printf ("Total signal names:  %12ld\n", j);
}

static  void  status_macro()
{
  macrorec *mp;
  char  ch;
  long i, j;

  if (!gg.actflag)
    return;
  mp = macrobase;
  i = 2;
  do {
    j = 4;
    do {
      if (mp != ((void *)0) ) {
	nc_gotoXY( (int)i ,  (int)j ) ;
	ch = mp->key;
	if (ch == '\007')
	  nc_printf ("bs ");
	else if (ch == '\t')
	  nc_printf ("tab");
	else if (ch == '\015')
	  nc_printf ("cr ");
	else if (ch == ' ')
	  nc_printf ("sp ");
	else if ((ch & 255) >= 168 && (ch & 255) <= 193)
	  nc_printf ("^%c ", (char )((uchar)ch - 'g'));
	else if (ch <= '\037' || (ch & (~127)) != 0)
	  nc_printf ("%3d", ch);
	else
	  nc_printf ("%c  ", ch);
	nc_printf ("  %s", mp->name);
      }
      mp = mp->next;
      j++;
    } while (j < txdown && mp != ((void *)0) );
    i += 40;
  } while (i <= txacross && mp != ((void *)0) );

 
 
 
}







static  void  statusdisplay(name_)
char  *name_;
{
  char  name[256];
  char  ch;
  short which, whichmax;
  long savex, savey;
  boolean refrflag, exitflag;
  log_tool *tp;
  char  STR2[256], STR3[256];

  strcpy(name, name_);
  clearshowalpha();
  whichmax = 0;
  tp = gg.toolbase;
  while (tp != ((void *)0) ) {
    if (!tp->nostatus)
      whichmax++;
    tp = tp->next;
  }
  strupper(name, strcpy(STR2, strltrim(strrtrim(strcpy(STR3, name)))));
  if (!strcmp(name, "LOG"))
    which = -2;
  else if (!strcmp(name, "MEMORY"))
    which = -1;
  else if (!strcmp(name, "MACRO") || !strcmp(name, "KEYBOARD"))
    which = 0;
  else {
    tp = gg.toolbase;
    which = 1;
    while (tp != ((void *)0)  && strcmp(tp->name, name)) {
      if (!tp->nostatus)
	which++;
      tp = tp->next;
    }
    if (tp == ((void *)0) )
      which = (-2) ;
  }
  exitflag = 0 ;
  do {
    clearshowalpha();
    nc_printf ("                           LOG V%s    Status Display\n\n",
	   "4.1" );
    nc_printf ("Status:  ");
    switch (which) {

    case -2:
      nc_printf ("LOG");
      break;

    case -1:
      nc_printf ("Memory");
      break;

    case 0:
      nc_printf ("Keyboard assignments");
      break;

    default:
      tp = counttool((long)which);
      nc_fputs (tp->name, (&_iob[1 ]) );
      if (*tp->comment != '\0')
	nc_printf (" (%s)", tp->comment);
      break;
    }
    savex = 0;
    savey = 0;
    refrflag = 0 ;
    gg.actflag = 1 ;
    nc_gotoXY( 0 ,  4 ) ;
    do {
      gg.actx = savex;
      gg.acty = savey;
      switch (which) {

      case -2:
	status_log();
	break;

      case -1:
	status_mem();
	break;

      case 0:
	status_macro();
	break;

      default:
	if (tp->ready)
	  calltool(tp, act_status);
	if (gg.actflag) {
	  if (tp->ready)
	    nc_printf ("   (No status for this tool)\n");
	  else
	    nc_printf ("   (Not yet activated)\n");
	}
	break;
      }
      savex = gg.actx;
      savey = gg.acty;
      pen();
      pass();
      ch = '\0';
      if (gg.t.dn)
	ch = '\003';
      if (pollkbd2())
	ch = inkey2();
      switch (ch) {

      case '+':
      case '\034':
	if (which < whichmax) {
	  which++;
	  refrflag = 1 ;
	}
	break;

      case '-':
      case '\b':
	if (which > (-2) ) {
	  which--;
	  refrflag = 1 ;
	}
	break;

      case ' ':
      case '\003':
      case '\015':
	exitflag = 1 ;
	break;
      }
      gg.actflag = 0 ;
      nc_gotoXY( 9 ,  2 ) ;
    } while (!(refrflag || exitflag));
  } while (!exitflag);
  if (m_autoraise)
    {
      m_graphics_on();   
    }
  clearalpha();
}














 
 
 
 
 
 
 

static  void  popupmenu(num)
short num;
{
  short i, j, x, y, xx, x0, y0, x1, y1, x00, y00;
  logmenurec *menu;
  char  STR1[256];

  menu = popupmenus[num - 1];
  popup_grid = (cursortype == grid);
  remcursor();
  clipoff();
   


  m_color((long)gg.color.backgr);
  m_fillrect(kindgroupleft + 1L, (long)baseline, kindgroupright - 1L,
	     (long)down);
  m_color((long)gg.color.popupbox);
  m_drawrect(kindgroupleft + 3L, (long)baseline, kindgroupright - 3L,
	     down - 2L);
  m_drawrect(kindgroupleft + 5L, baseline + 2L, kindgroupright - 5L,
	     down - 4L);
  xx = (kindgroupsize * (25  * 2)  - 10) / (4  + 1);
  x = across / 2 - xx * (4  - 1) / 2;
  x0 = x;
  for (i = 1; i <= 4; i++) {
    y = line1 + 2;
    for (j = i * 2 - 2; j < i * 2; j++) {
      if (*menu[j].name != '\0') {
	if (menu[j].bool != ((void *)0)  && *menu[j].bool)
	  m_color((long)gg.color.selword);
	else if (menu[j].name[0] == '*')
	  m_color((long)gg.color.redword);
	else if (menu[j].name[0] == '#')
	  m_color((long)gg.color.blueword);
	else
	  m_color((long)gg.color.popupword);
	if (menu[j].name[0] == '#' || menu[j].name[0] == '*') {
	  sprintf(STR1, "%.*s",
		  (int)(strlen(menu[j].name) - 1L), menu[j].name + 1);
 

	  m_centerstr((long)x0, (long)y, ((void *)0)  , STR1);
	} else {
 

	  m_centerstr((long)x0, (long)y, ((void *)0)  , menu[j].name);
	}
      }
      y += line2 - line1 - 4;
    }
    x0 += xx;
  }
  do {
    x0 = (gg.t.x - x + xx / 2) / xx;
    y0 = (gg.t.y - baseline) / 26;
    if (gg.t.x + xx / 2 < x || gg.incircuit || x0 > 3 || y0 > 1) {
      x0 = -1;
      y0 = 0;
    } else {
      x00 = x + x0 * xx - xx / 2;
      y00 = line1 + y0 * (line2 - line1 - 4) - 1;
      m_color((long)gg.color.popupsel);
      m_drawrect((long)x00, (long)y00, x00 + xx - 1L, y00 + 15L);
    }
    do {
      pass();
      pollkbd2();
      m_tracking(1L);
      pen();
      x1 = (gg.t.x - x + xx / 2) / xx;
      y1 = (gg.t.y - baseline) / 26;
      if (gg.t.x + xx / 2 < x || gg.incircuit || x1 > 3 || y1 > 1) {
	x1 = -1;
	y1 = 0;
      }
    } while (gg.t.depressed && x0 == x1 && y0 == y1);
    remcursor();
    clipoff();
    if (x0 != -1) {
      m_color((long)gg.color.backgr);
      m_drawrect((long)x00, (long)y00, x00 + xx - 1L, y00 + 15L);
    }
  } while (gg.t.depressed);
   
  refrmenu();
  if (x0 == -1)
    return;
  i = x0 * 2 + 1;
  if (y0 != 0)
    i++;
  if (*menu[i - 1].name == '\0')
    return;
  immedscroll = 1 ;
  assertfunc(menu[i - 1].cmd);
  immedscroll = 0 ;
  scroll();
}







static  short reducecolor8(c)
short c;
{
  short Result;

  if (!eightcolors)
    return c;
  switch (c) {

  case 4 :
    Result = 1 ;
    break;

  case 5 :
    Result = 1 ;
    break;

  case 8 :
    Result = 5 ;
    break;

  case 9 :
    Result = 1 ;
    break;

  case 10 :
    Result = 3 ;
    break;

  case 11 :
    Result = 2 ;
    break;

  case 12 :
    Result = 5 ;
    break;

  case 13 :
    Result = 5 ;
    break;

  case 14 :
    Result = 7 ;
    break;

  case 15 :
    Result = 4 ;
    break;

  default:
    Result = c;
    break;
  }
  return Result;
}



static  void  setcmap(n, r, g, b)
short n, r, g, b;
{
  n = reducecolor8(n);
  rcolormap[n] = r;
  gcolormap[n] = g;
  bcolormap[n] = b;
  m_vsetcolors((long)n, 1L, &rcolormap[n], &gcolormap[n], &bcolormap[n]);
}



static  void  getcolor(name_, val, def)
char  *name_;
short *val, def;
{
  char  name[256];
  na_strlist *cp;
  char  STR2[256];
  char  STR3[256];

  strcpy(name, name_);
  strupper(name, strcpy(STR2, strltrim(strrtrim(strcpy(STR3, name)))));
  cp = strlist_find(colorbase, name);
  if (cp != ((void *)0) )
    *val = (long)cp->value;
  else
    *val = reducecolor8(def);
}




static  void  initcolors()
{
  getcolor("BACKGR", &gg.color.backgr, 0 );    
  getcolor("CURSOR", &gg.color.cursor, 7 );    
  recolor_log_cursors(gg.color.cursor, 0 );
  getcolor("GATE", &gg.color.gate, 6 );    
  getcolor("DIMGATE", &gg.color.dimgate, 12 );
       
  getcolor("KINDGATE", &gg.color.kindgate, 2 );
       
  getcolor("CATGATE", &gg.color.catgate, 6 );
       
  getcolor("GATEPIN", &gg.color.gatepin, 1 );
       
  getcolor("PINNUM", &gg.color.pinnum, 3 );
       
  getcolor("WIRE", gg.color.wire, 2 );
  getcolor("VLSIGREEN", &gg.color.wire[1  - 0 ],
	   2 );
  getcolor("VLSIYELLOW", &gg.color.wire[2  - 0 ],
	   3 );
  getcolor("VLSIRED", &gg.color.wire[3  - 0 ], 1 );
  getcolor("VLSIBLUE", &gg.color.wire[4  - 0 ],
	   6 );
  getcolor("XWIRE", &gg.color.xwire, 11 );
       
  getcolor("SOLDER", &gg.color.solder, 2 );
       
  getcolor("CONFLICT", &gg.color.conflict, 15 );
       
  getcolor("MENUWORD", &gg.color.menuword, 2 );
       
  getcolor("SELWORD", &gg.color.selword, 3 );
       
  getcolor("MESSAGE", &gg.color.message, 3 );
       
  getcolor("BASELINE", &gg.color.baseline, 6 );
       
  getcolor("PAGE1", &gg.color.page1, 2 );    
  getcolor("PAGE2", &gg.color.page2, 3 );    
  getcolor("PAGE3", &gg.color.page3, 2 );    
  getcolor("PAGE4", &gg.color.page4, 3 );
       
  getcolor("SELECT", &gg.color.select, 7 );
       
  getcolor("SCROLL", &gg.color.scroll, 7 );
       
  getcolor("SIGNAL", &gg.color.signal, 9 );
       
  getcolor("LABELTEXT", &gg.color.labeltext, 10 );
       
  getcolor("DASHBOX", &gg.color.dashbox, 10 );
       
  getcolor("MARKER", &gg.color.marker, 9 );
       
  getcolor("CHART", &gg.color.chart, 3 );
       
  getcolor("DIVISION", &gg.color.division, 7 );
       
  getcolor("POPUPBOX", &gg.color.popupbox, 7 );
       
  getcolor("POPUPWORD", &gg.color.popupword, 2 );
       
  getcolor("POPUPSEL", &gg.color.popupsel, 9 );
       
  getcolor("REDWORD", &gg.color.redword, 9 );
       
  getcolor("BLUEWORD", &gg.color.blueword, 6 );
       
  getcolor("VLSICUT", &gg.color.vlsicut, 7 );
       
  getcolor("GATEGREEN", &gategreen, 2 );
  getcolor("GATEYELLOW", &gateyellow, 3 );
  getcolor("GATERED", &gatered, 1 );
  getcolor("GATEWHITE", &gatewhite, 7 );
  getcolor("GATEBLACK", &gateblack, 8 );
  getcolor("GATEORANGE", &gateorange, 5 );
  getcolor("DEFINEBOX", &defineboxcolor, 6 );
       
  getcolor("DEFINEBACK", &definebackcolor, 8 );
       
  getcolor("DEFINETEXT", &definetextcolor, 2 );
       
  getcolor("CATALOGBOX", &catboxcolor, 10 );
       
  calltools(act_color);
  stamp(&gg.colorstamp);
}




static  void  echomacro(key)
char  key;
{
  macrorec *mp;
  char  name[256];
  char  STR1[256];

  if (isupper(key))
    sprintf(name, "Shift-%c key", key);
  else if (key > ' ' && (key & (~127)) == 0) {
 
    sprintf(name, "%c key", key);
  } else if (key == ' ')
    strcpy(name, "Space bar");
  else if (key == '\007')
    strcpy(name, "Backspace key");
  else if (key == '\t')
    strcpy(name, "Tab key");
  else if (key == '\015')
    strcpy(name, "Enter key");
  else
    sprintf(name, "Key #%d", key);
  mp = macrobase;
  while (mp != ((void *)0)  && mp->key != key)
    mp = mp->next;
  if (mp == ((void *)0) ) {
    sprintf(STR1, "%s is not defined.", name);
    message(STR1);
  } else {
    sprintf(STR1, "%s is defined as \"%s\"", name, mp->name);
    message(STR1);
  }
}



static  void  definemacro(key, name)
char  key;
char  *name;
{
  macrorec *mp, *mp2, *mp3;

  mp2 = ((void *)0) ;
  mp = macrobase;
  while (mp != ((void *)0)  && mp->key < key) {
    mp2 = mp;
    mp = mp->next;
  }
 

  mp3 = (macrorec *)((__MallocTemp__ = malloc(( strlen(name) + 9L ) ? ( strlen(name) + 9L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  if (mp != ((void *)0)  && mp->key == key) {
    mp3->next = mp->next;
    (free((Anyptr)( mp )), ( mp )= ((void *)0) ) ;
  } else
    mp3->next = mp;
  if (mp2 == ((void *)0) )
    macrobase = mp3;
  else
    mp2->next = mp3;
  mp3->key = key;
  strcpy(mp3->name, name);
}




static  void  definemenu(num, part, name, cmd, bool)
short num, part;
char  *name, *cmd;
short bool;
{
  logmenurec *menu;

  menu = popupmenus[num - 1];
  strcpy(menu[part - 1].name, name);
  strcpy(menu[part - 1].cmd, cmd);
  switch (bool) {

  case 1:
    menu[part - 1].bool = &gg.invisible;
    break;

  case 2:
    menu[part - 1].bool = &gg.textinvisible;
    break;

  case 3:
    menu[part - 1].bool = &gg.markers;
    break;

  case 4:
    menu[part - 1].bool = &vlsi;
    break;

  case 5:
    menu[part - 1].bool = &popup_grid;
    break;

  case 6:
    menu[part - 1].bool = &gg.probemode;
    break;

  case 7:
    menu[part - 1].bool = &gg.glowmode;
    break;

  case 8:
    menu[part - 1].bool = &snapflag;
    break;

  case 9:
    menu[part - 1].bool = &gg.pwrflag;
    break;

  default:
    menu[part - 1].bool = ((void *)0) ;
    break;
  }
}


typedef char  cnamearray[16][8];


const  cnamearray cnames = {
  "GRAY", "RED", "GREEN", "YELLOW", "MRED", "ORANGE", "CYAN", "WHITE",
  "BLACK", "PINK", "DYELLOW", "XGREEN", "DCYAN", "DRED", "LGRAY", "CRED"
};


static  long getcolorname(w_)
char  *w_;
{
  long Result;
  char  w[256];
  short i;
  char  STR1[256];
  char  STR2[256];

  strcpy(w, w_);
  strcpy(STR1, strltrim(strrtrim(strupper(STR2, w))));
  strcpy(w, STR1);
  i = 15;
  while (i >= 0 && strcmp(cnames[i], w))
    i--;
  if (i >= 0)
    return i;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    i = getint(w, -1L);
    if ((unsigned)i > 15)
      Result = -1;
    else
      Result = i;
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    else
      return -1;
  } } while (0) ;
  return Result;
}





static  void  docnffunction()
{
  char  arg[256];
  long i, j, k;
  char  ch;
  na_strlist *cp;
  long clrarr[3];
  boolean flag;
  librstrrec *lsp, **lspp;
  char  STR2[256];

  if (*gg.func == '\0')
    return;
  if (!strcmp(gg.func, "COLOR")) {
    getword(gg.funcarg, arg);
    k = getcolorname(arg);
    if (k >= 0) {
      flag = 1 ;
      for (i = 1; i <= 3; i++) {
	j = getint(gg.funcarg, -1L);
	if ((unsigned long)j > 255)
	  flag = 0 ;
	else
	  clrarr[i - 1] = j;
      }
      if (flag) {
	k = reducecolor8((int)k);
	rcolormap[k] = clrarr[0];
	gcolormap[k] = clrarr[1];
	bcolormap[k] = clrarr[2];
	m_vsetcolors(k, 1L, &rcolormap[k], &gcolormap[k], &bcolormap[k]);
      }
      clearfunc();
      return;
    }
    k = getcolorname(gg.funcarg);
    strlist_remove(&colorbase, arg);
    if (k >= 0) {
      cp = strlist_add(&colorbase, arg);
      cp->value = (na_long)k;
    } else if (gg.initdone) {
      beginerror();
      nc_printf ("No such color as \"%s\"\n", gg.funcarg);
      enderror();
    }
    if (gg.initdone) {
      initcolors();
      if (gg.showpage > 0)
	refrscreen();
    }
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "MACRO")) {
    strwordx(gg.funcarg, arg);
    if (*arg != '\0') {
      if (strlen(arg) > 1) {
	if (strcicmp(arg, "sp") == 0)
	  ch = ' ';
	else if (strcicmp(arg, "bs") == 0)
	  ch = '\007';
	else if (strcicmp(arg, "tab") == 0)
	  ch = '\t';
	else if (strcicmp(arg, "cr") == 0)
	  ch = '\015';
	else if (strlen(arg) == 2 && arg[0] == '^')
	  ch = (arg[1] & 31) + 167;
	else
	  ch = (char )getint(arg, 32L);
      } else
	ch = arg[0];
      if (*gg.funcarg == '\0')
	echomacro(ch);
      else
	definemacro(ch, gg.funcarg);
    } else {
      if (gg.initdone)
	statusdisplay("MACRO");
    }
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "POPUP")) {
    i = getint(gg.funcarg, 0L);
    j = getint(gg.funcarg, 0L);
    if (i >= 1 && i <= 4 && j >= 1 && j <= 8) {
      k = getint(gg.funcarg, 0L);
      getword(gg.funcarg, arg);
      if (*arg != '\0')
	definemenu((int)i, (int)j, gg.funcarg, arg, (int)k);
      else
	definemenu((int)i, (int)j, "", "", 0);
    }
    clearfunc();
    return;
  }
  if (!strcmp(gg.func, "GROUP")) {
    i = getint(gg.funcarg, 0L);
    if ((unsigned long)i <= 8) {
      if (*gg.funcarg == '\0')
	curlistgroup = i;
      else {
	getword(gg.funcarg, arg);
	strchange(&librgroupnames[i], arg);
      }
    }
    clearfunc();
    return;
  }
  if (strcmp(gg.func, "LIBRSTR"))
    return;
   




  getword(gg.funcarg, arg);
  if (*arg != '\0' && *gg.funcarg != '\0') {
    strcpy(arg, strreverse(STR2, arg));
    lspp = &librstrs;
    while (*lspp != ((void *)0)  && strcmp((*lspp)->name, arg)) {
      if (strcmp(arg, (*lspp)->name) < 0)
	lspp = &(*lspp)->left;
      else
	lspp = &(*lspp)->right;
    }
    if (*lspp == ((void *)0) ) {
      lsp = (librstrrec *)((__MallocTemp__ = malloc(( sizeof(librstrrec) ) ? ( sizeof(librstrrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
      *lspp = lsp;
      lsp->left = ((void *)0) ;
      lsp->right = ((void *)0) ;
      strcpy(lsp->name, arg);
      lsp->str = ((void *)0) ;
    } else
      lsp = *lspp;
    strchange(&lsp->str, gg.funcarg);
  }
  clearfunc();
}



static  void  dofunction()
{
  log_tool *tp;
  char  cmd[17];
  short i;
  boolean oflag;
  char  STR2[256];
  short FORLIM;
  unsigned char TEMP;

  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    remcursor();
    doimmedfunction();
    if (*gg.func != '\0') {
      strcpy(cmd, gg.func);
      tp = gg.toolbase;
      while (tp != ((void *)0)  && !strcmp(gg.func, cmd)) {
	if (tp->ready)
	  calltool(tp, act_func);
	tp = tp->next;
      }
    }
    docnffunction();
    if (*gg.func != '\0') {
      if (!strcmp(gg.func, "DEL"))
	delcommand();
      else if (!strcmp(gg.func, "COPY"))
	copycommand();
      else if (!strcmp(gg.func, "CLEAR")) {
	clearfunc();
	deleverything();
	histdelsignals();
      } else if (!strcmp(gg.func, "PASTE"))
	pastecommand(0L);
      else if (!strcmp(gg.func, "EXTRACT"))
	extract();
      else if (!strcmp(gg.func, "MOVE"))
	movecommand(strcmp(gg.funcarg, "*") != 0);
      else if (!strcmp(gg.func, "OPENH"))
	openhoriz();
      else if (!strcmp(gg.func, "OPENV"))
	openvert();
      else if (!strcmp(gg.func, "CLOSEH"))
	closehoriz();
      else if (!strcmp(gg.func, "CLOSEV"))
	closevert();
      else if (!strcmp(gg.func, "CENTER"))
	centercommand();
      else if (!strcmp(gg.func, "YARDSTICK"))
	yardstickcommand();
      else if (!strcmp(gg.func, "DEFINE"))
	gatedefinitioncommand();
      else if (!strcmp(gg.func, "TOOL")) {
	toolcommand();
	clearfunc();
      } else if (!strcmp(gg.func, "LABEL")) {
	clearfunc();
	if (!gg.textinvisible) {
	  if (*gg.funcarg == '\0')
	    editlabel(((void *)0) );
	  else
	    addlabel(&gg.nearlabel, gg.funcarg);
	}
      } else if (!strcmp(gg.func, "BOX")) {
	if (!gg.textinvisible)
	  addbox();
	else
	  clearfunc();
      } else if (!strcmp(gg.func, "VLSI")) {
	clearfunc();
	if (gg.gbase[gg.curpage - 1] != ((void *)0)  ||
	    gg.hwbase[gg.curpage - 1] != ((void *)0)  ||
	    gg.vwbase[gg.curpage - 1] != ((void *)0) )
	  warning();
	else
	  setvlsimode(!vlsi);
      } else if (!strcmp(gg.func, "FAST")) {
	clearfunc();
	message("FAST mode enabled.");
	gg.fastspeed = gg.fastmax;
      } else if (!strcmp(gg.func, "SCOPE")) {
	clearfunc();
	historycommand();
      } else if (!strcmp(gg.func, "DUMPSCOPE")) {
	clearfunc();
	dumphistory();
      } else if (!strcmp(gg.func, "STEP")) {
	singlestep();
	clearfunc();
      } else if (!strcmp(gg.func, "TAPMODE")) {
	clearfunc();
	if (cureditmode == 4 )
	  cureditmode = 1;
	else
	  cureditmode++;
	refreditmode();
      } else if (!strcmp(gg.func, "ROT")) {
	clearfunc();
	cureditmode = 1;
	refreditmode();
      } else if (!strcmp(gg.func, "MIRX")) {
	clearfunc();
	cureditmode = 2;
	refreditmode();
      } else if (!strcmp(gg.func, "MIRY")) {
	clearfunc();
	cureditmode = 3;
	refreditmode();
      } else if (!strcmp(gg.func, "CNFG")) {
	clearfunc();
	cureditmode = 4;
	refreditmode();
      } else if (!strcmp(gg.func, "CAT"))
	gatecatalog(0 );
      else if (!strcmp(gg.func, "LIBRARY"))
	gatecatalog(1 );
      else if (!strcmp(gg.func, "MAKE"))
	makegatecmd();
      else if (!strcmp(gg.func, "GET"))
	getgatecmd();
      else if (!strcmp(gg.func, "NAME"))
	namecommand();
      else if (!strcmp(gg.func, "SAVE"))
	savecommand();
      else if (!strcmp(gg.func, "LOAD"))
	loadcommand();
      else if (!strcmp(gg.func, "READ"))
	readcommand();
      else if (!strcmp(gg.func, "MESSAGE")) {
	message(gg.funcarg);
	clearfunc();
      } else if (!strcmp(gg.func, "VMESSAGE")) {
	vmessage(gg.funcarg);
	clearfunc();
      } else if (!strcmp(gg.func, "DUMPCONFLICTS")) {
	dumpconflicts();
	clearfunc();
      } else if (!strcmp(gg.func, "TRAIN")) {
	 








	clearfunc();
      } else if (!strcmp(gg.func, "STATUS")) {
	statusdisplay(gg.funcarg);
	clearfunc();
      } else if (!strcmp(gg.func, "MARKER")) {
	oflag = gg.markers;
	getbool(gg.funcarg, &gg.markers);
	if (gg.markers != oflag) {
	  if (gg.markers) {
	    gg.markerx1 = (gg.xoff + 30) / gg.scale;
	    gg.markery1 = (gg.yoff + 30) / gg.scale;
	    gg.markerx2 = (gg.xoff + across - 30) / gg.scale;
	    gg.markery2 = (gg.yoff + baseline - 30) / gg.scale;
	    drawmarkersc(gg.color.marker);
	  } else
	    drawmarkersc(gg.color.backgr);
	  stamp(&gg.markerstamp);
	}
	vmessageflag("Markers are ", gg.markers);
	clearfunc();
      } else if (!strcmp(gg.func, "TRAIN+")) {
	if (training) {
	   (helpptr, "+Q");
 

	}
	clearfunc();
      } else if (!strcmp(gg.func, "TRAIN-")) {
	if (training) {
	   (helpptr, "-Q");
 

	}
	clearfunc();
      } else if (!strcmp(gg.func, "REFRESH")) {
	clearfunc();
	refrscreen();
      } else if (!strcmp(gg.func, "RESIZE")) {
	clearfunc();
	resize_screen();
      } else if (!strcmp(gg.func, "REFR"))
	scroll();
      else if (!strcmp(gg.func, "SHELL")) {
	doshellescape(gg.funcarg);
	clearfunc();
      } else if (*gg.func == '!') {
	sprintf(STR2, "%s %s", gg.func, gg.funcarg);
	doshellescape(STR2);
	clearfunc();
      } else if (!strcmp(gg.func, "EXIT")) {
	if (strcmp(gg.funcarg, "*") && !anychanged()) {
	  P_escapecode = 20;
	  goto _Ltry30;
	}
	clearshowalpha();
	nc_putchar ('\n');
	if (anychanged()) {
	  nc_printf ("The following page(s) have not been saved: ");
	  FORLIM = gg.numpages;
	  for (i = 1; i <= FORLIM; i++) {
	    if (pagechanged(i))
	      nc_printf ("%d ", i);
	  }
	  nc_putchar ('\n');
	}
	m_alpha_on();
	 ;
	nc_gotoXY( 31 ,  10 ) ;
	nc_printf ("%c%cExit from program? %c", 137 , 128 , 136 );
	do
	  TEMP = m_inkey ();
	while ((TEMP == 250)||(TEMP == 251));
	if (TEMP == 'y' || TEMP == 'Y') {
	  P_escapecode = 20;
	  goto _Ltry30;
	}
	m_graphics_on();
	clearalpha();
	clearfunc();
      } else if (!strcmp(gg.func, "ABORT")) {
	remcursor();
	if (cursortype == grid)
	  cursortype = normal;
	gg.probemode = 0 ;
	clearfunc();
      } else if (!strcmp(gg.func, "X"))
	clearfunc();
    }
  __top_jb = __try_jb.next; } else { if (0) {  _Ltry30 : __top_jb = __try_jb.next; } ;
    if (excpline == -1)
      excpline = EXCP_LINE;
    if (P_escapecode != 5)
      _Escape(P_escapecode);
    remcursor();
    gg.startpoint = 0 ;
    log_setmode("");
     
    if (gg.t.dn && !gg.incircuit) {
      gg.t.dn = 0 ;
      gg.t.depressed = 0 ;
    }
    cursortype = normal;
  } } while (0) ;

   
}



static  void  initmacros()
{
  definemacro(171, "EXIT *");    
  definemacro(':', "DO");
  definemacro(' ', "REFRESH");
  definemacro('!', "SHELL");
  definemacro('1', "PAGE 1");
  definemacro('2', "PAGE 2");
  definemacro('3', "PAGE 3");
  definemacro('4', "PAGE 4");
  definemacro('5', "PAGE 5");
  definemacro('6', "PAGE 6");
  definemacro('7', "PAGE 7");
  definemacro('8', "PAGE 8");
  definemacro('9', "PAGE 9");
  definemacro('*', "PASTE");
  definemacro(',', "ALTPOSN");
  definemacro('.', "PROBE");
  definemacro('/', "COPY");
  definemacro('0', "RESET");
  definemacro('<', "ZOOMDN");
  definemacro('>', "ZOOMUP");
  definemacro('?', "HELP");
  definemacro('+', "PAGE +");
  definemacro('-', "PAGE -");
  definemacro('A', "AUTOWINDOW");
  definemacro('b', "BOX");
  definemacro('c', "CNFG");
  definemacro('C', "CAT");
  definemacro('d', "DEL");
  definemacro('D', "DEFINE");
  definemacro('e', "EXAMINE");
  definemacro('E', "EXAMINE");
  definemacro('f', "FAST");
  definemacro('g', "GLOW");
  definemacro('G', "GRID");
  definemacro('h', "HOME");
  definemacro('i', "INVISIBLE");
  definemacro('I', "INVLABEL");
  definemacro('l', "LABEL");
  definemacro('L', "LOAD");
  definemacro('m', "MOVE");
  definemacro('M', "TAPMODE");
  definemacro('o', "ONOFF");
  definemacro('p', "PLOT");
  definemacro('r', "ROT");
  definemacro('R', "RESET");
  definemacro('q', "QUIET");
  definemacro('Q', "EXIT *");
  definemacro('s', "SCOPE");
  definemacro('S', "SAVE *");
  definemacro('t', "STEP");
  definemacro('T', "TOOL");
  definemacro('v', "VERBOSE");
  definemacro('x', "EXAMINE");
  definemacro('y', "YARDSTICK");
  definemacro('Z', "EXIT *");
 
  definemacro(250, "REFRESH");
 
  definemacro(251, "RESIZE");
}


static  void  newmenu(menu)
logmenurec **menu;
{
  short i;

  *menu = (logmenurec *)((__MallocTemp__ = malloc(( sizeof(logmenutype) ) ? ( sizeof(logmenutype) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  for (i = 0; i <= 7; i++)
    *(*menu)[i].name = '\0';
}



static  void  initmenus()
{
  short i;

  for (i = 0; i <= 3; i++)
    newmenu(&popupmenus[i]);
  definemenu(1, 1, "Box", "BOX", 0);
  definemenu(1, 2, "Label", "LABEL", 0);
  definemenu(1, 3, "Invisible", "INVISIBLE", 1);
  definemenu(1, 4, "Inv lbls", "INVLABEL", 2);
  definemenu(1, 5, "Zoom up", "ZOOMUP", 0);
  definemenu(1, 6, "Zoom dn", "ZOOMDN", 0);
  definemenu(1, 7, "Markers", "MARKER", 3);
  definemenu(1, 8, "Yardstick", "YARDSTICK", 0);
  definemenu(2, 1, "Delete", "DEL", 0);
  definemenu(2, 2, "Copy", "COPY", 0);
  definemenu(2, 3, "Move", "MOVE", 0);
  definemenu(2, 4, "Paste", "PASTE", 0);
  definemenu(2, 5, "#Open H", "OPENH", 0);
  definemenu(2, 6, "#Open V", "OPENV", 0);
  definemenu(2, 7, "#Close H", "CLOSEH", 0);
  definemenu(2, 8, "#Close V", "CLOSEV", 0);
  definemenu(3, 1, "Grid", "GRID", 5);
  definemenu(3, 2, "Probe", "PROBE", 6);
  definemenu(3, 3, "Glow", "GLOW", 7);
  definemenu(3, 5, "Alt posn", "ALTPOSN", 0);
  definemenu(3, 6, "Home", "HOME", 0);
  definemenu(3, 8, "Refresh", "REFRESH", 0);
  definemenu(4, 1, "Load page", "LOAD", 0);
  definemenu(4, 2, "Save page", "SAVE *", 0);
  definemenu(4, 3, "Plotting", "PLOT", 0);
  definemenu(4, 4, "Status", "STATUS", 0);
  definemenu(4, 5, "Scope", "SCOPE", 0);
  definemenu(4, 6, "Reset", "RESET", 0);
  definemenu(4, 7, "Simulation", "ONOFF", 9);
  definemenu(4, 8, "*Exit", "EXIT", 0);
}



static  void  inithooks()
{
  gg.hook.hidecursor = hidecursor_hook;
  gg.hook.unhidecursor = unhidecursor_hook;
  gg.hook.hidecursorrect = hidecursorrect_hook;
  gg.hook.nodeconflict = reportnodeconflict;
  gg.hook.gateconflict = reportgateconflict;
  gg.hook.clearconflicts = clearconflicts;
  gg.hook.setdimgate = setdimgate;
  gg.hook.xform = xformcoords;
  gg.hook.getsig = getsigname;
  gg.hook.report = report;
  gg.hook.alert = alert;
  gg.hook.warning = warning;
  gg.hook.working = working;
  gg.hook.message = message;
  gg.hook.vmessage = vmessage;
  gg.hook.vmessageflag = vmessageflag;
  gg.hook.trace = tracemessage;
  gg.hook.dump = dumpmessage;
  gg.hook.setdump = setdumpname;
  gg.hook.closefiles = closedumpfiles;
  gg.hook.clearalpha = clearalpha;
  gg.hook.drawstr = drawstr2;
  gg.hook.rightstr = rightstr2;
  gg.hook.centerstr = centerstr2;
  gg.hook.clip = clipon;
  gg.hook.remcursor = remcursor;
  gg.hook.clearscreen = clearscreen;
  gg.hook.setmode = log_setmode;
  gg.hook.getword = getword;
  gg.hook.getint = pgetint;
  gg.hook.getreal = pgetreal;
  gg.hook.getbool = getbool;
  gg.hook.pen = pen;
  gg.hook.pass = pass;
  gg.hook.trykbd = trykbd;
  gg.hook.scroll = scroll;
  gg.hook.trykbdscroll = trykbdscroll;
  gg.hook.inkey = inkey3;
  gg.hook.udrawgate = udrawgatec;
  gg.hook.gdrawgate = drawgatec;
  gg.hook.drawgate = drawgatex;
  gg.hook.erasegate = eragate;
  gg.hook.drawnode = drawnodec;
  gg.hook.refresh = refresh;
  gg.hook.refreshsoon = refreshsoon;
  gg.hook.beginbottom = beginbottom;
  gg.hook.endbottom = endbottom;
  gg.hook.beginerror = beginerror;
  gg.hook.enderror = enderror;
  gg.hook.redraw = refrscreen1;
  gg.hook.redrawscreen = refrscreen;
  gg.hook.change = chpage;
  gg.hook.newgate = newgate;
  gg.hook.copygate = copygate;
  gg.hook.disposegate = disposegate;
  gg.hook.newnode = newnode;
  gg.hook.copynode = copynode;
  gg.hook.disposenode = disposenode;
  gg.hook.switchnode = switchnode;
  gg.hook.dumpnodes = dumpnodes;
  gg.hook.readlnpass = readlnpass;
  gg.hook.clearfunc = clearfunc;
  gg.hook.refrfunc = refrfunc;
  gg.hook.assertfunc = assertfunc;
  gg.hook.findobject = closergate;
  gg.hook.findwire = closerwire;
  gg.hook.deletehw = delhwire;
  gg.hook.deletevw = delvwire;
  gg.hook.disconnectgate = disconnectgate;
  gg.hook.deletegate = delgate;
  gg.hook.addhw = addhwire2;
  gg.hook.addvw = addvwire2;
  gg.hook.connectgate = pconnectgate;
  gg.hook.waitnear = waitnear;
  gg.hook.addgate = addgate1;
  gg.hook.uaddgate = uaddgate;
  gg.hook.getgate = getgate;
  gg.hook.realunit = prealunit;
  gg.hook.realunit2 = prealunit2;
  gg.hook.addlabel = addlabel;
  gg.hook.getcolor = getcolor;
  gg.hook.setcmap = setcmap;
  gg.hook.parselabel = parselabel;
  gg.hook.editattrs = editattrsx;
  gg.hook.newattrs = newattrs;
  gg.hook.disposeattrs = disposeattrs;
  gg.hook.copyattrs = copyattrs;
  gg.hook.initscreen = initscreen;
  gg.hook.clearshowalpha = clearshowalpha;
  gg.hook.setupregion = setupregion;
  gg.hook.stamp = stamp;
  gg.hook.noclip = clipoff;
  gg.hook2 = (log_hook2 *)((__MallocTemp__ = malloc(( sizeof(log_hook2) ) ? ( sizeof(log_hook2) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  gg.hook2->getnodeval = getnodeval;
  gg.hook2->solderat = solderat;
  gg.hook2->unsolderwires = unsolderwires;
  gg.hook2->settofrom = settofrom;
  gg.hook2->findattrnum = findattrnum;
  gg.hook2->findattrname = findattrname;
  gg.hook2->findpinnum = findpinnum;
  gg.hook2->findpinname = findpinname;
  gg.hook2->setgattr = setgattr;
  gg.hook2->setnattr = setnattr;
  gg.hook2->findpointmarker = findpointmarker;
  gg.hook2->findboxmarker = findboxmarker;
  gg.hook2->send_general = send_general;
  gg.hook2->send_gennode = send_gennode;
  gg.hook2->send_genkind = send_genkind;
  gg.hook2->send_gengate = send_gengate;
  gg.hook2->send_all = send_all;
  gg.hook2->send_allnodes = send_allnodes;
  gg.hook2->send_allkinds = send_allkinds;
  gg.hook2->send_allgates = send_allgates;
  gg.hook2->addlabelat = addlabelat;
  gg.hook2->addboxat = addboxat;
  gg.hook2->plainxform = plainxformcoords;
  gg.hook2->findattrnum2 = findattrnum2;
  gg.hook2->findattrname2 = findattrname2;
  gg.hook2->showpinname = showpinname;
}





 
struct LOC_initialize {
  short j;
  na_strlist *loadgates, *logmenu;
  char  cmdbuf[81];
  cnfrec *cnflast;
} ;

static  void  beginfatal(LINK)
struct LOC_initialize *LINK;
{
  if (P_escapecode == -20)
    _Escape(P_escapecode);
  clearshowalpha();
  warning();
  nc_printf ("\n\n%c", 137 );
}

static  void  endfatal(LINK)
struct LOC_initialize *LINK;
{
 
   messageb("Program aborted.");
  _Escape(0);
}

static  void  addgatesfile(fn_, LINK)
char  *fn_;
struct LOC_initialize *LINK;
{
  char  fn[256];
  na_strlist *l1;

  strcpy(fn, fn_);
  newci_fixfname(fn, "gate", "");
  if (!locatefile(fn, LINK))
    *fn = '\0';
  if (*fn != '\0' && strlist_find(gatefilenames, fn) == ((void *)0) )
    l1 = strlist_append(&gatefilenames, fn);
}

static  void  sethomedirname(dir_, LINK)
char  *dir_;
struct LOC_initialize *LINK;
{
  char  dir[256], buf[256];

  strcpy(dir, dir_);
  strwordx(dir, buf);
  strcpy(gg.homedirname, buf);
  if (buf[strlen(buf) - 1] != ':' && buf[strlen(buf) - 1] != '/')
    strcat(gg.homedirname, "/");
}

static  void  removepath(name)
char  *name;
{
  char *cp = strrchr(name, '/');



  if (cp)
     strcpy(name, cp + 1);





}

static  void  readcnf(fn_, LINK)
char  *fn_;
struct LOC_initialize *LINK;
{
  char  fn[256];
  boolean flag;
  long cnflin;
  FILE *tx;
  char  txbuf[256], txarg[256], txarg2[256];
  boolean erasegates, eraseload, erasemenu;
  na_strlist *l1, *l2;
  log_tool *tp;
  cnfrec *cnfp;
  char  *TEMP;

  strcpy(fn, fn_);
  tx = ((void *)0) ;
  erasegates = 1 ;
  eraseload = 1 ;
  erasemenu = 1 ;
  flag = 0 ;
  if (!strcmp(fn, "*")) {
    strcpy(fn, P_argv[0]);
    removepath(fn);
    strcat(fn, ".cnf");
    if (!locatefile(fn, LINK)) {
      strcpy(fn, "log.cnf");
      if (!locatefile(fn, LINK))
	*fn = '\0';
    }
  } else {
    newci_fixfname(fn, "cnf", "");
    if (!locatefile(fn, LINK))
      *fn = '\0';
  }
  if (*fn != '\0') {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      if (tx != ((void *)0) )
	tx = freopen(fn, "r", tx);
      else
	tx = fopen(fn, "r");
      if (tx == ((void *)0) ) {
	P_escapecode = -10;
	P_ioresult = 10 ;
	goto _Ltry32;
      }
      flag = 1 ;
    __top_jb = __try_jb.next; } else { if (0) {  _Ltry32 : __top_jb = __try_jb.next; } ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
    } } while (0) ;
  }
  cnflin = 0;
  if (flag) {
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      while (!P_eof(tx)) {
	cnflin++;
	nc_fgets (txbuf, 256, tx);
	TEMP = strchr(txbuf, '\n');
	if (TEMP != ((void *)0) )
	  *TEMP = 0;
	strcomment(txbuf, "{}");
	getword(txbuf, LINK->cmdbuf);
	if (!strcmp(LINK->cmdbuf, "BOBCAT")) {
	  if (nc_gType() != 6 )
	    *txbuf = '\0';
	  getword(txbuf, LINK->cmdbuf);
	} else if (!strcmp(LINK->cmdbuf, "CHIPMUNK")) {
	  if (nc_gType() == 6 )
	    *txbuf = '\0';
	  getword(txbuf, LINK->cmdbuf);
	}
	if (!strcmp(LINK->cmdbuf, "LOG:"))
	  getword(txbuf, LINK->cmdbuf);
	strcpy(gg.func, LINK->cmdbuf);
	strcpy(gg.funcarg, txbuf);
	if (*LINK->cmdbuf != '\0') {
	  doimmedcnffunction();
	  docnffunction();
	}
	if (*LINK->cmdbuf == '\0' || strcmp(gg.func, LINK->cmdbuf))
	  continue;
	if (strends(LINK->cmdbuf, ":") && strlen(LINK->cmdbuf) > 1) {
	  if (*txbuf == '\0')
	    continue;
	  LINK->cmdbuf[strlen(LINK->cmdbuf) - 1] = '\0';
 

	  cnfp = (cnfrec *)((__MallocTemp__ = malloc(( sizeof(cnfrec) ) ? ( sizeof(cnfrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
          cnfp->next = ((void *)0) ;
	  if (LINK->cnflast == ((void *)0) )
	    cnfbase = cnfp;
	  else
	    LINK->cnflast->next = cnfp;
	  cnfp->next = ((void *)0) ;
	  strcpy(cnfp->tool, LINK->cmdbuf);
	  strcpy(cnfp->s, txbuf);
	  LINK->cnflast = cnfp;
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "INCLUDE")) {
	  do {
	    strwordx(txbuf, txarg);
	    if (*txarg != '\0')
	      readcnf(txarg, LINK);
	  } while (*txarg != '\0');
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "HOME")) {
	  sethomedirname(txbuf, LINK);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "GATES")) {
	  strwordx(txbuf, txarg);
	  if (!strcmp(txarg, "+"))
	    strwordx(txbuf, txarg);
	  else {
	    if (erasegates)
	      strlist_empty(&gatefilenames);
	  }
	  erasegates = 0 ;
	  while (*txarg != '\0') {
	    addgatesfile(txarg, LINK);
	    strwordx(txbuf, txarg);
	  }
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "HELP")) {
	  if (locatefile(txbuf, LINK))
	    strcpy(loghelpname, txbuf);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "NEWS")) {
	  if (locatefile(txbuf, LINK))
	    strcpy(lognewsname, txbuf);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "TABLET")) {
	  tabletaddr = getint(txbuf, tabletaddr);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "MENU")) {
	  getword(txbuf, txarg);
	  if (!strcmp(txarg, "+"))
	    getword(txbuf, txarg);
	  else {
	    if (erasemenu)
	      strlist_empty(&LINK->logmenu);
	  }
	  erasemenu = 0 ;
	  while (*txarg != '\0') {
	    l1 = strlist_append(&LINK->logmenu, txarg);
	    getword(txbuf, txarg);
	  }
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "GET") || !strcmp(LINK->cmdbuf, "LOAD")) {
	  getword(txbuf, txarg);
	  if (!strcmp(txarg, "+"))
	    getword(txbuf, txarg);
	  else {
	    if (eraseload)
	      strlist_empty(&LINK->loadgates);
	  }
	  eraseload = 0 ;
	  while (*txarg != '\0') {
	    l1 = strlist_append(&LINK->loadgates, txarg);
	    getword(txbuf, txarg);
	  }
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "GETGROUP")) {
	  getword(txbuf, txarg);
	  if (!strcmp(txarg, "+"))
	    getword(txbuf, txarg);
	  else {
	    if (eraseload)
	      strlist_empty(&LINK->loadgates);
	  }
	  eraseload = 0 ;
	  l1 = strlist_append(&LINK->loadgates, "");
	  l1->value = (na_long)((void *)0) ;
	  while (*txarg != '\0') {
	    l2 = strlist_append((na_strlistrec **)(&l1->value), txarg);
	    getword(txbuf, txarg);
	  }
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "TOOL")) {
	  getword(txbuf, txarg);
	  if (*txarg == '\0')
	    continue;
	  tp = gg.toolbase;
	  while (tp != ((void *)0)  && strcmp(tp->name, txarg))
	    tp = tp->next;
	  if (tp != ((void *)0) )
	    continue;
	  newtool(&tp, txarg);
	  strwordx(txbuf, txarg);
	  if (*txarg != '\0')
	    strcpy(tp->comment, txarg);
	  getword(txbuf, txarg);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "COMMAND")) {
	  getword(txbuf, txarg2);
	  if (*txarg2 == '\0')
	    continue;
	  do {
	    getword(txbuf, txarg);
	    if (*txarg != '\0') {
	      l1 = strlist_add(&commandlist, txarg);
	      *(char  **)((char  **)(&l1->value)) = my_strdup (txarg2);
	    }
	  } while (*txarg != '\0');
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "SIGNALS") || !strcmp(LINK->cmdbuf, "NODES")) {
	  LINK->j = getint(txbuf, 0L);
	  if (LINK->j < 1) {
	    P_escapecode = -1;
	    goto _Ltry33;
	  }
	  gg.maxsignal = LINK->j;
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "DO")) {
	  l2 = strlist_append(&thingstodo, gg.funcarg);
	  continue;
	}
	if (!strcmp(LINK->cmdbuf, "UNDO"))
	  strlist_empty(&thingstodo);
	else if (strcmp(LINK->cmdbuf, "CTOLERANCE") &&
		 strcmp(LINK->cmdbuf, "CLOCK") &&
		 strcmp(LINK->cmdbuf, "SCOPE") &&
		 strcmp(LINK->cmdbuf, "AUTO") &&
		 strcmp(LINK->cmdbuf, "POST") &&
		 strcmp(LINK->cmdbuf, "PRINTER") &&
		 strcmp(LINK->cmdbuf, "HELPIX") &&
		 strcmp(LINK->cmdbuf, "GATESIX") &&
		 strcmp(LINK->cmdbuf, "PLOTTER") &&
		 strcmp(LINK->cmdbuf, "SIMMODE")) {
	  P_escapecode = -1;
	  goto _Ltry33;
	}
      }
    __top_jb = __try_jb.next; } else { if (0) {  _Ltry33 : __top_jb = __try_jb.next; } ;
      if (P_escapecode == -20)
	_Escape(P_escapecode);
      if (P_escapecode != 0) {
	beginfatal(LINK);
	nc_printf ("Error in line %ld of configuration file \"%s\"\n", cnflin, fn);
	endfatal(LINK);
      }
    } } while (0) ;
  }
  if (tx != ((void *)0) )
    fclose(tx);

   
}





 
 
 
 
 
 
 

static  void  initialize()
{
  struct LOC_initialize V;
  newci_parserec swtab[10];
  short i, k, curgate;
  short gptr[15 ], ggroup[15 ], gsize[15 ];
  char  gname[15 ][9];
  na_strlist *l1, *l2;
  char  s[256];
  boolean flag;
  char  cnfname[256];
  nk_keytransinfo *keytrans;
  char  STR2[256], STR3[256];
  short FORLIM;
  nk_keytransinfo *WITH;
  log_sigrec *WITH1;




  strcpy(swtab[0].switch_, "cC");    
  swtab[0].kind = 'M';
  strcpy(swtab[1].switch_, "vV");    
  swtab[1].kind = 'B';
  strcpy(swtab[2].switch_, "zZ");    
  swtab[2].kind = 'S';
  strcpy(swtab[3].switch_, "dD");    
  swtab[3].kind = 'S';
  strcpy(swtab[4].switch_, "tT");    
  swtab[4].kind = 'S';
  strcpy(swtab[5].switch_, "hH");    
  swtab[5].kind = 'S';
  strcpy(swtab[6].switch_, "rR");    
  swtab[6].kind = 'M';

   

  strcpy(swtab[7].switch_, "xX");    
  swtab[7].kind = 'M';

  newci_parseswitch(swtab, 8L, V.cmdbuf);


  if (*V.cmdbuf != '\0') {
    if (*V.cmdbuf != '\0')
      nc_printf ("Unrecognized option:  -%s\n", V.cmdbuf);
      nc_printf (
      "\nUsage:  LOG [ -v ] [ -c cnffile ] [ -x X_display_name ] [ file ]\n");
    _Escape(0);
  }

    
    

  if (swtab[7].used > 0)
    {
       m_set_display_name(swtab[7].UU.s);
    }

  tabletaddr = 0;
  gg.curstamp = 0;
  initscreen2();
  initcolormap();
  libptr = 0;
  helpptr = 0;
  cursortype = normal;
  oldcursortype = normal;
  cursorflag = 0 ;
  setscale(0);
   

  curlistgroup = 0;
  messagepos = 2 ;
  resetmessages();
  gg.verbose = 1 ;
  tempverbose = 0 ;
  gg.glowmode = 0 ;
  gg.probemode = 0 ;
  gg.textinvisible = 0 ;
  gg.invisible = 0 ;
  gg.pwrflag = 1 ;
  gg.busyflag = 1 ;
  snapflag = 0 ;
  glowsolder = 1 ;
  gg.quiet = 0 ;
  gg.dotsvisible = 1 ;
  avoidrabbits = 1 ;
  pushedbackkey = '\0';
  conflictenbl = 1 ;
  conflictstop = 0 ;
  conflictdelay = 1;
  anyconflicts = 0 ;
  gg.actstr = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *gg.actstr = '\0';
  gg.maxsignal = 500 ;
  freenode = ((void *)0) ;
  freegate = ((void *)0) ;
  strlist_init(&histlbl);
  l2 = strlist_append(&histlbl, "Scope mode");
  l2 = strlist_append(&histlbl, "");
  l2 = strlist_append(&histlbl,
      "VContinuous,On Reset,Triggered,Manual:Type of trigger:");
  l2 = strlist_append(&histlbl, "Triggered;C(none):Trigger signal:");
  l2 = strlist_append(&histlbl, "On Reset;OUs:Time to start trigger:");
  l2 = strlist_append(&histlbl, "On Reset;OUs:Time to stop trigger:");
  l2 = strlist_append(&histlbl,
		      "VTrigger off,Simulation off:Action when memory full:");
  l2 = strlist_append(&histlbl, "");
  l2 = strlist_append(&histlbl, "Us:Minimum timestep:");
  l2 = strlist_append(&histlbl, "Us:Maximum timestep:");
  l2 = strlist_append(&histlbl, "I100000:Timestep memory limit:");
  l2 = strlist_append(&histlbl, "I:Timestep memory size:");
  l2 = strlist_append(&histlbl, "");
  l2 = strlist_append(&histlbl, "BY:Align signal names?");
  l2 = strlist_append(&histlbl, "");
  l2 = strlist_append(&histlbl, "Us,0:Time at left edge:");
  l2 = strlist_append(&histlbl, "Us:Current time:");
  l2 = strlist_append(&histlbl, "");
  l2 = strlist_append(&histlbl, "Us,100us:Seconds per division:");
  l2 = strlist_append(&histlbl, "Us:Current timestep:");
  parselabel(&histlbl, &histnumattrs, &histkattr);
  newattrs(&histgattr, histnumattrs, histkattr);
  gg.singlestepcount = 0;
  steppingoff = 0 ;
  vlsi = 0 ;
  gg.dumpopen = 0 ;
  gg.dumpfile = &dumpfile;
  dumpfname = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *dumpfname = '\0';
  gg.traceopen = 0 ;
  gg.tracefile = &tracefile;
  tracefname = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *tracefname = '\0';
  if (swtab[3].used > 0)
    strcpy(dumpfname, swtab[3].UU.s);
  if (swtab[4].used > 0)
    strcpy(tracefname, swtab[4].UU.s);
  else if (swtab[2].used > 0)
    strcpy(tracefname, swtab[2].UU.s);
  if (*tracefname != '\0')
    newci_fixfname(tracefname, "text", "");
  gg.traceflag = (swtab[2].used > 0);
  if (gg.traceflag)
    tracemessage("Trace mode ON");
  gg.homedirname = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  if (swtab[5].used > 0) {
    if (*swtab[5].UU.s == '\0')
      sethomedirname("", &V);
    else
      sethomedirname(swtab[5].UU.s, &V);
  } else
    sethomedirname("~/log", &V);
  cursorhide = 0 ;
  initmenus();
  gg.funcarg = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *gg.funcarg = '\0';
  gg.host = log_host_log;
  gg.toolbase = ((void *)0) ;
  inithooks();
  gg.rndseed = timers_sysclock();
  gg.simstate = simst_null;
  gg.simstatetool = ((void *)0) ;
  for (i = 0; i < 15 ; i++)
    gatesname[i] = ((void *)0) ;
  for (i = 0; i <= 8; i++)
    librgroupnames[i] = ((void *)0) ;
  loghelpname = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  strcpy(loghelpname, "loghelp");
  lognewsname = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  strcpy(lognewsname, "lognews");
  gg.fastmin = 2 ;
  gg.fastmax = 50 ;
  gg.fastrate = 35 ;
  gg.fastspeed = gg.fastmin;
  stamp(&gg.labelstamp);
  stamp(&gg.boxstamp);
  stamp(&gg.msgstamp);
  stamp(&gg.refrstamp);
  stamp(&gg.nattrstamp);
  stamp(&gg.gattrstamp);
  stamp(&gg.sigstamp);
  stamp(&gg.loadstamp);
  stamp(&gg.colorstamp);
  stamp(&gg.resetstamp);
  stamp(&gg.markerstamp);
  strlist_init(&V.loadgates);
  strlist_init(&V.logmenu);
  strlist_init(&gatefilenames);
  cnfbase = ((void *)0) ;
  V.cnflast = ((void *)0) ;
  colorbase = ((void *)0) ;
  macrobase = ((void *)0) ;
  initmacros();
  librstrs = ((void *)0) ;
  commandlist = ((void *)0) ;
  thingstodo = ((void *)0) ;
  nexttodo = ((void *)0) ;
  messages = ((void *)0) ;
  *cnfname = '\0';
  flag = 0 ;
  if (swtab[0].used > 0)
    strcpy(cnfname, swtab[0].UU.s);
  if (*cnfname == '\0' && swtab[1].used == 0)
    strcpy(cnfname, "*");
  if (*cnfname != '\0')
    readcnf(cnfname, &V);
  initcolors();
  gg.color.curbaseline = gg.color.baseline;
  gg.baselinecolor = gg.color.baseline;
  newci_fixfname(loghelpname, "help", "");
  newci_fixfname(lognewsname, "text", "");
  displaynews = (*lognewsname != '\0');
  if (P_argc > 1) {
    sprintf(STR2, "LOAD %s", P_argv[1]);
    l2 = strlist_append(&thingstodo, STR2);
    FORLIM = P_argc;
    for (i = 2; i < FORLIM; i++) {
      sprintf(STR3, "PAGE %d", i);
      l2 = strlist_append(&thingstodo, STR3);
      sprintf(STR3, "LOAD %s", P_argv[i]);
      l2 = strlist_append(&thingstodo, STR3);
    }
    displaynews = 0 ;
  }
  if (swtab[6].used > 0 && *swtab[6].UU.s != '\0') {
    sprintf(STR3, "TOOL %s", swtab[6].UU.s);
    l2 = strlist_append(&thingstodo, STR3);
    displaynews = 0 ;
    justonecommand = 1 ;
  } else
    justonecommand = 0 ;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    m_init_pen(tabletaddr);
  __top_jb = __try_jb.next; } else { ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
    beginfatal(&V);
    nc_printf ("Can't find graphics tablet!\n");
    endfatal(&V);
  } } while (0) ;
  if (gatefilenames == ((void *)0) )
    addgatesfile("log", &V);
  idxsize = 0;
  for (k = 0; k < 15 ; k++) {
    *gname[k] = '\0';
    if (gatefilenames != ((void *)0) ) {
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	gatesname[k] = (char  *)((__MallocTemp__ = malloc(( 256 ) ? ( 256 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	strcpy(gatesname[k], gatefilenames->s);
	gatefilenames = gatefilenames->next;
	libf1[k] = (filerecfilerec *)((__MallocTemp__ = malloc(( sizeof(filerecfilerec) ) ? ( sizeof(filerecfilerec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
	libf1[k]->f = ((void *)0) ;
	newci_fixfname(gatesname[k], "gate", "");
	flag = 0 ;
	do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	  if (libf1[k]->f != ((void *)0) )

  	    libf1[k]->f = freopen(gatesname[k], "rb", libf1[k]->f);



	  else

  	    libf1[k]->f = fopen(gatesname[k], "rb");



	  if (libf1[k]->f == ((void *)0) ) {
	    P_escapecode = -10;
	    P_ioresult = 10 ;
	    goto _Ltry36;
	  }
	  (  libf1[k]->f_BFLAGS   = 1) ;
	  flag = 1 ;
	__top_jb = __try_jb.next; } else { if (0) {  _Ltry36 : __top_jb = __try_jb.next; } ;
	  if (P_escapecode == -20)
	    goto _Ltry35;
	  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	    if (libf1[k]->f != ((void *)0) ) {
	      sprintf(STR2, "%s/%s", GetChipmunkPath("LOGLIB", log ),
		      gatesname[k]);

  	      libf1[k]->f = freopen(STR2, "rb", libf1[k]->f);



	    } else {
	      sprintf(STR2, "%s/%s", GetChipmunkPath("LOGLIB", log ),
		      gatesname[k]);

  	      libf1[k]->f = fopen(STR2, "rb");



	    }
	    if (libf1[k]->f == ((void *)0) ) {
	      P_escapecode = -10;
	      P_ioresult = 10 ;
	      goto _Ltry37;
	    }
	    (  libf1[k]->f_BFLAGS   = 1) ;
	    sprintf(STR2, "%s/%s", GetChipmunkPath("LOGLIB", log ),
		    gatesname[k]);
	    strcpy(gatesname[k], STR2);
	    flag = 1 ;
	  __top_jb = __try_jb.next; } else { if (0) {  _Ltry37 : __top_jb = __try_jb.next; } ;
	    if (P_escapecode == -20)
	      goto _Ltry35;
	  } } while (0) ;
	} } while (0) ;
	if (flag) {
	  if (libf1[k]->f != ((void *)0) )
	    rewind(libf1[k]->f);
	  else
	    libf1[k]->f = tmpfile();
	  if (libf1[k]->f == ((void *)0) ) {
	    P_escapecode = -10;
	    P_ioresult = 10 ;
	    goto _Ltry35;
	  }
	  (  libf1[k]->f_BFLAGS   = 0) ;
	  fseek(libf1[k]->f, 0L, 0);
	  (  libf1[k]->f_BFLAGS   = 0) ;
	  (  libf1[k]->f_BFLAGS   == 1 ? fread(&   libf1[k]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[k]->f )) : (  libf1[k]->f_BFLAGS   = 1)) ;
	  gsize[k] = getshortsw(& (*((  libf1[k]->f_BFLAGS   == 1 && ((  libf1[k]->f_BFLAGS   = 2), fread(&   libf1[k]->f_BUFFER  , sizeof(  filerec ),1,( libf1[k]->f )))),	&   libf1[k]->f_BUFFER  )) .b[4]);
	  idxsize += gsize[k];
	  libfstart[k] = (*((  libf1[k]->f_BFLAGS   == 1 && ((  libf1[k]->f_BFLAGS   = 2), fread(&   libf1[k]->f_BUFFER  , sizeof(  filerec ),1,( libf1[k]->f )))),	&   libf1[k]->f_BUFFER  )) .b[6] + 1;
	  gptr[k] = 0;
	} else {
	  (free((Anyptr)( libf1[k] )), ( libf1[k] )= ((void *)0) ) ;
	  gatesname[k] = ((void *)0) ;
	}
      __top_jb = __try_jb.next; } else { if (0) {  _Ltry35 : __top_jb = __try_jb.next; } ;
 
	if (P_escapecode == -20)
	  _Escape(P_escapecode);
	beginfatal(&V);
	nc_printf ("Can't open gates file \"%s\"\n", gatesname[k]);
	endfatal(&V);
      } } while (0) ;
    }
  }
  if (idxsize == 0) {
    beginfatal(&V);
    nc_printf ("No gates files!\n");
    endfatal(&V);
  }
  index_ = (char (*)[9])((__MallocTemp__ = malloc(( idxsize * 10L ) ? ( idxsize * 10L ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
 
  indexfile = (uchar *)((__MallocTemp__ = malloc(( idxsize ) ? ( idxsize ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  indexoffset = (short *)((__MallocTemp__ = malloc(( idxsize * sizeof(short) ) ? ( idxsize * sizeof(short) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
 
  indexgroup = (uchar *)((__MallocTemp__ = malloc(( idxsize ) ? ( idxsize ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
 
  loadedgates = (uchar *)((__MallocTemp__ = malloc(( (idxsize + 9L) / 8 ) ? ( (idxsize + 9L) / 8 ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = idxsize;
  for (i = 0; i < FORLIM; i++)
    (( loadedgates )[(  i )>>(  3 )-(  0 )] &= ~( ((1<<(1<<(  0 )))-1) << (((~(  i ))&((1<<(  3 )-(  0 ))-1)) << (  0 ))) ) ;
  curgate = 1;
  do {
    k = 0;
    strcpy(s, "\177");
    for (i = 0; i < 15 ; i++) {
      if (gatesname[i] != ((void *)0)  && *gname[i] == '\0' && gptr[i] < gsize[i]) {
	do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	  gptr[i]++;
	  if ((gptr[i] & 31) == 0)
	    (  libf1[i]->f_BFLAGS   == 1 ? fread(&   libf1[i]->f_BUFFER  ,sizeof(  filerec ),1,( libf1[i]->f )) : (  libf1[i]->f_BFLAGS   = 1)) ;
	  strcpy(gname[i], "        ");
	  strmove(8, (*((  libf1[i]->f_BFLAGS   == 1 && ((  libf1[i]->f_BFLAGS   = 2), fread(&   libf1[i]->f_BUFFER  , sizeof(  filerec ),1,( libf1[i]->f )))),	&   libf1[i]->f_BUFFER  )) .ix[gptr[i] & 31], 1,
		  gname[i], 1);
	  ggroup[i] = 0;
	  for (V.j = 1; V.j <= 8; V.j++) {
	    if ((gname[i][V.j - 1] & (~127)) != 0) {
 
	      ggroup[i] = V.j;
	      gname[i][V.j - 1] = (char )((uchar)gname[i][V.j - 1] - 128);
	    }
	  }
	__top_jb = __try_jb.next; } else { ;
	  if (P_escapecode == -20)
	    _Escape(P_escapecode);
	  beginfatal(&V);
	  nc_printf ("Can't read gates file \"%s\"\n", gatesname[i]);
	  endfatal(&V);
	} } while (0) ;
      }
      if (strcmp(gname[i], s) < 0 && *gname[i] != '\0') {
	strcpy(s, gname[i]);
	k = i + 1;
      }
    }
    indexfile[curgate - 1] = k;
    indexoffset[curgate - 1] = gptr[k - 1];
    indexgroup[curgate - 1] = ggroup[k - 1];
    strcpy(index_[curgate - 1], strrtrim(strcpy(STR3, s)));
    for (i = 1; i <= 15 ; i++) {
      if (!strcmp(gname[i - 1], s)) {
	*gname[i - 1] = '\0';
	if (i != k)
	  idxsize--;
      }
    }
    curgate++;
  } while (curgate <= idxsize);
  if (m_across >= 1023) {
    maxkinds = P_imin2(280L, (long)255 );
    catwidth = 20;
  } else {
    maxkinds = P_imin2(70L, (long)255 );
    catwidth = 10;
  }
  catboxes = ((void *)0) ;
  FORLIM = maxkinds;
  for (i = 0; i < FORLIM; i++)
    kind[i] = ((void *)0) ;
  m_graphics_on();
  clearalpha();
  gg.curpage = 1;
  gg.showpage = 1;
  realcurpage = 1;
  setvlsimode(vlsi);
  labelcaps = 1 ;
  signalcaps = 1 ;
  nk_settransarray(1 , &keytrans);
  curkeytrans = (nk_keytransinfo *)((__MallocTemp__ = malloc(( sizeof(nk_keytransinfo) ) ? ( sizeof(nk_keytransinfo) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  *curkeytrans = *keytrans;
  nk_settransarray((-1) , &curkeytrans);
  WITH = curkeytrans;
  for (i = 25; i <= 125; i++) {
    if (WITH->matrix[i - (-2) ][- 0 ].c == 154)    
      WITH->matrix[i - (-2) ][- 0 ].c = 24;
    else if (islower(WITH->matrix[i - (-2) ][- 0 ].c)) {
      WITH->matrix[i - (-2) ][2 - 0 ].c =
	WITH->matrix[i - (-2) ][- 0 ].c + 71;
      WITH->matrix[i - (-2) ][3 - 0 ].c =
	WITH->matrix[i - (-2) ][- 0 ].c + 117;
      WITH->matrix[i - (-2) ][2 - 0 ].k = 1 ;
      WITH->matrix[i - (-2) ][3 - 0 ].k = 1 ;
    } else if (isdigit(WITH->matrix[i - (-2) ][- 0 ].c)) {
      WITH->matrix[i - (-2) ][2 - 0 ].c =
	WITH->matrix[i - (-2) ][- 0 ].c + 192;
      WITH->matrix[i - (-2) ][3 - 0 ].c =
	WITH->matrix[i - (-2) ][- 0 ].c + 192;
      WITH->matrix[i - (-2) ][2 - 0 ].k = 1 ;
      WITH->matrix[i - (-2) ][3 - 0 ].k = 1 ;
    }
    if (WITH->matrix[i - (-2) ][1 - 0 ].c == 157)
	   
	    WITH->matrix[i - (-2) ][1 - 0 ].c = 25;
    else if (WITH->matrix[i - (-2) ][1 - 0 ].c == 158)
      WITH->matrix[i - (-2) ][1 - 0 ].c = 26;
  }
  for (i = 60; i <= 79; i++) {
    WITH->matrix[i - (-2) ][1 - 0 ].c = i + 134;
    WITH->matrix[i - (-2) ][2 - 0 ].c = i + 68;
    WITH->matrix[i - (-2) ][3 - 0 ].c = i + 88;
    WITH->matrix[i - (-2) ][1 - 0 ].k = 1 ;
    WITH->matrix[i - (-2) ][2 - 0 ].k = 1 ;
    WITH->matrix[i - (-2) ][3 - 0 ].k = 1 ;
  }
  WITH->matrix[46 - (-2) ][- 0 ].c = 7;
  WITH->matrix[46 - (-2) ][- 0 ].k = 1 ;
 
  gg.refrflag = 1 ;
  gg.markers = 0 ;
  gg.numpages = 1;
  *gg.func = '\0';
  *gg.genfunc = '\0';
  gg.xoff = 16384 ;
  gg.yoff = 16384 ;
  xoffp[0] = 16384 ;
  yoffp[0] = 16384 ;
  xoff0 = 0;
  yoff0 = 0;
  gatecount[0] = 0;
  gg.gbase[0] = ((void *)0) ;
  gg.sbase[0] = ((void *)0) ;
  gg.hwbase[0] = ((void *)0) ;
  gg.vwbase[0] = ((void *)0) ;
  gg.lbase[0] = ((void *)0) ;
  gg.bbase[0] = ((void *)0) ;
  gg.nbase = ((void *)0) ;
  gg.pagechanged[0] = 0 ;
  stamp(gg.pagestamp);
  gg.pageregions[0] = ((void *)0) ;
  curfilename[0] = ((void *)0) ;
  initbuf(&copybuf);
  nodeconflictbase = ((void *)0) ;
  gateconflictbase = ((void *)0) ;
  gg.movinghw = ((void *)0) ;
  gg.movingvw = ((void *)0) ;
  gg.signaltab = (log_sigrec *)((__MallocTemp__ = malloc(( gg.maxsignal * sizeof(log_sigrec) ) ? ( gg.maxsignal * sizeof(log_sigrec) ) : 1)) ? __MallocTemp__ : (Anyptr)_OutMem()) ;
  FORLIM = gg.maxsignal;
  for (i = 0; i < FORLIM; i++) {
    WITH1 = &gg.signaltab[i];
    WITH1->name = ((void *)0) ;
    WITH1->np = ((void *)0) ;
  }
  gg.lastsignal = 0;
  gg.hnbase = ((void *)0) ;
  hncount = 0;
  hnocount = 0;
  gg.htbase = ((void *)0) ;
  gg.htlast = ((void *)0) ;
  htcount = 0;
  histtrig = 0;
  gg.histactive = 0 ;
  histonscreen = 0 ;
  histgridmode = 2;
  histgridwhich = 0;
  histgridhn = ((void *)0) ;
  gg.probenode = ((void *)0) ;
  gg.probegate = ((void *)0) ;
  gg.probepin = 0;
  gg.probesimtype = ((void *)0) ;
  gg.probekind = ((void *)0) ;
  probeflag = 0 ;
  briefprobe = 0 ;
  rabstate = 0;
  rabbits = 0 ;
  rabflag = 0 ;
  firsttraining = 1 ;
  training = 0 ;
  cureditmode = 1;
  *modename = '\0';
  modeflag = 0 ;
  modetime = 0;
  modeprobekind = ((void *)0) ;
  gg.time = 0.0;
  gg.prevtimestep = 0.0;
  reportnowait = 0 ;
  gg.startpoint = 0 ;
  simtype_ignore = findtool("0");
  if (!simtype_ignore->ready)
    report(10, "INITIALIZE" );
  simtype_common = findtool("1");
  if (!simtype_common->ready)
    report(11, "INITIALIZE" );
  i = 1;
  l1 = V.loadgates;
  while (l1 != ((void *)0)  && i != 0) {
    if (*l1->s == '\0')
      getgategroup((na_strlistrec *)l1->value);
    else
      i = readlibrary(l1->s);
    l1 = l1->next;
  }
  strlist_empty(&V.loadgates);
  l1 = V.logmenu;
  FORLIM = kindgroupsize;
  for (i = 0; i < FORLIM; i++) {
    kindgroup[i] = 0;
    kindsig[i] = 0;
    kindattr[i] = ((void *)0) ;
    if (l1 != ((void *)0) ) {
      kindgroup[i] = readlibrary(l1->s);
      l1 = l1->next;
    }
  }
  strlist_empty(&V.logmenu);
  refrscreen();
  clearalpha();

   
}





static  void  shownews()
{
  FILE *f;
  char  s[256];
  char  *TEMP;

  f = ((void *)0) ;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    if (f != ((void *)0) )
      f = freopen(lognewsname, "r", f);
    else
      f = fopen(lognewsname, "r");
    if (f == ((void *)0) ) {
      P_escapecode = -10;
      P_ioresult = 10 ;
      goto _Ltry39;
    }
    clearalpha();
    while (nc_fgets (s, 256, f) != ((void *)0) ) {
      TEMP = strchr(s, '\n');
      if (TEMP != ((void *)0) )
	*TEMP = 0;
      nc_puts (s);
    }
    m_alpha_on();
    noblink();
  __top_jb = __try_jb.next; } else { if (0) {  _Ltry39 : __top_jb = __try_jb.next; } ;
    if (P_escapecode == -20)
      _Escape(P_escapecode);
  } } while (0) ;
  if (f != ((void *)0) )
    fclose(f);
}




 
 
 
 
 
 
 
 
 

void logmain(argc, argv)
int argc;
char  *argv[];
{
  long FORLIM;
  char  STR1[81];

  nc_text_in_window = 1;  
  PASCAL_MAIN(argc, argv);
  tracefile = ((void *)0) ;
  dumpfile = ((void *)0) ;
  newci_markprogram(&programmark);    
  gg.initdone = 0 ;
  entrycapslock = nk_capslock;
  nk_settransarray(0 , &curkeytrans);
  gg.traceopen = 0 ;
  gg.dumpopen = 0 ;
  gg.runstamp = timers_sysclock();
  excpline = -1;
  for (temp1 = 1; temp1 <= 15 ; temp1++)
    libf1[temp1 - 1] = ((void *)0) ;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    initialize();


    nc_printf ("\210\f Starting\201\210 LOG\f\200");

    do {
      gg.initdone = 1 ;
      gg.fastspeed = gg.fastmin;
      do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	do {
	  excpline = -1;
	  tempverbose = 0 ;
	  suppressdots = 0 ;
	  if (justonecommand && thingstodo == ((void *)0) ) {
	    P_escapecode = 20;
	    goto _Ltry41;
	  }
	  if (gg.showpage <= 0)
	    refrscreen();
	  m_graphics_on();
	  nc_cursor_off();
	  while (messages != ((void *)0) ) {
	    switch ((long)messages->value) {

	    case 0:
	      message(messages->s);
	      break;

	    case 1:
	      vmessage(messages->s);
	      break;
	    }
	    strlist_delete(&messages, messages);
	  }
	  if (gg.startpoint)
	    crosshair(gg.posx, gg.posy);
	  else
	    nocrosshair();
	  gg.stillnear = 1 ;
	  rabtime = timers_sysclock();
	  if (displaynews)
	    shownews();
	  if (*gg.func == '\0') {
	    do {
	      if (refrtimer == 0 && !gg.startpoint) {
		refresh();
		gg.refrflag = 1 ;
	      }
	      if (refrtimer > 0) {
		if (gg.t.moving)
		  refrtimer = refrtimer0;
		else
		  refrtimer--;
	      }
	      if (gg.startpoint || cursortype == grid || refrtimer > 0)
		m_tracking(1L);
	      else if (gg.probemode)
		m_tracking(2L);
	      else
		m_tracking(0L);
	      pass();
	      trykbdscroll();
	      pen();
	      if (!gg.stillnear) {
		gg.startpoint = 0 ;
		gg.stillnear = 1 ;
		nocrosshair();
	      }
	      if (gg.t.near_) {
		if (rabflag)
		  norabbits();
		rabtime = timers_sysclock();
	      }
	      if (timers_sysclock() - rabtime > 30000  && !avoidrabbits)
		addrabbit();
	    } while (!(gg.t.dn || *gg.func != '\0'));
	  }
	  if (displaynews) {
	    clearalpha();
	    displaynews = 0 ;
	  }
	  if (rabflag)
	    norabbits();
	  nocrosshair();
	  clipoff();
	  if (*gg.func != '\0') {
	    commandfound = 0 ;
	    dofunction();
	    if (!commandfound) {
	      beginerror();
	      nc_printf ("Can't understand function %s\n", gg.func);
	      enderror();
	      clearfunc();
	    }
	  } else if (gg.incircuit) {
	    pass();
	    clipoff();
	    gg.oldx = gg.posx;
	    gg.oldy = gg.posy;
	    ospointflag = gg.startpoint;
	    gg.posx = gg.gridx;
	    gg.posy = gg.gridy;
	    gg.startpoint = 1 ;
	    if (!ospointflag && !justtap() && !gg.invisible) {
	      if (gg.probemode)
		yardstick();
	      else {
		moveobject();
		gg.movinghw = ((void *)0) ;
		gg.movingvw = ((void *)0) ;
	      }
	    } else {
	      closergate(gg.posx, gg.posy);
	      if (gg.nearlabel != ((void *)0)  && !gg.invisible && !gg.textinvisible) {
		editlabel(gg.nearlabel);
		gg.startpoint = 0 ;
	      } else if (!ospointflag && gg.neargate != ((void *)0) ) {
		if (gg.probemode) {
		  configgate(gg.neargate);
		  gg.startpoint = 0 ;
		} else {
		  touchgate(gg.neargate);
		  gg.startpoint = 0 ;
		}
	      } else if (!ospointflag) {
		closerwire(gg.posx, gg.posy);
		if (gg.probemode) {
		  if (gg.nearhw != ((void *)0) )
		    confignode(gg.nearhw->node, "(Node)");
		  else if (gg.nearvw != ((void *)0) )
		    confignode(gg.nearvw->node, "(Node)");
		  gg.startpoint = 0 ;
		} else if (gg.nearhw != ((void *)0)  && gg.nearvw != ((void *)0)  &&
			   gg.nearhw->x1 != gg.posx &&
			   gg.nearhw->x2 != gg.posx &&
			   gg.nearvw->y1 != gg.posy &&
			   gg.nearvw->y2 != gg.posy) {
		  if (findsolder(gg.posx, gg.posy) != ((void *)0) ) {
		    unsoldernear();
		    pen();    
		    gg.startpoint = 0 ;
		  } else if (!vlsi || gg.nearhw->wcolr == 4  ||
			     gg.nearvw->wcolr == 4 ) {
		    soldernear();
		    gg.startpoint = 0 ;
		  }
		}
	      } else {
		if (hvline(gg.oldx, gg.oldy, &gg.posx, &gg.posy)) {
		  if (gg.posx != gg.oldx)
		    addhwire(gg.posx, gg.oldx, gg.posy, curwcolor);
		  if (gg.posy != gg.oldy)
		    addvwire(gg.posx, gg.oldy, gg.posy, curwcolor);
		}
	      }
	      if (gg.invisible || gg.probemode)
		gg.startpoint = 0 ;
	    }
	  } else if (inbox((int)(1  - 4), line1 - 5, 34, 20))
	    popupmenu(1);
	  else if (inbox((int)(1  - 4), line2 - 5, 34, 20))
	    assertfunc("HELP");
	  else if (inbox((int)(48  - 4), line1 - 5, 34, 20))
	    popupmenu(2);
	  else if (inbox((int)(48  - 4), line2 - 5, 34, 20))
	    assertfunc("CAT");
	  else if (inbox((int)(across + (-69)  - 4), line1 - 5, 34, 20))
	    popupmenu(3);
	  else if (inbox((int)(across + (-27)  - 4), line1 - 5, 34, 20))
	    popupmenu(4);
	  else if (inbox((int)(across + (-27)  - 4), line2 - 5, 34, 20))
	    assertfunc("TAPMODE");
	  else {
	    if (kindgroupleft <= gg.t.x && gg.t.x < kindgroupright &&
		gg.t.y < down) {
	      temp1 = (gg.t.x - kindgroupleft) / (25  * 2)  + 1;
	      if (gg.probemode)
		configkind((int)temp1);
	      else if (justtap())
		flipkind();
	      else if (!gg.invisible && !gg.probemode) {
		if (addgate(kindgroup[temp1 - 1], kindsig[temp1 - 1],
			    kindattr[temp1 - 1]))
		  nextkindsig((int)temp1);
	      }
	    }
	    gg.startpoint = 0 ;
	  }
 
	} while (! 0  );
      __top_jb = __try_jb.next; } else { if (0) {  _Ltry41 : __top_jb = __try_jb.next; } ;
	gg.curpage = realcurpage;
	*gg.func = '\0';
	if (excpline == -1)
	  excpline = EXCP_LINE;
	if (P_escapecode == 20) {
	  working();
	  P_escapecode = -20;
	  goto _Ltry40;
	}
	if (P_escapecode != -20)
	  goto _Ltry40;
	clearshowalpha();
	nc_printf (
	  "\n\n%c%cPress CLR I/O again to exit, any other key to continue.%c\n\n",
	  137 , 128 , 136 );
	nk_keybufclear();
	waitforkey();
	m_graphics_on();
	clearalpha();
      } } while (0) ;
      refrscreen();
    } while (! 0  );
  __top_jb = __try_jb.next; } else { if (0) {  _Ltry40 : __top_jb = __try_jb.next; } ;
    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
      temp1 = P_ioresult;
      temp2 = P_escapecode;
      if (excpline == -1)
	excpline = EXCP_LINE;
      for (temp4 = 1; temp4 <= 15 ; temp4++) {
	if (libf1[temp4 - 1] != ((void *)0) ) {
	  if (libf1[temp4 - 1]->f != ((void *)0) )
	    fclose(libf1[temp4 - 1]->f);
	  libf1[temp4 - 1]->f = ((void *)0) ;
	}
      }
      nk_setcapslock(entrycapslock);
      if (temp2 == 0)
	showalpha();
      else if (temp2 == -20 && timers_sysclock() < watchdog + 500 ) {
	clearshowalpha();
	nc_printf ("%c%c\n\n", 136 , 128 );
      } else {
	clearshowalpha();
	nc_printf ("\n\n%c%cUnexpected runtime error%c%c\n\n",
	       137 , 132 , 128 , 136 );
	nc_printf ("    Escapecode =  %ld\n", temp2);
	if (temp2 == -10)
	  nc_printf ("    Ioresult   =  %ld = %s\n",
		 temp1, ioresult_message(STR1, temp1));
	if (excpline != -1)
	  nc_printf ("    Line num   =  %ld\n", excpline);
	nc_printf ("\n Probable cause:  ");
	switch (-temp2) {

	case 2:
	  nc_printf ("Not enough memory\n");
	  break;

	case 4:
	case 5:
	case 6:
	case 7:
	case 15:
	case 16:
	case 17:
	case 18:
	case 19:
	  nc_printf ("Arithmetic overflow\n");
	  break;

	case 20:
	  nc_printf ("Unexpected user termination\n");
	  break;

	case 10:
	  nc_printf ("I/O problem\n");
	  break;

	case 26:
	  nc_printf ("Low-level I/O\n");
	  break;

	default:
	  nc_putchar ('\n');
	  misc_printerror(temp2, temp1);
	  break;
	}
	nc_putchar ('\n');
	warning();
	nk_keybufclear();
	if (gg.initdone) {
	  nc_printf ("Want debugging printout? ");
	  do {
	    tempch = m_inkey ();
	  } while (tempch != 'n' && tempch != 'N' && tempch != 'y' &&
		   tempch != 'Y');
	  nc_printf ("%c\n", tempch);
	  if (tempch == 'y' || tempch == 'Y') {
	    do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
	      gg.traceflag = 1 ;
	      tracemessage("");
	      nc_fprintf (tracefile, "ESCAPECODE %ld\n", temp2);
	      nc_fprintf (tracefile, "IORESULT   %ld\n", temp1);
	      nc_fprintf (tracefile, "LINE       %ld\n\n", excpline);
	      nc_fprintf (tracefile, "Current page: %ld\n", gg.curpage);
	      dumpnodes();
	    __top_jb = __try_jb.next; } else { ;
	      nc_printf ("Debugging printout failed.\n");
	    } } while (0) ;
	  }
	  nc_putchar ('\n');
	}
	FORLIM = gg.numpages;
	for (temp1 = 1; temp1 <= FORLIM; temp1++) {
	  nc_printf ("Try to save page %ld? ", temp1);
	  do {
	    tempch = m_inkey ();
	  } while (tempch != 'n' && tempch != 'N' && tempch != 'y' &&
		   tempch != 'Y');
	  nc_printf ("%c\n", tempch);
	  if (tempch == 'y' || tempch == 'Y')
	    emergencysave((int)temp1);
	}
      }
    __top_jb = __try_jb.next; } else { ;
      nc_printf ("Error %d in outer TRY-RECOVER\n", P_escapecode);
    } } while (0) ;
  } } while (0) ;
  do { __p2c_jmp_buf __try_jb; __try_jb.next = __top_jb; if (! _setjmp( (__top_jb = &__try_jb)->jbuf ) ) { ;
    closetools();
  __top_jb = __try_jb.next; } else { ;
    ;
  } } while (0) ;
  closedumpfiles();
  newci_releaseprogram(&programmark);    
  nk_setcapslock(entrycapslock);
  nk_settransarray(1 , &curkeytrans);
  showalpha();
  if (dumpfile != ((void *)0) )
    fclose(dumpfile);
  if (tracefile != ((void *)0) )
    fclose(tracefile);
  exit(0);
}










 
