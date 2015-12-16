function [costs, T] = gradient_m(X, Y, alpha, count)

  % Gradient Discent algorythm vor multiple variables
  % X - matrix of x variables
  % Y - vector of results
  % alpha - learning rate
  % count - amount of iterations
  
  samplesCount = size(X)(1);
  varsCount = size(X)(2);

  T = ones(varsCount + 1, 1);

  % X with prepended column of ones
  Xn = [ones(samplesCount, 1), X];

  k = alpha / samplesCount;
  costs = [];
  for i = 1:count
    M = Xn * T;
    tt = [];
    for j = 1:varsCount + 1
      Diffs = M - Y;
      MDiffs = Diffs .* Xn(:,j);
      tt(j,1) = T(j,1) - k * sum(MDiffs);    
    end
    T = tt;
    costs = [costs; [i, cost_m(X, Y, T)]];
  end
end;