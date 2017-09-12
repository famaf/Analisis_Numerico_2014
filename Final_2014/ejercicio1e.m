function [i_f, i_p, d]  = ejercicio1e

	N = [3:2:49];

	for i=1:length(N)
    	i_f = ejercicio1d; # VALOR DE LA INTEGRAL DE LA FUNCION
    
    	i_p(i) = ejercicio1c(N(i)); # VALOR DE LA INTEGRAL DEL POLINOMIO INTERPOLANTE
    
    	d(i) = abs(i_f - i_p(i)); # VALOR ABS. DE LA DIFERENCIA DE LOS RESULTADOS DE LAS INTEGRALES
	end

end

