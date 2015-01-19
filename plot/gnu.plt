set terminal png  transparent enhanced  fontscale 1.0 size 500, 350 
set output 'sampleGraphRep.png'

# color definitions
set border linewidth 1.5
set style line 1 lc rgb 'gray30' lt 1 lw 2
set style line 2 lc rgb 'gray40' lt 1 lw 2
set style line 3 lc rgb 'gray70' lt 1 lw 2
set style line 4 lc rgb 'gray90' lt 1 lw 2
set style line 5 lc rgb 'black' lt 1 lw 1.5

set style fill solid 1.0 border rgb 'grey30'

set key right top
set border 3

set tics scale 0.75
set xtics nomirror out ('Early Adoption' 0,'Late Adoption' 1)
set ytics nomirror out 0.5 

set yrange [0:1.5]
set xrange [0:1.5]

#width 
bs = 0.5

# Plot mean with variance (std^2) as boxes with yerrorbar
plot 'sample.dat' i 0 u ($0-bs):1:($2**2) notitle w yerrorb ls 1, \
     ''               i 0 u ($0-bs):1:(bs) t 'P1' w boxes ls 2, \
     ''               i 1 u 0:1:($2**2) notitle w yerrorb ls 1, \
     ''               i 1 u 0:1:(bs) t 'P2' w boxes ls 3, \
     ''               i 2 u ($0+bs):1:($2**2) notitle w yerrorb ls 1, \
     ''               i 2 u ($0+bs):1:(bs) t 'P3' w boxes ls 4