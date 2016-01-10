function [J, grad] = lr_cost(theta, X, Y, lambda)
  % Cost and gradient for linear regression
  %
  % theta - 1xN matrix with theta values
  % X     - Mx(N-1) matrix of data
  % Y     - Nx1 matrix of values
  % lambda - optional regularization parameter 
  %
  % Returns:
  %     derivation dgree of calculated Y from provided Y
  m = size(X)(1);
  XX = [ones(m, 1), X];
  
  if nargin == 3  % without regularization
    lambda = 0;
  end;
  
  J = sum(((XX * theta')  - Y) .^2) / (2 * m);
  grad = ((XX * theta' - Y)' * XX) ./ m;
  
  % regularization
  
  rJ = (lambda / ( 2 * m)) * sum( theta(:,2:end) .^ 2);
  J = J + rJ;
  rgrad = (lambda / m) .* [0, theta(:,2:end)];
  grad = grad + rgrad;
end;
