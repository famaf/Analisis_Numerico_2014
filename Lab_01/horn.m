function [p] = horn(coeficientes,x)

    b(1) = coeficientes(1);

    for i = 2:length(coeficientes)
        b(i) = coeficientes(i)+x*b(i-1);
    end

    p = b(length(coeficientes));

    b = b(1:length(b)-1);

end
