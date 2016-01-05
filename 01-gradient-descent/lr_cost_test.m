libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

X = [1;2;3]
Y = [1;2;3]
Theta = [0, 1]
c0 = lr_cost(Theta, X, Y);
fprintf("ideal theta cost: %d\n", c0);
Theta = [1, 2]
c1 = lr_cost(Theta, X, Y);
fprintf("NOT ideal theta cost: %d\n", c1);
lambda = 10;
c2 = lr_cost(Theta, X, Y, lambda);
fprintf("NOT ideal theta with regularization lambda: %d cost: %d\n", lambda, c2);
