##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
AS = arm-none-eabi-as
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld	

IMAGE = $(shell pwd)/bue.elf

CFLAGS  = -c -fno-common -g -mcpu=cortex-m1 -mthumb -I../inc -fpie
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
LFLAGS  += -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/lib/gcc/arm-none-eabi/5.4.1/armv6-m -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/lib/armv6-m
LIBS = --start-group -lgcc --end-group
CPFLAGS = -Obinary
AFLAGS = -g -mcpu=cortex-m1 -mthumb -mapcs-32 -ahls=bue.lst 

all: bue.bin

main.o: main.c
	$(CC) $(CFLAGS) -O0 -o main.o main.c

bue.elf: main.o
	$(LD) $(LFLAGS) -Map test.map -o bue.elf main.o $(LIBS)

bue.bin: bue.elf
	$(CP) $(CPFLAGS) bue.elf bue.bin
	arm-none-eabi-objdump -d bue.elf > main.s
	
clean:
	rm -rf *.o *.elf *.bin *.map

debug: bue.elf
	arm-none-eabi-gdb
