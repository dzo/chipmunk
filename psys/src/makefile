.SUFFIXES:	
.SUFFIXES:	.c .o .h
# "PSYS", p-system emulation libraries for the Caltech tools,
#
#   Copyright (C) 1983, 1990, 1993 California Institute of Technology.
#   Authors: Dave Gillespie, Rick Koshi, Glenn Gribble, Adam Greenblatt
#   Maintainers: John Lazzaro and Dave Gillespie
#   Maintainers's address: lazzaro@cs.berkeley.edu;
#                          EECS/571 Evans Hall/UCB/Berkeley CA 94720
#                          daveg@synaptics.com;
#                          Send questions, bug fixes, to these addresses.
#
#
#This program is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation (Version 1, 1989).
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program; see the file COPYING.  If not, write to
#the Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA. */

# Makefile for Chipmunk CAD Pascal emulation libraries.  Version 1.40.


## comment blocks in this Makefile point to possible changes that need
## to be made for different systems. Its a good idea to look over each
## block and make necessary changes before doing a "make install"

LIBDIR = ../../lib
BINDIR = ../../bin


LIB = ../libp2c.a

LOCINC = ../include
XINCLUDEDIR = . 

##
##  (1) Choosing your compiler
##  ---------------------------
##
## For Sun SPARC, HP series 300/400, Apple AU/X,  gcc is recommended, 
## most 2.XX and 1.XX work well.
##
## For DEC MIPS-based Ultrix, a "stable" gcc 2.X.X is recommended
##
## For HP series 700/800 (extra-cost) ANSI cc is recommended (see below for
##  options). HP's non-ANSI cc will not work, and gcc presently has some
##  problems with <varargs.h>. For version 8.05 (and earlier) of HP ANSI cc
##  you will need a patch tape from HP to fix compiler bugs; alternatively,
##  you can get around the problem by compile the file math.c 
##  with the gcc 2.XX compiler. 
##
## For IBM RS/6000, xlc is recommended (see below for options)
##
## For Linux & FreeBSD, gcc 2.X.X is recommended (see below for options)
##
## For Irix 5.2/5.3 (SGI), cc or gcc is recommended.
##
## For AmigaOS, ADE (Amiga Development Enviroment) with gcc is recommended.
##

CHIPMUNKCC = gcc -x c -Os -fomit-frame-pointer -fpermissive
##CHIPMUNKCC = gcc -x c -g -DF_OK=0

##CHIPMUNKCC = gcc -pg

OBJS = sysdevs.o \
       markrele.o \
       misc.o \
       newci.o \
       mamplot.o \
       plot.o \
       filepack.o \
       fs.o \
       iodecl.o \
       loader.o \
       lunix_p.o \
       newtab.o \
       lunix_p.o \
       general1.o \
       general2.o \
       general3.o \
       hpib_2.o \
       mylib.o \
       newkbd.o \
       newasm.o \
       newcrt.o \
       math.o \
       rnd.o \
       regex.o \
       numex.o \
       p2clib.o \
       loclib.o

LIBSTUFF = texstuff.ps untilstuff.ps plot.font


CC = $(CHIPMUNKCC) 


##
## (2) The "cd" problem
## ---------------------
##
## If you have aliased "cd" to some other command in your .cshrc,
## change the following definition to:
##
## CD = chdir
##
## or specify the complete command path.

CD = cd


##
## (3) Adding appropriate flags
## -----------------------------
##
## for Sun Solaris 1.X (i.e. SunOS 4.X.X) , add these flags to CFLAGS
##
##    -DBSD
##
## for Sun Solaris 2.X, add these flags to CFLAGS
##
##    -Daux -Dsolaris 
##
## for HP series 800 (using cc), add these flags to CFLAGS
## CFLAGS = -w -Aa -D_HPUX_SOURCE -DF_OK=0
##
## for IBM RS/6000 (using xlc) add these flags to CFLAGS
## CFLAGS =  -DBSD=0 -Drs6000 -D_POSIX_SOURCE
##
## for AU/X, add this flags to CFLAGS
## CFLAGS =  -Daux
##
## for linux gcc 2.3.3 using xfree1.1 Xserver, add these flags to CFLAGS 
## 
## -DBSD -Dlinux -DF_OK=0 
##
## also add the flag
##
## -m486 
##
## if you are running on a 486-compatable CPU. For maximum speed, try the
## flags -fomit-frame-pointer -O6; however, the former flag will make it
## difficult for you to track down any bugs that occur while using the
## tools, and the latter will expose you to possible optimizer bugs. However,
## our alpha-testers have reported no problems using these two flags.
##
## for DEC Alpha under Linux, add these flags to CFLAGS
##
## -DBSD -Dlinux -DF_OK=0 -D__GCC__
##
## For freeBSD, add the following flags to CFLAGS 
##
##  -DBSD -Dfreebsd -Dlinux -DF_OK=0 -m486 
##
##
## For MachTen, add the following flags to CFLAGS 
##
##  -DBSD -DF_OK=0  
##
## for Irix 5.2/5,3 (SGI) add these flags to CFLAGS
##
## CFLAGS =  -ansi 
##
## for AmigaOS using gcc, add these flags to CFLAGS
##
## -ansi -DBSD -DF_OK=0
##
## to increase speed, try to add -O2 and, based on your CPU, one of these
##
##   -m68020              : for 68020
##   -m68020 -m68881      : for 68020+6888x
##   -m68030              : for 68030
##   -m68030 -m68881      : for 68030+6888x
##   -m68040              : for 68040
##   -m68040 -Wa,-m68060  : for 68060
##
##

