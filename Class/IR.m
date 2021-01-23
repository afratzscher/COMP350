function IR  = IR(a,b,n)
f = @(x) exp(x); % CHANGE

h = (b-a)/n;
x = linspace(a,b-h,n);
fx = f(x);
IR = sum(fx)*h;