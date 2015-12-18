function [T, costs] = logistic_regression(X, Y, T, alpha, count);

  samplesCount = size(X)(1);

  % X with prepended column of ones
  Xn = [ones(samplesCount, 1), X];

  k = alpha / samplesCount;
  varsCount = size(Xn)(2);
  %count = 2000;
  
  costs = [];
  for i = 1:count
    t = [];
    for j = 1:varsCount
      xx = Xn * T;
      sig = sigmoid(xx);
      items = (sig - Y) .* Xn(:,j);
      tc = T(j,1) - (ones(1, samplesCount) * items) * k;
      t = [t; tc];
    end;
    T = t;
    %disp(T');
    c = log_reg_cost(X, Y, T);
    costs = [costs; [i, c]];
    %disp(c);
  end;
 end;