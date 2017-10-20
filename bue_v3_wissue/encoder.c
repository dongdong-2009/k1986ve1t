#include "gdef.h"

/* кодирование данных в код грея */
uint32_t b2g(uint32_t b)
{
	return b ^ (b >> 1);
}

/* декодирование кода грея */
uint32_t g2b(uint32_t g)
{
	uint32_t b = 0;
	for(b = 0; g; (g = g >> 1)){
		b = b ^ g;
	}
	return b;
}
