function root = secant(f, x0, x1, xtol, ftol, nmax, display)

syms x
q = sym2poly(f(x));
r = roots(q);
r = r(3)
n = 0;
fx0 = feval(f, x0);
fx1 = feval(f, x1);
relerr = abs(fx1 - r) / abs(r);

if display, 
   disp('   n             x          rel err           f(x)')
   disp('------------------------------------------------------')
   fprintf('%4d %23.15e + %23.15ei %23.15e %23.15e\n', n, real(x0), imag(x0), relerr, fx0)
end

for n = 1: nmax
    d = ((x1-x0)/(fx1-fx0))*fx1;
    x0 = x1;
    fx0 = fx1;
    x1 = x1-d;
    fx1 = feval(f, x1);
    relerr = abs(fx1 - r) / abs(r);
    
    if display, 
        fprintf('%4d %23.15e + %23.15ei %23.15e %23.15e\n', n, real(x0), imag(x0), relerr, fx0)
    end 
    
    if abs(d) <= xtol | abs(fx1) <= ftol
        root = x1;
        return
    end
end
root = x1;