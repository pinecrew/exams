import graph;
import settings;

outformat="pdf";
size(250,200,IgnoreAspect);

real f(real x){return 1/(exp((x-7)/0.2) + 1);}
xlimits( 0, 10);
ylimits( 0, 2);
draw(graph(f,0.01,10));
draw((0,1)--(7,1)--(7,0), dashed);
xaxis(Label("$E$",position=EndPoint, align=SE),Ticks("%",extend=true), Arrow);
yaxis(Label("$n$",position=EndPoint, align=NW),Ticks("%",extend=true), Arrow);

labelx("$O$",0,SW);
labelx("$E_F$",7,S);
labely("$1$",1,W);
