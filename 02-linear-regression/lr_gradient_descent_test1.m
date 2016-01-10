libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = linspace(-7, 5, 50);
Y =  (X .^ 2);

clf;
subplot(1,2,1);
plot(X, Y, 'x');

theta = [2, 1, 1];
[J, grad] = lr_cost(theta, [X', (X') .^ 2], Y')

alpha = 0.005;
count = 3000;
fprintf("without regularization:\n");

theta = [1 1];
[grad, costs] = lr_gradient_descent(theta, (X') .^ 2, Y', 0, count, alpha);
fprintf("grad:\n");
disp(grad)
costs(1:10,:)
subplot(1,2,2);
plot(costs(:,1), costs(:,2), '-');

subplot(1,2,1);
hold on;
YY = [ones(size(X')(1), 1), (X') .^ 2] * grad';
plot(X', YY, '-'); 

lambda = 10;
fprintf("with regularization lambda: %d\n", lambda);

[grad, costs] = lr_gradient_descent(theta, (X') .^ 2, Y', lambda, count, alpha);
fprintf("grad:\n");
disp(grad);
costs(1:10,:)
subplot(1,2,2);
hold on;
plot(costs(:,1), costs(:,2), 'r.');

subplot(1,2,1);
hold on;
YY = [ones(size(X')(1), 1), (X') .^ 2] * grad';
plot(X', YY, 'r.'); 

