#include <iostream>
#include "calculator.h"

int main(int argc, char* argv[])
{
	int a = 1, b = 1;

	Calculator calculator;

	int c = calculator.Add(a, b);

	std::cout << c << std::endl;

	return 0;
}