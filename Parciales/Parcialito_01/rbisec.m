function [hx, hf] = rbisec (fun, intervalo, epsilon, num_itera)
    a = intervalo(1);
    b = intervalo(2);
    u = fun(a);
    v = fun(b);
    prom = b - a;
    hx = [];
    hf = [];
    if sign(u) == sign(v)
        disp('La raiz no esta en este intervalo');
        return;
    end
    
    for k=1:num_itera
        prom = prom/2;
        c = a + prom;
        w = fun(c);
        hx = [hx c];
        hf = [hf fun(c)];
        
        if abs(w) < epsilon
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
