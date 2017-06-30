
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 01 05 00 00 61 05 00 00 61 05 00 00     ... ....a...a...
	...
  2c:	61 05 00 00 00 00 00 00 00 00 00 00 61 05 00 00     a...........a...
  3c:	c1 04 00 00 61 05 00 00 61 05 00 00 61 05 00 00     ....a...a...a...
  4c:	61 05 00 00 61 05 00 00 61 05 00 00 21 06 00 00     a...a...a...!...
  5c:	61 05 00 00 61 05 00 00 61 05 00 00 61 05 00 00     a...a...a...a...
  6c:	61 05 00 00 61 05 00 00 d9 04 00 00 61 05 00 00     a...a.......a...
  7c:	61 05 00 00 61 05 00 00 61 05 00 00 61 05 00 00     a...a...a...a...
  8c:	61 05 00 00 61 05 00 00 61 05 00 00 61 05 00 00     a...a...a...a...
  9c:	61 05 00 00 61 05 00 00 00 00 00 00 00 00 00 00     a...a...........
  ac:	61 05 00 00 61 05 00 00 61 05 00 00 61 05 00 00     a...a...a...a...
  bc:	61 05 00 00                                         a...

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
 1d8:	4a06      	ldr	r2, [pc, #24]	; (1f4 <main+0x24>)
 1da:	ca13      	ldmia	r2!, {r0, r1, r4}
 1dc:	c313      	stmia	r3!, {r0, r1, r4}
 1de:	8812      	ldrh	r2, [r2, #0]
 1e0:	801a      	strh	r2, [r3, #0]
 1e2:	f000 f95b 	bl	49c <SystemInit>
 1e6:	4b04      	ldr	r3, [pc, #16]	; (1f8 <main+0x28>)
 1e8:	2200      	movs	r2, #0
 1ea:	601a      	str	r2, [r3, #0]
 1ec:	2300      	movs	r3, #0
 1ee:	617b      	str	r3, [r7, #20]
 1f0:	e7fe      	b.n	1f0 <main+0x20>
 1f2:	46c0      	nop			; (mov r8, r8)
 1f4:	00000650 	.word	0x00000650
 1f8:	20000004 	.word	0x20000004

000001fc <PortConfig>:
 1fc:	b580      	push	{r7, lr}
 1fe:	af00      	add	r7, sp, #0
 200:	4b44      	ldr	r3, [pc, #272]	; (314 <PortConfig+0x118>)
 202:	4a44      	ldr	r2, [pc, #272]	; (314 <PortConfig+0x118>)
 204:	69d2      	ldr	r2, [r2, #28]
 206:	2180      	movs	r1, #128	; 0x80
 208:	0449      	lsls	r1, r1, #17
 20a:	430a      	orrs	r2, r1
 20c:	61da      	str	r2, [r3, #28]
 20e:	4b42      	ldr	r3, [pc, #264]	; (318 <PortConfig+0x11c>)
 210:	2200      	movs	r2, #0
 212:	609a      	str	r2, [r3, #8]
 214:	4b40      	ldr	r3, [pc, #256]	; (318 <PortConfig+0x11c>)
 216:	2200      	movs	r2, #0
 218:	601a      	str	r2, [r3, #0]
 21a:	4b3f      	ldr	r3, [pc, #252]	; (318 <PortConfig+0x11c>)
 21c:	22ff      	movs	r2, #255	; 0xff
 21e:	01d2      	lsls	r2, r2, #7
 220:	605a      	str	r2, [r3, #4]
 222:	4b3d      	ldr	r3, [pc, #244]	; (318 <PortConfig+0x11c>)
 224:	22ff      	movs	r2, #255	; 0xff
 226:	01d2      	lsls	r2, r2, #7
 228:	60da      	str	r2, [r3, #12]
 22a:	4b3b      	ldr	r3, [pc, #236]	; (318 <PortConfig+0x11c>)
 22c:	4a3b      	ldr	r2, [pc, #236]	; (31c <PortConfig+0x120>)
 22e:	619a      	str	r2, [r3, #24]
 230:	4b38      	ldr	r3, [pc, #224]	; (314 <PortConfig+0x118>)
 232:	4a38      	ldr	r2, [pc, #224]	; (314 <PortConfig+0x118>)
 234:	69d2      	ldr	r2, [r2, #28]
 236:	2180      	movs	r1, #128	; 0x80
 238:	0389      	lsls	r1, r1, #14
 23a:	430a      	orrs	r2, r1
 23c:	61da      	str	r2, [r3, #28]
 23e:	4b38      	ldr	r3, [pc, #224]	; (320 <PortConfig+0x124>)
 240:	4a37      	ldr	r2, [pc, #220]	; (320 <PortConfig+0x124>)
 242:	6892      	ldr	r2, [r2, #8]
 244:	4937      	ldr	r1, [pc, #220]	; (324 <PortConfig+0x128>)
 246:	400a      	ands	r2, r1
 248:	609a      	str	r2, [r3, #8]
 24a:	4b35      	ldr	r3, [pc, #212]	; (320 <PortConfig+0x124>)
 24c:	4a34      	ldr	r2, [pc, #208]	; (320 <PortConfig+0x124>)
 24e:	6892      	ldr	r2, [r2, #8]
 250:	4935      	ldr	r1, [pc, #212]	; (328 <PortConfig+0x12c>)
 252:	400a      	ands	r2, r1
 254:	609a      	str	r2, [r3, #8]
 256:	4b32      	ldr	r3, [pc, #200]	; (320 <PortConfig+0x124>)
 258:	4a31      	ldr	r2, [pc, #196]	; (320 <PortConfig+0x124>)
 25a:	6892      	ldr	r2, [r2, #8]
 25c:	2180      	movs	r1, #128	; 0x80
 25e:	0189      	lsls	r1, r1, #6
 260:	430a      	orrs	r2, r1
 262:	609a      	str	r2, [r3, #8]
 264:	4b2e      	ldr	r3, [pc, #184]	; (320 <PortConfig+0x124>)
 266:	4a2e      	ldr	r2, [pc, #184]	; (320 <PortConfig+0x124>)
 268:	6892      	ldr	r2, [r2, #8]
 26a:	2180      	movs	r1, #128	; 0x80
 26c:	0209      	lsls	r1, r1, #8
 26e:	430a      	orrs	r2, r1
 270:	609a      	str	r2, [r3, #8]
 272:	4b2b      	ldr	r3, [pc, #172]	; (320 <PortConfig+0x124>)
 274:	4a2a      	ldr	r2, [pc, #168]	; (320 <PortConfig+0x124>)
 276:	6852      	ldr	r2, [r2, #4]
 278:	2140      	movs	r1, #64	; 0x40
 27a:	430a      	orrs	r2, r1
 27c:	605a      	str	r2, [r3, #4]
 27e:	4b28      	ldr	r3, [pc, #160]	; (320 <PortConfig+0x124>)
 280:	4a27      	ldr	r2, [pc, #156]	; (320 <PortConfig+0x124>)
 282:	6852      	ldr	r2, [r2, #4]
 284:	2180      	movs	r1, #128	; 0x80
 286:	430a      	orrs	r2, r1
 288:	605a      	str	r2, [r3, #4]
 28a:	4b25      	ldr	r3, [pc, #148]	; (320 <PortConfig+0x124>)
 28c:	4a24      	ldr	r2, [pc, #144]	; (320 <PortConfig+0x124>)
 28e:	68d2      	ldr	r2, [r2, #12]
 290:	2140      	movs	r1, #64	; 0x40
 292:	430a      	orrs	r2, r1
 294:	60da      	str	r2, [r3, #12]
 296:	4b22      	ldr	r3, [pc, #136]	; (320 <PortConfig+0x124>)
 298:	4a21      	ldr	r2, [pc, #132]	; (320 <PortConfig+0x124>)
 29a:	68d2      	ldr	r2, [r2, #12]
 29c:	2180      	movs	r1, #128	; 0x80
 29e:	430a      	orrs	r2, r1
 2a0:	60da      	str	r2, [r3, #12]
 2a2:	4b1f      	ldr	r3, [pc, #124]	; (320 <PortConfig+0x124>)
 2a4:	4a1e      	ldr	r2, [pc, #120]	; (320 <PortConfig+0x124>)
 2a6:	6992      	ldr	r2, [r2, #24]
 2a8:	21c0      	movs	r1, #192	; 0xc0
 2aa:	0189      	lsls	r1, r1, #6
 2ac:	430a      	orrs	r2, r1
 2ae:	619a      	str	r2, [r3, #24]
 2b0:	4b1b      	ldr	r3, [pc, #108]	; (320 <PortConfig+0x124>)
 2b2:	4a1b      	ldr	r2, [pc, #108]	; (320 <PortConfig+0x124>)
 2b4:	6992      	ldr	r2, [r2, #24]
 2b6:	21c0      	movs	r1, #192	; 0xc0
 2b8:	0209      	lsls	r1, r1, #8
 2ba:	430a      	orrs	r2, r1
 2bc:	619a      	str	r2, [r3, #24]
 2be:	4b15      	ldr	r3, [pc, #84]	; (314 <PortConfig+0x118>)
 2c0:	4a14      	ldr	r2, [pc, #80]	; (314 <PortConfig+0x118>)
 2c2:	69d2      	ldr	r2, [r2, #28]
 2c4:	2180      	movs	r1, #128	; 0x80
 2c6:	0409      	lsls	r1, r1, #16
 2c8:	430a      	orrs	r2, r1
 2ca:	61da      	str	r2, [r3, #28]
 2cc:	4b17      	ldr	r3, [pc, #92]	; (32c <PortConfig+0x130>)
 2ce:	4a17      	ldr	r2, [pc, #92]	; (32c <PortConfig+0x130>)
 2d0:	6892      	ldr	r2, [r2, #8]
 2d2:	4917      	ldr	r1, [pc, #92]	; (330 <PortConfig+0x134>)
 2d4:	400a      	ands	r2, r1
 2d6:	609a      	str	r2, [r3, #8]
 2d8:	4b14      	ldr	r3, [pc, #80]	; (32c <PortConfig+0x130>)
 2da:	4a14      	ldr	r2, [pc, #80]	; (32c <PortConfig+0x130>)
 2dc:	6892      	ldr	r2, [r2, #8]
 2de:	21a0      	movs	r1, #160	; 0xa0
 2e0:	0049      	lsls	r1, r1, #1
 2e2:	430a      	orrs	r2, r1
 2e4:	609a      	str	r2, [r3, #8]
 2e6:	4b11      	ldr	r3, [pc, #68]	; (32c <PortConfig+0x130>)
 2e8:	4a10      	ldr	r2, [pc, #64]	; (32c <PortConfig+0x130>)
 2ea:	68d2      	ldr	r2, [r2, #12]
 2ec:	2118      	movs	r1, #24
 2ee:	430a      	orrs	r2, r1
 2f0:	60da      	str	r2, [r3, #12]
 2f2:	4b0e      	ldr	r3, [pc, #56]	; (32c <PortConfig+0x130>)
 2f4:	4a0d      	ldr	r2, [pc, #52]	; (32c <PortConfig+0x130>)
 2f6:	6992      	ldr	r2, [r2, #24]
 2f8:	21f0      	movs	r1, #240	; 0xf0
 2fa:	0089      	lsls	r1, r1, #2
 2fc:	430a      	orrs	r2, r1
 2fe:	619a      	str	r2, [r3, #24]
 300:	4b0a      	ldr	r3, [pc, #40]	; (32c <PortConfig+0x130>)
 302:	4a0a      	ldr	r2, [pc, #40]	; (32c <PortConfig+0x130>)
 304:	6812      	ldr	r2, [r2, #0]
 306:	2118      	movs	r1, #24
 308:	438a      	bics	r2, r1
 30a:	601a      	str	r2, [r3, #0]
 30c:	46c0      	nop			; (mov r8, r8)
 30e:	46bd      	mov	sp, r7
 310:	bd80      	pop	{r7, pc}
 312:	46c0      	nop			; (mov r8, r8)
 314:	40020000 	.word	0x40020000
 318:	400c0000 	.word	0x400c0000
 31c:	3fffc000 	.word	0x3fffc000
 320:	400a8000 	.word	0x400a8000
 324:	ffffcfff 	.word	0xffffcfff
 328:	ffff3fff 	.word	0xffff3fff
 32c:	400b8000 	.word	0x400b8000
 330:	fffffc3f 	.word	0xfffffc3f

00000334 <ClkConfig>:
 334:	b580      	push	{r7, lr}
 336:	af00      	add	r7, sp, #0
 338:	4b18      	ldr	r3, [pc, #96]	; (39c <ClkConfig+0x68>)
 33a:	4a18      	ldr	r2, [pc, #96]	; (39c <ClkConfig+0x68>)
 33c:	6892      	ldr	r2, [r2, #8]
 33e:	2101      	movs	r1, #1
 340:	430a      	orrs	r2, r1
 342:	609a      	str	r2, [r3, #8]
 344:	46c0      	nop			; (mov r8, r8)
 346:	4b15      	ldr	r3, [pc, #84]	; (39c <ClkConfig+0x68>)
 348:	681b      	ldr	r3, [r3, #0]
 34a:	2204      	movs	r2, #4
 34c:	4013      	ands	r3, r2
 34e:	d0fa      	beq.n	346 <ClkConfig+0x12>
 350:	4b12      	ldr	r3, [pc, #72]	; (39c <ClkConfig+0x68>)
 352:	4a12      	ldr	r2, [pc, #72]	; (39c <ClkConfig+0x68>)
 354:	68d2      	ldr	r2, [r2, #12]
 356:	2102      	movs	r1, #2
 358:	430a      	orrs	r2, r1
 35a:	60da      	str	r2, [r3, #12]
 35c:	4b0f      	ldr	r3, [pc, #60]	; (39c <ClkConfig+0x68>)
 35e:	4a10      	ldr	r2, [pc, #64]	; (3a0 <ClkConfig+0x6c>)
 360:	605a      	str	r2, [r3, #4]
 362:	46c0      	nop			; (mov r8, r8)
 364:	4b0d      	ldr	r3, [pc, #52]	; (39c <ClkConfig+0x68>)
 366:	681b      	ldr	r3, [r3, #0]
 368:	2202      	movs	r2, #2
 36a:	4013      	ands	r3, r2
 36c:	d0fa      	beq.n	364 <ClkConfig+0x30>
 36e:	4b0d      	ldr	r3, [pc, #52]	; (3a4 <ClkConfig+0x70>)
 370:	4a0c      	ldr	r2, [pc, #48]	; (3a4 <ClkConfig+0x70>)
 372:	6812      	ldr	r2, [r2, #0]
 374:	2120      	movs	r1, #32
 376:	430a      	orrs	r2, r1
 378:	601a      	str	r2, [r3, #0]
 37a:	4b08      	ldr	r3, [pc, #32]	; (39c <ClkConfig+0x68>)
 37c:	4a07      	ldr	r2, [pc, #28]	; (39c <ClkConfig+0x68>)
 37e:	68d2      	ldr	r2, [r2, #12]
 380:	2180      	movs	r1, #128	; 0x80
 382:	0049      	lsls	r1, r1, #1
 384:	430a      	orrs	r2, r1
 386:	60da      	str	r2, [r3, #12]
 388:	4b04      	ldr	r3, [pc, #16]	; (39c <ClkConfig+0x68>)
 38a:	4a04      	ldr	r2, [pc, #16]	; (39c <ClkConfig+0x68>)
 38c:	68d2      	ldr	r2, [r2, #12]
 38e:	2104      	movs	r1, #4
 390:	430a      	orrs	r2, r1
 392:	60da      	str	r2, [r3, #12]
 394:	46c0      	nop			; (mov r8, r8)
 396:	46bd      	mov	sp, r7
 398:	bd80      	pop	{r7, pc}
 39a:	46c0      	nop			; (mov r8, r8)
 39c:	40020000 	.word	0x40020000
 3a0:	00000e04 	.word	0x00000e04
 3a4:	40018000 	.word	0x40018000

000003a8 <TimerConfig>:
 3a8:	b580      	push	{r7, lr}
 3aa:	af00      	add	r7, sp, #0
 3ac:	4b35      	ldr	r3, [pc, #212]	; (484 <_stack_size+0x84>)
 3ae:	4a35      	ldr	r2, [pc, #212]	; (484 <_stack_size+0x84>)
 3b0:	69d2      	ldr	r2, [r2, #28]
 3b2:	2180      	movs	r1, #128	; 0x80
 3b4:	0309      	lsls	r1, r1, #12
 3b6:	430a      	orrs	r2, r1
 3b8:	61da      	str	r2, [r3, #28]
 3ba:	4b32      	ldr	r3, [pc, #200]	; (484 <_stack_size+0x84>)
 3bc:	4a31      	ldr	r2, [pc, #196]	; (484 <_stack_size+0x84>)
 3be:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3c0:	2180      	movs	r1, #128	; 0x80
 3c2:	04c9      	lsls	r1, r1, #19
 3c4:	430a      	orrs	r2, r1
 3c6:	629a      	str	r2, [r3, #40]	; 0x28
 3c8:	4b2e      	ldr	r3, [pc, #184]	; (484 <_stack_size+0x84>)
 3ca:	4a2e      	ldr	r2, [pc, #184]	; (484 <_stack_size+0x84>)
 3cc:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3ce:	492e      	ldr	r1, [pc, #184]	; (488 <_stack_size+0x88>)
 3d0:	400a      	ands	r2, r1
 3d2:	629a      	str	r2, [r3, #40]	; 0x28
 3d4:	4b2d      	ldr	r3, [pc, #180]	; (48c <_stack_size+0x8c>)
 3d6:	2200      	movs	r2, #0
 3d8:	601a      	str	r2, [r3, #0]
 3da:	4b2c      	ldr	r3, [pc, #176]	; (48c <_stack_size+0x8c>)
 3dc:	220b      	movs	r2, #11
 3de:	605a      	str	r2, [r3, #4]
 3e0:	4b2a      	ldr	r3, [pc, #168]	; (48c <_stack_size+0x8c>)
 3e2:	4a2b      	ldr	r2, [pc, #172]	; (490 <_stack_size+0x90>)
 3e4:	609a      	str	r2, [r3, #8]
 3e6:	4b29      	ldr	r3, [pc, #164]	; (48c <_stack_size+0x8c>)
 3e8:	22fa      	movs	r2, #250	; 0xfa
 3ea:	0052      	lsls	r2, r2, #1
 3ec:	611a      	str	r2, [r3, #16]
 3ee:	4b27      	ldr	r3, [pc, #156]	; (48c <_stack_size+0x8c>)
 3f0:	4a26      	ldr	r2, [pc, #152]	; (48c <_stack_size+0x8c>)
 3f2:	6a12      	ldr	r2, [r2, #32]
 3f4:	4927      	ldr	r1, [pc, #156]	; (494 <_stack_size+0x94>)
 3f6:	400a      	ands	r2, r1
 3f8:	621a      	str	r2, [r3, #32]
 3fa:	4b24      	ldr	r3, [pc, #144]	; (48c <_stack_size+0x8c>)
 3fc:	4a23      	ldr	r2, [pc, #140]	; (48c <_stack_size+0x8c>)
 3fe:	6a12      	ldr	r2, [r2, #32]
 400:	21e0      	movs	r1, #224	; 0xe0
 402:	0109      	lsls	r1, r1, #4
 404:	430a      	orrs	r2, r1
 406:	621a      	str	r2, [r3, #32]
 408:	4b20      	ldr	r3, [pc, #128]	; (48c <_stack_size+0x8c>)
 40a:	4a20      	ldr	r2, [pc, #128]	; (48c <_stack_size+0x8c>)
 40c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 40e:	210f      	movs	r1, #15
 410:	438a      	bics	r2, r1
 412:	631a      	str	r2, [r3, #48]	; 0x30
 414:	4b1d      	ldr	r3, [pc, #116]	; (48c <_stack_size+0x8c>)
 416:	4a1d      	ldr	r2, [pc, #116]	; (48c <_stack_size+0x8c>)
 418:	6b12      	ldr	r2, [r2, #48]	; 0x30
 41a:	210c      	movs	r1, #12
 41c:	430a      	orrs	r2, r1
 41e:	631a      	str	r2, [r3, #48]	; 0x30
 420:	4b1a      	ldr	r3, [pc, #104]	; (48c <_stack_size+0x8c>)
 422:	4a1a      	ldr	r2, [pc, #104]	; (48c <_stack_size+0x8c>)
 424:	6b12      	ldr	r2, [r2, #48]	; 0x30
 426:	2101      	movs	r1, #1
 428:	430a      	orrs	r2, r1
 42a:	631a      	str	r2, [r3, #48]	; 0x30
 42c:	4b17      	ldr	r3, [pc, #92]	; (48c <_stack_size+0x8c>)
 42e:	4a17      	ldr	r2, [pc, #92]	; (48c <_stack_size+0x8c>)
 430:	6b12      	ldr	r2, [r2, #48]	; 0x30
 432:	4919      	ldr	r1, [pc, #100]	; (498 <_stack_size+0x98>)
 434:	400a      	ands	r2, r1
 436:	631a      	str	r2, [r3, #48]	; 0x30
 438:	4b14      	ldr	r3, [pc, #80]	; (48c <_stack_size+0x8c>)
 43a:	4a14      	ldr	r2, [pc, #80]	; (48c <_stack_size+0x8c>)
 43c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 43e:	21c0      	movs	r1, #192	; 0xc0
 440:	0109      	lsls	r1, r1, #4
 442:	430a      	orrs	r2, r1
 444:	631a      	str	r2, [r3, #48]	; 0x30
 446:	4b11      	ldr	r3, [pc, #68]	; (48c <_stack_size+0x8c>)
 448:	4a10      	ldr	r2, [pc, #64]	; (48c <_stack_size+0x8c>)
 44a:	6b12      	ldr	r2, [r2, #48]	; 0x30
 44c:	2180      	movs	r1, #128	; 0x80
 44e:	0049      	lsls	r1, r1, #1
 450:	430a      	orrs	r2, r1
 452:	631a      	str	r2, [r3, #48]	; 0x30
 454:	4b0d      	ldr	r3, [pc, #52]	; (48c <_stack_size+0x8c>)
 456:	4a0d      	ldr	r2, [pc, #52]	; (48c <_stack_size+0x8c>)
 458:	6c12      	ldr	r2, [r2, #64]	; 0x40
 45a:	21c8      	movs	r1, #200	; 0xc8
 45c:	0209      	lsls	r1, r1, #8
 45e:	430a      	orrs	r2, r1
 460:	641a      	str	r2, [r3, #64]	; 0x40
 462:	4b0a      	ldr	r3, [pc, #40]	; (48c <_stack_size+0x8c>)
 464:	4a09      	ldr	r2, [pc, #36]	; (48c <_stack_size+0x8c>)
 466:	6d92      	ldr	r2, [r2, #88]	; 0x58
 468:	21f0      	movs	r1, #240	; 0xf0
 46a:	0149      	lsls	r1, r1, #5
 46c:	430a      	orrs	r2, r1
 46e:	659a      	str	r2, [r3, #88]	; 0x58
 470:	4b06      	ldr	r3, [pc, #24]	; (48c <_stack_size+0x8c>)
 472:	2201      	movs	r2, #1
 474:	60da      	str	r2, [r3, #12]
 476:	200d      	movs	r0, #13
 478:	f7ff fe22 	bl	c0 <NVIC_EnableIRQ>
 47c:	46c0      	nop			; (mov r8, r8)
 47e:	46bd      	mov	sp, r7
 480:	bd80      	pop	{r7, pc}
 482:	46c0      	nop			; (mov r8, r8)
 484:	40020000 	.word	0x40020000
 488:	ff00ffff 	.word	0xff00ffff
 48c:	40098000 	.word	0x40098000
 490:	000003e7 	.word	0x000003e7
 494:	fffff1ff 	.word	0xfffff1ff
 498:	fffff0ff 	.word	0xfffff0ff

0000049c <SystemInit>:
 49c:	b580      	push	{r7, lr}
 49e:	af00      	add	r7, sp, #0
 4a0:	f7ff ff48 	bl	334 <ClkConfig>
 4a4:	f7ff feaa 	bl	1fc <PortConfig>
 4a8:	f000 f87a 	bl	5a0 <uart_init>
 4ac:	4b03      	ldr	r3, [pc, #12]	; (4bc <SystemInit+0x20>)
 4ae:	0018      	movs	r0, r3
 4b0:	f7ff fe52 	bl	158 <SysTick_Config>
 4b4:	46c0      	nop			; (mov r8, r8)
 4b6:	46bd      	mov	sp, r7
 4b8:	bd80      	pop	{r7, pc}
 4ba:	46c0      	nop			; (mov r8, r8)
 4bc:	0001d4c0 	.word	0x0001d4c0

000004c0 <SysTick_Handler>:
 4c0:	b580      	push	{r7, lr}
 4c2:	af00      	add	r7, sp, #0
 4c4:	4b03      	ldr	r3, [pc, #12]	; (4d4 <SysTick_Handler+0x14>)
 4c6:	681b      	ldr	r3, [r3, #0]
 4c8:	1c5a      	adds	r2, r3, #1
 4ca:	4b02      	ldr	r3, [pc, #8]	; (4d4 <SysTick_Handler+0x14>)
 4cc:	601a      	str	r2, [r3, #0]
 4ce:	46c0      	nop			; (mov r8, r8)
 4d0:	46bd      	mov	sp, r7
 4d2:	bd80      	pop	{r7, pc}
 4d4:	2000000c 	.word	0x2000000c

000004d8 <TIMER4_Handler>:
 4d8:	b580      	push	{r7, lr}
 4da:	af00      	add	r7, sp, #0
 4dc:	4b05      	ldr	r3, [pc, #20]	; (4f4 <TIMER4_Handler+0x1c>)
 4de:	2200      	movs	r2, #0
 4e0:	655a      	str	r2, [r3, #84]	; 0x54
 4e2:	4b05      	ldr	r3, [pc, #20]	; (4f8 <TIMER4_Handler+0x20>)
 4e4:	4a04      	ldr	r2, [pc, #16]	; (4f8 <TIMER4_Handler+0x20>)
 4e6:	6812      	ldr	r2, [r2, #0]
 4e8:	4904      	ldr	r1, [pc, #16]	; (4fc <TIMER4_Handler+0x24>)
 4ea:	404a      	eors	r2, r1
 4ec:	601a      	str	r2, [r3, #0]
 4ee:	46c0      	nop			; (mov r8, r8)
 4f0:	46bd      	mov	sp, r7
 4f2:	bd80      	pop	{r7, pc}
 4f4:	40098000 	.word	0x40098000
 4f8:	400c0000 	.word	0x400c0000
 4fc:	0000ffff 	.word	0x0000ffff

00000500 <handler_reset>:
 500:	b580      	push	{r7, lr}
 502:	b082      	sub	sp, #8
 504:	af00      	add	r7, sp, #0
 506:	4b11      	ldr	r3, [pc, #68]	; (54c <handler_reset+0x4c>)
 508:	607b      	str	r3, [r7, #4]
 50a:	4b11      	ldr	r3, [pc, #68]	; (550 <handler_reset+0x50>)
 50c:	603b      	str	r3, [r7, #0]
 50e:	e007      	b.n	520 <handler_reset+0x20>
 510:	683b      	ldr	r3, [r7, #0]
 512:	1d1a      	adds	r2, r3, #4
 514:	603a      	str	r2, [r7, #0]
 516:	687a      	ldr	r2, [r7, #4]
 518:	1d11      	adds	r1, r2, #4
 51a:	6079      	str	r1, [r7, #4]
 51c:	6812      	ldr	r2, [r2, #0]
 51e:	601a      	str	r2, [r3, #0]
 520:	683a      	ldr	r2, [r7, #0]
 522:	4b0c      	ldr	r3, [pc, #48]	; (554 <handler_reset+0x54>)
 524:	429a      	cmp	r2, r3
 526:	d3f3      	bcc.n	510 <handler_reset+0x10>
 528:	4b0b      	ldr	r3, [pc, #44]	; (558 <handler_reset+0x58>)
 52a:	603b      	str	r3, [r7, #0]
 52c:	e004      	b.n	538 <handler_reset+0x38>
 52e:	683b      	ldr	r3, [r7, #0]
 530:	1d1a      	adds	r2, r3, #4
 532:	603a      	str	r2, [r7, #0]
 534:	2200      	movs	r2, #0
 536:	601a      	str	r2, [r3, #0]
 538:	683a      	ldr	r2, [r7, #0]
 53a:	4b08      	ldr	r3, [pc, #32]	; (55c <handler_reset+0x5c>)
 53c:	429a      	cmp	r2, r3
 53e:	d3f6      	bcc.n	52e <handler_reset+0x2e>
 540:	f7ff fe46 	bl	1d0 <main>
 544:	46c0      	nop			; (mov r8, r8)
 546:	46bd      	mov	sp, r7
 548:	b002      	add	sp, #8
 54a:	bd80      	pop	{r7, pc}
 54c:	00000660 	.word	0x00000660
 550:	20000000 	.word	0x20000000
 554:	20000004 	.word	0x20000004
 558:	20000004 	.word	0x20000004
 55c:	20000010 	.word	0x20000010

00000560 <default_handler>:
 560:	b580      	push	{r7, lr}
 562:	af00      	add	r7, sp, #0
 564:	e7fe      	b.n	564 <default_handler+0x4>
 566:	46c0      	nop			; (mov r8, r8)

00000568 <NVIC_EnableIRQ>:
 568:	b580      	push	{r7, lr}
 56a:	b082      	sub	sp, #8
 56c:	af00      	add	r7, sp, #0
 56e:	0002      	movs	r2, r0
 570:	1dfb      	adds	r3, r7, #7
 572:	701a      	strb	r2, [r3, #0]
 574:	4909      	ldr	r1, [pc, #36]	; (59c <NVIC_EnableIRQ+0x34>)
 576:	1dfb      	adds	r3, r7, #7
 578:	781b      	ldrb	r3, [r3, #0]
 57a:	b25b      	sxtb	r3, r3
 57c:	095b      	lsrs	r3, r3, #5
 57e:	1dfa      	adds	r2, r7, #7
 580:	7812      	ldrb	r2, [r2, #0]
 582:	0010      	movs	r0, r2
 584:	221f      	movs	r2, #31
 586:	4002      	ands	r2, r0
 588:	2001      	movs	r0, #1
 58a:	4090      	lsls	r0, r2
 58c:	0002      	movs	r2, r0
 58e:	009b      	lsls	r3, r3, #2
 590:	505a      	str	r2, [r3, r1]
 592:	46c0      	nop			; (mov r8, r8)
 594:	46bd      	mov	sp, r7
 596:	b002      	add	sp, #8
 598:	bd80      	pop	{r7, pc}
 59a:	46c0      	nop			; (mov r8, r8)
 59c:	e000e100 	.word	0xe000e100

000005a0 <uart_init>:
 5a0:	b580      	push	{r7, lr}
 5a2:	af00      	add	r7, sp, #0
 5a4:	4b1b      	ldr	r3, [pc, #108]	; (614 <uart_init+0x74>)
 5a6:	4a1b      	ldr	r2, [pc, #108]	; (614 <uart_init+0x74>)
 5a8:	69d2      	ldr	r2, [r2, #28]
 5aa:	2140      	movs	r1, #64	; 0x40
 5ac:	430a      	orrs	r2, r1
 5ae:	61da      	str	r2, [r3, #28]
 5b0:	4b18      	ldr	r3, [pc, #96]	; (614 <uart_init+0x74>)
 5b2:	4a18      	ldr	r2, [pc, #96]	; (614 <uart_init+0x74>)
 5b4:	6a92      	ldr	r2, [r2, #40]	; 0x28
 5b6:	2180      	movs	r1, #128	; 0x80
 5b8:	0449      	lsls	r1, r1, #17
 5ba:	430a      	orrs	r2, r1
 5bc:	629a      	str	r2, [r3, #40]	; 0x28
 5be:	4b16      	ldr	r3, [pc, #88]	; (618 <uart_init+0x78>)
 5c0:	2241      	movs	r2, #65	; 0x41
 5c2:	625a      	str	r2, [r3, #36]	; 0x24
 5c4:	4b14      	ldr	r3, [pc, #80]	; (618 <uart_init+0x78>)
 5c6:	2207      	movs	r2, #7
 5c8:	629a      	str	r2, [r3, #40]	; 0x28
 5ca:	4b13      	ldr	r3, [pc, #76]	; (618 <uart_init+0x78>)
 5cc:	4a12      	ldr	r2, [pc, #72]	; (618 <uart_init+0x78>)
 5ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
 5d0:	213f      	movs	r1, #63	; 0x3f
 5d2:	438a      	bics	r2, r1
 5d4:	635a      	str	r2, [r3, #52]	; 0x34
 5d6:	4b10      	ldr	r3, [pc, #64]	; (618 <uart_init+0x78>)
 5d8:	4a0f      	ldr	r2, [pc, #60]	; (618 <uart_init+0x78>)
 5da:	6b52      	ldr	r2, [r2, #52]	; 0x34
 5dc:	2124      	movs	r1, #36	; 0x24
 5de:	430a      	orrs	r2, r1
 5e0:	635a      	str	r2, [r3, #52]	; 0x34
 5e2:	4b0d      	ldr	r3, [pc, #52]	; (618 <uart_init+0x78>)
 5e4:	4a0c      	ldr	r2, [pc, #48]	; (618 <uart_init+0x78>)
 5e6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 5e8:	2160      	movs	r1, #96	; 0x60
 5ea:	430a      	orrs	r2, r1
 5ec:	62da      	str	r2, [r3, #44]	; 0x2c
 5ee:	4b0a      	ldr	r3, [pc, #40]	; (618 <uart_init+0x78>)
 5f0:	4a09      	ldr	r2, [pc, #36]	; (618 <uart_init+0x78>)
 5f2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 5f4:	4909      	ldr	r1, [pc, #36]	; (61c <uart_init+0x7c>)
 5f6:	430a      	orrs	r2, r1
 5f8:	631a      	str	r2, [r3, #48]	; 0x30
 5fa:	4b07      	ldr	r3, [pc, #28]	; (618 <uart_init+0x78>)
 5fc:	4a06      	ldr	r2, [pc, #24]	; (618 <uart_init+0x78>)
 5fe:	6b92      	ldr	r2, [r2, #56]	; 0x38
 600:	2110      	movs	r1, #16
 602:	430a      	orrs	r2, r1
 604:	639a      	str	r2, [r3, #56]	; 0x38
 606:	2006      	movs	r0, #6
 608:	f7ff ffae 	bl	568 <NVIC_EnableIRQ>
 60c:	46c0      	nop			; (mov r8, r8)
 60e:	46bd      	mov	sp, r7
 610:	bd80      	pop	{r7, pc}
 612:	46c0      	nop			; (mov r8, r8)
 614:	40020000 	.word	0x40020000
 618:	40030000 	.word	0x40030000
 61c:	00000301 	.word	0x00000301

00000620 <UART1_Handler>:
 620:	b580      	push	{r7, lr}
 622:	b082      	sub	sp, #8
 624:	af00      	add	r7, sp, #0
 626:	4b07      	ldr	r3, [pc, #28]	; (644 <UART1_Handler+0x24>)
 628:	4a06      	ldr	r2, [pc, #24]	; (644 <UART1_Handler+0x24>)
 62a:	6812      	ldr	r2, [r2, #0]
 62c:	4906      	ldr	r1, [pc, #24]	; (648 <UART1_Handler+0x28>)
 62e:	404a      	eors	r2, r1
 630:	601a      	str	r2, [r3, #0]
 632:	4b06      	ldr	r3, [pc, #24]	; (64c <UART1_Handler+0x2c>)
 634:	681a      	ldr	r2, [r3, #0]
 636:	1dfb      	adds	r3, r7, #7
 638:	701a      	strb	r2, [r3, #0]
 63a:	46c0      	nop			; (mov r8, r8)
 63c:	46bd      	mov	sp, r7
 63e:	b002      	add	sp, #8
 640:	bd80      	pop	{r7, pc}
 642:	46c0      	nop			; (mov r8, r8)
 644:	400c0000 	.word	0x400c0000
 648:	0000ffff 	.word	0x0000ffff
 64c:	40030000 	.word	0x40030000
 650:	6c6c6568 	.word	0x6c6c6568
 654:	6f77206f 	.word	0x6f77206f
 658:	0d646c72 	.word	0x0d646c72
 65c:	0000000a 	.word	0x0000000a
