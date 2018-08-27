function output = p2q3(housing)
    n = size(housing);
    input = housing(1:(n/2),6);
    target = housing(1:(n/2),14);
    hold all
    plot(input,target,'+')
    xlabel('x')
    ylabel('y')
    title('Housing Data')
    plot(fit(input,target,fittype('poly1')))
    plot(fit(input,target,fittype('poly2')))
    plot(fit(input,target,fittype('poly3')))
    plot(fit(input,target,fittype('poly4')))
    plot(fit(input,target,fittype('poly5')))
end
