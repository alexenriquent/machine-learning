function output = p2q1()
    x = linspace(0,5,100);
    y = 2*sin(1.5*x);
    x2 = linspace(0,5,20);
    y2 = 2*sin(1.5*x2) + normrnd(mean(y),1, 1,length(x2));
    x3 = linspace(0,5,20);
    y3 = 2*sin(1.5*x2) + normrnd(mean(y),1, 1,length(x2));
    hold all
    plot(x,y)
    plot(x2,y2,'b+')
    plot(x3,y3,'r+')
    [xData, yData] = prepareCurveData(x2, y2);
    plot(fit(xData,yData,fittype('poly1')))
    plot(fit(xData,yData,fittype('poly2')))
    plot(fit(xData,yData,fittype('poly3')))
    plot(fit(xData,yData,fittype('poly4')))
    plot(fit(xData,yData,fittype('poly5')))
    plot(fit(xData,yData,fittype('poly6')))
    plot(fit(xData,yData,fittype('poly7')))
    plot(fit(xData,yData,fittype('poly8')))
    plot(fit(xData,yData,fittype('poly9')))
    title('Data and fitted polynomials')
end

