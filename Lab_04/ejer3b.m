function [a b] = ejer3b()

    load 'datos3b.mat'

    ys = 1./(y);
    xs = 1./(x);
    
    coef = polyfit(xs, ys, 1);
    
    a = coef(1);
    b = coef(2); 
    xss = [xs(1) xs(end)];
    
    yss = a +b.*xss;
    
    bb = e.^(b);
        
    mm = x./(b.*x + a);
    
    figure(1)
    plot(xs,ys,'or')
    grid on
    hold on
    plot(xss, polyval(coef, xss))
    
    figure(2)
    grid on
    hold on
    plot (x, y, '+')
    
    plot(x, mm, 'r')
    
end   
