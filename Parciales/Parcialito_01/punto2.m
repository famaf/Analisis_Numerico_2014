function punto2()

    load datos.dat
    
    z = linspace(-1, 4, 100);
    
    l1 = ilagrange (xdat,ydat,z);
    
    n1 = inewton (xdat, ydat,z);
  
    d = abs(l1 - n1)
   
    hold on
    
    figure(1)
    plot(xdat,ydat,'or')
    plot(z, l1, 'g')
    grid on
    
    figure(2)
    plot(xdat,ydat,'or')
    plot(z, n1, 'b')
    grid on
   
    figure(3)
    plot(xdat,ydat,'or')
    plot(d)
    grid on    
      
end
