function A = vander(m,n,alpha)
    A = zeros(m,n);
    
    for i = 1:m
        for j = i:n
            A(i,j) = 1/(i+j);
        end
    end
end        
