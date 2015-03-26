#include <windows.h>
#include <wingdi.h>   // these are needed because I took them out of windows.h to make console
#include <winuser.h>  // apps compile a bit faster.

#include <stdio.h>
extern HWND hwnd;
extern HDC hdc,hdc1;
extern int thex,they,theflags,thebuttons;
extern int WindowWidth,WindowHeight ,m_initialized;
extern void addkey(int);
FILE* trace;

LRESULT FAR PASCAL _export WndProc (HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam)
{
   char s[100];
   MSG m;
   m.message=message;
   m.wParam=wParam;
   m.lParam=lParam;
 //sprintf(s,"message %x %x %x\n",message,wParam,lParam);
 //  nc_writeStr(10,10,s);
   switch (message)
   {
  case WM_KEYDOWN:
    switch (wParam) {
    case VK_LEFT:
	addkey('\b');
	break;
    case VK_UP:
	addkey('\037');
	break;
    case VK_RIGHT:
	addkey('\034');
	break;
    case VK_DOWN:
	addkey('\n');
	break;
    }
    break;
      case WM_CHAR:
/*      s[0]=wParam;
      s[1]=0;
      nc_writeStr(9,9,s);
*/
      if(wParam==8) wParam=7;
      addkey(wParam);

      break;
       case WM_LBUTTONDOWN:
		thex=LOWORD(lParam);
        they=HIWORD(lParam);
        thebuttons |= 2;
        theflags=2;
        break;
       case WM_RBUTTONDOWN:
         thex=LOWORD(lParam);
        they=HIWORD(lParam);
        thebuttons |= 1;
        theflags=1;
 	    break;
        case WM_LBUTTONUP:
		thex=LOWORD(lParam);
        they=HIWORD(lParam);
        thebuttons &= ~2;
        theflags=8;
        break;
       case WM_RBUTTONUP:
         thex=LOWORD(lParam);
        they=HIWORD(lParam);
        thebuttons&= ~1;
        theflags=4;
       break;
		case WM_MOUSEMOVE:
		thex=LOWORD(lParam);
        they=HIWORD(lParam);
        theflags |= 16;
        break;
      case WM_PAINT:
//if ( m_initialized)
//      refrscreen();
//      return 0;
      break;

      case WM_ENTERIDLE:
      
      break;
case WM_SIZE:
      WindowWidth=LOWORD(lParam);
      WindowHeight = HIWORD(lParam);
// if ( m_initialized)
//     resize_screen();
      return 0;
      break;
      case WM_COMMAND:
   
      break;

      case WM_DESTROY:
         PostQuitMessage (0) ;
         exit( 0 );
   }
   return DefWindowProc (hwnd, message, wParam, lParam) ;
}

void messageb(char *s) {
 MessageBox( hwnd, s, s, MB_ICONINFORMATION );
}
HFONT hfont,hfont1;
 HCURSOR cursors[5];
