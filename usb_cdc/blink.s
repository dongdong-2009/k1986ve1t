
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 c9 0d 00 00 29 0e 00 00 29 0e 00 00     ... ....)...)...
	...
      2c:	29 0e 00 00 00 00 00 00 00 00 00 00 29 0e 00 00     )...........)...
      3c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      4c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      5c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      6c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      7c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      8c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      9c:	29 0e 00 00 29 0e 00 00 00 00 00 00 00 00 00 00     )...)...........
      ac:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      bc:	29 0e 00 00                                         )...

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

000000f8 <SystemInit>:
      f8:	b580      	push	{r7, lr}
      fa:	af00      	add	r7, sp, #0
      fc:	f000 f93c 	bl	378 <ClkConfig>
     100:	f000 f89e 	bl	240 <PortConfig>
     104:	f000 fa02 	bl	50c <UartConfig>
     108:	f000 fe92 	bl	e30 <usb_device_init>
     10c:	46c0      	nop			; (mov r8, r8)
     10e:	46bd      	mov	sp, r7
     110:	bd80      	pop	{r7, pc}
     112:	46c0      	nop			; (mov r8, r8)

00000114 <sleep>:
     114:	b580      	push	{r7, lr}
     116:	b084      	sub	sp, #16
     118:	af00      	add	r7, sp, #0
     11a:	6078      	str	r0, [r7, #4]
     11c:	2300      	movs	r3, #0
     11e:	60fb      	str	r3, [r7, #12]
     120:	e002      	b.n	128 <sleep+0x14>
     122:	68fb      	ldr	r3, [r7, #12]
     124:	3301      	adds	r3, #1
     126:	60fb      	str	r3, [r7, #12]
     128:	68fb      	ldr	r3, [r7, #12]
     12a:	4a04      	ldr	r2, [pc, #16]	; (13c <sleep+0x28>)
     12c:	4293      	cmp	r3, r2
     12e:	ddf8      	ble.n	122 <sleep+0xe>
     130:	46c0      	nop			; (mov r8, r8)
     132:	0018      	movs	r0, r3
     134:	46bd      	mov	sp, r7
     136:	b004      	add	sp, #16
     138:	bd80      	pop	{r7, pc}
     13a:	46c0      	nop			; (mov r8, r8)
     13c:	0000270f 	.word	0x0000270f

00000140 <strlen>:
     140:	b580      	push	{r7, lr}
     142:	b084      	sub	sp, #16
     144:	af00      	add	r7, sp, #0
     146:	6078      	str	r0, [r7, #4]
     148:	2300      	movs	r3, #0
     14a:	60fb      	str	r3, [r7, #12]
     14c:	e002      	b.n	154 <strlen+0x14>
     14e:	68fb      	ldr	r3, [r7, #12]
     150:	3301      	adds	r3, #1
     152:	60fb      	str	r3, [r7, #12]
     154:	687b      	ldr	r3, [r7, #4]
     156:	1c5a      	adds	r2, r3, #1
     158:	607a      	str	r2, [r7, #4]
     15a:	781b      	ldrb	r3, [r3, #0]
     15c:	2b00      	cmp	r3, #0
     15e:	d1f6      	bne.n	14e <strlen+0xe>
     160:	68fb      	ldr	r3, [r7, #12]
     162:	0018      	movs	r0, r3
     164:	46bd      	mov	sp, r7
     166:	b004      	add	sp, #16
     168:	bd80      	pop	{r7, pc}
     16a:	46c0      	nop			; (mov r8, r8)

0000016c <main>:
     16c:	b590      	push	{r4, r7, lr}
     16e:	b0ad      	sub	sp, #180	; 0xb4
     170:	af00      	add	r7, sp, #0
     172:	2394      	movs	r3, #148	; 0x94
     174:	18fb      	adds	r3, r7, r3
     176:	4a2c      	ldr	r2, [pc, #176]	; (228 <main+0xbc>)
     178:	ca13      	ldmia	r2!, {r0, r1, r4}
     17a:	c313      	stmia	r3!, {r0, r1, r4}
     17c:	8812      	ldrh	r2, [r2, #0]
     17e:	801a      	strh	r2, [r3, #0]
     180:	f7ff ffba 	bl	f8 <SystemInit>
     184:	2300      	movs	r3, #0
     186:	22a8      	movs	r2, #168	; 0xa8
     188:	18ba      	adds	r2, r7, r2
     18a:	6013      	str	r3, [r2, #0]
     18c:	4b27      	ldr	r3, [pc, #156]	; (22c <main+0xc0>)
     18e:	4a28      	ldr	r2, [pc, #160]	; (230 <main+0xc4>)
     190:	601a      	str	r2, [r3, #0]
     192:	4b28      	ldr	r3, [pc, #160]	; (234 <main+0xc8>)
     194:	2200      	movs	r2, #0
     196:	601a      	str	r2, [r3, #0]
     198:	2300      	movs	r3, #0
     19a:	22ac      	movs	r2, #172	; 0xac
     19c:	18ba      	adds	r2, r7, r2
     19e:	6013      	str	r3, [r2, #0]
     1a0:	4b25      	ldr	r3, [pc, #148]	; (238 <main+0xcc>)
     1a2:	2200      	movs	r2, #0
     1a4:	601a      	str	r2, [r3, #0]
     1a6:	f000 fec7 	bl	f38 <usb_device_update>
     1aa:	4b23      	ldr	r3, [pc, #140]	; (238 <main+0xcc>)
     1ac:	681b      	ldr	r3, [r3, #0]
     1ae:	2b01      	cmp	r3, #1
     1b0:	d1f9      	bne.n	1a6 <main+0x3a>
     1b2:	2300      	movs	r3, #0
     1b4:	22a4      	movs	r2, #164	; 0xa4
     1b6:	18ba      	adds	r2, r7, r2
     1b8:	6013      	str	r3, [r2, #0]
     1ba:	1d3b      	adds	r3, r7, #4
     1bc:	2110      	movs	r1, #16
     1be:	0018      	movs	r0, r3
     1c0:	f000 ff86 	bl	10d0 <usb_read>
     1c4:	0003      	movs	r3, r0
     1c6:	22a4      	movs	r2, #164	; 0xa4
     1c8:	18ba      	adds	r2, r7, r2
     1ca:	6013      	str	r3, [r2, #0]
     1cc:	23a4      	movs	r3, #164	; 0xa4
     1ce:	18fb      	adds	r3, r7, r3
     1d0:	681b      	ldr	r3, [r3, #0]
     1d2:	2b00      	cmp	r3, #0
     1d4:	d0e7      	beq.n	1a6 <main+0x3a>
     1d6:	2300      	movs	r3, #0
     1d8:	22ac      	movs	r2, #172	; 0xac
     1da:	18ba      	adds	r2, r7, r2
     1dc:	6013      	str	r3, [r2, #0]
     1de:	e012      	b.n	206 <main+0x9a>
     1e0:	1d3a      	adds	r2, r7, #4
     1e2:	23ac      	movs	r3, #172	; 0xac
     1e4:	18fb      	adds	r3, r7, r3
     1e6:	681b      	ldr	r3, [r3, #0]
     1e8:	18d3      	adds	r3, r2, r3
     1ea:	781b      	ldrb	r3, [r3, #0]
     1ec:	001a      	movs	r2, r3
     1ee:	4b13      	ldr	r3, [pc, #76]	; (23c <main+0xd0>)
     1f0:	0011      	movs	r1, r2
     1f2:	0018      	movs	r0, r3
     1f4:	f000 fbb4 	bl	960 <xprintf>
     1f8:	23ac      	movs	r3, #172	; 0xac
     1fa:	18fb      	adds	r3, r7, r3
     1fc:	681b      	ldr	r3, [r3, #0]
     1fe:	3301      	adds	r3, #1
     200:	22ac      	movs	r2, #172	; 0xac
     202:	18ba      	adds	r2, r7, r2
     204:	6013      	str	r3, [r2, #0]
     206:	23ac      	movs	r3, #172	; 0xac
     208:	18fb      	adds	r3, r7, r3
     20a:	681a      	ldr	r2, [r3, #0]
     20c:	23a4      	movs	r3, #164	; 0xa4
     20e:	18fb      	adds	r3, r7, r3
     210:	681b      	ldr	r3, [r3, #0]
     212:	429a      	cmp	r2, r3
     214:	dbe4      	blt.n	1e0 <main+0x74>
     216:	23a4      	movs	r3, #164	; 0xa4
     218:	18fb      	adds	r3, r7, r3
     21a:	681a      	ldr	r2, [r3, #0]
     21c:	1d3b      	adds	r3, r7, #4
     21e:	0011      	movs	r1, r2
     220:	0018      	movs	r0, r3
     222:	f000 ff8f 	bl	1144 <usb_write>
     226:	e7be      	b.n	1a6 <main+0x3a>
     228:	0000197c 	.word	0x0000197c
     22c:	20000034 	.word	0x20000034
     230:	000004e1 	.word	0x000004e1
     234:	20000028 	.word	0x20000028
     238:	20000050 	.word	0x20000050
     23c:	00001968 	.word	0x00001968

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

000004e0 <uart1_putch>:
     4e0:	b580      	push	{r7, lr}
     4e2:	b082      	sub	sp, #8
     4e4:	af00      	add	r7, sp, #0
     4e6:	0002      	movs	r2, r0
     4e8:	1dfb      	adds	r3, r7, #7
     4ea:	701a      	strb	r2, [r3, #0]
     4ec:	46c0      	nop			; (mov r8, r8)
     4ee:	4b06      	ldr	r3, [pc, #24]	; (508 <uart1_putch+0x28>)
     4f0:	699b      	ldr	r3, [r3, #24]
     4f2:	2220      	movs	r2, #32
     4f4:	4013      	ands	r3, r2
     4f6:	d1fa      	bne.n	4ee <uart1_putch+0xe>
     4f8:	4b03      	ldr	r3, [pc, #12]	; (508 <uart1_putch+0x28>)
     4fa:	1dfa      	adds	r2, r7, #7
     4fc:	7812      	ldrb	r2, [r2, #0]
     4fe:	601a      	str	r2, [r3, #0]
     500:	46c0      	nop			; (mov r8, r8)
     502:	46bd      	mov	sp, r7
     504:	b002      	add	sp, #8
     506:	bd80      	pop	{r7, pc}
     508:	40030000 	.word	0x40030000

0000050c <UartConfig>:
     50c:	b580      	push	{r7, lr}
     50e:	af00      	add	r7, sp, #0
     510:	4b19      	ldr	r3, [pc, #100]	; (578 <UartConfig+0x6c>)
     512:	4a19      	ldr	r2, [pc, #100]	; (578 <UartConfig+0x6c>)
     514:	69d2      	ldr	r2, [r2, #28]
     516:	2140      	movs	r1, #64	; 0x40
     518:	430a      	orrs	r2, r1
     51a:	61da      	str	r2, [r3, #28]
     51c:	4b16      	ldr	r3, [pc, #88]	; (578 <UartConfig+0x6c>)
     51e:	4a16      	ldr	r2, [pc, #88]	; (578 <UartConfig+0x6c>)
     520:	6a92      	ldr	r2, [r2, #40]	; 0x28
     522:	2180      	movs	r1, #128	; 0x80
     524:	0449      	lsls	r1, r1, #17
     526:	430a      	orrs	r2, r1
     528:	629a      	str	r2, [r3, #40]	; 0x28
     52a:	4b14      	ldr	r3, [pc, #80]	; (57c <UartConfig+0x70>)
     52c:	2241      	movs	r2, #65	; 0x41
     52e:	625a      	str	r2, [r3, #36]	; 0x24
     530:	4b12      	ldr	r3, [pc, #72]	; (57c <UartConfig+0x70>)
     532:	2207      	movs	r2, #7
     534:	629a      	str	r2, [r3, #40]	; 0x28
     536:	4b11      	ldr	r3, [pc, #68]	; (57c <UartConfig+0x70>)
     538:	4a10      	ldr	r2, [pc, #64]	; (57c <UartConfig+0x70>)
     53a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     53c:	213f      	movs	r1, #63	; 0x3f
     53e:	438a      	bics	r2, r1
     540:	635a      	str	r2, [r3, #52]	; 0x34
     542:	4b0e      	ldr	r3, [pc, #56]	; (57c <UartConfig+0x70>)
     544:	4a0d      	ldr	r2, [pc, #52]	; (57c <UartConfig+0x70>)
     546:	6b52      	ldr	r2, [r2, #52]	; 0x34
     548:	2124      	movs	r1, #36	; 0x24
     54a:	430a      	orrs	r2, r1
     54c:	635a      	str	r2, [r3, #52]	; 0x34
     54e:	4b0b      	ldr	r3, [pc, #44]	; (57c <UartConfig+0x70>)
     550:	4a0a      	ldr	r2, [pc, #40]	; (57c <UartConfig+0x70>)
     552:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     554:	2110      	movs	r1, #16
     556:	430a      	orrs	r2, r1
     558:	62da      	str	r2, [r3, #44]	; 0x2c
     55a:	4b08      	ldr	r3, [pc, #32]	; (57c <UartConfig+0x70>)
     55c:	4a07      	ldr	r2, [pc, #28]	; (57c <UartConfig+0x70>)
     55e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     560:	2160      	movs	r1, #96	; 0x60
     562:	430a      	orrs	r2, r1
     564:	62da      	str	r2, [r3, #44]	; 0x2c
     566:	4b05      	ldr	r3, [pc, #20]	; (57c <UartConfig+0x70>)
     568:	4a04      	ldr	r2, [pc, #16]	; (57c <UartConfig+0x70>)
     56a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     56c:	4904      	ldr	r1, [pc, #16]	; (580 <UartConfig+0x74>)
     56e:	430a      	orrs	r2, r1
     570:	631a      	str	r2, [r3, #48]	; 0x30
     572:	46c0      	nop			; (mov r8, r8)
     574:	46bd      	mov	sp, r7
     576:	bd80      	pop	{r7, pc}
     578:	40020000 	.word	0x40020000
     57c:	40030000 	.word	0x40030000
     580:	00000301 	.word	0x00000301

00000584 <xputc>:
     584:	b580      	push	{r7, lr}
     586:	b082      	sub	sp, #8
     588:	af00      	add	r7, sp, #0
     58a:	0002      	movs	r2, r0
     58c:	1dfb      	adds	r3, r7, #7
     58e:	701a      	strb	r2, [r3, #0]
     590:	1dfb      	adds	r3, r7, #7
     592:	781b      	ldrb	r3, [r3, #0]
     594:	2b0a      	cmp	r3, #10
     596:	d102      	bne.n	59e <xputc+0x1a>
     598:	200d      	movs	r0, #13
     59a:	f7ff fff3 	bl	584 <xputc>
     59e:	4b0d      	ldr	r3, [pc, #52]	; (5d4 <xputc+0x50>)
     5a0:	681b      	ldr	r3, [r3, #0]
     5a2:	2b00      	cmp	r3, #0
     5a4:	d008      	beq.n	5b8 <xputc+0x34>
     5a6:	4b0b      	ldr	r3, [pc, #44]	; (5d4 <xputc+0x50>)
     5a8:	681b      	ldr	r3, [r3, #0]
     5aa:	1c59      	adds	r1, r3, #1
     5ac:	4a09      	ldr	r2, [pc, #36]	; (5d4 <xputc+0x50>)
     5ae:	6011      	str	r1, [r2, #0]
     5b0:	1dfa      	adds	r2, r7, #7
     5b2:	7812      	ldrb	r2, [r2, #0]
     5b4:	701a      	strb	r2, [r3, #0]
     5b6:	e009      	b.n	5cc <xputc+0x48>
     5b8:	4b07      	ldr	r3, [pc, #28]	; (5d8 <xputc+0x54>)
     5ba:	681b      	ldr	r3, [r3, #0]
     5bc:	2b00      	cmp	r3, #0
     5be:	d005      	beq.n	5cc <xputc+0x48>
     5c0:	4b05      	ldr	r3, [pc, #20]	; (5d8 <xputc+0x54>)
     5c2:	681b      	ldr	r3, [r3, #0]
     5c4:	1dfa      	adds	r2, r7, #7
     5c6:	7812      	ldrb	r2, [r2, #0]
     5c8:	0010      	movs	r0, r2
     5ca:	4798      	blx	r3
     5cc:	46bd      	mov	sp, r7
     5ce:	b002      	add	sp, #8
     5d0:	bd80      	pop	{r7, pc}
     5d2:	46c0      	nop			; (mov r8, r8)
     5d4:	20000038 	.word	0x20000038
     5d8:	20000034 	.word	0x20000034

000005dc <xputs>:
     5dc:	b580      	push	{r7, lr}
     5de:	b082      	sub	sp, #8
     5e0:	af00      	add	r7, sp, #0
     5e2:	6078      	str	r0, [r7, #4]
     5e4:	e006      	b.n	5f4 <xputs+0x18>
     5e6:	687b      	ldr	r3, [r7, #4]
     5e8:	1c5a      	adds	r2, r3, #1
     5ea:	607a      	str	r2, [r7, #4]
     5ec:	781b      	ldrb	r3, [r3, #0]
     5ee:	0018      	movs	r0, r3
     5f0:	f7ff ffc8 	bl	584 <xputc>
     5f4:	687b      	ldr	r3, [r7, #4]
     5f6:	781b      	ldrb	r3, [r3, #0]
     5f8:	2b00      	cmp	r3, #0
     5fa:	d1f4      	bne.n	5e6 <xputs+0xa>
     5fc:	46c0      	nop			; (mov r8, r8)
     5fe:	46bd      	mov	sp, r7
     600:	b002      	add	sp, #8
     602:	bd80      	pop	{r7, pc}

00000604 <xfputs>:
     604:	b580      	push	{r7, lr}
     606:	b084      	sub	sp, #16
     608:	af00      	add	r7, sp, #0
     60a:	6078      	str	r0, [r7, #4]
     60c:	6039      	str	r1, [r7, #0]
     60e:	4b0c      	ldr	r3, [pc, #48]	; (640 <xfputs+0x3c>)
     610:	681b      	ldr	r3, [r3, #0]
     612:	60fb      	str	r3, [r7, #12]
     614:	4b0a      	ldr	r3, [pc, #40]	; (640 <xfputs+0x3c>)
     616:	687a      	ldr	r2, [r7, #4]
     618:	601a      	str	r2, [r3, #0]
     61a:	e006      	b.n	62a <xfputs+0x26>
     61c:	683b      	ldr	r3, [r7, #0]
     61e:	1c5a      	adds	r2, r3, #1
     620:	603a      	str	r2, [r7, #0]
     622:	781b      	ldrb	r3, [r3, #0]
     624:	0018      	movs	r0, r3
     626:	f7ff ffad 	bl	584 <xputc>
     62a:	683b      	ldr	r3, [r7, #0]
     62c:	781b      	ldrb	r3, [r3, #0]
     62e:	2b00      	cmp	r3, #0
     630:	d1f4      	bne.n	61c <xfputs+0x18>
     632:	4b03      	ldr	r3, [pc, #12]	; (640 <xfputs+0x3c>)
     634:	68fa      	ldr	r2, [r7, #12]
     636:	601a      	str	r2, [r3, #0]
     638:	46c0      	nop			; (mov r8, r8)
     63a:	46bd      	mov	sp, r7
     63c:	b004      	add	sp, #16
     63e:	bd80      	pop	{r7, pc}
     640:	20000034 	.word	0x20000034

00000644 <xvprintf>:
     644:	b580      	push	{r7, lr}
     646:	b08e      	sub	sp, #56	; 0x38
     648:	af00      	add	r7, sp, #0
     64a:	6078      	str	r0, [r7, #4]
     64c:	6039      	str	r1, [r7, #0]
     64e:	687b      	ldr	r3, [r7, #4]
     650:	1c5a      	adds	r2, r3, #1
     652:	607a      	str	r2, [r7, #4]
     654:	221f      	movs	r2, #31
     656:	18ba      	adds	r2, r7, r2
     658:	781b      	ldrb	r3, [r3, #0]
     65a:	7013      	strb	r3, [r2, #0]
     65c:	231f      	movs	r3, #31
     65e:	18fb      	adds	r3, r7, r3
     660:	781b      	ldrb	r3, [r3, #0]
     662:	2b00      	cmp	r3, #0
     664:	d100      	bne.n	668 <xvprintf+0x24>
     666:	e172      	b.n	94e <xvprintf+0x30a>
     668:	231f      	movs	r3, #31
     66a:	18fb      	adds	r3, r7, r3
     66c:	781b      	ldrb	r3, [r3, #0]
     66e:	2b25      	cmp	r3, #37	; 0x25
     670:	d006      	beq.n	680 <xvprintf+0x3c>
     672:	231f      	movs	r3, #31
     674:	18fb      	adds	r3, r7, r3
     676:	781b      	ldrb	r3, [r3, #0]
     678:	0018      	movs	r0, r3
     67a:	f7ff ff83 	bl	584 <xputc>
     67e:	e165      	b.n	94c <xvprintf+0x308>
     680:	2300      	movs	r3, #0
     682:	627b      	str	r3, [r7, #36]	; 0x24
     684:	687b      	ldr	r3, [r7, #4]
     686:	1c5a      	adds	r2, r3, #1
     688:	607a      	str	r2, [r7, #4]
     68a:	221f      	movs	r2, #31
     68c:	18ba      	adds	r2, r7, r2
     68e:	781b      	ldrb	r3, [r3, #0]
     690:	7013      	strb	r3, [r2, #0]
     692:	231f      	movs	r3, #31
     694:	18fb      	adds	r3, r7, r3
     696:	781b      	ldrb	r3, [r3, #0]
     698:	2b30      	cmp	r3, #48	; 0x30
     69a:	d109      	bne.n	6b0 <xvprintf+0x6c>
     69c:	2301      	movs	r3, #1
     69e:	627b      	str	r3, [r7, #36]	; 0x24
     6a0:	687b      	ldr	r3, [r7, #4]
     6a2:	1c5a      	adds	r2, r3, #1
     6a4:	607a      	str	r2, [r7, #4]
     6a6:	221f      	movs	r2, #31
     6a8:	18ba      	adds	r2, r7, r2
     6aa:	781b      	ldrb	r3, [r3, #0]
     6ac:	7013      	strb	r3, [r2, #0]
     6ae:	e00d      	b.n	6cc <xvprintf+0x88>
     6b0:	231f      	movs	r3, #31
     6b2:	18fb      	adds	r3, r7, r3
     6b4:	781b      	ldrb	r3, [r3, #0]
     6b6:	2b2d      	cmp	r3, #45	; 0x2d
     6b8:	d108      	bne.n	6cc <xvprintf+0x88>
     6ba:	2302      	movs	r3, #2
     6bc:	627b      	str	r3, [r7, #36]	; 0x24
     6be:	687b      	ldr	r3, [r7, #4]
     6c0:	1c5a      	adds	r2, r3, #1
     6c2:	607a      	str	r2, [r7, #4]
     6c4:	221f      	movs	r2, #31
     6c6:	18ba      	adds	r2, r7, r2
     6c8:	781b      	ldrb	r3, [r3, #0]
     6ca:	7013      	strb	r3, [r2, #0]
     6cc:	2300      	movs	r3, #0
     6ce:	62bb      	str	r3, [r7, #40]	; 0x28
     6d0:	e012      	b.n	6f8 <xvprintf+0xb4>
     6d2:	6aba      	ldr	r2, [r7, #40]	; 0x28
     6d4:	0013      	movs	r3, r2
     6d6:	009b      	lsls	r3, r3, #2
     6d8:	189b      	adds	r3, r3, r2
     6da:	005b      	lsls	r3, r3, #1
     6dc:	001a      	movs	r2, r3
     6de:	231f      	movs	r3, #31
     6e0:	18fb      	adds	r3, r7, r3
     6e2:	781b      	ldrb	r3, [r3, #0]
     6e4:	18d3      	adds	r3, r2, r3
     6e6:	3b30      	subs	r3, #48	; 0x30
     6e8:	62bb      	str	r3, [r7, #40]	; 0x28
     6ea:	687b      	ldr	r3, [r7, #4]
     6ec:	1c5a      	adds	r2, r3, #1
     6ee:	607a      	str	r2, [r7, #4]
     6f0:	221f      	movs	r2, #31
     6f2:	18ba      	adds	r2, r7, r2
     6f4:	781b      	ldrb	r3, [r3, #0]
     6f6:	7013      	strb	r3, [r2, #0]
     6f8:	231f      	movs	r3, #31
     6fa:	18fb      	adds	r3, r7, r3
     6fc:	781b      	ldrb	r3, [r3, #0]
     6fe:	2b2f      	cmp	r3, #47	; 0x2f
     700:	d904      	bls.n	70c <xvprintf+0xc8>
     702:	231f      	movs	r3, #31
     704:	18fb      	adds	r3, r7, r3
     706:	781b      	ldrb	r3, [r3, #0]
     708:	2b39      	cmp	r3, #57	; 0x39
     70a:	d9e2      	bls.n	6d2 <xvprintf+0x8e>
     70c:	231f      	movs	r3, #31
     70e:	18fb      	adds	r3, r7, r3
     710:	781b      	ldrb	r3, [r3, #0]
     712:	2b6c      	cmp	r3, #108	; 0x6c
     714:	d004      	beq.n	720 <xvprintf+0xdc>
     716:	231f      	movs	r3, #31
     718:	18fb      	adds	r3, r7, r3
     71a:	781b      	ldrb	r3, [r3, #0]
     71c:	2b4c      	cmp	r3, #76	; 0x4c
     71e:	d10a      	bne.n	736 <xvprintf+0xf2>
     720:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     722:	2204      	movs	r2, #4
     724:	4313      	orrs	r3, r2
     726:	627b      	str	r3, [r7, #36]	; 0x24
     728:	687b      	ldr	r3, [r7, #4]
     72a:	1c5a      	adds	r2, r3, #1
     72c:	607a      	str	r2, [r7, #4]
     72e:	221f      	movs	r2, #31
     730:	18ba      	adds	r2, r7, r2
     732:	781b      	ldrb	r3, [r3, #0]
     734:	7013      	strb	r3, [r2, #0]
     736:	231f      	movs	r3, #31
     738:	18fb      	adds	r3, r7, r3
     73a:	781b      	ldrb	r3, [r3, #0]
     73c:	2b00      	cmp	r3, #0
     73e:	d100      	bne.n	742 <xvprintf+0xfe>
     740:	e107      	b.n	952 <xvprintf+0x30e>
     742:	231e      	movs	r3, #30
     744:	18fb      	adds	r3, r7, r3
     746:	221f      	movs	r2, #31
     748:	18ba      	adds	r2, r7, r2
     74a:	7812      	ldrb	r2, [r2, #0]
     74c:	701a      	strb	r2, [r3, #0]
     74e:	231e      	movs	r3, #30
     750:	18fb      	adds	r3, r7, r3
     752:	781b      	ldrb	r3, [r3, #0]
     754:	2b60      	cmp	r3, #96	; 0x60
     756:	d906      	bls.n	766 <xvprintf+0x122>
     758:	231e      	movs	r3, #30
     75a:	18fb      	adds	r3, r7, r3
     75c:	221e      	movs	r2, #30
     75e:	18ba      	adds	r2, r7, r2
     760:	7812      	ldrb	r2, [r2, #0]
     762:	3a20      	subs	r2, #32
     764:	701a      	strb	r2, [r3, #0]
     766:	231e      	movs	r3, #30
     768:	18fb      	adds	r3, r7, r3
     76a:	781b      	ldrb	r3, [r3, #0]
     76c:	3b42      	subs	r3, #66	; 0x42
     76e:	2b16      	cmp	r3, #22
     770:	d847      	bhi.n	802 <xvprintf+0x1be>
     772:	009a      	lsls	r2, r3, #2
     774:	4b79      	ldr	r3, [pc, #484]	; (95c <xvprintf+0x318>)
     776:	18d3      	adds	r3, r2, r3
     778:	681b      	ldr	r3, [r3, #0]
     77a:	469f      	mov	pc, r3
     77c:	683b      	ldr	r3, [r7, #0]
     77e:	1d1a      	adds	r2, r3, #4
     780:	603a      	str	r2, [r7, #0]
     782:	681b      	ldr	r3, [r3, #0]
     784:	61bb      	str	r3, [r7, #24]
     786:	2300      	movs	r3, #0
     788:	62fb      	str	r3, [r7, #44]	; 0x2c
     78a:	e002      	b.n	792 <xvprintf+0x14e>
     78c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     78e:	3301      	adds	r3, #1
     790:	62fb      	str	r3, [r7, #44]	; 0x2c
     792:	69ba      	ldr	r2, [r7, #24]
     794:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     796:	18d3      	adds	r3, r2, r3
     798:	781b      	ldrb	r3, [r3, #0]
     79a:	2b00      	cmp	r3, #0
     79c:	d1f6      	bne.n	78c <xvprintf+0x148>
     79e:	e002      	b.n	7a6 <xvprintf+0x162>
     7a0:	2020      	movs	r0, #32
     7a2:	f7ff feef 	bl	584 <xputc>
     7a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     7a8:	2202      	movs	r2, #2
     7aa:	4013      	ands	r3, r2
     7ac:	d105      	bne.n	7ba <xvprintf+0x176>
     7ae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7b0:	1c5a      	adds	r2, r3, #1
     7b2:	62fa      	str	r2, [r7, #44]	; 0x2c
     7b4:	6aba      	ldr	r2, [r7, #40]	; 0x28
     7b6:	4293      	cmp	r3, r2
     7b8:	d3f2      	bcc.n	7a0 <xvprintf+0x15c>
     7ba:	69bb      	ldr	r3, [r7, #24]
     7bc:	0018      	movs	r0, r3
     7be:	f7ff ff0d 	bl	5dc <xputs>
     7c2:	e002      	b.n	7ca <xvprintf+0x186>
     7c4:	2020      	movs	r0, #32
     7c6:	f7ff fedd 	bl	584 <xputc>
     7ca:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     7cc:	1c5a      	adds	r2, r3, #1
     7ce:	62fa      	str	r2, [r7, #44]	; 0x2c
     7d0:	6aba      	ldr	r2, [r7, #40]	; 0x28
     7d2:	4293      	cmp	r3, r2
     7d4:	d3f6      	bcc.n	7c4 <xvprintf+0x180>
     7d6:	e0b9      	b.n	94c <xvprintf+0x308>
     7d8:	683b      	ldr	r3, [r7, #0]
     7da:	1d1a      	adds	r2, r3, #4
     7dc:	603a      	str	r2, [r7, #0]
     7de:	681b      	ldr	r3, [r3, #0]
     7e0:	b2db      	uxtb	r3, r3
     7e2:	0018      	movs	r0, r3
     7e4:	f7ff fece 	bl	584 <xputc>
     7e8:	e0b0      	b.n	94c <xvprintf+0x308>
     7ea:	2302      	movs	r3, #2
     7ec:	637b      	str	r3, [r7, #52]	; 0x34
     7ee:	e00f      	b.n	810 <xvprintf+0x1cc>
     7f0:	2308      	movs	r3, #8
     7f2:	637b      	str	r3, [r7, #52]	; 0x34
     7f4:	e00c      	b.n	810 <xvprintf+0x1cc>
     7f6:	230a      	movs	r3, #10
     7f8:	637b      	str	r3, [r7, #52]	; 0x34
     7fa:	e009      	b.n	810 <xvprintf+0x1cc>
     7fc:	2310      	movs	r3, #16
     7fe:	637b      	str	r3, [r7, #52]	; 0x34
     800:	e006      	b.n	810 <xvprintf+0x1cc>
     802:	231f      	movs	r3, #31
     804:	18fb      	adds	r3, r7, r3
     806:	781b      	ldrb	r3, [r3, #0]
     808:	0018      	movs	r0, r3
     80a:	f7ff febb 	bl	584 <xputc>
     80e:	e09d      	b.n	94c <xvprintf+0x308>
     810:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     812:	2204      	movs	r2, #4
     814:	4013      	ands	r3, r2
     816:	d004      	beq.n	822 <xvprintf+0x1de>
     818:	683b      	ldr	r3, [r7, #0]
     81a:	1d1a      	adds	r2, r3, #4
     81c:	603a      	str	r2, [r7, #0]
     81e:	681b      	ldr	r3, [r3, #0]
     820:	e00d      	b.n	83e <xvprintf+0x1fa>
     822:	231e      	movs	r3, #30
     824:	18fb      	adds	r3, r7, r3
     826:	781b      	ldrb	r3, [r3, #0]
     828:	2b44      	cmp	r3, #68	; 0x44
     82a:	d104      	bne.n	836 <xvprintf+0x1f2>
     82c:	683b      	ldr	r3, [r7, #0]
     82e:	1d1a      	adds	r2, r3, #4
     830:	603a      	str	r2, [r7, #0]
     832:	681b      	ldr	r3, [r3, #0]
     834:	e003      	b.n	83e <xvprintf+0x1fa>
     836:	683b      	ldr	r3, [r7, #0]
     838:	1d1a      	adds	r2, r3, #4
     83a:	603a      	str	r2, [r7, #0]
     83c:	681b      	ldr	r3, [r3, #0]
     83e:	623b      	str	r3, [r7, #32]
     840:	231e      	movs	r3, #30
     842:	18fb      	adds	r3, r7, r3
     844:	781b      	ldrb	r3, [r3, #0]
     846:	2b44      	cmp	r3, #68	; 0x44
     848:	d109      	bne.n	85e <xvprintf+0x21a>
     84a:	6a3b      	ldr	r3, [r7, #32]
     84c:	2b00      	cmp	r3, #0
     84e:	da06      	bge.n	85e <xvprintf+0x21a>
     850:	6a3b      	ldr	r3, [r7, #32]
     852:	425b      	negs	r3, r3
     854:	623b      	str	r3, [r7, #32]
     856:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     858:	2208      	movs	r2, #8
     85a:	4313      	orrs	r3, r2
     85c:	627b      	str	r3, [r7, #36]	; 0x24
     85e:	2300      	movs	r3, #0
     860:	633b      	str	r3, [r7, #48]	; 0x30
     862:	6a3b      	ldr	r3, [r7, #32]
     864:	6b79      	ldr	r1, [r7, #52]	; 0x34
     866:	0018      	movs	r0, r3
     868:	f001 f878 	bl	195c <__aeabi_uidivmod>
     86c:	000b      	movs	r3, r1
     86e:	001a      	movs	r2, r3
     870:	231e      	movs	r3, #30
     872:	18fb      	adds	r3, r7, r3
     874:	701a      	strb	r2, [r3, #0]
     876:	6b79      	ldr	r1, [r7, #52]	; 0x34
     878:	6a38      	ldr	r0, [r7, #32]
     87a:	f000 ffe9 	bl	1850 <__aeabi_uidiv>
     87e:	0003      	movs	r3, r0
     880:	623b      	str	r3, [r7, #32]
     882:	231e      	movs	r3, #30
     884:	18fb      	adds	r3, r7, r3
     886:	781b      	ldrb	r3, [r3, #0]
     888:	2b09      	cmp	r3, #9
     88a:	d90e      	bls.n	8aa <xvprintf+0x266>
     88c:	231f      	movs	r3, #31
     88e:	18fb      	adds	r3, r7, r3
     890:	781b      	ldrb	r3, [r3, #0]
     892:	2b78      	cmp	r3, #120	; 0x78
     894:	d101      	bne.n	89a <xvprintf+0x256>
     896:	2327      	movs	r3, #39	; 0x27
     898:	e000      	b.n	89c <xvprintf+0x258>
     89a:	2307      	movs	r3, #7
     89c:	221e      	movs	r2, #30
     89e:	18ba      	adds	r2, r7, r2
     8a0:	211e      	movs	r1, #30
     8a2:	1879      	adds	r1, r7, r1
     8a4:	7809      	ldrb	r1, [r1, #0]
     8a6:	185b      	adds	r3, r3, r1
     8a8:	7013      	strb	r3, [r2, #0]
     8aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8ac:	1c5a      	adds	r2, r3, #1
     8ae:	633a      	str	r2, [r7, #48]	; 0x30
     8b0:	221e      	movs	r2, #30
     8b2:	18ba      	adds	r2, r7, r2
     8b4:	7812      	ldrb	r2, [r2, #0]
     8b6:	3230      	adds	r2, #48	; 0x30
     8b8:	b2d1      	uxtb	r1, r2
     8ba:	2208      	movs	r2, #8
     8bc:	18ba      	adds	r2, r7, r2
     8be:	54d1      	strb	r1, [r2, r3]
     8c0:	6a3b      	ldr	r3, [r7, #32]
     8c2:	2b00      	cmp	r3, #0
     8c4:	d002      	beq.n	8cc <xvprintf+0x288>
     8c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8c8:	2b0f      	cmp	r3, #15
     8ca:	d9ca      	bls.n	862 <xvprintf+0x21e>
     8cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8ce:	2208      	movs	r2, #8
     8d0:	4013      	ands	r3, r2
     8d2:	d006      	beq.n	8e2 <xvprintf+0x29e>
     8d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8d6:	1c5a      	adds	r2, r3, #1
     8d8:	633a      	str	r2, [r7, #48]	; 0x30
     8da:	2208      	movs	r2, #8
     8dc:	18ba      	adds	r2, r7, r2
     8de:	212d      	movs	r1, #45	; 0x2d
     8e0:	54d1      	strb	r1, [r2, r3]
     8e2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     8e4:	62fb      	str	r3, [r7, #44]	; 0x2c
     8e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     8e8:	2201      	movs	r2, #1
     8ea:	4013      	ands	r3, r2
     8ec:	d001      	beq.n	8f2 <xvprintf+0x2ae>
     8ee:	2230      	movs	r2, #48	; 0x30
     8f0:	e000      	b.n	8f4 <xvprintf+0x2b0>
     8f2:	2220      	movs	r2, #32
     8f4:	231e      	movs	r3, #30
     8f6:	18fb      	adds	r3, r7, r3
     8f8:	701a      	strb	r2, [r3, #0]
     8fa:	e005      	b.n	908 <xvprintf+0x2c4>
     8fc:	231e      	movs	r3, #30
     8fe:	18fb      	adds	r3, r7, r3
     900:	781b      	ldrb	r3, [r3, #0]
     902:	0018      	movs	r0, r3
     904:	f7ff fe3e 	bl	584 <xputc>
     908:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     90a:	2202      	movs	r2, #2
     90c:	4013      	ands	r3, r2
     90e:	d105      	bne.n	91c <xvprintf+0x2d8>
     910:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     912:	1c5a      	adds	r2, r3, #1
     914:	62fa      	str	r2, [r7, #44]	; 0x2c
     916:	6aba      	ldr	r2, [r7, #40]	; 0x28
     918:	4293      	cmp	r3, r2
     91a:	d3ef      	bcc.n	8fc <xvprintf+0x2b8>
     91c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     91e:	3b01      	subs	r3, #1
     920:	633b      	str	r3, [r7, #48]	; 0x30
     922:	2308      	movs	r3, #8
     924:	18fa      	adds	r2, r7, r3
     926:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     928:	18d3      	adds	r3, r2, r3
     92a:	781b      	ldrb	r3, [r3, #0]
     92c:	0018      	movs	r0, r3
     92e:	f7ff fe29 	bl	584 <xputc>
     932:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     934:	2b00      	cmp	r3, #0
     936:	d1f1      	bne.n	91c <xvprintf+0x2d8>
     938:	e002      	b.n	940 <xvprintf+0x2fc>
     93a:	2020      	movs	r0, #32
     93c:	f7ff fe22 	bl	584 <xputc>
     940:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     942:	1c5a      	adds	r2, r3, #1
     944:	62fa      	str	r2, [r7, #44]	; 0x2c
     946:	6aba      	ldr	r2, [r7, #40]	; 0x28
     948:	4293      	cmp	r3, r2
     94a:	d3f6      	bcc.n	93a <xvprintf+0x2f6>
     94c:	e67f      	b.n	64e <xvprintf+0xa>
     94e:	46c0      	nop			; (mov r8, r8)
     950:	e000      	b.n	954 <xvprintf+0x310>
     952:	46c0      	nop			; (mov r8, r8)
     954:	46c0      	nop			; (mov r8, r8)
     956:	46bd      	mov	sp, r7
     958:	b00e      	add	sp, #56	; 0x38
     95a:	bd80      	pop	{r7, pc}
     95c:	0000198c 	.word	0x0000198c

00000960 <xprintf>:
     960:	b40f      	push	{r0, r1, r2, r3}
     962:	b580      	push	{r7, lr}
     964:	b082      	sub	sp, #8
     966:	af00      	add	r7, sp, #0
     968:	2314      	movs	r3, #20
     96a:	18fb      	adds	r3, r7, r3
     96c:	607b      	str	r3, [r7, #4]
     96e:	687a      	ldr	r2, [r7, #4]
     970:	693b      	ldr	r3, [r7, #16]
     972:	0011      	movs	r1, r2
     974:	0018      	movs	r0, r3
     976:	f7ff fe65 	bl	644 <xvprintf>
     97a:	46c0      	nop			; (mov r8, r8)
     97c:	46bd      	mov	sp, r7
     97e:	b002      	add	sp, #8
     980:	bc80      	pop	{r7}
     982:	bc08      	pop	{r3}
     984:	b004      	add	sp, #16
     986:	4718      	bx	r3

00000988 <xsprintf>:
     988:	b40e      	push	{r1, r2, r3}
     98a:	b580      	push	{r7, lr}
     98c:	b085      	sub	sp, #20
     98e:	af00      	add	r7, sp, #0
     990:	6078      	str	r0, [r7, #4]
     992:	4b0d      	ldr	r3, [pc, #52]	; (9c8 <xsprintf+0x40>)
     994:	687a      	ldr	r2, [r7, #4]
     996:	601a      	str	r2, [r3, #0]
     998:	2320      	movs	r3, #32
     99a:	18fb      	adds	r3, r7, r3
     99c:	60fb      	str	r3, [r7, #12]
     99e:	68fa      	ldr	r2, [r7, #12]
     9a0:	69fb      	ldr	r3, [r7, #28]
     9a2:	0011      	movs	r1, r2
     9a4:	0018      	movs	r0, r3
     9a6:	f7ff fe4d 	bl	644 <xvprintf>
     9aa:	4b07      	ldr	r3, [pc, #28]	; (9c8 <xsprintf+0x40>)
     9ac:	681b      	ldr	r3, [r3, #0]
     9ae:	2200      	movs	r2, #0
     9b0:	701a      	strb	r2, [r3, #0]
     9b2:	4b05      	ldr	r3, [pc, #20]	; (9c8 <xsprintf+0x40>)
     9b4:	2200      	movs	r2, #0
     9b6:	601a      	str	r2, [r3, #0]
     9b8:	46c0      	nop			; (mov r8, r8)
     9ba:	46bd      	mov	sp, r7
     9bc:	b005      	add	sp, #20
     9be:	bc80      	pop	{r7}
     9c0:	bc08      	pop	{r3}
     9c2:	b003      	add	sp, #12
     9c4:	4718      	bx	r3
     9c6:	46c0      	nop			; (mov r8, r8)
     9c8:	20000038 	.word	0x20000038

000009cc <xfprintf>:
     9cc:	b40e      	push	{r1, r2, r3}
     9ce:	b580      	push	{r7, lr}
     9d0:	b085      	sub	sp, #20
     9d2:	af00      	add	r7, sp, #0
     9d4:	6078      	str	r0, [r7, #4]
     9d6:	4b0c      	ldr	r3, [pc, #48]	; (a08 <xfprintf+0x3c>)
     9d8:	681b      	ldr	r3, [r3, #0]
     9da:	60fb      	str	r3, [r7, #12]
     9dc:	4b0a      	ldr	r3, [pc, #40]	; (a08 <xfprintf+0x3c>)
     9de:	687a      	ldr	r2, [r7, #4]
     9e0:	601a      	str	r2, [r3, #0]
     9e2:	2320      	movs	r3, #32
     9e4:	18fb      	adds	r3, r7, r3
     9e6:	60bb      	str	r3, [r7, #8]
     9e8:	68ba      	ldr	r2, [r7, #8]
     9ea:	69fb      	ldr	r3, [r7, #28]
     9ec:	0011      	movs	r1, r2
     9ee:	0018      	movs	r0, r3
     9f0:	f7ff fe28 	bl	644 <xvprintf>
     9f4:	4b04      	ldr	r3, [pc, #16]	; (a08 <xfprintf+0x3c>)
     9f6:	68fa      	ldr	r2, [r7, #12]
     9f8:	601a      	str	r2, [r3, #0]
     9fa:	46c0      	nop			; (mov r8, r8)
     9fc:	46bd      	mov	sp, r7
     9fe:	b005      	add	sp, #20
     a00:	bc80      	pop	{r7}
     a02:	bc08      	pop	{r3}
     a04:	b003      	add	sp, #12
     a06:	4718      	bx	r3
     a08:	20000034 	.word	0x20000034

00000a0c <put_dump>:
     a0c:	b580      	push	{r7, lr}
     a0e:	b088      	sub	sp, #32
     a10:	af00      	add	r7, sp, #0
     a12:	60f8      	str	r0, [r7, #12]
     a14:	60b9      	str	r1, [r7, #8]
     a16:	607a      	str	r2, [r7, #4]
     a18:	603b      	str	r3, [r7, #0]
     a1a:	68ba      	ldr	r2, [r7, #8]
     a1c:	4b38      	ldr	r3, [pc, #224]	; (b00 <put_dump+0xf4>)
     a1e:	0011      	movs	r1, r2
     a20:	0018      	movs	r0, r3
     a22:	f7ff ff9d 	bl	960 <xprintf>
     a26:	683b      	ldr	r3, [r7, #0]
     a28:	2b02      	cmp	r3, #2
     a2a:	d03c      	beq.n	aa6 <put_dump+0x9a>
     a2c:	2b04      	cmp	r3, #4
     a2e:	d04d      	beq.n	acc <put_dump+0xc0>
     a30:	2b01      	cmp	r3, #1
     a32:	d15d      	bne.n	af0 <put_dump+0xe4>
     a34:	68fb      	ldr	r3, [r7, #12]
     a36:	613b      	str	r3, [r7, #16]
     a38:	2300      	movs	r3, #0
     a3a:	61fb      	str	r3, [r7, #28]
     a3c:	e00c      	b.n	a58 <put_dump+0x4c>
     a3e:	69fb      	ldr	r3, [r7, #28]
     a40:	693a      	ldr	r2, [r7, #16]
     a42:	18d3      	adds	r3, r2, r3
     a44:	781b      	ldrb	r3, [r3, #0]
     a46:	001a      	movs	r2, r3
     a48:	4b2e      	ldr	r3, [pc, #184]	; (b04 <put_dump+0xf8>)
     a4a:	0011      	movs	r1, r2
     a4c:	0018      	movs	r0, r3
     a4e:	f7ff ff87 	bl	960 <xprintf>
     a52:	69fb      	ldr	r3, [r7, #28]
     a54:	3301      	adds	r3, #1
     a56:	61fb      	str	r3, [r7, #28]
     a58:	69fa      	ldr	r2, [r7, #28]
     a5a:	687b      	ldr	r3, [r7, #4]
     a5c:	429a      	cmp	r2, r3
     a5e:	dbee      	blt.n	a3e <put_dump+0x32>
     a60:	2020      	movs	r0, #32
     a62:	f7ff fd8f 	bl	584 <xputc>
     a66:	2300      	movs	r3, #0
     a68:	61fb      	str	r3, [r7, #28]
     a6a:	e017      	b.n	a9c <put_dump+0x90>
     a6c:	69fb      	ldr	r3, [r7, #28]
     a6e:	693a      	ldr	r2, [r7, #16]
     a70:	18d3      	adds	r3, r2, r3
     a72:	781b      	ldrb	r3, [r3, #0]
     a74:	2b1f      	cmp	r3, #31
     a76:	d90a      	bls.n	a8e <put_dump+0x82>
     a78:	69fb      	ldr	r3, [r7, #28]
     a7a:	693a      	ldr	r2, [r7, #16]
     a7c:	18d3      	adds	r3, r2, r3
     a7e:	781b      	ldrb	r3, [r3, #0]
     a80:	2b7e      	cmp	r3, #126	; 0x7e
     a82:	d804      	bhi.n	a8e <put_dump+0x82>
     a84:	69fb      	ldr	r3, [r7, #28]
     a86:	693a      	ldr	r2, [r7, #16]
     a88:	18d3      	adds	r3, r2, r3
     a8a:	781b      	ldrb	r3, [r3, #0]
     a8c:	e000      	b.n	a90 <put_dump+0x84>
     a8e:	232e      	movs	r3, #46	; 0x2e
     a90:	0018      	movs	r0, r3
     a92:	f7ff fd77 	bl	584 <xputc>
     a96:	69fb      	ldr	r3, [r7, #28]
     a98:	3301      	adds	r3, #1
     a9a:	61fb      	str	r3, [r7, #28]
     a9c:	69fa      	ldr	r2, [r7, #28]
     a9e:	687b      	ldr	r3, [r7, #4]
     aa0:	429a      	cmp	r2, r3
     aa2:	dbe3      	blt.n	a6c <put_dump+0x60>
     aa4:	e024      	b.n	af0 <put_dump+0xe4>
     aa6:	68fb      	ldr	r3, [r7, #12]
     aa8:	61bb      	str	r3, [r7, #24]
     aaa:	69bb      	ldr	r3, [r7, #24]
     aac:	1c9a      	adds	r2, r3, #2
     aae:	61ba      	str	r2, [r7, #24]
     ab0:	881b      	ldrh	r3, [r3, #0]
     ab2:	001a      	movs	r2, r3
     ab4:	4b14      	ldr	r3, [pc, #80]	; (b08 <put_dump+0xfc>)
     ab6:	0011      	movs	r1, r2
     ab8:	0018      	movs	r0, r3
     aba:	f7ff ff51 	bl	960 <xprintf>
     abe:	687b      	ldr	r3, [r7, #4]
     ac0:	3b01      	subs	r3, #1
     ac2:	607b      	str	r3, [r7, #4]
     ac4:	687b      	ldr	r3, [r7, #4]
     ac6:	2b00      	cmp	r3, #0
     ac8:	d1ef      	bne.n	aaa <put_dump+0x9e>
     aca:	e011      	b.n	af0 <put_dump+0xe4>
     acc:	68fb      	ldr	r3, [r7, #12]
     ace:	617b      	str	r3, [r7, #20]
     ad0:	697b      	ldr	r3, [r7, #20]
     ad2:	1d1a      	adds	r2, r3, #4
     ad4:	617a      	str	r2, [r7, #20]
     ad6:	681a      	ldr	r2, [r3, #0]
     ad8:	4b0c      	ldr	r3, [pc, #48]	; (b0c <put_dump+0x100>)
     ada:	0011      	movs	r1, r2
     adc:	0018      	movs	r0, r3
     ade:	f7ff ff3f 	bl	960 <xprintf>
     ae2:	687b      	ldr	r3, [r7, #4]
     ae4:	3b01      	subs	r3, #1
     ae6:	607b      	str	r3, [r7, #4]
     ae8:	687b      	ldr	r3, [r7, #4]
     aea:	2b00      	cmp	r3, #0
     aec:	d1f0      	bne.n	ad0 <put_dump+0xc4>
     aee:	46c0      	nop			; (mov r8, r8)
     af0:	200a      	movs	r0, #10
     af2:	f7ff fd47 	bl	584 <xputc>
     af6:	46c0      	nop			; (mov r8, r8)
     af8:	46bd      	mov	sp, r7
     afa:	b008      	add	sp, #32
     afc:	bd80      	pop	{r7, pc}
     afe:	46c0      	nop			; (mov r8, r8)
     b00:	000019e8 	.word	0x000019e8
     b04:	000019f0 	.word	0x000019f0
     b08:	000019f8 	.word	0x000019f8
     b0c:	00001a00 	.word	0x00001a00

00000b10 <xgets>:
     b10:	b580      	push	{r7, lr}
     b12:	b084      	sub	sp, #16
     b14:	af00      	add	r7, sp, #0
     b16:	6078      	str	r0, [r7, #4]
     b18:	6039      	str	r1, [r7, #0]
     b1a:	4b24      	ldr	r3, [pc, #144]	; (bac <xgets+0x9c>)
     b1c:	681b      	ldr	r3, [r3, #0]
     b1e:	2b00      	cmp	r3, #0
     b20:	d101      	bne.n	b26 <xgets+0x16>
     b22:	2300      	movs	r3, #0
     b24:	e03e      	b.n	ba4 <xgets+0x94>
     b26:	2300      	movs	r3, #0
     b28:	60fb      	str	r3, [r7, #12]
     b2a:	4b20      	ldr	r3, [pc, #128]	; (bac <xgets+0x9c>)
     b2c:	681b      	ldr	r3, [r3, #0]
     b2e:	4798      	blx	r3
     b30:	0003      	movs	r3, r0
     b32:	60bb      	str	r3, [r7, #8]
     b34:	68bb      	ldr	r3, [r7, #8]
     b36:	2b00      	cmp	r3, #0
     b38:	d101      	bne.n	b3e <xgets+0x2e>
     b3a:	2300      	movs	r3, #0
     b3c:	e032      	b.n	ba4 <xgets+0x94>
     b3e:	68bb      	ldr	r3, [r7, #8]
     b40:	2b0d      	cmp	r3, #13
     b42:	d025      	beq.n	b90 <xgets+0x80>
     b44:	68bb      	ldr	r3, [r7, #8]
     b46:	2b08      	cmp	r3, #8
     b48:	d10b      	bne.n	b62 <xgets+0x52>
     b4a:	68fb      	ldr	r3, [r7, #12]
     b4c:	2b00      	cmp	r3, #0
     b4e:	d008      	beq.n	b62 <xgets+0x52>
     b50:	68fb      	ldr	r3, [r7, #12]
     b52:	3b01      	subs	r3, #1
     b54:	60fb      	str	r3, [r7, #12]
     b56:	68bb      	ldr	r3, [r7, #8]
     b58:	b2db      	uxtb	r3, r3
     b5a:	0018      	movs	r0, r3
     b5c:	f7ff fd12 	bl	584 <xputc>
     b60:	e015      	b.n	b8e <xgets+0x7e>
     b62:	68bb      	ldr	r3, [r7, #8]
     b64:	2b1f      	cmp	r3, #31
     b66:	dde0      	ble.n	b2a <xgets+0x1a>
     b68:	683b      	ldr	r3, [r7, #0]
     b6a:	1e5a      	subs	r2, r3, #1
     b6c:	68fb      	ldr	r3, [r7, #12]
     b6e:	429a      	cmp	r2, r3
     b70:	dddb      	ble.n	b2a <xgets+0x1a>
     b72:	68fb      	ldr	r3, [r7, #12]
     b74:	1c5a      	adds	r2, r3, #1
     b76:	60fa      	str	r2, [r7, #12]
     b78:	001a      	movs	r2, r3
     b7a:	687b      	ldr	r3, [r7, #4]
     b7c:	189b      	adds	r3, r3, r2
     b7e:	68ba      	ldr	r2, [r7, #8]
     b80:	b2d2      	uxtb	r2, r2
     b82:	701a      	strb	r2, [r3, #0]
     b84:	68bb      	ldr	r3, [r7, #8]
     b86:	b2db      	uxtb	r3, r3
     b88:	0018      	movs	r0, r3
     b8a:	f7ff fcfb 	bl	584 <xputc>
     b8e:	e7cc      	b.n	b2a <xgets+0x1a>
     b90:	46c0      	nop			; (mov r8, r8)
     b92:	68fb      	ldr	r3, [r7, #12]
     b94:	687a      	ldr	r2, [r7, #4]
     b96:	18d3      	adds	r3, r2, r3
     b98:	2200      	movs	r2, #0
     b9a:	701a      	strb	r2, [r3, #0]
     b9c:	200a      	movs	r0, #10
     b9e:	f7ff fcf1 	bl	584 <xputc>
     ba2:	2301      	movs	r3, #1
     ba4:	0018      	movs	r0, r3
     ba6:	46bd      	mov	sp, r7
     ba8:	b004      	add	sp, #16
     baa:	bd80      	pop	{r7, pc}
     bac:	2000003c 	.word	0x2000003c

00000bb0 <xfgets>:
     bb0:	b580      	push	{r7, lr}
     bb2:	b086      	sub	sp, #24
     bb4:	af00      	add	r7, sp, #0
     bb6:	60f8      	str	r0, [r7, #12]
     bb8:	60b9      	str	r1, [r7, #8]
     bba:	607a      	str	r2, [r7, #4]
     bbc:	4b0a      	ldr	r3, [pc, #40]	; (be8 <xfgets+0x38>)
     bbe:	681b      	ldr	r3, [r3, #0]
     bc0:	617b      	str	r3, [r7, #20]
     bc2:	4b09      	ldr	r3, [pc, #36]	; (be8 <xfgets+0x38>)
     bc4:	68fa      	ldr	r2, [r7, #12]
     bc6:	601a      	str	r2, [r3, #0]
     bc8:	687a      	ldr	r2, [r7, #4]
     bca:	68bb      	ldr	r3, [r7, #8]
     bcc:	0011      	movs	r1, r2
     bce:	0018      	movs	r0, r3
     bd0:	f7ff ff9e 	bl	b10 <xgets>
     bd4:	0003      	movs	r3, r0
     bd6:	613b      	str	r3, [r7, #16]
     bd8:	4b03      	ldr	r3, [pc, #12]	; (be8 <xfgets+0x38>)
     bda:	697a      	ldr	r2, [r7, #20]
     bdc:	601a      	str	r2, [r3, #0]
     bde:	693b      	ldr	r3, [r7, #16]
     be0:	0018      	movs	r0, r3
     be2:	46bd      	mov	sp, r7
     be4:	b006      	add	sp, #24
     be6:	bd80      	pop	{r7, pc}
     be8:	2000003c 	.word	0x2000003c

00000bec <xatoi>:
     bec:	b580      	push	{r7, lr}
     bee:	b084      	sub	sp, #16
     bf0:	af00      	add	r7, sp, #0
     bf2:	6078      	str	r0, [r7, #4]
     bf4:	6039      	str	r1, [r7, #0]
     bf6:	2309      	movs	r3, #9
     bf8:	18fb      	adds	r3, r7, r3
     bfa:	2200      	movs	r2, #0
     bfc:	701a      	strb	r2, [r3, #0]
     bfe:	683b      	ldr	r3, [r7, #0]
     c00:	2200      	movs	r2, #0
     c02:	601a      	str	r2, [r3, #0]
     c04:	e004      	b.n	c10 <xatoi+0x24>
     c06:	687b      	ldr	r3, [r7, #4]
     c08:	681b      	ldr	r3, [r3, #0]
     c0a:	1c5a      	adds	r2, r3, #1
     c0c:	687b      	ldr	r3, [r7, #4]
     c0e:	601a      	str	r2, [r3, #0]
     c10:	687b      	ldr	r3, [r7, #4]
     c12:	681a      	ldr	r2, [r3, #0]
     c14:	230b      	movs	r3, #11
     c16:	18fb      	adds	r3, r7, r3
     c18:	7812      	ldrb	r2, [r2, #0]
     c1a:	701a      	strb	r2, [r3, #0]
     c1c:	230b      	movs	r3, #11
     c1e:	18fb      	adds	r3, r7, r3
     c20:	781b      	ldrb	r3, [r3, #0]
     c22:	2b20      	cmp	r3, #32
     c24:	d0ef      	beq.n	c06 <xatoi+0x1a>
     c26:	230b      	movs	r3, #11
     c28:	18fb      	adds	r3, r7, r3
     c2a:	781b      	ldrb	r3, [r3, #0]
     c2c:	2b2d      	cmp	r3, #45	; 0x2d
     c2e:	d10e      	bne.n	c4e <xatoi+0x62>
     c30:	2309      	movs	r3, #9
     c32:	18fb      	adds	r3, r7, r3
     c34:	2201      	movs	r2, #1
     c36:	701a      	strb	r2, [r3, #0]
     c38:	687b      	ldr	r3, [r7, #4]
     c3a:	681b      	ldr	r3, [r3, #0]
     c3c:	1c5a      	adds	r2, r3, #1
     c3e:	687b      	ldr	r3, [r7, #4]
     c40:	601a      	str	r2, [r3, #0]
     c42:	687b      	ldr	r3, [r7, #4]
     c44:	681a      	ldr	r2, [r3, #0]
     c46:	230b      	movs	r3, #11
     c48:	18fb      	adds	r3, r7, r3
     c4a:	7812      	ldrb	r2, [r2, #0]
     c4c:	701a      	strb	r2, [r3, #0]
     c4e:	230b      	movs	r3, #11
     c50:	18fb      	adds	r3, r7, r3
     c52:	781b      	ldrb	r3, [r3, #0]
     c54:	2b30      	cmp	r3, #48	; 0x30
     c56:	d149      	bne.n	cec <xatoi+0x100>
     c58:	687b      	ldr	r3, [r7, #4]
     c5a:	681b      	ldr	r3, [r3, #0]
     c5c:	1c5a      	adds	r2, r3, #1
     c5e:	687b      	ldr	r3, [r7, #4]
     c60:	601a      	str	r2, [r3, #0]
     c62:	687b      	ldr	r3, [r7, #4]
     c64:	681a      	ldr	r2, [r3, #0]
     c66:	230b      	movs	r3, #11
     c68:	18fb      	adds	r3, r7, r3
     c6a:	7812      	ldrb	r2, [r2, #0]
     c6c:	701a      	strb	r2, [r3, #0]
     c6e:	230b      	movs	r3, #11
     c70:	18fb      	adds	r3, r7, r3
     c72:	781b      	ldrb	r3, [r3, #0]
     c74:	2b62      	cmp	r3, #98	; 0x62
     c76:	d011      	beq.n	c9c <xatoi+0xb0>
     c78:	2b78      	cmp	r3, #120	; 0x78
     c7a:	d11f      	bne.n	cbc <xatoi+0xd0>
     c7c:	230a      	movs	r3, #10
     c7e:	18fb      	adds	r3, r7, r3
     c80:	2210      	movs	r2, #16
     c82:	701a      	strb	r2, [r3, #0]
     c84:	687b      	ldr	r3, [r7, #4]
     c86:	681b      	ldr	r3, [r3, #0]
     c88:	1c5a      	adds	r2, r3, #1
     c8a:	687b      	ldr	r3, [r7, #4]
     c8c:	601a      	str	r2, [r3, #0]
     c8e:	687b      	ldr	r3, [r7, #4]
     c90:	681a      	ldr	r2, [r3, #0]
     c92:	230b      	movs	r3, #11
     c94:	18fb      	adds	r3, r7, r3
     c96:	7812      	ldrb	r2, [r2, #0]
     c98:	701a      	strb	r2, [r3, #0]
     c9a:	e037      	b.n	d0c <xatoi+0x120>
     c9c:	230a      	movs	r3, #10
     c9e:	18fb      	adds	r3, r7, r3
     ca0:	2202      	movs	r2, #2
     ca2:	701a      	strb	r2, [r3, #0]
     ca4:	687b      	ldr	r3, [r7, #4]
     ca6:	681b      	ldr	r3, [r3, #0]
     ca8:	1c5a      	adds	r2, r3, #1
     caa:	687b      	ldr	r3, [r7, #4]
     cac:	601a      	str	r2, [r3, #0]
     cae:	687b      	ldr	r3, [r7, #4]
     cb0:	681a      	ldr	r2, [r3, #0]
     cb2:	230b      	movs	r3, #11
     cb4:	18fb      	adds	r3, r7, r3
     cb6:	7812      	ldrb	r2, [r2, #0]
     cb8:	701a      	strb	r2, [r3, #0]
     cba:	e027      	b.n	d0c <xatoi+0x120>
     cbc:	230b      	movs	r3, #11
     cbe:	18fb      	adds	r3, r7, r3
     cc0:	781b      	ldrb	r3, [r3, #0]
     cc2:	2b20      	cmp	r3, #32
     cc4:	d801      	bhi.n	cca <xatoi+0xde>
     cc6:	2301      	movs	r3, #1
     cc8:	e079      	b.n	dbe <xatoi+0x1d2>
     cca:	230b      	movs	r3, #11
     ccc:	18fb      	adds	r3, r7, r3
     cce:	781b      	ldrb	r3, [r3, #0]
     cd0:	2b2f      	cmp	r3, #47	; 0x2f
     cd2:	d904      	bls.n	cde <xatoi+0xf2>
     cd4:	230b      	movs	r3, #11
     cd6:	18fb      	adds	r3, r7, r3
     cd8:	781b      	ldrb	r3, [r3, #0]
     cda:	2b39      	cmp	r3, #57	; 0x39
     cdc:	d901      	bls.n	ce2 <xatoi+0xf6>
     cde:	2300      	movs	r3, #0
     ce0:	e06d      	b.n	dbe <xatoi+0x1d2>
     ce2:	230a      	movs	r3, #10
     ce4:	18fb      	adds	r3, r7, r3
     ce6:	2208      	movs	r2, #8
     ce8:	701a      	strb	r2, [r3, #0]
     cea:	e00f      	b.n	d0c <xatoi+0x120>
     cec:	230b      	movs	r3, #11
     cee:	18fb      	adds	r3, r7, r3
     cf0:	781b      	ldrb	r3, [r3, #0]
     cf2:	2b2f      	cmp	r3, #47	; 0x2f
     cf4:	d904      	bls.n	d00 <xatoi+0x114>
     cf6:	230b      	movs	r3, #11
     cf8:	18fb      	adds	r3, r7, r3
     cfa:	781b      	ldrb	r3, [r3, #0]
     cfc:	2b39      	cmp	r3, #57	; 0x39
     cfe:	d901      	bls.n	d04 <xatoi+0x118>
     d00:	2300      	movs	r3, #0
     d02:	e05c      	b.n	dbe <xatoi+0x1d2>
     d04:	230a      	movs	r3, #10
     d06:	18fb      	adds	r3, r7, r3
     d08:	220a      	movs	r2, #10
     d0a:	701a      	strb	r2, [r3, #0]
     d0c:	2300      	movs	r3, #0
     d0e:	60fb      	str	r3, [r7, #12]
     d10:	e044      	b.n	d9c <xatoi+0x1b0>
     d12:	230b      	movs	r3, #11
     d14:	18fb      	adds	r3, r7, r3
     d16:	781b      	ldrb	r3, [r3, #0]
     d18:	2b60      	cmp	r3, #96	; 0x60
     d1a:	d906      	bls.n	d2a <xatoi+0x13e>
     d1c:	230b      	movs	r3, #11
     d1e:	18fb      	adds	r3, r7, r3
     d20:	220b      	movs	r2, #11
     d22:	18ba      	adds	r2, r7, r2
     d24:	7812      	ldrb	r2, [r2, #0]
     d26:	3a20      	subs	r2, #32
     d28:	701a      	strb	r2, [r3, #0]
     d2a:	230b      	movs	r3, #11
     d2c:	18fb      	adds	r3, r7, r3
     d2e:	220b      	movs	r2, #11
     d30:	18ba      	adds	r2, r7, r2
     d32:	7812      	ldrb	r2, [r2, #0]
     d34:	3a30      	subs	r2, #48	; 0x30
     d36:	701a      	strb	r2, [r3, #0]
     d38:	230b      	movs	r3, #11
     d3a:	18fb      	adds	r3, r7, r3
     d3c:	781b      	ldrb	r3, [r3, #0]
     d3e:	2b10      	cmp	r3, #16
     d40:	d90d      	bls.n	d5e <xatoi+0x172>
     d42:	230b      	movs	r3, #11
     d44:	18fb      	adds	r3, r7, r3
     d46:	220b      	movs	r2, #11
     d48:	18ba      	adds	r2, r7, r2
     d4a:	7812      	ldrb	r2, [r2, #0]
     d4c:	3a07      	subs	r2, #7
     d4e:	701a      	strb	r2, [r3, #0]
     d50:	230b      	movs	r3, #11
     d52:	18fb      	adds	r3, r7, r3
     d54:	781b      	ldrb	r3, [r3, #0]
     d56:	2b09      	cmp	r3, #9
     d58:	d801      	bhi.n	d5e <xatoi+0x172>
     d5a:	2300      	movs	r3, #0
     d5c:	e02f      	b.n	dbe <xatoi+0x1d2>
     d5e:	230b      	movs	r3, #11
     d60:	18fa      	adds	r2, r7, r3
     d62:	230a      	movs	r3, #10
     d64:	18fb      	adds	r3, r7, r3
     d66:	7812      	ldrb	r2, [r2, #0]
     d68:	781b      	ldrb	r3, [r3, #0]
     d6a:	429a      	cmp	r2, r3
     d6c:	d301      	bcc.n	d72 <xatoi+0x186>
     d6e:	2300      	movs	r3, #0
     d70:	e025      	b.n	dbe <xatoi+0x1d2>
     d72:	230a      	movs	r3, #10
     d74:	18fb      	adds	r3, r7, r3
     d76:	781b      	ldrb	r3, [r3, #0]
     d78:	68fa      	ldr	r2, [r7, #12]
     d7a:	435a      	muls	r2, r3
     d7c:	230b      	movs	r3, #11
     d7e:	18fb      	adds	r3, r7, r3
     d80:	781b      	ldrb	r3, [r3, #0]
     d82:	18d3      	adds	r3, r2, r3
     d84:	60fb      	str	r3, [r7, #12]
     d86:	687b      	ldr	r3, [r7, #4]
     d88:	681b      	ldr	r3, [r3, #0]
     d8a:	1c5a      	adds	r2, r3, #1
     d8c:	687b      	ldr	r3, [r7, #4]
     d8e:	601a      	str	r2, [r3, #0]
     d90:	687b      	ldr	r3, [r7, #4]
     d92:	681a      	ldr	r2, [r3, #0]
     d94:	230b      	movs	r3, #11
     d96:	18fb      	adds	r3, r7, r3
     d98:	7812      	ldrb	r2, [r2, #0]
     d9a:	701a      	strb	r2, [r3, #0]
     d9c:	230b      	movs	r3, #11
     d9e:	18fb      	adds	r3, r7, r3
     da0:	781b      	ldrb	r3, [r3, #0]
     da2:	2b20      	cmp	r3, #32
     da4:	d8b5      	bhi.n	d12 <xatoi+0x126>
     da6:	2309      	movs	r3, #9
     da8:	18fb      	adds	r3, r7, r3
     daa:	781b      	ldrb	r3, [r3, #0]
     dac:	2b00      	cmp	r3, #0
     dae:	d002      	beq.n	db6 <xatoi+0x1ca>
     db0:	68fb      	ldr	r3, [r7, #12]
     db2:	425b      	negs	r3, r3
     db4:	60fb      	str	r3, [r7, #12]
     db6:	68fa      	ldr	r2, [r7, #12]
     db8:	683b      	ldr	r3, [r7, #0]
     dba:	601a      	str	r2, [r3, #0]
     dbc:	2301      	movs	r3, #1
     dbe:	0018      	movs	r0, r3
     dc0:	46bd      	mov	sp, r7
     dc2:	b004      	add	sp, #16
     dc4:	bd80      	pop	{r7, pc}
     dc6:	46c0      	nop			; (mov r8, r8)

00000dc8 <handler_reset>:
     dc8:	b580      	push	{r7, lr}
     dca:	b082      	sub	sp, #8
     dcc:	af00      	add	r7, sp, #0
     dce:	4b11      	ldr	r3, [pc, #68]	; (e14 <handler_reset+0x4c>)
     dd0:	607b      	str	r3, [r7, #4]
     dd2:	4b11      	ldr	r3, [pc, #68]	; (e18 <handler_reset+0x50>)
     dd4:	603b      	str	r3, [r7, #0]
     dd6:	e007      	b.n	de8 <handler_reset+0x20>
     dd8:	683b      	ldr	r3, [r7, #0]
     dda:	1d1a      	adds	r2, r3, #4
     ddc:	603a      	str	r2, [r7, #0]
     dde:	687a      	ldr	r2, [r7, #4]
     de0:	1d11      	adds	r1, r2, #4
     de2:	6079      	str	r1, [r7, #4]
     de4:	6812      	ldr	r2, [r2, #0]
     de6:	601a      	str	r2, [r3, #0]
     de8:	683a      	ldr	r2, [r7, #0]
     dea:	4b0c      	ldr	r3, [pc, #48]	; (e1c <handler_reset+0x54>)
     dec:	429a      	cmp	r2, r3
     dee:	d3f3      	bcc.n	dd8 <handler_reset+0x10>
     df0:	4b0b      	ldr	r3, [pc, #44]	; (e20 <handler_reset+0x58>)
     df2:	603b      	str	r3, [r7, #0]
     df4:	e004      	b.n	e00 <handler_reset+0x38>
     df6:	683b      	ldr	r3, [r7, #0]
     df8:	1d1a      	adds	r2, r3, #4
     dfa:	603a      	str	r2, [r7, #0]
     dfc:	2200      	movs	r2, #0
     dfe:	601a      	str	r2, [r3, #0]
     e00:	683a      	ldr	r2, [r7, #0]
     e02:	4b08      	ldr	r3, [pc, #32]	; (e24 <handler_reset+0x5c>)
     e04:	429a      	cmp	r2, r3
     e06:	d3f6      	bcc.n	df6 <handler_reset+0x2e>
     e08:	f7ff f9b0 	bl	16c <main>
     e0c:	46c0      	nop			; (mov r8, r8)
     e0e:	46bd      	mov	sp, r7
     e10:	b002      	add	sp, #8
     e12:	bd80      	pop	{r7, pc}
     e14:	00001cf4 	.word	0x00001cf4
     e18:	20000000 	.word	0x20000000
     e1c:	20000028 	.word	0x20000028
     e20:	20000028 	.word	0x20000028
     e24:	20000064 	.word	0x20000064

00000e28 <default_handler>:
     e28:	b580      	push	{r7, lr}
     e2a:	af00      	add	r7, sp, #0
     e2c:	e7fe      	b.n	e2c <default_handler+0x4>
     e2e:	46c0      	nop			; (mov r8, r8)

00000e30 <usb_device_init>:
     e30:	b580      	push	{r7, lr}
     e32:	af00      	add	r7, sp, #0
     e34:	4b1a      	ldr	r3, [pc, #104]	; (ea0 <usb_device_init+0x70>)
     e36:	4a1a      	ldr	r2, [pc, #104]	; (ea0 <usb_device_init+0x70>)
     e38:	69d2      	ldr	r2, [r2, #28]
     e3a:	2104      	movs	r1, #4
     e3c:	430a      	orrs	r2, r1
     e3e:	61da      	str	r2, [r3, #28]
     e40:	4b17      	ldr	r3, [pc, #92]	; (ea0 <usb_device_init+0x70>)
     e42:	2283      	movs	r2, #131	; 0x83
     e44:	0052      	lsls	r2, r2, #1
     e46:	611a      	str	r2, [r3, #16]
     e48:	4b15      	ldr	r3, [pc, #84]	; (ea0 <usb_device_init+0x70>)
     e4a:	4a15      	ldr	r2, [pc, #84]	; (ea0 <usb_device_init+0x70>)
     e4c:	6852      	ldr	r2, [r2, #4]
     e4e:	2151      	movs	r1, #81	; 0x51
     e50:	430a      	orrs	r2, r1
     e52:	605a      	str	r2, [r3, #4]
     e54:	46c0      	nop			; (mov r8, r8)
     e56:	4b12      	ldr	r3, [pc, #72]	; (ea0 <usb_device_init+0x70>)
     e58:	681b      	ldr	r3, [r3, #0]
     e5a:	2201      	movs	r2, #1
     e5c:	4013      	ands	r3, r2
     e5e:	d0fa      	beq.n	e56 <usb_device_init+0x26>
     e60:	4910      	ldr	r1, [pc, #64]	; (ea4 <usb_device_init+0x74>)
     e62:	4a10      	ldr	r2, [pc, #64]	; (ea4 <usb_device_init+0x74>)
     e64:	23e0      	movs	r3, #224	; 0xe0
     e66:	009b      	lsls	r3, r3, #2
     e68:	58d3      	ldr	r3, [r2, r3]
     e6a:	2202      	movs	r2, #2
     e6c:	431a      	orrs	r2, r3
     e6e:	23e0      	movs	r3, #224	; 0xe0
     e70:	009b      	lsls	r3, r3, #2
     e72:	50ca      	str	r2, [r1, r3]
     e74:	2001      	movs	r0, #1
     e76:	f7ff f94d 	bl	114 <sleep>
     e7a:	4a0a      	ldr	r2, [pc, #40]	; (ea4 <usb_device_init+0x74>)
     e7c:	23e0      	movs	r3, #224	; 0xe0
     e7e:	009b      	lsls	r3, r3, #2
     e80:	211c      	movs	r1, #28
     e82:	50d1      	str	r1, [r2, r3]
     e84:	4907      	ldr	r1, [pc, #28]	; (ea4 <usb_device_init+0x74>)
     e86:	4a07      	ldr	r2, [pc, #28]	; (ea4 <usb_device_init+0x74>)
     e88:	23a0      	movs	r3, #160	; 0xa0
     e8a:	005b      	lsls	r3, r3, #1
     e8c:	58d3      	ldr	r3, [r2, r3]
     e8e:	2231      	movs	r2, #49	; 0x31
     e90:	431a      	orrs	r2, r3
     e92:	23a0      	movs	r3, #160	; 0xa0
     e94:	005b      	lsls	r3, r3, #1
     e96:	50ca      	str	r2, [r1, r3]
     e98:	46c0      	nop			; (mov r8, r8)
     e9a:	46bd      	mov	sp, r7
     e9c:	bd80      	pop	{r7, pc}
     e9e:	46c0      	nop			; (mov r8, r8)
     ea0:	40020000 	.word	0x40020000
     ea4:	40010000 	.word	0x40010000

00000ea8 <usb_reset>:
     ea8:	b580      	push	{r7, lr}
     eaa:	af00      	add	r7, sp, #0
     eac:	4b1c      	ldr	r3, [pc, #112]	; (f20 <usb_reset+0x78>)
     eae:	2200      	movs	r2, #0
     eb0:	601a      	str	r2, [r3, #0]
     eb2:	4a1c      	ldr	r2, [pc, #112]	; (f24 <usb_reset+0x7c>)
     eb4:	23a8      	movs	r3, #168	; 0xa8
     eb6:	005b      	lsls	r3, r3, #1
     eb8:	2100      	movs	r1, #0
     eba:	50d1      	str	r1, [r2, r3]
     ebc:	4a19      	ldr	r2, [pc, #100]	; (f24 <usb_reset+0x7c>)
     ebe:	2380      	movs	r3, #128	; 0x80
     ec0:	005b      	lsls	r3, r3, #1
     ec2:	2100      	movs	r1, #0
     ec4:	50d1      	str	r1, [r2, r3]
     ec6:	4a17      	ldr	r2, [pc, #92]	; (f24 <usb_reset+0x7c>)
     ec8:	2388      	movs	r3, #136	; 0x88
     eca:	005b      	lsls	r3, r3, #1
     ecc:	2100      	movs	r1, #0
     ece:	50d1      	str	r1, [r2, r3]
     ed0:	4a14      	ldr	r2, [pc, #80]	; (f24 <usb_reset+0x7c>)
     ed2:	2390      	movs	r3, #144	; 0x90
     ed4:	005b      	lsls	r3, r3, #1
     ed6:	2100      	movs	r1, #0
     ed8:	50d1      	str	r1, [r2, r3]
     eda:	4a12      	ldr	r2, [pc, #72]	; (f24 <usb_reset+0x7c>)
     edc:	2398      	movs	r3, #152	; 0x98
     ede:	005b      	lsls	r3, r3, #1
     ee0:	2100      	movs	r1, #0
     ee2:	50d1      	str	r1, [r2, r3]
     ee4:	490f      	ldr	r1, [pc, #60]	; (f24 <usb_reset+0x7c>)
     ee6:	4a0f      	ldr	r2, [pc, #60]	; (f24 <usb_reset+0x7c>)
     ee8:	2380      	movs	r3, #128	; 0x80
     eea:	005b      	lsls	r3, r3, #1
     eec:	58d3      	ldr	r3, [r2, r3]
     eee:	2204      	movs	r2, #4
     ef0:	4393      	bics	r3, r2
     ef2:	001a      	movs	r2, r3
     ef4:	2380      	movs	r3, #128	; 0x80
     ef6:	005b      	lsls	r3, r3, #1
     ef8:	50ca      	str	r2, [r1, r3]
     efa:	490a      	ldr	r1, [pc, #40]	; (f24 <usb_reset+0x7c>)
     efc:	4a09      	ldr	r2, [pc, #36]	; (f24 <usb_reset+0x7c>)
     efe:	2380      	movs	r3, #128	; 0x80
     f00:	005b      	lsls	r3, r3, #1
     f02:	58d3      	ldr	r3, [r2, r3]
     f04:	2203      	movs	r2, #3
     f06:	431a      	orrs	r2, r3
     f08:	2380      	movs	r3, #128	; 0x80
     f0a:	005b      	lsls	r3, r3, #1
     f0c:	50ca      	str	r2, [r1, r3]
     f0e:	4b06      	ldr	r3, [pc, #24]	; (f28 <usb_reset+0x80>)
     f10:	4a06      	ldr	r2, [pc, #24]	; (f2c <usb_reset+0x84>)
     f12:	601a      	str	r2, [r3, #0]
     f14:	4b06      	ldr	r3, [pc, #24]	; (f30 <usb_reset+0x88>)
     f16:	4a07      	ldr	r2, [pc, #28]	; (f34 <usb_reset+0x8c>)
     f18:	601a      	str	r2, [r3, #0]
     f1a:	46c0      	nop			; (mov r8, r8)
     f1c:	46bd      	mov	sp, r7
     f1e:	bd80      	pop	{r7, pc}
     f20:	20000050 	.word	0x20000050
     f24:	40010000 	.word	0x40010000
     f28:	20000020 	.word	0x20000020
     f2c:	000011e1 	.word	0x000011e1
     f30:	20000024 	.word	0x20000024
     f34:	000011ed 	.word	0x000011ed

00000f38 <usb_device_update>:
     f38:	b580      	push	{r7, lr}
     f3a:	b082      	sub	sp, #8
     f3c:	af00      	add	r7, sp, #0
     f3e:	2300      	movs	r3, #0
     f40:	607b      	str	r3, [r7, #4]
     f42:	4a58      	ldr	r2, [pc, #352]	; (10a4 <usb_device_update+0x16c>)
     f44:	23a4      	movs	r3, #164	; 0xa4
     f46:	005b      	lsls	r3, r3, #1
     f48:	58d3      	ldr	r3, [r2, r3]
     f4a:	603b      	str	r3, [r7, #0]
     f4c:	4a55      	ldr	r2, [pc, #340]	; (10a4 <usb_device_update+0x16c>)
     f4e:	23a4      	movs	r3, #164	; 0xa4
     f50:	005b      	lsls	r3, r3, #1
     f52:	2100      	movs	r1, #0
     f54:	50d1      	str	r1, [r2, r3]
     f56:	683b      	ldr	r3, [r7, #0]
     f58:	2204      	movs	r2, #4
     f5a:	4013      	ands	r3, r2
     f5c:	d010      	beq.n	f80 <usb_device_update+0x48>
     f5e:	4951      	ldr	r1, [pc, #324]	; (10a4 <usb_device_update+0x16c>)
     f60:	4a50      	ldr	r2, [pc, #320]	; (10a4 <usb_device_update+0x16c>)
     f62:	23a4      	movs	r3, #164	; 0xa4
     f64:	005b      	lsls	r3, r3, #1
     f66:	58d3      	ldr	r3, [r2, r3]
     f68:	2204      	movs	r2, #4
     f6a:	431a      	orrs	r2, r3
     f6c:	23a4      	movs	r3, #164	; 0xa4
     f6e:	005b      	lsls	r3, r3, #1
     f70:	50ca      	str	r2, [r1, r3]
     f72:	f7ff ff99 	bl	ea8 <usb_reset>
     f76:	4b4c      	ldr	r3, [pc, #304]	; (10a8 <usb_device_update+0x170>)
     f78:	0018      	movs	r0, r3
     f7a:	f7ff fcf1 	bl	960 <xprintf>
     f7e:	e08d      	b.n	109c <usb_device_update+0x164>
     f80:	683b      	ldr	r3, [r7, #0]
     f82:	2201      	movs	r2, #1
     f84:	4013      	ands	r3, r2
     f86:	d100      	bne.n	f8a <usb_device_update+0x52>
     f88:	e088      	b.n	109c <usb_device_update+0x164>
     f8a:	4946      	ldr	r1, [pc, #280]	; (10a4 <usb_device_update+0x16c>)
     f8c:	4a45      	ldr	r2, [pc, #276]	; (10a4 <usb_device_update+0x16c>)
     f8e:	23a4      	movs	r3, #164	; 0xa4
     f90:	005b      	lsls	r3, r3, #1
     f92:	58d3      	ldr	r3, [r2, r3]
     f94:	2201      	movs	r2, #1
     f96:	431a      	orrs	r2, r3
     f98:	23a4      	movs	r3, #164	; 0xa4
     f9a:	005b      	lsls	r3, r3, #1
     f9c:	50ca      	str	r2, [r1, r3]
     f9e:	4a41      	ldr	r2, [pc, #260]	; (10a4 <usb_device_update+0x16c>)
     fa0:	2380      	movs	r3, #128	; 0x80
     fa2:	005b      	lsls	r3, r3, #1
     fa4:	58d3      	ldr	r3, [r2, r3]
     fa6:	2202      	movs	r2, #2
     fa8:	4013      	ands	r3, r2
     faa:	d123      	bne.n	ff4 <usb_device_update+0xbc>
     fac:	4a3d      	ldr	r2, [pc, #244]	; (10a4 <usb_device_update+0x16c>)
     fae:	2384      	movs	r3, #132	; 0x84
     fb0:	005b      	lsls	r3, r3, #1
     fb2:	58d3      	ldr	r3, [r2, r3]
     fb4:	22ff      	movs	r2, #255	; 0xff
     fb6:	4013      	ands	r3, r2
     fb8:	607b      	str	r3, [r7, #4]
     fba:	687b      	ldr	r3, [r7, #4]
     fbc:	2b00      	cmp	r3, #0
     fbe:	d105      	bne.n	fcc <usb_device_update+0x94>
     fc0:	4b3a      	ldr	r3, [pc, #232]	; (10ac <usb_device_update+0x174>)
     fc2:	0018      	movs	r0, r3
     fc4:	f7ff fccc 	bl	960 <xprintf>
     fc8:	f000 fb86 	bl	16d8 <setup0_proc>
     fcc:	687b      	ldr	r3, [r7, #4]
     fce:	2b01      	cmp	r3, #1
     fd0:	d106      	bne.n	fe0 <usb_device_update+0xa8>
     fd2:	4b37      	ldr	r3, [pc, #220]	; (10b0 <usb_device_update+0x178>)
     fd4:	0018      	movs	r0, r3
     fd6:	f7ff fcc3 	bl	960 <xprintf>
     fda:	4b36      	ldr	r3, [pc, #216]	; (10b4 <usb_device_update+0x17c>)
     fdc:	681b      	ldr	r3, [r3, #0]
     fde:	4798      	blx	r3
     fe0:	687b      	ldr	r3, [r7, #4]
     fe2:	2b02      	cmp	r3, #2
     fe4:	d106      	bne.n	ff4 <usb_device_update+0xbc>
     fe6:	4b34      	ldr	r3, [pc, #208]	; (10b8 <usb_device_update+0x180>)
     fe8:	0018      	movs	r0, r3
     fea:	f7ff fcb9 	bl	960 <xprintf>
     fee:	4b33      	ldr	r3, [pc, #204]	; (10bc <usb_device_update+0x184>)
     ff0:	681b      	ldr	r3, [r3, #0]
     ff2:	4798      	blx	r3
     ff4:	4a2b      	ldr	r2, [pc, #172]	; (10a4 <usb_device_update+0x16c>)
     ff6:	2388      	movs	r3, #136	; 0x88
     ff8:	005b      	lsls	r3, r3, #1
     ffa:	58d3      	ldr	r3, [r2, r3]
     ffc:	2202      	movs	r2, #2
     ffe:	4013      	ands	r3, r2
    1000:	d114      	bne.n	102c <usb_device_update+0xf4>
    1002:	4a28      	ldr	r2, [pc, #160]	; (10a4 <usb_device_update+0x16c>)
    1004:	238c      	movs	r3, #140	; 0x8c
    1006:	005b      	lsls	r3, r3, #1
    1008:	58d3      	ldr	r3, [r2, r3]
    100a:	22ff      	movs	r2, #255	; 0xff
    100c:	4013      	ands	r3, r2
    100e:	607b      	str	r3, [r7, #4]
    1010:	687b      	ldr	r3, [r7, #4]
    1012:	2b01      	cmp	r3, #1
    1014:	d103      	bne.n	101e <usb_device_update+0xe6>
    1016:	4b2a      	ldr	r3, [pc, #168]	; (10c0 <usb_device_update+0x188>)
    1018:	0018      	movs	r0, r3
    101a:	f7ff fca1 	bl	960 <xprintf>
    101e:	687b      	ldr	r3, [r7, #4]
    1020:	2b02      	cmp	r3, #2
    1022:	d103      	bne.n	102c <usb_device_update+0xf4>
    1024:	4b27      	ldr	r3, [pc, #156]	; (10c4 <usb_device_update+0x18c>)
    1026:	0018      	movs	r0, r3
    1028:	f7ff fc9a 	bl	960 <xprintf>
    102c:	4a1d      	ldr	r2, [pc, #116]	; (10a4 <usb_device_update+0x16c>)
    102e:	2390      	movs	r3, #144	; 0x90
    1030:	005b      	lsls	r3, r3, #1
    1032:	58d3      	ldr	r3, [r2, r3]
    1034:	2202      	movs	r2, #2
    1036:	4013      	ands	r3, r2
    1038:	d114      	bne.n	1064 <usb_device_update+0x12c>
    103a:	4a1a      	ldr	r2, [pc, #104]	; (10a4 <usb_device_update+0x16c>)
    103c:	2394      	movs	r3, #148	; 0x94
    103e:	005b      	lsls	r3, r3, #1
    1040:	58d3      	ldr	r3, [r2, r3]
    1042:	22ff      	movs	r2, #255	; 0xff
    1044:	4013      	ands	r3, r2
    1046:	607b      	str	r3, [r7, #4]
    1048:	687b      	ldr	r3, [r7, #4]
    104a:	2b01      	cmp	r3, #1
    104c:	d103      	bne.n	1056 <usb_device_update+0x11e>
    104e:	4b1c      	ldr	r3, [pc, #112]	; (10c0 <usb_device_update+0x188>)
    1050:	0018      	movs	r0, r3
    1052:	f7ff fc85 	bl	960 <xprintf>
    1056:	687b      	ldr	r3, [r7, #4]
    1058:	2b02      	cmp	r3, #2
    105a:	d103      	bne.n	1064 <usb_device_update+0x12c>
    105c:	4b19      	ldr	r3, [pc, #100]	; (10c4 <usb_device_update+0x18c>)
    105e:	0018      	movs	r0, r3
    1060:	f7ff fc7e 	bl	960 <xprintf>
    1064:	4a0f      	ldr	r2, [pc, #60]	; (10a4 <usb_device_update+0x16c>)
    1066:	2398      	movs	r3, #152	; 0x98
    1068:	005b      	lsls	r3, r3, #1
    106a:	58d3      	ldr	r3, [r2, r3]
    106c:	2202      	movs	r2, #2
    106e:	4013      	ands	r3, r2
    1070:	d114      	bne.n	109c <usb_device_update+0x164>
    1072:	4a0c      	ldr	r2, [pc, #48]	; (10a4 <usb_device_update+0x16c>)
    1074:	239c      	movs	r3, #156	; 0x9c
    1076:	005b      	lsls	r3, r3, #1
    1078:	58d3      	ldr	r3, [r2, r3]
    107a:	22ff      	movs	r2, #255	; 0xff
    107c:	4013      	ands	r3, r2
    107e:	607b      	str	r3, [r7, #4]
    1080:	687b      	ldr	r3, [r7, #4]
    1082:	2b01      	cmp	r3, #1
    1084:	d103      	bne.n	108e <usb_device_update+0x156>
    1086:	4b10      	ldr	r3, [pc, #64]	; (10c8 <usb_device_update+0x190>)
    1088:	0018      	movs	r0, r3
    108a:	f7ff fc69 	bl	960 <xprintf>
    108e:	687b      	ldr	r3, [r7, #4]
    1090:	2b02      	cmp	r3, #2
    1092:	d103      	bne.n	109c <usb_device_update+0x164>
    1094:	4b0d      	ldr	r3, [pc, #52]	; (10cc <usb_device_update+0x194>)
    1096:	0018      	movs	r0, r3
    1098:	f7ff fc62 	bl	960 <xprintf>
    109c:	46c0      	nop			; (mov r8, r8)
    109e:	46bd      	mov	sp, r7
    10a0:	b002      	add	sp, #8
    10a2:	bd80      	pop	{r7, pc}
    10a4:	40010000 	.word	0x40010000
    10a8:	00001ac0 	.word	0x00001ac0
    10ac:	00001ac8 	.word	0x00001ac8
    10b0:	00001ad4 	.word	0x00001ad4
    10b4:	20000020 	.word	0x20000020
    10b8:	00001ae0 	.word	0x00001ae0
    10bc:	20000024 	.word	0x20000024
    10c0:	00001aec 	.word	0x00001aec
    10c4:	00001af8 	.word	0x00001af8
    10c8:	00001b04 	.word	0x00001b04
    10cc:	00001b10 	.word	0x00001b10

000010d0 <usb_read>:
    10d0:	b580      	push	{r7, lr}
    10d2:	b086      	sub	sp, #24
    10d4:	af00      	add	r7, sp, #0
    10d6:	6078      	str	r0, [r7, #4]
    10d8:	6039      	str	r1, [r7, #0]
    10da:	4a19      	ldr	r2, [pc, #100]	; (1140 <usb_read+0x70>)
    10dc:	23c3      	movs	r3, #195	; 0xc3
    10de:	009b      	lsls	r3, r3, #2
    10e0:	58d3      	ldr	r3, [r2, r3]
    10e2:	613b      	str	r3, [r7, #16]
    10e4:	693b      	ldr	r3, [r7, #16]
    10e6:	2b00      	cmp	r3, #0
    10e8:	d101      	bne.n	10ee <usb_read+0x1e>
    10ea:	2300      	movs	r3, #0
    10ec:	e023      	b.n	1136 <usb_read+0x66>
    10ee:	693b      	ldr	r3, [r7, #16]
    10f0:	683a      	ldr	r2, [r7, #0]
    10f2:	4293      	cmp	r3, r2
    10f4:	d900      	bls.n	10f8 <usb_read+0x28>
    10f6:	0013      	movs	r3, r2
    10f8:	60fb      	str	r3, [r7, #12]
    10fa:	2300      	movs	r3, #0
    10fc:	617b      	str	r3, [r7, #20]
    10fe:	e00b      	b.n	1118 <usb_read+0x48>
    1100:	697b      	ldr	r3, [r7, #20]
    1102:	687a      	ldr	r2, [r7, #4]
    1104:	18d3      	adds	r3, r2, r3
    1106:	490e      	ldr	r1, [pc, #56]	; (1140 <usb_read+0x70>)
    1108:	22c0      	movs	r2, #192	; 0xc0
    110a:	0092      	lsls	r2, r2, #2
    110c:	588a      	ldr	r2, [r1, r2]
    110e:	b2d2      	uxtb	r2, r2
    1110:	701a      	strb	r2, [r3, #0]
    1112:	697b      	ldr	r3, [r7, #20]
    1114:	3301      	adds	r3, #1
    1116:	617b      	str	r3, [r7, #20]
    1118:	697a      	ldr	r2, [r7, #20]
    111a:	68fb      	ldr	r3, [r7, #12]
    111c:	429a      	cmp	r2, r3
    111e:	dbef      	blt.n	1100 <usb_read+0x30>
    1120:	4907      	ldr	r1, [pc, #28]	; (1140 <usb_read+0x70>)
    1122:	4a07      	ldr	r2, [pc, #28]	; (1140 <usb_read+0x70>)
    1124:	2398      	movs	r3, #152	; 0x98
    1126:	005b      	lsls	r3, r3, #1
    1128:	58d3      	ldr	r3, [r2, r3]
    112a:	2202      	movs	r2, #2
    112c:	431a      	orrs	r2, r3
    112e:	2398      	movs	r3, #152	; 0x98
    1130:	005b      	lsls	r3, r3, #1
    1132:	50ca      	str	r2, [r1, r3]
    1134:	68fb      	ldr	r3, [r7, #12]
    1136:	0018      	movs	r0, r3
    1138:	46bd      	mov	sp, r7
    113a:	b006      	add	sp, #24
    113c:	bd80      	pop	{r7, pc}
    113e:	46c0      	nop			; (mov r8, r8)
    1140:	40010000 	.word	0x40010000

00001144 <usb_write>:
    1144:	b580      	push	{r7, lr}
    1146:	b084      	sub	sp, #16
    1148:	af00      	add	r7, sp, #0
    114a:	6078      	str	r0, [r7, #4]
    114c:	6039      	str	r1, [r7, #0]
    114e:	4a22      	ldr	r2, [pc, #136]	; (11d8 <usb_write+0x94>)
    1150:	2388      	movs	r3, #136	; 0x88
    1152:	005b      	lsls	r3, r3, #1
    1154:	58d3      	ldr	r3, [r2, r3]
    1156:	2202      	movs	r2, #2
    1158:	4013      	ands	r3, r2
    115a:	d001      	beq.n	1160 <usb_write+0x1c>
    115c:	2300      	movs	r3, #0
    115e:	e037      	b.n	11d0 <usb_write+0x8c>
    1160:	683b      	ldr	r3, [r7, #0]
    1162:	2b40      	cmp	r3, #64	; 0x40
    1164:	d900      	bls.n	1168 <usb_write+0x24>
    1166:	2340      	movs	r3, #64	; 0x40
    1168:	60bb      	str	r3, [r7, #8]
    116a:	4a1b      	ldr	r2, [pc, #108]	; (11d8 <usb_write+0x94>)
    116c:	2394      	movs	r3, #148	; 0x94
    116e:	009b      	lsls	r3, r3, #2
    1170:	2101      	movs	r1, #1
    1172:	50d1      	str	r1, [r2, r3]
    1174:	2300      	movs	r3, #0
    1176:	60fb      	str	r3, [r7, #12]
    1178:	e00b      	b.n	1192 <usb_write+0x4e>
    117a:	4917      	ldr	r1, [pc, #92]	; (11d8 <usb_write+0x94>)
    117c:	68fb      	ldr	r3, [r7, #12]
    117e:	687a      	ldr	r2, [r7, #4]
    1180:	18d3      	adds	r3, r2, r3
    1182:	781b      	ldrb	r3, [r3, #0]
    1184:	001a      	movs	r2, r3
    1186:	2390      	movs	r3, #144	; 0x90
    1188:	009b      	lsls	r3, r3, #2
    118a:	50ca      	str	r2, [r1, r3]
    118c:	68fb      	ldr	r3, [r7, #12]
    118e:	3301      	adds	r3, #1
    1190:	60fb      	str	r3, [r7, #12]
    1192:	68fa      	ldr	r2, [r7, #12]
    1194:	68bb      	ldr	r3, [r7, #8]
    1196:	429a      	cmp	r2, r3
    1198:	dbef      	blt.n	117a <usb_write+0x36>
    119a:	68ba      	ldr	r2, [r7, #8]
    119c:	4b0f      	ldr	r3, [pc, #60]	; (11dc <usb_write+0x98>)
    119e:	0011      	movs	r1, r2
    11a0:	0018      	movs	r0, r3
    11a2:	f7ff fbdd 	bl	960 <xprintf>
    11a6:	490c      	ldr	r1, [pc, #48]	; (11d8 <usb_write+0x94>)
    11a8:	4a0b      	ldr	r2, [pc, #44]	; (11d8 <usb_write+0x94>)
    11aa:	2388      	movs	r3, #136	; 0x88
    11ac:	005b      	lsls	r3, r3, #1
    11ae:	58d3      	ldr	r3, [r2, r3]
    11b0:	2204      	movs	r2, #4
    11b2:	405a      	eors	r2, r3
    11b4:	2388      	movs	r3, #136	; 0x88
    11b6:	005b      	lsls	r3, r3, #1
    11b8:	50ca      	str	r2, [r1, r3]
    11ba:	4907      	ldr	r1, [pc, #28]	; (11d8 <usb_write+0x94>)
    11bc:	4a06      	ldr	r2, [pc, #24]	; (11d8 <usb_write+0x94>)
    11be:	2388      	movs	r3, #136	; 0x88
    11c0:	005b      	lsls	r3, r3, #1
    11c2:	58d3      	ldr	r3, [r2, r3]
    11c4:	2202      	movs	r2, #2
    11c6:	431a      	orrs	r2, r3
    11c8:	2388      	movs	r3, #136	; 0x88
    11ca:	005b      	lsls	r3, r3, #1
    11cc:	50ca      	str	r2, [r1, r3]
    11ce:	68bb      	ldr	r3, [r7, #8]
    11d0:	0018      	movs	r0, r3
    11d2:	46bd      	mov	sp, r7
    11d4:	b004      	add	sp, #16
    11d6:	bd80      	pop	{r7, pc}
    11d8:	40010000 	.word	0x40010000
    11dc:	00001b1c 	.word	0x00001b1c

000011e0 <null_proc>:
    11e0:	b580      	push	{r7, lr}
    11e2:	af00      	add	r7, sp, #0
    11e4:	46c0      	nop			; (mov r8, r8)
    11e6:	46bd      	mov	sp, r7
    11e8:	bd80      	pop	{r7, pc}
    11ea:	46c0      	nop			; (mov r8, r8)

000011ec <enable_RX_proc>:
    11ec:	b580      	push	{r7, lr}
    11ee:	af00      	add	r7, sp, #0
    11f0:	4906      	ldr	r1, [pc, #24]	; (120c <enable_RX_proc+0x20>)
    11f2:	4a06      	ldr	r2, [pc, #24]	; (120c <enable_RX_proc+0x20>)
    11f4:	2380      	movs	r3, #128	; 0x80
    11f6:	005b      	lsls	r3, r3, #1
    11f8:	58d3      	ldr	r3, [r2, r3]
    11fa:	2202      	movs	r2, #2
    11fc:	431a      	orrs	r2, r3
    11fe:	2380      	movs	r3, #128	; 0x80
    1200:	005b      	lsls	r3, r3, #1
    1202:	50ca      	str	r2, [r1, r3]
    1204:	46c0      	nop			; (mov r8, r8)
    1206:	46bd      	mov	sp, r7
    1208:	bd80      	pop	{r7, pc}
    120a:	46c0      	nop			; (mov r8, r8)
    120c:	40010000 	.word	0x40010000

00001210 <plan_ZeroLength_OUT_proc>:
    1210:	b580      	push	{r7, lr}
    1212:	af00      	add	r7, sp, #0
    1214:	4909      	ldr	r1, [pc, #36]	; (123c <plan_ZeroLength_OUT_proc+0x2c>)
    1216:	4a09      	ldr	r2, [pc, #36]	; (123c <plan_ZeroLength_OUT_proc+0x2c>)
    1218:	2380      	movs	r3, #128	; 0x80
    121a:	005b      	lsls	r3, r3, #1
    121c:	58d3      	ldr	r3, [r2, r3]
    121e:	2202      	movs	r2, #2
    1220:	431a      	orrs	r2, r3
    1222:	2380      	movs	r3, #128	; 0x80
    1224:	005b      	lsls	r3, r3, #1
    1226:	50ca      	str	r2, [r1, r3]
    1228:	4b05      	ldr	r3, [pc, #20]	; (1240 <plan_ZeroLength_OUT_proc+0x30>)
    122a:	4a06      	ldr	r2, [pc, #24]	; (1244 <plan_ZeroLength_OUT_proc+0x34>)
    122c:	601a      	str	r2, [r3, #0]
    122e:	4b06      	ldr	r3, [pc, #24]	; (1248 <plan_ZeroLength_OUT_proc+0x38>)
    1230:	4a06      	ldr	r2, [pc, #24]	; (124c <plan_ZeroLength_OUT_proc+0x3c>)
    1232:	601a      	str	r2, [r3, #0]
    1234:	46c0      	nop			; (mov r8, r8)
    1236:	46bd      	mov	sp, r7
    1238:	bd80      	pop	{r7, pc}
    123a:	46c0      	nop			; (mov r8, r8)
    123c:	40010000 	.word	0x40010000
    1240:	20000020 	.word	0x20000020
    1244:	000011e1 	.word	0x000011e1
    1248:	20000024 	.word	0x20000024
    124c:	000011ed 	.word	0x000011ed

00001250 <plan_ZeroLength_IN_proc>:
    1250:	b580      	push	{r7, lr}
    1252:	af00      	add	r7, sp, #0
    1254:	4a0d      	ldr	r2, [pc, #52]	; (128c <plan_ZeroLength_IN_proc+0x3c>)
    1256:	23e8      	movs	r3, #232	; 0xe8
    1258:	005b      	lsls	r3, r3, #1
    125a:	2101      	movs	r1, #1
    125c:	50d1      	str	r1, [r2, r3]
    125e:	490b      	ldr	r1, [pc, #44]	; (128c <plan_ZeroLength_IN_proc+0x3c>)
    1260:	4a0a      	ldr	r2, [pc, #40]	; (128c <plan_ZeroLength_IN_proc+0x3c>)
    1262:	2380      	movs	r3, #128	; 0x80
    1264:	005b      	lsls	r3, r3, #1
    1266:	58d3      	ldr	r3, [r2, r3]
    1268:	2204      	movs	r2, #4
    126a:	431a      	orrs	r2, r3
    126c:	2380      	movs	r3, #128	; 0x80
    126e:	005b      	lsls	r3, r3, #1
    1270:	50ca      	str	r2, [r1, r3]
    1272:	4906      	ldr	r1, [pc, #24]	; (128c <plan_ZeroLength_IN_proc+0x3c>)
    1274:	4a05      	ldr	r2, [pc, #20]	; (128c <plan_ZeroLength_IN_proc+0x3c>)
    1276:	2380      	movs	r3, #128	; 0x80
    1278:	005b      	lsls	r3, r3, #1
    127a:	58d3      	ldr	r3, [r2, r3]
    127c:	2202      	movs	r2, #2
    127e:	431a      	orrs	r2, r3
    1280:	2380      	movs	r3, #128	; 0x80
    1282:	005b      	lsls	r3, r3, #1
    1284:	50ca      	str	r2, [r1, r3]
    1286:	46c0      	nop			; (mov r8, r8)
    1288:	46bd      	mov	sp, r7
    128a:	bd80      	pop	{r7, pc}
    128c:	40010000 	.word	0x40010000

00001290 <plan_Data_IN_proc>:
    1290:	b580      	push	{r7, lr}
    1292:	b084      	sub	sp, #16
    1294:	af00      	add	r7, sp, #0
    1296:	4b2f      	ldr	r3, [pc, #188]	; (1354 <plan_Data_IN_proc+0xc4>)
    1298:	681b      	ldr	r3, [r3, #0]
    129a:	2b40      	cmp	r3, #64	; 0x40
    129c:	d900      	bls.n	12a0 <plan_Data_IN_proc+0x10>
    129e:	2340      	movs	r3, #64	; 0x40
    12a0:	60bb      	str	r3, [r7, #8]
    12a2:	4b2c      	ldr	r3, [pc, #176]	; (1354 <plan_Data_IN_proc+0xc4>)
    12a4:	681a      	ldr	r2, [r3, #0]
    12a6:	68bb      	ldr	r3, [r7, #8]
    12a8:	1ad3      	subs	r3, r2, r3
    12aa:	607b      	str	r3, [r7, #4]
    12ac:	68bb      	ldr	r3, [r7, #8]
    12ae:	2b00      	cmp	r3, #0
    12b0:	d032      	beq.n	1318 <plan_Data_IN_proc+0x88>
    12b2:	4a29      	ldr	r2, [pc, #164]	; (1358 <plan_Data_IN_proc+0xc8>)
    12b4:	23e8      	movs	r3, #232	; 0xe8
    12b6:	005b      	lsls	r3, r3, #1
    12b8:	2101      	movs	r1, #1
    12ba:	50d1      	str	r1, [r2, r3]
    12bc:	2300      	movs	r3, #0
    12be:	60fb      	str	r3, [r7, #12]
    12c0:	e00c      	b.n	12dc <plan_Data_IN_proc+0x4c>
    12c2:	4925      	ldr	r1, [pc, #148]	; (1358 <plan_Data_IN_proc+0xc8>)
    12c4:	4b25      	ldr	r3, [pc, #148]	; (135c <plan_Data_IN_proc+0xcc>)
    12c6:	681a      	ldr	r2, [r3, #0]
    12c8:	68fb      	ldr	r3, [r7, #12]
    12ca:	18d3      	adds	r3, r2, r3
    12cc:	781b      	ldrb	r3, [r3, #0]
    12ce:	001a      	movs	r2, r3
    12d0:	23e0      	movs	r3, #224	; 0xe0
    12d2:	005b      	lsls	r3, r3, #1
    12d4:	50ca      	str	r2, [r1, r3]
    12d6:	68fb      	ldr	r3, [r7, #12]
    12d8:	3301      	adds	r3, #1
    12da:	60fb      	str	r3, [r7, #12]
    12dc:	68fa      	ldr	r2, [r7, #12]
    12de:	68bb      	ldr	r3, [r7, #8]
    12e0:	429a      	cmp	r2, r3
    12e2:	d3ee      	bcc.n	12c2 <plan_Data_IN_proc+0x32>
    12e4:	68ba      	ldr	r2, [r7, #8]
    12e6:	4b1e      	ldr	r3, [pc, #120]	; (1360 <plan_Data_IN_proc+0xd0>)
    12e8:	0011      	movs	r1, r2
    12ea:	0018      	movs	r0, r3
    12ec:	f7ff fb38 	bl	960 <xprintf>
    12f0:	4919      	ldr	r1, [pc, #100]	; (1358 <plan_Data_IN_proc+0xc8>)
    12f2:	4a19      	ldr	r2, [pc, #100]	; (1358 <plan_Data_IN_proc+0xc8>)
    12f4:	2380      	movs	r3, #128	; 0x80
    12f6:	005b      	lsls	r3, r3, #1
    12f8:	58d3      	ldr	r3, [r2, r3]
    12fa:	2204      	movs	r2, #4
    12fc:	405a      	eors	r2, r3
    12fe:	2380      	movs	r3, #128	; 0x80
    1300:	005b      	lsls	r3, r3, #1
    1302:	50ca      	str	r2, [r1, r3]
    1304:	4914      	ldr	r1, [pc, #80]	; (1358 <plan_Data_IN_proc+0xc8>)
    1306:	4a14      	ldr	r2, [pc, #80]	; (1358 <plan_Data_IN_proc+0xc8>)
    1308:	2380      	movs	r3, #128	; 0x80
    130a:	005b      	lsls	r3, r3, #1
    130c:	58d3      	ldr	r3, [r2, r3]
    130e:	2202      	movs	r2, #2
    1310:	431a      	orrs	r2, r3
    1312:	2380      	movs	r3, #128	; 0x80
    1314:	005b      	lsls	r3, r3, #1
    1316:	50ca      	str	r2, [r1, r3]
    1318:	687b      	ldr	r3, [r7, #4]
    131a:	2b00      	cmp	r3, #0
    131c:	d012      	beq.n	1344 <plan_Data_IN_proc+0xb4>
    131e:	4b0d      	ldr	r3, [pc, #52]	; (1354 <plan_Data_IN_proc+0xc4>)
    1320:	687a      	ldr	r2, [r7, #4]
    1322:	601a      	str	r2, [r3, #0]
    1324:	4b0d      	ldr	r3, [pc, #52]	; (135c <plan_Data_IN_proc+0xcc>)
    1326:	681a      	ldr	r2, [r3, #0]
    1328:	68bb      	ldr	r3, [r7, #8]
    132a:	18d2      	adds	r2, r2, r3
    132c:	4b0b      	ldr	r3, [pc, #44]	; (135c <plan_Data_IN_proc+0xcc>)
    132e:	601a      	str	r2, [r3, #0]
    1330:	4b0c      	ldr	r3, [pc, #48]	; (1364 <plan_Data_IN_proc+0xd4>)
    1332:	4a0d      	ldr	r2, [pc, #52]	; (1368 <plan_Data_IN_proc+0xd8>)
    1334:	601a      	str	r2, [r3, #0]
    1336:	687a      	ldr	r2, [r7, #4]
    1338:	4b0c      	ldr	r3, [pc, #48]	; (136c <plan_Data_IN_proc+0xdc>)
    133a:	0011      	movs	r1, r2
    133c:	0018      	movs	r0, r3
    133e:	f7ff fb0f 	bl	960 <xprintf>
    1342:	e002      	b.n	134a <plan_Data_IN_proc+0xba>
    1344:	4b07      	ldr	r3, [pc, #28]	; (1364 <plan_Data_IN_proc+0xd4>)
    1346:	4a0a      	ldr	r2, [pc, #40]	; (1370 <plan_Data_IN_proc+0xe0>)
    1348:	601a      	str	r2, [r3, #0]
    134a:	46c0      	nop			; (mov r8, r8)
    134c:	46bd      	mov	sp, r7
    134e:	b004      	add	sp, #16
    1350:	bd80      	pop	{r7, pc}
    1352:	46c0      	nop			; (mov r8, r8)
    1354:	2000005c 	.word	0x2000005c
    1358:	40010000 	.word	0x40010000
    135c:	20000060 	.word	0x20000060
    1360:	00001b30 	.word	0x00001b30
    1364:	20000020 	.word	0x20000020
    1368:	00001291 	.word	0x00001291
    136c:	00001b3c 	.word	0x00001b3c
    1370:	00001211 	.word	0x00001211

00001374 <string_descriptor_proc>:
    1374:	b580      	push	{r7, lr}
    1376:	b082      	sub	sp, #8
    1378:	af00      	add	r7, sp, #0
    137a:	4b1a      	ldr	r3, [pc, #104]	; (13e4 <string_descriptor_proc+0x70>)
    137c:	789b      	ldrb	r3, [r3, #2]
    137e:	607b      	str	r3, [r7, #4]
    1380:	687b      	ldr	r3, [r7, #4]
    1382:	2b01      	cmp	r3, #1
    1384:	d00e      	beq.n	13a4 <string_descriptor_proc+0x30>
    1386:	d304      	bcc.n	1392 <string_descriptor_proc+0x1e>
    1388:	2b02      	cmp	r3, #2
    138a:	d014      	beq.n	13b6 <string_descriptor_proc+0x42>
    138c:	2b03      	cmp	r3, #3
    138e:	d01b      	beq.n	13c8 <string_descriptor_proc+0x54>
    1390:	e023      	b.n	13da <string_descriptor_proc+0x66>
    1392:	4b15      	ldr	r3, [pc, #84]	; (13e8 <string_descriptor_proc+0x74>)
    1394:	2204      	movs	r2, #4
    1396:	601a      	str	r2, [r3, #0]
    1398:	4b14      	ldr	r3, [pc, #80]	; (13ec <string_descriptor_proc+0x78>)
    139a:	4a15      	ldr	r2, [pc, #84]	; (13f0 <string_descriptor_proc+0x7c>)
    139c:	601a      	str	r2, [r3, #0]
    139e:	f7ff ff77 	bl	1290 <plan_Data_IN_proc>
    13a2:	e01a      	b.n	13da <string_descriptor_proc+0x66>
    13a4:	4b10      	ldr	r3, [pc, #64]	; (13e8 <string_descriptor_proc+0x74>)
    13a6:	2226      	movs	r2, #38	; 0x26
    13a8:	601a      	str	r2, [r3, #0]
    13aa:	4b10      	ldr	r3, [pc, #64]	; (13ec <string_descriptor_proc+0x78>)
    13ac:	4a11      	ldr	r2, [pc, #68]	; (13f4 <string_descriptor_proc+0x80>)
    13ae:	601a      	str	r2, [r3, #0]
    13b0:	f7ff ff6e 	bl	1290 <plan_Data_IN_proc>
    13b4:	e011      	b.n	13da <string_descriptor_proc+0x66>
    13b6:	4b0c      	ldr	r3, [pc, #48]	; (13e8 <string_descriptor_proc+0x74>)
    13b8:	2232      	movs	r2, #50	; 0x32
    13ba:	601a      	str	r2, [r3, #0]
    13bc:	4b0b      	ldr	r3, [pc, #44]	; (13ec <string_descriptor_proc+0x78>)
    13be:	4a0e      	ldr	r2, [pc, #56]	; (13f8 <string_descriptor_proc+0x84>)
    13c0:	601a      	str	r2, [r3, #0]
    13c2:	f7ff ff65 	bl	1290 <plan_Data_IN_proc>
    13c6:	e008      	b.n	13da <string_descriptor_proc+0x66>
    13c8:	4b07      	ldr	r3, [pc, #28]	; (13e8 <string_descriptor_proc+0x74>)
    13ca:	221a      	movs	r2, #26
    13cc:	601a      	str	r2, [r3, #0]
    13ce:	4b07      	ldr	r3, [pc, #28]	; (13ec <string_descriptor_proc+0x78>)
    13d0:	4a0a      	ldr	r2, [pc, #40]	; (13fc <string_descriptor_proc+0x88>)
    13d2:	601a      	str	r2, [r3, #0]
    13d4:	f7ff ff5c 	bl	1290 <plan_Data_IN_proc>
    13d8:	46c0      	nop			; (mov r8, r8)
    13da:	46c0      	nop			; (mov r8, r8)
    13dc:	46bd      	mov	sp, r7
    13de:	b002      	add	sp, #8
    13e0:	bd80      	pop	{r7, pc}
    13e2:	46c0      	nop			; (mov r8, r8)
    13e4:	20000054 	.word	0x20000054
    13e8:	2000005c 	.word	0x2000005c
    13ec:	20000060 	.word	0x20000060
    13f0:	00001a60 	.word	0x00001a60
    13f4:	00001a64 	.word	0x00001a64
    13f8:	00001a8c 	.word	0x00001a8c
    13fc:	20000004 	.word	0x20000004

00001400 <get_descriptor_proc>:
    1400:	b580      	push	{r7, lr}
    1402:	b082      	sub	sp, #8
    1404:	af00      	add	r7, sp, #0
    1406:	4b33      	ldr	r3, [pc, #204]	; (14d4 <get_descriptor_proc+0xd4>)
    1408:	78db      	ldrb	r3, [r3, #3]
    140a:	607b      	str	r3, [r7, #4]
    140c:	4b31      	ldr	r3, [pc, #196]	; (14d4 <get_descriptor_proc+0xd4>)
    140e:	799b      	ldrb	r3, [r3, #6]
    1410:	001a      	movs	r2, r3
    1412:	4b30      	ldr	r3, [pc, #192]	; (14d4 <get_descriptor_proc+0xd4>)
    1414:	79db      	ldrb	r3, [r3, #7]
    1416:	021b      	lsls	r3, r3, #8
    1418:	4313      	orrs	r3, r2
    141a:	603b      	str	r3, [r7, #0]
    141c:	687b      	ldr	r3, [r7, #4]
    141e:	2b02      	cmp	r3, #2
    1420:	d02a      	beq.n	1478 <get_descriptor_proc+0x78>
    1422:	d802      	bhi.n	142a <get_descriptor_proc+0x2a>
    1424:	2b01      	cmp	r3, #1
    1426:	d005      	beq.n	1434 <get_descriptor_proc+0x34>
    1428:	e050      	b.n	14cc <get_descriptor_proc+0xcc>
    142a:	2b03      	cmp	r3, #3
    142c:	d03c      	beq.n	14a8 <get_descriptor_proc+0xa8>
    142e:	2b06      	cmp	r3, #6
    1430:	d018      	beq.n	1464 <get_descriptor_proc+0x64>
    1432:	e04b      	b.n	14cc <get_descriptor_proc+0xcc>
    1434:	4b28      	ldr	r3, [pc, #160]	; (14d8 <get_descriptor_proc+0xd8>)
    1436:	683a      	ldr	r2, [r7, #0]
    1438:	601a      	str	r2, [r3, #0]
    143a:	4b28      	ldr	r3, [pc, #160]	; (14dc <get_descriptor_proc+0xdc>)
    143c:	4a28      	ldr	r2, [pc, #160]	; (14e0 <get_descriptor_proc+0xe0>)
    143e:	601a      	str	r2, [r3, #0]
    1440:	4928      	ldr	r1, [pc, #160]	; (14e4 <get_descriptor_proc+0xe4>)
    1442:	4a28      	ldr	r2, [pc, #160]	; (14e4 <get_descriptor_proc+0xe4>)
    1444:	2380      	movs	r3, #128	; 0x80
    1446:	005b      	lsls	r3, r3, #1
    1448:	58d3      	ldr	r3, [r2, r3]
    144a:	2204      	movs	r2, #4
    144c:	4393      	bics	r3, r2
    144e:	001a      	movs	r2, r3
    1450:	2380      	movs	r3, #128	; 0x80
    1452:	005b      	lsls	r3, r3, #1
    1454:	50ca      	str	r2, [r1, r3]
    1456:	f7ff ff1b 	bl	1290 <plan_Data_IN_proc>
    145a:	4b23      	ldr	r3, [pc, #140]	; (14e8 <get_descriptor_proc+0xe8>)
    145c:	0018      	movs	r0, r3
    145e:	f7ff fa7f 	bl	960 <xprintf>
    1462:	e033      	b.n	14cc <get_descriptor_proc+0xcc>
    1464:	f7ff fef4 	bl	1250 <plan_ZeroLength_IN_proc>
    1468:	4b20      	ldr	r3, [pc, #128]	; (14ec <get_descriptor_proc+0xec>)
    146a:	4a21      	ldr	r2, [pc, #132]	; (14f0 <get_descriptor_proc+0xf0>)
    146c:	601a      	str	r2, [r3, #0]
    146e:	4b21      	ldr	r3, [pc, #132]	; (14f4 <get_descriptor_proc+0xf4>)
    1470:	0018      	movs	r0, r3
    1472:	f7ff fa75 	bl	960 <xprintf>
    1476:	e029      	b.n	14cc <get_descriptor_proc+0xcc>
    1478:	4b17      	ldr	r3, [pc, #92]	; (14d8 <get_descriptor_proc+0xd8>)
    147a:	683a      	ldr	r2, [r7, #0]
    147c:	601a      	str	r2, [r3, #0]
    147e:	4b17      	ldr	r3, [pc, #92]	; (14dc <get_descriptor_proc+0xdc>)
    1480:	4a1d      	ldr	r2, [pc, #116]	; (14f8 <get_descriptor_proc+0xf8>)
    1482:	601a      	str	r2, [r3, #0]
    1484:	4917      	ldr	r1, [pc, #92]	; (14e4 <get_descriptor_proc+0xe4>)
    1486:	4a17      	ldr	r2, [pc, #92]	; (14e4 <get_descriptor_proc+0xe4>)
    1488:	2380      	movs	r3, #128	; 0x80
    148a:	005b      	lsls	r3, r3, #1
    148c:	58d3      	ldr	r3, [r2, r3]
    148e:	2204      	movs	r2, #4
    1490:	4393      	bics	r3, r2
    1492:	001a      	movs	r2, r3
    1494:	2380      	movs	r3, #128	; 0x80
    1496:	005b      	lsls	r3, r3, #1
    1498:	50ca      	str	r2, [r1, r3]
    149a:	f7ff fef9 	bl	1290 <plan_Data_IN_proc>
    149e:	4b17      	ldr	r3, [pc, #92]	; (14fc <get_descriptor_proc+0xfc>)
    14a0:	0018      	movs	r0, r3
    14a2:	f7ff fa5d 	bl	960 <xprintf>
    14a6:	e011      	b.n	14cc <get_descriptor_proc+0xcc>
    14a8:	490e      	ldr	r1, [pc, #56]	; (14e4 <get_descriptor_proc+0xe4>)
    14aa:	4a0e      	ldr	r2, [pc, #56]	; (14e4 <get_descriptor_proc+0xe4>)
    14ac:	2380      	movs	r3, #128	; 0x80
    14ae:	005b      	lsls	r3, r3, #1
    14b0:	58d3      	ldr	r3, [r2, r3]
    14b2:	2204      	movs	r2, #4
    14b4:	4393      	bics	r3, r2
    14b6:	001a      	movs	r2, r3
    14b8:	2380      	movs	r3, #128	; 0x80
    14ba:	005b      	lsls	r3, r3, #1
    14bc:	50ca      	str	r2, [r1, r3]
    14be:	f7ff ff59 	bl	1374 <string_descriptor_proc>
    14c2:	4b0f      	ldr	r3, [pc, #60]	; (1500 <get_descriptor_proc+0x100>)
    14c4:	0018      	movs	r0, r3
    14c6:	f7ff fa4b 	bl	960 <xprintf>
    14ca:	46c0      	nop			; (mov r8, r8)
    14cc:	46c0      	nop			; (mov r8, r8)
    14ce:	46bd      	mov	sp, r7
    14d0:	b002      	add	sp, #8
    14d2:	bd80      	pop	{r7, pc}
    14d4:	20000054 	.word	0x20000054
    14d8:	2000005c 	.word	0x2000005c
    14dc:	20000060 	.word	0x20000060
    14e0:	00001a08 	.word	0x00001a08
    14e4:	40010000 	.word	0x40010000
    14e8:	00001b48 	.word	0x00001b48
    14ec:	20000020 	.word	0x20000020
    14f0:	00001211 	.word	0x00001211
    14f4:	00001b54 	.word	0x00001b54
    14f8:	00001a1c 	.word	0x00001a1c
    14fc:	00001b60 	.word	0x00001b60
    1500:	00001b70 	.word	0x00001b70

00001504 <input0_for_setaddr_proc>:
    1504:	b580      	push	{r7, lr}
    1506:	af00      	add	r7, sp, #0
    1508:	4a0b      	ldr	r2, [pc, #44]	; (1538 <input0_for_setaddr_proc+0x34>)
    150a:	4b0c      	ldr	r3, [pc, #48]	; (153c <input0_for_setaddr_proc+0x38>)
    150c:	881b      	ldrh	r3, [r3, #0]
    150e:	0019      	movs	r1, r3
    1510:	23a8      	movs	r3, #168	; 0xa8
    1512:	005b      	lsls	r3, r3, #1
    1514:	50d1      	str	r1, [r2, r3]
    1516:	4908      	ldr	r1, [pc, #32]	; (1538 <input0_for_setaddr_proc+0x34>)
    1518:	4a07      	ldr	r2, [pc, #28]	; (1538 <input0_for_setaddr_proc+0x34>)
    151a:	2380      	movs	r3, #128	; 0x80
    151c:	005b      	lsls	r3, r3, #1
    151e:	58d3      	ldr	r3, [r2, r3]
    1520:	2202      	movs	r2, #2
    1522:	431a      	orrs	r2, r3
    1524:	2380      	movs	r3, #128	; 0x80
    1526:	005b      	lsls	r3, r3, #1
    1528:	50ca      	str	r2, [r1, r3]
    152a:	4b05      	ldr	r3, [pc, #20]	; (1540 <input0_for_setaddr_proc+0x3c>)
    152c:	4a05      	ldr	r2, [pc, #20]	; (1544 <input0_for_setaddr_proc+0x40>)
    152e:	601a      	str	r2, [r3, #0]
    1530:	46c0      	nop			; (mov r8, r8)
    1532:	46bd      	mov	sp, r7
    1534:	bd80      	pop	{r7, pc}
    1536:	46c0      	nop			; (mov r8, r8)
    1538:	40010000 	.word	0x40010000
    153c:	20000040 	.word	0x20000040
    1540:	20000020 	.word	0x20000020
    1544:	000011e1 	.word	0x000011e1

00001548 <input0_for_setconfig_proc>:
    1548:	b580      	push	{r7, lr}
    154a:	af00      	add	r7, sp, #0
    154c:	4b17      	ldr	r3, [pc, #92]	; (15ac <input0_for_setconfig_proc+0x64>)
    154e:	2201      	movs	r2, #1
    1550:	601a      	str	r2, [r3, #0]
    1552:	4917      	ldr	r1, [pc, #92]	; (15b0 <input0_for_setconfig_proc+0x68>)
    1554:	4a16      	ldr	r2, [pc, #88]	; (15b0 <input0_for_setconfig_proc+0x68>)
    1556:	2388      	movs	r3, #136	; 0x88
    1558:	005b      	lsls	r3, r3, #1
    155a:	58d3      	ldr	r3, [r2, r3]
    155c:	2201      	movs	r2, #1
    155e:	431a      	orrs	r2, r3
    1560:	2388      	movs	r3, #136	; 0x88
    1562:	005b      	lsls	r3, r3, #1
    1564:	50ca      	str	r2, [r1, r3]
    1566:	4912      	ldr	r1, [pc, #72]	; (15b0 <input0_for_setconfig_proc+0x68>)
    1568:	4a11      	ldr	r2, [pc, #68]	; (15b0 <input0_for_setconfig_proc+0x68>)
    156a:	2398      	movs	r3, #152	; 0x98
    156c:	005b      	lsls	r3, r3, #1
    156e:	58d3      	ldr	r3, [r2, r3]
    1570:	2203      	movs	r2, #3
    1572:	431a      	orrs	r2, r3
    1574:	2398      	movs	r3, #152	; 0x98
    1576:	005b      	lsls	r3, r3, #1
    1578:	50ca      	str	r2, [r1, r3]
    157a:	4b0e      	ldr	r3, [pc, #56]	; (15b4 <input0_for_setconfig_proc+0x6c>)
    157c:	881b      	ldrh	r3, [r3, #0]
    157e:	001a      	movs	r2, r3
    1580:	4b0d      	ldr	r3, [pc, #52]	; (15b8 <input0_for_setconfig_proc+0x70>)
    1582:	0011      	movs	r1, r2
    1584:	0018      	movs	r0, r3
    1586:	f7ff f9eb 	bl	960 <xprintf>
    158a:	4909      	ldr	r1, [pc, #36]	; (15b0 <input0_for_setconfig_proc+0x68>)
    158c:	4a08      	ldr	r2, [pc, #32]	; (15b0 <input0_for_setconfig_proc+0x68>)
    158e:	2380      	movs	r3, #128	; 0x80
    1590:	005b      	lsls	r3, r3, #1
    1592:	58d3      	ldr	r3, [r2, r3]
    1594:	2202      	movs	r2, #2
    1596:	431a      	orrs	r2, r3
    1598:	2380      	movs	r3, #128	; 0x80
    159a:	005b      	lsls	r3, r3, #1
    159c:	50ca      	str	r2, [r1, r3]
    159e:	4b07      	ldr	r3, [pc, #28]	; (15bc <input0_for_setconfig_proc+0x74>)
    15a0:	4a07      	ldr	r2, [pc, #28]	; (15c0 <input0_for_setconfig_proc+0x78>)
    15a2:	601a      	str	r2, [r3, #0]
    15a4:	46c0      	nop			; (mov r8, r8)
    15a6:	46bd      	mov	sp, r7
    15a8:	bd80      	pop	{r7, pc}
    15aa:	46c0      	nop			; (mov r8, r8)
    15ac:	20000050 	.word	0x20000050
    15b0:	40010000 	.word	0x40010000
    15b4:	20000042 	.word	0x20000042
    15b8:	00001b7c 	.word	0x00001b7c
    15bc:	20000020 	.word	0x20000020
    15c0:	000011e1 	.word	0x000011e1

000015c4 <output0_for_setlinecoding_proc>:
    15c4:	b580      	push	{r7, lr}
    15c6:	b084      	sub	sp, #16
    15c8:	af00      	add	r7, sp, #0
    15ca:	4a28      	ldr	r2, [pc, #160]	; (166c <output0_for_setlinecoding_proc+0xa8>)
    15cc:	23c6      	movs	r3, #198	; 0xc6
    15ce:	005b      	lsls	r3, r3, #1
    15d0:	58d3      	ldr	r3, [r2, r3]
    15d2:	60bb      	str	r3, [r7, #8]
    15d4:	68ba      	ldr	r2, [r7, #8]
    15d6:	4b26      	ldr	r3, [pc, #152]	; (1670 <output0_for_setlinecoding_proc+0xac>)
    15d8:	0011      	movs	r1, r2
    15da:	0018      	movs	r0, r3
    15dc:	f7ff f9c0 	bl	960 <xprintf>
    15e0:	2300      	movs	r3, #0
    15e2:	60fb      	str	r3, [r7, #12]
    15e4:	e00c      	b.n	1600 <output0_for_setlinecoding_proc+0x3c>
    15e6:	4a21      	ldr	r2, [pc, #132]	; (166c <output0_for_setlinecoding_proc+0xa8>)
    15e8:	23c0      	movs	r3, #192	; 0xc0
    15ea:	005b      	lsls	r3, r3, #1
    15ec:	58d3      	ldr	r3, [r2, r3]
    15ee:	b2d9      	uxtb	r1, r3
    15f0:	4a20      	ldr	r2, [pc, #128]	; (1674 <output0_for_setlinecoding_proc+0xb0>)
    15f2:	68fb      	ldr	r3, [r7, #12]
    15f4:	18d3      	adds	r3, r2, r3
    15f6:	1c0a      	adds	r2, r1, #0
    15f8:	701a      	strb	r2, [r3, #0]
    15fa:	68fb      	ldr	r3, [r7, #12]
    15fc:	3301      	adds	r3, #1
    15fe:	60fb      	str	r3, [r7, #12]
    1600:	68fb      	ldr	r3, [r7, #12]
    1602:	2b06      	cmp	r3, #6
    1604:	ddef      	ble.n	15e6 <output0_for_setlinecoding_proc+0x22>
    1606:	4a19      	ldr	r2, [pc, #100]	; (166c <output0_for_setlinecoding_proc+0xa8>)
    1608:	23c8      	movs	r3, #200	; 0xc8
    160a:	005b      	lsls	r3, r3, #1
    160c:	2101      	movs	r1, #1
    160e:	50d1      	str	r1, [r2, r3]
    1610:	1dfb      	adds	r3, r7, #7
    1612:	4a18      	ldr	r2, [pc, #96]	; (1674 <output0_for_setlinecoding_proc+0xb0>)
    1614:	7992      	ldrb	r2, [r2, #6]
    1616:	701a      	strb	r2, [r3, #0]
    1618:	4b16      	ldr	r3, [pc, #88]	; (1674 <output0_for_setlinecoding_proc+0xb0>)
    161a:	781b      	ldrb	r3, [r3, #0]
    161c:	603b      	str	r3, [r7, #0]
    161e:	4b15      	ldr	r3, [pc, #84]	; (1674 <output0_for_setlinecoding_proc+0xb0>)
    1620:	785b      	ldrb	r3, [r3, #1]
    1622:	021b      	lsls	r3, r3, #8
    1624:	001a      	movs	r2, r3
    1626:	683b      	ldr	r3, [r7, #0]
    1628:	189b      	adds	r3, r3, r2
    162a:	603b      	str	r3, [r7, #0]
    162c:	4b11      	ldr	r3, [pc, #68]	; (1674 <output0_for_setlinecoding_proc+0xb0>)
    162e:	789b      	ldrb	r3, [r3, #2]
    1630:	041b      	lsls	r3, r3, #16
    1632:	001a      	movs	r2, r3
    1634:	683b      	ldr	r3, [r7, #0]
    1636:	189b      	adds	r3, r3, r2
    1638:	603b      	str	r3, [r7, #0]
    163a:	683a      	ldr	r2, [r7, #0]
    163c:	4b0e      	ldr	r3, [pc, #56]	; (1678 <output0_for_setlinecoding_proc+0xb4>)
    163e:	0011      	movs	r1, r2
    1640:	0018      	movs	r0, r3
    1642:	f7ff f98d 	bl	960 <xprintf>
    1646:	1dfb      	adds	r3, r7, #7
    1648:	781a      	ldrb	r2, [r3, #0]
    164a:	4b0c      	ldr	r3, [pc, #48]	; (167c <output0_for_setlinecoding_proc+0xb8>)
    164c:	0011      	movs	r1, r2
    164e:	0018      	movs	r0, r3
    1650:	f7ff f986 	bl	960 <xprintf>
    1654:	f7ff fdfc 	bl	1250 <plan_ZeroLength_IN_proc>
    1658:	4b09      	ldr	r3, [pc, #36]	; (1680 <output0_for_setlinecoding_proc+0xbc>)
    165a:	4a0a      	ldr	r2, [pc, #40]	; (1684 <output0_for_setlinecoding_proc+0xc0>)
    165c:	601a      	str	r2, [r3, #0]
    165e:	4b0a      	ldr	r3, [pc, #40]	; (1688 <output0_for_setlinecoding_proc+0xc4>)
    1660:	4a0a      	ldr	r2, [pc, #40]	; (168c <output0_for_setlinecoding_proc+0xc8>)
    1662:	601a      	str	r2, [r3, #0]
    1664:	46c0      	nop			; (mov r8, r8)
    1666:	46bd      	mov	sp, r7
    1668:	b004      	add	sp, #16
    166a:	bd80      	pop	{r7, pc}
    166c:	40010000 	.word	0x40010000
    1670:	00001b98 	.word	0x00001b98
    1674:	20000048 	.word	0x20000048
    1678:	00001bc0 	.word	0x00001bc0
    167c:	00001bd0 	.word	0x00001bd0
    1680:	20000020 	.word	0x20000020
    1684:	000011e1 	.word	0x000011e1
    1688:	20000024 	.word	0x20000024
    168c:	000011ed 	.word	0x000011ed

00001690 <input0_for_setcontrolline_proc>:
    1690:	b580      	push	{r7, lr}
    1692:	af00      	add	r7, sp, #0
    1694:	4b0b      	ldr	r3, [pc, #44]	; (16c4 <input0_for_setcontrolline_proc+0x34>)
    1696:	881b      	ldrh	r3, [r3, #0]
    1698:	001a      	movs	r2, r3
    169a:	4b0b      	ldr	r3, [pc, #44]	; (16c8 <input0_for_setcontrolline_proc+0x38>)
    169c:	0011      	movs	r1, r2
    169e:	0018      	movs	r0, r3
    16a0:	f7ff f95e 	bl	960 <xprintf>
    16a4:	4909      	ldr	r1, [pc, #36]	; (16cc <input0_for_setcontrolline_proc+0x3c>)
    16a6:	4a09      	ldr	r2, [pc, #36]	; (16cc <input0_for_setcontrolline_proc+0x3c>)
    16a8:	2380      	movs	r3, #128	; 0x80
    16aa:	005b      	lsls	r3, r3, #1
    16ac:	58d3      	ldr	r3, [r2, r3]
    16ae:	2202      	movs	r2, #2
    16b0:	431a      	orrs	r2, r3
    16b2:	2380      	movs	r3, #128	; 0x80
    16b4:	005b      	lsls	r3, r3, #1
    16b6:	50ca      	str	r2, [r1, r3]
    16b8:	4b05      	ldr	r3, [pc, #20]	; (16d0 <input0_for_setcontrolline_proc+0x40>)
    16ba:	4a06      	ldr	r2, [pc, #24]	; (16d4 <input0_for_setcontrolline_proc+0x44>)
    16bc:	601a      	str	r2, [r3, #0]
    16be:	46c0      	nop			; (mov r8, r8)
    16c0:	46bd      	mov	sp, r7
    16c2:	bd80      	pop	{r7, pc}
    16c4:	20000044 	.word	0x20000044
    16c8:	00001be0 	.word	0x00001be0
    16cc:	40010000 	.word	0x40010000
    16d0:	20000020 	.word	0x20000020
    16d4:	000011e1 	.word	0x000011e1

000016d8 <setup0_proc>:
    16d8:	b580      	push	{r7, lr}
    16da:	b084      	sub	sp, #16
    16dc:	af00      	add	r7, sp, #0
    16de:	4a47      	ldr	r2, [pc, #284]	; (17fc <setup0_proc+0x124>)
    16e0:	23c6      	movs	r3, #198	; 0xc6
    16e2:	005b      	lsls	r3, r3, #1
    16e4:	58d3      	ldr	r3, [r2, r3]
    16e6:	60bb      	str	r3, [r7, #8]
    16e8:	2300      	movs	r3, #0
    16ea:	60fb      	str	r3, [r7, #12]
    16ec:	e00c      	b.n	1708 <setup0_proc+0x30>
    16ee:	4a43      	ldr	r2, [pc, #268]	; (17fc <setup0_proc+0x124>)
    16f0:	23c0      	movs	r3, #192	; 0xc0
    16f2:	005b      	lsls	r3, r3, #1
    16f4:	58d3      	ldr	r3, [r2, r3]
    16f6:	b2d9      	uxtb	r1, r3
    16f8:	4a41      	ldr	r2, [pc, #260]	; (1800 <setup0_proc+0x128>)
    16fa:	68fb      	ldr	r3, [r7, #12]
    16fc:	18d3      	adds	r3, r2, r3
    16fe:	1c0a      	adds	r2, r1, #0
    1700:	701a      	strb	r2, [r3, #0]
    1702:	68fb      	ldr	r3, [r7, #12]
    1704:	3301      	adds	r3, #1
    1706:	60fb      	str	r3, [r7, #12]
    1708:	68fb      	ldr	r3, [r7, #12]
    170a:	2b07      	cmp	r3, #7
    170c:	ddef      	ble.n	16ee <setup0_proc+0x16>
    170e:	4a3b      	ldr	r2, [pc, #236]	; (17fc <setup0_proc+0x124>)
    1710:	23c8      	movs	r3, #200	; 0xc8
    1712:	005b      	lsls	r3, r3, #1
    1714:	2101      	movs	r1, #1
    1716:	50d1      	str	r1, [r2, r3]
    1718:	4b39      	ldr	r3, [pc, #228]	; (1800 <setup0_proc+0x128>)
    171a:	785b      	ldrb	r3, [r3, #1]
    171c:	607b      	str	r3, [r7, #4]
    171e:	687b      	ldr	r3, [r7, #4]
    1720:	3b05      	subs	r3, #5
    1722:	2b1d      	cmp	r3, #29
    1724:	d866      	bhi.n	17f4 <setup0_proc+0x11c>
    1726:	009a      	lsls	r2, r3, #2
    1728:	4b36      	ldr	r3, [pc, #216]	; (1804 <setup0_proc+0x12c>)
    172a:	18d3      	adds	r3, r2, r3
    172c:	681b      	ldr	r3, [r3, #0]
    172e:	469f      	mov	pc, r3
    1730:	f7ff fd8e 	bl	1250 <plan_ZeroLength_IN_proc>
    1734:	4b34      	ldr	r3, [pc, #208]	; (1808 <setup0_proc+0x130>)
    1736:	4a35      	ldr	r2, [pc, #212]	; (180c <setup0_proc+0x134>)
    1738:	601a      	str	r2, [r3, #0]
    173a:	4b31      	ldr	r3, [pc, #196]	; (1800 <setup0_proc+0x128>)
    173c:	789b      	ldrb	r3, [r3, #2]
    173e:	b29a      	uxth	r2, r3
    1740:	4b33      	ldr	r3, [pc, #204]	; (1810 <setup0_proc+0x138>)
    1742:	801a      	strh	r2, [r3, #0]
    1744:	4b33      	ldr	r3, [pc, #204]	; (1814 <setup0_proc+0x13c>)
    1746:	0018      	movs	r0, r3
    1748:	f7ff f90a 	bl	960 <xprintf>
    174c:	e052      	b.n	17f4 <setup0_proc+0x11c>
    174e:	4b32      	ldr	r3, [pc, #200]	; (1818 <setup0_proc+0x140>)
    1750:	4a32      	ldr	r2, [pc, #200]	; (181c <setup0_proc+0x144>)
    1752:	601a      	str	r2, [r3, #0]
    1754:	4929      	ldr	r1, [pc, #164]	; (17fc <setup0_proc+0x124>)
    1756:	4a29      	ldr	r2, [pc, #164]	; (17fc <setup0_proc+0x124>)
    1758:	2380      	movs	r3, #128	; 0x80
    175a:	005b      	lsls	r3, r3, #1
    175c:	58d3      	ldr	r3, [r2, r3]
    175e:	2202      	movs	r2, #2
    1760:	431a      	orrs	r2, r3
    1762:	2380      	movs	r3, #128	; 0x80
    1764:	005b      	lsls	r3, r3, #1
    1766:	50ca      	str	r2, [r1, r3]
    1768:	4b2d      	ldr	r3, [pc, #180]	; (1820 <setup0_proc+0x148>)
    176a:	0018      	movs	r0, r3
    176c:	f7ff f8f8 	bl	960 <xprintf>
    1770:	e040      	b.n	17f4 <setup0_proc+0x11c>
    1772:	4b2c      	ldr	r3, [pc, #176]	; (1824 <setup0_proc+0x14c>)
    1774:	2207      	movs	r2, #7
    1776:	601a      	str	r2, [r3, #0]
    1778:	4b2b      	ldr	r3, [pc, #172]	; (1828 <setup0_proc+0x150>)
    177a:	4a2c      	ldr	r2, [pc, #176]	; (182c <setup0_proc+0x154>)
    177c:	601a      	str	r2, [r3, #0]
    177e:	491f      	ldr	r1, [pc, #124]	; (17fc <setup0_proc+0x124>)
    1780:	4a1e      	ldr	r2, [pc, #120]	; (17fc <setup0_proc+0x124>)
    1782:	2380      	movs	r3, #128	; 0x80
    1784:	005b      	lsls	r3, r3, #1
    1786:	58d3      	ldr	r3, [r2, r3]
    1788:	2204      	movs	r2, #4
    178a:	4393      	bics	r3, r2
    178c:	001a      	movs	r2, r3
    178e:	2380      	movs	r3, #128	; 0x80
    1790:	005b      	lsls	r3, r3, #1
    1792:	50ca      	str	r2, [r1, r3]
    1794:	f7ff fd7c 	bl	1290 <plan_Data_IN_proc>
    1798:	4b25      	ldr	r3, [pc, #148]	; (1830 <setup0_proc+0x158>)
    179a:	0018      	movs	r0, r3
    179c:	f7ff f8e0 	bl	960 <xprintf>
    17a0:	e028      	b.n	17f4 <setup0_proc+0x11c>
    17a2:	4b17      	ldr	r3, [pc, #92]	; (1800 <setup0_proc+0x128>)
    17a4:	789b      	ldrb	r3, [r3, #2]
    17a6:	b29a      	uxth	r2, r3
    17a8:	4b22      	ldr	r3, [pc, #136]	; (1834 <setup0_proc+0x15c>)
    17aa:	801a      	strh	r2, [r3, #0]
    17ac:	f7ff fd50 	bl	1250 <plan_ZeroLength_IN_proc>
    17b0:	4b15      	ldr	r3, [pc, #84]	; (1808 <setup0_proc+0x130>)
    17b2:	4a21      	ldr	r2, [pc, #132]	; (1838 <setup0_proc+0x160>)
    17b4:	601a      	str	r2, [r3, #0]
    17b6:	4b21      	ldr	r3, [pc, #132]	; (183c <setup0_proc+0x164>)
    17b8:	0018      	movs	r0, r3
    17ba:	f7ff f8d1 	bl	960 <xprintf>
    17be:	e019      	b.n	17f4 <setup0_proc+0x11c>
    17c0:	4b0f      	ldr	r3, [pc, #60]	; (1800 <setup0_proc+0x128>)
    17c2:	789b      	ldrb	r3, [r3, #2]
    17c4:	b29a      	uxth	r2, r3
    17c6:	4b1e      	ldr	r3, [pc, #120]	; (1840 <setup0_proc+0x168>)
    17c8:	801a      	strh	r2, [r3, #0]
    17ca:	f7ff fd41 	bl	1250 <plan_ZeroLength_IN_proc>
    17ce:	4b0e      	ldr	r3, [pc, #56]	; (1808 <setup0_proc+0x130>)
    17d0:	4a1c      	ldr	r2, [pc, #112]	; (1844 <setup0_proc+0x16c>)
    17d2:	601a      	str	r2, [r3, #0]
    17d4:	4b1a      	ldr	r3, [pc, #104]	; (1840 <setup0_proc+0x168>)
    17d6:	881b      	ldrh	r3, [r3, #0]
    17d8:	001a      	movs	r2, r3
    17da:	4b1b      	ldr	r3, [pc, #108]	; (1848 <setup0_proc+0x170>)
    17dc:	0011      	movs	r1, r2
    17de:	0018      	movs	r0, r3
    17e0:	f7ff f8be 	bl	960 <xprintf>
    17e4:	e006      	b.n	17f4 <setup0_proc+0x11c>
    17e6:	4b19      	ldr	r3, [pc, #100]	; (184c <setup0_proc+0x174>)
    17e8:	0018      	movs	r0, r3
    17ea:	f7ff f8b9 	bl	960 <xprintf>
    17ee:	f7ff fe07 	bl	1400 <get_descriptor_proc>
    17f2:	46c0      	nop			; (mov r8, r8)
    17f4:	46c0      	nop			; (mov r8, r8)
    17f6:	46bd      	mov	sp, r7
    17f8:	b004      	add	sp, #16
    17fa:	bd80      	pop	{r7, pc}
    17fc:	40010000 	.word	0x40010000
    1800:	20000054 	.word	0x20000054
    1804:	00001c7c 	.word	0x00001c7c
    1808:	20000020 	.word	0x20000020
    180c:	00001691 	.word	0x00001691
    1810:	20000044 	.word	0x20000044
    1814:	00001c00 	.word	0x00001c00
    1818:	20000024 	.word	0x20000024
    181c:	000015c5 	.word	0x000015c5
    1820:	00001c1c 	.word	0x00001c1c
    1824:	2000005c 	.word	0x2000005c
    1828:	20000060 	.word	0x20000060
    182c:	20000048 	.word	0x20000048
    1830:	00001c30 	.word	0x00001c30
    1834:	20000042 	.word	0x20000042
    1838:	00001549 	.word	0x00001549
    183c:	00001c44 	.word	0x00001c44
    1840:	20000040 	.word	0x20000040
    1844:	00001505 	.word	0x00001505
    1848:	00001c58 	.word	0x00001c58
    184c:	00001c6c 	.word	0x00001c6c

00001850 <__aeabi_uidiv>:
    1850:	2200      	movs	r2, #0
    1852:	0843      	lsrs	r3, r0, #1
    1854:	428b      	cmp	r3, r1
    1856:	d374      	bcc.n	1942 <__aeabi_uidiv+0xf2>
    1858:	0903      	lsrs	r3, r0, #4
    185a:	428b      	cmp	r3, r1
    185c:	d35f      	bcc.n	191e <__aeabi_uidiv+0xce>
    185e:	0a03      	lsrs	r3, r0, #8
    1860:	428b      	cmp	r3, r1
    1862:	d344      	bcc.n	18ee <__aeabi_uidiv+0x9e>
    1864:	0b03      	lsrs	r3, r0, #12
    1866:	428b      	cmp	r3, r1
    1868:	d328      	bcc.n	18bc <__aeabi_uidiv+0x6c>
    186a:	0c03      	lsrs	r3, r0, #16
    186c:	428b      	cmp	r3, r1
    186e:	d30d      	bcc.n	188c <__aeabi_uidiv+0x3c>
    1870:	22ff      	movs	r2, #255	; 0xff
    1872:	0209      	lsls	r1, r1, #8
    1874:	ba12      	rev	r2, r2
    1876:	0c03      	lsrs	r3, r0, #16
    1878:	428b      	cmp	r3, r1
    187a:	d302      	bcc.n	1882 <__aeabi_uidiv+0x32>
    187c:	1212      	asrs	r2, r2, #8
    187e:	0209      	lsls	r1, r1, #8
    1880:	d065      	beq.n	194e <__aeabi_uidiv+0xfe>
    1882:	0b03      	lsrs	r3, r0, #12
    1884:	428b      	cmp	r3, r1
    1886:	d319      	bcc.n	18bc <__aeabi_uidiv+0x6c>
    1888:	e000      	b.n	188c <__aeabi_uidiv+0x3c>
    188a:	0a09      	lsrs	r1, r1, #8
    188c:	0bc3      	lsrs	r3, r0, #15
    188e:	428b      	cmp	r3, r1
    1890:	d301      	bcc.n	1896 <__aeabi_uidiv+0x46>
    1892:	03cb      	lsls	r3, r1, #15
    1894:	1ac0      	subs	r0, r0, r3
    1896:	4152      	adcs	r2, r2
    1898:	0b83      	lsrs	r3, r0, #14
    189a:	428b      	cmp	r3, r1
    189c:	d301      	bcc.n	18a2 <__aeabi_uidiv+0x52>
    189e:	038b      	lsls	r3, r1, #14
    18a0:	1ac0      	subs	r0, r0, r3
    18a2:	4152      	adcs	r2, r2
    18a4:	0b43      	lsrs	r3, r0, #13
    18a6:	428b      	cmp	r3, r1
    18a8:	d301      	bcc.n	18ae <__aeabi_uidiv+0x5e>
    18aa:	034b      	lsls	r3, r1, #13
    18ac:	1ac0      	subs	r0, r0, r3
    18ae:	4152      	adcs	r2, r2
    18b0:	0b03      	lsrs	r3, r0, #12
    18b2:	428b      	cmp	r3, r1
    18b4:	d301      	bcc.n	18ba <__aeabi_uidiv+0x6a>
    18b6:	030b      	lsls	r3, r1, #12
    18b8:	1ac0      	subs	r0, r0, r3
    18ba:	4152      	adcs	r2, r2
    18bc:	0ac3      	lsrs	r3, r0, #11
    18be:	428b      	cmp	r3, r1
    18c0:	d301      	bcc.n	18c6 <__aeabi_uidiv+0x76>
    18c2:	02cb      	lsls	r3, r1, #11
    18c4:	1ac0      	subs	r0, r0, r3
    18c6:	4152      	adcs	r2, r2
    18c8:	0a83      	lsrs	r3, r0, #10
    18ca:	428b      	cmp	r3, r1
    18cc:	d301      	bcc.n	18d2 <__aeabi_uidiv+0x82>
    18ce:	028b      	lsls	r3, r1, #10
    18d0:	1ac0      	subs	r0, r0, r3
    18d2:	4152      	adcs	r2, r2
    18d4:	0a43      	lsrs	r3, r0, #9
    18d6:	428b      	cmp	r3, r1
    18d8:	d301      	bcc.n	18de <__aeabi_uidiv+0x8e>
    18da:	024b      	lsls	r3, r1, #9
    18dc:	1ac0      	subs	r0, r0, r3
    18de:	4152      	adcs	r2, r2
    18e0:	0a03      	lsrs	r3, r0, #8
    18e2:	428b      	cmp	r3, r1
    18e4:	d301      	bcc.n	18ea <__aeabi_uidiv+0x9a>
    18e6:	020b      	lsls	r3, r1, #8
    18e8:	1ac0      	subs	r0, r0, r3
    18ea:	4152      	adcs	r2, r2
    18ec:	d2cd      	bcs.n	188a <__aeabi_uidiv+0x3a>
    18ee:	09c3      	lsrs	r3, r0, #7
    18f0:	428b      	cmp	r3, r1
    18f2:	d301      	bcc.n	18f8 <__aeabi_uidiv+0xa8>
    18f4:	01cb      	lsls	r3, r1, #7
    18f6:	1ac0      	subs	r0, r0, r3
    18f8:	4152      	adcs	r2, r2
    18fa:	0983      	lsrs	r3, r0, #6
    18fc:	428b      	cmp	r3, r1
    18fe:	d301      	bcc.n	1904 <__aeabi_uidiv+0xb4>
    1900:	018b      	lsls	r3, r1, #6
    1902:	1ac0      	subs	r0, r0, r3
    1904:	4152      	adcs	r2, r2
    1906:	0943      	lsrs	r3, r0, #5
    1908:	428b      	cmp	r3, r1
    190a:	d301      	bcc.n	1910 <__aeabi_uidiv+0xc0>
    190c:	014b      	lsls	r3, r1, #5
    190e:	1ac0      	subs	r0, r0, r3
    1910:	4152      	adcs	r2, r2
    1912:	0903      	lsrs	r3, r0, #4
    1914:	428b      	cmp	r3, r1
    1916:	d301      	bcc.n	191c <__aeabi_uidiv+0xcc>
    1918:	010b      	lsls	r3, r1, #4
    191a:	1ac0      	subs	r0, r0, r3
    191c:	4152      	adcs	r2, r2
    191e:	08c3      	lsrs	r3, r0, #3
    1920:	428b      	cmp	r3, r1
    1922:	d301      	bcc.n	1928 <__aeabi_uidiv+0xd8>
    1924:	00cb      	lsls	r3, r1, #3
    1926:	1ac0      	subs	r0, r0, r3
    1928:	4152      	adcs	r2, r2
    192a:	0883      	lsrs	r3, r0, #2
    192c:	428b      	cmp	r3, r1
    192e:	d301      	bcc.n	1934 <__aeabi_uidiv+0xe4>
    1930:	008b      	lsls	r3, r1, #2
    1932:	1ac0      	subs	r0, r0, r3
    1934:	4152      	adcs	r2, r2
    1936:	0843      	lsrs	r3, r0, #1
    1938:	428b      	cmp	r3, r1
    193a:	d301      	bcc.n	1940 <__aeabi_uidiv+0xf0>
    193c:	004b      	lsls	r3, r1, #1
    193e:	1ac0      	subs	r0, r0, r3
    1940:	4152      	adcs	r2, r2
    1942:	1a41      	subs	r1, r0, r1
    1944:	d200      	bcs.n	1948 <__aeabi_uidiv+0xf8>
    1946:	4601      	mov	r1, r0
    1948:	4152      	adcs	r2, r2
    194a:	4610      	mov	r0, r2
    194c:	4770      	bx	lr
    194e:	e7ff      	b.n	1950 <__aeabi_uidiv+0x100>
    1950:	b501      	push	{r0, lr}
    1952:	2000      	movs	r0, #0
    1954:	f000 f806 	bl	1964 <__aeabi_idiv0>
    1958:	bd02      	pop	{r1, pc}
    195a:	46c0      	nop			; (mov r8, r8)

0000195c <__aeabi_uidivmod>:
    195c:	2900      	cmp	r1, #0
    195e:	d0f7      	beq.n	1950 <__aeabi_uidiv+0x100>
    1960:	e776      	b.n	1850 <__aeabi_uidiv>
    1962:	4770      	bx	lr

00001964 <__aeabi_idiv0>:
    1964:	4770      	bx	lr
    1966:	46c0      	nop			; (mov r8, r8)
    1968:	64616572 	.word	0x64616572
    196c:	6f726620 	.word	0x6f726620
    1970:	7375206d 	.word	0x7375206d
    1974:	25203a62 	.word	0x25203a62
    1978:	000a0d78 	.word	0x000a0d78
    197c:	6c6c6568 	.word	0x6c6c6568
    1980:	6f77206f 	.word	0x6f77206f
    1984:	0d646c72 	.word	0x0d646c72
    1988:	0000000a 	.word	0x0000000a
    198c:	000007ea 	.word	0x000007ea
    1990:	000007d8 	.word	0x000007d8
    1994:	000007f6 	.word	0x000007f6
    1998:	00000802 	.word	0x00000802
    199c:	00000802 	.word	0x00000802
    19a0:	00000802 	.word	0x00000802
    19a4:	00000802 	.word	0x00000802
    19a8:	00000802 	.word	0x00000802
    19ac:	00000802 	.word	0x00000802
    19b0:	00000802 	.word	0x00000802
    19b4:	00000802 	.word	0x00000802
    19b8:	00000802 	.word	0x00000802
    19bc:	00000802 	.word	0x00000802
    19c0:	000007f0 	.word	0x000007f0
    19c4:	00000802 	.word	0x00000802
    19c8:	00000802 	.word	0x00000802
    19cc:	00000802 	.word	0x00000802
    19d0:	0000077c 	.word	0x0000077c
    19d4:	00000802 	.word	0x00000802
    19d8:	000007f6 	.word	0x000007f6
    19dc:	00000802 	.word	0x00000802
    19e0:	00000802 	.word	0x00000802
    19e4:	000007fc 	.word	0x000007fc
    19e8:	6c383025 	.word	0x6c383025
    19ec:	00002058 	.word	0x00002058
    19f0:	32302520 	.word	0x32302520
    19f4:	00000058 	.word	0x00000058
    19f8:	34302520 	.word	0x34302520
    19fc:	00000058 	.word	0x00000058
    1a00:	38302520 	.word	0x38302520
    1a04:	0000584c 	.word	0x0000584c

00001a08 <Virtual_Com_Port_DeviceDescriptor>:
    1a08:	02000112 40000002 75400483 02010200     .......@..@u....
    1a18:	00000103                                ....

00001a1c <Virtual_Com_Port_ConfigDescriptor>:
    1a1c:	00430209 c0000102 00040932 02020100     ..C.....2.......
    1a2c:	24050001 05011000 01000124 02022404     ...$....$....$..
    1a3c:	00062405 82050701 ff001003 00010409     .$..............
    1a4c:	00000a02 03050700 00004002 02810507     .........@......
    1a5c:	00000040                                @...

00001a60 <Virtual_Com_Port_StringLangID>:
    1a60:	04090304                                ....

00001a64 <Virtual_Com_Port_StringVendor>:
    1a64:	00530326 004d0054 00630069 006f0072     &.S.T.M.i.c.r.o.
    1a74:	006c0065 00630065 00720074 006e006f     e.l.e.c.t.r.o.n.
    1a84:	00630069 00000073                       i.c.s...

00001a8c <Virtual_Com_Port_StringProduct>:
    1a8c:	00530332 004d0054 00320033 00560020     2.S.T.M.3.2. .V.
    1a9c:	00720069 00750074 006c0061 00430020     i.r.t.u.a.l. .C.
    1aac:	004d004f 00500020 0072006f 00200074     O.M. .P.o.r.t. .
    1abc:	00000020 45534552 000a0d54 3a307065      ...RESET...ep0:
    1acc:	75746573 00003a70 3a307065 0a0d6e69     setup:..ep0:in..
    1adc:	00000000 3a307065 0d74756f 0000000a     ....ep0:out.....
    1aec:	3a317065 0a0d6e69 00000000 3a317065     ep1:in......ep1:
    1afc:	0d74756f 0000000a 3a337065 0a0d6e69     out.....ep3:in..
    1b0c:	00000000 3a337065 0d74756f 0000000a     ....ep3:out.....
    1b1c:	74697277 206e6574 2064253d 65747962     written =%d byte
    1b2c:	000d0a73 6e656c20 2064253d 00000000     s... len=%d ....
    1b3c:	73616c20 64253d74 00000020 49564544      last=%d ...DEVI
    1b4c:	0a0d4543 00000000 4c415551 45494649     CE......QUALIFIE
    1b5c:	000a0d52 464e4f43 52554749 4f495441     R...CONFIGURATIO
    1b6c:	000a0d4e 49525453 0a0d474e 00000000     N...STRING......
    1b7c:	20746573 2077656e 666e6f63 72756769     set new configur
    1b8c:	6f697461 6425206e 00000a0d 20746573     ation %d....set 
    1b9c:	656e696c 646f6320 20676e69 636f7270     line coding proc
    1bac:	65673a20 64252074 74796220 0a0d7365      :get %d bytes..
    1bbc:	00000000 65646f62 65746172 0d64253d     ....boderate=%d.
    1bcc:	0000000a 61746164 73746962 0d64253d     ....databits=%d.
    1bdc:	0000000a 20746573 2077656e 746e6f63     ....set new cont
    1bec:	206c6f72 656e696c 61747320 25206574     rol line state %
    1bfc:	000a0d64 5f544553 544e4f43 5f4c4f52     d...SET_CONTROL_
    1c0c:	454e494c 4154535f 0a0d4554 00000000     LINE_STATE......
    1c1c:	5f544553 454e494c 444f435f 0d474e49     SET_LINE_CODING.
    1c2c:	0000000a 5f544547 454e494c 444f435f     ....GET_LINE_COD
    1c3c:	0d474e49 0000000a 5f544553 464e4f43     ING.....SET_CONF
    1c4c:	52554749 4f495441 000a0d4e 5f544553     IGURATION...SET_
    1c5c:	52444441 20535345 0a0d6425 00000000     ADDRESS %d......
    1c6c:	5f544547 43534544 54504952 003a524f     GET_DESCRIPTOR:.
    1c7c:	000017c0 000017e6 000017f4 000017f4     ................
    1c8c:	000017a2 000017f4 000017f4 000017f4     ................
    1c9c:	000017f4 000017f4 000017f4 000017f4     ................
    1cac:	000017f4 000017f4 000017f4 000017f4     ................
    1cbc:	000017f4 000017f4 000017f4 000017f4     ................
    1ccc:	000017f4 000017f4 000017f4 000017f4     ................
    1cdc:	000017f4 000017f4 000017f4 0000174e     ............N...
    1cec:	00001772 00001730                       r...0...
