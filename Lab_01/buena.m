function [x_1, x_2]= buena (a,b,c)
    
    disc= b^2-4*a*c;
    
    if disc <= 0
        
    x_1 = (-b+sqrt(b^2-4*a*c))/(2*a)
    x_2 = (-b-sqrt(b^2-4*a*c))/(2*a)
    
    else
        if b>=0
            x_1 = (2*c)/(-b-sqrt(b^2-4*a*c))
            x_2 = (-b-sqrt(b^2-4*a*c))/(2*a)
        else
            x_1 = (-b+sqrt(b^2-4*a*c))/(2*a)
            x_2 = (2*c)/(-b+sqrt(b^2-4*a*c))
        end
     end     
end    

