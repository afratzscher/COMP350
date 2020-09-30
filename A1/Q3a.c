#include <stdio.h>
#include<math.h>

int main(){
	float result= 0.0;
	int n = 0; // base values
	float val = pow(M_PI, 2)/6;
	printf("pi^2/6 value = %f\n", val);

	// while (result + (1/ pow(n+1, 2)) > result){
	while(pow(n+1, -2) > 0){
		n++;
		result += (1/pow(n,2));
	}
	printf("n = %d, result = %20.15f\n", n, result);
	printf("error = %20.15f\n", val-result);
	return 0;
}