function output = posteriors(input)
    n = size(input);
    x = 3:pi/100:7;
    y1 = normpdf(x,mean(input(:,1:(n(1,2)/2))), cov(input(:,1:(n(1,2)/2))));
    y2 = normpdf(x,mean(input(:,(n(1,2)/2)+1:end)), cov(input(:,(n(1,2)/2)+1:end)));
    posterior1 = (y1)./((y1)+(y2));
    posterior2 = (y2)./((y1)+(y2));
    hold all
    plot(x,posterior1)
    plot(x,posterior2)
    title('Posteriors with equal priors')
    xlabel('x')
    ylabel('p(Ci|x)')
    legend('C1', 'C2')
end

