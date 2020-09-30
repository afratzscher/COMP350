#include <stdio.h>
#include <math.h>

int main(){
	double p = 2.0 * (sqrt(2.0)); // base case (for square)
	for (int n = 2; n <= 34; n++){
		double two_n = pow(2.0, n);
		// printf("p %e, two_n %e, div %20.15e, pow %20.15e, 1-pow %20.15e, sqrt %e, 1- %e\n", p, two_n, p/two_n, pow(p/two_n, 2), 1- pow(p/two_n, 2), sqrt(1 - pow((p/two_n), 2)), 1-sqrt(1 - pow((p/two_n), 2)));
		p = two_n * (sqrt(2*pow((p/two_n), 2))/ (sqrt(1 + sqrt(1 - pow((p/two_n), 2.0)))));
		// got by multiplying by conjugate
		// double powerNum = pow(2, (double)n);
		// printf("p %e, powerNum %e, div %20.15e, pow %20.15e, 1-pow %20.15e, sqrt %e, 1- %e\n", p, powerNum, p/powerNum, pow(p/powerNum, 2), 1- pow(p/powerNum, 2), sqrt(1 - pow((p/powerNum), 2)), 1-sqrt(1 - pow((p/powerNum), 2)));
		// p = powerNum * sqrt(4 * pow((p / powerNum), 2)) / sqrt(2 + sqrt(4 - 4 * pow((p / powerNum), 2)));
		printf("p_%d = %20.15e, diff = %20.15e\n", n+1, p, M_PI-p);
		if (p == M_PI){
			printf("equal");
		}
	}
	return 0;
}