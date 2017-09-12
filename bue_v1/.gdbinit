# connect to target
target remote localhost:2331
# reset target
monitor reset 0
# load image
#load bue.elf
# load symbols
file bue.elf
# it's ready for starting ...

