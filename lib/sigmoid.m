function res = sigmoid(X)
  % calculates 1 / (1 + e^-x) on every element of nx1 matrix
  res = ones(size(X)(1), size(X)(2)) ./ ( 1 + exp(-X));
end;
