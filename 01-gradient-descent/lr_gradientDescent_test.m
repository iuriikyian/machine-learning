libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = linspace(-7, 7, 100);
Y =  (X .^ 2);

clf;
subplot(1,2,1);
plot(X, Y, 'x');

theta = [2, 1, 1];
J = lr_cost(theta, [X', (X') .^ 2], Y')

alpha = 0.003;
count = 8050;

[grad, costs] = lr_gradientDescent([1, 1], (X') .^ 2, Y', count, alpha);
disp(grad)
size(costs)
costs(1:10,:)
subplot(1,2,2);
plot(costs(:,1), costs(:,2), '-');

subplot(1,2,1);
hold on;
YY = [ones(size(X')(1), 1), (X') .^ 2] * grad';
plot(X', YY, '-'); 


