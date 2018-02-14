all: transponder actuator

transponder: transponder.c cos_tb.c
	gcc -o transponder transponder.c cos_tb.c

actuator: actuator.c cos_tb.c
	gcc -o actuator actuator.c cos_tb.c

clean:
	rm transponder actuator
