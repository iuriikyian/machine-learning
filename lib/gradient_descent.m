function [theta, costs] = gradient_descent(f, initialTheta, count, alpha)
	% Gradient descent algorithm
	%
    % f - function that accepts theta as parameter and returns [J, grad]
	% initialTheta  - 1x(N+1) matrix of initial thetas
	% count  - count of iterations to run
	% alpha	 - learning rate koefficient
  	%
	% Returns:
	%   theta - final thetas
	%   costs - count-x-2 matrix of 
	%	[iteration index, cost value for the iteration]
	costs = [];
    theta = initialTheta;
	for i = 1:count
        [J, grad] = f(theta);
        theta = theta - (grad .* alpha);
        costs = [costs; [i, J]];
    end;
end;