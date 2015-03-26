

/* Header for module logdef, generated by p2c */
/*  5.40  */
#ifndef LOGDEF_H
#define LOGDEF_H


#ifndef MYLIB_H
#include <p2c/mylib.h>
#endif

#ifndef NEWASM_H
#include <p2c/newasm.h>
#endif


#ifdef LOGDEF_G
# define vextern
#else
# define vextern extern
#endif



#define log_maxpages    9   /* Maximum page number */
#define log_maxpins     255   /* Maximum number of pins on a gate */
#define log_lablen      255   /* Maximum length of labels */

#define log_scale0      5   /* Unzoomed size of grid */
#define log_kindoffset  256   /* Offset of rotation factor */

#define log_maxshint    32767   /* Largest short-integer */

#define log_million     1000000L   /* Very large array size */

#define log_version     "5.61"   /* LOG version number */

#define Debugging       false   /* Compile with DEBUG option */
#define Checking        true   /* Compile with range checking, etc. */

#define log_gray        0   /* Background */
#define log_red         1
#define log_green       2
#define log_yellow      3   /* RGB colors */
#define log_mred        4
#define log_orange      5
#define log_cyan        6
#define log_white       7
#define log_black       8
#define log_pink        9
#define log_dyellow     10   /* Dim yellow */
#define log_xgreen      11   /* Green for XOR-wires */
#define log_dcyan       12   /* Dim cyan */
#define log_dred        13   /* Dim red */
#define log_lgray       14
#define log_cred        15   /* Conflict */
#define log_black8      5   /* Black for 8-color screens */
#define log_cred8       4   /* Conflict for 8-color screens */

#define log_page_cat    (-1)   /* Values for showpage */
#define log_page_history  (-2)

#define log_nullsimtype  0   /* Simtype of inert gates */
#define log_commonsimtype  1   /* Simtype of TO/FROM gates */
#define log_timesimtype  2   /* Simtype of TIME gate */

#define log_wcol_normal  0
#define log_wcol_green  1
#define log_wcol_yellow  2
#define log_wcol_red    3
#define log_wcol_blue   4



typedef short log_zoomtab[7];
typedef short log_rottab[8];

/* workaround for bug in OS2 icc compiler */

#ifdef OS2
#ifndef LOGDEF_G
vextern Const log_rottab log_rotxx;
vextern Const log_rottab log_rotxy;
vextern Const log_rottab log_rotyx;
vextern Const log_rottab log_rotyy;
vextern Const log_rottab log_irotxx;
vextern Const log_rottab log_irotxy;
vextern Const log_rottab log_irotyx;
vextern Const log_rottab log_irotyy;
vextern Const log_zoomtab zoomscales;
#endif
#else
vextern Const log_rottab log_rotxx;
vextern Const log_rottab log_rotxy;
vextern Const log_rottab log_rotyx;
vextern Const log_rottab log_rotyy;
vextern Const log_rottab log_irotxx;
vextern Const log_rottab log_irotxy;
vextern Const log_rottab log_irotyx;
vextern Const log_rottab log_irotyy;
vextern Const log_zoomtab zoomscales;
#endif

typedef Anyptr log_long;

typedef Char log_pac4[4];
typedef Char log_pac8[8];

typedef uchar log_procarray[log_million];
typedef uchar log_uchararray[log_million + 1];



typedef na_long log_longword;

typedef union log_kflags {
  short i;
  unsigned short a;
  struct {
    unsigned noflip : 1;   /* gate can't be flipped/rotated */
    unsigned toggle : 1;   /* gate is a toggle switch */
    unsigned visible : 1;   /* visible even in invisible mode */
    unsigned named : 1;   /* has a to/from signal name */
    unsigned nright : 1;   /* to/from name is right-justified */
    unsigned nosolder : 1;   /* don't add solder in LPLOT */
    unsigned f6 : 1, f7 : 1, f8 : 1, f9 : 1, f10 : 1, f11 : 1, f12 : 1,
	     expanded : 1;
	/* gate uses expanded format in GATES file */
    unsigned user1 : 1, user2 : 1;   /* simtype-defined flags */
  } U3;
} log_kflags;

typedef struct log_vectorrec {
  Char vkind;
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
      Char *sp;
    } U116;
  } UU;
} log_vectorrec;

