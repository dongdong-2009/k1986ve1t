
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 29 07 00 00 89 07 00 00 89 07 00 00     ... )...........
	...
      2c:	89 07 00 00 00 00 00 00 00 00 00 00 89 07 00 00     ................
      3c:	3d 06 00 00 89 07 00 00 15 07 00 00 89 07 00 00     =...............
      4c:	89 07 00 00 89 07 00 00 89 07 00 00 89 07 00 00     ................
      5c:	cd 09 00 00 89 07 00 00 89 07 00 00 89 07 00 00     ................
      6c:	89 07 00 00 89 07 00 00 55 06 00 00 89 07 00 00     ........U.......
      7c:	89 07 00 00 89 07 00 00 89 07 00 00 89 07 00 00     ................
      8c:	89 07 00 00 89 07 00 00 89 07 00 00 89 07 00 00     ................
      9c:	89 07 00 00 89 07 00 00 00 00 00 00 00 00 00 00     ................
      ac:	89 07 00 00 89 07 00 00 89 07 00 00 89 07 00 00     ................
      bc:	89 07 00 00                                         ....

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
     1a6:	f000 fa39 	bl	61c <SystemInit>
     1aa:	4b4d      	ldr	r3, [pc, #308]	; (2e0 <main+0x150>)
     1ac:	4a4d      	ldr	r2, [pc, #308]	; (2e4 <main+0x154>)
     1ae:	601a      	str	r2, [r3, #0]
     1b0:	4b4d      	ldr	r3, [pc, #308]	; (2e8 <main+0x158>)
     1b2:	681b      	ldr	r3, [r3, #0]
     1b4:	2b00      	cmp	r3, #0
     1b6:	d000      	beq.n	1ba <main+0x2a>
     1b8:	e07e      	b.n	2b8 <main+0x128>
     1ba:	1dfb      	adds	r3, r7, #7
     1bc:	2101      	movs	r1, #1
     1be:	0018      	movs	r0, r3
     1c0:	f000 fb68 	bl	894 <uart_read>
     1c4:	1e03      	subs	r3, r0, #0
     1c6:	d077      	beq.n	2b8 <main+0x128>
     1c8:	1dfb      	adds	r3, r7, #7
     1ca:	781b      	ldrb	r3, [r3, #0]
     1cc:	2b55      	cmp	r3, #85	; 0x55
     1ce:	d15b      	bne.n	288 <main+0xf8>
     1d0:	2397      	movs	r3, #151	; 0x97
     1d2:	18fb      	adds	r3, r7, r3
     1d4:	781b      	ldrb	r3, [r3, #0]
     1d6:	2baa      	cmp	r3, #170	; 0xaa
     1d8:	d156      	bne.n	288 <main+0xf8>
     1da:	2398      	movs	r3, #152	; 0x98
     1dc:	18fb      	adds	r3, r7, r3
     1de:	681b      	ldr	r3, [r3, #0]
     1e0:	3b0b      	subs	r3, #11
     1e2:	227f      	movs	r2, #127	; 0x7f
     1e4:	4013      	ands	r3, r2
     1e6:	2290      	movs	r2, #144	; 0x90
     1e8:	18ba      	adds	r2, r7, r2
     1ea:	6013      	str	r3, [r2, #0]
     1ec:	4b3f      	ldr	r3, [pc, #252]	; (2ec <main+0x15c>)
     1ee:	228c      	movs	r2, #140	; 0x8c
     1f0:	18ba      	adds	r2, r7, r2
     1f2:	6013      	str	r3, [r2, #0]
     1f4:	2300      	movs	r3, #0
     1f6:	229c      	movs	r2, #156	; 0x9c
     1f8:	18ba      	adds	r2, r7, r2
     1fa:	6013      	str	r3, [r2, #0]
     1fc:	e03c      	b.n	278 <main+0xe8>
     1fe:	238b      	movs	r3, #139	; 0x8b
     200:	18fb      	adds	r3, r7, r3
     202:	2208      	movs	r2, #8
     204:	18b9      	adds	r1, r7, r2
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
     224:	238a      	movs	r3, #138	; 0x8a
     226:	18fb      	adds	r3, r7, r3
     228:	2208      	movs	r2, #8
     22a:	18b9      	adds	r1, r7, r2
     22c:	2290      	movs	r2, #144	; 0x90
     22e:	18ba      	adds	r2, r7, r2
     230:	6812      	ldr	r2, [r2, #0]
     232:	188a      	adds	r2, r1, r2
     234:	7812      	ldrb	r2, [r2, #0]
     236:	701a      	strb	r2, [r3, #0]
     238:	2390      	movs	r3, #144	; 0x90
     23a:	18fb      	adds	r3, r7, r3
     23c:	681b      	ldr	r3, [r3, #0]
     23e:	3301      	adds	r3, #1
     240:	227f      	movs	r2, #127	; 0x7f
     242:	4013      	ands	r3, r2
     244:	2290      	movs	r2, #144	; 0x90
     246:	18ba      	adds	r2, r7, r2
     248:	6013      	str	r3, [r2, #0]
     24a:	238c      	movs	r3, #140	; 0x8c
     24c:	18fb      	adds	r3, r7, r3
     24e:	681b      	ldr	r3, [r3, #0]
     250:	1d1a      	adds	r2, r3, #4
     252:	218c      	movs	r1, #140	; 0x8c
     254:	1879      	adds	r1, r7, r1
     256:	600a      	str	r2, [r1, #0]
     258:	228a      	movs	r2, #138	; 0x8a
     25a:	18ba      	adds	r2, r7, r2
     25c:	7811      	ldrb	r1, [r2, #0]
     25e:	228b      	movs	r2, #139	; 0x8b
     260:	18ba      	adds	r2, r7, r2
     262:	7812      	ldrb	r2, [r2, #0]
     264:	0212      	lsls	r2, r2, #8
     266:	188a      	adds	r2, r1, r2
     268:	601a      	str	r2, [r3, #0]
     26a:	239c      	movs	r3, #156	; 0x9c
     26c:	18fb      	adds	r3, r7, r3
     26e:	681b      	ldr	r3, [r3, #0]
     270:	3301      	adds	r3, #1
     272:	229c      	movs	r2, #156	; 0x9c
     274:	18ba      	adds	r2, r7, r2
     276:	6013      	str	r3, [r2, #0]
     278:	239c      	movs	r3, #156	; 0x9c
     27a:	18fb      	adds	r3, r7, r3
     27c:	681b      	ldr	r3, [r3, #0]
     27e:	2b04      	cmp	r3, #4
     280:	ddbd      	ble.n	1fe <main+0x6e>
     282:	4b19      	ldr	r3, [pc, #100]	; (2e8 <main+0x158>)
     284:	2202      	movs	r2, #2
     286:	601a      	str	r2, [r3, #0]
     288:	2397      	movs	r3, #151	; 0x97
     28a:	18fb      	adds	r3, r7, r3
     28c:	1dfa      	adds	r2, r7, #7
     28e:	7812      	ldrb	r2, [r2, #0]
     290:	701a      	strb	r2, [r3, #0]
     292:	1dfb      	adds	r3, r7, #7
     294:	7819      	ldrb	r1, [r3, #0]
     296:	2308      	movs	r3, #8
     298:	18fa      	adds	r2, r7, r3
     29a:	2398      	movs	r3, #152	; 0x98
     29c:	18fb      	adds	r3, r7, r3
     29e:	681b      	ldr	r3, [r3, #0]
     2a0:	18d3      	adds	r3, r2, r3
     2a2:	1c0a      	adds	r2, r1, #0
     2a4:	701a      	strb	r2, [r3, #0]
     2a6:	2398      	movs	r3, #152	; 0x98
     2a8:	18fb      	adds	r3, r7, r3
     2aa:	681b      	ldr	r3, [r3, #0]
     2ac:	3301      	adds	r3, #1
     2ae:	227f      	movs	r2, #127	; 0x7f
     2b0:	4013      	ands	r3, r2
     2b2:	2298      	movs	r2, #152	; 0x98
     2b4:	18ba      	adds	r2, r7, r2
     2b6:	6013      	str	r3, [r2, #0]
     2b8:	4b0d      	ldr	r3, [pc, #52]	; (2f0 <main+0x160>)
     2ba:	681b      	ldr	r3, [r3, #0]
     2bc:	2b00      	cmp	r3, #0
     2be:	d100      	bne.n	2c2 <main+0x132>
     2c0:	e776      	b.n	1b0 <main+0x20>
     2c2:	4b0c      	ldr	r3, [pc, #48]	; (2f4 <main+0x164>)
     2c4:	2140      	movs	r1, #64	; 0x40
     2c6:	0018      	movs	r0, r3
     2c8:	f000 fb32 	bl	930 <uart_send>
     2cc:	4b0a      	ldr	r3, [pc, #40]	; (2f8 <main+0x168>)
     2ce:	2102      	movs	r1, #2
     2d0:	0018      	movs	r0, r3
     2d2:	f000 fb2d 	bl	930 <uart_send>
     2d6:	4b06      	ldr	r3, [pc, #24]	; (2f0 <main+0x160>)
     2d8:	2200      	movs	r2, #0
     2da:	601a      	str	r2, [r3, #0]
     2dc:	e768      	b.n	1b0 <main+0x20>
     2de:	46c0      	nop			; (mov r8, r8)
     2e0:	20004064 	.word	0x20004064
     2e4:	00000869 	.word	0x00000869
     2e8:	2000004c 	.word	0x2000004c
     2ec:	40048080 	.word	0x40048080
     2f0:	20000050 	.word	0x20000050
     2f4:	20000008 	.word	0x20000008
     2f8:	20000000 	.word	0x20000000

000002fc <PortConfig>:
     2fc:	b580      	push	{r7, lr}
     2fe:	af00      	add	r7, sp, #0
     300:	4b5b      	ldr	r3, [pc, #364]	; (470 <_stack_size+0x70>)
     302:	4a5b      	ldr	r2, [pc, #364]	; (470 <_stack_size+0x70>)
     304:	69d2      	ldr	r2, [r2, #28]
     306:	2180      	movs	r1, #128	; 0x80
     308:	0449      	lsls	r1, r1, #17
     30a:	430a      	orrs	r2, r1
     30c:	61da      	str	r2, [r3, #28]
     30e:	4b59      	ldr	r3, [pc, #356]	; (474 <_stack_size+0x74>)
     310:	4a58      	ldr	r2, [pc, #352]	; (474 <_stack_size+0x74>)
     312:	6892      	ldr	r2, [r2, #8]
     314:	4958      	ldr	r1, [pc, #352]	; (478 <_stack_size+0x78>)
     316:	400a      	ands	r2, r1
     318:	609a      	str	r2, [r3, #8]
     31a:	4b56      	ldr	r3, [pc, #344]	; (474 <_stack_size+0x74>)
     31c:	4a55      	ldr	r2, [pc, #340]	; (474 <_stack_size+0x74>)
     31e:	6892      	ldr	r2, [r2, #8]
     320:	21a0      	movs	r1, #160	; 0xa0
     322:	0549      	lsls	r1, r1, #21
     324:	430a      	orrs	r2, r1
     326:	609a      	str	r2, [r3, #8]
     328:	4b52      	ldr	r3, [pc, #328]	; (474 <_stack_size+0x74>)
     32a:	4a52      	ldr	r2, [pc, #328]	; (474 <_stack_size+0x74>)
     32c:	68d2      	ldr	r2, [r2, #12]
     32e:	21c0      	movs	r1, #192	; 0xc0
     330:	01c9      	lsls	r1, r1, #7
     332:	430a      	orrs	r2, r1
     334:	60da      	str	r2, [r3, #12]
     336:	4b4f      	ldr	r3, [pc, #316]	; (474 <_stack_size+0x74>)
     338:	4a4e      	ldr	r2, [pc, #312]	; (474 <_stack_size+0x74>)
     33a:	6992      	ldr	r2, [r2, #24]
     33c:	21f0      	movs	r1, #240	; 0xf0
     33e:	0589      	lsls	r1, r1, #22
     340:	430a      	orrs	r2, r1
     342:	619a      	str	r2, [r3, #24]
     344:	4b4b      	ldr	r3, [pc, #300]	; (474 <_stack_size+0x74>)
     346:	4a4b      	ldr	r2, [pc, #300]	; (474 <_stack_size+0x74>)
     348:	6812      	ldr	r2, [r2, #0]
     34a:	494c      	ldr	r1, [pc, #304]	; (47c <_stack_size+0x7c>)
     34c:	400a      	ands	r2, r1
     34e:	601a      	str	r2, [r3, #0]
     350:	4b47      	ldr	r3, [pc, #284]	; (470 <_stack_size+0x70>)
     352:	4a47      	ldr	r2, [pc, #284]	; (470 <_stack_size+0x70>)
     354:	69d2      	ldr	r2, [r2, #28]
     356:	2180      	movs	r1, #128	; 0x80
     358:	0409      	lsls	r1, r1, #16
     35a:	430a      	orrs	r2, r1
     35c:	61da      	str	r2, [r3, #28]
     35e:	4b44      	ldr	r3, [pc, #272]	; (470 <_stack_size+0x70>)
     360:	4a43      	ldr	r2, [pc, #268]	; (470 <_stack_size+0x70>)
     362:	69d2      	ldr	r2, [r2, #28]
     364:	2180      	movs	r1, #128	; 0x80
     366:	0449      	lsls	r1, r1, #17
     368:	430a      	orrs	r2, r1
     36a:	61da      	str	r2, [r3, #28]
     36c:	4b44      	ldr	r3, [pc, #272]	; (480 <_stack_size+0x80>)
     36e:	4a44      	ldr	r2, [pc, #272]	; (480 <_stack_size+0x80>)
     370:	6892      	ldr	r2, [r2, #8]
     372:	0192      	lsls	r2, r2, #6
     374:	0992      	lsrs	r2, r2, #6
     376:	609a      	str	r2, [r3, #8]
     378:	4b41      	ldr	r3, [pc, #260]	; (480 <_stack_size+0x80>)
     37a:	4a41      	ldr	r2, [pc, #260]	; (480 <_stack_size+0x80>)
     37c:	6892      	ldr	r2, [r2, #8]
     37e:	21a8      	movs	r1, #168	; 0xa8
     380:	05c9      	lsls	r1, r1, #23
     382:	430a      	orrs	r2, r1
     384:	609a      	str	r2, [r3, #8]
     386:	4b3e      	ldr	r3, [pc, #248]	; (480 <_stack_size+0x80>)
     388:	4a3d      	ldr	r2, [pc, #244]	; (480 <_stack_size+0x80>)
     38a:	68d2      	ldr	r2, [r2, #12]
     38c:	21e0      	movs	r1, #224	; 0xe0
     38e:	0209      	lsls	r1, r1, #8
     390:	430a      	orrs	r2, r1
     392:	60da      	str	r2, [r3, #12]
     394:	4b3a      	ldr	r3, [pc, #232]	; (480 <_stack_size+0x80>)
     396:	4a3a      	ldr	r2, [pc, #232]	; (480 <_stack_size+0x80>)
     398:	6992      	ldr	r2, [r2, #24]
     39a:	21fc      	movs	r1, #252	; 0xfc
     39c:	0609      	lsls	r1, r1, #24
     39e:	430a      	orrs	r2, r1
     3a0:	619a      	str	r2, [r3, #24]
     3a2:	4b34      	ldr	r3, [pc, #208]	; (474 <_stack_size+0x74>)
     3a4:	4a33      	ldr	r2, [pc, #204]	; (474 <_stack_size+0x74>)
     3a6:	6892      	ldr	r2, [r2, #8]
     3a8:	0b92      	lsrs	r2, r2, #14
     3aa:	0392      	lsls	r2, r2, #14
     3ac:	609a      	str	r2, [r3, #8]
     3ae:	4b31      	ldr	r3, [pc, #196]	; (474 <_stack_size+0x74>)
     3b0:	4a30      	ldr	r2, [pc, #192]	; (474 <_stack_size+0x74>)
     3b2:	6892      	ldr	r2, [r2, #8]
     3b4:	4933      	ldr	r1, [pc, #204]	; (484 <_stack_size+0x84>)
     3b6:	430a      	orrs	r2, r1
     3b8:	609a      	str	r2, [r3, #8]
     3ba:	4b2e      	ldr	r3, [pc, #184]	; (474 <_stack_size+0x74>)
     3bc:	4a2d      	ldr	r2, [pc, #180]	; (474 <_stack_size+0x74>)
     3be:	68d2      	ldr	r2, [r2, #12]
     3c0:	217f      	movs	r1, #127	; 0x7f
     3c2:	430a      	orrs	r2, r1
     3c4:	60da      	str	r2, [r3, #12]
     3c6:	4b2b      	ldr	r3, [pc, #172]	; (474 <_stack_size+0x74>)
     3c8:	4a2a      	ldr	r2, [pc, #168]	; (474 <_stack_size+0x74>)
     3ca:	6992      	ldr	r2, [r2, #24]
     3cc:	492e      	ldr	r1, [pc, #184]	; (488 <_stack_size+0x88>)
     3ce:	430a      	orrs	r2, r1
     3d0:	619a      	str	r2, [r3, #24]
     3d2:	4b28      	ldr	r3, [pc, #160]	; (474 <_stack_size+0x74>)
     3d4:	4a27      	ldr	r2, [pc, #156]	; (474 <_stack_size+0x74>)
     3d6:	68d2      	ldr	r2, [r2, #12]
     3d8:	2180      	movs	r1, #128	; 0x80
     3da:	430a      	orrs	r2, r1
     3dc:	60da      	str	r2, [r3, #12]
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <_stack_size+0x74>)
     3e0:	4a24      	ldr	r2, [pc, #144]	; (474 <_stack_size+0x74>)
     3e2:	6852      	ldr	r2, [r2, #4]
     3e4:	2180      	movs	r1, #128	; 0x80
     3e6:	430a      	orrs	r2, r1
     3e8:	605a      	str	r2, [r3, #4]
     3ea:	4b22      	ldr	r3, [pc, #136]	; (474 <_stack_size+0x74>)
     3ec:	4a21      	ldr	r2, [pc, #132]	; (474 <_stack_size+0x74>)
     3ee:	6892      	ldr	r2, [r2, #8]
     3f0:	4926      	ldr	r1, [pc, #152]	; (48c <_stack_size+0x8c>)
     3f2:	400a      	ands	r2, r1
     3f4:	609a      	str	r2, [r3, #8]
     3f6:	4b1f      	ldr	r3, [pc, #124]	; (474 <_stack_size+0x74>)
     3f8:	4a1e      	ldr	r2, [pc, #120]	; (474 <_stack_size+0x74>)
     3fa:	6992      	ldr	r2, [r2, #24]
     3fc:	21c0      	movs	r1, #192	; 0xc0
     3fe:	0209      	lsls	r1, r1, #8
     400:	430a      	orrs	r2, r1
     402:	619a      	str	r2, [r3, #24]
     404:	4b1b      	ldr	r3, [pc, #108]	; (474 <_stack_size+0x74>)
     406:	4a1b      	ldr	r2, [pc, #108]	; (474 <_stack_size+0x74>)
     408:	6812      	ldr	r2, [r2, #0]
     40a:	2180      	movs	r1, #128	; 0x80
     40c:	438a      	bics	r2, r1
     40e:	601a      	str	r2, [r3, #0]
     410:	4b17      	ldr	r3, [pc, #92]	; (470 <_stack_size+0x70>)
     412:	4a17      	ldr	r2, [pc, #92]	; (470 <_stack_size+0x70>)
     414:	69d2      	ldr	r2, [r2, #28]
     416:	2180      	movs	r1, #128	; 0x80
     418:	0489      	lsls	r1, r1, #18
     41a:	430a      	orrs	r2, r1
     41c:	61da      	str	r2, [r3, #28]
     41e:	4b1c      	ldr	r3, [pc, #112]	; (490 <_stack_size+0x90>)
     420:	4a1b      	ldr	r2, [pc, #108]	; (490 <_stack_size+0x90>)
     422:	68d2      	ldr	r2, [r2, #12]
     424:	2188      	movs	r1, #136	; 0x88
     426:	0109      	lsls	r1, r1, #4
     428:	430a      	orrs	r2, r1
     42a:	60da      	str	r2, [r3, #12]
     42c:	4b18      	ldr	r3, [pc, #96]	; (490 <_stack_size+0x90>)
     42e:	4a18      	ldr	r2, [pc, #96]	; (490 <_stack_size+0x90>)
     430:	6852      	ldr	r2, [r2, #4]
     432:	2188      	movs	r1, #136	; 0x88
     434:	0109      	lsls	r1, r1, #4
     436:	430a      	orrs	r2, r1
     438:	605a      	str	r2, [r3, #4]
     43a:	4b15      	ldr	r3, [pc, #84]	; (490 <_stack_size+0x90>)
     43c:	4a14      	ldr	r2, [pc, #80]	; (490 <_stack_size+0x90>)
     43e:	6892      	ldr	r2, [r2, #8]
     440:	4912      	ldr	r1, [pc, #72]	; (48c <_stack_size+0x8c>)
     442:	400a      	ands	r2, r1
     444:	609a      	str	r2, [r3, #8]
     446:	4b12      	ldr	r3, [pc, #72]	; (490 <_stack_size+0x90>)
     448:	4a11      	ldr	r2, [pc, #68]	; (490 <_stack_size+0x90>)
     44a:	6992      	ldr	r2, [r2, #24]
     44c:	4911      	ldr	r1, [pc, #68]	; (494 <_stack_size+0x94>)
     44e:	430a      	orrs	r2, r1
     450:	619a      	str	r2, [r3, #24]
     452:	4b0f      	ldr	r3, [pc, #60]	; (490 <_stack_size+0x90>)
     454:	4a0e      	ldr	r2, [pc, #56]	; (490 <_stack_size+0x90>)
     456:	6812      	ldr	r2, [r2, #0]
     458:	2180      	movs	r1, #128	; 0x80
     45a:	438a      	bics	r2, r1
     45c:	601a      	str	r2, [r3, #0]
     45e:	4b0c      	ldr	r3, [pc, #48]	; (490 <_stack_size+0x90>)
     460:	4a0b      	ldr	r2, [pc, #44]	; (490 <_stack_size+0x90>)
     462:	6812      	ldr	r2, [r2, #0]
     464:	490c      	ldr	r1, [pc, #48]	; (498 <_stack_size+0x98>)
     466:	400a      	ands	r2, r1
     468:	601a      	str	r2, [r3, #0]
     46a:	46c0      	nop			; (mov r8, r8)
     46c:	46bd      	mov	sp, r7
     46e:	bd80      	pop	{r7, pc}
     470:	40020000 	.word	0x40020000
     474:	400c0000 	.word	0x400c0000
     478:	c3ffffff 	.word	0xc3ffffff
     47c:	ffff9fff 	.word	0xffff9fff
     480:	400b8000 	.word	0x400b8000
     484:	00001555 	.word	0x00001555
     488:	00003fff 	.word	0x00003fff
     48c:	ffff3fff 	.word	0xffff3fff
     490:	400c8000 	.word	0x400c8000
     494:	00c0c000 	.word	0x00c0c000
     498:	fffff7ff 	.word	0xfffff7ff

0000049c <ClkConfig>:
     49c:	b580      	push	{r7, lr}
     49e:	af00      	add	r7, sp, #0
     4a0:	4b18      	ldr	r3, [pc, #96]	; (504 <ClkConfig+0x68>)
     4a2:	4a18      	ldr	r2, [pc, #96]	; (504 <ClkConfig+0x68>)
     4a4:	6892      	ldr	r2, [r2, #8]
     4a6:	2101      	movs	r1, #1
     4a8:	430a      	orrs	r2, r1
     4aa:	609a      	str	r2, [r3, #8]
     4ac:	46c0      	nop			; (mov r8, r8)
     4ae:	4b15      	ldr	r3, [pc, #84]	; (504 <ClkConfig+0x68>)
     4b0:	681b      	ldr	r3, [r3, #0]
     4b2:	2204      	movs	r2, #4
     4b4:	4013      	ands	r3, r2
     4b6:	d0fa      	beq.n	4ae <ClkConfig+0x12>
     4b8:	4b12      	ldr	r3, [pc, #72]	; (504 <ClkConfig+0x68>)
     4ba:	4a12      	ldr	r2, [pc, #72]	; (504 <ClkConfig+0x68>)
     4bc:	68d2      	ldr	r2, [r2, #12]
     4be:	2102      	movs	r1, #2
     4c0:	430a      	orrs	r2, r1
     4c2:	60da      	str	r2, [r3, #12]
     4c4:	4b0f      	ldr	r3, [pc, #60]	; (504 <ClkConfig+0x68>)
     4c6:	4a10      	ldr	r2, [pc, #64]	; (508 <ClkConfig+0x6c>)
     4c8:	605a      	str	r2, [r3, #4]
     4ca:	46c0      	nop			; (mov r8, r8)
     4cc:	4b0d      	ldr	r3, [pc, #52]	; (504 <ClkConfig+0x68>)
     4ce:	681b      	ldr	r3, [r3, #0]
     4d0:	2202      	movs	r2, #2
     4d2:	4013      	ands	r3, r2
     4d4:	d0fa      	beq.n	4cc <ClkConfig+0x30>
     4d6:	4b0d      	ldr	r3, [pc, #52]	; (50c <ClkConfig+0x70>)
     4d8:	4a0c      	ldr	r2, [pc, #48]	; (50c <ClkConfig+0x70>)
     4da:	6812      	ldr	r2, [r2, #0]
     4dc:	2120      	movs	r1, #32
     4de:	430a      	orrs	r2, r1
     4e0:	601a      	str	r2, [r3, #0]
     4e2:	4b08      	ldr	r3, [pc, #32]	; (504 <ClkConfig+0x68>)
     4e4:	4a07      	ldr	r2, [pc, #28]	; (504 <ClkConfig+0x68>)
     4e6:	68d2      	ldr	r2, [r2, #12]
     4e8:	2180      	movs	r1, #128	; 0x80
     4ea:	0049      	lsls	r1, r1, #1
     4ec:	430a      	orrs	r2, r1
     4ee:	60da      	str	r2, [r3, #12]
     4f0:	4b04      	ldr	r3, [pc, #16]	; (504 <ClkConfig+0x68>)
     4f2:	4a04      	ldr	r2, [pc, #16]	; (504 <ClkConfig+0x68>)
     4f4:	68d2      	ldr	r2, [r2, #12]
     4f6:	2104      	movs	r1, #4
     4f8:	430a      	orrs	r2, r1
     4fa:	60da      	str	r2, [r3, #12]
     4fc:	46c0      	nop			; (mov r8, r8)
     4fe:	46bd      	mov	sp, r7
     500:	bd80      	pop	{r7, pc}
     502:	46c0      	nop			; (mov r8, r8)
     504:	40020000 	.word	0x40020000
     508:	00000e04 	.word	0x00000e04
     50c:	40018000 	.word	0x40018000

00000510 <TimerConfig>:
     510:	b580      	push	{r7, lr}
     512:	af00      	add	r7, sp, #0
     514:	4b17      	ldr	r3, [pc, #92]	; (574 <TimerConfig+0x64>)
     516:	4a17      	ldr	r2, [pc, #92]	; (574 <TimerConfig+0x64>)
     518:	69d2      	ldr	r2, [r2, #28]
     51a:	2180      	movs	r1, #128	; 0x80
     51c:	0309      	lsls	r1, r1, #12
     51e:	430a      	orrs	r2, r1
     520:	61da      	str	r2, [r3, #28]
     522:	4b14      	ldr	r3, [pc, #80]	; (574 <TimerConfig+0x64>)
     524:	4a13      	ldr	r2, [pc, #76]	; (574 <TimerConfig+0x64>)
     526:	6a92      	ldr	r2, [r2, #40]	; 0x28
     528:	2180      	movs	r1, #128	; 0x80
     52a:	04c9      	lsls	r1, r1, #19
     52c:	430a      	orrs	r2, r1
     52e:	629a      	str	r2, [r3, #40]	; 0x28
     530:	4b10      	ldr	r3, [pc, #64]	; (574 <TimerConfig+0x64>)
     532:	4a10      	ldr	r2, [pc, #64]	; (574 <TimerConfig+0x64>)
     534:	6a92      	ldr	r2, [r2, #40]	; 0x28
     536:	4910      	ldr	r1, [pc, #64]	; (578 <TimerConfig+0x68>)
     538:	400a      	ands	r2, r1
     53a:	629a      	str	r2, [r3, #40]	; 0x28
     53c:	4b0f      	ldr	r3, [pc, #60]	; (57c <TimerConfig+0x6c>)
     53e:	2200      	movs	r2, #0
     540:	601a      	str	r2, [r3, #0]
     542:	4b0e      	ldr	r3, [pc, #56]	; (57c <TimerConfig+0x6c>)
     544:	2277      	movs	r2, #119	; 0x77
     546:	605a      	str	r2, [r3, #4]
     548:	4b0c      	ldr	r3, [pc, #48]	; (57c <TimerConfig+0x6c>)
     54a:	4a0d      	ldr	r2, [pc, #52]	; (580 <TimerConfig+0x70>)
     54c:	609a      	str	r2, [r3, #8]
     54e:	4b0b      	ldr	r3, [pc, #44]	; (57c <TimerConfig+0x6c>)
     550:	22fa      	movs	r2, #250	; 0xfa
     552:	00d2      	lsls	r2, r2, #3
     554:	611a      	str	r2, [r3, #16]
     556:	4b09      	ldr	r3, [pc, #36]	; (57c <TimerConfig+0x6c>)
     558:	4a08      	ldr	r2, [pc, #32]	; (57c <TimerConfig+0x6c>)
     55a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     55c:	2102      	movs	r1, #2
     55e:	430a      	orrs	r2, r1
     560:	659a      	str	r2, [r3, #88]	; 0x58
     562:	4b06      	ldr	r3, [pc, #24]	; (57c <TimerConfig+0x6c>)
     564:	2201      	movs	r2, #1
     566:	60da      	str	r2, [r3, #12]
     568:	200d      	movs	r0, #13
     56a:	f7ff fda9 	bl	c0 <NVIC_EnableIRQ>
     56e:	46c0      	nop			; (mov r8, r8)
     570:	46bd      	mov	sp, r7
     572:	bd80      	pop	{r7, pc}
     574:	40020000 	.word	0x40020000
     578:	ff00ffff 	.word	0xff00ffff
     57c:	40098000 	.word	0x40098000
     580:	000009c3 	.word	0x000009c3

00000584 <mil_std_1533_init_bc>:
     584:	b580      	push	{r7, lr}
     586:	b082      	sub	sp, #8
     588:	af00      	add	r7, sp, #0
     58a:	4b1f      	ldr	r3, [pc, #124]	; (608 <mil_std_1533_init_bc+0x84>)
     58c:	603b      	str	r3, [r7, #0]
     58e:	4b1f      	ldr	r3, [pc, #124]	; (60c <mil_std_1533_init_bc+0x88>)
     590:	4a1e      	ldr	r2, [pc, #120]	; (60c <mil_std_1533_init_bc+0x88>)
     592:	69d2      	ldr	r2, [r2, #28]
     594:	2180      	movs	r1, #128	; 0x80
     596:	0089      	lsls	r1, r1, #2
     598:	430a      	orrs	r2, r1
     59a:	61da      	str	r2, [r3, #28]
     59c:	4b1b      	ldr	r3, [pc, #108]	; (60c <mil_std_1533_init_bc+0x88>)
     59e:	4a1b      	ldr	r2, [pc, #108]	; (60c <mil_std_1533_init_bc+0x88>)
     5a0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5a2:	2180      	movs	r1, #128	; 0x80
     5a4:	0489      	lsls	r1, r1, #18
     5a6:	430a      	orrs	r2, r1
     5a8:	635a      	str	r2, [r3, #52]	; 0x34
     5aa:	4a19      	ldr	r2, [pc, #100]	; (610 <mil_std_1533_init_bc+0x8c>)
     5ac:	2380      	movs	r3, #128	; 0x80
     5ae:	015b      	lsls	r3, r3, #5
     5b0:	2101      	movs	r1, #1
     5b2:	50d1      	str	r1, [r2, r3]
     5b4:	4a16      	ldr	r2, [pc, #88]	; (610 <mil_std_1533_init_bc+0x8c>)
     5b6:	2380      	movs	r3, #128	; 0x80
     5b8:	015b      	lsls	r3, r3, #5
     5ba:	4916      	ldr	r1, [pc, #88]	; (614 <mil_std_1533_init_bc+0x90>)
     5bc:	50d1      	str	r1, [r2, r3]
     5be:	4914      	ldr	r1, [pc, #80]	; (610 <mil_std_1533_init_bc+0x8c>)
     5c0:	4a13      	ldr	r2, [pc, #76]	; (610 <mil_std_1533_init_bc+0x8c>)
     5c2:	2381      	movs	r3, #129	; 0x81
     5c4:	015b      	lsls	r3, r3, #5
     5c6:	58d3      	ldr	r3, [r2, r3]
     5c8:	2204      	movs	r2, #4
     5ca:	431a      	orrs	r2, r3
     5cc:	2381      	movs	r3, #129	; 0x81
     5ce:	015b      	lsls	r3, r3, #5
     5d0:	50ca      	str	r2, [r1, r3]
     5d2:	2001      	movs	r0, #1
     5d4:	f7ff fd74 	bl	c0 <NVIC_EnableIRQ>
     5d8:	4a0d      	ldr	r2, [pc, #52]	; (610 <mil_std_1533_init_bc+0x8c>)
     5da:	4b0f      	ldr	r3, [pc, #60]	; (618 <mil_std_1533_init_bc+0x94>)
     5dc:	2100      	movs	r1, #0
     5de:	50d1      	str	r1, [r2, r3]
     5e0:	2300      	movs	r3, #0
     5e2:	607b      	str	r3, [r7, #4]
     5e4:	e008      	b.n	5f8 <mil_std_1533_init_bc+0x74>
     5e6:	683b      	ldr	r3, [r7, #0]
     5e8:	1d1a      	adds	r2, r3, #4
     5ea:	603a      	str	r2, [r7, #0]
     5ec:	687a      	ldr	r2, [r7, #4]
     5ee:	b292      	uxth	r2, r2
     5f0:	601a      	str	r2, [r3, #0]
     5f2:	687b      	ldr	r3, [r7, #4]
     5f4:	3301      	adds	r3, #1
     5f6:	607b      	str	r3, [r7, #4]
     5f8:	687b      	ldr	r3, [r7, #4]
     5fa:	2b1f      	cmp	r3, #31
     5fc:	ddf3      	ble.n	5e6 <mil_std_1533_init_bc+0x62>
     5fe:	46c0      	nop			; (mov r8, r8)
     600:	46bd      	mov	sp, r7
     602:	b002      	add	sp, #8
     604:	bd80      	pop	{r7, pc}
     606:	46c0      	nop			; (mov r8, r8)
     608:	40048080 	.word	0x40048080
     60c:	40020000 	.word	0x40020000
     610:	40048000 	.word	0x40048000
     614:	0003c014 	.word	0x0003c014
     618:	0000100c 	.word	0x0000100c

0000061c <SystemInit>:
     61c:	b580      	push	{r7, lr}
     61e:	af00      	add	r7, sp, #0
     620:	f7ff ff3c 	bl	49c <ClkConfig>
     624:	f7ff fe6a 	bl	2fc <PortConfig>
     628:	f7ff ff72 	bl	510 <TimerConfig>
     62c:	f000 f8dc 	bl	7e8 <uart_init>
     630:	f7ff ffa8 	bl	584 <mil_std_1533_init_bc>
     634:	46c0      	nop			; (mov r8, r8)
     636:	46bd      	mov	sp, r7
     638:	bd80      	pop	{r7, pc}
     63a:	46c0      	nop			; (mov r8, r8)

0000063c <SysTick_Handler>:
     63c:	b580      	push	{r7, lr}
     63e:	af00      	add	r7, sp, #0
     640:	4b03      	ldr	r3, [pc, #12]	; (650 <SysTick_Handler+0x14>)
     642:	681b      	ldr	r3, [r3, #0]
     644:	1c5a      	adds	r2, r3, #1
     646:	4b02      	ldr	r3, [pc, #8]	; (650 <SysTick_Handler+0x14>)
     648:	601a      	str	r2, [r3, #0]
     64a:	46c0      	nop			; (mov r8, r8)
     64c:	46bd      	mov	sp, r7
     64e:	bd80      	pop	{r7, pc}
     650:	20000048 	.word	0x20000048

00000654 <TIMER4_Handler>:
     654:	b580      	push	{r7, lr}
     656:	af00      	add	r7, sp, #0
     658:	4b24      	ldr	r3, [pc, #144]	; (6ec <TIMER4_Handler+0x98>)
     65a:	2200      	movs	r2, #0
     65c:	655a      	str	r2, [r3, #84]	; 0x54
     65e:	4b24      	ldr	r3, [pc, #144]	; (6f0 <TIMER4_Handler+0x9c>)
     660:	4a23      	ldr	r2, [pc, #140]	; (6f0 <TIMER4_Handler+0x9c>)
     662:	6812      	ldr	r2, [r2, #0]
     664:	2180      	movs	r1, #128	; 0x80
     666:	404a      	eors	r2, r1
     668:	601a      	str	r2, [r3, #0]
     66a:	4b22      	ldr	r3, [pc, #136]	; (6f4 <TIMER4_Handler+0xa0>)
     66c:	681b      	ldr	r3, [r3, #0]
     66e:	2b01      	cmp	r3, #1
     670:	d01d      	beq.n	6ae <TIMER4_Handler+0x5a>
     672:	2b02      	cmp	r3, #2
     674:	d000      	beq.n	678 <TIMER4_Handler+0x24>
     676:	e035      	b.n	6e4 <TIMER4_Handler+0x90>
     678:	4b1e      	ldr	r3, [pc, #120]	; (6f4 <TIMER4_Handler+0xa0>)
     67a:	681b      	ldr	r3, [r3, #0]
     67c:	1e5a      	subs	r2, r3, #1
     67e:	4b1d      	ldr	r3, [pc, #116]	; (6f4 <TIMER4_Handler+0xa0>)
     680:	601a      	str	r2, [r3, #0]
     682:	491d      	ldr	r1, [pc, #116]	; (6f8 <TIMER4_Handler+0xa4>)
     684:	4a1c      	ldr	r2, [pc, #112]	; (6f8 <TIMER4_Handler+0xa4>)
     686:	4b1d      	ldr	r3, [pc, #116]	; (6fc <TIMER4_Handler+0xa8>)
     688:	58d3      	ldr	r3, [r2, r3]
     68a:	4a1d      	ldr	r2, [pc, #116]	; (700 <TIMER4_Handler+0xac>)
     68c:	4313      	orrs	r3, r2
     68e:	4a1b      	ldr	r2, [pc, #108]	; (6fc <TIMER4_Handler+0xa8>)
     690:	508b      	str	r3, [r1, r2]
     692:	4919      	ldr	r1, [pc, #100]	; (6f8 <TIMER4_Handler+0xa4>)
     694:	4a18      	ldr	r2, [pc, #96]	; (6f8 <TIMER4_Handler+0xa4>)
     696:	2380      	movs	r3, #128	; 0x80
     698:	015b      	lsls	r3, r3, #5
     69a:	58d3      	ldr	r3, [r2, r3]
     69c:	2202      	movs	r2, #2
     69e:	431a      	orrs	r2, r3
     6a0:	2380      	movs	r3, #128	; 0x80
     6a2:	015b      	lsls	r3, r3, #5
     6a4:	50ca      	str	r2, [r1, r3]
     6a6:	4b17      	ldr	r3, [pc, #92]	; (704 <TIMER4_Handler+0xb0>)
     6a8:	4a17      	ldr	r2, [pc, #92]	; (708 <TIMER4_Handler+0xb4>)
     6aa:	601a      	str	r2, [r3, #0]
     6ac:	e01a      	b.n	6e4 <TIMER4_Handler+0x90>
     6ae:	4b11      	ldr	r3, [pc, #68]	; (6f4 <TIMER4_Handler+0xa0>)
     6b0:	681b      	ldr	r3, [r3, #0]
     6b2:	1e5a      	subs	r2, r3, #1
     6b4:	4b0f      	ldr	r3, [pc, #60]	; (6f4 <TIMER4_Handler+0xa0>)
     6b6:	601a      	str	r2, [r3, #0]
     6b8:	490f      	ldr	r1, [pc, #60]	; (6f8 <TIMER4_Handler+0xa4>)
     6ba:	4a0f      	ldr	r2, [pc, #60]	; (6f8 <TIMER4_Handler+0xa4>)
     6bc:	4b0f      	ldr	r3, [pc, #60]	; (6fc <TIMER4_Handler+0xa8>)
     6be:	58d3      	ldr	r3, [r2, r3]
     6c0:	4a12      	ldr	r2, [pc, #72]	; (70c <TIMER4_Handler+0xb8>)
     6c2:	4313      	orrs	r3, r2
     6c4:	4a0d      	ldr	r2, [pc, #52]	; (6fc <TIMER4_Handler+0xa8>)
     6c6:	508b      	str	r3, [r1, r2]
     6c8:	490b      	ldr	r1, [pc, #44]	; (6f8 <TIMER4_Handler+0xa4>)
     6ca:	4a0b      	ldr	r2, [pc, #44]	; (6f8 <TIMER4_Handler+0xa4>)
     6cc:	2380      	movs	r3, #128	; 0x80
     6ce:	015b      	lsls	r3, r3, #5
     6d0:	58d3      	ldr	r3, [r2, r3]
     6d2:	2202      	movs	r2, #2
     6d4:	431a      	orrs	r2, r3
     6d6:	2380      	movs	r3, #128	; 0x80
     6d8:	015b      	lsls	r3, r3, #5
     6da:	50ca      	str	r2, [r1, r3]
     6dc:	4b09      	ldr	r3, [pc, #36]	; (704 <TIMER4_Handler+0xb0>)
     6de:	4a0c      	ldr	r2, [pc, #48]	; (710 <TIMER4_Handler+0xbc>)
     6e0:	601a      	str	r2, [r3, #0]
     6e2:	46c0      	nop			; (mov r8, r8)
     6e4:	46c0      	nop			; (mov r8, r8)
     6e6:	46bd      	mov	sp, r7
     6e8:	bd80      	pop	{r7, pc}
     6ea:	46c0      	nop			; (mov r8, r8)
     6ec:	40098000 	.word	0x40098000
     6f0:	400c0000 	.word	0x400c0000
     6f4:	2000004c 	.word	0x2000004c
     6f8:	40048000 	.word	0x40048000
     6fc:	0000100c 	.word	0x0000100c
     700:	00004025 	.word	0x00004025
     704:	20000004 	.word	0x20000004
     708:	000000f9 	.word	0x000000f9
     70c:	00004420 	.word	0x00004420
     710:	00000105 	.word	0x00000105

00000714 <MIL_STD_1553B1_Handler>:
     714:	b580      	push	{r7, lr}
     716:	af00      	add	r7, sp, #0
     718:	4b02      	ldr	r3, [pc, #8]	; (724 <MIL_STD_1553B1_Handler+0x10>)
     71a:	681b      	ldr	r3, [r3, #0]
     71c:	4798      	blx	r3
     71e:	46c0      	nop			; (mov r8, r8)
     720:	46bd      	mov	sp, r7
     722:	bd80      	pop	{r7, pc}
     724:	20000004 	.word	0x20000004

00000728 <handler_reset>:
     728:	b580      	push	{r7, lr}
     72a:	b082      	sub	sp, #8
     72c:	af00      	add	r7, sp, #0
     72e:	4b11      	ldr	r3, [pc, #68]	; (774 <handler_reset+0x4c>)
     730:	607b      	str	r3, [r7, #4]
     732:	4b11      	ldr	r3, [pc, #68]	; (778 <handler_reset+0x50>)
     734:	603b      	str	r3, [r7, #0]
     736:	e007      	b.n	748 <handler_reset+0x20>
     738:	683b      	ldr	r3, [r7, #0]
     73a:	1d1a      	adds	r2, r3, #4
     73c:	603a      	str	r2, [r7, #0]
     73e:	687a      	ldr	r2, [r7, #4]
     740:	1d11      	adds	r1, r2, #4
     742:	6079      	str	r1, [r7, #4]
     744:	6812      	ldr	r2, [r2, #0]
     746:	601a      	str	r2, [r3, #0]
     748:	683a      	ldr	r2, [r7, #0]
     74a:	4b0c      	ldr	r3, [pc, #48]	; (77c <handler_reset+0x54>)
     74c:	429a      	cmp	r2, r3
     74e:	d3f3      	bcc.n	738 <handler_reset+0x10>
     750:	4b0b      	ldr	r3, [pc, #44]	; (780 <handler_reset+0x58>)
     752:	603b      	str	r3, [r7, #0]
     754:	e004      	b.n	760 <handler_reset+0x38>
     756:	683b      	ldr	r3, [r7, #0]
     758:	1d1a      	adds	r2, r3, #4
     75a:	603a      	str	r2, [r7, #0]
     75c:	2200      	movs	r2, #0
     75e:	601a      	str	r2, [r3, #0]
     760:	683a      	ldr	r2, [r7, #0]
     762:	4b08      	ldr	r3, [pc, #32]	; (784 <handler_reset+0x5c>)
     764:	429a      	cmp	r2, r3
     766:	d3f6      	bcc.n	756 <handler_reset+0x2e>
     768:	f7ff fd12 	bl	190 <main>
     76c:	46c0      	nop			; (mov r8, r8)
     76e:	46bd      	mov	sp, r7
     770:	b002      	add	sp, #8
     772:	bd80      	pop	{r7, pc}
     774:	00001454 	.word	0x00001454
     778:	20000000 	.word	0x20000000
     77c:	20000008 	.word	0x20000008
     780:	20000008 	.word	0x20000008
     784:	20004070 	.word	0x20004070

00000788 <default_handler>:
     788:	b580      	push	{r7, lr}
     78a:	af00      	add	r7, sp, #0
     78c:	e7fe      	b.n	78c <default_handler+0x4>
     78e:	46c0      	nop			; (mov r8, r8)

00000790 <NVIC_EnableIRQ>:
     790:	b580      	push	{r7, lr}
     792:	b082      	sub	sp, #8
     794:	af00      	add	r7, sp, #0
     796:	0002      	movs	r2, r0
     798:	1dfb      	adds	r3, r7, #7
     79a:	701a      	strb	r2, [r3, #0]
     79c:	4909      	ldr	r1, [pc, #36]	; (7c4 <NVIC_EnableIRQ+0x34>)
     79e:	1dfb      	adds	r3, r7, #7
     7a0:	781b      	ldrb	r3, [r3, #0]
     7a2:	b25b      	sxtb	r3, r3
     7a4:	095b      	lsrs	r3, r3, #5
     7a6:	1dfa      	adds	r2, r7, #7
     7a8:	7812      	ldrb	r2, [r2, #0]
     7aa:	0010      	movs	r0, r2
     7ac:	221f      	movs	r2, #31
     7ae:	4002      	ands	r2, r0
     7b0:	2001      	movs	r0, #1
     7b2:	4090      	lsls	r0, r2
     7b4:	0002      	movs	r2, r0
     7b6:	009b      	lsls	r3, r3, #2
     7b8:	505a      	str	r2, [r3, r1]
     7ba:	46c0      	nop			; (mov r8, r8)
     7bc:	46bd      	mov	sp, r7
     7be:	b002      	add	sp, #8
     7c0:	bd80      	pop	{r7, pc}
     7c2:	46c0      	nop			; (mov r8, r8)
     7c4:	e000e100 	.word	0xe000e100

000007c8 <uart_bsz>:
     7c8:	b580      	push	{r7, lr}
     7ca:	af00      	add	r7, sp, #0
     7cc:	4b04      	ldr	r3, [pc, #16]	; (7e0 <uart_bsz+0x18>)
     7ce:	681a      	ldr	r2, [r3, #0]
     7d0:	4b04      	ldr	r3, [pc, #16]	; (7e4 <uart_bsz+0x1c>)
     7d2:	681b      	ldr	r3, [r3, #0]
     7d4:	1ad3      	subs	r3, r2, r3
     7d6:	04db      	lsls	r3, r3, #19
     7d8:	0cdb      	lsrs	r3, r3, #19
     7da:	0018      	movs	r0, r3
     7dc:	46bd      	mov	sp, r7
     7de:	bd80      	pop	{r7, pc}
     7e0:	2000405c 	.word	0x2000405c
     7e4:	20004060 	.word	0x20004060

000007e8 <uart_init>:
     7e8:	b580      	push	{r7, lr}
     7ea:	af00      	add	r7, sp, #0
     7ec:	4b1b      	ldr	r3, [pc, #108]	; (85c <uart_init+0x74>)
     7ee:	4a1b      	ldr	r2, [pc, #108]	; (85c <uart_init+0x74>)
     7f0:	69d2      	ldr	r2, [r2, #28]
     7f2:	2180      	movs	r1, #128	; 0x80
     7f4:	430a      	orrs	r2, r1
     7f6:	61da      	str	r2, [r3, #28]
     7f8:	4b18      	ldr	r3, [pc, #96]	; (85c <uart_init+0x74>)
     7fa:	4a18      	ldr	r2, [pc, #96]	; (85c <uart_init+0x74>)
     7fc:	6a92      	ldr	r2, [r2, #40]	; 0x28
     7fe:	2180      	movs	r1, #128	; 0x80
     800:	0489      	lsls	r1, r1, #18
     802:	430a      	orrs	r2, r1
     804:	629a      	str	r2, [r3, #40]	; 0x28
     806:	4b16      	ldr	r3, [pc, #88]	; (860 <uart_init+0x78>)
     808:	2208      	movs	r2, #8
     80a:	625a      	str	r2, [r3, #36]	; 0x24
     80c:	4b14      	ldr	r3, [pc, #80]	; (860 <uart_init+0x78>)
     80e:	2209      	movs	r2, #9
     810:	629a      	str	r2, [r3, #40]	; 0x28
     812:	4b13      	ldr	r3, [pc, #76]	; (860 <uart_init+0x78>)
     814:	4a12      	ldr	r2, [pc, #72]	; (860 <uart_init+0x78>)
     816:	6b52      	ldr	r2, [r2, #52]	; 0x34
     818:	213f      	movs	r1, #63	; 0x3f
     81a:	438a      	bics	r2, r1
     81c:	635a      	str	r2, [r3, #52]	; 0x34
     81e:	4b10      	ldr	r3, [pc, #64]	; (860 <uart_init+0x78>)
     820:	4a0f      	ldr	r2, [pc, #60]	; (860 <uart_init+0x78>)
     822:	6b52      	ldr	r2, [r2, #52]	; 0x34
     824:	2124      	movs	r1, #36	; 0x24
     826:	430a      	orrs	r2, r1
     828:	635a      	str	r2, [r3, #52]	; 0x34
     82a:	4b0d      	ldr	r3, [pc, #52]	; (860 <uart_init+0x78>)
     82c:	4a0c      	ldr	r2, [pc, #48]	; (860 <uart_init+0x78>)
     82e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     830:	2160      	movs	r1, #96	; 0x60
     832:	430a      	orrs	r2, r1
     834:	62da      	str	r2, [r3, #44]	; 0x2c
     836:	4b0a      	ldr	r3, [pc, #40]	; (860 <uart_init+0x78>)
     838:	4a09      	ldr	r2, [pc, #36]	; (860 <uart_init+0x78>)
     83a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     83c:	4909      	ldr	r1, [pc, #36]	; (864 <uart_init+0x7c>)
     83e:	430a      	orrs	r2, r1
     840:	631a      	str	r2, [r3, #48]	; 0x30
     842:	4b07      	ldr	r3, [pc, #28]	; (860 <uart_init+0x78>)
     844:	4a06      	ldr	r2, [pc, #24]	; (860 <uart_init+0x78>)
     846:	6b92      	ldr	r2, [r2, #56]	; 0x38
     848:	2110      	movs	r1, #16
     84a:	430a      	orrs	r2, r1
     84c:	639a      	str	r2, [r3, #56]	; 0x38
     84e:	2007      	movs	r0, #7
     850:	f7ff ff9e 	bl	790 <NVIC_EnableIRQ>
     854:	46c0      	nop			; (mov r8, r8)
     856:	46bd      	mov	sp, r7
     858:	bd80      	pop	{r7, pc}
     85a:	46c0      	nop			; (mov r8, r8)
     85c:	40020000 	.word	0x40020000
     860:	40038000 	.word	0x40038000
     864:	00000301 	.word	0x00000301

00000868 <uart_putch>:
     868:	b580      	push	{r7, lr}
     86a:	b082      	sub	sp, #8
     86c:	af00      	add	r7, sp, #0
     86e:	0002      	movs	r2, r0
     870:	1dfb      	adds	r3, r7, #7
     872:	701a      	strb	r2, [r3, #0]
     874:	46c0      	nop			; (mov r8, r8)
     876:	4b06      	ldr	r3, [pc, #24]	; (890 <uart_putch+0x28>)
     878:	699b      	ldr	r3, [r3, #24]
     87a:	2220      	movs	r2, #32
     87c:	4013      	ands	r3, r2
     87e:	d1fa      	bne.n	876 <uart_putch+0xe>
     880:	4b03      	ldr	r3, [pc, #12]	; (890 <uart_putch+0x28>)
     882:	1dfa      	adds	r2, r7, #7
     884:	7812      	ldrb	r2, [r2, #0]
     886:	601a      	str	r2, [r3, #0]
     888:	46c0      	nop			; (mov r8, r8)
     88a:	46bd      	mov	sp, r7
     88c:	b002      	add	sp, #8
     88e:	bd80      	pop	{r7, pc}
     890:	40038000 	.word	0x40038000

00000894 <uart_read>:
     894:	b580      	push	{r7, lr}
     896:	b084      	sub	sp, #16
     898:	af00      	add	r7, sp, #0
     89a:	6078      	str	r0, [r7, #4]
     89c:	6039      	str	r1, [r7, #0]
     89e:	4b1f      	ldr	r3, [pc, #124]	; (91c <uart_read+0x88>)
     8a0:	681a      	ldr	r2, [r3, #0]
     8a2:	4b1f      	ldr	r3, [pc, #124]	; (920 <uart_read+0x8c>)
     8a4:	681b      	ldr	r3, [r3, #0]
     8a6:	429a      	cmp	r2, r3
     8a8:	d101      	bne.n	8ae <uart_read+0x1a>
     8aa:	2300      	movs	r3, #0
     8ac:	e031      	b.n	912 <uart_read+0x7e>
     8ae:	2300      	movs	r3, #0
     8b0:	60fb      	str	r3, [r7, #12]
     8b2:	e01b      	b.n	8ec <uart_read+0x58>
     8b4:	68fb      	ldr	r3, [r7, #12]
     8b6:	687a      	ldr	r2, [r7, #4]
     8b8:	18d2      	adds	r2, r2, r3
     8ba:	4b18      	ldr	r3, [pc, #96]	; (91c <uart_read+0x88>)
     8bc:	681b      	ldr	r3, [r3, #0]
     8be:	4919      	ldr	r1, [pc, #100]	; (924 <uart_read+0x90>)
     8c0:	5ccb      	ldrb	r3, [r1, r3]
     8c2:	7013      	strb	r3, [r2, #0]
     8c4:	4b15      	ldr	r3, [pc, #84]	; (91c <uart_read+0x88>)
     8c6:	681b      	ldr	r3, [r3, #0]
     8c8:	3301      	adds	r3, #1
     8ca:	04db      	lsls	r3, r3, #19
     8cc:	0cda      	lsrs	r2, r3, #19
     8ce:	4b13      	ldr	r3, [pc, #76]	; (91c <uart_read+0x88>)
     8d0:	601a      	str	r2, [r3, #0]
     8d2:	4b12      	ldr	r3, [pc, #72]	; (91c <uart_read+0x88>)
     8d4:	681a      	ldr	r2, [r3, #0]
     8d6:	4b12      	ldr	r3, [pc, #72]	; (920 <uart_read+0x8c>)
     8d8:	681b      	ldr	r3, [r3, #0]
     8da:	429a      	cmp	r2, r3
     8dc:	d103      	bne.n	8e6 <uart_read+0x52>
     8de:	68fb      	ldr	r3, [r7, #12]
     8e0:	3301      	adds	r3, #1
     8e2:	60fb      	str	r3, [r7, #12]
     8e4:	e006      	b.n	8f4 <uart_read+0x60>
     8e6:	68fb      	ldr	r3, [r7, #12]
     8e8:	3301      	adds	r3, #1
     8ea:	60fb      	str	r3, [r7, #12]
     8ec:	68fa      	ldr	r2, [r7, #12]
     8ee:	683b      	ldr	r3, [r7, #0]
     8f0:	429a      	cmp	r2, r3
     8f2:	dbdf      	blt.n	8b4 <uart_read+0x20>
     8f4:	f7ff ff68 	bl	7c8 <uart_bsz>
     8f8:	0003      	movs	r3, r0
     8fa:	60bb      	str	r3, [r7, #8]
     8fc:	68bb      	ldr	r3, [r7, #8]
     8fe:	4a0a      	ldr	r2, [pc, #40]	; (928 <uart_read+0x94>)
     900:	4293      	cmp	r3, r2
     902:	dc05      	bgt.n	910 <uart_read+0x7c>
     904:	4b09      	ldr	r3, [pc, #36]	; (92c <uart_read+0x98>)
     906:	4a09      	ldr	r2, [pc, #36]	; (92c <uart_read+0x98>)
     908:	6852      	ldr	r2, [r2, #4]
     90a:	2180      	movs	r1, #128	; 0x80
     90c:	430a      	orrs	r2, r1
     90e:	605a      	str	r2, [r3, #4]
     910:	68fb      	ldr	r3, [r7, #12]
     912:	0018      	movs	r0, r3
     914:	46bd      	mov	sp, r7
     916:	b004      	add	sp, #16
     918:	bd80      	pop	{r7, pc}
     91a:	46c0      	nop			; (mov r8, r8)
     91c:	20004060 	.word	0x20004060
     920:	2000405c 	.word	0x2000405c
     924:	2000205c 	.word	0x2000205c
     928:	00001b57 	.word	0x00001b57
     92c:	400c8000 	.word	0x400c8000

00000930 <uart_send>:
     930:	b580      	push	{r7, lr}
     932:	b084      	sub	sp, #16
     934:	af00      	add	r7, sp, #0
     936:	6078      	str	r0, [r7, #4]
     938:	6039      	str	r1, [r7, #0]
     93a:	2300      	movs	r3, #0
     93c:	60fb      	str	r3, [r7, #12]
     93e:	e01b      	b.n	978 <uart_send+0x48>
     940:	4b1e      	ldr	r3, [pc, #120]	; (9bc <uart_send+0x8c>)
     942:	681b      	ldr	r3, [r3, #0]
     944:	68fa      	ldr	r2, [r7, #12]
     946:	6879      	ldr	r1, [r7, #4]
     948:	188a      	adds	r2, r1, r2
     94a:	7811      	ldrb	r1, [r2, #0]
     94c:	4a1c      	ldr	r2, [pc, #112]	; (9c0 <uart_send+0x90>)
     94e:	54d1      	strb	r1, [r2, r3]
     950:	4b1a      	ldr	r3, [pc, #104]	; (9bc <uart_send+0x8c>)
     952:	681b      	ldr	r3, [r3, #0]
     954:	3301      	adds	r3, #1
     956:	04db      	lsls	r3, r3, #19
     958:	0cda      	lsrs	r2, r3, #19
     95a:	4b18      	ldr	r3, [pc, #96]	; (9bc <uart_send+0x8c>)
     95c:	601a      	str	r2, [r3, #0]
     95e:	4b17      	ldr	r3, [pc, #92]	; (9bc <uart_send+0x8c>)
     960:	681a      	ldr	r2, [r3, #0]
     962:	4b18      	ldr	r3, [pc, #96]	; (9c4 <uart_send+0x94>)
     964:	681b      	ldr	r3, [r3, #0]
     966:	429a      	cmp	r2, r3
     968:	d103      	bne.n	972 <uart_send+0x42>
     96a:	68fb      	ldr	r3, [r7, #12]
     96c:	3301      	adds	r3, #1
     96e:	60fb      	str	r3, [r7, #12]
     970:	e006      	b.n	980 <uart_send+0x50>
     972:	68fb      	ldr	r3, [r7, #12]
     974:	3301      	adds	r3, #1
     976:	60fb      	str	r3, [r7, #12]
     978:	68fa      	ldr	r2, [r7, #12]
     97a:	683b      	ldr	r3, [r7, #0]
     97c:	429a      	cmp	r2, r3
     97e:	dbdf      	blt.n	940 <uart_send+0x10>
     980:	4b11      	ldr	r3, [pc, #68]	; (9c8 <uart_send+0x98>)
     982:	699b      	ldr	r3, [r3, #24]
     984:	2208      	movs	r2, #8
     986:	4013      	ands	r3, r2
     988:	d10c      	bne.n	9a4 <uart_send+0x74>
     98a:	4a0f      	ldr	r2, [pc, #60]	; (9c8 <uart_send+0x98>)
     98c:	4b0d      	ldr	r3, [pc, #52]	; (9c4 <uart_send+0x94>)
     98e:	681b      	ldr	r3, [r3, #0]
     990:	490b      	ldr	r1, [pc, #44]	; (9c0 <uart_send+0x90>)
     992:	5ccb      	ldrb	r3, [r1, r3]
     994:	6013      	str	r3, [r2, #0]
     996:	4b0b      	ldr	r3, [pc, #44]	; (9c4 <uart_send+0x94>)
     998:	681b      	ldr	r3, [r3, #0]
     99a:	3301      	adds	r3, #1
     99c:	04db      	lsls	r3, r3, #19
     99e:	0cda      	lsrs	r2, r3, #19
     9a0:	4b08      	ldr	r3, [pc, #32]	; (9c4 <uart_send+0x94>)
     9a2:	601a      	str	r2, [r3, #0]
     9a4:	4b08      	ldr	r3, [pc, #32]	; (9c8 <uart_send+0x98>)
     9a6:	4a08      	ldr	r2, [pc, #32]	; (9c8 <uart_send+0x98>)
     9a8:	6b92      	ldr	r2, [r2, #56]	; 0x38
     9aa:	2120      	movs	r1, #32
     9ac:	430a      	orrs	r2, r1
     9ae:	639a      	str	r2, [r3, #56]	; 0x38
     9b0:	68fb      	ldr	r3, [r7, #12]
     9b2:	0018      	movs	r0, r3
     9b4:	46bd      	mov	sp, r7
     9b6:	b004      	add	sp, #16
     9b8:	bd80      	pop	{r7, pc}
     9ba:	46c0      	nop			; (mov r8, r8)
     9bc:	20002058 	.word	0x20002058
     9c0:	20000054 	.word	0x20000054
     9c4:	20002054 	.word	0x20002054
     9c8:	40038000 	.word	0x40038000

000009cc <UART2_Handler>:
     9cc:	b580      	push	{r7, lr}
     9ce:	b082      	sub	sp, #8
     9d0:	af00      	add	r7, sp, #0
     9d2:	4b22      	ldr	r3, [pc, #136]	; (a5c <UART2_Handler+0x90>)
     9d4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     9d6:	2220      	movs	r2, #32
     9d8:	4013      	ands	r3, r2
     9da:	d019      	beq.n	a10 <UART2_Handler+0x44>
     9dc:	4b20      	ldr	r3, [pc, #128]	; (a60 <UART2_Handler+0x94>)
     9de:	681a      	ldr	r2, [r3, #0]
     9e0:	4b20      	ldr	r3, [pc, #128]	; (a64 <UART2_Handler+0x98>)
     9e2:	681b      	ldr	r3, [r3, #0]
     9e4:	429a      	cmp	r2, r3
     9e6:	d106      	bne.n	9f6 <UART2_Handler+0x2a>
     9e8:	4b1c      	ldr	r3, [pc, #112]	; (a5c <UART2_Handler+0x90>)
     9ea:	4a1c      	ldr	r2, [pc, #112]	; (a5c <UART2_Handler+0x90>)
     9ec:	6b92      	ldr	r2, [r2, #56]	; 0x38
     9ee:	2120      	movs	r1, #32
     9f0:	438a      	bics	r2, r1
     9f2:	639a      	str	r2, [r3, #56]	; 0x38
     9f4:	e00c      	b.n	a10 <UART2_Handler+0x44>
     9f6:	4a19      	ldr	r2, [pc, #100]	; (a5c <UART2_Handler+0x90>)
     9f8:	4b19      	ldr	r3, [pc, #100]	; (a60 <UART2_Handler+0x94>)
     9fa:	681b      	ldr	r3, [r3, #0]
     9fc:	491a      	ldr	r1, [pc, #104]	; (a68 <UART2_Handler+0x9c>)
     9fe:	5ccb      	ldrb	r3, [r1, r3]
     a00:	6013      	str	r3, [r2, #0]
     a02:	4b17      	ldr	r3, [pc, #92]	; (a60 <UART2_Handler+0x94>)
     a04:	681b      	ldr	r3, [r3, #0]
     a06:	3301      	adds	r3, #1
     a08:	04db      	lsls	r3, r3, #19
     a0a:	0cda      	lsrs	r2, r3, #19
     a0c:	4b14      	ldr	r3, [pc, #80]	; (a60 <UART2_Handler+0x94>)
     a0e:	601a      	str	r2, [r3, #0]
     a10:	4b12      	ldr	r3, [pc, #72]	; (a5c <UART2_Handler+0x90>)
     a12:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     a14:	2210      	movs	r2, #16
     a16:	4013      	ands	r3, r2
     a18:	d01b      	beq.n	a52 <UART2_Handler+0x86>
     a1a:	4b14      	ldr	r3, [pc, #80]	; (a6c <UART2_Handler+0xa0>)
     a1c:	681a      	ldr	r2, [r3, #0]
     a1e:	4b0f      	ldr	r3, [pc, #60]	; (a5c <UART2_Handler+0x90>)
     a20:	681b      	ldr	r3, [r3, #0]
     a22:	b2d9      	uxtb	r1, r3
     a24:	4b12      	ldr	r3, [pc, #72]	; (a70 <UART2_Handler+0xa4>)
     a26:	5499      	strb	r1, [r3, r2]
     a28:	4b10      	ldr	r3, [pc, #64]	; (a6c <UART2_Handler+0xa0>)
     a2a:	681b      	ldr	r3, [r3, #0]
     a2c:	3301      	adds	r3, #1
     a2e:	04db      	lsls	r3, r3, #19
     a30:	0cda      	lsrs	r2, r3, #19
     a32:	4b0e      	ldr	r3, [pc, #56]	; (a6c <UART2_Handler+0xa0>)
     a34:	601a      	str	r2, [r3, #0]
     a36:	f7ff fec7 	bl	7c8 <uart_bsz>
     a3a:	0003      	movs	r3, r0
     a3c:	607b      	str	r3, [r7, #4]
     a3e:	687b      	ldr	r3, [r7, #4]
     a40:	4a0c      	ldr	r2, [pc, #48]	; (a74 <UART2_Handler+0xa8>)
     a42:	4293      	cmp	r3, r2
     a44:	dd05      	ble.n	a52 <UART2_Handler+0x86>
     a46:	4b0c      	ldr	r3, [pc, #48]	; (a78 <UART2_Handler+0xac>)
     a48:	4a0b      	ldr	r2, [pc, #44]	; (a78 <UART2_Handler+0xac>)
     a4a:	6852      	ldr	r2, [r2, #4]
     a4c:	2180      	movs	r1, #128	; 0x80
     a4e:	438a      	bics	r2, r1
     a50:	605a      	str	r2, [r3, #4]
     a52:	46c0      	nop			; (mov r8, r8)
     a54:	46bd      	mov	sp, r7
     a56:	b002      	add	sp, #8
     a58:	bd80      	pop	{r7, pc}
     a5a:	46c0      	nop			; (mov r8, r8)
     a5c:	40038000 	.word	0x40038000
     a60:	20002054 	.word	0x20002054
     a64:	20002058 	.word	0x20002058
     a68:	20000054 	.word	0x20000054
     a6c:	2000405c 	.word	0x2000405c
     a70:	2000205c 	.word	0x2000205c
     a74:	00001d4c 	.word	0x00001d4c
     a78:	400c8000 	.word	0x400c8000

00000a7c <xputc>:
     a7c:	b580      	push	{r7, lr}
     a7e:	b082      	sub	sp, #8
     a80:	af00      	add	r7, sp, #0
     a82:	0002      	movs	r2, r0
     a84:	1dfb      	adds	r3, r7, #7
     a86:	701a      	strb	r2, [r3, #0]
     a88:	1dfb      	adds	r3, r7, #7
     a8a:	781b      	ldrb	r3, [r3, #0]
     a8c:	2b0a      	cmp	r3, #10
     a8e:	d102      	bne.n	a96 <xputc+0x1a>
     a90:	200d      	movs	r0, #13
     a92:	f7ff fff3 	bl	a7c <xputc>
     a96:	4b0d      	ldr	r3, [pc, #52]	; (acc <xputc+0x50>)
     a98:	681b      	ldr	r3, [r3, #0]
     a9a:	2b00      	cmp	r3, #0
     a9c:	d008      	beq.n	ab0 <xputc+0x34>
     a9e:	4b0b      	ldr	r3, [pc, #44]	; (acc <xputc+0x50>)
     aa0:	681b      	ldr	r3, [r3, #0]
     aa2:	1c59      	adds	r1, r3, #1
     aa4:	4a09      	ldr	r2, [pc, #36]	; (acc <xputc+0x50>)
     aa6:	6011      	str	r1, [r2, #0]
     aa8:	1dfa      	adds	r2, r7, #7
     aaa:	7812      	ldrb	r2, [r2, #0]
     aac:	701a      	strb	r2, [r3, #0]
     aae:	e009      	b.n	ac4 <xputc+0x48>
     ab0:	4b07      	ldr	r3, [pc, #28]	; (ad0 <xputc+0x54>)
     ab2:	681b      	ldr	r3, [r3, #0]
     ab4:	2b00      	cmp	r3, #0
     ab6:	d005      	beq.n	ac4 <xputc+0x48>
     ab8:	4b05      	ldr	r3, [pc, #20]	; (ad0 <xputc+0x54>)
     aba:	681b      	ldr	r3, [r3, #0]
     abc:	1dfa      	adds	r2, r7, #7
     abe:	7812      	ldrb	r2, [r2, #0]
     ac0:	0010      	movs	r0, r2
     ac2:	4798      	blx	r3
     ac4:	46bd      	mov	sp, r7
     ac6:	b002      	add	sp, #8
     ac8:	bd80      	pop	{r7, pc}
     aca:	46c0      	nop			; (mov r8, r8)
     acc:	20004068 	.word	0x20004068
     ad0:	20004064 	.word	0x20004064

00000ad4 <xputs>:
     ad4:	b580      	push	{r7, lr}
     ad6:	b082      	sub	sp, #8
     ad8:	af00      	add	r7, sp, #0
     ada:	6078      	str	r0, [r7, #4]
     adc:	e006      	b.n	aec <xputs+0x18>
     ade:	687b      	ldr	r3, [r7, #4]
     ae0:	1c5a      	adds	r2, r3, #1
     ae2:	607a      	str	r2, [r7, #4]
     ae4:	781b      	ldrb	r3, [r3, #0]
     ae6:	0018      	movs	r0, r3
     ae8:	f7ff ffc8 	bl	a7c <xputc>
     aec:	687b      	ldr	r3, [r7, #4]
     aee:	781b      	ldrb	r3, [r3, #0]
     af0:	2b00      	cmp	r3, #0
     af2:	d1f4      	bne.n	ade <xputs+0xa>
     af4:	46c0      	nop			; (mov r8, r8)
     af6:	46bd      	mov	sp, r7
     af8:	b002      	add	sp, #8
     afa:	bd80      	pop	{r7, pc}

00000afc <xfputs>:
     afc:	b580      	push	{r7, lr}
     afe:	b084      	sub	sp, #16
     b00:	af00      	add	r7, sp, #0
     b02:	6078      	str	r0, [r7, #4]
     b04:	6039      	str	r1, [r7, #0]
     b06:	4b0c      	ldr	r3, [pc, #48]	; (b38 <xfputs+0x3c>)
     b08:	681b      	ldr	r3, [r3, #0]
     b0a:	60fb      	str	r3, [r7, #12]
     b0c:	4b0a      	ldr	r3, [pc, #40]	; (b38 <xfputs+0x3c>)
     b0e:	687a      	ldr	r2, [r7, #4]
     b10:	601a      	str	r2, [r3, #0]
     b12:	e006      	b.n	b22 <xfputs+0x26>
     b14:	683b      	ldr	r3, [r7, #0]
     b16:	1c5a      	adds	r2, r3, #1
     b18:	603a      	str	r2, [r7, #0]
     b1a:	781b      	ldrb	r3, [r3, #0]
     b1c:	0018      	movs	r0, r3
     b1e:	f7ff ffad 	bl	a7c <xputc>
     b22:	683b      	ldr	r3, [r7, #0]
     b24:	781b      	ldrb	r3, [r3, #0]
     b26:	2b00      	cmp	r3, #0
     b28:	d1f4      	bne.n	b14 <xfputs+0x18>
     b2a:	4b03      	ldr	r3, [pc, #12]	; (b38 <xfputs+0x3c>)
     b2c:	68fa      	ldr	r2, [r7, #12]
     b2e:	601a      	str	r2, [r3, #0]
     b30:	46c0      	nop			; (mov r8, r8)
     b32:	46bd      	mov	sp, r7
     b34:	b004      	add	sp, #16
     b36:	bd80      	pop	{r7, pc}
     b38:	20004064 	.word	0x20004064

00000b3c <xvprintf>:
     b3c:	b580      	push	{r7, lr}
     b3e:	b08e      	sub	sp, #56	; 0x38
     b40:	af00      	add	r7, sp, #0
     b42:	6078      	str	r0, [r7, #4]
     b44:	6039      	str	r1, [r7, #0]
     b46:	687b      	ldr	r3, [r7, #4]
     b48:	1c5a      	adds	r2, r3, #1
     b4a:	607a      	str	r2, [r7, #4]
     b4c:	221f      	movs	r2, #31
     b4e:	18ba      	adds	r2, r7, r2
     b50:	781b      	ldrb	r3, [r3, #0]
     b52:	7013      	strb	r3, [r2, #0]
     b54:	231f      	movs	r3, #31
     b56:	18fb      	adds	r3, r7, r3
     b58:	781b      	ldrb	r3, [r3, #0]
     b5a:	2b00      	cmp	r3, #0
     b5c:	d100      	bne.n	b60 <xvprintf+0x24>
     b5e:	e172      	b.n	e46 <xvprintf+0x30a>
     b60:	231f      	movs	r3, #31
     b62:	18fb      	adds	r3, r7, r3
     b64:	781b      	ldrb	r3, [r3, #0]
     b66:	2b25      	cmp	r3, #37	; 0x25
     b68:	d006      	beq.n	b78 <xvprintf+0x3c>
     b6a:	231f      	movs	r3, #31
     b6c:	18fb      	adds	r3, r7, r3
     b6e:	781b      	ldrb	r3, [r3, #0]
     b70:	0018      	movs	r0, r3
     b72:	f7ff ff83 	bl	a7c <xputc>
     b76:	e165      	b.n	e44 <xvprintf+0x308>
     b78:	2300      	movs	r3, #0
     b7a:	627b      	str	r3, [r7, #36]	; 0x24
     b7c:	687b      	ldr	r3, [r7, #4]
     b7e:	1c5a      	adds	r2, r3, #1
     b80:	607a      	str	r2, [r7, #4]
     b82:	221f      	movs	r2, #31
     b84:	18ba      	adds	r2, r7, r2
     b86:	781b      	ldrb	r3, [r3, #0]
     b88:	7013      	strb	r3, [r2, #0]
     b8a:	231f      	movs	r3, #31
     b8c:	18fb      	adds	r3, r7, r3
     b8e:	781b      	ldrb	r3, [r3, #0]
     b90:	2b30      	cmp	r3, #48	; 0x30
     b92:	d109      	bne.n	ba8 <xvprintf+0x6c>
     b94:	2301      	movs	r3, #1
     b96:	627b      	str	r3, [r7, #36]	; 0x24
     b98:	687b      	ldr	r3, [r7, #4]
     b9a:	1c5a      	adds	r2, r3, #1
     b9c:	607a      	str	r2, [r7, #4]
     b9e:	221f      	movs	r2, #31
     ba0:	18ba      	adds	r2, r7, r2
     ba2:	781b      	ldrb	r3, [r3, #0]
     ba4:	7013      	strb	r3, [r2, #0]
     ba6:	e00d      	b.n	bc4 <xvprintf+0x88>
     ba8:	231f      	movs	r3, #31
     baa:	18fb      	adds	r3, r7, r3
     bac:	781b      	ldrb	r3, [r3, #0]
     bae:	2b2d      	cmp	r3, #45	; 0x2d
     bb0:	d108      	bne.n	bc4 <xvprintf+0x88>
     bb2:	2302      	movs	r3, #2
     bb4:	627b      	str	r3, [r7, #36]	; 0x24
     bb6:	687b      	ldr	r3, [r7, #4]
     bb8:	1c5a      	adds	r2, r3, #1
     bba:	607a      	str	r2, [r7, #4]
     bbc:	221f      	movs	r2, #31
     bbe:	18ba      	adds	r2, r7, r2
     bc0:	781b      	ldrb	r3, [r3, #0]
     bc2:	7013      	strb	r3, [r2, #0]
     bc4:	2300      	movs	r3, #0
     bc6:	62bb      	str	r3, [r7, #40]	; 0x28
     bc8:	e012      	b.n	bf0 <xvprintf+0xb4>
     bca:	6aba      	ldr	r2, [r7, #40]	; 0x28
     bcc:	0013      	movs	r3, r2
     bce:	009b      	lsls	r3, r3, #2
     bd0:	189b      	adds	r3, r3, r2
     bd2:	005b      	lsls	r3, r3, #1
     bd4:	001a      	movs	r2, r3
     bd6:	231f      	movs	r3, #31
     bd8:	18fb      	adds	r3, r7, r3
     bda:	781b      	ldrb	r3, [r3, #0]
     bdc:	18d3      	adds	r3, r2, r3
     bde:	3b30      	subs	r3, #48	; 0x30
     be0:	62bb      	str	r3, [r7, #40]	; 0x28
     be2:	687b      	ldr	r3, [r7, #4]
     be4:	1c5a      	adds	r2, r3, #1
     be6:	607a      	str	r2, [r7, #4]
     be8:	221f      	movs	r2, #31
     bea:	18ba      	adds	r2, r7, r2
     bec:	781b      	ldrb	r3, [r3, #0]
     bee:	7013      	strb	r3, [r2, #0]
     bf0:	231f      	movs	r3, #31
     bf2:	18fb      	adds	r3, r7, r3
     bf4:	781b      	ldrb	r3, [r3, #0]
     bf6:	2b2f      	cmp	r3, #47	; 0x2f
     bf8:	d904      	bls.n	c04 <xvprintf+0xc8>
     bfa:	231f      	movs	r3, #31
     bfc:	18fb      	adds	r3, r7, r3
     bfe:	781b      	ldrb	r3, [r3, #0]
     c00:	2b39      	cmp	r3, #57	; 0x39
     c02:	d9e2      	bls.n	bca <xvprintf+0x8e>
     c04:	231f      	movs	r3, #31
     c06:	18fb      	adds	r3, r7, r3
     c08:	781b      	ldrb	r3, [r3, #0]
     c0a:	2b6c      	cmp	r3, #108	; 0x6c
     c0c:	d004      	beq.n	c18 <xvprintf+0xdc>
     c0e:	231f      	movs	r3, #31
     c10:	18fb      	adds	r3, r7, r3
     c12:	781b      	ldrb	r3, [r3, #0]
     c14:	2b4c      	cmp	r3, #76	; 0x4c
     c16:	d10a      	bne.n	c2e <xvprintf+0xf2>
     c18:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     c1a:	2204      	movs	r2, #4
     c1c:	4313      	orrs	r3, r2
     c1e:	627b      	str	r3, [r7, #36]	; 0x24
     c20:	687b      	ldr	r3, [r7, #4]
     c22:	1c5a      	adds	r2, r3, #1
     c24:	607a      	str	r2, [r7, #4]
     c26:	221f      	movs	r2, #31
     c28:	18ba      	adds	r2, r7, r2
     c2a:	781b      	ldrb	r3, [r3, #0]
     c2c:	7013      	strb	r3, [r2, #0]
     c2e:	231f      	movs	r3, #31
     c30:	18fb      	adds	r3, r7, r3
     c32:	781b      	ldrb	r3, [r3, #0]
     c34:	2b00      	cmp	r3, #0
     c36:	d100      	bne.n	c3a <xvprintf+0xfe>
     c38:	e107      	b.n	e4a <xvprintf+0x30e>
     c3a:	231e      	movs	r3, #30
     c3c:	18fb      	adds	r3, r7, r3
     c3e:	221f      	movs	r2, #31
     c40:	18ba      	adds	r2, r7, r2
     c42:	7812      	ldrb	r2, [r2, #0]
     c44:	701a      	strb	r2, [r3, #0]
     c46:	231e      	movs	r3, #30
     c48:	18fb      	adds	r3, r7, r3
     c4a:	781b      	ldrb	r3, [r3, #0]
     c4c:	2b60      	cmp	r3, #96	; 0x60
     c4e:	d906      	bls.n	c5e <xvprintf+0x122>
     c50:	231e      	movs	r3, #30
     c52:	18fb      	adds	r3, r7, r3
     c54:	221e      	movs	r2, #30
     c56:	18ba      	adds	r2, r7, r2
     c58:	7812      	ldrb	r2, [r2, #0]
     c5a:	3a20      	subs	r2, #32
     c5c:	701a      	strb	r2, [r3, #0]
     c5e:	231e      	movs	r3, #30
     c60:	18fb      	adds	r3, r7, r3
     c62:	781b      	ldrb	r3, [r3, #0]
     c64:	3b42      	subs	r3, #66	; 0x42
     c66:	2b16      	cmp	r3, #22
     c68:	d847      	bhi.n	cfa <xvprintf+0x1be>
     c6a:	009a      	lsls	r2, r3, #2
     c6c:	4b79      	ldr	r3, [pc, #484]	; (e54 <xvprintf+0x318>)
     c6e:	18d3      	adds	r3, r2, r3
     c70:	681b      	ldr	r3, [r3, #0]
     c72:	469f      	mov	pc, r3
     c74:	683b      	ldr	r3, [r7, #0]
     c76:	1d1a      	adds	r2, r3, #4
     c78:	603a      	str	r2, [r7, #0]
     c7a:	681b      	ldr	r3, [r3, #0]
     c7c:	61bb      	str	r3, [r7, #24]
     c7e:	2300      	movs	r3, #0
     c80:	62fb      	str	r3, [r7, #44]	; 0x2c
     c82:	e002      	b.n	c8a <xvprintf+0x14e>
     c84:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     c86:	3301      	adds	r3, #1
     c88:	62fb      	str	r3, [r7, #44]	; 0x2c
     c8a:	69ba      	ldr	r2, [r7, #24]
     c8c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     c8e:	18d3      	adds	r3, r2, r3
     c90:	781b      	ldrb	r3, [r3, #0]
     c92:	2b00      	cmp	r3, #0
     c94:	d1f6      	bne.n	c84 <xvprintf+0x148>
     c96:	e002      	b.n	c9e <xvprintf+0x162>
     c98:	2020      	movs	r0, #32
     c9a:	f7ff feef 	bl	a7c <xputc>
     c9e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     ca0:	2202      	movs	r2, #2
     ca2:	4013      	ands	r3, r2
     ca4:	d105      	bne.n	cb2 <xvprintf+0x176>
     ca6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     ca8:	1c5a      	adds	r2, r3, #1
     caa:	62fa      	str	r2, [r7, #44]	; 0x2c
     cac:	6aba      	ldr	r2, [r7, #40]	; 0x28
     cae:	4293      	cmp	r3, r2
     cb0:	d3f2      	bcc.n	c98 <xvprintf+0x15c>
     cb2:	69bb      	ldr	r3, [r7, #24]
     cb4:	0018      	movs	r0, r3
     cb6:	f7ff ff0d 	bl	ad4 <xputs>
     cba:	e002      	b.n	cc2 <xvprintf+0x186>
     cbc:	2020      	movs	r0, #32
     cbe:	f7ff fedd 	bl	a7c <xputc>
     cc2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     cc4:	1c5a      	adds	r2, r3, #1
     cc6:	62fa      	str	r2, [r7, #44]	; 0x2c
     cc8:	6aba      	ldr	r2, [r7, #40]	; 0x28
     cca:	4293      	cmp	r3, r2
     ccc:	d3f6      	bcc.n	cbc <xvprintf+0x180>
     cce:	e0b9      	b.n	e44 <xvprintf+0x308>
     cd0:	683b      	ldr	r3, [r7, #0]
     cd2:	1d1a      	adds	r2, r3, #4
     cd4:	603a      	str	r2, [r7, #0]
     cd6:	681b      	ldr	r3, [r3, #0]
     cd8:	b2db      	uxtb	r3, r3
     cda:	0018      	movs	r0, r3
     cdc:	f7ff fece 	bl	a7c <xputc>
     ce0:	e0b0      	b.n	e44 <xvprintf+0x308>
     ce2:	2302      	movs	r3, #2
     ce4:	637b      	str	r3, [r7, #52]	; 0x34
     ce6:	e00f      	b.n	d08 <xvprintf+0x1cc>
     ce8:	2308      	movs	r3, #8
     cea:	637b      	str	r3, [r7, #52]	; 0x34
     cec:	e00c      	b.n	d08 <xvprintf+0x1cc>
     cee:	230a      	movs	r3, #10
     cf0:	637b      	str	r3, [r7, #52]	; 0x34
     cf2:	e009      	b.n	d08 <xvprintf+0x1cc>
     cf4:	2310      	movs	r3, #16
     cf6:	637b      	str	r3, [r7, #52]	; 0x34
     cf8:	e006      	b.n	d08 <xvprintf+0x1cc>
     cfa:	231f      	movs	r3, #31
     cfc:	18fb      	adds	r3, r7, r3
     cfe:	781b      	ldrb	r3, [r3, #0]
     d00:	0018      	movs	r0, r3
     d02:	f7ff febb 	bl	a7c <xputc>
     d06:	e09d      	b.n	e44 <xvprintf+0x308>
     d08:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     d0a:	2204      	movs	r2, #4
     d0c:	4013      	ands	r3, r2
     d0e:	d004      	beq.n	d1a <xvprintf+0x1de>
     d10:	683b      	ldr	r3, [r7, #0]
     d12:	1d1a      	adds	r2, r3, #4
     d14:	603a      	str	r2, [r7, #0]
     d16:	681b      	ldr	r3, [r3, #0]
     d18:	e00d      	b.n	d36 <xvprintf+0x1fa>
     d1a:	231e      	movs	r3, #30
     d1c:	18fb      	adds	r3, r7, r3
     d1e:	781b      	ldrb	r3, [r3, #0]
     d20:	2b44      	cmp	r3, #68	; 0x44
     d22:	d104      	bne.n	d2e <xvprintf+0x1f2>
     d24:	683b      	ldr	r3, [r7, #0]
     d26:	1d1a      	adds	r2, r3, #4
     d28:	603a      	str	r2, [r7, #0]
     d2a:	681b      	ldr	r3, [r3, #0]
     d2c:	e003      	b.n	d36 <xvprintf+0x1fa>
     d2e:	683b      	ldr	r3, [r7, #0]
     d30:	1d1a      	adds	r2, r3, #4
     d32:	603a      	str	r2, [r7, #0]
     d34:	681b      	ldr	r3, [r3, #0]
     d36:	623b      	str	r3, [r7, #32]
     d38:	231e      	movs	r3, #30
     d3a:	18fb      	adds	r3, r7, r3
     d3c:	781b      	ldrb	r3, [r3, #0]
     d3e:	2b44      	cmp	r3, #68	; 0x44
     d40:	d109      	bne.n	d56 <xvprintf+0x21a>
     d42:	6a3b      	ldr	r3, [r7, #32]
     d44:	2b00      	cmp	r3, #0
     d46:	da06      	bge.n	d56 <xvprintf+0x21a>
     d48:	6a3b      	ldr	r3, [r7, #32]
     d4a:	425b      	negs	r3, r3
     d4c:	623b      	str	r3, [r7, #32]
     d4e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     d50:	2208      	movs	r2, #8
     d52:	4313      	orrs	r3, r2
     d54:	627b      	str	r3, [r7, #36]	; 0x24
     d56:	2300      	movs	r3, #0
     d58:	633b      	str	r3, [r7, #48]	; 0x30
     d5a:	6a3b      	ldr	r3, [r7, #32]
     d5c:	6b79      	ldr	r1, [r7, #52]	; 0x34
     d5e:	0018      	movs	r0, r3
     d60:	f000 fb34 	bl	13cc <__aeabi_uidivmod>
     d64:	000b      	movs	r3, r1
     d66:	001a      	movs	r2, r3
     d68:	231e      	movs	r3, #30
     d6a:	18fb      	adds	r3, r7, r3
     d6c:	701a      	strb	r2, [r3, #0]
     d6e:	6b79      	ldr	r1, [r7, #52]	; 0x34
     d70:	6a38      	ldr	r0, [r7, #32]
     d72:	f000 faa5 	bl	12c0 <__aeabi_uidiv>
     d76:	0003      	movs	r3, r0
     d78:	623b      	str	r3, [r7, #32]
     d7a:	231e      	movs	r3, #30
     d7c:	18fb      	adds	r3, r7, r3
     d7e:	781b      	ldrb	r3, [r3, #0]
     d80:	2b09      	cmp	r3, #9
     d82:	d90e      	bls.n	da2 <xvprintf+0x266>
     d84:	231f      	movs	r3, #31
     d86:	18fb      	adds	r3, r7, r3
     d88:	781b      	ldrb	r3, [r3, #0]
     d8a:	2b78      	cmp	r3, #120	; 0x78
     d8c:	d101      	bne.n	d92 <xvprintf+0x256>
     d8e:	2327      	movs	r3, #39	; 0x27
     d90:	e000      	b.n	d94 <xvprintf+0x258>
     d92:	2307      	movs	r3, #7
     d94:	221e      	movs	r2, #30
     d96:	18ba      	adds	r2, r7, r2
     d98:	211e      	movs	r1, #30
     d9a:	1879      	adds	r1, r7, r1
     d9c:	7809      	ldrb	r1, [r1, #0]
     d9e:	185b      	adds	r3, r3, r1
     da0:	7013      	strb	r3, [r2, #0]
     da2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     da4:	1c5a      	adds	r2, r3, #1
     da6:	633a      	str	r2, [r7, #48]	; 0x30
     da8:	221e      	movs	r2, #30
     daa:	18ba      	adds	r2, r7, r2
     dac:	7812      	ldrb	r2, [r2, #0]
     dae:	3230      	adds	r2, #48	; 0x30
     db0:	b2d1      	uxtb	r1, r2
     db2:	2208      	movs	r2, #8
     db4:	18ba      	adds	r2, r7, r2
     db6:	54d1      	strb	r1, [r2, r3]
     db8:	6a3b      	ldr	r3, [r7, #32]
     dba:	2b00      	cmp	r3, #0
     dbc:	d002      	beq.n	dc4 <xvprintf+0x288>
     dbe:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dc0:	2b0f      	cmp	r3, #15
     dc2:	d9ca      	bls.n	d5a <xvprintf+0x21e>
     dc4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     dc6:	2208      	movs	r2, #8
     dc8:	4013      	ands	r3, r2
     dca:	d006      	beq.n	dda <xvprintf+0x29e>
     dcc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     dce:	1c5a      	adds	r2, r3, #1
     dd0:	633a      	str	r2, [r7, #48]	; 0x30
     dd2:	2208      	movs	r2, #8
     dd4:	18ba      	adds	r2, r7, r2
     dd6:	212d      	movs	r1, #45	; 0x2d
     dd8:	54d1      	strb	r1, [r2, r3]
     dda:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     ddc:	62fb      	str	r3, [r7, #44]	; 0x2c
     dde:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     de0:	2201      	movs	r2, #1
     de2:	4013      	ands	r3, r2
     de4:	d001      	beq.n	dea <xvprintf+0x2ae>
     de6:	2230      	movs	r2, #48	; 0x30
     de8:	e000      	b.n	dec <xvprintf+0x2b0>
     dea:	2220      	movs	r2, #32
     dec:	231e      	movs	r3, #30
     dee:	18fb      	adds	r3, r7, r3
     df0:	701a      	strb	r2, [r3, #0]
     df2:	e005      	b.n	e00 <xvprintf+0x2c4>
     df4:	231e      	movs	r3, #30
     df6:	18fb      	adds	r3, r7, r3
     df8:	781b      	ldrb	r3, [r3, #0]
     dfa:	0018      	movs	r0, r3
     dfc:	f7ff fe3e 	bl	a7c <xputc>
     e00:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e02:	2202      	movs	r2, #2
     e04:	4013      	ands	r3, r2
     e06:	d105      	bne.n	e14 <xvprintf+0x2d8>
     e08:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e0a:	1c5a      	adds	r2, r3, #1
     e0c:	62fa      	str	r2, [r7, #44]	; 0x2c
     e0e:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e10:	4293      	cmp	r3, r2
     e12:	d3ef      	bcc.n	df4 <xvprintf+0x2b8>
     e14:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e16:	3b01      	subs	r3, #1
     e18:	633b      	str	r3, [r7, #48]	; 0x30
     e1a:	2308      	movs	r3, #8
     e1c:	18fa      	adds	r2, r7, r3
     e1e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e20:	18d3      	adds	r3, r2, r3
     e22:	781b      	ldrb	r3, [r3, #0]
     e24:	0018      	movs	r0, r3
     e26:	f7ff fe29 	bl	a7c <xputc>
     e2a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     e2c:	2b00      	cmp	r3, #0
     e2e:	d1f1      	bne.n	e14 <xvprintf+0x2d8>
     e30:	e002      	b.n	e38 <xvprintf+0x2fc>
     e32:	2020      	movs	r0, #32
     e34:	f7ff fe22 	bl	a7c <xputc>
     e38:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     e3a:	1c5a      	adds	r2, r3, #1
     e3c:	62fa      	str	r2, [r7, #44]	; 0x2c
     e3e:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e40:	4293      	cmp	r3, r2
     e42:	d3f6      	bcc.n	e32 <xvprintf+0x2f6>
     e44:	e67f      	b.n	b46 <xvprintf+0xa>
     e46:	46c0      	nop			; (mov r8, r8)
     e48:	e000      	b.n	e4c <xvprintf+0x310>
     e4a:	46c0      	nop			; (mov r8, r8)
     e4c:	46c0      	nop			; (mov r8, r8)
     e4e:	46bd      	mov	sp, r7
     e50:	b00e      	add	sp, #56	; 0x38
     e52:	bd80      	pop	{r7, pc}
     e54:	000013d8 	.word	0x000013d8

00000e58 <xprintf>:
     e58:	b40f      	push	{r0, r1, r2, r3}
     e5a:	b580      	push	{r7, lr}
     e5c:	b082      	sub	sp, #8
     e5e:	af00      	add	r7, sp, #0
     e60:	2314      	movs	r3, #20
     e62:	18fb      	adds	r3, r7, r3
     e64:	607b      	str	r3, [r7, #4]
     e66:	687a      	ldr	r2, [r7, #4]
     e68:	693b      	ldr	r3, [r7, #16]
     e6a:	0011      	movs	r1, r2
     e6c:	0018      	movs	r0, r3
     e6e:	f7ff fe65 	bl	b3c <xvprintf>
     e72:	46c0      	nop			; (mov r8, r8)
     e74:	46bd      	mov	sp, r7
     e76:	b002      	add	sp, #8
     e78:	bc80      	pop	{r7}
     e7a:	bc08      	pop	{r3}
     e7c:	b004      	add	sp, #16
     e7e:	4718      	bx	r3

00000e80 <xsprintf>:
     e80:	b40e      	push	{r1, r2, r3}
     e82:	b580      	push	{r7, lr}
     e84:	b085      	sub	sp, #20
     e86:	af00      	add	r7, sp, #0
     e88:	6078      	str	r0, [r7, #4]
     e8a:	4b0d      	ldr	r3, [pc, #52]	; (ec0 <xsprintf+0x40>)
     e8c:	687a      	ldr	r2, [r7, #4]
     e8e:	601a      	str	r2, [r3, #0]
     e90:	2320      	movs	r3, #32
     e92:	18fb      	adds	r3, r7, r3
     e94:	60fb      	str	r3, [r7, #12]
     e96:	68fa      	ldr	r2, [r7, #12]
     e98:	69fb      	ldr	r3, [r7, #28]
     e9a:	0011      	movs	r1, r2
     e9c:	0018      	movs	r0, r3
     e9e:	f7ff fe4d 	bl	b3c <xvprintf>
     ea2:	4b07      	ldr	r3, [pc, #28]	; (ec0 <xsprintf+0x40>)
     ea4:	681b      	ldr	r3, [r3, #0]
     ea6:	2200      	movs	r2, #0
     ea8:	701a      	strb	r2, [r3, #0]
     eaa:	4b05      	ldr	r3, [pc, #20]	; (ec0 <xsprintf+0x40>)
     eac:	2200      	movs	r2, #0
     eae:	601a      	str	r2, [r3, #0]
     eb0:	46c0      	nop			; (mov r8, r8)
     eb2:	46bd      	mov	sp, r7
     eb4:	b005      	add	sp, #20
     eb6:	bc80      	pop	{r7}
     eb8:	bc08      	pop	{r3}
     eba:	b003      	add	sp, #12
     ebc:	4718      	bx	r3
     ebe:	46c0      	nop			; (mov r8, r8)
     ec0:	20004068 	.word	0x20004068

00000ec4 <xfprintf>:
     ec4:	b40e      	push	{r1, r2, r3}
     ec6:	b580      	push	{r7, lr}
     ec8:	b085      	sub	sp, #20
     eca:	af00      	add	r7, sp, #0
     ecc:	6078      	str	r0, [r7, #4]
     ece:	4b0c      	ldr	r3, [pc, #48]	; (f00 <xfprintf+0x3c>)
     ed0:	681b      	ldr	r3, [r3, #0]
     ed2:	60fb      	str	r3, [r7, #12]
     ed4:	4b0a      	ldr	r3, [pc, #40]	; (f00 <xfprintf+0x3c>)
     ed6:	687a      	ldr	r2, [r7, #4]
     ed8:	601a      	str	r2, [r3, #0]
     eda:	2320      	movs	r3, #32
     edc:	18fb      	adds	r3, r7, r3
     ede:	60bb      	str	r3, [r7, #8]
     ee0:	68ba      	ldr	r2, [r7, #8]
     ee2:	69fb      	ldr	r3, [r7, #28]
     ee4:	0011      	movs	r1, r2
     ee6:	0018      	movs	r0, r3
     ee8:	f7ff fe28 	bl	b3c <xvprintf>
     eec:	4b04      	ldr	r3, [pc, #16]	; (f00 <xfprintf+0x3c>)
     eee:	68fa      	ldr	r2, [r7, #12]
     ef0:	601a      	str	r2, [r3, #0]
     ef2:	46c0      	nop			; (mov r8, r8)
     ef4:	46bd      	mov	sp, r7
     ef6:	b005      	add	sp, #20
     ef8:	bc80      	pop	{r7}
     efa:	bc08      	pop	{r3}
     efc:	b003      	add	sp, #12
     efe:	4718      	bx	r3
     f00:	20004064 	.word	0x20004064

00000f04 <put_dump>:
     f04:	b580      	push	{r7, lr}
     f06:	b088      	sub	sp, #32
     f08:	af00      	add	r7, sp, #0
     f0a:	60f8      	str	r0, [r7, #12]
     f0c:	60b9      	str	r1, [r7, #8]
     f0e:	607a      	str	r2, [r7, #4]
     f10:	603b      	str	r3, [r7, #0]
     f12:	68ba      	ldr	r2, [r7, #8]
     f14:	4b38      	ldr	r3, [pc, #224]	; (ff8 <put_dump+0xf4>)
     f16:	0011      	movs	r1, r2
     f18:	0018      	movs	r0, r3
     f1a:	f7ff ff9d 	bl	e58 <xprintf>
     f1e:	683b      	ldr	r3, [r7, #0]
     f20:	2b02      	cmp	r3, #2
     f22:	d03c      	beq.n	f9e <put_dump+0x9a>
     f24:	2b04      	cmp	r3, #4
     f26:	d04d      	beq.n	fc4 <put_dump+0xc0>
     f28:	2b01      	cmp	r3, #1
     f2a:	d15d      	bne.n	fe8 <put_dump+0xe4>
     f2c:	68fb      	ldr	r3, [r7, #12]
     f2e:	613b      	str	r3, [r7, #16]
     f30:	2300      	movs	r3, #0
     f32:	61fb      	str	r3, [r7, #28]
     f34:	e00c      	b.n	f50 <put_dump+0x4c>
     f36:	69fb      	ldr	r3, [r7, #28]
     f38:	693a      	ldr	r2, [r7, #16]
     f3a:	18d3      	adds	r3, r2, r3
     f3c:	781b      	ldrb	r3, [r3, #0]
     f3e:	001a      	movs	r2, r3
     f40:	4b2e      	ldr	r3, [pc, #184]	; (ffc <put_dump+0xf8>)
     f42:	0011      	movs	r1, r2
     f44:	0018      	movs	r0, r3
     f46:	f7ff ff87 	bl	e58 <xprintf>
     f4a:	69fb      	ldr	r3, [r7, #28]
     f4c:	3301      	adds	r3, #1
     f4e:	61fb      	str	r3, [r7, #28]
     f50:	69fa      	ldr	r2, [r7, #28]
     f52:	687b      	ldr	r3, [r7, #4]
     f54:	429a      	cmp	r2, r3
     f56:	dbee      	blt.n	f36 <put_dump+0x32>
     f58:	2020      	movs	r0, #32
     f5a:	f7ff fd8f 	bl	a7c <xputc>
     f5e:	2300      	movs	r3, #0
     f60:	61fb      	str	r3, [r7, #28]
     f62:	e017      	b.n	f94 <put_dump+0x90>
     f64:	69fb      	ldr	r3, [r7, #28]
     f66:	693a      	ldr	r2, [r7, #16]
     f68:	18d3      	adds	r3, r2, r3
     f6a:	781b      	ldrb	r3, [r3, #0]
     f6c:	2b1f      	cmp	r3, #31
     f6e:	d90a      	bls.n	f86 <put_dump+0x82>
     f70:	69fb      	ldr	r3, [r7, #28]
     f72:	693a      	ldr	r2, [r7, #16]
     f74:	18d3      	adds	r3, r2, r3
     f76:	781b      	ldrb	r3, [r3, #0]
     f78:	2b7e      	cmp	r3, #126	; 0x7e
     f7a:	d804      	bhi.n	f86 <put_dump+0x82>
     f7c:	69fb      	ldr	r3, [r7, #28]
     f7e:	693a      	ldr	r2, [r7, #16]
     f80:	18d3      	adds	r3, r2, r3
     f82:	781b      	ldrb	r3, [r3, #0]
     f84:	e000      	b.n	f88 <put_dump+0x84>
     f86:	232e      	movs	r3, #46	; 0x2e
     f88:	0018      	movs	r0, r3
     f8a:	f7ff fd77 	bl	a7c <xputc>
     f8e:	69fb      	ldr	r3, [r7, #28]
     f90:	3301      	adds	r3, #1
     f92:	61fb      	str	r3, [r7, #28]
     f94:	69fa      	ldr	r2, [r7, #28]
     f96:	687b      	ldr	r3, [r7, #4]
     f98:	429a      	cmp	r2, r3
     f9a:	dbe3      	blt.n	f64 <put_dump+0x60>
     f9c:	e024      	b.n	fe8 <put_dump+0xe4>
     f9e:	68fb      	ldr	r3, [r7, #12]
     fa0:	61bb      	str	r3, [r7, #24]
     fa2:	69bb      	ldr	r3, [r7, #24]
     fa4:	1c9a      	adds	r2, r3, #2
     fa6:	61ba      	str	r2, [r7, #24]
     fa8:	881b      	ldrh	r3, [r3, #0]
     faa:	001a      	movs	r2, r3
     fac:	4b14      	ldr	r3, [pc, #80]	; (1000 <put_dump+0xfc>)
     fae:	0011      	movs	r1, r2
     fb0:	0018      	movs	r0, r3
     fb2:	f7ff ff51 	bl	e58 <xprintf>
     fb6:	687b      	ldr	r3, [r7, #4]
     fb8:	3b01      	subs	r3, #1
     fba:	607b      	str	r3, [r7, #4]
     fbc:	687b      	ldr	r3, [r7, #4]
     fbe:	2b00      	cmp	r3, #0
     fc0:	d1ef      	bne.n	fa2 <put_dump+0x9e>
     fc2:	e011      	b.n	fe8 <put_dump+0xe4>
     fc4:	68fb      	ldr	r3, [r7, #12]
     fc6:	617b      	str	r3, [r7, #20]
     fc8:	697b      	ldr	r3, [r7, #20]
     fca:	1d1a      	adds	r2, r3, #4
     fcc:	617a      	str	r2, [r7, #20]
     fce:	681a      	ldr	r2, [r3, #0]
     fd0:	4b0c      	ldr	r3, [pc, #48]	; (1004 <put_dump+0x100>)
     fd2:	0011      	movs	r1, r2
     fd4:	0018      	movs	r0, r3
     fd6:	f7ff ff3f 	bl	e58 <xprintf>
     fda:	687b      	ldr	r3, [r7, #4]
     fdc:	3b01      	subs	r3, #1
     fde:	607b      	str	r3, [r7, #4]
     fe0:	687b      	ldr	r3, [r7, #4]
     fe2:	2b00      	cmp	r3, #0
     fe4:	d1f0      	bne.n	fc8 <put_dump+0xc4>
     fe6:	46c0      	nop			; (mov r8, r8)
     fe8:	200a      	movs	r0, #10
     fea:	f7ff fd47 	bl	a7c <xputc>
     fee:	46c0      	nop			; (mov r8, r8)
     ff0:	46bd      	mov	sp, r7
     ff2:	b008      	add	sp, #32
     ff4:	bd80      	pop	{r7, pc}
     ff6:	46c0      	nop			; (mov r8, r8)
     ff8:	00001434 	.word	0x00001434
     ffc:	0000143c 	.word	0x0000143c
    1000:	00001444 	.word	0x00001444
    1004:	0000144c 	.word	0x0000144c

00001008 <xgets>:
    1008:	b580      	push	{r7, lr}
    100a:	b084      	sub	sp, #16
    100c:	af00      	add	r7, sp, #0
    100e:	6078      	str	r0, [r7, #4]
    1010:	6039      	str	r1, [r7, #0]
    1012:	4b24      	ldr	r3, [pc, #144]	; (10a4 <xgets+0x9c>)
    1014:	681b      	ldr	r3, [r3, #0]
    1016:	2b00      	cmp	r3, #0
    1018:	d101      	bne.n	101e <xgets+0x16>
    101a:	2300      	movs	r3, #0
    101c:	e03e      	b.n	109c <xgets+0x94>
    101e:	2300      	movs	r3, #0
    1020:	60fb      	str	r3, [r7, #12]
    1022:	4b20      	ldr	r3, [pc, #128]	; (10a4 <xgets+0x9c>)
    1024:	681b      	ldr	r3, [r3, #0]
    1026:	4798      	blx	r3
    1028:	0003      	movs	r3, r0
    102a:	60bb      	str	r3, [r7, #8]
    102c:	68bb      	ldr	r3, [r7, #8]
    102e:	2b00      	cmp	r3, #0
    1030:	d101      	bne.n	1036 <xgets+0x2e>
    1032:	2300      	movs	r3, #0
    1034:	e032      	b.n	109c <xgets+0x94>
    1036:	68bb      	ldr	r3, [r7, #8]
    1038:	2b0d      	cmp	r3, #13
    103a:	d025      	beq.n	1088 <xgets+0x80>
    103c:	68bb      	ldr	r3, [r7, #8]
    103e:	2b08      	cmp	r3, #8
    1040:	d10b      	bne.n	105a <xgets+0x52>
    1042:	68fb      	ldr	r3, [r7, #12]
    1044:	2b00      	cmp	r3, #0
    1046:	d008      	beq.n	105a <xgets+0x52>
    1048:	68fb      	ldr	r3, [r7, #12]
    104a:	3b01      	subs	r3, #1
    104c:	60fb      	str	r3, [r7, #12]
    104e:	68bb      	ldr	r3, [r7, #8]
    1050:	b2db      	uxtb	r3, r3
    1052:	0018      	movs	r0, r3
    1054:	f7ff fd12 	bl	a7c <xputc>
    1058:	e015      	b.n	1086 <xgets+0x7e>
    105a:	68bb      	ldr	r3, [r7, #8]
    105c:	2b1f      	cmp	r3, #31
    105e:	dde0      	ble.n	1022 <xgets+0x1a>
    1060:	683b      	ldr	r3, [r7, #0]
    1062:	1e5a      	subs	r2, r3, #1
    1064:	68fb      	ldr	r3, [r7, #12]
    1066:	429a      	cmp	r2, r3
    1068:	dddb      	ble.n	1022 <xgets+0x1a>
    106a:	68fb      	ldr	r3, [r7, #12]
    106c:	1c5a      	adds	r2, r3, #1
    106e:	60fa      	str	r2, [r7, #12]
    1070:	001a      	movs	r2, r3
    1072:	687b      	ldr	r3, [r7, #4]
    1074:	189b      	adds	r3, r3, r2
    1076:	68ba      	ldr	r2, [r7, #8]
    1078:	b2d2      	uxtb	r2, r2
    107a:	701a      	strb	r2, [r3, #0]
    107c:	68bb      	ldr	r3, [r7, #8]
    107e:	b2db      	uxtb	r3, r3
    1080:	0018      	movs	r0, r3
    1082:	f7ff fcfb 	bl	a7c <xputc>
    1086:	e7cc      	b.n	1022 <xgets+0x1a>
    1088:	46c0      	nop			; (mov r8, r8)
    108a:	68fb      	ldr	r3, [r7, #12]
    108c:	687a      	ldr	r2, [r7, #4]
    108e:	18d3      	adds	r3, r2, r3
    1090:	2200      	movs	r2, #0
    1092:	701a      	strb	r2, [r3, #0]
    1094:	200a      	movs	r0, #10
    1096:	f7ff fcf1 	bl	a7c <xputc>
    109a:	2301      	movs	r3, #1
    109c:	0018      	movs	r0, r3
    109e:	46bd      	mov	sp, r7
    10a0:	b004      	add	sp, #16
    10a2:	bd80      	pop	{r7, pc}
    10a4:	2000406c 	.word	0x2000406c

000010a8 <xfgets>:
    10a8:	b580      	push	{r7, lr}
    10aa:	b086      	sub	sp, #24
    10ac:	af00      	add	r7, sp, #0
    10ae:	60f8      	str	r0, [r7, #12]
    10b0:	60b9      	str	r1, [r7, #8]
    10b2:	607a      	str	r2, [r7, #4]
    10b4:	4b0a      	ldr	r3, [pc, #40]	; (10e0 <xfgets+0x38>)
    10b6:	681b      	ldr	r3, [r3, #0]
    10b8:	617b      	str	r3, [r7, #20]
    10ba:	4b09      	ldr	r3, [pc, #36]	; (10e0 <xfgets+0x38>)
    10bc:	68fa      	ldr	r2, [r7, #12]
    10be:	601a      	str	r2, [r3, #0]
    10c0:	687a      	ldr	r2, [r7, #4]
    10c2:	68bb      	ldr	r3, [r7, #8]
    10c4:	0011      	movs	r1, r2
    10c6:	0018      	movs	r0, r3
    10c8:	f7ff ff9e 	bl	1008 <xgets>
    10cc:	0003      	movs	r3, r0
    10ce:	613b      	str	r3, [r7, #16]
    10d0:	4b03      	ldr	r3, [pc, #12]	; (10e0 <xfgets+0x38>)
    10d2:	697a      	ldr	r2, [r7, #20]
    10d4:	601a      	str	r2, [r3, #0]
    10d6:	693b      	ldr	r3, [r7, #16]
    10d8:	0018      	movs	r0, r3
    10da:	46bd      	mov	sp, r7
    10dc:	b006      	add	sp, #24
    10de:	bd80      	pop	{r7, pc}
    10e0:	2000406c 	.word	0x2000406c

000010e4 <xatoi>:
    10e4:	b580      	push	{r7, lr}
    10e6:	b084      	sub	sp, #16
    10e8:	af00      	add	r7, sp, #0
    10ea:	6078      	str	r0, [r7, #4]
    10ec:	6039      	str	r1, [r7, #0]
    10ee:	2309      	movs	r3, #9
    10f0:	18fb      	adds	r3, r7, r3
    10f2:	2200      	movs	r2, #0
    10f4:	701a      	strb	r2, [r3, #0]
    10f6:	683b      	ldr	r3, [r7, #0]
    10f8:	2200      	movs	r2, #0
    10fa:	601a      	str	r2, [r3, #0]
    10fc:	e004      	b.n	1108 <xatoi+0x24>
    10fe:	687b      	ldr	r3, [r7, #4]
    1100:	681b      	ldr	r3, [r3, #0]
    1102:	1c5a      	adds	r2, r3, #1
    1104:	687b      	ldr	r3, [r7, #4]
    1106:	601a      	str	r2, [r3, #0]
    1108:	687b      	ldr	r3, [r7, #4]
    110a:	681a      	ldr	r2, [r3, #0]
    110c:	230b      	movs	r3, #11
    110e:	18fb      	adds	r3, r7, r3
    1110:	7812      	ldrb	r2, [r2, #0]
    1112:	701a      	strb	r2, [r3, #0]
    1114:	230b      	movs	r3, #11
    1116:	18fb      	adds	r3, r7, r3
    1118:	781b      	ldrb	r3, [r3, #0]
    111a:	2b20      	cmp	r3, #32
    111c:	d0ef      	beq.n	10fe <xatoi+0x1a>
    111e:	230b      	movs	r3, #11
    1120:	18fb      	adds	r3, r7, r3
    1122:	781b      	ldrb	r3, [r3, #0]
    1124:	2b2d      	cmp	r3, #45	; 0x2d
    1126:	d10e      	bne.n	1146 <xatoi+0x62>
    1128:	2309      	movs	r3, #9
    112a:	18fb      	adds	r3, r7, r3
    112c:	2201      	movs	r2, #1
    112e:	701a      	strb	r2, [r3, #0]
    1130:	687b      	ldr	r3, [r7, #4]
    1132:	681b      	ldr	r3, [r3, #0]
    1134:	1c5a      	adds	r2, r3, #1
    1136:	687b      	ldr	r3, [r7, #4]
    1138:	601a      	str	r2, [r3, #0]
    113a:	687b      	ldr	r3, [r7, #4]
    113c:	681a      	ldr	r2, [r3, #0]
    113e:	230b      	movs	r3, #11
    1140:	18fb      	adds	r3, r7, r3
    1142:	7812      	ldrb	r2, [r2, #0]
    1144:	701a      	strb	r2, [r3, #0]
    1146:	230b      	movs	r3, #11
    1148:	18fb      	adds	r3, r7, r3
    114a:	781b      	ldrb	r3, [r3, #0]
    114c:	2b30      	cmp	r3, #48	; 0x30
    114e:	d149      	bne.n	11e4 <xatoi+0x100>
    1150:	687b      	ldr	r3, [r7, #4]
    1152:	681b      	ldr	r3, [r3, #0]
    1154:	1c5a      	adds	r2, r3, #1
    1156:	687b      	ldr	r3, [r7, #4]
    1158:	601a      	str	r2, [r3, #0]
    115a:	687b      	ldr	r3, [r7, #4]
    115c:	681a      	ldr	r2, [r3, #0]
    115e:	230b      	movs	r3, #11
    1160:	18fb      	adds	r3, r7, r3
    1162:	7812      	ldrb	r2, [r2, #0]
    1164:	701a      	strb	r2, [r3, #0]
    1166:	230b      	movs	r3, #11
    1168:	18fb      	adds	r3, r7, r3
    116a:	781b      	ldrb	r3, [r3, #0]
    116c:	2b62      	cmp	r3, #98	; 0x62
    116e:	d011      	beq.n	1194 <xatoi+0xb0>
    1170:	2b78      	cmp	r3, #120	; 0x78
    1172:	d11f      	bne.n	11b4 <xatoi+0xd0>
    1174:	230a      	movs	r3, #10
    1176:	18fb      	adds	r3, r7, r3
    1178:	2210      	movs	r2, #16
    117a:	701a      	strb	r2, [r3, #0]
    117c:	687b      	ldr	r3, [r7, #4]
    117e:	681b      	ldr	r3, [r3, #0]
    1180:	1c5a      	adds	r2, r3, #1
    1182:	687b      	ldr	r3, [r7, #4]
    1184:	601a      	str	r2, [r3, #0]
    1186:	687b      	ldr	r3, [r7, #4]
    1188:	681a      	ldr	r2, [r3, #0]
    118a:	230b      	movs	r3, #11
    118c:	18fb      	adds	r3, r7, r3
    118e:	7812      	ldrb	r2, [r2, #0]
    1190:	701a      	strb	r2, [r3, #0]
    1192:	e037      	b.n	1204 <xatoi+0x120>
    1194:	230a      	movs	r3, #10
    1196:	18fb      	adds	r3, r7, r3
    1198:	2202      	movs	r2, #2
    119a:	701a      	strb	r2, [r3, #0]
    119c:	687b      	ldr	r3, [r7, #4]
    119e:	681b      	ldr	r3, [r3, #0]
    11a0:	1c5a      	adds	r2, r3, #1
    11a2:	687b      	ldr	r3, [r7, #4]
    11a4:	601a      	str	r2, [r3, #0]
    11a6:	687b      	ldr	r3, [r7, #4]
    11a8:	681a      	ldr	r2, [r3, #0]
    11aa:	230b      	movs	r3, #11
    11ac:	18fb      	adds	r3, r7, r3
    11ae:	7812      	ldrb	r2, [r2, #0]
    11b0:	701a      	strb	r2, [r3, #0]
    11b2:	e027      	b.n	1204 <xatoi+0x120>
    11b4:	230b      	movs	r3, #11
    11b6:	18fb      	adds	r3, r7, r3
    11b8:	781b      	ldrb	r3, [r3, #0]
    11ba:	2b20      	cmp	r3, #32
    11bc:	d801      	bhi.n	11c2 <xatoi+0xde>
    11be:	2301      	movs	r3, #1
    11c0:	e079      	b.n	12b6 <xatoi+0x1d2>
    11c2:	230b      	movs	r3, #11
    11c4:	18fb      	adds	r3, r7, r3
    11c6:	781b      	ldrb	r3, [r3, #0]
    11c8:	2b2f      	cmp	r3, #47	; 0x2f
    11ca:	d904      	bls.n	11d6 <xatoi+0xf2>
    11cc:	230b      	movs	r3, #11
    11ce:	18fb      	adds	r3, r7, r3
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	2b39      	cmp	r3, #57	; 0x39
    11d4:	d901      	bls.n	11da <xatoi+0xf6>
    11d6:	2300      	movs	r3, #0
    11d8:	e06d      	b.n	12b6 <xatoi+0x1d2>
    11da:	230a      	movs	r3, #10
    11dc:	18fb      	adds	r3, r7, r3
    11de:	2208      	movs	r2, #8
    11e0:	701a      	strb	r2, [r3, #0]
    11e2:	e00f      	b.n	1204 <xatoi+0x120>
    11e4:	230b      	movs	r3, #11
    11e6:	18fb      	adds	r3, r7, r3
    11e8:	781b      	ldrb	r3, [r3, #0]
    11ea:	2b2f      	cmp	r3, #47	; 0x2f
    11ec:	d904      	bls.n	11f8 <xatoi+0x114>
    11ee:	230b      	movs	r3, #11
    11f0:	18fb      	adds	r3, r7, r3
    11f2:	781b      	ldrb	r3, [r3, #0]
    11f4:	2b39      	cmp	r3, #57	; 0x39
    11f6:	d901      	bls.n	11fc <xatoi+0x118>
    11f8:	2300      	movs	r3, #0
    11fa:	e05c      	b.n	12b6 <xatoi+0x1d2>
    11fc:	230a      	movs	r3, #10
    11fe:	18fb      	adds	r3, r7, r3
    1200:	220a      	movs	r2, #10
    1202:	701a      	strb	r2, [r3, #0]
    1204:	2300      	movs	r3, #0
    1206:	60fb      	str	r3, [r7, #12]
    1208:	e044      	b.n	1294 <xatoi+0x1b0>
    120a:	230b      	movs	r3, #11
    120c:	18fb      	adds	r3, r7, r3
    120e:	781b      	ldrb	r3, [r3, #0]
    1210:	2b60      	cmp	r3, #96	; 0x60
    1212:	d906      	bls.n	1222 <xatoi+0x13e>
    1214:	230b      	movs	r3, #11
    1216:	18fb      	adds	r3, r7, r3
    1218:	220b      	movs	r2, #11
    121a:	18ba      	adds	r2, r7, r2
    121c:	7812      	ldrb	r2, [r2, #0]
    121e:	3a20      	subs	r2, #32
    1220:	701a      	strb	r2, [r3, #0]
    1222:	230b      	movs	r3, #11
    1224:	18fb      	adds	r3, r7, r3
    1226:	220b      	movs	r2, #11
    1228:	18ba      	adds	r2, r7, r2
    122a:	7812      	ldrb	r2, [r2, #0]
    122c:	3a30      	subs	r2, #48	; 0x30
    122e:	701a      	strb	r2, [r3, #0]
    1230:	230b      	movs	r3, #11
    1232:	18fb      	adds	r3, r7, r3
    1234:	781b      	ldrb	r3, [r3, #0]
    1236:	2b10      	cmp	r3, #16
    1238:	d90d      	bls.n	1256 <xatoi+0x172>
    123a:	230b      	movs	r3, #11
    123c:	18fb      	adds	r3, r7, r3
    123e:	220b      	movs	r2, #11
    1240:	18ba      	adds	r2, r7, r2
    1242:	7812      	ldrb	r2, [r2, #0]
    1244:	3a07      	subs	r2, #7
    1246:	701a      	strb	r2, [r3, #0]
    1248:	230b      	movs	r3, #11
    124a:	18fb      	adds	r3, r7, r3
    124c:	781b      	ldrb	r3, [r3, #0]
    124e:	2b09      	cmp	r3, #9
    1250:	d801      	bhi.n	1256 <xatoi+0x172>
    1252:	2300      	movs	r3, #0
    1254:	e02f      	b.n	12b6 <xatoi+0x1d2>
    1256:	230b      	movs	r3, #11
    1258:	18fa      	adds	r2, r7, r3
    125a:	230a      	movs	r3, #10
    125c:	18fb      	adds	r3, r7, r3
    125e:	7812      	ldrb	r2, [r2, #0]
    1260:	781b      	ldrb	r3, [r3, #0]
    1262:	429a      	cmp	r2, r3
    1264:	d301      	bcc.n	126a <xatoi+0x186>
    1266:	2300      	movs	r3, #0
    1268:	e025      	b.n	12b6 <xatoi+0x1d2>
    126a:	230a      	movs	r3, #10
    126c:	18fb      	adds	r3, r7, r3
    126e:	781b      	ldrb	r3, [r3, #0]
    1270:	68fa      	ldr	r2, [r7, #12]
    1272:	435a      	muls	r2, r3
    1274:	230b      	movs	r3, #11
    1276:	18fb      	adds	r3, r7, r3
    1278:	781b      	ldrb	r3, [r3, #0]
    127a:	18d3      	adds	r3, r2, r3
    127c:	60fb      	str	r3, [r7, #12]
    127e:	687b      	ldr	r3, [r7, #4]
    1280:	681b      	ldr	r3, [r3, #0]
    1282:	1c5a      	adds	r2, r3, #1
    1284:	687b      	ldr	r3, [r7, #4]
    1286:	601a      	str	r2, [r3, #0]
    1288:	687b      	ldr	r3, [r7, #4]
    128a:	681a      	ldr	r2, [r3, #0]
    128c:	230b      	movs	r3, #11
    128e:	18fb      	adds	r3, r7, r3
    1290:	7812      	ldrb	r2, [r2, #0]
    1292:	701a      	strb	r2, [r3, #0]
    1294:	230b      	movs	r3, #11
    1296:	18fb      	adds	r3, r7, r3
    1298:	781b      	ldrb	r3, [r3, #0]
    129a:	2b20      	cmp	r3, #32
    129c:	d8b5      	bhi.n	120a <xatoi+0x126>
    129e:	2309      	movs	r3, #9
    12a0:	18fb      	adds	r3, r7, r3
    12a2:	781b      	ldrb	r3, [r3, #0]
    12a4:	2b00      	cmp	r3, #0
    12a6:	d002      	beq.n	12ae <xatoi+0x1ca>
    12a8:	68fb      	ldr	r3, [r7, #12]
    12aa:	425b      	negs	r3, r3
    12ac:	60fb      	str	r3, [r7, #12]
    12ae:	68fa      	ldr	r2, [r7, #12]
    12b0:	683b      	ldr	r3, [r7, #0]
    12b2:	601a      	str	r2, [r3, #0]
    12b4:	2301      	movs	r3, #1
    12b6:	0018      	movs	r0, r3
    12b8:	46bd      	mov	sp, r7
    12ba:	b004      	add	sp, #16
    12bc:	bd80      	pop	{r7, pc}
    12be:	46c0      	nop			; (mov r8, r8)

000012c0 <__aeabi_uidiv>:
    12c0:	2200      	movs	r2, #0
    12c2:	0843      	lsrs	r3, r0, #1
    12c4:	428b      	cmp	r3, r1
    12c6:	d374      	bcc.n	13b2 <__aeabi_uidiv+0xf2>
    12c8:	0903      	lsrs	r3, r0, #4
    12ca:	428b      	cmp	r3, r1
    12cc:	d35f      	bcc.n	138e <__aeabi_uidiv+0xce>
    12ce:	0a03      	lsrs	r3, r0, #8
    12d0:	428b      	cmp	r3, r1
    12d2:	d344      	bcc.n	135e <__aeabi_uidiv+0x9e>
    12d4:	0b03      	lsrs	r3, r0, #12
    12d6:	428b      	cmp	r3, r1
    12d8:	d328      	bcc.n	132c <__aeabi_uidiv+0x6c>
    12da:	0c03      	lsrs	r3, r0, #16
    12dc:	428b      	cmp	r3, r1
    12de:	d30d      	bcc.n	12fc <__aeabi_uidiv+0x3c>
    12e0:	22ff      	movs	r2, #255	; 0xff
    12e2:	0209      	lsls	r1, r1, #8
    12e4:	ba12      	rev	r2, r2
    12e6:	0c03      	lsrs	r3, r0, #16
    12e8:	428b      	cmp	r3, r1
    12ea:	d302      	bcc.n	12f2 <__aeabi_uidiv+0x32>
    12ec:	1212      	asrs	r2, r2, #8
    12ee:	0209      	lsls	r1, r1, #8
    12f0:	d065      	beq.n	13be <__aeabi_uidiv+0xfe>
    12f2:	0b03      	lsrs	r3, r0, #12
    12f4:	428b      	cmp	r3, r1
    12f6:	d319      	bcc.n	132c <__aeabi_uidiv+0x6c>
    12f8:	e000      	b.n	12fc <__aeabi_uidiv+0x3c>
    12fa:	0a09      	lsrs	r1, r1, #8
    12fc:	0bc3      	lsrs	r3, r0, #15
    12fe:	428b      	cmp	r3, r1
    1300:	d301      	bcc.n	1306 <__aeabi_uidiv+0x46>
    1302:	03cb      	lsls	r3, r1, #15
    1304:	1ac0      	subs	r0, r0, r3
    1306:	4152      	adcs	r2, r2
    1308:	0b83      	lsrs	r3, r0, #14
    130a:	428b      	cmp	r3, r1
    130c:	d301      	bcc.n	1312 <__aeabi_uidiv+0x52>
    130e:	038b      	lsls	r3, r1, #14
    1310:	1ac0      	subs	r0, r0, r3
    1312:	4152      	adcs	r2, r2
    1314:	0b43      	lsrs	r3, r0, #13
    1316:	428b      	cmp	r3, r1
    1318:	d301      	bcc.n	131e <__aeabi_uidiv+0x5e>
    131a:	034b      	lsls	r3, r1, #13
    131c:	1ac0      	subs	r0, r0, r3
    131e:	4152      	adcs	r2, r2
    1320:	0b03      	lsrs	r3, r0, #12
    1322:	428b      	cmp	r3, r1
    1324:	d301      	bcc.n	132a <__aeabi_uidiv+0x6a>
    1326:	030b      	lsls	r3, r1, #12
    1328:	1ac0      	subs	r0, r0, r3
    132a:	4152      	adcs	r2, r2
    132c:	0ac3      	lsrs	r3, r0, #11
    132e:	428b      	cmp	r3, r1
    1330:	d301      	bcc.n	1336 <__aeabi_uidiv+0x76>
    1332:	02cb      	lsls	r3, r1, #11
    1334:	1ac0      	subs	r0, r0, r3
    1336:	4152      	adcs	r2, r2
    1338:	0a83      	lsrs	r3, r0, #10
    133a:	428b      	cmp	r3, r1
    133c:	d301      	bcc.n	1342 <__aeabi_uidiv+0x82>
    133e:	028b      	lsls	r3, r1, #10
    1340:	1ac0      	subs	r0, r0, r3
    1342:	4152      	adcs	r2, r2
    1344:	0a43      	lsrs	r3, r0, #9
    1346:	428b      	cmp	r3, r1
    1348:	d301      	bcc.n	134e <__aeabi_uidiv+0x8e>
    134a:	024b      	lsls	r3, r1, #9
    134c:	1ac0      	subs	r0, r0, r3
    134e:	4152      	adcs	r2, r2
    1350:	0a03      	lsrs	r3, r0, #8
    1352:	428b      	cmp	r3, r1
    1354:	d301      	bcc.n	135a <__aeabi_uidiv+0x9a>
    1356:	020b      	lsls	r3, r1, #8
    1358:	1ac0      	subs	r0, r0, r3
    135a:	4152      	adcs	r2, r2
    135c:	d2cd      	bcs.n	12fa <__aeabi_uidiv+0x3a>
    135e:	09c3      	lsrs	r3, r0, #7
    1360:	428b      	cmp	r3, r1
    1362:	d301      	bcc.n	1368 <__aeabi_uidiv+0xa8>
    1364:	01cb      	lsls	r3, r1, #7
    1366:	1ac0      	subs	r0, r0, r3
    1368:	4152      	adcs	r2, r2
    136a:	0983      	lsrs	r3, r0, #6
    136c:	428b      	cmp	r3, r1
    136e:	d301      	bcc.n	1374 <__aeabi_uidiv+0xb4>
    1370:	018b      	lsls	r3, r1, #6
    1372:	1ac0      	subs	r0, r0, r3
    1374:	4152      	adcs	r2, r2
    1376:	0943      	lsrs	r3, r0, #5
    1378:	428b      	cmp	r3, r1
    137a:	d301      	bcc.n	1380 <__aeabi_uidiv+0xc0>
    137c:	014b      	lsls	r3, r1, #5
    137e:	1ac0      	subs	r0, r0, r3
    1380:	4152      	adcs	r2, r2
    1382:	0903      	lsrs	r3, r0, #4
    1384:	428b      	cmp	r3, r1
    1386:	d301      	bcc.n	138c <__aeabi_uidiv+0xcc>
    1388:	010b      	lsls	r3, r1, #4
    138a:	1ac0      	subs	r0, r0, r3
    138c:	4152      	adcs	r2, r2
    138e:	08c3      	lsrs	r3, r0, #3
    1390:	428b      	cmp	r3, r1
    1392:	d301      	bcc.n	1398 <__aeabi_uidiv+0xd8>
    1394:	00cb      	lsls	r3, r1, #3
    1396:	1ac0      	subs	r0, r0, r3
    1398:	4152      	adcs	r2, r2
    139a:	0883      	lsrs	r3, r0, #2
    139c:	428b      	cmp	r3, r1
    139e:	d301      	bcc.n	13a4 <__aeabi_uidiv+0xe4>
    13a0:	008b      	lsls	r3, r1, #2
    13a2:	1ac0      	subs	r0, r0, r3
    13a4:	4152      	adcs	r2, r2
    13a6:	0843      	lsrs	r3, r0, #1
    13a8:	428b      	cmp	r3, r1
    13aa:	d301      	bcc.n	13b0 <__aeabi_uidiv+0xf0>
    13ac:	004b      	lsls	r3, r1, #1
    13ae:	1ac0      	subs	r0, r0, r3
    13b0:	4152      	adcs	r2, r2
    13b2:	1a41      	subs	r1, r0, r1
    13b4:	d200      	bcs.n	13b8 <__aeabi_uidiv+0xf8>
    13b6:	4601      	mov	r1, r0
    13b8:	4152      	adcs	r2, r2
    13ba:	4610      	mov	r0, r2
    13bc:	4770      	bx	lr
    13be:	e7ff      	b.n	13c0 <__aeabi_uidiv+0x100>
    13c0:	b501      	push	{r0, lr}
    13c2:	2000      	movs	r0, #0
    13c4:	f000 f806 	bl	13d4 <__aeabi_idiv0>
    13c8:	bd02      	pop	{r1, pc}
    13ca:	46c0      	nop			; (mov r8, r8)

000013cc <__aeabi_uidivmod>:
    13cc:	2900      	cmp	r1, #0
    13ce:	d0f7      	beq.n	13c0 <__aeabi_uidiv+0x100>
    13d0:	e776      	b.n	12c0 <__aeabi_uidiv>
    13d2:	4770      	bx	lr

000013d4 <__aeabi_idiv0>:
    13d4:	4770      	bx	lr
    13d6:	46c0      	nop			; (mov r8, r8)
    13d8:	00000ce2 	.word	0x00000ce2
    13dc:	00000cd0 	.word	0x00000cd0
    13e0:	00000cee 	.word	0x00000cee
    13e4:	00000cfa 	.word	0x00000cfa
    13e8:	00000cfa 	.word	0x00000cfa
    13ec:	00000cfa 	.word	0x00000cfa
    13f0:	00000cfa 	.word	0x00000cfa
    13f4:	00000cfa 	.word	0x00000cfa
    13f8:	00000cfa 	.word	0x00000cfa
    13fc:	00000cfa 	.word	0x00000cfa
    1400:	00000cfa 	.word	0x00000cfa
    1404:	00000cfa 	.word	0x00000cfa
    1408:	00000cfa 	.word	0x00000cfa
    140c:	00000ce8 	.word	0x00000ce8
    1410:	00000cfa 	.word	0x00000cfa
    1414:	00000cfa 	.word	0x00000cfa
    1418:	00000cfa 	.word	0x00000cfa
    141c:	00000c74 	.word	0x00000c74
    1420:	00000cfa 	.word	0x00000cfa
    1424:	00000cee 	.word	0x00000cee
    1428:	00000cfa 	.word	0x00000cfa
    142c:	00000cfa 	.word	0x00000cfa
    1430:	00000cf4 	.word	0x00000cf4
    1434:	6c383025 	.word	0x6c383025
    1438:	00002058 	.word	0x00002058
    143c:	32302520 	.word	0x32302520
    1440:	00000058 	.word	0x00000058
    1444:	34302520 	.word	0x34302520
    1448:	00000058 	.word	0x00000058
    144c:	38302520 	.word	0x38302520
    1450:	0000584c 	.word	0x0000584c
