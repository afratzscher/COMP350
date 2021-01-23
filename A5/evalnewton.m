function y = evalnewton(x)

chebyshev = 0; % change to 1 for chebyshev problem

a = newton(chebyshev);
n = length(a);

if chebyshev == 0
    coord = linspace(-1, 1, n);
elseif chebyshev == 1 %chebyshev problem
    for i = 0:6
        coord(i+1) = cos((2*i+1)*pi/(2*6+2));
    end
end

y = a(n);
xi = coord(1,:);

for i = n-1:-1:1
    y = a(i) + y .* (x - xi(i));
end