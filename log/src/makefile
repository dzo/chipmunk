.SUFFIXES:	
.SUFFIXES:	.c .o .h
#  "LOG", the circuit editing and simulation system, 5.40
#  "DigLOG", the digital simulator for LOG.
#  Copyright (C) 1985, 1990 David Gillespie.
#  Author's address: daveg@synaptics.edu

#  "AnaLOG", the analog simulator for LOG, 5.40
#  Copyright (C) 1985, 1990 John Lazzaro.
#  Author's address: lazzaro@cs.berkeley.edu; 

# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation (any version).

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.


## comment blocks in this Makefile point to possible changes that need
## to be made for different systems. Its a good idea to look over each
## block and make necessary changes before doing a "make install"


## The most common mistake in compilation is forgetting to install the
## correct munch script, refer to the Web page or README for details on
## munch alterations (needed for HPUX, Solaris, RS6000, and AU/X).


##
## (1) The "cd" problem
## ---------------------
##
## If you have aliased "cd" to some other command in your .cshrc,
## change the following definition to:
##
## CD = chdir
##
## or specify the complete command path.

CD = cd

LOGLIBDIR = /log/lib
LIBDIR = /lib

LOCINC = ../../psys/include

##
## If X isn't in the include path (the case for many MachTen and Linux 
## installations) change XINCLUDEDIR to reflect this:
##
## XINCLUDEDIR = /usr/X11R6/include
##
## or maybe
##
## XINCLUDEDIR = /usr/X11/include
##
## or some other directory, depending on your installation.
##

XINCLUDEDIR = /usr/X11R6/include

BINDIR = ..\lib
LIBP2C = ../../psys/src/libp2c.a

##
## If X isn't in the library path (the case for many MachTen and Linux 
## installations) change LIBX11 to reflect this:
##
## LIBX11 = -L/usr/X11/lib -lX11
##
## or maybe
##
##  LIBX11 = -lX11 -L/usr/X11R6/lib
##
## depending on your installation. 
##

#LIBX11 = -lX11 -L/usr/X11R6/lib

##
## (2) Library additions
## ---------------------
##
## on some systems, -ldl must be added to OTHERLIBS
##
## on Sun Solaris 2.X, -lsocket -lnsl must be added to OTHERLIBS

OTHERLIBS= -lm  ${LIBP2C} -mwindows


##
##  (3) Choosing your compiler
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
  
##CHIPMUNKCC = gcc -pg -DF_OK=0

CHIPMUNKCC = x86_64-w64-mingw32-gcc -x c  -Os -fomit-frame-pointer -DF_OK=0

##CHIPMUNKCC = gcc -x c -g -DF_OK=0

CC = $(CHIPMUNKCC) 

##
## (4) Adding appropriate flags
## -----------------------------
##
## for Sun Solaris 1.X (i.e. SunOS 4.X.X) , no additional flags needed.
##
## for Sun Solaris 2.X, add these flags to CFLAGS
##
##    -Daux 
##
## for HP series 800 (using cc) add these flags to CFLAGS
## CFLAGS = -w -Aa -D_HPUX_SOURCE -DF_OK=0
##
## for IBM RS/6000 (using xlc) add these flags to CFLAGS
## CFLAGS =  -DBSD=0 -Drs6000
##
## note that -D_POSIX_SOURCE is NOT needed or desired, even though
## it is needed for psys compilation for the RS/6000
##
## for AU/X, add this flags to CFLAGS
## CFLAGS =  -Daux
##
## for linux/x86 using xfree1.1 Xserver, add these flags to CFLAGS 
## 
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
## For MachTen, add the following flags to CFLAGS 
##
##  -DBSD -DF_OK=0  
##
##
## for Irix 5.2/5.3 (SGI), add these flags to CFLAGS
##
## CFLAGS =  -ansi -Wf -XNd10000
##
## however, depending on your compiler the -Wf -XNd10000 may not be
## present, in which case delete them
##
##
## for DEC Alpha under Linux, add these flags to CFLAGS
##
## -D__GCC__
##
## for AmigaOS using gcc, add these flags to CFLAGS
##
## -ansi -DBSD -DF_OK=0
##
## to increase speed, try to add -O3 and, based on your CPU, one of these
##
##   -m68020              : for 68020
##   -m68020 -m68881      : for 68020+6888x
##   -m68030              : for 68030
##   -m68030 -m68881      : for 68030+6888x
##   -m68040              : for 68040 and 68060
##
## if you are using X shared library with ADE , see notes below
## in log and  rules
##
  

CFLAGS = -I$(LOCINC) -I$(XINCLUDEDIR) -DLOGLIB=\"log\" 

DIGOBJ = logsim.o logdig.o logsimasm.o logsimed.o diggates.o \
	 loghier.o logsimh.o swap.o
ANAOBJ = ana/globals.o ana/nsolver.o ana/main.o ana/inter.o \
	 ana/numbers.o ana/mmeter.o ana/iscope.o ana/devtechp.o\
	 ana/vdiff.o ana/vswitch.o ana/stairs.o ana/runspec.o \
	 ana/idiff.o ana/iswitch1.o ana/iswitch2.o ana/devtechn.o \
	 ana/resfloat.o ana/capfloat.o ana/nfet4.o ana/pfet4.o \
	 ana/nfet5.o ana/pfet5.o ana/pfet6.o ana/pspc1.o ana/nspc1.o\
	 ana/nfet7t.o ana/nfet7f.o ana/pfet7t.o ana/pfet7f.o ana/thermal.o\
	 ana/tc.o ana/moscap.o ana/ganglion.o ana/hres.o ana/physical.o\
	 ana/npn1.o ana/pnp1.o ana/npn2.o ana/pnp2.o ana/diode1.o ana/pwl.o ana/rtd.o

