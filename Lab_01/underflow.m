function [i] = underflow()
    i = 0;
    while ((2^i)~=0)
        i = i - 1;
    end
end
