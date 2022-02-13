#include<stdio.h>
#include<string.h>


int main(int argc, char **argv)
{
	char *p = "Cole Strickler is the goat";


	if (strcmp(argv[1], p) == 0){
		printf("\n DAMN BRO COLE IS A GOD");
	}
	else{
		printf("\n DAMN BRO COLE IS NOT COOL");
	}
	return 0;
}