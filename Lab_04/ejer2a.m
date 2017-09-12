function [er] = ejer2a(n)

    xs = linspace(0,1,50);
    
    ys = asin(xs);
    
    coef = polyfit(xs, ys, n);
   
    yss = polyval(coef, xs);

    er = sum((ys - yss).^2);
        
    grid on
    hold on    
    plot(xs, ys, 'r')
    plot(xs, yss,'*')
    legend('Funcion original', 'Ajuste')              
    
end
    
    
