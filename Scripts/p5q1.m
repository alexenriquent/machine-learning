function data = p5q1(X,dim)
    sigma = cov(X);
    [eigenvectors,eigenvalues] = eig(sigma);
    [eigenvalues,index] = sort(diag(eigenvalues),'descend');
    eigenvectors = eigenvectors(:,index(1:dim));
    eigenvalues = eigenvalues(1:dim);
    data = X*eigenvectors;
    
%     An alternative approach using pca()
%     coeff = pca(X);
%     reducedDimension = coeff(:,1:dim);
%     reducedData = X * reducedDimension;
end

