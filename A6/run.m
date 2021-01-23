%Recursive trapezoid
a = 0;
b = 2;
eps = 10^(-5);
level_max = 30;

[x, fxeval] = recursive_trapezoid(a,b, eps);
fprintf("RECURSIVE TRAPEZOID METHOD\n")
fprintf("ERF(%d) = %0.8f\n", b, erf(b))
fprintf("Recursion trapezoid: %0.8f\n", x)
fprintf("Number of function evaluations: %d\n", fxeval)
fprintf("Error: %0.8f\n\n", erf(b) - x)

%Adaptive simpson
fprintf("ADAPTIVE SIMPSON METHOD\n")
solution = adaptive_simpson(a,b, eps, 0, level_max, 0);
fprintf("ERF(%d) = %0.8f\n", b, erf(b))
fprintf("Adaptive Simpson method: %0.8f\nNumber of function evaluations: %d\n", solution)
fprintf("Error: %0.11f\n", erf(b) - solution(1))
