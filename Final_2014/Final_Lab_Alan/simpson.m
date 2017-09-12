function S = simpson(fun,a,b,N)

	h = (b-a)/(N-1);

	xs = linspace(a,b,N);

	fx1 = fun(a);

	fxn = fun(b);

	suma1 = 0;
	suma2 = 0;
	
	if mod(N,2) == 0
	
		for i=2:N/2
			suma1 = suma1 + fun(xs((2*i)-2));
		end

		for j=1:N/2
			suma2 = suma2 + fun(xs((2*j)-1));
		end
	else
		for i=2:(N-1)/2
			suma1 = suma1 + fun(xs((2*i)-1));
		end

		for j=1:(N-1)/2
			suma2 = suma2 + fun(xs(2*j));
		end
	end
	
	S = (h./3).*(fx1 + 2.*suma1 + 4.*suma2 + fxn);

end
