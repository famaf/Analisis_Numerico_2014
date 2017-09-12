function S = ejercicio1c_2

	a = 1;
	b = pi;

	xd = [3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 37 39 41 43 45 47 49];
	
	N = length(xd);
	
	yd = [];
	
	for k=1:N
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
