function root = steffensen(f,x0,xtol,ftol,n_max,display)
syms x
q = sym2poly(f(x));
r = roots(q);
r = r(2)

n = 0;
fx = feval(f, x0);
gx = (feval(f, (x0+fx)) - fx) / fx;
relerr = abs(fx - r) / abs(r);

if display, 
   disp('   n             x          rel err           f(x)')
   disp('------------------------------------------------------')
   fprintf('%4d %23.15e + %ei %23.15e %23.15e\n', n, real(x0), imag(x0), relerr, fx)
end

if abs(fx) <= ftol
    root = x0;
    return
end

for n = 1:n_max
   x1 = x0 - fx / gx;
   d = x0 - x1;
   x0 = x1;
   fx = feval(f, x0);
   gx = (feval(f, (x0+fx)) - fx) / fx;
   relerr = abs(fx - r) / abs(r);
   
   if display, 
        fprintf('%4d %23.15e + %23.15ei %23.15e %23.15e\n', n, real(x0), imag(x0), relerr, fx)
   end 
   
   if abs(d) <= xtol | abs(fx) <= ftol
       root = x0;
       return
   end
end
root = x0;
end