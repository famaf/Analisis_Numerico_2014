function [simp, trap, pmed] = ejercicio1

    a = 0;

    b = 1/(sqrt(2));

    N = 55;
    
    simp = simpson(@f, a, b, N);

    trap = trapecio(@f, a, b, N);

    pmed = pm(@f, a, b, N);

end 
