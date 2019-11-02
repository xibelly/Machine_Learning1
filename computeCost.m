function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%Unvectorized form

%for j=1:2
%      J = 0;
%	for i=1:m
%	  
%		h(i,1) = theta(j,1)*X(i,j);
%                md      = 2.0*m;
%                J      = J + (1.0/md) * (h(i,1)-y(i,1)).^2;
%                 
%	  end
%  end

%vectorized form
J  = 0;
md = 2.0*m;
J  = J + (1.0/md) * (transpose((X*theta-y))*(X*theta-y));	  

% =========================================================================
