
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 39 06 00 00 99 06 00 00 99 06 00 00     ... 9...........
	...
  2c:	99 06 00 00 00 00 00 00 00 00 00 00 99 06 00 00     ................
  3c:	75 05 00 00 99 06 00 00 ed 05 00 00 99 06 00 00     u...............
  4c:	99 06 00 00 99 06 00 00 99 06 00 00 99 06 00 00     ................
  5c:	b1 08 00 00 99 06 00 00 99 06 00 00 99 06 00 00     ................
  6c:	99 06 00 00 99 06 00 00 8d 05 00 00 99 06 00 00     ................
  7c:	99 06 00 00 99 06 00 00 99 06 00 00 99 06 00 00     ................
  8c:	99 06 00 00 99 06 00 00 99 06 00 00 99 06 00 00     ................
  9c:	99 06 00 00 99 06 00 00 00 00 00 00 00 00 00 00     ................
  ac:	99 06 00 00 99 06 00 00 99 06 00 00 99 06 00 00     ................
  bc:	99 06 00 00                                         ....

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
 1cc:	20000050 	.word	0x20000050

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
 1e4:	f000 f9b0 	bl	548 <SystemInit>
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
 204:	00000938 	.word	0x00000938
 208:	20000048 	.word	0x20000048
 20c:	2000004c 	.word	0x2000004c

