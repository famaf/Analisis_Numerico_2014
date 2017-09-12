function ejercicio1b_2

	xd = [3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49];
	
	N = length(xd);
	
	yd = [];
	
	for k=1:15
		yd = [yd f(xd(k))];
	end
	
	plot(xd, yd, 'or');
	
	z = linspace(1, pi, N);
	
	l = inewton(xd, yd, z);

	figure(1)
    hold on    
    plot(z, l);
    grid on

	fplot(@f, [1 pi], 'r');
	legend('ROJO funcion f(x)','AZUL polinomio Interpolante P(x)');
	grid on
	
	
end
