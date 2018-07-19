function prediction_1 = p3q2(input)
    pima = load('pima.txt');
    training = pima(1:500,:);
    training_0 = training(training(:,9) == 0,:);
    training_1 = training(training(:,9) == 1,:);
    mu_0 = mean(training_0(:,1:8));
    mu_1 = mean(training_1(:,1:8));
    sigma = cov(training(:,1:8));
%     s = zeros(size(sigma,1),size(sigma,2));
%     
%     for i = 1:size(sigma,1)
%         temp = sigma;
%         temp(eye(size(temp))~=0) = sigma(i,i);
%         temp
%         s = s + temp;
%     end

    s1 = sigma;
    s1(eye(size(s1))~=0) = 1.0e+04*0.0011;
    s2 = sigma;
    s2(eye(size(s2))~=0) = 1.0e+04*0.1052;
    s3 = sigma;
    s3(eye(size(s3))~=0) = 1.0e+04*0.0378;
    s4 = sigma;
    s4(eye(size(s4))~=0) = 1.0e+04*0.0247;
    s5 = sigma;
    s5(eye(size(s5))~=0) = 1.0e+04*1.4343;
    s6 = sigma;
    s6(eye(size(s6))~=0) = 1.0e+04*0.0067;
    s7 = sigma;
    s7(eye(size(s7))~=0) = 1.0e+04*0.0000;
    s8 = sigma;
    s8(eye(size(s8))~=0) = 1.0e+04*0.0135;
    
    s = (s1+s2+s3+s4+s5+s6+s7+s8)/8;
    
%     s = s/size(sigma,1);
    sigma = s;   
    mvnpdf_0 = mvnpdf(input(:,1:8),mu_0, sigma);
    mvnpdf_1 = mvnpdf(input(:,1:8),mu_1, sigma);
    prior_0 = size(training_0,1)/size(training,1);
    prior_1 = size(training_1,1)/size(training,1);
    prosterior_0 = (mvnpdf_0.*prior_0)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prosterior_1 = (mvnpdf_1.*prior_1)./((mvnpdf_0.*prior_0)+(mvnpdf_1.*prior_1));
    prediction_0 = prosterior_0 <= 0.5;
    prediction_1 = prosterior_1 > 0.5;
end


