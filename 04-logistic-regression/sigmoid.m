function res = sigmoid(X)
  % calculates 1 / (1 + e^-x) on every element of nx1 matrix
  res = ones(length(X), 1) ./ ( 1 + exp(-X));
end;