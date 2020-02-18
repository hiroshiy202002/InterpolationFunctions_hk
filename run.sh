#! /bin/bash
MAIN=CHECK.c
SUB=`ls *.c | fgrep -v $MAIN`
echo $MAIN $SUB
gcc -lm $MAIN $SUB
./a.out > out.dat
./prof.plt
ps2pdf14 output.ps
