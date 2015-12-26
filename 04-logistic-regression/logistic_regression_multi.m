function [TT, CC] = logistic_regression_multi(X, Y, Yparams, alpha, lambda, count)
  CC = [];
  TT = [];
  for param = Yparams
    %param
    idx0 = find(Y != param);
    idx1 = find(Y == param);
    X0 = X(idx0,:);
    X1 = X(idx1,:);
    XX = [X0;X1];
    YY = [zeros(size(idx0)(1),1);ones(size(idx1)(1),1)];
    T = ones(size(XX)(2) + 1,1);
    [T, costs] = logistic_regression_regularized(XX, YY, T, alpha, lambda, count);
    TT = [TT; [param, T']];
    cc = [ones(size(costs)(1), 1) * param, costs];
    CC = [CC; cc];
  end;
end;
