#define NEWCRT_G
#define HIRES 

static long currentcolor=255l;
extern long cols[256];

#include <windows.h>
#include <wingdi.h>   // these are needed because I took them out of windows.h to make console
#include <winuser.h>  // apps compile a bit faster.

extern HDC hdc;
#include <stdio.h>
//#ifdef OS2
#include <stdarg.h>
//#else
//#include <varargs.h>
//#endif
#include <signal.h>

#include <p2c/p2c.h>
#include <p2c/newcrt.h>

#ifndef MYLIB_H
#include <p2c/mylib.h>
#endif

#ifndef SYSDEVS_H
#include <p2c/sysdevs.h>
#endif


#define TextW            80
#define TextH            24
#define WinX             2 
/*(1020-TextW*nc_fontwidth)  */
#define WinY             2 
/*(768-TextH*nc_fontheight-128) */
#define WinW             (TextW * nc_fontwidth)
#define WinH             (TextH * nc_fontheight)
#define WinBorder        1
#define WinDepth         4
#define DefaultFont      "8x13"
#define colormask        (4096 * 7)
#define attrmask         0x0f00

#if 0
#define NC_SCREEN(i)  (*({ int _i = (i);   \
			 if (_i < 0 || _i >= TextW*TextH)   \
			   _i=0, _i/=_i;   \
			 nc_screen + _i; }))
#else
#define NC_SCREEN(i)  (nc_screen[i])
#endif

static char *progname = "newcrt";

static nc_windowRec __nc_curWindow = {
  0, TextH, 0, TextW,
  TextH * TextW,
  0, 0, WinX, WinH, WinY, WinW, 0, WinW-1, 0, WinH-1,
  0, 0, 0, 0, 0,
  0, NULL,
};

static nc_windowRec __nc_mainWindow = {
  0, TextH, 0, TextW,
  TextH * TextW,
  0, 0, 0, WinH, 0, WinW, 0, WinW-1, 0, WinH-1,
  0, 0, 0, 0, 0,
  0, NULL,
};

nc_windowRec *nc_curWindow = &__nc_curWindow;
nc_windowRec *nc_mainWindow = &__nc_mainWindow;
nc_windowRec *nc_lastLineWindow = &__nc_mainWindow;
nc_windowRec *nc_statusWindow = &__nc_mainWindow;
nc_windowRec *nc_defaultWindow = &__nc_mainWindow;

static int colortrans[8] = {
  m_green, m_yellow, m_black, m_red, m_cyan, m_white, m_blue, m_purple,
};
static int ascent;

  long bgc=0l;
static int cursor_flag;

char *usrgeo, *defgeo = {"640x312+60+20"};
int jc_winX, jc_winY, x_pad, y_pad;
/*unsigned*/ int jc_winW, jc_winH;

static void WindowInitialize()
{
//GrClearScreen(0l);
}

void nc_makeWindow(w, ptop, pheight, pleft, pwidth)
nc_windowRec *w;
int ptop, pheight, pleft, pwidth;
{
//GrClearScreen(0l);   
}

void nc_initialize()
{
int i;
nc_screen=(nc_crtword *)malloc(TextW*TextH*sizeof(nc_crtword));
for(i=0;i<TextW*TextH;i++)
NC_SCREEN(i).i=32;
XPOS=YPOS=0;
nc_initialized=1;
currentcolor=cols[7];
nc_highlight=nc_green;
bgc=0;
/*
nc_fontwidth=8;
nc_fontheight=16;
*/
WindowInitialize();                 
}


void nc_setGraphics(on_or_off)
int on_or_off;
{
}

extern HFONT hfont,hfont1;

extern void CheckRefresh();
GrTextXY(int i,int j,char *s, int col,int bgcol) {
  SelectObject(hdc,hfont1);
  SetTextColor(hdc,currentcolor);
  SetBkColor(hdc,bgcol);
  SetBkMode(hdc,OPAQUE);
  TextOut(hdc,i,j,s,strlen(s));
  SelectObject(hdc,hfont);
}

void nc_putChar(x, y, c)
int x, y;
uchar c;
{
   char p[2];
   p[0]=c;
   p[1]=0;
   GrTextXY(WinX+x*nc_fontwidth,WinY+y*nc_fontheight,p,currentcolor,cols[0]);
//   SetTextColor(hdc,currentcolor);
//   SetBkColor(
//   TextOut(hdc,WinX+x*8,WinY+y*16,p,1);
}


extern void nc_fprintf(FILE *outfile,Char *fmt,...);


