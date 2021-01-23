function plt = plotresults()

hold on
p = fplot(@evalnewton, [-1, 1]);
p.Color = 'red';
p.DisplayName = 'Newton (p(x))';

p2 = fplot(@evalspline, [-1, 1]);
p2.Color = 'blue';
p2.DisplayName = 'Cubic spline (S(x))';

p3 = fplot(@evalleast, [-1, 1]);
p3.Color = 'green';
p3.DisplayName = 'Least Squares (g(x))';

p4 = fplot(@f, [-1, 1]);
p4.Color = 'cyan';
p4.DisplayName = 'f(x)';

legend
% title('Function interpolation using 7 equally spaced nodes on [-1,1]')
title('Function interpolation using 7 Chebyshev spaced nodes on [-1,1]')
xlabel('x')
ylabel('y')
hold off