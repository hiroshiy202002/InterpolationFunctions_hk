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
   set tit 'Interpolation Function hk' offset @POSITION
   #  set size square
   set autoscale y
   #  set yr [ -1.1 : 1.1 ]
   plot 0 w l dt (10,5) lc rgb '#000000' notit, \
   'out.dat' u 1:2 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:3 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:4 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:5 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:6 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:7 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:8 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:9 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:10 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:11 w lp pt 7 ps 0.4 lc rgb "#000000" notit, \
   'out.dat' u 1:12 w lp pt 7 ps 0.4 lc rgb "#000000" notit
