function res = log_reg_cost(X, Y, T)
  
  samplesCount = size(X)(1);
  varsCount = size(X)(2);

  % X with prepended column of ones
  Xn = [ones(samplesCount, 1), X];

  xx = Xn * T; %regression value
  sig = sigmoid(xx);
  o = ones(length(X),1); %column of 1
  logSig = (log(sig'))';
  c1 = (Y) .* logSig;
  c2 = (o - Y) .* (log((o - sig)')');
  res = - (o' * (c1 .+ c2)) / samplesCount;
end;