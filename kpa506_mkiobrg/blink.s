
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 e5 09 00 00 45 0a 00 00 45 0a 00 00     ... ....E...E...
	...
      2c:	45 0a 00 00 00 00 00 00 00 00 00 00 45 0a 00 00     E...........E...
      3c:	ad 08 00 00 45 0a 00 00 85 09 00 00 45 0a 00 00     ....E.......E...
      4c:	45 0a 00 00 45 0a 00 00 45 0a 00 00 45 0a 00 00     E...E...E...E...
      5c:	89 0c 00 00 45 0a 00 00 45 0a 00 00 45 0a 00 00     ....E...E...E...
      6c:	45 0a 00 00 45 0a 00 00 c5 08 00 00 45 0a 00 00     E...E.......E...
      7c:	45 0a 00 00 45 0a 00 00 45 0a 00 00 45 0a 00 00     E...E...E...E...
      8c:	45 0a 00 00 45 0a 00 00 45 0a 00 00 45 0a 00 00     E...E...E...E...
      9c:	45 0a 00 00 45 0a 00 00 00 00 00 00 00 00 00 00     E...E...........
      ac:	45 0a 00 00 45 0a 00 00 45 0a 00 00 45 0a 00 00     E...E...E...E...
      bc:	45 0a 00 00                                         E...

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

