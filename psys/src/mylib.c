#define MYLIB_G
#define XK_MISCELLANY
#include <windows.h>
//#include <wingdi.h>   // these are needed because I took them out of windows.h to make console
//#include <winuser.h>  // apps compile a bit faster.
#include <stdio.h>
#include <signal.h>
#include <fcntl.h>
#include <sys/timeb.h>
int WindowWidth=800,WindowHeight=580;
HDC hdc1;
#define GrLine(x,y,x1,y1,z)   MoveToEx(hdc,x,y,NULL);LineTo(hdc,x1,y1)
//#define stderr trace

extern FILE * trace;
HPEN pens[16];

#define cfree(x) free(x)

#define WinX 2
//(1020-80*8)
#define WinY 2 
//(768-24*16-128)
typedef struct {int x;int y; } XPoint;

//#undef ENABLE_DEBUGGING
  
/* Trying to speed up graphics */
#undef SAVECURSOR
#undef EXTRA_BUFFERING

/* Support for 24-plane TrueColor X */
#define HIRES
/* #define HIRESDB */   /* debugging only */

#define __TYPES__

#include <stdio.h>
#ifdef HIRES
#include <stdlib.h>
#include <string.h>
#endif  /* HIRES */
#include <math.h>

#if defined(aux)
# include <sys/types.h>   
# include <sys/time.h>
# include <time.h>
#elif defined(__sgi)
# include <sys/types.h>   
# include <sys/time.h>
# include <time.h>
#elif defined(rs6000)
# include <sys/time.h>
# include <time.h>
#elif defined(BSD)
# include <sys/time.h>
#else
# include <time.h>
#endif
#ifdef OS2
# include <sys/timeb.h>
#endif

#include <p2c/p2c.h>
#include <p2c/mylib.h>
/*  
#include <X11/X.h>
#ifdef OS2
#include <X11/Xlib.h>
#endif  
#include <X11/Xutil.h>
#include <X11/cursorfont.h>
#include <X11/keysymdef.h>

	*/
long cols[256];

#ifdef HIRES
/* Current settings for X function parameters 
typedef struct {
    XFontStruct         *font;
    Cursor              cursor;
    int                 fontSize;
    int                 depth;
    int                 maskmod;
    Window              window;
} GR_CURRENT;
  */
#ifdef RGBFILE    
/* In case someone wants to implement reading RGB from
   a file like Magic does. */
unsigned long grPixels[256];
#endif  /* RGBFILE */
/*GR_CURRENT grCurrent;
*/
#endif  /* HIRES */

#if 0
/* previously missing defs in keysymdef */
#define XK_Reset                0x1000FF6C  /* HP -- The shift of Break */
#endif


#if defined(rs6000)
/* previously missing defs in keysymdef -- may be needed for RS/6000 */
#define XK_System               0x1000FF6D  /* HP */
#define XK_User                 0x1000FF6E  /* HP */
#define XK_ClearLine            0x1000FF6F  /* HP */
#define XK_InsertLine           0x1000FF70  /* HP */
#define XK_DeleteLine           0x1000FF71  /* HP */
#define XK_InsertChar           0x1000FF72  /* HP */
#define XK_DeleteChar           0x1000FF73  /* HP */
#define XK_BackTab              0x1000FF74  /* HP */
#define XK_KP_BackTab           0x1000FF75  /* HP */
#endif

HWND hwnd;
HDC hdc;
HBRUSH bgbrush;

/* daveg, 10/6/89:  Just to improve readability of the rest of the code! */

static int show_all_mylib_calls,
	   show_all_X_calls,
	   show_flushes,
	   show_pen_calls,
	   show_key_calls,
	   sync_all_calls;

static init_debug_flags()
{
  show_all_mylib_calls = (getenv("SHOW_ALL_MYLIB_CALLS") != NULL);
  show_all_X_calls = (getenv("SHOW_ALL_X_CALLS") != NULL);
  show_flushes = (getenv("SHOW_FLUSHES") != NULL);
  show_pen_calls = (getenv("SHOW_PEN_CALLS") != NULL);
  show_key_calls = (getenv("SHOW_KEY_CALLS") != NULL);
  sync_all_calls = (getenv("SYNC_ALL_CALLS") != NULL);
}
//static void turncursoron();
static void turncursoroff();

#define zfprintf fprintf        /* MDG */
extern int zfprintf(FILE *, const char *, ... );

#ifdef ENABLE_DEBUGGING
# define Mfprintf show_all_mylib_calls && fprintf
# define Xfprintf show_all_X_calls && fprintf
# define Ffprintf show_flushes && fprintf
# define Pfprintf show_pen_calls && fprintf
# define Kfprintf show_key_calls && fprintf
#else
# define Mfprintf 0 && fprintf
# define Xfprintf 0 && fprintf
# define Ffprintf 0 && fprintf
# define Pfprintf 0 && fprintf
# define Kfprintf 0 && fprintf
#endif

 #define XFlush(d) ;
 /*  if (sync_all_calls) XSync(d,False); else XFlush(d) */



/*  newcrt stuff  */
#define nc_fontwidth 8
#define nc_fontheight 12
extern int nc_window;
extern int nc_initialized;




#define MIN(a,b)     ((a)<(b) ? (a) : (b))
#define MAX(a,b)     ((a)>(b) ? (a) : (b))

#define TRNSFRM(x,y)     if (flip)                          \
			   y = m_down-(y);                  \
			 else if (trans)                    \
			   GeneralTransform(&(x), &(y));
#define DTRNSFRM(x,y)    if (flip)                          \
			   y = -y;                          \
			 else if (trans)                    \
			   DeltaTransform(&(x), &(y));
#define LTRNSFRM(x,y)    if (flip)                          \
			   y = m_down-(y);                  \
			 else if (trans)                    \
			   LimitedTransform(&(x), &(y));
#define UNTRNSFRM(x,y)   if (flip)                          \
			   y = m_down-(y);                  \
			 else if (trans)                    \
			   GeneralUnTransform(&(x), &(y));
/*
#define TRNSFRM(x,y) 
#define DTRNSFRM(x,y) 
#define LTRNSFRM(x,y) 
#define UNTRNSFRM(x,y) 
*/
#define pi               3.1415926535897932384626433833    
#define dr               0.0174532925199433
#define WinBorder        1
#define WinDepth         4
#define DefaultFont      "6x10"

//#ifdef OS2
static struct timeb first, second, lapsed;
/*
#else   
static struct timeval first, second, lapsed;
//static struct timezone tzp;
#endif
*/

static char *timername;
static int cursx, cursy;
static int cursor_is_on = 1;

void starttimer(name)
char *name;
{

  timername = name;

//#ifdef OS2
  ftime(&first);
/*
#else
 // gettimeofday(&first, &tzp);
#endif
*/
}

void stoptimer()
{

//#ifdef OS2
  ftime(&second);

  if (first.millitm  > second.millitm) {
     second.millitm += 1000;
     second.time--;
  }
  lapsed.time = second.time - first.time;
  lapsed.millitm = second.millitm - first.millitm;
  printf("%s:  %f seconds\n", timername,
			      lapsed.time+lapsed.millitm/1000.0);
 
/*
#else

 // gettimeofday(&second, &tzp);

  if (first.tv_usec > second.tv_usec) {
    second.tv_usec += 1000000;
    second.tv_sec--;
  }
  lapsed.tv_usec = second.tv_usec-first.tv_usec;
  lapsed.tv_sec = second.tv_sec-first.tv_sec;

  printf("%s:  %f seconds\n", timername,
			      lapsed.tv_sec+lapsed.tv_usec/1000000.0);
#endif
*/
}

/* Added for command line display specification. - stafford 7/17/91 */

#define       DISPLAY_NAME_LENGTH 100
char  m_display_name[DISPLAY_NAME_LENGTH] = "";

/* Added flag for window pop-up mode -- jl */
#define False 0
#define True 1

boolean m_autoraise = false;

int *m_display;
int m_window;
int screennum;
int BlackAndWhite = False;
int m_events_received;

/*int m_across, m_down, m_maxcolor;*/

static int nocache;
static int flip, trans;
static int trans_XtoX, trans_XtoY, trans_YtoY, trans_YtoX, trans_denom,
	   trans_addx, trans_addy;
static int gc[ColorsInSet];
static int CursorGC, CursorGC2, CursorGC3;
static int UnderCursor;
static int currentcolor = 1;
static int currentmode = 0;
static int fontnum;
static int *currentfont;
static int fontasc;

static int RealWinDepth = WinDepth;
static int colormap;
static unsigned long plane_masks[1<<WinDepth];
static unsigned long plane_mask;
static unsigned long pixel;
#ifdef HIRES
static int planeCount;
#endif  /* HIRES */

static unsigned long notAllPlanes;

static struct grid {
  int dx, dy, ax, ay;
  unsigned long color;
  int p1, p2;
  int gc1, gc2;
} grid1 = { -1, -1, -1, -1, 0, 0, 0, 0, 0 },
  grid2 = { -1, -1, -1, -1, 0, 0, 0, 0, 0 },
  *newgrid, *oldgrid;

static int blankcursor;


static char *progname = "mylib";

void GeneralTransform(x, y)
int *x, *y;
{
  int newx, newy;

  newx = (*x*trans_XtoX + *y*trans_YtoX) / trans_denom + trans_addx;
  newy = (*x*trans_XtoY + *y*trans_YtoY) / trans_denom + trans_addy;

  *x = newx;
  *y = newy;
}

void DeltaTransform(x, y)     
int *x, *y;
{
  int newx, newy;

  newx = (*x*trans_XtoX + *y*trans_YtoX) / trans_denom;
  newy = (*x*trans_XtoY + *y*trans_YtoY) / trans_denom;

  *x = newx;
  *y = newy;
}

void LimitedTransform(x, y)
int *x, *y;
{
  int newx, newy;

  newx = *x*trans_XtoX / trans_denom + trans_addx;
  newy = *y*trans_YtoY / trans_denom + trans_addy;

  *x = newx;
  *y = newy;
}

