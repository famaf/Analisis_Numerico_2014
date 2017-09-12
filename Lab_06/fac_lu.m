function [L, U] = fac_lu(A)

	[m, n] = size(A);
	
	for k=1:n-1
		if A(k,k) == 0
			disp("LA MATRIZ ES SINGULAR");
			return
		end
		
		j=k+1:n;
		
		A(j,k) = A(j,k) / A(k,k);
		
		A(j,j) = A(j,j) - (A(j,k)*A(k,j));
	end
	
	L = eye(n) + tril(A,-1);
	
	U = triu(A);
	
end