00000210 <PortConfig>:
 210:	b580      	push	{r7, lr}
 212:	af00      	add	r7, sp, #0
 214:	4b45      	ldr	r3, [pc, #276]	; (32c <PortConfig+0x11c>)
 216:	4a45      	ldr	r2, [pc, #276]	; (32c <PortConfig+0x11c>)
 218:	69d2      	ldr	r2, [r2, #28]
 21a:	2180      	movs	r1, #128	; 0x80
 21c:	0449      	lsls	r1, r1, #17
 21e:	430a      	orrs	r2, r1
 220:	61da      	str	r2, [r3, #28]
 222:	4b43      	ldr	r3, [pc, #268]	; (330 <PortConfig+0x120>)
 224:	4a42      	ldr	r2, [pc, #264]	; (330 <PortConfig+0x120>)
 226:	6892      	ldr	r2, [r2, #8]
 228:	4942      	ldr	r1, [pc, #264]	; (334 <PortConfig+0x124>)
 22a:	400a      	ands	r2, r1
 22c:	609a      	str	r2, [r3, #8]
 22e:	4b40      	ldr	r3, [pc, #256]	; (330 <PortConfig+0x120>)
 230:	4a3f      	ldr	r2, [pc, #252]	; (330 <PortConfig+0x120>)
 232:	6892      	ldr	r2, [r2, #8]
 234:	21a0      	movs	r1, #160	; 0xa0
 236:	0549      	lsls	r1, r1, #21
 238:	430a      	orrs	r2, r1
 23a:	609a      	str	r2, [r3, #8]
 23c:	4b3c      	ldr	r3, [pc, #240]	; (330 <PortConfig+0x120>)
 23e:	4a3c      	ldr	r2, [pc, #240]	; (330 <PortConfig+0x120>)
 240:	68d2      	ldr	r2, [r2, #12]
 242:	21c0      	movs	r1, #192	; 0xc0
 244:	01c9      	lsls	r1, r1, #7
 246:	430a      	orrs	r2, r1
 248:	60da      	str	r2, [r3, #12]
 24a:	4b39      	ldr	r3, [pc, #228]	; (330 <PortConfig+0x120>)
 24c:	4a38      	ldr	r2, [pc, #224]	; (330 <PortConfig+0x120>)
 24e:	6992      	ldr	r2, [r2, #24]
 250:	21f0      	movs	r1, #240	; 0xf0
 252:	0589      	lsls	r1, r1, #22
 254:	430a      	orrs	r2, r1
 256:	619a      	str	r2, [r3, #24]
 258:	4b35      	ldr	r3, [pc, #212]	; (330 <PortConfig+0x120>)
 25a:	4a35      	ldr	r2, [pc, #212]	; (330 <PortConfig+0x120>)
 25c:	6812      	ldr	r2, [r2, #0]
 25e:	4936      	ldr	r1, [pc, #216]	; (338 <PortConfig+0x128>)
 260:	400a      	ands	r2, r1
 262:	601a      	str	r2, [r3, #0]
 264:	4b31      	ldr	r3, [pc, #196]	; (32c <PortConfig+0x11c>)
 266:	4a31      	ldr	r2, [pc, #196]	; (32c <PortConfig+0x11c>)
 268:	69d2      	ldr	r2, [r2, #28]
 26a:	2180      	movs	r1, #128	; 0x80
 26c:	0409      	lsls	r1, r1, #16
 26e:	430a      	orrs	r2, r1
 270:	61da      	str	r2, [r3, #28]
 272:	4b2e      	ldr	r3, [pc, #184]	; (32c <PortConfig+0x11c>)
 274:	4a2d      	ldr	r2, [pc, #180]	; (32c <PortConfig+0x11c>)
 276:	69d2      	ldr	r2, [r2, #28]
 278:	2180      	movs	r1, #128	; 0x80
 27a:	0449      	lsls	r1, r1, #17
 27c:	430a      	orrs	r2, r1
 27e:	61da      	str	r2, [r3, #28]
 280:	4b2e      	ldr	r3, [pc, #184]	; (33c <PortConfig+0x12c>)
 282:	4a2e      	ldr	r2, [pc, #184]	; (33c <PortConfig+0x12c>)
 284:	6892      	ldr	r2, [r2, #8]
 286:	0192      	lsls	r2, r2, #6
 288:	0992      	lsrs	r2, r2, #6
 28a:	609a      	str	r2, [r3, #8]
 28c:	4b2b      	ldr	r3, [pc, #172]	; (33c <PortConfig+0x12c>)
 28e:	4a2b      	ldr	r2, [pc, #172]	; (33c <PortConfig+0x12c>)
 290:	6892      	ldr	r2, [r2, #8]
 292:	21a8      	movs	r1, #168	; 0xa8
 294:	05c9      	lsls	r1, r1, #23
 296:	430a      	orrs	r2, r1
 298:	609a      	str	r2, [r3, #8]
 29a:	4b28      	ldr	r3, [pc, #160]	; (33c <PortConfig+0x12c>)
 29c:	4a27      	ldr	r2, [pc, #156]	; (33c <PortConfig+0x12c>)
 29e:	68d2      	ldr	r2, [r2, #12]
 2a0:	21e0      	movs	r1, #224	; 0xe0
 2a2:	0209      	lsls	r1, r1, #8
 2a4:	430a      	orrs	r2, r1
 2a6:	60da      	str	r2, [r3, #12]
 2a8:	4b24      	ldr	r3, [pc, #144]	; (33c <PortConfig+0x12c>)
 2aa:	4a24      	ldr	r2, [pc, #144]	; (33c <PortConfig+0x12c>)
 2ac:	6992      	ldr	r2, [r2, #24]
 2ae:	21fc      	movs	r1, #252	; 0xfc
 2b0:	0609      	lsls	r1, r1, #24
 2b2:	430a      	orrs	r2, r1
 2b4:	619a      	str	r2, [r3, #24]
 2b6:	4b1e      	ldr	r3, [pc, #120]	; (330 <PortConfig+0x120>)
 2b8:	4a1d      	ldr	r2, [pc, #116]	; (330 <PortConfig+0x120>)
 2ba:	6892      	ldr	r2, [r2, #8]
 2bc:	0b92      	lsrs	r2, r2, #14
 2be:	0392      	lsls	r2, r2, #14
 2c0:	609a      	str	r2, [r3, #8]
 2c2:	4b1b      	ldr	r3, [pc, #108]	; (330 <PortConfig+0x120>)
 2c4:	4a1a      	ldr	r2, [pc, #104]	; (330 <PortConfig+0x120>)
 2c6:	6892      	ldr	r2, [r2, #8]
 2c8:	491d      	ldr	r1, [pc, #116]	; (340 <PortConfig+0x130>)
 2ca:	430a      	orrs	r2, r1
 2cc:	609a      	str	r2, [r3, #8]
 2ce:	4b18      	ldr	r3, [pc, #96]	; (330 <PortConfig+0x120>)
 2d0:	4a17      	ldr	r2, [pc, #92]	; (330 <PortConfig+0x120>)
 2d2:	68d2      	ldr	r2, [r2, #12]
 2d4:	217f      	movs	r1, #127	; 0x7f
 2d6:	430a      	orrs	r2, r1
 2d8:	60da      	str	r2, [r3, #12]
 2da:	4b15      	ldr	r3, [pc, #84]	; (330 <PortConfig+0x120>)
 2dc:	4a14      	ldr	r2, [pc, #80]	; (330 <PortConfig+0x120>)
 2de:	6992      	ldr	r2, [r2, #24]
 2e0:	4918      	ldr	r1, [pc, #96]	; (344 <PortConfig+0x134>)
 2e2:	430a      	orrs	r2, r1
 2e4:	619a      	str	r2, [r3, #24]
 2e6:	4b12      	ldr	r3, [pc, #72]	; (330 <PortConfig+0x120>)
 2e8:	4a11      	ldr	r2, [pc, #68]	; (330 <PortConfig+0x120>)
 2ea:	68d2      	ldr	r2, [r2, #12]
 2ec:	2180      	movs	r1, #128	; 0x80
 2ee:	430a      	orrs	r2, r1
 2f0:	60da      	str	r2, [r3, #12]
 2f2:	4b0f      	ldr	r3, [pc, #60]	; (330 <PortConfig+0x120>)
 2f4:	4a0e      	ldr	r2, [pc, #56]	; (330 <PortConfig+0x120>)
 2f6:	6852      	ldr	r2, [r2, #4]
 2f8:	2180      	movs	r1, #128	; 0x80
 2fa:	430a      	orrs	r2, r1
 2fc:	605a      	str	r2, [r3, #4]
 2fe:	4b0c      	ldr	r3, [pc, #48]	; (330 <PortConfig+0x120>)
 300:	4a0b      	ldr	r2, [pc, #44]	; (330 <PortConfig+0x120>)
 302:	6892      	ldr	r2, [r2, #8]
 304:	4910      	ldr	r1, [pc, #64]	; (348 <PortConfig+0x138>)
 306:	400a      	ands	r2, r1
 308:	609a      	str	r2, [r3, #8]
 30a:	4b09      	ldr	r3, [pc, #36]	; (330 <PortConfig+0x120>)
 30c:	4a08      	ldr	r2, [pc, #32]	; (330 <PortConfig+0x120>)
 30e:	6992      	ldr	r2, [r2, #24]
 310:	21c0      	movs	r1, #192	; 0xc0
 312:	0209      	lsls	r1, r1, #8
 314:	430a      	orrs	r2, r1
 316:	619a      	str	r2, [r3, #24]
 318:	4b05      	ldr	r3, [pc, #20]	; (330 <PortConfig+0x120>)
 31a:	4a05      	ldr	r2, [pc, #20]	; (330 <PortConfig+0x120>)
 31c:	6812      	ldr	r2, [r2, #0]
 31e:	2180      	movs	r1, #128	; 0x80
 320:	438a      	bics	r2, r1
 322:	601a      	str	r2, [r3, #0]
 324:	46c0      	nop			; (mov r8, r8)
 326:	46bd      	mov	sp, r7
 328:	bd80      	pop	{r7, pc}
 32a:	46c0      	nop			; (mov r8, r8)
 32c:	40020000 	.word	0x40020000
 330:	400c0000 	.word	0x400c0000
 334:	c3ffffff 	.word	0xc3ffffff
 338:	ffff9fff 	.word	0xffff9fff
 33c:	400b8000 	.word	0x400b8000
 340:	00001555 	.word	0x00001555
 344:	00003fff 	.word	0x00003fff
 348:	ffff3fff 	.word	0xffff3fff

0000034c <ClkConfig>:
 34c:	b580      	push	{r7, lr}
 34e:	af00      	add	r7, sp, #0
 350:	4b18      	ldr	r3, [pc, #96]	; (3b4 <ClkConfig+0x68>)
 352:	4a18      	ldr	r2, [pc, #96]	; (3b4 <ClkConfig+0x68>)
 354:	6892      	ldr	r2, [r2, #8]
 356:	2101      	movs	r1, #1
 358:	430a      	orrs	r2, r1
 35a:	609a      	str	r2, [r3, #8]
 35c:	46c0      	nop			; (mov r8, r8)
 35e:	4b15      	ldr	r3, [pc, #84]	; (3b4 <ClkConfig+0x68>)
 360:	681b      	ldr	r3, [r3, #0]
 362:	2204      	movs	r2, #4
 364:	4013      	ands	r3, r2
 366:	d0fa      	beq.n	35e <ClkConfig+0x12>
 368:	4b12      	ldr	r3, [pc, #72]	; (3b4 <ClkConfig+0x68>)
 36a:	4a12      	ldr	r2, [pc, #72]	; (3b4 <ClkConfig+0x68>)
 36c:	68d2      	ldr	r2, [r2, #12]
 36e:	2102      	movs	r1, #2
 370:	430a      	orrs	r2, r1
 372:	60da      	str	r2, [r3, #12]
 374:	4b0f      	ldr	r3, [pc, #60]	; (3b4 <ClkConfig+0x68>)
 376:	4a10      	ldr	r2, [pc, #64]	; (3b8 <ClkConfig+0x6c>)
 378:	605a      	str	r2, [r3, #4]
 37a:	46c0      	nop			; (mov r8, r8)
 37c:	4b0d      	ldr	r3, [pc, #52]	; (3b4 <ClkConfig+0x68>)
 37e:	681b      	ldr	r3, [r3, #0]
 380:	2202      	movs	r2, #2
 382:	4013      	ands	r3, r2
 384:	d0fa      	beq.n	37c <ClkConfig+0x30>
 386:	4b0d      	ldr	r3, [pc, #52]	; (3bc <ClkConfig+0x70>)
 388:	4a0c      	ldr	r2, [pc, #48]	; (3bc <ClkConfig+0x70>)
 38a:	6812      	ldr	r2, [r2, #0]
 38c:	2120      	movs	r1, #32
 38e:	430a      	orrs	r2, r1
 390:	601a      	str	r2, [r3, #0]
 392:	4b08      	ldr	r3, [pc, #32]	; (3b4 <ClkConfig+0x68>)
 394:	4a07      	ldr	r2, [pc, #28]	; (3b4 <ClkConfig+0x68>)
 396:	68d2      	ldr	r2, [r2, #12]
 398:	2180      	movs	r1, #128	; 0x80
 39a:	0049      	lsls	r1, r1, #1
 39c:	430a      	orrs	r2, r1
 39e:	60da      	str	r2, [r3, #12]
 3a0:	4b04      	ldr	r3, [pc, #16]	; (3b4 <ClkConfig+0x68>)
 3a2:	4a04      	ldr	r2, [pc, #16]	; (3b4 <ClkConfig+0x68>)
 3a4:	68d2      	ldr	r2, [r2, #12]
 3a6:	2104      	movs	r1, #4
 3a8:	430a      	orrs	r2, r1
 3aa:	60da      	str	r2, [r3, #12]
 3ac:	46c0      	nop			; (mov r8, r8)
 3ae:	46bd      	mov	sp, r7
 3b0:	bd80      	pop	{r7, pc}
 3b2:	46c0      	nop			; (mov r8, r8)
 3b4:	40020000 	.word	0x40020000
 3b8:	00000e04 	.word	0x00000e04
 3bc:	40018000 	.word	0x40018000

000003c0 <TimerConfig>:
 3c0:	b580      	push	{r7, lr}
 3c2:	af00      	add	r7, sp, #0
 3c4:	4b34      	ldr	r3, [pc, #208]	; (498 <_stack_size+0x98>)
 3c6:	4a34      	ldr	r2, [pc, #208]	; (498 <_stack_size+0x98>)
 3c8:	69d2      	ldr	r2, [r2, #28]
 3ca:	2180      	movs	r1, #128	; 0x80
 3cc:	0309      	lsls	r1, r1, #12
 3ce:	430a      	orrs	r2, r1
 3d0:	61da      	str	r2, [r3, #28]
 3d2:	4b31      	ldr	r3, [pc, #196]	; (498 <_stack_size+0x98>)
 3d4:	4a30      	ldr	r2, [pc, #192]	; (498 <_stack_size+0x98>)
 3d6:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3d8:	2180      	movs	r1, #128	; 0x80
 3da:	04c9      	lsls	r1, r1, #19
 3dc:	430a      	orrs	r2, r1
 3de:	629a      	str	r2, [r3, #40]	; 0x28
 3e0:	4b2d      	ldr	r3, [pc, #180]	; (498 <_stack_size+0x98>)
 3e2:	4a2d      	ldr	r2, [pc, #180]	; (498 <_stack_size+0x98>)
 3e4:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3e6:	492d      	ldr	r1, [pc, #180]	; (49c <_stack_size+0x9c>)
 3e8:	400a      	ands	r2, r1
 3ea:	629a      	str	r2, [r3, #40]	; 0x28
 3ec:	4b2c      	ldr	r3, [pc, #176]	; (4a0 <_stack_size+0xa0>)
 3ee:	2200      	movs	r2, #0
 3f0:	601a      	str	r2, [r3, #0]
 3f2:	4b2b      	ldr	r3, [pc, #172]	; (4a0 <_stack_size+0xa0>)
 3f4:	2277      	movs	r2, #119	; 0x77
 3f6:	605a      	str	r2, [r3, #4]
 3f8:	4b29      	ldr	r3, [pc, #164]	; (4a0 <_stack_size+0xa0>)
 3fa:	4a2a      	ldr	r2, [pc, #168]	; (4a4 <_stack_size+0xa4>)
 3fc:	609a      	str	r2, [r3, #8]
 3fe:	4b28      	ldr	r3, [pc, #160]	; (4a0 <_stack_size+0xa0>)
 400:	22fa      	movs	r2, #250	; 0xfa
 402:	00d2      	lsls	r2, r2, #3
 404:	611a      	str	r2, [r3, #16]
 406:	4b26      	ldr	r3, [pc, #152]	; (4a0 <_stack_size+0xa0>)
 408:	4a25      	ldr	r2, [pc, #148]	; (4a0 <_stack_size+0xa0>)
 40a:	6a12      	ldr	r2, [r2, #32]
 40c:	4926      	ldr	r1, [pc, #152]	; (4a8 <_stack_size+0xa8>)
 40e:	400a      	ands	r2, r1
 410:	621a      	str	r2, [r3, #32]
 412:	4b23      	ldr	r3, [pc, #140]	; (4a0 <_stack_size+0xa0>)
 414:	4a22      	ldr	r2, [pc, #136]	; (4a0 <_stack_size+0xa0>)
 416:	6a12      	ldr	r2, [r2, #32]
 418:	21e0      	movs	r1, #224	; 0xe0
 41a:	0109      	lsls	r1, r1, #4
 41c:	430a      	orrs	r2, r1
 41e:	621a      	str	r2, [r3, #32]
 420:	4b1f      	ldr	r3, [pc, #124]	; (4a0 <_stack_size+0xa0>)
 422:	4a1f      	ldr	r2, [pc, #124]	; (4a0 <_stack_size+0xa0>)
 424:	6b12      	ldr	r2, [r2, #48]	; 0x30
 426:	210f      	movs	r1, #15
 428:	438a      	bics	r2, r1
 42a:	631a      	str	r2, [r3, #48]	; 0x30
 42c:	4b1c      	ldr	r3, [pc, #112]	; (4a0 <_stack_size+0xa0>)
 42e:	4a1c      	ldr	r2, [pc, #112]	; (4a0 <_stack_size+0xa0>)
 430:	6b12      	ldr	r2, [r2, #48]	; 0x30
 432:	210c      	movs	r1, #12
 434:	430a      	orrs	r2, r1
 436:	631a      	str	r2, [r3, #48]	; 0x30
 438:	4b19      	ldr	r3, [pc, #100]	; (4a0 <_stack_size+0xa0>)
 43a:	4a19      	ldr	r2, [pc, #100]	; (4a0 <_stack_size+0xa0>)
 43c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 43e:	2101      	movs	r1, #1
 440:	430a      	orrs	r2, r1
 442:	631a      	str	r2, [r3, #48]	; 0x30
 444:	4b16      	ldr	r3, [pc, #88]	; (4a0 <_stack_size+0xa0>)
 446:	4a16      	ldr	r2, [pc, #88]	; (4a0 <_stack_size+0xa0>)
 448:	6b12      	ldr	r2, [r2, #48]	; 0x30
 44a:	4918      	ldr	r1, [pc, #96]	; (4ac <_stack_size+0xac>)
 44c:	400a      	ands	r2, r1
 44e:	631a      	str	r2, [r3, #48]	; 0x30
 450:	4b13      	ldr	r3, [pc, #76]	; (4a0 <_stack_size+0xa0>)
 452:	4a13      	ldr	r2, [pc, #76]	; (4a0 <_stack_size+0xa0>)
 454:	6b12      	ldr	r2, [r2, #48]	; 0x30
 456:	21c0      	movs	r1, #192	; 0xc0
 458:	0109      	lsls	r1, r1, #4
 45a:	430a      	orrs	r2, r1
 45c:	631a      	str	r2, [r3, #48]	; 0x30
 45e:	4b10      	ldr	r3, [pc, #64]	; (4a0 <_stack_size+0xa0>)
 460:	4a0f      	ldr	r2, [pc, #60]	; (4a0 <_stack_size+0xa0>)
 462:	6b12      	ldr	r2, [r2, #48]	; 0x30
 464:	2180      	movs	r1, #128	; 0x80
 466:	0049      	lsls	r1, r1, #1
 468:	430a      	orrs	r2, r1
 46a:	631a      	str	r2, [r3, #48]	; 0x30
 46c:	4b0c      	ldr	r3, [pc, #48]	; (4a0 <_stack_size+0xa0>)
 46e:	4a0c      	ldr	r2, [pc, #48]	; (4a0 <_stack_size+0xa0>)
 470:	6c12      	ldr	r2, [r2, #64]	; 0x40
 472:	21c8      	movs	r1, #200	; 0xc8
 474:	0209      	lsls	r1, r1, #8
 476:	430a      	orrs	r2, r1
 478:	641a      	str	r2, [r3, #64]	; 0x40
 47a:	4b09      	ldr	r3, [pc, #36]	; (4a0 <_stack_size+0xa0>)
 47c:	4a08      	ldr	r2, [pc, #32]	; (4a0 <_stack_size+0xa0>)
 47e:	6d92      	ldr	r2, [r2, #88]	; 0x58
 480:	2102      	movs	r1, #2
 482:	430a      	orrs	r2, r1
 484:	659a      	str	r2, [r3, #88]	; 0x58
 486:	4b06      	ldr	r3, [pc, #24]	; (4a0 <_stack_size+0xa0>)
 488:	2201      	movs	r2, #1
 48a:	60da      	str	r2, [r3, #12]
 48c:	200d      	movs	r0, #13
 48e:	f7ff fe17 	bl	c0 <NVIC_EnableIRQ>
 492:	46c0      	nop			; (mov r8, r8)
 494:	46bd      	mov	sp, r7
 496:	bd80      	pop	{r7, pc}
 498:	40020000 	.word	0x40020000
 49c:	ff00ffff 	.word	0xff00ffff
 4a0:	40098000 	.word	0x40098000
 4a4:	00001387 	.word	0x00001387
 4a8:	fffff1ff 	.word	0xfffff1ff
 4ac:	fffff0ff 	.word	0xfffff0ff

000004b0 <mil_std_1533_init_bc>:
 4b0:	b580      	push	{r7, lr}
 4b2:	b082      	sub	sp, #8
 4b4:	af00      	add	r7, sp, #0
 4b6:	4b1f      	ldr	r3, [pc, #124]	; (534 <mil_std_1533_init_bc+0x84>)
 4b8:	603b      	str	r3, [r7, #0]
 4ba:	4b1f      	ldr	r3, [pc, #124]	; (538 <mil_std_1533_init_bc+0x88>)
 4bc:	4a1e      	ldr	r2, [pc, #120]	; (538 <mil_std_1533_init_bc+0x88>)
 4be:	69d2      	ldr	r2, [r2, #28]
 4c0:	2180      	movs	r1, #128	; 0x80
 4c2:	0089      	lsls	r1, r1, #2
 4c4:	430a      	orrs	r2, r1
 4c6:	61da      	str	r2, [r3, #28]
 4c8:	4b1b      	ldr	r3, [pc, #108]	; (538 <mil_std_1533_init_bc+0x88>)
 4ca:	4a1b      	ldr	r2, [pc, #108]	; (538 <mil_std_1533_init_bc+0x88>)
 4cc:	6b52      	ldr	r2, [r2, #52]	; 0x34
 4ce:	2180      	movs	r1, #128	; 0x80
 4d0:	0489      	lsls	r1, r1, #18
 4d2:	430a      	orrs	r2, r1
 4d4:	635a      	str	r2, [r3, #52]	; 0x34
 4d6:	4a19      	ldr	r2, [pc, #100]	; (53c <mil_std_1533_init_bc+0x8c>)
 4d8:	2380      	movs	r3, #128	; 0x80
 4da:	015b      	lsls	r3, r3, #5
 4dc:	2101      	movs	r1, #1
 4de:	50d1      	str	r1, [r2, r3]
 4e0:	4a16      	ldr	r2, [pc, #88]	; (53c <mil_std_1533_init_bc+0x8c>)
 4e2:	2380      	movs	r3, #128	; 0x80
 4e4:	015b      	lsls	r3, r3, #5
 4e6:	4916      	ldr	r1, [pc, #88]	; (540 <mil_std_1533_init_bc+0x90>)
 4e8:	50d1      	str	r1, [r2, r3]
 4ea:	4914      	ldr	r1, [pc, #80]	; (53c <mil_std_1533_init_bc+0x8c>)
 4ec:	4a13      	ldr	r2, [pc, #76]	; (53c <mil_std_1533_init_bc+0x8c>)
 4ee:	2381      	movs	r3, #129	; 0x81
 4f0:	015b      	lsls	r3, r3, #5
 4f2:	58d3      	ldr	r3, [r2, r3]
 4f4:	2204      	movs	r2, #4
 4f6:	431a      	orrs	r2, r3
 4f8:	2381      	movs	r3, #129	; 0x81
 4fa:	015b      	lsls	r3, r3, #5
 4fc:	50ca      	str	r2, [r1, r3]
 4fe:	2001      	movs	r0, #1
 500:	f7ff fdde 	bl	c0 <NVIC_EnableIRQ>
 504:	4a0d      	ldr	r2, [pc, #52]	; (53c <mil_std_1533_init_bc+0x8c>)
 506:	4b0f      	ldr	r3, [pc, #60]	; (544 <mil_std_1533_init_bc+0x94>)
 508:	2100      	movs	r1, #0
 50a:	50d1      	str	r1, [r2, r3]
 50c:	2300      	movs	r3, #0
 50e:	607b      	str	r3, [r7, #4]
 510:	e008      	b.n	524 <mil_std_1533_init_bc+0x74>
 512:	683b      	ldr	r3, [r7, #0]
 514:	1d1a      	adds	r2, r3, #4
 516:	603a      	str	r2, [r7, #0]
 518:	687a      	ldr	r2, [r7, #4]
 51a:	b292      	uxth	r2, r2
 51c:	601a      	str	r2, [r3, #0]
 51e:	687b      	ldr	r3, [r7, #4]
 520:	3301      	adds	r3, #1
 522:	607b      	str	r3, [r7, #4]
 524:	687b      	ldr	r3, [r7, #4]
 526:	2b1f      	cmp	r3, #31
 528:	ddf3      	ble.n	512 <mil_std_1533_init_bc+0x62>
 52a:	46c0      	nop			; (mov r8, r8)
 52c:	46bd      	mov	sp, r7
 52e:	b002      	add	sp, #8
 530:	bd80      	pop	{r7, pc}
 532:	46c0      	nop			; (mov r8, r8)
 534:	40048080 	.word	0x40048080
 538:	40020000 	.word	0x40020000
 53c:	40048000 	.word	0x40048000
 540:	0003c014 	.word	0x0003c014
 544:	0000100c 	.word	0x0000100c

00000548 <SystemInit>:
 548:	b580      	push	{r7, lr}
 54a:	af00      	add	r7, sp, #0
 54c:	f7ff fefe 	bl	34c <ClkConfig>
 550:	f7ff fe5e 	bl	210 <PortConfig>
 554:	f7ff ff34 	bl	3c0 <TimerConfig>
 558:	f000 f8da 	bl	710 <uart_init>
 55c:	f7ff ffa8 	bl	4b0 <mil_std_1533_init_bc>
 560:	4b03      	ldr	r3, [pc, #12]	; (570 <SystemInit+0x28>)
 562:	0018      	movs	r0, r3
 564:	f7ff fdf8 	bl	158 <SysTick_Config>
 568:	46c0      	nop			; (mov r8, r8)
 56a:	46bd      	mov	sp, r7
 56c:	bd80      	pop	{r7, pc}
 56e:	46c0      	nop			; (mov r8, r8)
 570:	0001d4c0 	.word	0x0001d4c0

00000574 <SysTick_Handler>:
 574:	b580      	push	{r7, lr}
 576:	af00      	add	r7, sp, #0
 578:	4b03      	ldr	r3, [pc, #12]	; (588 <SysTick_Handler+0x14>)
 57a:	681b      	ldr	r3, [r3, #0]
 57c:	1c5a      	adds	r2, r3, #1
 57e:	4b02      	ldr	r3, [pc, #8]	; (588 <SysTick_Handler+0x14>)
 580:	601a      	str	r2, [r3, #0]
 582:	46c0      	nop			; (mov r8, r8)
 584:	46bd      	mov	sp, r7
 586:	bd80      	pop	{r7, pc}
 588:	20000050 	.word	0x20000050

0000058c <TIMER4_Handler>:
 58c:	b580      	push	{r7, lr}
 58e:	b082      	sub	sp, #8
 590:	af00      	add	r7, sp, #0
 592:	4b11      	ldr	r3, [pc, #68]	; (5d8 <TIMER4_Handler+0x4c>)
 594:	607b      	str	r3, [r7, #4]
 596:	4b11      	ldr	r3, [pc, #68]	; (5dc <TIMER4_Handler+0x50>)
 598:	2200      	movs	r2, #0
 59a:	655a      	str	r2, [r3, #84]	; 0x54
 59c:	4b10      	ldr	r3, [pc, #64]	; (5e0 <TIMER4_Handler+0x54>)
 59e:	4a10      	ldr	r2, [pc, #64]	; (5e0 <TIMER4_Handler+0x54>)
 5a0:	6812      	ldr	r2, [r2, #0]
 5a2:	2180      	movs	r1, #128	; 0x80
 5a4:	404a      	eors	r2, r1
 5a6:	601a      	str	r2, [r3, #0]
 5a8:	490e      	ldr	r1, [pc, #56]	; (5e4 <TIMER4_Handler+0x58>)
 5aa:	4a0e      	ldr	r2, [pc, #56]	; (5e4 <TIMER4_Handler+0x58>)
 5ac:	4b0e      	ldr	r3, [pc, #56]	; (5e8 <TIMER4_Handler+0x5c>)
 5ae:	58d3      	ldr	r3, [r2, r3]
 5b0:	22e1      	movs	r2, #225	; 0xe1
 5b2:	0152      	lsls	r2, r2, #5
 5b4:	4313      	orrs	r3, r2
 5b6:	4a0c      	ldr	r2, [pc, #48]	; (5e8 <TIMER4_Handler+0x5c>)
 5b8:	508b      	str	r3, [r1, r2]
 5ba:	490a      	ldr	r1, [pc, #40]	; (5e4 <TIMER4_Handler+0x58>)
 5bc:	4a09      	ldr	r2, [pc, #36]	; (5e4 <TIMER4_Handler+0x58>)
 5be:	2380      	movs	r3, #128	; 0x80
 5c0:	015b      	lsls	r3, r3, #5
 5c2:	58d3      	ldr	r3, [r2, r3]
 5c4:	2202      	movs	r2, #2
 5c6:	431a      	orrs	r2, r3
 5c8:	2380      	movs	r3, #128	; 0x80
 5ca:	015b      	lsls	r3, r3, #5
 5cc:	50ca      	str	r2, [r1, r3]
 5ce:	46c0      	nop			; (mov r8, r8)
 5d0:	46bd      	mov	sp, r7
 5d2:	b002      	add	sp, #8
 5d4:	bd80      	pop	{r7, pc}
 5d6:	46c0      	nop			; (mov r8, r8)
 5d8:	40048080 	.word	0x40048080
 5dc:	40098000 	.word	0x40098000
 5e0:	400c0000 	.word	0x400c0000
 5e4:	40048000 	.word	0x40048000
 5e8:	0000100c 	.word	0x0000100c

000005ec <MIL_STD_1553B1_Handler>:
 5ec:	b580      	push	{r7, lr}
 5ee:	b082      	sub	sp, #8
 5f0:	af00      	add	r7, sp, #0
 5f2:	4b0f      	ldr	r3, [pc, #60]	; (630 <MIL_STD_1553B1_Handler+0x44>)
 5f4:	603b      	str	r3, [r7, #0]
 5f6:	4b0e      	ldr	r3, [pc, #56]	; (630 <MIL_STD_1553B1_Handler+0x44>)
 5f8:	603b      	str	r3, [r7, #0]
 5fa:	2300      	movs	r3, #0
 5fc:	607b      	str	r3, [r7, #4]
 5fe:	e00b      	b.n	618 <MIL_STD_1553B1_Handler+0x2c>
 600:	683b      	ldr	r3, [r7, #0]
 602:	1d1a      	adds	r2, r3, #4
 604:	603a      	str	r2, [r7, #0]
 606:	681b      	ldr	r3, [r3, #0]
 608:	b299      	uxth	r1, r3
 60a:	4b0a      	ldr	r3, [pc, #40]	; (634 <MIL_STD_1553B1_Handler+0x48>)
 60c:	687a      	ldr	r2, [r7, #4]
 60e:	0052      	lsls	r2, r2, #1
 610:	52d1      	strh	r1, [r2, r3]
 612:	687b      	ldr	r3, [r7, #4]
 614:	3301      	adds	r3, #1
 616:	607b      	str	r3, [r7, #4]
 618:	687b      	ldr	r3, [r7, #4]
 61a:	2b1f      	cmp	r3, #31
 61c:	ddf0      	ble.n	600 <MIL_STD_1553B1_Handler+0x14>
 61e:	4b05      	ldr	r3, [pc, #20]	; (634 <MIL_STD_1553B1_Handler+0x48>)
 620:	2140      	movs	r1, #64	; 0x40
 622:	0018      	movs	r0, r3
 624:	f000 f8f0 	bl	808 <uart_send>
 628:	46c0      	nop			; (mov r8, r8)
 62a:	46bd      	mov	sp, r7
 62c:	b002      	add	sp, #8
 62e:	bd80      	pop	{r7, pc}
 630:	40048080 	.word	0x40048080
 634:	20000008 	.word	0x20000008

00000638 <handler_reset>:
 638:	b580      	push	{r7, lr}
 63a:	b082      	sub	sp, #8
 63c:	af00      	add	r7, sp, #0
 63e:	4b11      	ldr	r3, [pc, #68]	; (684 <handler_reset+0x4c>)
 640:	607b      	str	r3, [r7, #4]
 642:	4b11      	ldr	r3, [pc, #68]	; (688 <handler_reset+0x50>)
 644:	603b      	str	r3, [r7, #0]
 646:	e007      	b.n	658 <handler_reset+0x20>
 648:	683b      	ldr	r3, [r7, #0]
 64a:	1d1a      	adds	r2, r3, #4
 64c:	603a      	str	r2, [r7, #0]
 64e:	687a      	ldr	r2, [r7, #4]
 650:	1d11      	adds	r1, r2, #4
 652:	6079      	str	r1, [r7, #4]
 654:	6812      	ldr	r2, [r2, #0]
 656:	601a      	str	r2, [r3, #0]
 658:	683a      	ldr	r2, [r7, #0]
 65a:	4b0c      	ldr	r3, [pc, #48]	; (68c <handler_reset+0x54>)
 65c:	429a      	cmp	r2, r3
 65e:	d3f3      	bcc.n	648 <handler_reset+0x10>
 660:	4b0b      	ldr	r3, [pc, #44]	; (690 <handler_reset+0x58>)
 662:	603b      	str	r3, [r7, #0]
 664:	e004      	b.n	670 <handler_reset+0x38>
 666:	683b      	ldr	r3, [r7, #0]
 668:	1d1a      	adds	r2, r3, #4
 66a:	603a      	str	r2, [r7, #0]
 66c:	2200      	movs	r2, #0
 66e:	601a      	str	r2, [r3, #0]
 670:	683a      	ldr	r2, [r7, #0]
 672:	4b08      	ldr	r3, [pc, #32]	; (694 <handler_reset+0x5c>)
 674:	429a      	cmp	r2, r3
 676:	d3f6      	bcc.n	666 <handler_reset+0x2e>
 678:	f7ff fdaa 	bl	1d0 <main>
 67c:	46c0      	nop			; (mov r8, r8)
 67e:	46bd      	mov	sp, r7
 680:	b002      	add	sp, #8
 682:	bd80      	pop	{r7, pc}
 684:	00000948 	.word	0x00000948
 688:	20000000 	.word	0x20000000
 68c:	20000008 	.word	0x20000008
 690:	20000008 	.word	0x20000008
 694:	20000464 	.word	0x20000464

00000698 <default_handler>:
 698:	b580      	push	{r7, lr}
 69a:	af00      	add	r7, sp, #0
 69c:	e7fe      	b.n	69c <default_handler+0x4>
 69e:	46c0      	nop			; (mov r8, r8)

000006a0 <NVIC_EnableIRQ>:
 6a0:	b580      	push	{r7, lr}
 6a2:	b082      	sub	sp, #8
 6a4:	af00      	add	r7, sp, #0
 6a6:	0002      	movs	r2, r0
 6a8:	1dfb      	adds	r3, r7, #7
 6aa:	701a      	strb	r2, [r3, #0]
 6ac:	4909      	ldr	r1, [pc, #36]	; (6d4 <NVIC_EnableIRQ+0x34>)
 6ae:	1dfb      	adds	r3, r7, #7
 6b0:	781b      	ldrb	r3, [r3, #0]
 6b2:	b25b      	sxtb	r3, r3
 6b4:	095b      	lsrs	r3, r3, #5
 6b6:	1dfa      	adds	r2, r7, #7
 6b8:	7812      	ldrb	r2, [r2, #0]
 6ba:	0010      	movs	r0, r2
 6bc:	221f      	movs	r2, #31
 6be:	4002      	ands	r2, r0
 6c0:	2001      	movs	r0, #1
 6c2:	4090      	lsls	r0, r2
 6c4:	0002      	movs	r2, r0
 6c6:	009b      	lsls	r3, r3, #2
 6c8:	505a      	str	r2, [r3, r1]
 6ca:	46c0      	nop			; (mov r8, r8)
 6cc:	46bd      	mov	sp, r7
 6ce:	b002      	add	sp, #8
 6d0:	bd80      	pop	{r7, pc}
 6d2:	46c0      	nop			; (mov r8, r8)
 6d4:	e000e100 	.word	0xe000e100

000006d8 <NVIC_DisableIRQ>:
 6d8:	b580      	push	{r7, lr}
 6da:	b082      	sub	sp, #8
 6dc:	af00      	add	r7, sp, #0
 6de:	0002      	movs	r2, r0
 6e0:	1dfb      	adds	r3, r7, #7
 6e2:	701a      	strb	r2, [r3, #0]
 6e4:	4909      	ldr	r1, [pc, #36]	; (70c <NVIC_DisableIRQ+0x34>)
 6e6:	1dfb      	adds	r3, r7, #7
 6e8:	781b      	ldrb	r3, [r3, #0]
 6ea:	b25b      	sxtb	r3, r3
 6ec:	095b      	lsrs	r3, r3, #5
 6ee:	1dfa      	adds	r2, r7, #7
 6f0:	7812      	ldrb	r2, [r2, #0]
 6f2:	0010      	movs	r0, r2
 6f4:	221f      	movs	r2, #31
 6f6:	4002      	ands	r2, r0
 6f8:	2001      	movs	r0, #1
 6fa:	4090      	lsls	r0, r2
 6fc:	0002      	movs	r2, r0
 6fe:	3320      	adds	r3, #32
 700:	009b      	lsls	r3, r3, #2
 702:	505a      	str	r2, [r3, r1]
 704:	46c0      	nop			; (mov r8, r8)
 706:	46bd      	mov	sp, r7
 708:	b002      	add	sp, #8
 70a:	bd80      	pop	{r7, pc}
 70c:	e000e100 	.word	0xe000e100

00000710 <uart_init>:
 710:	b580      	push	{r7, lr}
 712:	af00      	add	r7, sp, #0
 714:	4b1b      	ldr	r3, [pc, #108]	; (784 <uart_init+0x74>)
 716:	4a1b      	ldr	r2, [pc, #108]	; (784 <uart_init+0x74>)
 718:	69d2      	ldr	r2, [r2, #28]
 71a:	2180      	movs	r1, #128	; 0x80
 71c:	430a      	orrs	r2, r1
 71e:	61da      	str	r2, [r3, #28]
 720:	4b18      	ldr	r3, [pc, #96]	; (784 <uart_init+0x74>)
 722:	4a18      	ldr	r2, [pc, #96]	; (784 <uart_init+0x74>)
 724:	6a92      	ldr	r2, [r2, #40]	; 0x28
 726:	2180      	movs	r1, #128	; 0x80
 728:	0489      	lsls	r1, r1, #18
 72a:	430a      	orrs	r2, r1
 72c:	629a      	str	r2, [r3, #40]	; 0x28
 72e:	4b16      	ldr	r3, [pc, #88]	; (788 <uart_init+0x78>)
 730:	2241      	movs	r2, #65	; 0x41
 732:	625a      	str	r2, [r3, #36]	; 0x24
 734:	4b14      	ldr	r3, [pc, #80]	; (788 <uart_init+0x78>)
 736:	2207      	movs	r2, #7
 738:	629a      	str	r2, [r3, #40]	; 0x28
 73a:	4b13      	ldr	r3, [pc, #76]	; (788 <uart_init+0x78>)
 73c:	4a12      	ldr	r2, [pc, #72]	; (788 <uart_init+0x78>)
 73e:	6b52      	ldr	r2, [r2, #52]	; 0x34
 740:	213f      	movs	r1, #63	; 0x3f
 742:	438a      	bics	r2, r1
 744:	635a      	str	r2, [r3, #52]	; 0x34
 746:	4b10      	ldr	r3, [pc, #64]	; (788 <uart_init+0x78>)
 748:	4a0f      	ldr	r2, [pc, #60]	; (788 <uart_init+0x78>)
 74a:	6b52      	ldr	r2, [r2, #52]	; 0x34
 74c:	2124      	movs	r1, #36	; 0x24
 74e:	430a      	orrs	r2, r1
 750:	635a      	str	r2, [r3, #52]	; 0x34
 752:	4b0d      	ldr	r3, [pc, #52]	; (788 <uart_init+0x78>)
 754:	4a0c      	ldr	r2, [pc, #48]	; (788 <uart_init+0x78>)
 756:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
 758:	2160      	movs	r1, #96	; 0x60
 75a:	430a      	orrs	r2, r1
 75c:	62da      	str	r2, [r3, #44]	; 0x2c
 75e:	4b0a      	ldr	r3, [pc, #40]	; (788 <uart_init+0x78>)
 760:	4a09      	ldr	r2, [pc, #36]	; (788 <uart_init+0x78>)
 762:	6b12      	ldr	r2, [r2, #48]	; 0x30
 764:	4909      	ldr	r1, [pc, #36]	; (78c <uart_init+0x7c>)
 766:	430a      	orrs	r2, r1
 768:	631a      	str	r2, [r3, #48]	; 0x30
 76a:	4b07      	ldr	r3, [pc, #28]	; (788 <uart_init+0x78>)
 76c:	4a06      	ldr	r2, [pc, #24]	; (788 <uart_init+0x78>)
 76e:	6b92      	ldr	r2, [r2, #56]	; 0x38
 770:	2110      	movs	r1, #16
 772:	430a      	orrs	r2, r1
 774:	639a      	str	r2, [r3, #56]	; 0x38
 776:	2007      	movs	r0, #7
 778:	f7ff ff92 	bl	6a0 <NVIC_EnableIRQ>
 77c:	46c0      	nop			; (mov r8, r8)
 77e:	46bd      	mov	sp, r7
 780:	bd80      	pop	{r7, pc}
 782:	46c0      	nop			; (mov r8, r8)
 784:	40020000 	.word	0x40020000
 788:	40038000 	.word	0x40038000
 78c:	00000301 	.word	0x00000301

00000790 <uart_read>:
 790:	b580      	push	{r7, lr}
 792:	b084      	sub	sp, #16
 794:	af00      	add	r7, sp, #0
 796:	6078      	str	r0, [r7, #4]
 798:	6039      	str	r1, [r7, #0]
 79a:	4b18      	ldr	r3, [pc, #96]	; (7fc <uart_read+0x6c>)
 79c:	681a      	ldr	r2, [r3, #0]
 79e:	4b18      	ldr	r3, [pc, #96]	; (800 <uart_read+0x70>)
 7a0:	681b      	ldr	r3, [r3, #0]
 7a2:	429a      	cmp	r2, r3
 7a4:	d101      	bne.n	7aa <uart_read+0x1a>
 7a6:	2300      	movs	r3, #0
 7a8:	e023      	b.n	7f2 <uart_read+0x62>
 7aa:	2300      	movs	r3, #0
 7ac:	60fb      	str	r3, [r7, #12]
 7ae:	e01b      	b.n	7e8 <uart_read+0x58>
 7b0:	68fb      	ldr	r3, [r7, #12]
 7b2:	687a      	ldr	r2, [r7, #4]
 7b4:	18d2      	adds	r2, r2, r3
 7b6:	4b11      	ldr	r3, [pc, #68]	; (7fc <uart_read+0x6c>)
 7b8:	681b      	ldr	r3, [r3, #0]
 7ba:	4912      	ldr	r1, [pc, #72]	; (804 <uart_read+0x74>)
 7bc:	5ccb      	ldrb	r3, [r1, r3]
 7be:	7013      	strb	r3, [r2, #0]
 7c0:	4b0e      	ldr	r3, [pc, #56]	; (7fc <uart_read+0x6c>)
 7c2:	681b      	ldr	r3, [r3, #0]
 7c4:	3301      	adds	r3, #1
 7c6:	05db      	lsls	r3, r3, #23
 7c8:	0dda      	lsrs	r2, r3, #23
 7ca:	4b0c      	ldr	r3, [pc, #48]	; (7fc <uart_read+0x6c>)
 7cc:	601a      	str	r2, [r3, #0]
 7ce:	4b0b      	ldr	r3, [pc, #44]	; (7fc <uart_read+0x6c>)
 7d0:	681a      	ldr	r2, [r3, #0]
 7d2:	4b0b      	ldr	r3, [pc, #44]	; (800 <uart_read+0x70>)
 7d4:	681b      	ldr	r3, [r3, #0]
 7d6:	429a      	cmp	r2, r3
 7d8:	d103      	bne.n	7e2 <uart_read+0x52>
 7da:	68fb      	ldr	r3, [r7, #12]
 7dc:	3301      	adds	r3, #1
 7de:	60fb      	str	r3, [r7, #12]
 7e0:	e006      	b.n	7f0 <uart_read+0x60>
 7e2:	68fb      	ldr	r3, [r7, #12]
 7e4:	3301      	adds	r3, #1
 7e6:	60fb      	str	r3, [r7, #12]
 7e8:	68fa      	ldr	r2, [r7, #12]
 7ea:	683b      	ldr	r3, [r7, #0]
 7ec:	429a      	cmp	r2, r3
 7ee:	dbdf      	blt.n	7b0 <uart_read+0x20>
 7f0:	68fb      	ldr	r3, [r7, #12]
 7f2:	0018      	movs	r0, r3
 7f4:	46bd      	mov	sp, r7
 7f6:	b004      	add	sp, #16
 7f8:	bd80      	pop	{r7, pc}
 7fa:	46c0      	nop			; (mov r8, r8)
 7fc:	20000460 	.word	0x20000460
 800:	2000045c 	.word	0x2000045c
 804:	2000025c 	.word	0x2000025c

00000808 <uart_send>:
 808:	b580      	push	{r7, lr}
 80a:	b084      	sub	sp, #16
 80c:	af00      	add	r7, sp, #0
 80e:	6078      	str	r0, [r7, #4]
 810:	6039      	str	r1, [r7, #0]
 812:	2007      	movs	r0, #7
 814:	f7ff ff60 	bl	6d8 <NVIC_DisableIRQ>
 818:	2300      	movs	r3, #0
 81a:	60fb      	str	r3, [r7, #12]
 81c:	e01b      	b.n	856 <uart_send+0x4e>
 81e:	4b20      	ldr	r3, [pc, #128]	; (8a0 <uart_send+0x98>)
 820:	681b      	ldr	r3, [r3, #0]
 822:	68fa      	ldr	r2, [r7, #12]
 824:	6879      	ldr	r1, [r7, #4]
 826:	188a      	adds	r2, r1, r2
 828:	7811      	ldrb	r1, [r2, #0]
 82a:	4a1e      	ldr	r2, [pc, #120]	; (8a4 <uart_send+0x9c>)
 82c:	54d1      	strb	r1, [r2, r3]
 82e:	4b1c      	ldr	r3, [pc, #112]	; (8a0 <uart_send+0x98>)
 830:	681b      	ldr	r3, [r3, #0]
 832:	3301      	adds	r3, #1
 834:	05db      	lsls	r3, r3, #23
 836:	0dda      	lsrs	r2, r3, #23
 838:	4b19      	ldr	r3, [pc, #100]	; (8a0 <uart_send+0x98>)
 83a:	601a      	str	r2, [r3, #0]
 83c:	4b18      	ldr	r3, [pc, #96]	; (8a0 <uart_send+0x98>)
 83e:	681a      	ldr	r2, [r3, #0]
 840:	4b19      	ldr	r3, [pc, #100]	; (8a8 <uart_send+0xa0>)
 842:	681b      	ldr	r3, [r3, #0]
 844:	429a      	cmp	r2, r3
 846:	d103      	bne.n	850 <uart_send+0x48>
 848:	68fb      	ldr	r3, [r7, #12]
 84a:	3301      	adds	r3, #1
 84c:	60fb      	str	r3, [r7, #12]
 84e:	e006      	b.n	85e <uart_send+0x56>
 850:	68fb      	ldr	r3, [r7, #12]
 852:	3301      	adds	r3, #1
 854:	60fb      	str	r3, [r7, #12]
 856:	68fa      	ldr	r2, [r7, #12]
 858:	683b      	ldr	r3, [r7, #0]
 85a:	429a      	cmp	r2, r3
 85c:	dbdf      	blt.n	81e <uart_send+0x16>
 85e:	4b13      	ldr	r3, [pc, #76]	; (8ac <uart_send+0xa4>)
 860:	699b      	ldr	r3, [r3, #24]
 862:	2208      	movs	r2, #8
 864:	4013      	ands	r3, r2
 866:	d10c      	bne.n	882 <uart_send+0x7a>
 868:	4a10      	ldr	r2, [pc, #64]	; (8ac <uart_send+0xa4>)
 86a:	4b0f      	ldr	r3, [pc, #60]	; (8a8 <uart_send+0xa0>)
 86c:	681b      	ldr	r3, [r3, #0]
 86e:	490d      	ldr	r1, [pc, #52]	; (8a4 <uart_send+0x9c>)
 870:	5ccb      	ldrb	r3, [r1, r3]
 872:	6013      	str	r3, [r2, #0]
 874:	4b0c      	ldr	r3, [pc, #48]	; (8a8 <uart_send+0xa0>)
 876:	681b      	ldr	r3, [r3, #0]
 878:	3301      	adds	r3, #1
 87a:	05db      	lsls	r3, r3, #23
 87c:	0dda      	lsrs	r2, r3, #23
 87e:	4b0a      	ldr	r3, [pc, #40]	; (8a8 <uart_send+0xa0>)
 880:	601a      	str	r2, [r3, #0]
 882:	4b0a      	ldr	r3, [pc, #40]	; (8ac <uart_send+0xa4>)
 884:	4a09      	ldr	r2, [pc, #36]	; (8ac <uart_send+0xa4>)
 886:	6b92      	ldr	r2, [r2, #56]	; 0x38
 888:	2120      	movs	r1, #32
 88a:	430a      	orrs	r2, r1
 88c:	639a      	str	r2, [r3, #56]	; 0x38
 88e:	2007      	movs	r0, #7
 890:	f7ff ff06 	bl	6a0 <NVIC_EnableIRQ>
 894:	68fb      	ldr	r3, [r7, #12]
 896:	0018      	movs	r0, r3
 898:	46bd      	mov	sp, r7
 89a:	b004      	add	sp, #16
 89c:	bd80      	pop	{r7, pc}
 89e:	46c0      	nop			; (mov r8, r8)
 8a0:	20000258 	.word	0x20000258
 8a4:	20000054 	.word	0x20000054
 8a8:	20000254 	.word	0x20000254
 8ac:	40038000 	.word	0x40038000

000008b0 <UART2_Handler>:
 8b0:	b580      	push	{r7, lr}
 8b2:	af00      	add	r7, sp, #0
 8b4:	4b1a      	ldr	r3, [pc, #104]	; (920 <UART2_Handler+0x70>)
 8b6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8b8:	2220      	movs	r2, #32
 8ba:	4013      	ands	r3, r2
 8bc:	d019      	beq.n	8f2 <UART2_Handler+0x42>
 8be:	4b19      	ldr	r3, [pc, #100]	; (924 <UART2_Handler+0x74>)
 8c0:	681a      	ldr	r2, [r3, #0]
 8c2:	4b19      	ldr	r3, [pc, #100]	; (928 <UART2_Handler+0x78>)
 8c4:	681b      	ldr	r3, [r3, #0]
 8c6:	429a      	cmp	r2, r3
 8c8:	d106      	bne.n	8d8 <UART2_Handler+0x28>
 8ca:	4b15      	ldr	r3, [pc, #84]	; (920 <UART2_Handler+0x70>)
 8cc:	4a14      	ldr	r2, [pc, #80]	; (920 <UART2_Handler+0x70>)
 8ce:	6b92      	ldr	r2, [r2, #56]	; 0x38
 8d0:	2120      	movs	r1, #32
 8d2:	438a      	bics	r2, r1
 8d4:	639a      	str	r2, [r3, #56]	; 0x38
 8d6:	e00c      	b.n	8f2 <UART2_Handler+0x42>
 8d8:	4a11      	ldr	r2, [pc, #68]	; (920 <UART2_Handler+0x70>)
 8da:	4b12      	ldr	r3, [pc, #72]	; (924 <UART2_Handler+0x74>)
 8dc:	681b      	ldr	r3, [r3, #0]
 8de:	4913      	ldr	r1, [pc, #76]	; (92c <UART2_Handler+0x7c>)
 8e0:	5ccb      	ldrb	r3, [r1, r3]
 8e2:	6013      	str	r3, [r2, #0]
 8e4:	4b0f      	ldr	r3, [pc, #60]	; (924 <UART2_Handler+0x74>)
 8e6:	681b      	ldr	r3, [r3, #0]
 8e8:	3301      	adds	r3, #1
 8ea:	05db      	lsls	r3, r3, #23
 8ec:	0dda      	lsrs	r2, r3, #23
 8ee:	4b0d      	ldr	r3, [pc, #52]	; (924 <UART2_Handler+0x74>)
 8f0:	601a      	str	r2, [r3, #0]
 8f2:	4b0b      	ldr	r3, [pc, #44]	; (920 <UART2_Handler+0x70>)
 8f4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
 8f6:	2210      	movs	r2, #16
 8f8:	4013      	ands	r3, r2
 8fa:	d00d      	beq.n	918 <UART2_Handler+0x68>
 8fc:	4b0c      	ldr	r3, [pc, #48]	; (930 <UART2_Handler+0x80>)
 8fe:	681a      	ldr	r2, [r3, #0]
 900:	4b07      	ldr	r3, [pc, #28]	; (920 <UART2_Handler+0x70>)
 902:	681b      	ldr	r3, [r3, #0]
 904:	b2d9      	uxtb	r1, r3
 906:	4b0b      	ldr	r3, [pc, #44]	; (934 <UART2_Handler+0x84>)
 908:	5499      	strb	r1, [r3, r2]
 90a:	4b09      	ldr	r3, [pc, #36]	; (930 <UART2_Handler+0x80>)
 90c:	681b      	ldr	r3, [r3, #0]
 90e:	3301      	adds	r3, #1
 910:	05db      	lsls	r3, r3, #23
 912:	0dda      	lsrs	r2, r3, #23
 914:	4b06      	ldr	r3, [pc, #24]	; (930 <UART2_Handler+0x80>)
 916:	601a      	str	r2, [r3, #0]
 918:	46c0      	nop			; (mov r8, r8)
 91a:	46bd      	mov	sp, r7
 91c:	bd80      	pop	{r7, pc}
 91e:	46c0      	nop			; (mov r8, r8)
 920:	40038000 	.word	0x40038000
 924:	20000254 	.word	0x20000254
 928:	20000258 	.word	0x20000258
 92c:	20000054 	.word	0x20000054
 930:	2000045c 	.word	0x2000045c
 934:	2000025c 	.word	0x2000025c
 938:	6c6c6568 	.word	0x6c6c6568
 93c:	6f77206f 	.word	0x6f77206f
 940:	0d646c72 	.word	0x0d646c72
 944:	0000000a 	.word	0x0000000a
