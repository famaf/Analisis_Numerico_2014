function [i] = overflow()
    i = 0;
    while (isinf(2^i)~=1)        
        i = i + 1;
    end
end    
