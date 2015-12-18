%X = -100:100;
X = (-20:0.5:20)';
%X = (-1:0.5:1)'

%Y = ones(length(X)) ./ ( 1 + exp(-X));

Y = sigmoid(X);

plot(X, Y);

