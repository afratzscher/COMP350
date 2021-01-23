function [t,x] = euler(f,a,b,x0,n)
% [t,x] = euler(fname,a,b,x0,n)
% input: f is a function of the form f(t,x)
%        [a, b] is the given interval and  x(a)=x0;
% output: (t_i, x_i) is an approximation to (t_i, x(t_i)), i=0:n
%
h = (b-a)/n;
t = linspace(a,b,n+1);
x(1) = x0;
for i = 1:n
    fval = f(t(i),x(i));
    x(i+1) = x(i) + h*fval;
end

