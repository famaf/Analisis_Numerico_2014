function x = lab7ej3

	c = [4500; 8000];
	A = [5 20; 10 15];
	b = [400; 450];

	x = glpk(c,A,b);

end
