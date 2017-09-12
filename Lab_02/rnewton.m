function [hx hf] = rnewton(fun,x0,epsilon,num_itera)

    [v,deriv] = fun(x0);
    
    hx = [];
    hf = [];

    if abs(v) < epsilon
        hx = x0;
        hf = v;
        return;
    end
        
    for k=1:num_itera

        x1 = x0 - (v/deriv);
        [v,deriv] = fun(x1);
        hx = [hx x1];
        hf = [hf v];
        

        if abs(v) < epsilon || (abs(x1 - x0)/abs(x1)) < epsilon
            return;
        end

       x0 = x1;

    end
end
