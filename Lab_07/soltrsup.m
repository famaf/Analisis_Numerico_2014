function [x] = soltrsup(A, b)

	n = length(b);
	
	if prod(diag(A)) == 0
		disp("ERROR LA MATRIZ ES SINGULAR");
		return
	end
	
	x(n) = b(n) / A(n,n);
	
	for k=n-1:-1:1
		s = 0;
		
		for t=k+1:n
			s = s + A(k,t)*x(t);
		end
		
		x(k) = (b(k) - s) / A(k,k);
		
	end
	
end	
		
# A = [2 -1 3 -3;0 -1 5 2;0 0 4 1;0 0 0 -3]
# b = [2;-9;-3;9]
# Resultado = [-2;3;0;-3]
