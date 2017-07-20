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

all: bue_pwm.bin

main.o: main.c
	$(CC) $(CFLAGS) -o main.o main.c

bue_pwm.elf: main.o
	$(LD) $(LFLAGS) -Map test.map -o bue_pwm.elf main.o

bue_pwm.bin: bue_pwm.elf
	$(CP) $(CPFLAGS) bue_pwm.elf bue_pwm.bin
	arm-none-eabi-objdump -d bue_pwm.elf > main.s
clean:
	rm -rf *.o *.elf *.bin *.map

debug:
#	arm-none-eabi-gdb -ex "target remote localhost:2331" main.elf
	arm-none-eabi-gdb
