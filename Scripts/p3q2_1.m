function prediction_1 = p3q2(input)
    pima = load('pima.txt');
    training = pima(1:500,:);
    training_0 = training(training(:,9) == 0,:);
    training_1 = training(training(:,9) == 1,:);
    mu_0 = mean(training_0(:,1:8));
    mu_1 = mean(training_1(:,1:8));
    sigma = cov(training(:,1:8));
    mvnpdf_0 = mvnpdf(input(:,1:8),mu_0, sigma);
    mvnpdf_1 = mvnpdf(input(:,1:8),mu_1, sigma);
    prior_0 = size(training_0,1)/size(training,1);
    prior_1 = size(training_1,1)/size(training,1);
    prosterior_0 = (mvnpdf_0.*prior_0)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prosterior_1 = (mvnpdf_1.*prior_1)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prediction_0 = prosterior_0 <= 0.5;
    prediction_1 = prosterior_1 > 0.5;
end

