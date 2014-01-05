import graph;

settings.outformat="pdf";

size(10cm,0);

real a=.05;
real b=.25;
real xm=sqrt(a/b);
real left=.05;
real right=2xm;
real F1(real x){return -a/x;};
real F2(real x){return -b*x;};
real F3(real x){return F1(x)+F2(x);};
path b1=graph(F1, left, right, operator ..),
     b2=graph(F2, 0, right, operator ..),
     b3=graph(F3, left, right, operator ..);
draw(b1,black+dashed);
draw(b2,black+dashed);
draw(b3,black);
draw((xm,F3(xm))--(xm,0),Arrows);
label("$\Delta A$", (xm, F3(xm)/2), E);
xaxis("$x$", -left, 1.1right, Arrow);
yaxis("$W$", 1.1*F3(left), -.5*F3(right), Arrow);
label("0", (0,0), SW);
