function S = pm(fun, a, b, N)

    h = (b - a)./(N - 1);
    
    xs = linspace(a, b, N);
    
    suma = 0;
    
    for i=1:((N-1)./2)
        suma = suma + fun(xs(2.*i));
    end
    
    S = 2 .* h .* suma;
    
end      
