function prueba3

    A = [2 3; 3 2];
    b = [2; 2];

    x1 = soleg(A,b);


    A = [2 3; 1 1];
    b = [2; 1];

    x2 = soleg(A,b);


    A = [2 3; 1 0];
    b = [2; 0];

    x3 = soleg(A,b);


    A = [3 2; 1 1];
    b = [2; 1];

    x4 = soleg(A,b);


    A = [3 2; 1 0];
    b = [2; 0];

    x5 = soleg(A,b);


    A = [1 1; 1 0];
    b = [1; 0];

    x6 = soleg(A,b);


    xd = [x1(1) x2(1) x3(1) x4(1) x5(1) x6(1)];
    yd = [x1(2) x2(2) x3(2) x4(2) x5(2) x6(2)];

    fill(xd, yd, 'r');
    grid on

# NO SALE EL EJERCICIO 6 del teorico

end
