#CC=mipsel-openwrt-linux-uclibc-gcc
#AS=mipsel-openwrt-linux-uclibc-as
#STRIP=mipsel-openwrt-linux-uclibc-strip

CC=gcc
AS=as
STRIP=strip


CFLAGS+=-Wall -O2 -I/usr/include/modbus
LDFLAGS+=-lmodbus 

all: mbrtu_client 

	
mbrtu_client: mbrtu_client.c
	$(CC) $(CFLAGS) -o $@ mbrtu_client.c $(LDFLAGS) 
	$(STRIP) $@	
	

clean:
	rm -f *.o mbrtu_server mbrtu_client mbtcp_server mbtcp_client mbrtutcp_bridge

