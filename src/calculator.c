#include <stdio.h>
#include "calculator.h"

int add(int a, int b) {
	return a + b;
}

int subtract(int a, int b) {
	return a - b;
}

int multiply(int a, int b) {
	return a * b;
}

int divide(int a, int b) {
	if (b == 0) {
		printf("0으로 나눌 수 없습니다!\n");
		return 0;
	}
	return a / b;
}
