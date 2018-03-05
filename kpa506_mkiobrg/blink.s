
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 bd 09 00 00 1d 0a 00 00 1d 0a 00 00     ... ............
	...
      2c:	1d 0a 00 00 00 00 00 00 00 00 00 00 1d 0a 00 00     ................
      3c:	75 08 00 00 1d 0a 00 00 4d 09 00 00 1d 0a 00 00     u.......M.......
      4c:	1d 0a 00 00 1d 0a 00 00 1d 0a 00 00 1d 0a 00 00     ................
      5c:	61 0c 00 00 1d 0a 00 00 1d 0a 00 00 1d 0a 00 00     a...............
      6c:	1d 0a 00 00 1d 0a 00 00 8d 08 00 00 1d 0a 00 00     ................
      7c:	1d 0a 00 00 1d 0a 00 00 1d 0a 00 00 1d 0a 00 00     ................
      8c:	1d 0a 00 00 1d 0a 00 00 1d 0a 00 00 1d 0a 00 00     ................
      9c:	1d 0a 00 00 1d 0a 00 00 00 00 00 00 00 00 00 00     ................
      ac:	1d 0a 00 00 1d 0a 00 00 1d 0a 00 00 1d 0a 00 00     ................
      bc:	1d 0a 00 00                                         ....

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
     298:	4a2d      	ldr	r2, [pc, #180]	; (350 <test_cw+0xcc>)
     29a:	801a      	strh	r2, [r3, #0]
     29c:	2312      	movs	r3, #18
     29e:	18fb      	adds	r3, r7, r3
     2a0:	4a2b      	ldr	r2, [pc, #172]	; (350 <test_cw+0xcc>)
     2a2:	801a      	strh	r2, [r3, #0]
     2a4:	2310      	movs	r3, #16
     2a6:	18fb      	adds	r3, r7, r3
     2a8:	4a29      	ldr	r2, [pc, #164]	; (350 <test_cw+0xcc>)
     2aa:	801a      	strh	r2, [r3, #0]
     2ac:	2316      	movs	r3, #22
     2ae:	18fa      	adds	r2, r7, r3
     2b0:	2314      	movs	r3, #20
     2b2:	18fb      	adds	r3, r7, r3
     2b4:	8812      	ldrh	r2, [r2, #0]
     2b6:	881b      	ldrh	r3, [r3, #0]
     2b8:	18d3      	adds	r3, r2, r3
     2ba:	b29a      	uxth	r2, r3
     2bc:	2312      	movs	r3, #18
     2be:	18fb      	adds	r3, r7, r3
     2c0:	881b      	ldrh	r3, [r3, #0]
     2c2:	18d3      	adds	r3, r2, r3
     2c4:	b29a      	uxth	r2, r3
     2c6:	2310      	movs	r3, #16
     2c8:	18fb      	adds	r3, r7, r3
     2ca:	881b      	ldrh	r3, [r3, #0]
     2cc:	18d3      	adds	r3, r2, r3
     2ce:	b29a      	uxth	r2, r3
     2d0:	230e      	movs	r3, #14
     2d2:	18fb      	adds	r3, r7, r3
     2d4:	3201      	adds	r2, #1
     2d6:	801a      	strh	r2, [r3, #0]
     2d8:	2316      	movs	r3, #22
     2da:	18fb      	adds	r3, r7, r3
     2dc:	881b      	ldrh	r3, [r3, #0]
     2de:	0018      	movs	r0, r3
     2e0:	f7ff ffc2 	bl	268 <swpb>
     2e4:	0003      	movs	r3, r0
     2e6:	001a      	movs	r2, r3
     2e8:	687b      	ldr	r3, [r7, #4]
     2ea:	801a      	strh	r2, [r3, #0]
     2ec:	687b      	ldr	r3, [r7, #4]
     2ee:	1c9c      	adds	r4, r3, #2
     2f0:	2314      	movs	r3, #20
     2f2:	18fb      	adds	r3, r7, r3
     2f4:	881b      	ldrh	r3, [r3, #0]
     2f6:	0018      	movs	r0, r3
     2f8:	f7ff ffb6 	bl	268 <swpb>
     2fc:	0003      	movs	r3, r0
     2fe:	8023      	strh	r3, [r4, #0]
     300:	687b      	ldr	r3, [r7, #4]
     302:	1d1c      	adds	r4, r3, #4
     304:	2312      	movs	r3, #18
     306:	18fb      	adds	r3, r7, r3
     308:	881b      	ldrh	r3, [r3, #0]
     30a:	0018      	movs	r0, r3
     30c:	f7ff ffac 	bl	268 <swpb>
     310:	0003      	movs	r3, r0
     312:	8023      	strh	r3, [r4, #0]
     314:	687b      	ldr	r3, [r7, #4]
     316:	1d9c      	adds	r4, r3, #6
     318:	2310      	movs	r3, #16
     31a:	18fb      	adds	r3, r7, r3
     31c:	881b      	ldrh	r3, [r3, #0]
     31e:	0018      	movs	r0, r3
     320:	f7ff ffa2 	bl	268 <swpb>
     324:	0003      	movs	r3, r0
     326:	8023      	strh	r3, [r4, #0]
     328:	687b      	ldr	r3, [r7, #4]
     32a:	3308      	adds	r3, #8
     32c:	001c      	movs	r4, r3
     32e:	230e      	movs	r3, #14
     330:	18fb      	adds	r3, r7, r3
     332:	881b      	ldrh	r3, [r3, #0]
     334:	0018      	movs	r0, r3
     336:	f7ff ff97 	bl	268 <swpb>
     33a:	0003      	movs	r3, r0
     33c:	8023      	strh	r3, [r4, #0]
     33e:	687b      	ldr	r3, [r7, #4]
     340:	330a      	adds	r3, #10
     342:	4a04      	ldr	r2, [pc, #16]	; (354 <test_cw+0xd0>)
     344:	801a      	strh	r2, [r3, #0]
     346:	46c0      	nop			; (mov r8, r8)
     348:	46bd      	mov	sp, r7
     34a:	b007      	add	sp, #28
     34c:	bd90      	pop	{r4, r7, pc}
     34e:	46c0      	nop			; (mov r8, r8)
     350:	00001234 	.word	0x00001234
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
     376:	f000 fa6d 	bl	854 <SystemInit>
     37a:	4b61      	ldr	r3, [pc, #388]	; (500 <_stack_size+0x100>)
     37c:	4a61      	ldr	r2, [pc, #388]	; (504 <_stack_size+0x104>)
     37e:	601a      	str	r2, [r3, #0]
     380:	1d3b      	adds	r3, r7, #4
     382:	0018      	movs	r0, r3
     384:	f7ff ff7e 	bl	284 <test_cw>
     388:	4b5f      	ldr	r3, [pc, #380]	; (508 <_stack_size+0x108>)
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	2b00      	cmp	r3, #0
     38e:	d000      	beq.n	392 <main+0x3a>
     390:	e083      	b.n	49a <_stack_size+0x9a>
     392:	2313      	movs	r3, #19
     394:	18fb      	adds	r3, r7, r3
     396:	2101      	movs	r1, #1
     398:	0018      	movs	r0, r3
     39a:	f000 fbc5 	bl	b28 <uart_read>
     39e:	1e03      	subs	r3, r0, #0
     3a0:	d100      	bne.n	3a4 <main+0x4c>
     3a2:	e07a      	b.n	49a <_stack_size+0x9a>
     3a4:	2313      	movs	r3, #19
     3a6:	18fb      	adds	r3, r7, r3
     3a8:	781b      	ldrb	r3, [r3, #0]
     3aa:	2b55      	cmp	r3, #85	; 0x55
     3ac:	d15b      	bne.n	466 <_stack_size+0x66>
     3ae:	23a7      	movs	r3, #167	; 0xa7
     3b0:	18fb      	adds	r3, r7, r3
     3b2:	781b      	ldrb	r3, [r3, #0]
     3b4:	2baa      	cmp	r3, #170	; 0xaa
     3b6:	d156      	bne.n	466 <_stack_size+0x66>
     3b8:	23a8      	movs	r3, #168	; 0xa8
     3ba:	18fb      	adds	r3, r7, r3
     3bc:	681b      	ldr	r3, [r3, #0]
     3be:	3b0b      	subs	r3, #11
     3c0:	227f      	movs	r2, #127	; 0x7f
     3c2:	4013      	ands	r3, r2
     3c4:	22a0      	movs	r2, #160	; 0xa0
     3c6:	18ba      	adds	r2, r7, r2
     3c8:	6013      	str	r3, [r2, #0]
     3ca:	4b50      	ldr	r3, [pc, #320]	; (50c <_stack_size+0x10c>)
     3cc:	229c      	movs	r2, #156	; 0x9c
     3ce:	18ba      	adds	r2, r7, r2
     3d0:	6013      	str	r3, [r2, #0]
     3d2:	2300      	movs	r3, #0
     3d4:	22ac      	movs	r2, #172	; 0xac
     3d6:	18ba      	adds	r2, r7, r2
     3d8:	6013      	str	r3, [r2, #0]
     3da:	e03c      	b.n	456 <_stack_size+0x56>
     3dc:	2397      	movs	r3, #151	; 0x97
     3de:	18fb      	adds	r3, r7, r3
     3e0:	2214      	movs	r2, #20
     3e2:	18b9      	adds	r1, r7, r2
     3e4:	22a0      	movs	r2, #160	; 0xa0
     3e6:	18ba      	adds	r2, r7, r2
     3e8:	6812      	ldr	r2, [r2, #0]
     3ea:	188a      	adds	r2, r1, r2
     3ec:	7812      	ldrb	r2, [r2, #0]
     3ee:	701a      	strb	r2, [r3, #0]
     3f0:	23a0      	movs	r3, #160	; 0xa0
     3f2:	18fb      	adds	r3, r7, r3
     3f4:	681b      	ldr	r3, [r3, #0]
     3f6:	3301      	adds	r3, #1
     3f8:	227f      	movs	r2, #127	; 0x7f
     3fa:	4013      	ands	r3, r2
     3fc:	22a0      	movs	r2, #160	; 0xa0
     3fe:	18ba      	adds	r2, r7, r2
     400:	6013      	str	r3, [r2, #0]
     402:	2396      	movs	r3, #150	; 0x96
     404:	18fb      	adds	r3, r7, r3
     406:	2214      	movs	r2, #20
     408:	18b9      	adds	r1, r7, r2
     40a:	22a0      	movs	r2, #160	; 0xa0
     40c:	18ba      	adds	r2, r7, r2
     40e:	6812      	ldr	r2, [r2, #0]
     410:	188a      	adds	r2, r1, r2
     412:	7812      	ldrb	r2, [r2, #0]
     414:	701a      	strb	r2, [r3, #0]
     416:	23a0      	movs	r3, #160	; 0xa0
     418:	18fb      	adds	r3, r7, r3
     41a:	681b      	ldr	r3, [r3, #0]
     41c:	3301      	adds	r3, #1
     41e:	227f      	movs	r2, #127	; 0x7f
     420:	4013      	ands	r3, r2
     422:	22a0      	movs	r2, #160	; 0xa0
     424:	18ba      	adds	r2, r7, r2
     426:	6013      	str	r3, [r2, #0]
     428:	239c      	movs	r3, #156	; 0x9c
     42a:	18fb      	adds	r3, r7, r3
     42c:	681b      	ldr	r3, [r3, #0]
     42e:	1d1a      	adds	r2, r3, #4
     430:	219c      	movs	r1, #156	; 0x9c
     432:	1879      	adds	r1, r7, r1
     434:	600a      	str	r2, [r1, #0]
     436:	2296      	movs	r2, #150	; 0x96
     438:	18ba      	adds	r2, r7, r2
     43a:	7811      	ldrb	r1, [r2, #0]
     43c:	2297      	movs	r2, #151	; 0x97
     43e:	18ba      	adds	r2, r7, r2
     440:	7812      	ldrb	r2, [r2, #0]
     442:	0212      	lsls	r2, r2, #8
     444:	188a      	adds	r2, r1, r2
     446:	601a      	str	r2, [r3, #0]
     448:	23ac      	movs	r3, #172	; 0xac
     44a:	18fb      	adds	r3, r7, r3
     44c:	681b      	ldr	r3, [r3, #0]
     44e:	3301      	adds	r3, #1
     450:	22ac      	movs	r2, #172	; 0xac
     452:	18ba      	adds	r2, r7, r2
     454:	6013      	str	r3, [r2, #0]
     456:	23ac      	movs	r3, #172	; 0xac
     458:	18fb      	adds	r3, r7, r3
     45a:	681b      	ldr	r3, [r3, #0]
     45c:	2b04      	cmp	r3, #4
     45e:	ddbd      	ble.n	3dc <main+0x84>
     460:	4b29      	ldr	r3, [pc, #164]	; (508 <_stack_size+0x108>)
     462:	2202      	movs	r2, #2
     464:	601a      	str	r2, [r3, #0]
     466:	23a7      	movs	r3, #167	; 0xa7
     468:	18fb      	adds	r3, r7, r3
     46a:	2213      	movs	r2, #19
     46c:	18ba      	adds	r2, r7, r2
     46e:	7812      	ldrb	r2, [r2, #0]
     470:	701a      	strb	r2, [r3, #0]
     472:	2313      	movs	r3, #19
     474:	18fb      	adds	r3, r7, r3
     476:	7819      	ldrb	r1, [r3, #0]
     478:	2314      	movs	r3, #20
     47a:	18fa      	adds	r2, r7, r3
     47c:	23a8      	movs	r3, #168	; 0xa8
     47e:	18fb      	adds	r3, r7, r3
     480:	681b      	ldr	r3, [r3, #0]
     482:	18d3      	adds	r3, r2, r3
     484:	1c0a      	adds	r2, r1, #0
     486:	701a      	strb	r2, [r3, #0]
     488:	23a8      	movs	r3, #168	; 0xa8
     48a:	18fb      	adds	r3, r7, r3
     48c:	681b      	ldr	r3, [r3, #0]
     48e:	3301      	adds	r3, #1
     490:	227f      	movs	r2, #127	; 0x7f
     492:	4013      	ands	r3, r2
     494:	22a8      	movs	r2, #168	; 0xa8
     496:	18ba      	adds	r2, r7, r2
     498:	6013      	str	r3, [r2, #0]
     49a:	4b1d      	ldr	r3, [pc, #116]	; (510 <_stack_size+0x110>)
     49c:	681b      	ldr	r3, [r3, #0]
     49e:	2b00      	cmp	r3, #0
     4a0:	d100      	bne.n	4a4 <_stack_size+0xa4>
     4a2:	e771      	b.n	388 <main+0x30>
     4a4:	003b      	movs	r3, r7
     4a6:	2200      	movs	r2, #0
     4a8:	701a      	strb	r2, [r3, #0]
     4aa:	003b      	movs	r3, r7
     4ac:	2200      	movs	r2, #0
     4ae:	705a      	strb	r2, [r3, #1]
     4b0:	4b18      	ldr	r3, [pc, #96]	; (514 <_stack_size+0x114>)
     4b2:	2140      	movs	r1, #64	; 0x40
     4b4:	0018      	movs	r0, r3
     4b6:	f000 fb85 	bl	bc4 <uart_send>
     4ba:	003b      	movs	r3, r7
     4bc:	2102      	movs	r1, #2
     4be:	0018      	movs	r0, r3
     4c0:	f000 fb80 	bl	bc4 <uart_send>
     4c4:	4b14      	ldr	r3, [pc, #80]	; (518 <_stack_size+0x118>)
     4c6:	2102      	movs	r1, #2
     4c8:	0018      	movs	r0, r3
     4ca:	f000 fb7b 	bl	bc4 <uart_send>
     4ce:	4b12      	ldr	r3, [pc, #72]	; (518 <_stack_size+0x118>)
     4d0:	2102      	movs	r1, #2
     4d2:	0018      	movs	r0, r3
     4d4:	f000 fb76 	bl	bc4 <uart_send>
     4d8:	4b0d      	ldr	r3, [pc, #52]	; (510 <_stack_size+0x110>)
     4da:	2200      	movs	r2, #0
     4dc:	601a      	str	r2, [r3, #0]
     4de:	4b0d      	ldr	r3, [pc, #52]	; (514 <_stack_size+0x114>)
     4e0:	8fdc      	ldrh	r4, [r3, #62]	; 0x3e
     4e2:	4b0c      	ldr	r3, [pc, #48]	; (514 <_stack_size+0x114>)
     4e4:	211f      	movs	r1, #31
     4e6:	0018      	movs	r0, r3
     4e8:	f7ff fe52 	bl	190 <get_checksum>
     4ec:	0003      	movs	r3, r0
     4ee:	429c      	cmp	r4, r3
     4f0:	d100      	bne.n	4f4 <_stack_size+0xf4>
     4f2:	e749      	b.n	388 <main+0x30>
     4f4:	4b09      	ldr	r3, [pc, #36]	; (51c <_stack_size+0x11c>)
     4f6:	681b      	ldr	r3, [r3, #0]
     4f8:	1c5a      	adds	r2, r3, #1
     4fa:	4b08      	ldr	r3, [pc, #32]	; (51c <_stack_size+0x11c>)
     4fc:	601a      	str	r2, [r3, #0]
     4fe:	e743      	b.n	388 <main+0x30>
     500:	200040f8 	.word	0x200040f8
     504:	00000afd 	.word	0x00000afd
     508:	200000e0 	.word	0x200000e0
     50c:	40048080 	.word	0x40048080
     510:	200000e4 	.word	0x200000e4
     514:	2000004c 	.word	0x2000004c
     518:	20000044 	.word	0x20000044
     51c:	200000d8 	.word	0x200000d8

00000520 <PortConfig>:
     520:	b580      	push	{r7, lr}
     522:	af00      	add	r7, sp, #0
     524:	4b5b      	ldr	r3, [pc, #364]	; (694 <PortConfig+0x174>)
     526:	4a5b      	ldr	r2, [pc, #364]	; (694 <PortConfig+0x174>)
     528:	69d2      	ldr	r2, [r2, #28]
     52a:	2180      	movs	r1, #128	; 0x80
     52c:	0449      	lsls	r1, r1, #17
     52e:	430a      	orrs	r2, r1
     530:	61da      	str	r2, [r3, #28]
     532:	4b59      	ldr	r3, [pc, #356]	; (698 <PortConfig+0x178>)
     534:	4a58      	ldr	r2, [pc, #352]	; (698 <PortConfig+0x178>)
     536:	6892      	ldr	r2, [r2, #8]
     538:	4958      	ldr	r1, [pc, #352]	; (69c <PortConfig+0x17c>)
     53a:	400a      	ands	r2, r1
     53c:	609a      	str	r2, [r3, #8]
     53e:	4b56      	ldr	r3, [pc, #344]	; (698 <PortConfig+0x178>)
     540:	4a55      	ldr	r2, [pc, #340]	; (698 <PortConfig+0x178>)
     542:	6892      	ldr	r2, [r2, #8]
     544:	21a0      	movs	r1, #160	; 0xa0
     546:	0549      	lsls	r1, r1, #21
     548:	430a      	orrs	r2, r1
     54a:	609a      	str	r2, [r3, #8]
     54c:	4b52      	ldr	r3, [pc, #328]	; (698 <PortConfig+0x178>)
     54e:	4a52      	ldr	r2, [pc, #328]	; (698 <PortConfig+0x178>)
     550:	68d2      	ldr	r2, [r2, #12]
     552:	21c0      	movs	r1, #192	; 0xc0
     554:	01c9      	lsls	r1, r1, #7
     556:	430a      	orrs	r2, r1
     558:	60da      	str	r2, [r3, #12]
     55a:	4b4f      	ldr	r3, [pc, #316]	; (698 <PortConfig+0x178>)
     55c:	4a4e      	ldr	r2, [pc, #312]	; (698 <PortConfig+0x178>)
     55e:	6992      	ldr	r2, [r2, #24]
     560:	21f0      	movs	r1, #240	; 0xf0
     562:	0589      	lsls	r1, r1, #22
     564:	430a      	orrs	r2, r1
     566:	619a      	str	r2, [r3, #24]
     568:	4b4b      	ldr	r3, [pc, #300]	; (698 <PortConfig+0x178>)
     56a:	4a4b      	ldr	r2, [pc, #300]	; (698 <PortConfig+0x178>)
     56c:	6812      	ldr	r2, [r2, #0]
     56e:	494c      	ldr	r1, [pc, #304]	; (6a0 <PortConfig+0x180>)
     570:	400a      	ands	r2, r1
     572:	601a      	str	r2, [r3, #0]
     574:	4b47      	ldr	r3, [pc, #284]	; (694 <PortConfig+0x174>)
     576:	4a47      	ldr	r2, [pc, #284]	; (694 <PortConfig+0x174>)
     578:	69d2      	ldr	r2, [r2, #28]
     57a:	2180      	movs	r1, #128	; 0x80
     57c:	0409      	lsls	r1, r1, #16
     57e:	430a      	orrs	r2, r1
     580:	61da      	str	r2, [r3, #28]
     582:	4b44      	ldr	r3, [pc, #272]	; (694 <PortConfig+0x174>)
     584:	4a43      	ldr	r2, [pc, #268]	; (694 <PortConfig+0x174>)
     586:	69d2      	ldr	r2, [r2, #28]
     588:	2180      	movs	r1, #128	; 0x80
     58a:	0449      	lsls	r1, r1, #17
     58c:	430a      	orrs	r2, r1
     58e:	61da      	str	r2, [r3, #28]
     590:	4b44      	ldr	r3, [pc, #272]	; (6a4 <PortConfig+0x184>)
     592:	4a44      	ldr	r2, [pc, #272]	; (6a4 <PortConfig+0x184>)
     594:	6892      	ldr	r2, [r2, #8]
     596:	0192      	lsls	r2, r2, #6
     598:	0992      	lsrs	r2, r2, #6
     59a:	609a      	str	r2, [r3, #8]
     59c:	4b41      	ldr	r3, [pc, #260]	; (6a4 <PortConfig+0x184>)
     59e:	4a41      	ldr	r2, [pc, #260]	; (6a4 <PortConfig+0x184>)
     5a0:	6892      	ldr	r2, [r2, #8]
     5a2:	21a8      	movs	r1, #168	; 0xa8
     5a4:	05c9      	lsls	r1, r1, #23
     5a6:	430a      	orrs	r2, r1
     5a8:	609a      	str	r2, [r3, #8]
     5aa:	4b3e      	ldr	r3, [pc, #248]	; (6a4 <PortConfig+0x184>)
     5ac:	4a3d      	ldr	r2, [pc, #244]	; (6a4 <PortConfig+0x184>)
     5ae:	68d2      	ldr	r2, [r2, #12]
     5b0:	21e0      	movs	r1, #224	; 0xe0
     5b2:	0209      	lsls	r1, r1, #8
     5b4:	430a      	orrs	r2, r1
     5b6:	60da      	str	r2, [r3, #12]
     5b8:	4b3a      	ldr	r3, [pc, #232]	; (6a4 <PortConfig+0x184>)
     5ba:	4a3a      	ldr	r2, [pc, #232]	; (6a4 <PortConfig+0x184>)
     5bc:	6992      	ldr	r2, [r2, #24]
     5be:	21fc      	movs	r1, #252	; 0xfc
     5c0:	0609      	lsls	r1, r1, #24
     5c2:	430a      	orrs	r2, r1
     5c4:	619a      	str	r2, [r3, #24]
     5c6:	4b34      	ldr	r3, [pc, #208]	; (698 <PortConfig+0x178>)
     5c8:	4a33      	ldr	r2, [pc, #204]	; (698 <PortConfig+0x178>)
     5ca:	6892      	ldr	r2, [r2, #8]
     5cc:	0b92      	lsrs	r2, r2, #14
     5ce:	0392      	lsls	r2, r2, #14
     5d0:	609a      	str	r2, [r3, #8]
     5d2:	4b31      	ldr	r3, [pc, #196]	; (698 <PortConfig+0x178>)
     5d4:	4a30      	ldr	r2, [pc, #192]	; (698 <PortConfig+0x178>)
     5d6:	6892      	ldr	r2, [r2, #8]
     5d8:	4933      	ldr	r1, [pc, #204]	; (6a8 <PortConfig+0x188>)
     5da:	430a      	orrs	r2, r1
     5dc:	609a      	str	r2, [r3, #8]
     5de:	4b2e      	ldr	r3, [pc, #184]	; (698 <PortConfig+0x178>)
     5e0:	4a2d      	ldr	r2, [pc, #180]	; (698 <PortConfig+0x178>)
     5e2:	68d2      	ldr	r2, [r2, #12]
     5e4:	217f      	movs	r1, #127	; 0x7f
     5e6:	430a      	orrs	r2, r1
     5e8:	60da      	str	r2, [r3, #12]
     5ea:	4b2b      	ldr	r3, [pc, #172]	; (698 <PortConfig+0x178>)
     5ec:	4a2a      	ldr	r2, [pc, #168]	; (698 <PortConfig+0x178>)
     5ee:	6992      	ldr	r2, [r2, #24]
     5f0:	492e      	ldr	r1, [pc, #184]	; (6ac <PortConfig+0x18c>)
     5f2:	430a      	orrs	r2, r1
     5f4:	619a      	str	r2, [r3, #24]
     5f6:	4b28      	ldr	r3, [pc, #160]	; (698 <PortConfig+0x178>)
     5f8:	4a27      	ldr	r2, [pc, #156]	; (698 <PortConfig+0x178>)
     5fa:	68d2      	ldr	r2, [r2, #12]
     5fc:	2180      	movs	r1, #128	; 0x80
     5fe:	430a      	orrs	r2, r1
     600:	60da      	str	r2, [r3, #12]
     602:	4b25      	ldr	r3, [pc, #148]	; (698 <PortConfig+0x178>)
     604:	4a24      	ldr	r2, [pc, #144]	; (698 <PortConfig+0x178>)
     606:	6852      	ldr	r2, [r2, #4]
     608:	2180      	movs	r1, #128	; 0x80
     60a:	430a      	orrs	r2, r1
     60c:	605a      	str	r2, [r3, #4]
     60e:	4b22      	ldr	r3, [pc, #136]	; (698 <PortConfig+0x178>)
     610:	4a21      	ldr	r2, [pc, #132]	; (698 <PortConfig+0x178>)
     612:	6892      	ldr	r2, [r2, #8]
     614:	4926      	ldr	r1, [pc, #152]	; (6b0 <PortConfig+0x190>)
     616:	400a      	ands	r2, r1
     618:	609a      	str	r2, [r3, #8]
     61a:	4b1f      	ldr	r3, [pc, #124]	; (698 <PortConfig+0x178>)
     61c:	4a1e      	ldr	r2, [pc, #120]	; (698 <PortConfig+0x178>)
     61e:	6992      	ldr	r2, [r2, #24]
     620:	21c0      	movs	r1, #192	; 0xc0
     622:	0209      	lsls	r1, r1, #8
     624:	430a      	orrs	r2, r1
     626:	619a      	str	r2, [r3, #24]
     628:	4b1b      	ldr	r3, [pc, #108]	; (698 <PortConfig+0x178>)
     62a:	4a1b      	ldr	r2, [pc, #108]	; (698 <PortConfig+0x178>)
     62c:	6812      	ldr	r2, [r2, #0]
     62e:	2180      	movs	r1, #128	; 0x80
     630:	438a      	bics	r2, r1
     632:	601a      	str	r2, [r3, #0]
     634:	4b17      	ldr	r3, [pc, #92]	; (694 <PortConfig+0x174>)
     636:	4a17      	ldr	r2, [pc, #92]	; (694 <PortConfig+0x174>)
     638:	69d2      	ldr	r2, [r2, #28]
     63a:	2180      	movs	r1, #128	; 0x80
     63c:	0489      	lsls	r1, r1, #18
     63e:	430a      	orrs	r2, r1
     640:	61da      	str	r2, [r3, #28]
     642:	4b1c      	ldr	r3, [pc, #112]	; (6b4 <PortConfig+0x194>)
     644:	4a1b      	ldr	r2, [pc, #108]	; (6b4 <PortConfig+0x194>)
     646:	68d2      	ldr	r2, [r2, #12]
     648:	218c      	movs	r1, #140	; 0x8c
     64a:	0109      	lsls	r1, r1, #4
     64c:	430a      	orrs	r2, r1
     64e:	60da      	str	r2, [r3, #12]
     650:	4b18      	ldr	r3, [pc, #96]	; (6b4 <PortConfig+0x194>)
     652:	4a18      	ldr	r2, [pc, #96]	; (6b4 <PortConfig+0x194>)
     654:	6852      	ldr	r2, [r2, #4]
     656:	218c      	movs	r1, #140	; 0x8c
     658:	0109      	lsls	r1, r1, #4
     65a:	430a      	orrs	r2, r1
     65c:	605a      	str	r2, [r3, #4]
     65e:	4b15      	ldr	r3, [pc, #84]	; (6b4 <PortConfig+0x194>)
     660:	4a14      	ldr	r2, [pc, #80]	; (6b4 <PortConfig+0x194>)
     662:	6892      	ldr	r2, [r2, #8]
     664:	4912      	ldr	r1, [pc, #72]	; (6b0 <PortConfig+0x190>)
     666:	400a      	ands	r2, r1
     668:	609a      	str	r2, [r3, #8]
     66a:	4b12      	ldr	r3, [pc, #72]	; (6b4 <PortConfig+0x194>)
     66c:	4a11      	ldr	r2, [pc, #68]	; (6b4 <PortConfig+0x194>)
     66e:	6992      	ldr	r2, [r2, #24]
     670:	4911      	ldr	r1, [pc, #68]	; (6b8 <PortConfig+0x198>)
     672:	430a      	orrs	r2, r1
     674:	619a      	str	r2, [r3, #24]
     676:	4b0f      	ldr	r3, [pc, #60]	; (6b4 <PortConfig+0x194>)
     678:	4a0e      	ldr	r2, [pc, #56]	; (6b4 <PortConfig+0x194>)
     67a:	6812      	ldr	r2, [r2, #0]
     67c:	2180      	movs	r1, #128	; 0x80
     67e:	438a      	bics	r2, r1
     680:	601a      	str	r2, [r3, #0]
     682:	4b0c      	ldr	r3, [pc, #48]	; (6b4 <PortConfig+0x194>)
     684:	4a0b      	ldr	r2, [pc, #44]	; (6b4 <PortConfig+0x194>)
     686:	6812      	ldr	r2, [r2, #0]
     688:	490c      	ldr	r1, [pc, #48]	; (6bc <PortConfig+0x19c>)
     68a:	400a      	ands	r2, r1
     68c:	601a      	str	r2, [r3, #0]
     68e:	46c0      	nop			; (mov r8, r8)
     690:	46bd      	mov	sp, r7
     692:	bd80      	pop	{r7, pc}
     694:	40020000 	.word	0x40020000
     698:	400c0000 	.word	0x400c0000
     69c:	c3ffffff 	.word	0xc3ffffff
     6a0:	ffff9fff 	.word	0xffff9fff
     6a4:	400b8000 	.word	0x400b8000
     6a8:	00001555 	.word	0x00001555
     6ac:	00003fff 	.word	0x00003fff
     6b0:	ffff3fff 	.word	0xffff3fff
     6b4:	400c8000 	.word	0x400c8000
     6b8:	00c0f000 	.word	0x00c0f000
     6bc:	fffff7ff 	.word	0xfffff7ff

000006c0 <ClkConfig>:
     6c0:	b580      	push	{r7, lr}
     6c2:	af00      	add	r7, sp, #0
     6c4:	4b18      	ldr	r3, [pc, #96]	; (728 <ClkConfig+0x68>)
     6c6:	4a18      	ldr	r2, [pc, #96]	; (728 <ClkConfig+0x68>)
     6c8:	6892      	ldr	r2, [r2, #8]
     6ca:	2101      	movs	r1, #1
     6cc:	430a      	orrs	r2, r1
     6ce:	609a      	str	r2, [r3, #8]
     6d0:	46c0      	nop			; (mov r8, r8)
     6d2:	4b15      	ldr	r3, [pc, #84]	; (728 <ClkConfig+0x68>)
     6d4:	681b      	ldr	r3, [r3, #0]
     6d6:	2204      	movs	r2, #4
     6d8:	4013      	ands	r3, r2
     6da:	d0fa      	beq.n	6d2 <ClkConfig+0x12>
     6dc:	4b12      	ldr	r3, [pc, #72]	; (728 <ClkConfig+0x68>)
     6de:	4a12      	ldr	r2, [pc, #72]	; (728 <ClkConfig+0x68>)
     6e0:	68d2      	ldr	r2, [r2, #12]
     6e2:	2102      	movs	r1, #2
     6e4:	430a      	orrs	r2, r1
     6e6:	60da      	str	r2, [r3, #12]
     6e8:	4b0f      	ldr	r3, [pc, #60]	; (728 <ClkConfig+0x68>)
     6ea:	4a10      	ldr	r2, [pc, #64]	; (72c <ClkConfig+0x6c>)
     6ec:	605a      	str	r2, [r3, #4]
     6ee:	46c0      	nop			; (mov r8, r8)
     6f0:	4b0d      	ldr	r3, [pc, #52]	; (728 <ClkConfig+0x68>)
     6f2:	681b      	ldr	r3, [r3, #0]
     6f4:	2202      	movs	r2, #2
     6f6:	4013      	ands	r3, r2
     6f8:	d0fa      	beq.n	6f0 <ClkConfig+0x30>
     6fa:	4b0d      	ldr	r3, [pc, #52]	; (730 <ClkConfig+0x70>)
     6fc:	4a0c      	ldr	r2, [pc, #48]	; (730 <ClkConfig+0x70>)
     6fe:	6812      	ldr	r2, [r2, #0]
     700:	2120      	movs	r1, #32
     702:	430a      	orrs	r2, r1
     704:	601a      	str	r2, [r3, #0]
     706:	4b08      	ldr	r3, [pc, #32]	; (728 <ClkConfig+0x68>)
     708:	4a07      	ldr	r2, [pc, #28]	; (728 <ClkConfig+0x68>)
     70a:	68d2      	ldr	r2, [r2, #12]
     70c:	2180      	movs	r1, #128	; 0x80
     70e:	0049      	lsls	r1, r1, #1
     710:	430a      	orrs	r2, r1
     712:	60da      	str	r2, [r3, #12]
     714:	4b04      	ldr	r3, [pc, #16]	; (728 <ClkConfig+0x68>)
     716:	4a04      	ldr	r2, [pc, #16]	; (728 <ClkConfig+0x68>)
     718:	68d2      	ldr	r2, [r2, #12]
     71a:	2104      	movs	r1, #4
     71c:	430a      	orrs	r2, r1
     71e:	60da      	str	r2, [r3, #12]
     720:	46c0      	nop			; (mov r8, r8)
     722:	46bd      	mov	sp, r7
     724:	bd80      	pop	{r7, pc}
     726:	46c0      	nop			; (mov r8, r8)
     728:	40020000 	.word	0x40020000
     72c:	00000b04 	.word	0x00000b04
     730:	40018000 	.word	0x40018000

00000734 <TimerConfig>:
     734:	b580      	push	{r7, lr}
     736:	af00      	add	r7, sp, #0
     738:	4b17      	ldr	r3, [pc, #92]	; (798 <TimerConfig+0x64>)
     73a:	4a17      	ldr	r2, [pc, #92]	; (798 <TimerConfig+0x64>)
     73c:	69d2      	ldr	r2, [r2, #28]
     73e:	2180      	movs	r1, #128	; 0x80
     740:	0309      	lsls	r1, r1, #12
     742:	430a      	orrs	r2, r1
     744:	61da      	str	r2, [r3, #28]
     746:	4b14      	ldr	r3, [pc, #80]	; (798 <TimerConfig+0x64>)
     748:	4a13      	ldr	r2, [pc, #76]	; (798 <TimerConfig+0x64>)
     74a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     74c:	2180      	movs	r1, #128	; 0x80
     74e:	04c9      	lsls	r1, r1, #19
     750:	430a      	orrs	r2, r1
     752:	629a      	str	r2, [r3, #40]	; 0x28
     754:	4b10      	ldr	r3, [pc, #64]	; (798 <TimerConfig+0x64>)
     756:	4a10      	ldr	r2, [pc, #64]	; (798 <TimerConfig+0x64>)
     758:	6a92      	ldr	r2, [r2, #40]	; 0x28
     75a:	4910      	ldr	r1, [pc, #64]	; (79c <TimerConfig+0x68>)
     75c:	400a      	ands	r2, r1
     75e:	629a      	str	r2, [r3, #40]	; 0x28
     760:	4b0f      	ldr	r3, [pc, #60]	; (7a0 <TimerConfig+0x6c>)
     762:	2200      	movs	r2, #0
     764:	601a      	str	r2, [r3, #0]
     766:	4b0e      	ldr	r3, [pc, #56]	; (7a0 <TimerConfig+0x6c>)
     768:	225f      	movs	r2, #95	; 0x5f
     76a:	605a      	str	r2, [r3, #4]
     76c:	4b0c      	ldr	r3, [pc, #48]	; (7a0 <TimerConfig+0x6c>)
     76e:	4a0d      	ldr	r2, [pc, #52]	; (7a4 <TimerConfig+0x70>)
     770:	609a      	str	r2, [r3, #8]
     772:	4b0b      	ldr	r3, [pc, #44]	; (7a0 <TimerConfig+0x6c>)
     774:	22fa      	movs	r2, #250	; 0xfa
     776:	00d2      	lsls	r2, r2, #3
     778:	611a      	str	r2, [r3, #16]
     77a:	4b09      	ldr	r3, [pc, #36]	; (7a0 <TimerConfig+0x6c>)
     77c:	4a08      	ldr	r2, [pc, #32]	; (7a0 <TimerConfig+0x6c>)
     77e:	6d92      	ldr	r2, [r2, #88]	; 0x58
     780:	2102      	movs	r1, #2
     782:	430a      	orrs	r2, r1
     784:	659a      	str	r2, [r3, #88]	; 0x58
     786:	4b06      	ldr	r3, [pc, #24]	; (7a0 <TimerConfig+0x6c>)
     788:	2201      	movs	r2, #1
     78a:	60da      	str	r2, [r3, #12]
     78c:	200d      	movs	r0, #13
     78e:	f7ff fc97 	bl	c0 <NVIC_EnableIRQ>
     792:	46c0      	nop			; (mov r8, r8)
     794:	46bd      	mov	sp, r7
     796:	bd80      	pop	{r7, pc}
     798:	40020000 	.word	0x40020000
     79c:	ff00ffff 	.word	0xff00ffff
     7a0:	40098000 	.word	0x40098000
     7a4:	000009c3 	.word	0x000009c3

000007a8 <mil_std_1533_init_bc>:
     7a8:	b580      	push	{r7, lr}
     7aa:	b082      	sub	sp, #8
     7ac:	af00      	add	r7, sp, #0
     7ae:	4b23      	ldr	r3, [pc, #140]	; (83c <mil_std_1533_init_bc+0x94>)
     7b0:	603b      	str	r3, [r7, #0]
     7b2:	4b23      	ldr	r3, [pc, #140]	; (840 <mil_std_1533_init_bc+0x98>)
     7b4:	4a22      	ldr	r2, [pc, #136]	; (840 <mil_std_1533_init_bc+0x98>)
     7b6:	69d2      	ldr	r2, [r2, #28]
     7b8:	2180      	movs	r1, #128	; 0x80
     7ba:	0089      	lsls	r1, r1, #2
     7bc:	430a      	orrs	r2, r1
     7be:	61da      	str	r2, [r3, #28]
     7c0:	4b1f      	ldr	r3, [pc, #124]	; (840 <mil_std_1533_init_bc+0x98>)
     7c2:	4a1f      	ldr	r2, [pc, #124]	; (840 <mil_std_1533_init_bc+0x98>)
     7c4:	6b52      	ldr	r2, [r2, #52]	; 0x34
     7c6:	491f      	ldr	r1, [pc, #124]	; (844 <mil_std_1533_init_bc+0x9c>)
     7c8:	430a      	orrs	r2, r1
     7ca:	635a      	str	r2, [r3, #52]	; 0x34
     7cc:	4a1e      	ldr	r2, [pc, #120]	; (848 <mil_std_1533_init_bc+0xa0>)
     7ce:	2380      	movs	r3, #128	; 0x80
     7d0:	015b      	lsls	r3, r3, #5
     7d2:	2101      	movs	r1, #1
     7d4:	50d1      	str	r1, [r2, r3]
     7d6:	4a1c      	ldr	r2, [pc, #112]	; (848 <mil_std_1533_init_bc+0xa0>)
     7d8:	2380      	movs	r3, #128	; 0x80
     7da:	015b      	lsls	r3, r3, #5
     7dc:	491b      	ldr	r1, [pc, #108]	; (84c <mil_std_1533_init_bc+0xa4>)
     7de:	50d1      	str	r1, [r2, r3]
     7e0:	4919      	ldr	r1, [pc, #100]	; (848 <mil_std_1533_init_bc+0xa0>)
     7e2:	4a19      	ldr	r2, [pc, #100]	; (848 <mil_std_1533_init_bc+0xa0>)
     7e4:	2381      	movs	r3, #129	; 0x81
     7e6:	015b      	lsls	r3, r3, #5
     7e8:	58d3      	ldr	r3, [r2, r3]
     7ea:	2208      	movs	r2, #8
     7ec:	431a      	orrs	r2, r3
     7ee:	2381      	movs	r3, #129	; 0x81
     7f0:	015b      	lsls	r3, r3, #5
     7f2:	50ca      	str	r2, [r1, r3]
     7f4:	4914      	ldr	r1, [pc, #80]	; (848 <mil_std_1533_init_bc+0xa0>)
     7f6:	4a14      	ldr	r2, [pc, #80]	; (848 <mil_std_1533_init_bc+0xa0>)
     7f8:	2381      	movs	r3, #129	; 0x81
     7fa:	015b      	lsls	r3, r3, #5
     7fc:	58d3      	ldr	r3, [r2, r3]
     7fe:	2204      	movs	r2, #4
     800:	431a      	orrs	r2, r3
     802:	2381      	movs	r3, #129	; 0x81
     804:	015b      	lsls	r3, r3, #5
     806:	50ca      	str	r2, [r1, r3]
     808:	2001      	movs	r0, #1
     80a:	f7ff fc59 	bl	c0 <NVIC_EnableIRQ>
     80e:	4a0e      	ldr	r2, [pc, #56]	; (848 <mil_std_1533_init_bc+0xa0>)
     810:	4b0f      	ldr	r3, [pc, #60]	; (850 <mil_std_1533_init_bc+0xa8>)
     812:	2100      	movs	r1, #0
     814:	50d1      	str	r1, [r2, r3]
     816:	2300      	movs	r3, #0
     818:	607b      	str	r3, [r7, #4]
     81a:	e008      	b.n	82e <mil_std_1533_init_bc+0x86>
     81c:	683b      	ldr	r3, [r7, #0]
     81e:	1d1a      	adds	r2, r3, #4
     820:	603a      	str	r2, [r7, #0]
     822:	687a      	ldr	r2, [r7, #4]
     824:	b292      	uxth	r2, r2
     826:	601a      	str	r2, [r3, #0]
     828:	687b      	ldr	r3, [r7, #4]
     82a:	3301      	adds	r3, #1
     82c:	607b      	str	r3, [r7, #4]
     82e:	687b      	ldr	r3, [r7, #4]
     830:	2b1f      	cmp	r3, #31
     832:	ddf3      	ble.n	81c <mil_std_1533_init_bc+0x74>
     834:	46c0      	nop			; (mov r8, r8)
     836:	46bd      	mov	sp, r7
     838:	b002      	add	sp, #8
     83a:	bd80      	pop	{r7, pc}
     83c:	40048080 	.word	0x40048080
     840:	40020000 	.word	0x40020000
     844:	02000100 	.word	0x02000100
     848:	40048000 	.word	0x40048000
     84c:	00018014 	.word	0x00018014
     850:	0000100c 	.word	0x0000100c

00000854 <SystemInit>:
     854:	b580      	push	{r7, lr}
     856:	af00      	add	r7, sp, #0
     858:	f7ff ff32 	bl	6c0 <ClkConfig>
     85c:	f7ff fe60 	bl	520 <PortConfig>
     860:	f7ff ff68 	bl	734 <TimerConfig>
     864:	f000 f90a 	bl	a7c <uart_init>
     868:	f7ff ff9e 	bl	7a8 <mil_std_1533_init_bc>
     86c:	46c0      	nop			; (mov r8, r8)
     86e:	46bd      	mov	sp, r7
     870:	bd80      	pop	{r7, pc}
     872:	46c0      	nop			; (mov r8, r8)

00000874 <SysTick_Handler>:
     874:	b580      	push	{r7, lr}
     876:	af00      	add	r7, sp, #0
     878:	4b03      	ldr	r3, [pc, #12]	; (888 <SysTick_Handler+0x14>)
     87a:	681b      	ldr	r3, [r3, #0]
     87c:	1c5a      	adds	r2, r3, #1
     87e:	4b02      	ldr	r3, [pc, #8]	; (888 <SysTick_Handler+0x14>)
     880:	601a      	str	r2, [r3, #0]
     882:	46c0      	nop			; (mov r8, r8)
     884:	46bd      	mov	sp, r7
     886:	bd80      	pop	{r7, pc}
     888:	200000dc 	.word	0x200000dc

0000088c <TIMER4_Handler>:
     88c:	b580      	push	{r7, lr}
     88e:	af00      	add	r7, sp, #0
     890:	4b24      	ldr	r3, [pc, #144]	; (924 <TIMER4_Handler+0x98>)
     892:	2200      	movs	r2, #0
     894:	655a      	str	r2, [r3, #84]	; 0x54
     896:	4b24      	ldr	r3, [pc, #144]	; (928 <TIMER4_Handler+0x9c>)
     898:	4a23      	ldr	r2, [pc, #140]	; (928 <TIMER4_Handler+0x9c>)
     89a:	6812      	ldr	r2, [r2, #0]
     89c:	2180      	movs	r1, #128	; 0x80
     89e:	404a      	eors	r2, r1
     8a0:	601a      	str	r2, [r3, #0]
     8a2:	4b22      	ldr	r3, [pc, #136]	; (92c <TIMER4_Handler+0xa0>)
     8a4:	681b      	ldr	r3, [r3, #0]
     8a6:	2b01      	cmp	r3, #1
     8a8:	d01d      	beq.n	8e6 <TIMER4_Handler+0x5a>
     8aa:	2b02      	cmp	r3, #2
     8ac:	d000      	beq.n	8b0 <TIMER4_Handler+0x24>
     8ae:	e035      	b.n	91c <TIMER4_Handler+0x90>
     8b0:	4b1e      	ldr	r3, [pc, #120]	; (92c <TIMER4_Handler+0xa0>)
     8b2:	681b      	ldr	r3, [r3, #0]
     8b4:	1e5a      	subs	r2, r3, #1
     8b6:	4b1d      	ldr	r3, [pc, #116]	; (92c <TIMER4_Handler+0xa0>)
     8b8:	601a      	str	r2, [r3, #0]
     8ba:	491d      	ldr	r1, [pc, #116]	; (930 <TIMER4_Handler+0xa4>)
     8bc:	4a1c      	ldr	r2, [pc, #112]	; (930 <TIMER4_Handler+0xa4>)
     8be:	4b1d      	ldr	r3, [pc, #116]	; (934 <TIMER4_Handler+0xa8>)
     8c0:	58d3      	ldr	r3, [r2, r3]
     8c2:	4a1d      	ldr	r2, [pc, #116]	; (938 <TIMER4_Handler+0xac>)
     8c4:	4313      	orrs	r3, r2
     8c6:	4a1b      	ldr	r2, [pc, #108]	; (934 <TIMER4_Handler+0xa8>)
     8c8:	508b      	str	r3, [r1, r2]
     8ca:	4919      	ldr	r1, [pc, #100]	; (930 <TIMER4_Handler+0xa4>)
     8cc:	4a18      	ldr	r2, [pc, #96]	; (930 <TIMER4_Handler+0xa4>)
     8ce:	2380      	movs	r3, #128	; 0x80
     8d0:	015b      	lsls	r3, r3, #5
     8d2:	58d3      	ldr	r3, [r2, r3]
     8d4:	2202      	movs	r2, #2
     8d6:	431a      	orrs	r2, r3
     8d8:	2380      	movs	r3, #128	; 0x80
     8da:	015b      	lsls	r3, r3, #5
     8dc:	50ca      	str	r2, [r1, r3]
     8de:	4b17      	ldr	r3, [pc, #92]	; (93c <TIMER4_Handler+0xb0>)
     8e0:	4a17      	ldr	r2, [pc, #92]	; (940 <TIMER4_Handler+0xb4>)
     8e2:	601a      	str	r2, [r3, #0]
     8e4:	e01a      	b.n	91c <TIMER4_Handler+0x90>
     8e6:	4b11      	ldr	r3, [pc, #68]	; (92c <TIMER4_Handler+0xa0>)
     8e8:	681b      	ldr	r3, [r3, #0]
     8ea:	1e5a      	subs	r2, r3, #1
     8ec:	4b0f      	ldr	r3, [pc, #60]	; (92c <TIMER4_Handler+0xa0>)
     8ee:	601a      	str	r2, [r3, #0]
     8f0:	490f      	ldr	r1, [pc, #60]	; (930 <TIMER4_Handler+0xa4>)
     8f2:	4a0f      	ldr	r2, [pc, #60]	; (930 <TIMER4_Handler+0xa4>)
     8f4:	4b0f      	ldr	r3, [pc, #60]	; (934 <TIMER4_Handler+0xa8>)
     8f6:	58d3      	ldr	r3, [r2, r3]
     8f8:	4a12      	ldr	r2, [pc, #72]	; (944 <TIMER4_Handler+0xb8>)
     8fa:	4313      	orrs	r3, r2
     8fc:	4a0d      	ldr	r2, [pc, #52]	; (934 <TIMER4_Handler+0xa8>)
     8fe:	508b      	str	r3, [r1, r2]
     900:	490b      	ldr	r1, [pc, #44]	; (930 <TIMER4_Handler+0xa4>)
     902:	4a0b      	ldr	r2, [pc, #44]	; (930 <TIMER4_Handler+0xa4>)
     904:	2380      	movs	r3, #128	; 0x80
     906:	015b      	lsls	r3, r3, #5
     908:	58d3      	ldr	r3, [r2, r3]
     90a:	2202      	movs	r2, #2
     90c:	431a      	orrs	r2, r3
     90e:	2380      	movs	r3, #128	; 0x80
     910:	015b      	lsls	r3, r3, #5
     912:	50ca      	str	r2, [r1, r3]
     914:	4b09      	ldr	r3, [pc, #36]	; (93c <TIMER4_Handler+0xb0>)
     916:	4a0c      	ldr	r2, [pc, #48]	; (948 <TIMER4_Handler+0xbc>)
     918:	601a      	str	r2, [r3, #0]
     91a:	46c0      	nop			; (mov r8, r8)
     91c:	46c0      	nop			; (mov r8, r8)
     91e:	46bd      	mov	sp, r7
     920:	bd80      	pop	{r7, pc}
     922:	46c0      	nop			; (mov r8, r8)
     924:	40098000 	.word	0x40098000
     928:	400c0000 	.word	0x400c0000
     92c:	200000e0 	.word	0x200000e0
     930:	40048000 	.word	0x40048000
     934:	0000100c 	.word	0x0000100c
     938:	00004025 	.word	0x00004025
     93c:	20000048 	.word	0x20000048
     940:	000000f9 	.word	0x000000f9
     944:	00004420 	.word	0x00004420
     948:	00000105 	.word	0x00000105

0000094c <MIL_STD_1553B1_Handler>:
     94c:	b580      	push	{r7, lr}
     94e:	b082      	sub	sp, #8
     950:	af00      	add	r7, sp, #0
     952:	4a13      	ldr	r2, [pc, #76]	; (9a0 <MIL_STD_1553B1_Handler+0x54>)
     954:	4b13      	ldr	r3, [pc, #76]	; (9a4 <MIL_STD_1553B1_Handler+0x58>)
     956:	58d3      	ldr	r3, [r2, r3]
     958:	2208      	movs	r2, #8
     95a:	4013      	ands	r3, r2
     95c:	d00e      	beq.n	97c <MIL_STD_1553B1_Handler+0x30>
     95e:	4a10      	ldr	r2, [pc, #64]	; (9a0 <MIL_STD_1553B1_Handler+0x54>)
     960:	4b11      	ldr	r3, [pc, #68]	; (9a8 <MIL_STD_1553B1_Handler+0x5c>)
     962:	58d3      	ldr	r3, [r2, r3]
     964:	607b      	str	r3, [r7, #4]
     966:	4b11      	ldr	r3, [pc, #68]	; (9ac <MIL_STD_1553B1_Handler+0x60>)
     968:	4a10      	ldr	r2, [pc, #64]	; (9ac <MIL_STD_1553B1_Handler+0x60>)
     96a:	6812      	ldr	r2, [r2, #0]
     96c:	2140      	movs	r1, #64	; 0x40
     96e:	404a      	eors	r2, r1
     970:	601a      	str	r2, [r3, #0]
     972:	4b0f      	ldr	r3, [pc, #60]	; (9b0 <MIL_STD_1553B1_Handler+0x64>)
     974:	681b      	ldr	r3, [r3, #0]
     976:	1c5a      	adds	r2, r3, #1
     978:	4b0d      	ldr	r3, [pc, #52]	; (9b0 <MIL_STD_1553B1_Handler+0x64>)
     97a:	601a      	str	r2, [r3, #0]
     97c:	4a08      	ldr	r2, [pc, #32]	; (9a0 <MIL_STD_1553B1_Handler+0x54>)
     97e:	4b09      	ldr	r3, [pc, #36]	; (9a4 <MIL_STD_1553B1_Handler+0x58>)
     980:	58d3      	ldr	r3, [r2, r3]
     982:	2204      	movs	r2, #4
     984:	4013      	ands	r3, r2
     986:	d007      	beq.n	998 <MIL_STD_1553B1_Handler+0x4c>
     988:	4b0a      	ldr	r3, [pc, #40]	; (9b4 <MIL_STD_1553B1_Handler+0x68>)
     98a:	681b      	ldr	r3, [r3, #0]
     98c:	4798      	blx	r3
     98e:	4b0a      	ldr	r3, [pc, #40]	; (9b8 <MIL_STD_1553B1_Handler+0x6c>)
     990:	681b      	ldr	r3, [r3, #0]
     992:	1c5a      	adds	r2, r3, #1
     994:	4b08      	ldr	r3, [pc, #32]	; (9b8 <MIL_STD_1553B1_Handler+0x6c>)
     996:	601a      	str	r2, [r3, #0]
     998:	46c0      	nop			; (mov r8, r8)
     99a:	46bd      	mov	sp, r7
     99c:	b002      	add	sp, #8
     99e:	bd80      	pop	{r7, pc}
     9a0:	40048000 	.word	0x40048000
     9a4:	00001004 	.word	0x00001004
     9a8:	00001008 	.word	0x00001008
     9ac:	400c8000 	.word	0x400c8000
     9b0:	200000d0 	.word	0x200000d0
     9b4:	20000048 	.word	0x20000048
     9b8:	200000d4 	.word	0x200000d4

000009bc <handler_reset>:
     9bc:	b580      	push	{r7, lr}
     9be:	b082      	sub	sp, #8
     9c0:	af00      	add	r7, sp, #0
     9c2:	4b11      	ldr	r3, [pc, #68]	; (a08 <handler_reset+0x4c>)
     9c4:	607b      	str	r3, [r7, #4]
     9c6:	4b11      	ldr	r3, [pc, #68]	; (a0c <handler_reset+0x50>)
     9c8:	603b      	str	r3, [r7, #0]
     9ca:	e007      	b.n	9dc <handler_reset+0x20>
     9cc:	683b      	ldr	r3, [r7, #0]
     9ce:	1d1a      	adds	r2, r3, #4
     9d0:	603a      	str	r2, [r7, #0]
     9d2:	687a      	ldr	r2, [r7, #4]
     9d4:	1d11      	adds	r1, r2, #4
     9d6:	6079      	str	r1, [r7, #4]
     9d8:	6812      	ldr	r2, [r2, #0]
     9da:	601a      	str	r2, [r3, #0]
     9dc:	683a      	ldr	r2, [r7, #0]
     9de:	4b0c      	ldr	r3, [pc, #48]	; (a10 <handler_reset+0x54>)
     9e0:	429a      	cmp	r2, r3
     9e2:	d3f3      	bcc.n	9cc <handler_reset+0x10>
     9e4:	4b0b      	ldr	r3, [pc, #44]	; (a14 <handler_reset+0x58>)
     9e6:	603b      	str	r3, [r7, #0]
     9e8:	e004      	b.n	9f4 <handler_reset+0x38>
     9ea:	683b      	ldr	r3, [r7, #0]
     9ec:	1d1a      	adds	r2, r3, #4
     9ee:	603a      	str	r2, [r7, #0]
     9f0:	2200      	movs	r2, #0
     9f2:	601a      	str	r2, [r3, #0]
     9f4:	683a      	ldr	r2, [r7, #0]
     9f6:	4b08      	ldr	r3, [pc, #32]	; (a18 <handler_reset+0x5c>)
     9f8:	429a      	cmp	r2, r3
     9fa:	d3f6      	bcc.n	9ea <handler_reset+0x2e>
     9fc:	f7ff fcac 	bl	358 <main>
     a00:	46c0      	nop			; (mov r8, r8)
     a02:	46bd      	mov	sp, r7
     a04:	b002      	add	sp, #8
     a06:	bd80      	pop	{r7, pc}
     a08:	000016e8 	.word	0x000016e8
     a0c:	20000000 	.word	0x20000000
     a10:	2000004c 	.word	0x2000004c
     a14:	2000004c 	.word	0x2000004c
     a18:	20004104 	.word	0x20004104

00000a1c <default_handler>:
     a1c:	b580      	push	{r7, lr}
     a1e:	af00      	add	r7, sp, #0
     a20:	e7fe      	b.n	a20 <default_handler+0x4>
     a22:	46c0      	nop			; (mov r8, r8)

00000a24 <NVIC_EnableIRQ>:
     a24:	b580      	push	{r7, lr}
     a26:	b082      	sub	sp, #8
     a28:	af00      	add	r7, sp, #0
     a2a:	0002      	movs	r2, r0
     a2c:	1dfb      	adds	r3, r7, #7
     a2e:	701a      	strb	r2, [r3, #0]
     a30:	4909      	ldr	r1, [pc, #36]	; (a58 <NVIC_EnableIRQ+0x34>)
     a32:	1dfb      	adds	r3, r7, #7
     a34:	781b      	ldrb	r3, [r3, #0]
     a36:	b25b      	sxtb	r3, r3
     a38:	095b      	lsrs	r3, r3, #5
     a3a:	1dfa      	adds	r2, r7, #7
     a3c:	7812      	ldrb	r2, [r2, #0]
     a3e:	0010      	movs	r0, r2
     a40:	221f      	movs	r2, #31
     a42:	4002      	ands	r2, r0
     a44:	2001      	movs	r0, #1
     a46:	4090      	lsls	r0, r2
     a48:	0002      	movs	r2, r0
     a4a:	009b      	lsls	r3, r3, #2
     a4c:	505a      	str	r2, [r3, r1]
     a4e:	46c0      	nop			; (mov r8, r8)
     a50:	46bd      	mov	sp, r7
     a52:	b002      	add	sp, #8
     a54:	bd80      	pop	{r7, pc}
     a56:	46c0      	nop			; (mov r8, r8)
     a58:	e000e100 	.word	0xe000e100

00000a5c <uart_bsz>:
     a5c:	b580      	push	{r7, lr}
     a5e:	af00      	add	r7, sp, #0
     a60:	4b04      	ldr	r3, [pc, #16]	; (a74 <uart_bsz+0x18>)
     a62:	681a      	ldr	r2, [r3, #0]
     a64:	4b04      	ldr	r3, [pc, #16]	; (a78 <uart_bsz+0x1c>)
     a66:	681b      	ldr	r3, [r3, #0]
     a68:	1ad3      	subs	r3, r2, r3
     a6a:	04db      	lsls	r3, r3, #19
     a6c:	0cdb      	lsrs	r3, r3, #19
     a6e:	0018      	movs	r0, r3
     a70:	46bd      	mov	sp, r7
     a72:	bd80      	pop	{r7, pc}
     a74:	200040f0 	.word	0x200040f0
     a78:	200040f4 	.word	0x200040f4

00000a7c <uart_init>:
     a7c:	b580      	push	{r7, lr}
     a7e:	af00      	add	r7, sp, #0
     a80:	4b1b      	ldr	r3, [pc, #108]	; (af0 <uart_init+0x74>)
     a82:	4a1b      	ldr	r2, [pc, #108]	; (af0 <uart_init+0x74>)
     a84:	69d2      	ldr	r2, [r2, #28]
     a86:	2180      	movs	r1, #128	; 0x80
     a88:	430a      	orrs	r2, r1
     a8a:	61da      	str	r2, [r3, #28]
     a8c:	4b18      	ldr	r3, [pc, #96]	; (af0 <uart_init+0x74>)
     a8e:	4a18      	ldr	r2, [pc, #96]	; (af0 <uart_init+0x74>)
     a90:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a92:	2180      	movs	r1, #128	; 0x80
     a94:	0489      	lsls	r1, r1, #18
     a96:	430a      	orrs	r2, r1
     a98:	629a      	str	r2, [r3, #40]	; 0x28
     a9a:	4b16      	ldr	r3, [pc, #88]	; (af4 <uart_init+0x78>)
     a9c:	2206      	movs	r2, #6
     a9e:	625a      	str	r2, [r3, #36]	; 0x24
     aa0:	4b14      	ldr	r3, [pc, #80]	; (af4 <uart_init+0x78>)
     aa2:	2221      	movs	r2, #33	; 0x21
     aa4:	629a      	str	r2, [r3, #40]	; 0x28
     aa6:	4b13      	ldr	r3, [pc, #76]	; (af4 <uart_init+0x78>)
     aa8:	4a12      	ldr	r2, [pc, #72]	; (af4 <uart_init+0x78>)
     aaa:	6b52      	ldr	r2, [r2, #52]	; 0x34
     aac:	213f      	movs	r1, #63	; 0x3f
     aae:	438a      	bics	r2, r1
     ab0:	635a      	str	r2, [r3, #52]	; 0x34
     ab2:	4b10      	ldr	r3, [pc, #64]	; (af4 <uart_init+0x78>)
     ab4:	4a0f      	ldr	r2, [pc, #60]	; (af4 <uart_init+0x78>)
     ab6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ab8:	2124      	movs	r1, #36	; 0x24
     aba:	430a      	orrs	r2, r1
     abc:	635a      	str	r2, [r3, #52]	; 0x34
     abe:	4b0d      	ldr	r3, [pc, #52]	; (af4 <uart_init+0x78>)
     ac0:	4a0c      	ldr	r2, [pc, #48]	; (af4 <uart_init+0x78>)
     ac2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ac4:	2160      	movs	r1, #96	; 0x60
     ac6:	430a      	orrs	r2, r1
     ac8:	62da      	str	r2, [r3, #44]	; 0x2c
     aca:	4b0a      	ldr	r3, [pc, #40]	; (af4 <uart_init+0x78>)
     acc:	4a09      	ldr	r2, [pc, #36]	; (af4 <uart_init+0x78>)
     ace:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ad0:	4909      	ldr	r1, [pc, #36]	; (af8 <uart_init+0x7c>)
     ad2:	430a      	orrs	r2, r1
     ad4:	631a      	str	r2, [r3, #48]	; 0x30
     ad6:	4b07      	ldr	r3, [pc, #28]	; (af4 <uart_init+0x78>)
     ad8:	4a06      	ldr	r2, [pc, #24]	; (af4 <uart_init+0x78>)
     ada:	6b92      	ldr	r2, [r2, #56]	; 0x38
     adc:	2110      	movs	r1, #16
     ade:	430a      	orrs	r2, r1
     ae0:	639a      	str	r2, [r3, #56]	; 0x38
     ae2:	2007      	movs	r0, #7
     ae4:	f7ff ff9e 	bl	a24 <NVIC_EnableIRQ>
     ae8:	46c0      	nop			; (mov r8, r8)
     aea:	46bd      	mov	sp, r7
     aec:	bd80      	pop	{r7, pc}
     aee:	46c0      	nop			; (mov r8, r8)
     af0:	40020000 	.word	0x40020000
     af4:	40038000 	.word	0x40038000
     af8:	00000301 	.word	0x00000301

00000afc <uart_putch>:
     afc:	b580      	push	{r7, lr}
     afe:	b082      	sub	sp, #8
     b00:	af00      	add	r7, sp, #0
     b02:	0002      	movs	r2, r0
     b04:	1dfb      	adds	r3, r7, #7
     b06:	701a      	strb	r2, [r3, #0]
     b08:	46c0      	nop			; (mov r8, r8)
     b0a:	4b06      	ldr	r3, [pc, #24]	; (b24 <uart_putch+0x28>)
     b0c:	699b      	ldr	r3, [r3, #24]
     b0e:	2220      	movs	r2, #32
     b10:	4013      	ands	r3, r2
     b12:	d1fa      	bne.n	b0a <uart_putch+0xe>
     b14:	4b03      	ldr	r3, [pc, #12]	; (b24 <uart_putch+0x28>)
     b16:	1dfa      	adds	r2, r7, #7
     b18:	7812      	ldrb	r2, [r2, #0]
     b1a:	601a      	str	r2, [r3, #0]
     b1c:	46c0      	nop			; (mov r8, r8)
     b1e:	46bd      	mov	sp, r7
     b20:	b002      	add	sp, #8
     b22:	bd80      	pop	{r7, pc}
     b24:	40038000 	.word	0x40038000

00000b28 <uart_read>:
     b28:	b580      	push	{r7, lr}
     b2a:	b084      	sub	sp, #16
     b2c:	af00      	add	r7, sp, #0
     b2e:	6078      	str	r0, [r7, #4]
     b30:	6039      	str	r1, [r7, #0]
     b32:	4b1f      	ldr	r3, [pc, #124]	; (bb0 <uart_read+0x88>)
     b34:	681a      	ldr	r2, [r3, #0]
     b36:	4b1f      	ldr	r3, [pc, #124]	; (bb4 <uart_read+0x8c>)
     b38:	681b      	ldr	r3, [r3, #0]
     b3a:	429a      	cmp	r2, r3
     b3c:	d101      	bne.n	b42 <uart_read+0x1a>
     b3e:	2300      	movs	r3, #0
     b40:	e031      	b.n	ba6 <uart_read+0x7e>
     b42:	2300      	movs	r3, #0
     b44:	60fb      	str	r3, [r7, #12]
     b46:	e01b      	b.n	b80 <uart_read+0x58>
     b48:	68fb      	ldr	r3, [r7, #12]
     b4a:	687a      	ldr	r2, [r7, #4]
     b4c:	18d2      	adds	r2, r2, r3
     b4e:	4b18      	ldr	r3, [pc, #96]	; (bb0 <uart_read+0x88>)
     b50:	681b      	ldr	r3, [r3, #0]
     b52:	4919      	ldr	r1, [pc, #100]	; (bb8 <uart_read+0x90>)
     b54:	5ccb      	ldrb	r3, [r1, r3]
     b56:	7013      	strb	r3, [r2, #0]
     b58:	4b15      	ldr	r3, [pc, #84]	; (bb0 <uart_read+0x88>)
     b5a:	681b      	ldr	r3, [r3, #0]
     b5c:	3301      	adds	r3, #1
     b5e:	04db      	lsls	r3, r3, #19
     b60:	0cda      	lsrs	r2, r3, #19
     b62:	4b13      	ldr	r3, [pc, #76]	; (bb0 <uart_read+0x88>)
     b64:	601a      	str	r2, [r3, #0]
     b66:	4b12      	ldr	r3, [pc, #72]	; (bb0 <uart_read+0x88>)
     b68:	681a      	ldr	r2, [r3, #0]
     b6a:	4b12      	ldr	r3, [pc, #72]	; (bb4 <uart_read+0x8c>)
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
     b88:	f7ff ff68 	bl	a5c <uart_bsz>
     b8c:	0003      	movs	r3, r0
     b8e:	60bb      	str	r3, [r7, #8]
     b90:	68bb      	ldr	r3, [r7, #8]
     b92:	4a0a      	ldr	r2, [pc, #40]	; (bbc <uart_read+0x94>)
     b94:	4293      	cmp	r3, r2
     b96:	dc05      	bgt.n	ba4 <uart_read+0x7c>
     b98:	4b09      	ldr	r3, [pc, #36]	; (bc0 <uart_read+0x98>)
     b9a:	4a09      	ldr	r2, [pc, #36]	; (bc0 <uart_read+0x98>)
     b9c:	6812      	ldr	r2, [r2, #0]
     b9e:	2180      	movs	r1, #128	; 0x80
     ba0:	438a      	bics	r2, r1
     ba2:	601a      	str	r2, [r3, #0]
     ba4:	68fb      	ldr	r3, [r7, #12]
     ba6:	0018      	movs	r0, r3
     ba8:	46bd      	mov	sp, r7
     baa:	b004      	add	sp, #16
     bac:	bd80      	pop	{r7, pc}
     bae:	46c0      	nop			; (mov r8, r8)
     bb0:	200040f4 	.word	0x200040f4
     bb4:	200040f0 	.word	0x200040f0
     bb8:	200020f0 	.word	0x200020f0
     bbc:	00001b57 	.word	0x00001b57
     bc0:	400c8000 	.word	0x400c8000

00000bc4 <uart_send>:
     bc4:	b580      	push	{r7, lr}
     bc6:	b084      	sub	sp, #16
     bc8:	af00      	add	r7, sp, #0
     bca:	6078      	str	r0, [r7, #4]
     bcc:	6039      	str	r1, [r7, #0]
     bce:	2300      	movs	r3, #0
     bd0:	60fb      	str	r3, [r7, #12]
     bd2:	e01b      	b.n	c0c <uart_send+0x48>
     bd4:	4b1e      	ldr	r3, [pc, #120]	; (c50 <uart_send+0x8c>)
     bd6:	681b      	ldr	r3, [r3, #0]
     bd8:	68fa      	ldr	r2, [r7, #12]
     bda:	6879      	ldr	r1, [r7, #4]
     bdc:	188a      	adds	r2, r1, r2
     bde:	7811      	ldrb	r1, [r2, #0]
     be0:	4a1c      	ldr	r2, [pc, #112]	; (c54 <uart_send+0x90>)
     be2:	54d1      	strb	r1, [r2, r3]
     be4:	4b1a      	ldr	r3, [pc, #104]	; (c50 <uart_send+0x8c>)
     be6:	681b      	ldr	r3, [r3, #0]
     be8:	3301      	adds	r3, #1
     bea:	04db      	lsls	r3, r3, #19
     bec:	0cda      	lsrs	r2, r3, #19
     bee:	4b18      	ldr	r3, [pc, #96]	; (c50 <uart_send+0x8c>)
     bf0:	601a      	str	r2, [r3, #0]
     bf2:	4b17      	ldr	r3, [pc, #92]	; (c50 <uart_send+0x8c>)
     bf4:	681a      	ldr	r2, [r3, #0]
     bf6:	4b18      	ldr	r3, [pc, #96]	; (c58 <uart_send+0x94>)
     bf8:	681b      	ldr	r3, [r3, #0]
     bfa:	429a      	cmp	r2, r3
     bfc:	d103      	bne.n	c06 <uart_send+0x42>
     bfe:	68fb      	ldr	r3, [r7, #12]
     c00:	3301      	adds	r3, #1
     c02:	60fb      	str	r3, [r7, #12]
     c04:	e006      	b.n	c14 <uart_send+0x50>
     c06:	68fb      	ldr	r3, [r7, #12]
     c08:	3301      	adds	r3, #1
     c0a:	60fb      	str	r3, [r7, #12]
     c0c:	68fa      	ldr	r2, [r7, #12]
     c0e:	683b      	ldr	r3, [r7, #0]
     c10:	429a      	cmp	r2, r3
     c12:	dbdf      	blt.n	bd4 <uart_send+0x10>
     c14:	4b11      	ldr	r3, [pc, #68]	; (c5c <uart_send+0x98>)
     c16:	699b      	ldr	r3, [r3, #24]
     c18:	2208      	movs	r2, #8
     c1a:	4013      	ands	r3, r2
     c1c:	d10c      	bne.n	c38 <uart_send+0x74>
     c1e:	4a0f      	ldr	r2, [pc, #60]	; (c5c <uart_send+0x98>)
     c20:	4b0d      	ldr	r3, [pc, #52]	; (c58 <uart_send+0x94>)
     c22:	681b      	ldr	r3, [r3, #0]
     c24:	490b      	ldr	r1, [pc, #44]	; (c54 <uart_send+0x90>)
     c26:	5ccb      	ldrb	r3, [r1, r3]
     c28:	6013      	str	r3, [r2, #0]
     c2a:	4b0b      	ldr	r3, [pc, #44]	; (c58 <uart_send+0x94>)
     c2c:	681b      	ldr	r3, [r3, #0]
     c2e:	3301      	adds	r3, #1
     c30:	04db      	lsls	r3, r3, #19
     c32:	0cda      	lsrs	r2, r3, #19
     c34:	4b08      	ldr	r3, [pc, #32]	; (c58 <uart_send+0x94>)
     c36:	601a      	str	r2, [r3, #0]
     c38:	4b08      	ldr	r3, [pc, #32]	; (c5c <uart_send+0x98>)
     c3a:	4a08      	ldr	r2, [pc, #32]	; (c5c <uart_send+0x98>)
     c3c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c3e:	2120      	movs	r1, #32
     c40:	430a      	orrs	r2, r1
     c42:	639a      	str	r2, [r3, #56]	; 0x38
     c44:	68fb      	ldr	r3, [r7, #12]
     c46:	0018      	movs	r0, r3
     c48:	46bd      	mov	sp, r7
     c4a:	b004      	add	sp, #16
     c4c:	bd80      	pop	{r7, pc}
     c4e:	46c0      	nop			; (mov r8, r8)
     c50:	200020ec 	.word	0x200020ec
     c54:	200000e8 	.word	0x200000e8
     c58:	200020e8 	.word	0x200020e8
     c5c:	40038000 	.word	0x40038000

00000c60 <UART2_Handler>:
     c60:	b580      	push	{r7, lr}
     c62:	b082      	sub	sp, #8
     c64:	af00      	add	r7, sp, #0
     c66:	4b22      	ldr	r3, [pc, #136]	; (cf0 <UART2_Handler+0x90>)
     c68:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     c6a:	2220      	movs	r2, #32
     c6c:	4013      	ands	r3, r2
     c6e:	d019      	beq.n	ca4 <UART2_Handler+0x44>
     c70:	4b20      	ldr	r3, [pc, #128]	; (cf4 <UART2_Handler+0x94>)
     c72:	681a      	ldr	r2, [r3, #0]
     c74:	4b20      	ldr	r3, [pc, #128]	; (cf8 <UART2_Handler+0x98>)
     c76:	681b      	ldr	r3, [r3, #0]
     c78:	429a      	cmp	r2, r3
     c7a:	d106      	bne.n	c8a <UART2_Handler+0x2a>
     c7c:	4b1c      	ldr	r3, [pc, #112]	; (cf0 <UART2_Handler+0x90>)
     c7e:	4a1c      	ldr	r2, [pc, #112]	; (cf0 <UART2_Handler+0x90>)
     c80:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c82:	2120      	movs	r1, #32
     c84:	438a      	bics	r2, r1
     c86:	639a      	str	r2, [r3, #56]	; 0x38
     c88:	e00c      	b.n	ca4 <UART2_Handler+0x44>
     c8a:	4a19      	ldr	r2, [pc, #100]	; (cf0 <UART2_Handler+0x90>)
     c8c:	4b19      	ldr	r3, [pc, #100]	; (cf4 <UART2_Handler+0x94>)
     c8e:	681b      	ldr	r3, [r3, #0]
     c90:	491a      	ldr	r1, [pc, #104]	; (cfc <UART2_Handler+0x9c>)
     c92:	5ccb      	ldrb	r3, [r1, r3]
     c94:	6013      	str	r3, [r2, #0]
     c96:	4b17      	ldr	r3, [pc, #92]	; (cf4 <UART2_Handler+0x94>)
     c98:	681b      	ldr	r3, [r3, #0]
     c9a:	3301      	adds	r3, #1
     c9c:	04db      	lsls	r3, r3, #19
     c9e:	0cda      	lsrs	r2, r3, #19
     ca0:	4b14      	ldr	r3, [pc, #80]	; (cf4 <UART2_Handler+0x94>)
     ca2:	601a      	str	r2, [r3, #0]
     ca4:	4b12      	ldr	r3, [pc, #72]	; (cf0 <UART2_Handler+0x90>)
     ca6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     ca8:	2210      	movs	r2, #16
     caa:	4013      	ands	r3, r2
     cac:	d01b      	beq.n	ce6 <UART2_Handler+0x86>
     cae:	4b14      	ldr	r3, [pc, #80]	; (d00 <UART2_Handler+0xa0>)
     cb0:	681a      	ldr	r2, [r3, #0]
     cb2:	4b0f      	ldr	r3, [pc, #60]	; (cf0 <UART2_Handler+0x90>)
     cb4:	681b      	ldr	r3, [r3, #0]
     cb6:	b2d9      	uxtb	r1, r3
     cb8:	4b12      	ldr	r3, [pc, #72]	; (d04 <UART2_Handler+0xa4>)
     cba:	5499      	strb	r1, [r3, r2]
     cbc:	4b10      	ldr	r3, [pc, #64]	; (d00 <UART2_Handler+0xa0>)
     cbe:	681b      	ldr	r3, [r3, #0]
     cc0:	3301      	adds	r3, #1
     cc2:	04db      	lsls	r3, r3, #19
     cc4:	0cda      	lsrs	r2, r3, #19
     cc6:	4b0e      	ldr	r3, [pc, #56]	; (d00 <UART2_Handler+0xa0>)
     cc8:	601a      	str	r2, [r3, #0]
     cca:	f7ff fec7 	bl	a5c <uart_bsz>
     cce:	0003      	movs	r3, r0
     cd0:	607b      	str	r3, [r7, #4]
     cd2:	687b      	ldr	r3, [r7, #4]
     cd4:	4a0c      	ldr	r2, [pc, #48]	; (d08 <UART2_Handler+0xa8>)
     cd6:	4293      	cmp	r3, r2
     cd8:	dd05      	ble.n	ce6 <UART2_Handler+0x86>
     cda:	4b0c      	ldr	r3, [pc, #48]	; (d0c <UART2_Handler+0xac>)
     cdc:	4a0b      	ldr	r2, [pc, #44]	; (d0c <UART2_Handler+0xac>)
     cde:	6812      	ldr	r2, [r2, #0]
     ce0:	2180      	movs	r1, #128	; 0x80
     ce2:	430a      	orrs	r2, r1
     ce4:	601a      	str	r2, [r3, #0]
     ce6:	46c0      	nop			; (mov r8, r8)
     ce8:	46bd      	mov	sp, r7
     cea:	b002      	add	sp, #8
     cec:	bd80      	pop	{r7, pc}
     cee:	46c0      	nop			; (mov r8, r8)
     cf0:	40038000 	.word	0x40038000
     cf4:	200020e8 	.word	0x200020e8
     cf8:	200020ec 	.word	0x200020ec
     cfc:	200000e8 	.word	0x200000e8
     d00:	200040f0 	.word	0x200040f0
     d04:	200020f0 	.word	0x200020f0
     d08:	00001d4c 	.word	0x00001d4c
     d0c:	400c8000 	.word	0x400c8000

00000d10 <xputc>:
     d10:	b580      	push	{r7, lr}
     d12:	b082      	sub	sp, #8
     d14:	af00      	add	r7, sp, #0
     d16:	0002      	movs	r2, r0
     d18:	1dfb      	adds	r3, r7, #7
     d1a:	701a      	strb	r2, [r3, #0]
     d1c:	1dfb      	adds	r3, r7, #7
     d1e:	781b      	ldrb	r3, [r3, #0]
     d20:	2b0a      	cmp	r3, #10
     d22:	d102      	bne.n	d2a <xputc+0x1a>
     d24:	200d      	movs	r0, #13
     d26:	f7ff fff3 	bl	d10 <xputc>
     d2a:	4b0d      	ldr	r3, [pc, #52]	; (d60 <xputc+0x50>)
     d2c:	681b      	ldr	r3, [r3, #0]
     d2e:	2b00      	cmp	r3, #0
     d30:	d008      	beq.n	d44 <xputc+0x34>
     d32:	4b0b      	ldr	r3, [pc, #44]	; (d60 <xputc+0x50>)
     d34:	681b      	ldr	r3, [r3, #0]
     d36:	1c59      	adds	r1, r3, #1
     d38:	4a09      	ldr	r2, [pc, #36]	; (d60 <xputc+0x50>)
     d3a:	6011      	str	r1, [r2, #0]
     d3c:	1dfa      	adds	r2, r7, #7
     d3e:	7812      	ldrb	r2, [r2, #0]
     d40:	701a      	strb	r2, [r3, #0]
     d42:	e009      	b.n	d58 <xputc+0x48>
     d44:	4b07      	ldr	r3, [pc, #28]	; (d64 <xputc+0x54>)
     d46:	681b      	ldr	r3, [r3, #0]
     d48:	2b00      	cmp	r3, #0
     d4a:	d005      	beq.n	d58 <xputc+0x48>
     d4c:	4b05      	ldr	r3, [pc, #20]	; (d64 <xputc+0x54>)
     d4e:	681b      	ldr	r3, [r3, #0]
     d50:	1dfa      	adds	r2, r7, #7
     d52:	7812      	ldrb	r2, [r2, #0]
     d54:	0010      	movs	r0, r2
     d56:	4798      	blx	r3
     d58:	46bd      	mov	sp, r7
     d5a:	b002      	add	sp, #8
     d5c:	bd80      	pop	{r7, pc}
     d5e:	46c0      	nop			; (mov r8, r8)
     d60:	200040fc 	.word	0x200040fc
     d64:	200040f8 	.word	0x200040f8

00000d68 <xputs>:
     d68:	b580      	push	{r7, lr}
     d6a:	b082      	sub	sp, #8
     d6c:	af00      	add	r7, sp, #0
     d6e:	6078      	str	r0, [r7, #4]
     d70:	e006      	b.n	d80 <xputs+0x18>
     d72:	687b      	ldr	r3, [r7, #4]
     d74:	1c5a      	adds	r2, r3, #1
     d76:	607a      	str	r2, [r7, #4]
     d78:	781b      	ldrb	r3, [r3, #0]
     d7a:	0018      	movs	r0, r3
     d7c:	f7ff ffc8 	bl	d10 <xputc>
     d80:	687b      	ldr	r3, [r7, #4]
     d82:	781b      	ldrb	r3, [r3, #0]
     d84:	2b00      	cmp	r3, #0
     d86:	d1f4      	bne.n	d72 <xputs+0xa>
     d88:	46c0      	nop			; (mov r8, r8)
     d8a:	46bd      	mov	sp, r7
     d8c:	b002      	add	sp, #8
     d8e:	bd80      	pop	{r7, pc}

00000d90 <xfputs>:
     d90:	b580      	push	{r7, lr}
     d92:	b084      	sub	sp, #16
     d94:	af00      	add	r7, sp, #0
     d96:	6078      	str	r0, [r7, #4]
     d98:	6039      	str	r1, [r7, #0]
     d9a:	4b0c      	ldr	r3, [pc, #48]	; (dcc <xfputs+0x3c>)
     d9c:	681b      	ldr	r3, [r3, #0]
     d9e:	60fb      	str	r3, [r7, #12]
     da0:	4b0a      	ldr	r3, [pc, #40]	; (dcc <xfputs+0x3c>)
     da2:	687a      	ldr	r2, [r7, #4]
     da4:	601a      	str	r2, [r3, #0]
     da6:	e006      	b.n	db6 <xfputs+0x26>
     da8:	683b      	ldr	r3, [r7, #0]
     daa:	1c5a      	adds	r2, r3, #1
     dac:	603a      	str	r2, [r7, #0]
     dae:	781b      	ldrb	r3, [r3, #0]
     db0:	0018      	movs	r0, r3
     db2:	f7ff ffad 	bl	d10 <xputc>
     db6:	683b      	ldr	r3, [r7, #0]
     db8:	781b      	ldrb	r3, [r3, #0]
     dba:	2b00      	cmp	r3, #0
     dbc:	d1f4      	bne.n	da8 <xfputs+0x18>
     dbe:	4b03      	ldr	r3, [pc, #12]	; (dcc <xfputs+0x3c>)
     dc0:	68fa      	ldr	r2, [r7, #12]
     dc2:	601a      	str	r2, [r3, #0]
     dc4:	46c0      	nop			; (mov r8, r8)
     dc6:	46bd      	mov	sp, r7
     dc8:	b004      	add	sp, #16
     dca:	bd80      	pop	{r7, pc}
     dcc:	200040f8 	.word	0x200040f8

00000dd0 <xvprintf>:
     dd0:	b580      	push	{r7, lr}
     dd2:	b08e      	sub	sp, #56	; 0x38
     dd4:	af00      	add	r7, sp, #0
     dd6:	6078      	str	r0, [r7, #4]
     dd8:	6039      	str	r1, [r7, #0]
     dda:	687b      	ldr	r3, [r7, #4]
     ddc:	1c5a      	adds	r2, r3, #1
     dde:	607a      	str	r2, [r7, #4]
     de0:	221f      	movs	r2, #31
     de2:	18ba      	adds	r2, r7, r2
     de4:	781b      	ldrb	r3, [r3, #0]
     de6:	7013      	strb	r3, [r2, #0]
     de8:	231f      	movs	r3, #31
     dea:	18fb      	adds	r3, r7, r3
     dec:	781b      	ldrb	r3, [r3, #0]
     dee:	2b00      	cmp	r3, #0
     df0:	d100      	bne.n	df4 <xvprintf+0x24>
     df2:	e172      	b.n	10da <xvprintf+0x30a>
     df4:	231f      	movs	r3, #31
     df6:	18fb      	adds	r3, r7, r3
     df8:	781b      	ldrb	r3, [r3, #0]
     dfa:	2b25      	cmp	r3, #37	; 0x25
     dfc:	d006      	beq.n	e0c <xvprintf+0x3c>
     dfe:	231f      	movs	r3, #31
     e00:	18fb      	adds	r3, r7, r3
     e02:	781b      	ldrb	r3, [r3, #0]
     e04:	0018      	movs	r0, r3
     e06:	f7ff ff83 	bl	d10 <xputc>
     e0a:	e165      	b.n	10d8 <xvprintf+0x308>
     e0c:	2300      	movs	r3, #0
     e0e:	627b      	str	r3, [r7, #36]	; 0x24
     e10:	687b      	ldr	r3, [r7, #4]
     e12:	1c5a      	adds	r2, r3, #1
     e14:	607a      	str	r2, [r7, #4]
     e16:	221f      	movs	r2, #31
     e18:	18ba      	adds	r2, r7, r2
     e1a:	781b      	ldrb	r3, [r3, #0]
     e1c:	7013      	strb	r3, [r2, #0]
     e1e:	231f      	movs	r3, #31
     e20:	18fb      	adds	r3, r7, r3
     e22:	781b      	ldrb	r3, [r3, #0]
     e24:	2b30      	cmp	r3, #48	; 0x30
     e26:	d109      	bne.n	e3c <xvprintf+0x6c>
     e28:	2301      	movs	r3, #1
     e2a:	627b      	str	r3, [r7, #36]	; 0x24
     e2c:	687b      	ldr	r3, [r7, #4]
     e2e:	1c5a      	adds	r2, r3, #1
     e30:	607a      	str	r2, [r7, #4]
     e32:	221f      	movs	r2, #31
     e34:	18ba      	adds	r2, r7, r2
     e36:	781b      	ldrb	r3, [r3, #0]
     e38:	7013      	strb	r3, [r2, #0]
     e3a:	e00d      	b.n	e58 <xvprintf+0x88>
     e3c:	231f      	movs	r3, #31
     e3e:	18fb      	adds	r3, r7, r3
     e40:	781b      	ldrb	r3, [r3, #0]
     e42:	2b2d      	cmp	r3, #45	; 0x2d
     e44:	d108      	bne.n	e58 <xvprintf+0x88>
     e46:	2302      	movs	r3, #2
     e48:	627b      	str	r3, [r7, #36]	; 0x24
     e4a:	687b      	ldr	r3, [r7, #4]
     e4c:	1c5a      	adds	r2, r3, #1
     e4e:	607a      	str	r2, [r7, #4]
     e50:	221f      	movs	r2, #31
     e52:	18ba      	adds	r2, r7, r2
     e54:	781b      	ldrb	r3, [r3, #0]
     e56:	7013      	strb	r3, [r2, #0]
     e58:	2300      	movs	r3, #0
     e5a:	62bb      	str	r3, [r7, #40]	; 0x28
     e5c:	e012      	b.n	e84 <xvprintf+0xb4>
     e5e:	6aba      	ldr	r2, [r7, #40]	; 0x28
     e60:	0013      	movs	r3, r2
     e62:	009b      	lsls	r3, r3, #2
     e64:	189b      	adds	r3, r3, r2
     e66:	005b      	lsls	r3, r3, #1
     e68:	001a      	movs	r2, r3
     e6a:	231f      	movs	r3, #31
     e6c:	18fb      	adds	r3, r7, r3
     e6e:	781b      	ldrb	r3, [r3, #0]
     e70:	18d3      	adds	r3, r2, r3
     e72:	3b30      	subs	r3, #48	; 0x30
     e74:	62bb      	str	r3, [r7, #40]	; 0x28
     e76:	687b      	ldr	r3, [r7, #4]
     e78:	1c5a      	adds	r2, r3, #1
     e7a:	607a      	str	r2, [r7, #4]
     e7c:	221f      	movs	r2, #31
     e7e:	18ba      	adds	r2, r7, r2
     e80:	781b      	ldrb	r3, [r3, #0]
     e82:	7013      	strb	r3, [r2, #0]
     e84:	231f      	movs	r3, #31
     e86:	18fb      	adds	r3, r7, r3
     e88:	781b      	ldrb	r3, [r3, #0]
     e8a:	2b2f      	cmp	r3, #47	; 0x2f
     e8c:	d904      	bls.n	e98 <xvprintf+0xc8>
     e8e:	231f      	movs	r3, #31
     e90:	18fb      	adds	r3, r7, r3
     e92:	781b      	ldrb	r3, [r3, #0]
     e94:	2b39      	cmp	r3, #57	; 0x39
     e96:	d9e2      	bls.n	e5e <xvprintf+0x8e>
     e98:	231f      	movs	r3, #31
     e9a:	18fb      	adds	r3, r7, r3
     e9c:	781b      	ldrb	r3, [r3, #0]
     e9e:	2b6c      	cmp	r3, #108	; 0x6c
     ea0:	d004      	beq.n	eac <xvprintf+0xdc>
     ea2:	231f      	movs	r3, #31
     ea4:	18fb      	adds	r3, r7, r3
     ea6:	781b      	ldrb	r3, [r3, #0]
     ea8:	2b4c      	cmp	r3, #76	; 0x4c
     eaa:	d10a      	bne.n	ec2 <xvprintf+0xf2>
     eac:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     eae:	2204      	movs	r2, #4
     eb0:	4313      	orrs	r3, r2
     eb2:	627b      	str	r3, [r7, #36]	; 0x24
     eb4:	687b      	ldr	r3, [r7, #4]
     eb6:	1c5a      	adds	r2, r3, #1
     eb8:	607a      	str	r2, [r7, #4]
     eba:	221f      	movs	r2, #31
     ebc:	18ba      	adds	r2, r7, r2
     ebe:	781b      	ldrb	r3, [r3, #0]
     ec0:	7013      	strb	r3, [r2, #0]
     ec2:	231f      	movs	r3, #31
     ec4:	18fb      	adds	r3, r7, r3
     ec6:	781b      	ldrb	r3, [r3, #0]
     ec8:	2b00      	cmp	r3, #0
     eca:	d100      	bne.n	ece <xvprintf+0xfe>
     ecc:	e107      	b.n	10de <xvprintf+0x30e>
     ece:	231e      	movs	r3, #30
     ed0:	18fb      	adds	r3, r7, r3
     ed2:	221f      	movs	r2, #31
     ed4:	18ba      	adds	r2, r7, r2
     ed6:	7812      	ldrb	r2, [r2, #0]
     ed8:	701a      	strb	r2, [r3, #0]
     eda:	231e      	movs	r3, #30
     edc:	18fb      	adds	r3, r7, r3
     ede:	781b      	ldrb	r3, [r3, #0]
     ee0:	2b60      	cmp	r3, #96	; 0x60
     ee2:	d906      	bls.n	ef2 <xvprintf+0x122>
     ee4:	231e      	movs	r3, #30
     ee6:	18fb      	adds	r3, r7, r3
     ee8:	221e      	movs	r2, #30
     eea:	18ba      	adds	r2, r7, r2
     eec:	7812      	ldrb	r2, [r2, #0]
     eee:	3a20      	subs	r2, #32
     ef0:	701a      	strb	r2, [r3, #0]
     ef2:	231e      	movs	r3, #30
     ef4:	18fb      	adds	r3, r7, r3
     ef6:	781b      	ldrb	r3, [r3, #0]
     ef8:	3b42      	subs	r3, #66	; 0x42
     efa:	2b16      	cmp	r3, #22
     efc:	d847      	bhi.n	f8e <xvprintf+0x1be>
     efe:	009a      	lsls	r2, r3, #2
     f00:	4b79      	ldr	r3, [pc, #484]	; (10e8 <xvprintf+0x318>)
     f02:	18d3      	adds	r3, r2, r3
     f04:	681b      	ldr	r3, [r3, #0]
     f06:	469f      	mov	pc, r3
     f08:	683b      	ldr	r3, [r7, #0]
     f0a:	1d1a      	adds	r2, r3, #4
     f0c:	603a      	str	r2, [r7, #0]
     f0e:	681b      	ldr	r3, [r3, #0]
     f10:	61bb      	str	r3, [r7, #24]
     f12:	2300      	movs	r3, #0
     f14:	62fb      	str	r3, [r7, #44]	; 0x2c
     f16:	e002      	b.n	f1e <xvprintf+0x14e>
     f18:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f1a:	3301      	adds	r3, #1
     f1c:	62fb      	str	r3, [r7, #44]	; 0x2c
     f1e:	69ba      	ldr	r2, [r7, #24]
     f20:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f22:	18d3      	adds	r3, r2, r3
     f24:	781b      	ldrb	r3, [r3, #0]
     f26:	2b00      	cmp	r3, #0
     f28:	d1f6      	bne.n	f18 <xvprintf+0x148>
     f2a:	e002      	b.n	f32 <xvprintf+0x162>
     f2c:	2020      	movs	r0, #32
     f2e:	f7ff feef 	bl	d10 <xputc>
     f32:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f34:	2202      	movs	r2, #2
     f36:	4013      	ands	r3, r2
     f38:	d105      	bne.n	f46 <xvprintf+0x176>
     f3a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f3c:	1c5a      	adds	r2, r3, #1
     f3e:	62fa      	str	r2, [r7, #44]	; 0x2c
     f40:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f42:	4293      	cmp	r3, r2
     f44:	d3f2      	bcc.n	f2c <xvprintf+0x15c>
     f46:	69bb      	ldr	r3, [r7, #24]
     f48:	0018      	movs	r0, r3
     f4a:	f7ff ff0d 	bl	d68 <xputs>
     f4e:	e002      	b.n	f56 <xvprintf+0x186>
     f50:	2020      	movs	r0, #32
     f52:	f7ff fedd 	bl	d10 <xputc>
     f56:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     f58:	1c5a      	adds	r2, r3, #1
     f5a:	62fa      	str	r2, [r7, #44]	; 0x2c
     f5c:	6aba      	ldr	r2, [r7, #40]	; 0x28
     f5e:	4293      	cmp	r3, r2
     f60:	d3f6      	bcc.n	f50 <xvprintf+0x180>
     f62:	e0b9      	b.n	10d8 <xvprintf+0x308>
     f64:	683b      	ldr	r3, [r7, #0]
     f66:	1d1a      	adds	r2, r3, #4
     f68:	603a      	str	r2, [r7, #0]
     f6a:	681b      	ldr	r3, [r3, #0]
     f6c:	b2db      	uxtb	r3, r3
     f6e:	0018      	movs	r0, r3
     f70:	f7ff fece 	bl	d10 <xputc>
     f74:	e0b0      	b.n	10d8 <xvprintf+0x308>
     f76:	2302      	movs	r3, #2
     f78:	637b      	str	r3, [r7, #52]	; 0x34
     f7a:	e00f      	b.n	f9c <xvprintf+0x1cc>
     f7c:	2308      	movs	r3, #8
     f7e:	637b      	str	r3, [r7, #52]	; 0x34
     f80:	e00c      	b.n	f9c <xvprintf+0x1cc>
     f82:	230a      	movs	r3, #10
     f84:	637b      	str	r3, [r7, #52]	; 0x34
     f86:	e009      	b.n	f9c <xvprintf+0x1cc>
     f88:	2310      	movs	r3, #16
     f8a:	637b      	str	r3, [r7, #52]	; 0x34
     f8c:	e006      	b.n	f9c <xvprintf+0x1cc>
     f8e:	231f      	movs	r3, #31
     f90:	18fb      	adds	r3, r7, r3
     f92:	781b      	ldrb	r3, [r3, #0]
     f94:	0018      	movs	r0, r3
     f96:	f7ff febb 	bl	d10 <xputc>
     f9a:	e09d      	b.n	10d8 <xvprintf+0x308>
     f9c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     f9e:	2204      	movs	r2, #4
     fa0:	4013      	ands	r3, r2
     fa2:	d004      	beq.n	fae <xvprintf+0x1de>
     fa4:	683b      	ldr	r3, [r7, #0]
     fa6:	1d1a      	adds	r2, r3, #4
     fa8:	603a      	str	r2, [r7, #0]
     faa:	681b      	ldr	r3, [r3, #0]
     fac:	e00d      	b.n	fca <xvprintf+0x1fa>
     fae:	231e      	movs	r3, #30
     fb0:	18fb      	adds	r3, r7, r3
     fb2:	781b      	ldrb	r3, [r3, #0]
     fb4:	2b44      	cmp	r3, #68	; 0x44
     fb6:	d104      	bne.n	fc2 <xvprintf+0x1f2>
     fb8:	683b      	ldr	r3, [r7, #0]
     fba:	1d1a      	adds	r2, r3, #4
     fbc:	603a      	str	r2, [r7, #0]
     fbe:	681b      	ldr	r3, [r3, #0]
     fc0:	e003      	b.n	fca <xvprintf+0x1fa>
     fc2:	683b      	ldr	r3, [r7, #0]
     fc4:	1d1a      	adds	r2, r3, #4
     fc6:	603a      	str	r2, [r7, #0]
     fc8:	681b      	ldr	r3, [r3, #0]
     fca:	623b      	str	r3, [r7, #32]
     fcc:	231e      	movs	r3, #30
     fce:	18fb      	adds	r3, r7, r3
     fd0:	781b      	ldrb	r3, [r3, #0]
     fd2:	2b44      	cmp	r3, #68	; 0x44
     fd4:	d109      	bne.n	fea <xvprintf+0x21a>
     fd6:	6a3b      	ldr	r3, [r7, #32]
     fd8:	2b00      	cmp	r3, #0
     fda:	da06      	bge.n	fea <xvprintf+0x21a>
     fdc:	6a3b      	ldr	r3, [r7, #32]
     fde:	425b      	negs	r3, r3
     fe0:	623b      	str	r3, [r7, #32]
     fe2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     fe4:	2208      	movs	r2, #8
     fe6:	4313      	orrs	r3, r2
     fe8:	627b      	str	r3, [r7, #36]	; 0x24
     fea:	2300      	movs	r3, #0
     fec:	633b      	str	r3, [r7, #48]	; 0x30
     fee:	6a3b      	ldr	r3, [r7, #32]
     ff0:	6b79      	ldr	r1, [r7, #52]	; 0x34
     ff2:	0018      	movs	r0, r3
     ff4:	f000 fb34 	bl	1660 <__aeabi_uidivmod>
     ff8:	000b      	movs	r3, r1
     ffa:	001a      	movs	r2, r3
     ffc:	231e      	movs	r3, #30
     ffe:	18fb      	adds	r3, r7, r3
    1000:	701a      	strb	r2, [r3, #0]
    1002:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1004:	6a38      	ldr	r0, [r7, #32]
    1006:	f000 faa5 	bl	1554 <__aeabi_uidiv>
    100a:	0003      	movs	r3, r0
    100c:	623b      	str	r3, [r7, #32]
    100e:	231e      	movs	r3, #30
    1010:	18fb      	adds	r3, r7, r3
    1012:	781b      	ldrb	r3, [r3, #0]
    1014:	2b09      	cmp	r3, #9
    1016:	d90e      	bls.n	1036 <xvprintf+0x266>
    1018:	231f      	movs	r3, #31
    101a:	18fb      	adds	r3, r7, r3
    101c:	781b      	ldrb	r3, [r3, #0]
    101e:	2b78      	cmp	r3, #120	; 0x78
    1020:	d101      	bne.n	1026 <xvprintf+0x256>
    1022:	2327      	movs	r3, #39	; 0x27
    1024:	e000      	b.n	1028 <xvprintf+0x258>
    1026:	2307      	movs	r3, #7
    1028:	221e      	movs	r2, #30
    102a:	18ba      	adds	r2, r7, r2
    102c:	211e      	movs	r1, #30
    102e:	1879      	adds	r1, r7, r1
    1030:	7809      	ldrb	r1, [r1, #0]
    1032:	185b      	adds	r3, r3, r1
    1034:	7013      	strb	r3, [r2, #0]
    1036:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1038:	1c5a      	adds	r2, r3, #1
    103a:	633a      	str	r2, [r7, #48]	; 0x30
    103c:	221e      	movs	r2, #30
    103e:	18ba      	adds	r2, r7, r2
    1040:	7812      	ldrb	r2, [r2, #0]
    1042:	3230      	adds	r2, #48	; 0x30
    1044:	b2d1      	uxtb	r1, r2
    1046:	2208      	movs	r2, #8
    1048:	18ba      	adds	r2, r7, r2
    104a:	54d1      	strb	r1, [r2, r3]
    104c:	6a3b      	ldr	r3, [r7, #32]
    104e:	2b00      	cmp	r3, #0
    1050:	d002      	beq.n	1058 <xvprintf+0x288>
    1052:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1054:	2b0f      	cmp	r3, #15
    1056:	d9ca      	bls.n	fee <xvprintf+0x21e>
    1058:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    105a:	2208      	movs	r2, #8
    105c:	4013      	ands	r3, r2
    105e:	d006      	beq.n	106e <xvprintf+0x29e>
    1060:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1062:	1c5a      	adds	r2, r3, #1
    1064:	633a      	str	r2, [r7, #48]	; 0x30
    1066:	2208      	movs	r2, #8
    1068:	18ba      	adds	r2, r7, r2
    106a:	212d      	movs	r1, #45	; 0x2d
    106c:	54d1      	strb	r1, [r2, r3]
    106e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1070:	62fb      	str	r3, [r7, #44]	; 0x2c
    1072:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1074:	2201      	movs	r2, #1
    1076:	4013      	ands	r3, r2
    1078:	d001      	beq.n	107e <xvprintf+0x2ae>
    107a:	2230      	movs	r2, #48	; 0x30
    107c:	e000      	b.n	1080 <xvprintf+0x2b0>
    107e:	2220      	movs	r2, #32
    1080:	231e      	movs	r3, #30
    1082:	18fb      	adds	r3, r7, r3
    1084:	701a      	strb	r2, [r3, #0]
    1086:	e005      	b.n	1094 <xvprintf+0x2c4>
    1088:	231e      	movs	r3, #30
    108a:	18fb      	adds	r3, r7, r3
    108c:	781b      	ldrb	r3, [r3, #0]
    108e:	0018      	movs	r0, r3
    1090:	f7ff fe3e 	bl	d10 <xputc>
    1094:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1096:	2202      	movs	r2, #2
    1098:	4013      	ands	r3, r2
    109a:	d105      	bne.n	10a8 <xvprintf+0x2d8>
    109c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    109e:	1c5a      	adds	r2, r3, #1
    10a0:	62fa      	str	r2, [r7, #44]	; 0x2c
    10a2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    10a4:	4293      	cmp	r3, r2
    10a6:	d3ef      	bcc.n	1088 <xvprintf+0x2b8>
    10a8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10aa:	3b01      	subs	r3, #1
    10ac:	633b      	str	r3, [r7, #48]	; 0x30
    10ae:	2308      	movs	r3, #8
    10b0:	18fa      	adds	r2, r7, r3
    10b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10b4:	18d3      	adds	r3, r2, r3
    10b6:	781b      	ldrb	r3, [r3, #0]
    10b8:	0018      	movs	r0, r3
    10ba:	f7ff fe29 	bl	d10 <xputc>
    10be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    10c0:	2b00      	cmp	r3, #0
    10c2:	d1f1      	bne.n	10a8 <xvprintf+0x2d8>
    10c4:	e002      	b.n	10cc <xvprintf+0x2fc>
    10c6:	2020      	movs	r0, #32
    10c8:	f7ff fe22 	bl	d10 <xputc>
    10cc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10ce:	1c5a      	adds	r2, r3, #1
    10d0:	62fa      	str	r2, [r7, #44]	; 0x2c
    10d2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    10d4:	4293      	cmp	r3, r2
    10d6:	d3f6      	bcc.n	10c6 <xvprintf+0x2f6>
    10d8:	e67f      	b.n	dda <xvprintf+0xa>
    10da:	46c0      	nop			; (mov r8, r8)
    10dc:	e000      	b.n	10e0 <xvprintf+0x310>
    10de:	46c0      	nop			; (mov r8, r8)
    10e0:	46c0      	nop			; (mov r8, r8)
    10e2:	46bd      	mov	sp, r7
    10e4:	b00e      	add	sp, #56	; 0x38
    10e6:	bd80      	pop	{r7, pc}
    10e8:	0000166c 	.word	0x0000166c

000010ec <xprintf>:
    10ec:	b40f      	push	{r0, r1, r2, r3}
    10ee:	b580      	push	{r7, lr}
    10f0:	b082      	sub	sp, #8
    10f2:	af00      	add	r7, sp, #0
    10f4:	2314      	movs	r3, #20
    10f6:	18fb      	adds	r3, r7, r3
    10f8:	607b      	str	r3, [r7, #4]
    10fa:	687a      	ldr	r2, [r7, #4]
    10fc:	693b      	ldr	r3, [r7, #16]
    10fe:	0011      	movs	r1, r2
    1100:	0018      	movs	r0, r3
    1102:	f7ff fe65 	bl	dd0 <xvprintf>
    1106:	46c0      	nop			; (mov r8, r8)
    1108:	46bd      	mov	sp, r7
    110a:	b002      	add	sp, #8
    110c:	bc80      	pop	{r7}
    110e:	bc08      	pop	{r3}
    1110:	b004      	add	sp, #16
    1112:	4718      	bx	r3

00001114 <xsprintf>:
    1114:	b40e      	push	{r1, r2, r3}
    1116:	b580      	push	{r7, lr}
    1118:	b085      	sub	sp, #20
    111a:	af00      	add	r7, sp, #0
    111c:	6078      	str	r0, [r7, #4]
    111e:	4b0d      	ldr	r3, [pc, #52]	; (1154 <xsprintf+0x40>)
    1120:	687a      	ldr	r2, [r7, #4]
    1122:	601a      	str	r2, [r3, #0]
    1124:	2320      	movs	r3, #32
    1126:	18fb      	adds	r3, r7, r3
    1128:	60fb      	str	r3, [r7, #12]
    112a:	68fa      	ldr	r2, [r7, #12]
    112c:	69fb      	ldr	r3, [r7, #28]
    112e:	0011      	movs	r1, r2
    1130:	0018      	movs	r0, r3
    1132:	f7ff fe4d 	bl	dd0 <xvprintf>
    1136:	4b07      	ldr	r3, [pc, #28]	; (1154 <xsprintf+0x40>)
    1138:	681b      	ldr	r3, [r3, #0]
    113a:	2200      	movs	r2, #0
    113c:	701a      	strb	r2, [r3, #0]
    113e:	4b05      	ldr	r3, [pc, #20]	; (1154 <xsprintf+0x40>)
    1140:	2200      	movs	r2, #0
    1142:	601a      	str	r2, [r3, #0]
    1144:	46c0      	nop			; (mov r8, r8)
    1146:	46bd      	mov	sp, r7
    1148:	b005      	add	sp, #20
    114a:	bc80      	pop	{r7}
    114c:	bc08      	pop	{r3}
    114e:	b003      	add	sp, #12
    1150:	4718      	bx	r3
    1152:	46c0      	nop			; (mov r8, r8)
    1154:	200040fc 	.word	0x200040fc

00001158 <xfprintf>:
    1158:	b40e      	push	{r1, r2, r3}
    115a:	b580      	push	{r7, lr}
    115c:	b085      	sub	sp, #20
    115e:	af00      	add	r7, sp, #0
    1160:	6078      	str	r0, [r7, #4]
    1162:	4b0c      	ldr	r3, [pc, #48]	; (1194 <xfprintf+0x3c>)
    1164:	681b      	ldr	r3, [r3, #0]
    1166:	60fb      	str	r3, [r7, #12]
    1168:	4b0a      	ldr	r3, [pc, #40]	; (1194 <xfprintf+0x3c>)
    116a:	687a      	ldr	r2, [r7, #4]
    116c:	601a      	str	r2, [r3, #0]
    116e:	2320      	movs	r3, #32
    1170:	18fb      	adds	r3, r7, r3
    1172:	60bb      	str	r3, [r7, #8]
    1174:	68ba      	ldr	r2, [r7, #8]
    1176:	69fb      	ldr	r3, [r7, #28]
    1178:	0011      	movs	r1, r2
    117a:	0018      	movs	r0, r3
    117c:	f7ff fe28 	bl	dd0 <xvprintf>
    1180:	4b04      	ldr	r3, [pc, #16]	; (1194 <xfprintf+0x3c>)
    1182:	68fa      	ldr	r2, [r7, #12]
    1184:	601a      	str	r2, [r3, #0]
    1186:	46c0      	nop			; (mov r8, r8)
    1188:	46bd      	mov	sp, r7
    118a:	b005      	add	sp, #20
    118c:	bc80      	pop	{r7}
    118e:	bc08      	pop	{r3}
    1190:	b003      	add	sp, #12
    1192:	4718      	bx	r3
    1194:	200040f8 	.word	0x200040f8

00001198 <put_dump>:
    1198:	b580      	push	{r7, lr}
    119a:	b088      	sub	sp, #32
    119c:	af00      	add	r7, sp, #0
    119e:	60f8      	str	r0, [r7, #12]
    11a0:	60b9      	str	r1, [r7, #8]
    11a2:	607a      	str	r2, [r7, #4]
    11a4:	603b      	str	r3, [r7, #0]
    11a6:	68ba      	ldr	r2, [r7, #8]
    11a8:	4b38      	ldr	r3, [pc, #224]	; (128c <put_dump+0xf4>)
    11aa:	0011      	movs	r1, r2
    11ac:	0018      	movs	r0, r3
    11ae:	f7ff ff9d 	bl	10ec <xprintf>
    11b2:	683b      	ldr	r3, [r7, #0]
    11b4:	2b02      	cmp	r3, #2
    11b6:	d03c      	beq.n	1232 <put_dump+0x9a>
    11b8:	2b04      	cmp	r3, #4
    11ba:	d04d      	beq.n	1258 <put_dump+0xc0>
    11bc:	2b01      	cmp	r3, #1
    11be:	d15d      	bne.n	127c <put_dump+0xe4>
    11c0:	68fb      	ldr	r3, [r7, #12]
    11c2:	613b      	str	r3, [r7, #16]
    11c4:	2300      	movs	r3, #0
    11c6:	61fb      	str	r3, [r7, #28]
    11c8:	e00c      	b.n	11e4 <put_dump+0x4c>
    11ca:	69fb      	ldr	r3, [r7, #28]
    11cc:	693a      	ldr	r2, [r7, #16]
    11ce:	18d3      	adds	r3, r2, r3
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	001a      	movs	r2, r3
    11d4:	4b2e      	ldr	r3, [pc, #184]	; (1290 <put_dump+0xf8>)
    11d6:	0011      	movs	r1, r2
    11d8:	0018      	movs	r0, r3
    11da:	f7ff ff87 	bl	10ec <xprintf>
    11de:	69fb      	ldr	r3, [r7, #28]
    11e0:	3301      	adds	r3, #1
    11e2:	61fb      	str	r3, [r7, #28]
    11e4:	69fa      	ldr	r2, [r7, #28]
    11e6:	687b      	ldr	r3, [r7, #4]
    11e8:	429a      	cmp	r2, r3
    11ea:	dbee      	blt.n	11ca <put_dump+0x32>
    11ec:	2020      	movs	r0, #32
    11ee:	f7ff fd8f 	bl	d10 <xputc>
    11f2:	2300      	movs	r3, #0
    11f4:	61fb      	str	r3, [r7, #28]
    11f6:	e017      	b.n	1228 <put_dump+0x90>
    11f8:	69fb      	ldr	r3, [r7, #28]
    11fa:	693a      	ldr	r2, [r7, #16]
    11fc:	18d3      	adds	r3, r2, r3
    11fe:	781b      	ldrb	r3, [r3, #0]
    1200:	2b1f      	cmp	r3, #31
    1202:	d90a      	bls.n	121a <put_dump+0x82>
    1204:	69fb      	ldr	r3, [r7, #28]
    1206:	693a      	ldr	r2, [r7, #16]
    1208:	18d3      	adds	r3, r2, r3
    120a:	781b      	ldrb	r3, [r3, #0]
    120c:	2b7e      	cmp	r3, #126	; 0x7e
    120e:	d804      	bhi.n	121a <put_dump+0x82>
    1210:	69fb      	ldr	r3, [r7, #28]
    1212:	693a      	ldr	r2, [r7, #16]
    1214:	18d3      	adds	r3, r2, r3
    1216:	781b      	ldrb	r3, [r3, #0]
    1218:	e000      	b.n	121c <put_dump+0x84>
    121a:	232e      	movs	r3, #46	; 0x2e
    121c:	0018      	movs	r0, r3
    121e:	f7ff fd77 	bl	d10 <xputc>
    1222:	69fb      	ldr	r3, [r7, #28]
    1224:	3301      	adds	r3, #1
    1226:	61fb      	str	r3, [r7, #28]
    1228:	69fa      	ldr	r2, [r7, #28]
    122a:	687b      	ldr	r3, [r7, #4]
    122c:	429a      	cmp	r2, r3
    122e:	dbe3      	blt.n	11f8 <put_dump+0x60>
    1230:	e024      	b.n	127c <put_dump+0xe4>
    1232:	68fb      	ldr	r3, [r7, #12]
    1234:	61bb      	str	r3, [r7, #24]
    1236:	69bb      	ldr	r3, [r7, #24]
    1238:	1c9a      	adds	r2, r3, #2
    123a:	61ba      	str	r2, [r7, #24]
    123c:	881b      	ldrh	r3, [r3, #0]
    123e:	001a      	movs	r2, r3
    1240:	4b14      	ldr	r3, [pc, #80]	; (1294 <put_dump+0xfc>)
    1242:	0011      	movs	r1, r2
    1244:	0018      	movs	r0, r3
    1246:	f7ff ff51 	bl	10ec <xprintf>
    124a:	687b      	ldr	r3, [r7, #4]
    124c:	3b01      	subs	r3, #1
    124e:	607b      	str	r3, [r7, #4]
    1250:	687b      	ldr	r3, [r7, #4]
    1252:	2b00      	cmp	r3, #0
    1254:	d1ef      	bne.n	1236 <put_dump+0x9e>
    1256:	e011      	b.n	127c <put_dump+0xe4>
    1258:	68fb      	ldr	r3, [r7, #12]
    125a:	617b      	str	r3, [r7, #20]
    125c:	697b      	ldr	r3, [r7, #20]
    125e:	1d1a      	adds	r2, r3, #4
    1260:	617a      	str	r2, [r7, #20]
    1262:	681a      	ldr	r2, [r3, #0]
    1264:	4b0c      	ldr	r3, [pc, #48]	; (1298 <put_dump+0x100>)
    1266:	0011      	movs	r1, r2
    1268:	0018      	movs	r0, r3
    126a:	f7ff ff3f 	bl	10ec <xprintf>
    126e:	687b      	ldr	r3, [r7, #4]
    1270:	3b01      	subs	r3, #1
    1272:	607b      	str	r3, [r7, #4]
    1274:	687b      	ldr	r3, [r7, #4]
    1276:	2b00      	cmp	r3, #0
    1278:	d1f0      	bne.n	125c <put_dump+0xc4>
    127a:	46c0      	nop			; (mov r8, r8)
    127c:	200a      	movs	r0, #10
    127e:	f7ff fd47 	bl	d10 <xputc>
    1282:	46c0      	nop			; (mov r8, r8)
    1284:	46bd      	mov	sp, r7
    1286:	b008      	add	sp, #32
    1288:	bd80      	pop	{r7, pc}
    128a:	46c0      	nop			; (mov r8, r8)
    128c:	000016c8 	.word	0x000016c8
    1290:	000016d0 	.word	0x000016d0
    1294:	000016d8 	.word	0x000016d8
    1298:	000016e0 	.word	0x000016e0

0000129c <xgets>:
    129c:	b580      	push	{r7, lr}
    129e:	b084      	sub	sp, #16
    12a0:	af00      	add	r7, sp, #0
    12a2:	6078      	str	r0, [r7, #4]
    12a4:	6039      	str	r1, [r7, #0]
    12a6:	4b24      	ldr	r3, [pc, #144]	; (1338 <xgets+0x9c>)
    12a8:	681b      	ldr	r3, [r3, #0]
    12aa:	2b00      	cmp	r3, #0
    12ac:	d101      	bne.n	12b2 <xgets+0x16>
    12ae:	2300      	movs	r3, #0
    12b0:	e03e      	b.n	1330 <xgets+0x94>
    12b2:	2300      	movs	r3, #0
    12b4:	60fb      	str	r3, [r7, #12]
    12b6:	4b20      	ldr	r3, [pc, #128]	; (1338 <xgets+0x9c>)
    12b8:	681b      	ldr	r3, [r3, #0]
    12ba:	4798      	blx	r3
    12bc:	0003      	movs	r3, r0
    12be:	60bb      	str	r3, [r7, #8]
    12c0:	68bb      	ldr	r3, [r7, #8]
    12c2:	2b00      	cmp	r3, #0
    12c4:	d101      	bne.n	12ca <xgets+0x2e>
    12c6:	2300      	movs	r3, #0
    12c8:	e032      	b.n	1330 <xgets+0x94>
    12ca:	68bb      	ldr	r3, [r7, #8]
    12cc:	2b0d      	cmp	r3, #13
    12ce:	d025      	beq.n	131c <xgets+0x80>
    12d0:	68bb      	ldr	r3, [r7, #8]
    12d2:	2b08      	cmp	r3, #8
    12d4:	d10b      	bne.n	12ee <xgets+0x52>
    12d6:	68fb      	ldr	r3, [r7, #12]
    12d8:	2b00      	cmp	r3, #0
    12da:	d008      	beq.n	12ee <xgets+0x52>
    12dc:	68fb      	ldr	r3, [r7, #12]
    12de:	3b01      	subs	r3, #1
    12e0:	60fb      	str	r3, [r7, #12]
    12e2:	68bb      	ldr	r3, [r7, #8]
    12e4:	b2db      	uxtb	r3, r3
    12e6:	0018      	movs	r0, r3
    12e8:	f7ff fd12 	bl	d10 <xputc>
    12ec:	e015      	b.n	131a <xgets+0x7e>
    12ee:	68bb      	ldr	r3, [r7, #8]
    12f0:	2b1f      	cmp	r3, #31
    12f2:	dde0      	ble.n	12b6 <xgets+0x1a>
    12f4:	683b      	ldr	r3, [r7, #0]
    12f6:	1e5a      	subs	r2, r3, #1
    12f8:	68fb      	ldr	r3, [r7, #12]
    12fa:	429a      	cmp	r2, r3
    12fc:	dddb      	ble.n	12b6 <xgets+0x1a>
    12fe:	68fb      	ldr	r3, [r7, #12]
    1300:	1c5a      	adds	r2, r3, #1
    1302:	60fa      	str	r2, [r7, #12]
    1304:	001a      	movs	r2, r3
    1306:	687b      	ldr	r3, [r7, #4]
    1308:	189b      	adds	r3, r3, r2
    130a:	68ba      	ldr	r2, [r7, #8]
    130c:	b2d2      	uxtb	r2, r2
    130e:	701a      	strb	r2, [r3, #0]
    1310:	68bb      	ldr	r3, [r7, #8]
    1312:	b2db      	uxtb	r3, r3
    1314:	0018      	movs	r0, r3
    1316:	f7ff fcfb 	bl	d10 <xputc>
    131a:	e7cc      	b.n	12b6 <xgets+0x1a>
    131c:	46c0      	nop			; (mov r8, r8)
    131e:	68fb      	ldr	r3, [r7, #12]
    1320:	687a      	ldr	r2, [r7, #4]
    1322:	18d3      	adds	r3, r2, r3
    1324:	2200      	movs	r2, #0
    1326:	701a      	strb	r2, [r3, #0]
    1328:	200a      	movs	r0, #10
    132a:	f7ff fcf1 	bl	d10 <xputc>
    132e:	2301      	movs	r3, #1
    1330:	0018      	movs	r0, r3
    1332:	46bd      	mov	sp, r7
    1334:	b004      	add	sp, #16
    1336:	bd80      	pop	{r7, pc}
    1338:	20004100 	.word	0x20004100

0000133c <xfgets>:
    133c:	b580      	push	{r7, lr}
    133e:	b086      	sub	sp, #24
    1340:	af00      	add	r7, sp, #0
    1342:	60f8      	str	r0, [r7, #12]
    1344:	60b9      	str	r1, [r7, #8]
    1346:	607a      	str	r2, [r7, #4]
    1348:	4b0a      	ldr	r3, [pc, #40]	; (1374 <xfgets+0x38>)
    134a:	681b      	ldr	r3, [r3, #0]
    134c:	617b      	str	r3, [r7, #20]
    134e:	4b09      	ldr	r3, [pc, #36]	; (1374 <xfgets+0x38>)
    1350:	68fa      	ldr	r2, [r7, #12]
    1352:	601a      	str	r2, [r3, #0]
    1354:	687a      	ldr	r2, [r7, #4]
    1356:	68bb      	ldr	r3, [r7, #8]
    1358:	0011      	movs	r1, r2
    135a:	0018      	movs	r0, r3
    135c:	f7ff ff9e 	bl	129c <xgets>
    1360:	0003      	movs	r3, r0
    1362:	613b      	str	r3, [r7, #16]
    1364:	4b03      	ldr	r3, [pc, #12]	; (1374 <xfgets+0x38>)
    1366:	697a      	ldr	r2, [r7, #20]
    1368:	601a      	str	r2, [r3, #0]
    136a:	693b      	ldr	r3, [r7, #16]
    136c:	0018      	movs	r0, r3
    136e:	46bd      	mov	sp, r7
    1370:	b006      	add	sp, #24
    1372:	bd80      	pop	{r7, pc}
    1374:	20004100 	.word	0x20004100

00001378 <xatoi>:
    1378:	b580      	push	{r7, lr}
    137a:	b084      	sub	sp, #16
    137c:	af00      	add	r7, sp, #0
    137e:	6078      	str	r0, [r7, #4]
    1380:	6039      	str	r1, [r7, #0]
    1382:	2309      	movs	r3, #9
    1384:	18fb      	adds	r3, r7, r3
    1386:	2200      	movs	r2, #0
    1388:	701a      	strb	r2, [r3, #0]
    138a:	683b      	ldr	r3, [r7, #0]
    138c:	2200      	movs	r2, #0
    138e:	601a      	str	r2, [r3, #0]
    1390:	e004      	b.n	139c <xatoi+0x24>
    1392:	687b      	ldr	r3, [r7, #4]
    1394:	681b      	ldr	r3, [r3, #0]
    1396:	1c5a      	adds	r2, r3, #1
    1398:	687b      	ldr	r3, [r7, #4]
    139a:	601a      	str	r2, [r3, #0]
    139c:	687b      	ldr	r3, [r7, #4]
    139e:	681a      	ldr	r2, [r3, #0]
    13a0:	230b      	movs	r3, #11
    13a2:	18fb      	adds	r3, r7, r3
    13a4:	7812      	ldrb	r2, [r2, #0]
    13a6:	701a      	strb	r2, [r3, #0]
    13a8:	230b      	movs	r3, #11
    13aa:	18fb      	adds	r3, r7, r3
    13ac:	781b      	ldrb	r3, [r3, #0]
    13ae:	2b20      	cmp	r3, #32
    13b0:	d0ef      	beq.n	1392 <xatoi+0x1a>
    13b2:	230b      	movs	r3, #11
    13b4:	18fb      	adds	r3, r7, r3
    13b6:	781b      	ldrb	r3, [r3, #0]
    13b8:	2b2d      	cmp	r3, #45	; 0x2d
    13ba:	d10e      	bne.n	13da <xatoi+0x62>
    13bc:	2309      	movs	r3, #9
    13be:	18fb      	adds	r3, r7, r3
    13c0:	2201      	movs	r2, #1
    13c2:	701a      	strb	r2, [r3, #0]
    13c4:	687b      	ldr	r3, [r7, #4]
    13c6:	681b      	ldr	r3, [r3, #0]
    13c8:	1c5a      	adds	r2, r3, #1
    13ca:	687b      	ldr	r3, [r7, #4]
    13cc:	601a      	str	r2, [r3, #0]
    13ce:	687b      	ldr	r3, [r7, #4]
    13d0:	681a      	ldr	r2, [r3, #0]
    13d2:	230b      	movs	r3, #11
    13d4:	18fb      	adds	r3, r7, r3
    13d6:	7812      	ldrb	r2, [r2, #0]
    13d8:	701a      	strb	r2, [r3, #0]
    13da:	230b      	movs	r3, #11
    13dc:	18fb      	adds	r3, r7, r3
    13de:	781b      	ldrb	r3, [r3, #0]
    13e0:	2b30      	cmp	r3, #48	; 0x30
    13e2:	d149      	bne.n	1478 <xatoi+0x100>
    13e4:	687b      	ldr	r3, [r7, #4]
    13e6:	681b      	ldr	r3, [r3, #0]
    13e8:	1c5a      	adds	r2, r3, #1
    13ea:	687b      	ldr	r3, [r7, #4]
    13ec:	601a      	str	r2, [r3, #0]
    13ee:	687b      	ldr	r3, [r7, #4]
    13f0:	681a      	ldr	r2, [r3, #0]
    13f2:	230b      	movs	r3, #11
    13f4:	18fb      	adds	r3, r7, r3
    13f6:	7812      	ldrb	r2, [r2, #0]
    13f8:	701a      	strb	r2, [r3, #0]
    13fa:	230b      	movs	r3, #11
    13fc:	18fb      	adds	r3, r7, r3
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	2b62      	cmp	r3, #98	; 0x62
    1402:	d011      	beq.n	1428 <xatoi+0xb0>
    1404:	2b78      	cmp	r3, #120	; 0x78
    1406:	d11f      	bne.n	1448 <xatoi+0xd0>
    1408:	230a      	movs	r3, #10
    140a:	18fb      	adds	r3, r7, r3
    140c:	2210      	movs	r2, #16
    140e:	701a      	strb	r2, [r3, #0]
    1410:	687b      	ldr	r3, [r7, #4]
    1412:	681b      	ldr	r3, [r3, #0]
    1414:	1c5a      	adds	r2, r3, #1
    1416:	687b      	ldr	r3, [r7, #4]
    1418:	601a      	str	r2, [r3, #0]
    141a:	687b      	ldr	r3, [r7, #4]
    141c:	681a      	ldr	r2, [r3, #0]
    141e:	230b      	movs	r3, #11
    1420:	18fb      	adds	r3, r7, r3
    1422:	7812      	ldrb	r2, [r2, #0]
    1424:	701a      	strb	r2, [r3, #0]
    1426:	e037      	b.n	1498 <xatoi+0x120>
    1428:	230a      	movs	r3, #10
    142a:	18fb      	adds	r3, r7, r3
    142c:	2202      	movs	r2, #2
    142e:	701a      	strb	r2, [r3, #0]
    1430:	687b      	ldr	r3, [r7, #4]
    1432:	681b      	ldr	r3, [r3, #0]
    1434:	1c5a      	adds	r2, r3, #1
    1436:	687b      	ldr	r3, [r7, #4]
    1438:	601a      	str	r2, [r3, #0]
    143a:	687b      	ldr	r3, [r7, #4]
    143c:	681a      	ldr	r2, [r3, #0]
    143e:	230b      	movs	r3, #11
    1440:	18fb      	adds	r3, r7, r3
    1442:	7812      	ldrb	r2, [r2, #0]
    1444:	701a      	strb	r2, [r3, #0]
    1446:	e027      	b.n	1498 <xatoi+0x120>
    1448:	230b      	movs	r3, #11
    144a:	18fb      	adds	r3, r7, r3
    144c:	781b      	ldrb	r3, [r3, #0]
    144e:	2b20      	cmp	r3, #32
    1450:	d801      	bhi.n	1456 <xatoi+0xde>
    1452:	2301      	movs	r3, #1
    1454:	e079      	b.n	154a <xatoi+0x1d2>
    1456:	230b      	movs	r3, #11
    1458:	18fb      	adds	r3, r7, r3
    145a:	781b      	ldrb	r3, [r3, #0]
    145c:	2b2f      	cmp	r3, #47	; 0x2f
    145e:	d904      	bls.n	146a <xatoi+0xf2>
    1460:	230b      	movs	r3, #11
    1462:	18fb      	adds	r3, r7, r3
    1464:	781b      	ldrb	r3, [r3, #0]
    1466:	2b39      	cmp	r3, #57	; 0x39
    1468:	d901      	bls.n	146e <xatoi+0xf6>
    146a:	2300      	movs	r3, #0
    146c:	e06d      	b.n	154a <xatoi+0x1d2>
    146e:	230a      	movs	r3, #10
    1470:	18fb      	adds	r3, r7, r3
    1472:	2208      	movs	r2, #8
    1474:	701a      	strb	r2, [r3, #0]
    1476:	e00f      	b.n	1498 <xatoi+0x120>
    1478:	230b      	movs	r3, #11
    147a:	18fb      	adds	r3, r7, r3
    147c:	781b      	ldrb	r3, [r3, #0]
    147e:	2b2f      	cmp	r3, #47	; 0x2f
    1480:	d904      	bls.n	148c <xatoi+0x114>
    1482:	230b      	movs	r3, #11
    1484:	18fb      	adds	r3, r7, r3
    1486:	781b      	ldrb	r3, [r3, #0]
    1488:	2b39      	cmp	r3, #57	; 0x39
    148a:	d901      	bls.n	1490 <xatoi+0x118>
    148c:	2300      	movs	r3, #0
    148e:	e05c      	b.n	154a <xatoi+0x1d2>
    1490:	230a      	movs	r3, #10
    1492:	18fb      	adds	r3, r7, r3
    1494:	220a      	movs	r2, #10
    1496:	701a      	strb	r2, [r3, #0]
    1498:	2300      	movs	r3, #0
    149a:	60fb      	str	r3, [r7, #12]
    149c:	e044      	b.n	1528 <xatoi+0x1b0>
    149e:	230b      	movs	r3, #11
    14a0:	18fb      	adds	r3, r7, r3
    14a2:	781b      	ldrb	r3, [r3, #0]
    14a4:	2b60      	cmp	r3, #96	; 0x60
    14a6:	d906      	bls.n	14b6 <xatoi+0x13e>
    14a8:	230b      	movs	r3, #11
    14aa:	18fb      	adds	r3, r7, r3
    14ac:	220b      	movs	r2, #11
    14ae:	18ba      	adds	r2, r7, r2
    14b0:	7812      	ldrb	r2, [r2, #0]
    14b2:	3a20      	subs	r2, #32
    14b4:	701a      	strb	r2, [r3, #0]
    14b6:	230b      	movs	r3, #11
    14b8:	18fb      	adds	r3, r7, r3
    14ba:	220b      	movs	r2, #11
    14bc:	18ba      	adds	r2, r7, r2
    14be:	7812      	ldrb	r2, [r2, #0]
    14c0:	3a30      	subs	r2, #48	; 0x30
    14c2:	701a      	strb	r2, [r3, #0]
    14c4:	230b      	movs	r3, #11
    14c6:	18fb      	adds	r3, r7, r3
    14c8:	781b      	ldrb	r3, [r3, #0]
    14ca:	2b10      	cmp	r3, #16
    14cc:	d90d      	bls.n	14ea <xatoi+0x172>
    14ce:	230b      	movs	r3, #11
    14d0:	18fb      	adds	r3, r7, r3
    14d2:	220b      	movs	r2, #11
    14d4:	18ba      	adds	r2, r7, r2
    14d6:	7812      	ldrb	r2, [r2, #0]
    14d8:	3a07      	subs	r2, #7
    14da:	701a      	strb	r2, [r3, #0]
    14dc:	230b      	movs	r3, #11
    14de:	18fb      	adds	r3, r7, r3
    14e0:	781b      	ldrb	r3, [r3, #0]
    14e2:	2b09      	cmp	r3, #9
    14e4:	d801      	bhi.n	14ea <xatoi+0x172>
    14e6:	2300      	movs	r3, #0
    14e8:	e02f      	b.n	154a <xatoi+0x1d2>
    14ea:	230b      	movs	r3, #11
    14ec:	18fa      	adds	r2, r7, r3
    14ee:	230a      	movs	r3, #10
    14f0:	18fb      	adds	r3, r7, r3
    14f2:	7812      	ldrb	r2, [r2, #0]
    14f4:	781b      	ldrb	r3, [r3, #0]
    14f6:	429a      	cmp	r2, r3
    14f8:	d301      	bcc.n	14fe <xatoi+0x186>
    14fa:	2300      	movs	r3, #0
    14fc:	e025      	b.n	154a <xatoi+0x1d2>
    14fe:	230a      	movs	r3, #10
    1500:	18fb      	adds	r3, r7, r3
    1502:	781b      	ldrb	r3, [r3, #0]
    1504:	68fa      	ldr	r2, [r7, #12]
    1506:	435a      	muls	r2, r3
    1508:	230b      	movs	r3, #11
    150a:	18fb      	adds	r3, r7, r3
    150c:	781b      	ldrb	r3, [r3, #0]
    150e:	18d3      	adds	r3, r2, r3
    1510:	60fb      	str	r3, [r7, #12]
    1512:	687b      	ldr	r3, [r7, #4]
    1514:	681b      	ldr	r3, [r3, #0]
    1516:	1c5a      	adds	r2, r3, #1
    1518:	687b      	ldr	r3, [r7, #4]
    151a:	601a      	str	r2, [r3, #0]
    151c:	687b      	ldr	r3, [r7, #4]
    151e:	681a      	ldr	r2, [r3, #0]
    1520:	230b      	movs	r3, #11
    1522:	18fb      	adds	r3, r7, r3
    1524:	7812      	ldrb	r2, [r2, #0]
    1526:	701a      	strb	r2, [r3, #0]
    1528:	230b      	movs	r3, #11
    152a:	18fb      	adds	r3, r7, r3
    152c:	781b      	ldrb	r3, [r3, #0]
    152e:	2b20      	cmp	r3, #32
    1530:	d8b5      	bhi.n	149e <xatoi+0x126>
    1532:	2309      	movs	r3, #9
    1534:	18fb      	adds	r3, r7, r3
    1536:	781b      	ldrb	r3, [r3, #0]
    1538:	2b00      	cmp	r3, #0
    153a:	d002      	beq.n	1542 <xatoi+0x1ca>
    153c:	68fb      	ldr	r3, [r7, #12]
    153e:	425b      	negs	r3, r3
    1540:	60fb      	str	r3, [r7, #12]
    1542:	68fa      	ldr	r2, [r7, #12]
    1544:	683b      	ldr	r3, [r7, #0]
    1546:	601a      	str	r2, [r3, #0]
    1548:	2301      	movs	r3, #1
    154a:	0018      	movs	r0, r3
    154c:	46bd      	mov	sp, r7
    154e:	b004      	add	sp, #16
    1550:	bd80      	pop	{r7, pc}
    1552:	46c0      	nop			; (mov r8, r8)

00001554 <__aeabi_uidiv>:
    1554:	2200      	movs	r2, #0
    1556:	0843      	lsrs	r3, r0, #1
    1558:	428b      	cmp	r3, r1
    155a:	d374      	bcc.n	1646 <__aeabi_uidiv+0xf2>
    155c:	0903      	lsrs	r3, r0, #4
    155e:	428b      	cmp	r3, r1
    1560:	d35f      	bcc.n	1622 <__aeabi_uidiv+0xce>
    1562:	0a03      	lsrs	r3, r0, #8
    1564:	428b      	cmp	r3, r1
    1566:	d344      	bcc.n	15f2 <__aeabi_uidiv+0x9e>
    1568:	0b03      	lsrs	r3, r0, #12
    156a:	428b      	cmp	r3, r1
    156c:	d328      	bcc.n	15c0 <__aeabi_uidiv+0x6c>
    156e:	0c03      	lsrs	r3, r0, #16
    1570:	428b      	cmp	r3, r1
    1572:	d30d      	bcc.n	1590 <__aeabi_uidiv+0x3c>
    1574:	22ff      	movs	r2, #255	; 0xff
    1576:	0209      	lsls	r1, r1, #8
    1578:	ba12      	rev	r2, r2
    157a:	0c03      	lsrs	r3, r0, #16
    157c:	428b      	cmp	r3, r1
    157e:	d302      	bcc.n	1586 <__aeabi_uidiv+0x32>
    1580:	1212      	asrs	r2, r2, #8
    1582:	0209      	lsls	r1, r1, #8
    1584:	d065      	beq.n	1652 <__aeabi_uidiv+0xfe>
    1586:	0b03      	lsrs	r3, r0, #12
    1588:	428b      	cmp	r3, r1
    158a:	d319      	bcc.n	15c0 <__aeabi_uidiv+0x6c>
    158c:	e000      	b.n	1590 <__aeabi_uidiv+0x3c>
    158e:	0a09      	lsrs	r1, r1, #8
    1590:	0bc3      	lsrs	r3, r0, #15
    1592:	428b      	cmp	r3, r1
    1594:	d301      	bcc.n	159a <__aeabi_uidiv+0x46>
    1596:	03cb      	lsls	r3, r1, #15
    1598:	1ac0      	subs	r0, r0, r3
    159a:	4152      	adcs	r2, r2
    159c:	0b83      	lsrs	r3, r0, #14
    159e:	428b      	cmp	r3, r1
    15a0:	d301      	bcc.n	15a6 <__aeabi_uidiv+0x52>
    15a2:	038b      	lsls	r3, r1, #14
    15a4:	1ac0      	subs	r0, r0, r3
    15a6:	4152      	adcs	r2, r2
    15a8:	0b43      	lsrs	r3, r0, #13
    15aa:	428b      	cmp	r3, r1
    15ac:	d301      	bcc.n	15b2 <__aeabi_uidiv+0x5e>
    15ae:	034b      	lsls	r3, r1, #13
    15b0:	1ac0      	subs	r0, r0, r3
    15b2:	4152      	adcs	r2, r2
    15b4:	0b03      	lsrs	r3, r0, #12
    15b6:	428b      	cmp	r3, r1
    15b8:	d301      	bcc.n	15be <__aeabi_uidiv+0x6a>
    15ba:	030b      	lsls	r3, r1, #12
    15bc:	1ac0      	subs	r0, r0, r3
    15be:	4152      	adcs	r2, r2
    15c0:	0ac3      	lsrs	r3, r0, #11
    15c2:	428b      	cmp	r3, r1
    15c4:	d301      	bcc.n	15ca <__aeabi_uidiv+0x76>
    15c6:	02cb      	lsls	r3, r1, #11
    15c8:	1ac0      	subs	r0, r0, r3
    15ca:	4152      	adcs	r2, r2
    15cc:	0a83      	lsrs	r3, r0, #10
    15ce:	428b      	cmp	r3, r1
    15d0:	d301      	bcc.n	15d6 <__aeabi_uidiv+0x82>
    15d2:	028b      	lsls	r3, r1, #10
    15d4:	1ac0      	subs	r0, r0, r3
    15d6:	4152      	adcs	r2, r2
    15d8:	0a43      	lsrs	r3, r0, #9
    15da:	428b      	cmp	r3, r1
    15dc:	d301      	bcc.n	15e2 <__aeabi_uidiv+0x8e>
    15de:	024b      	lsls	r3, r1, #9
    15e0:	1ac0      	subs	r0, r0, r3
    15e2:	4152      	adcs	r2, r2
    15e4:	0a03      	lsrs	r3, r0, #8
    15e6:	428b      	cmp	r3, r1
    15e8:	d301      	bcc.n	15ee <__aeabi_uidiv+0x9a>
    15ea:	020b      	lsls	r3, r1, #8
    15ec:	1ac0      	subs	r0, r0, r3
    15ee:	4152      	adcs	r2, r2
    15f0:	d2cd      	bcs.n	158e <__aeabi_uidiv+0x3a>
    15f2:	09c3      	lsrs	r3, r0, #7
    15f4:	428b      	cmp	r3, r1
    15f6:	d301      	bcc.n	15fc <__aeabi_uidiv+0xa8>
    15f8:	01cb      	lsls	r3, r1, #7
    15fa:	1ac0      	subs	r0, r0, r3
    15fc:	4152      	adcs	r2, r2
    15fe:	0983      	lsrs	r3, r0, #6
    1600:	428b      	cmp	r3, r1
    1602:	d301      	bcc.n	1608 <__aeabi_uidiv+0xb4>
    1604:	018b      	lsls	r3, r1, #6
    1606:	1ac0      	subs	r0, r0, r3
    1608:	4152      	adcs	r2, r2
    160a:	0943      	lsrs	r3, r0, #5
    160c:	428b      	cmp	r3, r1
    160e:	d301      	bcc.n	1614 <__aeabi_uidiv+0xc0>
    1610:	014b      	lsls	r3, r1, #5
    1612:	1ac0      	subs	r0, r0, r3
    1614:	4152      	adcs	r2, r2
    1616:	0903      	lsrs	r3, r0, #4
    1618:	428b      	cmp	r3, r1
    161a:	d301      	bcc.n	1620 <__aeabi_uidiv+0xcc>
    161c:	010b      	lsls	r3, r1, #4
    161e:	1ac0      	subs	r0, r0, r3
    1620:	4152      	adcs	r2, r2
    1622:	08c3      	lsrs	r3, r0, #3
    1624:	428b      	cmp	r3, r1
    1626:	d301      	bcc.n	162c <__aeabi_uidiv+0xd8>
    1628:	00cb      	lsls	r3, r1, #3
    162a:	1ac0      	subs	r0, r0, r3
    162c:	4152      	adcs	r2, r2
    162e:	0883      	lsrs	r3, r0, #2
    1630:	428b      	cmp	r3, r1
    1632:	d301      	bcc.n	1638 <__aeabi_uidiv+0xe4>
    1634:	008b      	lsls	r3, r1, #2
    1636:	1ac0      	subs	r0, r0, r3
    1638:	4152      	adcs	r2, r2
    163a:	0843      	lsrs	r3, r0, #1
    163c:	428b      	cmp	r3, r1
    163e:	d301      	bcc.n	1644 <__aeabi_uidiv+0xf0>
    1640:	004b      	lsls	r3, r1, #1
    1642:	1ac0      	subs	r0, r0, r3
    1644:	4152      	adcs	r2, r2
    1646:	1a41      	subs	r1, r0, r1
    1648:	d200      	bcs.n	164c <__aeabi_uidiv+0xf8>
    164a:	4601      	mov	r1, r0
    164c:	4152      	adcs	r2, r2
    164e:	4610      	mov	r0, r2
    1650:	4770      	bx	lr
    1652:	e7ff      	b.n	1654 <__aeabi_uidiv+0x100>
    1654:	b501      	push	{r0, lr}
    1656:	2000      	movs	r0, #0
    1658:	f000 f806 	bl	1668 <__aeabi_idiv0>
    165c:	bd02      	pop	{r1, pc}
    165e:	46c0      	nop			; (mov r8, r8)

00001660 <__aeabi_uidivmod>:
    1660:	2900      	cmp	r1, #0
    1662:	d0f7      	beq.n	1654 <__aeabi_uidiv+0x100>
    1664:	e776      	b.n	1554 <__aeabi_uidiv>
    1666:	4770      	bx	lr

00001668 <__aeabi_idiv0>:
    1668:	4770      	bx	lr
    166a:	46c0      	nop			; (mov r8, r8)
    166c:	00000f76 	.word	0x00000f76
    1670:	00000f64 	.word	0x00000f64
    1674:	00000f82 	.word	0x00000f82
    1678:	00000f8e 	.word	0x00000f8e
    167c:	00000f8e 	.word	0x00000f8e
    1680:	00000f8e 	.word	0x00000f8e
    1684:	00000f8e 	.word	0x00000f8e
    1688:	00000f8e 	.word	0x00000f8e
    168c:	00000f8e 	.word	0x00000f8e
    1690:	00000f8e 	.word	0x00000f8e
    1694:	00000f8e 	.word	0x00000f8e
    1698:	00000f8e 	.word	0x00000f8e
    169c:	00000f8e 	.word	0x00000f8e
    16a0:	00000f7c 	.word	0x00000f7c
    16a4:	00000f8e 	.word	0x00000f8e
    16a8:	00000f8e 	.word	0x00000f8e
    16ac:	00000f8e 	.word	0x00000f8e
    16b0:	00000f08 	.word	0x00000f08
    16b4:	00000f8e 	.word	0x00000f8e
    16b8:	00000f82 	.word	0x00000f82
    16bc:	00000f8e 	.word	0x00000f8e
    16c0:	00000f8e 	.word	0x00000f8e
    16c4:	00000f88 	.word	0x00000f88
    16c8:	6c383025 	.word	0x6c383025
    16cc:	00002058 	.word	0x00002058
    16d0:	32302520 	.word	0x32302520
    16d4:	00000058 	.word	0x00000058
    16d8:	34302520 	.word	0x34302520
    16dc:	00000058 	.word	0x00000058
    16e0:	38302520 	.word	0x38302520
    16e4:	0000584c 	.word	0x0000584c
