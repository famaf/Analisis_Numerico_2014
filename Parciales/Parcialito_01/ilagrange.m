function w = ilagrange(x,y,z)
    
    n = length(x) - 1;
    ni = length(z);

    L = ones(n+1,ni);

    for k = 0 : n    
        for kk = 0 : (k-1)
            L(kk+1,:) = L(kk+1,:).*(z - x(k+1))/(x(kk+1)-x(k+1));
        end
    
        for kk = k+1 : n
            L(kk+1,:) = L(kk+1,:).*(z - x(k+1))/(x(kk+1)-x(k+1)); 
        end
        
    end
    
    w = y * L;
    
end
