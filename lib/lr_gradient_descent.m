function [theta, costs] = lr_gradient_descent(theta, X, Y, lambda, count, alpha)
	% Calculates linear regression gradient(thetas)
	%
	% theta  - 1x(N+1) matrix of initial thetas
	% X	 - MxN matrix of input data
	% Y	 - Mx1 vector of output data
    % lambda - optional regularization parameter
	% count  - count of iterations to run
	% alpha	 - learning rate koefficient
  	%
	% Returns:
	%   grad - final thetas
	%   costs - count-x-2 matrix of 
	%	[iteration index, cost value for the iteration]    
    [theta, costs] = gradient_descent(@(theta) lr_cost(theta, X, Y, lambda), theta, count, alpha);    
end;