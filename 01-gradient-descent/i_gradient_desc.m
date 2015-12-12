function [t0, t1] = i_gradient_desc(X, Y)
  % Gradient Discent algorythm for searching liner regression 
  % X, Y - vectors with x and y values of input data (the same size)
  % returns vector with coefficients [t0, t1] for linear function
  %     y = t0 + t1x 
  alpha = 0.3; % <-- learning rate
  t0 = 1;
  t1 = 1;
  len = length(X);
  k = alpha / len;
  for i = 1:200 % predefined amout of iterations
    %disp(t0), disp(t1);
    %disp('---');
    t0c = t0 - k * (ones(1, len) * (i_line(X, t1, t0) - Y));
    t1c = t1 - k * (ones(1, len) * ((i_line(X, t1, t0) - Y) .* X));
    t0 = t0c;
    t1 = t1c;
  end;