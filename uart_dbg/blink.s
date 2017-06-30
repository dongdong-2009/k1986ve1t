
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d5 05 00 00 35 06 00 00 35 06 00 00     ... ....5...5...
	...
      2c:	35 06 00 00 00 00 00 00 00 00 00 00 35 06 00 00     5...........5...
      3c:	89 05 00 00 35 06 00 00 35 06 00 00 35 06 00 00     ....5...5...5...
      4c:	35 06 00 00 35 06 00 00 35 06 00 00 c9 05 00 00     5...5...5.......
      5c:	35 06 00 00 35 06 00 00 35 06 00 00 35 06 00 00     5...5...5...5...
      6c:	35 06 00 00 35 06 00 00 a1 05 00 00 35 06 00 00     5...5.......5...
      7c:	35 06 00 00 35 06 00 00 35 06 00 00 35 06 00 00     5...5...5...5...
      8c:	35 06 00 00 35 06 00 00 35 06 00 00 35 06 00 00     5...5...5...5...
      9c:	35 06 00 00 35 06 00 00 00 00 00 00 00 00 00 00     5...5...........
      ac:	35 06 00 00 35 06 00 00 35 06 00 00 35 06 00 00     5...5...5...5...
      bc:	35 06 00 00                                         5...

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
     1d8:	4a0c      	ldr	r2, [pc, #48]	; (20c <main+0x3c>)
     1da:	ca13      	ldmia	r2!, {r0, r1, r4}
     1dc:	c313      	stmia	r3!, {r0, r1, r4}
     1de:	8812      	ldrh	r2, [r2, #0]
     1e0:	801a      	strh	r2, [r3, #0]
     1e2:	f000 f9bf 	bl	564 <SystemInit>
     1e6:	4b0a      	ldr	r3, [pc, #40]	; (210 <main+0x40>)
     1e8:	4a0a      	ldr	r2, [pc, #40]	; (214 <main+0x44>)
     1ea:	601a      	str	r2, [r3, #0]
     1ec:	4b0a      	ldr	r3, [pc, #40]	; (218 <main+0x48>)
     1ee:	2200      	movs	r2, #0
     1f0:	601a      	str	r2, [r3, #0]
     1f2:	2300      	movs	r3, #0
     1f4:	617b      	str	r3, [r7, #20]
     1f6:	4b09      	ldr	r3, [pc, #36]	; (21c <main+0x4c>)
     1f8:	0018      	movs	r0, r3
     1fa:	f000 fc0d 	bl	a18 <xprintf>
     1fe:	23fa      	movs	r3, #250	; 0xfa
     200:	009b      	lsls	r3, r3, #2
     202:	0018      	movs	r0, r3
     204:	f7ff ffce 	bl	1a4 <sleep>
     208:	e7f5      	b.n	1f6 <main+0x26>
     20a:	46c0      	nop			; (mov r8, r8)
     20c:	00000fa0 	.word	0x00000fa0
     210:	20000010 	.word	0x20000010
     214:	000004c1 	.word	0x000004c1
     218:	20000004 	.word	0x20000004
     21c:	00000f98 	.word	0x00000f98

00000220 <PortConfig>:
     220:	b580      	push	{r7, lr}
     222:	af00      	add	r7, sp, #0
     224:	4b44      	ldr	r3, [pc, #272]	; (338 <PortConfig+0x118>)
     226:	4a44      	ldr	r2, [pc, #272]	; (338 <PortConfig+0x118>)
     228:	69d2      	ldr	r2, [r2, #28]
     22a:	2180      	movs	r1, #128	; 0x80
     22c:	0449      	lsls	r1, r1, #17
     22e:	430a      	orrs	r2, r1
     230:	61da      	str	r2, [r3, #28]
     232:	4b42      	ldr	r3, [pc, #264]	; (33c <PortConfig+0x11c>)
     234:	2200      	movs	r2, #0
     236:	609a      	str	r2, [r3, #8]
     238:	4b40      	ldr	r3, [pc, #256]	; (33c <PortConfig+0x11c>)
     23a:	2200      	movs	r2, #0
     23c:	601a      	str	r2, [r3, #0]
     23e:	4b3f      	ldr	r3, [pc, #252]	; (33c <PortConfig+0x11c>)
     240:	22ff      	movs	r2, #255	; 0xff
     242:	01d2      	lsls	r2, r2, #7
     244:	605a      	str	r2, [r3, #4]
     246:	4b3d      	ldr	r3, [pc, #244]	; (33c <PortConfig+0x11c>)
     248:	22ff      	movs	r2, #255	; 0xff
     24a:	01d2      	lsls	r2, r2, #7
     24c:	60da      	str	r2, [r3, #12]
     24e:	4b3b      	ldr	r3, [pc, #236]	; (33c <PortConfig+0x11c>)
     250:	4a3b      	ldr	r2, [pc, #236]	; (340 <PortConfig+0x120>)
     252:	619a      	str	r2, [r3, #24]
     254:	4b38      	ldr	r3, [pc, #224]	; (338 <PortConfig+0x118>)
     256:	4a38      	ldr	r2, [pc, #224]	; (338 <PortConfig+0x118>)
     258:	69d2      	ldr	r2, [r2, #28]
     25a:	2180      	movs	r1, #128	; 0x80
     25c:	0389      	lsls	r1, r1, #14
     25e:	430a      	orrs	r2, r1
     260:	61da      	str	r2, [r3, #28]
     262:	4b38      	ldr	r3, [pc, #224]	; (344 <PortConfig+0x124>)
     264:	4a37      	ldr	r2, [pc, #220]	; (344 <PortConfig+0x124>)
     266:	6892      	ldr	r2, [r2, #8]
     268:	4937      	ldr	r1, [pc, #220]	; (348 <PortConfig+0x128>)
     26a:	400a      	ands	r2, r1
     26c:	609a      	str	r2, [r3, #8]
     26e:	4b35      	ldr	r3, [pc, #212]	; (344 <PortConfig+0x124>)
     270:	4a34      	ldr	r2, [pc, #208]	; (344 <PortConfig+0x124>)
     272:	6892      	ldr	r2, [r2, #8]
     274:	4935      	ldr	r1, [pc, #212]	; (34c <PortConfig+0x12c>)
     276:	400a      	ands	r2, r1
     278:	609a      	str	r2, [r3, #8]
     27a:	4b32      	ldr	r3, [pc, #200]	; (344 <PortConfig+0x124>)
     27c:	4a31      	ldr	r2, [pc, #196]	; (344 <PortConfig+0x124>)
     27e:	6892      	ldr	r2, [r2, #8]
     280:	2180      	movs	r1, #128	; 0x80
     282:	0189      	lsls	r1, r1, #6
     284:	430a      	orrs	r2, r1
     286:	609a      	str	r2, [r3, #8]
     288:	4b2e      	ldr	r3, [pc, #184]	; (344 <PortConfig+0x124>)
     28a:	4a2e      	ldr	r2, [pc, #184]	; (344 <PortConfig+0x124>)
     28c:	6892      	ldr	r2, [r2, #8]
     28e:	2180      	movs	r1, #128	; 0x80
     290:	0209      	lsls	r1, r1, #8
     292:	430a      	orrs	r2, r1
     294:	609a      	str	r2, [r3, #8]
     296:	4b2b      	ldr	r3, [pc, #172]	; (344 <PortConfig+0x124>)
     298:	4a2a      	ldr	r2, [pc, #168]	; (344 <PortConfig+0x124>)
     29a:	6852      	ldr	r2, [r2, #4]
     29c:	2140      	movs	r1, #64	; 0x40
     29e:	430a      	orrs	r2, r1
     2a0:	605a      	str	r2, [r3, #4]
     2a2:	4b28      	ldr	r3, [pc, #160]	; (344 <PortConfig+0x124>)
     2a4:	4a27      	ldr	r2, [pc, #156]	; (344 <PortConfig+0x124>)
     2a6:	6852      	ldr	r2, [r2, #4]
     2a8:	2180      	movs	r1, #128	; 0x80
     2aa:	430a      	orrs	r2, r1
     2ac:	605a      	str	r2, [r3, #4]
     2ae:	4b25      	ldr	r3, [pc, #148]	; (344 <PortConfig+0x124>)
     2b0:	4a24      	ldr	r2, [pc, #144]	; (344 <PortConfig+0x124>)
     2b2:	68d2      	ldr	r2, [r2, #12]
     2b4:	2140      	movs	r1, #64	; 0x40
     2b6:	430a      	orrs	r2, r1
     2b8:	60da      	str	r2, [r3, #12]
     2ba:	4b22      	ldr	r3, [pc, #136]	; (344 <PortConfig+0x124>)
     2bc:	4a21      	ldr	r2, [pc, #132]	; (344 <PortConfig+0x124>)
     2be:	68d2      	ldr	r2, [r2, #12]
     2c0:	2180      	movs	r1, #128	; 0x80
     2c2:	430a      	orrs	r2, r1
     2c4:	60da      	str	r2, [r3, #12]
     2c6:	4b1f      	ldr	r3, [pc, #124]	; (344 <PortConfig+0x124>)
     2c8:	4a1e      	ldr	r2, [pc, #120]	; (344 <PortConfig+0x124>)
     2ca:	6992      	ldr	r2, [r2, #24]
     2cc:	21c0      	movs	r1, #192	; 0xc0
     2ce:	0189      	lsls	r1, r1, #6
     2d0:	430a      	orrs	r2, r1
     2d2:	619a      	str	r2, [r3, #24]
     2d4:	4b1b      	ldr	r3, [pc, #108]	; (344 <PortConfig+0x124>)
     2d6:	4a1b      	ldr	r2, [pc, #108]	; (344 <PortConfig+0x124>)
     2d8:	6992      	ldr	r2, [r2, #24]
     2da:	21c0      	movs	r1, #192	; 0xc0
     2dc:	0209      	lsls	r1, r1, #8
     2de:	430a      	orrs	r2, r1
     2e0:	619a      	str	r2, [r3, #24]
     2e2:	4b15      	ldr	r3, [pc, #84]	; (338 <PortConfig+0x118>)
     2e4:	4a14      	ldr	r2, [pc, #80]	; (338 <PortConfig+0x118>)
     2e6:	69d2      	ldr	r2, [r2, #28]
     2e8:	2180      	movs	r1, #128	; 0x80
     2ea:	0409      	lsls	r1, r1, #16
     2ec:	430a      	orrs	r2, r1
     2ee:	61da      	str	r2, [r3, #28]
     2f0:	4b17      	ldr	r3, [pc, #92]	; (350 <PortConfig+0x130>)
     2f2:	4a17      	ldr	r2, [pc, #92]	; (350 <PortConfig+0x130>)
     2f4:	6892      	ldr	r2, [r2, #8]
     2f6:	4917      	ldr	r1, [pc, #92]	; (354 <PortConfig+0x134>)
     2f8:	400a      	ands	r2, r1
     2fa:	609a      	str	r2, [r3, #8]
     2fc:	4b14      	ldr	r3, [pc, #80]	; (350 <PortConfig+0x130>)
     2fe:	4a14      	ldr	r2, [pc, #80]	; (350 <PortConfig+0x130>)
     300:	6892      	ldr	r2, [r2, #8]
     302:	21a0      	movs	r1, #160	; 0xa0
     304:	0049      	lsls	r1, r1, #1
     306:	430a      	orrs	r2, r1
     308:	609a      	str	r2, [r3, #8]
     30a:	4b11      	ldr	r3, [pc, #68]	; (350 <PortConfig+0x130>)
     30c:	4a10      	ldr	r2, [pc, #64]	; (350 <PortConfig+0x130>)
     30e:	68d2      	ldr	r2, [r2, #12]
     310:	2118      	movs	r1, #24
     312:	430a      	orrs	r2, r1
     314:	60da      	str	r2, [r3, #12]
     316:	4b0e      	ldr	r3, [pc, #56]	; (350 <PortConfig+0x130>)
     318:	4a0d      	ldr	r2, [pc, #52]	; (350 <PortConfig+0x130>)
     31a:	6992      	ldr	r2, [r2, #24]
     31c:	21f0      	movs	r1, #240	; 0xf0
     31e:	0089      	lsls	r1, r1, #2
     320:	430a      	orrs	r2, r1
     322:	619a      	str	r2, [r3, #24]
     324:	4b0a      	ldr	r3, [pc, #40]	; (350 <PortConfig+0x130>)
     326:	4a0a      	ldr	r2, [pc, #40]	; (350 <PortConfig+0x130>)
     328:	6812      	ldr	r2, [r2, #0]
     32a:	2118      	movs	r1, #24
     32c:	438a      	bics	r2, r1
     32e:	601a      	str	r2, [r3, #0]
     330:	46c0      	nop			; (mov r8, r8)
     332:	46bd      	mov	sp, r7
     334:	bd80      	pop	{r7, pc}
     336:	46c0      	nop			; (mov r8, r8)
     338:	40020000 	.word	0x40020000
     33c:	400c0000 	.word	0x400c0000
     340:	3fffc000 	.word	0x3fffc000
     344:	400a8000 	.word	0x400a8000
     348:	ffffcfff 	.word	0xffffcfff
     34c:	ffff3fff 	.word	0xffff3fff
     350:	400b8000 	.word	0x400b8000
     354:	fffffc3f 	.word	0xfffffc3f

00000358 <ClkConfig>:
     358:	b580      	push	{r7, lr}
     35a:	af00      	add	r7, sp, #0
     35c:	4b18      	ldr	r3, [pc, #96]	; (3c0 <ClkConfig+0x68>)
     35e:	4a18      	ldr	r2, [pc, #96]	; (3c0 <ClkConfig+0x68>)
     360:	6892      	ldr	r2, [r2, #8]
     362:	2101      	movs	r1, #1
     364:	430a      	orrs	r2, r1
     366:	609a      	str	r2, [r3, #8]
     368:	46c0      	nop			; (mov r8, r8)
     36a:	4b15      	ldr	r3, [pc, #84]	; (3c0 <ClkConfig+0x68>)
     36c:	681b      	ldr	r3, [r3, #0]
     36e:	2204      	movs	r2, #4
     370:	4013      	ands	r3, r2
     372:	d0fa      	beq.n	36a <ClkConfig+0x12>
     374:	4b12      	ldr	r3, [pc, #72]	; (3c0 <ClkConfig+0x68>)
     376:	4a12      	ldr	r2, [pc, #72]	; (3c0 <ClkConfig+0x68>)
     378:	68d2      	ldr	r2, [r2, #12]
     37a:	2102      	movs	r1, #2
     37c:	430a      	orrs	r2, r1
     37e:	60da      	str	r2, [r3, #12]
     380:	4b0f      	ldr	r3, [pc, #60]	; (3c0 <ClkConfig+0x68>)
     382:	4a10      	ldr	r2, [pc, #64]	; (3c4 <ClkConfig+0x6c>)
     384:	605a      	str	r2, [r3, #4]
     386:	46c0      	nop			; (mov r8, r8)
     388:	4b0d      	ldr	r3, [pc, #52]	; (3c0 <ClkConfig+0x68>)
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	2202      	movs	r2, #2
     38e:	4013      	ands	r3, r2
     390:	d0fa      	beq.n	388 <ClkConfig+0x30>
     392:	4b0d      	ldr	r3, [pc, #52]	; (3c8 <ClkConfig+0x70>)
     394:	4a0c      	ldr	r2, [pc, #48]	; (3c8 <ClkConfig+0x70>)
     396:	6812      	ldr	r2, [r2, #0]
     398:	2120      	movs	r1, #32
     39a:	430a      	orrs	r2, r1
     39c:	601a      	str	r2, [r3, #0]
     39e:	4b08      	ldr	r3, [pc, #32]	; (3c0 <ClkConfig+0x68>)
     3a0:	4a07      	ldr	r2, [pc, #28]	; (3c0 <ClkConfig+0x68>)
     3a2:	68d2      	ldr	r2, [r2, #12]
     3a4:	2180      	movs	r1, #128	; 0x80
     3a6:	0049      	lsls	r1, r1, #1
     3a8:	430a      	orrs	r2, r1
     3aa:	60da      	str	r2, [r3, #12]
     3ac:	4b04      	ldr	r3, [pc, #16]	; (3c0 <ClkConfig+0x68>)
     3ae:	4a04      	ldr	r2, [pc, #16]	; (3c0 <ClkConfig+0x68>)
     3b0:	68d2      	ldr	r2, [r2, #12]
     3b2:	2104      	movs	r1, #4
     3b4:	430a      	orrs	r2, r1
     3b6:	60da      	str	r2, [r3, #12]
     3b8:	46c0      	nop			; (mov r8, r8)
     3ba:	46bd      	mov	sp, r7
     3bc:	bd80      	pop	{r7, pc}
     3be:	46c0      	nop			; (mov r8, r8)
     3c0:	40020000 	.word	0x40020000
     3c4:	00000e04 	.word	0x00000e04
     3c8:	40018000 	.word	0x40018000

000003cc <TimerConfig>:
     3cc:	b580      	push	{r7, lr}
     3ce:	af00      	add	r7, sp, #0
     3d0:	4b35      	ldr	r3, [pc, #212]	; (4a8 <_stack_size+0xa8>)
     3d2:	4a35      	ldr	r2, [pc, #212]	; (4a8 <_stack_size+0xa8>)
     3d4:	69d2      	ldr	r2, [r2, #28]
     3d6:	2180      	movs	r1, #128	; 0x80
     3d8:	0309      	lsls	r1, r1, #12
     3da:	430a      	orrs	r2, r1
     3dc:	61da      	str	r2, [r3, #28]
     3de:	4b32      	ldr	r3, [pc, #200]	; (4a8 <_stack_size+0xa8>)
     3e0:	4a31      	ldr	r2, [pc, #196]	; (4a8 <_stack_size+0xa8>)
     3e2:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3e4:	2180      	movs	r1, #128	; 0x80
     3e6:	04c9      	lsls	r1, r1, #19
     3e8:	430a      	orrs	r2, r1
     3ea:	629a      	str	r2, [r3, #40]	; 0x28
     3ec:	4b2e      	ldr	r3, [pc, #184]	; (4a8 <_stack_size+0xa8>)
     3ee:	4a2e      	ldr	r2, [pc, #184]	; (4a8 <_stack_size+0xa8>)
     3f0:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3f2:	492e      	ldr	r1, [pc, #184]	; (4ac <_stack_size+0xac>)
     3f4:	400a      	ands	r2, r1
     3f6:	629a      	str	r2, [r3, #40]	; 0x28
     3f8:	4b2d      	ldr	r3, [pc, #180]	; (4b0 <_stack_size+0xb0>)
     3fa:	2200      	movs	r2, #0
     3fc:	601a      	str	r2, [r3, #0]
     3fe:	4b2c      	ldr	r3, [pc, #176]	; (4b0 <_stack_size+0xb0>)
     400:	220b      	movs	r2, #11
     402:	605a      	str	r2, [r3, #4]
     404:	4b2a      	ldr	r3, [pc, #168]	; (4b0 <_stack_size+0xb0>)
     406:	4a2b      	ldr	r2, [pc, #172]	; (4b4 <_stack_size+0xb4>)
     408:	609a      	str	r2, [r3, #8]
     40a:	4b29      	ldr	r3, [pc, #164]	; (4b0 <_stack_size+0xb0>)
     40c:	22fa      	movs	r2, #250	; 0xfa
     40e:	0052      	lsls	r2, r2, #1
     410:	611a      	str	r2, [r3, #16]
     412:	4b27      	ldr	r3, [pc, #156]	; (4b0 <_stack_size+0xb0>)
     414:	4a26      	ldr	r2, [pc, #152]	; (4b0 <_stack_size+0xb0>)
     416:	6a12      	ldr	r2, [r2, #32]
     418:	4927      	ldr	r1, [pc, #156]	; (4b8 <_stack_size+0xb8>)
     41a:	400a      	ands	r2, r1
     41c:	621a      	str	r2, [r3, #32]
     41e:	4b24      	ldr	r3, [pc, #144]	; (4b0 <_stack_size+0xb0>)
     420:	4a23      	ldr	r2, [pc, #140]	; (4b0 <_stack_size+0xb0>)
     422:	6a12      	ldr	r2, [r2, #32]
     424:	21e0      	movs	r1, #224	; 0xe0
     426:	0109      	lsls	r1, r1, #4
     428:	430a      	orrs	r2, r1
     42a:	621a      	str	r2, [r3, #32]
     42c:	4b20      	ldr	r3, [pc, #128]	; (4b0 <_stack_size+0xb0>)
     42e:	4a20      	ldr	r2, [pc, #128]	; (4b0 <_stack_size+0xb0>)
     430:	6b12      	ldr	r2, [r2, #48]	; 0x30
     432:	210f      	movs	r1, #15
     434:	438a      	bics	r2, r1
     436:	631a      	str	r2, [r3, #48]	; 0x30
     438:	4b1d      	ldr	r3, [pc, #116]	; (4b0 <_stack_size+0xb0>)
     43a:	4a1d      	ldr	r2, [pc, #116]	; (4b0 <_stack_size+0xb0>)
     43c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     43e:	210c      	movs	r1, #12
     440:	430a      	orrs	r2, r1
     442:	631a      	str	r2, [r3, #48]	; 0x30
     444:	4b1a      	ldr	r3, [pc, #104]	; (4b0 <_stack_size+0xb0>)
     446:	4a1a      	ldr	r2, [pc, #104]	; (4b0 <_stack_size+0xb0>)
     448:	6b12      	ldr	r2, [r2, #48]	; 0x30
     44a:	2101      	movs	r1, #1
     44c:	430a      	orrs	r2, r1
     44e:	631a      	str	r2, [r3, #48]	; 0x30
     450:	4b17      	ldr	r3, [pc, #92]	; (4b0 <_stack_size+0xb0>)
     452:	4a17      	ldr	r2, [pc, #92]	; (4b0 <_stack_size+0xb0>)
     454:	6b12      	ldr	r2, [r2, #48]	; 0x30
     456:	4919      	ldr	r1, [pc, #100]	; (4bc <_stack_size+0xbc>)
     458:	400a      	ands	r2, r1
     45a:	631a      	str	r2, [r3, #48]	; 0x30
     45c:	4b14      	ldr	r3, [pc, #80]	; (4b0 <_stack_size+0xb0>)
     45e:	4a14      	ldr	r2, [pc, #80]	; (4b0 <_stack_size+0xb0>)
     460:	6b12      	ldr	r2, [r2, #48]	; 0x30
     462:	21c0      	movs	r1, #192	; 0xc0
     464:	0109      	lsls	r1, r1, #4
     466:	430a      	orrs	r2, r1
     468:	631a      	str	r2, [r3, #48]	; 0x30
     46a:	4b11      	ldr	r3, [pc, #68]	; (4b0 <_stack_size+0xb0>)
     46c:	4a10      	ldr	r2, [pc, #64]	; (4b0 <_stack_size+0xb0>)
     46e:	6b12      	ldr	r2, [r2, #48]	; 0x30
     470:	2180      	movs	r1, #128	; 0x80
     472:	0049      	lsls	r1, r1, #1
     474:	430a      	orrs	r2, r1
     476:	631a      	str	r2, [r3, #48]	; 0x30
     478:	4b0d      	ldr	r3, [pc, #52]	; (4b0 <_stack_size+0xb0>)
     47a:	4a0d      	ldr	r2, [pc, #52]	; (4b0 <_stack_size+0xb0>)
     47c:	6c12      	ldr	r2, [r2, #64]	; 0x40
     47e:	21c8      	movs	r1, #200	; 0xc8
     480:	0209      	lsls	r1, r1, #8
     482:	430a      	orrs	r2, r1
     484:	641a      	str	r2, [r3, #64]	; 0x40
     486:	4b0a      	ldr	r3, [pc, #40]	; (4b0 <_stack_size+0xb0>)
     488:	4a09      	ldr	r2, [pc, #36]	; (4b0 <_stack_size+0xb0>)
     48a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     48c:	21f0      	movs	r1, #240	; 0xf0
     48e:	0149      	lsls	r1, r1, #5
     490:	430a      	orrs	r2, r1
     492:	659a      	str	r2, [r3, #88]	; 0x58
     494:	4b06      	ldr	r3, [pc, #24]	; (4b0 <_stack_size+0xb0>)
     496:	2201      	movs	r2, #1
     498:	60da      	str	r2, [r3, #12]
     49a:	200d      	movs	r0, #13
     49c:	f7ff fe10 	bl	c0 <NVIC_EnableIRQ>
     4a0:	46c0      	nop			; (mov r8, r8)
     4a2:	46bd      	mov	sp, r7
     4a4:	bd80      	pop	{r7, pc}
     4a6:	46c0      	nop			; (mov r8, r8)
     4a8:	40020000 	.word	0x40020000
     4ac:	ff00ffff 	.word	0xff00ffff
     4b0:	40098000 	.word	0x40098000
     4b4:	000003e7 	.word	0x000003e7
     4b8:	fffff1ff 	.word	0xfffff1ff
     4bc:	fffff0ff 	.word	0xfffff0ff

000004c0 <uart1_putch>:
     4c0:	b580      	push	{r7, lr}
     4c2:	b082      	sub	sp, #8
     4c4:	af00      	add	r7, sp, #0
     4c6:	0002      	movs	r2, r0
     4c8:	1dfb      	adds	r3, r7, #7
     4ca:	701a      	strb	r2, [r3, #0]
     4cc:	46c0      	nop			; (mov r8, r8)
     4ce:	4b06      	ldr	r3, [pc, #24]	; (4e8 <uart1_putch+0x28>)
     4d0:	699b      	ldr	r3, [r3, #24]
     4d2:	2220      	movs	r2, #32
     4d4:	4013      	ands	r3, r2
     4d6:	d1fa      	bne.n	4ce <uart1_putch+0xe>
     4d8:	4b03      	ldr	r3, [pc, #12]	; (4e8 <uart1_putch+0x28>)
     4da:	1dfa      	adds	r2, r7, #7
     4dc:	7812      	ldrb	r2, [r2, #0]
     4de:	601a      	str	r2, [r3, #0]
     4e0:	46c0      	nop			; (mov r8, r8)
     4e2:	46bd      	mov	sp, r7
     4e4:	b002      	add	sp, #8
     4e6:	bd80      	pop	{r7, pc}
     4e8:	40030000 	.word	0x40030000

000004ec <UartConfig>:
     4ec:	b580      	push	{r7, lr}
     4ee:	af00      	add	r7, sp, #0
     4f0:	4b19      	ldr	r3, [pc, #100]	; (558 <UartConfig+0x6c>)
     4f2:	4a19      	ldr	r2, [pc, #100]	; (558 <UartConfig+0x6c>)
     4f4:	69d2      	ldr	r2, [r2, #28]
     4f6:	2140      	movs	r1, #64	; 0x40
     4f8:	430a      	orrs	r2, r1
     4fa:	61da      	str	r2, [r3, #28]
     4fc:	4b16      	ldr	r3, [pc, #88]	; (558 <UartConfig+0x6c>)
     4fe:	4a16      	ldr	r2, [pc, #88]	; (558 <UartConfig+0x6c>)
     500:	6a92      	ldr	r2, [r2, #40]	; 0x28
     502:	2180      	movs	r1, #128	; 0x80
     504:	0449      	lsls	r1, r1, #17
     506:	430a      	orrs	r2, r1
     508:	629a      	str	r2, [r3, #40]	; 0x28
     50a:	4b14      	ldr	r3, [pc, #80]	; (55c <UartConfig+0x70>)
     50c:	2241      	movs	r2, #65	; 0x41
     50e:	625a      	str	r2, [r3, #36]	; 0x24
     510:	4b12      	ldr	r3, [pc, #72]	; (55c <UartConfig+0x70>)
     512:	2207      	movs	r2, #7
     514:	629a      	str	r2, [r3, #40]	; 0x28
     516:	4b11      	ldr	r3, [pc, #68]	; (55c <UartConfig+0x70>)
     518:	4a10      	ldr	r2, [pc, #64]	; (55c <UartConfig+0x70>)
     51a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     51c:	213f      	movs	r1, #63	; 0x3f
     51e:	438a      	bics	r2, r1
     520:	635a      	str	r2, [r3, #52]	; 0x34
     522:	4b0e      	ldr	r3, [pc, #56]	; (55c <UartConfig+0x70>)
     524:	4a0d      	ldr	r2, [pc, #52]	; (55c <UartConfig+0x70>)
     526:	6b52      	ldr	r2, [r2, #52]	; 0x34
     528:	2124      	movs	r1, #36	; 0x24
     52a:	430a      	orrs	r2, r1
     52c:	635a      	str	r2, [r3, #52]	; 0x34
     52e:	4b0b      	ldr	r3, [pc, #44]	; (55c <UartConfig+0x70>)
     530:	4a0a      	ldr	r2, [pc, #40]	; (55c <UartConfig+0x70>)
     532:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     534:	2110      	movs	r1, #16
     536:	430a      	orrs	r2, r1
     538:	62da      	str	r2, [r3, #44]	; 0x2c
     53a:	4b08      	ldr	r3, [pc, #32]	; (55c <UartConfig+0x70>)
     53c:	4a07      	ldr	r2, [pc, #28]	; (55c <UartConfig+0x70>)
     53e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     540:	2160      	movs	r1, #96	; 0x60
     542:	430a      	orrs	r2, r1
     544:	62da      	str	r2, [r3, #44]	; 0x2c
     546:	4b05      	ldr	r3, [pc, #20]	; (55c <UartConfig+0x70>)
     548:	4a04      	ldr	r2, [pc, #16]	; (55c <UartConfig+0x70>)
     54a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     54c:	4904      	ldr	r1, [pc, #16]	; (560 <UartConfig+0x74>)
     54e:	430a      	orrs	r2, r1
     550:	631a      	str	r2, [r3, #48]	; 0x30
     552:	46c0      	nop			; (mov r8, r8)
     554:	46bd      	mov	sp, r7
     556:	bd80      	pop	{r7, pc}
     558:	40020000 	.word	0x40020000
     55c:	40030000 	.word	0x40030000
     560:	00000301 	.word	0x00000301

00000564 <SystemInit>:
     564:	b580      	push	{r7, lr}
     566:	af00      	add	r7, sp, #0
     568:	f7ff fef6 	bl	358 <ClkConfig>
     56c:	f7ff fe58 	bl	220 <PortConfig>
     570:	f7ff ffbc 	bl	4ec <UartConfig>
     574:	4b03      	ldr	r3, [pc, #12]	; (584 <SystemInit+0x20>)
     576:	0018      	movs	r0, r3
     578:	f7ff fdee 	bl	158 <SysTick_Config>
     57c:	46c0      	nop			; (mov r8, r8)
     57e:	46bd      	mov	sp, r7
     580:	bd80      	pop	{r7, pc}
     582:	46c0      	nop			; (mov r8, r8)
     584:	0001d4c0 	.word	0x0001d4c0

00000588 <SysTick_Handler>:
     588:	b580      	push	{r7, lr}
     58a:	af00      	add	r7, sp, #0
     58c:	4b03      	ldr	r3, [pc, #12]	; (59c <SysTick_Handler+0x14>)
     58e:	681b      	ldr	r3, [r3, #0]
     590:	1c5a      	adds	r2, r3, #1
     592:	4b02      	ldr	r3, [pc, #8]	; (59c <SysTick_Handler+0x14>)
     594:	601a      	str	r2, [r3, #0]
     596:	46c0      	nop			; (mov r8, r8)
     598:	46bd      	mov	sp, r7
     59a:	bd80      	pop	{r7, pc}
     59c:	2000000c 	.word	0x2000000c

000005a0 <TIMER4_Handler>:
     5a0:	b580      	push	{r7, lr}
     5a2:	af00      	add	r7, sp, #0
     5a4:	4b05      	ldr	r3, [pc, #20]	; (5bc <TIMER4_Handler+0x1c>)
     5a6:	2200      	movs	r2, #0
     5a8:	655a      	str	r2, [r3, #84]	; 0x54
     5aa:	4b05      	ldr	r3, [pc, #20]	; (5c0 <TIMER4_Handler+0x20>)
     5ac:	4a04      	ldr	r2, [pc, #16]	; (5c0 <TIMER4_Handler+0x20>)
     5ae:	6812      	ldr	r2, [r2, #0]
     5b0:	4904      	ldr	r1, [pc, #16]	; (5c4 <TIMER4_Handler+0x24>)
     5b2:	404a      	eors	r2, r1
     5b4:	601a      	str	r2, [r3, #0]
     5b6:	46c0      	nop			; (mov r8, r8)
     5b8:	46bd      	mov	sp, r7
     5ba:	bd80      	pop	{r7, pc}
     5bc:	40098000 	.word	0x40098000
     5c0:	400c0000 	.word	0x400c0000
     5c4:	0000ffff 	.word	0x0000ffff

000005c8 <UART1_Handler>:
     5c8:	b580      	push	{r7, lr}
     5ca:	af00      	add	r7, sp, #0
     5cc:	46c0      	nop			; (mov r8, r8)
     5ce:	46bd      	mov	sp, r7
     5d0:	bd80      	pop	{r7, pc}
     5d2:	46c0      	nop			; (mov r8, r8)

000005d4 <handler_reset>:
     5d4:	b580      	push	{r7, lr}
     5d6:	b082      	sub	sp, #8
     5d8:	af00      	add	r7, sp, #0
     5da:	4b11      	ldr	r3, [pc, #68]	; (620 <handler_reset+0x4c>)
     5dc:	607b      	str	r3, [r7, #4]
     5de:	4b11      	ldr	r3, [pc, #68]	; (624 <handler_reset+0x50>)
     5e0:	603b      	str	r3, [r7, #0]
     5e2:	e007      	b.n	5f4 <handler_reset+0x20>
     5e4:	683b      	ldr	r3, [r7, #0]
     5e6:	1d1a      	adds	r2, r3, #4
     5e8:	603a      	str	r2, [r7, #0]
     5ea:	687a      	ldr	r2, [r7, #4]
     5ec:	1d11      	adds	r1, r2, #4
     5ee:	6079      	str	r1, [r7, #4]
     5f0:	6812      	ldr	r2, [r2, #0]
     5f2:	601a      	str	r2, [r3, #0]
     5f4:	683a      	ldr	r2, [r7, #0]
     5f6:	4b0c      	ldr	r3, [pc, #48]	; (628 <handler_reset+0x54>)
     5f8:	429a      	cmp	r2, r3
     5fa:	d3f3      	bcc.n	5e4 <handler_reset+0x10>
     5fc:	4b0b      	ldr	r3, [pc, #44]	; (62c <handler_reset+0x58>)
     5fe:	603b      	str	r3, [r7, #0]
     600:	e004      	b.n	60c <handler_reset+0x38>
     602:	683b      	ldr	r3, [r7, #0]
     604:	1d1a      	adds	r2, r3, #4
     606:	603a      	str	r2, [r7, #0]
     608:	2200      	movs	r2, #0
     60a:	601a      	str	r2, [r3, #0]
     60c:	683a      	ldr	r2, [r7, #0]
     60e:	4b08      	ldr	r3, [pc, #32]	; (630 <handler_reset+0x5c>)
     610:	429a      	cmp	r2, r3
     612:	d3f6      	bcc.n	602 <handler_reset+0x2e>
     614:	f7ff fddc 	bl	1d0 <main>
     618:	46c0      	nop			; (mov r8, r8)
     61a:	46bd      	mov	sp, r7
     61c:	b002      	add	sp, #8
     61e:	bd80      	pop	{r7, pc}
     620:	0000102c 	.word	0x0000102c
     624:	20000000 	.word	0x20000000
     628:	20000004 	.word	0x20000004
     62c:	20000004 	.word	0x20000004
     630:	2000001c 	.word	0x2000001c

00000634 <default_handler>:
     634:	b580      	push	{r7, lr}
     636:	af00      	add	r7, sp, #0
     638:	e7fe      	b.n	638 <default_handler+0x4>
     63a:	46c0      	nop			; (mov r8, r8)

0000063c <xputc>:
     63c:	b580      	push	{r7, lr}
     63e:	b082      	sub	sp, #8
     640:	af00      	add	r7, sp, #0
     642:	0002      	movs	r2, r0
     644:	1dfb      	adds	r3, r7, #7
     646:	701a      	strb	r2, [r3, #0]
     648:	1dfb      	adds	r3, r7, #7
     64a:	781b      	ldrb	r3, [r3, #0]
     64c:	2b0a      	cmp	r3, #10
     64e:	d102      	bne.n	656 <xputc+0x1a>
     650:	200d      	movs	r0, #13
     652:	f7ff fff3 	bl	63c <xputc>
     656:	4b0d      	ldr	r3, [pc, #52]	; (68c <xputc+0x50>)
     658:	681b      	ldr	r3, [r3, #0]
     65a:	2b00      	cmp	r3, #0
     65c:	d008      	beq.n	670 <xputc+0x34>
     65e:	4b0b      	ldr	r3, [pc, #44]	; (68c <xputc+0x50>)
     660:	681b      	ldr	r3, [r3, #0]
     662:	1c59      	adds	r1, r3, #1
     664:	4a09      	ldr	r2, [pc, #36]	; (68c <xputc+0x50>)
     666:	6011      	str	r1, [r2, #0]
     668:	1dfa      	adds	r2, r7, #7
     66a:	7812      	ldrb	r2, [r2, #0]
     66c:	701a      	strb	r2, [r3, #0]
     66e:	e009      	b.n	684 <xputc+0x48>
     670:	4b07      	ldr	r3, [pc, #28]	; (690 <xputc+0x54>)
     672:	681b      	ldr	r3, [r3, #0]
     674:	2b00      	cmp	r3, #0
     676:	d005      	beq.n	684 <xputc+0x48>
     678:	4b05      	ldr	r3, [pc, #20]	; (690 <xputc+0x54>)
     67a:	681b      	ldr	r3, [r3, #0]
     67c:	1dfa      	adds	r2, r7, #7
     67e:	7812      	ldrb	r2, [r2, #0]
     680:	0010      	movs	r0, r2
     682:	4798      	blx	r3
     684:	46bd      	mov	sp, r7
     686:	b002      	add	sp, #8
     688:	bd80      	pop	{r7, pc}
     68a:	46c0      	nop			; (mov r8, r8)
     68c:	20000014 	.word	0x20000014
     690:	20000010 	.word	0x20000010

00000694 <xputs>:
     694:	b580      	push	{r7, lr}
     696:	b082      	sub	sp, #8
     698:	af00      	add	r7, sp, #0
     69a:	6078      	str	r0, [r7, #4]
     69c:	e006      	b.n	6ac <xputs+0x18>
     69e:	687b      	ldr	r3, [r7, #4]
     6a0:	1c5a      	adds	r2, r3, #1
     6a2:	607a      	str	r2, [r7, #4]
     6a4:	781b      	ldrb	r3, [r3, #0]
     6a6:	0018      	movs	r0, r3
     6a8:	f7ff ffc8 	bl	63c <xputc>
     6ac:	687b      	ldr	r3, [r7, #4]
     6ae:	781b      	ldrb	r3, [r3, #0]
     6b0:	2b00      	cmp	r3, #0
     6b2:	d1f4      	bne.n	69e <xputs+0xa>
     6b4:	46c0      	nop			; (mov r8, r8)
     6b6:	46bd      	mov	sp, r7
     6b8:	b002      	add	sp, #8
     6ba:	bd80      	pop	{r7, pc}

000006bc <xfputs>:
     6bc:	b580      	push	{r7, lr}
     6be:	b084      	sub	sp, #16
     6c0:	af00      	add	r7, sp, #0
     6c2:	6078      	str	r0, [r7, #4]
     6c4:	6039      	str	r1, [r7, #0]
     6c6:	4b0c      	ldr	r3, [pc, #48]	; (6f8 <xfputs+0x3c>)
     6c8:	681b      	ldr	r3, [r3, #0]
     6ca:	60fb      	str	r3, [r7, #12]
     6cc:	4b0a      	ldr	r3, [pc, #40]	; (6f8 <xfputs+0x3c>)
     6ce:	687a      	ldr	r2, [r7, #4]
     6d0:	601a      	str	r2, [r3, #0]
     6d2:	e006      	b.n	6e2 <xfputs+0x26>
     6d4:	683b      	ldr	r3, [r7, #0]
     6d6:	1c5a      	adds	r2, r3, #1
     6d8:	603a      	str	r2, [r7, #0]
     6da:	781b      	ldrb	r3, [r3, #0]
     6dc:	0018      	movs	r0, r3
     6de:	f7ff ffad 	bl	63c <xputc>
     6e2:	683b      	ldr	r3, [r7, #0]
     6e4:	781b      	ldrb	r3, [r3, #0]
     6e6:	2b00      	cmp	r3, #0
     6e8:	d1f4      	bne.n	6d4 <xfputs+0x18>
     6ea:	4b03      	ldr	r3, [pc, #12]	; (6f8 <xfputs+0x3c>)
     6ec:	68fa      	ldr	r2, [r7, #12]
     6ee:	601a      	str	r2, [r3, #0]
     6f0:	46c0      	nop			; (mov r8, r8)
     6f2:	46bd      	mov	sp, r7
     6f4:	b004      	add	sp, #16
     6f6:	bd80      	pop	{r7, pc}
     6f8:	20000010 	.word	0x20000010

000006fc <xvprintf>:
     6fc:	b580      	push	{r7, lr}
     6fe:	b08e      	sub	sp, #56	; 0x38
     700:	af00      	add	r7, sp, #0
     702:	6078      	str	r0, [r7, #4]
     704:	6039      	str	r1, [r7, #0]
     706:	687b      	ldr	r3, [r7, #4]
     708:	1c5a      	adds	r2, r3, #1
     70a:	607a      	str	r2, [r7, #4]
     70c:	221f      	movs	r2, #31
     70e:	18ba      	adds	r2, r7, r2
     710:	781b      	ldrb	r3, [r3, #0]
     712:	7013      	strb	r3, [r2, #0]
     714:	231f      	movs	r3, #31
     716:	18fb      	adds	r3, r7, r3
     718:	781b      	ldrb	r3, [r3, #0]
     71a:	2b00      	cmp	r3, #0
     71c:	d100      	bne.n	720 <xvprintf+0x24>
     71e:	e172      	b.n	a06 <xvprintf+0x30a>
     720:	231f      	movs	r3, #31
     722:	18fb      	adds	r3, r7, r3
     724:	781b      	ldrb	r3, [r3, #0]
     726:	2b25      	cmp	r3, #37	; 0x25
     728:	d006      	beq.n	738 <xvprintf+0x3c>
     72a:	231f      	movs	r3, #31
     72c:	18fb      	adds	r3, r7, r3
     72e:	781b      	ldrb	r3, [r3, #0]
     730:	0018      	movs	r0, r3
     732:	f7ff ff83 	bl	63c <xputc>
     736:	e165      	b.n	a04 <xvprintf+0x308>
     738:	2300      	movs	r3, #0
     73a:	627b      	str	r3, [r7, #36]	; 0x24
     73c:	687b      	ldr	r3, [r7, #4]
     73e:	1c5a      	adds	r2, r3, #1
     740:	607a      	str	r2, [r7, #4]
     742:	221f      	movs	r2, #31
     744:	18ba      	adds	r2, r7, r2
     746:	781b      	ldrb	r3, [r3, #0]
     748:	7013      	strb	r3, [r2, #0]
     74a:	231f      	movs	r3, #31
     74c:	18fb      	adds	r3, r7, r3
     74e:	781b      	ldrb	r3, [r3, #0]
     750:	2b30      	cmp	r3, #48	; 0x30
     752:	d109      	bne.n	768 <xvprintf+0x6c>
     754:	2301      	movs	r3, #1
     756:	627b      	str	r3, [r7, #36]	; 0x24
     758:	687b      	ldr	r3, [r7, #4]
     75a:	1c5a      	adds	r2, r3, #1
     75c:	607a      	str	r2, [r7, #4]
     75e:	221f      	movs	r2, #31
     760:	18ba      	adds	r2, r7, r2
     762:	781b      	ldrb	r3, [r3, #0]
     764:	7013      	strb	r3, [r2, #0]
     766:	e00d      	b.n	784 <xvprintf+0x88>
     768:	231f      	movs	r3, #31
     76a:	18fb      	adds	r3, r7, r3
     76c:	781b      	ldrb	r3, [r3, #0]
     76e:	2b2d      	cmp	r3, #45	; 0x2d
     770:	d108      	bne.n	784 <xvprintf+0x88>
     772:	2302      	movs	r3, #2
     774:	627b      	str	r3, [r7, #36]	; 0x24
     776:	687b      	ldr	r3, [r7, #4]
     778:	1c5a      	adds	r2, r3, #1
     77a:	607a      	str	r2, [r7, #4]
     77c:	221f      	movs	r2, #31
     77e:	18ba      	adds	r2, r7, r2
     780:	781b      	ldrb	r3, [r3, #0]
     782:	7013      	strb	r3, [r2, #0]
     784:	2300      	movs	r3, #0
     786:	62bb      	str	r3, [r7, #40]	; 0x28
     788:	e012      	b.n	7b0 <xvprintf+0xb4>
     78a:	6aba      	ldr	r2, [r7, #40]	; 0x28
     78c:	0013      	movs	r3, r2
     78e:	009b      	lsls	r3, r3, #2
     790:	189b      	adds	r3, r3, r2
     792:	005b      	lsls	r3, r3, #1
     794:	001a      	movs	r2, r3
     796:	231f      	movs	r3, #31
     798:	18fb      	adds	r3, r7, r3
     79a:	781b      	ldrb	r3, [r3, #0]
     79c:	18d3      	adds	r3, r2, r3
     79e:	3b30      	subs	r3, #48	; 0x30
     7a0:	62bb      	str	r3, [r7, #40]	; 0x28
     7a2:	687b      	ldr	r3, [r7, #4]
     7a4:	1c5a      	adds	r2, r3, #1
     7a6:	607a      	str	r2, [r7, #4]
     7a8:	221f      	movs	r2, #31
     7aa:	18ba      	adds	r2, r7, r2
     7ac:	781b      	ldrb	r3, [r3, #0]
     7ae:	7013      	strb	r3, [r2, #0]
     7b0:	231f      	movs	r3, #31
     7b2:	18fb      	adds	r3, r7, r3
     7b4:	781b      	ldrb	r3, [r3, #0]
     7b6:	2b2f      	cmp	r3, #47	; 0x2f
     7b8:	d904      	bls.n	7c4 <xvprintf+0xc8>
     7ba:	231f      	movs	r3, #31
     7bc:	18fb      	adds	r3, r7, r3
     7be:	781b      	ldrb	r3, [r3, #0]
     7c0:	2b39      	cmp	r3, #57	; 0x39
     7c2:	d9e2      	bls.n	78a <xvprintf+0x8e>
     7c4:	231f      	movs	r3, #31
     7c6:	18fb      	adds	r3, r7, r3
     7c8:	781b      	ldrb	r3, [r3, #0]
     7ca:	2b6c      	cmp	r3, #108	; 0x6c
     7cc:	d004      	beq.n	7d8 <xvprintf+0xdc>
     7ce:	231f      	movs	r3, #31
     7d0:	18fb      	adds	r3, r7, r3
     7d2:	781b      	ldrb	r3, [r3, #0]
     7d4:	2b4c      	cmp	r3, #76	; 0x4c
     7d6:	d10a      	bne.n	7ee <xvprintf+0xf2>
     7d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     7da:	2204      	movs	r2, #4
     7dc:	4313      	orrs	r3, r2
     7de:	627b      	str	r3, [r7, #36]	; 0x24
     7e0:	687b      	ldr	r3, [r7, #4]
     7e2:	1c5a      	adds	r2, r3, #1
     7e4:	607a      	str	r2, [r7, #4]
     7e6:	221f      	movs	r2, #31
     7e8:	18ba      	adds	r2, r7, r2
     7ea:	781b      	ldrb	r3, [r3, #0]
     7ec:	7013      	strb	r3, [r2, #0]
     7ee:	231f      	movs	r3, #31
     7f0:	18fb      	adds	r3, r7, r3
     7f2:	781b      	ldrb	r3, [r3, #0]
     7f4:	2b00      	cmp	r3, #0
     7f6:	d100      	bne.n	7fa <xvprintf+0xfe>
     7f8:	e107      	b.n	a0a <xvprintf+0x30e>
     7fa:	231e      	movs	r3, #30
     7fc:	18fb      	adds	r3, r7, r3
     7fe:	221f      	movs	r2, #31
     800:	18ba      	adds	r2, r7, r2
     802:	7812      	ldrb	r2, [r2, #0]
     804:	701a      	strb	r2, [r3, #0]
     806:	231e      	movs	r3, #30
     808:	18fb      	adds	r3, r7, r3
     80a:	781b      	ldrb	r3, [r3, #0]
     80c:	2b60      	cmp	r3, #96	; 0x60
     80e:	d906      	bls.n	81e <xvprintf+0x122>
     810:	231e      	movs	r3, #30
     812:	18fb      	adds	r3, r7, r3
     814:	221e      	movs	r2, #30
     816:	18ba      	adds	r2, r7, r2
     818:	7812      	ldrb	r2, [r2, #0]
     81a:	3a20      	subs	r2, #32
     81c:	701a      	strb	r2, [r3, #0]
     81e:	231e      	movs	r3, #30
     820:	18fb      	adds	r3, r7, r3
     822:	781b      	ldrb	r3, [r3, #0]
     824:	3b42      	subs	r3, #66	; 0x42
     826:	2b16      	cmp	r3, #22
     828:	d847      	bhi.n	8ba <xvprintf+0x1be>
     82a:	009a      	lsls	r2, r3, #2
     82c:	4b79      	ldr	r3, [pc, #484]	; (a14 <xvprintf+0x318>)
     82e:	18d3      	adds	r3, r2, r3
     830:	681b      	ldr	r3, [r3, #0]
     832:	469f      	mov	pc, r3
     834:	683b      	ldr	r3, [r7, #0]
     836:	1d1a      	adds	r2, r3, #4
     838:	603a      	str	r2, [r7, #0]
     83a:	681b      	ldr	r3, [r3, #0]
     83c:	61bb      	str	r3, [r7, #24]
     83e:	2300      	movs	r3, #0
     840:	62fb      	str	r3, [r7, #44]	; 0x2c
     842:	e002      	b.n	84a <xvprintf+0x14e>
     844:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     846:	3301      	adds	r3, #1
     848:	62fb      	str	r3, [r7, #44]	; 0x2c
     84a:	69ba      	ldr	r2, [r7, #24]
     84c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     84e:	18d3      	adds	r3, r2, r3
     850:	781b      	ldrb	r3, [r3, #0]
     852:	2b00      	cmp	r3, #0
     854:	d1f6      	bne.n	844 <xvprintf+0x148>
     856:	e002      	b.n	85e <xvprintf+0x162>
     858:	2020      	movs	r0, #32
     85a:	f7ff feef 	bl	63c <xputc>
     85e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     860:	2202      	movs	r2, #2
     862:	4013      	ands	r3, r2
     864:	d105      	bne.n	872 <xvprintf+0x176>
     866:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     868:	1c5a      	adds	r2, r3, #1
     86a:	62fa      	str	r2, [r7, #44]	; 0x2c
     86c:	6aba      	ldr	r2, [r7, #40]	; 0x28
     86e:	4293      	cmp	r3, r2
     870:	d3f2      	bcc.n	858 <xvprintf+0x15c>
     872:	69bb      	ldr	r3, [r7, #24]
     874:	0018      	movs	r0, r3
     876:	f7ff ff0d 	bl	694 <xputs>
     87a:	e002      	b.n	882 <xvprintf+0x186>
     87c:	2020      	movs	r0, #32
     87e:	f7ff fedd 	bl	63c <xputc>
     882:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     884:	1c5a      	adds	r2, r3, #1
     886:	62fa      	str	r2, [r7, #44]	; 0x2c
     888:	6aba      	ldr	r2, [r7, #40]	; 0x28
     88a:	4293      	cmp	r3, r2
     88c:	d3f6      	bcc.n	87c <xvprintf+0x180>
     88e:	e0b9      	b.n	a04 <xvprintf+0x308>
     890:	683b      	ldr	r3, [r7, #0]
     892:	1d1a      	adds	r2, r3, #4
     894:	603a      	str	r2, [r7, #0]
     896:	681b      	ldr	r3, [r3, #0]
     898:	b2db      	uxtb	r3, r3
     89a:	0018      	movs	r0, r3
     89c:	f7ff fece 	bl	63c <xputc>
     8a0:	e0b0      	b.n	a04 <xvprintf+0x308>
     8a2:	2302      	movs	r3, #2
     8a4:	637b      	str	r3, [r7, #52]	; 0x34
     8a6:	e00f      	b.n	8c8 <xvprintf+0x1cc>
     8a8:	2308      	movs	r3, #8
     8aa:	637b      	str	r3, [r7, #52]	; 0x34
     8ac:	e00c      	b.n	8c8 <xvprintf+0x1cc>
     8ae:	230a      	movs	r3, #10
     8b0:	637b      	str	r3, [r7, #52]	; 0x34
     8b2:	e009      	b.n	8c8 <xvprintf+0x1cc>
     8b4:	2310      	movs	r3, #16
     8b6:	637b      	str	r3, [r7, #52]	; 0x34
     8b8:	e006      	b.n	8c8 <xvprintf+0x1cc>
     8ba:	231f      	movs	r3, #31
     8bc:	18fb      	adds	r3, r7, r3
     8be:	781b      	ldrb	r3, [r3, #0]
     8c0:	0018      	movs	r0, r3
     8c2:	f7ff febb 	bl	63c <xputc>
     8c6:	e09d      	b.n	a04 <xvprintf+0x308>
     8c8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8ca:	2204      	movs	r2, #4
     8cc:	4013      	ands	r3, r2
     8ce:	d004      	beq.n	8da <xvprintf+0x1de>
     8d0:	683b      	ldr	r3, [r7, #0]
     8d2:	1d1a      	adds	r2, r3, #4
     8d4:	603a      	str	r2, [r7, #0]
     8d6:	681b      	ldr	r3, [r3, #0]
     8d8:	e00d      	b.n	8f6 <xvprintf+0x1fa>
     8da:	231e      	movs	r3, #30
     8dc:	18fb      	adds	r3, r7, r3
     8de:	781b      	ldrb	r3, [r3, #0]
     8e0:	2b44      	cmp	r3, #68	; 0x44
     8e2:	d104      	bne.n	8ee <xvprintf+0x1f2>
     8e4:	683b      	ldr	r3, [r7, #0]
     8e6:	1d1a      	adds	r2, r3, #4
     8e8:	603a      	str	r2, [r7, #0]
     8ea:	681b      	ldr	r3, [r3, #0]
     8ec:	e003      	b.n	8f6 <xvprintf+0x1fa>
     8ee:	683b      	ldr	r3, [r7, #0]
     8f0:	1d1a      	adds	r2, r3, #4
     8f2:	603a      	str	r2, [r7, #0]
     8f4:	681b      	ldr	r3, [r3, #0]
     8f6:	623b      	str	r3, [r7, #32]
     8f8:	231e      	movs	r3, #30
     8fa:	18fb      	adds	r3, r7, r3
     8fc:	781b      	ldrb	r3, [r3, #0]
     8fe:	2b44      	cmp	r3, #68	; 0x44
     900:	d109      	bne.n	916 <xvprintf+0x21a>
     902:	6a3b      	ldr	r3, [r7, #32]
     904:	2b00      	cmp	r3, #0
     906:	da06      	bge.n	916 <xvprintf+0x21a>
     908:	6a3b      	ldr	r3, [r7, #32]
     90a:	425b      	negs	r3, r3
     90c:	623b      	str	r3, [r7, #32]
     90e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     910:	2208      	movs	r2, #8
     912:	4313      	orrs	r3, r2
     914:	627b      	str	r3, [r7, #36]	; 0x24
     916:	2300      	movs	r3, #0
     918:	633b      	str	r3, [r7, #48]	; 0x30
     91a:	6a3b      	ldr	r3, [r7, #32]
     91c:	6b79      	ldr	r1, [r7, #52]	; 0x34
     91e:	0018      	movs	r0, r3
     920:	f000 fb34 	bl	f8c <__aeabi_uidivmod>
     924:	000b      	movs	r3, r1
     926:	001a      	movs	r2, r3
     928:	231e      	movs	r3, #30
     92a:	18fb      	adds	r3, r7, r3
     92c:	701a      	strb	r2, [r3, #0]
     92e:	6b79      	ldr	r1, [r7, #52]	; 0x34
     930:	6a38      	ldr	r0, [r7, #32]
     932:	f000 faa5 	bl	e80 <__aeabi_uidiv>
     936:	0003      	movs	r3, r0
     938:	623b      	str	r3, [r7, #32]
     93a:	231e      	movs	r3, #30
     93c:	18fb      	adds	r3, r7, r3
     93e:	781b      	ldrb	r3, [r3, #0]
     940:	2b09      	cmp	r3, #9
     942:	d90e      	bls.n	962 <xvprintf+0x266>
     944:	231f      	movs	r3, #31
     946:	18fb      	adds	r3, r7, r3
     948:	781b      	ldrb	r3, [r3, #0]
     94a:	2b78      	cmp	r3, #120	; 0x78
     94c:	d101      	bne.n	952 <xvprintf+0x256>
     94e:	2327      	movs	r3, #39	; 0x27
     950:	e000      	b.n	954 <xvprintf+0x258>
     952:	2307      	movs	r3, #7
     954:	221e      	movs	r2, #30
     956:	18ba      	adds	r2, r7, r2
     958:	211e      	movs	r1, #30
     95a:	1879      	adds	r1, r7, r1
     95c:	7809      	ldrb	r1, [r1, #0]
     95e:	185b      	adds	r3, r3, r1
     960:	7013      	strb	r3, [r2, #0]
     962:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     964:	1c5a      	adds	r2, r3, #1
     966:	633a      	str	r2, [r7, #48]	; 0x30
     968:	221e      	movs	r2, #30
     96a:	18ba      	adds	r2, r7, r2
     96c:	7812      	ldrb	r2, [r2, #0]
     96e:	3230      	adds	r2, #48	; 0x30
     970:	b2d1      	uxtb	r1, r2
     972:	2208      	movs	r2, #8
     974:	18ba      	adds	r2, r7, r2
     976:	54d1      	strb	r1, [r2, r3]
     978:	6a3b      	ldr	r3, [r7, #32]
     97a:	2b00      	cmp	r3, #0
     97c:	d002      	beq.n	984 <xvprintf+0x288>
     97e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     980:	2b0f      	cmp	r3, #15
     982:	d9ca      	bls.n	91a <xvprintf+0x21e>
     984:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     986:	2208      	movs	r2, #8
     988:	4013      	ands	r3, r2
     98a:	d006      	beq.n	99a <xvprintf+0x29e>
     98c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     98e:	1c5a      	adds	r2, r3, #1
     990:	633a      	str	r2, [r7, #48]	; 0x30
     992:	2208      	movs	r2, #8
     994:	18ba      	adds	r2, r7, r2
     996:	212d      	movs	r1, #45	; 0x2d
     998:	54d1      	strb	r1, [r2, r3]
     99a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     99c:	62fb      	str	r3, [r7, #44]	; 0x2c
     99e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     9a0:	2201      	movs	r2, #1
     9a2:	4013      	ands	r3, r2
     9a4:	d001      	beq.n	9aa <xvprintf+0x2ae>
     9a6:	2230      	movs	r2, #48	; 0x30
     9a8:	e000      	b.n	9ac <xvprintf+0x2b0>
     9aa:	2220      	movs	r2, #32
     9ac:	231e      	movs	r3, #30
     9ae:	18fb      	adds	r3, r7, r3
     9b0:	701a      	strb	r2, [r3, #0]
     9b2:	e005      	b.n	9c0 <xvprintf+0x2c4>
     9b4:	231e      	movs	r3, #30
     9b6:	18fb      	adds	r3, r7, r3
     9b8:	781b      	ldrb	r3, [r3, #0]
     9ba:	0018      	movs	r0, r3
     9bc:	f7ff fe3e 	bl	63c <xputc>
     9c0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     9c2:	2202      	movs	r2, #2
     9c4:	4013      	ands	r3, r2
     9c6:	d105      	bne.n	9d4 <xvprintf+0x2d8>
     9c8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9ca:	1c5a      	adds	r2, r3, #1
     9cc:	62fa      	str	r2, [r7, #44]	; 0x2c
     9ce:	6aba      	ldr	r2, [r7, #40]	; 0x28
     9d0:	4293      	cmp	r3, r2
     9d2:	d3ef      	bcc.n	9b4 <xvprintf+0x2b8>
     9d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9d6:	3b01      	subs	r3, #1
     9d8:	633b      	str	r3, [r7, #48]	; 0x30
     9da:	2308      	movs	r3, #8
     9dc:	18fa      	adds	r2, r7, r3
     9de:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9e0:	18d3      	adds	r3, r2, r3
     9e2:	781b      	ldrb	r3, [r3, #0]
     9e4:	0018      	movs	r0, r3
     9e6:	f7ff fe29 	bl	63c <xputc>
     9ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     9ec:	2b00      	cmp	r3, #0
     9ee:	d1f1      	bne.n	9d4 <xvprintf+0x2d8>
     9f0:	e002      	b.n	9f8 <xvprintf+0x2fc>
     9f2:	2020      	movs	r0, #32
     9f4:	f7ff fe22 	bl	63c <xputc>
     9f8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     9fa:	1c5a      	adds	r2, r3, #1
     9fc:	62fa      	str	r2, [r7, #44]	; 0x2c
     9fe:	6aba      	ldr	r2, [r7, #40]	; 0x28
     a00:	4293      	cmp	r3, r2
     a02:	d3f6      	bcc.n	9f2 <xvprintf+0x2f6>
     a04:	e67f      	b.n	706 <xvprintf+0xa>
     a06:	46c0      	nop			; (mov r8, r8)
     a08:	e000      	b.n	a0c <xvprintf+0x310>
     a0a:	46c0      	nop			; (mov r8, r8)
     a0c:	46c0      	nop			; (mov r8, r8)
     a0e:	46bd      	mov	sp, r7
     a10:	b00e      	add	sp, #56	; 0x38
     a12:	bd80      	pop	{r7, pc}
     a14:	00000fb0 	.word	0x00000fb0

00000a18 <xprintf>:
     a18:	b40f      	push	{r0, r1, r2, r3}
     a1a:	b580      	push	{r7, lr}
     a1c:	b082      	sub	sp, #8
     a1e:	af00      	add	r7, sp, #0
     a20:	2314      	movs	r3, #20
     a22:	18fb      	adds	r3, r7, r3
     a24:	607b      	str	r3, [r7, #4]
     a26:	687a      	ldr	r2, [r7, #4]
     a28:	693b      	ldr	r3, [r7, #16]
     a2a:	0011      	movs	r1, r2
     a2c:	0018      	movs	r0, r3
     a2e:	f7ff fe65 	bl	6fc <xvprintf>
     a32:	46c0      	nop			; (mov r8, r8)
     a34:	46bd      	mov	sp, r7
     a36:	b002      	add	sp, #8
     a38:	bc80      	pop	{r7}
     a3a:	bc08      	pop	{r3}
     a3c:	b004      	add	sp, #16
     a3e:	4718      	bx	r3

00000a40 <xsprintf>:
     a40:	b40e      	push	{r1, r2, r3}
     a42:	b580      	push	{r7, lr}
     a44:	b085      	sub	sp, #20
     a46:	af00      	add	r7, sp, #0
     a48:	6078      	str	r0, [r7, #4]
     a4a:	4b0d      	ldr	r3, [pc, #52]	; (a80 <xsprintf+0x40>)
     a4c:	687a      	ldr	r2, [r7, #4]
     a4e:	601a      	str	r2, [r3, #0]
     a50:	2320      	movs	r3, #32
     a52:	18fb      	adds	r3, r7, r3
     a54:	60fb      	str	r3, [r7, #12]
     a56:	68fa      	ldr	r2, [r7, #12]
     a58:	69fb      	ldr	r3, [r7, #28]
     a5a:	0011      	movs	r1, r2
     a5c:	0018      	movs	r0, r3
     a5e:	f7ff fe4d 	bl	6fc <xvprintf>
     a62:	4b07      	ldr	r3, [pc, #28]	; (a80 <xsprintf+0x40>)
     a64:	681b      	ldr	r3, [r3, #0]
     a66:	2200      	movs	r2, #0
     a68:	701a      	strb	r2, [r3, #0]
     a6a:	4b05      	ldr	r3, [pc, #20]	; (a80 <xsprintf+0x40>)
     a6c:	2200      	movs	r2, #0
     a6e:	601a      	str	r2, [r3, #0]
     a70:	46c0      	nop			; (mov r8, r8)
     a72:	46bd      	mov	sp, r7
     a74:	b005      	add	sp, #20
     a76:	bc80      	pop	{r7}
     a78:	bc08      	pop	{r3}
     a7a:	b003      	add	sp, #12
     a7c:	4718      	bx	r3
     a7e:	46c0      	nop			; (mov r8, r8)
     a80:	20000014 	.word	0x20000014

00000a84 <xfprintf>:
     a84:	b40e      	push	{r1, r2, r3}
     a86:	b580      	push	{r7, lr}
     a88:	b085      	sub	sp, #20
     a8a:	af00      	add	r7, sp, #0
     a8c:	6078      	str	r0, [r7, #4]
     a8e:	4b0c      	ldr	r3, [pc, #48]	; (ac0 <xfprintf+0x3c>)
     a90:	681b      	ldr	r3, [r3, #0]
     a92:	60fb      	str	r3, [r7, #12]
     a94:	4b0a      	ldr	r3, [pc, #40]	; (ac0 <xfprintf+0x3c>)
     a96:	687a      	ldr	r2, [r7, #4]
     a98:	601a      	str	r2, [r3, #0]
     a9a:	2320      	movs	r3, #32
     a9c:	18fb      	adds	r3, r7, r3
     a9e:	60bb      	str	r3, [r7, #8]
     aa0:	68ba      	ldr	r2, [r7, #8]
     aa2:	69fb      	ldr	r3, [r7, #28]
     aa4:	0011      	movs	r1, r2
     aa6:	0018      	movs	r0, r3
     aa8:	f7ff fe28 	bl	6fc <xvprintf>
     aac:	4b04      	ldr	r3, [pc, #16]	; (ac0 <xfprintf+0x3c>)
     aae:	68fa      	ldr	r2, [r7, #12]
     ab0:	601a      	str	r2, [r3, #0]
     ab2:	46c0      	nop			; (mov r8, r8)
     ab4:	46bd      	mov	sp, r7
     ab6:	b005      	add	sp, #20
     ab8:	bc80      	pop	{r7}
     aba:	bc08      	pop	{r3}
     abc:	b003      	add	sp, #12
     abe:	4718      	bx	r3
     ac0:	20000010 	.word	0x20000010

00000ac4 <put_dump>:
     ac4:	b580      	push	{r7, lr}
     ac6:	b088      	sub	sp, #32
     ac8:	af00      	add	r7, sp, #0
     aca:	60f8      	str	r0, [r7, #12]
     acc:	60b9      	str	r1, [r7, #8]
     ace:	607a      	str	r2, [r7, #4]
     ad0:	603b      	str	r3, [r7, #0]
     ad2:	68ba      	ldr	r2, [r7, #8]
     ad4:	4b38      	ldr	r3, [pc, #224]	; (bb8 <put_dump+0xf4>)
     ad6:	0011      	movs	r1, r2
     ad8:	0018      	movs	r0, r3
     ada:	f7ff ff9d 	bl	a18 <xprintf>
     ade:	683b      	ldr	r3, [r7, #0]
     ae0:	2b02      	cmp	r3, #2
     ae2:	d03c      	beq.n	b5e <put_dump+0x9a>
     ae4:	2b04      	cmp	r3, #4
     ae6:	d04d      	beq.n	b84 <put_dump+0xc0>
     ae8:	2b01      	cmp	r3, #1
     aea:	d15d      	bne.n	ba8 <put_dump+0xe4>
     aec:	68fb      	ldr	r3, [r7, #12]
     aee:	613b      	str	r3, [r7, #16]
     af0:	2300      	movs	r3, #0
     af2:	61fb      	str	r3, [r7, #28]
     af4:	e00c      	b.n	b10 <put_dump+0x4c>
     af6:	69fb      	ldr	r3, [r7, #28]
     af8:	693a      	ldr	r2, [r7, #16]
     afa:	18d3      	adds	r3, r2, r3
     afc:	781b      	ldrb	r3, [r3, #0]
     afe:	001a      	movs	r2, r3
     b00:	4b2e      	ldr	r3, [pc, #184]	; (bbc <put_dump+0xf8>)
     b02:	0011      	movs	r1, r2
     b04:	0018      	movs	r0, r3
     b06:	f7ff ff87 	bl	a18 <xprintf>
     b0a:	69fb      	ldr	r3, [r7, #28]
     b0c:	3301      	adds	r3, #1
     b0e:	61fb      	str	r3, [r7, #28]
     b10:	69fa      	ldr	r2, [r7, #28]
     b12:	687b      	ldr	r3, [r7, #4]
     b14:	429a      	cmp	r2, r3
     b16:	dbee      	blt.n	af6 <put_dump+0x32>
     b18:	2020      	movs	r0, #32
     b1a:	f7ff fd8f 	bl	63c <xputc>
     b1e:	2300      	movs	r3, #0
     b20:	61fb      	str	r3, [r7, #28]
     b22:	e017      	b.n	b54 <put_dump+0x90>
     b24:	69fb      	ldr	r3, [r7, #28]
     b26:	693a      	ldr	r2, [r7, #16]
     b28:	18d3      	adds	r3, r2, r3
     b2a:	781b      	ldrb	r3, [r3, #0]
     b2c:	2b1f      	cmp	r3, #31
     b2e:	d90a      	bls.n	b46 <put_dump+0x82>
     b30:	69fb      	ldr	r3, [r7, #28]
     b32:	693a      	ldr	r2, [r7, #16]
     b34:	18d3      	adds	r3, r2, r3
     b36:	781b      	ldrb	r3, [r3, #0]
     b38:	2b7e      	cmp	r3, #126	; 0x7e
     b3a:	d804      	bhi.n	b46 <put_dump+0x82>
     b3c:	69fb      	ldr	r3, [r7, #28]
     b3e:	693a      	ldr	r2, [r7, #16]
     b40:	18d3      	adds	r3, r2, r3
     b42:	781b      	ldrb	r3, [r3, #0]
     b44:	e000      	b.n	b48 <put_dump+0x84>
     b46:	232e      	movs	r3, #46	; 0x2e
     b48:	0018      	movs	r0, r3
     b4a:	f7ff fd77 	bl	63c <xputc>
     b4e:	69fb      	ldr	r3, [r7, #28]
     b50:	3301      	adds	r3, #1
     b52:	61fb      	str	r3, [r7, #28]
     b54:	69fa      	ldr	r2, [r7, #28]
     b56:	687b      	ldr	r3, [r7, #4]
     b58:	429a      	cmp	r2, r3
     b5a:	dbe3      	blt.n	b24 <put_dump+0x60>
     b5c:	e024      	b.n	ba8 <put_dump+0xe4>
     b5e:	68fb      	ldr	r3, [r7, #12]
     b60:	61bb      	str	r3, [r7, #24]
     b62:	69bb      	ldr	r3, [r7, #24]
     b64:	1c9a      	adds	r2, r3, #2
     b66:	61ba      	str	r2, [r7, #24]
     b68:	881b      	ldrh	r3, [r3, #0]
     b6a:	001a      	movs	r2, r3
     b6c:	4b14      	ldr	r3, [pc, #80]	; (bc0 <put_dump+0xfc>)
     b6e:	0011      	movs	r1, r2
     b70:	0018      	movs	r0, r3
     b72:	f7ff ff51 	bl	a18 <xprintf>
     b76:	687b      	ldr	r3, [r7, #4]
     b78:	3b01      	subs	r3, #1
     b7a:	607b      	str	r3, [r7, #4]
     b7c:	687b      	ldr	r3, [r7, #4]
     b7e:	2b00      	cmp	r3, #0
     b80:	d1ef      	bne.n	b62 <put_dump+0x9e>
     b82:	e011      	b.n	ba8 <put_dump+0xe4>
     b84:	68fb      	ldr	r3, [r7, #12]
     b86:	617b      	str	r3, [r7, #20]
     b88:	697b      	ldr	r3, [r7, #20]
     b8a:	1d1a      	adds	r2, r3, #4
     b8c:	617a      	str	r2, [r7, #20]
     b8e:	681a      	ldr	r2, [r3, #0]
     b90:	4b0c      	ldr	r3, [pc, #48]	; (bc4 <put_dump+0x100>)
     b92:	0011      	movs	r1, r2
     b94:	0018      	movs	r0, r3
     b96:	f7ff ff3f 	bl	a18 <xprintf>
     b9a:	687b      	ldr	r3, [r7, #4]
     b9c:	3b01      	subs	r3, #1
     b9e:	607b      	str	r3, [r7, #4]
     ba0:	687b      	ldr	r3, [r7, #4]
     ba2:	2b00      	cmp	r3, #0
     ba4:	d1f0      	bne.n	b88 <put_dump+0xc4>
     ba6:	46c0      	nop			; (mov r8, r8)
     ba8:	200a      	movs	r0, #10
     baa:	f7ff fd47 	bl	63c <xputc>
     bae:	46c0      	nop			; (mov r8, r8)
     bb0:	46bd      	mov	sp, r7
     bb2:	b008      	add	sp, #32
     bb4:	bd80      	pop	{r7, pc}
     bb6:	46c0      	nop			; (mov r8, r8)
     bb8:	0000100c 	.word	0x0000100c
     bbc:	00001014 	.word	0x00001014
     bc0:	0000101c 	.word	0x0000101c
     bc4:	00001024 	.word	0x00001024

00000bc8 <xgets>:
     bc8:	b580      	push	{r7, lr}
     bca:	b084      	sub	sp, #16
     bcc:	af00      	add	r7, sp, #0
     bce:	6078      	str	r0, [r7, #4]
     bd0:	6039      	str	r1, [r7, #0]
     bd2:	4b24      	ldr	r3, [pc, #144]	; (c64 <xgets+0x9c>)
     bd4:	681b      	ldr	r3, [r3, #0]
     bd6:	2b00      	cmp	r3, #0
     bd8:	d101      	bne.n	bde <xgets+0x16>
     bda:	2300      	movs	r3, #0
     bdc:	e03e      	b.n	c5c <xgets+0x94>
     bde:	2300      	movs	r3, #0
     be0:	60fb      	str	r3, [r7, #12]
     be2:	4b20      	ldr	r3, [pc, #128]	; (c64 <xgets+0x9c>)
     be4:	681b      	ldr	r3, [r3, #0]
     be6:	4798      	blx	r3
     be8:	0003      	movs	r3, r0
     bea:	60bb      	str	r3, [r7, #8]
     bec:	68bb      	ldr	r3, [r7, #8]
     bee:	2b00      	cmp	r3, #0
     bf0:	d101      	bne.n	bf6 <xgets+0x2e>
     bf2:	2300      	movs	r3, #0
     bf4:	e032      	b.n	c5c <xgets+0x94>
     bf6:	68bb      	ldr	r3, [r7, #8]
     bf8:	2b0d      	cmp	r3, #13
     bfa:	d025      	beq.n	c48 <xgets+0x80>
     bfc:	68bb      	ldr	r3, [r7, #8]
     bfe:	2b08      	cmp	r3, #8
     c00:	d10b      	bne.n	c1a <xgets+0x52>
     c02:	68fb      	ldr	r3, [r7, #12]
     c04:	2b00      	cmp	r3, #0
     c06:	d008      	beq.n	c1a <xgets+0x52>
     c08:	68fb      	ldr	r3, [r7, #12]
     c0a:	3b01      	subs	r3, #1
     c0c:	60fb      	str	r3, [r7, #12]
     c0e:	68bb      	ldr	r3, [r7, #8]
     c10:	b2db      	uxtb	r3, r3
     c12:	0018      	movs	r0, r3
     c14:	f7ff fd12 	bl	63c <xputc>
     c18:	e015      	b.n	c46 <xgets+0x7e>
     c1a:	68bb      	ldr	r3, [r7, #8]
     c1c:	2b1f      	cmp	r3, #31
     c1e:	dde0      	ble.n	be2 <xgets+0x1a>
     c20:	683b      	ldr	r3, [r7, #0]
     c22:	1e5a      	subs	r2, r3, #1
     c24:	68fb      	ldr	r3, [r7, #12]
     c26:	429a      	cmp	r2, r3
     c28:	dddb      	ble.n	be2 <xgets+0x1a>
     c2a:	68fb      	ldr	r3, [r7, #12]
     c2c:	1c5a      	adds	r2, r3, #1
     c2e:	60fa      	str	r2, [r7, #12]
     c30:	001a      	movs	r2, r3
     c32:	687b      	ldr	r3, [r7, #4]
     c34:	189b      	adds	r3, r3, r2
     c36:	68ba      	ldr	r2, [r7, #8]
     c38:	b2d2      	uxtb	r2, r2
     c3a:	701a      	strb	r2, [r3, #0]
     c3c:	68bb      	ldr	r3, [r7, #8]
     c3e:	b2db      	uxtb	r3, r3
     c40:	0018      	movs	r0, r3
     c42:	f7ff fcfb 	bl	63c <xputc>
     c46:	e7cc      	b.n	be2 <xgets+0x1a>
     c48:	46c0      	nop			; (mov r8, r8)
     c4a:	68fb      	ldr	r3, [r7, #12]
     c4c:	687a      	ldr	r2, [r7, #4]
     c4e:	18d3      	adds	r3, r2, r3
     c50:	2200      	movs	r2, #0
     c52:	701a      	strb	r2, [r3, #0]
     c54:	200a      	movs	r0, #10
     c56:	f7ff fcf1 	bl	63c <xputc>
     c5a:	2301      	movs	r3, #1
     c5c:	0018      	movs	r0, r3
     c5e:	46bd      	mov	sp, r7
     c60:	b004      	add	sp, #16
     c62:	bd80      	pop	{r7, pc}
     c64:	20000018 	.word	0x20000018

00000c68 <xfgets>:
     c68:	b580      	push	{r7, lr}
     c6a:	b086      	sub	sp, #24
     c6c:	af00      	add	r7, sp, #0
     c6e:	60f8      	str	r0, [r7, #12]
     c70:	60b9      	str	r1, [r7, #8]
     c72:	607a      	str	r2, [r7, #4]
     c74:	4b0a      	ldr	r3, [pc, #40]	; (ca0 <xfgets+0x38>)
     c76:	681b      	ldr	r3, [r3, #0]
     c78:	617b      	str	r3, [r7, #20]
     c7a:	4b09      	ldr	r3, [pc, #36]	; (ca0 <xfgets+0x38>)
     c7c:	68fa      	ldr	r2, [r7, #12]
     c7e:	601a      	str	r2, [r3, #0]
     c80:	687a      	ldr	r2, [r7, #4]
     c82:	68bb      	ldr	r3, [r7, #8]
     c84:	0011      	movs	r1, r2
     c86:	0018      	movs	r0, r3
     c88:	f7ff ff9e 	bl	bc8 <xgets>
     c8c:	0003      	movs	r3, r0
     c8e:	613b      	str	r3, [r7, #16]
     c90:	4b03      	ldr	r3, [pc, #12]	; (ca0 <xfgets+0x38>)
     c92:	697a      	ldr	r2, [r7, #20]
     c94:	601a      	str	r2, [r3, #0]
     c96:	693b      	ldr	r3, [r7, #16]
     c98:	0018      	movs	r0, r3
     c9a:	46bd      	mov	sp, r7
     c9c:	b006      	add	sp, #24
     c9e:	bd80      	pop	{r7, pc}
     ca0:	20000018 	.word	0x20000018

00000ca4 <xatoi>:
     ca4:	b580      	push	{r7, lr}
     ca6:	b084      	sub	sp, #16
     ca8:	af00      	add	r7, sp, #0
     caa:	6078      	str	r0, [r7, #4]
     cac:	6039      	str	r1, [r7, #0]
     cae:	2309      	movs	r3, #9
     cb0:	18fb      	adds	r3, r7, r3
     cb2:	2200      	movs	r2, #0
     cb4:	701a      	strb	r2, [r3, #0]
     cb6:	683b      	ldr	r3, [r7, #0]
     cb8:	2200      	movs	r2, #0
     cba:	601a      	str	r2, [r3, #0]
     cbc:	e004      	b.n	cc8 <xatoi+0x24>
     cbe:	687b      	ldr	r3, [r7, #4]
     cc0:	681b      	ldr	r3, [r3, #0]
     cc2:	1c5a      	adds	r2, r3, #1
     cc4:	687b      	ldr	r3, [r7, #4]
     cc6:	601a      	str	r2, [r3, #0]
     cc8:	687b      	ldr	r3, [r7, #4]
     cca:	681a      	ldr	r2, [r3, #0]
     ccc:	230b      	movs	r3, #11
     cce:	18fb      	adds	r3, r7, r3
     cd0:	7812      	ldrb	r2, [r2, #0]
     cd2:	701a      	strb	r2, [r3, #0]
     cd4:	230b      	movs	r3, #11
     cd6:	18fb      	adds	r3, r7, r3
     cd8:	781b      	ldrb	r3, [r3, #0]
     cda:	2b20      	cmp	r3, #32
     cdc:	d0ef      	beq.n	cbe <xatoi+0x1a>
     cde:	230b      	movs	r3, #11
     ce0:	18fb      	adds	r3, r7, r3
     ce2:	781b      	ldrb	r3, [r3, #0]
     ce4:	2b2d      	cmp	r3, #45	; 0x2d
     ce6:	d10e      	bne.n	d06 <xatoi+0x62>
     ce8:	2309      	movs	r3, #9
     cea:	18fb      	adds	r3, r7, r3
     cec:	2201      	movs	r2, #1
     cee:	701a      	strb	r2, [r3, #0]
     cf0:	687b      	ldr	r3, [r7, #4]
     cf2:	681b      	ldr	r3, [r3, #0]
     cf4:	1c5a      	adds	r2, r3, #1
     cf6:	687b      	ldr	r3, [r7, #4]
     cf8:	601a      	str	r2, [r3, #0]
     cfa:	687b      	ldr	r3, [r7, #4]
     cfc:	681a      	ldr	r2, [r3, #0]
     cfe:	230b      	movs	r3, #11
     d00:	18fb      	adds	r3, r7, r3
     d02:	7812      	ldrb	r2, [r2, #0]
     d04:	701a      	strb	r2, [r3, #0]
     d06:	230b      	movs	r3, #11
     d08:	18fb      	adds	r3, r7, r3
     d0a:	781b      	ldrb	r3, [r3, #0]
     d0c:	2b30      	cmp	r3, #48	; 0x30
     d0e:	d149      	bne.n	da4 <xatoi+0x100>
     d10:	687b      	ldr	r3, [r7, #4]
     d12:	681b      	ldr	r3, [r3, #0]
     d14:	1c5a      	adds	r2, r3, #1
     d16:	687b      	ldr	r3, [r7, #4]
     d18:	601a      	str	r2, [r3, #0]
     d1a:	687b      	ldr	r3, [r7, #4]
     d1c:	681a      	ldr	r2, [r3, #0]
     d1e:	230b      	movs	r3, #11
     d20:	18fb      	adds	r3, r7, r3
     d22:	7812      	ldrb	r2, [r2, #0]
     d24:	701a      	strb	r2, [r3, #0]
     d26:	230b      	movs	r3, #11
     d28:	18fb      	adds	r3, r7, r3
     d2a:	781b      	ldrb	r3, [r3, #0]
     d2c:	2b62      	cmp	r3, #98	; 0x62
     d2e:	d011      	beq.n	d54 <xatoi+0xb0>
     d30:	2b78      	cmp	r3, #120	; 0x78
     d32:	d11f      	bne.n	d74 <xatoi+0xd0>
     d34:	230a      	movs	r3, #10
     d36:	18fb      	adds	r3, r7, r3
     d38:	2210      	movs	r2, #16
     d3a:	701a      	strb	r2, [r3, #0]
     d3c:	687b      	ldr	r3, [r7, #4]
     d3e:	681b      	ldr	r3, [r3, #0]
     d40:	1c5a      	adds	r2, r3, #1
     d42:	687b      	ldr	r3, [r7, #4]
     d44:	601a      	str	r2, [r3, #0]
     d46:	687b      	ldr	r3, [r7, #4]
     d48:	681a      	ldr	r2, [r3, #0]
     d4a:	230b      	movs	r3, #11
     d4c:	18fb      	adds	r3, r7, r3
     d4e:	7812      	ldrb	r2, [r2, #0]
     d50:	701a      	strb	r2, [r3, #0]
     d52:	e037      	b.n	dc4 <xatoi+0x120>
     d54:	230a      	movs	r3, #10
     d56:	18fb      	adds	r3, r7, r3
     d58:	2202      	movs	r2, #2
     d5a:	701a      	strb	r2, [r3, #0]
     d5c:	687b      	ldr	r3, [r7, #4]
     d5e:	681b      	ldr	r3, [r3, #0]
     d60:	1c5a      	adds	r2, r3, #1
     d62:	687b      	ldr	r3, [r7, #4]
     d64:	601a      	str	r2, [r3, #0]
     d66:	687b      	ldr	r3, [r7, #4]
     d68:	681a      	ldr	r2, [r3, #0]
     d6a:	230b      	movs	r3, #11
     d6c:	18fb      	adds	r3, r7, r3
     d6e:	7812      	ldrb	r2, [r2, #0]
     d70:	701a      	strb	r2, [r3, #0]
     d72:	e027      	b.n	dc4 <xatoi+0x120>
     d74:	230b      	movs	r3, #11
     d76:	18fb      	adds	r3, r7, r3
     d78:	781b      	ldrb	r3, [r3, #0]
     d7a:	2b20      	cmp	r3, #32
     d7c:	d801      	bhi.n	d82 <xatoi+0xde>
     d7e:	2301      	movs	r3, #1
     d80:	e079      	b.n	e76 <xatoi+0x1d2>
     d82:	230b      	movs	r3, #11
     d84:	18fb      	adds	r3, r7, r3
     d86:	781b      	ldrb	r3, [r3, #0]
     d88:	2b2f      	cmp	r3, #47	; 0x2f
     d8a:	d904      	bls.n	d96 <xatoi+0xf2>
     d8c:	230b      	movs	r3, #11
     d8e:	18fb      	adds	r3, r7, r3
     d90:	781b      	ldrb	r3, [r3, #0]
     d92:	2b39      	cmp	r3, #57	; 0x39
     d94:	d901      	bls.n	d9a <xatoi+0xf6>
     d96:	2300      	movs	r3, #0
     d98:	e06d      	b.n	e76 <xatoi+0x1d2>
     d9a:	230a      	movs	r3, #10
     d9c:	18fb      	adds	r3, r7, r3
     d9e:	2208      	movs	r2, #8
     da0:	701a      	strb	r2, [r3, #0]
     da2:	e00f      	b.n	dc4 <xatoi+0x120>
     da4:	230b      	movs	r3, #11
     da6:	18fb      	adds	r3, r7, r3
     da8:	781b      	ldrb	r3, [r3, #0]
     daa:	2b2f      	cmp	r3, #47	; 0x2f
     dac:	d904      	bls.n	db8 <xatoi+0x114>
     dae:	230b      	movs	r3, #11
     db0:	18fb      	adds	r3, r7, r3
     db2:	781b      	ldrb	r3, [r3, #0]
     db4:	2b39      	cmp	r3, #57	; 0x39
     db6:	d901      	bls.n	dbc <xatoi+0x118>
     db8:	2300      	movs	r3, #0
     dba:	e05c      	b.n	e76 <xatoi+0x1d2>
     dbc:	230a      	movs	r3, #10
     dbe:	18fb      	adds	r3, r7, r3
     dc0:	220a      	movs	r2, #10
     dc2:	701a      	strb	r2, [r3, #0]
     dc4:	2300      	movs	r3, #0
     dc6:	60fb      	str	r3, [r7, #12]
     dc8:	e044      	b.n	e54 <xatoi+0x1b0>
     dca:	230b      	movs	r3, #11
     dcc:	18fb      	adds	r3, r7, r3
     dce:	781b      	ldrb	r3, [r3, #0]
     dd0:	2b60      	cmp	r3, #96	; 0x60
     dd2:	d906      	bls.n	de2 <xatoi+0x13e>
     dd4:	230b      	movs	r3, #11
     dd6:	18fb      	adds	r3, r7, r3
     dd8:	220b      	movs	r2, #11
     dda:	18ba      	adds	r2, r7, r2
     ddc:	7812      	ldrb	r2, [r2, #0]
     dde:	3a20      	subs	r2, #32
     de0:	701a      	strb	r2, [r3, #0]
     de2:	230b      	movs	r3, #11
     de4:	18fb      	adds	r3, r7, r3
     de6:	220b      	movs	r2, #11
     de8:	18ba      	adds	r2, r7, r2
     dea:	7812      	ldrb	r2, [r2, #0]
     dec:	3a30      	subs	r2, #48	; 0x30
     dee:	701a      	strb	r2, [r3, #0]
     df0:	230b      	movs	r3, #11
     df2:	18fb      	adds	r3, r7, r3
     df4:	781b      	ldrb	r3, [r3, #0]
     df6:	2b10      	cmp	r3, #16
     df8:	d90d      	bls.n	e16 <xatoi+0x172>
     dfa:	230b      	movs	r3, #11
     dfc:	18fb      	adds	r3, r7, r3
     dfe:	220b      	movs	r2, #11
     e00:	18ba      	adds	r2, r7, r2
     e02:	7812      	ldrb	r2, [r2, #0]
     e04:	3a07      	subs	r2, #7
     e06:	701a      	strb	r2, [r3, #0]
     e08:	230b      	movs	r3, #11
     e0a:	18fb      	adds	r3, r7, r3
     e0c:	781b      	ldrb	r3, [r3, #0]
     e0e:	2b09      	cmp	r3, #9
     e10:	d801      	bhi.n	e16 <xatoi+0x172>
     e12:	2300      	movs	r3, #0
     e14:	e02f      	b.n	e76 <xatoi+0x1d2>
     e16:	230b      	movs	r3, #11
     e18:	18fa      	adds	r2, r7, r3
     e1a:	230a      	movs	r3, #10
     e1c:	18fb      	adds	r3, r7, r3
     e1e:	7812      	ldrb	r2, [r2, #0]
     e20:	781b      	ldrb	r3, [r3, #0]
     e22:	429a      	cmp	r2, r3
     e24:	d301      	bcc.n	e2a <xatoi+0x186>
     e26:	2300      	movs	r3, #0
     e28:	e025      	b.n	e76 <xatoi+0x1d2>
     e2a:	230a      	movs	r3, #10
     e2c:	18fb      	adds	r3, r7, r3
     e2e:	781b      	ldrb	r3, [r3, #0]
     e30:	68fa      	ldr	r2, [r7, #12]
     e32:	435a      	muls	r2, r3
     e34:	230b      	movs	r3, #11
     e36:	18fb      	adds	r3, r7, r3
     e38:	781b      	ldrb	r3, [r3, #0]
     e3a:	18d3      	adds	r3, r2, r3
     e3c:	60fb      	str	r3, [r7, #12]
     e3e:	687b      	ldr	r3, [r7, #4]
     e40:	681b      	ldr	r3, [r3, #0]
     e42:	1c5a      	adds	r2, r3, #1
     e44:	687b      	ldr	r3, [r7, #4]
     e46:	601a      	str	r2, [r3, #0]
     e48:	687b      	ldr	r3, [r7, #4]
     e4a:	681a      	ldr	r2, [r3, #0]
     e4c:	230b      	movs	r3, #11
     e4e:	18fb      	adds	r3, r7, r3
     e50:	7812      	ldrb	r2, [r2, #0]
     e52:	701a      	strb	r2, [r3, #0]
     e54:	230b      	movs	r3, #11
     e56:	18fb      	adds	r3, r7, r3
     e58:	781b      	ldrb	r3, [r3, #0]
     e5a:	2b20      	cmp	r3, #32
     e5c:	d8b5      	bhi.n	dca <xatoi+0x126>
     e5e:	2309      	movs	r3, #9
     e60:	18fb      	adds	r3, r7, r3
     e62:	781b      	ldrb	r3, [r3, #0]
     e64:	2b00      	cmp	r3, #0
     e66:	d002      	beq.n	e6e <xatoi+0x1ca>
     e68:	68fb      	ldr	r3, [r7, #12]
     e6a:	425b      	negs	r3, r3
     e6c:	60fb      	str	r3, [r7, #12]
     e6e:	68fa      	ldr	r2, [r7, #12]
     e70:	683b      	ldr	r3, [r7, #0]
     e72:	601a      	str	r2, [r3, #0]
     e74:	2301      	movs	r3, #1
     e76:	0018      	movs	r0, r3
     e78:	46bd      	mov	sp, r7
     e7a:	b004      	add	sp, #16
     e7c:	bd80      	pop	{r7, pc}
     e7e:	46c0      	nop			; (mov r8, r8)

00000e80 <__aeabi_uidiv>:
     e80:	2200      	movs	r2, #0
     e82:	0843      	lsrs	r3, r0, #1
     e84:	428b      	cmp	r3, r1
     e86:	d374      	bcc.n	f72 <__aeabi_uidiv+0xf2>
     e88:	0903      	lsrs	r3, r0, #4
     e8a:	428b      	cmp	r3, r1
     e8c:	d35f      	bcc.n	f4e <__aeabi_uidiv+0xce>
     e8e:	0a03      	lsrs	r3, r0, #8
     e90:	428b      	cmp	r3, r1
     e92:	d344      	bcc.n	f1e <__aeabi_uidiv+0x9e>
     e94:	0b03      	lsrs	r3, r0, #12
     e96:	428b      	cmp	r3, r1
     e98:	d328      	bcc.n	eec <__aeabi_uidiv+0x6c>
     e9a:	0c03      	lsrs	r3, r0, #16
     e9c:	428b      	cmp	r3, r1
     e9e:	d30d      	bcc.n	ebc <__aeabi_uidiv+0x3c>
     ea0:	22ff      	movs	r2, #255	; 0xff
     ea2:	0209      	lsls	r1, r1, #8
     ea4:	ba12      	rev	r2, r2
     ea6:	0c03      	lsrs	r3, r0, #16
     ea8:	428b      	cmp	r3, r1
     eaa:	d302      	bcc.n	eb2 <__aeabi_uidiv+0x32>
     eac:	1212      	asrs	r2, r2, #8
     eae:	0209      	lsls	r1, r1, #8
     eb0:	d065      	beq.n	f7e <__aeabi_uidiv+0xfe>
     eb2:	0b03      	lsrs	r3, r0, #12
     eb4:	428b      	cmp	r3, r1
     eb6:	d319      	bcc.n	eec <__aeabi_uidiv+0x6c>
     eb8:	e000      	b.n	ebc <__aeabi_uidiv+0x3c>
     eba:	0a09      	lsrs	r1, r1, #8
     ebc:	0bc3      	lsrs	r3, r0, #15
     ebe:	428b      	cmp	r3, r1
     ec0:	d301      	bcc.n	ec6 <__aeabi_uidiv+0x46>
     ec2:	03cb      	lsls	r3, r1, #15
     ec4:	1ac0      	subs	r0, r0, r3
     ec6:	4152      	adcs	r2, r2
     ec8:	0b83      	lsrs	r3, r0, #14
     eca:	428b      	cmp	r3, r1
     ecc:	d301      	bcc.n	ed2 <__aeabi_uidiv+0x52>
     ece:	038b      	lsls	r3, r1, #14
     ed0:	1ac0      	subs	r0, r0, r3
     ed2:	4152      	adcs	r2, r2
     ed4:	0b43      	lsrs	r3, r0, #13
     ed6:	428b      	cmp	r3, r1
     ed8:	d301      	bcc.n	ede <__aeabi_uidiv+0x5e>
     eda:	034b      	lsls	r3, r1, #13
     edc:	1ac0      	subs	r0, r0, r3
     ede:	4152      	adcs	r2, r2
     ee0:	0b03      	lsrs	r3, r0, #12
     ee2:	428b      	cmp	r3, r1
     ee4:	d301      	bcc.n	eea <__aeabi_uidiv+0x6a>
     ee6:	030b      	lsls	r3, r1, #12
     ee8:	1ac0      	subs	r0, r0, r3
     eea:	4152      	adcs	r2, r2
     eec:	0ac3      	lsrs	r3, r0, #11
     eee:	428b      	cmp	r3, r1
     ef0:	d301      	bcc.n	ef6 <__aeabi_uidiv+0x76>
     ef2:	02cb      	lsls	r3, r1, #11
     ef4:	1ac0      	subs	r0, r0, r3
     ef6:	4152      	adcs	r2, r2
     ef8:	0a83      	lsrs	r3, r0, #10
     efa:	428b      	cmp	r3, r1
     efc:	d301      	bcc.n	f02 <__aeabi_uidiv+0x82>
     efe:	028b      	lsls	r3, r1, #10
     f00:	1ac0      	subs	r0, r0, r3
     f02:	4152      	adcs	r2, r2
     f04:	0a43      	lsrs	r3, r0, #9
     f06:	428b      	cmp	r3, r1
     f08:	d301      	bcc.n	f0e <__aeabi_uidiv+0x8e>
     f0a:	024b      	lsls	r3, r1, #9
     f0c:	1ac0      	subs	r0, r0, r3
     f0e:	4152      	adcs	r2, r2
     f10:	0a03      	lsrs	r3, r0, #8
     f12:	428b      	cmp	r3, r1
     f14:	d301      	bcc.n	f1a <__aeabi_uidiv+0x9a>
     f16:	020b      	lsls	r3, r1, #8
     f18:	1ac0      	subs	r0, r0, r3
     f1a:	4152      	adcs	r2, r2
     f1c:	d2cd      	bcs.n	eba <__aeabi_uidiv+0x3a>
     f1e:	09c3      	lsrs	r3, r0, #7
     f20:	428b      	cmp	r3, r1
     f22:	d301      	bcc.n	f28 <__aeabi_uidiv+0xa8>
     f24:	01cb      	lsls	r3, r1, #7
     f26:	1ac0      	subs	r0, r0, r3
     f28:	4152      	adcs	r2, r2
     f2a:	0983      	lsrs	r3, r0, #6
     f2c:	428b      	cmp	r3, r1
     f2e:	d301      	bcc.n	f34 <__aeabi_uidiv+0xb4>
     f30:	018b      	lsls	r3, r1, #6
     f32:	1ac0      	subs	r0, r0, r3
     f34:	4152      	adcs	r2, r2
     f36:	0943      	lsrs	r3, r0, #5
     f38:	428b      	cmp	r3, r1
     f3a:	d301      	bcc.n	f40 <__aeabi_uidiv+0xc0>
     f3c:	014b      	lsls	r3, r1, #5
     f3e:	1ac0      	subs	r0, r0, r3
     f40:	4152      	adcs	r2, r2
     f42:	0903      	lsrs	r3, r0, #4
     f44:	428b      	cmp	r3, r1
     f46:	d301      	bcc.n	f4c <__aeabi_uidiv+0xcc>
     f48:	010b      	lsls	r3, r1, #4
     f4a:	1ac0      	subs	r0, r0, r3
     f4c:	4152      	adcs	r2, r2
     f4e:	08c3      	lsrs	r3, r0, #3
     f50:	428b      	cmp	r3, r1
     f52:	d301      	bcc.n	f58 <__aeabi_uidiv+0xd8>
     f54:	00cb      	lsls	r3, r1, #3
     f56:	1ac0      	subs	r0, r0, r3
     f58:	4152      	adcs	r2, r2
     f5a:	0883      	lsrs	r3, r0, #2
     f5c:	428b      	cmp	r3, r1
     f5e:	d301      	bcc.n	f64 <__aeabi_uidiv+0xe4>
     f60:	008b      	lsls	r3, r1, #2
     f62:	1ac0      	subs	r0, r0, r3
     f64:	4152      	adcs	r2, r2
     f66:	0843      	lsrs	r3, r0, #1
     f68:	428b      	cmp	r3, r1
     f6a:	d301      	bcc.n	f70 <__aeabi_uidiv+0xf0>
     f6c:	004b      	lsls	r3, r1, #1
     f6e:	1ac0      	subs	r0, r0, r3
     f70:	4152      	adcs	r2, r2
     f72:	1a41      	subs	r1, r0, r1
     f74:	d200      	bcs.n	f78 <__aeabi_uidiv+0xf8>
     f76:	4601      	mov	r1, r0
     f78:	4152      	adcs	r2, r2
     f7a:	4610      	mov	r0, r2
     f7c:	4770      	bx	lr
     f7e:	e7ff      	b.n	f80 <__aeabi_uidiv+0x100>
     f80:	b501      	push	{r0, lr}
     f82:	2000      	movs	r0, #0
     f84:	f000 f806 	bl	f94 <__aeabi_idiv0>
     f88:	bd02      	pop	{r1, pc}
     f8a:	46c0      	nop			; (mov r8, r8)

00000f8c <__aeabi_uidivmod>:
     f8c:	2900      	cmp	r1, #0
     f8e:	d0f7      	beq.n	f80 <__aeabi_uidiv+0x100>
     f90:	e776      	b.n	e80 <__aeabi_uidiv>
     f92:	4770      	bx	lr

00000f94 <__aeabi_idiv0>:
     f94:	4770      	bx	lr
     f96:	46c0      	nop			; (mov r8, r8)
     f98:	6c6c6568 	.word	0x6c6c6568
     f9c:	000a0d6f 	.word	0x000a0d6f
     fa0:	6c6c6568 	.word	0x6c6c6568
     fa4:	6f77206f 	.word	0x6f77206f
     fa8:	0d646c72 	.word	0x0d646c72
     fac:	0000000a 	.word	0x0000000a
     fb0:	000008a2 	.word	0x000008a2
     fb4:	00000890 	.word	0x00000890
     fb8:	000008ae 	.word	0x000008ae
     fbc:	000008ba 	.word	0x000008ba
     fc0:	000008ba 	.word	0x000008ba
     fc4:	000008ba 	.word	0x000008ba
     fc8:	000008ba 	.word	0x000008ba
     fcc:	000008ba 	.word	0x000008ba
     fd0:	000008ba 	.word	0x000008ba
     fd4:	000008ba 	.word	0x000008ba
     fd8:	000008ba 	.word	0x000008ba
     fdc:	000008ba 	.word	0x000008ba
     fe0:	000008ba 	.word	0x000008ba
     fe4:	000008a8 	.word	0x000008a8
     fe8:	000008ba 	.word	0x000008ba
     fec:	000008ba 	.word	0x000008ba
     ff0:	000008ba 	.word	0x000008ba
     ff4:	00000834 	.word	0x00000834
     ff8:	000008ba 	.word	0x000008ba
     ffc:	000008ae 	.word	0x000008ae
    1000:	000008ba 	.word	0x000008ba
    1004:	000008ba 	.word	0x000008ba
    1008:	000008b4 	.word	0x000008b4
    100c:	6c383025 	.word	0x6c383025
    1010:	00002058 	.word	0x00002058
    1014:	32302520 	.word	0x32302520
    1018:	00000058 	.word	0x00000058
    101c:	34302520 	.word	0x34302520
    1020:	00000058 	.word	0x00000058
    1024:	38302520 	.word	0x38302520
    1028:	0000584c 	.word	0x0000584c
