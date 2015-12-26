function [T, costs] = logistic_regression_regularized(X, Y, T, alpha, lambda, count)
  
  m = size(X)(1); % samples count
  n = size(X)(2); % variables count

  % X with prepended column of ones
  XX = [ones(m, 1), X];

  k = alpha / m;
  kl = lambda / m;
  costs = [];
  for i = 1:count
    tr = T(:,:); %regularization koefficient
    tr(1,1) = 0;
    tr = tr .* kl;
    T = T - alpha .* ((((XX') * (sigmoid(XX * T) - Y)) ./ m) .+ tr) ;
    c = log_reg_cost(X, Y, T);
    costs = [costs; [i, c]];
  end;
 end;
