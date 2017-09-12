function [x] = sollu(A, b)

	[L,U]=fac_lu(A);
	
	[y] = soltrinf(L, b);
	
	x = soltrsup(U, y);
	
end

