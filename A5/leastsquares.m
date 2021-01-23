function c = leastsquares(chebyshev)
n = 7;

if chebyshev == 0
    x = linspace(-1, 1, n);
elseif chebyshev == 1 %chebyshev problem
    for i = 0:6
        x(i+1) = cos((2*i+1)*pi/(2*6+2));
    end
end

n = length(x);
for i = 1:n
    y(i) = f(x(i));
end

a=zeros(n,3);
for i = 1:n
    a(i,1) = x(i)^0;
    a(i,2) = x(i)^2;
    a(i,3) = x(i)^4;
end
c = a \ transpose(y);