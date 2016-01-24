function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


% find hypothesis
h = sigmoid(X * theta);

% compute positive case
pos = -y' * log(h);

% compute negative case
neg = (1 - y)' * log(1 - h);

% compute cost and add lambda term
regtheta = [0;theta(2:end)];
J = ((1/m) * (pos - neg)) + ((lambda / (2 * m)) * (regtheta' * regtheta));

%compute gradient
grad_zero = (1/m) * ((h - y)' * X(:,1));
grad_rest = (1/m) * ((h - y)' * X(:,[2:end])) + ((lambda/m) * theta(2:end))';
grad = [grad_zero grad_rest];

% =============================================================

end
