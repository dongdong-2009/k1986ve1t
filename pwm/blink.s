
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 2d 04 00 00 8d 04 00 00 8d 04 00 00     ... -...........
	...
  2c:	8d 04 00 00 00 00 00 00 00 00 00 00 8d 04 00 00     ................
  3c:	ed 03 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  4c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  5c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  6c:	8d 04 00 00 8d 04 00 00 05 04 00 00 8d 04 00 00     ................
  7c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  8c:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  9c:	8d 04 00 00 8d 04 00 00 00 00 00 00 00 00 00 00     ................
  ac:	8d 04 00 00 8d 04 00 00 8d 04 00 00 8d 04 00 00     ................
  bc:	8d 04 00 00                                         ....

000000c0 <NVIC_EnableIRQ>:
  c0:	b580      	push	{r7, lr}
  c2:	b082      	sub	sp, #8
  c4:	af00      	add	r7, sp, #0
  c6:	0002      	movs	r2, r0
  c8:	1dfb      	adds	r3, r7, #7
  ca:	701a      	strb	r2, [r3, #0]
  cc:	4909      	ldr	r1, [pc, #36]	; (f4 <NVIC_EnableIRQ+0x34>)
  ce:	1dfb      	adds	r3, r7, #7
  d0:	781b      	ldrb	r3, [r3, #0]
  d2:	b25b      	sxtb	r3, r3
  d4:	095b      	lsrs	r3, r3, #5
  d6:	1dfa      	adds	r2, r7, #7
  d8:	7812      	ldrb	r2, [r2, #0]
  da:	0010      	movs	r0, r2
  dc:	221f      	movs	r2, #31
  de:	4002      	ands	r2, r0
  e0:	2001      	movs	r0, #1
  e2:	4090      	lsls	r0, r2
  e4:	0002      	movs	r2, r0
  e6:	009b      	lsls	r3, r3, #2
  e8:	505a      	str	r2, [r3, r1]
  ea:	46c0      	nop			; (mov r8, r8)
  ec:	46bd      	mov	sp, r7
  ee:	b002      	add	sp, #8
  f0:	bd80      	pop	{r7, pc}
  f2:	46c0      	nop			; (mov r8, r8)
  f4:	e000e100 	.word	0xe000e100

000000f8 <NVIC_SetPriority>:
  f8:	b580      	push	{r7, lr}
  fa:	b082      	sub	sp, #8
  fc:	af00      	add	r7, sp, #0
  fe:	0002      	movs	r2, r0
 100:	6039      	str	r1, [r7, #0]
 102:	1dfb      	adds	r3, r7, #7
 104:	701a      	strb	r2, [r3, #0]
 106:	1dfb      	adds	r3, r7, #7
 108:	781b      	ldrb	r3, [r3, #0]
 10a:	2b7f      	cmp	r3, #127	; 0x7f
 10c:	d90d      	bls.n	12a <NVIC_SetPriority+0x32>
 10e:	4910      	ldr	r1, [pc, #64]	; (150 <NVIC_SetPriority+0x58>)
 110:	1dfb      	adds	r3, r7, #7
 112:	781b      	ldrb	r3, [r3, #0]
 114:	001a      	movs	r2, r3
 116:	230f      	movs	r3, #15
 118:	4013      	ands	r3, r2
 11a:	3b04      	subs	r3, #4
 11c:	683a      	ldr	r2, [r7, #0]
 11e:	b2d2      	uxtb	r2, r2
 120:	0112      	lsls	r2, r2, #4
 122:	b2d2      	uxtb	r2, r2
 124:	18cb      	adds	r3, r1, r3
 126:	761a      	strb	r2, [r3, #24]
 128:	e00d      	b.n	146 <NVIC_SetPriority+0x4e>
 12a:	490a      	ldr	r1, [pc, #40]	; (154 <NVIC_SetPriority+0x5c>)
 12c:	1dfb      	adds	r3, r7, #7
 12e:	2200      	movs	r2, #0
 130:	569a      	ldrsb	r2, [r3, r2]
 132:	683b      	ldr	r3, [r7, #0]
 134:	b2db      	uxtb	r3, r3
 136:	011b      	lsls	r3, r3, #4
 138:	b2d8      	uxtb	r0, r3
 13a:	23c0      	movs	r3, #192	; 0xc0
 13c:	009b      	lsls	r3, r3, #2
 13e:	188a      	adds	r2, r1, r2
 140:	18d3      	adds	r3, r2, r3
 142:	1c02      	adds	r2, r0, #0
 144:	701a      	strb	r2, [r3, #0]
 146:	46c0      	nop			; (mov r8, r8)
 148:	46bd      	mov	sp, r7
 14a:	b002      	add	sp, #8
 14c:	bd80      	pop	{r7, pc}
 14e:	46c0      	nop			; (mov r8, r8)
 150:	e000ed00 	.word	0xe000ed00
 154:	e000e100 	.word	0xe000e100

00000158 <SysTick_Config>:
 158:	b580      	push	{r7, lr}
 15a:	b082      	sub	sp, #8
 15c:	af00      	add	r7, sp, #0
 15e:	6078      	str	r0, [r7, #4]
 160:	687b      	ldr	r3, [r7, #4]
 162:	4a0e      	ldr	r2, [pc, #56]	; (19c <SysTick_Config+0x44>)
 164:	4293      	cmp	r3, r2
 166:	d901      	bls.n	16c <SysTick_Config+0x14>
 168:	2301      	movs	r3, #1
 16a:	e012      	b.n	192 <SysTick_Config+0x3a>
 16c:	4b0c      	ldr	r3, [pc, #48]	; (1a0 <SysTick_Config+0x48>)
 16e:	687a      	ldr	r2, [r7, #4]
 170:	0212      	lsls	r2, r2, #8
 172:	0a12      	lsrs	r2, r2, #8
 174:	3a01      	subs	r2, #1
 176:	605a      	str	r2, [r3, #4]
 178:	2301      	movs	r3, #1
 17a:	425b      	negs	r3, r3
 17c:	210f      	movs	r1, #15
 17e:	0018      	movs	r0, r3
 180:	f7ff ffba 	bl	f8 <NVIC_SetPriority>
 184:	4b06      	ldr	r3, [pc, #24]	; (1a0 <SysTick_Config+0x48>)
 186:	2200      	movs	r2, #0
 188:	609a      	str	r2, [r3, #8]
 18a:	4b05      	ldr	r3, [pc, #20]	; (1a0 <SysTick_Config+0x48>)
 18c:	2207      	movs	r2, #7
 18e:	601a      	str	r2, [r3, #0]
 190:	2300      	movs	r3, #0
 192:	0018      	movs	r0, r3
 194:	46bd      	mov	sp, r7
 196:	b002      	add	sp, #8
 198:	bd80      	pop	{r7, pc}
 19a:	46c0      	nop			; (mov r8, r8)
 19c:	00ffffff 	.word	0x00ffffff
 1a0:	e000e010 	.word	0xe000e010

000001a4 <sleep>:
 1a4:	b580      	push	{r7, lr}
 1a6:	b084      	sub	sp, #16
 1a8:	af00      	add	r7, sp, #0
 1aa:	6078      	str	r0, [r7, #4]
 1ac:	4b07      	ldr	r3, [pc, #28]	; (1cc <sleep+0x28>)
 1ae:	681a      	ldr	r2, [r3, #0]
 1b0:	687b      	ldr	r3, [r7, #4]
 1b2:	18d3      	adds	r3, r2, r3
 1b4:	60fb      	str	r3, [r7, #12]
 1b6:	46c0      	nop			; (mov r8, r8)
 1b8:	4b04      	ldr	r3, [pc, #16]	; (1cc <sleep+0x28>)
 1ba:	681a      	ldr	r2, [r3, #0]
 1bc:	68fb      	ldr	r3, [r7, #12]
 1be:	429a      	cmp	r2, r3
 1c0:	d3fa      	bcc.n	1b8 <sleep+0x14>
 1c2:	46c0      	nop			; (mov r8, r8)
 1c4:	0018      	movs	r0, r3
 1c6:	46bd      	mov	sp, r7
 1c8:	b004      	add	sp, #16
 1ca:	bd80      	pop	{r7, pc}
 1cc:	20000008 	.word	0x20000008

000001d0 <main>:
 1d0:	b580      	push	{r7, lr}
 1d2:	af00      	add	r7, sp, #0
 1d4:	f000 f8f8 	bl	3c8 <SystemInit>
 1d8:	4b04      	ldr	r3, [pc, #16]	; (1ec <main+0x1c>)
 1da:	2200      	movs	r2, #0
 1dc:	601a      	str	r2, [r3, #0]
 1de:	23fa      	movs	r3, #250	; 0xfa
 1e0:	009b      	lsls	r3, r3, #2
 1e2:	0018      	movs	r0, r3
 1e4:	f7ff ffde 	bl	1a4 <sleep>
 1e8:	e7f9      	b.n	1de <main+0xe>
 1ea:	46c0      	nop			; (mov r8, r8)
 1ec:	20000000 	.word	0x20000000

000001f0 <PortConfig>:
 1f0:	b580      	push	{r7, lr}
 1f2:	af00      	add	r7, sp, #0
 1f4:	4b20      	ldr	r3, [pc, #128]	; (278 <PortConfig+0x88>)
 1f6:	4a20      	ldr	r2, [pc, #128]	; (278 <PortConfig+0x88>)
 1f8:	69d2      	ldr	r2, [r2, #28]
 1fa:	2180      	movs	r1, #128	; 0x80
 1fc:	0449      	lsls	r1, r1, #17
 1fe:	430a      	orrs	r2, r1
 200:	61da      	str	r2, [r3, #28]
 202:	4b1e      	ldr	r3, [pc, #120]	; (27c <PortConfig+0x8c>)
 204:	2200      	movs	r2, #0
 206:	609a      	str	r2, [r3, #8]
 208:	4b1c      	ldr	r3, [pc, #112]	; (27c <PortConfig+0x8c>)
 20a:	2200      	movs	r2, #0
 20c:	601a      	str	r2, [r3, #0]
 20e:	4b1b      	ldr	r3, [pc, #108]	; (27c <PortConfig+0x8c>)
 210:	22ff      	movs	r2, #255	; 0xff
 212:	01d2      	lsls	r2, r2, #7
 214:	605a      	str	r2, [r3, #4]
 216:	4b19      	ldr	r3, [pc, #100]	; (27c <PortConfig+0x8c>)
 218:	22ff      	movs	r2, #255	; 0xff
 21a:	01d2      	lsls	r2, r2, #7
 21c:	60da      	str	r2, [r3, #12]
 21e:	4b17      	ldr	r3, [pc, #92]	; (27c <PortConfig+0x8c>)
 220:	4a17      	ldr	r2, [pc, #92]	; (280 <PortConfig+0x90>)
 222:	619a      	str	r2, [r3, #24]
 224:	4b14      	ldr	r3, [pc, #80]	; (278 <PortConfig+0x88>)
 226:	4a14      	ldr	r2, [pc, #80]	; (278 <PortConfig+0x88>)
 228:	69d2      	ldr	r2, [r2, #28]
 22a:	2180      	movs	r1, #128	; 0x80
 22c:	0389      	lsls	r1, r1, #14
 22e:	430a      	orrs	r2, r1
 230:	61da      	str	r2, [r3, #28]
 232:	4b14      	ldr	r3, [pc, #80]	; (284 <PortConfig+0x94>)
 234:	4a13      	ldr	r2, [pc, #76]	; (284 <PortConfig+0x94>)
 236:	6892      	ldr	r2, [r2, #8]
 238:	4913      	ldr	r1, [pc, #76]	; (288 <PortConfig+0x98>)
 23a:	400a      	ands	r2, r1
 23c:	609a      	str	r2, [r3, #8]
 23e:	4b11      	ldr	r3, [pc, #68]	; (284 <PortConfig+0x94>)
 240:	4a10      	ldr	r2, [pc, #64]	; (284 <PortConfig+0x94>)
 242:	6892      	ldr	r2, [r2, #8]
 244:	2180      	movs	r1, #128	; 0x80
 246:	0189      	lsls	r1, r1, #6
 248:	430a      	orrs	r2, r1
 24a:	609a      	str	r2, [r3, #8]
 24c:	4b0d      	ldr	r3, [pc, #52]	; (284 <PortConfig+0x94>)
 24e:	4a0d      	ldr	r2, [pc, #52]	; (284 <PortConfig+0x94>)
 250:	6852      	ldr	r2, [r2, #4]
 252:	2140      	movs	r1, #64	; 0x40
 254:	430a      	orrs	r2, r1
 256:	605a      	str	r2, [r3, #4]
 258:	4b0a      	ldr	r3, [pc, #40]	; (284 <PortConfig+0x94>)
 25a:	4a0a      	ldr	r2, [pc, #40]	; (284 <PortConfig+0x94>)
 25c:	68d2      	ldr	r2, [r2, #12]
 25e:	2140      	movs	r1, #64	; 0x40
 260:	430a      	orrs	r2, r1
 262:	60da      	str	r2, [r3, #12]
 264:	4b07      	ldr	r3, [pc, #28]	; (284 <PortConfig+0x94>)
 266:	4a07      	ldr	r2, [pc, #28]	; (284 <PortConfig+0x94>)
 268:	6992      	ldr	r2, [r2, #24]
 26a:	21c0      	movs	r1, #192	; 0xc0
 26c:	0189      	lsls	r1, r1, #6
 26e:	430a      	orrs	r2, r1
 270:	619a      	str	r2, [r3, #24]
 272:	46c0      	nop			; (mov r8, r8)
 274:	46bd      	mov	sp, r7
 276:	bd80      	pop	{r7, pc}
 278:	40020000 	.word	0x40020000
 27c:	400c0000 	.word	0x400c0000
 280:	3fffc000 	.word	0x3fffc000
 284:	400a8000 	.word	0x400a8000
 288:	ffffcfff 	.word	0xffffcfff

0000028c <ClkConfig>:
 28c:	b580      	push	{r7, lr}
 28e:	af00      	add	r7, sp, #0
 290:	4b18      	ldr	r3, [pc, #96]	; (2f4 <ClkConfig+0x68>)
 292:	4a18      	ldr	r2, [pc, #96]	; (2f4 <ClkConfig+0x68>)
 294:	6892      	ldr	r2, [r2, #8]
 296:	2101      	movs	r1, #1
 298:	430a      	orrs	r2, r1
 29a:	609a      	str	r2, [r3, #8]
 29c:	46c0      	nop			; (mov r8, r8)
 29e:	4b15      	ldr	r3, [pc, #84]	; (2f4 <ClkConfig+0x68>)
 2a0:	681b      	ldr	r3, [r3, #0]
 2a2:	2204      	movs	r2, #4
 2a4:	4013      	ands	r3, r2
 2a6:	d0fa      	beq.n	29e <ClkConfig+0x12>
 2a8:	4b12      	ldr	r3, [pc, #72]	; (2f4 <ClkConfig+0x68>)
 2aa:	4a12      	ldr	r2, [pc, #72]	; (2f4 <ClkConfig+0x68>)
 2ac:	68d2      	ldr	r2, [r2, #12]
 2ae:	2102      	movs	r1, #2
 2b0:	430a      	orrs	r2, r1
 2b2:	60da      	str	r2, [r3, #12]
 2b4:	4b0f      	ldr	r3, [pc, #60]	; (2f4 <ClkConfig+0x68>)
 2b6:	4a10      	ldr	r2, [pc, #64]	; (2f8 <ClkConfig+0x6c>)
 2b8:	605a      	str	r2, [r3, #4]
 2ba:	46c0      	nop			; (mov r8, r8)
 2bc:	4b0d      	ldr	r3, [pc, #52]	; (2f4 <ClkConfig+0x68>)
 2be:	681b      	ldr	r3, [r3, #0]
 2c0:	2202      	movs	r2, #2
 2c2:	4013      	ands	r3, r2
 2c4:	d0fa      	beq.n	2bc <ClkConfig+0x30>
 2c6:	4b0d      	ldr	r3, [pc, #52]	; (2fc <ClkConfig+0x70>)
 2c8:	4a0c      	ldr	r2, [pc, #48]	; (2fc <ClkConfig+0x70>)
 2ca:	6812      	ldr	r2, [r2, #0]
 2cc:	2120      	movs	r1, #32
 2ce:	430a      	orrs	r2, r1
 2d0:	601a      	str	r2, [r3, #0]
 2d2:	4b08      	ldr	r3, [pc, #32]	; (2f4 <ClkConfig+0x68>)
 2d4:	4a07      	ldr	r2, [pc, #28]	; (2f4 <ClkConfig+0x68>)
 2d6:	68d2      	ldr	r2, [r2, #12]
 2d8:	2180      	movs	r1, #128	; 0x80
 2da:	0049      	lsls	r1, r1, #1
 2dc:	430a      	orrs	r2, r1
 2de:	60da      	str	r2, [r3, #12]
 2e0:	4b04      	ldr	r3, [pc, #16]	; (2f4 <ClkConfig+0x68>)
 2e2:	4a04      	ldr	r2, [pc, #16]	; (2f4 <ClkConfig+0x68>)
 2e4:	68d2      	ldr	r2, [r2, #12]
 2e6:	2104      	movs	r1, #4
 2e8:	430a      	orrs	r2, r1
 2ea:	60da      	str	r2, [r3, #12]
 2ec:	46c0      	nop			; (mov r8, r8)
 2ee:	46bd      	mov	sp, r7
 2f0:	bd80      	pop	{r7, pc}
 2f2:	46c0      	nop			; (mov r8, r8)
 2f4:	40020000 	.word	0x40020000
 2f8:	00000e04 	.word	0x00000e04
 2fc:	40018000 	.word	0x40018000

00000300 <TimerConfig>:
 300:	b580      	push	{r7, lr}
 302:	af00      	add	r7, sp, #0
 304:	4b2b      	ldr	r3, [pc, #172]	; (3b4 <TimerConfig+0xb4>)
 306:	4a2b      	ldr	r2, [pc, #172]	; (3b4 <TimerConfig+0xb4>)
 308:	69d2      	ldr	r2, [r2, #28]
 30a:	2180      	movs	r1, #128	; 0x80
 30c:	0309      	lsls	r1, r1, #12
 30e:	430a      	orrs	r2, r1
 310:	61da      	str	r2, [r3, #28]
 312:	4b28      	ldr	r3, [pc, #160]	; (3b4 <TimerConfig+0xb4>)
 314:	4a27      	ldr	r2, [pc, #156]	; (3b4 <TimerConfig+0xb4>)
 316:	6a92      	ldr	r2, [r2, #40]	; 0x28
 318:	2180      	movs	r1, #128	; 0x80
 31a:	04c9      	lsls	r1, r1, #19
 31c:	430a      	orrs	r2, r1
 31e:	629a      	str	r2, [r3, #40]	; 0x28
 320:	4b24      	ldr	r3, [pc, #144]	; (3b4 <TimerConfig+0xb4>)
 322:	4a24      	ldr	r2, [pc, #144]	; (3b4 <TimerConfig+0xb4>)
 324:	6a92      	ldr	r2, [r2, #40]	; 0x28
 326:	4924      	ldr	r1, [pc, #144]	; (3b8 <TimerConfig+0xb8>)
 328:	400a      	ands	r2, r1
 32a:	629a      	str	r2, [r3, #40]	; 0x28
 32c:	4b23      	ldr	r3, [pc, #140]	; (3bc <TimerConfig+0xbc>)
 32e:	2200      	movs	r2, #0
 330:	601a      	str	r2, [r3, #0]
 332:	4b22      	ldr	r3, [pc, #136]	; (3bc <TimerConfig+0xbc>)
 334:	2277      	movs	r2, #119	; 0x77
 336:	605a      	str	r2, [r3, #4]
 338:	4b20      	ldr	r3, [pc, #128]	; (3bc <TimerConfig+0xbc>)
 33a:	4a21      	ldr	r2, [pc, #132]	; (3c0 <TimerConfig+0xc0>)
 33c:	609a      	str	r2, [r3, #8]
 33e:	4b1f      	ldr	r3, [pc, #124]	; (3bc <TimerConfig+0xbc>)
 340:	22fa      	movs	r2, #250	; 0xfa
 342:	0052      	lsls	r2, r2, #1
 344:	611a      	str	r2, [r3, #16]
 346:	4b1d      	ldr	r3, [pc, #116]	; (3bc <TimerConfig+0xbc>)
 348:	4a1c      	ldr	r2, [pc, #112]	; (3bc <TimerConfig+0xbc>)
 34a:	6a12      	ldr	r2, [r2, #32]
 34c:	491d      	ldr	r1, [pc, #116]	; (3c4 <TimerConfig+0xc4>)
 34e:	400a      	ands	r2, r1
 350:	621a      	str	r2, [r3, #32]
 352:	4b1a      	ldr	r3, [pc, #104]	; (3bc <TimerConfig+0xbc>)
 354:	4a19      	ldr	r2, [pc, #100]	; (3bc <TimerConfig+0xbc>)
 356:	6a12      	ldr	r2, [r2, #32]
 358:	2180      	movs	r1, #128	; 0x80
 35a:	0089      	lsls	r1, r1, #2
 35c:	430a      	orrs	r2, r1
 35e:	621a      	str	r2, [r3, #32]
 360:	4b16      	ldr	r3, [pc, #88]	; (3bc <TimerConfig+0xbc>)
 362:	4a16      	ldr	r2, [pc, #88]	; (3bc <TimerConfig+0xbc>)
 364:	6a12      	ldr	r2, [r2, #32]
 366:	21c0      	movs	r1, #192	; 0xc0
 368:	0109      	lsls	r1, r1, #4
 36a:	430a      	orrs	r2, r1
 36c:	621a      	str	r2, [r3, #32]
 36e:	4b13      	ldr	r3, [pc, #76]	; (3bc <TimerConfig+0xbc>)
 370:	4a12      	ldr	r2, [pc, #72]	; (3bc <TimerConfig+0xbc>)
 372:	6b12      	ldr	r2, [r2, #48]	; 0x30
 374:	210f      	movs	r1, #15
 376:	400a      	ands	r2, r1
 378:	631a      	str	r2, [r3, #48]	; 0x30
 37a:	4b10      	ldr	r3, [pc, #64]	; (3bc <TimerConfig+0xbc>)
 37c:	4a0f      	ldr	r2, [pc, #60]	; (3bc <TimerConfig+0xbc>)
 37e:	6b12      	ldr	r2, [r2, #48]	; 0x30
 380:	2108      	movs	r1, #8
 382:	430a      	orrs	r2, r1
 384:	631a      	str	r2, [r3, #48]	; 0x30
 386:	4b0d      	ldr	r3, [pc, #52]	; (3bc <TimerConfig+0xbc>)
 388:	4a0c      	ldr	r2, [pc, #48]	; (3bc <TimerConfig+0xbc>)
 38a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 38c:	2101      	movs	r1, #1
 38e:	430a      	orrs	r2, r1
 390:	631a      	str	r2, [r3, #48]	; 0x30
 392:	4b0a      	ldr	r3, [pc, #40]	; (3bc <TimerConfig+0xbc>)
 394:	4a09      	ldr	r2, [pc, #36]	; (3bc <TimerConfig+0xbc>)
 396:	6d92      	ldr	r2, [r2, #88]	; 0x58
 398:	21f0      	movs	r1, #240	; 0xf0
 39a:	0149      	lsls	r1, r1, #5
 39c:	430a      	orrs	r2, r1
 39e:	659a      	str	r2, [r3, #88]	; 0x58
 3a0:	4b06      	ldr	r3, [pc, #24]	; (3bc <TimerConfig+0xbc>)
 3a2:	2201      	movs	r2, #1
 3a4:	60da      	str	r2, [r3, #12]
 3a6:	200d      	movs	r0, #13
 3a8:	f7ff fe8a 	bl	c0 <NVIC_EnableIRQ>
 3ac:	46c0      	nop			; (mov r8, r8)
 3ae:	46bd      	mov	sp, r7
 3b0:	bd80      	pop	{r7, pc}
 3b2:	46c0      	nop			; (mov r8, r8)
 3b4:	40020000 	.word	0x40020000
 3b8:	ff00ffff 	.word	0xff00ffff
 3bc:	40098000 	.word	0x40098000
 3c0:	000003e7 	.word	0x000003e7
 3c4:	fffff1ff 	.word	0xfffff1ff

000003c8 <SystemInit>:
 3c8:	b580      	push	{r7, lr}
 3ca:	af00      	add	r7, sp, #0
 3cc:	f7ff ff5e 	bl	28c <ClkConfig>
 3d0:	f7ff ff0e 	bl	1f0 <PortConfig>
 3d4:	f7ff ff94 	bl	300 <TimerConfig>
 3d8:	4b03      	ldr	r3, [pc, #12]	; (3e8 <SystemInit+0x20>)
 3da:	0018      	movs	r0, r3
 3dc:	f7ff febc 	bl	158 <SysTick_Config>
 3e0:	46c0      	nop			; (mov r8, r8)
 3e2:	46bd      	mov	sp, r7
 3e4:	bd80      	pop	{r7, pc}
 3e6:	46c0      	nop			; (mov r8, r8)
 3e8:	0001d4c0 	.word	0x0001d4c0

000003ec <SysTick_Handler>:
 3ec:	b580      	push	{r7, lr}
 3ee:	af00      	add	r7, sp, #0
 3f0:	4b03      	ldr	r3, [pc, #12]	; (400 <_stack_size>)
 3f2:	681b      	ldr	r3, [r3, #0]
 3f4:	1c5a      	adds	r2, r3, #1
 3f6:	4b02      	ldr	r3, [pc, #8]	; (400 <_stack_size>)
 3f8:	601a      	str	r2, [r3, #0]
 3fa:	46c0      	nop			; (mov r8, r8)
 3fc:	46bd      	mov	sp, r7
 3fe:	bd80      	pop	{r7, pc}
 400:	20000008 	.word	0x20000008

00000404 <TIMER4_Handler>:
 404:	b580      	push	{r7, lr}
 406:	af00      	add	r7, sp, #0
 408:	4b05      	ldr	r3, [pc, #20]	; (420 <TIMER4_Handler+0x1c>)
 40a:	2200      	movs	r2, #0
 40c:	655a      	str	r2, [r3, #84]	; 0x54
 40e:	4b05      	ldr	r3, [pc, #20]	; (424 <TIMER4_Handler+0x20>)
 410:	4a04      	ldr	r2, [pc, #16]	; (424 <TIMER4_Handler+0x20>)
 412:	6812      	ldr	r2, [r2, #0]
 414:	4904      	ldr	r1, [pc, #16]	; (428 <TIMER4_Handler+0x24>)
 416:	404a      	eors	r2, r1
 418:	601a      	str	r2, [r3, #0]
 41a:	46c0      	nop			; (mov r8, r8)
 41c:	46bd      	mov	sp, r7
 41e:	bd80      	pop	{r7, pc}
 420:	40098000 	.word	0x40098000
 424:	400c0000 	.word	0x400c0000
 428:	0000ffff 	.word	0x0000ffff

0000042c <handler_reset>:
 42c:	b580      	push	{r7, lr}
 42e:	b082      	sub	sp, #8
 430:	af00      	add	r7, sp, #0
 432:	4b11      	ldr	r3, [pc, #68]	; (478 <handler_reset+0x4c>)
 434:	607b      	str	r3, [r7, #4]
 436:	4b11      	ldr	r3, [pc, #68]	; (47c <handler_reset+0x50>)
 438:	603b      	str	r3, [r7, #0]
 43a:	e007      	b.n	44c <handler_reset+0x20>
 43c:	683b      	ldr	r3, [r7, #0]
 43e:	1d1a      	adds	r2, r3, #4
 440:	603a      	str	r2, [r7, #0]
 442:	687a      	ldr	r2, [r7, #4]
 444:	1d11      	adds	r1, r2, #4
 446:	6079      	str	r1, [r7, #4]
 448:	6812      	ldr	r2, [r2, #0]
 44a:	601a      	str	r2, [r3, #0]
 44c:	683a      	ldr	r2, [r7, #0]
 44e:	4b0c      	ldr	r3, [pc, #48]	; (480 <handler_reset+0x54>)
 450:	429a      	cmp	r2, r3
 452:	d3f3      	bcc.n	43c <handler_reset+0x10>
 454:	4b0b      	ldr	r3, [pc, #44]	; (484 <handler_reset+0x58>)
 456:	603b      	str	r3, [r7, #0]
 458:	e004      	b.n	464 <handler_reset+0x38>
 45a:	683b      	ldr	r3, [r7, #0]
 45c:	1d1a      	adds	r2, r3, #4
 45e:	603a      	str	r2, [r7, #0]
 460:	2200      	movs	r2, #0
 462:	601a      	str	r2, [r3, #0]
 464:	683a      	ldr	r2, [r7, #0]
 466:	4b08      	ldr	r3, [pc, #32]	; (488 <handler_reset+0x5c>)
 468:	429a      	cmp	r2, r3
 46a:	d3f6      	bcc.n	45a <handler_reset+0x2e>
 46c:	f7ff feb0 	bl	1d0 <main>
 470:	46c0      	nop			; (mov r8, r8)
 472:	46bd      	mov	sp, r7
 474:	b002      	add	sp, #8
 476:	bd80      	pop	{r7, pc}
 478:	00000494 	.word	0x00000494
 47c:	20000000 	.word	0x20000000
 480:	20000000 	.word	0x20000000
 484:	20000000 	.word	0x20000000
 488:	2000000c 	.word	0x2000000c

0000048c <default_handler>:
 48c:	b580      	push	{r7, lr}
 48e:	af00      	add	r7, sp, #0
 490:	e7fe      	b.n	490 <default_handler+0x4>
 492:	46c0      	nop			; (mov r8, r8)
