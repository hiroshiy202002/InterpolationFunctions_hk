#! /usr/bin/gnuplot
   set termoption noenhanced
   set term postscript enhanced color
   set output 'output.ps'
   set lmargin 7
   set rmargin 2
   set bmargin 7
   set tmargin 2
   set tit font 'Helvetica, 21'
   set key font 'Helvetica, 10'
   set key left bottom
   POSITION = '-24, -32'
   set grid lc rgb 'gray70'
   set xr [ -1.1 : 1.1 ]
   set format y '%2.1e'
   unset colorbox
   set tit 'Interpolation sample' offset @POSITION
   #  set size square
   set autoscale y
   set yr [ -0.6 : 2.1 ]
   plot 0 w l dt (10,5) lc rgb '#000000' notit, \
   'sampledata/X2pX.dat' u 1:2 w lp lw 3.0 pt 9 ps 1.2 lc rgb "#ff0000" notit, \
   'lagint.dat' u 1:2 w lp pt 7 ps 0.4 lc rgb "#000000" notit
