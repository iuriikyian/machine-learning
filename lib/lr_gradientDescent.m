function [grad, costs] = lr_gradientDescent(theta, X, Y, count, alpha, lambda)
	% Calculates linear regression gradient(thetas)
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
	costs = [];
	m = size(X)(1);
	XX = [ones(m, 1), X];
 	k = alpha / m;
    if nargin == 5
        lambda = 0;
    end;
	for i = 1:count
		tt = theta;
		for j = 1:size(theta)(2)
			tt(j) = theta(j) - (sum(((XX * theta') - Y) .* XX(:,j)) * k);
            r = k * lambda * theta(j);
            tt(j) = tt(j) - r;
        end;
	    theta = tt;
        costs = [costs; [i, lr_cost(theta, X, Y, lambda)]];
	    grad = theta;
    end;
end;