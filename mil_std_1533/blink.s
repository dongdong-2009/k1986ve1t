
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 c9 06 00 00 29 07 00 00 29 07 00 00     ... ....)...)...
	...
  2c:	29 07 00 00 00 00 00 00 00 00 00 00 29 07 00 00     )...........)...
  3c:	0d 06 00 00 29 07 00 00 51 06 00 00 29 07 00 00     ....)...Q...)...
  4c:	29 07 00 00 29 07 00 00 29 07 00 00 41 09 00 00     )...)...)...A...
  5c:	29 07 00 00 29 07 00 00 29 07 00 00 29 07 00 00     )...)...)...)...
  6c:	29 07 00 00 29 07 00 00 25 06 00 00 29 07 00 00     )...)...%...)...
  7c:	29 07 00 00 29 07 00 00 29 07 00 00 29 07 00 00     )...)...)...)...
  8c:	29 07 00 00 29 07 00 00 29 07 00 00 29 07 00 00     )...)...)...)...
  9c:	29 07 00 00 29 07 00 00 00 00 00 00 00 00 00 00     )...)...........
  ac:	29 07 00 00 29 07 00 00 29 07 00 00 29 07 00 00     )...)...)...)...
  bc:	29 07 00 00                                         )...

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
 204:	000009c8 	.word	0x000009c8
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
 59c:	22e1      	movs	r2, #225	; 0xe1
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
 5f0:	f000 f8d6 	bl	7a0 <uart_init>
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
 656:	4b18      	ldr	r3, [pc, #96]	; (6b8 <MIL_STD_1553B1_Handler+0x68>)
 658:	603b      	str	r3, [r7, #0]
 65a:	4b18      	ldr	r3, [pc, #96]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 65c:	4a17      	ldr	r2, [pc, #92]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 65e:	6812      	ldr	r2, [r2, #0]
 660:	4917      	ldr	r1, [pc, #92]	; (6c0 <MIL_STD_1553B1_Handler+0x70>)
 662:	404a      	eors	r2, r1
 664:	601a      	str	r2, [r3, #0]
 666:	4b15      	ldr	r3, [pc, #84]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 668:	4a14      	ldr	r2, [pc, #80]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 66a:	6812      	ldr	r2, [r2, #0]
 66c:	4914      	ldr	r1, [pc, #80]	; (6c0 <MIL_STD_1553B1_Handler+0x70>)
 66e:	430a      	orrs	r2, r1
 670:	601a      	str	r2, [r3, #0]
 672:	4b11      	ldr	r3, [pc, #68]	; (6b8 <MIL_STD_1553B1_Handler+0x68>)
 674:	603b      	str	r3, [r7, #0]
 676:	2300      	movs	r3, #0
 678:	607b      	str	r3, [r7, #4]
 67a:	e00b      	b.n	694 <MIL_STD_1553B1_Handler+0x44>
 67c:	683b      	ldr	r3, [r7, #0]
 67e:	1d1a      	adds	r2, r3, #4
 680:	603a      	str	r2, [r7, #0]
 682:	681b      	ldr	r3, [r3, #0]
 684:	b299      	uxth	r1, r3
 686:	4b0f      	ldr	r3, [pc, #60]	; (6c4 <MIL_STD_1553B1_Handler+0x74>)
 688:	687a      	ldr	r2, [r7, #4]
 68a:	0052      	lsls	r2, r2, #1
 68c:	52d1      	strh	r1, [r2, r3]
 68e:	687b      	ldr	r3, [r7, #4]
 690:	3301      	adds	r3, #1
 692:	607b      	str	r3, [r7, #4]
 694:	687b      	ldr	r3, [r7, #4]
 696:	2b1f      	cmp	r3, #31
 698:	ddf0      	ble.n	67c <MIL_STD_1553B1_Handler+0x2c>
 69a:	4b08      	ldr	r3, [pc, #32]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 69c:	4a07      	ldr	r2, [pc, #28]	; (6bc <MIL_STD_1553B1_Handler+0x6c>)
 69e:	6812      	ldr	r2, [r2, #0]
 6a0:	0c12      	lsrs	r2, r2, #16
 6a2:	0412      	lsls	r2, r2, #16
 6a4:	601a      	str	r2, [r3, #0]
 6a6:	4b07      	ldr	r3, [pc, #28]	; (6c4 <MIL_STD_1553B1_Handler+0x74>)
 6a8:	2140      	movs	r1, #64	; 0x40
 6aa:	0018      	movs	r0, r3
 6ac:	f000 f8f4 	bl	898 <uart_send>
 6b0:	46c0      	nop			; (mov r8, r8)
 6b2:	46bd      	mov	sp, r7
 6b4:	b002      	add	sp, #8
 6b6:	bd80      	pop	{r7, pc}
 6b8:	40048080 	.word	0x40048080
 6bc:	400c0000 	.word	0x400c0000
 6c0:	0000ffff 	.word	0x0000ffff
 6c4:	20000004 	.word	0x20000004

000006c8 <handler_reset>:
 6c8:	b580      	push	{r7, lr}
 6ca:	b082      	sub	sp, #8
 6cc:	af00      	add	r7, sp, #0
 6ce:	4b11      	ldr	r3, [pc, #68]	; (714 <handler_reset+0x4c>)
 6d0:	607b      	str	r3, [r7, #4]
 6d2:	4b11      	ldr	r3, [pc, #68]	; (718 <handler_reset+0x50>)
 6d4:	603b      	str	r3, [r7, #0]
 6d6:	e007      	b.n	6e8 <handler_reset+0x20>
 6d8:	683b      	ldr	r3, [r7, #0]
 6da:	1d1a      	adds	r2, r3, #4
 6dc:	603a      	str	r2, [r7, #0]
 6de:	687a      	ldr	r2, [r7, #4]
 6e0:	1d11      	adds	r1, r2, #4
 6e2:	6079      	str	r1, [r7, #4]
 6e4:	6812      	ldr	r2, [r2, #0]
 6e6:	601a      	str	r2, [r3, #0]
 6e8:	683a      	ldr	r2, [r7, #0]
 6ea:	4b0c      	ldr	r3, [pc, #48]	; (71c <handler_reset+0x54>)
 6ec:	429a      	cmp	r2, r3
 6ee:	d3f3      	bcc.n	6d8 <handler_reset+0x10>
 6f0:	4b0b      	ldr	r3, [pc, #44]	; (720 <handler_reset+0x58>)
 6f2:	603b      	str	r3, [r7, #0]
 6f4:	e004      	b.n	700 <handler_reset+0x38>
 6f6:	683b      	ldr	r3, [r7, #0]
 6f8:	1d1a      	adds	r2, r3, #4
 6fa:	603a      	str	r2, [r7, #0]
 6fc:	2200      	movs	r2, #0
 6fe:	601a      	str	r2, [r3, #0]
 700:	683a      	ldr	r2, [r7, #0]
 702:	4b08      	ldr	r3, [pc, #32]	; (724 <handler_reset+0x5c>)
 704:	429a      	cmp	r2, r3
 706:	d3f6      	bcc.n	6f6 <handler_reset+0x2e>
 708:	f7ff fd62 	bl	1d0 <main>
 70c:	46c0      	nop			; (mov r8, r8)
 70e:	46bd      	mov	sp, r7
 710:	b002      	add	sp, #8
 712:	bd80      	pop	{r7, pc}
 714:	000009d8 	.word	0x000009d8
 718:	20000000 	.word	0x20000000
 71c:	20000004 	.word	0x20000004
 720:	20000004 	.word	0x20000004
 724:	20000460 	.word	0x20000460

00000728 <default_handler>:
 728:	b580      	push	{r7, lr}
 72a:	af00      	add	r7, sp, #0
 72c:	e7fe      	b.n	72c <default_handler+0x4>
 72e:	46c0      	nop			; (mov r8, r8)

00000730 <NVIC_EnableIRQ>:
 730:	b580      	push	{r7, lr}
 732:	b082      	sub	sp, #8
 734:	af00      	add	r7, sp, #0
 736:	0002      	movs	r2, r0
 738:	1dfb      	adds	r3, r7, #7
 73a:	701a      	strb	r2, [r3, #0]
 73c:	4909      	ldr	r1, [pc, #36]	; (764 <NVIC_EnableIRQ+0x34>)
 73e:	1dfb      	adds	r3, r7, #7
 740:	781b      	ldrb	r3, [r3, #0]
 742:	b25b      	sxtb	r3, r3
 744:	095b      	lsrs	r3, r3, #5
 746:	1dfa      	adds	r2, r7, #7
 748:	7812      	ldrb	r2, [r2, #0]
 74a:	0010      	movs	r0, r2
 74c:	221f      	movs	r2, #31
 74e:	4002      	ands	r2, r0
 750:	2001      	movs	r0, #1
 752:	4090      	lsls	r0, r2
 754:	0002      	movs	r2, r0
 756:	009b      	lsls	r3, r3, #2
 758:	505a      	str	r2, [r3, r1]
 75a:	46c0      	nop			; (mov r8, r8)
 75c:	46bd      	mov	sp, r7
 75e:	b002      	add	sp, #8
 760:	bd80      	pop	{r7, pc}
 762:	46c0      	nop			; (mov r8, r8)
 764:	e000e100 	.word	0xe000e100

00000768 <NVIC_DisableIRQ>:
 768:	b580      	push	{r7, lr}
 76a:	b082      	sub	sp, #8
 76c:	af00      	add	r7, sp, #0
 76e:	0002      	movs	r2, r0
 770:	1dfb      	adds	r3, r7, #7
 772:	701a      	strb	r2, [r3, #0]
 774:	4909      	ldr	r1, [pc, #36]	; (79c <NVIC_DisableIRQ+0x34>)
 776:	1dfb      	adds	r3, r7, #7
 778:	781b      	ldrb	r3, [r3, #0]
 77a:	b25b      	sxtb	r3, r3
 77c:	095b      	lsrs	r3, r3, #5
 77e:	1dfa      	adds	r2, r7, #7
 780:	7812      	ldrb	r2, [r2, #0]
 782:	0010      	movs	r0, r2
 784:	221f      	movs	r2, #31
 786:	4002      	ands	r2, r0
 788:	2001      	movs	r0, #1
 78a:	4090      	lsls	r0, r2
 78c:	0002      	movs	r2, r0
 78e:	3320      	adds	r3, #32
 790:	009b      	lsls	r3, r3, #2
 792:	505a      	str	r2, [r3, r1]
 794:	46c0      	nop			; (mov r8, r8)
 796:	46bd      	mov	sp, r7
 798:	b002      	add	sp, #8
 79a:	bd80      	pop	{r7, pc}
 79c:	e000e100 	.word	0xe000e100

000007a0 <uart_init>:
 7a0:	b580      	push	{r7, lr}
 7a2:	af00      	add	r7, sp, #0
 7a4:	4b1b      	ldr	r3, [pc, #108]	; (814 <uart_init+0x74>)
 7a6:	4a1b      	ldr	r2, [pc, #108]	; (814 <uart_init+0x74>)
 7a8:	69d2      	ldr	r2, [r2, #28]
 7aa:	2140      	movs	r1, #64	; 0x40
 7ac:	430a      	orrs	r2, r1
 7ae:	61da      	str	r2, [r3, #28]
 7b0:	4b18      	ldr	r3, [pc, #96]	; (814 <uart_init+0x74>)
 7b2:	4a18      	ldr	r2, [pc, #96]	; (814 <uart_init+0x74>)
 7b4:	6a92      	ldr	r2, [r2, #40]	; 0x28
 7b6:	2180      	movs	r1, #128	; 0x80
 7b8:	0449      	lsls	r1, r1, #17
 7ba:	430a      	orrs	r2, r1
 7bc:	629a      	str	r2, [r3, #40]	; 0x28
 7be:	4b16      	ldr	r3, [pc, #88]	; (818 <uart_init+0x78>)
 7c0:	2241      	movs	r2, #65	; 0x41
 7c2:	625a      	str	r2, [r3, #36]	; 0x24
 7c4:	4b14      	ldr	r3, [pc, #80]	; (818 <uart_init+0x78>)
 7c6:	2207      	movs	r2, #7
 7c8:	629a      	str	r2, [r3, #40]	; 0x28
 7ca:	4b13      	ldr	r3, [pc, #76]	; (818 <uart_init+0x78>)
 7cc:	4a12      	ldr	r2, [pc, #72]	; (818 <uart_init+0x78>)
 7ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
 7d0:	213f      	movs	r1, #63	; 0x3f
 7d2:	438a      	bics	r2, r1
 7d4:	635a      	str	r2, [r3, #52]	; 0x34
 7d6:	4b10      	ldr	r3, [pc, #64]	; (818 <uart_init+0x78>)
 7d8:	4a0f      	ldr	r2, [pc, #60]	; (818 <uart_init+0x78>)
 7da:	6b52      	ldr	r2, [r2, #52]	; 0x34
 7dc:	2124      	movs	r1, #36	; 0x24
 7de:	430a      	orrs	r2, r1
 7e0:	635a      	str	r2, [r3, #52]	; 0x34
 7e2:	4b0d      	ldr	r3, [pc, #52]	; (818 <uart_init+0x78>)
 7e4:	4a0c      	ldr	r2, [pc, #48]	; (818 <uart_init+0x78>)
 7e6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 7e8:	2160      	movs	r1, #96	; 0x60
 7ea:	430a      	orrs	r2, r1
 7ec:	62da      	str	r2, [r3, #44]	; 0x2c
 7ee:	4b0a      	ldr	r3, [pc, #40]	; (818 <uart_init+0x78>)
 7f0:	4a09      	ldr	r2, [pc, #36]	; (818 <uart_init+0x78>)
 7f2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 7f4:	4909      	ldr	r1, [pc, #36]	; (81c <uart_init+0x7c>)
 7f6:	430a      	orrs	r2, r1
 7f8:	631a      	str	r2, [r3, #48]	; 0x30
 7fa:	4b07      	ldr	r3, [pc, #28]	; (818 <uart_init+0x78>)
 7fc:	4a06      	ldr	r2, [pc, #24]	; (818 <uart_init+0x78>)
 7fe:	6b92      	ldr	r2, [r2, #56]	; 0x38
 800:	2110      	movs	r1, #16
 802:	430a      	orrs	r2, r1
 804:	639a      	str	r2, [r3, #56]	; 0x38
 806:	2006      	movs	r0, #6
 808:	f7ff ff92 	bl	730 <NVIC_EnableIRQ>
 80c:	46c0      	nop			; (mov r8, r8)
 80e:	46bd      	mov	sp, r7
 810:	bd80      	pop	{r7, pc}
 812:	46c0      	nop			; (mov r8, r8)
 814:	40020000 	.word	0x40020000
 818:	40030000 	.word	0x40030000
 81c:	00000301 	.word	0x00000301

00000820 <uart_read>:
 820:	b580      	push	{r7, lr}
 822:	b084      	sub	sp, #16
 824:	af00      	add	r7, sp, #0
 826:	6078      	str	r0, [r7, #4]
 828:	6039      	str	r1, [r7, #0]
 82a:	4b18      	ldr	r3, [pc, #96]	; (88c <uart_read+0x6c>)
 82c:	681a      	ldr	r2, [r3, #0]
 82e:	4b18      	ldr	r3, [pc, #96]	; (890 <uart_read+0x70>)
 830:	681b      	ldr	r3, [r3, #0]
 832:	429a      	cmp	r2, r3
 834:	d101      	bne.n	83a <uart_read+0x1a>
 836:	2300      	movs	r3, #0
 838:	e023      	b.n	882 <uart_read+0x62>
 83a:	2300      	movs	r3, #0
 83c:	60fb      	str	r3, [r7, #12]
 83e:	e01b      	b.n	878 <uart_read+0x58>
 840:	68fb      	ldr	r3, [r7, #12]
 842:	687a      	ldr	r2, [r7, #4]
 844:	18d2      	adds	r2, r2, r3
 846:	4b11      	ldr	r3, [pc, #68]	; (88c <uart_read+0x6c>)
 848:	681b      	ldr	r3, [r3, #0]
 84a:	4912      	ldr	r1, [pc, #72]	; (894 <uart_read+0x74>)
 84c:	5ccb      	ldrb	r3, [r1, r3]
 84e:	7013      	strb	r3, [r2, #0]
 850:	4b0e      	ldr	r3, [pc, #56]	; (88c <uart_read+0x6c>)
 852:	681b      	ldr	r3, [r3, #0]
 854:	3301      	adds	r3, #1
 856:	05db      	lsls	r3, r3, #23
 858:	0dda      	lsrs	r2, r3, #23
 85a:	4b0c      	ldr	r3, [pc, #48]	; (88c <uart_read+0x6c>)
 85c:	601a      	str	r2, [r3, #0]
 85e:	4b0b      	ldr	r3, [pc, #44]	; (88c <uart_read+0x6c>)
 860:	681a      	ldr	r2, [r3, #0]
 862:	4b0b      	ldr	r3, [pc, #44]	; (890 <uart_read+0x70>)
 864:	681b      	ldr	r3, [r3, #0]
 866:	429a      	cmp	r2, r3
 868:	d103      	bne.n	872 <uart_read+0x52>
 86a:	68fb      	ldr	r3, [r7, #12]
 86c:	3301      	adds	r3, #1
 86e:	60fb      	str	r3, [r7, #12]
 870:	e006      	b.n	880 <uart_read+0x60>
 872:	68fb      	ldr	r3, [r7, #12]
 874:	3301      	adds	r3, #1
 876:	60fb      	str	r3, [r7, #12]
 878:	68fa      	ldr	r2, [r7, #12]
 87a:	683b      	ldr	r3, [r7, #0]
 87c:	429a      	cmp	r2, r3
 87e:	dbdf      	blt.n	840 <uart_read+0x20>
 880:	68fb      	ldr	r3, [r7, #12]
 882:	0018      	movs	r0, r3
 884:	46bd      	mov	sp, r7
 886:	b004      	add	sp, #16
 888:	bd80      	pop	{r7, pc}
 88a:	46c0      	nop			; (mov r8, r8)
 88c:	2000045c 	.word	0x2000045c
 890:	20000458 	.word	0x20000458
 894:	20000258 	.word	0x20000258

00000898 <uart_send>:
 898:	b580      	push	{r7, lr}
 89a:	b084      	sub	sp, #16
 89c:	af00      	add	r7, sp, #0
 89e:	6078      	str	r0, [r7, #4]
 8a0:	6039      	str	r1, [r7, #0]
 8a2:	2006      	movs	r0, #6
 8a4:	f7ff ff60 	bl	768 <NVIC_DisableIRQ>
 8a8:	2300      	movs	r3, #0
 8aa:	60fb      	str	r3, [r7, #12]
 8ac:	e01b      	b.n	8e6 <uart_send+0x4e>
 8ae:	4b20      	ldr	r3, [pc, #128]	; (930 <uart_send+0x98>)
 8b0:	681b      	ldr	r3, [r3, #0]
 8b2:	68fa      	ldr	r2, [r7, #12]
 8b4:	6879      	ldr	r1, [r7, #4]
 8b6:	188a      	adds	r2, r1, r2
 8b8:	7811      	ldrb	r1, [r2, #0]
 8ba:	4a1e      	ldr	r2, [pc, #120]	; (934 <uart_send+0x9c>)
 8bc:	54d1      	strb	r1, [r2, r3]
 8be:	4b1c      	ldr	r3, [pc, #112]	; (930 <uart_send+0x98>)
 8c0:	681b      	ldr	r3, [r3, #0]
 8c2:	3301      	adds	r3, #1
 8c4:	05db      	lsls	r3, r3, #23
 8c6:	0dda      	lsrs	r2, r3, #23
 8c8:	4b19      	ldr	r3, [pc, #100]	; (930 <uart_send+0x98>)
 8ca:	601a      	str	r2, [r3, #0]
 8cc:	4b18      	ldr	r3, [pc, #96]	; (930 <uart_send+0x98>)
 8ce:	681a      	ldr	r2, [r3, #0]
 8d0:	4b19      	ldr	r3, [pc, #100]	; (938 <uart_send+0xa0>)
 8d2:	681b      	ldr	r3, [r3, #0]
 8d4:	429a      	cmp	r2, r3
 8d6:	d103      	bne.n	8e0 <uart_send+0x48>
 8d8:	68fb      	ldr	r3, [r7, #12]
 8da:	3301      	adds	r3, #1
 8dc:	60fb      	str	r3, [r7, #12]
 8de:	e006      	b.n	8ee <uart_send+0x56>
 8e0:	68fb      	ldr	r3, [r7, #12]
 8e2:	3301      	adds	r3, #1
 8e4:	60fb      	str	r3, [r7, #12]
 8e6:	68fa      	ldr	r2, [r7, #12]
 8e8:	683b      	ldr	r3, [r7, #0]
 8ea:	429a      	cmp	r2, r3
 8ec:	dbdf      	blt.n	8ae <uart_send+0x16>
 8ee:	4b13      	ldr	r3, [pc, #76]	; (93c <uart_send+0xa4>)
 8f0:	699b      	ldr	r3, [r3, #24]
 8f2:	2208      	movs	r2, #8
 8f4:	4013      	ands	r3, r2
 8f6:	d10c      	bne.n	912 <uart_send+0x7a>
 8f8:	4a10      	ldr	r2, [pc, #64]	; (93c <uart_send+0xa4>)
 8fa:	4b0f      	ldr	r3, [pc, #60]	; (938 <uart_send+0xa0>)
 8fc:	681b      	ldr	r3, [r3, #0]
 8fe:	490d      	ldr	r1, [pc, #52]	; (934 <uart_send+0x9c>)
 900:	5ccb      	ldrb	r3, [r1, r3]
 902:	6013      	str	r3, [r2, #0]
 904:	4b0c      	ldr	r3, [pc, #48]	; (938 <uart_send+0xa0>)
 906:	681b      	ldr	r3, [r3, #0]
 908:	3301      	adds	r3, #1
 90a:	05db      	lsls	r3, r3, #23
 90c:	0dda      	lsrs	r2, r3, #23
 90e:	4b0a      	ldr	r3, [pc, #40]	; (938 <uart_send+0xa0>)
 910:	601a      	str	r2, [r3, #0]
 912:	4b0a      	ldr	r3, [pc, #40]	; (93c <uart_send+0xa4>)
 914:	4a09      	ldr	r2, [pc, #36]	; (93c <uart_send+0xa4>)
 916:	6b92      	ldr	r2, [r2, #56]	; 0x38
 918:	2120      	movs	r1, #32
 91a:	430a      	orrs	r2, r1
 91c:	639a      	str	r2, [r3, #56]	; 0x38
 91e:	2006      	movs	r0, #6
 920:	f7ff ff06 	bl	730 <NVIC_EnableIRQ>
 924:	68fb      	ldr	r3, [r7, #12]
 926:	0018      	movs	r0, r3
 928:	46bd      	mov	sp, r7
 92a:	b004      	add	sp, #16
 92c:	bd80      	pop	{r7, pc}
 92e:	46c0      	nop			; (mov r8, r8)
 930:	20000254 	.word	0x20000254
 934:	20000050 	.word	0x20000050
 938:	20000250 	.word	0x20000250
 93c:	40030000 	.word	0x40030000

00000940 <UART1_Handler>:
 940:	b580      	push	{r7, lr}
 942:	af00      	add	r7, sp, #0
 944:	4b1a      	ldr	r3, [pc, #104]	; (9b0 <UART1_Handler+0x70>)
 946:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 948:	2220      	movs	r2, #32
 94a:	4013      	ands	r3, r2
 94c:	d019      	beq.n	982 <UART1_Handler+0x42>
 94e:	4b19      	ldr	r3, [pc, #100]	; (9b4 <UART1_Handler+0x74>)
 950:	681a      	ldr	r2, [r3, #0]
 952:	4b19      	ldr	r3, [pc, #100]	; (9b8 <UART1_Handler+0x78>)
 954:	681b      	ldr	r3, [r3, #0]
 956:	429a      	cmp	r2, r3
 958:	d106      	bne.n	968 <UART1_Handler+0x28>
 95a:	4b15      	ldr	r3, [pc, #84]	; (9b0 <UART1_Handler+0x70>)
 95c:	4a14      	ldr	r2, [pc, #80]	; (9b0 <UART1_Handler+0x70>)
 95e:	6b92      	ldr	r2, [r2, #56]	; 0x38
 960:	2120      	movs	r1, #32
 962:	438a      	bics	r2, r1
 964:	639a      	str	r2, [r3, #56]	; 0x38
 966:	e00c      	b.n	982 <UART1_Handler+0x42>
 968:	4a11      	ldr	r2, [pc, #68]	; (9b0 <UART1_Handler+0x70>)
 96a:	4b12      	ldr	r3, [pc, #72]	; (9b4 <UART1_Handler+0x74>)
 96c:	681b      	ldr	r3, [r3, #0]
 96e:	4913      	ldr	r1, [pc, #76]	; (9bc <UART1_Handler+0x7c>)
 970:	5ccb      	ldrb	r3, [r1, r3]
 972:	6013      	str	r3, [r2, #0]
 974:	4b0f      	ldr	r3, [pc, #60]	; (9b4 <UART1_Handler+0x74>)
 976:	681b      	ldr	r3, [r3, #0]
 978:	3301      	adds	r3, #1
 97a:	05db      	lsls	r3, r3, #23
 97c:	0dda      	lsrs	r2, r3, #23
 97e:	4b0d      	ldr	r3, [pc, #52]	; (9b4 <UART1_Handler+0x74>)
 980:	601a      	str	r2, [r3, #0]
 982:	4b0b      	ldr	r3, [pc, #44]	; (9b0 <UART1_Handler+0x70>)
 984:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 986:	2210      	movs	r2, #16
 988:	4013      	ands	r3, r2
 98a:	d00d      	beq.n	9a8 <UART1_Handler+0x68>
 98c:	4b0c      	ldr	r3, [pc, #48]	; (9c0 <UART1_Handler+0x80>)
 98e:	681a      	ldr	r2, [r3, #0]
 990:	4b07      	ldr	r3, [pc, #28]	; (9b0 <UART1_Handler+0x70>)
 992:	681b      	ldr	r3, [r3, #0]
 994:	b2d9      	uxtb	r1, r3
 996:	4b0b      	ldr	r3, [pc, #44]	; (9c4 <UART1_Handler+0x84>)
 998:	5499      	strb	r1, [r3, r2]
 99a:	4b09      	ldr	r3, [pc, #36]	; (9c0 <UART1_Handler+0x80>)
 99c:	681b      	ldr	r3, [r3, #0]
 99e:	3301      	adds	r3, #1
 9a0:	05db      	lsls	r3, r3, #23
 9a2:	0dda      	lsrs	r2, r3, #23
 9a4:	4b06      	ldr	r3, [pc, #24]	; (9c0 <UART1_Handler+0x80>)
 9a6:	601a      	str	r2, [r3, #0]
 9a8:	46c0      	nop			; (mov r8, r8)
 9aa:	46bd      	mov	sp, r7
 9ac:	bd80      	pop	{r7, pc}
 9ae:	46c0      	nop			; (mov r8, r8)
 9b0:	40030000 	.word	0x40030000
 9b4:	20000250 	.word	0x20000250
 9b8:	20000254 	.word	0x20000254
 9bc:	20000050 	.word	0x20000050
 9c0:	20000458 	.word	0x20000458
 9c4:	20000258 	.word	0x20000258
 9c8:	6c6c6568 	.word	0x6c6c6568
 9cc:	6f77206f 	.word	0x6f77206f
 9d0:	0d646c72 	.word	0x0d646c72
 9d4:	0000000a 	.word	0x0000000a
