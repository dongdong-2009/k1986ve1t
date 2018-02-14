
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 79 03 00 00 d9 03 00 00 d9 03 00 00     ... y...........
	...
  2c:	d9 03 00 00 00 00 00 00 00 00 00 00 d9 03 00 00     ................
  3c:	39 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     9...............
  4c:	d9 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     ................
  5c:	d9 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     ................
  6c:	d9 03 00 00 d9 03 00 00 d9 03 00 00 51 03 00 00     ............Q...
  7c:	d9 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     ................
  8c:	d9 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     ................
  9c:	d9 03 00 00 d9 03 00 00 00 00 00 00 00 00 00 00     ................
  ac:	d9 03 00 00 d9 03 00 00 d9 03 00 00 d9 03 00 00     ................
  bc:	d9 03 00 00                                         ....

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
 1d4:	f000 f89e 	bl	314 <SystemInit>
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
 1f4:	4b0c      	ldr	r3, [pc, #48]	; (228 <PortConfig+0x38>)
 1f6:	4a0c      	ldr	r2, [pc, #48]	; (228 <PortConfig+0x38>)
 1f8:	69d2      	ldr	r2, [r2, #28]
 1fa:	2180      	movs	r1, #128	; 0x80
 1fc:	0489      	lsls	r1, r1, #18
 1fe:	430a      	orrs	r2, r1
 200:	61da      	str	r2, [r3, #28]
 202:	4b0a      	ldr	r3, [pc, #40]	; (22c <PortConfig+0x3c>)
 204:	2200      	movs	r2, #0
 206:	609a      	str	r2, [r3, #8]
 208:	4b08      	ldr	r3, [pc, #32]	; (22c <PortConfig+0x3c>)
 20a:	2200      	movs	r2, #0
 20c:	601a      	str	r2, [r3, #0]
 20e:	4b07      	ldr	r3, [pc, #28]	; (22c <PortConfig+0x3c>)
 210:	22ff      	movs	r2, #255	; 0xff
 212:	605a      	str	r2, [r3, #4]
 214:	4b05      	ldr	r3, [pc, #20]	; (22c <PortConfig+0x3c>)
 216:	22ff      	movs	r2, #255	; 0xff
 218:	60da      	str	r2, [r3, #12]
 21a:	4b04      	ldr	r3, [pc, #16]	; (22c <PortConfig+0x3c>)
 21c:	2201      	movs	r2, #1
 21e:	4252      	negs	r2, r2
 220:	619a      	str	r2, [r3, #24]
 222:	46c0      	nop			; (mov r8, r8)
 224:	46bd      	mov	sp, r7
 226:	bd80      	pop	{r7, pc}
 228:	40020000 	.word	0x40020000
 22c:	400c8000 	.word	0x400c8000

00000230 <ClkConfig>:
 230:	b580      	push	{r7, lr}
 232:	af00      	add	r7, sp, #0
 234:	4b18      	ldr	r3, [pc, #96]	; (298 <ClkConfig+0x68>)
 236:	4a18      	ldr	r2, [pc, #96]	; (298 <ClkConfig+0x68>)
 238:	6892      	ldr	r2, [r2, #8]
 23a:	2101      	movs	r1, #1
 23c:	430a      	orrs	r2, r1
 23e:	609a      	str	r2, [r3, #8]
 240:	46c0      	nop			; (mov r8, r8)
 242:	4b15      	ldr	r3, [pc, #84]	; (298 <ClkConfig+0x68>)
 244:	681b      	ldr	r3, [r3, #0]
 246:	2204      	movs	r2, #4
 248:	4013      	ands	r3, r2
 24a:	d0fa      	beq.n	242 <ClkConfig+0x12>
 24c:	4b12      	ldr	r3, [pc, #72]	; (298 <ClkConfig+0x68>)
 24e:	4a12      	ldr	r2, [pc, #72]	; (298 <ClkConfig+0x68>)
 250:	68d2      	ldr	r2, [r2, #12]
 252:	2102      	movs	r1, #2
 254:	430a      	orrs	r2, r1
 256:	60da      	str	r2, [r3, #12]
 258:	4b0f      	ldr	r3, [pc, #60]	; (298 <ClkConfig+0x68>)
 25a:	4a10      	ldr	r2, [pc, #64]	; (29c <ClkConfig+0x6c>)
 25c:	605a      	str	r2, [r3, #4]
 25e:	46c0      	nop			; (mov r8, r8)
 260:	4b0d      	ldr	r3, [pc, #52]	; (298 <ClkConfig+0x68>)
 262:	681b      	ldr	r3, [r3, #0]
 264:	2202      	movs	r2, #2
 266:	4013      	ands	r3, r2
 268:	d0fa      	beq.n	260 <ClkConfig+0x30>
 26a:	4b0d      	ldr	r3, [pc, #52]	; (2a0 <ClkConfig+0x70>)
 26c:	4a0c      	ldr	r2, [pc, #48]	; (2a0 <ClkConfig+0x70>)
 26e:	6812      	ldr	r2, [r2, #0]
 270:	2120      	movs	r1, #32
 272:	430a      	orrs	r2, r1
 274:	601a      	str	r2, [r3, #0]
 276:	4b08      	ldr	r3, [pc, #32]	; (298 <ClkConfig+0x68>)
 278:	4a07      	ldr	r2, [pc, #28]	; (298 <ClkConfig+0x68>)
 27a:	68d2      	ldr	r2, [r2, #12]
 27c:	2180      	movs	r1, #128	; 0x80
 27e:	0049      	lsls	r1, r1, #1
 280:	430a      	orrs	r2, r1
 282:	60da      	str	r2, [r3, #12]
 284:	4b04      	ldr	r3, [pc, #16]	; (298 <ClkConfig+0x68>)
 286:	4a04      	ldr	r2, [pc, #16]	; (298 <ClkConfig+0x68>)
 288:	68d2      	ldr	r2, [r2, #12]
 28a:	2104      	movs	r1, #4
 28c:	430a      	orrs	r2, r1
 28e:	60da      	str	r2, [r3, #12]
 290:	46c0      	nop			; (mov r8, r8)
 292:	46bd      	mov	sp, r7
 294:	bd80      	pop	{r7, pc}
 296:	46c0      	nop			; (mov r8, r8)
 298:	40020000 	.word	0x40020000
 29c:	00000e04 	.word	0x00000e04
 2a0:	40018000 	.word	0x40018000

000002a4 <TimerConfig>:
 2a4:	b580      	push	{r7, lr}
 2a6:	af00      	add	r7, sp, #0
 2a8:	4b17      	ldr	r3, [pc, #92]	; (308 <TimerConfig+0x64>)
 2aa:	4a17      	ldr	r2, [pc, #92]	; (308 <TimerConfig+0x64>)
 2ac:	69d2      	ldr	r2, [r2, #28]
 2ae:	2180      	movs	r1, #128	; 0x80
 2b0:	01c9      	lsls	r1, r1, #7
 2b2:	430a      	orrs	r2, r1
 2b4:	61da      	str	r2, [r3, #28]
 2b6:	4b14      	ldr	r3, [pc, #80]	; (308 <TimerConfig+0x64>)
 2b8:	4a13      	ldr	r2, [pc, #76]	; (308 <TimerConfig+0x64>)
 2ba:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2bc:	2180      	movs	r1, #128	; 0x80
 2be:	0449      	lsls	r1, r1, #17
 2c0:	430a      	orrs	r2, r1
 2c2:	625a      	str	r2, [r3, #36]	; 0x24
 2c4:	4b10      	ldr	r3, [pc, #64]	; (308 <TimerConfig+0x64>)
 2c6:	4a10      	ldr	r2, [pc, #64]	; (308 <TimerConfig+0x64>)
 2c8:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2ca:	21ff      	movs	r1, #255	; 0xff
 2cc:	438a      	bics	r2, r1
 2ce:	625a      	str	r2, [r3, #36]	; 0x24
 2d0:	4b0e      	ldr	r3, [pc, #56]	; (30c <TimerConfig+0x68>)
 2d2:	2200      	movs	r2, #0
 2d4:	601a      	str	r2, [r3, #0]
 2d6:	4b0d      	ldr	r3, [pc, #52]	; (30c <TimerConfig+0x68>)
 2d8:	2277      	movs	r2, #119	; 0x77
 2da:	605a      	str	r2, [r3, #4]
 2dc:	4b0b      	ldr	r3, [pc, #44]	; (30c <TimerConfig+0x68>)
 2de:	4a0c      	ldr	r2, [pc, #48]	; (310 <TimerConfig+0x6c>)
 2e0:	609a      	str	r2, [r3, #8]
 2e2:	4b0a      	ldr	r3, [pc, #40]	; (30c <TimerConfig+0x68>)
 2e4:	4a09      	ldr	r2, [pc, #36]	; (30c <TimerConfig+0x68>)
 2e6:	6d92      	ldr	r2, [r2, #88]	; 0x58
 2e8:	2102      	movs	r1, #2
 2ea:	430a      	orrs	r2, r1
 2ec:	659a      	str	r2, [r3, #88]	; 0x58
 2ee:	4b07      	ldr	r3, [pc, #28]	; (30c <TimerConfig+0x68>)
 2f0:	4a06      	ldr	r2, [pc, #24]	; (30c <TimerConfig+0x68>)
 2f2:	68d2      	ldr	r2, [r2, #12]
 2f4:	2101      	movs	r1, #1
 2f6:	430a      	orrs	r2, r1
 2f8:	60da      	str	r2, [r3, #12]
 2fa:	200e      	movs	r0, #14
 2fc:	f7ff fee0 	bl	c0 <NVIC_EnableIRQ>
 300:	46c0      	nop			; (mov r8, r8)
 302:	46bd      	mov	sp, r7
 304:	bd80      	pop	{r7, pc}
 306:	46c0      	nop			; (mov r8, r8)
 308:	40020000 	.word	0x40020000
 30c:	40070000 	.word	0x40070000
 310:	000003e7 	.word	0x000003e7

00000314 <SystemInit>:
 314:	b580      	push	{r7, lr}
 316:	af00      	add	r7, sp, #0
 318:	f7ff ff8a 	bl	230 <ClkConfig>
 31c:	f7ff ff68 	bl	1f0 <PortConfig>
 320:	f7ff ffc0 	bl	2a4 <TimerConfig>
 324:	4b03      	ldr	r3, [pc, #12]	; (334 <SystemInit+0x20>)
 326:	0018      	movs	r0, r3
 328:	f7ff ff16 	bl	158 <SysTick_Config>
 32c:	46c0      	nop			; (mov r8, r8)
 32e:	46bd      	mov	sp, r7
 330:	bd80      	pop	{r7, pc}
 332:	46c0      	nop			; (mov r8, r8)
 334:	0001d4c0 	.word	0x0001d4c0

00000338 <SysTick_Handler>:
 338:	b580      	push	{r7, lr}
 33a:	af00      	add	r7, sp, #0
 33c:	4b03      	ldr	r3, [pc, #12]	; (34c <SysTick_Handler+0x14>)
 33e:	681b      	ldr	r3, [r3, #0]
 340:	1c5a      	adds	r2, r3, #1
 342:	4b02      	ldr	r3, [pc, #8]	; (34c <SysTick_Handler+0x14>)
 344:	601a      	str	r2, [r3, #0]
 346:	46c0      	nop			; (mov r8, r8)
 348:	46bd      	mov	sp, r7
 34a:	bd80      	pop	{r7, pc}
 34c:	20000008 	.word	0x20000008

00000350 <TIMER1_Handler>:
 350:	b580      	push	{r7, lr}
 352:	af00      	add	r7, sp, #0
 354:	4b05      	ldr	r3, [pc, #20]	; (36c <TIMER1_Handler+0x1c>)
 356:	2200      	movs	r2, #0
 358:	655a      	str	r2, [r3, #84]	; 0x54
 35a:	4b05      	ldr	r3, [pc, #20]	; (370 <TIMER1_Handler+0x20>)
 35c:	4a04      	ldr	r2, [pc, #16]	; (370 <TIMER1_Handler+0x20>)
 35e:	6812      	ldr	r2, [r2, #0]
 360:	4904      	ldr	r1, [pc, #16]	; (374 <TIMER1_Handler+0x24>)
 362:	404a      	eors	r2, r1
 364:	601a      	str	r2, [r3, #0]
 366:	46c0      	nop			; (mov r8, r8)
 368:	46bd      	mov	sp, r7
 36a:	bd80      	pop	{r7, pc}
 36c:	40070000 	.word	0x40070000
 370:	400c8000 	.word	0x400c8000
 374:	0000ffff 	.word	0x0000ffff

00000378 <handler_reset>:
 378:	b580      	push	{r7, lr}
 37a:	b082      	sub	sp, #8
 37c:	af00      	add	r7, sp, #0
 37e:	4b11      	ldr	r3, [pc, #68]	; (3c4 <handler_reset+0x4c>)
 380:	607b      	str	r3, [r7, #4]
 382:	4b11      	ldr	r3, [pc, #68]	; (3c8 <handler_reset+0x50>)
 384:	603b      	str	r3, [r7, #0]
 386:	e007      	b.n	398 <handler_reset+0x20>
 388:	683b      	ldr	r3, [r7, #0]
 38a:	1d1a      	adds	r2, r3, #4
 38c:	603a      	str	r2, [r7, #0]
 38e:	687a      	ldr	r2, [r7, #4]
 390:	1d11      	adds	r1, r2, #4
 392:	6079      	str	r1, [r7, #4]
 394:	6812      	ldr	r2, [r2, #0]
 396:	601a      	str	r2, [r3, #0]
 398:	683a      	ldr	r2, [r7, #0]
 39a:	4b0c      	ldr	r3, [pc, #48]	; (3cc <handler_reset+0x54>)
 39c:	429a      	cmp	r2, r3
 39e:	d3f3      	bcc.n	388 <handler_reset+0x10>
 3a0:	4b0b      	ldr	r3, [pc, #44]	; (3d0 <handler_reset+0x58>)
 3a2:	603b      	str	r3, [r7, #0]
 3a4:	e004      	b.n	3b0 <handler_reset+0x38>
 3a6:	683b      	ldr	r3, [r7, #0]
 3a8:	1d1a      	adds	r2, r3, #4
 3aa:	603a      	str	r2, [r7, #0]
 3ac:	2200      	movs	r2, #0
 3ae:	601a      	str	r2, [r3, #0]
 3b0:	683a      	ldr	r2, [r7, #0]
 3b2:	4b08      	ldr	r3, [pc, #32]	; (3d4 <handler_reset+0x5c>)
 3b4:	429a      	cmp	r2, r3
 3b6:	d3f6      	bcc.n	3a6 <handler_reset+0x2e>
 3b8:	f7ff ff0a 	bl	1d0 <main>
 3bc:	46c0      	nop			; (mov r8, r8)
 3be:	46bd      	mov	sp, r7
 3c0:	b002      	add	sp, #8
 3c2:	bd80      	pop	{r7, pc}
 3c4:	000003e0 	.word	0x000003e0
 3c8:	20000000 	.word	0x20000000
 3cc:	20000000 	.word	0x20000000
 3d0:	20000000 	.word	0x20000000
 3d4:	2000000c 	.word	0x2000000c

000003d8 <default_handler>:
 3d8:	b580      	push	{r7, lr}
 3da:	af00      	add	r7, sp, #0
 3dc:	e7fe      	b.n	3dc <default_handler+0x4>
 3de:	46c0      	nop			; (mov r8, r8)
