X = [1 2; 1 1; 2 2; 2 1; 1 7; 2 8; 1 9; 2 7; 5 6; 6 7; 6 6; 5 7];
%X = [1; 2; 3; 4; 5; 6; 7];
y = [1; 1; 1; 1; 2; 2; 2; 2; 3; 3; 3; 3];

s = ['r', 'g', 'b'];

clf;

subplot(1,3,1);
hold on;

for l = 1:3
  idx1 = find(y == l);
  X1 = X(idx1,:);
  plot(X1(:,1), X1(:,2), s(l));
end;

alpha = 0.01;
lambda = 0.1;
count = 1000;

[TT, CC] = logistic_regression_multi(X, y, [1 2 3], alpha, lambda, count);

subplot(1, 3, 2);
hold on;

disp(TT);
for l = 1:3
   cIdx = find(CC(:,1) == l);
   cc = CC(cIdx,:);
   plot(cc(:,2), cc(:,3), s(l));
end;

subplot(1, 3, 3);
hold on;

tt = TT(:,2:size(TT)(2));
m = size(X)(1);
%for l=1:3
%  r = sigmoid([ones(m,1), X] * tt(l,:)');
%  printf('theta-%d res: \n', l);
%  disp(r);
%end;

sigmoid([ones(m,1), X] * tt')
