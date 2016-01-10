libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end;

X = [1 2;3 4;5 6;7 8]
y = [0; 0; 1; 1]
T = [1 1 2]
[J, grad] = logr_cost(T, X, y)

idx0 = find(y == 0);
idx1 = find(y == 1);
clf
plot(X(idx0,1), X(idx0,2), 'o');
hold on;
plot(X(idx1,1), X(idx1,2), 'x');
hold off;