libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

a = [-5 -1; 0 0; 1 5]
sigmoid(a)
b = 2
sigmoid(2)
c = [-1;0;1]
sigmoid(c)
