function output = p4q1(input)
    load('heightWeight.mat');
    x_1 = heightWeightData(heightWeightData(:,1) == 1,:);
    x_2 = heightWeightData(heightWeightData(:,1) == 2,:);
    X = [x_1(:,2:3); x_2(:,2:3)];
    rng(1);
    opts = statset('Display','final');
    [idx,C] = kmeans(X,2,'Distance','cityblock','Replicates',5,'Options',opts);
    hold all
%      plot(X(idx==1,1),X(idx==1,2),'r.','MarkerSize',12)
%      plot(X(idx==2,1),X(idx==2,2),'k.','MarkerSize',12)
%      plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3)
%      legend('Cluster 1','Cluster 2','Centroid','Location','NW')
%      title 'Clusters and Centroids'
    plot(X(1:73,1),X(1:73,2),'r.','MarkerSize',12)
    plot(X(74:end,1),X(74:end,2),'k.','MarkerSize',12)
    plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3)
    legend('Class 1','Class 2','Centroid','Location','NW')
    title 'Class Labels and Centroids'
    xlabel('Weight')
    ylabel('Height')
end
