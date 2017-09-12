function [a b] = ejer1b()
    
    xs = linspace(0,10,20);
    
    ao = (0.75);
    bo = (-0.5);
    
    yss = polyval([ao bo], xs);
    
    ys = polyval([ao bo], xs) + randn(1,length(xs));
    
       
    coefs = polyfit(xs,ys,1);
    
    a = coefs(1)
    
    b = coefs(2)
    
    plot(xs,ys,'or')
    grid on
    hold on
    plot(xs,yss)

end
