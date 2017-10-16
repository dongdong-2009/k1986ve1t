
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 31 05 00 00 91 05 00 00 91 05 00 00     ... 1...........
	...
      2c:	91 05 00 00 00 00 00 00 00 00 00 00 91 05 00 00     ................
      3c:	05 05 00 00 91 05 00 00 91 05 00 00 91 05 00 00     ................
      4c:	91 05 00 00 91 05 00 00 91 05 00 00 e1 06 00 00     ................
      5c:	91 05 00 00 91 05 00 00 91 05 00 00 91 05 00 00     ................
      6c:	91 05 00 00 91 05 00 00 1d 05 00 00 91 05 00 00     ................
      7c:	91 05 00 00 91 05 00 00 91 05 00 00 91 05 00 00     ................
      8c:	91 05 00 00 91 05 00 00 91 05 00 00 91 05 00 00     ................
      9c:	91 05 00 00 91 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	91 05 00 00 91 05 00 00 91 05 00 00 91 05 00 00     ................
      bc:	91 05 00 00                                         ....

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
     1cc:	20000224 	.word	0x20000224

000001d0 <main>:
     1d0:	b590      	push	{r4, r7, lr}
     1d2:	b0a7      	sub	sp, #156	; 0x9c
     1d4:	af00      	add	r7, sp, #0
     1d6:	2384      	movs	r3, #132	; 0x84
     1d8:	18fb      	adds	r3, r7, r3
     1da:	4a13      	ldr	r2, [pc, #76]	; (228 <main+0x58>)
     1dc:	ca13      	ldmia	r2!, {r0, r1, r4}
     1de:	c313      	stmia	r3!, {r0, r1, r4}
     1e0:	8812      	ldrh	r2, [r2, #0]
     1e2:	801a      	strh	r2, [r3, #0]
     1e4:	f000 f97c 	bl	4e0 <SystemInit>
     1e8:	4b10      	ldr	r3, [pc, #64]	; (22c <main+0x5c>)
     1ea:	2200      	movs	r2, #0
     1ec:	601a      	str	r2, [r3, #0]
     1ee:	2300      	movs	r3, #0
     1f0:	2294      	movs	r2, #148	; 0x94
     1f2:	18ba      	adds	r2, r7, r2
     1f4:	6013      	str	r3, [r2, #0]
     1f6:	4b0e      	ldr	r3, [pc, #56]	; (230 <main+0x60>)
     1f8:	2200      	movs	r2, #0
     1fa:	601a      	str	r2, [r3, #0]
     1fc:	4b0d      	ldr	r3, [pc, #52]	; (234 <main+0x64>)
     1fe:	4a0d      	ldr	r2, [pc, #52]	; (234 <main+0x64>)
     200:	6812      	ldr	r2, [r2, #0]
     202:	490d      	ldr	r1, [pc, #52]	; (238 <main+0x68>)
     204:	400a      	ands	r2, r1
     206:	601a      	str	r2, [r3, #0]
     208:	4b0a      	ldr	r3, [pc, #40]	; (234 <main+0x64>)
     20a:	4a0a      	ldr	r2, [pc, #40]	; (234 <main+0x64>)
     20c:	6811      	ldr	r1, [r2, #0]
     20e:	4a0b      	ldr	r2, [pc, #44]	; (23c <main+0x6c>)
     210:	8812      	ldrh	r2, [r2, #0]
     212:	0212      	lsls	r2, r2, #8
     214:	0412      	lsls	r2, r2, #16
     216:	0c12      	lsrs	r2, r2, #16
     218:	430a      	orrs	r2, r1
     21a:	601a      	str	r2, [r3, #0]
     21c:	23fa      	movs	r3, #250	; 0xfa
     21e:	009b      	lsls	r3, r3, #2
     220:	0018      	movs	r0, r3
     222:	f7ff ffbf 	bl	1a4 <sleep>
     226:	e7e9      	b.n	1fc <main+0x2c>
     228:	00001630 	.word	0x00001630
     22c:	2000021c 	.word	0x2000021c
     230:	20000220 	.word	0x20000220
     234:	400c0000 	.word	0x400c0000
     238:	ffff00ff 	.word	0xffff00ff
     23c:	20000010 	.word	0x20000010

00000240 <PortConfig>:
     240:	b580      	push	{r7, lr}
     242:	af00      	add	r7, sp, #0
     244:	4b44      	ldr	r3, [pc, #272]	; (358 <PortConfig+0x118>)
     246:	4a44      	ldr	r2, [pc, #272]	; (358 <PortConfig+0x118>)
     248:	69d2      	ldr	r2, [r2, #28]
     24a:	2180      	movs	r1, #128	; 0x80
     24c:	0449      	lsls	r1, r1, #17
     24e:	430a      	orrs	r2, r1
     250:	61da      	str	r2, [r3, #28]
     252:	4b42      	ldr	r3, [pc, #264]	; (35c <PortConfig+0x11c>)
     254:	2200      	movs	r2, #0
     256:	609a      	str	r2, [r3, #8]
     258:	4b40      	ldr	r3, [pc, #256]	; (35c <PortConfig+0x11c>)
     25a:	2200      	movs	r2, #0
     25c:	601a      	str	r2, [r3, #0]
     25e:	4b3f      	ldr	r3, [pc, #252]	; (35c <PortConfig+0x11c>)
     260:	22ff      	movs	r2, #255	; 0xff
     262:	01d2      	lsls	r2, r2, #7
     264:	605a      	str	r2, [r3, #4]
     266:	4b3d      	ldr	r3, [pc, #244]	; (35c <PortConfig+0x11c>)
     268:	22ff      	movs	r2, #255	; 0xff
     26a:	01d2      	lsls	r2, r2, #7
     26c:	60da      	str	r2, [r3, #12]
     26e:	4b3b      	ldr	r3, [pc, #236]	; (35c <PortConfig+0x11c>)
     270:	4a3b      	ldr	r2, [pc, #236]	; (360 <PortConfig+0x120>)
     272:	619a      	str	r2, [r3, #24]
     274:	4b38      	ldr	r3, [pc, #224]	; (358 <PortConfig+0x118>)
     276:	4a38      	ldr	r2, [pc, #224]	; (358 <PortConfig+0x118>)
     278:	69d2      	ldr	r2, [r2, #28]
     27a:	2180      	movs	r1, #128	; 0x80
     27c:	0389      	lsls	r1, r1, #14
     27e:	430a      	orrs	r2, r1
     280:	61da      	str	r2, [r3, #28]
     282:	4b38      	ldr	r3, [pc, #224]	; (364 <PortConfig+0x124>)
     284:	4a37      	ldr	r2, [pc, #220]	; (364 <PortConfig+0x124>)
     286:	6892      	ldr	r2, [r2, #8]
     288:	4937      	ldr	r1, [pc, #220]	; (368 <PortConfig+0x128>)
     28a:	400a      	ands	r2, r1
     28c:	609a      	str	r2, [r3, #8]
     28e:	4b35      	ldr	r3, [pc, #212]	; (364 <PortConfig+0x124>)
     290:	4a34      	ldr	r2, [pc, #208]	; (364 <PortConfig+0x124>)
     292:	6892      	ldr	r2, [r2, #8]
     294:	4935      	ldr	r1, [pc, #212]	; (36c <PortConfig+0x12c>)
     296:	400a      	ands	r2, r1
     298:	609a      	str	r2, [r3, #8]
     29a:	4b32      	ldr	r3, [pc, #200]	; (364 <PortConfig+0x124>)
     29c:	4a31      	ldr	r2, [pc, #196]	; (364 <PortConfig+0x124>)
     29e:	6892      	ldr	r2, [r2, #8]
     2a0:	2180      	movs	r1, #128	; 0x80
     2a2:	0189      	lsls	r1, r1, #6
     2a4:	430a      	orrs	r2, r1
     2a6:	609a      	str	r2, [r3, #8]
     2a8:	4b2e      	ldr	r3, [pc, #184]	; (364 <PortConfig+0x124>)
     2aa:	4a2e      	ldr	r2, [pc, #184]	; (364 <PortConfig+0x124>)
     2ac:	6892      	ldr	r2, [r2, #8]
     2ae:	2180      	movs	r1, #128	; 0x80
     2b0:	0209      	lsls	r1, r1, #8
     2b2:	430a      	orrs	r2, r1
     2b4:	609a      	str	r2, [r3, #8]
     2b6:	4b2b      	ldr	r3, [pc, #172]	; (364 <PortConfig+0x124>)
     2b8:	4a2a      	ldr	r2, [pc, #168]	; (364 <PortConfig+0x124>)
     2ba:	6852      	ldr	r2, [r2, #4]
     2bc:	2140      	movs	r1, #64	; 0x40
     2be:	430a      	orrs	r2, r1
     2c0:	605a      	str	r2, [r3, #4]
     2c2:	4b28      	ldr	r3, [pc, #160]	; (364 <PortConfig+0x124>)
     2c4:	4a27      	ldr	r2, [pc, #156]	; (364 <PortConfig+0x124>)
     2c6:	6852      	ldr	r2, [r2, #4]
     2c8:	2180      	movs	r1, #128	; 0x80
     2ca:	430a      	orrs	r2, r1
     2cc:	605a      	str	r2, [r3, #4]
     2ce:	4b25      	ldr	r3, [pc, #148]	; (364 <PortConfig+0x124>)
     2d0:	4a24      	ldr	r2, [pc, #144]	; (364 <PortConfig+0x124>)
     2d2:	68d2      	ldr	r2, [r2, #12]
     2d4:	2140      	movs	r1, #64	; 0x40
     2d6:	430a      	orrs	r2, r1
     2d8:	60da      	str	r2, [r3, #12]
     2da:	4b22      	ldr	r3, [pc, #136]	; (364 <PortConfig+0x124>)
     2dc:	4a21      	ldr	r2, [pc, #132]	; (364 <PortConfig+0x124>)
     2de:	68d2      	ldr	r2, [r2, #12]
     2e0:	2180      	movs	r1, #128	; 0x80
     2e2:	430a      	orrs	r2, r1
     2e4:	60da      	str	r2, [r3, #12]
     2e6:	4b1f      	ldr	r3, [pc, #124]	; (364 <PortConfig+0x124>)
     2e8:	4a1e      	ldr	r2, [pc, #120]	; (364 <PortConfig+0x124>)
     2ea:	6992      	ldr	r2, [r2, #24]
     2ec:	21c0      	movs	r1, #192	; 0xc0
     2ee:	0189      	lsls	r1, r1, #6
     2f0:	430a      	orrs	r2, r1
     2f2:	619a      	str	r2, [r3, #24]
     2f4:	4b1b      	ldr	r3, [pc, #108]	; (364 <PortConfig+0x124>)
     2f6:	4a1b      	ldr	r2, [pc, #108]	; (364 <PortConfig+0x124>)
     2f8:	6992      	ldr	r2, [r2, #24]
     2fa:	21c0      	movs	r1, #192	; 0xc0
     2fc:	0209      	lsls	r1, r1, #8
     2fe:	430a      	orrs	r2, r1
     300:	619a      	str	r2, [r3, #24]
     302:	4b15      	ldr	r3, [pc, #84]	; (358 <PortConfig+0x118>)
     304:	4a14      	ldr	r2, [pc, #80]	; (358 <PortConfig+0x118>)
     306:	69d2      	ldr	r2, [r2, #28]
     308:	2180      	movs	r1, #128	; 0x80
     30a:	0409      	lsls	r1, r1, #16
     30c:	430a      	orrs	r2, r1
     30e:	61da      	str	r2, [r3, #28]
     310:	4b17      	ldr	r3, [pc, #92]	; (370 <PortConfig+0x130>)
     312:	4a17      	ldr	r2, [pc, #92]	; (370 <PortConfig+0x130>)
     314:	6892      	ldr	r2, [r2, #8]
     316:	4917      	ldr	r1, [pc, #92]	; (374 <PortConfig+0x134>)
     318:	400a      	ands	r2, r1
     31a:	609a      	str	r2, [r3, #8]
     31c:	4b14      	ldr	r3, [pc, #80]	; (370 <PortConfig+0x130>)
     31e:	4a14      	ldr	r2, [pc, #80]	; (370 <PortConfig+0x130>)
     320:	6892      	ldr	r2, [r2, #8]
     322:	21a0      	movs	r1, #160	; 0xa0
     324:	0049      	lsls	r1, r1, #1
     326:	430a      	orrs	r2, r1
     328:	609a      	str	r2, [r3, #8]
     32a:	4b11      	ldr	r3, [pc, #68]	; (370 <PortConfig+0x130>)
     32c:	4a10      	ldr	r2, [pc, #64]	; (370 <PortConfig+0x130>)
     32e:	68d2      	ldr	r2, [r2, #12]
     330:	2118      	movs	r1, #24
     332:	430a      	orrs	r2, r1
     334:	60da      	str	r2, [r3, #12]
     336:	4b0e      	ldr	r3, [pc, #56]	; (370 <PortConfig+0x130>)
     338:	4a0d      	ldr	r2, [pc, #52]	; (370 <PortConfig+0x130>)
     33a:	6992      	ldr	r2, [r2, #24]
     33c:	21f0      	movs	r1, #240	; 0xf0
     33e:	0089      	lsls	r1, r1, #2
     340:	430a      	orrs	r2, r1
     342:	619a      	str	r2, [r3, #24]
     344:	4b0a      	ldr	r3, [pc, #40]	; (370 <PortConfig+0x130>)
     346:	4a0a      	ldr	r2, [pc, #40]	; (370 <PortConfig+0x130>)
     348:	6812      	ldr	r2, [r2, #0]
     34a:	2118      	movs	r1, #24
     34c:	438a      	bics	r2, r1
     34e:	601a      	str	r2, [r3, #0]
     350:	46c0      	nop			; (mov r8, r8)
     352:	46bd      	mov	sp, r7
     354:	bd80      	pop	{r7, pc}
     356:	46c0      	nop			; (mov r8, r8)
     358:	40020000 	.word	0x40020000
     35c:	400c0000 	.word	0x400c0000
     360:	3fffc000 	.word	0x3fffc000
     364:	400a8000 	.word	0x400a8000
     368:	ffffcfff 	.word	0xffffcfff
     36c:	ffff3fff 	.word	0xffff3fff
     370:	400b8000 	.word	0x400b8000
     374:	fffffc3f 	.word	0xfffffc3f

00000378 <ClkConfig>:
     378:	b580      	push	{r7, lr}
     37a:	af00      	add	r7, sp, #0
     37c:	4b18      	ldr	r3, [pc, #96]	; (3e0 <ClkConfig+0x68>)
     37e:	4a18      	ldr	r2, [pc, #96]	; (3e0 <ClkConfig+0x68>)
     380:	6892      	ldr	r2, [r2, #8]
     382:	2101      	movs	r1, #1
     384:	430a      	orrs	r2, r1
     386:	609a      	str	r2, [r3, #8]
     388:	46c0      	nop			; (mov r8, r8)
     38a:	4b15      	ldr	r3, [pc, #84]	; (3e0 <ClkConfig+0x68>)
     38c:	681b      	ldr	r3, [r3, #0]
     38e:	2204      	movs	r2, #4
     390:	4013      	ands	r3, r2
     392:	d0fa      	beq.n	38a <ClkConfig+0x12>
     394:	4b12      	ldr	r3, [pc, #72]	; (3e0 <ClkConfig+0x68>)
     396:	4a12      	ldr	r2, [pc, #72]	; (3e0 <ClkConfig+0x68>)
     398:	68d2      	ldr	r2, [r2, #12]
     39a:	2102      	movs	r1, #2
     39c:	430a      	orrs	r2, r1
     39e:	60da      	str	r2, [r3, #12]
     3a0:	4b0f      	ldr	r3, [pc, #60]	; (3e0 <ClkConfig+0x68>)
     3a2:	4a10      	ldr	r2, [pc, #64]	; (3e4 <ClkConfig+0x6c>)
     3a4:	605a      	str	r2, [r3, #4]
     3a6:	46c0      	nop			; (mov r8, r8)
     3a8:	4b0d      	ldr	r3, [pc, #52]	; (3e0 <ClkConfig+0x68>)
     3aa:	681b      	ldr	r3, [r3, #0]
     3ac:	2202      	movs	r2, #2
     3ae:	4013      	ands	r3, r2
     3b0:	d0fa      	beq.n	3a8 <ClkConfig+0x30>
     3b2:	4b0d      	ldr	r3, [pc, #52]	; (3e8 <ClkConfig+0x70>)
     3b4:	4a0c      	ldr	r2, [pc, #48]	; (3e8 <ClkConfig+0x70>)
     3b6:	6812      	ldr	r2, [r2, #0]
     3b8:	2120      	movs	r1, #32
     3ba:	430a      	orrs	r2, r1
     3bc:	601a      	str	r2, [r3, #0]
     3be:	4b08      	ldr	r3, [pc, #32]	; (3e0 <ClkConfig+0x68>)
     3c0:	4a07      	ldr	r2, [pc, #28]	; (3e0 <ClkConfig+0x68>)
     3c2:	68d2      	ldr	r2, [r2, #12]
     3c4:	2180      	movs	r1, #128	; 0x80
     3c6:	0049      	lsls	r1, r1, #1
     3c8:	430a      	orrs	r2, r1
     3ca:	60da      	str	r2, [r3, #12]
     3cc:	4b04      	ldr	r3, [pc, #16]	; (3e0 <ClkConfig+0x68>)
     3ce:	4a04      	ldr	r2, [pc, #16]	; (3e0 <ClkConfig+0x68>)
     3d0:	68d2      	ldr	r2, [r2, #12]
     3d2:	2104      	movs	r1, #4
     3d4:	430a      	orrs	r2, r1
     3d6:	60da      	str	r2, [r3, #12]
     3d8:	46c0      	nop			; (mov r8, r8)
     3da:	46bd      	mov	sp, r7
     3dc:	bd80      	pop	{r7, pc}
     3de:	46c0      	nop			; (mov r8, r8)
     3e0:	40020000 	.word	0x40020000
     3e4:	00000e04 	.word	0x00000e04
     3e8:	40018000 	.word	0x40018000

000003ec <TimerConfig>:
     3ec:	b580      	push	{r7, lr}
     3ee:	af00      	add	r7, sp, #0
     3f0:	4b35      	ldr	r3, [pc, #212]	; (4c8 <_stack_size+0xc8>)
     3f2:	4a35      	ldr	r2, [pc, #212]	; (4c8 <_stack_size+0xc8>)
     3f4:	69d2      	ldr	r2, [r2, #28]
     3f6:	2180      	movs	r1, #128	; 0x80
     3f8:	0309      	lsls	r1, r1, #12
     3fa:	430a      	orrs	r2, r1
     3fc:	61da      	str	r2, [r3, #28]
     3fe:	4b32      	ldr	r3, [pc, #200]	; (4c8 <_stack_size+0xc8>)
     400:	4a31      	ldr	r2, [pc, #196]	; (4c8 <_stack_size+0xc8>)
     402:	6a92      	ldr	r2, [r2, #40]	; 0x28
     404:	2180      	movs	r1, #128	; 0x80
     406:	04c9      	lsls	r1, r1, #19
     408:	430a      	orrs	r2, r1
     40a:	629a      	str	r2, [r3, #40]	; 0x28
     40c:	4b2e      	ldr	r3, [pc, #184]	; (4c8 <_stack_size+0xc8>)
     40e:	4a2e      	ldr	r2, [pc, #184]	; (4c8 <_stack_size+0xc8>)
     410:	6a92      	ldr	r2, [r2, #40]	; 0x28
     412:	492e      	ldr	r1, [pc, #184]	; (4cc <_stack_size+0xcc>)
     414:	400a      	ands	r2, r1
     416:	629a      	str	r2, [r3, #40]	; 0x28
     418:	4b2d      	ldr	r3, [pc, #180]	; (4d0 <_stack_size+0xd0>)
     41a:	2200      	movs	r2, #0
     41c:	601a      	str	r2, [r3, #0]
     41e:	4b2c      	ldr	r3, [pc, #176]	; (4d0 <_stack_size+0xd0>)
     420:	220b      	movs	r2, #11
     422:	605a      	str	r2, [r3, #4]
     424:	4b2a      	ldr	r3, [pc, #168]	; (4d0 <_stack_size+0xd0>)
     426:	4a2b      	ldr	r2, [pc, #172]	; (4d4 <_stack_size+0xd4>)
     428:	609a      	str	r2, [r3, #8]
     42a:	4b29      	ldr	r3, [pc, #164]	; (4d0 <_stack_size+0xd0>)
     42c:	22fa      	movs	r2, #250	; 0xfa
     42e:	0052      	lsls	r2, r2, #1
     430:	611a      	str	r2, [r3, #16]
     432:	4b27      	ldr	r3, [pc, #156]	; (4d0 <_stack_size+0xd0>)
     434:	4a26      	ldr	r2, [pc, #152]	; (4d0 <_stack_size+0xd0>)
     436:	6a12      	ldr	r2, [r2, #32]
     438:	4927      	ldr	r1, [pc, #156]	; (4d8 <_stack_size+0xd8>)
     43a:	400a      	ands	r2, r1
     43c:	621a      	str	r2, [r3, #32]
     43e:	4b24      	ldr	r3, [pc, #144]	; (4d0 <_stack_size+0xd0>)
     440:	4a23      	ldr	r2, [pc, #140]	; (4d0 <_stack_size+0xd0>)
     442:	6a12      	ldr	r2, [r2, #32]
     444:	21e0      	movs	r1, #224	; 0xe0
     446:	0109      	lsls	r1, r1, #4
     448:	430a      	orrs	r2, r1
     44a:	621a      	str	r2, [r3, #32]
     44c:	4b20      	ldr	r3, [pc, #128]	; (4d0 <_stack_size+0xd0>)
     44e:	4a20      	ldr	r2, [pc, #128]	; (4d0 <_stack_size+0xd0>)
     450:	6b12      	ldr	r2, [r2, #48]	; 0x30
     452:	210f      	movs	r1, #15
     454:	438a      	bics	r2, r1
     456:	631a      	str	r2, [r3, #48]	; 0x30
     458:	4b1d      	ldr	r3, [pc, #116]	; (4d0 <_stack_size+0xd0>)
     45a:	4a1d      	ldr	r2, [pc, #116]	; (4d0 <_stack_size+0xd0>)
     45c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     45e:	210c      	movs	r1, #12
     460:	430a      	orrs	r2, r1
     462:	631a      	str	r2, [r3, #48]	; 0x30
     464:	4b1a      	ldr	r3, [pc, #104]	; (4d0 <_stack_size+0xd0>)
     466:	4a1a      	ldr	r2, [pc, #104]	; (4d0 <_stack_size+0xd0>)
     468:	6b12      	ldr	r2, [r2, #48]	; 0x30
     46a:	2101      	movs	r1, #1
     46c:	430a      	orrs	r2, r1
     46e:	631a      	str	r2, [r3, #48]	; 0x30
     470:	4b17      	ldr	r3, [pc, #92]	; (4d0 <_stack_size+0xd0>)
     472:	4a17      	ldr	r2, [pc, #92]	; (4d0 <_stack_size+0xd0>)
     474:	6b12      	ldr	r2, [r2, #48]	; 0x30
     476:	4919      	ldr	r1, [pc, #100]	; (4dc <_stack_size+0xdc>)
     478:	400a      	ands	r2, r1
     47a:	631a      	str	r2, [r3, #48]	; 0x30
     47c:	4b14      	ldr	r3, [pc, #80]	; (4d0 <_stack_size+0xd0>)
     47e:	4a14      	ldr	r2, [pc, #80]	; (4d0 <_stack_size+0xd0>)
     480:	6b12      	ldr	r2, [r2, #48]	; 0x30
     482:	21c0      	movs	r1, #192	; 0xc0
     484:	0109      	lsls	r1, r1, #4
     486:	430a      	orrs	r2, r1
     488:	631a      	str	r2, [r3, #48]	; 0x30
     48a:	4b11      	ldr	r3, [pc, #68]	; (4d0 <_stack_size+0xd0>)
     48c:	4a10      	ldr	r2, [pc, #64]	; (4d0 <_stack_size+0xd0>)
     48e:	6b12      	ldr	r2, [r2, #48]	; 0x30
     490:	2180      	movs	r1, #128	; 0x80
     492:	0049      	lsls	r1, r1, #1
     494:	430a      	orrs	r2, r1
     496:	631a      	str	r2, [r3, #48]	; 0x30
     498:	4b0d      	ldr	r3, [pc, #52]	; (4d0 <_stack_size+0xd0>)
     49a:	4a0d      	ldr	r2, [pc, #52]	; (4d0 <_stack_size+0xd0>)
     49c:	6c12      	ldr	r2, [r2, #64]	; 0x40
     49e:	21c8      	movs	r1, #200	; 0xc8
     4a0:	0209      	lsls	r1, r1, #8
     4a2:	430a      	orrs	r2, r1
     4a4:	641a      	str	r2, [r3, #64]	; 0x40
     4a6:	4b0a      	ldr	r3, [pc, #40]	; (4d0 <_stack_size+0xd0>)
     4a8:	4a09      	ldr	r2, [pc, #36]	; (4d0 <_stack_size+0xd0>)
     4aa:	6d92      	ldr	r2, [r2, #88]	; 0x58
     4ac:	21f0      	movs	r1, #240	; 0xf0
     4ae:	0149      	lsls	r1, r1, #5
     4b0:	430a      	orrs	r2, r1
     4b2:	659a      	str	r2, [r3, #88]	; 0x58
     4b4:	4b06      	ldr	r3, [pc, #24]	; (4d0 <_stack_size+0xd0>)
     4b6:	2201      	movs	r2, #1
     4b8:	60da      	str	r2, [r3, #12]
     4ba:	200d      	movs	r0, #13
     4bc:	f7ff fe00 	bl	c0 <NVIC_EnableIRQ>
     4c0:	46c0      	nop			; (mov r8, r8)
     4c2:	46bd      	mov	sp, r7
     4c4:	bd80      	pop	{r7, pc}
     4c6:	46c0      	nop			; (mov r8, r8)
     4c8:	40020000 	.word	0x40020000
     4cc:	ff00ffff 	.word	0xff00ffff
     4d0:	40098000 	.word	0x40098000
     4d4:	000003e7 	.word	0x000003e7
     4d8:	fffff1ff 	.word	0xfffff1ff
     4dc:	fffff0ff 	.word	0xfffff0ff

000004e0 <SystemInit>:
     4e0:	b580      	push	{r7, lr}
     4e2:	af00      	add	r7, sp, #0
     4e4:	f7ff ff48 	bl	378 <ClkConfig>
     4e8:	f7ff feaa 	bl	240 <PortConfig>
     4ec:	f000 f8e6 	bl	6bc <modbus_init>
     4f0:	4b03      	ldr	r3, [pc, #12]	; (500 <SystemInit+0x20>)
     4f2:	0018      	movs	r0, r3
     4f4:	f7ff fe30 	bl	158 <SysTick_Config>
     4f8:	46c0      	nop			; (mov r8, r8)
     4fa:	46bd      	mov	sp, r7
     4fc:	bd80      	pop	{r7, pc}
     4fe:	46c0      	nop			; (mov r8, r8)
     500:	0001d4c0 	.word	0x0001d4c0

00000504 <SysTick_Handler>:
     504:	b580      	push	{r7, lr}
     506:	af00      	add	r7, sp, #0
     508:	4b03      	ldr	r3, [pc, #12]	; (518 <SysTick_Handler+0x14>)
     50a:	681b      	ldr	r3, [r3, #0]
     50c:	1c5a      	adds	r2, r3, #1
     50e:	4b02      	ldr	r3, [pc, #8]	; (518 <SysTick_Handler+0x14>)
     510:	601a      	str	r2, [r3, #0]
     512:	46c0      	nop			; (mov r8, r8)
     514:	46bd      	mov	sp, r7
     516:	bd80      	pop	{r7, pc}
     518:	20000224 	.word	0x20000224

0000051c <TIMER4_Handler>:
     51c:	b580      	push	{r7, lr}
     51e:	af00      	add	r7, sp, #0
     520:	4b02      	ldr	r3, [pc, #8]	; (52c <TIMER4_Handler+0x10>)
     522:	2200      	movs	r2, #0
     524:	655a      	str	r2, [r3, #84]	; 0x54
     526:	46c0      	nop			; (mov r8, r8)
     528:	46bd      	mov	sp, r7
     52a:	bd80      	pop	{r7, pc}
     52c:	40098000 	.word	0x40098000

00000530 <handler_reset>:
     530:	b580      	push	{r7, lr}
     532:	b082      	sub	sp, #8
     534:	af00      	add	r7, sp, #0
     536:	4b11      	ldr	r3, [pc, #68]	; (57c <handler_reset+0x4c>)
     538:	607b      	str	r3, [r7, #4]
     53a:	4b11      	ldr	r3, [pc, #68]	; (580 <handler_reset+0x50>)
     53c:	603b      	str	r3, [r7, #0]
     53e:	e007      	b.n	550 <handler_reset+0x20>
     540:	683b      	ldr	r3, [r7, #0]
     542:	1d1a      	adds	r2, r3, #4
     544:	603a      	str	r2, [r7, #0]
     546:	687a      	ldr	r2, [r7, #4]
     548:	1d11      	adds	r1, r2, #4
     54a:	6079      	str	r1, [r7, #4]
     54c:	6812      	ldr	r2, [r2, #0]
     54e:	601a      	str	r2, [r3, #0]
     550:	683a      	ldr	r2, [r7, #0]
     552:	4b0c      	ldr	r3, [pc, #48]	; (584 <handler_reset+0x54>)
     554:	429a      	cmp	r2, r3
     556:	d3f3      	bcc.n	540 <handler_reset+0x10>
     558:	4b0b      	ldr	r3, [pc, #44]	; (588 <handler_reset+0x58>)
     55a:	603b      	str	r3, [r7, #0]
     55c:	e004      	b.n	568 <handler_reset+0x38>
     55e:	683b      	ldr	r3, [r7, #0]
     560:	1d1a      	adds	r2, r3, #4
     562:	603a      	str	r2, [r7, #0]
     564:	2200      	movs	r2, #0
     566:	601a      	str	r2, [r3, #0]
     568:	683a      	ldr	r2, [r7, #0]
     56a:	4b08      	ldr	r3, [pc, #32]	; (58c <handler_reset+0x5c>)
     56c:	429a      	cmp	r2, r3
     56e:	d3f6      	bcc.n	55e <handler_reset+0x2e>
     570:	f7ff fe2e 	bl	1d0 <main>
     574:	46c0      	nop			; (mov r8, r8)
     576:	46bd      	mov	sp, r7
     578:	b002      	add	sp, #8
     57a:	bd80      	pop	{r7, pc}
     57c:	00001a58 	.word	0x00001a58
     580:	20000000 	.word	0x20000000
     584:	2000021c 	.word	0x2000021c
     588:	2000021c 	.word	0x2000021c
     58c:	2000043c 	.word	0x2000043c

00000590 <default_handler>:
     590:	b580      	push	{r7, lr}
     592:	af00      	add	r7, sp, #0
     594:	e7fe      	b.n	594 <default_handler+0x4>
     596:	46c0      	nop			; (mov r8, r8)

00000598 <NVIC_EnableIRQ>:
     598:	b580      	push	{r7, lr}
     59a:	b082      	sub	sp, #8
     59c:	af00      	add	r7, sp, #0
     59e:	0002      	movs	r2, r0
     5a0:	1dfb      	adds	r3, r7, #7
     5a2:	701a      	strb	r2, [r3, #0]
     5a4:	4909      	ldr	r1, [pc, #36]	; (5cc <NVIC_EnableIRQ+0x34>)
     5a6:	1dfb      	adds	r3, r7, #7
     5a8:	781b      	ldrb	r3, [r3, #0]
     5aa:	b25b      	sxtb	r3, r3
     5ac:	095b      	lsrs	r3, r3, #5
     5ae:	1dfa      	adds	r2, r7, #7
     5b0:	7812      	ldrb	r2, [r2, #0]
     5b2:	0010      	movs	r0, r2
     5b4:	221f      	movs	r2, #31
     5b6:	4002      	ands	r2, r0
     5b8:	2001      	movs	r0, #1
     5ba:	4090      	lsls	r0, r2
     5bc:	0002      	movs	r2, r0
     5be:	009b      	lsls	r3, r3, #2
     5c0:	505a      	str	r2, [r3, r1]
     5c2:	46c0      	nop			; (mov r8, r8)
     5c4:	46bd      	mov	sp, r7
     5c6:	b002      	add	sp, #8
     5c8:	bd80      	pop	{r7, pc}
     5ca:	46c0      	nop			; (mov r8, r8)
     5cc:	e000e100 	.word	0xe000e100

000005d0 <start_trans>:
     5d0:	b580      	push	{r7, lr}
     5d2:	b082      	sub	sp, #8
     5d4:	af00      	add	r7, sp, #0
     5d6:	6078      	str	r0, [r7, #4]
     5d8:	687b      	ldr	r3, [r7, #4]
     5da:	2b03      	cmp	r3, #3
     5dc:	dd1d      	ble.n	61a <start_trans+0x4a>
     5de:	687b      	ldr	r3, [r7, #4]
     5e0:	3b04      	subs	r3, #4
     5e2:	001a      	movs	r2, r3
     5e4:	4b0f      	ldr	r3, [pc, #60]	; (624 <start_trans+0x54>)
     5e6:	601a      	str	r2, [r3, #0]
     5e8:	4b0f      	ldr	r3, [pc, #60]	; (628 <start_trans+0x58>)
     5ea:	2204      	movs	r2, #4
     5ec:	601a      	str	r2, [r3, #0]
     5ee:	4b0f      	ldr	r3, [pc, #60]	; (62c <start_trans+0x5c>)
     5f0:	4a0e      	ldr	r2, [pc, #56]	; (62c <start_trans+0x5c>)
     5f2:	6b92      	ldr	r2, [r2, #56]	; 0x38
     5f4:	2120      	movs	r1, #32
     5f6:	430a      	orrs	r2, r1
     5f8:	639a      	str	r2, [r3, #56]	; 0x38
     5fa:	4b0c      	ldr	r3, [pc, #48]	; (62c <start_trans+0x5c>)
     5fc:	4a0c      	ldr	r2, [pc, #48]	; (630 <start_trans+0x60>)
     5fe:	7812      	ldrb	r2, [r2, #0]
     600:	601a      	str	r2, [r3, #0]
     602:	4b0a      	ldr	r3, [pc, #40]	; (62c <start_trans+0x5c>)
     604:	4a0a      	ldr	r2, [pc, #40]	; (630 <start_trans+0x60>)
     606:	7852      	ldrb	r2, [r2, #1]
     608:	601a      	str	r2, [r3, #0]
     60a:	4b08      	ldr	r3, [pc, #32]	; (62c <start_trans+0x5c>)
     60c:	4a08      	ldr	r2, [pc, #32]	; (630 <start_trans+0x60>)
     60e:	7892      	ldrb	r2, [r2, #2]
     610:	601a      	str	r2, [r3, #0]
     612:	4b06      	ldr	r3, [pc, #24]	; (62c <start_trans+0x5c>)
     614:	4a06      	ldr	r2, [pc, #24]	; (630 <start_trans+0x60>)
     616:	78d2      	ldrb	r2, [r2, #3]
     618:	601a      	str	r2, [r3, #0]
     61a:	46c0      	nop			; (mov r8, r8)
     61c:	46bd      	mov	sp, r7
     61e:	b002      	add	sp, #8
     620:	bd80      	pop	{r7, pc}
     622:	46c0      	nop			; (mov r8, r8)
     624:	20000438 	.word	0x20000438
     628:	20000434 	.word	0x20000434
     62c:	40030000 	.word	0x40030000
     630:	20000334 	.word	0x20000334

00000634 <uart_init>:
     634:	b580      	push	{r7, lr}
     636:	af00      	add	r7, sp, #0
     638:	4b1d      	ldr	r3, [pc, #116]	; (6b0 <uart_init+0x7c>)
     63a:	4a1d      	ldr	r2, [pc, #116]	; (6b0 <uart_init+0x7c>)
     63c:	69d2      	ldr	r2, [r2, #28]
     63e:	2140      	movs	r1, #64	; 0x40
     640:	430a      	orrs	r2, r1
     642:	61da      	str	r2, [r3, #28]
     644:	4b1a      	ldr	r3, [pc, #104]	; (6b0 <uart_init+0x7c>)
     646:	4a1a      	ldr	r2, [pc, #104]	; (6b0 <uart_init+0x7c>)
     648:	6a92      	ldr	r2, [r2, #40]	; 0x28
     64a:	2180      	movs	r1, #128	; 0x80
     64c:	0449      	lsls	r1, r1, #17
     64e:	430a      	orrs	r2, r1
     650:	629a      	str	r2, [r3, #40]	; 0x28
     652:	4b18      	ldr	r3, [pc, #96]	; (6b4 <uart_init+0x80>)
     654:	2241      	movs	r2, #65	; 0x41
     656:	625a      	str	r2, [r3, #36]	; 0x24
     658:	4b16      	ldr	r3, [pc, #88]	; (6b4 <uart_init+0x80>)
     65a:	2207      	movs	r2, #7
     65c:	629a      	str	r2, [r3, #40]	; 0x28
     65e:	4b15      	ldr	r3, [pc, #84]	; (6b4 <uart_init+0x80>)
     660:	4a14      	ldr	r2, [pc, #80]	; (6b4 <uart_init+0x80>)
     662:	6b52      	ldr	r2, [r2, #52]	; 0x34
     664:	213f      	movs	r1, #63	; 0x3f
     666:	438a      	bics	r2, r1
     668:	635a      	str	r2, [r3, #52]	; 0x34
     66a:	4b12      	ldr	r3, [pc, #72]	; (6b4 <uart_init+0x80>)
     66c:	4a11      	ldr	r2, [pc, #68]	; (6b4 <uart_init+0x80>)
     66e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     670:	635a      	str	r2, [r3, #52]	; 0x34
     672:	4b10      	ldr	r3, [pc, #64]	; (6b4 <uart_init+0x80>)
     674:	4a0f      	ldr	r2, [pc, #60]	; (6b4 <uart_init+0x80>)
     676:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     678:	2110      	movs	r1, #16
     67a:	430a      	orrs	r2, r1
     67c:	62da      	str	r2, [r3, #44]	; 0x2c
     67e:	4b0d      	ldr	r3, [pc, #52]	; (6b4 <uart_init+0x80>)
     680:	4a0c      	ldr	r2, [pc, #48]	; (6b4 <uart_init+0x80>)
     682:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     684:	2160      	movs	r1, #96	; 0x60
     686:	430a      	orrs	r2, r1
     688:	62da      	str	r2, [r3, #44]	; 0x2c
     68a:	4b0a      	ldr	r3, [pc, #40]	; (6b4 <uart_init+0x80>)
     68c:	4a09      	ldr	r2, [pc, #36]	; (6b4 <uart_init+0x80>)
     68e:	6b12      	ldr	r2, [r2, #48]	; 0x30
     690:	4909      	ldr	r1, [pc, #36]	; (6b8 <uart_init+0x84>)
     692:	430a      	orrs	r2, r1
     694:	631a      	str	r2, [r3, #48]	; 0x30
     696:	4b07      	ldr	r3, [pc, #28]	; (6b4 <uart_init+0x80>)
     698:	4a06      	ldr	r2, [pc, #24]	; (6b4 <uart_init+0x80>)
     69a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     69c:	2150      	movs	r1, #80	; 0x50
     69e:	430a      	orrs	r2, r1
     6a0:	639a      	str	r2, [r3, #56]	; 0x38
     6a2:	2006      	movs	r0, #6
     6a4:	f7ff ff78 	bl	598 <NVIC_EnableIRQ>
     6a8:	46c0      	nop			; (mov r8, r8)
     6aa:	46bd      	mov	sp, r7
     6ac:	bd80      	pop	{r7, pc}
     6ae:	46c0      	nop			; (mov r8, r8)
     6b0:	40020000 	.word	0x40020000
     6b4:	40030000 	.word	0x40030000
     6b8:	00000301 	.word	0x00000301

000006bc <modbus_init>:
     6bc:	b580      	push	{r7, lr}
     6be:	af00      	add	r7, sp, #0
     6c0:	f7ff ffb8 	bl	634 <uart_init>
     6c4:	4b04      	ldr	r3, [pc, #16]	; (6d8 <modbus_init+0x1c>)
     6c6:	2200      	movs	r2, #0
     6c8:	601a      	str	r2, [r3, #0]
     6ca:	4b04      	ldr	r3, [pc, #16]	; (6dc <modbus_init+0x20>)
     6cc:	2200      	movs	r2, #0
     6ce:	601a      	str	r2, [r3, #0]
     6d0:	46c0      	nop			; (mov r8, r8)
     6d2:	46bd      	mov	sp, r7
     6d4:	bd80      	pop	{r7, pc}
     6d6:	46c0      	nop			; (mov r8, r8)
     6d8:	20000438 	.word	0x20000438
     6dc:	20000434 	.word	0x20000434

000006e0 <UART1_Handler>:
     6e0:	b580      	push	{r7, lr}
     6e2:	af00      	add	r7, sp, #0
     6e4:	4b29      	ldr	r3, [pc, #164]	; (78c <UART1_Handler+0xac>)
     6e6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     6e8:	2240      	movs	r2, #64	; 0x40
     6ea:	4013      	ands	r3, r2
     6ec:	d016      	beq.n	71c <UART1_Handler+0x3c>
     6ee:	4b28      	ldr	r3, [pc, #160]	; (790 <UART1_Handler+0xb0>)
     6f0:	681a      	ldr	r2, [r3, #0]
     6f2:	4b26      	ldr	r3, [pc, #152]	; (78c <UART1_Handler+0xac>)
     6f4:	681b      	ldr	r3, [r3, #0]
     6f6:	b2d9      	uxtb	r1, r3
     6f8:	4b26      	ldr	r3, [pc, #152]	; (794 <UART1_Handler+0xb4>)
     6fa:	5499      	strb	r1, [r3, r2]
     6fc:	4b24      	ldr	r3, [pc, #144]	; (790 <UART1_Handler+0xb0>)
     6fe:	681b      	ldr	r3, [r3, #0]
     700:	3301      	adds	r3, #1
     702:	22ff      	movs	r2, #255	; 0xff
     704:	401a      	ands	r2, r3
     706:	4b22      	ldr	r3, [pc, #136]	; (790 <UART1_Handler+0xb0>)
     708:	601a      	str	r2, [r3, #0]
     70a:	f000 feef 	bl	14ec <proc_ADU>
     70e:	4b20      	ldr	r3, [pc, #128]	; (790 <UART1_Handler+0xb0>)
     710:	681a      	ldr	r2, [r3, #0]
     712:	4b21      	ldr	r3, [pc, #132]	; (798 <UART1_Handler+0xb8>)
     714:	601a      	str	r2, [r3, #0]
     716:	4b1e      	ldr	r3, [pc, #120]	; (790 <UART1_Handler+0xb0>)
     718:	2200      	movs	r2, #0
     71a:	601a      	str	r2, [r3, #0]
     71c:	4b1b      	ldr	r3, [pc, #108]	; (78c <UART1_Handler+0xac>)
     71e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     720:	2220      	movs	r2, #32
     722:	4013      	ands	r3, r2
     724:	d01c      	beq.n	760 <UART1_Handler+0x80>
     726:	4b1d      	ldr	r3, [pc, #116]	; (79c <UART1_Handler+0xbc>)
     728:	681b      	ldr	r3, [r3, #0]
     72a:	2b00      	cmp	r3, #0
     72c:	d106      	bne.n	73c <UART1_Handler+0x5c>
     72e:	4b17      	ldr	r3, [pc, #92]	; (78c <UART1_Handler+0xac>)
     730:	4a16      	ldr	r2, [pc, #88]	; (78c <UART1_Handler+0xac>)
     732:	6b92      	ldr	r2, [r2, #56]	; 0x38
     734:	2120      	movs	r1, #32
     736:	438a      	bics	r2, r1
     738:	639a      	str	r2, [r3, #56]	; 0x38
     73a:	e011      	b.n	760 <UART1_Handler+0x80>
     73c:	4a13      	ldr	r2, [pc, #76]	; (78c <UART1_Handler+0xac>)
     73e:	4b18      	ldr	r3, [pc, #96]	; (7a0 <UART1_Handler+0xc0>)
     740:	681b      	ldr	r3, [r3, #0]
     742:	4918      	ldr	r1, [pc, #96]	; (7a4 <UART1_Handler+0xc4>)
     744:	5ccb      	ldrb	r3, [r1, r3]
     746:	6013      	str	r3, [r2, #0]
     748:	4b15      	ldr	r3, [pc, #84]	; (7a0 <UART1_Handler+0xc0>)
     74a:	681b      	ldr	r3, [r3, #0]
     74c:	3301      	adds	r3, #1
     74e:	22ff      	movs	r2, #255	; 0xff
     750:	401a      	ands	r2, r3
     752:	4b13      	ldr	r3, [pc, #76]	; (7a0 <UART1_Handler+0xc0>)
     754:	601a      	str	r2, [r3, #0]
     756:	4b11      	ldr	r3, [pc, #68]	; (79c <UART1_Handler+0xbc>)
     758:	681b      	ldr	r3, [r3, #0]
     75a:	1e5a      	subs	r2, r3, #1
     75c:	4b0f      	ldr	r3, [pc, #60]	; (79c <UART1_Handler+0xbc>)
     75e:	601a      	str	r2, [r3, #0]
     760:	4b0a      	ldr	r3, [pc, #40]	; (78c <UART1_Handler+0xac>)
     762:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     764:	2210      	movs	r2, #16
     766:	4013      	ands	r3, r2
     768:	d00d      	beq.n	786 <UART1_Handler+0xa6>
     76a:	4b09      	ldr	r3, [pc, #36]	; (790 <UART1_Handler+0xb0>)
     76c:	681a      	ldr	r2, [r3, #0]
     76e:	4b07      	ldr	r3, [pc, #28]	; (78c <UART1_Handler+0xac>)
     770:	681b      	ldr	r3, [r3, #0]
     772:	b2d9      	uxtb	r1, r3
     774:	4b07      	ldr	r3, [pc, #28]	; (794 <UART1_Handler+0xb4>)
     776:	5499      	strb	r1, [r3, r2]
     778:	4b05      	ldr	r3, [pc, #20]	; (790 <UART1_Handler+0xb0>)
     77a:	681b      	ldr	r3, [r3, #0]
     77c:	3301      	adds	r3, #1
     77e:	22ff      	movs	r2, #255	; 0xff
     780:	401a      	ands	r2, r3
     782:	4b03      	ldr	r3, [pc, #12]	; (790 <UART1_Handler+0xb0>)
     784:	601a      	str	r2, [r3, #0]
     786:	46c0      	nop			; (mov r8, r8)
     788:	46bd      	mov	sp, r7
     78a:	bd80      	pop	{r7, pc}
     78c:	40030000 	.word	0x40030000
     790:	2000032c 	.word	0x2000032c
     794:	2000022c 	.word	0x2000022c
     798:	20000330 	.word	0x20000330
     79c:	20000438 	.word	0x20000438
     7a0:	20000434 	.word	0x20000434
     7a4:	20000334 	.word	0x20000334

000007a8 <pack_bits_to_bytes>:
     7a8:	b580      	push	{r7, lr}
     7aa:	b088      	sub	sp, #32
     7ac:	af00      	add	r7, sp, #0
     7ae:	60f8      	str	r0, [r7, #12]
     7b0:	60b9      	str	r1, [r7, #8]
     7b2:	607a      	str	r2, [r7, #4]
     7b4:	603b      	str	r3, [r7, #0]
     7b6:	687b      	ldr	r3, [r7, #4]
     7b8:	10db      	asrs	r3, r3, #3
     7ba:	61fb      	str	r3, [r7, #28]
     7bc:	687b      	ldr	r3, [r7, #4]
     7be:	2207      	movs	r2, #7
     7c0:	4013      	ands	r3, r2
     7c2:	617b      	str	r3, [r7, #20]
     7c4:	2300      	movs	r3, #0
     7c6:	61bb      	str	r3, [r7, #24]
     7c8:	69fb      	ldr	r3, [r7, #28]
     7ca:	1c5a      	adds	r2, r3, #1
     7cc:	61fa      	str	r2, [r7, #28]
     7ce:	001a      	movs	r2, r3
     7d0:	68bb      	ldr	r3, [r7, #8]
     7d2:	189b      	adds	r3, r3, r2
     7d4:	781b      	ldrb	r3, [r3, #0]
     7d6:	001a      	movs	r2, r3
     7d8:	697b      	ldr	r3, [r7, #20]
     7da:	411a      	asrs	r2, r3
     7dc:	2313      	movs	r3, #19
     7de:	18fb      	adds	r3, r7, r3
     7e0:	701a      	strb	r2, [r3, #0]
     7e2:	69fb      	ldr	r3, [r7, #28]
     7e4:	68ba      	ldr	r2, [r7, #8]
     7e6:	18d3      	adds	r3, r2, r3
     7e8:	781b      	ldrb	r3, [r3, #0]
     7ea:	0019      	movs	r1, r3
     7ec:	697b      	ldr	r3, [r7, #20]
     7ee:	2208      	movs	r2, #8
     7f0:	1ad3      	subs	r3, r2, r3
     7f2:	4099      	lsls	r1, r3
     7f4:	000b      	movs	r3, r1
     7f6:	b25a      	sxtb	r2, r3
     7f8:	2313      	movs	r3, #19
     7fa:	18fb      	adds	r3, r7, r3
     7fc:	781b      	ldrb	r3, [r3, #0]
     7fe:	b25b      	sxtb	r3, r3
     800:	4313      	orrs	r3, r2
     802:	b25a      	sxtb	r2, r3
     804:	2313      	movs	r3, #19
     806:	18fb      	adds	r3, r7, r3
     808:	701a      	strb	r2, [r3, #0]
     80a:	69bb      	ldr	r3, [r7, #24]
     80c:	68fa      	ldr	r2, [r7, #12]
     80e:	18d3      	adds	r3, r2, r3
     810:	2213      	movs	r2, #19
     812:	18ba      	adds	r2, r7, r2
     814:	7812      	ldrb	r2, [r2, #0]
     816:	701a      	strb	r2, [r3, #0]
     818:	683b      	ldr	r3, [r7, #0]
     81a:	2b08      	cmp	r3, #8
     81c:	dd06      	ble.n	82c <pack_bits_to_bytes+0x84>
     81e:	683b      	ldr	r3, [r7, #0]
     820:	3b08      	subs	r3, #8
     822:	603b      	str	r3, [r7, #0]
     824:	69bb      	ldr	r3, [r7, #24]
     826:	3301      	adds	r3, #1
     828:	61bb      	str	r3, [r7, #24]
     82a:	e7cd      	b.n	7c8 <pack_bits_to_bytes+0x20>
     82c:	69bb      	ldr	r3, [r7, #24]
     82e:	68fa      	ldr	r2, [r7, #12]
     830:	18d3      	adds	r3, r2, r3
     832:	69ba      	ldr	r2, [r7, #24]
     834:	68f9      	ldr	r1, [r7, #12]
     836:	188a      	adds	r2, r1, r2
     838:	7812      	ldrb	r2, [r2, #0]
     83a:	b252      	sxtb	r2, r2
     83c:	6839      	ldr	r1, [r7, #0]
     83e:	2008      	movs	r0, #8
     840:	1a41      	subs	r1, r0, r1
     842:	20ff      	movs	r0, #255	; 0xff
     844:	4108      	asrs	r0, r1
     846:	0001      	movs	r1, r0
     848:	b249      	sxtb	r1, r1
     84a:	400a      	ands	r2, r1
     84c:	b252      	sxtb	r2, r2
     84e:	b2d2      	uxtb	r2, r2
     850:	701a      	strb	r2, [r3, #0]
     852:	46c0      	nop			; (mov r8, r8)
     854:	69bb      	ldr	r3, [r7, #24]
     856:	3301      	adds	r3, #1
     858:	0018      	movs	r0, r3
     85a:	46bd      	mov	sp, r7
     85c:	b008      	add	sp, #32
     85e:	bd80      	pop	{r7, pc}

00000860 <set_coil>:
     860:	b580      	push	{r7, lr}
     862:	b084      	sub	sp, #16
     864:	af00      	add	r7, sp, #0
     866:	6078      	str	r0, [r7, #4]
     868:	000a      	movs	r2, r1
     86a:	1cfb      	adds	r3, r7, #3
     86c:	701a      	strb	r2, [r3, #0]
     86e:	687b      	ldr	r3, [r7, #4]
     870:	3b13      	subs	r3, #19
     872:	607b      	str	r3, [r7, #4]
     874:	687b      	ldr	r3, [r7, #4]
     876:	10db      	asrs	r3, r3, #3
     878:	60fb      	str	r3, [r7, #12]
     87a:	687b      	ldr	r3, [r7, #4]
     87c:	2207      	movs	r2, #7
     87e:	4013      	ands	r3, r2
     880:	60bb      	str	r3, [r7, #8]
     882:	4a15      	ldr	r2, [pc, #84]	; (8d8 <set_coil+0x78>)
     884:	68fb      	ldr	r3, [r7, #12]
     886:	18d3      	adds	r3, r2, r3
     888:	781b      	ldrb	r3, [r3, #0]
     88a:	b25b      	sxtb	r3, r3
     88c:	2101      	movs	r1, #1
     88e:	68ba      	ldr	r2, [r7, #8]
     890:	4091      	lsls	r1, r2
     892:	000a      	movs	r2, r1
     894:	b252      	sxtb	r2, r2
     896:	43d2      	mvns	r2, r2
     898:	b252      	sxtb	r2, r2
     89a:	4013      	ands	r3, r2
     89c:	b25b      	sxtb	r3, r3
     89e:	b2d9      	uxtb	r1, r3
     8a0:	4a0d      	ldr	r2, [pc, #52]	; (8d8 <set_coil+0x78>)
     8a2:	68fb      	ldr	r3, [r7, #12]
     8a4:	18d3      	adds	r3, r2, r3
     8a6:	1c0a      	adds	r2, r1, #0
     8a8:	701a      	strb	r2, [r3, #0]
     8aa:	4a0b      	ldr	r2, [pc, #44]	; (8d8 <set_coil+0x78>)
     8ac:	68fb      	ldr	r3, [r7, #12]
     8ae:	18d3      	adds	r3, r2, r3
     8b0:	781b      	ldrb	r3, [r3, #0]
     8b2:	b25a      	sxtb	r2, r3
     8b4:	1cfb      	adds	r3, r7, #3
     8b6:	7819      	ldrb	r1, [r3, #0]
     8b8:	68bb      	ldr	r3, [r7, #8]
     8ba:	4099      	lsls	r1, r3
     8bc:	000b      	movs	r3, r1
     8be:	b25b      	sxtb	r3, r3
     8c0:	4313      	orrs	r3, r2
     8c2:	b25b      	sxtb	r3, r3
     8c4:	b2d9      	uxtb	r1, r3
     8c6:	4a04      	ldr	r2, [pc, #16]	; (8d8 <set_coil+0x78>)
     8c8:	68fb      	ldr	r3, [r7, #12]
     8ca:	18d3      	adds	r3, r2, r3
     8cc:	1c0a      	adds	r2, r1, #0
     8ce:	701a      	strb	r2, [r3, #0]
     8d0:	46c0      	nop			; (mov r8, r8)
     8d2:	46bd      	mov	sp, r7
     8d4:	b004      	add	sp, #16
     8d6:	bd80      	pop	{r7, pc}
     8d8:	20000004 	.word	0x20000004

000008dc <pdu_write_single_coil>:
     8dc:	b580      	push	{r7, lr}
     8de:	b084      	sub	sp, #16
     8e0:	af00      	add	r7, sp, #0
     8e2:	230f      	movs	r3, #15
     8e4:	18fb      	adds	r3, r7, r3
     8e6:	4a4a      	ldr	r2, [pc, #296]	; (a10 <pdu_write_single_coil+0x134>)
     8e8:	7852      	ldrb	r2, [r2, #1]
     8ea:	701a      	strb	r2, [r3, #0]
     8ec:	4b48      	ldr	r3, [pc, #288]	; (a10 <pdu_write_single_coil+0x134>)
     8ee:	789b      	ldrb	r3, [r3, #2]
     8f0:	021b      	lsls	r3, r3, #8
     8f2:	b21a      	sxth	r2, r3
     8f4:	4b46      	ldr	r3, [pc, #280]	; (a10 <pdu_write_single_coil+0x134>)
     8f6:	78db      	ldrb	r3, [r3, #3]
     8f8:	b21b      	sxth	r3, r3
     8fa:	4313      	orrs	r3, r2
     8fc:	b21a      	sxth	r2, r3
     8fe:	230c      	movs	r3, #12
     900:	18fb      	adds	r3, r7, r3
     902:	801a      	strh	r2, [r3, #0]
     904:	4b42      	ldr	r3, [pc, #264]	; (a10 <pdu_write_single_coil+0x134>)
     906:	791b      	ldrb	r3, [r3, #4]
     908:	021b      	lsls	r3, r3, #8
     90a:	b21a      	sxth	r2, r3
     90c:	4b40      	ldr	r3, [pc, #256]	; (a10 <pdu_write_single_coil+0x134>)
     90e:	795b      	ldrb	r3, [r3, #5]
     910:	b21b      	sxth	r3, r3
     912:	4313      	orrs	r3, r2
     914:	b21a      	sxth	r2, r3
     916:	230a      	movs	r3, #10
     918:	18fb      	adds	r3, r7, r3
     91a:	801a      	strh	r2, [r3, #0]
     91c:	2301      	movs	r3, #1
     91e:	607b      	str	r3, [r7, #4]
     920:	230c      	movs	r3, #12
     922:	18fb      	adds	r3, r7, r3
     924:	881b      	ldrh	r3, [r3, #0]
     926:	2b12      	cmp	r3, #18
     928:	d904      	bls.n	934 <pdu_write_single_coil+0x58>
     92a:	230c      	movs	r3, #12
     92c:	18fb      	adds	r3, r7, r3
     92e:	881b      	ldrh	r3, [r3, #0]
     930:	2b37      	cmp	r3, #55	; 0x37
     932:	d913      	bls.n	95c <pdu_write_single_coil+0x80>
     934:	687b      	ldr	r3, [r7, #4]
     936:	1c5a      	adds	r2, r3, #1
     938:	607a      	str	r2, [r7, #4]
     93a:	220f      	movs	r2, #15
     93c:	18ba      	adds	r2, r7, r2
     93e:	7812      	ldrb	r2, [r2, #0]
     940:	2180      	movs	r1, #128	; 0x80
     942:	4249      	negs	r1, r1
     944:	430a      	orrs	r2, r1
     946:	b2d1      	uxtb	r1, r2
     948:	4a32      	ldr	r2, [pc, #200]	; (a14 <pdu_write_single_coil+0x138>)
     94a:	54d1      	strb	r1, [r2, r3]
     94c:	687b      	ldr	r3, [r7, #4]
     94e:	1c5a      	adds	r2, r3, #1
     950:	607a      	str	r2, [r7, #4]
     952:	4a30      	ldr	r2, [pc, #192]	; (a14 <pdu_write_single_coil+0x138>)
     954:	2102      	movs	r1, #2
     956:	54d1      	strb	r1, [r2, r3]
     958:	687b      	ldr	r3, [r7, #4]
     95a:	e054      	b.n	a06 <pdu_write_single_coil+0x12a>
     95c:	230a      	movs	r3, #10
     95e:	18fb      	adds	r3, r7, r3
     960:	881b      	ldrh	r3, [r3, #0]
     962:	2b00      	cmp	r3, #0
     964:	d107      	bne.n	976 <pdu_write_single_coil+0x9a>
     966:	230c      	movs	r3, #12
     968:	18fb      	adds	r3, r7, r3
     96a:	881b      	ldrh	r3, [r3, #0]
     96c:	2100      	movs	r1, #0
     96e:	0018      	movs	r0, r3
     970:	f7ff ff76 	bl	860 <set_coil>
     974:	e022      	b.n	9bc <pdu_write_single_coil+0xe0>
     976:	230a      	movs	r3, #10
     978:	18fb      	adds	r3, r7, r3
     97a:	881a      	ldrh	r2, [r3, #0]
     97c:	23ff      	movs	r3, #255	; 0xff
     97e:	021b      	lsls	r3, r3, #8
     980:	429a      	cmp	r2, r3
     982:	d107      	bne.n	994 <pdu_write_single_coil+0xb8>
     984:	230c      	movs	r3, #12
     986:	18fb      	adds	r3, r7, r3
     988:	881b      	ldrh	r3, [r3, #0]
     98a:	2101      	movs	r1, #1
     98c:	0018      	movs	r0, r3
     98e:	f7ff ff67 	bl	860 <set_coil>
     992:	e013      	b.n	9bc <pdu_write_single_coil+0xe0>
     994:	687b      	ldr	r3, [r7, #4]
     996:	1c5a      	adds	r2, r3, #1
     998:	607a      	str	r2, [r7, #4]
     99a:	220f      	movs	r2, #15
     99c:	18ba      	adds	r2, r7, r2
     99e:	7812      	ldrb	r2, [r2, #0]
     9a0:	2180      	movs	r1, #128	; 0x80
     9a2:	4249      	negs	r1, r1
     9a4:	430a      	orrs	r2, r1
     9a6:	b2d1      	uxtb	r1, r2
     9a8:	4a1a      	ldr	r2, [pc, #104]	; (a14 <pdu_write_single_coil+0x138>)
     9aa:	54d1      	strb	r1, [r2, r3]
     9ac:	687b      	ldr	r3, [r7, #4]
     9ae:	1c5a      	adds	r2, r3, #1
     9b0:	607a      	str	r2, [r7, #4]
     9b2:	4a18      	ldr	r2, [pc, #96]	; (a14 <pdu_write_single_coil+0x138>)
     9b4:	2103      	movs	r1, #3
     9b6:	54d1      	strb	r1, [r2, r3]
     9b8:	687b      	ldr	r3, [r7, #4]
     9ba:	e024      	b.n	a06 <pdu_write_single_coil+0x12a>
     9bc:	687b      	ldr	r3, [r7, #4]
     9be:	1c5a      	adds	r2, r3, #1
     9c0:	607a      	str	r2, [r7, #4]
     9c2:	4a14      	ldr	r2, [pc, #80]	; (a14 <pdu_write_single_coil+0x138>)
     9c4:	210f      	movs	r1, #15
     9c6:	1879      	adds	r1, r7, r1
     9c8:	7809      	ldrb	r1, [r1, #0]
     9ca:	54d1      	strb	r1, [r2, r3]
     9cc:	687b      	ldr	r3, [r7, #4]
     9ce:	1c5a      	adds	r2, r3, #1
     9d0:	607a      	str	r2, [r7, #4]
     9d2:	4a0f      	ldr	r2, [pc, #60]	; (a10 <pdu_write_single_coil+0x134>)
     9d4:	7891      	ldrb	r1, [r2, #2]
     9d6:	4a0f      	ldr	r2, [pc, #60]	; (a14 <pdu_write_single_coil+0x138>)
     9d8:	54d1      	strb	r1, [r2, r3]
     9da:	687b      	ldr	r3, [r7, #4]
     9dc:	1c5a      	adds	r2, r3, #1
     9de:	607a      	str	r2, [r7, #4]
     9e0:	4a0b      	ldr	r2, [pc, #44]	; (a10 <pdu_write_single_coil+0x134>)
     9e2:	78d1      	ldrb	r1, [r2, #3]
     9e4:	4a0b      	ldr	r2, [pc, #44]	; (a14 <pdu_write_single_coil+0x138>)
     9e6:	54d1      	strb	r1, [r2, r3]
     9e8:	687b      	ldr	r3, [r7, #4]
     9ea:	1c5a      	adds	r2, r3, #1
     9ec:	607a      	str	r2, [r7, #4]
     9ee:	4a08      	ldr	r2, [pc, #32]	; (a10 <pdu_write_single_coil+0x134>)
     9f0:	7911      	ldrb	r1, [r2, #4]
     9f2:	4a08      	ldr	r2, [pc, #32]	; (a14 <pdu_write_single_coil+0x138>)
     9f4:	54d1      	strb	r1, [r2, r3]
     9f6:	687b      	ldr	r3, [r7, #4]
     9f8:	1c5a      	adds	r2, r3, #1
     9fa:	607a      	str	r2, [r7, #4]
     9fc:	4a04      	ldr	r2, [pc, #16]	; (a10 <pdu_write_single_coil+0x134>)
     9fe:	7951      	ldrb	r1, [r2, #5]
     a00:	4a04      	ldr	r2, [pc, #16]	; (a14 <pdu_write_single_coil+0x138>)
     a02:	54d1      	strb	r1, [r2, r3]
     a04:	687b      	ldr	r3, [r7, #4]
     a06:	0018      	movs	r0, r3
     a08:	46bd      	mov	sp, r7
     a0a:	b004      	add	sp, #16
     a0c:	bd80      	pop	{r7, pc}
     a0e:	46c0      	nop			; (mov r8, r8)
     a10:	2000022c 	.word	0x2000022c
     a14:	20000334 	.word	0x20000334

00000a18 <pdu_write_multiply_coils>:
     a18:	b580      	push	{r7, lr}
     a1a:	b086      	sub	sp, #24
     a1c:	af00      	add	r7, sp, #0
     a1e:	230a      	movs	r3, #10
     a20:	18fb      	adds	r3, r7, r3
     a22:	4a55      	ldr	r2, [pc, #340]	; (b78 <pdu_write_multiply_coils+0x160>)
     a24:	7852      	ldrb	r2, [r2, #1]
     a26:	701a      	strb	r2, [r3, #0]
     a28:	4b53      	ldr	r3, [pc, #332]	; (b78 <pdu_write_multiply_coils+0x160>)
     a2a:	789b      	ldrb	r3, [r3, #2]
     a2c:	021b      	lsls	r3, r3, #8
     a2e:	b21a      	sxth	r2, r3
     a30:	4b51      	ldr	r3, [pc, #324]	; (b78 <pdu_write_multiply_coils+0x160>)
     a32:	78db      	ldrb	r3, [r3, #3]
     a34:	b21b      	sxth	r3, r3
     a36:	4313      	orrs	r3, r2
     a38:	b21a      	sxth	r2, r3
     a3a:	2316      	movs	r3, #22
     a3c:	18fb      	adds	r3, r7, r3
     a3e:	801a      	strh	r2, [r3, #0]
     a40:	4b4d      	ldr	r3, [pc, #308]	; (b78 <pdu_write_multiply_coils+0x160>)
     a42:	791b      	ldrb	r3, [r3, #4]
     a44:	021b      	lsls	r3, r3, #8
     a46:	b21a      	sxth	r2, r3
     a48:	4b4b      	ldr	r3, [pc, #300]	; (b78 <pdu_write_multiply_coils+0x160>)
     a4a:	795b      	ldrb	r3, [r3, #5]
     a4c:	b21b      	sxth	r3, r3
     a4e:	4313      	orrs	r3, r2
     a50:	b21a      	sxth	r2, r3
     a52:	2308      	movs	r3, #8
     a54:	18fb      	adds	r3, r7, r3
     a56:	801a      	strh	r2, [r3, #0]
     a58:	1dfb      	adds	r3, r7, #7
     a5a:	4a47      	ldr	r2, [pc, #284]	; (b78 <pdu_write_multiply_coils+0x160>)
     a5c:	7992      	ldrb	r2, [r2, #6]
     a5e:	701a      	strb	r2, [r3, #0]
     a60:	2301      	movs	r3, #1
     a62:	603b      	str	r3, [r7, #0]
     a64:	2316      	movs	r3, #22
     a66:	18fb      	adds	r3, r7, r3
     a68:	881b      	ldrh	r3, [r3, #0]
     a6a:	2b12      	cmp	r3, #18
     a6c:	d908      	bls.n	a80 <pdu_write_multiply_coils+0x68>
     a6e:	2316      	movs	r3, #22
     a70:	18fb      	adds	r3, r7, r3
     a72:	881a      	ldrh	r2, [r3, #0]
     a74:	2308      	movs	r3, #8
     a76:	18fb      	adds	r3, r7, r3
     a78:	881b      	ldrh	r3, [r3, #0]
     a7a:	18d3      	adds	r3, r2, r3
     a7c:	2b38      	cmp	r3, #56	; 0x38
     a7e:	dd13      	ble.n	aa8 <pdu_write_multiply_coils+0x90>
     a80:	683b      	ldr	r3, [r7, #0]
     a82:	1c5a      	adds	r2, r3, #1
     a84:	603a      	str	r2, [r7, #0]
     a86:	220a      	movs	r2, #10
     a88:	18ba      	adds	r2, r7, r2
     a8a:	7812      	ldrb	r2, [r2, #0]
     a8c:	2180      	movs	r1, #128	; 0x80
     a8e:	4249      	negs	r1, r1
     a90:	430a      	orrs	r2, r1
     a92:	b2d1      	uxtb	r1, r2
     a94:	4a39      	ldr	r2, [pc, #228]	; (b7c <pdu_write_multiply_coils+0x164>)
     a96:	54d1      	strb	r1, [r2, r3]
     a98:	683b      	ldr	r3, [r7, #0]
     a9a:	1c5a      	adds	r2, r3, #1
     a9c:	603a      	str	r2, [r7, #0]
     a9e:	4a37      	ldr	r2, [pc, #220]	; (b7c <pdu_write_multiply_coils+0x164>)
     aa0:	2102      	movs	r1, #2
     aa2:	54d1      	strb	r1, [r2, r3]
     aa4:	683b      	ldr	r3, [r7, #0]
     aa6:	e062      	b.n	b6e <pdu_write_multiply_coils+0x156>
     aa8:	2300      	movs	r3, #0
     aaa:	613b      	str	r3, [r7, #16]
     aac:	e035      	b.n	b1a <pdu_write_multiply_coils+0x102>
     aae:	693b      	ldr	r3, [r7, #16]
     ab0:	1dda      	adds	r2, r3, #7
     ab2:	230b      	movs	r3, #11
     ab4:	18fb      	adds	r3, r7, r3
     ab6:	4930      	ldr	r1, [pc, #192]	; (b78 <pdu_write_multiply_coils+0x160>)
     ab8:	5c8a      	ldrb	r2, [r1, r2]
     aba:	701a      	strb	r2, [r3, #0]
     abc:	2300      	movs	r3, #0
     abe:	60fb      	str	r3, [r7, #12]
     ac0:	e023      	b.n	b0a <pdu_write_multiply_coils+0xf2>
     ac2:	2316      	movs	r3, #22
     ac4:	18fb      	adds	r3, r7, r3
     ac6:	881b      	ldrh	r3, [r3, #0]
     ac8:	2216      	movs	r2, #22
     aca:	18ba      	adds	r2, r7, r2
     acc:	1c59      	adds	r1, r3, #1
     ace:	8011      	strh	r1, [r2, #0]
     ad0:	0018      	movs	r0, r3
     ad2:	230b      	movs	r3, #11
     ad4:	18fb      	adds	r3, r7, r3
     ad6:	781b      	ldrb	r3, [r3, #0]
     ad8:	2201      	movs	r2, #1
     ada:	4013      	ands	r3, r2
     adc:	b2db      	uxtb	r3, r3
     ade:	0019      	movs	r1, r3
     ae0:	f7ff febe 	bl	860 <set_coil>
     ae4:	2316      	movs	r3, #22
     ae6:	18fb      	adds	r3, r7, r3
     ae8:	881a      	ldrh	r2, [r3, #0]
     aea:	2308      	movs	r3, #8
     aec:	18fb      	adds	r3, r7, r3
     aee:	881b      	ldrh	r3, [r3, #0]
     af0:	3313      	adds	r3, #19
     af2:	429a      	cmp	r2, r3
     af4:	d00d      	beq.n	b12 <pdu_write_multiply_coils+0xfa>
     af6:	230b      	movs	r3, #11
     af8:	18fb      	adds	r3, r7, r3
     afa:	220b      	movs	r2, #11
     afc:	18ba      	adds	r2, r7, r2
     afe:	7812      	ldrb	r2, [r2, #0]
     b00:	0852      	lsrs	r2, r2, #1
     b02:	701a      	strb	r2, [r3, #0]
     b04:	68fb      	ldr	r3, [r7, #12]
     b06:	3301      	adds	r3, #1
     b08:	60fb      	str	r3, [r7, #12]
     b0a:	68fb      	ldr	r3, [r7, #12]
     b0c:	2b07      	cmp	r3, #7
     b0e:	ddd8      	ble.n	ac2 <pdu_write_multiply_coils+0xaa>
     b10:	e000      	b.n	b14 <pdu_write_multiply_coils+0xfc>
     b12:	46c0      	nop			; (mov r8, r8)
     b14:	693b      	ldr	r3, [r7, #16]
     b16:	3301      	adds	r3, #1
     b18:	613b      	str	r3, [r7, #16]
     b1a:	1dfb      	adds	r3, r7, #7
     b1c:	781a      	ldrb	r2, [r3, #0]
     b1e:	693b      	ldr	r3, [r7, #16]
     b20:	429a      	cmp	r2, r3
     b22:	dcc4      	bgt.n	aae <pdu_write_multiply_coils+0x96>
     b24:	683b      	ldr	r3, [r7, #0]
     b26:	1c5a      	adds	r2, r3, #1
     b28:	603a      	str	r2, [r7, #0]
     b2a:	4a14      	ldr	r2, [pc, #80]	; (b7c <pdu_write_multiply_coils+0x164>)
     b2c:	210a      	movs	r1, #10
     b2e:	1879      	adds	r1, r7, r1
     b30:	7809      	ldrb	r1, [r1, #0]
     b32:	54d1      	strb	r1, [r2, r3]
     b34:	683b      	ldr	r3, [r7, #0]
     b36:	1c5a      	adds	r2, r3, #1
     b38:	603a      	str	r2, [r7, #0]
     b3a:	4a0f      	ldr	r2, [pc, #60]	; (b78 <pdu_write_multiply_coils+0x160>)
     b3c:	7891      	ldrb	r1, [r2, #2]
     b3e:	4a0f      	ldr	r2, [pc, #60]	; (b7c <pdu_write_multiply_coils+0x164>)
     b40:	54d1      	strb	r1, [r2, r3]
     b42:	683b      	ldr	r3, [r7, #0]
     b44:	1c5a      	adds	r2, r3, #1
     b46:	603a      	str	r2, [r7, #0]
     b48:	4a0b      	ldr	r2, [pc, #44]	; (b78 <pdu_write_multiply_coils+0x160>)
     b4a:	78d1      	ldrb	r1, [r2, #3]
     b4c:	4a0b      	ldr	r2, [pc, #44]	; (b7c <pdu_write_multiply_coils+0x164>)
     b4e:	54d1      	strb	r1, [r2, r3]
     b50:	683b      	ldr	r3, [r7, #0]
     b52:	1c5a      	adds	r2, r3, #1
     b54:	603a      	str	r2, [r7, #0]
     b56:	4a08      	ldr	r2, [pc, #32]	; (b78 <pdu_write_multiply_coils+0x160>)
     b58:	7911      	ldrb	r1, [r2, #4]
     b5a:	4a08      	ldr	r2, [pc, #32]	; (b7c <pdu_write_multiply_coils+0x164>)
     b5c:	54d1      	strb	r1, [r2, r3]
     b5e:	683b      	ldr	r3, [r7, #0]
     b60:	1c5a      	adds	r2, r3, #1
     b62:	603a      	str	r2, [r7, #0]
     b64:	4a04      	ldr	r2, [pc, #16]	; (b78 <pdu_write_multiply_coils+0x160>)
     b66:	7951      	ldrb	r1, [r2, #5]
     b68:	4a04      	ldr	r2, [pc, #16]	; (b7c <pdu_write_multiply_coils+0x164>)
     b6a:	54d1      	strb	r1, [r2, r3]
     b6c:	683b      	ldr	r3, [r7, #0]
     b6e:	0018      	movs	r0, r3
     b70:	46bd      	mov	sp, r7
     b72:	b006      	add	sp, #24
     b74:	bd80      	pop	{r7, pc}
     b76:	46c0      	nop			; (mov r8, r8)
     b78:	2000022c 	.word	0x2000022c
     b7c:	20000334 	.word	0x20000334

00000b80 <pdu_read_coils>:
     b80:	b580      	push	{r7, lr}
     b82:	b084      	sub	sp, #16
     b84:	af00      	add	r7, sp, #0
     b86:	230f      	movs	r3, #15
     b88:	18fb      	adds	r3, r7, r3
     b8a:	4a32      	ldr	r2, [pc, #200]	; (c54 <pdu_read_coils+0xd4>)
     b8c:	7852      	ldrb	r2, [r2, #1]
     b8e:	701a      	strb	r2, [r3, #0]
     b90:	4b30      	ldr	r3, [pc, #192]	; (c54 <pdu_read_coils+0xd4>)
     b92:	789b      	ldrb	r3, [r3, #2]
     b94:	021b      	lsls	r3, r3, #8
     b96:	b21a      	sxth	r2, r3
     b98:	4b2e      	ldr	r3, [pc, #184]	; (c54 <pdu_read_coils+0xd4>)
     b9a:	78db      	ldrb	r3, [r3, #3]
     b9c:	b21b      	sxth	r3, r3
     b9e:	4313      	orrs	r3, r2
     ba0:	b21a      	sxth	r2, r3
     ba2:	230c      	movs	r3, #12
     ba4:	18fb      	adds	r3, r7, r3
     ba6:	801a      	strh	r2, [r3, #0]
     ba8:	4b2a      	ldr	r3, [pc, #168]	; (c54 <pdu_read_coils+0xd4>)
     baa:	791b      	ldrb	r3, [r3, #4]
     bac:	021b      	lsls	r3, r3, #8
     bae:	b21a      	sxth	r2, r3
     bb0:	4b28      	ldr	r3, [pc, #160]	; (c54 <pdu_read_coils+0xd4>)
     bb2:	795b      	ldrb	r3, [r3, #5]
     bb4:	b21b      	sxth	r3, r3
     bb6:	4313      	orrs	r3, r2
     bb8:	b21a      	sxth	r2, r3
     bba:	230a      	movs	r3, #10
     bbc:	18fb      	adds	r3, r7, r3
     bbe:	801a      	strh	r2, [r3, #0]
     bc0:	2301      	movs	r3, #1
     bc2:	607b      	str	r3, [r7, #4]
     bc4:	230c      	movs	r3, #12
     bc6:	18fb      	adds	r3, r7, r3
     bc8:	881b      	ldrh	r3, [r3, #0]
     bca:	2b12      	cmp	r3, #18
     bcc:	d908      	bls.n	be0 <pdu_read_coils+0x60>
     bce:	230c      	movs	r3, #12
     bd0:	18fb      	adds	r3, r7, r3
     bd2:	881a      	ldrh	r2, [r3, #0]
     bd4:	230a      	movs	r3, #10
     bd6:	18fb      	adds	r3, r7, r3
     bd8:	881b      	ldrh	r3, [r3, #0]
     bda:	18d3      	adds	r3, r2, r3
     bdc:	2b38      	cmp	r3, #56	; 0x38
     bde:	dd13      	ble.n	c08 <pdu_read_coils+0x88>
     be0:	687b      	ldr	r3, [r7, #4]
     be2:	1c5a      	adds	r2, r3, #1
     be4:	607a      	str	r2, [r7, #4]
     be6:	220f      	movs	r2, #15
     be8:	18ba      	adds	r2, r7, r2
     bea:	7812      	ldrb	r2, [r2, #0]
     bec:	2180      	movs	r1, #128	; 0x80
     bee:	4249      	negs	r1, r1
     bf0:	430a      	orrs	r2, r1
     bf2:	b2d1      	uxtb	r1, r2
     bf4:	4a18      	ldr	r2, [pc, #96]	; (c58 <pdu_read_coils+0xd8>)
     bf6:	54d1      	strb	r1, [r2, r3]
     bf8:	687b      	ldr	r3, [r7, #4]
     bfa:	1c5a      	adds	r2, r3, #1
     bfc:	607a      	str	r2, [r7, #4]
     bfe:	4a16      	ldr	r2, [pc, #88]	; (c58 <pdu_read_coils+0xd8>)
     c00:	2102      	movs	r1, #2
     c02:	54d1      	strb	r1, [r2, r3]
     c04:	687b      	ldr	r3, [r7, #4]
     c06:	e021      	b.n	c4c <pdu_read_coils+0xcc>
     c08:	687b      	ldr	r3, [r7, #4]
     c0a:	1c5a      	adds	r2, r3, #1
     c0c:	607a      	str	r2, [r7, #4]
     c0e:	4a12      	ldr	r2, [pc, #72]	; (c58 <pdu_read_coils+0xd8>)
     c10:	210f      	movs	r1, #15
     c12:	1879      	adds	r1, r7, r1
     c14:	7809      	ldrb	r1, [r1, #0]
     c16:	54d1      	strb	r1, [r2, r3]
     c18:	687b      	ldr	r3, [r7, #4]
     c1a:	3301      	adds	r3, #1
     c1c:	607b      	str	r3, [r7, #4]
     c1e:	687a      	ldr	r2, [r7, #4]
     c20:	4b0d      	ldr	r3, [pc, #52]	; (c58 <pdu_read_coils+0xd8>)
     c22:	18d0      	adds	r0, r2, r3
     c24:	230c      	movs	r3, #12
     c26:	18fb      	adds	r3, r7, r3
     c28:	881b      	ldrh	r3, [r3, #0]
     c2a:	3b13      	subs	r3, #19
     c2c:	001a      	movs	r2, r3
     c2e:	230a      	movs	r3, #10
     c30:	18fb      	adds	r3, r7, r3
     c32:	881b      	ldrh	r3, [r3, #0]
     c34:	4909      	ldr	r1, [pc, #36]	; (c5c <pdu_read_coils+0xdc>)
     c36:	f7ff fdb7 	bl	7a8 <pack_bits_to_bytes>
     c3a:	0003      	movs	r3, r0
     c3c:	603b      	str	r3, [r7, #0]
     c3e:	683b      	ldr	r3, [r7, #0]
     c40:	b2da      	uxtb	r2, r3
     c42:	4b05      	ldr	r3, [pc, #20]	; (c58 <pdu_read_coils+0xd8>)
     c44:	709a      	strb	r2, [r3, #2]
     c46:	683a      	ldr	r2, [r7, #0]
     c48:	687b      	ldr	r3, [r7, #4]
     c4a:	18d3      	adds	r3, r2, r3
     c4c:	0018      	movs	r0, r3
     c4e:	46bd      	mov	sp, r7
     c50:	b004      	add	sp, #16
     c52:	bd80      	pop	{r7, pc}
     c54:	2000022c 	.word	0x2000022c
     c58:	20000334 	.word	0x20000334
     c5c:	20000004 	.word	0x20000004

00000c60 <pdu_read_discrete_inputs>:
     c60:	b580      	push	{r7, lr}
     c62:	b084      	sub	sp, #16
     c64:	af00      	add	r7, sp, #0
     c66:	230f      	movs	r3, #15
     c68:	18fb      	adds	r3, r7, r3
     c6a:	4a32      	ldr	r2, [pc, #200]	; (d34 <pdu_read_discrete_inputs+0xd4>)
     c6c:	7852      	ldrb	r2, [r2, #1]
     c6e:	701a      	strb	r2, [r3, #0]
     c70:	4b30      	ldr	r3, [pc, #192]	; (d34 <pdu_read_discrete_inputs+0xd4>)
     c72:	789b      	ldrb	r3, [r3, #2]
     c74:	021b      	lsls	r3, r3, #8
     c76:	b21a      	sxth	r2, r3
     c78:	4b2e      	ldr	r3, [pc, #184]	; (d34 <pdu_read_discrete_inputs+0xd4>)
     c7a:	78db      	ldrb	r3, [r3, #3]
     c7c:	b21b      	sxth	r3, r3
     c7e:	4313      	orrs	r3, r2
     c80:	b21a      	sxth	r2, r3
     c82:	230c      	movs	r3, #12
     c84:	18fb      	adds	r3, r7, r3
     c86:	801a      	strh	r2, [r3, #0]
     c88:	4b2a      	ldr	r3, [pc, #168]	; (d34 <pdu_read_discrete_inputs+0xd4>)
     c8a:	791b      	ldrb	r3, [r3, #4]
     c8c:	021b      	lsls	r3, r3, #8
     c8e:	b21a      	sxth	r2, r3
     c90:	4b28      	ldr	r3, [pc, #160]	; (d34 <pdu_read_discrete_inputs+0xd4>)
     c92:	795b      	ldrb	r3, [r3, #5]
     c94:	b21b      	sxth	r3, r3
     c96:	4313      	orrs	r3, r2
     c98:	b21a      	sxth	r2, r3
     c9a:	230a      	movs	r3, #10
     c9c:	18fb      	adds	r3, r7, r3
     c9e:	801a      	strh	r2, [r3, #0]
     ca0:	2301      	movs	r3, #1
     ca2:	607b      	str	r3, [r7, #4]
     ca4:	230c      	movs	r3, #12
     ca6:	18fb      	adds	r3, r7, r3
     ca8:	881b      	ldrh	r3, [r3, #0]
     caa:	2bc3      	cmp	r3, #195	; 0xc3
     cac:	d908      	bls.n	cc0 <pdu_read_discrete_inputs+0x60>
     cae:	230c      	movs	r3, #12
     cb0:	18fb      	adds	r3, r7, r3
     cb2:	881a      	ldrh	r2, [r3, #0]
     cb4:	230a      	movs	r3, #10
     cb6:	18fb      	adds	r3, r7, r3
     cb8:	881b      	ldrh	r3, [r3, #0]
     cba:	18d3      	adds	r3, r2, r3
     cbc:	2bda      	cmp	r3, #218	; 0xda
     cbe:	dd13      	ble.n	ce8 <pdu_read_discrete_inputs+0x88>
     cc0:	687b      	ldr	r3, [r7, #4]
     cc2:	1c5a      	adds	r2, r3, #1
     cc4:	607a      	str	r2, [r7, #4]
     cc6:	220f      	movs	r2, #15
     cc8:	18ba      	adds	r2, r7, r2
     cca:	7812      	ldrb	r2, [r2, #0]
     ccc:	2180      	movs	r1, #128	; 0x80
     cce:	4249      	negs	r1, r1
     cd0:	430a      	orrs	r2, r1
     cd2:	b2d1      	uxtb	r1, r2
     cd4:	4a18      	ldr	r2, [pc, #96]	; (d38 <pdu_read_discrete_inputs+0xd8>)
     cd6:	54d1      	strb	r1, [r2, r3]
     cd8:	687b      	ldr	r3, [r7, #4]
     cda:	1c5a      	adds	r2, r3, #1
     cdc:	607a      	str	r2, [r7, #4]
     cde:	4a16      	ldr	r2, [pc, #88]	; (d38 <pdu_read_discrete_inputs+0xd8>)
     ce0:	2102      	movs	r1, #2
     ce2:	54d1      	strb	r1, [r2, r3]
     ce4:	687b      	ldr	r3, [r7, #4]
     ce6:	e021      	b.n	d2c <pdu_read_discrete_inputs+0xcc>
     ce8:	687b      	ldr	r3, [r7, #4]
     cea:	1c5a      	adds	r2, r3, #1
     cec:	607a      	str	r2, [r7, #4]
     cee:	4a12      	ldr	r2, [pc, #72]	; (d38 <pdu_read_discrete_inputs+0xd8>)
     cf0:	210f      	movs	r1, #15
     cf2:	1879      	adds	r1, r7, r1
     cf4:	7809      	ldrb	r1, [r1, #0]
     cf6:	54d1      	strb	r1, [r2, r3]
     cf8:	687b      	ldr	r3, [r7, #4]
     cfa:	3301      	adds	r3, #1
     cfc:	607b      	str	r3, [r7, #4]
     cfe:	687a      	ldr	r2, [r7, #4]
     d00:	4b0d      	ldr	r3, [pc, #52]	; (d38 <pdu_read_discrete_inputs+0xd8>)
     d02:	18d0      	adds	r0, r2, r3
     d04:	230c      	movs	r3, #12
     d06:	18fb      	adds	r3, r7, r3
     d08:	881b      	ldrh	r3, [r3, #0]
     d0a:	3bc4      	subs	r3, #196	; 0xc4
     d0c:	001a      	movs	r2, r3
     d0e:	230a      	movs	r3, #10
     d10:	18fb      	adds	r3, r7, r3
     d12:	881b      	ldrh	r3, [r3, #0]
     d14:	4909      	ldr	r1, [pc, #36]	; (d3c <pdu_read_discrete_inputs+0xdc>)
     d16:	f7ff fd47 	bl	7a8 <pack_bits_to_bytes>
     d1a:	0003      	movs	r3, r0
     d1c:	603b      	str	r3, [r7, #0]
     d1e:	683b      	ldr	r3, [r7, #0]
     d20:	b2da      	uxtb	r2, r3
     d22:	4b05      	ldr	r3, [pc, #20]	; (d38 <pdu_read_discrete_inputs+0xd8>)
     d24:	709a      	strb	r2, [r3, #2]
     d26:	683a      	ldr	r2, [r7, #0]
     d28:	687b      	ldr	r3, [r7, #4]
     d2a:	18d3      	adds	r3, r2, r3
     d2c:	0018      	movs	r0, r3
     d2e:	46bd      	mov	sp, r7
     d30:	b004      	add	sp, #16
     d32:	bd80      	pop	{r7, pc}
     d34:	2000022c 	.word	0x2000022c
     d38:	20000334 	.word	0x20000334
     d3c:	2000000c 	.word	0x2000000c

00000d40 <pdu_report_server_id>:
     d40:	b580      	push	{r7, lr}
     d42:	b084      	sub	sp, #16
     d44:	af00      	add	r7, sp, #0
     d46:	2316      	movs	r3, #22
     d48:	607b      	str	r3, [r7, #4]
     d4a:	1cfb      	adds	r3, r7, #3
     d4c:	4a1c      	ldr	r2, [pc, #112]	; (dc0 <pdu_report_server_id+0x80>)
     d4e:	7852      	ldrb	r2, [r2, #1]
     d50:	701a      	strb	r2, [r3, #0]
     d52:	2301      	movs	r3, #1
     d54:	60fb      	str	r3, [r7, #12]
     d56:	68fb      	ldr	r3, [r7, #12]
     d58:	1c5a      	adds	r2, r3, #1
     d5a:	60fa      	str	r2, [r7, #12]
     d5c:	4a19      	ldr	r2, [pc, #100]	; (dc4 <pdu_report_server_id+0x84>)
     d5e:	1cf9      	adds	r1, r7, #3
     d60:	7809      	ldrb	r1, [r1, #0]
     d62:	54d1      	strb	r1, [r2, r3]
     d64:	68fb      	ldr	r3, [r7, #12]
     d66:	1c5a      	adds	r2, r3, #1
     d68:	60fa      	str	r2, [r7, #12]
     d6a:	687a      	ldr	r2, [r7, #4]
     d6c:	b2d2      	uxtb	r2, r2
     d6e:	3202      	adds	r2, #2
     d70:	b2d1      	uxtb	r1, r2
     d72:	4a14      	ldr	r2, [pc, #80]	; (dc4 <pdu_report_server_id+0x84>)
     d74:	54d1      	strb	r1, [r2, r3]
     d76:	68fb      	ldr	r3, [r7, #12]
     d78:	1c5a      	adds	r2, r3, #1
     d7a:	60fa      	str	r2, [r7, #12]
     d7c:	4a11      	ldr	r2, [pc, #68]	; (dc4 <pdu_report_server_id+0x84>)
     d7e:	2111      	movs	r1, #17
     d80:	54d1      	strb	r1, [r2, r3]
     d82:	68fb      	ldr	r3, [r7, #12]
     d84:	1c5a      	adds	r2, r3, #1
     d86:	60fa      	str	r2, [r7, #12]
     d88:	4a0e      	ldr	r2, [pc, #56]	; (dc4 <pdu_report_server_id+0x84>)
     d8a:	21ff      	movs	r1, #255	; 0xff
     d8c:	54d1      	strb	r1, [r2, r3]
     d8e:	2300      	movs	r3, #0
     d90:	60bb      	str	r3, [r7, #8]
     d92:	e00b      	b.n	dac <pdu_report_server_id+0x6c>
     d94:	68fb      	ldr	r3, [r7, #12]
     d96:	1c5a      	adds	r2, r3, #1
     d98:	60fa      	str	r2, [r7, #12]
     d9a:	490b      	ldr	r1, [pc, #44]	; (dc8 <pdu_report_server_id+0x88>)
     d9c:	68ba      	ldr	r2, [r7, #8]
     d9e:	188a      	adds	r2, r1, r2
     da0:	7811      	ldrb	r1, [r2, #0]
     da2:	4a08      	ldr	r2, [pc, #32]	; (dc4 <pdu_report_server_id+0x84>)
     da4:	54d1      	strb	r1, [r2, r3]
     da6:	68bb      	ldr	r3, [r7, #8]
     da8:	3301      	adds	r3, #1
     daa:	60bb      	str	r3, [r7, #8]
     dac:	68ba      	ldr	r2, [r7, #8]
     dae:	687b      	ldr	r3, [r7, #4]
     db0:	429a      	cmp	r2, r3
     db2:	dbef      	blt.n	d94 <pdu_report_server_id+0x54>
     db4:	68fb      	ldr	r3, [r7, #12]
     db6:	0018      	movs	r0, r3
     db8:	46bd      	mov	sp, r7
     dba:	b004      	add	sp, #16
     dbc:	bd80      	pop	{r7, pc}
     dbe:	46c0      	nop			; (mov r8, r8)
     dc0:	2000022c 	.word	0x2000022c
     dc4:	20000334 	.word	0x20000334
     dc8:	00001640 	.word	0x00001640

00000dcc <pdu_diagnostics>:
     dcc:	b580      	push	{r7, lr}
     dce:	b084      	sub	sp, #16
     dd0:	af00      	add	r7, sp, #0
     dd2:	1dfb      	adds	r3, r7, #7
     dd4:	4a1f      	ldr	r2, [pc, #124]	; (e54 <pdu_diagnostics+0x88>)
     dd6:	7852      	ldrb	r2, [r2, #1]
     dd8:	701a      	strb	r2, [r3, #0]
     dda:	4b1e      	ldr	r3, [pc, #120]	; (e54 <pdu_diagnostics+0x88>)
     ddc:	789b      	ldrb	r3, [r3, #2]
     dde:	021b      	lsls	r3, r3, #8
     de0:	b21a      	sxth	r2, r3
     de2:	4b1c      	ldr	r3, [pc, #112]	; (e54 <pdu_diagnostics+0x88>)
     de4:	78db      	ldrb	r3, [r3, #3]
     de6:	b21b      	sxth	r3, r3
     de8:	4313      	orrs	r3, r2
     dea:	b21a      	sxth	r2, r3
     dec:	1d3b      	adds	r3, r7, #4
     dee:	801a      	strh	r2, [r3, #0]
     df0:	2301      	movs	r3, #1
     df2:	60bb      	str	r3, [r7, #8]
     df4:	1d3b      	adds	r3, r7, #4
     df6:	881b      	ldrh	r3, [r3, #0]
     df8:	2b00      	cmp	r3, #0
     dfa:	d114      	bne.n	e26 <pdu_diagnostics+0x5a>
     dfc:	2301      	movs	r3, #1
     dfe:	60fb      	str	r3, [r7, #12]
     e00:	e00b      	b.n	e1a <pdu_diagnostics+0x4e>
     e02:	68bb      	ldr	r3, [r7, #8]
     e04:	1c5a      	adds	r2, r3, #1
     e06:	60ba      	str	r2, [r7, #8]
     e08:	4912      	ldr	r1, [pc, #72]	; (e54 <pdu_diagnostics+0x88>)
     e0a:	68fa      	ldr	r2, [r7, #12]
     e0c:	188a      	adds	r2, r1, r2
     e0e:	7811      	ldrb	r1, [r2, #0]
     e10:	4a11      	ldr	r2, [pc, #68]	; (e58 <pdu_diagnostics+0x8c>)
     e12:	54d1      	strb	r1, [r2, r3]
     e14:	68fb      	ldr	r3, [r7, #12]
     e16:	3301      	adds	r3, #1
     e18:	60fb      	str	r3, [r7, #12]
     e1a:	68fa      	ldr	r2, [r7, #12]
     e1c:	4b0f      	ldr	r3, [pc, #60]	; (e5c <pdu_diagnostics+0x90>)
     e1e:	681b      	ldr	r3, [r3, #0]
     e20:	429a      	cmp	r2, r3
     e22:	d3ee      	bcc.n	e02 <pdu_diagnostics+0x36>
     e24:	e010      	b.n	e48 <pdu_diagnostics+0x7c>
     e26:	68bb      	ldr	r3, [r7, #8]
     e28:	1c5a      	adds	r2, r3, #1
     e2a:	60ba      	str	r2, [r7, #8]
     e2c:	1dfa      	adds	r2, r7, #7
     e2e:	7812      	ldrb	r2, [r2, #0]
     e30:	2180      	movs	r1, #128	; 0x80
     e32:	4249      	negs	r1, r1
     e34:	430a      	orrs	r2, r1
     e36:	b2d1      	uxtb	r1, r2
     e38:	4a07      	ldr	r2, [pc, #28]	; (e58 <pdu_diagnostics+0x8c>)
     e3a:	54d1      	strb	r1, [r2, r3]
     e3c:	68bb      	ldr	r3, [r7, #8]
     e3e:	1c5a      	adds	r2, r3, #1
     e40:	60ba      	str	r2, [r7, #8]
     e42:	4a05      	ldr	r2, [pc, #20]	; (e58 <pdu_diagnostics+0x8c>)
     e44:	2101      	movs	r1, #1
     e46:	54d1      	strb	r1, [r2, r3]
     e48:	68bb      	ldr	r3, [r7, #8]
     e4a:	0018      	movs	r0, r3
     e4c:	46bd      	mov	sp, r7
     e4e:	b004      	add	sp, #16
     e50:	bd80      	pop	{r7, pc}
     e52:	46c0      	nop			; (mov r8, r8)
     e54:	2000022c 	.word	0x2000022c
     e58:	20000334 	.word	0x20000334
     e5c:	20000330 	.word	0x20000330

00000e60 <pdu_read_input_registers>:
     e60:	b580      	push	{r7, lr}
     e62:	b084      	sub	sp, #16
     e64:	af00      	add	r7, sp, #0
     e66:	1dfb      	adds	r3, r7, #7
     e68:	4a3c      	ldr	r2, [pc, #240]	; (f5c <pdu_read_input_registers+0xfc>)
     e6a:	7852      	ldrb	r2, [r2, #1]
     e6c:	701a      	strb	r2, [r3, #0]
     e6e:	4b3b      	ldr	r3, [pc, #236]	; (f5c <pdu_read_input_registers+0xfc>)
     e70:	789b      	ldrb	r3, [r3, #2]
     e72:	021b      	lsls	r3, r3, #8
     e74:	b21a      	sxth	r2, r3
     e76:	4b39      	ldr	r3, [pc, #228]	; (f5c <pdu_read_input_registers+0xfc>)
     e78:	78db      	ldrb	r3, [r3, #3]
     e7a:	b21b      	sxth	r3, r3
     e7c:	4313      	orrs	r3, r2
     e7e:	b21a      	sxth	r2, r3
     e80:	1d3b      	adds	r3, r7, #4
     e82:	801a      	strh	r2, [r3, #0]
     e84:	4b35      	ldr	r3, [pc, #212]	; (f5c <pdu_read_input_registers+0xfc>)
     e86:	791b      	ldrb	r3, [r3, #4]
     e88:	021b      	lsls	r3, r3, #8
     e8a:	b21a      	sxth	r2, r3
     e8c:	4b33      	ldr	r3, [pc, #204]	; (f5c <pdu_read_input_registers+0xfc>)
     e8e:	795b      	ldrb	r3, [r3, #5]
     e90:	b21b      	sxth	r3, r3
     e92:	4313      	orrs	r3, r2
     e94:	b21a      	sxth	r2, r3
     e96:	1cbb      	adds	r3, r7, #2
     e98:	801a      	strh	r2, [r3, #0]
     e9a:	1d3b      	adds	r3, r7, #4
     e9c:	881b      	ldrh	r3, [r3, #0]
     e9e:	2b07      	cmp	r3, #7
     ea0:	d906      	bls.n	eb0 <pdu_read_input_registers+0x50>
     ea2:	1d3b      	adds	r3, r7, #4
     ea4:	881a      	ldrh	r2, [r3, #0]
     ea6:	1cbb      	adds	r3, r7, #2
     ea8:	881b      	ldrh	r3, [r3, #0]
     eaa:	18d3      	adds	r3, r2, r3
     eac:	2b09      	cmp	r3, #9
     eae:	dd14      	ble.n	eda <pdu_read_input_registers+0x7a>
     eb0:	2301      	movs	r3, #1
     eb2:	60bb      	str	r3, [r7, #8]
     eb4:	68bb      	ldr	r3, [r7, #8]
     eb6:	1c5a      	adds	r2, r3, #1
     eb8:	60ba      	str	r2, [r7, #8]
     eba:	1dfa      	adds	r2, r7, #7
     ebc:	7812      	ldrb	r2, [r2, #0]
     ebe:	2180      	movs	r1, #128	; 0x80
     ec0:	4249      	negs	r1, r1
     ec2:	430a      	orrs	r2, r1
     ec4:	b2d1      	uxtb	r1, r2
     ec6:	4a26      	ldr	r2, [pc, #152]	; (f60 <pdu_read_input_registers+0x100>)
     ec8:	54d1      	strb	r1, [r2, r3]
     eca:	68bb      	ldr	r3, [r7, #8]
     ecc:	1c5a      	adds	r2, r3, #1
     ece:	60ba      	str	r2, [r7, #8]
     ed0:	4a23      	ldr	r2, [pc, #140]	; (f60 <pdu_read_input_registers+0x100>)
     ed2:	2102      	movs	r1, #2
     ed4:	54d1      	strb	r1, [r2, r3]
     ed6:	68bb      	ldr	r3, [r7, #8]
     ed8:	e03b      	b.n	f52 <pdu_read_input_registers+0xf2>
     eda:	2301      	movs	r3, #1
     edc:	60bb      	str	r3, [r7, #8]
     ede:	68bb      	ldr	r3, [r7, #8]
     ee0:	1c5a      	adds	r2, r3, #1
     ee2:	60ba      	str	r2, [r7, #8]
     ee4:	4a1e      	ldr	r2, [pc, #120]	; (f60 <pdu_read_input_registers+0x100>)
     ee6:	1df9      	adds	r1, r7, #7
     ee8:	7809      	ldrb	r1, [r1, #0]
     eea:	54d1      	strb	r1, [r2, r3]
     eec:	68bb      	ldr	r3, [r7, #8]
     eee:	1c5a      	adds	r2, r3, #1
     ef0:	60ba      	str	r2, [r7, #8]
     ef2:	1cba      	adds	r2, r7, #2
     ef4:	8812      	ldrh	r2, [r2, #0]
     ef6:	b2d2      	uxtb	r2, r2
     ef8:	1892      	adds	r2, r2, r2
     efa:	b2d1      	uxtb	r1, r2
     efc:	4a18      	ldr	r2, [pc, #96]	; (f60 <pdu_read_input_registers+0x100>)
     efe:	54d1      	strb	r1, [r2, r3]
     f00:	2300      	movs	r3, #0
     f02:	60fb      	str	r3, [r7, #12]
     f04:	e01f      	b.n	f46 <pdu_read_input_registers+0xe6>
     f06:	1d3b      	adds	r3, r7, #4
     f08:	881b      	ldrh	r3, [r3, #0]
     f0a:	3b08      	subs	r3, #8
     f0c:	001a      	movs	r2, r3
     f0e:	68fb      	ldr	r3, [r7, #12]
     f10:	18d1      	adds	r1, r2, r3
     f12:	003b      	movs	r3, r7
     f14:	4a13      	ldr	r2, [pc, #76]	; (f64 <pdu_read_input_registers+0x104>)
     f16:	0049      	lsls	r1, r1, #1
     f18:	5a8a      	ldrh	r2, [r1, r2]
     f1a:	801a      	strh	r2, [r3, #0]
     f1c:	68bb      	ldr	r3, [r7, #8]
     f1e:	1c5a      	adds	r2, r3, #1
     f20:	60ba      	str	r2, [r7, #8]
     f22:	003a      	movs	r2, r7
     f24:	8812      	ldrh	r2, [r2, #0]
     f26:	0a12      	lsrs	r2, r2, #8
     f28:	b292      	uxth	r2, r2
     f2a:	b2d1      	uxtb	r1, r2
     f2c:	4a0c      	ldr	r2, [pc, #48]	; (f60 <pdu_read_input_registers+0x100>)
     f2e:	54d1      	strb	r1, [r2, r3]
     f30:	68bb      	ldr	r3, [r7, #8]
     f32:	1c5a      	adds	r2, r3, #1
     f34:	60ba      	str	r2, [r7, #8]
     f36:	003a      	movs	r2, r7
     f38:	8812      	ldrh	r2, [r2, #0]
     f3a:	b2d1      	uxtb	r1, r2
     f3c:	4a08      	ldr	r2, [pc, #32]	; (f60 <pdu_read_input_registers+0x100>)
     f3e:	54d1      	strb	r1, [r2, r3]
     f40:	68fb      	ldr	r3, [r7, #12]
     f42:	3301      	adds	r3, #1
     f44:	60fb      	str	r3, [r7, #12]
     f46:	1cbb      	adds	r3, r7, #2
     f48:	881a      	ldrh	r2, [r3, #0]
     f4a:	68fb      	ldr	r3, [r7, #12]
     f4c:	429a      	cmp	r2, r3
     f4e:	dcda      	bgt.n	f06 <pdu_read_input_registers+0xa6>
     f50:	68bb      	ldr	r3, [r7, #8]
     f52:	0018      	movs	r0, r3
     f54:	46bd      	mov	sp, r7
     f56:	b004      	add	sp, #16
     f58:	bd80      	pop	{r7, pc}
     f5a:	46c0      	nop			; (mov r8, r8)
     f5c:	2000022c 	.word	0x2000022c
     f60:	20000334 	.word	0x20000334
     f64:	20000018 	.word	0x20000018

00000f68 <pdu_write_single_register>:
     f68:	b580      	push	{r7, lr}
     f6a:	b084      	sub	sp, #16
     f6c:	af00      	add	r7, sp, #0
     f6e:	230b      	movs	r3, #11
     f70:	18fb      	adds	r3, r7, r3
     f72:	4a37      	ldr	r2, [pc, #220]	; (1050 <pdu_write_single_register+0xe8>)
     f74:	7852      	ldrb	r2, [r2, #1]
     f76:	701a      	strb	r2, [r3, #0]
     f78:	4b35      	ldr	r3, [pc, #212]	; (1050 <pdu_write_single_register+0xe8>)
     f7a:	789b      	ldrb	r3, [r3, #2]
     f7c:	021b      	lsls	r3, r3, #8
     f7e:	b21a      	sxth	r2, r3
     f80:	4b33      	ldr	r3, [pc, #204]	; (1050 <pdu_write_single_register+0xe8>)
     f82:	78db      	ldrb	r3, [r3, #3]
     f84:	b21b      	sxth	r3, r3
     f86:	4313      	orrs	r3, r2
     f88:	b21a      	sxth	r2, r3
     f8a:	2308      	movs	r3, #8
     f8c:	18fb      	adds	r3, r7, r3
     f8e:	801a      	strh	r2, [r3, #0]
     f90:	4b2f      	ldr	r3, [pc, #188]	; (1050 <pdu_write_single_register+0xe8>)
     f92:	791b      	ldrb	r3, [r3, #4]
     f94:	021b      	lsls	r3, r3, #8
     f96:	b21a      	sxth	r2, r3
     f98:	4b2d      	ldr	r3, [pc, #180]	; (1050 <pdu_write_single_register+0xe8>)
     f9a:	795b      	ldrb	r3, [r3, #5]
     f9c:	b21b      	sxth	r3, r3
     f9e:	4313      	orrs	r3, r2
     fa0:	b21a      	sxth	r2, r3
     fa2:	1dbb      	adds	r3, r7, #6
     fa4:	801a      	strh	r2, [r3, #0]
     fa6:	2308      	movs	r3, #8
     fa8:	18fb      	adds	r3, r7, r3
     faa:	881b      	ldrh	r3, [r3, #0]
     fac:	2b6a      	cmp	r3, #106	; 0x6a
     fae:	d904      	bls.n	fba <pdu_write_single_register+0x52>
     fb0:	2308      	movs	r3, #8
     fb2:	18fb      	adds	r3, r7, r3
     fb4:	881b      	ldrh	r3, [r3, #0]
     fb6:	2b6d      	cmp	r3, #109	; 0x6d
     fb8:	d914      	bls.n	fe4 <pdu_write_single_register+0x7c>
     fba:	2301      	movs	r3, #1
     fbc:	60fb      	str	r3, [r7, #12]
     fbe:	68fb      	ldr	r3, [r7, #12]
     fc0:	1c5a      	adds	r2, r3, #1
     fc2:	60fa      	str	r2, [r7, #12]
     fc4:	220b      	movs	r2, #11
     fc6:	18ba      	adds	r2, r7, r2
     fc8:	7812      	ldrb	r2, [r2, #0]
     fca:	2180      	movs	r1, #128	; 0x80
     fcc:	4249      	negs	r1, r1
     fce:	430a      	orrs	r2, r1
     fd0:	b2d1      	uxtb	r1, r2
     fd2:	4a20      	ldr	r2, [pc, #128]	; (1054 <pdu_write_single_register+0xec>)
     fd4:	54d1      	strb	r1, [r2, r3]
     fd6:	68fb      	ldr	r3, [r7, #12]
     fd8:	1c5a      	adds	r2, r3, #1
     fda:	60fa      	str	r2, [r7, #12]
     fdc:	4a1d      	ldr	r2, [pc, #116]	; (1054 <pdu_write_single_register+0xec>)
     fde:	2102      	movs	r1, #2
     fe0:	54d1      	strb	r1, [r2, r3]
     fe2:	e02f      	b.n	1044 <pdu_write_single_register+0xdc>
     fe4:	2308      	movs	r3, #8
     fe6:	18fb      	adds	r3, r7, r3
     fe8:	881b      	ldrh	r3, [r3, #0]
     fea:	3b6b      	subs	r3, #107	; 0x6b
     fec:	001a      	movs	r2, r3
     fee:	4b1a      	ldr	r3, [pc, #104]	; (1058 <pdu_write_single_register+0xf0>)
     ff0:	0052      	lsls	r2, r2, #1
     ff2:	1db9      	adds	r1, r7, #6
     ff4:	8809      	ldrh	r1, [r1, #0]
     ff6:	52d1      	strh	r1, [r2, r3]
     ff8:	2301      	movs	r3, #1
     ffa:	60fb      	str	r3, [r7, #12]
     ffc:	68fb      	ldr	r3, [r7, #12]
     ffe:	1c5a      	adds	r2, r3, #1
    1000:	60fa      	str	r2, [r7, #12]
    1002:	4a14      	ldr	r2, [pc, #80]	; (1054 <pdu_write_single_register+0xec>)
    1004:	210b      	movs	r1, #11
    1006:	1879      	adds	r1, r7, r1
    1008:	7809      	ldrb	r1, [r1, #0]
    100a:	54d1      	strb	r1, [r2, r3]
    100c:	68fb      	ldr	r3, [r7, #12]
    100e:	1c5a      	adds	r2, r3, #1
    1010:	60fa      	str	r2, [r7, #12]
    1012:	4a0f      	ldr	r2, [pc, #60]	; (1050 <pdu_write_single_register+0xe8>)
    1014:	7891      	ldrb	r1, [r2, #2]
    1016:	4a0f      	ldr	r2, [pc, #60]	; (1054 <pdu_write_single_register+0xec>)
    1018:	54d1      	strb	r1, [r2, r3]
    101a:	68fb      	ldr	r3, [r7, #12]
    101c:	1c5a      	adds	r2, r3, #1
    101e:	60fa      	str	r2, [r7, #12]
    1020:	4a0b      	ldr	r2, [pc, #44]	; (1050 <pdu_write_single_register+0xe8>)
    1022:	78d1      	ldrb	r1, [r2, #3]
    1024:	4a0b      	ldr	r2, [pc, #44]	; (1054 <pdu_write_single_register+0xec>)
    1026:	54d1      	strb	r1, [r2, r3]
    1028:	68fb      	ldr	r3, [r7, #12]
    102a:	1c5a      	adds	r2, r3, #1
    102c:	60fa      	str	r2, [r7, #12]
    102e:	4a08      	ldr	r2, [pc, #32]	; (1050 <pdu_write_single_register+0xe8>)
    1030:	7911      	ldrb	r1, [r2, #4]
    1032:	4a08      	ldr	r2, [pc, #32]	; (1054 <pdu_write_single_register+0xec>)
    1034:	54d1      	strb	r1, [r2, r3]
    1036:	68fb      	ldr	r3, [r7, #12]
    1038:	1c5a      	adds	r2, r3, #1
    103a:	60fa      	str	r2, [r7, #12]
    103c:	4a04      	ldr	r2, [pc, #16]	; (1050 <pdu_write_single_register+0xe8>)
    103e:	7951      	ldrb	r1, [r2, #5]
    1040:	4a04      	ldr	r2, [pc, #16]	; (1054 <pdu_write_single_register+0xec>)
    1042:	54d1      	strb	r1, [r2, r3]
    1044:	68fb      	ldr	r3, [r7, #12]
    1046:	0018      	movs	r0, r3
    1048:	46bd      	mov	sp, r7
    104a:	b004      	add	sp, #16
    104c:	bd80      	pop	{r7, pc}
    104e:	46c0      	nop			; (mov r8, r8)
    1050:	2000022c 	.word	0x2000022c
    1054:	20000334 	.word	0x20000334
    1058:	20000010 	.word	0x20000010

0000105c <pdu_write_multiply_registers>:
    105c:	b580      	push	{r7, lr}
    105e:	b086      	sub	sp, #24
    1060:	af00      	add	r7, sp, #0
    1062:	230f      	movs	r3, #15
    1064:	18fb      	adds	r3, r7, r3
    1066:	4a4e      	ldr	r2, [pc, #312]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1068:	7852      	ldrb	r2, [r2, #1]
    106a:	701a      	strb	r2, [r3, #0]
    106c:	4b4c      	ldr	r3, [pc, #304]	; (11a0 <pdu_write_multiply_registers+0x144>)
    106e:	789b      	ldrb	r3, [r3, #2]
    1070:	021b      	lsls	r3, r3, #8
    1072:	b21a      	sxth	r2, r3
    1074:	4b4a      	ldr	r3, [pc, #296]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1076:	78db      	ldrb	r3, [r3, #3]
    1078:	b21b      	sxth	r3, r3
    107a:	4313      	orrs	r3, r2
    107c:	b21a      	sxth	r2, r3
    107e:	230c      	movs	r3, #12
    1080:	18fb      	adds	r3, r7, r3
    1082:	801a      	strh	r2, [r3, #0]
    1084:	4b46      	ldr	r3, [pc, #280]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1086:	791b      	ldrb	r3, [r3, #4]
    1088:	021b      	lsls	r3, r3, #8
    108a:	b21a      	sxth	r2, r3
    108c:	4b44      	ldr	r3, [pc, #272]	; (11a0 <pdu_write_multiply_registers+0x144>)
    108e:	795b      	ldrb	r3, [r3, #5]
    1090:	b21b      	sxth	r3, r3
    1092:	4313      	orrs	r3, r2
    1094:	b21a      	sxth	r2, r3
    1096:	230a      	movs	r3, #10
    1098:	18fb      	adds	r3, r7, r3
    109a:	801a      	strh	r2, [r3, #0]
    109c:	2309      	movs	r3, #9
    109e:	18fb      	adds	r3, r7, r3
    10a0:	4a3f      	ldr	r2, [pc, #252]	; (11a0 <pdu_write_multiply_registers+0x144>)
    10a2:	7992      	ldrb	r2, [r2, #6]
    10a4:	701a      	strb	r2, [r3, #0]
    10a6:	230c      	movs	r3, #12
    10a8:	18fb      	adds	r3, r7, r3
    10aa:	881b      	ldrh	r3, [r3, #0]
    10ac:	2b6a      	cmp	r3, #106	; 0x6a
    10ae:	d908      	bls.n	10c2 <pdu_write_multiply_registers+0x66>
    10b0:	230c      	movs	r3, #12
    10b2:	18fb      	adds	r3, r7, r3
    10b4:	881a      	ldrh	r2, [r3, #0]
    10b6:	230a      	movs	r3, #10
    10b8:	18fb      	adds	r3, r7, r3
    10ba:	881b      	ldrh	r3, [r3, #0]
    10bc:	18d3      	adds	r3, r2, r3
    10be:	2b6e      	cmp	r3, #110	; 0x6e
    10c0:	dd14      	ble.n	10ec <pdu_write_multiply_registers+0x90>
    10c2:	2301      	movs	r3, #1
    10c4:	613b      	str	r3, [r7, #16]
    10c6:	693b      	ldr	r3, [r7, #16]
    10c8:	1c5a      	adds	r2, r3, #1
    10ca:	613a      	str	r2, [r7, #16]
    10cc:	220f      	movs	r2, #15
    10ce:	18ba      	adds	r2, r7, r2
    10d0:	7812      	ldrb	r2, [r2, #0]
    10d2:	2180      	movs	r1, #128	; 0x80
    10d4:	4249      	negs	r1, r1
    10d6:	430a      	orrs	r2, r1
    10d8:	b2d1      	uxtb	r1, r2
    10da:	4a32      	ldr	r2, [pc, #200]	; (11a4 <pdu_write_multiply_registers+0x148>)
    10dc:	54d1      	strb	r1, [r2, r3]
    10de:	693b      	ldr	r3, [r7, #16]
    10e0:	1c5a      	adds	r2, r3, #1
    10e2:	613a      	str	r2, [r7, #16]
    10e4:	4a2f      	ldr	r2, [pc, #188]	; (11a4 <pdu_write_multiply_registers+0x148>)
    10e6:	2102      	movs	r1, #2
    10e8:	54d1      	strb	r1, [r2, r3]
    10ea:	e053      	b.n	1194 <pdu_write_multiply_registers+0x138>
    10ec:	2307      	movs	r3, #7
    10ee:	613b      	str	r3, [r7, #16]
    10f0:	2300      	movs	r3, #0
    10f2:	617b      	str	r3, [r7, #20]
    10f4:	e022      	b.n	113c <pdu_write_multiply_registers+0xe0>
    10f6:	693b      	ldr	r3, [r7, #16]
    10f8:	1c5a      	adds	r2, r3, #1
    10fa:	613a      	str	r2, [r7, #16]
    10fc:	4a28      	ldr	r2, [pc, #160]	; (11a0 <pdu_write_multiply_registers+0x144>)
    10fe:	5cd3      	ldrb	r3, [r2, r3]
    1100:	b29a      	uxth	r2, r3
    1102:	1dbb      	adds	r3, r7, #6
    1104:	0212      	lsls	r2, r2, #8
    1106:	801a      	strh	r2, [r3, #0]
    1108:	693b      	ldr	r3, [r7, #16]
    110a:	1c5a      	adds	r2, r3, #1
    110c:	613a      	str	r2, [r7, #16]
    110e:	4a24      	ldr	r2, [pc, #144]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1110:	5cd3      	ldrb	r3, [r2, r3]
    1112:	b299      	uxth	r1, r3
    1114:	1dbb      	adds	r3, r7, #6
    1116:	1dba      	adds	r2, r7, #6
    1118:	8812      	ldrh	r2, [r2, #0]
    111a:	430a      	orrs	r2, r1
    111c:	801a      	strh	r2, [r3, #0]
    111e:	230c      	movs	r3, #12
    1120:	18fb      	adds	r3, r7, r3
    1122:	881b      	ldrh	r3, [r3, #0]
    1124:	3b6b      	subs	r3, #107	; 0x6b
    1126:	001a      	movs	r2, r3
    1128:	697b      	ldr	r3, [r7, #20]
    112a:	18d2      	adds	r2, r2, r3
    112c:	4b1e      	ldr	r3, [pc, #120]	; (11a8 <pdu_write_multiply_registers+0x14c>)
    112e:	0052      	lsls	r2, r2, #1
    1130:	1db9      	adds	r1, r7, #6
    1132:	8809      	ldrh	r1, [r1, #0]
    1134:	52d1      	strh	r1, [r2, r3]
    1136:	697b      	ldr	r3, [r7, #20]
    1138:	3301      	adds	r3, #1
    113a:	617b      	str	r3, [r7, #20]
    113c:	230a      	movs	r3, #10
    113e:	18fb      	adds	r3, r7, r3
    1140:	881a      	ldrh	r2, [r3, #0]
    1142:	697b      	ldr	r3, [r7, #20]
    1144:	429a      	cmp	r2, r3
    1146:	dcd6      	bgt.n	10f6 <pdu_write_multiply_registers+0x9a>
    1148:	2301      	movs	r3, #1
    114a:	613b      	str	r3, [r7, #16]
    114c:	693b      	ldr	r3, [r7, #16]
    114e:	1c5a      	adds	r2, r3, #1
    1150:	613a      	str	r2, [r7, #16]
    1152:	4a14      	ldr	r2, [pc, #80]	; (11a4 <pdu_write_multiply_registers+0x148>)
    1154:	210f      	movs	r1, #15
    1156:	1879      	adds	r1, r7, r1
    1158:	7809      	ldrb	r1, [r1, #0]
    115a:	54d1      	strb	r1, [r2, r3]
    115c:	693b      	ldr	r3, [r7, #16]
    115e:	1c5a      	adds	r2, r3, #1
    1160:	613a      	str	r2, [r7, #16]
    1162:	4a0f      	ldr	r2, [pc, #60]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1164:	7891      	ldrb	r1, [r2, #2]
    1166:	4a0f      	ldr	r2, [pc, #60]	; (11a4 <pdu_write_multiply_registers+0x148>)
    1168:	54d1      	strb	r1, [r2, r3]
    116a:	693b      	ldr	r3, [r7, #16]
    116c:	1c5a      	adds	r2, r3, #1
    116e:	613a      	str	r2, [r7, #16]
    1170:	4a0b      	ldr	r2, [pc, #44]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1172:	78d1      	ldrb	r1, [r2, #3]
    1174:	4a0b      	ldr	r2, [pc, #44]	; (11a4 <pdu_write_multiply_registers+0x148>)
    1176:	54d1      	strb	r1, [r2, r3]
    1178:	693b      	ldr	r3, [r7, #16]
    117a:	1c5a      	adds	r2, r3, #1
    117c:	613a      	str	r2, [r7, #16]
    117e:	4a08      	ldr	r2, [pc, #32]	; (11a0 <pdu_write_multiply_registers+0x144>)
    1180:	7911      	ldrb	r1, [r2, #4]
    1182:	4a08      	ldr	r2, [pc, #32]	; (11a4 <pdu_write_multiply_registers+0x148>)
    1184:	54d1      	strb	r1, [r2, r3]
    1186:	693b      	ldr	r3, [r7, #16]
    1188:	1c5a      	adds	r2, r3, #1
    118a:	613a      	str	r2, [r7, #16]
    118c:	4a04      	ldr	r2, [pc, #16]	; (11a0 <pdu_write_multiply_registers+0x144>)
    118e:	7951      	ldrb	r1, [r2, #5]
    1190:	4a04      	ldr	r2, [pc, #16]	; (11a4 <pdu_write_multiply_registers+0x148>)
    1192:	54d1      	strb	r1, [r2, r3]
    1194:	693b      	ldr	r3, [r7, #16]
    1196:	0018      	movs	r0, r3
    1198:	46bd      	mov	sp, r7
    119a:	b006      	add	sp, #24
    119c:	bd80      	pop	{r7, pc}
    119e:	46c0      	nop			; (mov r8, r8)
    11a0:	2000022c 	.word	0x2000022c
    11a4:	20000334 	.word	0x20000334
    11a8:	20000010 	.word	0x20000010

000011ac <pdu_read_holding_registers>:
    11ac:	b580      	push	{r7, lr}
    11ae:	b084      	sub	sp, #16
    11b0:	af00      	add	r7, sp, #0
    11b2:	1dfb      	adds	r3, r7, #7
    11b4:	4a3b      	ldr	r2, [pc, #236]	; (12a4 <pdu_read_holding_registers+0xf8>)
    11b6:	7852      	ldrb	r2, [r2, #1]
    11b8:	701a      	strb	r2, [r3, #0]
    11ba:	4b3a      	ldr	r3, [pc, #232]	; (12a4 <pdu_read_holding_registers+0xf8>)
    11bc:	789b      	ldrb	r3, [r3, #2]
    11be:	021b      	lsls	r3, r3, #8
    11c0:	b21a      	sxth	r2, r3
    11c2:	4b38      	ldr	r3, [pc, #224]	; (12a4 <pdu_read_holding_registers+0xf8>)
    11c4:	78db      	ldrb	r3, [r3, #3]
    11c6:	b21b      	sxth	r3, r3
    11c8:	4313      	orrs	r3, r2
    11ca:	b21a      	sxth	r2, r3
    11cc:	1d3b      	adds	r3, r7, #4
    11ce:	801a      	strh	r2, [r3, #0]
    11d0:	4b34      	ldr	r3, [pc, #208]	; (12a4 <pdu_read_holding_registers+0xf8>)
    11d2:	791b      	ldrb	r3, [r3, #4]
    11d4:	021b      	lsls	r3, r3, #8
    11d6:	b21a      	sxth	r2, r3
    11d8:	4b32      	ldr	r3, [pc, #200]	; (12a4 <pdu_read_holding_registers+0xf8>)
    11da:	795b      	ldrb	r3, [r3, #5]
    11dc:	b21b      	sxth	r3, r3
    11de:	4313      	orrs	r3, r2
    11e0:	b21a      	sxth	r2, r3
    11e2:	1cbb      	adds	r3, r7, #2
    11e4:	801a      	strh	r2, [r3, #0]
    11e6:	1d3b      	adds	r3, r7, #4
    11e8:	881b      	ldrh	r3, [r3, #0]
    11ea:	2b6a      	cmp	r3, #106	; 0x6a
    11ec:	d906      	bls.n	11fc <pdu_read_holding_registers+0x50>
    11ee:	1d3b      	adds	r3, r7, #4
    11f0:	881a      	ldrh	r2, [r3, #0]
    11f2:	1cbb      	adds	r3, r7, #2
    11f4:	881b      	ldrh	r3, [r3, #0]
    11f6:	18d3      	adds	r3, r2, r3
    11f8:	2b6e      	cmp	r3, #110	; 0x6e
    11fa:	dd13      	ble.n	1224 <pdu_read_holding_registers+0x78>
    11fc:	2301      	movs	r3, #1
    11fe:	60bb      	str	r3, [r7, #8]
    1200:	68bb      	ldr	r3, [r7, #8]
    1202:	1c5a      	adds	r2, r3, #1
    1204:	60ba      	str	r2, [r7, #8]
    1206:	1dfa      	adds	r2, r7, #7
    1208:	7812      	ldrb	r2, [r2, #0]
    120a:	2180      	movs	r1, #128	; 0x80
    120c:	4249      	negs	r1, r1
    120e:	430a      	orrs	r2, r1
    1210:	b2d1      	uxtb	r1, r2
    1212:	4a25      	ldr	r2, [pc, #148]	; (12a8 <pdu_read_holding_registers+0xfc>)
    1214:	54d1      	strb	r1, [r2, r3]
    1216:	68bb      	ldr	r3, [r7, #8]
    1218:	1c5a      	adds	r2, r3, #1
    121a:	60ba      	str	r2, [r7, #8]
    121c:	4a22      	ldr	r2, [pc, #136]	; (12a8 <pdu_read_holding_registers+0xfc>)
    121e:	2102      	movs	r1, #2
    1220:	54d1      	strb	r1, [r2, r3]
    1222:	e03a      	b.n	129a <pdu_read_holding_registers+0xee>
    1224:	2301      	movs	r3, #1
    1226:	60bb      	str	r3, [r7, #8]
    1228:	68bb      	ldr	r3, [r7, #8]
    122a:	1c5a      	adds	r2, r3, #1
    122c:	60ba      	str	r2, [r7, #8]
    122e:	4a1e      	ldr	r2, [pc, #120]	; (12a8 <pdu_read_holding_registers+0xfc>)
    1230:	1df9      	adds	r1, r7, #7
    1232:	7809      	ldrb	r1, [r1, #0]
    1234:	54d1      	strb	r1, [r2, r3]
    1236:	68bb      	ldr	r3, [r7, #8]
    1238:	1c5a      	adds	r2, r3, #1
    123a:	60ba      	str	r2, [r7, #8]
    123c:	1cba      	adds	r2, r7, #2
    123e:	8812      	ldrh	r2, [r2, #0]
    1240:	b2d2      	uxtb	r2, r2
    1242:	1892      	adds	r2, r2, r2
    1244:	b2d1      	uxtb	r1, r2
    1246:	4a18      	ldr	r2, [pc, #96]	; (12a8 <pdu_read_holding_registers+0xfc>)
    1248:	54d1      	strb	r1, [r2, r3]
    124a:	2300      	movs	r3, #0
    124c:	60fb      	str	r3, [r7, #12]
    124e:	e01f      	b.n	1290 <pdu_read_holding_registers+0xe4>
    1250:	1d3b      	adds	r3, r7, #4
    1252:	881b      	ldrh	r3, [r3, #0]
    1254:	3b6b      	subs	r3, #107	; 0x6b
    1256:	001a      	movs	r2, r3
    1258:	68fb      	ldr	r3, [r7, #12]
    125a:	18d1      	adds	r1, r2, r3
    125c:	003b      	movs	r3, r7
    125e:	4a13      	ldr	r2, [pc, #76]	; (12ac <pdu_read_holding_registers+0x100>)
    1260:	0049      	lsls	r1, r1, #1
    1262:	5a8a      	ldrh	r2, [r1, r2]
    1264:	801a      	strh	r2, [r3, #0]
    1266:	68bb      	ldr	r3, [r7, #8]
    1268:	1c5a      	adds	r2, r3, #1
    126a:	60ba      	str	r2, [r7, #8]
    126c:	003a      	movs	r2, r7
    126e:	8812      	ldrh	r2, [r2, #0]
    1270:	0a12      	lsrs	r2, r2, #8
    1272:	b292      	uxth	r2, r2
    1274:	b2d1      	uxtb	r1, r2
    1276:	4a0c      	ldr	r2, [pc, #48]	; (12a8 <pdu_read_holding_registers+0xfc>)
    1278:	54d1      	strb	r1, [r2, r3]
    127a:	68bb      	ldr	r3, [r7, #8]
    127c:	1c5a      	adds	r2, r3, #1
    127e:	60ba      	str	r2, [r7, #8]
    1280:	003a      	movs	r2, r7
    1282:	8812      	ldrh	r2, [r2, #0]
    1284:	b2d1      	uxtb	r1, r2
    1286:	4a08      	ldr	r2, [pc, #32]	; (12a8 <pdu_read_holding_registers+0xfc>)
    1288:	54d1      	strb	r1, [r2, r3]
    128a:	68fb      	ldr	r3, [r7, #12]
    128c:	3301      	adds	r3, #1
    128e:	60fb      	str	r3, [r7, #12]
    1290:	1cbb      	adds	r3, r7, #2
    1292:	881a      	ldrh	r2, [r3, #0]
    1294:	68fb      	ldr	r3, [r7, #12]
    1296:	429a      	cmp	r2, r3
    1298:	dcda      	bgt.n	1250 <pdu_read_holding_registers+0xa4>
    129a:	68bb      	ldr	r3, [r7, #8]
    129c:	0018      	movs	r0, r3
    129e:	46bd      	mov	sp, r7
    12a0:	b004      	add	sp, #16
    12a2:	bd80      	pop	{r7, pc}
    12a4:	2000022c 	.word	0x2000022c
    12a8:	20000334 	.word	0x20000334
    12ac:	20000010 	.word	0x20000010

000012b0 <pdu_read_write_multiply_registers>:
    12b0:	b580      	push	{r7, lr}
    12b2:	b086      	sub	sp, #24
    12b4:	af00      	add	r7, sp, #0
    12b6:	230f      	movs	r3, #15
    12b8:	18fb      	adds	r3, r7, r3
    12ba:	4a77      	ldr	r2, [pc, #476]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12bc:	7852      	ldrb	r2, [r2, #1]
    12be:	701a      	strb	r2, [r3, #0]
    12c0:	4b75      	ldr	r3, [pc, #468]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12c2:	789b      	ldrb	r3, [r3, #2]
    12c4:	021b      	lsls	r3, r3, #8
    12c6:	b21a      	sxth	r2, r3
    12c8:	4b73      	ldr	r3, [pc, #460]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12ca:	78db      	ldrb	r3, [r3, #3]
    12cc:	b21b      	sxth	r3, r3
    12ce:	4313      	orrs	r3, r2
    12d0:	b21a      	sxth	r2, r3
    12d2:	230c      	movs	r3, #12
    12d4:	18fb      	adds	r3, r7, r3
    12d6:	801a      	strh	r2, [r3, #0]
    12d8:	4b6f      	ldr	r3, [pc, #444]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12da:	791b      	ldrb	r3, [r3, #4]
    12dc:	021b      	lsls	r3, r3, #8
    12de:	b21a      	sxth	r2, r3
    12e0:	4b6d      	ldr	r3, [pc, #436]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12e2:	795b      	ldrb	r3, [r3, #5]
    12e4:	b21b      	sxth	r3, r3
    12e6:	4313      	orrs	r3, r2
    12e8:	b21a      	sxth	r2, r3
    12ea:	230a      	movs	r3, #10
    12ec:	18fb      	adds	r3, r7, r3
    12ee:	801a      	strh	r2, [r3, #0]
    12f0:	4b69      	ldr	r3, [pc, #420]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12f2:	799b      	ldrb	r3, [r3, #6]
    12f4:	021b      	lsls	r3, r3, #8
    12f6:	b21a      	sxth	r2, r3
    12f8:	4b67      	ldr	r3, [pc, #412]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    12fa:	79db      	ldrb	r3, [r3, #7]
    12fc:	b21b      	sxth	r3, r3
    12fe:	4313      	orrs	r3, r2
    1300:	b21a      	sxth	r2, r3
    1302:	2308      	movs	r3, #8
    1304:	18fb      	adds	r3, r7, r3
    1306:	801a      	strh	r2, [r3, #0]
    1308:	4b63      	ldr	r3, [pc, #396]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    130a:	7a1b      	ldrb	r3, [r3, #8]
    130c:	021b      	lsls	r3, r3, #8
    130e:	b21a      	sxth	r2, r3
    1310:	4b61      	ldr	r3, [pc, #388]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    1312:	7a5b      	ldrb	r3, [r3, #9]
    1314:	b21b      	sxth	r3, r3
    1316:	4313      	orrs	r3, r2
    1318:	b21a      	sxth	r2, r3
    131a:	1dbb      	adds	r3, r7, #6
    131c:	801a      	strh	r2, [r3, #0]
    131e:	1d7b      	adds	r3, r7, #5
    1320:	4a5d      	ldr	r2, [pc, #372]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    1322:	7a92      	ldrb	r2, [r2, #10]
    1324:	701a      	strb	r2, [r3, #0]
    1326:	230c      	movs	r3, #12
    1328:	18fb      	adds	r3, r7, r3
    132a:	881b      	ldrh	r3, [r3, #0]
    132c:	2b6a      	cmp	r3, #106	; 0x6a
    132e:	d908      	bls.n	1342 <pdu_read_write_multiply_registers+0x92>
    1330:	230c      	movs	r3, #12
    1332:	18fb      	adds	r3, r7, r3
    1334:	881a      	ldrh	r2, [r3, #0]
    1336:	230a      	movs	r3, #10
    1338:	18fb      	adds	r3, r7, r3
    133a:	881b      	ldrh	r3, [r3, #0]
    133c:	18d3      	adds	r3, r2, r3
    133e:	2b6e      	cmp	r3, #110	; 0x6e
    1340:	dd15      	ble.n	136e <pdu_read_write_multiply_registers+0xbe>
    1342:	2301      	movs	r3, #1
    1344:	613b      	str	r3, [r7, #16]
    1346:	693b      	ldr	r3, [r7, #16]
    1348:	1c5a      	adds	r2, r3, #1
    134a:	613a      	str	r2, [r7, #16]
    134c:	220f      	movs	r2, #15
    134e:	18ba      	adds	r2, r7, r2
    1350:	7812      	ldrb	r2, [r2, #0]
    1352:	2180      	movs	r1, #128	; 0x80
    1354:	4249      	negs	r1, r1
    1356:	430a      	orrs	r2, r1
    1358:	b2d1      	uxtb	r1, r2
    135a:	4a50      	ldr	r2, [pc, #320]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    135c:	54d1      	strb	r1, [r2, r3]
    135e:	693b      	ldr	r3, [r7, #16]
    1360:	1c5a      	adds	r2, r3, #1
    1362:	613a      	str	r2, [r7, #16]
    1364:	4a4d      	ldr	r2, [pc, #308]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    1366:	2102      	movs	r1, #2
    1368:	54d1      	strb	r1, [r2, r3]
    136a:	693b      	ldr	r3, [r7, #16]
    136c:	e08f      	b.n	148e <pdu_read_write_multiply_registers+0x1de>
    136e:	2308      	movs	r3, #8
    1370:	18fb      	adds	r3, r7, r3
    1372:	881b      	ldrh	r3, [r3, #0]
    1374:	2b6a      	cmp	r3, #106	; 0x6a
    1376:	d907      	bls.n	1388 <pdu_read_write_multiply_registers+0xd8>
    1378:	2308      	movs	r3, #8
    137a:	18fb      	adds	r3, r7, r3
    137c:	881a      	ldrh	r2, [r3, #0]
    137e:	1dbb      	adds	r3, r7, #6
    1380:	881b      	ldrh	r3, [r3, #0]
    1382:	18d3      	adds	r3, r2, r3
    1384:	2b6e      	cmp	r3, #110	; 0x6e
    1386:	dd15      	ble.n	13b4 <pdu_read_write_multiply_registers+0x104>
    1388:	2301      	movs	r3, #1
    138a:	613b      	str	r3, [r7, #16]
    138c:	693b      	ldr	r3, [r7, #16]
    138e:	1c5a      	adds	r2, r3, #1
    1390:	613a      	str	r2, [r7, #16]
    1392:	220f      	movs	r2, #15
    1394:	18ba      	adds	r2, r7, r2
    1396:	7812      	ldrb	r2, [r2, #0]
    1398:	2180      	movs	r1, #128	; 0x80
    139a:	4249      	negs	r1, r1
    139c:	430a      	orrs	r2, r1
    139e:	b2d1      	uxtb	r1, r2
    13a0:	4a3e      	ldr	r2, [pc, #248]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    13a2:	54d1      	strb	r1, [r2, r3]
    13a4:	693b      	ldr	r3, [r7, #16]
    13a6:	1c5a      	adds	r2, r3, #1
    13a8:	613a      	str	r2, [r7, #16]
    13aa:	4a3c      	ldr	r2, [pc, #240]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    13ac:	2102      	movs	r1, #2
    13ae:	54d1      	strb	r1, [r2, r3]
    13b0:	693b      	ldr	r3, [r7, #16]
    13b2:	e06c      	b.n	148e <pdu_read_write_multiply_registers+0x1de>
    13b4:	230b      	movs	r3, #11
    13b6:	613b      	str	r3, [r7, #16]
    13b8:	2300      	movs	r3, #0
    13ba:	617b      	str	r3, [r7, #20]
    13bc:	e022      	b.n	1404 <pdu_read_write_multiply_registers+0x154>
    13be:	693b      	ldr	r3, [r7, #16]
    13c0:	1c5a      	adds	r2, r3, #1
    13c2:	613a      	str	r2, [r7, #16]
    13c4:	4a34      	ldr	r2, [pc, #208]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    13c6:	5cd3      	ldrb	r3, [r2, r3]
    13c8:	b29a      	uxth	r2, r3
    13ca:	1cbb      	adds	r3, r7, #2
    13cc:	0212      	lsls	r2, r2, #8
    13ce:	801a      	strh	r2, [r3, #0]
    13d0:	693b      	ldr	r3, [r7, #16]
    13d2:	1c5a      	adds	r2, r3, #1
    13d4:	613a      	str	r2, [r7, #16]
    13d6:	4a30      	ldr	r2, [pc, #192]	; (1498 <pdu_read_write_multiply_registers+0x1e8>)
    13d8:	5cd3      	ldrb	r3, [r2, r3]
    13da:	b299      	uxth	r1, r3
    13dc:	1cbb      	adds	r3, r7, #2
    13de:	1cba      	adds	r2, r7, #2
    13e0:	8812      	ldrh	r2, [r2, #0]
    13e2:	430a      	orrs	r2, r1
    13e4:	801a      	strh	r2, [r3, #0]
    13e6:	2308      	movs	r3, #8
    13e8:	18fb      	adds	r3, r7, r3
    13ea:	881b      	ldrh	r3, [r3, #0]
    13ec:	3b6b      	subs	r3, #107	; 0x6b
    13ee:	001a      	movs	r2, r3
    13f0:	697b      	ldr	r3, [r7, #20]
    13f2:	18d2      	adds	r2, r2, r3
    13f4:	4b2a      	ldr	r3, [pc, #168]	; (14a0 <pdu_read_write_multiply_registers+0x1f0>)
    13f6:	0052      	lsls	r2, r2, #1
    13f8:	1cb9      	adds	r1, r7, #2
    13fa:	8809      	ldrh	r1, [r1, #0]
    13fc:	52d1      	strh	r1, [r2, r3]
    13fe:	697b      	ldr	r3, [r7, #20]
    1400:	3301      	adds	r3, #1
    1402:	617b      	str	r3, [r7, #20]
    1404:	1dbb      	adds	r3, r7, #6
    1406:	881a      	ldrh	r2, [r3, #0]
    1408:	697b      	ldr	r3, [r7, #20]
    140a:	429a      	cmp	r2, r3
    140c:	dcd7      	bgt.n	13be <pdu_read_write_multiply_registers+0x10e>
    140e:	2301      	movs	r3, #1
    1410:	613b      	str	r3, [r7, #16]
    1412:	693b      	ldr	r3, [r7, #16]
    1414:	1c5a      	adds	r2, r3, #1
    1416:	613a      	str	r2, [r7, #16]
    1418:	4a20      	ldr	r2, [pc, #128]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    141a:	210f      	movs	r1, #15
    141c:	1879      	adds	r1, r7, r1
    141e:	7809      	ldrb	r1, [r1, #0]
    1420:	54d1      	strb	r1, [r2, r3]
    1422:	693b      	ldr	r3, [r7, #16]
    1424:	1c5a      	adds	r2, r3, #1
    1426:	613a      	str	r2, [r7, #16]
    1428:	220a      	movs	r2, #10
    142a:	18ba      	adds	r2, r7, r2
    142c:	8812      	ldrh	r2, [r2, #0]
    142e:	b2d2      	uxtb	r2, r2
    1430:	1892      	adds	r2, r2, r2
    1432:	b2d1      	uxtb	r1, r2
    1434:	4a19      	ldr	r2, [pc, #100]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    1436:	54d1      	strb	r1, [r2, r3]
    1438:	2300      	movs	r3, #0
    143a:	617b      	str	r3, [r7, #20]
    143c:	e020      	b.n	1480 <pdu_read_write_multiply_registers+0x1d0>
    143e:	230c      	movs	r3, #12
    1440:	18fb      	adds	r3, r7, r3
    1442:	881b      	ldrh	r3, [r3, #0]
    1444:	3b6b      	subs	r3, #107	; 0x6b
    1446:	001a      	movs	r2, r3
    1448:	697b      	ldr	r3, [r7, #20]
    144a:	18d1      	adds	r1, r2, r3
    144c:	003b      	movs	r3, r7
    144e:	4a14      	ldr	r2, [pc, #80]	; (14a0 <pdu_read_write_multiply_registers+0x1f0>)
    1450:	0049      	lsls	r1, r1, #1
    1452:	5a8a      	ldrh	r2, [r1, r2]
    1454:	801a      	strh	r2, [r3, #0]
    1456:	693b      	ldr	r3, [r7, #16]
    1458:	1c5a      	adds	r2, r3, #1
    145a:	613a      	str	r2, [r7, #16]
    145c:	003a      	movs	r2, r7
    145e:	8812      	ldrh	r2, [r2, #0]
    1460:	0a12      	lsrs	r2, r2, #8
    1462:	b292      	uxth	r2, r2
    1464:	b2d1      	uxtb	r1, r2
    1466:	4a0d      	ldr	r2, [pc, #52]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    1468:	54d1      	strb	r1, [r2, r3]
    146a:	693b      	ldr	r3, [r7, #16]
    146c:	1c5a      	adds	r2, r3, #1
    146e:	613a      	str	r2, [r7, #16]
    1470:	003a      	movs	r2, r7
    1472:	8812      	ldrh	r2, [r2, #0]
    1474:	b2d1      	uxtb	r1, r2
    1476:	4a09      	ldr	r2, [pc, #36]	; (149c <pdu_read_write_multiply_registers+0x1ec>)
    1478:	54d1      	strb	r1, [r2, r3]
    147a:	697b      	ldr	r3, [r7, #20]
    147c:	3301      	adds	r3, #1
    147e:	617b      	str	r3, [r7, #20]
    1480:	230a      	movs	r3, #10
    1482:	18fb      	adds	r3, r7, r3
    1484:	881a      	ldrh	r2, [r3, #0]
    1486:	697b      	ldr	r3, [r7, #20]
    1488:	429a      	cmp	r2, r3
    148a:	dcd8      	bgt.n	143e <pdu_read_write_multiply_registers+0x18e>
    148c:	693b      	ldr	r3, [r7, #16]
    148e:	0018      	movs	r0, r3
    1490:	46bd      	mov	sp, r7
    1492:	b006      	add	sp, #24
    1494:	bd80      	pop	{r7, pc}
    1496:	46c0      	nop			; (mov r8, r8)
    1498:	2000022c 	.word	0x2000022c
    149c:	20000334 	.word	0x20000334
    14a0:	20000010 	.word	0x20000010

000014a4 <pdu_illegal_function_error>:
    14a4:	b580      	push	{r7, lr}
    14a6:	b082      	sub	sp, #8
    14a8:	af00      	add	r7, sp, #0
    14aa:	1dfb      	adds	r3, r7, #7
    14ac:	4a0d      	ldr	r2, [pc, #52]	; (14e4 <pdu_illegal_function_error+0x40>)
    14ae:	7852      	ldrb	r2, [r2, #1]
    14b0:	701a      	strb	r2, [r3, #0]
    14b2:	2301      	movs	r3, #1
    14b4:	603b      	str	r3, [r7, #0]
    14b6:	683b      	ldr	r3, [r7, #0]
    14b8:	1c5a      	adds	r2, r3, #1
    14ba:	603a      	str	r2, [r7, #0]
    14bc:	1dfa      	adds	r2, r7, #7
    14be:	7812      	ldrb	r2, [r2, #0]
    14c0:	2180      	movs	r1, #128	; 0x80
    14c2:	4249      	negs	r1, r1
    14c4:	430a      	orrs	r2, r1
    14c6:	b2d1      	uxtb	r1, r2
    14c8:	4a07      	ldr	r2, [pc, #28]	; (14e8 <pdu_illegal_function_error+0x44>)
    14ca:	54d1      	strb	r1, [r2, r3]
    14cc:	683b      	ldr	r3, [r7, #0]
    14ce:	1c5a      	adds	r2, r3, #1
    14d0:	603a      	str	r2, [r7, #0]
    14d2:	4a05      	ldr	r2, [pc, #20]	; (14e8 <pdu_illegal_function_error+0x44>)
    14d4:	2101      	movs	r1, #1
    14d6:	54d1      	strb	r1, [r2, r3]
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	0018      	movs	r0, r3
    14dc:	46bd      	mov	sp, r7
    14de:	b002      	add	sp, #8
    14e0:	bd80      	pop	{r7, pc}
    14e2:	46c0      	nop			; (mov r8, r8)
    14e4:	2000022c 	.word	0x2000022c
    14e8:	20000334 	.word	0x20000334

000014ec <proc_ADU>:
    14ec:	b590      	push	{r4, r7, lr}
    14ee:	b083      	sub	sp, #12
    14f0:	af00      	add	r7, sp, #0
    14f2:	4b26      	ldr	r3, [pc, #152]	; (158c <proc_ADU+0xa0>)
    14f4:	681b      	ldr	r3, [r3, #0]
    14f6:	001a      	movs	r2, r3
    14f8:	1dbc      	adds	r4, r7, #6
    14fa:	4b25      	ldr	r3, [pc, #148]	; (1590 <proc_ADU+0xa4>)
    14fc:	0011      	movs	r1, r2
    14fe:	0018      	movs	r0, r3
    1500:	f000 f84e 	bl	15a0 <crc16>
    1504:	0003      	movs	r3, r0
    1506:	8023      	strh	r3, [r4, #0]
    1508:	1dbb      	adds	r3, r7, #6
    150a:	881b      	ldrh	r3, [r3, #0]
    150c:	2b00      	cmp	r3, #0
    150e:	d003      	beq.n	1518 <proc_ADU+0x2c>
    1510:	4b20      	ldr	r3, [pc, #128]	; (1594 <proc_ADU+0xa8>)
    1512:	2201      	movs	r2, #1
    1514:	601a      	str	r2, [r3, #0]
    1516:	e035      	b.n	1584 <proc_ADU+0x98>
    1518:	1d7b      	adds	r3, r7, #5
    151a:	4a1d      	ldr	r2, [pc, #116]	; (1590 <proc_ADU+0xa4>)
    151c:	7812      	ldrb	r2, [r2, #0]
    151e:	701a      	strb	r2, [r3, #0]
    1520:	1d3b      	adds	r3, r7, #4
    1522:	4a1b      	ldr	r2, [pc, #108]	; (1590 <proc_ADU+0xa4>)
    1524:	7852      	ldrb	r2, [r2, #1]
    1526:	701a      	strb	r2, [r3, #0]
    1528:	1d7b      	adds	r3, r7, #5
    152a:	781b      	ldrb	r3, [r3, #0]
    152c:	2b11      	cmp	r3, #17
    152e:	d129      	bne.n	1584 <proc_ADU+0x98>
    1530:	4b19      	ldr	r3, [pc, #100]	; (1598 <proc_ADU+0xac>)
    1532:	2211      	movs	r2, #17
    1534:	701a      	strb	r2, [r3, #0]
    1536:	1d3b      	adds	r3, r7, #4
    1538:	781a      	ldrb	r2, [r3, #0]
    153a:	4b18      	ldr	r3, [pc, #96]	; (159c <proc_ADU+0xb0>)
    153c:	0092      	lsls	r2, r2, #2
    153e:	58d3      	ldr	r3, [r2, r3]
    1540:	4798      	blx	r3
    1542:	0003      	movs	r3, r0
    1544:	603b      	str	r3, [r7, #0]
    1546:	1dbc      	adds	r4, r7, #6
    1548:	683a      	ldr	r2, [r7, #0]
    154a:	4b13      	ldr	r3, [pc, #76]	; (1598 <proc_ADU+0xac>)
    154c:	0011      	movs	r1, r2
    154e:	0018      	movs	r0, r3
    1550:	f000 f826 	bl	15a0 <crc16>
    1554:	0003      	movs	r3, r0
    1556:	8023      	strh	r3, [r4, #0]
    1558:	683b      	ldr	r3, [r7, #0]
    155a:	1c5a      	adds	r2, r3, #1
    155c:	603a      	str	r2, [r7, #0]
    155e:	1dba      	adds	r2, r7, #6
    1560:	8812      	ldrh	r2, [r2, #0]
    1562:	b2d1      	uxtb	r1, r2
    1564:	4a0c      	ldr	r2, [pc, #48]	; (1598 <proc_ADU+0xac>)
    1566:	54d1      	strb	r1, [r2, r3]
    1568:	683b      	ldr	r3, [r7, #0]
    156a:	1c5a      	adds	r2, r3, #1
    156c:	603a      	str	r2, [r7, #0]
    156e:	1dba      	adds	r2, r7, #6
    1570:	8812      	ldrh	r2, [r2, #0]
    1572:	0a12      	lsrs	r2, r2, #8
    1574:	b292      	uxth	r2, r2
    1576:	b2d1      	uxtb	r1, r2
    1578:	4a07      	ldr	r2, [pc, #28]	; (1598 <proc_ADU+0xac>)
    157a:	54d1      	strb	r1, [r2, r3]
    157c:	683b      	ldr	r3, [r7, #0]
    157e:	0018      	movs	r0, r3
    1580:	f7ff f826 	bl	5d0 <start_trans>
    1584:	46bd      	mov	sp, r7
    1586:	b003      	add	sp, #12
    1588:	bd90      	pop	{r4, r7, pc}
    158a:	46c0      	nop			; (mov r8, r8)
    158c:	2000032c 	.word	0x2000032c
    1590:	2000022c 	.word	0x2000022c
    1594:	20000228 	.word	0x20000228
    1598:	20000334 	.word	0x20000334
    159c:	00001658 	.word	0x00001658

000015a0 <crc16>:
    15a0:	b580      	push	{r7, lr}
    15a2:	b086      	sub	sp, #24
    15a4:	af00      	add	r7, sp, #0
    15a6:	6078      	str	r0, [r7, #4]
    15a8:	6039      	str	r1, [r7, #0]
    15aa:	2317      	movs	r3, #23
    15ac:	18fb      	adds	r3, r7, r3
    15ae:	22ff      	movs	r2, #255	; 0xff
    15b0:	701a      	strb	r2, [r3, #0]
    15b2:	2316      	movs	r3, #22
    15b4:	18fb      	adds	r3, r7, r3
    15b6:	22ff      	movs	r2, #255	; 0xff
    15b8:	701a      	strb	r2, [r3, #0]
    15ba:	2300      	movs	r3, #0
    15bc:	613b      	str	r3, [r7, #16]
    15be:	e01e      	b.n	15fe <crc16+0x5e>
    15c0:	693b      	ldr	r3, [r7, #16]
    15c2:	687a      	ldr	r2, [r7, #4]
    15c4:	18d3      	adds	r3, r2, r3
    15c6:	781a      	ldrb	r2, [r3, #0]
    15c8:	2317      	movs	r3, #23
    15ca:	18fb      	adds	r3, r7, r3
    15cc:	781b      	ldrb	r3, [r3, #0]
    15ce:	4053      	eors	r3, r2
    15d0:	b2db      	uxtb	r3, r3
    15d2:	60fb      	str	r3, [r7, #12]
    15d4:	4a14      	ldr	r2, [pc, #80]	; (1628 <crc16+0x88>)
    15d6:	68fb      	ldr	r3, [r7, #12]
    15d8:	18d3      	adds	r3, r2, r3
    15da:	7819      	ldrb	r1, [r3, #0]
    15dc:	2317      	movs	r3, #23
    15de:	18fb      	adds	r3, r7, r3
    15e0:	2216      	movs	r2, #22
    15e2:	18ba      	adds	r2, r7, r2
    15e4:	7812      	ldrb	r2, [r2, #0]
    15e6:	404a      	eors	r2, r1
    15e8:	701a      	strb	r2, [r3, #0]
    15ea:	2316      	movs	r3, #22
    15ec:	18fb      	adds	r3, r7, r3
    15ee:	490f      	ldr	r1, [pc, #60]	; (162c <crc16+0x8c>)
    15f0:	68fa      	ldr	r2, [r7, #12]
    15f2:	188a      	adds	r2, r1, r2
    15f4:	7812      	ldrb	r2, [r2, #0]
    15f6:	701a      	strb	r2, [r3, #0]
    15f8:	693b      	ldr	r3, [r7, #16]
    15fa:	3301      	adds	r3, #1
    15fc:	613b      	str	r3, [r7, #16]
    15fe:	693a      	ldr	r2, [r7, #16]
    1600:	683b      	ldr	r3, [r7, #0]
    1602:	429a      	cmp	r2, r3
    1604:	dbdc      	blt.n	15c0 <crc16+0x20>
    1606:	2316      	movs	r3, #22
    1608:	18fb      	adds	r3, r7, r3
    160a:	781b      	ldrb	r3, [r3, #0]
    160c:	021b      	lsls	r3, r3, #8
    160e:	b21a      	sxth	r2, r3
    1610:	2317      	movs	r3, #23
    1612:	18fb      	adds	r3, r7, r3
    1614:	781b      	ldrb	r3, [r3, #0]
    1616:	b21b      	sxth	r3, r3
    1618:	4313      	orrs	r3, r2
    161a:	b21b      	sxth	r3, r3
    161c:	b29b      	uxth	r3, r3
    161e:	0018      	movs	r0, r3
    1620:	46bd      	mov	sp, r7
    1622:	b006      	add	sp, #24
    1624:	bd80      	pop	{r7, pc}
    1626:	46c0      	nop			; (mov r8, r8)
    1628:	2000001c 	.word	0x2000001c
    162c:	2000011c 	.word	0x2000011c
    1630:	6c6c6568 	.word	0x6c6c6568
    1634:	6f77206f 	.word	0x6f77206f
    1638:	0d646c72 	.word	0x0d646c72
    163c:	0000000a 	.word	0x0000000a

00001640 <device_additional_info>:
    1640:	7420794d 20747365 62646f6d 64207375     My test modbus d
    1650:	63697665 00000065                       evice...

00001658 <proc_PDU_table>:
    1658:	000014a5 00000b81 00000c61 000011ad     ........a.......
    1668:	00000e61 000008dd 00000f69 000014a5     a.......i.......
    1678:	00000dcd 000014a5 000014a5 000014a5     ................
    1688:	000014a5 000014a5 000014a5 00000a19     ................
    1698:	0000105d 00000d41 000014a5 000014a5     ]...A...........
    16a8:	000014a5 000014a5 000014a5 000012b1     ................
    16b8:	000014a5 000014a5 000014a5 000014a5     ................
    16c8:	000014a5 000014a5 000014a5 000014a5     ................
    16d8:	000014a5 000014a5 000014a5 000014a5     ................
    16e8:	000014a5 000014a5 000014a5 000014a5     ................
    16f8:	000014a5 000014a5 000014a5 000014a5     ................
    1708:	000014a5 000014a5 000014a5 000014a5     ................
    1718:	000014a5 000014a5 000014a5 000014a5     ................
    1728:	000014a5 000014a5 000014a5 000014a5     ................
    1738:	000014a5 000014a5 000014a5 000014a5     ................
    1748:	000014a5 000014a5 000014a5 000014a5     ................
    1758:	000014a5 000014a5 000014a5 000014a5     ................
    1768:	000014a5 000014a5 000014a5 000014a5     ................
    1778:	000014a5 000014a5 000014a5 000014a5     ................
    1788:	000014a5 000014a5 000014a5 000014a5     ................
    1798:	000014a5 000014a5 000014a5 000014a5     ................
    17a8:	000014a5 000014a5 000014a5 000014a5     ................
    17b8:	000014a5 000014a5 000014a5 000014a5     ................
    17c8:	000014a5 000014a5 000014a5 000014a5     ................
    17d8:	000014a5 000014a5 000014a5 000014a5     ................
    17e8:	000014a5 000014a5 000014a5 000014a5     ................
    17f8:	000014a5 000014a5 000014a5 000014a5     ................
    1808:	000014a5 000014a5 000014a5 000014a5     ................
    1818:	000014a5 000014a5 000014a5 000014a5     ................
    1828:	000014a5 000014a5 000014a5 000014a5     ................
    1838:	000014a5 000014a5 000014a5 000014a5     ................
    1848:	000014a5 000014a5 000014a5 000014a5     ................
    1858:	000014a5 000014a5 000014a5 000014a5     ................
    1868:	000014a5 000014a5 000014a5 000014a5     ................
    1878:	000014a5 000014a5 000014a5 000014a5     ................
    1888:	000014a5 000014a5 000014a5 000014a5     ................
    1898:	000014a5 000014a5 000014a5 000014a5     ................
    18a8:	000014a5 000014a5 000014a5 000014a5     ................
    18b8:	000014a5 000014a5 000014a5 000014a5     ................
    18c8:	000014a5 000014a5 000014a5 000014a5     ................
    18d8:	000014a5 000014a5 000014a5 000014a5     ................
    18e8:	000014a5 000014a5 000014a5 000014a5     ................
    18f8:	000014a5 000014a5 000014a5 000014a5     ................
    1908:	000014a5 000014a5 000014a5 000014a5     ................
    1918:	000014a5 000014a5 000014a5 000014a5     ................
    1928:	000014a5 000014a5 000014a5 000014a5     ................
    1938:	000014a5 000014a5 000014a5 000014a5     ................
    1948:	000014a5 000014a5 000014a5 000014a5     ................
    1958:	000014a5 000014a5 000014a5 000014a5     ................
    1968:	000014a5 000014a5 000014a5 000014a5     ................
    1978:	000014a5 000014a5 000014a5 000014a5     ................
    1988:	000014a5 000014a5 000014a5 000014a5     ................
    1998:	000014a5 000014a5 000014a5 000014a5     ................
    19a8:	000014a5 000014a5 000014a5 000014a5     ................
    19b8:	000014a5 000014a5 000014a5 000014a5     ................
    19c8:	000014a5 000014a5 000014a5 000014a5     ................
    19d8:	000014a5 000014a5 000014a5 000014a5     ................
    19e8:	000014a5 000014a5 000014a5 000014a5     ................
    19f8:	000014a5 000014a5 000014a5 000014a5     ................
    1a08:	000014a5 000014a5 000014a5 000014a5     ................
    1a18:	000014a5 000014a5 000014a5 000014a5     ................
    1a28:	000014a5 000014a5 000014a5 000014a5     ................
    1a38:	000014a5 000014a5 000014a5 000014a5     ................
    1a48:	000014a5 000014a5 000014a5 000014a5     ................
