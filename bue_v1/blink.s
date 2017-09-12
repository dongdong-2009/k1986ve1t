
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 89 03 00 00 e9 03 00 00 e9 03 00 00     ... ............
	...
  2c:	e9 03 00 00 00 00 00 00 00 00 00 00 e9 03 00 00     ................
  3c:	4d 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     M...............
  4c:	e9 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     ................
  5c:	e9 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     ................
  6c:	e9 03 00 00 e9 03 00 00 e9 03 00 00 65 03 00 00     ............e...
  7c:	e9 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     ................
  8c:	e9 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     ................
  9c:	e9 03 00 00 e9 03 00 00 00 00 00 00 00 00 00 00     ................
  ac:	e9 03 00 00 e9 03 00 00 e9 03 00 00 e9 03 00 00     ................
  bc:	e9 03 00 00                                         ....

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
 1d4:	f000 f8a8 	bl	328 <SystemInit>
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
 1f4:	4b11      	ldr	r3, [pc, #68]	; (23c <PortConfig+0x4c>)
 1f6:	4a11      	ldr	r2, [pc, #68]	; (23c <PortConfig+0x4c>)
 1f8:	69d2      	ldr	r2, [r2, #28]
 1fa:	2180      	movs	r1, #128	; 0x80
 1fc:	0409      	lsls	r1, r1, #16
 1fe:	430a      	orrs	r2, r1
 200:	61da      	str	r2, [r3, #28]
 202:	4b0f      	ldr	r3, [pc, #60]	; (240 <PortConfig+0x50>)
 204:	2200      	movs	r2, #0
 206:	609a      	str	r2, [r3, #8]
 208:	4b0d      	ldr	r3, [pc, #52]	; (240 <PortConfig+0x50>)
 20a:	2200      	movs	r2, #0
 20c:	601a      	str	r2, [r3, #0]
 20e:	4b0c      	ldr	r3, [pc, #48]	; (240 <PortConfig+0x50>)
 210:	4a0b      	ldr	r2, [pc, #44]	; (240 <PortConfig+0x50>)
 212:	6852      	ldr	r2, [r2, #4]
 214:	2120      	movs	r1, #32
 216:	430a      	orrs	r2, r1
 218:	605a      	str	r2, [r3, #4]
 21a:	4b09      	ldr	r3, [pc, #36]	; (240 <PortConfig+0x50>)
 21c:	4a08      	ldr	r2, [pc, #32]	; (240 <PortConfig+0x50>)
 21e:	68d2      	ldr	r2, [r2, #12]
 220:	2120      	movs	r1, #32
 222:	430a      	orrs	r2, r1
 224:	60da      	str	r2, [r3, #12]
 226:	4b06      	ldr	r3, [pc, #24]	; (240 <PortConfig+0x50>)
 228:	4a05      	ldr	r2, [pc, #20]	; (240 <PortConfig+0x50>)
 22a:	6992      	ldr	r2, [r2, #24]
 22c:	21c0      	movs	r1, #192	; 0xc0
 22e:	0109      	lsls	r1, r1, #4
 230:	430a      	orrs	r2, r1
 232:	619a      	str	r2, [r3, #24]
 234:	46c0      	nop			; (mov r8, r8)
 236:	46bd      	mov	sp, r7
 238:	bd80      	pop	{r7, pc}
 23a:	46c0      	nop			; (mov r8, r8)
 23c:	40020000 	.word	0x40020000
 240:	400b8000 	.word	0x400b8000

00000244 <ClkConfig>:
 244:	b580      	push	{r7, lr}
 246:	af00      	add	r7, sp, #0
 248:	4b18      	ldr	r3, [pc, #96]	; (2ac <ClkConfig+0x68>)
 24a:	4a18      	ldr	r2, [pc, #96]	; (2ac <ClkConfig+0x68>)
 24c:	6892      	ldr	r2, [r2, #8]
 24e:	2101      	movs	r1, #1
 250:	430a      	orrs	r2, r1
 252:	609a      	str	r2, [r3, #8]
 254:	46c0      	nop			; (mov r8, r8)
 256:	4b15      	ldr	r3, [pc, #84]	; (2ac <ClkConfig+0x68>)
 258:	681b      	ldr	r3, [r3, #0]
 25a:	2204      	movs	r2, #4
 25c:	4013      	ands	r3, r2
 25e:	d0fa      	beq.n	256 <ClkConfig+0x12>
 260:	4b12      	ldr	r3, [pc, #72]	; (2ac <ClkConfig+0x68>)
 262:	4a12      	ldr	r2, [pc, #72]	; (2ac <ClkConfig+0x68>)
 264:	68d2      	ldr	r2, [r2, #12]
 266:	2102      	movs	r1, #2
 268:	430a      	orrs	r2, r1
 26a:	60da      	str	r2, [r3, #12]
 26c:	4b0f      	ldr	r3, [pc, #60]	; (2ac <ClkConfig+0x68>)
 26e:	4a10      	ldr	r2, [pc, #64]	; (2b0 <ClkConfig+0x6c>)
 270:	605a      	str	r2, [r3, #4]
 272:	46c0      	nop			; (mov r8, r8)
 274:	4b0d      	ldr	r3, [pc, #52]	; (2ac <ClkConfig+0x68>)
 276:	681b      	ldr	r3, [r3, #0]
 278:	2202      	movs	r2, #2
 27a:	4013      	ands	r3, r2
 27c:	d0fa      	beq.n	274 <ClkConfig+0x30>
 27e:	4b0d      	ldr	r3, [pc, #52]	; (2b4 <ClkConfig+0x70>)
 280:	4a0c      	ldr	r2, [pc, #48]	; (2b4 <ClkConfig+0x70>)
 282:	6812      	ldr	r2, [r2, #0]
 284:	2120      	movs	r1, #32
 286:	430a      	orrs	r2, r1
 288:	601a      	str	r2, [r3, #0]
 28a:	4b08      	ldr	r3, [pc, #32]	; (2ac <ClkConfig+0x68>)
 28c:	4a07      	ldr	r2, [pc, #28]	; (2ac <ClkConfig+0x68>)
 28e:	68d2      	ldr	r2, [r2, #12]
 290:	2180      	movs	r1, #128	; 0x80
 292:	0049      	lsls	r1, r1, #1
 294:	430a      	orrs	r2, r1
 296:	60da      	str	r2, [r3, #12]
 298:	4b04      	ldr	r3, [pc, #16]	; (2ac <ClkConfig+0x68>)
 29a:	4a04      	ldr	r2, [pc, #16]	; (2ac <ClkConfig+0x68>)
 29c:	68d2      	ldr	r2, [r2, #12]
 29e:	2104      	movs	r1, #4
 2a0:	430a      	orrs	r2, r1
 2a2:	60da      	str	r2, [r3, #12]
 2a4:	46c0      	nop			; (mov r8, r8)
 2a6:	46bd      	mov	sp, r7
 2a8:	bd80      	pop	{r7, pc}
 2aa:	46c0      	nop			; (mov r8, r8)
 2ac:	40020000 	.word	0x40020000
 2b0:	00000e04 	.word	0x00000e04
 2b4:	40018000 	.word	0x40018000

000002b8 <TimerConfig>:
 2b8:	b580      	push	{r7, lr}
 2ba:	af00      	add	r7, sp, #0
 2bc:	4b17      	ldr	r3, [pc, #92]	; (31c <TimerConfig+0x64>)
 2be:	4a17      	ldr	r2, [pc, #92]	; (31c <TimerConfig+0x64>)
 2c0:	69d2      	ldr	r2, [r2, #28]
 2c2:	2180      	movs	r1, #128	; 0x80
 2c4:	01c9      	lsls	r1, r1, #7
 2c6:	430a      	orrs	r2, r1
 2c8:	61da      	str	r2, [r3, #28]
 2ca:	4b14      	ldr	r3, [pc, #80]	; (31c <TimerConfig+0x64>)
 2cc:	4a13      	ldr	r2, [pc, #76]	; (31c <TimerConfig+0x64>)
 2ce:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2d0:	2180      	movs	r1, #128	; 0x80
 2d2:	0449      	lsls	r1, r1, #17
 2d4:	430a      	orrs	r2, r1
 2d6:	625a      	str	r2, [r3, #36]	; 0x24
 2d8:	4b10      	ldr	r3, [pc, #64]	; (31c <TimerConfig+0x64>)
 2da:	4a10      	ldr	r2, [pc, #64]	; (31c <TimerConfig+0x64>)
 2dc:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2de:	21ff      	movs	r1, #255	; 0xff
 2e0:	438a      	bics	r2, r1
 2e2:	625a      	str	r2, [r3, #36]	; 0x24
 2e4:	4b0e      	ldr	r3, [pc, #56]	; (320 <TimerConfig+0x68>)
 2e6:	2200      	movs	r2, #0
 2e8:	601a      	str	r2, [r3, #0]
 2ea:	4b0d      	ldr	r3, [pc, #52]	; (320 <TimerConfig+0x68>)
 2ec:	2277      	movs	r2, #119	; 0x77
 2ee:	605a      	str	r2, [r3, #4]
 2f0:	4b0b      	ldr	r3, [pc, #44]	; (320 <TimerConfig+0x68>)
 2f2:	4a0c      	ldr	r2, [pc, #48]	; (324 <TimerConfig+0x6c>)
 2f4:	609a      	str	r2, [r3, #8]
 2f6:	4b0a      	ldr	r3, [pc, #40]	; (320 <TimerConfig+0x68>)
 2f8:	4a09      	ldr	r2, [pc, #36]	; (320 <TimerConfig+0x68>)
 2fa:	6d92      	ldr	r2, [r2, #88]	; 0x58
 2fc:	2102      	movs	r1, #2
 2fe:	430a      	orrs	r2, r1
 300:	659a      	str	r2, [r3, #88]	; 0x58
 302:	4b07      	ldr	r3, [pc, #28]	; (320 <TimerConfig+0x68>)
 304:	4a06      	ldr	r2, [pc, #24]	; (320 <TimerConfig+0x68>)
 306:	68d2      	ldr	r2, [r2, #12]
 308:	2101      	movs	r1, #1
 30a:	430a      	orrs	r2, r1
 30c:	60da      	str	r2, [r3, #12]
 30e:	200e      	movs	r0, #14
 310:	f7ff fed6 	bl	c0 <NVIC_EnableIRQ>
 314:	46c0      	nop			; (mov r8, r8)
 316:	46bd      	mov	sp, r7
 318:	bd80      	pop	{r7, pc}
 31a:	46c0      	nop			; (mov r8, r8)
 31c:	40020000 	.word	0x40020000
 320:	40070000 	.word	0x40070000
 324:	000003e7 	.word	0x000003e7

00000328 <SystemInit>:
 328:	b580      	push	{r7, lr}
 32a:	af00      	add	r7, sp, #0
 32c:	f7ff ff8a 	bl	244 <ClkConfig>
 330:	f7ff ff5e 	bl	1f0 <PortConfig>
 334:	f7ff ffc0 	bl	2b8 <TimerConfig>
 338:	4b03      	ldr	r3, [pc, #12]	; (348 <SystemInit+0x20>)
 33a:	0018      	movs	r0, r3
 33c:	f7ff ff0c 	bl	158 <SysTick_Config>
 340:	46c0      	nop			; (mov r8, r8)
 342:	46bd      	mov	sp, r7
 344:	bd80      	pop	{r7, pc}
 346:	46c0      	nop			; (mov r8, r8)
 348:	0001d4c0 	.word	0x0001d4c0

0000034c <SysTick_Handler>:
 34c:	b580      	push	{r7, lr}
 34e:	af00      	add	r7, sp, #0
 350:	4b03      	ldr	r3, [pc, #12]	; (360 <SysTick_Handler+0x14>)
 352:	681b      	ldr	r3, [r3, #0]
 354:	1c5a      	adds	r2, r3, #1
 356:	4b02      	ldr	r3, [pc, #8]	; (360 <SysTick_Handler+0x14>)
 358:	601a      	str	r2, [r3, #0]
 35a:	46c0      	nop			; (mov r8, r8)
 35c:	46bd      	mov	sp, r7
 35e:	bd80      	pop	{r7, pc}
 360:	20000008 	.word	0x20000008

00000364 <TIMER1_Handler>:
 364:	b580      	push	{r7, lr}
 366:	af00      	add	r7, sp, #0
 368:	4b05      	ldr	r3, [pc, #20]	; (380 <TIMER1_Handler+0x1c>)
 36a:	2200      	movs	r2, #0
 36c:	655a      	str	r2, [r3, #84]	; 0x54
 36e:	4b05      	ldr	r3, [pc, #20]	; (384 <TIMER1_Handler+0x20>)
 370:	4a04      	ldr	r2, [pc, #16]	; (384 <TIMER1_Handler+0x20>)
 372:	6812      	ldr	r2, [r2, #0]
 374:	2120      	movs	r1, #32
 376:	404a      	eors	r2, r1
 378:	601a      	str	r2, [r3, #0]
 37a:	46c0      	nop			; (mov r8, r8)
 37c:	46bd      	mov	sp, r7
 37e:	bd80      	pop	{r7, pc}
 380:	40070000 	.word	0x40070000
 384:	400b8000 	.word	0x400b8000

00000388 <handler_reset>:
 388:	b580      	push	{r7, lr}
 38a:	b082      	sub	sp, #8
 38c:	af00      	add	r7, sp, #0
 38e:	4b11      	ldr	r3, [pc, #68]	; (3d4 <handler_reset+0x4c>)
 390:	607b      	str	r3, [r7, #4]
 392:	4b11      	ldr	r3, [pc, #68]	; (3d8 <handler_reset+0x50>)
 394:	603b      	str	r3, [r7, #0]
 396:	e007      	b.n	3a8 <handler_reset+0x20>
 398:	683b      	ldr	r3, [r7, #0]
 39a:	1d1a      	adds	r2, r3, #4
 39c:	603a      	str	r2, [r7, #0]
 39e:	687a      	ldr	r2, [r7, #4]
 3a0:	1d11      	adds	r1, r2, #4
 3a2:	6079      	str	r1, [r7, #4]
 3a4:	6812      	ldr	r2, [r2, #0]
 3a6:	601a      	str	r2, [r3, #0]
 3a8:	683a      	ldr	r2, [r7, #0]
 3aa:	4b0c      	ldr	r3, [pc, #48]	; (3dc <handler_reset+0x54>)
 3ac:	429a      	cmp	r2, r3
 3ae:	d3f3      	bcc.n	398 <handler_reset+0x10>
 3b0:	4b0b      	ldr	r3, [pc, #44]	; (3e0 <handler_reset+0x58>)
 3b2:	603b      	str	r3, [r7, #0]
 3b4:	e004      	b.n	3c0 <handler_reset+0x38>
 3b6:	683b      	ldr	r3, [r7, #0]
 3b8:	1d1a      	adds	r2, r3, #4
 3ba:	603a      	str	r2, [r7, #0]
 3bc:	2200      	movs	r2, #0
 3be:	601a      	str	r2, [r3, #0]
 3c0:	683a      	ldr	r2, [r7, #0]
 3c2:	4b08      	ldr	r3, [pc, #32]	; (3e4 <handler_reset+0x5c>)
 3c4:	429a      	cmp	r2, r3
 3c6:	d3f6      	bcc.n	3b6 <handler_reset+0x2e>
 3c8:	f7ff ff02 	bl	1d0 <main>
 3cc:	46c0      	nop			; (mov r8, r8)
 3ce:	46bd      	mov	sp, r7
 3d0:	b002      	add	sp, #8
 3d2:	bd80      	pop	{r7, pc}
 3d4:	000003f0 	.word	0x000003f0
 3d8:	20000000 	.word	0x20000000
 3dc:	20000000 	.word	0x20000000
 3e0:	20000000 	.word	0x20000000
 3e4:	2000000c 	.word	0x2000000c

000003e8 <default_handler>:
 3e8:	b580      	push	{r7, lr}
 3ea:	af00      	add	r7, sp, #0
 3ec:	e7fe      	b.n	3ec <default_handler+0x4>
 3ee:	46c0      	nop			; (mov r8, r8)
