function c = cost(X, Y)
    % calculates cost for 2 vectors using squared error function
    len = length(X);
    c = ones(1, len) * ((X .- Y) .^2) / (2 * len);