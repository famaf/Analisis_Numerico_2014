function w = inewton(x,y,z)

    n = length(x) - 1;
    ni = length(z);

    D = ones(n,n);
                   
    for k = 1 : n 
        D(k,1) = (y(k+1)-y(k))/(x(k+1)-x(k));
    end
                       
    for k = 2 : n
        for kk = 1 : (n-k+1)                             
            D(kk,k) = (D(kk+1,k-1) - D(kk,k-1))/(x(kk+k)-x(kk));
        end            
    end
    
    a(1) = y(1); 

    for k = 2 : (n+1)
        a(k) = D(1,k-1);
    end

    w = a(n+1)*ones(1,ni);

    for k = 1 : n
        w = a(n+1-k)+w.*(z-x(n+1-k));
    end
end
