function y = newton(chebyshev)
n = 7;
% get x values
if chebyshev == 0
    x = linspace(-1, 1, n);
elseif chebyshev == 1 %chebyshev problem
    for i = 0:6
        x(i+1) = cos((2*i+1)*pi/(2*6+2));
    end
end
     
% get y values
for i = 1:n
    y(i) = f(x(i));
end 

%newton
for k = 1:n-1
    y(k+1:n) = (y(k+1:n) - y(k)) ./ (x(k+1:n) - x(k));
end