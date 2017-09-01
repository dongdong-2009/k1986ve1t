
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
   0:	00 80 00 20 81 06 00 00 e1 06 00 00 e1 06 00 00     ... ............
	...
  2c:	e1 06 00 00 00 00 00 00 00 00 00 00 e1 06 00 00     ................
  3c:	61 05 00 00 e1 06 00 00 e1 06 00 00 e1 06 00 00     a...............
  4c:	e1 06 00 00 e1 06 00 00 e1 06 00 00 e1 06 00 00     ................
  5c:	e1 06 00 00 e1 06 00 00 e1 06 00 00 e1 06 00 00     ................
  6c:	e1 06 00 00 e1 06 00 00 79 05 00 00 e1 06 00 00     ........y.......
  7c:	e1 06 00 00 e1 06 00 00 a9 05 00 00 e1 06 00 00     ................
  8c:	e1 06 00 00 e1 06 00 00 e1 06 00 00 e1 06 00 00     ................
  9c:	e1 06 00 00 e1 06 00 00 00 00 00 00 00 00 00 00     ................
  ac:	e1 06 00 00 e1 06 00 00 e1 06 00 00 e1 06 00 00     ................
  bc:	e1 06 00 00                                         ....

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

000000f8 <sleep>:
  f8:	b580      	push	{r7, lr}
  fa:	b084      	sub	sp, #16
  fc:	af00      	add	r7, sp, #0
  fe:	6078      	str	r0, [r7, #4]
 100:	4b07      	ldr	r3, [pc, #28]	; (120 <sleep+0x28>)
 102:	681a      	ldr	r2, [r3, #0]
 104:	687b      	ldr	r3, [r7, #4]
 106:	18d3      	adds	r3, r2, r3
 108:	60fb      	str	r3, [r7, #12]
 10a:	46c0      	nop			; (mov r8, r8)
 10c:	4b04      	ldr	r3, [pc, #16]	; (120 <sleep+0x28>)
 10e:	681a      	ldr	r2, [r3, #0]
 110:	68fb      	ldr	r3, [r7, #12]
 112:	429a      	cmp	r2, r3
 114:	d3fa      	bcc.n	10c <sleep+0x14>
 116:	46c0      	nop			; (mov r8, r8)
 118:	0018      	movs	r0, r3
 11a:	46bd      	mov	sp, r7
 11c:	b004      	add	sp, #16
 11e:	bd80      	pop	{r7, pc}
 120:	20000024 	.word	0x20000024

00000124 <PortConfig>:
 124:	b580      	push	{r7, lr}
 126:	af00      	add	r7, sp, #0
 128:	4b42      	ldr	r3, [pc, #264]	; (234 <PortConfig+0x110>)
 12a:	4a42      	ldr	r2, [pc, #264]	; (234 <PortConfig+0x110>)
 12c:	69d2      	ldr	r2, [r2, #28]
 12e:	2180      	movs	r1, #128	; 0x80
 130:	0389      	lsls	r1, r1, #14
 132:	430a      	orrs	r2, r1
 134:	61da      	str	r2, [r3, #28]
 136:	4b40      	ldr	r3, [pc, #256]	; (238 <PortConfig+0x114>)
 138:	4a3f      	ldr	r2, [pc, #252]	; (238 <PortConfig+0x114>)
 13a:	6892      	ldr	r2, [r2, #8]
 13c:	493f      	ldr	r1, [pc, #252]	; (23c <PortConfig+0x118>)
 13e:	400a      	ands	r2, r1
 140:	609a      	str	r2, [r3, #8]
 142:	4b3d      	ldr	r3, [pc, #244]	; (238 <PortConfig+0x114>)
 144:	4a3c      	ldr	r2, [pc, #240]	; (238 <PortConfig+0x114>)
 146:	6892      	ldr	r2, [r2, #8]
 148:	493d      	ldr	r1, [pc, #244]	; (240 <PortConfig+0x11c>)
 14a:	430a      	orrs	r2, r1
 14c:	609a      	str	r2, [r3, #8]
 14e:	4b3a      	ldr	r3, [pc, #232]	; (238 <PortConfig+0x114>)
 150:	4a39      	ldr	r2, [pc, #228]	; (238 <PortConfig+0x114>)
 152:	6852      	ldr	r2, [r2, #4]
 154:	21fc      	movs	r1, #252	; 0xfc
 156:	0109      	lsls	r1, r1, #4
 158:	430a      	orrs	r2, r1
 15a:	605a      	str	r2, [r3, #4]
 15c:	4b36      	ldr	r3, [pc, #216]	; (238 <PortConfig+0x114>)
 15e:	4a36      	ldr	r2, [pc, #216]	; (238 <PortConfig+0x114>)
 160:	68d2      	ldr	r2, [r2, #12]
 162:	21fc      	movs	r1, #252	; 0xfc
 164:	0109      	lsls	r1, r1, #4
 166:	430a      	orrs	r2, r1
 168:	60da      	str	r2, [r3, #12]
 16a:	4b33      	ldr	r3, [pc, #204]	; (238 <PortConfig+0x114>)
 16c:	4a32      	ldr	r2, [pc, #200]	; (238 <PortConfig+0x114>)
 16e:	6992      	ldr	r2, [r2, #24]
 170:	4934      	ldr	r1, [pc, #208]	; (244 <PortConfig+0x120>)
 172:	430a      	orrs	r2, r1
 174:	619a      	str	r2, [r3, #24]
 176:	4b2f      	ldr	r3, [pc, #188]	; (234 <PortConfig+0x110>)
 178:	4a2e      	ldr	r2, [pc, #184]	; (234 <PortConfig+0x110>)
 17a:	69d2      	ldr	r2, [r2, #28]
 17c:	2180      	movs	r1, #128	; 0x80
 17e:	0489      	lsls	r1, r1, #18
 180:	430a      	orrs	r2, r1
 182:	61da      	str	r2, [r3, #28]
 184:	4b30      	ldr	r3, [pc, #192]	; (248 <PortConfig+0x124>)
 186:	4a30      	ldr	r2, [pc, #192]	; (248 <PortConfig+0x124>)
 188:	68d2      	ldr	r2, [r2, #12]
 18a:	2102      	movs	r1, #2
 18c:	438a      	bics	r2, r1
 18e:	60da      	str	r2, [r3, #12]
 190:	4b28      	ldr	r3, [pc, #160]	; (234 <PortConfig+0x110>)
 192:	4a28      	ldr	r2, [pc, #160]	; (234 <PortConfig+0x110>)
 194:	69d2      	ldr	r2, [r2, #28]
 196:	2180      	movs	r1, #128	; 0x80
 198:	0449      	lsls	r1, r1, #17
 19a:	430a      	orrs	r2, r1
 19c:	61da      	str	r2, [r3, #28]
 19e:	4b2b      	ldr	r3, [pc, #172]	; (24c <PortConfig+0x128>)
 1a0:	4a2a      	ldr	r2, [pc, #168]	; (24c <PortConfig+0x128>)
 1a2:	6892      	ldr	r2, [r2, #8]
 1a4:	492a      	ldr	r1, [pc, #168]	; (250 <PortConfig+0x12c>)
 1a6:	400a      	ands	r2, r1
 1a8:	609a      	str	r2, [r3, #8]
 1aa:	4b28      	ldr	r3, [pc, #160]	; (24c <PortConfig+0x128>)
 1ac:	4a27      	ldr	r2, [pc, #156]	; (24c <PortConfig+0x128>)
 1ae:	6892      	ldr	r2, [r2, #8]
 1b0:	21a0      	movs	r1, #160	; 0xa0
 1b2:	02c9      	lsls	r1, r1, #11
 1b4:	430a      	orrs	r2, r1
 1b6:	609a      	str	r2, [r3, #8]
 1b8:	4b24      	ldr	r3, [pc, #144]	; (24c <PortConfig+0x128>)
 1ba:	4a24      	ldr	r2, [pc, #144]	; (24c <PortConfig+0x128>)
 1bc:	68d2      	ldr	r2, [r2, #12]
 1be:	21c0      	movs	r1, #192	; 0xc0
 1c0:	0089      	lsls	r1, r1, #2
 1c2:	430a      	orrs	r2, r1
 1c4:	60da      	str	r2, [r3, #12]
 1c6:	4b21      	ldr	r3, [pc, #132]	; (24c <PortConfig+0x128>)
 1c8:	4a20      	ldr	r2, [pc, #128]	; (24c <PortConfig+0x128>)
 1ca:	6992      	ldr	r2, [r2, #24]
 1cc:	21c0      	movs	r1, #192	; 0xc0
 1ce:	0309      	lsls	r1, r1, #12
 1d0:	430a      	orrs	r2, r1
 1d2:	619a      	str	r2, [r3, #24]
 1d4:	4b1d      	ldr	r3, [pc, #116]	; (24c <PortConfig+0x128>)
 1d6:	4a1d      	ldr	r2, [pc, #116]	; (24c <PortConfig+0x128>)
 1d8:	6852      	ldr	r2, [r2, #4]
 1da:	2180      	movs	r1, #128	; 0x80
 1dc:	0089      	lsls	r1, r1, #2
 1de:	430a      	orrs	r2, r1
 1e0:	605a      	str	r2, [r3, #4]
 1e2:	4b1a      	ldr	r3, [pc, #104]	; (24c <PortConfig+0x128>)
 1e4:	4a19      	ldr	r2, [pc, #100]	; (24c <PortConfig+0x128>)
 1e6:	6852      	ldr	r2, [r2, #4]
 1e8:	491a      	ldr	r1, [pc, #104]	; (254 <PortConfig+0x130>)
 1ea:	400a      	ands	r2, r1
 1ec:	605a      	str	r2, [r3, #4]
 1ee:	4b11      	ldr	r3, [pc, #68]	; (234 <PortConfig+0x110>)
 1f0:	4a10      	ldr	r2, [pc, #64]	; (234 <PortConfig+0x110>)
 1f2:	69d2      	ldr	r2, [r2, #28]
 1f4:	2180      	movs	r1, #128	; 0x80
 1f6:	0409      	lsls	r1, r1, #16
 1f8:	430a      	orrs	r2, r1
 1fa:	61da      	str	r2, [r3, #28]
 1fc:	4b16      	ldr	r3, [pc, #88]	; (258 <PortConfig+0x134>)
 1fe:	2200      	movs	r2, #0
 200:	609a      	str	r2, [r3, #8]
 202:	4b15      	ldr	r3, [pc, #84]	; (258 <PortConfig+0x134>)
 204:	2200      	movs	r2, #0
 206:	601a      	str	r2, [r3, #0]
 208:	4b13      	ldr	r3, [pc, #76]	; (258 <PortConfig+0x134>)
 20a:	4a13      	ldr	r2, [pc, #76]	; (258 <PortConfig+0x134>)
 20c:	6852      	ldr	r2, [r2, #4]
 20e:	2160      	movs	r1, #96	; 0x60
 210:	430a      	orrs	r2, r1
 212:	605a      	str	r2, [r3, #4]
 214:	4b10      	ldr	r3, [pc, #64]	; (258 <PortConfig+0x134>)
 216:	4a10      	ldr	r2, [pc, #64]	; (258 <PortConfig+0x134>)
 218:	68d2      	ldr	r2, [r2, #12]
 21a:	2160      	movs	r1, #96	; 0x60
 21c:	430a      	orrs	r2, r1
 21e:	60da      	str	r2, [r3, #12]
 220:	4b0d      	ldr	r3, [pc, #52]	; (258 <PortConfig+0x134>)
 222:	4a0d      	ldr	r2, [pc, #52]	; (258 <PortConfig+0x134>)
 224:	6992      	ldr	r2, [r2, #24]
 226:	21f0      	movs	r1, #240	; 0xf0
 228:	0189      	lsls	r1, r1, #6
 22a:	430a      	orrs	r2, r1
 22c:	619a      	str	r2, [r3, #24]
 22e:	46c0      	nop			; (mov r8, r8)
 230:	46bd      	mov	sp, r7
 232:	bd80      	pop	{r7, pc}
 234:	40020000 	.word	0x40020000
 238:	400a8000 	.word	0x400a8000
 23c:	ff000fff 	.word	0xff000fff
 240:	00aaa000 	.word	0x00aaa000
 244:	00fff000 	.word	0x00fff000
 248:	400c8000 	.word	0x400c8000
 24c:	400c0000 	.word	0x400c0000
 250:	fff0ffff 	.word	0xfff0ffff
 254:	fffffeff 	.word	0xfffffeff
 258:	400b8000 	.word	0x400b8000

0000025c <ClkConfig>:
 25c:	b580      	push	{r7, lr}
 25e:	af00      	add	r7, sp, #0
 260:	4b18      	ldr	r3, [pc, #96]	; (2c4 <ClkConfig+0x68>)
 262:	4a18      	ldr	r2, [pc, #96]	; (2c4 <ClkConfig+0x68>)
 264:	6892      	ldr	r2, [r2, #8]
 266:	2101      	movs	r1, #1
 268:	430a      	orrs	r2, r1
 26a:	609a      	str	r2, [r3, #8]
 26c:	46c0      	nop			; (mov r8, r8)
 26e:	4b15      	ldr	r3, [pc, #84]	; (2c4 <ClkConfig+0x68>)
 270:	681b      	ldr	r3, [r3, #0]
 272:	2204      	movs	r2, #4
 274:	4013      	ands	r3, r2
 276:	d0fa      	beq.n	26e <ClkConfig+0x12>
 278:	4b12      	ldr	r3, [pc, #72]	; (2c4 <ClkConfig+0x68>)
 27a:	4a12      	ldr	r2, [pc, #72]	; (2c4 <ClkConfig+0x68>)
 27c:	68d2      	ldr	r2, [r2, #12]
 27e:	2102      	movs	r1, #2
 280:	430a      	orrs	r2, r1
 282:	60da      	str	r2, [r3, #12]
 284:	4b0f      	ldr	r3, [pc, #60]	; (2c4 <ClkConfig+0x68>)
 286:	4a10      	ldr	r2, [pc, #64]	; (2c8 <ClkConfig+0x6c>)
 288:	605a      	str	r2, [r3, #4]
 28a:	46c0      	nop			; (mov r8, r8)
 28c:	4b0d      	ldr	r3, [pc, #52]	; (2c4 <ClkConfig+0x68>)
 28e:	681b      	ldr	r3, [r3, #0]
 290:	2202      	movs	r2, #2
 292:	4013      	ands	r3, r2
 294:	d0fa      	beq.n	28c <ClkConfig+0x30>
 296:	4b0d      	ldr	r3, [pc, #52]	; (2cc <ClkConfig+0x70>)
 298:	4a0c      	ldr	r2, [pc, #48]	; (2cc <ClkConfig+0x70>)
 29a:	6812      	ldr	r2, [r2, #0]
 29c:	2120      	movs	r1, #32
 29e:	430a      	orrs	r2, r1
 2a0:	601a      	str	r2, [r3, #0]
 2a2:	4b08      	ldr	r3, [pc, #32]	; (2c4 <ClkConfig+0x68>)
 2a4:	4a07      	ldr	r2, [pc, #28]	; (2c4 <ClkConfig+0x68>)
 2a6:	68d2      	ldr	r2, [r2, #12]
 2a8:	2180      	movs	r1, #128	; 0x80
 2aa:	0049      	lsls	r1, r1, #1
 2ac:	430a      	orrs	r2, r1
 2ae:	60da      	str	r2, [r3, #12]
 2b0:	4b04      	ldr	r3, [pc, #16]	; (2c4 <ClkConfig+0x68>)
 2b2:	4a04      	ldr	r2, [pc, #16]	; (2c4 <ClkConfig+0x68>)
 2b4:	68d2      	ldr	r2, [r2, #12]
 2b6:	2104      	movs	r1, #4
 2b8:	430a      	orrs	r2, r1
 2ba:	60da      	str	r2, [r3, #12]
 2bc:	46c0      	nop			; (mov r8, r8)
 2be:	46bd      	mov	sp, r7
 2c0:	bd80      	pop	{r7, pc}
 2c2:	46c0      	nop			; (mov r8, r8)
 2c4:	40020000 	.word	0x40020000
 2c8:	00000e04 	.word	0x00000e04
 2cc:	40018000 	.word	0x40018000

000002d0 <TimerConfig>:
 2d0:	b580      	push	{r7, lr}
 2d2:	af00      	add	r7, sp, #0
 2d4:	4b73      	ldr	r3, [pc, #460]	; (4a4 <_stack_size+0xa4>)
 2d6:	4a73      	ldr	r2, [pc, #460]	; (4a4 <_stack_size+0xa4>)
 2d8:	69d2      	ldr	r2, [r2, #28]
 2da:	2180      	movs	r1, #128	; 0x80
 2dc:	0309      	lsls	r1, r1, #12
 2de:	430a      	orrs	r2, r1
 2e0:	61da      	str	r2, [r3, #28]
 2e2:	4b70      	ldr	r3, [pc, #448]	; (4a4 <_stack_size+0xa4>)
 2e4:	4a6f      	ldr	r2, [pc, #444]	; (4a4 <_stack_size+0xa4>)
 2e6:	6a92      	ldr	r2, [r2, #40]	; 0x28
 2e8:	2180      	movs	r1, #128	; 0x80
 2ea:	04c9      	lsls	r1, r1, #19
 2ec:	430a      	orrs	r2, r1
 2ee:	629a      	str	r2, [r3, #40]	; 0x28
 2f0:	4b6c      	ldr	r3, [pc, #432]	; (4a4 <_stack_size+0xa4>)
 2f2:	4a6c      	ldr	r2, [pc, #432]	; (4a4 <_stack_size+0xa4>)
 2f4:	6a92      	ldr	r2, [r2, #40]	; 0x28
 2f6:	496c      	ldr	r1, [pc, #432]	; (4a8 <_stack_size+0xa8>)
 2f8:	400a      	ands	r2, r1
 2fa:	629a      	str	r2, [r3, #40]	; 0x28
 2fc:	4b6b      	ldr	r3, [pc, #428]	; (4ac <_stack_size+0xac>)
 2fe:	2200      	movs	r2, #0
 300:	601a      	str	r2, [r3, #0]
 302:	4b6a      	ldr	r3, [pc, #424]	; (4ac <_stack_size+0xac>)
 304:	2204      	movs	r2, #4
 306:	605a      	str	r2, [r3, #4]
 308:	4b68      	ldr	r3, [pc, #416]	; (4ac <_stack_size+0xac>)
 30a:	4a69      	ldr	r2, [pc, #420]	; (4b0 <_stack_size+0xb0>)
 30c:	609a      	str	r2, [r3, #8]
 30e:	4b67      	ldr	r3, [pc, #412]	; (4ac <_stack_size+0xac>)
 310:	2280      	movs	r2, #128	; 0x80
 312:	0092      	lsls	r2, r2, #2
 314:	611a      	str	r2, [r3, #16]
 316:	4b65      	ldr	r3, [pc, #404]	; (4ac <_stack_size+0xac>)
 318:	2280      	movs	r2, #128	; 0x80
 31a:	0092      	lsls	r2, r2, #2
 31c:	615a      	str	r2, [r3, #20]
 31e:	4b63      	ldr	r3, [pc, #396]	; (4ac <_stack_size+0xac>)
 320:	2280      	movs	r2, #128	; 0x80
 322:	0092      	lsls	r2, r2, #2
 324:	619a      	str	r2, [r3, #24]
 326:	4b61      	ldr	r3, [pc, #388]	; (4ac <_stack_size+0xac>)
 328:	4a60      	ldr	r2, [pc, #384]	; (4ac <_stack_size+0xac>)
 32a:	6a12      	ldr	r2, [r2, #32]
 32c:	4961      	ldr	r1, [pc, #388]	; (4b4 <_stack_size+0xb4>)
 32e:	400a      	ands	r2, r1
 330:	621a      	str	r2, [r3, #32]
 332:	4b5e      	ldr	r3, [pc, #376]	; (4ac <_stack_size+0xac>)
 334:	4a5d      	ldr	r2, [pc, #372]	; (4ac <_stack_size+0xac>)
 336:	6a12      	ldr	r2, [r2, #32]
 338:	21e0      	movs	r1, #224	; 0xe0
 33a:	0109      	lsls	r1, r1, #4
 33c:	430a      	orrs	r2, r1
 33e:	621a      	str	r2, [r3, #32]
 340:	4b5a      	ldr	r3, [pc, #360]	; (4ac <_stack_size+0xac>)
 342:	4a5a      	ldr	r2, [pc, #360]	; (4ac <_stack_size+0xac>)
 344:	6b12      	ldr	r2, [r2, #48]	; 0x30
 346:	210f      	movs	r1, #15
 348:	438a      	bics	r2, r1
 34a:	631a      	str	r2, [r3, #48]	; 0x30
 34c:	4b57      	ldr	r3, [pc, #348]	; (4ac <_stack_size+0xac>)
 34e:	4a57      	ldr	r2, [pc, #348]	; (4ac <_stack_size+0xac>)
 350:	6b12      	ldr	r2, [r2, #48]	; 0x30
 352:	210c      	movs	r1, #12
 354:	430a      	orrs	r2, r1
 356:	631a      	str	r2, [r3, #48]	; 0x30
 358:	4b54      	ldr	r3, [pc, #336]	; (4ac <_stack_size+0xac>)
 35a:	4a54      	ldr	r2, [pc, #336]	; (4ac <_stack_size+0xac>)
 35c:	6b12      	ldr	r2, [r2, #48]	; 0x30
 35e:	2101      	movs	r1, #1
 360:	430a      	orrs	r2, r1
 362:	631a      	str	r2, [r3, #48]	; 0x30
 364:	4b51      	ldr	r3, [pc, #324]	; (4ac <_stack_size+0xac>)
 366:	4a51      	ldr	r2, [pc, #324]	; (4ac <_stack_size+0xac>)
 368:	6b12      	ldr	r2, [r2, #48]	; 0x30
 36a:	4953      	ldr	r1, [pc, #332]	; (4b8 <_stack_size+0xb8>)
 36c:	400a      	ands	r2, r1
 36e:	631a      	str	r2, [r3, #48]	; 0x30
 370:	4b4e      	ldr	r3, [pc, #312]	; (4ac <_stack_size+0xac>)
 372:	4a4e      	ldr	r2, [pc, #312]	; (4ac <_stack_size+0xac>)
 374:	6b12      	ldr	r2, [r2, #48]	; 0x30
 376:	21c0      	movs	r1, #192	; 0xc0
 378:	0109      	lsls	r1, r1, #4
 37a:	430a      	orrs	r2, r1
 37c:	631a      	str	r2, [r3, #48]	; 0x30
 37e:	4b4b      	ldr	r3, [pc, #300]	; (4ac <_stack_size+0xac>)
 380:	4a4a      	ldr	r2, [pc, #296]	; (4ac <_stack_size+0xac>)
 382:	6b12      	ldr	r2, [r2, #48]	; 0x30
 384:	2180      	movs	r1, #128	; 0x80
 386:	0049      	lsls	r1, r1, #1
 388:	430a      	orrs	r2, r1
 38a:	631a      	str	r2, [r3, #48]	; 0x30
 38c:	4b47      	ldr	r3, [pc, #284]	; (4ac <_stack_size+0xac>)
 38e:	4a47      	ldr	r2, [pc, #284]	; (4ac <_stack_size+0xac>)
 390:	6a52      	ldr	r2, [r2, #36]	; 0x24
 392:	4948      	ldr	r1, [pc, #288]	; (4b4 <_stack_size+0xb4>)
 394:	400a      	ands	r2, r1
 396:	625a      	str	r2, [r3, #36]	; 0x24
 398:	4b44      	ldr	r3, [pc, #272]	; (4ac <_stack_size+0xac>)
 39a:	4a44      	ldr	r2, [pc, #272]	; (4ac <_stack_size+0xac>)
 39c:	6a52      	ldr	r2, [r2, #36]	; 0x24
 39e:	21e0      	movs	r1, #224	; 0xe0
 3a0:	0109      	lsls	r1, r1, #4
 3a2:	430a      	orrs	r2, r1
 3a4:	625a      	str	r2, [r3, #36]	; 0x24
 3a6:	4b41      	ldr	r3, [pc, #260]	; (4ac <_stack_size+0xac>)
 3a8:	4a40      	ldr	r2, [pc, #256]	; (4ac <_stack_size+0xac>)
 3aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3ac:	210f      	movs	r1, #15
 3ae:	438a      	bics	r2, r1
 3b0:	635a      	str	r2, [r3, #52]	; 0x34
 3b2:	4b3e      	ldr	r3, [pc, #248]	; (4ac <_stack_size+0xac>)
 3b4:	4a3d      	ldr	r2, [pc, #244]	; (4ac <_stack_size+0xac>)
 3b6:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3b8:	210c      	movs	r1, #12
 3ba:	430a      	orrs	r2, r1
 3bc:	635a      	str	r2, [r3, #52]	; 0x34
 3be:	4b3b      	ldr	r3, [pc, #236]	; (4ac <_stack_size+0xac>)
 3c0:	4a3a      	ldr	r2, [pc, #232]	; (4ac <_stack_size+0xac>)
 3c2:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3c4:	2101      	movs	r1, #1
 3c6:	430a      	orrs	r2, r1
 3c8:	635a      	str	r2, [r3, #52]	; 0x34
 3ca:	4b38      	ldr	r3, [pc, #224]	; (4ac <_stack_size+0xac>)
 3cc:	4a37      	ldr	r2, [pc, #220]	; (4ac <_stack_size+0xac>)
 3ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3d0:	4939      	ldr	r1, [pc, #228]	; (4b8 <_stack_size+0xb8>)
 3d2:	400a      	ands	r2, r1
 3d4:	635a      	str	r2, [r3, #52]	; 0x34
 3d6:	4b35      	ldr	r3, [pc, #212]	; (4ac <_stack_size+0xac>)
 3d8:	4a34      	ldr	r2, [pc, #208]	; (4ac <_stack_size+0xac>)
 3da:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3dc:	21c0      	movs	r1, #192	; 0xc0
 3de:	0109      	lsls	r1, r1, #4
 3e0:	430a      	orrs	r2, r1
 3e2:	635a      	str	r2, [r3, #52]	; 0x34
 3e4:	4b31      	ldr	r3, [pc, #196]	; (4ac <_stack_size+0xac>)
 3e6:	4a31      	ldr	r2, [pc, #196]	; (4ac <_stack_size+0xac>)
 3e8:	6b52      	ldr	r2, [r2, #52]	; 0x34
 3ea:	2180      	movs	r1, #128	; 0x80
 3ec:	0049      	lsls	r1, r1, #1
 3ee:	430a      	orrs	r2, r1
 3f0:	635a      	str	r2, [r3, #52]	; 0x34
 3f2:	4b2e      	ldr	r3, [pc, #184]	; (4ac <_stack_size+0xac>)
 3f4:	4a2d      	ldr	r2, [pc, #180]	; (4ac <_stack_size+0xac>)
 3f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
 3f8:	492e      	ldr	r1, [pc, #184]	; (4b4 <_stack_size+0xb4>)
 3fa:	400a      	ands	r2, r1
 3fc:	629a      	str	r2, [r3, #40]	; 0x28
 3fe:	4b2b      	ldr	r3, [pc, #172]	; (4ac <_stack_size+0xac>)
 400:	4a2a      	ldr	r2, [pc, #168]	; (4ac <_stack_size+0xac>)
 402:	6a92      	ldr	r2, [r2, #40]	; 0x28
 404:	21e0      	movs	r1, #224	; 0xe0
 406:	0109      	lsls	r1, r1, #4
 408:	430a      	orrs	r2, r1
 40a:	629a      	str	r2, [r3, #40]	; 0x28
 40c:	4b27      	ldr	r3, [pc, #156]	; (4ac <_stack_size+0xac>)
 40e:	4a27      	ldr	r2, [pc, #156]	; (4ac <_stack_size+0xac>)
 410:	6b92      	ldr	r2, [r2, #56]	; 0x38
 412:	210f      	movs	r1, #15
 414:	438a      	bics	r2, r1
 416:	639a      	str	r2, [r3, #56]	; 0x38
 418:	4b24      	ldr	r3, [pc, #144]	; (4ac <_stack_size+0xac>)
 41a:	4a24      	ldr	r2, [pc, #144]	; (4ac <_stack_size+0xac>)
 41c:	6b92      	ldr	r2, [r2, #56]	; 0x38
 41e:	210c      	movs	r1, #12
 420:	430a      	orrs	r2, r1
 422:	639a      	str	r2, [r3, #56]	; 0x38
 424:	4b21      	ldr	r3, [pc, #132]	; (4ac <_stack_size+0xac>)
 426:	4a21      	ldr	r2, [pc, #132]	; (4ac <_stack_size+0xac>)
 428:	6b92      	ldr	r2, [r2, #56]	; 0x38
 42a:	2101      	movs	r1, #1
 42c:	430a      	orrs	r2, r1
 42e:	639a      	str	r2, [r3, #56]	; 0x38
 430:	4b1e      	ldr	r3, [pc, #120]	; (4ac <_stack_size+0xac>)
 432:	4a1e      	ldr	r2, [pc, #120]	; (4ac <_stack_size+0xac>)
 434:	6b92      	ldr	r2, [r2, #56]	; 0x38
 436:	4920      	ldr	r1, [pc, #128]	; (4b8 <_stack_size+0xb8>)
 438:	400a      	ands	r2, r1
 43a:	639a      	str	r2, [r3, #56]	; 0x38
 43c:	4b1b      	ldr	r3, [pc, #108]	; (4ac <_stack_size+0xac>)
 43e:	4a1b      	ldr	r2, [pc, #108]	; (4ac <_stack_size+0xac>)
 440:	6b92      	ldr	r2, [r2, #56]	; 0x38
 442:	21c0      	movs	r1, #192	; 0xc0
 444:	0109      	lsls	r1, r1, #4
 446:	430a      	orrs	r2, r1
 448:	639a      	str	r2, [r3, #56]	; 0x38
 44a:	4b18      	ldr	r3, [pc, #96]	; (4ac <_stack_size+0xac>)
 44c:	4a17      	ldr	r2, [pc, #92]	; (4ac <_stack_size+0xac>)
 44e:	6b92      	ldr	r2, [r2, #56]	; 0x38
 450:	2180      	movs	r1, #128	; 0x80
 452:	0049      	lsls	r1, r1, #1
 454:	430a      	orrs	r2, r1
 456:	639a      	str	r2, [r3, #56]	; 0x38
 458:	4b14      	ldr	r3, [pc, #80]	; (4ac <_stack_size+0xac>)
 45a:	4a14      	ldr	r2, [pc, #80]	; (4ac <_stack_size+0xac>)
 45c:	6c12      	ldr	r2, [r2, #64]	; 0x40
 45e:	21c8      	movs	r1, #200	; 0xc8
 460:	01c9      	lsls	r1, r1, #7
 462:	430a      	orrs	r2, r1
 464:	641a      	str	r2, [r3, #64]	; 0x40
 466:	4b11      	ldr	r3, [pc, #68]	; (4ac <_stack_size+0xac>)
 468:	4a10      	ldr	r2, [pc, #64]	; (4ac <_stack_size+0xac>)
 46a:	6c52      	ldr	r2, [r2, #68]	; 0x44
 46c:	21c8      	movs	r1, #200	; 0xc8
 46e:	01c9      	lsls	r1, r1, #7
 470:	430a      	orrs	r2, r1
 472:	645a      	str	r2, [r3, #68]	; 0x44
 474:	4b0d      	ldr	r3, [pc, #52]	; (4ac <_stack_size+0xac>)
 476:	4a0d      	ldr	r2, [pc, #52]	; (4ac <_stack_size+0xac>)
 478:	6c92      	ldr	r2, [r2, #72]	; 0x48
 47a:	21c8      	movs	r1, #200	; 0xc8
 47c:	01c9      	lsls	r1, r1, #7
 47e:	430a      	orrs	r2, r1
 480:	649a      	str	r2, [r3, #72]	; 0x48
 482:	4b0a      	ldr	r3, [pc, #40]	; (4ac <_stack_size+0xac>)
 484:	4a09      	ldr	r2, [pc, #36]	; (4ac <_stack_size+0xac>)
 486:	6d92      	ldr	r2, [r2, #88]	; 0x58
 488:	21f0      	movs	r1, #240	; 0xf0
 48a:	0149      	lsls	r1, r1, #5
 48c:	430a      	orrs	r2, r1
 48e:	659a      	str	r2, [r3, #88]	; 0x58
 490:	4b06      	ldr	r3, [pc, #24]	; (4ac <_stack_size+0xac>)
 492:	2201      	movs	r2, #1
 494:	60da      	str	r2, [r3, #12]
 496:	200d      	movs	r0, #13
 498:	f7ff fe12 	bl	c0 <NVIC_EnableIRQ>
 49c:	46c0      	nop			; (mov r8, r8)
 49e:	46bd      	mov	sp, r7
 4a0:	bd80      	pop	{r7, pc}
 4a2:	46c0      	nop			; (mov r8, r8)
 4a4:	40020000 	.word	0x40020000
 4a8:	ff00ffff 	.word	0xff00ffff
 4ac:	40098000 	.word	0x40098000
 4b0:	000003ff 	.word	0x000003ff
 4b4:	fffff1ff 	.word	0xfffff1ff
 4b8:	fffff0ff 	.word	0xfffff0ff

000004bc <adc_init>:
 4bc:	b580      	push	{r7, lr}
 4be:	af00      	add	r7, sp, #0
 4c0:	4b10      	ldr	r3, [pc, #64]	; (504 <adc_init+0x48>)
 4c2:	4a10      	ldr	r2, [pc, #64]	; (504 <adc_init+0x48>)
 4c4:	69d2      	ldr	r2, [r2, #28]
 4c6:	2180      	movs	r1, #128	; 0x80
 4c8:	0289      	lsls	r1, r1, #10
 4ca:	430a      	orrs	r2, r1
 4cc:	61da      	str	r2, [r3, #28]
 4ce:	4b0d      	ldr	r3, [pc, #52]	; (504 <adc_init+0x48>)
 4d0:	4a0d      	ldr	r2, [pc, #52]	; (508 <adc_init+0x4c>)
 4d2:	615a      	str	r2, [r3, #20]
 4d4:	4b0d      	ldr	r3, [pc, #52]	; (50c <adc_init+0x50>)
 4d6:	2200      	movs	r2, #0
 4d8:	601a      	str	r2, [r3, #0]
 4da:	4b0c      	ldr	r3, [pc, #48]	; (50c <adc_init+0x50>)
 4dc:	4a0b      	ldr	r2, [pc, #44]	; (50c <adc_init+0x50>)
 4de:	6812      	ldr	r2, [r2, #0]
 4e0:	490b      	ldr	r1, [pc, #44]	; (510 <adc_init+0x54>)
 4e2:	430a      	orrs	r2, r1
 4e4:	601a      	str	r2, [r3, #0]
 4e6:	4b09      	ldr	r3, [pc, #36]	; (50c <adc_init+0x50>)
 4e8:	4a08      	ldr	r2, [pc, #32]	; (50c <adc_init+0x50>)
 4ea:	6a92      	ldr	r2, [r2, #40]	; 0x28
 4ec:	2139      	movs	r1, #57	; 0x39
 4ee:	430a      	orrs	r2, r1
 4f0:	629a      	str	r2, [r3, #40]	; 0x28
 4f2:	4b06      	ldr	r3, [pc, #24]	; (50c <adc_init+0x50>)
 4f4:	2210      	movs	r2, #16
 4f6:	621a      	str	r2, [r3, #32]
 4f8:	2011      	movs	r0, #17
 4fa:	f7ff fde1 	bl	c0 <NVIC_EnableIRQ>
 4fe:	46c0      	nop			; (mov r8, r8)
 500:	46bd      	mov	sp, r7
 502:	bd80      	pop	{r7, pc}
 504:	40020000 	.word	0x40020000
 508:	00002020 	.word	0x00002020
 50c:	40088000 	.word	0x40088000
 510:	00000205 	.word	0x00000205

00000514 <dac_init>:
 514:	b580      	push	{r7, lr}
 516:	af00      	add	r7, sp, #0
 518:	4b07      	ldr	r3, [pc, #28]	; (538 <dac_init+0x24>)
 51a:	4a07      	ldr	r2, [pc, #28]	; (538 <dac_init+0x24>)
 51c:	69d2      	ldr	r2, [r2, #28]
 51e:	2180      	movs	r1, #128	; 0x80
 520:	02c9      	lsls	r1, r1, #11
 522:	430a      	orrs	r2, r1
 524:	61da      	str	r2, [r3, #28]
 526:	4b05      	ldr	r3, [pc, #20]	; (53c <dac_init+0x28>)
 528:	4a04      	ldr	r2, [pc, #16]	; (53c <dac_init+0x28>)
 52a:	6812      	ldr	r2, [r2, #0]
 52c:	2104      	movs	r1, #4
 52e:	430a      	orrs	r2, r1
 530:	601a      	str	r2, [r3, #0]
 532:	46c0      	nop			; (mov r8, r8)
 534:	46bd      	mov	sp, r7
 536:	bd80      	pop	{r7, pc}
 538:	40020000 	.word	0x40020000
 53c:	40090000 	.word	0x40090000

00000540 <SystemInit>:
 540:	b580      	push	{r7, lr}
 542:	af00      	add	r7, sp, #0
 544:	f7ff fe8a 	bl	25c <ClkConfig>
 548:	f7ff fdec 	bl	124 <PortConfig>
 54c:	f7ff fec0 	bl	2d0 <TimerConfig>
 550:	f7ff ffb4 	bl	4bc <adc_init>
 554:	f7ff ffde 	bl	514 <dac_init>
 558:	46c0      	nop			; (mov r8, r8)
 55a:	46bd      	mov	sp, r7
 55c:	bd80      	pop	{r7, pc}
 55e:	46c0      	nop			; (mov r8, r8)

00000560 <SysTick_Handler>:
 560:	b580      	push	{r7, lr}
 562:	af00      	add	r7, sp, #0
 564:	4b03      	ldr	r3, [pc, #12]	; (574 <SysTick_Handler+0x14>)
 566:	681b      	ldr	r3, [r3, #0]
 568:	1c5a      	adds	r2, r3, #1
 56a:	4b02      	ldr	r3, [pc, #8]	; (574 <SysTick_Handler+0x14>)
 56c:	601a      	str	r2, [r3, #0]
 56e:	46c0      	nop			; (mov r8, r8)
 570:	46bd      	mov	sp, r7
 572:	bd80      	pop	{r7, pc}
 574:	20000024 	.word	0x20000024

00000578 <TIMER4_Handler>:
 578:	b580      	push	{r7, lr}
 57a:	af00      	add	r7, sp, #0
 57c:	4b07      	ldr	r3, [pc, #28]	; (59c <TIMER4_Handler+0x24>)
 57e:	2200      	movs	r2, #0
 580:	655a      	str	r2, [r3, #84]	; 0x54
 582:	4b07      	ldr	r3, [pc, #28]	; (5a0 <TIMER4_Handler+0x28>)
 584:	4a06      	ldr	r2, [pc, #24]	; (5a0 <TIMER4_Handler+0x28>)
 586:	6812      	ldr	r2, [r2, #0]
 588:	2108      	movs	r1, #8
 58a:	430a      	orrs	r2, r1
 58c:	601a      	str	r2, [r3, #0]
 58e:	4b05      	ldr	r3, [pc, #20]	; (5a4 <TIMER4_Handler+0x2c>)
 590:	2200      	movs	r2, #0
 592:	601a      	str	r2, [r3, #0]
 594:	46c0      	nop			; (mov r8, r8)
 596:	46bd      	mov	sp, r7
 598:	bd80      	pop	{r7, pc}
 59a:	46c0      	nop			; (mov r8, r8)
 59c:	40098000 	.word	0x40098000
 5a0:	40088000 	.word	0x40088000
 5a4:	20000000 	.word	0x20000000

000005a8 <ADC_Handler>:
 5a8:	b580      	push	{r7, lr}
 5aa:	b084      	sub	sp, #16
 5ac:	af00      	add	r7, sp, #0
 5ae:	4b12      	ldr	r3, [pc, #72]	; (5f8 <ADC_Handler+0x50>)
 5b0:	4a11      	ldr	r2, [pc, #68]	; (5f8 <ADC_Handler+0x50>)
 5b2:	6812      	ldr	r2, [r2, #0]
 5b4:	2140      	movs	r1, #64	; 0x40
 5b6:	404a      	eors	r2, r1
 5b8:	601a      	str	r2, [r3, #0]
 5ba:	4b10      	ldr	r3, [pc, #64]	; (5fc <ADC_Handler+0x54>)
 5bc:	699b      	ldr	r3, [r3, #24]
 5be:	60fb      	str	r3, [r7, #12]
 5c0:	68fb      	ldr	r3, [r7, #12]
 5c2:	141b      	asrs	r3, r3, #16
 5c4:	60bb      	str	r3, [r7, #8]
 5c6:	68fb      	ldr	r3, [r7, #12]
 5c8:	051b      	lsls	r3, r3, #20
 5ca:	0d1b      	lsrs	r3, r3, #20
 5cc:	607b      	str	r3, [r7, #4]
 5ce:	4b0c      	ldr	r3, [pc, #48]	; (600 <ADC_Handler+0x58>)
 5d0:	68ba      	ldr	r2, [r7, #8]
 5d2:	601a      	str	r2, [r3, #0]
 5d4:	4b0b      	ldr	r3, [pc, #44]	; (604 <ADC_Handler+0x5c>)
 5d6:	68ba      	ldr	r2, [r7, #8]
 5d8:	0092      	lsls	r2, r2, #2
 5da:	6879      	ldr	r1, [r7, #4]
 5dc:	50d1      	str	r1, [r2, r3]
 5de:	68bb      	ldr	r3, [r7, #8]
 5e0:	2b04      	cmp	r3, #4
 5e2:	d105      	bne.n	5f0 <ADC_Handler+0x48>
 5e4:	4b05      	ldr	r3, [pc, #20]	; (5fc <ADC_Handler+0x54>)
 5e6:	4a05      	ldr	r2, [pc, #20]	; (5fc <ADC_Handler+0x54>)
 5e8:	6812      	ldr	r2, [r2, #0]
 5ea:	2108      	movs	r1, #8
 5ec:	438a      	bics	r2, r1
 5ee:	601a      	str	r2, [r3, #0]
 5f0:	46c0      	nop			; (mov r8, r8)
 5f2:	46bd      	mov	sp, r7
 5f4:	b004      	add	sp, #16
 5f6:	bd80      	pop	{r7, pc}
 5f8:	400b8000 	.word	0x400b8000
 5fc:	40088000 	.word	0x40088000
 600:	20000000 	.word	0x20000000
 604:	20000004 	.word	0x20000004

00000608 <wait_timer_ticks>:
 608:	b580      	push	{r7, lr}
 60a:	b084      	sub	sp, #16
 60c:	af00      	add	r7, sp, #0
 60e:	6078      	str	r0, [r7, #4]
 610:	2300      	movs	r3, #0
 612:	60fb      	str	r3, [r7, #12]
 614:	e00b      	b.n	62e <wait_timer_ticks+0x26>
 616:	46c0      	nop			; (mov r8, r8)
 618:	4b09      	ldr	r3, [pc, #36]	; (640 <wait_timer_ticks+0x38>)
 61a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
 61c:	2202      	movs	r2, #2
 61e:	4013      	ands	r3, r2
 620:	d0fa      	beq.n	618 <wait_timer_ticks+0x10>
 622:	4b07      	ldr	r3, [pc, #28]	; (640 <wait_timer_ticks+0x38>)
 624:	2200      	movs	r2, #0
 626:	655a      	str	r2, [r3, #84]	; 0x54
 628:	68fb      	ldr	r3, [r7, #12]
 62a:	3301      	adds	r3, #1
 62c:	60fb      	str	r3, [r7, #12]
 62e:	68fa      	ldr	r2, [r7, #12]
 630:	687b      	ldr	r3, [r7, #4]
 632:	429a      	cmp	r2, r3
 634:	dbef      	blt.n	616 <wait_timer_ticks+0xe>
 636:	46c0      	nop			; (mov r8, r8)
 638:	46bd      	mov	sp, r7
 63a:	b004      	add	sp, #16
 63c:	bd80      	pop	{r7, pc}
 63e:	46c0      	nop			; (mov r8, r8)
 640:	40098000 	.word	0x40098000

00000644 <main>:
 644:	b580      	push	{r7, lr}
 646:	af00      	add	r7, sp, #0
 648:	f7ff ff7a 	bl	540 <SystemInit>
 64c:	46c0      	nop			; (mov r8, r8)
 64e:	4b0a      	ldr	r3, [pc, #40]	; (678 <main+0x34>)
 650:	681b      	ldr	r3, [r3, #0]
 652:	2b04      	cmp	r3, #4
 654:	ddfb      	ble.n	64e <main+0xa>
 656:	4b08      	ldr	r3, [pc, #32]	; (678 <main+0x34>)
 658:	2200      	movs	r2, #0
 65a:	601a      	str	r2, [r3, #0]
 65c:	4b07      	ldr	r3, [pc, #28]	; (67c <main+0x38>)
 65e:	4a07      	ldr	r2, [pc, #28]	; (67c <main+0x38>)
 660:	6812      	ldr	r2, [r2, #0]
 662:	2120      	movs	r1, #32
 664:	430a      	orrs	r2, r1
 666:	601a      	str	r2, [r3, #0]
 668:	4b04      	ldr	r3, [pc, #16]	; (67c <main+0x38>)
 66a:	4a04      	ldr	r2, [pc, #16]	; (67c <main+0x38>)
 66c:	6812      	ldr	r2, [r2, #0]
 66e:	2120      	movs	r1, #32
 670:	438a      	bics	r2, r1
 672:	601a      	str	r2, [r3, #0]
 674:	e7ea      	b.n	64c <main+0x8>
 676:	46c0      	nop			; (mov r8, r8)
 678:	20000000 	.word	0x20000000
 67c:	400b8000 	.word	0x400b8000

00000680 <handler_reset>:
 680:	b580      	push	{r7, lr}
 682:	b082      	sub	sp, #8
 684:	af00      	add	r7, sp, #0
 686:	4b11      	ldr	r3, [pc, #68]	; (6cc <handler_reset+0x4c>)
 688:	607b      	str	r3, [r7, #4]
 68a:	4b11      	ldr	r3, [pc, #68]	; (6d0 <handler_reset+0x50>)
 68c:	603b      	str	r3, [r7, #0]
 68e:	e007      	b.n	6a0 <handler_reset+0x20>
 690:	683b      	ldr	r3, [r7, #0]
 692:	1d1a      	adds	r2, r3, #4
 694:	603a      	str	r2, [r7, #0]
 696:	687a      	ldr	r2, [r7, #4]
 698:	1d11      	adds	r1, r2, #4
 69a:	6079      	str	r1, [r7, #4]
 69c:	6812      	ldr	r2, [r2, #0]
 69e:	601a      	str	r2, [r3, #0]
 6a0:	683a      	ldr	r2, [r7, #0]
 6a2:	4b0c      	ldr	r3, [pc, #48]	; (6d4 <handler_reset+0x54>)
 6a4:	429a      	cmp	r2, r3
 6a6:	d3f3      	bcc.n	690 <handler_reset+0x10>
 6a8:	4b0b      	ldr	r3, [pc, #44]	; (6d8 <handler_reset+0x58>)
 6aa:	603b      	str	r3, [r7, #0]
 6ac:	e004      	b.n	6b8 <handler_reset+0x38>
 6ae:	683b      	ldr	r3, [r7, #0]
 6b0:	1d1a      	adds	r2, r3, #4
 6b2:	603a      	str	r2, [r7, #0]
 6b4:	2200      	movs	r2, #0
 6b6:	601a      	str	r2, [r3, #0]
 6b8:	683a      	ldr	r2, [r7, #0]
 6ba:	4b08      	ldr	r3, [pc, #32]	; (6dc <handler_reset+0x5c>)
 6bc:	429a      	cmp	r2, r3
 6be:	d3f6      	bcc.n	6ae <handler_reset+0x2e>
 6c0:	f7ff ffc0 	bl	644 <main>
 6c4:	46c0      	nop			; (mov r8, r8)
 6c6:	46bd      	mov	sp, r7
 6c8:	b002      	add	sp, #8
 6ca:	bd80      	pop	{r7, pc}
 6cc:	000006e8 	.word	0x000006e8
 6d0:	20000000 	.word	0x20000000
 6d4:	20000000 	.word	0x20000000
 6d8:	20000000 	.word	0x20000000
 6dc:	20000028 	.word	0x20000028

000006e0 <default_handler>:
 6e0:	b580      	push	{r7, lr}
 6e2:	af00      	add	r7, sp, #0
 6e4:	e7fe      	b.n	6e4 <default_handler+0x4>
 6e6:	46c0      	nop			; (mov r8, r8)
