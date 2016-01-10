function [theta, costs] = logr_gradient_descent(theta, X, Y, count, alpha, lambda)
  % Gradient Descent for one class logistic regression
  %
	% theta  - 1x(N+1) matrix of initial thetas
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

  if nargin == 5
    lambda = 0;
  end;
  
  [theta, costs] = gradient_descent(@(theta) logr_cost(theta, X, Y, lambda), theta, count, alpha);    

 end;
