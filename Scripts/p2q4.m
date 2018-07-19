function output = p2q4_0(input)
    load('iris.txt');
    iris_0 = iris(1:50,:);
    iris_1 = iris(51:end,:);
    mu_0 = mean(iris_0);
    mu_1 = mean(iris_1);
    var_0 = cov(iris_0);
    var_1 = cov(iris_1);
    pdf_0 = normpdf(input,mu_0,var_0);
    pdf_1 = normpdf(input,mu_1,var_1);
    posterior_0 = pdf_0./(pdf_0+pdf_1);
    posterior_1 = pdf_1./(pdf_0+pdf_1);
    output = posterior_1 > 0.5;
end

