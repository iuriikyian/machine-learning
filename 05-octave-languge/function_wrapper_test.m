
a = [];

function res = foo(a)
  res = a .^ 2;
end;

function res = wrapper(f, a)
  res = f(a);
end;

wrapper(@foo, 5)

function res = wrapper2(f, g)
    disp(nargin);
    res = f() + g;
end;

wrapper2(@(k) foo(7), 100 )


function res = wrapper3(f, t)
    disp(nargin);
    r = f(t);
end;

wrapper2(@(k) foo(7), 100 )