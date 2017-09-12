
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	af00      	add	r7, sp, #0
20100004:	f000 fa80 	bl	20100508 <SystemInit>
20100008:	46c0      	nop			; (mov r8, r8)
2010000a:	4b10      	ldr	r3, [pc, #64]	; (2010004c <main+0x4c>)
2010000c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010000e:	2202      	movs	r2, #2
20100010:	4013      	ands	r3, r2
20100012:	d0fa      	beq.n	2010000a <main+0xa>
20100014:	4b0d      	ldr	r3, [pc, #52]	; (2010004c <main+0x4c>)
20100016:	2200      	movs	r2, #0
20100018:	655a      	str	r2, [r3, #84]	; 0x54
2010001a:	4b0d      	ldr	r3, [pc, #52]	; (20100050 <main+0x50>)
2010001c:	4a0c      	ldr	r2, [pc, #48]	; (20100050 <main+0x50>)
2010001e:	6812      	ldr	r2, [r2, #0]
20100020:	2140      	movs	r1, #64	; 0x40
20100022:	430a      	orrs	r2, r1
20100024:	601a      	str	r2, [r3, #0]
20100026:	f000 faa1 	bl	2010056c <adc_dma_start>
2010002a:	f000 fab3 	bl	20100594 <adc_dma_wait>
2010002e:	4b08      	ldr	r3, [pc, #32]	; (20100050 <main+0x50>)
20100030:	4a07      	ldr	r2, [pc, #28]	; (20100050 <main+0x50>)
20100032:	6812      	ldr	r2, [r2, #0]
20100034:	2140      	movs	r1, #64	; 0x40
20100036:	438a      	bics	r2, r1
20100038:	601a      	str	r2, [r3, #0]
2010003a:	4a06      	ldr	r2, [pc, #24]	; (20100054 <main+0x54>)
2010003c:	4b06      	ldr	r3, [pc, #24]	; (20100058 <main+0x58>)
2010003e:	447b      	add	r3, pc
20100040:	681b      	ldr	r3, [r3, #0]
20100042:	051b      	lsls	r3, r3, #20
20100044:	0d1b      	lsrs	r3, r3, #20
20100046:	6053      	str	r3, [r2, #4]
20100048:	e7de      	b.n	20100008 <main+0x8>
2010004a:	46c0      	nop			; (mov r8, r8)
2010004c:	40098000 	.word	0x40098000
20100050:	400b8000 	.word	0x400b8000
20100054:	40090000 	.word	0x40090000
20100058:	000009be 	.word	0x000009be

2010005c <PortConfig>:
2010005c:	b580      	push	{r7, lr}
2010005e:	af00      	add	r7, sp, #0
20100060:	4b42      	ldr	r3, [pc, #264]	; (2010016c <PortConfig+0x110>)
20100062:	4a42      	ldr	r2, [pc, #264]	; (2010016c <PortConfig+0x110>)
20100064:	69d2      	ldr	r2, [r2, #28]
20100066:	2180      	movs	r1, #128	; 0x80
20100068:	0389      	lsls	r1, r1, #14
2010006a:	430a      	orrs	r2, r1
2010006c:	61da      	str	r2, [r3, #28]
2010006e:	4b40      	ldr	r3, [pc, #256]	; (20100170 <PortConfig+0x114>)
20100070:	4a3f      	ldr	r2, [pc, #252]	; (20100170 <PortConfig+0x114>)
20100072:	6892      	ldr	r2, [r2, #8]
20100074:	493f      	ldr	r1, [pc, #252]	; (20100174 <PortConfig+0x118>)
20100076:	400a      	ands	r2, r1
20100078:	609a      	str	r2, [r3, #8]
2010007a:	4b3d      	ldr	r3, [pc, #244]	; (20100170 <PortConfig+0x114>)
2010007c:	4a3c      	ldr	r2, [pc, #240]	; (20100170 <PortConfig+0x114>)
2010007e:	6892      	ldr	r2, [r2, #8]
20100080:	493d      	ldr	r1, [pc, #244]	; (20100178 <PortConfig+0x11c>)
20100082:	430a      	orrs	r2, r1
20100084:	609a      	str	r2, [r3, #8]
20100086:	4b3a      	ldr	r3, [pc, #232]	; (20100170 <PortConfig+0x114>)
20100088:	4a39      	ldr	r2, [pc, #228]	; (20100170 <PortConfig+0x114>)
2010008a:	6852      	ldr	r2, [r2, #4]
2010008c:	21fc      	movs	r1, #252	; 0xfc
2010008e:	0109      	lsls	r1, r1, #4
20100090:	430a      	orrs	r2, r1
20100092:	605a      	str	r2, [r3, #4]
20100094:	4b36      	ldr	r3, [pc, #216]	; (20100170 <PortConfig+0x114>)
20100096:	4a36      	ldr	r2, [pc, #216]	; (20100170 <PortConfig+0x114>)
20100098:	68d2      	ldr	r2, [r2, #12]
2010009a:	21fc      	movs	r1, #252	; 0xfc
2010009c:	0109      	lsls	r1, r1, #4
2010009e:	430a      	orrs	r2, r1
201000a0:	60da      	str	r2, [r3, #12]
201000a2:	4b33      	ldr	r3, [pc, #204]	; (20100170 <PortConfig+0x114>)
201000a4:	4a32      	ldr	r2, [pc, #200]	; (20100170 <PortConfig+0x114>)
201000a6:	6992      	ldr	r2, [r2, #24]
201000a8:	4934      	ldr	r1, [pc, #208]	; (2010017c <PortConfig+0x120>)
201000aa:	430a      	orrs	r2, r1
201000ac:	619a      	str	r2, [r3, #24]
201000ae:	4b2f      	ldr	r3, [pc, #188]	; (2010016c <PortConfig+0x110>)
201000b0:	4a2e      	ldr	r2, [pc, #184]	; (2010016c <PortConfig+0x110>)
201000b2:	69d2      	ldr	r2, [r2, #28]
201000b4:	2180      	movs	r1, #128	; 0x80
201000b6:	0489      	lsls	r1, r1, #18
201000b8:	430a      	orrs	r2, r1
201000ba:	61da      	str	r2, [r3, #28]
201000bc:	4b30      	ldr	r3, [pc, #192]	; (20100180 <PortConfig+0x124>)
201000be:	4a30      	ldr	r2, [pc, #192]	; (20100180 <PortConfig+0x124>)
201000c0:	68d2      	ldr	r2, [r2, #12]
201000c2:	2102      	movs	r1, #2
201000c4:	438a      	bics	r2, r1
201000c6:	60da      	str	r2, [r3, #12]
201000c8:	4b28      	ldr	r3, [pc, #160]	; (2010016c <PortConfig+0x110>)
201000ca:	4a28      	ldr	r2, [pc, #160]	; (2010016c <PortConfig+0x110>)
201000cc:	69d2      	ldr	r2, [r2, #28]
201000ce:	2180      	movs	r1, #128	; 0x80
201000d0:	0449      	lsls	r1, r1, #17
201000d2:	430a      	orrs	r2, r1
201000d4:	61da      	str	r2, [r3, #28]
201000d6:	4b2b      	ldr	r3, [pc, #172]	; (20100184 <PortConfig+0x128>)
201000d8:	4a2a      	ldr	r2, [pc, #168]	; (20100184 <PortConfig+0x128>)
201000da:	6892      	ldr	r2, [r2, #8]
201000dc:	492a      	ldr	r1, [pc, #168]	; (20100188 <PortConfig+0x12c>)
201000de:	400a      	ands	r2, r1
201000e0:	609a      	str	r2, [r3, #8]
201000e2:	4b28      	ldr	r3, [pc, #160]	; (20100184 <PortConfig+0x128>)
201000e4:	4a27      	ldr	r2, [pc, #156]	; (20100184 <PortConfig+0x128>)
201000e6:	6892      	ldr	r2, [r2, #8]
201000e8:	21a0      	movs	r1, #160	; 0xa0
201000ea:	02c9      	lsls	r1, r1, #11
201000ec:	430a      	orrs	r2, r1
201000ee:	609a      	str	r2, [r3, #8]
201000f0:	4b24      	ldr	r3, [pc, #144]	; (20100184 <PortConfig+0x128>)
201000f2:	4a24      	ldr	r2, [pc, #144]	; (20100184 <PortConfig+0x128>)
201000f4:	68d2      	ldr	r2, [r2, #12]
201000f6:	21c0      	movs	r1, #192	; 0xc0
201000f8:	0089      	lsls	r1, r1, #2
201000fa:	430a      	orrs	r2, r1
201000fc:	60da      	str	r2, [r3, #12]
201000fe:	4b21      	ldr	r3, [pc, #132]	; (20100184 <PortConfig+0x128>)
20100100:	4a20      	ldr	r2, [pc, #128]	; (20100184 <PortConfig+0x128>)
20100102:	6992      	ldr	r2, [r2, #24]
20100104:	21c0      	movs	r1, #192	; 0xc0
20100106:	0309      	lsls	r1, r1, #12
20100108:	430a      	orrs	r2, r1
2010010a:	619a      	str	r2, [r3, #24]
2010010c:	4b1d      	ldr	r3, [pc, #116]	; (20100184 <PortConfig+0x128>)
2010010e:	4a1d      	ldr	r2, [pc, #116]	; (20100184 <PortConfig+0x128>)
20100110:	6852      	ldr	r2, [r2, #4]
20100112:	2180      	movs	r1, #128	; 0x80
20100114:	0089      	lsls	r1, r1, #2
20100116:	430a      	orrs	r2, r1
20100118:	605a      	str	r2, [r3, #4]
2010011a:	4b1a      	ldr	r3, [pc, #104]	; (20100184 <PortConfig+0x128>)
2010011c:	4a19      	ldr	r2, [pc, #100]	; (20100184 <PortConfig+0x128>)
2010011e:	6852      	ldr	r2, [r2, #4]
20100120:	491a      	ldr	r1, [pc, #104]	; (2010018c <PortConfig+0x130>)
20100122:	400a      	ands	r2, r1
20100124:	605a      	str	r2, [r3, #4]
20100126:	4b11      	ldr	r3, [pc, #68]	; (2010016c <PortConfig+0x110>)
20100128:	4a10      	ldr	r2, [pc, #64]	; (2010016c <PortConfig+0x110>)
2010012a:	69d2      	ldr	r2, [r2, #28]
2010012c:	2180      	movs	r1, #128	; 0x80
2010012e:	0409      	lsls	r1, r1, #16
20100130:	430a      	orrs	r2, r1
20100132:	61da      	str	r2, [r3, #28]
20100134:	4b16      	ldr	r3, [pc, #88]	; (20100190 <PortConfig+0x134>)
20100136:	2200      	movs	r2, #0
20100138:	609a      	str	r2, [r3, #8]
2010013a:	4b15      	ldr	r3, [pc, #84]	; (20100190 <PortConfig+0x134>)
2010013c:	2200      	movs	r2, #0
2010013e:	601a      	str	r2, [r3, #0]
20100140:	4b13      	ldr	r3, [pc, #76]	; (20100190 <PortConfig+0x134>)
20100142:	4a13      	ldr	r2, [pc, #76]	; (20100190 <PortConfig+0x134>)
20100144:	6852      	ldr	r2, [r2, #4]
20100146:	2160      	movs	r1, #96	; 0x60
20100148:	430a      	orrs	r2, r1
2010014a:	605a      	str	r2, [r3, #4]
2010014c:	4b10      	ldr	r3, [pc, #64]	; (20100190 <PortConfig+0x134>)
2010014e:	4a10      	ldr	r2, [pc, #64]	; (20100190 <PortConfig+0x134>)
20100150:	68d2      	ldr	r2, [r2, #12]
20100152:	2160      	movs	r1, #96	; 0x60
20100154:	430a      	orrs	r2, r1
20100156:	60da      	str	r2, [r3, #12]
20100158:	4b0d      	ldr	r3, [pc, #52]	; (20100190 <PortConfig+0x134>)
2010015a:	4a0d      	ldr	r2, [pc, #52]	; (20100190 <PortConfig+0x134>)
2010015c:	6992      	ldr	r2, [r2, #24]
2010015e:	21f0      	movs	r1, #240	; 0xf0
20100160:	0189      	lsls	r1, r1, #6
20100162:	430a      	orrs	r2, r1
20100164:	619a      	str	r2, [r3, #24]
20100166:	46c0      	nop			; (mov r8, r8)
20100168:	46bd      	mov	sp, r7
2010016a:	bd80      	pop	{r7, pc}
2010016c:	40020000 	.word	0x40020000
20100170:	400a8000 	.word	0x400a8000
20100174:	ff000fff 	.word	0xff000fff
20100178:	00aaa000 	.word	0x00aaa000
2010017c:	00fff000 	.word	0x00fff000
20100180:	400c8000 	.word	0x400c8000
20100184:	400c0000 	.word	0x400c0000
20100188:	fff0ffff 	.word	0xfff0ffff
2010018c:	fffffeff 	.word	0xfffffeff
20100190:	400b8000 	.word	0x400b8000

20100194 <ClkConfig>:
20100194:	b580      	push	{r7, lr}
20100196:	af00      	add	r7, sp, #0
20100198:	4b18      	ldr	r3, [pc, #96]	; (201001fc <ClkConfig+0x68>)
2010019a:	4a18      	ldr	r2, [pc, #96]	; (201001fc <ClkConfig+0x68>)
2010019c:	6892      	ldr	r2, [r2, #8]
2010019e:	2101      	movs	r1, #1
201001a0:	430a      	orrs	r2, r1
201001a2:	609a      	str	r2, [r3, #8]
201001a4:	46c0      	nop			; (mov r8, r8)
201001a6:	4b15      	ldr	r3, [pc, #84]	; (201001fc <ClkConfig+0x68>)
201001a8:	681b      	ldr	r3, [r3, #0]
201001aa:	2204      	movs	r2, #4
201001ac:	4013      	ands	r3, r2
201001ae:	d0fa      	beq.n	201001a6 <ClkConfig+0x12>
201001b0:	4b12      	ldr	r3, [pc, #72]	; (201001fc <ClkConfig+0x68>)
201001b2:	4a12      	ldr	r2, [pc, #72]	; (201001fc <ClkConfig+0x68>)
201001b4:	68d2      	ldr	r2, [r2, #12]
201001b6:	2102      	movs	r1, #2
201001b8:	430a      	orrs	r2, r1
201001ba:	60da      	str	r2, [r3, #12]
201001bc:	4b0f      	ldr	r3, [pc, #60]	; (201001fc <ClkConfig+0x68>)
201001be:	4a10      	ldr	r2, [pc, #64]	; (20100200 <ClkConfig+0x6c>)
201001c0:	605a      	str	r2, [r3, #4]
201001c2:	46c0      	nop			; (mov r8, r8)
201001c4:	4b0d      	ldr	r3, [pc, #52]	; (201001fc <ClkConfig+0x68>)
201001c6:	681b      	ldr	r3, [r3, #0]
201001c8:	2202      	movs	r2, #2
201001ca:	4013      	ands	r3, r2
201001cc:	d0fa      	beq.n	201001c4 <ClkConfig+0x30>
201001ce:	4b0d      	ldr	r3, [pc, #52]	; (20100204 <ClkConfig+0x70>)
201001d0:	4a0c      	ldr	r2, [pc, #48]	; (20100204 <ClkConfig+0x70>)
201001d2:	6812      	ldr	r2, [r2, #0]
201001d4:	2120      	movs	r1, #32
201001d6:	430a      	orrs	r2, r1
201001d8:	601a      	str	r2, [r3, #0]
201001da:	4b08      	ldr	r3, [pc, #32]	; (201001fc <ClkConfig+0x68>)
201001dc:	4a07      	ldr	r2, [pc, #28]	; (201001fc <ClkConfig+0x68>)
201001de:	68d2      	ldr	r2, [r2, #12]
201001e0:	2180      	movs	r1, #128	; 0x80
201001e2:	0049      	lsls	r1, r1, #1
201001e4:	430a      	orrs	r2, r1
201001e6:	60da      	str	r2, [r3, #12]
201001e8:	4b04      	ldr	r3, [pc, #16]	; (201001fc <ClkConfig+0x68>)
201001ea:	4a04      	ldr	r2, [pc, #16]	; (201001fc <ClkConfig+0x68>)
201001ec:	68d2      	ldr	r2, [r2, #12]
201001ee:	2104      	movs	r1, #4
201001f0:	430a      	orrs	r2, r1
201001f2:	60da      	str	r2, [r3, #12]
201001f4:	46c0      	nop			; (mov r8, r8)
201001f6:	46bd      	mov	sp, r7
201001f8:	bd80      	pop	{r7, pc}
201001fa:	46c0      	nop			; (mov r8, r8)
201001fc:	40020000 	.word	0x40020000
20100200:	00000e04 	.word	0x00000e04
20100204:	40018000 	.word	0x40018000

20100208 <TimerConfig>:
20100208:	b580      	push	{r7, lr}
2010020a:	af00      	add	r7, sp, #0
2010020c:	4b71      	ldr	r3, [pc, #452]	; (201003d4 <TimerConfig+0x1cc>)
2010020e:	4a71      	ldr	r2, [pc, #452]	; (201003d4 <TimerConfig+0x1cc>)
20100210:	69d2      	ldr	r2, [r2, #28]
20100212:	2180      	movs	r1, #128	; 0x80
20100214:	0309      	lsls	r1, r1, #12
20100216:	430a      	orrs	r2, r1
20100218:	61da      	str	r2, [r3, #28]
2010021a:	4b6e      	ldr	r3, [pc, #440]	; (201003d4 <TimerConfig+0x1cc>)
2010021c:	4a6d      	ldr	r2, [pc, #436]	; (201003d4 <TimerConfig+0x1cc>)
2010021e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100220:	2180      	movs	r1, #128	; 0x80
20100222:	04c9      	lsls	r1, r1, #19
20100224:	430a      	orrs	r2, r1
20100226:	629a      	str	r2, [r3, #40]	; 0x28
20100228:	4b6a      	ldr	r3, [pc, #424]	; (201003d4 <TimerConfig+0x1cc>)
2010022a:	4a6a      	ldr	r2, [pc, #424]	; (201003d4 <TimerConfig+0x1cc>)
2010022c:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010022e:	496a      	ldr	r1, [pc, #424]	; (201003d8 <TimerConfig+0x1d0>)
20100230:	400a      	ands	r2, r1
20100232:	629a      	str	r2, [r3, #40]	; 0x28
20100234:	4b69      	ldr	r3, [pc, #420]	; (201003dc <TimerConfig+0x1d4>)
20100236:	2200      	movs	r2, #0
20100238:	601a      	str	r2, [r3, #0]
2010023a:	4b68      	ldr	r3, [pc, #416]	; (201003dc <TimerConfig+0x1d4>)
2010023c:	2204      	movs	r2, #4
2010023e:	605a      	str	r2, [r3, #4]
20100240:	4b66      	ldr	r3, [pc, #408]	; (201003dc <TimerConfig+0x1d4>)
20100242:	4a67      	ldr	r2, [pc, #412]	; (201003e0 <TimerConfig+0x1d8>)
20100244:	609a      	str	r2, [r3, #8]
20100246:	4b65      	ldr	r3, [pc, #404]	; (201003dc <TimerConfig+0x1d4>)
20100248:	2280      	movs	r2, #128	; 0x80
2010024a:	0092      	lsls	r2, r2, #2
2010024c:	611a      	str	r2, [r3, #16]
2010024e:	4b63      	ldr	r3, [pc, #396]	; (201003dc <TimerConfig+0x1d4>)
20100250:	2280      	movs	r2, #128	; 0x80
20100252:	0092      	lsls	r2, r2, #2
20100254:	615a      	str	r2, [r3, #20]
20100256:	4b61      	ldr	r3, [pc, #388]	; (201003dc <TimerConfig+0x1d4>)
20100258:	2280      	movs	r2, #128	; 0x80
2010025a:	0092      	lsls	r2, r2, #2
2010025c:	619a      	str	r2, [r3, #24]
2010025e:	4b5f      	ldr	r3, [pc, #380]	; (201003dc <TimerConfig+0x1d4>)
20100260:	4a5e      	ldr	r2, [pc, #376]	; (201003dc <TimerConfig+0x1d4>)
20100262:	6a12      	ldr	r2, [r2, #32]
20100264:	495f      	ldr	r1, [pc, #380]	; (201003e4 <TimerConfig+0x1dc>)
20100266:	400a      	ands	r2, r1
20100268:	621a      	str	r2, [r3, #32]
2010026a:	4b5c      	ldr	r3, [pc, #368]	; (201003dc <TimerConfig+0x1d4>)
2010026c:	4a5b      	ldr	r2, [pc, #364]	; (201003dc <TimerConfig+0x1d4>)
2010026e:	6a12      	ldr	r2, [r2, #32]
20100270:	21e0      	movs	r1, #224	; 0xe0
20100272:	0109      	lsls	r1, r1, #4
20100274:	430a      	orrs	r2, r1
20100276:	621a      	str	r2, [r3, #32]
20100278:	4b58      	ldr	r3, [pc, #352]	; (201003dc <TimerConfig+0x1d4>)
2010027a:	4a58      	ldr	r2, [pc, #352]	; (201003dc <TimerConfig+0x1d4>)
2010027c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010027e:	210f      	movs	r1, #15
20100280:	438a      	bics	r2, r1
20100282:	631a      	str	r2, [r3, #48]	; 0x30
20100284:	4b55      	ldr	r3, [pc, #340]	; (201003dc <TimerConfig+0x1d4>)
20100286:	4a55      	ldr	r2, [pc, #340]	; (201003dc <TimerConfig+0x1d4>)
20100288:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010028a:	210c      	movs	r1, #12
2010028c:	430a      	orrs	r2, r1
2010028e:	631a      	str	r2, [r3, #48]	; 0x30
20100290:	4b52      	ldr	r3, [pc, #328]	; (201003dc <TimerConfig+0x1d4>)
20100292:	4a52      	ldr	r2, [pc, #328]	; (201003dc <TimerConfig+0x1d4>)
20100294:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100296:	2101      	movs	r1, #1
20100298:	430a      	orrs	r2, r1
2010029a:	631a      	str	r2, [r3, #48]	; 0x30
2010029c:	4b4f      	ldr	r3, [pc, #316]	; (201003dc <TimerConfig+0x1d4>)
2010029e:	4a4f      	ldr	r2, [pc, #316]	; (201003dc <TimerConfig+0x1d4>)
201002a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002a2:	4951      	ldr	r1, [pc, #324]	; (201003e8 <TimerConfig+0x1e0>)
201002a4:	400a      	ands	r2, r1
201002a6:	631a      	str	r2, [r3, #48]	; 0x30
201002a8:	4b4c      	ldr	r3, [pc, #304]	; (201003dc <TimerConfig+0x1d4>)
201002aa:	4a4c      	ldr	r2, [pc, #304]	; (201003dc <TimerConfig+0x1d4>)
201002ac:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002ae:	21c0      	movs	r1, #192	; 0xc0
201002b0:	0109      	lsls	r1, r1, #4
201002b2:	430a      	orrs	r2, r1
201002b4:	631a      	str	r2, [r3, #48]	; 0x30
201002b6:	4b49      	ldr	r3, [pc, #292]	; (201003dc <TimerConfig+0x1d4>)
201002b8:	4a48      	ldr	r2, [pc, #288]	; (201003dc <TimerConfig+0x1d4>)
201002ba:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002bc:	2180      	movs	r1, #128	; 0x80
201002be:	0049      	lsls	r1, r1, #1
201002c0:	430a      	orrs	r2, r1
201002c2:	631a      	str	r2, [r3, #48]	; 0x30
201002c4:	4b45      	ldr	r3, [pc, #276]	; (201003dc <TimerConfig+0x1d4>)
201002c6:	4a45      	ldr	r2, [pc, #276]	; (201003dc <TimerConfig+0x1d4>)
201002c8:	6a52      	ldr	r2, [r2, #36]	; 0x24
201002ca:	4946      	ldr	r1, [pc, #280]	; (201003e4 <TimerConfig+0x1dc>)
201002cc:	400a      	ands	r2, r1
201002ce:	625a      	str	r2, [r3, #36]	; 0x24
201002d0:	4b42      	ldr	r3, [pc, #264]	; (201003dc <TimerConfig+0x1d4>)
201002d2:	4a42      	ldr	r2, [pc, #264]	; (201003dc <TimerConfig+0x1d4>)
201002d4:	6a52      	ldr	r2, [r2, #36]	; 0x24
201002d6:	21e0      	movs	r1, #224	; 0xe0
201002d8:	0109      	lsls	r1, r1, #4
201002da:	430a      	orrs	r2, r1
201002dc:	625a      	str	r2, [r3, #36]	; 0x24
201002de:	4b3f      	ldr	r3, [pc, #252]	; (201003dc <TimerConfig+0x1d4>)
201002e0:	4a3e      	ldr	r2, [pc, #248]	; (201003dc <TimerConfig+0x1d4>)
201002e2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002e4:	210f      	movs	r1, #15
201002e6:	438a      	bics	r2, r1
201002e8:	635a      	str	r2, [r3, #52]	; 0x34
201002ea:	4b3c      	ldr	r3, [pc, #240]	; (201003dc <TimerConfig+0x1d4>)
201002ec:	4a3b      	ldr	r2, [pc, #236]	; (201003dc <TimerConfig+0x1d4>)
201002ee:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002f0:	210c      	movs	r1, #12
201002f2:	430a      	orrs	r2, r1
201002f4:	635a      	str	r2, [r3, #52]	; 0x34
201002f6:	4b39      	ldr	r3, [pc, #228]	; (201003dc <TimerConfig+0x1d4>)
201002f8:	4a38      	ldr	r2, [pc, #224]	; (201003dc <TimerConfig+0x1d4>)
201002fa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002fc:	2101      	movs	r1, #1
201002fe:	430a      	orrs	r2, r1
20100300:	635a      	str	r2, [r3, #52]	; 0x34
20100302:	4b36      	ldr	r3, [pc, #216]	; (201003dc <TimerConfig+0x1d4>)
20100304:	4a35      	ldr	r2, [pc, #212]	; (201003dc <TimerConfig+0x1d4>)
20100306:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100308:	4937      	ldr	r1, [pc, #220]	; (201003e8 <TimerConfig+0x1e0>)
2010030a:	400a      	ands	r2, r1
2010030c:	635a      	str	r2, [r3, #52]	; 0x34
2010030e:	4b33      	ldr	r3, [pc, #204]	; (201003dc <TimerConfig+0x1d4>)
20100310:	4a32      	ldr	r2, [pc, #200]	; (201003dc <TimerConfig+0x1d4>)
20100312:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100314:	21c0      	movs	r1, #192	; 0xc0
20100316:	0109      	lsls	r1, r1, #4
20100318:	430a      	orrs	r2, r1
2010031a:	635a      	str	r2, [r3, #52]	; 0x34
2010031c:	4b2f      	ldr	r3, [pc, #188]	; (201003dc <TimerConfig+0x1d4>)
2010031e:	4a2f      	ldr	r2, [pc, #188]	; (201003dc <TimerConfig+0x1d4>)
20100320:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100322:	2180      	movs	r1, #128	; 0x80
20100324:	0049      	lsls	r1, r1, #1
20100326:	430a      	orrs	r2, r1
20100328:	635a      	str	r2, [r3, #52]	; 0x34
2010032a:	4b2c      	ldr	r3, [pc, #176]	; (201003dc <TimerConfig+0x1d4>)
2010032c:	4a2b      	ldr	r2, [pc, #172]	; (201003dc <TimerConfig+0x1d4>)
2010032e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100330:	492c      	ldr	r1, [pc, #176]	; (201003e4 <TimerConfig+0x1dc>)
20100332:	400a      	ands	r2, r1
20100334:	629a      	str	r2, [r3, #40]	; 0x28
20100336:	4b29      	ldr	r3, [pc, #164]	; (201003dc <TimerConfig+0x1d4>)
20100338:	4a28      	ldr	r2, [pc, #160]	; (201003dc <TimerConfig+0x1d4>)
2010033a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010033c:	21e0      	movs	r1, #224	; 0xe0
2010033e:	0109      	lsls	r1, r1, #4
20100340:	430a      	orrs	r2, r1
20100342:	629a      	str	r2, [r3, #40]	; 0x28
20100344:	4b25      	ldr	r3, [pc, #148]	; (201003dc <TimerConfig+0x1d4>)
20100346:	4a25      	ldr	r2, [pc, #148]	; (201003dc <TimerConfig+0x1d4>)
20100348:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010034a:	210f      	movs	r1, #15
2010034c:	438a      	bics	r2, r1
2010034e:	639a      	str	r2, [r3, #56]	; 0x38
20100350:	4b22      	ldr	r3, [pc, #136]	; (201003dc <TimerConfig+0x1d4>)
20100352:	4a22      	ldr	r2, [pc, #136]	; (201003dc <TimerConfig+0x1d4>)
20100354:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100356:	210c      	movs	r1, #12
20100358:	430a      	orrs	r2, r1
2010035a:	639a      	str	r2, [r3, #56]	; 0x38
2010035c:	4b1f      	ldr	r3, [pc, #124]	; (201003dc <TimerConfig+0x1d4>)
2010035e:	4a1f      	ldr	r2, [pc, #124]	; (201003dc <TimerConfig+0x1d4>)
20100360:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100362:	2101      	movs	r1, #1
20100364:	430a      	orrs	r2, r1
20100366:	639a      	str	r2, [r3, #56]	; 0x38
20100368:	4b1c      	ldr	r3, [pc, #112]	; (201003dc <TimerConfig+0x1d4>)
2010036a:	4a1c      	ldr	r2, [pc, #112]	; (201003dc <TimerConfig+0x1d4>)
2010036c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010036e:	491e      	ldr	r1, [pc, #120]	; (201003e8 <TimerConfig+0x1e0>)
20100370:	400a      	ands	r2, r1
20100372:	639a      	str	r2, [r3, #56]	; 0x38
20100374:	4b19      	ldr	r3, [pc, #100]	; (201003dc <TimerConfig+0x1d4>)
20100376:	4a19      	ldr	r2, [pc, #100]	; (201003dc <TimerConfig+0x1d4>)
20100378:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010037a:	21c0      	movs	r1, #192	; 0xc0
2010037c:	0109      	lsls	r1, r1, #4
2010037e:	430a      	orrs	r2, r1
20100380:	639a      	str	r2, [r3, #56]	; 0x38
20100382:	4b16      	ldr	r3, [pc, #88]	; (201003dc <TimerConfig+0x1d4>)
20100384:	4a15      	ldr	r2, [pc, #84]	; (201003dc <TimerConfig+0x1d4>)
20100386:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100388:	2180      	movs	r1, #128	; 0x80
2010038a:	0049      	lsls	r1, r1, #1
2010038c:	430a      	orrs	r2, r1
2010038e:	639a      	str	r2, [r3, #56]	; 0x38
20100390:	4b12      	ldr	r3, [pc, #72]	; (201003dc <TimerConfig+0x1d4>)
20100392:	4a12      	ldr	r2, [pc, #72]	; (201003dc <TimerConfig+0x1d4>)
20100394:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100396:	21c8      	movs	r1, #200	; 0xc8
20100398:	01c9      	lsls	r1, r1, #7
2010039a:	430a      	orrs	r2, r1
2010039c:	641a      	str	r2, [r3, #64]	; 0x40
2010039e:	4b0f      	ldr	r3, [pc, #60]	; (201003dc <TimerConfig+0x1d4>)
201003a0:	4a0e      	ldr	r2, [pc, #56]	; (201003dc <TimerConfig+0x1d4>)
201003a2:	6c52      	ldr	r2, [r2, #68]	; 0x44
201003a4:	21c8      	movs	r1, #200	; 0xc8
201003a6:	01c9      	lsls	r1, r1, #7
201003a8:	430a      	orrs	r2, r1
201003aa:	645a      	str	r2, [r3, #68]	; 0x44
201003ac:	4b0b      	ldr	r3, [pc, #44]	; (201003dc <TimerConfig+0x1d4>)
201003ae:	4a0b      	ldr	r2, [pc, #44]	; (201003dc <TimerConfig+0x1d4>)
201003b0:	6c92      	ldr	r2, [r2, #72]	; 0x48
201003b2:	21c8      	movs	r1, #200	; 0xc8
201003b4:	01c9      	lsls	r1, r1, #7
201003b6:	430a      	orrs	r2, r1
201003b8:	649a      	str	r2, [r3, #72]	; 0x48
201003ba:	4b08      	ldr	r3, [pc, #32]	; (201003dc <TimerConfig+0x1d4>)
201003bc:	4a07      	ldr	r2, [pc, #28]	; (201003dc <TimerConfig+0x1d4>)
201003be:	6d92      	ldr	r2, [r2, #88]	; 0x58
201003c0:	21f0      	movs	r1, #240	; 0xf0
201003c2:	0149      	lsls	r1, r1, #5
201003c4:	430a      	orrs	r2, r1
201003c6:	659a      	str	r2, [r3, #88]	; 0x58
201003c8:	4b04      	ldr	r3, [pc, #16]	; (201003dc <TimerConfig+0x1d4>)
201003ca:	2201      	movs	r2, #1
201003cc:	60da      	str	r2, [r3, #12]
201003ce:	46c0      	nop			; (mov r8, r8)
201003d0:	46bd      	mov	sp, r7
201003d2:	bd80      	pop	{r7, pc}
201003d4:	40020000 	.word	0x40020000
201003d8:	ff00ffff 	.word	0xff00ffff
201003dc:	40098000 	.word	0x40098000
201003e0:	000003ff 	.word	0x000003ff
201003e4:	fffff1ff 	.word	0xfffff1ff
201003e8:	fffff0ff 	.word	0xfffff0ff

201003ec <adc_init>:
201003ec:	b580      	push	{r7, lr}
201003ee:	af00      	add	r7, sp, #0
201003f0:	4b0f      	ldr	r3, [pc, #60]	; (20100430 <adc_init+0x44>)
201003f2:	4a0f      	ldr	r2, [pc, #60]	; (20100430 <adc_init+0x44>)
201003f4:	69d2      	ldr	r2, [r2, #28]
201003f6:	2180      	movs	r1, #128	; 0x80
201003f8:	0289      	lsls	r1, r1, #10
201003fa:	430a      	orrs	r2, r1
201003fc:	61da      	str	r2, [r3, #28]
201003fe:	4b0c      	ldr	r3, [pc, #48]	; (20100430 <adc_init+0x44>)
20100400:	4a0c      	ldr	r2, [pc, #48]	; (20100434 <adc_init+0x48>)
20100402:	615a      	str	r2, [r3, #20]
20100404:	4b0c      	ldr	r3, [pc, #48]	; (20100438 <adc_init+0x4c>)
20100406:	2200      	movs	r2, #0
20100408:	601a      	str	r2, [r3, #0]
2010040a:	4b0b      	ldr	r3, [pc, #44]	; (20100438 <adc_init+0x4c>)
2010040c:	4a0a      	ldr	r2, [pc, #40]	; (20100438 <adc_init+0x4c>)
2010040e:	6812      	ldr	r2, [r2, #0]
20100410:	490a      	ldr	r1, [pc, #40]	; (2010043c <adc_init+0x50>)
20100412:	430a      	orrs	r2, r1
20100414:	601a      	str	r2, [r3, #0]
20100416:	4b08      	ldr	r3, [pc, #32]	; (20100438 <adc_init+0x4c>)
20100418:	4a07      	ldr	r2, [pc, #28]	; (20100438 <adc_init+0x4c>)
2010041a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010041c:	2139      	movs	r1, #57	; 0x39
2010041e:	430a      	orrs	r2, r1
20100420:	629a      	str	r2, [r3, #40]	; 0x28
20100422:	4b05      	ldr	r3, [pc, #20]	; (20100438 <adc_init+0x4c>)
20100424:	2210      	movs	r2, #16
20100426:	621a      	str	r2, [r3, #32]
20100428:	46c0      	nop			; (mov r8, r8)
2010042a:	46bd      	mov	sp, r7
2010042c:	bd80      	pop	{r7, pc}
2010042e:	46c0      	nop			; (mov r8, r8)
20100430:	40020000 	.word	0x40020000
20100434:	00002020 	.word	0x00002020
20100438:	40088000 	.word	0x40088000
2010043c:	00000205 	.word	0x00000205

20100440 <dac_init>:
20100440:	b580      	push	{r7, lr}
20100442:	af00      	add	r7, sp, #0
20100444:	4b07      	ldr	r3, [pc, #28]	; (20100464 <dac_init+0x24>)
20100446:	4a07      	ldr	r2, [pc, #28]	; (20100464 <dac_init+0x24>)
20100448:	69d2      	ldr	r2, [r2, #28]
2010044a:	2180      	movs	r1, #128	; 0x80
2010044c:	02c9      	lsls	r1, r1, #11
2010044e:	430a      	orrs	r2, r1
20100450:	61da      	str	r2, [r3, #28]
20100452:	4b05      	ldr	r3, [pc, #20]	; (20100468 <dac_init+0x28>)
20100454:	4a04      	ldr	r2, [pc, #16]	; (20100468 <dac_init+0x28>)
20100456:	6812      	ldr	r2, [r2, #0]
20100458:	2104      	movs	r1, #4
2010045a:	430a      	orrs	r2, r1
2010045c:	601a      	str	r2, [r3, #0]
2010045e:	46c0      	nop			; (mov r8, r8)
20100460:	46bd      	mov	sp, r7
20100462:	bd80      	pop	{r7, pc}
20100464:	40020000 	.word	0x40020000
20100468:	40090000 	.word	0x40090000

2010046c <DMAInit>:
2010046c:	b580      	push	{r7, lr}
2010046e:	af00      	add	r7, sp, #0
20100470:	4b1c      	ldr	r3, [pc, #112]	; (201004e4 <DMAInit+0x78>)
20100472:	4a1c      	ldr	r2, [pc, #112]	; (201004e4 <DMAInit+0x78>)
20100474:	69d2      	ldr	r2, [r2, #28]
20100476:	2120      	movs	r1, #32
20100478:	430a      	orrs	r2, r1
2010047a:	61da      	str	r2, [r3, #28]
2010047c:	4b1a      	ldr	r3, [pc, #104]	; (201004e8 <DMAInit+0x7c>)
2010047e:	4a1b      	ldr	r2, [pc, #108]	; (201004ec <DMAInit+0x80>)
20100480:	447a      	add	r2, pc
20100482:	609a      	str	r2, [r3, #8]
20100484:	4b18      	ldr	r3, [pc, #96]	; (201004e8 <DMAInit+0x7c>)
20100486:	2201      	movs	r2, #1
20100488:	4252      	negs	r2, r2
2010048a:	62da      	str	r2, [r3, #44]	; 0x2c
2010048c:	4b16      	ldr	r3, [pc, #88]	; (201004e8 <DMAInit+0x7c>)
2010048e:	2201      	movs	r2, #1
20100490:	4252      	negs	r2, r2
20100492:	621a      	str	r2, [r3, #32]
20100494:	4b14      	ldr	r3, [pc, #80]	; (201004e8 <DMAInit+0x7c>)
20100496:	2201      	movs	r2, #1
20100498:	4252      	negs	r2, r2
2010049a:	635a      	str	r2, [r3, #52]	; 0x34
2010049c:	4b12      	ldr	r3, [pc, #72]	; (201004e8 <DMAInit+0x7c>)
2010049e:	2280      	movs	r2, #128	; 0x80
201004a0:	05d2      	lsls	r2, r2, #23
201004a2:	61da      	str	r2, [r3, #28]
201004a4:	4b10      	ldr	r3, [pc, #64]	; (201004e8 <DMAInit+0x7c>)
201004a6:	2280      	movs	r2, #128	; 0x80
201004a8:	05d2      	lsls	r2, r2, #23
201004aa:	625a      	str	r2, [r3, #36]	; 0x24
201004ac:	4b0e      	ldr	r3, [pc, #56]	; (201004e8 <DMAInit+0x7c>)
201004ae:	2201      	movs	r2, #1
201004b0:	605a      	str	r2, [r3, #4]
201004b2:	4a0f      	ldr	r2, [pc, #60]	; (201004f0 <DMAInit+0x84>)
201004b4:	447a      	add	r2, pc
201004b6:	23f0      	movs	r3, #240	; 0xf0
201004b8:	005b      	lsls	r3, r3, #1
201004ba:	490e      	ldr	r1, [pc, #56]	; (201004f4 <DMAInit+0x88>)
201004bc:	50d1      	str	r1, [r2, r3]
201004be:	4b0e      	ldr	r3, [pc, #56]	; (201004f8 <DMAInit+0x8c>)
201004c0:	447b      	add	r3, pc
201004c2:	330c      	adds	r3, #12
201004c4:	0019      	movs	r1, r3
201004c6:	4a0d      	ldr	r2, [pc, #52]	; (201004fc <DMAInit+0x90>)
201004c8:	447a      	add	r2, pc
201004ca:	23f2      	movs	r3, #242	; 0xf2
201004cc:	005b      	lsls	r3, r3, #1
201004ce:	50d1      	str	r1, [r2, r3]
201004d0:	4a0b      	ldr	r2, [pc, #44]	; (20100500 <DMAInit+0x94>)
201004d2:	447a      	add	r2, pc
201004d4:	23f4      	movs	r3, #244	; 0xf4
201004d6:	005b      	lsls	r3, r3, #1
201004d8:	490a      	ldr	r1, [pc, #40]	; (20100504 <DMAInit+0x98>)
201004da:	50d1      	str	r1, [r2, r3]
201004dc:	46c0      	nop			; (mov r8, r8)
201004de:	46bd      	mov	sp, r7
201004e0:	bd80      	pop	{r7, pc}
201004e2:	46c0      	nop			; (mov r8, r8)
201004e4:	40020000 	.word	0x40020000
201004e8:	40028000 	.word	0x40028000
201004ec:	0000037c 	.word	0x0000037c
201004f0:	00000348 	.word	0x00000348
201004f4:	40088018 	.word	0x40088018
201004f8:	0000053c 	.word	0x0000053c
201004fc:	00000334 	.word	0x00000334
20100500:	0000032a 	.word	0x0000032a
20100504:	ae000031 	.word	0xae000031

20100508 <SystemInit>:
20100508:	b580      	push	{r7, lr}
2010050a:	af00      	add	r7, sp, #0
2010050c:	f7ff fe42 	bl	20100194 <ClkConfig>
20100510:	f7ff fda4 	bl	2010005c <PortConfig>
20100514:	f7ff fe78 	bl	20100208 <TimerConfig>
20100518:	f7ff ff68 	bl	201003ec <adc_init>
2010051c:	f7ff ff90 	bl	20100440 <dac_init>
20100520:	4b0c      	ldr	r3, [pc, #48]	; (20100554 <SystemInit+0x4c>)
20100522:	4a0c      	ldr	r2, [pc, #48]	; (20100554 <SystemInit+0x4c>)
20100524:	69d2      	ldr	r2, [r2, #28]
20100526:	490c      	ldr	r1, [pc, #48]	; (20100558 <SystemInit+0x50>)
20100528:	430a      	orrs	r2, r1
2010052a:	61da      	str	r2, [r3, #28]
2010052c:	4b0b      	ldr	r3, [pc, #44]	; (2010055c <SystemInit+0x54>)
2010052e:	2200      	movs	r2, #0
20100530:	625a      	str	r2, [r3, #36]	; 0x24
20100532:	4b0b      	ldr	r3, [pc, #44]	; (20100560 <SystemInit+0x58>)
20100534:	2200      	movs	r2, #0
20100536:	625a      	str	r2, [r3, #36]	; 0x24
20100538:	4b0a      	ldr	r3, [pc, #40]	; (20100564 <SystemInit+0x5c>)
2010053a:	2200      	movs	r2, #0
2010053c:	625a      	str	r2, [r3, #36]	; 0x24
2010053e:	4b05      	ldr	r3, [pc, #20]	; (20100554 <SystemInit+0x4c>)
20100540:	4a04      	ldr	r2, [pc, #16]	; (20100554 <SystemInit+0x4c>)
20100542:	69d2      	ldr	r2, [r2, #28]
20100544:	4908      	ldr	r1, [pc, #32]	; (20100568 <SystemInit+0x60>)
20100546:	400a      	ands	r2, r1
20100548:	61da      	str	r2, [r3, #28]
2010054a:	f7ff ff8f 	bl	2010046c <DMAInit>
2010054e:	46c0      	nop			; (mov r8, r8)
20100550:	46bd      	mov	sp, r7
20100552:	bd80      	pop	{r7, pc}
20100554:	40020000 	.word	0x40020000
20100558:	80100100 	.word	0x80100100
2010055c:	40040000 	.word	0x40040000
20100560:	400a0000 	.word	0x400a0000
20100564:	400f8000 	.word	0x400f8000
20100568:	7feffeff 	.word	0x7feffeff

2010056c <adc_dma_start>:
2010056c:	b580      	push	{r7, lr}
2010056e:	af00      	add	r7, sp, #0
20100570:	4b06      	ldr	r3, [pc, #24]	; (2010058c <adc_dma_start+0x20>)
20100572:	4a06      	ldr	r2, [pc, #24]	; (2010058c <adc_dma_start+0x20>)
20100574:	6812      	ldr	r2, [r2, #0]
20100576:	2108      	movs	r1, #8
20100578:	430a      	orrs	r2, r1
2010057a:	601a      	str	r2, [r3, #0]
2010057c:	4b04      	ldr	r3, [pc, #16]	; (20100590 <adc_dma_start+0x24>)
2010057e:	2280      	movs	r2, #128	; 0x80
20100580:	05d2      	lsls	r2, r2, #23
20100582:	629a      	str	r2, [r3, #40]	; 0x28
20100584:	46c0      	nop			; (mov r8, r8)
20100586:	46bd      	mov	sp, r7
20100588:	bd80      	pop	{r7, pc}
2010058a:	46c0      	nop			; (mov r8, r8)
2010058c:	40088000 	.word	0x40088000
20100590:	40028000 	.word	0x40028000

20100594 <adc_dma_wait>:
20100594:	b580      	push	{r7, lr}
20100596:	af00      	add	r7, sp, #0
20100598:	46c0      	nop			; (mov r8, r8)
2010059a:	4a0b      	ldr	r2, [pc, #44]	; (201005c8 <adc_dma_wait+0x34>)
2010059c:	447a      	add	r2, pc
2010059e:	23f4      	movs	r3, #244	; 0xf4
201005a0:	005b      	lsls	r3, r3, #1
201005a2:	58d3      	ldr	r3, [r2, r3]
201005a4:	2207      	movs	r2, #7
201005a6:	4013      	ands	r3, r2
201005a8:	d1f7      	bne.n	2010059a <adc_dma_wait+0x6>
201005aa:	4a08      	ldr	r2, [pc, #32]	; (201005cc <adc_dma_wait+0x38>)
201005ac:	447a      	add	r2, pc
201005ae:	23f4      	movs	r3, #244	; 0xf4
201005b0:	005b      	lsls	r3, r3, #1
201005b2:	4907      	ldr	r1, [pc, #28]	; (201005d0 <adc_dma_wait+0x3c>)
201005b4:	50d1      	str	r1, [r2, r3]
201005b6:	4b07      	ldr	r3, [pc, #28]	; (201005d4 <adc_dma_wait+0x40>)
201005b8:	4a06      	ldr	r2, [pc, #24]	; (201005d4 <adc_dma_wait+0x40>)
201005ba:	6812      	ldr	r2, [r2, #0]
201005bc:	2108      	movs	r1, #8
201005be:	438a      	bics	r2, r1
201005c0:	601a      	str	r2, [r3, #0]
201005c2:	46c0      	nop			; (mov r8, r8)
201005c4:	46bd      	mov	sp, r7
201005c6:	bd80      	pop	{r7, pc}
201005c8:	00000260 	.word	0x00000260
201005cc:	00000250 	.word	0x00000250
201005d0:	ae000031 	.word	0xae000031
201005d4:	40088000 	.word	0x40088000
