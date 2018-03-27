#include "opora.h"
#include "gdef.h"

void mil_cpy(uint16_t *pt)
{
	uint32_t *pw = (uint32_t*)(MIL_STD_15531_BASE+RT_SBADDR*0x80);
	
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
	*pw++ = *pt++;
}
