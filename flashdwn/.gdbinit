# connect to target
target remote localhost:2331
# reset target
monitor reset 0
# load image
load test.elf
# load symbols
file test.elf
# init regs
set $pc=0x20100000
set $sp=0x20000400
# it's ready for starting ...

