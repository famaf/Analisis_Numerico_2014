function lab7ej2

	A = [5 20; 10 15];
	b = [400; 450];

	x1 = soleg(A,b);
	

	A = [10 15; 1 1];
	b = [450; 0];

	x2 = soleg(A,b);

	A = [5 20; 1 1];
	b = [1; 1];

	x3 = soleg(A,b);

    xd = [x1(1) x2(1) x3(1)];
    yd = [x1(2) x2(2) x3(2)];

	fill(xd, yd, 'r');
	hold on
    grid on
	
	v1 = 1e+5;
	v2 = 1.5e+5;
	v3 = 2e+5;
	v4 = 2.5e+5;

	xmin = min(x1(1),x2(1));
	xmin = min(xmin,x3(1));
	xmax = max(x1(1),x2(1));
	xmax = max(xmax,x3(1));

	f1 = (v1 - 4000*xmin)/8000;
	f2 = (v1 - 4000*xmax)/8000;
	plot([xmin xmax],[f1 f2]);

	f1 = (v2 - 4000*xmin)/8000;
	f2 = (v2 - 4000*xmax)/8000;
	plot([xmin xmax],[f1 f2]);

	f1 = (v3 - 4000*xmin)/8000;
	f2 = (v3 - 4000*xmax)/8000;
	plot([xmin xmax],[f1 f2]);

	f1 = (v4 - 4000*xmin)/8000;
	f2 = (v4 - 4000*xmax)/8000;
	plot([xmin xmax],[f1 f2]);

end
