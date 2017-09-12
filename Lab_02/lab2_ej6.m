function [w Iteraciones] = lab2_ej6(fun)
    x0 = 1.4;
    epsilon = 1e-5;
    num_itera = 100;
    [hx k]= ripf(fun, x0, epsilon, num_itera);
    grid on;
    w = hx(end);
    M=zeros(2*(length(hx)-1),2);
    M(1,1)=hx(1);
    M(1:2:end-1,2)=hx(2:end)';
    M(2:2:end,:)=[hx(2:end)',hx(2:end)'];
    M(3:2:end,1)=hx(2:end-1)';
    x=-1:0.1:2;
     plot(x,x,x,fun(x),M(:,1),M(:,2));
        legend('recta y = x','f(x)','iteraciones')
    Iteraciones = k
end
