import graph;

settings.outformat="pdf";

size(10cm,0);

real a=.05;
real b=.75;
real i0=0.01;
real l1=-1;
real r1=0;
real l2=r1;
real r2=5;
real l3=r2;
real r3=5.5;
real l4=r3;
real r4=7;
real i1(real u) {
    return i0*exp(a*u);
};
real i2(real u) {
    real u0 = (2*i0*a/3/b)^2;
    return i0+b*(u+u0)^1.5;
};
real i3(real u) {
    real is = i2(l3);
    real c = 1.5;
    real d = l3 + (r3-l3)*1.1;
    return is + c*(l3-d)^2 - c*(u-d)^2;
};
real i4(real u) {
    real is = i3(l4);
    real c = .1;
    return is + c * (u-l4);
};
//real F3(real u){return F1(x)+F2(x);};
path b1=graph(i1, l1, r1, operator ..),
     b2=graph(i2, l2, r2, operator ..),
     b3=graph(i3, l3, r3, operator ..),
     b4=graph(i4, l4, r4, operator ..);
draw(b1,black);
draw(b2,black);
draw(b3,black);
draw(b4,black);
draw((l4,i4(l4))--(r4,i4(l4)), dashed);
xaxis("$u$", 1.1l1, 1.1r4, Arrow);
yaxis("$i$", 0, 1.2*i2(r2), Arrow);
label("0", (0,0), S);
