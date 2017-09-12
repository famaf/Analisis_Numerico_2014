function [j] = fac(n)
    j = 1;
    i = 1;
    while i <= n
        j = j * i;
        i = i + 1;
    end
end      
