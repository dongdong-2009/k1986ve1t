
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 65 03 00 00 c5 03 00 00 c5 03 00 00     ... e...........
	...
  2c:	c5 03 00 00 00 00 00 00 00 00 00 00 c5 03 00 00     ................
  3c:	4d 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     M...............
  4c:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  5c:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  6c:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  7c:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  8c:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  9c:	c5 03 00 00 c5 03 00 00 00 00 00 00 00 00 00 00     ................
  ac:	c5 03 00 00 c5 03 00 00 c5 03 00 00 c5 03 00 00     ................
  bc:	c5 03 00 00                                         ....

000000c0 <NVIC_SetPriority>:
  c0:	b580      	push	{r7, lr}
  c2:	b082      	sub	sp, #8
  c4:	af00      	add	r7, sp, #0
  c6:	0002      	movs	r2, r0
  c8:	6039      	str	r1, [r7, #0]
  ca:	1dfb      	adds	r3, r7, #7
  cc:	701a      	strb	r2, [r3, #0]
  ce:	1dfb      	adds	r3, r7, #7
  d0:	781b      	ldrb	r3, [r3, #0]
  d2:	2b7f      	cmp	r3, #127	; 0x7f
  d4:	d90d      	bls.n	f2 <NVIC_SetPriority+0x32>
  d6:	4910      	ldr	r1, [pc, #64]	; (118 <NVIC_SetPriority+0x58>)
  d8:	1dfb      	adds	r3, r7, #7
  da:	781b      	ldrb	r3, [r3, #0]
  dc:	001a      	movs	r2, r3
  de:	230f      	movs	r3, #15
  e0:	4013      	ands	r3, r2
  e2:	3b04      	subs	r3, #4
  e4:	683a      	ldr	r2, [r7, #0]
  e6:	b2d2      	uxtb	r2, r2
  e8:	0112      	lsls	r2, r2, #4
  ea:	b2d2      	uxtb	r2, r2
  ec:	18cb      	adds	r3, r1, r3
  ee:	761a      	strb	r2, [r3, #24]
  f0:	e00d      	b.n	10e <NVIC_SetPriority+0x4e>
  f2:	490a      	ldr	r1, [pc, #40]	; (11c <NVIC_SetPriority+0x5c>)
  f4:	1dfb      	adds	r3, r7, #7
  f6:	2200      	movs	r2, #0
  f8:	569a      	ldrsb	r2, [r3, r2]
  fa:	683b      	ldr	r3, [r7, #0]
  fc:	b2db      	uxtb	r3, r3
  fe:	011b      	lsls	r3, r3, #4
 100:	b2d8      	uxtb	r0, r3
 102:	23c0      	movs	r3, #192	; 0xc0
 104:	009b      	lsls	r3, r3, #2
 106:	188a      	adds	r2, r1, r2
 108:	18d3      	adds	r3, r2, r3
 10a:	1c02      	adds	r2, r0, #0
 10c:	701a      	strb	r2, [r3, #0]
 10e:	46c0      	nop			; (mov r8, r8)
 110:	46bd      	mov	sp, r7
 112:	b002      	add	sp, #8
 114:	bd80      	pop	{r7, pc}
 116:	46c0      	nop			; (mov r8, r8)
 118:	e000ed00 	.word	0xe000ed00
 11c:	e000e100 	.word	0xe000e100

00000120 <SysTick_Config>:
 120:	b580      	push	{r7, lr}
 122:	b082      	sub	sp, #8
 124:	af00      	add	r7, sp, #0
 126:	6078      	str	r0, [r7, #4]
 128:	687b      	ldr	r3, [r7, #4]
 12a:	4a0e      	ldr	r2, [pc, #56]	; (164 <SysTick_Config+0x44>)
 12c:	4293      	cmp	r3, r2
 12e:	d901      	bls.n	134 <SysTick_Config+0x14>
 130:	2301      	movs	r3, #1
 132:	e012      	b.n	15a <SysTick_Config+0x3a>
 134:	4b0c      	ldr	r3, [pc, #48]	; (168 <SysTick_Config+0x48>)
 136:	687a      	ldr	r2, [r7, #4]
 138:	0212      	lsls	r2, r2, #8
 13a:	0a12      	lsrs	r2, r2, #8
 13c:	3a01      	subs	r2, #1
 13e:	605a      	str	r2, [r3, #4]
 140:	2301      	movs	r3, #1
 142:	425b      	negs	r3, r3
 144:	210f      	movs	r1, #15
 146:	0018      	movs	r0, r3
 148:	f7ff ffba 	bl	c0 <NVIC_SetPriority>
 14c:	4b06      	ldr	r3, [pc, #24]	; (168 <SysTick_Config+0x48>)
 14e:	2200      	movs	r2, #0
 150:	609a      	str	r2, [r3, #8]
 152:	4b05      	ldr	r3, [pc, #20]	; (168 <SysTick_Config+0x48>)
 154:	2207      	movs	r2, #7
 156:	601a      	str	r2, [r3, #0]
 158:	2300      	movs	r3, #0
 15a:	0018      	movs	r0, r3
 15c:	46bd      	mov	sp, r7
 15e:	b002      	add	sp, #8
 160:	bd80      	pop	{r7, pc}
 162:	46c0      	nop			; (mov r8, r8)
 164:	00ffffff 	.word	0x00ffffff
 168:	e000e010 	.word	0xe000e010

0000016c <sleep>:
 16c:	b580      	push	{r7, lr}
 16e:	b084      	sub	sp, #16
 170:	af00      	add	r7, sp, #0
 172:	6078      	str	r0, [r7, #4]
 174:	4b07      	ldr	r3, [pc, #28]	; (194 <sleep+0x28>)
 176:	681a      	ldr	r2, [r3, #0]
 178:	687b      	ldr	r3, [r7, #4]
 17a:	18d3      	adds	r3, r2, r3
 17c:	60fb      	str	r3, [r7, #12]
 17e:	46c0      	nop			; (mov r8, r8)
 180:	4b04      	ldr	r3, [pc, #16]	; (194 <sleep+0x28>)
 182:	681a      	ldr	r2, [r3, #0]
 184:	68fb      	ldr	r3, [r7, #12]
 186:	429a      	cmp	r2, r3
 188:	d3fa      	bcc.n	180 <sleep+0x14>
 18a:	46c0      	nop			; (mov r8, r8)
 18c:	0018      	movs	r0, r3
 18e:	46bd      	mov	sp, r7
 190:	b004      	add	sp, #16
 192:	bd80      	pop	{r7, pc}
 194:	2000000c 	.word	0x2000000c

00000198 <main>:
 198:	b590      	push	{r4, r7, lr}
 19a:	b087      	sub	sp, #28
 19c:	af00      	add	r7, sp, #0
 19e:	1d3b      	adds	r3, r7, #4
 1a0:	4a11      	ldr	r2, [pc, #68]	; (1e8 <main+0x50>)
 1a2:	ca13      	ldmia	r2!, {r0, r1, r4}
 1a4:	c313      	stmia	r3!, {r0, r1, r4}
 1a6:	8812      	ldrh	r2, [r2, #0]
 1a8:	801a      	strh	r2, [r3, #0]
 1aa:	f000 f8bd 	bl	328 <SystemInit>
 1ae:	4b0f      	ldr	r3, [pc, #60]	; (1ec <main+0x54>)
 1b0:	2200      	movs	r2, #0
 1b2:	601a      	str	r2, [r3, #0]
 1b4:	2300      	movs	r3, #0
 1b6:	617b      	str	r3, [r7, #20]
 1b8:	46c0      	nop			; (mov r8, r8)
 1ba:	4b0d      	ldr	r3, [pc, #52]	; (1f0 <main+0x58>)
 1bc:	699b      	ldr	r3, [r3, #24]
 1be:	2210      	movs	r2, #16
 1c0:	4013      	ands	r3, r2
 1c2:	d1fa      	bne.n	1ba <main+0x22>
 1c4:	4b0a      	ldr	r3, [pc, #40]	; (1f0 <main+0x58>)
 1c6:	681a      	ldr	r2, [r3, #0]
 1c8:	2313      	movs	r3, #19
 1ca:	18fb      	adds	r3, r7, r3
 1cc:	701a      	strb	r2, [r3, #0]
 1ce:	4b08      	ldr	r3, [pc, #32]	; (1f0 <main+0x58>)
 1d0:	2213      	movs	r2, #19
 1d2:	18ba      	adds	r2, r7, r2
 1d4:	7812      	ldrb	r2, [r2, #0]
 1d6:	601a      	str	r2, [r3, #0]
 1d8:	46c0      	nop			; (mov r8, r8)
 1da:	4b05      	ldr	r3, [pc, #20]	; (1f0 <main+0x58>)
 1dc:	699b      	ldr	r3, [r3, #24]
 1de:	2220      	movs	r2, #32
 1e0:	4013      	ands	r3, r2
 1e2:	d1fa      	bne.n	1da <main+0x42>
 1e4:	e7e8      	b.n	1b8 <main+0x20>
 1e6:	46c0      	nop			; (mov r8, r8)
 1e8:	000003cc 	.word	0x000003cc
 1ec:	20000004 	.word	0x20000004
 1f0:	40038000 	.word	0x40038000

000001f4 <PortConfig>:
 1f4:	b580      	push	{r7, lr}
 1f6:	af00      	add	r7, sp, #0
 1f8:	4b15      	ldr	r3, [pc, #84]	; (250 <PortConfig+0x5c>)
 1fa:	4a15      	ldr	r2, [pc, #84]	; (250 <PortConfig+0x5c>)
 1fc:	69d2      	ldr	r2, [r2, #28]
 1fe:	2180      	movs	r1, #128	; 0x80
 200:	0449      	lsls	r1, r1, #17
 202:	430a      	orrs	r2, r1
 204:	61da      	str	r2, [r3, #28]
 206:	4b13      	ldr	r3, [pc, #76]	; (254 <PortConfig+0x60>)
 208:	4a12      	ldr	r2, [pc, #72]	; (254 <PortConfig+0x60>)
 20a:	6892      	ldr	r2, [r2, #8]
 20c:	4912      	ldr	r1, [pc, #72]	; (258 <PortConfig+0x64>)
 20e:	400a      	ands	r2, r1
 210:	609a      	str	r2, [r3, #8]
 212:	4b10      	ldr	r3, [pc, #64]	; (254 <PortConfig+0x60>)
 214:	4a0f      	ldr	r2, [pc, #60]	; (254 <PortConfig+0x60>)
 216:	6892      	ldr	r2, [r2, #8]
 218:	21a0      	movs	r1, #160	; 0xa0
 21a:	0549      	lsls	r1, r1, #21
 21c:	430a      	orrs	r2, r1
 21e:	609a      	str	r2, [r3, #8]
 220:	4b0c      	ldr	r3, [pc, #48]	; (254 <PortConfig+0x60>)
 222:	4a0c      	ldr	r2, [pc, #48]	; (254 <PortConfig+0x60>)
 224:	68d2      	ldr	r2, [r2, #12]
 226:	21c0      	movs	r1, #192	; 0xc0
 228:	01c9      	lsls	r1, r1, #7
 22a:	430a      	orrs	r2, r1
 22c:	60da      	str	r2, [r3, #12]
 22e:	4b09      	ldr	r3, [pc, #36]	; (254 <PortConfig+0x60>)
 230:	4a08      	ldr	r2, [pc, #32]	; (254 <PortConfig+0x60>)
 232:	6992      	ldr	r2, [r2, #24]
 234:	21f0      	movs	r1, #240	; 0xf0
 236:	0589      	lsls	r1, r1, #22
 238:	430a      	orrs	r2, r1
 23a:	619a      	str	r2, [r3, #24]
 23c:	4b05      	ldr	r3, [pc, #20]	; (254 <PortConfig+0x60>)
 23e:	4a05      	ldr	r2, [pc, #20]	; (254 <PortConfig+0x60>)
 240:	6812      	ldr	r2, [r2, #0]
 242:	4906      	ldr	r1, [pc, #24]	; (25c <PortConfig+0x68>)
 244:	400a      	ands	r2, r1
 246:	601a      	str	r2, [r3, #0]
 248:	46c0      	nop			; (mov r8, r8)
 24a:	46bd      	mov	sp, r7
 24c:	bd80      	pop	{r7, pc}
 24e:	46c0      	nop			; (mov r8, r8)
 250:	40020000 	.word	0x40020000
 254:	400c0000 	.word	0x400c0000
 258:	c3ffffff 	.word	0xc3ffffff
 25c:	ffff9fff 	.word	0xffff9fff

00000260 <ClkConfig>:
 260:	b580      	push	{r7, lr}
 262:	af00      	add	r7, sp, #0
 264:	4b18      	ldr	r3, [pc, #96]	; (2c8 <ClkConfig+0x68>)
 266:	4a18      	ldr	r2, [pc, #96]	; (2c8 <ClkConfig+0x68>)
 268:	6892      	ldr	r2, [r2, #8]
 26a:	2101      	movs	r1, #1
 26c:	430a      	orrs	r2, r1
 26e:	609a      	str	r2, [r3, #8]
 270:	46c0      	nop			; (mov r8, r8)
 272:	4b15      	ldr	r3, [pc, #84]	; (2c8 <ClkConfig+0x68>)
 274:	681b      	ldr	r3, [r3, #0]
 276:	2204      	movs	r2, #4
 278:	4013      	ands	r3, r2
 27a:	d0fa      	beq.n	272 <ClkConfig+0x12>
 27c:	4b12      	ldr	r3, [pc, #72]	; (2c8 <ClkConfig+0x68>)
 27e:	4a12      	ldr	r2, [pc, #72]	; (2c8 <ClkConfig+0x68>)
 280:	68d2      	ldr	r2, [r2, #12]
 282:	2102      	movs	r1, #2
 284:	430a      	orrs	r2, r1
 286:	60da      	str	r2, [r3, #12]
 288:	4b0f      	ldr	r3, [pc, #60]	; (2c8 <ClkConfig+0x68>)
 28a:	4a10      	ldr	r2, [pc, #64]	; (2cc <ClkConfig+0x6c>)
 28c:	605a      	str	r2, [r3, #4]
 28e:	46c0      	nop			; (mov r8, r8)
 290:	4b0d      	ldr	r3, [pc, #52]	; (2c8 <ClkConfig+0x68>)
 292:	681b      	ldr	r3, [r3, #0]
 294:	2202      	movs	r2, #2
 296:	4013      	ands	r3, r2
 298:	d0fa      	beq.n	290 <ClkConfig+0x30>
 29a:	4b0d      	ldr	r3, [pc, #52]	; (2d0 <ClkConfig+0x70>)
 29c:	4a0c      	ldr	r2, [pc, #48]	; (2d0 <ClkConfig+0x70>)
 29e:	6812      	ldr	r2, [r2, #0]
 2a0:	2120      	movs	r1, #32
 2a2:	430a      	orrs	r2, r1
 2a4:	601a      	str	r2, [r3, #0]
 2a6:	4b08      	ldr	r3, [pc, #32]	; (2c8 <ClkConfig+0x68>)
 2a8:	4a07      	ldr	r2, [pc, #28]	; (2c8 <ClkConfig+0x68>)
 2aa:	68d2      	ldr	r2, [r2, #12]
 2ac:	2180      	movs	r1, #128	; 0x80
 2ae:	0049      	lsls	r1, r1, #1
 2b0:	430a      	orrs	r2, r1
 2b2:	60da      	str	r2, [r3, #12]
 2b4:	4b04      	ldr	r3, [pc, #16]	; (2c8 <ClkConfig+0x68>)
 2b6:	4a04      	ldr	r2, [pc, #16]	; (2c8 <ClkConfig+0x68>)
 2b8:	68d2      	ldr	r2, [r2, #12]
 2ba:	2104      	movs	r1, #4
 2bc:	430a      	orrs	r2, r1
 2be:	60da      	str	r2, [r3, #12]
 2c0:	46c0      	nop			; (mov r8, r8)
 2c2:	46bd      	mov	sp, r7
 2c4:	bd80      	pop	{r7, pc}
 2c6:	46c0      	nop			; (mov r8, r8)
 2c8:	40020000 	.word	0x40020000
 2cc:	00000e04 	.word	0x00000e04
 2d0:	40018000 	.word	0x40018000

000002d4 <UartConfig>:
 2d4:	b580      	push	{r7, lr}
 2d6:	af00      	add	r7, sp, #0
 2d8:	4b10      	ldr	r3, [pc, #64]	; (31c <UartConfig+0x48>)
 2da:	4a10      	ldr	r2, [pc, #64]	; (31c <UartConfig+0x48>)
 2dc:	69d2      	ldr	r2, [r2, #28]
 2de:	2180      	movs	r1, #128	; 0x80
 2e0:	430a      	orrs	r2, r1
 2e2:	61da      	str	r2, [r3, #28]
 2e4:	4b0d      	ldr	r3, [pc, #52]	; (31c <UartConfig+0x48>)
 2e6:	4a0d      	ldr	r2, [pc, #52]	; (31c <UartConfig+0x48>)
 2e8:	6a92      	ldr	r2, [r2, #40]	; 0x28
 2ea:	2180      	movs	r1, #128	; 0x80
 2ec:	0489      	lsls	r1, r1, #18
 2ee:	430a      	orrs	r2, r1
 2f0:	629a      	str	r2, [r3, #40]	; 0x28
 2f2:	4b0b      	ldr	r3, [pc, #44]	; (320 <UartConfig+0x4c>)
 2f4:	2241      	movs	r2, #65	; 0x41
 2f6:	625a      	str	r2, [r3, #36]	; 0x24
 2f8:	4b09      	ldr	r3, [pc, #36]	; (320 <UartConfig+0x4c>)
 2fa:	2207      	movs	r2, #7
 2fc:	629a      	str	r2, [r3, #40]	; 0x28
 2fe:	4b08      	ldr	r3, [pc, #32]	; (320 <UartConfig+0x4c>)
 300:	4a07      	ldr	r2, [pc, #28]	; (320 <UartConfig+0x4c>)
 302:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 304:	2160      	movs	r1, #96	; 0x60
 306:	430a      	orrs	r2, r1
 308:	62da      	str	r2, [r3, #44]	; 0x2c
 30a:	4b05      	ldr	r3, [pc, #20]	; (320 <UartConfig+0x4c>)
 30c:	4a04      	ldr	r2, [pc, #16]	; (320 <UartConfig+0x4c>)
 30e:	6b12      	ldr	r2, [r2, #48]	; 0x30
 310:	4904      	ldr	r1, [pc, #16]	; (324 <UartConfig+0x50>)
 312:	430a      	orrs	r2, r1
 314:	631a      	str	r2, [r3, #48]	; 0x30
 316:	46c0      	nop			; (mov r8, r8)
 318:	46bd      	mov	sp, r7
 31a:	bd80      	pop	{r7, pc}
 31c:	40020000 	.word	0x40020000
 320:	40038000 	.word	0x40038000
 324:	00000301 	.word	0x00000301

00000328 <SystemInit>:
 328:	b580      	push	{r7, lr}
 32a:	af00      	add	r7, sp, #0
 32c:	f7ff ff98 	bl	260 <ClkConfig>
 330:	f7ff ff60 	bl	1f4 <PortConfig>
 334:	f7ff ffce 	bl	2d4 <UartConfig>
 338:	4b03      	ldr	r3, [pc, #12]	; (348 <SystemInit+0x20>)
 33a:	0018      	movs	r0, r3
 33c:	f7ff fef0 	bl	120 <SysTick_Config>
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
 360:	2000000c 	.word	0x2000000c

00000364 <handler_reset>:
 364:	b580      	push	{r7, lr}
 366:	b082      	sub	sp, #8
 368:	af00      	add	r7, sp, #0
 36a:	4b11      	ldr	r3, [pc, #68]	; (3b0 <handler_reset+0x4c>)
 36c:	607b      	str	r3, [r7, #4]
 36e:	4b11      	ldr	r3, [pc, #68]	; (3b4 <handler_reset+0x50>)
 370:	603b      	str	r3, [r7, #0]
 372:	e007      	b.n	384 <handler_reset+0x20>
 374:	683b      	ldr	r3, [r7, #0]
 376:	1d1a      	adds	r2, r3, #4
 378:	603a      	str	r2, [r7, #0]
 37a:	687a      	ldr	r2, [r7, #4]
 37c:	1d11      	adds	r1, r2, #4
 37e:	6079      	str	r1, [r7, #4]
 380:	6812      	ldr	r2, [r2, #0]
 382:	601a      	str	r2, [r3, #0]
 384:	683a      	ldr	r2, [r7, #0]
 386:	4b0c      	ldr	r3, [pc, #48]	; (3b8 <handler_reset+0x54>)
 388:	429a      	cmp	r2, r3
 38a:	d3f3      	bcc.n	374 <handler_reset+0x10>
 38c:	4b0b      	ldr	r3, [pc, #44]	; (3bc <handler_reset+0x58>)
 38e:	603b      	str	r3, [r7, #0]
 390:	e004      	b.n	39c <handler_reset+0x38>
 392:	683b      	ldr	r3, [r7, #0]
 394:	1d1a      	adds	r2, r3, #4
 396:	603a      	str	r2, [r7, #0]
 398:	2200      	movs	r2, #0
 39a:	601a      	str	r2, [r3, #0]
 39c:	683a      	ldr	r2, [r7, #0]
 39e:	4b08      	ldr	r3, [pc, #32]	; (3c0 <handler_reset+0x5c>)
 3a0:	429a      	cmp	r2, r3
 3a2:	d3f6      	bcc.n	392 <handler_reset+0x2e>
 3a4:	f7ff fef8 	bl	198 <main>
 3a8:	46c0      	nop			; (mov r8, r8)
 3aa:	46bd      	mov	sp, r7
 3ac:	b002      	add	sp, #8
 3ae:	bd80      	pop	{r7, pc}
 3b0:	000003dc 	.word	0x000003dc
 3b4:	20000000 	.word	0x20000000
 3b8:	20000004 	.word	0x20000004
 3bc:	20000004 	.word	0x20000004
 3c0:	20000010 	.word	0x20000010

000003c4 <default_handler>:
 3c4:	b580      	push	{r7, lr}
 3c6:	af00      	add	r7, sp, #0
 3c8:	e7fe      	b.n	3c8 <default_handler+0x4>
 3ca:	46c0      	nop			; (mov r8, r8)
 3cc:	6c6c6568 	.word	0x6c6c6568
 3d0:	6f77206f 	.word	0x6f77206f
 3d4:	0d646c72 	.word	0x0d646c72
 3d8:	0000000a 	.word	0x0000000a