00000358 <main>:
     358:	b590      	push	{r4, r7, lr}
     35a:	b0ad      	sub	sp, #180	; 0xb4
     35c:	af00      	add	r7, sp, #0
     35e:	2300      	movs	r3, #0
     360:	22ac      	movs	r2, #172	; 0xac
     362:	18ba      	adds	r2, r7, r2
     364:	6013      	str	r3, [r2, #0]
     366:	2300      	movs	r3, #0
     368:	22a8      	movs	r2, #168	; 0xa8
     36a:	18ba      	adds	r2, r7, r2
     36c:	6013      	str	r3, [r2, #0]
     36e:	2300      	movs	r3, #0
     370:	2298      	movs	r2, #152	; 0x98
     372:	18ba      	adds	r2, r7, r2
     374:	6013      	str	r3, [r2, #0]
     376:	f000 fa89 	bl	88c <SystemInit>
     37a:	4b6e      	ldr	r3, [pc, #440]	; (534 <_stack_size+0x134>)
     37c:	4a6e      	ldr	r2, [pc, #440]	; (538 <_stack_size+0x138>)
     37e:	601a      	str	r2, [r3, #0]
     380:	1d3b      	adds	r3, r7, #4
     382:	0018      	movs	r0, r3
     384:	f7ff ff7e 	bl	284 <test_cw>
     388:	4b6c      	ldr	r3, [pc, #432]	; (53c <_stack_size+0x13c>)
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	2b00      	cmp	r3, #0
     38e:	d000      	beq.n	392 <main+0x3a>
     390:	e0a6      	b.n	4e0 <_stack_size+0xe0>
     392:	2313      	movs	r3, #19
     394:	18fb      	adds	r3, r7, r3
     396:	2101      	movs	r1, #1
     398:	0018      	movs	r0, r3
     39a:	f000 fbd9 	bl	b50 <uart_read>
     39e:	1e03      	subs	r3, r0, #0
     3a0:	d100      	bne.n	3a4 <main+0x4c>
     3a2:	e09d      	b.n	4e0 <_stack_size+0xe0>
     3a4:	2313      	movs	r3, #19
     3a6:	18fb      	adds	r3, r7, r3
     3a8:	781b      	ldrb	r3, [r3, #0]
     3aa:	2b55      	cmp	r3, #85	; 0x55
     3ac:	d000      	beq.n	3b0 <main+0x58>
     3ae:	e07d      	b.n	4ac <_stack_size+0xac>
     3b0:	23a7      	movs	r3, #167	; 0xa7
     3b2:	18fb      	adds	r3, r7, r3
     3b4:	781b      	ldrb	r3, [r3, #0]
     3b6:	2baa      	cmp	r3, #170	; 0xaa
     3b8:	d178      	bne.n	4ac <_stack_size+0xac>
     3ba:	23a8      	movs	r3, #168	; 0xa8
     3bc:	18fb      	adds	r3, r7, r3
     3be:	681b      	ldr	r3, [r3, #0]
     3c0:	3b0b      	subs	r3, #11
     3c2:	227f      	movs	r2, #127	; 0x7f
     3c4:	4013      	ands	r3, r2
     3c6:	22a0      	movs	r2, #160	; 0xa0
     3c8:	18ba      	adds	r2, r7, r2
     3ca:	6013      	str	r3, [r2, #0]
     3cc:	4b5c      	ldr	r3, [pc, #368]	; (540 <_stack_size+0x140>)
     3ce:	229c      	movs	r2, #156	; 0x9c
     3d0:	18ba      	adds	r2, r7, r2
     3d2:	6013      	str	r3, [r2, #0]
     3d4:	2300      	movs	r3, #0
     3d6:	22ac      	movs	r2, #172	; 0xac
     3d8:	18ba      	adds	r2, r7, r2
     3da:	6013      	str	r3, [r2, #0]
     3dc:	e04e      	b.n	47c <_stack_size+0x7c>
     3de:	2397      	movs	r3, #151	; 0x97
     3e0:	18fb      	adds	r3, r7, r3
     3e2:	2214      	movs	r2, #20
     3e4:	18b9      	adds	r1, r7, r2
     3e6:	22a0      	movs	r2, #160	; 0xa0
     3e8:	18ba      	adds	r2, r7, r2
     3ea:	6812      	ldr	r2, [r2, #0]
     3ec:	188a      	adds	r2, r1, r2
     3ee:	7812      	ldrb	r2, [r2, #0]
     3f0:	701a      	strb	r2, [r3, #0]
     3f2:	23a0      	movs	r3, #160	; 0xa0
     3f4:	18fb      	adds	r3, r7, r3
     3f6:	681b      	ldr	r3, [r3, #0]
     3f8:	3301      	adds	r3, #1
     3fa:	227f      	movs	r2, #127	; 0x7f
     3fc:	4013      	ands	r3, r2
     3fe:	22a0      	movs	r2, #160	; 0xa0
     400:	18ba      	adds	r2, r7, r2
     402:	6013      	str	r3, [r2, #0]
     404:	2396      	movs	r3, #150	; 0x96
     406:	18fb      	adds	r3, r7, r3
     408:	2214      	movs	r2, #20
     40a:	18b9      	adds	r1, r7, r2
     40c:	22a0      	movs	r2, #160	; 0xa0
     40e:	18ba      	adds	r2, r7, r2
     410:	6812      	ldr	r2, [r2, #0]
     412:	188a      	adds	r2, r1, r2
     414:	7812      	ldrb	r2, [r2, #0]
     416:	701a      	strb	r2, [r3, #0]
     418:	23a0      	movs	r3, #160	; 0xa0
     41a:	18fb      	adds	r3, r7, r3
     41c:	681b      	ldr	r3, [r3, #0]
     41e:	3301      	adds	r3, #1
     420:	227f      	movs	r2, #127	; 0x7f
     422:	4013      	ands	r3, r2
     424:	22a0      	movs	r2, #160	; 0xa0
     426:	18ba      	adds	r2, r7, r2
     428:	6013      	str	r3, [r2, #0]
     42a:	239c      	movs	r3, #156	; 0x9c
     42c:	18fb      	adds	r3, r7, r3
     42e:	681b      	ldr	r3, [r3, #0]
     430:	1d1a      	adds	r2, r3, #4
     432:	219c      	movs	r1, #156	; 0x9c
     434:	1879      	adds	r1, r7, r1
     436:	600a      	str	r2, [r1, #0]
     438:	2296      	movs	r2, #150	; 0x96
     43a:	18ba      	adds	r2, r7, r2
     43c:	7811      	ldrb	r1, [r2, #0]
     43e:	2297      	movs	r2, #151	; 0x97
     440:	18ba      	adds	r2, r7, r2
     442:	7812      	ldrb	r2, [r2, #0]
     444:	0212      	lsls	r2, r2, #8
     446:	188a      	adds	r2, r1, r2
     448:	601a      	str	r2, [r3, #0]
     44a:	2396      	movs	r3, #150	; 0x96
     44c:	18fb      	adds	r3, r7, r3
     44e:	781b      	ldrb	r3, [r3, #0]
     450:	b29a      	uxth	r2, r3
     452:	2397      	movs	r3, #151	; 0x97
     454:	18fb      	adds	r3, r7, r3
     456:	781b      	ldrb	r3, [r3, #0]
     458:	b29b      	uxth	r3, r3
     45a:	021b      	lsls	r3, r3, #8
     45c:	b29b      	uxth	r3, r3
     45e:	18d3      	adds	r3, r2, r3
     460:	b299      	uxth	r1, r3
     462:	1d3b      	adds	r3, r7, #4
     464:	22ac      	movs	r2, #172	; 0xac
     466:	18ba      	adds	r2, r7, r2
     468:	6812      	ldr	r2, [r2, #0]
     46a:	0052      	lsls	r2, r2, #1
     46c:	52d1      	strh	r1, [r2, r3]
     46e:	23ac      	movs	r3, #172	; 0xac
     470:	18fb      	adds	r3, r7, r3
     472:	681b      	ldr	r3, [r3, #0]
     474:	3301      	adds	r3, #1
     476:	22ac      	movs	r2, #172	; 0xac
     478:	18ba      	adds	r2, r7, r2
     47a:	6013      	str	r3, [r2, #0]
     47c:	23ac      	movs	r3, #172	; 0xac
     47e:	18fb      	adds	r3, r7, r3
     480:	681b      	ldr	r3, [r3, #0]
     482:	2b04      	cmp	r3, #4
     484:	ddab      	ble.n	3de <main+0x86>
     486:	4b2d      	ldr	r3, [pc, #180]	; (53c <_stack_size+0x13c>)
     488:	2202      	movs	r2, #2
     48a:	601a      	str	r2, [r3, #0]
     48c:	1d3b      	adds	r3, r7, #4
     48e:	891c      	ldrh	r4, [r3, #8]
     490:	1d3b      	adds	r3, r7, #4
     492:	2104      	movs	r1, #4
     494:	0018      	movs	r0, r3
     496:	f7ff fe7b 	bl	190 <get_checksum>
     49a:	0003      	movs	r3, r0
     49c:	429c      	cmp	r4, r3
     49e:	d005      	beq.n	4ac <_stack_size+0xac>
     4a0:	4b28      	ldr	r3, [pc, #160]	; (544 <_stack_size+0x144>)
     4a2:	4a28      	ldr	r2, [pc, #160]	; (544 <_stack_size+0x144>)
     4a4:	6812      	ldr	r2, [r2, #0]
     4a6:	2140      	movs	r1, #64	; 0x40
     4a8:	404a      	eors	r2, r1
     4aa:	601a      	str	r2, [r3, #0]
     4ac:	23a7      	movs	r3, #167	; 0xa7
     4ae:	18fb      	adds	r3, r7, r3
     4b0:	2213      	movs	r2, #19
     4b2:	18ba      	adds	r2, r7, r2
     4b4:	7812      	ldrb	r2, [r2, #0]
     4b6:	701a      	strb	r2, [r3, #0]
     4b8:	2313      	movs	r3, #19
     4ba:	18fb      	adds	r3, r7, r3
     4bc:	7819      	ldrb	r1, [r3, #0]
     4be:	2314      	movs	r3, #20
     4c0:	18fa      	adds	r2, r7, r3
     4c2:	23a8      	movs	r3, #168	; 0xa8
     4c4:	18fb      	adds	r3, r7, r3
     4c6:	681b      	ldr	r3, [r3, #0]
     4c8:	18d3      	adds	r3, r2, r3
     4ca:	1c0a      	adds	r2, r1, #0
     4cc:	701a      	strb	r2, [r3, #0]
     4ce:	23a8      	movs	r3, #168	; 0xa8
     4d0:	18fb      	adds	r3, r7, r3
     4d2:	681b      	ldr	r3, [r3, #0]
     4d4:	3301      	adds	r3, #1
     4d6:	227f      	movs	r2, #127	; 0x7f
     4d8:	4013      	ands	r3, r2
     4da:	22a8      	movs	r2, #168	; 0xa8
     4dc:	18ba      	adds	r2, r7, r2
     4de:	6013      	str	r3, [r2, #0]
     4e0:	4b19      	ldr	r3, [pc, #100]	; (548 <_stack_size+0x148>)
     4e2:	681b      	ldr	r3, [r3, #0]
     4e4:	2b00      	cmp	r3, #0
     4e6:	d100      	bne.n	4ea <_stack_size+0xea>
     4e8:	e74e      	b.n	388 <main+0x30>
     4ea:	003b      	movs	r3, r7
     4ec:	2200      	movs	r2, #0
     4ee:	701a      	strb	r2, [r3, #0]
     4f0:	003b      	movs	r3, r7
     4f2:	2200      	movs	r2, #0
     4f4:	705a      	strb	r2, [r3, #1]
     4f6:	4b15      	ldr	r3, [pc, #84]	; (54c <_stack_size+0x14c>)
     4f8:	2140      	movs	r1, #64	; 0x40
     4fa:	0018      	movs	r0, r3
     4fc:	f000 fb76 	bl	bec <uart_send>
     500:	4b13      	ldr	r3, [pc, #76]	; (550 <_stack_size+0x150>)
     502:	2102      	movs	r1, #2
     504:	0018      	movs	r0, r3
     506:	f000 fb71 	bl	bec <uart_send>
     50a:	4b0f      	ldr	r3, [pc, #60]	; (548 <_stack_size+0x148>)
     50c:	2200      	movs	r2, #0
     50e:	601a      	str	r2, [r3, #0]
     510:	4b0e      	ldr	r3, [pc, #56]	; (54c <_stack_size+0x14c>)
     512:	8fdc      	ldrh	r4, [r3, #62]	; 0x3e
     514:	4b0d      	ldr	r3, [pc, #52]	; (54c <_stack_size+0x14c>)
     516:	211f      	movs	r1, #31
     518:	0018      	movs	r0, r3
     51a:	f7ff fe39 	bl	190 <get_checksum>
     51e:	0003      	movs	r3, r0
     520:	429c      	cmp	r4, r3
     522:	d100      	bne.n	526 <_stack_size+0x126>
     524:	e730      	b.n	388 <main+0x30>
     526:	4b0b      	ldr	r3, [pc, #44]	; (554 <_stack_size+0x154>)
     528:	681b      	ldr	r3, [r3, #0]
     52a:	1c5a      	adds	r2, r3, #1
     52c:	4b09      	ldr	r3, [pc, #36]	; (554 <_stack_size+0x154>)
     52e:	601a      	str	r2, [r3, #0]
     530:	e72a      	b.n	388 <main+0x30>
     532:	46c0      	nop			; (mov r8, r8)
     534:	200040f8 	.word	0x200040f8
     538:	00000b25 	.word	0x00000b25
     53c:	200000e0 	.word	0x200000e0
     540:	40048080 	.word	0x40048080
     544:	400c8000 	.word	0x400c8000
     548:	200000e4 	.word	0x200000e4
     54c:	2000004c 	.word	0x2000004c
     550:	20000044 	.word	0x20000044
     554:	200000d8 	.word	0x200000d8

00000558 <PortConfig>:
     558:	b580      	push	{r7, lr}
     55a:	af00      	add	r7, sp, #0
     55c:	4b5b      	ldr	r3, [pc, #364]	; (6cc <PortConfig+0x174>)
     55e:	4a5b      	ldr	r2, [pc, #364]	; (6cc <PortConfig+0x174>)
     560:	69d2      	ldr	r2, [r2, #28]
     562:	2180      	movs	r1, #128	; 0x80
     564:	0449      	lsls	r1, r1, #17
     566:	430a      	orrs	r2, r1
     568:	61da      	str	r2, [r3, #28]
     56a:	4b59      	ldr	r3, [pc, #356]	; (6d0 <PortConfig+0x178>)
     56c:	4a58      	ldr	r2, [pc, #352]	; (6d0 <PortConfig+0x178>)
     56e:	6892      	ldr	r2, [r2, #8]
     570:	4958      	ldr	r1, [pc, #352]	; (6d4 <PortConfig+0x17c>)
     572:	400a      	ands	r2, r1
     574:	609a      	str	r2, [r3, #8]
     576:	4b56      	ldr	r3, [pc, #344]	; (6d0 <PortConfig+0x178>)
     578:	4a55      	ldr	r2, [pc, #340]	; (6d0 <PortConfig+0x178>)
     57a:	6892      	ldr	r2, [r2, #8]
     57c:	21a0      	movs	r1, #160	; 0xa0
     57e:	0549      	lsls	r1, r1, #21
     580:	430a      	orrs	r2, r1
     582:	609a      	str	r2, [r3, #8]
     584:	4b52      	ldr	r3, [pc, #328]	; (6d0 <PortConfig+0x178>)
     586:	4a52      	ldr	r2, [pc, #328]	; (6d0 <PortConfig+0x178>)
     588:	68d2      	ldr	r2, [r2, #12]
     58a:	21c0      	movs	r1, #192	; 0xc0
     58c:	01c9      	lsls	r1, r1, #7
     58e:	430a      	orrs	r2, r1
     590:	60da      	str	r2, [r3, #12]
     592:	4b4f      	ldr	r3, [pc, #316]	; (6d0 <PortConfig+0x178>)
     594:	4a4e      	ldr	r2, [pc, #312]	; (6d0 <PortConfig+0x178>)
     596:	6992      	ldr	r2, [r2, #24]
     598:	21f0      	movs	r1, #240	; 0xf0
     59a:	0589      	lsls	r1, r1, #22
     59c:	430a      	orrs	r2, r1
     59e:	619a      	str	r2, [r3, #24]
     5a0:	4b4b      	ldr	r3, [pc, #300]	; (6d0 <PortConfig+0x178>)
     5a2:	4a4b      	ldr	r2, [pc, #300]	; (6d0 <PortConfig+0x178>)
     5a4:	6812      	ldr	r2, [r2, #0]
     5a6:	494c      	ldr	r1, [pc, #304]	; (6d8 <PortConfig+0x180>)
     5a8:	400a      	ands	r2, r1
     5aa:	601a      	str	r2, [r3, #0]
     5ac:	4b47      	ldr	r3, [pc, #284]	; (6cc <PortConfig+0x174>)
     5ae:	4a47      	ldr	r2, [pc, #284]	; (6cc <PortConfig+0x174>)
     5b0:	69d2      	ldr	r2, [r2, #28]
     5b2:	2180      	movs	r1, #128	; 0x80
     5b4:	0409      	lsls	r1, r1, #16
     5b6:	430a      	orrs	r2, r1
     5b8:	61da      	str	r2, [r3, #28]
     5ba:	4b44      	ldr	r3, [pc, #272]	; (6cc <PortConfig+0x174>)
     5bc:	4a43      	ldr	r2, [pc, #268]	; (6cc <PortConfig+0x174>)
     5be:	69d2      	ldr	r2, [r2, #28]
     5c0:	2180      	movs	r1, #128	; 0x80
     5c2:	0449      	lsls	r1, r1, #17
     5c4:	430a      	orrs	r2, r1
     5c6:	61da      	str	r2, [r3, #28]
     5c8:	4b44      	ldr	r3, [pc, #272]	; (6dc <PortConfig+0x184>)
     5ca:	4a44      	ldr	r2, [pc, #272]	; (6dc <PortConfig+0x184>)
     5cc:	6892      	ldr	r2, [r2, #8]
     5ce:	0192      	lsls	r2, r2, #6
     5d0:	0992      	lsrs	r2, r2, #6
     5d2:	609a      	str	r2, [r3, #8]
     5d4:	4b41      	ldr	r3, [pc, #260]	; (6dc <PortConfig+0x184>)
     5d6:	4a41      	ldr	r2, [pc, #260]	; (6dc <PortConfig+0x184>)
     5d8:	6892      	ldr	r2, [r2, #8]
     5da:	21a8      	movs	r1, #168	; 0xa8
     5dc:	05c9      	lsls	r1, r1, #23
     5de:	430a      	orrs	r2, r1
     5e0:	609a      	str	r2, [r3, #8]
     5e2:	4b3e      	ldr	r3, [pc, #248]	; (6dc <PortConfig+0x184>)
     5e4:	4a3d      	ldr	r2, [pc, #244]	; (6dc <PortConfig+0x184>)
     5e6:	68d2      	ldr	r2, [r2, #12]
     5e8:	21e0      	movs	r1, #224	; 0xe0
     5ea:	0209      	lsls	r1, r1, #8
     5ec:	430a      	orrs	r2, r1
     5ee:	60da      	str	r2, [r3, #12]
     5f0:	4b3a      	ldr	r3, [pc, #232]	; (6dc <PortConfig+0x184>)
     5f2:	4a3a      	ldr	r2, [pc, #232]	; (6dc <PortConfig+0x184>)
     5f4:	6992      	ldr	r2, [r2, #24]
     5f6:	21fc      	movs	r1, #252	; 0xfc
     5f8:	0609      	lsls	r1, r1, #24
     5fa:	430a      	orrs	r2, r1
     5fc:	619a      	str	r2, [r3, #24]
     5fe:	4b34      	ldr	r3, [pc, #208]	; (6d0 <PortConfig+0x178>)
     600:	4a33      	ldr	r2, [pc, #204]	; (6d0 <PortConfig+0x178>)
     602:	6892      	ldr	r2, [r2, #8]
     604:	0b92      	lsrs	r2, r2, #14
     606:	0392      	lsls	r2, r2, #14
     608:	609a      	str	r2, [r3, #8]
     60a:	4b31      	ldr	r3, [pc, #196]	; (6d0 <PortConfig+0x178>)
     60c:	4a30      	ldr	r2, [pc, #192]	; (6d0 <PortConfig+0x178>)
     60e:	6892      	ldr	r2, [r2, #8]
     610:	4933      	ldr	r1, [pc, #204]	; (6e0 <PortConfig+0x188>)
     612:	430a      	orrs	r2, r1
     614:	609a      	str	r2, [r3, #8]
     616:	4b2e      	ldr	r3, [pc, #184]	; (6d0 <PortConfig+0x178>)
     618:	4a2d      	ldr	r2, [pc, #180]	; (6d0 <PortConfig+0x178>)
     61a:	68d2      	ldr	r2, [r2, #12]
     61c:	217f      	movs	r1, #127	; 0x7f
     61e:	430a      	orrs	r2, r1
     620:	60da      	str	r2, [r3, #12]
     622:	4b2b      	ldr	r3, [pc, #172]	; (6d0 <PortConfig+0x178>)
     624:	4a2a      	ldr	r2, [pc, #168]	; (6d0 <PortConfig+0x178>)
     626:	6992      	ldr	r2, [r2, #24]
     628:	492e      	ldr	r1, [pc, #184]	; (6e4 <PortConfig+0x18c>)
     62a:	430a      	orrs	r2, r1
     62c:	619a      	str	r2, [r3, #24]
     62e:	4b28      	ldr	r3, [pc, #160]	; (6d0 <PortConfig+0x178>)
     630:	4a27      	ldr	r2, [pc, #156]	; (6d0 <PortConfig+0x178>)
     632:	68d2      	ldr	r2, [r2, #12]
     634:	2180      	movs	r1, #128	; 0x80
     636:	430a      	orrs	r2, r1
     638:	60da      	str	r2, [r3, #12]
     63a:	4b25      	ldr	r3, [pc, #148]	; (6d0 <PortConfig+0x178>)
     63c:	4a24      	ldr	r2, [pc, #144]	; (6d0 <PortConfig+0x178>)
     63e:	6852      	ldr	r2, [r2, #4]
     640:	2180      	movs	r1, #128	; 0x80
     642:	430a      	orrs	r2, r1
     644:	605a      	str	r2, [r3, #4]
     646:	4b22      	ldr	r3, [pc, #136]	; (6d0 <PortConfig+0x178>)
     648:	4a21      	ldr	r2, [pc, #132]	; (6d0 <PortConfig+0x178>)
     64a:	6892      	ldr	r2, [r2, #8]
     64c:	4926      	ldr	r1, [pc, #152]	; (6e8 <PortConfig+0x190>)
     64e:	400a      	ands	r2, r1
     650:	609a      	str	r2, [r3, #8]
     652:	4b1f      	ldr	r3, [pc, #124]	; (6d0 <PortConfig+0x178>)
     654:	4a1e      	ldr	r2, [pc, #120]	; (6d0 <PortConfig+0x178>)
     656:	6992      	ldr	r2, [r2, #24]
     658:	21c0      	movs	r1, #192	; 0xc0
     65a:	0209      	lsls	r1, r1, #8
     65c:	430a      	orrs	r2, r1
     65e:	619a      	str	r2, [r3, #24]
     660:	4b1b      	ldr	r3, [pc, #108]	; (6d0 <PortConfig+0x178>)
     662:	4a1b      	ldr	r2, [pc, #108]	; (6d0 <PortConfig+0x178>)
     664:	6812      	ldr	r2, [r2, #0]
     666:	2180      	movs	r1, #128	; 0x80
     668:	438a      	bics	r2, r1
     66a:	601a      	str	r2, [r3, #0]
     66c:	4b17      	ldr	r3, [pc, #92]	; (6cc <PortConfig+0x174>)
     66e:	4a17      	ldr	r2, [pc, #92]	; (6cc <PortConfig+0x174>)
     670:	69d2      	ldr	r2, [r2, #28]
     672:	2180      	movs	r1, #128	; 0x80
     674:	0489      	lsls	r1, r1, #18
     676:	430a      	orrs	r2, r1
     678:	61da      	str	r2, [r3, #28]
     67a:	4b1c      	ldr	r3, [pc, #112]	; (6ec <PortConfig+0x194>)
     67c:	4a1b      	ldr	r2, [pc, #108]	; (6ec <PortConfig+0x194>)
     67e:	68d2      	ldr	r2, [r2, #12]
     680:	218c      	movs	r1, #140	; 0x8c
     682:	0109      	lsls	r1, r1, #4
     684:	430a      	orrs	r2, r1
     686:	60da      	str	r2, [r3, #12]
     688:	4b18      	ldr	r3, [pc, #96]	; (6ec <PortConfig+0x194>)
     68a:	4a18      	ldr	r2, [pc, #96]	; (6ec <PortConfig+0x194>)
     68c:	6852      	ldr	r2, [r2, #4]
     68e:	218c      	movs	r1, #140	; 0x8c
     690:	0109      	lsls	r1, r1, #4
     692:	430a      	orrs	r2, r1
     694:	605a      	str	r2, [r3, #4]
     696:	4b15      	ldr	r3, [pc, #84]	; (6ec <PortConfig+0x194>)
     698:	4a14      	ldr	r2, [pc, #80]	; (6ec <PortConfig+0x194>)
     69a:	6892      	ldr	r2, [r2, #8]
     69c:	4912      	ldr	r1, [pc, #72]	; (6e8 <PortConfig+0x190>)
     69e:	400a      	ands	r2, r1
     6a0:	609a      	str	r2, [r3, #8]
     6a2:	4b12      	ldr	r3, [pc, #72]	; (6ec <PortConfig+0x194>)
     6a4:	4a11      	ldr	r2, [pc, #68]	; (6ec <PortConfig+0x194>)
     6a6:	6992      	ldr	r2, [r2, #24]
     6a8:	4911      	ldr	r1, [pc, #68]	; (6f0 <PortConfig+0x198>)
     6aa:	430a      	orrs	r2, r1
     6ac:	619a      	str	r2, [r3, #24]
     6ae:	4b0f      	ldr	r3, [pc, #60]	; (6ec <PortConfig+0x194>)
     6b0:	4a0e      	ldr	r2, [pc, #56]	; (6ec <PortConfig+0x194>)
     6b2:	6812      	ldr	r2, [r2, #0]
     6b4:	2180      	movs	r1, #128	; 0x80
     6b6:	438a      	bics	r2, r1
     6b8:	601a      	str	r2, [r3, #0]
     6ba:	4b0c      	ldr	r3, [pc, #48]	; (6ec <PortConfig+0x194>)
     6bc:	4a0b      	ldr	r2, [pc, #44]	; (6ec <PortConfig+0x194>)
     6be:	6812      	ldr	r2, [r2, #0]
     6c0:	490c      	ldr	r1, [pc, #48]	; (6f4 <PortConfig+0x19c>)
     6c2:	400a      	ands	r2, r1
     6c4:	601a      	str	r2, [r3, #0]
     6c6:	46c0      	nop			; (mov r8, r8)
     6c8:	46bd      	mov	sp, r7
     6ca:	bd80      	pop	{r7, pc}
     6cc:	40020000 	.word	0x40020000
     6d0:	400c0000 	.word	0x400c0000
     6d4:	c3ffffff 	.word	0xc3ffffff
     6d8:	ffff9fff 	.word	0xffff9fff
     6dc:	400b8000 	.word	0x400b8000
     6e0:	00001555 	.word	0x00001555
     6e4:	00003fff 	.word	0x00003fff
     6e8:	ffff3fff 	.word	0xffff3fff
     6ec:	400c8000 	.word	0x400c8000
     6f0:	00c0f000 	.word	0x00c0f000
     6f4:	fffff7ff 	.word	0xfffff7ff

000006f8 <ClkConfig>:
     6f8:	b580      	push	{r7, lr}
     6fa:	af00      	add	r7, sp, #0
     6fc:	4b18      	ldr	r3, [pc, #96]	; (760 <ClkConfig+0x68>)
     6fe:	4a18      	ldr	r2, [pc, #96]	; (760 <ClkConfig+0x68>)
     700:	6892      	ldr	r2, [r2, #8]
     702:	2101      	movs	r1, #1
     704:	430a      	orrs	r2, r1
     706:	609a      	str	r2, [r3, #8]
     708:	46c0      	nop			; (mov r8, r8)
     70a:	4b15      	ldr	r3, [pc, #84]	; (760 <ClkConfig+0x68>)
     70c:	681b      	ldr	r3, [r3, #0]
     70e:	2204      	movs	r2, #4
     710:	4013      	ands	r3, r2
     712:	d0fa      	beq.n	70a <ClkConfig+0x12>
     714:	4b12      	ldr	r3, [pc, #72]	; (760 <ClkConfig+0x68>)
     716:	4a12      	ldr	r2, [pc, #72]	; (760 <ClkConfig+0x68>)
     718:	68d2      	ldr	r2, [r2, #12]
     71a:	2102      	movs	r1, #2
     71c:	430a      	orrs	r2, r1
     71e:	60da      	str	r2, [r3, #12]
     720:	4b0f      	ldr	r3, [pc, #60]	; (760 <ClkConfig+0x68>)
     722:	4a10      	ldr	r2, [pc, #64]	; (764 <ClkConfig+0x6c>)
     724:	605a      	str	r2, [r3, #4]
     726:	46c0      	nop			; (mov r8, r8)
     728:	4b0d      	ldr	r3, [pc, #52]	; (760 <ClkConfig+0x68>)
     72a:	681b      	ldr	r3, [r3, #0]
     72c:	2202      	movs	r2, #2
     72e:	4013      	ands	r3, r2
     730:	d0fa      	beq.n	728 <ClkConfig+0x30>
     732:	4b0d      	ldr	r3, [pc, #52]	; (768 <ClkConfig+0x70>)
     734:	4a0c      	ldr	r2, [pc, #48]	; (768 <ClkConfig+0x70>)
     736:	6812      	ldr	r2, [r2, #0]
     738:	2120      	movs	r1, #32
     73a:	430a      	orrs	r2, r1
     73c:	601a      	str	r2, [r3, #0]
     73e:	4b08      	ldr	r3, [pc, #32]	; (760 <ClkConfig+0x68>)
     740:	4a07      	ldr	r2, [pc, #28]	; (760 <ClkConfig+0x68>)
     742:	68d2      	ldr	r2, [r2, #12]
     744:	2180      	movs	r1, #128	; 0x80
     746:	0049      	lsls	r1, r1, #1
     748:	430a      	orrs	r2, r1
     74a:	60da      	str	r2, [r3, #12]
     74c:	4b04      	ldr	r3, [pc, #16]	; (760 <ClkConfig+0x68>)
     74e:	4a04      	ldr	r2, [pc, #16]	; (760 <ClkConfig+0x68>)
     750:	68d2      	ldr	r2, [r2, #12]
     752:	2104      	movs	r1, #4
     754:	430a      	orrs	r2, r1
     756:	60da      	str	r2, [r3, #12]
     758:	46c0      	nop			; (mov r8, r8)
     75a:	46bd      	mov	sp, r7
     75c:	bd80      	pop	{r7, pc}
     75e:	46c0      	nop			; (mov r8, r8)
     760:	40020000 	.word	0x40020000
     764:	00000b04 	.word	0x00000b04
     768:	40018000 	.word	0x40018000

0000076c <TimerConfig>:
     76c:	b580      	push	{r7, lr}
     76e:	af00      	add	r7, sp, #0
     770:	4b17      	ldr	r3, [pc, #92]	; (7d0 <TimerConfig+0x64>)
     772:	4a17      	ldr	r2, [pc, #92]	; (7d0 <TimerConfig+0x64>)
     774:	69d2      	ldr	r2, [r2, #28]
     776:	2180      	movs	r1, #128	; 0x80
     778:	0309      	lsls	r1, r1, #12
     77a:	430a      	orrs	r2, r1
     77c:	61da      	str	r2, [r3, #28]
     77e:	4b14      	ldr	r3, [pc, #80]	; (7d0 <TimerConfig+0x64>)
     780:	4a13      	ldr	r2, [pc, #76]	; (7d0 <TimerConfig+0x64>)
     782:	6a92      	ldr	r2, [r2, #40]	; 0x28
     784:	2180      	movs	r1, #128	; 0x80
     786:	04c9      	lsls	r1, r1, #19
     788:	430a      	orrs	r2, r1
     78a:	629a      	str	r2, [r3, #40]	; 0x28
     78c:	4b10      	ldr	r3, [pc, #64]	; (7d0 <TimerConfig+0x64>)
     78e:	4a10      	ldr	r2, [pc, #64]	; (7d0 <TimerConfig+0x64>)
     790:	6a92      	ldr	r2, [r2, #40]	; 0x28
     792:	4910      	ldr	r1, [pc, #64]	; (7d4 <TimerConfig+0x68>)
     794:	400a      	ands	r2, r1
     796:	629a      	str	r2, [r3, #40]	; 0x28
     798:	4b0f      	ldr	r3, [pc, #60]	; (7d8 <TimerConfig+0x6c>)
     79a:	2200      	movs	r2, #0
     79c:	601a      	str	r2, [r3, #0]
     79e:	4b0e      	ldr	r3, [pc, #56]	; (7d8 <TimerConfig+0x6c>)
     7a0:	225f      	movs	r2, #95	; 0x5f
     7a2:	605a      	str	r2, [r3, #4]
     7a4:	4b0c      	ldr	r3, [pc, #48]	; (7d8 <TimerConfig+0x6c>)
     7a6:	4a0d      	ldr	r2, [pc, #52]	; (7dc <TimerConfig+0x70>)
     7a8:	609a      	str	r2, [r3, #8]
     7aa:	4b0b      	ldr	r3, [pc, #44]	; (7d8 <TimerConfig+0x6c>)
     7ac:	22fa      	movs	r2, #250	; 0xfa
     7ae:	00d2      	lsls	r2, r2, #3
     7b0:	611a      	str	r2, [r3, #16]
     7b2:	4b09      	ldr	r3, [pc, #36]	; (7d8 <TimerConfig+0x6c>)
     7b4:	4a08      	ldr	r2, [pc, #32]	; (7d8 <TimerConfig+0x6c>)
     7b6:	6d92      	ldr	r2, [r2, #88]	; 0x58
     7b8:	2102      	movs	r1, #2
     7ba:	430a      	orrs	r2, r1
     7bc:	659a      	str	r2, [r3, #88]	; 0x58
     7be:	4b06      	ldr	r3, [pc, #24]	; (7d8 <TimerConfig+0x6c>)
     7c0:	2201      	movs	r2, #1
     7c2:	60da      	str	r2, [r3, #12]
     7c4:	200d      	movs	r0, #13
     7c6:	f7ff fc7b 	bl	c0 <NVIC_EnableIRQ>
     7ca:	46c0      	nop			; (mov r8, r8)
     7cc:	46bd      	mov	sp, r7
     7ce:	bd80      	pop	{r7, pc}
     7d0:	40020000 	.word	0x40020000
     7d4:	ff00ffff 	.word	0xff00ffff
     7d8:	40098000 	.word	0x40098000
     7dc:	000009c3 	.word	0x000009c3

000007e0 <mil_std_1533_init_bc>:
     7e0:	b580      	push	{r7, lr}
     7e2:	b082      	sub	sp, #8
     7e4:	af00      	add	r7, sp, #0
     7e6:	4b23      	ldr	r3, [pc, #140]	; (874 <mil_std_1533_init_bc+0x94>)
     7e8:	603b      	str	r3, [r7, #0]
     7ea:	4b23      	ldr	r3, [pc, #140]	; (878 <mil_std_1533_init_bc+0x98>)
     7ec:	4a22      	ldr	r2, [pc, #136]	; (878 <mil_std_1533_init_bc+0x98>)
     7ee:	69d2      	ldr	r2, [r2, #28]
     7f0:	2180      	movs	r1, #128	; 0x80
     7f2:	0089      	lsls	r1, r1, #2
     7f4:	430a      	orrs	r2, r1
     7f6:	61da      	str	r2, [r3, #28]
     7f8:	4b1f      	ldr	r3, [pc, #124]	; (878 <mil_std_1533_init_bc+0x98>)
     7fa:	4a1f      	ldr	r2, [pc, #124]	; (878 <mil_std_1533_init_bc+0x98>)
     7fc:	6b52      	ldr	r2, [r2, #52]	; 0x34
     7fe:	491f      	ldr	r1, [pc, #124]	; (87c <mil_std_1533_init_bc+0x9c>)
     800:	430a      	orrs	r2, r1
     802:	635a      	str	r2, [r3, #52]	; 0x34
     804:	4a1e      	ldr	r2, [pc, #120]	; (880 <mil_std_1533_init_bc+0xa0>)
     806:	2380      	movs	r3, #128	; 0x80
     808:	015b      	lsls	r3, r3, #5
     80a:	2101      	movs	r1, #1
     80c:	50d1      	str	r1, [r2, r3]
     80e:	4a1c      	ldr	r2, [pc, #112]	; (880 <mil_std_1533_init_bc+0xa0>)
     810:	2380      	movs	r3, #128	; 0x80
     812:	015b      	lsls	r3, r3, #5
     814:	491b      	ldr	r1, [pc, #108]	; (884 <mil_std_1533_init_bc+0xa4>)
     816:	50d1      	str	r1, [r2, r3]
     818:	4919      	ldr	r1, [pc, #100]	; (880 <mil_std_1533_init_bc+0xa0>)
     81a:	4a19      	ldr	r2, [pc, #100]	; (880 <mil_std_1533_init_bc+0xa0>)
     81c:	2381      	movs	r3, #129	; 0x81
     81e:	015b      	lsls	r3, r3, #5
     820:	58d3      	ldr	r3, [r2, r3]
     822:	2208      	movs	r2, #8
     824:	431a      	orrs	r2, r3
     826:	2381      	movs	r3, #129	; 0x81
     828:	015b      	lsls	r3, r3, #5
     82a:	50ca      	str	r2, [r1, r3]
     82c:	4914      	ldr	r1, [pc, #80]	; (880 <mil_std_1533_init_bc+0xa0>)
     82e:	4a14      	ldr	r2, [pc, #80]	; (880 <mil_std_1533_init_bc+0xa0>)
     830:	2381      	movs	r3, #129	; 0x81
     832:	015b      	lsls	r3, r3, #5
     834:	58d3      	ldr	r3, [r2, r3]
     836:	2204      	movs	r2, #4
     838:	431a      	orrs	r2, r3
     83a:	2381      	movs	r3, #129	; 0x81
     83c:	015b      	lsls	r3, r3, #5
     83e:	50ca      	str	r2, [r1, r3]
     840:	2001      	movs	r0, #1
     842:	f7ff fc3d 	bl	c0 <NVIC_EnableIRQ>
     846:	4a0e      	ldr	r2, [pc, #56]	; (880 <mil_std_1533_init_bc+0xa0>)
     848:	4b0f      	ldr	r3, [pc, #60]	; (888 <mil_std_1533_init_bc+0xa8>)
     84a:	2100      	movs	r1, #0
     84c:	50d1      	str	r1, [r2, r3]
     84e:	2300      	movs	r3, #0
     850:	607b      	str	r3, [r7, #4]
     852:	e008      	b.n	866 <mil_std_1533_init_bc+0x86>
     854:	683b      	ldr	r3, [r7, #0]
     856:	1d1a      	adds	r2, r3, #4
     858:	603a      	str	r2, [r7, #0]
     85a:	687a      	ldr	r2, [r7, #4]
     85c:	b292      	uxth	r2, r2
     85e:	601a      	str	r2, [r3, #0]
     860:	687b      	ldr	r3, [r7, #4]
     862:	3301      	adds	r3, #1
     864:	607b      	str	r3, [r7, #4]
     866:	687b      	ldr	r3, [r7, #4]
     868:	2b1f      	cmp	r3, #31
     86a:	ddf3      	ble.n	854 <mil_std_1533_init_bc+0x74>
     86c:	46c0      	nop			; (mov r8, r8)
     86e:	46bd      	mov	sp, r7
     870:	b002      	add	sp, #8
     872:	bd80      	pop	{r7, pc}
     874:	40048080 	.word	0x40048080
     878:	40020000 	.word	0x40020000
     87c:	02000100 	.word	0x02000100
     880:	40048000 	.word	0x40048000
     884:	00018014 	.word	0x00018014
     888:	0000100c 	.word	0x0000100c

0000088c <SystemInit>:
     88c:	b580      	push	{r7, lr}
     88e:	af00      	add	r7, sp, #0
     890:	f7ff ff32 	bl	6f8 <ClkConfig>
     894:	f7ff fe60 	bl	558 <PortConfig>
     898:	f7ff ff68 	bl	76c <TimerConfig>
     89c:	f000 f902 	bl	aa4 <uart_init>
     8a0:	f7ff ff9e 	bl	7e0 <mil_std_1533_init_bc>
     8a4:	46c0      	nop			; (mov r8, r8)
     8a6:	46bd      	mov	sp, r7
     8a8:	bd80      	pop	{r7, pc}
     8aa:	46c0      	nop			; (mov r8, r8)

000008ac <SysTick_Handler>:
     8ac:	b580      	push	{r7, lr}
     8ae:	af00      	add	r7, sp, #0
     8b0:	4b03      	ldr	r3, [pc, #12]	; (8c0 <SysTick_Handler+0x14>)
     8b2:	681b      	ldr	r3, [r3, #0]
     8b4:	1c5a      	adds	r2, r3, #1
     8b6:	4b02      	ldr	r3, [pc, #8]	; (8c0 <SysTick_Handler+0x14>)
     8b8:	601a      	str	r2, [r3, #0]
     8ba:	46c0      	nop			; (mov r8, r8)
     8bc:	46bd      	mov	sp, r7
     8be:	bd80      	pop	{r7, pc}
     8c0:	200000dc 	.word	0x200000dc

000008c4 <TIMER4_Handler>:
     8c4:	b580      	push	{r7, lr}
     8c6:	af00      	add	r7, sp, #0
     8c8:	4b24      	ldr	r3, [pc, #144]	; (95c <TIMER4_Handler+0x98>)
     8ca:	2200      	movs	r2, #0
     8cc:	655a      	str	r2, [r3, #84]	; 0x54
     8ce:	4b24      	ldr	r3, [pc, #144]	; (960 <TIMER4_Handler+0x9c>)
     8d0:	4a23      	ldr	r2, [pc, #140]	; (960 <TIMER4_Handler+0x9c>)
     8d2:	6812      	ldr	r2, [r2, #0]
     8d4:	2180      	movs	r1, #128	; 0x80
     8d6:	404a      	eors	r2, r1
     8d8:	601a      	str	r2, [r3, #0]
     8da:	4b22      	ldr	r3, [pc, #136]	; (964 <TIMER4_Handler+0xa0>)
     8dc:	681b      	ldr	r3, [r3, #0]
     8de:	2b01      	cmp	r3, #1
     8e0:	d01d      	beq.n	91e <TIMER4_Handler+0x5a>
     8e2:	2b02      	cmp	r3, #2
     8e4:	d000      	beq.n	8e8 <TIMER4_Handler+0x24>
     8e6:	e035      	b.n	954 <TIMER4_Handler+0x90>
     8e8:	4b1e      	ldr	r3, [pc, #120]	; (964 <TIMER4_Handler+0xa0>)
     8ea:	681b      	ldr	r3, [r3, #0]
     8ec:	1e5a      	subs	r2, r3, #1
     8ee:	4b1d      	ldr	r3, [pc, #116]	; (964 <TIMER4_Handler+0xa0>)
     8f0:	601a      	str	r2, [r3, #0]
     8f2:	491d      	ldr	r1, [pc, #116]	; (968 <TIMER4_Handler+0xa4>)
     8f4:	4a1c      	ldr	r2, [pc, #112]	; (968 <TIMER4_Handler+0xa4>)
     8f6:	4b1d      	ldr	r3, [pc, #116]	; (96c <TIMER4_Handler+0xa8>)
     8f8:	58d3      	ldr	r3, [r2, r3]
     8fa:	4a1d      	ldr	r2, [pc, #116]	; (970 <TIMER4_Handler+0xac>)
     8fc:	4313      	orrs	r3, r2
     8fe:	4a1b      	ldr	r2, [pc, #108]	; (96c <TIMER4_Handler+0xa8>)
     900:	508b      	str	r3, [r1, r2]
     902:	4919      	ldr	r1, [pc, #100]	; (968 <TIMER4_Handler+0xa4>)
     904:	4a18      	ldr	r2, [pc, #96]	; (968 <TIMER4_Handler+0xa4>)
     906:	2380      	movs	r3, #128	; 0x80
     908:	015b      	lsls	r3, r3, #5
     90a:	58d3      	ldr	r3, [r2, r3]
     90c:	2202      	movs	r2, #2
     90e:	431a      	orrs	r2, r3
     910:	2380      	movs	r3, #128	; 0x80
     912:	015b      	lsls	r3, r3, #5
     914:	50ca      	str	r2, [r1, r3]
     916:	4b17      	ldr	r3, [pc, #92]	; (974 <TIMER4_Handler+0xb0>)
     918:	4a17      	ldr	r2, [pc, #92]	; (978 <TIMER4_Handler+0xb4>)
     91a:	601a      	str	r2, [r3, #0]
     91c:	e01a      	b.n	954 <TIMER4_Handler+0x90>
     91e:	4b11      	ldr	r3, [pc, #68]	; (964 <TIMER4_Handler+0xa0>)
     920:	681b      	ldr	r3, [r3, #0]
     922:	1e5a      	subs	r2, r3, #1
     924:	4b0f      	ldr	r3, [pc, #60]	; (964 <TIMER4_Handler+0xa0>)
     926:	601a      	str	r2, [r3, #0]
     928:	490f      	ldr	r1, [pc, #60]	; (968 <TIMER4_Handler+0xa4>)
     92a:	4a0f      	ldr	r2, [pc, #60]	; (968 <TIMER4_Handler+0xa4>)
     92c:	4b0f      	ldr	r3, [pc, #60]	; (96c <TIMER4_Handler+0xa8>)
     92e:	58d3      	ldr	r3, [r2, r3]
     930:	4a12      	ldr	r2, [pc, #72]	; (97c <TIMER4_Handler+0xb8>)
     932:	4313      	orrs	r3, r2
     934:	4a0d      	ldr	r2, [pc, #52]	; (96c <TIMER4_Handler+0xa8>)
     936:	508b      	str	r3, [r1, r2]
     938:	490b      	ldr	r1, [pc, #44]	; (968 <TIMER4_Handler+0xa4>)
     93a:	4a0b      	ldr	r2, [pc, #44]	; (968 <TIMER4_Handler+0xa4>)
     93c:	2380      	movs	r3, #128	; 0x80
     93e:	015b      	lsls	r3, r3, #5
     940:	58d3      	ldr	r3, [r2, r3]
     942:	2202      	movs	r2, #2
     944:	431a      	orrs	r2, r3
     946:	2380      	movs	r3, #128	; 0x80
     948:	015b      	lsls	r3, r3, #5
     94a:	50ca      	str	r2, [r1, r3]
     94c:	4b09      	ldr	r3, [pc, #36]	; (974 <TIMER4_Handler+0xb0>)
     94e:	4a0c      	ldr	r2, [pc, #48]	; (980 <TIMER4_Handler+0xbc>)
     950:	601a      	str	r2, [r3, #0]
     952:	46c0      	nop			; (mov r8, r8)
     954:	46c0      	nop			; (mov r8, r8)
     956:	46bd      	mov	sp, r7
     958:	bd80      	pop	{r7, pc}
     95a:	46c0      	nop			; (mov r8, r8)
     95c:	40098000 	.word	0x40098000
     960:	400c0000 	.word	0x400c0000
     964:	200000e0 	.word	0x200000e0
     968:	40048000 	.word	0x40048000
     96c:	0000100c 	.word	0x0000100c
     970:	00004025 	.word	0x00004025
     974:	20000048 	.word	0x20000048
     978:	000000f9 	.word	0x000000f9
     97c:	00004420 	.word	0x00004420
     980:	00000105 	.word	0x00000105

00000984 <MIL_STD_1553B1_Handler>:
     984:	b580      	push	{r7, lr}
     986:	b082      	sub	sp, #8
     988:	af00      	add	r7, sp, #0
     98a:	4a10      	ldr	r2, [pc, #64]	; (9cc <MIL_STD_1553B1_Handler+0x48>)
     98c:	4b10      	ldr	r3, [pc, #64]	; (9d0 <MIL_STD_1553B1_Handler+0x4c>)
     98e:	58d3      	ldr	r3, [r2, r3]
     990:	2208      	movs	r2, #8
     992:	4013      	ands	r3, r2
     994:	d008      	beq.n	9a8 <MIL_STD_1553B1_Handler+0x24>
     996:	4a0d      	ldr	r2, [pc, #52]	; (9cc <MIL_STD_1553B1_Handler+0x48>)
     998:	4b0e      	ldr	r3, [pc, #56]	; (9d4 <MIL_STD_1553B1_Handler+0x50>)
     99a:	58d3      	ldr	r3, [r2, r3]
     99c:	607b      	str	r3, [r7, #4]
     99e:	4b0e      	ldr	r3, [pc, #56]	; (9d8 <MIL_STD_1553B1_Handler+0x54>)
     9a0:	681b      	ldr	r3, [r3, #0]
     9a2:	1c5a      	adds	r2, r3, #1
     9a4:	4b0c      	ldr	r3, [pc, #48]	; (9d8 <MIL_STD_1553B1_Handler+0x54>)
     9a6:	601a      	str	r2, [r3, #0]
     9a8:	4a08      	ldr	r2, [pc, #32]	; (9cc <MIL_STD_1553B1_Handler+0x48>)
     9aa:	4b09      	ldr	r3, [pc, #36]	; (9d0 <MIL_STD_1553B1_Handler+0x4c>)
     9ac:	58d3      	ldr	r3, [r2, r3]
     9ae:	2204      	movs	r2, #4
     9b0:	4013      	ands	r3, r2
     9b2:	d007      	beq.n	9c4 <MIL_STD_1553B1_Handler+0x40>
     9b4:	4b09      	ldr	r3, [pc, #36]	; (9dc <MIL_STD_1553B1_Handler+0x58>)
     9b6:	681b      	ldr	r3, [r3, #0]
     9b8:	4798      	blx	r3
     9ba:	4b09      	ldr	r3, [pc, #36]	; (9e0 <MIL_STD_1553B1_Handler+0x5c>)
     9bc:	681b      	ldr	r3, [r3, #0]
     9be:	1c5a      	adds	r2, r3, #1
     9c0:	4b07      	ldr	r3, [pc, #28]	; (9e0 <MIL_STD_1553B1_Handler+0x5c>)
     9c2:	601a      	str	r2, [r3, #0]
     9c4:	46c0      	nop			; (mov r8, r8)
     9c6:	46bd      	mov	sp, r7
     9c8:	b002      	add	sp, #8
     9ca:	bd80      	pop	{r7, pc}
     9cc:	40048000 	.word	0x40048000
     9d0:	00001004 	.word	0x00001004
     9d4:	00001008 	.word	0x00001008
     9d8:	200000d0 	.word	0x200000d0
     9dc:	20000048 	.word	0x20000048
     9e0:	200000d4 	.word	0x200000d4

000009e4 <handler_reset>:
     9e4:	b580      	push	{r7, lr}
     9e6:	b082      	sub	sp, #8
     9e8:	af00      	add	r7, sp, #0
     9ea:	4b11      	ldr	r3, [pc, #68]	; (a30 <handler_reset+0x4c>)
     9ec:	607b      	str	r3, [r7, #4]
     9ee:	4b11      	ldr	r3, [pc, #68]	; (a34 <handler_reset+0x50>)
     9f0:	603b      	str	r3, [r7, #0]
     9f2:	e007      	b.n	a04 <handler_reset+0x20>
     9f4:	683b      	ldr	r3, [r7, #0]
     9f6:	1d1a      	adds	r2, r3, #4
     9f8:	603a      	str	r2, [r7, #0]
     9fa:	687a      	ldr	r2, [r7, #4]
     9fc:	1d11      	adds	r1, r2, #4
     9fe:	6079      	str	r1, [r7, #4]
     a00:	6812      	ldr	r2, [r2, #0]
     a02:	601a      	str	r2, [r3, #0]
     a04:	683a      	ldr	r2, [r7, #0]
     a06:	4b0c      	ldr	r3, [pc, #48]	; (a38 <handler_reset+0x54>)
     a08:	429a      	cmp	r2, r3
     a0a:	d3f3      	bcc.n	9f4 <handler_reset+0x10>
     a0c:	4b0b      	ldr	r3, [pc, #44]	; (a3c <handler_reset+0x58>)
     a0e:	603b      	str	r3, [r7, #0]
     a10:	e004      	b.n	a1c <handler_reset+0x38>
     a12:	683b      	ldr	r3, [r7, #0]
     a14:	1d1a      	adds	r2, r3, #4
     a16:	603a      	str	r2, [r7, #0]
     a18:	2200      	movs	r2, #0
     a1a:	601a      	str	r2, [r3, #0]
     a1c:	683a      	ldr	r2, [r7, #0]
     a1e:	4b08      	ldr	r3, [pc, #32]	; (a40 <handler_reset+0x5c>)
     a20:	429a      	cmp	r2, r3
     a22:	d3f6      	bcc.n	a12 <handler_reset+0x2e>
     a24:	f7ff fc98 	bl	358 <main>
     a28:	46c0      	nop			; (mov r8, r8)
     a2a:	46bd      	mov	sp, r7
     a2c:	b002      	add	sp, #8
     a2e:	bd80      	pop	{r7, pc}
     a30:	00001710 	.word	0x00001710
     a34:	20000000 	.word	0x20000000
     a38:	2000004c 	.word	0x2000004c
     a3c:	2000004c 	.word	0x2000004c
     a40:	20004104 	.word	0x20004104

00000a44 <default_handler>:
     a44:	b580      	push	{r7, lr}
     a46:	af00      	add	r7, sp, #0
     a48:	e7fe      	b.n	a48 <default_handler+0x4>
     a4a:	46c0      	nop			; (mov r8, r8)

00000a4c <NVIC_EnableIRQ>:
     a4c:	b580      	push	{r7, lr}
     a4e:	b082      	sub	sp, #8
     a50:	af00      	add	r7, sp, #0
     a52:	0002      	movs	r2, r0
     a54:	1dfb      	adds	r3, r7, #7
     a56:	701a      	strb	r2, [r3, #0]
     a58:	4909      	ldr	r1, [pc, #36]	; (a80 <NVIC_EnableIRQ+0x34>)
     a5a:	1dfb      	adds	r3, r7, #7
     a5c:	781b      	ldrb	r3, [r3, #0]
     a5e:	b25b      	sxtb	r3, r3
     a60:	095b      	lsrs	r3, r3, #5
     a62:	1dfa      	adds	r2, r7, #7
     a64:	7812      	ldrb	r2, [r2, #0]
     a66:	0010      	movs	r0, r2
     a68:	221f      	movs	r2, #31
     a6a:	4002      	ands	r2, r0
     a6c:	2001      	movs	r0, #1
     a6e:	4090      	lsls	r0, r2
     a70:	0002      	movs	r2, r0
     a72:	009b      	lsls	r3, r3, #2
     a74:	505a      	str	r2, [r3, r1]
     a76:	46c0      	nop			; (mov r8, r8)
     a78:	46bd      	mov	sp, r7
     a7a:	b002      	add	sp, #8
     a7c:	bd80      	pop	{r7, pc}
     a7e:	46c0      	nop			; (mov r8, r8)
     a80:	e000e100 	.word	0xe000e100

00000a84 <uart_bsz>:
     a84:	b580      	push	{r7, lr}
     a86:	af00      	add	r7, sp, #0
     a88:	4b04      	ldr	r3, [pc, #16]	; (a9c <uart_bsz+0x18>)
     a8a:	681a      	ldr	r2, [r3, #0]
     a8c:	4b04      	ldr	r3, [pc, #16]	; (aa0 <uart_bsz+0x1c>)
     a8e:	681b      	ldr	r3, [r3, #0]
     a90:	1ad3      	subs	r3, r2, r3
     a92:	04db      	lsls	r3, r3, #19
     a94:	0cdb      	lsrs	r3, r3, #19
     a96:	0018      	movs	r0, r3
     a98:	46bd      	mov	sp, r7
     a9a:	bd80      	pop	{r7, pc}
     a9c:	200040f0 	.word	0x200040f0
     aa0:	200040f4 	.word	0x200040f4

00000aa4 <uart_init>:
     aa4:	b580      	push	{r7, lr}
     aa6:	af00      	add	r7, sp, #0
     aa8:	4b1b      	ldr	r3, [pc, #108]	; (b18 <uart_init+0x74>)
     aaa:	4a1b      	ldr	r2, [pc, #108]	; (b18 <uart_init+0x74>)
     aac:	69d2      	ldr	r2, [r2, #28]
     aae:	2180      	movs	r1, #128	; 0x80
     ab0:	430a      	orrs	r2, r1
     ab2:	61da      	str	r2, [r3, #28]
     ab4:	4b18      	ldr	r3, [pc, #96]	; (b18 <uart_init+0x74>)
     ab6:	4a18      	ldr	r2, [pc, #96]	; (b18 <uart_init+0x74>)
     ab8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     aba:	2180      	movs	r1, #128	; 0x80
     abc:	0489      	lsls	r1, r1, #18
     abe:	430a      	orrs	r2, r1
     ac0:	629a      	str	r2, [r3, #40]	; 0x28
     ac2:	4b16      	ldr	r3, [pc, #88]	; (b1c <uart_init+0x78>)
     ac4:	220c      	movs	r2, #12
     ac6:	625a      	str	r2, [r3, #36]	; 0x24
     ac8:	4b14      	ldr	r3, [pc, #80]	; (b1c <uart_init+0x78>)
     aca:	2200      	movs	r2, #0
     acc:	629a      	str	r2, [r3, #40]	; 0x28
     ace:	4b13      	ldr	r3, [pc, #76]	; (b1c <uart_init+0x78>)
     ad0:	4a12      	ldr	r2, [pc, #72]	; (b1c <uart_init+0x78>)
     ad2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ad4:	213f      	movs	r1, #63	; 0x3f
     ad6:	438a      	bics	r2, r1
     ad8:	635a      	str	r2, [r3, #52]	; 0x34
     ada:	4b10      	ldr	r3, [pc, #64]	; (b1c <uart_init+0x78>)
     adc:	4a0f      	ldr	r2, [pc, #60]	; (b1c <uart_init+0x78>)
     ade:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ae0:	2124      	movs	r1, #36	; 0x24
     ae2:	430a      	orrs	r2, r1
     ae4:	635a      	str	r2, [r3, #52]	; 0x34
     ae6:	4b0d      	ldr	r3, [pc, #52]	; (b1c <uart_init+0x78>)
     ae8:	4a0c      	ldr	r2, [pc, #48]	; (b1c <uart_init+0x78>)
     aea:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     aec:	2160      	movs	r1, #96	; 0x60
     aee:	430a      	orrs	r2, r1
     af0:	62da      	str	r2, [r3, #44]	; 0x2c
     af2:	4b0a      	ldr	r3, [pc, #40]	; (b1c <uart_init+0x78>)
     af4:	4a09      	ldr	r2, [pc, #36]	; (b1c <uart_init+0x78>)
     af6:	6b12      	ldr	r2, [r2, #48]	; 0x30
     af8:	4909      	ldr	r1, [pc, #36]	; (b20 <uart_init+0x7c>)
     afa:	430a      	orrs	r2, r1
     afc:	631a      	str	r2, [r3, #48]	; 0x30
     afe:	4b07      	ldr	r3, [pc, #28]	; (b1c <uart_init+0x78>)
     b00:	4a06      	ldr	r2, [pc, #24]	; (b1c <uart_init+0x78>)
     b02:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b04:	2110      	movs	r1, #16
     b06:	430a      	orrs	r2, r1
     b08:	639a      	str	r2, [r3, #56]	; 0x38
     b0a:	2007      	movs	r0, #7
     b0c:	f7ff ff9e 	bl	a4c <NVIC_EnableIRQ>
     b10:	46c0      	nop			; (mov r8, r8)
     b12:	46bd      	mov	sp, r7
     b14:	bd80      	pop	{r7, pc}
     b16:	46c0      	nop			; (mov r8, r8)
     b18:	40020000 	.word	0x40020000
     b1c:	40038000 	.word	0x40038000
     b20:	00000301 	.word	0x00000301

00000b24 <uart_putch>:
     b24:	b580      	push	{r7, lr}
     b26:	b082      	sub	sp, #8
     b28:	af00      	add	r7, sp, #0
     b2a:	0002      	movs	r2, r0
     b2c:	1dfb      	adds	r3, r7, #7
     b2e:	701a      	strb	r2, [r3, #0]
     b30:	46c0      	nop			; (mov r8, r8)
     b32:	4b06      	ldr	r3, [pc, #24]	; (b4c <uart_putch+0x28>)
     b34:	699b      	ldr	r3, [r3, #24]
     b36:	2220      	movs	r2, #32
     b38:	4013      	ands	r3, r2
     b3a:	d1fa      	bne.n	b32 <uart_putch+0xe>
     b3c:	4b03      	ldr	r3, [pc, #12]	; (b4c <uart_putch+0x28>)
     b3e:	1dfa      	adds	r2, r7, #7
     b40:	7812      	ldrb	r2, [r2, #0]
     b42:	601a      	str	r2, [r3, #0]
     b44:	46c0      	nop			; (mov r8, r8)
     b46:	46bd      	mov	sp, r7
     b48:	b002      	add	sp, #8
     b4a:	bd80      	pop	{r7, pc}
     b4c:	40038000 	.word	0x40038000

00000b50 <uart_read>:
     b50:	b580      	push	{r7, lr}
     b52:	b084      	sub	sp, #16
     b54:	af00      	add	r7, sp, #0
     b56:	6078      	str	r0, [r7, #4]
     b58:	6039      	str	r1, [r7, #0]
     b5a:	4b1f      	ldr	r3, [pc, #124]	; (bd8 <uart_read+0x88>)
     b5c:	681a      	ldr	r2, [r3, #0]
     b5e:	4b1f      	ldr	r3, [pc, #124]	; (bdc <uart_read+0x8c>)
     b60:	681b      	ldr	r3, [r3, #0]
     b62:	429a      	cmp	r2, r3
     b64:	d101      	bne.n	b6a <uart_read+0x1a>
     b66:	2300      	movs	r3, #0
     b68:	e031      	b.n	bce <uart_read+0x7e>
     b6a:	2300      	movs	r3, #0
     b6c:	60fb      	str	r3, [r7, #12]
     b6e:	e01b      	b.n	ba8 <uart_read+0x58>
     b70:	68fb      	ldr	r3, [r7, #12]
     b72:	687a      	ldr	r2, [r7, #4]
     b74:	18d2      	adds	r2, r2, r3
     b76:	4b18      	ldr	r3, [pc, #96]	; (bd8 <uart_read+0x88>)
     b78:	681b      	ldr	r3, [r3, #0]
     b7a:	4919      	ldr	r1, [pc, #100]	; (be0 <uart_read+0x90>)
     b7c:	5ccb      	ldrb	r3, [r1, r3]
     b7e:	7013      	strb	r3, [r2, #0]
     b80:	4b15      	ldr	r3, [pc, #84]	; (bd8 <uart_read+0x88>)
     b82:	681b      	ldr	r3, [r3, #0]
     b84:	3301      	adds	r3, #1
     b86:	04db      	lsls	r3, r3, #19
     b88:	0cda      	lsrs	r2, r3, #19
     b8a:	4b13      	ldr	r3, [pc, #76]	; (bd8 <uart_read+0x88>)
     b8c:	601a      	str	r2, [r3, #0]
     b8e:	4b12      	ldr	r3, [pc, #72]	; (bd8 <uart_read+0x88>)
     b90:	681a      	ldr	r2, [r3, #0]
     b92:	4b12      	ldr	r3, [pc, #72]	; (bdc <uart_read+0x8c>)
     b94:	681b      	ldr	r3, [r3, #0]
     b96:	429a      	cmp	r2, r3
     b98:	d103      	bne.n	ba2 <uart_read+0x52>
     b9a:	68fb      	ldr	r3, [r7, #12]
     b9c:	3301      	adds	r3, #1
     b9e:	60fb      	str	r3, [r7, #12]
     ba0:	e006      	b.n	bb0 <uart_read+0x60>
     ba2:	68fb      	ldr	r3, [r7, #12]
     ba4:	3301      	adds	r3, #1
     ba6:	60fb      	str	r3, [r7, #12]
     ba8:	68fa      	ldr	r2, [r7, #12]
     baa:	683b      	ldr	r3, [r7, #0]
     bac:	429a      	cmp	r2, r3
     bae:	dbdf      	blt.n	b70 <uart_read+0x20>
     bb0:	f7ff ff68 	bl	a84 <uart_bsz>
     bb4:	0003      	movs	r3, r0
     bb6:	60bb      	str	r3, [r7, #8]
     bb8:	68bb      	ldr	r3, [r7, #8]
     bba:	4a0a      	ldr	r2, [pc, #40]	; (be4 <uart_read+0x94>)
     bbc:	4293      	cmp	r3, r2
     bbe:	dc05      	bgt.n	bcc <uart_read+0x7c>
     bc0:	4b09      	ldr	r3, [pc, #36]	; (be8 <uart_read+0x98>)
     bc2:	4a09      	ldr	r2, [pc, #36]	; (be8 <uart_read+0x98>)
     bc4:	6812      	ldr	r2, [r2, #0]
     bc6:	2180      	movs	r1, #128	; 0x80
     bc8:	438a      	bics	r2, r1
     bca:	601a      	str	r2, [r3, #0]
     bcc:	68fb      	ldr	r3, [r7, #12]
     bce:	0018      	movs	r0, r3
     bd0:	46bd      	mov	sp, r7
     bd2:	b004      	add	sp, #16
     bd4:	bd80      	pop	{r7, pc}
     bd6:	46c0      	nop			; (mov r8, r8)
     bd8:	200040f4 	.word	0x200040f4
     bdc:	200040f0 	.word	0x200040f0
     be0:	200020f0 	.word	0x200020f0
     be4:	00001b57 	.word	0x00001b57
     be8:	400c8000 	.word	0x400c8000

00000bec <uart_send>:
     bec:	b580      	push	{r7, lr}
     bee:	b084      	sub	sp, #16
     bf0:	af00      	add	r7, sp, #0
     bf2:	6078      	str	r0, [r7, #4]
     bf4:	6039      	str	r1, [r7, #0]
     bf6:	2300      	movs	r3, #0
     bf8:	60fb      	str	r3, [r7, #12]
     bfa:	e01b      	b.n	c34 <uart_send+0x48>
     bfc:	4b1e      	ldr	r3, [pc, #120]	; (c78 <uart_send+0x8c>)
     bfe:	681b      	ldr	r3, [r3, #0]
     c00:	68fa      	ldr	r2, [r7, #12]
     c02:	6879      	ldr	r1, [r7, #4]
     c04:	188a      	adds	r2, r1, r2
     c06:	7811      	ldrb	r1, [r2, #0]
     c08:	4a1c      	ldr	r2, [pc, #112]	; (c7c <uart_send+0x90>)
     c0a:	54d1      	strb	r1, [r2, r3]
     c0c:	4b1a      	ldr	r3, [pc, #104]	; (c78 <uart_send+0x8c>)
     c0e:	681b      	ldr	r3, [r3, #0]
     c10:	3301      	adds	r3, #1
     c12:	04db      	lsls	r3, r3, #19
     c14:	0cda      	lsrs	r2, r3, #19
     c16:	4b18      	ldr	r3, [pc, #96]	; (c78 <uart_send+0x8c>)
     c18:	601a      	str	r2, [r3, #0]
     c1a:	4b17      	ldr	r3, [pc, #92]	; (c78 <uart_send+0x8c>)
     c1c:	681a      	ldr	r2, [r3, #0]
     c1e:	4b18      	ldr	r3, [pc, #96]	; (c80 <uart_send+0x94>)
     c20:	681b      	ldr	r3, [r3, #0]
     c22:	429a      	cmp	r2, r3
     c24:	d103      	bne.n	c2e <uart_send+0x42>
     c26:	68fb      	ldr	r3, [r7, #12]
     c28:	3301      	adds	r3, #1
     c2a:	60fb      	str	r3, [r7, #12]
     c2c:	e006      	b.n	c3c <uart_send+0x50>
     c2e:	68fb      	ldr	r3, [r7, #12]
     c30:	3301      	adds	r3, #1
     c32:	60fb      	str	r3, [r7, #12]
     c34:	68fa      	ldr	r2, [r7, #12]
     c36:	683b      	ldr	r3, [r7, #0]
     c38:	429a      	cmp	r2, r3
     c3a:	dbdf      	blt.n	bfc <uart_send+0x10>
     c3c:	4b11      	ldr	r3, [pc, #68]	; (c84 <uart_send+0x98>)
     c3e:	699b      	ldr	r3, [r3, #24]
     c40:	2208      	movs	r2, #8
     c42:	4013      	ands	r3, r2
     c44:	d10c      	bne.n	c60 <uart_send+0x74>
     c46:	4a0f      	ldr	r2, [pc, #60]	; (c84 <uart_send+0x98>)
     c48:	4b0d      	ldr	r3, [pc, #52]	; (c80 <uart_send+0x94>)
     c4a:	681b      	ldr	r3, [r3, #0]
     c4c:	490b      	ldr	r1, [pc, #44]	; (c7c <uart_send+0x90>)
     c4e:	5ccb      	ldrb	r3, [r1, r3]
     c50:	6013      	str	r3, [r2, #0]
     c52:	4b0b      	ldr	r3, [pc, #44]	; (c80 <uart_send+0x94>)
     c54:	681b      	ldr	r3, [r3, #0]
     c56:	3301      	adds	r3, #1
     c58:	04db      	lsls	r3, r3, #19
     c5a:	0cda      	lsrs	r2, r3, #19
     c5c:	4b08      	ldr	r3, [pc, #32]	; (c80 <uart_send+0x94>)
     c5e:	601a      	str	r2, [r3, #0]
     c60:	4b08      	ldr	r3, [pc, #32]	; (c84 <uart_send+0x98>)
     c62:	4a08      	ldr	r2, [pc, #32]	; (c84 <uart_send+0x98>)
     c64:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c66:	2120      	movs	r1, #32
     c68:	430a      	orrs	r2, r1
     c6a:	639a      	str	r2, [r3, #56]	; 0x38
     c6c:	68fb      	ldr	r3, [r7, #12]
     c6e:	0018      	movs	r0, r3
     c70:	46bd      	mov	sp, r7
     c72:	b004      	add	sp, #16
     c74:	bd80      	pop	{r7, pc}
     c76:	46c0      	nop			; (mov r8, r8)
     c78:	200020ec 	.word	0x200020ec
     c7c:	200000e8 	.word	0x200000e8
     c80:	200020e8 	.word	0x200020e8
     c84:	40038000 	.word	0x40038000

00000c88 <UART2_Handler>:
     c88:	b580      	push	{r7, lr}
     c8a:	b082      	sub	sp, #8
     c8c:	af00      	add	r7, sp, #0
     c8e:	4b22      	ldr	r3, [pc, #136]	; (d18 <UART2_Handler+0x90>)
     c90:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     c92:	2220      	movs	r2, #32
     c94:	4013      	ands	r3, r2
     c96:	d019      	beq.n	ccc <UART2_Handler+0x44>
     c98:	4b20      	ldr	r3, [pc, #128]	; (d1c <UART2_Handler+0x94>)
     c9a:	681a      	ldr	r2, [r3, #0]
     c9c:	4b20      	ldr	r3, [pc, #128]	; (d20 <UART2_Handler+0x98>)
     c9e:	681b      	ldr	r3, [r3, #0]
     ca0:	429a      	cmp	r2, r3
     ca2:	d106      	bne.n	cb2 <UART2_Handler+0x2a>
     ca4:	4b1c      	ldr	r3, [pc, #112]	; (d18 <UART2_Handler+0x90>)
     ca6:	4a1c      	ldr	r2, [pc, #112]	; (d18 <UART2_Handler+0x90>)
     ca8:	6b92      	ldr	r2, [r2, #56]	; 0x38
     caa:	2120      	movs	r1, #32
     cac:	438a      	bics	r2, r1
     cae:	639a      	str	r2, [r3, #56]	; 0x38
     cb0:	e00c      	b.n	ccc <UART2_Handler+0x44>
     cb2:	4a19      	ldr	r2, [pc, #100]	; (d18 <UART2_Handler+0x90>)
     cb4:	4b19      	ldr	r3, [pc, #100]	; (d1c <UART2_Handler+0x94>)
     cb6:	681b      	ldr	r3, [r3, #0]
     cb8:	491a      	ldr	r1, [pc, #104]	; (d24 <UART2_Handler+0x9c>)
     cba:	5ccb      	ldrb	r3, [r1, r3]
     cbc:	6013      	str	r3, [r2, #0]
     cbe:	4b17      	ldr	r3, [pc, #92]	; (d1c <UART2_Handler+0x94>)
     cc0:	681b      	ldr	r3, [r3, #0]
     cc2:	3301      	adds	r3, #1
     cc4:	04db      	lsls	r3, r3, #19
     cc6:	0cda      	lsrs	r2, r3, #19
     cc8:	4b14      	ldr	r3, [pc, #80]	; (d1c <UART2_Handler+0x94>)
     cca:	601a      	str	r2, [r3, #0]
     ccc:	4b12      	ldr	r3, [pc, #72]	; (d18 <UART2_Handler+0x90>)
     cce:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     cd0:	2210      	movs	r2, #16
     cd2:	4013      	ands	r3, r2
     cd4:	d01b      	beq.n	d0e <UART2_Handler+0x86>
     cd6:	4b14      	ldr	r3, [pc, #80]	; (d28 <UART2_Handler+0xa0>)
     cd8:	681a      	ldr	r2, [r3, #0]
     cda:	4b0f      	ldr	r3, [pc, #60]	; (d18 <UART2_Handler+0x90>)
     cdc:	681b      	ldr	r3, [r3, #0]
     cde:	b2d9      	uxtb	r1, r3
     ce0:	4b12      	ldr	r3, [pc, #72]	; (d2c <UART2_Handler+0xa4>)
     ce2:	5499      	strb	r1, [r3, r2]
     ce4:	4b10      	ldr	r3, [pc, #64]	; (d28 <UART2_Handler+0xa0>)
     ce6:	681b      	ldr	r3, [r3, #0]
     ce8:	3301      	adds	r3, #1
     cea:	04db      	lsls	r3, r3, #19
     cec:	0cda      	lsrs	r2, r3, #19
     cee:	4b0e      	ldr	r3, [pc, #56]	; (d28 <UART2_Handler+0xa0>)
     cf0:	601a      	str	r2, [r3, #0]
     cf2:	f7ff fec7 	bl	a84 <uart_bsz>
     cf6:	0003      	movs	r3, r0
     cf8:	607b      	str	r3, [r7, #4]
     cfa:	687b      	ldr	r3, [r7, #4]
     cfc:	4a0c      	ldr	r2, [pc, #48]	; (d30 <UART2_Handler+0xa8>)
     cfe:	4293      	cmp	r3, r2
     d00:	dd05      	ble.n	d0e <UART2_Handler+0x86>
     d02:	4b0c      	ldr	r3, [pc, #48]	; (d34 <UART2_Handler+0xac>)
     d04:	4a0b      	ldr	r2, [pc, #44]	; (d34 <UART2_Handler+0xac>)
     d06:	6812      	ldr	r2, [r2, #0]
     d08:	2180      	movs	r1, #128	; 0x80
     d0a:	430a      	orrs	r2, r1
     d0c:	601a      	str	r2, [r3, #0]
     d0e:	46c0      	nop			; (mov r8, r8)
     d10:	46bd      	mov	sp, r7
     d12:	b002      	add	sp, #8
     d14:	bd80      	pop	{r7, pc}
     d16:	46c0      	nop			; (mov r8, r8)
     d18:	40038000 	.word	0x40038000
     d1c:	200020e8 	.word	0x200020e8
     d20:	200020ec 	.word	0x200020ec
     d24:	200000e8 	.word	0x200000e8
     d28:	200040f0 	.word	0x200040f0
     d2c:	200020f0 	.word	0x200020f0
     d30:	00001d4c 	.word	0x00001d4c
     d34:	400c8000 	.word	0x400c8000

00000d38 <xputc>:
     d38:	b580      	push	{r7, lr}
     d3a:	b082      	sub	sp, #8
     d3c:	af00      	add	r7, sp, #0
     d3e:	0002      	movs	r2, r0
     d40:	1dfb      	adds	r3, r7, #7
     d42:	701a      	strb	r2, [r3, #0]
     d44:	1dfb      	adds	r3, r7, #7
     d46:	781b      	ldrb	r3, [r3, #0]
     d48:	2b0a      	cmp	r3, #10
     d4a:	d102      	bne.n	d52 <xputc+0x1a>
     d4c:	200d      	movs	r0, #13
     d4e:	f7ff fff3 	bl	d38 <xputc>
     d52:	4b0d      	ldr	r3, [pc, #52]	; (d88 <xputc+0x50>)
     d54:	681b      	ldr	r3, [r3, #0]
     d56:	2b00      	cmp	r3, #0
     d58:	d008      	beq.n	d6c <xputc+0x34>
     d5a:	4b0b      	ldr	r3, [pc, #44]	; (d88 <xputc+0x50>)
     d5c:	681b      	ldr	r3, [r3, #0]
     d5e:	1c59      	adds	r1, r3, #1
     d60:	4a09      	ldr	r2, [pc, #36]	; (d88 <xputc+0x50>)
     d62:	6011      	str	r1, [r2, #0]
     d64:	1dfa      	adds	r2, r7, #7
     d66:	7812      	ldrb	r2, [r2, #0]
     d68:	701a      	strb	r2, [r3, #0]
     d6a:	e009      	b.n	d80 <xputc+0x48>
     d6c:	4b07      	ldr	r3, [pc, #28]	; (d8c <xputc+0x54>)
     d6e:	681b      	ldr	r3, [r3, #0]
     d70:	2b00      	cmp	r3, #0
     d72:	d005      	beq.n	d80 <xputc+0x48>
     d74:	4b05      	ldr	r3, [pc, #20]	; (d8c <xputc+0x54>)
     d76:	681b      	ldr	r3, [r3, #0]
     d78:	1dfa      	adds	r2, r7, #7
     d7a:	7812      	ldrb	r2, [r2, #0]
     d7c:	0010      	movs	r0, r2
     d7e:	4798      	blx	r3
     d80:	46bd      	mov	sp, r7
     d82:	b002      	add	sp, #8
     d84:	bd80      	pop	{r7, pc}
     d86:	46c0      	nop			; (mov r8, r8)
     d88:	200040fc 	.word	0x200040fc
     d8c:	200040f8 	.word	0x200040f8

00000d90 <xputs>:
     d90:	b580      	push	{r7, lr}
     d92:	b082      	sub	sp, #8
     d94:	af00      	add	r7, sp, #0
     d96:	6078      	str	r0, [r7, #4]
     d98:	e006      	b.n	da8 <xputs+0x18>
     d9a:	687b      	ldr	r3, [r7, #4]
     d9c:	1c5a      	adds	r2, r3, #1
     d9e:	607a      	str	r2, [r7, #4]
     da0:	781b      	ldrb	r3, [r3, #0]
     da2:	0018      	movs	r0, r3
     da4:	f7ff ffc8 	bl	d38 <xputc>
     da8:	687b      	ldr	r3, [r7, #4]
     daa:	781b      	ldrb	r3, [r3, #0]
     dac:	2b00      	cmp	r3, #0
     dae:	d1f4      	bne.n	d9a <xputs+0xa>
     db0:	46c0      	nop			; (mov r8, r8)
     db2:	46bd      	mov	sp, r7
     db4:	b002      	add	sp, #8
     db6:	bd80      	pop	{r7, pc}

00000db8 <xfputs>:
     db8:	b580      	push	{r7, lr}
     dba:	b084      	sub	sp, #16
     dbc:	af00      	add	r7, sp, #0
     dbe:	6078      	str	r0, [r7, #4]
     dc0:	6039      	str	r1, [r7, #0]
     dc2:	4b0c      	ldr	r3, [pc, #48]	; (df4 <xfputs+0x3c>)
     dc4:	681b      	ldr	r3, [r3, #0]
     dc6:	60fb      	str	r3, [r7, #12]
     dc8:	4b0a      	ldr	r3, [pc, #40]	; (df4 <xfputs+0x3c>)
     dca:	687a      	ldr	r2, [r7, #4]
     dcc:	601a      	str	r2, [r3, #0]
     dce:	e006      	b.n	dde <xfputs+0x26>
     dd0:	683b      	ldr	r3, [r7, #0]
     dd2:	1c5a      	adds	r2, r3, #1
     dd4:	603a      	str	r2, [r7, #0]
     dd6:	781b      	ldrb	r3, [r3, #0]
     dd8:	0018      	movs	r0, r3
     dda:	f7ff ffad 	bl	d38 <xputc>
     dde:	683b      	ldr	r3, [r7, #0]
     de0:	781b      	ldrb	r3, [r3, #0]
     de2:	2b00      	cmp	r3, #0
     de4:	d1f4      	bne.n	dd0 <xfputs+0x18>
     de6:	4b03      	ldr	r3, [pc, #12]	; (df4 <xfputs+0x3c>)
     de8:	68fa      	ldr	r2, [r7, #12]
     dea:	601a      	str	r2, [r3, #0]
     dec:	46c0      	nop			; (mov r8, r8)
     dee:	46bd      	mov	sp, r7
     df0:	b004      	add	sp, #16
     df2:	bd80      	pop	{r7, pc}
     df4:	200040f8 	.word	0x200040f8

00000df8 <xvprintf>:
     df8:	b580      	push	{r7, lr}
     dfa:	b08e      	sub	sp, #56	; 0x38
     dfc:	af00      	add	r7, sp, #0
     dfe:	6078      	str	r0, [r7, #4]
     e00:	6039      	str	r1, [r7, #0]
     e02:	687b      	ldr	r3, [r7, #4]
     e04:	1c5a      	adds	r2, r3, #1
     e06:	607a      	str	r2, [r7, #4]
     e08:	221f      	movs	r2, #31
     e0a:	18ba      	adds	r2, r7, r2
     e0c:	781b      	ldrb	r3, [r3, #0]
     e0e:	7013      	strb	r3, [r2, #0]
     e10:	231f      	movs	r3, #31
     e12:	18fb      	adds	r3, r7, r3
     e14:	781b      	ldrb	r3, [r3, #0]
     e16:	2b00      	cmp	r3, #0
     e18:	d100      	bne.n	e1c <xvprintf+0x24>
     e1a:	e172      	b.n	1102 <xvprintf+0x30a>
     e1c:	231f      	movs	r3, #31
     e1e:	18fb      	adds	r3, r7, r3
     e20:	781b      	ldrb	r3, [r3, #0]
     e22:	2b25      	cmp	r3, #37	; 0x25
     e24:	d006      	beq.n	e34 <xvprintf+0x3c>
     e26:	231f      	movs	r3, #31
     e28:	18fb      	adds	r3, r7, r3
     e2a:	781b      	ldrb	r3, [r3, #0]
     e2c:	0018      	movs	r0, r3
     e2e:	f7ff ff83 	bl	d38 <xputc>
     e32:	e165      	b.n	1100 <xvprintf+0x308>
     e34:	2300      	movs	r3, #0
     e36:	627b      	str	r3, [r7, #36]	; 0x24
     e38:	687b      	ldr	r3, [r7, #4]
     e3a:	1c5a      	adds	r2, r3, #1
     e3c:	607a      	str	r2, [r7, #4]
     e3e:	221f      	movs	r2, #31
     e40:	18ba      	adds	r2, r7, r2
     e42:	781b      	ldrb	r3, [r3, #0]
     e44:	7013      	strb	r3, [r2, #0]
     e46:	231f      	movs	r3, #31
     e48:	18fb      	adds	r3, r7, r3
     e4a:	781b      	ldrb	r3, [r3, #0]
     e4c:	2b30      	cmp	r3, #48	; 0x30
     e4e:	d109      	bne.n	e64 <xvprintf+0x6c>
     e50:	2301      	movs	r3, #1
     e52:	627b      	str	r3, [r7, #36]	; 0x24
     e54:	687b      	ldr	r3, [r7, #4]
     e56:	1c5a      	adds	r2, r3, #1
     e58:	607a      	str	r2, [r7, #4]
     e5a:	221f      	movs	r2, #31
     e5c:	18ba      	adds	r2, r7, r2
     e5e:	781b      	ldrb	r3, [r3, #0]
     e60:	7013      	strb	r3, [r2, #0]
     e62:	e00d      	b.n	e80 <xvprintf+0x88>
     e64:	231f      	movs	r3, #31
     e66:	18fb      	adds	r3, r7, r3
     e68:	781b      	ldrb	r3, [r3, #0]
     e6a:	2b2d      	cmp	r3, #45	; 0x2d
     e6c:	d108      	bne.n	e80 <xvprintf+0x88>
     e6e:	2302      	movs	r3, #2
     e70:	627b      	str	r3, [r7, #36]	; 0x24
     e72:	687b      	ldr	r3, [r7, #4]
     e74:	1c5a      	adds	r2, r3, #1
     e76:	607a      	str	r2, [r7, #4]
     e78:	221f      	movs	r2, #31
     e7a:	18ba      	adds	r2, r7, r2
     e7c:	781b      	ldrb	r3, [r3, #0]
     e7e:	7013      	strb	r3, [r2, #0]
     e80:	2300      	movs	r3, #0
     e82:	62bb      	str	r3, [r7, #40]	; 0x28
     e84:	e012      	b.n	eac <xvprintf+0xb4>
     e86:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e88:	0013      	movs	r3, r2
     e8a:	009b      	lsls	r3, r3, #2
     e8c:	189b      	adds	r3, r3, r2
     e8e:	005b      	lsls	r3, r3, #1
     e90:	001a      	movs	r2, r3
     e92:	231f      	movs	r3, #31
     e94:	18fb      	adds	r3, r7, r3
     e96:	781b      	ldrb	r3, [r3, #0]
     e98:	18d3      	adds	r3, r2, r3
     e9a:	3b30      	subs	r3, #48	; 0x30
     e9c:	62bb      	str	r3, [r7, #40]	; 0x28
     e9e:	687b      	ldr	r3, [r7, #4]
     ea0:	1c5a      	adds	r2, r3, #1
     ea2:	607a      	str	r2, [r7, #4]
     ea4:	221f      	movs	r2, #31
     ea6:	18ba      	adds	r2, r7, r2
     ea8:	781b      	ldrb	r3, [r3, #0]
     eaa:	7013      	strb	r3, [r2, #0]
     eac:	231f      	movs	r3, #31
     eae:	18fb      	adds	r3, r7, r3
     eb0:	781b      	ldrb	r3, [r3, #0]
     eb2:	2b2f      	cmp	r3, #47	; 0x2f
     eb4:	d904      	bls.n	ec0 <xvprintf+0xc8>
     eb6:	231f      	movs	r3, #31
     eb8:	18fb      	adds	r3, r7, r3
     eba:	781b      	ldrb	r3, [r3, #0]
     ebc:	2b39      	cmp	r3, #57	; 0x39
     ebe:	d9e2      	bls.n	e86 <xvprintf+0x8e>
     ec0:	231f      	movs	r3, #31
     ec2:	18fb      	adds	r3, r7, r3
     ec4:	781b      	ldrb	r3, [r3, #0]
     ec6:	2b6c      	cmp	r3, #108	; 0x6c
     ec8:	d004      	beq.n	ed4 <xvprintf+0xdc>
     eca:	231f      	movs	r3, #31
     ecc:	18fb      	adds	r3, r7, r3
     ece:	781b      	ldrb	r3, [r3, #0]
     ed0:	2b4c      	cmp	r3, #76	; 0x4c
     ed2:	d10a      	bne.n	eea <xvprintf+0xf2>
     ed4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     ed6:	2204      	movs	r2, #4
     ed8:	4313      	orrs	r3, r2
     eda:	627b      	str	r3, [r7, #36]	; 0x24
     edc:	687b      	ldr	r3, [r7, #4]
     ede:	1c5a      	adds	r2, r3, #1
     ee0:	607a      	str	r2, [r7, #4]
     ee2:	221f      	movs	r2, #31
     ee4:	18ba      	adds	r2, r7, r2
     ee6:	781b      	ldrb	r3, [r3, #0]
     ee8:	7013      	strb	r3, [r2, #0]
     eea:	231f      	movs	r3, #31
     eec:	18fb      	adds	r3, r7, r3
     eee:	781b      	ldrb	r3, [r3, #0]
     ef0:	2b00      	cmp	r3, #0
     ef2:	d100      	bne.n	ef6 <xvprintf+0xfe>
     ef4:	e107      	b.n	1106 <xvprintf+0x30e>
     ef6:	231e      	movs	r3, #30
     ef8:	18fb      	adds	r3, r7, r3
     efa:	221f      	movs	r2, #31
     efc:	18ba      	adds	r2, r7, r2
     efe:	7812      	ldrb	r2, [r2, #0]
     f00:	701a      	strb	r2, [r3, #0]
     f02:	231e      	movs	r3, #30
     f04:	18fb      	adds	r3, r7, r3
     f06:	781b      	ldrb	r3, [r3, #0]
     f08:	2b60      	cmp	r3, #96	; 0x60
     f0a:	d906      	bls.n	f1a <xvprintf+0x122>
     f0c:	231e      	movs	r3, #30
     f0e:	18fb      	adds	r3, r7, r3
     f10:	221e      	movs	r2, #30
     f12:	18ba      	adds	r2, r7, r2
     f14:	7812      	ldrb	r2, [r2, #0]
     f16:	3a20      	subs	r2, #32
     f18:	701a      	strb	r2, [r3, #0]
     f1a:	231e      	movs	r3, #30
     f1c:	18fb      	adds	r3, r7, r3
     f1e:	781b      	ldrb	r3, [r3, #0]
     f20:	3b42      	subs	r3, #66	; 0x42
     f22:	2b16      	cmp	r3, #22
     f24:	d847      	bhi.n	fb6 <xvprintf+0x1be>
     f26:	009a      	lsls	r2, r3, #2
     f28:	4b79      	ldr	r3, [pc, #484]	; (1110 <xvprintf+0x318>)
     f2a:	18d3      	adds	r3, r2, r3
     f2c:	681b      	ldr	r3, [r3, #0]
     f2e:	469f      	mov	pc, r3
     f30:	683b      	ldr	r3, [r7, #0]
     f32:	1d1a      	adds	r2, r3, #4
     f34:	603a      	str	r2, [r7, #0]
     f36:	681b      	ldr	r3, [r3, #0]
     f38:	61bb      	str	r3, [r7, #24]
     f3a:	2300      	movs	r3, #0
     f3c:	62fb      	str	r3, [r7, #44]	; 0x2c
     f3e:	e002      	b.n	f46 <xvprintf+0x14e>
     f40:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f42:	3301      	adds	r3, #1
     f44:	62fb      	str	r3, [r7, #44]	; 0x2c
     f46:	69ba      	ldr	r2, [r7, #24]
     f48:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f4a:	18d3      	adds	r3, r2, r3
     f4c:	781b      	ldrb	r3, [r3, #0]
     f4e:	2b00      	cmp	r3, #0
     f50:	d1f6      	bne.n	f40 <xvprintf+0x148>
     f52:	e002      	b.n	f5a <xvprintf+0x162>
     f54:	2020      	movs	r0, #32
     f56:	f7ff feef 	bl	d38 <xputc>
     f5a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f5c:	2202      	movs	r2, #2
     f5e:	4013      	ands	r3, r2
     f60:	d105      	bne.n	f6e <xvprintf+0x176>
     f62:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f64:	1c5a      	adds	r2, r3, #1
     f66:	62fa      	str	r2, [r7, #44]	; 0x2c
     f68:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f6a:	4293      	cmp	r3, r2
     f6c:	d3f2      	bcc.n	f54 <xvprintf+0x15c>
     f6e:	69bb      	ldr	r3, [r7, #24]
     f70:	0018      	movs	r0, r3
     f72:	f7ff ff0d 	bl	d90 <xputs>
     f76:	e002      	b.n	f7e <xvprintf+0x186>
     f78:	2020      	movs	r0, #32
     f7a:	f7ff fedd 	bl	d38 <xputc>
     f7e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f80:	1c5a      	adds	r2, r3, #1
     f82:	62fa      	str	r2, [r7, #44]	; 0x2c
     f84:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f86:	4293      	cmp	r3, r2
     f88:	d3f6      	bcc.n	f78 <xvprintf+0x180>
     f8a:	e0b9      	b.n	1100 <xvprintf+0x308>
     f8c:	683b      	ldr	r3, [r7, #0]
     f8e:	1d1a      	adds	r2, r3, #4
     f90:	603a      	str	r2, [r7, #0]
     f92:	681b      	ldr	r3, [r3, #0]
     f94:	b2db      	uxtb	r3, r3
     f96:	0018      	movs	r0, r3
     f98:	f7ff fece 	bl	d38 <xputc>
     f9c:	e0b0      	b.n	1100 <xvprintf+0x308>
     f9e:	2302      	movs	r3, #2
     fa0:	637b      	str	r3, [r7, #52]	; 0x34
     fa2:	e00f      	b.n	fc4 <xvprintf+0x1cc>
     fa4:	2308      	movs	r3, #8
     fa6:	637b      	str	r3, [r7, #52]	; 0x34
     fa8:	e00c      	b.n	fc4 <xvprintf+0x1cc>
     faa:	230a      	movs	r3, #10
     fac:	637b      	str	r3, [r7, #52]	; 0x34
     fae:	e009      	b.n	fc4 <xvprintf+0x1cc>
     fb0:	2310      	movs	r3, #16
     fb2:	637b      	str	r3, [r7, #52]	; 0x34
     fb4:	e006      	b.n	fc4 <xvprintf+0x1cc>
     fb6:	231f      	movs	r3, #31
     fb8:	18fb      	adds	r3, r7, r3
     fba:	781b      	ldrb	r3, [r3, #0]
     fbc:	0018      	movs	r0, r3
     fbe:	f7ff febb 	bl	d38 <xputc>
     fc2:	e09d      	b.n	1100 <xvprintf+0x308>
     fc4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fc6:	2204      	movs	r2, #4
     fc8:	4013      	ands	r3, r2
     fca:	d004      	beq.n	fd6 <xvprintf+0x1de>
     fcc:	683b      	ldr	r3, [r7, #0]
     fce:	1d1a      	adds	r2, r3, #4
     fd0:	603a      	str	r2, [r7, #0]
     fd2:	681b      	ldr	r3, [r3, #0]
     fd4:	e00d      	b.n	ff2 <xvprintf+0x1fa>
     fd6:	231e      	movs	r3, #30
     fd8:	18fb      	adds	r3, r7, r3
     fda:	781b      	ldrb	r3, [r3, #0]
     fdc:	2b44      	cmp	r3, #68	; 0x44
     fde:	d104      	bne.n	fea <xvprintf+0x1f2>
     fe0:	683b      	ldr	r3, [r7, #0]
     fe2:	1d1a      	adds	r2, r3, #4
     fe4:	603a      	str	r2, [r7, #0]
     fe6:	681b      	ldr	r3, [r3, #0]
     fe8:	e003      	b.n	ff2 <xvprintf+0x1fa>
     fea:	683b      	ldr	r3, [r7, #0]
     fec:	1d1a      	adds	r2, r3, #4
     fee:	603a      	str	r2, [r7, #0]
     ff0:	681b      	ldr	r3, [r3, #0]
     ff2:	623b      	str	r3, [r7, #32]
     ff4:	231e      	movs	r3, #30
     ff6:	18fb      	adds	r3, r7, r3
     ff8:	781b      	ldrb	r3, [r3, #0]
     ffa:	2b44      	cmp	r3, #68	; 0x44
     ffc:	d109      	bne.n	1012 <xvprintf+0x21a>
     ffe:	6a3b      	ldr	r3, [r7, #32]
    1000:	2b00      	cmp	r3, #0
    1002:	da06      	bge.n	1012 <xvprintf+0x21a>
    1004:	6a3b      	ldr	r3, [r7, #32]
    1006:	425b      	negs	r3, r3
    1008:	623b      	str	r3, [r7, #32]
    100a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    100c:	2208      	movs	r2, #8
    100e:	4313      	orrs	r3, r2
    1010:	627b      	str	r3, [r7, #36]	; 0x24
    1012:	2300      	movs	r3, #0
    1014:	633b      	str	r3, [r7, #48]	; 0x30
    1016:	6a3b      	ldr	r3, [r7, #32]
    1018:	6b79      	ldr	r1, [r7, #52]	; 0x34
    101a:	0018      	movs	r0, r3
    101c:	f000 fb34 	bl	1688 <__aeabi_uidivmod>
    1020:	000b      	movs	r3, r1
    1022:	001a      	movs	r2, r3
    1024:	231e      	movs	r3, #30
    1026:	18fb      	adds	r3, r7, r3
    1028:	701a      	strb	r2, [r3, #0]
    102a:	6b79      	ldr	r1, [r7, #52]	; 0x34
    102c:	6a38      	ldr	r0, [r7, #32]
    102e:	f000 faa5 	bl	157c <__aeabi_uidiv>
    1032:	0003      	movs	r3, r0
    1034:	623b      	str	r3, [r7, #32]
    1036:	231e      	movs	r3, #30
    1038:	18fb      	adds	r3, r7, r3
    103a:	781b      	ldrb	r3, [r3, #0]
    103c:	2b09      	cmp	r3, #9
    103e:	d90e      	bls.n	105e <xvprintf+0x266>
    1040:	231f      	movs	r3, #31
    1042:	18fb      	adds	r3, r7, r3
    1044:	781b      	ldrb	r3, [r3, #0]
    1046:	2b78      	cmp	r3, #120	; 0x78
    1048:	d101      	bne.n	104e <xvprintf+0x256>
    104a:	2327      	movs	r3, #39	; 0x27
    104c:	e000      	b.n	1050 <xvprintf+0x258>
    104e:	2307      	movs	r3, #7
    1050:	221e      	movs	r2, #30
    1052:	18ba      	adds	r2, r7, r2
    1054:	211e      	movs	r1, #30
    1056:	1879      	adds	r1, r7, r1
    1058:	7809      	ldrb	r1, [r1, #0]
    105a:	185b      	adds	r3, r3, r1
    105c:	7013      	strb	r3, [r2, #0]
    105e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1060:	1c5a      	adds	r2, r3, #1
    1062:	633a      	str	r2, [r7, #48]	; 0x30
    1064:	221e      	movs	r2, #30
    1066:	18ba      	adds	r2, r7, r2
    1068:	7812      	ldrb	r2, [r2, #0]
    106a:	3230      	adds	r2, #48	; 0x30
    106c:	b2d1      	uxtb	r1, r2
    106e:	2208      	movs	r2, #8
    1070:	18ba      	adds	r2, r7, r2
    1072:	54d1      	strb	r1, [r2, r3]
    1074:	6a3b      	ldr	r3, [r7, #32]
    1076:	2b00      	cmp	r3, #0
    1078:	d002      	beq.n	1080 <xvprintf+0x288>
    107a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    107c:	2b0f      	cmp	r3, #15
    107e:	d9ca      	bls.n	1016 <xvprintf+0x21e>
    1080:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1082:	2208      	movs	r2, #8
    1084:	4013      	ands	r3, r2
    1086:	d006      	beq.n	1096 <xvprintf+0x29e>
    1088:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    108a:	1c5a      	adds	r2, r3, #1
    108c:	633a      	str	r2, [r7, #48]	; 0x30
    108e:	2208      	movs	r2, #8
    1090:	18ba      	adds	r2, r7, r2
    1092:	212d      	movs	r1, #45	; 0x2d
    1094:	54d1      	strb	r1, [r2, r3]
    1096:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1098:	62fb      	str	r3, [r7, #44]	; 0x2c
    109a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    109c:	2201      	movs	r2, #1
    109e:	4013      	ands	r3, r2
    10a0:	d001      	beq.n	10a6 <xvprintf+0x2ae>
    10a2:	2230      	movs	r2, #48	; 0x30
    10a4:	e000      	b.n	10a8 <xvprintf+0x2b0>
    10a6:	2220      	movs	r2, #32
    10a8:	231e      	movs	r3, #30
    10aa:	18fb      	adds	r3, r7, r3
    10ac:	701a      	strb	r2, [r3, #0]
    10ae:	e005      	b.n	10bc <xvprintf+0x2c4>
    10b0:	231e      	movs	r3, #30
    10b2:	18fb      	adds	r3, r7, r3
    10b4:	781b      	ldrb	r3, [r3, #0]
    10b6:	0018      	movs	r0, r3
    10b8:	f7ff fe3e 	bl	d38 <xputc>
    10bc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    10be:	2202      	movs	r2, #2
    10c0:	4013      	ands	r3, r2
    10c2:	d105      	bne.n	10d0 <xvprintf+0x2d8>
    10c4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10c6:	1c5a      	adds	r2, r3, #1
    10c8:	62fa      	str	r2, [r7, #44]	; 0x2c
    10ca:	6aba      	ldr	r2, [r7, #40]	; 0x28
    10cc:	4293      	cmp	r3, r2
    10ce:	d3ef      	bcc.n	10b0 <xvprintf+0x2b8>
    10d0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10d2:	3b01      	subs	r3, #1
    10d4:	633b      	str	r3, [r7, #48]	; 0x30
    10d6:	2308      	movs	r3, #8
    10d8:	18fa      	adds	r2, r7, r3
    10da:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10dc:	18d3      	adds	r3, r2, r3
    10de:	781b      	ldrb	r3, [r3, #0]
    10e0:	0018      	movs	r0, r3
    10e2:	f7ff fe29 	bl	d38 <xputc>
    10e6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10e8:	2b00      	cmp	r3, #0
    10ea:	d1f1      	bne.n	10d0 <xvprintf+0x2d8>
    10ec:	e002      	b.n	10f4 <xvprintf+0x2fc>
    10ee:	2020      	movs	r0, #32
    10f0:	f7ff fe22 	bl	d38 <xputc>
    10f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10f6:	1c5a      	adds	r2, r3, #1
    10f8:	62fa      	str	r2, [r7, #44]	; 0x2c
    10fa:	6aba      	ldr	r2, [r7, #40]	; 0x28
    10fc:	4293      	cmp	r3, r2
    10fe:	d3f6      	bcc.n	10ee <xvprintf+0x2f6>
    1100:	e67f      	b.n	e02 <xvprintf+0xa>
    1102:	46c0      	nop			; (mov r8, r8)
    1104:	e000      	b.n	1108 <xvprintf+0x310>
    1106:	46c0      	nop			; (mov r8, r8)
    1108:	46c0      	nop			; (mov r8, r8)
    110a:	46bd      	mov	sp, r7
    110c:	b00e      	add	sp, #56	; 0x38
    110e:	bd80      	pop	{r7, pc}
    1110:	00001694 	.word	0x00001694

00001114 <xprintf>:
    1114:	b40f      	push	{r0, r1, r2, r3}
    1116:	b580      	push	{r7, lr}
    1118:	b082      	sub	sp, #8
    111a:	af00      	add	r7, sp, #0
    111c:	2314      	movs	r3, #20
    111e:	18fb      	adds	r3, r7, r3
    1120:	607b      	str	r3, [r7, #4]
    1122:	687a      	ldr	r2, [r7, #4]
    1124:	693b      	ldr	r3, [r7, #16]
    1126:	0011      	movs	r1, r2
    1128:	0018      	movs	r0, r3
    112a:	f7ff fe65 	bl	df8 <xvprintf>
    112e:	46c0      	nop			; (mov r8, r8)
    1130:	46bd      	mov	sp, r7
    1132:	b002      	add	sp, #8
    1134:	bc80      	pop	{r7}
    1136:	bc08      	pop	{r3}
    1138:	b004      	add	sp, #16
    113a:	4718      	bx	r3

0000113c <xsprintf>:
    113c:	b40e      	push	{r1, r2, r3}
    113e:	b580      	push	{r7, lr}
    1140:	b085      	sub	sp, #20
    1142:	af00      	add	r7, sp, #0
    1144:	6078      	str	r0, [r7, #4]
    1146:	4b0d      	ldr	r3, [pc, #52]	; (117c <xsprintf+0x40>)
    1148:	687a      	ldr	r2, [r7, #4]
    114a:	601a      	str	r2, [r3, #0]
    114c:	2320      	movs	r3, #32
    114e:	18fb      	adds	r3, r7, r3
    1150:	60fb      	str	r3, [r7, #12]
    1152:	68fa      	ldr	r2, [r7, #12]
    1154:	69fb      	ldr	r3, [r7, #28]
    1156:	0011      	movs	r1, r2
    1158:	0018      	movs	r0, r3
    115a:	f7ff fe4d 	bl	df8 <xvprintf>
    115e:	4b07      	ldr	r3, [pc, #28]	; (117c <xsprintf+0x40>)
    1160:	681b      	ldr	r3, [r3, #0]
    1162:	2200      	movs	r2, #0
    1164:	701a      	strb	r2, [r3, #0]
    1166:	4b05      	ldr	r3, [pc, #20]	; (117c <xsprintf+0x40>)
    1168:	2200      	movs	r2, #0
    116a:	601a      	str	r2, [r3, #0]
    116c:	46c0      	nop			; (mov r8, r8)
    116e:	46bd      	mov	sp, r7
    1170:	b005      	add	sp, #20
    1172:	bc80      	pop	{r7}
    1174:	bc08      	pop	{r3}
    1176:	b003      	add	sp, #12
    1178:	4718      	bx	r3
    117a:	46c0      	nop			; (mov r8, r8)
    117c:	200040fc 	.word	0x200040fc

00001180 <xfprintf>:
    1180:	b40e      	push	{r1, r2, r3}
    1182:	b580      	push	{r7, lr}
    1184:	b085      	sub	sp, #20
    1186:	af00      	add	r7, sp, #0
    1188:	6078      	str	r0, [r7, #4]
    118a:	4b0c      	ldr	r3, [pc, #48]	; (11bc <xfprintf+0x3c>)
    118c:	681b      	ldr	r3, [r3, #0]
    118e:	60fb      	str	r3, [r7, #12]
    1190:	4b0a      	ldr	r3, [pc, #40]	; (11bc <xfprintf+0x3c>)
    1192:	687a      	ldr	r2, [r7, #4]
    1194:	601a      	str	r2, [r3, #0]
    1196:	2320      	movs	r3, #32
    1198:	18fb      	adds	r3, r7, r3
    119a:	60bb      	str	r3, [r7, #8]
    119c:	68ba      	ldr	r2, [r7, #8]
    119e:	69fb      	ldr	r3, [r7, #28]
    11a0:	0011      	movs	r1, r2
    11a2:	0018      	movs	r0, r3
    11a4:	f7ff fe28 	bl	df8 <xvprintf>
    11a8:	4b04      	ldr	r3, [pc, #16]	; (11bc <xfprintf+0x3c>)
    11aa:	68fa      	ldr	r2, [r7, #12]
    11ac:	601a      	str	r2, [r3, #0]
    11ae:	46c0      	nop			; (mov r8, r8)
    11b0:	46bd      	mov	sp, r7
    11b2:	b005      	add	sp, #20
    11b4:	bc80      	pop	{r7}
    11b6:	bc08      	pop	{r3}
    11b8:	b003      	add	sp, #12
    11ba:	4718      	bx	r3
    11bc:	200040f8 	.word	0x200040f8

000011c0 <put_dump>:
    11c0:	b580      	push	{r7, lr}
    11c2:	b088      	sub	sp, #32
    11c4:	af00      	add	r7, sp, #0
    11c6:	60f8      	str	r0, [r7, #12]
    11c8:	60b9      	str	r1, [r7, #8]
    11ca:	607a      	str	r2, [r7, #4]
    11cc:	603b      	str	r3, [r7, #0]
    11ce:	68ba      	ldr	r2, [r7, #8]
    11d0:	4b38      	ldr	r3, [pc, #224]	; (12b4 <put_dump+0xf4>)
    11d2:	0011      	movs	r1, r2
    11d4:	0018      	movs	r0, r3
    11d6:	f7ff ff9d 	bl	1114 <xprintf>
    11da:	683b      	ldr	r3, [r7, #0]
    11dc:	2b02      	cmp	r3, #2
    11de:	d03c      	beq.n	125a <put_dump+0x9a>
    11e0:	2b04      	cmp	r3, #4
    11e2:	d04d      	beq.n	1280 <put_dump+0xc0>
    11e4:	2b01      	cmp	r3, #1
    11e6:	d15d      	bne.n	12a4 <put_dump+0xe4>
    11e8:	68fb      	ldr	r3, [r7, #12]
    11ea:	613b      	str	r3, [r7, #16]
    11ec:	2300      	movs	r3, #0
    11ee:	61fb      	str	r3, [r7, #28]
    11f0:	e00c      	b.n	120c <put_dump+0x4c>
    11f2:	69fb      	ldr	r3, [r7, #28]
    11f4:	693a      	ldr	r2, [r7, #16]
    11f6:	18d3      	adds	r3, r2, r3
    11f8:	781b      	ldrb	r3, [r3, #0]
    11fa:	001a      	movs	r2, r3
    11fc:	4b2e      	ldr	r3, [pc, #184]	; (12b8 <put_dump+0xf8>)
    11fe:	0011      	movs	r1, r2
    1200:	0018      	movs	r0, r3
    1202:	f7ff ff87 	bl	1114 <xprintf>
    1206:	69fb      	ldr	r3, [r7, #28]
    1208:	3301      	adds	r3, #1
    120a:	61fb      	str	r3, [r7, #28]
    120c:	69fa      	ldr	r2, [r7, #28]
    120e:	687b      	ldr	r3, [r7, #4]
    1210:	429a      	cmp	r2, r3
    1212:	dbee      	blt.n	11f2 <put_dump+0x32>
    1214:	2020      	movs	r0, #32
    1216:	f7ff fd8f 	bl	d38 <xputc>
    121a:	2300      	movs	r3, #0
    121c:	61fb      	str	r3, [r7, #28]
    121e:	e017      	b.n	1250 <put_dump+0x90>
    1220:	69fb      	ldr	r3, [r7, #28]
    1222:	693a      	ldr	r2, [r7, #16]
    1224:	18d3      	adds	r3, r2, r3
    1226:	781b      	ldrb	r3, [r3, #0]
    1228:	2b1f      	cmp	r3, #31
    122a:	d90a      	bls.n	1242 <put_dump+0x82>
    122c:	69fb      	ldr	r3, [r7, #28]
    122e:	693a      	ldr	r2, [r7, #16]
    1230:	18d3      	adds	r3, r2, r3
    1232:	781b      	ldrb	r3, [r3, #0]
    1234:	2b7e      	cmp	r3, #126	; 0x7e
    1236:	d804      	bhi.n	1242 <put_dump+0x82>
    1238:	69fb      	ldr	r3, [r7, #28]
    123a:	693a      	ldr	r2, [r7, #16]
    123c:	18d3      	adds	r3, r2, r3
    123e:	781b      	ldrb	r3, [r3, #0]
    1240:	e000      	b.n	1244 <put_dump+0x84>
    1242:	232e      	movs	r3, #46	; 0x2e
    1244:	0018      	movs	r0, r3
    1246:	f7ff fd77 	bl	d38 <xputc>
    124a:	69fb      	ldr	r3, [r7, #28]
    124c:	3301      	adds	r3, #1
    124e:	61fb      	str	r3, [r7, #28]
    1250:	69fa      	ldr	r2, [r7, #28]
    1252:	687b      	ldr	r3, [r7, #4]
    1254:	429a      	cmp	r2, r3
    1256:	dbe3      	blt.n	1220 <put_dump+0x60>
    1258:	e024      	b.n	12a4 <put_dump+0xe4>
    125a:	68fb      	ldr	r3, [r7, #12]
    125c:	61bb      	str	r3, [r7, #24]
    125e:	69bb      	ldr	r3, [r7, #24]
    1260:	1c9a      	adds	r2, r3, #2
    1262:	61ba      	str	r2, [r7, #24]
    1264:	881b      	ldrh	r3, [r3, #0]
    1266:	001a      	movs	r2, r3
    1268:	4b14      	ldr	r3, [pc, #80]	; (12bc <put_dump+0xfc>)
    126a:	0011      	movs	r1, r2
    126c:	0018      	movs	r0, r3
    126e:	f7ff ff51 	bl	1114 <xprintf>
    1272:	687b      	ldr	r3, [r7, #4]
    1274:	3b01      	subs	r3, #1
    1276:	607b      	str	r3, [r7, #4]
    1278:	687b      	ldr	r3, [r7, #4]
    127a:	2b00      	cmp	r3, #0
    127c:	d1ef      	bne.n	125e <put_dump+0x9e>
    127e:	e011      	b.n	12a4 <put_dump+0xe4>
    1280:	68fb      	ldr	r3, [r7, #12]
    1282:	617b      	str	r3, [r7, #20]
    1284:	697b      	ldr	r3, [r7, #20]
    1286:	1d1a      	adds	r2, r3, #4
    1288:	617a      	str	r2, [r7, #20]
    128a:	681a      	ldr	r2, [r3, #0]
    128c:	4b0c      	ldr	r3, [pc, #48]	; (12c0 <put_dump+0x100>)
    128e:	0011      	movs	r1, r2
    1290:	0018      	movs	r0, r3
    1292:	f7ff ff3f 	bl	1114 <xprintf>
    1296:	687b      	ldr	r3, [r7, #4]
    1298:	3b01      	subs	r3, #1
    129a:	607b      	str	r3, [r7, #4]
    129c:	687b      	ldr	r3, [r7, #4]
    129e:	2b00      	cmp	r3, #0
    12a0:	d1f0      	bne.n	1284 <put_dump+0xc4>
    12a2:	46c0      	nop			; (mov r8, r8)
    12a4:	200a      	movs	r0, #10
    12a6:	f7ff fd47 	bl	d38 <xputc>
    12aa:	46c0      	nop			; (mov r8, r8)
    12ac:	46bd      	mov	sp, r7
    12ae:	b008      	add	sp, #32
    12b0:	bd80      	pop	{r7, pc}
    12b2:	46c0      	nop			; (mov r8, r8)
    12b4:	000016f0 	.word	0x000016f0
    12b8:	000016f8 	.word	0x000016f8
    12bc:	00001700 	.word	0x00001700
    12c0:	00001708 	.word	0x00001708

000012c4 <xgets>:
    12c4:	b580      	push	{r7, lr}
    12c6:	b084      	sub	sp, #16
    12c8:	af00      	add	r7, sp, #0
    12ca:	6078      	str	r0, [r7, #4]
    12cc:	6039      	str	r1, [r7, #0]
    12ce:	4b24      	ldr	r3, [pc, #144]	; (1360 <xgets+0x9c>)
    12d0:	681b      	ldr	r3, [r3, #0]
    12d2:	2b00      	cmp	r3, #0
    12d4:	d101      	bne.n	12da <xgets+0x16>
    12d6:	2300      	movs	r3, #0
    12d8:	e03e      	b.n	1358 <xgets+0x94>
    12da:	2300      	movs	r3, #0
    12dc:	60fb      	str	r3, [r7, #12]
    12de:	4b20      	ldr	r3, [pc, #128]	; (1360 <xgets+0x9c>)
    12e0:	681b      	ldr	r3, [r3, #0]
    12e2:	4798      	blx	r3
    12e4:	0003      	movs	r3, r0
    12e6:	60bb      	str	r3, [r7, #8]
    12e8:	68bb      	ldr	r3, [r7, #8]
    12ea:	2b00      	cmp	r3, #0
    12ec:	d101      	bne.n	12f2 <xgets+0x2e>
    12ee:	2300      	movs	r3, #0
    12f0:	e032      	b.n	1358 <xgets+0x94>
    12f2:	68bb      	ldr	r3, [r7, #8]
    12f4:	2b0d      	cmp	r3, #13
    12f6:	d025      	beq.n	1344 <xgets+0x80>
    12f8:	68bb      	ldr	r3, [r7, #8]
    12fa:	2b08      	cmp	r3, #8
    12fc:	d10b      	bne.n	1316 <xgets+0x52>
    12fe:	68fb      	ldr	r3, [r7, #12]
    1300:	2b00      	cmp	r3, #0
    1302:	d008      	beq.n	1316 <xgets+0x52>
    1304:	68fb      	ldr	r3, [r7, #12]
    1306:	3b01      	subs	r3, #1
    1308:	60fb      	str	r3, [r7, #12]
    130a:	68bb      	ldr	r3, [r7, #8]
    130c:	b2db      	uxtb	r3, r3
    130e:	0018      	movs	r0, r3
    1310:	f7ff fd12 	bl	d38 <xputc>
    1314:	e015      	b.n	1342 <xgets+0x7e>
    1316:	68bb      	ldr	r3, [r7, #8]
    1318:	2b1f      	cmp	r3, #31
    131a:	dde0      	ble.n	12de <xgets+0x1a>
    131c:	683b      	ldr	r3, [r7, #0]
    131e:	1e5a      	subs	r2, r3, #1
    1320:	68fb      	ldr	r3, [r7, #12]
    1322:	429a      	cmp	r2, r3
    1324:	dddb      	ble.n	12de <xgets+0x1a>
    1326:	68fb      	ldr	r3, [r7, #12]
    1328:	1c5a      	adds	r2, r3, #1
    132a:	60fa      	str	r2, [r7, #12]
    132c:	001a      	movs	r2, r3
    132e:	687b      	ldr	r3, [r7, #4]
    1330:	189b      	adds	r3, r3, r2
    1332:	68ba      	ldr	r2, [r7, #8]
    1334:	b2d2      	uxtb	r2, r2
    1336:	701a      	strb	r2, [r3, #0]
    1338:	68bb      	ldr	r3, [r7, #8]
    133a:	b2db      	uxtb	r3, r3
    133c:	0018      	movs	r0, r3
    133e:	f7ff fcfb 	bl	d38 <xputc>
    1342:	e7cc      	b.n	12de <xgets+0x1a>
    1344:	46c0      	nop			; (mov r8, r8)
    1346:	68fb      	ldr	r3, [r7, #12]
    1348:	687a      	ldr	r2, [r7, #4]
    134a:	18d3      	adds	r3, r2, r3
    134c:	2200      	movs	r2, #0
    134e:	701a      	strb	r2, [r3, #0]
    1350:	200a      	movs	r0, #10
    1352:	f7ff fcf1 	bl	d38 <xputc>
    1356:	2301      	movs	r3, #1
    1358:	0018      	movs	r0, r3
    135a:	46bd      	mov	sp, r7
    135c:	b004      	add	sp, #16
    135e:	bd80      	pop	{r7, pc}
    1360:	20004100 	.word	0x20004100

00001364 <xfgets>:
    1364:	b580      	push	{r7, lr}
    1366:	b086      	sub	sp, #24
    1368:	af00      	add	r7, sp, #0
    136a:	60f8      	str	r0, [r7, #12]
    136c:	60b9      	str	r1, [r7, #8]
    136e:	607a      	str	r2, [r7, #4]
    1370:	4b0a      	ldr	r3, [pc, #40]	; (139c <xfgets+0x38>)
    1372:	681b      	ldr	r3, [r3, #0]
    1374:	617b      	str	r3, [r7, #20]
    1376:	4b09      	ldr	r3, [pc, #36]	; (139c <xfgets+0x38>)
    1378:	68fa      	ldr	r2, [r7, #12]
    137a:	601a      	str	r2, [r3, #0]
    137c:	687a      	ldr	r2, [r7, #4]
    137e:	68bb      	ldr	r3, [r7, #8]
    1380:	0011      	movs	r1, r2
    1382:	0018      	movs	r0, r3
    1384:	f7ff ff9e 	bl	12c4 <xgets>
    1388:	0003      	movs	r3, r0
    138a:	613b      	str	r3, [r7, #16]
    138c:	4b03      	ldr	r3, [pc, #12]	; (139c <xfgets+0x38>)
    138e:	697a      	ldr	r2, [r7, #20]
    1390:	601a      	str	r2, [r3, #0]
    1392:	693b      	ldr	r3, [r7, #16]
    1394:	0018      	movs	r0, r3
    1396:	46bd      	mov	sp, r7
    1398:	b006      	add	sp, #24
    139a:	bd80      	pop	{r7, pc}
    139c:	20004100 	.word	0x20004100

000013a0 <xatoi>:
    13a0:	b580      	push	{r7, lr}
    13a2:	b084      	sub	sp, #16
    13a4:	af00      	add	r7, sp, #0
    13a6:	6078      	str	r0, [r7, #4]
    13a8:	6039      	str	r1, [r7, #0]
    13aa:	2309      	movs	r3, #9
    13ac:	18fb      	adds	r3, r7, r3
    13ae:	2200      	movs	r2, #0
    13b0:	701a      	strb	r2, [r3, #0]
    13b2:	683b      	ldr	r3, [r7, #0]
    13b4:	2200      	movs	r2, #0
    13b6:	601a      	str	r2, [r3, #0]
    13b8:	e004      	b.n	13c4 <xatoi+0x24>
    13ba:	687b      	ldr	r3, [r7, #4]
    13bc:	681b      	ldr	r3, [r3, #0]
    13be:	1c5a      	adds	r2, r3, #1
    13c0:	687b      	ldr	r3, [r7, #4]
    13c2:	601a      	str	r2, [r3, #0]
    13c4:	687b      	ldr	r3, [r7, #4]
    13c6:	681a      	ldr	r2, [r3, #0]
    13c8:	230b      	movs	r3, #11
    13ca:	18fb      	adds	r3, r7, r3
    13cc:	7812      	ldrb	r2, [r2, #0]
    13ce:	701a      	strb	r2, [r3, #0]
    13d0:	230b      	movs	r3, #11
    13d2:	18fb      	adds	r3, r7, r3
    13d4:	781b      	ldrb	r3, [r3, #0]
    13d6:	2b20      	cmp	r3, #32
    13d8:	d0ef      	beq.n	13ba <xatoi+0x1a>
    13da:	230b      	movs	r3, #11
    13dc:	18fb      	adds	r3, r7, r3
    13de:	781b      	ldrb	r3, [r3, #0]
    13e0:	2b2d      	cmp	r3, #45	; 0x2d
    13e2:	d10e      	bne.n	1402 <xatoi+0x62>
    13e4:	2309      	movs	r3, #9
    13e6:	18fb      	adds	r3, r7, r3
    13e8:	2201      	movs	r2, #1
    13ea:	701a      	strb	r2, [r3, #0]
    13ec:	687b      	ldr	r3, [r7, #4]
    13ee:	681b      	ldr	r3, [r3, #0]
    13f0:	1c5a      	adds	r2, r3, #1
    13f2:	687b      	ldr	r3, [r7, #4]
    13f4:	601a      	str	r2, [r3, #0]
    13f6:	687b      	ldr	r3, [r7, #4]
    13f8:	681a      	ldr	r2, [r3, #0]
    13fa:	230b      	movs	r3, #11
    13fc:	18fb      	adds	r3, r7, r3
    13fe:	7812      	ldrb	r2, [r2, #0]
    1400:	701a      	strb	r2, [r3, #0]
    1402:	230b      	movs	r3, #11
    1404:	18fb      	adds	r3, r7, r3
    1406:	781b      	ldrb	r3, [r3, #0]
    1408:	2b30      	cmp	r3, #48	; 0x30
    140a:	d149      	bne.n	14a0 <xatoi+0x100>
    140c:	687b      	ldr	r3, [r7, #4]
    140e:	681b      	ldr	r3, [r3, #0]
    1410:	1c5a      	adds	r2, r3, #1
    1412:	687b      	ldr	r3, [r7, #4]
    1414:	601a      	str	r2, [r3, #0]
    1416:	687b      	ldr	r3, [r7, #4]
    1418:	681a      	ldr	r2, [r3, #0]
    141a:	230b      	movs	r3, #11
    141c:	18fb      	adds	r3, r7, r3
    141e:	7812      	ldrb	r2, [r2, #0]
    1420:	701a      	strb	r2, [r3, #0]
    1422:	230b      	movs	r3, #11
    1424:	18fb      	adds	r3, r7, r3
    1426:	781b      	ldrb	r3, [r3, #0]
    1428:	2b62      	cmp	r3, #98	; 0x62
    142a:	d011      	beq.n	1450 <xatoi+0xb0>
    142c:	2b78      	cmp	r3, #120	; 0x78
    142e:	d11f      	bne.n	1470 <xatoi+0xd0>
    1430:	230a      	movs	r3, #10
    1432:	18fb      	adds	r3, r7, r3
    1434:	2210      	movs	r2, #16
    1436:	701a      	strb	r2, [r3, #0]
    1438:	687b      	ldr	r3, [r7, #4]
    143a:	681b      	ldr	r3, [r3, #0]
    143c:	1c5a      	adds	r2, r3, #1
    143e:	687b      	ldr	r3, [r7, #4]
    1440:	601a      	str	r2, [r3, #0]
    1442:	687b      	ldr	r3, [r7, #4]
    1444:	681a      	ldr	r2, [r3, #0]
    1446:	230b      	movs	r3, #11
    1448:	18fb      	adds	r3, r7, r3
    144a:	7812      	ldrb	r2, [r2, #0]
    144c:	701a      	strb	r2, [r3, #0]
    144e:	e037      	b.n	14c0 <xatoi+0x120>
    1450:	230a      	movs	r3, #10
    1452:	18fb      	adds	r3, r7, r3
    1454:	2202      	movs	r2, #2
    1456:	701a      	strb	r2, [r3, #0]
    1458:	687b      	ldr	r3, [r7, #4]
    145a:	681b      	ldr	r3, [r3, #0]
    145c:	1c5a      	adds	r2, r3, #1
    145e:	687b      	ldr	r3, [r7, #4]
    1460:	601a      	str	r2, [r3, #0]
    1462:	687b      	ldr	r3, [r7, #4]
    1464:	681a      	ldr	r2, [r3, #0]
    1466:	230b      	movs	r3, #11
    1468:	18fb      	adds	r3, r7, r3
    146a:	7812      	ldrb	r2, [r2, #0]
    146c:	701a      	strb	r2, [r3, #0]
    146e:	e027      	b.n	14c0 <xatoi+0x120>
    1470:	230b      	movs	r3, #11
    1472:	18fb      	adds	r3, r7, r3
    1474:	781b      	ldrb	r3, [r3, #0]
    1476:	2b20      	cmp	r3, #32
    1478:	d801      	bhi.n	147e <xatoi+0xde>
    147a:	2301      	movs	r3, #1
    147c:	e079      	b.n	1572 <xatoi+0x1d2>
    147e:	230b      	movs	r3, #11
    1480:	18fb      	adds	r3, r7, r3
    1482:	781b      	ldrb	r3, [r3, #0]
    1484:	2b2f      	cmp	r3, #47	; 0x2f
    1486:	d904      	bls.n	1492 <xatoi+0xf2>
    1488:	230b      	movs	r3, #11
    148a:	18fb      	adds	r3, r7, r3
    148c:	781b      	ldrb	r3, [r3, #0]
    148e:	2b39      	cmp	r3, #57	; 0x39
    1490:	d901      	bls.n	1496 <xatoi+0xf6>
    1492:	2300      	movs	r3, #0
    1494:	e06d      	b.n	1572 <xatoi+0x1d2>
    1496:	230a      	movs	r3, #10
    1498:	18fb      	adds	r3, r7, r3
    149a:	2208      	movs	r2, #8
    149c:	701a      	strb	r2, [r3, #0]
    149e:	e00f      	b.n	14c0 <xatoi+0x120>
    14a0:	230b      	movs	r3, #11
    14a2:	18fb      	adds	r3, r7, r3
    14a4:	781b      	ldrb	r3, [r3, #0]
    14a6:	2b2f      	cmp	r3, #47	; 0x2f
    14a8:	d904      	bls.n	14b4 <xatoi+0x114>
    14aa:	230b      	movs	r3, #11
    14ac:	18fb      	adds	r3, r7, r3
    14ae:	781b      	ldrb	r3, [r3, #0]
    14b0:	2b39      	cmp	r3, #57	; 0x39
    14b2:	d901      	bls.n	14b8 <xatoi+0x118>
    14b4:	2300      	movs	r3, #0
    14b6:	e05c      	b.n	1572 <xatoi+0x1d2>
    14b8:	230a      	movs	r3, #10
    14ba:	18fb      	adds	r3, r7, r3
    14bc:	220a      	movs	r2, #10
    14be:	701a      	strb	r2, [r3, #0]
    14c0:	2300      	movs	r3, #0
    14c2:	60fb      	str	r3, [r7, #12]
    14c4:	e044      	b.n	1550 <xatoi+0x1b0>
    14c6:	230b      	movs	r3, #11
    14c8:	18fb      	adds	r3, r7, r3
    14ca:	781b      	ldrb	r3, [r3, #0]
    14cc:	2b60      	cmp	r3, #96	; 0x60
    14ce:	d906      	bls.n	14de <xatoi+0x13e>
    14d0:	230b      	movs	r3, #11
    14d2:	18fb      	adds	r3, r7, r3
    14d4:	220b      	movs	r2, #11
    14d6:	18ba      	adds	r2, r7, r2
    14d8:	7812      	ldrb	r2, [r2, #0]
    14da:	3a20      	subs	r2, #32
    14dc:	701a      	strb	r2, [r3, #0]
    14de:	230b      	movs	r3, #11
    14e0:	18fb      	adds	r3, r7, r3
    14e2:	220b      	movs	r2, #11
    14e4:	18ba      	adds	r2, r7, r2
    14e6:	7812      	ldrb	r2, [r2, #0]
    14e8:	3a30      	subs	r2, #48	; 0x30
    14ea:	701a      	strb	r2, [r3, #0]
    14ec:	230b      	movs	r3, #11
    14ee:	18fb      	adds	r3, r7, r3
    14f0:	781b      	ldrb	r3, [r3, #0]
    14f2:	2b10      	cmp	r3, #16
    14f4:	d90d      	bls.n	1512 <xatoi+0x172>
    14f6:	230b      	movs	r3, #11
    14f8:	18fb      	adds	r3, r7, r3
    14fa:	220b      	movs	r2, #11
    14fc:	18ba      	adds	r2, r7, r2
    14fe:	7812      	ldrb	r2, [r2, #0]
    1500:	3a07      	subs	r2, #7
    1502:	701a      	strb	r2, [r3, #0]
    1504:	230b      	movs	r3, #11
    1506:	18fb      	adds	r3, r7, r3
    1508:	781b      	ldrb	r3, [r3, #0]
    150a:	2b09      	cmp	r3, #9
    150c:	d801      	bhi.n	1512 <xatoi+0x172>
    150e:	2300      	movs	r3, #0
    1510:	e02f      	b.n	1572 <xatoi+0x1d2>
    1512:	230b      	movs	r3, #11
    1514:	18fa      	adds	r2, r7, r3
    1516:	230a      	movs	r3, #10
    1518:	18fb      	adds	r3, r7, r3
    151a:	7812      	ldrb	r2, [r2, #0]
    151c:	781b      	ldrb	r3, [r3, #0]
    151e:	429a      	cmp	r2, r3
    1520:	d301      	bcc.n	1526 <xatoi+0x186>
    1522:	2300      	movs	r3, #0
    1524:	e025      	b.n	1572 <xatoi+0x1d2>
    1526:	230a      	movs	r3, #10
    1528:	18fb      	adds	r3, r7, r3
    152a:	781b      	ldrb	r3, [r3, #0]
    152c:	68fa      	ldr	r2, [r7, #12]
    152e:	435a      	muls	r2, r3
    1530:	230b      	movs	r3, #11
    1532:	18fb      	adds	r3, r7, r3
    1534:	781b      	ldrb	r3, [r3, #0]
    1536:	18d3      	adds	r3, r2, r3
    1538:	60fb      	str	r3, [r7, #12]
    153a:	687b      	ldr	r3, [r7, #4]
    153c:	681b      	ldr	r3, [r3, #0]
    153e:	1c5a      	adds	r2, r3, #1
    1540:	687b      	ldr	r3, [r7, #4]
    1542:	601a      	str	r2, [r3, #0]
    1544:	687b      	ldr	r3, [r7, #4]
    1546:	681a      	ldr	r2, [r3, #0]
    1548:	230b      	movs	r3, #11
    154a:	18fb      	adds	r3, r7, r3
    154c:	7812      	ldrb	r2, [r2, #0]
    154e:	701a      	strb	r2, [r3, #0]
    1550:	230b      	movs	r3, #11
    1552:	18fb      	adds	r3, r7, r3
    1554:	781b      	ldrb	r3, [r3, #0]
    1556:	2b20      	cmp	r3, #32
    1558:	d8b5      	bhi.n	14c6 <xatoi+0x126>
    155a:	2309      	movs	r3, #9
    155c:	18fb      	adds	r3, r7, r3
    155e:	781b      	ldrb	r3, [r3, #0]
    1560:	2b00      	cmp	r3, #0
    1562:	d002      	beq.n	156a <xatoi+0x1ca>
    1564:	68fb      	ldr	r3, [r7, #12]
    1566:	425b      	negs	r3, r3
    1568:	60fb      	str	r3, [r7, #12]
    156a:	68fa      	ldr	r2, [r7, #12]
    156c:	683b      	ldr	r3, [r7, #0]
    156e:	601a      	str	r2, [r3, #0]
    1570:	2301      	movs	r3, #1
    1572:	0018      	movs	r0, r3
    1574:	46bd      	mov	sp, r7
    1576:	b004      	add	sp, #16
    1578:	bd80      	pop	{r7, pc}
    157a:	46c0      	nop			; (mov r8, r8)

0000157c <__aeabi_uidiv>:
    157c:	2200      	movs	r2, #0
    157e:	0843      	lsrs	r3, r0, #1
    1580:	428b      	cmp	r3, r1
    1582:	d374      	bcc.n	166e <__aeabi_uidiv+0xf2>
    1584:	0903      	lsrs	r3, r0, #4
    1586:	428b      	cmp	r3, r1
    1588:	d35f      	bcc.n	164a <__aeabi_uidiv+0xce>
    158a:	0a03      	lsrs	r3, r0, #8
    158c:	428b      	cmp	r3, r1
    158e:	d344      	bcc.n	161a <__aeabi_uidiv+0x9e>
    1590:	0b03      	lsrs	r3, r0, #12
    1592:	428b      	cmp	r3, r1
    1594:	d328      	bcc.n	15e8 <__aeabi_uidiv+0x6c>
    1596:	0c03      	lsrs	r3, r0, #16
    1598:	428b      	cmp	r3, r1
    159a:	d30d      	bcc.n	15b8 <__aeabi_uidiv+0x3c>
    159c:	22ff      	movs	r2, #255	; 0xff
    159e:	0209      	lsls	r1, r1, #8
    15a0:	ba12      	rev	r2, r2
    15a2:	0c03      	lsrs	r3, r0, #16
    15a4:	428b      	cmp	r3, r1
    15a6:	d302      	bcc.n	15ae <__aeabi_uidiv+0x32>
    15a8:	1212      	asrs	r2, r2, #8
    15aa:	0209      	lsls	r1, r1, #8
    15ac:	d065      	beq.n	167a <__aeabi_uidiv+0xfe>
    15ae:	0b03      	lsrs	r3, r0, #12
    15b0:	428b      	cmp	r3, r1
    15b2:	d319      	bcc.n	15e8 <__aeabi_uidiv+0x6c>
    15b4:	e000      	b.n	15b8 <__aeabi_uidiv+0x3c>
    15b6:	0a09      	lsrs	r1, r1, #8
    15b8:	0bc3      	lsrs	r3, r0, #15
    15ba:	428b      	cmp	r3, r1
    15bc:	d301      	bcc.n	15c2 <__aeabi_uidiv+0x46>
    15be:	03cb      	lsls	r3, r1, #15
    15c0:	1ac0      	subs	r0, r0, r3
    15c2:	4152      	adcs	r2, r2
    15c4:	0b83      	lsrs	r3, r0, #14
    15c6:	428b      	cmp	r3, r1
    15c8:	d301      	bcc.n	15ce <__aeabi_uidiv+0x52>
    15ca:	038b      	lsls	r3, r1, #14
    15cc:	1ac0      	subs	r0, r0, r3
    15ce:	4152      	adcs	r2, r2
    15d0:	0b43      	lsrs	r3, r0, #13
    15d2:	428b      	cmp	r3, r1
    15d4:	d301      	bcc.n	15da <__aeabi_uidiv+0x5e>
    15d6:	034b      	lsls	r3, r1, #13
    15d8:	1ac0      	subs	r0, r0, r3
    15da:	4152      	adcs	r2, r2
    15dc:	0b03      	lsrs	r3, r0, #12
    15de:	428b      	cmp	r3, r1
    15e0:	d301      	bcc.n	15e6 <__aeabi_uidiv+0x6a>
    15e2:	030b      	lsls	r3, r1, #12
    15e4:	1ac0      	subs	r0, r0, r3
    15e6:	4152      	adcs	r2, r2
    15e8:	0ac3      	lsrs	r3, r0, #11
    15ea:	428b      	cmp	r3, r1
    15ec:	d301      	bcc.n	15f2 <__aeabi_uidiv+0x76>
    15ee:	02cb      	lsls	r3, r1, #11
    15f0:	1ac0      	subs	r0, r0, r3
    15f2:	4152      	adcs	r2, r2
    15f4:	0a83      	lsrs	r3, r0, #10
    15f6:	428b      	cmp	r3, r1
    15f8:	d301      	bcc.n	15fe <__aeabi_uidiv+0x82>
    15fa:	028b      	lsls	r3, r1, #10
    15fc:	1ac0      	subs	r0, r0, r3
    15fe:	4152      	adcs	r2, r2
    1600:	0a43      	lsrs	r3, r0, #9
    1602:	428b      	cmp	r3, r1
    1604:	d301      	bcc.n	160a <__aeabi_uidiv+0x8e>
    1606:	024b      	lsls	r3, r1, #9
    1608:	1ac0      	subs	r0, r0, r3
    160a:	4152      	adcs	r2, r2
    160c:	0a03      	lsrs	r3, r0, #8
    160e:	428b      	cmp	r3, r1
    1610:	d301      	bcc.n	1616 <__aeabi_uidiv+0x9a>
    1612:	020b      	lsls	r3, r1, #8
    1614:	1ac0      	subs	r0, r0, r3
    1616:	4152      	adcs	r2, r2
    1618:	d2cd      	bcs.n	15b6 <__aeabi_uidiv+0x3a>
    161a:	09c3      	lsrs	r3, r0, #7
    161c:	428b      	cmp	r3, r1
    161e:	d301      	bcc.n	1624 <__aeabi_uidiv+0xa8>
    1620:	01cb      	lsls	r3, r1, #7
    1622:	1ac0      	subs	r0, r0, r3
    1624:	4152      	adcs	r2, r2
    1626:	0983      	lsrs	r3, r0, #6
    1628:	428b      	cmp	r3, r1
    162a:	d301      	bcc.n	1630 <__aeabi_uidiv+0xb4>
    162c:	018b      	lsls	r3, r1, #6
    162e:	1ac0      	subs	r0, r0, r3
    1630:	4152      	adcs	r2, r2
    1632:	0943      	lsrs	r3, r0, #5
    1634:	428b      	cmp	r3, r1
    1636:	d301      	bcc.n	163c <__aeabi_uidiv+0xc0>
    1638:	014b      	lsls	r3, r1, #5
    163a:	1ac0      	subs	r0, r0, r3
    163c:	4152      	adcs	r2, r2
    163e:	0903      	lsrs	r3, r0, #4
    1640:	428b      	cmp	r3, r1
    1642:	d301      	bcc.n	1648 <__aeabi_uidiv+0xcc>
    1644:	010b      	lsls	r3, r1, #4
    1646:	1ac0      	subs	r0, r0, r3
    1648:	4152      	adcs	r2, r2
    164a:	08c3      	lsrs	r3, r0, #3
    164c:	428b      	cmp	r3, r1
    164e:	d301      	bcc.n	1654 <__aeabi_uidiv+0xd8>
    1650:	00cb      	lsls	r3, r1, #3
    1652:	1ac0      	subs	r0, r0, r3
    1654:	4152      	adcs	r2, r2
    1656:	0883      	lsrs	r3, r0, #2
    1658:	428b      	cmp	r3, r1
    165a:	d301      	bcc.n	1660 <__aeabi_uidiv+0xe4>
    165c:	008b      	lsls	r3, r1, #2
    165e:	1ac0      	subs	r0, r0, r3
    1660:	4152      	adcs	r2, r2
    1662:	0843      	lsrs	r3, r0, #1
    1664:	428b      	cmp	r3, r1
    1666:	d301      	bcc.n	166c <__aeabi_uidiv+0xf0>
    1668:	004b      	lsls	r3, r1, #1
    166a:	1ac0      	subs	r0, r0, r3
    166c:	4152      	adcs	r2, r2
    166e:	1a41      	subs	r1, r0, r1
    1670:	d200      	bcs.n	1674 <__aeabi_uidiv+0xf8>
    1672:	4601      	mov	r1, r0
    1674:	4152      	adcs	r2, r2
    1676:	4610      	mov	r0, r2
    1678:	4770      	bx	lr
    167a:	e7ff      	b.n	167c <__aeabi_uidiv+0x100>
    167c:	b501      	push	{r0, lr}
    167e:	2000      	movs	r0, #0
    1680:	f000 f806 	bl	1690 <__aeabi_idiv0>
    1684:	bd02      	pop	{r1, pc}
    1686:	46c0      	nop			; (mov r8, r8)

00001688 <__aeabi_uidivmod>:
    1688:	2900      	cmp	r1, #0
    168a:	d0f7      	beq.n	167c <__aeabi_uidiv+0x100>
    168c:	e776      	b.n	157c <__aeabi_uidiv>
    168e:	4770      	bx	lr

00001690 <__aeabi_idiv0>:
    1690:	4770      	bx	lr
    1692:	46c0      	nop			; (mov r8, r8)
    1694:	00000f9e 	.word	0x00000f9e
    1698:	00000f8c 	.word	0x00000f8c
    169c:	00000faa 	.word	0x00000faa
    16a0:	00000fb6 	.word	0x00000fb6
    16a4:	00000fb6 	.word	0x00000fb6
    16a8:	00000fb6 	.word	0x00000fb6
    16ac:	00000fb6 	.word	0x00000fb6
    16b0:	00000fb6 	.word	0x00000fb6
    16b4:	00000fb6 	.word	0x00000fb6
    16b8:	00000fb6 	.word	0x00000fb6
    16bc:	00000fb6 	.word	0x00000fb6
    16c0:	00000fb6 	.word	0x00000fb6
    16c4:	00000fb6 	.word	0x00000fb6
    16c8:	00000fa4 	.word	0x00000fa4
    16cc:	00000fb6 	.word	0x00000fb6
    16d0:	00000fb6 	.word	0x00000fb6
    16d4:	00000fb6 	.word	0x00000fb6
    16d8:	00000f30 	.word	0x00000f30
    16dc:	00000fb6 	.word	0x00000fb6
    16e0:	00000faa 	.word	0x00000faa
    16e4:	00000fb6 	.word	0x00000fb6
    16e8:	00000fb6 	.word	0x00000fb6
    16ec:	00000fb0 	.word	0x00000fb0
    16f0:	6c383025 	.word	0x6c383025
    16f4:	00002058 	.word	0x00002058
    16f8:	32302520 	.word	0x32302520
    16fc:	00000058 	.word	0x00000058
    1700:	34302520 	.word	0x34302520
    1704:	00000058 	.word	0x00000058
    1708:	38302520 	.word	0x38302520
    170c:	0000584c 	.word	0x0000584c
