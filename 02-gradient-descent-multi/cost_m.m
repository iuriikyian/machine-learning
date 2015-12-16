function c = cost_m(X, Y, T)

  % cost function calculation for given X, Y nad coefficients vector T
  % X - matrix of x parameters
  % Y - vector of results
  % T - coefficient values vector
  
  samplesCount = size(X)(1);
  varsCount = size(X)(2);

  % X with prepended column of ones
  Xn = [ones(samplesCount, 1), X];

  % values of hypothesis function for X
  xt = Xn * T;

  %quardrats of differences
  xy = (xt - Y) .^ 2;

  %cost
  c = (1 / (2 * samplesCount )) * (ones(1, samplesCount) * xy);

end;