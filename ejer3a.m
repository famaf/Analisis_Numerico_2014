function [a c] = ejer3a()

	load "datos3a.mat"

	ys = log(y);
	
	xs = log(x);

	coefs = polyfit(xs,ys,1);

	a = coefs(1)

	c = exp(coefs(2))

	xss = [xs(1) xs(end)];
	
	ycurva = c*x.^a;

	figure(1)	
	plot(xs,ys,'or')
	hold on
	grid on	
	plot(xss,polyval(coefs,xss))

	figure(2)
	plot(x,y,'or')
	hold on
	grid on
	plot(x,ycurva)

end

		