int PASCAL WinMain (HINSTANCE hInstance, HINSTANCE hPrevInstance,
          LPSTR lpszCmd, int nCmdShow)
{
   static char szAppName[] = "loged" ;
   HPALETTE pal;
   LOGPALETTE *lpal;
   MSG         msg ;
   WNDCLASS    wndclass ;
   HANDLE    hAccel;
   PALETTEENTRY pals[16]={{79,79,79,0},
                           {255,0,0,0},
                           {0,255,0,0},
                           {255,255,0,0},
                           {191,0,0,0},
                           {255,159,0,0},
                           {0,255,255,0},
                           {255,255,255,0},
                           {0,0,0,0},
                           {255,159,159,0},
                           {207,207,0,0},
                           {0,223,0,0},
                           {0,175,175,0},
                           {0,143,0,0},
                           {175,175,175,0},
                           {255,255,0,0}};
                           
   HBRUSH bgb;
   unsigned curxor[5][32]={{0xf0,
                     0xc0,
                     0xa0,
                     0x90,
                     0x08,
                     0x04,
                     0x02,
                     0x01,
                     0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0},
                     {0xf0,
                     0xc0,
                     0xa0,
                     0x90,
                     0x08,
                     0x04,
                     0x02,
                     0x01,
                     0x8000,0x4000,0x2000,0x1000,0,0,0,0,
                     0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0},
                     {0x10,
                     0x08,
                     0x08,
                     0x84,
                     0x64,
                     0x1e,
                     0x06,
                     0xc01,
                     0xb200,0x7200,0xce00,0xc000,0x2001,0x2001,0xe000,0,
                     0,0,0,0,0,0,0,0,
                     0,0,0,0,0,0,0,0},
                     {0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,0xe0ffff,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,
                     0x4000,0x4000,0x4000,0,0,0,0,0,
                     0,0,0,0,0,0,0,0},
                     {0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,
                     0x4000,0xe0ffff,0x4000,0x4000,0x4000,0x4000,0x4000,0x4000,
                     0x4000,0x4000,0x4000,0,0,0,0,0,
                     0,0,0,0,0,0,0,0}};
                     
   unsigned curand[32]={-1,-1,-1,-1,-1,-1,-1,-1,
                  -1,-1,-1,-1,-1,-1,-1,-1,
                   -1,-1,-1,-1,-1,-1,-1,-1,
                -1,-1,-1,-1,-1,-1,-1,-1};
                int curpos[5]={0,0,6,9,9};
   int argc=2;
      int i;
      int sp;
      char st[256];
   char *argv[]={"loged",lpszCmd};
   if(strcmp(lpszCmd,"")==0) argc=1;
//   SystemParametersInfo(SPI_GETKEYBOARDSPEED,1000,&sp,0);
//   sprintf(st,"speed = %d",sp);
//   MessageBox(0,st,0,0);
  SystemParametersInfo(SPI_SETKEYBOARDSPEED,31,0,0);

   trace=fopen("trace","w");
   bgb=CreateSolidBrush(PALETTERGB(79,79,79));
   for(i=0;i<5;i++)
     cursors[i]=CreateCursor(hInstance,curpos[i],curpos[i],32,32,curand,curxor[i]);
  
   if (!hPrevInstance)
   {
      wndclass.style         = 0;
      wndclass.lpfnWndProc   = (WNDPROC)WndProc ;
      wndclass.cbClsExtra    = 0 ;
      wndclass.cbWndExtra    = 0 ;
      wndclass.hInstance     = hInstance ;
      wndclass.hIcon         = LoadIcon( NULL, IDI_APPLICATION );
      wndclass.hCursor       = cursors[0]; ;
      wndclass.hbrBackground = bgb;
      wndclass.lpszMenuName  = 0; //MAKEINTRESOURCE( CHELPAPMENU );
      wndclass.lpszClassName = szAppName ;

      RegisterClass (&wndclass) ;
  }

  hfont=CreateFont(12,7,0,0,0,0,0,0,DEFAULT_CHARSET,OUT_RASTER_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY,FIXED_PITCH | FF_DONTCARE,0);
  hfont1=CreateFont(12,8,0,0,0,0,0,0,DEFAULT_CHARSET,OUT_RASTER_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY,FIXED_PITCH | FF_DONTCARE,0);
 
  hwnd = CreateWindow (szAppName,
    "loged",
    WS_OVERLAPPEDWINDOW,
    0,
    0,
    800,
    580,
    NULL,
    NULL,
    hInstance,
    NULL) ;

   ShowWindow (hwnd, nCmdShow) ;
   UpdateWindow (hwnd) ;
   hdc=GetDC(hwnd);
 SelectObject(hdc,hfont);
 
 
/*
   while (GetMessage (&msg, NULL, 0, 0))
   {
    if ( !TranslateAccelerator( hwnd, hAccel, &msg ))
    {
       TranslateMessage (&msg) ;
       DispatchMessage (&msg) ;
    }
   }
   return msg.wParam ;
*/ 
  lpal=malloc(sizeof(LOGPALETTE)+16*sizeof(PALETTEENTRY));
  lpal->palVersion=0x300;
  lpal->palNumEntries=16;
  for(i=0;i<16;i++)
    lpal->palPalEntry[i]=pals[i];
 
  pal=CreatePalette(lpal);
  SelectPalette(hdc,pal,0);
  RealizePalette(hdc);
  hdc1=CreateCompatibleDC(hdc);
  SelectObject(hdc1,CreateCompatibleBitmap(hdc,800,16)); 
  SetBkMode(hdc1, OPAQUE);
  SelectPalette(hdc1,pal,0);
  RealizePalette(hdc1);
  SelectObject(hdc1,hfont);
  logedmain(argc,argv);
}
