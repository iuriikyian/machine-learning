function Y = neural_network_2_2_1_predict(X, thetas)
    % network with architecture 2-2-1 nodes prediction
    Theta1 = reshape(thetas(1:2 * 3), 2, 3);
    Theta2 = reshape(thetas(1 + 6:end), 1, 3);

    m = size(X, 1); % amount of samples
   
    %1. forward propagation
    X1 = [ones(m, 1), X];
    
    Z2 = X1 * Theta1';
    X2 = [ones(m, 1), sigmoid(Z2)];
    Z3 = X2 * Theta2';
    Y = sigmoid(Z3);    
end;