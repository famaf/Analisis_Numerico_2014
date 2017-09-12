function x = parcialito
	
	a = simpson(@fa,0,1,100);
	b = simpson(@fb,0,1,100);
	c = simpson(@fc,0,1,100);

	A = [a 2 5 c ;0 1 b 3  ; 0 0 2 4 ; 0 0 1 1];
	d = [1 4 9 3];

	x = soleg(A,d);

end
