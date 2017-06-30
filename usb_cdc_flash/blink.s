
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 cd 0b 00 00 2d 0c 00 00 2d 0c 00 00     ... ....-...-...
	...
      2c:	2d 0c 00 00 00 00 00 00 00 00 00 00 2d 0c 00 00     -...........-...
      3c:	81 0b 00 00 2d 0c 00 00 2d 0c 00 00 2d 0c 00 00     ....-...-...-...
      4c:	2d 0c 00 00 2d 0c 00 00 2d 0c 00 00 c1 0b 00 00     -...-...-.......
      5c:	2d 0c 00 00 2d 0c 00 00 2d 0c 00 00 2d 0c 00 00     -...-...-...-...
      6c:	2d 0c 00 00 2d 0c 00 00 99 0b 00 00 2d 0c 00 00     -...-.......-...
      7c:	2d 0c 00 00 2d 0c 00 00 2d 0c 00 00 2d 0c 00 00     -...-...-...-...
      8c:	2d 0c 00 00 2d 0c 00 00 2d 0c 00 00 2d 0c 00 00     -...-...-...-...
      9c:	2d 0c 00 00 2d 0c 00 00 00 00 00 00 00 00 00 00     -...-...........
      ac:	2d 0c 00 00 2d 0c 00 00 2d 0c 00 00 2d 0c 00 00     -...-...-...-...
      bc:	2d 0c 00 00                                         -...

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
     1cc:	20000030 	.word	0x20000030

