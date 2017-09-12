function S = trapecio(fun, a, b, N)

    h = (b - a) ./ (N - 1);

    xs = linspace(a,b,N);

    x = fun(a);
    
    z = fun(b);

    suma = 0;

    for i=2:(N-1)
        suma = suma + fun(xs(i));
    end

    y = 2 .* suma;

    S = (h./2) .* (x + y + z);

end

