function [p, t, s] = error_abs(fun, a, b, N)

    integral_exacta = (e - 1)./e;
    
    p = abs(integral_exacta - pm(fun, a, b, N));
    
    t = abs(integral_exacta - trapecio(fun, a, b, N));
    
    s = abs(integral_exacta - simpson(fun, a, b, N));
    
end    
