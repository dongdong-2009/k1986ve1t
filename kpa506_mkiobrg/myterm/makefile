all: transponder actuator freqresp

freqresp: freqresp.c cos_tb.c
	gcc -o freqresp freqresp.c cos_tb.c -g

transponder: transponder.c cos_tb.c
	gcc -o transponder transponder.c cos_tb.c -g

actuator: actuator.c cos_tb.c
	gcc -o actuator actuator.c cos_tb.c -g

clean:
	rm transponder actuator freqresp
