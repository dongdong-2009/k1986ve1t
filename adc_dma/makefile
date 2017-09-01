##################################
# stm32 minimal example Makefile
##################################

CC = arm-none-eabi-gcc
LD = arm-none-eabi-ld
CP = arm-none-eabi-objcopy

LKR_SCRIPT = k1986ve1t.ld

CFLAGS  = -c -fno-common -g -mcpu=cortex-m1 -mthumb -I../inc -fpie
LFLAGS  = -nostartfiles -T$(LKR_SCRIPT) 
LFLAGS  += -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/lib/gcc/arm-none-eabi/5.4.1/armv6-m -L/home/smolvik/gcc-arm-none-eabi-5_4-2016q3/arm-none-eabi/lib/armv6-m
LIBS = --start-group -lgcc --end-group
CPFLAGS = -Obinary

all: bue_pwm.bin

main.o: main.c
	$(CC) $(CFLAGS) -O0 -o main.o main.c

bue_pwm.elf: main.o
	$(LD) $(LFLAGS) -Map test.map -o bue_pwm.elf main.o $(LIBS)

bue_pwm.bin: bue_pwm.elf
	$(CP) $(CPFLAGS) bue_pwm.elf bue_pwm.bin
	arm-none-eabi-objdump -d bue_pwm.elf > main.s
clean:
	rm -rf *.o *.elf *.bin *.map

debug:
#	arm-none-eabi-gdb -ex "target remote localhost:2331" main.elf
	arm-none-eabi-gdb
