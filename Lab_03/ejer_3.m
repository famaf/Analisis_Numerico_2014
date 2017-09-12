function w = ejer_3()
    x = 1:5;
    y = f(x);
    z = linspace(1, 5, 101);
    q = ilagrange(x, y ,z);
    #fplot(@f,[0.5 5.5])
    hold on
    plot (x,y,'or','markersize',10, z,q,'+k')
    grid on
end
