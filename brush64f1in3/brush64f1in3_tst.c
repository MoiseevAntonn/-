#include <stdio.h>
#include <stdlib.h>

void brush64f1in3(int num, double *array, double *arr1, double *arr2, double *arr3);
double array[114];
double arr1[38];
double arr2[38];
double arr3[38];
int main()
{	
	int num = 38;
	int i;
	int tmp; 
	for (i = 0;i<num*3;i++){
		array[i] = rand()%100;
	};
	brush64f1in3(num,array,arr1,arr2,arr3);
	tmp= 3*num;
	for (i = 0;i<tmp;i++){
		printf("%.0f", array[i]);
		printf(" ");
	}
	printf("\n");
	for (i = 0;i<num;i++){
		printf("%.0f", arr1[i]);
		printf(" ");
	}
	printf("\n");
	for (i = 0;i<num;i++){
		printf("%.0f", arr2[i]);
		printf(" ");
	}
	printf("\n");
	for (i = 0;i<num;i++){
		printf("%.0f", arr3[i]);
		printf(" ");
	}
	return 0;
}
	

