#! /bin/bash
gcc -lm sampledata.c ../gauss_lobatto_points.c
./a.out > X2pX.dat
