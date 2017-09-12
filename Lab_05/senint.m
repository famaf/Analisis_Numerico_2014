function y = senint(x)

    N = x./0.05;
    
    for i=1:length(x)
        y(i) = trapecio(@cos, 0, x(i), ceil(N(i)));
    end
    
end

    
