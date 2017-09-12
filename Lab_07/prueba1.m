function x = prueba1

    c = [10; 8];
    A = [3 2; 2 6; 8 2];
    b = [3; 3; 5];

    ctype = "LLL";

    x = glpk(c,A,b,[],[],ctype,[],1);

end
