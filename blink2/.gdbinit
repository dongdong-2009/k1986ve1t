# connect to target
target remote localhost:2331
# reset target
monitor reset 0
# load image
#load blink.elf
# load symbols
file blink.elf
# it's ready for starting ...

