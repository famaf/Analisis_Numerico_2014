function ejer2b()

    xs = linspace(0,(4.*pi),50);
    
    ys = cos(xs);
    
    coef = polyfit(xs, ys, 2);

    yss = polyval(coef, xs);

    er = sum((ys - yss).^2);

    grid on
    hold on    
    plot(xs, ys, 'r')
    plot(xs, yss,'*')
    legend('Funcion original', 'Ajuste')              

end
