X = [-2; -1; 1; 2; 3; 4; 5];
Y = [0; 0; 0; 0; 1; 1; 1];

T = [1;0.5]
s = log_reg_cost(X, Y, T)

alpha = 1;
count = 2000;

[T, costs] = logistic_regression(X, Y, T, alpha, count);
 
 plot(costs(:,1), costs(:,2));
 
 T
 s = log_reg_cost(X, Y, T)