typedef log_vectorrec log_vectorrecs[log_million];

typedef struct log_pinrec {
  schar x, y, s, c;
} log_pinrec;

typedef log_pinrec log_pinrecs[log_million];
typedef na_strlistrec *log_pinnames[log_million];

typedef struct log_pnumrec {
  schar x, y;
  short num;
} log_pnumrec;

typedef log_pnumrec log_pnumrecs[log_million];

typedef struct log_kattrrec {
  unsigned blnk : 1, opt : 1;   /*default is blank, value is optional*/
  uchar prec;   /*display precision (# digits)*/
  uchar vr, vra;   /*variant number, variant attribute*/
  uchar x, y;   /*alpha coords*/
  uchar dtype;
  union {
    struct {
      double r;
      Char u[4];
    } U82;
    struct {
      long i1, i2;
    } U73;
    Char *c;
    Char *sp;
#ifdef mips
    unsigned b;
#else
    unsigned b : 1 ;
#endif
    struct {
      na_strlistrec *v;
      short nv, dv;
    } U86;
  } UU;
} log_kattrrec;

typedef log_kattrrec log_kattrrecs[log_million];

typedef struct log_gattrrec {
  uchar x2;
  unsigned blnk : 1, supr : 1;
  /*, touched*/
  unsigned changed : 1;
  union {
    double r;
    struct {
      long i1, i2;
    } U73;
    Char *c;
    Char *sp;
#ifdef mips
    unsigned b;
#else
    unsigned b : 1 ; 
#endif
    short nv;
  } UU;
} log_gattrrec;   /* Gate attribute entry */

typedef log_gattrrec log_gattrrecs[log_million];

/* Pointer to globals */
/* Pointer to gate-kind */
/* Pointer to tool record */
/* Pointer to history timestep */
/* Pointer to history name */
/* Pointer to node */
/* Pointer to signal name */
/* Pointer to horizontal wire */
/* Pointer to vertical wire */
/* Pointer to solder point */
/* Pointer to gate */
/* Pointer to label */
/* Pointer to dashed box */
/* Pointer to sensitive region */

typedef struct log_krec {
  na_long info;
  uchar *proc;
  log_kattrrec *attr;
  struct log_tool *simtype;
  Char name[9];
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
  schar bbx1, bby1, bbx2, bby2;   /*7/14/88*/
  short bbmax;   /*7/14/88*/
  long bigprocsize, biglblsize, bigvectsize;
  na_strlistrec **pinnames;
} log_krec;

typedef struct log_pinposrec {
  short x, y;
} log_pinposrec;

typedef log_pinposrec log_pinposarray[log_maxpins];

typedef struct log_nrec *log_pinarray[log_maxpins];

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
} log_nrec;   /* Node */

typedef struct log_sigrec {
  Char *name;
  unsigned f : 1, keep : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
  na_long temp;
  log_nrec *np;   /* Node value */
} log_sigrec;   /* Signal name */

typedef log_sigrec log_sigrecs[log_million];

typedef struct log_htrec {
  struct log_htrec *next;
  double time;
  Anyptr val[log_million];   /*NEWFP shortreals*/
} log_htrec;   /* History timestep */

typedef struct log_hnrec {
  short y, sig, num;
  log_gattrrec *attr;
  struct log_hnrec *next;
} log_hnrec;   /* History name */

