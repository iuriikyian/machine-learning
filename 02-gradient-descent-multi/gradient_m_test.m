#cost of single variable
%X = [3;5;8];
%X = [3;6;8];
X = [3 4;6 7;8 9];
Y = [6;8;11];

subplot(1,2,1);
plot3(X(:,1), X(:,2), Y);

alpha = 0.02;
count = 500;
%T = [1;1];
T = [1;1;1];

[costs, T] = gradient_m(X, Y, alpha, count);

%disp(costs);
disp(T);

subplot(1,2,2);
plot(costs(:,1), costs(:,2));

Xn = [ones(3, 1), X];
%Xn(1,:)*T
%Xn(2,:)*T
%Xn(3,:)*T

disp(cost_m(X, Y, T));
[1 4 5]*T

subplot(1,2,1);
hold on
plot3(X(:,1), X(:,2), Xn * T, 'r');

%plot(X, Y, 'x');
%hold on;

%plot(X, Xn*T, 'or');