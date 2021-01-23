%test1 = RecursionTrapezoid(0,1);
%sprintf("Displaying test1: %f", test1)


test2 = adaptive_simpson( 0, 1, 10^(-6), 0, 100, 0);
fprintf("Adapted Simpson method: %8f \nNumber of iterations: %.1f\n", test2);

error2= erf(1) - test2(1);
fprintf("Error: %0.11f\n", error2);