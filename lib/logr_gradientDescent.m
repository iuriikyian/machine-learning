function [grad, costs] = logr_gradientDescent(Theta, X, Y, count, alpha, lambda)
  % Gradient Descent for one class logistic regression
  %
	% Theta  - 1x(N+1) matrix of initial thetas
	% X	 - MxN matrix of input data
	% Y	 - Mx1 vector of output data
	% count  - count of iterations to run
	% alpha	 - learning rate koefficient
    % lambda - optional regularization parameter
	%
	% Returns:
	%   grad - final thetas
	%   costs - count-x-2 matrix of 
	%	[iteration index, cost value for the iteration]
  
  m = size(X)(1); % samples count
  n = size(X)(2); % variables count

  % X with prepended column of ones
  XX = [ones(m, 1), X];

  k = alpha / m;
  
  costs = [];
  if nargin == 5
    lambda = 0;
  end;
  
  grad = Theta;
  for i = 1:count
    grad = grad .- ( (XX' * (sigmoid(XX * grad') - Y)) .* k)';
    
    % regularization
 %   t = grad;
 %   t(1,1) = 0;
 %   t = t .* (lambda / m);
 %   grad = grad .- t
    
    % R = (k * lambda) .* Theta;
    % R(1,1) = 0;
    % Theta = Theta - k .* ((XX') * (sigmoid(XX * Theta') - Y));
    % Theta = Theta .- R;
    
    
    
    
    c = logr_cost(grad, X, Y);
    costs = [costs; [i, c]];
  end;
  %grad = Theta;
 end;
