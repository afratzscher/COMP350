solution = adaptive_simpson(0, 2, 10^(-5), 0, 30, 0);
fprintf("ERF(%d) = %0.8f\n", 2, erf(2))
fprintf("Adaptive Simpson method: %0.8f\nNumber of function evaluations: %d\n", solution)
fprintf("Error: %0.11f\n", erf(2) - solution(1))