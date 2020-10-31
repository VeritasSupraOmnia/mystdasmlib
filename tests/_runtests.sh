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
