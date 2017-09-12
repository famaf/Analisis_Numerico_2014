function diferencias= final

	n = [3:2:49];
	
	for i=1:24	
		x = linspace(1,pi,2*i+1);
	
		y = f(x);

		z = linspace(1,pi,200);

		w = inewton (x,y,z);
		
		plot(x,y,'ok')	# puntos de interpolacion
		hold on
		grid on	
		plot(z,w) # polinomio interpolante
		fplot(@f,[1,pi],'r'); # grafico f(x)

		intp = simpson2(@f,1,pi,2*i+1);	#integral de p(x)

		intf = simpson(@f,1,pi,15); #integral de f(x)
	
		dif = abs(intp - intf); # comparacion de valores

		diferencias(i) = dif;

	end	
		figure		
		plot(n,diferencias,'ok')
	

end
