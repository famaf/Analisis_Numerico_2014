function [x k]  = ejercicio2(m)

    A = [10 0 -1; 4 12 -4; 4 4 10];

    b = [-1 8 4]';

    x0 = [1 2 0]';

    er = 10^(-15);

    [x k] = gseidel(A, b, x0, er, m);

end  
