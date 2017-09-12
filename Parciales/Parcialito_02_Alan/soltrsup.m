function x = soltrsup(A,b)

	n = length(b);
	
	if prod(diag(A)) == 0
		disp('ERROR: Ingrese una matriz no singular');
		x = NaN;
		return
	end

	x(n) = b(n) / A(n,n);

	for k = n-1:-1:1

		s = 0;

		for j = k+1:n

			s = s + A(k,j) * x(j);
		end

	x(k) = (b(k) - s)/A(k,k);

end
