function [x] = soltrinf(A, b)

	n = length(b);
	
	if prod(diag(A)) == 0
		disp("ERROR LA MATRIZ ES SINGULAR");
		return
	end
	
	x(1) = b(1) / A(1,1);
	
	for k=2:n
		s = 0;
		
		for t=1:k-1
			s = s + A(k,t)*x(t);
		end
		
		x(k) = (b(k) - s) / A(k,k);
		
	end
	
end

# A = [2 0 0;-3 1 0;1 4 -2]
# b = [-2;7;11]
# Resultado = [-1;4;2]
