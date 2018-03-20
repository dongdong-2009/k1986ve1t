all: transponder actuator

transponder: transponder.c cos_tb.c
	gcc -o transponder transponder.c cos_tb.c -g

actuator: actuator.c cos_tb.c
	gcc -o actuator actuator.c cos_tb.c -g

clean:
	rm transponder actuator
