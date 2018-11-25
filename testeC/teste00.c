#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

float sigmoid(float x) {
     float exp_value;
     float return_value;

     exp_value = exp((double) -x);

     return_value = 1 / (1 + exp_value);

     return return_value;
}

 int main() {
 	clock_t begin = clock();

 	FILE *weights;
 	FILE *data;

 	weights = fopen("weights.txt", "r");
 	data = fopen("data.txt", "r");

 	float sum = 0;

 	if (data!= NULL) {
 		if (weights != NULL) {
 			float fst, scnd;
	 		float mult = 0;
			

			float dataArray[10];
			float weightsArray[10];

		 	for (int i = 0; 9; i++) {
		 		fscanf(data, "%1f", &dataArray[i]);
 				fscanf(weights, "%1f", &weightsArray[i]);
		 	}

		 	for (int j = 0; 9; j++) {
		 		fst = dataArray[j];
		 		scnd = weightsArray[j];

		 		mult = fst*scnd;
		 		sum = sum + mult;
		 	}

		 	fclose(weights);
		 	fclose(data);

 		}

 	}

 	sum = sigmoid(sum);
	printf("a saída é: %f \n", sum);


 	clock_t end = clock();
 	double time_spent = (double)(end - begin);

 	printf("Time spent: %f \n", time_spent);

 	return 0;
 }
