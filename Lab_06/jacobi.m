function [x, k] = jacobi(A, b, x0, er, m)

    n = length(b); 
    x=x0; % usar x0 solo una vez fuera del ciclo
    
    for k=1:m
        y = x; % actualizar el vector con la informacion nueva 

        for i=1:n 
            j = [1:i-1, i+1:n]; 
            x(i) = (b(i) - A(i,j)*y(j)) / A(i,i); 
        end 
        
        if norm(y - x, inf) < er 
            return; 
        end 
    end
end

# A = [2,-1,0;-1,3,-1;0,-1,2]; b = [1;8;-5];

# A = [5, 7, 6, 5; 7, 10, 8, 7; 6, 8, 10, 9; 5, 7, 9, 10]; b = [23;32;33;21];
            

