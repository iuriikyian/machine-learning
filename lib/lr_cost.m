function J = lr_cost(theta, X, Y, lambda)
  % Cost for linear regression
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
  J = sum(((XX * theta')  - Y) .^2) / (2 * m);

  if nargin == 4
    t = theta;
    t(1,1) = 0;
    r = (lambda / ( 2 * m)) * sum( t .^ 2);
    J = J + r;
  end;  
end;
