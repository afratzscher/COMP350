function solution = adaptive_simpson(a,b, eps, level, level_max, count)

h = b-a;
c = (a+b)/2;
i1 = (h*(f(a) + 4*f(c) + f(b)))/6;
count = count + 3;
d = (a+c)/2;
e = (c+b)/2;
i2 = (h*(f(a) +4*f(d) + 2*f(c) + 4*f(e) + f(b)))/12;
count = count + 5;

if level >= level_max
    numI = i2;
    solution = [numI, count];
else
    if (abs(i2-i1) <= 15*eps)
        numI = i2 + (i2 - i1)/15;
        solution = [numI, count];
    else
        solution = adaptive_simpson(a, c, eps/2, level, level_max, count) + adaptive_simpson(c, b, eps/2, level, level_max, count);
    end
end