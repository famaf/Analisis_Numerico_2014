function [a b] = ejer3b()

	load "datos3b.mat"
	
	xs = 1./x;

	ys = 1./y;

	coefs = polyfit(xs,ys,1);

	a = coefs(1)

	b = (coefs(2))

	xss = [xs(1) xs(end)];
	
	yy = x./(b*x+a);

	figure(1)	
	plot(xs,ys,'or')
	hold on
	grid on	
	plot(xss,polyval(coefs,xss))

	figure(2)
	plot(x,y,'or')
	hold on
	grid on
	plot(x,yy)

end

	
