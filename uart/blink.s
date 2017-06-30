
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 99 05 00 00 f9 05 00 00 f9 05 00 00     ... ............
	...
  2c:	f9 05 00 00 00 00 00 00 00 00 00 00 f9 05 00 00     ................
  3c:	59 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     Y...............
  4c:	f9 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     ................
  5c:	f9 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     ................
  6c:	f9 05 00 00 f9 05 00 00 71 05 00 00 f9 05 00 00     ........q.......
  7c:	f9 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     ................
  8c:	f9 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     ................
  9c:	f9 05 00 00 f9 05 00 00 00 00 00 00 00 00 00 00     ................
  ac:	f9 05 00 00 f9 05 00 00 f9 05 00 00 f9 05 00 00     ................
  bc:	f9 05 00 00                                         ....

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
 1d2:	b087      	sub	sp, #28
 1d4:	af00      	add	r7, sp, #0
 1d6:	1d3b      	adds	r3, r7, #4
 1d8:	4a11      	ldr	r2, [pc, #68]	; (220 <main+0x50>)
 1da:	ca13      	ldmia	r2!, {r0, r1, r4}
 1dc:	c313      	stmia	r3!, {r0, r1, r4}
 1de:	7812      	ldrb	r2, [r2, #0]
 1e0:	701a      	strb	r2, [r3, #0]
 1e2:	f000 f9a7 	bl	534 <SystemInit>
 1e6:	4b0f      	ldr	r3, [pc, #60]	; (224 <main+0x54>)
 1e8:	2200      	movs	r2, #0
 1ea:	601a      	str	r2, [r3, #0]
 1ec:	2300      	movs	r3, #0
 1ee:	617b      	str	r3, [r7, #20]
 1f0:	4b0d      	ldr	r3, [pc, #52]	; (228 <main+0x58>)
 1f2:	4a0d      	ldr	r2, [pc, #52]	; (228 <main+0x58>)
 1f4:	6812      	ldr	r2, [r2, #0]
 1f6:	490d      	ldr	r1, [pc, #52]	; (22c <main+0x5c>)
 1f8:	404a      	eors	r2, r1
 1fa:	601a      	str	r2, [r3, #0]
 1fc:	697b      	ldr	r3, [r7, #20]
 1fe:	2b0d      	cmp	r3, #13
 200:	d101      	bne.n	206 <main+0x36>
 202:	2300      	movs	r3, #0
 204:	617b      	str	r3, [r7, #20]
 206:	4a0a      	ldr	r2, [pc, #40]	; (230 <main+0x60>)
 208:	697b      	ldr	r3, [r7, #20]
 20a:	1c59      	adds	r1, r3, #1
 20c:	6179      	str	r1, [r7, #20]
 20e:	1d39      	adds	r1, r7, #4
 210:	5ccb      	ldrb	r3, [r1, r3]
 212:	6013      	str	r3, [r2, #0]
 214:	23fa      	movs	r3, #250	; 0xfa
 216:	009b      	lsls	r3, r3, #2
 218:	0018      	movs	r0, r3
 21a:	f7ff ffc3 	bl	1a4 <sleep>
 21e:	e7e7      	b.n	1f0 <main+0x20>
 220:	00000600 	.word	0x00000600
 224:	20000004 	.word	0x20000004
 228:	400c0000 	.word	0x400c0000
 22c:	0000ffff 	.word	0x0000ffff
 230:	40030000 	.word	0x40030000

00000234 <PortConfig>:
 234:	b580      	push	{r7, lr}
 236:	af00      	add	r7, sp, #0
 238:	4b44      	ldr	r3, [pc, #272]	; (34c <PortConfig+0x118>)
 23a:	4a44      	ldr	r2, [pc, #272]	; (34c <PortConfig+0x118>)
 23c:	69d2      	ldr	r2, [r2, #28]
 23e:	2180      	movs	r1, #128	; 0x80
 240:	0449      	lsls	r1, r1, #17
 242:	430a      	orrs	r2, r1
 244:	61da      	str	r2, [r3, #28]
 246:	4b42      	ldr	r3, [pc, #264]	; (350 <PortConfig+0x11c>)
 248:	2200      	movs	r2, #0
 24a:	609a      	str	r2, [r3, #8]
 24c:	4b40      	ldr	r3, [pc, #256]	; (350 <PortConfig+0x11c>)
 24e:	2200      	movs	r2, #0
 250:	601a      	str	r2, [r3, #0]
 252:	4b3f      	ldr	r3, [pc, #252]	; (350 <PortConfig+0x11c>)
 254:	22ff      	movs	r2, #255	; 0xff
 256:	01d2      	lsls	r2, r2, #7
 258:	605a      	str	r2, [r3, #4]
 25a:	4b3d      	ldr	r3, [pc, #244]	; (350 <PortConfig+0x11c>)
 25c:	22ff      	movs	r2, #255	; 0xff
 25e:	01d2      	lsls	r2, r2, #7
 260:	60da      	str	r2, [r3, #12]
 262:	4b3b      	ldr	r3, [pc, #236]	; (350 <PortConfig+0x11c>)
 264:	4a3b      	ldr	r2, [pc, #236]	; (354 <PortConfig+0x120>)
 266:	619a      	str	r2, [r3, #24]
 268:	4b38      	ldr	r3, [pc, #224]	; (34c <PortConfig+0x118>)
 26a:	4a38      	ldr	r2, [pc, #224]	; (34c <PortConfig+0x118>)
 26c:	69d2      	ldr	r2, [r2, #28]
 26e:	2180      	movs	r1, #128	; 0x80
 270:	0389      	lsls	r1, r1, #14
 272:	430a      	orrs	r2, r1
 274:	61da      	str	r2, [r3, #28]
 276:	4b38      	ldr	r3, [pc, #224]	; (358 <PortConfig+0x124>)
 278:	4a37      	ldr	r2, [pc, #220]	; (358 <PortConfig+0x124>)
 27a:	6892      	ldr	r2, [r2, #8]
 27c:	4937      	ldr	r1, [pc, #220]	; (35c <PortConfig+0x128>)
 27e:	400a      	ands	r2, r1
 280:	609a      	str	r2, [r3, #8]
 282:	4b35      	ldr	r3, [pc, #212]	; (358 <PortConfig+0x124>)
 284:	4a34      	ldr	r2, [pc, #208]	; (358 <PortConfig+0x124>)
 286:	6892      	ldr	r2, [r2, #8]
 288:	4935      	ldr	r1, [pc, #212]	; (360 <PortConfig+0x12c>)
 28a:	400a      	ands	r2, r1
 28c:	609a      	str	r2, [r3, #8]
 28e:	4b32      	ldr	r3, [pc, #200]	; (358 <PortConfig+0x124>)
 290:	4a31      	ldr	r2, [pc, #196]	; (358 <PortConfig+0x124>)
 292:	6892      	ldr	r2, [r2, #8]
 294:	2180      	movs	r1, #128	; 0x80
 296:	0189      	lsls	r1, r1, #6
 298:	430a      	orrs	r2, r1
 29a:	609a      	str	r2, [r3, #8]
 29c:	4b2e      	ldr	r3, [pc, #184]	; (358 <PortConfig+0x124>)
 29e:	4a2e      	ldr	r2, [pc, #184]	; (358 <PortConfig+0x124>)
 2a0:	6892      	ldr	r2, [r2, #8]
 2a2:	2180      	movs	r1, #128	; 0x80
 2a4:	0209      	lsls	r1, r1, #8
 2a6:	430a      	orrs	r2, r1
 2a8:	609a      	str	r2, [r3, #8]
 2aa:	4b2b      	ldr	r3, [pc, #172]	; (358 <PortConfig+0x124>)
 2ac:	4a2a      	ldr	r2, [pc, #168]	; (358 <PortConfig+0x124>)
 2ae:	6852      	ldr	r2, [r2, #4]
 2b0:	2140      	movs	r1, #64	; 0x40
 2b2:	430a      	orrs	r2, r1
 2b4:	605a      	str	r2, [r3, #4]
 2b6:	4b28      	ldr	r3, [pc, #160]	; (358 <PortConfig+0x124>)
 2b8:	4a27      	ldr	r2, [pc, #156]	; (358 <PortConfig+0x124>)
 2ba:	6852      	ldr	r2, [r2, #4]
 2bc:	2180      	movs	r1, #128	; 0x80
 2be:	430a      	orrs	r2, r1
 2c0:	605a      	str	r2, [r3, #4]
 2c2:	4b25      	ldr	r3, [pc, #148]	; (358 <PortConfig+0x124>)
 2c4:	4a24      	ldr	r2, [pc, #144]	; (358 <PortConfig+0x124>)
 2c6:	68d2      	ldr	r2, [r2, #12]
 2c8:	2140      	movs	r1, #64	; 0x40
 2ca:	430a      	orrs	r2, r1
 2cc:	60da      	str	r2, [r3, #12]
 2ce:	4b22      	ldr	r3, [pc, #136]	; (358 <PortConfig+0x124>)
 2d0:	4a21      	ldr	r2, [pc, #132]	; (358 <PortConfig+0x124>)
 2d2:	68d2      	ldr	r2, [r2, #12]
 2d4:	2180      	movs	r1, #128	; 0x80
 2d6:	430a      	orrs	r2, r1
 2d8:	60da      	str	r2, [r3, #12]
 2da:	4b1f      	ldr	r3, [pc, #124]	; (358 <PortConfig+0x124>)
 2dc:	4a1e      	ldr	r2, [pc, #120]	; (358 <PortConfig+0x124>)
 2de:	6992      	ldr	r2, [r2, #24]
 2e0:	21c0      	movs	r1, #192	; 0xc0
 2e2:	0189      	lsls	r1, r1, #6
 2e4:	430a      	orrs	r2, r1
 2e6:	619a      	str	r2, [r3, #24]
 2e8:	4b1b      	ldr	r3, [pc, #108]	; (358 <PortConfig+0x124>)
 2ea:	4a1b      	ldr	r2, [pc, #108]	; (358 <PortConfig+0x124>)
 2ec:	6992      	ldr	r2, [r2, #24]
 2ee:	21c0      	movs	r1, #192	; 0xc0
 2f0:	0209      	lsls	r1, r1, #8
 2f2:	430a      	orrs	r2, r1
 2f4:	619a      	str	r2, [r3, #24]
 2f6:	4b15      	ldr	r3, [pc, #84]	; (34c <PortConfig+0x118>)
 2f8:	4a14      	ldr	r2, [pc, #80]	; (34c <PortConfig+0x118>)
 2fa:	69d2      	ldr	r2, [r2, #28]
 2fc:	2180      	movs	r1, #128	; 0x80
 2fe:	0409      	lsls	r1, r1, #16
 300:	430a      	orrs	r2, r1
 302:	61da      	str	r2, [r3, #28]
 304:	4b17      	ldr	r3, [pc, #92]	; (364 <PortConfig+0x130>)
 306:	4a17      	ldr	r2, [pc, #92]	; (364 <PortConfig+0x130>)
 308:	6892      	ldr	r2, [r2, #8]
 30a:	4917      	ldr	r1, [pc, #92]	; (368 <PortConfig+0x134>)
 30c:	400a      	ands	r2, r1
 30e:	609a      	str	r2, [r3, #8]
 310:	4b14      	ldr	r3, [pc, #80]	; (364 <PortConfig+0x130>)
 312:	4a14      	ldr	r2, [pc, #80]	; (364 <PortConfig+0x130>)
 314:	6892      	ldr	r2, [r2, #8]
 316:	21a0      	movs	r1, #160	; 0xa0
 318:	0049      	lsls	r1, r1, #1
 31a:	430a      	orrs	r2, r1
 31c:	609a      	str	r2, [r3, #8]
 31e:	4b11      	ldr	r3, [pc, #68]	; (364 <PortConfig+0x130>)
 320:	4a10      	ldr	r2, [pc, #64]	; (364 <PortConfig+0x130>)
 322:	68d2      	ldr	r2, [r2, #12]
 324:	2118      	movs	r1, #24
 326:	430a      	orrs	r2, r1
 328:	60da      	str	r2, [r3, #12]
 32a:	4b0e      	ldr	r3, [pc, #56]	; (364 <PortConfig+0x130>)
 32c:	4a0d      	ldr	r2, [pc, #52]	; (364 <PortConfig+0x130>)
 32e:	6992      	ldr	r2, [r2, #24]
 330:	21f0      	movs	r1, #240	; 0xf0
 332:	0089      	lsls	r1, r1, #2
 334:	430a      	orrs	r2, r1
 336:	619a      	str	r2, [r3, #24]
 338:	4b0a      	ldr	r3, [pc, #40]	; (364 <PortConfig+0x130>)
 33a:	4a0a      	ldr	r2, [pc, #40]	; (364 <PortConfig+0x130>)
 33c:	6812      	ldr	r2, [r2, #0]
 33e:	2118      	movs	r1, #24
 340:	438a      	bics	r2, r1
 342:	601a      	str	r2, [r3, #0]
 344:	46c0      	nop			; (mov r8, r8)
 346:	46bd      	mov	sp, r7
 348:	bd80      	pop	{r7, pc}
 34a:	46c0      	nop			; (mov r8, r8)
 34c:	40020000 	.word	0x40020000
 350:	400c0000 	.word	0x400c0000
 354:	3fffc000 	.word	0x3fffc000
 358:	400a8000 	.word	0x400a8000
 35c:	ffffcfff 	.word	0xffffcfff
 360:	ffff3fff 	.word	0xffff3fff
 364:	400b8000 	.word	0x400b8000
 368:	fffffc3f 	.word	0xfffffc3f

0000036c <ClkConfig>:
 36c:	b580      	push	{r7, lr}
 36e:	af00      	add	r7, sp, #0
 370:	4b18      	ldr	r3, [pc, #96]	; (3d4 <ClkConfig+0x68>)
 372:	4a18      	ldr	r2, [pc, #96]	; (3d4 <ClkConfig+0x68>)
 374:	6892      	ldr	r2, [r2, #8]
 376:	2101      	movs	r1, #1
 378:	430a      	orrs	r2, r1
 37a:	609a      	str	r2, [r3, #8]
 37c:	46c0      	nop			; (mov r8, r8)
 37e:	4b15      	ldr	r3, [pc, #84]	; (3d4 <ClkConfig+0x68>)
 380:	681b      	ldr	r3, [r3, #0]
 382:	2204      	movs	r2, #4
 384:	4013      	ands	r3, r2
 386:	d0fa      	beq.n	37e <ClkConfig+0x12>
 388:	4b12      	ldr	r3, [pc, #72]	; (3d4 <ClkConfig+0x68>)
 38a:	4a12      	ldr	r2, [pc, #72]	; (3d4 <ClkConfig+0x68>)
 38c:	68d2      	ldr	r2, [r2, #12]
 38e:	2102      	movs	r1, #2
 390:	430a      	orrs	r2, r1
 392:	60da      	str	r2, [r3, #12]
 394:	4b0f      	ldr	r3, [pc, #60]	; (3d4 <ClkConfig+0x68>)
 396:	4a10      	ldr	r2, [pc, #64]	; (3d8 <ClkConfig+0x6c>)
 398:	605a      	str	r2, [r3, #4]
 39a:	46c0      	nop			; (mov r8, r8)
 39c:	4b0d      	ldr	r3, [pc, #52]	; (3d4 <ClkConfig+0x68>)
 39e:	681b      	ldr	r3, [r3, #0]
 3a0:	2202      	movs	r2, #2
 3a2:	4013      	ands	r3, r2
 3a4:	d0fa      	beq.n	39c <ClkConfig+0x30>
 3a6:	4b0d      	ldr	r3, [pc, #52]	; (3dc <ClkConfig+0x70>)
 3a8:	4a0c      	ldr	r2, [pc, #48]	; (3dc <ClkConfig+0x70>)
 3aa:	6812      	ldr	r2, [r2, #0]
 3ac:	2120      	movs	r1, #32
 3ae:	430a      	orrs	r2, r1
 3b0:	601a      	str	r2, [r3, #0]
 3b2:	4b08      	ldr	r3, [pc, #32]	; (3d4 <ClkConfig+0x68>)
 3b4:	4a07      	ldr	r2, [pc, #28]	; (3d4 <ClkConfig+0x68>)
 3b6:	68d2      	ldr	r2, [r2, #12]
 3b8:	2180      	movs	r1, #128	; 0x80
 3ba:	0049      	lsls	r1, r1, #1
 3bc:	430a      	orrs	r2, r1
 3be:	60da      	str	r2, [r3, #12]
 3c0:	4b04      	ldr	r3, [pc, #16]	; (3d4 <ClkConfig+0x68>)
 3c2:	4a04      	ldr	r2, [pc, #16]	; (3d4 <ClkConfig+0x68>)
 3c4:	68d2      	ldr	r2, [r2, #12]
 3c6:	2104      	movs	r1, #4
 3c8:	430a      	orrs	r2, r1
 3ca:	60da      	str	r2, [r3, #12]
 3cc:	46c0      	nop			; (mov r8, r8)
 3ce:	46bd      	mov	sp, r7
 3d0:	bd80      	pop	{r7, pc}
 3d2:	46c0      	nop			; (mov r8, r8)
 3d4:	40020000 	.word	0x40020000
 3d8:	00000e04 	.word	0x00000e04
 3dc:	40018000 	.word	0x40018000

000003e0 <TimerConfig>:
 3e0:	b580      	push	{r7, lr}
 3e2:	af00      	add	r7, sp, #0
 3e4:	4b35      	ldr	r3, [pc, #212]	; (4bc <_stack_size+0xbc>)
 3e6:	4a35      	ldr	r2, [pc, #212]	; (4bc <_stack_size+0xbc>)
 3e8:	69d2      	ldr	r2, [r2, #28]
 3ea:	2180      	movs	r1, #128	; 0x80
 3ec:	0309      	lsls	r1, r1, #12
 3ee:	430a      	orrs	r2, r1
 3f0:	61da      	str	r2, [r3, #28]
 3f2:	4b32      	ldr	r3, [pc, #200]	; (4bc <_stack_size+0xbc>)
 3f4:	4a31      	ldr	r2, [pc, #196]	; (4bc <_stack_size+0xbc>)
 3f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3f8:	2180      	movs	r1, #128	; 0x80
 3fa:	04c9      	lsls	r1, r1, #19
 3fc:	430a      	orrs	r2, r1
 3fe:	629a      	str	r2, [r3, #40]	; 0x28
 400:	4b2e      	ldr	r3, [pc, #184]	; (4bc <_stack_size+0xbc>)
 402:	4a2e      	ldr	r2, [pc, #184]	; (4bc <_stack_size+0xbc>)
 404:	6a92      	ldr	r2, [r2, #40]	; 0x28
 406:	492e      	ldr	r1, [pc, #184]	; (4c0 <_stack_size+0xc0>)
 408:	400a      	ands	r2, r1
 40a:	629a      	str	r2, [r3, #40]	; 0x28
 40c:	4b2d      	ldr	r3, [pc, #180]	; (4c4 <_stack_size+0xc4>)
 40e:	2200      	movs	r2, #0
 410:	601a      	str	r2, [r3, #0]
 412:	4b2c      	ldr	r3, [pc, #176]	; (4c4 <_stack_size+0xc4>)
 414:	220b      	movs	r2, #11
 416:	605a      	str	r2, [r3, #4]
 418:	4b2a      	ldr	r3, [pc, #168]	; (4c4 <_stack_size+0xc4>)
 41a:	4a2b      	ldr	r2, [pc, #172]	; (4c8 <_stack_size+0xc8>)
 41c:	609a      	str	r2, [r3, #8]
 41e:	4b29      	ldr	r3, [pc, #164]	; (4c4 <_stack_size+0xc4>)
 420:	22fa      	movs	r2, #250	; 0xfa
 422:	0052      	lsls	r2, r2, #1
 424:	611a      	str	r2, [r3, #16]
 426:	4b27      	ldr	r3, [pc, #156]	; (4c4 <_stack_size+0xc4>)
 428:	4a26      	ldr	r2, [pc, #152]	; (4c4 <_stack_size+0xc4>)
 42a:	6a12      	ldr	r2, [r2, #32]
 42c:	4927      	ldr	r1, [pc, #156]	; (4cc <_stack_size+0xcc>)
 42e:	400a      	ands	r2, r1
 430:	621a      	str	r2, [r3, #32]
 432:	4b24      	ldr	r3, [pc, #144]	; (4c4 <_stack_size+0xc4>)
 434:	4a23      	ldr	r2, [pc, #140]	; (4c4 <_stack_size+0xc4>)
 436:	6a12      	ldr	r2, [r2, #32]
 438:	21e0      	movs	r1, #224	; 0xe0
 43a:	0109      	lsls	r1, r1, #4
 43c:	430a      	orrs	r2, r1
 43e:	621a      	str	r2, [r3, #32]
 440:	4b20      	ldr	r3, [pc, #128]	; (4c4 <_stack_size+0xc4>)
 442:	4a20      	ldr	r2, [pc, #128]	; (4c4 <_stack_size+0xc4>)
 444:	6b12      	ldr	r2, [r2, #48]	; 0x30
 446:	210f      	movs	r1, #15
 448:	438a      	bics	r2, r1
 44a:	631a      	str	r2, [r3, #48]	; 0x30
 44c:	4b1d      	ldr	r3, [pc, #116]	; (4c4 <_stack_size+0xc4>)
 44e:	4a1d      	ldr	r2, [pc, #116]	; (4c4 <_stack_size+0xc4>)
 450:	6b12      	ldr	r2, [r2, #48]	; 0x30
 452:	210c      	movs	r1, #12
 454:	430a      	orrs	r2, r1
 456:	631a      	str	r2, [r3, #48]	; 0x30
 458:	4b1a      	ldr	r3, [pc, #104]	; (4c4 <_stack_size+0xc4>)
 45a:	4a1a      	ldr	r2, [pc, #104]	; (4c4 <_stack_size+0xc4>)
 45c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 45e:	2101      	movs	r1, #1
 460:	430a      	orrs	r2, r1
 462:	631a      	str	r2, [r3, #48]	; 0x30
 464:	4b17      	ldr	r3, [pc, #92]	; (4c4 <_stack_size+0xc4>)
 466:	4a17      	ldr	r2, [pc, #92]	; (4c4 <_stack_size+0xc4>)
 468:	6b12      	ldr	r2, [r2, #48]	; 0x30
 46a:	4919      	ldr	r1, [pc, #100]	; (4d0 <_stack_size+0xd0>)
 46c:	400a      	ands	r2, r1
 46e:	631a      	str	r2, [r3, #48]	; 0x30
 470:	4b14      	ldr	r3, [pc, #80]	; (4c4 <_stack_size+0xc4>)
 472:	4a14      	ldr	r2, [pc, #80]	; (4c4 <_stack_size+0xc4>)
 474:	6b12      	ldr	r2, [r2, #48]	; 0x30
 476:	21c0      	movs	r1, #192	; 0xc0
 478:	0109      	lsls	r1, r1, #4
 47a:	430a      	orrs	r2, r1
 47c:	631a      	str	r2, [r3, #48]	; 0x30
 47e:	4b11      	ldr	r3, [pc, #68]	; (4c4 <_stack_size+0xc4>)
 480:	4a10      	ldr	r2, [pc, #64]	; (4c4 <_stack_size+0xc4>)
 482:	6b12      	ldr	r2, [r2, #48]	; 0x30
 484:	2180      	movs	r1, #128	; 0x80
 486:	0049      	lsls	r1, r1, #1
 488:	430a      	orrs	r2, r1
 48a:	631a      	str	r2, [r3, #48]	; 0x30
 48c:	4b0d      	ldr	r3, [pc, #52]	; (4c4 <_stack_size+0xc4>)
 48e:	4a0d      	ldr	r2, [pc, #52]	; (4c4 <_stack_size+0xc4>)
 490:	6c12      	ldr	r2, [r2, #64]	; 0x40
 492:	21c8      	movs	r1, #200	; 0xc8
 494:	0209      	lsls	r1, r1, #8
 496:	430a      	orrs	r2, r1
 498:	641a      	str	r2, [r3, #64]	; 0x40
 49a:	4b0a      	ldr	r3, [pc, #40]	; (4c4 <_stack_size+0xc4>)
 49c:	4a09      	ldr	r2, [pc, #36]	; (4c4 <_stack_size+0xc4>)
 49e:	6d92      	ldr	r2, [r2, #88]	; 0x58
 4a0:	21f0      	movs	r1, #240	; 0xf0
 4a2:	0149      	lsls	r1, r1, #5
 4a4:	430a      	orrs	r2, r1
 4a6:	659a      	str	r2, [r3, #88]	; 0x58
 4a8:	4b06      	ldr	r3, [pc, #24]	; (4c4 <_stack_size+0xc4>)
 4aa:	2201      	movs	r2, #1
 4ac:	60da      	str	r2, [r3, #12]
 4ae:	200d      	movs	r0, #13
 4b0:	f7ff fe06 	bl	c0 <NVIC_EnableIRQ>
 4b4:	46c0      	nop			; (mov r8, r8)
 4b6:	46bd      	mov	sp, r7
 4b8:	bd80      	pop	{r7, pc}
 4ba:	46c0      	nop			; (mov r8, r8)
 4bc:	40020000 	.word	0x40020000
 4c0:	ff00ffff 	.word	0xff00ffff
 4c4:	40098000 	.word	0x40098000
 4c8:	000003e7 	.word	0x000003e7
 4cc:	fffff1ff 	.word	0xfffff1ff
 4d0:	fffff0ff 	.word	0xfffff0ff

000004d4 <UartConfig>:
 4d4:	b580      	push	{r7, lr}
 4d6:	af00      	add	r7, sp, #0
 4d8:	4b13      	ldr	r3, [pc, #76]	; (528 <UartConfig+0x54>)
 4da:	4a13      	ldr	r2, [pc, #76]	; (528 <UartConfig+0x54>)
 4dc:	69d2      	ldr	r2, [r2, #28]
 4de:	2140      	movs	r1, #64	; 0x40
 4e0:	430a      	orrs	r2, r1
 4e2:	61da      	str	r2, [r3, #28]
 4e4:	4b10      	ldr	r3, [pc, #64]	; (528 <UartConfig+0x54>)
 4e6:	4a10      	ldr	r2, [pc, #64]	; (528 <UartConfig+0x54>)
 4e8:	6a92      	ldr	r2, [r2, #40]	; 0x28
 4ea:	2180      	movs	r1, #128	; 0x80
 4ec:	0449      	lsls	r1, r1, #17
 4ee:	430a      	orrs	r2, r1
 4f0:	629a      	str	r2, [r3, #40]	; 0x28
 4f2:	4b0e      	ldr	r3, [pc, #56]	; (52c <UartConfig+0x58>)
 4f4:	2241      	movs	r2, #65	; 0x41
 4f6:	625a      	str	r2, [r3, #36]	; 0x24
 4f8:	4b0c      	ldr	r3, [pc, #48]	; (52c <UartConfig+0x58>)
 4fa:	2207      	movs	r2, #7
 4fc:	629a      	str	r2, [r3, #40]	; 0x28
 4fe:	4b0b      	ldr	r3, [pc, #44]	; (52c <UartConfig+0x58>)
 500:	4a0a      	ldr	r2, [pc, #40]	; (52c <UartConfig+0x58>)
 502:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 504:	2110      	movs	r1, #16
 506:	430a      	orrs	r2, r1
 508:	62da      	str	r2, [r3, #44]	; 0x2c
 50a:	4b08      	ldr	r3, [pc, #32]	; (52c <UartConfig+0x58>)
 50c:	4a07      	ldr	r2, [pc, #28]	; (52c <UartConfig+0x58>)
 50e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 510:	2160      	movs	r1, #96	; 0x60
 512:	430a      	orrs	r2, r1
 514:	62da      	str	r2, [r3, #44]	; 0x2c
 516:	4b05      	ldr	r3, [pc, #20]	; (52c <UartConfig+0x58>)
 518:	4a04      	ldr	r2, [pc, #16]	; (52c <UartConfig+0x58>)
 51a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 51c:	4904      	ldr	r1, [pc, #16]	; (530 <UartConfig+0x5c>)
 51e:	430a      	orrs	r2, r1
 520:	631a      	str	r2, [r3, #48]	; 0x30
 522:	46c0      	nop			; (mov r8, r8)
 524:	46bd      	mov	sp, r7
 526:	bd80      	pop	{r7, pc}
 528:	40020000 	.word	0x40020000
 52c:	40030000 	.word	0x40030000
 530:	00000301 	.word	0x00000301

00000534 <SystemInit>:
 534:	b580      	push	{r7, lr}
 536:	af00      	add	r7, sp, #0
 538:	f7ff ff18 	bl	36c <ClkConfig>
 53c:	f7ff fe7a 	bl	234 <PortConfig>
 540:	f7ff ffc8 	bl	4d4 <UartConfig>
 544:	4b03      	ldr	r3, [pc, #12]	; (554 <SystemInit+0x20>)
 546:	0018      	movs	r0, r3
 548:	f7ff fe06 	bl	158 <SysTick_Config>
 54c:	46c0      	nop			; (mov r8, r8)
 54e:	46bd      	mov	sp, r7
 550:	bd80      	pop	{r7, pc}
 552:	46c0      	nop			; (mov r8, r8)
 554:	0001d4c0 	.word	0x0001d4c0

00000558 <SysTick_Handler>:
 558:	b580      	push	{r7, lr}
 55a:	af00      	add	r7, sp, #0
 55c:	4b03      	ldr	r3, [pc, #12]	; (56c <SysTick_Handler+0x14>)
 55e:	681b      	ldr	r3, [r3, #0]
 560:	1c5a      	adds	r2, r3, #1
 562:	4b02      	ldr	r3, [pc, #8]	; (56c <SysTick_Handler+0x14>)
 564:	601a      	str	r2, [r3, #0]
 566:	46c0      	nop			; (mov r8, r8)
 568:	46bd      	mov	sp, r7
 56a:	bd80      	pop	{r7, pc}
 56c:	2000000c 	.word	0x2000000c

00000570 <TIMER4_Handler>:
 570:	b580      	push	{r7, lr}
 572:	af00      	add	r7, sp, #0
 574:	4b05      	ldr	r3, [pc, #20]	; (58c <TIMER4_Handler+0x1c>)
 576:	2200      	movs	r2, #0
 578:	655a      	str	r2, [r3, #84]	; 0x54
 57a:	4b05      	ldr	r3, [pc, #20]	; (590 <TIMER4_Handler+0x20>)
 57c:	4a04      	ldr	r2, [pc, #16]	; (590 <TIMER4_Handler+0x20>)
 57e:	6812      	ldr	r2, [r2, #0]
 580:	4904      	ldr	r1, [pc, #16]	; (594 <TIMER4_Handler+0x24>)
 582:	404a      	eors	r2, r1
 584:	601a      	str	r2, [r3, #0]
 586:	46c0      	nop			; (mov r8, r8)
 588:	46bd      	mov	sp, r7
 58a:	bd80      	pop	{r7, pc}
 58c:	40098000 	.word	0x40098000
 590:	400c0000 	.word	0x400c0000
 594:	0000ffff 	.word	0x0000ffff

00000598 <handler_reset>:
 598:	b580      	push	{r7, lr}
 59a:	b082      	sub	sp, #8
 59c:	af00      	add	r7, sp, #0
 59e:	4b11      	ldr	r3, [pc, #68]	; (5e4 <handler_reset+0x4c>)
 5a0:	607b      	str	r3, [r7, #4]
 5a2:	4b11      	ldr	r3, [pc, #68]	; (5e8 <handler_reset+0x50>)
 5a4:	603b      	str	r3, [r7, #0]
 5a6:	e007      	b.n	5b8 <handler_reset+0x20>
 5a8:	683b      	ldr	r3, [r7, #0]
 5aa:	1d1a      	adds	r2, r3, #4
 5ac:	603a      	str	r2, [r7, #0]
 5ae:	687a      	ldr	r2, [r7, #4]
 5b0:	1d11      	adds	r1, r2, #4
 5b2:	6079      	str	r1, [r7, #4]
 5b4:	6812      	ldr	r2, [r2, #0]
 5b6:	601a      	str	r2, [r3, #0]
 5b8:	683a      	ldr	r2, [r7, #0]
 5ba:	4b0c      	ldr	r3, [pc, #48]	; (5ec <handler_reset+0x54>)
 5bc:	429a      	cmp	r2, r3
 5be:	d3f3      	bcc.n	5a8 <handler_reset+0x10>
 5c0:	4b0b      	ldr	r3, [pc, #44]	; (5f0 <handler_reset+0x58>)
 5c2:	603b      	str	r3, [r7, #0]
 5c4:	e004      	b.n	5d0 <handler_reset+0x38>
 5c6:	683b      	ldr	r3, [r7, #0]
 5c8:	1d1a      	adds	r2, r3, #4
 5ca:	603a      	str	r2, [r7, #0]
 5cc:	2200      	movs	r2, #0
 5ce:	601a      	str	r2, [r3, #0]
 5d0:	683a      	ldr	r2, [r7, #0]
 5d2:	4b08      	ldr	r3, [pc, #32]	; (5f4 <handler_reset+0x5c>)
 5d4:	429a      	cmp	r2, r3
 5d6:	d3f6      	bcc.n	5c6 <handler_reset+0x2e>
 5d8:	f7ff fdfa 	bl	1d0 <main>
 5dc:	46c0      	nop			; (mov r8, r8)
 5de:	46bd      	mov	sp, r7
 5e0:	b002      	add	sp, #8
 5e2:	bd80      	pop	{r7, pc}
 5e4:	00000610 	.word	0x00000610
 5e8:	20000000 	.word	0x20000000
 5ec:	20000004 	.word	0x20000004
 5f0:	20000004 	.word	0x20000004
 5f4:	20000010 	.word	0x20000010

000005f8 <default_handler>:
 5f8:	b580      	push	{r7, lr}
 5fa:	af00      	add	r7, sp, #0
 5fc:	e7fe      	b.n	5fc <default_handler+0x4>
 5fe:	46c0      	nop			; (mov r8, r8)
 600:	6c6c6568 	.word	0x6c6c6568
 604:	6f77206f 	.word	0x6f77206f
 608:	0a646c72 	.word	0x0a646c72
 60c:	00000000 	.word	0x00000000
