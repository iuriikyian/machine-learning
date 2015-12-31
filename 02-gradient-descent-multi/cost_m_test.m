#cost of single variable
X = [3;5;7];
Y = [6;8;11];

plot(X, Y);
c = cost_m(X, Y, [2; 1])

%cost of 2 varables
X = [3 4;5 6;8 9];
Y = [6;8;11];

c = cost_m(X, Y, [1; 1; 1])