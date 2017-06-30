
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 65 05 00 00 c5 05 00 00 c5 05 00 00     ... e...........
	...
  2c:	c5 05 00 00 00 00 00 00 00 00 00 00 c5 05 00 00     ................
  3c:	25 05 00 00 c5 05 00 00 c5 05 00 00 c5 05 00 00     %...............
  4c:	c5 05 00 00 c5 05 00 00 c5 05 00 00 b9 07 00 00     ................
  5c:	c5 05 00 00 c5 05 00 00 c5 05 00 00 c5 05 00 00     ................
  6c:	c5 05 00 00 c5 05 00 00 3d 05 00 00 c5 05 00 00     ........=.......
  7c:	c5 05 00 00 c5 05 00 00 c5 05 00 00 c5 05 00 00     ................
  8c:	c5 05 00 00 c5 05 00 00 c5 05 00 00 c5 05 00 00     ................
  9c:	c5 05 00 00 c5 05 00 00 00 00 00 00 00 00 00 00     ................
  ac:	c5 05 00 00 c5 05 00 00 c5 05 00 00 c5 05 00 00     ................
  bc:	c5 05 00 00                                         ....

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
 1cc:	2000000c 	.word	0x2000000c

000001d0 <main>:
 1d0:	b590      	push	{r4, r7, lr}
 1d2:	b0a7      	sub	sp, #156	; 0x9c
 1d4:	af00      	add	r7, sp, #0
 1d6:	2384      	movs	r3, #132	; 0x84
 1d8:	18fb      	adds	r3, r7, r3
 1da:	4a1d      	ldr	r2, [pc, #116]	; (250 <main+0x80>)
 1dc:	ca13      	ldmia	r2!, {r0, r1, r4}
 1de:	c313      	stmia	r3!, {r0, r1, r4}
 1e0:	8812      	ldrh	r2, [r2, #0]
 1e2:	801a      	strh	r2, [r3, #0]
 1e4:	f000 f98c 	bl	500 <SystemInit>
 1e8:	4b1a      	ldr	r3, [pc, #104]	; (254 <main+0x84>)
 1ea:	2200      	movs	r2, #0
 1ec:	601a      	str	r2, [r3, #0]
 1ee:	2300      	movs	r3, #0
 1f0:	2294      	movs	r2, #148	; 0x94
 1f2:	18ba      	adds	r2, r7, r2
 1f4:	6013      	str	r3, [r2, #0]
 1f6:	23fa      	movs	r3, #250	; 0xfa
 1f8:	009b      	lsls	r3, r3, #2
 1fa:	0018      	movs	r0, r3
 1fc:	f7ff ffd2 	bl	1a4 <sleep>
 200:	1d3b      	adds	r3, r7, #4
 202:	2180      	movs	r1, #128	; 0x80
 204:	0018      	movs	r0, r3
 206:	f000 fa59 	bl	6bc <uart_read>
 20a:	0002      	movs	r2, r0
 20c:	2394      	movs	r3, #148	; 0x94
 20e:	18fb      	adds	r3, r7, r3
 210:	681b      	ldr	r3, [r3, #0]
 212:	189b      	adds	r3, r3, r2
 214:	2294      	movs	r2, #148	; 0x94
 216:	18ba      	adds	r2, r7, r2
 218:	6013      	str	r3, [r2, #0]
 21a:	2394      	movs	r3, #148	; 0x94
 21c:	18fb      	adds	r3, r7, r3
 21e:	681b      	ldr	r3, [r3, #0]
 220:	2b00      	cmp	r3, #0
 222:	d0e8      	beq.n	1f6 <main+0x26>
 224:	2394      	movs	r3, #148	; 0x94
 226:	18fb      	adds	r3, r7, r3
 228:	681b      	ldr	r3, [r3, #0]
 22a:	2b05      	cmp	r3, #5
 22c:	d1e3      	bne.n	1f6 <main+0x26>
 22e:	4b0a      	ldr	r3, [pc, #40]	; (258 <main+0x88>)
 230:	4a09      	ldr	r2, [pc, #36]	; (258 <main+0x88>)
 232:	6812      	ldr	r2, [r2, #0]
 234:	4909      	ldr	r1, [pc, #36]	; (25c <main+0x8c>)
 236:	404a      	eors	r2, r1
 238:	601a      	str	r2, [r3, #0]
 23a:	2300      	movs	r3, #0
 23c:	2294      	movs	r2, #148	; 0x94
 23e:	18ba      	adds	r2, r7, r2
 240:	6013      	str	r3, [r2, #0]
 242:	1d3b      	adds	r3, r7, #4
 244:	2105      	movs	r1, #5
 246:	0018      	movs	r0, r3
 248:	f000 fa74 	bl	734 <uart_send>
 24c:	e7d3      	b.n	1f6 <main+0x26>
 24e:	46c0      	nop			; (mov r8, r8)
 250:	00000840 	.word	0x00000840
 254:	20000004 	.word	0x20000004
 258:	400c0000 	.word	0x400c0000
 25c:	0000ffff 	.word	0x0000ffff

00000260 <PortConfig>:
 260:	b580      	push	{r7, lr}
 262:	af00      	add	r7, sp, #0
 264:	4b44      	ldr	r3, [pc, #272]	; (378 <PortConfig+0x118>)
 266:	4a44      	ldr	r2, [pc, #272]	; (378 <PortConfig+0x118>)
 268:	69d2      	ldr	r2, [r2, #28]
 26a:	2180      	movs	r1, #128	; 0x80
 26c:	0449      	lsls	r1, r1, #17
 26e:	430a      	orrs	r2, r1
 270:	61da      	str	r2, [r3, #28]
 272:	4b42      	ldr	r3, [pc, #264]	; (37c <PortConfig+0x11c>)
 274:	2200      	movs	r2, #0
 276:	609a      	str	r2, [r3, #8]
 278:	4b40      	ldr	r3, [pc, #256]	; (37c <PortConfig+0x11c>)
 27a:	2200      	movs	r2, #0
 27c:	601a      	str	r2, [r3, #0]
 27e:	4b3f      	ldr	r3, [pc, #252]	; (37c <PortConfig+0x11c>)
 280:	22ff      	movs	r2, #255	; 0xff
 282:	01d2      	lsls	r2, r2, #7
 284:	605a      	str	r2, [r3, #4]
 286:	4b3d      	ldr	r3, [pc, #244]	; (37c <PortConfig+0x11c>)
 288:	22ff      	movs	r2, #255	; 0xff
 28a:	01d2      	lsls	r2, r2, #7
 28c:	60da      	str	r2, [r3, #12]
 28e:	4b3b      	ldr	r3, [pc, #236]	; (37c <PortConfig+0x11c>)
 290:	4a3b      	ldr	r2, [pc, #236]	; (380 <PortConfig+0x120>)
 292:	619a      	str	r2, [r3, #24]
 294:	4b38      	ldr	r3, [pc, #224]	; (378 <PortConfig+0x118>)
 296:	4a38      	ldr	r2, [pc, #224]	; (378 <PortConfig+0x118>)
 298:	69d2      	ldr	r2, [r2, #28]
 29a:	2180      	movs	r1, #128	; 0x80
 29c:	0389      	lsls	r1, r1, #14
 29e:	430a      	orrs	r2, r1
 2a0:	61da      	str	r2, [r3, #28]
 2a2:	4b38      	ldr	r3, [pc, #224]	; (384 <PortConfig+0x124>)
 2a4:	4a37      	ldr	r2, [pc, #220]	; (384 <PortConfig+0x124>)
 2a6:	6892      	ldr	r2, [r2, #8]
 2a8:	4937      	ldr	r1, [pc, #220]	; (388 <PortConfig+0x128>)
 2aa:	400a      	ands	r2, r1
 2ac:	609a      	str	r2, [r3, #8]
 2ae:	4b35      	ldr	r3, [pc, #212]	; (384 <PortConfig+0x124>)
 2b0:	4a34      	ldr	r2, [pc, #208]	; (384 <PortConfig+0x124>)
 2b2:	6892      	ldr	r2, [r2, #8]
 2b4:	4935      	ldr	r1, [pc, #212]	; (38c <PortConfig+0x12c>)
 2b6:	400a      	ands	r2, r1
 2b8:	609a      	str	r2, [r3, #8]
 2ba:	4b32      	ldr	r3, [pc, #200]	; (384 <PortConfig+0x124>)
 2bc:	4a31      	ldr	r2, [pc, #196]	; (384 <PortConfig+0x124>)
 2be:	6892      	ldr	r2, [r2, #8]
 2c0:	2180      	movs	r1, #128	; 0x80
 2c2:	0189      	lsls	r1, r1, #6
 2c4:	430a      	orrs	r2, r1
 2c6:	609a      	str	r2, [r3, #8]
 2c8:	4b2e      	ldr	r3, [pc, #184]	; (384 <PortConfig+0x124>)
 2ca:	4a2e      	ldr	r2, [pc, #184]	; (384 <PortConfig+0x124>)
 2cc:	6892      	ldr	r2, [r2, #8]
 2ce:	2180      	movs	r1, #128	; 0x80
 2d0:	0209      	lsls	r1, r1, #8
 2d2:	430a      	orrs	r2, r1
 2d4:	609a      	str	r2, [r3, #8]
 2d6:	4b2b      	ldr	r3, [pc, #172]	; (384 <PortConfig+0x124>)
 2d8:	4a2a      	ldr	r2, [pc, #168]	; (384 <PortConfig+0x124>)
 2da:	6852      	ldr	r2, [r2, #4]
 2dc:	2140      	movs	r1, #64	; 0x40
 2de:	430a      	orrs	r2, r1
 2e0:	605a      	str	r2, [r3, #4]
 2e2:	4b28      	ldr	r3, [pc, #160]	; (384 <PortConfig+0x124>)
 2e4:	4a27      	ldr	r2, [pc, #156]	; (384 <PortConfig+0x124>)
 2e6:	6852      	ldr	r2, [r2, #4]
 2e8:	2180      	movs	r1, #128	; 0x80
 2ea:	430a      	orrs	r2, r1
 2ec:	605a      	str	r2, [r3, #4]
 2ee:	4b25      	ldr	r3, [pc, #148]	; (384 <PortConfig+0x124>)
 2f0:	4a24      	ldr	r2, [pc, #144]	; (384 <PortConfig+0x124>)
 2f2:	68d2      	ldr	r2, [r2, #12]
 2f4:	2140      	movs	r1, #64	; 0x40
 2f6:	430a      	orrs	r2, r1
 2f8:	60da      	str	r2, [r3, #12]
 2fa:	4b22      	ldr	r3, [pc, #136]	; (384 <PortConfig+0x124>)
 2fc:	4a21      	ldr	r2, [pc, #132]	; (384 <PortConfig+0x124>)
 2fe:	68d2      	ldr	r2, [r2, #12]
 300:	2180      	movs	r1, #128	; 0x80
 302:	430a      	orrs	r2, r1
 304:	60da      	str	r2, [r3, #12]
 306:	4b1f      	ldr	r3, [pc, #124]	; (384 <PortConfig+0x124>)
 308:	4a1e      	ldr	r2, [pc, #120]	; (384 <PortConfig+0x124>)
 30a:	6992      	ldr	r2, [r2, #24]
 30c:	21c0      	movs	r1, #192	; 0xc0
 30e:	0189      	lsls	r1, r1, #6
 310:	430a      	orrs	r2, r1
 312:	619a      	str	r2, [r3, #24]
 314:	4b1b      	ldr	r3, [pc, #108]	; (384 <PortConfig+0x124>)
 316:	4a1b      	ldr	r2, [pc, #108]	; (384 <PortConfig+0x124>)
 318:	6992      	ldr	r2, [r2, #24]
 31a:	21c0      	movs	r1, #192	; 0xc0
 31c:	0209      	lsls	r1, r1, #8
 31e:	430a      	orrs	r2, r1
 320:	619a      	str	r2, [r3, #24]
 322:	4b15      	ldr	r3, [pc, #84]	; (378 <PortConfig+0x118>)
 324:	4a14      	ldr	r2, [pc, #80]	; (378 <PortConfig+0x118>)
 326:	69d2      	ldr	r2, [r2, #28]
 328:	2180      	movs	r1, #128	; 0x80
 32a:	0409      	lsls	r1, r1, #16
 32c:	430a      	orrs	r2, r1
 32e:	61da      	str	r2, [r3, #28]
 330:	4b17      	ldr	r3, [pc, #92]	; (390 <PortConfig+0x130>)
 332:	4a17      	ldr	r2, [pc, #92]	; (390 <PortConfig+0x130>)
 334:	6892      	ldr	r2, [r2, #8]
 336:	4917      	ldr	r1, [pc, #92]	; (394 <PortConfig+0x134>)
 338:	400a      	ands	r2, r1
 33a:	609a      	str	r2, [r3, #8]
 33c:	4b14      	ldr	r3, [pc, #80]	; (390 <PortConfig+0x130>)
 33e:	4a14      	ldr	r2, [pc, #80]	; (390 <PortConfig+0x130>)
 340:	6892      	ldr	r2, [r2, #8]
 342:	21a0      	movs	r1, #160	; 0xa0
 344:	0049      	lsls	r1, r1, #1
 346:	430a      	orrs	r2, r1
 348:	609a      	str	r2, [r3, #8]
 34a:	4b11      	ldr	r3, [pc, #68]	; (390 <PortConfig+0x130>)
 34c:	4a10      	ldr	r2, [pc, #64]	; (390 <PortConfig+0x130>)
 34e:	68d2      	ldr	r2, [r2, #12]
 350:	2118      	movs	r1, #24
 352:	430a      	orrs	r2, r1
 354:	60da      	str	r2, [r3, #12]
 356:	4b0e      	ldr	r3, [pc, #56]	; (390 <PortConfig+0x130>)
 358:	4a0d      	ldr	r2, [pc, #52]	; (390 <PortConfig+0x130>)
 35a:	6992      	ldr	r2, [r2, #24]
 35c:	21f0      	movs	r1, #240	; 0xf0
 35e:	0089      	lsls	r1, r1, #2
 360:	430a      	orrs	r2, r1
 362:	619a      	str	r2, [r3, #24]
 364:	4b0a      	ldr	r3, [pc, #40]	; (390 <PortConfig+0x130>)
 366:	4a0a      	ldr	r2, [pc, #40]	; (390 <PortConfig+0x130>)
 368:	6812      	ldr	r2, [r2, #0]
 36a:	2118      	movs	r1, #24
 36c:	438a      	bics	r2, r1
 36e:	601a      	str	r2, [r3, #0]
 370:	46c0      	nop			; (mov r8, r8)
 372:	46bd      	mov	sp, r7
 374:	bd80      	pop	{r7, pc}
 376:	46c0      	nop			; (mov r8, r8)
 378:	40020000 	.word	0x40020000
 37c:	400c0000 	.word	0x400c0000
 380:	3fffc000 	.word	0x3fffc000
 384:	400a8000 	.word	0x400a8000
 388:	ffffcfff 	.word	0xffffcfff
 38c:	ffff3fff 	.word	0xffff3fff
 390:	400b8000 	.word	0x400b8000
 394:	fffffc3f 	.word	0xfffffc3f

00000398 <ClkConfig>:
 398:	b580      	push	{r7, lr}
 39a:	af00      	add	r7, sp, #0
 39c:	4b18      	ldr	r3, [pc, #96]	; (400 <_stack_size>)
 39e:	4a18      	ldr	r2, [pc, #96]	; (400 <_stack_size>)
 3a0:	6892      	ldr	r2, [r2, #8]
 3a2:	2101      	movs	r1, #1
 3a4:	430a      	orrs	r2, r1
 3a6:	609a      	str	r2, [r3, #8]
 3a8:	46c0      	nop			; (mov r8, r8)
 3aa:	4b15      	ldr	r3, [pc, #84]	; (400 <_stack_size>)
 3ac:	681b      	ldr	r3, [r3, #0]
 3ae:	2204      	movs	r2, #4
 3b0:	4013      	ands	r3, r2
 3b2:	d0fa      	beq.n	3aa <ClkConfig+0x12>
 3b4:	4b12      	ldr	r3, [pc, #72]	; (400 <_stack_size>)
 3b6:	4a12      	ldr	r2, [pc, #72]	; (400 <_stack_size>)
 3b8:	68d2      	ldr	r2, [r2, #12]
 3ba:	2102      	movs	r1, #2
 3bc:	430a      	orrs	r2, r1
 3be:	60da      	str	r2, [r3, #12]
 3c0:	4b0f      	ldr	r3, [pc, #60]	; (400 <_stack_size>)
 3c2:	4a10      	ldr	r2, [pc, #64]	; (404 <_stack_size+0x4>)
 3c4:	605a      	str	r2, [r3, #4]
 3c6:	46c0      	nop			; (mov r8, r8)
 3c8:	4b0d      	ldr	r3, [pc, #52]	; (400 <_stack_size>)
 3ca:	681b      	ldr	r3, [r3, #0]
 3cc:	2202      	movs	r2, #2
 3ce:	4013      	ands	r3, r2
 3d0:	d0fa      	beq.n	3c8 <ClkConfig+0x30>
 3d2:	4b0d      	ldr	r3, [pc, #52]	; (408 <_stack_size+0x8>)
 3d4:	4a0c      	ldr	r2, [pc, #48]	; (408 <_stack_size+0x8>)
 3d6:	6812      	ldr	r2, [r2, #0]
 3d8:	2120      	movs	r1, #32
 3da:	430a      	orrs	r2, r1
 3dc:	601a      	str	r2, [r3, #0]
 3de:	4b08      	ldr	r3, [pc, #32]	; (400 <_stack_size>)
 3e0:	4a07      	ldr	r2, [pc, #28]	; (400 <_stack_size>)
 3e2:	68d2      	ldr	r2, [r2, #12]
 3e4:	2180      	movs	r1, #128	; 0x80
 3e6:	0049      	lsls	r1, r1, #1
 3e8:	430a      	orrs	r2, r1
 3ea:	60da      	str	r2, [r3, #12]
 3ec:	4b04      	ldr	r3, [pc, #16]	; (400 <_stack_size>)
 3ee:	4a04      	ldr	r2, [pc, #16]	; (400 <_stack_size>)
 3f0:	68d2      	ldr	r2, [r2, #12]
 3f2:	2104      	movs	r1, #4
 3f4:	430a      	orrs	r2, r1
 3f6:	60da      	str	r2, [r3, #12]
 3f8:	46c0      	nop			; (mov r8, r8)
 3fa:	46bd      	mov	sp, r7
 3fc:	bd80      	pop	{r7, pc}
 3fe:	46c0      	nop			; (mov r8, r8)
 400:	40020000 	.word	0x40020000
 404:	00000e04 	.word	0x00000e04
 408:	40018000 	.word	0x40018000

0000040c <TimerConfig>:
 40c:	b580      	push	{r7, lr}
 40e:	af00      	add	r7, sp, #0
 410:	4b35      	ldr	r3, [pc, #212]	; (4e8 <TimerConfig+0xdc>)
 412:	4a35      	ldr	r2, [pc, #212]	; (4e8 <TimerConfig+0xdc>)
 414:	69d2      	ldr	r2, [r2, #28]
 416:	2180      	movs	r1, #128	; 0x80
 418:	0309      	lsls	r1, r1, #12
 41a:	430a      	orrs	r2, r1
 41c:	61da      	str	r2, [r3, #28]
 41e:	4b32      	ldr	r3, [pc, #200]	; (4e8 <TimerConfig+0xdc>)
 420:	4a31      	ldr	r2, [pc, #196]	; (4e8 <TimerConfig+0xdc>)
 422:	6a92      	ldr	r2, [r2, #40]	; 0x28
 424:	2180      	movs	r1, #128	; 0x80
 426:	04c9      	lsls	r1, r1, #19
 428:	430a      	orrs	r2, r1
 42a:	629a      	str	r2, [r3, #40]	; 0x28
 42c:	4b2e      	ldr	r3, [pc, #184]	; (4e8 <TimerConfig+0xdc>)
 42e:	4a2e      	ldr	r2, [pc, #184]	; (4e8 <TimerConfig+0xdc>)
 430:	6a92      	ldr	r2, [r2, #40]	; 0x28
 432:	492e      	ldr	r1, [pc, #184]	; (4ec <TimerConfig+0xe0>)
 434:	400a      	ands	r2, r1
 436:	629a      	str	r2, [r3, #40]	; 0x28
 438:	4b2d      	ldr	r3, [pc, #180]	; (4f0 <TimerConfig+0xe4>)
 43a:	2200      	movs	r2, #0
 43c:	601a      	str	r2, [r3, #0]
 43e:	4b2c      	ldr	r3, [pc, #176]	; (4f0 <TimerConfig+0xe4>)
 440:	220b      	movs	r2, #11
 442:	605a      	str	r2, [r3, #4]
 444:	4b2a      	ldr	r3, [pc, #168]	; (4f0 <TimerConfig+0xe4>)
 446:	4a2b      	ldr	r2, [pc, #172]	; (4f4 <TimerConfig+0xe8>)
 448:	609a      	str	r2, [r3, #8]
 44a:	4b29      	ldr	r3, [pc, #164]	; (4f0 <TimerConfig+0xe4>)
 44c:	22fa      	movs	r2, #250	; 0xfa
 44e:	0052      	lsls	r2, r2, #1
 450:	611a      	str	r2, [r3, #16]
 452:	4b27      	ldr	r3, [pc, #156]	; (4f0 <TimerConfig+0xe4>)
 454:	4a26      	ldr	r2, [pc, #152]	; (4f0 <TimerConfig+0xe4>)
 456:	6a12      	ldr	r2, [r2, #32]
 458:	4927      	ldr	r1, [pc, #156]	; (4f8 <TimerConfig+0xec>)
 45a:	400a      	ands	r2, r1
 45c:	621a      	str	r2, [r3, #32]
 45e:	4b24      	ldr	r3, [pc, #144]	; (4f0 <TimerConfig+0xe4>)
 460:	4a23      	ldr	r2, [pc, #140]	; (4f0 <TimerConfig+0xe4>)
 462:	6a12      	ldr	r2, [r2, #32]
 464:	21e0      	movs	r1, #224	; 0xe0
 466:	0109      	lsls	r1, r1, #4
 468:	430a      	orrs	r2, r1
 46a:	621a      	str	r2, [r3, #32]
 46c:	4b20      	ldr	r3, [pc, #128]	; (4f0 <TimerConfig+0xe4>)
 46e:	4a20      	ldr	r2, [pc, #128]	; (4f0 <TimerConfig+0xe4>)
 470:	6b12      	ldr	r2, [r2, #48]	; 0x30
 472:	210f      	movs	r1, #15
 474:	438a      	bics	r2, r1
 476:	631a      	str	r2, [r3, #48]	; 0x30
 478:	4b1d      	ldr	r3, [pc, #116]	; (4f0 <TimerConfig+0xe4>)
 47a:	4a1d      	ldr	r2, [pc, #116]	; (4f0 <TimerConfig+0xe4>)
 47c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 47e:	210c      	movs	r1, #12
 480:	430a      	orrs	r2, r1
 482:	631a      	str	r2, [r3, #48]	; 0x30
 484:	4b1a      	ldr	r3, [pc, #104]	; (4f0 <TimerConfig+0xe4>)
 486:	4a1a      	ldr	r2, [pc, #104]	; (4f0 <TimerConfig+0xe4>)
 488:	6b12      	ldr	r2, [r2, #48]	; 0x30
 48a:	2101      	movs	r1, #1
 48c:	430a      	orrs	r2, r1
 48e:	631a      	str	r2, [r3, #48]	; 0x30
 490:	4b17      	ldr	r3, [pc, #92]	; (4f0 <TimerConfig+0xe4>)
 492:	4a17      	ldr	r2, [pc, #92]	; (4f0 <TimerConfig+0xe4>)
 494:	6b12      	ldr	r2, [r2, #48]	; 0x30
 496:	4919      	ldr	r1, [pc, #100]	; (4fc <TimerConfig+0xf0>)
 498:	400a      	ands	r2, r1
 49a:	631a      	str	r2, [r3, #48]	; 0x30
 49c:	4b14      	ldr	r3, [pc, #80]	; (4f0 <TimerConfig+0xe4>)
 49e:	4a14      	ldr	r2, [pc, #80]	; (4f0 <TimerConfig+0xe4>)
 4a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4a2:	21c0      	movs	r1, #192	; 0xc0
 4a4:	0109      	lsls	r1, r1, #4
 4a6:	430a      	orrs	r2, r1
 4a8:	631a      	str	r2, [r3, #48]	; 0x30
 4aa:	4b11      	ldr	r3, [pc, #68]	; (4f0 <TimerConfig+0xe4>)
 4ac:	4a10      	ldr	r2, [pc, #64]	; (4f0 <TimerConfig+0xe4>)
 4ae:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4b0:	2180      	movs	r1, #128	; 0x80
 4b2:	0049      	lsls	r1, r1, #1
 4b4:	430a      	orrs	r2, r1
 4b6:	631a      	str	r2, [r3, #48]	; 0x30
 4b8:	4b0d      	ldr	r3, [pc, #52]	; (4f0 <TimerConfig+0xe4>)
 4ba:	4a0d      	ldr	r2, [pc, #52]	; (4f0 <TimerConfig+0xe4>)
 4bc:	6c12      	ldr	r2, [r2, #64]	; 0x40
 4be:	21c8      	movs	r1, #200	; 0xc8
 4c0:	0209      	lsls	r1, r1, #8
 4c2:	430a      	orrs	r2, r1
 4c4:	641a      	str	r2, [r3, #64]	; 0x40
 4c6:	4b0a      	ldr	r3, [pc, #40]	; (4f0 <TimerConfig+0xe4>)
 4c8:	4a09      	ldr	r2, [pc, #36]	; (4f0 <TimerConfig+0xe4>)
 4ca:	6d92      	ldr	r2, [r2, #88]	; 0x58
 4cc:	21f0      	movs	r1, #240	; 0xf0
 4ce:	0149      	lsls	r1, r1, #5
 4d0:	430a      	orrs	r2, r1
 4d2:	659a      	str	r2, [r3, #88]	; 0x58
 4d4:	4b06      	ldr	r3, [pc, #24]	; (4f0 <TimerConfig+0xe4>)
 4d6:	2201      	movs	r2, #1
 4d8:	60da      	str	r2, [r3, #12]
 4da:	200d      	movs	r0, #13
 4dc:	f7ff fdf0 	bl	c0 <NVIC_EnableIRQ>
 4e0:	46c0      	nop			; (mov r8, r8)
 4e2:	46bd      	mov	sp, r7
 4e4:	bd80      	pop	{r7, pc}
 4e6:	46c0      	nop			; (mov r8, r8)
 4e8:	40020000 	.word	0x40020000
 4ec:	ff00ffff 	.word	0xff00ffff
 4f0:	40098000 	.word	0x40098000
 4f4:	000003e7 	.word	0x000003e7
 4f8:	fffff1ff 	.word	0xfffff1ff
 4fc:	fffff0ff 	.word	0xfffff0ff

00000500 <SystemInit>:
 500:	b580      	push	{r7, lr}
 502:	af00      	add	r7, sp, #0
 504:	f7ff ff48 	bl	398 <ClkConfig>
 508:	f7ff feaa 	bl	260 <PortConfig>
 50c:	f000 f896 	bl	63c <uart_init>
 510:	4b03      	ldr	r3, [pc, #12]	; (520 <SystemInit+0x20>)
 512:	0018      	movs	r0, r3
 514:	f7ff fe20 	bl	158 <SysTick_Config>
 518:	46c0      	nop			; (mov r8, r8)
 51a:	46bd      	mov	sp, r7
 51c:	bd80      	pop	{r7, pc}
 51e:	46c0      	nop			; (mov r8, r8)
 520:	0001d4c0 	.word	0x0001d4c0

00000524 <SysTick_Handler>:
 524:	b580      	push	{r7, lr}
 526:	af00      	add	r7, sp, #0
 528:	4b03      	ldr	r3, [pc, #12]	; (538 <SysTick_Handler+0x14>)
 52a:	681b      	ldr	r3, [r3, #0]
 52c:	1c5a      	adds	r2, r3, #1
 52e:	4b02      	ldr	r3, [pc, #8]	; (538 <SysTick_Handler+0x14>)
 530:	601a      	str	r2, [r3, #0]
 532:	46c0      	nop			; (mov r8, r8)
 534:	46bd      	mov	sp, r7
 536:	bd80      	pop	{r7, pc}
 538:	2000000c 	.word	0x2000000c

0000053c <TIMER4_Handler>:
 53c:	b580      	push	{r7, lr}
 53e:	af00      	add	r7, sp, #0
 540:	4b05      	ldr	r3, [pc, #20]	; (558 <TIMER4_Handler+0x1c>)
 542:	2200      	movs	r2, #0
 544:	655a      	str	r2, [r3, #84]	; 0x54
 546:	4b05      	ldr	r3, [pc, #20]	; (55c <TIMER4_Handler+0x20>)
 548:	4a04      	ldr	r2, [pc, #16]	; (55c <TIMER4_Handler+0x20>)
 54a:	6812      	ldr	r2, [r2, #0]
 54c:	4904      	ldr	r1, [pc, #16]	; (560 <TIMER4_Handler+0x24>)
 54e:	404a      	eors	r2, r1
 550:	601a      	str	r2, [r3, #0]
 552:	46c0      	nop			; (mov r8, r8)
 554:	46bd      	mov	sp, r7
 556:	bd80      	pop	{r7, pc}
 558:	40098000 	.word	0x40098000
 55c:	400c0000 	.word	0x400c0000
 560:	0000ffff 	.word	0x0000ffff

00000564 <handler_reset>:
 564:	b580      	push	{r7, lr}
 566:	b082      	sub	sp, #8
 568:	af00      	add	r7, sp, #0
 56a:	4b11      	ldr	r3, [pc, #68]	; (5b0 <handler_reset+0x4c>)
 56c:	607b      	str	r3, [r7, #4]
 56e:	4b11      	ldr	r3, [pc, #68]	; (5b4 <handler_reset+0x50>)
 570:	603b      	str	r3, [r7, #0]
 572:	e007      	b.n	584 <handler_reset+0x20>
 574:	683b      	ldr	r3, [r7, #0]
 576:	1d1a      	adds	r2, r3, #4
 578:	603a      	str	r2, [r7, #0]
 57a:	687a      	ldr	r2, [r7, #4]
 57c:	1d11      	adds	r1, r2, #4
 57e:	6079      	str	r1, [r7, #4]
 580:	6812      	ldr	r2, [r2, #0]
 582:	601a      	str	r2, [r3, #0]
 584:	683a      	ldr	r2, [r7, #0]
 586:	4b0c      	ldr	r3, [pc, #48]	; (5b8 <handler_reset+0x54>)
 588:	429a      	cmp	r2, r3
 58a:	d3f3      	bcc.n	574 <handler_reset+0x10>
 58c:	4b0b      	ldr	r3, [pc, #44]	; (5bc <handler_reset+0x58>)
 58e:	603b      	str	r3, [r7, #0]
 590:	e004      	b.n	59c <handler_reset+0x38>
 592:	683b      	ldr	r3, [r7, #0]
 594:	1d1a      	adds	r2, r3, #4
 596:	603a      	str	r2, [r7, #0]
 598:	2200      	movs	r2, #0
 59a:	601a      	str	r2, [r3, #0]
 59c:	683a      	ldr	r2, [r7, #0]
 59e:	4b08      	ldr	r3, [pc, #32]	; (5c0 <handler_reset+0x5c>)
 5a0:	429a      	cmp	r2, r3
 5a2:	d3f6      	bcc.n	592 <handler_reset+0x2e>
 5a4:	f7ff fe14 	bl	1d0 <main>
 5a8:	46c0      	nop			; (mov r8, r8)
 5aa:	46bd      	mov	sp, r7
 5ac:	b002      	add	sp, #8
 5ae:	bd80      	pop	{r7, pc}
 5b0:	00000850 	.word	0x00000850
 5b4:	20000000 	.word	0x20000000
 5b8:	20000004 	.word	0x20000004
 5bc:	20000004 	.word	0x20000004
 5c0:	20000420 	.word	0x20000420

000005c4 <default_handler>:
 5c4:	b580      	push	{r7, lr}
 5c6:	af00      	add	r7, sp, #0
 5c8:	e7fe      	b.n	5c8 <default_handler+0x4>
 5ca:	46c0      	nop			; (mov r8, r8)

000005cc <NVIC_EnableIRQ>:
 5cc:	b580      	push	{r7, lr}
 5ce:	b082      	sub	sp, #8
 5d0:	af00      	add	r7, sp, #0
 5d2:	0002      	movs	r2, r0
 5d4:	1dfb      	adds	r3, r7, #7
 5d6:	701a      	strb	r2, [r3, #0]
 5d8:	4909      	ldr	r1, [pc, #36]	; (600 <NVIC_EnableIRQ+0x34>)
 5da:	1dfb      	adds	r3, r7, #7
 5dc:	781b      	ldrb	r3, [r3, #0]
 5de:	b25b      	sxtb	r3, r3
 5e0:	095b      	lsrs	r3, r3, #5
 5e2:	1dfa      	adds	r2, r7, #7
 5e4:	7812      	ldrb	r2, [r2, #0]
 5e6:	0010      	movs	r0, r2
 5e8:	221f      	movs	r2, #31
 5ea:	4002      	ands	r2, r0
 5ec:	2001      	movs	r0, #1
 5ee:	4090      	lsls	r0, r2
 5f0:	0002      	movs	r2, r0
 5f2:	009b      	lsls	r3, r3, #2
 5f4:	505a      	str	r2, [r3, r1]
 5f6:	46c0      	nop			; (mov r8, r8)
 5f8:	46bd      	mov	sp, r7
 5fa:	b002      	add	sp, #8
 5fc:	bd80      	pop	{r7, pc}
 5fe:	46c0      	nop			; (mov r8, r8)
 600:	e000e100 	.word	0xe000e100

00000604 <NVIC_DisableIRQ>:
 604:	b580      	push	{r7, lr}
 606:	b082      	sub	sp, #8
 608:	af00      	add	r7, sp, #0
 60a:	0002      	movs	r2, r0
 60c:	1dfb      	adds	r3, r7, #7
 60e:	701a      	strb	r2, [r3, #0]
 610:	4909      	ldr	r1, [pc, #36]	; (638 <NVIC_DisableIRQ+0x34>)
 612:	1dfb      	adds	r3, r7, #7
 614:	781b      	ldrb	r3, [r3, #0]
 616:	b25b      	sxtb	r3, r3
 618:	095b      	lsrs	r3, r3, #5
 61a:	1dfa      	adds	r2, r7, #7
 61c:	7812      	ldrb	r2, [r2, #0]
 61e:	0010      	movs	r0, r2
 620:	221f      	movs	r2, #31
 622:	4002      	ands	r2, r0
 624:	2001      	movs	r0, #1
 626:	4090      	lsls	r0, r2
 628:	0002      	movs	r2, r0
 62a:	3320      	adds	r3, #32
 62c:	009b      	lsls	r3, r3, #2
 62e:	505a      	str	r2, [r3, r1]
 630:	46c0      	nop			; (mov r8, r8)
 632:	46bd      	mov	sp, r7
 634:	b002      	add	sp, #8
 636:	bd80      	pop	{r7, pc}
 638:	e000e100 	.word	0xe000e100

0000063c <uart_init>:
 63c:	b580      	push	{r7, lr}
 63e:	af00      	add	r7, sp, #0
 640:	4b1b      	ldr	r3, [pc, #108]	; (6b0 <uart_init+0x74>)
 642:	4a1b      	ldr	r2, [pc, #108]	; (6b0 <uart_init+0x74>)
 644:	69d2      	ldr	r2, [r2, #28]
 646:	2140      	movs	r1, #64	; 0x40
 648:	430a      	orrs	r2, r1
 64a:	61da      	str	r2, [r3, #28]
 64c:	4b18      	ldr	r3, [pc, #96]	; (6b0 <uart_init+0x74>)
 64e:	4a18      	ldr	r2, [pc, #96]	; (6b0 <uart_init+0x74>)
 650:	6a92      	ldr	r2, [r2, #40]	; 0x28
 652:	2180      	movs	r1, #128	; 0x80
 654:	0449      	lsls	r1, r1, #17
 656:	430a      	orrs	r2, r1
 658:	629a      	str	r2, [r3, #40]	; 0x28
 65a:	4b16      	ldr	r3, [pc, #88]	; (6b4 <uart_init+0x78>)
 65c:	2241      	movs	r2, #65	; 0x41
 65e:	625a      	str	r2, [r3, #36]	; 0x24
 660:	4b14      	ldr	r3, [pc, #80]	; (6b4 <uart_init+0x78>)
 662:	2207      	movs	r2, #7
 664:	629a      	str	r2, [r3, #40]	; 0x28
 666:	4b13      	ldr	r3, [pc, #76]	; (6b4 <uart_init+0x78>)
 668:	4a12      	ldr	r2, [pc, #72]	; (6b4 <uart_init+0x78>)
 66a:	6b52      	ldr	r2, [r2, #52]	; 0x34
 66c:	213f      	movs	r1, #63	; 0x3f
 66e:	438a      	bics	r2, r1
 670:	635a      	str	r2, [r3, #52]	; 0x34
 672:	4b10      	ldr	r3, [pc, #64]	; (6b4 <uart_init+0x78>)
 674:	4a0f      	ldr	r2, [pc, #60]	; (6b4 <uart_init+0x78>)
 676:	6b52      	ldr	r2, [r2, #52]	; 0x34
 678:	2124      	movs	r1, #36	; 0x24
 67a:	430a      	orrs	r2, r1
 67c:	635a      	str	r2, [r3, #52]	; 0x34
 67e:	4b0d      	ldr	r3, [pc, #52]	; (6b4 <uart_init+0x78>)
 680:	4a0c      	ldr	r2, [pc, #48]	; (6b4 <uart_init+0x78>)
 682:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 684:	2160      	movs	r1, #96	; 0x60
 686:	430a      	orrs	r2, r1
 688:	62da      	str	r2, [r3, #44]	; 0x2c
 68a:	4b0a      	ldr	r3, [pc, #40]	; (6b4 <uart_init+0x78>)
 68c:	4a09      	ldr	r2, [pc, #36]	; (6b4 <uart_init+0x78>)
 68e:	6b12      	ldr	r2, [r2, #48]	; 0x30
 690:	4909      	ldr	r1, [pc, #36]	; (6b8 <uart_init+0x7c>)
 692:	430a      	orrs	r2, r1
 694:	631a      	str	r2, [r3, #48]	; 0x30
 696:	4b07      	ldr	r3, [pc, #28]	; (6b4 <uart_init+0x78>)
 698:	4a06      	ldr	r2, [pc, #24]	; (6b4 <uart_init+0x78>)
 69a:	6b92      	ldr	r2, [r2, #56]	; 0x38
 69c:	2110      	movs	r1, #16
 69e:	430a      	orrs	r2, r1
 6a0:	639a      	str	r2, [r3, #56]	; 0x38
 6a2:	2006      	movs	r0, #6
 6a4:	f7ff ff92 	bl	5cc <NVIC_EnableIRQ>
 6a8:	46c0      	nop			; (mov r8, r8)
 6aa:	46bd      	mov	sp, r7
 6ac:	bd80      	pop	{r7, pc}
 6ae:	46c0      	nop			; (mov r8, r8)
 6b0:	40020000 	.word	0x40020000
 6b4:	40030000 	.word	0x40030000
 6b8:	00000301 	.word	0x00000301

000006bc <uart_read>:
 6bc:	b580      	push	{r7, lr}
 6be:	b084      	sub	sp, #16
 6c0:	af00      	add	r7, sp, #0
 6c2:	6078      	str	r0, [r7, #4]
 6c4:	6039      	str	r1, [r7, #0]
 6c6:	4b18      	ldr	r3, [pc, #96]	; (728 <uart_read+0x6c>)
 6c8:	681a      	ldr	r2, [r3, #0]
 6ca:	4b18      	ldr	r3, [pc, #96]	; (72c <uart_read+0x70>)
 6cc:	681b      	ldr	r3, [r3, #0]
 6ce:	429a      	cmp	r2, r3
 6d0:	d101      	bne.n	6d6 <uart_read+0x1a>
 6d2:	2300      	movs	r3, #0
 6d4:	e023      	b.n	71e <uart_read+0x62>
 6d6:	2300      	movs	r3, #0
 6d8:	60fb      	str	r3, [r7, #12]
 6da:	e01b      	b.n	714 <uart_read+0x58>
 6dc:	68fb      	ldr	r3, [r7, #12]
 6de:	687a      	ldr	r2, [r7, #4]
 6e0:	18d2      	adds	r2, r2, r3
 6e2:	4b11      	ldr	r3, [pc, #68]	; (728 <uart_read+0x6c>)
 6e4:	681b      	ldr	r3, [r3, #0]
 6e6:	4912      	ldr	r1, [pc, #72]	; (730 <uart_read+0x74>)
 6e8:	5ccb      	ldrb	r3, [r1, r3]
 6ea:	7013      	strb	r3, [r2, #0]
 6ec:	4b0e      	ldr	r3, [pc, #56]	; (728 <uart_read+0x6c>)
 6ee:	681b      	ldr	r3, [r3, #0]
 6f0:	3301      	adds	r3, #1
 6f2:	05db      	lsls	r3, r3, #23
 6f4:	0dda      	lsrs	r2, r3, #23
 6f6:	4b0c      	ldr	r3, [pc, #48]	; (728 <uart_read+0x6c>)
 6f8:	601a      	str	r2, [r3, #0]
 6fa:	4b0b      	ldr	r3, [pc, #44]	; (728 <uart_read+0x6c>)
 6fc:	681a      	ldr	r2, [r3, #0]
 6fe:	4b0b      	ldr	r3, [pc, #44]	; (72c <uart_read+0x70>)
 700:	681b      	ldr	r3, [r3, #0]
 702:	429a      	cmp	r2, r3
 704:	d103      	bne.n	70e <uart_read+0x52>
 706:	68fb      	ldr	r3, [r7, #12]
 708:	3301      	adds	r3, #1
 70a:	60fb      	str	r3, [r7, #12]
 70c:	e006      	b.n	71c <uart_read+0x60>
 70e:	68fb      	ldr	r3, [r7, #12]
 710:	3301      	adds	r3, #1
 712:	60fb      	str	r3, [r7, #12]
 714:	68fa      	ldr	r2, [r7, #12]
 716:	683b      	ldr	r3, [r7, #0]
 718:	429a      	cmp	r2, r3
 71a:	dbdf      	blt.n	6dc <uart_read+0x20>
 71c:	68fb      	ldr	r3, [r7, #12]
 71e:	0018      	movs	r0, r3
 720:	46bd      	mov	sp, r7
 722:	b004      	add	sp, #16
 724:	bd80      	pop	{r7, pc}
 726:	46c0      	nop			; (mov r8, r8)
 728:	2000041c 	.word	0x2000041c
 72c:	20000418 	.word	0x20000418
 730:	20000218 	.word	0x20000218

00000734 <uart_send>:
 734:	b580      	push	{r7, lr}
 736:	b084      	sub	sp, #16
 738:	af00      	add	r7, sp, #0
 73a:	6078      	str	r0, [r7, #4]
 73c:	6039      	str	r1, [r7, #0]
 73e:	2006      	movs	r0, #6
 740:	f7ff ff60 	bl	604 <NVIC_DisableIRQ>
 744:	2300      	movs	r3, #0
 746:	60fb      	str	r3, [r7, #12]
 748:	e01b      	b.n	782 <uart_send+0x4e>
 74a:	4b17      	ldr	r3, [pc, #92]	; (7a8 <uart_send+0x74>)
 74c:	681b      	ldr	r3, [r3, #0]
 74e:	68fa      	ldr	r2, [r7, #12]
 750:	6879      	ldr	r1, [r7, #4]
 752:	188a      	adds	r2, r1, r2
 754:	7811      	ldrb	r1, [r2, #0]
 756:	4a15      	ldr	r2, [pc, #84]	; (7ac <uart_send+0x78>)
 758:	54d1      	strb	r1, [r2, r3]
 75a:	4b13      	ldr	r3, [pc, #76]	; (7a8 <uart_send+0x74>)
 75c:	681b      	ldr	r3, [r3, #0]
 75e:	3301      	adds	r3, #1
 760:	05db      	lsls	r3, r3, #23
 762:	0dda      	lsrs	r2, r3, #23
 764:	4b10      	ldr	r3, [pc, #64]	; (7a8 <uart_send+0x74>)
 766:	601a      	str	r2, [r3, #0]
 768:	4b0f      	ldr	r3, [pc, #60]	; (7a8 <uart_send+0x74>)
 76a:	681a      	ldr	r2, [r3, #0]
 76c:	4b10      	ldr	r3, [pc, #64]	; (7b0 <uart_send+0x7c>)
 76e:	681b      	ldr	r3, [r3, #0]
 770:	429a      	cmp	r2, r3
 772:	d103      	bne.n	77c <uart_send+0x48>
 774:	68fb      	ldr	r3, [r7, #12]
 776:	3301      	adds	r3, #1
 778:	60fb      	str	r3, [r7, #12]
 77a:	e006      	b.n	78a <uart_send+0x56>
 77c:	68fb      	ldr	r3, [r7, #12]
 77e:	3301      	adds	r3, #1
 780:	60fb      	str	r3, [r7, #12]
 782:	68fa      	ldr	r2, [r7, #12]
 784:	683b      	ldr	r3, [r7, #0]
 786:	429a      	cmp	r2, r3
 788:	dbdf      	blt.n	74a <uart_send+0x16>
 78a:	4b0a      	ldr	r3, [pc, #40]	; (7b4 <uart_send+0x80>)
 78c:	4a09      	ldr	r2, [pc, #36]	; (7b4 <uart_send+0x80>)
 78e:	6b92      	ldr	r2, [r2, #56]	; 0x38
 790:	2120      	movs	r1, #32
 792:	430a      	orrs	r2, r1
 794:	639a      	str	r2, [r3, #56]	; 0x38
 796:	2006      	movs	r0, #6
 798:	f7ff ff18 	bl	5cc <NVIC_EnableIRQ>
 79c:	68fb      	ldr	r3, [r7, #12]
 79e:	0018      	movs	r0, r3
 7a0:	46bd      	mov	sp, r7
 7a2:	b004      	add	sp, #16
 7a4:	bd80      	pop	{r7, pc}
 7a6:	46c0      	nop			; (mov r8, r8)
 7a8:	20000214 	.word	0x20000214
 7ac:	20000010 	.word	0x20000010
 7b0:	20000210 	.word	0x20000210
 7b4:	40030000 	.word	0x40030000

000007b8 <UART1_Handler>:
 7b8:	b580      	push	{r7, lr}
 7ba:	af00      	add	r7, sp, #0
 7bc:	4b1a      	ldr	r3, [pc, #104]	; (828 <UART1_Handler+0x70>)
 7be:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 7c0:	2220      	movs	r2, #32
 7c2:	4013      	ands	r3, r2
 7c4:	d019      	beq.n	7fa <UART1_Handler+0x42>
 7c6:	4b19      	ldr	r3, [pc, #100]	; (82c <UART1_Handler+0x74>)
 7c8:	681a      	ldr	r2, [r3, #0]
 7ca:	4b19      	ldr	r3, [pc, #100]	; (830 <UART1_Handler+0x78>)
 7cc:	681b      	ldr	r3, [r3, #0]
 7ce:	429a      	cmp	r2, r3
 7d0:	d106      	bne.n	7e0 <UART1_Handler+0x28>
 7d2:	4b15      	ldr	r3, [pc, #84]	; (828 <UART1_Handler+0x70>)
 7d4:	4a14      	ldr	r2, [pc, #80]	; (828 <UART1_Handler+0x70>)
 7d6:	6b92      	ldr	r2, [r2, #56]	; 0x38
 7d8:	2120      	movs	r1, #32
 7da:	438a      	bics	r2, r1
 7dc:	639a      	str	r2, [r3, #56]	; 0x38
 7de:	e00c      	b.n	7fa <UART1_Handler+0x42>
 7e0:	4a11      	ldr	r2, [pc, #68]	; (828 <UART1_Handler+0x70>)
 7e2:	4b12      	ldr	r3, [pc, #72]	; (82c <UART1_Handler+0x74>)
 7e4:	681b      	ldr	r3, [r3, #0]
 7e6:	4913      	ldr	r1, [pc, #76]	; (834 <UART1_Handler+0x7c>)
 7e8:	5ccb      	ldrb	r3, [r1, r3]
 7ea:	6013      	str	r3, [r2, #0]
 7ec:	4b0f      	ldr	r3, [pc, #60]	; (82c <UART1_Handler+0x74>)
 7ee:	681b      	ldr	r3, [r3, #0]
 7f0:	3301      	adds	r3, #1
 7f2:	05db      	lsls	r3, r3, #23
 7f4:	0dda      	lsrs	r2, r3, #23
 7f6:	4b0d      	ldr	r3, [pc, #52]	; (82c <UART1_Handler+0x74>)
 7f8:	601a      	str	r2, [r3, #0]
 7fa:	4b0b      	ldr	r3, [pc, #44]	; (828 <UART1_Handler+0x70>)
 7fc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 7fe:	2210      	movs	r2, #16
 800:	4013      	ands	r3, r2
 802:	d00d      	beq.n	820 <UART1_Handler+0x68>
 804:	4b0c      	ldr	r3, [pc, #48]	; (838 <UART1_Handler+0x80>)
 806:	681a      	ldr	r2, [r3, #0]
 808:	4b07      	ldr	r3, [pc, #28]	; (828 <UART1_Handler+0x70>)
 80a:	681b      	ldr	r3, [r3, #0]
 80c:	b2d9      	uxtb	r1, r3
 80e:	4b0b      	ldr	r3, [pc, #44]	; (83c <UART1_Handler+0x84>)
 810:	5499      	strb	r1, [r3, r2]
 812:	4b09      	ldr	r3, [pc, #36]	; (838 <UART1_Handler+0x80>)
 814:	681b      	ldr	r3, [r3, #0]
 816:	3301      	adds	r3, #1
 818:	05db      	lsls	r3, r3, #23
 81a:	0dda      	lsrs	r2, r3, #23
 81c:	4b06      	ldr	r3, [pc, #24]	; (838 <UART1_Handler+0x80>)
 81e:	601a      	str	r2, [r3, #0]
 820:	46c0      	nop			; (mov r8, r8)
 822:	46bd      	mov	sp, r7
 824:	bd80      	pop	{r7, pc}
 826:	46c0      	nop			; (mov r8, r8)
 828:	40030000 	.word	0x40030000
 82c:	20000210 	.word	0x20000210
 830:	20000214 	.word	0x20000214
 834:	20000010 	.word	0x20000010
 838:	20000418 	.word	0x20000418
 83c:	20000218 	.word	0x20000218
 840:	6c6c6568 	.word	0x6c6c6568
 844:	6f77206f 	.word	0x6f77206f
 848:	0d646c72 	.word	0x0d646c72
 84c:	0000000a 	.word	0x0000000a
