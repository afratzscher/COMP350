function [x, fxeval] = recursive_trapezoid(a,b,eps)

h = (b - a); % initial interval
x = (h/2) * (f(a) +f(a+h));
n = 0;
fxeval = 2;
while (abs(erf(b) - x) > (eps))
       h = h/2;
       n = n+1;
       sum = 0;
       for i = 1: (2^(n-1))
           sum = sum + f(a + (2*i-1)*h);
           fxeval = fxeval + 1;
       end
       x = h*sum + x/2;    
end