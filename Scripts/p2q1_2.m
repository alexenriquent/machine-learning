function output = p2q1_2()
    x = linspace(0,5,100);
    y = 2*sin(1.5*x);
    x2 = linspace(0,5,20);
    y2 = 2*sin(1.5*x2) + normrnd(mean(y),1, 1,length(x2));
    x3 = linspace(0,5,20);
    y3 = 2*sin(1.5*x3) + normrnd(mean(y),1, 1,length(x2));
    [xData1, yData1] = prepareCurveData(x2, y2);
    [xValidation, yValidation] = prepareCurveData(x3, y3);
    [fitresult, gof] = fit(xData1,yData1,fittype('poly1'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [gof.sse];
    sse2 = [sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly2'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly3'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly4'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly5'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly6'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly7'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly8'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    [fitresult, gof] = fit(xData1,yData1,fittype('poly9'));
    residual = yValidation - fitresult( xValidation );
    residual(isnan( residual )) = [];
    sse = norm( residual )^2;
    sse1 = [sse1 gof.sse];
    sse2 = [sse2 sse];
    
    degree = 1:9;
    hold all
    plot(degree,sse1)
    plot(degree,sse2)
    title('Error vs. Polynomial Order')
    xlabel('Polynomial Order')
    ylabel('SSE')
    legend('Training', 'Validation')
end

