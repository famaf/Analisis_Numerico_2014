function [a, b, c] = ejer5a()

    val_ex1 = (e - 2)./e;
    
    N = 2;
    
    while abs(val_ex1 - simpson(@fa, 0, 1, N)) > (1./(10^6))
        N = N + 1;
    end
    
    a = simpson(@fa, 0, 1, N);
    
    N = 2;
    
    val_ex2 = sin(1) - cos(1);
    
    while abs(val_ex2 - simpson(@fb, 0, 1, N)) > (1./(10^6))
        N = N + 1;
    end
    
    b = simpson(@fb, 0, 1, N);
    
    N = 2;
    
    val_ex3 = 1.567951962208787;
    
    while abs(val_ex3 - simpson(@fc, 0, 1, N)) > (1./(10^6))
        N = N + 1;
    end
    
    c = simpson(@fc, 0, 1, N);
    
end
        
