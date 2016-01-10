libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = [0; 1; 2];
Y = [1; 3; 5];

theta = [1 1];
lambda = 0;
alpha = 0.01;
count = 3000;

[theta, costs] = gradient_descent(@(theta) lr_cost_grad(theta, X, Y, lambda), theta, count, alpha);
disp(theta);

clf;
plot(costs(:,1), costs(:,2), 'r');