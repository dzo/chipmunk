/* Header for module regex, generated by p2c */
#ifndef REGEX_H
#define REGEX_H



#ifndef NEWASM_H
#include <p2c/newasm.h>
#endif



#ifdef REGEX_G
# define vextern
#else
# define vextern extern
#endif



#define re_defchars     "\\[]^-*?+$.|~(){}:=<>"
#define re_shellchars   "\\[]^-    ?       *  "



extern Void re_compile PP((Char *ex, Char *rex, Char *chars));
extern Void re_cicompile PP((Char *ex, Char *rex, Char *chars));
extern Void re_dump PP((Char *rex));
extern Void re_search PP((Char *s, Char *rex, long *pos, long *last, long dir));
extern boolean re_compare PP((Char *s, Char *rex));
extern Void re_replace PP((Char *s, Char *rex, Char *rpl, long *pos,
			   long *last));
extern boolean re_matchstr PP((Char *s, Char *pat));
extern boolean re_matchsubstr PP((Char *s, Char *pat, long start, long *last));
extern Void re_grepl PP((Char *s, Char *pat, Char *rpl));



#undef vextern

#endif /*REGEX_H*/

/* End. */

