
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d1 09 00 00 31 0a 00 00 31 0a 00 00     ... ....1...1...
	...
      2c:	31 0a 00 00 00 00 00 00 00 00 00 00 31 0a 00 00     1...........1...
      3c:	6d 06 00 00 31 0a 00 00 b1 06 00 00 31 0a 00 00     m...1.......1...
      4c:	31 0a 00 00 31 0a 00 00 31 0a 00 00 75 0c 00 00     1...1...1...u...
      5c:	31 0a 00 00 31 0a 00 00 31 0a 00 00 31 0a 00 00     1...1...1...1...
      6c:	31 0a 00 00 31 0a 00 00 85 06 00 00 31 0a 00 00     1...1.......1...
      7c:	31 0a 00 00 31 0a 00 00 31 0a 00 00 31 0a 00 00     1...1...1...1...
      8c:	31 0a 00 00 31 0a 00 00 31 0a 00 00 31 0a 00 00     1...1...1...1...
      9c:	31 0a 00 00 31 0a 00 00 00 00 00 00 00 00 00 00     1...1...........
      ac:	31 0a 00 00 31 0a 00 00 31 0a 00 00 31 0a 00 00     1...1...1...1...
      bc:	31 0a 00 00                                         1...

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

000000f8 <get_checksum>:
      f8:	b580      	push	{r7, lr}
      fa:	b084      	sub	sp, #16
      fc:	af00      	add	r7, sp, #0
      fe:	6078      	str	r0, [r7, #4]
     100:	6039      	str	r1, [r7, #0]
     102:	230a      	movs	r3, #10
     104:	18fb      	adds	r3, r7, r3
     106:	2200      	movs	r2, #0
     108:	801a      	strh	r2, [r3, #0]
     10a:	2300      	movs	r3, #0
     10c:	60fb      	str	r3, [r7, #12]
     10e:	e00d      	b.n	12c <get_checksum+0x34>
     110:	687b      	ldr	r3, [r7, #4]
     112:	1c9a      	adds	r2, r3, #2
     114:	607a      	str	r2, [r7, #4]
     116:	8819      	ldrh	r1, [r3, #0]
     118:	230a      	movs	r3, #10
     11a:	18fb      	adds	r3, r7, r3
     11c:	220a      	movs	r2, #10
     11e:	18ba      	adds	r2, r7, r2
     120:	8812      	ldrh	r2, [r2, #0]
     122:	188a      	adds	r2, r1, r2
     124:	801a      	strh	r2, [r3, #0]
     126:	68fb      	ldr	r3, [r7, #12]
     128:	3301      	adds	r3, #1
     12a:	60fb      	str	r3, [r7, #12]
     12c:	68fa      	ldr	r2, [r7, #12]
     12e:	683b      	ldr	r3, [r7, #0]
     130:	429a      	cmp	r2, r3
     132:	d3ed      	bcc.n	110 <get_checksum+0x18>
     134:	230a      	movs	r3, #10
     136:	18fb      	adds	r3, r7, r3
     138:	881b      	ldrh	r3, [r3, #0]
     13a:	3301      	adds	r3, #1
     13c:	b29b      	uxth	r3, r3
     13e:	0018      	movs	r0, r3
     140:	46bd      	mov	sp, r7
     142:	b004      	add	sp, #16
     144:	bd80      	pop	{r7, pc}
     146:	46c0      	nop			; (mov r8, r8)

00000148 <sleep>:
     148:	b580      	push	{r7, lr}
     14a:	b084      	sub	sp, #16
     14c:	af00      	add	r7, sp, #0
     14e:	6078      	str	r0, [r7, #4]
     150:	4b07      	ldr	r3, [pc, #28]	; (170 <sleep+0x28>)
     152:	681a      	ldr	r2, [r3, #0]
     154:	687b      	ldr	r3, [r7, #4]
     156:	18d3      	adds	r3, r2, r3
     158:	60fb      	str	r3, [r7, #12]
     15a:	46c0      	nop			; (mov r8, r8)
     15c:	4b04      	ldr	r3, [pc, #16]	; (170 <sleep+0x28>)
     15e:	681a      	ldr	r2, [r3, #0]
     160:	68fb      	ldr	r3, [r7, #12]
     162:	429a      	cmp	r2, r3
     164:	d3fa      	bcc.n	15c <sleep+0x14>
     166:	46c0      	nop			; (mov r8, r8)
     168:	0018      	movs	r0, r3
     16a:	46bd      	mov	sp, r7
     16c:	b004      	add	sp, #16
     16e:	bd80      	pop	{r7, pc}
     170:	200000e4 	.word	0x200000e4

00000174 <update_telemetry>:
     174:	b580      	push	{r7, lr}
     176:	b084      	sub	sp, #16
     178:	af00      	add	r7, sp, #0
     17a:	6078      	str	r0, [r7, #4]
     17c:	4b2e      	ldr	r3, [pc, #184]	; (238 <update_telemetry+0xc4>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b2e      	ldr	r3, [pc, #184]	; (23c <update_telemetry+0xc8>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	60bb      	str	r3, [r7, #8]
     18a:	2300      	movs	r3, #0
     18c:	60fb      	str	r3, [r7, #12]
     18e:	e008      	b.n	1a2 <update_telemetry+0x2e>
     190:	68fb      	ldr	r3, [r7, #12]
     192:	005b      	lsls	r3, r3, #1
     194:	68ba      	ldr	r2, [r7, #8]
     196:	18d3      	adds	r3, r2, r3
     198:	2200      	movs	r2, #0
     19a:	801a      	strh	r2, [r3, #0]
     19c:	68fb      	ldr	r3, [r7, #12]
     19e:	3301      	adds	r3, #1
     1a0:	60fb      	str	r3, [r7, #12]
     1a2:	68fb      	ldr	r3, [r7, #12]
     1a4:	2b1f      	cmp	r3, #31
     1a6:	ddf3      	ble.n	190 <update_telemetry+0x1c>
     1a8:	68bb      	ldr	r3, [r7, #8]
     1aa:	4a25      	ldr	r2, [pc, #148]	; (240 <update_telemetry+0xcc>)
     1ac:	801a      	strh	r2, [r3, #0]
     1ae:	687b      	ldr	r3, [r7, #4]
     1b0:	0c1b      	lsrs	r3, r3, #16
     1b2:	b29a      	uxth	r2, r3
     1b4:	68bb      	ldr	r3, [r7, #8]
     1b6:	805a      	strh	r2, [r3, #2]
     1b8:	687b      	ldr	r3, [r7, #4]
     1ba:	b29a      	uxth	r2, r3
     1bc:	68bb      	ldr	r3, [r7, #8]
     1be:	809a      	strh	r2, [r3, #4]
     1c0:	4b20      	ldr	r3, [pc, #128]	; (244 <update_telemetry+0xd0>)
     1c2:	685b      	ldr	r3, [r3, #4]
     1c4:	b21a      	sxth	r2, r3
     1c6:	68bb      	ldr	r3, [r7, #8]
     1c8:	80da      	strh	r2, [r3, #6]
     1ca:	68bb      	ldr	r3, [r7, #8]
     1cc:	2200      	movs	r2, #0
     1ce:	811a      	strh	r2, [r3, #8]
     1d0:	68bb      	ldr	r3, [r7, #8]
     1d2:	2200      	movs	r2, #0
     1d4:	815a      	strh	r2, [r3, #10]
     1d6:	68bb      	ldr	r3, [r7, #8]
     1d8:	2200      	movs	r2, #0
     1da:	819a      	strh	r2, [r3, #12]
     1dc:	68bb      	ldr	r3, [r7, #8]
     1de:	2200      	movs	r2, #0
     1e0:	81da      	strh	r2, [r3, #14]
     1e2:	68bb      	ldr	r3, [r7, #8]
     1e4:	2200      	movs	r2, #0
     1e6:	821a      	strh	r2, [r3, #16]
     1e8:	68bb      	ldr	r3, [r7, #8]
     1ea:	2200      	movs	r2, #0
     1ec:	825a      	strh	r2, [r3, #18]
     1ee:	68bb      	ldr	r3, [r7, #8]
     1f0:	221b      	movs	r2, #27
     1f2:	829a      	strh	r2, [r3, #20]
     1f4:	68bb      	ldr	r3, [r7, #8]
     1f6:	221b      	movs	r2, #27
     1f8:	82da      	strh	r2, [r3, #22]
     1fa:	68bb      	ldr	r3, [r7, #8]
     1fc:	220a      	movs	r2, #10
     1fe:	831a      	strh	r2, [r3, #24]
     200:	68bb      	ldr	r3, [r7, #8]
     202:	2200      	movs	r2, #0
     204:	835a      	strh	r2, [r3, #26]
     206:	68bb      	ldr	r3, [r7, #8]
     208:	2200      	movs	r2, #0
     20a:	839a      	strh	r2, [r3, #28]
     20c:	68bb      	ldr	r3, [r7, #8]
     20e:	2201      	movs	r2, #1
     210:	83da      	strh	r2, [r3, #30]
     212:	68bb      	ldr	r3, [r7, #8]
     214:	211f      	movs	r1, #31
     216:	0018      	movs	r0, r3
     218:	f7ff ff6e 	bl	f8 <get_checksum>
     21c:	0003      	movs	r3, r0
     21e:	001a      	movs	r2, r3
     220:	68bb      	ldr	r3, [r7, #8]
     222:	87da      	strh	r2, [r3, #62]	; 0x3e
     224:	4b04      	ldr	r3, [pc, #16]	; (238 <update_telemetry+0xc4>)
     226:	681b      	ldr	r3, [r3, #0]
     228:	2201      	movs	r2, #1
     22a:	405a      	eors	r2, r3
     22c:	4b02      	ldr	r3, [pc, #8]	; (238 <update_telemetry+0xc4>)
     22e:	601a      	str	r2, [r3, #0]
     230:	46c0      	nop			; (mov r8, r8)
     232:	46bd      	mov	sp, r7
     234:	b004      	add	sp, #16
     236:	bd80      	pop	{r7, pc}
     238:	200000d8 	.word	0x200000d8
     23c:	200000d0 	.word	0x200000d0
     240:	ffffb060 	.word	0xffffb060
     244:	40090000 	.word	0x40090000

00000248 <main>:
     248:	b590      	push	{r4, r7, lr}
     24a:	b0a7      	sub	sp, #156	; 0x9c
     24c:	af00      	add	r7, sp, #0
     24e:	2380      	movs	r3, #128	; 0x80
     250:	18fb      	adds	r3, r7, r3
     252:	4a2e      	ldr	r2, [pc, #184]	; (30c <main+0xc4>)
     254:	ca13      	ldmia	r2!, {r0, r1, r4}
     256:	c313      	stmia	r3!, {r0, r1, r4}
     258:	8812      	ldrh	r2, [r2, #0]
     25a:	801a      	strh	r2, [r3, #0]
     25c:	f000 f9f4 	bl	648 <SystemInit>
     260:	4b2b      	ldr	r3, [pc, #172]	; (310 <main+0xc8>)
     262:	2200      	movs	r2, #0
     264:	601a      	str	r2, [r3, #0]
     266:	2300      	movs	r3, #0
     268:	2294      	movs	r2, #148	; 0x94
     26a:	18ba      	adds	r2, r7, r2
     26c:	6013      	str	r3, [r2, #0]
     26e:	4b29      	ldr	r3, [pc, #164]	; (314 <main+0xcc>)
     270:	4a29      	ldr	r2, [pc, #164]	; (318 <main+0xd0>)
     272:	601a      	str	r2, [r3, #0]
     274:	4b29      	ldr	r3, [pc, #164]	; (31c <main+0xd4>)
     276:	0018      	movs	r0, r3
     278:	f000 ff2e 	bl	10d8 <xprintf>
     27c:	4b28      	ldr	r3, [pc, #160]	; (320 <main+0xd8>)
     27e:	2200      	movs	r2, #0
     280:	601a      	str	r2, [r3, #0]
     282:	4b28      	ldr	r3, [pc, #160]	; (324 <main+0xdc>)
     284:	4a28      	ldr	r2, [pc, #160]	; (328 <main+0xe0>)
     286:	601a      	str	r2, [r3, #0]
     288:	4b26      	ldr	r3, [pc, #152]	; (324 <main+0xdc>)
     28a:	4a28      	ldr	r2, [pc, #160]	; (32c <main+0xe4>)
     28c:	605a      	str	r2, [r3, #4]
     28e:	4b28      	ldr	r3, [pc, #160]	; (330 <main+0xe8>)
     290:	2200      	movs	r2, #0
     292:	601a      	str	r2, [r3, #0]
     294:	4b27      	ldr	r3, [pc, #156]	; (334 <main+0xec>)
     296:	681b      	ldr	r3, [r3, #0]
     298:	2b00      	cmp	r3, #0
     29a:	d029      	beq.n	2f0 <main+0xa8>
     29c:	4b26      	ldr	r3, [pc, #152]	; (338 <main+0xf0>)
     29e:	881b      	ldrh	r3, [r3, #0]
     2a0:	2220      	movs	r2, #32
     2a2:	4013      	ands	r3, r2
     2a4:	b29b      	uxth	r3, r3
     2a6:	2b00      	cmp	r3, #0
     2a8:	d01b      	beq.n	2e2 <main+0x9a>
     2aa:	4b23      	ldr	r3, [pc, #140]	; (338 <main+0xf0>)
     2ac:	2202      	movs	r2, #2
     2ae:	5e9b      	ldrsh	r3, [r3, r2]
     2b0:	2b00      	cmp	r3, #0
     2b2:	da06      	bge.n	2c2 <main+0x7a>
     2b4:	4b20      	ldr	r3, [pc, #128]	; (338 <main+0xf0>)
     2b6:	2202      	movs	r2, #2
     2b8:	5e9b      	ldrsh	r3, [r3, r2]
     2ba:	4a20      	ldr	r2, [pc, #128]	; (33c <main+0xf4>)
     2bc:	4694      	mov	ip, r2
     2be:	4463      	add	r3, ip
     2c0:	e002      	b.n	2c8 <main+0x80>
     2c2:	4b1d      	ldr	r3, [pc, #116]	; (338 <main+0xf0>)
     2c4:	2202      	movs	r2, #2
     2c6:	5e9b      	ldrsh	r3, [r3, r2]
     2c8:	2290      	movs	r2, #144	; 0x90
     2ca:	18ba      	adds	r2, r7, r2
     2cc:	6013      	str	r3, [r2, #0]
     2ce:	4b1c      	ldr	r3, [pc, #112]	; (340 <main+0xf8>)
     2d0:	2290      	movs	r2, #144	; 0x90
     2d2:	18ba      	adds	r2, r7, r2
     2d4:	6812      	ldr	r2, [r2, #0]
     2d6:	2180      	movs	r1, #128	; 0x80
     2d8:	0109      	lsls	r1, r1, #4
     2da:	468c      	mov	ip, r1
     2dc:	4462      	add	r2, ip
     2de:	605a      	str	r2, [r3, #4]
     2e0:	e003      	b.n	2ea <main+0xa2>
     2e2:	4b17      	ldr	r3, [pc, #92]	; (340 <main+0xf8>)
     2e4:	2280      	movs	r2, #128	; 0x80
     2e6:	0112      	lsls	r2, r2, #4
     2e8:	605a      	str	r2, [r3, #4]
     2ea:	4b12      	ldr	r3, [pc, #72]	; (334 <main+0xec>)
     2ec:	2200      	movs	r2, #0
     2ee:	601a      	str	r2, [r3, #0]
     2f0:	4b14      	ldr	r3, [pc, #80]	; (344 <main+0xfc>)
     2f2:	681b      	ldr	r3, [r3, #0]
     2f4:	2b00      	cmp	r3, #0
     2f6:	d0cd      	beq.n	294 <main+0x4c>
     2f8:	4b13      	ldr	r3, [pc, #76]	; (348 <main+0x100>)
     2fa:	681b      	ldr	r3, [r3, #0]
     2fc:	0018      	movs	r0, r3
     2fe:	f7ff ff39 	bl	174 <update_telemetry>
     302:	4b10      	ldr	r3, [pc, #64]	; (344 <main+0xfc>)
     304:	2200      	movs	r2, #0
     306:	601a      	str	r2, [r3, #0]
     308:	e7c4      	b.n	294 <main+0x4c>
     30a:	46c0      	nop			; (mov r8, r8)
     30c:	000017a4 	.word	0x000017a4
     310:	200000dc 	.word	0x200000dc
     314:	20000500 	.word	0x20000500
     318:	00000c49 	.word	0x00000c49
     31c:	0000179c 	.word	0x0000179c
     320:	200000e0 	.word	0x200000e0
     324:	200000d0 	.word	0x200000d0
     328:	20000044 	.word	0x20000044
     32c:	20000084 	.word	0x20000084
     330:	200000d8 	.word	0x200000d8
     334:	200000e8 	.word	0x200000e8
     338:	200000c4 	.word	0x200000c4
     33c:	ffff0000 	.word	0xffff0000
     340:	40090000 	.word	0x40090000
     344:	200000ec 	.word	0x200000ec
     348:	200000e4 	.word	0x200000e4

0000034c <PortConfig>:
     34c:	b580      	push	{r7, lr}
     34e:	af00      	add	r7, sp, #0
     350:	4b47      	ldr	r3, [pc, #284]	; (470 <_stack_size+0x70>)
     352:	4a47      	ldr	r2, [pc, #284]	; (470 <_stack_size+0x70>)
     354:	69d2      	ldr	r2, [r2, #28]
     356:	2180      	movs	r1, #128	; 0x80
     358:	0449      	lsls	r1, r1, #17
     35a:	430a      	orrs	r2, r1
     35c:	61da      	str	r2, [r3, #28]
     35e:	4b45      	ldr	r3, [pc, #276]	; (474 <_stack_size+0x74>)
     360:	2200      	movs	r2, #0
     362:	609a      	str	r2, [r3, #8]
     364:	4b43      	ldr	r3, [pc, #268]	; (474 <_stack_size+0x74>)
     366:	2200      	movs	r2, #0
     368:	601a      	str	r2, [r3, #0]
     36a:	4b42      	ldr	r3, [pc, #264]	; (474 <_stack_size+0x74>)
     36c:	22ff      	movs	r2, #255	; 0xff
     36e:	01d2      	lsls	r2, r2, #7
     370:	605a      	str	r2, [r3, #4]
     372:	4b40      	ldr	r3, [pc, #256]	; (474 <_stack_size+0x74>)
     374:	22ff      	movs	r2, #255	; 0xff
     376:	01d2      	lsls	r2, r2, #7
     378:	60da      	str	r2, [r3, #12]
     37a:	4b3e      	ldr	r3, [pc, #248]	; (474 <_stack_size+0x74>)
     37c:	4a3e      	ldr	r2, [pc, #248]	; (478 <_stack_size+0x78>)
     37e:	619a      	str	r2, [r3, #24]
     380:	4b3b      	ldr	r3, [pc, #236]	; (470 <_stack_size+0x70>)
     382:	4a3b      	ldr	r2, [pc, #236]	; (470 <_stack_size+0x70>)
     384:	69d2      	ldr	r2, [r2, #28]
     386:	2180      	movs	r1, #128	; 0x80
     388:	0409      	lsls	r1, r1, #16
     38a:	430a      	orrs	r2, r1
     38c:	61da      	str	r2, [r3, #28]
     38e:	4b38      	ldr	r3, [pc, #224]	; (470 <_stack_size+0x70>)
     390:	4a37      	ldr	r2, [pc, #220]	; (470 <_stack_size+0x70>)
     392:	69d2      	ldr	r2, [r2, #28]
     394:	2180      	movs	r1, #128	; 0x80
     396:	0449      	lsls	r1, r1, #17
     398:	430a      	orrs	r2, r1
     39a:	61da      	str	r2, [r3, #28]
     39c:	4b37      	ldr	r3, [pc, #220]	; (47c <_stack_size+0x7c>)
     39e:	4a37      	ldr	r2, [pc, #220]	; (47c <_stack_size+0x7c>)
     3a0:	6892      	ldr	r2, [r2, #8]
     3a2:	0192      	lsls	r2, r2, #6
     3a4:	0992      	lsrs	r2, r2, #6
     3a6:	609a      	str	r2, [r3, #8]
     3a8:	4b34      	ldr	r3, [pc, #208]	; (47c <_stack_size+0x7c>)
     3aa:	4a34      	ldr	r2, [pc, #208]	; (47c <_stack_size+0x7c>)
     3ac:	6892      	ldr	r2, [r2, #8]
     3ae:	21a8      	movs	r1, #168	; 0xa8
     3b0:	05c9      	lsls	r1, r1, #23
     3b2:	430a      	orrs	r2, r1
     3b4:	609a      	str	r2, [r3, #8]
     3b6:	4b31      	ldr	r3, [pc, #196]	; (47c <_stack_size+0x7c>)
     3b8:	4a30      	ldr	r2, [pc, #192]	; (47c <_stack_size+0x7c>)
     3ba:	68d2      	ldr	r2, [r2, #12]
     3bc:	21e0      	movs	r1, #224	; 0xe0
     3be:	0209      	lsls	r1, r1, #8
     3c0:	430a      	orrs	r2, r1
     3c2:	60da      	str	r2, [r3, #12]
     3c4:	4b2d      	ldr	r3, [pc, #180]	; (47c <_stack_size+0x7c>)
     3c6:	4a2d      	ldr	r2, [pc, #180]	; (47c <_stack_size+0x7c>)
     3c8:	6992      	ldr	r2, [r2, #24]
     3ca:	21fc      	movs	r1, #252	; 0xfc
     3cc:	0609      	lsls	r1, r1, #24
     3ce:	430a      	orrs	r2, r1
     3d0:	619a      	str	r2, [r3, #24]
     3d2:	4b28      	ldr	r3, [pc, #160]	; (474 <_stack_size+0x74>)
     3d4:	4a27      	ldr	r2, [pc, #156]	; (474 <_stack_size+0x74>)
     3d6:	6892      	ldr	r2, [r2, #8]
     3d8:	0b92      	lsrs	r2, r2, #14
     3da:	0392      	lsls	r2, r2, #14
     3dc:	609a      	str	r2, [r3, #8]
     3de:	4b25      	ldr	r3, [pc, #148]	; (474 <_stack_size+0x74>)
     3e0:	4a24      	ldr	r2, [pc, #144]	; (474 <_stack_size+0x74>)
     3e2:	6892      	ldr	r2, [r2, #8]
     3e4:	4926      	ldr	r1, [pc, #152]	; (480 <_stack_size+0x80>)
     3e6:	430a      	orrs	r2, r1
     3e8:	609a      	str	r2, [r3, #8]
     3ea:	4b22      	ldr	r3, [pc, #136]	; (474 <_stack_size+0x74>)
     3ec:	4a21      	ldr	r2, [pc, #132]	; (474 <_stack_size+0x74>)
     3ee:	68d2      	ldr	r2, [r2, #12]
     3f0:	217f      	movs	r1, #127	; 0x7f
     3f2:	430a      	orrs	r2, r1
     3f4:	60da      	str	r2, [r3, #12]
     3f6:	4b1f      	ldr	r3, [pc, #124]	; (474 <_stack_size+0x74>)
     3f8:	4a1e      	ldr	r2, [pc, #120]	; (474 <_stack_size+0x74>)
     3fa:	6992      	ldr	r2, [r2, #24]
     3fc:	4921      	ldr	r1, [pc, #132]	; (484 <_stack_size+0x84>)
     3fe:	430a      	orrs	r2, r1
     400:	619a      	str	r2, [r3, #24]
     402:	4b1b      	ldr	r3, [pc, #108]	; (470 <_stack_size+0x70>)
     404:	4a1a      	ldr	r2, [pc, #104]	; (470 <_stack_size+0x70>)
     406:	69d2      	ldr	r2, [r2, #28]
     408:	2180      	movs	r1, #128	; 0x80
     40a:	0489      	lsls	r1, r1, #18
     40c:	430a      	orrs	r2, r1
     40e:	61da      	str	r2, [r3, #28]
     410:	4b1d      	ldr	r3, [pc, #116]	; (488 <_stack_size+0x88>)
     412:	4a1d      	ldr	r2, [pc, #116]	; (488 <_stack_size+0x88>)
     414:	68d2      	ldr	r2, [r2, #12]
     416:	2102      	movs	r1, #2
     418:	438a      	bics	r2, r1
     41a:	60da      	str	r2, [r3, #12]
     41c:	4b14      	ldr	r3, [pc, #80]	; (470 <_stack_size+0x70>)
     41e:	4a14      	ldr	r2, [pc, #80]	; (470 <_stack_size+0x70>)
     420:	69d2      	ldr	r2, [r2, #28]
     422:	2180      	movs	r1, #128	; 0x80
     424:	0409      	lsls	r1, r1, #16
     426:	430a      	orrs	r2, r1
     428:	61da      	str	r2, [r3, #28]
     42a:	4b14      	ldr	r3, [pc, #80]	; (47c <_stack_size+0x7c>)
     42c:	4a13      	ldr	r2, [pc, #76]	; (47c <_stack_size+0x7c>)
     42e:	6892      	ldr	r2, [r2, #8]
     430:	4916      	ldr	r1, [pc, #88]	; (48c <_stack_size+0x8c>)
     432:	400a      	ands	r2, r1
     434:	609a      	str	r2, [r3, #8]
     436:	4b11      	ldr	r3, [pc, #68]	; (47c <_stack_size+0x7c>)
     438:	4a10      	ldr	r2, [pc, #64]	; (47c <_stack_size+0x7c>)
     43a:	6892      	ldr	r2, [r2, #8]
     43c:	21a0      	movs	r1, #160	; 0xa0
     43e:	0049      	lsls	r1, r1, #1
     440:	430a      	orrs	r2, r1
     442:	609a      	str	r2, [r3, #8]
     444:	4b0d      	ldr	r3, [pc, #52]	; (47c <_stack_size+0x7c>)
     446:	4a0d      	ldr	r2, [pc, #52]	; (47c <_stack_size+0x7c>)
     448:	68d2      	ldr	r2, [r2, #12]
     44a:	2118      	movs	r1, #24
     44c:	430a      	orrs	r2, r1
     44e:	60da      	str	r2, [r3, #12]
     450:	4b0a      	ldr	r3, [pc, #40]	; (47c <_stack_size+0x7c>)
     452:	4a0a      	ldr	r2, [pc, #40]	; (47c <_stack_size+0x7c>)
     454:	6992      	ldr	r2, [r2, #24]
     456:	21f0      	movs	r1, #240	; 0xf0
     458:	0089      	lsls	r1, r1, #2
     45a:	430a      	orrs	r2, r1
     45c:	619a      	str	r2, [r3, #24]
     45e:	4b07      	ldr	r3, [pc, #28]	; (47c <_stack_size+0x7c>)
     460:	4a06      	ldr	r2, [pc, #24]	; (47c <_stack_size+0x7c>)
     462:	6812      	ldr	r2, [r2, #0]
     464:	2118      	movs	r1, #24
     466:	438a      	bics	r2, r1
     468:	601a      	str	r2, [r3, #0]
     46a:	46c0      	nop			; (mov r8, r8)
     46c:	46bd      	mov	sp, r7
     46e:	bd80      	pop	{r7, pc}
     470:	40020000 	.word	0x40020000
     474:	400c0000 	.word	0x400c0000
     478:	3fffc000 	.word	0x3fffc000
     47c:	400b8000 	.word	0x400b8000
     480:	00001555 	.word	0x00001555
     484:	00003fff 	.word	0x00003fff
     488:	400c8000 	.word	0x400c8000
     48c:	fffffc3f 	.word	0xfffffc3f

00000490 <dac_init>:
     490:	b580      	push	{r7, lr}
     492:	af00      	add	r7, sp, #0
     494:	4b07      	ldr	r3, [pc, #28]	; (4b4 <dac_init+0x24>)
     496:	4a07      	ldr	r2, [pc, #28]	; (4b4 <dac_init+0x24>)
     498:	69d2      	ldr	r2, [r2, #28]
     49a:	2180      	movs	r1, #128	; 0x80
     49c:	02c9      	lsls	r1, r1, #11
     49e:	430a      	orrs	r2, r1
     4a0:	61da      	str	r2, [r3, #28]
     4a2:	4b05      	ldr	r3, [pc, #20]	; (4b8 <dac_init+0x28>)
     4a4:	4a04      	ldr	r2, [pc, #16]	; (4b8 <dac_init+0x28>)
     4a6:	6812      	ldr	r2, [r2, #0]
     4a8:	2104      	movs	r1, #4
     4aa:	430a      	orrs	r2, r1
     4ac:	601a      	str	r2, [r3, #0]
     4ae:	46c0      	nop			; (mov r8, r8)
     4b0:	46bd      	mov	sp, r7
     4b2:	bd80      	pop	{r7, pc}
     4b4:	40020000 	.word	0x40020000
     4b8:	40090000 	.word	0x40090000

000004bc <ClkConfig>:
     4bc:	b580      	push	{r7, lr}
     4be:	af00      	add	r7, sp, #0
     4c0:	4b18      	ldr	r3, [pc, #96]	; (524 <ClkConfig+0x68>)
     4c2:	4a18      	ldr	r2, [pc, #96]	; (524 <ClkConfig+0x68>)
     4c4:	6892      	ldr	r2, [r2, #8]
     4c6:	2101      	movs	r1, #1
     4c8:	430a      	orrs	r2, r1
     4ca:	609a      	str	r2, [r3, #8]
     4cc:	46c0      	nop			; (mov r8, r8)
     4ce:	4b15      	ldr	r3, [pc, #84]	; (524 <ClkConfig+0x68>)
     4d0:	681b      	ldr	r3, [r3, #0]
     4d2:	2204      	movs	r2, #4
     4d4:	4013      	ands	r3, r2
     4d6:	d0fa      	beq.n	4ce <ClkConfig+0x12>
     4d8:	4b12      	ldr	r3, [pc, #72]	; (524 <ClkConfig+0x68>)
     4da:	4a12      	ldr	r2, [pc, #72]	; (524 <ClkConfig+0x68>)
     4dc:	68d2      	ldr	r2, [r2, #12]
     4de:	2102      	movs	r1, #2
     4e0:	430a      	orrs	r2, r1
     4e2:	60da      	str	r2, [r3, #12]
     4e4:	4b0f      	ldr	r3, [pc, #60]	; (524 <ClkConfig+0x68>)
     4e6:	4a10      	ldr	r2, [pc, #64]	; (528 <ClkConfig+0x6c>)
     4e8:	605a      	str	r2, [r3, #4]
     4ea:	46c0      	nop			; (mov r8, r8)
     4ec:	4b0d      	ldr	r3, [pc, #52]	; (524 <ClkConfig+0x68>)
     4ee:	681b      	ldr	r3, [r3, #0]
     4f0:	2202      	movs	r2, #2
     4f2:	4013      	ands	r3, r2
     4f4:	d0fa      	beq.n	4ec <ClkConfig+0x30>
     4f6:	4b0d      	ldr	r3, [pc, #52]	; (52c <ClkConfig+0x70>)
     4f8:	4a0c      	ldr	r2, [pc, #48]	; (52c <ClkConfig+0x70>)
     4fa:	6812      	ldr	r2, [r2, #0]
     4fc:	2120      	movs	r1, #32
     4fe:	430a      	orrs	r2, r1
     500:	601a      	str	r2, [r3, #0]
     502:	4b08      	ldr	r3, [pc, #32]	; (524 <ClkConfig+0x68>)
     504:	4a07      	ldr	r2, [pc, #28]	; (524 <ClkConfig+0x68>)
     506:	68d2      	ldr	r2, [r2, #12]
     508:	2180      	movs	r1, #128	; 0x80
     50a:	0049      	lsls	r1, r1, #1
     50c:	430a      	orrs	r2, r1
     50e:	60da      	str	r2, [r3, #12]
     510:	4b04      	ldr	r3, [pc, #16]	; (524 <ClkConfig+0x68>)
     512:	4a04      	ldr	r2, [pc, #16]	; (524 <ClkConfig+0x68>)
     514:	68d2      	ldr	r2, [r2, #12]
     516:	2104      	movs	r1, #4
     518:	430a      	orrs	r2, r1
     51a:	60da      	str	r2, [r3, #12]
     51c:	46c0      	nop			; (mov r8, r8)
     51e:	46bd      	mov	sp, r7
     520:	bd80      	pop	{r7, pc}
     522:	46c0      	nop			; (mov r8, r8)
     524:	40020000 	.word	0x40020000
     528:	00000e04 	.word	0x00000e04
     52c:	40018000 	.word	0x40018000

00000530 <TimerConfig>:
     530:	b580      	push	{r7, lr}
     532:	af00      	add	r7, sp, #0
     534:	4b17      	ldr	r3, [pc, #92]	; (594 <TimerConfig+0x64>)
     536:	4a17      	ldr	r2, [pc, #92]	; (594 <TimerConfig+0x64>)
     538:	69d2      	ldr	r2, [r2, #28]
     53a:	2180      	movs	r1, #128	; 0x80
     53c:	0309      	lsls	r1, r1, #12
     53e:	430a      	orrs	r2, r1
     540:	61da      	str	r2, [r3, #28]
     542:	4b14      	ldr	r3, [pc, #80]	; (594 <TimerConfig+0x64>)
     544:	4a13      	ldr	r2, [pc, #76]	; (594 <TimerConfig+0x64>)
     546:	6a92      	ldr	r2, [r2, #40]	; 0x28
     548:	2180      	movs	r1, #128	; 0x80
     54a:	04c9      	lsls	r1, r1, #19
     54c:	430a      	orrs	r2, r1
     54e:	629a      	str	r2, [r3, #40]	; 0x28
     550:	4b10      	ldr	r3, [pc, #64]	; (594 <TimerConfig+0x64>)
     552:	4a10      	ldr	r2, [pc, #64]	; (594 <TimerConfig+0x64>)
     554:	6a92      	ldr	r2, [r2, #40]	; 0x28
     556:	4910      	ldr	r1, [pc, #64]	; (598 <TimerConfig+0x68>)
     558:	400a      	ands	r2, r1
     55a:	629a      	str	r2, [r3, #40]	; 0x28
     55c:	4b0f      	ldr	r3, [pc, #60]	; (59c <TimerConfig+0x6c>)
     55e:	2200      	movs	r2, #0
     560:	601a      	str	r2, [r3, #0]
     562:	4b0e      	ldr	r3, [pc, #56]	; (59c <TimerConfig+0x6c>)
     564:	2277      	movs	r2, #119	; 0x77
     566:	605a      	str	r2, [r3, #4]
     568:	4b0c      	ldr	r3, [pc, #48]	; (59c <TimerConfig+0x6c>)
     56a:	4a0d      	ldr	r2, [pc, #52]	; (5a0 <TimerConfig+0x70>)
     56c:	609a      	str	r2, [r3, #8]
     56e:	4b0b      	ldr	r3, [pc, #44]	; (59c <TimerConfig+0x6c>)
     570:	22fa      	movs	r2, #250	; 0xfa
     572:	00d2      	lsls	r2, r2, #3
     574:	611a      	str	r2, [r3, #16]
     576:	4b09      	ldr	r3, [pc, #36]	; (59c <TimerConfig+0x6c>)
     578:	4a08      	ldr	r2, [pc, #32]	; (59c <TimerConfig+0x6c>)
     57a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     57c:	2102      	movs	r1, #2
     57e:	430a      	orrs	r2, r1
     580:	659a      	str	r2, [r3, #88]	; 0x58
     582:	4b06      	ldr	r3, [pc, #24]	; (59c <TimerConfig+0x6c>)
     584:	2201      	movs	r2, #1
     586:	60da      	str	r2, [r3, #12]
     588:	200d      	movs	r0, #13
     58a:	f7ff fd99 	bl	c0 <NVIC_EnableIRQ>
     58e:	46c0      	nop			; (mov r8, r8)
     590:	46bd      	mov	sp, r7
     592:	bd80      	pop	{r7, pc}
     594:	40020000 	.word	0x40020000
     598:	ff00ffff 	.word	0xff00ffff
     59c:	40098000 	.word	0x40098000
     5a0:	00001387 	.word	0x00001387

000005a4 <mil_std_1533_init_rt>:
     5a4:	b580      	push	{r7, lr}
     5a6:	b082      	sub	sp, #8
     5a8:	af00      	add	r7, sp, #0
     5aa:	4b22      	ldr	r3, [pc, #136]	; (634 <mil_std_1533_init_rt+0x90>)
     5ac:	603b      	str	r3, [r7, #0]
     5ae:	4b22      	ldr	r3, [pc, #136]	; (638 <mil_std_1533_init_rt+0x94>)
     5b0:	4a21      	ldr	r2, [pc, #132]	; (638 <mil_std_1533_init_rt+0x94>)
     5b2:	69d2      	ldr	r2, [r2, #28]
     5b4:	2180      	movs	r1, #128	; 0x80
     5b6:	0089      	lsls	r1, r1, #2
     5b8:	430a      	orrs	r2, r1
     5ba:	61da      	str	r2, [r3, #28]
     5bc:	4b1e      	ldr	r3, [pc, #120]	; (638 <mil_std_1533_init_rt+0x94>)
     5be:	4a1e      	ldr	r2, [pc, #120]	; (638 <mil_std_1533_init_rt+0x94>)
     5c0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     5c2:	2180      	movs	r1, #128	; 0x80
     5c4:	0489      	lsls	r1, r1, #18
     5c6:	430a      	orrs	r2, r1
     5c8:	635a      	str	r2, [r3, #52]	; 0x34
     5ca:	4a1c      	ldr	r2, [pc, #112]	; (63c <mil_std_1533_init_rt+0x98>)
     5cc:	2380      	movs	r3, #128	; 0x80
     5ce:	015b      	lsls	r3, r3, #5
     5d0:	2101      	movs	r1, #1
     5d2:	50d1      	str	r1, [r2, r3]
     5d4:	4a19      	ldr	r2, [pc, #100]	; (63c <mil_std_1533_init_rt+0x98>)
     5d6:	2380      	movs	r3, #128	; 0x80
     5d8:	015b      	lsls	r3, r3, #5
     5da:	4919      	ldr	r1, [pc, #100]	; (640 <mil_std_1533_init_rt+0x9c>)
     5dc:	50d1      	str	r1, [r2, r3]
     5de:	4917      	ldr	r1, [pc, #92]	; (63c <mil_std_1533_init_rt+0x98>)
     5e0:	4a16      	ldr	r2, [pc, #88]	; (63c <mil_std_1533_init_rt+0x98>)
     5e2:	2381      	movs	r3, #129	; 0x81
     5e4:	015b      	lsls	r3, r3, #5
     5e6:	58d3      	ldr	r3, [r2, r3]
     5e8:	2206      	movs	r2, #6
     5ea:	431a      	orrs	r2, r3
     5ec:	2381      	movs	r3, #129	; 0x81
     5ee:	015b      	lsls	r3, r3, #5
     5f0:	50ca      	str	r2, [r1, r3]
     5f2:	2001      	movs	r0, #1
     5f4:	f7ff fd64 	bl	c0 <NVIC_EnableIRQ>
     5f8:	4910      	ldr	r1, [pc, #64]	; (63c <mil_std_1533_init_rt+0x98>)
     5fa:	4a12      	ldr	r2, [pc, #72]	; (644 <mil_std_1533_init_rt+0xa0>)
     5fc:	2380      	movs	r3, #128	; 0x80
     5fe:	01db      	lsls	r3, r3, #7
     600:	508b      	str	r3, [r1, r2]
     602:	2300      	movs	r3, #0
     604:	607b      	str	r3, [r7, #4]
     606:	e00d      	b.n	624 <mil_std_1533_init_rt+0x80>
     608:	683b      	ldr	r3, [r7, #0]
     60a:	1d1a      	adds	r2, r3, #4
     60c:	603a      	str	r2, [r7, #0]
     60e:	687a      	ldr	r2, [r7, #4]
     610:	b292      	uxth	r2, r2
     612:	210f      	movs	r1, #15
     614:	400a      	ands	r2, r1
     616:	b292      	uxth	r2, r2
     618:	3230      	adds	r2, #48	; 0x30
     61a:	b292      	uxth	r2, r2
     61c:	601a      	str	r2, [r3, #0]
     61e:	687b      	ldr	r3, [r7, #4]
     620:	3301      	adds	r3, #1
     622:	607b      	str	r3, [r7, #4]
     624:	687b      	ldr	r3, [r7, #4]
     626:	2b1f      	cmp	r3, #31
     628:	ddee      	ble.n	608 <mil_std_1533_init_rt+0x64>
     62a:	46c0      	nop			; (mov r8, r8)
     62c:	46bd      	mov	sp, r7
     62e:	b002      	add	sp, #8
     630:	bd80      	pop	{r7, pc}
     632:	46c0      	nop			; (mov r8, r8)
     634:	40048080 	.word	0x40048080
     638:	40020000 	.word	0x40020000
     63c:	40048000 	.word	0x40048000
     640:	0003c238 	.word	0x0003c238
     644:	00001018 	.word	0x00001018

00000648 <SystemInit>:
     648:	b580      	push	{r7, lr}
     64a:	af00      	add	r7, sp, #0
     64c:	f7ff ff36 	bl	4bc <ClkConfig>
     650:	f7ff fe7c 	bl	34c <PortConfig>
     654:	f7ff ff6c 	bl	530 <TimerConfig>
     658:	f000 fa26 	bl	aa8 <uart_init>
     65c:	f7ff ffa2 	bl	5a4 <mil_std_1533_init_rt>
     660:	f7ff ff16 	bl	490 <dac_init>
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
     680:	200000e4 	.word	0x200000e4

00000684 <TIMER4_Handler>:
     684:	b580      	push	{r7, lr}
     686:	af00      	add	r7, sp, #0
     688:	4b06      	ldr	r3, [pc, #24]	; (6a4 <TIMER4_Handler+0x20>)
     68a:	2200      	movs	r2, #0
     68c:	655a      	str	r2, [r3, #84]	; 0x54
     68e:	4b06      	ldr	r3, [pc, #24]	; (6a8 <TIMER4_Handler+0x24>)
     690:	681b      	ldr	r3, [r3, #0]
     692:	1c5a      	adds	r2, r3, #1
     694:	4b04      	ldr	r3, [pc, #16]	; (6a8 <TIMER4_Handler+0x24>)
     696:	601a      	str	r2, [r3, #0]
     698:	4b04      	ldr	r3, [pc, #16]	; (6ac <TIMER4_Handler+0x28>)
     69a:	2201      	movs	r2, #1
     69c:	601a      	str	r2, [r3, #0]
     69e:	46c0      	nop			; (mov r8, r8)
     6a0:	46bd      	mov	sp, r7
     6a2:	bd80      	pop	{r7, pc}
     6a4:	40098000 	.word	0x40098000
     6a8:	200000e4 	.word	0x200000e4
     6ac:	200000ec 	.word	0x200000ec

000006b0 <MIL_STD_1553B1_Handler>:
     6b0:	b590      	push	{r4, r7, lr}
     6b2:	b087      	sub	sp, #28
     6b4:	af00      	add	r7, sp, #0
     6b6:	4bba      	ldr	r3, [pc, #744]	; (9a0 <MIL_STD_1553B1_Handler+0x2f0>)
     6b8:	613b      	str	r3, [r7, #16]
     6ba:	4aba      	ldr	r2, [pc, #744]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     6bc:	4bba      	ldr	r3, [pc, #744]	; (9a8 <MIL_STD_1553B1_Handler+0x2f8>)
     6be:	58d3      	ldr	r3, [r2, r3]
     6c0:	2202      	movs	r2, #2
     6c2:	4013      	ands	r3, r2
     6c4:	d100      	bne.n	6c8 <MIL_STD_1553B1_Handler+0x18>
     6c6:	e11b      	b.n	900 <MIL_STD_1553B1_Handler+0x250>
     6c8:	4ab6      	ldr	r2, [pc, #728]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     6ca:	4bb8      	ldr	r3, [pc, #736]	; (9ac <MIL_STD_1553B1_Handler+0x2fc>)
     6cc:	58d3      	ldr	r3, [r2, r3]
     6ce:	4ab8      	ldr	r2, [pc, #736]	; (9b0 <MIL_STD_1553B1_Handler+0x300>)
     6d0:	4293      	cmp	r3, r2
     6d2:	d000      	beq.n	6d6 <MIL_STD_1553B1_Handler+0x26>
     6d4:	e114      	b.n	900 <MIL_STD_1553B1_Handler+0x250>
     6d6:	4bb7      	ldr	r3, [pc, #732]	; (9b4 <MIL_STD_1553B1_Handler+0x304>)
     6d8:	4ab6      	ldr	r2, [pc, #728]	; (9b4 <MIL_STD_1553B1_Handler+0x304>)
     6da:	6812      	ldr	r2, [r2, #0]
     6dc:	49b6      	ldr	r1, [pc, #728]	; (9b8 <MIL_STD_1553B1_Handler+0x308>)
     6de:	430a      	orrs	r2, r1
     6e0:	601a      	str	r2, [r3, #0]
     6e2:	4bb6      	ldr	r3, [pc, #728]	; (9bc <MIL_STD_1553B1_Handler+0x30c>)
     6e4:	681b      	ldr	r3, [r3, #0]
     6e6:	2201      	movs	r2, #1
     6e8:	4053      	eors	r3, r2
     6ea:	009a      	lsls	r2, r3, #2
     6ec:	4bb4      	ldr	r3, [pc, #720]	; (9c0 <MIL_STD_1553B1_Handler+0x310>)
     6ee:	18d3      	adds	r3, r2, r3
     6f0:	681b      	ldr	r3, [r3, #0]
     6f2:	60fb      	str	r3, [r7, #12]
     6f4:	693b      	ldr	r3, [r7, #16]
     6f6:	1d1a      	adds	r2, r3, #4
     6f8:	613a      	str	r2, [r7, #16]
     6fa:	68fa      	ldr	r2, [r7, #12]
     6fc:	1c91      	adds	r1, r2, #2
     6fe:	60f9      	str	r1, [r7, #12]
     700:	8812      	ldrh	r2, [r2, #0]
     702:	601a      	str	r2, [r3, #0]
     704:	693b      	ldr	r3, [r7, #16]
     706:	1d1a      	adds	r2, r3, #4
     708:	613a      	str	r2, [r7, #16]
     70a:	68fa      	ldr	r2, [r7, #12]
     70c:	1c91      	adds	r1, r2, #2
     70e:	60f9      	str	r1, [r7, #12]
     710:	8812      	ldrh	r2, [r2, #0]
     712:	601a      	str	r2, [r3, #0]
     714:	693b      	ldr	r3, [r7, #16]
     716:	1d1a      	adds	r2, r3, #4
     718:	613a      	str	r2, [r7, #16]
     71a:	68fa      	ldr	r2, [r7, #12]
     71c:	1c91      	adds	r1, r2, #2
     71e:	60f9      	str	r1, [r7, #12]
     720:	8812      	ldrh	r2, [r2, #0]
     722:	601a      	str	r2, [r3, #0]
     724:	693b      	ldr	r3, [r7, #16]
     726:	1d1a      	adds	r2, r3, #4
     728:	613a      	str	r2, [r7, #16]
     72a:	68fa      	ldr	r2, [r7, #12]
     72c:	1c91      	adds	r1, r2, #2
     72e:	60f9      	str	r1, [r7, #12]
     730:	8812      	ldrh	r2, [r2, #0]
     732:	601a      	str	r2, [r3, #0]
     734:	693b      	ldr	r3, [r7, #16]
     736:	1d1a      	adds	r2, r3, #4
     738:	613a      	str	r2, [r7, #16]
     73a:	68fa      	ldr	r2, [r7, #12]
     73c:	1c91      	adds	r1, r2, #2
     73e:	60f9      	str	r1, [r7, #12]
     740:	8812      	ldrh	r2, [r2, #0]
     742:	601a      	str	r2, [r3, #0]
     744:	693b      	ldr	r3, [r7, #16]
     746:	1d1a      	adds	r2, r3, #4
     748:	613a      	str	r2, [r7, #16]
     74a:	68fa      	ldr	r2, [r7, #12]
     74c:	1c91      	adds	r1, r2, #2
     74e:	60f9      	str	r1, [r7, #12]
     750:	8812      	ldrh	r2, [r2, #0]
     752:	601a      	str	r2, [r3, #0]
     754:	693b      	ldr	r3, [r7, #16]
     756:	1d1a      	adds	r2, r3, #4
     758:	613a      	str	r2, [r7, #16]
     75a:	68fa      	ldr	r2, [r7, #12]
     75c:	1c91      	adds	r1, r2, #2
     75e:	60f9      	str	r1, [r7, #12]
     760:	8812      	ldrh	r2, [r2, #0]
     762:	601a      	str	r2, [r3, #0]
     764:	693b      	ldr	r3, [r7, #16]
     766:	1d1a      	adds	r2, r3, #4
     768:	613a      	str	r2, [r7, #16]
     76a:	68fa      	ldr	r2, [r7, #12]
     76c:	1c91      	adds	r1, r2, #2
     76e:	60f9      	str	r1, [r7, #12]
     770:	8812      	ldrh	r2, [r2, #0]
     772:	601a      	str	r2, [r3, #0]
     774:	693b      	ldr	r3, [r7, #16]
     776:	1d1a      	adds	r2, r3, #4
     778:	613a      	str	r2, [r7, #16]
     77a:	68fa      	ldr	r2, [r7, #12]
     77c:	1c91      	adds	r1, r2, #2
     77e:	60f9      	str	r1, [r7, #12]
     780:	8812      	ldrh	r2, [r2, #0]
     782:	601a      	str	r2, [r3, #0]
     784:	693b      	ldr	r3, [r7, #16]
     786:	1d1a      	adds	r2, r3, #4
     788:	613a      	str	r2, [r7, #16]
     78a:	68fa      	ldr	r2, [r7, #12]
     78c:	1c91      	adds	r1, r2, #2
     78e:	60f9      	str	r1, [r7, #12]
     790:	8812      	ldrh	r2, [r2, #0]
     792:	601a      	str	r2, [r3, #0]
     794:	693b      	ldr	r3, [r7, #16]
     796:	1d1a      	adds	r2, r3, #4
     798:	613a      	str	r2, [r7, #16]
     79a:	68fa      	ldr	r2, [r7, #12]
     79c:	1c91      	adds	r1, r2, #2
     79e:	60f9      	str	r1, [r7, #12]
     7a0:	8812      	ldrh	r2, [r2, #0]
     7a2:	601a      	str	r2, [r3, #0]
     7a4:	693b      	ldr	r3, [r7, #16]
     7a6:	1d1a      	adds	r2, r3, #4
     7a8:	613a      	str	r2, [r7, #16]
     7aa:	68fa      	ldr	r2, [r7, #12]
     7ac:	1c91      	adds	r1, r2, #2
     7ae:	60f9      	str	r1, [r7, #12]
     7b0:	8812      	ldrh	r2, [r2, #0]
     7b2:	601a      	str	r2, [r3, #0]
     7b4:	693b      	ldr	r3, [r7, #16]
     7b6:	1d1a      	adds	r2, r3, #4
     7b8:	613a      	str	r2, [r7, #16]
     7ba:	68fa      	ldr	r2, [r7, #12]
     7bc:	1c91      	adds	r1, r2, #2
     7be:	60f9      	str	r1, [r7, #12]
     7c0:	8812      	ldrh	r2, [r2, #0]
     7c2:	601a      	str	r2, [r3, #0]
     7c4:	693b      	ldr	r3, [r7, #16]
     7c6:	1d1a      	adds	r2, r3, #4
     7c8:	613a      	str	r2, [r7, #16]
     7ca:	68fa      	ldr	r2, [r7, #12]
     7cc:	1c91      	adds	r1, r2, #2
     7ce:	60f9      	str	r1, [r7, #12]
     7d0:	8812      	ldrh	r2, [r2, #0]
     7d2:	601a      	str	r2, [r3, #0]
     7d4:	693b      	ldr	r3, [r7, #16]
     7d6:	1d1a      	adds	r2, r3, #4
     7d8:	613a      	str	r2, [r7, #16]
     7da:	68fa      	ldr	r2, [r7, #12]
     7dc:	1c91      	adds	r1, r2, #2
     7de:	60f9      	str	r1, [r7, #12]
     7e0:	8812      	ldrh	r2, [r2, #0]
     7e2:	601a      	str	r2, [r3, #0]
     7e4:	693b      	ldr	r3, [r7, #16]
     7e6:	1d1a      	adds	r2, r3, #4
     7e8:	613a      	str	r2, [r7, #16]
     7ea:	68fa      	ldr	r2, [r7, #12]
     7ec:	1c91      	adds	r1, r2, #2
     7ee:	60f9      	str	r1, [r7, #12]
     7f0:	8812      	ldrh	r2, [r2, #0]
     7f2:	601a      	str	r2, [r3, #0]
     7f4:	693b      	ldr	r3, [r7, #16]
     7f6:	1d1a      	adds	r2, r3, #4
     7f8:	613a      	str	r2, [r7, #16]
     7fa:	68fa      	ldr	r2, [r7, #12]
     7fc:	1c91      	adds	r1, r2, #2
     7fe:	60f9      	str	r1, [r7, #12]
     800:	8812      	ldrh	r2, [r2, #0]
     802:	601a      	str	r2, [r3, #0]
     804:	693b      	ldr	r3, [r7, #16]
     806:	1d1a      	adds	r2, r3, #4
     808:	613a      	str	r2, [r7, #16]
     80a:	68fa      	ldr	r2, [r7, #12]
     80c:	1c91      	adds	r1, r2, #2
     80e:	60f9      	str	r1, [r7, #12]
     810:	8812      	ldrh	r2, [r2, #0]
     812:	601a      	str	r2, [r3, #0]
     814:	693b      	ldr	r3, [r7, #16]
     816:	1d1a      	adds	r2, r3, #4
     818:	613a      	str	r2, [r7, #16]
     81a:	68fa      	ldr	r2, [r7, #12]
     81c:	1c91      	adds	r1, r2, #2
     81e:	60f9      	str	r1, [r7, #12]
     820:	8812      	ldrh	r2, [r2, #0]
     822:	601a      	str	r2, [r3, #0]
     824:	693b      	ldr	r3, [r7, #16]
     826:	1d1a      	adds	r2, r3, #4
     828:	613a      	str	r2, [r7, #16]
     82a:	68fa      	ldr	r2, [r7, #12]
     82c:	1c91      	adds	r1, r2, #2
     82e:	60f9      	str	r1, [r7, #12]
     830:	8812      	ldrh	r2, [r2, #0]
     832:	601a      	str	r2, [r3, #0]
     834:	693b      	ldr	r3, [r7, #16]
     836:	1d1a      	adds	r2, r3, #4
     838:	613a      	str	r2, [r7, #16]
     83a:	68fa      	ldr	r2, [r7, #12]
     83c:	1c91      	adds	r1, r2, #2
     83e:	60f9      	str	r1, [r7, #12]
     840:	8812      	ldrh	r2, [r2, #0]
     842:	601a      	str	r2, [r3, #0]
     844:	693b      	ldr	r3, [r7, #16]
     846:	1d1a      	adds	r2, r3, #4
     848:	613a      	str	r2, [r7, #16]
     84a:	68fa      	ldr	r2, [r7, #12]
     84c:	1c91      	adds	r1, r2, #2
     84e:	60f9      	str	r1, [r7, #12]
     850:	8812      	ldrh	r2, [r2, #0]
     852:	601a      	str	r2, [r3, #0]
     854:	693b      	ldr	r3, [r7, #16]
     856:	1d1a      	adds	r2, r3, #4
     858:	613a      	str	r2, [r7, #16]
     85a:	68fa      	ldr	r2, [r7, #12]
     85c:	1c91      	adds	r1, r2, #2
     85e:	60f9      	str	r1, [r7, #12]
     860:	8812      	ldrh	r2, [r2, #0]
     862:	601a      	str	r2, [r3, #0]
     864:	693b      	ldr	r3, [r7, #16]
     866:	1d1a      	adds	r2, r3, #4
     868:	613a      	str	r2, [r7, #16]
     86a:	68fa      	ldr	r2, [r7, #12]
     86c:	1c91      	adds	r1, r2, #2
     86e:	60f9      	str	r1, [r7, #12]
     870:	8812      	ldrh	r2, [r2, #0]
     872:	601a      	str	r2, [r3, #0]
     874:	693b      	ldr	r3, [r7, #16]
     876:	1d1a      	adds	r2, r3, #4
     878:	613a      	str	r2, [r7, #16]
     87a:	68fa      	ldr	r2, [r7, #12]
     87c:	1c91      	adds	r1, r2, #2
     87e:	60f9      	str	r1, [r7, #12]
     880:	8812      	ldrh	r2, [r2, #0]
     882:	601a      	str	r2, [r3, #0]
     884:	693b      	ldr	r3, [r7, #16]
     886:	1d1a      	adds	r2, r3, #4
     888:	613a      	str	r2, [r7, #16]
     88a:	68fa      	ldr	r2, [r7, #12]
     88c:	1c91      	adds	r1, r2, #2
     88e:	60f9      	str	r1, [r7, #12]
     890:	8812      	ldrh	r2, [r2, #0]
     892:	601a      	str	r2, [r3, #0]
     894:	693b      	ldr	r3, [r7, #16]
     896:	1d1a      	adds	r2, r3, #4
     898:	613a      	str	r2, [r7, #16]
     89a:	68fa      	ldr	r2, [r7, #12]
     89c:	1c91      	adds	r1, r2, #2
     89e:	60f9      	str	r1, [r7, #12]
     8a0:	8812      	ldrh	r2, [r2, #0]
     8a2:	601a      	str	r2, [r3, #0]
     8a4:	693b      	ldr	r3, [r7, #16]
     8a6:	1d1a      	adds	r2, r3, #4
     8a8:	613a      	str	r2, [r7, #16]
     8aa:	68fa      	ldr	r2, [r7, #12]
     8ac:	1c91      	adds	r1, r2, #2
     8ae:	60f9      	str	r1, [r7, #12]
     8b0:	8812      	ldrh	r2, [r2, #0]
     8b2:	601a      	str	r2, [r3, #0]
     8b4:	693b      	ldr	r3, [r7, #16]
     8b6:	1d1a      	adds	r2, r3, #4
     8b8:	613a      	str	r2, [r7, #16]
     8ba:	68fa      	ldr	r2, [r7, #12]
     8bc:	1c91      	adds	r1, r2, #2
     8be:	60f9      	str	r1, [r7, #12]
     8c0:	8812      	ldrh	r2, [r2, #0]
     8c2:	601a      	str	r2, [r3, #0]
     8c4:	693b      	ldr	r3, [r7, #16]
     8c6:	1d1a      	adds	r2, r3, #4
     8c8:	613a      	str	r2, [r7, #16]
     8ca:	68fa      	ldr	r2, [r7, #12]
     8cc:	1c91      	adds	r1, r2, #2
     8ce:	60f9      	str	r1, [r7, #12]
     8d0:	8812      	ldrh	r2, [r2, #0]
     8d2:	601a      	str	r2, [r3, #0]
     8d4:	693b      	ldr	r3, [r7, #16]
     8d6:	1d1a      	adds	r2, r3, #4
     8d8:	613a      	str	r2, [r7, #16]
     8da:	68fa      	ldr	r2, [r7, #12]
     8dc:	1c91      	adds	r1, r2, #2
     8de:	60f9      	str	r1, [r7, #12]
     8e0:	8812      	ldrh	r2, [r2, #0]
     8e2:	601a      	str	r2, [r3, #0]
     8e4:	693b      	ldr	r3, [r7, #16]
     8e6:	1d1a      	adds	r2, r3, #4
     8e8:	613a      	str	r2, [r7, #16]
     8ea:	68fa      	ldr	r2, [r7, #12]
     8ec:	1c91      	adds	r1, r2, #2
     8ee:	60f9      	str	r1, [r7, #12]
     8f0:	8812      	ldrh	r2, [r2, #0]
     8f2:	601a      	str	r2, [r3, #0]
     8f4:	4b2f      	ldr	r3, [pc, #188]	; (9b4 <MIL_STD_1553B1_Handler+0x304>)
     8f6:	4a2f      	ldr	r2, [pc, #188]	; (9b4 <MIL_STD_1553B1_Handler+0x304>)
     8f8:	6812      	ldr	r2, [r2, #0]
     8fa:	0c12      	lsrs	r2, r2, #16
     8fc:	0412      	lsls	r2, r2, #16
     8fe:	601a      	str	r2, [r3, #0]
     900:	4a28      	ldr	r2, [pc, #160]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     902:	4b29      	ldr	r3, [pc, #164]	; (9a8 <MIL_STD_1553B1_Handler+0x2f8>)
     904:	58d3      	ldr	r3, [r2, r3]
     906:	2204      	movs	r2, #4
     908:	4013      	ands	r3, r2
     90a:	d045      	beq.n	998 <MIL_STD_1553B1_Handler+0x2e8>
     90c:	4a25      	ldr	r2, [pc, #148]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     90e:	4b27      	ldr	r3, [pc, #156]	; (9ac <MIL_STD_1553B1_Handler+0x2fc>)
     910:	58d3      	ldr	r3, [r2, r3]
     912:	4a27      	ldr	r2, [pc, #156]	; (9b0 <MIL_STD_1553B1_Handler+0x300>)
     914:	4293      	cmp	r3, r2
     916:	d03f      	beq.n	998 <MIL_STD_1553B1_Handler+0x2e8>
     918:	4a22      	ldr	r2, [pc, #136]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     91a:	4b24      	ldr	r3, [pc, #144]	; (9ac <MIL_STD_1553B1_Handler+0x2fc>)
     91c:	58d3      	ldr	r3, [r2, r3]
     91e:	2b01      	cmp	r3, #1
     920:	d13a      	bne.n	998 <MIL_STD_1553B1_Handler+0x2e8>
     922:	4a20      	ldr	r2, [pc, #128]	; (9a4 <MIL_STD_1553B1_Handler+0x2f4>)
     924:	4b27      	ldr	r3, [pc, #156]	; (9c4 <MIL_STD_1553B1_Handler+0x314>)
     926:	58d3      	ldr	r3, [r2, r3]
     928:	221f      	movs	r2, #31
     92a:	4013      	ands	r3, r2
     92c:	60bb      	str	r3, [r7, #8]
     92e:	1dbb      	adds	r3, r7, #6
     930:	2200      	movs	r2, #0
     932:	801a      	strh	r2, [r3, #0]
     934:	4b24      	ldr	r3, [pc, #144]	; (9c8 <MIL_STD_1553B1_Handler+0x318>)
     936:	603b      	str	r3, [r7, #0]
     938:	4b24      	ldr	r3, [pc, #144]	; (9cc <MIL_STD_1553B1_Handler+0x31c>)
     93a:	681b      	ldr	r3, [r3, #0]
     93c:	2b00      	cmp	r3, #0
     93e:	d12b      	bne.n	998 <MIL_STD_1553B1_Handler+0x2e8>
     940:	68bb      	ldr	r3, [r7, #8]
     942:	2b20      	cmp	r3, #32
     944:	d828      	bhi.n	998 <MIL_STD_1553B1_Handler+0x2e8>
     946:	2300      	movs	r3, #0
     948:	617b      	str	r3, [r7, #20]
     94a:	e00c      	b.n	966 <MIL_STD_1553B1_Handler+0x2b6>
     94c:	697b      	ldr	r3, [r7, #20]
     94e:	005b      	lsls	r3, r3, #1
     950:	683a      	ldr	r2, [r7, #0]
     952:	18d2      	adds	r2, r2, r3
     954:	693b      	ldr	r3, [r7, #16]
     956:	1d19      	adds	r1, r3, #4
     958:	6139      	str	r1, [r7, #16]
     95a:	681b      	ldr	r3, [r3, #0]
     95c:	b29b      	uxth	r3, r3
     95e:	8013      	strh	r3, [r2, #0]
     960:	697b      	ldr	r3, [r7, #20]
     962:	3301      	adds	r3, #1
     964:	617b      	str	r3, [r7, #20]
     966:	697a      	ldr	r2, [r7, #20]
     968:	68bb      	ldr	r3, [r7, #8]
     96a:	429a      	cmp	r2, r3
     96c:	d3ee      	bcc.n	94c <MIL_STD_1553B1_Handler+0x29c>
     96e:	68bb      	ldr	r3, [r7, #8]
     970:	1e5a      	subs	r2, r3, #1
     972:	1dbc      	adds	r4, r7, #6
     974:	683b      	ldr	r3, [r7, #0]
     976:	0011      	movs	r1, r2
     978:	0018      	movs	r0, r3
     97a:	f7ff fbbd 	bl	f8 <get_checksum>
     97e:	0003      	movs	r3, r0
     980:	8023      	strh	r3, [r4, #0]
     982:	4b11      	ldr	r3, [pc, #68]	; (9c8 <MIL_STD_1553B1_Handler+0x318>)
     984:	891b      	ldrh	r3, [r3, #8]
     986:	1dba      	adds	r2, r7, #6
     988:	8812      	ldrh	r2, [r2, #0]
     98a:	1ad3      	subs	r3, r2, r3
     98c:	425a      	negs	r2, r3
     98e:	4153      	adcs	r3, r2
     990:	b2db      	uxtb	r3, r3
     992:	001a      	movs	r2, r3
     994:	4b0d      	ldr	r3, [pc, #52]	; (9cc <MIL_STD_1553B1_Handler+0x31c>)
     996:	601a      	str	r2, [r3, #0]
     998:	46c0      	nop			; (mov r8, r8)
     99a:	46bd      	mov	sp, r7
     99c:	b007      	add	sp, #28
     99e:	bd90      	pop	{r4, r7, pc}
     9a0:	40048080 	.word	0x40048080
     9a4:	40048000 	.word	0x40048000
     9a8:	00001004 	.word	0x00001004
     9ac:	00001024 	.word	0x00001024
     9b0:	00000402 	.word	0x00000402
     9b4:	400c0000 	.word	0x400c0000
     9b8:	0000ffff 	.word	0x0000ffff
     9bc:	200000d8 	.word	0x200000d8
     9c0:	200000d0 	.word	0x200000d0
     9c4:	0000100c 	.word	0x0000100c
     9c8:	200000c4 	.word	0x200000c4
     9cc:	200000e8 	.word	0x200000e8

000009d0 <handler_reset>:
     9d0:	b580      	push	{r7, lr}
     9d2:	b082      	sub	sp, #8
     9d4:	af00      	add	r7, sp, #0
     9d6:	4b11      	ldr	r3, [pc, #68]	; (a1c <handler_reset+0x4c>)
     9d8:	607b      	str	r3, [r7, #4]
     9da:	4b11      	ldr	r3, [pc, #68]	; (a20 <handler_reset+0x50>)
     9dc:	603b      	str	r3, [r7, #0]
     9de:	e007      	b.n	9f0 <handler_reset+0x20>
     9e0:	683b      	ldr	r3, [r7, #0]
     9e2:	1d1a      	adds	r2, r3, #4
     9e4:	603a      	str	r2, [r7, #0]
     9e6:	687a      	ldr	r2, [r7, #4]
     9e8:	1d11      	adds	r1, r2, #4
     9ea:	6079      	str	r1, [r7, #4]
     9ec:	6812      	ldr	r2, [r2, #0]
     9ee:	601a      	str	r2, [r3, #0]
     9f0:	683a      	ldr	r2, [r7, #0]
     9f2:	4b0c      	ldr	r3, [pc, #48]	; (a24 <handler_reset+0x54>)
     9f4:	429a      	cmp	r2, r3
     9f6:	d3f3      	bcc.n	9e0 <handler_reset+0x10>
     9f8:	4b0b      	ldr	r3, [pc, #44]	; (a28 <handler_reset+0x58>)
     9fa:	603b      	str	r3, [r7, #0]
     9fc:	e004      	b.n	a08 <handler_reset+0x38>
     9fe:	683b      	ldr	r3, [r7, #0]
     a00:	1d1a      	adds	r2, r3, #4
     a02:	603a      	str	r2, [r7, #0]
     a04:	2200      	movs	r2, #0
     a06:	601a      	str	r2, [r3, #0]
     a08:	683a      	ldr	r2, [r7, #0]
     a0a:	4b08      	ldr	r3, [pc, #32]	; (a2c <handler_reset+0x5c>)
     a0c:	429a      	cmp	r2, r3
     a0e:	d3f6      	bcc.n	9fe <handler_reset+0x2e>
     a10:	f7ff fc1a 	bl	248 <main>
     a14:	46c0      	nop			; (mov r8, r8)
     a16:	46bd      	mov	sp, r7
     a18:	b002      	add	sp, #8
     a1a:	bd80      	pop	{r7, pc}
     a1c:	00001830 	.word	0x00001830
     a20:	20000000 	.word	0x20000000
     a24:	20000044 	.word	0x20000044
     a28:	20000044 	.word	0x20000044
     a2c:	2000050c 	.word	0x2000050c

00000a30 <default_handler>:
     a30:	b580      	push	{r7, lr}
     a32:	af00      	add	r7, sp, #0
     a34:	e7fe      	b.n	a34 <default_handler+0x4>
     a36:	46c0      	nop			; (mov r8, r8)

00000a38 <NVIC_EnableIRQ>:
     a38:	b580      	push	{r7, lr}
     a3a:	b082      	sub	sp, #8
     a3c:	af00      	add	r7, sp, #0
     a3e:	0002      	movs	r2, r0
     a40:	1dfb      	adds	r3, r7, #7
     a42:	701a      	strb	r2, [r3, #0]
     a44:	4909      	ldr	r1, [pc, #36]	; (a6c <NVIC_EnableIRQ+0x34>)
     a46:	1dfb      	adds	r3, r7, #7
     a48:	781b      	ldrb	r3, [r3, #0]
     a4a:	b25b      	sxtb	r3, r3
     a4c:	095b      	lsrs	r3, r3, #5
     a4e:	1dfa      	adds	r2, r7, #7
     a50:	7812      	ldrb	r2, [r2, #0]
     a52:	0010      	movs	r0, r2
     a54:	221f      	movs	r2, #31
     a56:	4002      	ands	r2, r0
     a58:	2001      	movs	r0, #1
     a5a:	4090      	lsls	r0, r2
     a5c:	0002      	movs	r2, r0
     a5e:	009b      	lsls	r3, r3, #2
     a60:	505a      	str	r2, [r3, r1]
     a62:	46c0      	nop			; (mov r8, r8)
     a64:	46bd      	mov	sp, r7
     a66:	b002      	add	sp, #8
     a68:	bd80      	pop	{r7, pc}
     a6a:	46c0      	nop			; (mov r8, r8)
     a6c:	e000e100 	.word	0xe000e100

00000a70 <NVIC_DisableIRQ>:
     a70:	b580      	push	{r7, lr}
     a72:	b082      	sub	sp, #8
     a74:	af00      	add	r7, sp, #0
     a76:	0002      	movs	r2, r0
     a78:	1dfb      	adds	r3, r7, #7
     a7a:	701a      	strb	r2, [r3, #0]
     a7c:	4909      	ldr	r1, [pc, #36]	; (aa4 <NVIC_DisableIRQ+0x34>)
     a7e:	1dfb      	adds	r3, r7, #7
     a80:	781b      	ldrb	r3, [r3, #0]
     a82:	b25b      	sxtb	r3, r3
     a84:	095b      	lsrs	r3, r3, #5
     a86:	1dfa      	adds	r2, r7, #7
     a88:	7812      	ldrb	r2, [r2, #0]
     a8a:	0010      	movs	r0, r2
     a8c:	221f      	movs	r2, #31
     a8e:	4002      	ands	r2, r0
     a90:	2001      	movs	r0, #1
     a92:	4090      	lsls	r0, r2
     a94:	0002      	movs	r2, r0
     a96:	3320      	adds	r3, #32
     a98:	009b      	lsls	r3, r3, #2
     a9a:	505a      	str	r2, [r3, r1]
     a9c:	46c0      	nop			; (mov r8, r8)
     a9e:	46bd      	mov	sp, r7
     aa0:	b002      	add	sp, #8
     aa2:	bd80      	pop	{r7, pc}
     aa4:	e000e100 	.word	0xe000e100

00000aa8 <uart_init>:
     aa8:	b580      	push	{r7, lr}
     aaa:	af00      	add	r7, sp, #0
     aac:	4b1b      	ldr	r3, [pc, #108]	; (b1c <uart_init+0x74>)
     aae:	4a1b      	ldr	r2, [pc, #108]	; (b1c <uart_init+0x74>)
     ab0:	69d2      	ldr	r2, [r2, #28]
     ab2:	2140      	movs	r1, #64	; 0x40
     ab4:	430a      	orrs	r2, r1
     ab6:	61da      	str	r2, [r3, #28]
     ab8:	4b18      	ldr	r3, [pc, #96]	; (b1c <uart_init+0x74>)
     aba:	4a18      	ldr	r2, [pc, #96]	; (b1c <uart_init+0x74>)
     abc:	6a92      	ldr	r2, [r2, #40]	; 0x28
     abe:	2180      	movs	r1, #128	; 0x80
     ac0:	0449      	lsls	r1, r1, #17
     ac2:	430a      	orrs	r2, r1
     ac4:	629a      	str	r2, [r3, #40]	; 0x28
     ac6:	4b16      	ldr	r3, [pc, #88]	; (b20 <uart_init+0x78>)
     ac8:	220f      	movs	r2, #15
     aca:	625a      	str	r2, [r3, #36]	; 0x24
     acc:	4b14      	ldr	r3, [pc, #80]	; (b20 <uart_init+0x78>)
     ace:	2200      	movs	r2, #0
     ad0:	629a      	str	r2, [r3, #40]	; 0x28
     ad2:	4b13      	ldr	r3, [pc, #76]	; (b20 <uart_init+0x78>)
     ad4:	4a12      	ldr	r2, [pc, #72]	; (b20 <uart_init+0x78>)
     ad6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ad8:	213f      	movs	r1, #63	; 0x3f
     ada:	438a      	bics	r2, r1
     adc:	635a      	str	r2, [r3, #52]	; 0x34
     ade:	4b10      	ldr	r3, [pc, #64]	; (b20 <uart_init+0x78>)
     ae0:	4a0f      	ldr	r2, [pc, #60]	; (b20 <uart_init+0x78>)
     ae2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ae4:	2124      	movs	r1, #36	; 0x24
     ae6:	430a      	orrs	r2, r1
     ae8:	635a      	str	r2, [r3, #52]	; 0x34
     aea:	4b0d      	ldr	r3, [pc, #52]	; (b20 <uart_init+0x78>)
     aec:	4a0c      	ldr	r2, [pc, #48]	; (b20 <uart_init+0x78>)
     aee:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     af0:	2160      	movs	r1, #96	; 0x60
     af2:	430a      	orrs	r2, r1
     af4:	62da      	str	r2, [r3, #44]	; 0x2c
     af6:	4b0a      	ldr	r3, [pc, #40]	; (b20 <uart_init+0x78>)
     af8:	4a09      	ldr	r2, [pc, #36]	; (b20 <uart_init+0x78>)
     afa:	6b12      	ldr	r2, [r2, #48]	; 0x30
     afc:	4909      	ldr	r1, [pc, #36]	; (b24 <uart_init+0x7c>)
     afe:	430a      	orrs	r2, r1
     b00:	631a      	str	r2, [r3, #48]	; 0x30
     b02:	4b07      	ldr	r3, [pc, #28]	; (b20 <uart_init+0x78>)
     b04:	4a06      	ldr	r2, [pc, #24]	; (b20 <uart_init+0x78>)
     b06:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b08:	2110      	movs	r1, #16
     b0a:	430a      	orrs	r2, r1
     b0c:	639a      	str	r2, [r3, #56]	; 0x38
     b0e:	2006      	movs	r0, #6
     b10:	f7ff ff92 	bl	a38 <NVIC_EnableIRQ>
     b14:	46c0      	nop			; (mov r8, r8)
     b16:	46bd      	mov	sp, r7
     b18:	bd80      	pop	{r7, pc}
     b1a:	46c0      	nop			; (mov r8, r8)
     b1c:	40020000 	.word	0x40020000
     b20:	40030000 	.word	0x40030000
     b24:	00000301 	.word	0x00000301

00000b28 <uart_read>:
     b28:	b580      	push	{r7, lr}
     b2a:	b084      	sub	sp, #16
     b2c:	af00      	add	r7, sp, #0
     b2e:	6078      	str	r0, [r7, #4]
     b30:	6039      	str	r1, [r7, #0]
     b32:	4b18      	ldr	r3, [pc, #96]	; (b94 <uart_read+0x6c>)
     b34:	681a      	ldr	r2, [r3, #0]
     b36:	4b18      	ldr	r3, [pc, #96]	; (b98 <uart_read+0x70>)
     b38:	681b      	ldr	r3, [r3, #0]
     b3a:	429a      	cmp	r2, r3
     b3c:	d101      	bne.n	b42 <uart_read+0x1a>
     b3e:	2300      	movs	r3, #0
     b40:	e023      	b.n	b8a <uart_read+0x62>
     b42:	2300      	movs	r3, #0
     b44:	60fb      	str	r3, [r7, #12]
     b46:	e01b      	b.n	b80 <uart_read+0x58>
     b48:	68fb      	ldr	r3, [r7, #12]
     b4a:	687a      	ldr	r2, [r7, #4]
     b4c:	18d2      	adds	r2, r2, r3
     b4e:	4b11      	ldr	r3, [pc, #68]	; (b94 <uart_read+0x6c>)
     b50:	681b      	ldr	r3, [r3, #0]
     b52:	4912      	ldr	r1, [pc, #72]	; (b9c <uart_read+0x74>)
     b54:	5ccb      	ldrb	r3, [r1, r3]
     b56:	7013      	strb	r3, [r2, #0]
     b58:	4b0e      	ldr	r3, [pc, #56]	; (b94 <uart_read+0x6c>)
     b5a:	681b      	ldr	r3, [r3, #0]
     b5c:	3301      	adds	r3, #1
     b5e:	05db      	lsls	r3, r3, #23
     b60:	0dda      	lsrs	r2, r3, #23
     b62:	4b0c      	ldr	r3, [pc, #48]	; (b94 <uart_read+0x6c>)
     b64:	601a      	str	r2, [r3, #0]
     b66:	4b0b      	ldr	r3, [pc, #44]	; (b94 <uart_read+0x6c>)
     b68:	681a      	ldr	r2, [r3, #0]
     b6a:	4b0b      	ldr	r3, [pc, #44]	; (b98 <uart_read+0x70>)
     b6c:	681b      	ldr	r3, [r3, #0]
     b6e:	429a      	cmp	r2, r3
     b70:	d103      	bne.n	b7a <uart_read+0x52>
     b72:	68fb      	ldr	r3, [r7, #12]
     b74:	3301      	adds	r3, #1
     b76:	60fb      	str	r3, [r7, #12]
     b78:	e006      	b.n	b88 <uart_read+0x60>
     b7a:	68fb      	ldr	r3, [r7, #12]
     b7c:	3301      	adds	r3, #1
     b7e:	60fb      	str	r3, [r7, #12]
     b80:	68fa      	ldr	r2, [r7, #12]
     b82:	683b      	ldr	r3, [r7, #0]
     b84:	429a      	cmp	r2, r3
     b86:	dbdf      	blt.n	b48 <uart_read+0x20>
     b88:	68fb      	ldr	r3, [r7, #12]
     b8a:	0018      	movs	r0, r3
     b8c:	46bd      	mov	sp, r7
     b8e:	b004      	add	sp, #16
     b90:	bd80      	pop	{r7, pc}
     b92:	46c0      	nop			; (mov r8, r8)
     b94:	200004fc 	.word	0x200004fc
     b98:	200004f8 	.word	0x200004f8
     b9c:	200002f8 	.word	0x200002f8

00000ba0 <uart_send>:
     ba0:	b580      	push	{r7, lr}
     ba2:	b084      	sub	sp, #16
     ba4:	af00      	add	r7, sp, #0
     ba6:	6078      	str	r0, [r7, #4]
     ba8:	6039      	str	r1, [r7, #0]
     baa:	2006      	movs	r0, #6
     bac:	f7ff ff60 	bl	a70 <NVIC_DisableIRQ>
     bb0:	2300      	movs	r3, #0
     bb2:	60fb      	str	r3, [r7, #12]
     bb4:	e01b      	b.n	bee <uart_send+0x4e>
     bb6:	4b20      	ldr	r3, [pc, #128]	; (c38 <uart_send+0x98>)
     bb8:	681b      	ldr	r3, [r3, #0]
     bba:	68fa      	ldr	r2, [r7, #12]
     bbc:	6879      	ldr	r1, [r7, #4]
     bbe:	188a      	adds	r2, r1, r2
     bc0:	7811      	ldrb	r1, [r2, #0]
     bc2:	4a1e      	ldr	r2, [pc, #120]	; (c3c <uart_send+0x9c>)
     bc4:	54d1      	strb	r1, [r2, r3]
     bc6:	4b1c      	ldr	r3, [pc, #112]	; (c38 <uart_send+0x98>)
     bc8:	681b      	ldr	r3, [r3, #0]
     bca:	3301      	adds	r3, #1
     bcc:	05db      	lsls	r3, r3, #23
     bce:	0dda      	lsrs	r2, r3, #23
     bd0:	4b19      	ldr	r3, [pc, #100]	; (c38 <uart_send+0x98>)
     bd2:	601a      	str	r2, [r3, #0]
     bd4:	4b18      	ldr	r3, [pc, #96]	; (c38 <uart_send+0x98>)
     bd6:	681a      	ldr	r2, [r3, #0]
     bd8:	4b19      	ldr	r3, [pc, #100]	; (c40 <uart_send+0xa0>)
     bda:	681b      	ldr	r3, [r3, #0]
     bdc:	429a      	cmp	r2, r3
     bde:	d103      	bne.n	be8 <uart_send+0x48>
     be0:	68fb      	ldr	r3, [r7, #12]
     be2:	3301      	adds	r3, #1
     be4:	60fb      	str	r3, [r7, #12]
     be6:	e006      	b.n	bf6 <uart_send+0x56>
     be8:	68fb      	ldr	r3, [r7, #12]
     bea:	3301      	adds	r3, #1
     bec:	60fb      	str	r3, [r7, #12]
     bee:	68fa      	ldr	r2, [r7, #12]
     bf0:	683b      	ldr	r3, [r7, #0]
     bf2:	429a      	cmp	r2, r3
     bf4:	dbdf      	blt.n	bb6 <uart_send+0x16>
     bf6:	4b13      	ldr	r3, [pc, #76]	; (c44 <uart_send+0xa4>)
     bf8:	699b      	ldr	r3, [r3, #24]
     bfa:	2208      	movs	r2, #8
     bfc:	4013      	ands	r3, r2
     bfe:	d10c      	bne.n	c1a <uart_send+0x7a>
     c00:	4a10      	ldr	r2, [pc, #64]	; (c44 <uart_send+0xa4>)
     c02:	4b0f      	ldr	r3, [pc, #60]	; (c40 <uart_send+0xa0>)
     c04:	681b      	ldr	r3, [r3, #0]
     c06:	490d      	ldr	r1, [pc, #52]	; (c3c <uart_send+0x9c>)
     c08:	5ccb      	ldrb	r3, [r1, r3]
     c0a:	6013      	str	r3, [r2, #0]
     c0c:	4b0c      	ldr	r3, [pc, #48]	; (c40 <uart_send+0xa0>)
     c0e:	681b      	ldr	r3, [r3, #0]
     c10:	3301      	adds	r3, #1
     c12:	05db      	lsls	r3, r3, #23
     c14:	0dda      	lsrs	r2, r3, #23
     c16:	4b0a      	ldr	r3, [pc, #40]	; (c40 <uart_send+0xa0>)
     c18:	601a      	str	r2, [r3, #0]
     c1a:	4b0a      	ldr	r3, [pc, #40]	; (c44 <uart_send+0xa4>)
     c1c:	4a09      	ldr	r2, [pc, #36]	; (c44 <uart_send+0xa4>)
     c1e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c20:	2120      	movs	r1, #32
     c22:	430a      	orrs	r2, r1
     c24:	639a      	str	r2, [r3, #56]	; 0x38
     c26:	2006      	movs	r0, #6
     c28:	f7ff ff06 	bl	a38 <NVIC_EnableIRQ>
     c2c:	68fb      	ldr	r3, [r7, #12]
     c2e:	0018      	movs	r0, r3
     c30:	46bd      	mov	sp, r7
     c32:	b004      	add	sp, #16
     c34:	bd80      	pop	{r7, pc}
     c36:	46c0      	nop			; (mov r8, r8)
     c38:	200002f4 	.word	0x200002f4
     c3c:	200000f0 	.word	0x200000f0
     c40:	200002f0 	.word	0x200002f0
     c44:	40030000 	.word	0x40030000

00000c48 <uart_putch>:
     c48:	b580      	push	{r7, lr}
     c4a:	b082      	sub	sp, #8
     c4c:	af00      	add	r7, sp, #0
     c4e:	0002      	movs	r2, r0
     c50:	1dfb      	adds	r3, r7, #7
     c52:	701a      	strb	r2, [r3, #0]
     c54:	46c0      	nop			; (mov r8, r8)
     c56:	4b06      	ldr	r3, [pc, #24]	; (c70 <uart_putch+0x28>)
     c58:	699b      	ldr	r3, [r3, #24]
     c5a:	2220      	movs	r2, #32
     c5c:	4013      	ands	r3, r2
     c5e:	d1fa      	bne.n	c56 <uart_putch+0xe>
     c60:	4b03      	ldr	r3, [pc, #12]	; (c70 <uart_putch+0x28>)
     c62:	1dfa      	adds	r2, r7, #7
     c64:	7812      	ldrb	r2, [r2, #0]
     c66:	601a      	str	r2, [r3, #0]
     c68:	46c0      	nop			; (mov r8, r8)
     c6a:	46bd      	mov	sp, r7
     c6c:	b002      	add	sp, #8
     c6e:	bd80      	pop	{r7, pc}
     c70:	40030000 	.word	0x40030000

00000c74 <UART1_Handler>:
     c74:	b580      	push	{r7, lr}
     c76:	af00      	add	r7, sp, #0
     c78:	4b1a      	ldr	r3, [pc, #104]	; (ce4 <UART1_Handler+0x70>)
     c7a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     c7c:	2220      	movs	r2, #32
     c7e:	4013      	ands	r3, r2
     c80:	d019      	beq.n	cb6 <UART1_Handler+0x42>
     c82:	4b19      	ldr	r3, [pc, #100]	; (ce8 <UART1_Handler+0x74>)
     c84:	681a      	ldr	r2, [r3, #0]
     c86:	4b19      	ldr	r3, [pc, #100]	; (cec <UART1_Handler+0x78>)
     c88:	681b      	ldr	r3, [r3, #0]
     c8a:	429a      	cmp	r2, r3
     c8c:	d106      	bne.n	c9c <UART1_Handler+0x28>
     c8e:	4b15      	ldr	r3, [pc, #84]	; (ce4 <UART1_Handler+0x70>)
     c90:	4a14      	ldr	r2, [pc, #80]	; (ce4 <UART1_Handler+0x70>)
     c92:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c94:	2120      	movs	r1, #32
     c96:	438a      	bics	r2, r1
     c98:	639a      	str	r2, [r3, #56]	; 0x38
     c9a:	e00c      	b.n	cb6 <UART1_Handler+0x42>
     c9c:	4a11      	ldr	r2, [pc, #68]	; (ce4 <UART1_Handler+0x70>)
     c9e:	4b12      	ldr	r3, [pc, #72]	; (ce8 <UART1_Handler+0x74>)
     ca0:	681b      	ldr	r3, [r3, #0]
     ca2:	4913      	ldr	r1, [pc, #76]	; (cf0 <UART1_Handler+0x7c>)
     ca4:	5ccb      	ldrb	r3, [r1, r3]
     ca6:	6013      	str	r3, [r2, #0]
     ca8:	4b0f      	ldr	r3, [pc, #60]	; (ce8 <UART1_Handler+0x74>)
     caa:	681b      	ldr	r3, [r3, #0]
     cac:	3301      	adds	r3, #1
     cae:	05db      	lsls	r3, r3, #23
     cb0:	0dda      	lsrs	r2, r3, #23
     cb2:	4b0d      	ldr	r3, [pc, #52]	; (ce8 <UART1_Handler+0x74>)
     cb4:	601a      	str	r2, [r3, #0]
     cb6:	4b0b      	ldr	r3, [pc, #44]	; (ce4 <UART1_Handler+0x70>)
     cb8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     cba:	2210      	movs	r2, #16
     cbc:	4013      	ands	r3, r2
     cbe:	d00d      	beq.n	cdc <UART1_Handler+0x68>
     cc0:	4b0c      	ldr	r3, [pc, #48]	; (cf4 <UART1_Handler+0x80>)
     cc2:	681a      	ldr	r2, [r3, #0]
     cc4:	4b07      	ldr	r3, [pc, #28]	; (ce4 <UART1_Handler+0x70>)
     cc6:	681b      	ldr	r3, [r3, #0]
     cc8:	b2d9      	uxtb	r1, r3
     cca:	4b0b      	ldr	r3, [pc, #44]	; (cf8 <UART1_Handler+0x84>)
     ccc:	5499      	strb	r1, [r3, r2]
     cce:	4b09      	ldr	r3, [pc, #36]	; (cf4 <UART1_Handler+0x80>)
     cd0:	681b      	ldr	r3, [r3, #0]
     cd2:	3301      	adds	r3, #1
     cd4:	05db      	lsls	r3, r3, #23
     cd6:	0dda      	lsrs	r2, r3, #23
     cd8:	4b06      	ldr	r3, [pc, #24]	; (cf4 <UART1_Handler+0x80>)
     cda:	601a      	str	r2, [r3, #0]
     cdc:	46c0      	nop			; (mov r8, r8)
     cde:	46bd      	mov	sp, r7
     ce0:	bd80      	pop	{r7, pc}
     ce2:	46c0      	nop			; (mov r8, r8)
     ce4:	40030000 	.word	0x40030000
     ce8:	200002f0 	.word	0x200002f0
     cec:	200002f4 	.word	0x200002f4
     cf0:	200000f0 	.word	0x200000f0
     cf4:	200004f8 	.word	0x200004f8
     cf8:	200002f8 	.word	0x200002f8

00000cfc <xputc>:
     cfc:	b580      	push	{r7, lr}
     cfe:	b082      	sub	sp, #8
     d00:	af00      	add	r7, sp, #0
     d02:	0002      	movs	r2, r0
     d04:	1dfb      	adds	r3, r7, #7
     d06:	701a      	strb	r2, [r3, #0]
     d08:	1dfb      	adds	r3, r7, #7
     d0a:	781b      	ldrb	r3, [r3, #0]
     d0c:	2b0a      	cmp	r3, #10
     d0e:	d102      	bne.n	d16 <xputc+0x1a>
     d10:	200d      	movs	r0, #13
     d12:	f7ff fff3 	bl	cfc <xputc>
     d16:	4b0d      	ldr	r3, [pc, #52]	; (d4c <xputc+0x50>)
     d18:	681b      	ldr	r3, [r3, #0]
     d1a:	2b00      	cmp	r3, #0
     d1c:	d008      	beq.n	d30 <xputc+0x34>
     d1e:	4b0b      	ldr	r3, [pc, #44]	; (d4c <xputc+0x50>)
     d20:	681b      	ldr	r3, [r3, #0]
     d22:	1c59      	adds	r1, r3, #1
     d24:	4a09      	ldr	r2, [pc, #36]	; (d4c <xputc+0x50>)
     d26:	6011      	str	r1, [r2, #0]
     d28:	1dfa      	adds	r2, r7, #7
     d2a:	7812      	ldrb	r2, [r2, #0]
     d2c:	701a      	strb	r2, [r3, #0]
     d2e:	e009      	b.n	d44 <xputc+0x48>
     d30:	4b07      	ldr	r3, [pc, #28]	; (d50 <xputc+0x54>)
     d32:	681b      	ldr	r3, [r3, #0]
     d34:	2b00      	cmp	r3, #0
     d36:	d005      	beq.n	d44 <xputc+0x48>
     d38:	4b05      	ldr	r3, [pc, #20]	; (d50 <xputc+0x54>)
     d3a:	681b      	ldr	r3, [r3, #0]
     d3c:	1dfa      	adds	r2, r7, #7
     d3e:	7812      	ldrb	r2, [r2, #0]
     d40:	0010      	movs	r0, r2
     d42:	4798      	blx	r3
     d44:	46bd      	mov	sp, r7
     d46:	b002      	add	sp, #8
     d48:	bd80      	pop	{r7, pc}
     d4a:	46c0      	nop			; (mov r8, r8)
     d4c:	20000504 	.word	0x20000504
     d50:	20000500 	.word	0x20000500

00000d54 <xputs>:
     d54:	b580      	push	{r7, lr}
     d56:	b082      	sub	sp, #8
     d58:	af00      	add	r7, sp, #0
     d5a:	6078      	str	r0, [r7, #4]
     d5c:	e006      	b.n	d6c <xputs+0x18>
     d5e:	687b      	ldr	r3, [r7, #4]
     d60:	1c5a      	adds	r2, r3, #1
     d62:	607a      	str	r2, [r7, #4]
     d64:	781b      	ldrb	r3, [r3, #0]
     d66:	0018      	movs	r0, r3
     d68:	f7ff ffc8 	bl	cfc <xputc>
     d6c:	687b      	ldr	r3, [r7, #4]
     d6e:	781b      	ldrb	r3, [r3, #0]
     d70:	2b00      	cmp	r3, #0
     d72:	d1f4      	bne.n	d5e <xputs+0xa>
     d74:	46c0      	nop			; (mov r8, r8)
     d76:	46bd      	mov	sp, r7
     d78:	b002      	add	sp, #8
     d7a:	bd80      	pop	{r7, pc}

00000d7c <xfputs>:
     d7c:	b580      	push	{r7, lr}
     d7e:	b084      	sub	sp, #16
     d80:	af00      	add	r7, sp, #0
     d82:	6078      	str	r0, [r7, #4]
     d84:	6039      	str	r1, [r7, #0]
     d86:	4b0c      	ldr	r3, [pc, #48]	; (db8 <xfputs+0x3c>)
     d88:	681b      	ldr	r3, [r3, #0]
     d8a:	60fb      	str	r3, [r7, #12]
     d8c:	4b0a      	ldr	r3, [pc, #40]	; (db8 <xfputs+0x3c>)
     d8e:	687a      	ldr	r2, [r7, #4]
     d90:	601a      	str	r2, [r3, #0]
     d92:	e006      	b.n	da2 <xfputs+0x26>
     d94:	683b      	ldr	r3, [r7, #0]
     d96:	1c5a      	adds	r2, r3, #1
     d98:	603a      	str	r2, [r7, #0]
     d9a:	781b      	ldrb	r3, [r3, #0]
     d9c:	0018      	movs	r0, r3
     d9e:	f7ff ffad 	bl	cfc <xputc>
     da2:	683b      	ldr	r3, [r7, #0]
     da4:	781b      	ldrb	r3, [r3, #0]
     da6:	2b00      	cmp	r3, #0
     da8:	d1f4      	bne.n	d94 <xfputs+0x18>
     daa:	4b03      	ldr	r3, [pc, #12]	; (db8 <xfputs+0x3c>)
     dac:	68fa      	ldr	r2, [r7, #12]
     dae:	601a      	str	r2, [r3, #0]
     db0:	46c0      	nop			; (mov r8, r8)
     db2:	46bd      	mov	sp, r7
     db4:	b004      	add	sp, #16
     db6:	bd80      	pop	{r7, pc}
     db8:	20000500 	.word	0x20000500

00000dbc <xvprintf>:
     dbc:	b580      	push	{r7, lr}
     dbe:	b08e      	sub	sp, #56	; 0x38
     dc0:	af00      	add	r7, sp, #0
     dc2:	6078      	str	r0, [r7, #4]
     dc4:	6039      	str	r1, [r7, #0]
     dc6:	687b      	ldr	r3, [r7, #4]
     dc8:	1c5a      	adds	r2, r3, #1
     dca:	607a      	str	r2, [r7, #4]
     dcc:	221f      	movs	r2, #31
     dce:	18ba      	adds	r2, r7, r2
     dd0:	781b      	ldrb	r3, [r3, #0]
     dd2:	7013      	strb	r3, [r2, #0]
     dd4:	231f      	movs	r3, #31
     dd6:	18fb      	adds	r3, r7, r3
     dd8:	781b      	ldrb	r3, [r3, #0]
     dda:	2b00      	cmp	r3, #0
     ddc:	d100      	bne.n	de0 <xvprintf+0x24>
     dde:	e172      	b.n	10c6 <xvprintf+0x30a>
     de0:	231f      	movs	r3, #31
     de2:	18fb      	adds	r3, r7, r3
     de4:	781b      	ldrb	r3, [r3, #0]
     de6:	2b25      	cmp	r3, #37	; 0x25
     de8:	d006      	beq.n	df8 <xvprintf+0x3c>
     dea:	231f      	movs	r3, #31
     dec:	18fb      	adds	r3, r7, r3
     dee:	781b      	ldrb	r3, [r3, #0]
     df0:	0018      	movs	r0, r3
     df2:	f7ff ff83 	bl	cfc <xputc>
     df6:	e165      	b.n	10c4 <xvprintf+0x308>
     df8:	2300      	movs	r3, #0
     dfa:	627b      	str	r3, [r7, #36]	; 0x24
     dfc:	687b      	ldr	r3, [r7, #4]
     dfe:	1c5a      	adds	r2, r3, #1
     e00:	607a      	str	r2, [r7, #4]
     e02:	221f      	movs	r2, #31
     e04:	18ba      	adds	r2, r7, r2
     e06:	781b      	ldrb	r3, [r3, #0]
     e08:	7013      	strb	r3, [r2, #0]
     e0a:	231f      	movs	r3, #31
     e0c:	18fb      	adds	r3, r7, r3
     e0e:	781b      	ldrb	r3, [r3, #0]
     e10:	2b30      	cmp	r3, #48	; 0x30
     e12:	d109      	bne.n	e28 <xvprintf+0x6c>
     e14:	2301      	movs	r3, #1
     e16:	627b      	str	r3, [r7, #36]	; 0x24
     e18:	687b      	ldr	r3, [r7, #4]
     e1a:	1c5a      	adds	r2, r3, #1
     e1c:	607a      	str	r2, [r7, #4]
     e1e:	221f      	movs	r2, #31
     e20:	18ba      	adds	r2, r7, r2
     e22:	781b      	ldrb	r3, [r3, #0]
     e24:	7013      	strb	r3, [r2, #0]
     e26:	e00d      	b.n	e44 <xvprintf+0x88>
     e28:	231f      	movs	r3, #31
     e2a:	18fb      	adds	r3, r7, r3
     e2c:	781b      	ldrb	r3, [r3, #0]
     e2e:	2b2d      	cmp	r3, #45	; 0x2d
     e30:	d108      	bne.n	e44 <xvprintf+0x88>
     e32:	2302      	movs	r3, #2
     e34:	627b      	str	r3, [r7, #36]	; 0x24
     e36:	687b      	ldr	r3, [r7, #4]
     e38:	1c5a      	adds	r2, r3, #1
     e3a:	607a      	str	r2, [r7, #4]
     e3c:	221f      	movs	r2, #31
     e3e:	18ba      	adds	r2, r7, r2
     e40:	781b      	ldrb	r3, [r3, #0]
     e42:	7013      	strb	r3, [r2, #0]
     e44:	2300      	movs	r3, #0
     e46:	62bb      	str	r3, [r7, #40]	; 0x28
     e48:	e012      	b.n	e70 <xvprintf+0xb4>
     e4a:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e4c:	0013      	movs	r3, r2
     e4e:	009b      	lsls	r3, r3, #2
     e50:	189b      	adds	r3, r3, r2
     e52:	005b      	lsls	r3, r3, #1
     e54:	001a      	movs	r2, r3
     e56:	231f      	movs	r3, #31
     e58:	18fb      	adds	r3, r7, r3
     e5a:	781b      	ldrb	r3, [r3, #0]
     e5c:	18d3      	adds	r3, r2, r3
     e5e:	3b30      	subs	r3, #48	; 0x30
     e60:	62bb      	str	r3, [r7, #40]	; 0x28
     e62:	687b      	ldr	r3, [r7, #4]
     e64:	1c5a      	adds	r2, r3, #1
     e66:	607a      	str	r2, [r7, #4]
     e68:	221f      	movs	r2, #31
     e6a:	18ba      	adds	r2, r7, r2
     e6c:	781b      	ldrb	r3, [r3, #0]
     e6e:	7013      	strb	r3, [r2, #0]
     e70:	231f      	movs	r3, #31
     e72:	18fb      	adds	r3, r7, r3
     e74:	781b      	ldrb	r3, [r3, #0]
     e76:	2b2f      	cmp	r3, #47	; 0x2f
     e78:	d904      	bls.n	e84 <xvprintf+0xc8>
     e7a:	231f      	movs	r3, #31
     e7c:	18fb      	adds	r3, r7, r3
     e7e:	781b      	ldrb	r3, [r3, #0]
     e80:	2b39      	cmp	r3, #57	; 0x39
     e82:	d9e2      	bls.n	e4a <xvprintf+0x8e>
     e84:	231f      	movs	r3, #31
     e86:	18fb      	adds	r3, r7, r3
     e88:	781b      	ldrb	r3, [r3, #0]
     e8a:	2b6c      	cmp	r3, #108	; 0x6c
     e8c:	d004      	beq.n	e98 <xvprintf+0xdc>
     e8e:	231f      	movs	r3, #31
     e90:	18fb      	adds	r3, r7, r3
     e92:	781b      	ldrb	r3, [r3, #0]
     e94:	2b4c      	cmp	r3, #76	; 0x4c
     e96:	d10a      	bne.n	eae <xvprintf+0xf2>
     e98:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     e9a:	2204      	movs	r2, #4
     e9c:	4313      	orrs	r3, r2
     e9e:	627b      	str	r3, [r7, #36]	; 0x24
     ea0:	687b      	ldr	r3, [r7, #4]
     ea2:	1c5a      	adds	r2, r3, #1
     ea4:	607a      	str	r2, [r7, #4]
     ea6:	221f      	movs	r2, #31
     ea8:	18ba      	adds	r2, r7, r2
     eaa:	781b      	ldrb	r3, [r3, #0]
     eac:	7013      	strb	r3, [r2, #0]
     eae:	231f      	movs	r3, #31
     eb0:	18fb      	adds	r3, r7, r3
     eb2:	781b      	ldrb	r3, [r3, #0]
     eb4:	2b00      	cmp	r3, #0
     eb6:	d100      	bne.n	eba <xvprintf+0xfe>
     eb8:	e107      	b.n	10ca <xvprintf+0x30e>
     eba:	231e      	movs	r3, #30
     ebc:	18fb      	adds	r3, r7, r3
     ebe:	221f      	movs	r2, #31
     ec0:	18ba      	adds	r2, r7, r2
     ec2:	7812      	ldrb	r2, [r2, #0]
     ec4:	701a      	strb	r2, [r3, #0]
     ec6:	231e      	movs	r3, #30
     ec8:	18fb      	adds	r3, r7, r3
     eca:	781b      	ldrb	r3, [r3, #0]
     ecc:	2b60      	cmp	r3, #96	; 0x60
     ece:	d906      	bls.n	ede <xvprintf+0x122>
     ed0:	231e      	movs	r3, #30
     ed2:	18fb      	adds	r3, r7, r3
     ed4:	221e      	movs	r2, #30
     ed6:	18ba      	adds	r2, r7, r2
     ed8:	7812      	ldrb	r2, [r2, #0]
     eda:	3a20      	subs	r2, #32
     edc:	701a      	strb	r2, [r3, #0]
     ede:	231e      	movs	r3, #30
     ee0:	18fb      	adds	r3, r7, r3
     ee2:	781b      	ldrb	r3, [r3, #0]
     ee4:	3b42      	subs	r3, #66	; 0x42
     ee6:	2b16      	cmp	r3, #22
     ee8:	d847      	bhi.n	f7a <xvprintf+0x1be>
     eea:	009a      	lsls	r2, r3, #2
     eec:	4b79      	ldr	r3, [pc, #484]	; (10d4 <xvprintf+0x318>)
     eee:	18d3      	adds	r3, r2, r3
     ef0:	681b      	ldr	r3, [r3, #0]
     ef2:	469f      	mov	pc, r3
     ef4:	683b      	ldr	r3, [r7, #0]
     ef6:	1d1a      	adds	r2, r3, #4
     ef8:	603a      	str	r2, [r7, #0]
     efa:	681b      	ldr	r3, [r3, #0]
     efc:	61bb      	str	r3, [r7, #24]
     efe:	2300      	movs	r3, #0
     f00:	62fb      	str	r3, [r7, #44]	; 0x2c
     f02:	e002      	b.n	f0a <xvprintf+0x14e>
     f04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f06:	3301      	adds	r3, #1
     f08:	62fb      	str	r3, [r7, #44]	; 0x2c
     f0a:	69ba      	ldr	r2, [r7, #24]
     f0c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f0e:	18d3      	adds	r3, r2, r3
     f10:	781b      	ldrb	r3, [r3, #0]
     f12:	2b00      	cmp	r3, #0
     f14:	d1f6      	bne.n	f04 <xvprintf+0x148>
     f16:	e002      	b.n	f1e <xvprintf+0x162>
     f18:	2020      	movs	r0, #32
     f1a:	f7ff feef 	bl	cfc <xputc>
     f1e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f20:	2202      	movs	r2, #2
     f22:	4013      	ands	r3, r2
     f24:	d105      	bne.n	f32 <xvprintf+0x176>
     f26:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f28:	1c5a      	adds	r2, r3, #1
     f2a:	62fa      	str	r2, [r7, #44]	; 0x2c
     f2c:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f2e:	4293      	cmp	r3, r2
     f30:	d3f2      	bcc.n	f18 <xvprintf+0x15c>
     f32:	69bb      	ldr	r3, [r7, #24]
     f34:	0018      	movs	r0, r3
     f36:	f7ff ff0d 	bl	d54 <xputs>
     f3a:	e002      	b.n	f42 <xvprintf+0x186>
     f3c:	2020      	movs	r0, #32
     f3e:	f7ff fedd 	bl	cfc <xputc>
     f42:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f44:	1c5a      	adds	r2, r3, #1
     f46:	62fa      	str	r2, [r7, #44]	; 0x2c
     f48:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f4a:	4293      	cmp	r3, r2
     f4c:	d3f6      	bcc.n	f3c <xvprintf+0x180>
     f4e:	e0b9      	b.n	10c4 <xvprintf+0x308>
     f50:	683b      	ldr	r3, [r7, #0]
     f52:	1d1a      	adds	r2, r3, #4
     f54:	603a      	str	r2, [r7, #0]
     f56:	681b      	ldr	r3, [r3, #0]
     f58:	b2db      	uxtb	r3, r3
     f5a:	0018      	movs	r0, r3
     f5c:	f7ff fece 	bl	cfc <xputc>
     f60:	e0b0      	b.n	10c4 <xvprintf+0x308>
     f62:	2302      	movs	r3, #2
     f64:	637b      	str	r3, [r7, #52]	; 0x34
     f66:	e00f      	b.n	f88 <xvprintf+0x1cc>
     f68:	2308      	movs	r3, #8
     f6a:	637b      	str	r3, [r7, #52]	; 0x34
     f6c:	e00c      	b.n	f88 <xvprintf+0x1cc>
     f6e:	230a      	movs	r3, #10
     f70:	637b      	str	r3, [r7, #52]	; 0x34
     f72:	e009      	b.n	f88 <xvprintf+0x1cc>
     f74:	2310      	movs	r3, #16
     f76:	637b      	str	r3, [r7, #52]	; 0x34
     f78:	e006      	b.n	f88 <xvprintf+0x1cc>
     f7a:	231f      	movs	r3, #31
     f7c:	18fb      	adds	r3, r7, r3
     f7e:	781b      	ldrb	r3, [r3, #0]
     f80:	0018      	movs	r0, r3
     f82:	f7ff febb 	bl	cfc <xputc>
     f86:	e09d      	b.n	10c4 <xvprintf+0x308>
     f88:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f8a:	2204      	movs	r2, #4
     f8c:	4013      	ands	r3, r2
     f8e:	d004      	beq.n	f9a <xvprintf+0x1de>
     f90:	683b      	ldr	r3, [r7, #0]
     f92:	1d1a      	adds	r2, r3, #4
     f94:	603a      	str	r2, [r7, #0]
     f96:	681b      	ldr	r3, [r3, #0]
     f98:	e00d      	b.n	fb6 <xvprintf+0x1fa>
     f9a:	231e      	movs	r3, #30
     f9c:	18fb      	adds	r3, r7, r3
     f9e:	781b      	ldrb	r3, [r3, #0]
     fa0:	2b44      	cmp	r3, #68	; 0x44
     fa2:	d104      	bne.n	fae <xvprintf+0x1f2>
     fa4:	683b      	ldr	r3, [r7, #0]
     fa6:	1d1a      	adds	r2, r3, #4
     fa8:	603a      	str	r2, [r7, #0]
     faa:	681b      	ldr	r3, [r3, #0]
     fac:	e003      	b.n	fb6 <xvprintf+0x1fa>
     fae:	683b      	ldr	r3, [r7, #0]
     fb0:	1d1a      	adds	r2, r3, #4
     fb2:	603a      	str	r2, [r7, #0]
     fb4:	681b      	ldr	r3, [r3, #0]
     fb6:	623b      	str	r3, [r7, #32]
     fb8:	231e      	movs	r3, #30
     fba:	18fb      	adds	r3, r7, r3
     fbc:	781b      	ldrb	r3, [r3, #0]
     fbe:	2b44      	cmp	r3, #68	; 0x44
     fc0:	d109      	bne.n	fd6 <xvprintf+0x21a>
     fc2:	6a3b      	ldr	r3, [r7, #32]
     fc4:	2b00      	cmp	r3, #0
     fc6:	da06      	bge.n	fd6 <xvprintf+0x21a>
     fc8:	6a3b      	ldr	r3, [r7, #32]
     fca:	425b      	negs	r3, r3
     fcc:	623b      	str	r3, [r7, #32]
     fce:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fd0:	2208      	movs	r2, #8
     fd2:	4313      	orrs	r3, r2
     fd4:	627b      	str	r3, [r7, #36]	; 0x24
     fd6:	2300      	movs	r3, #0
     fd8:	633b      	str	r3, [r7, #48]	; 0x30
     fda:	6a3b      	ldr	r3, [r7, #32]
     fdc:	6b79      	ldr	r1, [r7, #52]	; 0x34
     fde:	0018      	movs	r0, r3
     fe0:	f000 fbd6 	bl	1790 <__aeabi_uidivmod>
     fe4:	000b      	movs	r3, r1
     fe6:	001a      	movs	r2, r3
     fe8:	231e      	movs	r3, #30
     fea:	18fb      	adds	r3, r7, r3
     fec:	701a      	strb	r2, [r3, #0]
     fee:	6b79      	ldr	r1, [r7, #52]	; 0x34
     ff0:	6a38      	ldr	r0, [r7, #32]
     ff2:	f000 fb47 	bl	1684 <__aeabi_uidiv>
     ff6:	0003      	movs	r3, r0
     ff8:	623b      	str	r3, [r7, #32]
     ffa:	231e      	movs	r3, #30
     ffc:	18fb      	adds	r3, r7, r3
     ffe:	781b      	ldrb	r3, [r3, #0]
    1000:	2b09      	cmp	r3, #9
    1002:	d90e      	bls.n	1022 <xvprintf+0x266>
    1004:	231f      	movs	r3, #31
    1006:	18fb      	adds	r3, r7, r3
    1008:	781b      	ldrb	r3, [r3, #0]
    100a:	2b78      	cmp	r3, #120	; 0x78
    100c:	d101      	bne.n	1012 <xvprintf+0x256>
    100e:	2327      	movs	r3, #39	; 0x27
    1010:	e000      	b.n	1014 <xvprintf+0x258>
    1012:	2307      	movs	r3, #7
    1014:	221e      	movs	r2, #30
    1016:	18ba      	adds	r2, r7, r2
    1018:	211e      	movs	r1, #30
    101a:	1879      	adds	r1, r7, r1
    101c:	7809      	ldrb	r1, [r1, #0]
    101e:	185b      	adds	r3, r3, r1
    1020:	7013      	strb	r3, [r2, #0]
    1022:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1024:	1c5a      	adds	r2, r3, #1
    1026:	633a      	str	r2, [r7, #48]	; 0x30
    1028:	221e      	movs	r2, #30
    102a:	18ba      	adds	r2, r7, r2
    102c:	7812      	ldrb	r2, [r2, #0]
    102e:	3230      	adds	r2, #48	; 0x30
    1030:	b2d1      	uxtb	r1, r2
    1032:	2208      	movs	r2, #8
    1034:	18ba      	adds	r2, r7, r2
    1036:	54d1      	strb	r1, [r2, r3]
    1038:	6a3b      	ldr	r3, [r7, #32]
    103a:	2b00      	cmp	r3, #0
    103c:	d002      	beq.n	1044 <xvprintf+0x288>
    103e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1040:	2b0f      	cmp	r3, #15
    1042:	d9ca      	bls.n	fda <xvprintf+0x21e>
    1044:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1046:	2208      	movs	r2, #8
    1048:	4013      	ands	r3, r2
    104a:	d006      	beq.n	105a <xvprintf+0x29e>
    104c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    104e:	1c5a      	adds	r2, r3, #1
    1050:	633a      	str	r2, [r7, #48]	; 0x30
    1052:	2208      	movs	r2, #8
    1054:	18ba      	adds	r2, r7, r2
    1056:	212d      	movs	r1, #45	; 0x2d
    1058:	54d1      	strb	r1, [r2, r3]
    105a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    105c:	62fb      	str	r3, [r7, #44]	; 0x2c
    105e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1060:	2201      	movs	r2, #1
    1062:	4013      	ands	r3, r2
    1064:	d001      	beq.n	106a <xvprintf+0x2ae>
    1066:	2230      	movs	r2, #48	; 0x30
    1068:	e000      	b.n	106c <xvprintf+0x2b0>
    106a:	2220      	movs	r2, #32
    106c:	231e      	movs	r3, #30
    106e:	18fb      	adds	r3, r7, r3
    1070:	701a      	strb	r2, [r3, #0]
    1072:	e005      	b.n	1080 <xvprintf+0x2c4>
    1074:	231e      	movs	r3, #30
    1076:	18fb      	adds	r3, r7, r3
    1078:	781b      	ldrb	r3, [r3, #0]
    107a:	0018      	movs	r0, r3
    107c:	f7ff fe3e 	bl	cfc <xputc>
    1080:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1082:	2202      	movs	r2, #2
    1084:	4013      	ands	r3, r2
    1086:	d105      	bne.n	1094 <xvprintf+0x2d8>
    1088:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    108a:	1c5a      	adds	r2, r3, #1
    108c:	62fa      	str	r2, [r7, #44]	; 0x2c
    108e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1090:	4293      	cmp	r3, r2
    1092:	d3ef      	bcc.n	1074 <xvprintf+0x2b8>
    1094:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1096:	3b01      	subs	r3, #1
    1098:	633b      	str	r3, [r7, #48]	; 0x30
    109a:	2308      	movs	r3, #8
    109c:	18fa      	adds	r2, r7, r3
    109e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10a0:	18d3      	adds	r3, r2, r3
    10a2:	781b      	ldrb	r3, [r3, #0]
    10a4:	0018      	movs	r0, r3
    10a6:	f7ff fe29 	bl	cfc <xputc>
    10aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10ac:	2b00      	cmp	r3, #0
    10ae:	d1f1      	bne.n	1094 <xvprintf+0x2d8>
    10b0:	e002      	b.n	10b8 <xvprintf+0x2fc>
    10b2:	2020      	movs	r0, #32
    10b4:	f7ff fe22 	bl	cfc <xputc>
    10b8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10ba:	1c5a      	adds	r2, r3, #1
    10bc:	62fa      	str	r2, [r7, #44]	; 0x2c
    10be:	6aba      	ldr	r2, [r7, #40]	; 0x28
    10c0:	4293      	cmp	r3, r2
    10c2:	d3f6      	bcc.n	10b2 <xvprintf+0x2f6>
    10c4:	e67f      	b.n	dc6 <xvprintf+0xa>
    10c6:	46c0      	nop			; (mov r8, r8)
    10c8:	e000      	b.n	10cc <xvprintf+0x310>
    10ca:	46c0      	nop			; (mov r8, r8)
    10cc:	46c0      	nop			; (mov r8, r8)
    10ce:	46bd      	mov	sp, r7
    10d0:	b00e      	add	sp, #56	; 0x38
    10d2:	bd80      	pop	{r7, pc}
    10d4:	000017b4 	.word	0x000017b4

000010d8 <xprintf>:
    10d8:	b40f      	push	{r0, r1, r2, r3}
    10da:	b580      	push	{r7, lr}
    10dc:	b082      	sub	sp, #8
    10de:	af00      	add	r7, sp, #0
    10e0:	2314      	movs	r3, #20
    10e2:	18fb      	adds	r3, r7, r3
    10e4:	607b      	str	r3, [r7, #4]
    10e6:	687a      	ldr	r2, [r7, #4]
    10e8:	693b      	ldr	r3, [r7, #16]
    10ea:	0011      	movs	r1, r2
    10ec:	0018      	movs	r0, r3
    10ee:	f7ff fe65 	bl	dbc <xvprintf>
    10f2:	46c0      	nop			; (mov r8, r8)
    10f4:	46bd      	mov	sp, r7
    10f6:	b002      	add	sp, #8
    10f8:	bc80      	pop	{r7}
    10fa:	bc08      	pop	{r3}
    10fc:	b004      	add	sp, #16
    10fe:	4718      	bx	r3

00001100 <xsprintf>:
    1100:	b40e      	push	{r1, r2, r3}
    1102:	b580      	push	{r7, lr}
    1104:	b085      	sub	sp, #20
    1106:	af00      	add	r7, sp, #0
    1108:	6078      	str	r0, [r7, #4]
    110a:	4b0d      	ldr	r3, [pc, #52]	; (1140 <xsprintf+0x40>)
    110c:	687a      	ldr	r2, [r7, #4]
    110e:	601a      	str	r2, [r3, #0]
    1110:	2320      	movs	r3, #32
    1112:	18fb      	adds	r3, r7, r3
    1114:	60fb      	str	r3, [r7, #12]
    1116:	68fa      	ldr	r2, [r7, #12]
    1118:	69fb      	ldr	r3, [r7, #28]
    111a:	0011      	movs	r1, r2
    111c:	0018      	movs	r0, r3
    111e:	f7ff fe4d 	bl	dbc <xvprintf>
    1122:	4b07      	ldr	r3, [pc, #28]	; (1140 <xsprintf+0x40>)
    1124:	681b      	ldr	r3, [r3, #0]
    1126:	2200      	movs	r2, #0
    1128:	701a      	strb	r2, [r3, #0]
    112a:	4b05      	ldr	r3, [pc, #20]	; (1140 <xsprintf+0x40>)
    112c:	2200      	movs	r2, #0
    112e:	601a      	str	r2, [r3, #0]
    1130:	46c0      	nop			; (mov r8, r8)
    1132:	46bd      	mov	sp, r7
    1134:	b005      	add	sp, #20
    1136:	bc80      	pop	{r7}
    1138:	bc08      	pop	{r3}
    113a:	b003      	add	sp, #12
    113c:	4718      	bx	r3
    113e:	46c0      	nop			; (mov r8, r8)
    1140:	20000504 	.word	0x20000504

00001144 <xfprintf>:
    1144:	b40e      	push	{r1, r2, r3}
    1146:	b580      	push	{r7, lr}
    1148:	b085      	sub	sp, #20
    114a:	af00      	add	r7, sp, #0
    114c:	6078      	str	r0, [r7, #4]
    114e:	4b0c      	ldr	r3, [pc, #48]	; (1180 <xfprintf+0x3c>)
    1150:	681b      	ldr	r3, [r3, #0]
    1152:	60fb      	str	r3, [r7, #12]
    1154:	4b0a      	ldr	r3, [pc, #40]	; (1180 <xfprintf+0x3c>)
    1156:	687a      	ldr	r2, [r7, #4]
    1158:	601a      	str	r2, [r3, #0]
    115a:	2320      	movs	r3, #32
    115c:	18fb      	adds	r3, r7, r3
    115e:	60bb      	str	r3, [r7, #8]
    1160:	68ba      	ldr	r2, [r7, #8]
    1162:	69fb      	ldr	r3, [r7, #28]
    1164:	0011      	movs	r1, r2
    1166:	0018      	movs	r0, r3
    1168:	f7ff fe28 	bl	dbc <xvprintf>
    116c:	4b04      	ldr	r3, [pc, #16]	; (1180 <xfprintf+0x3c>)
    116e:	68fa      	ldr	r2, [r7, #12]
    1170:	601a      	str	r2, [r3, #0]
    1172:	46c0      	nop			; (mov r8, r8)
    1174:	46bd      	mov	sp, r7
    1176:	b005      	add	sp, #20
    1178:	bc80      	pop	{r7}
    117a:	bc08      	pop	{r3}
    117c:	b003      	add	sp, #12
    117e:	4718      	bx	r3
    1180:	20000500 	.word	0x20000500

00001184 <put_dump>:
    1184:	b580      	push	{r7, lr}
    1186:	b088      	sub	sp, #32
    1188:	af00      	add	r7, sp, #0
    118a:	60f8      	str	r0, [r7, #12]
    118c:	60b9      	str	r1, [r7, #8]
    118e:	607a      	str	r2, [r7, #4]
    1190:	603b      	str	r3, [r7, #0]
    1192:	68ba      	ldr	r2, [r7, #8]
    1194:	4b38      	ldr	r3, [pc, #224]	; (1278 <put_dump+0xf4>)
    1196:	0011      	movs	r1, r2
    1198:	0018      	movs	r0, r3
    119a:	f7ff ff9d 	bl	10d8 <xprintf>
    119e:	683b      	ldr	r3, [r7, #0]
    11a0:	2b02      	cmp	r3, #2
    11a2:	d03c      	beq.n	121e <put_dump+0x9a>
    11a4:	2b04      	cmp	r3, #4
    11a6:	d04d      	beq.n	1244 <put_dump+0xc0>
    11a8:	2b01      	cmp	r3, #1
    11aa:	d15d      	bne.n	1268 <put_dump+0xe4>
    11ac:	68fb      	ldr	r3, [r7, #12]
    11ae:	613b      	str	r3, [r7, #16]
    11b0:	2300      	movs	r3, #0
    11b2:	61fb      	str	r3, [r7, #28]
    11b4:	e00c      	b.n	11d0 <put_dump+0x4c>
    11b6:	69fb      	ldr	r3, [r7, #28]
    11b8:	693a      	ldr	r2, [r7, #16]
    11ba:	18d3      	adds	r3, r2, r3
    11bc:	781b      	ldrb	r3, [r3, #0]
    11be:	001a      	movs	r2, r3
    11c0:	4b2e      	ldr	r3, [pc, #184]	; (127c <put_dump+0xf8>)
    11c2:	0011      	movs	r1, r2
    11c4:	0018      	movs	r0, r3
    11c6:	f7ff ff87 	bl	10d8 <xprintf>
    11ca:	69fb      	ldr	r3, [r7, #28]
    11cc:	3301      	adds	r3, #1
    11ce:	61fb      	str	r3, [r7, #28]
    11d0:	69fa      	ldr	r2, [r7, #28]
    11d2:	687b      	ldr	r3, [r7, #4]
    11d4:	429a      	cmp	r2, r3
    11d6:	dbee      	blt.n	11b6 <put_dump+0x32>
    11d8:	2020      	movs	r0, #32
    11da:	f7ff fd8f 	bl	cfc <xputc>
    11de:	2300      	movs	r3, #0
    11e0:	61fb      	str	r3, [r7, #28]
    11e2:	e017      	b.n	1214 <put_dump+0x90>
    11e4:	69fb      	ldr	r3, [r7, #28]
    11e6:	693a      	ldr	r2, [r7, #16]
    11e8:	18d3      	adds	r3, r2, r3
    11ea:	781b      	ldrb	r3, [r3, #0]
    11ec:	2b1f      	cmp	r3, #31
    11ee:	d90a      	bls.n	1206 <put_dump+0x82>
    11f0:	69fb      	ldr	r3, [r7, #28]
    11f2:	693a      	ldr	r2, [r7, #16]
    11f4:	18d3      	adds	r3, r2, r3
    11f6:	781b      	ldrb	r3, [r3, #0]
    11f8:	2b7e      	cmp	r3, #126	; 0x7e
    11fa:	d804      	bhi.n	1206 <put_dump+0x82>
    11fc:	69fb      	ldr	r3, [r7, #28]
    11fe:	693a      	ldr	r2, [r7, #16]
    1200:	18d3      	adds	r3, r2, r3
    1202:	781b      	ldrb	r3, [r3, #0]
    1204:	e000      	b.n	1208 <put_dump+0x84>
    1206:	232e      	movs	r3, #46	; 0x2e
    1208:	0018      	movs	r0, r3
    120a:	f7ff fd77 	bl	cfc <xputc>
    120e:	69fb      	ldr	r3, [r7, #28]
    1210:	3301      	adds	r3, #1
    1212:	61fb      	str	r3, [r7, #28]
    1214:	69fa      	ldr	r2, [r7, #28]
    1216:	687b      	ldr	r3, [r7, #4]
    1218:	429a      	cmp	r2, r3
    121a:	dbe3      	blt.n	11e4 <put_dump+0x60>
    121c:	e024      	b.n	1268 <put_dump+0xe4>
    121e:	68fb      	ldr	r3, [r7, #12]
    1220:	61bb      	str	r3, [r7, #24]
    1222:	69bb      	ldr	r3, [r7, #24]
    1224:	1c9a      	adds	r2, r3, #2
    1226:	61ba      	str	r2, [r7, #24]
    1228:	881b      	ldrh	r3, [r3, #0]
    122a:	001a      	movs	r2, r3
    122c:	4b14      	ldr	r3, [pc, #80]	; (1280 <put_dump+0xfc>)
    122e:	0011      	movs	r1, r2
    1230:	0018      	movs	r0, r3
    1232:	f7ff ff51 	bl	10d8 <xprintf>
    1236:	687b      	ldr	r3, [r7, #4]
    1238:	3b01      	subs	r3, #1
    123a:	607b      	str	r3, [r7, #4]
    123c:	687b      	ldr	r3, [r7, #4]
    123e:	2b00      	cmp	r3, #0
    1240:	d1ef      	bne.n	1222 <put_dump+0x9e>
    1242:	e011      	b.n	1268 <put_dump+0xe4>
    1244:	68fb      	ldr	r3, [r7, #12]
    1246:	617b      	str	r3, [r7, #20]
    1248:	697b      	ldr	r3, [r7, #20]
    124a:	1d1a      	adds	r2, r3, #4
    124c:	617a      	str	r2, [r7, #20]
    124e:	681a      	ldr	r2, [r3, #0]
    1250:	4b0c      	ldr	r3, [pc, #48]	; (1284 <put_dump+0x100>)
    1252:	0011      	movs	r1, r2
    1254:	0018      	movs	r0, r3
    1256:	f7ff ff3f 	bl	10d8 <xprintf>
    125a:	687b      	ldr	r3, [r7, #4]
    125c:	3b01      	subs	r3, #1
    125e:	607b      	str	r3, [r7, #4]
    1260:	687b      	ldr	r3, [r7, #4]
    1262:	2b00      	cmp	r3, #0
    1264:	d1f0      	bne.n	1248 <put_dump+0xc4>
    1266:	46c0      	nop			; (mov r8, r8)
    1268:	200a      	movs	r0, #10
    126a:	f7ff fd47 	bl	cfc <xputc>
    126e:	46c0      	nop			; (mov r8, r8)
    1270:	46bd      	mov	sp, r7
    1272:	b008      	add	sp, #32
    1274:	bd80      	pop	{r7, pc}
    1276:	46c0      	nop			; (mov r8, r8)
    1278:	00001810 	.word	0x00001810
    127c:	00001818 	.word	0x00001818
    1280:	00001820 	.word	0x00001820
    1284:	00001828 	.word	0x00001828

00001288 <xgets>:
    1288:	b580      	push	{r7, lr}
    128a:	b084      	sub	sp, #16
    128c:	af00      	add	r7, sp, #0
    128e:	6078      	str	r0, [r7, #4]
    1290:	6039      	str	r1, [r7, #0]
    1292:	4b24      	ldr	r3, [pc, #144]	; (1324 <xgets+0x9c>)
    1294:	681b      	ldr	r3, [r3, #0]
    1296:	2b00      	cmp	r3, #0
    1298:	d101      	bne.n	129e <xgets+0x16>
    129a:	2300      	movs	r3, #0
    129c:	e03e      	b.n	131c <xgets+0x94>
    129e:	2300      	movs	r3, #0
    12a0:	60fb      	str	r3, [r7, #12]
    12a2:	4b20      	ldr	r3, [pc, #128]	; (1324 <xgets+0x9c>)
    12a4:	681b      	ldr	r3, [r3, #0]
    12a6:	4798      	blx	r3
    12a8:	0003      	movs	r3, r0
    12aa:	60bb      	str	r3, [r7, #8]
    12ac:	68bb      	ldr	r3, [r7, #8]
    12ae:	2b00      	cmp	r3, #0
    12b0:	d101      	bne.n	12b6 <xgets+0x2e>
    12b2:	2300      	movs	r3, #0
    12b4:	e032      	b.n	131c <xgets+0x94>
    12b6:	68bb      	ldr	r3, [r7, #8]
    12b8:	2b0d      	cmp	r3, #13
    12ba:	d025      	beq.n	1308 <xgets+0x80>
    12bc:	68bb      	ldr	r3, [r7, #8]
    12be:	2b08      	cmp	r3, #8
    12c0:	d10b      	bne.n	12da <xgets+0x52>
    12c2:	68fb      	ldr	r3, [r7, #12]
    12c4:	2b00      	cmp	r3, #0
    12c6:	d008      	beq.n	12da <xgets+0x52>
    12c8:	68fb      	ldr	r3, [r7, #12]
    12ca:	3b01      	subs	r3, #1
    12cc:	60fb      	str	r3, [r7, #12]
    12ce:	68bb      	ldr	r3, [r7, #8]
    12d0:	b2db      	uxtb	r3, r3
    12d2:	0018      	movs	r0, r3
    12d4:	f7ff fd12 	bl	cfc <xputc>
    12d8:	e015      	b.n	1306 <xgets+0x7e>
    12da:	68bb      	ldr	r3, [r7, #8]
    12dc:	2b1f      	cmp	r3, #31
    12de:	dde0      	ble.n	12a2 <xgets+0x1a>
    12e0:	683b      	ldr	r3, [r7, #0]
    12e2:	1e5a      	subs	r2, r3, #1
    12e4:	68fb      	ldr	r3, [r7, #12]
    12e6:	429a      	cmp	r2, r3
    12e8:	dddb      	ble.n	12a2 <xgets+0x1a>
    12ea:	68fb      	ldr	r3, [r7, #12]
    12ec:	1c5a      	adds	r2, r3, #1
    12ee:	60fa      	str	r2, [r7, #12]
    12f0:	001a      	movs	r2, r3
    12f2:	687b      	ldr	r3, [r7, #4]
    12f4:	189b      	adds	r3, r3, r2
    12f6:	68ba      	ldr	r2, [r7, #8]
    12f8:	b2d2      	uxtb	r2, r2
    12fa:	701a      	strb	r2, [r3, #0]
    12fc:	68bb      	ldr	r3, [r7, #8]
    12fe:	b2db      	uxtb	r3, r3
    1300:	0018      	movs	r0, r3
    1302:	f7ff fcfb 	bl	cfc <xputc>
    1306:	e7cc      	b.n	12a2 <xgets+0x1a>
    1308:	46c0      	nop			; (mov r8, r8)
    130a:	68fb      	ldr	r3, [r7, #12]
    130c:	687a      	ldr	r2, [r7, #4]
    130e:	18d3      	adds	r3, r2, r3
    1310:	2200      	movs	r2, #0
    1312:	701a      	strb	r2, [r3, #0]
    1314:	200a      	movs	r0, #10
    1316:	f7ff fcf1 	bl	cfc <xputc>
    131a:	2301      	movs	r3, #1
    131c:	0018      	movs	r0, r3
    131e:	46bd      	mov	sp, r7
    1320:	b004      	add	sp, #16
    1322:	bd80      	pop	{r7, pc}
    1324:	20000508 	.word	0x20000508

00001328 <xfgets>:
    1328:	b580      	push	{r7, lr}
    132a:	b086      	sub	sp, #24
    132c:	af00      	add	r7, sp, #0
    132e:	60f8      	str	r0, [r7, #12]
    1330:	60b9      	str	r1, [r7, #8]
    1332:	607a      	str	r2, [r7, #4]
    1334:	4b0a      	ldr	r3, [pc, #40]	; (1360 <xfgets+0x38>)
    1336:	681b      	ldr	r3, [r3, #0]
    1338:	617b      	str	r3, [r7, #20]
    133a:	4b09      	ldr	r3, [pc, #36]	; (1360 <xfgets+0x38>)
    133c:	68fa      	ldr	r2, [r7, #12]
    133e:	601a      	str	r2, [r3, #0]
    1340:	687a      	ldr	r2, [r7, #4]
    1342:	68bb      	ldr	r3, [r7, #8]
    1344:	0011      	movs	r1, r2
    1346:	0018      	movs	r0, r3
    1348:	f7ff ff9e 	bl	1288 <xgets>
    134c:	0003      	movs	r3, r0
    134e:	613b      	str	r3, [r7, #16]
    1350:	4b03      	ldr	r3, [pc, #12]	; (1360 <xfgets+0x38>)
    1352:	697a      	ldr	r2, [r7, #20]
    1354:	601a      	str	r2, [r3, #0]
    1356:	693b      	ldr	r3, [r7, #16]
    1358:	0018      	movs	r0, r3
    135a:	46bd      	mov	sp, r7
    135c:	b006      	add	sp, #24
    135e:	bd80      	pop	{r7, pc}
    1360:	20000508 	.word	0x20000508

00001364 <xatoi>:
    1364:	b580      	push	{r7, lr}
    1366:	b084      	sub	sp, #16
    1368:	af00      	add	r7, sp, #0
    136a:	6078      	str	r0, [r7, #4]
    136c:	6039      	str	r1, [r7, #0]
    136e:	2309      	movs	r3, #9
    1370:	18fb      	adds	r3, r7, r3
    1372:	2200      	movs	r2, #0
    1374:	701a      	strb	r2, [r3, #0]
    1376:	683b      	ldr	r3, [r7, #0]
    1378:	2200      	movs	r2, #0
    137a:	601a      	str	r2, [r3, #0]
    137c:	e004      	b.n	1388 <xatoi+0x24>
    137e:	687b      	ldr	r3, [r7, #4]
    1380:	681b      	ldr	r3, [r3, #0]
    1382:	1c5a      	adds	r2, r3, #1
    1384:	687b      	ldr	r3, [r7, #4]
    1386:	601a      	str	r2, [r3, #0]
    1388:	687b      	ldr	r3, [r7, #4]
    138a:	681a      	ldr	r2, [r3, #0]
    138c:	230b      	movs	r3, #11
    138e:	18fb      	adds	r3, r7, r3
    1390:	7812      	ldrb	r2, [r2, #0]
    1392:	701a      	strb	r2, [r3, #0]
    1394:	230b      	movs	r3, #11
    1396:	18fb      	adds	r3, r7, r3
    1398:	781b      	ldrb	r3, [r3, #0]
    139a:	2b20      	cmp	r3, #32
    139c:	d0ef      	beq.n	137e <xatoi+0x1a>
    139e:	230b      	movs	r3, #11
    13a0:	18fb      	adds	r3, r7, r3
    13a2:	781b      	ldrb	r3, [r3, #0]
    13a4:	2b2d      	cmp	r3, #45	; 0x2d
    13a6:	d10e      	bne.n	13c6 <xatoi+0x62>
    13a8:	2309      	movs	r3, #9
    13aa:	18fb      	adds	r3, r7, r3
    13ac:	2201      	movs	r2, #1
    13ae:	701a      	strb	r2, [r3, #0]
    13b0:	687b      	ldr	r3, [r7, #4]
    13b2:	681b      	ldr	r3, [r3, #0]
    13b4:	1c5a      	adds	r2, r3, #1
    13b6:	687b      	ldr	r3, [r7, #4]
    13b8:	601a      	str	r2, [r3, #0]
    13ba:	687b      	ldr	r3, [r7, #4]
    13bc:	681a      	ldr	r2, [r3, #0]
    13be:	230b      	movs	r3, #11
    13c0:	18fb      	adds	r3, r7, r3
    13c2:	7812      	ldrb	r2, [r2, #0]
    13c4:	701a      	strb	r2, [r3, #0]
    13c6:	230b      	movs	r3, #11
    13c8:	18fb      	adds	r3, r7, r3
    13ca:	781b      	ldrb	r3, [r3, #0]
    13cc:	2b30      	cmp	r3, #48	; 0x30
    13ce:	d149      	bne.n	1464 <xatoi+0x100>
    13d0:	687b      	ldr	r3, [r7, #4]
    13d2:	681b      	ldr	r3, [r3, #0]
    13d4:	1c5a      	adds	r2, r3, #1
    13d6:	687b      	ldr	r3, [r7, #4]
    13d8:	601a      	str	r2, [r3, #0]
    13da:	687b      	ldr	r3, [r7, #4]
    13dc:	681a      	ldr	r2, [r3, #0]
    13de:	230b      	movs	r3, #11
    13e0:	18fb      	adds	r3, r7, r3
    13e2:	7812      	ldrb	r2, [r2, #0]
    13e4:	701a      	strb	r2, [r3, #0]
    13e6:	230b      	movs	r3, #11
    13e8:	18fb      	adds	r3, r7, r3
    13ea:	781b      	ldrb	r3, [r3, #0]
    13ec:	2b62      	cmp	r3, #98	; 0x62
    13ee:	d011      	beq.n	1414 <xatoi+0xb0>
    13f0:	2b78      	cmp	r3, #120	; 0x78
    13f2:	d11f      	bne.n	1434 <xatoi+0xd0>
    13f4:	230a      	movs	r3, #10
    13f6:	18fb      	adds	r3, r7, r3
    13f8:	2210      	movs	r2, #16
    13fa:	701a      	strb	r2, [r3, #0]
    13fc:	687b      	ldr	r3, [r7, #4]
    13fe:	681b      	ldr	r3, [r3, #0]
    1400:	1c5a      	adds	r2, r3, #1
    1402:	687b      	ldr	r3, [r7, #4]
    1404:	601a      	str	r2, [r3, #0]
    1406:	687b      	ldr	r3, [r7, #4]
    1408:	681a      	ldr	r2, [r3, #0]
    140a:	230b      	movs	r3, #11
    140c:	18fb      	adds	r3, r7, r3
    140e:	7812      	ldrb	r2, [r2, #0]
    1410:	701a      	strb	r2, [r3, #0]
    1412:	e037      	b.n	1484 <xatoi+0x120>
    1414:	230a      	movs	r3, #10
    1416:	18fb      	adds	r3, r7, r3
    1418:	2202      	movs	r2, #2
    141a:	701a      	strb	r2, [r3, #0]
    141c:	687b      	ldr	r3, [r7, #4]
    141e:	681b      	ldr	r3, [r3, #0]
    1420:	1c5a      	adds	r2, r3, #1
    1422:	687b      	ldr	r3, [r7, #4]
    1424:	601a      	str	r2, [r3, #0]
    1426:	687b      	ldr	r3, [r7, #4]
    1428:	681a      	ldr	r2, [r3, #0]
    142a:	230b      	movs	r3, #11
    142c:	18fb      	adds	r3, r7, r3
    142e:	7812      	ldrb	r2, [r2, #0]
    1430:	701a      	strb	r2, [r3, #0]
    1432:	e027      	b.n	1484 <xatoi+0x120>
    1434:	230b      	movs	r3, #11
    1436:	18fb      	adds	r3, r7, r3
    1438:	781b      	ldrb	r3, [r3, #0]
    143a:	2b20      	cmp	r3, #32
    143c:	d801      	bhi.n	1442 <xatoi+0xde>
    143e:	2301      	movs	r3, #1
    1440:	e079      	b.n	1536 <xatoi+0x1d2>
    1442:	230b      	movs	r3, #11
    1444:	18fb      	adds	r3, r7, r3
    1446:	781b      	ldrb	r3, [r3, #0]
    1448:	2b2f      	cmp	r3, #47	; 0x2f
    144a:	d904      	bls.n	1456 <xatoi+0xf2>
    144c:	230b      	movs	r3, #11
    144e:	18fb      	adds	r3, r7, r3
    1450:	781b      	ldrb	r3, [r3, #0]
    1452:	2b39      	cmp	r3, #57	; 0x39
    1454:	d901      	bls.n	145a <xatoi+0xf6>
    1456:	2300      	movs	r3, #0
    1458:	e06d      	b.n	1536 <xatoi+0x1d2>
    145a:	230a      	movs	r3, #10
    145c:	18fb      	adds	r3, r7, r3
    145e:	2208      	movs	r2, #8
    1460:	701a      	strb	r2, [r3, #0]
    1462:	e00f      	b.n	1484 <xatoi+0x120>
    1464:	230b      	movs	r3, #11
    1466:	18fb      	adds	r3, r7, r3
    1468:	781b      	ldrb	r3, [r3, #0]
    146a:	2b2f      	cmp	r3, #47	; 0x2f
    146c:	d904      	bls.n	1478 <xatoi+0x114>
    146e:	230b      	movs	r3, #11
    1470:	18fb      	adds	r3, r7, r3
    1472:	781b      	ldrb	r3, [r3, #0]
    1474:	2b39      	cmp	r3, #57	; 0x39
    1476:	d901      	bls.n	147c <xatoi+0x118>
    1478:	2300      	movs	r3, #0
    147a:	e05c      	b.n	1536 <xatoi+0x1d2>
    147c:	230a      	movs	r3, #10
    147e:	18fb      	adds	r3, r7, r3
    1480:	220a      	movs	r2, #10
    1482:	701a      	strb	r2, [r3, #0]
    1484:	2300      	movs	r3, #0
    1486:	60fb      	str	r3, [r7, #12]
    1488:	e044      	b.n	1514 <xatoi+0x1b0>
    148a:	230b      	movs	r3, #11
    148c:	18fb      	adds	r3, r7, r3
    148e:	781b      	ldrb	r3, [r3, #0]
    1490:	2b60      	cmp	r3, #96	; 0x60
    1492:	d906      	bls.n	14a2 <xatoi+0x13e>
    1494:	230b      	movs	r3, #11
    1496:	18fb      	adds	r3, r7, r3
    1498:	220b      	movs	r2, #11
    149a:	18ba      	adds	r2, r7, r2
    149c:	7812      	ldrb	r2, [r2, #0]
    149e:	3a20      	subs	r2, #32
    14a0:	701a      	strb	r2, [r3, #0]
    14a2:	230b      	movs	r3, #11
    14a4:	18fb      	adds	r3, r7, r3
    14a6:	220b      	movs	r2, #11
    14a8:	18ba      	adds	r2, r7, r2
    14aa:	7812      	ldrb	r2, [r2, #0]
    14ac:	3a30      	subs	r2, #48	; 0x30
    14ae:	701a      	strb	r2, [r3, #0]
    14b0:	230b      	movs	r3, #11
    14b2:	18fb      	adds	r3, r7, r3
    14b4:	781b      	ldrb	r3, [r3, #0]
    14b6:	2b10      	cmp	r3, #16
    14b8:	d90d      	bls.n	14d6 <xatoi+0x172>
    14ba:	230b      	movs	r3, #11
    14bc:	18fb      	adds	r3, r7, r3
    14be:	220b      	movs	r2, #11
    14c0:	18ba      	adds	r2, r7, r2
    14c2:	7812      	ldrb	r2, [r2, #0]
    14c4:	3a07      	subs	r2, #7
    14c6:	701a      	strb	r2, [r3, #0]
    14c8:	230b      	movs	r3, #11
    14ca:	18fb      	adds	r3, r7, r3
    14cc:	781b      	ldrb	r3, [r3, #0]
    14ce:	2b09      	cmp	r3, #9
    14d0:	d801      	bhi.n	14d6 <xatoi+0x172>
    14d2:	2300      	movs	r3, #0
    14d4:	e02f      	b.n	1536 <xatoi+0x1d2>
    14d6:	230b      	movs	r3, #11
    14d8:	18fa      	adds	r2, r7, r3
    14da:	230a      	movs	r3, #10
    14dc:	18fb      	adds	r3, r7, r3
    14de:	7812      	ldrb	r2, [r2, #0]
    14e0:	781b      	ldrb	r3, [r3, #0]
    14e2:	429a      	cmp	r2, r3
    14e4:	d301      	bcc.n	14ea <xatoi+0x186>
    14e6:	2300      	movs	r3, #0
    14e8:	e025      	b.n	1536 <xatoi+0x1d2>
    14ea:	230a      	movs	r3, #10
    14ec:	18fb      	adds	r3, r7, r3
    14ee:	781b      	ldrb	r3, [r3, #0]
    14f0:	68fa      	ldr	r2, [r7, #12]
    14f2:	435a      	muls	r2, r3
    14f4:	230b      	movs	r3, #11
    14f6:	18fb      	adds	r3, r7, r3
    14f8:	781b      	ldrb	r3, [r3, #0]
    14fa:	18d3      	adds	r3, r2, r3
    14fc:	60fb      	str	r3, [r7, #12]
    14fe:	687b      	ldr	r3, [r7, #4]
    1500:	681b      	ldr	r3, [r3, #0]
    1502:	1c5a      	adds	r2, r3, #1
    1504:	687b      	ldr	r3, [r7, #4]
    1506:	601a      	str	r2, [r3, #0]
    1508:	687b      	ldr	r3, [r7, #4]
    150a:	681a      	ldr	r2, [r3, #0]
    150c:	230b      	movs	r3, #11
    150e:	18fb      	adds	r3, r7, r3
    1510:	7812      	ldrb	r2, [r2, #0]
    1512:	701a      	strb	r2, [r3, #0]
    1514:	230b      	movs	r3, #11
    1516:	18fb      	adds	r3, r7, r3
    1518:	781b      	ldrb	r3, [r3, #0]
    151a:	2b20      	cmp	r3, #32
    151c:	d8b5      	bhi.n	148a <xatoi+0x126>
    151e:	2309      	movs	r3, #9
    1520:	18fb      	adds	r3, r7, r3
    1522:	781b      	ldrb	r3, [r3, #0]
    1524:	2b00      	cmp	r3, #0
    1526:	d002      	beq.n	152e <xatoi+0x1ca>
    1528:	68fb      	ldr	r3, [r7, #12]
    152a:	425b      	negs	r3, r3
    152c:	60fb      	str	r3, [r7, #12]
    152e:	68fa      	ldr	r2, [r7, #12]
    1530:	683b      	ldr	r3, [r7, #0]
    1532:	601a      	str	r2, [r3, #0]
    1534:	2301      	movs	r3, #1
    1536:	0018      	movs	r0, r3
    1538:	46bd      	mov	sp, r7
    153a:	b004      	add	sp, #16
    153c:	bd80      	pop	{r7, pc}
    153e:	46c0      	nop			; (mov r8, r8)

00001540 <mil_cpy>:
    1540:	8802      	ldrh	r2, [r0, #0]
    1542:	4b30      	ldr	r3, [pc, #192]	; (1604 <mil_cpy+0xc4>)
    1544:	601a      	str	r2, [r3, #0]
    1546:	8842      	ldrh	r2, [r0, #2]
    1548:	4b2f      	ldr	r3, [pc, #188]	; (1608 <mil_cpy+0xc8>)
    154a:	601a      	str	r2, [r3, #0]
    154c:	8882      	ldrh	r2, [r0, #4]
    154e:	4b2f      	ldr	r3, [pc, #188]	; (160c <mil_cpy+0xcc>)
    1550:	601a      	str	r2, [r3, #0]
    1552:	88c2      	ldrh	r2, [r0, #6]
    1554:	4b2e      	ldr	r3, [pc, #184]	; (1610 <mil_cpy+0xd0>)
    1556:	601a      	str	r2, [r3, #0]
    1558:	8902      	ldrh	r2, [r0, #8]
    155a:	4b2e      	ldr	r3, [pc, #184]	; (1614 <mil_cpy+0xd4>)
    155c:	601a      	str	r2, [r3, #0]
    155e:	8942      	ldrh	r2, [r0, #10]
    1560:	4b2d      	ldr	r3, [pc, #180]	; (1618 <mil_cpy+0xd8>)
    1562:	601a      	str	r2, [r3, #0]
    1564:	8982      	ldrh	r2, [r0, #12]
    1566:	4b2d      	ldr	r3, [pc, #180]	; (161c <mil_cpy+0xdc>)
    1568:	601a      	str	r2, [r3, #0]
    156a:	89c2      	ldrh	r2, [r0, #14]
    156c:	4b2c      	ldr	r3, [pc, #176]	; (1620 <mil_cpy+0xe0>)
    156e:	601a      	str	r2, [r3, #0]
    1570:	8a02      	ldrh	r2, [r0, #16]
    1572:	4b2c      	ldr	r3, [pc, #176]	; (1624 <mil_cpy+0xe4>)
    1574:	601a      	str	r2, [r3, #0]
    1576:	8a42      	ldrh	r2, [r0, #18]
    1578:	4b2b      	ldr	r3, [pc, #172]	; (1628 <mil_cpy+0xe8>)
    157a:	601a      	str	r2, [r3, #0]
    157c:	8a82      	ldrh	r2, [r0, #20]
    157e:	4b2b      	ldr	r3, [pc, #172]	; (162c <mil_cpy+0xec>)
    1580:	601a      	str	r2, [r3, #0]
    1582:	8ac2      	ldrh	r2, [r0, #22]
    1584:	4b2a      	ldr	r3, [pc, #168]	; (1630 <mil_cpy+0xf0>)
    1586:	601a      	str	r2, [r3, #0]
    1588:	8b02      	ldrh	r2, [r0, #24]
    158a:	4b2a      	ldr	r3, [pc, #168]	; (1634 <mil_cpy+0xf4>)
    158c:	601a      	str	r2, [r3, #0]
    158e:	8b42      	ldrh	r2, [r0, #26]
    1590:	4b29      	ldr	r3, [pc, #164]	; (1638 <mil_cpy+0xf8>)
    1592:	601a      	str	r2, [r3, #0]
    1594:	8b82      	ldrh	r2, [r0, #28]
    1596:	4b29      	ldr	r3, [pc, #164]	; (163c <mil_cpy+0xfc>)
    1598:	601a      	str	r2, [r3, #0]
    159a:	8bc2      	ldrh	r2, [r0, #30]
    159c:	4b28      	ldr	r3, [pc, #160]	; (1640 <mil_cpy+0x100>)
    159e:	601a      	str	r2, [r3, #0]
    15a0:	8c02      	ldrh	r2, [r0, #32]
    15a2:	4b28      	ldr	r3, [pc, #160]	; (1644 <mil_cpy+0x104>)
    15a4:	601a      	str	r2, [r3, #0]
    15a6:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    15a8:	4b27      	ldr	r3, [pc, #156]	; (1648 <mil_cpy+0x108>)
    15aa:	601a      	str	r2, [r3, #0]
    15ac:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    15ae:	4b27      	ldr	r3, [pc, #156]	; (164c <mil_cpy+0x10c>)
    15b0:	601a      	str	r2, [r3, #0]
    15b2:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    15b4:	4b26      	ldr	r3, [pc, #152]	; (1650 <mil_cpy+0x110>)
    15b6:	601a      	str	r2, [r3, #0]
    15b8:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    15ba:	4b26      	ldr	r3, [pc, #152]	; (1654 <mil_cpy+0x114>)
    15bc:	601a      	str	r2, [r3, #0]
    15be:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    15c0:	4b25      	ldr	r3, [pc, #148]	; (1658 <mil_cpy+0x118>)
    15c2:	601a      	str	r2, [r3, #0]
    15c4:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    15c6:	4b25      	ldr	r3, [pc, #148]	; (165c <mil_cpy+0x11c>)
    15c8:	601a      	str	r2, [r3, #0]
    15ca:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    15cc:	4b24      	ldr	r3, [pc, #144]	; (1660 <mil_cpy+0x120>)
    15ce:	601a      	str	r2, [r3, #0]
    15d0:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    15d2:	4b24      	ldr	r3, [pc, #144]	; (1664 <mil_cpy+0x124>)
    15d4:	601a      	str	r2, [r3, #0]
    15d6:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    15d8:	4b23      	ldr	r3, [pc, #140]	; (1668 <mil_cpy+0x128>)
    15da:	601a      	str	r2, [r3, #0]
    15dc:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    15de:	4b23      	ldr	r3, [pc, #140]	; (166c <mil_cpy+0x12c>)
    15e0:	601a      	str	r2, [r3, #0]
    15e2:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    15e4:	4b22      	ldr	r3, [pc, #136]	; (1670 <mil_cpy+0x130>)
    15e6:	601a      	str	r2, [r3, #0]
    15e8:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    15ea:	4b22      	ldr	r3, [pc, #136]	; (1674 <mil_cpy+0x134>)
    15ec:	601a      	str	r2, [r3, #0]
    15ee:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    15f0:	4b21      	ldr	r3, [pc, #132]	; (1678 <mil_cpy+0x138>)
    15f2:	601a      	str	r2, [r3, #0]
    15f4:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    15f6:	4b21      	ldr	r3, [pc, #132]	; (167c <mil_cpy+0x13c>)
    15f8:	601a      	str	r2, [r3, #0]
    15fa:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    15fc:	4b20      	ldr	r3, [pc, #128]	; (1680 <mil_cpy+0x140>)
    15fe:	601a      	str	r2, [r3, #0]
    1600:	4770      	bx	lr
    1602:	46c0      	nop			; (mov r8, r8)
    1604:	40048080 	.word	0x40048080
    1608:	40048084 	.word	0x40048084
    160c:	40048088 	.word	0x40048088
    1610:	4004808c 	.word	0x4004808c
    1614:	40048090 	.word	0x40048090
    1618:	40048094 	.word	0x40048094
    161c:	40048098 	.word	0x40048098
    1620:	4004809c 	.word	0x4004809c
    1624:	400480a0 	.word	0x400480a0
    1628:	400480a4 	.word	0x400480a4
    162c:	400480a8 	.word	0x400480a8
    1630:	400480ac 	.word	0x400480ac
    1634:	400480b0 	.word	0x400480b0
    1638:	400480b4 	.word	0x400480b4
    163c:	400480b8 	.word	0x400480b8
    1640:	400480bc 	.word	0x400480bc
    1644:	400480c0 	.word	0x400480c0
    1648:	400480c4 	.word	0x400480c4
    164c:	400480c8 	.word	0x400480c8
    1650:	400480cc 	.word	0x400480cc
    1654:	400480d0 	.word	0x400480d0
    1658:	400480d4 	.word	0x400480d4
    165c:	400480d8 	.word	0x400480d8
    1660:	400480dc 	.word	0x400480dc
    1664:	400480e0 	.word	0x400480e0
    1668:	400480e4 	.word	0x400480e4
    166c:	400480e8 	.word	0x400480e8
    1670:	400480ec 	.word	0x400480ec
    1674:	400480f0 	.word	0x400480f0
    1678:	400480f4 	.word	0x400480f4
    167c:	400480f8 	.word	0x400480f8
    1680:	400480fc 	.word	0x400480fc

00001684 <__aeabi_uidiv>:
    1684:	2200      	movs	r2, #0
    1686:	0843      	lsrs	r3, r0, #1
    1688:	428b      	cmp	r3, r1
    168a:	d374      	bcc.n	1776 <__aeabi_uidiv+0xf2>
    168c:	0903      	lsrs	r3, r0, #4
    168e:	428b      	cmp	r3, r1
    1690:	d35f      	bcc.n	1752 <__aeabi_uidiv+0xce>
    1692:	0a03      	lsrs	r3, r0, #8
    1694:	428b      	cmp	r3, r1
    1696:	d344      	bcc.n	1722 <__aeabi_uidiv+0x9e>
    1698:	0b03      	lsrs	r3, r0, #12
    169a:	428b      	cmp	r3, r1
    169c:	d328      	bcc.n	16f0 <__aeabi_uidiv+0x6c>
    169e:	0c03      	lsrs	r3, r0, #16
    16a0:	428b      	cmp	r3, r1
    16a2:	d30d      	bcc.n	16c0 <__aeabi_uidiv+0x3c>
    16a4:	22ff      	movs	r2, #255	; 0xff
    16a6:	0209      	lsls	r1, r1, #8
    16a8:	ba12      	rev	r2, r2
    16aa:	0c03      	lsrs	r3, r0, #16
    16ac:	428b      	cmp	r3, r1
    16ae:	d302      	bcc.n	16b6 <__aeabi_uidiv+0x32>
    16b0:	1212      	asrs	r2, r2, #8
    16b2:	0209      	lsls	r1, r1, #8
    16b4:	d065      	beq.n	1782 <__aeabi_uidiv+0xfe>
    16b6:	0b03      	lsrs	r3, r0, #12
    16b8:	428b      	cmp	r3, r1
    16ba:	d319      	bcc.n	16f0 <__aeabi_uidiv+0x6c>
    16bc:	e000      	b.n	16c0 <__aeabi_uidiv+0x3c>
    16be:	0a09      	lsrs	r1, r1, #8
    16c0:	0bc3      	lsrs	r3, r0, #15
    16c2:	428b      	cmp	r3, r1
    16c4:	d301      	bcc.n	16ca <__aeabi_uidiv+0x46>
    16c6:	03cb      	lsls	r3, r1, #15
    16c8:	1ac0      	subs	r0, r0, r3
    16ca:	4152      	adcs	r2, r2
    16cc:	0b83      	lsrs	r3, r0, #14
    16ce:	428b      	cmp	r3, r1
    16d0:	d301      	bcc.n	16d6 <__aeabi_uidiv+0x52>
    16d2:	038b      	lsls	r3, r1, #14
    16d4:	1ac0      	subs	r0, r0, r3
    16d6:	4152      	adcs	r2, r2
    16d8:	0b43      	lsrs	r3, r0, #13
    16da:	428b      	cmp	r3, r1
    16dc:	d301      	bcc.n	16e2 <__aeabi_uidiv+0x5e>
    16de:	034b      	lsls	r3, r1, #13
    16e0:	1ac0      	subs	r0, r0, r3
    16e2:	4152      	adcs	r2, r2
    16e4:	0b03      	lsrs	r3, r0, #12
    16e6:	428b      	cmp	r3, r1
    16e8:	d301      	bcc.n	16ee <__aeabi_uidiv+0x6a>
    16ea:	030b      	lsls	r3, r1, #12
    16ec:	1ac0      	subs	r0, r0, r3
    16ee:	4152      	adcs	r2, r2
    16f0:	0ac3      	lsrs	r3, r0, #11
    16f2:	428b      	cmp	r3, r1
    16f4:	d301      	bcc.n	16fa <__aeabi_uidiv+0x76>
    16f6:	02cb      	lsls	r3, r1, #11
    16f8:	1ac0      	subs	r0, r0, r3
    16fa:	4152      	adcs	r2, r2
    16fc:	0a83      	lsrs	r3, r0, #10
    16fe:	428b      	cmp	r3, r1
    1700:	d301      	bcc.n	1706 <__aeabi_uidiv+0x82>
    1702:	028b      	lsls	r3, r1, #10
    1704:	1ac0      	subs	r0, r0, r3
    1706:	4152      	adcs	r2, r2
    1708:	0a43      	lsrs	r3, r0, #9
    170a:	428b      	cmp	r3, r1
    170c:	d301      	bcc.n	1712 <__aeabi_uidiv+0x8e>
    170e:	024b      	lsls	r3, r1, #9
    1710:	1ac0      	subs	r0, r0, r3
    1712:	4152      	adcs	r2, r2
    1714:	0a03      	lsrs	r3, r0, #8
    1716:	428b      	cmp	r3, r1
    1718:	d301      	bcc.n	171e <__aeabi_uidiv+0x9a>
    171a:	020b      	lsls	r3, r1, #8
    171c:	1ac0      	subs	r0, r0, r3
    171e:	4152      	adcs	r2, r2
    1720:	d2cd      	bcs.n	16be <__aeabi_uidiv+0x3a>
    1722:	09c3      	lsrs	r3, r0, #7
    1724:	428b      	cmp	r3, r1
    1726:	d301      	bcc.n	172c <__aeabi_uidiv+0xa8>
    1728:	01cb      	lsls	r3, r1, #7
    172a:	1ac0      	subs	r0, r0, r3
    172c:	4152      	adcs	r2, r2
    172e:	0983      	lsrs	r3, r0, #6
    1730:	428b      	cmp	r3, r1
    1732:	d301      	bcc.n	1738 <__aeabi_uidiv+0xb4>
    1734:	018b      	lsls	r3, r1, #6
    1736:	1ac0      	subs	r0, r0, r3
    1738:	4152      	adcs	r2, r2
    173a:	0943      	lsrs	r3, r0, #5
    173c:	428b      	cmp	r3, r1
    173e:	d301      	bcc.n	1744 <__aeabi_uidiv+0xc0>
    1740:	014b      	lsls	r3, r1, #5
    1742:	1ac0      	subs	r0, r0, r3
    1744:	4152      	adcs	r2, r2
    1746:	0903      	lsrs	r3, r0, #4
    1748:	428b      	cmp	r3, r1
    174a:	d301      	bcc.n	1750 <__aeabi_uidiv+0xcc>
    174c:	010b      	lsls	r3, r1, #4
    174e:	1ac0      	subs	r0, r0, r3
    1750:	4152      	adcs	r2, r2
    1752:	08c3      	lsrs	r3, r0, #3
    1754:	428b      	cmp	r3, r1
    1756:	d301      	bcc.n	175c <__aeabi_uidiv+0xd8>
    1758:	00cb      	lsls	r3, r1, #3
    175a:	1ac0      	subs	r0, r0, r3
    175c:	4152      	adcs	r2, r2
    175e:	0883      	lsrs	r3, r0, #2
    1760:	428b      	cmp	r3, r1
    1762:	d301      	bcc.n	1768 <__aeabi_uidiv+0xe4>
    1764:	008b      	lsls	r3, r1, #2
    1766:	1ac0      	subs	r0, r0, r3
    1768:	4152      	adcs	r2, r2
    176a:	0843      	lsrs	r3, r0, #1
    176c:	428b      	cmp	r3, r1
    176e:	d301      	bcc.n	1774 <__aeabi_uidiv+0xf0>
    1770:	004b      	lsls	r3, r1, #1
    1772:	1ac0      	subs	r0, r0, r3
    1774:	4152      	adcs	r2, r2
    1776:	1a41      	subs	r1, r0, r1
    1778:	d200      	bcs.n	177c <__aeabi_uidiv+0xf8>
    177a:	4601      	mov	r1, r0
    177c:	4152      	adcs	r2, r2
    177e:	4610      	mov	r0, r2
    1780:	4770      	bx	lr
    1782:	e7ff      	b.n	1784 <__aeabi_uidiv+0x100>
    1784:	b501      	push	{r0, lr}
    1786:	2000      	movs	r0, #0
    1788:	f000 f806 	bl	1798 <__aeabi_idiv0>
    178c:	bd02      	pop	{r1, pc}
    178e:	46c0      	nop			; (mov r8, r8)

00001790 <__aeabi_uidivmod>:
    1790:	2900      	cmp	r1, #0
    1792:	d0f7      	beq.n	1784 <__aeabi_uidiv+0x100>
    1794:	e776      	b.n	1684 <__aeabi_uidiv>
    1796:	4770      	bx	lr

00001798 <__aeabi_idiv0>:
    1798:	4770      	bx	lr
    179a:	46c0      	nop			; (mov r8, r8)
    179c:	6c6c6568 	.word	0x6c6c6568
    17a0:	000a0d6f 	.word	0x000a0d6f
    17a4:	6c6c6568 	.word	0x6c6c6568
    17a8:	6f77206f 	.word	0x6f77206f
    17ac:	0d646c72 	.word	0x0d646c72
    17b0:	0000000a 	.word	0x0000000a
    17b4:	00000f62 	.word	0x00000f62
    17b8:	00000f50 	.word	0x00000f50
    17bc:	00000f6e 	.word	0x00000f6e
    17c0:	00000f7a 	.word	0x00000f7a
    17c4:	00000f7a 	.word	0x00000f7a
    17c8:	00000f7a 	.word	0x00000f7a
    17cc:	00000f7a 	.word	0x00000f7a
    17d0:	00000f7a 	.word	0x00000f7a
    17d4:	00000f7a 	.word	0x00000f7a
    17d8:	00000f7a 	.word	0x00000f7a
    17dc:	00000f7a 	.word	0x00000f7a
    17e0:	00000f7a 	.word	0x00000f7a
    17e4:	00000f7a 	.word	0x00000f7a
    17e8:	00000f68 	.word	0x00000f68
    17ec:	00000f7a 	.word	0x00000f7a
    17f0:	00000f7a 	.word	0x00000f7a
    17f4:	00000f7a 	.word	0x00000f7a
    17f8:	00000ef4 	.word	0x00000ef4
    17fc:	00000f7a 	.word	0x00000f7a
    1800:	00000f6e 	.word	0x00000f6e
    1804:	00000f7a 	.word	0x00000f7a
    1808:	00000f7a 	.word	0x00000f7a
    180c:	00000f74 	.word	0x00000f74
    1810:	6c383025 	.word	0x6c383025
    1814:	00002058 	.word	0x00002058
    1818:	32302520 	.word	0x32302520
    181c:	00000058 	.word	0x00000058
    1820:	34302520 	.word	0x34302520
    1824:	00000058 	.word	0x00000058
    1828:	38302520 	.word	0x38302520
    182c:	0000584c 	.word	0x0000584c
