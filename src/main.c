#include <stdio.h>
#include "calculator.h"

int main() {
	int a = 10, b = 5;

	printf("덧셈: %d\n", add(a, b));
	printf("뺄셈: %d\n", subtract(a, b));
	printf("곱셈: %d\n", multiply(a, b));
	printf("나눗셈: %d\n", divide(a, b));

	return 0;
}
