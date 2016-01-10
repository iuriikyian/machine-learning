function [TT, CC] = logr_one2all(X, Y, Yparams, count, alpha, lambda)
    % logr_one2all - One-to-all multiclass logistic regression
    %
    % X - M-x-N data samples
    % Y - M-1 data values
    % Yparams - possible values in Y (numbers)
    % count  - count of iterations to run
	% alpha	 - learning rate koefficient
    % lambda - optional regularization parameter 
    %
    % Returns:
    %       TT - theta value for every possible Y
    %       CC - costs for every Y (first column - an  Y value) 
    if nargin == 5
        lambda = 0;
    end;
    CC = [];
    TT = [];
  for param = Yparams
    %param
    idx0 = find(Y != param);
    idx1 = find(Y == param);
    X0 = X(idx0,:);
    X1 = X(idx1,:);
    XX = [X0;X1];
    YY = [zeros(size(idx0, 1),1);ones(size(idx1, 1),1)];
    T = ones(1, size(XX, 2) + 1,1);
    [T, costs] = logr_gradient_descent(T, XX, YY, count, alpha, lambda);
    TT = [TT; [param, T]];
    cc = [ones(size(costs, 1), 1) * param, costs];
    CC = [CC; cc];
  end;
end;
