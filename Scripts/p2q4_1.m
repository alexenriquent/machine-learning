function output = likelihoods(input)
    n = size(input);
    x = 3:pi/100:8;
    y1 = normpdf(x,mean(input(:,1:(n(1,2)/2))), cov(input(:,1:(n(1,2)/2))));
    y2 = normpdf(x,mean(input(:,(n(1,2)/2)+1:end)), cov(input(:,(n(1,2)/2)+1:end)));
    hold all
    plot(x,y1)
    plot(x,y2)
    title('Likelihoods')
    xlabel('x')
    ylabel('p(x|Ci)')
    legend('C1', 'C2')
end