static void show_string(str)
char *str;
{
  unsigned char c;

  while (*str) {
    c = (unsigned char) *str;
    if ((c < ' ') || (c > 126))
      fprintf(stderr, "[%d]", c);
    else
      fprintf(stderr, "%c", c);
    str++;
  }
}

void nc_putChars(x, y, len, cp)      /* daveg, 10/6/89 */
int x, y, len;
char *cp;
{
  if (! nc_text_in_window) {
    fprintf(stderr, "Warning!  nc_putChars(%d,%d,%d,'", x, y, len);
    show_string(cp);
    fprintf(stderr, "') called\n");
    return;
  }
  if (! nc_initialized) 
    nc_initialize();
  CheckRefresh();
  if (x < 0) {
    cp -= x;
    len += x;
    x = 0;
  }
  if (x + len > nc_curWindow->width) {
    len = nc_curWindow->width - x;
  }
  if (len > 0 && y >= 0 && y < nc_curWindow->height) {
    int i;
    for (i = 0; i < len; i++)
      NC_SCREEN(y*TextW+x+i).i = nc_highlight + cp[i];
    i=cp[len];
	 cp[len]=0;

    GrTextXY(WinX+x*nc_fontwidth,WinY+y*nc_fontheight,cp,currentcolor,cols[0]);
 //  TextOut(hdc,WinX+x*8,WinY+y*16,cp,strlen(cp));
	 cp[len]=i;
  }
}

/*
void nc_putChars(x, y, len, cp)    
int x, y, len;
char *cp;
{
   
}
*/

static void refresh_area(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  nc_crtword *p;
  int i, j, len;
  short savehighlight = nc_highlight;
  char linebuf[TextW];

  if (nc_initialized) {
    for (j = y1; j <= y2; j++)
      for (i = x1, p = nc_screen + j*TextW; i <= x2; i += len, p += len) {
	nc_setHighlight(p->i & ~0377);
	if (bigendian)
	  {
	    for (len = 0; len+i <= x2 && p[len].U1.h == p->U1.h; len++)
	      linebuf[len] = p[len].U1.c;
	  }
	else
	  {
	    for (len = 0; len+i <= x2 && p[len].U1.c == p->U1.c; len++)
	      linebuf[len] = p[len].U1.h;
	  }
	  cursorxor();
//   SetBkColor(hdc,cols[bgc]);
//   TextOut(hdc,i * nc_fontwidth,j * nc_fontheight + ascent,linebuf,strlen(linebuf));
   GrTextXY(i * nc_fontwidth,
			 j * nc_fontheight + ascent, linebuf, currentcolor,cols[bgc]);
	cursorxor();
	if (nc_highlight & nc_under) {
MoveToEx(hdc,i*nc_fontwidth,j*nc_fontheight + ascent + 1,NULL);
LineTo(hdc, i*nc_fontwidth + len*nc_fontwidth - 1,  j*nc_fontheight + ascent + 1);
/*	  GrLine(i*nc_fontwidth,
		    j*nc_fontheight + ascent + 1, 
		    i*nc_fontwidth + len*nc_fontwidth - 1, 
		    j*nc_fontheight + ascent + 1,currentcolor);
*/
	}
      }
    nc_setHighlight(savehighlight);
  }
}

void nc_refreshScreen()
{

  if (nc_initialized)
    refresh_area(0, 0, TextW-1, TextH-1);
}
    
void CheckRefresh()
{
}

void nc_setWindow_(w)
nc_windowRec *w;
{
}
/*
void nc_setHighlight(newhighlight)
int newhighlight;
{
bgc=newhighlight & 15;
//if (newhighlight==0) bgc=0l; else bgc=9l;
}
*/
void nc_setHighlight(newhighlight)
int newhighlight;
{
 

//fprintf(stderr,"sethighlight %d\n",newhighlight);
  if (newhighlight & nc_inv) {
		currentcolor=cols[0];
		bgc=colortrans[(newhighlight & colormask)/4096];
	       
    
  } else {

		currentcolor=cols[colortrans[(newhighlight & colormask)/4096]];
		bgc=0;
  }
//  if (newhighlight==0)
//  currentcolor=nc_green;
  nc_highlight=newhighlight;
}


void nc_putStr(x, y, str)
int x, y;
Char *str;
{
 // TextOut(hdc,WinX+x*8,WinY+y*16,str,strlen(str));
   GrTextXY(WinX+x*nc_fontwidth,WinY+y*nc_fontheight,str,currentcolor,cols[bgc]);
}

