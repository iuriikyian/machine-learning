libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

%X = -100:100;
X = (-20:0.5:20)';

Xlen = size(X)(1)

Y = sigmoid(X);

clf;
plot(X, Y);

hold on

Y = [];

for i = 1:Xlen
  val = 1 / (1 + 1.1 ^ (- X(i, 1))); 
  Y = [Y; [i, X(i,1), val]]; 
end;

%Y

plot(Y(:,2), Y(:,3), 'r');



Y = [];

for i = 1:Xlen
  val = 1 / (1 + 100 ^ (- X(i, 1))); 
  Y = [Y; [i, X(i,1), val]]; 
end;

%Y
plot(Y(:,2), Y(:,3), 'g');

legend('e', '1.1', '100');


hold off