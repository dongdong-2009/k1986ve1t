##################################
# k1986ve1t Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld

INCLUDES =  -I../inc

IMAGE = $(shell pwd)/blink.elf
	
CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g 
CFLAGS  += -mcpu=cortex-m1 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
CPFLAGS = -Obinary

all: blink.bin
	@echo $(IMAGE)

uart.o: uart.c
	$(CC) $(CFLAGS) -o $@ $<

startup.o: startup.c
	$(CC) $(CFLAGS) -o $@ $<

main.o: main.c
	$(CC) $(CFLAGS) -o $@ $<

blink.elf: main.o startup.o uart.o
	$(LD) $(LFLAGS) -Map blink.map -o $@ $^

blink.bin: blink.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d blink.elf > blink.s
clean:
	rm -rf *.o *.elf *.bin

load: blink.elf
	../mdr1986x-JFlash-master/loadjlink $(IMAGE)

debug:
	arm-none-eabi-gdb
