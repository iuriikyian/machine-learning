% test for passing function arguments

a = [];

function res = foo(a, b)
  % default vakue for the missing input argument
  if nargin < 2
    b = 0;
  end;
  disp(a);
  disp(b);
end;

foo(2, 5);
foo(3);