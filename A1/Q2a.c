#include <stdio.h>
#include <math.h>

int main(){
	double p = 2.0 * (sqrt(2.0)); // base case (for square)
	for (int n = 2; n <= 34; n++){
		double two_n = pow(2.0, n);
		printf("p %e, two_n %e, div %20.15e, pow %20.15e, 1-pow %20.15e, sqrt %e, 1- %e\n", p, two_n, p/two_n, pow(p/two_n, 2), 1- pow(p/two_n, 2), sqrt(1 - pow((p/two_n), 2)), 1-sqrt(1 - pow((p/two_n), 2)));
		if (sqrt(1 - pow((p/two_n), 2)) == 1){
			printf("same last");
		}
		if (1- pow(p/two_n, 2) == 1){
			printf("same first");
		}
		p = two_n * (sqrt(2 * (1 - sqrt(1 - pow((p/two_n), 2)))));
		printf("p_%d = %20.15e, diff = %20.15e\n\n", n+1, p, M_PI-p);
	}
	return 0;
}