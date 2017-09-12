function [x, k] = gseidel(A, b, x0, er, m)

    n = length(b); 
    x=x0; % usar x0 solo una vez fuera del ciclo
    
    for k=1:m
        y = x; % actualizar el vector con la informacion nueva 

        for i=1:n
            t = 1:i-1;
            j = i+1:n;
            x(i) = ( b(i) - A(i,t)*x(t) - A(i,j)*y(j) ) / A(i,i); 
        end
        
        if norm(y - x, inf) < er 
            return; 
        end 
    end
end

# A = [2,-1,0;-1,3,-1;0,-1,2]; b = [1;8;-5];