void GeneralUnTransform(x, y)
int *x, *y;
{
  int x1, y1, newx, newy, det;

  x1 = *x*trans_denom-trans_addx;
  y1 = *y*trans_denom-trans_addy;

  det = (trans_XtoX*trans_YtoY - trans_YtoX*trans_XtoY);
  newx = (x1*trans_YtoY - y1*trans_YtoX) / det;
  newy = (y1*trans_XtoX - x1*trans_XtoY) / det;

  *x = newx;
  *y = newy;
}

void m_cache(newstate)
int newstate;
{
  if (!newstate && !nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
  nocache = !newstate;
}

void m_choosecolors(colorset)
int colorset;
{
}

/* Added X display name support.  stafford 7/17/91 */

static int ScrDepth;
int red_size, green_size, blue_size, red_shift, green_shift, blue_shift;
int red_mask, green_mask, blue_mask;

//GrTextOption opt={NULL,0xff00l,0x0l,0,0,0,0};

void DisplayInitialize()
{
int i,r,g,b,x=800,y=580,c=16;
char *s;
LOGBRUSH bgb;
Mfprintf(trace, "Displayinit()\n");

/* sigset_t si;

sigemptyset(&si);
sigaddset(&si,SIGINT);
sigprocmask(SIG_BLOCK,&si,NULL);
*/
_fmode=O_BINARY;
setmode(fileno(stdin),O_BINARY);

//opt.txo_font=GrLoadFont("XM6X10");
//if(!opt.txo_font) {
//fprintf(stderr,"Font not Found\n");
//exit(1);
//}
//GrSetDriver(NULL);
s=getenv("MODE");
if (s) sscanf(s,"%d %d",&WindowWidth, &WindowHeight);
//i=GrSetMode(GR_width_height_color_graphics,x,y,c);
//if(!i)  {fprintf(stderr,"No Video Mode Found\n");
//exit(1);
//}
/*
GrResetColors();
for (i=1;i<7;i++) {
r=i&1;
g=(i>>1)&1;
b=(i>>2)&1;
cols[i]=GrAllocColor(255*r,255*g,255*b);
cols[i+8]=GrAllocColor(0x088*r,0x088*g,0x088*b);
}
cols[8]=GrAllocColor(0x0cc,0x0cc,0x0cc);
cols[15]=GrAllocColor(0x0af,0x0af,0x0af);
cols[0]=GrBlack();
cols[7]=GrWhite();
m_maxcolor=16;
if(!GrMouseDetect())
{fprintf(stderr,"No Mouse Found\n");
exit(1);
}
//GrMouseEventMode(1);
GrMouseInit();
GrMouseEventEnable(1,1);
//turncursoron();
//cursor_is_on=1;
*/
m_maxcolor=16;
for(i=0;i<7;i++) {
  r=i&1;
  g=(i>>1)&1;
  b=(i>>2)&1;
  pens[i]=CreatePen(PS_SOLID, 0, RGB(r*255, g*255, b*255));
  pens[i+8]=CreatePen(PS_SOLID, 0, RGB(r*0x88, g*0x88, b*0x88));
}
pens[8]=CreatePen(PS_SOLID, 0, RGB(0x0cc,0x0cc,0x0cc));
pens[15]=CreatePen(PS_SOLID, 0, RGB(0x0af,0x0af,0x0af));
pens[0]=CreatePen(PS_SOLID, 0, RGB(0,0,0));
pens[7]=CreatePen(PS_SOLID, 0, RGB(255,255,255));
//bgb.lbStyle=BS_SOLID;
//bgb.lbColor=DIB_RGB_COLORS; 
//bgbrush=CreateBrushIndirect(&bgb);
}
/* These are WOL-versions of function-keys */
#define wol_select "\003"
#define wol_left_arrow "\b"
#define wol_right_arrow "\034"
#define wol_down_arrow "\n"
#define wol_up_arrow "\037"

void mapkey()
{
}

void WindowInitialize()
{
}

 
 
#define LINESTIPPLELENGTH       4
 
 
static unsigned char dotted[LINESTIPPLELENGTH] = {2, 1, 2, 1};
static unsigned char dot_dashed[LINESTIPPLELENGTH] = {3, 4, 3, 1};
static unsigned char sh_dashed[LINESTIPPLELENGTH] = {4, 3, 4, 3};
static unsigned char lo_dashed[LINESTIPPLELENGTH] = {7, 1, 7, 1};
static unsigned char odd_dashed[LINESTIPPLELENGTH] = {1, 2, 3, 4};
static unsigned char black_dashed[LINESTIPPLELENGTH] = {1, 7, 1, 7};

static unsigned char *default_linestyle[ColorsInSet];

static unsigned char *FigureOutBWLine(r, g, b)
     int r, g, b;
{
  /* This is just a matter of taste */

  if ((r > 10) && (g == 0) && (b == 0)) 
    /* red */
    return lo_dashed;
  else if ((r > 11) && (g > 12) && (b == 0))
    /* yellow */
    return sh_dashed;
  else if ((r < 2) && (g < 2) && (b < 2))
    /* black */
    return lo_dashed;
  else
    return NULL;
}


static void do_init_screen(full)
int full;
{
  int root;
  int i, x, y;
  unsigned int w, h, bw, d;

  init_debug_flags();

  if (! m_initialized)
    DisplayInitialize();

  if (! m_initialized)
    WindowInitialize();

  if (full)
   m_clear();
//  w=GrScreenX();
//  h=GrScreenY();
  w=WindowWidth;
  h=WindowHeight;
  m_across = w;
  m_down = h;
  RealWinDepth = d;
  m_across--;
  m_down--;

    

  i = m_white;


  m_color(m_red);
  m_choosecursor(0);



  nocache = sync_all_calls;
  flip = 1;
  trans = 0;

  m_initialized = 1;
}

/* Added X display name support.  WES 7/17/91 */


void m_set_display_name(display_name)
char* display_name;
{

}

void m_init_screen()
{
  Mfprintf(trace, "m_init_screen()\n");

  do_init_screen(0);
}

void m_init_graphics()
{
  Mfprintf(trace, "m_init_graphics()\n");

  do_init_screen(1);
  m_choosecolors(0);
}


#ifndef ENABLE_DEBUGGING
# define nocache  0
#endif


void m_init_graphics_nopen()
{
  Mfprintf(trace, "m_init_graphics_nopen()\n");
  do_init_screen(1);

}

void m_init_dzg()
{
  Mfprintf(trace, "m_init_dzg()\n");

  m_init_graphics();
  flip = 0;
}

void m_init_colors()
{
  Mfprintf(trace, "m_init_colors()\n");

  m_choosecolors(0);
}

void m_init_pen(hpib_address)
int hpib_address;
{
  Mfprintf(trace, "m_init_pen(%d)\n", hpib_address);
}

void m_version(version)
int version;
{
  Mfprintf(trace, "m_version(%d)\n", version);

  if (version != 0)
    fprintf(stderr, "Mylib:  m_version(%d) not supported\n", version);
}

long m_curversion()
{
  Mfprintf(trace, "m_curversion()\n");

  return(0);
}

void m_modern(flag)
int flag;
{
  Mfprintf(trace, "m_modern(%d)\n", flag);

  if (flag)
    m_version(1);
  else
    m_version(0);
}

void xorcurs(int x,int y);   

void m_clear()
{
RECT rect;
HBRUSH br;

rect.left=0;
rect.top=0;
rect.right=m_across;
rect.bottom=m_down;
//GrClearScreen(cols[0]);
    br=CreateSolidBrush(cols[0]);
    FillRect(hdc,&rect,br);

//FillRect(hdc,&rect,bgbrush);
xorcurs(cursx,cursy);
}

void m_clearwindow(from, lines)
int from, lines;
{
//GrClearScreen(cols[0]);
}

void m_vsync()
{
  Mfprintf(trace, "m_vsync()\n");
}

int m_clip_x1, m_clip_y1, m_clip_x2, m_clip_y2;

void m_clip(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  int i;
HRGN hrgn;

  Mfprintf(trace, "m_clip(%d, %d, %d, %d)\n", x1, y1, x2, y2);

  if (x2 == 32767) {
    m_noclip();
    return;
  }

  LTRNSFRM(x1, y1);
  LTRNSFRM(x2, y2);

  if (x1 > x2)
    i = x1, x1 = x2, x2 = i;
  if (y1 > y2)
    i = y1, y1 = y2, y2 = i;

  if ((m_clip_x1 != x1) || (m_clip_y1 != y1) ||
      (m_clip_x2 != x2) || (m_clip_y2 != y2)) {
hrgn=CreateRectRgn(x1,y1,x2,y2);
SelectClipRgn(hdc,hrgn);
DeleteObject(hrgn);
//    GrSetClipBox(x1,y1,x2,y2);
    m_clip_x1 = x1;
    m_clip_y1 = y1;
    m_clip_x2 = x2;
    m_clip_y2 = y2;
  }
}

void m_noclip()
{
  int i;
 HRGN hrgn;

//  Mfprintf(trace, "m_noclip()\n");

  if ((m_clip_x1 != 0) || (m_clip_y1 != 0) ||
      (m_clip_x2 != 32767) || (m_clip_y2 != 32767)) {
hrgn=CreateRectRgn(0,0,m_across,m_down);
SelectClipRgn(hdc,hrgn);
DeleteObject(hrgn);
    m_clip_x1 = 0;
    m_clip_y1 = 0;
    m_clip_x2 = 32767;
    m_clip_y2 = 32767;
  }
}

void m_transform(xx, yx, xy, yy, d, ax, ay)
int xx, yx, xy, yy, d, ax, ay;
{
  flip = 0;
  trans = 1;
  
  Mfprintf(trace, "m_transform(%d, %d, %d, %d, %d, %d, %d)\n",
				xx, yx, xy, yy,  d, ax, ay   );

  trans_XtoX = xx;
  trans_XtoY = xy;
  trans_YtoY = yy;
  trans_YtoX = yx;
  trans_denom = d;
  trans_addx = ax;
  trans_addy = ay;
}

void m_notransform()
{
  Mfprintf(trace, "m_notransform()\n");

  flip = 1;
  trans = 0;
}

void m_upside_down()
{
  Mfprintf(trace, "m_upside_down()\n");

  flip = 0;
  trans = 0;
}

void m_rotscale(rot, scale, ax, ay)
double rot, scale;
int ax, ay;
{
  int s, c;

  Mfprintf(trace, "m_rotscale(%f, %f, %d, %d)\n", rot, scale, ax, ay);

  s = (int)(sin(rot)*scale * 256);
  c = (int)(cos(rot)*scale * 256);

  m_transform(c, -s, -s, -c, 256, ax, m_down-ay);
}

void m_rotscaled(rot, scale, ax, ay)
double rot, scale;
int ax, ay;
{
  Mfprintf(trace, "m_rotscaled(%f, %f, %d, %d)\n", rot, scale, ax, ay);

  m_rotscale(rot*dr, scale, ax, ay);
}

static int curcursor = 0;

static void turncursoroff()
{
 // if(cursor_is_on) m_cursor(cursx,cursy);
 // cursor_is_on=0;
}



#define turncursoron()
/*
static void turncursoron()
{
  xorcurs(cursx,cursy);
  //cursor_is_on=1;
}
*/

void m_nocursor()
{
}

static m_tablet_info mouse;

void xorcurs(int x,int y)
{
/*
switch(curcursor) {
case 3:
case 4:
GrLine(x-10,y,x+10,y,GrXOR|cols[7]);
GrLine(x,y-10,x,y+10,GrXOR|cols[7]);
break;
case 0:
GrLine(x+7,y+7,x,y,GrXOR|cols[7]);
GrLine(x,y,x+4,y,GrXOR|cols[7]);
GrLine(x,y,x,y+4,GrXOR|cols[7]);
break;
case 1:
GrLine(x+10,y+10,x,y,GrXOR|cols[7]);
GrLine(x,y,x+4,y+1,GrXOR|cols[7]);
GrLine(x,y,x+1,y+4,GrXOR|cols[7]);
//GrLine(x+10,y+10,x-10,y-10,GrXOR|cols[7]);
//GrLine(x+10,y-10,x-10,y+10,GrXOR|cols[7]);
break;
case 2:
GrLine(x-4,y-7,x+4,y+7,GrXOR|cols[7]);
GrLine(x-7,y-4,x+7,y+4,GrXOR|cols[7]);
GrLine(x+4,y+7,x,y+7,GrXOR|cols[7]);
GrLine(x,y+7,x+1,y+2,GrXOR|cols[7]);
GrLine(x+7,y+4,x+7,y,GrXOR|cols[7]);
GrLine(x+7,y,x+2,y+1,GrXOR|cols[7]);
GrLine(x+2,y+2,x-2,y-2,GrXOR|cols[7]);    
break;       
}
*/
}
void cursorxor() {
xorcurs(cursx,cursy);
}

void m_cursor(x, y)
int x, y;
{
TRNSFRM(x,y);
m_noclip();
if(x!=cursx || y!=cursy) {  
	xorcurs(cursx,cursy);
	xorcurs(x,y);
}
cursx=x;
cursy=y;
}
extern HCURSOR cursors[5];

void m_choosecursor(n)
int n;
{
if (curcursor!=n) {

m_noclip();
cursorxor();
curcursor=n;
SetCursor(cursors[n]);
SetClassLongPtr(hwnd,GCLP_HCURSOR,(LONG_PTR)&cursors[n]);
cursorxor(); 
}
}

void m_colormode(int c)
{
Mfprintf(trace, "m_colormode(%d)\n", c);
currentmode=c;
switch(c) {
case m_xor:
//currentcolor |= GrXOR;
SetROP2(hdc,R2_XORPEN);
break;
//case m_over:
//currentcolor |= GrOR; 
//break;
case m_erase:
currentcolor = cols[0];
break;

case m_normal:
SetROP2(hdc,R2_COPYPEN);
currentcolor &= 0xffffff;             
break;
}
}

int colindex=0;
void m_color(int newcolor)
{
  if(currentmode==m_erase) {
	 SelectObject(hdc,pens[0]);
    return;
  }
  Mfprintf(trace, "m_color(%d)\n", newcolor);
    if (newcolor > m_maxcolor)
	newcolor = m_maxcolor;
      else if (newcolor < 0)
	newcolor = 0;
    if(currentmode==m_erase) currentcolor = cols[0]; 
    else
    currentcolor = (currentcolor & 0xff000000) | cols[newcolor];
    colindex=newcolor;
    if(newcolor<16) {
     SelectObject(hdc,pens[newcolor]);
   
  }
//  if(currentmode==m_xor) 
//     SetROP2(hdc,R2_XORPEN);
}

long m_curcolor()
{

  Mfprintf(trace, "m_curcolor() = %d\n", colindex);

  return(colindex);
}

long m_curcolormode()
{
  Mfprintf(trace, "m_curcolormode() = %d\n", currentmode);
return currentmode;
/*
  if ((currentcolor & 0xff000000)==987) return m_xor;
  else return m_normal;
*/
}

void m_setcolor(c, r, g, b)
int c, r, g, b;
{
if(r>0) r=r*16+15;
if(g>0) g=g*16+15;
if(b>0) b=b*16+15;
Mfprintf(trace, "m_setcolor(%d,%d,%d,%d)\n", c,r,g,b);
//GrFreeColor(cols[c]);
//GrSetColor(cols[c],r*16,g*16,b*16);
DeleteObject(pens[c]);
pens[c]=CreatePen(PS_SOLID, 0, PALETTERGB(r,g,b));
cols[c]=PALETTERGB(r,g,b);
}


void m_seecolor(c, r, g, b)
int c; 
unsigned char *r, *g, *b;
{
int i,j,k; 
//GrQueryColor(cols[c],&i,&j,&k);

*r=(cols[c]&255);
*g=((cols[c]>>8)&255);
*b=((cols[c]>>16)&255);
Mfprintf(trace, "m_seecolor(%d)=%d,%d,%d\n", c,*r,*g,*b); 
}

void m_setcolors(r, g, b)
m_colorarray r, g, b;
{
}

void m_vsetcolors(first, num, r, g, b)
int first, num;
m_vcolorarray r, g, b;
{
int i;
for(i=0;i<num;i++)
  m_setcolor(first+i,r[i]/16,g[i]/16,b[i]/16);
}

void m_vseecolors(first, num, r, g, b)
int first, num;
m_colorarray r, g, b;
{
int i,ra,ga,ba;
for(i=0;i<num;i++) {
  m_seecolor(first+i,&ra,&ga,&ba);
  r[i]=ra;g[i]=ga;b[i]=ba;
}
}

static int linestyles[16] = {
  0xffff,
  0x8000,
  0x8080,
  0x8888,
  0xff00,
  0xf0f0,
  0xcccc,
  0xaaaa,
  0xfafa,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
};
static int currentlinestyle = 0;
static int linewidth = 0;
  
void m_linestyle(s)
int s;
{
  currentlinestyle=s;
}

void m_nolinestyle()
{
currentlinestyle=0;
}

long m_curlinestyle()
{
  Mfprintf(trace, "m_curlinestyle()\n");

  return(currentlinestyle);
}

void m_setlinestyle(s, mask)
int s, mask;
{
  Mfprintf(trace, "m_setlinestyle(%d, %d)\n", s, mask);

  if (s >= 0 && s <16) {
    linestyles[s] = mask;
    if (s == currentlinestyle) {
      currentlinestyle = -1;
      m_linestyle(s);
    }
  } else
    fprintf(stderr, "mylib:  invalid linestyle number (%d) passed to m_setlinestyle", s);
}

void m_seelinestyle(s, mask)
int s, *mask;
{
  Mfprintf(trace, "m_seelinestyle(%d, mask)\n", s);

  *mask = linestyles[s];
}

void m_linewidth(w)
int w;
{
}

void m_nolinewidth()
{
}

static int curx = 0, cury = 0;

void m_move(x, y)
int x, y;
{
  Mfprintf(trace, "m_move(%d, %d)\n", x, y);

  TRNSFRM(x, y);

  curx = x;
  cury = y;
}

void m_moverel(dx, dy)
int dx, dy;
{
  Mfprintf(trace, "m_moverel(%d, %d)\n", dx, dy);

  DTRNSFRM(dx, dy);

  curx += dx;
  cury += dy;
}

int hitdet_line(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  int oc1 = 0, oc2 = 0;
  int val;
  static int table[9][9] = {
    0, 0, 0,  0, 1, 2,  0, 4, 4,
    0, 0, 0,  4, 1, 5,  4, 1, 5,
    0, 0, 0,  2, 1, 0,  5, 5, 0,
    0, 2, 2,  0, 1, 1,  0, 4, 4,
    1, 1, 1,  1, 1, 1,  1, 1, 1,
    2, 2, 0,  1, 1, 0,  5, 5, 0,
    0, 4, 4,  0, 1, 4,  0, 0, 0,
    4, 1, 5,  4, 1, 5,  0, 0, 0,
    5, 5, 0,  5, 1, 0,  0, 0, 0
  };

  if (x1 > m_clip_x2)
    oc1 += 2;
  else if (x1 >= m_clip_x1)
    oc1 += 1;
  if (y1 > m_clip_y2)
    oc1 += 6;
  else if (y1 >= m_clip_y1)
    oc1 += 3;
  if (x2 > m_clip_x2)
    oc2 += 2;
  else if (x2 >= m_clip_x1)
    oc2 += 1;
  if (y2 > m_clip_y2)
    oc2 += 6;
  else if (y2 >= m_clip_y1)
    oc2 += 3;
  switch (table[oc1][oc2]) {

  case 0:   /* trivial reject */
    return 0;

  case 1:   /* trivial accept */
    return 1;

  case 2:   /* crosses m_clip_y1 */
    val = x1 + (x2-x1)*(m_clip_y1-y1)/(y2-y1);
    if (y1 < y2)
      return (hitdet_line(x1, y1, val, m_clip_y1-1) ||
	      hitdet_line(val, m_clip_y1, x2, y2));
    else
      return (hitdet_line(x2, y2, val, m_clip_y1-1) ||
	      hitdet_line(val, m_clip_y1, x1, y1));

  case 4:   /* crosses m_clip_x1 */
    val = y1 + (y2-y1)*(m_clip_x1-x1)/(x2-x1);
    if (x1 < x2)
      return (hitdet_line(x1, y1, m_clip_x1-1, val) ||
	      hitdet_line(m_clip_x1, val, x2, y2));
    else
      return (hitdet_line(x2, y2, m_clip_x1-1, val) ||
	      hitdet_line(m_clip_x1, val, x1, y1));

  case 5:   /* crosses m_clip_x2 */
    val = y1 + (y2-y1)*(m_clip_x2-x1)/(x2-x1);
    if (x1 < x2)
      return (hitdet_line(x1, y1, m_clip_x2, val) ||
	      hitdet_line(m_clip_x2+1, val, x2, y2));
    else
      return (hitdet_line(x2, y2, m_clip_x2, val) ||
	      hitdet_line(m_clip_x2+1, val, x1, y1));
  }
}

//#define checkcur(x1,y1,x2,y2) if((((x1<=cursx+10) && (x2>=cursx-10)) || ((x1>=cursx-10) && (x2<=cursx+10))) &&       \
//			     (((y1<=cursy+10) && (y2>=cursy-10)) || ((y1>=cursy-10) && (y2<=cursy+10)))) xorcurs(cursx,cursy);


 #define checkcur(x1,y1,x2,y2) 
void m_draw(x2, y2)
int x2, y2;
{
  int x1,y1;
  Mfprintf(trace, "m_draw(%d, %d)\n", x2, y2);

  TRNSFRM(x2, y2);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_line(curx, cury, x2, y2);
    curx = x2;
    cury = y2;
    return;
  }

  x1=curx;
  y1=cury;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

#ifdef EXTRA_BUFFERING
  buffer_line(currentcolor, curx, cury, x2, y2);
#else
  Xfprintf(stderr, "XDrawLine()\n");
  checkcur(x1,y1,x2,y2);
/*
  if ((x1 == x2) && (y1 == y2))
    GrPlot(x1,y1,currentcolor);
  else
    if(x1==x2)
	GrVLine(x1,y1,y2,currentcolor);
    else
    if(y1==y2)
	GrHLine(x1,x2,y1,currentcolor);
    else
    GrLine( x1, y1, x2, y2,currentcolor);
*/
  MoveToEx(hdc,x1,y1,NULL);
  LineTo(hdc,x2,y2);
  checkcur(x1,y1,x2,y2);      
#endif /* EXTRA_BUFFERING */
  curx = x2;
  cury = y2;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_drawrel(dx, dy)
int dx, dy;
{
  Mfprintf(trace, "m_drawrel(%d, %d)\n", dx, dy);

  DTRNSFRM(dx, dy);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_line(curx, cury, curx+dx, cury+dy);
    curx += dx;
    cury += dy;
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

#ifdef EXTRA_BUFFERING
  buffer_line(currentcolor, curx, cury, curx+dx, cury+dy);
#else
  Xfprintf(stderr, "XDrawLine()\n");
  checkcur(curx,cury,curx+dx,cury+dy);
  MoveToEx(hdc,curx,cury,NULL);
  LineTo(hdc,curx+dx,cury+dy);
//  GrLine( curx, cury, curx+dx, cury+dy,currentcolor);
  checkcur(curx,cury,curx+dx,cury+dy);
#endif /* EXTRA_BUFFERING */
  curx += dx;
  cury += dy;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_move2(x, y)
int x, y;
{
  Mfprintf(trace, "m_move2(%d, %d)\n", x, y);

  TRNSFRM(x, y);

  curx = x;
  cury = y;
}

void m_moverel2(dx, dy)
int dx, dy;
{
  Mfprintf(trace, "m_moverel2(%d, %d)\n", dx, dy);

  DTRNSFRM(dx, dy);

  curx += dx;
  cury += dy;
}

void m_seeposn(x, y)
int *x, *y;
{
  int tx, ty;

  Mfprintf(trace, "m_seeposn(x, y)\n");

  tx = curx;
  ty = cury;

  UNTRNSFRM(tx, ty);

  *x = curx;
  *y = cury;
}

void m_drawline(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  Mfprintf(trace, "m_drawline(%d, %d, %d, %d)\n", x1, y1, x2, y2);

  TRNSFRM(x1, y1);
  TRNSFRM(x2, y2);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_line(x1, y1, x2, y2);
    return;
  }

  if((x1<0 && x2<0) || (x1>m_across && x2>m_across) ||
    (y1<0 && y2<0) || (y1>m_down && y2>m_down)) return;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

#ifdef EXTRA_BUFFERING
  if ((x1 == x2) && (y1 == y2))
    buffer_point(currentcolor, x1, y1);
  else
    buffer_line(currentcolor, x1, y1, x2, y2);
#else
  Xfprintf(stderr, "XDrawLine()\n");
  checkcur(x1,y1,x2,y2);
/*
  if ((x1 == x2) && (y1 == y2))
    GrPlot(x1,y1,currentcolor);
  else
    if(x1==x2)
	GrVLine(x1,y1,y2,currentcolor);
    else
    if(y1==y2)
	GrHLine(x1,x2,y1,currentcolor);
    else
    GrLine( x1, y1, x2, y2,currentcolor);
*/
  MoveToEx(hdc,x1,y1,NULL);
  LineTo(hdc,x2,y2);
checkcur(x1,y1,x2,y2);       
#endif /* EXTRA_BUFFERING */

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

int hitdet_drawrect(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  if (((x1 >= m_clip_x1 && x1 <= m_clip_x2) ||
       (x2 >= m_clip_x1 && x2 <= m_clip_x2)) &&
      (y1 >= m_clip_y1 || y2 >= m_clip_y1) &&
      (y1 <= m_clip_y2 || y2 <= m_clip_y2))
    return 1;
  if (((y1 >= m_clip_y1 && y1 <= m_clip_y2) ||
       (y2 >= m_clip_y1 && y2 <= m_clip_y2)) &&
      (x1 >= m_clip_x1 || x2 >= m_clip_x1) &&
      (x1 <= m_clip_x2 || x2 <= m_clip_x2))
    return 1;
  return 0;
}

void m_drawrect(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  int x, y;
  int i,j;
 // GrLineOption lo;

  if(x1>x2) {x=x1;x1=x2;x2=x;}
  if(y1>y2) {y=y1;y1=y2;y2=y;}

  Mfprintf(trace, "m_drawrect(%d, %d, %d, %d)\n", x1, y1, x2, y2);

  LTRNSFRM(x1, y1);
  LTRNSFRM(x2, y2);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_drawrect(x1, y1, x2, y2);
    return;
  }

  x = MIN(x1,x2);
  y = MIN(y1,y2);

  

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
  
#ifdef EXTRA_BUFFERING
  if (x1 == x2)
    if (y1 == y2)
      buffer_point(currentcolor, x, y);
    else
      buffer_line(currentcolor, x1, y1, x1, y2);
  else
    if (y1 == y2)
      buffer_line(currentcolor, x1, y1, x2, y1);
    else
      buffer_rect(currentcolor, x, y, x1+x2-x-x, y1+y2-y-y);
#else
  Xfprintf(stderr, "XDrawRectangle()\n");
  checkcur(x1,y1,x2,y2);
   
   if(currentlinestyle) {
    
     for(i=x1;i<=x2;i+=8) {
     j=i+4;
     if (j>x2) j=x2;
      GrLine(i,y1,j,y1,currentcolor);
      GrLine(i,y2,j,y2,currentcolor);
      }
     for(i=y1;i<=y2;i+=8) {
     j=i+4;
     if(j>y2) j=y2;
      GrLine(x1,i,x1,j,currentcolor);
      GrLine(x2,i,x2,j,currentcolor);
      }
   } else {
      
//	 GrBox(x1, y1, x2, y2,currentcolor);
    MoveToEx(hdc,x1,y1,NULL);
    LineTo(hdc,x1,y2);
    LineTo(hdc,x2,y2);
    LineTo(hdc,x2,y1);
    LineTo(hdc,x1,y1);
}
    checkcur(x1,y1,x2,y2);    
#endif /* EXTRA_BUFFERING */

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

int hitdet_fillrect(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  return ((x1 >= m_clip_x1 || x2 >= m_clip_x1) &&
	  (x1 <= m_clip_x2 || x2 <= m_clip_x2) &&
	  (y1 >= m_clip_y1 || y2 >= m_clip_y1) &&
	  (y1 <= m_clip_y2 || y2 <= m_clip_y2));
}

void m_fillrect(x1, y1, x2, y2)
int x1, y1, x2, y2;
{
  int x, y;
RECT rect;
HBRUSH br;
 
rect.left=x1;
rect.top=y1;
rect.right=x2+1;
rect.bottom=y2+1;
//GrClearScreen(cols[0]);
//FillRect(hdc,&rect,bgbrush);
  Mfprintf(trace, "m_fillrect(%d, %d, %d, %d)\n", x1, y1, x2, y2);

  LTRNSFRM(x1, y1); 
  LTRNSFRM(x2, y2);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_fillrect(x1, y1, x2, y2);
    return;
  }

  x = MIN(x1,x2);
  y = MIN(y1,y2);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
  
#ifdef EXTRA_BUFFERING
  if (x1 == x2)
    if (y1 == y2)
      buffer_point(currentcolor, x, y);
    else
      buffer_line(currentcolor, x1, y1, x1, y2);
  else
    if (y1 == y2)
      buffer_line(currentcolor, x1, y1, x2, y1);
    else
      buffer_fillrect(currentcolor, x, y, x1+x2-x-x+1, y1+y2-y-y+1);
#else
  Xfprintf(stderr, "XFillRectangle()\n");
      checkcur(x1,y1,x2,y2);    
    if(currentmode==m_xor) {
        InvertRect(hdc,&rect);
                           }
                           else {
                              
                               
    br=CreateSolidBrush(cols[colindex]);
    FillRect(hdc,&rect,br);
    DeleteObject(br);
                                }
//      GrFilledBox(x1, y1, x2, y2,currentcolor);
	checkcur(x1,y1,x2,y2);       
#endif /* EXTRA_BUFFERING */

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}



void m_grid(int x1,int y1,int x2,int y2,int dx,int dy,int ax,int ay) {
  int i,j;

  LTRNSFRM(x1, y1);
  LTRNSFRM(x2, y2);
  DTRNSFRM(dx, dy);
  TRNSFRM(ax, ay);
  for(i=x1;i<x2;i+=dx)
    for(j=y1;j<y2;j+=dy) {
/*	    if((j-y1)%ax==0 && (i-x1)%ax==0) {
	      m_color(14);
	      GrLine(i,j,i+1,j+1,0);
	      m_color(m_xblue);
	    } else
	    */
	    GrLine(i,j,i+1,j+1,0);
	 }
}

int hitdet_point(int x,int y)
{
  return (x >= m_clip_x1 && x <= m_clip_x2 &&
	  y >= m_clip_y1 && y <= m_clip_y2);
}

void m_drawpoint(int x,int y)
{
  TRNSFRM(x, y);

  Mfprintf(trace, "m_drawpoint()\n");

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_point(x, y);
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

#ifdef EXTRA_BUFFERING
  buffer_point(currentcolor, x, y);
#else
  Xfprintf(stderr, "XDrawPoint()\n");
  checkcur(x,y,x,y);
 // GrPlot( x, y, currentcolor);
  GrLine(x,y,x+1,y+1,0);
  checkcur(x,y,x,y);
#endif /* EXTRA_BUFFERING */

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

int hitdet_ellipse(int x,int y,int rx,int ry,int filled)
{
  int clp_x1 = m_clip_x1, clp_x2 = m_clip_x2;
  int clp_y1 = m_clip_y1, clp_y2 = m_clip_y2;
  int rsq, xx, yy;

  if (rx == 0 || ry == 0)
    return hitdet_drawrect(x - rx, y - ry, x + rx, y + ry);
  if (ry > rx) {
    clp_x1 = clp_x1 * ry / rx;
    clp_x2 = clp_x2 * ry / rx;
    x = x * ry / rx;
    rx = ry;
  } else if (rx > ry) {
    clp_y1 = clp_y1 * rx / ry;
    clp_y2 = clp_y2 * rx / ry;
    y = y * rx / ry;
  }
  clp_x1 -= x;
  clp_x2 -= x;
  clp_y1 -= y;
  clp_y2 -= y;
  rsq = rx * rx;
  if (clp_x1 > 0) {
    if (clp_y1 > 0) {
      if (clp_x1*clp_x1 + clp_y1*clp_y1 > rsq)
	return 0;
      return (filled || clp_x2*clp_x2 + clp_y2*clp_y2 >= rsq);
    } else if (clp_y2 >= 0) {
      if (clp_x1 > rx)
	return 0;
      yy = (-clp_y1 > clp_y2) ? clp_y1 : clp_y2;
      return (filled || clp_x2*clp_x2 + yy*yy >= rsq);
    } else {
      if (clp_x1*clp_x1 + clp_y2*clp_y2 > rsq)
	return 0;
      return (filled || clp_x2*clp_x2 + clp_y1*clp_y1 >= rsq);
    }
  } else if (clp_x2 >= 0) {
    if (clp_y1 > 0) {
      if (clp_y1 > rx)
	return 0;
      xx = (-clp_x1 > clp_x2) ? clp_x1 : clp_x2;
      return (filled || clp_y2*clp_y2 + xx*xx >= rsq);
    } else if (clp_y2 >= 0) {
      if (filled)
	return 1;
      xx = (-clp_x1 > clp_x2) ? clp_x1 : clp_x2;
      yy = (-clp_y1 > clp_y2) ? clp_y1 : clp_y2;
      return (xx*xx + yy*yy >= rsq);
    } else {
      if (-clp_y2 > rx)
	return 0;
      xx = (-clp_x1 > clp_x2) ? clp_x1 : clp_x2;
      return (filled || clp_y1*clp_y1 + xx*xx >= rsq);
    }
  } else {
    if (clp_y1 > 0) {
      if (clp_x2*clp_x2 + clp_y1*clp_y1 > rsq)
	return 0;
      return (filled || clp_x1*clp_x1 + clp_y2*clp_y2 >= rsq);
    } else if (clp_y2 >= 0) {
      if (-clp_x2 > rx)
	return 0;
      yy = (-clp_y1 > clp_y2) ? clp_y1 : clp_y2;
      return (filled || clp_x1*clp_x1 + yy*yy >= rsq);
    } else {
      if (clp_x2*clp_x2 + clp_y2*clp_y2 > rsq)
	return 0;
      return (filled || clp_x1*clp_x1 + clp_y1*clp_y1 >= rsq);
    }
  }
}

void m_circle(x, y, r)
int x, y, r;
{
  Mfprintf(trace, "m_circle(x, y, r)\n", x, y, r);

  TRNSFRM(x, y);
  r = abs(r);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_ellipse(x, y, r, r, 0);
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

  Xfprintf(stderr, "XDrawArc()\n");
 checkcur(x-r,y-r,x+r,y+r);
  SelectObject(hdc,GetStockObject(HOLLOW_BRUSH));
  Ellipse(hdc,x-r,y-r,x+r,y+r);
// GrCircle( x, y, r, currentcolor);
 checkcur(x-r,y-r,x+r,y+r);


#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_drawarc(long x,long  y,long  rx,long  ry,double theta1,double theta2,double rotate,long chord);

void m_ellipse(x, y, rx, ry, c)
int x, y, rx, ry, c;
{
Mfprintf(trace, "m_ellipse %d %d %d %d %d\n",x, y, rx, ry, c);
TRNSFRM(x,y);
DTRNSFRM(rx,ry);
rx=abs(rx);
ry=abs(ry);
checkcur(x-rx,y-ry,x+rx,y+ry);
SelectObject(hdc,GetStockObject(HOLLOW_BRUSH));
Ellipse(hdc,x-rx,y-ry,x+rx,y+ry);
//GrEllipse(x,y,rx,ry,(currentcolor &0xff000000 ) | cols[c]);
checkcur(x-rx,y-ry,x+rx,y+ry);
//m_drawarc(x,y,rx,ry,0.0,360.0,0.0,0l);
}

void m_ellipse2(x, y, rx, ry, c1, c2)
int x, y, rx, ry, c1, c2;
{
}

void m_drawarc(x, y, rx, ry, theta1, theta2, rotate, chord)
long x, y, rx, ry;
double theta1, theta2, rotate;
long chord;
{
  double a, c1, s1, c2, s2, c3, s3, rc, rs, d, th1, th2, start, stop,
  rcc1, rcs1, rsc1, rss1, rcc2, rcs2, rsc2, rss2, temp;
  long q, quad1, quad2, chx, chy;
  boolean rotflag;
  
  Mfprintf(trace, "m_drawarc(%ld, %ld, %ld, %ld, %f, %f, %f, %ld)\n",
			       x,   y,  rx, ry, theta1, theta2, rotate, chord);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
  
  if (rx < 0 && ry < 0) {
    temp = theta1;
    theta1 = theta2;
    theta2 = temp;
  }
  
  if (!(theta1 < theta2 && rx && ry))
    return;
  if (rx < 0)
    rx = -rx;
  if (ry < 0)
    ry = -ry;

  if (rotflag = (rotate != 0)) {
    if (rx == ry) {
      rotflag = 0;
      theta1 += rotate;
      theta2 += rotate;
    } else {
      rs = sin(rotate*dr);
      rc = cos(rotate*dr);
    }
  }
  if (theta2 - theta1 >= 360.0) {
    theta1 = 0.0;
    theta2 = 360.0;
    s1 = 0.0;
    c1 = 1.0;
    if (chord != m_extarc) {
      if (rotflag)
	m_move2(x + (long)floor(rx*rc + 0.5), y + (long)floor(rx*rs + 0.5));
      else
	m_move2(x + rx, y);
    }
    chord = 0;
  } else {
    s1 = sin(theta1*dr);
    c1 = cos(theta1*dr);
    if (rotflag) {
      chx = x + (long)floor(rx * c1 * rc - ry * s1 * rs + 0.5);
      chy = y + (long)floor(ry * s1 * rc + rx * c1 * rs + 0.5);
    } else {
      chx = x + (long)floor(rx * c1 + 0.5);
      chy = y + (long)floor(ry * s1 + 0.5);
    }
    switch (chord) {
    case m_pie:
      m_move2(x, y);
      m_draw(chx, chy);
      break;
    case m_extarc:
      break;
    default:
      m_move(chx, chy);
    }
  }
  th1 = theta1-floor(theta1/90.0)*90.0;
  quad1 = (int)(theta1/90.0) & 3;
  th2 = theta2-floor(theta2/90.0)*90.0;
  quad2 = (int)(theta2/90.0) & 3;
  start = th1;
  if (quad2 < quad1 || (quad2 == quad1 && th2 <= th1))
    quad2 += 4;
  if (quad2 == quad1 + 1 && th2 <= th1) {
    quad2 = quad1;
    th2 += 90.0;
  }
  if (quad1 < quad2) {
    stop = 90.0;
    d = (90.0 - start) / 2;
  }
  for (q = quad1; q <= quad2; q++) {
    if (q == quad2) {
      stop = th2;
      s2 = sin(theta2*dr);
      c2 = cos(theta2*dr);
      d = (stop - start) / 2;
    } else {
      s2 = sin((stop+q*90)*dr);
      c2 = cos((stop+q*90)*dr);
    }
    if (d > 1e-5) {
      if (d == 45.0)
	a = 0.5522847498;
      else {
	s3 = sin(d*dr);
	c3 = cos(d*dr);
	a = 4 * (1 - c3) / (3 * s3);
      }
      if (rotflag) {
	rcc1 = rc * c1;
	rcs1 = rc * s1;
	rsc1 = rs * c1;
	rss1 = rs * s1;
	rcc2 = rc * c2;
	rcs2 = rc * s2;
	rsc2 = rs * c2;
	rss2 = rs * s2;
	m_cbezier(x + (long)floor(rx * rcc1 - ry * rss1 + 0.5),
		  y + (long)floor(ry * rcs1 + rx * rsc1 + 0.5),
		  x + (long)floor(rx * (rcc1 - a * rcs1) -
				  ry * (rss1 + a * rsc1) + 0.5),
		  y + (long)floor(ry * (rcs1 + a * rcc1) +
				  rx * (rsc1 - a * rss1) + 0.5),
		  x + (long)floor(rx * (rcc2 + a * rcs2) +
				  ry * (a * rsc2 - rss2) + 0.5),
		  y + (long)floor(ry * (rcs2 - a * rcc2) +
				  rx * (rsc2 + a * rss2) + 0.5),
		  x + (long)floor(rx * rcc2 - ry * rss2 + 0.5),
		  y + (long)floor(ry * rcs2 + rx * rsc2 + 0.5), 1000L);
      } else
	m_cbezier(x + (long)floor(rx * c1 + 0.5),
		  y + (long)floor(ry * s1 + 0.5),
		  x + (long)floor(rx * (c1 - a * s1) + 0.5),
		  y + (long)floor(ry * (s1 + a * c1) + 0.5),
		  x + (long)floor(rx * (c2 + a * s2) + 0.5),
		  y + (long)floor(ry * (s2 - a * c2) + 0.5),
		  x + (long)floor(rx * c2 + 0.5),
		  y + (long)floor(ry * s2 + 0.5), 1000L);
    }
    if (q < quad2) {
      start = 0.0;
      d = 45.0;
      s1 = s2;
      c1 = c2;
    }
  }
  switch (chord) {
  case m_pie:
    m_draw(x, y);
    break;
  case m_chord:
    m_draw(chx, chy);
    break;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
}

typedef long pts[506];

void m_fillarc(x, y, rx, ry, theta1, theta2, rotate, chord)
long x, y, rx, ry;
double theta1, theta2, rotate;
long chord;
{
  pts xp, yp;
  double ss, cc, rs, rc, rsx, rsy, rcx, rcy, th, temp;
  long i, n;
  boolean rotflag, fullflag;

  Mfprintf(trace, "m_fillarc(%ld, %ld, %ld, %ld, %f, %f, %f, %ld)\n",
			       x,   y,  rx, ry, theta1, theta2, rotate, chord);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
  
  if (rx < 0 && ry < 0) {
    temp = theta1;
    theta1 = theta2;
    theta2 = temp;
  }
  if (!(theta1 < theta2 && rx && ry))
    return;
  if (rx < 0)
    rx = -rx;
  if (ry < 0)
    ry = -ry;
  rotflag = (rotate != 0);
  fullflag = (theta2 - theta1 >= 360.0);
  if (fullflag && !rotflag) {
    m_ellipse(x, y, rx, ry, m_trans);
    return;
  }
  if (fullflag) {
    theta1 = 0.0;
    theta2 = 360.0;
  }
  if (rotflag) {
    if (rx == ry) {
      rotflag = 0;
      theta1 += rotate;
      theta2 += rotate;
    } else {
      rs = sin(rotate*dr);
      rc = cos(rotate*dr);
      rcx = rc * rx;
      rcy = rc * ry;
      rsx = rs * rx;
      rsy = rs * ry;
    }
  }
  n = (long)floor((theta2 - theta1) * (rx + ry) / 2000 + 0.5) + 3;
  if (n > 500)
    n = 500;
  th = (theta2 - theta1) / n;
  if (fullflag)
    --n;
  for (i = 0; i <= n; i++) {
    if (i == n) {
      ss = sin(theta2*dr);
      cc = cos(theta2*dr);
    } else {
      ss = sin((theta1+th*i)*dr);
      cc = cos((theta1+th*i)*dr);
    }
    if (rotflag) {
      xp[i] = x + (long)floor(rcx * cc - rsy * ss + 0.5);
      yp[i] = y + (long)floor(rcy * ss + rsx * cc + 0.5);
    } else {
      xp[i] = x + (long)floor(rx * cc + 0.5);
      yp[i] = y + (long)floor(ry * ss + 0.5);
    }
  }
  if (chord == m_pie && !fullflag) {
    ++n;
    xp[n] = x;
    yp[n] = y;
  }
  m_fillpoly(n + 1, xp, yp);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
}

void m_roundrect(x1, y1, x2, y2, rx, ry, c)
int x1, y1, x2, y2, rx, ry, c;
{
}

void m_roundrect2(x1, y1, x2, y2, rx, ry, c1, c2)
int x1, y1, x2, y2, rx, ry, c1, c2;
{
}

static XPoint bezbuf[2048];
static int bezbufp;
static int bezthresh;

int hitdet_bezier(x1, y1, x2, y2, x3, y3, x4, y4)
{
  int minx, maxx, miny, maxy;

  minx = (x1 < x2) ? x1 : x2;
  if (x3 < minx) minx = x3;
  if (x4 < minx) minx = x4;
  maxx = (x1 > x2) ? x1 : x2;
  if (x3 > maxx) maxx = x3;
  if (x4 > maxx) maxx = x4;
  miny = (y1 < y2) ? y1 : y2;
  if (y3 < miny) miny = y3;
  if (y4 < miny) miny = y4;
  maxy = (y1 > y2) ? y1 : y2;
  if (y3 > maxy) maxy = y3;
  if (y4 > maxy) maxy = y4;
  if (maxx < m_clip_x1 || minx > m_clip_x2 ||
      maxy < m_clip_y1 || miny > m_clip_y2)
    return 0;
  if (minx >= m_clip_x1 && maxx <= m_clip_x2 && miny >= m_clip_y1 && maxy <= m_clip_y2)
    return 1;
  if (x1 >= m_clip_x1 && x1 <= m_clip_x2 && y1 >= m_clip_y1 && y1 <= m_clip_y2)
    return 1;
  if (x4 >= m_clip_x1 && x4 <= m_clip_x2 && y4 >= m_clip_y1 && y4 <= m_clip_y2)
    return 1;
  if (maxx - minx < 2 || maxy - miny < 2)
    return hitdet_fillrect(minx, miny, maxx, maxy);
  return (hitdet_bezier(x1, y1, (x1+x2)>>1, (y1+y2)>>1,
			(x1+(x2<<1)+x3)>>2, (y1+(y2<<1)+y3)>>2,
			(x1+3*x2+3*x3+x4)>>3, (y1+3*y2+3*y3+y4)>>3) ||
	  hitdet_bezier((x4+3*x3+3*x2+x1)>>3, (y4+3*y3+3*y2+y1)>>3,
			(x4+(x3<<1)+x2)>>2, (y4+(y3<<1)+y2)>>2,
			(x4+x3)>>1, (y4+y3)>>1, x4, y4));
}

void dobezier(x1, y1, x2, y2, x3, y3, x4, y4, fx, fy)
int x1, y1, x2, y2, x3, y3, x4, y4, fx, fy;
{
int i;
  if ((abs((y4-y3)*(x3-x1)-(y3-y1)*(x4-x3)) < bezthresh) &&
      (abs((y4-y2)*(x2-x1)-(y2-y1)*(x4-x2)) < bezthresh)) {
    bezbuf[bezbufp].x = x4>>4;
    bezbuf[bezbufp++].y = y4>>4;
    if(x4==fx && y4==fy)
    for (i=0;i<bezbufp-1;i++) {
    checkcur(bezbuf[i].x,bezbuf[i].y,bezbuf[i+1].x,bezbuf[i+1].y);     
    GrLine(bezbuf[i].x,bezbuf[i].y,
    bezbuf[i+1].x,bezbuf[i+1].y,currentcolor);     
    checkcur(bezbuf[i].x,bezbuf[i].y,bezbuf[i+1].x,bezbuf[i+1].y);        
    }
  } else {
    dobezier(x1, y1, (x1+x2)>>1, (y1+y2)>>1,
	     (x1+(x2<<1)+x3)>>2, (y1+(y2<<1)+y3)>>2,
	     (x1+3*x2+3*x3+x4)>>3, (y1+3*y2+3*y3+y4)>>3, fx, fy);
    dobezier((x4+3*x3+3*x2+x1)>>3, (y4+3*y3+3*y2+y1)>>3,
	     (x4+(x3<<1)+x2)>>2, (y4+(y3<<1)+y2)>>2,
	     (x4+x3)>>1, (y4+y3)>>1, x4, y4, fx, fy);
  }
}

void m_bezier(x1, y1, x2, y2, x3, y3, x4, y4)
int x1, y1, x2, y2, x3, y3, x4, y4;
{
  Mfprintf(trace, "m_bezier(%d, %d, %d, %d, %d, %d, %d, %d)\n",
			     x1, y1, x2, y2, x3, y3, x4, y4   );

  TRNSFRM(x1, y1);
  TRNSFRM(x2, y2);
  TRNSFRM(x3, y3);
  TRNSFRM(x4, y4);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_bezier(x1, y1, x2, y2, x3, y3, x4, y4);
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

  bezbuf[0].x = x1;
  bezbuf[0].y = y1;
  bezbufp = 1;
  bezthresh = 2500;
  dobezier((x1<<4)+8, (y1<<4)+8, (x2<<4)+8, (y2<<4)+8, (x3<<4)+8, (y3<<4)+8,
	   (x4<<4)+8, (y4<<4)+8, (x4<<4)+8, (y4<<4)+8);
 
#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_bezier2(x1, y1, x2, y2, x3, y3, x4, y4, thresh)
int x1, y1, x2, y2, x3, y3, x4, y4, thresh;
{
  Mfprintf(trace, "m_bezier2(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n",
			      x1, y1, x2, y2, x3, y3, x4, y4, thresh);

  TRNSFRM(x1, y1);
  TRNSFRM(x2, y2);
  TRNSFRM(x3, y3);
  TRNSFRM(x4, y4);

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_bezier(x1, y1, x2, y2, x3, y3, x4, y4);
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

  bezbuf[0].x = x1;
  bezbuf[0].y = y1;
  bezbufp = 1;
  bezthresh = thresh;
  dobezier((x1<<4)+8, (y1<<4)+8, (x2<<4)+8, (y2<<4)+8, (x3<<4)+8, (y3<<4)+8,
	   (x4<<4)+8, (y4<<4)+8, (x4<<4)+8, (y4<<4)+8);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_cbezier(x1, y1, x2, y2, x3, y3, x4, y4, thresh)
int x1, y1, x2, y2, x3, y3, x4, y4, thresh;
{
  Mfprintf(trace, "m_cbezier(%d, %d, %d, %d, %d, %d, %d, %d, %d)\n",
			      x1, y1, x2, y2, x3, y3, x4, y4, thresh);

  TRNSFRM(x1, y1);
  TRNSFRM(x2, y2);
  TRNSFRM(x3, y3);
  TRNSFRM(x4, y4);

  if (currentmode == m_hitdet) {
    m_hitcount += (hitdet_line(curx, cury, x1, y1) ||
		   hitdet_bezier(x1, y1, x2, y2, x3, y3, x4, y4));
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

  bezbuf[0].x = curx;
  bezbuf[0].y = cury;
  bezbuf[1].x = x1;
  bezbuf[1].y = y1;

  bezbufp = 2;
  bezthresh = thresh;

  dobezier((x1<<4)+8, (y1<<4)+8, (x2<<4)+8, (y2<<4)+8, (x3<<4)+8, (y3<<4)+8,
	   (x4<<4)+8, (y4<<4)+8, (x4<<4)+8, (y4<<4)+8);
 
  curx = x4;
  cury = y4;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

/*
  Polycurve stuff added by Adam Greenblatt, 3 March 1990.  Sigh.
*/

#define SCALE           256

/* Local variables for polycurve: */
struct LOC_polycurve {
    int meef;
} ;

static void polycurve_doit(x0, y0, x1, y1, x2, y2,
			   x3, y3, x4, y4, x5, y5,
			   LINK_polycurve)
long x0, y0, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5;
struct LOC_polycurve *LINK_polycurve;
{
    if (((x4 < 0) ? -x4 : x4) + ((x5 < 0) ? -x5 : x5) + ((y4 < 0) ? -y4 : y4) + ((y5
	< 0) ? -y5 : y5) < SCALE) {
	m_cbezier(x0 / SCALE, y0 / SCALE, (x0 + x1 / 3) / SCALE, (y0 + y1 / 3) /
		  SCALE, (x0 + (x1 * 2 + x2) / 3) / SCALE, (y0 + (y1 * 2 + y2) /
	    3) / SCALE, (x0 + x1 + x2 + x3 + x4 + x5) / SCALE, (y0 + y1 + y2 + y3
	    + y4 + y5) / SCALE, 2500L);
	return;
    }
    polycurve_doit(x0, y0, x1 / 2, y1 / 2, x2 / 4, y2 / 4,
		   x3 / 8, y3 / 8, x4 / 16, y4 / 16,
		   x5 / 32, y5 / 32, LINK_polycurve);
    x1 *= 16;
    y1 *= 16;
    x2 *= 8;
    y2 *= 8;
    x3 *= 4;
    y3 *= 4;
    x4 *= 2;
    y4 *= 2;
    polycurve_doit(x0 + (x1 + x2 + x3 + x4 + x5) / 32,
		   y0 + (y1 + y2 + y3 + y4 + y5) / 32,
		   (x1 + x2 * 2 + x3 * 3 + x4 * 4 + x5 * 5) / 32,
		   (y1 + y2 * 2 + y3 * 3 + y4 * 4 + y5 * 5) / 32,
		   (x2 + x3 * 3 + x4 * 6 + x5 * 10) / 32,
		   (y2 + y3 * 3 + y4 * 6 + y5 * 10) / 32,
		   (x3 + x4 * 4 + x5 * 10) / 32, 
		   (y3 + y4 * 4 + y5 * 10) / 32,
		   (x4 + x5 * 5) / 32,
		   (y4 + y5 * 5) / 32,
		   x5 / 32, y5 / 32,
		   LINK_polycurve);
}

void m_polycurve(x0, y0, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5)
double x0, y0, x1, y1, x2, y2, x3, y3, x4, y4, x5, y5;
{
    struct LOC_polycurve V_polycurve;

    m_move((long)floor(SCALE * x0 + 0.5) / SCALE,
	   (long)floor(SCALE * y0 + 0.5) / SCALE);
    polycurve_doit((long)floor(SCALE * x0 + 0.5),
		   (long)floor(SCALE * y0 + 0.5),
		   (long)floor(SCALE * x1 + 0.5),
		   (long)floor(SCALE * y1 + 0.5),
		   (long)floor(SCALE * x2 + 0.5),
		   (long)floor(SCALE * y2 + 0.5),
		   (long)floor(SCALE * x3 + 0.5), 
		   (long)floor(SCALE * y3 + 0.5),
		   (long)floor(SCALE * x4 + 0.5), 
		   (long)floor(SCALE * y4 + 0.5),
		   (long)floor(SCALE * x5 + 0.5), 
		   (long)floor(SCALE * y5 + 0.5),
		   &V_polycurve);
}

int hitdet_drawpoly(n, points)
int n;
XPoint *points;
{
  int i;

  if (hitdet_line(points[0].x, points[0].y, points[n-1].x, points[n-1].y))
    return 1;
  for (i = 1; i < n; i++) {
    if (hitdet_line(points[i].x, points[i].y, points[i-1].x, points[i-1].y)) {
      return 1;
    }
  }
  return 0;
}

void m_drawpoly(n, x, y)
int n, x[], y[];
{
}



#if 1

/* If no edges intersect, then rectangle must be entirely inside or
   entirely outside polygon.  Thus, we can simply check if any one point
   in the rectangle is in the polygon. */

int hitdet_fillpoly(n, points)
int n;
XPoint *points;
{
  int i, y1, y2, count;
  XPoint *pt1, *pt2;

  if (hitdet_drawpoly(n, points))
    return 1;
  count = 0;
  pt1 = points;
  pt2 = &points[n-1];
  for (i = 0; i < n; i++) {
    y1 = MIN(pt1->y, pt2->y);
    y2 = MAX(pt1->y, pt2->y);
    if (y1 <= m_clip_y1 && y2 > m_clip_y1) {
      if ((pt2->x - pt1->x) * (m_clip_y1 - pt1->y) / (pt2->y - pt1->y) >
	  (m_clip_x1 - pt1->x))
	count++;
    }
    pt2 = pt1;
    pt1++;
  }
  return (count & 1);
}

#else

#define SWAPINTS(x,y)  { int _t = (x); (x) = (y); (y) = _t; }

struct hitdet_edge {
  int x1, y1, x2, y2, dir, curx;
};

int hitdet_fillpoly_comp(e1, e2)
struct hitdet_edge *e1, *e2;
{
  return e1->y1 - e2->y1;
}

int hitdet_fillpoly(n, x, y)
int n, x[], y[];
{
  int i, j, count, cury1, cury2, first, last;
  struct hitdet_edge *edges, *e, tedge;

  printf("\n\n\n\nhitdet_fillpoly called...\n");     /***/

  /* Create edges array */
  edges = (struct hitdet_edge *) calloc(n, sizeof(struct hitdet_edge));
  edges[0].x2 = x[0];
  edges[0].y2 = y[0];
  TRNSFRM(edges[0].x2, edges[0].y2);
  printf("edges[0] = (%d,%d)\n", edges[0].x2, edges[0].y2);   /***/
  for (i = 1, e = &edges[1]; i < n; i++, e++) {
    e->x1 = e[-1].x2;
    e->y1 = e[-1].y2;
    e->x2 = x[i];
    e->y2 = y[i];
    TRNSFRM(e->x2, e->y2);
    printf("edges[%d] = (%d,%d)\n", i, edges[i].x2, edges[i].y2);   /***/
  }
  edges[0].x1 = edges[n-1].x2;
  edges[0].y1 = edges[n-1].y2;

  /* Sort each edge so y1 <= y2 */
  for (i = 0, e = edges; i < n; i++, e++) {
    if (e->y1 > e->y2) {
      SWAPINTS(e->x1, e->x2);
      SWAPINTS(e->y1, e->y2);
      e->dir = -1;
    } else
      e->dir = 1;
    printf("edges[%d] = (%d,%d) - (%d,%d)\n",                     /***/
	   i, edges[i].x1, edges[i].y1, edges[i].x2, edges[i].y2);   /***/
  }

  /* Sort edges in order of increasing y1 */
  qsort(edges, n, sizeof(struct hitdet_edge), hitdet_fillpoly_comp);
  for (i = 0; i < n; i++)    /***/
    printf("edges[%d] = (%d,%d) - (%d,%d)\n",                     /***/
	   i, edges[i].x1, edges[i].y1, edges[i].x2, edges[i].y2);   /***/

  /* Initialize "active" list */
  first = 0;
  last = 0;
  cury1 = edges[0].y1;
  if (cury1 < m_clip_y1)
    cury1 = m_clip_y1;
  while (cury1 <= m_clip_y2) {

    /* Collect things into active list */
    while (last < n && edges[last].y1 <= cury1)
      last++;

    /* Find next y position of interest */
    if (last < n) {
      cury2 = edges[last].y1;
      if (cury2 > m_clip_y2)
	cury2 = m_clip_y2 + 1;
    } else
      cury2 = m_clip_y2 + 1;
    printf("cury1 = %d, cury2 = %d, first=%d, last=%d\n",    /***/
	   cury1, cury2, first, last);              /***/

    /* Compute x-coordinate of each edge at this y position */
    for (i = first, e = &edges[first]; i < last; i++, e++) {
      e->curx = e->x1 + (cury2 - e->y1) * (e->x2 - e->x1) / (e->y2 - e->y1);
    }

    /* Sort active list on x, dropping edges if necessary */
    /* (Insertion sort because list is likely almost-sorted already) */
    for (i = first+1; i < last; i++) {
      e = &edges[i];
      j = i;
      while (j > first &&
	     (e->y2 <= cury1 || e->curx < e[-1].curx)) {
	tedge = e[0];
	e[0] = e[-1];
	e[-1] = tedge;
	j--, e--;
      }
    }
    while (first < last && edges[first].y2 <= cury1)
      first++;
    printf("first = %d, last = %d\n", first, last);    /***/
    for (i = first; i < last; i++)                     /***/
      printf("edges[%d] = (%d,%d) - (%d,%d) at %d\n",                /***/
	     i, edges[i].x1, edges[i].y1, edges[i].x2, edges[i].y2,     /***/
	     edges[i].curx);   /***/

    /* Check if any trapezoids intersect clipping rectangle */
    for (i = first; i < last; i = j) {
      j = i;
      count = 0;
      do {
	count += edges[j].dir;
	j++;
      } while (count != 0 && j < last);
      if (edges[i].curx <= m_clip_x2 && edges[j-1].curx >= m_clip_x1) {
	cfree(edges);
	return 1;     /* Found a visible trapezoid */
      }
    }

    /* Advance to next y position */
    cury1 = cury2;
  }

  /* No trapezoids intersect */
  cfree(edges);
  return 0;
}

#endif

typedef int pltype[2];

void m_fillpoly(n, x, y)
int n, x[], y[];
{
  XPoint *pointlist;
  int i, j;

  Mfprintf(trace, "m_fillpoly(%d, x, y)\n", n);

  pointlist = (XPoint *) calloc(n, sizeof(XPoint));

  for (i = 0; i < n; i++) {
    pointlist[i].x = x[i];
    pointlist[i].y = y[i];
    TRNSFRM(pointlist[i].x, pointlist[i].y);
  }

  if (currentmode == m_hitdet) {
    m_hitcount += hitdet_fillpoly(n, pointlist);
    cfree(pointlist);
    return;
  }

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif

  Xfprintf(stderr, "XFillPolygon()\n");
//  GrFilledPolygon(n, (pltype *) pointlist,currentcolor);

  cfree(pointlist);

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_displaytext(char *str)
{
  int dir, desc, len;
  
   m_drawstr(curx,cury,"",str);
 /*

  Mfprintf(trace, "m_displaytext(%s)\n", str);

  len = strlen(str);


#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
  opt.txo_fgcolor.v=currentcolor;
  opt.txo_bgcolor.v=currentcolor&0xff000000;
//  opt.txo_bgcolor.v=currentcolor&0xff000000 | cols[0];
  checkcur(curx,cury,curx+len*6,cury+10);
  GrDrawString(str,len,curx,cury,&opt);
  checkcur(curx,cury,curx+len*6,cury+10);
//  GrTextXY( curx, cury, str, currentcolor,0);

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
  curx += len*8;

#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif
*/
}

void m_drawstr(int x,int  y,char *f,char *str)
{
  int dir, desc, len;
  int x2,y2;

  Mfprintf(trace, "m_drawstr(%d, %d, f, %s)\n", x, y, str);

  TRNSFRM(x, y);

  len = strlen(str);


#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoroff();
#endif
/*
  opt.txo_fgcolor.v=currentcolor;
  opt.txo_bgcolor.v=currentcolor&0xff000000;     
  opt.txo_bgcolor.v=GrOR;
*/

  x2=x+len*6;
  y2=y+8;
  checkcur(x,y,x2,y2); 
  if(currentmode==m_xor) {
    SetTextColor(hdc1,cols[colindex]);
    SetBkColor(hdc1,cols[0]);
    SetBkMode(hdc1,OPAQUE);
    TextOut(hdc1,0,0,str,len);
    BitBlt(hdc,x,y,len*6,8,hdc1,0,0,SRCINVERT);
  }
  else {
	 if(currentmode==m_erase)  
      SetTextColor(hdc,cols[0]);      
    else
      SetTextColor(hdc,cols[colindex]);                    
              
    SetBkMode(hdc, TRANSPARENT); 
    TextOut(hdc,x,y,str,len);
       }
//  GrDrawString(str,len,x,y,&opt);
	checkcur(x,y,x2,y2); 


#ifdef SAVECURSOR
  if (cursor_is_on)
    turncursoron();
#endif

  if (nocache) {
    Ffprintf(stderr, "XFlush()\n");
    XFlush(m_display);
  }
}

void m_centerstr(x, y, f, str)
int x, y;
char *f, *str;
{
m_drawstr(x-strlen(str)*6/2,y,f,str);
}

void m_rightstr(x, y, f, str)
int x, y;
char *f, *str;
{
m_drawstr(x-strlen(str)*6,y,f,str); 
}

long m_strwidth(f, str)      /* daveg, 10/6/89 */
char *f, *str;
{
return strlen(str)*6;
}

/*
---m_getcpicture(x1, y1, x2, y2, p)
int x1, y1, x2, y2;
m_picturevar *p;
{
  
*/

/* Added these two functions for auto raise and lower support for X11.
 * The functions existed but were just #define'ed as nothing.
 * WES - 7/17/91
 */

/* This function raises the graphics window above the alpha window */

void m_graphics_on()
{
}


/* This function raises the alpha window above the graphics window */

void m_alpha_on()
{
}

#//define Button1Mask GR_M_LEFT
//#define Button3Mask GR_M_RIGHT

int keybuf[256];
unsigned char keynext=0,keyfirst=0;
#define thekey (keyfirst!=keynext)?keybuf[keyfirst++]:0;
int thex,they;
int theflags;
int thebuttons;

void addkey(int n) {
   if(keynext<256)
      keybuf[keynext++]=n;
}

char s[256];
extern LRESULT FAR PASCAL WndProc (HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam);

void handle_events() {
//GrMouseEvent event; 
MSG message;
int k;
int n;
//Pfprintf(stderr,"Event %d\n",GrMouseInfo->qlength); 

//	GrMouseGetEventT(GR_M_EVENT | GR_M_NOPAINT,&event,0l);
while(PeekMessage(&message,hwnd,0,0,PM_REMOVE)) {
    TranslateMessage(&message);
       DispatchMessage (&message) ;
//WndProc (hwnd, message.message, message.wParam,message.lParam);
//	Pfprintf(stderr,"Event %x\n",event.flags);
/*	if(event.flags & GR_M_KEYPRESS) {
		k=event.key;
		
		if (k==595 || k==8) k=7;
		if (k==587) k='\b';
		if (k==584) k='\037';
		if (k==589) k='\034';
		if (k==592) k='\n';
		 
		addkey(k);
	}
	if(event.flags & (GR_M_BUTTON_CHANGE | GR_M_MOTION )) {
		thebuttons=event.buttons;
		thex=event.x;
		they=event.y;
		theflags=event.flags;
}
}while(event.flags);
*/
//  sprintf(s,"message %x %x %x %x %x\n",message.message,message.wParam,message.lParam,message.pt.x,message.pt.y);
//  nc_writeStr(10,10,s);
}
}

#define Button1Mask 2
#define Button3Mask 1
#define GR_M_RIGHT_DOWN 1
#define GR_M_LEFT_DOWN 2
#define GR_M_RIGHT_UP 4
#define GR_M_LEFT_UP 8
#define GR_M_MOTION 16
#define GR_M_BUTTON_UP 12
#define GR_M_BUTTON_DOWN 3

void m_readpen(pen)
m_tablet_info *pen;
{
  int gotevent, found = 0, giveup = 0;

            handle_events();
//   GrMouseUpdateCursor();

  Pfprintf(stderr, "m_readpen(pen) flags=%x, x=%d, y=%d\n", theflags,thex,they);
   if(theflags) { 
    if (theflags & GR_M_BUTTON_DOWN) {
      pen->dn = (theflags & GR_M_LEFT_DOWN)!=0;
      pen->depressed = ((thebuttons & Button1Mask)!=0) || pen->dn;
      pen->up = 0;
      pen->near_ = ! (thebuttons & Button3Mask) &&
		  ! (theflags & GR_M_RIGHT_DOWN);
      
    } else if (theflags & GR_M_BUTTON_UP) {
      pen->dn = 0;
      pen->up = (theflags & GR_M_LEFT_UP)!=0;
      pen->depressed = ((thebuttons & Button1Mask)!=0) && (! pen->up);
      pen->near_ = ! (thebuttons & Button3Mask) ||
		  (theflags & GR_M_RIGHT_UP);
      
    } else {
      pen->dn = 0;
      pen->up = 0;
      pen->depressed = ((thebuttons & Button1Mask) != 0);
      pen->near_ = ! (thebuttons & Button3Mask);
    }

   if(theflags & GR_M_MOTION) m_cursor(thex,they);

      pen->x = thex;
      pen->y = they;
      pen->ax = (thex-WinX)/nc_fontwidth;
      pen->ay = (they-WinY)/nc_fontheight;
      UNTRNSFRM(pen->x, pen->y);
     } 
     else
      {pen->dn=pen->up=0;
      pen->depressed=mouse.depressed;
      pen->near_=mouse.near_;
      pen->x=mouse.x;
      pen->y=mouse.y;
      pen->ax=mouse.ax;
      pen->ay=mouse.ay;
      }
      
      theflags=0;

   

  pen->moving = pen->x != mouse.x || pen->y != mouse.y ||
		pen->depressed != mouse.depressed || pen->near_ != mouse.near_;
  pen->inalpha = mouse.inalpha;

  mouse.x = pen->x;
  mouse.y = pen->y;
  mouse.ax = pen->ax;
  mouse.ay = pen->ay;
  mouse.depressed = pen->depressed;
  mouse.near_ = pen->near_;

}

void m_trackpen(pen)
m_tablet_info *pen;
{
  Pfprintf(stderr, "m_trackpen(pen)\n");
  handle_events();
  m_readpen(pen);

/*  fprintf(stderr, "m_cursor(%d, %d)   from m_trackpen\n", pen->x, pen->y);  */
  m_cursor(pen->x, pen->y); 
}

void m_trackpen2(pen)
m_tablet_info *pen;
{
}

static int trackmode = 1;

void m_tracking(flag)
int flag;
{
}

void m_waitpen(pen)
m_tablet_info *pen;
{
}

void m_waitpen2(pen, returnonmove, time)
m_tablet_info *pen;
int returnonmove, time;
{
}

boolean m_pollkbd()
{
Kfprintf(stderr,"m_pollkbd\n");
handle_events();
return(keyfirst!=keynext);
}

uchar m_inkey()
{
int k;
nc_cursor_on();
do {
handle_events(); 
k=thekey;
}while(!k);
nc_cursor_off();
Kfprintf(stderr,"m_inkey %d\n",k);    
return k;
}

uchar m_inkeyn()
{
int k;
Kfprintf(stderr,"m_inkeyn %d\n",keybuf[keyfirst]);    
handle_events(); 
k=thekey;
return k;
}

uchar m_testkey()
{
handle_events();                      
Kfprintf(stderr,"m_testkey %d\n",keybuf[keyfirst]);    
if(keyfirst!=keynext) return keybuf[keyfirst];
return 0;
}


#define buttonw         40
#define buttonh         30
#define buttony         30
#define yesbuttonx      10
#define nobuttonx       60
#define popupw          110
#define popuph          70


boolean m_yes_or_no(prompt)
Char *prompt;
{
}




/* The following added by daveg, 10/6/89 */


void m_makechar(cp, a, b, c, d, e, f)
Anyptr *cp;
long a, b, c, d, e, f;
{
}


void m_changechar(cp, a, b, c, d, e)
Anyptr *cp;
long a, b, c, d, e;
{
}


void m_drawchar(cp)
Anyptr *cp;
{
    m_displaytext((char *)cp);
}
