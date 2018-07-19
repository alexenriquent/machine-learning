function data = p5q3()
    load('swiss_roll_data.mat')
    X = X_data';
    Y = Y_data';
    dimensions = 2;
    sigma = cov(X);
    [eigenvectors,eigenvalues] = eig(sigma);
    [eigenvalues,index] = sort(diag(eigenvalues),'descend');
    
%     x = 1:size(eigenvalues);
%     hold all
%     plot(x,eigenvalues,'k')
%     plot(x,eigenvalues,'k+')
%     title 'Scree graph for Swiss Roll'
%     xlabel('Eigenvectors')
%     ylabel('Eigenvalues')

%     pov = [];
%     x = 1:size(eigenvalues);
%     pca1 = sum(eigenvalues(1))/sum(eigenvalues)
%     pca2 = sum(eigenvalues(1:2))/sum(eigenvalues)
%     for i = 1:size(eigenvalues)
%         pov = [pov (sum(eigenvalues(1:i))/sum(eigenvalues))];
%     end
%     hold all
%     plot(x,pov,'k')
%     plot(x,pov,'k+')
%     title 'Proportion of variance explained'
%     xlabel('Eigenvectors')
%     ylabel('Proportion of variance')
    
    eigenvectors = eigenvectors(:,index(1:dimensions));
    eigenvalues = eigenvalues(1:dimensions);
    data = X*eigenvectors;
    
%     figure
%     scatter3(X_data(1,1:5000),X_data(2,1:5000),X_data(3,1:5000),20,color(1:5000),'o')
%     title 'Swiss Roll'

%     figure
%     scatter(X(1:5000,1),X(1:5000,2),20,color(1:5000),'o')

%     plot(X(:,1),X(:,2),'ko')
%     title 'Swiss Roll after PCA'
%     xlabel('First eigenvector')
%     ylabel('Second eigenvector')
end

