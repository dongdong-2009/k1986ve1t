
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 59 07 00 00 b9 07 00 00 b9 07 00 00     ... Y...........
	...
      2c:	b9 07 00 00 00 00 00 00 00 00 00 00 b9 07 00 00     ................
      3c:	6d 06 00 00 b9 07 00 00 45 07 00 00 b9 07 00 00     m.......E.......
      4c:	b9 07 00 00 b9 07 00 00 b9 07 00 00 b9 07 00 00     ................
      5c:	d9 09 00 00 b9 07 00 00 b9 07 00 00 b9 07 00 00     ................
      6c:	b9 07 00 00 b9 07 00 00 85 06 00 00 b9 07 00 00     ................
      7c:	b9 07 00 00 b9 07 00 00 b9 07 00 00 b9 07 00 00     ................
      8c:	b9 07 00 00 b9 07 00 00 b9 07 00 00 b9 07 00 00     ................
      9c:	b9 07 00 00 b9 07 00 00 00 00 00 00 00 00 00 00     ................
      ac:	b9 07 00 00 b9 07 00 00 b9 07 00 00 b9 07 00 00     ................
      bc:	b9 07 00 00                                         ....

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

000000f8 <mil_null>:
      f8:	b580      	push	{r7, lr}
      fa:	af00      	add	r7, sp, #0
      fc:	46c0      	nop			; (mov r8, r8)
      fe:	46bd      	mov	sp, r7
     100:	bd80      	pop	{r7, pc}
     102:	46c0      	nop			; (mov r8, r8)

