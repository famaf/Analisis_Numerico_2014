function [s, contador] = suma_aleatorio(Tol)

    s = 0;
    contador = 0;
    
    while s <= Tol
        s = s + randn;
        contador = contador + 1;
    end
    
end
