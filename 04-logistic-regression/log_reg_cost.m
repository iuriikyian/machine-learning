function jVal = log_reg_cost(X, Y, T)
  % Calculates logistic regression cost
  % X - x values
  % Y - y vector of y values {0, 1}
  % T - vector of theta values (length = X value columns + 1)
  m = size(Y)(1); % samples count
  n = size(X)(2); % vars count

  % checking parameters
  if (m != size(X)(1))
    error('X and Y has mismatch of row counts');
  end;

  if(size(T)(1) != n + 1)
    error('theta length is less he required by X values');
  end;

  % X with prepended column of ones
  XX = [ones(m, 1), X];

  xx = XX * T; %regression value
  sig = sigmoid(xx);
  o = ones(m, 1); %column of 1
  logSig = log(sig);
  c1 = Y .* log(sig);
  c2 = (o - Y) .* log(o - sig);
  jVal = - (sum(c1 .+ c2) / m);
end;
