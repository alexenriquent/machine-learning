function centroids = p4q2(X,lambda)
    
    centroids = [];
    numObservations = size(X,1);
    numClusters = 0;
    initialIndices = (1:numObservations)';
    epsilon = 1e-3*lambda;
    flag = false(numObservations,1);
    numInitialObservations = numObservations;
    votes = zeros(numObservations,1);
    clusterMembers = [];
    
    while numInitialObservations
        index = initialIndices(ceil((numInitialObservations-1e-6)*rand));
        mu = X(index,:);
        members = [];
        thisVotes = zeros(numObservations,1);
        while true
            sumSquaredDistances = sum(bsxfun(@minus,mu,X).^2,2);
            indices = find(sumSquaredDistances <= lambda^2);
            thisVotes(indices) = thisVotes(indices)+1;
            shift = @(x) mean(x,1);
            mu_0 = mu;
            mu = shift(X(indices,:));
            members = [members; indices];
            flag(members) = true;
            
            if norm(mu-mu_0) < epsilon
               mergeability = 0;
               for i=1:numClusters
                   distance = norm(mu-centroids(i,:));
                   if distance < lambda/2
                      mergeability = i;
                      break;
                   end
               end
               
               if mergeability > 0
                    currentMember = numel(members);
                    oldMember = numel(clusterMembers{mergeability});
                    weights = [currentMember;oldMember]/(currentMember+oldMember);
                    clusterMembers{mergeability} = unique([clusterMembers{mergeability};members]);
                    centroids(mergeability,:) = mu*weights(1)+mu_0*weights(2);
                    votes(:,mergeability) = votes(:,mergeability) + thisVotes;
               else
                    numClusters = numClusters+1; 
                    centroids(numClusters,:) = mu;  
                    clusterMembers{numClusters} = members;
                    votes(:,numClusters) = thisVotes;
               end
               break;
            end
        end
        initialIndices = find(~flag);
        numInitialObservations = length(initialIndices);
    end
    [~,data] = max(votes,[],2);
    clusters = cell(numClusters,2);
    for i = 1:numClusters
        point = find(data == i);
        clusters{i} = point;
    end
    
    hold all
    colours = 'rbmcgy';
    for i = 1:numClusters
        point = clusters{i};
        centroid = centroids(i,:);
        plot(X(point,1),X(point,2),[colours(i) '.'])
%         plot(centroid(1),centroid(2),'kx', 'MarkerSize',10,'LineWidth',2)
    end
    plot(centroids(:,1),centroids(:,2),'kx', 'MarkerSize',10,'LineWidth',2)
    xlabel('x')
    ylabel('y')
    title 'Mean Shift Clustering (e, lambda = 4)'
    legend('cluster 1', 'cluster 2', 'centroids')
end
