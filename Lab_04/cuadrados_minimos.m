function [a b] = cuadrados_minimos()

    load datos1a.mat
    
    n = length(xd);
    
    sum1 = sum(xd.^2);
    sum2 = sum(yd);
    sum3 = sum(xd);
    sum4 = sum(xd.*yd);


    a = (sum1.*sum2 - sum3.*sum4) / (n.*sum1 - sum3.^2);
    
    b = (n.*sum4 - sum3.*sum2) / (n.*sum1 - sum3.^2);
    
    xs = [xd(1) xd(end)];
    ys = a + b*xs;
    plot(xd,yd,'o');
    hold on
    plot(xs,ys,'r');
    grid on

end