void nc_writeStr(int x,int  y,char * str_)
{
  int i, len;
  unsigned char *str;
  unsigned char ss[1024];
  Char c;
  
  
  strcpy(ss,str_);
  str=ss;
  if (! nc_initialized)
    nc_initialize();
  if (x < 0)
    x = 0;
  if (x >= 80) {
    x = 0;
    y++;
  }
  if (y < 0)
    y = 0;
  if (y >= 24) {
    nc_scrollUp();
    y = 23;
  }
  XPOS = x;
  YPOS = y;
  for (i = 0; *str != '\0'; i++, str++) {
    if (*str < 32)
      switch (*str) {
      case 1:                /*  Cursor home             */
	XPOS = YPOS = 0;
	break;
      case 8:                /*  Cursor left             */
	if (--XPOS < 0) {
	  if (YPOS > 0) {
	    XPOS = 80-1;
	    YPOS--;
	  } else
	    XPOS = YPOS = 0;
	}
	break;
      case 9:                /*  Clear to EOL            */
	nc_clearXY(XPOS, YPOS, 80-XPOS, 1);
	break;
      case 10:               /*  Cursor down             */
	if (++YPOS == 24) {
	  nc_scrollUp();
	  YPOS--;
	}
	break;
      case 11:               /*  Clear to end of screen  */
	nc_clearXY(XPOS, YPOS, nc_curWindow->width-XPOS, 1);
	nc_clearXY(0, YPOS+1, nc_curWindow->width,nc_curWindow->height-YPOS-1);
	break;
      case 12:               /*  Clear screen            */
	nc_clearXY(0, 0, nc_curWindow->width, nc_curWindow->height);
	XPOS = 0;
	YPOS = 0;
	break;
      case 13:               /*  Carriage Return         */
	XPOS = 0;
	break;
      case 28:               /*  Cursor right            */
	if (++XPOS == nc_curWindow->width) {
	  XPOS = 0;
	  if (++YPOS == nc_curWindow->height) {
	    nc_scrollUp();
	    YPOS--;
	  }
	}
	break;
      case 31:               /*  Cursor up               */
	if (YPOS > 0)
	  YPOS--;
	break;
      }
    else if (*str >= 128) 
      switch (*str) {
      case 128:              /*  Normal     */
	nc_setHighlight(nc_highlight & colormask);
	break;
      case 129:              /*  Inverse    */
	nc_setHighlight((nc_highlight & colormask) + nc_inv);
	break;
      case 130:              /*  Blinking   */
	nc_setHighlight((nc_highlight & colormask) + nc_blink);
	break;
      case 131:              /*  B + I      */
	nc_setHighlight((nc_highlight & colormask) + nc_blink + nc_inv);
	break;
      case 132:              /*  Underline  */
	nc_setHighlight((nc_highlight & colormask) + nc_under);
	break;
      case 133:              /*  U + I      */
	nc_setHighlight((nc_highlight & colormask) + nc_under + nc_inv);
	break;
      case 134:              /*  U + B      */
	nc_setHighlight((nc_highlight & colormask) + nc_under + nc_blink);
	break;
      case 135:              /*  U + B +I   */
	nc_setHighlight((nc_highlight & colormask) + nc_under+nc_blink+nc_inv);
	break;
      case 136:              /*  Green      */
	nc_setHighlight((nc_highlight & attrmask) + nc_green);
	break;
      case 137:              /*  Yellow     */
	nc_setHighlight((nc_highlight & attrmask) + nc_yellow);
	break;
      case 138:              /*  Black      */
	nc_setHighlight((nc_highlight & attrmask) + nc_black);
	break;
      case 139:              /*  Red        */
	nc_setHighlight((nc_highlight & attrmask) + nc_red);
	break;
      case 140:              /*  Cyan       */
	nc_setHighlight((nc_highlight & attrmask) + nc_cyan);
	break;
      case 141:              /*  White      */
	nc_setHighlight((nc_highlight & attrmask) + nc_white);
	break;
      case 142:              /*  Blue       */
	nc_setHighlight((nc_highlight & attrmask) + nc_blue);
	break;
      case 143:              /*  Purple     */
	nc_setHighlight((nc_highlight & attrmask) + nc_purple);
	break;
      }
    else {
      len = 0;
      do {
	NC_SCREEN(YPOS*TextW+XPOS+len).i = nc_highlight + str[len];
	len++;
      } while (str[len] >= ' ' && str[len] < 128 &&
	       XPOS + len < nc_curWindow->width);
      c=str[len];
      str[len]=0;
      cursorxor();
 //     TextOut(hdc,WinX+XPOS*8,WinY+YPOS*16,str,strlen(str));

      GrTextXY(WinX+XPOS*nc_fontwidth,WinY+YPOS*nc_fontheight,str,currentcolor,cols[bgc]);
      cursorxor();
      str[len]=c;
      str += len - 1;
      XPOS += len;
      if (XPOS == nc_curWindow->width) {
	XPOS = 0;
	if (++YPOS == nc_curWindow->height) {
	  nc_scrollUp();
	  YPOS--;
	}
      }
    }
  }
/*  fprintf(stderr, "nc_writeStr exits, cursor at (%d,%d)\n", XPOS, YPOS);  */
}


