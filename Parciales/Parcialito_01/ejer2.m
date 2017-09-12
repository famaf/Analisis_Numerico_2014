function ejer2()

    load datos.dat
    
    z = linspace(-1, 4, 100);
    
    l = ilagrange (xdat,ydat,z);
    
    n = inewton (xdat, ydat,z);
    
    d = n - l;
    %plot (z, d)
    %grid on
    %hold on
    plot(z, l,'o')
    grid on
    hold on
    plot (z, n,'r')
    
end
