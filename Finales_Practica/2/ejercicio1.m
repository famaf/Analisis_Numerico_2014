function S = ejercicio1

    a = -1;
    b = 1;
    N = 100;

    xd = [-1 -0.75 -0.51 -0.27 -0.3 0.21 0.45 0.7 0.94 1.18];
    
    yd = [0.02 0.13 0.64 1.2 1.3 1.26 1.02 0.49 0.19 0.08];


    h = (b - a)./(N - 1);
    
    hf = h./3;
    
    xs = linspace(a, b, N);
    
    x = ilagrange(xd,yd,a);

    w = ilagrange(xd,yd,b);

#ilagrange(xd,yd,z)

    suma1 = 0;
    suma2 = 0;
    
    if mod(N,2) ~= 0
    
        for i=2:((N-1)./2)
            suma1 = suma1 + ilagrange(xd,yd,xs((2.*i) - 1));
        end
    
        for j=1:((N-1)./2)
            suma2 = suma2 + ilagrange(xd,yd,xs(2.*j));
        end
    
    else
 
        for i=2:(N./2)
            suma1 = suma1 + ilagrange(xd,yd,xs((2.*i)-2));
        end
        
        for j=1:(N./2)
            suma2 = suma2 + ilagrange(xd,yd,xs((2.*j)-1));
        end
          
    end     
    
    S = hf .* (x + (2.*suma1) + (4.*suma2) + w);
    
end
