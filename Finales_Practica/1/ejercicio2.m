function ejercicio2

    hora = [13 14 15 16 17 18];
    grado = [18 18 17 16 15 14];

    plot(hora, grado,'or')

    z = linspace(13, 18, 100);

    l = ilagrange (hora, grado, z);
    hold on    
    plot(z, l);
    grid on    

end
