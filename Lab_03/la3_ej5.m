function n = la3_ej5()
    for (n=1:15)
        x = linspace(-1,1,n+1);
        z = linspace(-1,1,200);
        y = g(x); 
        w = ilagrange (x,y,z);
        plot(z, w)
        grid on
        hold on
        fplot(@g, [-1,1],'r')
        grid on
        hold off
        pause(1)
    end
end
