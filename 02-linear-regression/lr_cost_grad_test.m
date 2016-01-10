libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = [1;2;3]
Y = [1;2;3]
Theta = [0, 1]
[c0, grad0] = lr_cost(Theta, X, Y);
fprintf("ideal theta cost: %d\n", c0);
disp(grad0);
Theta = [1, 1]
[c1, grad1] = lr_cost(Theta, X, Y);
fprintf("NOT ideal theta cost: %d\n", c1);
disp(grad1);
lambda = 10;
[c2, grad2] = lr_cost(Theta, X, Y, lambda);
fprintf("NOT ideal theta with regularization lambda: %d cost: %d\n", lambda, c2);
disp(grad2);