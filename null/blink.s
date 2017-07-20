
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 69 03 00 00 c9 03 00 00 c9 03 00 00     ... i...........
	...
  2c:	c9 03 00 00 00 00 00 00 00 00 00 00 c9 03 00 00     ................
  3c:	3d 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     =...............
  4c:	c9 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     ................
  5c:	c9 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     ................
  6c:	c9 03 00 00 c9 03 00 00 c9 03 00 00 55 03 00 00     ............U...
  7c:	c9 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     ................
  8c:	c9 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     ................
  9c:	c9 03 00 00 c9 03 00 00 00 00 00 00 00 00 00 00     ................
  ac:	c9 03 00 00 c9 03 00 00 c9 03 00 00 c9 03 00 00     ................
  bc:	c9 03 00 00                                         ....

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
 1d4:	f000 f8a2 	bl	31c <SystemInit>
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
 1f4:	4b0d      	ldr	r3, [pc, #52]	; (22c <PortConfig+0x3c>)
 1f6:	4a0d      	ldr	r2, [pc, #52]	; (22c <PortConfig+0x3c>)
 1f8:	69d2      	ldr	r2, [r2, #28]
 1fa:	2180      	movs	r1, #128	; 0x80
 1fc:	0449      	lsls	r1, r1, #17
 1fe:	430a      	orrs	r2, r1
 200:	61da      	str	r2, [r3, #28]
 202:	4b0b      	ldr	r3, [pc, #44]	; (230 <PortConfig+0x40>)
 204:	2200      	movs	r2, #0
 206:	609a      	str	r2, [r3, #8]
 208:	4b09      	ldr	r3, [pc, #36]	; (230 <PortConfig+0x40>)
 20a:	2200      	movs	r2, #0
 20c:	601a      	str	r2, [r3, #0]
 20e:	4b08      	ldr	r3, [pc, #32]	; (230 <PortConfig+0x40>)
 210:	22ff      	movs	r2, #255	; 0xff
 212:	01d2      	lsls	r2, r2, #7
 214:	605a      	str	r2, [r3, #4]
 216:	4b06      	ldr	r3, [pc, #24]	; (230 <PortConfig+0x40>)
 218:	22ff      	movs	r2, #255	; 0xff
 21a:	01d2      	lsls	r2, r2, #7
 21c:	60da      	str	r2, [r3, #12]
 21e:	4b04      	ldr	r3, [pc, #16]	; (230 <PortConfig+0x40>)
 220:	4a04      	ldr	r2, [pc, #16]	; (234 <PortConfig+0x44>)
 222:	619a      	str	r2, [r3, #24]
 224:	46c0      	nop			; (mov r8, r8)
 226:	46bd      	mov	sp, r7
 228:	bd80      	pop	{r7, pc}
 22a:	46c0      	nop			; (mov r8, r8)
 22c:	40020000 	.word	0x40020000
 230:	400c0000 	.word	0x400c0000
 234:	3fffc000 	.word	0x3fffc000

00000238 <ClkConfig>:
 238:	b580      	push	{r7, lr}
 23a:	af00      	add	r7, sp, #0
 23c:	4b18      	ldr	r3, [pc, #96]	; (2a0 <ClkConfig+0x68>)
 23e:	4a18      	ldr	r2, [pc, #96]	; (2a0 <ClkConfig+0x68>)
 240:	6892      	ldr	r2, [r2, #8]
 242:	2101      	movs	r1, #1
 244:	430a      	orrs	r2, r1
 246:	609a      	str	r2, [r3, #8]
 248:	46c0      	nop			; (mov r8, r8)
 24a:	4b15      	ldr	r3, [pc, #84]	; (2a0 <ClkConfig+0x68>)
 24c:	681b      	ldr	r3, [r3, #0]
 24e:	2204      	movs	r2, #4
 250:	4013      	ands	r3, r2
 252:	d0fa      	beq.n	24a <ClkConfig+0x12>
 254:	4b12      	ldr	r3, [pc, #72]	; (2a0 <ClkConfig+0x68>)
 256:	4a12      	ldr	r2, [pc, #72]	; (2a0 <ClkConfig+0x68>)
 258:	68d2      	ldr	r2, [r2, #12]
 25a:	2102      	movs	r1, #2
 25c:	430a      	orrs	r2, r1
 25e:	60da      	str	r2, [r3, #12]
 260:	4b0f      	ldr	r3, [pc, #60]	; (2a0 <ClkConfig+0x68>)
 262:	4a10      	ldr	r2, [pc, #64]	; (2a4 <ClkConfig+0x6c>)
 264:	605a      	str	r2, [r3, #4]
 266:	46c0      	nop			; (mov r8, r8)
 268:	4b0d      	ldr	r3, [pc, #52]	; (2a0 <ClkConfig+0x68>)
 26a:	681b      	ldr	r3, [r3, #0]
 26c:	2202      	movs	r2, #2
 26e:	4013      	ands	r3, r2
 270:	d0fa      	beq.n	268 <ClkConfig+0x30>
 272:	4b0d      	ldr	r3, [pc, #52]	; (2a8 <ClkConfig+0x70>)
 274:	4a0c      	ldr	r2, [pc, #48]	; (2a8 <ClkConfig+0x70>)
 276:	6812      	ldr	r2, [r2, #0]
 278:	2120      	movs	r1, #32
 27a:	430a      	orrs	r2, r1
 27c:	601a      	str	r2, [r3, #0]
 27e:	4b08      	ldr	r3, [pc, #32]	; (2a0 <ClkConfig+0x68>)
 280:	4a07      	ldr	r2, [pc, #28]	; (2a0 <ClkConfig+0x68>)
 282:	68d2      	ldr	r2, [r2, #12]
 284:	2180      	movs	r1, #128	; 0x80
 286:	0049      	lsls	r1, r1, #1
 288:	430a      	orrs	r2, r1
 28a:	60da      	str	r2, [r3, #12]
 28c:	4b04      	ldr	r3, [pc, #16]	; (2a0 <ClkConfig+0x68>)
 28e:	4a04      	ldr	r2, [pc, #16]	; (2a0 <ClkConfig+0x68>)
 290:	68d2      	ldr	r2, [r2, #12]
 292:	2104      	movs	r1, #4
 294:	430a      	orrs	r2, r1
 296:	60da      	str	r2, [r3, #12]
 298:	46c0      	nop			; (mov r8, r8)
 29a:	46bd      	mov	sp, r7
 29c:	bd80      	pop	{r7, pc}
 29e:	46c0      	nop			; (mov r8, r8)
 2a0:	40020000 	.word	0x40020000
 2a4:	00000e04 	.word	0x00000e04
 2a8:	40018000 	.word	0x40018000

000002ac <TimerConfig>:
 2ac:	b580      	push	{r7, lr}
 2ae:	af00      	add	r7, sp, #0
 2b0:	4b17      	ldr	r3, [pc, #92]	; (310 <TimerConfig+0x64>)
 2b2:	4a17      	ldr	r2, [pc, #92]	; (310 <TimerConfig+0x64>)
 2b4:	69d2      	ldr	r2, [r2, #28]
 2b6:	2180      	movs	r1, #128	; 0x80
 2b8:	01c9      	lsls	r1, r1, #7
 2ba:	430a      	orrs	r2, r1
 2bc:	61da      	str	r2, [r3, #28]
 2be:	4b14      	ldr	r3, [pc, #80]	; (310 <TimerConfig+0x64>)
 2c0:	4a13      	ldr	r2, [pc, #76]	; (310 <TimerConfig+0x64>)
 2c2:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2c4:	2180      	movs	r1, #128	; 0x80
 2c6:	0449      	lsls	r1, r1, #17
 2c8:	430a      	orrs	r2, r1
 2ca:	625a      	str	r2, [r3, #36]	; 0x24
 2cc:	4b10      	ldr	r3, [pc, #64]	; (310 <TimerConfig+0x64>)
 2ce:	4a10      	ldr	r2, [pc, #64]	; (310 <TimerConfig+0x64>)
 2d0:	6a52      	ldr	r2, [r2, #36]	; 0x24
 2d2:	21ff      	movs	r1, #255	; 0xff
 2d4:	438a      	bics	r2, r1
 2d6:	625a      	str	r2, [r3, #36]	; 0x24
 2d8:	4b0e      	ldr	r3, [pc, #56]	; (314 <TimerConfig+0x68>)
 2da:	2200      	movs	r2, #0
 2dc:	601a      	str	r2, [r3, #0]
 2de:	4b0d      	ldr	r3, [pc, #52]	; (314 <TimerConfig+0x68>)
 2e0:	2277      	movs	r2, #119	; 0x77
 2e2:	605a      	str	r2, [r3, #4]
 2e4:	4b0b      	ldr	r3, [pc, #44]	; (314 <TimerConfig+0x68>)
 2e6:	4a0c      	ldr	r2, [pc, #48]	; (318 <TimerConfig+0x6c>)
 2e8:	609a      	str	r2, [r3, #8]
 2ea:	4b0a      	ldr	r3, [pc, #40]	; (314 <TimerConfig+0x68>)
 2ec:	4a09      	ldr	r2, [pc, #36]	; (314 <TimerConfig+0x68>)
 2ee:	6d92      	ldr	r2, [r2, #88]	; 0x58
 2f0:	2102      	movs	r1, #2
 2f2:	430a      	orrs	r2, r1
 2f4:	659a      	str	r2, [r3, #88]	; 0x58
 2f6:	4b07      	ldr	r3, [pc, #28]	; (314 <TimerConfig+0x68>)
 2f8:	4a06      	ldr	r2, [pc, #24]	; (314 <TimerConfig+0x68>)
 2fa:	68d2      	ldr	r2, [r2, #12]
 2fc:	2101      	movs	r1, #1
 2fe:	430a      	orrs	r2, r1
 300:	60da      	str	r2, [r3, #12]
 302:	200e      	movs	r0, #14
 304:	f7ff fedc 	bl	c0 <NVIC_EnableIRQ>
 308:	46c0      	nop			; (mov r8, r8)
 30a:	46bd      	mov	sp, r7
 30c:	bd80      	pop	{r7, pc}
 30e:	46c0      	nop			; (mov r8, r8)
 310:	40020000 	.word	0x40020000
 314:	40070000 	.word	0x40070000
 318:	000003e7 	.word	0x000003e7

0000031c <SystemInit>:
 31c:	b580      	push	{r7, lr}
 31e:	af00      	add	r7, sp, #0
 320:	f7ff ff8a 	bl	238 <ClkConfig>
 324:	f7ff ffc2 	bl	2ac <TimerConfig>
 328:	4b03      	ldr	r3, [pc, #12]	; (338 <SystemInit+0x1c>)
 32a:	0018      	movs	r0, r3
 32c:	f7ff ff14 	bl	158 <SysTick_Config>
 330:	46c0      	nop			; (mov r8, r8)
 332:	46bd      	mov	sp, r7
 334:	bd80      	pop	{r7, pc}
 336:	46c0      	nop			; (mov r8, r8)
 338:	0001d4c0 	.word	0x0001d4c0

0000033c <SysTick_Handler>:
 33c:	b580      	push	{r7, lr}
 33e:	af00      	add	r7, sp, #0
 340:	4b03      	ldr	r3, [pc, #12]	; (350 <SysTick_Handler+0x14>)
 342:	681b      	ldr	r3, [r3, #0]
 344:	1c5a      	adds	r2, r3, #1
 346:	4b02      	ldr	r3, [pc, #8]	; (350 <SysTick_Handler+0x14>)
 348:	601a      	str	r2, [r3, #0]
 34a:	46c0      	nop			; (mov r8, r8)
 34c:	46bd      	mov	sp, r7
 34e:	bd80      	pop	{r7, pc}
 350:	20000008 	.word	0x20000008

00000354 <TIMER1_Handler>:
 354:	b580      	push	{r7, lr}
 356:	af00      	add	r7, sp, #0
 358:	4b02      	ldr	r3, [pc, #8]	; (364 <TIMER1_Handler+0x10>)
 35a:	2200      	movs	r2, #0
 35c:	655a      	str	r2, [r3, #84]	; 0x54
 35e:	46c0      	nop			; (mov r8, r8)
 360:	46bd      	mov	sp, r7
 362:	bd80      	pop	{r7, pc}
 364:	40070000 	.word	0x40070000

00000368 <handler_reset>:
 368:	b580      	push	{r7, lr}
 36a:	b082      	sub	sp, #8
 36c:	af00      	add	r7, sp, #0
 36e:	4b11      	ldr	r3, [pc, #68]	; (3b4 <handler_reset+0x4c>)
 370:	607b      	str	r3, [r7, #4]
 372:	4b11      	ldr	r3, [pc, #68]	; (3b8 <handler_reset+0x50>)
 374:	603b      	str	r3, [r7, #0]
 376:	e007      	b.n	388 <handler_reset+0x20>
 378:	683b      	ldr	r3, [r7, #0]
 37a:	1d1a      	adds	r2, r3, #4
 37c:	603a      	str	r2, [r7, #0]
 37e:	687a      	ldr	r2, [r7, #4]
 380:	1d11      	adds	r1, r2, #4
 382:	6079      	str	r1, [r7, #4]
 384:	6812      	ldr	r2, [r2, #0]
 386:	601a      	str	r2, [r3, #0]
 388:	683a      	ldr	r2, [r7, #0]
 38a:	4b0c      	ldr	r3, [pc, #48]	; (3bc <handler_reset+0x54>)
 38c:	429a      	cmp	r2, r3
 38e:	d3f3      	bcc.n	378 <handler_reset+0x10>
 390:	4b0b      	ldr	r3, [pc, #44]	; (3c0 <handler_reset+0x58>)
 392:	603b      	str	r3, [r7, #0]
 394:	e004      	b.n	3a0 <handler_reset+0x38>
 396:	683b      	ldr	r3, [r7, #0]
 398:	1d1a      	adds	r2, r3, #4
 39a:	603a      	str	r2, [r7, #0]
 39c:	2200      	movs	r2, #0
 39e:	601a      	str	r2, [r3, #0]
 3a0:	683a      	ldr	r2, [r7, #0]
 3a2:	4b08      	ldr	r3, [pc, #32]	; (3c4 <handler_reset+0x5c>)
 3a4:	429a      	cmp	r2, r3
 3a6:	d3f6      	bcc.n	396 <handler_reset+0x2e>
 3a8:	f7ff ff12 	bl	1d0 <main>
 3ac:	46c0      	nop			; (mov r8, r8)
 3ae:	46bd      	mov	sp, r7
 3b0:	b002      	add	sp, #8
 3b2:	bd80      	pop	{r7, pc}
 3b4:	000003d0 	.word	0x000003d0
 3b8:	20000000 	.word	0x20000000
 3bc:	20000000 	.word	0x20000000
 3c0:	20000000 	.word	0x20000000
 3c4:	2000000c 	.word	0x2000000c

000003c8 <default_handler>:
 3c8:	b580      	push	{r7, lr}
 3ca:	af00      	add	r7, sp, #0
 3cc:	e7fe      	b.n	3cc <default_handler+0x4>
 3ce:	46c0      	nop			; (mov r8, r8)
