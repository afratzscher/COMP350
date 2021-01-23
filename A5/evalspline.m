function S = evalspline(x)

chebyshev = 0; % change to 1 for chebyshev

if chebyshev == 0
    t = linspace(-1, 1, 7);
elseif chebyshev == 1 %chebyshev problem
    for i = 0:6
        t(i+1) = cos((2*i+1)*pi/(2*6+2));
    end
    t = fliplr(t);
end

n = length(t);
z = cubicspline(chebyshev);
for i = 1:n
    y(i) = f(t(i));
end

for i = 1:n-1
    if x <= t(i+1)
        break;
    end
end

h = t(i+1) - t(i);
B = -(h * z(i+1)/6) - (h * (z(i))/3) + (y(i+1) - y(i))/h;
D = (z(i+1) - z(i)) / (6*h);
S = y(i) + (x - t(i)) * (B + (x-t(i)) * ((z(i)/2) + ((x - t(i)) * D)));
