%X = [-2 1; -1 3; 1 2; 2 0; 3 5; 4 8; 5 6];
%Y = [0; 0; 0; 0; 1; 1; 1];

% problematic data set -- begin
% (group cannot be separated with sreight line from other items)
% X = [1 2; 1 1; 2 2; 2 1; 3 5; 3 4; 4 5; 4 4; 5 6; 6 7; 6 6; 5 7];
% Y = [0; 0; 0; 0; 1; 1; 1; 1; 0; 0; 0; 0];
% -- end

X = [1 2; 1 1; 2 2; 2 1; 1 7; 2 7; 1 8; 2 9; 5 6; 6 7; 6 6; 5 7];
Y = [0; 0; 0; 0; 1; 1; 1; 1; 0; 0; 0; 0];

clf;
%logistic regression data plot
idx0 = find(Y == 0);
idx1 = find(Y == 1);
subplot(1,2,1);
hold on;
plot3(X(idx0,1), X(idx0,2), 'o');
plot3(X(idx1,1), X(idx1,2), 'x');

disp('initial theta and cost:');
T = ones(1, size(X, 2) + 1)
s = logr_cost(T, X, Y)

alpha = 0.01;
count = 2000;

%[T, costs] = logistic_regression(X, Y, T, alpha, count);
lambda = 1;
[T, costs] = logr_gradientDescent(T, X, Y, count, alpha, lambda);

% logistic regression costs plot
subplot(1,2,2);
plot(costs(:,1), costs(:,2));

disp('final theta and cost');
T
s = logr_cost(T, X, Y)

printf('predictions:\n');
x = [ones(size(X, 1), 1), X];
disp(sigmoid(x * T'));