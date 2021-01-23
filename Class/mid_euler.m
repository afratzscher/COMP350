function [t,x] = mid_euler(f,a,b,x0,n)
%
% input: f is a function of the form f(t,x)
%        [a, b] is the given interval and  x(a)=x0;
% output: (t_i, x_i) is the approximating of (t_i, x(t_i)), i=0:n
%
h = (b-a)/n;
t = linspace(a,b,n+1);
x(1) = x0;
for i = 1:n
    fval = f(t(i),x(i));
    x_mid = x(i) + h*fval/2;
    fval_new = f(t(i)+h/2,x_mid);
    x(i+1) = x(i) + h*fval_new;
end

