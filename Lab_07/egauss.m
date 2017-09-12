function [U, y] = egauss(A, b)

	U = [];
	y = [];
	n = length(b);
	
	for k=1:n-1
		if A(k,k) == 0
			disp("ERROR LA MATRIZ ES SINGULAR");
			return
		end
		
		for i=k+1:n
			m = A(i,k) / A(k,k);
			A(i,k) = 0;
			
			for j=k+1:n
				A(i,j) = A(i,j) - m*A(k,j);
			end
			
			b(i) = b(i) - m*b(k);
		end
		
	end
	
	U = A;
	y = b;
	
end

# A = [2 -2 1;1 1 3;0 4 1]
# b = [-1;6;9]
# Resultado:
# U = [2 -2 1;0 2 5/2;0 0 -4]
# y = [-1;13/2;-4]
