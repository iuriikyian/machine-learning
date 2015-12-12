function res = i_line_cost(X, Y, a, b)
  % cost calculation by function ax + b
  % X - vector of x
  % Y - vector of y
  % a - coefficient a
  % b -coefficient b
  % returns cost value for provided data
  l = length(X);
  res = ones(1, l) * ((i_line(X, a, b) - Y) .^2 ) / (2 * l);