function [xd, yd] = ejercicio1

    xd = linspace(-10, 10, 1871);

    yd = [];

    for k=1:1871

        yd = [yd @f(xd(k))];

    end

    # n = 1871

end
