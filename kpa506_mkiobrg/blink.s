
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 a1 0b 00 00 01 0c 00 00 01 0c 00 00     ... ............
	...
      2c:	01 0c 00 00 00 00 00 00 00 00 00 00 01 0c 00 00     ................
      3c:	69 0a 00 00 01 0c 00 00 41 0b 00 00 01 0c 00 00     i.......A.......
      4c:	01 0c 00 00 01 0c 00 00 01 0c 00 00 01 0c 00 00     ................
      5c:	45 0e 00 00 01 0c 00 00 01 0c 00 00 01 0c 00 00     E...............
      6c:	01 0c 00 00 01 0c 00 00 81 0a 00 00 01 0c 00 00     ................
      7c:	01 0c 00 00 01 0c 00 00 01 0c 00 00 01 0c 00 00     ................
      8c:	01 0c 00 00 01 0c 00 00 01 0c 00 00 01 0c 00 00     ................
      9c:	01 0c 00 00 01 0c 00 00 00 00 00 00 00 00 00 00     ................
      ac:	01 0c 00 00 01 0c 00 00 01 0c 00 00 01 0c 00 00     ................
      bc:	01 0c 00 00                                         ....

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
     154:	200000e4 	.word	0x200000e4
     158:	2000004c 	.word	0x2000004c
     15c:	20000048 	.word	0x20000048
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
     18c:	200000dc 	.word	0x200000dc

