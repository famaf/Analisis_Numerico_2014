function s = intenumcom(fun, a, b, N, regla)

    switch regla
        case {'puntomedio'}
            s = pm(fun, a, b, N);
        case {'trapecio'}
            s = trapecio(fun, a, b, N);
        case {'simpson'}
            s = simpson(fun, a, b, N);
        otherwise
            disp('Ingrese una regla valida');
            s = NaN;
    endswitch            
    
end
