# nmake makefile
#
# Tools used:
#  Compile::Watcom Resource Compiler
#  Compile::GNU C
#  Make: nmake or GNU make
all : fastgpi.exe

fastgpi.exe : fastgpi.obj fastgpi.def a-float.obj
	gcc -Zomf fastgpi.obj a-float.obj fastgpi.def -o fastgpi.exe
	
fastgpi.obj : fastgpi.c
	gcc -Wall -Zomf -c -O2 fastgpi.c -o fastgpi.obj

a-float.obj : a-float.c a-float.h
	gcc -Wall -Zomf -c -O2 a-float.c -o a-float.obj

clean :
	rm -rf *exe *RES *obj *hlp
