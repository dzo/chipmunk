#define MISC_G

#include <stdio.h>
#include <p2c/p2c.h>
#include <p2c/misc.h>



Void misc_upc(Char *s)
{
  for (; *s; s++)
    if (islower(*s))
      *s = toupper(*s);
}


void misc_getioerrmsg(s, i)
char *s;
long i;
{
  sprintf(s, "misc_getioerrmsg Error number %ld", i);
}

void misc_printerror(esc, ior)
long esc, ior;
{
}

/* Here are things OS/2 does not know about that anaLOG needs 

int getuid()
{
   return 1000;
}

int getgid()
{
   return 1000;
}
*/

char *cuserid(s)
char *s;
{
   char temp[256];

   strcpy(temp, "t");
   if (s == NULL) s = malloc(strlen(temp) + 1);
   if (strlen(s) >= strlen(temp)) strcpy(s, temp);
/* zfprintf(stdout, "cuserid: %s.\n", s); */
   return;
}
/*
long lrand48()
{
   return rand();
}
 
void srand48(seedv)
long seedv;
{
   srand( (int)seedv);
}

int _cfree(ptr)
char *ptr;
{
   printf("Call to _cfree.\n");
   free(ptr);
   return 0;
}

int link(path1, path2)
char *path1, *path2;
{
   printf("Call to link. %s to %s\n", path1, path2);
   rename(path1, path2);
   return 0;
}

int fork()
{
   printf("Call to fork.\n");
   return 0;
}

void _flsbuf(ptr, ch)
char *ptr;
char ch;
{
   printf("Call to _flsbuf.\n");
   return;
}

*/
#ifdef __bsdi__
char *cuserid(s)
char *s;
{
   char temp[256];

   strcpy(temp, getenv("USER"));
   if (s == NULL) s = malloc(strlen(temp) + 1);
   if (strlen(s) >= strlen(temp)) strcpy(s, temp);
/* zfprintf(stdout, "cuserid: %s.\n", s); */
   return;
}

long lrand48()
{
   return random();
}
 
void srand48(seedv)
long seedv;
{
   srandom( (int)seedv);
}

int cfree(ptr)
char *ptr;
{
   free(ptr);
   return 0;
}

int _cfree(ptr)
char *ptr;
{
   printf("Call to _cfree.\n");
   free(ptr);
   return 0;
}
#endif

#ifdef freebsd

int cfree(ptr)
char *ptr;
{
   free(ptr);
   return 0;
}

int _cfree(ptr)
char *ptr;
{
   printf("Call to _cfree.\n");
   free(ptr);
   return 0;
}

char *cuserid(s)
char *s;
{
   char temp[256];

   strcpy(temp, getenv("USER"));
   if (s == NULL) s = malloc(strlen(temp) + 1);
   if (strlen(s) >= strlen(temp)) strcpy(s, temp);
/* zfprintf(stdout, "cuserid: %s.\n", s); */
   return;
}

char *_cuserid(s)
char *s;
{
   char temp[256];

   strcpy(temp, getenv("USER"));
   if (s == NULL) s = malloc(strlen(temp) + 1);
   if (strlen(s) >= strlen(temp)) strcpy(s, temp);
/* zfprintf(stdout, "cuserid: %s.\n", s); */
   return;
}

#endif

#ifdef __MACHTEN__

char *cuserid(s)
char *s;
{
   char temp[256];

   strcpy(temp, getenv("USER"));
   if (s == NULL) s = malloc(strlen(temp) + 1);
   if (strlen(s) >= strlen(temp)) strcpy(s, temp);
/* zfprintf(stdout, "cuserid: %s.\n", s); */
   return;
}

long lrand48()
{
   return random();
}
 
void srand48(seedv)
long seedv;
{
   srandom( (int)seedv);
}

int cfree(ptr)
char *ptr;
{
   free(ptr);
   return 0;
}

int _cfree(ptr)
char *ptr;
{
   printf("Call to _cfree.\n");
   free(ptr);
   return 0;
}

#endif









