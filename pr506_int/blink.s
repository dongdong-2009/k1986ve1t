
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 61 0a 00 00 c1 0a 00 00 c1 0a 00 00     ... a...........
	...
      2c:	c1 0a 00 00 00 00 00 00 00 00 00 00 c1 0a 00 00     ................
      3c:	fd 06 00 00 c1 0a 00 00 41 07 00 00 c1 0a 00 00     ........A.......
      4c:	c1 0a 00 00 c1 0a 00 00 c1 0a 00 00 05 0d 00 00     ................
      5c:	c1 0a 00 00 c1 0a 00 00 c1 0a 00 00 c1 0a 00 00     ................
      6c:	c1 0a 00 00 c1 0a 00 00 15 07 00 00 c1 0a 00 00     ................
      7c:	c1 0a 00 00 c1 0a 00 00 c1 0a 00 00 c1 0a 00 00     ................
      8c:	c1 0a 00 00 c1 0a 00 00 c1 0a 00 00 c1 0a 00 00     ................
      9c:	c1 0a 00 00 c1 0a 00 00 00 00 00 00 00 00 00 00     ................
      ac:	c1 0a 00 00 c1 0a 00 00 c1 0a 00 00 c1 0a 00 00     ................
      bc:	c1 0a 00 00                                         ....

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

