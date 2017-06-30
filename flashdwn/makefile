##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld

CFLAGS  = -c -fno-common -O0 -g -mcpu=cortex-m1 -mthumb -I./inc -fpie
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
CPFLAGS = -Obinary

all: k1986ve1t.elf test.elf

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<
	
FlashDev.o: FlashDev.c
	$(CC) $(CFLAGS) -o $@ $<
	
FlashPrg.o: FlashPrg.c
	$(CC) $(CFLAGS) -o $@ $<	

k1986ve1t.elf: FlashPrg.o FlashDev.o
	$(LD) $(LFLAGS) -Map k1986ve1t.map -o k1986ve1t.elf FlashDev.o FlashPrg.o
	
test.elf: main.o FlashPrg.o FlashDev.o
	$(LD) $(LFLAGS) -Map test.map -o test.elf main.o FlashDev.o FlashPrg.o

clean:
	rm -rf *.o *.elf *.bin *.map

debug:
#	arm-none-eabi-gdb -ex "target remote localhost:2331" main.elf
	arm-none-eabi-gdb
