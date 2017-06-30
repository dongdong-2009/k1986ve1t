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

all: blink.bin

main.o: main.c
	$(CC) $(CFLAGS) -o main.o main.c

blink.elf: main.o
	$(LD) $(LFLAGS) -Map test.map -o blink.elf main.o

blink.bin: blink.elf
	$(CP) $(CPFLAGS) blink.elf main.bin
	arm-none-eabi-objdump -d blink.elf > main.s
clean:
	rm -rf *.o *.elf *.bin *.map

debug:
#	arm-none-eabi-gdb -ex "target remote localhost:2331" main.elf
	arm-none-eabi-gdb
