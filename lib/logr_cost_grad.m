function [J, grad] = logr_cost_grad(Theta, X, Y, lambda)
  % Calculates logistic regression cost
  % Theta - 1-x-N+1 matrix of theta values
  % X - M-x-N x values
  % Y - M-x-1 y vector of y values {0, 1}
  % lambda - optional regularization parameter

  m = size(Y, 1); % samples count
  n = size(X, 2); % vars count

  % checking parameters
  if (m != size(X, 1))
    error('X and Y has mismatch of row counts');
  end;

  if(size(Theta, 2) != n + 1)
    error('theta length is less then required by X values');
  end;
  
  if nargin == 3
    lambda = 0;
  end

  % X with prepended column of ones
  XX = [ones(m, 1), X];

  xx = XX * Theta'; %regression value
  sig = sigmoid(xx);
  c1 = Y .* log(sig);
  c2 = (1 - Y) .* log(1 - sig);
  J = - (sum(c1 .+ c2) / m);
  grad = (XX' * (sig - Y))' ./ m;
  
  % regularization
  
  rJ = (lambda / (2 * m)) * sum(Theta(:,2:end) .^ 2);
  J = J + rJ;
  rgrad = (lambda / m) * [0, Theta(:,2:end)];
  grad = grad + rgrad;
end;
