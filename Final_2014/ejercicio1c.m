function S = ejercicio1c(N)

	a = 1;
	b = pi;
	
	xd = linspace(1, pi, 15);
	
	yd = [];
	
	for k=1:15
		yd = [yd f(xd(k))];
	end



    h = (b - a)./(N - 1);
    
    hf = h./3;
    
    xs = linspace(a, b, N);
    
    x = inewton(xd, yd, a);

    w = inewton(xd, yd, b);

    suma1 = 0;
    suma2 = 0;
    
    if mod(N,2) ~= 0
    
        for i=2:((N-1)./2)
            suma1 = suma1 + inewton(xd, yd, xs((2.*i) - 1));
        end
    
        for j=1:((N-1)./2)
            suma2 = suma2 + inewton(xd, yd, xs(2.*j));
        end
    
    else
 
        for i=2:(N./2)
            suma1 = suma1 + inewton(xd, yd, xs((2.*i)-2));
        end
        
        for j=1:(N./2)
            suma2 = suma2 + inewton(xd, yd, xs((2.*j)-1));
        end
          
    end     
    
    S = hf .* (x + (2.*suma1) + (4.*suma2) + w);

end
