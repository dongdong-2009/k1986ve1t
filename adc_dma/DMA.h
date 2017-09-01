
#ifndef	__DMA_H
#define __DMA_H

#define	BASE_PTR	0x20100000				//base address of the manegement structure

typedef struct
{
	uint32_t	SourceEndPointer;
	uint32_t	DestinationEndPointer;
	uint32_t	Control;
	uint32_t	Unused;
} DMAManagementStructureTypeDef;

void DMAInit(void);		//function for initialization DMA controller
void DMA_Handler(void);	//function for interrupt service routine of DMA

#endif	//__DMA_H