SIMOBJ = logcom.o $(DIGOBJ) $(ANAOBJ)
TOOLOBJ = $(SIMOBJ) lplot.o logspc.o logntk.o winmain.o


##
## (5) Saving space during linking
## -------------------------------
##
##  The hard links made by the line:
##
##  -ln $(BINDIR)/diglog $(BINDIR)/analog
##
##  can be changed to make symbolic links; on some systems (Linux)
##  this can save lots of disk space, although caution is necessary
##  when using symbolic links, see the man page for "ln" for details.
##

install: all

clean:	
	-del *.o 
	-del ana\*.o 
	-del log.exe
	-del loged.exe

all:  main

main: log loged

LOGOBJ = log.o $(TOOLOBJ) logstuff.o logdef.o

log:    $(LOGOBJ) tooldir.o $(LIBP2C)
	x86_64-w64-mingw32-gcc $(CFLAGS) -Wl,-s tooldir.o $(LOGOBJ) $(OTHERLIBS) -o log

## The following permits you to link properly with AmigaOS and 
## X shared libraries used in ADE
 
##log: $(LOGOBJ) tooldir.o $(LIBP2C) makeana
##      prelink $(LIBX11)
##      $(CC) -Tshared.x -Wa,-s $(CFLAGS) tooldir.o $(LOGOBJ) $(LIBP2C) $(LIBX11)  \
##      $(OTHERLIBS) -o log
##      postlink log
##      rm shared.x xlibs.c xlibs.o

 
# The following, if it works on your system, will enable the "linklog"
# script to work.

#log: log.a tooldir.o $(LIBP2C)
#       $(CC) $(CFLAGS) tooldir.o log.a $(LIBP2C) -lX11 -lm -o log
#
#log.a: $(LOGOBJ)
#       ar r log.a $(LOGOBJ)



LOGEDOBJ = loged.o simdir.o $(SIMOBJ) logstuff.o logedwinmain.o



loged: $(LOGEDOBJ) simdir.o $(LIBP2C)
	x86_64-w64-mingw32-gcc $(CFLAGS) -mwindows  $(LOGEDOBJ) $(LIBP2C) $(LIBX11) $(OTHERLIBS) -o loged

 
 
# The following permits you to link properly with AmigaOS and 
# X shared libraries used in ADE
##loged: $(LOGEDOBJ) simdir.o $(LIBP2C)
##      prelink $(LIBX11)
##      $(CC) -Tshared.x -Wa,-s $(CFLAGS) $(LOGEDOBJ) $(LIBP2C) $(LIBX11) $(OTHERLIBS) -o loged
##      postlink loged
##      rm shared.x xlibs.c xlibs.o


#loged: loged.a simdir.o $(LIBP2C)
#       $(CC) $(CFLAGS) loged.a $(LIBP2C) -lX11 -lm -o loged
#
#loged.a: $(LOGEDOBJ)
#       ar r loged.a $(LOGEDOBJ)



tooldir.o: tooldir.c

##tooldir.c: $(TOOLOBJ)
##        chmod +x munch
##        ./munch 'Log_[a-zA-Z0-9_]*' $(TOOLOBJ) > tooldir.c



simdir.o: simdir.c

##simdir.c: $(SIMOBJ)
##        chmod +x munch
##        ./munch 'Log_[0-9]*_proc' $(SIMOBJ) > simdir.c

 
## The following part of the Makefile is for making a tar file of the
## original parts of the log distribution. Most users have no need for it.


VERSION = 5.40

dist: distrib
distrib:
	-rm -rf dist
	mkdir dist
	mkdir dist/src
	mkdir dist/src/ana
	cp log.cnf log.gate COPYING LNOTES dist/src
	cp munch* fixfet7 dist/src
	cp munch.default  dist/src/munch
	cp simdir.os2 tooldir.os2 dist/src
	sed -e "s;5.40;$(VERSION);" Makefile > dist/src/Makefile
	sed -e "s;5.40;$(VERSION);" ana/Makefile > dist/src/ana/Makefile
	sed -e "s;5.40;$(VERSION);" Makefile.os2 > dist/src/Makefile.os2
	sed -e "s;5.40;$(VERSION);" ana/Makefile.os2 > dist/src/ana/Makefile.os2
	sed -e "s;5.40;$(VERSION);" dist.INSTALL > dist/README
	cp *.c *.h dist/src
	sed -e "s;5.40;$(VERSION);"  logdef.h > dist/src/logdef.h
	cp ana/*.c ana/*.h dist/src/ana
	cp -r $(LOGLIBDIR) dist/lib
	echo >dist/lib/stupid~
	-rm -f dist/lib/*~ dist/lib/*.ogte
	sed -e "s;5.40;$(VERSION);" ../lib/log.doc > dist/lib/log.doc


tardist:
	-rm -rf logdist
	mkdir logdist
	mv dist logdist/log
	tar cvf log.tar -C logdist log
	mv logdist/log dist
	-rm -f log.tar.gz
	gzip log.tar

create: dist tardist 







