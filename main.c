#include<stdio.h>

#include "suma.h"
#include "resta.h"
#include "producto.h"
#include "modulo.h"

int main(void) {
	int a = 5;
	int b = 3;
	printf("a=%d, b=%d\n",a, b);
	printf("%d + %d = %d\n", a, b, suma(a, b));
	printf("%d - %d = %d\n", a, b, resta(a, b));
	printf("%d * %d = %d\n", a, b, producto(a, b));
	printf("%d mod %d = %d\n", a, b, modulo(a, b));
	
}
