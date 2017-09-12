function y = ejer4(x)

    x = x(2:end-1);
    
    for i=1:length(x)
    
        if x(i) > -1 && x(i) < 1
        
            y(i) = simpson(@(t)h(x(i), t) ,0, (pi./2), 100);
            
        else
    
            y(i) = inf;
    
        end
        
    end    

    plot(x, y, '*r')
    grid on
    
end    
    
    
