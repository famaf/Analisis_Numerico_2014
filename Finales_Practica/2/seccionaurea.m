function [hx, hf, k] = seccionaurea(fun, int, err, M)
    alfa = ((3 - sqrt(5))/2);
    a = int(1);
    b = int(2);
    u = fun(a);
    v = fun(b);
    hx = [];
    hf = [];
    if sign(u) == sign(v)
        disp('La raiz no esta en este intervalo');
        return;
    end
    
    for k=1:M
        c = alfa*a + (1 - alfa)*b;
        w = fun(c);
        hx = [hx c];
        hf = [hf fun(c)];
        
        if abs(w) < err
            return;
        end
            
        if sign(w)!=sign(u)
            b = c;
            v = w;
        else 
            a = c;
            u = w;
        end
    end
end
