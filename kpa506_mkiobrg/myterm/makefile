all: transponder actuator freqresp testudp udpclient udpactuator

udpclient: udpclient.c
	gcc -o udpclient udpclient.c -g

testudp: testudp.c
	gcc -o testudp testudp.c -g

freqresp: freqresp.c cos_tb.c
	gcc -o freqresp freqresp.c cos_tb.c -g

transponder: transponder.c cos_tb.c
	gcc -o transponder transponder.c cos_tb.c -g

actuator: actuator.c cos_tb.c
	gcc -o actuator actuator.c cos_tb.c -g

udpactuator: udpactuator.c cos_tb.c
	gcc -o udpactuator udpactuator.c cos_tb.c -g

clean:
	rm transponder actuator freqresp testudp udpactuator udpclient