00000190 <get_checksum>:
     190:	b580      	push	{r7, lr}
     192:	b084      	sub	sp, #16
     194:	af00      	add	r7, sp, #0
     196:	6078      	str	r0, [r7, #4]
     198:	6039      	str	r1, [r7, #0]
     19a:	2300      	movs	r3, #0
     19c:	60bb      	str	r3, [r7, #8]
     19e:	2300      	movs	r3, #0
     1a0:	60fb      	str	r3, [r7, #12]
     1a2:	e00a      	b.n	1ba <get_checksum+0x2a>
     1a4:	687b      	ldr	r3, [r7, #4]
     1a6:	1c9a      	adds	r2, r3, #2
     1a8:	607a      	str	r2, [r7, #4]
     1aa:	881b      	ldrh	r3, [r3, #0]
     1ac:	001a      	movs	r2, r3
     1ae:	68bb      	ldr	r3, [r7, #8]
     1b0:	189b      	adds	r3, r3, r2
     1b2:	60bb      	str	r3, [r7, #8]
     1b4:	68fb      	ldr	r3, [r7, #12]
     1b6:	3301      	adds	r3, #1
     1b8:	60fb      	str	r3, [r7, #12]
     1ba:	68fa      	ldr	r2, [r7, #12]
     1bc:	683b      	ldr	r3, [r7, #0]
     1be:	429a      	cmp	r2, r3
     1c0:	d3f0      	bcc.n	1a4 <get_checksum+0x14>
     1c2:	68bb      	ldr	r3, [r7, #8]
     1c4:	b29b      	uxth	r3, r3
     1c6:	3301      	adds	r3, #1
     1c8:	b29b      	uxth	r3, r3
     1ca:	0018      	movs	r0, r3
     1cc:	46bd      	mov	sp, r7
     1ce:	b004      	add	sp, #16
     1d0:	bd80      	pop	{r7, pc}
     1d2:	46c0      	nop			; (mov r8, r8)

000001d4 <test_telem>:
     1d4:	b580      	push	{r7, lr}
     1d6:	b082      	sub	sp, #8
     1d8:	af00      	add	r7, sp, #0
     1da:	6078      	str	r0, [r7, #4]
     1dc:	4b20      	ldr	r3, [pc, #128]	; (260 <test_telem+0x8c>)
     1de:	4a21      	ldr	r2, [pc, #132]	; (264 <test_telem+0x90>)
     1e0:	801a      	strh	r2, [r3, #0]
     1e2:	687b      	ldr	r3, [r7, #4]
     1e4:	0c1b      	lsrs	r3, r3, #16
     1e6:	b29a      	uxth	r2, r3
     1e8:	4b1d      	ldr	r3, [pc, #116]	; (260 <test_telem+0x8c>)
     1ea:	805a      	strh	r2, [r3, #2]
     1ec:	687b      	ldr	r3, [r7, #4]
     1ee:	b29a      	uxth	r2, r3
     1f0:	4b1b      	ldr	r3, [pc, #108]	; (260 <test_telem+0x8c>)
     1f2:	809a      	strh	r2, [r3, #4]
     1f4:	4b1a      	ldr	r3, [pc, #104]	; (260 <test_telem+0x8c>)
     1f6:	22fa      	movs	r2, #250	; 0xfa
     1f8:	0092      	lsls	r2, r2, #2
     1fa:	80da      	strh	r2, [r3, #6]
     1fc:	4b18      	ldr	r3, [pc, #96]	; (260 <test_telem+0x8c>)
     1fe:	2200      	movs	r2, #0
     200:	811a      	strh	r2, [r3, #8]
     202:	4b17      	ldr	r3, [pc, #92]	; (260 <test_telem+0x8c>)
     204:	2200      	movs	r2, #0
     206:	815a      	strh	r2, [r3, #10]
     208:	4b15      	ldr	r3, [pc, #84]	; (260 <test_telem+0x8c>)
     20a:	2200      	movs	r2, #0
     20c:	819a      	strh	r2, [r3, #12]
     20e:	4b14      	ldr	r3, [pc, #80]	; (260 <test_telem+0x8c>)
     210:	2200      	movs	r2, #0
     212:	81da      	strh	r2, [r3, #14]
     214:	4b12      	ldr	r3, [pc, #72]	; (260 <test_telem+0x8c>)
     216:	2200      	movs	r2, #0
     218:	821a      	strh	r2, [r3, #16]
     21a:	4b11      	ldr	r3, [pc, #68]	; (260 <test_telem+0x8c>)
     21c:	2200      	movs	r2, #0
     21e:	825a      	strh	r2, [r3, #18]
     220:	4b0f      	ldr	r3, [pc, #60]	; (260 <test_telem+0x8c>)
     222:	221b      	movs	r2, #27
     224:	829a      	strh	r2, [r3, #20]
     226:	4b0e      	ldr	r3, [pc, #56]	; (260 <test_telem+0x8c>)
     228:	221b      	movs	r2, #27
     22a:	82da      	strh	r2, [r3, #22]
     22c:	4b0c      	ldr	r3, [pc, #48]	; (260 <test_telem+0x8c>)
     22e:	220a      	movs	r2, #10
     230:	831a      	strh	r2, [r3, #24]
     232:	4b0b      	ldr	r3, [pc, #44]	; (260 <test_telem+0x8c>)
     234:	2200      	movs	r2, #0
     236:	835a      	strh	r2, [r3, #26]
     238:	4b09      	ldr	r3, [pc, #36]	; (260 <test_telem+0x8c>)
     23a:	2200      	movs	r2, #0
     23c:	839a      	strh	r2, [r3, #28]
     23e:	4b08      	ldr	r3, [pc, #32]	; (260 <test_telem+0x8c>)
     240:	2201      	movs	r2, #1
     242:	83da      	strh	r2, [r3, #30]
     244:	4b06      	ldr	r3, [pc, #24]	; (260 <test_telem+0x8c>)
     246:	211f      	movs	r1, #31
     248:	0018      	movs	r0, r3
     24a:	f7ff ffa1 	bl	190 <get_checksum>
     24e:	0003      	movs	r3, r0
     250:	001a      	movs	r2, r3
     252:	4b03      	ldr	r3, [pc, #12]	; (260 <test_telem+0x8c>)
     254:	87da      	strh	r2, [r3, #62]	; 0x3e
     256:	46c0      	nop			; (mov r8, r8)
     258:	46bd      	mov	sp, r7
     25a:	b002      	add	sp, #8
     25c:	bd80      	pop	{r7, pc}
     25e:	46c0      	nop			; (mov r8, r8)
     260:	2000008c 	.word	0x2000008c
     264:	00001234 	.word	0x00001234

00000268 <swpb>:
     268:	b580      	push	{r7, lr}
     26a:	b082      	sub	sp, #8
     26c:	af00      	add	r7, sp, #0
     26e:	0002      	movs	r2, r0
     270:	1dbb      	adds	r3, r7, #6
     272:	801a      	strh	r2, [r3, #0]
     274:	1dbb      	adds	r3, r7, #6
     276:	881b      	ldrh	r3, [r3, #0]
     278:	ba5b      	rev16	r3, r3
     27a:	b29b      	uxth	r3, r3
     27c:	0018      	movs	r0, r3
     27e:	46bd      	mov	sp, r7
     280:	b002      	add	sp, #8
     282:	bd80      	pop	{r7, pc}

00000284 <test_cw>:
     284:	b590      	push	{r4, r7, lr}
     286:	b087      	sub	sp, #28
     288:	af00      	add	r7, sp, #0
     28a:	6078      	str	r0, [r7, #4]
     28c:	2316      	movs	r3, #22
     28e:	18fb      	adds	r3, r7, r3
     290:	2220      	movs	r2, #32
     292:	801a      	strh	r2, [r3, #0]
     294:	2314      	movs	r3, #20
     296:	18fb      	adds	r3, r7, r3
     298:	22fa      	movs	r2, #250	; 0xfa
     29a:	0092      	lsls	r2, r2, #2
     29c:	801a      	strh	r2, [r3, #0]
     29e:	2312      	movs	r3, #18
     2a0:	18fb      	adds	r3, r7, r3
     2a2:	22fa      	movs	r2, #250	; 0xfa
     2a4:	0092      	lsls	r2, r2, #2
     2a6:	801a      	strh	r2, [r3, #0]
     2a8:	2310      	movs	r3, #16
     2aa:	18fb      	adds	r3, r7, r3
     2ac:	22fa      	movs	r2, #250	; 0xfa
     2ae:	0092      	lsls	r2, r2, #2
     2b0:	801a      	strh	r2, [r3, #0]
     2b2:	2316      	movs	r3, #22
     2b4:	18fa      	adds	r2, r7, r3
     2b6:	2314      	movs	r3, #20
     2b8:	18fb      	adds	r3, r7, r3
     2ba:	8812      	ldrh	r2, [r2, #0]
     2bc:	881b      	ldrh	r3, [r3, #0]
     2be:	18d3      	adds	r3, r2, r3
     2c0:	b29a      	uxth	r2, r3
     2c2:	2312      	movs	r3, #18
     2c4:	18fb      	adds	r3, r7, r3
     2c6:	881b      	ldrh	r3, [r3, #0]
     2c8:	18d3      	adds	r3, r2, r3
     2ca:	b29a      	uxth	r2, r3
     2cc:	2310      	movs	r3, #16
     2ce:	18fb      	adds	r3, r7, r3
     2d0:	881b      	ldrh	r3, [r3, #0]
     2d2:	18d3      	adds	r3, r2, r3
     2d4:	b29a      	uxth	r2, r3
     2d6:	230e      	movs	r3, #14
     2d8:	18fb      	adds	r3, r7, r3
     2da:	3201      	adds	r2, #1
     2dc:	801a      	strh	r2, [r3, #0]
     2de:	2316      	movs	r3, #22
     2e0:	18fb      	adds	r3, r7, r3
     2e2:	881b      	ldrh	r3, [r3, #0]
     2e4:	0018      	movs	r0, r3
     2e6:	f7ff ffbf 	bl	268 <swpb>
     2ea:	0003      	movs	r3, r0
     2ec:	001a      	movs	r2, r3
     2ee:	687b      	ldr	r3, [r7, #4]
     2f0:	801a      	strh	r2, [r3, #0]
     2f2:	687b      	ldr	r3, [r7, #4]
     2f4:	1c9c      	adds	r4, r3, #2
     2f6:	2314      	movs	r3, #20
     2f8:	18fb      	adds	r3, r7, r3
     2fa:	881b      	ldrh	r3, [r3, #0]
     2fc:	0018      	movs	r0, r3
     2fe:	f7ff ffb3 	bl	268 <swpb>
     302:	0003      	movs	r3, r0
     304:	8023      	strh	r3, [r4, #0]
     306:	687b      	ldr	r3, [r7, #4]
     308:	1d1c      	adds	r4, r3, #4
     30a:	2312      	movs	r3, #18
     30c:	18fb      	adds	r3, r7, r3
     30e:	881b      	ldrh	r3, [r3, #0]
     310:	0018      	movs	r0, r3
     312:	f7ff ffa9 	bl	268 <swpb>
     316:	0003      	movs	r3, r0
     318:	8023      	strh	r3, [r4, #0]
     31a:	687b      	ldr	r3, [r7, #4]
     31c:	1d9c      	adds	r4, r3, #6
     31e:	2310      	movs	r3, #16
     320:	18fb      	adds	r3, r7, r3
     322:	881b      	ldrh	r3, [r3, #0]
     324:	0018      	movs	r0, r3
     326:	f7ff ff9f 	bl	268 <swpb>
     32a:	0003      	movs	r3, r0
     32c:	8023      	strh	r3, [r4, #0]
     32e:	687b      	ldr	r3, [r7, #4]
     330:	3308      	adds	r3, #8
     332:	001c      	movs	r4, r3
     334:	230e      	movs	r3, #14
     336:	18fb      	adds	r3, r7, r3
     338:	881b      	ldrh	r3, [r3, #0]
     33a:	0018      	movs	r0, r3
     33c:	f7ff ff94 	bl	268 <swpb>
     340:	0003      	movs	r3, r0
     342:	8023      	strh	r3, [r4, #0]
     344:	687b      	ldr	r3, [r7, #4]
     346:	330a      	adds	r3, #10
     348:	4a02      	ldr	r2, [pc, #8]	; (354 <test_cw+0xd0>)
     34a:	801a      	strh	r2, [r3, #0]
     34c:	46c0      	nop			; (mov r8, r8)
     34e:	46bd      	mov	sp, r7
     350:	b007      	add	sp, #28
     352:	bd90      	pop	{r4, r7, pc}
     354:	000055aa 	.word	0x000055aa

00000358 <stuff>:
     358:	b580      	push	{r7, lr}
     35a:	b088      	sub	sp, #32
     35c:	af00      	add	r7, sp, #0
     35e:	60f8      	str	r0, [r7, #12]
     360:	60b9      	str	r1, [r7, #8]
     362:	607a      	str	r2, [r7, #4]
     364:	68fa      	ldr	r2, [r7, #12]
     366:	68bb      	ldr	r3, [r7, #8]
     368:	18d3      	adds	r3, r2, r3
     36a:	617b      	str	r3, [r7, #20]
     36c:	687b      	ldr	r3, [r7, #4]
     36e:	1c5a      	adds	r2, r3, #1
     370:	607a      	str	r2, [r7, #4]
     372:	61fb      	str	r3, [r7, #28]
     374:	231b      	movs	r3, #27
     376:	18fb      	adds	r3, r7, r3
     378:	2201      	movs	r2, #1
     37a:	701a      	strb	r2, [r3, #0]
     37c:	e033      	b.n	3e6 <stuff+0x8e>
     37e:	68fb      	ldr	r3, [r7, #12]
     380:	781b      	ldrb	r3, [r3, #0]
     382:	2b00      	cmp	r3, #0
     384:	d10d      	bne.n	3a2 <stuff+0x4a>
     386:	69fb      	ldr	r3, [r7, #28]
     388:	221b      	movs	r2, #27
     38a:	18ba      	adds	r2, r7, r2
     38c:	7812      	ldrb	r2, [r2, #0]
     38e:	701a      	strb	r2, [r3, #0]
     390:	687b      	ldr	r3, [r7, #4]
     392:	1c5a      	adds	r2, r3, #1
     394:	607a      	str	r2, [r7, #4]
     396:	61fb      	str	r3, [r7, #28]
     398:	231b      	movs	r3, #27
     39a:	18fb      	adds	r3, r7, r3
     39c:	2201      	movs	r2, #1
     39e:	701a      	strb	r2, [r3, #0]
     3a0:	e01e      	b.n	3e0 <stuff+0x88>
     3a2:	687b      	ldr	r3, [r7, #4]
     3a4:	1c5a      	adds	r2, r3, #1
     3a6:	607a      	str	r2, [r7, #4]
     3a8:	68fa      	ldr	r2, [r7, #12]
     3aa:	7812      	ldrb	r2, [r2, #0]
     3ac:	701a      	strb	r2, [r3, #0]
     3ae:	231b      	movs	r3, #27
     3b0:	18fb      	adds	r3, r7, r3
     3b2:	221b      	movs	r2, #27
     3b4:	18ba      	adds	r2, r7, r2
     3b6:	7812      	ldrb	r2, [r2, #0]
     3b8:	3201      	adds	r2, #1
     3ba:	701a      	strb	r2, [r3, #0]
     3bc:	231b      	movs	r3, #27
     3be:	18fb      	adds	r3, r7, r3
     3c0:	781b      	ldrb	r3, [r3, #0]
     3c2:	2bff      	cmp	r3, #255	; 0xff
     3c4:	d10c      	bne.n	3e0 <stuff+0x88>
     3c6:	69fb      	ldr	r3, [r7, #28]
     3c8:	221b      	movs	r2, #27
     3ca:	18ba      	adds	r2, r7, r2
     3cc:	7812      	ldrb	r2, [r2, #0]
     3ce:	701a      	strb	r2, [r3, #0]
     3d0:	687b      	ldr	r3, [r7, #4]
     3d2:	1c5a      	adds	r2, r3, #1
     3d4:	607a      	str	r2, [r7, #4]
     3d6:	61fb      	str	r3, [r7, #28]
     3d8:	231b      	movs	r3, #27
     3da:	18fb      	adds	r3, r7, r3
     3dc:	2201      	movs	r2, #1
     3de:	701a      	strb	r2, [r3, #0]
     3e0:	68fb      	ldr	r3, [r7, #12]
     3e2:	3301      	adds	r3, #1
     3e4:	60fb      	str	r3, [r7, #12]
     3e6:	68fa      	ldr	r2, [r7, #12]
     3e8:	697b      	ldr	r3, [r7, #20]
     3ea:	429a      	cmp	r2, r3
     3ec:	d3c7      	bcc.n	37e <stuff+0x26>
     3ee:	687b      	ldr	r3, [r7, #4]
     3f0:	2200      	movs	r2, #0
     3f2:	701a      	strb	r2, [r3, #0]
     3f4:	69fb      	ldr	r3, [r7, #28]
     3f6:	221b      	movs	r2, #27
     3f8:	18ba      	adds	r2, r7, r2
     3fa:	7812      	ldrb	r2, [r2, #0]
     3fc:	701a      	strb	r2, [r3, #0]
     3fe:	687b      	ldr	r3, [r7, #4]
     400:	1c5a      	adds	r2, r3, #1
     402:	607a      	str	r2, [r7, #4]
     404:	61fb      	str	r3, [r7, #28]
     406:	231b      	movs	r3, #27
     408:	18fb      	adds	r3, r7, r3
     40a:	2201      	movs	r2, #1
     40c:	701a      	strb	r2, [r3, #0]
     40e:	46c0      	nop			; (mov r8, r8)
     410:	46bd      	mov	sp, r7
     412:	b008      	add	sp, #32
     414:	bd80      	pop	{r7, pc}
     416:	46c0      	nop			; (mov r8, r8)

00000418 <unstuff>:
     418:	b580      	push	{r7, lr}
     41a:	b088      	sub	sp, #32
     41c:	af00      	add	r7, sp, #0
     41e:	60f8      	str	r0, [r7, #12]
     420:	60b9      	str	r1, [r7, #8]
     422:	607a      	str	r2, [r7, #4]
     424:	68fa      	ldr	r2, [r7, #12]
     426:	68bb      	ldr	r3, [r7, #8]
     428:	18d3      	adds	r3, r2, r3
     42a:	61bb      	str	r3, [r7, #24]
     42c:	e022      	b.n	474 <unstuff+0x5c>
     42e:	68fb      	ldr	r3, [r7, #12]
     430:	1c5a      	adds	r2, r3, #1
     432:	60fa      	str	r2, [r7, #12]
     434:	781b      	ldrb	r3, [r3, #0]
     436:	617b      	str	r3, [r7, #20]
     438:	2301      	movs	r3, #1
     43a:	61fb      	str	r3, [r7, #28]
     43c:	e00a      	b.n	454 <unstuff+0x3c>
     43e:	687b      	ldr	r3, [r7, #4]
     440:	1c5a      	adds	r2, r3, #1
     442:	607a      	str	r2, [r7, #4]
     444:	68fa      	ldr	r2, [r7, #12]
     446:	1c51      	adds	r1, r2, #1
     448:	60f9      	str	r1, [r7, #12]
     44a:	7812      	ldrb	r2, [r2, #0]
     44c:	701a      	strb	r2, [r3, #0]
     44e:	69fb      	ldr	r3, [r7, #28]
     450:	3301      	adds	r3, #1
     452:	61fb      	str	r3, [r7, #28]
     454:	68fa      	ldr	r2, [r7, #12]
     456:	69bb      	ldr	r3, [r7, #24]
     458:	429a      	cmp	r2, r3
     45a:	d203      	bcs.n	464 <unstuff+0x4c>
     45c:	69fa      	ldr	r2, [r7, #28]
     45e:	697b      	ldr	r3, [r7, #20]
     460:	429a      	cmp	r2, r3
     462:	dbec      	blt.n	43e <unstuff+0x26>
     464:	697b      	ldr	r3, [r7, #20]
     466:	2bfe      	cmp	r3, #254	; 0xfe
     468:	dc04      	bgt.n	474 <unstuff+0x5c>
     46a:	687b      	ldr	r3, [r7, #4]
     46c:	1c5a      	adds	r2, r3, #1
     46e:	607a      	str	r2, [r7, #4]
     470:	2200      	movs	r2, #0
     472:	701a      	strb	r2, [r3, #0]
     474:	68fa      	ldr	r2, [r7, #12]
     476:	69bb      	ldr	r3, [r7, #24]
     478:	429a      	cmp	r2, r3
     47a:	d3d8      	bcc.n	42e <unstuff+0x16>
     47c:	46c0      	nop			; (mov r8, r8)
     47e:	46bd      	mov	sp, r7
     480:	b008      	add	sp, #32
     482:	bd80      	pop	{r7, pc}

00000484 <main>:
     484:	b590      	push	{r4, r7, lr}
     486:	b0cd      	sub	sp, #308	; 0x134
     488:	af00      	add	r7, sp, #0
     48a:	2300      	movs	r3, #0
     48c:	2296      	movs	r2, #150	; 0x96
     48e:	0052      	lsls	r2, r2, #1
     490:	18ba      	adds	r2, r7, r2
     492:	6013      	str	r3, [r2, #0]
     494:	2300      	movs	r3, #0
     496:	2294      	movs	r2, #148	; 0x94
     498:	0052      	lsls	r2, r2, #1
     49a:	18ba      	adds	r2, r7, r2
     49c:	6013      	str	r3, [r2, #0]
     49e:	2300      	movs	r3, #0
     4a0:	228e      	movs	r2, #142	; 0x8e
     4a2:	0052      	lsls	r2, r2, #1
     4a4:	18ba      	adds	r2, r7, r2
     4a6:	6013      	str	r3, [r2, #0]
     4a8:	f000 face 	bl	a48 <SystemInit>
     4ac:	4b90      	ldr	r3, [pc, #576]	; (6f0 <main+0x26c>)
     4ae:	4a91      	ldr	r2, [pc, #580]	; (6f4 <main+0x270>)
     4b0:	601a      	str	r2, [r3, #0]
     4b2:	4b91      	ldr	r3, [pc, #580]	; (6f8 <main+0x274>)
     4b4:	681b      	ldr	r3, [r3, #0]
     4b6:	2b00      	cmp	r3, #0
     4b8:	d000      	beq.n	4bc <main+0x38>
     4ba:	e0f2      	b.n	6a2 <main+0x21e>
     4bc:	2397      	movs	r3, #151	; 0x97
     4be:	18fb      	adds	r3, r7, r3
     4c0:	2101      	movs	r1, #1
     4c2:	0018      	movs	r0, r3
     4c4:	f000 fc22 	bl	d0c <uart_read>
     4c8:	1e03      	subs	r3, r0, #0
     4ca:	d100      	bne.n	4ce <main+0x4a>
     4cc:	e0e9      	b.n	6a2 <main+0x21e>
     4ce:	2397      	movs	r3, #151	; 0x97
     4d0:	18fb      	adds	r3, r7, r3
     4d2:	781b      	ldrb	r3, [r3, #0]
     4d4:	2b00      	cmp	r3, #0
     4d6:	d000      	beq.n	4da <main+0x56>
     4d8:	e0cc      	b.n	674 <main+0x1f0>
     4da:	2394      	movs	r3, #148	; 0x94
     4dc:	005b      	lsls	r3, r3, #1
     4de:	18fb      	adds	r3, r7, r3
     4e0:	681b      	ldr	r3, [r3, #0]
     4e2:	3b0b      	subs	r3, #11
     4e4:	227f      	movs	r2, #127	; 0x7f
     4e6:	4013      	ands	r3, r2
     4e8:	2292      	movs	r2, #146	; 0x92
     4ea:	0052      	lsls	r2, r2, #1
     4ec:	18ba      	adds	r2, r7, r2
     4ee:	6013      	str	r3, [r2, #0]
     4f0:	4b82      	ldr	r3, [pc, #520]	; (6fc <main+0x278>)
     4f2:	2290      	movs	r2, #144	; 0x90
     4f4:	0052      	lsls	r2, r2, #1
     4f6:	18ba      	adds	r2, r7, r2
     4f8:	6013      	str	r3, [r2, #0]
     4fa:	2300      	movs	r3, #0
     4fc:	2296      	movs	r2, #150	; 0x96
     4fe:	0052      	lsls	r2, r2, #1
     500:	18ba      	adds	r2, r7, r2
     502:	6013      	str	r3, [r2, #0]
     504:	e027      	b.n	556 <main+0xd2>
     506:	2398      	movs	r3, #152	; 0x98
     508:	18fa      	adds	r2, r7, r3
     50a:	2392      	movs	r3, #146	; 0x92
     50c:	005b      	lsls	r3, r3, #1
     50e:	18fb      	adds	r3, r7, r3
     510:	681b      	ldr	r3, [r3, #0]
     512:	18d3      	adds	r3, r2, r3
     514:	7819      	ldrb	r1, [r3, #0]
     516:	4b7a      	ldr	r3, [pc, #488]	; (700 <main+0x27c>)
     518:	2298      	movs	r2, #152	; 0x98
     51a:	0052      	lsls	r2, r2, #1
     51c:	18ba      	adds	r2, r7, r2
     51e:	18d2      	adds	r2, r2, r3
     520:	2396      	movs	r3, #150	; 0x96
     522:	005b      	lsls	r3, r3, #1
     524:	18fb      	adds	r3, r7, r3
     526:	681b      	ldr	r3, [r3, #0]
     528:	18d3      	adds	r3, r2, r3
     52a:	1c0a      	adds	r2, r1, #0
     52c:	701a      	strb	r2, [r3, #0]
     52e:	2392      	movs	r3, #146	; 0x92
     530:	005b      	lsls	r3, r3, #1
     532:	18fb      	adds	r3, r7, r3
     534:	681b      	ldr	r3, [r3, #0]
     536:	3301      	adds	r3, #1
     538:	227f      	movs	r2, #127	; 0x7f
     53a:	4013      	ands	r3, r2
     53c:	2292      	movs	r2, #146	; 0x92
     53e:	0052      	lsls	r2, r2, #1
     540:	18ba      	adds	r2, r7, r2
     542:	6013      	str	r3, [r2, #0]
     544:	2396      	movs	r3, #150	; 0x96
     546:	005b      	lsls	r3, r3, #1
     548:	18fb      	adds	r3, r7, r3
     54a:	681b      	ldr	r3, [r3, #0]
     54c:	3301      	adds	r3, #1
     54e:	2296      	movs	r2, #150	; 0x96
     550:	0052      	lsls	r2, r2, #1
     552:	18ba      	adds	r2, r7, r2
     554:	6013      	str	r3, [r2, #0]
     556:	2396      	movs	r3, #150	; 0x96
     558:	005b      	lsls	r3, r3, #1
     55a:	18fb      	adds	r3, r7, r3
     55c:	681b      	ldr	r3, [r3, #0]
     55e:	2b0b      	cmp	r3, #11
     560:	ddd1      	ble.n	506 <main+0x82>
     562:	2308      	movs	r3, #8
     564:	18fa      	adds	r2, r7, r3
     566:	2308      	movs	r3, #8
     568:	18fb      	adds	r3, r7, r3
     56a:	210c      	movs	r1, #12
     56c:	0018      	movs	r0, r3
     56e:	f7ff ff53 	bl	418 <unstuff>
     572:	2300      	movs	r3, #0
     574:	2292      	movs	r2, #146	; 0x92
     576:	0052      	lsls	r2, r2, #1
     578:	18ba      	adds	r2, r7, r2
     57a:	6013      	str	r3, [r2, #0]
     57c:	2300      	movs	r3, #0
     57e:	2296      	movs	r2, #150	; 0x96
     580:	0052      	lsls	r2, r2, #1
     582:	18ba      	adds	r2, r7, r2
     584:	6013      	str	r3, [r2, #0]
     586:	e05a      	b.n	63e <main+0x1ba>
     588:	2392      	movs	r3, #146	; 0x92
     58a:	005b      	lsls	r3, r3, #1
     58c:	18fb      	adds	r3, r7, r3
     58e:	681b      	ldr	r3, [r3, #0]
     590:	1c5a      	adds	r2, r3, #1
     592:	2192      	movs	r1, #146	; 0x92
     594:	0049      	lsls	r1, r1, #1
     596:	1879      	adds	r1, r7, r1
     598:	600a      	str	r2, [r1, #0]
     59a:	221c      	movs	r2, #28
     59c:	32ff      	adds	r2, #255	; 0xff
     59e:	18ba      	adds	r2, r7, r2
     5a0:	4957      	ldr	r1, [pc, #348]	; (700 <main+0x27c>)
     5a2:	2098      	movs	r0, #152	; 0x98
     5a4:	0040      	lsls	r0, r0, #1
     5a6:	4684      	mov	ip, r0
     5a8:	44bc      	add	ip, r7
     5aa:	4461      	add	r1, ip
     5ac:	5ccb      	ldrb	r3, [r1, r3]
     5ae:	7013      	strb	r3, [r2, #0]
     5b0:	2392      	movs	r3, #146	; 0x92
     5b2:	005b      	lsls	r3, r3, #1
     5b4:	18fb      	adds	r3, r7, r3
     5b6:	681b      	ldr	r3, [r3, #0]
     5b8:	1c5a      	adds	r2, r3, #1
     5ba:	2192      	movs	r1, #146	; 0x92
     5bc:	0049      	lsls	r1, r1, #1
     5be:	1879      	adds	r1, r7, r1
     5c0:	600a      	str	r2, [r1, #0]
     5c2:	228d      	movs	r2, #141	; 0x8d
     5c4:	0052      	lsls	r2, r2, #1
     5c6:	18ba      	adds	r2, r7, r2
     5c8:	494d      	ldr	r1, [pc, #308]	; (700 <main+0x27c>)
     5ca:	2098      	movs	r0, #152	; 0x98
     5cc:	0040      	lsls	r0, r0, #1
     5ce:	4684      	mov	ip, r0
     5d0:	44bc      	add	ip, r7
     5d2:	4461      	add	r1, ip
     5d4:	5ccb      	ldrb	r3, [r1, r3]
     5d6:	7013      	strb	r3, [r2, #0]
     5d8:	2390      	movs	r3, #144	; 0x90
     5da:	005b      	lsls	r3, r3, #1
     5dc:	18fb      	adds	r3, r7, r3
     5de:	681b      	ldr	r3, [r3, #0]
     5e0:	1d1a      	adds	r2, r3, #4
     5e2:	2190      	movs	r1, #144	; 0x90
     5e4:	0049      	lsls	r1, r1, #1
     5e6:	1879      	adds	r1, r7, r1
     5e8:	600a      	str	r2, [r1, #0]
     5ea:	221c      	movs	r2, #28
     5ec:	32ff      	adds	r2, #255	; 0xff
     5ee:	18ba      	adds	r2, r7, r2
     5f0:	7811      	ldrb	r1, [r2, #0]
     5f2:	228d      	movs	r2, #141	; 0x8d
     5f4:	0052      	lsls	r2, r2, #1
     5f6:	18ba      	adds	r2, r7, r2
     5f8:	7812      	ldrb	r2, [r2, #0]
     5fa:	0212      	lsls	r2, r2, #8
     5fc:	188a      	adds	r2, r1, r2
     5fe:	601a      	str	r2, [r3, #0]
     600:	231c      	movs	r3, #28
     602:	33ff      	adds	r3, #255	; 0xff
     604:	18fb      	adds	r3, r7, r3
     606:	781b      	ldrb	r3, [r3, #0]
     608:	b29a      	uxth	r2, r3
     60a:	238d      	movs	r3, #141	; 0x8d
     60c:	005b      	lsls	r3, r3, #1
     60e:	18fb      	adds	r3, r7, r3
     610:	781b      	ldrb	r3, [r3, #0]
     612:	b29b      	uxth	r3, r3
     614:	021b      	lsls	r3, r3, #8
     616:	b29b      	uxth	r3, r3
     618:	18d3      	adds	r3, r2, r3
     61a:	b299      	uxth	r1, r3
     61c:	2388      	movs	r3, #136	; 0x88
     61e:	18fb      	adds	r3, r7, r3
     620:	2296      	movs	r2, #150	; 0x96
     622:	0052      	lsls	r2, r2, #1
     624:	18ba      	adds	r2, r7, r2
     626:	6812      	ldr	r2, [r2, #0]
     628:	0052      	lsls	r2, r2, #1
     62a:	52d1      	strh	r1, [r2, r3]
     62c:	2396      	movs	r3, #150	; 0x96
     62e:	005b      	lsls	r3, r3, #1
     630:	18fb      	adds	r3, r7, r3
     632:	681b      	ldr	r3, [r3, #0]
     634:	3301      	adds	r3, #1
     636:	2296      	movs	r2, #150	; 0x96
     638:	0052      	lsls	r2, r2, #1
     63a:	18ba      	adds	r2, r7, r2
     63c:	6013      	str	r3, [r2, #0]
     63e:	2396      	movs	r3, #150	; 0x96
     640:	005b      	lsls	r3, r3, #1
     642:	18fb      	adds	r3, r7, r3
     644:	681b      	ldr	r3, [r3, #0]
     646:	2b04      	cmp	r3, #4
     648:	dd9e      	ble.n	588 <main+0x104>
     64a:	4b2b      	ldr	r3, [pc, #172]	; (6f8 <main+0x274>)
     64c:	2202      	movs	r2, #2
     64e:	601a      	str	r2, [r3, #0]
     650:	2388      	movs	r3, #136	; 0x88
     652:	18fb      	adds	r3, r7, r3
     654:	891c      	ldrh	r4, [r3, #8]
     656:	2388      	movs	r3, #136	; 0x88
     658:	18fb      	adds	r3, r7, r3
     65a:	2104      	movs	r1, #4
     65c:	0018      	movs	r0, r3
     65e:	f7ff fd97 	bl	190 <get_checksum>
     662:	0003      	movs	r3, r0
     664:	429c      	cmp	r4, r3
     666:	d005      	beq.n	674 <main+0x1f0>
     668:	4b26      	ldr	r3, [pc, #152]	; (704 <main+0x280>)
     66a:	4a26      	ldr	r2, [pc, #152]	; (704 <main+0x280>)
     66c:	6812      	ldr	r2, [r2, #0]
     66e:	2140      	movs	r1, #64	; 0x40
     670:	404a      	eors	r2, r1
     672:	601a      	str	r2, [r3, #0]
     674:	2397      	movs	r3, #151	; 0x97
     676:	18fb      	adds	r3, r7, r3
     678:	7819      	ldrb	r1, [r3, #0]
     67a:	2398      	movs	r3, #152	; 0x98
     67c:	18fa      	adds	r2, r7, r3
     67e:	2394      	movs	r3, #148	; 0x94
     680:	005b      	lsls	r3, r3, #1
     682:	18fb      	adds	r3, r7, r3
     684:	681b      	ldr	r3, [r3, #0]
     686:	18d3      	adds	r3, r2, r3
     688:	1c0a      	adds	r2, r1, #0
     68a:	701a      	strb	r2, [r3, #0]
     68c:	2394      	movs	r3, #148	; 0x94
     68e:	005b      	lsls	r3, r3, #1
     690:	18fb      	adds	r3, r7, r3
     692:	681b      	ldr	r3, [r3, #0]
     694:	3301      	adds	r3, #1
     696:	227f      	movs	r2, #127	; 0x7f
     698:	4013      	ands	r3, r2
     69a:	2294      	movs	r2, #148	; 0x94
     69c:	0052      	lsls	r2, r2, #1
     69e:	18ba      	adds	r2, r7, r2
     6a0:	6013      	str	r3, [r2, #0]
     6a2:	4b19      	ldr	r3, [pc, #100]	; (708 <main+0x284>)
     6a4:	681b      	ldr	r3, [r3, #0]
     6a6:	2b00      	cmp	r3, #0
     6a8:	d100      	bne.n	6ac <main+0x228>
     6aa:	e702      	b.n	4b2 <main+0x2e>
     6ac:	2308      	movs	r3, #8
     6ae:	18fa      	adds	r2, r7, r3
     6b0:	4b16      	ldr	r3, [pc, #88]	; (70c <main+0x288>)
     6b2:	2140      	movs	r1, #64	; 0x40
     6b4:	0018      	movs	r0, r3
     6b6:	f7ff fe4f 	bl	358 <stuff>
     6ba:	2308      	movs	r3, #8
     6bc:	18fb      	adds	r3, r7, r3
     6be:	2142      	movs	r1, #66	; 0x42
     6c0:	0018      	movs	r0, r3
     6c2:	f000 fb71 	bl	da8 <uart_send>
     6c6:	4b10      	ldr	r3, [pc, #64]	; (708 <main+0x284>)
     6c8:	2200      	movs	r2, #0
     6ca:	601a      	str	r2, [r3, #0]
     6cc:	4b0f      	ldr	r3, [pc, #60]	; (70c <main+0x288>)
     6ce:	8fdc      	ldrh	r4, [r3, #62]	; 0x3e
     6d0:	4b0e      	ldr	r3, [pc, #56]	; (70c <main+0x288>)
     6d2:	211f      	movs	r1, #31
     6d4:	0018      	movs	r0, r3
     6d6:	f7ff fd5b 	bl	190 <get_checksum>
     6da:	0003      	movs	r3, r0
     6dc:	429c      	cmp	r4, r3
     6de:	d100      	bne.n	6e2 <main+0x25e>
     6e0:	e6e7      	b.n	4b2 <main+0x2e>
     6e2:	4b0b      	ldr	r3, [pc, #44]	; (710 <main+0x28c>)
     6e4:	681b      	ldr	r3, [r3, #0]
     6e6:	1c5a      	adds	r2, r3, #1
     6e8:	4b09      	ldr	r3, [pc, #36]	; (710 <main+0x28c>)
     6ea:	601a      	str	r2, [r3, #0]
     6ec:	e6e1      	b.n	4b2 <main+0x2e>
     6ee:	46c0      	nop			; (mov r8, r8)
     6f0:	200040f8 	.word	0x200040f8
     6f4:	00000ce1 	.word	0x00000ce1
     6f8:	200000e0 	.word	0x200000e0
     6fc:	40048080 	.word	0x40048080
     700:	fffffed8 	.word	0xfffffed8
     704:	400c8000 	.word	0x400c8000
     708:	200000e4 	.word	0x200000e4
     70c:	2000004c 	.word	0x2000004c
     710:	200000d8 	.word	0x200000d8

00000714 <PortConfig>:
     714:	b580      	push	{r7, lr}
     716:	af00      	add	r7, sp, #0
     718:	4b5b      	ldr	r3, [pc, #364]	; (888 <PortConfig+0x174>)
     71a:	4a5b      	ldr	r2, [pc, #364]	; (888 <PortConfig+0x174>)
     71c:	69d2      	ldr	r2, [r2, #28]
     71e:	2180      	movs	r1, #128	; 0x80
     720:	0449      	lsls	r1, r1, #17
     722:	430a      	orrs	r2, r1
     724:	61da      	str	r2, [r3, #28]
     726:	4b59      	ldr	r3, [pc, #356]	; (88c <PortConfig+0x178>)
     728:	4a58      	ldr	r2, [pc, #352]	; (88c <PortConfig+0x178>)
     72a:	6892      	ldr	r2, [r2, #8]
     72c:	4958      	ldr	r1, [pc, #352]	; (890 <PortConfig+0x17c>)
     72e:	400a      	ands	r2, r1
     730:	609a      	str	r2, [r3, #8]
     732:	4b56      	ldr	r3, [pc, #344]	; (88c <PortConfig+0x178>)
     734:	4a55      	ldr	r2, [pc, #340]	; (88c <PortConfig+0x178>)
     736:	6892      	ldr	r2, [r2, #8]
     738:	21a0      	movs	r1, #160	; 0xa0
     73a:	0549      	lsls	r1, r1, #21
     73c:	430a      	orrs	r2, r1
     73e:	609a      	str	r2, [r3, #8]
     740:	4b52      	ldr	r3, [pc, #328]	; (88c <PortConfig+0x178>)
     742:	4a52      	ldr	r2, [pc, #328]	; (88c <PortConfig+0x178>)
     744:	68d2      	ldr	r2, [r2, #12]
     746:	21c0      	movs	r1, #192	; 0xc0
     748:	01c9      	lsls	r1, r1, #7
     74a:	430a      	orrs	r2, r1
     74c:	60da      	str	r2, [r3, #12]
     74e:	4b4f      	ldr	r3, [pc, #316]	; (88c <PortConfig+0x178>)
     750:	4a4e      	ldr	r2, [pc, #312]	; (88c <PortConfig+0x178>)
     752:	6992      	ldr	r2, [r2, #24]
     754:	21f0      	movs	r1, #240	; 0xf0
     756:	0589      	lsls	r1, r1, #22
     758:	430a      	orrs	r2, r1
     75a:	619a      	str	r2, [r3, #24]
     75c:	4b4b      	ldr	r3, [pc, #300]	; (88c <PortConfig+0x178>)
     75e:	4a4b      	ldr	r2, [pc, #300]	; (88c <PortConfig+0x178>)
     760:	6812      	ldr	r2, [r2, #0]
     762:	494c      	ldr	r1, [pc, #304]	; (894 <PortConfig+0x180>)
     764:	400a      	ands	r2, r1
     766:	601a      	str	r2, [r3, #0]
     768:	4b47      	ldr	r3, [pc, #284]	; (888 <PortConfig+0x174>)
     76a:	4a47      	ldr	r2, [pc, #284]	; (888 <PortConfig+0x174>)
     76c:	69d2      	ldr	r2, [r2, #28]
     76e:	2180      	movs	r1, #128	; 0x80
     770:	0409      	lsls	r1, r1, #16
     772:	430a      	orrs	r2, r1
     774:	61da      	str	r2, [r3, #28]
     776:	4b44      	ldr	r3, [pc, #272]	; (888 <PortConfig+0x174>)
     778:	4a43      	ldr	r2, [pc, #268]	; (888 <PortConfig+0x174>)
     77a:	69d2      	ldr	r2, [r2, #28]
     77c:	2180      	movs	r1, #128	; 0x80
     77e:	0449      	lsls	r1, r1, #17
     780:	430a      	orrs	r2, r1
     782:	61da      	str	r2, [r3, #28]
     784:	4b44      	ldr	r3, [pc, #272]	; (898 <PortConfig+0x184>)
     786:	4a44      	ldr	r2, [pc, #272]	; (898 <PortConfig+0x184>)
     788:	6892      	ldr	r2, [r2, #8]
     78a:	0192      	lsls	r2, r2, #6
     78c:	0992      	lsrs	r2, r2, #6
     78e:	609a      	str	r2, [r3, #8]
     790:	4b41      	ldr	r3, [pc, #260]	; (898 <PortConfig+0x184>)
     792:	4a41      	ldr	r2, [pc, #260]	; (898 <PortConfig+0x184>)
     794:	6892      	ldr	r2, [r2, #8]
     796:	21a8      	movs	r1, #168	; 0xa8
     798:	05c9      	lsls	r1, r1, #23
     79a:	430a      	orrs	r2, r1
     79c:	609a      	str	r2, [r3, #8]
     79e:	4b3e      	ldr	r3, [pc, #248]	; (898 <PortConfig+0x184>)
     7a0:	4a3d      	ldr	r2, [pc, #244]	; (898 <PortConfig+0x184>)
     7a2:	68d2      	ldr	r2, [r2, #12]
     7a4:	21e0      	movs	r1, #224	; 0xe0
     7a6:	0209      	lsls	r1, r1, #8
     7a8:	430a      	orrs	r2, r1
     7aa:	60da      	str	r2, [r3, #12]
     7ac:	4b3a      	ldr	r3, [pc, #232]	; (898 <PortConfig+0x184>)
     7ae:	4a3a      	ldr	r2, [pc, #232]	; (898 <PortConfig+0x184>)
     7b0:	6992      	ldr	r2, [r2, #24]
     7b2:	21fc      	movs	r1, #252	; 0xfc
     7b4:	0609      	lsls	r1, r1, #24
     7b6:	430a      	orrs	r2, r1
     7b8:	619a      	str	r2, [r3, #24]
     7ba:	4b34      	ldr	r3, [pc, #208]	; (88c <PortConfig+0x178>)
     7bc:	4a33      	ldr	r2, [pc, #204]	; (88c <PortConfig+0x178>)
     7be:	6892      	ldr	r2, [r2, #8]
     7c0:	0b92      	lsrs	r2, r2, #14
     7c2:	0392      	lsls	r2, r2, #14
     7c4:	609a      	str	r2, [r3, #8]
     7c6:	4b31      	ldr	r3, [pc, #196]	; (88c <PortConfig+0x178>)
     7c8:	4a30      	ldr	r2, [pc, #192]	; (88c <PortConfig+0x178>)
     7ca:	6892      	ldr	r2, [r2, #8]
     7cc:	4933      	ldr	r1, [pc, #204]	; (89c <PortConfig+0x188>)
     7ce:	430a      	orrs	r2, r1
     7d0:	609a      	str	r2, [r3, #8]
     7d2:	4b2e      	ldr	r3, [pc, #184]	; (88c <PortConfig+0x178>)
     7d4:	4a2d      	ldr	r2, [pc, #180]	; (88c <PortConfig+0x178>)
     7d6:	68d2      	ldr	r2, [r2, #12]
     7d8:	217f      	movs	r1, #127	; 0x7f
     7da:	430a      	orrs	r2, r1
     7dc:	60da      	str	r2, [r3, #12]
     7de:	4b2b      	ldr	r3, [pc, #172]	; (88c <PortConfig+0x178>)
     7e0:	4a2a      	ldr	r2, [pc, #168]	; (88c <PortConfig+0x178>)
     7e2:	6992      	ldr	r2, [r2, #24]
     7e4:	492e      	ldr	r1, [pc, #184]	; (8a0 <PortConfig+0x18c>)
     7e6:	430a      	orrs	r2, r1
     7e8:	619a      	str	r2, [r3, #24]
     7ea:	4b28      	ldr	r3, [pc, #160]	; (88c <PortConfig+0x178>)
     7ec:	4a27      	ldr	r2, [pc, #156]	; (88c <PortConfig+0x178>)
     7ee:	68d2      	ldr	r2, [r2, #12]
     7f0:	2180      	movs	r1, #128	; 0x80
     7f2:	430a      	orrs	r2, r1
     7f4:	60da      	str	r2, [r3, #12]
     7f6:	4b25      	ldr	r3, [pc, #148]	; (88c <PortConfig+0x178>)
     7f8:	4a24      	ldr	r2, [pc, #144]	; (88c <PortConfig+0x178>)
     7fa:	6852      	ldr	r2, [r2, #4]
     7fc:	2180      	movs	r1, #128	; 0x80
     7fe:	430a      	orrs	r2, r1
     800:	605a      	str	r2, [r3, #4]
     802:	4b22      	ldr	r3, [pc, #136]	; (88c <PortConfig+0x178>)
     804:	4a21      	ldr	r2, [pc, #132]	; (88c <PortConfig+0x178>)
     806:	6892      	ldr	r2, [r2, #8]
     808:	4926      	ldr	r1, [pc, #152]	; (8a4 <PortConfig+0x190>)
     80a:	400a      	ands	r2, r1
     80c:	609a      	str	r2, [r3, #8]
     80e:	4b1f      	ldr	r3, [pc, #124]	; (88c <PortConfig+0x178>)
     810:	4a1e      	ldr	r2, [pc, #120]	; (88c <PortConfig+0x178>)
     812:	6992      	ldr	r2, [r2, #24]
     814:	21c0      	movs	r1, #192	; 0xc0
     816:	0209      	lsls	r1, r1, #8
     818:	430a      	orrs	r2, r1
     81a:	619a      	str	r2, [r3, #24]
     81c:	4b1b      	ldr	r3, [pc, #108]	; (88c <PortConfig+0x178>)
     81e:	4a1b      	ldr	r2, [pc, #108]	; (88c <PortConfig+0x178>)
     820:	6812      	ldr	r2, [r2, #0]
     822:	2180      	movs	r1, #128	; 0x80
     824:	438a      	bics	r2, r1
     826:	601a      	str	r2, [r3, #0]
     828:	4b17      	ldr	r3, [pc, #92]	; (888 <PortConfig+0x174>)
     82a:	4a17      	ldr	r2, [pc, #92]	; (888 <PortConfig+0x174>)
     82c:	69d2      	ldr	r2, [r2, #28]
     82e:	2180      	movs	r1, #128	; 0x80
     830:	0489      	lsls	r1, r1, #18
     832:	430a      	orrs	r2, r1
     834:	61da      	str	r2, [r3, #28]
     836:	4b1c      	ldr	r3, [pc, #112]	; (8a8 <PortConfig+0x194>)
     838:	4a1b      	ldr	r2, [pc, #108]	; (8a8 <PortConfig+0x194>)
     83a:	68d2      	ldr	r2, [r2, #12]
     83c:	218c      	movs	r1, #140	; 0x8c
     83e:	0109      	lsls	r1, r1, #4
     840:	430a      	orrs	r2, r1
     842:	60da      	str	r2, [r3, #12]
     844:	4b18      	ldr	r3, [pc, #96]	; (8a8 <PortConfig+0x194>)
     846:	4a18      	ldr	r2, [pc, #96]	; (8a8 <PortConfig+0x194>)
     848:	6852      	ldr	r2, [r2, #4]
     84a:	218c      	movs	r1, #140	; 0x8c
     84c:	0109      	lsls	r1, r1, #4
     84e:	430a      	orrs	r2, r1
     850:	605a      	str	r2, [r3, #4]
     852:	4b15      	ldr	r3, [pc, #84]	; (8a8 <PortConfig+0x194>)
     854:	4a14      	ldr	r2, [pc, #80]	; (8a8 <PortConfig+0x194>)
     856:	6892      	ldr	r2, [r2, #8]
     858:	4912      	ldr	r1, [pc, #72]	; (8a4 <PortConfig+0x190>)
     85a:	400a      	ands	r2, r1
     85c:	609a      	str	r2, [r3, #8]
     85e:	4b12      	ldr	r3, [pc, #72]	; (8a8 <PortConfig+0x194>)
     860:	4a11      	ldr	r2, [pc, #68]	; (8a8 <PortConfig+0x194>)
     862:	6992      	ldr	r2, [r2, #24]
     864:	4911      	ldr	r1, [pc, #68]	; (8ac <PortConfig+0x198>)
     866:	430a      	orrs	r2, r1
     868:	619a      	str	r2, [r3, #24]
     86a:	4b0f      	ldr	r3, [pc, #60]	; (8a8 <PortConfig+0x194>)
     86c:	4a0e      	ldr	r2, [pc, #56]	; (8a8 <PortConfig+0x194>)
     86e:	6812      	ldr	r2, [r2, #0]
     870:	2180      	movs	r1, #128	; 0x80
     872:	438a      	bics	r2, r1
     874:	601a      	str	r2, [r3, #0]
     876:	4b0c      	ldr	r3, [pc, #48]	; (8a8 <PortConfig+0x194>)
     878:	4a0b      	ldr	r2, [pc, #44]	; (8a8 <PortConfig+0x194>)
     87a:	6812      	ldr	r2, [r2, #0]
     87c:	490c      	ldr	r1, [pc, #48]	; (8b0 <PortConfig+0x19c>)
     87e:	400a      	ands	r2, r1
     880:	601a      	str	r2, [r3, #0]
     882:	46c0      	nop			; (mov r8, r8)
     884:	46bd      	mov	sp, r7
     886:	bd80      	pop	{r7, pc}
     888:	40020000 	.word	0x40020000
     88c:	400c0000 	.word	0x400c0000
     890:	c3ffffff 	.word	0xc3ffffff
     894:	ffff9fff 	.word	0xffff9fff
     898:	400b8000 	.word	0x400b8000
     89c:	00001555 	.word	0x00001555
     8a0:	00003fff 	.word	0x00003fff
     8a4:	ffff3fff 	.word	0xffff3fff
     8a8:	400c8000 	.word	0x400c8000
     8ac:	00c0f000 	.word	0x00c0f000
     8b0:	fffff7ff 	.word	0xfffff7ff

000008b4 <ClkConfig>:
     8b4:	b580      	push	{r7, lr}
     8b6:	af00      	add	r7, sp, #0
     8b8:	4b18      	ldr	r3, [pc, #96]	; (91c <ClkConfig+0x68>)
     8ba:	4a18      	ldr	r2, [pc, #96]	; (91c <ClkConfig+0x68>)
     8bc:	6892      	ldr	r2, [r2, #8]
     8be:	2101      	movs	r1, #1
     8c0:	430a      	orrs	r2, r1
     8c2:	609a      	str	r2, [r3, #8]
     8c4:	46c0      	nop			; (mov r8, r8)
     8c6:	4b15      	ldr	r3, [pc, #84]	; (91c <ClkConfig+0x68>)
     8c8:	681b      	ldr	r3, [r3, #0]
     8ca:	2204      	movs	r2, #4
     8cc:	4013      	ands	r3, r2
     8ce:	d0fa      	beq.n	8c6 <ClkConfig+0x12>
     8d0:	4b12      	ldr	r3, [pc, #72]	; (91c <ClkConfig+0x68>)
     8d2:	4a12      	ldr	r2, [pc, #72]	; (91c <ClkConfig+0x68>)
     8d4:	68d2      	ldr	r2, [r2, #12]
     8d6:	2102      	movs	r1, #2
     8d8:	430a      	orrs	r2, r1
     8da:	60da      	str	r2, [r3, #12]
     8dc:	4b0f      	ldr	r3, [pc, #60]	; (91c <ClkConfig+0x68>)
     8de:	4a10      	ldr	r2, [pc, #64]	; (920 <ClkConfig+0x6c>)
     8e0:	605a      	str	r2, [r3, #4]
     8e2:	46c0      	nop			; (mov r8, r8)
     8e4:	4b0d      	ldr	r3, [pc, #52]	; (91c <ClkConfig+0x68>)
     8e6:	681b      	ldr	r3, [r3, #0]
     8e8:	2202      	movs	r2, #2
     8ea:	4013      	ands	r3, r2
     8ec:	d0fa      	beq.n	8e4 <ClkConfig+0x30>
     8ee:	4b0d      	ldr	r3, [pc, #52]	; (924 <ClkConfig+0x70>)
     8f0:	4a0c      	ldr	r2, [pc, #48]	; (924 <ClkConfig+0x70>)
     8f2:	6812      	ldr	r2, [r2, #0]
     8f4:	2120      	movs	r1, #32
     8f6:	430a      	orrs	r2, r1
     8f8:	601a      	str	r2, [r3, #0]
     8fa:	4b08      	ldr	r3, [pc, #32]	; (91c <ClkConfig+0x68>)
     8fc:	4a07      	ldr	r2, [pc, #28]	; (91c <ClkConfig+0x68>)
     8fe:	68d2      	ldr	r2, [r2, #12]
     900:	2180      	movs	r1, #128	; 0x80
     902:	0049      	lsls	r1, r1, #1
     904:	430a      	orrs	r2, r1
     906:	60da      	str	r2, [r3, #12]
     908:	4b04      	ldr	r3, [pc, #16]	; (91c <ClkConfig+0x68>)
     90a:	4a04      	ldr	r2, [pc, #16]	; (91c <ClkConfig+0x68>)
     90c:	68d2      	ldr	r2, [r2, #12]
     90e:	2104      	movs	r1, #4
     910:	430a      	orrs	r2, r1
     912:	60da      	str	r2, [r3, #12]
     914:	46c0      	nop			; (mov r8, r8)
     916:	46bd      	mov	sp, r7
     918:	bd80      	pop	{r7, pc}
     91a:	46c0      	nop			; (mov r8, r8)
     91c:	40020000 	.word	0x40020000
     920:	00000b04 	.word	0x00000b04
     924:	40018000 	.word	0x40018000

00000928 <TimerConfig>:
     928:	b580      	push	{r7, lr}
     92a:	af00      	add	r7, sp, #0
     92c:	4b17      	ldr	r3, [pc, #92]	; (98c <TimerConfig+0x64>)
     92e:	4a17      	ldr	r2, [pc, #92]	; (98c <TimerConfig+0x64>)
     930:	69d2      	ldr	r2, [r2, #28]
     932:	2180      	movs	r1, #128	; 0x80
     934:	0309      	lsls	r1, r1, #12
     936:	430a      	orrs	r2, r1
     938:	61da      	str	r2, [r3, #28]
     93a:	4b14      	ldr	r3, [pc, #80]	; (98c <TimerConfig+0x64>)
     93c:	4a13      	ldr	r2, [pc, #76]	; (98c <TimerConfig+0x64>)
     93e:	6a92      	ldr	r2, [r2, #40]	; 0x28
     940:	2180      	movs	r1, #128	; 0x80
     942:	04c9      	lsls	r1, r1, #19
     944:	430a      	orrs	r2, r1
     946:	629a      	str	r2, [r3, #40]	; 0x28
     948:	4b10      	ldr	r3, [pc, #64]	; (98c <TimerConfig+0x64>)
     94a:	4a10      	ldr	r2, [pc, #64]	; (98c <TimerConfig+0x64>)
     94c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     94e:	4910      	ldr	r1, [pc, #64]	; (990 <TimerConfig+0x68>)
     950:	400a      	ands	r2, r1
     952:	629a      	str	r2, [r3, #40]	; 0x28
     954:	4b0f      	ldr	r3, [pc, #60]	; (994 <TimerConfig+0x6c>)
     956:	2200      	movs	r2, #0
     958:	601a      	str	r2, [r3, #0]
     95a:	4b0e      	ldr	r3, [pc, #56]	; (994 <TimerConfig+0x6c>)
     95c:	225f      	movs	r2, #95	; 0x5f
     95e:	605a      	str	r2, [r3, #4]
     960:	4b0c      	ldr	r3, [pc, #48]	; (994 <TimerConfig+0x6c>)
     962:	4a0d      	ldr	r2, [pc, #52]	; (998 <TimerConfig+0x70>)
     964:	609a      	str	r2, [r3, #8]
     966:	4b0b      	ldr	r3, [pc, #44]	; (994 <TimerConfig+0x6c>)
     968:	22fa      	movs	r2, #250	; 0xfa
     96a:	00d2      	lsls	r2, r2, #3
     96c:	611a      	str	r2, [r3, #16]
     96e:	4b09      	ldr	r3, [pc, #36]	; (994 <TimerConfig+0x6c>)
     970:	4a08      	ldr	r2, [pc, #32]	; (994 <TimerConfig+0x6c>)
     972:	6d92      	ldr	r2, [r2, #88]	; 0x58
     974:	2102      	movs	r1, #2
     976:	430a      	orrs	r2, r1
     978:	659a      	str	r2, [r3, #88]	; 0x58
     97a:	4b06      	ldr	r3, [pc, #24]	; (994 <TimerConfig+0x6c>)
     97c:	2201      	movs	r2, #1
     97e:	60da      	str	r2, [r3, #12]
     980:	200d      	movs	r0, #13
     982:	f7ff fb9d 	bl	c0 <NVIC_EnableIRQ>
     986:	46c0      	nop			; (mov r8, r8)
     988:	46bd      	mov	sp, r7
     98a:	bd80      	pop	{r7, pc}
     98c:	40020000 	.word	0x40020000
     990:	ff00ffff 	.word	0xff00ffff
     994:	40098000 	.word	0x40098000
     998:	000009c3 	.word	0x000009c3

0000099c <mil_std_1533_init_bc>:
     99c:	b580      	push	{r7, lr}
     99e:	b082      	sub	sp, #8
     9a0:	af00      	add	r7, sp, #0
     9a2:	4b23      	ldr	r3, [pc, #140]	; (a30 <mil_std_1533_init_bc+0x94>)
     9a4:	603b      	str	r3, [r7, #0]
     9a6:	4b23      	ldr	r3, [pc, #140]	; (a34 <mil_std_1533_init_bc+0x98>)
     9a8:	4a22      	ldr	r2, [pc, #136]	; (a34 <mil_std_1533_init_bc+0x98>)
     9aa:	69d2      	ldr	r2, [r2, #28]
     9ac:	2180      	movs	r1, #128	; 0x80
     9ae:	0089      	lsls	r1, r1, #2
     9b0:	430a      	orrs	r2, r1
     9b2:	61da      	str	r2, [r3, #28]
     9b4:	4b1f      	ldr	r3, [pc, #124]	; (a34 <mil_std_1533_init_bc+0x98>)
     9b6:	4a1f      	ldr	r2, [pc, #124]	; (a34 <mil_std_1533_init_bc+0x98>)
     9b8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     9ba:	491f      	ldr	r1, [pc, #124]	; (a38 <mil_std_1533_init_bc+0x9c>)
     9bc:	430a      	orrs	r2, r1
     9be:	635a      	str	r2, [r3, #52]	; 0x34
     9c0:	4a1e      	ldr	r2, [pc, #120]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9c2:	2380      	movs	r3, #128	; 0x80
     9c4:	015b      	lsls	r3, r3, #5
     9c6:	2101      	movs	r1, #1
     9c8:	50d1      	str	r1, [r2, r3]
     9ca:	4a1c      	ldr	r2, [pc, #112]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9cc:	2380      	movs	r3, #128	; 0x80
     9ce:	015b      	lsls	r3, r3, #5
     9d0:	491b      	ldr	r1, [pc, #108]	; (a40 <mil_std_1533_init_bc+0xa4>)
     9d2:	50d1      	str	r1, [r2, r3]
     9d4:	4919      	ldr	r1, [pc, #100]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9d6:	4a19      	ldr	r2, [pc, #100]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9d8:	2381      	movs	r3, #129	; 0x81
     9da:	015b      	lsls	r3, r3, #5
     9dc:	58d3      	ldr	r3, [r2, r3]
     9de:	2208      	movs	r2, #8
     9e0:	431a      	orrs	r2, r3
     9e2:	2381      	movs	r3, #129	; 0x81
     9e4:	015b      	lsls	r3, r3, #5
     9e6:	50ca      	str	r2, [r1, r3]
     9e8:	4914      	ldr	r1, [pc, #80]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9ea:	4a14      	ldr	r2, [pc, #80]	; (a3c <mil_std_1533_init_bc+0xa0>)
     9ec:	2381      	movs	r3, #129	; 0x81
     9ee:	015b      	lsls	r3, r3, #5
     9f0:	58d3      	ldr	r3, [r2, r3]
     9f2:	2204      	movs	r2, #4
     9f4:	431a      	orrs	r2, r3
     9f6:	2381      	movs	r3, #129	; 0x81
     9f8:	015b      	lsls	r3, r3, #5
     9fa:	50ca      	str	r2, [r1, r3]
     9fc:	2001      	movs	r0, #1
     9fe:	f7ff fb5f 	bl	c0 <NVIC_EnableIRQ>
     a02:	4a0e      	ldr	r2, [pc, #56]	; (a3c <mil_std_1533_init_bc+0xa0>)
     a04:	4b0f      	ldr	r3, [pc, #60]	; (a44 <mil_std_1533_init_bc+0xa8>)
     a06:	2100      	movs	r1, #0
     a08:	50d1      	str	r1, [r2, r3]
     a0a:	2300      	movs	r3, #0
     a0c:	607b      	str	r3, [r7, #4]
     a0e:	e008      	b.n	a22 <mil_std_1533_init_bc+0x86>
     a10:	683b      	ldr	r3, [r7, #0]
     a12:	1d1a      	adds	r2, r3, #4
     a14:	603a      	str	r2, [r7, #0]
     a16:	687a      	ldr	r2, [r7, #4]
     a18:	b292      	uxth	r2, r2
     a1a:	601a      	str	r2, [r3, #0]
     a1c:	687b      	ldr	r3, [r7, #4]
     a1e:	3301      	adds	r3, #1
     a20:	607b      	str	r3, [r7, #4]
     a22:	687b      	ldr	r3, [r7, #4]
     a24:	2b1f      	cmp	r3, #31
     a26:	ddf3      	ble.n	a10 <mil_std_1533_init_bc+0x74>
     a28:	46c0      	nop			; (mov r8, r8)
     a2a:	46bd      	mov	sp, r7
     a2c:	b002      	add	sp, #8
     a2e:	bd80      	pop	{r7, pc}
     a30:	40048080 	.word	0x40048080
     a34:	40020000 	.word	0x40020000
     a38:	02000100 	.word	0x02000100
     a3c:	40048000 	.word	0x40048000
     a40:	00018014 	.word	0x00018014
     a44:	0000100c 	.word	0x0000100c

00000a48 <SystemInit>:
     a48:	b580      	push	{r7, lr}
     a4a:	af00      	add	r7, sp, #0
     a4c:	f7ff ff32 	bl	8b4 <ClkConfig>
     a50:	f7ff fe60 	bl	714 <PortConfig>
     a54:	f7ff ff68 	bl	928 <TimerConfig>
     a58:	f000 f902 	bl	c60 <uart_init>
     a5c:	f7ff ff9e 	bl	99c <mil_std_1533_init_bc>
     a60:	46c0      	nop			; (mov r8, r8)
     a62:	46bd      	mov	sp, r7
     a64:	bd80      	pop	{r7, pc}
     a66:	46c0      	nop			; (mov r8, r8)

00000a68 <SysTick_Handler>:
     a68:	b580      	push	{r7, lr}
     a6a:	af00      	add	r7, sp, #0
     a6c:	4b03      	ldr	r3, [pc, #12]	; (a7c <SysTick_Handler+0x14>)
     a6e:	681b      	ldr	r3, [r3, #0]
     a70:	1c5a      	adds	r2, r3, #1
     a72:	4b02      	ldr	r3, [pc, #8]	; (a7c <SysTick_Handler+0x14>)
     a74:	601a      	str	r2, [r3, #0]
     a76:	46c0      	nop			; (mov r8, r8)
     a78:	46bd      	mov	sp, r7
     a7a:	bd80      	pop	{r7, pc}
     a7c:	200000dc 	.word	0x200000dc

00000a80 <TIMER4_Handler>:
     a80:	b580      	push	{r7, lr}
     a82:	af00      	add	r7, sp, #0
     a84:	4b24      	ldr	r3, [pc, #144]	; (b18 <TIMER4_Handler+0x98>)
     a86:	2200      	movs	r2, #0
     a88:	655a      	str	r2, [r3, #84]	; 0x54
     a8a:	4b24      	ldr	r3, [pc, #144]	; (b1c <TIMER4_Handler+0x9c>)
     a8c:	4a23      	ldr	r2, [pc, #140]	; (b1c <TIMER4_Handler+0x9c>)
     a8e:	6812      	ldr	r2, [r2, #0]
     a90:	2180      	movs	r1, #128	; 0x80
     a92:	404a      	eors	r2, r1
     a94:	601a      	str	r2, [r3, #0]
     a96:	4b22      	ldr	r3, [pc, #136]	; (b20 <TIMER4_Handler+0xa0>)
     a98:	681b      	ldr	r3, [r3, #0]
     a9a:	2b01      	cmp	r3, #1
     a9c:	d01d      	beq.n	ada <TIMER4_Handler+0x5a>
     a9e:	2b02      	cmp	r3, #2
     aa0:	d000      	beq.n	aa4 <TIMER4_Handler+0x24>
     aa2:	e035      	b.n	b10 <TIMER4_Handler+0x90>
     aa4:	4b1e      	ldr	r3, [pc, #120]	; (b20 <TIMER4_Handler+0xa0>)
     aa6:	681b      	ldr	r3, [r3, #0]
     aa8:	1e5a      	subs	r2, r3, #1
     aaa:	4b1d      	ldr	r3, [pc, #116]	; (b20 <TIMER4_Handler+0xa0>)
     aac:	601a      	str	r2, [r3, #0]
     aae:	491d      	ldr	r1, [pc, #116]	; (b24 <TIMER4_Handler+0xa4>)
     ab0:	4a1c      	ldr	r2, [pc, #112]	; (b24 <TIMER4_Handler+0xa4>)
     ab2:	4b1d      	ldr	r3, [pc, #116]	; (b28 <TIMER4_Handler+0xa8>)
     ab4:	58d3      	ldr	r3, [r2, r3]
     ab6:	4a1d      	ldr	r2, [pc, #116]	; (b2c <TIMER4_Handler+0xac>)
     ab8:	4313      	orrs	r3, r2
     aba:	4a1b      	ldr	r2, [pc, #108]	; (b28 <TIMER4_Handler+0xa8>)
     abc:	508b      	str	r3, [r1, r2]
     abe:	4919      	ldr	r1, [pc, #100]	; (b24 <TIMER4_Handler+0xa4>)
     ac0:	4a18      	ldr	r2, [pc, #96]	; (b24 <TIMER4_Handler+0xa4>)
     ac2:	2380      	movs	r3, #128	; 0x80
     ac4:	015b      	lsls	r3, r3, #5
     ac6:	58d3      	ldr	r3, [r2, r3]
     ac8:	2202      	movs	r2, #2
     aca:	431a      	orrs	r2, r3
     acc:	2380      	movs	r3, #128	; 0x80
     ace:	015b      	lsls	r3, r3, #5
     ad0:	50ca      	str	r2, [r1, r3]
     ad2:	4b17      	ldr	r3, [pc, #92]	; (b30 <TIMER4_Handler+0xb0>)
     ad4:	4a17      	ldr	r2, [pc, #92]	; (b34 <TIMER4_Handler+0xb4>)
     ad6:	601a      	str	r2, [r3, #0]
     ad8:	e01a      	b.n	b10 <TIMER4_Handler+0x90>
     ada:	4b11      	ldr	r3, [pc, #68]	; (b20 <TIMER4_Handler+0xa0>)
     adc:	681b      	ldr	r3, [r3, #0]
     ade:	1e5a      	subs	r2, r3, #1
     ae0:	4b0f      	ldr	r3, [pc, #60]	; (b20 <TIMER4_Handler+0xa0>)
     ae2:	601a      	str	r2, [r3, #0]
     ae4:	490f      	ldr	r1, [pc, #60]	; (b24 <TIMER4_Handler+0xa4>)
     ae6:	4a0f      	ldr	r2, [pc, #60]	; (b24 <TIMER4_Handler+0xa4>)
     ae8:	4b0f      	ldr	r3, [pc, #60]	; (b28 <TIMER4_Handler+0xa8>)
     aea:	58d3      	ldr	r3, [r2, r3]
     aec:	4a12      	ldr	r2, [pc, #72]	; (b38 <TIMER4_Handler+0xb8>)
     aee:	4313      	orrs	r3, r2
     af0:	4a0d      	ldr	r2, [pc, #52]	; (b28 <TIMER4_Handler+0xa8>)
     af2:	508b      	str	r3, [r1, r2]
     af4:	490b      	ldr	r1, [pc, #44]	; (b24 <TIMER4_Handler+0xa4>)
     af6:	4a0b      	ldr	r2, [pc, #44]	; (b24 <TIMER4_Handler+0xa4>)
     af8:	2380      	movs	r3, #128	; 0x80
     afa:	015b      	lsls	r3, r3, #5
     afc:	58d3      	ldr	r3, [r2, r3]
     afe:	2202      	movs	r2, #2
     b00:	431a      	orrs	r2, r3
     b02:	2380      	movs	r3, #128	; 0x80
     b04:	015b      	lsls	r3, r3, #5
     b06:	50ca      	str	r2, [r1, r3]
     b08:	4b09      	ldr	r3, [pc, #36]	; (b30 <TIMER4_Handler+0xb0>)
     b0a:	4a0c      	ldr	r2, [pc, #48]	; (b3c <TIMER4_Handler+0xbc>)
     b0c:	601a      	str	r2, [r3, #0]
     b0e:	46c0      	nop			; (mov r8, r8)
     b10:	46c0      	nop			; (mov r8, r8)
     b12:	46bd      	mov	sp, r7
     b14:	bd80      	pop	{r7, pc}
     b16:	46c0      	nop			; (mov r8, r8)
     b18:	40098000 	.word	0x40098000
     b1c:	400c0000 	.word	0x400c0000
     b20:	200000e0 	.word	0x200000e0
     b24:	40048000 	.word	0x40048000
     b28:	0000100c 	.word	0x0000100c
     b2c:	00004025 	.word	0x00004025
     b30:	20000048 	.word	0x20000048
     b34:	000000f9 	.word	0x000000f9
     b38:	00004420 	.word	0x00004420
     b3c:	00000105 	.word	0x00000105

00000b40 <MIL_STD_1553B1_Handler>:
     b40:	b580      	push	{r7, lr}
     b42:	b082      	sub	sp, #8
     b44:	af00      	add	r7, sp, #0
     b46:	4a10      	ldr	r2, [pc, #64]	; (b88 <MIL_STD_1553B1_Handler+0x48>)
     b48:	4b10      	ldr	r3, [pc, #64]	; (b8c <MIL_STD_1553B1_Handler+0x4c>)
     b4a:	58d3      	ldr	r3, [r2, r3]
     b4c:	2208      	movs	r2, #8
     b4e:	4013      	ands	r3, r2
     b50:	d008      	beq.n	b64 <MIL_STD_1553B1_Handler+0x24>
     b52:	4a0d      	ldr	r2, [pc, #52]	; (b88 <MIL_STD_1553B1_Handler+0x48>)
     b54:	4b0e      	ldr	r3, [pc, #56]	; (b90 <MIL_STD_1553B1_Handler+0x50>)
     b56:	58d3      	ldr	r3, [r2, r3]
     b58:	607b      	str	r3, [r7, #4]
     b5a:	4b0e      	ldr	r3, [pc, #56]	; (b94 <MIL_STD_1553B1_Handler+0x54>)
     b5c:	681b      	ldr	r3, [r3, #0]
     b5e:	1c5a      	adds	r2, r3, #1
     b60:	4b0c      	ldr	r3, [pc, #48]	; (b94 <MIL_STD_1553B1_Handler+0x54>)
     b62:	601a      	str	r2, [r3, #0]
     b64:	4a08      	ldr	r2, [pc, #32]	; (b88 <MIL_STD_1553B1_Handler+0x48>)
     b66:	4b09      	ldr	r3, [pc, #36]	; (b8c <MIL_STD_1553B1_Handler+0x4c>)
     b68:	58d3      	ldr	r3, [r2, r3]
     b6a:	2204      	movs	r2, #4
     b6c:	4013      	ands	r3, r2
     b6e:	d007      	beq.n	b80 <MIL_STD_1553B1_Handler+0x40>
     b70:	4b09      	ldr	r3, [pc, #36]	; (b98 <MIL_STD_1553B1_Handler+0x58>)
     b72:	681b      	ldr	r3, [r3, #0]
     b74:	4798      	blx	r3
     b76:	4b09      	ldr	r3, [pc, #36]	; (b9c <MIL_STD_1553B1_Handler+0x5c>)
     b78:	681b      	ldr	r3, [r3, #0]
     b7a:	1c5a      	adds	r2, r3, #1
     b7c:	4b07      	ldr	r3, [pc, #28]	; (b9c <MIL_STD_1553B1_Handler+0x5c>)
     b7e:	601a      	str	r2, [r3, #0]
     b80:	46c0      	nop			; (mov r8, r8)
     b82:	46bd      	mov	sp, r7
     b84:	b002      	add	sp, #8
     b86:	bd80      	pop	{r7, pc}
     b88:	40048000 	.word	0x40048000
     b8c:	00001004 	.word	0x00001004
     b90:	00001008 	.word	0x00001008
     b94:	200000d0 	.word	0x200000d0
     b98:	20000048 	.word	0x20000048
     b9c:	200000d4 	.word	0x200000d4

00000ba0 <handler_reset>:
     ba0:	b580      	push	{r7, lr}
     ba2:	b082      	sub	sp, #8
     ba4:	af00      	add	r7, sp, #0
     ba6:	4b11      	ldr	r3, [pc, #68]	; (bec <handler_reset+0x4c>)
     ba8:	607b      	str	r3, [r7, #4]
     baa:	4b11      	ldr	r3, [pc, #68]	; (bf0 <handler_reset+0x50>)
     bac:	603b      	str	r3, [r7, #0]
     bae:	e007      	b.n	bc0 <handler_reset+0x20>
     bb0:	683b      	ldr	r3, [r7, #0]
     bb2:	1d1a      	adds	r2, r3, #4
     bb4:	603a      	str	r2, [r7, #0]
     bb6:	687a      	ldr	r2, [r7, #4]
     bb8:	1d11      	adds	r1, r2, #4
     bba:	6079      	str	r1, [r7, #4]
     bbc:	6812      	ldr	r2, [r2, #0]
     bbe:	601a      	str	r2, [r3, #0]
     bc0:	683a      	ldr	r2, [r7, #0]
     bc2:	4b0c      	ldr	r3, [pc, #48]	; (bf4 <handler_reset+0x54>)
     bc4:	429a      	cmp	r2, r3
     bc6:	d3f3      	bcc.n	bb0 <handler_reset+0x10>
     bc8:	4b0b      	ldr	r3, [pc, #44]	; (bf8 <handler_reset+0x58>)
     bca:	603b      	str	r3, [r7, #0]
     bcc:	e004      	b.n	bd8 <handler_reset+0x38>
     bce:	683b      	ldr	r3, [r7, #0]
     bd0:	1d1a      	adds	r2, r3, #4
     bd2:	603a      	str	r2, [r7, #0]
     bd4:	2200      	movs	r2, #0
     bd6:	601a      	str	r2, [r3, #0]
     bd8:	683a      	ldr	r2, [r7, #0]
     bda:	4b08      	ldr	r3, [pc, #32]	; (bfc <handler_reset+0x5c>)
     bdc:	429a      	cmp	r2, r3
     bde:	d3f6      	bcc.n	bce <handler_reset+0x2e>
     be0:	f7ff fc50 	bl	484 <main>
     be4:	46c0      	nop			; (mov r8, r8)
     be6:	46bd      	mov	sp, r7
     be8:	b002      	add	sp, #8
     bea:	bd80      	pop	{r7, pc}
     bec:	000018cc 	.word	0x000018cc
     bf0:	20000000 	.word	0x20000000
     bf4:	2000004c 	.word	0x2000004c
     bf8:	2000004c 	.word	0x2000004c
     bfc:	20004104 	.word	0x20004104

00000c00 <default_handler>:
     c00:	b580      	push	{r7, lr}
     c02:	af00      	add	r7, sp, #0
     c04:	e7fe      	b.n	c04 <default_handler+0x4>
     c06:	46c0      	nop			; (mov r8, r8)

00000c08 <NVIC_EnableIRQ>:
     c08:	b580      	push	{r7, lr}
     c0a:	b082      	sub	sp, #8
     c0c:	af00      	add	r7, sp, #0
     c0e:	0002      	movs	r2, r0
     c10:	1dfb      	adds	r3, r7, #7
     c12:	701a      	strb	r2, [r3, #0]
     c14:	4909      	ldr	r1, [pc, #36]	; (c3c <NVIC_EnableIRQ+0x34>)
     c16:	1dfb      	adds	r3, r7, #7
     c18:	781b      	ldrb	r3, [r3, #0]
     c1a:	b25b      	sxtb	r3, r3
     c1c:	095b      	lsrs	r3, r3, #5
     c1e:	1dfa      	adds	r2, r7, #7
     c20:	7812      	ldrb	r2, [r2, #0]
     c22:	0010      	movs	r0, r2
     c24:	221f      	movs	r2, #31
     c26:	4002      	ands	r2, r0
     c28:	2001      	movs	r0, #1
     c2a:	4090      	lsls	r0, r2
     c2c:	0002      	movs	r2, r0
     c2e:	009b      	lsls	r3, r3, #2
     c30:	505a      	str	r2, [r3, r1]
     c32:	46c0      	nop			; (mov r8, r8)
     c34:	46bd      	mov	sp, r7
     c36:	b002      	add	sp, #8
     c38:	bd80      	pop	{r7, pc}
     c3a:	46c0      	nop			; (mov r8, r8)
     c3c:	e000e100 	.word	0xe000e100

00000c40 <uart_bsz>:
     c40:	b580      	push	{r7, lr}
     c42:	af00      	add	r7, sp, #0
     c44:	4b04      	ldr	r3, [pc, #16]	; (c58 <uart_bsz+0x18>)
     c46:	681a      	ldr	r2, [r3, #0]
     c48:	4b04      	ldr	r3, [pc, #16]	; (c5c <uart_bsz+0x1c>)
     c4a:	681b      	ldr	r3, [r3, #0]
     c4c:	1ad3      	subs	r3, r2, r3
     c4e:	04db      	lsls	r3, r3, #19
     c50:	0cdb      	lsrs	r3, r3, #19
     c52:	0018      	movs	r0, r3
     c54:	46bd      	mov	sp, r7
     c56:	bd80      	pop	{r7, pc}
     c58:	200040f0 	.word	0x200040f0
     c5c:	200040f4 	.word	0x200040f4

00000c60 <uart_init>:
     c60:	b580      	push	{r7, lr}
     c62:	af00      	add	r7, sp, #0
     c64:	4b1b      	ldr	r3, [pc, #108]	; (cd4 <uart_init+0x74>)
     c66:	4a1b      	ldr	r2, [pc, #108]	; (cd4 <uart_init+0x74>)
     c68:	69d2      	ldr	r2, [r2, #28]
     c6a:	2180      	movs	r1, #128	; 0x80
     c6c:	430a      	orrs	r2, r1
     c6e:	61da      	str	r2, [r3, #28]
     c70:	4b18      	ldr	r3, [pc, #96]	; (cd4 <uart_init+0x74>)
     c72:	4a18      	ldr	r2, [pc, #96]	; (cd4 <uart_init+0x74>)
     c74:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c76:	2180      	movs	r1, #128	; 0x80
     c78:	0489      	lsls	r1, r1, #18
     c7a:	430a      	orrs	r2, r1
     c7c:	629a      	str	r2, [r3, #40]	; 0x28
     c7e:	4b16      	ldr	r3, [pc, #88]	; (cd8 <uart_init+0x78>)
     c80:	220c      	movs	r2, #12
     c82:	625a      	str	r2, [r3, #36]	; 0x24
     c84:	4b14      	ldr	r3, [pc, #80]	; (cd8 <uart_init+0x78>)
     c86:	2200      	movs	r2, #0
     c88:	629a      	str	r2, [r3, #40]	; 0x28
     c8a:	4b13      	ldr	r3, [pc, #76]	; (cd8 <uart_init+0x78>)
     c8c:	4a12      	ldr	r2, [pc, #72]	; (cd8 <uart_init+0x78>)
     c8e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     c90:	213f      	movs	r1, #63	; 0x3f
     c92:	438a      	bics	r2, r1
     c94:	635a      	str	r2, [r3, #52]	; 0x34
     c96:	4b10      	ldr	r3, [pc, #64]	; (cd8 <uart_init+0x78>)
     c98:	4a0f      	ldr	r2, [pc, #60]	; (cd8 <uart_init+0x78>)
     c9a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     c9c:	2124      	movs	r1, #36	; 0x24
     c9e:	430a      	orrs	r2, r1
     ca0:	635a      	str	r2, [r3, #52]	; 0x34
     ca2:	4b0d      	ldr	r3, [pc, #52]	; (cd8 <uart_init+0x78>)
     ca4:	4a0c      	ldr	r2, [pc, #48]	; (cd8 <uart_init+0x78>)
     ca6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ca8:	2160      	movs	r1, #96	; 0x60
     caa:	430a      	orrs	r2, r1
     cac:	62da      	str	r2, [r3, #44]	; 0x2c
     cae:	4b0a      	ldr	r3, [pc, #40]	; (cd8 <uart_init+0x78>)
     cb0:	4a09      	ldr	r2, [pc, #36]	; (cd8 <uart_init+0x78>)
     cb2:	6b12      	ldr	r2, [r2, #48]	; 0x30
     cb4:	4909      	ldr	r1, [pc, #36]	; (cdc <uart_init+0x7c>)
     cb6:	430a      	orrs	r2, r1
     cb8:	631a      	str	r2, [r3, #48]	; 0x30
     cba:	4b07      	ldr	r3, [pc, #28]	; (cd8 <uart_init+0x78>)
     cbc:	4a06      	ldr	r2, [pc, #24]	; (cd8 <uart_init+0x78>)
     cbe:	6b92      	ldr	r2, [r2, #56]	; 0x38
     cc0:	2110      	movs	r1, #16
     cc2:	430a      	orrs	r2, r1
     cc4:	639a      	str	r2, [r3, #56]	; 0x38
     cc6:	2007      	movs	r0, #7
     cc8:	f7ff ff9e 	bl	c08 <NVIC_EnableIRQ>
     ccc:	46c0      	nop			; (mov r8, r8)
     cce:	46bd      	mov	sp, r7
     cd0:	bd80      	pop	{r7, pc}
     cd2:	46c0      	nop			; (mov r8, r8)
     cd4:	40020000 	.word	0x40020000
     cd8:	40038000 	.word	0x40038000
     cdc:	00000301 	.word	0x00000301

00000ce0 <uart_putch>:
     ce0:	b580      	push	{r7, lr}
     ce2:	b082      	sub	sp, #8
     ce4:	af00      	add	r7, sp, #0
     ce6:	0002      	movs	r2, r0
     ce8:	1dfb      	adds	r3, r7, #7
     cea:	701a      	strb	r2, [r3, #0]
     cec:	46c0      	nop			; (mov r8, r8)
     cee:	4b06      	ldr	r3, [pc, #24]	; (d08 <uart_putch+0x28>)
     cf0:	699b      	ldr	r3, [r3, #24]
     cf2:	2220      	movs	r2, #32
     cf4:	4013      	ands	r3, r2
     cf6:	d1fa      	bne.n	cee <uart_putch+0xe>
     cf8:	4b03      	ldr	r3, [pc, #12]	; (d08 <uart_putch+0x28>)
     cfa:	1dfa      	adds	r2, r7, #7
     cfc:	7812      	ldrb	r2, [r2, #0]
     cfe:	601a      	str	r2, [r3, #0]
     d00:	46c0      	nop			; (mov r8, r8)
     d02:	46bd      	mov	sp, r7
     d04:	b002      	add	sp, #8
     d06:	bd80      	pop	{r7, pc}
     d08:	40038000 	.word	0x40038000

00000d0c <uart_read>:
     d0c:	b580      	push	{r7, lr}
     d0e:	b084      	sub	sp, #16
     d10:	af00      	add	r7, sp, #0
     d12:	6078      	str	r0, [r7, #4]
     d14:	6039      	str	r1, [r7, #0]
     d16:	4b1f      	ldr	r3, [pc, #124]	; (d94 <uart_read+0x88>)
     d18:	681a      	ldr	r2, [r3, #0]
     d1a:	4b1f      	ldr	r3, [pc, #124]	; (d98 <uart_read+0x8c>)
     d1c:	681b      	ldr	r3, [r3, #0]
     d1e:	429a      	cmp	r2, r3
     d20:	d101      	bne.n	d26 <uart_read+0x1a>
     d22:	2300      	movs	r3, #0
     d24:	e031      	b.n	d8a <uart_read+0x7e>
     d26:	2300      	movs	r3, #0
     d28:	60fb      	str	r3, [r7, #12]
     d2a:	e01b      	b.n	d64 <uart_read+0x58>
     d2c:	68fb      	ldr	r3, [r7, #12]
     d2e:	687a      	ldr	r2, [r7, #4]
     d30:	18d2      	adds	r2, r2, r3
     d32:	4b18      	ldr	r3, [pc, #96]	; (d94 <uart_read+0x88>)
     d34:	681b      	ldr	r3, [r3, #0]
     d36:	4919      	ldr	r1, [pc, #100]	; (d9c <uart_read+0x90>)
     d38:	5ccb      	ldrb	r3, [r1, r3]
     d3a:	7013      	strb	r3, [r2, #0]
     d3c:	4b15      	ldr	r3, [pc, #84]	; (d94 <uart_read+0x88>)
     d3e:	681b      	ldr	r3, [r3, #0]
     d40:	3301      	adds	r3, #1
     d42:	04db      	lsls	r3, r3, #19
     d44:	0cda      	lsrs	r2, r3, #19
     d46:	4b13      	ldr	r3, [pc, #76]	; (d94 <uart_read+0x88>)
     d48:	601a      	str	r2, [r3, #0]
     d4a:	4b12      	ldr	r3, [pc, #72]	; (d94 <uart_read+0x88>)
     d4c:	681a      	ldr	r2, [r3, #0]
     d4e:	4b12      	ldr	r3, [pc, #72]	; (d98 <uart_read+0x8c>)
     d50:	681b      	ldr	r3, [r3, #0]
     d52:	429a      	cmp	r2, r3
     d54:	d103      	bne.n	d5e <uart_read+0x52>
     d56:	68fb      	ldr	r3, [r7, #12]
     d58:	3301      	adds	r3, #1
     d5a:	60fb      	str	r3, [r7, #12]
     d5c:	e006      	b.n	d6c <uart_read+0x60>
     d5e:	68fb      	ldr	r3, [r7, #12]
     d60:	3301      	adds	r3, #1
     d62:	60fb      	str	r3, [r7, #12]
     d64:	68fa      	ldr	r2, [r7, #12]
     d66:	683b      	ldr	r3, [r7, #0]
     d68:	429a      	cmp	r2, r3
     d6a:	dbdf      	blt.n	d2c <uart_read+0x20>
     d6c:	f7ff ff68 	bl	c40 <uart_bsz>
     d70:	0003      	movs	r3, r0
     d72:	60bb      	str	r3, [r7, #8]
     d74:	68bb      	ldr	r3, [r7, #8]
     d76:	4a0a      	ldr	r2, [pc, #40]	; (da0 <uart_read+0x94>)
     d78:	4293      	cmp	r3, r2
     d7a:	dc05      	bgt.n	d88 <uart_read+0x7c>
     d7c:	4b09      	ldr	r3, [pc, #36]	; (da4 <uart_read+0x98>)
     d7e:	4a09      	ldr	r2, [pc, #36]	; (da4 <uart_read+0x98>)
     d80:	6812      	ldr	r2, [r2, #0]
     d82:	2180      	movs	r1, #128	; 0x80
     d84:	438a      	bics	r2, r1
     d86:	601a      	str	r2, [r3, #0]
     d88:	68fb      	ldr	r3, [r7, #12]
     d8a:	0018      	movs	r0, r3
     d8c:	46bd      	mov	sp, r7
     d8e:	b004      	add	sp, #16
     d90:	bd80      	pop	{r7, pc}
     d92:	46c0      	nop			; (mov r8, r8)
     d94:	200040f4 	.word	0x200040f4
     d98:	200040f0 	.word	0x200040f0
     d9c:	200020f0 	.word	0x200020f0
     da0:	00001b57 	.word	0x00001b57
     da4:	400c8000 	.word	0x400c8000

00000da8 <uart_send>:
     da8:	b580      	push	{r7, lr}
     daa:	b084      	sub	sp, #16
     dac:	af00      	add	r7, sp, #0
     dae:	6078      	str	r0, [r7, #4]
     db0:	6039      	str	r1, [r7, #0]
     db2:	2300      	movs	r3, #0
     db4:	60fb      	str	r3, [r7, #12]
     db6:	e01b      	b.n	df0 <uart_send+0x48>
     db8:	4b1e      	ldr	r3, [pc, #120]	; (e34 <uart_send+0x8c>)
     dba:	681b      	ldr	r3, [r3, #0]
     dbc:	68fa      	ldr	r2, [r7, #12]
     dbe:	6879      	ldr	r1, [r7, #4]
     dc0:	188a      	adds	r2, r1, r2
     dc2:	7811      	ldrb	r1, [r2, #0]
     dc4:	4a1c      	ldr	r2, [pc, #112]	; (e38 <uart_send+0x90>)
     dc6:	54d1      	strb	r1, [r2, r3]
     dc8:	4b1a      	ldr	r3, [pc, #104]	; (e34 <uart_send+0x8c>)
     dca:	681b      	ldr	r3, [r3, #0]
     dcc:	3301      	adds	r3, #1
     dce:	04db      	lsls	r3, r3, #19
     dd0:	0cda      	lsrs	r2, r3, #19
     dd2:	4b18      	ldr	r3, [pc, #96]	; (e34 <uart_send+0x8c>)
     dd4:	601a      	str	r2, [r3, #0]
     dd6:	4b17      	ldr	r3, [pc, #92]	; (e34 <uart_send+0x8c>)
     dd8:	681a      	ldr	r2, [r3, #0]
     dda:	4b18      	ldr	r3, [pc, #96]	; (e3c <uart_send+0x94>)
     ddc:	681b      	ldr	r3, [r3, #0]
     dde:	429a      	cmp	r2, r3
     de0:	d103      	bne.n	dea <uart_send+0x42>
     de2:	68fb      	ldr	r3, [r7, #12]
     de4:	3301      	adds	r3, #1
     de6:	60fb      	str	r3, [r7, #12]
     de8:	e006      	b.n	df8 <uart_send+0x50>
     dea:	68fb      	ldr	r3, [r7, #12]
     dec:	3301      	adds	r3, #1
     dee:	60fb      	str	r3, [r7, #12]
     df0:	68fa      	ldr	r2, [r7, #12]
     df2:	683b      	ldr	r3, [r7, #0]
     df4:	429a      	cmp	r2, r3
     df6:	dbdf      	blt.n	db8 <uart_send+0x10>
     df8:	4b11      	ldr	r3, [pc, #68]	; (e40 <uart_send+0x98>)
     dfa:	699b      	ldr	r3, [r3, #24]
     dfc:	2208      	movs	r2, #8
     dfe:	4013      	ands	r3, r2
     e00:	d10c      	bne.n	e1c <uart_send+0x74>
     e02:	4a0f      	ldr	r2, [pc, #60]	; (e40 <uart_send+0x98>)
     e04:	4b0d      	ldr	r3, [pc, #52]	; (e3c <uart_send+0x94>)
     e06:	681b      	ldr	r3, [r3, #0]
     e08:	490b      	ldr	r1, [pc, #44]	; (e38 <uart_send+0x90>)
     e0a:	5ccb      	ldrb	r3, [r1, r3]
     e0c:	6013      	str	r3, [r2, #0]
     e0e:	4b0b      	ldr	r3, [pc, #44]	; (e3c <uart_send+0x94>)
     e10:	681b      	ldr	r3, [r3, #0]
     e12:	3301      	adds	r3, #1
     e14:	04db      	lsls	r3, r3, #19
     e16:	0cda      	lsrs	r2, r3, #19
     e18:	4b08      	ldr	r3, [pc, #32]	; (e3c <uart_send+0x94>)
     e1a:	601a      	str	r2, [r3, #0]
     e1c:	4b08      	ldr	r3, [pc, #32]	; (e40 <uart_send+0x98>)
     e1e:	4a08      	ldr	r2, [pc, #32]	; (e40 <uart_send+0x98>)
     e20:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e22:	2120      	movs	r1, #32
     e24:	430a      	orrs	r2, r1
     e26:	639a      	str	r2, [r3, #56]	; 0x38
     e28:	68fb      	ldr	r3, [r7, #12]
     e2a:	0018      	movs	r0, r3
     e2c:	46bd      	mov	sp, r7
     e2e:	b004      	add	sp, #16
     e30:	bd80      	pop	{r7, pc}
     e32:	46c0      	nop			; (mov r8, r8)
     e34:	200020ec 	.word	0x200020ec
     e38:	200000e8 	.word	0x200000e8
     e3c:	200020e8 	.word	0x200020e8
     e40:	40038000 	.word	0x40038000

00000e44 <UART2_Handler>:
     e44:	b580      	push	{r7, lr}
     e46:	b082      	sub	sp, #8
     e48:	af00      	add	r7, sp, #0
     e4a:	4b22      	ldr	r3, [pc, #136]	; (ed4 <UART2_Handler+0x90>)
     e4c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     e4e:	2220      	movs	r2, #32
     e50:	4013      	ands	r3, r2
     e52:	d019      	beq.n	e88 <UART2_Handler+0x44>
     e54:	4b20      	ldr	r3, [pc, #128]	; (ed8 <UART2_Handler+0x94>)
     e56:	681a      	ldr	r2, [r3, #0]
     e58:	4b20      	ldr	r3, [pc, #128]	; (edc <UART2_Handler+0x98>)
     e5a:	681b      	ldr	r3, [r3, #0]
     e5c:	429a      	cmp	r2, r3
     e5e:	d106      	bne.n	e6e <UART2_Handler+0x2a>
     e60:	4b1c      	ldr	r3, [pc, #112]	; (ed4 <UART2_Handler+0x90>)
     e62:	4a1c      	ldr	r2, [pc, #112]	; (ed4 <UART2_Handler+0x90>)
     e64:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e66:	2120      	movs	r1, #32
     e68:	438a      	bics	r2, r1
     e6a:	639a      	str	r2, [r3, #56]	; 0x38
     e6c:	e00c      	b.n	e88 <UART2_Handler+0x44>
     e6e:	4a19      	ldr	r2, [pc, #100]	; (ed4 <UART2_Handler+0x90>)
     e70:	4b19      	ldr	r3, [pc, #100]	; (ed8 <UART2_Handler+0x94>)
     e72:	681b      	ldr	r3, [r3, #0]
     e74:	491a      	ldr	r1, [pc, #104]	; (ee0 <UART2_Handler+0x9c>)
     e76:	5ccb      	ldrb	r3, [r1, r3]
     e78:	6013      	str	r3, [r2, #0]
     e7a:	4b17      	ldr	r3, [pc, #92]	; (ed8 <UART2_Handler+0x94>)
     e7c:	681b      	ldr	r3, [r3, #0]
     e7e:	3301      	adds	r3, #1
     e80:	04db      	lsls	r3, r3, #19
     e82:	0cda      	lsrs	r2, r3, #19
     e84:	4b14      	ldr	r3, [pc, #80]	; (ed8 <UART2_Handler+0x94>)
     e86:	601a      	str	r2, [r3, #0]
     e88:	4b12      	ldr	r3, [pc, #72]	; (ed4 <UART2_Handler+0x90>)
     e8a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     e8c:	2210      	movs	r2, #16
     e8e:	4013      	ands	r3, r2
     e90:	d01b      	beq.n	eca <UART2_Handler+0x86>
     e92:	4b14      	ldr	r3, [pc, #80]	; (ee4 <UART2_Handler+0xa0>)
     e94:	681a      	ldr	r2, [r3, #0]
     e96:	4b0f      	ldr	r3, [pc, #60]	; (ed4 <UART2_Handler+0x90>)
     e98:	681b      	ldr	r3, [r3, #0]
     e9a:	b2d9      	uxtb	r1, r3
     e9c:	4b12      	ldr	r3, [pc, #72]	; (ee8 <UART2_Handler+0xa4>)
     e9e:	5499      	strb	r1, [r3, r2]
     ea0:	4b10      	ldr	r3, [pc, #64]	; (ee4 <UART2_Handler+0xa0>)
     ea2:	681b      	ldr	r3, [r3, #0]
     ea4:	3301      	adds	r3, #1
     ea6:	04db      	lsls	r3, r3, #19
     ea8:	0cda      	lsrs	r2, r3, #19
     eaa:	4b0e      	ldr	r3, [pc, #56]	; (ee4 <UART2_Handler+0xa0>)
     eac:	601a      	str	r2, [r3, #0]
     eae:	f7ff fec7 	bl	c40 <uart_bsz>
     eb2:	0003      	movs	r3, r0
     eb4:	607b      	str	r3, [r7, #4]
     eb6:	687b      	ldr	r3, [r7, #4]
     eb8:	4a0c      	ldr	r2, [pc, #48]	; (eec <UART2_Handler+0xa8>)
     eba:	4293      	cmp	r3, r2
     ebc:	dd05      	ble.n	eca <UART2_Handler+0x86>
     ebe:	4b0c      	ldr	r3, [pc, #48]	; (ef0 <UART2_Handler+0xac>)
     ec0:	4a0b      	ldr	r2, [pc, #44]	; (ef0 <UART2_Handler+0xac>)
     ec2:	6812      	ldr	r2, [r2, #0]
     ec4:	2180      	movs	r1, #128	; 0x80
     ec6:	430a      	orrs	r2, r1
     ec8:	601a      	str	r2, [r3, #0]
     eca:	46c0      	nop			; (mov r8, r8)
     ecc:	46bd      	mov	sp, r7
     ece:	b002      	add	sp, #8
     ed0:	bd80      	pop	{r7, pc}
     ed2:	46c0      	nop			; (mov r8, r8)
     ed4:	40038000 	.word	0x40038000
     ed8:	200020e8 	.word	0x200020e8
     edc:	200020ec 	.word	0x200020ec
     ee0:	200000e8 	.word	0x200000e8
     ee4:	200040f0 	.word	0x200040f0
     ee8:	200020f0 	.word	0x200020f0
     eec:	00001d4c 	.word	0x00001d4c
     ef0:	400c8000 	.word	0x400c8000

00000ef4 <xputc>:
     ef4:	b580      	push	{r7, lr}
     ef6:	b082      	sub	sp, #8
     ef8:	af00      	add	r7, sp, #0
     efa:	0002      	movs	r2, r0
     efc:	1dfb      	adds	r3, r7, #7
     efe:	701a      	strb	r2, [r3, #0]
     f00:	1dfb      	adds	r3, r7, #7
     f02:	781b      	ldrb	r3, [r3, #0]
     f04:	2b0a      	cmp	r3, #10
     f06:	d102      	bne.n	f0e <xputc+0x1a>
     f08:	200d      	movs	r0, #13
     f0a:	f7ff fff3 	bl	ef4 <xputc>
     f0e:	4b0d      	ldr	r3, [pc, #52]	; (f44 <xputc+0x50>)
     f10:	681b      	ldr	r3, [r3, #0]
     f12:	2b00      	cmp	r3, #0
     f14:	d008      	beq.n	f28 <xputc+0x34>
     f16:	4b0b      	ldr	r3, [pc, #44]	; (f44 <xputc+0x50>)
     f18:	681b      	ldr	r3, [r3, #0]
     f1a:	1c59      	adds	r1, r3, #1
     f1c:	4a09      	ldr	r2, [pc, #36]	; (f44 <xputc+0x50>)
     f1e:	6011      	str	r1, [r2, #0]
     f20:	1dfa      	adds	r2, r7, #7
     f22:	7812      	ldrb	r2, [r2, #0]
     f24:	701a      	strb	r2, [r3, #0]
     f26:	e009      	b.n	f3c <xputc+0x48>
     f28:	4b07      	ldr	r3, [pc, #28]	; (f48 <xputc+0x54>)
     f2a:	681b      	ldr	r3, [r3, #0]
     f2c:	2b00      	cmp	r3, #0
     f2e:	d005      	beq.n	f3c <xputc+0x48>
     f30:	4b05      	ldr	r3, [pc, #20]	; (f48 <xputc+0x54>)
     f32:	681b      	ldr	r3, [r3, #0]
     f34:	1dfa      	adds	r2, r7, #7
     f36:	7812      	ldrb	r2, [r2, #0]
     f38:	0010      	movs	r0, r2
     f3a:	4798      	blx	r3
     f3c:	46bd      	mov	sp, r7
     f3e:	b002      	add	sp, #8
     f40:	bd80      	pop	{r7, pc}
     f42:	46c0      	nop			; (mov r8, r8)
     f44:	200040fc 	.word	0x200040fc
     f48:	200040f8 	.word	0x200040f8

00000f4c <xputs>:
     f4c:	b580      	push	{r7, lr}
     f4e:	b082      	sub	sp, #8
     f50:	af00      	add	r7, sp, #0
     f52:	6078      	str	r0, [r7, #4]
     f54:	e006      	b.n	f64 <xputs+0x18>
     f56:	687b      	ldr	r3, [r7, #4]
     f58:	1c5a      	adds	r2, r3, #1
     f5a:	607a      	str	r2, [r7, #4]
     f5c:	781b      	ldrb	r3, [r3, #0]
     f5e:	0018      	movs	r0, r3
     f60:	f7ff ffc8 	bl	ef4 <xputc>
     f64:	687b      	ldr	r3, [r7, #4]
     f66:	781b      	ldrb	r3, [r3, #0]
     f68:	2b00      	cmp	r3, #0
     f6a:	d1f4      	bne.n	f56 <xputs+0xa>
     f6c:	46c0      	nop			; (mov r8, r8)
     f6e:	46bd      	mov	sp, r7
     f70:	b002      	add	sp, #8
     f72:	bd80      	pop	{r7, pc}

00000f74 <xfputs>:
     f74:	b580      	push	{r7, lr}
     f76:	b084      	sub	sp, #16
     f78:	af00      	add	r7, sp, #0
     f7a:	6078      	str	r0, [r7, #4]
     f7c:	6039      	str	r1, [r7, #0]
     f7e:	4b0c      	ldr	r3, [pc, #48]	; (fb0 <xfputs+0x3c>)
     f80:	681b      	ldr	r3, [r3, #0]
     f82:	60fb      	str	r3, [r7, #12]
     f84:	4b0a      	ldr	r3, [pc, #40]	; (fb0 <xfputs+0x3c>)
     f86:	687a      	ldr	r2, [r7, #4]
     f88:	601a      	str	r2, [r3, #0]
     f8a:	e006      	b.n	f9a <xfputs+0x26>
     f8c:	683b      	ldr	r3, [r7, #0]
     f8e:	1c5a      	adds	r2, r3, #1
     f90:	603a      	str	r2, [r7, #0]
     f92:	781b      	ldrb	r3, [r3, #0]
     f94:	0018      	movs	r0, r3
     f96:	f7ff ffad 	bl	ef4 <xputc>
     f9a:	683b      	ldr	r3, [r7, #0]
     f9c:	781b      	ldrb	r3, [r3, #0]
     f9e:	2b00      	cmp	r3, #0
     fa0:	d1f4      	bne.n	f8c <xfputs+0x18>
     fa2:	4b03      	ldr	r3, [pc, #12]	; (fb0 <xfputs+0x3c>)
     fa4:	68fa      	ldr	r2, [r7, #12]
     fa6:	601a      	str	r2, [r3, #0]
     fa8:	46c0      	nop			; (mov r8, r8)
     faa:	46bd      	mov	sp, r7
     fac:	b004      	add	sp, #16
     fae:	bd80      	pop	{r7, pc}
     fb0:	200040f8 	.word	0x200040f8

00000fb4 <xvprintf>:
     fb4:	b580      	push	{r7, lr}
     fb6:	b08e      	sub	sp, #56	; 0x38
     fb8:	af00      	add	r7, sp, #0
     fba:	6078      	str	r0, [r7, #4]
     fbc:	6039      	str	r1, [r7, #0]
     fbe:	687b      	ldr	r3, [r7, #4]
     fc0:	1c5a      	adds	r2, r3, #1
     fc2:	607a      	str	r2, [r7, #4]
     fc4:	221f      	movs	r2, #31
     fc6:	18ba      	adds	r2, r7, r2
     fc8:	781b      	ldrb	r3, [r3, #0]
     fca:	7013      	strb	r3, [r2, #0]
     fcc:	231f      	movs	r3, #31
     fce:	18fb      	adds	r3, r7, r3
     fd0:	781b      	ldrb	r3, [r3, #0]
     fd2:	2b00      	cmp	r3, #0
     fd4:	d100      	bne.n	fd8 <xvprintf+0x24>
     fd6:	e172      	b.n	12be <xvprintf+0x30a>
     fd8:	231f      	movs	r3, #31
     fda:	18fb      	adds	r3, r7, r3
     fdc:	781b      	ldrb	r3, [r3, #0]
     fde:	2b25      	cmp	r3, #37	; 0x25
     fe0:	d006      	beq.n	ff0 <xvprintf+0x3c>
     fe2:	231f      	movs	r3, #31
     fe4:	18fb      	adds	r3, r7, r3
     fe6:	781b      	ldrb	r3, [r3, #0]
     fe8:	0018      	movs	r0, r3
     fea:	f7ff ff83 	bl	ef4 <xputc>
     fee:	e165      	b.n	12bc <xvprintf+0x308>
     ff0:	2300      	movs	r3, #0
     ff2:	627b      	str	r3, [r7, #36]	; 0x24
     ff4:	687b      	ldr	r3, [r7, #4]
     ff6:	1c5a      	adds	r2, r3, #1
     ff8:	607a      	str	r2, [r7, #4]
     ffa:	221f      	movs	r2, #31
     ffc:	18ba      	adds	r2, r7, r2
     ffe:	781b      	ldrb	r3, [r3, #0]
    1000:	7013      	strb	r3, [r2, #0]
    1002:	231f      	movs	r3, #31
    1004:	18fb      	adds	r3, r7, r3
    1006:	781b      	ldrb	r3, [r3, #0]
    1008:	2b30      	cmp	r3, #48	; 0x30
    100a:	d109      	bne.n	1020 <xvprintf+0x6c>
    100c:	2301      	movs	r3, #1
    100e:	627b      	str	r3, [r7, #36]	; 0x24
    1010:	687b      	ldr	r3, [r7, #4]
    1012:	1c5a      	adds	r2, r3, #1
    1014:	607a      	str	r2, [r7, #4]
    1016:	221f      	movs	r2, #31
    1018:	18ba      	adds	r2, r7, r2
    101a:	781b      	ldrb	r3, [r3, #0]
    101c:	7013      	strb	r3, [r2, #0]
    101e:	e00d      	b.n	103c <xvprintf+0x88>
    1020:	231f      	movs	r3, #31
    1022:	18fb      	adds	r3, r7, r3
    1024:	781b      	ldrb	r3, [r3, #0]
    1026:	2b2d      	cmp	r3, #45	; 0x2d
    1028:	d108      	bne.n	103c <xvprintf+0x88>
    102a:	2302      	movs	r3, #2
    102c:	627b      	str	r3, [r7, #36]	; 0x24
    102e:	687b      	ldr	r3, [r7, #4]
    1030:	1c5a      	adds	r2, r3, #1
    1032:	607a      	str	r2, [r7, #4]
    1034:	221f      	movs	r2, #31
    1036:	18ba      	adds	r2, r7, r2
    1038:	781b      	ldrb	r3, [r3, #0]
    103a:	7013      	strb	r3, [r2, #0]
    103c:	2300      	movs	r3, #0
    103e:	62bb      	str	r3, [r7, #40]	; 0x28
    1040:	e012      	b.n	1068 <xvprintf+0xb4>
    1042:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1044:	0013      	movs	r3, r2
    1046:	009b      	lsls	r3, r3, #2
    1048:	189b      	adds	r3, r3, r2
    104a:	005b      	lsls	r3, r3, #1
    104c:	001a      	movs	r2, r3
    104e:	231f      	movs	r3, #31
    1050:	18fb      	adds	r3, r7, r3
    1052:	781b      	ldrb	r3, [r3, #0]
    1054:	18d3      	adds	r3, r2, r3
    1056:	3b30      	subs	r3, #48	; 0x30
    1058:	62bb      	str	r3, [r7, #40]	; 0x28
    105a:	687b      	ldr	r3, [r7, #4]
    105c:	1c5a      	adds	r2, r3, #1
    105e:	607a      	str	r2, [r7, #4]
    1060:	221f      	movs	r2, #31
    1062:	18ba      	adds	r2, r7, r2
    1064:	781b      	ldrb	r3, [r3, #0]
    1066:	7013      	strb	r3, [r2, #0]
    1068:	231f      	movs	r3, #31
    106a:	18fb      	adds	r3, r7, r3
    106c:	781b      	ldrb	r3, [r3, #0]
    106e:	2b2f      	cmp	r3, #47	; 0x2f
    1070:	d904      	bls.n	107c <xvprintf+0xc8>
    1072:	231f      	movs	r3, #31
    1074:	18fb      	adds	r3, r7, r3
    1076:	781b      	ldrb	r3, [r3, #0]
    1078:	2b39      	cmp	r3, #57	; 0x39
    107a:	d9e2      	bls.n	1042 <xvprintf+0x8e>
    107c:	231f      	movs	r3, #31
    107e:	18fb      	adds	r3, r7, r3
    1080:	781b      	ldrb	r3, [r3, #0]
    1082:	2b6c      	cmp	r3, #108	; 0x6c
    1084:	d004      	beq.n	1090 <xvprintf+0xdc>
    1086:	231f      	movs	r3, #31
    1088:	18fb      	adds	r3, r7, r3
    108a:	781b      	ldrb	r3, [r3, #0]
    108c:	2b4c      	cmp	r3, #76	; 0x4c
    108e:	d10a      	bne.n	10a6 <xvprintf+0xf2>
    1090:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1092:	2204      	movs	r2, #4
    1094:	4313      	orrs	r3, r2
    1096:	627b      	str	r3, [r7, #36]	; 0x24
    1098:	687b      	ldr	r3, [r7, #4]
    109a:	1c5a      	adds	r2, r3, #1
    109c:	607a      	str	r2, [r7, #4]
    109e:	221f      	movs	r2, #31
    10a0:	18ba      	adds	r2, r7, r2
    10a2:	781b      	ldrb	r3, [r3, #0]
    10a4:	7013      	strb	r3, [r2, #0]
    10a6:	231f      	movs	r3, #31
    10a8:	18fb      	adds	r3, r7, r3
    10aa:	781b      	ldrb	r3, [r3, #0]
    10ac:	2b00      	cmp	r3, #0
    10ae:	d100      	bne.n	10b2 <xvprintf+0xfe>
    10b0:	e107      	b.n	12c2 <xvprintf+0x30e>
    10b2:	231e      	movs	r3, #30
    10b4:	18fb      	adds	r3, r7, r3
    10b6:	221f      	movs	r2, #31
    10b8:	18ba      	adds	r2, r7, r2
    10ba:	7812      	ldrb	r2, [r2, #0]
    10bc:	701a      	strb	r2, [r3, #0]
    10be:	231e      	movs	r3, #30
    10c0:	18fb      	adds	r3, r7, r3
    10c2:	781b      	ldrb	r3, [r3, #0]
    10c4:	2b60      	cmp	r3, #96	; 0x60
    10c6:	d906      	bls.n	10d6 <xvprintf+0x122>
    10c8:	231e      	movs	r3, #30
    10ca:	18fb      	adds	r3, r7, r3
    10cc:	221e      	movs	r2, #30
    10ce:	18ba      	adds	r2, r7, r2
    10d0:	7812      	ldrb	r2, [r2, #0]
    10d2:	3a20      	subs	r2, #32
    10d4:	701a      	strb	r2, [r3, #0]
    10d6:	231e      	movs	r3, #30
    10d8:	18fb      	adds	r3, r7, r3
    10da:	781b      	ldrb	r3, [r3, #0]
    10dc:	3b42      	subs	r3, #66	; 0x42
    10de:	2b16      	cmp	r3, #22
    10e0:	d847      	bhi.n	1172 <xvprintf+0x1be>
    10e2:	009a      	lsls	r2, r3, #2
    10e4:	4b79      	ldr	r3, [pc, #484]	; (12cc <xvprintf+0x318>)
    10e6:	18d3      	adds	r3, r2, r3
    10e8:	681b      	ldr	r3, [r3, #0]
    10ea:	469f      	mov	pc, r3
    10ec:	683b      	ldr	r3, [r7, #0]
    10ee:	1d1a      	adds	r2, r3, #4
    10f0:	603a      	str	r2, [r7, #0]
    10f2:	681b      	ldr	r3, [r3, #0]
    10f4:	61bb      	str	r3, [r7, #24]
    10f6:	2300      	movs	r3, #0
    10f8:	62fb      	str	r3, [r7, #44]	; 0x2c
    10fa:	e002      	b.n	1102 <xvprintf+0x14e>
    10fc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10fe:	3301      	adds	r3, #1
    1100:	62fb      	str	r3, [r7, #44]	; 0x2c
    1102:	69ba      	ldr	r2, [r7, #24]
    1104:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1106:	18d3      	adds	r3, r2, r3
    1108:	781b      	ldrb	r3, [r3, #0]
    110a:	2b00      	cmp	r3, #0
    110c:	d1f6      	bne.n	10fc <xvprintf+0x148>
    110e:	e002      	b.n	1116 <xvprintf+0x162>
    1110:	2020      	movs	r0, #32
    1112:	f7ff feef 	bl	ef4 <xputc>
    1116:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1118:	2202      	movs	r2, #2
    111a:	4013      	ands	r3, r2
    111c:	d105      	bne.n	112a <xvprintf+0x176>
    111e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1120:	1c5a      	adds	r2, r3, #1
    1122:	62fa      	str	r2, [r7, #44]	; 0x2c
    1124:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1126:	4293      	cmp	r3, r2
    1128:	d3f2      	bcc.n	1110 <xvprintf+0x15c>
    112a:	69bb      	ldr	r3, [r7, #24]
    112c:	0018      	movs	r0, r3
    112e:	f7ff ff0d 	bl	f4c <xputs>
    1132:	e002      	b.n	113a <xvprintf+0x186>
    1134:	2020      	movs	r0, #32
    1136:	f7ff fedd 	bl	ef4 <xputc>
    113a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    113c:	1c5a      	adds	r2, r3, #1
    113e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1140:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1142:	4293      	cmp	r3, r2
    1144:	d3f6      	bcc.n	1134 <xvprintf+0x180>
    1146:	e0b9      	b.n	12bc <xvprintf+0x308>
    1148:	683b      	ldr	r3, [r7, #0]
    114a:	1d1a      	adds	r2, r3, #4
    114c:	603a      	str	r2, [r7, #0]
    114e:	681b      	ldr	r3, [r3, #0]
    1150:	b2db      	uxtb	r3, r3
    1152:	0018      	movs	r0, r3
    1154:	f7ff fece 	bl	ef4 <xputc>
    1158:	e0b0      	b.n	12bc <xvprintf+0x308>
    115a:	2302      	movs	r3, #2
    115c:	637b      	str	r3, [r7, #52]	; 0x34
    115e:	e00f      	b.n	1180 <xvprintf+0x1cc>
    1160:	2308      	movs	r3, #8
    1162:	637b      	str	r3, [r7, #52]	; 0x34
    1164:	e00c      	b.n	1180 <xvprintf+0x1cc>
    1166:	230a      	movs	r3, #10
    1168:	637b      	str	r3, [r7, #52]	; 0x34
    116a:	e009      	b.n	1180 <xvprintf+0x1cc>
    116c:	2310      	movs	r3, #16
    116e:	637b      	str	r3, [r7, #52]	; 0x34
    1170:	e006      	b.n	1180 <xvprintf+0x1cc>
    1172:	231f      	movs	r3, #31
    1174:	18fb      	adds	r3, r7, r3
    1176:	781b      	ldrb	r3, [r3, #0]
    1178:	0018      	movs	r0, r3
    117a:	f7ff febb 	bl	ef4 <xputc>
    117e:	e09d      	b.n	12bc <xvprintf+0x308>
    1180:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1182:	2204      	movs	r2, #4
    1184:	4013      	ands	r3, r2
    1186:	d004      	beq.n	1192 <xvprintf+0x1de>
    1188:	683b      	ldr	r3, [r7, #0]
    118a:	1d1a      	adds	r2, r3, #4
    118c:	603a      	str	r2, [r7, #0]
    118e:	681b      	ldr	r3, [r3, #0]
    1190:	e00d      	b.n	11ae <xvprintf+0x1fa>
    1192:	231e      	movs	r3, #30
    1194:	18fb      	adds	r3, r7, r3
    1196:	781b      	ldrb	r3, [r3, #0]
    1198:	2b44      	cmp	r3, #68	; 0x44
    119a:	d104      	bne.n	11a6 <xvprintf+0x1f2>
    119c:	683b      	ldr	r3, [r7, #0]
    119e:	1d1a      	adds	r2, r3, #4
    11a0:	603a      	str	r2, [r7, #0]
    11a2:	681b      	ldr	r3, [r3, #0]
    11a4:	e003      	b.n	11ae <xvprintf+0x1fa>
    11a6:	683b      	ldr	r3, [r7, #0]
    11a8:	1d1a      	adds	r2, r3, #4
    11aa:	603a      	str	r2, [r7, #0]
    11ac:	681b      	ldr	r3, [r3, #0]
    11ae:	623b      	str	r3, [r7, #32]
    11b0:	231e      	movs	r3, #30
    11b2:	18fb      	adds	r3, r7, r3
    11b4:	781b      	ldrb	r3, [r3, #0]
    11b6:	2b44      	cmp	r3, #68	; 0x44
    11b8:	d109      	bne.n	11ce <xvprintf+0x21a>
    11ba:	6a3b      	ldr	r3, [r7, #32]
    11bc:	2b00      	cmp	r3, #0
    11be:	da06      	bge.n	11ce <xvprintf+0x21a>
    11c0:	6a3b      	ldr	r3, [r7, #32]
    11c2:	425b      	negs	r3, r3
    11c4:	623b      	str	r3, [r7, #32]
    11c6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    11c8:	2208      	movs	r2, #8
    11ca:	4313      	orrs	r3, r2
    11cc:	627b      	str	r3, [r7, #36]	; 0x24
    11ce:	2300      	movs	r3, #0
    11d0:	633b      	str	r3, [r7, #48]	; 0x30
    11d2:	6a3b      	ldr	r3, [r7, #32]
    11d4:	6b79      	ldr	r1, [r7, #52]	; 0x34
    11d6:	0018      	movs	r0, r3
    11d8:	f000 fb34 	bl	1844 <__aeabi_uidivmod>
    11dc:	000b      	movs	r3, r1
    11de:	001a      	movs	r2, r3
    11e0:	231e      	movs	r3, #30
    11e2:	18fb      	adds	r3, r7, r3
    11e4:	701a      	strb	r2, [r3, #0]
    11e6:	6b79      	ldr	r1, [r7, #52]	; 0x34
    11e8:	6a38      	ldr	r0, [r7, #32]
    11ea:	f000 faa5 	bl	1738 <__aeabi_uidiv>
    11ee:	0003      	movs	r3, r0
    11f0:	623b      	str	r3, [r7, #32]
    11f2:	231e      	movs	r3, #30
    11f4:	18fb      	adds	r3, r7, r3
    11f6:	781b      	ldrb	r3, [r3, #0]
    11f8:	2b09      	cmp	r3, #9
    11fa:	d90e      	bls.n	121a <xvprintf+0x266>
    11fc:	231f      	movs	r3, #31
    11fe:	18fb      	adds	r3, r7, r3
    1200:	781b      	ldrb	r3, [r3, #0]
    1202:	2b78      	cmp	r3, #120	; 0x78
    1204:	d101      	bne.n	120a <xvprintf+0x256>
    1206:	2327      	movs	r3, #39	; 0x27
    1208:	e000      	b.n	120c <xvprintf+0x258>
    120a:	2307      	movs	r3, #7
    120c:	221e      	movs	r2, #30
    120e:	18ba      	adds	r2, r7, r2
    1210:	211e      	movs	r1, #30
    1212:	1879      	adds	r1, r7, r1
    1214:	7809      	ldrb	r1, [r1, #0]
    1216:	185b      	adds	r3, r3, r1
    1218:	7013      	strb	r3, [r2, #0]
    121a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    121c:	1c5a      	adds	r2, r3, #1
    121e:	633a      	str	r2, [r7, #48]	; 0x30
    1220:	221e      	movs	r2, #30
    1222:	18ba      	adds	r2, r7, r2
    1224:	7812      	ldrb	r2, [r2, #0]
    1226:	3230      	adds	r2, #48	; 0x30
    1228:	b2d1      	uxtb	r1, r2
    122a:	2208      	movs	r2, #8
    122c:	18ba      	adds	r2, r7, r2
    122e:	54d1      	strb	r1, [r2, r3]
    1230:	6a3b      	ldr	r3, [r7, #32]
    1232:	2b00      	cmp	r3, #0
    1234:	d002      	beq.n	123c <xvprintf+0x288>
    1236:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1238:	2b0f      	cmp	r3, #15
    123a:	d9ca      	bls.n	11d2 <xvprintf+0x21e>
    123c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    123e:	2208      	movs	r2, #8
    1240:	4013      	ands	r3, r2
    1242:	d006      	beq.n	1252 <xvprintf+0x29e>
    1244:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1246:	1c5a      	adds	r2, r3, #1
    1248:	633a      	str	r2, [r7, #48]	; 0x30
    124a:	2208      	movs	r2, #8
    124c:	18ba      	adds	r2, r7, r2
    124e:	212d      	movs	r1, #45	; 0x2d
    1250:	54d1      	strb	r1, [r2, r3]
    1252:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1254:	62fb      	str	r3, [r7, #44]	; 0x2c
    1256:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1258:	2201      	movs	r2, #1
    125a:	4013      	ands	r3, r2
    125c:	d001      	beq.n	1262 <xvprintf+0x2ae>
    125e:	2230      	movs	r2, #48	; 0x30
    1260:	e000      	b.n	1264 <xvprintf+0x2b0>
    1262:	2220      	movs	r2, #32
    1264:	231e      	movs	r3, #30
    1266:	18fb      	adds	r3, r7, r3
    1268:	701a      	strb	r2, [r3, #0]
    126a:	e005      	b.n	1278 <xvprintf+0x2c4>
    126c:	231e      	movs	r3, #30
    126e:	18fb      	adds	r3, r7, r3
    1270:	781b      	ldrb	r3, [r3, #0]
    1272:	0018      	movs	r0, r3
    1274:	f7ff fe3e 	bl	ef4 <xputc>
    1278:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    127a:	2202      	movs	r2, #2
    127c:	4013      	ands	r3, r2
    127e:	d105      	bne.n	128c <xvprintf+0x2d8>
    1280:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1282:	1c5a      	adds	r2, r3, #1
    1284:	62fa      	str	r2, [r7, #44]	; 0x2c
    1286:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1288:	4293      	cmp	r3, r2
    128a:	d3ef      	bcc.n	126c <xvprintf+0x2b8>
    128c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    128e:	3b01      	subs	r3, #1
    1290:	633b      	str	r3, [r7, #48]	; 0x30
    1292:	2308      	movs	r3, #8
    1294:	18fa      	adds	r2, r7, r3
    1296:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1298:	18d3      	adds	r3, r2, r3
    129a:	781b      	ldrb	r3, [r3, #0]
    129c:	0018      	movs	r0, r3
    129e:	f7ff fe29 	bl	ef4 <xputc>
    12a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    12a4:	2b00      	cmp	r3, #0
    12a6:	d1f1      	bne.n	128c <xvprintf+0x2d8>
    12a8:	e002      	b.n	12b0 <xvprintf+0x2fc>
    12aa:	2020      	movs	r0, #32
    12ac:	f7ff fe22 	bl	ef4 <xputc>
    12b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12b2:	1c5a      	adds	r2, r3, #1
    12b4:	62fa      	str	r2, [r7, #44]	; 0x2c
    12b6:	6aba      	ldr	r2, [r7, #40]	; 0x28
    12b8:	4293      	cmp	r3, r2
    12ba:	d3f6      	bcc.n	12aa <xvprintf+0x2f6>
    12bc:	e67f      	b.n	fbe <xvprintf+0xa>
    12be:	46c0      	nop			; (mov r8, r8)
    12c0:	e000      	b.n	12c4 <xvprintf+0x310>
    12c2:	46c0      	nop			; (mov r8, r8)
    12c4:	46c0      	nop			; (mov r8, r8)
    12c6:	46bd      	mov	sp, r7
    12c8:	b00e      	add	sp, #56	; 0x38
    12ca:	bd80      	pop	{r7, pc}
    12cc:	00001850 	.word	0x00001850

000012d0 <xprintf>:
    12d0:	b40f      	push	{r0, r1, r2, r3}
    12d2:	b580      	push	{r7, lr}
    12d4:	b082      	sub	sp, #8
    12d6:	af00      	add	r7, sp, #0
    12d8:	2314      	movs	r3, #20
    12da:	18fb      	adds	r3, r7, r3
    12dc:	607b      	str	r3, [r7, #4]
    12de:	687a      	ldr	r2, [r7, #4]
    12e0:	693b      	ldr	r3, [r7, #16]
    12e2:	0011      	movs	r1, r2
    12e4:	0018      	movs	r0, r3
    12e6:	f7ff fe65 	bl	fb4 <xvprintf>
    12ea:	46c0      	nop			; (mov r8, r8)
    12ec:	46bd      	mov	sp, r7
    12ee:	b002      	add	sp, #8
    12f0:	bc80      	pop	{r7}
    12f2:	bc08      	pop	{r3}
    12f4:	b004      	add	sp, #16
    12f6:	4718      	bx	r3

000012f8 <xsprintf>:
    12f8:	b40e      	push	{r1, r2, r3}
    12fa:	b580      	push	{r7, lr}
    12fc:	b085      	sub	sp, #20
    12fe:	af00      	add	r7, sp, #0
    1300:	6078      	str	r0, [r7, #4]
    1302:	4b0d      	ldr	r3, [pc, #52]	; (1338 <xsprintf+0x40>)
    1304:	687a      	ldr	r2, [r7, #4]
    1306:	601a      	str	r2, [r3, #0]
    1308:	2320      	movs	r3, #32
    130a:	18fb      	adds	r3, r7, r3
    130c:	60fb      	str	r3, [r7, #12]
    130e:	68fa      	ldr	r2, [r7, #12]
    1310:	69fb      	ldr	r3, [r7, #28]
    1312:	0011      	movs	r1, r2
    1314:	0018      	movs	r0, r3
    1316:	f7ff fe4d 	bl	fb4 <xvprintf>
    131a:	4b07      	ldr	r3, [pc, #28]	; (1338 <xsprintf+0x40>)
    131c:	681b      	ldr	r3, [r3, #0]
    131e:	2200      	movs	r2, #0
    1320:	701a      	strb	r2, [r3, #0]
    1322:	4b05      	ldr	r3, [pc, #20]	; (1338 <xsprintf+0x40>)
    1324:	2200      	movs	r2, #0
    1326:	601a      	str	r2, [r3, #0]
    1328:	46c0      	nop			; (mov r8, r8)
    132a:	46bd      	mov	sp, r7
    132c:	b005      	add	sp, #20
    132e:	bc80      	pop	{r7}
    1330:	bc08      	pop	{r3}
    1332:	b003      	add	sp, #12
    1334:	4718      	bx	r3
    1336:	46c0      	nop			; (mov r8, r8)
    1338:	200040fc 	.word	0x200040fc

0000133c <xfprintf>:
    133c:	b40e      	push	{r1, r2, r3}
    133e:	b580      	push	{r7, lr}
    1340:	b085      	sub	sp, #20
    1342:	af00      	add	r7, sp, #0
    1344:	6078      	str	r0, [r7, #4]
    1346:	4b0c      	ldr	r3, [pc, #48]	; (1378 <xfprintf+0x3c>)
    1348:	681b      	ldr	r3, [r3, #0]
    134a:	60fb      	str	r3, [r7, #12]
    134c:	4b0a      	ldr	r3, [pc, #40]	; (1378 <xfprintf+0x3c>)
    134e:	687a      	ldr	r2, [r7, #4]
    1350:	601a      	str	r2, [r3, #0]
    1352:	2320      	movs	r3, #32
    1354:	18fb      	adds	r3, r7, r3
    1356:	60bb      	str	r3, [r7, #8]
    1358:	68ba      	ldr	r2, [r7, #8]
    135a:	69fb      	ldr	r3, [r7, #28]
    135c:	0011      	movs	r1, r2
    135e:	0018      	movs	r0, r3
    1360:	f7ff fe28 	bl	fb4 <xvprintf>
    1364:	4b04      	ldr	r3, [pc, #16]	; (1378 <xfprintf+0x3c>)
    1366:	68fa      	ldr	r2, [r7, #12]
    1368:	601a      	str	r2, [r3, #0]
    136a:	46c0      	nop			; (mov r8, r8)
    136c:	46bd      	mov	sp, r7
    136e:	b005      	add	sp, #20
    1370:	bc80      	pop	{r7}
    1372:	bc08      	pop	{r3}
    1374:	b003      	add	sp, #12
    1376:	4718      	bx	r3
    1378:	200040f8 	.word	0x200040f8

0000137c <put_dump>:
    137c:	b580      	push	{r7, lr}
    137e:	b088      	sub	sp, #32
    1380:	af00      	add	r7, sp, #0
    1382:	60f8      	str	r0, [r7, #12]
    1384:	60b9      	str	r1, [r7, #8]
    1386:	607a      	str	r2, [r7, #4]
    1388:	603b      	str	r3, [r7, #0]
    138a:	68ba      	ldr	r2, [r7, #8]
    138c:	4b38      	ldr	r3, [pc, #224]	; (1470 <put_dump+0xf4>)
    138e:	0011      	movs	r1, r2
    1390:	0018      	movs	r0, r3
    1392:	f7ff ff9d 	bl	12d0 <xprintf>
    1396:	683b      	ldr	r3, [r7, #0]
    1398:	2b02      	cmp	r3, #2
    139a:	d03c      	beq.n	1416 <put_dump+0x9a>
    139c:	2b04      	cmp	r3, #4
    139e:	d04d      	beq.n	143c <put_dump+0xc0>
    13a0:	2b01      	cmp	r3, #1
    13a2:	d15d      	bne.n	1460 <put_dump+0xe4>
    13a4:	68fb      	ldr	r3, [r7, #12]
    13a6:	613b      	str	r3, [r7, #16]
    13a8:	2300      	movs	r3, #0
    13aa:	61fb      	str	r3, [r7, #28]
    13ac:	e00c      	b.n	13c8 <put_dump+0x4c>
    13ae:	69fb      	ldr	r3, [r7, #28]
    13b0:	693a      	ldr	r2, [r7, #16]
    13b2:	18d3      	adds	r3, r2, r3
    13b4:	781b      	ldrb	r3, [r3, #0]
    13b6:	001a      	movs	r2, r3
    13b8:	4b2e      	ldr	r3, [pc, #184]	; (1474 <put_dump+0xf8>)
    13ba:	0011      	movs	r1, r2
    13bc:	0018      	movs	r0, r3
    13be:	f7ff ff87 	bl	12d0 <xprintf>
    13c2:	69fb      	ldr	r3, [r7, #28]
    13c4:	3301      	adds	r3, #1
    13c6:	61fb      	str	r3, [r7, #28]
    13c8:	69fa      	ldr	r2, [r7, #28]
    13ca:	687b      	ldr	r3, [r7, #4]
    13cc:	429a      	cmp	r2, r3
    13ce:	dbee      	blt.n	13ae <put_dump+0x32>
    13d0:	2020      	movs	r0, #32
    13d2:	f7ff fd8f 	bl	ef4 <xputc>
    13d6:	2300      	movs	r3, #0
    13d8:	61fb      	str	r3, [r7, #28]
    13da:	e017      	b.n	140c <put_dump+0x90>
    13dc:	69fb      	ldr	r3, [r7, #28]
    13de:	693a      	ldr	r2, [r7, #16]
    13e0:	18d3      	adds	r3, r2, r3
    13e2:	781b      	ldrb	r3, [r3, #0]
    13e4:	2b1f      	cmp	r3, #31
    13e6:	d90a      	bls.n	13fe <put_dump+0x82>
    13e8:	69fb      	ldr	r3, [r7, #28]
    13ea:	693a      	ldr	r2, [r7, #16]
    13ec:	18d3      	adds	r3, r2, r3
    13ee:	781b      	ldrb	r3, [r3, #0]
    13f0:	2b7e      	cmp	r3, #126	; 0x7e
    13f2:	d804      	bhi.n	13fe <put_dump+0x82>
    13f4:	69fb      	ldr	r3, [r7, #28]
    13f6:	693a      	ldr	r2, [r7, #16]
    13f8:	18d3      	adds	r3, r2, r3
    13fa:	781b      	ldrb	r3, [r3, #0]
    13fc:	e000      	b.n	1400 <put_dump+0x84>
    13fe:	232e      	movs	r3, #46	; 0x2e
    1400:	0018      	movs	r0, r3
    1402:	f7ff fd77 	bl	ef4 <xputc>
    1406:	69fb      	ldr	r3, [r7, #28]
    1408:	3301      	adds	r3, #1
    140a:	61fb      	str	r3, [r7, #28]
    140c:	69fa      	ldr	r2, [r7, #28]
    140e:	687b      	ldr	r3, [r7, #4]
    1410:	429a      	cmp	r2, r3
    1412:	dbe3      	blt.n	13dc <put_dump+0x60>
    1414:	e024      	b.n	1460 <put_dump+0xe4>
    1416:	68fb      	ldr	r3, [r7, #12]
    1418:	61bb      	str	r3, [r7, #24]
    141a:	69bb      	ldr	r3, [r7, #24]
    141c:	1c9a      	adds	r2, r3, #2
    141e:	61ba      	str	r2, [r7, #24]
    1420:	881b      	ldrh	r3, [r3, #0]
    1422:	001a      	movs	r2, r3
    1424:	4b14      	ldr	r3, [pc, #80]	; (1478 <put_dump+0xfc>)
    1426:	0011      	movs	r1, r2
    1428:	0018      	movs	r0, r3
    142a:	f7ff ff51 	bl	12d0 <xprintf>
    142e:	687b      	ldr	r3, [r7, #4]
    1430:	3b01      	subs	r3, #1
    1432:	607b      	str	r3, [r7, #4]
    1434:	687b      	ldr	r3, [r7, #4]
    1436:	2b00      	cmp	r3, #0
    1438:	d1ef      	bne.n	141a <put_dump+0x9e>
    143a:	e011      	b.n	1460 <put_dump+0xe4>
    143c:	68fb      	ldr	r3, [r7, #12]
    143e:	617b      	str	r3, [r7, #20]
    1440:	697b      	ldr	r3, [r7, #20]
    1442:	1d1a      	adds	r2, r3, #4
    1444:	617a      	str	r2, [r7, #20]
    1446:	681a      	ldr	r2, [r3, #0]
    1448:	4b0c      	ldr	r3, [pc, #48]	; (147c <put_dump+0x100>)
    144a:	0011      	movs	r1, r2
    144c:	0018      	movs	r0, r3
    144e:	f7ff ff3f 	bl	12d0 <xprintf>
    1452:	687b      	ldr	r3, [r7, #4]
    1454:	3b01      	subs	r3, #1
    1456:	607b      	str	r3, [r7, #4]
    1458:	687b      	ldr	r3, [r7, #4]
    145a:	2b00      	cmp	r3, #0
    145c:	d1f0      	bne.n	1440 <put_dump+0xc4>
    145e:	46c0      	nop			; (mov r8, r8)
    1460:	200a      	movs	r0, #10
    1462:	f7ff fd47 	bl	ef4 <xputc>
    1466:	46c0      	nop			; (mov r8, r8)
    1468:	46bd      	mov	sp, r7
    146a:	b008      	add	sp, #32
    146c:	bd80      	pop	{r7, pc}
    146e:	46c0      	nop			; (mov r8, r8)
    1470:	000018ac 	.word	0x000018ac
    1474:	000018b4 	.word	0x000018b4
    1478:	000018bc 	.word	0x000018bc
    147c:	000018c4 	.word	0x000018c4

00001480 <xgets>:
    1480:	b580      	push	{r7, lr}
    1482:	b084      	sub	sp, #16
    1484:	af00      	add	r7, sp, #0
    1486:	6078      	str	r0, [r7, #4]
    1488:	6039      	str	r1, [r7, #0]
    148a:	4b24      	ldr	r3, [pc, #144]	; (151c <xgets+0x9c>)
    148c:	681b      	ldr	r3, [r3, #0]
    148e:	2b00      	cmp	r3, #0
    1490:	d101      	bne.n	1496 <xgets+0x16>
    1492:	2300      	movs	r3, #0
    1494:	e03e      	b.n	1514 <xgets+0x94>
    1496:	2300      	movs	r3, #0
    1498:	60fb      	str	r3, [r7, #12]
    149a:	4b20      	ldr	r3, [pc, #128]	; (151c <xgets+0x9c>)
    149c:	681b      	ldr	r3, [r3, #0]
    149e:	4798      	blx	r3
    14a0:	0003      	movs	r3, r0
    14a2:	60bb      	str	r3, [r7, #8]
    14a4:	68bb      	ldr	r3, [r7, #8]
    14a6:	2b00      	cmp	r3, #0
    14a8:	d101      	bne.n	14ae <xgets+0x2e>
    14aa:	2300      	movs	r3, #0
    14ac:	e032      	b.n	1514 <xgets+0x94>
    14ae:	68bb      	ldr	r3, [r7, #8]
    14b0:	2b0d      	cmp	r3, #13
    14b2:	d025      	beq.n	1500 <xgets+0x80>
    14b4:	68bb      	ldr	r3, [r7, #8]
    14b6:	2b08      	cmp	r3, #8
    14b8:	d10b      	bne.n	14d2 <xgets+0x52>
    14ba:	68fb      	ldr	r3, [r7, #12]
    14bc:	2b00      	cmp	r3, #0
    14be:	d008      	beq.n	14d2 <xgets+0x52>
    14c0:	68fb      	ldr	r3, [r7, #12]
    14c2:	3b01      	subs	r3, #1
    14c4:	60fb      	str	r3, [r7, #12]
    14c6:	68bb      	ldr	r3, [r7, #8]
    14c8:	b2db      	uxtb	r3, r3
    14ca:	0018      	movs	r0, r3
    14cc:	f7ff fd12 	bl	ef4 <xputc>
    14d0:	e015      	b.n	14fe <xgets+0x7e>
    14d2:	68bb      	ldr	r3, [r7, #8]
    14d4:	2b1f      	cmp	r3, #31
    14d6:	dde0      	ble.n	149a <xgets+0x1a>
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	1e5a      	subs	r2, r3, #1
    14dc:	68fb      	ldr	r3, [r7, #12]
    14de:	429a      	cmp	r2, r3
    14e0:	dddb      	ble.n	149a <xgets+0x1a>
    14e2:	68fb      	ldr	r3, [r7, #12]
    14e4:	1c5a      	adds	r2, r3, #1
    14e6:	60fa      	str	r2, [r7, #12]
    14e8:	001a      	movs	r2, r3
    14ea:	687b      	ldr	r3, [r7, #4]
    14ec:	189b      	adds	r3, r3, r2
    14ee:	68ba      	ldr	r2, [r7, #8]
    14f0:	b2d2      	uxtb	r2, r2
    14f2:	701a      	strb	r2, [r3, #0]
    14f4:	68bb      	ldr	r3, [r7, #8]
    14f6:	b2db      	uxtb	r3, r3
    14f8:	0018      	movs	r0, r3
    14fa:	f7ff fcfb 	bl	ef4 <xputc>
    14fe:	e7cc      	b.n	149a <xgets+0x1a>
    1500:	46c0      	nop			; (mov r8, r8)
    1502:	68fb      	ldr	r3, [r7, #12]
    1504:	687a      	ldr	r2, [r7, #4]
    1506:	18d3      	adds	r3, r2, r3
    1508:	2200      	movs	r2, #0
    150a:	701a      	strb	r2, [r3, #0]
    150c:	200a      	movs	r0, #10
    150e:	f7ff fcf1 	bl	ef4 <xputc>
    1512:	2301      	movs	r3, #1
    1514:	0018      	movs	r0, r3
    1516:	46bd      	mov	sp, r7
    1518:	b004      	add	sp, #16
    151a:	bd80      	pop	{r7, pc}
    151c:	20004100 	.word	0x20004100

00001520 <xfgets>:
    1520:	b580      	push	{r7, lr}
    1522:	b086      	sub	sp, #24
    1524:	af00      	add	r7, sp, #0
    1526:	60f8      	str	r0, [r7, #12]
    1528:	60b9      	str	r1, [r7, #8]
    152a:	607a      	str	r2, [r7, #4]
    152c:	4b0a      	ldr	r3, [pc, #40]	; (1558 <xfgets+0x38>)
    152e:	681b      	ldr	r3, [r3, #0]
    1530:	617b      	str	r3, [r7, #20]
    1532:	4b09      	ldr	r3, [pc, #36]	; (1558 <xfgets+0x38>)
    1534:	68fa      	ldr	r2, [r7, #12]
    1536:	601a      	str	r2, [r3, #0]
    1538:	687a      	ldr	r2, [r7, #4]
    153a:	68bb      	ldr	r3, [r7, #8]
    153c:	0011      	movs	r1, r2
    153e:	0018      	movs	r0, r3
    1540:	f7ff ff9e 	bl	1480 <xgets>
    1544:	0003      	movs	r3, r0
    1546:	613b      	str	r3, [r7, #16]
    1548:	4b03      	ldr	r3, [pc, #12]	; (1558 <xfgets+0x38>)
    154a:	697a      	ldr	r2, [r7, #20]
    154c:	601a      	str	r2, [r3, #0]
    154e:	693b      	ldr	r3, [r7, #16]
    1550:	0018      	movs	r0, r3
    1552:	46bd      	mov	sp, r7
    1554:	b006      	add	sp, #24
    1556:	bd80      	pop	{r7, pc}
    1558:	20004100 	.word	0x20004100

0000155c <xatoi>:
    155c:	b580      	push	{r7, lr}
    155e:	b084      	sub	sp, #16
    1560:	af00      	add	r7, sp, #0
    1562:	6078      	str	r0, [r7, #4]
    1564:	6039      	str	r1, [r7, #0]
    1566:	2309      	movs	r3, #9
    1568:	18fb      	adds	r3, r7, r3
    156a:	2200      	movs	r2, #0
    156c:	701a      	strb	r2, [r3, #0]
    156e:	683b      	ldr	r3, [r7, #0]
    1570:	2200      	movs	r2, #0
    1572:	601a      	str	r2, [r3, #0]
    1574:	e004      	b.n	1580 <xatoi+0x24>
    1576:	687b      	ldr	r3, [r7, #4]
    1578:	681b      	ldr	r3, [r3, #0]
    157a:	1c5a      	adds	r2, r3, #1
    157c:	687b      	ldr	r3, [r7, #4]
    157e:	601a      	str	r2, [r3, #0]
    1580:	687b      	ldr	r3, [r7, #4]
    1582:	681a      	ldr	r2, [r3, #0]
    1584:	230b      	movs	r3, #11
    1586:	18fb      	adds	r3, r7, r3
    1588:	7812      	ldrb	r2, [r2, #0]
    158a:	701a      	strb	r2, [r3, #0]
    158c:	230b      	movs	r3, #11
    158e:	18fb      	adds	r3, r7, r3
    1590:	781b      	ldrb	r3, [r3, #0]
    1592:	2b20      	cmp	r3, #32
    1594:	d0ef      	beq.n	1576 <xatoi+0x1a>
    1596:	230b      	movs	r3, #11
    1598:	18fb      	adds	r3, r7, r3
    159a:	781b      	ldrb	r3, [r3, #0]
    159c:	2b2d      	cmp	r3, #45	; 0x2d
    159e:	d10e      	bne.n	15be <xatoi+0x62>
    15a0:	2309      	movs	r3, #9
    15a2:	18fb      	adds	r3, r7, r3
    15a4:	2201      	movs	r2, #1
    15a6:	701a      	strb	r2, [r3, #0]
    15a8:	687b      	ldr	r3, [r7, #4]
    15aa:	681b      	ldr	r3, [r3, #0]
    15ac:	1c5a      	adds	r2, r3, #1
    15ae:	687b      	ldr	r3, [r7, #4]
    15b0:	601a      	str	r2, [r3, #0]
    15b2:	687b      	ldr	r3, [r7, #4]
    15b4:	681a      	ldr	r2, [r3, #0]
    15b6:	230b      	movs	r3, #11
    15b8:	18fb      	adds	r3, r7, r3
    15ba:	7812      	ldrb	r2, [r2, #0]
    15bc:	701a      	strb	r2, [r3, #0]
    15be:	230b      	movs	r3, #11
    15c0:	18fb      	adds	r3, r7, r3
    15c2:	781b      	ldrb	r3, [r3, #0]
    15c4:	2b30      	cmp	r3, #48	; 0x30
    15c6:	d149      	bne.n	165c <xatoi+0x100>
    15c8:	687b      	ldr	r3, [r7, #4]
    15ca:	681b      	ldr	r3, [r3, #0]
    15cc:	1c5a      	adds	r2, r3, #1
    15ce:	687b      	ldr	r3, [r7, #4]
    15d0:	601a      	str	r2, [r3, #0]
    15d2:	687b      	ldr	r3, [r7, #4]
    15d4:	681a      	ldr	r2, [r3, #0]
    15d6:	230b      	movs	r3, #11
    15d8:	18fb      	adds	r3, r7, r3
    15da:	7812      	ldrb	r2, [r2, #0]
    15dc:	701a      	strb	r2, [r3, #0]
    15de:	230b      	movs	r3, #11
    15e0:	18fb      	adds	r3, r7, r3
    15e2:	781b      	ldrb	r3, [r3, #0]
    15e4:	2b62      	cmp	r3, #98	; 0x62
    15e6:	d011      	beq.n	160c <xatoi+0xb0>
    15e8:	2b78      	cmp	r3, #120	; 0x78
    15ea:	d11f      	bne.n	162c <xatoi+0xd0>
    15ec:	230a      	movs	r3, #10
    15ee:	18fb      	adds	r3, r7, r3
    15f0:	2210      	movs	r2, #16
    15f2:	701a      	strb	r2, [r3, #0]
    15f4:	687b      	ldr	r3, [r7, #4]
    15f6:	681b      	ldr	r3, [r3, #0]
    15f8:	1c5a      	adds	r2, r3, #1
    15fa:	687b      	ldr	r3, [r7, #4]
    15fc:	601a      	str	r2, [r3, #0]
    15fe:	687b      	ldr	r3, [r7, #4]
    1600:	681a      	ldr	r2, [r3, #0]
    1602:	230b      	movs	r3, #11
    1604:	18fb      	adds	r3, r7, r3
    1606:	7812      	ldrb	r2, [r2, #0]
    1608:	701a      	strb	r2, [r3, #0]
    160a:	e037      	b.n	167c <xatoi+0x120>
    160c:	230a      	movs	r3, #10
    160e:	18fb      	adds	r3, r7, r3
    1610:	2202      	movs	r2, #2
    1612:	701a      	strb	r2, [r3, #0]
    1614:	687b      	ldr	r3, [r7, #4]
    1616:	681b      	ldr	r3, [r3, #0]
    1618:	1c5a      	adds	r2, r3, #1
    161a:	687b      	ldr	r3, [r7, #4]
    161c:	601a      	str	r2, [r3, #0]
    161e:	687b      	ldr	r3, [r7, #4]
    1620:	681a      	ldr	r2, [r3, #0]
    1622:	230b      	movs	r3, #11
    1624:	18fb      	adds	r3, r7, r3
    1626:	7812      	ldrb	r2, [r2, #0]
    1628:	701a      	strb	r2, [r3, #0]
    162a:	e027      	b.n	167c <xatoi+0x120>
    162c:	230b      	movs	r3, #11
    162e:	18fb      	adds	r3, r7, r3
    1630:	781b      	ldrb	r3, [r3, #0]
    1632:	2b20      	cmp	r3, #32
    1634:	d801      	bhi.n	163a <xatoi+0xde>
    1636:	2301      	movs	r3, #1
    1638:	e079      	b.n	172e <xatoi+0x1d2>
    163a:	230b      	movs	r3, #11
    163c:	18fb      	adds	r3, r7, r3
    163e:	781b      	ldrb	r3, [r3, #0]
    1640:	2b2f      	cmp	r3, #47	; 0x2f
    1642:	d904      	bls.n	164e <xatoi+0xf2>
    1644:	230b      	movs	r3, #11
    1646:	18fb      	adds	r3, r7, r3
    1648:	781b      	ldrb	r3, [r3, #0]
    164a:	2b39      	cmp	r3, #57	; 0x39
    164c:	d901      	bls.n	1652 <xatoi+0xf6>
    164e:	2300      	movs	r3, #0
    1650:	e06d      	b.n	172e <xatoi+0x1d2>
    1652:	230a      	movs	r3, #10
    1654:	18fb      	adds	r3, r7, r3
    1656:	2208      	movs	r2, #8
    1658:	701a      	strb	r2, [r3, #0]
    165a:	e00f      	b.n	167c <xatoi+0x120>
    165c:	230b      	movs	r3, #11
    165e:	18fb      	adds	r3, r7, r3
    1660:	781b      	ldrb	r3, [r3, #0]
    1662:	2b2f      	cmp	r3, #47	; 0x2f
    1664:	d904      	bls.n	1670 <xatoi+0x114>
    1666:	230b      	movs	r3, #11
    1668:	18fb      	adds	r3, r7, r3
    166a:	781b      	ldrb	r3, [r3, #0]
    166c:	2b39      	cmp	r3, #57	; 0x39
    166e:	d901      	bls.n	1674 <xatoi+0x118>
    1670:	2300      	movs	r3, #0
    1672:	e05c      	b.n	172e <xatoi+0x1d2>
    1674:	230a      	movs	r3, #10
    1676:	18fb      	adds	r3, r7, r3
    1678:	220a      	movs	r2, #10
    167a:	701a      	strb	r2, [r3, #0]
    167c:	2300      	movs	r3, #0
    167e:	60fb      	str	r3, [r7, #12]
    1680:	e044      	b.n	170c <xatoi+0x1b0>
    1682:	230b      	movs	r3, #11
    1684:	18fb      	adds	r3, r7, r3
    1686:	781b      	ldrb	r3, [r3, #0]
    1688:	2b60      	cmp	r3, #96	; 0x60
    168a:	d906      	bls.n	169a <xatoi+0x13e>
    168c:	230b      	movs	r3, #11
    168e:	18fb      	adds	r3, r7, r3
    1690:	220b      	movs	r2, #11
    1692:	18ba      	adds	r2, r7, r2
    1694:	7812      	ldrb	r2, [r2, #0]
    1696:	3a20      	subs	r2, #32
    1698:	701a      	strb	r2, [r3, #0]
    169a:	230b      	movs	r3, #11
    169c:	18fb      	adds	r3, r7, r3
    169e:	220b      	movs	r2, #11
    16a0:	18ba      	adds	r2, r7, r2
    16a2:	7812      	ldrb	r2, [r2, #0]
    16a4:	3a30      	subs	r2, #48	; 0x30
    16a6:	701a      	strb	r2, [r3, #0]
    16a8:	230b      	movs	r3, #11
    16aa:	18fb      	adds	r3, r7, r3
    16ac:	781b      	ldrb	r3, [r3, #0]
    16ae:	2b10      	cmp	r3, #16
    16b0:	d90d      	bls.n	16ce <xatoi+0x172>
    16b2:	230b      	movs	r3, #11
    16b4:	18fb      	adds	r3, r7, r3
    16b6:	220b      	movs	r2, #11
    16b8:	18ba      	adds	r2, r7, r2
    16ba:	7812      	ldrb	r2, [r2, #0]
    16bc:	3a07      	subs	r2, #7
    16be:	701a      	strb	r2, [r3, #0]
    16c0:	230b      	movs	r3, #11
    16c2:	18fb      	adds	r3, r7, r3
    16c4:	781b      	ldrb	r3, [r3, #0]
    16c6:	2b09      	cmp	r3, #9
    16c8:	d801      	bhi.n	16ce <xatoi+0x172>
    16ca:	2300      	movs	r3, #0
    16cc:	e02f      	b.n	172e <xatoi+0x1d2>
    16ce:	230b      	movs	r3, #11
    16d0:	18fa      	adds	r2, r7, r3
    16d2:	230a      	movs	r3, #10
    16d4:	18fb      	adds	r3, r7, r3
    16d6:	7812      	ldrb	r2, [r2, #0]
    16d8:	781b      	ldrb	r3, [r3, #0]
    16da:	429a      	cmp	r2, r3
    16dc:	d301      	bcc.n	16e2 <xatoi+0x186>
    16de:	2300      	movs	r3, #0
    16e0:	e025      	b.n	172e <xatoi+0x1d2>
    16e2:	230a      	movs	r3, #10
    16e4:	18fb      	adds	r3, r7, r3
    16e6:	781b      	ldrb	r3, [r3, #0]
    16e8:	68fa      	ldr	r2, [r7, #12]
    16ea:	435a      	muls	r2, r3
    16ec:	230b      	movs	r3, #11
    16ee:	18fb      	adds	r3, r7, r3
    16f0:	781b      	ldrb	r3, [r3, #0]
    16f2:	18d3      	adds	r3, r2, r3
    16f4:	60fb      	str	r3, [r7, #12]
    16f6:	687b      	ldr	r3, [r7, #4]
    16f8:	681b      	ldr	r3, [r3, #0]
    16fa:	1c5a      	adds	r2, r3, #1
    16fc:	687b      	ldr	r3, [r7, #4]
    16fe:	601a      	str	r2, [r3, #0]
    1700:	687b      	ldr	r3, [r7, #4]
    1702:	681a      	ldr	r2, [r3, #0]
    1704:	230b      	movs	r3, #11
    1706:	18fb      	adds	r3, r7, r3
    1708:	7812      	ldrb	r2, [r2, #0]
    170a:	701a      	strb	r2, [r3, #0]
    170c:	230b      	movs	r3, #11
    170e:	18fb      	adds	r3, r7, r3
    1710:	781b      	ldrb	r3, [r3, #0]
    1712:	2b20      	cmp	r3, #32
    1714:	d8b5      	bhi.n	1682 <xatoi+0x126>
    1716:	2309      	movs	r3, #9
    1718:	18fb      	adds	r3, r7, r3
    171a:	781b      	ldrb	r3, [r3, #0]
    171c:	2b00      	cmp	r3, #0
    171e:	d002      	beq.n	1726 <xatoi+0x1ca>
    1720:	68fb      	ldr	r3, [r7, #12]
    1722:	425b      	negs	r3, r3
    1724:	60fb      	str	r3, [r7, #12]
    1726:	68fa      	ldr	r2, [r7, #12]
    1728:	683b      	ldr	r3, [r7, #0]
    172a:	601a      	str	r2, [r3, #0]
    172c:	2301      	movs	r3, #1
    172e:	0018      	movs	r0, r3
    1730:	46bd      	mov	sp, r7
    1732:	b004      	add	sp, #16
    1734:	bd80      	pop	{r7, pc}
    1736:	46c0      	nop			; (mov r8, r8)

00001738 <__aeabi_uidiv>:
    1738:	2200      	movs	r2, #0
    173a:	0843      	lsrs	r3, r0, #1
    173c:	428b      	cmp	r3, r1
    173e:	d374      	bcc.n	182a <__aeabi_uidiv+0xf2>
    1740:	0903      	lsrs	r3, r0, #4
    1742:	428b      	cmp	r3, r1
    1744:	d35f      	bcc.n	1806 <__aeabi_uidiv+0xce>
    1746:	0a03      	lsrs	r3, r0, #8
    1748:	428b      	cmp	r3, r1
    174a:	d344      	bcc.n	17d6 <__aeabi_uidiv+0x9e>
    174c:	0b03      	lsrs	r3, r0, #12
    174e:	428b      	cmp	r3, r1
    1750:	d328      	bcc.n	17a4 <__aeabi_uidiv+0x6c>
    1752:	0c03      	lsrs	r3, r0, #16
    1754:	428b      	cmp	r3, r1
    1756:	d30d      	bcc.n	1774 <__aeabi_uidiv+0x3c>
    1758:	22ff      	movs	r2, #255	; 0xff
    175a:	0209      	lsls	r1, r1, #8
    175c:	ba12      	rev	r2, r2
    175e:	0c03      	lsrs	r3, r0, #16
    1760:	428b      	cmp	r3, r1
    1762:	d302      	bcc.n	176a <__aeabi_uidiv+0x32>
    1764:	1212      	asrs	r2, r2, #8
    1766:	0209      	lsls	r1, r1, #8
    1768:	d065      	beq.n	1836 <__aeabi_uidiv+0xfe>
    176a:	0b03      	lsrs	r3, r0, #12
    176c:	428b      	cmp	r3, r1
    176e:	d319      	bcc.n	17a4 <__aeabi_uidiv+0x6c>
    1770:	e000      	b.n	1774 <__aeabi_uidiv+0x3c>
    1772:	0a09      	lsrs	r1, r1, #8
    1774:	0bc3      	lsrs	r3, r0, #15
    1776:	428b      	cmp	r3, r1
    1778:	d301      	bcc.n	177e <__aeabi_uidiv+0x46>
    177a:	03cb      	lsls	r3, r1, #15
    177c:	1ac0      	subs	r0, r0, r3
    177e:	4152      	adcs	r2, r2
    1780:	0b83      	lsrs	r3, r0, #14
    1782:	428b      	cmp	r3, r1
    1784:	d301      	bcc.n	178a <__aeabi_uidiv+0x52>
    1786:	038b      	lsls	r3, r1, #14
    1788:	1ac0      	subs	r0, r0, r3
    178a:	4152      	adcs	r2, r2
    178c:	0b43      	lsrs	r3, r0, #13
    178e:	428b      	cmp	r3, r1
    1790:	d301      	bcc.n	1796 <__aeabi_uidiv+0x5e>
    1792:	034b      	lsls	r3, r1, #13
    1794:	1ac0      	subs	r0, r0, r3
    1796:	4152      	adcs	r2, r2
    1798:	0b03      	lsrs	r3, r0, #12
    179a:	428b      	cmp	r3, r1
    179c:	d301      	bcc.n	17a2 <__aeabi_uidiv+0x6a>
    179e:	030b      	lsls	r3, r1, #12
    17a0:	1ac0      	subs	r0, r0, r3
    17a2:	4152      	adcs	r2, r2
    17a4:	0ac3      	lsrs	r3, r0, #11
    17a6:	428b      	cmp	r3, r1
    17a8:	d301      	bcc.n	17ae <__aeabi_uidiv+0x76>
    17aa:	02cb      	lsls	r3, r1, #11
    17ac:	1ac0      	subs	r0, r0, r3
    17ae:	4152      	adcs	r2, r2
    17b0:	0a83      	lsrs	r3, r0, #10
    17b2:	428b      	cmp	r3, r1
    17b4:	d301      	bcc.n	17ba <__aeabi_uidiv+0x82>
    17b6:	028b      	lsls	r3, r1, #10
    17b8:	1ac0      	subs	r0, r0, r3
    17ba:	4152      	adcs	r2, r2
    17bc:	0a43      	lsrs	r3, r0, #9
    17be:	428b      	cmp	r3, r1
    17c0:	d301      	bcc.n	17c6 <__aeabi_uidiv+0x8e>
    17c2:	024b      	lsls	r3, r1, #9
    17c4:	1ac0      	subs	r0, r0, r3
    17c6:	4152      	adcs	r2, r2
    17c8:	0a03      	lsrs	r3, r0, #8
    17ca:	428b      	cmp	r3, r1
    17cc:	d301      	bcc.n	17d2 <__aeabi_uidiv+0x9a>
    17ce:	020b      	lsls	r3, r1, #8
    17d0:	1ac0      	subs	r0, r0, r3
    17d2:	4152      	adcs	r2, r2
    17d4:	d2cd      	bcs.n	1772 <__aeabi_uidiv+0x3a>
    17d6:	09c3      	lsrs	r3, r0, #7
    17d8:	428b      	cmp	r3, r1
    17da:	d301      	bcc.n	17e0 <__aeabi_uidiv+0xa8>
    17dc:	01cb      	lsls	r3, r1, #7
    17de:	1ac0      	subs	r0, r0, r3
    17e0:	4152      	adcs	r2, r2
    17e2:	0983      	lsrs	r3, r0, #6
    17e4:	428b      	cmp	r3, r1
    17e6:	d301      	bcc.n	17ec <__aeabi_uidiv+0xb4>
    17e8:	018b      	lsls	r3, r1, #6
    17ea:	1ac0      	subs	r0, r0, r3
    17ec:	4152      	adcs	r2, r2
    17ee:	0943      	lsrs	r3, r0, #5
    17f0:	428b      	cmp	r3, r1
    17f2:	d301      	bcc.n	17f8 <__aeabi_uidiv+0xc0>
    17f4:	014b      	lsls	r3, r1, #5
    17f6:	1ac0      	subs	r0, r0, r3
    17f8:	4152      	adcs	r2, r2
    17fa:	0903      	lsrs	r3, r0, #4
    17fc:	428b      	cmp	r3, r1
    17fe:	d301      	bcc.n	1804 <__aeabi_uidiv+0xcc>
    1800:	010b      	lsls	r3, r1, #4
    1802:	1ac0      	subs	r0, r0, r3
    1804:	4152      	adcs	r2, r2
    1806:	08c3      	lsrs	r3, r0, #3
    1808:	428b      	cmp	r3, r1
    180a:	d301      	bcc.n	1810 <__aeabi_uidiv+0xd8>
    180c:	00cb      	lsls	r3, r1, #3
    180e:	1ac0      	subs	r0, r0, r3
    1810:	4152      	adcs	r2, r2
    1812:	0883      	lsrs	r3, r0, #2
    1814:	428b      	cmp	r3, r1
    1816:	d301      	bcc.n	181c <__aeabi_uidiv+0xe4>
    1818:	008b      	lsls	r3, r1, #2
    181a:	1ac0      	subs	r0, r0, r3
    181c:	4152      	adcs	r2, r2
    181e:	0843      	lsrs	r3, r0, #1
    1820:	428b      	cmp	r3, r1
    1822:	d301      	bcc.n	1828 <__aeabi_uidiv+0xf0>
    1824:	004b      	lsls	r3, r1, #1
    1826:	1ac0      	subs	r0, r0, r3
    1828:	4152      	adcs	r2, r2
    182a:	1a41      	subs	r1, r0, r1
    182c:	d200      	bcs.n	1830 <__aeabi_uidiv+0xf8>
    182e:	4601      	mov	r1, r0
    1830:	4152      	adcs	r2, r2
    1832:	4610      	mov	r0, r2
    1834:	4770      	bx	lr
    1836:	e7ff      	b.n	1838 <__aeabi_uidiv+0x100>
    1838:	b501      	push	{r0, lr}
    183a:	2000      	movs	r0, #0
    183c:	f000 f806 	bl	184c <__aeabi_idiv0>
    1840:	bd02      	pop	{r1, pc}
    1842:	46c0      	nop			; (mov r8, r8)

00001844 <__aeabi_uidivmod>:
    1844:	2900      	cmp	r1, #0
    1846:	d0f7      	beq.n	1838 <__aeabi_uidiv+0x100>
    1848:	e776      	b.n	1738 <__aeabi_uidiv>
    184a:	4770      	bx	lr

0000184c <__aeabi_idiv0>:
    184c:	4770      	bx	lr
    184e:	46c0      	nop			; (mov r8, r8)
    1850:	0000115a 	.word	0x0000115a
    1854:	00001148 	.word	0x00001148
    1858:	00001166 	.word	0x00001166
    185c:	00001172 	.word	0x00001172
    1860:	00001172 	.word	0x00001172
    1864:	00001172 	.word	0x00001172
    1868:	00001172 	.word	0x00001172
    186c:	00001172 	.word	0x00001172
    1870:	00001172 	.word	0x00001172
    1874:	00001172 	.word	0x00001172
    1878:	00001172 	.word	0x00001172
    187c:	00001172 	.word	0x00001172
    1880:	00001172 	.word	0x00001172
    1884:	00001160 	.word	0x00001160
    1888:	00001172 	.word	0x00001172
    188c:	00001172 	.word	0x00001172
    1890:	00001172 	.word	0x00001172
    1894:	000010ec 	.word	0x000010ec
    1898:	00001172 	.word	0x00001172
    189c:	00001166 	.word	0x00001166
    18a0:	00001172 	.word	0x00001172
    18a4:	00001172 	.word	0x00001172
    18a8:	0000116c 	.word	0x0000116c
    18ac:	6c383025 	.word	0x6c383025
    18b0:	00002058 	.word	0x00002058
    18b4:	32302520 	.word	0x32302520
    18b8:	00000058 	.word	0x00000058
    18bc:	34302520 	.word	0x34302520
    18c0:	00000058 	.word	0x00000058
    18c4:	38302520 	.word	0x38302520
    18c8:	0000584c 	.word	0x0000584c