00000104 <mil_2pc>:
     104:	b580      	push	{r7, lr}
     106:	b082      	sub	sp, #8
     108:	af00      	add	r7, sp, #0
     10a:	4b11      	ldr	r3, [pc, #68]	; (150 <mil_2pc+0x4c>)
     10c:	607b      	str	r3, [r7, #4]
     10e:	4b11      	ldr	r3, [pc, #68]	; (154 <mil_2pc+0x50>)
     110:	681b      	ldr	r3, [r3, #0]
     112:	2b00      	cmp	r3, #0
     114:	d118      	bne.n	148 <mil_2pc+0x44>
     116:	2300      	movs	r3, #0
     118:	603b      	str	r3, [r7, #0]
     11a:	e00b      	b.n	134 <mil_2pc+0x30>
     11c:	687b      	ldr	r3, [r7, #4]
     11e:	1d1a      	adds	r2, r3, #4
     120:	607a      	str	r2, [r7, #4]
     122:	681b      	ldr	r3, [r3, #0]
     124:	b299      	uxth	r1, r3
     126:	4b0c      	ldr	r3, [pc, #48]	; (158 <mil_2pc+0x54>)
     128:	683a      	ldr	r2, [r7, #0]
     12a:	0052      	lsls	r2, r2, #1
     12c:	52d1      	strh	r1, [r2, r3]
     12e:	683b      	ldr	r3, [r7, #0]
     130:	3301      	adds	r3, #1
     132:	603b      	str	r3, [r7, #0]
     134:	683b      	ldr	r3, [r7, #0]
     136:	2b1f      	cmp	r3, #31
     138:	ddf0      	ble.n	11c <mil_2pc+0x18>
     13a:	4b06      	ldr	r3, [pc, #24]	; (154 <mil_2pc+0x50>)
     13c:	2220      	movs	r2, #32
     13e:	601a      	str	r2, [r3, #0]
     140:	4b06      	ldr	r3, [pc, #24]	; (15c <mil_2pc+0x58>)
     142:	4a07      	ldr	r2, [pc, #28]	; (160 <mil_2pc+0x5c>)
     144:	601a      	str	r2, [r3, #0]
     146:	e000      	b.n	14a <mil_2pc+0x46>
     148:	46c0      	nop			; (mov r8, r8)
     14a:	46bd      	mov	sp, r7
     14c:	b002      	add	sp, #8
     14e:	bd80      	pop	{r7, pc}
     150:	40048080 	.word	0x40048080
     154:	20000050 	.word	0x20000050
     158:	20000008 	.word	0x20000008
     15c:	20000004 	.word	0x20000004
     160:	000000f9 	.word	0x000000f9

00000164 <sleep>:
     164:	b580      	push	{r7, lr}
     166:	b084      	sub	sp, #16
     168:	af00      	add	r7, sp, #0
     16a:	6078      	str	r0, [r7, #4]
     16c:	4b07      	ldr	r3, [pc, #28]	; (18c <sleep+0x28>)
     16e:	681a      	ldr	r2, [r3, #0]
     170:	687b      	ldr	r3, [r7, #4]
     172:	18d3      	adds	r3, r2, r3
     174:	60fb      	str	r3, [r7, #12]
     176:	46c0      	nop			; (mov r8, r8)
     178:	4b04      	ldr	r3, [pc, #16]	; (18c <sleep+0x28>)
     17a:	681a      	ldr	r2, [r3, #0]
     17c:	68fb      	ldr	r3, [r7, #12]
     17e:	429a      	cmp	r2, r3
     180:	d3fa      	bcc.n	178 <sleep+0x14>
     182:	46c0      	nop			; (mov r8, r8)
     184:	0018      	movs	r0, r3
     186:	46bd      	mov	sp, r7
     188:	b004      	add	sp, #16
     18a:	bd80      	pop	{r7, pc}
     18c:	20000048 	.word	0x20000048

00000190 <main>:
     190:	b580      	push	{r7, lr}
     192:	b0a8      	sub	sp, #160	; 0xa0
     194:	af00      	add	r7, sp, #0
     196:	2300      	movs	r3, #0
     198:	229c      	movs	r2, #156	; 0x9c
     19a:	18ba      	adds	r2, r7, r2
     19c:	6013      	str	r3, [r2, #0]
     19e:	2300      	movs	r3, #0
     1a0:	2298      	movs	r2, #152	; 0x98
     1a2:	18ba      	adds	r2, r7, r2
     1a4:	6013      	str	r3, [r2, #0]
     1a6:	f000 fa51 	bl	64c <SystemInit>
     1aa:	4b5b      	ldr	r3, [pc, #364]	; (318 <main+0x188>)
     1ac:	4a5b      	ldr	r2, [pc, #364]	; (31c <main+0x18c>)
     1ae:	601a      	str	r2, [r3, #0]
     1b0:	4b5b      	ldr	r3, [pc, #364]	; (320 <main+0x190>)
     1b2:	681b      	ldr	r3, [r3, #0]
     1b4:	2b00      	cmp	r3, #0
     1b6:	d000      	beq.n	1ba <main+0x2a>
     1b8:	e09b      	b.n	2f2 <main+0x162>
     1ba:	1cfb      	adds	r3, r7, #3
     1bc:	2101      	movs	r1, #1
     1be:	0018      	movs	r0, r3
     1c0:	f000 fb80 	bl	8c4 <uart_read>
     1c4:	1e03      	subs	r3, r0, #0
     1c6:	d100      	bne.n	1ca <main+0x3a>
     1c8:	e093      	b.n	2f2 <main+0x162>
     1ca:	1cfb      	adds	r3, r7, #3
     1cc:	781b      	ldrb	r3, [r3, #0]
     1ce:	2b55      	cmp	r3, #85	; 0x55
     1d0:	d159      	bne.n	286 <main+0xf6>
     1d2:	2397      	movs	r3, #151	; 0x97
     1d4:	18fb      	adds	r3, r7, r3
     1d6:	781b      	ldrb	r3, [r3, #0]
     1d8:	2baa      	cmp	r3, #170	; 0xaa
     1da:	d154      	bne.n	286 <main+0xf6>
     1dc:	2398      	movs	r3, #152	; 0x98
     1de:	18fb      	adds	r3, r7, r3
     1e0:	681b      	ldr	r3, [r3, #0]
     1e2:	3b0b      	subs	r3, #11
     1e4:	227f      	movs	r2, #127	; 0x7f
     1e6:	4013      	ands	r3, r2
     1e8:	2290      	movs	r2, #144	; 0x90
     1ea:	18ba      	adds	r2, r7, r2
     1ec:	6013      	str	r3, [r2, #0]
     1ee:	4b4d      	ldr	r3, [pc, #308]	; (324 <main+0x194>)
     1f0:	228c      	movs	r2, #140	; 0x8c
     1f2:	18ba      	adds	r2, r7, r2
     1f4:	6013      	str	r3, [r2, #0]
     1f6:	2300      	movs	r3, #0
     1f8:	229c      	movs	r2, #156	; 0x9c
     1fa:	18ba      	adds	r2, r7, r2
     1fc:	6013      	str	r3, [r2, #0]
     1fe:	e03a      	b.n	276 <main+0xe6>
     200:	2387      	movs	r3, #135	; 0x87
     202:	18fb      	adds	r3, r7, r3
     204:	1d39      	adds	r1, r7, #4
     206:	2290      	movs	r2, #144	; 0x90
     208:	18ba      	adds	r2, r7, r2
     20a:	6812      	ldr	r2, [r2, #0]
     20c:	188a      	adds	r2, r1, r2
     20e:	7812      	ldrb	r2, [r2, #0]
     210:	701a      	strb	r2, [r3, #0]
     212:	2390      	movs	r3, #144	; 0x90
     214:	18fb      	adds	r3, r7, r3
     216:	681b      	ldr	r3, [r3, #0]
     218:	3301      	adds	r3, #1
     21a:	227f      	movs	r2, #127	; 0x7f
     21c:	4013      	ands	r3, r2
     21e:	2290      	movs	r2, #144	; 0x90
     220:	18ba      	adds	r2, r7, r2
     222:	6013      	str	r3, [r2, #0]
     224:	2386      	movs	r3, #134	; 0x86
     226:	18fb      	adds	r3, r7, r3
     228:	1d39      	adds	r1, r7, #4
     22a:	2290      	movs	r2, #144	; 0x90
     22c:	18ba      	adds	r2, r7, r2
     22e:	6812      	ldr	r2, [r2, #0]
     230:	188a      	adds	r2, r1, r2
     232:	7812      	ldrb	r2, [r2, #0]
     234:	701a      	strb	r2, [r3, #0]
     236:	2390      	movs	r3, #144	; 0x90
     238:	18fb      	adds	r3, r7, r3
     23a:	681b      	ldr	r3, [r3, #0]
     23c:	3301      	adds	r3, #1
     23e:	227f      	movs	r2, #127	; 0x7f
     240:	4013      	ands	r3, r2
     242:	2290      	movs	r2, #144	; 0x90
     244:	18ba      	adds	r2, r7, r2
     246:	6013      	str	r3, [r2, #0]
     248:	238c      	movs	r3, #140	; 0x8c
     24a:	18fb      	adds	r3, r7, r3
     24c:	681b      	ldr	r3, [r3, #0]
     24e:	1d1a      	adds	r2, r3, #4
     250:	218c      	movs	r1, #140	; 0x8c
     252:	1879      	adds	r1, r7, r1
     254:	600a      	str	r2, [r1, #0]
     256:	2286      	movs	r2, #134	; 0x86
     258:	18ba      	adds	r2, r7, r2
     25a:	7811      	ldrb	r1, [r2, #0]
     25c:	2287      	movs	r2, #135	; 0x87
     25e:	18ba      	adds	r2, r7, r2
     260:	7812      	ldrb	r2, [r2, #0]
     262:	0212      	lsls	r2, r2, #8
     264:	188a      	adds	r2, r1, r2
     266:	601a      	str	r2, [r3, #0]
     268:	239c      	movs	r3, #156	; 0x9c
     26a:	18fb      	adds	r3, r7, r3
     26c:	681b      	ldr	r3, [r3, #0]
     26e:	3301      	adds	r3, #1
     270:	229c      	movs	r2, #156	; 0x9c
     272:	18ba      	adds	r2, r7, r2
     274:	6013      	str	r3, [r2, #0]
     276:	239c      	movs	r3, #156	; 0x9c
     278:	18fb      	adds	r3, r7, r3
     27a:	681b      	ldr	r3, [r3, #0]
     27c:	2b04      	cmp	r3, #4
     27e:	ddbf      	ble.n	200 <main+0x70>
     280:	4b27      	ldr	r3, [pc, #156]	; (320 <main+0x190>)
     282:	2202      	movs	r2, #2
     284:	601a      	str	r2, [r3, #0]
     286:	2397      	movs	r3, #151	; 0x97
     288:	18fb      	adds	r3, r7, r3
     28a:	1cfa      	adds	r2, r7, #3
     28c:	7812      	ldrb	r2, [r2, #0]
     28e:	701a      	strb	r2, [r3, #0]
     290:	1cfb      	adds	r3, r7, #3
     292:	7819      	ldrb	r1, [r3, #0]
     294:	1d3a      	adds	r2, r7, #4
     296:	2398      	movs	r3, #152	; 0x98
     298:	18fb      	adds	r3, r7, r3
     29a:	681b      	ldr	r3, [r3, #0]
     29c:	18d3      	adds	r3, r2, r3
     29e:	1c0a      	adds	r2, r1, #0
     2a0:	701a      	strb	r2, [r3, #0]
     2a2:	2398      	movs	r3, #152	; 0x98
     2a4:	18fb      	adds	r3, r7, r3
     2a6:	681b      	ldr	r3, [r3, #0]
     2a8:	3301      	adds	r3, #1
     2aa:	227f      	movs	r2, #127	; 0x7f
     2ac:	4013      	ands	r3, r2
     2ae:	2298      	movs	r2, #152	; 0x98
     2b0:	18ba      	adds	r2, r7, r2
     2b2:	6013      	str	r3, [r2, #0]
     2b4:	f000 faa0 	bl	7f8 <uart_bsz>
     2b8:	0003      	movs	r3, r0
     2ba:	2288      	movs	r2, #136	; 0x88
     2bc:	18ba      	adds	r2, r7, r2
     2be:	6013      	str	r3, [r2, #0]
     2c0:	2388      	movs	r3, #136	; 0x88
     2c2:	18fb      	adds	r3, r7, r3
     2c4:	681b      	ldr	r3, [r3, #0]
     2c6:	4a18      	ldr	r2, [pc, #96]	; (328 <main+0x198>)
     2c8:	4293      	cmp	r3, r2
     2ca:	dd06      	ble.n	2da <main+0x14a>
     2cc:	4b17      	ldr	r3, [pc, #92]	; (32c <main+0x19c>)
     2ce:	4a17      	ldr	r2, [pc, #92]	; (32c <main+0x19c>)
     2d0:	6852      	ldr	r2, [r2, #4]
     2d2:	2180      	movs	r1, #128	; 0x80
     2d4:	438a      	bics	r2, r1
     2d6:	605a      	str	r2, [r3, #4]
     2d8:	e00b      	b.n	2f2 <main+0x162>
     2da:	2388      	movs	r3, #136	; 0x88
     2dc:	18fb      	adds	r3, r7, r3
     2de:	681b      	ldr	r3, [r3, #0]
     2e0:	4a13      	ldr	r2, [pc, #76]	; (330 <main+0x1a0>)
     2e2:	4293      	cmp	r3, r2
     2e4:	dc05      	bgt.n	2f2 <main+0x162>
     2e6:	4b11      	ldr	r3, [pc, #68]	; (32c <main+0x19c>)
     2e8:	4a10      	ldr	r2, [pc, #64]	; (32c <main+0x19c>)
     2ea:	6852      	ldr	r2, [r2, #4]
     2ec:	2180      	movs	r1, #128	; 0x80
     2ee:	430a      	orrs	r2, r1
     2f0:	605a      	str	r2, [r3, #4]
     2f2:	4b10      	ldr	r3, [pc, #64]	; (334 <main+0x1a4>)
     2f4:	681b      	ldr	r3, [r3, #0]
     2f6:	2b00      	cmp	r3, #0
     2f8:	d100      	bne.n	2fc <main+0x16c>
     2fa:	e759      	b.n	1b0 <main+0x20>
     2fc:	4b0e      	ldr	r3, [pc, #56]	; (338 <main+0x1a8>)
     2fe:	2140      	movs	r1, #64	; 0x40
     300:	0018      	movs	r0, r3
     302:	f000 fb1b 	bl	93c <uart_send>
     306:	4b0d      	ldr	r3, [pc, #52]	; (33c <main+0x1ac>)
     308:	2102      	movs	r1, #2
     30a:	0018      	movs	r0, r3
     30c:	f000 fb16 	bl	93c <uart_send>
     310:	4b08      	ldr	r3, [pc, #32]	; (334 <main+0x1a4>)
     312:	2200      	movs	r2, #0
     314:	601a      	str	r2, [r3, #0]
     316:	e74b      	b.n	1b0 <main+0x20>
     318:	20004064 	.word	0x20004064
     31c:	00000899 	.word	0x00000899
     320:	2000004c 	.word	0x2000004c
     324:	40048080 	.word	0x40048080
     328:	00001388 	.word	0x00001388
     32c:	400c8000 	.word	0x400c8000
     330:	00000bb7 	.word	0x00000bb7
     334:	20000050 	.word	0x20000050
     338:	20000008 	.word	0x20000008
     33c:	20000000 	.word	0x20000000

00000340 <PortConfig>:
     340:	b580      	push	{r7, lr}
     342:	af00      	add	r7, sp, #0
     344:	4b58      	ldr	r3, [pc, #352]	; (4a8 <_stack_size+0xa8>)
     346:	4a58      	ldr	r2, [pc, #352]	; (4a8 <_stack_size+0xa8>)
     348:	69d2      	ldr	r2, [r2, #28]
     34a:	2180      	movs	r1, #128	; 0x80
     34c:	0449      	lsls	r1, r1, #17
     34e:	430a      	orrs	r2, r1
     350:	61da      	str	r2, [r3, #28]
     352:	4b56      	ldr	r3, [pc, #344]	; (4ac <_stack_size+0xac>)
     354:	4a55      	ldr	r2, [pc, #340]	; (4ac <_stack_size+0xac>)
     356:	6892      	ldr	r2, [r2, #8]
     358:	4955      	ldr	r1, [pc, #340]	; (4b0 <_stack_size+0xb0>)
     35a:	400a      	ands	r2, r1
     35c:	609a      	str	r2, [r3, #8]
     35e:	4b53      	ldr	r3, [pc, #332]	; (4ac <_stack_size+0xac>)
     360:	4a52      	ldr	r2, [pc, #328]	; (4ac <_stack_size+0xac>)
     362:	6892      	ldr	r2, [r2, #8]
     364:	21a0      	movs	r1, #160	; 0xa0
     366:	0549      	lsls	r1, r1, #21
     368:	430a      	orrs	r2, r1
     36a:	609a      	str	r2, [r3, #8]
     36c:	4b4f      	ldr	r3, [pc, #316]	; (4ac <_stack_size+0xac>)
     36e:	4a4f      	ldr	r2, [pc, #316]	; (4ac <_stack_size+0xac>)
     370:	68d2      	ldr	r2, [r2, #12]
     372:	21c0      	movs	r1, #192	; 0xc0
     374:	01c9      	lsls	r1, r1, #7
     376:	430a      	orrs	r2, r1
     378:	60da      	str	r2, [r3, #12]
     37a:	4b4c      	ldr	r3, [pc, #304]	; (4ac <_stack_size+0xac>)
     37c:	4a4b      	ldr	r2, [pc, #300]	; (4ac <_stack_size+0xac>)
     37e:	6992      	ldr	r2, [r2, #24]
     380:	21f0      	movs	r1, #240	; 0xf0
     382:	0589      	lsls	r1, r1, #22
     384:	430a      	orrs	r2, r1
     386:	619a      	str	r2, [r3, #24]
     388:	4b48      	ldr	r3, [pc, #288]	; (4ac <_stack_size+0xac>)
     38a:	4a48      	ldr	r2, [pc, #288]	; (4ac <_stack_size+0xac>)
     38c:	6812      	ldr	r2, [r2, #0]
     38e:	4949      	ldr	r1, [pc, #292]	; (4b4 <_stack_size+0xb4>)
     390:	400a      	ands	r2, r1
     392:	601a      	str	r2, [r3, #0]
     394:	4b44      	ldr	r3, [pc, #272]	; (4a8 <_stack_size+0xa8>)
     396:	4a44      	ldr	r2, [pc, #272]	; (4a8 <_stack_size+0xa8>)
     398:	69d2      	ldr	r2, [r2, #28]
     39a:	2180      	movs	r1, #128	; 0x80
     39c:	0409      	lsls	r1, r1, #16
     39e:	430a      	orrs	r2, r1
     3a0:	61da      	str	r2, [r3, #28]
     3a2:	4b41      	ldr	r3, [pc, #260]	; (4a8 <_stack_size+0xa8>)
     3a4:	4a40      	ldr	r2, [pc, #256]	; (4a8 <_stack_size+0xa8>)
     3a6:	69d2      	ldr	r2, [r2, #28]
     3a8:	2180      	movs	r1, #128	; 0x80
     3aa:	0449      	lsls	r1, r1, #17
     3ac:	430a      	orrs	r2, r1
     3ae:	61da      	str	r2, [r3, #28]
     3b0:	4b41      	ldr	r3, [pc, #260]	; (4b8 <_stack_size+0xb8>)
     3b2:	4a41      	ldr	r2, [pc, #260]	; (4b8 <_stack_size+0xb8>)
     3b4:	6892      	ldr	r2, [r2, #8]
     3b6:	0192      	lsls	r2, r2, #6
     3b8:	0992      	lsrs	r2, r2, #6
     3ba:	609a      	str	r2, [r3, #8]
     3bc:	4b3e      	ldr	r3, [pc, #248]	; (4b8 <_stack_size+0xb8>)
     3be:	4a3e      	ldr	r2, [pc, #248]	; (4b8 <_stack_size+0xb8>)
     3c0:	6892      	ldr	r2, [r2, #8]
     3c2:	21a8      	movs	r1, #168	; 0xa8
     3c4:	05c9      	lsls	r1, r1, #23
     3c6:	430a      	orrs	r2, r1
     3c8:	609a      	str	r2, [r3, #8]
     3ca:	4b3b      	ldr	r3, [pc, #236]	; (4b8 <_stack_size+0xb8>)
     3cc:	4a3a      	ldr	r2, [pc, #232]	; (4b8 <_stack_size+0xb8>)
     3ce:	68d2      	ldr	r2, [r2, #12]
     3d0:	21e0      	movs	r1, #224	; 0xe0
     3d2:	0209      	lsls	r1, r1, #8
     3d4:	430a      	orrs	r2, r1
     3d6:	60da      	str	r2, [r3, #12]
     3d8:	4b37      	ldr	r3, [pc, #220]	; (4b8 <_stack_size+0xb8>)
     3da:	4a37      	ldr	r2, [pc, #220]	; (4b8 <_stack_size+0xb8>)
     3dc:	6992      	ldr	r2, [r2, #24]
     3de:	21fc      	movs	r1, #252	; 0xfc
     3e0:	0609      	lsls	r1, r1, #24
     3e2:	430a      	orrs	r2, r1
     3e4:	619a      	str	r2, [r3, #24]
     3e6:	4b31      	ldr	r3, [pc, #196]	; (4ac <_stack_size+0xac>)
     3e8:	4a30      	ldr	r2, [pc, #192]	; (4ac <_stack_size+0xac>)
     3ea:	6892      	ldr	r2, [r2, #8]
     3ec:	0b92      	lsrs	r2, r2, #14
     3ee:	0392      	lsls	r2, r2, #14
     3f0:	609a      	str	r2, [r3, #8]
     3f2:	4b2e      	ldr	r3, [pc, #184]	; (4ac <_stack_size+0xac>)
     3f4:	4a2d      	ldr	r2, [pc, #180]	; (4ac <_stack_size+0xac>)
     3f6:	6892      	ldr	r2, [r2, #8]
     3f8:	4930      	ldr	r1, [pc, #192]	; (4bc <_stack_size+0xbc>)
     3fa:	430a      	orrs	r2, r1
     3fc:	609a      	str	r2, [r3, #8]
     3fe:	4b2b      	ldr	r3, [pc, #172]	; (4ac <_stack_size+0xac>)
     400:	4a2a      	ldr	r2, [pc, #168]	; (4ac <_stack_size+0xac>)
     402:	68d2      	ldr	r2, [r2, #12]
     404:	217f      	movs	r1, #127	; 0x7f
     406:	430a      	orrs	r2, r1
     408:	60da      	str	r2, [r3, #12]
     40a:	4b28      	ldr	r3, [pc, #160]	; (4ac <_stack_size+0xac>)
     40c:	4a27      	ldr	r2, [pc, #156]	; (4ac <_stack_size+0xac>)
     40e:	6992      	ldr	r2, [r2, #24]
     410:	492b      	ldr	r1, [pc, #172]	; (4c0 <_stack_size+0xc0>)
     412:	430a      	orrs	r2, r1
     414:	619a      	str	r2, [r3, #24]
     416:	4b25      	ldr	r3, [pc, #148]	; (4ac <_stack_size+0xac>)
     418:	4a24      	ldr	r2, [pc, #144]	; (4ac <_stack_size+0xac>)
     41a:	68d2      	ldr	r2, [r2, #12]
     41c:	2180      	movs	r1, #128	; 0x80
     41e:	430a      	orrs	r2, r1
     420:	60da      	str	r2, [r3, #12]
     422:	4b22      	ldr	r3, [pc, #136]	; (4ac <_stack_size+0xac>)
     424:	4a21      	ldr	r2, [pc, #132]	; (4ac <_stack_size+0xac>)
     426:	6852      	ldr	r2, [r2, #4]
     428:	2180      	movs	r1, #128	; 0x80
     42a:	430a      	orrs	r2, r1
     42c:	605a      	str	r2, [r3, #4]
     42e:	4b1f      	ldr	r3, [pc, #124]	; (4ac <_stack_size+0xac>)
     430:	4a1e      	ldr	r2, [pc, #120]	; (4ac <_stack_size+0xac>)
     432:	6892      	ldr	r2, [r2, #8]
     434:	4923      	ldr	r1, [pc, #140]	; (4c4 <_stack_size+0xc4>)
     436:	400a      	ands	r2, r1
     438:	609a      	str	r2, [r3, #8]
     43a:	4b1c      	ldr	r3, [pc, #112]	; (4ac <_stack_size+0xac>)
     43c:	4a1b      	ldr	r2, [pc, #108]	; (4ac <_stack_size+0xac>)
     43e:	6992      	ldr	r2, [r2, #24]
     440:	21c0      	movs	r1, #192	; 0xc0
     442:	0209      	lsls	r1, r1, #8
     444:	430a      	orrs	r2, r1
     446:	619a      	str	r2, [r3, #24]
     448:	4b18      	ldr	r3, [pc, #96]	; (4ac <_stack_size+0xac>)
     44a:	4a18      	ldr	r2, [pc, #96]	; (4ac <_stack_size+0xac>)
     44c:	6812      	ldr	r2, [r2, #0]
     44e:	2180      	movs	r1, #128	; 0x80
     450:	438a      	bics	r2, r1
     452:	601a      	str	r2, [r3, #0]
     454:	4b14      	ldr	r3, [pc, #80]	; (4a8 <_stack_size+0xa8>)
     456:	4a14      	ldr	r2, [pc, #80]	; (4a8 <_stack_size+0xa8>)
     458:	69d2      	ldr	r2, [r2, #28]
     45a:	2180      	movs	r1, #128	; 0x80
     45c:	0489      	lsls	r1, r1, #18
     45e:	430a      	orrs	r2, r1
     460:	61da      	str	r2, [r3, #28]
     462:	4b19      	ldr	r3, [pc, #100]	; (4c8 <_stack_size+0xc8>)
     464:	4a18      	ldr	r2, [pc, #96]	; (4c8 <_stack_size+0xc8>)
     466:	68d2      	ldr	r2, [r2, #12]
     468:	2180      	movs	r1, #128	; 0x80
     46a:	430a      	orrs	r2, r1
     46c:	60da      	str	r2, [r3, #12]
     46e:	4b16      	ldr	r3, [pc, #88]	; (4c8 <_stack_size+0xc8>)
     470:	4a15      	ldr	r2, [pc, #84]	; (4c8 <_stack_size+0xc8>)
     472:	6852      	ldr	r2, [r2, #4]
     474:	2180      	movs	r1, #128	; 0x80
     476:	430a      	orrs	r2, r1
     478:	605a      	str	r2, [r3, #4]
     47a:	4b13      	ldr	r3, [pc, #76]	; (4c8 <_stack_size+0xc8>)
     47c:	4a12      	ldr	r2, [pc, #72]	; (4c8 <_stack_size+0xc8>)
     47e:	6892      	ldr	r2, [r2, #8]
     480:	4910      	ldr	r1, [pc, #64]	; (4c4 <_stack_size+0xc4>)
     482:	400a      	ands	r2, r1
     484:	609a      	str	r2, [r3, #8]
     486:	4b10      	ldr	r3, [pc, #64]	; (4c8 <_stack_size+0xc8>)
     488:	4a0f      	ldr	r2, [pc, #60]	; (4c8 <_stack_size+0xc8>)
     48a:	6992      	ldr	r2, [r2, #24]
     48c:	21c0      	movs	r1, #192	; 0xc0
     48e:	0209      	lsls	r1, r1, #8
     490:	430a      	orrs	r2, r1
     492:	619a      	str	r2, [r3, #24]
     494:	4b0c      	ldr	r3, [pc, #48]	; (4c8 <_stack_size+0xc8>)
     496:	4a0c      	ldr	r2, [pc, #48]	; (4c8 <_stack_size+0xc8>)
     498:	6812      	ldr	r2, [r2, #0]
     49a:	2180      	movs	r1, #128	; 0x80
     49c:	438a      	bics	r2, r1
     49e:	601a      	str	r2, [r3, #0]
     4a0:	46c0      	nop			; (mov r8, r8)
     4a2:	46bd      	mov	sp, r7
     4a4:	bd80      	pop	{r7, pc}
     4a6:	46c0      	nop			; (mov r8, r8)
     4a8:	40020000 	.word	0x40020000
     4ac:	400c0000 	.word	0x400c0000
     4b0:	c3ffffff 	.word	0xc3ffffff
     4b4:	ffff9fff 	.word	0xffff9fff
     4b8:	400b8000 	.word	0x400b8000
     4bc:	00001555 	.word	0x00001555
     4c0:	00003fff 	.word	0x00003fff
     4c4:	ffff3fff 	.word	0xffff3fff
     4c8:	400c8000 	.word	0x400c8000

000004cc <ClkConfig>:
     4cc:	b580      	push	{r7, lr}
     4ce:	af00      	add	r7, sp, #0
     4d0:	4b18      	ldr	r3, [pc, #96]	; (534 <ClkConfig+0x68>)
     4d2:	4a18      	ldr	r2, [pc, #96]	; (534 <ClkConfig+0x68>)
     4d4:	6892      	ldr	r2, [r2, #8]
     4d6:	2101      	movs	r1, #1
     4d8:	430a      	orrs	r2, r1
     4da:	609a      	str	r2, [r3, #8]
     4dc:	46c0      	nop			; (mov r8, r8)
     4de:	4b15      	ldr	r3, [pc, #84]	; (534 <ClkConfig+0x68>)
     4e0:	681b      	ldr	r3, [r3, #0]
     4e2:	2204      	movs	r2, #4
     4e4:	4013      	ands	r3, r2
     4e6:	d0fa      	beq.n	4de <ClkConfig+0x12>
     4e8:	4b12      	ldr	r3, [pc, #72]	; (534 <ClkConfig+0x68>)
     4ea:	4a12      	ldr	r2, [pc, #72]	; (534 <ClkConfig+0x68>)
     4ec:	68d2      	ldr	r2, [r2, #12]
     4ee:	2102      	movs	r1, #2
     4f0:	430a      	orrs	r2, r1
     4f2:	60da      	str	r2, [r3, #12]
     4f4:	4b0f      	ldr	r3, [pc, #60]	; (534 <ClkConfig+0x68>)
     4f6:	4a10      	ldr	r2, [pc, #64]	; (538 <ClkConfig+0x6c>)
     4f8:	605a      	str	r2, [r3, #4]
     4fa:	46c0      	nop			; (mov r8, r8)
     4fc:	4b0d      	ldr	r3, [pc, #52]	; (534 <ClkConfig+0x68>)
     4fe:	681b      	ldr	r3, [r3, #0]
     500:	2202      	movs	r2, #2
     502:	4013      	ands	r3, r2
     504:	d0fa      	beq.n	4fc <ClkConfig+0x30>
     506:	4b0d      	ldr	r3, [pc, #52]	; (53c <ClkConfig+0x70>)
     508:	4a0c      	ldr	r2, [pc, #48]	; (53c <ClkConfig+0x70>)
     50a:	6812      	ldr	r2, [r2, #0]
     50c:	2120      	movs	r1, #32
     50e:	430a      	orrs	r2, r1
     510:	601a      	str	r2, [r3, #0]
     512:	4b08      	ldr	r3, [pc, #32]	; (534 <ClkConfig+0x68>)
     514:	4a07      	ldr	r2, [pc, #28]	; (534 <ClkConfig+0x68>)
     516:	68d2      	ldr	r2, [r2, #12]
     518:	2180      	movs	r1, #128	; 0x80
     51a:	0049      	lsls	r1, r1, #1
     51c:	430a      	orrs	r2, r1
     51e:	60da      	str	r2, [r3, #12]
     520:	4b04      	ldr	r3, [pc, #16]	; (534 <ClkConfig+0x68>)
     522:	4a04      	ldr	r2, [pc, #16]	; (534 <ClkConfig+0x68>)
     524:	68d2      	ldr	r2, [r2, #12]
     526:	2104      	movs	r1, #4
     528:	430a      	orrs	r2, r1
     52a:	60da      	str	r2, [r3, #12]
     52c:	46c0      	nop			; (mov r8, r8)
     52e:	46bd      	mov	sp, r7
     530:	bd80      	pop	{r7, pc}
     532:	46c0      	nop			; (mov r8, r8)
     534:	40020000 	.word	0x40020000
     538:	00000e04 	.word	0x00000e04
     53c:	40018000 	.word	0x40018000

00000540 <TimerConfig>:
     540:	b580      	push	{r7, lr}
     542:	af00      	add	r7, sp, #0
     544:	4b17      	ldr	r3, [pc, #92]	; (5a4 <TimerConfig+0x64>)
     546:	4a17      	ldr	r2, [pc, #92]	; (5a4 <TimerConfig+0x64>)
     548:	69d2      	ldr	r2, [r2, #28]
     54a:	2180      	movs	r1, #128	; 0x80
     54c:	0309      	lsls	r1, r1, #12
     54e:	430a      	orrs	r2, r1
     550:	61da      	str	r2, [r3, #28]
     552:	4b14      	ldr	r3, [pc, #80]	; (5a4 <TimerConfig+0x64>)
     554:	4a13      	ldr	r2, [pc, #76]	; (5a4 <TimerConfig+0x64>)
     556:	6a92      	ldr	r2, [r2, #40]	; 0x28
     558:	2180      	movs	r1, #128	; 0x80
     55a:	04c9      	lsls	r1, r1, #19
     55c:	430a      	orrs	r2, r1
     55e:	629a      	str	r2, [r3, #40]	; 0x28
     560:	4b10      	ldr	r3, [pc, #64]	; (5a4 <TimerConfig+0x64>)
     562:	4a10      	ldr	r2, [pc, #64]	; (5a4 <TimerConfig+0x64>)
     564:	6a92      	ldr	r2, [r2, #40]	; 0x28
     566:	4910      	ldr	r1, [pc, #64]	; (5a8 <TimerConfig+0x68>)
     568:	400a      	ands	r2, r1
     56a:	629a      	str	r2, [r3, #40]	; 0x28
     56c:	4b0f      	ldr	r3, [pc, #60]	; (5ac <TimerConfig+0x6c>)
     56e:	2200      	movs	r2, #0
     570:	601a      	str	r2, [r3, #0]
     572:	4b0e      	ldr	r3, [pc, #56]	; (5ac <TimerConfig+0x6c>)
     574:	2277      	movs	r2, #119	; 0x77
     576:	605a      	str	r2, [r3, #4]
     578:	4b0c      	ldr	r3, [pc, #48]	; (5ac <TimerConfig+0x6c>)
     57a:	4a0d      	ldr	r2, [pc, #52]	; (5b0 <TimerConfig+0x70>)
     57c:	609a      	str	r2, [r3, #8]
     57e:	4b0b      	ldr	r3, [pc, #44]	; (5ac <TimerConfig+0x6c>)
     580:	22fa      	movs	r2, #250	; 0xfa
     582:	00d2      	lsls	r2, r2, #3
     584:	611a      	str	r2, [r3, #16]
     586:	4b09      	ldr	r3, [pc, #36]	; (5ac <TimerConfig+0x6c>)
     588:	4a08      	ldr	r2, [pc, #32]	; (5ac <TimerConfig+0x6c>)
     58a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     58c:	2102      	movs	r1, #2
     58e:	430a      	orrs	r2, r1
     590:	659a      	str	r2, [r3, #88]	; 0x58
     592:	4b06      	ldr	r3, [pc, #24]	; (5ac <TimerConfig+0x6c>)
     594:	2201      	movs	r2, #1
     596:	60da      	str	r2, [r3, #12]
     598:	200d      	movs	r0, #13
     59a:	f7ff fd91 	bl	c0 <NVIC_EnableIRQ>
     59e:	46c0      	nop			; (mov r8, r8)
     5a0:	46bd      	mov	sp, r7
     5a2:	bd80      	pop	{r7, pc}
     5a4:	40020000 	.word	0x40020000
     5a8:	ff00ffff 	.word	0xff00ffff
     5ac:	40098000 	.word	0x40098000
     5b0:	000009c3 	.word	0x000009c3

000005b4 <mil_std_1533_init_bc>:
     5b4:	b580      	push	{r7, lr}
     5b6:	b082      	sub	sp, #8
     5b8:	af00      	add	r7, sp, #0
     5ba:	4b1f      	ldr	r3, [pc, #124]	; (638 <mil_std_1533_init_bc+0x84>)
     5bc:	603b      	str	r3, [r7, #0]
     5be:	4b1f      	ldr	r3, [pc, #124]	; (63c <mil_std_1533_init_bc+0x88>)
     5c0:	4a1e      	ldr	r2, [pc, #120]	; (63c <mil_std_1533_init_bc+0x88>)
     5c2:	69d2      	ldr	r2, [r2, #28]
     5c4:	2180      	movs	r1, #128	; 0x80
     5c6:	0089      	lsls	r1, r1, #2
     5c8:	430a      	orrs	r2, r1
     5ca:	61da      	str	r2, [r3, #28]
     5cc:	4b1b      	ldr	r3, [pc, #108]	; (63c <mil_std_1533_init_bc+0x88>)
     5ce:	4a1b      	ldr	r2, [pc, #108]	; (63c <mil_std_1533_init_bc+0x88>)
     5d0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5d2:	2180      	movs	r1, #128	; 0x80
     5d4:	0489      	lsls	r1, r1, #18
     5d6:	430a      	orrs	r2, r1
     5d8:	635a      	str	r2, [r3, #52]	; 0x34
     5da:	4a19      	ldr	r2, [pc, #100]	; (640 <mil_std_1533_init_bc+0x8c>)
     5dc:	2380      	movs	r3, #128	; 0x80
     5de:	015b      	lsls	r3, r3, #5
     5e0:	2101      	movs	r1, #1
     5e2:	50d1      	str	r1, [r2, r3]
     5e4:	4a16      	ldr	r2, [pc, #88]	; (640 <mil_std_1533_init_bc+0x8c>)
     5e6:	2380      	movs	r3, #128	; 0x80
     5e8:	015b      	lsls	r3, r3, #5
     5ea:	4916      	ldr	r1, [pc, #88]	; (644 <mil_std_1533_init_bc+0x90>)
     5ec:	50d1      	str	r1, [r2, r3]
     5ee:	4914      	ldr	r1, [pc, #80]	; (640 <mil_std_1533_init_bc+0x8c>)
     5f0:	4a13      	ldr	r2, [pc, #76]	; (640 <mil_std_1533_init_bc+0x8c>)
     5f2:	2381      	movs	r3, #129	; 0x81
     5f4:	015b      	lsls	r3, r3, #5
     5f6:	58d3      	ldr	r3, [r2, r3]
     5f8:	2204      	movs	r2, #4
     5fa:	431a      	orrs	r2, r3
     5fc:	2381      	movs	r3, #129	; 0x81
     5fe:	015b      	lsls	r3, r3, #5
     600:	50ca      	str	r2, [r1, r3]
     602:	2001      	movs	r0, #1
     604:	f7ff fd5c 	bl	c0 <NVIC_EnableIRQ>
     608:	4a0d      	ldr	r2, [pc, #52]	; (640 <mil_std_1533_init_bc+0x8c>)
     60a:	4b0f      	ldr	r3, [pc, #60]	; (648 <mil_std_1533_init_bc+0x94>)
     60c:	2100      	movs	r1, #0
     60e:	50d1      	str	r1, [r2, r3]
     610:	2300      	movs	r3, #0
     612:	607b      	str	r3, [r7, #4]
     614:	e008      	b.n	628 <mil_std_1533_init_bc+0x74>
     616:	683b      	ldr	r3, [r7, #0]
     618:	1d1a      	adds	r2, r3, #4
     61a:	603a      	str	r2, [r7, #0]
     61c:	687a      	ldr	r2, [r7, #4]
     61e:	b292      	uxth	r2, r2
     620:	601a      	str	r2, [r3, #0]
     622:	687b      	ldr	r3, [r7, #4]
     624:	3301      	adds	r3, #1
     626:	607b      	str	r3, [r7, #4]
     628:	687b      	ldr	r3, [r7, #4]
     62a:	2b1f      	cmp	r3, #31
     62c:	ddf3      	ble.n	616 <mil_std_1533_init_bc+0x62>
     62e:	46c0      	nop			; (mov r8, r8)
     630:	46bd      	mov	sp, r7
     632:	b002      	add	sp, #8
     634:	bd80      	pop	{r7, pc}
     636:	46c0      	nop			; (mov r8, r8)
     638:	40048080 	.word	0x40048080
     63c:	40020000 	.word	0x40020000
     640:	40048000 	.word	0x40048000
     644:	0003c014 	.word	0x0003c014
     648:	0000100c 	.word	0x0000100c

0000064c <SystemInit>:
     64c:	b580      	push	{r7, lr}
     64e:	af00      	add	r7, sp, #0
     650:	f7ff ff3c 	bl	4cc <ClkConfig>
     654:	f7ff fe74 	bl	340 <PortConfig>
     658:	f7ff ff72 	bl	540 <TimerConfig>
     65c:	f000 f8dc 	bl	818 <uart_init>
     660:	f7ff ffa8 	bl	5b4 <mil_std_1533_init_bc>
     664:	46c0      	nop			; (mov r8, r8)
     666:	46bd      	mov	sp, r7
     668:	bd80      	pop	{r7, pc}
     66a:	46c0      	nop			; (mov r8, r8)

0000066c <SysTick_Handler>:
     66c:	b580      	push	{r7, lr}
     66e:	af00      	add	r7, sp, #0
     670:	4b03      	ldr	r3, [pc, #12]	; (680 <SysTick_Handler+0x14>)
     672:	681b      	ldr	r3, [r3, #0]
     674:	1c5a      	adds	r2, r3, #1
     676:	4b02      	ldr	r3, [pc, #8]	; (680 <SysTick_Handler+0x14>)
     678:	601a      	str	r2, [r3, #0]
     67a:	46c0      	nop			; (mov r8, r8)
     67c:	46bd      	mov	sp, r7
     67e:	bd80      	pop	{r7, pc}
     680:	20000048 	.word	0x20000048

00000684 <TIMER4_Handler>:
     684:	b580      	push	{r7, lr}
     686:	af00      	add	r7, sp, #0
     688:	4b24      	ldr	r3, [pc, #144]	; (71c <TIMER4_Handler+0x98>)
     68a:	2200      	movs	r2, #0
     68c:	655a      	str	r2, [r3, #84]	; 0x54
     68e:	4b24      	ldr	r3, [pc, #144]	; (720 <TIMER4_Handler+0x9c>)
     690:	4a23      	ldr	r2, [pc, #140]	; (720 <TIMER4_Handler+0x9c>)
     692:	6812      	ldr	r2, [r2, #0]
     694:	2180      	movs	r1, #128	; 0x80
     696:	404a      	eors	r2, r1
     698:	601a      	str	r2, [r3, #0]
     69a:	4b22      	ldr	r3, [pc, #136]	; (724 <TIMER4_Handler+0xa0>)
     69c:	681b      	ldr	r3, [r3, #0]
     69e:	2b01      	cmp	r3, #1
     6a0:	d01d      	beq.n	6de <TIMER4_Handler+0x5a>
     6a2:	2b02      	cmp	r3, #2
     6a4:	d000      	beq.n	6a8 <TIMER4_Handler+0x24>
     6a6:	e035      	b.n	714 <TIMER4_Handler+0x90>
     6a8:	4b1e      	ldr	r3, [pc, #120]	; (724 <TIMER4_Handler+0xa0>)
     6aa:	681b      	ldr	r3, [r3, #0]
     6ac:	1e5a      	subs	r2, r3, #1
     6ae:	4b1d      	ldr	r3, [pc, #116]	; (724 <TIMER4_Handler+0xa0>)
     6b0:	601a      	str	r2, [r3, #0]
     6b2:	491d      	ldr	r1, [pc, #116]	; (728 <TIMER4_Handler+0xa4>)
     6b4:	4a1c      	ldr	r2, [pc, #112]	; (728 <TIMER4_Handler+0xa4>)
     6b6:	4b1d      	ldr	r3, [pc, #116]	; (72c <TIMER4_Handler+0xa8>)
     6b8:	58d3      	ldr	r3, [r2, r3]
     6ba:	4a1d      	ldr	r2, [pc, #116]	; (730 <TIMER4_Handler+0xac>)
     6bc:	4313      	orrs	r3, r2
     6be:	4a1b      	ldr	r2, [pc, #108]	; (72c <TIMER4_Handler+0xa8>)
     6c0:	508b      	str	r3, [r1, r2]
     6c2:	4919      	ldr	r1, [pc, #100]	; (728 <TIMER4_Handler+0xa4>)
     6c4:	4a18      	ldr	r2, [pc, #96]	; (728 <TIMER4_Handler+0xa4>)
     6c6:	2380      	movs	r3, #128	; 0x80
     6c8:	015b      	lsls	r3, r3, #5
     6ca:	58d3      	ldr	r3, [r2, r3]
     6cc:	2202      	movs	r2, #2
     6ce:	431a      	orrs	r2, r3
     6d0:	2380      	movs	r3, #128	; 0x80
     6d2:	015b      	lsls	r3, r3, #5
     6d4:	50ca      	str	r2, [r1, r3]
     6d6:	4b17      	ldr	r3, [pc, #92]	; (734 <TIMER4_Handler+0xb0>)
     6d8:	4a17      	ldr	r2, [pc, #92]	; (738 <TIMER4_Handler+0xb4>)
     6da:	601a      	str	r2, [r3, #0]
     6dc:	e01a      	b.n	714 <TIMER4_Handler+0x90>
     6de:	4b11      	ldr	r3, [pc, #68]	; (724 <TIMER4_Handler+0xa0>)
     6e0:	681b      	ldr	r3, [r3, #0]
     6e2:	1e5a      	subs	r2, r3, #1
     6e4:	4b0f      	ldr	r3, [pc, #60]	; (724 <TIMER4_Handler+0xa0>)
     6e6:	601a      	str	r2, [r3, #0]
     6e8:	490f      	ldr	r1, [pc, #60]	; (728 <TIMER4_Handler+0xa4>)
     6ea:	4a0f      	ldr	r2, [pc, #60]	; (728 <TIMER4_Handler+0xa4>)
     6ec:	4b0f      	ldr	r3, [pc, #60]	; (72c <TIMER4_Handler+0xa8>)
     6ee:	58d3      	ldr	r3, [r2, r3]
     6f0:	4a12      	ldr	r2, [pc, #72]	; (73c <TIMER4_Handler+0xb8>)
     6f2:	4313      	orrs	r3, r2
     6f4:	4a0d      	ldr	r2, [pc, #52]	; (72c <TIMER4_Handler+0xa8>)
     6f6:	508b      	str	r3, [r1, r2]
     6f8:	490b      	ldr	r1, [pc, #44]	; (728 <TIMER4_Handler+0xa4>)
     6fa:	4a0b      	ldr	r2, [pc, #44]	; (728 <TIMER4_Handler+0xa4>)
     6fc:	2380      	movs	r3, #128	; 0x80
     6fe:	015b      	lsls	r3, r3, #5
     700:	58d3      	ldr	r3, [r2, r3]
     702:	2202      	movs	r2, #2
     704:	431a      	orrs	r2, r3
     706:	2380      	movs	r3, #128	; 0x80
     708:	015b      	lsls	r3, r3, #5
     70a:	50ca      	str	r2, [r1, r3]
     70c:	4b09      	ldr	r3, [pc, #36]	; (734 <TIMER4_Handler+0xb0>)
     70e:	4a0c      	ldr	r2, [pc, #48]	; (740 <TIMER4_Handler+0xbc>)
     710:	601a      	str	r2, [r3, #0]
     712:	46c0      	nop			; (mov r8, r8)
     714:	46c0      	nop			; (mov r8, r8)
     716:	46bd      	mov	sp, r7
     718:	bd80      	pop	{r7, pc}
     71a:	46c0      	nop			; (mov r8, r8)
     71c:	40098000 	.word	0x40098000
     720:	400c0000 	.word	0x400c0000
     724:	2000004c 	.word	0x2000004c
     728:	40048000 	.word	0x40048000
     72c:	0000100c 	.word	0x0000100c
     730:	00004025 	.word	0x00004025
     734:	20000004 	.word	0x20000004
     738:	000000f9 	.word	0x000000f9
     73c:	00004420 	.word	0x00004420
     740:	00000105 	.word	0x00000105

00000744 <MIL_STD_1553B1_Handler>:
     744:	b580      	push	{r7, lr}
     746:	af00      	add	r7, sp, #0
     748:	4b02      	ldr	r3, [pc, #8]	; (754 <MIL_STD_1553B1_Handler+0x10>)
     74a:	681b      	ldr	r3, [r3, #0]
     74c:	4798      	blx	r3
     74e:	46c0      	nop			; (mov r8, r8)
     750:	46bd      	mov	sp, r7
     752:	bd80      	pop	{r7, pc}
     754:	20000004 	.word	0x20000004

00000758 <handler_reset>:
     758:	b580      	push	{r7, lr}
     75a:	b082      	sub	sp, #8
     75c:	af00      	add	r7, sp, #0
     75e:	4b11      	ldr	r3, [pc, #68]	; (7a4 <handler_reset+0x4c>)
     760:	607b      	str	r3, [r7, #4]
     762:	4b11      	ldr	r3, [pc, #68]	; (7a8 <handler_reset+0x50>)
     764:	603b      	str	r3, [r7, #0]
     766:	e007      	b.n	778 <handler_reset+0x20>
     768:	683b      	ldr	r3, [r7, #0]
     76a:	1d1a      	adds	r2, r3, #4
     76c:	603a      	str	r2, [r7, #0]
     76e:	687a      	ldr	r2, [r7, #4]
     770:	1d11      	adds	r1, r2, #4
     772:	6079      	str	r1, [r7, #4]
     774:	6812      	ldr	r2, [r2, #0]
     776:	601a      	str	r2, [r3, #0]
     778:	683a      	ldr	r2, [r7, #0]
     77a:	4b0c      	ldr	r3, [pc, #48]	; (7ac <handler_reset+0x54>)
     77c:	429a      	cmp	r2, r3
     77e:	d3f3      	bcc.n	768 <handler_reset+0x10>
     780:	4b0b      	ldr	r3, [pc, #44]	; (7b0 <handler_reset+0x58>)
     782:	603b      	str	r3, [r7, #0]
     784:	e004      	b.n	790 <handler_reset+0x38>
     786:	683b      	ldr	r3, [r7, #0]
     788:	1d1a      	adds	r2, r3, #4
     78a:	603a      	str	r2, [r7, #0]
     78c:	2200      	movs	r2, #0
     78e:	601a      	str	r2, [r3, #0]
     790:	683a      	ldr	r2, [r7, #0]
     792:	4b08      	ldr	r3, [pc, #32]	; (7b4 <handler_reset+0x5c>)
     794:	429a      	cmp	r2, r3
     796:	d3f6      	bcc.n	786 <handler_reset+0x2e>
     798:	f7ff fcfa 	bl	190 <main>
     79c:	46c0      	nop			; (mov r8, r8)
     79e:	46bd      	mov	sp, r7
     7a0:	b002      	add	sp, #8
     7a2:	bd80      	pop	{r7, pc}
     7a4:	00001438 	.word	0x00001438
     7a8:	20000000 	.word	0x20000000
     7ac:	20000008 	.word	0x20000008
     7b0:	20000008 	.word	0x20000008
     7b4:	20004070 	.word	0x20004070

000007b8 <default_handler>:
     7b8:	b580      	push	{r7, lr}
     7ba:	af00      	add	r7, sp, #0
     7bc:	e7fe      	b.n	7bc <default_handler+0x4>
     7be:	46c0      	nop			; (mov r8, r8)

000007c0 <NVIC_EnableIRQ>:
     7c0:	b580      	push	{r7, lr}
     7c2:	b082      	sub	sp, #8
     7c4:	af00      	add	r7, sp, #0
     7c6:	0002      	movs	r2, r0
     7c8:	1dfb      	adds	r3, r7, #7
     7ca:	701a      	strb	r2, [r3, #0]
     7cc:	4909      	ldr	r1, [pc, #36]	; (7f4 <NVIC_EnableIRQ+0x34>)
     7ce:	1dfb      	adds	r3, r7, #7
     7d0:	781b      	ldrb	r3, [r3, #0]
     7d2:	b25b      	sxtb	r3, r3
     7d4:	095b      	lsrs	r3, r3, #5
     7d6:	1dfa      	adds	r2, r7, #7
     7d8:	7812      	ldrb	r2, [r2, #0]
     7da:	0010      	movs	r0, r2
     7dc:	221f      	movs	r2, #31
     7de:	4002      	ands	r2, r0
     7e0:	2001      	movs	r0, #1
     7e2:	4090      	lsls	r0, r2
     7e4:	0002      	movs	r2, r0
     7e6:	009b      	lsls	r3, r3, #2
     7e8:	505a      	str	r2, [r3, r1]
     7ea:	46c0      	nop			; (mov r8, r8)
     7ec:	46bd      	mov	sp, r7
     7ee:	b002      	add	sp, #8
     7f0:	bd80      	pop	{r7, pc}
     7f2:	46c0      	nop			; (mov r8, r8)
     7f4:	e000e100 	.word	0xe000e100

000007f8 <uart_bsz>:
     7f8:	b580      	push	{r7, lr}
     7fa:	af00      	add	r7, sp, #0
     7fc:	4b04      	ldr	r3, [pc, #16]	; (810 <uart_bsz+0x18>)
     7fe:	681a      	ldr	r2, [r3, #0]
     800:	4b04      	ldr	r3, [pc, #16]	; (814 <uart_bsz+0x1c>)
     802:	681b      	ldr	r3, [r3, #0]
     804:	1ad3      	subs	r3, r2, r3
     806:	04db      	lsls	r3, r3, #19
     808:	0cdb      	lsrs	r3, r3, #19
     80a:	0018      	movs	r0, r3
     80c:	46bd      	mov	sp, r7
     80e:	bd80      	pop	{r7, pc}
     810:	2000405c 	.word	0x2000405c
     814:	20004060 	.word	0x20004060

00000818 <uart_init>:
     818:	b580      	push	{r7, lr}
     81a:	af00      	add	r7, sp, #0
     81c:	4b1b      	ldr	r3, [pc, #108]	; (88c <uart_init+0x74>)
     81e:	4a1b      	ldr	r2, [pc, #108]	; (88c <uart_init+0x74>)
     820:	69d2      	ldr	r2, [r2, #28]
     822:	2180      	movs	r1, #128	; 0x80
     824:	430a      	orrs	r2, r1
     826:	61da      	str	r2, [r3, #28]
     828:	4b18      	ldr	r3, [pc, #96]	; (88c <uart_init+0x74>)
     82a:	4a18      	ldr	r2, [pc, #96]	; (88c <uart_init+0x74>)
     82c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     82e:	2180      	movs	r1, #128	; 0x80
     830:	0489      	lsls	r1, r1, #18
     832:	430a      	orrs	r2, r1
     834:	629a      	str	r2, [r3, #40]	; 0x28
     836:	4b16      	ldr	r3, [pc, #88]	; (890 <uart_init+0x78>)
     838:	220f      	movs	r2, #15
     83a:	625a      	str	r2, [r3, #36]	; 0x24
     83c:	4b14      	ldr	r3, [pc, #80]	; (890 <uart_init+0x78>)
     83e:	2200      	movs	r2, #0
     840:	629a      	str	r2, [r3, #40]	; 0x28
     842:	4b13      	ldr	r3, [pc, #76]	; (890 <uart_init+0x78>)
     844:	4a12      	ldr	r2, [pc, #72]	; (890 <uart_init+0x78>)
     846:	6b52      	ldr	r2, [r2, #52]	; 0x34
     848:	213f      	movs	r1, #63	; 0x3f
     84a:	438a      	bics	r2, r1
     84c:	635a      	str	r2, [r3, #52]	; 0x34
     84e:	4b10      	ldr	r3, [pc, #64]	; (890 <uart_init+0x78>)
     850:	4a0f      	ldr	r2, [pc, #60]	; (890 <uart_init+0x78>)
     852:	6b52      	ldr	r2, [r2, #52]	; 0x34
     854:	2124      	movs	r1, #36	; 0x24
     856:	430a      	orrs	r2, r1
     858:	635a      	str	r2, [r3, #52]	; 0x34
     85a:	4b0d      	ldr	r3, [pc, #52]	; (890 <uart_init+0x78>)
     85c:	4a0c      	ldr	r2, [pc, #48]	; (890 <uart_init+0x78>)
     85e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     860:	2160      	movs	r1, #96	; 0x60
     862:	430a      	orrs	r2, r1
     864:	62da      	str	r2, [r3, #44]	; 0x2c
     866:	4b0a      	ldr	r3, [pc, #40]	; (890 <uart_init+0x78>)
     868:	4a09      	ldr	r2, [pc, #36]	; (890 <uart_init+0x78>)
     86a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     86c:	4909      	ldr	r1, [pc, #36]	; (894 <uart_init+0x7c>)
     86e:	430a      	orrs	r2, r1
     870:	631a      	str	r2, [r3, #48]	; 0x30
     872:	4b07      	ldr	r3, [pc, #28]	; (890 <uart_init+0x78>)
     874:	4a06      	ldr	r2, [pc, #24]	; (890 <uart_init+0x78>)
     876:	6b92      	ldr	r2, [r2, #56]	; 0x38
     878:	2110      	movs	r1, #16
     87a:	430a      	orrs	r2, r1
     87c:	639a      	str	r2, [r3, #56]	; 0x38
     87e:	2007      	movs	r0, #7
     880:	f7ff ff9e 	bl	7c0 <NVIC_EnableIRQ>
     884:	46c0      	nop			; (mov r8, r8)
     886:	46bd      	mov	sp, r7
     888:	bd80      	pop	{r7, pc}
     88a:	46c0      	nop			; (mov r8, r8)
     88c:	40020000 	.word	0x40020000
     890:	40038000 	.word	0x40038000
     894:	00000301 	.word	0x00000301

00000898 <uart_putch>:
     898:	b580      	push	{r7, lr}
     89a:	b082      	sub	sp, #8
     89c:	af00      	add	r7, sp, #0
     89e:	0002      	movs	r2, r0
     8a0:	1dfb      	adds	r3, r7, #7
     8a2:	701a      	strb	r2, [r3, #0]
     8a4:	46c0      	nop			; (mov r8, r8)
     8a6:	4b06      	ldr	r3, [pc, #24]	; (8c0 <uart_putch+0x28>)
     8a8:	699b      	ldr	r3, [r3, #24]
     8aa:	2220      	movs	r2, #32
     8ac:	4013      	ands	r3, r2
     8ae:	d1fa      	bne.n	8a6 <uart_putch+0xe>
     8b0:	4b03      	ldr	r3, [pc, #12]	; (8c0 <uart_putch+0x28>)
     8b2:	1dfa      	adds	r2, r7, #7
     8b4:	7812      	ldrb	r2, [r2, #0]
     8b6:	601a      	str	r2, [r3, #0]
     8b8:	46c0      	nop			; (mov r8, r8)
     8ba:	46bd      	mov	sp, r7
     8bc:	b002      	add	sp, #8
     8be:	bd80      	pop	{r7, pc}
     8c0:	40038000 	.word	0x40038000

000008c4 <uart_read>:
     8c4:	b580      	push	{r7, lr}
     8c6:	b084      	sub	sp, #16
     8c8:	af00      	add	r7, sp, #0
     8ca:	6078      	str	r0, [r7, #4]
     8cc:	6039      	str	r1, [r7, #0]
     8ce:	4b18      	ldr	r3, [pc, #96]	; (930 <uart_read+0x6c>)
     8d0:	681a      	ldr	r2, [r3, #0]
     8d2:	4b18      	ldr	r3, [pc, #96]	; (934 <uart_read+0x70>)
     8d4:	681b      	ldr	r3, [r3, #0]
     8d6:	429a      	cmp	r2, r3
     8d8:	d101      	bne.n	8de <uart_read+0x1a>
     8da:	2300      	movs	r3, #0
     8dc:	e023      	b.n	926 <uart_read+0x62>
     8de:	2300      	movs	r3, #0
     8e0:	60fb      	str	r3, [r7, #12]
     8e2:	e01b      	b.n	91c <uart_read+0x58>
     8e4:	68fb      	ldr	r3, [r7, #12]
     8e6:	687a      	ldr	r2, [r7, #4]
     8e8:	18d2      	adds	r2, r2, r3
     8ea:	4b11      	ldr	r3, [pc, #68]	; (930 <uart_read+0x6c>)
     8ec:	681b      	ldr	r3, [r3, #0]
     8ee:	4912      	ldr	r1, [pc, #72]	; (938 <uart_read+0x74>)
     8f0:	5ccb      	ldrb	r3, [r1, r3]
     8f2:	7013      	strb	r3, [r2, #0]
     8f4:	4b0e      	ldr	r3, [pc, #56]	; (930 <uart_read+0x6c>)
     8f6:	681b      	ldr	r3, [r3, #0]
     8f8:	3301      	adds	r3, #1
     8fa:	04db      	lsls	r3, r3, #19
     8fc:	0cda      	lsrs	r2, r3, #19
     8fe:	4b0c      	ldr	r3, [pc, #48]	; (930 <uart_read+0x6c>)
     900:	601a      	str	r2, [r3, #0]
     902:	4b0b      	ldr	r3, [pc, #44]	; (930 <uart_read+0x6c>)
     904:	681a      	ldr	r2, [r3, #0]
     906:	4b0b      	ldr	r3, [pc, #44]	; (934 <uart_read+0x70>)
     908:	681b      	ldr	r3, [r3, #0]
     90a:	429a      	cmp	r2, r3
     90c:	d103      	bne.n	916 <uart_read+0x52>
     90e:	68fb      	ldr	r3, [r7, #12]
     910:	3301      	adds	r3, #1
     912:	60fb      	str	r3, [r7, #12]
     914:	e006      	b.n	924 <uart_read+0x60>
     916:	68fb      	ldr	r3, [r7, #12]
     918:	3301      	adds	r3, #1
     91a:	60fb      	str	r3, [r7, #12]
     91c:	68fa      	ldr	r2, [r7, #12]
     91e:	683b      	ldr	r3, [r7, #0]
     920:	429a      	cmp	r2, r3
     922:	dbdf      	blt.n	8e4 <uart_read+0x20>
     924:	68fb      	ldr	r3, [r7, #12]
     926:	0018      	movs	r0, r3
     928:	46bd      	mov	sp, r7
     92a:	b004      	add	sp, #16
     92c:	bd80      	pop	{r7, pc}
     92e:	46c0      	nop			; (mov r8, r8)
     930:	20004060 	.word	0x20004060
     934:	2000405c 	.word	0x2000405c
     938:	2000205c 	.word	0x2000205c

0000093c <uart_send>:
     93c:	b580      	push	{r7, lr}
     93e:	b084      	sub	sp, #16
     940:	af00      	add	r7, sp, #0
     942:	6078      	str	r0, [r7, #4]
     944:	6039      	str	r1, [r7, #0]
     946:	2300      	movs	r3, #0
     948:	60fb      	str	r3, [r7, #12]
     94a:	e01b      	b.n	984 <uart_send+0x48>
     94c:	4b1e      	ldr	r3, [pc, #120]	; (9c8 <uart_send+0x8c>)
     94e:	681b      	ldr	r3, [r3, #0]
     950:	68fa      	ldr	r2, [r7, #12]
     952:	6879      	ldr	r1, [r7, #4]
     954:	188a      	adds	r2, r1, r2
     956:	7811      	ldrb	r1, [r2, #0]
     958:	4a1c      	ldr	r2, [pc, #112]	; (9cc <uart_send+0x90>)
     95a:	54d1      	strb	r1, [r2, r3]
     95c:	4b1a      	ldr	r3, [pc, #104]	; (9c8 <uart_send+0x8c>)
     95e:	681b      	ldr	r3, [r3, #0]
     960:	3301      	adds	r3, #1
     962:	04db      	lsls	r3, r3, #19
     964:	0cda      	lsrs	r2, r3, #19
     966:	4b18      	ldr	r3, [pc, #96]	; (9c8 <uart_send+0x8c>)
     968:	601a      	str	r2, [r3, #0]
     96a:	4b17      	ldr	r3, [pc, #92]	; (9c8 <uart_send+0x8c>)
     96c:	681a      	ldr	r2, [r3, #0]
     96e:	4b18      	ldr	r3, [pc, #96]	; (9d0 <uart_send+0x94>)
     970:	681b      	ldr	r3, [r3, #0]
     972:	429a      	cmp	r2, r3
     974:	d103      	bne.n	97e <uart_send+0x42>
     976:	68fb      	ldr	r3, [r7, #12]
     978:	3301      	adds	r3, #1
     97a:	60fb      	str	r3, [r7, #12]
     97c:	e006      	b.n	98c <uart_send+0x50>
     97e:	68fb      	ldr	r3, [r7, #12]
     980:	3301      	adds	r3, #1
     982:	60fb      	str	r3, [r7, #12]
     984:	68fa      	ldr	r2, [r7, #12]
     986:	683b      	ldr	r3, [r7, #0]
     988:	429a      	cmp	r2, r3
     98a:	dbdf      	blt.n	94c <uart_send+0x10>
     98c:	4b11      	ldr	r3, [pc, #68]	; (9d4 <uart_send+0x98>)
     98e:	699b      	ldr	r3, [r3, #24]
     990:	2208      	movs	r2, #8
     992:	4013      	ands	r3, r2
     994:	d10c      	bne.n	9b0 <uart_send+0x74>
     996:	4a0f      	ldr	r2, [pc, #60]	; (9d4 <uart_send+0x98>)
     998:	4b0d      	ldr	r3, [pc, #52]	; (9d0 <uart_send+0x94>)
     99a:	681b      	ldr	r3, [r3, #0]
     99c:	490b      	ldr	r1, [pc, #44]	; (9cc <uart_send+0x90>)
     99e:	5ccb      	ldrb	r3, [r1, r3]
     9a0:	6013      	str	r3, [r2, #0]
     9a2:	4b0b      	ldr	r3, [pc, #44]	; (9d0 <uart_send+0x94>)
     9a4:	681b      	ldr	r3, [r3, #0]
     9a6:	3301      	adds	r3, #1
     9a8:	04db      	lsls	r3, r3, #19
     9aa:	0cda      	lsrs	r2, r3, #19
     9ac:	4b08      	ldr	r3, [pc, #32]	; (9d0 <uart_send+0x94>)
     9ae:	601a      	str	r2, [r3, #0]
     9b0:	4b08      	ldr	r3, [pc, #32]	; (9d4 <uart_send+0x98>)
     9b2:	4a08      	ldr	r2, [pc, #32]	; (9d4 <uart_send+0x98>)
     9b4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     9b6:	2120      	movs	r1, #32
     9b8:	430a      	orrs	r2, r1
     9ba:	639a      	str	r2, [r3, #56]	; 0x38
     9bc:	68fb      	ldr	r3, [r7, #12]
     9be:	0018      	movs	r0, r3
     9c0:	46bd      	mov	sp, r7
     9c2:	b004      	add	sp, #16
     9c4:	bd80      	pop	{r7, pc}
     9c6:	46c0      	nop			; (mov r8, r8)
     9c8:	20002058 	.word	0x20002058
     9cc:	20000054 	.word	0x20000054
     9d0:	20002054 	.word	0x20002054
     9d4:	40038000 	.word	0x40038000

000009d8 <UART2_Handler>:
     9d8:	b580      	push	{r7, lr}
     9da:	af00      	add	r7, sp, #0
     9dc:	4b1a      	ldr	r3, [pc, #104]	; (a48 <UART2_Handler+0x70>)
     9de:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     9e0:	2220      	movs	r2, #32
     9e2:	4013      	ands	r3, r2
     9e4:	d019      	beq.n	a1a <UART2_Handler+0x42>
     9e6:	4b19      	ldr	r3, [pc, #100]	; (a4c <UART2_Handler+0x74>)
     9e8:	681a      	ldr	r2, [r3, #0]
     9ea:	4b19      	ldr	r3, [pc, #100]	; (a50 <UART2_Handler+0x78>)
     9ec:	681b      	ldr	r3, [r3, #0]
     9ee:	429a      	cmp	r2, r3
     9f0:	d106      	bne.n	a00 <UART2_Handler+0x28>
     9f2:	4b15      	ldr	r3, [pc, #84]	; (a48 <UART2_Handler+0x70>)
     9f4:	4a14      	ldr	r2, [pc, #80]	; (a48 <UART2_Handler+0x70>)
     9f6:	6b92      	ldr	r2, [r2, #56]	; 0x38
     9f8:	2120      	movs	r1, #32
     9fa:	438a      	bics	r2, r1
     9fc:	639a      	str	r2, [r3, #56]	; 0x38
     9fe:	e00c      	b.n	a1a <UART2_Handler+0x42>
     a00:	4a11      	ldr	r2, [pc, #68]	; (a48 <UART2_Handler+0x70>)
     a02:	4b12      	ldr	r3, [pc, #72]	; (a4c <UART2_Handler+0x74>)
     a04:	681b      	ldr	r3, [r3, #0]
     a06:	4913      	ldr	r1, [pc, #76]	; (a54 <UART2_Handler+0x7c>)
     a08:	5ccb      	ldrb	r3, [r1, r3]
     a0a:	6013      	str	r3, [r2, #0]
     a0c:	4b0f      	ldr	r3, [pc, #60]	; (a4c <UART2_Handler+0x74>)
     a0e:	681b      	ldr	r3, [r3, #0]
     a10:	3301      	adds	r3, #1
     a12:	04db      	lsls	r3, r3, #19
     a14:	0cda      	lsrs	r2, r3, #19
     a16:	4b0d      	ldr	r3, [pc, #52]	; (a4c <UART2_Handler+0x74>)
     a18:	601a      	str	r2, [r3, #0]
     a1a:	4b0b      	ldr	r3, [pc, #44]	; (a48 <UART2_Handler+0x70>)
     a1c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a1e:	2210      	movs	r2, #16
     a20:	4013      	ands	r3, r2
     a22:	d00d      	beq.n	a40 <UART2_Handler+0x68>
     a24:	4b0c      	ldr	r3, [pc, #48]	; (a58 <UART2_Handler+0x80>)
     a26:	681a      	ldr	r2, [r3, #0]
     a28:	4b07      	ldr	r3, [pc, #28]	; (a48 <UART2_Handler+0x70>)
     a2a:	681b      	ldr	r3, [r3, #0]
     a2c:	b2d9      	uxtb	r1, r3
     a2e:	4b0b      	ldr	r3, [pc, #44]	; (a5c <UART2_Handler+0x84>)
     a30:	5499      	strb	r1, [r3, r2]
     a32:	4b09      	ldr	r3, [pc, #36]	; (a58 <UART2_Handler+0x80>)
     a34:	681b      	ldr	r3, [r3, #0]
     a36:	3301      	adds	r3, #1
     a38:	04db      	lsls	r3, r3, #19
     a3a:	0cda      	lsrs	r2, r3, #19
     a3c:	4b06      	ldr	r3, [pc, #24]	; (a58 <UART2_Handler+0x80>)
     a3e:	601a      	str	r2, [r3, #0]
     a40:	46c0      	nop			; (mov r8, r8)
     a42:	46bd      	mov	sp, r7
     a44:	bd80      	pop	{r7, pc}
     a46:	46c0      	nop			; (mov r8, r8)
     a48:	40038000 	.word	0x40038000
     a4c:	20002054 	.word	0x20002054
     a50:	20002058 	.word	0x20002058
     a54:	20000054 	.word	0x20000054
     a58:	2000405c 	.word	0x2000405c
     a5c:	2000205c 	.word	0x2000205c

00000a60 <xputc>:
     a60:	b580      	push	{r7, lr}
     a62:	b082      	sub	sp, #8
     a64:	af00      	add	r7, sp, #0
     a66:	0002      	movs	r2, r0
     a68:	1dfb      	adds	r3, r7, #7
     a6a:	701a      	strb	r2, [r3, #0]
     a6c:	1dfb      	adds	r3, r7, #7
     a6e:	781b      	ldrb	r3, [r3, #0]
     a70:	2b0a      	cmp	r3, #10
     a72:	d102      	bne.n	a7a <xputc+0x1a>
     a74:	200d      	movs	r0, #13
     a76:	f7ff fff3 	bl	a60 <xputc>
     a7a:	4b0d      	ldr	r3, [pc, #52]	; (ab0 <xputc+0x50>)
     a7c:	681b      	ldr	r3, [r3, #0]
     a7e:	2b00      	cmp	r3, #0
     a80:	d008      	beq.n	a94 <xputc+0x34>
     a82:	4b0b      	ldr	r3, [pc, #44]	; (ab0 <xputc+0x50>)
     a84:	681b      	ldr	r3, [r3, #0]
     a86:	1c59      	adds	r1, r3, #1
     a88:	4a09      	ldr	r2, [pc, #36]	; (ab0 <xputc+0x50>)
     a8a:	6011      	str	r1, [r2, #0]
     a8c:	1dfa      	adds	r2, r7, #7
     a8e:	7812      	ldrb	r2, [r2, #0]
     a90:	701a      	strb	r2, [r3, #0]
     a92:	e009      	b.n	aa8 <xputc+0x48>
     a94:	4b07      	ldr	r3, [pc, #28]	; (ab4 <xputc+0x54>)
     a96:	681b      	ldr	r3, [r3, #0]
     a98:	2b00      	cmp	r3, #0
     a9a:	d005      	beq.n	aa8 <xputc+0x48>
     a9c:	4b05      	ldr	r3, [pc, #20]	; (ab4 <xputc+0x54>)
     a9e:	681b      	ldr	r3, [r3, #0]
     aa0:	1dfa      	adds	r2, r7, #7
     aa2:	7812      	ldrb	r2, [r2, #0]
     aa4:	0010      	movs	r0, r2
     aa6:	4798      	blx	r3
     aa8:	46bd      	mov	sp, r7
     aaa:	b002      	add	sp, #8
     aac:	bd80      	pop	{r7, pc}
     aae:	46c0      	nop			; (mov r8, r8)
     ab0:	20004068 	.word	0x20004068
     ab4:	20004064 	.word	0x20004064

00000ab8 <xputs>:
     ab8:	b580      	push	{r7, lr}
     aba:	b082      	sub	sp, #8
     abc:	af00      	add	r7, sp, #0
     abe:	6078      	str	r0, [r7, #4]
     ac0:	e006      	b.n	ad0 <xputs+0x18>
     ac2:	687b      	ldr	r3, [r7, #4]
     ac4:	1c5a      	adds	r2, r3, #1
     ac6:	607a      	str	r2, [r7, #4]
     ac8:	781b      	ldrb	r3, [r3, #0]
     aca:	0018      	movs	r0, r3
     acc:	f7ff ffc8 	bl	a60 <xputc>
     ad0:	687b      	ldr	r3, [r7, #4]
     ad2:	781b      	ldrb	r3, [r3, #0]
     ad4:	2b00      	cmp	r3, #0
     ad6:	d1f4      	bne.n	ac2 <xputs+0xa>
     ad8:	46c0      	nop			; (mov r8, r8)
     ada:	46bd      	mov	sp, r7
     adc:	b002      	add	sp, #8
     ade:	bd80      	pop	{r7, pc}

00000ae0 <xfputs>:
     ae0:	b580      	push	{r7, lr}
     ae2:	b084      	sub	sp, #16
     ae4:	af00      	add	r7, sp, #0
     ae6:	6078      	str	r0, [r7, #4]
     ae8:	6039      	str	r1, [r7, #0]
     aea:	4b0c      	ldr	r3, [pc, #48]	; (b1c <xfputs+0x3c>)
     aec:	681b      	ldr	r3, [r3, #0]
     aee:	60fb      	str	r3, [r7, #12]
     af0:	4b0a      	ldr	r3, [pc, #40]	; (b1c <xfputs+0x3c>)
     af2:	687a      	ldr	r2, [r7, #4]
     af4:	601a      	str	r2, [r3, #0]
     af6:	e006      	b.n	b06 <xfputs+0x26>
     af8:	683b      	ldr	r3, [r7, #0]
     afa:	1c5a      	adds	r2, r3, #1
     afc:	603a      	str	r2, [r7, #0]
     afe:	781b      	ldrb	r3, [r3, #0]
     b00:	0018      	movs	r0, r3
     b02:	f7ff ffad 	bl	a60 <xputc>
     b06:	683b      	ldr	r3, [r7, #0]
     b08:	781b      	ldrb	r3, [r3, #0]
     b0a:	2b00      	cmp	r3, #0
     b0c:	d1f4      	bne.n	af8 <xfputs+0x18>
     b0e:	4b03      	ldr	r3, [pc, #12]	; (b1c <xfputs+0x3c>)
     b10:	68fa      	ldr	r2, [r7, #12]
     b12:	601a      	str	r2, [r3, #0]
     b14:	46c0      	nop			; (mov r8, r8)
     b16:	46bd      	mov	sp, r7
     b18:	b004      	add	sp, #16
     b1a:	bd80      	pop	{r7, pc}
     b1c:	20004064 	.word	0x20004064

00000b20 <xvprintf>:
     b20:	b580      	push	{r7, lr}
     b22:	b08e      	sub	sp, #56	; 0x38
     b24:	af00      	add	r7, sp, #0
     b26:	6078      	str	r0, [r7, #4]
     b28:	6039      	str	r1, [r7, #0]
     b2a:	687b      	ldr	r3, [r7, #4]
     b2c:	1c5a      	adds	r2, r3, #1
     b2e:	607a      	str	r2, [r7, #4]
     b30:	221f      	movs	r2, #31
     b32:	18ba      	adds	r2, r7, r2
     b34:	781b      	ldrb	r3, [r3, #0]
     b36:	7013      	strb	r3, [r2, #0]
     b38:	231f      	movs	r3, #31
     b3a:	18fb      	adds	r3, r7, r3
     b3c:	781b      	ldrb	r3, [r3, #0]
     b3e:	2b00      	cmp	r3, #0
     b40:	d100      	bne.n	b44 <xvprintf+0x24>
     b42:	e172      	b.n	e2a <xvprintf+0x30a>
     b44:	231f      	movs	r3, #31
     b46:	18fb      	adds	r3, r7, r3
     b48:	781b      	ldrb	r3, [r3, #0]
     b4a:	2b25      	cmp	r3, #37	; 0x25
     b4c:	d006      	beq.n	b5c <xvprintf+0x3c>
     b4e:	231f      	movs	r3, #31
     b50:	18fb      	adds	r3, r7, r3
     b52:	781b      	ldrb	r3, [r3, #0]
     b54:	0018      	movs	r0, r3
     b56:	f7ff ff83 	bl	a60 <xputc>
     b5a:	e165      	b.n	e28 <xvprintf+0x308>
     b5c:	2300      	movs	r3, #0
     b5e:	627b      	str	r3, [r7, #36]	; 0x24
     b60:	687b      	ldr	r3, [r7, #4]
     b62:	1c5a      	adds	r2, r3, #1
     b64:	607a      	str	r2, [r7, #4]
     b66:	221f      	movs	r2, #31
     b68:	18ba      	adds	r2, r7, r2
     b6a:	781b      	ldrb	r3, [r3, #0]
     b6c:	7013      	strb	r3, [r2, #0]
     b6e:	231f      	movs	r3, #31
     b70:	18fb      	adds	r3, r7, r3
     b72:	781b      	ldrb	r3, [r3, #0]
     b74:	2b30      	cmp	r3, #48	; 0x30
     b76:	d109      	bne.n	b8c <xvprintf+0x6c>
     b78:	2301      	movs	r3, #1
     b7a:	627b      	str	r3, [r7, #36]	; 0x24
     b7c:	687b      	ldr	r3, [r7, #4]
     b7e:	1c5a      	adds	r2, r3, #1
     b80:	607a      	str	r2, [r7, #4]
     b82:	221f      	movs	r2, #31
     b84:	18ba      	adds	r2, r7, r2
     b86:	781b      	ldrb	r3, [r3, #0]
     b88:	7013      	strb	r3, [r2, #0]
     b8a:	e00d      	b.n	ba8 <xvprintf+0x88>
     b8c:	231f      	movs	r3, #31
     b8e:	18fb      	adds	r3, r7, r3
     b90:	781b      	ldrb	r3, [r3, #0]
     b92:	2b2d      	cmp	r3, #45	; 0x2d
     b94:	d108      	bne.n	ba8 <xvprintf+0x88>
     b96:	2302      	movs	r3, #2
     b98:	627b      	str	r3, [r7, #36]	; 0x24
     b9a:	687b      	ldr	r3, [r7, #4]
     b9c:	1c5a      	adds	r2, r3, #1
     b9e:	607a      	str	r2, [r7, #4]
     ba0:	221f      	movs	r2, #31
     ba2:	18ba      	adds	r2, r7, r2
     ba4:	781b      	ldrb	r3, [r3, #0]
     ba6:	7013      	strb	r3, [r2, #0]
     ba8:	2300      	movs	r3, #0
     baa:	62bb      	str	r3, [r7, #40]	; 0x28
     bac:	e012      	b.n	bd4 <xvprintf+0xb4>
     bae:	6aba      	ldr	r2, [r7, #40]	; 0x28
     bb0:	0013      	movs	r3, r2
     bb2:	009b      	lsls	r3, r3, #2
     bb4:	189b      	adds	r3, r3, r2
     bb6:	005b      	lsls	r3, r3, #1
     bb8:	001a      	movs	r2, r3
     bba:	231f      	movs	r3, #31
     bbc:	18fb      	adds	r3, r7, r3
     bbe:	781b      	ldrb	r3, [r3, #0]
     bc0:	18d3      	adds	r3, r2, r3
     bc2:	3b30      	subs	r3, #48	; 0x30
     bc4:	62bb      	str	r3, [r7, #40]	; 0x28
     bc6:	687b      	ldr	r3, [r7, #4]
     bc8:	1c5a      	adds	r2, r3, #1
     bca:	607a      	str	r2, [r7, #4]
     bcc:	221f      	movs	r2, #31
     bce:	18ba      	adds	r2, r7, r2
     bd0:	781b      	ldrb	r3, [r3, #0]
     bd2:	7013      	strb	r3, [r2, #0]
     bd4:	231f      	movs	r3, #31
     bd6:	18fb      	adds	r3, r7, r3
     bd8:	781b      	ldrb	r3, [r3, #0]
     bda:	2b2f      	cmp	r3, #47	; 0x2f
     bdc:	d904      	bls.n	be8 <xvprintf+0xc8>
     bde:	231f      	movs	r3, #31
     be0:	18fb      	adds	r3, r7, r3
     be2:	781b      	ldrb	r3, [r3, #0]
     be4:	2b39      	cmp	r3, #57	; 0x39
     be6:	d9e2      	bls.n	bae <xvprintf+0x8e>
     be8:	231f      	movs	r3, #31
     bea:	18fb      	adds	r3, r7, r3
     bec:	781b      	ldrb	r3, [r3, #0]
     bee:	2b6c      	cmp	r3, #108	; 0x6c
     bf0:	d004      	beq.n	bfc <xvprintf+0xdc>
     bf2:	231f      	movs	r3, #31
     bf4:	18fb      	adds	r3, r7, r3
     bf6:	781b      	ldrb	r3, [r3, #0]
     bf8:	2b4c      	cmp	r3, #76	; 0x4c
     bfa:	d10a      	bne.n	c12 <xvprintf+0xf2>
     bfc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     bfe:	2204      	movs	r2, #4
     c00:	4313      	orrs	r3, r2
     c02:	627b      	str	r3, [r7, #36]	; 0x24
     c04:	687b      	ldr	r3, [r7, #4]
     c06:	1c5a      	adds	r2, r3, #1
     c08:	607a      	str	r2, [r7, #4]
     c0a:	221f      	movs	r2, #31
     c0c:	18ba      	adds	r2, r7, r2
     c0e:	781b      	ldrb	r3, [r3, #0]
     c10:	7013      	strb	r3, [r2, #0]
     c12:	231f      	movs	r3, #31
     c14:	18fb      	adds	r3, r7, r3
     c16:	781b      	ldrb	r3, [r3, #0]
     c18:	2b00      	cmp	r3, #0
     c1a:	d100      	bne.n	c1e <xvprintf+0xfe>
     c1c:	e107      	b.n	e2e <xvprintf+0x30e>
     c1e:	231e      	movs	r3, #30
     c20:	18fb      	adds	r3, r7, r3
     c22:	221f      	movs	r2, #31
     c24:	18ba      	adds	r2, r7, r2
     c26:	7812      	ldrb	r2, [r2, #0]
     c28:	701a      	strb	r2, [r3, #0]
     c2a:	231e      	movs	r3, #30
     c2c:	18fb      	adds	r3, r7, r3
     c2e:	781b      	ldrb	r3, [r3, #0]
     c30:	2b60      	cmp	r3, #96	; 0x60
     c32:	d906      	bls.n	c42 <xvprintf+0x122>
     c34:	231e      	movs	r3, #30
     c36:	18fb      	adds	r3, r7, r3
     c38:	221e      	movs	r2, #30
     c3a:	18ba      	adds	r2, r7, r2
     c3c:	7812      	ldrb	r2, [r2, #0]
     c3e:	3a20      	subs	r2, #32
     c40:	701a      	strb	r2, [r3, #0]
     c42:	231e      	movs	r3, #30
     c44:	18fb      	adds	r3, r7, r3
     c46:	781b      	ldrb	r3, [r3, #0]
     c48:	3b42      	subs	r3, #66	; 0x42
     c4a:	2b16      	cmp	r3, #22
     c4c:	d847      	bhi.n	cde <xvprintf+0x1be>
     c4e:	009a      	lsls	r2, r3, #2
     c50:	4b79      	ldr	r3, [pc, #484]	; (e38 <xvprintf+0x318>)
     c52:	18d3      	adds	r3, r2, r3
     c54:	681b      	ldr	r3, [r3, #0]
     c56:	469f      	mov	pc, r3
     c58:	683b      	ldr	r3, [r7, #0]
     c5a:	1d1a      	adds	r2, r3, #4
     c5c:	603a      	str	r2, [r7, #0]
     c5e:	681b      	ldr	r3, [r3, #0]
     c60:	61bb      	str	r3, [r7, #24]
     c62:	2300      	movs	r3, #0
     c64:	62fb      	str	r3, [r7, #44]	; 0x2c
     c66:	e002      	b.n	c6e <xvprintf+0x14e>
     c68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     c6a:	3301      	adds	r3, #1
     c6c:	62fb      	str	r3, [r7, #44]	; 0x2c
     c6e:	69ba      	ldr	r2, [r7, #24]
     c70:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     c72:	18d3      	adds	r3, r2, r3
     c74:	781b      	ldrb	r3, [r3, #0]
     c76:	2b00      	cmp	r3, #0
     c78:	d1f6      	bne.n	c68 <xvprintf+0x148>
     c7a:	e002      	b.n	c82 <xvprintf+0x162>
     c7c:	2020      	movs	r0, #32
     c7e:	f7ff feef 	bl	a60 <xputc>
     c82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     c84:	2202      	movs	r2, #2
     c86:	4013      	ands	r3, r2
     c88:	d105      	bne.n	c96 <xvprintf+0x176>
     c8a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     c8c:	1c5a      	adds	r2, r3, #1
     c8e:	62fa      	str	r2, [r7, #44]	; 0x2c
     c90:	6aba      	ldr	r2, [r7, #40]	; 0x28
     c92:	4293      	cmp	r3, r2
     c94:	d3f2      	bcc.n	c7c <xvprintf+0x15c>
     c96:	69bb      	ldr	r3, [r7, #24]
     c98:	0018      	movs	r0, r3
     c9a:	f7ff ff0d 	bl	ab8 <xputs>
     c9e:	e002      	b.n	ca6 <xvprintf+0x186>
     ca0:	2020      	movs	r0, #32
     ca2:	f7ff fedd 	bl	a60 <xputc>
     ca6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ca8:	1c5a      	adds	r2, r3, #1
     caa:	62fa      	str	r2, [r7, #44]	; 0x2c
     cac:	6aba      	ldr	r2, [r7, #40]	; 0x28
     cae:	4293      	cmp	r3, r2
     cb0:	d3f6      	bcc.n	ca0 <xvprintf+0x180>
     cb2:	e0b9      	b.n	e28 <xvprintf+0x308>
     cb4:	683b      	ldr	r3, [r7, #0]
     cb6:	1d1a      	adds	r2, r3, #4
     cb8:	603a      	str	r2, [r7, #0]
     cba:	681b      	ldr	r3, [r3, #0]
     cbc:	b2db      	uxtb	r3, r3
     cbe:	0018      	movs	r0, r3
     cc0:	f7ff fece 	bl	a60 <xputc>
     cc4:	e0b0      	b.n	e28 <xvprintf+0x308>
     cc6:	2302      	movs	r3, #2
     cc8:	637b      	str	r3, [r7, #52]	; 0x34
     cca:	e00f      	b.n	cec <xvprintf+0x1cc>
     ccc:	2308      	movs	r3, #8
     cce:	637b      	str	r3, [r7, #52]	; 0x34
     cd0:	e00c      	b.n	cec <xvprintf+0x1cc>
     cd2:	230a      	movs	r3, #10
     cd4:	637b      	str	r3, [r7, #52]	; 0x34
     cd6:	e009      	b.n	cec <xvprintf+0x1cc>
     cd8:	2310      	movs	r3, #16
     cda:	637b      	str	r3, [r7, #52]	; 0x34
     cdc:	e006      	b.n	cec <xvprintf+0x1cc>
     cde:	231f      	movs	r3, #31
     ce0:	18fb      	adds	r3, r7, r3
     ce2:	781b      	ldrb	r3, [r3, #0]
     ce4:	0018      	movs	r0, r3
     ce6:	f7ff febb 	bl	a60 <xputc>
     cea:	e09d      	b.n	e28 <xvprintf+0x308>
     cec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     cee:	2204      	movs	r2, #4
     cf0:	4013      	ands	r3, r2
     cf2:	d004      	beq.n	cfe <xvprintf+0x1de>
     cf4:	683b      	ldr	r3, [r7, #0]
     cf6:	1d1a      	adds	r2, r3, #4
     cf8:	603a      	str	r2, [r7, #0]
     cfa:	681b      	ldr	r3, [r3, #0]
     cfc:	e00d      	b.n	d1a <xvprintf+0x1fa>
     cfe:	231e      	movs	r3, #30
     d00:	18fb      	adds	r3, r7, r3
     d02:	781b      	ldrb	r3, [r3, #0]
     d04:	2b44      	cmp	r3, #68	; 0x44
     d06:	d104      	bne.n	d12 <xvprintf+0x1f2>
     d08:	683b      	ldr	r3, [r7, #0]
     d0a:	1d1a      	adds	r2, r3, #4
     d0c:	603a      	str	r2, [r7, #0]
     d0e:	681b      	ldr	r3, [r3, #0]
     d10:	e003      	b.n	d1a <xvprintf+0x1fa>
     d12:	683b      	ldr	r3, [r7, #0]
     d14:	1d1a      	adds	r2, r3, #4
     d16:	603a      	str	r2, [r7, #0]
     d18:	681b      	ldr	r3, [r3, #0]
     d1a:	623b      	str	r3, [r7, #32]
     d1c:	231e      	movs	r3, #30
     d1e:	18fb      	adds	r3, r7, r3
     d20:	781b      	ldrb	r3, [r3, #0]
     d22:	2b44      	cmp	r3, #68	; 0x44
     d24:	d109      	bne.n	d3a <xvprintf+0x21a>
     d26:	6a3b      	ldr	r3, [r7, #32]
     d28:	2b00      	cmp	r3, #0
     d2a:	da06      	bge.n	d3a <xvprintf+0x21a>
     d2c:	6a3b      	ldr	r3, [r7, #32]
     d2e:	425b      	negs	r3, r3
     d30:	623b      	str	r3, [r7, #32]
     d32:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     d34:	2208      	movs	r2, #8
     d36:	4313      	orrs	r3, r2
     d38:	627b      	str	r3, [r7, #36]	; 0x24
     d3a:	2300      	movs	r3, #0
     d3c:	633b      	str	r3, [r7, #48]	; 0x30
     d3e:	6a3b      	ldr	r3, [r7, #32]
     d40:	6b79      	ldr	r1, [r7, #52]	; 0x34
     d42:	0018      	movs	r0, r3
     d44:	f000 fb34 	bl	13b0 <__aeabi_uidivmod>
     d48:	000b      	movs	r3, r1
     d4a:	001a      	movs	r2, r3
     d4c:	231e      	movs	r3, #30
     d4e:	18fb      	adds	r3, r7, r3
     d50:	701a      	strb	r2, [r3, #0]
     d52:	6b79      	ldr	r1, [r7, #52]	; 0x34
     d54:	6a38      	ldr	r0, [r7, #32]
     d56:	f000 faa5 	bl	12a4 <__aeabi_uidiv>
     d5a:	0003      	movs	r3, r0
     d5c:	623b      	str	r3, [r7, #32]
     d5e:	231e      	movs	r3, #30
     d60:	18fb      	adds	r3, r7, r3
     d62:	781b      	ldrb	r3, [r3, #0]
     d64:	2b09      	cmp	r3, #9
     d66:	d90e      	bls.n	d86 <xvprintf+0x266>
     d68:	231f      	movs	r3, #31
     d6a:	18fb      	adds	r3, r7, r3
     d6c:	781b      	ldrb	r3, [r3, #0]
     d6e:	2b78      	cmp	r3, #120	; 0x78
     d70:	d101      	bne.n	d76 <xvprintf+0x256>
     d72:	2327      	movs	r3, #39	; 0x27
     d74:	e000      	b.n	d78 <xvprintf+0x258>
     d76:	2307      	movs	r3, #7
     d78:	221e      	movs	r2, #30
     d7a:	18ba      	adds	r2, r7, r2
     d7c:	211e      	movs	r1, #30
     d7e:	1879      	adds	r1, r7, r1
     d80:	7809      	ldrb	r1, [r1, #0]
     d82:	185b      	adds	r3, r3, r1
     d84:	7013      	strb	r3, [r2, #0]
     d86:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     d88:	1c5a      	adds	r2, r3, #1
     d8a:	633a      	str	r2, [r7, #48]	; 0x30
     d8c:	221e      	movs	r2, #30
     d8e:	18ba      	adds	r2, r7, r2
     d90:	7812      	ldrb	r2, [r2, #0]
     d92:	3230      	adds	r2, #48	; 0x30
     d94:	b2d1      	uxtb	r1, r2
     d96:	2208      	movs	r2, #8
     d98:	18ba      	adds	r2, r7, r2
     d9a:	54d1      	strb	r1, [r2, r3]
     d9c:	6a3b      	ldr	r3, [r7, #32]
     d9e:	2b00      	cmp	r3, #0
     da0:	d002      	beq.n	da8 <xvprintf+0x288>
     da2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     da4:	2b0f      	cmp	r3, #15
     da6:	d9ca      	bls.n	d3e <xvprintf+0x21e>
     da8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     daa:	2208      	movs	r2, #8
     dac:	4013      	ands	r3, r2
     dae:	d006      	beq.n	dbe <xvprintf+0x29e>
     db0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     db2:	1c5a      	adds	r2, r3, #1
     db4:	633a      	str	r2, [r7, #48]	; 0x30
     db6:	2208      	movs	r2, #8
     db8:	18ba      	adds	r2, r7, r2
     dba:	212d      	movs	r1, #45	; 0x2d
     dbc:	54d1      	strb	r1, [r2, r3]
     dbe:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dc0:	62fb      	str	r3, [r7, #44]	; 0x2c
     dc2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     dc4:	2201      	movs	r2, #1
     dc6:	4013      	ands	r3, r2
     dc8:	d001      	beq.n	dce <xvprintf+0x2ae>
     dca:	2230      	movs	r2, #48	; 0x30
     dcc:	e000      	b.n	dd0 <xvprintf+0x2b0>
     dce:	2220      	movs	r2, #32
     dd0:	231e      	movs	r3, #30
     dd2:	18fb      	adds	r3, r7, r3
     dd4:	701a      	strb	r2, [r3, #0]
     dd6:	e005      	b.n	de4 <xvprintf+0x2c4>
     dd8:	231e      	movs	r3, #30
     dda:	18fb      	adds	r3, r7, r3
     ddc:	781b      	ldrb	r3, [r3, #0]
     dde:	0018      	movs	r0, r3
     de0:	f7ff fe3e 	bl	a60 <xputc>
     de4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     de6:	2202      	movs	r2, #2
     de8:	4013      	ands	r3, r2
     dea:	d105      	bne.n	df8 <xvprintf+0x2d8>
     dec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     dee:	1c5a      	adds	r2, r3, #1
     df0:	62fa      	str	r2, [r7, #44]	; 0x2c
     df2:	6aba      	ldr	r2, [r7, #40]	; 0x28
     df4:	4293      	cmp	r3, r2
     df6:	d3ef      	bcc.n	dd8 <xvprintf+0x2b8>
     df8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dfa:	3b01      	subs	r3, #1
     dfc:	633b      	str	r3, [r7, #48]	; 0x30
     dfe:	2308      	movs	r3, #8
     e00:	18fa      	adds	r2, r7, r3
     e02:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e04:	18d3      	adds	r3, r2, r3
     e06:	781b      	ldrb	r3, [r3, #0]
     e08:	0018      	movs	r0, r3
     e0a:	f7ff fe29 	bl	a60 <xputc>
     e0e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e10:	2b00      	cmp	r3, #0
     e12:	d1f1      	bne.n	df8 <xvprintf+0x2d8>
     e14:	e002      	b.n	e1c <xvprintf+0x2fc>
     e16:	2020      	movs	r0, #32
     e18:	f7ff fe22 	bl	a60 <xputc>
     e1c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e1e:	1c5a      	adds	r2, r3, #1
     e20:	62fa      	str	r2, [r7, #44]	; 0x2c
     e22:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e24:	4293      	cmp	r3, r2
     e26:	d3f6      	bcc.n	e16 <xvprintf+0x2f6>
     e28:	e67f      	b.n	b2a <xvprintf+0xa>
     e2a:	46c0      	nop			; (mov r8, r8)
     e2c:	e000      	b.n	e30 <xvprintf+0x310>
     e2e:	46c0      	nop			; (mov r8, r8)
     e30:	46c0      	nop			; (mov r8, r8)
     e32:	46bd      	mov	sp, r7
     e34:	b00e      	add	sp, #56	; 0x38
     e36:	bd80      	pop	{r7, pc}
     e38:	000013bc 	.word	0x000013bc

00000e3c <xprintf>:
     e3c:	b40f      	push	{r0, r1, r2, r3}
     e3e:	b580      	push	{r7, lr}
     e40:	b082      	sub	sp, #8
     e42:	af00      	add	r7, sp, #0
     e44:	2314      	movs	r3, #20
     e46:	18fb      	adds	r3, r7, r3
     e48:	607b      	str	r3, [r7, #4]
     e4a:	687a      	ldr	r2, [r7, #4]
     e4c:	693b      	ldr	r3, [r7, #16]
     e4e:	0011      	movs	r1, r2
     e50:	0018      	movs	r0, r3
     e52:	f7ff fe65 	bl	b20 <xvprintf>
     e56:	46c0      	nop			; (mov r8, r8)
     e58:	46bd      	mov	sp, r7
     e5a:	b002      	add	sp, #8
     e5c:	bc80      	pop	{r7}
     e5e:	bc08      	pop	{r3}
     e60:	b004      	add	sp, #16
     e62:	4718      	bx	r3

00000e64 <xsprintf>:
     e64:	b40e      	push	{r1, r2, r3}
     e66:	b580      	push	{r7, lr}
     e68:	b085      	sub	sp, #20
     e6a:	af00      	add	r7, sp, #0
     e6c:	6078      	str	r0, [r7, #4]
     e6e:	4b0d      	ldr	r3, [pc, #52]	; (ea4 <xsprintf+0x40>)
     e70:	687a      	ldr	r2, [r7, #4]
     e72:	601a      	str	r2, [r3, #0]
     e74:	2320      	movs	r3, #32
     e76:	18fb      	adds	r3, r7, r3
     e78:	60fb      	str	r3, [r7, #12]
     e7a:	68fa      	ldr	r2, [r7, #12]
     e7c:	69fb      	ldr	r3, [r7, #28]
     e7e:	0011      	movs	r1, r2
     e80:	0018      	movs	r0, r3
     e82:	f7ff fe4d 	bl	b20 <xvprintf>
     e86:	4b07      	ldr	r3, [pc, #28]	; (ea4 <xsprintf+0x40>)
     e88:	681b      	ldr	r3, [r3, #0]
     e8a:	2200      	movs	r2, #0
     e8c:	701a      	strb	r2, [r3, #0]
     e8e:	4b05      	ldr	r3, [pc, #20]	; (ea4 <xsprintf+0x40>)
     e90:	2200      	movs	r2, #0
     e92:	601a      	str	r2, [r3, #0]
     e94:	46c0      	nop			; (mov r8, r8)
     e96:	46bd      	mov	sp, r7
     e98:	b005      	add	sp, #20
     e9a:	bc80      	pop	{r7}
     e9c:	bc08      	pop	{r3}
     e9e:	b003      	add	sp, #12
     ea0:	4718      	bx	r3
     ea2:	46c0      	nop			; (mov r8, r8)
     ea4:	20004068 	.word	0x20004068

00000ea8 <xfprintf>:
     ea8:	b40e      	push	{r1, r2, r3}
     eaa:	b580      	push	{r7, lr}
     eac:	b085      	sub	sp, #20
     eae:	af00      	add	r7, sp, #0
     eb0:	6078      	str	r0, [r7, #4]
     eb2:	4b0c      	ldr	r3, [pc, #48]	; (ee4 <xfprintf+0x3c>)
     eb4:	681b      	ldr	r3, [r3, #0]
     eb6:	60fb      	str	r3, [r7, #12]
     eb8:	4b0a      	ldr	r3, [pc, #40]	; (ee4 <xfprintf+0x3c>)
     eba:	687a      	ldr	r2, [r7, #4]
     ebc:	601a      	str	r2, [r3, #0]
     ebe:	2320      	movs	r3, #32
     ec0:	18fb      	adds	r3, r7, r3
     ec2:	60bb      	str	r3, [r7, #8]
     ec4:	68ba      	ldr	r2, [r7, #8]
     ec6:	69fb      	ldr	r3, [r7, #28]
     ec8:	0011      	movs	r1, r2
     eca:	0018      	movs	r0, r3
     ecc:	f7ff fe28 	bl	b20 <xvprintf>
     ed0:	4b04      	ldr	r3, [pc, #16]	; (ee4 <xfprintf+0x3c>)
     ed2:	68fa      	ldr	r2, [r7, #12]
     ed4:	601a      	str	r2, [r3, #0]
     ed6:	46c0      	nop			; (mov r8, r8)
     ed8:	46bd      	mov	sp, r7
     eda:	b005      	add	sp, #20
     edc:	bc80      	pop	{r7}
     ede:	bc08      	pop	{r3}
     ee0:	b003      	add	sp, #12
     ee2:	4718      	bx	r3
     ee4:	20004064 	.word	0x20004064

00000ee8 <put_dump>:
     ee8:	b580      	push	{r7, lr}
     eea:	b088      	sub	sp, #32
     eec:	af00      	add	r7, sp, #0
     eee:	60f8      	str	r0, [r7, #12]
     ef0:	60b9      	str	r1, [r7, #8]
     ef2:	607a      	str	r2, [r7, #4]
     ef4:	603b      	str	r3, [r7, #0]
     ef6:	68ba      	ldr	r2, [r7, #8]
     ef8:	4b38      	ldr	r3, [pc, #224]	; (fdc <put_dump+0xf4>)
     efa:	0011      	movs	r1, r2
     efc:	0018      	movs	r0, r3
     efe:	f7ff ff9d 	bl	e3c <xprintf>
     f02:	683b      	ldr	r3, [r7, #0]
     f04:	2b02      	cmp	r3, #2
     f06:	d03c      	beq.n	f82 <put_dump+0x9a>
     f08:	2b04      	cmp	r3, #4
     f0a:	d04d      	beq.n	fa8 <put_dump+0xc0>
     f0c:	2b01      	cmp	r3, #1
     f0e:	d15d      	bne.n	fcc <put_dump+0xe4>
     f10:	68fb      	ldr	r3, [r7, #12]
     f12:	613b      	str	r3, [r7, #16]
     f14:	2300      	movs	r3, #0
     f16:	61fb      	str	r3, [r7, #28]
     f18:	e00c      	b.n	f34 <put_dump+0x4c>
     f1a:	69fb      	ldr	r3, [r7, #28]
     f1c:	693a      	ldr	r2, [r7, #16]
     f1e:	18d3      	adds	r3, r2, r3
     f20:	781b      	ldrb	r3, [r3, #0]
     f22:	001a      	movs	r2, r3
     f24:	4b2e      	ldr	r3, [pc, #184]	; (fe0 <put_dump+0xf8>)
     f26:	0011      	movs	r1, r2
     f28:	0018      	movs	r0, r3
     f2a:	f7ff ff87 	bl	e3c <xprintf>
     f2e:	69fb      	ldr	r3, [r7, #28]
     f30:	3301      	adds	r3, #1
     f32:	61fb      	str	r3, [r7, #28]
     f34:	69fa      	ldr	r2, [r7, #28]
     f36:	687b      	ldr	r3, [r7, #4]
     f38:	429a      	cmp	r2, r3
     f3a:	dbee      	blt.n	f1a <put_dump+0x32>
     f3c:	2020      	movs	r0, #32
     f3e:	f7ff fd8f 	bl	a60 <xputc>
     f42:	2300      	movs	r3, #0
     f44:	61fb      	str	r3, [r7, #28]
     f46:	e017      	b.n	f78 <put_dump+0x90>
     f48:	69fb      	ldr	r3, [r7, #28]
     f4a:	693a      	ldr	r2, [r7, #16]
     f4c:	18d3      	adds	r3, r2, r3
     f4e:	781b      	ldrb	r3, [r3, #0]
     f50:	2b1f      	cmp	r3, #31
     f52:	d90a      	bls.n	f6a <put_dump+0x82>
     f54:	69fb      	ldr	r3, [r7, #28]
     f56:	693a      	ldr	r2, [r7, #16]
     f58:	18d3      	adds	r3, r2, r3
     f5a:	781b      	ldrb	r3, [r3, #0]
     f5c:	2b7e      	cmp	r3, #126	; 0x7e
     f5e:	d804      	bhi.n	f6a <put_dump+0x82>
     f60:	69fb      	ldr	r3, [r7, #28]
     f62:	693a      	ldr	r2, [r7, #16]
     f64:	18d3      	adds	r3, r2, r3
     f66:	781b      	ldrb	r3, [r3, #0]
     f68:	e000      	b.n	f6c <put_dump+0x84>
     f6a:	232e      	movs	r3, #46	; 0x2e
     f6c:	0018      	movs	r0, r3
     f6e:	f7ff fd77 	bl	a60 <xputc>
     f72:	69fb      	ldr	r3, [r7, #28]
     f74:	3301      	adds	r3, #1
     f76:	61fb      	str	r3, [r7, #28]
     f78:	69fa      	ldr	r2, [r7, #28]
     f7a:	687b      	ldr	r3, [r7, #4]
     f7c:	429a      	cmp	r2, r3
     f7e:	dbe3      	blt.n	f48 <put_dump+0x60>
     f80:	e024      	b.n	fcc <put_dump+0xe4>
     f82:	68fb      	ldr	r3, [r7, #12]
     f84:	61bb      	str	r3, [r7, #24]
     f86:	69bb      	ldr	r3, [r7, #24]
     f88:	1c9a      	adds	r2, r3, #2
     f8a:	61ba      	str	r2, [r7, #24]
     f8c:	881b      	ldrh	r3, [r3, #0]
     f8e:	001a      	movs	r2, r3
     f90:	4b14      	ldr	r3, [pc, #80]	; (fe4 <put_dump+0xfc>)
     f92:	0011      	movs	r1, r2
     f94:	0018      	movs	r0, r3
     f96:	f7ff ff51 	bl	e3c <xprintf>
     f9a:	687b      	ldr	r3, [r7, #4]
     f9c:	3b01      	subs	r3, #1
     f9e:	607b      	str	r3, [r7, #4]
     fa0:	687b      	ldr	r3, [r7, #4]
     fa2:	2b00      	cmp	r3, #0
     fa4:	d1ef      	bne.n	f86 <put_dump+0x9e>
     fa6:	e011      	b.n	fcc <put_dump+0xe4>
     fa8:	68fb      	ldr	r3, [r7, #12]
     faa:	617b      	str	r3, [r7, #20]
     fac:	697b      	ldr	r3, [r7, #20]
     fae:	1d1a      	adds	r2, r3, #4
     fb0:	617a      	str	r2, [r7, #20]
     fb2:	681a      	ldr	r2, [r3, #0]
     fb4:	4b0c      	ldr	r3, [pc, #48]	; (fe8 <put_dump+0x100>)
     fb6:	0011      	movs	r1, r2
     fb8:	0018      	movs	r0, r3
     fba:	f7ff ff3f 	bl	e3c <xprintf>
     fbe:	687b      	ldr	r3, [r7, #4]
     fc0:	3b01      	subs	r3, #1
     fc2:	607b      	str	r3, [r7, #4]
     fc4:	687b      	ldr	r3, [r7, #4]
     fc6:	2b00      	cmp	r3, #0
     fc8:	d1f0      	bne.n	fac <put_dump+0xc4>
     fca:	46c0      	nop			; (mov r8, r8)
     fcc:	200a      	movs	r0, #10
     fce:	f7ff fd47 	bl	a60 <xputc>
     fd2:	46c0      	nop			; (mov r8, r8)
     fd4:	46bd      	mov	sp, r7
     fd6:	b008      	add	sp, #32
     fd8:	bd80      	pop	{r7, pc}
     fda:	46c0      	nop			; (mov r8, r8)
     fdc:	00001418 	.word	0x00001418
     fe0:	00001420 	.word	0x00001420
     fe4:	00001428 	.word	0x00001428
     fe8:	00001430 	.word	0x00001430

00000fec <xgets>:
     fec:	b580      	push	{r7, lr}
     fee:	b084      	sub	sp, #16
     ff0:	af00      	add	r7, sp, #0
     ff2:	6078      	str	r0, [r7, #4]
     ff4:	6039      	str	r1, [r7, #0]
     ff6:	4b24      	ldr	r3, [pc, #144]	; (1088 <xgets+0x9c>)
     ff8:	681b      	ldr	r3, [r3, #0]
     ffa:	2b00      	cmp	r3, #0
     ffc:	d101      	bne.n	1002 <xgets+0x16>
     ffe:	2300      	movs	r3, #0
    1000:	e03e      	b.n	1080 <xgets+0x94>
    1002:	2300      	movs	r3, #0
    1004:	60fb      	str	r3, [r7, #12]
    1006:	4b20      	ldr	r3, [pc, #128]	; (1088 <xgets+0x9c>)
    1008:	681b      	ldr	r3, [r3, #0]
    100a:	4798      	blx	r3
    100c:	0003      	movs	r3, r0
    100e:	60bb      	str	r3, [r7, #8]
    1010:	68bb      	ldr	r3, [r7, #8]
    1012:	2b00      	cmp	r3, #0
    1014:	d101      	bne.n	101a <xgets+0x2e>
    1016:	2300      	movs	r3, #0
    1018:	e032      	b.n	1080 <xgets+0x94>
    101a:	68bb      	ldr	r3, [r7, #8]
    101c:	2b0d      	cmp	r3, #13
    101e:	d025      	beq.n	106c <xgets+0x80>
    1020:	68bb      	ldr	r3, [r7, #8]
    1022:	2b08      	cmp	r3, #8
    1024:	d10b      	bne.n	103e <xgets+0x52>
    1026:	68fb      	ldr	r3, [r7, #12]
    1028:	2b00      	cmp	r3, #0
    102a:	d008      	beq.n	103e <xgets+0x52>
    102c:	68fb      	ldr	r3, [r7, #12]
    102e:	3b01      	subs	r3, #1
    1030:	60fb      	str	r3, [r7, #12]
    1032:	68bb      	ldr	r3, [r7, #8]
    1034:	b2db      	uxtb	r3, r3
    1036:	0018      	movs	r0, r3
    1038:	f7ff fd12 	bl	a60 <xputc>
    103c:	e015      	b.n	106a <xgets+0x7e>
    103e:	68bb      	ldr	r3, [r7, #8]
    1040:	2b1f      	cmp	r3, #31
    1042:	dde0      	ble.n	1006 <xgets+0x1a>
    1044:	683b      	ldr	r3, [r7, #0]
    1046:	1e5a      	subs	r2, r3, #1
    1048:	68fb      	ldr	r3, [r7, #12]
    104a:	429a      	cmp	r2, r3
    104c:	dddb      	ble.n	1006 <xgets+0x1a>
    104e:	68fb      	ldr	r3, [r7, #12]
    1050:	1c5a      	adds	r2, r3, #1
    1052:	60fa      	str	r2, [r7, #12]
    1054:	001a      	movs	r2, r3
    1056:	687b      	ldr	r3, [r7, #4]
    1058:	189b      	adds	r3, r3, r2
    105a:	68ba      	ldr	r2, [r7, #8]
    105c:	b2d2      	uxtb	r2, r2
    105e:	701a      	strb	r2, [r3, #0]
    1060:	68bb      	ldr	r3, [r7, #8]
    1062:	b2db      	uxtb	r3, r3
    1064:	0018      	movs	r0, r3
    1066:	f7ff fcfb 	bl	a60 <xputc>
    106a:	e7cc      	b.n	1006 <xgets+0x1a>
    106c:	46c0      	nop			; (mov r8, r8)
    106e:	68fb      	ldr	r3, [r7, #12]
    1070:	687a      	ldr	r2, [r7, #4]
    1072:	18d3      	adds	r3, r2, r3
    1074:	2200      	movs	r2, #0
    1076:	701a      	strb	r2, [r3, #0]
    1078:	200a      	movs	r0, #10
    107a:	f7ff fcf1 	bl	a60 <xputc>
    107e:	2301      	movs	r3, #1
    1080:	0018      	movs	r0, r3
    1082:	46bd      	mov	sp, r7
    1084:	b004      	add	sp, #16
    1086:	bd80      	pop	{r7, pc}
    1088:	2000406c 	.word	0x2000406c

0000108c <xfgets>:
    108c:	b580      	push	{r7, lr}
    108e:	b086      	sub	sp, #24
    1090:	af00      	add	r7, sp, #0
    1092:	60f8      	str	r0, [r7, #12]
    1094:	60b9      	str	r1, [r7, #8]
    1096:	607a      	str	r2, [r7, #4]
    1098:	4b0a      	ldr	r3, [pc, #40]	; (10c4 <xfgets+0x38>)
    109a:	681b      	ldr	r3, [r3, #0]
    109c:	617b      	str	r3, [r7, #20]
    109e:	4b09      	ldr	r3, [pc, #36]	; (10c4 <xfgets+0x38>)
    10a0:	68fa      	ldr	r2, [r7, #12]
    10a2:	601a      	str	r2, [r3, #0]
    10a4:	687a      	ldr	r2, [r7, #4]
    10a6:	68bb      	ldr	r3, [r7, #8]
    10a8:	0011      	movs	r1, r2
    10aa:	0018      	movs	r0, r3
    10ac:	f7ff ff9e 	bl	fec <xgets>
    10b0:	0003      	movs	r3, r0
    10b2:	613b      	str	r3, [r7, #16]
    10b4:	4b03      	ldr	r3, [pc, #12]	; (10c4 <xfgets+0x38>)
    10b6:	697a      	ldr	r2, [r7, #20]
    10b8:	601a      	str	r2, [r3, #0]
    10ba:	693b      	ldr	r3, [r7, #16]
    10bc:	0018      	movs	r0, r3
    10be:	46bd      	mov	sp, r7
    10c0:	b006      	add	sp, #24
    10c2:	bd80      	pop	{r7, pc}
    10c4:	2000406c 	.word	0x2000406c

000010c8 <xatoi>:
    10c8:	b580      	push	{r7, lr}
    10ca:	b084      	sub	sp, #16
    10cc:	af00      	add	r7, sp, #0
    10ce:	6078      	str	r0, [r7, #4]
    10d0:	6039      	str	r1, [r7, #0]
    10d2:	2309      	movs	r3, #9
    10d4:	18fb      	adds	r3, r7, r3
    10d6:	2200      	movs	r2, #0
    10d8:	701a      	strb	r2, [r3, #0]
    10da:	683b      	ldr	r3, [r7, #0]
    10dc:	2200      	movs	r2, #0
    10de:	601a      	str	r2, [r3, #0]
    10e0:	e004      	b.n	10ec <xatoi+0x24>
    10e2:	687b      	ldr	r3, [r7, #4]
    10e4:	681b      	ldr	r3, [r3, #0]
    10e6:	1c5a      	adds	r2, r3, #1
    10e8:	687b      	ldr	r3, [r7, #4]
    10ea:	601a      	str	r2, [r3, #0]
    10ec:	687b      	ldr	r3, [r7, #4]
    10ee:	681a      	ldr	r2, [r3, #0]
    10f0:	230b      	movs	r3, #11
    10f2:	18fb      	adds	r3, r7, r3
    10f4:	7812      	ldrb	r2, [r2, #0]
    10f6:	701a      	strb	r2, [r3, #0]
    10f8:	230b      	movs	r3, #11
    10fa:	18fb      	adds	r3, r7, r3
    10fc:	781b      	ldrb	r3, [r3, #0]
    10fe:	2b20      	cmp	r3, #32
    1100:	d0ef      	beq.n	10e2 <xatoi+0x1a>
    1102:	230b      	movs	r3, #11
    1104:	18fb      	adds	r3, r7, r3
    1106:	781b      	ldrb	r3, [r3, #0]
    1108:	2b2d      	cmp	r3, #45	; 0x2d
    110a:	d10e      	bne.n	112a <xatoi+0x62>
    110c:	2309      	movs	r3, #9
    110e:	18fb      	adds	r3, r7, r3
    1110:	2201      	movs	r2, #1
    1112:	701a      	strb	r2, [r3, #0]
    1114:	687b      	ldr	r3, [r7, #4]
    1116:	681b      	ldr	r3, [r3, #0]
    1118:	1c5a      	adds	r2, r3, #1
    111a:	687b      	ldr	r3, [r7, #4]
    111c:	601a      	str	r2, [r3, #0]
    111e:	687b      	ldr	r3, [r7, #4]
    1120:	681a      	ldr	r2, [r3, #0]
    1122:	230b      	movs	r3, #11
    1124:	18fb      	adds	r3, r7, r3
    1126:	7812      	ldrb	r2, [r2, #0]
    1128:	701a      	strb	r2, [r3, #0]
    112a:	230b      	movs	r3, #11
    112c:	18fb      	adds	r3, r7, r3
    112e:	781b      	ldrb	r3, [r3, #0]
    1130:	2b30      	cmp	r3, #48	; 0x30
    1132:	d149      	bne.n	11c8 <xatoi+0x100>
    1134:	687b      	ldr	r3, [r7, #4]
    1136:	681b      	ldr	r3, [r3, #0]
    1138:	1c5a      	adds	r2, r3, #1
    113a:	687b      	ldr	r3, [r7, #4]
    113c:	601a      	str	r2, [r3, #0]
    113e:	687b      	ldr	r3, [r7, #4]
    1140:	681a      	ldr	r2, [r3, #0]
    1142:	230b      	movs	r3, #11
    1144:	18fb      	adds	r3, r7, r3
    1146:	7812      	ldrb	r2, [r2, #0]
    1148:	701a      	strb	r2, [r3, #0]
    114a:	230b      	movs	r3, #11
    114c:	18fb      	adds	r3, r7, r3
    114e:	781b      	ldrb	r3, [r3, #0]
    1150:	2b62      	cmp	r3, #98	; 0x62
    1152:	d011      	beq.n	1178 <xatoi+0xb0>
    1154:	2b78      	cmp	r3, #120	; 0x78
    1156:	d11f      	bne.n	1198 <xatoi+0xd0>
    1158:	230a      	movs	r3, #10
    115a:	18fb      	adds	r3, r7, r3
    115c:	2210      	movs	r2, #16
    115e:	701a      	strb	r2, [r3, #0]
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	681b      	ldr	r3, [r3, #0]
    1164:	1c5a      	adds	r2, r3, #1
    1166:	687b      	ldr	r3, [r7, #4]
    1168:	601a      	str	r2, [r3, #0]
    116a:	687b      	ldr	r3, [r7, #4]
    116c:	681a      	ldr	r2, [r3, #0]
    116e:	230b      	movs	r3, #11
    1170:	18fb      	adds	r3, r7, r3
    1172:	7812      	ldrb	r2, [r2, #0]
    1174:	701a      	strb	r2, [r3, #0]
    1176:	e037      	b.n	11e8 <xatoi+0x120>
    1178:	230a      	movs	r3, #10
    117a:	18fb      	adds	r3, r7, r3
    117c:	2202      	movs	r2, #2
    117e:	701a      	strb	r2, [r3, #0]
    1180:	687b      	ldr	r3, [r7, #4]
    1182:	681b      	ldr	r3, [r3, #0]
    1184:	1c5a      	adds	r2, r3, #1
    1186:	687b      	ldr	r3, [r7, #4]
    1188:	601a      	str	r2, [r3, #0]
    118a:	687b      	ldr	r3, [r7, #4]
    118c:	681a      	ldr	r2, [r3, #0]
    118e:	230b      	movs	r3, #11
    1190:	18fb      	adds	r3, r7, r3
    1192:	7812      	ldrb	r2, [r2, #0]
    1194:	701a      	strb	r2, [r3, #0]
    1196:	e027      	b.n	11e8 <xatoi+0x120>
    1198:	230b      	movs	r3, #11
    119a:	18fb      	adds	r3, r7, r3
    119c:	781b      	ldrb	r3, [r3, #0]
    119e:	2b20      	cmp	r3, #32
    11a0:	d801      	bhi.n	11a6 <xatoi+0xde>
    11a2:	2301      	movs	r3, #1
    11a4:	e079      	b.n	129a <xatoi+0x1d2>
    11a6:	230b      	movs	r3, #11
    11a8:	18fb      	adds	r3, r7, r3
    11aa:	781b      	ldrb	r3, [r3, #0]
    11ac:	2b2f      	cmp	r3, #47	; 0x2f
    11ae:	d904      	bls.n	11ba <xatoi+0xf2>
    11b0:	230b      	movs	r3, #11
    11b2:	18fb      	adds	r3, r7, r3
    11b4:	781b      	ldrb	r3, [r3, #0]
    11b6:	2b39      	cmp	r3, #57	; 0x39
    11b8:	d901      	bls.n	11be <xatoi+0xf6>
    11ba:	2300      	movs	r3, #0
    11bc:	e06d      	b.n	129a <xatoi+0x1d2>
    11be:	230a      	movs	r3, #10
    11c0:	18fb      	adds	r3, r7, r3
    11c2:	2208      	movs	r2, #8
    11c4:	701a      	strb	r2, [r3, #0]
    11c6:	e00f      	b.n	11e8 <xatoi+0x120>
    11c8:	230b      	movs	r3, #11
    11ca:	18fb      	adds	r3, r7, r3
    11cc:	781b      	ldrb	r3, [r3, #0]
    11ce:	2b2f      	cmp	r3, #47	; 0x2f
    11d0:	d904      	bls.n	11dc <xatoi+0x114>
    11d2:	230b      	movs	r3, #11
    11d4:	18fb      	adds	r3, r7, r3
    11d6:	781b      	ldrb	r3, [r3, #0]
    11d8:	2b39      	cmp	r3, #57	; 0x39
    11da:	d901      	bls.n	11e0 <xatoi+0x118>
    11dc:	2300      	movs	r3, #0
    11de:	e05c      	b.n	129a <xatoi+0x1d2>
    11e0:	230a      	movs	r3, #10
    11e2:	18fb      	adds	r3, r7, r3
    11e4:	220a      	movs	r2, #10
    11e6:	701a      	strb	r2, [r3, #0]
    11e8:	2300      	movs	r3, #0
    11ea:	60fb      	str	r3, [r7, #12]
    11ec:	e044      	b.n	1278 <xatoi+0x1b0>
    11ee:	230b      	movs	r3, #11
    11f0:	18fb      	adds	r3, r7, r3
    11f2:	781b      	ldrb	r3, [r3, #0]
    11f4:	2b60      	cmp	r3, #96	; 0x60
    11f6:	d906      	bls.n	1206 <xatoi+0x13e>
    11f8:	230b      	movs	r3, #11
    11fa:	18fb      	adds	r3, r7, r3
    11fc:	220b      	movs	r2, #11
    11fe:	18ba      	adds	r2, r7, r2
    1200:	7812      	ldrb	r2, [r2, #0]
    1202:	3a20      	subs	r2, #32
    1204:	701a      	strb	r2, [r3, #0]
    1206:	230b      	movs	r3, #11
    1208:	18fb      	adds	r3, r7, r3
    120a:	220b      	movs	r2, #11
    120c:	18ba      	adds	r2, r7, r2
    120e:	7812      	ldrb	r2, [r2, #0]
    1210:	3a30      	subs	r2, #48	; 0x30
    1212:	701a      	strb	r2, [r3, #0]
    1214:	230b      	movs	r3, #11
    1216:	18fb      	adds	r3, r7, r3
    1218:	781b      	ldrb	r3, [r3, #0]
    121a:	2b10      	cmp	r3, #16
    121c:	d90d      	bls.n	123a <xatoi+0x172>
    121e:	230b      	movs	r3, #11
    1220:	18fb      	adds	r3, r7, r3
    1222:	220b      	movs	r2, #11
    1224:	18ba      	adds	r2, r7, r2
    1226:	7812      	ldrb	r2, [r2, #0]
    1228:	3a07      	subs	r2, #7
    122a:	701a      	strb	r2, [r3, #0]
    122c:	230b      	movs	r3, #11
    122e:	18fb      	adds	r3, r7, r3
    1230:	781b      	ldrb	r3, [r3, #0]
    1232:	2b09      	cmp	r3, #9
    1234:	d801      	bhi.n	123a <xatoi+0x172>
    1236:	2300      	movs	r3, #0
    1238:	e02f      	b.n	129a <xatoi+0x1d2>
    123a:	230b      	movs	r3, #11
    123c:	18fa      	adds	r2, r7, r3
    123e:	230a      	movs	r3, #10
    1240:	18fb      	adds	r3, r7, r3
    1242:	7812      	ldrb	r2, [r2, #0]
    1244:	781b      	ldrb	r3, [r3, #0]
    1246:	429a      	cmp	r2, r3
    1248:	d301      	bcc.n	124e <xatoi+0x186>
    124a:	2300      	movs	r3, #0
    124c:	e025      	b.n	129a <xatoi+0x1d2>
    124e:	230a      	movs	r3, #10
    1250:	18fb      	adds	r3, r7, r3
    1252:	781b      	ldrb	r3, [r3, #0]
    1254:	68fa      	ldr	r2, [r7, #12]
    1256:	435a      	muls	r2, r3
    1258:	230b      	movs	r3, #11
    125a:	18fb      	adds	r3, r7, r3
    125c:	781b      	ldrb	r3, [r3, #0]
    125e:	18d3      	adds	r3, r2, r3
    1260:	60fb      	str	r3, [r7, #12]
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	681b      	ldr	r3, [r3, #0]
    1266:	1c5a      	adds	r2, r3, #1
    1268:	687b      	ldr	r3, [r7, #4]
    126a:	601a      	str	r2, [r3, #0]
    126c:	687b      	ldr	r3, [r7, #4]
    126e:	681a      	ldr	r2, [r3, #0]
    1270:	230b      	movs	r3, #11
    1272:	18fb      	adds	r3, r7, r3
    1274:	7812      	ldrb	r2, [r2, #0]
    1276:	701a      	strb	r2, [r3, #0]
    1278:	230b      	movs	r3, #11
    127a:	18fb      	adds	r3, r7, r3
    127c:	781b      	ldrb	r3, [r3, #0]
    127e:	2b20      	cmp	r3, #32
    1280:	d8b5      	bhi.n	11ee <xatoi+0x126>
    1282:	2309      	movs	r3, #9
    1284:	18fb      	adds	r3, r7, r3
    1286:	781b      	ldrb	r3, [r3, #0]
    1288:	2b00      	cmp	r3, #0
    128a:	d002      	beq.n	1292 <xatoi+0x1ca>
    128c:	68fb      	ldr	r3, [r7, #12]
    128e:	425b      	negs	r3, r3
    1290:	60fb      	str	r3, [r7, #12]
    1292:	68fa      	ldr	r2, [r7, #12]
    1294:	683b      	ldr	r3, [r7, #0]
    1296:	601a      	str	r2, [r3, #0]
    1298:	2301      	movs	r3, #1
    129a:	0018      	movs	r0, r3
    129c:	46bd      	mov	sp, r7
    129e:	b004      	add	sp, #16
    12a0:	bd80      	pop	{r7, pc}
    12a2:	46c0      	nop			; (mov r8, r8)

000012a4 <__aeabi_uidiv>:
    12a4:	2200      	movs	r2, #0
    12a6:	0843      	lsrs	r3, r0, #1
    12a8:	428b      	cmp	r3, r1
    12aa:	d374      	bcc.n	1396 <__aeabi_uidiv+0xf2>
    12ac:	0903      	lsrs	r3, r0, #4
    12ae:	428b      	cmp	r3, r1
    12b0:	d35f      	bcc.n	1372 <__aeabi_uidiv+0xce>
    12b2:	0a03      	lsrs	r3, r0, #8
    12b4:	428b      	cmp	r3, r1
    12b6:	d344      	bcc.n	1342 <__aeabi_uidiv+0x9e>
    12b8:	0b03      	lsrs	r3, r0, #12
    12ba:	428b      	cmp	r3, r1
    12bc:	d328      	bcc.n	1310 <__aeabi_uidiv+0x6c>
    12be:	0c03      	lsrs	r3, r0, #16
    12c0:	428b      	cmp	r3, r1
    12c2:	d30d      	bcc.n	12e0 <__aeabi_uidiv+0x3c>
    12c4:	22ff      	movs	r2, #255	; 0xff
    12c6:	0209      	lsls	r1, r1, #8
    12c8:	ba12      	rev	r2, r2
    12ca:	0c03      	lsrs	r3, r0, #16
    12cc:	428b      	cmp	r3, r1
    12ce:	d302      	bcc.n	12d6 <__aeabi_uidiv+0x32>
    12d0:	1212      	asrs	r2, r2, #8
    12d2:	0209      	lsls	r1, r1, #8
    12d4:	d065      	beq.n	13a2 <__aeabi_uidiv+0xfe>
    12d6:	0b03      	lsrs	r3, r0, #12
    12d8:	428b      	cmp	r3, r1
    12da:	d319      	bcc.n	1310 <__aeabi_uidiv+0x6c>
    12dc:	e000      	b.n	12e0 <__aeabi_uidiv+0x3c>
    12de:	0a09      	lsrs	r1, r1, #8
    12e0:	0bc3      	lsrs	r3, r0, #15
    12e2:	428b      	cmp	r3, r1
    12e4:	d301      	bcc.n	12ea <__aeabi_uidiv+0x46>
    12e6:	03cb      	lsls	r3, r1, #15
    12e8:	1ac0      	subs	r0, r0, r3
    12ea:	4152      	adcs	r2, r2
    12ec:	0b83      	lsrs	r3, r0, #14
    12ee:	428b      	cmp	r3, r1
    12f0:	d301      	bcc.n	12f6 <__aeabi_uidiv+0x52>
    12f2:	038b      	lsls	r3, r1, #14
    12f4:	1ac0      	subs	r0, r0, r3
    12f6:	4152      	adcs	r2, r2
    12f8:	0b43      	lsrs	r3, r0, #13
    12fa:	428b      	cmp	r3, r1
    12fc:	d301      	bcc.n	1302 <__aeabi_uidiv+0x5e>
    12fe:	034b      	lsls	r3, r1, #13
    1300:	1ac0      	subs	r0, r0, r3
    1302:	4152      	adcs	r2, r2
    1304:	0b03      	lsrs	r3, r0, #12
    1306:	428b      	cmp	r3, r1
    1308:	d301      	bcc.n	130e <__aeabi_uidiv+0x6a>
    130a:	030b      	lsls	r3, r1, #12
    130c:	1ac0      	subs	r0, r0, r3
    130e:	4152      	adcs	r2, r2
    1310:	0ac3      	lsrs	r3, r0, #11
    1312:	428b      	cmp	r3, r1
    1314:	d301      	bcc.n	131a <__aeabi_uidiv+0x76>
    1316:	02cb      	lsls	r3, r1, #11
    1318:	1ac0      	subs	r0, r0, r3
    131a:	4152      	adcs	r2, r2
    131c:	0a83      	lsrs	r3, r0, #10
    131e:	428b      	cmp	r3, r1
    1320:	d301      	bcc.n	1326 <__aeabi_uidiv+0x82>
    1322:	028b      	lsls	r3, r1, #10
    1324:	1ac0      	subs	r0, r0, r3
    1326:	4152      	adcs	r2, r2
    1328:	0a43      	lsrs	r3, r0, #9
    132a:	428b      	cmp	r3, r1
    132c:	d301      	bcc.n	1332 <__aeabi_uidiv+0x8e>
    132e:	024b      	lsls	r3, r1, #9
    1330:	1ac0      	subs	r0, r0, r3
    1332:	4152      	adcs	r2, r2
    1334:	0a03      	lsrs	r3, r0, #8
    1336:	428b      	cmp	r3, r1
    1338:	d301      	bcc.n	133e <__aeabi_uidiv+0x9a>
    133a:	020b      	lsls	r3, r1, #8
    133c:	1ac0      	subs	r0, r0, r3
    133e:	4152      	adcs	r2, r2
    1340:	d2cd      	bcs.n	12de <__aeabi_uidiv+0x3a>
    1342:	09c3      	lsrs	r3, r0, #7
    1344:	428b      	cmp	r3, r1
    1346:	d301      	bcc.n	134c <__aeabi_uidiv+0xa8>
    1348:	01cb      	lsls	r3, r1, #7
    134a:	1ac0      	subs	r0, r0, r3
    134c:	4152      	adcs	r2, r2
    134e:	0983      	lsrs	r3, r0, #6
    1350:	428b      	cmp	r3, r1
    1352:	d301      	bcc.n	1358 <__aeabi_uidiv+0xb4>
    1354:	018b      	lsls	r3, r1, #6
    1356:	1ac0      	subs	r0, r0, r3
    1358:	4152      	adcs	r2, r2
    135a:	0943      	lsrs	r3, r0, #5
    135c:	428b      	cmp	r3, r1
    135e:	d301      	bcc.n	1364 <__aeabi_uidiv+0xc0>
    1360:	014b      	lsls	r3, r1, #5
    1362:	1ac0      	subs	r0, r0, r3
    1364:	4152      	adcs	r2, r2
    1366:	0903      	lsrs	r3, r0, #4
    1368:	428b      	cmp	r3, r1
    136a:	d301      	bcc.n	1370 <__aeabi_uidiv+0xcc>
    136c:	010b      	lsls	r3, r1, #4
    136e:	1ac0      	subs	r0, r0, r3
    1370:	4152      	adcs	r2, r2
    1372:	08c3      	lsrs	r3, r0, #3
    1374:	428b      	cmp	r3, r1
    1376:	d301      	bcc.n	137c <__aeabi_uidiv+0xd8>
    1378:	00cb      	lsls	r3, r1, #3
    137a:	1ac0      	subs	r0, r0, r3
    137c:	4152      	adcs	r2, r2
    137e:	0883      	lsrs	r3, r0, #2
    1380:	428b      	cmp	r3, r1
    1382:	d301      	bcc.n	1388 <__aeabi_uidiv+0xe4>
    1384:	008b      	lsls	r3, r1, #2
    1386:	1ac0      	subs	r0, r0, r3
    1388:	4152      	adcs	r2, r2
    138a:	0843      	lsrs	r3, r0, #1
    138c:	428b      	cmp	r3, r1
    138e:	d301      	bcc.n	1394 <__aeabi_uidiv+0xf0>
    1390:	004b      	lsls	r3, r1, #1
    1392:	1ac0      	subs	r0, r0, r3
    1394:	4152      	adcs	r2, r2
    1396:	1a41      	subs	r1, r0, r1
    1398:	d200      	bcs.n	139c <__aeabi_uidiv+0xf8>
    139a:	4601      	mov	r1, r0
    139c:	4152      	adcs	r2, r2
    139e:	4610      	mov	r0, r2
    13a0:	4770      	bx	lr
    13a2:	e7ff      	b.n	13a4 <__aeabi_uidiv+0x100>
    13a4:	b501      	push	{r0, lr}
    13a6:	2000      	movs	r0, #0
    13a8:	f000 f806 	bl	13b8 <__aeabi_idiv0>
    13ac:	bd02      	pop	{r1, pc}
    13ae:	46c0      	nop			; (mov r8, r8)

000013b0 <__aeabi_uidivmod>:
    13b0:	2900      	cmp	r1, #0
    13b2:	d0f7      	beq.n	13a4 <__aeabi_uidiv+0x100>
    13b4:	e776      	b.n	12a4 <__aeabi_uidiv>
    13b6:	4770      	bx	lr

000013b8 <__aeabi_idiv0>:
    13b8:	4770      	bx	lr
    13ba:	46c0      	nop			; (mov r8, r8)
    13bc:	00000cc6 	.word	0x00000cc6
    13c0:	00000cb4 	.word	0x00000cb4
    13c4:	00000cd2 	.word	0x00000cd2
    13c8:	00000cde 	.word	0x00000cde
    13cc:	00000cde 	.word	0x00000cde
    13d0:	00000cde 	.word	0x00000cde
    13d4:	00000cde 	.word	0x00000cde
    13d8:	00000cde 	.word	0x00000cde
    13dc:	00000cde 	.word	0x00000cde
    13e0:	00000cde 	.word	0x00000cde
    13e4:	00000cde 	.word	0x00000cde
    13e8:	00000cde 	.word	0x00000cde
    13ec:	00000cde 	.word	0x00000cde
    13f0:	00000ccc 	.word	0x00000ccc
    13f4:	00000cde 	.word	0x00000cde
    13f8:	00000cde 	.word	0x00000cde
    13fc:	00000cde 	.word	0x00000cde
    1400:	00000c58 	.word	0x00000c58
    1404:	00000cde 	.word	0x00000cde
    1408:	00000cd2 	.word	0x00000cd2
    140c:	00000cde 	.word	0x00000cde
    1410:	00000cde 	.word	0x00000cde
    1414:	00000cd8 	.word	0x00000cd8
    1418:	6c383025 	.word	0x6c383025
    141c:	00002058 	.word	0x00002058
    1420:	32302520 	.word	0x32302520
    1424:	00000058 	.word	0x00000058
    1428:	34302520 	.word	0x34302520
    142c:	00000058 	.word	0x00000058
    1430:	38302520 	.word	0x38302520
    1434:	0000584c 	.word	0x0000584c
