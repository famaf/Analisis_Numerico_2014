function [y0] = interpol(x0)

load ("datos.dat")

y0 = inewton(xdat, ydat, x0);

end
