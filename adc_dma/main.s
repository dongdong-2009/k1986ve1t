
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	af00      	add	r7, sp, #0
20100004:	f000 fa70 	bl	201004e8 <SystemInit>
20100008:	46c0      	nop			; (mov r8, r8)
2010000a:	4b0b      	ldr	r3, [pc, #44]	; (20100038 <main+0x38>)
2010000c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010000e:	2202      	movs	r2, #2
20100010:	4013      	ands	r3, r2
20100012:	d0fa      	beq.n	2010000a <main+0xa>
20100014:	f000 fa9a 	bl	2010054c <adc_dma_start>
20100018:	f000 fab6 	bl	20100588 <adc_dma_wait>
2010001c:	4b07      	ldr	r3, [pc, #28]	; (2010003c <main+0x3c>)
2010001e:	4a07      	ldr	r2, [pc, #28]	; (2010003c <main+0x3c>)
20100020:	6812      	ldr	r2, [r2, #0]
20100022:	2140      	movs	r1, #64	; 0x40
20100024:	404a      	eors	r2, r1
20100026:	601a      	str	r2, [r3, #0]
20100028:	4a05      	ldr	r2, [pc, #20]	; (20100040 <main+0x40>)
2010002a:	4b06      	ldr	r3, [pc, #24]	; (20100044 <main+0x44>)
2010002c:	447b      	add	r3, pc
2010002e:	681b      	ldr	r3, [r3, #0]
20100030:	051b      	lsls	r3, r3, #20
20100032:	0d1b      	lsrs	r3, r3, #20
20100034:	6053      	str	r3, [r2, #4]
20100036:	e7e7      	b.n	20100008 <main+0x8>
20100038:	40098000 	.word	0x40098000
2010003c:	400b8000 	.word	0x400b8000
20100040:	40090000 	.word	0x40090000
20100044:	000009d0 	.word	0x000009d0

20100048 <PortConfig>:
20100048:	b580      	push	{r7, lr}
2010004a:	af00      	add	r7, sp, #0
2010004c:	4b42      	ldr	r3, [pc, #264]	; (20100158 <PortConfig+0x110>)
2010004e:	4a42      	ldr	r2, [pc, #264]	; (20100158 <PortConfig+0x110>)
20100050:	69d2      	ldr	r2, [r2, #28]
20100052:	2180      	movs	r1, #128	; 0x80
20100054:	0389      	lsls	r1, r1, #14
20100056:	430a      	orrs	r2, r1
20100058:	61da      	str	r2, [r3, #28]
2010005a:	4b40      	ldr	r3, [pc, #256]	; (2010015c <PortConfig+0x114>)
2010005c:	4a3f      	ldr	r2, [pc, #252]	; (2010015c <PortConfig+0x114>)
2010005e:	6892      	ldr	r2, [r2, #8]
20100060:	493f      	ldr	r1, [pc, #252]	; (20100160 <PortConfig+0x118>)
20100062:	400a      	ands	r2, r1
20100064:	609a      	str	r2, [r3, #8]
20100066:	4b3d      	ldr	r3, [pc, #244]	; (2010015c <PortConfig+0x114>)
20100068:	4a3c      	ldr	r2, [pc, #240]	; (2010015c <PortConfig+0x114>)
2010006a:	6892      	ldr	r2, [r2, #8]
2010006c:	493d      	ldr	r1, [pc, #244]	; (20100164 <PortConfig+0x11c>)
2010006e:	430a      	orrs	r2, r1
20100070:	609a      	str	r2, [r3, #8]
20100072:	4b3a      	ldr	r3, [pc, #232]	; (2010015c <PortConfig+0x114>)
20100074:	4a39      	ldr	r2, [pc, #228]	; (2010015c <PortConfig+0x114>)
20100076:	6852      	ldr	r2, [r2, #4]
20100078:	21fc      	movs	r1, #252	; 0xfc
2010007a:	0109      	lsls	r1, r1, #4
2010007c:	430a      	orrs	r2, r1
2010007e:	605a      	str	r2, [r3, #4]
20100080:	4b36      	ldr	r3, [pc, #216]	; (2010015c <PortConfig+0x114>)
20100082:	4a36      	ldr	r2, [pc, #216]	; (2010015c <PortConfig+0x114>)
20100084:	68d2      	ldr	r2, [r2, #12]
20100086:	21fc      	movs	r1, #252	; 0xfc
20100088:	0109      	lsls	r1, r1, #4
2010008a:	430a      	orrs	r2, r1
2010008c:	60da      	str	r2, [r3, #12]
2010008e:	4b33      	ldr	r3, [pc, #204]	; (2010015c <PortConfig+0x114>)
20100090:	4a32      	ldr	r2, [pc, #200]	; (2010015c <PortConfig+0x114>)
20100092:	6992      	ldr	r2, [r2, #24]
20100094:	4934      	ldr	r1, [pc, #208]	; (20100168 <PortConfig+0x120>)
20100096:	430a      	orrs	r2, r1
20100098:	619a      	str	r2, [r3, #24]
2010009a:	4b2f      	ldr	r3, [pc, #188]	; (20100158 <PortConfig+0x110>)
2010009c:	4a2e      	ldr	r2, [pc, #184]	; (20100158 <PortConfig+0x110>)
2010009e:	69d2      	ldr	r2, [r2, #28]
201000a0:	2180      	movs	r1, #128	; 0x80
201000a2:	0489      	lsls	r1, r1, #18
201000a4:	430a      	orrs	r2, r1
201000a6:	61da      	str	r2, [r3, #28]
201000a8:	4b30      	ldr	r3, [pc, #192]	; (2010016c <PortConfig+0x124>)
201000aa:	4a30      	ldr	r2, [pc, #192]	; (2010016c <PortConfig+0x124>)
201000ac:	68d2      	ldr	r2, [r2, #12]
201000ae:	2102      	movs	r1, #2
201000b0:	438a      	bics	r2, r1
201000b2:	60da      	str	r2, [r3, #12]
201000b4:	4b28      	ldr	r3, [pc, #160]	; (20100158 <PortConfig+0x110>)
201000b6:	4a28      	ldr	r2, [pc, #160]	; (20100158 <PortConfig+0x110>)
201000b8:	69d2      	ldr	r2, [r2, #28]
201000ba:	2180      	movs	r1, #128	; 0x80
201000bc:	0449      	lsls	r1, r1, #17
201000be:	430a      	orrs	r2, r1
201000c0:	61da      	str	r2, [r3, #28]
201000c2:	4b2b      	ldr	r3, [pc, #172]	; (20100170 <PortConfig+0x128>)
201000c4:	4a2a      	ldr	r2, [pc, #168]	; (20100170 <PortConfig+0x128>)
201000c6:	6892      	ldr	r2, [r2, #8]
201000c8:	492a      	ldr	r1, [pc, #168]	; (20100174 <PortConfig+0x12c>)
201000ca:	400a      	ands	r2, r1
201000cc:	609a      	str	r2, [r3, #8]
201000ce:	4b28      	ldr	r3, [pc, #160]	; (20100170 <PortConfig+0x128>)
201000d0:	4a27      	ldr	r2, [pc, #156]	; (20100170 <PortConfig+0x128>)
201000d2:	6892      	ldr	r2, [r2, #8]
201000d4:	21a0      	movs	r1, #160	; 0xa0
201000d6:	02c9      	lsls	r1, r1, #11
201000d8:	430a      	orrs	r2, r1
201000da:	609a      	str	r2, [r3, #8]
201000dc:	4b24      	ldr	r3, [pc, #144]	; (20100170 <PortConfig+0x128>)
201000de:	4a24      	ldr	r2, [pc, #144]	; (20100170 <PortConfig+0x128>)
201000e0:	68d2      	ldr	r2, [r2, #12]
201000e2:	21c0      	movs	r1, #192	; 0xc0
201000e4:	0089      	lsls	r1, r1, #2
201000e6:	430a      	orrs	r2, r1
201000e8:	60da      	str	r2, [r3, #12]
201000ea:	4b21      	ldr	r3, [pc, #132]	; (20100170 <PortConfig+0x128>)
201000ec:	4a20      	ldr	r2, [pc, #128]	; (20100170 <PortConfig+0x128>)
201000ee:	6992      	ldr	r2, [r2, #24]
201000f0:	21c0      	movs	r1, #192	; 0xc0
201000f2:	0309      	lsls	r1, r1, #12
201000f4:	430a      	orrs	r2, r1
201000f6:	619a      	str	r2, [r3, #24]
201000f8:	4b1d      	ldr	r3, [pc, #116]	; (20100170 <PortConfig+0x128>)
201000fa:	4a1d      	ldr	r2, [pc, #116]	; (20100170 <PortConfig+0x128>)
201000fc:	6852      	ldr	r2, [r2, #4]
201000fe:	2180      	movs	r1, #128	; 0x80
20100100:	0089      	lsls	r1, r1, #2
20100102:	430a      	orrs	r2, r1
20100104:	605a      	str	r2, [r3, #4]
20100106:	4b1a      	ldr	r3, [pc, #104]	; (20100170 <PortConfig+0x128>)
20100108:	4a19      	ldr	r2, [pc, #100]	; (20100170 <PortConfig+0x128>)
2010010a:	6852      	ldr	r2, [r2, #4]
2010010c:	491a      	ldr	r1, [pc, #104]	; (20100178 <PortConfig+0x130>)
2010010e:	400a      	ands	r2, r1
20100110:	605a      	str	r2, [r3, #4]
20100112:	4b11      	ldr	r3, [pc, #68]	; (20100158 <PortConfig+0x110>)
20100114:	4a10      	ldr	r2, [pc, #64]	; (20100158 <PortConfig+0x110>)
20100116:	69d2      	ldr	r2, [r2, #28]
20100118:	2180      	movs	r1, #128	; 0x80
2010011a:	0409      	lsls	r1, r1, #16
2010011c:	430a      	orrs	r2, r1
2010011e:	61da      	str	r2, [r3, #28]
20100120:	4b16      	ldr	r3, [pc, #88]	; (2010017c <PortConfig+0x134>)
20100122:	2200      	movs	r2, #0
20100124:	609a      	str	r2, [r3, #8]
20100126:	4b15      	ldr	r3, [pc, #84]	; (2010017c <PortConfig+0x134>)
20100128:	2200      	movs	r2, #0
2010012a:	601a      	str	r2, [r3, #0]
2010012c:	4b13      	ldr	r3, [pc, #76]	; (2010017c <PortConfig+0x134>)
2010012e:	4a13      	ldr	r2, [pc, #76]	; (2010017c <PortConfig+0x134>)
20100130:	6852      	ldr	r2, [r2, #4]
20100132:	2160      	movs	r1, #96	; 0x60
20100134:	430a      	orrs	r2, r1
20100136:	605a      	str	r2, [r3, #4]
20100138:	4b10      	ldr	r3, [pc, #64]	; (2010017c <PortConfig+0x134>)
2010013a:	4a10      	ldr	r2, [pc, #64]	; (2010017c <PortConfig+0x134>)
2010013c:	68d2      	ldr	r2, [r2, #12]
2010013e:	2160      	movs	r1, #96	; 0x60
20100140:	430a      	orrs	r2, r1
20100142:	60da      	str	r2, [r3, #12]
20100144:	4b0d      	ldr	r3, [pc, #52]	; (2010017c <PortConfig+0x134>)
20100146:	4a0d      	ldr	r2, [pc, #52]	; (2010017c <PortConfig+0x134>)
20100148:	6992      	ldr	r2, [r2, #24]
2010014a:	21f0      	movs	r1, #240	; 0xf0
2010014c:	0189      	lsls	r1, r1, #6
2010014e:	430a      	orrs	r2, r1
20100150:	619a      	str	r2, [r3, #24]
20100152:	46c0      	nop			; (mov r8, r8)
20100154:	46bd      	mov	sp, r7
20100156:	bd80      	pop	{r7, pc}
20100158:	40020000 	.word	0x40020000
2010015c:	400a8000 	.word	0x400a8000
20100160:	ff000fff 	.word	0xff000fff
20100164:	00aaa000 	.word	0x00aaa000
20100168:	00fff000 	.word	0x00fff000
2010016c:	400c8000 	.word	0x400c8000
20100170:	400c0000 	.word	0x400c0000
20100174:	fff0ffff 	.word	0xfff0ffff
20100178:	fffffeff 	.word	0xfffffeff
2010017c:	400b8000 	.word	0x400b8000

20100180 <ClkConfig>:
20100180:	b580      	push	{r7, lr}
20100182:	af00      	add	r7, sp, #0
20100184:	4b18      	ldr	r3, [pc, #96]	; (201001e8 <ClkConfig+0x68>)
20100186:	4a18      	ldr	r2, [pc, #96]	; (201001e8 <ClkConfig+0x68>)
20100188:	6892      	ldr	r2, [r2, #8]
2010018a:	2101      	movs	r1, #1
2010018c:	430a      	orrs	r2, r1
2010018e:	609a      	str	r2, [r3, #8]
20100190:	46c0      	nop			; (mov r8, r8)
20100192:	4b15      	ldr	r3, [pc, #84]	; (201001e8 <ClkConfig+0x68>)
20100194:	681b      	ldr	r3, [r3, #0]
20100196:	2204      	movs	r2, #4
20100198:	4013      	ands	r3, r2
2010019a:	d0fa      	beq.n	20100192 <ClkConfig+0x12>
2010019c:	4b12      	ldr	r3, [pc, #72]	; (201001e8 <ClkConfig+0x68>)
2010019e:	4a12      	ldr	r2, [pc, #72]	; (201001e8 <ClkConfig+0x68>)
201001a0:	68d2      	ldr	r2, [r2, #12]
201001a2:	2102      	movs	r1, #2
201001a4:	430a      	orrs	r2, r1
201001a6:	60da      	str	r2, [r3, #12]
201001a8:	4b0f      	ldr	r3, [pc, #60]	; (201001e8 <ClkConfig+0x68>)
201001aa:	4a10      	ldr	r2, [pc, #64]	; (201001ec <ClkConfig+0x6c>)
201001ac:	605a      	str	r2, [r3, #4]
201001ae:	46c0      	nop			; (mov r8, r8)
201001b0:	4b0d      	ldr	r3, [pc, #52]	; (201001e8 <ClkConfig+0x68>)
201001b2:	681b      	ldr	r3, [r3, #0]
201001b4:	2202      	movs	r2, #2
201001b6:	4013      	ands	r3, r2
201001b8:	d0fa      	beq.n	201001b0 <ClkConfig+0x30>
201001ba:	4b0d      	ldr	r3, [pc, #52]	; (201001f0 <ClkConfig+0x70>)
201001bc:	4a0c      	ldr	r2, [pc, #48]	; (201001f0 <ClkConfig+0x70>)
201001be:	6812      	ldr	r2, [r2, #0]
201001c0:	2120      	movs	r1, #32
201001c2:	430a      	orrs	r2, r1
201001c4:	601a      	str	r2, [r3, #0]
201001c6:	4b08      	ldr	r3, [pc, #32]	; (201001e8 <ClkConfig+0x68>)
201001c8:	4a07      	ldr	r2, [pc, #28]	; (201001e8 <ClkConfig+0x68>)
201001ca:	68d2      	ldr	r2, [r2, #12]
201001cc:	2180      	movs	r1, #128	; 0x80
201001ce:	0049      	lsls	r1, r1, #1
201001d0:	430a      	orrs	r2, r1
201001d2:	60da      	str	r2, [r3, #12]
201001d4:	4b04      	ldr	r3, [pc, #16]	; (201001e8 <ClkConfig+0x68>)
201001d6:	4a04      	ldr	r2, [pc, #16]	; (201001e8 <ClkConfig+0x68>)
201001d8:	68d2      	ldr	r2, [r2, #12]
201001da:	2104      	movs	r1, #4
201001dc:	430a      	orrs	r2, r1
201001de:	60da      	str	r2, [r3, #12]
201001e0:	46c0      	nop			; (mov r8, r8)
201001e2:	46bd      	mov	sp, r7
201001e4:	bd80      	pop	{r7, pc}
201001e6:	46c0      	nop			; (mov r8, r8)
201001e8:	40020000 	.word	0x40020000
201001ec:	00000e04 	.word	0x00000e04
201001f0:	40018000 	.word	0x40018000

201001f4 <TimerConfig>:
201001f4:	b580      	push	{r7, lr}
201001f6:	af00      	add	r7, sp, #0
201001f8:	4b71      	ldr	r3, [pc, #452]	; (201003c0 <TimerConfig+0x1cc>)
201001fa:	4a71      	ldr	r2, [pc, #452]	; (201003c0 <TimerConfig+0x1cc>)
201001fc:	69d2      	ldr	r2, [r2, #28]
201001fe:	2180      	movs	r1, #128	; 0x80
20100200:	0309      	lsls	r1, r1, #12
20100202:	430a      	orrs	r2, r1
20100204:	61da      	str	r2, [r3, #28]
20100206:	4b6e      	ldr	r3, [pc, #440]	; (201003c0 <TimerConfig+0x1cc>)
20100208:	4a6d      	ldr	r2, [pc, #436]	; (201003c0 <TimerConfig+0x1cc>)
2010020a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010020c:	2180      	movs	r1, #128	; 0x80
2010020e:	04c9      	lsls	r1, r1, #19
20100210:	430a      	orrs	r2, r1
20100212:	629a      	str	r2, [r3, #40]	; 0x28
20100214:	4b6a      	ldr	r3, [pc, #424]	; (201003c0 <TimerConfig+0x1cc>)
20100216:	4a6a      	ldr	r2, [pc, #424]	; (201003c0 <TimerConfig+0x1cc>)
20100218:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010021a:	496a      	ldr	r1, [pc, #424]	; (201003c4 <TimerConfig+0x1d0>)
2010021c:	400a      	ands	r2, r1
2010021e:	629a      	str	r2, [r3, #40]	; 0x28
20100220:	4b69      	ldr	r3, [pc, #420]	; (201003c8 <TimerConfig+0x1d4>)
20100222:	2200      	movs	r2, #0
20100224:	601a      	str	r2, [r3, #0]
20100226:	4b68      	ldr	r3, [pc, #416]	; (201003c8 <TimerConfig+0x1d4>)
20100228:	2204      	movs	r2, #4
2010022a:	605a      	str	r2, [r3, #4]
2010022c:	4b66      	ldr	r3, [pc, #408]	; (201003c8 <TimerConfig+0x1d4>)
2010022e:	4a67      	ldr	r2, [pc, #412]	; (201003cc <TimerConfig+0x1d8>)
20100230:	609a      	str	r2, [r3, #8]
20100232:	4b65      	ldr	r3, [pc, #404]	; (201003c8 <TimerConfig+0x1d4>)
20100234:	2280      	movs	r2, #128	; 0x80
20100236:	0092      	lsls	r2, r2, #2
20100238:	611a      	str	r2, [r3, #16]
2010023a:	4b63      	ldr	r3, [pc, #396]	; (201003c8 <TimerConfig+0x1d4>)
2010023c:	2280      	movs	r2, #128	; 0x80
2010023e:	0092      	lsls	r2, r2, #2
20100240:	615a      	str	r2, [r3, #20]
20100242:	4b61      	ldr	r3, [pc, #388]	; (201003c8 <TimerConfig+0x1d4>)
20100244:	2280      	movs	r2, #128	; 0x80
20100246:	0092      	lsls	r2, r2, #2
20100248:	619a      	str	r2, [r3, #24]
2010024a:	4b5f      	ldr	r3, [pc, #380]	; (201003c8 <TimerConfig+0x1d4>)
2010024c:	4a5e      	ldr	r2, [pc, #376]	; (201003c8 <TimerConfig+0x1d4>)
2010024e:	6a12      	ldr	r2, [r2, #32]
20100250:	495f      	ldr	r1, [pc, #380]	; (201003d0 <TimerConfig+0x1dc>)
20100252:	400a      	ands	r2, r1
20100254:	621a      	str	r2, [r3, #32]
20100256:	4b5c      	ldr	r3, [pc, #368]	; (201003c8 <TimerConfig+0x1d4>)
20100258:	4a5b      	ldr	r2, [pc, #364]	; (201003c8 <TimerConfig+0x1d4>)
2010025a:	6a12      	ldr	r2, [r2, #32]
2010025c:	21e0      	movs	r1, #224	; 0xe0
2010025e:	0109      	lsls	r1, r1, #4
20100260:	430a      	orrs	r2, r1
20100262:	621a      	str	r2, [r3, #32]
20100264:	4b58      	ldr	r3, [pc, #352]	; (201003c8 <TimerConfig+0x1d4>)
20100266:	4a58      	ldr	r2, [pc, #352]	; (201003c8 <TimerConfig+0x1d4>)
20100268:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010026a:	210f      	movs	r1, #15
2010026c:	438a      	bics	r2, r1
2010026e:	631a      	str	r2, [r3, #48]	; 0x30
20100270:	4b55      	ldr	r3, [pc, #340]	; (201003c8 <TimerConfig+0x1d4>)
20100272:	4a55      	ldr	r2, [pc, #340]	; (201003c8 <TimerConfig+0x1d4>)
20100274:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100276:	210c      	movs	r1, #12
20100278:	430a      	orrs	r2, r1
2010027a:	631a      	str	r2, [r3, #48]	; 0x30
2010027c:	4b52      	ldr	r3, [pc, #328]	; (201003c8 <TimerConfig+0x1d4>)
2010027e:	4a52      	ldr	r2, [pc, #328]	; (201003c8 <TimerConfig+0x1d4>)
20100280:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100282:	2101      	movs	r1, #1
20100284:	430a      	orrs	r2, r1
20100286:	631a      	str	r2, [r3, #48]	; 0x30
20100288:	4b4f      	ldr	r3, [pc, #316]	; (201003c8 <TimerConfig+0x1d4>)
2010028a:	4a4f      	ldr	r2, [pc, #316]	; (201003c8 <TimerConfig+0x1d4>)
2010028c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010028e:	4951      	ldr	r1, [pc, #324]	; (201003d4 <TimerConfig+0x1e0>)
20100290:	400a      	ands	r2, r1
20100292:	631a      	str	r2, [r3, #48]	; 0x30
20100294:	4b4c      	ldr	r3, [pc, #304]	; (201003c8 <TimerConfig+0x1d4>)
20100296:	4a4c      	ldr	r2, [pc, #304]	; (201003c8 <TimerConfig+0x1d4>)
20100298:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010029a:	21c0      	movs	r1, #192	; 0xc0
2010029c:	0109      	lsls	r1, r1, #4
2010029e:	430a      	orrs	r2, r1
201002a0:	631a      	str	r2, [r3, #48]	; 0x30
201002a2:	4b49      	ldr	r3, [pc, #292]	; (201003c8 <TimerConfig+0x1d4>)
201002a4:	4a48      	ldr	r2, [pc, #288]	; (201003c8 <TimerConfig+0x1d4>)
201002a6:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002a8:	2180      	movs	r1, #128	; 0x80
201002aa:	0049      	lsls	r1, r1, #1
201002ac:	430a      	orrs	r2, r1
201002ae:	631a      	str	r2, [r3, #48]	; 0x30
201002b0:	4b45      	ldr	r3, [pc, #276]	; (201003c8 <TimerConfig+0x1d4>)
201002b2:	4a45      	ldr	r2, [pc, #276]	; (201003c8 <TimerConfig+0x1d4>)
201002b4:	6a52      	ldr	r2, [r2, #36]	; 0x24
201002b6:	4946      	ldr	r1, [pc, #280]	; (201003d0 <TimerConfig+0x1dc>)
201002b8:	400a      	ands	r2, r1
201002ba:	625a      	str	r2, [r3, #36]	; 0x24
201002bc:	4b42      	ldr	r3, [pc, #264]	; (201003c8 <TimerConfig+0x1d4>)
201002be:	4a42      	ldr	r2, [pc, #264]	; (201003c8 <TimerConfig+0x1d4>)
201002c0:	6a52      	ldr	r2, [r2, #36]	; 0x24
201002c2:	21e0      	movs	r1, #224	; 0xe0
201002c4:	0109      	lsls	r1, r1, #4
201002c6:	430a      	orrs	r2, r1
201002c8:	625a      	str	r2, [r3, #36]	; 0x24
201002ca:	4b3f      	ldr	r3, [pc, #252]	; (201003c8 <TimerConfig+0x1d4>)
201002cc:	4a3e      	ldr	r2, [pc, #248]	; (201003c8 <TimerConfig+0x1d4>)
201002ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002d0:	210f      	movs	r1, #15
201002d2:	438a      	bics	r2, r1
201002d4:	635a      	str	r2, [r3, #52]	; 0x34
201002d6:	4b3c      	ldr	r3, [pc, #240]	; (201003c8 <TimerConfig+0x1d4>)
201002d8:	4a3b      	ldr	r2, [pc, #236]	; (201003c8 <TimerConfig+0x1d4>)
201002da:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002dc:	210c      	movs	r1, #12
201002de:	430a      	orrs	r2, r1
201002e0:	635a      	str	r2, [r3, #52]	; 0x34
201002e2:	4b39      	ldr	r3, [pc, #228]	; (201003c8 <TimerConfig+0x1d4>)
201002e4:	4a38      	ldr	r2, [pc, #224]	; (201003c8 <TimerConfig+0x1d4>)
201002e6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002e8:	2101      	movs	r1, #1
201002ea:	430a      	orrs	r2, r1
201002ec:	635a      	str	r2, [r3, #52]	; 0x34
201002ee:	4b36      	ldr	r3, [pc, #216]	; (201003c8 <TimerConfig+0x1d4>)
201002f0:	4a35      	ldr	r2, [pc, #212]	; (201003c8 <TimerConfig+0x1d4>)
201002f2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002f4:	4937      	ldr	r1, [pc, #220]	; (201003d4 <TimerConfig+0x1e0>)
201002f6:	400a      	ands	r2, r1
201002f8:	635a      	str	r2, [r3, #52]	; 0x34
201002fa:	4b33      	ldr	r3, [pc, #204]	; (201003c8 <TimerConfig+0x1d4>)
201002fc:	4a32      	ldr	r2, [pc, #200]	; (201003c8 <TimerConfig+0x1d4>)
201002fe:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100300:	21c0      	movs	r1, #192	; 0xc0
20100302:	0109      	lsls	r1, r1, #4
20100304:	430a      	orrs	r2, r1
20100306:	635a      	str	r2, [r3, #52]	; 0x34
20100308:	4b2f      	ldr	r3, [pc, #188]	; (201003c8 <TimerConfig+0x1d4>)
2010030a:	4a2f      	ldr	r2, [pc, #188]	; (201003c8 <TimerConfig+0x1d4>)
2010030c:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010030e:	2180      	movs	r1, #128	; 0x80
20100310:	0049      	lsls	r1, r1, #1
20100312:	430a      	orrs	r2, r1
20100314:	635a      	str	r2, [r3, #52]	; 0x34
20100316:	4b2c      	ldr	r3, [pc, #176]	; (201003c8 <TimerConfig+0x1d4>)
20100318:	4a2b      	ldr	r2, [pc, #172]	; (201003c8 <TimerConfig+0x1d4>)
2010031a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010031c:	492c      	ldr	r1, [pc, #176]	; (201003d0 <TimerConfig+0x1dc>)
2010031e:	400a      	ands	r2, r1
20100320:	629a      	str	r2, [r3, #40]	; 0x28
20100322:	4b29      	ldr	r3, [pc, #164]	; (201003c8 <TimerConfig+0x1d4>)
20100324:	4a28      	ldr	r2, [pc, #160]	; (201003c8 <TimerConfig+0x1d4>)
20100326:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100328:	21e0      	movs	r1, #224	; 0xe0
2010032a:	0109      	lsls	r1, r1, #4
2010032c:	430a      	orrs	r2, r1
2010032e:	629a      	str	r2, [r3, #40]	; 0x28
20100330:	4b25      	ldr	r3, [pc, #148]	; (201003c8 <TimerConfig+0x1d4>)
20100332:	4a25      	ldr	r2, [pc, #148]	; (201003c8 <TimerConfig+0x1d4>)
20100334:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100336:	210f      	movs	r1, #15
20100338:	438a      	bics	r2, r1
2010033a:	639a      	str	r2, [r3, #56]	; 0x38
2010033c:	4b22      	ldr	r3, [pc, #136]	; (201003c8 <TimerConfig+0x1d4>)
2010033e:	4a22      	ldr	r2, [pc, #136]	; (201003c8 <TimerConfig+0x1d4>)
20100340:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100342:	210c      	movs	r1, #12
20100344:	430a      	orrs	r2, r1
20100346:	639a      	str	r2, [r3, #56]	; 0x38
20100348:	4b1f      	ldr	r3, [pc, #124]	; (201003c8 <TimerConfig+0x1d4>)
2010034a:	4a1f      	ldr	r2, [pc, #124]	; (201003c8 <TimerConfig+0x1d4>)
2010034c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010034e:	2101      	movs	r1, #1
20100350:	430a      	orrs	r2, r1
20100352:	639a      	str	r2, [r3, #56]	; 0x38
20100354:	4b1c      	ldr	r3, [pc, #112]	; (201003c8 <TimerConfig+0x1d4>)
20100356:	4a1c      	ldr	r2, [pc, #112]	; (201003c8 <TimerConfig+0x1d4>)
20100358:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010035a:	491e      	ldr	r1, [pc, #120]	; (201003d4 <TimerConfig+0x1e0>)
2010035c:	400a      	ands	r2, r1
2010035e:	639a      	str	r2, [r3, #56]	; 0x38
20100360:	4b19      	ldr	r3, [pc, #100]	; (201003c8 <TimerConfig+0x1d4>)
20100362:	4a19      	ldr	r2, [pc, #100]	; (201003c8 <TimerConfig+0x1d4>)
20100364:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100366:	21c0      	movs	r1, #192	; 0xc0
20100368:	0109      	lsls	r1, r1, #4
2010036a:	430a      	orrs	r2, r1
2010036c:	639a      	str	r2, [r3, #56]	; 0x38
2010036e:	4b16      	ldr	r3, [pc, #88]	; (201003c8 <TimerConfig+0x1d4>)
20100370:	4a15      	ldr	r2, [pc, #84]	; (201003c8 <TimerConfig+0x1d4>)
20100372:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100374:	2180      	movs	r1, #128	; 0x80
20100376:	0049      	lsls	r1, r1, #1
20100378:	430a      	orrs	r2, r1
2010037a:	639a      	str	r2, [r3, #56]	; 0x38
2010037c:	4b12      	ldr	r3, [pc, #72]	; (201003c8 <TimerConfig+0x1d4>)
2010037e:	4a12      	ldr	r2, [pc, #72]	; (201003c8 <TimerConfig+0x1d4>)
20100380:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100382:	21c8      	movs	r1, #200	; 0xc8
20100384:	01c9      	lsls	r1, r1, #7
20100386:	430a      	orrs	r2, r1
20100388:	641a      	str	r2, [r3, #64]	; 0x40
2010038a:	4b0f      	ldr	r3, [pc, #60]	; (201003c8 <TimerConfig+0x1d4>)
2010038c:	4a0e      	ldr	r2, [pc, #56]	; (201003c8 <TimerConfig+0x1d4>)
2010038e:	6c52      	ldr	r2, [r2, #68]	; 0x44
20100390:	21c8      	movs	r1, #200	; 0xc8
20100392:	01c9      	lsls	r1, r1, #7
20100394:	430a      	orrs	r2, r1
20100396:	645a      	str	r2, [r3, #68]	; 0x44
20100398:	4b0b      	ldr	r3, [pc, #44]	; (201003c8 <TimerConfig+0x1d4>)
2010039a:	4a0b      	ldr	r2, [pc, #44]	; (201003c8 <TimerConfig+0x1d4>)
2010039c:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010039e:	21c8      	movs	r1, #200	; 0xc8
201003a0:	01c9      	lsls	r1, r1, #7
201003a2:	430a      	orrs	r2, r1
201003a4:	649a      	str	r2, [r3, #72]	; 0x48
201003a6:	4b08      	ldr	r3, [pc, #32]	; (201003c8 <TimerConfig+0x1d4>)
201003a8:	4a07      	ldr	r2, [pc, #28]	; (201003c8 <TimerConfig+0x1d4>)
201003aa:	6d92      	ldr	r2, [r2, #88]	; 0x58
201003ac:	21f0      	movs	r1, #240	; 0xf0
201003ae:	0149      	lsls	r1, r1, #5
201003b0:	430a      	orrs	r2, r1
201003b2:	659a      	str	r2, [r3, #88]	; 0x58
201003b4:	4b04      	ldr	r3, [pc, #16]	; (201003c8 <TimerConfig+0x1d4>)
201003b6:	2201      	movs	r2, #1
201003b8:	60da      	str	r2, [r3, #12]
201003ba:	46c0      	nop			; (mov r8, r8)
201003bc:	46bd      	mov	sp, r7
201003be:	bd80      	pop	{r7, pc}
201003c0:	40020000 	.word	0x40020000
201003c4:	ff00ffff 	.word	0xff00ffff
201003c8:	40098000 	.word	0x40098000
201003cc:	000003ff 	.word	0x000003ff
201003d0:	fffff1ff 	.word	0xfffff1ff
201003d4:	fffff0ff 	.word	0xfffff0ff

201003d8 <adc_init>:
201003d8:	b580      	push	{r7, lr}
201003da:	af00      	add	r7, sp, #0
201003dc:	4b0f      	ldr	r3, [pc, #60]	; (2010041c <adc_init+0x44>)
201003de:	4a0f      	ldr	r2, [pc, #60]	; (2010041c <adc_init+0x44>)
201003e0:	69d2      	ldr	r2, [r2, #28]
201003e2:	2180      	movs	r1, #128	; 0x80
201003e4:	0289      	lsls	r1, r1, #10
201003e6:	430a      	orrs	r2, r1
201003e8:	61da      	str	r2, [r3, #28]
201003ea:	4b0c      	ldr	r3, [pc, #48]	; (2010041c <adc_init+0x44>)
201003ec:	4a0c      	ldr	r2, [pc, #48]	; (20100420 <adc_init+0x48>)
201003ee:	615a      	str	r2, [r3, #20]
201003f0:	4b0c      	ldr	r3, [pc, #48]	; (20100424 <adc_init+0x4c>)
201003f2:	2200      	movs	r2, #0
201003f4:	601a      	str	r2, [r3, #0]
201003f6:	4b0b      	ldr	r3, [pc, #44]	; (20100424 <adc_init+0x4c>)
201003f8:	4a0a      	ldr	r2, [pc, #40]	; (20100424 <adc_init+0x4c>)
201003fa:	6812      	ldr	r2, [r2, #0]
201003fc:	490a      	ldr	r1, [pc, #40]	; (20100428 <adc_init+0x50>)
201003fe:	430a      	orrs	r2, r1
20100400:	601a      	str	r2, [r3, #0]
20100402:	4b08      	ldr	r3, [pc, #32]	; (20100424 <adc_init+0x4c>)
20100404:	4a07      	ldr	r2, [pc, #28]	; (20100424 <adc_init+0x4c>)
20100406:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100408:	2139      	movs	r1, #57	; 0x39
2010040a:	430a      	orrs	r2, r1
2010040c:	629a      	str	r2, [r3, #40]	; 0x28
2010040e:	4b05      	ldr	r3, [pc, #20]	; (20100424 <adc_init+0x4c>)
20100410:	2210      	movs	r2, #16
20100412:	621a      	str	r2, [r3, #32]
20100414:	46c0      	nop			; (mov r8, r8)
20100416:	46bd      	mov	sp, r7
20100418:	bd80      	pop	{r7, pc}
2010041a:	46c0      	nop			; (mov r8, r8)
2010041c:	40020000 	.word	0x40020000
20100420:	00002020 	.word	0x00002020
20100424:	40088000 	.word	0x40088000
20100428:	00000205 	.word	0x00000205

2010042c <dac_init>:
2010042c:	b580      	push	{r7, lr}
2010042e:	af00      	add	r7, sp, #0
20100430:	4b07      	ldr	r3, [pc, #28]	; (20100450 <dac_init+0x24>)
20100432:	4a07      	ldr	r2, [pc, #28]	; (20100450 <dac_init+0x24>)
20100434:	69d2      	ldr	r2, [r2, #28]
20100436:	2180      	movs	r1, #128	; 0x80
20100438:	02c9      	lsls	r1, r1, #11
2010043a:	430a      	orrs	r2, r1
2010043c:	61da      	str	r2, [r3, #28]
2010043e:	4b05      	ldr	r3, [pc, #20]	; (20100454 <dac_init+0x28>)
20100440:	4a04      	ldr	r2, [pc, #16]	; (20100454 <dac_init+0x28>)
20100442:	6812      	ldr	r2, [r2, #0]
20100444:	2104      	movs	r1, #4
20100446:	430a      	orrs	r2, r1
20100448:	601a      	str	r2, [r3, #0]
2010044a:	46c0      	nop			; (mov r8, r8)
2010044c:	46bd      	mov	sp, r7
2010044e:	bd80      	pop	{r7, pc}
20100450:	40020000 	.word	0x40020000
20100454:	40090000 	.word	0x40090000

20100458 <DMAInit>:
20100458:	b580      	push	{r7, lr}
2010045a:	af00      	add	r7, sp, #0
2010045c:	4b1b      	ldr	r3, [pc, #108]	; (201004cc <DMAInit+0x74>)
2010045e:	4a1b      	ldr	r2, [pc, #108]	; (201004cc <DMAInit+0x74>)
20100460:	69d2      	ldr	r2, [r2, #28]
20100462:	2120      	movs	r1, #32
20100464:	430a      	orrs	r2, r1
20100466:	61da      	str	r2, [r3, #28]
20100468:	4b19      	ldr	r3, [pc, #100]	; (201004d0 <DMAInit+0x78>)
2010046a:	4a1a      	ldr	r2, [pc, #104]	; (201004d4 <DMAInit+0x7c>)
2010046c:	447a      	add	r2, pc
2010046e:	609a      	str	r2, [r3, #8]
20100470:	4b17      	ldr	r3, [pc, #92]	; (201004d0 <DMAInit+0x78>)
20100472:	2201      	movs	r2, #1
20100474:	4252      	negs	r2, r2
20100476:	62da      	str	r2, [r3, #44]	; 0x2c
20100478:	4b15      	ldr	r3, [pc, #84]	; (201004d0 <DMAInit+0x78>)
2010047a:	2201      	movs	r2, #1
2010047c:	4252      	negs	r2, r2
2010047e:	621a      	str	r2, [r3, #32]
20100480:	4b13      	ldr	r3, [pc, #76]	; (201004d0 <DMAInit+0x78>)
20100482:	2201      	movs	r2, #1
20100484:	4252      	negs	r2, r2
20100486:	635a      	str	r2, [r3, #52]	; 0x34
20100488:	4b11      	ldr	r3, [pc, #68]	; (201004d0 <DMAInit+0x78>)
2010048a:	2280      	movs	r2, #128	; 0x80
2010048c:	05d2      	lsls	r2, r2, #23
2010048e:	61da      	str	r2, [r3, #28]
20100490:	4b0f      	ldr	r3, [pc, #60]	; (201004d0 <DMAInit+0x78>)
20100492:	2280      	movs	r2, #128	; 0x80
20100494:	05d2      	lsls	r2, r2, #23
20100496:	625a      	str	r2, [r3, #36]	; 0x24
20100498:	4b0d      	ldr	r3, [pc, #52]	; (201004d0 <DMAInit+0x78>)
2010049a:	2280      	movs	r2, #128	; 0x80
2010049c:	05d2      	lsls	r2, r2, #23
2010049e:	629a      	str	r2, [r3, #40]	; 0x28
201004a0:	4b0b      	ldr	r3, [pc, #44]	; (201004d0 <DMAInit+0x78>)
201004a2:	2201      	movs	r2, #1
201004a4:	605a      	str	r2, [r3, #4]
201004a6:	4a0c      	ldr	r2, [pc, #48]	; (201004d8 <DMAInit+0x80>)
201004a8:	447a      	add	r2, pc
201004aa:	23f0      	movs	r3, #240	; 0xf0
201004ac:	005b      	lsls	r3, r3, #1
201004ae:	490b      	ldr	r1, [pc, #44]	; (201004dc <DMAInit+0x84>)
201004b0:	50d1      	str	r1, [r2, r3]
201004b2:	4b0b      	ldr	r3, [pc, #44]	; (201004e0 <DMAInit+0x88>)
201004b4:	447b      	add	r3, pc
201004b6:	330c      	adds	r3, #12
201004b8:	0019      	movs	r1, r3
201004ba:	4a0a      	ldr	r2, [pc, #40]	; (201004e4 <DMAInit+0x8c>)
201004bc:	447a      	add	r2, pc
201004be:	23f2      	movs	r3, #242	; 0xf2
201004c0:	005b      	lsls	r3, r3, #1
201004c2:	50d1      	str	r1, [r2, r3]
201004c4:	46c0      	nop			; (mov r8, r8)
201004c6:	46bd      	mov	sp, r7
201004c8:	bd80      	pop	{r7, pc}
201004ca:	46c0      	nop			; (mov r8, r8)
201004cc:	40020000 	.word	0x40020000
201004d0:	40028000 	.word	0x40028000
201004d4:	00000390 	.word	0x00000390
201004d8:	00000354 	.word	0x00000354
201004dc:	40088018 	.word	0x40088018
201004e0:	00000548 	.word	0x00000548
201004e4:	00000340 	.word	0x00000340

201004e8 <SystemInit>:
201004e8:	b580      	push	{r7, lr}
201004ea:	af00      	add	r7, sp, #0
201004ec:	f7ff fe48 	bl	20100180 <ClkConfig>
201004f0:	f7ff fdaa 	bl	20100048 <PortConfig>
201004f4:	f7ff fe7e 	bl	201001f4 <TimerConfig>
201004f8:	f7ff ff6e 	bl	201003d8 <adc_init>
201004fc:	f7ff ff96 	bl	2010042c <dac_init>
20100500:	4b0c      	ldr	r3, [pc, #48]	; (20100534 <SystemInit+0x4c>)
20100502:	4a0c      	ldr	r2, [pc, #48]	; (20100534 <SystemInit+0x4c>)
20100504:	69d2      	ldr	r2, [r2, #28]
20100506:	490c      	ldr	r1, [pc, #48]	; (20100538 <SystemInit+0x50>)
20100508:	430a      	orrs	r2, r1
2010050a:	61da      	str	r2, [r3, #28]
2010050c:	4b0b      	ldr	r3, [pc, #44]	; (2010053c <SystemInit+0x54>)
2010050e:	2200      	movs	r2, #0
20100510:	625a      	str	r2, [r3, #36]	; 0x24
20100512:	4b0b      	ldr	r3, [pc, #44]	; (20100540 <SystemInit+0x58>)
20100514:	2200      	movs	r2, #0
20100516:	625a      	str	r2, [r3, #36]	; 0x24
20100518:	4b0a      	ldr	r3, [pc, #40]	; (20100544 <SystemInit+0x5c>)
2010051a:	2200      	movs	r2, #0
2010051c:	625a      	str	r2, [r3, #36]	; 0x24
2010051e:	4b05      	ldr	r3, [pc, #20]	; (20100534 <SystemInit+0x4c>)
20100520:	4a04      	ldr	r2, [pc, #16]	; (20100534 <SystemInit+0x4c>)
20100522:	69d2      	ldr	r2, [r2, #28]
20100524:	4908      	ldr	r1, [pc, #32]	; (20100548 <SystemInit+0x60>)
20100526:	400a      	ands	r2, r1
20100528:	61da      	str	r2, [r3, #28]
2010052a:	f7ff ff95 	bl	20100458 <DMAInit>
2010052e:	46c0      	nop			; (mov r8, r8)
20100530:	46bd      	mov	sp, r7
20100532:	bd80      	pop	{r7, pc}
20100534:	40020000 	.word	0x40020000
20100538:	80100100 	.word	0x80100100
2010053c:	40040000 	.word	0x40040000
20100540:	400a0000 	.word	0x400a0000
20100544:	400f8000 	.word	0x400f8000
20100548:	7feffeff 	.word	0x7feffeff

2010054c <adc_dma_start>:
2010054c:	b580      	push	{r7, lr}
2010054e:	af00      	add	r7, sp, #0
20100550:	4b09      	ldr	r3, [pc, #36]	; (20100578 <adc_dma_start+0x2c>)
20100552:	4a09      	ldr	r2, [pc, #36]	; (20100578 <adc_dma_start+0x2c>)
20100554:	6812      	ldr	r2, [r2, #0]
20100556:	2108      	movs	r1, #8
20100558:	430a      	orrs	r2, r1
2010055a:	601a      	str	r2, [r3, #0]
2010055c:	4a07      	ldr	r2, [pc, #28]	; (2010057c <adc_dma_start+0x30>)
2010055e:	447a      	add	r2, pc
20100560:	23f4      	movs	r3, #244	; 0xf4
20100562:	005b      	lsls	r3, r3, #1
20100564:	4906      	ldr	r1, [pc, #24]	; (20100580 <adc_dma_start+0x34>)
20100566:	50d1      	str	r1, [r2, r3]
20100568:	4b06      	ldr	r3, [pc, #24]	; (20100584 <adc_dma_start+0x38>)
2010056a:	2280      	movs	r2, #128	; 0x80
2010056c:	05d2      	lsls	r2, r2, #23
2010056e:	629a      	str	r2, [r3, #40]	; 0x28
20100570:	46c0      	nop			; (mov r8, r8)
20100572:	46bd      	mov	sp, r7
20100574:	bd80      	pop	{r7, pc}
20100576:	46c0      	nop			; (mov r8, r8)
20100578:	40088000 	.word	0x40088000
2010057c:	0000029e 	.word	0x0000029e
20100580:	ae000031 	.word	0xae000031
20100584:	40028000 	.word	0x40028000

20100588 <adc_dma_wait>:
20100588:	b580      	push	{r7, lr}
2010058a:	af00      	add	r7, sp, #0
2010058c:	46c0      	nop			; (mov r8, r8)
2010058e:	4a08      	ldr	r2, [pc, #32]	; (201005b0 <adc_dma_wait+0x28>)
20100590:	447a      	add	r2, pc
20100592:	23f4      	movs	r3, #244	; 0xf4
20100594:	005b      	lsls	r3, r3, #1
20100596:	58d3      	ldr	r3, [r2, r3]
20100598:	2207      	movs	r2, #7
2010059a:	4013      	ands	r3, r2
2010059c:	d1f7      	bne.n	2010058e <adc_dma_wait+0x6>
2010059e:	4b05      	ldr	r3, [pc, #20]	; (201005b4 <adc_dma_wait+0x2c>)
201005a0:	4a04      	ldr	r2, [pc, #16]	; (201005b4 <adc_dma_wait+0x2c>)
201005a2:	6812      	ldr	r2, [r2, #0]
201005a4:	2108      	movs	r1, #8
201005a6:	438a      	bics	r2, r1
201005a8:	601a      	str	r2, [r3, #0]
201005aa:	46c0      	nop			; (mov r8, r8)
201005ac:	46bd      	mov	sp, r7
201005ae:	bd80      	pop	{r7, pc}
201005b0:	0000026c 	.word	0x0000026c
201005b4:	40088000 	.word	0x40088000
