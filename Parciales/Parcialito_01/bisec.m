function hy = bisec()

global xdat;
global ydat;
load datos.dat

[hx, hy] = rbisec(@interpol, [-1 4], eps, 100);

plot(hx,'o')


end
