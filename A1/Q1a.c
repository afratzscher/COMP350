#include <stdio.h>
// use "float" type because want single precision

int main()
{
	float p = 0.1; int k = 20; int N = 2000;
	float X = 1.0;

	for (int j = 1; j <= k; j++){
		X*= (N+1-j);
	}
	for (int j = 1; j <= k; j++){
		X /= j;
	}
	for (int j = 1; j <= k; j++){
		X *= p;
	}
	float q = 1 - p;
	for (int j = k+1; j <= N; j++){
		X *= q;
	}
	printf("X(%e, %d, %d) = %e\n", p, k, N, X); // prints result in decimal exponent form
	return 0; // returns 0 if successful
}
