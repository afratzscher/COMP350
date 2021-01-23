function g = evalleast(x)

chebyshev = 0; % change to 1 for chebyshev

p = leastsquares(chebyshev);
g = p(1) + p(2)*x.^2 + p(3)*x.^4;