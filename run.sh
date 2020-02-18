#! /bin/bash
MAIN=CHECK.c
SUB=`ls *.c | fgrep -v $MAIN`
echo $MAIN $SUB
gcc -lm $MAIN $SUB
./a.out
./prof.plt
ps2pdf14 output.ps
mv output.pdf func_hk.pdf
./prof4lagint.plt
ps2pdf14 output.ps
mv output.pdf intplt_samp.pdf
