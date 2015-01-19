# wxt
#set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
set terminal png  transparent size 350,262 enhanced font 'Verdana,10'
set output 'gnu.png'
# color definitions
set border linewidth 1.5
set style line 1 lc rgb 'gray30' lt 1 lw 2
set style line 2 lc rgb 'blue40' lt 1 lw 2
set style line 3 lc rgb 'red70' lt 1 lw 2

set style line 4 lc rgb 'green30' lt 1 lw 2
set style line 5 lc rgb 'black' lt 1 lw 1.5

set style fill solid 1.0 border rgb 'grey30'

set xtics nomirror out ('EA' 0,'LA' 1)


set yrange [0:1]
set xrange [-0.6:5]

# Size of one box
bs = 0.2

# Plot mean with variance (std^2) as boxes with yerrorbar
plot 'sample.dat' i 0 u ($0-bs):1:($2**2) notitle ls 1, \
     ''               i 0 u ($0-bs):1:(bs) t 'P1' w boxes ls 2, \
     ''               i 1 u 0:1:($2**2) notitle ls 1, \
     ''               i 1 u 0:1:(bs) t 'P2' w boxes ls 3, \
     ''               i 2 u ($0+bs):1:($2**2) notitle ls 1, \
     ''               i 2 u ($0+bs):1:(bs) t 'P3' w boxes ls 4