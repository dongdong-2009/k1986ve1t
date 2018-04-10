
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
     bec:	00001900 	.word	0x00001900
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
     cc0:	2184      	movs	r1, #132	; 0x84
     cc2:	0089      	lsls	r1, r1, #2
     cc4:	430a      	orrs	r2, r1
     cc6:	639a      	str	r2, [r3, #56]	; 0x38
     cc8:	2007      	movs	r0, #7
     cca:	f7ff ff9d 	bl	c08 <NVIC_EnableIRQ>
     cce:	46c0      	nop			; (mov r8, r8)
     cd0:	46bd      	mov	sp, r7
     cd2:	bd80      	pop	{r7, pc}
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
     e4a:	4b2e      	ldr	r3, [pc, #184]	; (f04 <UART2_Handler+0xc0>)
     e4c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     e4e:	2220      	movs	r2, #32
     e50:	4013      	ands	r3, r2
     e52:	d019      	beq.n	e88 <UART2_Handler+0x44>
     e54:	4b2c      	ldr	r3, [pc, #176]	; (f08 <UART2_Handler+0xc4>)
     e56:	681a      	ldr	r2, [r3, #0]
     e58:	4b2c      	ldr	r3, [pc, #176]	; (f0c <UART2_Handler+0xc8>)
     e5a:	681b      	ldr	r3, [r3, #0]
     e5c:	429a      	cmp	r2, r3
     e5e:	d106      	bne.n	e6e <UART2_Handler+0x2a>
     e60:	4b28      	ldr	r3, [pc, #160]	; (f04 <UART2_Handler+0xc0>)
     e62:	4a28      	ldr	r2, [pc, #160]	; (f04 <UART2_Handler+0xc0>)
     e64:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e66:	2120      	movs	r1, #32
     e68:	438a      	bics	r2, r1
     e6a:	639a      	str	r2, [r3, #56]	; 0x38
     e6c:	e00c      	b.n	e88 <UART2_Handler+0x44>
     e6e:	4a25      	ldr	r2, [pc, #148]	; (f04 <UART2_Handler+0xc0>)
     e70:	4b25      	ldr	r3, [pc, #148]	; (f08 <UART2_Handler+0xc4>)
     e72:	681b      	ldr	r3, [r3, #0]
     e74:	4926      	ldr	r1, [pc, #152]	; (f10 <UART2_Handler+0xcc>)
     e76:	5ccb      	ldrb	r3, [r1, r3]
     e78:	6013      	str	r3, [r2, #0]
     e7a:	4b23      	ldr	r3, [pc, #140]	; (f08 <UART2_Handler+0xc4>)
     e7c:	681b      	ldr	r3, [r3, #0]
     e7e:	3301      	adds	r3, #1
     e80:	04db      	lsls	r3, r3, #19
     e82:	0cda      	lsrs	r2, r3, #19
     e84:	4b20      	ldr	r3, [pc, #128]	; (f08 <UART2_Handler+0xc4>)
     e86:	601a      	str	r2, [r3, #0]
     e88:	4b1e      	ldr	r3, [pc, #120]	; (f04 <UART2_Handler+0xc0>)
     e8a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     e8c:	2210      	movs	r2, #16
     e8e:	4013      	ands	r3, r2
     e90:	d01b      	beq.n	eca <UART2_Handler+0x86>
     e92:	4b20      	ldr	r3, [pc, #128]	; (f14 <UART2_Handler+0xd0>)
     e94:	681a      	ldr	r2, [r3, #0]
     e96:	4b1b      	ldr	r3, [pc, #108]	; (f04 <UART2_Handler+0xc0>)
     e98:	681b      	ldr	r3, [r3, #0]
     e9a:	b2d9      	uxtb	r1, r3
     e9c:	4b1e      	ldr	r3, [pc, #120]	; (f18 <UART2_Handler+0xd4>)
     e9e:	5499      	strb	r1, [r3, r2]
     ea0:	4b1c      	ldr	r3, [pc, #112]	; (f14 <UART2_Handler+0xd0>)
     ea2:	681b      	ldr	r3, [r3, #0]
     ea4:	3301      	adds	r3, #1
     ea6:	04db      	lsls	r3, r3, #19
     ea8:	0cda      	lsrs	r2, r3, #19
     eaa:	4b1a      	ldr	r3, [pc, #104]	; (f14 <UART2_Handler+0xd0>)
     eac:	601a      	str	r2, [r3, #0]
     eae:	f7ff fec7 	bl	c40 <uart_bsz>
     eb2:	0003      	movs	r3, r0
     eb4:	607b      	str	r3, [r7, #4]
     eb6:	687b      	ldr	r3, [r7, #4]
     eb8:	4a18      	ldr	r2, [pc, #96]	; (f1c <UART2_Handler+0xd8>)
     eba:	4293      	cmp	r3, r2
     ebc:	dd05      	ble.n	eca <UART2_Handler+0x86>
     ebe:	4b18      	ldr	r3, [pc, #96]	; (f20 <UART2_Handler+0xdc>)
     ec0:	4a17      	ldr	r2, [pc, #92]	; (f20 <UART2_Handler+0xdc>)
     ec2:	6812      	ldr	r2, [r2, #0]
     ec4:	2180      	movs	r1, #128	; 0x80
     ec6:	430a      	orrs	r2, r1
     ec8:	601a      	str	r2, [r3, #0]
     eca:	4b0e      	ldr	r3, [pc, #56]	; (f04 <UART2_Handler+0xc0>)
     ecc:	6c1a      	ldr	r2, [r3, #64]	; 0x40
     ece:	2380      	movs	r3, #128	; 0x80
     ed0:	009b      	lsls	r3, r3, #2
     ed2:	4013      	ands	r3, r2
     ed4:	d012      	beq.n	efc <UART2_Handler+0xb8>
     ed6:	4b0b      	ldr	r3, [pc, #44]	; (f04 <UART2_Handler+0xc0>)
     ed8:	4a0a      	ldr	r2, [pc, #40]	; (f04 <UART2_Handler+0xc0>)
     eda:	6c52      	ldr	r2, [r2, #68]	; 0x44
     edc:	2180      	movs	r1, #128	; 0x80
     ede:	0089      	lsls	r1, r1, #2
     ee0:	430a      	orrs	r2, r1
     ee2:	645a      	str	r2, [r3, #68]	; 0x44
     ee4:	4b0b      	ldr	r3, [pc, #44]	; (f14 <UART2_Handler+0xd0>)
     ee6:	2200      	movs	r2, #0
     ee8:	601a      	str	r2, [r3, #0]
     eea:	4b0e      	ldr	r3, [pc, #56]	; (f24 <UART2_Handler+0xe0>)
     eec:	2200      	movs	r2, #0
     eee:	601a      	str	r2, [r3, #0]
     ef0:	4b0b      	ldr	r3, [pc, #44]	; (f20 <UART2_Handler+0xdc>)
     ef2:	4a0b      	ldr	r2, [pc, #44]	; (f20 <UART2_Handler+0xdc>)
     ef4:	6812      	ldr	r2, [r2, #0]
     ef6:	2180      	movs	r1, #128	; 0x80
     ef8:	438a      	bics	r2, r1
     efa:	601a      	str	r2, [r3, #0]
     efc:	46c0      	nop			; (mov r8, r8)
     efe:	46bd      	mov	sp, r7
     f00:	b002      	add	sp, #8
     f02:	bd80      	pop	{r7, pc}
     f04:	40038000 	.word	0x40038000
     f08:	200020e8 	.word	0x200020e8
     f0c:	200020ec 	.word	0x200020ec
     f10:	200000e8 	.word	0x200000e8
     f14:	200040f0 	.word	0x200040f0
     f18:	200020f0 	.word	0x200020f0
     f1c:	00001d4c 	.word	0x00001d4c
     f20:	400c8000 	.word	0x400c8000
     f24:	200040f4 	.word	0x200040f4

00000f28 <xputc>:
     f28:	b580      	push	{r7, lr}
     f2a:	b082      	sub	sp, #8
     f2c:	af00      	add	r7, sp, #0
     f2e:	0002      	movs	r2, r0
     f30:	1dfb      	adds	r3, r7, #7
     f32:	701a      	strb	r2, [r3, #0]
     f34:	1dfb      	adds	r3, r7, #7
     f36:	781b      	ldrb	r3, [r3, #0]
     f38:	2b0a      	cmp	r3, #10
     f3a:	d102      	bne.n	f42 <xputc+0x1a>
     f3c:	200d      	movs	r0, #13
     f3e:	f7ff fff3 	bl	f28 <xputc>
     f42:	4b0d      	ldr	r3, [pc, #52]	; (f78 <xputc+0x50>)
     f44:	681b      	ldr	r3, [r3, #0]
     f46:	2b00      	cmp	r3, #0
     f48:	d008      	beq.n	f5c <xputc+0x34>
     f4a:	4b0b      	ldr	r3, [pc, #44]	; (f78 <xputc+0x50>)
     f4c:	681b      	ldr	r3, [r3, #0]
     f4e:	1c59      	adds	r1, r3, #1
     f50:	4a09      	ldr	r2, [pc, #36]	; (f78 <xputc+0x50>)
     f52:	6011      	str	r1, [r2, #0]
     f54:	1dfa      	adds	r2, r7, #7
     f56:	7812      	ldrb	r2, [r2, #0]
     f58:	701a      	strb	r2, [r3, #0]
     f5a:	e009      	b.n	f70 <xputc+0x48>
     f5c:	4b07      	ldr	r3, [pc, #28]	; (f7c <xputc+0x54>)
     f5e:	681b      	ldr	r3, [r3, #0]
     f60:	2b00      	cmp	r3, #0
     f62:	d005      	beq.n	f70 <xputc+0x48>
     f64:	4b05      	ldr	r3, [pc, #20]	; (f7c <xputc+0x54>)
     f66:	681b      	ldr	r3, [r3, #0]
     f68:	1dfa      	adds	r2, r7, #7
     f6a:	7812      	ldrb	r2, [r2, #0]
     f6c:	0010      	movs	r0, r2
     f6e:	4798      	blx	r3
     f70:	46bd      	mov	sp, r7
     f72:	b002      	add	sp, #8
     f74:	bd80      	pop	{r7, pc}
     f76:	46c0      	nop			; (mov r8, r8)
     f78:	200040fc 	.word	0x200040fc
     f7c:	200040f8 	.word	0x200040f8

00000f80 <xputs>:
     f80:	b580      	push	{r7, lr}
     f82:	b082      	sub	sp, #8
     f84:	af00      	add	r7, sp, #0
     f86:	6078      	str	r0, [r7, #4]
     f88:	e006      	b.n	f98 <xputs+0x18>
     f8a:	687b      	ldr	r3, [r7, #4]
     f8c:	1c5a      	adds	r2, r3, #1
     f8e:	607a      	str	r2, [r7, #4]
     f90:	781b      	ldrb	r3, [r3, #0]
     f92:	0018      	movs	r0, r3
     f94:	f7ff ffc8 	bl	f28 <xputc>
     f98:	687b      	ldr	r3, [r7, #4]
     f9a:	781b      	ldrb	r3, [r3, #0]
     f9c:	2b00      	cmp	r3, #0
     f9e:	d1f4      	bne.n	f8a <xputs+0xa>
     fa0:	46c0      	nop			; (mov r8, r8)
     fa2:	46bd      	mov	sp, r7
     fa4:	b002      	add	sp, #8
     fa6:	bd80      	pop	{r7, pc}

00000fa8 <xfputs>:
     fa8:	b580      	push	{r7, lr}
     faa:	b084      	sub	sp, #16
     fac:	af00      	add	r7, sp, #0
     fae:	6078      	str	r0, [r7, #4]
     fb0:	6039      	str	r1, [r7, #0]
     fb2:	4b0c      	ldr	r3, [pc, #48]	; (fe4 <xfputs+0x3c>)
     fb4:	681b      	ldr	r3, [r3, #0]
     fb6:	60fb      	str	r3, [r7, #12]
     fb8:	4b0a      	ldr	r3, [pc, #40]	; (fe4 <xfputs+0x3c>)
     fba:	687a      	ldr	r2, [r7, #4]
     fbc:	601a      	str	r2, [r3, #0]
     fbe:	e006      	b.n	fce <xfputs+0x26>
     fc0:	683b      	ldr	r3, [r7, #0]
     fc2:	1c5a      	adds	r2, r3, #1
     fc4:	603a      	str	r2, [r7, #0]
     fc6:	781b      	ldrb	r3, [r3, #0]
     fc8:	0018      	movs	r0, r3
     fca:	f7ff ffad 	bl	f28 <xputc>
     fce:	683b      	ldr	r3, [r7, #0]
     fd0:	781b      	ldrb	r3, [r3, #0]
     fd2:	2b00      	cmp	r3, #0
     fd4:	d1f4      	bne.n	fc0 <xfputs+0x18>
     fd6:	4b03      	ldr	r3, [pc, #12]	; (fe4 <xfputs+0x3c>)
     fd8:	68fa      	ldr	r2, [r7, #12]
     fda:	601a      	str	r2, [r3, #0]
     fdc:	46c0      	nop			; (mov r8, r8)
     fde:	46bd      	mov	sp, r7
     fe0:	b004      	add	sp, #16
     fe2:	bd80      	pop	{r7, pc}
     fe4:	200040f8 	.word	0x200040f8

00000fe8 <xvprintf>:
     fe8:	b580      	push	{r7, lr}
     fea:	b08e      	sub	sp, #56	; 0x38
     fec:	af00      	add	r7, sp, #0
     fee:	6078      	str	r0, [r7, #4]
     ff0:	6039      	str	r1, [r7, #0]
     ff2:	687b      	ldr	r3, [r7, #4]
     ff4:	1c5a      	adds	r2, r3, #1
     ff6:	607a      	str	r2, [r7, #4]
     ff8:	221f      	movs	r2, #31
     ffa:	18ba      	adds	r2, r7, r2
     ffc:	781b      	ldrb	r3, [r3, #0]
     ffe:	7013      	strb	r3, [r2, #0]
    1000:	231f      	movs	r3, #31
    1002:	18fb      	adds	r3, r7, r3
    1004:	781b      	ldrb	r3, [r3, #0]
    1006:	2b00      	cmp	r3, #0
    1008:	d100      	bne.n	100c <xvprintf+0x24>
    100a:	e172      	b.n	12f2 <xvprintf+0x30a>
    100c:	231f      	movs	r3, #31
    100e:	18fb      	adds	r3, r7, r3
    1010:	781b      	ldrb	r3, [r3, #0]
    1012:	2b25      	cmp	r3, #37	; 0x25
    1014:	d006      	beq.n	1024 <xvprintf+0x3c>
    1016:	231f      	movs	r3, #31
    1018:	18fb      	adds	r3, r7, r3
    101a:	781b      	ldrb	r3, [r3, #0]
    101c:	0018      	movs	r0, r3
    101e:	f7ff ff83 	bl	f28 <xputc>
    1022:	e165      	b.n	12f0 <xvprintf+0x308>
    1024:	2300      	movs	r3, #0
    1026:	627b      	str	r3, [r7, #36]	; 0x24
    1028:	687b      	ldr	r3, [r7, #4]
    102a:	1c5a      	adds	r2, r3, #1
    102c:	607a      	str	r2, [r7, #4]
    102e:	221f      	movs	r2, #31
    1030:	18ba      	adds	r2, r7, r2
    1032:	781b      	ldrb	r3, [r3, #0]
    1034:	7013      	strb	r3, [r2, #0]
    1036:	231f      	movs	r3, #31
    1038:	18fb      	adds	r3, r7, r3
    103a:	781b      	ldrb	r3, [r3, #0]
    103c:	2b30      	cmp	r3, #48	; 0x30
    103e:	d109      	bne.n	1054 <xvprintf+0x6c>
    1040:	2301      	movs	r3, #1
    1042:	627b      	str	r3, [r7, #36]	; 0x24
    1044:	687b      	ldr	r3, [r7, #4]
    1046:	1c5a      	adds	r2, r3, #1
    1048:	607a      	str	r2, [r7, #4]
    104a:	221f      	movs	r2, #31
    104c:	18ba      	adds	r2, r7, r2
    104e:	781b      	ldrb	r3, [r3, #0]
    1050:	7013      	strb	r3, [r2, #0]
    1052:	e00d      	b.n	1070 <xvprintf+0x88>
    1054:	231f      	movs	r3, #31
    1056:	18fb      	adds	r3, r7, r3
    1058:	781b      	ldrb	r3, [r3, #0]
    105a:	2b2d      	cmp	r3, #45	; 0x2d
    105c:	d108      	bne.n	1070 <xvprintf+0x88>
    105e:	2302      	movs	r3, #2
    1060:	627b      	str	r3, [r7, #36]	; 0x24
    1062:	687b      	ldr	r3, [r7, #4]
    1064:	1c5a      	adds	r2, r3, #1
    1066:	607a      	str	r2, [r7, #4]
    1068:	221f      	movs	r2, #31
    106a:	18ba      	adds	r2, r7, r2
    106c:	781b      	ldrb	r3, [r3, #0]
    106e:	7013      	strb	r3, [r2, #0]
    1070:	2300      	movs	r3, #0
    1072:	62bb      	str	r3, [r7, #40]	; 0x28
    1074:	e012      	b.n	109c <xvprintf+0xb4>
    1076:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1078:	0013      	movs	r3, r2
    107a:	009b      	lsls	r3, r3, #2
    107c:	189b      	adds	r3, r3, r2
    107e:	005b      	lsls	r3, r3, #1
    1080:	001a      	movs	r2, r3
    1082:	231f      	movs	r3, #31
    1084:	18fb      	adds	r3, r7, r3
    1086:	781b      	ldrb	r3, [r3, #0]
    1088:	18d3      	adds	r3, r2, r3
    108a:	3b30      	subs	r3, #48	; 0x30
    108c:	62bb      	str	r3, [r7, #40]	; 0x28
    108e:	687b      	ldr	r3, [r7, #4]
    1090:	1c5a      	adds	r2, r3, #1
    1092:	607a      	str	r2, [r7, #4]
    1094:	221f      	movs	r2, #31
    1096:	18ba      	adds	r2, r7, r2
    1098:	781b      	ldrb	r3, [r3, #0]
    109a:	7013      	strb	r3, [r2, #0]
    109c:	231f      	movs	r3, #31
    109e:	18fb      	adds	r3, r7, r3
    10a0:	781b      	ldrb	r3, [r3, #0]
    10a2:	2b2f      	cmp	r3, #47	; 0x2f
    10a4:	d904      	bls.n	10b0 <xvprintf+0xc8>
    10a6:	231f      	movs	r3, #31
    10a8:	18fb      	adds	r3, r7, r3
    10aa:	781b      	ldrb	r3, [r3, #0]
    10ac:	2b39      	cmp	r3, #57	; 0x39
    10ae:	d9e2      	bls.n	1076 <xvprintf+0x8e>
    10b0:	231f      	movs	r3, #31
    10b2:	18fb      	adds	r3, r7, r3
    10b4:	781b      	ldrb	r3, [r3, #0]
    10b6:	2b6c      	cmp	r3, #108	; 0x6c
    10b8:	d004      	beq.n	10c4 <xvprintf+0xdc>
    10ba:	231f      	movs	r3, #31
    10bc:	18fb      	adds	r3, r7, r3
    10be:	781b      	ldrb	r3, [r3, #0]
    10c0:	2b4c      	cmp	r3, #76	; 0x4c
    10c2:	d10a      	bne.n	10da <xvprintf+0xf2>
    10c4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10c6:	2204      	movs	r2, #4
    10c8:	4313      	orrs	r3, r2
    10ca:	627b      	str	r3, [r7, #36]	; 0x24
    10cc:	687b      	ldr	r3, [r7, #4]
    10ce:	1c5a      	adds	r2, r3, #1
    10d0:	607a      	str	r2, [r7, #4]
    10d2:	221f      	movs	r2, #31
    10d4:	18ba      	adds	r2, r7, r2
    10d6:	781b      	ldrb	r3, [r3, #0]
    10d8:	7013      	strb	r3, [r2, #0]
    10da:	231f      	movs	r3, #31
    10dc:	18fb      	adds	r3, r7, r3
    10de:	781b      	ldrb	r3, [r3, #0]
    10e0:	2b00      	cmp	r3, #0
    10e2:	d100      	bne.n	10e6 <xvprintf+0xfe>
    10e4:	e107      	b.n	12f6 <xvprintf+0x30e>
    10e6:	231e      	movs	r3, #30
    10e8:	18fb      	adds	r3, r7, r3
    10ea:	221f      	movs	r2, #31
    10ec:	18ba      	adds	r2, r7, r2
    10ee:	7812      	ldrb	r2, [r2, #0]
    10f0:	701a      	strb	r2, [r3, #0]
    10f2:	231e      	movs	r3, #30
    10f4:	18fb      	adds	r3, r7, r3
    10f6:	781b      	ldrb	r3, [r3, #0]
    10f8:	2b60      	cmp	r3, #96	; 0x60
    10fa:	d906      	bls.n	110a <xvprintf+0x122>
    10fc:	231e      	movs	r3, #30
    10fe:	18fb      	adds	r3, r7, r3
    1100:	221e      	movs	r2, #30
    1102:	18ba      	adds	r2, r7, r2
    1104:	7812      	ldrb	r2, [r2, #0]
    1106:	3a20      	subs	r2, #32
    1108:	701a      	strb	r2, [r3, #0]
    110a:	231e      	movs	r3, #30
    110c:	18fb      	adds	r3, r7, r3
    110e:	781b      	ldrb	r3, [r3, #0]
    1110:	3b42      	subs	r3, #66	; 0x42
    1112:	2b16      	cmp	r3, #22
    1114:	d847      	bhi.n	11a6 <xvprintf+0x1be>
    1116:	009a      	lsls	r2, r3, #2
    1118:	4b79      	ldr	r3, [pc, #484]	; (1300 <xvprintf+0x318>)
    111a:	18d3      	adds	r3, r2, r3
    111c:	681b      	ldr	r3, [r3, #0]
    111e:	469f      	mov	pc, r3
    1120:	683b      	ldr	r3, [r7, #0]
    1122:	1d1a      	adds	r2, r3, #4
    1124:	603a      	str	r2, [r7, #0]
    1126:	681b      	ldr	r3, [r3, #0]
    1128:	61bb      	str	r3, [r7, #24]
    112a:	2300      	movs	r3, #0
    112c:	62fb      	str	r3, [r7, #44]	; 0x2c
    112e:	e002      	b.n	1136 <xvprintf+0x14e>
    1130:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1132:	3301      	adds	r3, #1
    1134:	62fb      	str	r3, [r7, #44]	; 0x2c
    1136:	69ba      	ldr	r2, [r7, #24]
    1138:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    113a:	18d3      	adds	r3, r2, r3
    113c:	781b      	ldrb	r3, [r3, #0]
    113e:	2b00      	cmp	r3, #0
    1140:	d1f6      	bne.n	1130 <xvprintf+0x148>
    1142:	e002      	b.n	114a <xvprintf+0x162>
    1144:	2020      	movs	r0, #32
    1146:	f7ff feef 	bl	f28 <xputc>
    114a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    114c:	2202      	movs	r2, #2
    114e:	4013      	ands	r3, r2
    1150:	d105      	bne.n	115e <xvprintf+0x176>
    1152:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1154:	1c5a      	adds	r2, r3, #1
    1156:	62fa      	str	r2, [r7, #44]	; 0x2c
    1158:	6aba      	ldr	r2, [r7, #40]	; 0x28
    115a:	4293      	cmp	r3, r2
    115c:	d3f2      	bcc.n	1144 <xvprintf+0x15c>
    115e:	69bb      	ldr	r3, [r7, #24]
    1160:	0018      	movs	r0, r3
    1162:	f7ff ff0d 	bl	f80 <xputs>
    1166:	e002      	b.n	116e <xvprintf+0x186>
    1168:	2020      	movs	r0, #32
    116a:	f7ff fedd 	bl	f28 <xputc>
    116e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1170:	1c5a      	adds	r2, r3, #1
    1172:	62fa      	str	r2, [r7, #44]	; 0x2c
    1174:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1176:	4293      	cmp	r3, r2
    1178:	d3f6      	bcc.n	1168 <xvprintf+0x180>
    117a:	e0b9      	b.n	12f0 <xvprintf+0x308>
    117c:	683b      	ldr	r3, [r7, #0]
    117e:	1d1a      	adds	r2, r3, #4
    1180:	603a      	str	r2, [r7, #0]
    1182:	681b      	ldr	r3, [r3, #0]
    1184:	b2db      	uxtb	r3, r3
    1186:	0018      	movs	r0, r3
    1188:	f7ff fece 	bl	f28 <xputc>
    118c:	e0b0      	b.n	12f0 <xvprintf+0x308>
    118e:	2302      	movs	r3, #2
    1190:	637b      	str	r3, [r7, #52]	; 0x34
    1192:	e00f      	b.n	11b4 <xvprintf+0x1cc>
    1194:	2308      	movs	r3, #8
    1196:	637b      	str	r3, [r7, #52]	; 0x34
    1198:	e00c      	b.n	11b4 <xvprintf+0x1cc>
    119a:	230a      	movs	r3, #10
    119c:	637b      	str	r3, [r7, #52]	; 0x34
    119e:	e009      	b.n	11b4 <xvprintf+0x1cc>
    11a0:	2310      	movs	r3, #16
    11a2:	637b      	str	r3, [r7, #52]	; 0x34
    11a4:	e006      	b.n	11b4 <xvprintf+0x1cc>
    11a6:	231f      	movs	r3, #31
    11a8:	18fb      	adds	r3, r7, r3
    11aa:	781b      	ldrb	r3, [r3, #0]
    11ac:	0018      	movs	r0, r3
    11ae:	f7ff febb 	bl	f28 <xputc>
    11b2:	e09d      	b.n	12f0 <xvprintf+0x308>
    11b4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    11b6:	2204      	movs	r2, #4
    11b8:	4013      	ands	r3, r2
    11ba:	d004      	beq.n	11c6 <xvprintf+0x1de>
    11bc:	683b      	ldr	r3, [r7, #0]
    11be:	1d1a      	adds	r2, r3, #4
    11c0:	603a      	str	r2, [r7, #0]
    11c2:	681b      	ldr	r3, [r3, #0]
    11c4:	e00d      	b.n	11e2 <xvprintf+0x1fa>
    11c6:	231e      	movs	r3, #30
    11c8:	18fb      	adds	r3, r7, r3
    11ca:	781b      	ldrb	r3, [r3, #0]
    11cc:	2b44      	cmp	r3, #68	; 0x44
    11ce:	d104      	bne.n	11da <xvprintf+0x1f2>
    11d0:	683b      	ldr	r3, [r7, #0]
    11d2:	1d1a      	adds	r2, r3, #4
    11d4:	603a      	str	r2, [r7, #0]
    11d6:	681b      	ldr	r3, [r3, #0]
    11d8:	e003      	b.n	11e2 <xvprintf+0x1fa>
    11da:	683b      	ldr	r3, [r7, #0]
    11dc:	1d1a      	adds	r2, r3, #4
    11de:	603a      	str	r2, [r7, #0]
    11e0:	681b      	ldr	r3, [r3, #0]
    11e2:	623b      	str	r3, [r7, #32]
    11e4:	231e      	movs	r3, #30
    11e6:	18fb      	adds	r3, r7, r3
    11e8:	781b      	ldrb	r3, [r3, #0]
    11ea:	2b44      	cmp	r3, #68	; 0x44
    11ec:	d109      	bne.n	1202 <xvprintf+0x21a>
    11ee:	6a3b      	ldr	r3, [r7, #32]
    11f0:	2b00      	cmp	r3, #0
    11f2:	da06      	bge.n	1202 <xvprintf+0x21a>
    11f4:	6a3b      	ldr	r3, [r7, #32]
    11f6:	425b      	negs	r3, r3
    11f8:	623b      	str	r3, [r7, #32]
    11fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    11fc:	2208      	movs	r2, #8
    11fe:	4313      	orrs	r3, r2
    1200:	627b      	str	r3, [r7, #36]	; 0x24
    1202:	2300      	movs	r3, #0
    1204:	633b      	str	r3, [r7, #48]	; 0x30
    1206:	6a3b      	ldr	r3, [r7, #32]
    1208:	6b79      	ldr	r1, [r7, #52]	; 0x34
    120a:	0018      	movs	r0, r3
    120c:	f000 fb34 	bl	1878 <__aeabi_uidivmod>
    1210:	000b      	movs	r3, r1
    1212:	001a      	movs	r2, r3
    1214:	231e      	movs	r3, #30
    1216:	18fb      	adds	r3, r7, r3
    1218:	701a      	strb	r2, [r3, #0]
    121a:	6b79      	ldr	r1, [r7, #52]	; 0x34
    121c:	6a38      	ldr	r0, [r7, #32]
    121e:	f000 faa5 	bl	176c <__aeabi_uidiv>
    1222:	0003      	movs	r3, r0
    1224:	623b      	str	r3, [r7, #32]
    1226:	231e      	movs	r3, #30
    1228:	18fb      	adds	r3, r7, r3
    122a:	781b      	ldrb	r3, [r3, #0]
    122c:	2b09      	cmp	r3, #9
    122e:	d90e      	bls.n	124e <xvprintf+0x266>
    1230:	231f      	movs	r3, #31
    1232:	18fb      	adds	r3, r7, r3
    1234:	781b      	ldrb	r3, [r3, #0]
    1236:	2b78      	cmp	r3, #120	; 0x78
    1238:	d101      	bne.n	123e <xvprintf+0x256>
    123a:	2327      	movs	r3, #39	; 0x27
    123c:	e000      	b.n	1240 <xvprintf+0x258>
    123e:	2307      	movs	r3, #7
    1240:	221e      	movs	r2, #30
    1242:	18ba      	adds	r2, r7, r2
    1244:	211e      	movs	r1, #30
    1246:	1879      	adds	r1, r7, r1
    1248:	7809      	ldrb	r1, [r1, #0]
    124a:	185b      	adds	r3, r3, r1
    124c:	7013      	strb	r3, [r2, #0]
    124e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1250:	1c5a      	adds	r2, r3, #1
    1252:	633a      	str	r2, [r7, #48]	; 0x30
    1254:	221e      	movs	r2, #30
    1256:	18ba      	adds	r2, r7, r2
    1258:	7812      	ldrb	r2, [r2, #0]
    125a:	3230      	adds	r2, #48	; 0x30
    125c:	b2d1      	uxtb	r1, r2
    125e:	2208      	movs	r2, #8
    1260:	18ba      	adds	r2, r7, r2
    1262:	54d1      	strb	r1, [r2, r3]
    1264:	6a3b      	ldr	r3, [r7, #32]
    1266:	2b00      	cmp	r3, #0
    1268:	d002      	beq.n	1270 <xvprintf+0x288>
    126a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    126c:	2b0f      	cmp	r3, #15
    126e:	d9ca      	bls.n	1206 <xvprintf+0x21e>
    1270:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1272:	2208      	movs	r2, #8
    1274:	4013      	ands	r3, r2
    1276:	d006      	beq.n	1286 <xvprintf+0x29e>
    1278:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    127a:	1c5a      	adds	r2, r3, #1
    127c:	633a      	str	r2, [r7, #48]	; 0x30
    127e:	2208      	movs	r2, #8
    1280:	18ba      	adds	r2, r7, r2
    1282:	212d      	movs	r1, #45	; 0x2d
    1284:	54d1      	strb	r1, [r2, r3]
    1286:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1288:	62fb      	str	r3, [r7, #44]	; 0x2c
    128a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    128c:	2201      	movs	r2, #1
    128e:	4013      	ands	r3, r2
    1290:	d001      	beq.n	1296 <xvprintf+0x2ae>
    1292:	2230      	movs	r2, #48	; 0x30
    1294:	e000      	b.n	1298 <xvprintf+0x2b0>
    1296:	2220      	movs	r2, #32
    1298:	231e      	movs	r3, #30
    129a:	18fb      	adds	r3, r7, r3
    129c:	701a      	strb	r2, [r3, #0]
    129e:	e005      	b.n	12ac <xvprintf+0x2c4>
    12a0:	231e      	movs	r3, #30
    12a2:	18fb      	adds	r3, r7, r3
    12a4:	781b      	ldrb	r3, [r3, #0]
    12a6:	0018      	movs	r0, r3
    12a8:	f7ff fe3e 	bl	f28 <xputc>
    12ac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12ae:	2202      	movs	r2, #2
    12b0:	4013      	ands	r3, r2
    12b2:	d105      	bne.n	12c0 <xvprintf+0x2d8>
    12b4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12b6:	1c5a      	adds	r2, r3, #1
    12b8:	62fa      	str	r2, [r7, #44]	; 0x2c
    12ba:	6aba      	ldr	r2, [r7, #40]	; 0x28
    12bc:	4293      	cmp	r3, r2
    12be:	d3ef      	bcc.n	12a0 <xvprintf+0x2b8>
    12c0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    12c2:	3b01      	subs	r3, #1
    12c4:	633b      	str	r3, [r7, #48]	; 0x30
    12c6:	2308      	movs	r3, #8
    12c8:	18fa      	adds	r2, r7, r3
    12ca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    12cc:	18d3      	adds	r3, r2, r3
    12ce:	781b      	ldrb	r3, [r3, #0]
    12d0:	0018      	movs	r0, r3
    12d2:	f7ff fe29 	bl	f28 <xputc>
    12d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    12d8:	2b00      	cmp	r3, #0
    12da:	d1f1      	bne.n	12c0 <xvprintf+0x2d8>
    12dc:	e002      	b.n	12e4 <xvprintf+0x2fc>
    12de:	2020      	movs	r0, #32
    12e0:	f7ff fe22 	bl	f28 <xputc>
    12e4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12e6:	1c5a      	adds	r2, r3, #1
    12e8:	62fa      	str	r2, [r7, #44]	; 0x2c
    12ea:	6aba      	ldr	r2, [r7, #40]	; 0x28
    12ec:	4293      	cmp	r3, r2
    12ee:	d3f6      	bcc.n	12de <xvprintf+0x2f6>
    12f0:	e67f      	b.n	ff2 <xvprintf+0xa>
    12f2:	46c0      	nop			; (mov r8, r8)
    12f4:	e000      	b.n	12f8 <xvprintf+0x310>
    12f6:	46c0      	nop			; (mov r8, r8)
    12f8:	46c0      	nop			; (mov r8, r8)
    12fa:	46bd      	mov	sp, r7
    12fc:	b00e      	add	sp, #56	; 0x38
    12fe:	bd80      	pop	{r7, pc}
    1300:	00001884 	.word	0x00001884

00001304 <xprintf>:
    1304:	b40f      	push	{r0, r1, r2, r3}
    1306:	b580      	push	{r7, lr}
    1308:	b082      	sub	sp, #8
    130a:	af00      	add	r7, sp, #0
    130c:	2314      	movs	r3, #20
    130e:	18fb      	adds	r3, r7, r3
    1310:	607b      	str	r3, [r7, #4]
    1312:	687a      	ldr	r2, [r7, #4]
    1314:	693b      	ldr	r3, [r7, #16]
    1316:	0011      	movs	r1, r2
    1318:	0018      	movs	r0, r3
    131a:	f7ff fe65 	bl	fe8 <xvprintf>
    131e:	46c0      	nop			; (mov r8, r8)
    1320:	46bd      	mov	sp, r7
    1322:	b002      	add	sp, #8
    1324:	bc80      	pop	{r7}
    1326:	bc08      	pop	{r3}
    1328:	b004      	add	sp, #16
    132a:	4718      	bx	r3

0000132c <xsprintf>:
    132c:	b40e      	push	{r1, r2, r3}
    132e:	b580      	push	{r7, lr}
    1330:	b085      	sub	sp, #20
    1332:	af00      	add	r7, sp, #0
    1334:	6078      	str	r0, [r7, #4]
    1336:	4b0d      	ldr	r3, [pc, #52]	; (136c <xsprintf+0x40>)
    1338:	687a      	ldr	r2, [r7, #4]
    133a:	601a      	str	r2, [r3, #0]
    133c:	2320      	movs	r3, #32
    133e:	18fb      	adds	r3, r7, r3
    1340:	60fb      	str	r3, [r7, #12]
    1342:	68fa      	ldr	r2, [r7, #12]
    1344:	69fb      	ldr	r3, [r7, #28]
    1346:	0011      	movs	r1, r2
    1348:	0018      	movs	r0, r3
    134a:	f7ff fe4d 	bl	fe8 <xvprintf>
    134e:	4b07      	ldr	r3, [pc, #28]	; (136c <xsprintf+0x40>)
    1350:	681b      	ldr	r3, [r3, #0]
    1352:	2200      	movs	r2, #0
    1354:	701a      	strb	r2, [r3, #0]
    1356:	4b05      	ldr	r3, [pc, #20]	; (136c <xsprintf+0x40>)
    1358:	2200      	movs	r2, #0
    135a:	601a      	str	r2, [r3, #0]
    135c:	46c0      	nop			; (mov r8, r8)
    135e:	46bd      	mov	sp, r7
    1360:	b005      	add	sp, #20
    1362:	bc80      	pop	{r7}
    1364:	bc08      	pop	{r3}
    1366:	b003      	add	sp, #12
    1368:	4718      	bx	r3
    136a:	46c0      	nop			; (mov r8, r8)
    136c:	200040fc 	.word	0x200040fc

00001370 <xfprintf>:
    1370:	b40e      	push	{r1, r2, r3}
    1372:	b580      	push	{r7, lr}
    1374:	b085      	sub	sp, #20
    1376:	af00      	add	r7, sp, #0
    1378:	6078      	str	r0, [r7, #4]
    137a:	4b0c      	ldr	r3, [pc, #48]	; (13ac <xfprintf+0x3c>)
    137c:	681b      	ldr	r3, [r3, #0]
    137e:	60fb      	str	r3, [r7, #12]
    1380:	4b0a      	ldr	r3, [pc, #40]	; (13ac <xfprintf+0x3c>)
    1382:	687a      	ldr	r2, [r7, #4]
    1384:	601a      	str	r2, [r3, #0]
    1386:	2320      	movs	r3, #32
    1388:	18fb      	adds	r3, r7, r3
    138a:	60bb      	str	r3, [r7, #8]
    138c:	68ba      	ldr	r2, [r7, #8]
    138e:	69fb      	ldr	r3, [r7, #28]
    1390:	0011      	movs	r1, r2
    1392:	0018      	movs	r0, r3
    1394:	f7ff fe28 	bl	fe8 <xvprintf>
    1398:	4b04      	ldr	r3, [pc, #16]	; (13ac <xfprintf+0x3c>)
    139a:	68fa      	ldr	r2, [r7, #12]
    139c:	601a      	str	r2, [r3, #0]
    139e:	46c0      	nop			; (mov r8, r8)
    13a0:	46bd      	mov	sp, r7
    13a2:	b005      	add	sp, #20
    13a4:	bc80      	pop	{r7}
    13a6:	bc08      	pop	{r3}
    13a8:	b003      	add	sp, #12
    13aa:	4718      	bx	r3
    13ac:	200040f8 	.word	0x200040f8

000013b0 <put_dump>:
    13b0:	b580      	push	{r7, lr}
    13b2:	b088      	sub	sp, #32
    13b4:	af00      	add	r7, sp, #0
    13b6:	60f8      	str	r0, [r7, #12]
    13b8:	60b9      	str	r1, [r7, #8]
    13ba:	607a      	str	r2, [r7, #4]
    13bc:	603b      	str	r3, [r7, #0]
    13be:	68ba      	ldr	r2, [r7, #8]
    13c0:	4b38      	ldr	r3, [pc, #224]	; (14a4 <put_dump+0xf4>)
    13c2:	0011      	movs	r1, r2
    13c4:	0018      	movs	r0, r3
    13c6:	f7ff ff9d 	bl	1304 <xprintf>
    13ca:	683b      	ldr	r3, [r7, #0]
    13cc:	2b02      	cmp	r3, #2
    13ce:	d03c      	beq.n	144a <put_dump+0x9a>
    13d0:	2b04      	cmp	r3, #4
    13d2:	d04d      	beq.n	1470 <put_dump+0xc0>
    13d4:	2b01      	cmp	r3, #1
    13d6:	d15d      	bne.n	1494 <put_dump+0xe4>
    13d8:	68fb      	ldr	r3, [r7, #12]
    13da:	613b      	str	r3, [r7, #16]
    13dc:	2300      	movs	r3, #0
    13de:	61fb      	str	r3, [r7, #28]
    13e0:	e00c      	b.n	13fc <put_dump+0x4c>
    13e2:	69fb      	ldr	r3, [r7, #28]
    13e4:	693a      	ldr	r2, [r7, #16]
    13e6:	18d3      	adds	r3, r2, r3
    13e8:	781b      	ldrb	r3, [r3, #0]
    13ea:	001a      	movs	r2, r3
    13ec:	4b2e      	ldr	r3, [pc, #184]	; (14a8 <put_dump+0xf8>)
    13ee:	0011      	movs	r1, r2
    13f0:	0018      	movs	r0, r3
    13f2:	f7ff ff87 	bl	1304 <xprintf>
    13f6:	69fb      	ldr	r3, [r7, #28]
    13f8:	3301      	adds	r3, #1
    13fa:	61fb      	str	r3, [r7, #28]
    13fc:	69fa      	ldr	r2, [r7, #28]
    13fe:	687b      	ldr	r3, [r7, #4]
    1400:	429a      	cmp	r2, r3
    1402:	dbee      	blt.n	13e2 <put_dump+0x32>
    1404:	2020      	movs	r0, #32
    1406:	f7ff fd8f 	bl	f28 <xputc>
    140a:	2300      	movs	r3, #0
    140c:	61fb      	str	r3, [r7, #28]
    140e:	e017      	b.n	1440 <put_dump+0x90>
    1410:	69fb      	ldr	r3, [r7, #28]
    1412:	693a      	ldr	r2, [r7, #16]
    1414:	18d3      	adds	r3, r2, r3
    1416:	781b      	ldrb	r3, [r3, #0]
    1418:	2b1f      	cmp	r3, #31
    141a:	d90a      	bls.n	1432 <put_dump+0x82>
    141c:	69fb      	ldr	r3, [r7, #28]
    141e:	693a      	ldr	r2, [r7, #16]
    1420:	18d3      	adds	r3, r2, r3
    1422:	781b      	ldrb	r3, [r3, #0]
    1424:	2b7e      	cmp	r3, #126	; 0x7e
    1426:	d804      	bhi.n	1432 <put_dump+0x82>
    1428:	69fb      	ldr	r3, [r7, #28]
    142a:	693a      	ldr	r2, [r7, #16]
    142c:	18d3      	adds	r3, r2, r3
    142e:	781b      	ldrb	r3, [r3, #0]
    1430:	e000      	b.n	1434 <put_dump+0x84>
    1432:	232e      	movs	r3, #46	; 0x2e
    1434:	0018      	movs	r0, r3
    1436:	f7ff fd77 	bl	f28 <xputc>
    143a:	69fb      	ldr	r3, [r7, #28]
    143c:	3301      	adds	r3, #1
    143e:	61fb      	str	r3, [r7, #28]
    1440:	69fa      	ldr	r2, [r7, #28]
    1442:	687b      	ldr	r3, [r7, #4]
    1444:	429a      	cmp	r2, r3
    1446:	dbe3      	blt.n	1410 <put_dump+0x60>
    1448:	e024      	b.n	1494 <put_dump+0xe4>
    144a:	68fb      	ldr	r3, [r7, #12]
    144c:	61bb      	str	r3, [r7, #24]
    144e:	69bb      	ldr	r3, [r7, #24]
    1450:	1c9a      	adds	r2, r3, #2
    1452:	61ba      	str	r2, [r7, #24]
    1454:	881b      	ldrh	r3, [r3, #0]
    1456:	001a      	movs	r2, r3
    1458:	4b14      	ldr	r3, [pc, #80]	; (14ac <put_dump+0xfc>)
    145a:	0011      	movs	r1, r2
    145c:	0018      	movs	r0, r3
    145e:	f7ff ff51 	bl	1304 <xprintf>
    1462:	687b      	ldr	r3, [r7, #4]
    1464:	3b01      	subs	r3, #1
    1466:	607b      	str	r3, [r7, #4]
    1468:	687b      	ldr	r3, [r7, #4]
    146a:	2b00      	cmp	r3, #0
    146c:	d1ef      	bne.n	144e <put_dump+0x9e>
    146e:	e011      	b.n	1494 <put_dump+0xe4>
    1470:	68fb      	ldr	r3, [r7, #12]
    1472:	617b      	str	r3, [r7, #20]
    1474:	697b      	ldr	r3, [r7, #20]
    1476:	1d1a      	adds	r2, r3, #4
    1478:	617a      	str	r2, [r7, #20]
    147a:	681a      	ldr	r2, [r3, #0]
    147c:	4b0c      	ldr	r3, [pc, #48]	; (14b0 <put_dump+0x100>)
    147e:	0011      	movs	r1, r2
    1480:	0018      	movs	r0, r3
    1482:	f7ff ff3f 	bl	1304 <xprintf>
    1486:	687b      	ldr	r3, [r7, #4]
    1488:	3b01      	subs	r3, #1
    148a:	607b      	str	r3, [r7, #4]
    148c:	687b      	ldr	r3, [r7, #4]
    148e:	2b00      	cmp	r3, #0
    1490:	d1f0      	bne.n	1474 <put_dump+0xc4>
    1492:	46c0      	nop			; (mov r8, r8)
    1494:	200a      	movs	r0, #10
    1496:	f7ff fd47 	bl	f28 <xputc>
    149a:	46c0      	nop			; (mov r8, r8)
    149c:	46bd      	mov	sp, r7
    149e:	b008      	add	sp, #32
    14a0:	bd80      	pop	{r7, pc}
    14a2:	46c0      	nop			; (mov r8, r8)
    14a4:	000018e0 	.word	0x000018e0
    14a8:	000018e8 	.word	0x000018e8
    14ac:	000018f0 	.word	0x000018f0
    14b0:	000018f8 	.word	0x000018f8

000014b4 <xgets>:
    14b4:	b580      	push	{r7, lr}
    14b6:	b084      	sub	sp, #16
    14b8:	af00      	add	r7, sp, #0
    14ba:	6078      	str	r0, [r7, #4]
    14bc:	6039      	str	r1, [r7, #0]
    14be:	4b24      	ldr	r3, [pc, #144]	; (1550 <xgets+0x9c>)
    14c0:	681b      	ldr	r3, [r3, #0]
    14c2:	2b00      	cmp	r3, #0
    14c4:	d101      	bne.n	14ca <xgets+0x16>
    14c6:	2300      	movs	r3, #0
    14c8:	e03e      	b.n	1548 <xgets+0x94>
    14ca:	2300      	movs	r3, #0
    14cc:	60fb      	str	r3, [r7, #12]
    14ce:	4b20      	ldr	r3, [pc, #128]	; (1550 <xgets+0x9c>)
    14d0:	681b      	ldr	r3, [r3, #0]
    14d2:	4798      	blx	r3
    14d4:	0003      	movs	r3, r0
    14d6:	60bb      	str	r3, [r7, #8]
    14d8:	68bb      	ldr	r3, [r7, #8]
    14da:	2b00      	cmp	r3, #0
    14dc:	d101      	bne.n	14e2 <xgets+0x2e>
    14de:	2300      	movs	r3, #0
    14e0:	e032      	b.n	1548 <xgets+0x94>
    14e2:	68bb      	ldr	r3, [r7, #8]
    14e4:	2b0d      	cmp	r3, #13
    14e6:	d025      	beq.n	1534 <xgets+0x80>
    14e8:	68bb      	ldr	r3, [r7, #8]
    14ea:	2b08      	cmp	r3, #8
    14ec:	d10b      	bne.n	1506 <xgets+0x52>
    14ee:	68fb      	ldr	r3, [r7, #12]
    14f0:	2b00      	cmp	r3, #0
    14f2:	d008      	beq.n	1506 <xgets+0x52>
    14f4:	68fb      	ldr	r3, [r7, #12]
    14f6:	3b01      	subs	r3, #1
    14f8:	60fb      	str	r3, [r7, #12]
    14fa:	68bb      	ldr	r3, [r7, #8]
    14fc:	b2db      	uxtb	r3, r3
    14fe:	0018      	movs	r0, r3
    1500:	f7ff fd12 	bl	f28 <xputc>
    1504:	e015      	b.n	1532 <xgets+0x7e>
    1506:	68bb      	ldr	r3, [r7, #8]
    1508:	2b1f      	cmp	r3, #31
    150a:	dde0      	ble.n	14ce <xgets+0x1a>
    150c:	683b      	ldr	r3, [r7, #0]
    150e:	1e5a      	subs	r2, r3, #1
    1510:	68fb      	ldr	r3, [r7, #12]
    1512:	429a      	cmp	r2, r3
    1514:	dddb      	ble.n	14ce <xgets+0x1a>
    1516:	68fb      	ldr	r3, [r7, #12]
    1518:	1c5a      	adds	r2, r3, #1
    151a:	60fa      	str	r2, [r7, #12]
    151c:	001a      	movs	r2, r3
    151e:	687b      	ldr	r3, [r7, #4]
    1520:	189b      	adds	r3, r3, r2
    1522:	68ba      	ldr	r2, [r7, #8]
    1524:	b2d2      	uxtb	r2, r2
    1526:	701a      	strb	r2, [r3, #0]
    1528:	68bb      	ldr	r3, [r7, #8]
    152a:	b2db      	uxtb	r3, r3
    152c:	0018      	movs	r0, r3
    152e:	f7ff fcfb 	bl	f28 <xputc>
    1532:	e7cc      	b.n	14ce <xgets+0x1a>
    1534:	46c0      	nop			; (mov r8, r8)
    1536:	68fb      	ldr	r3, [r7, #12]
    1538:	687a      	ldr	r2, [r7, #4]
    153a:	18d3      	adds	r3, r2, r3
    153c:	2200      	movs	r2, #0
    153e:	701a      	strb	r2, [r3, #0]
    1540:	200a      	movs	r0, #10
    1542:	f7ff fcf1 	bl	f28 <xputc>
    1546:	2301      	movs	r3, #1
    1548:	0018      	movs	r0, r3
    154a:	46bd      	mov	sp, r7
    154c:	b004      	add	sp, #16
    154e:	bd80      	pop	{r7, pc}
    1550:	20004100 	.word	0x20004100

00001554 <xfgets>:
    1554:	b580      	push	{r7, lr}
    1556:	b086      	sub	sp, #24
    1558:	af00      	add	r7, sp, #0
    155a:	60f8      	str	r0, [r7, #12]
    155c:	60b9      	str	r1, [r7, #8]
    155e:	607a      	str	r2, [r7, #4]
    1560:	4b0a      	ldr	r3, [pc, #40]	; (158c <xfgets+0x38>)
    1562:	681b      	ldr	r3, [r3, #0]
    1564:	617b      	str	r3, [r7, #20]
    1566:	4b09      	ldr	r3, [pc, #36]	; (158c <xfgets+0x38>)
    1568:	68fa      	ldr	r2, [r7, #12]
    156a:	601a      	str	r2, [r3, #0]
    156c:	687a      	ldr	r2, [r7, #4]
    156e:	68bb      	ldr	r3, [r7, #8]
    1570:	0011      	movs	r1, r2
    1572:	0018      	movs	r0, r3
    1574:	f7ff ff9e 	bl	14b4 <xgets>
    1578:	0003      	movs	r3, r0
    157a:	613b      	str	r3, [r7, #16]
    157c:	4b03      	ldr	r3, [pc, #12]	; (158c <xfgets+0x38>)
    157e:	697a      	ldr	r2, [r7, #20]
    1580:	601a      	str	r2, [r3, #0]
    1582:	693b      	ldr	r3, [r7, #16]
    1584:	0018      	movs	r0, r3
    1586:	46bd      	mov	sp, r7
    1588:	b006      	add	sp, #24
    158a:	bd80      	pop	{r7, pc}
    158c:	20004100 	.word	0x20004100

00001590 <xatoi>:
    1590:	b580      	push	{r7, lr}
    1592:	b084      	sub	sp, #16
    1594:	af00      	add	r7, sp, #0
    1596:	6078      	str	r0, [r7, #4]
    1598:	6039      	str	r1, [r7, #0]
    159a:	2309      	movs	r3, #9
    159c:	18fb      	adds	r3, r7, r3
    159e:	2200      	movs	r2, #0
    15a0:	701a      	strb	r2, [r3, #0]
    15a2:	683b      	ldr	r3, [r7, #0]
    15a4:	2200      	movs	r2, #0
    15a6:	601a      	str	r2, [r3, #0]
    15a8:	e004      	b.n	15b4 <xatoi+0x24>
    15aa:	687b      	ldr	r3, [r7, #4]
    15ac:	681b      	ldr	r3, [r3, #0]
    15ae:	1c5a      	adds	r2, r3, #1
    15b0:	687b      	ldr	r3, [r7, #4]
    15b2:	601a      	str	r2, [r3, #0]
    15b4:	687b      	ldr	r3, [r7, #4]
    15b6:	681a      	ldr	r2, [r3, #0]
    15b8:	230b      	movs	r3, #11
    15ba:	18fb      	adds	r3, r7, r3
    15bc:	7812      	ldrb	r2, [r2, #0]
    15be:	701a      	strb	r2, [r3, #0]
    15c0:	230b      	movs	r3, #11
    15c2:	18fb      	adds	r3, r7, r3
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	2b20      	cmp	r3, #32
    15c8:	d0ef      	beq.n	15aa <xatoi+0x1a>
    15ca:	230b      	movs	r3, #11
    15cc:	18fb      	adds	r3, r7, r3
    15ce:	781b      	ldrb	r3, [r3, #0]
    15d0:	2b2d      	cmp	r3, #45	; 0x2d
    15d2:	d10e      	bne.n	15f2 <xatoi+0x62>
    15d4:	2309      	movs	r3, #9
    15d6:	18fb      	adds	r3, r7, r3
    15d8:	2201      	movs	r2, #1
    15da:	701a      	strb	r2, [r3, #0]
    15dc:	687b      	ldr	r3, [r7, #4]
    15de:	681b      	ldr	r3, [r3, #0]
    15e0:	1c5a      	adds	r2, r3, #1
    15e2:	687b      	ldr	r3, [r7, #4]
    15e4:	601a      	str	r2, [r3, #0]
    15e6:	687b      	ldr	r3, [r7, #4]
    15e8:	681a      	ldr	r2, [r3, #0]
    15ea:	230b      	movs	r3, #11
    15ec:	18fb      	adds	r3, r7, r3
    15ee:	7812      	ldrb	r2, [r2, #0]
    15f0:	701a      	strb	r2, [r3, #0]
    15f2:	230b      	movs	r3, #11
    15f4:	18fb      	adds	r3, r7, r3
    15f6:	781b      	ldrb	r3, [r3, #0]
    15f8:	2b30      	cmp	r3, #48	; 0x30
    15fa:	d149      	bne.n	1690 <xatoi+0x100>
    15fc:	687b      	ldr	r3, [r7, #4]
    15fe:	681b      	ldr	r3, [r3, #0]
    1600:	1c5a      	adds	r2, r3, #1
    1602:	687b      	ldr	r3, [r7, #4]
    1604:	601a      	str	r2, [r3, #0]
    1606:	687b      	ldr	r3, [r7, #4]
    1608:	681a      	ldr	r2, [r3, #0]
    160a:	230b      	movs	r3, #11
    160c:	18fb      	adds	r3, r7, r3
    160e:	7812      	ldrb	r2, [r2, #0]
    1610:	701a      	strb	r2, [r3, #0]
    1612:	230b      	movs	r3, #11
    1614:	18fb      	adds	r3, r7, r3
    1616:	781b      	ldrb	r3, [r3, #0]
    1618:	2b62      	cmp	r3, #98	; 0x62
    161a:	d011      	beq.n	1640 <xatoi+0xb0>
    161c:	2b78      	cmp	r3, #120	; 0x78
    161e:	d11f      	bne.n	1660 <xatoi+0xd0>
    1620:	230a      	movs	r3, #10
    1622:	18fb      	adds	r3, r7, r3
    1624:	2210      	movs	r2, #16
    1626:	701a      	strb	r2, [r3, #0]
    1628:	687b      	ldr	r3, [r7, #4]
    162a:	681b      	ldr	r3, [r3, #0]
    162c:	1c5a      	adds	r2, r3, #1
    162e:	687b      	ldr	r3, [r7, #4]
    1630:	601a      	str	r2, [r3, #0]
    1632:	687b      	ldr	r3, [r7, #4]
    1634:	681a      	ldr	r2, [r3, #0]
    1636:	230b      	movs	r3, #11
    1638:	18fb      	adds	r3, r7, r3
    163a:	7812      	ldrb	r2, [r2, #0]
    163c:	701a      	strb	r2, [r3, #0]
    163e:	e037      	b.n	16b0 <xatoi+0x120>
    1640:	230a      	movs	r3, #10
    1642:	18fb      	adds	r3, r7, r3
    1644:	2202      	movs	r2, #2
    1646:	701a      	strb	r2, [r3, #0]
    1648:	687b      	ldr	r3, [r7, #4]
    164a:	681b      	ldr	r3, [r3, #0]
    164c:	1c5a      	adds	r2, r3, #1
    164e:	687b      	ldr	r3, [r7, #4]
    1650:	601a      	str	r2, [r3, #0]
    1652:	687b      	ldr	r3, [r7, #4]
    1654:	681a      	ldr	r2, [r3, #0]
    1656:	230b      	movs	r3, #11
    1658:	18fb      	adds	r3, r7, r3
    165a:	7812      	ldrb	r2, [r2, #0]
    165c:	701a      	strb	r2, [r3, #0]
    165e:	e027      	b.n	16b0 <xatoi+0x120>
    1660:	230b      	movs	r3, #11
    1662:	18fb      	adds	r3, r7, r3
    1664:	781b      	ldrb	r3, [r3, #0]
    1666:	2b20      	cmp	r3, #32
    1668:	d801      	bhi.n	166e <xatoi+0xde>
    166a:	2301      	movs	r3, #1
    166c:	e079      	b.n	1762 <xatoi+0x1d2>
    166e:	230b      	movs	r3, #11
    1670:	18fb      	adds	r3, r7, r3
    1672:	781b      	ldrb	r3, [r3, #0]
    1674:	2b2f      	cmp	r3, #47	; 0x2f
    1676:	d904      	bls.n	1682 <xatoi+0xf2>
    1678:	230b      	movs	r3, #11
    167a:	18fb      	adds	r3, r7, r3
    167c:	781b      	ldrb	r3, [r3, #0]
    167e:	2b39      	cmp	r3, #57	; 0x39
    1680:	d901      	bls.n	1686 <xatoi+0xf6>
    1682:	2300      	movs	r3, #0
    1684:	e06d      	b.n	1762 <xatoi+0x1d2>
    1686:	230a      	movs	r3, #10
    1688:	18fb      	adds	r3, r7, r3
    168a:	2208      	movs	r2, #8
    168c:	701a      	strb	r2, [r3, #0]
    168e:	e00f      	b.n	16b0 <xatoi+0x120>
    1690:	230b      	movs	r3, #11
    1692:	18fb      	adds	r3, r7, r3
    1694:	781b      	ldrb	r3, [r3, #0]
    1696:	2b2f      	cmp	r3, #47	; 0x2f
    1698:	d904      	bls.n	16a4 <xatoi+0x114>
    169a:	230b      	movs	r3, #11
    169c:	18fb      	adds	r3, r7, r3
    169e:	781b      	ldrb	r3, [r3, #0]
    16a0:	2b39      	cmp	r3, #57	; 0x39
    16a2:	d901      	bls.n	16a8 <xatoi+0x118>
    16a4:	2300      	movs	r3, #0
    16a6:	e05c      	b.n	1762 <xatoi+0x1d2>
    16a8:	230a      	movs	r3, #10
    16aa:	18fb      	adds	r3, r7, r3
    16ac:	220a      	movs	r2, #10
    16ae:	701a      	strb	r2, [r3, #0]
    16b0:	2300      	movs	r3, #0
    16b2:	60fb      	str	r3, [r7, #12]
    16b4:	e044      	b.n	1740 <xatoi+0x1b0>
    16b6:	230b      	movs	r3, #11
    16b8:	18fb      	adds	r3, r7, r3
    16ba:	781b      	ldrb	r3, [r3, #0]
    16bc:	2b60      	cmp	r3, #96	; 0x60
    16be:	d906      	bls.n	16ce <xatoi+0x13e>
    16c0:	230b      	movs	r3, #11
    16c2:	18fb      	adds	r3, r7, r3
    16c4:	220b      	movs	r2, #11
    16c6:	18ba      	adds	r2, r7, r2
    16c8:	7812      	ldrb	r2, [r2, #0]
    16ca:	3a20      	subs	r2, #32
    16cc:	701a      	strb	r2, [r3, #0]
    16ce:	230b      	movs	r3, #11
    16d0:	18fb      	adds	r3, r7, r3
    16d2:	220b      	movs	r2, #11
    16d4:	18ba      	adds	r2, r7, r2
    16d6:	7812      	ldrb	r2, [r2, #0]
    16d8:	3a30      	subs	r2, #48	; 0x30
    16da:	701a      	strb	r2, [r3, #0]
    16dc:	230b      	movs	r3, #11
    16de:	18fb      	adds	r3, r7, r3
    16e0:	781b      	ldrb	r3, [r3, #0]
    16e2:	2b10      	cmp	r3, #16
    16e4:	d90d      	bls.n	1702 <xatoi+0x172>
    16e6:	230b      	movs	r3, #11
    16e8:	18fb      	adds	r3, r7, r3
    16ea:	220b      	movs	r2, #11
    16ec:	18ba      	adds	r2, r7, r2
    16ee:	7812      	ldrb	r2, [r2, #0]
    16f0:	3a07      	subs	r2, #7
    16f2:	701a      	strb	r2, [r3, #0]
    16f4:	230b      	movs	r3, #11
    16f6:	18fb      	adds	r3, r7, r3
    16f8:	781b      	ldrb	r3, [r3, #0]
    16fa:	2b09      	cmp	r3, #9
    16fc:	d801      	bhi.n	1702 <xatoi+0x172>
    16fe:	2300      	movs	r3, #0
    1700:	e02f      	b.n	1762 <xatoi+0x1d2>
    1702:	230b      	movs	r3, #11
    1704:	18fa      	adds	r2, r7, r3
    1706:	230a      	movs	r3, #10
    1708:	18fb      	adds	r3, r7, r3
    170a:	7812      	ldrb	r2, [r2, #0]
    170c:	781b      	ldrb	r3, [r3, #0]
    170e:	429a      	cmp	r2, r3
    1710:	d301      	bcc.n	1716 <xatoi+0x186>
    1712:	2300      	movs	r3, #0
    1714:	e025      	b.n	1762 <xatoi+0x1d2>
    1716:	230a      	movs	r3, #10
    1718:	18fb      	adds	r3, r7, r3
    171a:	781b      	ldrb	r3, [r3, #0]
    171c:	68fa      	ldr	r2, [r7, #12]
    171e:	435a      	muls	r2, r3
    1720:	230b      	movs	r3, #11
    1722:	18fb      	adds	r3, r7, r3
    1724:	781b      	ldrb	r3, [r3, #0]
    1726:	18d3      	adds	r3, r2, r3
    1728:	60fb      	str	r3, [r7, #12]
    172a:	687b      	ldr	r3, [r7, #4]
    172c:	681b      	ldr	r3, [r3, #0]
    172e:	1c5a      	adds	r2, r3, #1
    1730:	687b      	ldr	r3, [r7, #4]
    1732:	601a      	str	r2, [r3, #0]
    1734:	687b      	ldr	r3, [r7, #4]
    1736:	681a      	ldr	r2, [r3, #0]
    1738:	230b      	movs	r3, #11
    173a:	18fb      	adds	r3, r7, r3
    173c:	7812      	ldrb	r2, [r2, #0]
    173e:	701a      	strb	r2, [r3, #0]
    1740:	230b      	movs	r3, #11
    1742:	18fb      	adds	r3, r7, r3
    1744:	781b      	ldrb	r3, [r3, #0]
    1746:	2b20      	cmp	r3, #32
    1748:	d8b5      	bhi.n	16b6 <xatoi+0x126>
    174a:	2309      	movs	r3, #9
    174c:	18fb      	adds	r3, r7, r3
    174e:	781b      	ldrb	r3, [r3, #0]
    1750:	2b00      	cmp	r3, #0
    1752:	d002      	beq.n	175a <xatoi+0x1ca>
    1754:	68fb      	ldr	r3, [r7, #12]
    1756:	425b      	negs	r3, r3
    1758:	60fb      	str	r3, [r7, #12]
    175a:	68fa      	ldr	r2, [r7, #12]
    175c:	683b      	ldr	r3, [r7, #0]
    175e:	601a      	str	r2, [r3, #0]
    1760:	2301      	movs	r3, #1
    1762:	0018      	movs	r0, r3
    1764:	46bd      	mov	sp, r7
    1766:	b004      	add	sp, #16
    1768:	bd80      	pop	{r7, pc}
    176a:	46c0      	nop			; (mov r8, r8)

0000176c <__aeabi_uidiv>:
    176c:	2200      	movs	r2, #0
    176e:	0843      	lsrs	r3, r0, #1
    1770:	428b      	cmp	r3, r1
    1772:	d374      	bcc.n	185e <__aeabi_uidiv+0xf2>
    1774:	0903      	lsrs	r3, r0, #4
    1776:	428b      	cmp	r3, r1
    1778:	d35f      	bcc.n	183a <__aeabi_uidiv+0xce>
    177a:	0a03      	lsrs	r3, r0, #8
    177c:	428b      	cmp	r3, r1
    177e:	d344      	bcc.n	180a <__aeabi_uidiv+0x9e>
    1780:	0b03      	lsrs	r3, r0, #12
    1782:	428b      	cmp	r3, r1
    1784:	d328      	bcc.n	17d8 <__aeabi_uidiv+0x6c>
    1786:	0c03      	lsrs	r3, r0, #16
    1788:	428b      	cmp	r3, r1
    178a:	d30d      	bcc.n	17a8 <__aeabi_uidiv+0x3c>
    178c:	22ff      	movs	r2, #255	; 0xff
    178e:	0209      	lsls	r1, r1, #8
    1790:	ba12      	rev	r2, r2
    1792:	0c03      	lsrs	r3, r0, #16
    1794:	428b      	cmp	r3, r1
    1796:	d302      	bcc.n	179e <__aeabi_uidiv+0x32>
    1798:	1212      	asrs	r2, r2, #8
    179a:	0209      	lsls	r1, r1, #8
    179c:	d065      	beq.n	186a <__aeabi_uidiv+0xfe>
    179e:	0b03      	lsrs	r3, r0, #12
    17a0:	428b      	cmp	r3, r1
    17a2:	d319      	bcc.n	17d8 <__aeabi_uidiv+0x6c>
    17a4:	e000      	b.n	17a8 <__aeabi_uidiv+0x3c>
    17a6:	0a09      	lsrs	r1, r1, #8
    17a8:	0bc3      	lsrs	r3, r0, #15
    17aa:	428b      	cmp	r3, r1
    17ac:	d301      	bcc.n	17b2 <__aeabi_uidiv+0x46>
    17ae:	03cb      	lsls	r3, r1, #15
    17b0:	1ac0      	subs	r0, r0, r3
    17b2:	4152      	adcs	r2, r2
    17b4:	0b83      	lsrs	r3, r0, #14
    17b6:	428b      	cmp	r3, r1
    17b8:	d301      	bcc.n	17be <__aeabi_uidiv+0x52>
    17ba:	038b      	lsls	r3, r1, #14
    17bc:	1ac0      	subs	r0, r0, r3
    17be:	4152      	adcs	r2, r2
    17c0:	0b43      	lsrs	r3, r0, #13
    17c2:	428b      	cmp	r3, r1
    17c4:	d301      	bcc.n	17ca <__aeabi_uidiv+0x5e>
    17c6:	034b      	lsls	r3, r1, #13
    17c8:	1ac0      	subs	r0, r0, r3
    17ca:	4152      	adcs	r2, r2
    17cc:	0b03      	lsrs	r3, r0, #12
    17ce:	428b      	cmp	r3, r1
    17d0:	d301      	bcc.n	17d6 <__aeabi_uidiv+0x6a>
    17d2:	030b      	lsls	r3, r1, #12
    17d4:	1ac0      	subs	r0, r0, r3
    17d6:	4152      	adcs	r2, r2
    17d8:	0ac3      	lsrs	r3, r0, #11
    17da:	428b      	cmp	r3, r1
    17dc:	d301      	bcc.n	17e2 <__aeabi_uidiv+0x76>
    17de:	02cb      	lsls	r3, r1, #11
    17e0:	1ac0      	subs	r0, r0, r3
    17e2:	4152      	adcs	r2, r2
    17e4:	0a83      	lsrs	r3, r0, #10
    17e6:	428b      	cmp	r3, r1
    17e8:	d301      	bcc.n	17ee <__aeabi_uidiv+0x82>
    17ea:	028b      	lsls	r3, r1, #10
    17ec:	1ac0      	subs	r0, r0, r3
    17ee:	4152      	adcs	r2, r2
    17f0:	0a43      	lsrs	r3, r0, #9
    17f2:	428b      	cmp	r3, r1
    17f4:	d301      	bcc.n	17fa <__aeabi_uidiv+0x8e>
    17f6:	024b      	lsls	r3, r1, #9
    17f8:	1ac0      	subs	r0, r0, r3
    17fa:	4152      	adcs	r2, r2
    17fc:	0a03      	lsrs	r3, r0, #8
    17fe:	428b      	cmp	r3, r1
    1800:	d301      	bcc.n	1806 <__aeabi_uidiv+0x9a>
    1802:	020b      	lsls	r3, r1, #8
    1804:	1ac0      	subs	r0, r0, r3
    1806:	4152      	adcs	r2, r2
    1808:	d2cd      	bcs.n	17a6 <__aeabi_uidiv+0x3a>
    180a:	09c3      	lsrs	r3, r0, #7
    180c:	428b      	cmp	r3, r1
    180e:	d301      	bcc.n	1814 <__aeabi_uidiv+0xa8>
    1810:	01cb      	lsls	r3, r1, #7
    1812:	1ac0      	subs	r0, r0, r3
    1814:	4152      	adcs	r2, r2
    1816:	0983      	lsrs	r3, r0, #6
    1818:	428b      	cmp	r3, r1
    181a:	d301      	bcc.n	1820 <__aeabi_uidiv+0xb4>
    181c:	018b      	lsls	r3, r1, #6
    181e:	1ac0      	subs	r0, r0, r3
    1820:	4152      	adcs	r2, r2
    1822:	0943      	lsrs	r3, r0, #5
    1824:	428b      	cmp	r3, r1
    1826:	d301      	bcc.n	182c <__aeabi_uidiv+0xc0>
    1828:	014b      	lsls	r3, r1, #5
    182a:	1ac0      	subs	r0, r0, r3
    182c:	4152      	adcs	r2, r2
    182e:	0903      	lsrs	r3, r0, #4
    1830:	428b      	cmp	r3, r1
    1832:	d301      	bcc.n	1838 <__aeabi_uidiv+0xcc>
    1834:	010b      	lsls	r3, r1, #4
    1836:	1ac0      	subs	r0, r0, r3
    1838:	4152      	adcs	r2, r2
    183a:	08c3      	lsrs	r3, r0, #3
    183c:	428b      	cmp	r3, r1
    183e:	d301      	bcc.n	1844 <__aeabi_uidiv+0xd8>
    1840:	00cb      	lsls	r3, r1, #3
    1842:	1ac0      	subs	r0, r0, r3
    1844:	4152      	adcs	r2, r2
    1846:	0883      	lsrs	r3, r0, #2
    1848:	428b      	cmp	r3, r1
    184a:	d301      	bcc.n	1850 <__aeabi_uidiv+0xe4>
    184c:	008b      	lsls	r3, r1, #2
    184e:	1ac0      	subs	r0, r0, r3
    1850:	4152      	adcs	r2, r2
    1852:	0843      	lsrs	r3, r0, #1
    1854:	428b      	cmp	r3, r1
    1856:	d301      	bcc.n	185c <__aeabi_uidiv+0xf0>
    1858:	004b      	lsls	r3, r1, #1
    185a:	1ac0      	subs	r0, r0, r3
    185c:	4152      	adcs	r2, r2
    185e:	1a41      	subs	r1, r0, r1
    1860:	d200      	bcs.n	1864 <__aeabi_uidiv+0xf8>
    1862:	4601      	mov	r1, r0
    1864:	4152      	adcs	r2, r2
    1866:	4610      	mov	r0, r2
    1868:	4770      	bx	lr
    186a:	e7ff      	b.n	186c <__aeabi_uidiv+0x100>
    186c:	b501      	push	{r0, lr}
    186e:	2000      	movs	r0, #0
    1870:	f000 f806 	bl	1880 <__aeabi_idiv0>
    1874:	bd02      	pop	{r1, pc}
    1876:	46c0      	nop			; (mov r8, r8)

00001878 <__aeabi_uidivmod>:
    1878:	2900      	cmp	r1, #0
    187a:	d0f7      	beq.n	186c <__aeabi_uidiv+0x100>
    187c:	e776      	b.n	176c <__aeabi_uidiv>
    187e:	4770      	bx	lr

00001880 <__aeabi_idiv0>:
    1880:	4770      	bx	lr
    1882:	46c0      	nop			; (mov r8, r8)
    1884:	0000118e 	.word	0x0000118e
    1888:	0000117c 	.word	0x0000117c
    188c:	0000119a 	.word	0x0000119a
    1890:	000011a6 	.word	0x000011a6
    1894:	000011a6 	.word	0x000011a6
    1898:	000011a6 	.word	0x000011a6
    189c:	000011a6 	.word	0x000011a6
    18a0:	000011a6 	.word	0x000011a6
    18a4:	000011a6 	.word	0x000011a6
    18a8:	000011a6 	.word	0x000011a6
    18ac:	000011a6 	.word	0x000011a6
    18b0:	000011a6 	.word	0x000011a6
    18b4:	000011a6 	.word	0x000011a6
    18b8:	00001194 	.word	0x00001194
    18bc:	000011a6 	.word	0x000011a6
    18c0:	000011a6 	.word	0x000011a6
    18c4:	000011a6 	.word	0x000011a6
    18c8:	00001120 	.word	0x00001120
    18cc:	000011a6 	.word	0x000011a6
    18d0:	0000119a 	.word	0x0000119a
    18d4:	000011a6 	.word	0x000011a6
    18d8:	000011a6 	.word	0x000011a6
    18dc:	000011a0 	.word	0x000011a0
    18e0:	6c383025 	.word	0x6c383025
    18e4:	00002058 	.word	0x00002058
    18e8:	32302520 	.word	0x32302520
    18ec:	00000058 	.word	0x00000058
    18f0:	34302520 	.word	0x34302520
    18f4:	00000058 	.word	0x00000058
    18f8:	38302520 	.word	0x38302520
    18fc:	0000584c 	.word	0x0000584c
