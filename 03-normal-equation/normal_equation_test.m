X = [3 4;5 7;2 8];
Y = [5;7;9]

% amount of samples
samplesCount = size(X)(1);

% preppend with column of 1-s
Xn = [ones(samplesCount, 1), X]

% coefficients
T = pinv(Xn' * Xn) * (Xn' * Y)

disp('proof');
Xn(1,:) * T
Xn(2,:) * T
Xn(3,:) * T