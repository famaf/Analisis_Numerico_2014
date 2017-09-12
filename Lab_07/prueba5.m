function x = prueba5

    c = [-2; 5];
    A = [1 0; 1 0; 0 1; 0 1; 1 1];
    b = [100; 200; 80; 170; 200];

    ctype = "LULUL";

    x = glpk(c, A, b, [], [], ctype, [], -1);

end
