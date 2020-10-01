#include <stdio.h>
#include <math.h>

int main(){
	double p = 2.0 * (sqrt(2.0)); // base case (for square)
	for (int n = 2; n <= 34; n++){
		double two_n = pow(2.0, n);
		p = two_n * (sqrt(2 * (1 - sqrt(1 - pow((p/two_n), 2)))));
		printf("p_%d = %e, diff = %e\n", n+1, p, M_PI-p);
	}
	return 0;
}