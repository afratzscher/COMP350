#include <stdio.h>
#include<math.h>

int main(){
	float result= 0.0;
	int n = 0; // base values
	float val = pow(M_PI, 2)/6;
	printf("pi^2/6 value = %f\n", val);

	while (result + (1/ pow(n+1, 2)) > result){
		n++;
		result += (1/pow(n,2));
	}
	printf("n = %d, result = %e\n", n, result);
	printf("error = %e\n", val-result);
	printf("n+1 = %d, result = %e\n", n+1, result + (1/ pow(n+1, 2)));
	printf("difference between n and n+1 = %e\n", result + (1/pow(n+1, 2)) - result);
	return 0;
}

