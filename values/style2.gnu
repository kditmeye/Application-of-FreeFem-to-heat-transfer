set terminal pngcairo transparent enhanced font "arial,10" fontscale 3 size 1920, 1080
set output 'result.png'

set title 'Comparison of mesh grid influence on numerical results'
set xlabel 'Time (s)
set ylabel 'q[w] at the top of the model
set grid
set style line 2 lt 3 lw 3 pt 3 lc rgb "red"
set key right bottom
set logscale xy
set format y "%.t*10^{%S}";

plot  'exo2-hqtop.dat' title'(1) high number of nodes' with linespoints lt 1 lc rgb "red" lw 4 dashtype 2,  \
	  'exo2-lqtop.dat' title'(2) low number of nodes' with linespoints lt 1 lc rgb "red" lw 4 ,  \
      'exo2-03adaptqtop.dat' title'(3) err=0.3 adapt mesh' with linespoints lt 1 lc rgb "black" lw 4 dashtype 2,  \
      'exo2-02adaptqtop.dat' title'(4) err=0.2 adapt mesh' with linespoints lt 1 lc rgb "black" lw 4 ,  \
	 
	 
