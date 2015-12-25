X = [-2; -1; 1; 2; 3; 4; 5];
Y = [0; 0; 0; 0; 1; 1; 1];

%logistic regression data plot
idx0 = find(Y == 0);
idx1 = find(Y == 1);
subplot(1,2,1);
hold on;
plot(X(idx0,:), Y(idx0,:), 'o');
plot(X(idx1,:), Y(idx1,:), 'x');

disp('initial theta and cost:');
T = [0.5;0.5]
s = log_reg_cost(X, Y, T)

alpha = 1;
count = 2000; %2000;

[T, costs] = logistic_regression(X, Y, T, alpha, count);

% logistic regression costs plot
subplot(1,2,2);
plot(costs(:,1), costs(:,2));

disp('final theta and cost');
T
s = log_reg_cost(X, Y, T)
