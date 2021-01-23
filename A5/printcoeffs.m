function printcoeffs()
chebyshev = 1; % 1 for chebyshev
disp('Coefficients of p(x): x0...x6 = ');
disp(newton(chebyshev));
disp('Coefficients of S(x): x0...x6 = ');
disp(cubicspline(chebyshev));
disp('Least  square coefficients g(x): a, b, c = ')
disp(transpose(leastsquares(chebyshev)));

% 13 points 
for i = 0:12
    x(i+1) = -1+i/6;
end
x = transpose(x);

for i = 1:length(x)
    fi(i) = f(x(i));
    new(i) = evalnewton(x(i));
    least(i) = evalleast(x(i));
end

for i = 1:13
    cub(i) = evalspline(x(i));
end

% fi = transpose(fi);
disp('f(x) = ')
disp(fi)

for i = 1:13
    fp(i) = fi(i) - new(i);
    fc(i) = fi(i) - cub(i);
    fg(i) = fi(i) - least(i);
end

disp('f(x) - p(x) = ')
disp(fp)
disp('f(x) - S(x) = ')
disp(fc)
disp('f(x) - g(x) = ')
disp(fg)