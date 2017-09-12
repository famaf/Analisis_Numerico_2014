function [z valuado]= evalua(n)

	x = linspace(1,pi,15);
	xfun = linspace(1,pi,500); 
	
	for i = 1:15	
		y(i) = fun(x(i)); # y para interpolacion
	end

	for i =1:500
		yfun(i) = fun(xfun(i)); # y para f(x)
	end

	for i = 1:n
		z(i) = 2*i+1; # n numeros impares de 3 a 49
	end	
	
	#for i = 1:n
	#	valuado(i) = inewton(x,y,z(i)); # p(x) valuado en N puntos de z
	#end
	
	valuado = inewton(x,y,z);

	for i=1:n	
		xs(i) = x(i);
		ys(i) = y(i);
	end
	
	plot(xs,ys,'ok') #puntos usados para interpolacion
	hold on
	grid on
	fplot(@fun,[1,pi],'b') # f(x)
	#plot(z,valuado,'or') #polinomio interpolante
	
end
