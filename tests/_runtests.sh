#make and run tests for my standard asm library

#test string.ah
nasm teststring.a -o teststring.o -felf64
tcc teststring.o -o teststring
./teststring
rm ./teststring ./teststring.o

#test genreg.ah
nasm testgenreg.a -o testgenreg.o -felf64
tcc testgenreg.o -o testgenreg
./testgenreg
rm testgenreg testgenreg.o

#test hex.ah
nasm testhex.a -o testhex.o -felf64
tcc testhex.o -o testhex
./testhex
rm testhex testhex.o

#test dec.ah
nasm testdec.a -o testdec.o -felf64
tcc testdec.o -o testdec
./testdec
rm testdec testdec.o

#test regstats.ah
#nasm testregstats.a -o testregstats.o -felf64
#tcc testregstats.o -o testregstats
#./testregstats	saotne asone
#rm testregstats testregstats.o

#test util.ah
nasm testutil.a -o testutil.o -felf64
tcc testutil.o -o testutil
./testutil
rm testutil testutil.o

#test find.ah
nasm testfind.a -o testfind.o -felf64
tcc testfind.o -o testfind
./testfind
rm testfind testfind.o
