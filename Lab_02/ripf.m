function [hx k] = ripf(fun,x0,epsilon,num_itera)

    k = 0;
    y = fun(x0);
    hx = [y];
    while abs(y - x0) >= epsilon && k<=num_itera
        x0 = y;
        y = fun(x0);
        k = k+1;
        hx = [hx y];
    end
    
    if k>num_itera
        disp('Máximo de iteraciones alcanzado');
    
    else
        disp('Punto fijo hallado');
        
    end
end            
        
