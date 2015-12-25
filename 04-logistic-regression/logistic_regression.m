function [T, costs] = logistic_regression(X, Y, T, alpha, count)
  
  m = size(X)(1); % samples count
  n = size(X)(2); % variables count

  % X with prepended column of ones
  XX = [ones(m, 1), X];

  k = alpha / m;
  
  costs = [];
  for i = 1:count
    T = T - k .* ((XX') * (sigmoid(XX * T) - Y));
    c = log_reg_cost(X, Y, T);
    costs = [costs; [i, c]];
  end;
 end;