static void Handle_Graphics_Exposures()
{
}

void nc_scrollUp()
{
}

void nc_clearXY(x, y, dx, dy)
int x, y, dx, dy;
{
  int i, j;
HBRUSH br;
RECT rect;

  if (! nc_text_in_window) {
    return;
  }

  if (nc_initialized) {
    if ((dx > 0) && (dy > 0)) {
    cursorxor();
    br=CreateSolidBrush(cols[0]);
    rect.left=WinX+nc_fontwidth*x;
    rect.top=WinY+nc_fontheight*y;
    rect.right=WinX+nc_fontwidth*x+nc_fontwidth*dx+1;
    rect.bottom=WinY+nc_fontheight*y+nc_fontheight*dy+1;
    FillRect(hdc,&rect,br);
    DeleteObject(br);
  /*    GrFilledBox( WinX+nc_fontwidth*x,
		WinY+nc_fontheight*y,
		WinX+nc_fontwidth*x+nc_fontwidth*dx, 
		WinY+nc_fontheight*y+nc_fontheight*dy, cols[0]);
    */  

    cursorxor();  

      

      for (j = y; j < y + dy; j++)
	for (i = x; i < x + dx; i++)
	  NC_SCREEN(j * TextW + i).i = 32;
    }
  }

}

void nc_getXY(x, y)
long *x, *y;
{
  if (! nc_text_in_window) {
    *x = *y = 0;
    return;
  }
  if (! nc_initialized)
    nc_initialize();
  *x = (long) XPOS;
  *y = (long) YPOS;
  CheckRefresh();
}

void nc_gotoXY(x, y)
int x, y;
{
/*  fprintf(stderr, "nc_gotoXY(%d,%d)\n", x, y);  */
  if (! nc_text_in_window) {
    return;
  }
  if (! nc_initialized)
    nc_initialize();
  XPOS = x;
  YPOS = y;
  CheckRefresh();
}


static void fix_string(str, buf)
unsigned char *str, *buf;
{
  unsigned char *cp1, *cp2;
  
  cp2 = buf;
  for (cp1 = str; *cp1; cp1++) {
    switch (*cp1) {
    case 1:                /*  Cursor home               */
    case 8:                /*  Cursor left               */
    case 9:                /*  Clear to EOL              */
    case 11:               /*  Clear to end of screen    */
    case 12:               /*  Clear screen              */
    case 28:               /*  Cursor right              */
    case 31:               /*  Cursor up                 */
      break;
    case 10:               /*  Cursor down               */
    case 13:               /*  Carriage Return           */
    default:
      if (*cp1 <= 127)
	*cp2++ = *cp1;
    }
  }
  *cp2 = '\0';
}
/*
#ifndef OS2

void nc_printf(va_alist)
va_dcl
{
  va_list args;
  Char *fmt, fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

//  fprintf(stderr, "nc_printf() called, cursor at (%d,%d)\n", XPOS, YPOS);  
  va_start(args);
  fmt = va_arg(args, Char *);

  if (! nc_text_in_window) {
    fix_string(fmt, fmt2);
    vprintf(fmt2, args);
    va_end(args);
    return;
  }
  vsprintf(printbuffer, fmt, args);
  va_end(args);
  for (p1 = printbuffer, p2 = printbuffer2; *p1 != '\0'; p1++, p2++)
    if ((*p2 = *p1) == '\n')
      *(++p2) = '\015';
  *p2 = '\0';

  nc_writeStr(XPOS, YPOS, printbuffer2);
//  fprintf(stderr, "nc_printf() exits, cursor at (%d,%d)\n", XPOS, YPOS);  
}

#else
*/

void nc_printf(Char *fmt,...)

