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
	%   theta - final thetas
	%   costs - count-x-2 matrix of 
	%	[iteration index, cost value for the iteration]
	costs = [];
	m = size(X)(1);
    if nargin == 5
        lambda = 0;
    end;
	for i = 1:count
        [J, grad] = lr_cost_grad(theta, X, Y, lambda);
        theta = theta - (grad .* alpha);
        costs = [costs; [i, J]];
    end;
end;