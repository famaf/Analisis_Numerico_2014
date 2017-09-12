function [hx hy] = punto4()

    load ('datos.dat')

    #global xdat;
    #global ydat;

    [hx, hy] = rbisec(@punto3, [-1 4], eps, 100);

    hold on
    grid on
    
    figure(1)
    plot(xdat, ydat, 'o')
    
    figure(2)
    plot(hx, '*')
    
    
    
end
