##################################
# k1986ve1t Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld

INCLUDES =  -I../inc

IMAGE = $(shell pwd)/blink.elf
	
#CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g 
#CFLAGS  += -mcpu=cortex-m1 -mthumb $(INCLUDES)
#LFLAGS  = -nostartfiles -T$(LKR_SCRIPT)
#CPFLAGS = -Obinary

CFLAGS  = -c -fno-common -nostdlib -fno-builtin -ffreestanding -O0 -g
CFLAGS  += -mcpu=cortex-m1 -mthumb $(INCLUDES)
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
LFLAGS  += -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/lib/gcc/arm-none-eabi/5.4.1/armv6-m -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/lib/armv6-m
LIBS = --start-group -lgcc --end-group
CPFLAGS = -Obinary

all: blink.bin
	@echo $(IMAGE)

xprintf.o: xprintf.c gdef.h
	$(CC) $(CFLAGS) -o $@ $<

uart.o: uart.c gdef.h
	$(CC) $(CFLAGS) -o $@ $<

startup.o: startup.c gdef.h
	$(CC) $(CFLAGS) -o $@ $<

mil.o: mil.c gdef.h
	$(CC) $(CFLAGS) -O3 -o $@ $<

main.o: main.c gdef.h
	$(CC) $(CFLAGS) -o $@ $<

blink.elf: main.o startup.o uart.o xprintf.o mil.o
	$(LD) $(LFLAGS) -Map blink.map -o $@ $^ $(LIBS)

blink.bin: blink.elf
	$(CP) $(CPFLAGS) $< $@
	arm-none-eabi-objdump -d blink.elf > blink.s
clean:
	rm -rf *.o *.elf *.bin

load: blink.elf
	../mdr1986x-JFlash-master/loadjlink $(IMAGE)

debug:
	arm-none-eabi-gdb
