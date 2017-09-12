function yi = la3_ej6()

    load datos_aeroCBA.dat
    M = datos_aeroCBA;
    years = M(:,1);
    temp = M(:,3);
    y_sin_temp = years(isnan(temp));
    y_con_temp = years(!isnan(temp));
    temp_nonan = temp(!isnan(temp));

    yi = interp1(y_con_temp,temp_nonan, years,"spline","extrap");
    
    meses = linspace(years(1),years(end),10000);
    zi = interp1(y_con_temp,temp_nonan, meses,"spline","extrap");
    
    plot(y_con_temp,temp_nonan,'ro',years,yi,'k+')
    hold on
    plot(y_con_temp,temp_nonan,'ro',meses,zi,'k')
    grid on
    
end