{
  va_list args;
  Char fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

/*  fprintf(stderr, "nc_printf() called, cursor at (%d,%d)\n", XPOS, YPOS);  */

  va_start(args, fmt);

  if (! nc_text_in_window) {
    fix_string(fmt, fmt2);
    vprintf(fmt2, args);
    va_end(args);
    return;
  }
  vsprintf(printbuffer, fmt, args);
  va_end(args);
  for (p1 = printbuffer, p2 = printbuffer2; *p1 != '\0'; p1++, p2++)
    if ((*p2 = *p1) == '\n')
      *(++p2) = '\015';
  *p2 = '\0';

  nc_writeStr(XPOS, YPOS, printbuffer2);

}

//#endif /* OS2 */

/*
#ifndef OS2

void zfprintf(va_alist)
va_dcl

{
  va_list args;
  FILE *outfile;
  Char *fmt;
  Char fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

  va_start(args);
  outfile = va_arg(args, FILE *);
  fmt = va_arg(args, Char *);
  vfprintf(outfile, fmt, args);
}

#else
*/
void zfprintf(FILE *outfile, Char *fmt,...)
{
  va_list args;
  Char fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

  va_start(args, fmt);
/* This leaves OS2 a no-op  */
}

//#endif
/*
#ifndef OS2

void nc_fprintf(va_alist)
va_dcl
{
  va_list args;
  FILE *outfile;
  Char *fmt, fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

  va_start(args);
  outfile = va_arg(args, FILE *);
  fmt = va_arg(args, Char *);

  if (nc_text_in_window && ((outfile == stdout))) {
    vsprintf(printbuffer, fmt, args);
    va_end(args);
    for (p1 = printbuffer, p2 = printbuffer2; *p1 != '\0'; p1++, p2++)
      if ((*p2 = *p1) == '\n')
	*(++p2) = '\015';
    *p2 = '\0';
    
    nc_writeStr(XPOS, YPOS, printbuffer2);
  } else {
    fix_string(fmt, fmt2);
    vfprintf(outfile, fmt2, args);
    va_end(args);
  }
}

#else
*/
void nc_fprintf(FILE *outfile,Char *fmt,...)
{
  va_list args;
  Char fmt2[1024];
  Char printbuffer[2000], printbuffer2[2000];
  Char *p1, *p2;

  va_start(args, fmt);

  if (nc_text_in_window && ((outfile == stdout)/* || (outfile == stderr) */)) {
    vsprintf(printbuffer, fmt, args);
    va_end(args);
    for (p1 = printbuffer, p2 = printbuffer2; *p1 != '\0'; p1++, p2++)
      if ((*p2 = *p1) == '\n')
	*(++p2) = '\015';
    *p2 = '\0';
    
    nc_writeStr(XPOS, YPOS, printbuffer2);
  } else {
    fix_string(fmt, fmt2);
    vfprintf(outfile, fmt2, args);
    va_end(args);
  }
}

//#endif

void nc_puts(s)
Char *s;
{
  char str2[1024];

/*  fprintf(stderr, "nc_puts() called, cursor at (%d,%d)\n", XPOS, YPOS);  */
  if (! nc_text_in_window) {
    fix_string(s, str2);
#undef puts
    puts(str2);
#define puts nc_puts
    return;
  }
  nc_writeStr(XPOS, YPOS, s);
  nc_writeStr(XPOS, YPOS, "\n\015");
/*  fprintf(stderr, "nc_puts() exits, cursor at (%d,%d)\n", XPOS, YPOS);  */
}
  
void nc_fputs(s, outfile)
Char *s;
FILE *outfile;
{
  Char printbuffer[2000];
  Char *p;
  Char str2[1024];

  if (nc_text_in_window && ((outfile == stdout) || (outfile == stderr))) {
    for (p = printbuffer; *s != '\0'; s++, p++)
      if ((*p = *s) == '\n')
	*(++p) = '\015';
    *p = '\0';
    nc_writeStr(XPOS, YPOS, printbuffer);
  } else {
    fix_string(s, str2);
#undef fputs
    fputs(str2, outfile);
#define fputs nc_fputs
  }
} 


extern void nc_putc();


void nc_putchar(c)
uchar c;
{
  Char buffer[2];

  if (! nc_text_in_window) {
    if (c <= 127)
      nc_putc(c, stdout);
    return;
  }
/*  fprintf(stderr, "nc_putchar() called, cursor at (%d,%d)\n", XPOS, YPOS);  */
  if (c == '\n')
    nc_writeStr(XPOS, YPOS, "\015\n");
  else {
    buffer[0] = c;
    buffer[1] = '\0';
    nc_writeStr(XPOS, YPOS, buffer);
  }
/*  fprintf(stderr, "nc_putchar() exits, cursor at (%d,%d)\n", XPOS, YPOS);  */
}

