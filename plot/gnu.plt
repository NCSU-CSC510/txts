# set terminal svg size 600,400 dynamic enhanced fname 'arial'  fsize 10 mousing name "pm3d_13" butt dashlength 1.0 
# set output 'pm3d.13.svg'
#set title "Sample output representation"

#set terminal wxt size 500,350 enhanced font 'Verdana,10' persist
set terminal png  transparent enhanced  fontscale 1.0 size 500, 350 
set view 60, 30, 0.85, 1.1
#set output 'contours.17.png'
reset
set xrange [0:2]
set yrange [0:5]
set xlabel "Adotion technique" 
set ylabel "Progress"
plot exp(x),x**5