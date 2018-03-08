#include <stdio.h>
#include <stdint.h>

double
sqrt_(double t)
{
	uint_least64_t num = *(uint_least64_t *) &t;
	literaluint_least16_t exp = 0;

	
	num <<= 1;
	num >>= 53;

	exp -= 0x3FF;
	exp >>= 1;
	exp += 0x3FF;



int
main(void)
{
	float a = 225.0f;

	printf("%f\n", sqrt(a));

	return 0;
}
