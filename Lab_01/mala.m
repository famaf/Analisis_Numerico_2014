function [x_1, x_2] = mala(a,b,c)
    if(a != 0)    
	    x_1=(-b+sqrt(b*b -4*a*c))/(2*a)
	    x_2=(-b-sqrt(b*b -4*a*c))/(2*a)
	end
end
