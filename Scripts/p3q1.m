function prediction_1 = p3q1(input)
    pima = load('pima.txt');
    training = pima(1:500,:);
    training_0 = training(training(:,9) == 0,:);
    training_1 = training(training(:,9) == 1,:);
    mu_0 = mean(training_0(:,1:8));
    mu_1 = mean(training_1(:,1:8));
    sigma_0 = cov(training_0(:,1:8))
    sigma_1 = cov(training_1(:,1:8))
    mvnpdf_0 = mvnpdf(input(:,1:8),mu_0, sigma_0);
    mvnpdf_1 = mvnpdf(input(:,1:8),mu_1, sigma_1);
    prior_0 = size(training_0,1)/size(training,1);
    prior_1 = size(training_1,1)/size(training,1);
    prosterior_0 = (mvnpdf_0.*prior_0)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prosterior_1 = (mvnpdf_1.*prior_1)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prediction_0 = prosterior_0 <= 0.5;
    prediction_1 = prosterior_1 > 0.5;
end

