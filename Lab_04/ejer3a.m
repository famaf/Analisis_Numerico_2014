function [a c] = ejer3a()

    load 'datos3a.mat'

    ys = log(y);
    xs = log(x);
    
    coef = polyfit(xs, ys, 1);
    
    a = coef(1);
    c = coef(2); 
    
    xss = [xs(1) xs(end)];
    
    yss = a +c.*xss;
    
    ccc = e.^(c);
    
    mmm = ccc .* (x.^a);
    
    figure(1)
    plot(xs,ys,'or')
    grid on
    hold on
    plot(xss, polyval(coef, xss))
    
    figure(2)
    grid on
    hold on
    plot (x, y, '+')
    
    plot(x, mmm, 'r')
    
end   
