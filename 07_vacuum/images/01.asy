import graph;
import unicode;
texpreamble("\usepackage{mathtext}\usepackage[russian]{babel}");
settings.outformat="pdf";

size(10cm,0);
real F = 10;
real A = 2;
real density(real E){return 5*sqrt(E)/(exp(2*(E-F))+1);};
path b=graph(density, 0, 15, operator ..);
draw(b,black);
real E = 0;
while (E <= F) {
    draw((E,0)--(E,density(E)), black+.1bp);
    E+= F/40;
};
draw((F+A,0)--(F+A,1.8density(F)), black+1.2bp);
xaxis("$E$", 0, 18, Arrow);
yaxis("$f\cdot g$", 0, 2*density(F), Arrow);
label("0", (0,0), SW);
label("$E_F$", (F,0), S);
label("электроны,", (15, 6));
label("создающие ток", (15,5));
