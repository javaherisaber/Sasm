#include "stdafx.h"
#include <iostream>
using namespace std;
extern "C" int array(int a[], int length);   // external ASM procedure

int main()
{
	int a[] = { 1, 3, 5, 7, 9, 2, 4, 6, 8, 0 };  // array declaration
	int   array_length = 10; // length of the array

	int   sum = array(a, array_length);   // call of the ASM procedure

	cout << "sum=" << sum << endl;   // displaying the sum
	cin >> sum;
	return 0;
}
