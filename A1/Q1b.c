#include <stdio.h>
#include <stdlib.h>
int I = 0; // I = 0 initially

float check(float B, float X, float S){
	if (X > B){
		X /= B;
		I++;
		return X;
	}
	if (X < S){
		X *= B;
		I--;
		return X;
	}
	return X;
}

int main()
{
	// set B = value of 2^100
	float B = 1.0; int exp = 100;
	for (int i = 0; i < exp; i++){
		B *= 2.0;
	}

	// set S = 1/B
	float S = 1/B;

	float p = 0.1; int k = 200; int N = 2000;
	float X = 1.0;

	for (int j = 1; j <= k; j++){
		X*= (N+1-j);
		X = check(B, X, S);
	}
	for (int j = 1; j <= k; j++){
		X /= j;
		X = check(B, X, S);
	}
	for (int j = 1; j <= k; j++){
		X *= p;
		X = check(B, X, S);
	}
	float q = 1 - p;
	for (int j = k+1; j <= N; j++){
		X *= q;
		X = check(B, X, S);
	}

	// get B^I
	if (I == 0){
		B = 1.0; // B^0 = 1
	}
	else { // if non-zero value
		for (int j = 0; j < abs(I)-1; j++){
			B *= 2;
		}
		if (I < 0){  // if negative exponent, do B = 1/B
			B = 1/B;
		}
	}
	X = X * B;
	printf("%e\n", X); // prints result 
	return 0; // returns 0 if successful
}