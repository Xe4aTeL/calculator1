#include "calculator.h"

int Calculator::Add (int a, int b)
{
    return a + b;
}

int Calculator::Sub (int a, int b)
{
    return Add (a, -b);
}

int Calculator::Mul (double a, double b)
{
    return a * b + 0.5;
}

double Calculator::Div (double a, double b)
{
	return a / b;
}
