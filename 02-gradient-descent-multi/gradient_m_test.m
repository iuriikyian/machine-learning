#cost of single variable
%X = [3;5;8];
%X = [3;6;8];
X = [3 4;6 7;8 9];
Y = [6;8;11];
alpha = 0.02;
count = 500;
%T = [1;1];
T = [1;1;1];

[costs, T] = gradient_m(X, Y, alpha, count);

%disp(costs);
disp(T);

clf

plot(costs(:,1), costs(:,2));

Xn(1,:)*T
Xn(2,:)*T
Xn(3,:)*T

disp(cost_m(X, Y, T));
[1 4 5]*T
%plot(X, Y, 'x');
%hold on;

%plot(X, Xn*T, 'or');