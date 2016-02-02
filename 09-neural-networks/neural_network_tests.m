libPath = '../lib';
if index(path, libPath) == 0
    addpath(libPath);
end

source('test_data.m');

clf;
hold on;
subplot(1,2,1);
render_data(AX, AY, 'rx', 'ro');
%fprintf('Program paused. Press enter to continue.\n');
%pause;

% initial thetas
Theta1 = rand(2, 2 + 1);
Theta2 = rand(1, 2 + 1);
lambda = 0.1;

[J, Theta1_grad, Theta2_grad] = neural_network_2_2_1(AX, AY, Theta1, Theta2, lambda)

count = 100
alpha = 0.1
theta = [Theta1(:); Theta2(:)];
[theta, costs] = gradient_descent(@(theta) neural_network_2_2_1_gr(theta, AX, AY, lambda), theta, count, alpha);
%disp(theta);

subplot(1,2,2);
hold on;
plot(costs(:,1), costs(:,2), 'g');

Y = neural_network_2_2_1_predict(AXcv, theta);
subplot(1,2,1);
render_data(AXcv, AYcv, 'bx', 'bo');
render_data(AXcv, Y, 'gx', 'go');