000001d0 <main>:
     1d0:	b590      	push	{r4, r7, lr}
     1d2:	b087      	sub	sp, #28
     1d4:	af00      	add	r7, sp, #0
     1d6:	1d3b      	adds	r3, r7, #4
     1d8:	4a08      	ldr	r2, [pc, #32]	; (1fc <main+0x2c>)
     1da:	ca13      	ldmia	r2!, {r0, r1, r4}
     1dc:	c313      	stmia	r3!, {r0, r1, r4}
     1de:	8812      	ldrh	r2, [r2, #0]
     1e0:	801a      	strh	r2, [r3, #0]
     1e2:	f000 fa6d 	bl	6c0 <SystemInit>
     1e6:	4b06      	ldr	r3, [pc, #24]	; (200 <main+0x30>)
     1e8:	4a06      	ldr	r2, [pc, #24]	; (204 <main+0x34>)
     1ea:	601a      	str	r2, [r3, #0]
     1ec:	4b06      	ldr	r3, [pc, #24]	; (208 <main+0x38>)
     1ee:	2200      	movs	r2, #0
     1f0:	601a      	str	r2, [r3, #0]
     1f2:	2300      	movs	r3, #0
     1f4:	617b      	str	r3, [r7, #20]
     1f6:	f000 f9fd 	bl	5f4 <usb_device_update>
     1fa:	e7fc      	b.n	1f6 <main+0x26>
     1fc:	00001590 	.word	0x00001590
     200:	2000004c 	.word	0x2000004c
     204:	000004ad 	.word	0x000004ad
     208:	20000028 	.word	0x20000028

0000020c <PortConfig>:
     20c:	b580      	push	{r7, lr}
     20e:	af00      	add	r7, sp, #0
     210:	4b44      	ldr	r3, [pc, #272]	; (324 <PortConfig+0x118>)
     212:	4a44      	ldr	r2, [pc, #272]	; (324 <PortConfig+0x118>)
     214:	69d2      	ldr	r2, [r2, #28]
     216:	2180      	movs	r1, #128	; 0x80
     218:	0449      	lsls	r1, r1, #17
     21a:	430a      	orrs	r2, r1
     21c:	61da      	str	r2, [r3, #28]
     21e:	4b42      	ldr	r3, [pc, #264]	; (328 <PortConfig+0x11c>)
     220:	2200      	movs	r2, #0
     222:	609a      	str	r2, [r3, #8]
     224:	4b40      	ldr	r3, [pc, #256]	; (328 <PortConfig+0x11c>)
     226:	2200      	movs	r2, #0
     228:	601a      	str	r2, [r3, #0]
     22a:	4b3f      	ldr	r3, [pc, #252]	; (328 <PortConfig+0x11c>)
     22c:	22ff      	movs	r2, #255	; 0xff
     22e:	01d2      	lsls	r2, r2, #7
     230:	605a      	str	r2, [r3, #4]
     232:	4b3d      	ldr	r3, [pc, #244]	; (328 <PortConfig+0x11c>)
     234:	22ff      	movs	r2, #255	; 0xff
     236:	01d2      	lsls	r2, r2, #7
     238:	60da      	str	r2, [r3, #12]
     23a:	4b3b      	ldr	r3, [pc, #236]	; (328 <PortConfig+0x11c>)
     23c:	4a3b      	ldr	r2, [pc, #236]	; (32c <PortConfig+0x120>)
     23e:	619a      	str	r2, [r3, #24]
     240:	4b38      	ldr	r3, [pc, #224]	; (324 <PortConfig+0x118>)
     242:	4a38      	ldr	r2, [pc, #224]	; (324 <PortConfig+0x118>)
     244:	69d2      	ldr	r2, [r2, #28]
     246:	2180      	movs	r1, #128	; 0x80
     248:	0389      	lsls	r1, r1, #14
     24a:	430a      	orrs	r2, r1
     24c:	61da      	str	r2, [r3, #28]
     24e:	4b38      	ldr	r3, [pc, #224]	; (330 <PortConfig+0x124>)
     250:	4a37      	ldr	r2, [pc, #220]	; (330 <PortConfig+0x124>)
     252:	6892      	ldr	r2, [r2, #8]
     254:	4937      	ldr	r1, [pc, #220]	; (334 <PortConfig+0x128>)
     256:	400a      	ands	r2, r1
     258:	609a      	str	r2, [r3, #8]
     25a:	4b35      	ldr	r3, [pc, #212]	; (330 <PortConfig+0x124>)
     25c:	4a34      	ldr	r2, [pc, #208]	; (330 <PortConfig+0x124>)
     25e:	6892      	ldr	r2, [r2, #8]
     260:	4935      	ldr	r1, [pc, #212]	; (338 <PortConfig+0x12c>)
     262:	400a      	ands	r2, r1
     264:	609a      	str	r2, [r3, #8]
     266:	4b32      	ldr	r3, [pc, #200]	; (330 <PortConfig+0x124>)
     268:	4a31      	ldr	r2, [pc, #196]	; (330 <PortConfig+0x124>)
     26a:	6892      	ldr	r2, [r2, #8]
     26c:	2180      	movs	r1, #128	; 0x80
     26e:	0189      	lsls	r1, r1, #6
     270:	430a      	orrs	r2, r1
     272:	609a      	str	r2, [r3, #8]
     274:	4b2e      	ldr	r3, [pc, #184]	; (330 <PortConfig+0x124>)
     276:	4a2e      	ldr	r2, [pc, #184]	; (330 <PortConfig+0x124>)
     278:	6892      	ldr	r2, [r2, #8]
     27a:	2180      	movs	r1, #128	; 0x80
     27c:	0209      	lsls	r1, r1, #8
     27e:	430a      	orrs	r2, r1
     280:	609a      	str	r2, [r3, #8]
     282:	4b2b      	ldr	r3, [pc, #172]	; (330 <PortConfig+0x124>)
     284:	4a2a      	ldr	r2, [pc, #168]	; (330 <PortConfig+0x124>)
     286:	6852      	ldr	r2, [r2, #4]
     288:	2140      	movs	r1, #64	; 0x40
     28a:	430a      	orrs	r2, r1
     28c:	605a      	str	r2, [r3, #4]
     28e:	4b28      	ldr	r3, [pc, #160]	; (330 <PortConfig+0x124>)
     290:	4a27      	ldr	r2, [pc, #156]	; (330 <PortConfig+0x124>)
     292:	6852      	ldr	r2, [r2, #4]
     294:	2180      	movs	r1, #128	; 0x80
     296:	430a      	orrs	r2, r1
     298:	605a      	str	r2, [r3, #4]
     29a:	4b25      	ldr	r3, [pc, #148]	; (330 <PortConfig+0x124>)
     29c:	4a24      	ldr	r2, [pc, #144]	; (330 <PortConfig+0x124>)
     29e:	68d2      	ldr	r2, [r2, #12]
     2a0:	2140      	movs	r1, #64	; 0x40
     2a2:	430a      	orrs	r2, r1
     2a4:	60da      	str	r2, [r3, #12]
     2a6:	4b22      	ldr	r3, [pc, #136]	; (330 <PortConfig+0x124>)
     2a8:	4a21      	ldr	r2, [pc, #132]	; (330 <PortConfig+0x124>)
     2aa:	68d2      	ldr	r2, [r2, #12]
     2ac:	2180      	movs	r1, #128	; 0x80
     2ae:	430a      	orrs	r2, r1
     2b0:	60da      	str	r2, [r3, #12]
     2b2:	4b1f      	ldr	r3, [pc, #124]	; (330 <PortConfig+0x124>)
     2b4:	4a1e      	ldr	r2, [pc, #120]	; (330 <PortConfig+0x124>)
     2b6:	6992      	ldr	r2, [r2, #24]
     2b8:	21c0      	movs	r1, #192	; 0xc0
     2ba:	0189      	lsls	r1, r1, #6
     2bc:	430a      	orrs	r2, r1
     2be:	619a      	str	r2, [r3, #24]
     2c0:	4b1b      	ldr	r3, [pc, #108]	; (330 <PortConfig+0x124>)
     2c2:	4a1b      	ldr	r2, [pc, #108]	; (330 <PortConfig+0x124>)
     2c4:	6992      	ldr	r2, [r2, #24]
     2c6:	21c0      	movs	r1, #192	; 0xc0
     2c8:	0209      	lsls	r1, r1, #8
     2ca:	430a      	orrs	r2, r1
     2cc:	619a      	str	r2, [r3, #24]
     2ce:	4b15      	ldr	r3, [pc, #84]	; (324 <PortConfig+0x118>)
     2d0:	4a14      	ldr	r2, [pc, #80]	; (324 <PortConfig+0x118>)
     2d2:	69d2      	ldr	r2, [r2, #28]
     2d4:	2180      	movs	r1, #128	; 0x80
     2d6:	0409      	lsls	r1, r1, #16
     2d8:	430a      	orrs	r2, r1
     2da:	61da      	str	r2, [r3, #28]
     2dc:	4b17      	ldr	r3, [pc, #92]	; (33c <PortConfig+0x130>)
     2de:	4a17      	ldr	r2, [pc, #92]	; (33c <PortConfig+0x130>)
     2e0:	6892      	ldr	r2, [r2, #8]
     2e2:	4917      	ldr	r1, [pc, #92]	; (340 <PortConfig+0x134>)
     2e4:	400a      	ands	r2, r1
     2e6:	609a      	str	r2, [r3, #8]
     2e8:	4b14      	ldr	r3, [pc, #80]	; (33c <PortConfig+0x130>)
     2ea:	4a14      	ldr	r2, [pc, #80]	; (33c <PortConfig+0x130>)
     2ec:	6892      	ldr	r2, [r2, #8]
     2ee:	21a0      	movs	r1, #160	; 0xa0
     2f0:	0049      	lsls	r1, r1, #1
     2f2:	430a      	orrs	r2, r1
     2f4:	609a      	str	r2, [r3, #8]
     2f6:	4b11      	ldr	r3, [pc, #68]	; (33c <PortConfig+0x130>)
     2f8:	4a10      	ldr	r2, [pc, #64]	; (33c <PortConfig+0x130>)
     2fa:	68d2      	ldr	r2, [r2, #12]
     2fc:	2118      	movs	r1, #24
     2fe:	430a      	orrs	r2, r1
     300:	60da      	str	r2, [r3, #12]
     302:	4b0e      	ldr	r3, [pc, #56]	; (33c <PortConfig+0x130>)
     304:	4a0d      	ldr	r2, [pc, #52]	; (33c <PortConfig+0x130>)
     306:	6992      	ldr	r2, [r2, #24]
     308:	21f0      	movs	r1, #240	; 0xf0
     30a:	0089      	lsls	r1, r1, #2
     30c:	430a      	orrs	r2, r1
     30e:	619a      	str	r2, [r3, #24]
     310:	4b0a      	ldr	r3, [pc, #40]	; (33c <PortConfig+0x130>)
     312:	4a0a      	ldr	r2, [pc, #40]	; (33c <PortConfig+0x130>)
     314:	6812      	ldr	r2, [r2, #0]
     316:	2118      	movs	r1, #24
     318:	438a      	bics	r2, r1
     31a:	601a      	str	r2, [r3, #0]
     31c:	46c0      	nop			; (mov r8, r8)
     31e:	46bd      	mov	sp, r7
     320:	bd80      	pop	{r7, pc}
     322:	46c0      	nop			; (mov r8, r8)
     324:	40020000 	.word	0x40020000
     328:	400c0000 	.word	0x400c0000
     32c:	3fffc000 	.word	0x3fffc000
     330:	400a8000 	.word	0x400a8000
     334:	ffffcfff 	.word	0xffffcfff
     338:	ffff3fff 	.word	0xffff3fff
     33c:	400b8000 	.word	0x400b8000
     340:	fffffc3f 	.word	0xfffffc3f

00000344 <ClkConfig>:
     344:	b580      	push	{r7, lr}
     346:	af00      	add	r7, sp, #0
     348:	4b18      	ldr	r3, [pc, #96]	; (3ac <ClkConfig+0x68>)
     34a:	4a18      	ldr	r2, [pc, #96]	; (3ac <ClkConfig+0x68>)
     34c:	6892      	ldr	r2, [r2, #8]
     34e:	2101      	movs	r1, #1
     350:	430a      	orrs	r2, r1
     352:	609a      	str	r2, [r3, #8]
     354:	46c0      	nop			; (mov r8, r8)
     356:	4b15      	ldr	r3, [pc, #84]	; (3ac <ClkConfig+0x68>)
     358:	681b      	ldr	r3, [r3, #0]
     35a:	2204      	movs	r2, #4
     35c:	4013      	ands	r3, r2
     35e:	d0fa      	beq.n	356 <ClkConfig+0x12>
     360:	4b12      	ldr	r3, [pc, #72]	; (3ac <ClkConfig+0x68>)
     362:	4a12      	ldr	r2, [pc, #72]	; (3ac <ClkConfig+0x68>)
     364:	68d2      	ldr	r2, [r2, #12]
     366:	2102      	movs	r1, #2
     368:	430a      	orrs	r2, r1
     36a:	60da      	str	r2, [r3, #12]
     36c:	4b0f      	ldr	r3, [pc, #60]	; (3ac <ClkConfig+0x68>)
     36e:	4a10      	ldr	r2, [pc, #64]	; (3b0 <ClkConfig+0x6c>)
     370:	605a      	str	r2, [r3, #4]
     372:	46c0      	nop			; (mov r8, r8)
     374:	4b0d      	ldr	r3, [pc, #52]	; (3ac <ClkConfig+0x68>)
     376:	681b      	ldr	r3, [r3, #0]
     378:	2202      	movs	r2, #2
     37a:	4013      	ands	r3, r2
     37c:	d0fa      	beq.n	374 <ClkConfig+0x30>
     37e:	4b0d      	ldr	r3, [pc, #52]	; (3b4 <ClkConfig+0x70>)
     380:	4a0c      	ldr	r2, [pc, #48]	; (3b4 <ClkConfig+0x70>)
     382:	6812      	ldr	r2, [r2, #0]
     384:	2120      	movs	r1, #32
     386:	430a      	orrs	r2, r1
     388:	601a      	str	r2, [r3, #0]
     38a:	4b08      	ldr	r3, [pc, #32]	; (3ac <ClkConfig+0x68>)
     38c:	4a07      	ldr	r2, [pc, #28]	; (3ac <ClkConfig+0x68>)
     38e:	68d2      	ldr	r2, [r2, #12]
     390:	2180      	movs	r1, #128	; 0x80
     392:	0049      	lsls	r1, r1, #1
     394:	430a      	orrs	r2, r1
     396:	60da      	str	r2, [r3, #12]
     398:	4b04      	ldr	r3, [pc, #16]	; (3ac <ClkConfig+0x68>)
     39a:	4a04      	ldr	r2, [pc, #16]	; (3ac <ClkConfig+0x68>)
     39c:	68d2      	ldr	r2, [r2, #12]
     39e:	2104      	movs	r1, #4
     3a0:	430a      	orrs	r2, r1
     3a2:	60da      	str	r2, [r3, #12]
     3a4:	46c0      	nop			; (mov r8, r8)
     3a6:	46bd      	mov	sp, r7
     3a8:	bd80      	pop	{r7, pc}
     3aa:	46c0      	nop			; (mov r8, r8)
     3ac:	40020000 	.word	0x40020000
     3b0:	00000e04 	.word	0x00000e04
     3b4:	40018000 	.word	0x40018000

000003b8 <TimerConfig>:
     3b8:	b580      	push	{r7, lr}
     3ba:	af00      	add	r7, sp, #0
     3bc:	4b35      	ldr	r3, [pc, #212]	; (494 <_stack_size+0x94>)
     3be:	4a35      	ldr	r2, [pc, #212]	; (494 <_stack_size+0x94>)
     3c0:	69d2      	ldr	r2, [r2, #28]
     3c2:	2180      	movs	r1, #128	; 0x80
     3c4:	0309      	lsls	r1, r1, #12
     3c6:	430a      	orrs	r2, r1
     3c8:	61da      	str	r2, [r3, #28]
     3ca:	4b32      	ldr	r3, [pc, #200]	; (494 <_stack_size+0x94>)
     3cc:	4a31      	ldr	r2, [pc, #196]	; (494 <_stack_size+0x94>)
     3ce:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3d0:	2180      	movs	r1, #128	; 0x80
     3d2:	04c9      	lsls	r1, r1, #19
     3d4:	430a      	orrs	r2, r1
     3d6:	629a      	str	r2, [r3, #40]	; 0x28
     3d8:	4b2e      	ldr	r3, [pc, #184]	; (494 <_stack_size+0x94>)
     3da:	4a2e      	ldr	r2, [pc, #184]	; (494 <_stack_size+0x94>)
     3dc:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3de:	492e      	ldr	r1, [pc, #184]	; (498 <_stack_size+0x98>)
     3e0:	400a      	ands	r2, r1
     3e2:	629a      	str	r2, [r3, #40]	; 0x28
     3e4:	4b2d      	ldr	r3, [pc, #180]	; (49c <_stack_size+0x9c>)
     3e6:	2200      	movs	r2, #0
     3e8:	601a      	str	r2, [r3, #0]
     3ea:	4b2c      	ldr	r3, [pc, #176]	; (49c <_stack_size+0x9c>)
     3ec:	220b      	movs	r2, #11
     3ee:	605a      	str	r2, [r3, #4]
     3f0:	4b2a      	ldr	r3, [pc, #168]	; (49c <_stack_size+0x9c>)
     3f2:	4a2b      	ldr	r2, [pc, #172]	; (4a0 <_stack_size+0xa0>)
     3f4:	609a      	str	r2, [r3, #8]
     3f6:	4b29      	ldr	r3, [pc, #164]	; (49c <_stack_size+0x9c>)
     3f8:	22fa      	movs	r2, #250	; 0xfa
     3fa:	0052      	lsls	r2, r2, #1
     3fc:	611a      	str	r2, [r3, #16]
     3fe:	4b27      	ldr	r3, [pc, #156]	; (49c <_stack_size+0x9c>)
     400:	4a26      	ldr	r2, [pc, #152]	; (49c <_stack_size+0x9c>)
     402:	6a12      	ldr	r2, [r2, #32]
     404:	4927      	ldr	r1, [pc, #156]	; (4a4 <_stack_size+0xa4>)
     406:	400a      	ands	r2, r1
     408:	621a      	str	r2, [r3, #32]
     40a:	4b24      	ldr	r3, [pc, #144]	; (49c <_stack_size+0x9c>)
     40c:	4a23      	ldr	r2, [pc, #140]	; (49c <_stack_size+0x9c>)
     40e:	6a12      	ldr	r2, [r2, #32]
     410:	21e0      	movs	r1, #224	; 0xe0
     412:	0109      	lsls	r1, r1, #4
     414:	430a      	orrs	r2, r1
     416:	621a      	str	r2, [r3, #32]
     418:	4b20      	ldr	r3, [pc, #128]	; (49c <_stack_size+0x9c>)
     41a:	4a20      	ldr	r2, [pc, #128]	; (49c <_stack_size+0x9c>)
     41c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     41e:	210f      	movs	r1, #15
     420:	438a      	bics	r2, r1
     422:	631a      	str	r2, [r3, #48]	; 0x30
     424:	4b1d      	ldr	r3, [pc, #116]	; (49c <_stack_size+0x9c>)
     426:	4a1d      	ldr	r2, [pc, #116]	; (49c <_stack_size+0x9c>)
     428:	6b12      	ldr	r2, [r2, #48]	; 0x30
     42a:	210c      	movs	r1, #12
     42c:	430a      	orrs	r2, r1
     42e:	631a      	str	r2, [r3, #48]	; 0x30
     430:	4b1a      	ldr	r3, [pc, #104]	; (49c <_stack_size+0x9c>)
     432:	4a1a      	ldr	r2, [pc, #104]	; (49c <_stack_size+0x9c>)
     434:	6b12      	ldr	r2, [r2, #48]	; 0x30
     436:	2101      	movs	r1, #1
     438:	430a      	orrs	r2, r1
     43a:	631a      	str	r2, [r3, #48]	; 0x30
     43c:	4b17      	ldr	r3, [pc, #92]	; (49c <_stack_size+0x9c>)
     43e:	4a17      	ldr	r2, [pc, #92]	; (49c <_stack_size+0x9c>)
     440:	6b12      	ldr	r2, [r2, #48]	; 0x30
     442:	4919      	ldr	r1, [pc, #100]	; (4a8 <_stack_size+0xa8>)
     444:	400a      	ands	r2, r1
     446:	631a      	str	r2, [r3, #48]	; 0x30
     448:	4b14      	ldr	r3, [pc, #80]	; (49c <_stack_size+0x9c>)
     44a:	4a14      	ldr	r2, [pc, #80]	; (49c <_stack_size+0x9c>)
     44c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     44e:	21c0      	movs	r1, #192	; 0xc0
     450:	0109      	lsls	r1, r1, #4
     452:	430a      	orrs	r2, r1
     454:	631a      	str	r2, [r3, #48]	; 0x30
     456:	4b11      	ldr	r3, [pc, #68]	; (49c <_stack_size+0x9c>)
     458:	4a10      	ldr	r2, [pc, #64]	; (49c <_stack_size+0x9c>)
     45a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     45c:	2180      	movs	r1, #128	; 0x80
     45e:	0049      	lsls	r1, r1, #1
     460:	430a      	orrs	r2, r1
     462:	631a      	str	r2, [r3, #48]	; 0x30
     464:	4b0d      	ldr	r3, [pc, #52]	; (49c <_stack_size+0x9c>)
     466:	4a0d      	ldr	r2, [pc, #52]	; (49c <_stack_size+0x9c>)
     468:	6c12      	ldr	r2, [r2, #64]	; 0x40
     46a:	21c8      	movs	r1, #200	; 0xc8
     46c:	0209      	lsls	r1, r1, #8
     46e:	430a      	orrs	r2, r1
     470:	641a      	str	r2, [r3, #64]	; 0x40
     472:	4b0a      	ldr	r3, [pc, #40]	; (49c <_stack_size+0x9c>)
     474:	4a09      	ldr	r2, [pc, #36]	; (49c <_stack_size+0x9c>)
     476:	6d92      	ldr	r2, [r2, #88]	; 0x58
     478:	21f0      	movs	r1, #240	; 0xf0
     47a:	0149      	lsls	r1, r1, #5
     47c:	430a      	orrs	r2, r1
     47e:	659a      	str	r2, [r3, #88]	; 0x58
     480:	4b06      	ldr	r3, [pc, #24]	; (49c <_stack_size+0x9c>)
     482:	2201      	movs	r2, #1
     484:	60da      	str	r2, [r3, #12]
     486:	200d      	movs	r0, #13
     488:	f7ff fe1a 	bl	c0 <NVIC_EnableIRQ>
     48c:	46c0      	nop			; (mov r8, r8)
     48e:	46bd      	mov	sp, r7
     490:	bd80      	pop	{r7, pc}
     492:	46c0      	nop			; (mov r8, r8)
     494:	40020000 	.word	0x40020000
     498:	ff00ffff 	.word	0xff00ffff
     49c:	40098000 	.word	0x40098000
     4a0:	000003e7 	.word	0x000003e7
     4a4:	fffff1ff 	.word	0xfffff1ff
     4a8:	fffff0ff 	.word	0xfffff0ff

000004ac <uart1_putch>:
     4ac:	b580      	push	{r7, lr}
     4ae:	b082      	sub	sp, #8
     4b0:	af00      	add	r7, sp, #0
     4b2:	0002      	movs	r2, r0
     4b4:	1dfb      	adds	r3, r7, #7
     4b6:	701a      	strb	r2, [r3, #0]
     4b8:	46c0      	nop			; (mov r8, r8)
     4ba:	4b06      	ldr	r3, [pc, #24]	; (4d4 <uart1_putch+0x28>)
     4bc:	699b      	ldr	r3, [r3, #24]
     4be:	2220      	movs	r2, #32
     4c0:	4013      	ands	r3, r2
     4c2:	d1fa      	bne.n	4ba <uart1_putch+0xe>
     4c4:	4b03      	ldr	r3, [pc, #12]	; (4d4 <uart1_putch+0x28>)
     4c6:	1dfa      	adds	r2, r7, #7
     4c8:	7812      	ldrb	r2, [r2, #0]
     4ca:	601a      	str	r2, [r3, #0]
     4cc:	46c0      	nop			; (mov r8, r8)
     4ce:	46bd      	mov	sp, r7
     4d0:	b002      	add	sp, #8
     4d2:	bd80      	pop	{r7, pc}
     4d4:	40030000 	.word	0x40030000

000004d8 <UartConfig>:
     4d8:	b580      	push	{r7, lr}
     4da:	af00      	add	r7, sp, #0
     4dc:	4b19      	ldr	r3, [pc, #100]	; (544 <UartConfig+0x6c>)
     4de:	4a19      	ldr	r2, [pc, #100]	; (544 <UartConfig+0x6c>)
     4e0:	69d2      	ldr	r2, [r2, #28]
     4e2:	2140      	movs	r1, #64	; 0x40
     4e4:	430a      	orrs	r2, r1
     4e6:	61da      	str	r2, [r3, #28]
     4e8:	4b16      	ldr	r3, [pc, #88]	; (544 <UartConfig+0x6c>)
     4ea:	4a16      	ldr	r2, [pc, #88]	; (544 <UartConfig+0x6c>)
     4ec:	6a92      	ldr	r2, [r2, #40]	; 0x28
     4ee:	2180      	movs	r1, #128	; 0x80
     4f0:	0449      	lsls	r1, r1, #17
     4f2:	430a      	orrs	r2, r1
     4f4:	629a      	str	r2, [r3, #40]	; 0x28
     4f6:	4b14      	ldr	r3, [pc, #80]	; (548 <UartConfig+0x70>)
     4f8:	2241      	movs	r2, #65	; 0x41
     4fa:	625a      	str	r2, [r3, #36]	; 0x24
     4fc:	4b12      	ldr	r3, [pc, #72]	; (548 <UartConfig+0x70>)
     4fe:	2207      	movs	r2, #7
     500:	629a      	str	r2, [r3, #40]	; 0x28
     502:	4b11      	ldr	r3, [pc, #68]	; (548 <UartConfig+0x70>)
     504:	4a10      	ldr	r2, [pc, #64]	; (548 <UartConfig+0x70>)
     506:	6b52      	ldr	r2, [r2, #52]	; 0x34
     508:	213f      	movs	r1, #63	; 0x3f
     50a:	438a      	bics	r2, r1
     50c:	635a      	str	r2, [r3, #52]	; 0x34
     50e:	4b0e      	ldr	r3, [pc, #56]	; (548 <UartConfig+0x70>)
     510:	4a0d      	ldr	r2, [pc, #52]	; (548 <UartConfig+0x70>)
     512:	6b52      	ldr	r2, [r2, #52]	; 0x34
     514:	2124      	movs	r1, #36	; 0x24
     516:	430a      	orrs	r2, r1
     518:	635a      	str	r2, [r3, #52]	; 0x34
     51a:	4b0b      	ldr	r3, [pc, #44]	; (548 <UartConfig+0x70>)
     51c:	4a0a      	ldr	r2, [pc, #40]	; (548 <UartConfig+0x70>)
     51e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     520:	2110      	movs	r1, #16
     522:	430a      	orrs	r2, r1
     524:	62da      	str	r2, [r3, #44]	; 0x2c
     526:	4b08      	ldr	r3, [pc, #32]	; (548 <UartConfig+0x70>)
     528:	4a07      	ldr	r2, [pc, #28]	; (548 <UartConfig+0x70>)
     52a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     52c:	2160      	movs	r1, #96	; 0x60
     52e:	430a      	orrs	r2, r1
     530:	62da      	str	r2, [r3, #44]	; 0x2c
     532:	4b05      	ldr	r3, [pc, #20]	; (548 <UartConfig+0x70>)
     534:	4a04      	ldr	r2, [pc, #16]	; (548 <UartConfig+0x70>)
     536:	6b12      	ldr	r2, [r2, #48]	; 0x30
     538:	4904      	ldr	r1, [pc, #16]	; (54c <UartConfig+0x74>)
     53a:	430a      	orrs	r2, r1
     53c:	631a      	str	r2, [r3, #48]	; 0x30
     53e:	46c0      	nop			; (mov r8, r8)
     540:	46bd      	mov	sp, r7
     542:	bd80      	pop	{r7, pc}
     544:	40020000 	.word	0x40020000
     548:	40030000 	.word	0x40030000
     54c:	00000301 	.word	0x00000301

00000550 <usb_device_init>:
     550:	b580      	push	{r7, lr}
     552:	af00      	add	r7, sp, #0
     554:	4b1c      	ldr	r3, [pc, #112]	; (5c8 <usb_device_init+0x78>)
     556:	4a1c      	ldr	r2, [pc, #112]	; (5c8 <usb_device_init+0x78>)
     558:	69d2      	ldr	r2, [r2, #28]
     55a:	2104      	movs	r1, #4
     55c:	430a      	orrs	r2, r1
     55e:	61da      	str	r2, [r3, #28]
     560:	4b19      	ldr	r3, [pc, #100]	; (5c8 <usb_device_init+0x78>)
     562:	2283      	movs	r2, #131	; 0x83
     564:	0052      	lsls	r2, r2, #1
     566:	611a      	str	r2, [r3, #16]
     568:	4b17      	ldr	r3, [pc, #92]	; (5c8 <usb_device_init+0x78>)
     56a:	4a17      	ldr	r2, [pc, #92]	; (5c8 <usb_device_init+0x78>)
     56c:	6852      	ldr	r2, [r2, #4]
     56e:	2151      	movs	r1, #81	; 0x51
     570:	430a      	orrs	r2, r1
     572:	605a      	str	r2, [r3, #4]
     574:	46c0      	nop			; (mov r8, r8)
     576:	4b14      	ldr	r3, [pc, #80]	; (5c8 <usb_device_init+0x78>)
     578:	681b      	ldr	r3, [r3, #0]
     57a:	2201      	movs	r2, #1
     57c:	4013      	ands	r3, r2
     57e:	d0fa      	beq.n	576 <usb_device_init+0x26>
     580:	4a12      	ldr	r2, [pc, #72]	; (5cc <usb_device_init+0x7c>)
     582:	23e0      	movs	r3, #224	; 0xe0
     584:	009b      	lsls	r3, r3, #2
     586:	2102      	movs	r1, #2
     588:	50d1      	str	r1, [r2, r3]
     58a:	2001      	movs	r0, #1
     58c:	f7ff fe0a 	bl	1a4 <sleep>
     590:	4a0e      	ldr	r2, [pc, #56]	; (5cc <usb_device_init+0x7c>)
     592:	23e0      	movs	r3, #224	; 0xe0
     594:	009b      	lsls	r3, r3, #2
     596:	211c      	movs	r1, #28
     598:	50d1      	str	r1, [r2, r3]
     59a:	490c      	ldr	r1, [pc, #48]	; (5cc <usb_device_init+0x7c>)
     59c:	4a0b      	ldr	r2, [pc, #44]	; (5cc <usb_device_init+0x7c>)
     59e:	23a0      	movs	r3, #160	; 0xa0
     5a0:	005b      	lsls	r3, r3, #1
     5a2:	58d3      	ldr	r3, [r2, r3]
     5a4:	2231      	movs	r2, #49	; 0x31
     5a6:	431a      	orrs	r2, r3
     5a8:	23a0      	movs	r3, #160	; 0xa0
     5aa:	005b      	lsls	r3, r3, #1
     5ac:	50ca      	str	r2, [r1, r3]
     5ae:	4907      	ldr	r1, [pc, #28]	; (5cc <usb_device_init+0x7c>)
     5b0:	4a06      	ldr	r2, [pc, #24]	; (5cc <usb_device_init+0x7c>)
     5b2:	2380      	movs	r3, #128	; 0x80
     5b4:	005b      	lsls	r3, r3, #1
     5b6:	58d3      	ldr	r3, [r2, r3]
     5b8:	2203      	movs	r2, #3
     5ba:	431a      	orrs	r2, r3
     5bc:	2380      	movs	r3, #128	; 0x80
     5be:	005b      	lsls	r3, r3, #1
     5c0:	50ca      	str	r2, [r1, r3]
     5c2:	46c0      	nop			; (mov r8, r8)
     5c4:	46bd      	mov	sp, r7
     5c6:	bd80      	pop	{r7, pc}
     5c8:	40020000 	.word	0x40020000
     5cc:	40010000 	.word	0x40010000

000005d0 <usb_reset>:
     5d0:	b580      	push	{r7, lr}
     5d2:	af00      	add	r7, sp, #0
     5d4:	4906      	ldr	r1, [pc, #24]	; (5f0 <usb_reset+0x20>)
     5d6:	4a06      	ldr	r2, [pc, #24]	; (5f0 <usb_reset+0x20>)
     5d8:	2380      	movs	r3, #128	; 0x80
     5da:	005b      	lsls	r3, r3, #1
     5dc:	58d3      	ldr	r3, [r2, r3]
     5de:	2204      	movs	r2, #4
     5e0:	4393      	bics	r3, r2
     5e2:	001a      	movs	r2, r3
     5e4:	2380      	movs	r3, #128	; 0x80
     5e6:	005b      	lsls	r3, r3, #1
     5e8:	50ca      	str	r2, [r1, r3]
     5ea:	46c0      	nop			; (mov r8, r8)
     5ec:	46bd      	mov	sp, r7
     5ee:	bd80      	pop	{r7, pc}
     5f0:	40010000 	.word	0x40010000

000005f4 <usb_device_update>:
     5f4:	b580      	push	{r7, lr}
     5f6:	b082      	sub	sp, #8
     5f8:	af00      	add	r7, sp, #0
     5fa:	4a2a      	ldr	r2, [pc, #168]	; (6a4 <usb_device_update+0xb0>)
     5fc:	23a4      	movs	r3, #164	; 0xa4
     5fe:	005b      	lsls	r3, r3, #1
     600:	58d3      	ldr	r3, [r2, r3]
     602:	607b      	str	r3, [r7, #4]
     604:	4a27      	ldr	r2, [pc, #156]	; (6a4 <usb_device_update+0xb0>)
     606:	23a4      	movs	r3, #164	; 0xa4
     608:	005b      	lsls	r3, r3, #1
     60a:	2100      	movs	r1, #0
     60c:	50d1      	str	r1, [r2, r3]
     60e:	687b      	ldr	r3, [r7, #4]
     610:	2204      	movs	r2, #4
     612:	4013      	ands	r3, r2
     614:	d010      	beq.n	638 <usb_device_update+0x44>
     616:	4923      	ldr	r1, [pc, #140]	; (6a4 <usb_device_update+0xb0>)
     618:	4a22      	ldr	r2, [pc, #136]	; (6a4 <usb_device_update+0xb0>)
     61a:	23a4      	movs	r3, #164	; 0xa4
     61c:	005b      	lsls	r3, r3, #1
     61e:	58d3      	ldr	r3, [r2, r3]
     620:	2204      	movs	r2, #4
     622:	431a      	orrs	r2, r3
     624:	23a4      	movs	r3, #164	; 0xa4
     626:	005b      	lsls	r3, r3, #1
     628:	50ca      	str	r2, [r1, r3]
     62a:	f7ff ffd1 	bl	5d0 <usb_reset>
     62e:	4b1e      	ldr	r3, [pc, #120]	; (6a8 <usb_device_update+0xb4>)
     630:	0018      	movs	r0, r3
     632:	f000 fced 	bl	1010 <xprintf>
     636:	e031      	b.n	69c <usb_device_update+0xa8>
     638:	687b      	ldr	r3, [r7, #4]
     63a:	2201      	movs	r2, #1
     63c:	4013      	ands	r3, r2
     63e:	d02d      	beq.n	69c <usb_device_update+0xa8>
     640:	4918      	ldr	r1, [pc, #96]	; (6a4 <usb_device_update+0xb0>)
     642:	4a18      	ldr	r2, [pc, #96]	; (6a4 <usb_device_update+0xb0>)
     644:	23a4      	movs	r3, #164	; 0xa4
     646:	005b      	lsls	r3, r3, #1
     648:	58d3      	ldr	r3, [r2, r3]
     64a:	2201      	movs	r2, #1
     64c:	431a      	orrs	r2, r3
     64e:	23a4      	movs	r3, #164	; 0xa4
     650:	005b      	lsls	r3, r3, #1
     652:	50ca      	str	r2, [r1, r3]
     654:	4a13      	ldr	r2, [pc, #76]	; (6a4 <usb_device_update+0xb0>)
     656:	2384      	movs	r3, #132	; 0x84
     658:	005b      	lsls	r3, r3, #1
     65a:	58d3      	ldr	r3, [r2, r3]
     65c:	22ff      	movs	r2, #255	; 0xff
     65e:	4013      	ands	r3, r2
     660:	603b      	str	r3, [r7, #0]
     662:	683b      	ldr	r3, [r7, #0]
     664:	2b00      	cmp	r3, #0
     666:	d105      	bne.n	674 <usb_device_update+0x80>
     668:	4b10      	ldr	r3, [pc, #64]	; (6ac <usb_device_update+0xb8>)
     66a:	0018      	movs	r0, r3
     66c:	f000 fcd0 	bl	1010 <xprintf>
     670:	f000 f9fc 	bl	a6c <setup0_proc>
     674:	683b      	ldr	r3, [r7, #0]
     676:	2b01      	cmp	r3, #1
     678:	d106      	bne.n	688 <usb_device_update+0x94>
     67a:	4b0d      	ldr	r3, [pc, #52]	; (6b0 <usb_device_update+0xbc>)
     67c:	0018      	movs	r0, r3
     67e:	f000 fcc7 	bl	1010 <xprintf>
     682:	4b0c      	ldr	r3, [pc, #48]	; (6b4 <usb_device_update+0xc0>)
     684:	681b      	ldr	r3, [r3, #0]
     686:	4798      	blx	r3
     688:	683b      	ldr	r3, [r7, #0]
     68a:	2b02      	cmp	r3, #2
     68c:	d106      	bne.n	69c <usb_device_update+0xa8>
     68e:	4b0a      	ldr	r3, [pc, #40]	; (6b8 <usb_device_update+0xc4>)
     690:	0018      	movs	r0, r3
     692:	f000 fcbd 	bl	1010 <xprintf>
     696:	4b09      	ldr	r3, [pc, #36]	; (6bc <usb_device_update+0xc8>)
     698:	681b      	ldr	r3, [r3, #0]
     69a:	4798      	blx	r3
     69c:	46c0      	nop			; (mov r8, r8)
     69e:	46bd      	mov	sp, r7
     6a0:	b002      	add	sp, #8
     6a2:	bd80      	pop	{r7, pc}
     6a4:	40010000 	.word	0x40010000
     6a8:	000015a0 	.word	0x000015a0
     6ac:	000015a8 	.word	0x000015a8
     6b0:	000015b4 	.word	0x000015b4
     6b4:	20000004 	.word	0x20000004
     6b8:	000015c0 	.word	0x000015c0
     6bc:	20000008 	.word	0x20000008

000006c0 <SystemInit>:
     6c0:	b580      	push	{r7, lr}
     6c2:	af00      	add	r7, sp, #0
     6c4:	f7ff fe3e 	bl	344 <ClkConfig>
     6c8:	f7ff fda0 	bl	20c <PortConfig>
     6cc:	f7ff ff04 	bl	4d8 <UartConfig>
     6d0:	4b04      	ldr	r3, [pc, #16]	; (6e4 <SystemInit+0x24>)
     6d2:	0018      	movs	r0, r3
     6d4:	f7ff fd40 	bl	158 <SysTick_Config>
     6d8:	f7ff ff3a 	bl	550 <usb_device_init>
     6dc:	46c0      	nop			; (mov r8, r8)
     6de:	46bd      	mov	sp, r7
     6e0:	bd80      	pop	{r7, pc}
     6e2:	46c0      	nop			; (mov r8, r8)
     6e4:	0001d4c0 	.word	0x0001d4c0

000006e8 <null_proc>:
     6e8:	b580      	push	{r7, lr}
     6ea:	af00      	add	r7, sp, #0
     6ec:	46c0      	nop			; (mov r8, r8)
     6ee:	46bd      	mov	sp, r7
     6f0:	bd80      	pop	{r7, pc}
     6f2:	46c0      	nop			; (mov r8, r8)

000006f4 <enable_RX_proc>:
     6f4:	b580      	push	{r7, lr}
     6f6:	af00      	add	r7, sp, #0
     6f8:	4906      	ldr	r1, [pc, #24]	; (714 <enable_RX_proc+0x20>)
     6fa:	4a06      	ldr	r2, [pc, #24]	; (714 <enable_RX_proc+0x20>)
     6fc:	2380      	movs	r3, #128	; 0x80
     6fe:	005b      	lsls	r3, r3, #1
     700:	58d3      	ldr	r3, [r2, r3]
     702:	2202      	movs	r2, #2
     704:	431a      	orrs	r2, r3
     706:	2380      	movs	r3, #128	; 0x80
     708:	005b      	lsls	r3, r3, #1
     70a:	50ca      	str	r2, [r1, r3]
     70c:	46c0      	nop			; (mov r8, r8)
     70e:	46bd      	mov	sp, r7
     710:	bd80      	pop	{r7, pc}
     712:	46c0      	nop			; (mov r8, r8)
     714:	40010000 	.word	0x40010000

00000718 <plan_ZeroLength_OUT_proc>:
     718:	b580      	push	{r7, lr}
     71a:	af00      	add	r7, sp, #0
     71c:	4909      	ldr	r1, [pc, #36]	; (744 <plan_ZeroLength_OUT_proc+0x2c>)
     71e:	4a09      	ldr	r2, [pc, #36]	; (744 <plan_ZeroLength_OUT_proc+0x2c>)
     720:	2380      	movs	r3, #128	; 0x80
     722:	005b      	lsls	r3, r3, #1
     724:	58d3      	ldr	r3, [r2, r3]
     726:	2202      	movs	r2, #2
     728:	431a      	orrs	r2, r3
     72a:	2380      	movs	r3, #128	; 0x80
     72c:	005b      	lsls	r3, r3, #1
     72e:	50ca      	str	r2, [r1, r3]
     730:	4b05      	ldr	r3, [pc, #20]	; (748 <plan_ZeroLength_OUT_proc+0x30>)
     732:	4a06      	ldr	r2, [pc, #24]	; (74c <plan_ZeroLength_OUT_proc+0x34>)
     734:	601a      	str	r2, [r3, #0]
     736:	4b06      	ldr	r3, [pc, #24]	; (750 <plan_ZeroLength_OUT_proc+0x38>)
     738:	4a06      	ldr	r2, [pc, #24]	; (754 <plan_ZeroLength_OUT_proc+0x3c>)
     73a:	601a      	str	r2, [r3, #0]
     73c:	46c0      	nop			; (mov r8, r8)
     73e:	46bd      	mov	sp, r7
     740:	bd80      	pop	{r7, pc}
     742:	46c0      	nop			; (mov r8, r8)
     744:	40010000 	.word	0x40010000
     748:	20000004 	.word	0x20000004
     74c:	000006e9 	.word	0x000006e9
     750:	20000008 	.word	0x20000008
     754:	000006f5 	.word	0x000006f5

00000758 <plan_ZeroLength_IN_proc>:
     758:	b580      	push	{r7, lr}
     75a:	af00      	add	r7, sp, #0
     75c:	4a0d      	ldr	r2, [pc, #52]	; (794 <plan_ZeroLength_IN_proc+0x3c>)
     75e:	23e8      	movs	r3, #232	; 0xe8
     760:	005b      	lsls	r3, r3, #1
     762:	2101      	movs	r1, #1
     764:	50d1      	str	r1, [r2, r3]
     766:	490b      	ldr	r1, [pc, #44]	; (794 <plan_ZeroLength_IN_proc+0x3c>)
     768:	4a0a      	ldr	r2, [pc, #40]	; (794 <plan_ZeroLength_IN_proc+0x3c>)
     76a:	2380      	movs	r3, #128	; 0x80
     76c:	005b      	lsls	r3, r3, #1
     76e:	58d3      	ldr	r3, [r2, r3]
     770:	2204      	movs	r2, #4
     772:	431a      	orrs	r2, r3
     774:	2380      	movs	r3, #128	; 0x80
     776:	005b      	lsls	r3, r3, #1
     778:	50ca      	str	r2, [r1, r3]
     77a:	4906      	ldr	r1, [pc, #24]	; (794 <plan_ZeroLength_IN_proc+0x3c>)
     77c:	4a05      	ldr	r2, [pc, #20]	; (794 <plan_ZeroLength_IN_proc+0x3c>)
     77e:	2380      	movs	r3, #128	; 0x80
     780:	005b      	lsls	r3, r3, #1
     782:	58d3      	ldr	r3, [r2, r3]
     784:	2202      	movs	r2, #2
     786:	431a      	orrs	r2, r3
     788:	2380      	movs	r3, #128	; 0x80
     78a:	005b      	lsls	r3, r3, #1
     78c:	50ca      	str	r2, [r1, r3]
     78e:	46c0      	nop			; (mov r8, r8)
     790:	46bd      	mov	sp, r7
     792:	bd80      	pop	{r7, pc}
     794:	40010000 	.word	0x40010000

00000798 <plan_Data_IN_proc>:
     798:	b580      	push	{r7, lr}
     79a:	b084      	sub	sp, #16
     79c:	af00      	add	r7, sp, #0
     79e:	4b2f      	ldr	r3, [pc, #188]	; (85c <plan_Data_IN_proc+0xc4>)
     7a0:	681b      	ldr	r3, [r3, #0]
     7a2:	2b40      	cmp	r3, #64	; 0x40
     7a4:	d900      	bls.n	7a8 <plan_Data_IN_proc+0x10>
     7a6:	2340      	movs	r3, #64	; 0x40
     7a8:	60bb      	str	r3, [r7, #8]
     7aa:	4b2c      	ldr	r3, [pc, #176]	; (85c <plan_Data_IN_proc+0xc4>)
     7ac:	681a      	ldr	r2, [r3, #0]
     7ae:	68bb      	ldr	r3, [r7, #8]
     7b0:	1ad3      	subs	r3, r2, r3
     7b2:	607b      	str	r3, [r7, #4]
     7b4:	68bb      	ldr	r3, [r7, #8]
     7b6:	2b00      	cmp	r3, #0
     7b8:	d032      	beq.n	820 <plan_Data_IN_proc+0x88>
     7ba:	4a29      	ldr	r2, [pc, #164]	; (860 <plan_Data_IN_proc+0xc8>)
     7bc:	23e8      	movs	r3, #232	; 0xe8
     7be:	005b      	lsls	r3, r3, #1
     7c0:	2101      	movs	r1, #1
     7c2:	50d1      	str	r1, [r2, r3]
     7c4:	2300      	movs	r3, #0
     7c6:	60fb      	str	r3, [r7, #12]
     7c8:	e00c      	b.n	7e4 <plan_Data_IN_proc+0x4c>
     7ca:	4925      	ldr	r1, [pc, #148]	; (860 <plan_Data_IN_proc+0xc8>)
     7cc:	4b25      	ldr	r3, [pc, #148]	; (864 <plan_Data_IN_proc+0xcc>)
     7ce:	681a      	ldr	r2, [r3, #0]
     7d0:	68fb      	ldr	r3, [r7, #12]
     7d2:	18d3      	adds	r3, r2, r3
     7d4:	781b      	ldrb	r3, [r3, #0]
     7d6:	001a      	movs	r2, r3
     7d8:	23e0      	movs	r3, #224	; 0xe0
     7da:	005b      	lsls	r3, r3, #1
     7dc:	50ca      	str	r2, [r1, r3]
     7de:	68fb      	ldr	r3, [r7, #12]
     7e0:	3301      	adds	r3, #1
     7e2:	60fb      	str	r3, [r7, #12]
     7e4:	68fa      	ldr	r2, [r7, #12]
     7e6:	68bb      	ldr	r3, [r7, #8]
     7e8:	429a      	cmp	r2, r3
     7ea:	d3ee      	bcc.n	7ca <plan_Data_IN_proc+0x32>
     7ec:	68ba      	ldr	r2, [r7, #8]
     7ee:	4b1e      	ldr	r3, [pc, #120]	; (868 <plan_Data_IN_proc+0xd0>)
     7f0:	0011      	movs	r1, r2
     7f2:	0018      	movs	r0, r3
     7f4:	f000 fc0c 	bl	1010 <xprintf>
     7f8:	4919      	ldr	r1, [pc, #100]	; (860 <plan_Data_IN_proc+0xc8>)
     7fa:	4a19      	ldr	r2, [pc, #100]	; (860 <plan_Data_IN_proc+0xc8>)
     7fc:	2380      	movs	r3, #128	; 0x80
     7fe:	005b      	lsls	r3, r3, #1
     800:	58d3      	ldr	r3, [r2, r3]
     802:	2204      	movs	r2, #4
     804:	405a      	eors	r2, r3
     806:	2380      	movs	r3, #128	; 0x80
     808:	005b      	lsls	r3, r3, #1
     80a:	50ca      	str	r2, [r1, r3]
     80c:	4914      	ldr	r1, [pc, #80]	; (860 <plan_Data_IN_proc+0xc8>)
     80e:	4a14      	ldr	r2, [pc, #80]	; (860 <plan_Data_IN_proc+0xc8>)
     810:	2380      	movs	r3, #128	; 0x80
     812:	005b      	lsls	r3, r3, #1
     814:	58d3      	ldr	r3, [r2, r3]
     816:	2202      	movs	r2, #2
     818:	431a      	orrs	r2, r3
     81a:	2380      	movs	r3, #128	; 0x80
     81c:	005b      	lsls	r3, r3, #1
     81e:	50ca      	str	r2, [r1, r3]
     820:	687b      	ldr	r3, [r7, #4]
     822:	2b00      	cmp	r3, #0
     824:	d012      	beq.n	84c <plan_Data_IN_proc+0xb4>
     826:	4b0d      	ldr	r3, [pc, #52]	; (85c <plan_Data_IN_proc+0xc4>)
     828:	687a      	ldr	r2, [r7, #4]
     82a:	601a      	str	r2, [r3, #0]
     82c:	4b0d      	ldr	r3, [pc, #52]	; (864 <plan_Data_IN_proc+0xcc>)
     82e:	681a      	ldr	r2, [r3, #0]
     830:	68bb      	ldr	r3, [r7, #8]
     832:	18d2      	adds	r2, r2, r3
     834:	4b0b      	ldr	r3, [pc, #44]	; (864 <plan_Data_IN_proc+0xcc>)
     836:	601a      	str	r2, [r3, #0]
     838:	4b0c      	ldr	r3, [pc, #48]	; (86c <plan_Data_IN_proc+0xd4>)
     83a:	4a0d      	ldr	r2, [pc, #52]	; (870 <plan_Data_IN_proc+0xd8>)
     83c:	601a      	str	r2, [r3, #0]
     83e:	687a      	ldr	r2, [r7, #4]
     840:	4b0c      	ldr	r3, [pc, #48]	; (874 <plan_Data_IN_proc+0xdc>)
     842:	0011      	movs	r1, r2
     844:	0018      	movs	r0, r3
     846:	f000 fbe3 	bl	1010 <xprintf>
     84a:	e002      	b.n	852 <plan_Data_IN_proc+0xba>
     84c:	4b07      	ldr	r3, [pc, #28]	; (86c <plan_Data_IN_proc+0xd4>)
     84e:	4a0a      	ldr	r2, [pc, #40]	; (878 <plan_Data_IN_proc+0xe0>)
     850:	601a      	str	r2, [r3, #0]
     852:	46c0      	nop			; (mov r8, r8)
     854:	46bd      	mov	sp, r7
     856:	b004      	add	sp, #16
     858:	bd80      	pop	{r7, pc}
     85a:	46c0      	nop			; (mov r8, r8)
     85c:	2000003c 	.word	0x2000003c
     860:	40010000 	.word	0x40010000
     864:	20000040 	.word	0x20000040
     868:	000015cc 	.word	0x000015cc
     86c:	20000004 	.word	0x20000004
     870:	00000799 	.word	0x00000799
     874:	000015d4 	.word	0x000015d4
     878:	00000719 	.word	0x00000719

0000087c <string_descriptor_proc>:
     87c:	b580      	push	{r7, lr}
     87e:	b082      	sub	sp, #8
     880:	af00      	add	r7, sp, #0
     882:	4b1a      	ldr	r3, [pc, #104]	; (8ec <string_descriptor_proc+0x70>)
     884:	789b      	ldrb	r3, [r3, #2]
     886:	607b      	str	r3, [r7, #4]
     888:	687b      	ldr	r3, [r7, #4]
     88a:	2b01      	cmp	r3, #1
     88c:	d00e      	beq.n	8ac <string_descriptor_proc+0x30>
     88e:	d304      	bcc.n	89a <string_descriptor_proc+0x1e>
     890:	2b02      	cmp	r3, #2
     892:	d014      	beq.n	8be <string_descriptor_proc+0x42>
     894:	2b03      	cmp	r3, #3
     896:	d01b      	beq.n	8d0 <string_descriptor_proc+0x54>
     898:	e023      	b.n	8e2 <string_descriptor_proc+0x66>
     89a:	4b15      	ldr	r3, [pc, #84]	; (8f0 <string_descriptor_proc+0x74>)
     89c:	2204      	movs	r2, #4
     89e:	601a      	str	r2, [r3, #0]
     8a0:	4b14      	ldr	r3, [pc, #80]	; (8f4 <string_descriptor_proc+0x78>)
     8a2:	4a15      	ldr	r2, [pc, #84]	; (8f8 <string_descriptor_proc+0x7c>)
     8a4:	601a      	str	r2, [r3, #0]
     8a6:	f7ff ff77 	bl	798 <plan_Data_IN_proc>
     8aa:	e01a      	b.n	8e2 <string_descriptor_proc+0x66>
     8ac:	4b10      	ldr	r3, [pc, #64]	; (8f0 <string_descriptor_proc+0x74>)
     8ae:	2226      	movs	r2, #38	; 0x26
     8b0:	601a      	str	r2, [r3, #0]
     8b2:	4b10      	ldr	r3, [pc, #64]	; (8f4 <string_descriptor_proc+0x78>)
     8b4:	4a11      	ldr	r2, [pc, #68]	; (8fc <string_descriptor_proc+0x80>)
     8b6:	601a      	str	r2, [r3, #0]
     8b8:	f7ff ff6e 	bl	798 <plan_Data_IN_proc>
     8bc:	e011      	b.n	8e2 <string_descriptor_proc+0x66>
     8be:	4b0c      	ldr	r3, [pc, #48]	; (8f0 <string_descriptor_proc+0x74>)
     8c0:	2232      	movs	r2, #50	; 0x32
     8c2:	601a      	str	r2, [r3, #0]
     8c4:	4b0b      	ldr	r3, [pc, #44]	; (8f4 <string_descriptor_proc+0x78>)
     8c6:	4a0e      	ldr	r2, [pc, #56]	; (900 <string_descriptor_proc+0x84>)
     8c8:	601a      	str	r2, [r3, #0]
     8ca:	f7ff ff65 	bl	798 <plan_Data_IN_proc>
     8ce:	e008      	b.n	8e2 <string_descriptor_proc+0x66>
     8d0:	4b07      	ldr	r3, [pc, #28]	; (8f0 <string_descriptor_proc+0x74>)
     8d2:	221a      	movs	r2, #26
     8d4:	601a      	str	r2, [r3, #0]
     8d6:	4b07      	ldr	r3, [pc, #28]	; (8f4 <string_descriptor_proc+0x78>)
     8d8:	4a0a      	ldr	r2, [pc, #40]	; (904 <string_descriptor_proc+0x88>)
     8da:	601a      	str	r2, [r3, #0]
     8dc:	f7ff ff5c 	bl	798 <plan_Data_IN_proc>
     8e0:	46c0      	nop			; (mov r8, r8)
     8e2:	46c0      	nop			; (mov r8, r8)
     8e4:	46bd      	mov	sp, r7
     8e6:	b002      	add	sp, #8
     8e8:	bd80      	pop	{r7, pc}
     8ea:	46c0      	nop			; (mov r8, r8)
     8ec:	20000034 	.word	0x20000034
     8f0:	2000003c 	.word	0x2000003c
     8f4:	20000040 	.word	0x20000040
     8f8:	000017d8 	.word	0x000017d8
     8fc:	000017dc 	.word	0x000017dc
     900:	00001804 	.word	0x00001804
     904:	2000000c 	.word	0x2000000c

00000908 <get_descriptor_proc>:
     908:	b580      	push	{r7, lr}
     90a:	b082      	sub	sp, #8
     90c:	af00      	add	r7, sp, #0
     90e:	4b2e      	ldr	r3, [pc, #184]	; (9c8 <get_descriptor_proc+0xc0>)
     910:	78db      	ldrb	r3, [r3, #3]
     912:	607b      	str	r3, [r7, #4]
     914:	4b2c      	ldr	r3, [pc, #176]	; (9c8 <get_descriptor_proc+0xc0>)
     916:	799b      	ldrb	r3, [r3, #6]
     918:	001a      	movs	r2, r3
     91a:	4b2b      	ldr	r3, [pc, #172]	; (9c8 <get_descriptor_proc+0xc0>)
     91c:	79db      	ldrb	r3, [r3, #7]
     91e:	021b      	lsls	r3, r3, #8
     920:	4313      	orrs	r3, r2
     922:	603b      	str	r3, [r7, #0]
     924:	687b      	ldr	r3, [r7, #4]
     926:	2b02      	cmp	r3, #2
     928:	d02a      	beq.n	980 <get_descriptor_proc+0x78>
     92a:	d802      	bhi.n	932 <get_descriptor_proc+0x2a>
     92c:	2b01      	cmp	r3, #1
     92e:	d005      	beq.n	93c <get_descriptor_proc+0x34>
     930:	e045      	b.n	9be <get_descriptor_proc+0xb6>
     932:	2b03      	cmp	r3, #3
     934:	d03c      	beq.n	9b0 <get_descriptor_proc+0xa8>
     936:	2b06      	cmp	r3, #6
     938:	d018      	beq.n	96c <get_descriptor_proc+0x64>
     93a:	e040      	b.n	9be <get_descriptor_proc+0xb6>
     93c:	4b23      	ldr	r3, [pc, #140]	; (9cc <get_descriptor_proc+0xc4>)
     93e:	683a      	ldr	r2, [r7, #0]
     940:	601a      	str	r2, [r3, #0]
     942:	4b23      	ldr	r3, [pc, #140]	; (9d0 <get_descriptor_proc+0xc8>)
     944:	4a23      	ldr	r2, [pc, #140]	; (9d4 <get_descriptor_proc+0xcc>)
     946:	601a      	str	r2, [r3, #0]
     948:	4923      	ldr	r1, [pc, #140]	; (9d8 <get_descriptor_proc+0xd0>)
     94a:	4a23      	ldr	r2, [pc, #140]	; (9d8 <get_descriptor_proc+0xd0>)
     94c:	2380      	movs	r3, #128	; 0x80
     94e:	005b      	lsls	r3, r3, #1
     950:	58d3      	ldr	r3, [r2, r3]
     952:	2204      	movs	r2, #4
     954:	4393      	bics	r3, r2
     956:	001a      	movs	r2, r3
     958:	2380      	movs	r3, #128	; 0x80
     95a:	005b      	lsls	r3, r3, #1
     95c:	50ca      	str	r2, [r1, r3]
     95e:	f7ff ff1b 	bl	798 <plan_Data_IN_proc>
     962:	4b1e      	ldr	r3, [pc, #120]	; (9dc <get_descriptor_proc+0xd4>)
     964:	0018      	movs	r0, r3
     966:	f000 fb53 	bl	1010 <xprintf>
     96a:	e028      	b.n	9be <get_descriptor_proc+0xb6>
     96c:	f7ff fef4 	bl	758 <plan_ZeroLength_IN_proc>
     970:	4b1b      	ldr	r3, [pc, #108]	; (9e0 <get_descriptor_proc+0xd8>)
     972:	4a1c      	ldr	r2, [pc, #112]	; (9e4 <get_descriptor_proc+0xdc>)
     974:	601a      	str	r2, [r3, #0]
     976:	4b1c      	ldr	r3, [pc, #112]	; (9e8 <get_descriptor_proc+0xe0>)
     978:	0018      	movs	r0, r3
     97a:	f000 fb49 	bl	1010 <xprintf>
     97e:	e01e      	b.n	9be <get_descriptor_proc+0xb6>
     980:	4b12      	ldr	r3, [pc, #72]	; (9cc <get_descriptor_proc+0xc4>)
     982:	683a      	ldr	r2, [r7, #0]
     984:	601a      	str	r2, [r3, #0]
     986:	4b12      	ldr	r3, [pc, #72]	; (9d0 <get_descriptor_proc+0xc8>)
     988:	4a18      	ldr	r2, [pc, #96]	; (9ec <get_descriptor_proc+0xe4>)
     98a:	601a      	str	r2, [r3, #0]
     98c:	4912      	ldr	r1, [pc, #72]	; (9d8 <get_descriptor_proc+0xd0>)
     98e:	4a12      	ldr	r2, [pc, #72]	; (9d8 <get_descriptor_proc+0xd0>)
     990:	2380      	movs	r3, #128	; 0x80
     992:	005b      	lsls	r3, r3, #1
     994:	58d3      	ldr	r3, [r2, r3]
     996:	2204      	movs	r2, #4
     998:	4393      	bics	r3, r2
     99a:	001a      	movs	r2, r3
     99c:	2380      	movs	r3, #128	; 0x80
     99e:	005b      	lsls	r3, r3, #1
     9a0:	50ca      	str	r2, [r1, r3]
     9a2:	f7ff fef9 	bl	798 <plan_Data_IN_proc>
     9a6:	4b12      	ldr	r3, [pc, #72]	; (9f0 <get_descriptor_proc+0xe8>)
     9a8:	0018      	movs	r0, r3
     9aa:	f000 fb31 	bl	1010 <xprintf>
     9ae:	e006      	b.n	9be <get_descriptor_proc+0xb6>
     9b0:	f7ff ff64 	bl	87c <string_descriptor_proc>
     9b4:	4b0f      	ldr	r3, [pc, #60]	; (9f4 <get_descriptor_proc+0xec>)
     9b6:	0018      	movs	r0, r3
     9b8:	f000 fb2a 	bl	1010 <xprintf>
     9bc:	46c0      	nop			; (mov r8, r8)
     9be:	46c0      	nop			; (mov r8, r8)
     9c0:	46bd      	mov	sp, r7
     9c2:	b002      	add	sp, #8
     9c4:	bd80      	pop	{r7, pc}
     9c6:	46c0      	nop			; (mov r8, r8)
     9c8:	20000034 	.word	0x20000034
     9cc:	2000003c 	.word	0x2000003c
     9d0:	20000040 	.word	0x20000040
     9d4:	00001780 	.word	0x00001780
     9d8:	40010000 	.word	0x40010000
     9dc:	000015dc 	.word	0x000015dc
     9e0:	20000004 	.word	0x20000004
     9e4:	00000719 	.word	0x00000719
     9e8:	000015e8 	.word	0x000015e8
     9ec:	00001794 	.word	0x00001794
     9f0:	000015f4 	.word	0x000015f4
     9f4:	00001604 	.word	0x00001604

000009f8 <input0_for_setaddr_proc>:
     9f8:	b580      	push	{r7, lr}
     9fa:	af00      	add	r7, sp, #0
     9fc:	4a0b      	ldr	r2, [pc, #44]	; (a2c <input0_for_setaddr_proc+0x34>)
     9fe:	4b0c      	ldr	r3, [pc, #48]	; (a30 <input0_for_setaddr_proc+0x38>)
     a00:	881b      	ldrh	r3, [r3, #0]
     a02:	0019      	movs	r1, r3
     a04:	23a8      	movs	r3, #168	; 0xa8
     a06:	005b      	lsls	r3, r3, #1
     a08:	50d1      	str	r1, [r2, r3]
     a0a:	4908      	ldr	r1, [pc, #32]	; (a2c <input0_for_setaddr_proc+0x34>)
     a0c:	4a07      	ldr	r2, [pc, #28]	; (a2c <input0_for_setaddr_proc+0x34>)
     a0e:	2380      	movs	r3, #128	; 0x80
     a10:	005b      	lsls	r3, r3, #1
     a12:	58d3      	ldr	r3, [r2, r3]
     a14:	2202      	movs	r2, #2
     a16:	431a      	orrs	r2, r3
     a18:	2380      	movs	r3, #128	; 0x80
     a1a:	005b      	lsls	r3, r3, #1
     a1c:	50ca      	str	r2, [r1, r3]
     a1e:	4b05      	ldr	r3, [pc, #20]	; (a34 <input0_for_setaddr_proc+0x3c>)
     a20:	4a05      	ldr	r2, [pc, #20]	; (a38 <input0_for_setaddr_proc+0x40>)
     a22:	601a      	str	r2, [r3, #0]
     a24:	46c0      	nop			; (mov r8, r8)
     a26:	46bd      	mov	sp, r7
     a28:	bd80      	pop	{r7, pc}
     a2a:	46c0      	nop			; (mov r8, r8)
     a2c:	40010000 	.word	0x40010000
     a30:	20000044 	.word	0x20000044
     a34:	20000004 	.word	0x20000004
     a38:	000006e9 	.word	0x000006e9

00000a3c <input0_for_setconfig_proc>:
     a3c:	b580      	push	{r7, lr}
     a3e:	af00      	add	r7, sp, #0
     a40:	4907      	ldr	r1, [pc, #28]	; (a60 <input0_for_setconfig_proc+0x24>)
     a42:	4a07      	ldr	r2, [pc, #28]	; (a60 <input0_for_setconfig_proc+0x24>)
     a44:	2380      	movs	r3, #128	; 0x80
     a46:	005b      	lsls	r3, r3, #1
     a48:	58d3      	ldr	r3, [r2, r3]
     a4a:	2202      	movs	r2, #2
     a4c:	431a      	orrs	r2, r3
     a4e:	2380      	movs	r3, #128	; 0x80
     a50:	005b      	lsls	r3, r3, #1
     a52:	50ca      	str	r2, [r1, r3]
     a54:	4b03      	ldr	r3, [pc, #12]	; (a64 <input0_for_setconfig_proc+0x28>)
     a56:	4a04      	ldr	r2, [pc, #16]	; (a68 <input0_for_setconfig_proc+0x2c>)
     a58:	601a      	str	r2, [r3, #0]
     a5a:	46c0      	nop			; (mov r8, r8)
     a5c:	46bd      	mov	sp, r7
     a5e:	bd80      	pop	{r7, pc}
     a60:	40010000 	.word	0x40010000
     a64:	20000004 	.word	0x20000004
     a68:	000006e9 	.word	0x000006e9

00000a6c <setup0_proc>:
     a6c:	b580      	push	{r7, lr}
     a6e:	b082      	sub	sp, #8
     a70:	af00      	add	r7, sp, #0
     a72:	4a34      	ldr	r2, [pc, #208]	; (b44 <setup0_proc+0xd8>)
     a74:	23c6      	movs	r3, #198	; 0xc6
     a76:	005b      	lsls	r3, r3, #1
     a78:	58d3      	ldr	r3, [r2, r3]
     a7a:	607b      	str	r3, [r7, #4]
     a7c:	4b32      	ldr	r3, [pc, #200]	; (b48 <setup0_proc+0xdc>)
     a7e:	2200      	movs	r2, #0
     a80:	601a      	str	r2, [r3, #0]
     a82:	e00d      	b.n	aa0 <setup0_proc+0x34>
     a84:	4b30      	ldr	r3, [pc, #192]	; (b48 <setup0_proc+0xdc>)
     a86:	681b      	ldr	r3, [r3, #0]
     a88:	492e      	ldr	r1, [pc, #184]	; (b44 <setup0_proc+0xd8>)
     a8a:	22c0      	movs	r2, #192	; 0xc0
     a8c:	0052      	lsls	r2, r2, #1
     a8e:	588a      	ldr	r2, [r1, r2]
     a90:	b2d1      	uxtb	r1, r2
     a92:	4a2e      	ldr	r2, [pc, #184]	; (b4c <setup0_proc+0xe0>)
     a94:	54d1      	strb	r1, [r2, r3]
     a96:	4b2c      	ldr	r3, [pc, #176]	; (b48 <setup0_proc+0xdc>)
     a98:	681b      	ldr	r3, [r3, #0]
     a9a:	1c5a      	adds	r2, r3, #1
     a9c:	4b2a      	ldr	r3, [pc, #168]	; (b48 <setup0_proc+0xdc>)
     a9e:	601a      	str	r2, [r3, #0]
     aa0:	4b29      	ldr	r3, [pc, #164]	; (b48 <setup0_proc+0xdc>)
     aa2:	681b      	ldr	r3, [r3, #0]
     aa4:	2b07      	cmp	r3, #7
     aa6:	d9ed      	bls.n	a84 <setup0_proc+0x18>
     aa8:	4a26      	ldr	r2, [pc, #152]	; (b44 <setup0_proc+0xd8>)
     aaa:	23c8      	movs	r3, #200	; 0xc8
     aac:	005b      	lsls	r3, r3, #1
     aae:	2101      	movs	r1, #1
     ab0:	50d1      	str	r1, [r2, r3]
     ab2:	4b26      	ldr	r3, [pc, #152]	; (b4c <setup0_proc+0xe0>)
     ab4:	785b      	ldrb	r3, [r3, #1]
     ab6:	603b      	str	r3, [r7, #0]
     ab8:	683b      	ldr	r3, [r7, #0]
     aba:	3b05      	subs	r3, #5
     abc:	2b1d      	cmp	r3, #29
     abe:	d83c      	bhi.n	b3a <setup0_proc+0xce>
     ac0:	009a      	lsls	r2, r3, #2
     ac2:	4b23      	ldr	r3, [pc, #140]	; (b50 <setup0_proc+0xe4>)
     ac4:	18d3      	adds	r3, r2, r3
     ac6:	681b      	ldr	r3, [r3, #0]
     ac8:	469f      	mov	pc, r3
     aca:	4b22      	ldr	r3, [pc, #136]	; (b54 <setup0_proc+0xe8>)
     acc:	0018      	movs	r0, r3
     ace:	f000 fa9f 	bl	1010 <xprintf>
     ad2:	e032      	b.n	b3a <setup0_proc+0xce>
     ad4:	4b20      	ldr	r3, [pc, #128]	; (b58 <setup0_proc+0xec>)
     ad6:	0018      	movs	r0, r3
     ad8:	f000 fa9a 	bl	1010 <xprintf>
     adc:	e02d      	b.n	b3a <setup0_proc+0xce>
     ade:	4b1f      	ldr	r3, [pc, #124]	; (b5c <setup0_proc+0xf0>)
     ae0:	0018      	movs	r0, r3
     ae2:	f000 fa95 	bl	1010 <xprintf>
     ae6:	e028      	b.n	b3a <setup0_proc+0xce>
     ae8:	4b18      	ldr	r3, [pc, #96]	; (b4c <setup0_proc+0xe0>)
     aea:	789b      	ldrb	r3, [r3, #2]
     aec:	b29a      	uxth	r2, r3
     aee:	4b1c      	ldr	r3, [pc, #112]	; (b60 <setup0_proc+0xf4>)
     af0:	801a      	strh	r2, [r3, #0]
     af2:	f7ff fe31 	bl	758 <plan_ZeroLength_IN_proc>
     af6:	4b1b      	ldr	r3, [pc, #108]	; (b64 <setup0_proc+0xf8>)
     af8:	4a1b      	ldr	r2, [pc, #108]	; (b68 <setup0_proc+0xfc>)
     afa:	601a      	str	r2, [r3, #0]
     afc:	4b1b      	ldr	r3, [pc, #108]	; (b6c <setup0_proc+0x100>)
     afe:	0018      	movs	r0, r3
     b00:	f000 fa86 	bl	1010 <xprintf>
     b04:	e019      	b.n	b3a <setup0_proc+0xce>
     b06:	4b11      	ldr	r3, [pc, #68]	; (b4c <setup0_proc+0xe0>)
     b08:	789b      	ldrb	r3, [r3, #2]
     b0a:	b29a      	uxth	r2, r3
     b0c:	4b18      	ldr	r3, [pc, #96]	; (b70 <setup0_proc+0x104>)
     b0e:	801a      	strh	r2, [r3, #0]
     b10:	f7ff fe22 	bl	758 <plan_ZeroLength_IN_proc>
     b14:	4b13      	ldr	r3, [pc, #76]	; (b64 <setup0_proc+0xf8>)
     b16:	4a17      	ldr	r2, [pc, #92]	; (b74 <setup0_proc+0x108>)
     b18:	601a      	str	r2, [r3, #0]
     b1a:	4b15      	ldr	r3, [pc, #84]	; (b70 <setup0_proc+0x104>)
     b1c:	881b      	ldrh	r3, [r3, #0]
     b1e:	001a      	movs	r2, r3
     b20:	4b15      	ldr	r3, [pc, #84]	; (b78 <setup0_proc+0x10c>)
     b22:	0011      	movs	r1, r2
     b24:	0018      	movs	r0, r3
     b26:	f000 fa73 	bl	1010 <xprintf>
     b2a:	e006      	b.n	b3a <setup0_proc+0xce>
     b2c:	4b13      	ldr	r3, [pc, #76]	; (b7c <setup0_proc+0x110>)
     b2e:	0018      	movs	r0, r3
     b30:	f000 fa6e 	bl	1010 <xprintf>
     b34:	f7ff fee8 	bl	908 <get_descriptor_proc>
     b38:	46c0      	nop			; (mov r8, r8)
     b3a:	46c0      	nop			; (mov r8, r8)
     b3c:	46bd      	mov	sp, r7
     b3e:	b002      	add	sp, #8
     b40:	bd80      	pop	{r7, pc}
     b42:	46c0      	nop			; (mov r8, r8)
     b44:	40010000 	.word	0x40010000
     b48:	2000002c 	.word	0x2000002c
     b4c:	20000034 	.word	0x20000034
     b50:	0000168c 	.word	0x0000168c
     b54:	00001610 	.word	0x00001610
     b58:	0000162c 	.word	0x0000162c
     b5c:	00001640 	.word	0x00001640
     b60:	20000046 	.word	0x20000046
     b64:	20000004 	.word	0x20000004
     b68:	00000a3d 	.word	0x00000a3d
     b6c:	00001654 	.word	0x00001654
     b70:	20000044 	.word	0x20000044
     b74:	000009f9 	.word	0x000009f9
     b78:	00001668 	.word	0x00001668
     b7c:	0000167c 	.word	0x0000167c

00000b80 <SysTick_Handler>:
     b80:	b580      	push	{r7, lr}
     b82:	af00      	add	r7, sp, #0
     b84:	4b03      	ldr	r3, [pc, #12]	; (b94 <SysTick_Handler+0x14>)
     b86:	681b      	ldr	r3, [r3, #0]
     b88:	1c5a      	adds	r2, r3, #1
     b8a:	4b02      	ldr	r3, [pc, #8]	; (b94 <SysTick_Handler+0x14>)
     b8c:	601a      	str	r2, [r3, #0]
     b8e:	46c0      	nop			; (mov r8, r8)
     b90:	46bd      	mov	sp, r7
     b92:	bd80      	pop	{r7, pc}
     b94:	20000030 	.word	0x20000030

00000b98 <TIMER4_Handler>:
     b98:	b580      	push	{r7, lr}
     b9a:	af00      	add	r7, sp, #0
     b9c:	4b05      	ldr	r3, [pc, #20]	; (bb4 <TIMER4_Handler+0x1c>)
     b9e:	2200      	movs	r2, #0
     ba0:	655a      	str	r2, [r3, #84]	; 0x54
     ba2:	4b05      	ldr	r3, [pc, #20]	; (bb8 <TIMER4_Handler+0x20>)
     ba4:	4a04      	ldr	r2, [pc, #16]	; (bb8 <TIMER4_Handler+0x20>)
     ba6:	6812      	ldr	r2, [r2, #0]
     ba8:	4904      	ldr	r1, [pc, #16]	; (bbc <TIMER4_Handler+0x24>)
     baa:	404a      	eors	r2, r1
     bac:	601a      	str	r2, [r3, #0]
     bae:	46c0      	nop			; (mov r8, r8)
     bb0:	46bd      	mov	sp, r7
     bb2:	bd80      	pop	{r7, pc}
     bb4:	40098000 	.word	0x40098000
     bb8:	400c0000 	.word	0x400c0000
     bbc:	0000ffff 	.word	0x0000ffff

00000bc0 <UART1_Handler>:
     bc0:	b580      	push	{r7, lr}
     bc2:	af00      	add	r7, sp, #0
     bc4:	46c0      	nop			; (mov r8, r8)
     bc6:	46bd      	mov	sp, r7
     bc8:	bd80      	pop	{r7, pc}
     bca:	46c0      	nop			; (mov r8, r8)

00000bcc <handler_reset>:
     bcc:	b580      	push	{r7, lr}
     bce:	b082      	sub	sp, #8
     bd0:	af00      	add	r7, sp, #0
     bd2:	4b11      	ldr	r3, [pc, #68]	; (c18 <handler_reset+0x4c>)
     bd4:	607b      	str	r3, [r7, #4]
     bd6:	4b11      	ldr	r3, [pc, #68]	; (c1c <handler_reset+0x50>)
     bd8:	603b      	str	r3, [r7, #0]
     bda:	e007      	b.n	bec <handler_reset+0x20>
     bdc:	683b      	ldr	r3, [r7, #0]
     bde:	1d1a      	adds	r2, r3, #4
     be0:	603a      	str	r2, [r7, #0]
     be2:	687a      	ldr	r2, [r7, #4]
     be4:	1d11      	adds	r1, r2, #4
     be6:	6079      	str	r1, [r7, #4]
     be8:	6812      	ldr	r2, [r2, #0]
     bea:	601a      	str	r2, [r3, #0]
     bec:	683a      	ldr	r2, [r7, #0]
     bee:	4b0c      	ldr	r3, [pc, #48]	; (c20 <handler_reset+0x54>)
     bf0:	429a      	cmp	r2, r3
     bf2:	d3f3      	bcc.n	bdc <handler_reset+0x10>
     bf4:	4b0b      	ldr	r3, [pc, #44]	; (c24 <handler_reset+0x58>)
     bf6:	603b      	str	r3, [r7, #0]
     bf8:	e004      	b.n	c04 <handler_reset+0x38>
     bfa:	683b      	ldr	r3, [r7, #0]
     bfc:	1d1a      	adds	r2, r3, #4
     bfe:	603a      	str	r2, [r7, #0]
     c00:	2200      	movs	r2, #0
     c02:	601a      	str	r2, [r3, #0]
     c04:	683a      	ldr	r2, [r7, #0]
     c06:	4b08      	ldr	r3, [pc, #32]	; (c28 <handler_reset+0x5c>)
     c08:	429a      	cmp	r2, r3
     c0a:	d3f6      	bcc.n	bfa <handler_reset+0x2e>
     c0c:	f7ff fae0 	bl	1d0 <main>
     c10:	46c0      	nop			; (mov r8, r8)
     c12:	46bd      	mov	sp, r7
     c14:	b002      	add	sp, #8
     c16:	bd80      	pop	{r7, pc}
     c18:	00001838 	.word	0x00001838
     c1c:	20000000 	.word	0x20000000
     c20:	20000028 	.word	0x20000028
     c24:	20000028 	.word	0x20000028
     c28:	20000058 	.word	0x20000058

00000c2c <default_handler>:
     c2c:	b580      	push	{r7, lr}
     c2e:	af00      	add	r7, sp, #0
     c30:	e7fe      	b.n	c30 <default_handler+0x4>
     c32:	46c0      	nop			; (mov r8, r8)

00000c34 <xputc>:
     c34:	b580      	push	{r7, lr}
     c36:	b082      	sub	sp, #8
     c38:	af00      	add	r7, sp, #0
     c3a:	0002      	movs	r2, r0
     c3c:	1dfb      	adds	r3, r7, #7
     c3e:	701a      	strb	r2, [r3, #0]
     c40:	1dfb      	adds	r3, r7, #7
     c42:	781b      	ldrb	r3, [r3, #0]
     c44:	2b0a      	cmp	r3, #10
     c46:	d102      	bne.n	c4e <xputc+0x1a>
     c48:	200d      	movs	r0, #13
     c4a:	f7ff fff3 	bl	c34 <xputc>
     c4e:	4b0d      	ldr	r3, [pc, #52]	; (c84 <xputc+0x50>)
     c50:	681b      	ldr	r3, [r3, #0]
     c52:	2b00      	cmp	r3, #0
     c54:	d008      	beq.n	c68 <xputc+0x34>
     c56:	4b0b      	ldr	r3, [pc, #44]	; (c84 <xputc+0x50>)
     c58:	681b      	ldr	r3, [r3, #0]
     c5a:	1c59      	adds	r1, r3, #1
     c5c:	4a09      	ldr	r2, [pc, #36]	; (c84 <xputc+0x50>)
     c5e:	6011      	str	r1, [r2, #0]
     c60:	1dfa      	adds	r2, r7, #7
     c62:	7812      	ldrb	r2, [r2, #0]
     c64:	701a      	strb	r2, [r3, #0]
     c66:	e009      	b.n	c7c <xputc+0x48>
     c68:	4b07      	ldr	r3, [pc, #28]	; (c88 <xputc+0x54>)
     c6a:	681b      	ldr	r3, [r3, #0]
     c6c:	2b00      	cmp	r3, #0
     c6e:	d005      	beq.n	c7c <xputc+0x48>
     c70:	4b05      	ldr	r3, [pc, #20]	; (c88 <xputc+0x54>)
     c72:	681b      	ldr	r3, [r3, #0]
     c74:	1dfa      	adds	r2, r7, #7
     c76:	7812      	ldrb	r2, [r2, #0]
     c78:	0010      	movs	r0, r2
     c7a:	4798      	blx	r3
     c7c:	46bd      	mov	sp, r7
     c7e:	b002      	add	sp, #8
     c80:	bd80      	pop	{r7, pc}
     c82:	46c0      	nop			; (mov r8, r8)
     c84:	20000050 	.word	0x20000050
     c88:	2000004c 	.word	0x2000004c

00000c8c <xputs>:
     c8c:	b580      	push	{r7, lr}
     c8e:	b082      	sub	sp, #8
     c90:	af00      	add	r7, sp, #0
     c92:	6078      	str	r0, [r7, #4]
     c94:	e006      	b.n	ca4 <xputs+0x18>
     c96:	687b      	ldr	r3, [r7, #4]
     c98:	1c5a      	adds	r2, r3, #1
     c9a:	607a      	str	r2, [r7, #4]
     c9c:	781b      	ldrb	r3, [r3, #0]
     c9e:	0018      	movs	r0, r3
     ca0:	f7ff ffc8 	bl	c34 <xputc>
     ca4:	687b      	ldr	r3, [r7, #4]
     ca6:	781b      	ldrb	r3, [r3, #0]
     ca8:	2b00      	cmp	r3, #0
     caa:	d1f4      	bne.n	c96 <xputs+0xa>
     cac:	46c0      	nop			; (mov r8, r8)
     cae:	46bd      	mov	sp, r7
     cb0:	b002      	add	sp, #8
     cb2:	bd80      	pop	{r7, pc}

00000cb4 <xfputs>:
     cb4:	b580      	push	{r7, lr}
     cb6:	b084      	sub	sp, #16
     cb8:	af00      	add	r7, sp, #0
     cba:	6078      	str	r0, [r7, #4]
     cbc:	6039      	str	r1, [r7, #0]
     cbe:	4b0c      	ldr	r3, [pc, #48]	; (cf0 <xfputs+0x3c>)
     cc0:	681b      	ldr	r3, [r3, #0]
     cc2:	60fb      	str	r3, [r7, #12]
     cc4:	4b0a      	ldr	r3, [pc, #40]	; (cf0 <xfputs+0x3c>)
     cc6:	687a      	ldr	r2, [r7, #4]
     cc8:	601a      	str	r2, [r3, #0]
     cca:	e006      	b.n	cda <xfputs+0x26>
     ccc:	683b      	ldr	r3, [r7, #0]
     cce:	1c5a      	adds	r2, r3, #1
     cd0:	603a      	str	r2, [r7, #0]
     cd2:	781b      	ldrb	r3, [r3, #0]
     cd4:	0018      	movs	r0, r3
     cd6:	f7ff ffad 	bl	c34 <xputc>
     cda:	683b      	ldr	r3, [r7, #0]
     cdc:	781b      	ldrb	r3, [r3, #0]
     cde:	2b00      	cmp	r3, #0
     ce0:	d1f4      	bne.n	ccc <xfputs+0x18>
     ce2:	4b03      	ldr	r3, [pc, #12]	; (cf0 <xfputs+0x3c>)
     ce4:	68fa      	ldr	r2, [r7, #12]
     ce6:	601a      	str	r2, [r3, #0]
     ce8:	46c0      	nop			; (mov r8, r8)
     cea:	46bd      	mov	sp, r7
     cec:	b004      	add	sp, #16
     cee:	bd80      	pop	{r7, pc}
     cf0:	2000004c 	.word	0x2000004c

00000cf4 <xvprintf>:
     cf4:	b580      	push	{r7, lr}
     cf6:	b08e      	sub	sp, #56	; 0x38
     cf8:	af00      	add	r7, sp, #0
     cfa:	6078      	str	r0, [r7, #4]
     cfc:	6039      	str	r1, [r7, #0]
     cfe:	687b      	ldr	r3, [r7, #4]
     d00:	1c5a      	adds	r2, r3, #1
     d02:	607a      	str	r2, [r7, #4]
     d04:	221f      	movs	r2, #31
     d06:	18ba      	adds	r2, r7, r2
     d08:	781b      	ldrb	r3, [r3, #0]
     d0a:	7013      	strb	r3, [r2, #0]
     d0c:	231f      	movs	r3, #31
     d0e:	18fb      	adds	r3, r7, r3
     d10:	781b      	ldrb	r3, [r3, #0]
     d12:	2b00      	cmp	r3, #0
     d14:	d100      	bne.n	d18 <xvprintf+0x24>
     d16:	e172      	b.n	ffe <xvprintf+0x30a>
     d18:	231f      	movs	r3, #31
     d1a:	18fb      	adds	r3, r7, r3
     d1c:	781b      	ldrb	r3, [r3, #0]
     d1e:	2b25      	cmp	r3, #37	; 0x25
     d20:	d006      	beq.n	d30 <xvprintf+0x3c>
     d22:	231f      	movs	r3, #31
     d24:	18fb      	adds	r3, r7, r3
     d26:	781b      	ldrb	r3, [r3, #0]
     d28:	0018      	movs	r0, r3
     d2a:	f7ff ff83 	bl	c34 <xputc>
     d2e:	e165      	b.n	ffc <xvprintf+0x308>
     d30:	2300      	movs	r3, #0
     d32:	627b      	str	r3, [r7, #36]	; 0x24
     d34:	687b      	ldr	r3, [r7, #4]
     d36:	1c5a      	adds	r2, r3, #1
     d38:	607a      	str	r2, [r7, #4]
     d3a:	221f      	movs	r2, #31
     d3c:	18ba      	adds	r2, r7, r2
     d3e:	781b      	ldrb	r3, [r3, #0]
     d40:	7013      	strb	r3, [r2, #0]
     d42:	231f      	movs	r3, #31
     d44:	18fb      	adds	r3, r7, r3
     d46:	781b      	ldrb	r3, [r3, #0]
     d48:	2b30      	cmp	r3, #48	; 0x30
     d4a:	d109      	bne.n	d60 <xvprintf+0x6c>
     d4c:	2301      	movs	r3, #1
     d4e:	627b      	str	r3, [r7, #36]	; 0x24
     d50:	687b      	ldr	r3, [r7, #4]
     d52:	1c5a      	adds	r2, r3, #1
     d54:	607a      	str	r2, [r7, #4]
     d56:	221f      	movs	r2, #31
     d58:	18ba      	adds	r2, r7, r2
     d5a:	781b      	ldrb	r3, [r3, #0]
     d5c:	7013      	strb	r3, [r2, #0]
     d5e:	e00d      	b.n	d7c <xvprintf+0x88>
     d60:	231f      	movs	r3, #31
     d62:	18fb      	adds	r3, r7, r3
     d64:	781b      	ldrb	r3, [r3, #0]
     d66:	2b2d      	cmp	r3, #45	; 0x2d
     d68:	d108      	bne.n	d7c <xvprintf+0x88>
     d6a:	2302      	movs	r3, #2
     d6c:	627b      	str	r3, [r7, #36]	; 0x24
     d6e:	687b      	ldr	r3, [r7, #4]
     d70:	1c5a      	adds	r2, r3, #1
     d72:	607a      	str	r2, [r7, #4]
     d74:	221f      	movs	r2, #31
     d76:	18ba      	adds	r2, r7, r2
     d78:	781b      	ldrb	r3, [r3, #0]
     d7a:	7013      	strb	r3, [r2, #0]
     d7c:	2300      	movs	r3, #0
     d7e:	62bb      	str	r3, [r7, #40]	; 0x28
     d80:	e012      	b.n	da8 <xvprintf+0xb4>
     d82:	6aba      	ldr	r2, [r7, #40]	; 0x28
     d84:	0013      	movs	r3, r2
     d86:	009b      	lsls	r3, r3, #2
     d88:	189b      	adds	r3, r3, r2
     d8a:	005b      	lsls	r3, r3, #1
     d8c:	001a      	movs	r2, r3
     d8e:	231f      	movs	r3, #31
     d90:	18fb      	adds	r3, r7, r3
     d92:	781b      	ldrb	r3, [r3, #0]
     d94:	18d3      	adds	r3, r2, r3
     d96:	3b30      	subs	r3, #48	; 0x30
     d98:	62bb      	str	r3, [r7, #40]	; 0x28
     d9a:	687b      	ldr	r3, [r7, #4]
     d9c:	1c5a      	adds	r2, r3, #1
     d9e:	607a      	str	r2, [r7, #4]
     da0:	221f      	movs	r2, #31
     da2:	18ba      	adds	r2, r7, r2
     da4:	781b      	ldrb	r3, [r3, #0]
     da6:	7013      	strb	r3, [r2, #0]
     da8:	231f      	movs	r3, #31
     daa:	18fb      	adds	r3, r7, r3
     dac:	781b      	ldrb	r3, [r3, #0]
     dae:	2b2f      	cmp	r3, #47	; 0x2f
     db0:	d904      	bls.n	dbc <xvprintf+0xc8>
     db2:	231f      	movs	r3, #31
     db4:	18fb      	adds	r3, r7, r3
     db6:	781b      	ldrb	r3, [r3, #0]
     db8:	2b39      	cmp	r3, #57	; 0x39
     dba:	d9e2      	bls.n	d82 <xvprintf+0x8e>
     dbc:	231f      	movs	r3, #31
     dbe:	18fb      	adds	r3, r7, r3
     dc0:	781b      	ldrb	r3, [r3, #0]
     dc2:	2b6c      	cmp	r3, #108	; 0x6c
     dc4:	d004      	beq.n	dd0 <xvprintf+0xdc>
     dc6:	231f      	movs	r3, #31
     dc8:	18fb      	adds	r3, r7, r3
     dca:	781b      	ldrb	r3, [r3, #0]
     dcc:	2b4c      	cmp	r3, #76	; 0x4c
     dce:	d10a      	bne.n	de6 <xvprintf+0xf2>
     dd0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     dd2:	2204      	movs	r2, #4
     dd4:	4313      	orrs	r3, r2
     dd6:	627b      	str	r3, [r7, #36]	; 0x24
     dd8:	687b      	ldr	r3, [r7, #4]
     dda:	1c5a      	adds	r2, r3, #1
     ddc:	607a      	str	r2, [r7, #4]
     dde:	221f      	movs	r2, #31
     de0:	18ba      	adds	r2, r7, r2
     de2:	781b      	ldrb	r3, [r3, #0]
     de4:	7013      	strb	r3, [r2, #0]
     de6:	231f      	movs	r3, #31
     de8:	18fb      	adds	r3, r7, r3
     dea:	781b      	ldrb	r3, [r3, #0]
     dec:	2b00      	cmp	r3, #0
     dee:	d100      	bne.n	df2 <xvprintf+0xfe>
     df0:	e107      	b.n	1002 <xvprintf+0x30e>
     df2:	231e      	movs	r3, #30
     df4:	18fb      	adds	r3, r7, r3
     df6:	221f      	movs	r2, #31
     df8:	18ba      	adds	r2, r7, r2
     dfa:	7812      	ldrb	r2, [r2, #0]
     dfc:	701a      	strb	r2, [r3, #0]
     dfe:	231e      	movs	r3, #30
     e00:	18fb      	adds	r3, r7, r3
     e02:	781b      	ldrb	r3, [r3, #0]
     e04:	2b60      	cmp	r3, #96	; 0x60
     e06:	d906      	bls.n	e16 <xvprintf+0x122>
     e08:	231e      	movs	r3, #30
     e0a:	18fb      	adds	r3, r7, r3
     e0c:	221e      	movs	r2, #30
     e0e:	18ba      	adds	r2, r7, r2
     e10:	7812      	ldrb	r2, [r2, #0]
     e12:	3a20      	subs	r2, #32
     e14:	701a      	strb	r2, [r3, #0]
     e16:	231e      	movs	r3, #30
     e18:	18fb      	adds	r3, r7, r3
     e1a:	781b      	ldrb	r3, [r3, #0]
     e1c:	3b42      	subs	r3, #66	; 0x42
     e1e:	2b16      	cmp	r3, #22
     e20:	d847      	bhi.n	eb2 <xvprintf+0x1be>
     e22:	009a      	lsls	r2, r3, #2
     e24:	4b79      	ldr	r3, [pc, #484]	; (100c <xvprintf+0x318>)
     e26:	18d3      	adds	r3, r2, r3
     e28:	681b      	ldr	r3, [r3, #0]
     e2a:	469f      	mov	pc, r3
     e2c:	683b      	ldr	r3, [r7, #0]
     e2e:	1d1a      	adds	r2, r3, #4
     e30:	603a      	str	r2, [r7, #0]
     e32:	681b      	ldr	r3, [r3, #0]
     e34:	61bb      	str	r3, [r7, #24]
     e36:	2300      	movs	r3, #0
     e38:	62fb      	str	r3, [r7, #44]	; 0x2c
     e3a:	e002      	b.n	e42 <xvprintf+0x14e>
     e3c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e3e:	3301      	adds	r3, #1
     e40:	62fb      	str	r3, [r7, #44]	; 0x2c
     e42:	69ba      	ldr	r2, [r7, #24]
     e44:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e46:	18d3      	adds	r3, r2, r3
     e48:	781b      	ldrb	r3, [r3, #0]
     e4a:	2b00      	cmp	r3, #0
     e4c:	d1f6      	bne.n	e3c <xvprintf+0x148>
     e4e:	e002      	b.n	e56 <xvprintf+0x162>
     e50:	2020      	movs	r0, #32
     e52:	f7ff feef 	bl	c34 <xputc>
     e56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e58:	2202      	movs	r2, #2
     e5a:	4013      	ands	r3, r2
     e5c:	d105      	bne.n	e6a <xvprintf+0x176>
     e5e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e60:	1c5a      	adds	r2, r3, #1
     e62:	62fa      	str	r2, [r7, #44]	; 0x2c
     e64:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e66:	4293      	cmp	r3, r2
     e68:	d3f2      	bcc.n	e50 <xvprintf+0x15c>
     e6a:	69bb      	ldr	r3, [r7, #24]
     e6c:	0018      	movs	r0, r3
     e6e:	f7ff ff0d 	bl	c8c <xputs>
     e72:	e002      	b.n	e7a <xvprintf+0x186>
     e74:	2020      	movs	r0, #32
     e76:	f7ff fedd 	bl	c34 <xputc>
     e7a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e7c:	1c5a      	adds	r2, r3, #1
     e7e:	62fa      	str	r2, [r7, #44]	; 0x2c
     e80:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e82:	4293      	cmp	r3, r2
     e84:	d3f6      	bcc.n	e74 <xvprintf+0x180>
     e86:	e0b9      	b.n	ffc <xvprintf+0x308>
     e88:	683b      	ldr	r3, [r7, #0]
     e8a:	1d1a      	adds	r2, r3, #4
     e8c:	603a      	str	r2, [r7, #0]
     e8e:	681b      	ldr	r3, [r3, #0]
     e90:	b2db      	uxtb	r3, r3
     e92:	0018      	movs	r0, r3
     e94:	f7ff fece 	bl	c34 <xputc>
     e98:	e0b0      	b.n	ffc <xvprintf+0x308>
     e9a:	2302      	movs	r3, #2
     e9c:	637b      	str	r3, [r7, #52]	; 0x34
     e9e:	e00f      	b.n	ec0 <xvprintf+0x1cc>
     ea0:	2308      	movs	r3, #8
     ea2:	637b      	str	r3, [r7, #52]	; 0x34
     ea4:	e00c      	b.n	ec0 <xvprintf+0x1cc>
     ea6:	230a      	movs	r3, #10
     ea8:	637b      	str	r3, [r7, #52]	; 0x34
     eaa:	e009      	b.n	ec0 <xvprintf+0x1cc>
     eac:	2310      	movs	r3, #16
     eae:	637b      	str	r3, [r7, #52]	; 0x34
     eb0:	e006      	b.n	ec0 <xvprintf+0x1cc>
     eb2:	231f      	movs	r3, #31
     eb4:	18fb      	adds	r3, r7, r3
     eb6:	781b      	ldrb	r3, [r3, #0]
     eb8:	0018      	movs	r0, r3
     eba:	f7ff febb 	bl	c34 <xputc>
     ebe:	e09d      	b.n	ffc <xvprintf+0x308>
     ec0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     ec2:	2204      	movs	r2, #4
     ec4:	4013      	ands	r3, r2
     ec6:	d004      	beq.n	ed2 <xvprintf+0x1de>
     ec8:	683b      	ldr	r3, [r7, #0]
     eca:	1d1a      	adds	r2, r3, #4
     ecc:	603a      	str	r2, [r7, #0]
     ece:	681b      	ldr	r3, [r3, #0]
     ed0:	e00d      	b.n	eee <xvprintf+0x1fa>
     ed2:	231e      	movs	r3, #30
     ed4:	18fb      	adds	r3, r7, r3
     ed6:	781b      	ldrb	r3, [r3, #0]
     ed8:	2b44      	cmp	r3, #68	; 0x44
     eda:	d104      	bne.n	ee6 <xvprintf+0x1f2>
     edc:	683b      	ldr	r3, [r7, #0]
     ede:	1d1a      	adds	r2, r3, #4
     ee0:	603a      	str	r2, [r7, #0]
     ee2:	681b      	ldr	r3, [r3, #0]
     ee4:	e003      	b.n	eee <xvprintf+0x1fa>
     ee6:	683b      	ldr	r3, [r7, #0]
     ee8:	1d1a      	adds	r2, r3, #4
     eea:	603a      	str	r2, [r7, #0]
     eec:	681b      	ldr	r3, [r3, #0]
     eee:	623b      	str	r3, [r7, #32]
     ef0:	231e      	movs	r3, #30
     ef2:	18fb      	adds	r3, r7, r3
     ef4:	781b      	ldrb	r3, [r3, #0]
     ef6:	2b44      	cmp	r3, #68	; 0x44
     ef8:	d109      	bne.n	f0e <xvprintf+0x21a>
     efa:	6a3b      	ldr	r3, [r7, #32]
     efc:	2b00      	cmp	r3, #0
     efe:	da06      	bge.n	f0e <xvprintf+0x21a>
     f00:	6a3b      	ldr	r3, [r7, #32]
     f02:	425b      	negs	r3, r3
     f04:	623b      	str	r3, [r7, #32]
     f06:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f08:	2208      	movs	r2, #8
     f0a:	4313      	orrs	r3, r2
     f0c:	627b      	str	r3, [r7, #36]	; 0x24
     f0e:	2300      	movs	r3, #0
     f10:	633b      	str	r3, [r7, #48]	; 0x30
     f12:	6a3b      	ldr	r3, [r7, #32]
     f14:	6b79      	ldr	r1, [r7, #52]	; 0x34
     f16:	0018      	movs	r0, r3
     f18:	f000 fb34 	bl	1584 <__aeabi_uidivmod>
     f1c:	000b      	movs	r3, r1
     f1e:	001a      	movs	r2, r3
     f20:	231e      	movs	r3, #30
     f22:	18fb      	adds	r3, r7, r3
     f24:	701a      	strb	r2, [r3, #0]
     f26:	6b79      	ldr	r1, [r7, #52]	; 0x34
     f28:	6a38      	ldr	r0, [r7, #32]
     f2a:	f000 faa5 	bl	1478 <__aeabi_uidiv>
     f2e:	0003      	movs	r3, r0
     f30:	623b      	str	r3, [r7, #32]
     f32:	231e      	movs	r3, #30
     f34:	18fb      	adds	r3, r7, r3
     f36:	781b      	ldrb	r3, [r3, #0]
     f38:	2b09      	cmp	r3, #9
     f3a:	d90e      	bls.n	f5a <xvprintf+0x266>
     f3c:	231f      	movs	r3, #31
     f3e:	18fb      	adds	r3, r7, r3
     f40:	781b      	ldrb	r3, [r3, #0]
     f42:	2b78      	cmp	r3, #120	; 0x78
     f44:	d101      	bne.n	f4a <xvprintf+0x256>
     f46:	2327      	movs	r3, #39	; 0x27
     f48:	e000      	b.n	f4c <xvprintf+0x258>
     f4a:	2307      	movs	r3, #7
     f4c:	221e      	movs	r2, #30
     f4e:	18ba      	adds	r2, r7, r2
     f50:	211e      	movs	r1, #30
     f52:	1879      	adds	r1, r7, r1
     f54:	7809      	ldrb	r1, [r1, #0]
     f56:	185b      	adds	r3, r3, r1
     f58:	7013      	strb	r3, [r2, #0]
     f5a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     f5c:	1c5a      	adds	r2, r3, #1
     f5e:	633a      	str	r2, [r7, #48]	; 0x30
     f60:	221e      	movs	r2, #30
     f62:	18ba      	adds	r2, r7, r2
     f64:	7812      	ldrb	r2, [r2, #0]
     f66:	3230      	adds	r2, #48	; 0x30
     f68:	b2d1      	uxtb	r1, r2
     f6a:	2208      	movs	r2, #8
     f6c:	18ba      	adds	r2, r7, r2
     f6e:	54d1      	strb	r1, [r2, r3]
     f70:	6a3b      	ldr	r3, [r7, #32]
     f72:	2b00      	cmp	r3, #0
     f74:	d002      	beq.n	f7c <xvprintf+0x288>
     f76:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     f78:	2b0f      	cmp	r3, #15
     f7a:	d9ca      	bls.n	f12 <xvprintf+0x21e>
     f7c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f7e:	2208      	movs	r2, #8
     f80:	4013      	ands	r3, r2
     f82:	d006      	beq.n	f92 <xvprintf+0x29e>
     f84:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     f86:	1c5a      	adds	r2, r3, #1
     f88:	633a      	str	r2, [r7, #48]	; 0x30
     f8a:	2208      	movs	r2, #8
     f8c:	18ba      	adds	r2, r7, r2
     f8e:	212d      	movs	r1, #45	; 0x2d
     f90:	54d1      	strb	r1, [r2, r3]
     f92:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     f94:	62fb      	str	r3, [r7, #44]	; 0x2c
     f96:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f98:	2201      	movs	r2, #1
     f9a:	4013      	ands	r3, r2
     f9c:	d001      	beq.n	fa2 <xvprintf+0x2ae>
     f9e:	2230      	movs	r2, #48	; 0x30
     fa0:	e000      	b.n	fa4 <xvprintf+0x2b0>
     fa2:	2220      	movs	r2, #32
     fa4:	231e      	movs	r3, #30
     fa6:	18fb      	adds	r3, r7, r3
     fa8:	701a      	strb	r2, [r3, #0]
     faa:	e005      	b.n	fb8 <xvprintf+0x2c4>
     fac:	231e      	movs	r3, #30
     fae:	18fb      	adds	r3, r7, r3
     fb0:	781b      	ldrb	r3, [r3, #0]
     fb2:	0018      	movs	r0, r3
     fb4:	f7ff fe3e 	bl	c34 <xputc>
     fb8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fba:	2202      	movs	r2, #2
     fbc:	4013      	ands	r3, r2
     fbe:	d105      	bne.n	fcc <xvprintf+0x2d8>
     fc0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     fc2:	1c5a      	adds	r2, r3, #1
     fc4:	62fa      	str	r2, [r7, #44]	; 0x2c
     fc6:	6aba      	ldr	r2, [r7, #40]	; 0x28
     fc8:	4293      	cmp	r3, r2
     fca:	d3ef      	bcc.n	fac <xvprintf+0x2b8>
     fcc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fce:	3b01      	subs	r3, #1
     fd0:	633b      	str	r3, [r7, #48]	; 0x30
     fd2:	2308      	movs	r3, #8
     fd4:	18fa      	adds	r2, r7, r3
     fd6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fd8:	18d3      	adds	r3, r2, r3
     fda:	781b      	ldrb	r3, [r3, #0]
     fdc:	0018      	movs	r0, r3
     fde:	f7ff fe29 	bl	c34 <xputc>
     fe2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     fe4:	2b00      	cmp	r3, #0
     fe6:	d1f1      	bne.n	fcc <xvprintf+0x2d8>
     fe8:	e002      	b.n	ff0 <xvprintf+0x2fc>
     fea:	2020      	movs	r0, #32
     fec:	f7ff fe22 	bl	c34 <xputc>
     ff0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ff2:	1c5a      	adds	r2, r3, #1
     ff4:	62fa      	str	r2, [r7, #44]	; 0x2c
     ff6:	6aba      	ldr	r2, [r7, #40]	; 0x28
     ff8:	4293      	cmp	r3, r2
     ffa:	d3f6      	bcc.n	fea <xvprintf+0x2f6>
     ffc:	e67f      	b.n	cfe <xvprintf+0xa>
     ffe:	46c0      	nop			; (mov r8, r8)
    1000:	e000      	b.n	1004 <xvprintf+0x310>
    1002:	46c0      	nop			; (mov r8, r8)
    1004:	46c0      	nop			; (mov r8, r8)
    1006:	46bd      	mov	sp, r7
    1008:	b00e      	add	sp, #56	; 0x38
    100a:	bd80      	pop	{r7, pc}
    100c:	00001704 	.word	0x00001704

00001010 <xprintf>:
    1010:	b40f      	push	{r0, r1, r2, r3}
    1012:	b580      	push	{r7, lr}
    1014:	b082      	sub	sp, #8
    1016:	af00      	add	r7, sp, #0
    1018:	2314      	movs	r3, #20
    101a:	18fb      	adds	r3, r7, r3
    101c:	607b      	str	r3, [r7, #4]
    101e:	687a      	ldr	r2, [r7, #4]
    1020:	693b      	ldr	r3, [r7, #16]
    1022:	0011      	movs	r1, r2
    1024:	0018      	movs	r0, r3
    1026:	f7ff fe65 	bl	cf4 <xvprintf>
    102a:	46c0      	nop			; (mov r8, r8)
    102c:	46bd      	mov	sp, r7
    102e:	b002      	add	sp, #8
    1030:	bc80      	pop	{r7}
    1032:	bc08      	pop	{r3}
    1034:	b004      	add	sp, #16
    1036:	4718      	bx	r3

00001038 <xsprintf>:
    1038:	b40e      	push	{r1, r2, r3}
    103a:	b580      	push	{r7, lr}
    103c:	b085      	sub	sp, #20
    103e:	af00      	add	r7, sp, #0
    1040:	6078      	str	r0, [r7, #4]
    1042:	4b0d      	ldr	r3, [pc, #52]	; (1078 <xsprintf+0x40>)
    1044:	687a      	ldr	r2, [r7, #4]
    1046:	601a      	str	r2, [r3, #0]
    1048:	2320      	movs	r3, #32
    104a:	18fb      	adds	r3, r7, r3
    104c:	60fb      	str	r3, [r7, #12]
    104e:	68fa      	ldr	r2, [r7, #12]
    1050:	69fb      	ldr	r3, [r7, #28]
    1052:	0011      	movs	r1, r2
    1054:	0018      	movs	r0, r3
    1056:	f7ff fe4d 	bl	cf4 <xvprintf>
    105a:	4b07      	ldr	r3, [pc, #28]	; (1078 <xsprintf+0x40>)
    105c:	681b      	ldr	r3, [r3, #0]
    105e:	2200      	movs	r2, #0
    1060:	701a      	strb	r2, [r3, #0]
    1062:	4b05      	ldr	r3, [pc, #20]	; (1078 <xsprintf+0x40>)
    1064:	2200      	movs	r2, #0
    1066:	601a      	str	r2, [r3, #0]
    1068:	46c0      	nop			; (mov r8, r8)
    106a:	46bd      	mov	sp, r7
    106c:	b005      	add	sp, #20
    106e:	bc80      	pop	{r7}
    1070:	bc08      	pop	{r3}
    1072:	b003      	add	sp, #12
    1074:	4718      	bx	r3
    1076:	46c0      	nop			; (mov r8, r8)
    1078:	20000050 	.word	0x20000050

0000107c <xfprintf>:
    107c:	b40e      	push	{r1, r2, r3}
    107e:	b580      	push	{r7, lr}
    1080:	b085      	sub	sp, #20
    1082:	af00      	add	r7, sp, #0
    1084:	6078      	str	r0, [r7, #4]
    1086:	4b0c      	ldr	r3, [pc, #48]	; (10b8 <xfprintf+0x3c>)
    1088:	681b      	ldr	r3, [r3, #0]
    108a:	60fb      	str	r3, [r7, #12]
    108c:	4b0a      	ldr	r3, [pc, #40]	; (10b8 <xfprintf+0x3c>)
    108e:	687a      	ldr	r2, [r7, #4]
    1090:	601a      	str	r2, [r3, #0]
    1092:	2320      	movs	r3, #32
    1094:	18fb      	adds	r3, r7, r3
    1096:	60bb      	str	r3, [r7, #8]
    1098:	68ba      	ldr	r2, [r7, #8]
    109a:	69fb      	ldr	r3, [r7, #28]
    109c:	0011      	movs	r1, r2
    109e:	0018      	movs	r0, r3
    10a0:	f7ff fe28 	bl	cf4 <xvprintf>
    10a4:	4b04      	ldr	r3, [pc, #16]	; (10b8 <xfprintf+0x3c>)
    10a6:	68fa      	ldr	r2, [r7, #12]
    10a8:	601a      	str	r2, [r3, #0]
    10aa:	46c0      	nop			; (mov r8, r8)
    10ac:	46bd      	mov	sp, r7
    10ae:	b005      	add	sp, #20
    10b0:	bc80      	pop	{r7}
    10b2:	bc08      	pop	{r3}
    10b4:	b003      	add	sp, #12
    10b6:	4718      	bx	r3
    10b8:	2000004c 	.word	0x2000004c

000010bc <put_dump>:
    10bc:	b580      	push	{r7, lr}
    10be:	b088      	sub	sp, #32
    10c0:	af00      	add	r7, sp, #0
    10c2:	60f8      	str	r0, [r7, #12]
    10c4:	60b9      	str	r1, [r7, #8]
    10c6:	607a      	str	r2, [r7, #4]
    10c8:	603b      	str	r3, [r7, #0]
    10ca:	68ba      	ldr	r2, [r7, #8]
    10cc:	4b38      	ldr	r3, [pc, #224]	; (11b0 <put_dump+0xf4>)
    10ce:	0011      	movs	r1, r2
    10d0:	0018      	movs	r0, r3
    10d2:	f7ff ff9d 	bl	1010 <xprintf>
    10d6:	683b      	ldr	r3, [r7, #0]
    10d8:	2b02      	cmp	r3, #2
    10da:	d03c      	beq.n	1156 <put_dump+0x9a>
    10dc:	2b04      	cmp	r3, #4
    10de:	d04d      	beq.n	117c <put_dump+0xc0>
    10e0:	2b01      	cmp	r3, #1
    10e2:	d15d      	bne.n	11a0 <put_dump+0xe4>
    10e4:	68fb      	ldr	r3, [r7, #12]
    10e6:	613b      	str	r3, [r7, #16]
    10e8:	2300      	movs	r3, #0
    10ea:	61fb      	str	r3, [r7, #28]
    10ec:	e00c      	b.n	1108 <put_dump+0x4c>
    10ee:	69fb      	ldr	r3, [r7, #28]
    10f0:	693a      	ldr	r2, [r7, #16]
    10f2:	18d3      	adds	r3, r2, r3
    10f4:	781b      	ldrb	r3, [r3, #0]
    10f6:	001a      	movs	r2, r3
    10f8:	4b2e      	ldr	r3, [pc, #184]	; (11b4 <put_dump+0xf8>)
    10fa:	0011      	movs	r1, r2
    10fc:	0018      	movs	r0, r3
    10fe:	f7ff ff87 	bl	1010 <xprintf>
    1102:	69fb      	ldr	r3, [r7, #28]
    1104:	3301      	adds	r3, #1
    1106:	61fb      	str	r3, [r7, #28]
    1108:	69fa      	ldr	r2, [r7, #28]
    110a:	687b      	ldr	r3, [r7, #4]
    110c:	429a      	cmp	r2, r3
    110e:	dbee      	blt.n	10ee <put_dump+0x32>
    1110:	2020      	movs	r0, #32
    1112:	f7ff fd8f 	bl	c34 <xputc>
    1116:	2300      	movs	r3, #0
    1118:	61fb      	str	r3, [r7, #28]
    111a:	e017      	b.n	114c <put_dump+0x90>
    111c:	69fb      	ldr	r3, [r7, #28]
    111e:	693a      	ldr	r2, [r7, #16]
    1120:	18d3      	adds	r3, r2, r3
    1122:	781b      	ldrb	r3, [r3, #0]
    1124:	2b1f      	cmp	r3, #31
    1126:	d90a      	bls.n	113e <put_dump+0x82>
    1128:	69fb      	ldr	r3, [r7, #28]
    112a:	693a      	ldr	r2, [r7, #16]
    112c:	18d3      	adds	r3, r2, r3
    112e:	781b      	ldrb	r3, [r3, #0]
    1130:	2b7e      	cmp	r3, #126	; 0x7e
    1132:	d804      	bhi.n	113e <put_dump+0x82>
    1134:	69fb      	ldr	r3, [r7, #28]
    1136:	693a      	ldr	r2, [r7, #16]
    1138:	18d3      	adds	r3, r2, r3
    113a:	781b      	ldrb	r3, [r3, #0]
    113c:	e000      	b.n	1140 <put_dump+0x84>
    113e:	232e      	movs	r3, #46	; 0x2e
    1140:	0018      	movs	r0, r3
    1142:	f7ff fd77 	bl	c34 <xputc>
    1146:	69fb      	ldr	r3, [r7, #28]
    1148:	3301      	adds	r3, #1
    114a:	61fb      	str	r3, [r7, #28]
    114c:	69fa      	ldr	r2, [r7, #28]
    114e:	687b      	ldr	r3, [r7, #4]
    1150:	429a      	cmp	r2, r3
    1152:	dbe3      	blt.n	111c <put_dump+0x60>
    1154:	e024      	b.n	11a0 <put_dump+0xe4>
    1156:	68fb      	ldr	r3, [r7, #12]
    1158:	61bb      	str	r3, [r7, #24]
    115a:	69bb      	ldr	r3, [r7, #24]
    115c:	1c9a      	adds	r2, r3, #2
    115e:	61ba      	str	r2, [r7, #24]
    1160:	881b      	ldrh	r3, [r3, #0]
    1162:	001a      	movs	r2, r3
    1164:	4b14      	ldr	r3, [pc, #80]	; (11b8 <put_dump+0xfc>)
    1166:	0011      	movs	r1, r2
    1168:	0018      	movs	r0, r3
    116a:	f7ff ff51 	bl	1010 <xprintf>
    116e:	687b      	ldr	r3, [r7, #4]
    1170:	3b01      	subs	r3, #1
    1172:	607b      	str	r3, [r7, #4]
    1174:	687b      	ldr	r3, [r7, #4]
    1176:	2b00      	cmp	r3, #0
    1178:	d1ef      	bne.n	115a <put_dump+0x9e>
    117a:	e011      	b.n	11a0 <put_dump+0xe4>
    117c:	68fb      	ldr	r3, [r7, #12]
    117e:	617b      	str	r3, [r7, #20]
    1180:	697b      	ldr	r3, [r7, #20]
    1182:	1d1a      	adds	r2, r3, #4
    1184:	617a      	str	r2, [r7, #20]
    1186:	681a      	ldr	r2, [r3, #0]
    1188:	4b0c      	ldr	r3, [pc, #48]	; (11bc <put_dump+0x100>)
    118a:	0011      	movs	r1, r2
    118c:	0018      	movs	r0, r3
    118e:	f7ff ff3f 	bl	1010 <xprintf>
    1192:	687b      	ldr	r3, [r7, #4]
    1194:	3b01      	subs	r3, #1
    1196:	607b      	str	r3, [r7, #4]
    1198:	687b      	ldr	r3, [r7, #4]
    119a:	2b00      	cmp	r3, #0
    119c:	d1f0      	bne.n	1180 <put_dump+0xc4>
    119e:	46c0      	nop			; (mov r8, r8)
    11a0:	200a      	movs	r0, #10
    11a2:	f7ff fd47 	bl	c34 <xputc>
    11a6:	46c0      	nop			; (mov r8, r8)
    11a8:	46bd      	mov	sp, r7
    11aa:	b008      	add	sp, #32
    11ac:	bd80      	pop	{r7, pc}
    11ae:	46c0      	nop			; (mov r8, r8)
    11b0:	00001760 	.word	0x00001760
    11b4:	00001768 	.word	0x00001768
    11b8:	00001770 	.word	0x00001770
    11bc:	00001778 	.word	0x00001778

000011c0 <xgets>:
    11c0:	b580      	push	{r7, lr}
    11c2:	b084      	sub	sp, #16
    11c4:	af00      	add	r7, sp, #0
    11c6:	6078      	str	r0, [r7, #4]
    11c8:	6039      	str	r1, [r7, #0]
    11ca:	4b24      	ldr	r3, [pc, #144]	; (125c <xgets+0x9c>)
    11cc:	681b      	ldr	r3, [r3, #0]
    11ce:	2b00      	cmp	r3, #0
    11d0:	d101      	bne.n	11d6 <xgets+0x16>
    11d2:	2300      	movs	r3, #0
    11d4:	e03e      	b.n	1254 <xgets+0x94>
    11d6:	2300      	movs	r3, #0
    11d8:	60fb      	str	r3, [r7, #12]
    11da:	4b20      	ldr	r3, [pc, #128]	; (125c <xgets+0x9c>)
    11dc:	681b      	ldr	r3, [r3, #0]
    11de:	4798      	blx	r3
    11e0:	0003      	movs	r3, r0
    11e2:	60bb      	str	r3, [r7, #8]
    11e4:	68bb      	ldr	r3, [r7, #8]
    11e6:	2b00      	cmp	r3, #0
    11e8:	d101      	bne.n	11ee <xgets+0x2e>
    11ea:	2300      	movs	r3, #0
    11ec:	e032      	b.n	1254 <xgets+0x94>
    11ee:	68bb      	ldr	r3, [r7, #8]
    11f0:	2b0d      	cmp	r3, #13
    11f2:	d025      	beq.n	1240 <xgets+0x80>
    11f4:	68bb      	ldr	r3, [r7, #8]
    11f6:	2b08      	cmp	r3, #8
    11f8:	d10b      	bne.n	1212 <xgets+0x52>
    11fa:	68fb      	ldr	r3, [r7, #12]
    11fc:	2b00      	cmp	r3, #0
    11fe:	d008      	beq.n	1212 <xgets+0x52>
    1200:	68fb      	ldr	r3, [r7, #12]
    1202:	3b01      	subs	r3, #1
    1204:	60fb      	str	r3, [r7, #12]
    1206:	68bb      	ldr	r3, [r7, #8]
    1208:	b2db      	uxtb	r3, r3
    120a:	0018      	movs	r0, r3
    120c:	f7ff fd12 	bl	c34 <xputc>
    1210:	e015      	b.n	123e <xgets+0x7e>
    1212:	68bb      	ldr	r3, [r7, #8]
    1214:	2b1f      	cmp	r3, #31
    1216:	dde0      	ble.n	11da <xgets+0x1a>
    1218:	683b      	ldr	r3, [r7, #0]
    121a:	1e5a      	subs	r2, r3, #1
    121c:	68fb      	ldr	r3, [r7, #12]
    121e:	429a      	cmp	r2, r3
    1220:	dddb      	ble.n	11da <xgets+0x1a>
    1222:	68fb      	ldr	r3, [r7, #12]
    1224:	1c5a      	adds	r2, r3, #1
    1226:	60fa      	str	r2, [r7, #12]
    1228:	001a      	movs	r2, r3
    122a:	687b      	ldr	r3, [r7, #4]
    122c:	189b      	adds	r3, r3, r2
    122e:	68ba      	ldr	r2, [r7, #8]
    1230:	b2d2      	uxtb	r2, r2
    1232:	701a      	strb	r2, [r3, #0]
    1234:	68bb      	ldr	r3, [r7, #8]
    1236:	b2db      	uxtb	r3, r3
    1238:	0018      	movs	r0, r3
    123a:	f7ff fcfb 	bl	c34 <xputc>
    123e:	e7cc      	b.n	11da <xgets+0x1a>
    1240:	46c0      	nop			; (mov r8, r8)
    1242:	68fb      	ldr	r3, [r7, #12]
    1244:	687a      	ldr	r2, [r7, #4]
    1246:	18d3      	adds	r3, r2, r3
    1248:	2200      	movs	r2, #0
    124a:	701a      	strb	r2, [r3, #0]
    124c:	200a      	movs	r0, #10
    124e:	f7ff fcf1 	bl	c34 <xputc>
    1252:	2301      	movs	r3, #1
    1254:	0018      	movs	r0, r3
    1256:	46bd      	mov	sp, r7
    1258:	b004      	add	sp, #16
    125a:	bd80      	pop	{r7, pc}
    125c:	20000054 	.word	0x20000054

00001260 <xfgets>:
    1260:	b580      	push	{r7, lr}
    1262:	b086      	sub	sp, #24
    1264:	af00      	add	r7, sp, #0
    1266:	60f8      	str	r0, [r7, #12]
    1268:	60b9      	str	r1, [r7, #8]
    126a:	607a      	str	r2, [r7, #4]
    126c:	4b0a      	ldr	r3, [pc, #40]	; (1298 <xfgets+0x38>)
    126e:	681b      	ldr	r3, [r3, #0]
    1270:	617b      	str	r3, [r7, #20]
    1272:	4b09      	ldr	r3, [pc, #36]	; (1298 <xfgets+0x38>)
    1274:	68fa      	ldr	r2, [r7, #12]
    1276:	601a      	str	r2, [r3, #0]
    1278:	687a      	ldr	r2, [r7, #4]
    127a:	68bb      	ldr	r3, [r7, #8]
    127c:	0011      	movs	r1, r2
    127e:	0018      	movs	r0, r3
    1280:	f7ff ff9e 	bl	11c0 <xgets>
    1284:	0003      	movs	r3, r0
    1286:	613b      	str	r3, [r7, #16]
    1288:	4b03      	ldr	r3, [pc, #12]	; (1298 <xfgets+0x38>)
    128a:	697a      	ldr	r2, [r7, #20]
    128c:	601a      	str	r2, [r3, #0]
    128e:	693b      	ldr	r3, [r7, #16]
    1290:	0018      	movs	r0, r3
    1292:	46bd      	mov	sp, r7
    1294:	b006      	add	sp, #24
    1296:	bd80      	pop	{r7, pc}
    1298:	20000054 	.word	0x20000054

0000129c <xatoi>:
    129c:	b580      	push	{r7, lr}
    129e:	b084      	sub	sp, #16
    12a0:	af00      	add	r7, sp, #0
    12a2:	6078      	str	r0, [r7, #4]
    12a4:	6039      	str	r1, [r7, #0]
    12a6:	2309      	movs	r3, #9
    12a8:	18fb      	adds	r3, r7, r3
    12aa:	2200      	movs	r2, #0
    12ac:	701a      	strb	r2, [r3, #0]
    12ae:	683b      	ldr	r3, [r7, #0]
    12b0:	2200      	movs	r2, #0
    12b2:	601a      	str	r2, [r3, #0]
    12b4:	e004      	b.n	12c0 <xatoi+0x24>
    12b6:	687b      	ldr	r3, [r7, #4]
    12b8:	681b      	ldr	r3, [r3, #0]
    12ba:	1c5a      	adds	r2, r3, #1
    12bc:	687b      	ldr	r3, [r7, #4]
    12be:	601a      	str	r2, [r3, #0]
    12c0:	687b      	ldr	r3, [r7, #4]
    12c2:	681a      	ldr	r2, [r3, #0]
    12c4:	230b      	movs	r3, #11
    12c6:	18fb      	adds	r3, r7, r3
    12c8:	7812      	ldrb	r2, [r2, #0]
    12ca:	701a      	strb	r2, [r3, #0]
    12cc:	230b      	movs	r3, #11
    12ce:	18fb      	adds	r3, r7, r3
    12d0:	781b      	ldrb	r3, [r3, #0]
    12d2:	2b20      	cmp	r3, #32
    12d4:	d0ef      	beq.n	12b6 <xatoi+0x1a>
    12d6:	230b      	movs	r3, #11
    12d8:	18fb      	adds	r3, r7, r3
    12da:	781b      	ldrb	r3, [r3, #0]
    12dc:	2b2d      	cmp	r3, #45	; 0x2d
    12de:	d10e      	bne.n	12fe <xatoi+0x62>
    12e0:	2309      	movs	r3, #9
    12e2:	18fb      	adds	r3, r7, r3
    12e4:	2201      	movs	r2, #1
    12e6:	701a      	strb	r2, [r3, #0]
    12e8:	687b      	ldr	r3, [r7, #4]
    12ea:	681b      	ldr	r3, [r3, #0]
    12ec:	1c5a      	adds	r2, r3, #1
    12ee:	687b      	ldr	r3, [r7, #4]
    12f0:	601a      	str	r2, [r3, #0]
    12f2:	687b      	ldr	r3, [r7, #4]
    12f4:	681a      	ldr	r2, [r3, #0]
    12f6:	230b      	movs	r3, #11
    12f8:	18fb      	adds	r3, r7, r3
    12fa:	7812      	ldrb	r2, [r2, #0]
    12fc:	701a      	strb	r2, [r3, #0]
    12fe:	230b      	movs	r3, #11
    1300:	18fb      	adds	r3, r7, r3
    1302:	781b      	ldrb	r3, [r3, #0]
    1304:	2b30      	cmp	r3, #48	; 0x30
    1306:	d149      	bne.n	139c <xatoi+0x100>
    1308:	687b      	ldr	r3, [r7, #4]
    130a:	681b      	ldr	r3, [r3, #0]
    130c:	1c5a      	adds	r2, r3, #1
    130e:	687b      	ldr	r3, [r7, #4]
    1310:	601a      	str	r2, [r3, #0]
    1312:	687b      	ldr	r3, [r7, #4]
    1314:	681a      	ldr	r2, [r3, #0]
    1316:	230b      	movs	r3, #11
    1318:	18fb      	adds	r3, r7, r3
    131a:	7812      	ldrb	r2, [r2, #0]
    131c:	701a      	strb	r2, [r3, #0]
    131e:	230b      	movs	r3, #11
    1320:	18fb      	adds	r3, r7, r3
    1322:	781b      	ldrb	r3, [r3, #0]
    1324:	2b62      	cmp	r3, #98	; 0x62
    1326:	d011      	beq.n	134c <xatoi+0xb0>
    1328:	2b78      	cmp	r3, #120	; 0x78
    132a:	d11f      	bne.n	136c <xatoi+0xd0>
    132c:	230a      	movs	r3, #10
    132e:	18fb      	adds	r3, r7, r3
    1330:	2210      	movs	r2, #16
    1332:	701a      	strb	r2, [r3, #0]
    1334:	687b      	ldr	r3, [r7, #4]
    1336:	681b      	ldr	r3, [r3, #0]
    1338:	1c5a      	adds	r2, r3, #1
    133a:	687b      	ldr	r3, [r7, #4]
    133c:	601a      	str	r2, [r3, #0]
    133e:	687b      	ldr	r3, [r7, #4]
    1340:	681a      	ldr	r2, [r3, #0]
    1342:	230b      	movs	r3, #11
    1344:	18fb      	adds	r3, r7, r3
    1346:	7812      	ldrb	r2, [r2, #0]
    1348:	701a      	strb	r2, [r3, #0]
    134a:	e037      	b.n	13bc <xatoi+0x120>
    134c:	230a      	movs	r3, #10
    134e:	18fb      	adds	r3, r7, r3
    1350:	2202      	movs	r2, #2
    1352:	701a      	strb	r2, [r3, #0]
    1354:	687b      	ldr	r3, [r7, #4]
    1356:	681b      	ldr	r3, [r3, #0]
    1358:	1c5a      	adds	r2, r3, #1
    135a:	687b      	ldr	r3, [r7, #4]
    135c:	601a      	str	r2, [r3, #0]
    135e:	687b      	ldr	r3, [r7, #4]
    1360:	681a      	ldr	r2, [r3, #0]
    1362:	230b      	movs	r3, #11
    1364:	18fb      	adds	r3, r7, r3
    1366:	7812      	ldrb	r2, [r2, #0]
    1368:	701a      	strb	r2, [r3, #0]
    136a:	e027      	b.n	13bc <xatoi+0x120>
    136c:	230b      	movs	r3, #11
    136e:	18fb      	adds	r3, r7, r3
    1370:	781b      	ldrb	r3, [r3, #0]
    1372:	2b20      	cmp	r3, #32
    1374:	d801      	bhi.n	137a <xatoi+0xde>
    1376:	2301      	movs	r3, #1
    1378:	e079      	b.n	146e <xatoi+0x1d2>
    137a:	230b      	movs	r3, #11
    137c:	18fb      	adds	r3, r7, r3
    137e:	781b      	ldrb	r3, [r3, #0]
    1380:	2b2f      	cmp	r3, #47	; 0x2f
    1382:	d904      	bls.n	138e <xatoi+0xf2>
    1384:	230b      	movs	r3, #11
    1386:	18fb      	adds	r3, r7, r3
    1388:	781b      	ldrb	r3, [r3, #0]
    138a:	2b39      	cmp	r3, #57	; 0x39
    138c:	d901      	bls.n	1392 <xatoi+0xf6>
    138e:	2300      	movs	r3, #0
    1390:	e06d      	b.n	146e <xatoi+0x1d2>
    1392:	230a      	movs	r3, #10
    1394:	18fb      	adds	r3, r7, r3
    1396:	2208      	movs	r2, #8
    1398:	701a      	strb	r2, [r3, #0]
    139a:	e00f      	b.n	13bc <xatoi+0x120>
    139c:	230b      	movs	r3, #11
    139e:	18fb      	adds	r3, r7, r3
    13a0:	781b      	ldrb	r3, [r3, #0]
    13a2:	2b2f      	cmp	r3, #47	; 0x2f
    13a4:	d904      	bls.n	13b0 <xatoi+0x114>
    13a6:	230b      	movs	r3, #11
    13a8:	18fb      	adds	r3, r7, r3
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	2b39      	cmp	r3, #57	; 0x39
    13ae:	d901      	bls.n	13b4 <xatoi+0x118>
    13b0:	2300      	movs	r3, #0
    13b2:	e05c      	b.n	146e <xatoi+0x1d2>
    13b4:	230a      	movs	r3, #10
    13b6:	18fb      	adds	r3, r7, r3
    13b8:	220a      	movs	r2, #10
    13ba:	701a      	strb	r2, [r3, #0]
    13bc:	2300      	movs	r3, #0
    13be:	60fb      	str	r3, [r7, #12]
    13c0:	e044      	b.n	144c <xatoi+0x1b0>
    13c2:	230b      	movs	r3, #11
    13c4:	18fb      	adds	r3, r7, r3
    13c6:	781b      	ldrb	r3, [r3, #0]
    13c8:	2b60      	cmp	r3, #96	; 0x60
    13ca:	d906      	bls.n	13da <xatoi+0x13e>
    13cc:	230b      	movs	r3, #11
    13ce:	18fb      	adds	r3, r7, r3
    13d0:	220b      	movs	r2, #11
    13d2:	18ba      	adds	r2, r7, r2
    13d4:	7812      	ldrb	r2, [r2, #0]
    13d6:	3a20      	subs	r2, #32
    13d8:	701a      	strb	r2, [r3, #0]
    13da:	230b      	movs	r3, #11
    13dc:	18fb      	adds	r3, r7, r3
    13de:	220b      	movs	r2, #11
    13e0:	18ba      	adds	r2, r7, r2
    13e2:	7812      	ldrb	r2, [r2, #0]
    13e4:	3a30      	subs	r2, #48	; 0x30
    13e6:	701a      	strb	r2, [r3, #0]
    13e8:	230b      	movs	r3, #11
    13ea:	18fb      	adds	r3, r7, r3
    13ec:	781b      	ldrb	r3, [r3, #0]
    13ee:	2b10      	cmp	r3, #16
    13f0:	d90d      	bls.n	140e <xatoi+0x172>
    13f2:	230b      	movs	r3, #11
    13f4:	18fb      	adds	r3, r7, r3
    13f6:	220b      	movs	r2, #11
    13f8:	18ba      	adds	r2, r7, r2
    13fa:	7812      	ldrb	r2, [r2, #0]
    13fc:	3a07      	subs	r2, #7
    13fe:	701a      	strb	r2, [r3, #0]
    1400:	230b      	movs	r3, #11
    1402:	18fb      	adds	r3, r7, r3
    1404:	781b      	ldrb	r3, [r3, #0]
    1406:	2b09      	cmp	r3, #9
    1408:	d801      	bhi.n	140e <xatoi+0x172>
    140a:	2300      	movs	r3, #0
    140c:	e02f      	b.n	146e <xatoi+0x1d2>
    140e:	230b      	movs	r3, #11
    1410:	18fa      	adds	r2, r7, r3
    1412:	230a      	movs	r3, #10
    1414:	18fb      	adds	r3, r7, r3
    1416:	7812      	ldrb	r2, [r2, #0]
    1418:	781b      	ldrb	r3, [r3, #0]
    141a:	429a      	cmp	r2, r3
    141c:	d301      	bcc.n	1422 <xatoi+0x186>
    141e:	2300      	movs	r3, #0
    1420:	e025      	b.n	146e <xatoi+0x1d2>
    1422:	230a      	movs	r3, #10
    1424:	18fb      	adds	r3, r7, r3
    1426:	781b      	ldrb	r3, [r3, #0]
    1428:	68fa      	ldr	r2, [r7, #12]
    142a:	435a      	muls	r2, r3
    142c:	230b      	movs	r3, #11
    142e:	18fb      	adds	r3, r7, r3
    1430:	781b      	ldrb	r3, [r3, #0]
    1432:	18d3      	adds	r3, r2, r3
    1434:	60fb      	str	r3, [r7, #12]
    1436:	687b      	ldr	r3, [r7, #4]
    1438:	681b      	ldr	r3, [r3, #0]
    143a:	1c5a      	adds	r2, r3, #1
    143c:	687b      	ldr	r3, [r7, #4]
    143e:	601a      	str	r2, [r3, #0]
    1440:	687b      	ldr	r3, [r7, #4]
    1442:	681a      	ldr	r2, [r3, #0]
    1444:	230b      	movs	r3, #11
    1446:	18fb      	adds	r3, r7, r3
    1448:	7812      	ldrb	r2, [r2, #0]
    144a:	701a      	strb	r2, [r3, #0]
    144c:	230b      	movs	r3, #11
    144e:	18fb      	adds	r3, r7, r3
    1450:	781b      	ldrb	r3, [r3, #0]
    1452:	2b20      	cmp	r3, #32
    1454:	d8b5      	bhi.n	13c2 <xatoi+0x126>
    1456:	2309      	movs	r3, #9
    1458:	18fb      	adds	r3, r7, r3
    145a:	781b      	ldrb	r3, [r3, #0]
    145c:	2b00      	cmp	r3, #0
    145e:	d002      	beq.n	1466 <xatoi+0x1ca>
    1460:	68fb      	ldr	r3, [r7, #12]
    1462:	425b      	negs	r3, r3
    1464:	60fb      	str	r3, [r7, #12]
    1466:	68fa      	ldr	r2, [r7, #12]
    1468:	683b      	ldr	r3, [r7, #0]
    146a:	601a      	str	r2, [r3, #0]
    146c:	2301      	movs	r3, #1
    146e:	0018      	movs	r0, r3
    1470:	46bd      	mov	sp, r7
    1472:	b004      	add	sp, #16
    1474:	bd80      	pop	{r7, pc}
    1476:	46c0      	nop			; (mov r8, r8)

00001478 <__aeabi_uidiv>:
    1478:	2200      	movs	r2, #0
    147a:	0843      	lsrs	r3, r0, #1
    147c:	428b      	cmp	r3, r1
    147e:	d374      	bcc.n	156a <__aeabi_uidiv+0xf2>
    1480:	0903      	lsrs	r3, r0, #4
    1482:	428b      	cmp	r3, r1
    1484:	d35f      	bcc.n	1546 <__aeabi_uidiv+0xce>
    1486:	0a03      	lsrs	r3, r0, #8
    1488:	428b      	cmp	r3, r1
    148a:	d344      	bcc.n	1516 <__aeabi_uidiv+0x9e>
    148c:	0b03      	lsrs	r3, r0, #12
    148e:	428b      	cmp	r3, r1
    1490:	d328      	bcc.n	14e4 <__aeabi_uidiv+0x6c>
    1492:	0c03      	lsrs	r3, r0, #16
    1494:	428b      	cmp	r3, r1
    1496:	d30d      	bcc.n	14b4 <__aeabi_uidiv+0x3c>
    1498:	22ff      	movs	r2, #255	; 0xff
    149a:	0209      	lsls	r1, r1, #8
    149c:	ba12      	rev	r2, r2
    149e:	0c03      	lsrs	r3, r0, #16
    14a0:	428b      	cmp	r3, r1
    14a2:	d302      	bcc.n	14aa <__aeabi_uidiv+0x32>
    14a4:	1212      	asrs	r2, r2, #8
    14a6:	0209      	lsls	r1, r1, #8
    14a8:	d065      	beq.n	1576 <__aeabi_uidiv+0xfe>
    14aa:	0b03      	lsrs	r3, r0, #12
    14ac:	428b      	cmp	r3, r1
    14ae:	d319      	bcc.n	14e4 <__aeabi_uidiv+0x6c>
    14b0:	e000      	b.n	14b4 <__aeabi_uidiv+0x3c>
    14b2:	0a09      	lsrs	r1, r1, #8
    14b4:	0bc3      	lsrs	r3, r0, #15
    14b6:	428b      	cmp	r3, r1
    14b8:	d301      	bcc.n	14be <__aeabi_uidiv+0x46>
    14ba:	03cb      	lsls	r3, r1, #15
    14bc:	1ac0      	subs	r0, r0, r3
    14be:	4152      	adcs	r2, r2
    14c0:	0b83      	lsrs	r3, r0, #14
    14c2:	428b      	cmp	r3, r1
    14c4:	d301      	bcc.n	14ca <__aeabi_uidiv+0x52>
    14c6:	038b      	lsls	r3, r1, #14
    14c8:	1ac0      	subs	r0, r0, r3
    14ca:	4152      	adcs	r2, r2
    14cc:	0b43      	lsrs	r3, r0, #13
    14ce:	428b      	cmp	r3, r1
    14d0:	d301      	bcc.n	14d6 <__aeabi_uidiv+0x5e>
    14d2:	034b      	lsls	r3, r1, #13
    14d4:	1ac0      	subs	r0, r0, r3
    14d6:	4152      	adcs	r2, r2
    14d8:	0b03      	lsrs	r3, r0, #12
    14da:	428b      	cmp	r3, r1
    14dc:	d301      	bcc.n	14e2 <__aeabi_uidiv+0x6a>
    14de:	030b      	lsls	r3, r1, #12
    14e0:	1ac0      	subs	r0, r0, r3
    14e2:	4152      	adcs	r2, r2
    14e4:	0ac3      	lsrs	r3, r0, #11
    14e6:	428b      	cmp	r3, r1
    14e8:	d301      	bcc.n	14ee <__aeabi_uidiv+0x76>
    14ea:	02cb      	lsls	r3, r1, #11
    14ec:	1ac0      	subs	r0, r0, r3
    14ee:	4152      	adcs	r2, r2
    14f0:	0a83      	lsrs	r3, r0, #10
    14f2:	428b      	cmp	r3, r1
    14f4:	d301      	bcc.n	14fa <__aeabi_uidiv+0x82>
    14f6:	028b      	lsls	r3, r1, #10
    14f8:	1ac0      	subs	r0, r0, r3
    14fa:	4152      	adcs	r2, r2
    14fc:	0a43      	lsrs	r3, r0, #9
    14fe:	428b      	cmp	r3, r1
    1500:	d301      	bcc.n	1506 <__aeabi_uidiv+0x8e>
    1502:	024b      	lsls	r3, r1, #9
    1504:	1ac0      	subs	r0, r0, r3
    1506:	4152      	adcs	r2, r2
    1508:	0a03      	lsrs	r3, r0, #8
    150a:	428b      	cmp	r3, r1
    150c:	d301      	bcc.n	1512 <__aeabi_uidiv+0x9a>
    150e:	020b      	lsls	r3, r1, #8
    1510:	1ac0      	subs	r0, r0, r3
    1512:	4152      	adcs	r2, r2
    1514:	d2cd      	bcs.n	14b2 <__aeabi_uidiv+0x3a>
    1516:	09c3      	lsrs	r3, r0, #7
    1518:	428b      	cmp	r3, r1
    151a:	d301      	bcc.n	1520 <__aeabi_uidiv+0xa8>
    151c:	01cb      	lsls	r3, r1, #7
    151e:	1ac0      	subs	r0, r0, r3
    1520:	4152      	adcs	r2, r2
    1522:	0983      	lsrs	r3, r0, #6
    1524:	428b      	cmp	r3, r1
    1526:	d301      	bcc.n	152c <__aeabi_uidiv+0xb4>
    1528:	018b      	lsls	r3, r1, #6
    152a:	1ac0      	subs	r0, r0, r3
    152c:	4152      	adcs	r2, r2
    152e:	0943      	lsrs	r3, r0, #5
    1530:	428b      	cmp	r3, r1
    1532:	d301      	bcc.n	1538 <__aeabi_uidiv+0xc0>
    1534:	014b      	lsls	r3, r1, #5
    1536:	1ac0      	subs	r0, r0, r3
    1538:	4152      	adcs	r2, r2
    153a:	0903      	lsrs	r3, r0, #4
    153c:	428b      	cmp	r3, r1
    153e:	d301      	bcc.n	1544 <__aeabi_uidiv+0xcc>
    1540:	010b      	lsls	r3, r1, #4
    1542:	1ac0      	subs	r0, r0, r3
    1544:	4152      	adcs	r2, r2
    1546:	08c3      	lsrs	r3, r0, #3
    1548:	428b      	cmp	r3, r1
    154a:	d301      	bcc.n	1550 <__aeabi_uidiv+0xd8>
    154c:	00cb      	lsls	r3, r1, #3
    154e:	1ac0      	subs	r0, r0, r3
    1550:	4152      	adcs	r2, r2
    1552:	0883      	lsrs	r3, r0, #2
    1554:	428b      	cmp	r3, r1
    1556:	d301      	bcc.n	155c <__aeabi_uidiv+0xe4>
    1558:	008b      	lsls	r3, r1, #2
    155a:	1ac0      	subs	r0, r0, r3
    155c:	4152      	adcs	r2, r2
    155e:	0843      	lsrs	r3, r0, #1
    1560:	428b      	cmp	r3, r1
    1562:	d301      	bcc.n	1568 <__aeabi_uidiv+0xf0>
    1564:	004b      	lsls	r3, r1, #1
    1566:	1ac0      	subs	r0, r0, r3
    1568:	4152      	adcs	r2, r2
    156a:	1a41      	subs	r1, r0, r1
    156c:	d200      	bcs.n	1570 <__aeabi_uidiv+0xf8>
    156e:	4601      	mov	r1, r0
    1570:	4152      	adcs	r2, r2
    1572:	4610      	mov	r0, r2
    1574:	4770      	bx	lr
    1576:	e7ff      	b.n	1578 <__aeabi_uidiv+0x100>
    1578:	b501      	push	{r0, lr}
    157a:	2000      	movs	r0, #0
    157c:	f000 f806 	bl	158c <__aeabi_idiv0>
    1580:	bd02      	pop	{r1, pc}
    1582:	46c0      	nop			; (mov r8, r8)

00001584 <__aeabi_uidivmod>:
    1584:	2900      	cmp	r1, #0
    1586:	d0f7      	beq.n	1578 <__aeabi_uidiv+0x100>
    1588:	e776      	b.n	1478 <__aeabi_uidiv>
    158a:	4770      	bx	lr

0000158c <__aeabi_idiv0>:
    158c:	4770      	bx	lr
    158e:	46c0      	nop			; (mov r8, r8)
    1590:	6c6c6568 	.word	0x6c6c6568
    1594:	6f77206f 	.word	0x6f77206f
    1598:	0d646c72 	.word	0x0d646c72
    159c:	0000000a 	.word	0x0000000a
    15a0:	45534552 	.word	0x45534552
    15a4:	000a0d54 	.word	0x000a0d54
    15a8:	3a307065 	.word	0x3a307065
    15ac:	75746573 	.word	0x75746573
    15b0:	00003a70 	.word	0x00003a70
    15b4:	3a307065 	.word	0x3a307065
    15b8:	0a0d6e69 	.word	0x0a0d6e69
    15bc:	00000000 	.word	0x00000000
    15c0:	3a307065 	.word	0x3a307065
    15c4:	0d74756f 	.word	0x0d74756f
    15c8:	0000000a 	.word	0x0000000a
    15cc:	3d6e656c 	.word	0x3d6e656c
    15d0:	00006425 	.word	0x00006425
    15d4:	7473616c 	.word	0x7473616c
    15d8:	0064253d 	.word	0x0064253d
    15dc:	49564544 	.word	0x49564544
    15e0:	0a0d4543 	.word	0x0a0d4543
    15e4:	00000000 	.word	0x00000000
    15e8:	4c415551 	.word	0x4c415551
    15ec:	45494649 	.word	0x45494649
    15f0:	000a0d52 	.word	0x000a0d52
    15f4:	464e4f43 	.word	0x464e4f43
    15f8:	52554749 	.word	0x52554749
    15fc:	4f495441 	.word	0x4f495441
    1600:	000a0d4e 	.word	0x000a0d4e
    1604:	49525453 	.word	0x49525453
    1608:	0a0d474e 	.word	0x0a0d474e
    160c:	00000000 	.word	0x00000000
    1610:	5f544553 	.word	0x5f544553
    1614:	544e4f43 	.word	0x544e4f43
    1618:	5f4c4f52 	.word	0x5f4c4f52
    161c:	454e494c 	.word	0x454e494c
    1620:	4154535f 	.word	0x4154535f
    1624:	0a0d4554 	.word	0x0a0d4554
    1628:	00000000 	.word	0x00000000
    162c:	5f544553 	.word	0x5f544553
    1630:	454e494c 	.word	0x454e494c
    1634:	444f435f 	.word	0x444f435f
    1638:	0d474e49 	.word	0x0d474e49
    163c:	0000000a 	.word	0x0000000a
    1640:	5f544547 	.word	0x5f544547
    1644:	454e494c 	.word	0x454e494c
    1648:	444f435f 	.word	0x444f435f
    164c:	0d474e49 	.word	0x0d474e49
    1650:	0000000a 	.word	0x0000000a
    1654:	5f544553 	.word	0x5f544553
    1658:	464e4f43 	.word	0x464e4f43
    165c:	52554749 	.word	0x52554749
    1660:	4f495441 	.word	0x4f495441
    1664:	000a0d4e 	.word	0x000a0d4e
    1668:	5f544553 	.word	0x5f544553
    166c:	52444441 	.word	0x52444441
    1670:	20535345 	.word	0x20535345
    1674:	0a0d6425 	.word	0x0a0d6425
    1678:	00000000 	.word	0x00000000
    167c:	5f544547 	.word	0x5f544547
    1680:	43534544 	.word	0x43534544
    1684:	54504952 	.word	0x54504952
    1688:	003a524f 	.word	0x003a524f
    168c:	00000b06 	.word	0x00000b06
    1690:	00000b2c 	.word	0x00000b2c
    1694:	00000b3a 	.word	0x00000b3a
    1698:	00000b3a 	.word	0x00000b3a
    169c:	00000ae8 	.word	0x00000ae8
    16a0:	00000b3a 	.word	0x00000b3a
    16a4:	00000b3a 	.word	0x00000b3a
    16a8:	00000b3a 	.word	0x00000b3a
    16ac:	00000b3a 	.word	0x00000b3a
    16b0:	00000b3a 	.word	0x00000b3a
    16b4:	00000b3a 	.word	0x00000b3a
    16b8:	00000b3a 	.word	0x00000b3a
    16bc:	00000b3a 	.word	0x00000b3a
    16c0:	00000b3a 	.word	0x00000b3a
    16c4:	00000b3a 	.word	0x00000b3a
    16c8:	00000b3a 	.word	0x00000b3a
    16cc:	00000b3a 	.word	0x00000b3a
    16d0:	00000b3a 	.word	0x00000b3a
    16d4:	00000b3a 	.word	0x00000b3a
    16d8:	00000b3a 	.word	0x00000b3a
    16dc:	00000b3a 	.word	0x00000b3a
    16e0:	00000b3a 	.word	0x00000b3a
    16e4:	00000b3a 	.word	0x00000b3a
    16e8:	00000b3a 	.word	0x00000b3a
    16ec:	00000b3a 	.word	0x00000b3a
    16f0:	00000b3a 	.word	0x00000b3a
    16f4:	00000b3a 	.word	0x00000b3a
    16f8:	00000ad4 	.word	0x00000ad4
    16fc:	00000ade 	.word	0x00000ade
    1700:	00000aca 	.word	0x00000aca
    1704:	00000e9a 	.word	0x00000e9a
    1708:	00000e88 	.word	0x00000e88
    170c:	00000ea6 	.word	0x00000ea6
    1710:	00000eb2 	.word	0x00000eb2
    1714:	00000eb2 	.word	0x00000eb2
    1718:	00000eb2 	.word	0x00000eb2
    171c:	00000eb2 	.word	0x00000eb2
    1720:	00000eb2 	.word	0x00000eb2
    1724:	00000eb2 	.word	0x00000eb2
    1728:	00000eb2 	.word	0x00000eb2
    172c:	00000eb2 	.word	0x00000eb2
    1730:	00000eb2 	.word	0x00000eb2
    1734:	00000eb2 	.word	0x00000eb2
    1738:	00000ea0 	.word	0x00000ea0
    173c:	00000eb2 	.word	0x00000eb2
    1740:	00000eb2 	.word	0x00000eb2
    1744:	00000eb2 	.word	0x00000eb2
    1748:	00000e2c 	.word	0x00000e2c
    174c:	00000eb2 	.word	0x00000eb2
    1750:	00000ea6 	.word	0x00000ea6
    1754:	00000eb2 	.word	0x00000eb2
    1758:	00000eb2 	.word	0x00000eb2
    175c:	00000eac 	.word	0x00000eac
    1760:	6c383025 	.word	0x6c383025
    1764:	00002058 	.word	0x00002058
    1768:	32302520 	.word	0x32302520
    176c:	00000058 	.word	0x00000058
    1770:	34302520 	.word	0x34302520
    1774:	00000058 	.word	0x00000058
    1778:	38302520 	.word	0x38302520
    177c:	0000584c 	.word	0x0000584c

00001780 <Virtual_Com_Port_DeviceDescriptor>:
    1780:	02000112 40000002 57400483 02010200     .......@..@W....
    1790:	00000103                                ....

00001794 <Virtual_Com_Port_ConfigDescriptor>:
    1794:	00430209 c0000102 00040932 02020100     ..C.....2.......
    17a4:	24050001 05011000 01000124 02022404     ...$....$....$..
    17b4:	00062405 82050701 ff001003 00010409     .$..............
    17c4:	00000a02 03050700 00004002 02810507     .........@......
    17d4:	00000040                                @...

000017d8 <Virtual_Com_Port_StringLangID>:
    17d8:	04090304                                ....

000017dc <Virtual_Com_Port_StringVendor>:
    17dc:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
    17ec:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
    17fc:	00630069 00000073                       i.c.s...

00001804 <Virtual_Com_Port_StringProduct>:
    1804:	00530332 004d0054 00320033 00560020     2.S.T.M.3.2. .V.
    1814:	00720069 00750074 006c0061 00430020     i.r.t.u.a.l. .C.
    1824:	004d004f 00500020 0072006f 00200074     O.M. .P.o.r.t. .
    1834:	00000020                                 ...