CFLAGS = -I$(LOCINC) -I$(XINCLUDEDIR) -DCHIPLIB=\"log\" 

P2CFLAGS = -DLOCAL_INIT=_local_p2c_init

##
## (5) Ranlib problems
## -------------------
##
## for systems without ranlib, you may wish to delete the lines:
##
## -ranlib -t $(LIB)
## -ranlib libp2c.a
##
## below; however the "-" allows this to be non-fatal and thus not essential
## to delete

all: libp2c.a

setup:
	-mkdir $(LIBDIR)

install: setup all
	cp libp2c.a $(LIB)
	-ranlib -t $(LIB)
	cp $(LIBSTUFF) $(LIBDIR)
	-mkdir $(BINDIR)

libp2c.a: $(OBJS)
	ar r libp2c.a $(OBJS)
	-ranlib libp2c.a

p2clib.o: p2clib.c
	$(CC) -c $(CFLAGS) $(P2CFLAGS) p2clib.c

clean:
	del *.o
	del libp2c.a
	del ..\libp2c.a
 
## The following part of the Makefile is for making a tar file of the
## original parts of the psys distribution. Most users have no need for it.

VERSION = 1.40

create: dist createit

createit:
	tar cvf psys.tar psys
	rm -f psys.tar.gz
	gzip psys.tar

dist: pdistrib psysinc psyssrc

pdistrib:
	rm -rf psys
	mkdir psys
	mkdir psys/include
	mkdir psys/include/p2c
	mkdir psys/src

psysinc:
	cp ../include/p2c/p2c.h psys/include/p2c
	cp ../include/p2c/asm.h psys/include/p2c
	cp ../include/p2c/sysglobals.h psys/include/p2c
	cp ../include/p2c/sysdevs.h psys/include/p2c
	cp ../include/p2c/misc.h psys/include/p2c
	cp ../include/p2c/newci.h psys/include/p2c
	cp ../include/p2c/filepack.h psys/include/p2c
	cp ../include/p2c/markrelease.h psys/include/p2c
	cp ../include/p2c/citinfomod.h psys/include/p2c
	cp ../include/p2c/fs.h psys/include/p2c
	cp ../include/p2c/general_0.h psys/include/p2c
	cp ../include/p2c/general_1.h psys/include/p2c
	cp ../include/p2c/general_2.h psys/include/p2c
	cp ../include/p2c/general_3.h psys/include/p2c
	cp ../include/p2c/hpib_0.h psys/include/p2c
	cp ../include/p2c/hpib_1.h psys/include/p2c
	cp ../include/p2c/hpib_2.h psys/include/p2c
	cp ../include/p2c/hpib_3.h psys/include/p2c
	cp ../include/p2c/newkbd.h psys/include/p2c
	cp ../include/p2c/newasm.h psys/include/p2c
	cp ../include/p2c/newcrt.h psys/include/p2c
	cp ../include/p2c/regex.h psys/include/p2c
	cp ../include/p2c/numex.h psys/include/p2c
	cp ../include/p2c/plot.h psys/include/p2c
	cp ../include/p2c/plot_routines.h psys/include/p2c
	cp ../include/p2c/rnd.h psys/include/p2c
	cp ../include/p2c/iodecl.h psys/include/p2c
	cp ../include/p2c/mylib.h psys/include/p2c
	cp ../include/p2c/newtablet.h psys/include/p2c
	cp ../include/p2c/lunix_pas.h psys/include/p2c
	cp ../include/p2c/loader.h psys/include/p2c
	cp ../include/p2c/math.h psys/include/p2c
	cp ../include/p2c/passmod.h psys/include/p2c
	cp ../include/p2c/strings.h psys/include/p2c

psyssrc:
	cp asm.c psys/src
	cp filepack.c psys/src
	cp fs.c psys/src
	cp general_1.c psys/src
	cp general_2.c psys/src
	cp general_3.c psys/src
	cp hpib_2.c psys/src
	cp iodecl.c psys/src
	cp loader.c psys/src
	cp loc.p2clib.c psys/src
	cp lunix_pas.c psys/src
	cp mamplot.c psys/src
	cp markrelease.c psys/src
	cp math.c psys/src
	cp misc.c psys/src
	cp mylib.c psys/src
	cp newasmlib.c psys/src
	cp newci.c psys/src
	cp newcrt.c psys/src
	cp newkbd.c psys/src
	cp newtablet.c psys/src
	cp numex.c psys/src
	cp p2clib.c psys/src
	cp plot.c psys/src
	cp plot.font psys/src
	cp regex.c psys/src
	cp rnd.c psys/src
	cp sysdevs.c psys/src
	cp texstuff.ps psys/src
	cp untilstuff.ps psys/src
	sed -e "s;1.40;$(VERSION);" dist.README >psys/src/README
	sed -e "s;1.40;$(VERSION);" Makefile >psys/src/Makefile
	sed -e "s;1.40;$(VERSION);" Makefile.os2 >psys/src/Makefile.os2
	cp COPYING psys/src/COPYING