00000248 <send_command>:
     248:	b580      	push	{r7, lr}
     24a:	b084      	sub	sp, #16
     24c:	af00      	add	r7, sp, #0
     24e:	6078      	str	r0, [r7, #4]
     250:	687b      	ldr	r3, [r7, #4]
     252:	2202      	movs	r2, #2
     254:	5e9a      	ldrsh	r2, [r3, r2]
     256:	230e      	movs	r3, #14
     258:	18fb      	adds	r3, r7, r3
     25a:	801a      	strh	r2, [r3, #0]
     25c:	687b      	ldr	r3, [r7, #4]
     25e:	2202      	movs	r2, #2
     260:	5e9b      	ldrsh	r3, [r3, r2]
     262:	b2da      	uxtb	r2, r3
     264:	2308      	movs	r3, #8
     266:	18fb      	adds	r3, r7, r3
     268:	701a      	strb	r2, [r3, #0]
     26a:	687b      	ldr	r3, [r7, #4]
     26c:	2202      	movs	r2, #2
     26e:	5e9b      	ldrsh	r3, [r3, r2]
     270:	121b      	asrs	r3, r3, #8
     272:	b21b      	sxth	r3, r3
     274:	b2db      	uxtb	r3, r3
     276:	220f      	movs	r2, #15
     278:	4013      	ands	r3, r2
     27a:	b2da      	uxtb	r2, r3
     27c:	2308      	movs	r3, #8
     27e:	18fb      	adds	r3, r7, r3
     280:	705a      	strb	r2, [r3, #1]
     282:	2308      	movs	r3, #8
     284:	18fb      	adds	r3, r7, r3
     286:	785b      	ldrb	r3, [r3, #1]
     288:	b25a      	sxtb	r2, r3
     28a:	687b      	ldr	r3, [r7, #4]
     28c:	2104      	movs	r1, #4
     28e:	5e5b      	ldrsh	r3, [r3, r1]
     290:	011b      	lsls	r3, r3, #4
     292:	b25b      	sxtb	r3, r3
     294:	4313      	orrs	r3, r2
     296:	b25b      	sxtb	r3, r3
     298:	b2da      	uxtb	r2, r3
     29a:	2308      	movs	r3, #8
     29c:	18fb      	adds	r3, r7, r3
     29e:	705a      	strb	r2, [r3, #1]
     2a0:	687b      	ldr	r3, [r7, #4]
     2a2:	2204      	movs	r2, #4
     2a4:	5e9b      	ldrsh	r3, [r3, r2]
     2a6:	111b      	asrs	r3, r3, #4
     2a8:	b21b      	sxth	r3, r3
     2aa:	b2da      	uxtb	r2, r3
     2ac:	2308      	movs	r3, #8
     2ae:	18fb      	adds	r3, r7, r3
     2b0:	709a      	strb	r2, [r3, #2]
     2b2:	687b      	ldr	r3, [r7, #4]
     2b4:	2206      	movs	r2, #6
     2b6:	5e9b      	ldrsh	r3, [r3, r2]
     2b8:	b2da      	uxtb	r2, r3
     2ba:	2308      	movs	r3, #8
     2bc:	18fb      	adds	r3, r7, r3
     2be:	70da      	strb	r2, [r3, #3]
     2c0:	687b      	ldr	r3, [r7, #4]
     2c2:	2206      	movs	r2, #6
     2c4:	5e9b      	ldrsh	r3, [r3, r2]
     2c6:	121b      	asrs	r3, r3, #8
     2c8:	b21b      	sxth	r3, r3
     2ca:	b2db      	uxtb	r3, r3
     2cc:	220f      	movs	r2, #15
     2ce:	4013      	ands	r3, r2
     2d0:	b2da      	uxtb	r2, r3
     2d2:	2308      	movs	r3, #8
     2d4:	18fb      	adds	r3, r7, r3
     2d6:	711a      	strb	r2, [r3, #4]
     2d8:	2308      	movs	r3, #8
     2da:	18fb      	adds	r3, r7, r3
     2dc:	2105      	movs	r1, #5
     2de:	0018      	movs	r0, r3
     2e0:	f000 fca6 	bl	c30 <uart_send>
     2e4:	46c0      	nop			; (mov r8, r8)
     2e6:	46bd      	mov	sp, r7
     2e8:	b004      	add	sp, #16
     2ea:	bd80      	pop	{r7, pc}

000002ec <main>:
     2ec:	b590      	push	{r4, r7, lr}
     2ee:	b0a7      	sub	sp, #156	; 0x9c
     2f0:	af00      	add	r7, sp, #0
     2f2:	2380      	movs	r3, #128	; 0x80
     2f4:	18fb      	adds	r3, r7, r3
     2f6:	4a2c      	ldr	r2, [pc, #176]	; (3a8 <main+0xbc>)
     2f8:	ca13      	ldmia	r2!, {r0, r1, r4}
     2fa:	c313      	stmia	r3!, {r0, r1, r4}
     2fc:	8812      	ldrh	r2, [r2, #0]
     2fe:	801a      	strh	r2, [r3, #0]
     300:	f000 f9ea 	bl	6d8 <SystemInit>
     304:	4b29      	ldr	r3, [pc, #164]	; (3ac <main+0xc0>)
     306:	2200      	movs	r2, #0
     308:	601a      	str	r2, [r3, #0]
     30a:	2300      	movs	r3, #0
     30c:	2294      	movs	r2, #148	; 0x94
     30e:	18ba      	adds	r2, r7, r2
     310:	6013      	str	r3, [r2, #0]
     312:	4b27      	ldr	r3, [pc, #156]	; (3b0 <main+0xc4>)
     314:	2200      	movs	r2, #0
     316:	601a      	str	r2, [r3, #0]
     318:	4b26      	ldr	r3, [pc, #152]	; (3b4 <main+0xc8>)
     31a:	4a27      	ldr	r2, [pc, #156]	; (3b8 <main+0xcc>)
     31c:	601a      	str	r2, [r3, #0]
     31e:	4b25      	ldr	r3, [pc, #148]	; (3b4 <main+0xc8>)
     320:	4a26      	ldr	r2, [pc, #152]	; (3bc <main+0xd0>)
     322:	605a      	str	r2, [r3, #4]
     324:	4b26      	ldr	r3, [pc, #152]	; (3c0 <main+0xd4>)
     326:	2200      	movs	r2, #0
     328:	601a      	str	r2, [r3, #0]
     32a:	4b26      	ldr	r3, [pc, #152]	; (3c4 <main+0xd8>)
     32c:	681b      	ldr	r3, [r3, #0]
     32e:	2b00      	cmp	r3, #0
     330:	d02d      	beq.n	38e <main+0xa2>
     332:	4b25      	ldr	r3, [pc, #148]	; (3c8 <main+0xdc>)
     334:	881b      	ldrh	r3, [r3, #0]
     336:	2220      	movs	r2, #32
     338:	4013      	ands	r3, r2
     33a:	b29b      	uxth	r3, r3
     33c:	2b00      	cmp	r3, #0
     33e:	d01f      	beq.n	380 <main+0x94>
     340:	4b21      	ldr	r3, [pc, #132]	; (3c8 <main+0xdc>)
     342:	2202      	movs	r2, #2
     344:	5e9b      	ldrsh	r3, [r3, r2]
     346:	2b00      	cmp	r3, #0
     348:	da06      	bge.n	358 <main+0x6c>
     34a:	4b1f      	ldr	r3, [pc, #124]	; (3c8 <main+0xdc>)
     34c:	2202      	movs	r2, #2
     34e:	5e9b      	ldrsh	r3, [r3, r2]
     350:	4a1e      	ldr	r2, [pc, #120]	; (3cc <main+0xe0>)
     352:	4694      	mov	ip, r2
     354:	4463      	add	r3, ip
     356:	e002      	b.n	35e <main+0x72>
     358:	4b1b      	ldr	r3, [pc, #108]	; (3c8 <main+0xdc>)
     35a:	2202      	movs	r2, #2
     35c:	5e9b      	ldrsh	r3, [r3, r2]
     35e:	2290      	movs	r2, #144	; 0x90
     360:	18ba      	adds	r2, r7, r2
     362:	6013      	str	r3, [r2, #0]
     364:	4b1a      	ldr	r3, [pc, #104]	; (3d0 <main+0xe4>)
     366:	2290      	movs	r2, #144	; 0x90
     368:	18ba      	adds	r2, r7, r2
     36a:	6812      	ldr	r2, [r2, #0]
     36c:	2180      	movs	r1, #128	; 0x80
     36e:	0109      	lsls	r1, r1, #4
     370:	468c      	mov	ip, r1
     372:	4462      	add	r2, ip
     374:	605a      	str	r2, [r3, #4]
     376:	4b14      	ldr	r3, [pc, #80]	; (3c8 <main+0xdc>)
     378:	0018      	movs	r0, r3
     37a:	f7ff ff65 	bl	248 <send_command>
     37e:	e003      	b.n	388 <main+0x9c>
     380:	4b13      	ldr	r3, [pc, #76]	; (3d0 <main+0xe4>)
     382:	2280      	movs	r2, #128	; 0x80
     384:	0112      	lsls	r2, r2, #4
     386:	605a      	str	r2, [r3, #4]
     388:	4b0e      	ldr	r3, [pc, #56]	; (3c4 <main+0xd8>)
     38a:	2200      	movs	r2, #0
     38c:	601a      	str	r2, [r3, #0]
     38e:	4b11      	ldr	r3, [pc, #68]	; (3d4 <main+0xe8>)
     390:	681b      	ldr	r3, [r3, #0]
     392:	2b00      	cmp	r3, #0
     394:	d0c9      	beq.n	32a <main+0x3e>
     396:	4b10      	ldr	r3, [pc, #64]	; (3d8 <main+0xec>)
     398:	681b      	ldr	r3, [r3, #0]
     39a:	0018      	movs	r0, r3
     39c:	f7ff feea 	bl	174 <update_telemetry>
     3a0:	4b0c      	ldr	r3, [pc, #48]	; (3d4 <main+0xe8>)
     3a2:	2200      	movs	r2, #0
     3a4:	601a      	str	r2, [r3, #0]
     3a6:	e7c0      	b.n	32a <main+0x3e>
     3a8:	0000182c 	.word	0x0000182c
     3ac:	200000dc 	.word	0x200000dc
     3b0:	200000e0 	.word	0x200000e0
     3b4:	200000d0 	.word	0x200000d0
     3b8:	20000044 	.word	0x20000044
     3bc:	20000084 	.word	0x20000084
     3c0:	200000d8 	.word	0x200000d8
     3c4:	200000e8 	.word	0x200000e8
     3c8:	200000c4 	.word	0x200000c4
     3cc:	ffff0000 	.word	0xffff0000
     3d0:	40090000 	.word	0x40090000
     3d4:	200000ec 	.word	0x200000ec
     3d8:	200000e4 	.word	0x200000e4

000003dc <PortConfig>:
     3dc:	b580      	push	{r7, lr}
     3de:	af00      	add	r7, sp, #0
     3e0:	4b47      	ldr	r3, [pc, #284]	; (500 <_stack_size+0x100>)
     3e2:	4a47      	ldr	r2, [pc, #284]	; (500 <_stack_size+0x100>)
     3e4:	69d2      	ldr	r2, [r2, #28]
     3e6:	2180      	movs	r1, #128	; 0x80
     3e8:	0449      	lsls	r1, r1, #17
     3ea:	430a      	orrs	r2, r1
     3ec:	61da      	str	r2, [r3, #28]
     3ee:	4b45      	ldr	r3, [pc, #276]	; (504 <_stack_size+0x104>)
     3f0:	2200      	movs	r2, #0
     3f2:	609a      	str	r2, [r3, #8]
     3f4:	4b43      	ldr	r3, [pc, #268]	; (504 <_stack_size+0x104>)
     3f6:	2200      	movs	r2, #0
     3f8:	601a      	str	r2, [r3, #0]
     3fa:	4b42      	ldr	r3, [pc, #264]	; (504 <_stack_size+0x104>)
     3fc:	22ff      	movs	r2, #255	; 0xff
     3fe:	01d2      	lsls	r2, r2, #7
     400:	605a      	str	r2, [r3, #4]
     402:	4b40      	ldr	r3, [pc, #256]	; (504 <_stack_size+0x104>)
     404:	22ff      	movs	r2, #255	; 0xff
     406:	01d2      	lsls	r2, r2, #7
     408:	60da      	str	r2, [r3, #12]
     40a:	4b3e      	ldr	r3, [pc, #248]	; (504 <_stack_size+0x104>)
     40c:	4a3e      	ldr	r2, [pc, #248]	; (508 <_stack_size+0x108>)
     40e:	619a      	str	r2, [r3, #24]
     410:	4b3b      	ldr	r3, [pc, #236]	; (500 <_stack_size+0x100>)
     412:	4a3b      	ldr	r2, [pc, #236]	; (500 <_stack_size+0x100>)
     414:	69d2      	ldr	r2, [r2, #28]
     416:	2180      	movs	r1, #128	; 0x80
     418:	0409      	lsls	r1, r1, #16
     41a:	430a      	orrs	r2, r1
     41c:	61da      	str	r2, [r3, #28]
     41e:	4b38      	ldr	r3, [pc, #224]	; (500 <_stack_size+0x100>)
     420:	4a37      	ldr	r2, [pc, #220]	; (500 <_stack_size+0x100>)
     422:	69d2      	ldr	r2, [r2, #28]
     424:	2180      	movs	r1, #128	; 0x80
     426:	0449      	lsls	r1, r1, #17
     428:	430a      	orrs	r2, r1
     42a:	61da      	str	r2, [r3, #28]
     42c:	4b37      	ldr	r3, [pc, #220]	; (50c <_stack_size+0x10c>)
     42e:	4a37      	ldr	r2, [pc, #220]	; (50c <_stack_size+0x10c>)
     430:	6892      	ldr	r2, [r2, #8]
     432:	0192      	lsls	r2, r2, #6
     434:	0992      	lsrs	r2, r2, #6
     436:	609a      	str	r2, [r3, #8]
     438:	4b34      	ldr	r3, [pc, #208]	; (50c <_stack_size+0x10c>)
     43a:	4a34      	ldr	r2, [pc, #208]	; (50c <_stack_size+0x10c>)
     43c:	6892      	ldr	r2, [r2, #8]
     43e:	21a8      	movs	r1, #168	; 0xa8
     440:	05c9      	lsls	r1, r1, #23
     442:	430a      	orrs	r2, r1
     444:	609a      	str	r2, [r3, #8]
     446:	4b31      	ldr	r3, [pc, #196]	; (50c <_stack_size+0x10c>)
     448:	4a30      	ldr	r2, [pc, #192]	; (50c <_stack_size+0x10c>)
     44a:	68d2      	ldr	r2, [r2, #12]
     44c:	21e0      	movs	r1, #224	; 0xe0
     44e:	0209      	lsls	r1, r1, #8
     450:	430a      	orrs	r2, r1
     452:	60da      	str	r2, [r3, #12]
     454:	4b2d      	ldr	r3, [pc, #180]	; (50c <_stack_size+0x10c>)
     456:	4a2d      	ldr	r2, [pc, #180]	; (50c <_stack_size+0x10c>)
     458:	6992      	ldr	r2, [r2, #24]
     45a:	21fc      	movs	r1, #252	; 0xfc
     45c:	0609      	lsls	r1, r1, #24
     45e:	430a      	orrs	r2, r1
     460:	619a      	str	r2, [r3, #24]
     462:	4b28      	ldr	r3, [pc, #160]	; (504 <_stack_size+0x104>)
     464:	4a27      	ldr	r2, [pc, #156]	; (504 <_stack_size+0x104>)
     466:	6892      	ldr	r2, [r2, #8]
     468:	0b92      	lsrs	r2, r2, #14
     46a:	0392      	lsls	r2, r2, #14
     46c:	609a      	str	r2, [r3, #8]
     46e:	4b25      	ldr	r3, [pc, #148]	; (504 <_stack_size+0x104>)
     470:	4a24      	ldr	r2, [pc, #144]	; (504 <_stack_size+0x104>)
     472:	6892      	ldr	r2, [r2, #8]
     474:	4926      	ldr	r1, [pc, #152]	; (510 <_stack_size+0x110>)
     476:	430a      	orrs	r2, r1
     478:	609a      	str	r2, [r3, #8]
     47a:	4b22      	ldr	r3, [pc, #136]	; (504 <_stack_size+0x104>)
     47c:	4a21      	ldr	r2, [pc, #132]	; (504 <_stack_size+0x104>)
     47e:	68d2      	ldr	r2, [r2, #12]
     480:	217f      	movs	r1, #127	; 0x7f
     482:	430a      	orrs	r2, r1
     484:	60da      	str	r2, [r3, #12]
     486:	4b1f      	ldr	r3, [pc, #124]	; (504 <_stack_size+0x104>)
     488:	4a1e      	ldr	r2, [pc, #120]	; (504 <_stack_size+0x104>)
     48a:	6992      	ldr	r2, [r2, #24]
     48c:	4921      	ldr	r1, [pc, #132]	; (514 <_stack_size+0x114>)
     48e:	430a      	orrs	r2, r1
     490:	619a      	str	r2, [r3, #24]
     492:	4b1b      	ldr	r3, [pc, #108]	; (500 <_stack_size+0x100>)
     494:	4a1a      	ldr	r2, [pc, #104]	; (500 <_stack_size+0x100>)
     496:	69d2      	ldr	r2, [r2, #28]
     498:	2180      	movs	r1, #128	; 0x80
     49a:	0489      	lsls	r1, r1, #18
     49c:	430a      	orrs	r2, r1
     49e:	61da      	str	r2, [r3, #28]
     4a0:	4b1d      	ldr	r3, [pc, #116]	; (518 <_stack_size+0x118>)
     4a2:	4a1d      	ldr	r2, [pc, #116]	; (518 <_stack_size+0x118>)
     4a4:	68d2      	ldr	r2, [r2, #12]
     4a6:	2102      	movs	r1, #2
     4a8:	438a      	bics	r2, r1
     4aa:	60da      	str	r2, [r3, #12]
     4ac:	4b14      	ldr	r3, [pc, #80]	; (500 <_stack_size+0x100>)
     4ae:	4a14      	ldr	r2, [pc, #80]	; (500 <_stack_size+0x100>)
     4b0:	69d2      	ldr	r2, [r2, #28]
     4b2:	2180      	movs	r1, #128	; 0x80
     4b4:	0409      	lsls	r1, r1, #16
     4b6:	430a      	orrs	r2, r1
     4b8:	61da      	str	r2, [r3, #28]
     4ba:	4b14      	ldr	r3, [pc, #80]	; (50c <_stack_size+0x10c>)
     4bc:	4a13      	ldr	r2, [pc, #76]	; (50c <_stack_size+0x10c>)
     4be:	6892      	ldr	r2, [r2, #8]
     4c0:	4916      	ldr	r1, [pc, #88]	; (51c <_stack_size+0x11c>)
     4c2:	400a      	ands	r2, r1
     4c4:	609a      	str	r2, [r3, #8]
     4c6:	4b11      	ldr	r3, [pc, #68]	; (50c <_stack_size+0x10c>)
     4c8:	4a10      	ldr	r2, [pc, #64]	; (50c <_stack_size+0x10c>)
     4ca:	6892      	ldr	r2, [r2, #8]
     4cc:	21a0      	movs	r1, #160	; 0xa0
     4ce:	0049      	lsls	r1, r1, #1
     4d0:	430a      	orrs	r2, r1
     4d2:	609a      	str	r2, [r3, #8]
     4d4:	4b0d      	ldr	r3, [pc, #52]	; (50c <_stack_size+0x10c>)
     4d6:	4a0d      	ldr	r2, [pc, #52]	; (50c <_stack_size+0x10c>)
     4d8:	68d2      	ldr	r2, [r2, #12]
     4da:	2118      	movs	r1, #24
     4dc:	430a      	orrs	r2, r1
     4de:	60da      	str	r2, [r3, #12]
     4e0:	4b0a      	ldr	r3, [pc, #40]	; (50c <_stack_size+0x10c>)
     4e2:	4a0a      	ldr	r2, [pc, #40]	; (50c <_stack_size+0x10c>)
     4e4:	6992      	ldr	r2, [r2, #24]
     4e6:	21f0      	movs	r1, #240	; 0xf0
     4e8:	0089      	lsls	r1, r1, #2
     4ea:	430a      	orrs	r2, r1
     4ec:	619a      	str	r2, [r3, #24]
     4ee:	4b07      	ldr	r3, [pc, #28]	; (50c <_stack_size+0x10c>)
     4f0:	4a06      	ldr	r2, [pc, #24]	; (50c <_stack_size+0x10c>)
     4f2:	6812      	ldr	r2, [r2, #0]
     4f4:	2118      	movs	r1, #24
     4f6:	438a      	bics	r2, r1
     4f8:	601a      	str	r2, [r3, #0]
     4fa:	46c0      	nop			; (mov r8, r8)
     4fc:	46bd      	mov	sp, r7
     4fe:	bd80      	pop	{r7, pc}
     500:	40020000 	.word	0x40020000
     504:	400c0000 	.word	0x400c0000
     508:	3fffc000 	.word	0x3fffc000
     50c:	400b8000 	.word	0x400b8000
     510:	00001555 	.word	0x00001555
     514:	00003fff 	.word	0x00003fff
     518:	400c8000 	.word	0x400c8000
     51c:	fffffc3f 	.word	0xfffffc3f

00000520 <dac_init>:
     520:	b580      	push	{r7, lr}
     522:	af00      	add	r7, sp, #0
     524:	4b07      	ldr	r3, [pc, #28]	; (544 <dac_init+0x24>)
     526:	4a07      	ldr	r2, [pc, #28]	; (544 <dac_init+0x24>)
     528:	69d2      	ldr	r2, [r2, #28]
     52a:	2180      	movs	r1, #128	; 0x80
     52c:	02c9      	lsls	r1, r1, #11
     52e:	430a      	orrs	r2, r1
     530:	61da      	str	r2, [r3, #28]
     532:	4b05      	ldr	r3, [pc, #20]	; (548 <dac_init+0x28>)
     534:	4a04      	ldr	r2, [pc, #16]	; (548 <dac_init+0x28>)
     536:	6812      	ldr	r2, [r2, #0]
     538:	2104      	movs	r1, #4
     53a:	430a      	orrs	r2, r1
     53c:	601a      	str	r2, [r3, #0]
     53e:	46c0      	nop			; (mov r8, r8)
     540:	46bd      	mov	sp, r7
     542:	bd80      	pop	{r7, pc}
     544:	40020000 	.word	0x40020000
     548:	40090000 	.word	0x40090000

0000054c <ClkConfig>:
     54c:	b580      	push	{r7, lr}
     54e:	af00      	add	r7, sp, #0
     550:	4b18      	ldr	r3, [pc, #96]	; (5b4 <ClkConfig+0x68>)
     552:	4a18      	ldr	r2, [pc, #96]	; (5b4 <ClkConfig+0x68>)
     554:	6892      	ldr	r2, [r2, #8]
     556:	2101      	movs	r1, #1
     558:	430a      	orrs	r2, r1
     55a:	609a      	str	r2, [r3, #8]
     55c:	46c0      	nop			; (mov r8, r8)
     55e:	4b15      	ldr	r3, [pc, #84]	; (5b4 <ClkConfig+0x68>)
     560:	681b      	ldr	r3, [r3, #0]
     562:	2204      	movs	r2, #4
     564:	4013      	ands	r3, r2
     566:	d0fa      	beq.n	55e <ClkConfig+0x12>
     568:	4b12      	ldr	r3, [pc, #72]	; (5b4 <ClkConfig+0x68>)
     56a:	4a12      	ldr	r2, [pc, #72]	; (5b4 <ClkConfig+0x68>)
     56c:	68d2      	ldr	r2, [r2, #12]
     56e:	2102      	movs	r1, #2
     570:	430a      	orrs	r2, r1
     572:	60da      	str	r2, [r3, #12]
     574:	4b0f      	ldr	r3, [pc, #60]	; (5b4 <ClkConfig+0x68>)
     576:	4a10      	ldr	r2, [pc, #64]	; (5b8 <ClkConfig+0x6c>)
     578:	605a      	str	r2, [r3, #4]
     57a:	46c0      	nop			; (mov r8, r8)
     57c:	4b0d      	ldr	r3, [pc, #52]	; (5b4 <ClkConfig+0x68>)
     57e:	681b      	ldr	r3, [r3, #0]
     580:	2202      	movs	r2, #2
     582:	4013      	ands	r3, r2
     584:	d0fa      	beq.n	57c <ClkConfig+0x30>
     586:	4b0d      	ldr	r3, [pc, #52]	; (5bc <ClkConfig+0x70>)
     588:	4a0c      	ldr	r2, [pc, #48]	; (5bc <ClkConfig+0x70>)
     58a:	6812      	ldr	r2, [r2, #0]
     58c:	2120      	movs	r1, #32
     58e:	430a      	orrs	r2, r1
     590:	601a      	str	r2, [r3, #0]
     592:	4b08      	ldr	r3, [pc, #32]	; (5b4 <ClkConfig+0x68>)
     594:	4a07      	ldr	r2, [pc, #28]	; (5b4 <ClkConfig+0x68>)
     596:	68d2      	ldr	r2, [r2, #12]
     598:	2180      	movs	r1, #128	; 0x80
     59a:	0049      	lsls	r1, r1, #1
     59c:	430a      	orrs	r2, r1
     59e:	60da      	str	r2, [r3, #12]
     5a0:	4b04      	ldr	r3, [pc, #16]	; (5b4 <ClkConfig+0x68>)
     5a2:	4a04      	ldr	r2, [pc, #16]	; (5b4 <ClkConfig+0x68>)
     5a4:	68d2      	ldr	r2, [r2, #12]
     5a6:	2104      	movs	r1, #4
     5a8:	430a      	orrs	r2, r1
     5aa:	60da      	str	r2, [r3, #12]
     5ac:	46c0      	nop			; (mov r8, r8)
     5ae:	46bd      	mov	sp, r7
     5b0:	bd80      	pop	{r7, pc}
     5b2:	46c0      	nop			; (mov r8, r8)
     5b4:	40020000 	.word	0x40020000
     5b8:	00000e04 	.word	0x00000e04
     5bc:	40018000 	.word	0x40018000

000005c0 <TimerConfig>:
     5c0:	b580      	push	{r7, lr}
     5c2:	af00      	add	r7, sp, #0
     5c4:	4b17      	ldr	r3, [pc, #92]	; (624 <TimerConfig+0x64>)
     5c6:	4a17      	ldr	r2, [pc, #92]	; (624 <TimerConfig+0x64>)
     5c8:	69d2      	ldr	r2, [r2, #28]
     5ca:	2180      	movs	r1, #128	; 0x80
     5cc:	0309      	lsls	r1, r1, #12
     5ce:	430a      	orrs	r2, r1
     5d0:	61da      	str	r2, [r3, #28]
     5d2:	4b14      	ldr	r3, [pc, #80]	; (624 <TimerConfig+0x64>)
     5d4:	4a13      	ldr	r2, [pc, #76]	; (624 <TimerConfig+0x64>)
     5d6:	6a92      	ldr	r2, [r2, #40]	; 0x28
     5d8:	2180      	movs	r1, #128	; 0x80
     5da:	04c9      	lsls	r1, r1, #19
     5dc:	430a      	orrs	r2, r1
     5de:	629a      	str	r2, [r3, #40]	; 0x28
     5e0:	4b10      	ldr	r3, [pc, #64]	; (624 <TimerConfig+0x64>)
     5e2:	4a10      	ldr	r2, [pc, #64]	; (624 <TimerConfig+0x64>)
     5e4:	6a92      	ldr	r2, [r2, #40]	; 0x28
     5e6:	4910      	ldr	r1, [pc, #64]	; (628 <TimerConfig+0x68>)
     5e8:	400a      	ands	r2, r1
     5ea:	629a      	str	r2, [r3, #40]	; 0x28
     5ec:	4b0f      	ldr	r3, [pc, #60]	; (62c <TimerConfig+0x6c>)
     5ee:	2200      	movs	r2, #0
     5f0:	601a      	str	r2, [r3, #0]
     5f2:	4b0e      	ldr	r3, [pc, #56]	; (62c <TimerConfig+0x6c>)
     5f4:	2277      	movs	r2, #119	; 0x77
     5f6:	605a      	str	r2, [r3, #4]
     5f8:	4b0c      	ldr	r3, [pc, #48]	; (62c <TimerConfig+0x6c>)
     5fa:	4a0d      	ldr	r2, [pc, #52]	; (630 <TimerConfig+0x70>)
     5fc:	609a      	str	r2, [r3, #8]
     5fe:	4b0b      	ldr	r3, [pc, #44]	; (62c <TimerConfig+0x6c>)
     600:	22fa      	movs	r2, #250	; 0xfa
     602:	00d2      	lsls	r2, r2, #3
     604:	611a      	str	r2, [r3, #16]
     606:	4b09      	ldr	r3, [pc, #36]	; (62c <TimerConfig+0x6c>)
     608:	4a08      	ldr	r2, [pc, #32]	; (62c <TimerConfig+0x6c>)
     60a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     60c:	2102      	movs	r1, #2
     60e:	430a      	orrs	r2, r1
     610:	659a      	str	r2, [r3, #88]	; 0x58
     612:	4b06      	ldr	r3, [pc, #24]	; (62c <TimerConfig+0x6c>)
     614:	2201      	movs	r2, #1
     616:	60da      	str	r2, [r3, #12]
     618:	200d      	movs	r0, #13
     61a:	f7ff fd51 	bl	c0 <NVIC_EnableIRQ>
     61e:	46c0      	nop			; (mov r8, r8)
     620:	46bd      	mov	sp, r7
     622:	bd80      	pop	{r7, pc}
     624:	40020000 	.word	0x40020000
     628:	ff00ffff 	.word	0xff00ffff
     62c:	40098000 	.word	0x40098000
     630:	00001387 	.word	0x00001387

00000634 <mil_std_1533_init_rt>:
     634:	b580      	push	{r7, lr}
     636:	b082      	sub	sp, #8
     638:	af00      	add	r7, sp, #0
     63a:	4b22      	ldr	r3, [pc, #136]	; (6c4 <mil_std_1533_init_rt+0x90>)
     63c:	603b      	str	r3, [r7, #0]
     63e:	4b22      	ldr	r3, [pc, #136]	; (6c8 <mil_std_1533_init_rt+0x94>)
     640:	4a21      	ldr	r2, [pc, #132]	; (6c8 <mil_std_1533_init_rt+0x94>)
     642:	69d2      	ldr	r2, [r2, #28]
     644:	2180      	movs	r1, #128	; 0x80
     646:	0089      	lsls	r1, r1, #2
     648:	430a      	orrs	r2, r1
     64a:	61da      	str	r2, [r3, #28]
     64c:	4b1e      	ldr	r3, [pc, #120]	; (6c8 <mil_std_1533_init_rt+0x94>)
     64e:	4a1e      	ldr	r2, [pc, #120]	; (6c8 <mil_std_1533_init_rt+0x94>)
     650:	6b52      	ldr	r2, [r2, #52]	; 0x34
     652:	2180      	movs	r1, #128	; 0x80
     654:	0489      	lsls	r1, r1, #18
     656:	430a      	orrs	r2, r1
     658:	635a      	str	r2, [r3, #52]	; 0x34
     65a:	4a1c      	ldr	r2, [pc, #112]	; (6cc <mil_std_1533_init_rt+0x98>)
     65c:	2380      	movs	r3, #128	; 0x80
     65e:	015b      	lsls	r3, r3, #5
     660:	2101      	movs	r1, #1
     662:	50d1      	str	r1, [r2, r3]
     664:	4a19      	ldr	r2, [pc, #100]	; (6cc <mil_std_1533_init_rt+0x98>)
     666:	2380      	movs	r3, #128	; 0x80
     668:	015b      	lsls	r3, r3, #5
     66a:	4919      	ldr	r1, [pc, #100]	; (6d0 <mil_std_1533_init_rt+0x9c>)
     66c:	50d1      	str	r1, [r2, r3]
     66e:	4917      	ldr	r1, [pc, #92]	; (6cc <mil_std_1533_init_rt+0x98>)
     670:	4a16      	ldr	r2, [pc, #88]	; (6cc <mil_std_1533_init_rt+0x98>)
     672:	2381      	movs	r3, #129	; 0x81
     674:	015b      	lsls	r3, r3, #5
     676:	58d3      	ldr	r3, [r2, r3]
     678:	2206      	movs	r2, #6
     67a:	431a      	orrs	r2, r3
     67c:	2381      	movs	r3, #129	; 0x81
     67e:	015b      	lsls	r3, r3, #5
     680:	50ca      	str	r2, [r1, r3]
     682:	2001      	movs	r0, #1
     684:	f7ff fd1c 	bl	c0 <NVIC_EnableIRQ>
     688:	4910      	ldr	r1, [pc, #64]	; (6cc <mil_std_1533_init_rt+0x98>)
     68a:	4a12      	ldr	r2, [pc, #72]	; (6d4 <mil_std_1533_init_rt+0xa0>)
     68c:	2380      	movs	r3, #128	; 0x80
     68e:	01db      	lsls	r3, r3, #7
     690:	508b      	str	r3, [r1, r2]
     692:	2300      	movs	r3, #0
     694:	607b      	str	r3, [r7, #4]
     696:	e00d      	b.n	6b4 <mil_std_1533_init_rt+0x80>
     698:	683b      	ldr	r3, [r7, #0]
     69a:	1d1a      	adds	r2, r3, #4
     69c:	603a      	str	r2, [r7, #0]
     69e:	687a      	ldr	r2, [r7, #4]
     6a0:	b292      	uxth	r2, r2
     6a2:	210f      	movs	r1, #15
     6a4:	400a      	ands	r2, r1
     6a6:	b292      	uxth	r2, r2
     6a8:	3230      	adds	r2, #48	; 0x30
     6aa:	b292      	uxth	r2, r2
     6ac:	601a      	str	r2, [r3, #0]
     6ae:	687b      	ldr	r3, [r7, #4]
     6b0:	3301      	adds	r3, #1
     6b2:	607b      	str	r3, [r7, #4]
     6b4:	687b      	ldr	r3, [r7, #4]
     6b6:	2b1f      	cmp	r3, #31
     6b8:	ddee      	ble.n	698 <mil_std_1533_init_rt+0x64>
     6ba:	46c0      	nop			; (mov r8, r8)
     6bc:	46bd      	mov	sp, r7
     6be:	b002      	add	sp, #8
     6c0:	bd80      	pop	{r7, pc}
     6c2:	46c0      	nop			; (mov r8, r8)
     6c4:	40048080 	.word	0x40048080
     6c8:	40020000 	.word	0x40020000
     6cc:	40048000 	.word	0x40048000
     6d0:	0003c238 	.word	0x0003c238
     6d4:	00001018 	.word	0x00001018

000006d8 <SystemInit>:
     6d8:	b580      	push	{r7, lr}
     6da:	af00      	add	r7, sp, #0
     6dc:	f7ff ff36 	bl	54c <ClkConfig>
     6e0:	f7ff fe7c 	bl	3dc <PortConfig>
     6e4:	f7ff ff6c 	bl	5c0 <TimerConfig>
     6e8:	f000 fa26 	bl	b38 <uart_init>
     6ec:	f7ff ffa2 	bl	634 <mil_std_1533_init_rt>
     6f0:	f7ff ff16 	bl	520 <dac_init>
     6f4:	46c0      	nop			; (mov r8, r8)
     6f6:	46bd      	mov	sp, r7
     6f8:	bd80      	pop	{r7, pc}
     6fa:	46c0      	nop			; (mov r8, r8)

000006fc <SysTick_Handler>:
     6fc:	b580      	push	{r7, lr}
     6fe:	af00      	add	r7, sp, #0
     700:	4b03      	ldr	r3, [pc, #12]	; (710 <SysTick_Handler+0x14>)
     702:	681b      	ldr	r3, [r3, #0]
     704:	1c5a      	adds	r2, r3, #1
     706:	4b02      	ldr	r3, [pc, #8]	; (710 <SysTick_Handler+0x14>)
     708:	601a      	str	r2, [r3, #0]
     70a:	46c0      	nop			; (mov r8, r8)
     70c:	46bd      	mov	sp, r7
     70e:	bd80      	pop	{r7, pc}
     710:	200000e4 	.word	0x200000e4

00000714 <TIMER4_Handler>:
     714:	b580      	push	{r7, lr}
     716:	af00      	add	r7, sp, #0
     718:	4b06      	ldr	r3, [pc, #24]	; (734 <TIMER4_Handler+0x20>)
     71a:	2200      	movs	r2, #0
     71c:	655a      	str	r2, [r3, #84]	; 0x54
     71e:	4b06      	ldr	r3, [pc, #24]	; (738 <TIMER4_Handler+0x24>)
     720:	681b      	ldr	r3, [r3, #0]
     722:	1c5a      	adds	r2, r3, #1
     724:	4b04      	ldr	r3, [pc, #16]	; (738 <TIMER4_Handler+0x24>)
     726:	601a      	str	r2, [r3, #0]
     728:	4b04      	ldr	r3, [pc, #16]	; (73c <TIMER4_Handler+0x28>)
     72a:	2201      	movs	r2, #1
     72c:	601a      	str	r2, [r3, #0]
     72e:	46c0      	nop			; (mov r8, r8)
     730:	46bd      	mov	sp, r7
     732:	bd80      	pop	{r7, pc}
     734:	40098000 	.word	0x40098000
     738:	200000e4 	.word	0x200000e4
     73c:	200000ec 	.word	0x200000ec

00000740 <MIL_STD_1553B1_Handler>:
     740:	b590      	push	{r4, r7, lr}
     742:	b087      	sub	sp, #28
     744:	af00      	add	r7, sp, #0
     746:	4bba      	ldr	r3, [pc, #744]	; (a30 <MIL_STD_1553B1_Handler+0x2f0>)
     748:	613b      	str	r3, [r7, #16]
     74a:	4aba      	ldr	r2, [pc, #744]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     74c:	4bba      	ldr	r3, [pc, #744]	; (a38 <MIL_STD_1553B1_Handler+0x2f8>)
     74e:	58d3      	ldr	r3, [r2, r3]
     750:	2202      	movs	r2, #2
     752:	4013      	ands	r3, r2
     754:	d100      	bne.n	758 <MIL_STD_1553B1_Handler+0x18>
     756:	e11b      	b.n	990 <MIL_STD_1553B1_Handler+0x250>
     758:	4ab6      	ldr	r2, [pc, #728]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     75a:	4bb8      	ldr	r3, [pc, #736]	; (a3c <MIL_STD_1553B1_Handler+0x2fc>)
     75c:	58d3      	ldr	r3, [r2, r3]
     75e:	4ab8      	ldr	r2, [pc, #736]	; (a40 <MIL_STD_1553B1_Handler+0x300>)
     760:	4293      	cmp	r3, r2
     762:	d000      	beq.n	766 <MIL_STD_1553B1_Handler+0x26>
     764:	e114      	b.n	990 <MIL_STD_1553B1_Handler+0x250>
     766:	4bb7      	ldr	r3, [pc, #732]	; (a44 <MIL_STD_1553B1_Handler+0x304>)
     768:	4ab6      	ldr	r2, [pc, #728]	; (a44 <MIL_STD_1553B1_Handler+0x304>)
     76a:	6812      	ldr	r2, [r2, #0]
     76c:	49b6      	ldr	r1, [pc, #728]	; (a48 <MIL_STD_1553B1_Handler+0x308>)
     76e:	430a      	orrs	r2, r1
     770:	601a      	str	r2, [r3, #0]
     772:	4bb6      	ldr	r3, [pc, #728]	; (a4c <MIL_STD_1553B1_Handler+0x30c>)
     774:	681b      	ldr	r3, [r3, #0]
     776:	2201      	movs	r2, #1
     778:	4053      	eors	r3, r2
     77a:	009a      	lsls	r2, r3, #2
     77c:	4bb4      	ldr	r3, [pc, #720]	; (a50 <MIL_STD_1553B1_Handler+0x310>)
     77e:	18d3      	adds	r3, r2, r3
     780:	681b      	ldr	r3, [r3, #0]
     782:	60fb      	str	r3, [r7, #12]
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
     8f4:	693b      	ldr	r3, [r7, #16]
     8f6:	1d1a      	adds	r2, r3, #4
     8f8:	613a      	str	r2, [r7, #16]
     8fa:	68fa      	ldr	r2, [r7, #12]
     8fc:	1c91      	adds	r1, r2, #2
     8fe:	60f9      	str	r1, [r7, #12]
     900:	8812      	ldrh	r2, [r2, #0]
     902:	601a      	str	r2, [r3, #0]
     904:	693b      	ldr	r3, [r7, #16]
     906:	1d1a      	adds	r2, r3, #4
     908:	613a      	str	r2, [r7, #16]
     90a:	68fa      	ldr	r2, [r7, #12]
     90c:	1c91      	adds	r1, r2, #2
     90e:	60f9      	str	r1, [r7, #12]
     910:	8812      	ldrh	r2, [r2, #0]
     912:	601a      	str	r2, [r3, #0]
     914:	693b      	ldr	r3, [r7, #16]
     916:	1d1a      	adds	r2, r3, #4
     918:	613a      	str	r2, [r7, #16]
     91a:	68fa      	ldr	r2, [r7, #12]
     91c:	1c91      	adds	r1, r2, #2
     91e:	60f9      	str	r1, [r7, #12]
     920:	8812      	ldrh	r2, [r2, #0]
     922:	601a      	str	r2, [r3, #0]
     924:	693b      	ldr	r3, [r7, #16]
     926:	1d1a      	adds	r2, r3, #4
     928:	613a      	str	r2, [r7, #16]
     92a:	68fa      	ldr	r2, [r7, #12]
     92c:	1c91      	adds	r1, r2, #2
     92e:	60f9      	str	r1, [r7, #12]
     930:	8812      	ldrh	r2, [r2, #0]
     932:	601a      	str	r2, [r3, #0]
     934:	693b      	ldr	r3, [r7, #16]
     936:	1d1a      	adds	r2, r3, #4
     938:	613a      	str	r2, [r7, #16]
     93a:	68fa      	ldr	r2, [r7, #12]
     93c:	1c91      	adds	r1, r2, #2
     93e:	60f9      	str	r1, [r7, #12]
     940:	8812      	ldrh	r2, [r2, #0]
     942:	601a      	str	r2, [r3, #0]
     944:	693b      	ldr	r3, [r7, #16]
     946:	1d1a      	adds	r2, r3, #4
     948:	613a      	str	r2, [r7, #16]
     94a:	68fa      	ldr	r2, [r7, #12]
     94c:	1c91      	adds	r1, r2, #2
     94e:	60f9      	str	r1, [r7, #12]
     950:	8812      	ldrh	r2, [r2, #0]
     952:	601a      	str	r2, [r3, #0]
     954:	693b      	ldr	r3, [r7, #16]
     956:	1d1a      	adds	r2, r3, #4
     958:	613a      	str	r2, [r7, #16]
     95a:	68fa      	ldr	r2, [r7, #12]
     95c:	1c91      	adds	r1, r2, #2
     95e:	60f9      	str	r1, [r7, #12]
     960:	8812      	ldrh	r2, [r2, #0]
     962:	601a      	str	r2, [r3, #0]
     964:	693b      	ldr	r3, [r7, #16]
     966:	1d1a      	adds	r2, r3, #4
     968:	613a      	str	r2, [r7, #16]
     96a:	68fa      	ldr	r2, [r7, #12]
     96c:	1c91      	adds	r1, r2, #2
     96e:	60f9      	str	r1, [r7, #12]
     970:	8812      	ldrh	r2, [r2, #0]
     972:	601a      	str	r2, [r3, #0]
     974:	693b      	ldr	r3, [r7, #16]
     976:	1d1a      	adds	r2, r3, #4
     978:	613a      	str	r2, [r7, #16]
     97a:	68fa      	ldr	r2, [r7, #12]
     97c:	1c91      	adds	r1, r2, #2
     97e:	60f9      	str	r1, [r7, #12]
     980:	8812      	ldrh	r2, [r2, #0]
     982:	601a      	str	r2, [r3, #0]
     984:	4b2f      	ldr	r3, [pc, #188]	; (a44 <MIL_STD_1553B1_Handler+0x304>)
     986:	4a2f      	ldr	r2, [pc, #188]	; (a44 <MIL_STD_1553B1_Handler+0x304>)
     988:	6812      	ldr	r2, [r2, #0]
     98a:	0c12      	lsrs	r2, r2, #16
     98c:	0412      	lsls	r2, r2, #16
     98e:	601a      	str	r2, [r3, #0]
     990:	4a28      	ldr	r2, [pc, #160]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     992:	4b29      	ldr	r3, [pc, #164]	; (a38 <MIL_STD_1553B1_Handler+0x2f8>)
     994:	58d3      	ldr	r3, [r2, r3]
     996:	2204      	movs	r2, #4
     998:	4013      	ands	r3, r2
     99a:	d045      	beq.n	a28 <MIL_STD_1553B1_Handler+0x2e8>
     99c:	4a25      	ldr	r2, [pc, #148]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     99e:	4b27      	ldr	r3, [pc, #156]	; (a3c <MIL_STD_1553B1_Handler+0x2fc>)
     9a0:	58d3      	ldr	r3, [r2, r3]
     9a2:	4a27      	ldr	r2, [pc, #156]	; (a40 <MIL_STD_1553B1_Handler+0x300>)
     9a4:	4293      	cmp	r3, r2
     9a6:	d03f      	beq.n	a28 <MIL_STD_1553B1_Handler+0x2e8>
     9a8:	4a22      	ldr	r2, [pc, #136]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     9aa:	4b24      	ldr	r3, [pc, #144]	; (a3c <MIL_STD_1553B1_Handler+0x2fc>)
     9ac:	58d3      	ldr	r3, [r2, r3]
     9ae:	2b01      	cmp	r3, #1
     9b0:	d13a      	bne.n	a28 <MIL_STD_1553B1_Handler+0x2e8>
     9b2:	4a20      	ldr	r2, [pc, #128]	; (a34 <MIL_STD_1553B1_Handler+0x2f4>)
     9b4:	4b27      	ldr	r3, [pc, #156]	; (a54 <MIL_STD_1553B1_Handler+0x314>)
     9b6:	58d3      	ldr	r3, [r2, r3]
     9b8:	221f      	movs	r2, #31
     9ba:	4013      	ands	r3, r2
     9bc:	60bb      	str	r3, [r7, #8]
     9be:	1dbb      	adds	r3, r7, #6
     9c0:	2200      	movs	r2, #0
     9c2:	801a      	strh	r2, [r3, #0]
     9c4:	4b24      	ldr	r3, [pc, #144]	; (a58 <MIL_STD_1553B1_Handler+0x318>)
     9c6:	603b      	str	r3, [r7, #0]
     9c8:	4b24      	ldr	r3, [pc, #144]	; (a5c <MIL_STD_1553B1_Handler+0x31c>)
     9ca:	681b      	ldr	r3, [r3, #0]
     9cc:	2b00      	cmp	r3, #0
     9ce:	d12b      	bne.n	a28 <MIL_STD_1553B1_Handler+0x2e8>
     9d0:	68bb      	ldr	r3, [r7, #8]
     9d2:	2b20      	cmp	r3, #32
     9d4:	d828      	bhi.n	a28 <MIL_STD_1553B1_Handler+0x2e8>
     9d6:	2300      	movs	r3, #0
     9d8:	617b      	str	r3, [r7, #20]
     9da:	e00c      	b.n	9f6 <MIL_STD_1553B1_Handler+0x2b6>
     9dc:	697b      	ldr	r3, [r7, #20]
     9de:	005b      	lsls	r3, r3, #1
     9e0:	683a      	ldr	r2, [r7, #0]
     9e2:	18d2      	adds	r2, r2, r3
     9e4:	693b      	ldr	r3, [r7, #16]
     9e6:	1d19      	adds	r1, r3, #4
     9e8:	6139      	str	r1, [r7, #16]
     9ea:	681b      	ldr	r3, [r3, #0]
     9ec:	b29b      	uxth	r3, r3
     9ee:	8013      	strh	r3, [r2, #0]
     9f0:	697b      	ldr	r3, [r7, #20]
     9f2:	3301      	adds	r3, #1
     9f4:	617b      	str	r3, [r7, #20]
     9f6:	697a      	ldr	r2, [r7, #20]
     9f8:	68bb      	ldr	r3, [r7, #8]
     9fa:	429a      	cmp	r2, r3
     9fc:	d3ee      	bcc.n	9dc <MIL_STD_1553B1_Handler+0x29c>
     9fe:	68bb      	ldr	r3, [r7, #8]
     a00:	1e5a      	subs	r2, r3, #1
     a02:	1dbc      	adds	r4, r7, #6
     a04:	683b      	ldr	r3, [r7, #0]
     a06:	0011      	movs	r1, r2
     a08:	0018      	movs	r0, r3
     a0a:	f7ff fb75 	bl	f8 <get_checksum>
     a0e:	0003      	movs	r3, r0
     a10:	8023      	strh	r3, [r4, #0]
     a12:	4b11      	ldr	r3, [pc, #68]	; (a58 <MIL_STD_1553B1_Handler+0x318>)
     a14:	891b      	ldrh	r3, [r3, #8]
     a16:	1dba      	adds	r2, r7, #6
     a18:	8812      	ldrh	r2, [r2, #0]
     a1a:	1ad3      	subs	r3, r2, r3
     a1c:	425a      	negs	r2, r3
     a1e:	4153      	adcs	r3, r2
     a20:	b2db      	uxtb	r3, r3
     a22:	001a      	movs	r2, r3
     a24:	4b0d      	ldr	r3, [pc, #52]	; (a5c <MIL_STD_1553B1_Handler+0x31c>)
     a26:	601a      	str	r2, [r3, #0]
     a28:	46c0      	nop			; (mov r8, r8)
     a2a:	46bd      	mov	sp, r7
     a2c:	b007      	add	sp, #28
     a2e:	bd90      	pop	{r4, r7, pc}
     a30:	40048080 	.word	0x40048080
     a34:	40048000 	.word	0x40048000
     a38:	00001004 	.word	0x00001004
     a3c:	00001024 	.word	0x00001024
     a40:	00000402 	.word	0x00000402
     a44:	400c0000 	.word	0x400c0000
     a48:	0000ffff 	.word	0x0000ffff
     a4c:	200000d8 	.word	0x200000d8
     a50:	200000d0 	.word	0x200000d0
     a54:	0000100c 	.word	0x0000100c
     a58:	200000c4 	.word	0x200000c4
     a5c:	200000e8 	.word	0x200000e8

00000a60 <handler_reset>:
     a60:	b580      	push	{r7, lr}
     a62:	b082      	sub	sp, #8
     a64:	af00      	add	r7, sp, #0
     a66:	4b11      	ldr	r3, [pc, #68]	; (aac <handler_reset+0x4c>)
     a68:	607b      	str	r3, [r7, #4]
     a6a:	4b11      	ldr	r3, [pc, #68]	; (ab0 <handler_reset+0x50>)
     a6c:	603b      	str	r3, [r7, #0]
     a6e:	e007      	b.n	a80 <handler_reset+0x20>
     a70:	683b      	ldr	r3, [r7, #0]
     a72:	1d1a      	adds	r2, r3, #4
     a74:	603a      	str	r2, [r7, #0]
     a76:	687a      	ldr	r2, [r7, #4]
     a78:	1d11      	adds	r1, r2, #4
     a7a:	6079      	str	r1, [r7, #4]
     a7c:	6812      	ldr	r2, [r2, #0]
     a7e:	601a      	str	r2, [r3, #0]
     a80:	683a      	ldr	r2, [r7, #0]
     a82:	4b0c      	ldr	r3, [pc, #48]	; (ab4 <handler_reset+0x54>)
     a84:	429a      	cmp	r2, r3
     a86:	d3f3      	bcc.n	a70 <handler_reset+0x10>
     a88:	4b0b      	ldr	r3, [pc, #44]	; (ab8 <handler_reset+0x58>)
     a8a:	603b      	str	r3, [r7, #0]
     a8c:	e004      	b.n	a98 <handler_reset+0x38>
     a8e:	683b      	ldr	r3, [r7, #0]
     a90:	1d1a      	adds	r2, r3, #4
     a92:	603a      	str	r2, [r7, #0]
     a94:	2200      	movs	r2, #0
     a96:	601a      	str	r2, [r3, #0]
     a98:	683a      	ldr	r2, [r7, #0]
     a9a:	4b08      	ldr	r3, [pc, #32]	; (abc <handler_reset+0x5c>)
     a9c:	429a      	cmp	r2, r3
     a9e:	d3f6      	bcc.n	a8e <handler_reset+0x2e>
     aa0:	f7ff fc24 	bl	2ec <main>
     aa4:	46c0      	nop			; (mov r8, r8)
     aa6:	46bd      	mov	sp, r7
     aa8:	b002      	add	sp, #8
     aaa:	bd80      	pop	{r7, pc}
     aac:	000018b8 	.word	0x000018b8
     ab0:	20000000 	.word	0x20000000
     ab4:	20000044 	.word	0x20000044
     ab8:	20000044 	.word	0x20000044
     abc:	2000050c 	.word	0x2000050c

00000ac0 <default_handler>:
     ac0:	b580      	push	{r7, lr}
     ac2:	af00      	add	r7, sp, #0
     ac4:	e7fe      	b.n	ac4 <default_handler+0x4>
     ac6:	46c0      	nop			; (mov r8, r8)

00000ac8 <NVIC_EnableIRQ>:
     ac8:	b580      	push	{r7, lr}
     aca:	b082      	sub	sp, #8
     acc:	af00      	add	r7, sp, #0
     ace:	0002      	movs	r2, r0
     ad0:	1dfb      	adds	r3, r7, #7
     ad2:	701a      	strb	r2, [r3, #0]
     ad4:	4909      	ldr	r1, [pc, #36]	; (afc <NVIC_EnableIRQ+0x34>)
     ad6:	1dfb      	adds	r3, r7, #7
     ad8:	781b      	ldrb	r3, [r3, #0]
     ada:	b25b      	sxtb	r3, r3
     adc:	095b      	lsrs	r3, r3, #5
     ade:	1dfa      	adds	r2, r7, #7
     ae0:	7812      	ldrb	r2, [r2, #0]
     ae2:	0010      	movs	r0, r2
     ae4:	221f      	movs	r2, #31
     ae6:	4002      	ands	r2, r0
     ae8:	2001      	movs	r0, #1
     aea:	4090      	lsls	r0, r2
     aec:	0002      	movs	r2, r0
     aee:	009b      	lsls	r3, r3, #2
     af0:	505a      	str	r2, [r3, r1]
     af2:	46c0      	nop			; (mov r8, r8)
     af4:	46bd      	mov	sp, r7
     af6:	b002      	add	sp, #8
     af8:	bd80      	pop	{r7, pc}
     afa:	46c0      	nop			; (mov r8, r8)
     afc:	e000e100 	.word	0xe000e100

00000b00 <NVIC_DisableIRQ>:
     b00:	b580      	push	{r7, lr}
     b02:	b082      	sub	sp, #8
     b04:	af00      	add	r7, sp, #0
     b06:	0002      	movs	r2, r0
     b08:	1dfb      	adds	r3, r7, #7
     b0a:	701a      	strb	r2, [r3, #0]
     b0c:	4909      	ldr	r1, [pc, #36]	; (b34 <NVIC_DisableIRQ+0x34>)
     b0e:	1dfb      	adds	r3, r7, #7
     b10:	781b      	ldrb	r3, [r3, #0]
     b12:	b25b      	sxtb	r3, r3
     b14:	095b      	lsrs	r3, r3, #5
     b16:	1dfa      	adds	r2, r7, #7
     b18:	7812      	ldrb	r2, [r2, #0]
     b1a:	0010      	movs	r0, r2
     b1c:	221f      	movs	r2, #31
     b1e:	4002      	ands	r2, r0
     b20:	2001      	movs	r0, #1
     b22:	4090      	lsls	r0, r2
     b24:	0002      	movs	r2, r0
     b26:	3320      	adds	r3, #32
     b28:	009b      	lsls	r3, r3, #2
     b2a:	505a      	str	r2, [r3, r1]
     b2c:	46c0      	nop			; (mov r8, r8)
     b2e:	46bd      	mov	sp, r7
     b30:	b002      	add	sp, #8
     b32:	bd80      	pop	{r7, pc}
     b34:	e000e100 	.word	0xe000e100

00000b38 <uart_init>:
     b38:	b580      	push	{r7, lr}
     b3a:	af00      	add	r7, sp, #0
     b3c:	4b1b      	ldr	r3, [pc, #108]	; (bac <uart_init+0x74>)
     b3e:	4a1b      	ldr	r2, [pc, #108]	; (bac <uart_init+0x74>)
     b40:	69d2      	ldr	r2, [r2, #28]
     b42:	2140      	movs	r1, #64	; 0x40
     b44:	430a      	orrs	r2, r1
     b46:	61da      	str	r2, [r3, #28]
     b48:	4b18      	ldr	r3, [pc, #96]	; (bac <uart_init+0x74>)
     b4a:	4a18      	ldr	r2, [pc, #96]	; (bac <uart_init+0x74>)
     b4c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b4e:	2180      	movs	r1, #128	; 0x80
     b50:	0449      	lsls	r1, r1, #17
     b52:	430a      	orrs	r2, r1
     b54:	629a      	str	r2, [r3, #40]	; 0x28
     b56:	4b16      	ldr	r3, [pc, #88]	; (bb0 <uart_init+0x78>)
     b58:	2206      	movs	r2, #6
     b5a:	625a      	str	r2, [r3, #36]	; 0x24
     b5c:	4b14      	ldr	r3, [pc, #80]	; (bb0 <uart_init+0x78>)
     b5e:	2200      	movs	r2, #0
     b60:	629a      	str	r2, [r3, #40]	; 0x28
     b62:	4b13      	ldr	r3, [pc, #76]	; (bb0 <uart_init+0x78>)
     b64:	4a12      	ldr	r2, [pc, #72]	; (bb0 <uart_init+0x78>)
     b66:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b68:	213f      	movs	r1, #63	; 0x3f
     b6a:	438a      	bics	r2, r1
     b6c:	635a      	str	r2, [r3, #52]	; 0x34
     b6e:	4b10      	ldr	r3, [pc, #64]	; (bb0 <uart_init+0x78>)
     b70:	4a0f      	ldr	r2, [pc, #60]	; (bb0 <uart_init+0x78>)
     b72:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b74:	2124      	movs	r1, #36	; 0x24
     b76:	430a      	orrs	r2, r1
     b78:	635a      	str	r2, [r3, #52]	; 0x34
     b7a:	4b0d      	ldr	r3, [pc, #52]	; (bb0 <uart_init+0x78>)
     b7c:	4a0c      	ldr	r2, [pc, #48]	; (bb0 <uart_init+0x78>)
     b7e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     b80:	2160      	movs	r1, #96	; 0x60
     b82:	430a      	orrs	r2, r1
     b84:	62da      	str	r2, [r3, #44]	; 0x2c
     b86:	4b0a      	ldr	r3, [pc, #40]	; (bb0 <uart_init+0x78>)
     b88:	4a09      	ldr	r2, [pc, #36]	; (bb0 <uart_init+0x78>)
     b8a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b8c:	4909      	ldr	r1, [pc, #36]	; (bb4 <uart_init+0x7c>)
     b8e:	430a      	orrs	r2, r1
     b90:	631a      	str	r2, [r3, #48]	; 0x30
     b92:	4b07      	ldr	r3, [pc, #28]	; (bb0 <uart_init+0x78>)
     b94:	4a06      	ldr	r2, [pc, #24]	; (bb0 <uart_init+0x78>)
     b96:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b98:	2110      	movs	r1, #16
     b9a:	430a      	orrs	r2, r1
     b9c:	639a      	str	r2, [r3, #56]	; 0x38
     b9e:	2006      	movs	r0, #6
     ba0:	f7ff ff92 	bl	ac8 <NVIC_EnableIRQ>
     ba4:	46c0      	nop			; (mov r8, r8)
     ba6:	46bd      	mov	sp, r7
     ba8:	bd80      	pop	{r7, pc}
     baa:	46c0      	nop			; (mov r8, r8)
     bac:	40020000 	.word	0x40020000
     bb0:	40030000 	.word	0x40030000
     bb4:	00000301 	.word	0x00000301

00000bb8 <uart_read>:
     bb8:	b580      	push	{r7, lr}
     bba:	b084      	sub	sp, #16
     bbc:	af00      	add	r7, sp, #0
     bbe:	6078      	str	r0, [r7, #4]
     bc0:	6039      	str	r1, [r7, #0]
     bc2:	4b18      	ldr	r3, [pc, #96]	; (c24 <uart_read+0x6c>)
     bc4:	681a      	ldr	r2, [r3, #0]
     bc6:	4b18      	ldr	r3, [pc, #96]	; (c28 <uart_read+0x70>)
     bc8:	681b      	ldr	r3, [r3, #0]
     bca:	429a      	cmp	r2, r3
     bcc:	d101      	bne.n	bd2 <uart_read+0x1a>
     bce:	2300      	movs	r3, #0
     bd0:	e023      	b.n	c1a <uart_read+0x62>
     bd2:	2300      	movs	r3, #0
     bd4:	60fb      	str	r3, [r7, #12]
     bd6:	e01b      	b.n	c10 <uart_read+0x58>
     bd8:	68fb      	ldr	r3, [r7, #12]
     bda:	687a      	ldr	r2, [r7, #4]
     bdc:	18d2      	adds	r2, r2, r3
     bde:	4b11      	ldr	r3, [pc, #68]	; (c24 <uart_read+0x6c>)
     be0:	681b      	ldr	r3, [r3, #0]
     be2:	4912      	ldr	r1, [pc, #72]	; (c2c <uart_read+0x74>)
     be4:	5ccb      	ldrb	r3, [r1, r3]
     be6:	7013      	strb	r3, [r2, #0]
     be8:	4b0e      	ldr	r3, [pc, #56]	; (c24 <uart_read+0x6c>)
     bea:	681b      	ldr	r3, [r3, #0]
     bec:	3301      	adds	r3, #1
     bee:	05db      	lsls	r3, r3, #23
     bf0:	0dda      	lsrs	r2, r3, #23
     bf2:	4b0c      	ldr	r3, [pc, #48]	; (c24 <uart_read+0x6c>)
     bf4:	601a      	str	r2, [r3, #0]
     bf6:	4b0b      	ldr	r3, [pc, #44]	; (c24 <uart_read+0x6c>)
     bf8:	681a      	ldr	r2, [r3, #0]
     bfa:	4b0b      	ldr	r3, [pc, #44]	; (c28 <uart_read+0x70>)
     bfc:	681b      	ldr	r3, [r3, #0]
     bfe:	429a      	cmp	r2, r3
     c00:	d103      	bne.n	c0a <uart_read+0x52>
     c02:	68fb      	ldr	r3, [r7, #12]
     c04:	3301      	adds	r3, #1
     c06:	60fb      	str	r3, [r7, #12]
     c08:	e006      	b.n	c18 <uart_read+0x60>
     c0a:	68fb      	ldr	r3, [r7, #12]
     c0c:	3301      	adds	r3, #1
     c0e:	60fb      	str	r3, [r7, #12]
     c10:	68fa      	ldr	r2, [r7, #12]
     c12:	683b      	ldr	r3, [r7, #0]
     c14:	429a      	cmp	r2, r3
     c16:	dbdf      	blt.n	bd8 <uart_read+0x20>
     c18:	68fb      	ldr	r3, [r7, #12]
     c1a:	0018      	movs	r0, r3
     c1c:	46bd      	mov	sp, r7
     c1e:	b004      	add	sp, #16
     c20:	bd80      	pop	{r7, pc}
     c22:	46c0      	nop			; (mov r8, r8)
     c24:	200004fc 	.word	0x200004fc
     c28:	200004f8 	.word	0x200004f8
     c2c:	200002f8 	.word	0x200002f8

00000c30 <uart_send>:
     c30:	b580      	push	{r7, lr}
     c32:	b084      	sub	sp, #16
     c34:	af00      	add	r7, sp, #0
     c36:	6078      	str	r0, [r7, #4]
     c38:	6039      	str	r1, [r7, #0]
     c3a:	2006      	movs	r0, #6
     c3c:	f7ff ff60 	bl	b00 <NVIC_DisableIRQ>
     c40:	2300      	movs	r3, #0
     c42:	60fb      	str	r3, [r7, #12]
     c44:	e01b      	b.n	c7e <uart_send+0x4e>
     c46:	4b20      	ldr	r3, [pc, #128]	; (cc8 <uart_send+0x98>)
     c48:	681b      	ldr	r3, [r3, #0]
     c4a:	68fa      	ldr	r2, [r7, #12]
     c4c:	6879      	ldr	r1, [r7, #4]
     c4e:	188a      	adds	r2, r1, r2
     c50:	7811      	ldrb	r1, [r2, #0]
     c52:	4a1e      	ldr	r2, [pc, #120]	; (ccc <uart_send+0x9c>)
     c54:	54d1      	strb	r1, [r2, r3]
     c56:	4b1c      	ldr	r3, [pc, #112]	; (cc8 <uart_send+0x98>)
     c58:	681b      	ldr	r3, [r3, #0]
     c5a:	3301      	adds	r3, #1
     c5c:	05db      	lsls	r3, r3, #23
     c5e:	0dda      	lsrs	r2, r3, #23
     c60:	4b19      	ldr	r3, [pc, #100]	; (cc8 <uart_send+0x98>)
     c62:	601a      	str	r2, [r3, #0]
     c64:	4b18      	ldr	r3, [pc, #96]	; (cc8 <uart_send+0x98>)
     c66:	681a      	ldr	r2, [r3, #0]
     c68:	4b19      	ldr	r3, [pc, #100]	; (cd0 <uart_send+0xa0>)
     c6a:	681b      	ldr	r3, [r3, #0]
     c6c:	429a      	cmp	r2, r3
     c6e:	d103      	bne.n	c78 <uart_send+0x48>
     c70:	68fb      	ldr	r3, [r7, #12]
     c72:	3301      	adds	r3, #1
     c74:	60fb      	str	r3, [r7, #12]
     c76:	e006      	b.n	c86 <uart_send+0x56>
     c78:	68fb      	ldr	r3, [r7, #12]
     c7a:	3301      	adds	r3, #1
     c7c:	60fb      	str	r3, [r7, #12]
     c7e:	68fa      	ldr	r2, [r7, #12]
     c80:	683b      	ldr	r3, [r7, #0]
     c82:	429a      	cmp	r2, r3
     c84:	dbdf      	blt.n	c46 <uart_send+0x16>
     c86:	4b13      	ldr	r3, [pc, #76]	; (cd4 <uart_send+0xa4>)
     c88:	699b      	ldr	r3, [r3, #24]
     c8a:	2208      	movs	r2, #8
     c8c:	4013      	ands	r3, r2
     c8e:	d10c      	bne.n	caa <uart_send+0x7a>
     c90:	4a10      	ldr	r2, [pc, #64]	; (cd4 <uart_send+0xa4>)
     c92:	4b0f      	ldr	r3, [pc, #60]	; (cd0 <uart_send+0xa0>)
     c94:	681b      	ldr	r3, [r3, #0]
     c96:	490d      	ldr	r1, [pc, #52]	; (ccc <uart_send+0x9c>)
     c98:	5ccb      	ldrb	r3, [r1, r3]
     c9a:	6013      	str	r3, [r2, #0]
     c9c:	4b0c      	ldr	r3, [pc, #48]	; (cd0 <uart_send+0xa0>)
     c9e:	681b      	ldr	r3, [r3, #0]
     ca0:	3301      	adds	r3, #1
     ca2:	05db      	lsls	r3, r3, #23
     ca4:	0dda      	lsrs	r2, r3, #23
     ca6:	4b0a      	ldr	r3, [pc, #40]	; (cd0 <uart_send+0xa0>)
     ca8:	601a      	str	r2, [r3, #0]
     caa:	4b0a      	ldr	r3, [pc, #40]	; (cd4 <uart_send+0xa4>)
     cac:	4a09      	ldr	r2, [pc, #36]	; (cd4 <uart_send+0xa4>)
     cae:	6b92      	ldr	r2, [r2, #56]	; 0x38
     cb0:	2120      	movs	r1, #32
     cb2:	430a      	orrs	r2, r1
     cb4:	639a      	str	r2, [r3, #56]	; 0x38
     cb6:	2006      	movs	r0, #6
     cb8:	f7ff ff06 	bl	ac8 <NVIC_EnableIRQ>
     cbc:	68fb      	ldr	r3, [r7, #12]
     cbe:	0018      	movs	r0, r3
     cc0:	46bd      	mov	sp, r7
     cc2:	b004      	add	sp, #16
     cc4:	bd80      	pop	{r7, pc}
     cc6:	46c0      	nop			; (mov r8, r8)
     cc8:	200002f4 	.word	0x200002f4
     ccc:	200000f0 	.word	0x200000f0
     cd0:	200002f0 	.word	0x200002f0
     cd4:	40030000 	.word	0x40030000

00000cd8 <uart_putch>:
     cd8:	b580      	push	{r7, lr}
     cda:	b082      	sub	sp, #8
     cdc:	af00      	add	r7, sp, #0
     cde:	0002      	movs	r2, r0
     ce0:	1dfb      	adds	r3, r7, #7
     ce2:	701a      	strb	r2, [r3, #0]
     ce4:	46c0      	nop			; (mov r8, r8)
     ce6:	4b06      	ldr	r3, [pc, #24]	; (d00 <uart_putch+0x28>)
     ce8:	699b      	ldr	r3, [r3, #24]
     cea:	2220      	movs	r2, #32
     cec:	4013      	ands	r3, r2
     cee:	d1fa      	bne.n	ce6 <uart_putch+0xe>
     cf0:	4b03      	ldr	r3, [pc, #12]	; (d00 <uart_putch+0x28>)
     cf2:	1dfa      	adds	r2, r7, #7
     cf4:	7812      	ldrb	r2, [r2, #0]
     cf6:	601a      	str	r2, [r3, #0]
     cf8:	46c0      	nop			; (mov r8, r8)
     cfa:	46bd      	mov	sp, r7
     cfc:	b002      	add	sp, #8
     cfe:	bd80      	pop	{r7, pc}
     d00:	40030000 	.word	0x40030000

00000d04 <UART1_Handler>:
     d04:	b580      	push	{r7, lr}
     d06:	af00      	add	r7, sp, #0
     d08:	4b1a      	ldr	r3, [pc, #104]	; (d74 <UART1_Handler+0x70>)
     d0a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     d0c:	2220      	movs	r2, #32
     d0e:	4013      	ands	r3, r2
     d10:	d019      	beq.n	d46 <UART1_Handler+0x42>
     d12:	4b19      	ldr	r3, [pc, #100]	; (d78 <UART1_Handler+0x74>)
     d14:	681a      	ldr	r2, [r3, #0]
     d16:	4b19      	ldr	r3, [pc, #100]	; (d7c <UART1_Handler+0x78>)
     d18:	681b      	ldr	r3, [r3, #0]
     d1a:	429a      	cmp	r2, r3
     d1c:	d106      	bne.n	d2c <UART1_Handler+0x28>
     d1e:	4b15      	ldr	r3, [pc, #84]	; (d74 <UART1_Handler+0x70>)
     d20:	4a14      	ldr	r2, [pc, #80]	; (d74 <UART1_Handler+0x70>)
     d22:	6b92      	ldr	r2, [r2, #56]	; 0x38
     d24:	2120      	movs	r1, #32
     d26:	438a      	bics	r2, r1
     d28:	639a      	str	r2, [r3, #56]	; 0x38
     d2a:	e00c      	b.n	d46 <UART1_Handler+0x42>
     d2c:	4a11      	ldr	r2, [pc, #68]	; (d74 <UART1_Handler+0x70>)
     d2e:	4b12      	ldr	r3, [pc, #72]	; (d78 <UART1_Handler+0x74>)
     d30:	681b      	ldr	r3, [r3, #0]
     d32:	4913      	ldr	r1, [pc, #76]	; (d80 <UART1_Handler+0x7c>)
     d34:	5ccb      	ldrb	r3, [r1, r3]
     d36:	6013      	str	r3, [r2, #0]
     d38:	4b0f      	ldr	r3, [pc, #60]	; (d78 <UART1_Handler+0x74>)
     d3a:	681b      	ldr	r3, [r3, #0]
     d3c:	3301      	adds	r3, #1
     d3e:	05db      	lsls	r3, r3, #23
     d40:	0dda      	lsrs	r2, r3, #23
     d42:	4b0d      	ldr	r3, [pc, #52]	; (d78 <UART1_Handler+0x74>)
     d44:	601a      	str	r2, [r3, #0]
     d46:	4b0b      	ldr	r3, [pc, #44]	; (d74 <UART1_Handler+0x70>)
     d48:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     d4a:	2210      	movs	r2, #16
     d4c:	4013      	ands	r3, r2
     d4e:	d00d      	beq.n	d6c <UART1_Handler+0x68>
     d50:	4b0c      	ldr	r3, [pc, #48]	; (d84 <UART1_Handler+0x80>)
     d52:	681a      	ldr	r2, [r3, #0]
     d54:	4b07      	ldr	r3, [pc, #28]	; (d74 <UART1_Handler+0x70>)
     d56:	681b      	ldr	r3, [r3, #0]
     d58:	b2d9      	uxtb	r1, r3
     d5a:	4b0b      	ldr	r3, [pc, #44]	; (d88 <UART1_Handler+0x84>)
     d5c:	5499      	strb	r1, [r3, r2]
     d5e:	4b09      	ldr	r3, [pc, #36]	; (d84 <UART1_Handler+0x80>)
     d60:	681b      	ldr	r3, [r3, #0]
     d62:	3301      	adds	r3, #1
     d64:	05db      	lsls	r3, r3, #23
     d66:	0dda      	lsrs	r2, r3, #23
     d68:	4b06      	ldr	r3, [pc, #24]	; (d84 <UART1_Handler+0x80>)
     d6a:	601a      	str	r2, [r3, #0]
     d6c:	46c0      	nop			; (mov r8, r8)
     d6e:	46bd      	mov	sp, r7
     d70:	bd80      	pop	{r7, pc}
     d72:	46c0      	nop			; (mov r8, r8)
     d74:	40030000 	.word	0x40030000
     d78:	200002f0 	.word	0x200002f0
     d7c:	200002f4 	.word	0x200002f4
     d80:	200000f0 	.word	0x200000f0
     d84:	200004f8 	.word	0x200004f8
     d88:	200002f8 	.word	0x200002f8

00000d8c <xputc>:
     d8c:	b580      	push	{r7, lr}
     d8e:	b082      	sub	sp, #8
     d90:	af00      	add	r7, sp, #0
     d92:	0002      	movs	r2, r0
     d94:	1dfb      	adds	r3, r7, #7
     d96:	701a      	strb	r2, [r3, #0]
     d98:	1dfb      	adds	r3, r7, #7
     d9a:	781b      	ldrb	r3, [r3, #0]
     d9c:	2b0a      	cmp	r3, #10
     d9e:	d102      	bne.n	da6 <xputc+0x1a>
     da0:	200d      	movs	r0, #13
     da2:	f7ff fff3 	bl	d8c <xputc>
     da6:	4b0d      	ldr	r3, [pc, #52]	; (ddc <xputc+0x50>)
     da8:	681b      	ldr	r3, [r3, #0]
     daa:	2b00      	cmp	r3, #0
     dac:	d008      	beq.n	dc0 <xputc+0x34>
     dae:	4b0b      	ldr	r3, [pc, #44]	; (ddc <xputc+0x50>)
     db0:	681b      	ldr	r3, [r3, #0]
     db2:	1c59      	adds	r1, r3, #1
     db4:	4a09      	ldr	r2, [pc, #36]	; (ddc <xputc+0x50>)
     db6:	6011      	str	r1, [r2, #0]
     db8:	1dfa      	adds	r2, r7, #7
     dba:	7812      	ldrb	r2, [r2, #0]
     dbc:	701a      	strb	r2, [r3, #0]
     dbe:	e009      	b.n	dd4 <xputc+0x48>
     dc0:	4b07      	ldr	r3, [pc, #28]	; (de0 <xputc+0x54>)
     dc2:	681b      	ldr	r3, [r3, #0]
     dc4:	2b00      	cmp	r3, #0
     dc6:	d005      	beq.n	dd4 <xputc+0x48>
     dc8:	4b05      	ldr	r3, [pc, #20]	; (de0 <xputc+0x54>)
     dca:	681b      	ldr	r3, [r3, #0]
     dcc:	1dfa      	adds	r2, r7, #7
     dce:	7812      	ldrb	r2, [r2, #0]
     dd0:	0010      	movs	r0, r2
     dd2:	4798      	blx	r3
     dd4:	46bd      	mov	sp, r7
     dd6:	b002      	add	sp, #8
     dd8:	bd80      	pop	{r7, pc}
     dda:	46c0      	nop			; (mov r8, r8)
     ddc:	20000504 	.word	0x20000504
     de0:	20000500 	.word	0x20000500

00000de4 <xputs>:
     de4:	b580      	push	{r7, lr}
     de6:	b082      	sub	sp, #8
     de8:	af00      	add	r7, sp, #0
     dea:	6078      	str	r0, [r7, #4]
     dec:	e006      	b.n	dfc <xputs+0x18>
     dee:	687b      	ldr	r3, [r7, #4]
     df0:	1c5a      	adds	r2, r3, #1
     df2:	607a      	str	r2, [r7, #4]
     df4:	781b      	ldrb	r3, [r3, #0]
     df6:	0018      	movs	r0, r3
     df8:	f7ff ffc8 	bl	d8c <xputc>
     dfc:	687b      	ldr	r3, [r7, #4]
     dfe:	781b      	ldrb	r3, [r3, #0]
     e00:	2b00      	cmp	r3, #0
     e02:	d1f4      	bne.n	dee <xputs+0xa>
     e04:	46c0      	nop			; (mov r8, r8)
     e06:	46bd      	mov	sp, r7
     e08:	b002      	add	sp, #8
     e0a:	bd80      	pop	{r7, pc}

00000e0c <xfputs>:
     e0c:	b580      	push	{r7, lr}
     e0e:	b084      	sub	sp, #16
     e10:	af00      	add	r7, sp, #0
     e12:	6078      	str	r0, [r7, #4]
     e14:	6039      	str	r1, [r7, #0]
     e16:	4b0c      	ldr	r3, [pc, #48]	; (e48 <xfputs+0x3c>)
     e18:	681b      	ldr	r3, [r3, #0]
     e1a:	60fb      	str	r3, [r7, #12]
     e1c:	4b0a      	ldr	r3, [pc, #40]	; (e48 <xfputs+0x3c>)
     e1e:	687a      	ldr	r2, [r7, #4]
     e20:	601a      	str	r2, [r3, #0]
     e22:	e006      	b.n	e32 <xfputs+0x26>
     e24:	683b      	ldr	r3, [r7, #0]
     e26:	1c5a      	adds	r2, r3, #1
     e28:	603a      	str	r2, [r7, #0]
     e2a:	781b      	ldrb	r3, [r3, #0]
     e2c:	0018      	movs	r0, r3
     e2e:	f7ff ffad 	bl	d8c <xputc>
     e32:	683b      	ldr	r3, [r7, #0]
     e34:	781b      	ldrb	r3, [r3, #0]
     e36:	2b00      	cmp	r3, #0
     e38:	d1f4      	bne.n	e24 <xfputs+0x18>
     e3a:	4b03      	ldr	r3, [pc, #12]	; (e48 <xfputs+0x3c>)
     e3c:	68fa      	ldr	r2, [r7, #12]
     e3e:	601a      	str	r2, [r3, #0]
     e40:	46c0      	nop			; (mov r8, r8)
     e42:	46bd      	mov	sp, r7
     e44:	b004      	add	sp, #16
     e46:	bd80      	pop	{r7, pc}
     e48:	20000500 	.word	0x20000500

00000e4c <xvprintf>:
     e4c:	b580      	push	{r7, lr}
     e4e:	b08e      	sub	sp, #56	; 0x38
     e50:	af00      	add	r7, sp, #0
     e52:	6078      	str	r0, [r7, #4]
     e54:	6039      	str	r1, [r7, #0]
     e56:	687b      	ldr	r3, [r7, #4]
     e58:	1c5a      	adds	r2, r3, #1
     e5a:	607a      	str	r2, [r7, #4]
     e5c:	221f      	movs	r2, #31
     e5e:	18ba      	adds	r2, r7, r2
     e60:	781b      	ldrb	r3, [r3, #0]
     e62:	7013      	strb	r3, [r2, #0]
     e64:	231f      	movs	r3, #31
     e66:	18fb      	adds	r3, r7, r3
     e68:	781b      	ldrb	r3, [r3, #0]
     e6a:	2b00      	cmp	r3, #0
     e6c:	d100      	bne.n	e70 <xvprintf+0x24>
     e6e:	e172      	b.n	1156 <xvprintf+0x30a>
     e70:	231f      	movs	r3, #31
     e72:	18fb      	adds	r3, r7, r3
     e74:	781b      	ldrb	r3, [r3, #0]
     e76:	2b25      	cmp	r3, #37	; 0x25
     e78:	d006      	beq.n	e88 <xvprintf+0x3c>
     e7a:	231f      	movs	r3, #31
     e7c:	18fb      	adds	r3, r7, r3
     e7e:	781b      	ldrb	r3, [r3, #0]
     e80:	0018      	movs	r0, r3
     e82:	f7ff ff83 	bl	d8c <xputc>
     e86:	e165      	b.n	1154 <xvprintf+0x308>
     e88:	2300      	movs	r3, #0
     e8a:	627b      	str	r3, [r7, #36]	; 0x24
     e8c:	687b      	ldr	r3, [r7, #4]
     e8e:	1c5a      	adds	r2, r3, #1
     e90:	607a      	str	r2, [r7, #4]
     e92:	221f      	movs	r2, #31
     e94:	18ba      	adds	r2, r7, r2
     e96:	781b      	ldrb	r3, [r3, #0]
     e98:	7013      	strb	r3, [r2, #0]
     e9a:	231f      	movs	r3, #31
     e9c:	18fb      	adds	r3, r7, r3
     e9e:	781b      	ldrb	r3, [r3, #0]
     ea0:	2b30      	cmp	r3, #48	; 0x30
     ea2:	d109      	bne.n	eb8 <xvprintf+0x6c>
     ea4:	2301      	movs	r3, #1
     ea6:	627b      	str	r3, [r7, #36]	; 0x24
     ea8:	687b      	ldr	r3, [r7, #4]
     eaa:	1c5a      	adds	r2, r3, #1
     eac:	607a      	str	r2, [r7, #4]
     eae:	221f      	movs	r2, #31
     eb0:	18ba      	adds	r2, r7, r2
     eb2:	781b      	ldrb	r3, [r3, #0]
     eb4:	7013      	strb	r3, [r2, #0]
     eb6:	e00d      	b.n	ed4 <xvprintf+0x88>
     eb8:	231f      	movs	r3, #31
     eba:	18fb      	adds	r3, r7, r3
     ebc:	781b      	ldrb	r3, [r3, #0]
     ebe:	2b2d      	cmp	r3, #45	; 0x2d
     ec0:	d108      	bne.n	ed4 <xvprintf+0x88>
     ec2:	2302      	movs	r3, #2
     ec4:	627b      	str	r3, [r7, #36]	; 0x24
     ec6:	687b      	ldr	r3, [r7, #4]
     ec8:	1c5a      	adds	r2, r3, #1
     eca:	607a      	str	r2, [r7, #4]
     ecc:	221f      	movs	r2, #31
     ece:	18ba      	adds	r2, r7, r2
     ed0:	781b      	ldrb	r3, [r3, #0]
     ed2:	7013      	strb	r3, [r2, #0]
     ed4:	2300      	movs	r3, #0
     ed6:	62bb      	str	r3, [r7, #40]	; 0x28
     ed8:	e012      	b.n	f00 <xvprintf+0xb4>
     eda:	6aba      	ldr	r2, [r7, #40]	; 0x28
     edc:	0013      	movs	r3, r2
     ede:	009b      	lsls	r3, r3, #2
     ee0:	189b      	adds	r3, r3, r2
     ee2:	005b      	lsls	r3, r3, #1
     ee4:	001a      	movs	r2, r3
     ee6:	231f      	movs	r3, #31
     ee8:	18fb      	adds	r3, r7, r3
     eea:	781b      	ldrb	r3, [r3, #0]
     eec:	18d3      	adds	r3, r2, r3
     eee:	3b30      	subs	r3, #48	; 0x30
     ef0:	62bb      	str	r3, [r7, #40]	; 0x28
     ef2:	687b      	ldr	r3, [r7, #4]
     ef4:	1c5a      	adds	r2, r3, #1
     ef6:	607a      	str	r2, [r7, #4]
     ef8:	221f      	movs	r2, #31
     efa:	18ba      	adds	r2, r7, r2
     efc:	781b      	ldrb	r3, [r3, #0]
     efe:	7013      	strb	r3, [r2, #0]
     f00:	231f      	movs	r3, #31
     f02:	18fb      	adds	r3, r7, r3
     f04:	781b      	ldrb	r3, [r3, #0]
     f06:	2b2f      	cmp	r3, #47	; 0x2f
     f08:	d904      	bls.n	f14 <xvprintf+0xc8>
     f0a:	231f      	movs	r3, #31
     f0c:	18fb      	adds	r3, r7, r3
     f0e:	781b      	ldrb	r3, [r3, #0]
     f10:	2b39      	cmp	r3, #57	; 0x39
     f12:	d9e2      	bls.n	eda <xvprintf+0x8e>
     f14:	231f      	movs	r3, #31
     f16:	18fb      	adds	r3, r7, r3
     f18:	781b      	ldrb	r3, [r3, #0]
     f1a:	2b6c      	cmp	r3, #108	; 0x6c
     f1c:	d004      	beq.n	f28 <xvprintf+0xdc>
     f1e:	231f      	movs	r3, #31
     f20:	18fb      	adds	r3, r7, r3
     f22:	781b      	ldrb	r3, [r3, #0]
     f24:	2b4c      	cmp	r3, #76	; 0x4c
     f26:	d10a      	bne.n	f3e <xvprintf+0xf2>
     f28:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f2a:	2204      	movs	r2, #4
     f2c:	4313      	orrs	r3, r2
     f2e:	627b      	str	r3, [r7, #36]	; 0x24
     f30:	687b      	ldr	r3, [r7, #4]
     f32:	1c5a      	adds	r2, r3, #1
     f34:	607a      	str	r2, [r7, #4]
     f36:	221f      	movs	r2, #31
     f38:	18ba      	adds	r2, r7, r2
     f3a:	781b      	ldrb	r3, [r3, #0]
     f3c:	7013      	strb	r3, [r2, #0]
     f3e:	231f      	movs	r3, #31
     f40:	18fb      	adds	r3, r7, r3
     f42:	781b      	ldrb	r3, [r3, #0]
     f44:	2b00      	cmp	r3, #0
     f46:	d100      	bne.n	f4a <xvprintf+0xfe>
     f48:	e107      	b.n	115a <xvprintf+0x30e>
     f4a:	231e      	movs	r3, #30
     f4c:	18fb      	adds	r3, r7, r3
     f4e:	221f      	movs	r2, #31
     f50:	18ba      	adds	r2, r7, r2
     f52:	7812      	ldrb	r2, [r2, #0]
     f54:	701a      	strb	r2, [r3, #0]
     f56:	231e      	movs	r3, #30
     f58:	18fb      	adds	r3, r7, r3
     f5a:	781b      	ldrb	r3, [r3, #0]
     f5c:	2b60      	cmp	r3, #96	; 0x60
     f5e:	d906      	bls.n	f6e <xvprintf+0x122>
     f60:	231e      	movs	r3, #30
     f62:	18fb      	adds	r3, r7, r3
     f64:	221e      	movs	r2, #30
     f66:	18ba      	adds	r2, r7, r2
     f68:	7812      	ldrb	r2, [r2, #0]
     f6a:	3a20      	subs	r2, #32
     f6c:	701a      	strb	r2, [r3, #0]
     f6e:	231e      	movs	r3, #30
     f70:	18fb      	adds	r3, r7, r3
     f72:	781b      	ldrb	r3, [r3, #0]
     f74:	3b42      	subs	r3, #66	; 0x42
     f76:	2b16      	cmp	r3, #22
     f78:	d847      	bhi.n	100a <xvprintf+0x1be>
     f7a:	009a      	lsls	r2, r3, #2
     f7c:	4b79      	ldr	r3, [pc, #484]	; (1164 <xvprintf+0x318>)
     f7e:	18d3      	adds	r3, r2, r3
     f80:	681b      	ldr	r3, [r3, #0]
     f82:	469f      	mov	pc, r3
     f84:	683b      	ldr	r3, [r7, #0]
     f86:	1d1a      	adds	r2, r3, #4
     f88:	603a      	str	r2, [r7, #0]
     f8a:	681b      	ldr	r3, [r3, #0]
     f8c:	61bb      	str	r3, [r7, #24]
     f8e:	2300      	movs	r3, #0
     f90:	62fb      	str	r3, [r7, #44]	; 0x2c
     f92:	e002      	b.n	f9a <xvprintf+0x14e>
     f94:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f96:	3301      	adds	r3, #1
     f98:	62fb      	str	r3, [r7, #44]	; 0x2c
     f9a:	69ba      	ldr	r2, [r7, #24]
     f9c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f9e:	18d3      	adds	r3, r2, r3
     fa0:	781b      	ldrb	r3, [r3, #0]
     fa2:	2b00      	cmp	r3, #0
     fa4:	d1f6      	bne.n	f94 <xvprintf+0x148>
     fa6:	e002      	b.n	fae <xvprintf+0x162>
     fa8:	2020      	movs	r0, #32
     faa:	f7ff feef 	bl	d8c <xputc>
     fae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fb0:	2202      	movs	r2, #2
     fb2:	4013      	ands	r3, r2
     fb4:	d105      	bne.n	fc2 <xvprintf+0x176>
     fb6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     fb8:	1c5a      	adds	r2, r3, #1
     fba:	62fa      	str	r2, [r7, #44]	; 0x2c
     fbc:	6aba      	ldr	r2, [r7, #40]	; 0x28
     fbe:	4293      	cmp	r3, r2
     fc0:	d3f2      	bcc.n	fa8 <xvprintf+0x15c>
     fc2:	69bb      	ldr	r3, [r7, #24]
     fc4:	0018      	movs	r0, r3
     fc6:	f7ff ff0d 	bl	de4 <xputs>
     fca:	e002      	b.n	fd2 <xvprintf+0x186>
     fcc:	2020      	movs	r0, #32
     fce:	f7ff fedd 	bl	d8c <xputc>
     fd2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     fd4:	1c5a      	adds	r2, r3, #1
     fd6:	62fa      	str	r2, [r7, #44]	; 0x2c
     fd8:	6aba      	ldr	r2, [r7, #40]	; 0x28
     fda:	4293      	cmp	r3, r2
     fdc:	d3f6      	bcc.n	fcc <xvprintf+0x180>
     fde:	e0b9      	b.n	1154 <xvprintf+0x308>
     fe0:	683b      	ldr	r3, [r7, #0]
     fe2:	1d1a      	adds	r2, r3, #4
     fe4:	603a      	str	r2, [r7, #0]
     fe6:	681b      	ldr	r3, [r3, #0]
     fe8:	b2db      	uxtb	r3, r3
     fea:	0018      	movs	r0, r3
     fec:	f7ff fece 	bl	d8c <xputc>
     ff0:	e0b0      	b.n	1154 <xvprintf+0x308>
     ff2:	2302      	movs	r3, #2
     ff4:	637b      	str	r3, [r7, #52]	; 0x34
     ff6:	e00f      	b.n	1018 <xvprintf+0x1cc>
     ff8:	2308      	movs	r3, #8
     ffa:	637b      	str	r3, [r7, #52]	; 0x34
     ffc:	e00c      	b.n	1018 <xvprintf+0x1cc>
     ffe:	230a      	movs	r3, #10
    1000:	637b      	str	r3, [r7, #52]	; 0x34
    1002:	e009      	b.n	1018 <xvprintf+0x1cc>
    1004:	2310      	movs	r3, #16
    1006:	637b      	str	r3, [r7, #52]	; 0x34
    1008:	e006      	b.n	1018 <xvprintf+0x1cc>
    100a:	231f      	movs	r3, #31
    100c:	18fb      	adds	r3, r7, r3
    100e:	781b      	ldrb	r3, [r3, #0]
    1010:	0018      	movs	r0, r3
    1012:	f7ff febb 	bl	d8c <xputc>
    1016:	e09d      	b.n	1154 <xvprintf+0x308>
    1018:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    101a:	2204      	movs	r2, #4
    101c:	4013      	ands	r3, r2
    101e:	d004      	beq.n	102a <xvprintf+0x1de>
    1020:	683b      	ldr	r3, [r7, #0]
    1022:	1d1a      	adds	r2, r3, #4
    1024:	603a      	str	r2, [r7, #0]
    1026:	681b      	ldr	r3, [r3, #0]
    1028:	e00d      	b.n	1046 <xvprintf+0x1fa>
    102a:	231e      	movs	r3, #30
    102c:	18fb      	adds	r3, r7, r3
    102e:	781b      	ldrb	r3, [r3, #0]
    1030:	2b44      	cmp	r3, #68	; 0x44
    1032:	d104      	bne.n	103e <xvprintf+0x1f2>
    1034:	683b      	ldr	r3, [r7, #0]
    1036:	1d1a      	adds	r2, r3, #4
    1038:	603a      	str	r2, [r7, #0]
    103a:	681b      	ldr	r3, [r3, #0]
    103c:	e003      	b.n	1046 <xvprintf+0x1fa>
    103e:	683b      	ldr	r3, [r7, #0]
    1040:	1d1a      	adds	r2, r3, #4
    1042:	603a      	str	r2, [r7, #0]
    1044:	681b      	ldr	r3, [r3, #0]
    1046:	623b      	str	r3, [r7, #32]
    1048:	231e      	movs	r3, #30
    104a:	18fb      	adds	r3, r7, r3
    104c:	781b      	ldrb	r3, [r3, #0]
    104e:	2b44      	cmp	r3, #68	; 0x44
    1050:	d109      	bne.n	1066 <xvprintf+0x21a>
    1052:	6a3b      	ldr	r3, [r7, #32]
    1054:	2b00      	cmp	r3, #0
    1056:	da06      	bge.n	1066 <xvprintf+0x21a>
    1058:	6a3b      	ldr	r3, [r7, #32]
    105a:	425b      	negs	r3, r3
    105c:	623b      	str	r3, [r7, #32]
    105e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1060:	2208      	movs	r2, #8
    1062:	4313      	orrs	r3, r2
    1064:	627b      	str	r3, [r7, #36]	; 0x24
    1066:	2300      	movs	r3, #0
    1068:	633b      	str	r3, [r7, #48]	; 0x30
    106a:	6a3b      	ldr	r3, [r7, #32]
    106c:	6b79      	ldr	r1, [r7, #52]	; 0x34
    106e:	0018      	movs	r0, r3
    1070:	f000 fbd6 	bl	1820 <__aeabi_uidivmod>
    1074:	000b      	movs	r3, r1
    1076:	001a      	movs	r2, r3
    1078:	231e      	movs	r3, #30
    107a:	18fb      	adds	r3, r7, r3
    107c:	701a      	strb	r2, [r3, #0]
    107e:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1080:	6a38      	ldr	r0, [r7, #32]
    1082:	f000 fb47 	bl	1714 <__aeabi_uidiv>
    1086:	0003      	movs	r3, r0
    1088:	623b      	str	r3, [r7, #32]
    108a:	231e      	movs	r3, #30
    108c:	18fb      	adds	r3, r7, r3
    108e:	781b      	ldrb	r3, [r3, #0]
    1090:	2b09      	cmp	r3, #9
    1092:	d90e      	bls.n	10b2 <xvprintf+0x266>
    1094:	231f      	movs	r3, #31
    1096:	18fb      	adds	r3, r7, r3
    1098:	781b      	ldrb	r3, [r3, #0]
    109a:	2b78      	cmp	r3, #120	; 0x78
    109c:	d101      	bne.n	10a2 <xvprintf+0x256>
    109e:	2327      	movs	r3, #39	; 0x27
    10a0:	e000      	b.n	10a4 <xvprintf+0x258>
    10a2:	2307      	movs	r3, #7
    10a4:	221e      	movs	r2, #30
    10a6:	18ba      	adds	r2, r7, r2
    10a8:	211e      	movs	r1, #30
    10aa:	1879      	adds	r1, r7, r1
    10ac:	7809      	ldrb	r1, [r1, #0]
    10ae:	185b      	adds	r3, r3, r1
    10b0:	7013      	strb	r3, [r2, #0]
    10b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10b4:	1c5a      	adds	r2, r3, #1
    10b6:	633a      	str	r2, [r7, #48]	; 0x30
    10b8:	221e      	movs	r2, #30
    10ba:	18ba      	adds	r2, r7, r2
    10bc:	7812      	ldrb	r2, [r2, #0]
    10be:	3230      	adds	r2, #48	; 0x30
    10c0:	b2d1      	uxtb	r1, r2
    10c2:	2208      	movs	r2, #8
    10c4:	18ba      	adds	r2, r7, r2
    10c6:	54d1      	strb	r1, [r2, r3]
    10c8:	6a3b      	ldr	r3, [r7, #32]
    10ca:	2b00      	cmp	r3, #0
    10cc:	d002      	beq.n	10d4 <xvprintf+0x288>
    10ce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10d0:	2b0f      	cmp	r3, #15
    10d2:	d9ca      	bls.n	106a <xvprintf+0x21e>
    10d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10d6:	2208      	movs	r2, #8
    10d8:	4013      	ands	r3, r2
    10da:	d006      	beq.n	10ea <xvprintf+0x29e>
    10dc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10de:	1c5a      	adds	r2, r3, #1
    10e0:	633a      	str	r2, [r7, #48]	; 0x30
    10e2:	2208      	movs	r2, #8
    10e4:	18ba      	adds	r2, r7, r2
    10e6:	212d      	movs	r1, #45	; 0x2d
    10e8:	54d1      	strb	r1, [r2, r3]
    10ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10ec:	62fb      	str	r3, [r7, #44]	; 0x2c
    10ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10f0:	2201      	movs	r2, #1
    10f2:	4013      	ands	r3, r2
    10f4:	d001      	beq.n	10fa <xvprintf+0x2ae>
    10f6:	2230      	movs	r2, #48	; 0x30
    10f8:	e000      	b.n	10fc <xvprintf+0x2b0>
    10fa:	2220      	movs	r2, #32
    10fc:	231e      	movs	r3, #30
    10fe:	18fb      	adds	r3, r7, r3
    1100:	701a      	strb	r2, [r3, #0]
    1102:	e005      	b.n	1110 <xvprintf+0x2c4>
    1104:	231e      	movs	r3, #30
    1106:	18fb      	adds	r3, r7, r3
    1108:	781b      	ldrb	r3, [r3, #0]
    110a:	0018      	movs	r0, r3
    110c:	f7ff fe3e 	bl	d8c <xputc>
    1110:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1112:	2202      	movs	r2, #2
    1114:	4013      	ands	r3, r2
    1116:	d105      	bne.n	1124 <xvprintf+0x2d8>
    1118:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    111a:	1c5a      	adds	r2, r3, #1
    111c:	62fa      	str	r2, [r7, #44]	; 0x2c
    111e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1120:	4293      	cmp	r3, r2
    1122:	d3ef      	bcc.n	1104 <xvprintf+0x2b8>
    1124:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1126:	3b01      	subs	r3, #1
    1128:	633b      	str	r3, [r7, #48]	; 0x30
    112a:	2308      	movs	r3, #8
    112c:	18fa      	adds	r2, r7, r3
    112e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1130:	18d3      	adds	r3, r2, r3
    1132:	781b      	ldrb	r3, [r3, #0]
    1134:	0018      	movs	r0, r3
    1136:	f7ff fe29 	bl	d8c <xputc>
    113a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    113c:	2b00      	cmp	r3, #0
    113e:	d1f1      	bne.n	1124 <xvprintf+0x2d8>
    1140:	e002      	b.n	1148 <xvprintf+0x2fc>
    1142:	2020      	movs	r0, #32
    1144:	f7ff fe22 	bl	d8c <xputc>
    1148:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    114a:	1c5a      	adds	r2, r3, #1
    114c:	62fa      	str	r2, [r7, #44]	; 0x2c
    114e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1150:	4293      	cmp	r3, r2
    1152:	d3f6      	bcc.n	1142 <xvprintf+0x2f6>
    1154:	e67f      	b.n	e56 <xvprintf+0xa>
    1156:	46c0      	nop			; (mov r8, r8)
    1158:	e000      	b.n	115c <xvprintf+0x310>
    115a:	46c0      	nop			; (mov r8, r8)
    115c:	46c0      	nop			; (mov r8, r8)
    115e:	46bd      	mov	sp, r7
    1160:	b00e      	add	sp, #56	; 0x38
    1162:	bd80      	pop	{r7, pc}
    1164:	0000183c 	.word	0x0000183c

00001168 <xprintf>:
    1168:	b40f      	push	{r0, r1, r2, r3}
    116a:	b580      	push	{r7, lr}
    116c:	b082      	sub	sp, #8
    116e:	af00      	add	r7, sp, #0
    1170:	2314      	movs	r3, #20
    1172:	18fb      	adds	r3, r7, r3
    1174:	607b      	str	r3, [r7, #4]
    1176:	687a      	ldr	r2, [r7, #4]
    1178:	693b      	ldr	r3, [r7, #16]
    117a:	0011      	movs	r1, r2
    117c:	0018      	movs	r0, r3
    117e:	f7ff fe65 	bl	e4c <xvprintf>
    1182:	46c0      	nop			; (mov r8, r8)
    1184:	46bd      	mov	sp, r7
    1186:	b002      	add	sp, #8
    1188:	bc80      	pop	{r7}
    118a:	bc08      	pop	{r3}
    118c:	b004      	add	sp, #16
    118e:	4718      	bx	r3

00001190 <xsprintf>:
    1190:	b40e      	push	{r1, r2, r3}
    1192:	b580      	push	{r7, lr}
    1194:	b085      	sub	sp, #20
    1196:	af00      	add	r7, sp, #0
    1198:	6078      	str	r0, [r7, #4]
    119a:	4b0d      	ldr	r3, [pc, #52]	; (11d0 <xsprintf+0x40>)
    119c:	687a      	ldr	r2, [r7, #4]
    119e:	601a      	str	r2, [r3, #0]
    11a0:	2320      	movs	r3, #32
    11a2:	18fb      	adds	r3, r7, r3
    11a4:	60fb      	str	r3, [r7, #12]
    11a6:	68fa      	ldr	r2, [r7, #12]
    11a8:	69fb      	ldr	r3, [r7, #28]
    11aa:	0011      	movs	r1, r2
    11ac:	0018      	movs	r0, r3
    11ae:	f7ff fe4d 	bl	e4c <xvprintf>
    11b2:	4b07      	ldr	r3, [pc, #28]	; (11d0 <xsprintf+0x40>)
    11b4:	681b      	ldr	r3, [r3, #0]
    11b6:	2200      	movs	r2, #0
    11b8:	701a      	strb	r2, [r3, #0]
    11ba:	4b05      	ldr	r3, [pc, #20]	; (11d0 <xsprintf+0x40>)
    11bc:	2200      	movs	r2, #0
    11be:	601a      	str	r2, [r3, #0]
    11c0:	46c0      	nop			; (mov r8, r8)
    11c2:	46bd      	mov	sp, r7
    11c4:	b005      	add	sp, #20
    11c6:	bc80      	pop	{r7}
    11c8:	bc08      	pop	{r3}
    11ca:	b003      	add	sp, #12
    11cc:	4718      	bx	r3
    11ce:	46c0      	nop			; (mov r8, r8)
    11d0:	20000504 	.word	0x20000504

000011d4 <xfprintf>:
    11d4:	b40e      	push	{r1, r2, r3}
    11d6:	b580      	push	{r7, lr}
    11d8:	b085      	sub	sp, #20
    11da:	af00      	add	r7, sp, #0
    11dc:	6078      	str	r0, [r7, #4]
    11de:	4b0c      	ldr	r3, [pc, #48]	; (1210 <xfprintf+0x3c>)
    11e0:	681b      	ldr	r3, [r3, #0]
    11e2:	60fb      	str	r3, [r7, #12]
    11e4:	4b0a      	ldr	r3, [pc, #40]	; (1210 <xfprintf+0x3c>)
    11e6:	687a      	ldr	r2, [r7, #4]
    11e8:	601a      	str	r2, [r3, #0]
    11ea:	2320      	movs	r3, #32
    11ec:	18fb      	adds	r3, r7, r3
    11ee:	60bb      	str	r3, [r7, #8]
    11f0:	68ba      	ldr	r2, [r7, #8]
    11f2:	69fb      	ldr	r3, [r7, #28]
    11f4:	0011      	movs	r1, r2
    11f6:	0018      	movs	r0, r3
    11f8:	f7ff fe28 	bl	e4c <xvprintf>
    11fc:	4b04      	ldr	r3, [pc, #16]	; (1210 <xfprintf+0x3c>)
    11fe:	68fa      	ldr	r2, [r7, #12]
    1200:	601a      	str	r2, [r3, #0]
    1202:	46c0      	nop			; (mov r8, r8)
    1204:	46bd      	mov	sp, r7
    1206:	b005      	add	sp, #20
    1208:	bc80      	pop	{r7}
    120a:	bc08      	pop	{r3}
    120c:	b003      	add	sp, #12
    120e:	4718      	bx	r3
    1210:	20000500 	.word	0x20000500

00001214 <put_dump>:
    1214:	b580      	push	{r7, lr}
    1216:	b088      	sub	sp, #32
    1218:	af00      	add	r7, sp, #0
    121a:	60f8      	str	r0, [r7, #12]
    121c:	60b9      	str	r1, [r7, #8]
    121e:	607a      	str	r2, [r7, #4]
    1220:	603b      	str	r3, [r7, #0]
    1222:	68ba      	ldr	r2, [r7, #8]
    1224:	4b38      	ldr	r3, [pc, #224]	; (1308 <put_dump+0xf4>)
    1226:	0011      	movs	r1, r2
    1228:	0018      	movs	r0, r3
    122a:	f7ff ff9d 	bl	1168 <xprintf>
    122e:	683b      	ldr	r3, [r7, #0]
    1230:	2b02      	cmp	r3, #2
    1232:	d03c      	beq.n	12ae <put_dump+0x9a>
    1234:	2b04      	cmp	r3, #4
    1236:	d04d      	beq.n	12d4 <put_dump+0xc0>
    1238:	2b01      	cmp	r3, #1
    123a:	d15d      	bne.n	12f8 <put_dump+0xe4>
    123c:	68fb      	ldr	r3, [r7, #12]
    123e:	613b      	str	r3, [r7, #16]
    1240:	2300      	movs	r3, #0
    1242:	61fb      	str	r3, [r7, #28]
    1244:	e00c      	b.n	1260 <put_dump+0x4c>
    1246:	69fb      	ldr	r3, [r7, #28]
    1248:	693a      	ldr	r2, [r7, #16]
    124a:	18d3      	adds	r3, r2, r3
    124c:	781b      	ldrb	r3, [r3, #0]
    124e:	001a      	movs	r2, r3
    1250:	4b2e      	ldr	r3, [pc, #184]	; (130c <put_dump+0xf8>)
    1252:	0011      	movs	r1, r2
    1254:	0018      	movs	r0, r3
    1256:	f7ff ff87 	bl	1168 <xprintf>
    125a:	69fb      	ldr	r3, [r7, #28]
    125c:	3301      	adds	r3, #1
    125e:	61fb      	str	r3, [r7, #28]
    1260:	69fa      	ldr	r2, [r7, #28]
    1262:	687b      	ldr	r3, [r7, #4]
    1264:	429a      	cmp	r2, r3
    1266:	dbee      	blt.n	1246 <put_dump+0x32>
    1268:	2020      	movs	r0, #32
    126a:	f7ff fd8f 	bl	d8c <xputc>
    126e:	2300      	movs	r3, #0
    1270:	61fb      	str	r3, [r7, #28]
    1272:	e017      	b.n	12a4 <put_dump+0x90>
    1274:	69fb      	ldr	r3, [r7, #28]
    1276:	693a      	ldr	r2, [r7, #16]
    1278:	18d3      	adds	r3, r2, r3
    127a:	781b      	ldrb	r3, [r3, #0]
    127c:	2b1f      	cmp	r3, #31
    127e:	d90a      	bls.n	1296 <put_dump+0x82>
    1280:	69fb      	ldr	r3, [r7, #28]
    1282:	693a      	ldr	r2, [r7, #16]
    1284:	18d3      	adds	r3, r2, r3
    1286:	781b      	ldrb	r3, [r3, #0]
    1288:	2b7e      	cmp	r3, #126	; 0x7e
    128a:	d804      	bhi.n	1296 <put_dump+0x82>
    128c:	69fb      	ldr	r3, [r7, #28]
    128e:	693a      	ldr	r2, [r7, #16]
    1290:	18d3      	adds	r3, r2, r3
    1292:	781b      	ldrb	r3, [r3, #0]
    1294:	e000      	b.n	1298 <put_dump+0x84>
    1296:	232e      	movs	r3, #46	; 0x2e
    1298:	0018      	movs	r0, r3
    129a:	f7ff fd77 	bl	d8c <xputc>
    129e:	69fb      	ldr	r3, [r7, #28]
    12a0:	3301      	adds	r3, #1
    12a2:	61fb      	str	r3, [r7, #28]
    12a4:	69fa      	ldr	r2, [r7, #28]
    12a6:	687b      	ldr	r3, [r7, #4]
    12a8:	429a      	cmp	r2, r3
    12aa:	dbe3      	blt.n	1274 <put_dump+0x60>
    12ac:	e024      	b.n	12f8 <put_dump+0xe4>
    12ae:	68fb      	ldr	r3, [r7, #12]
    12b0:	61bb      	str	r3, [r7, #24]
    12b2:	69bb      	ldr	r3, [r7, #24]
    12b4:	1c9a      	adds	r2, r3, #2
    12b6:	61ba      	str	r2, [r7, #24]
    12b8:	881b      	ldrh	r3, [r3, #0]
    12ba:	001a      	movs	r2, r3
    12bc:	4b14      	ldr	r3, [pc, #80]	; (1310 <put_dump+0xfc>)
    12be:	0011      	movs	r1, r2
    12c0:	0018      	movs	r0, r3
    12c2:	f7ff ff51 	bl	1168 <xprintf>
    12c6:	687b      	ldr	r3, [r7, #4]
    12c8:	3b01      	subs	r3, #1
    12ca:	607b      	str	r3, [r7, #4]
    12cc:	687b      	ldr	r3, [r7, #4]
    12ce:	2b00      	cmp	r3, #0
    12d0:	d1ef      	bne.n	12b2 <put_dump+0x9e>
    12d2:	e011      	b.n	12f8 <put_dump+0xe4>
    12d4:	68fb      	ldr	r3, [r7, #12]
    12d6:	617b      	str	r3, [r7, #20]
    12d8:	697b      	ldr	r3, [r7, #20]
    12da:	1d1a      	adds	r2, r3, #4
    12dc:	617a      	str	r2, [r7, #20]
    12de:	681a      	ldr	r2, [r3, #0]
    12e0:	4b0c      	ldr	r3, [pc, #48]	; (1314 <put_dump+0x100>)
    12e2:	0011      	movs	r1, r2
    12e4:	0018      	movs	r0, r3
    12e6:	f7ff ff3f 	bl	1168 <xprintf>
    12ea:	687b      	ldr	r3, [r7, #4]
    12ec:	3b01      	subs	r3, #1
    12ee:	607b      	str	r3, [r7, #4]
    12f0:	687b      	ldr	r3, [r7, #4]
    12f2:	2b00      	cmp	r3, #0
    12f4:	d1f0      	bne.n	12d8 <put_dump+0xc4>
    12f6:	46c0      	nop			; (mov r8, r8)
    12f8:	200a      	movs	r0, #10
    12fa:	f7ff fd47 	bl	d8c <xputc>
    12fe:	46c0      	nop			; (mov r8, r8)
    1300:	46bd      	mov	sp, r7
    1302:	b008      	add	sp, #32
    1304:	bd80      	pop	{r7, pc}
    1306:	46c0      	nop			; (mov r8, r8)
    1308:	00001898 	.word	0x00001898
    130c:	000018a0 	.word	0x000018a0
    1310:	000018a8 	.word	0x000018a8
    1314:	000018b0 	.word	0x000018b0

00001318 <xgets>:
    1318:	b580      	push	{r7, lr}
    131a:	b084      	sub	sp, #16
    131c:	af00      	add	r7, sp, #0
    131e:	6078      	str	r0, [r7, #4]
    1320:	6039      	str	r1, [r7, #0]
    1322:	4b24      	ldr	r3, [pc, #144]	; (13b4 <xgets+0x9c>)
    1324:	681b      	ldr	r3, [r3, #0]
    1326:	2b00      	cmp	r3, #0
    1328:	d101      	bne.n	132e <xgets+0x16>
    132a:	2300      	movs	r3, #0
    132c:	e03e      	b.n	13ac <xgets+0x94>
    132e:	2300      	movs	r3, #0
    1330:	60fb      	str	r3, [r7, #12]
    1332:	4b20      	ldr	r3, [pc, #128]	; (13b4 <xgets+0x9c>)
    1334:	681b      	ldr	r3, [r3, #0]
    1336:	4798      	blx	r3
    1338:	0003      	movs	r3, r0
    133a:	60bb      	str	r3, [r7, #8]
    133c:	68bb      	ldr	r3, [r7, #8]
    133e:	2b00      	cmp	r3, #0
    1340:	d101      	bne.n	1346 <xgets+0x2e>
    1342:	2300      	movs	r3, #0
    1344:	e032      	b.n	13ac <xgets+0x94>
    1346:	68bb      	ldr	r3, [r7, #8]
    1348:	2b0d      	cmp	r3, #13
    134a:	d025      	beq.n	1398 <xgets+0x80>
    134c:	68bb      	ldr	r3, [r7, #8]
    134e:	2b08      	cmp	r3, #8
    1350:	d10b      	bne.n	136a <xgets+0x52>
    1352:	68fb      	ldr	r3, [r7, #12]
    1354:	2b00      	cmp	r3, #0
    1356:	d008      	beq.n	136a <xgets+0x52>
    1358:	68fb      	ldr	r3, [r7, #12]
    135a:	3b01      	subs	r3, #1
    135c:	60fb      	str	r3, [r7, #12]
    135e:	68bb      	ldr	r3, [r7, #8]
    1360:	b2db      	uxtb	r3, r3
    1362:	0018      	movs	r0, r3
    1364:	f7ff fd12 	bl	d8c <xputc>
    1368:	e015      	b.n	1396 <xgets+0x7e>
    136a:	68bb      	ldr	r3, [r7, #8]
    136c:	2b1f      	cmp	r3, #31
    136e:	dde0      	ble.n	1332 <xgets+0x1a>
    1370:	683b      	ldr	r3, [r7, #0]
    1372:	1e5a      	subs	r2, r3, #1
    1374:	68fb      	ldr	r3, [r7, #12]
    1376:	429a      	cmp	r2, r3
    1378:	dddb      	ble.n	1332 <xgets+0x1a>
    137a:	68fb      	ldr	r3, [r7, #12]
    137c:	1c5a      	adds	r2, r3, #1
    137e:	60fa      	str	r2, [r7, #12]
    1380:	001a      	movs	r2, r3
    1382:	687b      	ldr	r3, [r7, #4]
    1384:	189b      	adds	r3, r3, r2
    1386:	68ba      	ldr	r2, [r7, #8]
    1388:	b2d2      	uxtb	r2, r2
    138a:	701a      	strb	r2, [r3, #0]
    138c:	68bb      	ldr	r3, [r7, #8]
    138e:	b2db      	uxtb	r3, r3
    1390:	0018      	movs	r0, r3
    1392:	f7ff fcfb 	bl	d8c <xputc>
    1396:	e7cc      	b.n	1332 <xgets+0x1a>
    1398:	46c0      	nop			; (mov r8, r8)
    139a:	68fb      	ldr	r3, [r7, #12]
    139c:	687a      	ldr	r2, [r7, #4]
    139e:	18d3      	adds	r3, r2, r3
    13a0:	2200      	movs	r2, #0
    13a2:	701a      	strb	r2, [r3, #0]
    13a4:	200a      	movs	r0, #10
    13a6:	f7ff fcf1 	bl	d8c <xputc>
    13aa:	2301      	movs	r3, #1
    13ac:	0018      	movs	r0, r3
    13ae:	46bd      	mov	sp, r7
    13b0:	b004      	add	sp, #16
    13b2:	bd80      	pop	{r7, pc}
    13b4:	20000508 	.word	0x20000508

000013b8 <xfgets>:
    13b8:	b580      	push	{r7, lr}
    13ba:	b086      	sub	sp, #24
    13bc:	af00      	add	r7, sp, #0
    13be:	60f8      	str	r0, [r7, #12]
    13c0:	60b9      	str	r1, [r7, #8]
    13c2:	607a      	str	r2, [r7, #4]
    13c4:	4b0a      	ldr	r3, [pc, #40]	; (13f0 <xfgets+0x38>)
    13c6:	681b      	ldr	r3, [r3, #0]
    13c8:	617b      	str	r3, [r7, #20]
    13ca:	4b09      	ldr	r3, [pc, #36]	; (13f0 <xfgets+0x38>)
    13cc:	68fa      	ldr	r2, [r7, #12]
    13ce:	601a      	str	r2, [r3, #0]
    13d0:	687a      	ldr	r2, [r7, #4]
    13d2:	68bb      	ldr	r3, [r7, #8]
    13d4:	0011      	movs	r1, r2
    13d6:	0018      	movs	r0, r3
    13d8:	f7ff ff9e 	bl	1318 <xgets>
    13dc:	0003      	movs	r3, r0
    13de:	613b      	str	r3, [r7, #16]
    13e0:	4b03      	ldr	r3, [pc, #12]	; (13f0 <xfgets+0x38>)
    13e2:	697a      	ldr	r2, [r7, #20]
    13e4:	601a      	str	r2, [r3, #0]
    13e6:	693b      	ldr	r3, [r7, #16]
    13e8:	0018      	movs	r0, r3
    13ea:	46bd      	mov	sp, r7
    13ec:	b006      	add	sp, #24
    13ee:	bd80      	pop	{r7, pc}
    13f0:	20000508 	.word	0x20000508

000013f4 <xatoi>:
    13f4:	b580      	push	{r7, lr}
    13f6:	b084      	sub	sp, #16
    13f8:	af00      	add	r7, sp, #0
    13fa:	6078      	str	r0, [r7, #4]
    13fc:	6039      	str	r1, [r7, #0]
    13fe:	2309      	movs	r3, #9
    1400:	18fb      	adds	r3, r7, r3
    1402:	2200      	movs	r2, #0
    1404:	701a      	strb	r2, [r3, #0]
    1406:	683b      	ldr	r3, [r7, #0]
    1408:	2200      	movs	r2, #0
    140a:	601a      	str	r2, [r3, #0]
    140c:	e004      	b.n	1418 <xatoi+0x24>
    140e:	687b      	ldr	r3, [r7, #4]
    1410:	681b      	ldr	r3, [r3, #0]
    1412:	1c5a      	adds	r2, r3, #1
    1414:	687b      	ldr	r3, [r7, #4]
    1416:	601a      	str	r2, [r3, #0]
    1418:	687b      	ldr	r3, [r7, #4]
    141a:	681a      	ldr	r2, [r3, #0]
    141c:	230b      	movs	r3, #11
    141e:	18fb      	adds	r3, r7, r3
    1420:	7812      	ldrb	r2, [r2, #0]
    1422:	701a      	strb	r2, [r3, #0]
    1424:	230b      	movs	r3, #11
    1426:	18fb      	adds	r3, r7, r3
    1428:	781b      	ldrb	r3, [r3, #0]
    142a:	2b20      	cmp	r3, #32
    142c:	d0ef      	beq.n	140e <xatoi+0x1a>
    142e:	230b      	movs	r3, #11
    1430:	18fb      	adds	r3, r7, r3
    1432:	781b      	ldrb	r3, [r3, #0]
    1434:	2b2d      	cmp	r3, #45	; 0x2d
    1436:	d10e      	bne.n	1456 <xatoi+0x62>
    1438:	2309      	movs	r3, #9
    143a:	18fb      	adds	r3, r7, r3
    143c:	2201      	movs	r2, #1
    143e:	701a      	strb	r2, [r3, #0]
    1440:	687b      	ldr	r3, [r7, #4]
    1442:	681b      	ldr	r3, [r3, #0]
    1444:	1c5a      	adds	r2, r3, #1
    1446:	687b      	ldr	r3, [r7, #4]
    1448:	601a      	str	r2, [r3, #0]
    144a:	687b      	ldr	r3, [r7, #4]
    144c:	681a      	ldr	r2, [r3, #0]
    144e:	230b      	movs	r3, #11
    1450:	18fb      	adds	r3, r7, r3
    1452:	7812      	ldrb	r2, [r2, #0]
    1454:	701a      	strb	r2, [r3, #0]
    1456:	230b      	movs	r3, #11
    1458:	18fb      	adds	r3, r7, r3
    145a:	781b      	ldrb	r3, [r3, #0]
    145c:	2b30      	cmp	r3, #48	; 0x30
    145e:	d149      	bne.n	14f4 <xatoi+0x100>
    1460:	687b      	ldr	r3, [r7, #4]
    1462:	681b      	ldr	r3, [r3, #0]
    1464:	1c5a      	adds	r2, r3, #1
    1466:	687b      	ldr	r3, [r7, #4]
    1468:	601a      	str	r2, [r3, #0]
    146a:	687b      	ldr	r3, [r7, #4]
    146c:	681a      	ldr	r2, [r3, #0]
    146e:	230b      	movs	r3, #11
    1470:	18fb      	adds	r3, r7, r3
    1472:	7812      	ldrb	r2, [r2, #0]
    1474:	701a      	strb	r2, [r3, #0]
    1476:	230b      	movs	r3, #11
    1478:	18fb      	adds	r3, r7, r3
    147a:	781b      	ldrb	r3, [r3, #0]
    147c:	2b62      	cmp	r3, #98	; 0x62
    147e:	d011      	beq.n	14a4 <xatoi+0xb0>
    1480:	2b78      	cmp	r3, #120	; 0x78
    1482:	d11f      	bne.n	14c4 <xatoi+0xd0>
    1484:	230a      	movs	r3, #10
    1486:	18fb      	adds	r3, r7, r3
    1488:	2210      	movs	r2, #16
    148a:	701a      	strb	r2, [r3, #0]
    148c:	687b      	ldr	r3, [r7, #4]
    148e:	681b      	ldr	r3, [r3, #0]
    1490:	1c5a      	adds	r2, r3, #1
    1492:	687b      	ldr	r3, [r7, #4]
    1494:	601a      	str	r2, [r3, #0]
    1496:	687b      	ldr	r3, [r7, #4]
    1498:	681a      	ldr	r2, [r3, #0]
    149a:	230b      	movs	r3, #11
    149c:	18fb      	adds	r3, r7, r3
    149e:	7812      	ldrb	r2, [r2, #0]
    14a0:	701a      	strb	r2, [r3, #0]
    14a2:	e037      	b.n	1514 <xatoi+0x120>
    14a4:	230a      	movs	r3, #10
    14a6:	18fb      	adds	r3, r7, r3
    14a8:	2202      	movs	r2, #2
    14aa:	701a      	strb	r2, [r3, #0]
    14ac:	687b      	ldr	r3, [r7, #4]
    14ae:	681b      	ldr	r3, [r3, #0]
    14b0:	1c5a      	adds	r2, r3, #1
    14b2:	687b      	ldr	r3, [r7, #4]
    14b4:	601a      	str	r2, [r3, #0]
    14b6:	687b      	ldr	r3, [r7, #4]
    14b8:	681a      	ldr	r2, [r3, #0]
    14ba:	230b      	movs	r3, #11
    14bc:	18fb      	adds	r3, r7, r3
    14be:	7812      	ldrb	r2, [r2, #0]
    14c0:	701a      	strb	r2, [r3, #0]
    14c2:	e027      	b.n	1514 <xatoi+0x120>
    14c4:	230b      	movs	r3, #11
    14c6:	18fb      	adds	r3, r7, r3
    14c8:	781b      	ldrb	r3, [r3, #0]
    14ca:	2b20      	cmp	r3, #32
    14cc:	d801      	bhi.n	14d2 <xatoi+0xde>
    14ce:	2301      	movs	r3, #1
    14d0:	e079      	b.n	15c6 <xatoi+0x1d2>
    14d2:	230b      	movs	r3, #11
    14d4:	18fb      	adds	r3, r7, r3
    14d6:	781b      	ldrb	r3, [r3, #0]
    14d8:	2b2f      	cmp	r3, #47	; 0x2f
    14da:	d904      	bls.n	14e6 <xatoi+0xf2>
    14dc:	230b      	movs	r3, #11
    14de:	18fb      	adds	r3, r7, r3
    14e0:	781b      	ldrb	r3, [r3, #0]
    14e2:	2b39      	cmp	r3, #57	; 0x39
    14e4:	d901      	bls.n	14ea <xatoi+0xf6>
    14e6:	2300      	movs	r3, #0
    14e8:	e06d      	b.n	15c6 <xatoi+0x1d2>
    14ea:	230a      	movs	r3, #10
    14ec:	18fb      	adds	r3, r7, r3
    14ee:	2208      	movs	r2, #8
    14f0:	701a      	strb	r2, [r3, #0]
    14f2:	e00f      	b.n	1514 <xatoi+0x120>
    14f4:	230b      	movs	r3, #11
    14f6:	18fb      	adds	r3, r7, r3
    14f8:	781b      	ldrb	r3, [r3, #0]
    14fa:	2b2f      	cmp	r3, #47	; 0x2f
    14fc:	d904      	bls.n	1508 <xatoi+0x114>
    14fe:	230b      	movs	r3, #11
    1500:	18fb      	adds	r3, r7, r3
    1502:	781b      	ldrb	r3, [r3, #0]
    1504:	2b39      	cmp	r3, #57	; 0x39
    1506:	d901      	bls.n	150c <xatoi+0x118>
    1508:	2300      	movs	r3, #0
    150a:	e05c      	b.n	15c6 <xatoi+0x1d2>
    150c:	230a      	movs	r3, #10
    150e:	18fb      	adds	r3, r7, r3
    1510:	220a      	movs	r2, #10
    1512:	701a      	strb	r2, [r3, #0]
    1514:	2300      	movs	r3, #0
    1516:	60fb      	str	r3, [r7, #12]
    1518:	e044      	b.n	15a4 <xatoi+0x1b0>
    151a:	230b      	movs	r3, #11
    151c:	18fb      	adds	r3, r7, r3
    151e:	781b      	ldrb	r3, [r3, #0]
    1520:	2b60      	cmp	r3, #96	; 0x60
    1522:	d906      	bls.n	1532 <xatoi+0x13e>
    1524:	230b      	movs	r3, #11
    1526:	18fb      	adds	r3, r7, r3
    1528:	220b      	movs	r2, #11
    152a:	18ba      	adds	r2, r7, r2
    152c:	7812      	ldrb	r2, [r2, #0]
    152e:	3a20      	subs	r2, #32
    1530:	701a      	strb	r2, [r3, #0]
    1532:	230b      	movs	r3, #11
    1534:	18fb      	adds	r3, r7, r3
    1536:	220b      	movs	r2, #11
    1538:	18ba      	adds	r2, r7, r2
    153a:	7812      	ldrb	r2, [r2, #0]
    153c:	3a30      	subs	r2, #48	; 0x30
    153e:	701a      	strb	r2, [r3, #0]
    1540:	230b      	movs	r3, #11
    1542:	18fb      	adds	r3, r7, r3
    1544:	781b      	ldrb	r3, [r3, #0]
    1546:	2b10      	cmp	r3, #16
    1548:	d90d      	bls.n	1566 <xatoi+0x172>
    154a:	230b      	movs	r3, #11
    154c:	18fb      	adds	r3, r7, r3
    154e:	220b      	movs	r2, #11
    1550:	18ba      	adds	r2, r7, r2
    1552:	7812      	ldrb	r2, [r2, #0]
    1554:	3a07      	subs	r2, #7
    1556:	701a      	strb	r2, [r3, #0]
    1558:	230b      	movs	r3, #11
    155a:	18fb      	adds	r3, r7, r3
    155c:	781b      	ldrb	r3, [r3, #0]
    155e:	2b09      	cmp	r3, #9
    1560:	d801      	bhi.n	1566 <xatoi+0x172>
    1562:	2300      	movs	r3, #0
    1564:	e02f      	b.n	15c6 <xatoi+0x1d2>
    1566:	230b      	movs	r3, #11
    1568:	18fa      	adds	r2, r7, r3
    156a:	230a      	movs	r3, #10
    156c:	18fb      	adds	r3, r7, r3
    156e:	7812      	ldrb	r2, [r2, #0]
    1570:	781b      	ldrb	r3, [r3, #0]
    1572:	429a      	cmp	r2, r3
    1574:	d301      	bcc.n	157a <xatoi+0x186>
    1576:	2300      	movs	r3, #0
    1578:	e025      	b.n	15c6 <xatoi+0x1d2>
    157a:	230a      	movs	r3, #10
    157c:	18fb      	adds	r3, r7, r3
    157e:	781b      	ldrb	r3, [r3, #0]
    1580:	68fa      	ldr	r2, [r7, #12]
    1582:	435a      	muls	r2, r3
    1584:	230b      	movs	r3, #11
    1586:	18fb      	adds	r3, r7, r3
    1588:	781b      	ldrb	r3, [r3, #0]
    158a:	18d3      	adds	r3, r2, r3
    158c:	60fb      	str	r3, [r7, #12]
    158e:	687b      	ldr	r3, [r7, #4]
    1590:	681b      	ldr	r3, [r3, #0]
    1592:	1c5a      	adds	r2, r3, #1
    1594:	687b      	ldr	r3, [r7, #4]
    1596:	601a      	str	r2, [r3, #0]
    1598:	687b      	ldr	r3, [r7, #4]
    159a:	681a      	ldr	r2, [r3, #0]
    159c:	230b      	movs	r3, #11
    159e:	18fb      	adds	r3, r7, r3
    15a0:	7812      	ldrb	r2, [r2, #0]
    15a2:	701a      	strb	r2, [r3, #0]
    15a4:	230b      	movs	r3, #11
    15a6:	18fb      	adds	r3, r7, r3
    15a8:	781b      	ldrb	r3, [r3, #0]
    15aa:	2b20      	cmp	r3, #32
    15ac:	d8b5      	bhi.n	151a <xatoi+0x126>
    15ae:	2309      	movs	r3, #9
    15b0:	18fb      	adds	r3, r7, r3
    15b2:	781b      	ldrb	r3, [r3, #0]
    15b4:	2b00      	cmp	r3, #0
    15b6:	d002      	beq.n	15be <xatoi+0x1ca>
    15b8:	68fb      	ldr	r3, [r7, #12]
    15ba:	425b      	negs	r3, r3
    15bc:	60fb      	str	r3, [r7, #12]
    15be:	68fa      	ldr	r2, [r7, #12]
    15c0:	683b      	ldr	r3, [r7, #0]
    15c2:	601a      	str	r2, [r3, #0]
    15c4:	2301      	movs	r3, #1
    15c6:	0018      	movs	r0, r3
    15c8:	46bd      	mov	sp, r7
    15ca:	b004      	add	sp, #16
    15cc:	bd80      	pop	{r7, pc}
    15ce:	46c0      	nop			; (mov r8, r8)

000015d0 <mil_cpy>:
    15d0:	8802      	ldrh	r2, [r0, #0]
    15d2:	4b30      	ldr	r3, [pc, #192]	; (1694 <mil_cpy+0xc4>)
    15d4:	601a      	str	r2, [r3, #0]
    15d6:	8842      	ldrh	r2, [r0, #2]
    15d8:	4b2f      	ldr	r3, [pc, #188]	; (1698 <mil_cpy+0xc8>)
    15da:	601a      	str	r2, [r3, #0]
    15dc:	8882      	ldrh	r2, [r0, #4]
    15de:	4b2f      	ldr	r3, [pc, #188]	; (169c <mil_cpy+0xcc>)
    15e0:	601a      	str	r2, [r3, #0]
    15e2:	88c2      	ldrh	r2, [r0, #6]
    15e4:	4b2e      	ldr	r3, [pc, #184]	; (16a0 <mil_cpy+0xd0>)
    15e6:	601a      	str	r2, [r3, #0]
    15e8:	8902      	ldrh	r2, [r0, #8]
    15ea:	4b2e      	ldr	r3, [pc, #184]	; (16a4 <mil_cpy+0xd4>)
    15ec:	601a      	str	r2, [r3, #0]
    15ee:	8942      	ldrh	r2, [r0, #10]
    15f0:	4b2d      	ldr	r3, [pc, #180]	; (16a8 <mil_cpy+0xd8>)
    15f2:	601a      	str	r2, [r3, #0]
    15f4:	8982      	ldrh	r2, [r0, #12]
    15f6:	4b2d      	ldr	r3, [pc, #180]	; (16ac <mil_cpy+0xdc>)
    15f8:	601a      	str	r2, [r3, #0]
    15fa:	89c2      	ldrh	r2, [r0, #14]
    15fc:	4b2c      	ldr	r3, [pc, #176]	; (16b0 <mil_cpy+0xe0>)
    15fe:	601a      	str	r2, [r3, #0]
    1600:	8a02      	ldrh	r2, [r0, #16]
    1602:	4b2c      	ldr	r3, [pc, #176]	; (16b4 <mil_cpy+0xe4>)
    1604:	601a      	str	r2, [r3, #0]
    1606:	8a42      	ldrh	r2, [r0, #18]
    1608:	4b2b      	ldr	r3, [pc, #172]	; (16b8 <mil_cpy+0xe8>)
    160a:	601a      	str	r2, [r3, #0]
    160c:	8a82      	ldrh	r2, [r0, #20]
    160e:	4b2b      	ldr	r3, [pc, #172]	; (16bc <mil_cpy+0xec>)
    1610:	601a      	str	r2, [r3, #0]
    1612:	8ac2      	ldrh	r2, [r0, #22]
    1614:	4b2a      	ldr	r3, [pc, #168]	; (16c0 <mil_cpy+0xf0>)
    1616:	601a      	str	r2, [r3, #0]
    1618:	8b02      	ldrh	r2, [r0, #24]
    161a:	4b2a      	ldr	r3, [pc, #168]	; (16c4 <mil_cpy+0xf4>)
    161c:	601a      	str	r2, [r3, #0]
    161e:	8b42      	ldrh	r2, [r0, #26]
    1620:	4b29      	ldr	r3, [pc, #164]	; (16c8 <mil_cpy+0xf8>)
    1622:	601a      	str	r2, [r3, #0]
    1624:	8b82      	ldrh	r2, [r0, #28]
    1626:	4b29      	ldr	r3, [pc, #164]	; (16cc <mil_cpy+0xfc>)
    1628:	601a      	str	r2, [r3, #0]
    162a:	8bc2      	ldrh	r2, [r0, #30]
    162c:	4b28      	ldr	r3, [pc, #160]	; (16d0 <mil_cpy+0x100>)
    162e:	601a      	str	r2, [r3, #0]
    1630:	8c02      	ldrh	r2, [r0, #32]
    1632:	4b28      	ldr	r3, [pc, #160]	; (16d4 <mil_cpy+0x104>)
    1634:	601a      	str	r2, [r3, #0]
    1636:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1638:	4b27      	ldr	r3, [pc, #156]	; (16d8 <mil_cpy+0x108>)
    163a:	601a      	str	r2, [r3, #0]
    163c:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    163e:	4b27      	ldr	r3, [pc, #156]	; (16dc <mil_cpy+0x10c>)
    1640:	601a      	str	r2, [r3, #0]
    1642:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1644:	4b26      	ldr	r3, [pc, #152]	; (16e0 <mil_cpy+0x110>)
    1646:	601a      	str	r2, [r3, #0]
    1648:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    164a:	4b26      	ldr	r3, [pc, #152]	; (16e4 <mil_cpy+0x114>)
    164c:	601a      	str	r2, [r3, #0]
    164e:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1650:	4b25      	ldr	r3, [pc, #148]	; (16e8 <mil_cpy+0x118>)
    1652:	601a      	str	r2, [r3, #0]
    1654:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1656:	4b25      	ldr	r3, [pc, #148]	; (16ec <mil_cpy+0x11c>)
    1658:	601a      	str	r2, [r3, #0]
    165a:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    165c:	4b24      	ldr	r3, [pc, #144]	; (16f0 <mil_cpy+0x120>)
    165e:	601a      	str	r2, [r3, #0]
    1660:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1662:	4b24      	ldr	r3, [pc, #144]	; (16f4 <mil_cpy+0x124>)
    1664:	601a      	str	r2, [r3, #0]
    1666:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1668:	4b23      	ldr	r3, [pc, #140]	; (16f8 <mil_cpy+0x128>)
    166a:	601a      	str	r2, [r3, #0]
    166c:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    166e:	4b23      	ldr	r3, [pc, #140]	; (16fc <mil_cpy+0x12c>)
    1670:	601a      	str	r2, [r3, #0]
    1672:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1674:	4b22      	ldr	r3, [pc, #136]	; (1700 <mil_cpy+0x130>)
    1676:	601a      	str	r2, [r3, #0]
    1678:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    167a:	4b22      	ldr	r3, [pc, #136]	; (1704 <mil_cpy+0x134>)
    167c:	601a      	str	r2, [r3, #0]
    167e:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1680:	4b21      	ldr	r3, [pc, #132]	; (1708 <mil_cpy+0x138>)
    1682:	601a      	str	r2, [r3, #0]
    1684:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1686:	4b21      	ldr	r3, [pc, #132]	; (170c <mil_cpy+0x13c>)
    1688:	601a      	str	r2, [r3, #0]
    168a:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    168c:	4b20      	ldr	r3, [pc, #128]	; (1710 <mil_cpy+0x140>)
    168e:	601a      	str	r2, [r3, #0]
    1690:	4770      	bx	lr
    1692:	46c0      	nop			; (mov r8, r8)
    1694:	40048080 	.word	0x40048080
    1698:	40048084 	.word	0x40048084
    169c:	40048088 	.word	0x40048088
    16a0:	4004808c 	.word	0x4004808c
    16a4:	40048090 	.word	0x40048090
    16a8:	40048094 	.word	0x40048094
    16ac:	40048098 	.word	0x40048098
    16b0:	4004809c 	.word	0x4004809c
    16b4:	400480a0 	.word	0x400480a0
    16b8:	400480a4 	.word	0x400480a4
    16bc:	400480a8 	.word	0x400480a8
    16c0:	400480ac 	.word	0x400480ac
    16c4:	400480b0 	.word	0x400480b0
    16c8:	400480b4 	.word	0x400480b4
    16cc:	400480b8 	.word	0x400480b8
    16d0:	400480bc 	.word	0x400480bc
    16d4:	400480c0 	.word	0x400480c0
    16d8:	400480c4 	.word	0x400480c4
    16dc:	400480c8 	.word	0x400480c8
    16e0:	400480cc 	.word	0x400480cc
    16e4:	400480d0 	.word	0x400480d0
    16e8:	400480d4 	.word	0x400480d4
    16ec:	400480d8 	.word	0x400480d8
    16f0:	400480dc 	.word	0x400480dc
    16f4:	400480e0 	.word	0x400480e0
    16f8:	400480e4 	.word	0x400480e4
    16fc:	400480e8 	.word	0x400480e8
    1700:	400480ec 	.word	0x400480ec
    1704:	400480f0 	.word	0x400480f0
    1708:	400480f4 	.word	0x400480f4
    170c:	400480f8 	.word	0x400480f8
    1710:	400480fc 	.word	0x400480fc

00001714 <__aeabi_uidiv>:
    1714:	2200      	movs	r2, #0
    1716:	0843      	lsrs	r3, r0, #1
    1718:	428b      	cmp	r3, r1
    171a:	d374      	bcc.n	1806 <__aeabi_uidiv+0xf2>
    171c:	0903      	lsrs	r3, r0, #4
    171e:	428b      	cmp	r3, r1
    1720:	d35f      	bcc.n	17e2 <__aeabi_uidiv+0xce>
    1722:	0a03      	lsrs	r3, r0, #8
    1724:	428b      	cmp	r3, r1
    1726:	d344      	bcc.n	17b2 <__aeabi_uidiv+0x9e>
    1728:	0b03      	lsrs	r3, r0, #12
    172a:	428b      	cmp	r3, r1
    172c:	d328      	bcc.n	1780 <__aeabi_uidiv+0x6c>
    172e:	0c03      	lsrs	r3, r0, #16
    1730:	428b      	cmp	r3, r1
    1732:	d30d      	bcc.n	1750 <__aeabi_uidiv+0x3c>
    1734:	22ff      	movs	r2, #255	; 0xff
    1736:	0209      	lsls	r1, r1, #8
    1738:	ba12      	rev	r2, r2
    173a:	0c03      	lsrs	r3, r0, #16
    173c:	428b      	cmp	r3, r1
    173e:	d302      	bcc.n	1746 <__aeabi_uidiv+0x32>
    1740:	1212      	asrs	r2, r2, #8
    1742:	0209      	lsls	r1, r1, #8
    1744:	d065      	beq.n	1812 <__aeabi_uidiv+0xfe>
    1746:	0b03      	lsrs	r3, r0, #12
    1748:	428b      	cmp	r3, r1
    174a:	d319      	bcc.n	1780 <__aeabi_uidiv+0x6c>
    174c:	e000      	b.n	1750 <__aeabi_uidiv+0x3c>
    174e:	0a09      	lsrs	r1, r1, #8
    1750:	0bc3      	lsrs	r3, r0, #15
    1752:	428b      	cmp	r3, r1
    1754:	d301      	bcc.n	175a <__aeabi_uidiv+0x46>
    1756:	03cb      	lsls	r3, r1, #15
    1758:	1ac0      	subs	r0, r0, r3
    175a:	4152      	adcs	r2, r2
    175c:	0b83      	lsrs	r3, r0, #14
    175e:	428b      	cmp	r3, r1
    1760:	d301      	bcc.n	1766 <__aeabi_uidiv+0x52>
    1762:	038b      	lsls	r3, r1, #14
    1764:	1ac0      	subs	r0, r0, r3
    1766:	4152      	adcs	r2, r2
    1768:	0b43      	lsrs	r3, r0, #13
    176a:	428b      	cmp	r3, r1
    176c:	d301      	bcc.n	1772 <__aeabi_uidiv+0x5e>
    176e:	034b      	lsls	r3, r1, #13
    1770:	1ac0      	subs	r0, r0, r3
    1772:	4152      	adcs	r2, r2
    1774:	0b03      	lsrs	r3, r0, #12
    1776:	428b      	cmp	r3, r1
    1778:	d301      	bcc.n	177e <__aeabi_uidiv+0x6a>
    177a:	030b      	lsls	r3, r1, #12
    177c:	1ac0      	subs	r0, r0, r3
    177e:	4152      	adcs	r2, r2
    1780:	0ac3      	lsrs	r3, r0, #11
    1782:	428b      	cmp	r3, r1
    1784:	d301      	bcc.n	178a <__aeabi_uidiv+0x76>
    1786:	02cb      	lsls	r3, r1, #11
    1788:	1ac0      	subs	r0, r0, r3
    178a:	4152      	adcs	r2, r2
    178c:	0a83      	lsrs	r3, r0, #10
    178e:	428b      	cmp	r3, r1
    1790:	d301      	bcc.n	1796 <__aeabi_uidiv+0x82>
    1792:	028b      	lsls	r3, r1, #10
    1794:	1ac0      	subs	r0, r0, r3
    1796:	4152      	adcs	r2, r2
    1798:	0a43      	lsrs	r3, r0, #9
    179a:	428b      	cmp	r3, r1
    179c:	d301      	bcc.n	17a2 <__aeabi_uidiv+0x8e>
    179e:	024b      	lsls	r3, r1, #9
    17a0:	1ac0      	subs	r0, r0, r3
    17a2:	4152      	adcs	r2, r2
    17a4:	0a03      	lsrs	r3, r0, #8
    17a6:	428b      	cmp	r3, r1
    17a8:	d301      	bcc.n	17ae <__aeabi_uidiv+0x9a>
    17aa:	020b      	lsls	r3, r1, #8
    17ac:	1ac0      	subs	r0, r0, r3
    17ae:	4152      	adcs	r2, r2
    17b0:	d2cd      	bcs.n	174e <__aeabi_uidiv+0x3a>
    17b2:	09c3      	lsrs	r3, r0, #7
    17b4:	428b      	cmp	r3, r1
    17b6:	d301      	bcc.n	17bc <__aeabi_uidiv+0xa8>
    17b8:	01cb      	lsls	r3, r1, #7
    17ba:	1ac0      	subs	r0, r0, r3
    17bc:	4152      	adcs	r2, r2
    17be:	0983      	lsrs	r3, r0, #6
    17c0:	428b      	cmp	r3, r1
    17c2:	d301      	bcc.n	17c8 <__aeabi_uidiv+0xb4>
    17c4:	018b      	lsls	r3, r1, #6
    17c6:	1ac0      	subs	r0, r0, r3
    17c8:	4152      	adcs	r2, r2
    17ca:	0943      	lsrs	r3, r0, #5
    17cc:	428b      	cmp	r3, r1
    17ce:	d301      	bcc.n	17d4 <__aeabi_uidiv+0xc0>
    17d0:	014b      	lsls	r3, r1, #5
    17d2:	1ac0      	subs	r0, r0, r3
    17d4:	4152      	adcs	r2, r2
    17d6:	0903      	lsrs	r3, r0, #4
    17d8:	428b      	cmp	r3, r1
    17da:	d301      	bcc.n	17e0 <__aeabi_uidiv+0xcc>
    17dc:	010b      	lsls	r3, r1, #4
    17de:	1ac0      	subs	r0, r0, r3
    17e0:	4152      	adcs	r2, r2
    17e2:	08c3      	lsrs	r3, r0, #3
    17e4:	428b      	cmp	r3, r1
    17e6:	d301      	bcc.n	17ec <__aeabi_uidiv+0xd8>
    17e8:	00cb      	lsls	r3, r1, #3
    17ea:	1ac0      	subs	r0, r0, r3
    17ec:	4152      	adcs	r2, r2
    17ee:	0883      	lsrs	r3, r0, #2
    17f0:	428b      	cmp	r3, r1
    17f2:	d301      	bcc.n	17f8 <__aeabi_uidiv+0xe4>
    17f4:	008b      	lsls	r3, r1, #2
    17f6:	1ac0      	subs	r0, r0, r3
    17f8:	4152      	adcs	r2, r2
    17fa:	0843      	lsrs	r3, r0, #1
    17fc:	428b      	cmp	r3, r1
    17fe:	d301      	bcc.n	1804 <__aeabi_uidiv+0xf0>
    1800:	004b      	lsls	r3, r1, #1
    1802:	1ac0      	subs	r0, r0, r3
    1804:	4152      	adcs	r2, r2
    1806:	1a41      	subs	r1, r0, r1
    1808:	d200      	bcs.n	180c <__aeabi_uidiv+0xf8>
    180a:	4601      	mov	r1, r0
    180c:	4152      	adcs	r2, r2
    180e:	4610      	mov	r0, r2
    1810:	4770      	bx	lr
    1812:	e7ff      	b.n	1814 <__aeabi_uidiv+0x100>
    1814:	b501      	push	{r0, lr}
    1816:	2000      	movs	r0, #0
    1818:	f000 f806 	bl	1828 <__aeabi_idiv0>
    181c:	bd02      	pop	{r1, pc}
    181e:	46c0      	nop			; (mov r8, r8)

00001820 <__aeabi_uidivmod>:
    1820:	2900      	cmp	r1, #0
    1822:	d0f7      	beq.n	1814 <__aeabi_uidiv+0x100>
    1824:	e776      	b.n	1714 <__aeabi_uidiv>
    1826:	4770      	bx	lr

00001828 <__aeabi_idiv0>:
    1828:	4770      	bx	lr
    182a:	46c0      	nop			; (mov r8, r8)
    182c:	6c6c6568 	.word	0x6c6c6568
    1830:	6f77206f 	.word	0x6f77206f
    1834:	0d646c72 	.word	0x0d646c72
    1838:	0000000a 	.word	0x0000000a
    183c:	00000ff2 	.word	0x00000ff2
    1840:	00000fe0 	.word	0x00000fe0
    1844:	00000ffe 	.word	0x00000ffe
    1848:	0000100a 	.word	0x0000100a
    184c:	0000100a 	.word	0x0000100a
    1850:	0000100a 	.word	0x0000100a
    1854:	0000100a 	.word	0x0000100a
    1858:	0000100a 	.word	0x0000100a
    185c:	0000100a 	.word	0x0000100a
    1860:	0000100a 	.word	0x0000100a
    1864:	0000100a 	.word	0x0000100a
    1868:	0000100a 	.word	0x0000100a
    186c:	0000100a 	.word	0x0000100a
    1870:	00000ff8 	.word	0x00000ff8
    1874:	0000100a 	.word	0x0000100a
    1878:	0000100a 	.word	0x0000100a
    187c:	0000100a 	.word	0x0000100a
    1880:	00000f84 	.word	0x00000f84
    1884:	0000100a 	.word	0x0000100a
    1888:	00000ffe 	.word	0x00000ffe
    188c:	0000100a 	.word	0x0000100a
    1890:	0000100a 	.word	0x0000100a
    1894:	00001004 	.word	0x00001004
    1898:	6c383025 	.word	0x6c383025
    189c:	00002058 	.word	0x00002058
    18a0:	32302520 	.word	0x32302520
    18a4:	00000058 	.word	0x00000058
    18a8:	34302520 	.word	0x34302520
    18ac:	00000058 	.word	0x00000058
    18b0:	38302520 	.word	0x38302520
    18b4:	0000584c 	.word	0x0000584c
