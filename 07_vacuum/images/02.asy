import graph;
settings.render=0;
settings.prc=false; // on se restreint à une vue 2d
settings.outformat="pdf";
settings.inlineimage=true;

size(10cm,0);

real F1(real x){return -.3/x;};
real F2(real x){return -.3x;};
real F3(real x){return F1(x)+F2(x);};
path b1=graph(F1,.2, 2, operator ..),
     b2=graph(F2,.2, 2, operator ..),
     b3=graph(F3,.2, 2, operator ..);
draw(b1,black+dashed);
draw(b2,black+dashed);
draw(b3,black);
draw((1,-.6)--(1,0),Arrows);
label("$\Delta A$", (1, -.3), E);
xaxis("$x$", -.3, 2.5, Arrow);
yaxis("$W$", -2, .2, Arrow);
label("0", (0,0), SW);
