function [J, Theta1_grad, Theta2_grad] = neural_network_2_2_1(X, Y, Theta1, Theta2, lambda)
    % network with architecture 2-2-1 nodes;
    %Theta1, Theta2 - coefficents set per row (horizontal)
    m = size(X, 1); % amount of samples
    
    %1. forward propagation
    X1 = [ones(m, 1), X];
    
    Z2 = X1 * Theta1';
    X2 = [ones(m, 1), sigmoid(Z2)];
    Z3 = X2 * Theta2';
    X3 = sigmoid(Z3);
    
    %cost
    J = (1 / m) * sum(sum((-Y) .* log(X3) - (1 - Y) .* log(1 - X3)));
    %cost regularizaton
    Jreg = lambda / (2 * m) * (sum(sum(Theta1(:,2:end) .^ 2)) + sum(sum(Theta2(:,2:end) .^ 2)));
    J = J + Jreg;
    
    %2. backward propagation
    d3 = X3 - Y;
    d2 = ((d3 * Theta2) .* (X2 .* (1 - X2)))(:,2:end); % skip d2(0)
    
    %gradient
    Theta1_grad = (X1' * d2 ./ m)';
    Theta2_grad = (X2' * d3 ./ m)';
        
    %gradient regularization
    Theta1(:,1) = 0;
    Theta2(:,1) = 0;
    reg1 = Theta1 .* (lambda / m);
    reg2 = Theta2 .* (lambda / m);
    Theta1_grad = Theta1_grad + reg1;
    Theta2_grad = Theta2_grad + reg2;
end;