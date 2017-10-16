
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 a9 06 00 00 09 07 00 00 09 07 00 00     ... ............
	...
  2c:	09 07 00 00 00 00 00 00 00 00 00 00 09 07 00 00     ................
  3c:	0d 06 00 00 09 07 00 00 51 06 00 00 09 07 00 00     ........Q.......
  4c:	09 07 00 00 09 07 00 00 09 07 00 00 21 09 00 00     ............!...
  5c:	09 07 00 00 09 07 00 00 09 07 00 00 09 07 00 00     ................
  6c:	09 07 00 00 09 07 00 00 25 06 00 00 09 07 00 00     ........%.......
  7c:	09 07 00 00 09 07 00 00 09 07 00 00 09 07 00 00     ................
  8c:	09 07 00 00 09 07 00 00 09 07 00 00 09 07 00 00     ................
  9c:	09 07 00 00 09 07 00 00 00 00 00 00 00 00 00 00     ................
  ac:	09 07 00 00 09 07 00 00 09 07 00 00 09 07 00 00     ................
  bc:	09 07 00 00                                         ....

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
 1cc:	2000004c 	.word	0x2000004c

000001d0 <main>:
 1d0:	b590      	push	{r4, r7, lr}
 1d2:	b0a7      	sub	sp, #156	; 0x9c
 1d4:	af00      	add	r7, sp, #0
 1d6:	2384      	movs	r3, #132	; 0x84
 1d8:	18fb      	adds	r3, r7, r3
 1da:	4a0a      	ldr	r2, [pc, #40]	; (204 <main+0x34>)
 1dc:	ca13      	ldmia	r2!, {r0, r1, r4}
 1de:	c313      	stmia	r3!, {r0, r1, r4}
 1e0:	8812      	ldrh	r2, [r2, #0]
 1e2:	801a      	strh	r2, [r3, #0]
 1e4:	f000 f9fc 	bl	5e0 <SystemInit>
 1e8:	4b07      	ldr	r3, [pc, #28]	; (208 <main+0x38>)
 1ea:	2200      	movs	r2, #0
 1ec:	601a      	str	r2, [r3, #0]
 1ee:	2300      	movs	r3, #0
 1f0:	2294      	movs	r2, #148	; 0x94
 1f2:	18ba      	adds	r2, r7, r2
 1f4:	6013      	str	r3, [r2, #0]
 1f6:	4b05      	ldr	r3, [pc, #20]	; (20c <main+0x3c>)
 1f8:	2200      	movs	r2, #0
 1fa:	601a      	str	r2, [r3, #0]
 1fc:	200a      	movs	r0, #10
 1fe:	f7ff ffd1 	bl	1a4 <sleep>
 202:	e7fb      	b.n	1fc <main+0x2c>
 204:	000009a8 	.word	0x000009a8
 208:	20000044 	.word	0x20000044
 20c:	20000048 	.word	0x20000048

00000210 <PortConfig>:
 210:	b580      	push	{r7, lr}
 212:	af00      	add	r7, sp, #0
 214:	4b64      	ldr	r3, [pc, #400]	; (3a8 <PortConfig+0x198>)
 216:	4a64      	ldr	r2, [pc, #400]	; (3a8 <PortConfig+0x198>)
 218:	69d2      	ldr	r2, [r2, #28]
 21a:	2180      	movs	r1, #128	; 0x80
 21c:	0449      	lsls	r1, r1, #17
 21e:	430a      	orrs	r2, r1
 220:	61da      	str	r2, [r3, #28]
 222:	4b62      	ldr	r3, [pc, #392]	; (3ac <PortConfig+0x19c>)
 224:	2200      	movs	r2, #0
 226:	609a      	str	r2, [r3, #8]
 228:	4b60      	ldr	r3, [pc, #384]	; (3ac <PortConfig+0x19c>)
 22a:	2200      	movs	r2, #0
 22c:	601a      	str	r2, [r3, #0]
 22e:	4b5f      	ldr	r3, [pc, #380]	; (3ac <PortConfig+0x19c>)
 230:	22ff      	movs	r2, #255	; 0xff
 232:	01d2      	lsls	r2, r2, #7
 234:	605a      	str	r2, [r3, #4]
 236:	4b5d      	ldr	r3, [pc, #372]	; (3ac <PortConfig+0x19c>)
 238:	22ff      	movs	r2, #255	; 0xff
 23a:	01d2      	lsls	r2, r2, #7
 23c:	60da      	str	r2, [r3, #12]
 23e:	4b5b      	ldr	r3, [pc, #364]	; (3ac <PortConfig+0x19c>)
 240:	4a5b      	ldr	r2, [pc, #364]	; (3b0 <PortConfig+0x1a0>)
 242:	619a      	str	r2, [r3, #24]
 244:	4b58      	ldr	r3, [pc, #352]	; (3a8 <PortConfig+0x198>)
 246:	4a58      	ldr	r2, [pc, #352]	; (3a8 <PortConfig+0x198>)
 248:	69d2      	ldr	r2, [r2, #28]
 24a:	2180      	movs	r1, #128	; 0x80
 24c:	0389      	lsls	r1, r1, #14
 24e:	430a      	orrs	r2, r1
 250:	61da      	str	r2, [r3, #28]
 252:	4b58      	ldr	r3, [pc, #352]	; (3b4 <PortConfig+0x1a4>)
 254:	4a57      	ldr	r2, [pc, #348]	; (3b4 <PortConfig+0x1a4>)
 256:	6892      	ldr	r2, [r2, #8]
 258:	4957      	ldr	r1, [pc, #348]	; (3b8 <PortConfig+0x1a8>)
 25a:	400a      	ands	r2, r1
 25c:	609a      	str	r2, [r3, #8]
 25e:	4b55      	ldr	r3, [pc, #340]	; (3b4 <PortConfig+0x1a4>)
 260:	4a54      	ldr	r2, [pc, #336]	; (3b4 <PortConfig+0x1a4>)
 262:	6892      	ldr	r2, [r2, #8]
 264:	4955      	ldr	r1, [pc, #340]	; (3bc <PortConfig+0x1ac>)
 266:	400a      	ands	r2, r1
 268:	609a      	str	r2, [r3, #8]
 26a:	4b52      	ldr	r3, [pc, #328]	; (3b4 <PortConfig+0x1a4>)
 26c:	4a51      	ldr	r2, [pc, #324]	; (3b4 <PortConfig+0x1a4>)
 26e:	6892      	ldr	r2, [r2, #8]
 270:	2180      	movs	r1, #128	; 0x80
 272:	0189      	lsls	r1, r1, #6
 274:	430a      	orrs	r2, r1
 276:	609a      	str	r2, [r3, #8]
 278:	4b4e      	ldr	r3, [pc, #312]	; (3b4 <PortConfig+0x1a4>)
 27a:	4a4e      	ldr	r2, [pc, #312]	; (3b4 <PortConfig+0x1a4>)
 27c:	6892      	ldr	r2, [r2, #8]
 27e:	2180      	movs	r1, #128	; 0x80
 280:	0209      	lsls	r1, r1, #8
 282:	430a      	orrs	r2, r1
 284:	609a      	str	r2, [r3, #8]
 286:	4b4b      	ldr	r3, [pc, #300]	; (3b4 <PortConfig+0x1a4>)
 288:	4a4a      	ldr	r2, [pc, #296]	; (3b4 <PortConfig+0x1a4>)
 28a:	6852      	ldr	r2, [r2, #4]
 28c:	2140      	movs	r1, #64	; 0x40
 28e:	430a      	orrs	r2, r1
 290:	605a      	str	r2, [r3, #4]
 292:	4b48      	ldr	r3, [pc, #288]	; (3b4 <PortConfig+0x1a4>)
 294:	4a47      	ldr	r2, [pc, #284]	; (3b4 <PortConfig+0x1a4>)
 296:	6852      	ldr	r2, [r2, #4]
 298:	2180      	movs	r1, #128	; 0x80
 29a:	430a      	orrs	r2, r1
 29c:	605a      	str	r2, [r3, #4]
 29e:	4b45      	ldr	r3, [pc, #276]	; (3b4 <PortConfig+0x1a4>)
 2a0:	4a44      	ldr	r2, [pc, #272]	; (3b4 <PortConfig+0x1a4>)
 2a2:	68d2      	ldr	r2, [r2, #12]
 2a4:	2140      	movs	r1, #64	; 0x40
 2a6:	430a      	orrs	r2, r1
 2a8:	60da      	str	r2, [r3, #12]
 2aa:	4b42      	ldr	r3, [pc, #264]	; (3b4 <PortConfig+0x1a4>)
 2ac:	4a41      	ldr	r2, [pc, #260]	; (3b4 <PortConfig+0x1a4>)
 2ae:	68d2      	ldr	r2, [r2, #12]
 2b0:	2180      	movs	r1, #128	; 0x80
 2b2:	430a      	orrs	r2, r1
 2b4:	60da      	str	r2, [r3, #12]
 2b6:	4b3f      	ldr	r3, [pc, #252]	; (3b4 <PortConfig+0x1a4>)
 2b8:	4a3e      	ldr	r2, [pc, #248]	; (3b4 <PortConfig+0x1a4>)
 2ba:	6992      	ldr	r2, [r2, #24]
 2bc:	21c0      	movs	r1, #192	; 0xc0
 2be:	0189      	lsls	r1, r1, #6
 2c0:	430a      	orrs	r2, r1
 2c2:	619a      	str	r2, [r3, #24]
 2c4:	4b3b      	ldr	r3, [pc, #236]	; (3b4 <PortConfig+0x1a4>)
 2c6:	4a3b      	ldr	r2, [pc, #236]	; (3b4 <PortConfig+0x1a4>)
 2c8:	6992      	ldr	r2, [r2, #24]
 2ca:	21c0      	movs	r1, #192	; 0xc0
 2cc:	0209      	lsls	r1, r1, #8
 2ce:	430a      	orrs	r2, r1
 2d0:	619a      	str	r2, [r3, #24]
 2d2:	4b35      	ldr	r3, [pc, #212]	; (3a8 <PortConfig+0x198>)
 2d4:	4a34      	ldr	r2, [pc, #208]	; (3a8 <PortConfig+0x198>)
 2d6:	69d2      	ldr	r2, [r2, #28]
 2d8:	2180      	movs	r1, #128	; 0x80
 2da:	0409      	lsls	r1, r1, #16
 2dc:	430a      	orrs	r2, r1
 2de:	61da      	str	r2, [r3, #28]
 2e0:	4b37      	ldr	r3, [pc, #220]	; (3c0 <PortConfig+0x1b0>)
 2e2:	4a37      	ldr	r2, [pc, #220]	; (3c0 <PortConfig+0x1b0>)
 2e4:	6892      	ldr	r2, [r2, #8]
 2e6:	4937      	ldr	r1, [pc, #220]	; (3c4 <PortConfig+0x1b4>)
 2e8:	400a      	ands	r2, r1
 2ea:	609a      	str	r2, [r3, #8]
 2ec:	4b34      	ldr	r3, [pc, #208]	; (3c0 <PortConfig+0x1b0>)
 2ee:	4a34      	ldr	r2, [pc, #208]	; (3c0 <PortConfig+0x1b0>)
 2f0:	6892      	ldr	r2, [r2, #8]
 2f2:	21a0      	movs	r1, #160	; 0xa0
 2f4:	0049      	lsls	r1, r1, #1
 2f6:	430a      	orrs	r2, r1
 2f8:	609a      	str	r2, [r3, #8]
 2fa:	4b31      	ldr	r3, [pc, #196]	; (3c0 <PortConfig+0x1b0>)
 2fc:	4a30      	ldr	r2, [pc, #192]	; (3c0 <PortConfig+0x1b0>)
 2fe:	68d2      	ldr	r2, [r2, #12]
 300:	2118      	movs	r1, #24
 302:	430a      	orrs	r2, r1
 304:	60da      	str	r2, [r3, #12]
 306:	4b2e      	ldr	r3, [pc, #184]	; (3c0 <PortConfig+0x1b0>)
 308:	4a2d      	ldr	r2, [pc, #180]	; (3c0 <PortConfig+0x1b0>)
 30a:	6992      	ldr	r2, [r2, #24]
 30c:	21f0      	movs	r1, #240	; 0xf0
 30e:	0089      	lsls	r1, r1, #2
 310:	430a      	orrs	r2, r1
 312:	619a      	str	r2, [r3, #24]
 314:	4b2a      	ldr	r3, [pc, #168]	; (3c0 <PortConfig+0x1b0>)
 316:	4a2a      	ldr	r2, [pc, #168]	; (3c0 <PortConfig+0x1b0>)
 318:	6812      	ldr	r2, [r2, #0]
 31a:	2118      	movs	r1, #24
 31c:	438a      	bics	r2, r1
 31e:	601a      	str	r2, [r3, #0]
 320:	4b21      	ldr	r3, [pc, #132]	; (3a8 <PortConfig+0x198>)
 322:	4a21      	ldr	r2, [pc, #132]	; (3a8 <PortConfig+0x198>)
 324:	69d2      	ldr	r2, [r2, #28]
 326:	2180      	movs	r1, #128	; 0x80
 328:	0409      	lsls	r1, r1, #16
 32a:	430a      	orrs	r2, r1
 32c:	61da      	str	r2, [r3, #28]
 32e:	4b1e      	ldr	r3, [pc, #120]	; (3a8 <PortConfig+0x198>)
 330:	4a1d      	ldr	r2, [pc, #116]	; (3a8 <PortConfig+0x198>)
 332:	69d2      	ldr	r2, [r2, #28]
 334:	2180      	movs	r1, #128	; 0x80
 336:	0449      	lsls	r1, r1, #17
 338:	430a      	orrs	r2, r1
 33a:	61da      	str	r2, [r3, #28]
 33c:	4b20      	ldr	r3, [pc, #128]	; (3c0 <PortConfig+0x1b0>)
 33e:	4a20      	ldr	r2, [pc, #128]	; (3c0 <PortConfig+0x1b0>)
 340:	6892      	ldr	r2, [r2, #8]
 342:	0192      	lsls	r2, r2, #6
 344:	0992      	lsrs	r2, r2, #6
 346:	609a      	str	r2, [r3, #8]
 348:	4b1d      	ldr	r3, [pc, #116]	; (3c0 <PortConfig+0x1b0>)
 34a:	4a1d      	ldr	r2, [pc, #116]	; (3c0 <PortConfig+0x1b0>)
 34c:	6892      	ldr	r2, [r2, #8]
 34e:	21a8      	movs	r1, #168	; 0xa8
 350:	05c9      	lsls	r1, r1, #23
 352:	430a      	orrs	r2, r1
 354:	609a      	str	r2, [r3, #8]
 356:	4b1a      	ldr	r3, [pc, #104]	; (3c0 <PortConfig+0x1b0>)
 358:	4a19      	ldr	r2, [pc, #100]	; (3c0 <PortConfig+0x1b0>)
 35a:	68d2      	ldr	r2, [r2, #12]
 35c:	21e0      	movs	r1, #224	; 0xe0
 35e:	0209      	lsls	r1, r1, #8
 360:	430a      	orrs	r2, r1
 362:	60da      	str	r2, [r3, #12]
 364:	4b16      	ldr	r3, [pc, #88]	; (3c0 <PortConfig+0x1b0>)
 366:	4a16      	ldr	r2, [pc, #88]	; (3c0 <PortConfig+0x1b0>)
 368:	6992      	ldr	r2, [r2, #24]
 36a:	21fc      	movs	r1, #252	; 0xfc
 36c:	0609      	lsls	r1, r1, #24
 36e:	430a      	orrs	r2, r1
 370:	619a      	str	r2, [r3, #24]
 372:	4b0e      	ldr	r3, [pc, #56]	; (3ac <PortConfig+0x19c>)
 374:	4a0d      	ldr	r2, [pc, #52]	; (3ac <PortConfig+0x19c>)
 376:	6892      	ldr	r2, [r2, #8]
 378:	0b92      	lsrs	r2, r2, #14
 37a:	0392      	lsls	r2, r2, #14
 37c:	609a      	str	r2, [r3, #8]
 37e:	4b0b      	ldr	r3, [pc, #44]	; (3ac <PortConfig+0x19c>)
 380:	4a0a      	ldr	r2, [pc, #40]	; (3ac <PortConfig+0x19c>)
 382:	6892      	ldr	r2, [r2, #8]
 384:	4910      	ldr	r1, [pc, #64]	; (3c8 <PortConfig+0x1b8>)
 386:	430a      	orrs	r2, r1
 388:	609a      	str	r2, [r3, #8]
 38a:	4b08      	ldr	r3, [pc, #32]	; (3ac <PortConfig+0x19c>)
 38c:	4a07      	ldr	r2, [pc, #28]	; (3ac <PortConfig+0x19c>)
 38e:	68d2      	ldr	r2, [r2, #12]
 390:	217f      	movs	r1, #127	; 0x7f
 392:	430a      	orrs	r2, r1
 394:	60da      	str	r2, [r3, #12]
 396:	4b05      	ldr	r3, [pc, #20]	; (3ac <PortConfig+0x19c>)
 398:	4a04      	ldr	r2, [pc, #16]	; (3ac <PortConfig+0x19c>)
 39a:	6992      	ldr	r2, [r2, #24]
 39c:	490b      	ldr	r1, [pc, #44]	; (3cc <PortConfig+0x1bc>)
 39e:	430a      	orrs	r2, r1
 3a0:	619a      	str	r2, [r3, #24]
 3a2:	46c0      	nop			; (mov r8, r8)
 3a4:	46bd      	mov	sp, r7
 3a6:	bd80      	pop	{r7, pc}
 3a8:	40020000 	.word	0x40020000
 3ac:	400c0000 	.word	0x400c0000
 3b0:	3fffc000 	.word	0x3fffc000
 3b4:	400a8000 	.word	0x400a8000
 3b8:	ffffcfff 	.word	0xffffcfff
 3bc:	ffff3fff 	.word	0xffff3fff
 3c0:	400b8000 	.word	0x400b8000
 3c4:	fffffc3f 	.word	0xfffffc3f
 3c8:	00001555 	.word	0x00001555
 3cc:	00003fff 	.word	0x00003fff

000003d0 <ClkConfig>:
 3d0:	b580      	push	{r7, lr}
 3d2:	af00      	add	r7, sp, #0
 3d4:	4b18      	ldr	r3, [pc, #96]	; (438 <_stack_size+0x38>)
 3d6:	4a18      	ldr	r2, [pc, #96]	; (438 <_stack_size+0x38>)
 3d8:	6892      	ldr	r2, [r2, #8]
 3da:	2101      	movs	r1, #1
 3dc:	430a      	orrs	r2, r1
 3de:	609a      	str	r2, [r3, #8]
 3e0:	46c0      	nop			; (mov r8, r8)
 3e2:	4b15      	ldr	r3, [pc, #84]	; (438 <_stack_size+0x38>)
 3e4:	681b      	ldr	r3, [r3, #0]
 3e6:	2204      	movs	r2, #4
 3e8:	4013      	ands	r3, r2
 3ea:	d0fa      	beq.n	3e2 <ClkConfig+0x12>
 3ec:	4b12      	ldr	r3, [pc, #72]	; (438 <_stack_size+0x38>)
 3ee:	4a12      	ldr	r2, [pc, #72]	; (438 <_stack_size+0x38>)
 3f0:	68d2      	ldr	r2, [r2, #12]
 3f2:	2102      	movs	r1, #2
 3f4:	430a      	orrs	r2, r1
 3f6:	60da      	str	r2, [r3, #12]
 3f8:	4b0f      	ldr	r3, [pc, #60]	; (438 <_stack_size+0x38>)
 3fa:	4a10      	ldr	r2, [pc, #64]	; (43c <_stack_size+0x3c>)
 3fc:	605a      	str	r2, [r3, #4]
 3fe:	46c0      	nop			; (mov r8, r8)
 400:	4b0d      	ldr	r3, [pc, #52]	; (438 <_stack_size+0x38>)
 402:	681b      	ldr	r3, [r3, #0]
 404:	2202      	movs	r2, #2
 406:	4013      	ands	r3, r2
 408:	d0fa      	beq.n	400 <_stack_size>
 40a:	4b0d      	ldr	r3, [pc, #52]	; (440 <_stack_size+0x40>)
 40c:	4a0c      	ldr	r2, [pc, #48]	; (440 <_stack_size+0x40>)
 40e:	6812      	ldr	r2, [r2, #0]
 410:	2120      	movs	r1, #32
 412:	430a      	orrs	r2, r1
 414:	601a      	str	r2, [r3, #0]
 416:	4b08      	ldr	r3, [pc, #32]	; (438 <_stack_size+0x38>)
 418:	4a07      	ldr	r2, [pc, #28]	; (438 <_stack_size+0x38>)
 41a:	68d2      	ldr	r2, [r2, #12]
 41c:	2180      	movs	r1, #128	; 0x80
 41e:	0049      	lsls	r1, r1, #1
 420:	430a      	orrs	r2, r1
 422:	60da      	str	r2, [r3, #12]
 424:	4b04      	ldr	r3, [pc, #16]	; (438 <_stack_size+0x38>)
 426:	4a04      	ldr	r2, [pc, #16]	; (438 <_stack_size+0x38>)
 428:	68d2      	ldr	r2, [r2, #12]
 42a:	2104      	movs	r1, #4
 42c:	430a      	orrs	r2, r1
 42e:	60da      	str	r2, [r3, #12]
 430:	46c0      	nop			; (mov r8, r8)
 432:	46bd      	mov	sp, r7
 434:	bd80      	pop	{r7, pc}
 436:	46c0      	nop			; (mov r8, r8)
 438:	40020000 	.word	0x40020000
 43c:	00000e04 	.word	0x00000e04
 440:	40018000 	.word	0x40018000

00000444 <TimerConfig>:
 444:	b580      	push	{r7, lr}
 446:	af00      	add	r7, sp, #0
 448:	4b34      	ldr	r3, [pc, #208]	; (51c <TimerConfig+0xd8>)
 44a:	4a34      	ldr	r2, [pc, #208]	; (51c <TimerConfig+0xd8>)
 44c:	69d2      	ldr	r2, [r2, #28]
 44e:	2180      	movs	r1, #128	; 0x80
 450:	0309      	lsls	r1, r1, #12
 452:	430a      	orrs	r2, r1
 454:	61da      	str	r2, [r3, #28]
 456:	4b31      	ldr	r3, [pc, #196]	; (51c <TimerConfig+0xd8>)
 458:	4a30      	ldr	r2, [pc, #192]	; (51c <TimerConfig+0xd8>)
 45a:	6a92      	ldr	r2, [r2, #40]	; 0x28
 45c:	2180      	movs	r1, #128	; 0x80
 45e:	04c9      	lsls	r1, r1, #19
 460:	430a      	orrs	r2, r1
 462:	629a      	str	r2, [r3, #40]	; 0x28
 464:	4b2d      	ldr	r3, [pc, #180]	; (51c <TimerConfig+0xd8>)
 466:	4a2d      	ldr	r2, [pc, #180]	; (51c <TimerConfig+0xd8>)
 468:	6a92      	ldr	r2, [r2, #40]	; 0x28
 46a:	492d      	ldr	r1, [pc, #180]	; (520 <TimerConfig+0xdc>)
 46c:	400a      	ands	r2, r1
 46e:	629a      	str	r2, [r3, #40]	; 0x28
 470:	4b2c      	ldr	r3, [pc, #176]	; (524 <TimerConfig+0xe0>)
 472:	2200      	movs	r2, #0
 474:	601a      	str	r2, [r3, #0]
 476:	4b2b      	ldr	r3, [pc, #172]	; (524 <TimerConfig+0xe0>)
 478:	2277      	movs	r2, #119	; 0x77
 47a:	605a      	str	r2, [r3, #4]
 47c:	4b29      	ldr	r3, [pc, #164]	; (524 <TimerConfig+0xe0>)
 47e:	4a2a      	ldr	r2, [pc, #168]	; (528 <TimerConfig+0xe4>)
 480:	609a      	str	r2, [r3, #8]
 482:	4b28      	ldr	r3, [pc, #160]	; (524 <TimerConfig+0xe0>)
 484:	4a29      	ldr	r2, [pc, #164]	; (52c <TimerConfig+0xe8>)
 486:	611a      	str	r2, [r3, #16]
 488:	4b26      	ldr	r3, [pc, #152]	; (524 <TimerConfig+0xe0>)
 48a:	4a26      	ldr	r2, [pc, #152]	; (524 <TimerConfig+0xe0>)
 48c:	6a12      	ldr	r2, [r2, #32]
 48e:	4928      	ldr	r1, [pc, #160]	; (530 <TimerConfig+0xec>)
 490:	400a      	ands	r2, r1
 492:	621a      	str	r2, [r3, #32]
 494:	4b23      	ldr	r3, [pc, #140]	; (524 <TimerConfig+0xe0>)
 496:	4a23      	ldr	r2, [pc, #140]	; (524 <TimerConfig+0xe0>)
 498:	6a12      	ldr	r2, [r2, #32]
 49a:	21e0      	movs	r1, #224	; 0xe0
 49c:	0109      	lsls	r1, r1, #4
 49e:	430a      	orrs	r2, r1
 4a0:	621a      	str	r2, [r3, #32]
 4a2:	4b20      	ldr	r3, [pc, #128]	; (524 <TimerConfig+0xe0>)
 4a4:	4a1f      	ldr	r2, [pc, #124]	; (524 <TimerConfig+0xe0>)
 4a6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4a8:	210f      	movs	r1, #15
 4aa:	438a      	bics	r2, r1
 4ac:	631a      	str	r2, [r3, #48]	; 0x30
 4ae:	4b1d      	ldr	r3, [pc, #116]	; (524 <TimerConfig+0xe0>)
 4b0:	4a1c      	ldr	r2, [pc, #112]	; (524 <TimerConfig+0xe0>)
 4b2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4b4:	210c      	movs	r1, #12
 4b6:	430a      	orrs	r2, r1
 4b8:	631a      	str	r2, [r3, #48]	; 0x30
 4ba:	4b1a      	ldr	r3, [pc, #104]	; (524 <TimerConfig+0xe0>)
 4bc:	4a19      	ldr	r2, [pc, #100]	; (524 <TimerConfig+0xe0>)
 4be:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4c0:	2101      	movs	r1, #1
 4c2:	430a      	orrs	r2, r1
 4c4:	631a      	str	r2, [r3, #48]	; 0x30
 4c6:	4b17      	ldr	r3, [pc, #92]	; (524 <TimerConfig+0xe0>)
 4c8:	4a16      	ldr	r2, [pc, #88]	; (524 <TimerConfig+0xe0>)
 4ca:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4cc:	4919      	ldr	r1, [pc, #100]	; (534 <TimerConfig+0xf0>)
 4ce:	400a      	ands	r2, r1
 4d0:	631a      	str	r2, [r3, #48]	; 0x30
 4d2:	4b14      	ldr	r3, [pc, #80]	; (524 <TimerConfig+0xe0>)
 4d4:	4a13      	ldr	r2, [pc, #76]	; (524 <TimerConfig+0xe0>)
 4d6:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4d8:	21c0      	movs	r1, #192	; 0xc0
 4da:	0109      	lsls	r1, r1, #4
 4dc:	430a      	orrs	r2, r1
 4de:	631a      	str	r2, [r3, #48]	; 0x30
 4e0:	4b10      	ldr	r3, [pc, #64]	; (524 <TimerConfig+0xe0>)
 4e2:	4a10      	ldr	r2, [pc, #64]	; (524 <TimerConfig+0xe0>)
 4e4:	6b12      	ldr	r2, [r2, #48]	; 0x30
 4e6:	2180      	movs	r1, #128	; 0x80
 4e8:	0049      	lsls	r1, r1, #1
 4ea:	430a      	orrs	r2, r1
 4ec:	631a      	str	r2, [r3, #48]	; 0x30
 4ee:	4b0d      	ldr	r3, [pc, #52]	; (524 <TimerConfig+0xe0>)
 4f0:	4a0c      	ldr	r2, [pc, #48]	; (524 <TimerConfig+0xe0>)
 4f2:	6c12      	ldr	r2, [r2, #64]	; 0x40
 4f4:	21c8      	movs	r1, #200	; 0xc8
 4f6:	0209      	lsls	r1, r1, #8
 4f8:	430a      	orrs	r2, r1
 4fa:	641a      	str	r2, [r3, #64]	; 0x40
 4fc:	4b09      	ldr	r3, [pc, #36]	; (524 <TimerConfig+0xe0>)
 4fe:	4a09      	ldr	r2, [pc, #36]	; (524 <TimerConfig+0xe0>)
 500:	6d92      	ldr	r2, [r2, #88]	; 0x58
 502:	21f0      	movs	r1, #240	; 0xf0
 504:	0149      	lsls	r1, r1, #5
 506:	430a      	orrs	r2, r1
 508:	659a      	str	r2, [r3, #88]	; 0x58
 50a:	4b06      	ldr	r3, [pc, #24]	; (524 <TimerConfig+0xe0>)
 50c:	2201      	movs	r2, #1
 50e:	60da      	str	r2, [r3, #12]
 510:	200d      	movs	r0, #13
 512:	f7ff fdd5 	bl	c0 <NVIC_EnableIRQ>
 516:	46c0      	nop			; (mov r8, r8)
 518:	46bd      	mov	sp, r7
 51a:	bd80      	pop	{r7, pc}
 51c:	40020000 	.word	0x40020000
 520:	ff00ffff 	.word	0xff00ffff
 524:	40098000 	.word	0x40098000
 528:	0000270f 	.word	0x0000270f
 52c:	00001388 	.word	0x00001388
 530:	fffff1ff 	.word	0xfffff1ff
 534:	fffff0ff 	.word	0xfffff0ff

00000538 <mil_std_1533_init_bc>:
 538:	b580      	push	{r7, lr}
 53a:	b082      	sub	sp, #8
 53c:	af00      	add	r7, sp, #0
 53e:	4b23      	ldr	r3, [pc, #140]	; (5cc <mil_std_1533_init_bc+0x94>)
 540:	603b      	str	r3, [r7, #0]
 542:	4b23      	ldr	r3, [pc, #140]	; (5d0 <mil_std_1533_init_bc+0x98>)
 544:	4a22      	ldr	r2, [pc, #136]	; (5d0 <mil_std_1533_init_bc+0x98>)
 546:	69d2      	ldr	r2, [r2, #28]
 548:	2180      	movs	r1, #128	; 0x80
 54a:	0089      	lsls	r1, r1, #2
 54c:	430a      	orrs	r2, r1
 54e:	61da      	str	r2, [r3, #28]
 550:	4b1f      	ldr	r3, [pc, #124]	; (5d0 <mil_std_1533_init_bc+0x98>)
 552:	4a1f      	ldr	r2, [pc, #124]	; (5d0 <mil_std_1533_init_bc+0x98>)
 554:	6b52      	ldr	r2, [r2, #52]	; 0x34
 556:	2180      	movs	r1, #128	; 0x80
 558:	0489      	lsls	r1, r1, #18
 55a:	430a      	orrs	r2, r1
 55c:	635a      	str	r2, [r3, #52]	; 0x34
 55e:	4a1d      	ldr	r2, [pc, #116]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 560:	2380      	movs	r3, #128	; 0x80
 562:	015b      	lsls	r3, r3, #5
 564:	2101      	movs	r1, #1
 566:	50d1      	str	r1, [r2, r3]
 568:	4a1a      	ldr	r2, [pc, #104]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 56a:	2380      	movs	r3, #128	; 0x80
 56c:	015b      	lsls	r3, r3, #5
 56e:	491a      	ldr	r1, [pc, #104]	; (5d8 <mil_std_1533_init_bc+0xa0>)
 570:	50d1      	str	r1, [r2, r3]
 572:	4918      	ldr	r1, [pc, #96]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 574:	4a17      	ldr	r2, [pc, #92]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 576:	2381      	movs	r3, #129	; 0x81
 578:	015b      	lsls	r3, r3, #5
 57a:	58d3      	ldr	r3, [r2, r3]
 57c:	2204      	movs	r2, #4
 57e:	431a      	orrs	r2, r3
 580:	2381      	movs	r3, #129	; 0x81
 582:	015b      	lsls	r3, r3, #5
 584:	50ca      	str	r2, [r1, r3]
 586:	2001      	movs	r0, #1
 588:	f7ff fd9a 	bl	c0 <NVIC_EnableIRQ>
 58c:	4a11      	ldr	r2, [pc, #68]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 58e:	4b13      	ldr	r3, [pc, #76]	; (5dc <mil_std_1533_init_bc+0xa4>)
 590:	2100      	movs	r1, #0
 592:	50d1      	str	r1, [r2, r3]
 594:	490f      	ldr	r1, [pc, #60]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 596:	4a0f      	ldr	r2, [pc, #60]	; (5d4 <mil_std_1533_init_bc+0x9c>)
 598:	4b10      	ldr	r3, [pc, #64]	; (5dc <mil_std_1533_init_bc+0xa4>)
 59a:	58d3      	ldr	r3, [r2, r3]
 59c:	22c1      	movs	r2, #193	; 0xc1
 59e:	0152      	lsls	r2, r2, #5
 5a0:	4313      	orrs	r3, r2
 5a2:	4a0e      	ldr	r2, [pc, #56]	; (5dc <mil_std_1533_init_bc+0xa4>)
 5a4:	508b      	str	r3, [r1, r2]
 5a6:	2300      	movs	r3, #0
 5a8:	607b      	str	r3, [r7, #4]
 5aa:	e008      	b.n	5be <mil_std_1533_init_bc+0x86>
 5ac:	683b      	ldr	r3, [r7, #0]
 5ae:	1d1a      	adds	r2, r3, #4
 5b0:	603a      	str	r2, [r7, #0]
 5b2:	687a      	ldr	r2, [r7, #4]
 5b4:	b292      	uxth	r2, r2
 5b6:	601a      	str	r2, [r3, #0]
 5b8:	687b      	ldr	r3, [r7, #4]
 5ba:	3301      	adds	r3, #1
 5bc:	607b      	str	r3, [r7, #4]
 5be:	687b      	ldr	r3, [r7, #4]
 5c0:	2b1f      	cmp	r3, #31
 5c2:	ddf3      	ble.n	5ac <mil_std_1533_init_bc+0x74>
 5c4:	46c0      	nop			; (mov r8, r8)
 5c6:	46bd      	mov	sp, r7
 5c8:	b002      	add	sp, #8
 5ca:	bd80      	pop	{r7, pc}
 5cc:	40048080 	.word	0x40048080
 5d0:	40020000 	.word	0x40020000
 5d4:	40048000 	.word	0x40048000
 5d8:	0003c014 	.word	0x0003c014
 5dc:	0000100c 	.word	0x0000100c

000005e0 <SystemInit>:
 5e0:	b580      	push	{r7, lr}
 5e2:	af00      	add	r7, sp, #0
 5e4:	f7ff fef4 	bl	3d0 <ClkConfig>
 5e8:	f7ff fe12 	bl	210 <PortConfig>
 5ec:	f7ff ff2a 	bl	444 <TimerConfig>
 5f0:	f000 f8c6 	bl	780 <uart_init>
 5f4:	f7ff ffa0 	bl	538 <mil_std_1533_init_bc>
 5f8:	4b03      	ldr	r3, [pc, #12]	; (608 <SystemInit+0x28>)
 5fa:	0018      	movs	r0, r3
 5fc:	f7ff fdac 	bl	158 <SysTick_Config>
 600:	46c0      	nop			; (mov r8, r8)
 602:	46bd      	mov	sp, r7
 604:	bd80      	pop	{r7, pc}
 606:	46c0      	nop			; (mov r8, r8)
 608:	0001d4c0 	.word	0x0001d4c0

0000060c <SysTick_Handler>:
 60c:	b580      	push	{r7, lr}
 60e:	af00      	add	r7, sp, #0
 610:	4b03      	ldr	r3, [pc, #12]	; (620 <SysTick_Handler+0x14>)
 612:	681b      	ldr	r3, [r3, #0]
 614:	1c5a      	adds	r2, r3, #1
 616:	4b02      	ldr	r3, [pc, #8]	; (620 <SysTick_Handler+0x14>)
 618:	601a      	str	r2, [r3, #0]
 61a:	46c0      	nop			; (mov r8, r8)
 61c:	46bd      	mov	sp, r7
 61e:	bd80      	pop	{r7, pc}
 620:	2000004c 	.word	0x2000004c

00000624 <TIMER4_Handler>:
 624:	b580      	push	{r7, lr}
 626:	af00      	add	r7, sp, #0
 628:	4b07      	ldr	r3, [pc, #28]	; (648 <TIMER4_Handler+0x24>)
 62a:	2200      	movs	r2, #0
 62c:	655a      	str	r2, [r3, #84]	; 0x54
 62e:	4907      	ldr	r1, [pc, #28]	; (64c <TIMER4_Handler+0x28>)
 630:	4a06      	ldr	r2, [pc, #24]	; (64c <TIMER4_Handler+0x28>)
 632:	2380      	movs	r3, #128	; 0x80
 634:	015b      	lsls	r3, r3, #5
 636:	58d3      	ldr	r3, [r2, r3]
 638:	2202      	movs	r2, #2
 63a:	431a      	orrs	r2, r3
 63c:	2380      	movs	r3, #128	; 0x80
 63e:	015b      	lsls	r3, r3, #5
 640:	50ca      	str	r2, [r1, r3]
 642:	46c0      	nop			; (mov r8, r8)
 644:	46bd      	mov	sp, r7
 646:	bd80      	pop	{r7, pc}
 648:	40098000 	.word	0x40098000
 64c:	40048000 	.word	0x40048000

00000650 <MIL_STD_1553B1_Handler>:
 650:	b580      	push	{r7, lr}
 652:	b082      	sub	sp, #8
 654:	af00      	add	r7, sp, #0
 656:	4b10      	ldr	r3, [pc, #64]	; (698 <MIL_STD_1553B1_Handler+0x48>)
 658:	603b      	str	r3, [r7, #0]
 65a:	4b10      	ldr	r3, [pc, #64]	; (69c <MIL_STD_1553B1_Handler+0x4c>)
 65c:	4a0f      	ldr	r2, [pc, #60]	; (69c <MIL_STD_1553B1_Handler+0x4c>)
 65e:	6812      	ldr	r2, [r2, #0]
 660:	490f      	ldr	r1, [pc, #60]	; (6a0 <MIL_STD_1553B1_Handler+0x50>)
 662:	404a      	eors	r2, r1
 664:	601a      	str	r2, [r3, #0]
 666:	4b0f      	ldr	r3, [pc, #60]	; (6a4 <MIL_STD_1553B1_Handler+0x54>)
 668:	2140      	movs	r1, #64	; 0x40
 66a:	0018      	movs	r0, r3
 66c:	f000 f8c8 	bl	800 <uart_read>
 670:	4b09      	ldr	r3, [pc, #36]	; (698 <MIL_STD_1553B1_Handler+0x48>)
 672:	603b      	str	r3, [r7, #0]
 674:	2300      	movs	r3, #0
 676:	607b      	str	r3, [r7, #4]
 678:	e007      	b.n	68a <MIL_STD_1553B1_Handler+0x3a>
 67a:	683b      	ldr	r3, [r7, #0]
 67c:	1d1a      	adds	r2, r3, #4
 67e:	603a      	str	r2, [r7, #0]
 680:	687a      	ldr	r2, [r7, #4]
 682:	601a      	str	r2, [r3, #0]
 684:	687b      	ldr	r3, [r7, #4]
 686:	3301      	adds	r3, #1
 688:	607b      	str	r3, [r7, #4]
 68a:	687b      	ldr	r3, [r7, #4]
 68c:	2b1f      	cmp	r3, #31
 68e:	ddf4      	ble.n	67a <MIL_STD_1553B1_Handler+0x2a>
 690:	46c0      	nop			; (mov r8, r8)
 692:	46bd      	mov	sp, r7
 694:	b002      	add	sp, #8
 696:	bd80      	pop	{r7, pc}
 698:	40048080 	.word	0x40048080
 69c:	400c0000 	.word	0x400c0000
 6a0:	0000ffff 	.word	0x0000ffff
 6a4:	20000004 	.word	0x20000004

000006a8 <handler_reset>:
 6a8:	b580      	push	{r7, lr}
 6aa:	b082      	sub	sp, #8
 6ac:	af00      	add	r7, sp, #0
 6ae:	4b11      	ldr	r3, [pc, #68]	; (6f4 <handler_reset+0x4c>)
 6b0:	607b      	str	r3, [r7, #4]
 6b2:	4b11      	ldr	r3, [pc, #68]	; (6f8 <handler_reset+0x50>)
 6b4:	603b      	str	r3, [r7, #0]
 6b6:	e007      	b.n	6c8 <handler_reset+0x20>
 6b8:	683b      	ldr	r3, [r7, #0]
 6ba:	1d1a      	adds	r2, r3, #4
 6bc:	603a      	str	r2, [r7, #0]
 6be:	687a      	ldr	r2, [r7, #4]
 6c0:	1d11      	adds	r1, r2, #4
 6c2:	6079      	str	r1, [r7, #4]
 6c4:	6812      	ldr	r2, [r2, #0]
 6c6:	601a      	str	r2, [r3, #0]
 6c8:	683a      	ldr	r2, [r7, #0]
 6ca:	4b0c      	ldr	r3, [pc, #48]	; (6fc <handler_reset+0x54>)
 6cc:	429a      	cmp	r2, r3
 6ce:	d3f3      	bcc.n	6b8 <handler_reset+0x10>
 6d0:	4b0b      	ldr	r3, [pc, #44]	; (700 <handler_reset+0x58>)
 6d2:	603b      	str	r3, [r7, #0]
 6d4:	e004      	b.n	6e0 <handler_reset+0x38>
 6d6:	683b      	ldr	r3, [r7, #0]
 6d8:	1d1a      	adds	r2, r3, #4
 6da:	603a      	str	r2, [r7, #0]
 6dc:	2200      	movs	r2, #0
 6de:	601a      	str	r2, [r3, #0]
 6e0:	683a      	ldr	r2, [r7, #0]
 6e2:	4b08      	ldr	r3, [pc, #32]	; (704 <handler_reset+0x5c>)
 6e4:	429a      	cmp	r2, r3
 6e6:	d3f6      	bcc.n	6d6 <handler_reset+0x2e>
 6e8:	f7ff fd72 	bl	1d0 <main>
 6ec:	46c0      	nop			; (mov r8, r8)
 6ee:	46bd      	mov	sp, r7
 6f0:	b002      	add	sp, #8
 6f2:	bd80      	pop	{r7, pc}
 6f4:	000009b8 	.word	0x000009b8
 6f8:	20000000 	.word	0x20000000
 6fc:	20000004 	.word	0x20000004
 700:	20000004 	.word	0x20000004
 704:	20000460 	.word	0x20000460

00000708 <default_handler>:
 708:	b580      	push	{r7, lr}
 70a:	af00      	add	r7, sp, #0
 70c:	e7fe      	b.n	70c <default_handler+0x4>
 70e:	46c0      	nop			; (mov r8, r8)

00000710 <NVIC_EnableIRQ>:
 710:	b580      	push	{r7, lr}
 712:	b082      	sub	sp, #8
 714:	af00      	add	r7, sp, #0
 716:	0002      	movs	r2, r0
 718:	1dfb      	adds	r3, r7, #7
 71a:	701a      	strb	r2, [r3, #0]
 71c:	4909      	ldr	r1, [pc, #36]	; (744 <NVIC_EnableIRQ+0x34>)
 71e:	1dfb      	adds	r3, r7, #7
 720:	781b      	ldrb	r3, [r3, #0]
 722:	b25b      	sxtb	r3, r3
 724:	095b      	lsrs	r3, r3, #5
 726:	1dfa      	adds	r2, r7, #7
 728:	7812      	ldrb	r2, [r2, #0]
 72a:	0010      	movs	r0, r2
 72c:	221f      	movs	r2, #31
 72e:	4002      	ands	r2, r0
 730:	2001      	movs	r0, #1
 732:	4090      	lsls	r0, r2
 734:	0002      	movs	r2, r0
 736:	009b      	lsls	r3, r3, #2
 738:	505a      	str	r2, [r3, r1]
 73a:	46c0      	nop			; (mov r8, r8)
 73c:	46bd      	mov	sp, r7
 73e:	b002      	add	sp, #8
 740:	bd80      	pop	{r7, pc}
 742:	46c0      	nop			; (mov r8, r8)
 744:	e000e100 	.word	0xe000e100

00000748 <NVIC_DisableIRQ>:
 748:	b580      	push	{r7, lr}
 74a:	b082      	sub	sp, #8
 74c:	af00      	add	r7, sp, #0
 74e:	0002      	movs	r2, r0
 750:	1dfb      	adds	r3, r7, #7
 752:	701a      	strb	r2, [r3, #0]
 754:	4909      	ldr	r1, [pc, #36]	; (77c <NVIC_DisableIRQ+0x34>)
 756:	1dfb      	adds	r3, r7, #7
 758:	781b      	ldrb	r3, [r3, #0]
 75a:	b25b      	sxtb	r3, r3
 75c:	095b      	lsrs	r3, r3, #5
 75e:	1dfa      	adds	r2, r7, #7
 760:	7812      	ldrb	r2, [r2, #0]
 762:	0010      	movs	r0, r2
 764:	221f      	movs	r2, #31
 766:	4002      	ands	r2, r0
 768:	2001      	movs	r0, #1
 76a:	4090      	lsls	r0, r2
 76c:	0002      	movs	r2, r0
 76e:	3320      	adds	r3, #32
 770:	009b      	lsls	r3, r3, #2
 772:	505a      	str	r2, [r3, r1]
 774:	46c0      	nop			; (mov r8, r8)
 776:	46bd      	mov	sp, r7
 778:	b002      	add	sp, #8
 77a:	bd80      	pop	{r7, pc}
 77c:	e000e100 	.word	0xe000e100

00000780 <uart_init>:
 780:	b580      	push	{r7, lr}
 782:	af00      	add	r7, sp, #0
 784:	4b1b      	ldr	r3, [pc, #108]	; (7f4 <uart_init+0x74>)
 786:	4a1b      	ldr	r2, [pc, #108]	; (7f4 <uart_init+0x74>)
 788:	69d2      	ldr	r2, [r2, #28]
 78a:	2140      	movs	r1, #64	; 0x40
 78c:	430a      	orrs	r2, r1
 78e:	61da      	str	r2, [r3, #28]
 790:	4b18      	ldr	r3, [pc, #96]	; (7f4 <uart_init+0x74>)
 792:	4a18      	ldr	r2, [pc, #96]	; (7f4 <uart_init+0x74>)
 794:	6a92      	ldr	r2, [r2, #40]	; 0x28
 796:	2180      	movs	r1, #128	; 0x80
 798:	0449      	lsls	r1, r1, #17
 79a:	430a      	orrs	r2, r1
 79c:	629a      	str	r2, [r3, #40]	; 0x28
 79e:	4b16      	ldr	r3, [pc, #88]	; (7f8 <uart_init+0x78>)
 7a0:	2241      	movs	r2, #65	; 0x41
 7a2:	625a      	str	r2, [r3, #36]	; 0x24
 7a4:	4b14      	ldr	r3, [pc, #80]	; (7f8 <uart_init+0x78>)
 7a6:	2207      	movs	r2, #7
 7a8:	629a      	str	r2, [r3, #40]	; 0x28
 7aa:	4b13      	ldr	r3, [pc, #76]	; (7f8 <uart_init+0x78>)
 7ac:	4a12      	ldr	r2, [pc, #72]	; (7f8 <uart_init+0x78>)
 7ae:	6b52      	ldr	r2, [r2, #52]	; 0x34
 7b0:	213f      	movs	r1, #63	; 0x3f
 7b2:	438a      	bics	r2, r1
 7b4:	635a      	str	r2, [r3, #52]	; 0x34
 7b6:	4b10      	ldr	r3, [pc, #64]	; (7f8 <uart_init+0x78>)
 7b8:	4a0f      	ldr	r2, [pc, #60]	; (7f8 <uart_init+0x78>)
 7ba:	6b52      	ldr	r2, [r2, #52]	; 0x34
 7bc:	2124      	movs	r1, #36	; 0x24
 7be:	430a      	orrs	r2, r1
 7c0:	635a      	str	r2, [r3, #52]	; 0x34
 7c2:	4b0d      	ldr	r3, [pc, #52]	; (7f8 <uart_init+0x78>)
 7c4:	4a0c      	ldr	r2, [pc, #48]	; (7f8 <uart_init+0x78>)
 7c6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 7c8:	2160      	movs	r1, #96	; 0x60
 7ca:	430a      	orrs	r2, r1
 7cc:	62da      	str	r2, [r3, #44]	; 0x2c
 7ce:	4b0a      	ldr	r3, [pc, #40]	; (7f8 <uart_init+0x78>)
 7d0:	4a09      	ldr	r2, [pc, #36]	; (7f8 <uart_init+0x78>)
 7d2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 7d4:	4909      	ldr	r1, [pc, #36]	; (7fc <uart_init+0x7c>)
 7d6:	430a      	orrs	r2, r1
 7d8:	631a      	str	r2, [r3, #48]	; 0x30
 7da:	4b07      	ldr	r3, [pc, #28]	; (7f8 <uart_init+0x78>)
 7dc:	4a06      	ldr	r2, [pc, #24]	; (7f8 <uart_init+0x78>)
 7de:	6b92      	ldr	r2, [r2, #56]	; 0x38
 7e0:	2110      	movs	r1, #16
 7e2:	430a      	orrs	r2, r1
 7e4:	639a      	str	r2, [r3, #56]	; 0x38
 7e6:	2006      	movs	r0, #6
 7e8:	f7ff ff92 	bl	710 <NVIC_EnableIRQ>
 7ec:	46c0      	nop			; (mov r8, r8)
 7ee:	46bd      	mov	sp, r7
 7f0:	bd80      	pop	{r7, pc}
 7f2:	46c0      	nop			; (mov r8, r8)
 7f4:	40020000 	.word	0x40020000
 7f8:	40030000 	.word	0x40030000
 7fc:	00000301 	.word	0x00000301

00000800 <uart_read>:
 800:	b580      	push	{r7, lr}
 802:	b084      	sub	sp, #16
 804:	af00      	add	r7, sp, #0
 806:	6078      	str	r0, [r7, #4]
 808:	6039      	str	r1, [r7, #0]
 80a:	4b18      	ldr	r3, [pc, #96]	; (86c <uart_read+0x6c>)
 80c:	681a      	ldr	r2, [r3, #0]
 80e:	4b18      	ldr	r3, [pc, #96]	; (870 <uart_read+0x70>)
 810:	681b      	ldr	r3, [r3, #0]
 812:	429a      	cmp	r2, r3
 814:	d101      	bne.n	81a <uart_read+0x1a>
 816:	2300      	movs	r3, #0
 818:	e023      	b.n	862 <uart_read+0x62>
 81a:	2300      	movs	r3, #0
 81c:	60fb      	str	r3, [r7, #12]
 81e:	e01b      	b.n	858 <uart_read+0x58>
 820:	68fb      	ldr	r3, [r7, #12]
 822:	687a      	ldr	r2, [r7, #4]
 824:	18d2      	adds	r2, r2, r3
 826:	4b11      	ldr	r3, [pc, #68]	; (86c <uart_read+0x6c>)
 828:	681b      	ldr	r3, [r3, #0]
 82a:	4912      	ldr	r1, [pc, #72]	; (874 <uart_read+0x74>)
 82c:	5ccb      	ldrb	r3, [r1, r3]
 82e:	7013      	strb	r3, [r2, #0]
 830:	4b0e      	ldr	r3, [pc, #56]	; (86c <uart_read+0x6c>)
 832:	681b      	ldr	r3, [r3, #0]
 834:	3301      	adds	r3, #1
 836:	05db      	lsls	r3, r3, #23
 838:	0dda      	lsrs	r2, r3, #23
 83a:	4b0c      	ldr	r3, [pc, #48]	; (86c <uart_read+0x6c>)
 83c:	601a      	str	r2, [r3, #0]
 83e:	4b0b      	ldr	r3, [pc, #44]	; (86c <uart_read+0x6c>)
 840:	681a      	ldr	r2, [r3, #0]
 842:	4b0b      	ldr	r3, [pc, #44]	; (870 <uart_read+0x70>)
 844:	681b      	ldr	r3, [r3, #0]
 846:	429a      	cmp	r2, r3
 848:	d103      	bne.n	852 <uart_read+0x52>
 84a:	68fb      	ldr	r3, [r7, #12]
 84c:	3301      	adds	r3, #1
 84e:	60fb      	str	r3, [r7, #12]
 850:	e006      	b.n	860 <uart_read+0x60>
 852:	68fb      	ldr	r3, [r7, #12]
 854:	3301      	adds	r3, #1
 856:	60fb      	str	r3, [r7, #12]
 858:	68fa      	ldr	r2, [r7, #12]
 85a:	683b      	ldr	r3, [r7, #0]
 85c:	429a      	cmp	r2, r3
 85e:	dbdf      	blt.n	820 <uart_read+0x20>
 860:	68fb      	ldr	r3, [r7, #12]
 862:	0018      	movs	r0, r3
 864:	46bd      	mov	sp, r7
 866:	b004      	add	sp, #16
 868:	bd80      	pop	{r7, pc}
 86a:	46c0      	nop			; (mov r8, r8)
 86c:	2000045c 	.word	0x2000045c
 870:	20000458 	.word	0x20000458
 874:	20000258 	.word	0x20000258

00000878 <uart_send>:
 878:	b580      	push	{r7, lr}
 87a:	b084      	sub	sp, #16
 87c:	af00      	add	r7, sp, #0
 87e:	6078      	str	r0, [r7, #4]
 880:	6039      	str	r1, [r7, #0]
 882:	2006      	movs	r0, #6
 884:	f7ff ff60 	bl	748 <NVIC_DisableIRQ>
 888:	2300      	movs	r3, #0
 88a:	60fb      	str	r3, [r7, #12]
 88c:	e01b      	b.n	8c6 <uart_send+0x4e>
 88e:	4b20      	ldr	r3, [pc, #128]	; (910 <uart_send+0x98>)
 890:	681b      	ldr	r3, [r3, #0]
 892:	68fa      	ldr	r2, [r7, #12]
 894:	6879      	ldr	r1, [r7, #4]
 896:	188a      	adds	r2, r1, r2
 898:	7811      	ldrb	r1, [r2, #0]
 89a:	4a1e      	ldr	r2, [pc, #120]	; (914 <uart_send+0x9c>)
 89c:	54d1      	strb	r1, [r2, r3]
 89e:	4b1c      	ldr	r3, [pc, #112]	; (910 <uart_send+0x98>)
 8a0:	681b      	ldr	r3, [r3, #0]
 8a2:	3301      	adds	r3, #1
 8a4:	05db      	lsls	r3, r3, #23
 8a6:	0dda      	lsrs	r2, r3, #23
 8a8:	4b19      	ldr	r3, [pc, #100]	; (910 <uart_send+0x98>)
 8aa:	601a      	str	r2, [r3, #0]
 8ac:	4b18      	ldr	r3, [pc, #96]	; (910 <uart_send+0x98>)
 8ae:	681a      	ldr	r2, [r3, #0]
 8b0:	4b19      	ldr	r3, [pc, #100]	; (918 <uart_send+0xa0>)
 8b2:	681b      	ldr	r3, [r3, #0]
 8b4:	429a      	cmp	r2, r3
 8b6:	d103      	bne.n	8c0 <uart_send+0x48>
 8b8:	68fb      	ldr	r3, [r7, #12]
 8ba:	3301      	adds	r3, #1
 8bc:	60fb      	str	r3, [r7, #12]
 8be:	e006      	b.n	8ce <uart_send+0x56>
 8c0:	68fb      	ldr	r3, [r7, #12]
 8c2:	3301      	adds	r3, #1
 8c4:	60fb      	str	r3, [r7, #12]
 8c6:	68fa      	ldr	r2, [r7, #12]
 8c8:	683b      	ldr	r3, [r7, #0]
 8ca:	429a      	cmp	r2, r3
 8cc:	dbdf      	blt.n	88e <uart_send+0x16>
 8ce:	4b13      	ldr	r3, [pc, #76]	; (91c <uart_send+0xa4>)
 8d0:	699b      	ldr	r3, [r3, #24]
 8d2:	2208      	movs	r2, #8
 8d4:	4013      	ands	r3, r2
 8d6:	d10c      	bne.n	8f2 <uart_send+0x7a>
 8d8:	4a10      	ldr	r2, [pc, #64]	; (91c <uart_send+0xa4>)
 8da:	4b0f      	ldr	r3, [pc, #60]	; (918 <uart_send+0xa0>)
 8dc:	681b      	ldr	r3, [r3, #0]
 8de:	490d      	ldr	r1, [pc, #52]	; (914 <uart_send+0x9c>)
 8e0:	5ccb      	ldrb	r3, [r1, r3]
 8e2:	6013      	str	r3, [r2, #0]
 8e4:	4b0c      	ldr	r3, [pc, #48]	; (918 <uart_send+0xa0>)
 8e6:	681b      	ldr	r3, [r3, #0]
 8e8:	3301      	adds	r3, #1
 8ea:	05db      	lsls	r3, r3, #23
 8ec:	0dda      	lsrs	r2, r3, #23
 8ee:	4b0a      	ldr	r3, [pc, #40]	; (918 <uart_send+0xa0>)
 8f0:	601a      	str	r2, [r3, #0]
 8f2:	4b0a      	ldr	r3, [pc, #40]	; (91c <uart_send+0xa4>)
 8f4:	4a09      	ldr	r2, [pc, #36]	; (91c <uart_send+0xa4>)
 8f6:	6b92      	ldr	r2, [r2, #56]	; 0x38
 8f8:	2120      	movs	r1, #32
 8fa:	430a      	orrs	r2, r1
 8fc:	639a      	str	r2, [r3, #56]	; 0x38
 8fe:	2006      	movs	r0, #6
 900:	f7ff ff06 	bl	710 <NVIC_EnableIRQ>
 904:	68fb      	ldr	r3, [r7, #12]
 906:	0018      	movs	r0, r3
 908:	46bd      	mov	sp, r7
 90a:	b004      	add	sp, #16
 90c:	bd80      	pop	{r7, pc}
 90e:	46c0      	nop			; (mov r8, r8)
 910:	20000254 	.word	0x20000254
 914:	20000050 	.word	0x20000050
 918:	20000250 	.word	0x20000250
 91c:	40030000 	.word	0x40030000

00000920 <UART1_Handler>:
 920:	b580      	push	{r7, lr}
 922:	af00      	add	r7, sp, #0
 924:	4b1a      	ldr	r3, [pc, #104]	; (990 <UART1_Handler+0x70>)
 926:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 928:	2220      	movs	r2, #32
 92a:	4013      	ands	r3, r2
 92c:	d019      	beq.n	962 <UART1_Handler+0x42>
 92e:	4b19      	ldr	r3, [pc, #100]	; (994 <UART1_Handler+0x74>)
 930:	681a      	ldr	r2, [r3, #0]
 932:	4b19      	ldr	r3, [pc, #100]	; (998 <UART1_Handler+0x78>)
 934:	681b      	ldr	r3, [r3, #0]
 936:	429a      	cmp	r2, r3
 938:	d106      	bne.n	948 <UART1_Handler+0x28>
 93a:	4b15      	ldr	r3, [pc, #84]	; (990 <UART1_Handler+0x70>)
 93c:	4a14      	ldr	r2, [pc, #80]	; (990 <UART1_Handler+0x70>)
 93e:	6b92      	ldr	r2, [r2, #56]	; 0x38
 940:	2120      	movs	r1, #32
 942:	438a      	bics	r2, r1
 944:	639a      	str	r2, [r3, #56]	; 0x38
 946:	e00c      	b.n	962 <UART1_Handler+0x42>
 948:	4a11      	ldr	r2, [pc, #68]	; (990 <UART1_Handler+0x70>)
 94a:	4b12      	ldr	r3, [pc, #72]	; (994 <UART1_Handler+0x74>)
 94c:	681b      	ldr	r3, [r3, #0]
 94e:	4913      	ldr	r1, [pc, #76]	; (99c <UART1_Handler+0x7c>)
 950:	5ccb      	ldrb	r3, [r1, r3]
 952:	6013      	str	r3, [r2, #0]
 954:	4b0f      	ldr	r3, [pc, #60]	; (994 <UART1_Handler+0x74>)
 956:	681b      	ldr	r3, [r3, #0]
 958:	3301      	adds	r3, #1
 95a:	05db      	lsls	r3, r3, #23
 95c:	0dda      	lsrs	r2, r3, #23
 95e:	4b0d      	ldr	r3, [pc, #52]	; (994 <UART1_Handler+0x74>)
 960:	601a      	str	r2, [r3, #0]
 962:	4b0b      	ldr	r3, [pc, #44]	; (990 <UART1_Handler+0x70>)
 964:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 966:	2210      	movs	r2, #16
 968:	4013      	ands	r3, r2
 96a:	d00d      	beq.n	988 <UART1_Handler+0x68>
 96c:	4b0c      	ldr	r3, [pc, #48]	; (9a0 <UART1_Handler+0x80>)
 96e:	681a      	ldr	r2, [r3, #0]
 970:	4b07      	ldr	r3, [pc, #28]	; (990 <UART1_Handler+0x70>)
 972:	681b      	ldr	r3, [r3, #0]
 974:	b2d9      	uxtb	r1, r3
 976:	4b0b      	ldr	r3, [pc, #44]	; (9a4 <UART1_Handler+0x84>)
 978:	5499      	strb	r1, [r3, r2]
 97a:	4b09      	ldr	r3, [pc, #36]	; (9a0 <UART1_Handler+0x80>)
 97c:	681b      	ldr	r3, [r3, #0]
 97e:	3301      	adds	r3, #1
 980:	05db      	lsls	r3, r3, #23
 982:	0dda      	lsrs	r2, r3, #23
 984:	4b06      	ldr	r3, [pc, #24]	; (9a0 <UART1_Handler+0x80>)
 986:	601a      	str	r2, [r3, #0]
 988:	46c0      	nop			; (mov r8, r8)
 98a:	46bd      	mov	sp, r7
 98c:	bd80      	pop	{r7, pc}
 98e:	46c0      	nop			; (mov r8, r8)
 990:	40030000 	.word	0x40030000
 994:	20000250 	.word	0x20000250
 998:	20000254 	.word	0x20000254
 99c:	20000050 	.word	0x20000050
 9a0:	20000458 	.word	0x20000458
 9a4:	20000258 	.word	0x20000258
 9a8:	6c6c6568 	.word	0x6c6c6568
 9ac:	6f77206f 	.word	0x6f77206f
 9b0:	0d646c72 	.word	0x0d646c72
 9b4:	0000000a 	.word	0x0000000a
