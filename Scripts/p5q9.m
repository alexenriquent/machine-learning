function p5q9()
    load('swiss_roll_data.mat');
    idx = unidrnd(20000, 5000, 1);
    X = X_data';
    x = X(idx, :);
    mappedX = tsne(x, [], 2, 30, 30);
    plot(mappedX(:,1),mappedX(:,2),'k.')
%     scatter(mappedX(:,1),mappedX(:,2),20,color(1:2000),'o')
    title 'Swiss Roll after t-SNE'
end

