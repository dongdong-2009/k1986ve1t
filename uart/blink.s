
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 a9 05 00 00 09 06 00 00 09 06 00 00     ... ............
	...
  2c:	09 06 00 00 00 00 00 00 00 00 00 00 09 06 00 00     ................
  3c:	69 05 00 00 09 06 00 00 09 06 00 00 09 06 00 00     i...............
  4c:	09 06 00 00 09 06 00 00 09 06 00 00 09 06 00 00     ................
  5c:	09 06 00 00 09 06 00 00 09 06 00 00 09 06 00 00     ................
  6c:	09 06 00 00 09 06 00 00 81 05 00 00 09 06 00 00     ................
  7c:	09 06 00 00 09 06 00 00 09 06 00 00 09 06 00 00     ................
  8c:	09 06 00 00 09 06 00 00 09 06 00 00 09 06 00 00     ................
  9c:	09 06 00 00 09 06 00 00 00 00 00 00 00 00 00 00     ................
  ac:	09 06 00 00 09 06 00 00 09 06 00 00 09 06 00 00     ................
  bc:	09 06 00 00                                         ....

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
 1d8:	4a15      	ldr	r2, [pc, #84]	; (230 <main+0x60>)
 1da:	ca13      	ldmia	r2!, {r0, r1, r4}
 1dc:	c313      	stmia	r3!, {r0, r1, r4}
 1de:	8812      	ldrh	r2, [r2, #0]
 1e0:	801a      	strh	r2, [r3, #0]
 1e2:	f000 f9af 	bl	544 <SystemInit>
 1e6:	4b13      	ldr	r3, [pc, #76]	; (234 <main+0x64>)
 1e8:	2200      	movs	r2, #0
 1ea:	601a      	str	r2, [r3, #0]
 1ec:	2300      	movs	r3, #0
 1ee:	617b      	str	r3, [r7, #20]
 1f0:	4b11      	ldr	r3, [pc, #68]	; (238 <main+0x68>)
 1f2:	4a11      	ldr	r2, [pc, #68]	; (238 <main+0x68>)
 1f4:	6812      	ldr	r2, [r2, #0]
 1f6:	4911      	ldr	r1, [pc, #68]	; (23c <main+0x6c>)
 1f8:	404a      	eors	r2, r1
 1fa:	601a      	str	r2, [r3, #0]
 1fc:	2300      	movs	r3, #0
 1fe:	617b      	str	r3, [r7, #20]
 200:	e00e      	b.n	220 <main+0x50>
 202:	4b0f      	ldr	r3, [pc, #60]	; (240 <main+0x70>)
 204:	1d39      	adds	r1, r7, #4
 206:	697a      	ldr	r2, [r7, #20]
 208:	188a      	adds	r2, r1, r2
 20a:	7812      	ldrb	r2, [r2, #0]
 20c:	601a      	str	r2, [r3, #0]
 20e:	46c0      	nop			; (mov r8, r8)
 210:	4b0b      	ldr	r3, [pc, #44]	; (240 <main+0x70>)
 212:	699b      	ldr	r3, [r3, #24]
 214:	2220      	movs	r2, #32
 216:	4013      	ands	r3, r2
 218:	d1fa      	bne.n	210 <main+0x40>
 21a:	697b      	ldr	r3, [r7, #20]
 21c:	3301      	adds	r3, #1
 21e:	617b      	str	r3, [r7, #20]
 220:	697b      	ldr	r3, [r7, #20]
 222:	2b0d      	cmp	r3, #13
 224:	d9ed      	bls.n	202 <main+0x32>
 226:	2064      	movs	r0, #100	; 0x64
 228:	f7ff ffbc 	bl	1a4 <sleep>
 22c:	e7e0      	b.n	1f0 <main+0x20>
 22e:	46c0      	nop			; (mov r8, r8)
 230:	00000610 	.word	0x00000610
 234:	20000004 	.word	0x20000004
 238:	400c0000 	.word	0x400c0000
 23c:	0000ffff 	.word	0x0000ffff
 240:	40030000 	.word	0x40030000

00000244 <PortConfig>:
 244:	b580      	push	{r7, lr}
 246:	af00      	add	r7, sp, #0
 248:	4b44      	ldr	r3, [pc, #272]	; (35c <PortConfig+0x118>)
 24a:	4a44      	ldr	r2, [pc, #272]	; (35c <PortConfig+0x118>)
 24c:	69d2      	ldr	r2, [r2, #28]
 24e:	2180      	movs	r1, #128	; 0x80
 250:	0449      	lsls	r1, r1, #17
 252:	430a      	orrs	r2, r1
 254:	61da      	str	r2, [r3, #28]
 256:	4b42      	ldr	r3, [pc, #264]	; (360 <PortConfig+0x11c>)
 258:	2200      	movs	r2, #0
 25a:	609a      	str	r2, [r3, #8]
 25c:	4b40      	ldr	r3, [pc, #256]	; (360 <PortConfig+0x11c>)
 25e:	2200      	movs	r2, #0
 260:	601a      	str	r2, [r3, #0]
 262:	4b3f      	ldr	r3, [pc, #252]	; (360 <PortConfig+0x11c>)
 264:	22ff      	movs	r2, #255	; 0xff
 266:	01d2      	lsls	r2, r2, #7
 268:	605a      	str	r2, [r3, #4]
 26a:	4b3d      	ldr	r3, [pc, #244]	; (360 <PortConfig+0x11c>)
 26c:	22ff      	movs	r2, #255	; 0xff
 26e:	01d2      	lsls	r2, r2, #7
 270:	60da      	str	r2, [r3, #12]
 272:	4b3b      	ldr	r3, [pc, #236]	; (360 <PortConfig+0x11c>)
 274:	4a3b      	ldr	r2, [pc, #236]	; (364 <PortConfig+0x120>)
 276:	619a      	str	r2, [r3, #24]
 278:	4b38      	ldr	r3, [pc, #224]	; (35c <PortConfig+0x118>)
 27a:	4a38      	ldr	r2, [pc, #224]	; (35c <PortConfig+0x118>)
 27c:	69d2      	ldr	r2, [r2, #28]
 27e:	2180      	movs	r1, #128	; 0x80
 280:	0389      	lsls	r1, r1, #14
 282:	430a      	orrs	r2, r1
 284:	61da      	str	r2, [r3, #28]
 286:	4b38      	ldr	r3, [pc, #224]	; (368 <PortConfig+0x124>)
 288:	4a37      	ldr	r2, [pc, #220]	; (368 <PortConfig+0x124>)
 28a:	6892      	ldr	r2, [r2, #8]
 28c:	4937      	ldr	r1, [pc, #220]	; (36c <PortConfig+0x128>)
 28e:	400a      	ands	r2, r1
 290:	609a      	str	r2, [r3, #8]
 292:	4b35      	ldr	r3, [pc, #212]	; (368 <PortConfig+0x124>)
 294:	4a34      	ldr	r2, [pc, #208]	; (368 <PortConfig+0x124>)
 296:	6892      	ldr	r2, [r2, #8]
 298:	4935      	ldr	r1, [pc, #212]	; (370 <PortConfig+0x12c>)
 29a:	400a      	ands	r2, r1
 29c:	609a      	str	r2, [r3, #8]
 29e:	4b32      	ldr	r3, [pc, #200]	; (368 <PortConfig+0x124>)
 2a0:	4a31      	ldr	r2, [pc, #196]	; (368 <PortConfig+0x124>)
 2a2:	6892      	ldr	r2, [r2, #8]
 2a4:	2180      	movs	r1, #128	; 0x80
 2a6:	0189      	lsls	r1, r1, #6
 2a8:	430a      	orrs	r2, r1
 2aa:	609a      	str	r2, [r3, #8]
 2ac:	4b2e      	ldr	r3, [pc, #184]	; (368 <PortConfig+0x124>)
 2ae:	4a2e      	ldr	r2, [pc, #184]	; (368 <PortConfig+0x124>)
 2b0:	6892      	ldr	r2, [r2, #8]
 2b2:	2180      	movs	r1, #128	; 0x80
 2b4:	0209      	lsls	r1, r1, #8
 2b6:	430a      	orrs	r2, r1
 2b8:	609a      	str	r2, [r3, #8]
 2ba:	4b2b      	ldr	r3, [pc, #172]	; (368 <PortConfig+0x124>)
 2bc:	4a2a      	ldr	r2, [pc, #168]	; (368 <PortConfig+0x124>)
 2be:	6852      	ldr	r2, [r2, #4]
 2c0:	2140      	movs	r1, #64	; 0x40
 2c2:	430a      	orrs	r2, r1
 2c4:	605a      	str	r2, [r3, #4]
 2c6:	4b28      	ldr	r3, [pc, #160]	; (368 <PortConfig+0x124>)
 2c8:	4a27      	ldr	r2, [pc, #156]	; (368 <PortConfig+0x124>)
 2ca:	6852      	ldr	r2, [r2, #4]
 2cc:	2180      	movs	r1, #128	; 0x80
 2ce:	430a      	orrs	r2, r1
 2d0:	605a      	str	r2, [r3, #4]
 2d2:	4b25      	ldr	r3, [pc, #148]	; (368 <PortConfig+0x124>)
 2d4:	4a24      	ldr	r2, [pc, #144]	; (368 <PortConfig+0x124>)
 2d6:	68d2      	ldr	r2, [r2, #12]
 2d8:	2140      	movs	r1, #64	; 0x40
 2da:	430a      	orrs	r2, r1
 2dc:	60da      	str	r2, [r3, #12]
 2de:	4b22      	ldr	r3, [pc, #136]	; (368 <PortConfig+0x124>)
 2e0:	4a21      	ldr	r2, [pc, #132]	; (368 <PortConfig+0x124>)
 2e2:	68d2      	ldr	r2, [r2, #12]
 2e4:	2180      	movs	r1, #128	; 0x80
 2e6:	430a      	orrs	r2, r1
 2e8:	60da      	str	r2, [r3, #12]
 2ea:	4b1f      	ldr	r3, [pc, #124]	; (368 <PortConfig+0x124>)
 2ec:	4a1e      	ldr	r2, [pc, #120]	; (368 <PortConfig+0x124>)
 2ee:	6992      	ldr	r2, [r2, #24]
 2f0:	21c0      	movs	r1, #192	; 0xc0
 2f2:	0189      	lsls	r1, r1, #6
 2f4:	430a      	orrs	r2, r1
 2f6:	619a      	str	r2, [r3, #24]
 2f8:	4b1b      	ldr	r3, [pc, #108]	; (368 <PortConfig+0x124>)
 2fa:	4a1b      	ldr	r2, [pc, #108]	; (368 <PortConfig+0x124>)
 2fc:	6992      	ldr	r2, [r2, #24]
 2fe:	21c0      	movs	r1, #192	; 0xc0
 300:	0209      	lsls	r1, r1, #8
 302:	430a      	orrs	r2, r1
 304:	619a      	str	r2, [r3, #24]
 306:	4b15      	ldr	r3, [pc, #84]	; (35c <PortConfig+0x118>)
 308:	4a14      	ldr	r2, [pc, #80]	; (35c <PortConfig+0x118>)
 30a:	69d2      	ldr	r2, [r2, #28]
 30c:	2180      	movs	r1, #128	; 0x80
 30e:	0409      	lsls	r1, r1, #16
 310:	430a      	orrs	r2, r1
 312:	61da      	str	r2, [r3, #28]
 314:	4b17      	ldr	r3, [pc, #92]	; (374 <PortConfig+0x130>)
 316:	4a17      	ldr	r2, [pc, #92]	; (374 <PortConfig+0x130>)
 318:	6892      	ldr	r2, [r2, #8]
 31a:	4917      	ldr	r1, [pc, #92]	; (378 <PortConfig+0x134>)
 31c:	400a      	ands	r2, r1
 31e:	609a      	str	r2, [r3, #8]
 320:	4b14      	ldr	r3, [pc, #80]	; (374 <PortConfig+0x130>)
 322:	4a14      	ldr	r2, [pc, #80]	; (374 <PortConfig+0x130>)
 324:	6892      	ldr	r2, [r2, #8]
 326:	21a0      	movs	r1, #160	; 0xa0
 328:	0049      	lsls	r1, r1, #1
 32a:	430a      	orrs	r2, r1
 32c:	609a      	str	r2, [r3, #8]
 32e:	4b11      	ldr	r3, [pc, #68]	; (374 <PortConfig+0x130>)
 330:	4a10      	ldr	r2, [pc, #64]	; (374 <PortConfig+0x130>)
 332:	68d2      	ldr	r2, [r2, #12]
 334:	2118      	movs	r1, #24
 336:	430a      	orrs	r2, r1
 338:	60da      	str	r2, [r3, #12]
 33a:	4b0e      	ldr	r3, [pc, #56]	; (374 <PortConfig+0x130>)
 33c:	4a0d      	ldr	r2, [pc, #52]	; (374 <PortConfig+0x130>)
 33e:	6992      	ldr	r2, [r2, #24]
 340:	21f0      	movs	r1, #240	; 0xf0
 342:	0089      	lsls	r1, r1, #2
 344:	430a      	orrs	r2, r1
 346:	619a      	str	r2, [r3, #24]
 348:	4b0a      	ldr	r3, [pc, #40]	; (374 <PortConfig+0x130>)
 34a:	4a0a      	ldr	r2, [pc, #40]	; (374 <PortConfig+0x130>)
 34c:	6812      	ldr	r2, [r2, #0]
 34e:	2118      	movs	r1, #24
 350:	438a      	bics	r2, r1
 352:	601a      	str	r2, [r3, #0]
 354:	46c0      	nop			; (mov r8, r8)
 356:	46bd      	mov	sp, r7
 358:	bd80      	pop	{r7, pc}
 35a:	46c0      	nop			; (mov r8, r8)
 35c:	40020000 	.word	0x40020000
 360:	400c0000 	.word	0x400c0000
 364:	3fffc000 	.word	0x3fffc000
 368:	400a8000 	.word	0x400a8000
 36c:	ffffcfff 	.word	0xffffcfff
 370:	ffff3fff 	.word	0xffff3fff
 374:	400b8000 	.word	0x400b8000
 378:	fffffc3f 	.word	0xfffffc3f

0000037c <ClkConfig>:
 37c:	b580      	push	{r7, lr}
 37e:	af00      	add	r7, sp, #0
 380:	4b18      	ldr	r3, [pc, #96]	; (3e4 <ClkConfig+0x68>)
 382:	4a18      	ldr	r2, [pc, #96]	; (3e4 <ClkConfig+0x68>)
 384:	6892      	ldr	r2, [r2, #8]
 386:	2101      	movs	r1, #1
 388:	430a      	orrs	r2, r1
 38a:	609a      	str	r2, [r3, #8]
 38c:	46c0      	nop			; (mov r8, r8)
 38e:	4b15      	ldr	r3, [pc, #84]	; (3e4 <ClkConfig+0x68>)
 390:	681b      	ldr	r3, [r3, #0]
 392:	2204      	movs	r2, #4
 394:	4013      	ands	r3, r2
 396:	d0fa      	beq.n	38e <ClkConfig+0x12>
 398:	4b12      	ldr	r3, [pc, #72]	; (3e4 <ClkConfig+0x68>)
 39a:	4a12      	ldr	r2, [pc, #72]	; (3e4 <ClkConfig+0x68>)
 39c:	68d2      	ldr	r2, [r2, #12]
 39e:	2102      	movs	r1, #2
 3a0:	430a      	orrs	r2, r1
 3a2:	60da      	str	r2, [r3, #12]
 3a4:	4b0f      	ldr	r3, [pc, #60]	; (3e4 <ClkConfig+0x68>)
 3a6:	4a10      	ldr	r2, [pc, #64]	; (3e8 <ClkConfig+0x6c>)
 3a8:	605a      	str	r2, [r3, #4]
 3aa:	46c0      	nop			; (mov r8, r8)
 3ac:	4b0d      	ldr	r3, [pc, #52]	; (3e4 <ClkConfig+0x68>)
 3ae:	681b      	ldr	r3, [r3, #0]
 3b0:	2202      	movs	r2, #2
 3b2:	4013      	ands	r3, r2
 3b4:	d0fa      	beq.n	3ac <ClkConfig+0x30>
 3b6:	4b0d      	ldr	r3, [pc, #52]	; (3ec <ClkConfig+0x70>)
 3b8:	4a0c      	ldr	r2, [pc, #48]	; (3ec <ClkConfig+0x70>)
 3ba:	6812      	ldr	r2, [r2, #0]
 3bc:	2120      	movs	r1, #32
 3be:	430a      	orrs	r2, r1
 3c0:	601a      	str	r2, [r3, #0]
 3c2:	4b08      	ldr	r3, [pc, #32]	; (3e4 <ClkConfig+0x68>)
 3c4:	4a07      	ldr	r2, [pc, #28]	; (3e4 <ClkConfig+0x68>)
 3c6:	68d2      	ldr	r2, [r2, #12]
 3c8:	2180      	movs	r1, #128	; 0x80
 3ca:	0049      	lsls	r1, r1, #1
 3cc:	430a      	orrs	r2, r1
 3ce:	60da      	str	r2, [r3, #12]
 3d0:	4b04      	ldr	r3, [pc, #16]	; (3e4 <ClkConfig+0x68>)
 3d2:	4a04      	ldr	r2, [pc, #16]	; (3e4 <ClkConfig+0x68>)
 3d4:	68d2      	ldr	r2, [r2, #12]
 3d6:	2104      	movs	r1, #4
 3d8:	430a      	orrs	r2, r1
 3da:	60da      	str	r2, [r3, #12]
 3dc:	46c0      	nop			; (mov r8, r8)
 3de:	46bd      	mov	sp, r7
 3e0:	bd80      	pop	{r7, pc}
 3e2:	46c0      	nop			; (mov r8, r8)
 3e4:	40020000 	.word	0x40020000
 3e8:	00000e04 	.word	0x00000e04
 3ec:	40018000 	.word	0x40018000

000003f0 <TimerConfig>:
 3f0:	b580      	push	{r7, lr}
 3f2:	af00      	add	r7, sp, #0
 3f4:	4b35      	ldr	r3, [pc, #212]	; (4cc <_stack_size+0xcc>)
 3f6:	4a35      	ldr	r2, [pc, #212]	; (4cc <_stack_size+0xcc>)
 3f8:	69d2      	ldr	r2, [r2, #28]
 3fa:	2180      	movs	r1, #128	; 0x80
 3fc:	0309      	lsls	r1, r1, #12
 3fe:	430a      	orrs	r2, r1
 400:	61da      	str	r2, [r3, #28]
 402:	4b32      	ldr	r3, [pc, #200]	; (4cc <_stack_size+0xcc>)
 404:	4a31      	ldr	r2, [pc, #196]	; (4cc <_stack_size+0xcc>)
 406:	6a92      	ldr	r2, [r2, #40]	; 0x28
 408:	2180      	movs	r1, #128	; 0x80
 40a:	04c9      	lsls	r1, r1, #19
 40c:	430a      	orrs	r2, r1
 40e:	629a      	str	r2, [r3, #40]	; 0x28
 410:	4b2e      	ldr	r3, [pc, #184]	; (4cc <_stack_size+0xcc>)
 412:	4a2e      	ldr	r2, [pc, #184]	; (4cc <_stack_size+0xcc>)
 414:	6a92      	ldr	r2, [r2, #40]	; 0x28
 416:	492e      	ldr	r1, [pc, #184]	; (4d0 <_stack_size+0xd0>)
 418:	400a      	ands	r2, r1
 41a:	629a      	str	r2, [r3, #40]	; 0x28
 41c:	4b2d      	ldr	r3, [pc, #180]	; (4d4 <_stack_size+0xd4>)
 41e:	2200      	movs	r2, #0
 420:	601a      	str	r2, [r3, #0]
 422:	4b2c      	ldr	r3, [pc, #176]	; (4d4 <_stack_size+0xd4>)
 424:	220b      	movs	r2, #11
 426:	605a      	str	r2, [r3, #4]
 428:	4b2a      	ldr	r3, [pc, #168]	; (4d4 <_stack_size+0xd4>)
 42a:	4a2b      	ldr	r2, [pc, #172]	; (4d8 <_stack_size+0xd8>)
 42c:	609a      	str	r2, [r3, #8]
 42e:	4b29      	ldr	r3, [pc, #164]	; (4d4 <_stack_size+0xd4>)
 430:	22fa      	movs	r2, #250	; 0xfa
 432:	0052      	lsls	r2, r2, #1
 434:	611a      	str	r2, [r3, #16]
 436:	4b27      	ldr	r3, [pc, #156]	; (4d4 <_stack_size+0xd4>)
 438:	4a26      	ldr	r2, [pc, #152]	; (4d4 <_stack_size+0xd4>)
 43a:	6a12      	ldr	r2, [r2, #32]
 43c:	4927      	ldr	r1, [pc, #156]	; (4dc <_stack_size+0xdc>)
 43e:	400a      	ands	r2, r1
 440:	621a      	str	r2, [r3, #32]
 442:	4b24      	ldr	r3, [pc, #144]	; (4d4 <_stack_size+0xd4>)
 444:	4a23      	ldr	r2, [pc, #140]	; (4d4 <_stack_size+0xd4>)
 446:	6a12      	ldr	r2, [r2, #32]
 448:	21e0      	movs	r1, #224	; 0xe0
 44a:	0109      	lsls	r1, r1, #4
 44c:	430a      	orrs	r2, r1
 44e:	621a      	str	r2, [r3, #32]
 450:	4b20      	ldr	r3, [pc, #128]	; (4d4 <_stack_size+0xd4>)
 452:	4a20      	ldr	r2, [pc, #128]	; (4d4 <_stack_size+0xd4>)
 454:	6b12      	ldr	r2, [r2, #48]	; 0x30
 456:	210f      	movs	r1, #15
 458:	438a      	bics	r2, r1
 45a:	631a      	str	r2, [r3, #48]	; 0x30
 45c:	4b1d      	ldr	r3, [pc, #116]	; (4d4 <_stack_size+0xd4>)
 45e:	4a1d      	ldr	r2, [pc, #116]	; (4d4 <_stack_size+0xd4>)
 460:	6b12      	ldr	r2, [r2, #48]	; 0x30
 462:	210c      	movs	r1, #12
 464:	430a      	orrs	r2, r1
 466:	631a      	str	r2, [r3, #48]	; 0x30
 468:	4b1a      	ldr	r3, [pc, #104]	; (4d4 <_stack_size+0xd4>)
 46a:	4a1a      	ldr	r2, [pc, #104]	; (4d4 <_stack_size+0xd4>)
 46c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 46e:	2101      	movs	r1, #1
 470:	430a      	orrs	r2, r1
 472:	631a      	str	r2, [r3, #48]	; 0x30
 474:	4b17      	ldr	r3, [pc, #92]	; (4d4 <_stack_size+0xd4>)
 476:	4a17      	ldr	r2, [pc, #92]	; (4d4 <_stack_size+0xd4>)
 478:	6b12      	ldr	r2, [r2, #48]	; 0x30
 47a:	4919      	ldr	r1, [pc, #100]	; (4e0 <_stack_size+0xe0>)
 47c:	400a      	ands	r2, r1
 47e:	631a      	str	r2, [r3, #48]	; 0x30
 480:	4b14      	ldr	r3, [pc, #80]	; (4d4 <_stack_size+0xd4>)
 482:	4a14      	ldr	r2, [pc, #80]	; (4d4 <_stack_size+0xd4>)
 484:	6b12      	ldr	r2, [r2, #48]	; 0x30
 486:	21c0      	movs	r1, #192	; 0xc0
 488:	0109      	lsls	r1, r1, #4
 48a:	430a      	orrs	r2, r1
 48c:	631a      	str	r2, [r3, #48]	; 0x30
 48e:	4b11      	ldr	r3, [pc, #68]	; (4d4 <_stack_size+0xd4>)
 490:	4a10      	ldr	r2, [pc, #64]	; (4d4 <_stack_size+0xd4>)
 492:	6b12      	ldr	r2, [r2, #48]	; 0x30
 494:	2180      	movs	r1, #128	; 0x80
 496:	0049      	lsls	r1, r1, #1
 498:	430a      	orrs	r2, r1
 49a:	631a      	str	r2, [r3, #48]	; 0x30
 49c:	4b0d      	ldr	r3, [pc, #52]	; (4d4 <_stack_size+0xd4>)
 49e:	4a0d      	ldr	r2, [pc, #52]	; (4d4 <_stack_size+0xd4>)
 4a0:	6c12      	ldr	r2, [r2, #64]	; 0x40
 4a2:	21c8      	movs	r1, #200	; 0xc8
 4a4:	0209      	lsls	r1, r1, #8
 4a6:	430a      	orrs	r2, r1
 4a8:	641a      	str	r2, [r3, #64]	; 0x40
 4aa:	4b0a      	ldr	r3, [pc, #40]	; (4d4 <_stack_size+0xd4>)
 4ac:	4a09      	ldr	r2, [pc, #36]	; (4d4 <_stack_size+0xd4>)
 4ae:	6d92      	ldr	r2, [r2, #88]	; 0x58
 4b0:	21f0      	movs	r1, #240	; 0xf0
 4b2:	0149      	lsls	r1, r1, #5
 4b4:	430a      	orrs	r2, r1
 4b6:	659a      	str	r2, [r3, #88]	; 0x58
 4b8:	4b06      	ldr	r3, [pc, #24]	; (4d4 <_stack_size+0xd4>)
 4ba:	2201      	movs	r2, #1
 4bc:	60da      	str	r2, [r3, #12]
 4be:	200d      	movs	r0, #13
 4c0:	f7ff fdfe 	bl	c0 <NVIC_EnableIRQ>
 4c4:	46c0      	nop			; (mov r8, r8)
 4c6:	46bd      	mov	sp, r7
 4c8:	bd80      	pop	{r7, pc}
 4ca:	46c0      	nop			; (mov r8, r8)
 4cc:	40020000 	.word	0x40020000
 4d0:	ff00ffff 	.word	0xff00ffff
 4d4:	40098000 	.word	0x40098000
 4d8:	000003e7 	.word	0x000003e7
 4dc:	fffff1ff 	.word	0xfffff1ff
 4e0:	fffff0ff 	.word	0xfffff0ff

000004e4 <UartConfig>:
 4e4:	b580      	push	{r7, lr}
 4e6:	af00      	add	r7, sp, #0
 4e8:	4b13      	ldr	r3, [pc, #76]	; (538 <UartConfig+0x54>)
 4ea:	4a13      	ldr	r2, [pc, #76]	; (538 <UartConfig+0x54>)
 4ec:	69d2      	ldr	r2, [r2, #28]
 4ee:	2140      	movs	r1, #64	; 0x40
 4f0:	430a      	orrs	r2, r1
 4f2:	61da      	str	r2, [r3, #28]
 4f4:	4b10      	ldr	r3, [pc, #64]	; (538 <UartConfig+0x54>)
 4f6:	4a10      	ldr	r2, [pc, #64]	; (538 <UartConfig+0x54>)
 4f8:	6a92      	ldr	r2, [r2, #40]	; 0x28
 4fa:	2180      	movs	r1, #128	; 0x80
 4fc:	0449      	lsls	r1, r1, #17
 4fe:	430a      	orrs	r2, r1
 500:	629a      	str	r2, [r3, #40]	; 0x28
 502:	4b0e      	ldr	r3, [pc, #56]	; (53c <UartConfig+0x58>)
 504:	2241      	movs	r2, #65	; 0x41
 506:	625a      	str	r2, [r3, #36]	; 0x24
 508:	4b0c      	ldr	r3, [pc, #48]	; (53c <UartConfig+0x58>)
 50a:	2207      	movs	r2, #7
 50c:	629a      	str	r2, [r3, #40]	; 0x28
 50e:	4b0b      	ldr	r3, [pc, #44]	; (53c <UartConfig+0x58>)
 510:	4a0a      	ldr	r2, [pc, #40]	; (53c <UartConfig+0x58>)
 512:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 514:	2110      	movs	r1, #16
 516:	430a      	orrs	r2, r1
 518:	62da      	str	r2, [r3, #44]	; 0x2c
 51a:	4b08      	ldr	r3, [pc, #32]	; (53c <UartConfig+0x58>)
 51c:	4a07      	ldr	r2, [pc, #28]	; (53c <UartConfig+0x58>)
 51e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 520:	2160      	movs	r1, #96	; 0x60
 522:	430a      	orrs	r2, r1
 524:	62da      	str	r2, [r3, #44]	; 0x2c
 526:	4b05      	ldr	r3, [pc, #20]	; (53c <UartConfig+0x58>)
 528:	4a04      	ldr	r2, [pc, #16]	; (53c <UartConfig+0x58>)
 52a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 52c:	4904      	ldr	r1, [pc, #16]	; (540 <UartConfig+0x5c>)
 52e:	430a      	orrs	r2, r1
 530:	631a      	str	r2, [r3, #48]	; 0x30
 532:	46c0      	nop			; (mov r8, r8)
 534:	46bd      	mov	sp, r7
 536:	bd80      	pop	{r7, pc}
 538:	40020000 	.word	0x40020000
 53c:	40030000 	.word	0x40030000
 540:	00000301 	.word	0x00000301

00000544 <SystemInit>:
 544:	b580      	push	{r7, lr}
 546:	af00      	add	r7, sp, #0
 548:	f7ff ff18 	bl	37c <ClkConfig>
 54c:	f7ff fe7a 	bl	244 <PortConfig>
 550:	f7ff ffc8 	bl	4e4 <UartConfig>
 554:	4b03      	ldr	r3, [pc, #12]	; (564 <SystemInit+0x20>)
 556:	0018      	movs	r0, r3
 558:	f7ff fdfe 	bl	158 <SysTick_Config>
 55c:	46c0      	nop			; (mov r8, r8)
 55e:	46bd      	mov	sp, r7
 560:	bd80      	pop	{r7, pc}
 562:	46c0      	nop			; (mov r8, r8)
 564:	0001d4c0 	.word	0x0001d4c0

00000568 <SysTick_Handler>:
 568:	b580      	push	{r7, lr}
 56a:	af00      	add	r7, sp, #0
 56c:	4b03      	ldr	r3, [pc, #12]	; (57c <SysTick_Handler+0x14>)
 56e:	681b      	ldr	r3, [r3, #0]
 570:	1c5a      	adds	r2, r3, #1
 572:	4b02      	ldr	r3, [pc, #8]	; (57c <SysTick_Handler+0x14>)
 574:	601a      	str	r2, [r3, #0]
 576:	46c0      	nop			; (mov r8, r8)
 578:	46bd      	mov	sp, r7
 57a:	bd80      	pop	{r7, pc}
 57c:	2000000c 	.word	0x2000000c

00000580 <TIMER4_Handler>:
 580:	b580      	push	{r7, lr}
 582:	af00      	add	r7, sp, #0
 584:	4b05      	ldr	r3, [pc, #20]	; (59c <TIMER4_Handler+0x1c>)
 586:	2200      	movs	r2, #0
 588:	655a      	str	r2, [r3, #84]	; 0x54
 58a:	4b05      	ldr	r3, [pc, #20]	; (5a0 <TIMER4_Handler+0x20>)
 58c:	4a04      	ldr	r2, [pc, #16]	; (5a0 <TIMER4_Handler+0x20>)
 58e:	6812      	ldr	r2, [r2, #0]
 590:	4904      	ldr	r1, [pc, #16]	; (5a4 <TIMER4_Handler+0x24>)
 592:	404a      	eors	r2, r1
 594:	601a      	str	r2, [r3, #0]
 596:	46c0      	nop			; (mov r8, r8)
 598:	46bd      	mov	sp, r7
 59a:	bd80      	pop	{r7, pc}
 59c:	40098000 	.word	0x40098000
 5a0:	400c0000 	.word	0x400c0000
 5a4:	0000ffff 	.word	0x0000ffff

000005a8 <handler_reset>:
 5a8:	b580      	push	{r7, lr}
 5aa:	b082      	sub	sp, #8
 5ac:	af00      	add	r7, sp, #0
 5ae:	4b11      	ldr	r3, [pc, #68]	; (5f4 <handler_reset+0x4c>)
 5b0:	607b      	str	r3, [r7, #4]
 5b2:	4b11      	ldr	r3, [pc, #68]	; (5f8 <handler_reset+0x50>)
 5b4:	603b      	str	r3, [r7, #0]
 5b6:	e007      	b.n	5c8 <handler_reset+0x20>
 5b8:	683b      	ldr	r3, [r7, #0]
 5ba:	1d1a      	adds	r2, r3, #4
 5bc:	603a      	str	r2, [r7, #0]
 5be:	687a      	ldr	r2, [r7, #4]
 5c0:	1d11      	adds	r1, r2, #4
 5c2:	6079      	str	r1, [r7, #4]
 5c4:	6812      	ldr	r2, [r2, #0]
 5c6:	601a      	str	r2, [r3, #0]
 5c8:	683a      	ldr	r2, [r7, #0]
 5ca:	4b0c      	ldr	r3, [pc, #48]	; (5fc <handler_reset+0x54>)
 5cc:	429a      	cmp	r2, r3
 5ce:	d3f3      	bcc.n	5b8 <handler_reset+0x10>
 5d0:	4b0b      	ldr	r3, [pc, #44]	; (600 <handler_reset+0x58>)
 5d2:	603b      	str	r3, [r7, #0]
 5d4:	e004      	b.n	5e0 <handler_reset+0x38>
 5d6:	683b      	ldr	r3, [r7, #0]
 5d8:	1d1a      	adds	r2, r3, #4
 5da:	603a      	str	r2, [r7, #0]
 5dc:	2200      	movs	r2, #0
 5de:	601a      	str	r2, [r3, #0]
 5e0:	683a      	ldr	r2, [r7, #0]
 5e2:	4b08      	ldr	r3, [pc, #32]	; (604 <handler_reset+0x5c>)
 5e4:	429a      	cmp	r2, r3
 5e6:	d3f6      	bcc.n	5d6 <handler_reset+0x2e>
 5e8:	f7ff fdf2 	bl	1d0 <main>
 5ec:	46c0      	nop			; (mov r8, r8)
 5ee:	46bd      	mov	sp, r7
 5f0:	b002      	add	sp, #8
 5f2:	bd80      	pop	{r7, pc}
 5f4:	00000620 	.word	0x00000620
 5f8:	20000000 	.word	0x20000000
 5fc:	20000004 	.word	0x20000004
 600:	20000004 	.word	0x20000004
 604:	20000010 	.word	0x20000010

00000608 <default_handler>:
 608:	b580      	push	{r7, lr}
 60a:	af00      	add	r7, sp, #0
 60c:	e7fe      	b.n	60c <default_handler+0x4>
 60e:	46c0      	nop			; (mov r8, r8)
 610:	6c6c6568 	.word	0x6c6c6568
 614:	6f77206f 	.word	0x6f77206f
 618:	0d646c72 	.word	0x0d646c72
 61c:	0000000a 	.word	0x0000000a
