#include <stdio.h>
#include <stdlib.h>
int mtc(int a,int b,int c);

int main()
{	
	int a,b,c,i;
	int answer_s;
	int answer_c;
	for (i = 0; i < 10000; i++){
	a = rand() % 100 + 1;
	b = rand() % 100 + 1;
	b = rand() % 100 + 1;
	answer_s = mtc(a,b,c);
	answer_c = mtc_c(a,b,c);
	if (answer_c != answer_s){
	printf("%d\n", a);
	printf("%d\n", b);
	printf("%d\n", c);
	printf("%d\n");
	}
	}
	return 0;
}
	


int mtc_c(int a,int b,int c)
{	
	if (a >= b && a >= c) return a;
	if (b >= a && b >= c) return b;
	if (c >= a && c >= b) return c;
	return 0;
}
