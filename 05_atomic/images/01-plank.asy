import graph;
import settings;

outformat="pdf";
size(250,200,IgnoreAspect);

real f(real x){return 0.2*x^3/(exp(x/10) - 1);}
real g(real x){return 0.2*x^3/(exp(x/7.5) - 1);}
real h(real x){return 0.2*x^3/(exp(x/5) - 1);}
xlimits( 0, 10);
ylimits( -0, 10);
draw(graph(f,0.01,100));
draw(graph(g,0.01,100));
draw(graph(h,0.01,100));
xaxis(Label("$\omega$",position=EndPoint, align=SE),Ticks("%",extend=true), Arrow);
yaxis(Label("$r^*$",position=EndPoint, align=NW),Ticks("%",extend=true), Arrow);

labelx("$O$",0,SW);
label("$T_1$",(12,32),NE);
label("$1.5T_1$",(20,120),NE);
label("$2T_1$",(30,280),NE);
