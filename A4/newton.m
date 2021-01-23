function root = newton(f,fd,x0,xtol,ftol,n_max,display)
% root = newton(f,fd,x,xtol,ftol,n_max,display)
% Newton's method for solving f(x)=0.
% input:  f is a string name or the handle of the function f(x).
%         fd is a string name of the handle of the derivative f'(x).
%         x is the initial point
%         xtol and ftol are termination tolerances
%         n_max is the maximum number of iterations
%         display = 1 if step-by-step display is desired,
%                 = 0 otherwise
% output: root is the computed root of f(x)=0
%
syms x
q = sym2poly(f(x));
r = roots(q);
r = r(1)
n = 0;
fx = feval(f, x0);
relerr = abs(fx - r) / abs(r);

if display, 
   disp('   n             x          rel err           f(x)')
   disp('------------------------------------------------------')
   fprintf('%4d %23.15e %23.15e %23.15e\n', n, x0, relerr, fx)
end

if abs(fx) <= ftol
    root = x0;
    return
end

for n = 1:n_max
   fdx = feval(fd, x0);
   d = fx/fdx;
   x0 = x0 - d;
   fx = feval(f,x0);
   relerr = abs(fx - r) / abs(r);
   
   if display, 
        fprintf('%4d %23.15e %23.15e %23.15e\n', n, x0, relerr, fx)
   end 
   
   if abs(d) <= xtol | abs(fx) <= ftol
       root = x0;
       return
   end
end
root = x0;
end