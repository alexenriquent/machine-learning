function output = p5q2()
    load('mnist_train.mat');
    dimensions = 2;
    sigma = cov(train_X);
    [eigenvectors,eigenvalues] = eig(sigma);
    [eigenvalues,index] = sort(diag(eigenvalues),'descend');

%     x = 1:size(eigenvalues);
%     hold all
%     plot(x,eigenvalues,'k')
%     plot(x,eigenvalues,'k+')
%     title 'Scree graph for MNIST'
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
%      title 'Proportion of variance explained'
%     xlabel('Eigenvectors')
%     ylabel('Proportion of variance')
    
    eigenvectors = eigenvectors(:,index(1:dimensions));
    eigenvalues = eigenvalues(1:dimensions);
    data = train_X*eigenvectors;
    
    colours = 'krbmcgykrb';
    hold all
    for i = 1:10
        index = find(train_labels == i);
        plot(data(index,1),data(index,2),[colours(i) '.'])
    end
    title 'MNIST after PCA'
    xlabel('First eigenvector')
    ylabel('Second eigenvector')
end

