
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b087      	sub	sp, #28
20100004:	af00      	add	r7, sp, #0
20100006:	003b      	movs	r3, r7
20100008:	4a1e      	ldr	r2, [pc, #120]	; (20100084 <main+0x84>)
2010000a:	447a      	add	r2, pc
2010000c:	ca13      	ldmia	r2!, {r0, r1, r4}
2010000e:	c313      	stmia	r3!, {r0, r1, r4}
20100010:	8812      	ldrh	r2, [r2, #0]
20100012:	801a      	strh	r2, [r3, #0]
20100014:	f000 f9e8 	bl	201003e8 <SystemInit>
20100018:	4b1b      	ldr	r3, [pc, #108]	; (20100088 <main+0x88>)
2010001a:	447b      	add	r3, pc
2010001c:	2200      	movs	r2, #0
2010001e:	601a      	str	r2, [r3, #0]
20100020:	2300      	movs	r3, #0
20100022:	613b      	str	r3, [r7, #16]
20100024:	4b19      	ldr	r3, [pc, #100]	; (2010008c <main+0x8c>)
20100026:	6bdb      	ldr	r3, [r3, #60]	; 0x3c
20100028:	2240      	movs	r2, #64	; 0x40
2010002a:	4013      	ands	r3, r2
2010002c:	d0fa      	beq.n	20100024 <main+0x24>
2010002e:	e004      	b.n	2010003a <main+0x3a>
20100030:	4b16      	ldr	r3, [pc, #88]	; (2010008c <main+0x8c>)
20100032:	681a      	ldr	r2, [r3, #0]
20100034:	230f      	movs	r3, #15
20100036:	18fb      	adds	r3, r7, r3
20100038:	701a      	strb	r2, [r3, #0]
2010003a:	4b14      	ldr	r3, [pc, #80]	; (2010008c <main+0x8c>)
2010003c:	699b      	ldr	r3, [r3, #24]
2010003e:	2210      	movs	r2, #16
20100040:	4013      	ands	r3, r2
20100042:	d0f5      	beq.n	20100030 <main+0x30>
20100044:	003b      	movs	r3, r7
20100046:	617b      	str	r3, [r7, #20]
20100048:	e005      	b.n	20100056 <main+0x56>
2010004a:	4a10      	ldr	r2, [pc, #64]	; (2010008c <main+0x8c>)
2010004c:	697b      	ldr	r3, [r7, #20]
2010004e:	1c59      	adds	r1, r3, #1
20100050:	6179      	str	r1, [r7, #20]
20100052:	781b      	ldrb	r3, [r3, #0]
20100054:	6013      	str	r3, [r2, #0]
20100056:	697b      	ldr	r3, [r7, #20]
20100058:	781b      	ldrb	r3, [r3, #0]
2010005a:	2b00      	cmp	r3, #0
2010005c:	d1f5      	bne.n	2010004a <main+0x4a>
2010005e:	4b0c      	ldr	r3, [pc, #48]	; (20100090 <main+0x90>)
20100060:	4a0b      	ldr	r2, [pc, #44]	; (20100090 <main+0x90>)
20100062:	6812      	ldr	r2, [r2, #0]
20100064:	490b      	ldr	r1, [pc, #44]	; (20100094 <main+0x94>)
20100066:	430a      	orrs	r2, r1
20100068:	601a      	str	r2, [r3, #0]
2010006a:	2064      	movs	r0, #100	; 0x64
2010006c:	f000 f814 	bl	20100098 <sleep>
20100070:	4b07      	ldr	r3, [pc, #28]	; (20100090 <main+0x90>)
20100072:	4a07      	ldr	r2, [pc, #28]	; (20100090 <main+0x90>)
20100074:	6812      	ldr	r2, [r2, #0]
20100076:	0c12      	lsrs	r2, r2, #16
20100078:	0412      	lsls	r2, r2, #16
2010007a:	601a      	str	r2, [r3, #0]
2010007c:	2064      	movs	r0, #100	; 0x64
2010007e:	f000 f80b 	bl	20100098 <sleep>
20100082:	e7cf      	b.n	20100024 <main+0x24>
20100084:	000007f2 	.word	0x000007f2
20100088:	ffefffe6 	.word	0xffefffe6
2010008c:	40030000 	.word	0x40030000
20100090:	400c0000 	.word	0x400c0000
20100094:	0000ffff 	.word	0x0000ffff

20100098 <sleep>:
20100098:	b580      	push	{r7, lr}
2010009a:	b084      	sub	sp, #16
2010009c:	af00      	add	r7, sp, #0
2010009e:	6078      	str	r0, [r7, #4]
201000a0:	2300      	movs	r3, #0
201000a2:	60fb      	str	r3, [r7, #12]
201000a4:	e00b      	b.n	201000be <sleep+0x26>
201000a6:	46c0      	nop			; (mov r8, r8)
201000a8:	4b09      	ldr	r3, [pc, #36]	; (201000d0 <sleep+0x38>)
201000aa:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201000ac:	2202      	movs	r2, #2
201000ae:	4013      	ands	r3, r2
201000b0:	d0fa      	beq.n	201000a8 <sleep+0x10>
201000b2:	4b07      	ldr	r3, [pc, #28]	; (201000d0 <sleep+0x38>)
201000b4:	2200      	movs	r2, #0
201000b6:	655a      	str	r2, [r3, #84]	; 0x54
201000b8:	68fb      	ldr	r3, [r7, #12]
201000ba:	3301      	adds	r3, #1
201000bc:	60fb      	str	r3, [r7, #12]
201000be:	68fa      	ldr	r2, [r7, #12]
201000c0:	687b      	ldr	r3, [r7, #4]
201000c2:	429a      	cmp	r2, r3
201000c4:	d3ef      	bcc.n	201000a6 <sleep+0xe>
201000c6:	46c0      	nop			; (mov r8, r8)
201000c8:	0018      	movs	r0, r3
201000ca:	46bd      	mov	sp, r7
201000cc:	b004      	add	sp, #16
201000ce:	bd80      	pop	{r7, pc}
201000d0:	40098000 	.word	0x40098000

201000d4 <PortConfig>:
201000d4:	b580      	push	{r7, lr}
201000d6:	af00      	add	r7, sp, #0
201000d8:	4b44      	ldr	r3, [pc, #272]	; (201001ec <PortConfig+0x118>)
201000da:	4a44      	ldr	r2, [pc, #272]	; (201001ec <PortConfig+0x118>)
201000dc:	69d2      	ldr	r2, [r2, #28]
201000de:	2180      	movs	r1, #128	; 0x80
201000e0:	0449      	lsls	r1, r1, #17
201000e2:	430a      	orrs	r2, r1
201000e4:	61da      	str	r2, [r3, #28]
201000e6:	4b42      	ldr	r3, [pc, #264]	; (201001f0 <PortConfig+0x11c>)
201000e8:	2200      	movs	r2, #0
201000ea:	609a      	str	r2, [r3, #8]
201000ec:	4b40      	ldr	r3, [pc, #256]	; (201001f0 <PortConfig+0x11c>)
201000ee:	2200      	movs	r2, #0
201000f0:	601a      	str	r2, [r3, #0]
201000f2:	4b3f      	ldr	r3, [pc, #252]	; (201001f0 <PortConfig+0x11c>)
201000f4:	22ff      	movs	r2, #255	; 0xff
201000f6:	01d2      	lsls	r2, r2, #7
201000f8:	605a      	str	r2, [r3, #4]
201000fa:	4b3d      	ldr	r3, [pc, #244]	; (201001f0 <PortConfig+0x11c>)
201000fc:	22ff      	movs	r2, #255	; 0xff
201000fe:	01d2      	lsls	r2, r2, #7
20100100:	60da      	str	r2, [r3, #12]
20100102:	4b3b      	ldr	r3, [pc, #236]	; (201001f0 <PortConfig+0x11c>)
20100104:	4a3b      	ldr	r2, [pc, #236]	; (201001f4 <PortConfig+0x120>)
20100106:	619a      	str	r2, [r3, #24]
20100108:	4b38      	ldr	r3, [pc, #224]	; (201001ec <PortConfig+0x118>)
2010010a:	4a38      	ldr	r2, [pc, #224]	; (201001ec <PortConfig+0x118>)
2010010c:	69d2      	ldr	r2, [r2, #28]
2010010e:	2180      	movs	r1, #128	; 0x80
20100110:	0389      	lsls	r1, r1, #14
20100112:	430a      	orrs	r2, r1
20100114:	61da      	str	r2, [r3, #28]
20100116:	4b38      	ldr	r3, [pc, #224]	; (201001f8 <PortConfig+0x124>)
20100118:	4a37      	ldr	r2, [pc, #220]	; (201001f8 <PortConfig+0x124>)
2010011a:	6892      	ldr	r2, [r2, #8]
2010011c:	4937      	ldr	r1, [pc, #220]	; (201001fc <PortConfig+0x128>)
2010011e:	400a      	ands	r2, r1
20100120:	609a      	str	r2, [r3, #8]
20100122:	4b35      	ldr	r3, [pc, #212]	; (201001f8 <PortConfig+0x124>)
20100124:	4a34      	ldr	r2, [pc, #208]	; (201001f8 <PortConfig+0x124>)
20100126:	6892      	ldr	r2, [r2, #8]
20100128:	4935      	ldr	r1, [pc, #212]	; (20100200 <PortConfig+0x12c>)
2010012a:	400a      	ands	r2, r1
2010012c:	609a      	str	r2, [r3, #8]
2010012e:	4b32      	ldr	r3, [pc, #200]	; (201001f8 <PortConfig+0x124>)
20100130:	4a31      	ldr	r2, [pc, #196]	; (201001f8 <PortConfig+0x124>)
20100132:	6892      	ldr	r2, [r2, #8]
20100134:	2180      	movs	r1, #128	; 0x80
20100136:	0189      	lsls	r1, r1, #6
20100138:	430a      	orrs	r2, r1
2010013a:	609a      	str	r2, [r3, #8]
2010013c:	4b2e      	ldr	r3, [pc, #184]	; (201001f8 <PortConfig+0x124>)
2010013e:	4a2e      	ldr	r2, [pc, #184]	; (201001f8 <PortConfig+0x124>)
20100140:	6892      	ldr	r2, [r2, #8]
20100142:	2180      	movs	r1, #128	; 0x80
20100144:	0209      	lsls	r1, r1, #8
20100146:	430a      	orrs	r2, r1
20100148:	609a      	str	r2, [r3, #8]
2010014a:	4b2b      	ldr	r3, [pc, #172]	; (201001f8 <PortConfig+0x124>)
2010014c:	4a2a      	ldr	r2, [pc, #168]	; (201001f8 <PortConfig+0x124>)
2010014e:	6852      	ldr	r2, [r2, #4]
20100150:	2140      	movs	r1, #64	; 0x40
20100152:	430a      	orrs	r2, r1
20100154:	605a      	str	r2, [r3, #4]
20100156:	4b28      	ldr	r3, [pc, #160]	; (201001f8 <PortConfig+0x124>)
20100158:	4a27      	ldr	r2, [pc, #156]	; (201001f8 <PortConfig+0x124>)
2010015a:	6852      	ldr	r2, [r2, #4]
2010015c:	2180      	movs	r1, #128	; 0x80
2010015e:	430a      	orrs	r2, r1
20100160:	605a      	str	r2, [r3, #4]
20100162:	4b25      	ldr	r3, [pc, #148]	; (201001f8 <PortConfig+0x124>)
20100164:	4a24      	ldr	r2, [pc, #144]	; (201001f8 <PortConfig+0x124>)
20100166:	68d2      	ldr	r2, [r2, #12]
20100168:	2140      	movs	r1, #64	; 0x40
2010016a:	430a      	orrs	r2, r1
2010016c:	60da      	str	r2, [r3, #12]
2010016e:	4b22      	ldr	r3, [pc, #136]	; (201001f8 <PortConfig+0x124>)
20100170:	4a21      	ldr	r2, [pc, #132]	; (201001f8 <PortConfig+0x124>)
20100172:	68d2      	ldr	r2, [r2, #12]
20100174:	2180      	movs	r1, #128	; 0x80
20100176:	430a      	orrs	r2, r1
20100178:	60da      	str	r2, [r3, #12]
2010017a:	4b1f      	ldr	r3, [pc, #124]	; (201001f8 <PortConfig+0x124>)
2010017c:	4a1e      	ldr	r2, [pc, #120]	; (201001f8 <PortConfig+0x124>)
2010017e:	6992      	ldr	r2, [r2, #24]
20100180:	21c0      	movs	r1, #192	; 0xc0
20100182:	0189      	lsls	r1, r1, #6
20100184:	430a      	orrs	r2, r1
20100186:	619a      	str	r2, [r3, #24]
20100188:	4b1b      	ldr	r3, [pc, #108]	; (201001f8 <PortConfig+0x124>)
2010018a:	4a1b      	ldr	r2, [pc, #108]	; (201001f8 <PortConfig+0x124>)
2010018c:	6992      	ldr	r2, [r2, #24]
2010018e:	21c0      	movs	r1, #192	; 0xc0
20100190:	0209      	lsls	r1, r1, #8
20100192:	430a      	orrs	r2, r1
20100194:	619a      	str	r2, [r3, #24]
20100196:	4b15      	ldr	r3, [pc, #84]	; (201001ec <PortConfig+0x118>)
20100198:	4a14      	ldr	r2, [pc, #80]	; (201001ec <PortConfig+0x118>)
2010019a:	69d2      	ldr	r2, [r2, #28]
2010019c:	2180      	movs	r1, #128	; 0x80
2010019e:	0409      	lsls	r1, r1, #16
201001a0:	430a      	orrs	r2, r1
201001a2:	61da      	str	r2, [r3, #28]
201001a4:	4b17      	ldr	r3, [pc, #92]	; (20100204 <PortConfig+0x130>)
201001a6:	4a17      	ldr	r2, [pc, #92]	; (20100204 <PortConfig+0x130>)
201001a8:	6892      	ldr	r2, [r2, #8]
201001aa:	4917      	ldr	r1, [pc, #92]	; (20100208 <PortConfig+0x134>)
201001ac:	400a      	ands	r2, r1
201001ae:	609a      	str	r2, [r3, #8]
201001b0:	4b14      	ldr	r3, [pc, #80]	; (20100204 <PortConfig+0x130>)
201001b2:	4a14      	ldr	r2, [pc, #80]	; (20100204 <PortConfig+0x130>)
201001b4:	6892      	ldr	r2, [r2, #8]
201001b6:	21a0      	movs	r1, #160	; 0xa0
201001b8:	0049      	lsls	r1, r1, #1
201001ba:	430a      	orrs	r2, r1
201001bc:	609a      	str	r2, [r3, #8]
201001be:	4b11      	ldr	r3, [pc, #68]	; (20100204 <PortConfig+0x130>)
201001c0:	4a10      	ldr	r2, [pc, #64]	; (20100204 <PortConfig+0x130>)
201001c2:	68d2      	ldr	r2, [r2, #12]
201001c4:	2118      	movs	r1, #24
201001c6:	430a      	orrs	r2, r1
201001c8:	60da      	str	r2, [r3, #12]
201001ca:	4b0e      	ldr	r3, [pc, #56]	; (20100204 <PortConfig+0x130>)
201001cc:	4a0d      	ldr	r2, [pc, #52]	; (20100204 <PortConfig+0x130>)
201001ce:	6992      	ldr	r2, [r2, #24]
201001d0:	21f0      	movs	r1, #240	; 0xf0
201001d2:	0089      	lsls	r1, r1, #2
201001d4:	430a      	orrs	r2, r1
201001d6:	619a      	str	r2, [r3, #24]
201001d8:	4b0a      	ldr	r3, [pc, #40]	; (20100204 <PortConfig+0x130>)
201001da:	4a0a      	ldr	r2, [pc, #40]	; (20100204 <PortConfig+0x130>)
201001dc:	6812      	ldr	r2, [r2, #0]
201001de:	2118      	movs	r1, #24
201001e0:	438a      	bics	r2, r1
201001e2:	601a      	str	r2, [r3, #0]
201001e4:	46c0      	nop			; (mov r8, r8)
201001e6:	46bd      	mov	sp, r7
201001e8:	bd80      	pop	{r7, pc}
201001ea:	46c0      	nop			; (mov r8, r8)
201001ec:	40020000 	.word	0x40020000
201001f0:	400c0000 	.word	0x400c0000
201001f4:	3fffc000 	.word	0x3fffc000
201001f8:	400a8000 	.word	0x400a8000
201001fc:	ffffcfff 	.word	0xffffcfff
20100200:	ffff3fff 	.word	0xffff3fff
20100204:	400b8000 	.word	0x400b8000
20100208:	fffffc3f 	.word	0xfffffc3f

2010020c <ClkConfig>:
2010020c:	b580      	push	{r7, lr}
2010020e:	af00      	add	r7, sp, #0
20100210:	4b18      	ldr	r3, [pc, #96]	; (20100274 <ClkConfig+0x68>)
20100212:	4a18      	ldr	r2, [pc, #96]	; (20100274 <ClkConfig+0x68>)
20100214:	6892      	ldr	r2, [r2, #8]
20100216:	2101      	movs	r1, #1
20100218:	430a      	orrs	r2, r1
2010021a:	609a      	str	r2, [r3, #8]
2010021c:	46c0      	nop			; (mov r8, r8)
2010021e:	4b15      	ldr	r3, [pc, #84]	; (20100274 <ClkConfig+0x68>)
20100220:	681b      	ldr	r3, [r3, #0]
20100222:	2204      	movs	r2, #4
20100224:	4013      	ands	r3, r2
20100226:	d0fa      	beq.n	2010021e <ClkConfig+0x12>
20100228:	4b12      	ldr	r3, [pc, #72]	; (20100274 <ClkConfig+0x68>)
2010022a:	4a12      	ldr	r2, [pc, #72]	; (20100274 <ClkConfig+0x68>)
2010022c:	68d2      	ldr	r2, [r2, #12]
2010022e:	2102      	movs	r1, #2
20100230:	430a      	orrs	r2, r1
20100232:	60da      	str	r2, [r3, #12]
20100234:	4b0f      	ldr	r3, [pc, #60]	; (20100274 <ClkConfig+0x68>)
20100236:	4a10      	ldr	r2, [pc, #64]	; (20100278 <ClkConfig+0x6c>)
20100238:	605a      	str	r2, [r3, #4]
2010023a:	46c0      	nop			; (mov r8, r8)
2010023c:	4b0d      	ldr	r3, [pc, #52]	; (20100274 <ClkConfig+0x68>)
2010023e:	681b      	ldr	r3, [r3, #0]
20100240:	2202      	movs	r2, #2
20100242:	4013      	ands	r3, r2
20100244:	d0fa      	beq.n	2010023c <ClkConfig+0x30>
20100246:	4b0d      	ldr	r3, [pc, #52]	; (2010027c <ClkConfig+0x70>)
20100248:	4a0c      	ldr	r2, [pc, #48]	; (2010027c <ClkConfig+0x70>)
2010024a:	6812      	ldr	r2, [r2, #0]
2010024c:	2120      	movs	r1, #32
2010024e:	430a      	orrs	r2, r1
20100250:	601a      	str	r2, [r3, #0]
20100252:	4b08      	ldr	r3, [pc, #32]	; (20100274 <ClkConfig+0x68>)
20100254:	4a07      	ldr	r2, [pc, #28]	; (20100274 <ClkConfig+0x68>)
20100256:	68d2      	ldr	r2, [r2, #12]
20100258:	2180      	movs	r1, #128	; 0x80
2010025a:	0049      	lsls	r1, r1, #1
2010025c:	430a      	orrs	r2, r1
2010025e:	60da      	str	r2, [r3, #12]
20100260:	4b04      	ldr	r3, [pc, #16]	; (20100274 <ClkConfig+0x68>)
20100262:	4a04      	ldr	r2, [pc, #16]	; (20100274 <ClkConfig+0x68>)
20100264:	68d2      	ldr	r2, [r2, #12]
20100266:	2104      	movs	r1, #4
20100268:	430a      	orrs	r2, r1
2010026a:	60da      	str	r2, [r3, #12]
2010026c:	46c0      	nop			; (mov r8, r8)
2010026e:	46bd      	mov	sp, r7
20100270:	bd80      	pop	{r7, pc}
20100272:	46c0      	nop			; (mov r8, r8)
20100274:	40020000 	.word	0x40020000
20100278:	00000e04 	.word	0x00000e04
2010027c:	40018000 	.word	0x40018000

20100280 <TimerConfig>:
20100280:	b580      	push	{r7, lr}
20100282:	af00      	add	r7, sp, #0
20100284:	4b33      	ldr	r3, [pc, #204]	; (20100354 <TimerConfig+0xd4>)
20100286:	4a33      	ldr	r2, [pc, #204]	; (20100354 <TimerConfig+0xd4>)
20100288:	69d2      	ldr	r2, [r2, #28]
2010028a:	2180      	movs	r1, #128	; 0x80
2010028c:	0309      	lsls	r1, r1, #12
2010028e:	430a      	orrs	r2, r1
20100290:	61da      	str	r2, [r3, #28]
20100292:	4b30      	ldr	r3, [pc, #192]	; (20100354 <TimerConfig+0xd4>)
20100294:	4a2f      	ldr	r2, [pc, #188]	; (20100354 <TimerConfig+0xd4>)
20100296:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100298:	2180      	movs	r1, #128	; 0x80
2010029a:	04c9      	lsls	r1, r1, #19
2010029c:	430a      	orrs	r2, r1
2010029e:	629a      	str	r2, [r3, #40]	; 0x28
201002a0:	4b2c      	ldr	r3, [pc, #176]	; (20100354 <TimerConfig+0xd4>)
201002a2:	4a2c      	ldr	r2, [pc, #176]	; (20100354 <TimerConfig+0xd4>)
201002a4:	6a92      	ldr	r2, [r2, #40]	; 0x28
201002a6:	492c      	ldr	r1, [pc, #176]	; (20100358 <TimerConfig+0xd8>)
201002a8:	400a      	ands	r2, r1
201002aa:	629a      	str	r2, [r3, #40]	; 0x28
201002ac:	4b2b      	ldr	r3, [pc, #172]	; (2010035c <TimerConfig+0xdc>)
201002ae:	2200      	movs	r2, #0
201002b0:	601a      	str	r2, [r3, #0]
201002b2:	4b2a      	ldr	r3, [pc, #168]	; (2010035c <TimerConfig+0xdc>)
201002b4:	220b      	movs	r2, #11
201002b6:	605a      	str	r2, [r3, #4]
201002b8:	4b28      	ldr	r3, [pc, #160]	; (2010035c <TimerConfig+0xdc>)
201002ba:	4a29      	ldr	r2, [pc, #164]	; (20100360 <TimerConfig+0xe0>)
201002bc:	609a      	str	r2, [r3, #8]
201002be:	4b27      	ldr	r3, [pc, #156]	; (2010035c <TimerConfig+0xdc>)
201002c0:	4a28      	ldr	r2, [pc, #160]	; (20100364 <TimerConfig+0xe4>)
201002c2:	611a      	str	r2, [r3, #16]
201002c4:	4b25      	ldr	r3, [pc, #148]	; (2010035c <TimerConfig+0xdc>)
201002c6:	4a25      	ldr	r2, [pc, #148]	; (2010035c <TimerConfig+0xdc>)
201002c8:	6a12      	ldr	r2, [r2, #32]
201002ca:	4927      	ldr	r1, [pc, #156]	; (20100368 <TimerConfig+0xe8>)
201002cc:	400a      	ands	r2, r1
201002ce:	621a      	str	r2, [r3, #32]
201002d0:	4b22      	ldr	r3, [pc, #136]	; (2010035c <TimerConfig+0xdc>)
201002d2:	4a22      	ldr	r2, [pc, #136]	; (2010035c <TimerConfig+0xdc>)
201002d4:	6a12      	ldr	r2, [r2, #32]
201002d6:	21e0      	movs	r1, #224	; 0xe0
201002d8:	0109      	lsls	r1, r1, #4
201002da:	430a      	orrs	r2, r1
201002dc:	621a      	str	r2, [r3, #32]
201002de:	4b1f      	ldr	r3, [pc, #124]	; (2010035c <TimerConfig+0xdc>)
201002e0:	4a1e      	ldr	r2, [pc, #120]	; (2010035c <TimerConfig+0xdc>)
201002e2:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002e4:	210f      	movs	r1, #15
201002e6:	438a      	bics	r2, r1
201002e8:	631a      	str	r2, [r3, #48]	; 0x30
201002ea:	4b1c      	ldr	r3, [pc, #112]	; (2010035c <TimerConfig+0xdc>)
201002ec:	4a1b      	ldr	r2, [pc, #108]	; (2010035c <TimerConfig+0xdc>)
201002ee:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002f0:	210c      	movs	r1, #12
201002f2:	430a      	orrs	r2, r1
201002f4:	631a      	str	r2, [r3, #48]	; 0x30
201002f6:	4b19      	ldr	r3, [pc, #100]	; (2010035c <TimerConfig+0xdc>)
201002f8:	4a18      	ldr	r2, [pc, #96]	; (2010035c <TimerConfig+0xdc>)
201002fa:	6b12      	ldr	r2, [r2, #48]	; 0x30
201002fc:	2101      	movs	r1, #1
201002fe:	430a      	orrs	r2, r1
20100300:	631a      	str	r2, [r3, #48]	; 0x30
20100302:	4b16      	ldr	r3, [pc, #88]	; (2010035c <TimerConfig+0xdc>)
20100304:	4a15      	ldr	r2, [pc, #84]	; (2010035c <TimerConfig+0xdc>)
20100306:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100308:	4918      	ldr	r1, [pc, #96]	; (2010036c <TimerConfig+0xec>)
2010030a:	400a      	ands	r2, r1
2010030c:	631a      	str	r2, [r3, #48]	; 0x30
2010030e:	4b13      	ldr	r3, [pc, #76]	; (2010035c <TimerConfig+0xdc>)
20100310:	4a12      	ldr	r2, [pc, #72]	; (2010035c <TimerConfig+0xdc>)
20100312:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100314:	21c0      	movs	r1, #192	; 0xc0
20100316:	0109      	lsls	r1, r1, #4
20100318:	430a      	orrs	r2, r1
2010031a:	631a      	str	r2, [r3, #48]	; 0x30
2010031c:	4b0f      	ldr	r3, [pc, #60]	; (2010035c <TimerConfig+0xdc>)
2010031e:	4a0f      	ldr	r2, [pc, #60]	; (2010035c <TimerConfig+0xdc>)
20100320:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100322:	2180      	movs	r1, #128	; 0x80
20100324:	0049      	lsls	r1, r1, #1
20100326:	430a      	orrs	r2, r1
20100328:	631a      	str	r2, [r3, #48]	; 0x30
2010032a:	4b0c      	ldr	r3, [pc, #48]	; (2010035c <TimerConfig+0xdc>)
2010032c:	4a0b      	ldr	r2, [pc, #44]	; (2010035c <TimerConfig+0xdc>)
2010032e:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100330:	21c8      	movs	r1, #200	; 0xc8
20100332:	0209      	lsls	r1, r1, #8
20100334:	430a      	orrs	r2, r1
20100336:	641a      	str	r2, [r3, #64]	; 0x40
20100338:	4b08      	ldr	r3, [pc, #32]	; (2010035c <TimerConfig+0xdc>)
2010033a:	4a08      	ldr	r2, [pc, #32]	; (2010035c <TimerConfig+0xdc>)
2010033c:	6d92      	ldr	r2, [r2, #88]	; 0x58
2010033e:	21f0      	movs	r1, #240	; 0xf0
20100340:	0149      	lsls	r1, r1, #5
20100342:	430a      	orrs	r2, r1
20100344:	659a      	str	r2, [r3, #88]	; 0x58
20100346:	4b05      	ldr	r3, [pc, #20]	; (2010035c <TimerConfig+0xdc>)
20100348:	2201      	movs	r2, #1
2010034a:	60da      	str	r2, [r3, #12]
2010034c:	46c0      	nop			; (mov r8, r8)
2010034e:	46bd      	mov	sp, r7
20100350:	bd80      	pop	{r7, pc}
20100352:	46c0      	nop			; (mov r8, r8)
20100354:	40020000 	.word	0x40020000
20100358:	ff00ffff 	.word	0xff00ffff
2010035c:	40098000 	.word	0x40098000
20100360:	0000270f 	.word	0x0000270f
20100364:	00001388 	.word	0x00001388
20100368:	fffff1ff 	.word	0xfffff1ff
2010036c:	fffff0ff 	.word	0xfffff0ff

20100370 <UartConfig>:
20100370:	b580      	push	{r7, lr}
20100372:	af00      	add	r7, sp, #0
20100374:	4b19      	ldr	r3, [pc, #100]	; (201003dc <UartConfig+0x6c>)
20100376:	4a19      	ldr	r2, [pc, #100]	; (201003dc <UartConfig+0x6c>)
20100378:	69d2      	ldr	r2, [r2, #28]
2010037a:	2140      	movs	r1, #64	; 0x40
2010037c:	430a      	orrs	r2, r1
2010037e:	61da      	str	r2, [r3, #28]
20100380:	4b16      	ldr	r3, [pc, #88]	; (201003dc <UartConfig+0x6c>)
20100382:	4a16      	ldr	r2, [pc, #88]	; (201003dc <UartConfig+0x6c>)
20100384:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100386:	2180      	movs	r1, #128	; 0x80
20100388:	0449      	lsls	r1, r1, #17
2010038a:	430a      	orrs	r2, r1
2010038c:	629a      	str	r2, [r3, #40]	; 0x28
2010038e:	4b14      	ldr	r3, [pc, #80]	; (201003e0 <UartConfig+0x70>)
20100390:	2241      	movs	r2, #65	; 0x41
20100392:	625a      	str	r2, [r3, #36]	; 0x24
20100394:	4b12      	ldr	r3, [pc, #72]	; (201003e0 <UartConfig+0x70>)
20100396:	2207      	movs	r2, #7
20100398:	629a      	str	r2, [r3, #40]	; 0x28
2010039a:	4b11      	ldr	r3, [pc, #68]	; (201003e0 <UartConfig+0x70>)
2010039c:	4a10      	ldr	r2, [pc, #64]	; (201003e0 <UartConfig+0x70>)
2010039e:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003a0:	213f      	movs	r1, #63	; 0x3f
201003a2:	438a      	bics	r2, r1
201003a4:	635a      	str	r2, [r3, #52]	; 0x34
201003a6:	4b0e      	ldr	r3, [pc, #56]	; (201003e0 <UartConfig+0x70>)
201003a8:	4a0d      	ldr	r2, [pc, #52]	; (201003e0 <UartConfig+0x70>)
201003aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003ac:	2112      	movs	r1, #18
201003ae:	430a      	orrs	r2, r1
201003b0:	635a      	str	r2, [r3, #52]	; 0x34
201003b2:	4b0b      	ldr	r3, [pc, #44]	; (201003e0 <UartConfig+0x70>)
201003b4:	4a0a      	ldr	r2, [pc, #40]	; (201003e0 <UartConfig+0x70>)
201003b6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
201003b8:	2110      	movs	r1, #16
201003ba:	430a      	orrs	r2, r1
201003bc:	62da      	str	r2, [r3, #44]	; 0x2c
201003be:	4b08      	ldr	r3, [pc, #32]	; (201003e0 <UartConfig+0x70>)
201003c0:	4a07      	ldr	r2, [pc, #28]	; (201003e0 <UartConfig+0x70>)
201003c2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
201003c4:	2160      	movs	r1, #96	; 0x60
201003c6:	430a      	orrs	r2, r1
201003c8:	62da      	str	r2, [r3, #44]	; 0x2c
201003ca:	4b05      	ldr	r3, [pc, #20]	; (201003e0 <UartConfig+0x70>)
201003cc:	4a04      	ldr	r2, [pc, #16]	; (201003e0 <UartConfig+0x70>)
201003ce:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003d0:	4904      	ldr	r1, [pc, #16]	; (201003e4 <UartConfig+0x74>)
201003d2:	430a      	orrs	r2, r1
201003d4:	631a      	str	r2, [r3, #48]	; 0x30
201003d6:	46c0      	nop			; (mov r8, r8)
201003d8:	46bd      	mov	sp, r7
201003da:	bd80      	pop	{r7, pc}
201003dc:	40020000 	.word	0x40020000
201003e0:	40030000 	.word	0x40030000
201003e4:	00000301 	.word	0x00000301

201003e8 <SystemInit>:
201003e8:	b580      	push	{r7, lr}
201003ea:	af00      	add	r7, sp, #0
201003ec:	f7ff ff0e 	bl	2010020c <ClkConfig>
201003f0:	f7ff fe70 	bl	201000d4 <PortConfig>
201003f4:	f7ff ff44 	bl	20100280 <TimerConfig>
201003f8:	f7ff ffba 	bl	20100370 <UartConfig>
201003fc:	46c0      	nop			; (mov r8, r8)
201003fe:	46bd      	mov	sp, r7
20100400:	bd80      	pop	{r7, pc}
20100402:	46c0      	nop			; (mov r8, r8)
	...