void nc_putc(c, outfile)
uchar c;
FILE *outfile;
{
  uchar buffer[2];

  if (nc_text_in_window && ((outfile == stdout) || (outfile == stderr)))
    nc_putchar(c);
  else if (c <= 127)
    fputc(c, outfile);

}

void nc_togglecursor()
{
//  if (! nc_initialized)
//    return;

RECT rect;
cursor_flag = ! cursor_flag;

rect.left=WinX+nc_fontwidth*XPOS;
rect.top=WinY+nc_fontheight*YPOS;
rect.right=WinX+nc_fontwidth*XPOS+nc_fontwidth+1;
rect.bottom=WinY+nc_fontheight*YPOS+nc_fontheight+1;
 
    InvertRect(hdc,&rect);

    
 /* GrFilledBox(
		 WinX+nc_fontwidth*XPOS,
		 WinY+nc_fontheight*YPOS,
		 WinX+nc_fontwidth*XPOS+nc_fontwidth, 
		 WinY+nc_fontheight*YPOS+nc_fontheight,GrXOR | GrWhite());
*/
}

void nc_cursor_on()
{
  if (!cursor_flag)
    nc_togglecursor();
}

void nc_cursor_off()
{
  if (cursor_flag)
    nc_togglecursor();
}
char *nc_gets(char *buf)
{
  static char *cursor = "\374";
  static char *space = " ";
  int pos;
  uchar c;

  if (! nc_text_in_window) {
#undef gets
    return(gets(buf));
#define gets nc_gets
  }
  if (! nc_initialized)
    nc_initialize();
  pos = 0;
  for (;;) {
/*    fprintf(stderr, "Text cursor at (%d, %d)\n", XPOS, YPOS);  */
    c = m_inkey();
    if (c == 7) {
      if (pos > 0) {
	pos--;
	nc_writeStr(XPOS, YPOS, "\b \b");
      }
#if 0
      XDrawImageString(m_display, nc_window, nc_gc,
		       nc_curWindow->gleft+nc_fontwidth*XPOS,
		       nc_curWindow->gtop+nc_fontheight*YPOS + ascent,
		       space, 1);
#endif
    } else if (c == 'U' - '@') {
      while (pos > 0) {
	pos--;
	nc_writeStr(XPOS, YPOS, "\b \b");
      }
    } else if (c == '\15') {
      XPOS = 0;
      if (++YPOS >= nc_curWindow->height) {
	YPOS--;
	nc_scrollUp();
      }
      buf[pos] = '\0';
#if 0
      XDrawImageString(m_display, nc_window, nc_gc,
		       nc_curWindow->gleft+nc_fontwidth*XPOS,
		       nc_curWindow->gtop+nc_fontheight*YPOS + ascent,
		       space, 1);
#endif
      return(buf);
#if 0
    } else if (c == 'C' - '@') {
      kill(getpid(), SIGINT);
#endif
    } else if (c >= ' ' && c < 127) {
      buf[pos++] = c;
      nc_putChar(XPOS, YPOS, c);
#if 0
      NC_SCREEN(YPOS*TextW+XPOS).i = nc_highlight + c;
      XDrawImageString(m_display, nc_window, nc_gc,
		       nc_curWindow->gleft+nc_fontwidth*XPOS,
		       nc_curWindow->gtop+nc_fontheight*YPOS + ascent,
		       &c, 1);
#endif
      if (++XPOS == nc_curWindow->width) {
	XPOS = 0;
	if (++YPOS == nc_curWindow->height) {
	  nc_scrollUp();
	  YPOS--;
	}
      }
#if 0
      XDrawImageString(m_display, nc_window, nc_gc,
		       nc_curWindow->gleft+nc_fontwidth*XPOS,
		       nc_curWindow->gtop+nc_fontheight*YPOS + ascent,
		       cursor, 1);
#endif
    }
  }
}


char *nc_fgets(s, n, stream)
char *s;
int n;
FILE *stream;
{
  if (nc_text_in_window && (stream == stdin))
    return(nc_gets(s));
  else
#undef fgets
    return(fgets(s, n, stream));
#define fgets nc_fgets
}




short nc_gType()
{
  return nc_g300;
}

boolean nc_alphashared()
{
  return true;
}

