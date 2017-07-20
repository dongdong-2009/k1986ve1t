# connect to target
target remote localhost:2331
# reset target
monitor reset 0
# load image
load bue_pwm.elf
# load symbols
file bue_pwm.elf
# init regs
set $pc=0x20100000
set $sp=0x20007fff
# it's ready for starting ...

