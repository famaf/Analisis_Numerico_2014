function [M, N] = jacobi(A)

	D = diag(diag(A));

	L = triu(A) - D;
		
	U = tril(A) - D;
	
	M = D;
	
	N = - L - U;

