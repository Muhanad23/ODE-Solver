#include <iostream>
#include <bitset>
#include <vector>
using namespace std;

int main()
{
	vector<bitset<16>> a{0b0101010101010101,
						 0b1101010101010101,
						 0b0101010101010101,
						 0b1101010101010101,
						 0b1101010101010101,
						 0b0000000001010000,
						 0b1111111111111111,
						 0b1000000000000000,
						 0b0000000000000000,
						 0b1111111000001111,
						 0b0000000000000000,
						 0b0000000000000000,
						 0b0000001001111111,
						 0b1000000101111111,
						 0b0000000100000000,
						 0b1000001000000000};

	vector<bitset<16>> b{0b0011101010101001,
						 0b0011101010101001,
						 0b1011101010101001,
						 0b1011101010101001,
						 0b0101010101010101,
						 0b1111111110101111,
						 0b1111111111111111,
						 0b1000000000000000,
						 0b0000000000000000,
						 0b1010010111111111,
						 0b1010010111111111,
						 0b0010010111111111,
						 0b1000000101111111,
						 0b0000001001111111,
						 0b0000000100000000,
						 0b1000001000000000};

	for (int i = 0; i < 16; i++)
	{
		bitset<16> x(a[i].to_ulong() + b[i].to_ulong());
		bitset<1> of;
		if (a[i][15] == b[i][15] && a[i][15] != x[15])
			of = 1;
		else
			of = 0;
		cout << x << " " << of << endl;
	}
	return 0;
}