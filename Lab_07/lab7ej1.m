function lab7ej1

    A = [2 1; -1 3];
    b = [-9; -6];

    x1 = soleg(A, b);
    

    A = [-1 3; 1 2];
    b = [-6; 3];

    x2 = soleg(A, b);


    A = [2 1; 1 2];
    b = [-9; 3];

    x3 = soleg(A, b);

    xd = [x1(1) x2(1) x3(1);]
    yd = [x1(2) x2(2) x3(2);]

    fill(xd, yd, 'r');

#	fill([-3 4.2 -7],[-3 -0.6 5],'r');	

end
