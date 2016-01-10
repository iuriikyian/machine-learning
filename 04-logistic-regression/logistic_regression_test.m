libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = [-2; -1; 1; 2; 3; 4; 5];
Y = [0; 0; 0; 0; 1; 1; 1];

clf;

%logistic regression data plot
idx0 = find(Y == 0);
idx1 = find(Y == 1);
subplot(1,3,1);
hold on;
plot(X(idx0,:), Y(idx0,:), 'o');
plot(X(idx1,:), Y(idx1,:), 'x');

disp('initial theta and cost:');
T = [0.5, 0.5]
[s, grad] = logr_cost(T, X, Y)
alpha = 1;
count = 2000;

[T, costs] = logr_gradient_descent(T, X, Y, count, alpha);

subplot(1,3,2);
plot(costs(:,1), costs(:,2));
printf('not regularized cost:\n');
[s, grad] = logr_cost(T, X, Y)
T
% regularized calculation
T = [0.5, 0.5];
lambda = 2;
[T, costs] = logr_gradient_descent(T, X, Y, count, alpha, lambda);

% logistic regression costs plot
subplot(1,3,3);
plot(costs(:,1), costs(:,2));

printf('regularized cost:\n');
[T, costs] = logr_cost(T, X, Y)
T
%disp('final theta and cost');
%T
%s = log_reg_cost(X, Y, T)