typedef struct log_hwrec {
  short x1, x2, y;   /* Position of wire */
  log_nrec *node;   /* Node of wire */
  struct log_hwrec *next;   /* Next wire in list */
  na_long temp;
  uchar wcolr;   /* Color of wire */
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_hwrec;   /* Horizontal wire */

typedef struct log_vwrec {
  short x, y1, y2;   /* Position of wire */
  log_nrec *node;   /* Node of wire */
  struct log_vwrec *next;   /* Next wire in list */
  na_long temp;
  uchar wcolr;   /* Color of wire */
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_vwrec;   /* Vertical wire */

typedef struct log_srec {
  short x, y;   /* Position of solder point */
  log_hwrec *hwire, *hwire2;   /* Horizontal wire(s) being soldered */
  log_vwrec *vwire, *vwire2;   /* Vertical wire(s) being soldered */
  struct log_srec *next;   /* Next solder point in list */
  na_long temp;
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_srec;   /* Solder point */

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
} log_grec;   /* Gate */

typedef struct log_lrec {
  short x, y, w;
  Char name[log_lablen + 1];
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
  struct log_lrec *next;
  na_long temp;
} log_lrec;   /* Label */

typedef struct log_brec {
  short x1, y1, x2, y2;
  struct log_brec *next;
  na_long temp;
  unsigned f7 : 1, f6 : 1, f5 : 1, f4 : 1, f3 : 1, f2 : 1, f1 : 1, f0 : 1;
} log_brec;   /* Dashed box */

typedef struct log_regrec {
  short pagenum, x1, y1, x2, y2;
  long regstamp;
  na_long info;
  struct log_regrec *next;
  boolean f7, f6, f5, f4, f3, f2, f1, f0;
} log_regrec;   /* Sensitive region */


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
/* p2c: logdef.text, line 709: 
 * Note: Line breaker spent 2.0 seconds, 5000 tries on line 356 [251] */
} log_actionkinds;

typedef struct log_hooks {
  Void (*hidecursor) PV();
  Void (*hidecursorrect) PP((long x1, long y1, long x2, long y2));
  Void (*unhidecursor) PV();
  Void (*nodeconflict) PP((log_nrec *n));
  Void (*gateconflict) PP((log_grec *g));
  Void (*clearconflicts) PP((struct log_tool *tool));
  Void (*setdimgate) PP((log_grec *g, int dim));
  Void (*xform) PP((log_grec *g, short *x, short *y));
  Void (*getsig) PP((Char *name, log_sigrec **sig));
  Void (*report) PP((int num, Char *name));
  Void (*alert) PV();
  Void (*warning) PV();
  Void (*working) PV();
  Void (*message) PP((Char *msg));
  Void (*vmessage) PP((Char *msg));
  Void (*vmessageflag) PP((Char *msg, int b));
  Void (*trace) PP((Char *msg));
  Void (*dump) PP((Char *msg));
  Void (*setdump) PP((Char *name));
  Void (*closefiles) PV();
  Void (*clearalpha) PV();
  Void (*drawstr) PP((int x, int y, Char *s));
  Void (*rightstr) PP((int x, int y, Char *s));
  Void (*centerstr) PP((int x, int y, Char *s));
  Void (*clip) PV();
  Void (*remcursor) PV();
  Void (*clearscreen) PV();
  Void (*setmode) PP((Char *s));
  Void (*getword) PP((Char *buf, Char *wrd));
  Void (*getint) PP((Char *buf, long *i, long def));
  Void (*getreal) PP((Char *buf, double *r, double def));
  Void (*getbool) PP((Char *buf, boolean *b));
  Void (*pen) PV();
  Void (*pass) PV();
  Void (*trykbd) PV();
  Void (*scroll) PV();
  Void (*trykbdscroll) PV();
  Void (*inkey) PP((Char *ch));
  Void (*udrawgate) PP((int x, int y, int g, int c));
  Void (*gdrawgate) PP((int x, int y, int g, int c));
  Void (*drawgate) PP((log_grec *g));
  Void (*erasegate) PP((log_grec *g));
  Void (*drawnode) PP((log_nrec *n, int c));
  Void (*refresh) PV();   /*quietly refresh drawing area*/
  Void (*refreshsoon) PV();
  Void (*beginbottom) PV();
  Void (*endbottom) PV();
  Void (*beginerror) PV();
  Void (*enderror) PV();
  Void (*redraw) PV();   /*redraw drawing area*/
  Void (*redrawscreen) PV();   /*redraw entire screen*/
  Void (*change) PP((int pg));
  Void (*newgate) PP((log_grec **g, int gt));
  Void (*copygate) PP((log_grec *old, log_grec **g));
  Void (*disposegate) PP((log_grec **g));
  Void (*newnode) PP((log_nrec **n, int st));
  Void (*copynode) PP((log_nrec *old, log_nrec **n));
  Void (*disposenode) PP((log_nrec **n));
  Void (*switchnode) PP((log_nrec **n, log_nrec *n2));
  Void (*dumpnodes) PV();
  Void (*readlnpass) PP((Char *s, int mode));
  Void (*clearfunc) PV();
  Void (*refrfunc) PV();
  Void (*assertfunc) PP((Char *name));
  Void (*findobject) PP((int x, int y));
  Void (*findwire) PP((int x, int y));
  Void (*deletehw) PP((log_hwrec *hw));
  Void (*deletevw) PP((log_vwrec *vw));
  Void (*disconnectgate) PP((log_grec *g));
  Void (*deletegate) PP((log_grec *g));
  Void (*addhw) PP((int x1, int x2, int y));
  Void (*addvw) PP((int x, int y1, int y2));
  Void (*connectgate) PP((log_grec *g, boolean *success));
  Void (*waitnear) PV();
  Void (*addgate) PP((int x, int y, int gtype));
  Void (*uaddgate) PP((int x, int y, int gtype));
  Void (*getgate) PP((Char *name, short *gtype));
  Void (*realunit) PP((double r, int p, Char *u, Char *s));
  Void (*realunit2) PP((double r, int p, Char *u, Char *s));
  Void (*addlabel) PP((log_lrec **l, Char *s));
  Void (*getcolor) PP((Char *name, short *val, int def));
  Void (*setcmap) PP((int n, int r, int g, int b));
  Void (*parselabel)
       PP((na_strlistrec **lbl, short *numattrs, log_kattrrec **attr));
  Void (*editattrs)
       PP((log_gattrrec *gattr, int numattrs, log_kattrrec *kattr,
	   na_strlistrec *lbl, Char *name, Void (*proc) PV(),
	   Void (*chproc) PV(), Void (*relproc) PV()));
  Void (*newattrs)
       PP((log_gattrrec **gattr, int numattrs, log_kattrrec *kattr));
  Void (*disposeattrs)
       PP((log_gattrrec **gattr, int numattrs, log_kattrrec *kattr));
  Void (*copyattrs) PP((log_gattrrec **gattr, log_gattrrec *oldattr,
			int numattrs, log_kattrrec *kattr));
  Void (*initscreen) PV();
  Void (*clearshowalpha) PV();
  Void (*setupregion) PP((log_regrec **r, int pagenum));
  Void (*stamp) PP((long *i));
  Void (*noclip) PV();
} log_hooks;

typedef struct log_hook2 {
  Void (*getnodeval) PP((log_nrec *n, double *val, Char *opts));
  Void (*solderat) PP((int x, int y));
  Void (*unsolderwires) PP((log_hwrec *hw, log_vwrec *vw));
  Void (*settofrom) PP((log_grec **g, Char *name));
  Void (*findattrnum) PP((log_krec *k, Char *name, Char *kinds, short *num));
  Void (*findattrname) PP((log_krec *k, int num, Char *name));
  Void (*findpinnum) PP((log_krec *k, Char *name, short *num));
  Void (*findpinname) PP((log_krec *k, int num, Char *name));
  Void (*setgattr) PP((log_grec *g, int num, Char *value));
  Void (*setnattr) PP((log_nrec *n, int num, Char *value));
  Void (*findpointmarker) PP((log_krec *k, int num, short *x, short *y));
  Void (*findboxmarker)
       PP((log_krec *k, int num, short *x1, short *y1, short *x2, short *y2));
  Void (*send_general) PP((struct log_tool *sim, Char *act));
  Void (*send_gennode) PP((log_nrec *n, Char *act));
  Void (*send_genkind) PP((log_krec *k, Char *act));
  Void (*send_gengate) PP((log_grec *g, Char *act));
  Void (*send_all) PP((Char *act));
  Void (*send_allnodes) PP((Char *act));
  Void (*send_allkinds) PP((Char *act));
  Void (*send_allgates) PP((Char *act));
  Void (*addlabelat) PP((int x, int y, Char *s));
  Void (*addboxat) PP((int x1, int y1, int x2, int y2));
  Void (*plainxform) PP((log_grec *g, short *x, short *y));
  Void (*findattrnum2) PP((int numattrs, log_kattrrec *kattr,
			   na_strlistrec *lbl, Char *name, Char *kinds,
			   short *num));
  Void (*findattrname2) PP((int numattrs, log_kattrrec *kattr,
			    na_strlistrec *lbl, int num, Char *name));
  Void (*showpinname) PP((log_grec *g, int i, int c, Char *name));
} log_hook2;

typedef struct log_colorrec {
  short backgr, cursor, gate, dimgate, kindgate, catgate, gatepin, pinnum;
  short wire[log_wcol_blue - log_wcol_normal + 1];
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
  Char *actstr;
  double actval, actval2, actval3;
  log_gattrrec *actgattr;
  log_kattrrec *actkattr;
  uchar *actproc;

  boolean pagechanged[log_maxpages];
  log_grec *gbase[log_maxpages];
  log_srec *sbase[log_maxpages];
  log_hwrec *hwbase[log_maxpages];
  log_vwrec *vwbase[log_maxpages];
  log_lrec *lbase[log_maxpages];
  log_brec *bbase[log_maxpages];
  log_nrec *nbase;

  log_sigrec *signaltab;
  short maxsignal, lastsignal;

  long numpages;   /* number of pages */
  long curpage;   /* current page number */
  long showpage;   /* currently displayed page number */

  short scale, hscale;
  long xoff, yoff;   /* screen_x := grid_x * scale - xoff */

  Char func[17];
  Char *funcarg;

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

  boolean histactive;   /* Scope mode is triggered */
  boolean dumpopen;   /* Dump output file is open */
  boolean traceopen;   /* Trace output file is open */
  boolean verbose;   /* Commands acknowledge with messages */
  boolean traceflag;   /* Debugging/trace mode on */
  boolean quiet;   /* Suppress sound signals */
  boolean glowmode;   /* Glowing-wires mode */
  boolean probemode;   /* Probe-cursor mode */
  boolean markers;   /* printing markers are defined */
  boolean invisible;   /* gates and wires are invisible */
  boolean textinvisible;   /* labels and boxes are invisible */
  boolean dotsvisible;   /* are "red dots" on or off normally? */
  boolean resetflag;   /* "Reset" command has been given */
  boolean pwrflag;   /* simulator is turned on */
  boolean initdone;   /* done with program initialization */
  boolean refrflag;   /* refreshing all displays */

  boolean busyflag;   /* flag for idling simulations */

  short markerx1, markery1, markerx2, markery2;

  m_tablet_info t, t0;
  boolean startpoint, stillnear, incircuit;
  short gridx, gridy, posx, posy, oldx, oldy, cx_min, cy_min, cx_max, cy_max;
      /* area covered by cursor */

  FILE **dumpfile, **tracefile;

  long rndseed;   /* Seed for RAND function */

  Char *homedirname;

  enum {
    log_host_log, log_host_loged, log_host_3, log_host_4
  } host;
  struct log_tool *toolbase;
  log_hooks hook;
  log_colorrec color;

  long curstamp, labelstamp;   /* Changes to labels */
  long boxstamp;   /* Changes to boxes */
  long msgstamp;   /* Clearing messages from screen */
  long refrstamp;   /* Clearing graphics screen */
  long nattrstamp;   /* Changes to node attributes */
  long gattrstamp;   /* Changes to gate attributes */
  long sigstamp;   /* Changes to signal table */
  long loadstamp;   /* A page was loaded */
  long pagestamp[log_maxpages];
  long colorstamp;   /* Color assignments have changed */
  long resetstamp;   /* Simulation has been reset */
  log_regrec *pageregions[log_maxpages];
  long markerstamp;   /* Page markers moved */

  log_krec *probekind;
  na_strlistrec *actstrlist;
  log_hook2 *hook2;
  log_hwrec *probehwire;
  log_vwrec *probevwire;
  long actx2, acty2;
  na_quadword actq1, actq2;
  Char genfunc[17];
  long runstamp;
} log_action;

typedef struct log_tool {
  Char name[17];
  Void (*proc) PP((log_action *act));
  Char *fname, *comment;
  Char *shortname;
  unsigned ready : 1, simulator : 1, keep : 1, nostatus : 1, tstepflag : 1;
  uchar simtype;
  double nexttstep;
  na_strlistrec *nlbl, *hlbl;
  short nnumattrs, hnumattrs;
  log_kattrrec *nattr, *hattr;
  na_long info;
  struct log_tool *next;
  long netstamp;   /* Changes to circuit network */
  double deltatime;
} log_tool;


#undef vextern

#endif /*LOGDEF_H*/

/* End. */
