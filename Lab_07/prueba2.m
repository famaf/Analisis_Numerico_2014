function x = prueba2

    c = [200; 300; 400];
    A = [1 2 4; 1 0 0; 0 1 0; 0 0 1];
    b = [16; 4; 4; 2];

    ctype = "SUUU";

    x = glpk(c,A,b,[],[],ctype,[],1);

end
