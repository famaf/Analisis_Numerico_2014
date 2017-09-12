function [A, Y, x] = matriz

    A = [a, 2, 5, c; 0, 1, b, 3; 0, 0, 2, 4; 0, 0, 1, 1];

    Y = [1, 4, 9, 3]';
    
    x = soleg(A, Y);
    
end
