
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <startup_proc>:
20100000:	b580      	push	{r7, lr}
20100002:	b082      	sub	sp, #8
20100004:	af00      	add	r7, sp, #0
20100006:	4b0f      	ldr	r3, [pc, #60]	; (20100044 <startup_proc+0x44>)
20100008:	607b      	str	r3, [r7, #4]
2010000a:	e004      	b.n	20100016 <startup_proc+0x16>
2010000c:	687b      	ldr	r3, [r7, #4]
2010000e:	1d1a      	adds	r2, r3, #4
20100010:	607a      	str	r2, [r7, #4]
20100012:	2200      	movs	r2, #0
20100014:	601a      	str	r2, [r3, #0]
20100016:	687a      	ldr	r2, [r7, #4]
20100018:	4b0b      	ldr	r3, [pc, #44]	; (20100048 <startup_proc+0x48>)
2010001a:	429a      	cmp	r2, r3
2010001c:	d3f6      	bcc.n	2010000c <startup_proc+0xc>
2010001e:	4b0b      	ldr	r3, [pc, #44]	; (2010004c <startup_proc+0x4c>)
20100020:	607b      	str	r3, [r7, #4]
20100022:	e004      	b.n	2010002e <startup_proc+0x2e>
20100024:	687b      	ldr	r3, [r7, #4]
20100026:	1d1a      	adds	r2, r3, #4
20100028:	607a      	str	r2, [r7, #4]
2010002a:	2200      	movs	r2, #0
2010002c:	601a      	str	r2, [r3, #0]
2010002e:	687a      	ldr	r2, [r7, #4]
20100030:	4b07      	ldr	r3, [pc, #28]	; (20100050 <startup_proc+0x50>)
20100032:	429a      	cmp	r2, r3
20100034:	d3f6      	bcc.n	20100024 <startup_proc+0x24>
20100036:	f000 f863 	bl	20100100 <main>
2010003a:	46c0      	nop			; (mov r8, r8)
2010003c:	46bd      	mov	sp, r7
2010003e:	b002      	add	sp, #8
20100040:	bd80      	pop	{r7, pc}
20100042:	46c0      	nop			; (mov r8, r8)
20100044:	20000000 	.word	0x20000000
20100048:	20000028 	.word	0x20000028
2010004c:	20000028 	.word	0x20000028
20100050:	20000064 	.word	0x20000064

20100054 <NVIC_EnableIRQ>:
20100054:	b580      	push	{r7, lr}
20100056:	b082      	sub	sp, #8
20100058:	af00      	add	r7, sp, #0
2010005a:	0002      	movs	r2, r0
2010005c:	1dfb      	adds	r3, r7, #7
2010005e:	701a      	strb	r2, [r3, #0]
20100060:	4909      	ldr	r1, [pc, #36]	; (20100088 <NVIC_EnableIRQ+0x34>)
20100062:	1dfb      	adds	r3, r7, #7
20100064:	781b      	ldrb	r3, [r3, #0]
20100066:	b25b      	sxtb	r3, r3
20100068:	095b      	lsrs	r3, r3, #5
2010006a:	1dfa      	adds	r2, r7, #7
2010006c:	7812      	ldrb	r2, [r2, #0]
2010006e:	0010      	movs	r0, r2
20100070:	221f      	movs	r2, #31
20100072:	4002      	ands	r2, r0
20100074:	2001      	movs	r0, #1
20100076:	4090      	lsls	r0, r2
20100078:	0002      	movs	r2, r0
2010007a:	009b      	lsls	r3, r3, #2
2010007c:	505a      	str	r2, [r3, r1]
2010007e:	46c0      	nop			; (mov r8, r8)
20100080:	46bd      	mov	sp, r7
20100082:	b002      	add	sp, #8
20100084:	bd80      	pop	{r7, pc}
20100086:	46c0      	nop			; (mov r8, r8)
20100088:	e000e100 	.word	0xe000e100

2010008c <SystemInit>:
2010008c:	b580      	push	{r7, lr}
2010008e:	af00      	add	r7, sp, #0
20100090:	f000 f93c 	bl	2010030c <ClkConfig>
20100094:	f000 f89e 	bl	201001d4 <PortConfig>
20100098:	f000 fa02 	bl	201004a0 <UartConfig>
2010009c:	f000 fe5e 	bl	20100d5c <usb_device_init>
201000a0:	46c0      	nop			; (mov r8, r8)
201000a2:	46bd      	mov	sp, r7
201000a4:	bd80      	pop	{r7, pc}
201000a6:	46c0      	nop			; (mov r8, r8)

201000a8 <sleep>:
201000a8:	b580      	push	{r7, lr}
201000aa:	b084      	sub	sp, #16
201000ac:	af00      	add	r7, sp, #0
201000ae:	6078      	str	r0, [r7, #4]
201000b0:	2300      	movs	r3, #0
201000b2:	60fb      	str	r3, [r7, #12]
201000b4:	e002      	b.n	201000bc <sleep+0x14>
201000b6:	68fb      	ldr	r3, [r7, #12]
201000b8:	3301      	adds	r3, #1
201000ba:	60fb      	str	r3, [r7, #12]
201000bc:	68fb      	ldr	r3, [r7, #12]
201000be:	4a04      	ldr	r2, [pc, #16]	; (201000d0 <sleep+0x28>)
201000c0:	4293      	cmp	r3, r2
201000c2:	ddf8      	ble.n	201000b6 <sleep+0xe>
201000c4:	46c0      	nop			; (mov r8, r8)
201000c6:	0018      	movs	r0, r3
201000c8:	46bd      	mov	sp, r7
201000ca:	b004      	add	sp, #16
201000cc:	bd80      	pop	{r7, pc}
201000ce:	46c0      	nop			; (mov r8, r8)
201000d0:	0000270f 	.word	0x0000270f

201000d4 <strlen>:
201000d4:	b580      	push	{r7, lr}
201000d6:	b084      	sub	sp, #16
201000d8:	af00      	add	r7, sp, #0
201000da:	6078      	str	r0, [r7, #4]
201000dc:	2300      	movs	r3, #0
201000de:	60fb      	str	r3, [r7, #12]
201000e0:	e002      	b.n	201000e8 <strlen+0x14>
201000e2:	68fb      	ldr	r3, [r7, #12]
201000e4:	3301      	adds	r3, #1
201000e6:	60fb      	str	r3, [r7, #12]
201000e8:	687b      	ldr	r3, [r7, #4]
201000ea:	1c5a      	adds	r2, r3, #1
201000ec:	607a      	str	r2, [r7, #4]
201000ee:	781b      	ldrb	r3, [r3, #0]
201000f0:	2b00      	cmp	r3, #0
201000f2:	d1f6      	bne.n	201000e2 <strlen+0xe>
201000f4:	68fb      	ldr	r3, [r7, #12]
201000f6:	0018      	movs	r0, r3
201000f8:	46bd      	mov	sp, r7
201000fa:	b004      	add	sp, #16
201000fc:	bd80      	pop	{r7, pc}
201000fe:	46c0      	nop			; (mov r8, r8)

20100100 <main>:
20100100:	b590      	push	{r4, r7, lr}
20100102:	b0ad      	sub	sp, #180	; 0xb4
20100104:	af00      	add	r7, sp, #0
20100106:	2394      	movs	r3, #148	; 0x94
20100108:	18fb      	adds	r3, r7, r3
2010010a:	4a2c      	ldr	r2, [pc, #176]	; (201001bc <main+0xbc>)
2010010c:	ca13      	ldmia	r2!, {r0, r1, r4}
2010010e:	c313      	stmia	r3!, {r0, r1, r4}
20100110:	8812      	ldrh	r2, [r2, #0]
20100112:	801a      	strh	r2, [r3, #0]
20100114:	f7ff ffba 	bl	2010008c <SystemInit>
20100118:	2300      	movs	r3, #0
2010011a:	22a8      	movs	r2, #168	; 0xa8
2010011c:	18ba      	adds	r2, r7, r2
2010011e:	6013      	str	r3, [r2, #0]
20100120:	4b27      	ldr	r3, [pc, #156]	; (201001c0 <main+0xc0>)
20100122:	4a28      	ldr	r2, [pc, #160]	; (201001c4 <main+0xc4>)
20100124:	601a      	str	r2, [r3, #0]
20100126:	4b28      	ldr	r3, [pc, #160]	; (201001c8 <main+0xc8>)
20100128:	2200      	movs	r2, #0
2010012a:	601a      	str	r2, [r3, #0]
2010012c:	2300      	movs	r3, #0
2010012e:	22ac      	movs	r2, #172	; 0xac
20100130:	18ba      	adds	r2, r7, r2
20100132:	6013      	str	r3, [r2, #0]
20100134:	4b25      	ldr	r3, [pc, #148]	; (201001cc <main+0xcc>)
20100136:	2200      	movs	r2, #0
20100138:	601a      	str	r2, [r3, #0]
2010013a:	f000 fe8f 	bl	20100e5c <usb_device_update>
2010013e:	4b23      	ldr	r3, [pc, #140]	; (201001cc <main+0xcc>)
20100140:	681b      	ldr	r3, [r3, #0]
20100142:	2b01      	cmp	r3, #1
20100144:	d1f9      	bne.n	2010013a <main+0x3a>
20100146:	2300      	movs	r3, #0
20100148:	22a4      	movs	r2, #164	; 0xa4
2010014a:	18ba      	adds	r2, r7, r2
2010014c:	6013      	str	r3, [r2, #0]
2010014e:	1d3b      	adds	r3, r7, #4
20100150:	2110      	movs	r1, #16
20100152:	0018      	movs	r0, r3
20100154:	f000 ff4e 	bl	20100ff4 <usb_read>
20100158:	0003      	movs	r3, r0
2010015a:	22a4      	movs	r2, #164	; 0xa4
2010015c:	18ba      	adds	r2, r7, r2
2010015e:	6013      	str	r3, [r2, #0]
20100160:	23a4      	movs	r3, #164	; 0xa4
20100162:	18fb      	adds	r3, r7, r3
20100164:	681b      	ldr	r3, [r3, #0]
20100166:	2b00      	cmp	r3, #0
20100168:	d0e7      	beq.n	2010013a <main+0x3a>
2010016a:	2300      	movs	r3, #0
2010016c:	22ac      	movs	r2, #172	; 0xac
2010016e:	18ba      	adds	r2, r7, r2
20100170:	6013      	str	r3, [r2, #0]
20100172:	e012      	b.n	2010019a <main+0x9a>
20100174:	1d3a      	adds	r2, r7, #4
20100176:	23ac      	movs	r3, #172	; 0xac
20100178:	18fb      	adds	r3, r7, r3
2010017a:	681b      	ldr	r3, [r3, #0]
2010017c:	18d3      	adds	r3, r2, r3
2010017e:	781b      	ldrb	r3, [r3, #0]
20100180:	001a      	movs	r2, r3
20100182:	4b13      	ldr	r3, [pc, #76]	; (201001d0 <main+0xd0>)
20100184:	0011      	movs	r1, r2
20100186:	0018      	movs	r0, r3
20100188:	f000 fbb4 	bl	201008f4 <xprintf>
2010018c:	23ac      	movs	r3, #172	; 0xac
2010018e:	18fb      	adds	r3, r7, r3
20100190:	681b      	ldr	r3, [r3, #0]
20100192:	3301      	adds	r3, #1
20100194:	22ac      	movs	r2, #172	; 0xac
20100196:	18ba      	adds	r2, r7, r2
20100198:	6013      	str	r3, [r2, #0]
2010019a:	23ac      	movs	r3, #172	; 0xac
2010019c:	18fb      	adds	r3, r7, r3
2010019e:	681a      	ldr	r2, [r3, #0]
201001a0:	23a4      	movs	r3, #164	; 0xa4
201001a2:	18fb      	adds	r3, r7, r3
201001a4:	681b      	ldr	r3, [r3, #0]
201001a6:	429a      	cmp	r2, r3
201001a8:	dbe4      	blt.n	20100174 <main+0x74>
201001aa:	23a4      	movs	r3, #164	; 0xa4
201001ac:	18fb      	adds	r3, r7, r3
201001ae:	681a      	ldr	r2, [r3, #0]
201001b0:	1d3b      	adds	r3, r7, #4
201001b2:	0011      	movs	r1, r2
201001b4:	0018      	movs	r0, r3
201001b6:	f000 ff57 	bl	20101068 <usb_write>
201001ba:	e7be      	b.n	2010013a <main+0x3a>
201001bc:	201018a0 	.word	0x201018a0
201001c0:	20000034 	.word	0x20000034
201001c4:	20100475 	.word	0x20100475
201001c8:	20000028 	.word	0x20000028
201001cc:	20000050 	.word	0x20000050
201001d0:	2010188c 	.word	0x2010188c

201001d4 <PortConfig>:
201001d4:	b580      	push	{r7, lr}
201001d6:	af00      	add	r7, sp, #0
201001d8:	4b44      	ldr	r3, [pc, #272]	; (201002ec <PortConfig+0x118>)
201001da:	4a44      	ldr	r2, [pc, #272]	; (201002ec <PortConfig+0x118>)
201001dc:	69d2      	ldr	r2, [r2, #28]
201001de:	2180      	movs	r1, #128	; 0x80
201001e0:	0449      	lsls	r1, r1, #17
201001e2:	430a      	orrs	r2, r1
201001e4:	61da      	str	r2, [r3, #28]
201001e6:	4b42      	ldr	r3, [pc, #264]	; (201002f0 <PortConfig+0x11c>)
201001e8:	2200      	movs	r2, #0
201001ea:	609a      	str	r2, [r3, #8]
201001ec:	4b40      	ldr	r3, [pc, #256]	; (201002f0 <PortConfig+0x11c>)
201001ee:	2200      	movs	r2, #0
201001f0:	601a      	str	r2, [r3, #0]
201001f2:	4b3f      	ldr	r3, [pc, #252]	; (201002f0 <PortConfig+0x11c>)
201001f4:	22ff      	movs	r2, #255	; 0xff
201001f6:	01d2      	lsls	r2, r2, #7
201001f8:	605a      	str	r2, [r3, #4]
201001fa:	4b3d      	ldr	r3, [pc, #244]	; (201002f0 <PortConfig+0x11c>)
201001fc:	22ff      	movs	r2, #255	; 0xff
201001fe:	01d2      	lsls	r2, r2, #7
20100200:	60da      	str	r2, [r3, #12]
20100202:	4b3b      	ldr	r3, [pc, #236]	; (201002f0 <PortConfig+0x11c>)
20100204:	4a3b      	ldr	r2, [pc, #236]	; (201002f4 <PortConfig+0x120>)
20100206:	619a      	str	r2, [r3, #24]
20100208:	4b38      	ldr	r3, [pc, #224]	; (201002ec <PortConfig+0x118>)
2010020a:	4a38      	ldr	r2, [pc, #224]	; (201002ec <PortConfig+0x118>)
2010020c:	69d2      	ldr	r2, [r2, #28]
2010020e:	2180      	movs	r1, #128	; 0x80
20100210:	0389      	lsls	r1, r1, #14
20100212:	430a      	orrs	r2, r1
20100214:	61da      	str	r2, [r3, #28]
20100216:	4b38      	ldr	r3, [pc, #224]	; (201002f8 <PortConfig+0x124>)
20100218:	4a37      	ldr	r2, [pc, #220]	; (201002f8 <PortConfig+0x124>)
2010021a:	6892      	ldr	r2, [r2, #8]
2010021c:	4937      	ldr	r1, [pc, #220]	; (201002fc <PortConfig+0x128>)
2010021e:	400a      	ands	r2, r1
20100220:	609a      	str	r2, [r3, #8]
20100222:	4b35      	ldr	r3, [pc, #212]	; (201002f8 <PortConfig+0x124>)
20100224:	4a34      	ldr	r2, [pc, #208]	; (201002f8 <PortConfig+0x124>)
20100226:	6892      	ldr	r2, [r2, #8]
20100228:	4935      	ldr	r1, [pc, #212]	; (20100300 <PortConfig+0x12c>)
2010022a:	400a      	ands	r2, r1
2010022c:	609a      	str	r2, [r3, #8]
2010022e:	4b32      	ldr	r3, [pc, #200]	; (201002f8 <PortConfig+0x124>)
20100230:	4a31      	ldr	r2, [pc, #196]	; (201002f8 <PortConfig+0x124>)
20100232:	6892      	ldr	r2, [r2, #8]
20100234:	2180      	movs	r1, #128	; 0x80
20100236:	0189      	lsls	r1, r1, #6
20100238:	430a      	orrs	r2, r1
2010023a:	609a      	str	r2, [r3, #8]
2010023c:	4b2e      	ldr	r3, [pc, #184]	; (201002f8 <PortConfig+0x124>)
2010023e:	4a2e      	ldr	r2, [pc, #184]	; (201002f8 <PortConfig+0x124>)
20100240:	6892      	ldr	r2, [r2, #8]
20100242:	2180      	movs	r1, #128	; 0x80
20100244:	0209      	lsls	r1, r1, #8
20100246:	430a      	orrs	r2, r1
20100248:	609a      	str	r2, [r3, #8]
2010024a:	4b2b      	ldr	r3, [pc, #172]	; (201002f8 <PortConfig+0x124>)
2010024c:	4a2a      	ldr	r2, [pc, #168]	; (201002f8 <PortConfig+0x124>)
2010024e:	6852      	ldr	r2, [r2, #4]
20100250:	2140      	movs	r1, #64	; 0x40
20100252:	430a      	orrs	r2, r1
20100254:	605a      	str	r2, [r3, #4]
20100256:	4b28      	ldr	r3, [pc, #160]	; (201002f8 <PortConfig+0x124>)
20100258:	4a27      	ldr	r2, [pc, #156]	; (201002f8 <PortConfig+0x124>)
2010025a:	6852      	ldr	r2, [r2, #4]
2010025c:	2180      	movs	r1, #128	; 0x80
2010025e:	430a      	orrs	r2, r1
20100260:	605a      	str	r2, [r3, #4]
20100262:	4b25      	ldr	r3, [pc, #148]	; (201002f8 <PortConfig+0x124>)
20100264:	4a24      	ldr	r2, [pc, #144]	; (201002f8 <PortConfig+0x124>)
20100266:	68d2      	ldr	r2, [r2, #12]
20100268:	2140      	movs	r1, #64	; 0x40
2010026a:	430a      	orrs	r2, r1
2010026c:	60da      	str	r2, [r3, #12]
2010026e:	4b22      	ldr	r3, [pc, #136]	; (201002f8 <PortConfig+0x124>)
20100270:	4a21      	ldr	r2, [pc, #132]	; (201002f8 <PortConfig+0x124>)
20100272:	68d2      	ldr	r2, [r2, #12]
20100274:	2180      	movs	r1, #128	; 0x80
20100276:	430a      	orrs	r2, r1
20100278:	60da      	str	r2, [r3, #12]
2010027a:	4b1f      	ldr	r3, [pc, #124]	; (201002f8 <PortConfig+0x124>)
2010027c:	4a1e      	ldr	r2, [pc, #120]	; (201002f8 <PortConfig+0x124>)
2010027e:	6992      	ldr	r2, [r2, #24]
20100280:	21c0      	movs	r1, #192	; 0xc0
20100282:	0189      	lsls	r1, r1, #6
20100284:	430a      	orrs	r2, r1
20100286:	619a      	str	r2, [r3, #24]
20100288:	4b1b      	ldr	r3, [pc, #108]	; (201002f8 <PortConfig+0x124>)
2010028a:	4a1b      	ldr	r2, [pc, #108]	; (201002f8 <PortConfig+0x124>)
2010028c:	6992      	ldr	r2, [r2, #24]
2010028e:	21c0      	movs	r1, #192	; 0xc0
20100290:	0209      	lsls	r1, r1, #8
20100292:	430a      	orrs	r2, r1
20100294:	619a      	str	r2, [r3, #24]
20100296:	4b15      	ldr	r3, [pc, #84]	; (201002ec <PortConfig+0x118>)
20100298:	4a14      	ldr	r2, [pc, #80]	; (201002ec <PortConfig+0x118>)
2010029a:	69d2      	ldr	r2, [r2, #28]
2010029c:	2180      	movs	r1, #128	; 0x80
2010029e:	0409      	lsls	r1, r1, #16
201002a0:	430a      	orrs	r2, r1
201002a2:	61da      	str	r2, [r3, #28]
201002a4:	4b17      	ldr	r3, [pc, #92]	; (20100304 <PortConfig+0x130>)
201002a6:	4a17      	ldr	r2, [pc, #92]	; (20100304 <PortConfig+0x130>)
201002a8:	6892      	ldr	r2, [r2, #8]
201002aa:	4917      	ldr	r1, [pc, #92]	; (20100308 <PortConfig+0x134>)
201002ac:	400a      	ands	r2, r1
201002ae:	609a      	str	r2, [r3, #8]
201002b0:	4b14      	ldr	r3, [pc, #80]	; (20100304 <PortConfig+0x130>)
201002b2:	4a14      	ldr	r2, [pc, #80]	; (20100304 <PortConfig+0x130>)
201002b4:	6892      	ldr	r2, [r2, #8]
201002b6:	21a0      	movs	r1, #160	; 0xa0
201002b8:	0049      	lsls	r1, r1, #1
201002ba:	430a      	orrs	r2, r1
201002bc:	609a      	str	r2, [r3, #8]
201002be:	4b11      	ldr	r3, [pc, #68]	; (20100304 <PortConfig+0x130>)
201002c0:	4a10      	ldr	r2, [pc, #64]	; (20100304 <PortConfig+0x130>)
201002c2:	68d2      	ldr	r2, [r2, #12]
201002c4:	2118      	movs	r1, #24
201002c6:	430a      	orrs	r2, r1
201002c8:	60da      	str	r2, [r3, #12]
201002ca:	4b0e      	ldr	r3, [pc, #56]	; (20100304 <PortConfig+0x130>)
201002cc:	4a0d      	ldr	r2, [pc, #52]	; (20100304 <PortConfig+0x130>)
201002ce:	6992      	ldr	r2, [r2, #24]
201002d0:	21f0      	movs	r1, #240	; 0xf0
201002d2:	0089      	lsls	r1, r1, #2
201002d4:	430a      	orrs	r2, r1
201002d6:	619a      	str	r2, [r3, #24]
201002d8:	4b0a      	ldr	r3, [pc, #40]	; (20100304 <PortConfig+0x130>)
201002da:	4a0a      	ldr	r2, [pc, #40]	; (20100304 <PortConfig+0x130>)
201002dc:	6812      	ldr	r2, [r2, #0]
201002de:	2118      	movs	r1, #24
201002e0:	438a      	bics	r2, r1
201002e2:	601a      	str	r2, [r3, #0]
201002e4:	46c0      	nop			; (mov r8, r8)
201002e6:	46bd      	mov	sp, r7
201002e8:	bd80      	pop	{r7, pc}
201002ea:	46c0      	nop			; (mov r8, r8)
201002ec:	40020000 	.word	0x40020000
201002f0:	400c0000 	.word	0x400c0000
201002f4:	3fffc000 	.word	0x3fffc000
201002f8:	400a8000 	.word	0x400a8000
201002fc:	ffffcfff 	.word	0xffffcfff
20100300:	ffff3fff 	.word	0xffff3fff
20100304:	400b8000 	.word	0x400b8000
20100308:	fffffc3f 	.word	0xfffffc3f

2010030c <ClkConfig>:
2010030c:	b580      	push	{r7, lr}
2010030e:	af00      	add	r7, sp, #0
20100310:	4b18      	ldr	r3, [pc, #96]	; (20100374 <ClkConfig+0x68>)
20100312:	4a18      	ldr	r2, [pc, #96]	; (20100374 <ClkConfig+0x68>)
20100314:	6892      	ldr	r2, [r2, #8]
20100316:	2101      	movs	r1, #1
20100318:	430a      	orrs	r2, r1
2010031a:	609a      	str	r2, [r3, #8]
2010031c:	46c0      	nop			; (mov r8, r8)
2010031e:	4b15      	ldr	r3, [pc, #84]	; (20100374 <ClkConfig+0x68>)
20100320:	681b      	ldr	r3, [r3, #0]
20100322:	2204      	movs	r2, #4
20100324:	4013      	ands	r3, r2
20100326:	d0fa      	beq.n	2010031e <ClkConfig+0x12>
20100328:	4b12      	ldr	r3, [pc, #72]	; (20100374 <ClkConfig+0x68>)
2010032a:	4a12      	ldr	r2, [pc, #72]	; (20100374 <ClkConfig+0x68>)
2010032c:	68d2      	ldr	r2, [r2, #12]
2010032e:	2102      	movs	r1, #2
20100330:	430a      	orrs	r2, r1
20100332:	60da      	str	r2, [r3, #12]
20100334:	4b0f      	ldr	r3, [pc, #60]	; (20100374 <ClkConfig+0x68>)
20100336:	4a10      	ldr	r2, [pc, #64]	; (20100378 <ClkConfig+0x6c>)
20100338:	605a      	str	r2, [r3, #4]
2010033a:	46c0      	nop			; (mov r8, r8)
2010033c:	4b0d      	ldr	r3, [pc, #52]	; (20100374 <ClkConfig+0x68>)
2010033e:	681b      	ldr	r3, [r3, #0]
20100340:	2202      	movs	r2, #2
20100342:	4013      	ands	r3, r2
20100344:	d0fa      	beq.n	2010033c <ClkConfig+0x30>
20100346:	4b0d      	ldr	r3, [pc, #52]	; (2010037c <ClkConfig+0x70>)
20100348:	4a0c      	ldr	r2, [pc, #48]	; (2010037c <ClkConfig+0x70>)
2010034a:	6812      	ldr	r2, [r2, #0]
2010034c:	2120      	movs	r1, #32
2010034e:	430a      	orrs	r2, r1
20100350:	601a      	str	r2, [r3, #0]
20100352:	4b08      	ldr	r3, [pc, #32]	; (20100374 <ClkConfig+0x68>)
20100354:	4a07      	ldr	r2, [pc, #28]	; (20100374 <ClkConfig+0x68>)
20100356:	68d2      	ldr	r2, [r2, #12]
20100358:	2180      	movs	r1, #128	; 0x80
2010035a:	0049      	lsls	r1, r1, #1
2010035c:	430a      	orrs	r2, r1
2010035e:	60da      	str	r2, [r3, #12]
20100360:	4b04      	ldr	r3, [pc, #16]	; (20100374 <ClkConfig+0x68>)
20100362:	4a04      	ldr	r2, [pc, #16]	; (20100374 <ClkConfig+0x68>)
20100364:	68d2      	ldr	r2, [r2, #12]
20100366:	2104      	movs	r1, #4
20100368:	430a      	orrs	r2, r1
2010036a:	60da      	str	r2, [r3, #12]
2010036c:	46c0      	nop			; (mov r8, r8)
2010036e:	46bd      	mov	sp, r7
20100370:	bd80      	pop	{r7, pc}
20100372:	46c0      	nop			; (mov r8, r8)
20100374:	40020000 	.word	0x40020000
20100378:	00000e04 	.word	0x00000e04
2010037c:	40018000 	.word	0x40018000

20100380 <TimerConfig>:
20100380:	b580      	push	{r7, lr}
20100382:	af00      	add	r7, sp, #0
20100384:	4b35      	ldr	r3, [pc, #212]	; (2010045c <TimerConfig+0xdc>)
20100386:	4a35      	ldr	r2, [pc, #212]	; (2010045c <TimerConfig+0xdc>)
20100388:	69d2      	ldr	r2, [r2, #28]
2010038a:	2180      	movs	r1, #128	; 0x80
2010038c:	0309      	lsls	r1, r1, #12
2010038e:	430a      	orrs	r2, r1
20100390:	61da      	str	r2, [r3, #28]
20100392:	4b32      	ldr	r3, [pc, #200]	; (2010045c <TimerConfig+0xdc>)
20100394:	4a31      	ldr	r2, [pc, #196]	; (2010045c <TimerConfig+0xdc>)
20100396:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100398:	2180      	movs	r1, #128	; 0x80
2010039a:	04c9      	lsls	r1, r1, #19
2010039c:	430a      	orrs	r2, r1
2010039e:	629a      	str	r2, [r3, #40]	; 0x28
201003a0:	4b2e      	ldr	r3, [pc, #184]	; (2010045c <TimerConfig+0xdc>)
201003a2:	4a2e      	ldr	r2, [pc, #184]	; (2010045c <TimerConfig+0xdc>)
201003a4:	6a92      	ldr	r2, [r2, #40]	; 0x28
201003a6:	492e      	ldr	r1, [pc, #184]	; (20100460 <TimerConfig+0xe0>)
201003a8:	400a      	ands	r2, r1
201003aa:	629a      	str	r2, [r3, #40]	; 0x28
201003ac:	4b2d      	ldr	r3, [pc, #180]	; (20100464 <TimerConfig+0xe4>)
201003ae:	2200      	movs	r2, #0
201003b0:	601a      	str	r2, [r3, #0]
201003b2:	4b2c      	ldr	r3, [pc, #176]	; (20100464 <TimerConfig+0xe4>)
201003b4:	220b      	movs	r2, #11
201003b6:	605a      	str	r2, [r3, #4]
201003b8:	4b2a      	ldr	r3, [pc, #168]	; (20100464 <TimerConfig+0xe4>)
201003ba:	4a2b      	ldr	r2, [pc, #172]	; (20100468 <TimerConfig+0xe8>)
201003bc:	609a      	str	r2, [r3, #8]
201003be:	4b29      	ldr	r3, [pc, #164]	; (20100464 <TimerConfig+0xe4>)
201003c0:	22fa      	movs	r2, #250	; 0xfa
201003c2:	0052      	lsls	r2, r2, #1
201003c4:	611a      	str	r2, [r3, #16]
201003c6:	4b27      	ldr	r3, [pc, #156]	; (20100464 <TimerConfig+0xe4>)
201003c8:	4a26      	ldr	r2, [pc, #152]	; (20100464 <TimerConfig+0xe4>)
201003ca:	6a12      	ldr	r2, [r2, #32]
201003cc:	4927      	ldr	r1, [pc, #156]	; (2010046c <TimerConfig+0xec>)
201003ce:	400a      	ands	r2, r1
201003d0:	621a      	str	r2, [r3, #32]
201003d2:	4b24      	ldr	r3, [pc, #144]	; (20100464 <TimerConfig+0xe4>)
201003d4:	4a23      	ldr	r2, [pc, #140]	; (20100464 <TimerConfig+0xe4>)
201003d6:	6a12      	ldr	r2, [r2, #32]
201003d8:	21e0      	movs	r1, #224	; 0xe0
201003da:	0109      	lsls	r1, r1, #4
201003dc:	430a      	orrs	r2, r1
201003de:	621a      	str	r2, [r3, #32]
201003e0:	4b20      	ldr	r3, [pc, #128]	; (20100464 <TimerConfig+0xe4>)
201003e2:	4a20      	ldr	r2, [pc, #128]	; (20100464 <TimerConfig+0xe4>)
201003e4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003e6:	210f      	movs	r1, #15
201003e8:	438a      	bics	r2, r1
201003ea:	631a      	str	r2, [r3, #48]	; 0x30
201003ec:	4b1d      	ldr	r3, [pc, #116]	; (20100464 <TimerConfig+0xe4>)
201003ee:	4a1d      	ldr	r2, [pc, #116]	; (20100464 <TimerConfig+0xe4>)
201003f0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003f2:	210c      	movs	r1, #12
201003f4:	430a      	orrs	r2, r1
201003f6:	631a      	str	r2, [r3, #48]	; 0x30
201003f8:	4b1a      	ldr	r3, [pc, #104]	; (20100464 <TimerConfig+0xe4>)
201003fa:	4a1a      	ldr	r2, [pc, #104]	; (20100464 <TimerConfig+0xe4>)
201003fc:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003fe:	2101      	movs	r1, #1
20100400:	430a      	orrs	r2, r1
20100402:	631a      	str	r2, [r3, #48]	; 0x30
20100404:	4b17      	ldr	r3, [pc, #92]	; (20100464 <TimerConfig+0xe4>)
20100406:	4a17      	ldr	r2, [pc, #92]	; (20100464 <TimerConfig+0xe4>)
20100408:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010040a:	4919      	ldr	r1, [pc, #100]	; (20100470 <TimerConfig+0xf0>)
2010040c:	400a      	ands	r2, r1
2010040e:	631a      	str	r2, [r3, #48]	; 0x30
20100410:	4b14      	ldr	r3, [pc, #80]	; (20100464 <TimerConfig+0xe4>)
20100412:	4a14      	ldr	r2, [pc, #80]	; (20100464 <TimerConfig+0xe4>)
20100414:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100416:	21c0      	movs	r1, #192	; 0xc0
20100418:	0109      	lsls	r1, r1, #4
2010041a:	430a      	orrs	r2, r1
2010041c:	631a      	str	r2, [r3, #48]	; 0x30
2010041e:	4b11      	ldr	r3, [pc, #68]	; (20100464 <TimerConfig+0xe4>)
20100420:	4a10      	ldr	r2, [pc, #64]	; (20100464 <TimerConfig+0xe4>)
20100422:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100424:	2180      	movs	r1, #128	; 0x80
20100426:	0049      	lsls	r1, r1, #1
20100428:	430a      	orrs	r2, r1
2010042a:	631a      	str	r2, [r3, #48]	; 0x30
2010042c:	4b0d      	ldr	r3, [pc, #52]	; (20100464 <TimerConfig+0xe4>)
2010042e:	4a0d      	ldr	r2, [pc, #52]	; (20100464 <TimerConfig+0xe4>)
20100430:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100432:	21c8      	movs	r1, #200	; 0xc8
20100434:	0209      	lsls	r1, r1, #8
20100436:	430a      	orrs	r2, r1
20100438:	641a      	str	r2, [r3, #64]	; 0x40
2010043a:	4b0a      	ldr	r3, [pc, #40]	; (20100464 <TimerConfig+0xe4>)
2010043c:	4a09      	ldr	r2, [pc, #36]	; (20100464 <TimerConfig+0xe4>)
2010043e:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100440:	21f0      	movs	r1, #240	; 0xf0
20100442:	0149      	lsls	r1, r1, #5
20100444:	430a      	orrs	r2, r1
20100446:	659a      	str	r2, [r3, #88]	; 0x58
20100448:	4b06      	ldr	r3, [pc, #24]	; (20100464 <TimerConfig+0xe4>)
2010044a:	2201      	movs	r2, #1
2010044c:	60da      	str	r2, [r3, #12]
2010044e:	200d      	movs	r0, #13
20100450:	f7ff fe00 	bl	20100054 <NVIC_EnableIRQ>
20100454:	46c0      	nop			; (mov r8, r8)
20100456:	46bd      	mov	sp, r7
20100458:	bd80      	pop	{r7, pc}
2010045a:	46c0      	nop			; (mov r8, r8)
2010045c:	40020000 	.word	0x40020000
20100460:	ff00ffff 	.word	0xff00ffff
20100464:	40098000 	.word	0x40098000
20100468:	000003e7 	.word	0x000003e7
2010046c:	fffff1ff 	.word	0xfffff1ff
20100470:	fffff0ff 	.word	0xfffff0ff

20100474 <uart1_putch>:
20100474:	b580      	push	{r7, lr}
20100476:	b082      	sub	sp, #8
20100478:	af00      	add	r7, sp, #0
2010047a:	0002      	movs	r2, r0
2010047c:	1dfb      	adds	r3, r7, #7
2010047e:	701a      	strb	r2, [r3, #0]
20100480:	46c0      	nop			; (mov r8, r8)
20100482:	4b06      	ldr	r3, [pc, #24]	; (2010049c <uart1_putch+0x28>)
20100484:	699b      	ldr	r3, [r3, #24]
20100486:	2220      	movs	r2, #32
20100488:	4013      	ands	r3, r2
2010048a:	d1fa      	bne.n	20100482 <uart1_putch+0xe>
2010048c:	4b03      	ldr	r3, [pc, #12]	; (2010049c <uart1_putch+0x28>)
2010048e:	1dfa      	adds	r2, r7, #7
20100490:	7812      	ldrb	r2, [r2, #0]
20100492:	601a      	str	r2, [r3, #0]
20100494:	46c0      	nop			; (mov r8, r8)
20100496:	46bd      	mov	sp, r7
20100498:	b002      	add	sp, #8
2010049a:	bd80      	pop	{r7, pc}
2010049c:	40030000 	.word	0x40030000

201004a0 <UartConfig>:
201004a0:	b580      	push	{r7, lr}
201004a2:	af00      	add	r7, sp, #0
201004a4:	4b19      	ldr	r3, [pc, #100]	; (2010050c <UartConfig+0x6c>)
201004a6:	4a19      	ldr	r2, [pc, #100]	; (2010050c <UartConfig+0x6c>)
201004a8:	69d2      	ldr	r2, [r2, #28]
201004aa:	2140      	movs	r1, #64	; 0x40
201004ac:	430a      	orrs	r2, r1
201004ae:	61da      	str	r2, [r3, #28]
201004b0:	4b16      	ldr	r3, [pc, #88]	; (2010050c <UartConfig+0x6c>)
201004b2:	4a16      	ldr	r2, [pc, #88]	; (2010050c <UartConfig+0x6c>)
201004b4:	6a92      	ldr	r2, [r2, #40]	; 0x28
201004b6:	2180      	movs	r1, #128	; 0x80
201004b8:	0449      	lsls	r1, r1, #17
201004ba:	430a      	orrs	r2, r1
201004bc:	629a      	str	r2, [r3, #40]	; 0x28
201004be:	4b14      	ldr	r3, [pc, #80]	; (20100510 <UartConfig+0x70>)
201004c0:	2241      	movs	r2, #65	; 0x41
201004c2:	625a      	str	r2, [r3, #36]	; 0x24
201004c4:	4b12      	ldr	r3, [pc, #72]	; (20100510 <UartConfig+0x70>)
201004c6:	2207      	movs	r2, #7
201004c8:	629a      	str	r2, [r3, #40]	; 0x28
201004ca:	4b11      	ldr	r3, [pc, #68]	; (20100510 <UartConfig+0x70>)
201004cc:	4a10      	ldr	r2, [pc, #64]	; (20100510 <UartConfig+0x70>)
201004ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004d0:	213f      	movs	r1, #63	; 0x3f
201004d2:	438a      	bics	r2, r1
201004d4:	635a      	str	r2, [r3, #52]	; 0x34
201004d6:	4b0e      	ldr	r3, [pc, #56]	; (20100510 <UartConfig+0x70>)
201004d8:	4a0d      	ldr	r2, [pc, #52]	; (20100510 <UartConfig+0x70>)
201004da:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004dc:	2124      	movs	r1, #36	; 0x24
201004de:	430a      	orrs	r2, r1
201004e0:	635a      	str	r2, [r3, #52]	; 0x34
201004e2:	4b0b      	ldr	r3, [pc, #44]	; (20100510 <UartConfig+0x70>)
201004e4:	4a0a      	ldr	r2, [pc, #40]	; (20100510 <UartConfig+0x70>)
201004e6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
201004e8:	2110      	movs	r1, #16
201004ea:	430a      	orrs	r2, r1
201004ec:	62da      	str	r2, [r3, #44]	; 0x2c
201004ee:	4b08      	ldr	r3, [pc, #32]	; (20100510 <UartConfig+0x70>)
201004f0:	4a07      	ldr	r2, [pc, #28]	; (20100510 <UartConfig+0x70>)
201004f2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
201004f4:	2160      	movs	r1, #96	; 0x60
201004f6:	430a      	orrs	r2, r1
201004f8:	62da      	str	r2, [r3, #44]	; 0x2c
201004fa:	4b05      	ldr	r3, [pc, #20]	; (20100510 <UartConfig+0x70>)
201004fc:	4a04      	ldr	r2, [pc, #16]	; (20100510 <UartConfig+0x70>)
201004fe:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100500:	4904      	ldr	r1, [pc, #16]	; (20100514 <UartConfig+0x74>)
20100502:	430a      	orrs	r2, r1
20100504:	631a      	str	r2, [r3, #48]	; 0x30
20100506:	46c0      	nop			; (mov r8, r8)
20100508:	46bd      	mov	sp, r7
2010050a:	bd80      	pop	{r7, pc}
2010050c:	40020000 	.word	0x40020000
20100510:	40030000 	.word	0x40030000
20100514:	00000301 	.word	0x00000301

20100518 <xputc>:
20100518:	b580      	push	{r7, lr}
2010051a:	b082      	sub	sp, #8
2010051c:	af00      	add	r7, sp, #0
2010051e:	0002      	movs	r2, r0
20100520:	1dfb      	adds	r3, r7, #7
20100522:	701a      	strb	r2, [r3, #0]
20100524:	1dfb      	adds	r3, r7, #7
20100526:	781b      	ldrb	r3, [r3, #0]
20100528:	2b0a      	cmp	r3, #10
2010052a:	d102      	bne.n	20100532 <xputc+0x1a>
2010052c:	200d      	movs	r0, #13
2010052e:	f7ff fff3 	bl	20100518 <xputc>
20100532:	4b0d      	ldr	r3, [pc, #52]	; (20100568 <xputc+0x50>)
20100534:	681b      	ldr	r3, [r3, #0]
20100536:	2b00      	cmp	r3, #0
20100538:	d008      	beq.n	2010054c <xputc+0x34>
2010053a:	4b0b      	ldr	r3, [pc, #44]	; (20100568 <xputc+0x50>)
2010053c:	681b      	ldr	r3, [r3, #0]
2010053e:	1c59      	adds	r1, r3, #1
20100540:	4a09      	ldr	r2, [pc, #36]	; (20100568 <xputc+0x50>)
20100542:	6011      	str	r1, [r2, #0]
20100544:	1dfa      	adds	r2, r7, #7
20100546:	7812      	ldrb	r2, [r2, #0]
20100548:	701a      	strb	r2, [r3, #0]
2010054a:	e009      	b.n	20100560 <xputc+0x48>
2010054c:	4b07      	ldr	r3, [pc, #28]	; (2010056c <xputc+0x54>)
2010054e:	681b      	ldr	r3, [r3, #0]
20100550:	2b00      	cmp	r3, #0
20100552:	d005      	beq.n	20100560 <xputc+0x48>
20100554:	4b05      	ldr	r3, [pc, #20]	; (2010056c <xputc+0x54>)
20100556:	681b      	ldr	r3, [r3, #0]
20100558:	1dfa      	adds	r2, r7, #7
2010055a:	7812      	ldrb	r2, [r2, #0]
2010055c:	0010      	movs	r0, r2
2010055e:	4798      	blx	r3
20100560:	46bd      	mov	sp, r7
20100562:	b002      	add	sp, #8
20100564:	bd80      	pop	{r7, pc}
20100566:	46c0      	nop			; (mov r8, r8)
20100568:	20000038 	.word	0x20000038
2010056c:	20000034 	.word	0x20000034

20100570 <xputs>:
20100570:	b580      	push	{r7, lr}
20100572:	b082      	sub	sp, #8
20100574:	af00      	add	r7, sp, #0
20100576:	6078      	str	r0, [r7, #4]
20100578:	e006      	b.n	20100588 <xputs+0x18>
2010057a:	687b      	ldr	r3, [r7, #4]
2010057c:	1c5a      	adds	r2, r3, #1
2010057e:	607a      	str	r2, [r7, #4]
20100580:	781b      	ldrb	r3, [r3, #0]
20100582:	0018      	movs	r0, r3
20100584:	f7ff ffc8 	bl	20100518 <xputc>
20100588:	687b      	ldr	r3, [r7, #4]
2010058a:	781b      	ldrb	r3, [r3, #0]
2010058c:	2b00      	cmp	r3, #0
2010058e:	d1f4      	bne.n	2010057a <xputs+0xa>
20100590:	46c0      	nop			; (mov r8, r8)
20100592:	46bd      	mov	sp, r7
20100594:	b002      	add	sp, #8
20100596:	bd80      	pop	{r7, pc}

20100598 <xfputs>:
20100598:	b580      	push	{r7, lr}
2010059a:	b084      	sub	sp, #16
2010059c:	af00      	add	r7, sp, #0
2010059e:	6078      	str	r0, [r7, #4]
201005a0:	6039      	str	r1, [r7, #0]
201005a2:	4b0c      	ldr	r3, [pc, #48]	; (201005d4 <xfputs+0x3c>)
201005a4:	681b      	ldr	r3, [r3, #0]
201005a6:	60fb      	str	r3, [r7, #12]
201005a8:	4b0a      	ldr	r3, [pc, #40]	; (201005d4 <xfputs+0x3c>)
201005aa:	687a      	ldr	r2, [r7, #4]
201005ac:	601a      	str	r2, [r3, #0]
201005ae:	e006      	b.n	201005be <xfputs+0x26>
201005b0:	683b      	ldr	r3, [r7, #0]
201005b2:	1c5a      	adds	r2, r3, #1
201005b4:	603a      	str	r2, [r7, #0]
201005b6:	781b      	ldrb	r3, [r3, #0]
201005b8:	0018      	movs	r0, r3
201005ba:	f7ff ffad 	bl	20100518 <xputc>
201005be:	683b      	ldr	r3, [r7, #0]
201005c0:	781b      	ldrb	r3, [r3, #0]
201005c2:	2b00      	cmp	r3, #0
201005c4:	d1f4      	bne.n	201005b0 <xfputs+0x18>
201005c6:	4b03      	ldr	r3, [pc, #12]	; (201005d4 <xfputs+0x3c>)
201005c8:	68fa      	ldr	r2, [r7, #12]
201005ca:	601a      	str	r2, [r3, #0]
201005cc:	46c0      	nop			; (mov r8, r8)
201005ce:	46bd      	mov	sp, r7
201005d0:	b004      	add	sp, #16
201005d2:	bd80      	pop	{r7, pc}
201005d4:	20000034 	.word	0x20000034

201005d8 <xvprintf>:
201005d8:	b580      	push	{r7, lr}
201005da:	b08e      	sub	sp, #56	; 0x38
201005dc:	af00      	add	r7, sp, #0
201005de:	6078      	str	r0, [r7, #4]
201005e0:	6039      	str	r1, [r7, #0]
201005e2:	687b      	ldr	r3, [r7, #4]
201005e4:	1c5a      	adds	r2, r3, #1
201005e6:	607a      	str	r2, [r7, #4]
201005e8:	221f      	movs	r2, #31
201005ea:	18ba      	adds	r2, r7, r2
201005ec:	781b      	ldrb	r3, [r3, #0]
201005ee:	7013      	strb	r3, [r2, #0]
201005f0:	231f      	movs	r3, #31
201005f2:	18fb      	adds	r3, r7, r3
201005f4:	781b      	ldrb	r3, [r3, #0]
201005f6:	2b00      	cmp	r3, #0
201005f8:	d100      	bne.n	201005fc <xvprintf+0x24>
201005fa:	e172      	b.n	201008e2 <xvprintf+0x30a>
201005fc:	231f      	movs	r3, #31
201005fe:	18fb      	adds	r3, r7, r3
20100600:	781b      	ldrb	r3, [r3, #0]
20100602:	2b25      	cmp	r3, #37	; 0x25
20100604:	d006      	beq.n	20100614 <xvprintf+0x3c>
20100606:	231f      	movs	r3, #31
20100608:	18fb      	adds	r3, r7, r3
2010060a:	781b      	ldrb	r3, [r3, #0]
2010060c:	0018      	movs	r0, r3
2010060e:	f7ff ff83 	bl	20100518 <xputc>
20100612:	e165      	b.n	201008e0 <xvprintf+0x308>
20100614:	2300      	movs	r3, #0
20100616:	627b      	str	r3, [r7, #36]	; 0x24
20100618:	687b      	ldr	r3, [r7, #4]
2010061a:	1c5a      	adds	r2, r3, #1
2010061c:	607a      	str	r2, [r7, #4]
2010061e:	221f      	movs	r2, #31
20100620:	18ba      	adds	r2, r7, r2
20100622:	781b      	ldrb	r3, [r3, #0]
20100624:	7013      	strb	r3, [r2, #0]
20100626:	231f      	movs	r3, #31
20100628:	18fb      	adds	r3, r7, r3
2010062a:	781b      	ldrb	r3, [r3, #0]
2010062c:	2b30      	cmp	r3, #48	; 0x30
2010062e:	d109      	bne.n	20100644 <xvprintf+0x6c>
20100630:	2301      	movs	r3, #1
20100632:	627b      	str	r3, [r7, #36]	; 0x24
20100634:	687b      	ldr	r3, [r7, #4]
20100636:	1c5a      	adds	r2, r3, #1
20100638:	607a      	str	r2, [r7, #4]
2010063a:	221f      	movs	r2, #31
2010063c:	18ba      	adds	r2, r7, r2
2010063e:	781b      	ldrb	r3, [r3, #0]
20100640:	7013      	strb	r3, [r2, #0]
20100642:	e00d      	b.n	20100660 <xvprintf+0x88>
20100644:	231f      	movs	r3, #31
20100646:	18fb      	adds	r3, r7, r3
20100648:	781b      	ldrb	r3, [r3, #0]
2010064a:	2b2d      	cmp	r3, #45	; 0x2d
2010064c:	d108      	bne.n	20100660 <xvprintf+0x88>
2010064e:	2302      	movs	r3, #2
20100650:	627b      	str	r3, [r7, #36]	; 0x24
20100652:	687b      	ldr	r3, [r7, #4]
20100654:	1c5a      	adds	r2, r3, #1
20100656:	607a      	str	r2, [r7, #4]
20100658:	221f      	movs	r2, #31
2010065a:	18ba      	adds	r2, r7, r2
2010065c:	781b      	ldrb	r3, [r3, #0]
2010065e:	7013      	strb	r3, [r2, #0]
20100660:	2300      	movs	r3, #0
20100662:	62bb      	str	r3, [r7, #40]	; 0x28
20100664:	e012      	b.n	2010068c <xvprintf+0xb4>
20100666:	6aba      	ldr	r2, [r7, #40]	; 0x28
20100668:	0013      	movs	r3, r2
2010066a:	009b      	lsls	r3, r3, #2
2010066c:	189b      	adds	r3, r3, r2
2010066e:	005b      	lsls	r3, r3, #1
20100670:	001a      	movs	r2, r3
20100672:	231f      	movs	r3, #31
20100674:	18fb      	adds	r3, r7, r3
20100676:	781b      	ldrb	r3, [r3, #0]
20100678:	18d3      	adds	r3, r2, r3
2010067a:	3b30      	subs	r3, #48	; 0x30
2010067c:	62bb      	str	r3, [r7, #40]	; 0x28
2010067e:	687b      	ldr	r3, [r7, #4]
20100680:	1c5a      	adds	r2, r3, #1
20100682:	607a      	str	r2, [r7, #4]
20100684:	221f      	movs	r2, #31
20100686:	18ba      	adds	r2, r7, r2
20100688:	781b      	ldrb	r3, [r3, #0]
2010068a:	7013      	strb	r3, [r2, #0]
2010068c:	231f      	movs	r3, #31
2010068e:	18fb      	adds	r3, r7, r3
20100690:	781b      	ldrb	r3, [r3, #0]
20100692:	2b2f      	cmp	r3, #47	; 0x2f
20100694:	d904      	bls.n	201006a0 <xvprintf+0xc8>
20100696:	231f      	movs	r3, #31
20100698:	18fb      	adds	r3, r7, r3
2010069a:	781b      	ldrb	r3, [r3, #0]
2010069c:	2b39      	cmp	r3, #57	; 0x39
2010069e:	d9e2      	bls.n	20100666 <xvprintf+0x8e>
201006a0:	231f      	movs	r3, #31
201006a2:	18fb      	adds	r3, r7, r3
201006a4:	781b      	ldrb	r3, [r3, #0]
201006a6:	2b6c      	cmp	r3, #108	; 0x6c
201006a8:	d004      	beq.n	201006b4 <xvprintf+0xdc>
201006aa:	231f      	movs	r3, #31
201006ac:	18fb      	adds	r3, r7, r3
201006ae:	781b      	ldrb	r3, [r3, #0]
201006b0:	2b4c      	cmp	r3, #76	; 0x4c
201006b2:	d10a      	bne.n	201006ca <xvprintf+0xf2>
201006b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
201006b6:	2204      	movs	r2, #4
201006b8:	4313      	orrs	r3, r2
201006ba:	627b      	str	r3, [r7, #36]	; 0x24
201006bc:	687b      	ldr	r3, [r7, #4]
201006be:	1c5a      	adds	r2, r3, #1
201006c0:	607a      	str	r2, [r7, #4]
201006c2:	221f      	movs	r2, #31
201006c4:	18ba      	adds	r2, r7, r2
201006c6:	781b      	ldrb	r3, [r3, #0]
201006c8:	7013      	strb	r3, [r2, #0]
201006ca:	231f      	movs	r3, #31
201006cc:	18fb      	adds	r3, r7, r3
201006ce:	781b      	ldrb	r3, [r3, #0]
201006d0:	2b00      	cmp	r3, #0
201006d2:	d100      	bne.n	201006d6 <xvprintf+0xfe>
201006d4:	e107      	b.n	201008e6 <xvprintf+0x30e>
201006d6:	231e      	movs	r3, #30
201006d8:	18fb      	adds	r3, r7, r3
201006da:	221f      	movs	r2, #31
201006dc:	18ba      	adds	r2, r7, r2
201006de:	7812      	ldrb	r2, [r2, #0]
201006e0:	701a      	strb	r2, [r3, #0]
201006e2:	231e      	movs	r3, #30
201006e4:	18fb      	adds	r3, r7, r3
201006e6:	781b      	ldrb	r3, [r3, #0]
201006e8:	2b60      	cmp	r3, #96	; 0x60
201006ea:	d906      	bls.n	201006fa <xvprintf+0x122>
201006ec:	231e      	movs	r3, #30
201006ee:	18fb      	adds	r3, r7, r3
201006f0:	221e      	movs	r2, #30
201006f2:	18ba      	adds	r2, r7, r2
201006f4:	7812      	ldrb	r2, [r2, #0]
201006f6:	3a20      	subs	r2, #32
201006f8:	701a      	strb	r2, [r3, #0]
201006fa:	231e      	movs	r3, #30
201006fc:	18fb      	adds	r3, r7, r3
201006fe:	781b      	ldrb	r3, [r3, #0]
20100700:	3b42      	subs	r3, #66	; 0x42
20100702:	2b16      	cmp	r3, #22
20100704:	d847      	bhi.n	20100796 <xvprintf+0x1be>
20100706:	009a      	lsls	r2, r3, #2
20100708:	4b79      	ldr	r3, [pc, #484]	; (201008f0 <xvprintf+0x318>)
2010070a:	18d3      	adds	r3, r2, r3
2010070c:	681b      	ldr	r3, [r3, #0]
2010070e:	469f      	mov	pc, r3
20100710:	683b      	ldr	r3, [r7, #0]
20100712:	1d1a      	adds	r2, r3, #4
20100714:	603a      	str	r2, [r7, #0]
20100716:	681b      	ldr	r3, [r3, #0]
20100718:	61bb      	str	r3, [r7, #24]
2010071a:	2300      	movs	r3, #0
2010071c:	62fb      	str	r3, [r7, #44]	; 0x2c
2010071e:	e002      	b.n	20100726 <xvprintf+0x14e>
20100720:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20100722:	3301      	adds	r3, #1
20100724:	62fb      	str	r3, [r7, #44]	; 0x2c
20100726:	69ba      	ldr	r2, [r7, #24]
20100728:	6afb      	ldr	r3, [r7, #44]	; 0x2c
2010072a:	18d3      	adds	r3, r2, r3
2010072c:	781b      	ldrb	r3, [r3, #0]
2010072e:	2b00      	cmp	r3, #0
20100730:	d1f6      	bne.n	20100720 <xvprintf+0x148>
20100732:	e002      	b.n	2010073a <xvprintf+0x162>
20100734:	2020      	movs	r0, #32
20100736:	f7ff feef 	bl	20100518 <xputc>
2010073a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2010073c:	2202      	movs	r2, #2
2010073e:	4013      	ands	r3, r2
20100740:	d105      	bne.n	2010074e <xvprintf+0x176>
20100742:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20100744:	1c5a      	adds	r2, r3, #1
20100746:	62fa      	str	r2, [r7, #44]	; 0x2c
20100748:	6aba      	ldr	r2, [r7, #40]	; 0x28
2010074a:	4293      	cmp	r3, r2
2010074c:	d3f2      	bcc.n	20100734 <xvprintf+0x15c>
2010074e:	69bb      	ldr	r3, [r7, #24]
20100750:	0018      	movs	r0, r3
20100752:	f7ff ff0d 	bl	20100570 <xputs>
20100756:	e002      	b.n	2010075e <xvprintf+0x186>
20100758:	2020      	movs	r0, #32
2010075a:	f7ff fedd 	bl	20100518 <xputc>
2010075e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20100760:	1c5a      	adds	r2, r3, #1
20100762:	62fa      	str	r2, [r7, #44]	; 0x2c
20100764:	6aba      	ldr	r2, [r7, #40]	; 0x28
20100766:	4293      	cmp	r3, r2
20100768:	d3f6      	bcc.n	20100758 <xvprintf+0x180>
2010076a:	e0b9      	b.n	201008e0 <xvprintf+0x308>
2010076c:	683b      	ldr	r3, [r7, #0]
2010076e:	1d1a      	adds	r2, r3, #4
20100770:	603a      	str	r2, [r7, #0]
20100772:	681b      	ldr	r3, [r3, #0]
20100774:	b2db      	uxtb	r3, r3
20100776:	0018      	movs	r0, r3
20100778:	f7ff fece 	bl	20100518 <xputc>
2010077c:	e0b0      	b.n	201008e0 <xvprintf+0x308>
2010077e:	2302      	movs	r3, #2
20100780:	637b      	str	r3, [r7, #52]	; 0x34
20100782:	e00f      	b.n	201007a4 <xvprintf+0x1cc>
20100784:	2308      	movs	r3, #8
20100786:	637b      	str	r3, [r7, #52]	; 0x34
20100788:	e00c      	b.n	201007a4 <xvprintf+0x1cc>
2010078a:	230a      	movs	r3, #10
2010078c:	637b      	str	r3, [r7, #52]	; 0x34
2010078e:	e009      	b.n	201007a4 <xvprintf+0x1cc>
20100790:	2310      	movs	r3, #16
20100792:	637b      	str	r3, [r7, #52]	; 0x34
20100794:	e006      	b.n	201007a4 <xvprintf+0x1cc>
20100796:	231f      	movs	r3, #31
20100798:	18fb      	adds	r3, r7, r3
2010079a:	781b      	ldrb	r3, [r3, #0]
2010079c:	0018      	movs	r0, r3
2010079e:	f7ff febb 	bl	20100518 <xputc>
201007a2:	e09d      	b.n	201008e0 <xvprintf+0x308>
201007a4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
201007a6:	2204      	movs	r2, #4
201007a8:	4013      	ands	r3, r2
201007aa:	d004      	beq.n	201007b6 <xvprintf+0x1de>
201007ac:	683b      	ldr	r3, [r7, #0]
201007ae:	1d1a      	adds	r2, r3, #4
201007b0:	603a      	str	r2, [r7, #0]
201007b2:	681b      	ldr	r3, [r3, #0]
201007b4:	e00d      	b.n	201007d2 <xvprintf+0x1fa>
201007b6:	231e      	movs	r3, #30
201007b8:	18fb      	adds	r3, r7, r3
201007ba:	781b      	ldrb	r3, [r3, #0]
201007bc:	2b44      	cmp	r3, #68	; 0x44
201007be:	d104      	bne.n	201007ca <xvprintf+0x1f2>
201007c0:	683b      	ldr	r3, [r7, #0]
201007c2:	1d1a      	adds	r2, r3, #4
201007c4:	603a      	str	r2, [r7, #0]
201007c6:	681b      	ldr	r3, [r3, #0]
201007c8:	e003      	b.n	201007d2 <xvprintf+0x1fa>
201007ca:	683b      	ldr	r3, [r7, #0]
201007cc:	1d1a      	adds	r2, r3, #4
201007ce:	603a      	str	r2, [r7, #0]
201007d0:	681b      	ldr	r3, [r3, #0]
201007d2:	623b      	str	r3, [r7, #32]
201007d4:	231e      	movs	r3, #30
201007d6:	18fb      	adds	r3, r7, r3
201007d8:	781b      	ldrb	r3, [r3, #0]
201007da:	2b44      	cmp	r3, #68	; 0x44
201007dc:	d109      	bne.n	201007f2 <xvprintf+0x21a>
201007de:	6a3b      	ldr	r3, [r7, #32]
201007e0:	2b00      	cmp	r3, #0
201007e2:	da06      	bge.n	201007f2 <xvprintf+0x21a>
201007e4:	6a3b      	ldr	r3, [r7, #32]
201007e6:	425b      	negs	r3, r3
201007e8:	623b      	str	r3, [r7, #32]
201007ea:	6a7b      	ldr	r3, [r7, #36]	; 0x24
201007ec:	2208      	movs	r2, #8
201007ee:	4313      	orrs	r3, r2
201007f0:	627b      	str	r3, [r7, #36]	; 0x24
201007f2:	2300      	movs	r3, #0
201007f4:	633b      	str	r3, [r7, #48]	; 0x30
201007f6:	6a3b      	ldr	r3, [r7, #32]
201007f8:	6b79      	ldr	r1, [r7, #52]	; 0x34
201007fa:	0018      	movs	r0, r3
201007fc:	f001 f840 	bl	20101880 <__aeabi_uidivmod>
20100800:	000b      	movs	r3, r1
20100802:	001a      	movs	r2, r3
20100804:	231e      	movs	r3, #30
20100806:	18fb      	adds	r3, r7, r3
20100808:	701a      	strb	r2, [r3, #0]
2010080a:	6b79      	ldr	r1, [r7, #52]	; 0x34
2010080c:	6a38      	ldr	r0, [r7, #32]
2010080e:	f000 ffb1 	bl	20101774 <__aeabi_uidiv>
20100812:	0003      	movs	r3, r0
20100814:	623b      	str	r3, [r7, #32]
20100816:	231e      	movs	r3, #30
20100818:	18fb      	adds	r3, r7, r3
2010081a:	781b      	ldrb	r3, [r3, #0]
2010081c:	2b09      	cmp	r3, #9
2010081e:	d90e      	bls.n	2010083e <xvprintf+0x266>
20100820:	231f      	movs	r3, #31
20100822:	18fb      	adds	r3, r7, r3
20100824:	781b      	ldrb	r3, [r3, #0]
20100826:	2b78      	cmp	r3, #120	; 0x78
20100828:	d101      	bne.n	2010082e <xvprintf+0x256>
2010082a:	2327      	movs	r3, #39	; 0x27
2010082c:	e000      	b.n	20100830 <xvprintf+0x258>
2010082e:	2307      	movs	r3, #7
20100830:	221e      	movs	r2, #30
20100832:	18ba      	adds	r2, r7, r2
20100834:	211e      	movs	r1, #30
20100836:	1879      	adds	r1, r7, r1
20100838:	7809      	ldrb	r1, [r1, #0]
2010083a:	185b      	adds	r3, r3, r1
2010083c:	7013      	strb	r3, [r2, #0]
2010083e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
20100840:	1c5a      	adds	r2, r3, #1
20100842:	633a      	str	r2, [r7, #48]	; 0x30
20100844:	221e      	movs	r2, #30
20100846:	18ba      	adds	r2, r7, r2
20100848:	7812      	ldrb	r2, [r2, #0]
2010084a:	3230      	adds	r2, #48	; 0x30
2010084c:	b2d1      	uxtb	r1, r2
2010084e:	2208      	movs	r2, #8
20100850:	18ba      	adds	r2, r7, r2
20100852:	54d1      	strb	r1, [r2, r3]
20100854:	6a3b      	ldr	r3, [r7, #32]
20100856:	2b00      	cmp	r3, #0
20100858:	d002      	beq.n	20100860 <xvprintf+0x288>
2010085a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
2010085c:	2b0f      	cmp	r3, #15
2010085e:	d9ca      	bls.n	201007f6 <xvprintf+0x21e>
20100860:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20100862:	2208      	movs	r2, #8
20100864:	4013      	ands	r3, r2
20100866:	d006      	beq.n	20100876 <xvprintf+0x29e>
20100868:	6b3b      	ldr	r3, [r7, #48]	; 0x30
2010086a:	1c5a      	adds	r2, r3, #1
2010086c:	633a      	str	r2, [r7, #48]	; 0x30
2010086e:	2208      	movs	r2, #8
20100870:	18ba      	adds	r2, r7, r2
20100872:	212d      	movs	r1, #45	; 0x2d
20100874:	54d1      	strb	r1, [r2, r3]
20100876:	6b3b      	ldr	r3, [r7, #48]	; 0x30
20100878:	62fb      	str	r3, [r7, #44]	; 0x2c
2010087a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2010087c:	2201      	movs	r2, #1
2010087e:	4013      	ands	r3, r2
20100880:	d001      	beq.n	20100886 <xvprintf+0x2ae>
20100882:	2230      	movs	r2, #48	; 0x30
20100884:	e000      	b.n	20100888 <xvprintf+0x2b0>
20100886:	2220      	movs	r2, #32
20100888:	231e      	movs	r3, #30
2010088a:	18fb      	adds	r3, r7, r3
2010088c:	701a      	strb	r2, [r3, #0]
2010088e:	e005      	b.n	2010089c <xvprintf+0x2c4>
20100890:	231e      	movs	r3, #30
20100892:	18fb      	adds	r3, r7, r3
20100894:	781b      	ldrb	r3, [r3, #0]
20100896:	0018      	movs	r0, r3
20100898:	f7ff fe3e 	bl	20100518 <xputc>
2010089c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
2010089e:	2202      	movs	r2, #2
201008a0:	4013      	ands	r3, r2
201008a2:	d105      	bne.n	201008b0 <xvprintf+0x2d8>
201008a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
201008a6:	1c5a      	adds	r2, r3, #1
201008a8:	62fa      	str	r2, [r7, #44]	; 0x2c
201008aa:	6aba      	ldr	r2, [r7, #40]	; 0x28
201008ac:	4293      	cmp	r3, r2
201008ae:	d3ef      	bcc.n	20100890 <xvprintf+0x2b8>
201008b0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
201008b2:	3b01      	subs	r3, #1
201008b4:	633b      	str	r3, [r7, #48]	; 0x30
201008b6:	2308      	movs	r3, #8
201008b8:	18fa      	adds	r2, r7, r3
201008ba:	6b3b      	ldr	r3, [r7, #48]	; 0x30
201008bc:	18d3      	adds	r3, r2, r3
201008be:	781b      	ldrb	r3, [r3, #0]
201008c0:	0018      	movs	r0, r3
201008c2:	f7ff fe29 	bl	20100518 <xputc>
201008c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
201008c8:	2b00      	cmp	r3, #0
201008ca:	d1f1      	bne.n	201008b0 <xvprintf+0x2d8>
201008cc:	e002      	b.n	201008d4 <xvprintf+0x2fc>
201008ce:	2020      	movs	r0, #32
201008d0:	f7ff fe22 	bl	20100518 <xputc>
201008d4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
201008d6:	1c5a      	adds	r2, r3, #1
201008d8:	62fa      	str	r2, [r7, #44]	; 0x2c
201008da:	6aba      	ldr	r2, [r7, #40]	; 0x28
201008dc:	4293      	cmp	r3, r2
201008de:	d3f6      	bcc.n	201008ce <xvprintf+0x2f6>
201008e0:	e67f      	b.n	201005e2 <xvprintf+0xa>
201008e2:	46c0      	nop			; (mov r8, r8)
201008e4:	e000      	b.n	201008e8 <xvprintf+0x310>
201008e6:	46c0      	nop			; (mov r8, r8)
201008e8:	46c0      	nop			; (mov r8, r8)
201008ea:	46bd      	mov	sp, r7
201008ec:	b00e      	add	sp, #56	; 0x38
201008ee:	bd80      	pop	{r7, pc}
201008f0:	201018b0 	.word	0x201018b0

201008f4 <xprintf>:
201008f4:	b40f      	push	{r0, r1, r2, r3}
201008f6:	b580      	push	{r7, lr}
201008f8:	b082      	sub	sp, #8
201008fa:	af00      	add	r7, sp, #0
201008fc:	2314      	movs	r3, #20
201008fe:	18fb      	adds	r3, r7, r3
20100900:	607b      	str	r3, [r7, #4]
20100902:	687a      	ldr	r2, [r7, #4]
20100904:	693b      	ldr	r3, [r7, #16]
20100906:	0011      	movs	r1, r2
20100908:	0018      	movs	r0, r3
2010090a:	f7ff fe65 	bl	201005d8 <xvprintf>
2010090e:	46c0      	nop			; (mov r8, r8)
20100910:	46bd      	mov	sp, r7
20100912:	b002      	add	sp, #8
20100914:	bc80      	pop	{r7}
20100916:	bc08      	pop	{r3}
20100918:	b004      	add	sp, #16
2010091a:	4718      	bx	r3

2010091c <xsprintf>:
2010091c:	b40e      	push	{r1, r2, r3}
2010091e:	b580      	push	{r7, lr}
20100920:	b085      	sub	sp, #20
20100922:	af00      	add	r7, sp, #0
20100924:	6078      	str	r0, [r7, #4]
20100926:	4b0d      	ldr	r3, [pc, #52]	; (2010095c <xsprintf+0x40>)
20100928:	687a      	ldr	r2, [r7, #4]
2010092a:	601a      	str	r2, [r3, #0]
2010092c:	2320      	movs	r3, #32
2010092e:	18fb      	adds	r3, r7, r3
20100930:	60fb      	str	r3, [r7, #12]
20100932:	68fa      	ldr	r2, [r7, #12]
20100934:	69fb      	ldr	r3, [r7, #28]
20100936:	0011      	movs	r1, r2
20100938:	0018      	movs	r0, r3
2010093a:	f7ff fe4d 	bl	201005d8 <xvprintf>
2010093e:	4b07      	ldr	r3, [pc, #28]	; (2010095c <xsprintf+0x40>)
20100940:	681b      	ldr	r3, [r3, #0]
20100942:	2200      	movs	r2, #0
20100944:	701a      	strb	r2, [r3, #0]
20100946:	4b05      	ldr	r3, [pc, #20]	; (2010095c <xsprintf+0x40>)
20100948:	2200      	movs	r2, #0
2010094a:	601a      	str	r2, [r3, #0]
2010094c:	46c0      	nop			; (mov r8, r8)
2010094e:	46bd      	mov	sp, r7
20100950:	b005      	add	sp, #20
20100952:	bc80      	pop	{r7}
20100954:	bc08      	pop	{r3}
20100956:	b003      	add	sp, #12
20100958:	4718      	bx	r3
2010095a:	46c0      	nop			; (mov r8, r8)
2010095c:	20000038 	.word	0x20000038

20100960 <xfprintf>:
20100960:	b40e      	push	{r1, r2, r3}
20100962:	b580      	push	{r7, lr}
20100964:	b085      	sub	sp, #20
20100966:	af00      	add	r7, sp, #0
20100968:	6078      	str	r0, [r7, #4]
2010096a:	4b0c      	ldr	r3, [pc, #48]	; (2010099c <xfprintf+0x3c>)
2010096c:	681b      	ldr	r3, [r3, #0]
2010096e:	60fb      	str	r3, [r7, #12]
20100970:	4b0a      	ldr	r3, [pc, #40]	; (2010099c <xfprintf+0x3c>)
20100972:	687a      	ldr	r2, [r7, #4]
20100974:	601a      	str	r2, [r3, #0]
20100976:	2320      	movs	r3, #32
20100978:	18fb      	adds	r3, r7, r3
2010097a:	60bb      	str	r3, [r7, #8]
2010097c:	68ba      	ldr	r2, [r7, #8]
2010097e:	69fb      	ldr	r3, [r7, #28]
20100980:	0011      	movs	r1, r2
20100982:	0018      	movs	r0, r3
20100984:	f7ff fe28 	bl	201005d8 <xvprintf>
20100988:	4b04      	ldr	r3, [pc, #16]	; (2010099c <xfprintf+0x3c>)
2010098a:	68fa      	ldr	r2, [r7, #12]
2010098c:	601a      	str	r2, [r3, #0]
2010098e:	46c0      	nop			; (mov r8, r8)
20100990:	46bd      	mov	sp, r7
20100992:	b005      	add	sp, #20
20100994:	bc80      	pop	{r7}
20100996:	bc08      	pop	{r3}
20100998:	b003      	add	sp, #12
2010099a:	4718      	bx	r3
2010099c:	20000034 	.word	0x20000034

201009a0 <put_dump>:
201009a0:	b580      	push	{r7, lr}
201009a2:	b088      	sub	sp, #32
201009a4:	af00      	add	r7, sp, #0
201009a6:	60f8      	str	r0, [r7, #12]
201009a8:	60b9      	str	r1, [r7, #8]
201009aa:	607a      	str	r2, [r7, #4]
201009ac:	603b      	str	r3, [r7, #0]
201009ae:	68ba      	ldr	r2, [r7, #8]
201009b0:	4b38      	ldr	r3, [pc, #224]	; (20100a94 <put_dump+0xf4>)
201009b2:	0011      	movs	r1, r2
201009b4:	0018      	movs	r0, r3
201009b6:	f7ff ff9d 	bl	201008f4 <xprintf>
201009ba:	683b      	ldr	r3, [r7, #0]
201009bc:	2b02      	cmp	r3, #2
201009be:	d03c      	beq.n	20100a3a <put_dump+0x9a>
201009c0:	2b04      	cmp	r3, #4
201009c2:	d04d      	beq.n	20100a60 <put_dump+0xc0>
201009c4:	2b01      	cmp	r3, #1
201009c6:	d15d      	bne.n	20100a84 <put_dump+0xe4>
201009c8:	68fb      	ldr	r3, [r7, #12]
201009ca:	613b      	str	r3, [r7, #16]
201009cc:	2300      	movs	r3, #0
201009ce:	61fb      	str	r3, [r7, #28]
201009d0:	e00c      	b.n	201009ec <put_dump+0x4c>
201009d2:	69fb      	ldr	r3, [r7, #28]
201009d4:	693a      	ldr	r2, [r7, #16]
201009d6:	18d3      	adds	r3, r2, r3
201009d8:	781b      	ldrb	r3, [r3, #0]
201009da:	001a      	movs	r2, r3
201009dc:	4b2e      	ldr	r3, [pc, #184]	; (20100a98 <put_dump+0xf8>)
201009de:	0011      	movs	r1, r2
201009e0:	0018      	movs	r0, r3
201009e2:	f7ff ff87 	bl	201008f4 <xprintf>
201009e6:	69fb      	ldr	r3, [r7, #28]
201009e8:	3301      	adds	r3, #1
201009ea:	61fb      	str	r3, [r7, #28]
201009ec:	69fa      	ldr	r2, [r7, #28]
201009ee:	687b      	ldr	r3, [r7, #4]
201009f0:	429a      	cmp	r2, r3
201009f2:	dbee      	blt.n	201009d2 <put_dump+0x32>
201009f4:	2020      	movs	r0, #32
201009f6:	f7ff fd8f 	bl	20100518 <xputc>
201009fa:	2300      	movs	r3, #0
201009fc:	61fb      	str	r3, [r7, #28]
201009fe:	e017      	b.n	20100a30 <put_dump+0x90>
20100a00:	69fb      	ldr	r3, [r7, #28]
20100a02:	693a      	ldr	r2, [r7, #16]
20100a04:	18d3      	adds	r3, r2, r3
20100a06:	781b      	ldrb	r3, [r3, #0]
20100a08:	2b1f      	cmp	r3, #31
20100a0a:	d90a      	bls.n	20100a22 <put_dump+0x82>
20100a0c:	69fb      	ldr	r3, [r7, #28]
20100a0e:	693a      	ldr	r2, [r7, #16]
20100a10:	18d3      	adds	r3, r2, r3
20100a12:	781b      	ldrb	r3, [r3, #0]
20100a14:	2b7e      	cmp	r3, #126	; 0x7e
20100a16:	d804      	bhi.n	20100a22 <put_dump+0x82>
20100a18:	69fb      	ldr	r3, [r7, #28]
20100a1a:	693a      	ldr	r2, [r7, #16]
20100a1c:	18d3      	adds	r3, r2, r3
20100a1e:	781b      	ldrb	r3, [r3, #0]
20100a20:	e000      	b.n	20100a24 <put_dump+0x84>
20100a22:	232e      	movs	r3, #46	; 0x2e
20100a24:	0018      	movs	r0, r3
20100a26:	f7ff fd77 	bl	20100518 <xputc>
20100a2a:	69fb      	ldr	r3, [r7, #28]
20100a2c:	3301      	adds	r3, #1
20100a2e:	61fb      	str	r3, [r7, #28]
20100a30:	69fa      	ldr	r2, [r7, #28]
20100a32:	687b      	ldr	r3, [r7, #4]
20100a34:	429a      	cmp	r2, r3
20100a36:	dbe3      	blt.n	20100a00 <put_dump+0x60>
20100a38:	e024      	b.n	20100a84 <put_dump+0xe4>
20100a3a:	68fb      	ldr	r3, [r7, #12]
20100a3c:	61bb      	str	r3, [r7, #24]
20100a3e:	69bb      	ldr	r3, [r7, #24]
20100a40:	1c9a      	adds	r2, r3, #2
20100a42:	61ba      	str	r2, [r7, #24]
20100a44:	881b      	ldrh	r3, [r3, #0]
20100a46:	001a      	movs	r2, r3
20100a48:	4b14      	ldr	r3, [pc, #80]	; (20100a9c <put_dump+0xfc>)
20100a4a:	0011      	movs	r1, r2
20100a4c:	0018      	movs	r0, r3
20100a4e:	f7ff ff51 	bl	201008f4 <xprintf>
20100a52:	687b      	ldr	r3, [r7, #4]
20100a54:	3b01      	subs	r3, #1
20100a56:	607b      	str	r3, [r7, #4]
20100a58:	687b      	ldr	r3, [r7, #4]
20100a5a:	2b00      	cmp	r3, #0
20100a5c:	d1ef      	bne.n	20100a3e <put_dump+0x9e>
20100a5e:	e011      	b.n	20100a84 <put_dump+0xe4>
20100a60:	68fb      	ldr	r3, [r7, #12]
20100a62:	617b      	str	r3, [r7, #20]
20100a64:	697b      	ldr	r3, [r7, #20]
20100a66:	1d1a      	adds	r2, r3, #4
20100a68:	617a      	str	r2, [r7, #20]
20100a6a:	681a      	ldr	r2, [r3, #0]
20100a6c:	4b0c      	ldr	r3, [pc, #48]	; (20100aa0 <put_dump+0x100>)
20100a6e:	0011      	movs	r1, r2
20100a70:	0018      	movs	r0, r3
20100a72:	f7ff ff3f 	bl	201008f4 <xprintf>
20100a76:	687b      	ldr	r3, [r7, #4]
20100a78:	3b01      	subs	r3, #1
20100a7a:	607b      	str	r3, [r7, #4]
20100a7c:	687b      	ldr	r3, [r7, #4]
20100a7e:	2b00      	cmp	r3, #0
20100a80:	d1f0      	bne.n	20100a64 <put_dump+0xc4>
20100a82:	46c0      	nop			; (mov r8, r8)
20100a84:	200a      	movs	r0, #10
20100a86:	f7ff fd47 	bl	20100518 <xputc>
20100a8a:	46c0      	nop			; (mov r8, r8)
20100a8c:	46bd      	mov	sp, r7
20100a8e:	b008      	add	sp, #32
20100a90:	bd80      	pop	{r7, pc}
20100a92:	46c0      	nop			; (mov r8, r8)
20100a94:	2010190c 	.word	0x2010190c
20100a98:	20101914 	.word	0x20101914
20100a9c:	2010191c 	.word	0x2010191c
20100aa0:	20101924 	.word	0x20101924

20100aa4 <xgets>:
20100aa4:	b580      	push	{r7, lr}
20100aa6:	b084      	sub	sp, #16
20100aa8:	af00      	add	r7, sp, #0
20100aaa:	6078      	str	r0, [r7, #4]
20100aac:	6039      	str	r1, [r7, #0]
20100aae:	4b24      	ldr	r3, [pc, #144]	; (20100b40 <xgets+0x9c>)
20100ab0:	681b      	ldr	r3, [r3, #0]
20100ab2:	2b00      	cmp	r3, #0
20100ab4:	d101      	bne.n	20100aba <xgets+0x16>
20100ab6:	2300      	movs	r3, #0
20100ab8:	e03e      	b.n	20100b38 <xgets+0x94>
20100aba:	2300      	movs	r3, #0
20100abc:	60fb      	str	r3, [r7, #12]
20100abe:	4b20      	ldr	r3, [pc, #128]	; (20100b40 <xgets+0x9c>)
20100ac0:	681b      	ldr	r3, [r3, #0]
20100ac2:	4798      	blx	r3
20100ac4:	0003      	movs	r3, r0
20100ac6:	60bb      	str	r3, [r7, #8]
20100ac8:	68bb      	ldr	r3, [r7, #8]
20100aca:	2b00      	cmp	r3, #0
20100acc:	d101      	bne.n	20100ad2 <xgets+0x2e>
20100ace:	2300      	movs	r3, #0
20100ad0:	e032      	b.n	20100b38 <xgets+0x94>
20100ad2:	68bb      	ldr	r3, [r7, #8]
20100ad4:	2b0d      	cmp	r3, #13
20100ad6:	d025      	beq.n	20100b24 <xgets+0x80>
20100ad8:	68bb      	ldr	r3, [r7, #8]
20100ada:	2b08      	cmp	r3, #8
20100adc:	d10b      	bne.n	20100af6 <xgets+0x52>
20100ade:	68fb      	ldr	r3, [r7, #12]
20100ae0:	2b00      	cmp	r3, #0
20100ae2:	d008      	beq.n	20100af6 <xgets+0x52>
20100ae4:	68fb      	ldr	r3, [r7, #12]
20100ae6:	3b01      	subs	r3, #1
20100ae8:	60fb      	str	r3, [r7, #12]
20100aea:	68bb      	ldr	r3, [r7, #8]
20100aec:	b2db      	uxtb	r3, r3
20100aee:	0018      	movs	r0, r3
20100af0:	f7ff fd12 	bl	20100518 <xputc>
20100af4:	e015      	b.n	20100b22 <xgets+0x7e>
20100af6:	68bb      	ldr	r3, [r7, #8]
20100af8:	2b1f      	cmp	r3, #31
20100afa:	dde0      	ble.n	20100abe <xgets+0x1a>
20100afc:	683b      	ldr	r3, [r7, #0]
20100afe:	1e5a      	subs	r2, r3, #1
20100b00:	68fb      	ldr	r3, [r7, #12]
20100b02:	429a      	cmp	r2, r3
20100b04:	dddb      	ble.n	20100abe <xgets+0x1a>
20100b06:	68fb      	ldr	r3, [r7, #12]
20100b08:	1c5a      	adds	r2, r3, #1
20100b0a:	60fa      	str	r2, [r7, #12]
20100b0c:	001a      	movs	r2, r3
20100b0e:	687b      	ldr	r3, [r7, #4]
20100b10:	189b      	adds	r3, r3, r2
20100b12:	68ba      	ldr	r2, [r7, #8]
20100b14:	b2d2      	uxtb	r2, r2
20100b16:	701a      	strb	r2, [r3, #0]
20100b18:	68bb      	ldr	r3, [r7, #8]
20100b1a:	b2db      	uxtb	r3, r3
20100b1c:	0018      	movs	r0, r3
20100b1e:	f7ff fcfb 	bl	20100518 <xputc>
20100b22:	e7cc      	b.n	20100abe <xgets+0x1a>
20100b24:	46c0      	nop			; (mov r8, r8)
20100b26:	68fb      	ldr	r3, [r7, #12]
20100b28:	687a      	ldr	r2, [r7, #4]
20100b2a:	18d3      	adds	r3, r2, r3
20100b2c:	2200      	movs	r2, #0
20100b2e:	701a      	strb	r2, [r3, #0]
20100b30:	200a      	movs	r0, #10
20100b32:	f7ff fcf1 	bl	20100518 <xputc>
20100b36:	2301      	movs	r3, #1
20100b38:	0018      	movs	r0, r3
20100b3a:	46bd      	mov	sp, r7
20100b3c:	b004      	add	sp, #16
20100b3e:	bd80      	pop	{r7, pc}
20100b40:	2000003c 	.word	0x2000003c

20100b44 <xfgets>:
20100b44:	b580      	push	{r7, lr}
20100b46:	b086      	sub	sp, #24
20100b48:	af00      	add	r7, sp, #0
20100b4a:	60f8      	str	r0, [r7, #12]
20100b4c:	60b9      	str	r1, [r7, #8]
20100b4e:	607a      	str	r2, [r7, #4]
20100b50:	4b0a      	ldr	r3, [pc, #40]	; (20100b7c <xfgets+0x38>)
20100b52:	681b      	ldr	r3, [r3, #0]
20100b54:	617b      	str	r3, [r7, #20]
20100b56:	4b09      	ldr	r3, [pc, #36]	; (20100b7c <xfgets+0x38>)
20100b58:	68fa      	ldr	r2, [r7, #12]
20100b5a:	601a      	str	r2, [r3, #0]
20100b5c:	687a      	ldr	r2, [r7, #4]
20100b5e:	68bb      	ldr	r3, [r7, #8]
20100b60:	0011      	movs	r1, r2
20100b62:	0018      	movs	r0, r3
20100b64:	f7ff ff9e 	bl	20100aa4 <xgets>
20100b68:	0003      	movs	r3, r0
20100b6a:	613b      	str	r3, [r7, #16]
20100b6c:	4b03      	ldr	r3, [pc, #12]	; (20100b7c <xfgets+0x38>)
20100b6e:	697a      	ldr	r2, [r7, #20]
20100b70:	601a      	str	r2, [r3, #0]
20100b72:	693b      	ldr	r3, [r7, #16]
20100b74:	0018      	movs	r0, r3
20100b76:	46bd      	mov	sp, r7
20100b78:	b006      	add	sp, #24
20100b7a:	bd80      	pop	{r7, pc}
20100b7c:	2000003c 	.word	0x2000003c

20100b80 <xatoi>:
20100b80:	b580      	push	{r7, lr}
20100b82:	b084      	sub	sp, #16
20100b84:	af00      	add	r7, sp, #0
20100b86:	6078      	str	r0, [r7, #4]
20100b88:	6039      	str	r1, [r7, #0]
20100b8a:	2309      	movs	r3, #9
20100b8c:	18fb      	adds	r3, r7, r3
20100b8e:	2200      	movs	r2, #0
20100b90:	701a      	strb	r2, [r3, #0]
20100b92:	683b      	ldr	r3, [r7, #0]
20100b94:	2200      	movs	r2, #0
20100b96:	601a      	str	r2, [r3, #0]
20100b98:	e004      	b.n	20100ba4 <xatoi+0x24>
20100b9a:	687b      	ldr	r3, [r7, #4]
20100b9c:	681b      	ldr	r3, [r3, #0]
20100b9e:	1c5a      	adds	r2, r3, #1
20100ba0:	687b      	ldr	r3, [r7, #4]
20100ba2:	601a      	str	r2, [r3, #0]
20100ba4:	687b      	ldr	r3, [r7, #4]
20100ba6:	681a      	ldr	r2, [r3, #0]
20100ba8:	230b      	movs	r3, #11
20100baa:	18fb      	adds	r3, r7, r3
20100bac:	7812      	ldrb	r2, [r2, #0]
20100bae:	701a      	strb	r2, [r3, #0]
20100bb0:	230b      	movs	r3, #11
20100bb2:	18fb      	adds	r3, r7, r3
20100bb4:	781b      	ldrb	r3, [r3, #0]
20100bb6:	2b20      	cmp	r3, #32
20100bb8:	d0ef      	beq.n	20100b9a <xatoi+0x1a>
20100bba:	230b      	movs	r3, #11
20100bbc:	18fb      	adds	r3, r7, r3
20100bbe:	781b      	ldrb	r3, [r3, #0]
20100bc0:	2b2d      	cmp	r3, #45	; 0x2d
20100bc2:	d10e      	bne.n	20100be2 <xatoi+0x62>
20100bc4:	2309      	movs	r3, #9
20100bc6:	18fb      	adds	r3, r7, r3
20100bc8:	2201      	movs	r2, #1
20100bca:	701a      	strb	r2, [r3, #0]
20100bcc:	687b      	ldr	r3, [r7, #4]
20100bce:	681b      	ldr	r3, [r3, #0]
20100bd0:	1c5a      	adds	r2, r3, #1
20100bd2:	687b      	ldr	r3, [r7, #4]
20100bd4:	601a      	str	r2, [r3, #0]
20100bd6:	687b      	ldr	r3, [r7, #4]
20100bd8:	681a      	ldr	r2, [r3, #0]
20100bda:	230b      	movs	r3, #11
20100bdc:	18fb      	adds	r3, r7, r3
20100bde:	7812      	ldrb	r2, [r2, #0]
20100be0:	701a      	strb	r2, [r3, #0]
20100be2:	230b      	movs	r3, #11
20100be4:	18fb      	adds	r3, r7, r3
20100be6:	781b      	ldrb	r3, [r3, #0]
20100be8:	2b30      	cmp	r3, #48	; 0x30
20100bea:	d149      	bne.n	20100c80 <xatoi+0x100>
20100bec:	687b      	ldr	r3, [r7, #4]
20100bee:	681b      	ldr	r3, [r3, #0]
20100bf0:	1c5a      	adds	r2, r3, #1
20100bf2:	687b      	ldr	r3, [r7, #4]
20100bf4:	601a      	str	r2, [r3, #0]
20100bf6:	687b      	ldr	r3, [r7, #4]
20100bf8:	681a      	ldr	r2, [r3, #0]
20100bfa:	230b      	movs	r3, #11
20100bfc:	18fb      	adds	r3, r7, r3
20100bfe:	7812      	ldrb	r2, [r2, #0]
20100c00:	701a      	strb	r2, [r3, #0]
20100c02:	230b      	movs	r3, #11
20100c04:	18fb      	adds	r3, r7, r3
20100c06:	781b      	ldrb	r3, [r3, #0]
20100c08:	2b62      	cmp	r3, #98	; 0x62
20100c0a:	d011      	beq.n	20100c30 <xatoi+0xb0>
20100c0c:	2b78      	cmp	r3, #120	; 0x78
20100c0e:	d11f      	bne.n	20100c50 <xatoi+0xd0>
20100c10:	230a      	movs	r3, #10
20100c12:	18fb      	adds	r3, r7, r3
20100c14:	2210      	movs	r2, #16
20100c16:	701a      	strb	r2, [r3, #0]
20100c18:	687b      	ldr	r3, [r7, #4]
20100c1a:	681b      	ldr	r3, [r3, #0]
20100c1c:	1c5a      	adds	r2, r3, #1
20100c1e:	687b      	ldr	r3, [r7, #4]
20100c20:	601a      	str	r2, [r3, #0]
20100c22:	687b      	ldr	r3, [r7, #4]
20100c24:	681a      	ldr	r2, [r3, #0]
20100c26:	230b      	movs	r3, #11
20100c28:	18fb      	adds	r3, r7, r3
20100c2a:	7812      	ldrb	r2, [r2, #0]
20100c2c:	701a      	strb	r2, [r3, #0]
20100c2e:	e037      	b.n	20100ca0 <xatoi+0x120>
20100c30:	230a      	movs	r3, #10
20100c32:	18fb      	adds	r3, r7, r3
20100c34:	2202      	movs	r2, #2
20100c36:	701a      	strb	r2, [r3, #0]
20100c38:	687b      	ldr	r3, [r7, #4]
20100c3a:	681b      	ldr	r3, [r3, #0]
20100c3c:	1c5a      	adds	r2, r3, #1
20100c3e:	687b      	ldr	r3, [r7, #4]
20100c40:	601a      	str	r2, [r3, #0]
20100c42:	687b      	ldr	r3, [r7, #4]
20100c44:	681a      	ldr	r2, [r3, #0]
20100c46:	230b      	movs	r3, #11
20100c48:	18fb      	adds	r3, r7, r3
20100c4a:	7812      	ldrb	r2, [r2, #0]
20100c4c:	701a      	strb	r2, [r3, #0]
20100c4e:	e027      	b.n	20100ca0 <xatoi+0x120>
20100c50:	230b      	movs	r3, #11
20100c52:	18fb      	adds	r3, r7, r3
20100c54:	781b      	ldrb	r3, [r3, #0]
20100c56:	2b20      	cmp	r3, #32
20100c58:	d801      	bhi.n	20100c5e <xatoi+0xde>
20100c5a:	2301      	movs	r3, #1
20100c5c:	e079      	b.n	20100d52 <xatoi+0x1d2>
20100c5e:	230b      	movs	r3, #11
20100c60:	18fb      	adds	r3, r7, r3
20100c62:	781b      	ldrb	r3, [r3, #0]
20100c64:	2b2f      	cmp	r3, #47	; 0x2f
20100c66:	d904      	bls.n	20100c72 <xatoi+0xf2>
20100c68:	230b      	movs	r3, #11
20100c6a:	18fb      	adds	r3, r7, r3
20100c6c:	781b      	ldrb	r3, [r3, #0]
20100c6e:	2b39      	cmp	r3, #57	; 0x39
20100c70:	d901      	bls.n	20100c76 <xatoi+0xf6>
20100c72:	2300      	movs	r3, #0
20100c74:	e06d      	b.n	20100d52 <xatoi+0x1d2>
20100c76:	230a      	movs	r3, #10
20100c78:	18fb      	adds	r3, r7, r3
20100c7a:	2208      	movs	r2, #8
20100c7c:	701a      	strb	r2, [r3, #0]
20100c7e:	e00f      	b.n	20100ca0 <xatoi+0x120>
20100c80:	230b      	movs	r3, #11
20100c82:	18fb      	adds	r3, r7, r3
20100c84:	781b      	ldrb	r3, [r3, #0]
20100c86:	2b2f      	cmp	r3, #47	; 0x2f
20100c88:	d904      	bls.n	20100c94 <xatoi+0x114>
20100c8a:	230b      	movs	r3, #11
20100c8c:	18fb      	adds	r3, r7, r3
20100c8e:	781b      	ldrb	r3, [r3, #0]
20100c90:	2b39      	cmp	r3, #57	; 0x39
20100c92:	d901      	bls.n	20100c98 <xatoi+0x118>
20100c94:	2300      	movs	r3, #0
20100c96:	e05c      	b.n	20100d52 <xatoi+0x1d2>
20100c98:	230a      	movs	r3, #10
20100c9a:	18fb      	adds	r3, r7, r3
20100c9c:	220a      	movs	r2, #10
20100c9e:	701a      	strb	r2, [r3, #0]
20100ca0:	2300      	movs	r3, #0
20100ca2:	60fb      	str	r3, [r7, #12]
20100ca4:	e044      	b.n	20100d30 <xatoi+0x1b0>
20100ca6:	230b      	movs	r3, #11
20100ca8:	18fb      	adds	r3, r7, r3
20100caa:	781b      	ldrb	r3, [r3, #0]
20100cac:	2b60      	cmp	r3, #96	; 0x60
20100cae:	d906      	bls.n	20100cbe <xatoi+0x13e>
20100cb0:	230b      	movs	r3, #11
20100cb2:	18fb      	adds	r3, r7, r3
20100cb4:	220b      	movs	r2, #11
20100cb6:	18ba      	adds	r2, r7, r2
20100cb8:	7812      	ldrb	r2, [r2, #0]
20100cba:	3a20      	subs	r2, #32
20100cbc:	701a      	strb	r2, [r3, #0]
20100cbe:	230b      	movs	r3, #11
20100cc0:	18fb      	adds	r3, r7, r3
20100cc2:	220b      	movs	r2, #11
20100cc4:	18ba      	adds	r2, r7, r2
20100cc6:	7812      	ldrb	r2, [r2, #0]
20100cc8:	3a30      	subs	r2, #48	; 0x30
20100cca:	701a      	strb	r2, [r3, #0]
20100ccc:	230b      	movs	r3, #11
20100cce:	18fb      	adds	r3, r7, r3
20100cd0:	781b      	ldrb	r3, [r3, #0]
20100cd2:	2b10      	cmp	r3, #16
20100cd4:	d90d      	bls.n	20100cf2 <xatoi+0x172>
20100cd6:	230b      	movs	r3, #11
20100cd8:	18fb      	adds	r3, r7, r3
20100cda:	220b      	movs	r2, #11
20100cdc:	18ba      	adds	r2, r7, r2
20100cde:	7812      	ldrb	r2, [r2, #0]
20100ce0:	3a07      	subs	r2, #7
20100ce2:	701a      	strb	r2, [r3, #0]
20100ce4:	230b      	movs	r3, #11
20100ce6:	18fb      	adds	r3, r7, r3
20100ce8:	781b      	ldrb	r3, [r3, #0]
20100cea:	2b09      	cmp	r3, #9
20100cec:	d801      	bhi.n	20100cf2 <xatoi+0x172>
20100cee:	2300      	movs	r3, #0
20100cf0:	e02f      	b.n	20100d52 <xatoi+0x1d2>
20100cf2:	230b      	movs	r3, #11
20100cf4:	18fa      	adds	r2, r7, r3
20100cf6:	230a      	movs	r3, #10
20100cf8:	18fb      	adds	r3, r7, r3
20100cfa:	7812      	ldrb	r2, [r2, #0]
20100cfc:	781b      	ldrb	r3, [r3, #0]
20100cfe:	429a      	cmp	r2, r3
20100d00:	d301      	bcc.n	20100d06 <xatoi+0x186>
20100d02:	2300      	movs	r3, #0
20100d04:	e025      	b.n	20100d52 <xatoi+0x1d2>
20100d06:	230a      	movs	r3, #10
20100d08:	18fb      	adds	r3, r7, r3
20100d0a:	781b      	ldrb	r3, [r3, #0]
20100d0c:	68fa      	ldr	r2, [r7, #12]
20100d0e:	435a      	muls	r2, r3
20100d10:	230b      	movs	r3, #11
20100d12:	18fb      	adds	r3, r7, r3
20100d14:	781b      	ldrb	r3, [r3, #0]
20100d16:	18d3      	adds	r3, r2, r3
20100d18:	60fb      	str	r3, [r7, #12]
20100d1a:	687b      	ldr	r3, [r7, #4]
20100d1c:	681b      	ldr	r3, [r3, #0]
20100d1e:	1c5a      	adds	r2, r3, #1
20100d20:	687b      	ldr	r3, [r7, #4]
20100d22:	601a      	str	r2, [r3, #0]
20100d24:	687b      	ldr	r3, [r7, #4]
20100d26:	681a      	ldr	r2, [r3, #0]
20100d28:	230b      	movs	r3, #11
20100d2a:	18fb      	adds	r3, r7, r3
20100d2c:	7812      	ldrb	r2, [r2, #0]
20100d2e:	701a      	strb	r2, [r3, #0]
20100d30:	230b      	movs	r3, #11
20100d32:	18fb      	adds	r3, r7, r3
20100d34:	781b      	ldrb	r3, [r3, #0]
20100d36:	2b20      	cmp	r3, #32
20100d38:	d8b5      	bhi.n	20100ca6 <xatoi+0x126>
20100d3a:	2309      	movs	r3, #9
20100d3c:	18fb      	adds	r3, r7, r3
20100d3e:	781b      	ldrb	r3, [r3, #0]
20100d40:	2b00      	cmp	r3, #0
20100d42:	d002      	beq.n	20100d4a <xatoi+0x1ca>
20100d44:	68fb      	ldr	r3, [r7, #12]
20100d46:	425b      	negs	r3, r3
20100d48:	60fb      	str	r3, [r7, #12]
20100d4a:	68fa      	ldr	r2, [r7, #12]
20100d4c:	683b      	ldr	r3, [r7, #0]
20100d4e:	601a      	str	r2, [r3, #0]
20100d50:	2301      	movs	r3, #1
20100d52:	0018      	movs	r0, r3
20100d54:	46bd      	mov	sp, r7
20100d56:	b004      	add	sp, #16
20100d58:	bd80      	pop	{r7, pc}
20100d5a:	46c0      	nop			; (mov r8, r8)

20100d5c <usb_device_init>:
20100d5c:	b580      	push	{r7, lr}
20100d5e:	af00      	add	r7, sp, #0
20100d60:	4b1a      	ldr	r3, [pc, #104]	; (20100dcc <usb_device_init+0x70>)
20100d62:	4a1a      	ldr	r2, [pc, #104]	; (20100dcc <usb_device_init+0x70>)
20100d64:	69d2      	ldr	r2, [r2, #28]
20100d66:	2104      	movs	r1, #4
20100d68:	430a      	orrs	r2, r1
20100d6a:	61da      	str	r2, [r3, #28]
20100d6c:	4b17      	ldr	r3, [pc, #92]	; (20100dcc <usb_device_init+0x70>)
20100d6e:	2283      	movs	r2, #131	; 0x83
20100d70:	0052      	lsls	r2, r2, #1
20100d72:	611a      	str	r2, [r3, #16]
20100d74:	4b15      	ldr	r3, [pc, #84]	; (20100dcc <usb_device_init+0x70>)
20100d76:	4a15      	ldr	r2, [pc, #84]	; (20100dcc <usb_device_init+0x70>)
20100d78:	6852      	ldr	r2, [r2, #4]
20100d7a:	2151      	movs	r1, #81	; 0x51
20100d7c:	430a      	orrs	r2, r1
20100d7e:	605a      	str	r2, [r3, #4]
20100d80:	46c0      	nop			; (mov r8, r8)
20100d82:	4b12      	ldr	r3, [pc, #72]	; (20100dcc <usb_device_init+0x70>)
20100d84:	681b      	ldr	r3, [r3, #0]
20100d86:	2201      	movs	r2, #1
20100d88:	4013      	ands	r3, r2
20100d8a:	d0fa      	beq.n	20100d82 <usb_device_init+0x26>
20100d8c:	4910      	ldr	r1, [pc, #64]	; (20100dd0 <usb_device_init+0x74>)
20100d8e:	4a10      	ldr	r2, [pc, #64]	; (20100dd0 <usb_device_init+0x74>)
20100d90:	23e0      	movs	r3, #224	; 0xe0
20100d92:	009b      	lsls	r3, r3, #2
20100d94:	58d3      	ldr	r3, [r2, r3]
20100d96:	2202      	movs	r2, #2
20100d98:	431a      	orrs	r2, r3
20100d9a:	23e0      	movs	r3, #224	; 0xe0
20100d9c:	009b      	lsls	r3, r3, #2
20100d9e:	50ca      	str	r2, [r1, r3]
20100da0:	2001      	movs	r0, #1
20100da2:	f7ff f981 	bl	201000a8 <sleep>
20100da6:	4a0a      	ldr	r2, [pc, #40]	; (20100dd0 <usb_device_init+0x74>)
20100da8:	23e0      	movs	r3, #224	; 0xe0
20100daa:	009b      	lsls	r3, r3, #2
20100dac:	211c      	movs	r1, #28
20100dae:	50d1      	str	r1, [r2, r3]
20100db0:	4907      	ldr	r1, [pc, #28]	; (20100dd0 <usb_device_init+0x74>)
20100db2:	4a07      	ldr	r2, [pc, #28]	; (20100dd0 <usb_device_init+0x74>)
20100db4:	23a0      	movs	r3, #160	; 0xa0
20100db6:	005b      	lsls	r3, r3, #1
20100db8:	58d3      	ldr	r3, [r2, r3]
20100dba:	2231      	movs	r2, #49	; 0x31
20100dbc:	431a      	orrs	r2, r3
20100dbe:	23a0      	movs	r3, #160	; 0xa0
20100dc0:	005b      	lsls	r3, r3, #1
20100dc2:	50ca      	str	r2, [r1, r3]
20100dc4:	46c0      	nop			; (mov r8, r8)
20100dc6:	46bd      	mov	sp, r7
20100dc8:	bd80      	pop	{r7, pc}
20100dca:	46c0      	nop			; (mov r8, r8)
20100dcc:	40020000 	.word	0x40020000
20100dd0:	40010000 	.word	0x40010000

20100dd4 <usb_reset>:
20100dd4:	b580      	push	{r7, lr}
20100dd6:	af00      	add	r7, sp, #0
20100dd8:	4b1a      	ldr	r3, [pc, #104]	; (20100e44 <usb_reset+0x70>)
20100dda:	2200      	movs	r2, #0
20100ddc:	601a      	str	r2, [r3, #0]
20100dde:	4a1a      	ldr	r2, [pc, #104]	; (20100e48 <usb_reset+0x74>)
20100de0:	2380      	movs	r3, #128	; 0x80
20100de2:	005b      	lsls	r3, r3, #1
20100de4:	2100      	movs	r1, #0
20100de6:	50d1      	str	r1, [r2, r3]
20100de8:	4a17      	ldr	r2, [pc, #92]	; (20100e48 <usb_reset+0x74>)
20100dea:	2388      	movs	r3, #136	; 0x88
20100dec:	005b      	lsls	r3, r3, #1
20100dee:	2100      	movs	r1, #0
20100df0:	50d1      	str	r1, [r2, r3]
20100df2:	4a15      	ldr	r2, [pc, #84]	; (20100e48 <usb_reset+0x74>)
20100df4:	2390      	movs	r3, #144	; 0x90
20100df6:	005b      	lsls	r3, r3, #1
20100df8:	2100      	movs	r1, #0
20100dfa:	50d1      	str	r1, [r2, r3]
20100dfc:	4a12      	ldr	r2, [pc, #72]	; (20100e48 <usb_reset+0x74>)
20100dfe:	2398      	movs	r3, #152	; 0x98
20100e00:	005b      	lsls	r3, r3, #1
20100e02:	2100      	movs	r1, #0
20100e04:	50d1      	str	r1, [r2, r3]
20100e06:	4910      	ldr	r1, [pc, #64]	; (20100e48 <usb_reset+0x74>)
20100e08:	4a0f      	ldr	r2, [pc, #60]	; (20100e48 <usb_reset+0x74>)
20100e0a:	2380      	movs	r3, #128	; 0x80
20100e0c:	005b      	lsls	r3, r3, #1
20100e0e:	58d3      	ldr	r3, [r2, r3]
20100e10:	2204      	movs	r2, #4
20100e12:	4393      	bics	r3, r2
20100e14:	001a      	movs	r2, r3
20100e16:	2380      	movs	r3, #128	; 0x80
20100e18:	005b      	lsls	r3, r3, #1
20100e1a:	50ca      	str	r2, [r1, r3]
20100e1c:	490a      	ldr	r1, [pc, #40]	; (20100e48 <usb_reset+0x74>)
20100e1e:	4a0a      	ldr	r2, [pc, #40]	; (20100e48 <usb_reset+0x74>)
20100e20:	2380      	movs	r3, #128	; 0x80
20100e22:	005b      	lsls	r3, r3, #1
20100e24:	58d3      	ldr	r3, [r2, r3]
20100e26:	2203      	movs	r2, #3
20100e28:	431a      	orrs	r2, r3
20100e2a:	2380      	movs	r3, #128	; 0x80
20100e2c:	005b      	lsls	r3, r3, #1
20100e2e:	50ca      	str	r2, [r1, r3]
20100e30:	4b06      	ldr	r3, [pc, #24]	; (20100e4c <usb_reset+0x78>)
20100e32:	4a07      	ldr	r2, [pc, #28]	; (20100e50 <usb_reset+0x7c>)
20100e34:	601a      	str	r2, [r3, #0]
20100e36:	4b07      	ldr	r3, [pc, #28]	; (20100e54 <usb_reset+0x80>)
20100e38:	4a07      	ldr	r2, [pc, #28]	; (20100e58 <usb_reset+0x84>)
20100e3a:	601a      	str	r2, [r3, #0]
20100e3c:	46c0      	nop			; (mov r8, r8)
20100e3e:	46bd      	mov	sp, r7
20100e40:	bd80      	pop	{r7, pc}
20100e42:	46c0      	nop			; (mov r8, r8)
20100e44:	20000050 	.word	0x20000050
20100e48:	40010000 	.word	0x40010000
20100e4c:	20000020 	.word	0x20000020
20100e50:	20101105 	.word	0x20101105
20100e54:	20000024 	.word	0x20000024
20100e58:	20101111 	.word	0x20101111

20100e5c <usb_device_update>:
20100e5c:	b580      	push	{r7, lr}
20100e5e:	b082      	sub	sp, #8
20100e60:	af00      	add	r7, sp, #0
20100e62:	2300      	movs	r3, #0
20100e64:	607b      	str	r3, [r7, #4]
20100e66:	4a58      	ldr	r2, [pc, #352]	; (20100fc8 <usb_device_update+0x16c>)
20100e68:	23a4      	movs	r3, #164	; 0xa4
20100e6a:	005b      	lsls	r3, r3, #1
20100e6c:	58d3      	ldr	r3, [r2, r3]
20100e6e:	603b      	str	r3, [r7, #0]
20100e70:	4a55      	ldr	r2, [pc, #340]	; (20100fc8 <usb_device_update+0x16c>)
20100e72:	23a4      	movs	r3, #164	; 0xa4
20100e74:	005b      	lsls	r3, r3, #1
20100e76:	2100      	movs	r1, #0
20100e78:	50d1      	str	r1, [r2, r3]
20100e7a:	683b      	ldr	r3, [r7, #0]
20100e7c:	2204      	movs	r2, #4
20100e7e:	4013      	ands	r3, r2
20100e80:	d010      	beq.n	20100ea4 <usb_device_update+0x48>
20100e82:	4951      	ldr	r1, [pc, #324]	; (20100fc8 <usb_device_update+0x16c>)
20100e84:	4a50      	ldr	r2, [pc, #320]	; (20100fc8 <usb_device_update+0x16c>)
20100e86:	23a4      	movs	r3, #164	; 0xa4
20100e88:	005b      	lsls	r3, r3, #1
20100e8a:	58d3      	ldr	r3, [r2, r3]
20100e8c:	2204      	movs	r2, #4
20100e8e:	431a      	orrs	r2, r3
20100e90:	23a4      	movs	r3, #164	; 0xa4
20100e92:	005b      	lsls	r3, r3, #1
20100e94:	50ca      	str	r2, [r1, r3]
20100e96:	f7ff ff9d 	bl	20100dd4 <usb_reset>
20100e9a:	4b4c      	ldr	r3, [pc, #304]	; (20100fcc <usb_device_update+0x170>)
20100e9c:	0018      	movs	r0, r3
20100e9e:	f7ff fd29 	bl	201008f4 <xprintf>
20100ea2:	e08d      	b.n	20100fc0 <usb_device_update+0x164>
20100ea4:	683b      	ldr	r3, [r7, #0]
20100ea6:	2201      	movs	r2, #1
20100ea8:	4013      	ands	r3, r2
20100eaa:	d100      	bne.n	20100eae <usb_device_update+0x52>
20100eac:	e088      	b.n	20100fc0 <usb_device_update+0x164>
20100eae:	4946      	ldr	r1, [pc, #280]	; (20100fc8 <usb_device_update+0x16c>)
20100eb0:	4a45      	ldr	r2, [pc, #276]	; (20100fc8 <usb_device_update+0x16c>)
20100eb2:	23a4      	movs	r3, #164	; 0xa4
20100eb4:	005b      	lsls	r3, r3, #1
20100eb6:	58d3      	ldr	r3, [r2, r3]
20100eb8:	2201      	movs	r2, #1
20100eba:	431a      	orrs	r2, r3
20100ebc:	23a4      	movs	r3, #164	; 0xa4
20100ebe:	005b      	lsls	r3, r3, #1
20100ec0:	50ca      	str	r2, [r1, r3]
20100ec2:	4a41      	ldr	r2, [pc, #260]	; (20100fc8 <usb_device_update+0x16c>)
20100ec4:	2380      	movs	r3, #128	; 0x80
20100ec6:	005b      	lsls	r3, r3, #1
20100ec8:	58d3      	ldr	r3, [r2, r3]
20100eca:	2202      	movs	r2, #2
20100ecc:	4013      	ands	r3, r2
20100ece:	d123      	bne.n	20100f18 <usb_device_update+0xbc>
20100ed0:	4a3d      	ldr	r2, [pc, #244]	; (20100fc8 <usb_device_update+0x16c>)
20100ed2:	2384      	movs	r3, #132	; 0x84
20100ed4:	005b      	lsls	r3, r3, #1
20100ed6:	58d3      	ldr	r3, [r2, r3]
20100ed8:	22ff      	movs	r2, #255	; 0xff
20100eda:	4013      	ands	r3, r2
20100edc:	607b      	str	r3, [r7, #4]
20100ede:	687b      	ldr	r3, [r7, #4]
20100ee0:	2b00      	cmp	r3, #0
20100ee2:	d105      	bne.n	20100ef0 <usb_device_update+0x94>
20100ee4:	4b3a      	ldr	r3, [pc, #232]	; (20100fd0 <usb_device_update+0x174>)
20100ee6:	0018      	movs	r0, r3
20100ee8:	f7ff fd04 	bl	201008f4 <xprintf>
20100eec:	f000 fb86 	bl	201015fc <setup0_proc>
20100ef0:	687b      	ldr	r3, [r7, #4]
20100ef2:	2b01      	cmp	r3, #1
20100ef4:	d106      	bne.n	20100f04 <usb_device_update+0xa8>
20100ef6:	4b37      	ldr	r3, [pc, #220]	; (20100fd4 <usb_device_update+0x178>)
20100ef8:	0018      	movs	r0, r3
20100efa:	f7ff fcfb 	bl	201008f4 <xprintf>
20100efe:	4b36      	ldr	r3, [pc, #216]	; (20100fd8 <usb_device_update+0x17c>)
20100f00:	681b      	ldr	r3, [r3, #0]
20100f02:	4798      	blx	r3
20100f04:	687b      	ldr	r3, [r7, #4]
20100f06:	2b02      	cmp	r3, #2
20100f08:	d106      	bne.n	20100f18 <usb_device_update+0xbc>
20100f0a:	4b34      	ldr	r3, [pc, #208]	; (20100fdc <usb_device_update+0x180>)
20100f0c:	0018      	movs	r0, r3
20100f0e:	f7ff fcf1 	bl	201008f4 <xprintf>
20100f12:	4b33      	ldr	r3, [pc, #204]	; (20100fe0 <usb_device_update+0x184>)
20100f14:	681b      	ldr	r3, [r3, #0]
20100f16:	4798      	blx	r3
20100f18:	4a2b      	ldr	r2, [pc, #172]	; (20100fc8 <usb_device_update+0x16c>)
20100f1a:	2388      	movs	r3, #136	; 0x88
20100f1c:	005b      	lsls	r3, r3, #1
20100f1e:	58d3      	ldr	r3, [r2, r3]
20100f20:	2202      	movs	r2, #2
20100f22:	4013      	ands	r3, r2
20100f24:	d114      	bne.n	20100f50 <usb_device_update+0xf4>
20100f26:	4a28      	ldr	r2, [pc, #160]	; (20100fc8 <usb_device_update+0x16c>)
20100f28:	238c      	movs	r3, #140	; 0x8c
20100f2a:	005b      	lsls	r3, r3, #1
20100f2c:	58d3      	ldr	r3, [r2, r3]
20100f2e:	22ff      	movs	r2, #255	; 0xff
20100f30:	4013      	ands	r3, r2
20100f32:	607b      	str	r3, [r7, #4]
20100f34:	687b      	ldr	r3, [r7, #4]
20100f36:	2b01      	cmp	r3, #1
20100f38:	d103      	bne.n	20100f42 <usb_device_update+0xe6>
20100f3a:	4b2a      	ldr	r3, [pc, #168]	; (20100fe4 <usb_device_update+0x188>)
20100f3c:	0018      	movs	r0, r3
20100f3e:	f7ff fcd9 	bl	201008f4 <xprintf>
20100f42:	687b      	ldr	r3, [r7, #4]
20100f44:	2b02      	cmp	r3, #2
20100f46:	d103      	bne.n	20100f50 <usb_device_update+0xf4>
20100f48:	4b27      	ldr	r3, [pc, #156]	; (20100fe8 <usb_device_update+0x18c>)
20100f4a:	0018      	movs	r0, r3
20100f4c:	f7ff fcd2 	bl	201008f4 <xprintf>
20100f50:	4a1d      	ldr	r2, [pc, #116]	; (20100fc8 <usb_device_update+0x16c>)
20100f52:	2390      	movs	r3, #144	; 0x90
20100f54:	005b      	lsls	r3, r3, #1
20100f56:	58d3      	ldr	r3, [r2, r3]
20100f58:	2202      	movs	r2, #2
20100f5a:	4013      	ands	r3, r2
20100f5c:	d114      	bne.n	20100f88 <usb_device_update+0x12c>
20100f5e:	4a1a      	ldr	r2, [pc, #104]	; (20100fc8 <usb_device_update+0x16c>)
20100f60:	2394      	movs	r3, #148	; 0x94
20100f62:	005b      	lsls	r3, r3, #1
20100f64:	58d3      	ldr	r3, [r2, r3]
20100f66:	22ff      	movs	r2, #255	; 0xff
20100f68:	4013      	ands	r3, r2
20100f6a:	607b      	str	r3, [r7, #4]
20100f6c:	687b      	ldr	r3, [r7, #4]
20100f6e:	2b01      	cmp	r3, #1
20100f70:	d103      	bne.n	20100f7a <usb_device_update+0x11e>
20100f72:	4b1c      	ldr	r3, [pc, #112]	; (20100fe4 <usb_device_update+0x188>)
20100f74:	0018      	movs	r0, r3
20100f76:	f7ff fcbd 	bl	201008f4 <xprintf>
20100f7a:	687b      	ldr	r3, [r7, #4]
20100f7c:	2b02      	cmp	r3, #2
20100f7e:	d103      	bne.n	20100f88 <usb_device_update+0x12c>
20100f80:	4b19      	ldr	r3, [pc, #100]	; (20100fe8 <usb_device_update+0x18c>)
20100f82:	0018      	movs	r0, r3
20100f84:	f7ff fcb6 	bl	201008f4 <xprintf>
20100f88:	4a0f      	ldr	r2, [pc, #60]	; (20100fc8 <usb_device_update+0x16c>)
20100f8a:	2398      	movs	r3, #152	; 0x98
20100f8c:	005b      	lsls	r3, r3, #1
20100f8e:	58d3      	ldr	r3, [r2, r3]
20100f90:	2202      	movs	r2, #2
20100f92:	4013      	ands	r3, r2
20100f94:	d114      	bne.n	20100fc0 <usb_device_update+0x164>
20100f96:	4a0c      	ldr	r2, [pc, #48]	; (20100fc8 <usb_device_update+0x16c>)
20100f98:	239c      	movs	r3, #156	; 0x9c
20100f9a:	005b      	lsls	r3, r3, #1
20100f9c:	58d3      	ldr	r3, [r2, r3]
20100f9e:	22ff      	movs	r2, #255	; 0xff
20100fa0:	4013      	ands	r3, r2
20100fa2:	607b      	str	r3, [r7, #4]
20100fa4:	687b      	ldr	r3, [r7, #4]
20100fa6:	2b01      	cmp	r3, #1
20100fa8:	d103      	bne.n	20100fb2 <usb_device_update+0x156>
20100faa:	4b10      	ldr	r3, [pc, #64]	; (20100fec <usb_device_update+0x190>)
20100fac:	0018      	movs	r0, r3
20100fae:	f7ff fca1 	bl	201008f4 <xprintf>
20100fb2:	687b      	ldr	r3, [r7, #4]
20100fb4:	2b02      	cmp	r3, #2
20100fb6:	d103      	bne.n	20100fc0 <usb_device_update+0x164>
20100fb8:	4b0d      	ldr	r3, [pc, #52]	; (20100ff0 <usb_device_update+0x194>)
20100fba:	0018      	movs	r0, r3
20100fbc:	f7ff fc9a 	bl	201008f4 <xprintf>
20100fc0:	46c0      	nop			; (mov r8, r8)
20100fc2:	46bd      	mov	sp, r7
20100fc4:	b002      	add	sp, #8
20100fc6:	bd80      	pop	{r7, pc}
20100fc8:	40010000 	.word	0x40010000
20100fcc:	201019e4 	.word	0x201019e4
20100fd0:	201019ec 	.word	0x201019ec
20100fd4:	201019f8 	.word	0x201019f8
20100fd8:	20000020 	.word	0x20000020
20100fdc:	20101a04 	.word	0x20101a04
20100fe0:	20000024 	.word	0x20000024
20100fe4:	20101a10 	.word	0x20101a10
20100fe8:	20101a1c 	.word	0x20101a1c
20100fec:	20101a28 	.word	0x20101a28
20100ff0:	20101a34 	.word	0x20101a34

20100ff4 <usb_read>:
20100ff4:	b580      	push	{r7, lr}
20100ff6:	b086      	sub	sp, #24
20100ff8:	af00      	add	r7, sp, #0
20100ffa:	6078      	str	r0, [r7, #4]
20100ffc:	6039      	str	r1, [r7, #0]
20100ffe:	4a19      	ldr	r2, [pc, #100]	; (20101064 <usb_read+0x70>)
20101000:	23c3      	movs	r3, #195	; 0xc3
20101002:	009b      	lsls	r3, r3, #2
20101004:	58d3      	ldr	r3, [r2, r3]
20101006:	613b      	str	r3, [r7, #16]
20101008:	693b      	ldr	r3, [r7, #16]
2010100a:	2b00      	cmp	r3, #0
2010100c:	d101      	bne.n	20101012 <usb_read+0x1e>
2010100e:	2300      	movs	r3, #0
20101010:	e023      	b.n	2010105a <usb_read+0x66>
20101012:	693b      	ldr	r3, [r7, #16]
20101014:	683a      	ldr	r2, [r7, #0]
20101016:	4293      	cmp	r3, r2
20101018:	d900      	bls.n	2010101c <usb_read+0x28>
2010101a:	0013      	movs	r3, r2
2010101c:	60fb      	str	r3, [r7, #12]
2010101e:	2300      	movs	r3, #0
20101020:	617b      	str	r3, [r7, #20]
20101022:	e00b      	b.n	2010103c <usb_read+0x48>
20101024:	697b      	ldr	r3, [r7, #20]
20101026:	687a      	ldr	r2, [r7, #4]
20101028:	18d3      	adds	r3, r2, r3
2010102a:	490e      	ldr	r1, [pc, #56]	; (20101064 <usb_read+0x70>)
2010102c:	22c0      	movs	r2, #192	; 0xc0
2010102e:	0092      	lsls	r2, r2, #2
20101030:	588a      	ldr	r2, [r1, r2]
20101032:	b2d2      	uxtb	r2, r2
20101034:	701a      	strb	r2, [r3, #0]
20101036:	697b      	ldr	r3, [r7, #20]
20101038:	3301      	adds	r3, #1
2010103a:	617b      	str	r3, [r7, #20]
2010103c:	697a      	ldr	r2, [r7, #20]
2010103e:	68fb      	ldr	r3, [r7, #12]
20101040:	429a      	cmp	r2, r3
20101042:	dbef      	blt.n	20101024 <usb_read+0x30>
20101044:	4907      	ldr	r1, [pc, #28]	; (20101064 <usb_read+0x70>)
20101046:	4a07      	ldr	r2, [pc, #28]	; (20101064 <usb_read+0x70>)
20101048:	2398      	movs	r3, #152	; 0x98
2010104a:	005b      	lsls	r3, r3, #1
2010104c:	58d3      	ldr	r3, [r2, r3]
2010104e:	2202      	movs	r2, #2
20101050:	431a      	orrs	r2, r3
20101052:	2398      	movs	r3, #152	; 0x98
20101054:	005b      	lsls	r3, r3, #1
20101056:	50ca      	str	r2, [r1, r3]
20101058:	68fb      	ldr	r3, [r7, #12]
2010105a:	0018      	movs	r0, r3
2010105c:	46bd      	mov	sp, r7
2010105e:	b006      	add	sp, #24
20101060:	bd80      	pop	{r7, pc}
20101062:	46c0      	nop			; (mov r8, r8)
20101064:	40010000 	.word	0x40010000

20101068 <usb_write>:
20101068:	b580      	push	{r7, lr}
2010106a:	b084      	sub	sp, #16
2010106c:	af00      	add	r7, sp, #0
2010106e:	6078      	str	r0, [r7, #4]
20101070:	6039      	str	r1, [r7, #0]
20101072:	4a22      	ldr	r2, [pc, #136]	; (201010fc <usb_write+0x94>)
20101074:	2388      	movs	r3, #136	; 0x88
20101076:	005b      	lsls	r3, r3, #1
20101078:	58d3      	ldr	r3, [r2, r3]
2010107a:	2202      	movs	r2, #2
2010107c:	4013      	ands	r3, r2
2010107e:	d001      	beq.n	20101084 <usb_write+0x1c>
20101080:	2300      	movs	r3, #0
20101082:	e037      	b.n	201010f4 <usb_write+0x8c>
20101084:	683b      	ldr	r3, [r7, #0]
20101086:	2b40      	cmp	r3, #64	; 0x40
20101088:	d900      	bls.n	2010108c <usb_write+0x24>
2010108a:	2340      	movs	r3, #64	; 0x40
2010108c:	60bb      	str	r3, [r7, #8]
2010108e:	4a1b      	ldr	r2, [pc, #108]	; (201010fc <usb_write+0x94>)
20101090:	2394      	movs	r3, #148	; 0x94
20101092:	009b      	lsls	r3, r3, #2
20101094:	2101      	movs	r1, #1
20101096:	50d1      	str	r1, [r2, r3]
20101098:	2300      	movs	r3, #0
2010109a:	60fb      	str	r3, [r7, #12]
2010109c:	e00b      	b.n	201010b6 <usb_write+0x4e>
2010109e:	4917      	ldr	r1, [pc, #92]	; (201010fc <usb_write+0x94>)
201010a0:	68fb      	ldr	r3, [r7, #12]
201010a2:	687a      	ldr	r2, [r7, #4]
201010a4:	18d3      	adds	r3, r2, r3
201010a6:	781b      	ldrb	r3, [r3, #0]
201010a8:	001a      	movs	r2, r3
201010aa:	2390      	movs	r3, #144	; 0x90
201010ac:	009b      	lsls	r3, r3, #2
201010ae:	50ca      	str	r2, [r1, r3]
201010b0:	68fb      	ldr	r3, [r7, #12]
201010b2:	3301      	adds	r3, #1
201010b4:	60fb      	str	r3, [r7, #12]
201010b6:	68fa      	ldr	r2, [r7, #12]
201010b8:	68bb      	ldr	r3, [r7, #8]
201010ba:	429a      	cmp	r2, r3
201010bc:	dbef      	blt.n	2010109e <usb_write+0x36>
201010be:	68ba      	ldr	r2, [r7, #8]
201010c0:	4b0f      	ldr	r3, [pc, #60]	; (20101100 <usb_write+0x98>)
201010c2:	0011      	movs	r1, r2
201010c4:	0018      	movs	r0, r3
201010c6:	f7ff fc15 	bl	201008f4 <xprintf>
201010ca:	490c      	ldr	r1, [pc, #48]	; (201010fc <usb_write+0x94>)
201010cc:	4a0b      	ldr	r2, [pc, #44]	; (201010fc <usb_write+0x94>)
201010ce:	2388      	movs	r3, #136	; 0x88
201010d0:	005b      	lsls	r3, r3, #1
201010d2:	58d3      	ldr	r3, [r2, r3]
201010d4:	2204      	movs	r2, #4
201010d6:	405a      	eors	r2, r3
201010d8:	2388      	movs	r3, #136	; 0x88
201010da:	005b      	lsls	r3, r3, #1
201010dc:	50ca      	str	r2, [r1, r3]
201010de:	4907      	ldr	r1, [pc, #28]	; (201010fc <usb_write+0x94>)
201010e0:	4a06      	ldr	r2, [pc, #24]	; (201010fc <usb_write+0x94>)
201010e2:	2388      	movs	r3, #136	; 0x88
201010e4:	005b      	lsls	r3, r3, #1
201010e6:	58d3      	ldr	r3, [r2, r3]
201010e8:	2202      	movs	r2, #2
201010ea:	431a      	orrs	r2, r3
201010ec:	2388      	movs	r3, #136	; 0x88
201010ee:	005b      	lsls	r3, r3, #1
201010f0:	50ca      	str	r2, [r1, r3]
201010f2:	68bb      	ldr	r3, [r7, #8]
201010f4:	0018      	movs	r0, r3
201010f6:	46bd      	mov	sp, r7
201010f8:	b004      	add	sp, #16
201010fa:	bd80      	pop	{r7, pc}
201010fc:	40010000 	.word	0x40010000
20101100:	20101a40 	.word	0x20101a40

20101104 <null_proc>:
20101104:	b580      	push	{r7, lr}
20101106:	af00      	add	r7, sp, #0
20101108:	46c0      	nop			; (mov r8, r8)
2010110a:	46bd      	mov	sp, r7
2010110c:	bd80      	pop	{r7, pc}
2010110e:	46c0      	nop			; (mov r8, r8)

20101110 <enable_RX_proc>:
20101110:	b580      	push	{r7, lr}
20101112:	af00      	add	r7, sp, #0
20101114:	4906      	ldr	r1, [pc, #24]	; (20101130 <enable_RX_proc+0x20>)
20101116:	4a06      	ldr	r2, [pc, #24]	; (20101130 <enable_RX_proc+0x20>)
20101118:	2380      	movs	r3, #128	; 0x80
2010111a:	005b      	lsls	r3, r3, #1
2010111c:	58d3      	ldr	r3, [r2, r3]
2010111e:	2202      	movs	r2, #2
20101120:	431a      	orrs	r2, r3
20101122:	2380      	movs	r3, #128	; 0x80
20101124:	005b      	lsls	r3, r3, #1
20101126:	50ca      	str	r2, [r1, r3]
20101128:	46c0      	nop			; (mov r8, r8)
2010112a:	46bd      	mov	sp, r7
2010112c:	bd80      	pop	{r7, pc}
2010112e:	46c0      	nop			; (mov r8, r8)
20101130:	40010000 	.word	0x40010000

20101134 <plan_ZeroLength_OUT_proc>:
20101134:	b580      	push	{r7, lr}
20101136:	af00      	add	r7, sp, #0
20101138:	4909      	ldr	r1, [pc, #36]	; (20101160 <plan_ZeroLength_OUT_proc+0x2c>)
2010113a:	4a09      	ldr	r2, [pc, #36]	; (20101160 <plan_ZeroLength_OUT_proc+0x2c>)
2010113c:	2380      	movs	r3, #128	; 0x80
2010113e:	005b      	lsls	r3, r3, #1
20101140:	58d3      	ldr	r3, [r2, r3]
20101142:	2202      	movs	r2, #2
20101144:	431a      	orrs	r2, r3
20101146:	2380      	movs	r3, #128	; 0x80
20101148:	005b      	lsls	r3, r3, #1
2010114a:	50ca      	str	r2, [r1, r3]
2010114c:	4b05      	ldr	r3, [pc, #20]	; (20101164 <plan_ZeroLength_OUT_proc+0x30>)
2010114e:	4a06      	ldr	r2, [pc, #24]	; (20101168 <plan_ZeroLength_OUT_proc+0x34>)
20101150:	601a      	str	r2, [r3, #0]
20101152:	4b06      	ldr	r3, [pc, #24]	; (2010116c <plan_ZeroLength_OUT_proc+0x38>)
20101154:	4a06      	ldr	r2, [pc, #24]	; (20101170 <plan_ZeroLength_OUT_proc+0x3c>)
20101156:	601a      	str	r2, [r3, #0]
20101158:	46c0      	nop			; (mov r8, r8)
2010115a:	46bd      	mov	sp, r7
2010115c:	bd80      	pop	{r7, pc}
2010115e:	46c0      	nop			; (mov r8, r8)
20101160:	40010000 	.word	0x40010000
20101164:	20000020 	.word	0x20000020
20101168:	20101105 	.word	0x20101105
2010116c:	20000024 	.word	0x20000024
20101170:	20101111 	.word	0x20101111

20101174 <plan_ZeroLength_IN_proc>:
20101174:	b580      	push	{r7, lr}
20101176:	af00      	add	r7, sp, #0
20101178:	4a0d      	ldr	r2, [pc, #52]	; (201011b0 <plan_ZeroLength_IN_proc+0x3c>)
2010117a:	23e8      	movs	r3, #232	; 0xe8
2010117c:	005b      	lsls	r3, r3, #1
2010117e:	2101      	movs	r1, #1
20101180:	50d1      	str	r1, [r2, r3]
20101182:	490b      	ldr	r1, [pc, #44]	; (201011b0 <plan_ZeroLength_IN_proc+0x3c>)
20101184:	4a0a      	ldr	r2, [pc, #40]	; (201011b0 <plan_ZeroLength_IN_proc+0x3c>)
20101186:	2380      	movs	r3, #128	; 0x80
20101188:	005b      	lsls	r3, r3, #1
2010118a:	58d3      	ldr	r3, [r2, r3]
2010118c:	2204      	movs	r2, #4
2010118e:	431a      	orrs	r2, r3
20101190:	2380      	movs	r3, #128	; 0x80
20101192:	005b      	lsls	r3, r3, #1
20101194:	50ca      	str	r2, [r1, r3]
20101196:	4906      	ldr	r1, [pc, #24]	; (201011b0 <plan_ZeroLength_IN_proc+0x3c>)
20101198:	4a05      	ldr	r2, [pc, #20]	; (201011b0 <plan_ZeroLength_IN_proc+0x3c>)
2010119a:	2380      	movs	r3, #128	; 0x80
2010119c:	005b      	lsls	r3, r3, #1
2010119e:	58d3      	ldr	r3, [r2, r3]
201011a0:	2202      	movs	r2, #2
201011a2:	431a      	orrs	r2, r3
201011a4:	2380      	movs	r3, #128	; 0x80
201011a6:	005b      	lsls	r3, r3, #1
201011a8:	50ca      	str	r2, [r1, r3]
201011aa:	46c0      	nop			; (mov r8, r8)
201011ac:	46bd      	mov	sp, r7
201011ae:	bd80      	pop	{r7, pc}
201011b0:	40010000 	.word	0x40010000

201011b4 <plan_Data_IN_proc>:
201011b4:	b580      	push	{r7, lr}
201011b6:	b084      	sub	sp, #16
201011b8:	af00      	add	r7, sp, #0
201011ba:	4b2f      	ldr	r3, [pc, #188]	; (20101278 <plan_Data_IN_proc+0xc4>)
201011bc:	681b      	ldr	r3, [r3, #0]
201011be:	2b40      	cmp	r3, #64	; 0x40
201011c0:	d900      	bls.n	201011c4 <plan_Data_IN_proc+0x10>
201011c2:	2340      	movs	r3, #64	; 0x40
201011c4:	60bb      	str	r3, [r7, #8]
201011c6:	4b2c      	ldr	r3, [pc, #176]	; (20101278 <plan_Data_IN_proc+0xc4>)
201011c8:	681a      	ldr	r2, [r3, #0]
201011ca:	68bb      	ldr	r3, [r7, #8]
201011cc:	1ad3      	subs	r3, r2, r3
201011ce:	607b      	str	r3, [r7, #4]
201011d0:	68bb      	ldr	r3, [r7, #8]
201011d2:	2b00      	cmp	r3, #0
201011d4:	d032      	beq.n	2010123c <plan_Data_IN_proc+0x88>
201011d6:	4a29      	ldr	r2, [pc, #164]	; (2010127c <plan_Data_IN_proc+0xc8>)
201011d8:	23e8      	movs	r3, #232	; 0xe8
201011da:	005b      	lsls	r3, r3, #1
201011dc:	2101      	movs	r1, #1
201011de:	50d1      	str	r1, [r2, r3]
201011e0:	2300      	movs	r3, #0
201011e2:	60fb      	str	r3, [r7, #12]
201011e4:	e00c      	b.n	20101200 <plan_Data_IN_proc+0x4c>
201011e6:	4925      	ldr	r1, [pc, #148]	; (2010127c <plan_Data_IN_proc+0xc8>)
201011e8:	4b25      	ldr	r3, [pc, #148]	; (20101280 <plan_Data_IN_proc+0xcc>)
201011ea:	681a      	ldr	r2, [r3, #0]
201011ec:	68fb      	ldr	r3, [r7, #12]
201011ee:	18d3      	adds	r3, r2, r3
201011f0:	781b      	ldrb	r3, [r3, #0]
201011f2:	001a      	movs	r2, r3
201011f4:	23e0      	movs	r3, #224	; 0xe0
201011f6:	005b      	lsls	r3, r3, #1
201011f8:	50ca      	str	r2, [r1, r3]
201011fa:	68fb      	ldr	r3, [r7, #12]
201011fc:	3301      	adds	r3, #1
201011fe:	60fb      	str	r3, [r7, #12]
20101200:	68fa      	ldr	r2, [r7, #12]
20101202:	68bb      	ldr	r3, [r7, #8]
20101204:	429a      	cmp	r2, r3
20101206:	d3ee      	bcc.n	201011e6 <plan_Data_IN_proc+0x32>
20101208:	68ba      	ldr	r2, [r7, #8]
2010120a:	4b1e      	ldr	r3, [pc, #120]	; (20101284 <plan_Data_IN_proc+0xd0>)
2010120c:	0011      	movs	r1, r2
2010120e:	0018      	movs	r0, r3
20101210:	f7ff fb70 	bl	201008f4 <xprintf>
20101214:	4919      	ldr	r1, [pc, #100]	; (2010127c <plan_Data_IN_proc+0xc8>)
20101216:	4a19      	ldr	r2, [pc, #100]	; (2010127c <plan_Data_IN_proc+0xc8>)
20101218:	2380      	movs	r3, #128	; 0x80
2010121a:	005b      	lsls	r3, r3, #1
2010121c:	58d3      	ldr	r3, [r2, r3]
2010121e:	2204      	movs	r2, #4
20101220:	405a      	eors	r2, r3
20101222:	2380      	movs	r3, #128	; 0x80
20101224:	005b      	lsls	r3, r3, #1
20101226:	50ca      	str	r2, [r1, r3]
20101228:	4914      	ldr	r1, [pc, #80]	; (2010127c <plan_Data_IN_proc+0xc8>)
2010122a:	4a14      	ldr	r2, [pc, #80]	; (2010127c <plan_Data_IN_proc+0xc8>)
2010122c:	2380      	movs	r3, #128	; 0x80
2010122e:	005b      	lsls	r3, r3, #1
20101230:	58d3      	ldr	r3, [r2, r3]
20101232:	2202      	movs	r2, #2
20101234:	431a      	orrs	r2, r3
20101236:	2380      	movs	r3, #128	; 0x80
20101238:	005b      	lsls	r3, r3, #1
2010123a:	50ca      	str	r2, [r1, r3]
2010123c:	687b      	ldr	r3, [r7, #4]
2010123e:	2b00      	cmp	r3, #0
20101240:	d012      	beq.n	20101268 <plan_Data_IN_proc+0xb4>
20101242:	4b0d      	ldr	r3, [pc, #52]	; (20101278 <plan_Data_IN_proc+0xc4>)
20101244:	687a      	ldr	r2, [r7, #4]
20101246:	601a      	str	r2, [r3, #0]
20101248:	4b0d      	ldr	r3, [pc, #52]	; (20101280 <plan_Data_IN_proc+0xcc>)
2010124a:	681a      	ldr	r2, [r3, #0]
2010124c:	68bb      	ldr	r3, [r7, #8]
2010124e:	18d2      	adds	r2, r2, r3
20101250:	4b0b      	ldr	r3, [pc, #44]	; (20101280 <plan_Data_IN_proc+0xcc>)
20101252:	601a      	str	r2, [r3, #0]
20101254:	4b0c      	ldr	r3, [pc, #48]	; (20101288 <plan_Data_IN_proc+0xd4>)
20101256:	4a0d      	ldr	r2, [pc, #52]	; (2010128c <plan_Data_IN_proc+0xd8>)
20101258:	601a      	str	r2, [r3, #0]
2010125a:	687a      	ldr	r2, [r7, #4]
2010125c:	4b0c      	ldr	r3, [pc, #48]	; (20101290 <plan_Data_IN_proc+0xdc>)
2010125e:	0011      	movs	r1, r2
20101260:	0018      	movs	r0, r3
20101262:	f7ff fb47 	bl	201008f4 <xprintf>
20101266:	e002      	b.n	2010126e <plan_Data_IN_proc+0xba>
20101268:	4b07      	ldr	r3, [pc, #28]	; (20101288 <plan_Data_IN_proc+0xd4>)
2010126a:	4a0a      	ldr	r2, [pc, #40]	; (20101294 <plan_Data_IN_proc+0xe0>)
2010126c:	601a      	str	r2, [r3, #0]
2010126e:	46c0      	nop			; (mov r8, r8)
20101270:	46bd      	mov	sp, r7
20101272:	b004      	add	sp, #16
20101274:	bd80      	pop	{r7, pc}
20101276:	46c0      	nop			; (mov r8, r8)
20101278:	2000005c 	.word	0x2000005c
2010127c:	40010000 	.word	0x40010000
20101280:	20000060 	.word	0x20000060
20101284:	20101a54 	.word	0x20101a54
20101288:	20000020 	.word	0x20000020
2010128c:	201011b5 	.word	0x201011b5
20101290:	20101a60 	.word	0x20101a60
20101294:	20101135 	.word	0x20101135

20101298 <string_descriptor_proc>:
20101298:	b580      	push	{r7, lr}
2010129a:	b082      	sub	sp, #8
2010129c:	af00      	add	r7, sp, #0
2010129e:	4b1a      	ldr	r3, [pc, #104]	; (20101308 <string_descriptor_proc+0x70>)
201012a0:	789b      	ldrb	r3, [r3, #2]
201012a2:	607b      	str	r3, [r7, #4]
201012a4:	687b      	ldr	r3, [r7, #4]
201012a6:	2b01      	cmp	r3, #1
201012a8:	d00e      	beq.n	201012c8 <string_descriptor_proc+0x30>
201012aa:	d304      	bcc.n	201012b6 <string_descriptor_proc+0x1e>
201012ac:	2b02      	cmp	r3, #2
201012ae:	d014      	beq.n	201012da <string_descriptor_proc+0x42>
201012b0:	2b03      	cmp	r3, #3
201012b2:	d01b      	beq.n	201012ec <string_descriptor_proc+0x54>
201012b4:	e023      	b.n	201012fe <string_descriptor_proc+0x66>
201012b6:	4b15      	ldr	r3, [pc, #84]	; (2010130c <string_descriptor_proc+0x74>)
201012b8:	2204      	movs	r2, #4
201012ba:	601a      	str	r2, [r3, #0]
201012bc:	4b14      	ldr	r3, [pc, #80]	; (20101310 <string_descriptor_proc+0x78>)
201012be:	4a15      	ldr	r2, [pc, #84]	; (20101314 <string_descriptor_proc+0x7c>)
201012c0:	601a      	str	r2, [r3, #0]
201012c2:	f7ff ff77 	bl	201011b4 <plan_Data_IN_proc>
201012c6:	e01a      	b.n	201012fe <string_descriptor_proc+0x66>
201012c8:	4b10      	ldr	r3, [pc, #64]	; (2010130c <string_descriptor_proc+0x74>)
201012ca:	2226      	movs	r2, #38	; 0x26
201012cc:	601a      	str	r2, [r3, #0]
201012ce:	4b10      	ldr	r3, [pc, #64]	; (20101310 <string_descriptor_proc+0x78>)
201012d0:	4a11      	ldr	r2, [pc, #68]	; (20101318 <string_descriptor_proc+0x80>)
201012d2:	601a      	str	r2, [r3, #0]
201012d4:	f7ff ff6e 	bl	201011b4 <plan_Data_IN_proc>
201012d8:	e011      	b.n	201012fe <string_descriptor_proc+0x66>
201012da:	4b0c      	ldr	r3, [pc, #48]	; (2010130c <string_descriptor_proc+0x74>)
201012dc:	2232      	movs	r2, #50	; 0x32
201012de:	601a      	str	r2, [r3, #0]
201012e0:	4b0b      	ldr	r3, [pc, #44]	; (20101310 <string_descriptor_proc+0x78>)
201012e2:	4a0e      	ldr	r2, [pc, #56]	; (2010131c <string_descriptor_proc+0x84>)
201012e4:	601a      	str	r2, [r3, #0]
201012e6:	f7ff ff65 	bl	201011b4 <plan_Data_IN_proc>
201012ea:	e008      	b.n	201012fe <string_descriptor_proc+0x66>
201012ec:	4b07      	ldr	r3, [pc, #28]	; (2010130c <string_descriptor_proc+0x74>)
201012ee:	221a      	movs	r2, #26
201012f0:	601a      	str	r2, [r3, #0]
201012f2:	4b07      	ldr	r3, [pc, #28]	; (20101310 <string_descriptor_proc+0x78>)
201012f4:	4a0a      	ldr	r2, [pc, #40]	; (20101320 <string_descriptor_proc+0x88>)
201012f6:	601a      	str	r2, [r3, #0]
201012f8:	f7ff ff5c 	bl	201011b4 <plan_Data_IN_proc>
201012fc:	46c0      	nop			; (mov r8, r8)
201012fe:	46c0      	nop			; (mov r8, r8)
20101300:	46bd      	mov	sp, r7
20101302:	b002      	add	sp, #8
20101304:	bd80      	pop	{r7, pc}
20101306:	46c0      	nop			; (mov r8, r8)
20101308:	20000054 	.word	0x20000054
2010130c:	2000005c 	.word	0x2000005c
20101310:	20000060 	.word	0x20000060
20101314:	20101984 	.word	0x20101984
20101318:	20101988 	.word	0x20101988
2010131c:	201019b0 	.word	0x201019b0
20101320:	20000004 	.word	0x20000004

20101324 <get_descriptor_proc>:
20101324:	b580      	push	{r7, lr}
20101326:	b082      	sub	sp, #8
20101328:	af00      	add	r7, sp, #0
2010132a:	4b33      	ldr	r3, [pc, #204]	; (201013f8 <get_descriptor_proc+0xd4>)
2010132c:	78db      	ldrb	r3, [r3, #3]
2010132e:	607b      	str	r3, [r7, #4]
20101330:	4b31      	ldr	r3, [pc, #196]	; (201013f8 <get_descriptor_proc+0xd4>)
20101332:	799b      	ldrb	r3, [r3, #6]
20101334:	001a      	movs	r2, r3
20101336:	4b30      	ldr	r3, [pc, #192]	; (201013f8 <get_descriptor_proc+0xd4>)
20101338:	79db      	ldrb	r3, [r3, #7]
2010133a:	021b      	lsls	r3, r3, #8
2010133c:	4313      	orrs	r3, r2
2010133e:	603b      	str	r3, [r7, #0]
20101340:	687b      	ldr	r3, [r7, #4]
20101342:	2b02      	cmp	r3, #2
20101344:	d02a      	beq.n	2010139c <get_descriptor_proc+0x78>
20101346:	d802      	bhi.n	2010134e <get_descriptor_proc+0x2a>
20101348:	2b01      	cmp	r3, #1
2010134a:	d005      	beq.n	20101358 <get_descriptor_proc+0x34>
2010134c:	e050      	b.n	201013f0 <get_descriptor_proc+0xcc>
2010134e:	2b03      	cmp	r3, #3
20101350:	d03c      	beq.n	201013cc <get_descriptor_proc+0xa8>
20101352:	2b06      	cmp	r3, #6
20101354:	d018      	beq.n	20101388 <get_descriptor_proc+0x64>
20101356:	e04b      	b.n	201013f0 <get_descriptor_proc+0xcc>
20101358:	4b28      	ldr	r3, [pc, #160]	; (201013fc <get_descriptor_proc+0xd8>)
2010135a:	683a      	ldr	r2, [r7, #0]
2010135c:	601a      	str	r2, [r3, #0]
2010135e:	4b28      	ldr	r3, [pc, #160]	; (20101400 <get_descriptor_proc+0xdc>)
20101360:	4a28      	ldr	r2, [pc, #160]	; (20101404 <get_descriptor_proc+0xe0>)
20101362:	601a      	str	r2, [r3, #0]
20101364:	4928      	ldr	r1, [pc, #160]	; (20101408 <get_descriptor_proc+0xe4>)
20101366:	4a28      	ldr	r2, [pc, #160]	; (20101408 <get_descriptor_proc+0xe4>)
20101368:	2380      	movs	r3, #128	; 0x80
2010136a:	005b      	lsls	r3, r3, #1
2010136c:	58d3      	ldr	r3, [r2, r3]
2010136e:	2204      	movs	r2, #4
20101370:	4393      	bics	r3, r2
20101372:	001a      	movs	r2, r3
20101374:	2380      	movs	r3, #128	; 0x80
20101376:	005b      	lsls	r3, r3, #1
20101378:	50ca      	str	r2, [r1, r3]
2010137a:	f7ff ff1b 	bl	201011b4 <plan_Data_IN_proc>
2010137e:	4b23      	ldr	r3, [pc, #140]	; (2010140c <get_descriptor_proc+0xe8>)
20101380:	0018      	movs	r0, r3
20101382:	f7ff fab7 	bl	201008f4 <xprintf>
20101386:	e033      	b.n	201013f0 <get_descriptor_proc+0xcc>
20101388:	f7ff fef4 	bl	20101174 <plan_ZeroLength_IN_proc>
2010138c:	4b20      	ldr	r3, [pc, #128]	; (20101410 <get_descriptor_proc+0xec>)
2010138e:	4a21      	ldr	r2, [pc, #132]	; (20101414 <get_descriptor_proc+0xf0>)
20101390:	601a      	str	r2, [r3, #0]
20101392:	4b21      	ldr	r3, [pc, #132]	; (20101418 <get_descriptor_proc+0xf4>)
20101394:	0018      	movs	r0, r3
20101396:	f7ff faad 	bl	201008f4 <xprintf>
2010139a:	e029      	b.n	201013f0 <get_descriptor_proc+0xcc>
2010139c:	4b17      	ldr	r3, [pc, #92]	; (201013fc <get_descriptor_proc+0xd8>)
2010139e:	683a      	ldr	r2, [r7, #0]
201013a0:	601a      	str	r2, [r3, #0]
201013a2:	4b17      	ldr	r3, [pc, #92]	; (20101400 <get_descriptor_proc+0xdc>)
201013a4:	4a1d      	ldr	r2, [pc, #116]	; (2010141c <get_descriptor_proc+0xf8>)
201013a6:	601a      	str	r2, [r3, #0]
201013a8:	4917      	ldr	r1, [pc, #92]	; (20101408 <get_descriptor_proc+0xe4>)
201013aa:	4a17      	ldr	r2, [pc, #92]	; (20101408 <get_descriptor_proc+0xe4>)
201013ac:	2380      	movs	r3, #128	; 0x80
201013ae:	005b      	lsls	r3, r3, #1
201013b0:	58d3      	ldr	r3, [r2, r3]
201013b2:	2204      	movs	r2, #4
201013b4:	4393      	bics	r3, r2
201013b6:	001a      	movs	r2, r3
201013b8:	2380      	movs	r3, #128	; 0x80
201013ba:	005b      	lsls	r3, r3, #1
201013bc:	50ca      	str	r2, [r1, r3]
201013be:	f7ff fef9 	bl	201011b4 <plan_Data_IN_proc>
201013c2:	4b17      	ldr	r3, [pc, #92]	; (20101420 <get_descriptor_proc+0xfc>)
201013c4:	0018      	movs	r0, r3
201013c6:	f7ff fa95 	bl	201008f4 <xprintf>
201013ca:	e011      	b.n	201013f0 <get_descriptor_proc+0xcc>
201013cc:	490e      	ldr	r1, [pc, #56]	; (20101408 <get_descriptor_proc+0xe4>)
201013ce:	4a0e      	ldr	r2, [pc, #56]	; (20101408 <get_descriptor_proc+0xe4>)
201013d0:	2380      	movs	r3, #128	; 0x80
201013d2:	005b      	lsls	r3, r3, #1
201013d4:	58d3      	ldr	r3, [r2, r3]
201013d6:	2204      	movs	r2, #4
201013d8:	4393      	bics	r3, r2
201013da:	001a      	movs	r2, r3
201013dc:	2380      	movs	r3, #128	; 0x80
201013de:	005b      	lsls	r3, r3, #1
201013e0:	50ca      	str	r2, [r1, r3]
201013e2:	f7ff ff59 	bl	20101298 <string_descriptor_proc>
201013e6:	4b0f      	ldr	r3, [pc, #60]	; (20101424 <get_descriptor_proc+0x100>)
201013e8:	0018      	movs	r0, r3
201013ea:	f7ff fa83 	bl	201008f4 <xprintf>
201013ee:	46c0      	nop			; (mov r8, r8)
201013f0:	46c0      	nop			; (mov r8, r8)
201013f2:	46bd      	mov	sp, r7
201013f4:	b002      	add	sp, #8
201013f6:	bd80      	pop	{r7, pc}
201013f8:	20000054 	.word	0x20000054
201013fc:	2000005c 	.word	0x2000005c
20101400:	20000060 	.word	0x20000060
20101404:	2010192c 	.word	0x2010192c
20101408:	40010000 	.word	0x40010000
2010140c:	20101a6c 	.word	0x20101a6c
20101410:	20000020 	.word	0x20000020
20101414:	20101135 	.word	0x20101135
20101418:	20101a78 	.word	0x20101a78
2010141c:	20101940 	.word	0x20101940
20101420:	20101a84 	.word	0x20101a84
20101424:	20101a94 	.word	0x20101a94

20101428 <input0_for_setaddr_proc>:
20101428:	b580      	push	{r7, lr}
2010142a:	af00      	add	r7, sp, #0
2010142c:	4a0b      	ldr	r2, [pc, #44]	; (2010145c <input0_for_setaddr_proc+0x34>)
2010142e:	4b0c      	ldr	r3, [pc, #48]	; (20101460 <input0_for_setaddr_proc+0x38>)
20101430:	881b      	ldrh	r3, [r3, #0]
20101432:	0019      	movs	r1, r3
20101434:	23a8      	movs	r3, #168	; 0xa8
20101436:	005b      	lsls	r3, r3, #1
20101438:	50d1      	str	r1, [r2, r3]
2010143a:	4908      	ldr	r1, [pc, #32]	; (2010145c <input0_for_setaddr_proc+0x34>)
2010143c:	4a07      	ldr	r2, [pc, #28]	; (2010145c <input0_for_setaddr_proc+0x34>)
2010143e:	2380      	movs	r3, #128	; 0x80
20101440:	005b      	lsls	r3, r3, #1
20101442:	58d3      	ldr	r3, [r2, r3]
20101444:	2202      	movs	r2, #2
20101446:	431a      	orrs	r2, r3
20101448:	2380      	movs	r3, #128	; 0x80
2010144a:	005b      	lsls	r3, r3, #1
2010144c:	50ca      	str	r2, [r1, r3]
2010144e:	4b05      	ldr	r3, [pc, #20]	; (20101464 <input0_for_setaddr_proc+0x3c>)
20101450:	4a05      	ldr	r2, [pc, #20]	; (20101468 <input0_for_setaddr_proc+0x40>)
20101452:	601a      	str	r2, [r3, #0]
20101454:	46c0      	nop			; (mov r8, r8)
20101456:	46bd      	mov	sp, r7
20101458:	bd80      	pop	{r7, pc}
2010145a:	46c0      	nop			; (mov r8, r8)
2010145c:	40010000 	.word	0x40010000
20101460:	20000040 	.word	0x20000040
20101464:	20000020 	.word	0x20000020
20101468:	20101105 	.word	0x20101105

2010146c <input0_for_setconfig_proc>:
2010146c:	b580      	push	{r7, lr}
2010146e:	af00      	add	r7, sp, #0
20101470:	4b17      	ldr	r3, [pc, #92]	; (201014d0 <input0_for_setconfig_proc+0x64>)
20101472:	2201      	movs	r2, #1
20101474:	601a      	str	r2, [r3, #0]
20101476:	4917      	ldr	r1, [pc, #92]	; (201014d4 <input0_for_setconfig_proc+0x68>)
20101478:	4a16      	ldr	r2, [pc, #88]	; (201014d4 <input0_for_setconfig_proc+0x68>)
2010147a:	2388      	movs	r3, #136	; 0x88
2010147c:	005b      	lsls	r3, r3, #1
2010147e:	58d3      	ldr	r3, [r2, r3]
20101480:	2201      	movs	r2, #1
20101482:	431a      	orrs	r2, r3
20101484:	2388      	movs	r3, #136	; 0x88
20101486:	005b      	lsls	r3, r3, #1
20101488:	50ca      	str	r2, [r1, r3]
2010148a:	4912      	ldr	r1, [pc, #72]	; (201014d4 <input0_for_setconfig_proc+0x68>)
2010148c:	4a11      	ldr	r2, [pc, #68]	; (201014d4 <input0_for_setconfig_proc+0x68>)
2010148e:	2398      	movs	r3, #152	; 0x98
20101490:	005b      	lsls	r3, r3, #1
20101492:	58d3      	ldr	r3, [r2, r3]
20101494:	2203      	movs	r2, #3
20101496:	431a      	orrs	r2, r3
20101498:	2398      	movs	r3, #152	; 0x98
2010149a:	005b      	lsls	r3, r3, #1
2010149c:	50ca      	str	r2, [r1, r3]
2010149e:	4b0e      	ldr	r3, [pc, #56]	; (201014d8 <input0_for_setconfig_proc+0x6c>)
201014a0:	881b      	ldrh	r3, [r3, #0]
201014a2:	001a      	movs	r2, r3
201014a4:	4b0d      	ldr	r3, [pc, #52]	; (201014dc <input0_for_setconfig_proc+0x70>)
201014a6:	0011      	movs	r1, r2
201014a8:	0018      	movs	r0, r3
201014aa:	f7ff fa23 	bl	201008f4 <xprintf>
201014ae:	4909      	ldr	r1, [pc, #36]	; (201014d4 <input0_for_setconfig_proc+0x68>)
201014b0:	4a08      	ldr	r2, [pc, #32]	; (201014d4 <input0_for_setconfig_proc+0x68>)
201014b2:	2380      	movs	r3, #128	; 0x80
201014b4:	005b      	lsls	r3, r3, #1
201014b6:	58d3      	ldr	r3, [r2, r3]
201014b8:	2202      	movs	r2, #2
201014ba:	431a      	orrs	r2, r3
201014bc:	2380      	movs	r3, #128	; 0x80
201014be:	005b      	lsls	r3, r3, #1
201014c0:	50ca      	str	r2, [r1, r3]
201014c2:	4b07      	ldr	r3, [pc, #28]	; (201014e0 <input0_for_setconfig_proc+0x74>)
201014c4:	4a07      	ldr	r2, [pc, #28]	; (201014e4 <input0_for_setconfig_proc+0x78>)
201014c6:	601a      	str	r2, [r3, #0]
201014c8:	46c0      	nop			; (mov r8, r8)
201014ca:	46bd      	mov	sp, r7
201014cc:	bd80      	pop	{r7, pc}
201014ce:	46c0      	nop			; (mov r8, r8)
201014d0:	20000050 	.word	0x20000050
201014d4:	40010000 	.word	0x40010000
201014d8:	20000042 	.word	0x20000042
201014dc:	20101aa0 	.word	0x20101aa0
201014e0:	20000020 	.word	0x20000020
201014e4:	20101105 	.word	0x20101105

201014e8 <output0_for_setlinecoding_proc>:
201014e8:	b580      	push	{r7, lr}
201014ea:	b084      	sub	sp, #16
201014ec:	af00      	add	r7, sp, #0
201014ee:	4a28      	ldr	r2, [pc, #160]	; (20101590 <output0_for_setlinecoding_proc+0xa8>)
201014f0:	23c6      	movs	r3, #198	; 0xc6
201014f2:	005b      	lsls	r3, r3, #1
201014f4:	58d3      	ldr	r3, [r2, r3]
201014f6:	60bb      	str	r3, [r7, #8]
201014f8:	68ba      	ldr	r2, [r7, #8]
201014fa:	4b26      	ldr	r3, [pc, #152]	; (20101594 <output0_for_setlinecoding_proc+0xac>)
201014fc:	0011      	movs	r1, r2
201014fe:	0018      	movs	r0, r3
20101500:	f7ff f9f8 	bl	201008f4 <xprintf>
20101504:	2300      	movs	r3, #0
20101506:	60fb      	str	r3, [r7, #12]
20101508:	e00c      	b.n	20101524 <output0_for_setlinecoding_proc+0x3c>
2010150a:	4a21      	ldr	r2, [pc, #132]	; (20101590 <output0_for_setlinecoding_proc+0xa8>)
2010150c:	23c0      	movs	r3, #192	; 0xc0
2010150e:	005b      	lsls	r3, r3, #1
20101510:	58d3      	ldr	r3, [r2, r3]
20101512:	b2d9      	uxtb	r1, r3
20101514:	4a20      	ldr	r2, [pc, #128]	; (20101598 <output0_for_setlinecoding_proc+0xb0>)
20101516:	68fb      	ldr	r3, [r7, #12]
20101518:	18d3      	adds	r3, r2, r3
2010151a:	1c0a      	adds	r2, r1, #0
2010151c:	701a      	strb	r2, [r3, #0]
2010151e:	68fb      	ldr	r3, [r7, #12]
20101520:	3301      	adds	r3, #1
20101522:	60fb      	str	r3, [r7, #12]
20101524:	68fb      	ldr	r3, [r7, #12]
20101526:	2b06      	cmp	r3, #6
20101528:	ddef      	ble.n	2010150a <output0_for_setlinecoding_proc+0x22>
2010152a:	4a19      	ldr	r2, [pc, #100]	; (20101590 <output0_for_setlinecoding_proc+0xa8>)
2010152c:	23c8      	movs	r3, #200	; 0xc8
2010152e:	005b      	lsls	r3, r3, #1
20101530:	2101      	movs	r1, #1
20101532:	50d1      	str	r1, [r2, r3]
20101534:	1dfb      	adds	r3, r7, #7
20101536:	4a18      	ldr	r2, [pc, #96]	; (20101598 <output0_for_setlinecoding_proc+0xb0>)
20101538:	7992      	ldrb	r2, [r2, #6]
2010153a:	701a      	strb	r2, [r3, #0]
2010153c:	4b16      	ldr	r3, [pc, #88]	; (20101598 <output0_for_setlinecoding_proc+0xb0>)
2010153e:	781b      	ldrb	r3, [r3, #0]
20101540:	603b      	str	r3, [r7, #0]
20101542:	4b15      	ldr	r3, [pc, #84]	; (20101598 <output0_for_setlinecoding_proc+0xb0>)
20101544:	785b      	ldrb	r3, [r3, #1]
20101546:	021b      	lsls	r3, r3, #8
20101548:	001a      	movs	r2, r3
2010154a:	683b      	ldr	r3, [r7, #0]
2010154c:	189b      	adds	r3, r3, r2
2010154e:	603b      	str	r3, [r7, #0]
20101550:	4b11      	ldr	r3, [pc, #68]	; (20101598 <output0_for_setlinecoding_proc+0xb0>)
20101552:	789b      	ldrb	r3, [r3, #2]
20101554:	041b      	lsls	r3, r3, #16
20101556:	001a      	movs	r2, r3
20101558:	683b      	ldr	r3, [r7, #0]
2010155a:	189b      	adds	r3, r3, r2
2010155c:	603b      	str	r3, [r7, #0]
2010155e:	683a      	ldr	r2, [r7, #0]
20101560:	4b0e      	ldr	r3, [pc, #56]	; (2010159c <output0_for_setlinecoding_proc+0xb4>)
20101562:	0011      	movs	r1, r2
20101564:	0018      	movs	r0, r3
20101566:	f7ff f9c5 	bl	201008f4 <xprintf>
2010156a:	1dfb      	adds	r3, r7, #7
2010156c:	781a      	ldrb	r2, [r3, #0]
2010156e:	4b0c      	ldr	r3, [pc, #48]	; (201015a0 <output0_for_setlinecoding_proc+0xb8>)
20101570:	0011      	movs	r1, r2
20101572:	0018      	movs	r0, r3
20101574:	f7ff f9be 	bl	201008f4 <xprintf>
20101578:	f7ff fdfc 	bl	20101174 <plan_ZeroLength_IN_proc>
2010157c:	4b09      	ldr	r3, [pc, #36]	; (201015a4 <output0_for_setlinecoding_proc+0xbc>)
2010157e:	4a0a      	ldr	r2, [pc, #40]	; (201015a8 <output0_for_setlinecoding_proc+0xc0>)
20101580:	601a      	str	r2, [r3, #0]
20101582:	4b0a      	ldr	r3, [pc, #40]	; (201015ac <output0_for_setlinecoding_proc+0xc4>)
20101584:	4a0a      	ldr	r2, [pc, #40]	; (201015b0 <output0_for_setlinecoding_proc+0xc8>)
20101586:	601a      	str	r2, [r3, #0]
20101588:	46c0      	nop			; (mov r8, r8)
2010158a:	46bd      	mov	sp, r7
2010158c:	b004      	add	sp, #16
2010158e:	bd80      	pop	{r7, pc}
20101590:	40010000 	.word	0x40010000
20101594:	20101abc 	.word	0x20101abc
20101598:	20000048 	.word	0x20000048
2010159c:	20101ae4 	.word	0x20101ae4
201015a0:	20101af4 	.word	0x20101af4
201015a4:	20000020 	.word	0x20000020
201015a8:	20101105 	.word	0x20101105
201015ac:	20000024 	.word	0x20000024
201015b0:	20101111 	.word	0x20101111

201015b4 <input0_for_setcontrolline_proc>:
201015b4:	b580      	push	{r7, lr}
201015b6:	af00      	add	r7, sp, #0
201015b8:	4b0b      	ldr	r3, [pc, #44]	; (201015e8 <input0_for_setcontrolline_proc+0x34>)
201015ba:	881b      	ldrh	r3, [r3, #0]
201015bc:	001a      	movs	r2, r3
201015be:	4b0b      	ldr	r3, [pc, #44]	; (201015ec <input0_for_setcontrolline_proc+0x38>)
201015c0:	0011      	movs	r1, r2
201015c2:	0018      	movs	r0, r3
201015c4:	f7ff f996 	bl	201008f4 <xprintf>
201015c8:	4909      	ldr	r1, [pc, #36]	; (201015f0 <input0_for_setcontrolline_proc+0x3c>)
201015ca:	4a09      	ldr	r2, [pc, #36]	; (201015f0 <input0_for_setcontrolline_proc+0x3c>)
201015cc:	2380      	movs	r3, #128	; 0x80
201015ce:	005b      	lsls	r3, r3, #1
201015d0:	58d3      	ldr	r3, [r2, r3]
201015d2:	2202      	movs	r2, #2
201015d4:	431a      	orrs	r2, r3
201015d6:	2380      	movs	r3, #128	; 0x80
201015d8:	005b      	lsls	r3, r3, #1
201015da:	50ca      	str	r2, [r1, r3]
201015dc:	4b05      	ldr	r3, [pc, #20]	; (201015f4 <input0_for_setcontrolline_proc+0x40>)
201015de:	4a06      	ldr	r2, [pc, #24]	; (201015f8 <input0_for_setcontrolline_proc+0x44>)
201015e0:	601a      	str	r2, [r3, #0]
201015e2:	46c0      	nop			; (mov r8, r8)
201015e4:	46bd      	mov	sp, r7
201015e6:	bd80      	pop	{r7, pc}
201015e8:	20000044 	.word	0x20000044
201015ec:	20101b04 	.word	0x20101b04
201015f0:	40010000 	.word	0x40010000
201015f4:	20000020 	.word	0x20000020
201015f8:	20101105 	.word	0x20101105

201015fc <setup0_proc>:
201015fc:	b580      	push	{r7, lr}
201015fe:	b084      	sub	sp, #16
20101600:	af00      	add	r7, sp, #0
20101602:	4a47      	ldr	r2, [pc, #284]	; (20101720 <setup0_proc+0x124>)
20101604:	23c6      	movs	r3, #198	; 0xc6
20101606:	005b      	lsls	r3, r3, #1
20101608:	58d3      	ldr	r3, [r2, r3]
2010160a:	60bb      	str	r3, [r7, #8]
2010160c:	2300      	movs	r3, #0
2010160e:	60fb      	str	r3, [r7, #12]
20101610:	e00c      	b.n	2010162c <setup0_proc+0x30>
20101612:	4a43      	ldr	r2, [pc, #268]	; (20101720 <setup0_proc+0x124>)
20101614:	23c0      	movs	r3, #192	; 0xc0
20101616:	005b      	lsls	r3, r3, #1
20101618:	58d3      	ldr	r3, [r2, r3]
2010161a:	b2d9      	uxtb	r1, r3
2010161c:	4a41      	ldr	r2, [pc, #260]	; (20101724 <setup0_proc+0x128>)
2010161e:	68fb      	ldr	r3, [r7, #12]
20101620:	18d3      	adds	r3, r2, r3
20101622:	1c0a      	adds	r2, r1, #0
20101624:	701a      	strb	r2, [r3, #0]
20101626:	68fb      	ldr	r3, [r7, #12]
20101628:	3301      	adds	r3, #1
2010162a:	60fb      	str	r3, [r7, #12]
2010162c:	68fb      	ldr	r3, [r7, #12]
2010162e:	2b07      	cmp	r3, #7
20101630:	ddef      	ble.n	20101612 <setup0_proc+0x16>
20101632:	4a3b      	ldr	r2, [pc, #236]	; (20101720 <setup0_proc+0x124>)
20101634:	23c8      	movs	r3, #200	; 0xc8
20101636:	005b      	lsls	r3, r3, #1
20101638:	2101      	movs	r1, #1
2010163a:	50d1      	str	r1, [r2, r3]
2010163c:	4b39      	ldr	r3, [pc, #228]	; (20101724 <setup0_proc+0x128>)
2010163e:	785b      	ldrb	r3, [r3, #1]
20101640:	607b      	str	r3, [r7, #4]
20101642:	687b      	ldr	r3, [r7, #4]
20101644:	3b05      	subs	r3, #5
20101646:	2b1d      	cmp	r3, #29
20101648:	d866      	bhi.n	20101718 <setup0_proc+0x11c>
2010164a:	009a      	lsls	r2, r3, #2
2010164c:	4b36      	ldr	r3, [pc, #216]	; (20101728 <setup0_proc+0x12c>)
2010164e:	18d3      	adds	r3, r2, r3
20101650:	681b      	ldr	r3, [r3, #0]
20101652:	469f      	mov	pc, r3
20101654:	f7ff fd8e 	bl	20101174 <plan_ZeroLength_IN_proc>
20101658:	4b34      	ldr	r3, [pc, #208]	; (2010172c <setup0_proc+0x130>)
2010165a:	4a35      	ldr	r2, [pc, #212]	; (20101730 <setup0_proc+0x134>)
2010165c:	601a      	str	r2, [r3, #0]
2010165e:	4b31      	ldr	r3, [pc, #196]	; (20101724 <setup0_proc+0x128>)
20101660:	789b      	ldrb	r3, [r3, #2]
20101662:	b29a      	uxth	r2, r3
20101664:	4b33      	ldr	r3, [pc, #204]	; (20101734 <setup0_proc+0x138>)
20101666:	801a      	strh	r2, [r3, #0]
20101668:	4b33      	ldr	r3, [pc, #204]	; (20101738 <setup0_proc+0x13c>)
2010166a:	0018      	movs	r0, r3
2010166c:	f7ff f942 	bl	201008f4 <xprintf>
20101670:	e052      	b.n	20101718 <setup0_proc+0x11c>
20101672:	4b32      	ldr	r3, [pc, #200]	; (2010173c <setup0_proc+0x140>)
20101674:	4a32      	ldr	r2, [pc, #200]	; (20101740 <setup0_proc+0x144>)
20101676:	601a      	str	r2, [r3, #0]
20101678:	4929      	ldr	r1, [pc, #164]	; (20101720 <setup0_proc+0x124>)
2010167a:	4a29      	ldr	r2, [pc, #164]	; (20101720 <setup0_proc+0x124>)
2010167c:	2380      	movs	r3, #128	; 0x80
2010167e:	005b      	lsls	r3, r3, #1
20101680:	58d3      	ldr	r3, [r2, r3]
20101682:	2202      	movs	r2, #2
20101684:	431a      	orrs	r2, r3
20101686:	2380      	movs	r3, #128	; 0x80
20101688:	005b      	lsls	r3, r3, #1
2010168a:	50ca      	str	r2, [r1, r3]
2010168c:	4b2d      	ldr	r3, [pc, #180]	; (20101744 <setup0_proc+0x148>)
2010168e:	0018      	movs	r0, r3
20101690:	f7ff f930 	bl	201008f4 <xprintf>
20101694:	e040      	b.n	20101718 <setup0_proc+0x11c>
20101696:	4b2c      	ldr	r3, [pc, #176]	; (20101748 <setup0_proc+0x14c>)
20101698:	2207      	movs	r2, #7
2010169a:	601a      	str	r2, [r3, #0]
2010169c:	4b2b      	ldr	r3, [pc, #172]	; (2010174c <setup0_proc+0x150>)
2010169e:	4a2c      	ldr	r2, [pc, #176]	; (20101750 <setup0_proc+0x154>)
201016a0:	601a      	str	r2, [r3, #0]
201016a2:	491f      	ldr	r1, [pc, #124]	; (20101720 <setup0_proc+0x124>)
201016a4:	4a1e      	ldr	r2, [pc, #120]	; (20101720 <setup0_proc+0x124>)
201016a6:	2380      	movs	r3, #128	; 0x80
201016a8:	005b      	lsls	r3, r3, #1
201016aa:	58d3      	ldr	r3, [r2, r3]
201016ac:	2204      	movs	r2, #4
201016ae:	4393      	bics	r3, r2
201016b0:	001a      	movs	r2, r3
201016b2:	2380      	movs	r3, #128	; 0x80
201016b4:	005b      	lsls	r3, r3, #1
201016b6:	50ca      	str	r2, [r1, r3]
201016b8:	f7ff fd7c 	bl	201011b4 <plan_Data_IN_proc>
201016bc:	4b25      	ldr	r3, [pc, #148]	; (20101754 <setup0_proc+0x158>)
201016be:	0018      	movs	r0, r3
201016c0:	f7ff f918 	bl	201008f4 <xprintf>
201016c4:	e028      	b.n	20101718 <setup0_proc+0x11c>
201016c6:	4b17      	ldr	r3, [pc, #92]	; (20101724 <setup0_proc+0x128>)
201016c8:	789b      	ldrb	r3, [r3, #2]
201016ca:	b29a      	uxth	r2, r3
201016cc:	4b22      	ldr	r3, [pc, #136]	; (20101758 <setup0_proc+0x15c>)
201016ce:	801a      	strh	r2, [r3, #0]
201016d0:	f7ff fd50 	bl	20101174 <plan_ZeroLength_IN_proc>
201016d4:	4b15      	ldr	r3, [pc, #84]	; (2010172c <setup0_proc+0x130>)
201016d6:	4a21      	ldr	r2, [pc, #132]	; (2010175c <setup0_proc+0x160>)
201016d8:	601a      	str	r2, [r3, #0]
201016da:	4b21      	ldr	r3, [pc, #132]	; (20101760 <setup0_proc+0x164>)
201016dc:	0018      	movs	r0, r3
201016de:	f7ff f909 	bl	201008f4 <xprintf>
201016e2:	e019      	b.n	20101718 <setup0_proc+0x11c>
201016e4:	4b0f      	ldr	r3, [pc, #60]	; (20101724 <setup0_proc+0x128>)
201016e6:	789b      	ldrb	r3, [r3, #2]
201016e8:	b29a      	uxth	r2, r3
201016ea:	4b1e      	ldr	r3, [pc, #120]	; (20101764 <setup0_proc+0x168>)
201016ec:	801a      	strh	r2, [r3, #0]
201016ee:	f7ff fd41 	bl	20101174 <plan_ZeroLength_IN_proc>
201016f2:	4b0e      	ldr	r3, [pc, #56]	; (2010172c <setup0_proc+0x130>)
201016f4:	4a1c      	ldr	r2, [pc, #112]	; (20101768 <setup0_proc+0x16c>)
201016f6:	601a      	str	r2, [r3, #0]
201016f8:	4b1a      	ldr	r3, [pc, #104]	; (20101764 <setup0_proc+0x168>)
201016fa:	881b      	ldrh	r3, [r3, #0]
201016fc:	001a      	movs	r2, r3
201016fe:	4b1b      	ldr	r3, [pc, #108]	; (2010176c <setup0_proc+0x170>)
20101700:	0011      	movs	r1, r2
20101702:	0018      	movs	r0, r3
20101704:	f7ff f8f6 	bl	201008f4 <xprintf>
20101708:	e006      	b.n	20101718 <setup0_proc+0x11c>
2010170a:	4b19      	ldr	r3, [pc, #100]	; (20101770 <setup0_proc+0x174>)
2010170c:	0018      	movs	r0, r3
2010170e:	f7ff f8f1 	bl	201008f4 <xprintf>
20101712:	f7ff fe07 	bl	20101324 <get_descriptor_proc>
20101716:	46c0      	nop			; (mov r8, r8)
20101718:	46c0      	nop			; (mov r8, r8)
2010171a:	46bd      	mov	sp, r7
2010171c:	b004      	add	sp, #16
2010171e:	bd80      	pop	{r7, pc}
20101720:	40010000 	.word	0x40010000
20101724:	20000054 	.word	0x20000054
20101728:	20101ba0 	.word	0x20101ba0
2010172c:	20000020 	.word	0x20000020
20101730:	201015b5 	.word	0x201015b5
20101734:	20000044 	.word	0x20000044
20101738:	20101b24 	.word	0x20101b24
2010173c:	20000024 	.word	0x20000024
20101740:	201014e9 	.word	0x201014e9
20101744:	20101b40 	.word	0x20101b40
20101748:	2000005c 	.word	0x2000005c
2010174c:	20000060 	.word	0x20000060
20101750:	20000048 	.word	0x20000048
20101754:	20101b54 	.word	0x20101b54
20101758:	20000042 	.word	0x20000042
2010175c:	2010146d 	.word	0x2010146d
20101760:	20101b68 	.word	0x20101b68
20101764:	20000040 	.word	0x20000040
20101768:	20101429 	.word	0x20101429
2010176c:	20101b7c 	.word	0x20101b7c
20101770:	20101b90 	.word	0x20101b90

20101774 <__aeabi_uidiv>:
20101774:	2200      	movs	r2, #0
20101776:	0843      	lsrs	r3, r0, #1
20101778:	428b      	cmp	r3, r1
2010177a:	d374      	bcc.n	20101866 <__aeabi_uidiv+0xf2>
2010177c:	0903      	lsrs	r3, r0, #4
2010177e:	428b      	cmp	r3, r1
20101780:	d35f      	bcc.n	20101842 <__aeabi_uidiv+0xce>
20101782:	0a03      	lsrs	r3, r0, #8
20101784:	428b      	cmp	r3, r1
20101786:	d344      	bcc.n	20101812 <__aeabi_uidiv+0x9e>
20101788:	0b03      	lsrs	r3, r0, #12
2010178a:	428b      	cmp	r3, r1
2010178c:	d328      	bcc.n	201017e0 <__aeabi_uidiv+0x6c>
2010178e:	0c03      	lsrs	r3, r0, #16
20101790:	428b      	cmp	r3, r1
20101792:	d30d      	bcc.n	201017b0 <__aeabi_uidiv+0x3c>
20101794:	22ff      	movs	r2, #255	; 0xff
20101796:	0209      	lsls	r1, r1, #8
20101798:	ba12      	rev	r2, r2
2010179a:	0c03      	lsrs	r3, r0, #16
2010179c:	428b      	cmp	r3, r1
2010179e:	d302      	bcc.n	201017a6 <__aeabi_uidiv+0x32>
201017a0:	1212      	asrs	r2, r2, #8
201017a2:	0209      	lsls	r1, r1, #8
201017a4:	d065      	beq.n	20101872 <__aeabi_uidiv+0xfe>
201017a6:	0b03      	lsrs	r3, r0, #12
201017a8:	428b      	cmp	r3, r1
201017aa:	d319      	bcc.n	201017e0 <__aeabi_uidiv+0x6c>
201017ac:	e000      	b.n	201017b0 <__aeabi_uidiv+0x3c>
201017ae:	0a09      	lsrs	r1, r1, #8
201017b0:	0bc3      	lsrs	r3, r0, #15
201017b2:	428b      	cmp	r3, r1
201017b4:	d301      	bcc.n	201017ba <__aeabi_uidiv+0x46>
201017b6:	03cb      	lsls	r3, r1, #15
201017b8:	1ac0      	subs	r0, r0, r3
201017ba:	4152      	adcs	r2, r2
201017bc:	0b83      	lsrs	r3, r0, #14
201017be:	428b      	cmp	r3, r1
201017c0:	d301      	bcc.n	201017c6 <__aeabi_uidiv+0x52>
201017c2:	038b      	lsls	r3, r1, #14
201017c4:	1ac0      	subs	r0, r0, r3
201017c6:	4152      	adcs	r2, r2
201017c8:	0b43      	lsrs	r3, r0, #13
201017ca:	428b      	cmp	r3, r1
201017cc:	d301      	bcc.n	201017d2 <__aeabi_uidiv+0x5e>
201017ce:	034b      	lsls	r3, r1, #13
201017d0:	1ac0      	subs	r0, r0, r3
201017d2:	4152      	adcs	r2, r2
201017d4:	0b03      	lsrs	r3, r0, #12
201017d6:	428b      	cmp	r3, r1
201017d8:	d301      	bcc.n	201017de <__aeabi_uidiv+0x6a>
201017da:	030b      	lsls	r3, r1, #12
201017dc:	1ac0      	subs	r0, r0, r3
201017de:	4152      	adcs	r2, r2
201017e0:	0ac3      	lsrs	r3, r0, #11
201017e2:	428b      	cmp	r3, r1
201017e4:	d301      	bcc.n	201017ea <__aeabi_uidiv+0x76>
201017e6:	02cb      	lsls	r3, r1, #11
201017e8:	1ac0      	subs	r0, r0, r3
201017ea:	4152      	adcs	r2, r2
201017ec:	0a83      	lsrs	r3, r0, #10
201017ee:	428b      	cmp	r3, r1
201017f0:	d301      	bcc.n	201017f6 <__aeabi_uidiv+0x82>
201017f2:	028b      	lsls	r3, r1, #10
201017f4:	1ac0      	subs	r0, r0, r3
201017f6:	4152      	adcs	r2, r2
201017f8:	0a43      	lsrs	r3, r0, #9
201017fa:	428b      	cmp	r3, r1
201017fc:	d301      	bcc.n	20101802 <__aeabi_uidiv+0x8e>
201017fe:	024b      	lsls	r3, r1, #9
20101800:	1ac0      	subs	r0, r0, r3
20101802:	4152      	adcs	r2, r2
20101804:	0a03      	lsrs	r3, r0, #8
20101806:	428b      	cmp	r3, r1
20101808:	d301      	bcc.n	2010180e <__aeabi_uidiv+0x9a>
2010180a:	020b      	lsls	r3, r1, #8
2010180c:	1ac0      	subs	r0, r0, r3
2010180e:	4152      	adcs	r2, r2
20101810:	d2cd      	bcs.n	201017ae <__aeabi_uidiv+0x3a>
20101812:	09c3      	lsrs	r3, r0, #7
20101814:	428b      	cmp	r3, r1
20101816:	d301      	bcc.n	2010181c <__aeabi_uidiv+0xa8>
20101818:	01cb      	lsls	r3, r1, #7
2010181a:	1ac0      	subs	r0, r0, r3
2010181c:	4152      	adcs	r2, r2
2010181e:	0983      	lsrs	r3, r0, #6
20101820:	428b      	cmp	r3, r1
20101822:	d301      	bcc.n	20101828 <__aeabi_uidiv+0xb4>
20101824:	018b      	lsls	r3, r1, #6
20101826:	1ac0      	subs	r0, r0, r3
20101828:	4152      	adcs	r2, r2
2010182a:	0943      	lsrs	r3, r0, #5
2010182c:	428b      	cmp	r3, r1
2010182e:	d301      	bcc.n	20101834 <__aeabi_uidiv+0xc0>
20101830:	014b      	lsls	r3, r1, #5
20101832:	1ac0      	subs	r0, r0, r3
20101834:	4152      	adcs	r2, r2
20101836:	0903      	lsrs	r3, r0, #4
20101838:	428b      	cmp	r3, r1
2010183a:	d301      	bcc.n	20101840 <__aeabi_uidiv+0xcc>
2010183c:	010b      	lsls	r3, r1, #4
2010183e:	1ac0      	subs	r0, r0, r3
20101840:	4152      	adcs	r2, r2
20101842:	08c3      	lsrs	r3, r0, #3
20101844:	428b      	cmp	r3, r1
20101846:	d301      	bcc.n	2010184c <__aeabi_uidiv+0xd8>
20101848:	00cb      	lsls	r3, r1, #3
2010184a:	1ac0      	subs	r0, r0, r3
2010184c:	4152      	adcs	r2, r2
2010184e:	0883      	lsrs	r3, r0, #2
20101850:	428b      	cmp	r3, r1
20101852:	d301      	bcc.n	20101858 <__aeabi_uidiv+0xe4>
20101854:	008b      	lsls	r3, r1, #2
20101856:	1ac0      	subs	r0, r0, r3
20101858:	4152      	adcs	r2, r2
2010185a:	0843      	lsrs	r3, r0, #1
2010185c:	428b      	cmp	r3, r1
2010185e:	d301      	bcc.n	20101864 <__aeabi_uidiv+0xf0>
20101860:	004b      	lsls	r3, r1, #1
20101862:	1ac0      	subs	r0, r0, r3
20101864:	4152      	adcs	r2, r2
20101866:	1a41      	subs	r1, r0, r1
20101868:	d200      	bcs.n	2010186c <__aeabi_uidiv+0xf8>
2010186a:	4601      	mov	r1, r0
2010186c:	4152      	adcs	r2, r2
2010186e:	4610      	mov	r0, r2
20101870:	4770      	bx	lr
20101872:	e7ff      	b.n	20101874 <__aeabi_uidiv+0x100>
20101874:	b501      	push	{r0, lr}
20101876:	2000      	movs	r0, #0
20101878:	f000 f806 	bl	20101888 <__aeabi_idiv0>
2010187c:	bd02      	pop	{r1, pc}
2010187e:	46c0      	nop			; (mov r8, r8)

20101880 <__aeabi_uidivmod>:
20101880:	2900      	cmp	r1, #0
20101882:	d0f7      	beq.n	20101874 <__aeabi_uidiv+0x100>
20101884:	e776      	b.n	20101774 <__aeabi_uidiv>
20101886:	4770      	bx	lr

20101888 <__aeabi_idiv0>:
20101888:	4770      	bx	lr
2010188a:	46c0      	nop			; (mov r8, r8)
2010188c:	64616572 	.word	0x64616572
20101890:	6f726620 	.word	0x6f726620
20101894:	7375206d 	.word	0x7375206d
20101898:	25203a62 	.word	0x25203a62
2010189c:	000a0d78 	.word	0x000a0d78
201018a0:	6c6c6568 	.word	0x6c6c6568
201018a4:	6f77206f 	.word	0x6f77206f
201018a8:	0d646c72 	.word	0x0d646c72
201018ac:	0000000a 	.word	0x0000000a
201018b0:	2010077e 	.word	0x2010077e
201018b4:	2010076c 	.word	0x2010076c
201018b8:	2010078a 	.word	0x2010078a
201018bc:	20100796 	.word	0x20100796
201018c0:	20100796 	.word	0x20100796
201018c4:	20100796 	.word	0x20100796
201018c8:	20100796 	.word	0x20100796
201018cc:	20100796 	.word	0x20100796
201018d0:	20100796 	.word	0x20100796
201018d4:	20100796 	.word	0x20100796
201018d8:	20100796 	.word	0x20100796
201018dc:	20100796 	.word	0x20100796
201018e0:	20100796 	.word	0x20100796
201018e4:	20100784 	.word	0x20100784
201018e8:	20100796 	.word	0x20100796
201018ec:	20100796 	.word	0x20100796
201018f0:	20100796 	.word	0x20100796
201018f4:	20100710 	.word	0x20100710
201018f8:	20100796 	.word	0x20100796
201018fc:	2010078a 	.word	0x2010078a
20101900:	20100796 	.word	0x20100796
20101904:	20100796 	.word	0x20100796
20101908:	20100790 	.word	0x20100790
2010190c:	6c383025 	.word	0x6c383025
20101910:	00002058 	.word	0x00002058
20101914:	32302520 	.word	0x32302520
20101918:	00000058 	.word	0x00000058
2010191c:	34302520 	.word	0x34302520
20101920:	00000058 	.word	0x00000058
20101924:	38302520 	.word	0x38302520
20101928:	0000584c 	.word	0x0000584c

2010192c <Virtual_Com_Port_DeviceDescriptor>:
2010192c:	02000112 40000002 57400483 02010200     .......@..@W....
2010193c:	00000103                                ....

20101940 <Virtual_Com_Port_ConfigDescriptor>:
20101940:	00430209 c0000102 00040932 02020100     ..C.....2.......
20101950:	24050001 05011000 01000124 02022404     ...$....$....$..
20101960:	00062405 82050701 ff001003 00010409     .$..............
20101970:	00000a02 03050700 00004002 02810507     .........@......
20101980:	00000040                                @...

20101984 <Virtual_Com_Port_StringLangID>:
20101984:	04090304                                ....

20101988 <Virtual_Com_Port_StringVendor>:
20101988:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
20101998:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
201019a8:	00630069 00000073                       i.c.s...

201019b0 <Virtual_Com_Port_StringProduct>:
201019b0:	00530332 004d0054 00320033 00560020     2.S.T.M.3.2. .V.
201019c0:	00720069 00750074 006c0061 00430020     i.r.t.u.a.l. .C.
201019d0:	004d004f 00500020 0072006f 00200074     O.M. .P.o.r.t. .
201019e0:	00000020 45534552 000a0d54 3a307065      ...RESET...ep0:
201019f0:	75746573 00003a70 3a307065 0a0d6e69     setup:..ep0:in..
20101a00:	00000000 3a307065 0d74756f 0000000a     ....ep0:out.....
20101a10:	3a317065 0a0d6e69 00000000 3a317065     ep1:in......ep1:
20101a20:	0d74756f 0000000a 3a337065 0a0d6e69     out.....ep3:in..
20101a30:	00000000 3a337065 0d74756f 0000000a     ....ep3:out.....
20101a40:	74697277 206e6574 2064253d 65747962     written =%d byte
20101a50:	000d0a73 6e656c20 2064253d 00000000     s... len=%d ....
20101a60:	73616c20 64253d74 00000020 49564544      last=%d ...DEVI
20101a70:	0a0d4543 00000000 4c415551 45494649     CE......QUALIFIE
20101a80:	000a0d52 464e4f43 52554749 4f495441     R...CONFIGURATIO
20101a90:	000a0d4e 49525453 0a0d474e 00000000     N...STRING......
20101aa0:	20746573 2077656e 666e6f63 72756769     set new configur
20101ab0:	6f697461 6425206e 00000a0d 20746573     ation %d....set 
20101ac0:	656e696c 646f6320 20676e69 636f7270     line coding proc
20101ad0:	65673a20 64252074 74796220 0a0d7365      :get %d bytes..
20101ae0:	00000000 65646f62 65746172 0d64253d     ....boderate=%d.
20101af0:	0000000a 61746164 73746962 0d64253d     ....databits=%d.
20101b00:	0000000a 20746573 2077656e 746e6f63     ....set new cont
20101b10:	206c6f72 656e696c 61747320 25206574     rol line state %
20101b20:	000a0d64 5f544553 544e4f43 5f4c4f52     d...SET_CONTROL_
20101b30:	454e494c 4154535f 0a0d4554 00000000     LINE_STATE......
20101b40:	5f544553 454e494c 444f435f 0d474e49     SET_LINE_CODING.
20101b50:	0000000a 5f544547 454e494c 444f435f     ....GET_LINE_COD
20101b60:	0d474e49 0000000a 5f544553 464e4f43     ING.....SET_CONF
20101b70:	52554749 4f495441 000a0d4e 5f544553     IGURATION...SET_
20101b80:	52444441 20535345 0a0d6425 00000000     ADDRESS %d......
20101b90:	5f544547 43534544 54504952 003a524f     GET_DESCRIPTOR:.
20101ba0:	201016e4 2010170a 20101718 20101718     ... ... ... ... 
20101bb0:	201016c6 20101718 20101718 20101718     ... ... ... ... 
20101bc0:	20101718 20101718 20101718 20101718     ... ... ... ... 
20101bd0:	20101718 20101718 20101718 20101718     ... ... ... ... 
20101be0:	20101718 20101718 20101718 20101718     ... ... ... ... 
20101bf0:	20101718 20101718 20101718 20101718     ... ... ... ... 
20101c00:	20101718 20101718 20101718 20101672     ... ... ... r.. 
20101c10:	20101696 20101654                       ... T.. 
