function J = lr_cost(theta, X, Y)
  % Cost for linear regression
  %
  % theta - 1xN matrix with theta values
  % X     - Mx(N-1) matrix of data
  % Y     - Nx1 matrix of values
  % derivation dgree of calculated Y from provided Y
  m = size(X)(1);
  XX = [ones(m, 1), X];
  J = sum(((XX * theta')  - Y) .^2) / (2 * m);
end;
