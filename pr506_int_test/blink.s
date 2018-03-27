
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 25 10 00 00 85 10 00 00 85 10 00 00     ... %...........
	...
      2c:	85 10 00 00 00 00 00 00 00 00 00 00 85 10 00 00     ................
      3c:	21 0d 00 00 85 10 00 00 65 0d 00 00 85 10 00 00     !.......e.......
      4c:	85 10 00 00 85 10 00 00 85 10 00 00 d9 12 00 00     ................
      5c:	85 10 00 00 85 10 00 00 85 10 00 00 85 10 00 00     ................
      6c:	85 10 00 00 85 10 00 00 39 0d 00 00 85 10 00 00     ........9.......
      7c:	85 10 00 00 85 10 00 00 85 10 00 00 85 10 00 00     ................
      8c:	85 10 00 00 85 10 00 00 85 10 00 00 85 10 00 00     ................
      9c:	85 10 00 00 85 10 00 00 00 00 00 00 00 00 00 00     ................
      ac:	85 10 00 00 85 10 00 00 85 10 00 00 85 10 00 00     ................
      bc:	85 10 00 00                                         ....

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
     170:	200000f0 	.word	0x200000f0

00000174 <update_telemetry_loop>:
     174:	b580      	push	{r7, lr}
     176:	b088      	sub	sp, #32
     178:	af00      	add	r7, sp, #0
     17a:	6078      	str	r0, [r7, #4]
     17c:	4b73      	ldr	r3, [pc, #460]	; (34c <update_telemetry_loop+0x1d8>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b73      	ldr	r3, [pc, #460]	; (350 <update_telemetry_loop+0x1dc>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	61fb      	str	r3, [r7, #28]
     18a:	2300      	movs	r3, #0
     18c:	61bb      	str	r3, [r7, #24]
     18e:	4b71      	ldr	r3, [pc, #452]	; (354 <update_telemetry_loop+0x1e0>)
     190:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     192:	0a5b      	lsrs	r3, r3, #9
     194:	001a      	movs	r2, r3
     196:	2307      	movs	r3, #7
     198:	4013      	ands	r3, r2
     19a:	617b      	str	r3, [r7, #20]
     19c:	697b      	ldr	r3, [r7, #20]
     19e:	2b00      	cmp	r3, #0
     1a0:	d100      	bne.n	1a4 <update_telemetry_loop+0x30>
     1a2:	e0cf      	b.n	344 <update_telemetry_loop+0x1d0>
     1a4:	697b      	ldr	r3, [r7, #20]
     1a6:	2203      	movs	r2, #3
     1a8:	401a      	ands	r2, r3
     1aa:	697b      	ldr	r3, [r7, #20]
     1ac:	105b      	asrs	r3, r3, #1
     1ae:	2102      	movs	r1, #2
     1b0:	400b      	ands	r3, r1
     1b2:	431a      	orrs	r2, r3
     1b4:	697b      	ldr	r3, [r7, #20]
     1b6:	109b      	asrs	r3, r3, #2
     1b8:	2101      	movs	r1, #1
     1ba:	400b      	ands	r3, r1
     1bc:	4313      	orrs	r3, r2
     1be:	61bb      	str	r3, [r7, #24]
     1c0:	4b64      	ldr	r3, [pc, #400]	; (354 <update_telemetry_loop+0x1e0>)
     1c2:	2200      	movs	r2, #0
     1c4:	655a      	str	r2, [r3, #84]	; 0x54
     1c6:	4b64      	ldr	r3, [pc, #400]	; (358 <update_telemetry_loop+0x1e4>)
     1c8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     1ca:	2210      	movs	r2, #16
     1cc:	4013      	ands	r3, r2
     1ce:	d03c      	beq.n	24a <update_telemetry_loop+0xd6>
     1d0:	69bb      	ldr	r3, [r7, #24]
     1d2:	00da      	lsls	r2, r3, #3
     1d4:	4b61      	ldr	r3, [pc, #388]	; (35c <update_telemetry_loop+0x1e8>)
     1d6:	18d3      	adds	r3, r2, r3
     1d8:	613b      	str	r3, [r7, #16]
     1da:	693b      	ldr	r3, [r7, #16]
     1dc:	1c5a      	adds	r2, r3, #1
     1de:	613a      	str	r2, [r7, #16]
     1e0:	4a5d      	ldr	r2, [pc, #372]	; (358 <update_telemetry_loop+0x1e4>)
     1e2:	6812      	ldr	r2, [r2, #0]
     1e4:	b2d2      	uxtb	r2, r2
     1e6:	701a      	strb	r2, [r3, #0]
     1e8:	693b      	ldr	r3, [r7, #16]
     1ea:	1c5a      	adds	r2, r3, #1
     1ec:	613a      	str	r2, [r7, #16]
     1ee:	4a5a      	ldr	r2, [pc, #360]	; (358 <update_telemetry_loop+0x1e4>)
     1f0:	6812      	ldr	r2, [r2, #0]
     1f2:	b2d2      	uxtb	r2, r2
     1f4:	701a      	strb	r2, [r3, #0]
     1f6:	693b      	ldr	r3, [r7, #16]
     1f8:	1c5a      	adds	r2, r3, #1
     1fa:	613a      	str	r2, [r7, #16]
     1fc:	4a56      	ldr	r2, [pc, #344]	; (358 <update_telemetry_loop+0x1e4>)
     1fe:	6812      	ldr	r2, [r2, #0]
     200:	b2d2      	uxtb	r2, r2
     202:	701a      	strb	r2, [r3, #0]
     204:	693b      	ldr	r3, [r7, #16]
     206:	1c5a      	adds	r2, r3, #1
     208:	613a      	str	r2, [r7, #16]
     20a:	4a53      	ldr	r2, [pc, #332]	; (358 <update_telemetry_loop+0x1e4>)
     20c:	6812      	ldr	r2, [r2, #0]
     20e:	b2d2      	uxtb	r2, r2
     210:	701a      	strb	r2, [r3, #0]
     212:	693b      	ldr	r3, [r7, #16]
     214:	1c5a      	adds	r2, r3, #1
     216:	613a      	str	r2, [r7, #16]
     218:	4a4f      	ldr	r2, [pc, #316]	; (358 <update_telemetry_loop+0x1e4>)
     21a:	6812      	ldr	r2, [r2, #0]
     21c:	b2d2      	uxtb	r2, r2
     21e:	701a      	strb	r2, [r3, #0]
     220:	693b      	ldr	r3, [r7, #16]
     222:	1c5a      	adds	r2, r3, #1
     224:	613a      	str	r2, [r7, #16]
     226:	4a4c      	ldr	r2, [pc, #304]	; (358 <update_telemetry_loop+0x1e4>)
     228:	6812      	ldr	r2, [r2, #0]
     22a:	b2d2      	uxtb	r2, r2
     22c:	701a      	strb	r2, [r3, #0]
     22e:	693b      	ldr	r3, [r7, #16]
     230:	1c5a      	adds	r2, r3, #1
     232:	613a      	str	r2, [r7, #16]
     234:	4a48      	ldr	r2, [pc, #288]	; (358 <update_telemetry_loop+0x1e4>)
     236:	6812      	ldr	r2, [r2, #0]
     238:	b2d2      	uxtb	r2, r2
     23a:	701a      	strb	r2, [r3, #0]
     23c:	693b      	ldr	r3, [r7, #16]
     23e:	1c5a      	adds	r2, r3, #1
     240:	613a      	str	r2, [r7, #16]
     242:	4a45      	ldr	r2, [pc, #276]	; (358 <update_telemetry_loop+0x1e4>)
     244:	6812      	ldr	r2, [r2, #0]
     246:	b2d2      	uxtb	r2, r2
     248:	701a      	strb	r2, [r3, #0]
     24a:	4b43      	ldr	r3, [pc, #268]	; (358 <update_telemetry_loop+0x1e4>)
     24c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     24e:	2240      	movs	r2, #64	; 0x40
     250:	4013      	ands	r3, r2
     252:	d00a      	beq.n	26a <update_telemetry_loop+0xf6>
     254:	e004      	b.n	260 <update_telemetry_loop+0xec>
     256:	4b40      	ldr	r3, [pc, #256]	; (358 <update_telemetry_loop+0x1e4>)
     258:	681a      	ldr	r2, [r3, #0]
     25a:	230f      	movs	r3, #15
     25c:	18fb      	adds	r3, r7, r3
     25e:	701a      	strb	r2, [r3, #0]
     260:	4b3d      	ldr	r3, [pc, #244]	; (358 <update_telemetry_loop+0x1e4>)
     262:	699b      	ldr	r3, [r3, #24]
     264:	2210      	movs	r2, #16
     266:	4013      	ands	r3, r2
     268:	d0f5      	beq.n	256 <update_telemetry_loop+0xe2>
     26a:	69bb      	ldr	r3, [r7, #24]
     26c:	2b03      	cmp	r3, #3
     26e:	d16a      	bne.n	346 <update_telemetry_loop+0x1d2>
     270:	f001 fdac 	bl	1dcc <adc_dma_check>
     274:	1e03      	subs	r3, r0, #0
     276:	d010      	beq.n	29a <update_telemetry_loop+0x126>
     278:	4b39      	ldr	r3, [pc, #228]	; (360 <update_telemetry_loop+0x1ec>)
     27a:	681b      	ldr	r3, [r3, #0]
     27c:	b29a      	uxth	r2, r3
     27e:	4b39      	ldr	r3, [pc, #228]	; (364 <update_telemetry_loop+0x1f0>)
     280:	801a      	strh	r2, [r3, #0]
     282:	4b37      	ldr	r3, [pc, #220]	; (360 <update_telemetry_loop+0x1ec>)
     284:	685b      	ldr	r3, [r3, #4]
     286:	b29a      	uxth	r2, r3
     288:	4b37      	ldr	r3, [pc, #220]	; (368 <update_telemetry_loop+0x1f4>)
     28a:	801a      	strh	r2, [r3, #0]
     28c:	4b34      	ldr	r3, [pc, #208]	; (360 <update_telemetry_loop+0x1ec>)
     28e:	689b      	ldr	r3, [r3, #8]
     290:	b29a      	uxth	r2, r3
     292:	4b36      	ldr	r3, [pc, #216]	; (36c <update_telemetry_loop+0x1f8>)
     294:	801a      	strh	r2, [r3, #0]
     296:	f001 fd67 	bl	1d68 <adc_dma_start>
     29a:	69fb      	ldr	r3, [r7, #28]
     29c:	4a34      	ldr	r2, [pc, #208]	; (370 <update_telemetry_loop+0x1fc>)
     29e:	801a      	strh	r2, [r3, #0]
     2a0:	687b      	ldr	r3, [r7, #4]
     2a2:	0c1b      	lsrs	r3, r3, #16
     2a4:	b29a      	uxth	r2, r3
     2a6:	69fb      	ldr	r3, [r7, #28]
     2a8:	805a      	strh	r2, [r3, #2]
     2aa:	687b      	ldr	r3, [r7, #4]
     2ac:	b29a      	uxth	r2, r3
     2ae:	69fb      	ldr	r3, [r7, #28]
     2b0:	809a      	strh	r2, [r3, #4]
     2b2:	4b30      	ldr	r3, [pc, #192]	; (374 <update_telemetry_loop+0x200>)
     2b4:	2202      	movs	r2, #2
     2b6:	5e9a      	ldrsh	r2, [r3, r2]
     2b8:	69fb      	ldr	r3, [r7, #28]
     2ba:	80da      	strh	r2, [r3, #6]
     2bc:	4b2d      	ldr	r3, [pc, #180]	; (374 <update_telemetry_loop+0x200>)
     2be:	2202      	movs	r2, #2
     2c0:	5e9a      	ldrsh	r2, [r3, r2]
     2c2:	69fb      	ldr	r3, [r7, #28]
     2c4:	811a      	strh	r2, [r3, #8]
     2c6:	4b2b      	ldr	r3, [pc, #172]	; (374 <update_telemetry_loop+0x200>)
     2c8:	2202      	movs	r2, #2
     2ca:	5e9a      	ldrsh	r2, [r3, r2]
     2cc:	69fb      	ldr	r3, [r7, #28]
     2ce:	815a      	strh	r2, [r3, #10]
     2d0:	69fb      	ldr	r3, [r7, #28]
     2d2:	2200      	movs	r2, #0
     2d4:	819a      	strh	r2, [r3, #12]
     2d6:	4b27      	ldr	r3, [pc, #156]	; (374 <update_telemetry_loop+0x200>)
     2d8:	2202      	movs	r2, #2
     2da:	5e9a      	ldrsh	r2, [r3, r2]
     2dc:	69fb      	ldr	r3, [r7, #28]
     2de:	81da      	strh	r2, [r3, #14]
     2e0:	4b24      	ldr	r3, [pc, #144]	; (374 <update_telemetry_loop+0x200>)
     2e2:	2202      	movs	r2, #2
     2e4:	5e9a      	ldrsh	r2, [r3, r2]
     2e6:	69fb      	ldr	r3, [r7, #28]
     2e8:	821a      	strh	r2, [r3, #16]
     2ea:	4b22      	ldr	r3, [pc, #136]	; (374 <update_telemetry_loop+0x200>)
     2ec:	2202      	movs	r2, #2
     2ee:	5e9a      	ldrsh	r2, [r3, r2]
     2f0:	69fb      	ldr	r3, [r7, #28]
     2f2:	825a      	strh	r2, [r3, #18]
     2f4:	4b1d      	ldr	r3, [pc, #116]	; (36c <update_telemetry_loop+0x1f8>)
     2f6:	881a      	ldrh	r2, [r3, #0]
     2f8:	69fb      	ldr	r3, [r7, #28]
     2fa:	829a      	strh	r2, [r3, #20]
     2fc:	4b1a      	ldr	r3, [pc, #104]	; (368 <update_telemetry_loop+0x1f4>)
     2fe:	881a      	ldrh	r2, [r3, #0]
     300:	69fb      	ldr	r3, [r7, #28]
     302:	82da      	strh	r2, [r3, #22]
     304:	4b15      	ldr	r3, [pc, #84]	; (35c <update_telemetry_loop+0x1e8>)
     306:	899a      	ldrh	r2, [r3, #12]
     308:	69fb      	ldr	r3, [r7, #28]
     30a:	831a      	strh	r2, [r3, #24]
     30c:	4b13      	ldr	r3, [pc, #76]	; (35c <update_telemetry_loop+0x1e8>)
     30e:	8a9a      	ldrh	r2, [r3, #20]
     310:	69fb      	ldr	r3, [r7, #28]
     312:	835a      	strh	r2, [r3, #26]
     314:	4b11      	ldr	r3, [pc, #68]	; (35c <update_telemetry_loop+0x1e8>)
     316:	8b9a      	ldrh	r2, [r3, #28]
     318:	69fb      	ldr	r3, [r7, #28]
     31a:	839a      	strh	r2, [r3, #28]
     31c:	4b11      	ldr	r3, [pc, #68]	; (364 <update_telemetry_loop+0x1f0>)
     31e:	881a      	ldrh	r2, [r3, #0]
     320:	69fb      	ldr	r3, [r7, #28]
     322:	83da      	strh	r2, [r3, #30]
     324:	69fb      	ldr	r3, [r7, #28]
     326:	211f      	movs	r1, #31
     328:	0018      	movs	r0, r3
     32a:	f7ff fee5 	bl	f8 <get_checksum>
     32e:	0003      	movs	r3, r0
     330:	001a      	movs	r2, r3
     332:	69fb      	ldr	r3, [r7, #28]
     334:	87da      	strh	r2, [r3, #62]	; 0x3e
     336:	4b05      	ldr	r3, [pc, #20]	; (34c <update_telemetry_loop+0x1d8>)
     338:	681b      	ldr	r3, [r3, #0]
     33a:	2201      	movs	r2, #1
     33c:	405a      	eors	r2, r3
     33e:	4b03      	ldr	r3, [pc, #12]	; (34c <update_telemetry_loop+0x1d8>)
     340:	601a      	str	r2, [r3, #0]
     342:	e000      	b.n	346 <update_telemetry_loop+0x1d2>
     344:	46c0      	nop			; (mov r8, r8)
     346:	46bd      	mov	sp, r7
     348:	b008      	add	sp, #32
     34a:	bd80      	pop	{r7, pc}
     34c:	200000d8 	.word	0x200000d8
     350:	200000d0 	.word	0x200000d0
     354:	40070000 	.word	0x40070000
     358:	40030000 	.word	0x40030000
     35c:	20000100 	.word	0x20000100
     360:	20100200 	.word	0x20100200
     364:	20000120 	.word	0x20000120
     368:	20000122 	.word	0x20000122
     36c:	20000124 	.word	0x20000124
     370:	ffffb060 	.word	0xffffb060
     374:	200000c4 	.word	0x200000c4

00000378 <update_telemetry>:
     378:	b580      	push	{r7, lr}
     37a:	b088      	sub	sp, #32
     37c:	af00      	add	r7, sp, #0
     37e:	6078      	str	r0, [r7, #4]
     380:	4b73      	ldr	r3, [pc, #460]	; (550 <_stack_size+0x150>)
     382:	681b      	ldr	r3, [r3, #0]
     384:	009a      	lsls	r2, r3, #2
     386:	4b73      	ldr	r3, [pc, #460]	; (554 <_stack_size+0x154>)
     388:	18d3      	adds	r3, r2, r3
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	61fb      	str	r3, [r7, #28]
     38e:	2300      	movs	r3, #0
     390:	61bb      	str	r3, [r7, #24]
     392:	4b71      	ldr	r3, [pc, #452]	; (558 <_stack_size+0x158>)
     394:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     396:	0a5b      	lsrs	r3, r3, #9
     398:	001a      	movs	r2, r3
     39a:	2307      	movs	r3, #7
     39c:	4013      	ands	r3, r2
     39e:	617b      	str	r3, [r7, #20]
     3a0:	697b      	ldr	r3, [r7, #20]
     3a2:	2b00      	cmp	r3, #0
     3a4:	d100      	bne.n	3a8 <update_telemetry+0x30>
     3a6:	e0cf      	b.n	548 <_stack_size+0x148>
     3a8:	697b      	ldr	r3, [r7, #20]
     3aa:	2203      	movs	r2, #3
     3ac:	401a      	ands	r2, r3
     3ae:	697b      	ldr	r3, [r7, #20]
     3b0:	105b      	asrs	r3, r3, #1
     3b2:	2102      	movs	r1, #2
     3b4:	400b      	ands	r3, r1
     3b6:	431a      	orrs	r2, r3
     3b8:	697b      	ldr	r3, [r7, #20]
     3ba:	109b      	asrs	r3, r3, #2
     3bc:	2101      	movs	r1, #1
     3be:	400b      	ands	r3, r1
     3c0:	4313      	orrs	r3, r2
     3c2:	61bb      	str	r3, [r7, #24]
     3c4:	4b64      	ldr	r3, [pc, #400]	; (558 <_stack_size+0x158>)
     3c6:	2200      	movs	r2, #0
     3c8:	655a      	str	r2, [r3, #84]	; 0x54
     3ca:	4b64      	ldr	r3, [pc, #400]	; (55c <_stack_size+0x15c>)
     3cc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     3ce:	2210      	movs	r2, #16
     3d0:	4013      	ands	r3, r2
     3d2:	d03c      	beq.n	44e <_stack_size+0x4e>
     3d4:	69bb      	ldr	r3, [r7, #24]
     3d6:	00da      	lsls	r2, r3, #3
     3d8:	4b61      	ldr	r3, [pc, #388]	; (560 <_stack_size+0x160>)
     3da:	18d3      	adds	r3, r2, r3
     3dc:	613b      	str	r3, [r7, #16]
     3de:	693b      	ldr	r3, [r7, #16]
     3e0:	1c5a      	adds	r2, r3, #1
     3e2:	613a      	str	r2, [r7, #16]
     3e4:	4a5d      	ldr	r2, [pc, #372]	; (55c <_stack_size+0x15c>)
     3e6:	6812      	ldr	r2, [r2, #0]
     3e8:	b2d2      	uxtb	r2, r2
     3ea:	701a      	strb	r2, [r3, #0]
     3ec:	693b      	ldr	r3, [r7, #16]
     3ee:	1c5a      	adds	r2, r3, #1
     3f0:	613a      	str	r2, [r7, #16]
     3f2:	4a5a      	ldr	r2, [pc, #360]	; (55c <_stack_size+0x15c>)
     3f4:	6812      	ldr	r2, [r2, #0]
     3f6:	b2d2      	uxtb	r2, r2
     3f8:	701a      	strb	r2, [r3, #0]
     3fa:	693b      	ldr	r3, [r7, #16]
     3fc:	1c5a      	adds	r2, r3, #1
     3fe:	613a      	str	r2, [r7, #16]
     400:	4a56      	ldr	r2, [pc, #344]	; (55c <_stack_size+0x15c>)
     402:	6812      	ldr	r2, [r2, #0]
     404:	b2d2      	uxtb	r2, r2
     406:	701a      	strb	r2, [r3, #0]
     408:	693b      	ldr	r3, [r7, #16]
     40a:	1c5a      	adds	r2, r3, #1
     40c:	613a      	str	r2, [r7, #16]
     40e:	4a53      	ldr	r2, [pc, #332]	; (55c <_stack_size+0x15c>)
     410:	6812      	ldr	r2, [r2, #0]
     412:	b2d2      	uxtb	r2, r2
     414:	701a      	strb	r2, [r3, #0]
     416:	693b      	ldr	r3, [r7, #16]
     418:	1c5a      	adds	r2, r3, #1
     41a:	613a      	str	r2, [r7, #16]
     41c:	4a4f      	ldr	r2, [pc, #316]	; (55c <_stack_size+0x15c>)
     41e:	6812      	ldr	r2, [r2, #0]
     420:	b2d2      	uxtb	r2, r2
     422:	701a      	strb	r2, [r3, #0]
     424:	693b      	ldr	r3, [r7, #16]
     426:	1c5a      	adds	r2, r3, #1
     428:	613a      	str	r2, [r7, #16]
     42a:	4a4c      	ldr	r2, [pc, #304]	; (55c <_stack_size+0x15c>)
     42c:	6812      	ldr	r2, [r2, #0]
     42e:	b2d2      	uxtb	r2, r2
     430:	701a      	strb	r2, [r3, #0]
     432:	693b      	ldr	r3, [r7, #16]
     434:	1c5a      	adds	r2, r3, #1
     436:	613a      	str	r2, [r7, #16]
     438:	4a48      	ldr	r2, [pc, #288]	; (55c <_stack_size+0x15c>)
     43a:	6812      	ldr	r2, [r2, #0]
     43c:	b2d2      	uxtb	r2, r2
     43e:	701a      	strb	r2, [r3, #0]
     440:	693b      	ldr	r3, [r7, #16]
     442:	1c5a      	adds	r2, r3, #1
     444:	613a      	str	r2, [r7, #16]
     446:	4a45      	ldr	r2, [pc, #276]	; (55c <_stack_size+0x15c>)
     448:	6812      	ldr	r2, [r2, #0]
     44a:	b2d2      	uxtb	r2, r2
     44c:	701a      	strb	r2, [r3, #0]
     44e:	4b43      	ldr	r3, [pc, #268]	; (55c <_stack_size+0x15c>)
     450:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     452:	2240      	movs	r2, #64	; 0x40
     454:	4013      	ands	r3, r2
     456:	d00a      	beq.n	46e <_stack_size+0x6e>
     458:	e004      	b.n	464 <_stack_size+0x64>
     45a:	4b40      	ldr	r3, [pc, #256]	; (55c <_stack_size+0x15c>)
     45c:	681a      	ldr	r2, [r3, #0]
     45e:	230f      	movs	r3, #15
     460:	18fb      	adds	r3, r7, r3
     462:	701a      	strb	r2, [r3, #0]
     464:	4b3d      	ldr	r3, [pc, #244]	; (55c <_stack_size+0x15c>)
     466:	699b      	ldr	r3, [r3, #24]
     468:	2210      	movs	r2, #16
     46a:	4013      	ands	r3, r2
     46c:	d0f5      	beq.n	45a <_stack_size+0x5a>
     46e:	69bb      	ldr	r3, [r7, #24]
     470:	2b03      	cmp	r3, #3
     472:	d16a      	bne.n	54a <_stack_size+0x14a>
     474:	f001 fcaa 	bl	1dcc <adc_dma_check>
     478:	1e03      	subs	r3, r0, #0
     47a:	d010      	beq.n	49e <_stack_size+0x9e>
     47c:	4b39      	ldr	r3, [pc, #228]	; (564 <_stack_size+0x164>)
     47e:	681b      	ldr	r3, [r3, #0]
     480:	b29a      	uxth	r2, r3
     482:	4b39      	ldr	r3, [pc, #228]	; (568 <_stack_size+0x168>)
     484:	801a      	strh	r2, [r3, #0]
     486:	4b37      	ldr	r3, [pc, #220]	; (564 <_stack_size+0x164>)
     488:	685b      	ldr	r3, [r3, #4]
     48a:	b29a      	uxth	r2, r3
     48c:	4b37      	ldr	r3, [pc, #220]	; (56c <_stack_size+0x16c>)
     48e:	801a      	strh	r2, [r3, #0]
     490:	4b34      	ldr	r3, [pc, #208]	; (564 <_stack_size+0x164>)
     492:	689b      	ldr	r3, [r3, #8]
     494:	b29a      	uxth	r2, r3
     496:	4b36      	ldr	r3, [pc, #216]	; (570 <_stack_size+0x170>)
     498:	801a      	strh	r2, [r3, #0]
     49a:	f001 fc65 	bl	1d68 <adc_dma_start>
     49e:	69fb      	ldr	r3, [r7, #28]
     4a0:	4a34      	ldr	r2, [pc, #208]	; (574 <_stack_size+0x174>)
     4a2:	801a      	strh	r2, [r3, #0]
     4a4:	687b      	ldr	r3, [r7, #4]
     4a6:	0c1b      	lsrs	r3, r3, #16
     4a8:	b29a      	uxth	r2, r3
     4aa:	69fb      	ldr	r3, [r7, #28]
     4ac:	805a      	strh	r2, [r3, #2]
     4ae:	687b      	ldr	r3, [r7, #4]
     4b0:	b29a      	uxth	r2, r3
     4b2:	69fb      	ldr	r3, [r7, #28]
     4b4:	809a      	strh	r2, [r3, #4]
     4b6:	4b2a      	ldr	r3, [pc, #168]	; (560 <_stack_size+0x160>)
     4b8:	220a      	movs	r2, #10
     4ba:	5e9a      	ldrsh	r2, [r3, r2]
     4bc:	69fb      	ldr	r3, [r7, #28]
     4be:	80da      	strh	r2, [r3, #6]
     4c0:	4b27      	ldr	r3, [pc, #156]	; (560 <_stack_size+0x160>)
     4c2:	2212      	movs	r2, #18
     4c4:	5e9a      	ldrsh	r2, [r3, r2]
     4c6:	69fb      	ldr	r3, [r7, #28]
     4c8:	811a      	strh	r2, [r3, #8]
     4ca:	4b25      	ldr	r3, [pc, #148]	; (560 <_stack_size+0x160>)
     4cc:	221a      	movs	r2, #26
     4ce:	5e9a      	ldrsh	r2, [r3, r2]
     4d0:	69fb      	ldr	r3, [r7, #28]
     4d2:	815a      	strh	r2, [r3, #10]
     4d4:	69fb      	ldr	r3, [r7, #28]
     4d6:	2200      	movs	r2, #0
     4d8:	819a      	strh	r2, [r3, #12]
     4da:	4b21      	ldr	r3, [pc, #132]	; (560 <_stack_size+0x160>)
     4dc:	2208      	movs	r2, #8
     4de:	5e9a      	ldrsh	r2, [r3, r2]
     4e0:	69fb      	ldr	r3, [r7, #28]
     4e2:	81da      	strh	r2, [r3, #14]
     4e4:	4b1e      	ldr	r3, [pc, #120]	; (560 <_stack_size+0x160>)
     4e6:	2210      	movs	r2, #16
     4e8:	5e9a      	ldrsh	r2, [r3, r2]
     4ea:	69fb      	ldr	r3, [r7, #28]
     4ec:	821a      	strh	r2, [r3, #16]
     4ee:	4b1c      	ldr	r3, [pc, #112]	; (560 <_stack_size+0x160>)
     4f0:	2218      	movs	r2, #24
     4f2:	5e9a      	ldrsh	r2, [r3, r2]
     4f4:	69fb      	ldr	r3, [r7, #28]
     4f6:	825a      	strh	r2, [r3, #18]
     4f8:	4b1d      	ldr	r3, [pc, #116]	; (570 <_stack_size+0x170>)
     4fa:	881a      	ldrh	r2, [r3, #0]
     4fc:	69fb      	ldr	r3, [r7, #28]
     4fe:	829a      	strh	r2, [r3, #20]
     500:	4b1a      	ldr	r3, [pc, #104]	; (56c <_stack_size+0x16c>)
     502:	881a      	ldrh	r2, [r3, #0]
     504:	69fb      	ldr	r3, [r7, #28]
     506:	82da      	strh	r2, [r3, #22]
     508:	4b15      	ldr	r3, [pc, #84]	; (560 <_stack_size+0x160>)
     50a:	899a      	ldrh	r2, [r3, #12]
     50c:	69fb      	ldr	r3, [r7, #28]
     50e:	831a      	strh	r2, [r3, #24]
     510:	4b13      	ldr	r3, [pc, #76]	; (560 <_stack_size+0x160>)
     512:	8a9a      	ldrh	r2, [r3, #20]
     514:	69fb      	ldr	r3, [r7, #28]
     516:	835a      	strh	r2, [r3, #26]
     518:	4b11      	ldr	r3, [pc, #68]	; (560 <_stack_size+0x160>)
     51a:	8b9a      	ldrh	r2, [r3, #28]
     51c:	69fb      	ldr	r3, [r7, #28]
     51e:	839a      	strh	r2, [r3, #28]
     520:	4b11      	ldr	r3, [pc, #68]	; (568 <_stack_size+0x168>)
     522:	881a      	ldrh	r2, [r3, #0]
     524:	69fb      	ldr	r3, [r7, #28]
     526:	83da      	strh	r2, [r3, #30]
     528:	69fb      	ldr	r3, [r7, #28]
     52a:	211f      	movs	r1, #31
     52c:	0018      	movs	r0, r3
     52e:	f7ff fde3 	bl	f8 <get_checksum>
     532:	0003      	movs	r3, r0
     534:	001a      	movs	r2, r3
     536:	69fb      	ldr	r3, [r7, #28]
     538:	87da      	strh	r2, [r3, #62]	; 0x3e
     53a:	4b05      	ldr	r3, [pc, #20]	; (550 <_stack_size+0x150>)
     53c:	681b      	ldr	r3, [r3, #0]
     53e:	2201      	movs	r2, #1
     540:	405a      	eors	r2, r3
     542:	4b03      	ldr	r3, [pc, #12]	; (550 <_stack_size+0x150>)
     544:	601a      	str	r2, [r3, #0]
     546:	e000      	b.n	54a <_stack_size+0x14a>
     548:	46c0      	nop			; (mov r8, r8)
     54a:	46bd      	mov	sp, r7
     54c:	b008      	add	sp, #32
     54e:	bd80      	pop	{r7, pc}
     550:	200000d8 	.word	0x200000d8
     554:	200000d0 	.word	0x200000d0
     558:	40070000 	.word	0x40070000
     55c:	40030000 	.word	0x40030000
     560:	20000128 	.word	0x20000128
     564:	20100200 	.word	0x20100200
     568:	20000148 	.word	0x20000148
     56c:	2000014a 	.word	0x2000014a
     570:	2000014c 	.word	0x2000014c
     574:	ffffb060 	.word	0xffffb060

00000578 <send_command>:
     578:	b580      	push	{r7, lr}
     57a:	b086      	sub	sp, #24
     57c:	af00      	add	r7, sp, #0
     57e:	6078      	str	r0, [r7, #4]
     580:	687b      	ldr	r3, [r7, #4]
     582:	2202      	movs	r2, #2
     584:	5e9a      	ldrsh	r2, [r3, r2]
     586:	2316      	movs	r3, #22
     588:	18fb      	adds	r3, r7, r3
     58a:	801a      	strh	r2, [r3, #0]
     58c:	2308      	movs	r3, #8
     58e:	18fb      	adds	r3, r7, r3
     590:	613b      	str	r3, [r7, #16]
     592:	4b23      	ldr	r3, [pc, #140]	; (620 <send_command+0xa8>)
     594:	687a      	ldr	r2, [r7, #4]
     596:	2102      	movs	r1, #2
     598:	5e52      	ldrsh	r2, [r2, r1]
     59a:	b292      	uxth	r2, r2
     59c:	0011      	movs	r1, r2
     59e:	22ff      	movs	r2, #255	; 0xff
     5a0:	400a      	ands	r2, r1
     5a2:	601a      	str	r2, [r3, #0]
     5a4:	4b1e      	ldr	r3, [pc, #120]	; (620 <send_command+0xa8>)
     5a6:	687a      	ldr	r2, [r7, #4]
     5a8:	2102      	movs	r1, #2
     5aa:	5e52      	ldrsh	r2, [r2, r1]
     5ac:	1212      	asrs	r2, r2, #8
     5ae:	b212      	sxth	r2, r2
     5b0:	b292      	uxth	r2, r2
     5b2:	0011      	movs	r1, r2
     5b4:	22ff      	movs	r2, #255	; 0xff
     5b6:	400a      	ands	r2, r1
     5b8:	601a      	str	r2, [r3, #0]
     5ba:	4b19      	ldr	r3, [pc, #100]	; (620 <send_command+0xa8>)
     5bc:	687a      	ldr	r2, [r7, #4]
     5be:	2104      	movs	r1, #4
     5c0:	5e52      	ldrsh	r2, [r2, r1]
     5c2:	b292      	uxth	r2, r2
     5c4:	0011      	movs	r1, r2
     5c6:	22ff      	movs	r2, #255	; 0xff
     5c8:	400a      	ands	r2, r1
     5ca:	601a      	str	r2, [r3, #0]
     5cc:	4b14      	ldr	r3, [pc, #80]	; (620 <send_command+0xa8>)
     5ce:	687a      	ldr	r2, [r7, #4]
     5d0:	2104      	movs	r1, #4
     5d2:	5e52      	ldrsh	r2, [r2, r1]
     5d4:	1212      	asrs	r2, r2, #8
     5d6:	b212      	sxth	r2, r2
     5d8:	b292      	uxth	r2, r2
     5da:	0011      	movs	r1, r2
     5dc:	22ff      	movs	r2, #255	; 0xff
     5de:	400a      	ands	r2, r1
     5e0:	601a      	str	r2, [r3, #0]
     5e2:	4b0f      	ldr	r3, [pc, #60]	; (620 <send_command+0xa8>)
     5e4:	687a      	ldr	r2, [r7, #4]
     5e6:	2106      	movs	r1, #6
     5e8:	5e52      	ldrsh	r2, [r2, r1]
     5ea:	b292      	uxth	r2, r2
     5ec:	0011      	movs	r1, r2
     5ee:	22ff      	movs	r2, #255	; 0xff
     5f0:	400a      	ands	r2, r1
     5f2:	601a      	str	r2, [r3, #0]
     5f4:	4b0a      	ldr	r3, [pc, #40]	; (620 <send_command+0xa8>)
     5f6:	687a      	ldr	r2, [r7, #4]
     5f8:	2106      	movs	r1, #6
     5fa:	5e52      	ldrsh	r2, [r2, r1]
     5fc:	1212      	asrs	r2, r2, #8
     5fe:	b212      	sxth	r2, r2
     600:	b292      	uxth	r2, r2
     602:	0011      	movs	r1, r2
     604:	22ff      	movs	r2, #255	; 0xff
     606:	400a      	ands	r2, r1
     608:	601a      	str	r2, [r3, #0]
     60a:	4b05      	ldr	r3, [pc, #20]	; (620 <send_command+0xa8>)
     60c:	2200      	movs	r2, #0
     60e:	601a      	str	r2, [r3, #0]
     610:	4b03      	ldr	r3, [pc, #12]	; (620 <send_command+0xa8>)
     612:	2200      	movs	r2, #0
     614:	601a      	str	r2, [r3, #0]
     616:	46c0      	nop			; (mov r8, r8)
     618:	46bd      	mov	sp, r7
     61a:	b006      	add	sp, #24
     61c:	bd80      	pop	{r7, pc}
     61e:	46c0      	nop			; (mov r8, r8)
     620:	40030000 	.word	0x40030000

00000624 <test_mode1_proc>:
     624:	b580      	push	{r7, lr}
     626:	b082      	sub	sp, #8
     628:	af00      	add	r7, sp, #0
     62a:	1cbb      	adds	r3, r7, #2
     62c:	2201      	movs	r2, #1
     62e:	801a      	strh	r2, [r3, #0]
     630:	2300      	movs	r3, #0
     632:	607b      	str	r3, [r7, #4]
     634:	e00d      	b.n	652 <test_mode1_proc+0x2e>
     636:	4b21      	ldr	r3, [pc, #132]	; (6bc <test_mode1_proc+0x98>)
     638:	4a21      	ldr	r2, [pc, #132]	; (6c0 <test_mode1_proc+0x9c>)
     63a:	6879      	ldr	r1, [r7, #4]
     63c:	0049      	lsls	r1, r1, #1
     63e:	5a8a      	ldrh	r2, [r1, r2]
     640:	601a      	str	r2, [r3, #0]
     642:	23fa      	movs	r3, #250	; 0xfa
     644:	005b      	lsls	r3, r3, #1
     646:	0018      	movs	r0, r3
     648:	f7ff fd7e 	bl	148 <sleep>
     64c:	687b      	ldr	r3, [r7, #4]
     64e:	3301      	adds	r3, #1
     650:	607b      	str	r3, [r7, #4]
     652:	687b      	ldr	r3, [r7, #4]
     654:	2b0f      	cmp	r3, #15
     656:	ddee      	ble.n	636 <test_mode1_proc+0x12>
     658:	4b18      	ldr	r3, [pc, #96]	; (6bc <test_mode1_proc+0x98>)
     65a:	2200      	movs	r2, #0
     65c:	601a      	str	r2, [r3, #0]
     65e:	2300      	movs	r3, #0
     660:	607b      	str	r3, [r7, #4]
     662:	e00d      	b.n	680 <test_mode1_proc+0x5c>
     664:	4b17      	ldr	r3, [pc, #92]	; (6c4 <test_mode1_proc+0xa0>)
     666:	4a18      	ldr	r2, [pc, #96]	; (6c8 <test_mode1_proc+0xa4>)
     668:	6879      	ldr	r1, [r7, #4]
     66a:	0049      	lsls	r1, r1, #1
     66c:	5a8a      	ldrh	r2, [r1, r2]
     66e:	601a      	str	r2, [r3, #0]
     670:	23fa      	movs	r3, #250	; 0xfa
     672:	005b      	lsls	r3, r3, #1
     674:	0018      	movs	r0, r3
     676:	f7ff fd67 	bl	148 <sleep>
     67a:	687b      	ldr	r3, [r7, #4]
     67c:	3301      	adds	r3, #1
     67e:	607b      	str	r3, [r7, #4]
     680:	687b      	ldr	r3, [r7, #4]
     682:	2b06      	cmp	r3, #6
     684:	ddee      	ble.n	664 <test_mode1_proc+0x40>
     686:	4b0f      	ldr	r3, [pc, #60]	; (6c4 <test_mode1_proc+0xa0>)
     688:	2200      	movs	r2, #0
     68a:	601a      	str	r2, [r3, #0]
     68c:	2300      	movs	r3, #0
     68e:	607b      	str	r3, [r7, #4]
     690:	e00d      	b.n	6ae <test_mode1_proc+0x8a>
     692:	4b0e      	ldr	r3, [pc, #56]	; (6cc <test_mode1_proc+0xa8>)
     694:	4a0e      	ldr	r2, [pc, #56]	; (6d0 <test_mode1_proc+0xac>)
     696:	6879      	ldr	r1, [r7, #4]
     698:	0049      	lsls	r1, r1, #1
     69a:	5a8a      	ldrh	r2, [r1, r2]
     69c:	601a      	str	r2, [r3, #0]
     69e:	23fa      	movs	r3, #250	; 0xfa
     6a0:	005b      	lsls	r3, r3, #1
     6a2:	0018      	movs	r0, r3
     6a4:	f7ff fd50 	bl	148 <sleep>
     6a8:	687b      	ldr	r3, [r7, #4]
     6aa:	3301      	adds	r3, #1
     6ac:	607b      	str	r3, [r7, #4]
     6ae:	687b      	ldr	r3, [r7, #4]
     6b0:	2b05      	cmp	r3, #5
     6b2:	ddee      	ble.n	692 <test_mode1_proc+0x6e>
     6b4:	4b05      	ldr	r3, [pc, #20]	; (6cc <test_mode1_proc+0xa8>)
     6b6:	2200      	movs	r2, #0
     6b8:	601a      	str	r2, [r3, #0]
     6ba:	e7b9      	b.n	630 <test_mode1_proc+0xc>
     6bc:	400c8000 	.word	0x400c8000
     6c0:	00001f24 	.word	0x00001f24
     6c4:	400e8000 	.word	0x400e8000
     6c8:	00001f44 	.word	0x00001f44
     6cc:	400a8000 	.word	0x400a8000
     6d0:	00001f54 	.word	0x00001f54

000006d4 <test_mode2_proc>:
     6d4:	b580      	push	{r7, lr}
     6d6:	b082      	sub	sp, #8
     6d8:	af00      	add	r7, sp, #0
     6da:	2300      	movs	r3, #0
     6dc:	607b      	str	r3, [r7, #4]
     6de:	2300      	movs	r3, #0
     6e0:	607b      	str	r3, [r7, #4]
     6e2:	e00b      	b.n	6fc <test_mode2_proc+0x28>
     6e4:	4b10      	ldr	r3, [pc, #64]	; (728 <test_mode2_proc+0x54>)
     6e6:	4a11      	ldr	r2, [pc, #68]	; (72c <test_mode2_proc+0x58>)
     6e8:	601a      	str	r2, [r3, #0]
     6ea:	4b11      	ldr	r3, [pc, #68]	; (730 <test_mode2_proc+0x5c>)
     6ec:	4a0f      	ldr	r2, [pc, #60]	; (72c <test_mode2_proc+0x58>)
     6ee:	601a      	str	r2, [r3, #0]
     6f0:	4b10      	ldr	r3, [pc, #64]	; (734 <test_mode2_proc+0x60>)
     6f2:	4a0e      	ldr	r2, [pc, #56]	; (72c <test_mode2_proc+0x58>)
     6f4:	601a      	str	r2, [r3, #0]
     6f6:	687b      	ldr	r3, [r7, #4]
     6f8:	3301      	adds	r3, #1
     6fa:	607b      	str	r3, [r7, #4]
     6fc:	687b      	ldr	r3, [r7, #4]
     6fe:	2b05      	cmp	r3, #5
     700:	ddf0      	ble.n	6e4 <test_mode2_proc+0x10>
     702:	2300      	movs	r3, #0
     704:	607b      	str	r3, [r7, #4]
     706:	e00b      	b.n	720 <test_mode2_proc+0x4c>
     708:	4b07      	ldr	r3, [pc, #28]	; (728 <test_mode2_proc+0x54>)
     70a:	2200      	movs	r2, #0
     70c:	601a      	str	r2, [r3, #0]
     70e:	4b08      	ldr	r3, [pc, #32]	; (730 <test_mode2_proc+0x5c>)
     710:	2200      	movs	r2, #0
     712:	601a      	str	r2, [r3, #0]
     714:	4b07      	ldr	r3, [pc, #28]	; (734 <test_mode2_proc+0x60>)
     716:	2200      	movs	r2, #0
     718:	601a      	str	r2, [r3, #0]
     71a:	687b      	ldr	r3, [r7, #4]
     71c:	3301      	adds	r3, #1
     71e:	607b      	str	r3, [r7, #4]
     720:	687b      	ldr	r3, [r7, #4]
     722:	2b77      	cmp	r3, #119	; 0x77
     724:	ddf0      	ble.n	708 <test_mode2_proc+0x34>
     726:	e7da      	b.n	6de <test_mode2_proc+0xa>
     728:	400c8000 	.word	0x400c8000
     72c:	0000ffff 	.word	0x0000ffff
     730:	400e8000 	.word	0x400e8000
     734:	400a8000 	.word	0x400a8000

00000738 <test_mode3_proc>:
     738:	b580      	push	{r7, lr}
     73a:	af00      	add	r7, sp, #0
     73c:	4b02      	ldr	r3, [pc, #8]	; (748 <test_mode3_proc+0x10>)
     73e:	4a03      	ldr	r2, [pc, #12]	; (74c <test_mode3_proc+0x14>)
     740:	8812      	ldrh	r2, [r2, #0]
     742:	601a      	str	r2, [r3, #0]
     744:	e7fa      	b.n	73c <test_mode3_proc+0x4>
     746:	46c0      	nop			; (mov r8, r8)
     748:	400c8000 	.word	0x400c8000
     74c:	200000fc 	.word	0x200000fc

00000750 <main>:
     750:	b590      	push	{r4, r7, lr}
     752:	b0a7      	sub	sp, #156	; 0x9c
     754:	af00      	add	r7, sp, #0
     756:	2384      	movs	r3, #132	; 0x84
     758:	18fb      	adds	r3, r7, r3
     75a:	4a2f      	ldr	r2, [pc, #188]	; (818 <main+0xc8>)
     75c:	ca13      	ldmia	r2!, {r0, r1, r4}
     75e:	c313      	stmia	r3!, {r0, r1, r4}
     760:	8812      	ldrh	r2, [r2, #0]
     762:	801a      	strh	r2, [r3, #0]
     764:	f000 fac6 	bl	cf4 <SystemInit>
     768:	4b2c      	ldr	r3, [pc, #176]	; (81c <main+0xcc>)
     76a:	2200      	movs	r2, #0
     76c:	601a      	str	r2, [r3, #0]
     76e:	2300      	movs	r3, #0
     770:	2294      	movs	r2, #148	; 0x94
     772:	18ba      	adds	r2, r7, r2
     774:	6013      	str	r3, [r2, #0]
     776:	4b2a      	ldr	r3, [pc, #168]	; (820 <main+0xd0>)
     778:	2200      	movs	r2, #0
     77a:	601a      	str	r2, [r3, #0]
     77c:	4b29      	ldr	r3, [pc, #164]	; (824 <main+0xd4>)
     77e:	4a2a      	ldr	r2, [pc, #168]	; (828 <main+0xd8>)
     780:	601a      	str	r2, [r3, #0]
     782:	4b28      	ldr	r3, [pc, #160]	; (824 <main+0xd4>)
     784:	4a29      	ldr	r2, [pc, #164]	; (82c <main+0xdc>)
     786:	605a      	str	r2, [r3, #4]
     788:	4b29      	ldr	r3, [pc, #164]	; (830 <main+0xe0>)
     78a:	2200      	movs	r2, #0
     78c:	601a      	str	r2, [r3, #0]
     78e:	4b29      	ldr	r3, [pc, #164]	; (834 <main+0xe4>)
     790:	681b      	ldr	r3, [r3, #0]
     792:	2240      	movs	r2, #64	; 0x40
     794:	4013      	ands	r3, r2
     796:	d010      	beq.n	7ba <main+0x6a>
     798:	4b27      	ldr	r3, [pc, #156]	; (838 <main+0xe8>)
     79a:	4a27      	ldr	r2, [pc, #156]	; (838 <main+0xe8>)
     79c:	6812      	ldr	r2, [r2, #0]
     79e:	2110      	movs	r1, #16
     7a0:	430a      	orrs	r2, r1
     7a2:	601a      	str	r2, [r3, #0]
     7a4:	2064      	movs	r0, #100	; 0x64
     7a6:	f7ff fccf 	bl	148 <sleep>
     7aa:	46c0      	nop			; (mov r8, r8)
     7ac:	4b21      	ldr	r3, [pc, #132]	; (834 <main+0xe4>)
     7ae:	681b      	ldr	r3, [r3, #0]
     7b0:	2240      	movs	r2, #64	; 0x40
     7b2:	4013      	ands	r3, r2
     7b4:	d1fa      	bne.n	7ac <main+0x5c>
     7b6:	f7ff ff35 	bl	624 <test_mode1_proc>
     7ba:	4b1e      	ldr	r3, [pc, #120]	; (834 <main+0xe4>)
     7bc:	681b      	ldr	r3, [r3, #0]
     7be:	2280      	movs	r2, #128	; 0x80
     7c0:	4013      	ands	r3, r2
     7c2:	d010      	beq.n	7e6 <main+0x96>
     7c4:	4b1c      	ldr	r3, [pc, #112]	; (838 <main+0xe8>)
     7c6:	4a1c      	ldr	r2, [pc, #112]	; (838 <main+0xe8>)
     7c8:	6812      	ldr	r2, [r2, #0]
     7ca:	2120      	movs	r1, #32
     7cc:	430a      	orrs	r2, r1
     7ce:	601a      	str	r2, [r3, #0]
     7d0:	2064      	movs	r0, #100	; 0x64
     7d2:	f7ff fcb9 	bl	148 <sleep>
     7d6:	46c0      	nop			; (mov r8, r8)
     7d8:	4b16      	ldr	r3, [pc, #88]	; (834 <main+0xe4>)
     7da:	681b      	ldr	r3, [r3, #0]
     7dc:	2280      	movs	r2, #128	; 0x80
     7de:	4013      	ands	r3, r2
     7e0:	d1fa      	bne.n	7d8 <main+0x88>
     7e2:	f7ff ff77 	bl	6d4 <test_mode2_proc>
     7e6:	4b13      	ldr	r3, [pc, #76]	; (834 <main+0xe4>)
     7e8:	681a      	ldr	r2, [r3, #0]
     7ea:	2380      	movs	r3, #128	; 0x80
     7ec:	005b      	lsls	r3, r3, #1
     7ee:	4013      	ands	r3, r2
     7f0:	d0cd      	beq.n	78e <main+0x3e>
     7f2:	4b11      	ldr	r3, [pc, #68]	; (838 <main+0xe8>)
     7f4:	4a10      	ldr	r2, [pc, #64]	; (838 <main+0xe8>)
     7f6:	6812      	ldr	r2, [r2, #0]
     7f8:	2140      	movs	r1, #64	; 0x40
     7fa:	430a      	orrs	r2, r1
     7fc:	601a      	str	r2, [r3, #0]
     7fe:	2064      	movs	r0, #100	; 0x64
     800:	f7ff fca2 	bl	148 <sleep>
     804:	46c0      	nop			; (mov r8, r8)
     806:	4b0b      	ldr	r3, [pc, #44]	; (834 <main+0xe4>)
     808:	681a      	ldr	r2, [r3, #0]
     80a:	2380      	movs	r3, #128	; 0x80
     80c:	005b      	lsls	r3, r3, #1
     80e:	4013      	ands	r3, r2
     810:	d1f9      	bne.n	806 <main+0xb6>
     812:	f7ff ff91 	bl	738 <test_mode3_proc>
     816:	e7ba      	b.n	78e <main+0x3e>
     818:	00001f60 	.word	0x00001f60
     81c:	200000e8 	.word	0x200000e8
     820:	200000ec 	.word	0x200000ec
     824:	200000d0 	.word	0x200000d0
     828:	20000044 	.word	0x20000044
     82c:	20000084 	.word	0x20000084
     830:	200000d8 	.word	0x200000d8
     834:	400b8000 	.word	0x400b8000
     838:	400a8000 	.word	0x400a8000

0000083c <PortConfig>:
     83c:	b580      	push	{r7, lr}
     83e:	af00      	add	r7, sp, #0
     840:	4b65      	ldr	r3, [pc, #404]	; (9d8 <PortConfig+0x19c>)
     842:	4a65      	ldr	r2, [pc, #404]	; (9d8 <PortConfig+0x19c>)
     844:	69d2      	ldr	r2, [r2, #28]
     846:	2180      	movs	r1, #128	; 0x80
     848:	0389      	lsls	r1, r1, #14
     84a:	430a      	orrs	r2, r1
     84c:	61da      	str	r2, [r3, #28]
     84e:	4b63      	ldr	r3, [pc, #396]	; (9dc <PortConfig+0x1a0>)
     850:	4a63      	ldr	r2, [pc, #396]	; (9e0 <PortConfig+0x1a4>)
     852:	60da      	str	r2, [r3, #12]
     854:	4b61      	ldr	r3, [pc, #388]	; (9dc <PortConfig+0x1a0>)
     856:	2200      	movs	r2, #0
     858:	609a      	str	r2, [r3, #8]
     85a:	4b60      	ldr	r3, [pc, #384]	; (9dc <PortConfig+0x1a0>)
     85c:	2201      	movs	r2, #1
     85e:	4252      	negs	r2, r2
     860:	619a      	str	r2, [r3, #24]
     862:	4b5e      	ldr	r3, [pc, #376]	; (9dc <PortConfig+0x1a0>)
     864:	4a5e      	ldr	r2, [pc, #376]	; (9e0 <PortConfig+0x1a4>)
     866:	605a      	str	r2, [r3, #4]
     868:	4b5c      	ldr	r3, [pc, #368]	; (9dc <PortConfig+0x1a0>)
     86a:	2200      	movs	r2, #0
     86c:	601a      	str	r2, [r3, #0]
     86e:	4b5a      	ldr	r3, [pc, #360]	; (9d8 <PortConfig+0x19c>)
     870:	4a59      	ldr	r2, [pc, #356]	; (9d8 <PortConfig+0x19c>)
     872:	69d2      	ldr	r2, [r2, #28]
     874:	2180      	movs	r1, #128	; 0x80
     876:	0449      	lsls	r1, r1, #17
     878:	430a      	orrs	r2, r1
     87a:	61da      	str	r2, [r3, #28]
     87c:	4b59      	ldr	r3, [pc, #356]	; (9e4 <PortConfig+0x1a8>)
     87e:	4a59      	ldr	r2, [pc, #356]	; (9e4 <PortConfig+0x1a8>)
     880:	68d2      	ldr	r2, [r2, #12]
     882:	4959      	ldr	r1, [pc, #356]	; (9e8 <PortConfig+0x1ac>)
     884:	400a      	ands	r2, r1
     886:	60da      	str	r2, [r3, #12]
     888:	4b53      	ldr	r3, [pc, #332]	; (9d8 <PortConfig+0x19c>)
     88a:	4a53      	ldr	r2, [pc, #332]	; (9d8 <PortConfig+0x19c>)
     88c:	69d2      	ldr	r2, [r2, #28]
     88e:	2180      	movs	r1, #128	; 0x80
     890:	0409      	lsls	r1, r1, #16
     892:	430a      	orrs	r2, r1
     894:	61da      	str	r2, [r3, #28]
     896:	4b50      	ldr	r3, [pc, #320]	; (9d8 <PortConfig+0x19c>)
     898:	4a4f      	ldr	r2, [pc, #316]	; (9d8 <PortConfig+0x19c>)
     89a:	69d2      	ldr	r2, [r2, #28]
     89c:	2180      	movs	r1, #128	; 0x80
     89e:	0449      	lsls	r1, r1, #17
     8a0:	430a      	orrs	r2, r1
     8a2:	61da      	str	r2, [r3, #28]
     8a4:	4b51      	ldr	r3, [pc, #324]	; (9ec <PortConfig+0x1b0>)
     8a6:	4a51      	ldr	r2, [pc, #324]	; (9ec <PortConfig+0x1b0>)
     8a8:	6892      	ldr	r2, [r2, #8]
     8aa:	0192      	lsls	r2, r2, #6
     8ac:	0992      	lsrs	r2, r2, #6
     8ae:	609a      	str	r2, [r3, #8]
     8b0:	4b4e      	ldr	r3, [pc, #312]	; (9ec <PortConfig+0x1b0>)
     8b2:	4a4e      	ldr	r2, [pc, #312]	; (9ec <PortConfig+0x1b0>)
     8b4:	6892      	ldr	r2, [r2, #8]
     8b6:	21a8      	movs	r1, #168	; 0xa8
     8b8:	05c9      	lsls	r1, r1, #23
     8ba:	430a      	orrs	r2, r1
     8bc:	609a      	str	r2, [r3, #8]
     8be:	4b4b      	ldr	r3, [pc, #300]	; (9ec <PortConfig+0x1b0>)
     8c0:	4a4a      	ldr	r2, [pc, #296]	; (9ec <PortConfig+0x1b0>)
     8c2:	68d2      	ldr	r2, [r2, #12]
     8c4:	21e0      	movs	r1, #224	; 0xe0
     8c6:	0209      	lsls	r1, r1, #8
     8c8:	430a      	orrs	r2, r1
     8ca:	60da      	str	r2, [r3, #12]
     8cc:	4b47      	ldr	r3, [pc, #284]	; (9ec <PortConfig+0x1b0>)
     8ce:	4a47      	ldr	r2, [pc, #284]	; (9ec <PortConfig+0x1b0>)
     8d0:	6992      	ldr	r2, [r2, #24]
     8d2:	21fc      	movs	r1, #252	; 0xfc
     8d4:	0609      	lsls	r1, r1, #24
     8d6:	430a      	orrs	r2, r1
     8d8:	619a      	str	r2, [r3, #24]
     8da:	4b44      	ldr	r3, [pc, #272]	; (9ec <PortConfig+0x1b0>)
     8dc:	4a43      	ldr	r2, [pc, #268]	; (9ec <PortConfig+0x1b0>)
     8de:	68d2      	ldr	r2, [r2, #12]
     8e0:	21e0      	movs	r1, #224	; 0xe0
     8e2:	0049      	lsls	r1, r1, #1
     8e4:	430a      	orrs	r2, r1
     8e6:	60da      	str	r2, [r3, #12]
     8e8:	4b3e      	ldr	r3, [pc, #248]	; (9e4 <PortConfig+0x1a8>)
     8ea:	4a3e      	ldr	r2, [pc, #248]	; (9e4 <PortConfig+0x1a8>)
     8ec:	6892      	ldr	r2, [r2, #8]
     8ee:	0b92      	lsrs	r2, r2, #14
     8f0:	0392      	lsls	r2, r2, #14
     8f2:	609a      	str	r2, [r3, #8]
     8f4:	4b3b      	ldr	r3, [pc, #236]	; (9e4 <PortConfig+0x1a8>)
     8f6:	4a3b      	ldr	r2, [pc, #236]	; (9e4 <PortConfig+0x1a8>)
     8f8:	6892      	ldr	r2, [r2, #8]
     8fa:	493d      	ldr	r1, [pc, #244]	; (9f0 <PortConfig+0x1b4>)
     8fc:	430a      	orrs	r2, r1
     8fe:	609a      	str	r2, [r3, #8]
     900:	4b38      	ldr	r3, [pc, #224]	; (9e4 <PortConfig+0x1a8>)
     902:	4a38      	ldr	r2, [pc, #224]	; (9e4 <PortConfig+0x1a8>)
     904:	68d2      	ldr	r2, [r2, #12]
     906:	217f      	movs	r1, #127	; 0x7f
     908:	430a      	orrs	r2, r1
     90a:	60da      	str	r2, [r3, #12]
     90c:	4b35      	ldr	r3, [pc, #212]	; (9e4 <PortConfig+0x1a8>)
     90e:	4a35      	ldr	r2, [pc, #212]	; (9e4 <PortConfig+0x1a8>)
     910:	6992      	ldr	r2, [r2, #24]
     912:	4938      	ldr	r1, [pc, #224]	; (9f4 <PortConfig+0x1b8>)
     914:	430a      	orrs	r2, r1
     916:	619a      	str	r2, [r3, #24]
     918:	4b2f      	ldr	r3, [pc, #188]	; (9d8 <PortConfig+0x19c>)
     91a:	4a2f      	ldr	r2, [pc, #188]	; (9d8 <PortConfig+0x19c>)
     91c:	69d2      	ldr	r2, [r2, #28]
     91e:	2180      	movs	r1, #128	; 0x80
     920:	0489      	lsls	r1, r1, #18
     922:	430a      	orrs	r2, r1
     924:	61da      	str	r2, [r3, #28]
     926:	4b34      	ldr	r3, [pc, #208]	; (9f8 <PortConfig+0x1bc>)
     928:	4a2d      	ldr	r2, [pc, #180]	; (9e0 <PortConfig+0x1a4>)
     92a:	60da      	str	r2, [r3, #12]
     92c:	4b32      	ldr	r3, [pc, #200]	; (9f8 <PortConfig+0x1bc>)
     92e:	2200      	movs	r2, #0
     930:	609a      	str	r2, [r3, #8]
     932:	4b31      	ldr	r3, [pc, #196]	; (9f8 <PortConfig+0x1bc>)
     934:	2201      	movs	r2, #1
     936:	4252      	negs	r2, r2
     938:	619a      	str	r2, [r3, #24]
     93a:	4b2f      	ldr	r3, [pc, #188]	; (9f8 <PortConfig+0x1bc>)
     93c:	4a28      	ldr	r2, [pc, #160]	; (9e0 <PortConfig+0x1a4>)
     93e:	605a      	str	r2, [r3, #4]
     940:	4b2d      	ldr	r3, [pc, #180]	; (9f8 <PortConfig+0x1bc>)
     942:	2200      	movs	r2, #0
     944:	601a      	str	r2, [r3, #0]
     946:	4b24      	ldr	r3, [pc, #144]	; (9d8 <PortConfig+0x19c>)
     948:	4a23      	ldr	r2, [pc, #140]	; (9d8 <PortConfig+0x19c>)
     94a:	69d2      	ldr	r2, [r2, #28]
     94c:	2180      	movs	r1, #128	; 0x80
     94e:	0409      	lsls	r1, r1, #16
     950:	430a      	orrs	r2, r1
     952:	61da      	str	r2, [r3, #28]
     954:	4b25      	ldr	r3, [pc, #148]	; (9ec <PortConfig+0x1b0>)
     956:	4a25      	ldr	r2, [pc, #148]	; (9ec <PortConfig+0x1b0>)
     958:	6892      	ldr	r2, [r2, #8]
     95a:	4928      	ldr	r1, [pc, #160]	; (9fc <PortConfig+0x1c0>)
     95c:	400a      	ands	r2, r1
     95e:	609a      	str	r2, [r3, #8]
     960:	4b22      	ldr	r3, [pc, #136]	; (9ec <PortConfig+0x1b0>)
     962:	4a22      	ldr	r2, [pc, #136]	; (9ec <PortConfig+0x1b0>)
     964:	6892      	ldr	r2, [r2, #8]
     966:	21a0      	movs	r1, #160	; 0xa0
     968:	0049      	lsls	r1, r1, #1
     96a:	430a      	orrs	r2, r1
     96c:	609a      	str	r2, [r3, #8]
     96e:	4b1f      	ldr	r3, [pc, #124]	; (9ec <PortConfig+0x1b0>)
     970:	4a1e      	ldr	r2, [pc, #120]	; (9ec <PortConfig+0x1b0>)
     972:	68d2      	ldr	r2, [r2, #12]
     974:	2118      	movs	r1, #24
     976:	430a      	orrs	r2, r1
     978:	60da      	str	r2, [r3, #12]
     97a:	4b1c      	ldr	r3, [pc, #112]	; (9ec <PortConfig+0x1b0>)
     97c:	4a1b      	ldr	r2, [pc, #108]	; (9ec <PortConfig+0x1b0>)
     97e:	6992      	ldr	r2, [r2, #24]
     980:	21f0      	movs	r1, #240	; 0xf0
     982:	0089      	lsls	r1, r1, #2
     984:	430a      	orrs	r2, r1
     986:	619a      	str	r2, [r3, #24]
     988:	4b18      	ldr	r3, [pc, #96]	; (9ec <PortConfig+0x1b0>)
     98a:	4a18      	ldr	r2, [pc, #96]	; (9ec <PortConfig+0x1b0>)
     98c:	6812      	ldr	r2, [r2, #0]
     98e:	2118      	movs	r1, #24
     990:	438a      	bics	r2, r1
     992:	601a      	str	r2, [r3, #0]
     994:	4b15      	ldr	r3, [pc, #84]	; (9ec <PortConfig+0x1b0>)
     996:	4a15      	ldr	r2, [pc, #84]	; (9ec <PortConfig+0x1b0>)
     998:	6912      	ldr	r2, [r2, #16]
     99a:	2180      	movs	r1, #128	; 0x80
     99c:	0349      	lsls	r1, r1, #13
     99e:	430a      	orrs	r2, r1
     9a0:	611a      	str	r2, [r3, #16]
     9a2:	4b0d      	ldr	r3, [pc, #52]	; (9d8 <PortConfig+0x19c>)
     9a4:	4a0c      	ldr	r2, [pc, #48]	; (9d8 <PortConfig+0x19c>)
     9a6:	69d2      	ldr	r2, [r2, #28]
     9a8:	2180      	movs	r1, #128	; 0x80
     9aa:	0589      	lsls	r1, r1, #22
     9ac:	430a      	orrs	r2, r1
     9ae:	61da      	str	r2, [r3, #28]
     9b0:	4b13      	ldr	r3, [pc, #76]	; (a00 <PortConfig+0x1c4>)
     9b2:	4a0b      	ldr	r2, [pc, #44]	; (9e0 <PortConfig+0x1a4>)
     9b4:	60da      	str	r2, [r3, #12]
     9b6:	4b12      	ldr	r3, [pc, #72]	; (a00 <PortConfig+0x1c4>)
     9b8:	2200      	movs	r2, #0
     9ba:	609a      	str	r2, [r3, #8]
     9bc:	4b10      	ldr	r3, [pc, #64]	; (a00 <PortConfig+0x1c4>)
     9be:	2201      	movs	r2, #1
     9c0:	4252      	negs	r2, r2
     9c2:	619a      	str	r2, [r3, #24]
     9c4:	4b0e      	ldr	r3, [pc, #56]	; (a00 <PortConfig+0x1c4>)
     9c6:	4a06      	ldr	r2, [pc, #24]	; (9e0 <PortConfig+0x1a4>)
     9c8:	605a      	str	r2, [r3, #4]
     9ca:	4b0d      	ldr	r3, [pc, #52]	; (a00 <PortConfig+0x1c4>)
     9cc:	2200      	movs	r2, #0
     9ce:	601a      	str	r2, [r3, #0]
     9d0:	46c0      	nop			; (mov r8, r8)
     9d2:	46bd      	mov	sp, r7
     9d4:	bd80      	pop	{r7, pc}
     9d6:	46c0      	nop			; (mov r8, r8)
     9d8:	40020000 	.word	0x40020000
     9dc:	400a8000 	.word	0x400a8000
     9e0:	0000ffff 	.word	0x0000ffff
     9e4:	400c0000 	.word	0x400c0000
     9e8:	ffffc7ff 	.word	0xffffc7ff
     9ec:	400b8000 	.word	0x400b8000
     9f0:	00001555 	.word	0x00001555
     9f4:	00003fff 	.word	0x00003fff
     9f8:	400c8000 	.word	0x400c8000
     9fc:	fffffc3f 	.word	0xfffffc3f
     a00:	400e8000 	.word	0x400e8000

00000a04 <dac_init>:
     a04:	b580      	push	{r7, lr}
     a06:	af00      	add	r7, sp, #0
     a08:	4b07      	ldr	r3, [pc, #28]	; (a28 <dac_init+0x24>)
     a0a:	4a07      	ldr	r2, [pc, #28]	; (a28 <dac_init+0x24>)
     a0c:	69d2      	ldr	r2, [r2, #28]
     a0e:	2180      	movs	r1, #128	; 0x80
     a10:	02c9      	lsls	r1, r1, #11
     a12:	430a      	orrs	r2, r1
     a14:	61da      	str	r2, [r3, #28]
     a16:	4b05      	ldr	r3, [pc, #20]	; (a2c <dac_init+0x28>)
     a18:	4a04      	ldr	r2, [pc, #16]	; (a2c <dac_init+0x28>)
     a1a:	6812      	ldr	r2, [r2, #0]
     a1c:	2104      	movs	r1, #4
     a1e:	430a      	orrs	r2, r1
     a20:	601a      	str	r2, [r3, #0]
     a22:	46c0      	nop			; (mov r8, r8)
     a24:	46bd      	mov	sp, r7
     a26:	bd80      	pop	{r7, pc}
     a28:	40020000 	.word	0x40020000
     a2c:	40090000 	.word	0x40090000

00000a30 <ClkConfig>:
     a30:	b580      	push	{r7, lr}
     a32:	af00      	add	r7, sp, #0
     a34:	4b18      	ldr	r3, [pc, #96]	; (a98 <ClkConfig+0x68>)
     a36:	4a18      	ldr	r2, [pc, #96]	; (a98 <ClkConfig+0x68>)
     a38:	6892      	ldr	r2, [r2, #8]
     a3a:	2101      	movs	r1, #1
     a3c:	430a      	orrs	r2, r1
     a3e:	609a      	str	r2, [r3, #8]
     a40:	46c0      	nop			; (mov r8, r8)
     a42:	4b15      	ldr	r3, [pc, #84]	; (a98 <ClkConfig+0x68>)
     a44:	681b      	ldr	r3, [r3, #0]
     a46:	2204      	movs	r2, #4
     a48:	4013      	ands	r3, r2
     a4a:	d0fa      	beq.n	a42 <ClkConfig+0x12>
     a4c:	4b12      	ldr	r3, [pc, #72]	; (a98 <ClkConfig+0x68>)
     a4e:	4a12      	ldr	r2, [pc, #72]	; (a98 <ClkConfig+0x68>)
     a50:	68d2      	ldr	r2, [r2, #12]
     a52:	2102      	movs	r1, #2
     a54:	430a      	orrs	r2, r1
     a56:	60da      	str	r2, [r3, #12]
     a58:	4b0f      	ldr	r3, [pc, #60]	; (a98 <ClkConfig+0x68>)
     a5a:	4a10      	ldr	r2, [pc, #64]	; (a9c <ClkConfig+0x6c>)
     a5c:	605a      	str	r2, [r3, #4]
     a5e:	46c0      	nop			; (mov r8, r8)
     a60:	4b0d      	ldr	r3, [pc, #52]	; (a98 <ClkConfig+0x68>)
     a62:	681b      	ldr	r3, [r3, #0]
     a64:	2202      	movs	r2, #2
     a66:	4013      	ands	r3, r2
     a68:	d0fa      	beq.n	a60 <ClkConfig+0x30>
     a6a:	4b0d      	ldr	r3, [pc, #52]	; (aa0 <ClkConfig+0x70>)
     a6c:	4a0c      	ldr	r2, [pc, #48]	; (aa0 <ClkConfig+0x70>)
     a6e:	6812      	ldr	r2, [r2, #0]
     a70:	2120      	movs	r1, #32
     a72:	430a      	orrs	r2, r1
     a74:	601a      	str	r2, [r3, #0]
     a76:	4b08      	ldr	r3, [pc, #32]	; (a98 <ClkConfig+0x68>)
     a78:	4a07      	ldr	r2, [pc, #28]	; (a98 <ClkConfig+0x68>)
     a7a:	68d2      	ldr	r2, [r2, #12]
     a7c:	2180      	movs	r1, #128	; 0x80
     a7e:	0049      	lsls	r1, r1, #1
     a80:	430a      	orrs	r2, r1
     a82:	60da      	str	r2, [r3, #12]
     a84:	4b04      	ldr	r3, [pc, #16]	; (a98 <ClkConfig+0x68>)
     a86:	4a04      	ldr	r2, [pc, #16]	; (a98 <ClkConfig+0x68>)
     a88:	68d2      	ldr	r2, [r2, #12]
     a8a:	2104      	movs	r1, #4
     a8c:	430a      	orrs	r2, r1
     a8e:	60da      	str	r2, [r3, #12]
     a90:	46c0      	nop			; (mov r8, r8)
     a92:	46bd      	mov	sp, r7
     a94:	bd80      	pop	{r7, pc}
     a96:	46c0      	nop			; (mov r8, r8)
     a98:	40020000 	.word	0x40020000
     a9c:	00000b04 	.word	0x00000b04
     aa0:	40018000 	.word	0x40018000

00000aa4 <TimerConfig>:
     aa4:	b580      	push	{r7, lr}
     aa6:	af00      	add	r7, sp, #0
     aa8:	4b5d      	ldr	r3, [pc, #372]	; (c20 <TimerConfig+0x17c>)
     aaa:	4a5d      	ldr	r2, [pc, #372]	; (c20 <TimerConfig+0x17c>)
     aac:	69d2      	ldr	r2, [r2, #28]
     aae:	2180      	movs	r1, #128	; 0x80
     ab0:	01c9      	lsls	r1, r1, #7
     ab2:	430a      	orrs	r2, r1
     ab4:	61da      	str	r2, [r3, #28]
     ab6:	4b5a      	ldr	r3, [pc, #360]	; (c20 <TimerConfig+0x17c>)
     ab8:	4a59      	ldr	r2, [pc, #356]	; (c20 <TimerConfig+0x17c>)
     aba:	6a52      	ldr	r2, [r2, #36]	; 0x24
     abc:	2180      	movs	r1, #128	; 0x80
     abe:	0449      	lsls	r1, r1, #17
     ac0:	430a      	orrs	r2, r1
     ac2:	625a      	str	r2, [r3, #36]	; 0x24
     ac4:	4b56      	ldr	r3, [pc, #344]	; (c20 <TimerConfig+0x17c>)
     ac6:	4a56      	ldr	r2, [pc, #344]	; (c20 <TimerConfig+0x17c>)
     ac8:	6a52      	ldr	r2, [r2, #36]	; 0x24
     aca:	21ff      	movs	r1, #255	; 0xff
     acc:	438a      	bics	r2, r1
     ace:	625a      	str	r2, [r3, #36]	; 0x24
     ad0:	4b54      	ldr	r3, [pc, #336]	; (c24 <TimerConfig+0x180>)
     ad2:	2200      	movs	r2, #0
     ad4:	601a      	str	r2, [r3, #0]
     ad6:	4b53      	ldr	r3, [pc, #332]	; (c24 <TimerConfig+0x180>)
     ad8:	225f      	movs	r2, #95	; 0x5f
     ada:	605a      	str	r2, [r3, #4]
     adc:	4b51      	ldr	r3, [pc, #324]	; (c24 <TimerConfig+0x180>)
     ade:	4a52      	ldr	r2, [pc, #328]	; (c28 <TimerConfig+0x184>)
     ae0:	609a      	str	r2, [r3, #8]
     ae2:	4b50      	ldr	r3, [pc, #320]	; (c24 <TimerConfig+0x180>)
     ae4:	22c8      	movs	r2, #200	; 0xc8
     ae6:	0052      	lsls	r2, r2, #1
     ae8:	611a      	str	r2, [r3, #16]
     aea:	4b4e      	ldr	r3, [pc, #312]	; (c24 <TimerConfig+0x180>)
     aec:	22af      	movs	r2, #175	; 0xaf
     aee:	0092      	lsls	r2, r2, #2
     af0:	615a      	str	r2, [r3, #20]
     af2:	4b4c      	ldr	r3, [pc, #304]	; (c24 <TimerConfig+0x180>)
     af4:	4a4d      	ldr	r2, [pc, #308]	; (c2c <TimerConfig+0x188>)
     af6:	619a      	str	r2, [r3, #24]
     af8:	4b4a      	ldr	r3, [pc, #296]	; (c24 <TimerConfig+0x180>)
     afa:	4a4a      	ldr	r2, [pc, #296]	; (c24 <TimerConfig+0x180>)
     afc:	6a12      	ldr	r2, [r2, #32]
     afe:	494c      	ldr	r1, [pc, #304]	; (c30 <TimerConfig+0x18c>)
     b00:	400a      	ands	r2, r1
     b02:	621a      	str	r2, [r3, #32]
     b04:	4b47      	ldr	r3, [pc, #284]	; (c24 <TimerConfig+0x180>)
     b06:	4a47      	ldr	r2, [pc, #284]	; (c24 <TimerConfig+0x180>)
     b08:	6a12      	ldr	r2, [r2, #32]
     b0a:	21e0      	movs	r1, #224	; 0xe0
     b0c:	0109      	lsls	r1, r1, #4
     b0e:	430a      	orrs	r2, r1
     b10:	621a      	str	r2, [r3, #32]
     b12:	4b44      	ldr	r3, [pc, #272]	; (c24 <TimerConfig+0x180>)
     b14:	4a43      	ldr	r2, [pc, #268]	; (c24 <TimerConfig+0x180>)
     b16:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b18:	210f      	movs	r1, #15
     b1a:	438a      	bics	r2, r1
     b1c:	631a      	str	r2, [r3, #48]	; 0x30
     b1e:	4b41      	ldr	r3, [pc, #260]	; (c24 <TimerConfig+0x180>)
     b20:	4a40      	ldr	r2, [pc, #256]	; (c24 <TimerConfig+0x180>)
     b22:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b24:	210c      	movs	r1, #12
     b26:	430a      	orrs	r2, r1
     b28:	631a      	str	r2, [r3, #48]	; 0x30
     b2a:	4b3e      	ldr	r3, [pc, #248]	; (c24 <TimerConfig+0x180>)
     b2c:	4a3d      	ldr	r2, [pc, #244]	; (c24 <TimerConfig+0x180>)
     b2e:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b30:	2101      	movs	r1, #1
     b32:	430a      	orrs	r2, r1
     b34:	631a      	str	r2, [r3, #48]	; 0x30
     b36:	4b3b      	ldr	r3, [pc, #236]	; (c24 <TimerConfig+0x180>)
     b38:	4a3a      	ldr	r2, [pc, #232]	; (c24 <TimerConfig+0x180>)
     b3a:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b3c:	493c      	ldr	r1, [pc, #240]	; (c30 <TimerConfig+0x18c>)
     b3e:	400a      	ands	r2, r1
     b40:	625a      	str	r2, [r3, #36]	; 0x24
     b42:	4b38      	ldr	r3, [pc, #224]	; (c24 <TimerConfig+0x180>)
     b44:	4a37      	ldr	r2, [pc, #220]	; (c24 <TimerConfig+0x180>)
     b46:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b48:	21e0      	movs	r1, #224	; 0xe0
     b4a:	0109      	lsls	r1, r1, #4
     b4c:	430a      	orrs	r2, r1
     b4e:	625a      	str	r2, [r3, #36]	; 0x24
     b50:	4b34      	ldr	r3, [pc, #208]	; (c24 <TimerConfig+0x180>)
     b52:	4a34      	ldr	r2, [pc, #208]	; (c24 <TimerConfig+0x180>)
     b54:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b56:	210f      	movs	r1, #15
     b58:	438a      	bics	r2, r1
     b5a:	635a      	str	r2, [r3, #52]	; 0x34
     b5c:	4b31      	ldr	r3, [pc, #196]	; (c24 <TimerConfig+0x180>)
     b5e:	4a31      	ldr	r2, [pc, #196]	; (c24 <TimerConfig+0x180>)
     b60:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b62:	210c      	movs	r1, #12
     b64:	430a      	orrs	r2, r1
     b66:	635a      	str	r2, [r3, #52]	; 0x34
     b68:	4b2e      	ldr	r3, [pc, #184]	; (c24 <TimerConfig+0x180>)
     b6a:	4a2e      	ldr	r2, [pc, #184]	; (c24 <TimerConfig+0x180>)
     b6c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b6e:	2101      	movs	r1, #1
     b70:	430a      	orrs	r2, r1
     b72:	635a      	str	r2, [r3, #52]	; 0x34
     b74:	4b2b      	ldr	r3, [pc, #172]	; (c24 <TimerConfig+0x180>)
     b76:	4a2b      	ldr	r2, [pc, #172]	; (c24 <TimerConfig+0x180>)
     b78:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b7a:	492d      	ldr	r1, [pc, #180]	; (c30 <TimerConfig+0x18c>)
     b7c:	400a      	ands	r2, r1
     b7e:	629a      	str	r2, [r3, #40]	; 0x28
     b80:	4b28      	ldr	r3, [pc, #160]	; (c24 <TimerConfig+0x180>)
     b82:	4a28      	ldr	r2, [pc, #160]	; (c24 <TimerConfig+0x180>)
     b84:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b86:	21e0      	movs	r1, #224	; 0xe0
     b88:	0109      	lsls	r1, r1, #4
     b8a:	430a      	orrs	r2, r1
     b8c:	629a      	str	r2, [r3, #40]	; 0x28
     b8e:	4b25      	ldr	r3, [pc, #148]	; (c24 <TimerConfig+0x180>)
     b90:	4a24      	ldr	r2, [pc, #144]	; (c24 <TimerConfig+0x180>)
     b92:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b94:	210f      	movs	r1, #15
     b96:	438a      	bics	r2, r1
     b98:	639a      	str	r2, [r3, #56]	; 0x38
     b9a:	4b22      	ldr	r3, [pc, #136]	; (c24 <TimerConfig+0x180>)
     b9c:	4a21      	ldr	r2, [pc, #132]	; (c24 <TimerConfig+0x180>)
     b9e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     ba0:	210c      	movs	r1, #12
     ba2:	430a      	orrs	r2, r1
     ba4:	639a      	str	r2, [r3, #56]	; 0x38
     ba6:	4b1f      	ldr	r3, [pc, #124]	; (c24 <TimerConfig+0x180>)
     ba8:	4a1e      	ldr	r2, [pc, #120]	; (c24 <TimerConfig+0x180>)
     baa:	6b92      	ldr	r2, [r2, #56]	; 0x38
     bac:	2101      	movs	r1, #1
     bae:	430a      	orrs	r2, r1
     bb0:	639a      	str	r2, [r3, #56]	; 0x38
     bb2:	4b1c      	ldr	r3, [pc, #112]	; (c24 <TimerConfig+0x180>)
     bb4:	4a1b      	ldr	r2, [pc, #108]	; (c24 <TimerConfig+0x180>)
     bb6:	6d92      	ldr	r2, [r2, #88]	; 0x58
     bb8:	21e0      	movs	r1, #224	; 0xe0
     bba:	0109      	lsls	r1, r1, #4
     bbc:	430a      	orrs	r2, r1
     bbe:	659a      	str	r2, [r3, #88]	; 0x58
     bc0:	4b18      	ldr	r3, [pc, #96]	; (c24 <TimerConfig+0x180>)
     bc2:	2201      	movs	r2, #1
     bc4:	60da      	str	r2, [r3, #12]
     bc6:	4b16      	ldr	r3, [pc, #88]	; (c20 <TimerConfig+0x17c>)
     bc8:	4a15      	ldr	r2, [pc, #84]	; (c20 <TimerConfig+0x17c>)
     bca:	69d2      	ldr	r2, [r2, #28]
     bcc:	2180      	movs	r1, #128	; 0x80
     bce:	0309      	lsls	r1, r1, #12
     bd0:	430a      	orrs	r2, r1
     bd2:	61da      	str	r2, [r3, #28]
     bd4:	4b12      	ldr	r3, [pc, #72]	; (c20 <TimerConfig+0x17c>)
     bd6:	4a12      	ldr	r2, [pc, #72]	; (c20 <TimerConfig+0x17c>)
     bd8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     bda:	2180      	movs	r1, #128	; 0x80
     bdc:	04c9      	lsls	r1, r1, #19
     bde:	430a      	orrs	r2, r1
     be0:	629a      	str	r2, [r3, #40]	; 0x28
     be2:	4b0f      	ldr	r3, [pc, #60]	; (c20 <TimerConfig+0x17c>)
     be4:	4a0e      	ldr	r2, [pc, #56]	; (c20 <TimerConfig+0x17c>)
     be6:	6a92      	ldr	r2, [r2, #40]	; 0x28
     be8:	4912      	ldr	r1, [pc, #72]	; (c34 <TimerConfig+0x190>)
     bea:	400a      	ands	r2, r1
     bec:	629a      	str	r2, [r3, #40]	; 0x28
     bee:	4b12      	ldr	r3, [pc, #72]	; (c38 <TimerConfig+0x194>)
     bf0:	2200      	movs	r2, #0
     bf2:	601a      	str	r2, [r3, #0]
     bf4:	4b10      	ldr	r3, [pc, #64]	; (c38 <TimerConfig+0x194>)
     bf6:	225f      	movs	r2, #95	; 0x5f
     bf8:	605a      	str	r2, [r3, #4]
     bfa:	4b0f      	ldr	r3, [pc, #60]	; (c38 <TimerConfig+0x194>)
     bfc:	4a0a      	ldr	r2, [pc, #40]	; (c28 <TimerConfig+0x184>)
     bfe:	609a      	str	r2, [r3, #8]
     c00:	4b0d      	ldr	r3, [pc, #52]	; (c38 <TimerConfig+0x194>)
     c02:	4a0d      	ldr	r2, [pc, #52]	; (c38 <TimerConfig+0x194>)
     c04:	6d92      	ldr	r2, [r2, #88]	; 0x58
     c06:	2102      	movs	r1, #2
     c08:	430a      	orrs	r2, r1
     c0a:	659a      	str	r2, [r3, #88]	; 0x58
     c0c:	4b0a      	ldr	r3, [pc, #40]	; (c38 <TimerConfig+0x194>)
     c0e:	2201      	movs	r2, #1
     c10:	60da      	str	r2, [r3, #12]
     c12:	200d      	movs	r0, #13
     c14:	f7ff fa54 	bl	c0 <NVIC_EnableIRQ>
     c18:	46c0      	nop			; (mov r8, r8)
     c1a:	46bd      	mov	sp, r7
     c1c:	bd80      	pop	{r7, pc}
     c1e:	46c0      	nop			; (mov r8, r8)
     c20:	40020000 	.word	0x40020000
     c24:	40070000 	.word	0x40070000
     c28:	000003e7 	.word	0x000003e7
     c2c:	000003de 	.word	0x000003de
     c30:	fffff1ff 	.word	0xfffff1ff
     c34:	ff00ffff 	.word	0xff00ffff
     c38:	40098000 	.word	0x40098000

00000c3c <mil_std_1533_init_rt>:
     c3c:	b580      	push	{r7, lr}
     c3e:	b082      	sub	sp, #8
     c40:	af00      	add	r7, sp, #0
     c42:	4b26      	ldr	r3, [pc, #152]	; (cdc <mil_std_1533_init_rt+0xa0>)
     c44:	603b      	str	r3, [r7, #0]
     c46:	4b26      	ldr	r3, [pc, #152]	; (ce0 <mil_std_1533_init_rt+0xa4>)
     c48:	4a25      	ldr	r2, [pc, #148]	; (ce0 <mil_std_1533_init_rt+0xa4>)
     c4a:	69d2      	ldr	r2, [r2, #28]
     c4c:	2180      	movs	r1, #128	; 0x80
     c4e:	0089      	lsls	r1, r1, #2
     c50:	430a      	orrs	r2, r1
     c52:	61da      	str	r2, [r3, #28]
     c54:	4b22      	ldr	r3, [pc, #136]	; (ce0 <mil_std_1533_init_rt+0xa4>)
     c56:	4a22      	ldr	r2, [pc, #136]	; (ce0 <mil_std_1533_init_rt+0xa4>)
     c58:	6b52      	ldr	r2, [r2, #52]	; 0x34
     c5a:	4922      	ldr	r1, [pc, #136]	; (ce4 <mil_std_1533_init_rt+0xa8>)
     c5c:	430a      	orrs	r2, r1
     c5e:	635a      	str	r2, [r3, #52]	; 0x34
     c60:	4a21      	ldr	r2, [pc, #132]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c62:	2380      	movs	r3, #128	; 0x80
     c64:	015b      	lsls	r3, r3, #5
     c66:	2101      	movs	r1, #1
     c68:	50d1      	str	r1, [r2, r3]
     c6a:	4a1f      	ldr	r2, [pc, #124]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c6c:	2380      	movs	r3, #128	; 0x80
     c6e:	015b      	lsls	r3, r3, #5
     c70:	491e      	ldr	r1, [pc, #120]	; (cec <mil_std_1533_init_rt+0xb0>)
     c72:	50d1      	str	r1, [r2, r3]
     c74:	491c      	ldr	r1, [pc, #112]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c76:	4a1c      	ldr	r2, [pc, #112]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c78:	2381      	movs	r3, #129	; 0x81
     c7a:	015b      	lsls	r3, r3, #5
     c7c:	58d3      	ldr	r3, [r2, r3]
     c7e:	2208      	movs	r2, #8
     c80:	431a      	orrs	r2, r3
     c82:	2381      	movs	r3, #129	; 0x81
     c84:	015b      	lsls	r3, r3, #5
     c86:	50ca      	str	r2, [r1, r3]
     c88:	4917      	ldr	r1, [pc, #92]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c8a:	4a17      	ldr	r2, [pc, #92]	; (ce8 <mil_std_1533_init_rt+0xac>)
     c8c:	2381      	movs	r3, #129	; 0x81
     c8e:	015b      	lsls	r3, r3, #5
     c90:	58d3      	ldr	r3, [r2, r3]
     c92:	2206      	movs	r2, #6
     c94:	431a      	orrs	r2, r3
     c96:	2381      	movs	r3, #129	; 0x81
     c98:	015b      	lsls	r3, r3, #5
     c9a:	50ca      	str	r2, [r1, r3]
     c9c:	2001      	movs	r0, #1
     c9e:	f7ff fa0f 	bl	c0 <NVIC_EnableIRQ>
     ca2:	4911      	ldr	r1, [pc, #68]	; (ce8 <mil_std_1533_init_rt+0xac>)
     ca4:	4a12      	ldr	r2, [pc, #72]	; (cf0 <mil_std_1533_init_rt+0xb4>)
     ca6:	2380      	movs	r3, #128	; 0x80
     ca8:	01db      	lsls	r3, r3, #7
     caa:	508b      	str	r3, [r1, r2]
     cac:	2300      	movs	r3, #0
     cae:	607b      	str	r3, [r7, #4]
     cb0:	e00d      	b.n	cce <mil_std_1533_init_rt+0x92>
     cb2:	683b      	ldr	r3, [r7, #0]
     cb4:	1d1a      	adds	r2, r3, #4
     cb6:	603a      	str	r2, [r7, #0]
     cb8:	687a      	ldr	r2, [r7, #4]
     cba:	b292      	uxth	r2, r2
     cbc:	210f      	movs	r1, #15
     cbe:	400a      	ands	r2, r1
     cc0:	b292      	uxth	r2, r2
     cc2:	3230      	adds	r2, #48	; 0x30
     cc4:	b292      	uxth	r2, r2
     cc6:	601a      	str	r2, [r3, #0]
     cc8:	687b      	ldr	r3, [r7, #4]
     cca:	3301      	adds	r3, #1
     ccc:	607b      	str	r3, [r7, #4]
     cce:	687b      	ldr	r3, [r7, #4]
     cd0:	2b1f      	cmp	r3, #31
     cd2:	ddee      	ble.n	cb2 <mil_std_1533_init_rt+0x76>
     cd4:	46c0      	nop			; (mov r8, r8)
     cd6:	46bd      	mov	sp, r7
     cd8:	b002      	add	sp, #8
     cda:	bd80      	pop	{r7, pc}
     cdc:	40048080 	.word	0x40048080
     ce0:	40020000 	.word	0x40020000
     ce4:	02000100 	.word	0x02000100
     ce8:	40048000 	.word	0x40048000
     cec:	00018238 	.word	0x00018238
     cf0:	00001018 	.word	0x00001018

00000cf4 <SystemInit>:
     cf4:	b580      	push	{r7, lr}
     cf6:	af00      	add	r7, sp, #0
     cf8:	f7ff fe9a 	bl	a30 <ClkConfig>
     cfc:	f7ff fd9e 	bl	83c <PortConfig>
     d00:	f7ff fed0 	bl	aa4 <TimerConfig>
     d04:	f000 f9fa 	bl	10fc <uart_init>
     d08:	f7ff ff98 	bl	c3c <mil_std_1533_init_rt>
     d0c:	f7ff fe7a 	bl	a04 <dac_init>
     d10:	f000 ffea 	bl	1ce8 <adc_dma_init>
     d14:	f001 f828 	bl	1d68 <adc_dma_start>
     d18:	46c0      	nop			; (mov r8, r8)
     d1a:	46bd      	mov	sp, r7
     d1c:	bd80      	pop	{r7, pc}
     d1e:	46c0      	nop			; (mov r8, r8)

00000d20 <SysTick_Handler>:
     d20:	b580      	push	{r7, lr}
     d22:	af00      	add	r7, sp, #0
     d24:	4b03      	ldr	r3, [pc, #12]	; (d34 <SysTick_Handler+0x14>)
     d26:	681b      	ldr	r3, [r3, #0]
     d28:	1c5a      	adds	r2, r3, #1
     d2a:	4b02      	ldr	r3, [pc, #8]	; (d34 <SysTick_Handler+0x14>)
     d2c:	601a      	str	r2, [r3, #0]
     d2e:	46c0      	nop			; (mov r8, r8)
     d30:	46bd      	mov	sp, r7
     d32:	bd80      	pop	{r7, pc}
     d34:	200000f0 	.word	0x200000f0

00000d38 <TIMER4_Handler>:
     d38:	b580      	push	{r7, lr}
     d3a:	af00      	add	r7, sp, #0
     d3c:	4b06      	ldr	r3, [pc, #24]	; (d58 <TIMER4_Handler+0x20>)
     d3e:	2200      	movs	r2, #0
     d40:	655a      	str	r2, [r3, #84]	; 0x54
     d42:	4b06      	ldr	r3, [pc, #24]	; (d5c <TIMER4_Handler+0x24>)
     d44:	681b      	ldr	r3, [r3, #0]
     d46:	1c5a      	adds	r2, r3, #1
     d48:	4b04      	ldr	r3, [pc, #16]	; (d5c <TIMER4_Handler+0x24>)
     d4a:	601a      	str	r2, [r3, #0]
     d4c:	4b04      	ldr	r3, [pc, #16]	; (d60 <TIMER4_Handler+0x28>)
     d4e:	2201      	movs	r2, #1
     d50:	601a      	str	r2, [r3, #0]
     d52:	46c0      	nop			; (mov r8, r8)
     d54:	46bd      	mov	sp, r7
     d56:	bd80      	pop	{r7, pc}
     d58:	40098000 	.word	0x40098000
     d5c:	200000f0 	.word	0x200000f0
     d60:	200000f8 	.word	0x200000f8

00000d64 <MIL_STD_1553B1_Handler>:
     d64:	b580      	push	{r7, lr}
     d66:	b086      	sub	sp, #24
     d68:	af00      	add	r7, sp, #0
     d6a:	4ba3      	ldr	r3, [pc, #652]	; (ff8 <MIL_STD_1553B1_Handler+0x294>)
     d6c:	617b      	str	r3, [r7, #20]
     d6e:	4aa3      	ldr	r2, [pc, #652]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     d70:	4ba3      	ldr	r3, [pc, #652]	; (1000 <MIL_STD_1553B1_Handler+0x29c>)
     d72:	58d3      	ldr	r3, [r2, r3]
     d74:	2202      	movs	r2, #2
     d76:	4013      	ands	r3, r2
     d78:	d100      	bne.n	d7c <MIL_STD_1553B1_Handler+0x18>
     d7a:	e10f      	b.n	f9c <MIL_STD_1553B1_Handler+0x238>
     d7c:	4a9f      	ldr	r2, [pc, #636]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     d7e:	4ba1      	ldr	r3, [pc, #644]	; (1004 <MIL_STD_1553B1_Handler+0x2a0>)
     d80:	58d3      	ldr	r3, [r2, r3]
     d82:	4aa1      	ldr	r2, [pc, #644]	; (1008 <MIL_STD_1553B1_Handler+0x2a4>)
     d84:	4293      	cmp	r3, r2
     d86:	d000      	beq.n	d8a <MIL_STD_1553B1_Handler+0x26>
     d88:	e108      	b.n	f9c <MIL_STD_1553B1_Handler+0x238>
     d8a:	4ba0      	ldr	r3, [pc, #640]	; (100c <MIL_STD_1553B1_Handler+0x2a8>)
     d8c:	681b      	ldr	r3, [r3, #0]
     d8e:	2201      	movs	r2, #1
     d90:	4053      	eors	r3, r2
     d92:	009a      	lsls	r2, r3, #2
     d94:	4b9e      	ldr	r3, [pc, #632]	; (1010 <MIL_STD_1553B1_Handler+0x2ac>)
     d96:	18d3      	adds	r3, r2, r3
     d98:	681b      	ldr	r3, [r3, #0]
     d9a:	613b      	str	r3, [r7, #16]
     d9c:	697b      	ldr	r3, [r7, #20]
     d9e:	1d1a      	adds	r2, r3, #4
     da0:	617a      	str	r2, [r7, #20]
     da2:	693a      	ldr	r2, [r7, #16]
     da4:	1c91      	adds	r1, r2, #2
     da6:	6139      	str	r1, [r7, #16]
     da8:	8812      	ldrh	r2, [r2, #0]
     daa:	601a      	str	r2, [r3, #0]
     dac:	697b      	ldr	r3, [r7, #20]
     dae:	1d1a      	adds	r2, r3, #4
     db0:	617a      	str	r2, [r7, #20]
     db2:	693a      	ldr	r2, [r7, #16]
     db4:	1c91      	adds	r1, r2, #2
     db6:	6139      	str	r1, [r7, #16]
     db8:	8812      	ldrh	r2, [r2, #0]
     dba:	601a      	str	r2, [r3, #0]
     dbc:	697b      	ldr	r3, [r7, #20]
     dbe:	1d1a      	adds	r2, r3, #4
     dc0:	617a      	str	r2, [r7, #20]
     dc2:	693a      	ldr	r2, [r7, #16]
     dc4:	1c91      	adds	r1, r2, #2
     dc6:	6139      	str	r1, [r7, #16]
     dc8:	8812      	ldrh	r2, [r2, #0]
     dca:	601a      	str	r2, [r3, #0]
     dcc:	697b      	ldr	r3, [r7, #20]
     dce:	1d1a      	adds	r2, r3, #4
     dd0:	617a      	str	r2, [r7, #20]
     dd2:	693a      	ldr	r2, [r7, #16]
     dd4:	1c91      	adds	r1, r2, #2
     dd6:	6139      	str	r1, [r7, #16]
     dd8:	8812      	ldrh	r2, [r2, #0]
     dda:	601a      	str	r2, [r3, #0]
     ddc:	697b      	ldr	r3, [r7, #20]
     dde:	1d1a      	adds	r2, r3, #4
     de0:	617a      	str	r2, [r7, #20]
     de2:	693a      	ldr	r2, [r7, #16]
     de4:	1c91      	adds	r1, r2, #2
     de6:	6139      	str	r1, [r7, #16]
     de8:	8812      	ldrh	r2, [r2, #0]
     dea:	601a      	str	r2, [r3, #0]
     dec:	697b      	ldr	r3, [r7, #20]
     dee:	1d1a      	adds	r2, r3, #4
     df0:	617a      	str	r2, [r7, #20]
     df2:	693a      	ldr	r2, [r7, #16]
     df4:	1c91      	adds	r1, r2, #2
     df6:	6139      	str	r1, [r7, #16]
     df8:	8812      	ldrh	r2, [r2, #0]
     dfa:	601a      	str	r2, [r3, #0]
     dfc:	697b      	ldr	r3, [r7, #20]
     dfe:	1d1a      	adds	r2, r3, #4
     e00:	617a      	str	r2, [r7, #20]
     e02:	693a      	ldr	r2, [r7, #16]
     e04:	1c91      	adds	r1, r2, #2
     e06:	6139      	str	r1, [r7, #16]
     e08:	8812      	ldrh	r2, [r2, #0]
     e0a:	601a      	str	r2, [r3, #0]
     e0c:	697b      	ldr	r3, [r7, #20]
     e0e:	1d1a      	adds	r2, r3, #4
     e10:	617a      	str	r2, [r7, #20]
     e12:	693a      	ldr	r2, [r7, #16]
     e14:	1c91      	adds	r1, r2, #2
     e16:	6139      	str	r1, [r7, #16]
     e18:	8812      	ldrh	r2, [r2, #0]
     e1a:	601a      	str	r2, [r3, #0]
     e1c:	697b      	ldr	r3, [r7, #20]
     e1e:	1d1a      	adds	r2, r3, #4
     e20:	617a      	str	r2, [r7, #20]
     e22:	693a      	ldr	r2, [r7, #16]
     e24:	1c91      	adds	r1, r2, #2
     e26:	6139      	str	r1, [r7, #16]
     e28:	8812      	ldrh	r2, [r2, #0]
     e2a:	601a      	str	r2, [r3, #0]
     e2c:	697b      	ldr	r3, [r7, #20]
     e2e:	1d1a      	adds	r2, r3, #4
     e30:	617a      	str	r2, [r7, #20]
     e32:	693a      	ldr	r2, [r7, #16]
     e34:	1c91      	adds	r1, r2, #2
     e36:	6139      	str	r1, [r7, #16]
     e38:	8812      	ldrh	r2, [r2, #0]
     e3a:	601a      	str	r2, [r3, #0]
     e3c:	697b      	ldr	r3, [r7, #20]
     e3e:	1d1a      	adds	r2, r3, #4
     e40:	617a      	str	r2, [r7, #20]
     e42:	693a      	ldr	r2, [r7, #16]
     e44:	1c91      	adds	r1, r2, #2
     e46:	6139      	str	r1, [r7, #16]
     e48:	8812      	ldrh	r2, [r2, #0]
     e4a:	601a      	str	r2, [r3, #0]
     e4c:	697b      	ldr	r3, [r7, #20]
     e4e:	1d1a      	adds	r2, r3, #4
     e50:	617a      	str	r2, [r7, #20]
     e52:	693a      	ldr	r2, [r7, #16]
     e54:	1c91      	adds	r1, r2, #2
     e56:	6139      	str	r1, [r7, #16]
     e58:	8812      	ldrh	r2, [r2, #0]
     e5a:	601a      	str	r2, [r3, #0]
     e5c:	697b      	ldr	r3, [r7, #20]
     e5e:	1d1a      	adds	r2, r3, #4
     e60:	617a      	str	r2, [r7, #20]
     e62:	693a      	ldr	r2, [r7, #16]
     e64:	1c91      	adds	r1, r2, #2
     e66:	6139      	str	r1, [r7, #16]
     e68:	8812      	ldrh	r2, [r2, #0]
     e6a:	601a      	str	r2, [r3, #0]
     e6c:	697b      	ldr	r3, [r7, #20]
     e6e:	1d1a      	adds	r2, r3, #4
     e70:	617a      	str	r2, [r7, #20]
     e72:	693a      	ldr	r2, [r7, #16]
     e74:	1c91      	adds	r1, r2, #2
     e76:	6139      	str	r1, [r7, #16]
     e78:	8812      	ldrh	r2, [r2, #0]
     e7a:	601a      	str	r2, [r3, #0]
     e7c:	697b      	ldr	r3, [r7, #20]
     e7e:	1d1a      	adds	r2, r3, #4
     e80:	617a      	str	r2, [r7, #20]
     e82:	693a      	ldr	r2, [r7, #16]
     e84:	1c91      	adds	r1, r2, #2
     e86:	6139      	str	r1, [r7, #16]
     e88:	8812      	ldrh	r2, [r2, #0]
     e8a:	601a      	str	r2, [r3, #0]
     e8c:	697b      	ldr	r3, [r7, #20]
     e8e:	1d1a      	adds	r2, r3, #4
     e90:	617a      	str	r2, [r7, #20]
     e92:	693a      	ldr	r2, [r7, #16]
     e94:	1c91      	adds	r1, r2, #2
     e96:	6139      	str	r1, [r7, #16]
     e98:	8812      	ldrh	r2, [r2, #0]
     e9a:	601a      	str	r2, [r3, #0]
     e9c:	697b      	ldr	r3, [r7, #20]
     e9e:	1d1a      	adds	r2, r3, #4
     ea0:	617a      	str	r2, [r7, #20]
     ea2:	693a      	ldr	r2, [r7, #16]
     ea4:	1c91      	adds	r1, r2, #2
     ea6:	6139      	str	r1, [r7, #16]
     ea8:	8812      	ldrh	r2, [r2, #0]
     eaa:	601a      	str	r2, [r3, #0]
     eac:	697b      	ldr	r3, [r7, #20]
     eae:	1d1a      	adds	r2, r3, #4
     eb0:	617a      	str	r2, [r7, #20]
     eb2:	693a      	ldr	r2, [r7, #16]
     eb4:	1c91      	adds	r1, r2, #2
     eb6:	6139      	str	r1, [r7, #16]
     eb8:	8812      	ldrh	r2, [r2, #0]
     eba:	601a      	str	r2, [r3, #0]
     ebc:	697b      	ldr	r3, [r7, #20]
     ebe:	1d1a      	adds	r2, r3, #4
     ec0:	617a      	str	r2, [r7, #20]
     ec2:	693a      	ldr	r2, [r7, #16]
     ec4:	1c91      	adds	r1, r2, #2
     ec6:	6139      	str	r1, [r7, #16]
     ec8:	8812      	ldrh	r2, [r2, #0]
     eca:	601a      	str	r2, [r3, #0]
     ecc:	697b      	ldr	r3, [r7, #20]
     ece:	1d1a      	adds	r2, r3, #4
     ed0:	617a      	str	r2, [r7, #20]
     ed2:	693a      	ldr	r2, [r7, #16]
     ed4:	1c91      	adds	r1, r2, #2
     ed6:	6139      	str	r1, [r7, #16]
     ed8:	8812      	ldrh	r2, [r2, #0]
     eda:	601a      	str	r2, [r3, #0]
     edc:	697b      	ldr	r3, [r7, #20]
     ede:	1d1a      	adds	r2, r3, #4
     ee0:	617a      	str	r2, [r7, #20]
     ee2:	693a      	ldr	r2, [r7, #16]
     ee4:	1c91      	adds	r1, r2, #2
     ee6:	6139      	str	r1, [r7, #16]
     ee8:	8812      	ldrh	r2, [r2, #0]
     eea:	601a      	str	r2, [r3, #0]
     eec:	697b      	ldr	r3, [r7, #20]
     eee:	1d1a      	adds	r2, r3, #4
     ef0:	617a      	str	r2, [r7, #20]
     ef2:	693a      	ldr	r2, [r7, #16]
     ef4:	1c91      	adds	r1, r2, #2
     ef6:	6139      	str	r1, [r7, #16]
     ef8:	8812      	ldrh	r2, [r2, #0]
     efa:	601a      	str	r2, [r3, #0]
     efc:	697b      	ldr	r3, [r7, #20]
     efe:	1d1a      	adds	r2, r3, #4
     f00:	617a      	str	r2, [r7, #20]
     f02:	693a      	ldr	r2, [r7, #16]
     f04:	1c91      	adds	r1, r2, #2
     f06:	6139      	str	r1, [r7, #16]
     f08:	8812      	ldrh	r2, [r2, #0]
     f0a:	601a      	str	r2, [r3, #0]
     f0c:	697b      	ldr	r3, [r7, #20]
     f0e:	1d1a      	adds	r2, r3, #4
     f10:	617a      	str	r2, [r7, #20]
     f12:	693a      	ldr	r2, [r7, #16]
     f14:	1c91      	adds	r1, r2, #2
     f16:	6139      	str	r1, [r7, #16]
     f18:	8812      	ldrh	r2, [r2, #0]
     f1a:	601a      	str	r2, [r3, #0]
     f1c:	697b      	ldr	r3, [r7, #20]
     f1e:	1d1a      	adds	r2, r3, #4
     f20:	617a      	str	r2, [r7, #20]
     f22:	693a      	ldr	r2, [r7, #16]
     f24:	1c91      	adds	r1, r2, #2
     f26:	6139      	str	r1, [r7, #16]
     f28:	8812      	ldrh	r2, [r2, #0]
     f2a:	601a      	str	r2, [r3, #0]
     f2c:	697b      	ldr	r3, [r7, #20]
     f2e:	1d1a      	adds	r2, r3, #4
     f30:	617a      	str	r2, [r7, #20]
     f32:	693a      	ldr	r2, [r7, #16]
     f34:	1c91      	adds	r1, r2, #2
     f36:	6139      	str	r1, [r7, #16]
     f38:	8812      	ldrh	r2, [r2, #0]
     f3a:	601a      	str	r2, [r3, #0]
     f3c:	697b      	ldr	r3, [r7, #20]
     f3e:	1d1a      	adds	r2, r3, #4
     f40:	617a      	str	r2, [r7, #20]
     f42:	693a      	ldr	r2, [r7, #16]
     f44:	1c91      	adds	r1, r2, #2
     f46:	6139      	str	r1, [r7, #16]
     f48:	8812      	ldrh	r2, [r2, #0]
     f4a:	601a      	str	r2, [r3, #0]
     f4c:	697b      	ldr	r3, [r7, #20]
     f4e:	1d1a      	adds	r2, r3, #4
     f50:	617a      	str	r2, [r7, #20]
     f52:	693a      	ldr	r2, [r7, #16]
     f54:	1c91      	adds	r1, r2, #2
     f56:	6139      	str	r1, [r7, #16]
     f58:	8812      	ldrh	r2, [r2, #0]
     f5a:	601a      	str	r2, [r3, #0]
     f5c:	697b      	ldr	r3, [r7, #20]
     f5e:	1d1a      	adds	r2, r3, #4
     f60:	617a      	str	r2, [r7, #20]
     f62:	693a      	ldr	r2, [r7, #16]
     f64:	1c91      	adds	r1, r2, #2
     f66:	6139      	str	r1, [r7, #16]
     f68:	8812      	ldrh	r2, [r2, #0]
     f6a:	601a      	str	r2, [r3, #0]
     f6c:	697b      	ldr	r3, [r7, #20]
     f6e:	1d1a      	adds	r2, r3, #4
     f70:	617a      	str	r2, [r7, #20]
     f72:	693a      	ldr	r2, [r7, #16]
     f74:	1c91      	adds	r1, r2, #2
     f76:	6139      	str	r1, [r7, #16]
     f78:	8812      	ldrh	r2, [r2, #0]
     f7a:	601a      	str	r2, [r3, #0]
     f7c:	697b      	ldr	r3, [r7, #20]
     f7e:	1d1a      	adds	r2, r3, #4
     f80:	617a      	str	r2, [r7, #20]
     f82:	693a      	ldr	r2, [r7, #16]
     f84:	1c91      	adds	r1, r2, #2
     f86:	6139      	str	r1, [r7, #16]
     f88:	8812      	ldrh	r2, [r2, #0]
     f8a:	601a      	str	r2, [r3, #0]
     f8c:	697b      	ldr	r3, [r7, #20]
     f8e:	1d1a      	adds	r2, r3, #4
     f90:	617a      	str	r2, [r7, #20]
     f92:	693a      	ldr	r2, [r7, #16]
     f94:	1c91      	adds	r1, r2, #2
     f96:	6139      	str	r1, [r7, #16]
     f98:	8812      	ldrh	r2, [r2, #0]
     f9a:	601a      	str	r2, [r3, #0]
     f9c:	4a17      	ldr	r2, [pc, #92]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     f9e:	4b18      	ldr	r3, [pc, #96]	; (1000 <MIL_STD_1553B1_Handler+0x29c>)
     fa0:	58d3      	ldr	r3, [r2, r3]
     fa2:	2204      	movs	r2, #4
     fa4:	4013      	ands	r3, r2
     fa6:	d020      	beq.n	fea <MIL_STD_1553B1_Handler+0x286>
     fa8:	4b1a      	ldr	r3, [pc, #104]	; (1014 <MIL_STD_1553B1_Handler+0x2b0>)
     faa:	681b      	ldr	r3, [r3, #0]
     fac:	1c5a      	adds	r2, r3, #1
     fae:	4b19      	ldr	r3, [pc, #100]	; (1014 <MIL_STD_1553B1_Handler+0x2b0>)
     fb0:	601a      	str	r2, [r3, #0]
     fb2:	4a12      	ldr	r2, [pc, #72]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     fb4:	4b13      	ldr	r3, [pc, #76]	; (1004 <MIL_STD_1553B1_Handler+0x2a0>)
     fb6:	58d3      	ldr	r3, [r2, r3]
     fb8:	4a13      	ldr	r2, [pc, #76]	; (1008 <MIL_STD_1553B1_Handler+0x2a4>)
     fba:	4293      	cmp	r3, r2
     fbc:	d015      	beq.n	fea <MIL_STD_1553B1_Handler+0x286>
     fbe:	4a0f      	ldr	r2, [pc, #60]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     fc0:	4b10      	ldr	r3, [pc, #64]	; (1004 <MIL_STD_1553B1_Handler+0x2a0>)
     fc2:	58d3      	ldr	r3, [r2, r3]
     fc4:	2b01      	cmp	r3, #1
     fc6:	d110      	bne.n	fea <MIL_STD_1553B1_Handler+0x286>
     fc8:	4a0c      	ldr	r2, [pc, #48]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     fca:	4b13      	ldr	r3, [pc, #76]	; (1018 <MIL_STD_1553B1_Handler+0x2b4>)
     fcc:	58d3      	ldr	r3, [r2, r3]
     fce:	221f      	movs	r2, #31
     fd0:	4013      	ands	r3, r2
     fd2:	60fb      	str	r3, [r7, #12]
     fd4:	230a      	movs	r3, #10
     fd6:	18fb      	adds	r3, r7, r3
     fd8:	2200      	movs	r2, #0
     fda:	801a      	strh	r2, [r3, #0]
     fdc:	4b0f      	ldr	r3, [pc, #60]	; (101c <MIL_STD_1553B1_Handler+0x2b8>)
     fde:	607b      	str	r3, [r7, #4]
     fe0:	697b      	ldr	r3, [r7, #20]
     fe2:	681b      	ldr	r3, [r3, #0]
     fe4:	b29a      	uxth	r2, r3
     fe6:	4b0e      	ldr	r3, [pc, #56]	; (1020 <MIL_STD_1553B1_Handler+0x2bc>)
     fe8:	801a      	strh	r2, [r3, #0]
     fea:	4a04      	ldr	r2, [pc, #16]	; (ffc <MIL_STD_1553B1_Handler+0x298>)
     fec:	4b04      	ldr	r3, [pc, #16]	; (1000 <MIL_STD_1553B1_Handler+0x29c>)
     fee:	58d3      	ldr	r3, [r2, r3]
     ff0:	46c0      	nop			; (mov r8, r8)
     ff2:	46bd      	mov	sp, r7
     ff4:	b006      	add	sp, #24
     ff6:	bd80      	pop	{r7, pc}
     ff8:	40048080 	.word	0x40048080
     ffc:	40048000 	.word	0x40048000
    1000:	00001004 	.word	0x00001004
    1004:	00001024 	.word	0x00001024
    1008:	00000402 	.word	0x00000402
    100c:	200000d8 	.word	0x200000d8
    1010:	200000d0 	.word	0x200000d0
    1014:	200000e0 	.word	0x200000e0
    1018:	0000100c 	.word	0x0000100c
    101c:	200000c4 	.word	0x200000c4
    1020:	200000fc 	.word	0x200000fc

00001024 <handler_reset>:
    1024:	b580      	push	{r7, lr}
    1026:	b082      	sub	sp, #8
    1028:	af00      	add	r7, sp, #0
    102a:	4b11      	ldr	r3, [pc, #68]	; (1070 <handler_reset+0x4c>)
    102c:	607b      	str	r3, [r7, #4]
    102e:	4b11      	ldr	r3, [pc, #68]	; (1074 <handler_reset+0x50>)
    1030:	603b      	str	r3, [r7, #0]
    1032:	e007      	b.n	1044 <handler_reset+0x20>
    1034:	683b      	ldr	r3, [r7, #0]
    1036:	1d1a      	adds	r2, r3, #4
    1038:	603a      	str	r2, [r7, #0]
    103a:	687a      	ldr	r2, [r7, #4]
    103c:	1d11      	adds	r1, r2, #4
    103e:	6079      	str	r1, [r7, #4]
    1040:	6812      	ldr	r2, [r2, #0]
    1042:	601a      	str	r2, [r3, #0]
    1044:	683a      	ldr	r2, [r7, #0]
    1046:	4b0c      	ldr	r3, [pc, #48]	; (1078 <handler_reset+0x54>)
    1048:	429a      	cmp	r2, r3
    104a:	d3f3      	bcc.n	1034 <handler_reset+0x10>
    104c:	4b0b      	ldr	r3, [pc, #44]	; (107c <handler_reset+0x58>)
    104e:	603b      	str	r3, [r7, #0]
    1050:	e004      	b.n	105c <handler_reset+0x38>
    1052:	683b      	ldr	r3, [r7, #0]
    1054:	1d1a      	adds	r2, r3, #4
    1056:	603a      	str	r2, [r7, #0]
    1058:	2200      	movs	r2, #0
    105a:	601a      	str	r2, [r3, #0]
    105c:	683a      	ldr	r2, [r7, #0]
    105e:	4b08      	ldr	r3, [pc, #32]	; (1080 <handler_reset+0x5c>)
    1060:	429a      	cmp	r2, r3
    1062:	d3f6      	bcc.n	1052 <handler_reset+0x2e>
    1064:	f7ff fb74 	bl	750 <main>
    1068:	46c0      	nop			; (mov r8, r8)
    106a:	46bd      	mov	sp, r7
    106c:	b002      	add	sp, #8
    106e:	bd80      	pop	{r7, pc}
    1070:	00001fec 	.word	0x00001fec
    1074:	20000000 	.word	0x20000000
    1078:	20000044 	.word	0x20000044
    107c:	20000044 	.word	0x20000044
    1080:	2000056c 	.word	0x2000056c

00001084 <default_handler>:
    1084:	b580      	push	{r7, lr}
    1086:	af00      	add	r7, sp, #0
    1088:	e7fe      	b.n	1088 <default_handler+0x4>
    108a:	46c0      	nop			; (mov r8, r8)

0000108c <NVIC_EnableIRQ>:
    108c:	b580      	push	{r7, lr}
    108e:	b082      	sub	sp, #8
    1090:	af00      	add	r7, sp, #0
    1092:	0002      	movs	r2, r0
    1094:	1dfb      	adds	r3, r7, #7
    1096:	701a      	strb	r2, [r3, #0]
    1098:	4909      	ldr	r1, [pc, #36]	; (10c0 <NVIC_EnableIRQ+0x34>)
    109a:	1dfb      	adds	r3, r7, #7
    109c:	781b      	ldrb	r3, [r3, #0]
    109e:	b25b      	sxtb	r3, r3
    10a0:	095b      	lsrs	r3, r3, #5
    10a2:	1dfa      	adds	r2, r7, #7
    10a4:	7812      	ldrb	r2, [r2, #0]
    10a6:	0010      	movs	r0, r2
    10a8:	221f      	movs	r2, #31
    10aa:	4002      	ands	r2, r0
    10ac:	2001      	movs	r0, #1
    10ae:	4090      	lsls	r0, r2
    10b0:	0002      	movs	r2, r0
    10b2:	009b      	lsls	r3, r3, #2
    10b4:	505a      	str	r2, [r3, r1]
    10b6:	46c0      	nop			; (mov r8, r8)
    10b8:	46bd      	mov	sp, r7
    10ba:	b002      	add	sp, #8
    10bc:	bd80      	pop	{r7, pc}
    10be:	46c0      	nop			; (mov r8, r8)
    10c0:	e000e100 	.word	0xe000e100

000010c4 <NVIC_DisableIRQ>:
    10c4:	b580      	push	{r7, lr}
    10c6:	b082      	sub	sp, #8
    10c8:	af00      	add	r7, sp, #0
    10ca:	0002      	movs	r2, r0
    10cc:	1dfb      	adds	r3, r7, #7
    10ce:	701a      	strb	r2, [r3, #0]
    10d0:	4909      	ldr	r1, [pc, #36]	; (10f8 <NVIC_DisableIRQ+0x34>)
    10d2:	1dfb      	adds	r3, r7, #7
    10d4:	781b      	ldrb	r3, [r3, #0]
    10d6:	b25b      	sxtb	r3, r3
    10d8:	095b      	lsrs	r3, r3, #5
    10da:	1dfa      	adds	r2, r7, #7
    10dc:	7812      	ldrb	r2, [r2, #0]
    10de:	0010      	movs	r0, r2
    10e0:	221f      	movs	r2, #31
    10e2:	4002      	ands	r2, r0
    10e4:	2001      	movs	r0, #1
    10e6:	4090      	lsls	r0, r2
    10e8:	0002      	movs	r2, r0
    10ea:	3320      	adds	r3, #32
    10ec:	009b      	lsls	r3, r3, #2
    10ee:	505a      	str	r2, [r3, r1]
    10f0:	46c0      	nop			; (mov r8, r8)
    10f2:	46bd      	mov	sp, r7
    10f4:	b002      	add	sp, #8
    10f6:	bd80      	pop	{r7, pc}
    10f8:	e000e100 	.word	0xe000e100

000010fc <uart_init>:
    10fc:	b580      	push	{r7, lr}
    10fe:	af00      	add	r7, sp, #0
    1100:	4b1f      	ldr	r3, [pc, #124]	; (1180 <uart_init+0x84>)
    1102:	4a1f      	ldr	r2, [pc, #124]	; (1180 <uart_init+0x84>)
    1104:	69d2      	ldr	r2, [r2, #28]
    1106:	2140      	movs	r1, #64	; 0x40
    1108:	430a      	orrs	r2, r1
    110a:	61da      	str	r2, [r3, #28]
    110c:	4b1c      	ldr	r3, [pc, #112]	; (1180 <uart_init+0x84>)
    110e:	4a1c      	ldr	r2, [pc, #112]	; (1180 <uart_init+0x84>)
    1110:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1112:	2180      	movs	r1, #128	; 0x80
    1114:	0449      	lsls	r1, r1, #17
    1116:	430a      	orrs	r2, r1
    1118:	629a      	str	r2, [r3, #40]	; 0x28
    111a:	4b1a      	ldr	r3, [pc, #104]	; (1184 <uart_init+0x88>)
    111c:	2204      	movs	r2, #4
    111e:	625a      	str	r2, [r3, #36]	; 0x24
    1120:	4b18      	ldr	r3, [pc, #96]	; (1184 <uart_init+0x88>)
    1122:	2233      	movs	r2, #51	; 0x33
    1124:	629a      	str	r2, [r3, #40]	; 0x28
    1126:	4b17      	ldr	r3, [pc, #92]	; (1184 <uart_init+0x88>)
    1128:	4a16      	ldr	r2, [pc, #88]	; (1184 <uart_init+0x88>)
    112a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    112c:	213f      	movs	r1, #63	; 0x3f
    112e:	438a      	bics	r2, r1
    1130:	635a      	str	r2, [r3, #52]	; 0x34
    1132:	4b14      	ldr	r3, [pc, #80]	; (1184 <uart_init+0x88>)
    1134:	4a13      	ldr	r2, [pc, #76]	; (1184 <uart_init+0x88>)
    1136:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1138:	2112      	movs	r1, #18
    113a:	430a      	orrs	r2, r1
    113c:	635a      	str	r2, [r3, #52]	; 0x34
    113e:	4b11      	ldr	r3, [pc, #68]	; (1184 <uart_init+0x88>)
    1140:	4a10      	ldr	r2, [pc, #64]	; (1184 <uart_init+0x88>)
    1142:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1144:	2110      	movs	r1, #16
    1146:	430a      	orrs	r2, r1
    1148:	62da      	str	r2, [r3, #44]	; 0x2c
    114a:	4b0e      	ldr	r3, [pc, #56]	; (1184 <uart_init+0x88>)
    114c:	4a0d      	ldr	r2, [pc, #52]	; (1184 <uart_init+0x88>)
    114e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1150:	2160      	movs	r1, #96	; 0x60
    1152:	430a      	orrs	r2, r1
    1154:	62da      	str	r2, [r3, #44]	; 0x2c
    1156:	4b0b      	ldr	r3, [pc, #44]	; (1184 <uart_init+0x88>)
    1158:	4a0a      	ldr	r2, [pc, #40]	; (1184 <uart_init+0x88>)
    115a:	6b12      	ldr	r2, [r2, #48]	; 0x30
    115c:	490a      	ldr	r1, [pc, #40]	; (1188 <uart_init+0x8c>)
    115e:	430a      	orrs	r2, r1
    1160:	631a      	str	r2, [r3, #48]	; 0x30
    1162:	4b08      	ldr	r3, [pc, #32]	; (1184 <uart_init+0x88>)
    1164:	4a07      	ldr	r2, [pc, #28]	; (1184 <uart_init+0x88>)
    1166:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1168:	2110      	movs	r1, #16
    116a:	430a      	orrs	r2, r1
    116c:	639a      	str	r2, [r3, #56]	; 0x38
    116e:	4b05      	ldr	r3, [pc, #20]	; (1184 <uart_init+0x88>)
    1170:	4a04      	ldr	r2, [pc, #16]	; (1184 <uart_init+0x88>)
    1172:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1174:	2140      	movs	r1, #64	; 0x40
    1176:	430a      	orrs	r2, r1
    1178:	639a      	str	r2, [r3, #56]	; 0x38
    117a:	46c0      	nop			; (mov r8, r8)
    117c:	46bd      	mov	sp, r7
    117e:	bd80      	pop	{r7, pc}
    1180:	40020000 	.word	0x40020000
    1184:	40030000 	.word	0x40030000
    1188:	00000301 	.word	0x00000301

0000118c <uart_read>:
    118c:	b580      	push	{r7, lr}
    118e:	b084      	sub	sp, #16
    1190:	af00      	add	r7, sp, #0
    1192:	6078      	str	r0, [r7, #4]
    1194:	6039      	str	r1, [r7, #0]
    1196:	4b18      	ldr	r3, [pc, #96]	; (11f8 <uart_read+0x6c>)
    1198:	681a      	ldr	r2, [r3, #0]
    119a:	4b18      	ldr	r3, [pc, #96]	; (11fc <uart_read+0x70>)
    119c:	681b      	ldr	r3, [r3, #0]
    119e:	429a      	cmp	r2, r3
    11a0:	d101      	bne.n	11a6 <uart_read+0x1a>
    11a2:	2300      	movs	r3, #0
    11a4:	e023      	b.n	11ee <uart_read+0x62>
    11a6:	2300      	movs	r3, #0
    11a8:	60fb      	str	r3, [r7, #12]
    11aa:	e01b      	b.n	11e4 <uart_read+0x58>
    11ac:	68fb      	ldr	r3, [r7, #12]
    11ae:	687a      	ldr	r2, [r7, #4]
    11b0:	18d2      	adds	r2, r2, r3
    11b2:	4b11      	ldr	r3, [pc, #68]	; (11f8 <uart_read+0x6c>)
    11b4:	681b      	ldr	r3, [r3, #0]
    11b6:	4912      	ldr	r1, [pc, #72]	; (1200 <uart_read+0x74>)
    11b8:	5ccb      	ldrb	r3, [r1, r3]
    11ba:	7013      	strb	r3, [r2, #0]
    11bc:	4b0e      	ldr	r3, [pc, #56]	; (11f8 <uart_read+0x6c>)
    11be:	681b      	ldr	r3, [r3, #0]
    11c0:	3301      	adds	r3, #1
    11c2:	05db      	lsls	r3, r3, #23
    11c4:	0dda      	lsrs	r2, r3, #23
    11c6:	4b0c      	ldr	r3, [pc, #48]	; (11f8 <uart_read+0x6c>)
    11c8:	601a      	str	r2, [r3, #0]
    11ca:	4b0b      	ldr	r3, [pc, #44]	; (11f8 <uart_read+0x6c>)
    11cc:	681a      	ldr	r2, [r3, #0]
    11ce:	4b0b      	ldr	r3, [pc, #44]	; (11fc <uart_read+0x70>)
    11d0:	681b      	ldr	r3, [r3, #0]
    11d2:	429a      	cmp	r2, r3
    11d4:	d103      	bne.n	11de <uart_read+0x52>
    11d6:	68fb      	ldr	r3, [r7, #12]
    11d8:	3301      	adds	r3, #1
    11da:	60fb      	str	r3, [r7, #12]
    11dc:	e006      	b.n	11ec <uart_read+0x60>
    11de:	68fb      	ldr	r3, [r7, #12]
    11e0:	3301      	adds	r3, #1
    11e2:	60fb      	str	r3, [r7, #12]
    11e4:	68fa      	ldr	r2, [r7, #12]
    11e6:	683b      	ldr	r3, [r7, #0]
    11e8:	429a      	cmp	r2, r3
    11ea:	dbdf      	blt.n	11ac <uart_read+0x20>
    11ec:	68fb      	ldr	r3, [r7, #12]
    11ee:	0018      	movs	r0, r3
    11f0:	46bd      	mov	sp, r7
    11f2:	b004      	add	sp, #16
    11f4:	bd80      	pop	{r7, pc}
    11f6:	46c0      	nop			; (mov r8, r8)
    11f8:	2000055c 	.word	0x2000055c
    11fc:	20000558 	.word	0x20000558
    1200:	20000358 	.word	0x20000358

00001204 <uart_send>:
    1204:	b580      	push	{r7, lr}
    1206:	b084      	sub	sp, #16
    1208:	af00      	add	r7, sp, #0
    120a:	6078      	str	r0, [r7, #4]
    120c:	6039      	str	r1, [r7, #0]
    120e:	2006      	movs	r0, #6
    1210:	f7ff ff58 	bl	10c4 <NVIC_DisableIRQ>
    1214:	2300      	movs	r3, #0
    1216:	60fb      	str	r3, [r7, #12]
    1218:	e01b      	b.n	1252 <uart_send+0x4e>
    121a:	4b20      	ldr	r3, [pc, #128]	; (129c <uart_send+0x98>)
    121c:	681b      	ldr	r3, [r3, #0]
    121e:	68fa      	ldr	r2, [r7, #12]
    1220:	6879      	ldr	r1, [r7, #4]
    1222:	188a      	adds	r2, r1, r2
    1224:	7811      	ldrb	r1, [r2, #0]
    1226:	4a1e      	ldr	r2, [pc, #120]	; (12a0 <uart_send+0x9c>)
    1228:	54d1      	strb	r1, [r2, r3]
    122a:	4b1c      	ldr	r3, [pc, #112]	; (129c <uart_send+0x98>)
    122c:	681b      	ldr	r3, [r3, #0]
    122e:	3301      	adds	r3, #1
    1230:	05db      	lsls	r3, r3, #23
    1232:	0dda      	lsrs	r2, r3, #23
    1234:	4b19      	ldr	r3, [pc, #100]	; (129c <uart_send+0x98>)
    1236:	601a      	str	r2, [r3, #0]
    1238:	4b18      	ldr	r3, [pc, #96]	; (129c <uart_send+0x98>)
    123a:	681a      	ldr	r2, [r3, #0]
    123c:	4b19      	ldr	r3, [pc, #100]	; (12a4 <uart_send+0xa0>)
    123e:	681b      	ldr	r3, [r3, #0]
    1240:	429a      	cmp	r2, r3
    1242:	d103      	bne.n	124c <uart_send+0x48>
    1244:	68fb      	ldr	r3, [r7, #12]
    1246:	3301      	adds	r3, #1
    1248:	60fb      	str	r3, [r7, #12]
    124a:	e006      	b.n	125a <uart_send+0x56>
    124c:	68fb      	ldr	r3, [r7, #12]
    124e:	3301      	adds	r3, #1
    1250:	60fb      	str	r3, [r7, #12]
    1252:	68fa      	ldr	r2, [r7, #12]
    1254:	683b      	ldr	r3, [r7, #0]
    1256:	429a      	cmp	r2, r3
    1258:	dbdf      	blt.n	121a <uart_send+0x16>
    125a:	4b13      	ldr	r3, [pc, #76]	; (12a8 <uart_send+0xa4>)
    125c:	699b      	ldr	r3, [r3, #24]
    125e:	2208      	movs	r2, #8
    1260:	4013      	ands	r3, r2
    1262:	d10c      	bne.n	127e <uart_send+0x7a>
    1264:	4a10      	ldr	r2, [pc, #64]	; (12a8 <uart_send+0xa4>)
    1266:	4b0f      	ldr	r3, [pc, #60]	; (12a4 <uart_send+0xa0>)
    1268:	681b      	ldr	r3, [r3, #0]
    126a:	490d      	ldr	r1, [pc, #52]	; (12a0 <uart_send+0x9c>)
    126c:	5ccb      	ldrb	r3, [r1, r3]
    126e:	6013      	str	r3, [r2, #0]
    1270:	4b0c      	ldr	r3, [pc, #48]	; (12a4 <uart_send+0xa0>)
    1272:	681b      	ldr	r3, [r3, #0]
    1274:	3301      	adds	r3, #1
    1276:	05db      	lsls	r3, r3, #23
    1278:	0dda      	lsrs	r2, r3, #23
    127a:	4b0a      	ldr	r3, [pc, #40]	; (12a4 <uart_send+0xa0>)
    127c:	601a      	str	r2, [r3, #0]
    127e:	4b0a      	ldr	r3, [pc, #40]	; (12a8 <uart_send+0xa4>)
    1280:	4a09      	ldr	r2, [pc, #36]	; (12a8 <uart_send+0xa4>)
    1282:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1284:	2120      	movs	r1, #32
    1286:	430a      	orrs	r2, r1
    1288:	639a      	str	r2, [r3, #56]	; 0x38
    128a:	2006      	movs	r0, #6
    128c:	f7ff fefe 	bl	108c <NVIC_EnableIRQ>
    1290:	68fb      	ldr	r3, [r7, #12]
    1292:	0018      	movs	r0, r3
    1294:	46bd      	mov	sp, r7
    1296:	b004      	add	sp, #16
    1298:	bd80      	pop	{r7, pc}
    129a:	46c0      	nop			; (mov r8, r8)
    129c:	20000354 	.word	0x20000354
    12a0:	20000150 	.word	0x20000150
    12a4:	20000350 	.word	0x20000350
    12a8:	40030000 	.word	0x40030000

000012ac <uart_putch>:
    12ac:	b580      	push	{r7, lr}
    12ae:	b082      	sub	sp, #8
    12b0:	af00      	add	r7, sp, #0
    12b2:	0002      	movs	r2, r0
    12b4:	1dfb      	adds	r3, r7, #7
    12b6:	701a      	strb	r2, [r3, #0]
    12b8:	46c0      	nop			; (mov r8, r8)
    12ba:	4b06      	ldr	r3, [pc, #24]	; (12d4 <uart_putch+0x28>)
    12bc:	699b      	ldr	r3, [r3, #24]
    12be:	2220      	movs	r2, #32
    12c0:	4013      	ands	r3, r2
    12c2:	d1fa      	bne.n	12ba <uart_putch+0xe>
    12c4:	4b03      	ldr	r3, [pc, #12]	; (12d4 <uart_putch+0x28>)
    12c6:	1dfa      	adds	r2, r7, #7
    12c8:	7812      	ldrb	r2, [r2, #0]
    12ca:	601a      	str	r2, [r3, #0]
    12cc:	46c0      	nop			; (mov r8, r8)
    12ce:	46bd      	mov	sp, r7
    12d0:	b002      	add	sp, #8
    12d2:	bd80      	pop	{r7, pc}
    12d4:	40030000 	.word	0x40030000

000012d8 <UART1_Handler>:
    12d8:	b580      	push	{r7, lr}
    12da:	af00      	add	r7, sp, #0
    12dc:	4b1a      	ldr	r3, [pc, #104]	; (1348 <UART1_Handler+0x70>)
    12de:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    12e0:	2220      	movs	r2, #32
    12e2:	4013      	ands	r3, r2
    12e4:	d019      	beq.n	131a <UART1_Handler+0x42>
    12e6:	4b19      	ldr	r3, [pc, #100]	; (134c <UART1_Handler+0x74>)
    12e8:	681a      	ldr	r2, [r3, #0]
    12ea:	4b19      	ldr	r3, [pc, #100]	; (1350 <UART1_Handler+0x78>)
    12ec:	681b      	ldr	r3, [r3, #0]
    12ee:	429a      	cmp	r2, r3
    12f0:	d106      	bne.n	1300 <UART1_Handler+0x28>
    12f2:	4b15      	ldr	r3, [pc, #84]	; (1348 <UART1_Handler+0x70>)
    12f4:	4a14      	ldr	r2, [pc, #80]	; (1348 <UART1_Handler+0x70>)
    12f6:	6b92      	ldr	r2, [r2, #56]	; 0x38
    12f8:	2120      	movs	r1, #32
    12fa:	438a      	bics	r2, r1
    12fc:	639a      	str	r2, [r3, #56]	; 0x38
    12fe:	e00c      	b.n	131a <UART1_Handler+0x42>
    1300:	4a11      	ldr	r2, [pc, #68]	; (1348 <UART1_Handler+0x70>)
    1302:	4b12      	ldr	r3, [pc, #72]	; (134c <UART1_Handler+0x74>)
    1304:	681b      	ldr	r3, [r3, #0]
    1306:	4913      	ldr	r1, [pc, #76]	; (1354 <UART1_Handler+0x7c>)
    1308:	5ccb      	ldrb	r3, [r1, r3]
    130a:	6013      	str	r3, [r2, #0]
    130c:	4b0f      	ldr	r3, [pc, #60]	; (134c <UART1_Handler+0x74>)
    130e:	681b      	ldr	r3, [r3, #0]
    1310:	3301      	adds	r3, #1
    1312:	05db      	lsls	r3, r3, #23
    1314:	0dda      	lsrs	r2, r3, #23
    1316:	4b0d      	ldr	r3, [pc, #52]	; (134c <UART1_Handler+0x74>)
    1318:	601a      	str	r2, [r3, #0]
    131a:	4b0b      	ldr	r3, [pc, #44]	; (1348 <UART1_Handler+0x70>)
    131c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    131e:	2210      	movs	r2, #16
    1320:	4013      	ands	r3, r2
    1322:	d00d      	beq.n	1340 <UART1_Handler+0x68>
    1324:	4b0c      	ldr	r3, [pc, #48]	; (1358 <UART1_Handler+0x80>)
    1326:	681a      	ldr	r2, [r3, #0]
    1328:	4b07      	ldr	r3, [pc, #28]	; (1348 <UART1_Handler+0x70>)
    132a:	681b      	ldr	r3, [r3, #0]
    132c:	b2d9      	uxtb	r1, r3
    132e:	4b0b      	ldr	r3, [pc, #44]	; (135c <UART1_Handler+0x84>)
    1330:	5499      	strb	r1, [r3, r2]
    1332:	4b09      	ldr	r3, [pc, #36]	; (1358 <UART1_Handler+0x80>)
    1334:	681b      	ldr	r3, [r3, #0]
    1336:	3301      	adds	r3, #1
    1338:	05db      	lsls	r3, r3, #23
    133a:	0dda      	lsrs	r2, r3, #23
    133c:	4b06      	ldr	r3, [pc, #24]	; (1358 <UART1_Handler+0x80>)
    133e:	601a      	str	r2, [r3, #0]
    1340:	46c0      	nop			; (mov r8, r8)
    1342:	46bd      	mov	sp, r7
    1344:	bd80      	pop	{r7, pc}
    1346:	46c0      	nop			; (mov r8, r8)
    1348:	40030000 	.word	0x40030000
    134c:	20000350 	.word	0x20000350
    1350:	20000354 	.word	0x20000354
    1354:	20000150 	.word	0x20000150
    1358:	20000558 	.word	0x20000558
    135c:	20000358 	.word	0x20000358

00001360 <xputc>:
    1360:	b580      	push	{r7, lr}
    1362:	b082      	sub	sp, #8
    1364:	af00      	add	r7, sp, #0
    1366:	0002      	movs	r2, r0
    1368:	1dfb      	adds	r3, r7, #7
    136a:	701a      	strb	r2, [r3, #0]
    136c:	1dfb      	adds	r3, r7, #7
    136e:	781b      	ldrb	r3, [r3, #0]
    1370:	2b0a      	cmp	r3, #10
    1372:	d102      	bne.n	137a <xputc+0x1a>
    1374:	200d      	movs	r0, #13
    1376:	f7ff fff3 	bl	1360 <xputc>
    137a:	4b0d      	ldr	r3, [pc, #52]	; (13b0 <xputc+0x50>)
    137c:	681b      	ldr	r3, [r3, #0]
    137e:	2b00      	cmp	r3, #0
    1380:	d008      	beq.n	1394 <xputc+0x34>
    1382:	4b0b      	ldr	r3, [pc, #44]	; (13b0 <xputc+0x50>)
    1384:	681b      	ldr	r3, [r3, #0]
    1386:	1c59      	adds	r1, r3, #1
    1388:	4a09      	ldr	r2, [pc, #36]	; (13b0 <xputc+0x50>)
    138a:	6011      	str	r1, [r2, #0]
    138c:	1dfa      	adds	r2, r7, #7
    138e:	7812      	ldrb	r2, [r2, #0]
    1390:	701a      	strb	r2, [r3, #0]
    1392:	e009      	b.n	13a8 <xputc+0x48>
    1394:	4b07      	ldr	r3, [pc, #28]	; (13b4 <xputc+0x54>)
    1396:	681b      	ldr	r3, [r3, #0]
    1398:	2b00      	cmp	r3, #0
    139a:	d005      	beq.n	13a8 <xputc+0x48>
    139c:	4b05      	ldr	r3, [pc, #20]	; (13b4 <xputc+0x54>)
    139e:	681b      	ldr	r3, [r3, #0]
    13a0:	1dfa      	adds	r2, r7, #7
    13a2:	7812      	ldrb	r2, [r2, #0]
    13a4:	0010      	movs	r0, r2
    13a6:	4798      	blx	r3
    13a8:	46bd      	mov	sp, r7
    13aa:	b002      	add	sp, #8
    13ac:	bd80      	pop	{r7, pc}
    13ae:	46c0      	nop			; (mov r8, r8)
    13b0:	20000564 	.word	0x20000564
    13b4:	20000560 	.word	0x20000560

000013b8 <xputs>:
    13b8:	b580      	push	{r7, lr}
    13ba:	b082      	sub	sp, #8
    13bc:	af00      	add	r7, sp, #0
    13be:	6078      	str	r0, [r7, #4]
    13c0:	e006      	b.n	13d0 <xputs+0x18>
    13c2:	687b      	ldr	r3, [r7, #4]
    13c4:	1c5a      	adds	r2, r3, #1
    13c6:	607a      	str	r2, [r7, #4]
    13c8:	781b      	ldrb	r3, [r3, #0]
    13ca:	0018      	movs	r0, r3
    13cc:	f7ff ffc8 	bl	1360 <xputc>
    13d0:	687b      	ldr	r3, [r7, #4]
    13d2:	781b      	ldrb	r3, [r3, #0]
    13d4:	2b00      	cmp	r3, #0
    13d6:	d1f4      	bne.n	13c2 <xputs+0xa>
    13d8:	46c0      	nop			; (mov r8, r8)
    13da:	46bd      	mov	sp, r7
    13dc:	b002      	add	sp, #8
    13de:	bd80      	pop	{r7, pc}

000013e0 <xfputs>:
    13e0:	b580      	push	{r7, lr}
    13e2:	b084      	sub	sp, #16
    13e4:	af00      	add	r7, sp, #0
    13e6:	6078      	str	r0, [r7, #4]
    13e8:	6039      	str	r1, [r7, #0]
    13ea:	4b0c      	ldr	r3, [pc, #48]	; (141c <xfputs+0x3c>)
    13ec:	681b      	ldr	r3, [r3, #0]
    13ee:	60fb      	str	r3, [r7, #12]
    13f0:	4b0a      	ldr	r3, [pc, #40]	; (141c <xfputs+0x3c>)
    13f2:	687a      	ldr	r2, [r7, #4]
    13f4:	601a      	str	r2, [r3, #0]
    13f6:	e006      	b.n	1406 <xfputs+0x26>
    13f8:	683b      	ldr	r3, [r7, #0]
    13fa:	1c5a      	adds	r2, r3, #1
    13fc:	603a      	str	r2, [r7, #0]
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	0018      	movs	r0, r3
    1402:	f7ff ffad 	bl	1360 <xputc>
    1406:	683b      	ldr	r3, [r7, #0]
    1408:	781b      	ldrb	r3, [r3, #0]
    140a:	2b00      	cmp	r3, #0
    140c:	d1f4      	bne.n	13f8 <xfputs+0x18>
    140e:	4b03      	ldr	r3, [pc, #12]	; (141c <xfputs+0x3c>)
    1410:	68fa      	ldr	r2, [r7, #12]
    1412:	601a      	str	r2, [r3, #0]
    1414:	46c0      	nop			; (mov r8, r8)
    1416:	46bd      	mov	sp, r7
    1418:	b004      	add	sp, #16
    141a:	bd80      	pop	{r7, pc}
    141c:	20000560 	.word	0x20000560

00001420 <xvprintf>:
    1420:	b580      	push	{r7, lr}
    1422:	b08e      	sub	sp, #56	; 0x38
    1424:	af00      	add	r7, sp, #0
    1426:	6078      	str	r0, [r7, #4]
    1428:	6039      	str	r1, [r7, #0]
    142a:	687b      	ldr	r3, [r7, #4]
    142c:	1c5a      	adds	r2, r3, #1
    142e:	607a      	str	r2, [r7, #4]
    1430:	221f      	movs	r2, #31
    1432:	18ba      	adds	r2, r7, r2
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	7013      	strb	r3, [r2, #0]
    1438:	231f      	movs	r3, #31
    143a:	18fb      	adds	r3, r7, r3
    143c:	781b      	ldrb	r3, [r3, #0]
    143e:	2b00      	cmp	r3, #0
    1440:	d100      	bne.n	1444 <xvprintf+0x24>
    1442:	e172      	b.n	172a <xvprintf+0x30a>
    1444:	231f      	movs	r3, #31
    1446:	18fb      	adds	r3, r7, r3
    1448:	781b      	ldrb	r3, [r3, #0]
    144a:	2b25      	cmp	r3, #37	; 0x25
    144c:	d006      	beq.n	145c <xvprintf+0x3c>
    144e:	231f      	movs	r3, #31
    1450:	18fb      	adds	r3, r7, r3
    1452:	781b      	ldrb	r3, [r3, #0]
    1454:	0018      	movs	r0, r3
    1456:	f7ff ff83 	bl	1360 <xputc>
    145a:	e165      	b.n	1728 <xvprintf+0x308>
    145c:	2300      	movs	r3, #0
    145e:	627b      	str	r3, [r7, #36]	; 0x24
    1460:	687b      	ldr	r3, [r7, #4]
    1462:	1c5a      	adds	r2, r3, #1
    1464:	607a      	str	r2, [r7, #4]
    1466:	221f      	movs	r2, #31
    1468:	18ba      	adds	r2, r7, r2
    146a:	781b      	ldrb	r3, [r3, #0]
    146c:	7013      	strb	r3, [r2, #0]
    146e:	231f      	movs	r3, #31
    1470:	18fb      	adds	r3, r7, r3
    1472:	781b      	ldrb	r3, [r3, #0]
    1474:	2b30      	cmp	r3, #48	; 0x30
    1476:	d109      	bne.n	148c <xvprintf+0x6c>
    1478:	2301      	movs	r3, #1
    147a:	627b      	str	r3, [r7, #36]	; 0x24
    147c:	687b      	ldr	r3, [r7, #4]
    147e:	1c5a      	adds	r2, r3, #1
    1480:	607a      	str	r2, [r7, #4]
    1482:	221f      	movs	r2, #31
    1484:	18ba      	adds	r2, r7, r2
    1486:	781b      	ldrb	r3, [r3, #0]
    1488:	7013      	strb	r3, [r2, #0]
    148a:	e00d      	b.n	14a8 <xvprintf+0x88>
    148c:	231f      	movs	r3, #31
    148e:	18fb      	adds	r3, r7, r3
    1490:	781b      	ldrb	r3, [r3, #0]
    1492:	2b2d      	cmp	r3, #45	; 0x2d
    1494:	d108      	bne.n	14a8 <xvprintf+0x88>
    1496:	2302      	movs	r3, #2
    1498:	627b      	str	r3, [r7, #36]	; 0x24
    149a:	687b      	ldr	r3, [r7, #4]
    149c:	1c5a      	adds	r2, r3, #1
    149e:	607a      	str	r2, [r7, #4]
    14a0:	221f      	movs	r2, #31
    14a2:	18ba      	adds	r2, r7, r2
    14a4:	781b      	ldrb	r3, [r3, #0]
    14a6:	7013      	strb	r3, [r2, #0]
    14a8:	2300      	movs	r3, #0
    14aa:	62bb      	str	r3, [r7, #40]	; 0x28
    14ac:	e012      	b.n	14d4 <xvprintf+0xb4>
    14ae:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14b0:	0013      	movs	r3, r2
    14b2:	009b      	lsls	r3, r3, #2
    14b4:	189b      	adds	r3, r3, r2
    14b6:	005b      	lsls	r3, r3, #1
    14b8:	001a      	movs	r2, r3
    14ba:	231f      	movs	r3, #31
    14bc:	18fb      	adds	r3, r7, r3
    14be:	781b      	ldrb	r3, [r3, #0]
    14c0:	18d3      	adds	r3, r2, r3
    14c2:	3b30      	subs	r3, #48	; 0x30
    14c4:	62bb      	str	r3, [r7, #40]	; 0x28
    14c6:	687b      	ldr	r3, [r7, #4]
    14c8:	1c5a      	adds	r2, r3, #1
    14ca:	607a      	str	r2, [r7, #4]
    14cc:	221f      	movs	r2, #31
    14ce:	18ba      	adds	r2, r7, r2
    14d0:	781b      	ldrb	r3, [r3, #0]
    14d2:	7013      	strb	r3, [r2, #0]
    14d4:	231f      	movs	r3, #31
    14d6:	18fb      	adds	r3, r7, r3
    14d8:	781b      	ldrb	r3, [r3, #0]
    14da:	2b2f      	cmp	r3, #47	; 0x2f
    14dc:	d904      	bls.n	14e8 <xvprintf+0xc8>
    14de:	231f      	movs	r3, #31
    14e0:	18fb      	adds	r3, r7, r3
    14e2:	781b      	ldrb	r3, [r3, #0]
    14e4:	2b39      	cmp	r3, #57	; 0x39
    14e6:	d9e2      	bls.n	14ae <xvprintf+0x8e>
    14e8:	231f      	movs	r3, #31
    14ea:	18fb      	adds	r3, r7, r3
    14ec:	781b      	ldrb	r3, [r3, #0]
    14ee:	2b6c      	cmp	r3, #108	; 0x6c
    14f0:	d004      	beq.n	14fc <xvprintf+0xdc>
    14f2:	231f      	movs	r3, #31
    14f4:	18fb      	adds	r3, r7, r3
    14f6:	781b      	ldrb	r3, [r3, #0]
    14f8:	2b4c      	cmp	r3, #76	; 0x4c
    14fa:	d10a      	bne.n	1512 <xvprintf+0xf2>
    14fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14fe:	2204      	movs	r2, #4
    1500:	4313      	orrs	r3, r2
    1502:	627b      	str	r3, [r7, #36]	; 0x24
    1504:	687b      	ldr	r3, [r7, #4]
    1506:	1c5a      	adds	r2, r3, #1
    1508:	607a      	str	r2, [r7, #4]
    150a:	221f      	movs	r2, #31
    150c:	18ba      	adds	r2, r7, r2
    150e:	781b      	ldrb	r3, [r3, #0]
    1510:	7013      	strb	r3, [r2, #0]
    1512:	231f      	movs	r3, #31
    1514:	18fb      	adds	r3, r7, r3
    1516:	781b      	ldrb	r3, [r3, #0]
    1518:	2b00      	cmp	r3, #0
    151a:	d100      	bne.n	151e <xvprintf+0xfe>
    151c:	e107      	b.n	172e <xvprintf+0x30e>
    151e:	231e      	movs	r3, #30
    1520:	18fb      	adds	r3, r7, r3
    1522:	221f      	movs	r2, #31
    1524:	18ba      	adds	r2, r7, r2
    1526:	7812      	ldrb	r2, [r2, #0]
    1528:	701a      	strb	r2, [r3, #0]
    152a:	231e      	movs	r3, #30
    152c:	18fb      	adds	r3, r7, r3
    152e:	781b      	ldrb	r3, [r3, #0]
    1530:	2b60      	cmp	r3, #96	; 0x60
    1532:	d906      	bls.n	1542 <xvprintf+0x122>
    1534:	231e      	movs	r3, #30
    1536:	18fb      	adds	r3, r7, r3
    1538:	221e      	movs	r2, #30
    153a:	18ba      	adds	r2, r7, r2
    153c:	7812      	ldrb	r2, [r2, #0]
    153e:	3a20      	subs	r2, #32
    1540:	701a      	strb	r2, [r3, #0]
    1542:	231e      	movs	r3, #30
    1544:	18fb      	adds	r3, r7, r3
    1546:	781b      	ldrb	r3, [r3, #0]
    1548:	3b42      	subs	r3, #66	; 0x42
    154a:	2b16      	cmp	r3, #22
    154c:	d847      	bhi.n	15de <xvprintf+0x1be>
    154e:	009a      	lsls	r2, r3, #2
    1550:	4b79      	ldr	r3, [pc, #484]	; (1738 <xvprintf+0x318>)
    1552:	18d3      	adds	r3, r2, r3
    1554:	681b      	ldr	r3, [r3, #0]
    1556:	469f      	mov	pc, r3
    1558:	683b      	ldr	r3, [r7, #0]
    155a:	1d1a      	adds	r2, r3, #4
    155c:	603a      	str	r2, [r7, #0]
    155e:	681b      	ldr	r3, [r3, #0]
    1560:	61bb      	str	r3, [r7, #24]
    1562:	2300      	movs	r3, #0
    1564:	62fb      	str	r3, [r7, #44]	; 0x2c
    1566:	e002      	b.n	156e <xvprintf+0x14e>
    1568:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    156a:	3301      	adds	r3, #1
    156c:	62fb      	str	r3, [r7, #44]	; 0x2c
    156e:	69ba      	ldr	r2, [r7, #24]
    1570:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1572:	18d3      	adds	r3, r2, r3
    1574:	781b      	ldrb	r3, [r3, #0]
    1576:	2b00      	cmp	r3, #0
    1578:	d1f6      	bne.n	1568 <xvprintf+0x148>
    157a:	e002      	b.n	1582 <xvprintf+0x162>
    157c:	2020      	movs	r0, #32
    157e:	f7ff feef 	bl	1360 <xputc>
    1582:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1584:	2202      	movs	r2, #2
    1586:	4013      	ands	r3, r2
    1588:	d105      	bne.n	1596 <xvprintf+0x176>
    158a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    158c:	1c5a      	adds	r2, r3, #1
    158e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1590:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1592:	4293      	cmp	r3, r2
    1594:	d3f2      	bcc.n	157c <xvprintf+0x15c>
    1596:	69bb      	ldr	r3, [r7, #24]
    1598:	0018      	movs	r0, r3
    159a:	f7ff ff0d 	bl	13b8 <xputs>
    159e:	e002      	b.n	15a6 <xvprintf+0x186>
    15a0:	2020      	movs	r0, #32
    15a2:	f7ff fedd 	bl	1360 <xputc>
    15a6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15a8:	1c5a      	adds	r2, r3, #1
    15aa:	62fa      	str	r2, [r7, #44]	; 0x2c
    15ac:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15ae:	4293      	cmp	r3, r2
    15b0:	d3f6      	bcc.n	15a0 <xvprintf+0x180>
    15b2:	e0b9      	b.n	1728 <xvprintf+0x308>
    15b4:	683b      	ldr	r3, [r7, #0]
    15b6:	1d1a      	adds	r2, r3, #4
    15b8:	603a      	str	r2, [r7, #0]
    15ba:	681b      	ldr	r3, [r3, #0]
    15bc:	b2db      	uxtb	r3, r3
    15be:	0018      	movs	r0, r3
    15c0:	f7ff fece 	bl	1360 <xputc>
    15c4:	e0b0      	b.n	1728 <xvprintf+0x308>
    15c6:	2302      	movs	r3, #2
    15c8:	637b      	str	r3, [r7, #52]	; 0x34
    15ca:	e00f      	b.n	15ec <xvprintf+0x1cc>
    15cc:	2308      	movs	r3, #8
    15ce:	637b      	str	r3, [r7, #52]	; 0x34
    15d0:	e00c      	b.n	15ec <xvprintf+0x1cc>
    15d2:	230a      	movs	r3, #10
    15d4:	637b      	str	r3, [r7, #52]	; 0x34
    15d6:	e009      	b.n	15ec <xvprintf+0x1cc>
    15d8:	2310      	movs	r3, #16
    15da:	637b      	str	r3, [r7, #52]	; 0x34
    15dc:	e006      	b.n	15ec <xvprintf+0x1cc>
    15de:	231f      	movs	r3, #31
    15e0:	18fb      	adds	r3, r7, r3
    15e2:	781b      	ldrb	r3, [r3, #0]
    15e4:	0018      	movs	r0, r3
    15e6:	f7ff febb 	bl	1360 <xputc>
    15ea:	e09d      	b.n	1728 <xvprintf+0x308>
    15ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15ee:	2204      	movs	r2, #4
    15f0:	4013      	ands	r3, r2
    15f2:	d004      	beq.n	15fe <xvprintf+0x1de>
    15f4:	683b      	ldr	r3, [r7, #0]
    15f6:	1d1a      	adds	r2, r3, #4
    15f8:	603a      	str	r2, [r7, #0]
    15fa:	681b      	ldr	r3, [r3, #0]
    15fc:	e00d      	b.n	161a <xvprintf+0x1fa>
    15fe:	231e      	movs	r3, #30
    1600:	18fb      	adds	r3, r7, r3
    1602:	781b      	ldrb	r3, [r3, #0]
    1604:	2b44      	cmp	r3, #68	; 0x44
    1606:	d104      	bne.n	1612 <xvprintf+0x1f2>
    1608:	683b      	ldr	r3, [r7, #0]
    160a:	1d1a      	adds	r2, r3, #4
    160c:	603a      	str	r2, [r7, #0]
    160e:	681b      	ldr	r3, [r3, #0]
    1610:	e003      	b.n	161a <xvprintf+0x1fa>
    1612:	683b      	ldr	r3, [r7, #0]
    1614:	1d1a      	adds	r2, r3, #4
    1616:	603a      	str	r2, [r7, #0]
    1618:	681b      	ldr	r3, [r3, #0]
    161a:	623b      	str	r3, [r7, #32]
    161c:	231e      	movs	r3, #30
    161e:	18fb      	adds	r3, r7, r3
    1620:	781b      	ldrb	r3, [r3, #0]
    1622:	2b44      	cmp	r3, #68	; 0x44
    1624:	d109      	bne.n	163a <xvprintf+0x21a>
    1626:	6a3b      	ldr	r3, [r7, #32]
    1628:	2b00      	cmp	r3, #0
    162a:	da06      	bge.n	163a <xvprintf+0x21a>
    162c:	6a3b      	ldr	r3, [r7, #32]
    162e:	425b      	negs	r3, r3
    1630:	623b      	str	r3, [r7, #32]
    1632:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1634:	2208      	movs	r2, #8
    1636:	4313      	orrs	r3, r2
    1638:	627b      	str	r3, [r7, #36]	; 0x24
    163a:	2300      	movs	r3, #0
    163c:	633b      	str	r3, [r7, #48]	; 0x30
    163e:	6a3b      	ldr	r3, [r7, #32]
    1640:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1642:	0018      	movs	r0, r3
    1644:	f000 fc68 	bl	1f18 <__aeabi_uidivmod>
    1648:	000b      	movs	r3, r1
    164a:	001a      	movs	r2, r3
    164c:	231e      	movs	r3, #30
    164e:	18fb      	adds	r3, r7, r3
    1650:	701a      	strb	r2, [r3, #0]
    1652:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1654:	6a38      	ldr	r0, [r7, #32]
    1656:	f000 fbd9 	bl	1e0c <__aeabi_uidiv>
    165a:	0003      	movs	r3, r0
    165c:	623b      	str	r3, [r7, #32]
    165e:	231e      	movs	r3, #30
    1660:	18fb      	adds	r3, r7, r3
    1662:	781b      	ldrb	r3, [r3, #0]
    1664:	2b09      	cmp	r3, #9
    1666:	d90e      	bls.n	1686 <xvprintf+0x266>
    1668:	231f      	movs	r3, #31
    166a:	18fb      	adds	r3, r7, r3
    166c:	781b      	ldrb	r3, [r3, #0]
    166e:	2b78      	cmp	r3, #120	; 0x78
    1670:	d101      	bne.n	1676 <xvprintf+0x256>
    1672:	2327      	movs	r3, #39	; 0x27
    1674:	e000      	b.n	1678 <xvprintf+0x258>
    1676:	2307      	movs	r3, #7
    1678:	221e      	movs	r2, #30
    167a:	18ba      	adds	r2, r7, r2
    167c:	211e      	movs	r1, #30
    167e:	1879      	adds	r1, r7, r1
    1680:	7809      	ldrb	r1, [r1, #0]
    1682:	185b      	adds	r3, r3, r1
    1684:	7013      	strb	r3, [r2, #0]
    1686:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1688:	1c5a      	adds	r2, r3, #1
    168a:	633a      	str	r2, [r7, #48]	; 0x30
    168c:	221e      	movs	r2, #30
    168e:	18ba      	adds	r2, r7, r2
    1690:	7812      	ldrb	r2, [r2, #0]
    1692:	3230      	adds	r2, #48	; 0x30
    1694:	b2d1      	uxtb	r1, r2
    1696:	2208      	movs	r2, #8
    1698:	18ba      	adds	r2, r7, r2
    169a:	54d1      	strb	r1, [r2, r3]
    169c:	6a3b      	ldr	r3, [r7, #32]
    169e:	2b00      	cmp	r3, #0
    16a0:	d002      	beq.n	16a8 <xvprintf+0x288>
    16a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16a4:	2b0f      	cmp	r3, #15
    16a6:	d9ca      	bls.n	163e <xvprintf+0x21e>
    16a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16aa:	2208      	movs	r2, #8
    16ac:	4013      	ands	r3, r2
    16ae:	d006      	beq.n	16be <xvprintf+0x29e>
    16b0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16b2:	1c5a      	adds	r2, r3, #1
    16b4:	633a      	str	r2, [r7, #48]	; 0x30
    16b6:	2208      	movs	r2, #8
    16b8:	18ba      	adds	r2, r7, r2
    16ba:	212d      	movs	r1, #45	; 0x2d
    16bc:	54d1      	strb	r1, [r2, r3]
    16be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16c0:	62fb      	str	r3, [r7, #44]	; 0x2c
    16c2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16c4:	2201      	movs	r2, #1
    16c6:	4013      	ands	r3, r2
    16c8:	d001      	beq.n	16ce <xvprintf+0x2ae>
    16ca:	2230      	movs	r2, #48	; 0x30
    16cc:	e000      	b.n	16d0 <xvprintf+0x2b0>
    16ce:	2220      	movs	r2, #32
    16d0:	231e      	movs	r3, #30
    16d2:	18fb      	adds	r3, r7, r3
    16d4:	701a      	strb	r2, [r3, #0]
    16d6:	e005      	b.n	16e4 <xvprintf+0x2c4>
    16d8:	231e      	movs	r3, #30
    16da:	18fb      	adds	r3, r7, r3
    16dc:	781b      	ldrb	r3, [r3, #0]
    16de:	0018      	movs	r0, r3
    16e0:	f7ff fe3e 	bl	1360 <xputc>
    16e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16e6:	2202      	movs	r2, #2
    16e8:	4013      	ands	r3, r2
    16ea:	d105      	bne.n	16f8 <xvprintf+0x2d8>
    16ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16ee:	1c5a      	adds	r2, r3, #1
    16f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    16f2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    16f4:	4293      	cmp	r3, r2
    16f6:	d3ef      	bcc.n	16d8 <xvprintf+0x2b8>
    16f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16fa:	3b01      	subs	r3, #1
    16fc:	633b      	str	r3, [r7, #48]	; 0x30
    16fe:	2308      	movs	r3, #8
    1700:	18fa      	adds	r2, r7, r3
    1702:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1704:	18d3      	adds	r3, r2, r3
    1706:	781b      	ldrb	r3, [r3, #0]
    1708:	0018      	movs	r0, r3
    170a:	f7ff fe29 	bl	1360 <xputc>
    170e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1710:	2b00      	cmp	r3, #0
    1712:	d1f1      	bne.n	16f8 <xvprintf+0x2d8>
    1714:	e002      	b.n	171c <xvprintf+0x2fc>
    1716:	2020      	movs	r0, #32
    1718:	f7ff fe22 	bl	1360 <xputc>
    171c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    171e:	1c5a      	adds	r2, r3, #1
    1720:	62fa      	str	r2, [r7, #44]	; 0x2c
    1722:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1724:	4293      	cmp	r3, r2
    1726:	d3f6      	bcc.n	1716 <xvprintf+0x2f6>
    1728:	e67f      	b.n	142a <xvprintf+0xa>
    172a:	46c0      	nop			; (mov r8, r8)
    172c:	e000      	b.n	1730 <xvprintf+0x310>
    172e:	46c0      	nop			; (mov r8, r8)
    1730:	46c0      	nop			; (mov r8, r8)
    1732:	46bd      	mov	sp, r7
    1734:	b00e      	add	sp, #56	; 0x38
    1736:	bd80      	pop	{r7, pc}
    1738:	00001f70 	.word	0x00001f70

0000173c <xprintf>:
    173c:	b40f      	push	{r0, r1, r2, r3}
    173e:	b580      	push	{r7, lr}
    1740:	b082      	sub	sp, #8
    1742:	af00      	add	r7, sp, #0
    1744:	2314      	movs	r3, #20
    1746:	18fb      	adds	r3, r7, r3
    1748:	607b      	str	r3, [r7, #4]
    174a:	687a      	ldr	r2, [r7, #4]
    174c:	693b      	ldr	r3, [r7, #16]
    174e:	0011      	movs	r1, r2
    1750:	0018      	movs	r0, r3
    1752:	f7ff fe65 	bl	1420 <xvprintf>
    1756:	46c0      	nop			; (mov r8, r8)
    1758:	46bd      	mov	sp, r7
    175a:	b002      	add	sp, #8
    175c:	bc80      	pop	{r7}
    175e:	bc08      	pop	{r3}
    1760:	b004      	add	sp, #16
    1762:	4718      	bx	r3

00001764 <xsprintf>:
    1764:	b40e      	push	{r1, r2, r3}
    1766:	b580      	push	{r7, lr}
    1768:	b085      	sub	sp, #20
    176a:	af00      	add	r7, sp, #0
    176c:	6078      	str	r0, [r7, #4]
    176e:	4b0d      	ldr	r3, [pc, #52]	; (17a4 <xsprintf+0x40>)
    1770:	687a      	ldr	r2, [r7, #4]
    1772:	601a      	str	r2, [r3, #0]
    1774:	2320      	movs	r3, #32
    1776:	18fb      	adds	r3, r7, r3
    1778:	60fb      	str	r3, [r7, #12]
    177a:	68fa      	ldr	r2, [r7, #12]
    177c:	69fb      	ldr	r3, [r7, #28]
    177e:	0011      	movs	r1, r2
    1780:	0018      	movs	r0, r3
    1782:	f7ff fe4d 	bl	1420 <xvprintf>
    1786:	4b07      	ldr	r3, [pc, #28]	; (17a4 <xsprintf+0x40>)
    1788:	681b      	ldr	r3, [r3, #0]
    178a:	2200      	movs	r2, #0
    178c:	701a      	strb	r2, [r3, #0]
    178e:	4b05      	ldr	r3, [pc, #20]	; (17a4 <xsprintf+0x40>)
    1790:	2200      	movs	r2, #0
    1792:	601a      	str	r2, [r3, #0]
    1794:	46c0      	nop			; (mov r8, r8)
    1796:	46bd      	mov	sp, r7
    1798:	b005      	add	sp, #20
    179a:	bc80      	pop	{r7}
    179c:	bc08      	pop	{r3}
    179e:	b003      	add	sp, #12
    17a0:	4718      	bx	r3
    17a2:	46c0      	nop			; (mov r8, r8)
    17a4:	20000564 	.word	0x20000564

000017a8 <xfprintf>:
    17a8:	b40e      	push	{r1, r2, r3}
    17aa:	b580      	push	{r7, lr}
    17ac:	b085      	sub	sp, #20
    17ae:	af00      	add	r7, sp, #0
    17b0:	6078      	str	r0, [r7, #4]
    17b2:	4b0c      	ldr	r3, [pc, #48]	; (17e4 <xfprintf+0x3c>)
    17b4:	681b      	ldr	r3, [r3, #0]
    17b6:	60fb      	str	r3, [r7, #12]
    17b8:	4b0a      	ldr	r3, [pc, #40]	; (17e4 <xfprintf+0x3c>)
    17ba:	687a      	ldr	r2, [r7, #4]
    17bc:	601a      	str	r2, [r3, #0]
    17be:	2320      	movs	r3, #32
    17c0:	18fb      	adds	r3, r7, r3
    17c2:	60bb      	str	r3, [r7, #8]
    17c4:	68ba      	ldr	r2, [r7, #8]
    17c6:	69fb      	ldr	r3, [r7, #28]
    17c8:	0011      	movs	r1, r2
    17ca:	0018      	movs	r0, r3
    17cc:	f7ff fe28 	bl	1420 <xvprintf>
    17d0:	4b04      	ldr	r3, [pc, #16]	; (17e4 <xfprintf+0x3c>)
    17d2:	68fa      	ldr	r2, [r7, #12]
    17d4:	601a      	str	r2, [r3, #0]
    17d6:	46c0      	nop			; (mov r8, r8)
    17d8:	46bd      	mov	sp, r7
    17da:	b005      	add	sp, #20
    17dc:	bc80      	pop	{r7}
    17de:	bc08      	pop	{r3}
    17e0:	b003      	add	sp, #12
    17e2:	4718      	bx	r3
    17e4:	20000560 	.word	0x20000560

000017e8 <put_dump>:
    17e8:	b580      	push	{r7, lr}
    17ea:	b088      	sub	sp, #32
    17ec:	af00      	add	r7, sp, #0
    17ee:	60f8      	str	r0, [r7, #12]
    17f0:	60b9      	str	r1, [r7, #8]
    17f2:	607a      	str	r2, [r7, #4]
    17f4:	603b      	str	r3, [r7, #0]
    17f6:	68ba      	ldr	r2, [r7, #8]
    17f8:	4b38      	ldr	r3, [pc, #224]	; (18dc <put_dump+0xf4>)
    17fa:	0011      	movs	r1, r2
    17fc:	0018      	movs	r0, r3
    17fe:	f7ff ff9d 	bl	173c <xprintf>
    1802:	683b      	ldr	r3, [r7, #0]
    1804:	2b02      	cmp	r3, #2
    1806:	d03c      	beq.n	1882 <put_dump+0x9a>
    1808:	2b04      	cmp	r3, #4
    180a:	d04d      	beq.n	18a8 <put_dump+0xc0>
    180c:	2b01      	cmp	r3, #1
    180e:	d15d      	bne.n	18cc <put_dump+0xe4>
    1810:	68fb      	ldr	r3, [r7, #12]
    1812:	613b      	str	r3, [r7, #16]
    1814:	2300      	movs	r3, #0
    1816:	61fb      	str	r3, [r7, #28]
    1818:	e00c      	b.n	1834 <put_dump+0x4c>
    181a:	69fb      	ldr	r3, [r7, #28]
    181c:	693a      	ldr	r2, [r7, #16]
    181e:	18d3      	adds	r3, r2, r3
    1820:	781b      	ldrb	r3, [r3, #0]
    1822:	001a      	movs	r2, r3
    1824:	4b2e      	ldr	r3, [pc, #184]	; (18e0 <put_dump+0xf8>)
    1826:	0011      	movs	r1, r2
    1828:	0018      	movs	r0, r3
    182a:	f7ff ff87 	bl	173c <xprintf>
    182e:	69fb      	ldr	r3, [r7, #28]
    1830:	3301      	adds	r3, #1
    1832:	61fb      	str	r3, [r7, #28]
    1834:	69fa      	ldr	r2, [r7, #28]
    1836:	687b      	ldr	r3, [r7, #4]
    1838:	429a      	cmp	r2, r3
    183a:	dbee      	blt.n	181a <put_dump+0x32>
    183c:	2020      	movs	r0, #32
    183e:	f7ff fd8f 	bl	1360 <xputc>
    1842:	2300      	movs	r3, #0
    1844:	61fb      	str	r3, [r7, #28]
    1846:	e017      	b.n	1878 <put_dump+0x90>
    1848:	69fb      	ldr	r3, [r7, #28]
    184a:	693a      	ldr	r2, [r7, #16]
    184c:	18d3      	adds	r3, r2, r3
    184e:	781b      	ldrb	r3, [r3, #0]
    1850:	2b1f      	cmp	r3, #31
    1852:	d90a      	bls.n	186a <put_dump+0x82>
    1854:	69fb      	ldr	r3, [r7, #28]
    1856:	693a      	ldr	r2, [r7, #16]
    1858:	18d3      	adds	r3, r2, r3
    185a:	781b      	ldrb	r3, [r3, #0]
    185c:	2b7e      	cmp	r3, #126	; 0x7e
    185e:	d804      	bhi.n	186a <put_dump+0x82>
    1860:	69fb      	ldr	r3, [r7, #28]
    1862:	693a      	ldr	r2, [r7, #16]
    1864:	18d3      	adds	r3, r2, r3
    1866:	781b      	ldrb	r3, [r3, #0]
    1868:	e000      	b.n	186c <put_dump+0x84>
    186a:	232e      	movs	r3, #46	; 0x2e
    186c:	0018      	movs	r0, r3
    186e:	f7ff fd77 	bl	1360 <xputc>
    1872:	69fb      	ldr	r3, [r7, #28]
    1874:	3301      	adds	r3, #1
    1876:	61fb      	str	r3, [r7, #28]
    1878:	69fa      	ldr	r2, [r7, #28]
    187a:	687b      	ldr	r3, [r7, #4]
    187c:	429a      	cmp	r2, r3
    187e:	dbe3      	blt.n	1848 <put_dump+0x60>
    1880:	e024      	b.n	18cc <put_dump+0xe4>
    1882:	68fb      	ldr	r3, [r7, #12]
    1884:	61bb      	str	r3, [r7, #24]
    1886:	69bb      	ldr	r3, [r7, #24]
    1888:	1c9a      	adds	r2, r3, #2
    188a:	61ba      	str	r2, [r7, #24]
    188c:	881b      	ldrh	r3, [r3, #0]
    188e:	001a      	movs	r2, r3
    1890:	4b14      	ldr	r3, [pc, #80]	; (18e4 <put_dump+0xfc>)
    1892:	0011      	movs	r1, r2
    1894:	0018      	movs	r0, r3
    1896:	f7ff ff51 	bl	173c <xprintf>
    189a:	687b      	ldr	r3, [r7, #4]
    189c:	3b01      	subs	r3, #1
    189e:	607b      	str	r3, [r7, #4]
    18a0:	687b      	ldr	r3, [r7, #4]
    18a2:	2b00      	cmp	r3, #0
    18a4:	d1ef      	bne.n	1886 <put_dump+0x9e>
    18a6:	e011      	b.n	18cc <put_dump+0xe4>
    18a8:	68fb      	ldr	r3, [r7, #12]
    18aa:	617b      	str	r3, [r7, #20]
    18ac:	697b      	ldr	r3, [r7, #20]
    18ae:	1d1a      	adds	r2, r3, #4
    18b0:	617a      	str	r2, [r7, #20]
    18b2:	681a      	ldr	r2, [r3, #0]
    18b4:	4b0c      	ldr	r3, [pc, #48]	; (18e8 <put_dump+0x100>)
    18b6:	0011      	movs	r1, r2
    18b8:	0018      	movs	r0, r3
    18ba:	f7ff ff3f 	bl	173c <xprintf>
    18be:	687b      	ldr	r3, [r7, #4]
    18c0:	3b01      	subs	r3, #1
    18c2:	607b      	str	r3, [r7, #4]
    18c4:	687b      	ldr	r3, [r7, #4]
    18c6:	2b00      	cmp	r3, #0
    18c8:	d1f0      	bne.n	18ac <put_dump+0xc4>
    18ca:	46c0      	nop			; (mov r8, r8)
    18cc:	200a      	movs	r0, #10
    18ce:	f7ff fd47 	bl	1360 <xputc>
    18d2:	46c0      	nop			; (mov r8, r8)
    18d4:	46bd      	mov	sp, r7
    18d6:	b008      	add	sp, #32
    18d8:	bd80      	pop	{r7, pc}
    18da:	46c0      	nop			; (mov r8, r8)
    18dc:	00001fcc 	.word	0x00001fcc
    18e0:	00001fd4 	.word	0x00001fd4
    18e4:	00001fdc 	.word	0x00001fdc
    18e8:	00001fe4 	.word	0x00001fe4

000018ec <xgets>:
    18ec:	b580      	push	{r7, lr}
    18ee:	b084      	sub	sp, #16
    18f0:	af00      	add	r7, sp, #0
    18f2:	6078      	str	r0, [r7, #4]
    18f4:	6039      	str	r1, [r7, #0]
    18f6:	4b24      	ldr	r3, [pc, #144]	; (1988 <xgets+0x9c>)
    18f8:	681b      	ldr	r3, [r3, #0]
    18fa:	2b00      	cmp	r3, #0
    18fc:	d101      	bne.n	1902 <xgets+0x16>
    18fe:	2300      	movs	r3, #0
    1900:	e03e      	b.n	1980 <xgets+0x94>
    1902:	2300      	movs	r3, #0
    1904:	60fb      	str	r3, [r7, #12]
    1906:	4b20      	ldr	r3, [pc, #128]	; (1988 <xgets+0x9c>)
    1908:	681b      	ldr	r3, [r3, #0]
    190a:	4798      	blx	r3
    190c:	0003      	movs	r3, r0
    190e:	60bb      	str	r3, [r7, #8]
    1910:	68bb      	ldr	r3, [r7, #8]
    1912:	2b00      	cmp	r3, #0
    1914:	d101      	bne.n	191a <xgets+0x2e>
    1916:	2300      	movs	r3, #0
    1918:	e032      	b.n	1980 <xgets+0x94>
    191a:	68bb      	ldr	r3, [r7, #8]
    191c:	2b0d      	cmp	r3, #13
    191e:	d025      	beq.n	196c <xgets+0x80>
    1920:	68bb      	ldr	r3, [r7, #8]
    1922:	2b08      	cmp	r3, #8
    1924:	d10b      	bne.n	193e <xgets+0x52>
    1926:	68fb      	ldr	r3, [r7, #12]
    1928:	2b00      	cmp	r3, #0
    192a:	d008      	beq.n	193e <xgets+0x52>
    192c:	68fb      	ldr	r3, [r7, #12]
    192e:	3b01      	subs	r3, #1
    1930:	60fb      	str	r3, [r7, #12]
    1932:	68bb      	ldr	r3, [r7, #8]
    1934:	b2db      	uxtb	r3, r3
    1936:	0018      	movs	r0, r3
    1938:	f7ff fd12 	bl	1360 <xputc>
    193c:	e015      	b.n	196a <xgets+0x7e>
    193e:	68bb      	ldr	r3, [r7, #8]
    1940:	2b1f      	cmp	r3, #31
    1942:	dde0      	ble.n	1906 <xgets+0x1a>
    1944:	683b      	ldr	r3, [r7, #0]
    1946:	1e5a      	subs	r2, r3, #1
    1948:	68fb      	ldr	r3, [r7, #12]
    194a:	429a      	cmp	r2, r3
    194c:	dddb      	ble.n	1906 <xgets+0x1a>
    194e:	68fb      	ldr	r3, [r7, #12]
    1950:	1c5a      	adds	r2, r3, #1
    1952:	60fa      	str	r2, [r7, #12]
    1954:	001a      	movs	r2, r3
    1956:	687b      	ldr	r3, [r7, #4]
    1958:	189b      	adds	r3, r3, r2
    195a:	68ba      	ldr	r2, [r7, #8]
    195c:	b2d2      	uxtb	r2, r2
    195e:	701a      	strb	r2, [r3, #0]
    1960:	68bb      	ldr	r3, [r7, #8]
    1962:	b2db      	uxtb	r3, r3
    1964:	0018      	movs	r0, r3
    1966:	f7ff fcfb 	bl	1360 <xputc>
    196a:	e7cc      	b.n	1906 <xgets+0x1a>
    196c:	46c0      	nop			; (mov r8, r8)
    196e:	68fb      	ldr	r3, [r7, #12]
    1970:	687a      	ldr	r2, [r7, #4]
    1972:	18d3      	adds	r3, r2, r3
    1974:	2200      	movs	r2, #0
    1976:	701a      	strb	r2, [r3, #0]
    1978:	200a      	movs	r0, #10
    197a:	f7ff fcf1 	bl	1360 <xputc>
    197e:	2301      	movs	r3, #1
    1980:	0018      	movs	r0, r3
    1982:	46bd      	mov	sp, r7
    1984:	b004      	add	sp, #16
    1986:	bd80      	pop	{r7, pc}
    1988:	20000568 	.word	0x20000568

0000198c <xfgets>:
    198c:	b580      	push	{r7, lr}
    198e:	b086      	sub	sp, #24
    1990:	af00      	add	r7, sp, #0
    1992:	60f8      	str	r0, [r7, #12]
    1994:	60b9      	str	r1, [r7, #8]
    1996:	607a      	str	r2, [r7, #4]
    1998:	4b0a      	ldr	r3, [pc, #40]	; (19c4 <xfgets+0x38>)
    199a:	681b      	ldr	r3, [r3, #0]
    199c:	617b      	str	r3, [r7, #20]
    199e:	4b09      	ldr	r3, [pc, #36]	; (19c4 <xfgets+0x38>)
    19a0:	68fa      	ldr	r2, [r7, #12]
    19a2:	601a      	str	r2, [r3, #0]
    19a4:	687a      	ldr	r2, [r7, #4]
    19a6:	68bb      	ldr	r3, [r7, #8]
    19a8:	0011      	movs	r1, r2
    19aa:	0018      	movs	r0, r3
    19ac:	f7ff ff9e 	bl	18ec <xgets>
    19b0:	0003      	movs	r3, r0
    19b2:	613b      	str	r3, [r7, #16]
    19b4:	4b03      	ldr	r3, [pc, #12]	; (19c4 <xfgets+0x38>)
    19b6:	697a      	ldr	r2, [r7, #20]
    19b8:	601a      	str	r2, [r3, #0]
    19ba:	693b      	ldr	r3, [r7, #16]
    19bc:	0018      	movs	r0, r3
    19be:	46bd      	mov	sp, r7
    19c0:	b006      	add	sp, #24
    19c2:	bd80      	pop	{r7, pc}
    19c4:	20000568 	.word	0x20000568

000019c8 <xatoi>:
    19c8:	b580      	push	{r7, lr}
    19ca:	b084      	sub	sp, #16
    19cc:	af00      	add	r7, sp, #0
    19ce:	6078      	str	r0, [r7, #4]
    19d0:	6039      	str	r1, [r7, #0]
    19d2:	2309      	movs	r3, #9
    19d4:	18fb      	adds	r3, r7, r3
    19d6:	2200      	movs	r2, #0
    19d8:	701a      	strb	r2, [r3, #0]
    19da:	683b      	ldr	r3, [r7, #0]
    19dc:	2200      	movs	r2, #0
    19de:	601a      	str	r2, [r3, #0]
    19e0:	e004      	b.n	19ec <xatoi+0x24>
    19e2:	687b      	ldr	r3, [r7, #4]
    19e4:	681b      	ldr	r3, [r3, #0]
    19e6:	1c5a      	adds	r2, r3, #1
    19e8:	687b      	ldr	r3, [r7, #4]
    19ea:	601a      	str	r2, [r3, #0]
    19ec:	687b      	ldr	r3, [r7, #4]
    19ee:	681a      	ldr	r2, [r3, #0]
    19f0:	230b      	movs	r3, #11
    19f2:	18fb      	adds	r3, r7, r3
    19f4:	7812      	ldrb	r2, [r2, #0]
    19f6:	701a      	strb	r2, [r3, #0]
    19f8:	230b      	movs	r3, #11
    19fa:	18fb      	adds	r3, r7, r3
    19fc:	781b      	ldrb	r3, [r3, #0]
    19fe:	2b20      	cmp	r3, #32
    1a00:	d0ef      	beq.n	19e2 <xatoi+0x1a>
    1a02:	230b      	movs	r3, #11
    1a04:	18fb      	adds	r3, r7, r3
    1a06:	781b      	ldrb	r3, [r3, #0]
    1a08:	2b2d      	cmp	r3, #45	; 0x2d
    1a0a:	d10e      	bne.n	1a2a <xatoi+0x62>
    1a0c:	2309      	movs	r3, #9
    1a0e:	18fb      	adds	r3, r7, r3
    1a10:	2201      	movs	r2, #1
    1a12:	701a      	strb	r2, [r3, #0]
    1a14:	687b      	ldr	r3, [r7, #4]
    1a16:	681b      	ldr	r3, [r3, #0]
    1a18:	1c5a      	adds	r2, r3, #1
    1a1a:	687b      	ldr	r3, [r7, #4]
    1a1c:	601a      	str	r2, [r3, #0]
    1a1e:	687b      	ldr	r3, [r7, #4]
    1a20:	681a      	ldr	r2, [r3, #0]
    1a22:	230b      	movs	r3, #11
    1a24:	18fb      	adds	r3, r7, r3
    1a26:	7812      	ldrb	r2, [r2, #0]
    1a28:	701a      	strb	r2, [r3, #0]
    1a2a:	230b      	movs	r3, #11
    1a2c:	18fb      	adds	r3, r7, r3
    1a2e:	781b      	ldrb	r3, [r3, #0]
    1a30:	2b30      	cmp	r3, #48	; 0x30
    1a32:	d149      	bne.n	1ac8 <xatoi+0x100>
    1a34:	687b      	ldr	r3, [r7, #4]
    1a36:	681b      	ldr	r3, [r3, #0]
    1a38:	1c5a      	adds	r2, r3, #1
    1a3a:	687b      	ldr	r3, [r7, #4]
    1a3c:	601a      	str	r2, [r3, #0]
    1a3e:	687b      	ldr	r3, [r7, #4]
    1a40:	681a      	ldr	r2, [r3, #0]
    1a42:	230b      	movs	r3, #11
    1a44:	18fb      	adds	r3, r7, r3
    1a46:	7812      	ldrb	r2, [r2, #0]
    1a48:	701a      	strb	r2, [r3, #0]
    1a4a:	230b      	movs	r3, #11
    1a4c:	18fb      	adds	r3, r7, r3
    1a4e:	781b      	ldrb	r3, [r3, #0]
    1a50:	2b62      	cmp	r3, #98	; 0x62
    1a52:	d011      	beq.n	1a78 <xatoi+0xb0>
    1a54:	2b78      	cmp	r3, #120	; 0x78
    1a56:	d11f      	bne.n	1a98 <xatoi+0xd0>
    1a58:	230a      	movs	r3, #10
    1a5a:	18fb      	adds	r3, r7, r3
    1a5c:	2210      	movs	r2, #16
    1a5e:	701a      	strb	r2, [r3, #0]
    1a60:	687b      	ldr	r3, [r7, #4]
    1a62:	681b      	ldr	r3, [r3, #0]
    1a64:	1c5a      	adds	r2, r3, #1
    1a66:	687b      	ldr	r3, [r7, #4]
    1a68:	601a      	str	r2, [r3, #0]
    1a6a:	687b      	ldr	r3, [r7, #4]
    1a6c:	681a      	ldr	r2, [r3, #0]
    1a6e:	230b      	movs	r3, #11
    1a70:	18fb      	adds	r3, r7, r3
    1a72:	7812      	ldrb	r2, [r2, #0]
    1a74:	701a      	strb	r2, [r3, #0]
    1a76:	e037      	b.n	1ae8 <xatoi+0x120>
    1a78:	230a      	movs	r3, #10
    1a7a:	18fb      	adds	r3, r7, r3
    1a7c:	2202      	movs	r2, #2
    1a7e:	701a      	strb	r2, [r3, #0]
    1a80:	687b      	ldr	r3, [r7, #4]
    1a82:	681b      	ldr	r3, [r3, #0]
    1a84:	1c5a      	adds	r2, r3, #1
    1a86:	687b      	ldr	r3, [r7, #4]
    1a88:	601a      	str	r2, [r3, #0]
    1a8a:	687b      	ldr	r3, [r7, #4]
    1a8c:	681a      	ldr	r2, [r3, #0]
    1a8e:	230b      	movs	r3, #11
    1a90:	18fb      	adds	r3, r7, r3
    1a92:	7812      	ldrb	r2, [r2, #0]
    1a94:	701a      	strb	r2, [r3, #0]
    1a96:	e027      	b.n	1ae8 <xatoi+0x120>
    1a98:	230b      	movs	r3, #11
    1a9a:	18fb      	adds	r3, r7, r3
    1a9c:	781b      	ldrb	r3, [r3, #0]
    1a9e:	2b20      	cmp	r3, #32
    1aa0:	d801      	bhi.n	1aa6 <xatoi+0xde>
    1aa2:	2301      	movs	r3, #1
    1aa4:	e079      	b.n	1b9a <xatoi+0x1d2>
    1aa6:	230b      	movs	r3, #11
    1aa8:	18fb      	adds	r3, r7, r3
    1aaa:	781b      	ldrb	r3, [r3, #0]
    1aac:	2b2f      	cmp	r3, #47	; 0x2f
    1aae:	d904      	bls.n	1aba <xatoi+0xf2>
    1ab0:	230b      	movs	r3, #11
    1ab2:	18fb      	adds	r3, r7, r3
    1ab4:	781b      	ldrb	r3, [r3, #0]
    1ab6:	2b39      	cmp	r3, #57	; 0x39
    1ab8:	d901      	bls.n	1abe <xatoi+0xf6>
    1aba:	2300      	movs	r3, #0
    1abc:	e06d      	b.n	1b9a <xatoi+0x1d2>
    1abe:	230a      	movs	r3, #10
    1ac0:	18fb      	adds	r3, r7, r3
    1ac2:	2208      	movs	r2, #8
    1ac4:	701a      	strb	r2, [r3, #0]
    1ac6:	e00f      	b.n	1ae8 <xatoi+0x120>
    1ac8:	230b      	movs	r3, #11
    1aca:	18fb      	adds	r3, r7, r3
    1acc:	781b      	ldrb	r3, [r3, #0]
    1ace:	2b2f      	cmp	r3, #47	; 0x2f
    1ad0:	d904      	bls.n	1adc <xatoi+0x114>
    1ad2:	230b      	movs	r3, #11
    1ad4:	18fb      	adds	r3, r7, r3
    1ad6:	781b      	ldrb	r3, [r3, #0]
    1ad8:	2b39      	cmp	r3, #57	; 0x39
    1ada:	d901      	bls.n	1ae0 <xatoi+0x118>
    1adc:	2300      	movs	r3, #0
    1ade:	e05c      	b.n	1b9a <xatoi+0x1d2>
    1ae0:	230a      	movs	r3, #10
    1ae2:	18fb      	adds	r3, r7, r3
    1ae4:	220a      	movs	r2, #10
    1ae6:	701a      	strb	r2, [r3, #0]
    1ae8:	2300      	movs	r3, #0
    1aea:	60fb      	str	r3, [r7, #12]
    1aec:	e044      	b.n	1b78 <xatoi+0x1b0>
    1aee:	230b      	movs	r3, #11
    1af0:	18fb      	adds	r3, r7, r3
    1af2:	781b      	ldrb	r3, [r3, #0]
    1af4:	2b60      	cmp	r3, #96	; 0x60
    1af6:	d906      	bls.n	1b06 <xatoi+0x13e>
    1af8:	230b      	movs	r3, #11
    1afa:	18fb      	adds	r3, r7, r3
    1afc:	220b      	movs	r2, #11
    1afe:	18ba      	adds	r2, r7, r2
    1b00:	7812      	ldrb	r2, [r2, #0]
    1b02:	3a20      	subs	r2, #32
    1b04:	701a      	strb	r2, [r3, #0]
    1b06:	230b      	movs	r3, #11
    1b08:	18fb      	adds	r3, r7, r3
    1b0a:	220b      	movs	r2, #11
    1b0c:	18ba      	adds	r2, r7, r2
    1b0e:	7812      	ldrb	r2, [r2, #0]
    1b10:	3a30      	subs	r2, #48	; 0x30
    1b12:	701a      	strb	r2, [r3, #0]
    1b14:	230b      	movs	r3, #11
    1b16:	18fb      	adds	r3, r7, r3
    1b18:	781b      	ldrb	r3, [r3, #0]
    1b1a:	2b10      	cmp	r3, #16
    1b1c:	d90d      	bls.n	1b3a <xatoi+0x172>
    1b1e:	230b      	movs	r3, #11
    1b20:	18fb      	adds	r3, r7, r3
    1b22:	220b      	movs	r2, #11
    1b24:	18ba      	adds	r2, r7, r2
    1b26:	7812      	ldrb	r2, [r2, #0]
    1b28:	3a07      	subs	r2, #7
    1b2a:	701a      	strb	r2, [r3, #0]
    1b2c:	230b      	movs	r3, #11
    1b2e:	18fb      	adds	r3, r7, r3
    1b30:	781b      	ldrb	r3, [r3, #0]
    1b32:	2b09      	cmp	r3, #9
    1b34:	d801      	bhi.n	1b3a <xatoi+0x172>
    1b36:	2300      	movs	r3, #0
    1b38:	e02f      	b.n	1b9a <xatoi+0x1d2>
    1b3a:	230b      	movs	r3, #11
    1b3c:	18fa      	adds	r2, r7, r3
    1b3e:	230a      	movs	r3, #10
    1b40:	18fb      	adds	r3, r7, r3
    1b42:	7812      	ldrb	r2, [r2, #0]
    1b44:	781b      	ldrb	r3, [r3, #0]
    1b46:	429a      	cmp	r2, r3
    1b48:	d301      	bcc.n	1b4e <xatoi+0x186>
    1b4a:	2300      	movs	r3, #0
    1b4c:	e025      	b.n	1b9a <xatoi+0x1d2>
    1b4e:	230a      	movs	r3, #10
    1b50:	18fb      	adds	r3, r7, r3
    1b52:	781b      	ldrb	r3, [r3, #0]
    1b54:	68fa      	ldr	r2, [r7, #12]
    1b56:	435a      	muls	r2, r3
    1b58:	230b      	movs	r3, #11
    1b5a:	18fb      	adds	r3, r7, r3
    1b5c:	781b      	ldrb	r3, [r3, #0]
    1b5e:	18d3      	adds	r3, r2, r3
    1b60:	60fb      	str	r3, [r7, #12]
    1b62:	687b      	ldr	r3, [r7, #4]
    1b64:	681b      	ldr	r3, [r3, #0]
    1b66:	1c5a      	adds	r2, r3, #1
    1b68:	687b      	ldr	r3, [r7, #4]
    1b6a:	601a      	str	r2, [r3, #0]
    1b6c:	687b      	ldr	r3, [r7, #4]
    1b6e:	681a      	ldr	r2, [r3, #0]
    1b70:	230b      	movs	r3, #11
    1b72:	18fb      	adds	r3, r7, r3
    1b74:	7812      	ldrb	r2, [r2, #0]
    1b76:	701a      	strb	r2, [r3, #0]
    1b78:	230b      	movs	r3, #11
    1b7a:	18fb      	adds	r3, r7, r3
    1b7c:	781b      	ldrb	r3, [r3, #0]
    1b7e:	2b20      	cmp	r3, #32
    1b80:	d8b5      	bhi.n	1aee <xatoi+0x126>
    1b82:	2309      	movs	r3, #9
    1b84:	18fb      	adds	r3, r7, r3
    1b86:	781b      	ldrb	r3, [r3, #0]
    1b88:	2b00      	cmp	r3, #0
    1b8a:	d002      	beq.n	1b92 <xatoi+0x1ca>
    1b8c:	68fb      	ldr	r3, [r7, #12]
    1b8e:	425b      	negs	r3, r3
    1b90:	60fb      	str	r3, [r7, #12]
    1b92:	68fa      	ldr	r2, [r7, #12]
    1b94:	683b      	ldr	r3, [r7, #0]
    1b96:	601a      	str	r2, [r3, #0]
    1b98:	2301      	movs	r3, #1
    1b9a:	0018      	movs	r0, r3
    1b9c:	46bd      	mov	sp, r7
    1b9e:	b004      	add	sp, #16
    1ba0:	bd80      	pop	{r7, pc}
    1ba2:	46c0      	nop			; (mov r8, r8)

00001ba4 <mil_cpy>:
    1ba4:	8802      	ldrh	r2, [r0, #0]
    1ba6:	4b30      	ldr	r3, [pc, #192]	; (1c68 <mil_cpy+0xc4>)
    1ba8:	601a      	str	r2, [r3, #0]
    1baa:	8842      	ldrh	r2, [r0, #2]
    1bac:	4b2f      	ldr	r3, [pc, #188]	; (1c6c <mil_cpy+0xc8>)
    1bae:	601a      	str	r2, [r3, #0]
    1bb0:	8882      	ldrh	r2, [r0, #4]
    1bb2:	4b2f      	ldr	r3, [pc, #188]	; (1c70 <mil_cpy+0xcc>)
    1bb4:	601a      	str	r2, [r3, #0]
    1bb6:	88c2      	ldrh	r2, [r0, #6]
    1bb8:	4b2e      	ldr	r3, [pc, #184]	; (1c74 <mil_cpy+0xd0>)
    1bba:	601a      	str	r2, [r3, #0]
    1bbc:	8902      	ldrh	r2, [r0, #8]
    1bbe:	4b2e      	ldr	r3, [pc, #184]	; (1c78 <mil_cpy+0xd4>)
    1bc0:	601a      	str	r2, [r3, #0]
    1bc2:	8942      	ldrh	r2, [r0, #10]
    1bc4:	4b2d      	ldr	r3, [pc, #180]	; (1c7c <mil_cpy+0xd8>)
    1bc6:	601a      	str	r2, [r3, #0]
    1bc8:	8982      	ldrh	r2, [r0, #12]
    1bca:	4b2d      	ldr	r3, [pc, #180]	; (1c80 <mil_cpy+0xdc>)
    1bcc:	601a      	str	r2, [r3, #0]
    1bce:	89c2      	ldrh	r2, [r0, #14]
    1bd0:	4b2c      	ldr	r3, [pc, #176]	; (1c84 <mil_cpy+0xe0>)
    1bd2:	601a      	str	r2, [r3, #0]
    1bd4:	8a02      	ldrh	r2, [r0, #16]
    1bd6:	4b2c      	ldr	r3, [pc, #176]	; (1c88 <mil_cpy+0xe4>)
    1bd8:	601a      	str	r2, [r3, #0]
    1bda:	8a42      	ldrh	r2, [r0, #18]
    1bdc:	4b2b      	ldr	r3, [pc, #172]	; (1c8c <mil_cpy+0xe8>)
    1bde:	601a      	str	r2, [r3, #0]
    1be0:	8a82      	ldrh	r2, [r0, #20]
    1be2:	4b2b      	ldr	r3, [pc, #172]	; (1c90 <mil_cpy+0xec>)
    1be4:	601a      	str	r2, [r3, #0]
    1be6:	8ac2      	ldrh	r2, [r0, #22]
    1be8:	4b2a      	ldr	r3, [pc, #168]	; (1c94 <mil_cpy+0xf0>)
    1bea:	601a      	str	r2, [r3, #0]
    1bec:	8b02      	ldrh	r2, [r0, #24]
    1bee:	4b2a      	ldr	r3, [pc, #168]	; (1c98 <mil_cpy+0xf4>)
    1bf0:	601a      	str	r2, [r3, #0]
    1bf2:	8b42      	ldrh	r2, [r0, #26]
    1bf4:	4b29      	ldr	r3, [pc, #164]	; (1c9c <mil_cpy+0xf8>)
    1bf6:	601a      	str	r2, [r3, #0]
    1bf8:	8b82      	ldrh	r2, [r0, #28]
    1bfa:	4b29      	ldr	r3, [pc, #164]	; (1ca0 <mil_cpy+0xfc>)
    1bfc:	601a      	str	r2, [r3, #0]
    1bfe:	8bc2      	ldrh	r2, [r0, #30]
    1c00:	4b28      	ldr	r3, [pc, #160]	; (1ca4 <mil_cpy+0x100>)
    1c02:	601a      	str	r2, [r3, #0]
    1c04:	8c02      	ldrh	r2, [r0, #32]
    1c06:	4b28      	ldr	r3, [pc, #160]	; (1ca8 <mil_cpy+0x104>)
    1c08:	601a      	str	r2, [r3, #0]
    1c0a:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1c0c:	4b27      	ldr	r3, [pc, #156]	; (1cac <mil_cpy+0x108>)
    1c0e:	601a      	str	r2, [r3, #0]
    1c10:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1c12:	4b27      	ldr	r3, [pc, #156]	; (1cb0 <mil_cpy+0x10c>)
    1c14:	601a      	str	r2, [r3, #0]
    1c16:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1c18:	4b26      	ldr	r3, [pc, #152]	; (1cb4 <mil_cpy+0x110>)
    1c1a:	601a      	str	r2, [r3, #0]
    1c1c:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1c1e:	4b26      	ldr	r3, [pc, #152]	; (1cb8 <mil_cpy+0x114>)
    1c20:	601a      	str	r2, [r3, #0]
    1c22:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1c24:	4b25      	ldr	r3, [pc, #148]	; (1cbc <mil_cpy+0x118>)
    1c26:	601a      	str	r2, [r3, #0]
    1c28:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1c2a:	4b25      	ldr	r3, [pc, #148]	; (1cc0 <mil_cpy+0x11c>)
    1c2c:	601a      	str	r2, [r3, #0]
    1c2e:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1c30:	4b24      	ldr	r3, [pc, #144]	; (1cc4 <mil_cpy+0x120>)
    1c32:	601a      	str	r2, [r3, #0]
    1c34:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1c36:	4b24      	ldr	r3, [pc, #144]	; (1cc8 <mil_cpy+0x124>)
    1c38:	601a      	str	r2, [r3, #0]
    1c3a:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1c3c:	4b23      	ldr	r3, [pc, #140]	; (1ccc <mil_cpy+0x128>)
    1c3e:	601a      	str	r2, [r3, #0]
    1c40:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1c42:	4b23      	ldr	r3, [pc, #140]	; (1cd0 <mil_cpy+0x12c>)
    1c44:	601a      	str	r2, [r3, #0]
    1c46:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1c48:	4b22      	ldr	r3, [pc, #136]	; (1cd4 <mil_cpy+0x130>)
    1c4a:	601a      	str	r2, [r3, #0]
    1c4c:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1c4e:	4b22      	ldr	r3, [pc, #136]	; (1cd8 <mil_cpy+0x134>)
    1c50:	601a      	str	r2, [r3, #0]
    1c52:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1c54:	4b21      	ldr	r3, [pc, #132]	; (1cdc <mil_cpy+0x138>)
    1c56:	601a      	str	r2, [r3, #0]
    1c58:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1c5a:	4b21      	ldr	r3, [pc, #132]	; (1ce0 <mil_cpy+0x13c>)
    1c5c:	601a      	str	r2, [r3, #0]
    1c5e:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1c60:	4b20      	ldr	r3, [pc, #128]	; (1ce4 <mil_cpy+0x140>)
    1c62:	601a      	str	r2, [r3, #0]
    1c64:	4770      	bx	lr
    1c66:	46c0      	nop			; (mov r8, r8)
    1c68:	40048080 	.word	0x40048080
    1c6c:	40048084 	.word	0x40048084
    1c70:	40048088 	.word	0x40048088
    1c74:	4004808c 	.word	0x4004808c
    1c78:	40048090 	.word	0x40048090
    1c7c:	40048094 	.word	0x40048094
    1c80:	40048098 	.word	0x40048098
    1c84:	4004809c 	.word	0x4004809c
    1c88:	400480a0 	.word	0x400480a0
    1c8c:	400480a4 	.word	0x400480a4
    1c90:	400480a8 	.word	0x400480a8
    1c94:	400480ac 	.word	0x400480ac
    1c98:	400480b0 	.word	0x400480b0
    1c9c:	400480b4 	.word	0x400480b4
    1ca0:	400480b8 	.word	0x400480b8
    1ca4:	400480bc 	.word	0x400480bc
    1ca8:	400480c0 	.word	0x400480c0
    1cac:	400480c4 	.word	0x400480c4
    1cb0:	400480c8 	.word	0x400480c8
    1cb4:	400480cc 	.word	0x400480cc
    1cb8:	400480d0 	.word	0x400480d0
    1cbc:	400480d4 	.word	0x400480d4
    1cc0:	400480d8 	.word	0x400480d8
    1cc4:	400480dc 	.word	0x400480dc
    1cc8:	400480e0 	.word	0x400480e0
    1ccc:	400480e4 	.word	0x400480e4
    1cd0:	400480e8 	.word	0x400480e8
    1cd4:	400480ec 	.word	0x400480ec
    1cd8:	400480f0 	.word	0x400480f0
    1cdc:	400480f4 	.word	0x400480f4
    1ce0:	400480f8 	.word	0x400480f8
    1ce4:	400480fc 	.word	0x400480fc

00001ce8 <adc_dma_init>:
    1ce8:	b580      	push	{r7, lr}
    1cea:	af00      	add	r7, sp, #0
    1cec:	4b18      	ldr	r3, [pc, #96]	; (1d50 <adc_dma_init+0x68>)
    1cee:	4a18      	ldr	r2, [pc, #96]	; (1d50 <adc_dma_init+0x68>)
    1cf0:	69d2      	ldr	r2, [r2, #28]
    1cf2:	2120      	movs	r1, #32
    1cf4:	430a      	orrs	r2, r1
    1cf6:	61da      	str	r2, [r3, #28]
    1cf8:	4b16      	ldr	r3, [pc, #88]	; (1d54 <adc_dma_init+0x6c>)
    1cfa:	4a17      	ldr	r2, [pc, #92]	; (1d58 <adc_dma_init+0x70>)
    1cfc:	609a      	str	r2, [r3, #8]
    1cfe:	4b15      	ldr	r3, [pc, #84]	; (1d54 <adc_dma_init+0x6c>)
    1d00:	2201      	movs	r2, #1
    1d02:	4252      	negs	r2, r2
    1d04:	62da      	str	r2, [r3, #44]	; 0x2c
    1d06:	4b13      	ldr	r3, [pc, #76]	; (1d54 <adc_dma_init+0x6c>)
    1d08:	2201      	movs	r2, #1
    1d0a:	4252      	negs	r2, r2
    1d0c:	621a      	str	r2, [r3, #32]
    1d0e:	4b11      	ldr	r3, [pc, #68]	; (1d54 <adc_dma_init+0x6c>)
    1d10:	2201      	movs	r2, #1
    1d12:	4252      	negs	r2, r2
    1d14:	635a      	str	r2, [r3, #52]	; 0x34
    1d16:	4b0f      	ldr	r3, [pc, #60]	; (1d54 <adc_dma_init+0x6c>)
    1d18:	2280      	movs	r2, #128	; 0x80
    1d1a:	05d2      	lsls	r2, r2, #23
    1d1c:	61da      	str	r2, [r3, #28]
    1d1e:	4b0d      	ldr	r3, [pc, #52]	; (1d54 <adc_dma_init+0x6c>)
    1d20:	2280      	movs	r2, #128	; 0x80
    1d22:	05d2      	lsls	r2, r2, #23
    1d24:	625a      	str	r2, [r3, #36]	; 0x24
    1d26:	4b0b      	ldr	r3, [pc, #44]	; (1d54 <adc_dma_init+0x6c>)
    1d28:	2201      	movs	r2, #1
    1d2a:	605a      	str	r2, [r3, #4]
    1d2c:	4a0a      	ldr	r2, [pc, #40]	; (1d58 <adc_dma_init+0x70>)
    1d2e:	23f0      	movs	r3, #240	; 0xf0
    1d30:	005b      	lsls	r3, r3, #1
    1d32:	490a      	ldr	r1, [pc, #40]	; (1d5c <adc_dma_init+0x74>)
    1d34:	50d1      	str	r1, [r2, r3]
    1d36:	490a      	ldr	r1, [pc, #40]	; (1d60 <adc_dma_init+0x78>)
    1d38:	4a07      	ldr	r2, [pc, #28]	; (1d58 <adc_dma_init+0x70>)
    1d3a:	23f2      	movs	r3, #242	; 0xf2
    1d3c:	005b      	lsls	r3, r3, #1
    1d3e:	50d1      	str	r1, [r2, r3]
    1d40:	4a05      	ldr	r2, [pc, #20]	; (1d58 <adc_dma_init+0x70>)
    1d42:	23f4      	movs	r3, #244	; 0xf4
    1d44:	005b      	lsls	r3, r3, #1
    1d46:	4907      	ldr	r1, [pc, #28]	; (1d64 <adc_dma_init+0x7c>)
    1d48:	50d1      	str	r1, [r2, r3]
    1d4a:	46c0      	nop			; (mov r8, r8)
    1d4c:	46bd      	mov	sp, r7
    1d4e:	bd80      	pop	{r7, pc}
    1d50:	40020000 	.word	0x40020000
    1d54:	40028000 	.word	0x40028000
    1d58:	20100000 	.word	0x20100000
    1d5c:	40088018 	.word	0x40088018
    1d60:	2010020c 	.word	0x2010020c
    1d64:	ae000031 	.word	0xae000031

00001d68 <adc_dma_start>:
    1d68:	b580      	push	{r7, lr}
    1d6a:	af00      	add	r7, sp, #0
    1d6c:	4b06      	ldr	r3, [pc, #24]	; (1d88 <adc_dma_start+0x20>)
    1d6e:	4a06      	ldr	r2, [pc, #24]	; (1d88 <adc_dma_start+0x20>)
    1d70:	6812      	ldr	r2, [r2, #0]
    1d72:	2108      	movs	r1, #8
    1d74:	430a      	orrs	r2, r1
    1d76:	601a      	str	r2, [r3, #0]
    1d78:	4b04      	ldr	r3, [pc, #16]	; (1d8c <adc_dma_start+0x24>)
    1d7a:	2280      	movs	r2, #128	; 0x80
    1d7c:	05d2      	lsls	r2, r2, #23
    1d7e:	629a      	str	r2, [r3, #40]	; 0x28
    1d80:	46c0      	nop			; (mov r8, r8)
    1d82:	46bd      	mov	sp, r7
    1d84:	bd80      	pop	{r7, pc}
    1d86:	46c0      	nop			; (mov r8, r8)
    1d88:	40088000 	.word	0x40088000
    1d8c:	40028000 	.word	0x40028000

00001d90 <adc_dma_wait>:
    1d90:	b580      	push	{r7, lr}
    1d92:	af00      	add	r7, sp, #0
    1d94:	46c0      	nop			; (mov r8, r8)
    1d96:	4a0a      	ldr	r2, [pc, #40]	; (1dc0 <adc_dma_wait+0x30>)
    1d98:	23f4      	movs	r3, #244	; 0xf4
    1d9a:	005b      	lsls	r3, r3, #1
    1d9c:	58d3      	ldr	r3, [r2, r3]
    1d9e:	2207      	movs	r2, #7
    1da0:	4013      	ands	r3, r2
    1da2:	d1f8      	bne.n	1d96 <adc_dma_wait+0x6>
    1da4:	4b07      	ldr	r3, [pc, #28]	; (1dc4 <adc_dma_wait+0x34>)
    1da6:	4a07      	ldr	r2, [pc, #28]	; (1dc4 <adc_dma_wait+0x34>)
    1da8:	6812      	ldr	r2, [r2, #0]
    1daa:	2108      	movs	r1, #8
    1dac:	438a      	bics	r2, r1
    1dae:	601a      	str	r2, [r3, #0]
    1db0:	4a03      	ldr	r2, [pc, #12]	; (1dc0 <adc_dma_wait+0x30>)
    1db2:	23f4      	movs	r3, #244	; 0xf4
    1db4:	005b      	lsls	r3, r3, #1
    1db6:	4904      	ldr	r1, [pc, #16]	; (1dc8 <adc_dma_wait+0x38>)
    1db8:	50d1      	str	r1, [r2, r3]
    1dba:	46c0      	nop			; (mov r8, r8)
    1dbc:	46bd      	mov	sp, r7
    1dbe:	bd80      	pop	{r7, pc}
    1dc0:	20100000 	.word	0x20100000
    1dc4:	40088000 	.word	0x40088000
    1dc8:	ae000031 	.word	0xae000031

00001dcc <adc_dma_check>:
    1dcc:	b580      	push	{r7, lr}
    1dce:	af00      	add	r7, sp, #0
    1dd0:	4a0b      	ldr	r2, [pc, #44]	; (1e00 <adc_dma_check+0x34>)
    1dd2:	23f4      	movs	r3, #244	; 0xf4
    1dd4:	005b      	lsls	r3, r3, #1
    1dd6:	58d3      	ldr	r3, [r2, r3]
    1dd8:	2207      	movs	r2, #7
    1dda:	4013      	ands	r3, r2
    1ddc:	d001      	beq.n	1de2 <adc_dma_check+0x16>
    1dde:	2300      	movs	r3, #0
    1de0:	e00b      	b.n	1dfa <adc_dma_check+0x2e>
    1de2:	4b08      	ldr	r3, [pc, #32]	; (1e04 <adc_dma_check+0x38>)
    1de4:	4a07      	ldr	r2, [pc, #28]	; (1e04 <adc_dma_check+0x38>)
    1de6:	6812      	ldr	r2, [r2, #0]
    1de8:	2108      	movs	r1, #8
    1dea:	438a      	bics	r2, r1
    1dec:	601a      	str	r2, [r3, #0]
    1dee:	4a04      	ldr	r2, [pc, #16]	; (1e00 <adc_dma_check+0x34>)
    1df0:	23f4      	movs	r3, #244	; 0xf4
    1df2:	005b      	lsls	r3, r3, #1
    1df4:	4904      	ldr	r1, [pc, #16]	; (1e08 <adc_dma_check+0x3c>)
    1df6:	50d1      	str	r1, [r2, r3]
    1df8:	2301      	movs	r3, #1
    1dfa:	0018      	movs	r0, r3
    1dfc:	46bd      	mov	sp, r7
    1dfe:	bd80      	pop	{r7, pc}
    1e00:	20100000 	.word	0x20100000
    1e04:	40088000 	.word	0x40088000
    1e08:	ae000031 	.word	0xae000031

00001e0c <__aeabi_uidiv>:
    1e0c:	2200      	movs	r2, #0
    1e0e:	0843      	lsrs	r3, r0, #1
    1e10:	428b      	cmp	r3, r1
    1e12:	d374      	bcc.n	1efe <__aeabi_uidiv+0xf2>
    1e14:	0903      	lsrs	r3, r0, #4
    1e16:	428b      	cmp	r3, r1
    1e18:	d35f      	bcc.n	1eda <__aeabi_uidiv+0xce>
    1e1a:	0a03      	lsrs	r3, r0, #8
    1e1c:	428b      	cmp	r3, r1
    1e1e:	d344      	bcc.n	1eaa <__aeabi_uidiv+0x9e>
    1e20:	0b03      	lsrs	r3, r0, #12
    1e22:	428b      	cmp	r3, r1
    1e24:	d328      	bcc.n	1e78 <__aeabi_uidiv+0x6c>
    1e26:	0c03      	lsrs	r3, r0, #16
    1e28:	428b      	cmp	r3, r1
    1e2a:	d30d      	bcc.n	1e48 <__aeabi_uidiv+0x3c>
    1e2c:	22ff      	movs	r2, #255	; 0xff
    1e2e:	0209      	lsls	r1, r1, #8
    1e30:	ba12      	rev	r2, r2
    1e32:	0c03      	lsrs	r3, r0, #16
    1e34:	428b      	cmp	r3, r1
    1e36:	d302      	bcc.n	1e3e <__aeabi_uidiv+0x32>
    1e38:	1212      	asrs	r2, r2, #8
    1e3a:	0209      	lsls	r1, r1, #8
    1e3c:	d065      	beq.n	1f0a <__aeabi_uidiv+0xfe>
    1e3e:	0b03      	lsrs	r3, r0, #12
    1e40:	428b      	cmp	r3, r1
    1e42:	d319      	bcc.n	1e78 <__aeabi_uidiv+0x6c>
    1e44:	e000      	b.n	1e48 <__aeabi_uidiv+0x3c>
    1e46:	0a09      	lsrs	r1, r1, #8
    1e48:	0bc3      	lsrs	r3, r0, #15
    1e4a:	428b      	cmp	r3, r1
    1e4c:	d301      	bcc.n	1e52 <__aeabi_uidiv+0x46>
    1e4e:	03cb      	lsls	r3, r1, #15
    1e50:	1ac0      	subs	r0, r0, r3
    1e52:	4152      	adcs	r2, r2
    1e54:	0b83      	lsrs	r3, r0, #14
    1e56:	428b      	cmp	r3, r1
    1e58:	d301      	bcc.n	1e5e <__aeabi_uidiv+0x52>
    1e5a:	038b      	lsls	r3, r1, #14
    1e5c:	1ac0      	subs	r0, r0, r3
    1e5e:	4152      	adcs	r2, r2
    1e60:	0b43      	lsrs	r3, r0, #13
    1e62:	428b      	cmp	r3, r1
    1e64:	d301      	bcc.n	1e6a <__aeabi_uidiv+0x5e>
    1e66:	034b      	lsls	r3, r1, #13
    1e68:	1ac0      	subs	r0, r0, r3
    1e6a:	4152      	adcs	r2, r2
    1e6c:	0b03      	lsrs	r3, r0, #12
    1e6e:	428b      	cmp	r3, r1
    1e70:	d301      	bcc.n	1e76 <__aeabi_uidiv+0x6a>
    1e72:	030b      	lsls	r3, r1, #12
    1e74:	1ac0      	subs	r0, r0, r3
    1e76:	4152      	adcs	r2, r2
    1e78:	0ac3      	lsrs	r3, r0, #11
    1e7a:	428b      	cmp	r3, r1
    1e7c:	d301      	bcc.n	1e82 <__aeabi_uidiv+0x76>
    1e7e:	02cb      	lsls	r3, r1, #11
    1e80:	1ac0      	subs	r0, r0, r3
    1e82:	4152      	adcs	r2, r2
    1e84:	0a83      	lsrs	r3, r0, #10
    1e86:	428b      	cmp	r3, r1
    1e88:	d301      	bcc.n	1e8e <__aeabi_uidiv+0x82>
    1e8a:	028b      	lsls	r3, r1, #10
    1e8c:	1ac0      	subs	r0, r0, r3
    1e8e:	4152      	adcs	r2, r2
    1e90:	0a43      	lsrs	r3, r0, #9
    1e92:	428b      	cmp	r3, r1
    1e94:	d301      	bcc.n	1e9a <__aeabi_uidiv+0x8e>
    1e96:	024b      	lsls	r3, r1, #9
    1e98:	1ac0      	subs	r0, r0, r3
    1e9a:	4152      	adcs	r2, r2
    1e9c:	0a03      	lsrs	r3, r0, #8
    1e9e:	428b      	cmp	r3, r1
    1ea0:	d301      	bcc.n	1ea6 <__aeabi_uidiv+0x9a>
    1ea2:	020b      	lsls	r3, r1, #8
    1ea4:	1ac0      	subs	r0, r0, r3
    1ea6:	4152      	adcs	r2, r2
    1ea8:	d2cd      	bcs.n	1e46 <__aeabi_uidiv+0x3a>
    1eaa:	09c3      	lsrs	r3, r0, #7
    1eac:	428b      	cmp	r3, r1
    1eae:	d301      	bcc.n	1eb4 <__aeabi_uidiv+0xa8>
    1eb0:	01cb      	lsls	r3, r1, #7
    1eb2:	1ac0      	subs	r0, r0, r3
    1eb4:	4152      	adcs	r2, r2
    1eb6:	0983      	lsrs	r3, r0, #6
    1eb8:	428b      	cmp	r3, r1
    1eba:	d301      	bcc.n	1ec0 <__aeabi_uidiv+0xb4>
    1ebc:	018b      	lsls	r3, r1, #6
    1ebe:	1ac0      	subs	r0, r0, r3
    1ec0:	4152      	adcs	r2, r2
    1ec2:	0943      	lsrs	r3, r0, #5
    1ec4:	428b      	cmp	r3, r1
    1ec6:	d301      	bcc.n	1ecc <__aeabi_uidiv+0xc0>
    1ec8:	014b      	lsls	r3, r1, #5
    1eca:	1ac0      	subs	r0, r0, r3
    1ecc:	4152      	adcs	r2, r2
    1ece:	0903      	lsrs	r3, r0, #4
    1ed0:	428b      	cmp	r3, r1
    1ed2:	d301      	bcc.n	1ed8 <__aeabi_uidiv+0xcc>
    1ed4:	010b      	lsls	r3, r1, #4
    1ed6:	1ac0      	subs	r0, r0, r3
    1ed8:	4152      	adcs	r2, r2
    1eda:	08c3      	lsrs	r3, r0, #3
    1edc:	428b      	cmp	r3, r1
    1ede:	d301      	bcc.n	1ee4 <__aeabi_uidiv+0xd8>
    1ee0:	00cb      	lsls	r3, r1, #3
    1ee2:	1ac0      	subs	r0, r0, r3
    1ee4:	4152      	adcs	r2, r2
    1ee6:	0883      	lsrs	r3, r0, #2
    1ee8:	428b      	cmp	r3, r1
    1eea:	d301      	bcc.n	1ef0 <__aeabi_uidiv+0xe4>
    1eec:	008b      	lsls	r3, r1, #2
    1eee:	1ac0      	subs	r0, r0, r3
    1ef0:	4152      	adcs	r2, r2
    1ef2:	0843      	lsrs	r3, r0, #1
    1ef4:	428b      	cmp	r3, r1
    1ef6:	d301      	bcc.n	1efc <__aeabi_uidiv+0xf0>
    1ef8:	004b      	lsls	r3, r1, #1
    1efa:	1ac0      	subs	r0, r0, r3
    1efc:	4152      	adcs	r2, r2
    1efe:	1a41      	subs	r1, r0, r1
    1f00:	d200      	bcs.n	1f04 <__aeabi_uidiv+0xf8>
    1f02:	4601      	mov	r1, r0
    1f04:	4152      	adcs	r2, r2
    1f06:	4610      	mov	r0, r2
    1f08:	4770      	bx	lr
    1f0a:	e7ff      	b.n	1f0c <__aeabi_uidiv+0x100>
    1f0c:	b501      	push	{r0, lr}
    1f0e:	2000      	movs	r0, #0
    1f10:	f000 f806 	bl	1f20 <__aeabi_idiv0>
    1f14:	bd02      	pop	{r1, pc}
    1f16:	46c0      	nop			; (mov r8, r8)

00001f18 <__aeabi_uidivmod>:
    1f18:	2900      	cmp	r1, #0
    1f1a:	d0f7      	beq.n	1f0c <__aeabi_uidiv+0x100>
    1f1c:	e776      	b.n	1e0c <__aeabi_uidiv>
    1f1e:	4770      	bx	lr

00001f20 <__aeabi_idiv0>:
    1f20:	4770      	bx	lr
    1f22:	46c0      	nop			; (mov r8, r8)

00001f24 <maske>:
    1f24:	0001 0040 0010 0004 1000 0400 0100 4000     ..@............@
    1f34:	0002 0008 0200 0080 0020 8000 2000 0800     ........ .... ..

00001f44 <maskf>:
    1f44:	0004 0001 0010 0040 0002 0008 0020 0000     ......@..... ...

00001f54 <maska>:
    1f54:	0080 0200 0100 0400 0008 0800 6568 6c6c     ............hell
    1f64:	206f 6f77 6c72 0d64 000a 0000 15c6 0000     o world.........
    1f74:	15b4 0000 15d2 0000 15de 0000 15de 0000     ................
    1f84:	15de 0000 15de 0000 15de 0000 15de 0000     ................
    1f94:	15de 0000 15de 0000 15de 0000 15de 0000     ................
    1fa4:	15cc 0000 15de 0000 15de 0000 15de 0000     ................
    1fb4:	1558 0000 15de 0000 15d2 0000 15de 0000     X...............
    1fc4:	15de 0000 15d8 0000 3025 6c38 2058 0000     ........%08lX ..
    1fd4:	2520 3230 0058 0000 2520 3430 0058 0000      %02X... %04X...
    1fe4:	2520 3830 584c 0000                          %08LX..
