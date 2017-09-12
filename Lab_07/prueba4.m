function x = prueba4

    c = [-1; -2];
    A = [-1 1; 1 1];
    b = [2; 4];

    ctype = "UU";

    x = glpk(c, A, b, [], [], ctype, [], 1);

end
