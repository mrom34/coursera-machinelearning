function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
%distanceMatrix = zeros(size(X,1), K);

%for i=1:K
  
  	% compute the distance of all the points from that centroid 
	% and store it in a column of distanceMatrix
	%temp = bsxfun(@minus, X, centroids(i, :));
  % square the distances first before storing 
	%temp = temp .^ 2;
	% sum up the matrix in along each row before adding to distance matrix
	%distanceMatrix(:,i) = sum(temp, 2);
%end
% for a matrix argument, min returns a row vector with the minimum value of each column
% so need to transpose distanceMatrix first
%[minValues, minIndexes] = min(distanceMatrix');
% transpose the minimum indexes back into a mx1 vector
%idx = minIndexes';


for i=1:rows(X)
  temp=X(i,:);
 
  [minValues, minIndexes]=min(sum(abs(temp-centroids).^2,2));
idx(i) =minIndexes;
end

% =============================================================

end

