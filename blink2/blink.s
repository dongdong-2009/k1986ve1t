
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 b1 02 00 00 11 03 00 00 11 03 00 00     ... ............
	...
  2c:	11 03 00 00 00 00 00 00 00 00 00 00 11 03 00 00     ................
  3c:	99 02 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  4c:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  5c:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  6c:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  7c:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  8c:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  9c:	11 03 00 00 11 03 00 00 00 00 00 00 00 00 00 00     ................
  ac:	11 03 00 00 11 03 00 00 11 03 00 00 11 03 00 00     ................
  bc:	11 03 00 00                                         ....

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
 194:	20000008 	.word	0x20000008

00000198 <main>:
 198:	b580      	push	{r7, lr}
 19a:	af00      	add	r7, sp, #0
 19c:	f000 f83c 	bl	218 <ClkConfig>
 1a0:	f000 f816 	bl	1d0 <PortConfig>
 1a4:	4b07      	ldr	r3, [pc, #28]	; (1c4 <main+0x2c>)
 1a6:	2200      	movs	r2, #0
 1a8:	601a      	str	r2, [r3, #0]
 1aa:	4b07      	ldr	r3, [pc, #28]	; (1c8 <main+0x30>)
 1ac:	4a06      	ldr	r2, [pc, #24]	; (1c8 <main+0x30>)
 1ae:	6812      	ldr	r2, [r2, #0]
 1b0:	4906      	ldr	r1, [pc, #24]	; (1cc <main+0x34>)
 1b2:	404a      	eors	r2, r1
 1b4:	601a      	str	r2, [r3, #0]
 1b6:	23fa      	movs	r3, #250	; 0xfa
 1b8:	009b      	lsls	r3, r3, #2
 1ba:	0018      	movs	r0, r3
 1bc:	f7ff ffd6 	bl	16c <sleep>
 1c0:	e7f3      	b.n	1aa <main+0x12>
 1c2:	46c0      	nop			; (mov r8, r8)
 1c4:	20000000 	.word	0x20000000
 1c8:	400c0000 	.word	0x400c0000
 1cc:	0000ffff 	.word	0x0000ffff

000001d0 <PortConfig>:
 1d0:	b580      	push	{r7, lr}
 1d2:	af00      	add	r7, sp, #0
 1d4:	4b0d      	ldr	r3, [pc, #52]	; (20c <PortConfig+0x3c>)
 1d6:	4a0d      	ldr	r2, [pc, #52]	; (20c <PortConfig+0x3c>)
 1d8:	69d2      	ldr	r2, [r2, #28]
 1da:	2180      	movs	r1, #128	; 0x80
 1dc:	0449      	lsls	r1, r1, #17
 1de:	430a      	orrs	r2, r1
 1e0:	61da      	str	r2, [r3, #28]
 1e2:	4b0b      	ldr	r3, [pc, #44]	; (210 <PortConfig+0x40>)
 1e4:	2200      	movs	r2, #0
 1e6:	609a      	str	r2, [r3, #8]
 1e8:	4b09      	ldr	r3, [pc, #36]	; (210 <PortConfig+0x40>)
 1ea:	2200      	movs	r2, #0
 1ec:	601a      	str	r2, [r3, #0]
 1ee:	4b08      	ldr	r3, [pc, #32]	; (210 <PortConfig+0x40>)
 1f0:	22ff      	movs	r2, #255	; 0xff
 1f2:	01d2      	lsls	r2, r2, #7
 1f4:	605a      	str	r2, [r3, #4]
 1f6:	4b06      	ldr	r3, [pc, #24]	; (210 <PortConfig+0x40>)
 1f8:	22ff      	movs	r2, #255	; 0xff
 1fa:	01d2      	lsls	r2, r2, #7
 1fc:	60da      	str	r2, [r3, #12]
 1fe:	4b04      	ldr	r3, [pc, #16]	; (210 <PortConfig+0x40>)
 200:	4a04      	ldr	r2, [pc, #16]	; (214 <PortConfig+0x44>)
 202:	619a      	str	r2, [r3, #24]
 204:	46c0      	nop			; (mov r8, r8)
 206:	46bd      	mov	sp, r7
 208:	bd80      	pop	{r7, pc}
 20a:	46c0      	nop			; (mov r8, r8)
 20c:	40020000 	.word	0x40020000
 210:	400c0000 	.word	0x400c0000
 214:	3fffc000 	.word	0x3fffc000

00000218 <ClkConfig>:
 218:	b580      	push	{r7, lr}
 21a:	af00      	add	r7, sp, #0
 21c:	4b1a      	ldr	r3, [pc, #104]	; (288 <ClkConfig+0x70>)
 21e:	4a1a      	ldr	r2, [pc, #104]	; (288 <ClkConfig+0x70>)
 220:	6892      	ldr	r2, [r2, #8]
 222:	2101      	movs	r1, #1
 224:	430a      	orrs	r2, r1
 226:	609a      	str	r2, [r3, #8]
 228:	46c0      	nop			; (mov r8, r8)
 22a:	4b17      	ldr	r3, [pc, #92]	; (288 <ClkConfig+0x70>)
 22c:	681b      	ldr	r3, [r3, #0]
 22e:	2204      	movs	r2, #4
 230:	4013      	ands	r3, r2
 232:	d0fa      	beq.n	22a <ClkConfig+0x12>
 234:	4b14      	ldr	r3, [pc, #80]	; (288 <ClkConfig+0x70>)
 236:	4a14      	ldr	r2, [pc, #80]	; (288 <ClkConfig+0x70>)
 238:	68d2      	ldr	r2, [r2, #12]
 23a:	2102      	movs	r1, #2
 23c:	430a      	orrs	r2, r1
 23e:	60da      	str	r2, [r3, #12]
 240:	4b11      	ldr	r3, [pc, #68]	; (288 <ClkConfig+0x70>)
 242:	4a12      	ldr	r2, [pc, #72]	; (28c <ClkConfig+0x74>)
 244:	605a      	str	r2, [r3, #4]
 246:	46c0      	nop			; (mov r8, r8)
 248:	4b0f      	ldr	r3, [pc, #60]	; (288 <ClkConfig+0x70>)
 24a:	681b      	ldr	r3, [r3, #0]
 24c:	2202      	movs	r2, #2
 24e:	4013      	ands	r3, r2
 250:	d0fa      	beq.n	248 <ClkConfig+0x30>
 252:	4b0f      	ldr	r3, [pc, #60]	; (290 <ClkConfig+0x78>)
 254:	4a0e      	ldr	r2, [pc, #56]	; (290 <ClkConfig+0x78>)
 256:	6812      	ldr	r2, [r2, #0]
 258:	2120      	movs	r1, #32
 25a:	430a      	orrs	r2, r1
 25c:	601a      	str	r2, [r3, #0]
 25e:	4b0a      	ldr	r3, [pc, #40]	; (288 <ClkConfig+0x70>)
 260:	4a09      	ldr	r2, [pc, #36]	; (288 <ClkConfig+0x70>)
 262:	68d2      	ldr	r2, [r2, #12]
 264:	2180      	movs	r1, #128	; 0x80
 266:	0049      	lsls	r1, r1, #1
 268:	430a      	orrs	r2, r1
 26a:	60da      	str	r2, [r3, #12]
 26c:	4b06      	ldr	r3, [pc, #24]	; (288 <ClkConfig+0x70>)
 26e:	4a06      	ldr	r2, [pc, #24]	; (288 <ClkConfig+0x70>)
 270:	68d2      	ldr	r2, [r2, #12]
 272:	2104      	movs	r1, #4
 274:	430a      	orrs	r2, r1
 276:	60da      	str	r2, [r3, #12]
 278:	4b06      	ldr	r3, [pc, #24]	; (294 <ClkConfig+0x7c>)
 27a:	0018      	movs	r0, r3
 27c:	f7ff ff50 	bl	120 <SysTick_Config>
 280:	46c0      	nop			; (mov r8, r8)
 282:	46bd      	mov	sp, r7
 284:	bd80      	pop	{r7, pc}
 286:	46c0      	nop			; (mov r8, r8)
 288:	40020000 	.word	0x40020000
 28c:	00000e04 	.word	0x00000e04
 290:	40018000 	.word	0x40018000
 294:	0001d4c0 	.word	0x0001d4c0

00000298 <SysTick_Handler>:
 298:	b580      	push	{r7, lr}
 29a:	af00      	add	r7, sp, #0
 29c:	4b03      	ldr	r3, [pc, #12]	; (2ac <SysTick_Handler+0x14>)
 29e:	681b      	ldr	r3, [r3, #0]
 2a0:	1c5a      	adds	r2, r3, #1
 2a2:	4b02      	ldr	r3, [pc, #8]	; (2ac <SysTick_Handler+0x14>)
 2a4:	601a      	str	r2, [r3, #0]
 2a6:	46c0      	nop			; (mov r8, r8)
 2a8:	46bd      	mov	sp, r7
 2aa:	bd80      	pop	{r7, pc}
 2ac:	20000008 	.word	0x20000008

000002b0 <handler_reset>:
 2b0:	b580      	push	{r7, lr}
 2b2:	b082      	sub	sp, #8
 2b4:	af00      	add	r7, sp, #0
 2b6:	4b11      	ldr	r3, [pc, #68]	; (2fc <handler_reset+0x4c>)
 2b8:	607b      	str	r3, [r7, #4]
 2ba:	4b11      	ldr	r3, [pc, #68]	; (300 <handler_reset+0x50>)
 2bc:	603b      	str	r3, [r7, #0]
 2be:	e007      	b.n	2d0 <handler_reset+0x20>
 2c0:	683b      	ldr	r3, [r7, #0]
 2c2:	1d1a      	adds	r2, r3, #4
 2c4:	603a      	str	r2, [r7, #0]
 2c6:	687a      	ldr	r2, [r7, #4]
 2c8:	1d11      	adds	r1, r2, #4
 2ca:	6079      	str	r1, [r7, #4]
 2cc:	6812      	ldr	r2, [r2, #0]
 2ce:	601a      	str	r2, [r3, #0]
 2d0:	683a      	ldr	r2, [r7, #0]
 2d2:	4b0c      	ldr	r3, [pc, #48]	; (304 <handler_reset+0x54>)
 2d4:	429a      	cmp	r2, r3
 2d6:	d3f3      	bcc.n	2c0 <handler_reset+0x10>
 2d8:	4b0b      	ldr	r3, [pc, #44]	; (308 <handler_reset+0x58>)
 2da:	603b      	str	r3, [r7, #0]
 2dc:	e004      	b.n	2e8 <handler_reset+0x38>
 2de:	683b      	ldr	r3, [r7, #0]
 2e0:	1d1a      	adds	r2, r3, #4
 2e2:	603a      	str	r2, [r7, #0]
 2e4:	2200      	movs	r2, #0
 2e6:	601a      	str	r2, [r3, #0]
 2e8:	683a      	ldr	r2, [r7, #0]
 2ea:	4b08      	ldr	r3, [pc, #32]	; (30c <handler_reset+0x5c>)
 2ec:	429a      	cmp	r2, r3
 2ee:	d3f6      	bcc.n	2de <handler_reset+0x2e>
 2f0:	f7ff ff52 	bl	198 <main>
 2f4:	46c0      	nop			; (mov r8, r8)
 2f6:	46bd      	mov	sp, r7
 2f8:	b002      	add	sp, #8
 2fa:	bd80      	pop	{r7, pc}
 2fc:	00000318 	.word	0x00000318
 300:	20000000 	.word	0x20000000
 304:	20000000 	.word	0x20000000
 308:	20000000 	.word	0x20000000
 30c:	2000000c 	.word	0x2000000c

00000310 <default_handler>:
 310:	b580      	push	{r7, lr}
 312:	af00      	add	r7, sp, #0
 314:	e7fe      	b.n	314 <default_handler+0x4>
 316:	46c0      	nop			; (mov r8, r8)
