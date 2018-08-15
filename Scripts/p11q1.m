load('iris.txt')
X = iris(:,3);
N = length(X);

mu_0 = 2;
sigma_0 = 0.5;

m = mean(X);
sigma = std(X);

mu_N = ((sigma^2/(N*sigma_0^2+sigma^2))*mu_0)+((N*sigma_0^2/(N*sigma_0^2+sigma^2))*m);
sigma_N_squared = 1/(1/sigma_0^2+N/sigma^2);
sigma_N = sqrt(sigma_N_squared);

x = 0:0.01:7;
prior_dist = normpdf(x,mu_0,sigma_0);
posterior_dist = normpdf(x,mu_N,sigma_N);

hold all
plot(x,prior_dist)
plot(x,posterior_dist)
plot(X,0,'*k')
title 'Prior and Posterior Distributions'
legend('Prior','Posterior','Data point')
xlabel('x')
ylabel('y')
