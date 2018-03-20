
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 49 0f 00 00 a9 0f 00 00 a9 0f 00 00     ... I...........
	...
      2c:	a9 0f 00 00 00 00 00 00 00 00 00 00 a9 0f 00 00     ................
      3c:	d5 0b 00 00 a9 0f 00 00 19 0c 00 00 a9 0f 00 00     ................
      4c:	a9 0f 00 00 a9 0f 00 00 a9 0f 00 00 fd 11 00 00     ................
      5c:	a9 0f 00 00 a9 0f 00 00 a9 0f 00 00 a9 0f 00 00     ................
      6c:	a9 0f 00 00 a9 0f 00 00 ed 0b 00 00 a9 0f 00 00     ................
      7c:	a9 0f 00 00 a9 0f 00 00 a9 0f 00 00 a9 0f 00 00     ................
      8c:	a9 0f 00 00 a9 0f 00 00 a9 0f 00 00 a9 0f 00 00     ................
      9c:	a9 0f 00 00 a9 0f 00 00 00 00 00 00 00 00 00 00     ................
      ac:	a9 0f 00 00 a9 0f 00 00 a9 0f 00 00 a9 0f 00 00     ................
      bc:	a9 0f 00 00                                         ....

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
     270:	f001 fd3e 	bl	1cf0 <adc_dma_check>
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
     296:	f001 fcf9 	bl	1c8c <adc_dma_start>
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
     35c:	200000fc 	.word	0x200000fc
     360:	20100200 	.word	0x20100200
     364:	2000011c 	.word	0x2000011c
     368:	2000011e 	.word	0x2000011e
     36c:	20000120 	.word	0x20000120
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
     474:	f001 fc3c 	bl	1cf0 <adc_dma_check>
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
     49a:	f001 fbf7 	bl	1c8c <adc_dma_start>
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
     560:	20000124 	.word	0x20000124
     564:	20100200 	.word	0x20100200
     568:	20000144 	.word	0x20000144
     56c:	20000146 	.word	0x20000146
     570:	20000148 	.word	0x20000148
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

00000624 <main>:
     624:	b590      	push	{r4, r7, lr}
     626:	b0a7      	sub	sp, #156	; 0x9c
     628:	af00      	add	r7, sp, #0
     62a:	2380      	movs	r3, #128	; 0x80
     62c:	18fb      	adds	r3, r7, r3
     62e:	4a29      	ldr	r2, [pc, #164]	; (6d4 <main+0xb0>)
     630:	ca13      	ldmia	r2!, {r0, r1, r4}
     632:	c313      	stmia	r3!, {r0, r1, r4}
     634:	8812      	ldrh	r2, [r2, #0]
     636:	801a      	strh	r2, [r3, #0]
     638:	f000 fab6 	bl	ba8 <SystemInit>
     63c:	4b26      	ldr	r3, [pc, #152]	; (6d8 <main+0xb4>)
     63e:	2200      	movs	r2, #0
     640:	601a      	str	r2, [r3, #0]
     642:	2300      	movs	r3, #0
     644:	2294      	movs	r2, #148	; 0x94
     646:	18ba      	adds	r2, r7, r2
     648:	6013      	str	r3, [r2, #0]
     64a:	4b24      	ldr	r3, [pc, #144]	; (6dc <main+0xb8>)
     64c:	2200      	movs	r2, #0
     64e:	601a      	str	r2, [r3, #0]
     650:	4b23      	ldr	r3, [pc, #140]	; (6e0 <main+0xbc>)
     652:	4a24      	ldr	r2, [pc, #144]	; (6e4 <main+0xc0>)
     654:	601a      	str	r2, [r3, #0]
     656:	4b22      	ldr	r3, [pc, #136]	; (6e0 <main+0xbc>)
     658:	4a23      	ldr	r2, [pc, #140]	; (6e8 <main+0xc4>)
     65a:	605a      	str	r2, [r3, #4]
     65c:	4b23      	ldr	r3, [pc, #140]	; (6ec <main+0xc8>)
     65e:	2200      	movs	r2, #0
     660:	601a      	str	r2, [r3, #0]
     662:	4b23      	ldr	r3, [pc, #140]	; (6f0 <main+0xcc>)
     664:	681b      	ldr	r3, [r3, #0]
     666:	2b00      	cmp	r3, #0
     668:	d02d      	beq.n	6c6 <main+0xa2>
     66a:	4b22      	ldr	r3, [pc, #136]	; (6f4 <main+0xd0>)
     66c:	881b      	ldrh	r3, [r3, #0]
     66e:	2220      	movs	r2, #32
     670:	4013      	ands	r3, r2
     672:	b29b      	uxth	r3, r3
     674:	2b00      	cmp	r3, #0
     676:	d01f      	beq.n	6b8 <main+0x94>
     678:	4b1e      	ldr	r3, [pc, #120]	; (6f4 <main+0xd0>)
     67a:	2202      	movs	r2, #2
     67c:	5e9b      	ldrsh	r3, [r3, r2]
     67e:	2b00      	cmp	r3, #0
     680:	da06      	bge.n	690 <main+0x6c>
     682:	4b1c      	ldr	r3, [pc, #112]	; (6f4 <main+0xd0>)
     684:	2202      	movs	r2, #2
     686:	5e9b      	ldrsh	r3, [r3, r2]
     688:	4a1b      	ldr	r2, [pc, #108]	; (6f8 <main+0xd4>)
     68a:	4694      	mov	ip, r2
     68c:	4463      	add	r3, ip
     68e:	e002      	b.n	696 <main+0x72>
     690:	4b18      	ldr	r3, [pc, #96]	; (6f4 <main+0xd0>)
     692:	2202      	movs	r2, #2
     694:	5e9b      	ldrsh	r3, [r3, r2]
     696:	2290      	movs	r2, #144	; 0x90
     698:	18ba      	adds	r2, r7, r2
     69a:	6013      	str	r3, [r2, #0]
     69c:	4b17      	ldr	r3, [pc, #92]	; (6fc <main+0xd8>)
     69e:	2290      	movs	r2, #144	; 0x90
     6a0:	18ba      	adds	r2, r7, r2
     6a2:	6812      	ldr	r2, [r2, #0]
     6a4:	2180      	movs	r1, #128	; 0x80
     6a6:	0109      	lsls	r1, r1, #4
     6a8:	468c      	mov	ip, r1
     6aa:	4462      	add	r2, ip
     6ac:	605a      	str	r2, [r3, #4]
     6ae:	4b11      	ldr	r3, [pc, #68]	; (6f4 <main+0xd0>)
     6b0:	0018      	movs	r0, r3
     6b2:	f7ff ff61 	bl	578 <send_command>
     6b6:	e003      	b.n	6c0 <main+0x9c>
     6b8:	4b10      	ldr	r3, [pc, #64]	; (6fc <main+0xd8>)
     6ba:	2280      	movs	r2, #128	; 0x80
     6bc:	0112      	lsls	r2, r2, #4
     6be:	605a      	str	r2, [r3, #4]
     6c0:	4b0b      	ldr	r3, [pc, #44]	; (6f0 <main+0xcc>)
     6c2:	2200      	movs	r2, #0
     6c4:	601a      	str	r2, [r3, #0]
     6c6:	4b0e      	ldr	r3, [pc, #56]	; (700 <main+0xdc>)
     6c8:	681b      	ldr	r3, [r3, #0]
     6ca:	0018      	movs	r0, r3
     6cc:	f7ff fe54 	bl	378 <update_telemetry>
     6d0:	e7c7      	b.n	662 <main+0x3e>
     6d2:	46c0      	nop			; (mov r8, r8)
     6d4:	00001e48 	.word	0x00001e48
     6d8:	200000e8 	.word	0x200000e8
     6dc:	200000ec 	.word	0x200000ec
     6e0:	200000d0 	.word	0x200000d0
     6e4:	20000044 	.word	0x20000044
     6e8:	20000084 	.word	0x20000084
     6ec:	200000d8 	.word	0x200000d8
     6f0:	200000f4 	.word	0x200000f4
     6f4:	200000c4 	.word	0x200000c4
     6f8:	ffff0000 	.word	0xffff0000
     6fc:	40090000 	.word	0x40090000
     700:	200000f0 	.word	0x200000f0

00000704 <PortConfig>:
     704:	b580      	push	{r7, lr}
     706:	af00      	add	r7, sp, #0
     708:	4b63      	ldr	r3, [pc, #396]	; (898 <PortConfig+0x194>)
     70a:	4a63      	ldr	r2, [pc, #396]	; (898 <PortConfig+0x194>)
     70c:	69d2      	ldr	r2, [r2, #28]
     70e:	2180      	movs	r1, #128	; 0x80
     710:	0449      	lsls	r1, r1, #17
     712:	430a      	orrs	r2, r1
     714:	61da      	str	r2, [r3, #28]
     716:	4b61      	ldr	r3, [pc, #388]	; (89c <PortConfig+0x198>)
     718:	4a60      	ldr	r2, [pc, #384]	; (89c <PortConfig+0x198>)
     71a:	68d2      	ldr	r2, [r2, #12]
     71c:	4960      	ldr	r1, [pc, #384]	; (8a0 <PortConfig+0x19c>)
     71e:	400a      	ands	r2, r1
     720:	60da      	str	r2, [r3, #12]
     722:	4b5d      	ldr	r3, [pc, #372]	; (898 <PortConfig+0x194>)
     724:	4a5c      	ldr	r2, [pc, #368]	; (898 <PortConfig+0x194>)
     726:	69d2      	ldr	r2, [r2, #28]
     728:	2180      	movs	r1, #128	; 0x80
     72a:	0409      	lsls	r1, r1, #16
     72c:	430a      	orrs	r2, r1
     72e:	61da      	str	r2, [r3, #28]
     730:	4b59      	ldr	r3, [pc, #356]	; (898 <PortConfig+0x194>)
     732:	4a59      	ldr	r2, [pc, #356]	; (898 <PortConfig+0x194>)
     734:	69d2      	ldr	r2, [r2, #28]
     736:	2180      	movs	r1, #128	; 0x80
     738:	0449      	lsls	r1, r1, #17
     73a:	430a      	orrs	r2, r1
     73c:	61da      	str	r2, [r3, #28]
     73e:	4b59      	ldr	r3, [pc, #356]	; (8a4 <PortConfig+0x1a0>)
     740:	4a58      	ldr	r2, [pc, #352]	; (8a4 <PortConfig+0x1a0>)
     742:	6892      	ldr	r2, [r2, #8]
     744:	0192      	lsls	r2, r2, #6
     746:	0992      	lsrs	r2, r2, #6
     748:	609a      	str	r2, [r3, #8]
     74a:	4b56      	ldr	r3, [pc, #344]	; (8a4 <PortConfig+0x1a0>)
     74c:	4a55      	ldr	r2, [pc, #340]	; (8a4 <PortConfig+0x1a0>)
     74e:	6892      	ldr	r2, [r2, #8]
     750:	21a8      	movs	r1, #168	; 0xa8
     752:	05c9      	lsls	r1, r1, #23
     754:	430a      	orrs	r2, r1
     756:	609a      	str	r2, [r3, #8]
     758:	4b52      	ldr	r3, [pc, #328]	; (8a4 <PortConfig+0x1a0>)
     75a:	4a52      	ldr	r2, [pc, #328]	; (8a4 <PortConfig+0x1a0>)
     75c:	68d2      	ldr	r2, [r2, #12]
     75e:	21e0      	movs	r1, #224	; 0xe0
     760:	0209      	lsls	r1, r1, #8
     762:	430a      	orrs	r2, r1
     764:	60da      	str	r2, [r3, #12]
     766:	4b4f      	ldr	r3, [pc, #316]	; (8a4 <PortConfig+0x1a0>)
     768:	4a4e      	ldr	r2, [pc, #312]	; (8a4 <PortConfig+0x1a0>)
     76a:	6992      	ldr	r2, [r2, #24]
     76c:	21fc      	movs	r1, #252	; 0xfc
     76e:	0609      	lsls	r1, r1, #24
     770:	430a      	orrs	r2, r1
     772:	619a      	str	r2, [r3, #24]
     774:	4b49      	ldr	r3, [pc, #292]	; (89c <PortConfig+0x198>)
     776:	4a49      	ldr	r2, [pc, #292]	; (89c <PortConfig+0x198>)
     778:	6892      	ldr	r2, [r2, #8]
     77a:	0b92      	lsrs	r2, r2, #14
     77c:	0392      	lsls	r2, r2, #14
     77e:	609a      	str	r2, [r3, #8]
     780:	4b46      	ldr	r3, [pc, #280]	; (89c <PortConfig+0x198>)
     782:	4a46      	ldr	r2, [pc, #280]	; (89c <PortConfig+0x198>)
     784:	6892      	ldr	r2, [r2, #8]
     786:	4948      	ldr	r1, [pc, #288]	; (8a8 <PortConfig+0x1a4>)
     788:	430a      	orrs	r2, r1
     78a:	609a      	str	r2, [r3, #8]
     78c:	4b43      	ldr	r3, [pc, #268]	; (89c <PortConfig+0x198>)
     78e:	4a43      	ldr	r2, [pc, #268]	; (89c <PortConfig+0x198>)
     790:	68d2      	ldr	r2, [r2, #12]
     792:	217f      	movs	r1, #127	; 0x7f
     794:	430a      	orrs	r2, r1
     796:	60da      	str	r2, [r3, #12]
     798:	4b40      	ldr	r3, [pc, #256]	; (89c <PortConfig+0x198>)
     79a:	4a40      	ldr	r2, [pc, #256]	; (89c <PortConfig+0x198>)
     79c:	6992      	ldr	r2, [r2, #24]
     79e:	4943      	ldr	r1, [pc, #268]	; (8ac <PortConfig+0x1a8>)
     7a0:	430a      	orrs	r2, r1
     7a2:	619a      	str	r2, [r3, #24]
     7a4:	4b3c      	ldr	r3, [pc, #240]	; (898 <PortConfig+0x194>)
     7a6:	4a3c      	ldr	r2, [pc, #240]	; (898 <PortConfig+0x194>)
     7a8:	69d2      	ldr	r2, [r2, #28]
     7aa:	2180      	movs	r1, #128	; 0x80
     7ac:	0489      	lsls	r1, r1, #18
     7ae:	430a      	orrs	r2, r1
     7b0:	61da      	str	r2, [r3, #28]
     7b2:	4b3f      	ldr	r3, [pc, #252]	; (8b0 <PortConfig+0x1ac>)
     7b4:	4a3e      	ldr	r2, [pc, #248]	; (8b0 <PortConfig+0x1ac>)
     7b6:	68d2      	ldr	r2, [r2, #12]
     7b8:	2102      	movs	r1, #2
     7ba:	438a      	bics	r2, r1
     7bc:	60da      	str	r2, [r3, #12]
     7be:	4b3c      	ldr	r3, [pc, #240]	; (8b0 <PortConfig+0x1ac>)
     7c0:	4a3b      	ldr	r2, [pc, #236]	; (8b0 <PortConfig+0x1ac>)
     7c2:	68d2      	ldr	r2, [r2, #12]
     7c4:	2108      	movs	r1, #8
     7c6:	430a      	orrs	r2, r1
     7c8:	60da      	str	r2, [r3, #12]
     7ca:	4b39      	ldr	r3, [pc, #228]	; (8b0 <PortConfig+0x1ac>)
     7cc:	4a38      	ldr	r2, [pc, #224]	; (8b0 <PortConfig+0x1ac>)
     7ce:	6892      	ldr	r2, [r2, #8]
     7d0:	21c0      	movs	r1, #192	; 0xc0
     7d2:	438a      	bics	r2, r1
     7d4:	609a      	str	r2, [r3, #8]
     7d6:	4b36      	ldr	r3, [pc, #216]	; (8b0 <PortConfig+0x1ac>)
     7d8:	4a35      	ldr	r2, [pc, #212]	; (8b0 <PortConfig+0x1ac>)
     7da:	6892      	ldr	r2, [r2, #8]
     7dc:	2140      	movs	r1, #64	; 0x40
     7de:	430a      	orrs	r2, r1
     7e0:	609a      	str	r2, [r3, #8]
     7e2:	4b33      	ldr	r3, [pc, #204]	; (8b0 <PortConfig+0x1ac>)
     7e4:	4a32      	ldr	r2, [pc, #200]	; (8b0 <PortConfig+0x1ac>)
     7e6:	6992      	ldr	r2, [r2, #24]
     7e8:	21c0      	movs	r1, #192	; 0xc0
     7ea:	430a      	orrs	r2, r1
     7ec:	619a      	str	r2, [r3, #24]
     7ee:	4b30      	ldr	r3, [pc, #192]	; (8b0 <PortConfig+0x1ac>)
     7f0:	4a2f      	ldr	r2, [pc, #188]	; (8b0 <PortConfig+0x1ac>)
     7f2:	6852      	ldr	r2, [r2, #4]
     7f4:	2108      	movs	r1, #8
     7f6:	430a      	orrs	r2, r1
     7f8:	605a      	str	r2, [r3, #4]
     7fa:	4b2d      	ldr	r3, [pc, #180]	; (8b0 <PortConfig+0x1ac>)
     7fc:	4a2c      	ldr	r2, [pc, #176]	; (8b0 <PortConfig+0x1ac>)
     7fe:	68d2      	ldr	r2, [r2, #12]
     800:	2101      	movs	r1, #1
     802:	430a      	orrs	r2, r1
     804:	60da      	str	r2, [r3, #12]
     806:	4b2a      	ldr	r3, [pc, #168]	; (8b0 <PortConfig+0x1ac>)
     808:	4a29      	ldr	r2, [pc, #164]	; (8b0 <PortConfig+0x1ac>)
     80a:	6892      	ldr	r2, [r2, #8]
     80c:	2103      	movs	r1, #3
     80e:	438a      	bics	r2, r1
     810:	609a      	str	r2, [r3, #8]
     812:	4b27      	ldr	r3, [pc, #156]	; (8b0 <PortConfig+0x1ac>)
     814:	4a26      	ldr	r2, [pc, #152]	; (8b0 <PortConfig+0x1ac>)
     816:	6992      	ldr	r2, [r2, #24]
     818:	2103      	movs	r1, #3
     81a:	430a      	orrs	r2, r1
     81c:	619a      	str	r2, [r3, #24]
     81e:	4b24      	ldr	r3, [pc, #144]	; (8b0 <PortConfig+0x1ac>)
     820:	4a23      	ldr	r2, [pc, #140]	; (8b0 <PortConfig+0x1ac>)
     822:	6852      	ldr	r2, [r2, #4]
     824:	2101      	movs	r1, #1
     826:	430a      	orrs	r2, r1
     828:	605a      	str	r2, [r3, #4]
     82a:	4b21      	ldr	r3, [pc, #132]	; (8b0 <PortConfig+0x1ac>)
     82c:	4a20      	ldr	r2, [pc, #128]	; (8b0 <PortConfig+0x1ac>)
     82e:	6812      	ldr	r2, [r2, #0]
     830:	2101      	movs	r1, #1
     832:	430a      	orrs	r2, r1
     834:	601a      	str	r2, [r3, #0]
     836:	4b18      	ldr	r3, [pc, #96]	; (898 <PortConfig+0x194>)
     838:	4a17      	ldr	r2, [pc, #92]	; (898 <PortConfig+0x194>)
     83a:	69d2      	ldr	r2, [r2, #28]
     83c:	2180      	movs	r1, #128	; 0x80
     83e:	0409      	lsls	r1, r1, #16
     840:	430a      	orrs	r2, r1
     842:	61da      	str	r2, [r3, #28]
     844:	4b17      	ldr	r3, [pc, #92]	; (8a4 <PortConfig+0x1a0>)
     846:	4a17      	ldr	r2, [pc, #92]	; (8a4 <PortConfig+0x1a0>)
     848:	6892      	ldr	r2, [r2, #8]
     84a:	491a      	ldr	r1, [pc, #104]	; (8b4 <PortConfig+0x1b0>)
     84c:	400a      	ands	r2, r1
     84e:	609a      	str	r2, [r3, #8]
     850:	4b14      	ldr	r3, [pc, #80]	; (8a4 <PortConfig+0x1a0>)
     852:	4a14      	ldr	r2, [pc, #80]	; (8a4 <PortConfig+0x1a0>)
     854:	6892      	ldr	r2, [r2, #8]
     856:	21a0      	movs	r1, #160	; 0xa0
     858:	0049      	lsls	r1, r1, #1
     85a:	430a      	orrs	r2, r1
     85c:	609a      	str	r2, [r3, #8]
     85e:	4b11      	ldr	r3, [pc, #68]	; (8a4 <PortConfig+0x1a0>)
     860:	4a10      	ldr	r2, [pc, #64]	; (8a4 <PortConfig+0x1a0>)
     862:	68d2      	ldr	r2, [r2, #12]
     864:	2118      	movs	r1, #24
     866:	430a      	orrs	r2, r1
     868:	60da      	str	r2, [r3, #12]
     86a:	4b0e      	ldr	r3, [pc, #56]	; (8a4 <PortConfig+0x1a0>)
     86c:	4a0d      	ldr	r2, [pc, #52]	; (8a4 <PortConfig+0x1a0>)
     86e:	6992      	ldr	r2, [r2, #24]
     870:	21f0      	movs	r1, #240	; 0xf0
     872:	0089      	lsls	r1, r1, #2
     874:	430a      	orrs	r2, r1
     876:	619a      	str	r2, [r3, #24]
     878:	4b0a      	ldr	r3, [pc, #40]	; (8a4 <PortConfig+0x1a0>)
     87a:	4a0a      	ldr	r2, [pc, #40]	; (8a4 <PortConfig+0x1a0>)
     87c:	6812      	ldr	r2, [r2, #0]
     87e:	2118      	movs	r1, #24
     880:	438a      	bics	r2, r1
     882:	601a      	str	r2, [r3, #0]
     884:	4b07      	ldr	r3, [pc, #28]	; (8a4 <PortConfig+0x1a0>)
     886:	4a07      	ldr	r2, [pc, #28]	; (8a4 <PortConfig+0x1a0>)
     888:	6912      	ldr	r2, [r2, #16]
     88a:	2180      	movs	r1, #128	; 0x80
     88c:	0349      	lsls	r1, r1, #13
     88e:	430a      	orrs	r2, r1
     890:	611a      	str	r2, [r3, #16]
     892:	46c0      	nop			; (mov r8, r8)
     894:	46bd      	mov	sp, r7
     896:	bd80      	pop	{r7, pc}
     898:	40020000 	.word	0x40020000
     89c:	400c0000 	.word	0x400c0000
     8a0:	ffffc7ff 	.word	0xffffc7ff
     8a4:	400b8000 	.word	0x400b8000
     8a8:	00001555 	.word	0x00001555
     8ac:	00003fff 	.word	0x00003fff
     8b0:	400c8000 	.word	0x400c8000
     8b4:	fffffc3f 	.word	0xfffffc3f

000008b8 <dac_init>:
     8b8:	b580      	push	{r7, lr}
     8ba:	af00      	add	r7, sp, #0
     8bc:	4b07      	ldr	r3, [pc, #28]	; (8dc <dac_init+0x24>)
     8be:	4a07      	ldr	r2, [pc, #28]	; (8dc <dac_init+0x24>)
     8c0:	69d2      	ldr	r2, [r2, #28]
     8c2:	2180      	movs	r1, #128	; 0x80
     8c4:	02c9      	lsls	r1, r1, #11
     8c6:	430a      	orrs	r2, r1
     8c8:	61da      	str	r2, [r3, #28]
     8ca:	4b05      	ldr	r3, [pc, #20]	; (8e0 <dac_init+0x28>)
     8cc:	4a04      	ldr	r2, [pc, #16]	; (8e0 <dac_init+0x28>)
     8ce:	6812      	ldr	r2, [r2, #0]
     8d0:	2104      	movs	r1, #4
     8d2:	430a      	orrs	r2, r1
     8d4:	601a      	str	r2, [r3, #0]
     8d6:	46c0      	nop			; (mov r8, r8)
     8d8:	46bd      	mov	sp, r7
     8da:	bd80      	pop	{r7, pc}
     8dc:	40020000 	.word	0x40020000
     8e0:	40090000 	.word	0x40090000

000008e4 <ClkConfig>:
     8e4:	b580      	push	{r7, lr}
     8e6:	af00      	add	r7, sp, #0
     8e8:	4b18      	ldr	r3, [pc, #96]	; (94c <ClkConfig+0x68>)
     8ea:	4a18      	ldr	r2, [pc, #96]	; (94c <ClkConfig+0x68>)
     8ec:	6892      	ldr	r2, [r2, #8]
     8ee:	2101      	movs	r1, #1
     8f0:	430a      	orrs	r2, r1
     8f2:	609a      	str	r2, [r3, #8]
     8f4:	46c0      	nop			; (mov r8, r8)
     8f6:	4b15      	ldr	r3, [pc, #84]	; (94c <ClkConfig+0x68>)
     8f8:	681b      	ldr	r3, [r3, #0]
     8fa:	2204      	movs	r2, #4
     8fc:	4013      	ands	r3, r2
     8fe:	d0fa      	beq.n	8f6 <ClkConfig+0x12>
     900:	4b12      	ldr	r3, [pc, #72]	; (94c <ClkConfig+0x68>)
     902:	4a12      	ldr	r2, [pc, #72]	; (94c <ClkConfig+0x68>)
     904:	68d2      	ldr	r2, [r2, #12]
     906:	2102      	movs	r1, #2
     908:	430a      	orrs	r2, r1
     90a:	60da      	str	r2, [r3, #12]
     90c:	4b0f      	ldr	r3, [pc, #60]	; (94c <ClkConfig+0x68>)
     90e:	4a10      	ldr	r2, [pc, #64]	; (950 <ClkConfig+0x6c>)
     910:	605a      	str	r2, [r3, #4]
     912:	46c0      	nop			; (mov r8, r8)
     914:	4b0d      	ldr	r3, [pc, #52]	; (94c <ClkConfig+0x68>)
     916:	681b      	ldr	r3, [r3, #0]
     918:	2202      	movs	r2, #2
     91a:	4013      	ands	r3, r2
     91c:	d0fa      	beq.n	914 <ClkConfig+0x30>
     91e:	4b0d      	ldr	r3, [pc, #52]	; (954 <ClkConfig+0x70>)
     920:	4a0c      	ldr	r2, [pc, #48]	; (954 <ClkConfig+0x70>)
     922:	6812      	ldr	r2, [r2, #0]
     924:	2120      	movs	r1, #32
     926:	430a      	orrs	r2, r1
     928:	601a      	str	r2, [r3, #0]
     92a:	4b08      	ldr	r3, [pc, #32]	; (94c <ClkConfig+0x68>)
     92c:	4a07      	ldr	r2, [pc, #28]	; (94c <ClkConfig+0x68>)
     92e:	68d2      	ldr	r2, [r2, #12]
     930:	2180      	movs	r1, #128	; 0x80
     932:	0049      	lsls	r1, r1, #1
     934:	430a      	orrs	r2, r1
     936:	60da      	str	r2, [r3, #12]
     938:	4b04      	ldr	r3, [pc, #16]	; (94c <ClkConfig+0x68>)
     93a:	4a04      	ldr	r2, [pc, #16]	; (94c <ClkConfig+0x68>)
     93c:	68d2      	ldr	r2, [r2, #12]
     93e:	2104      	movs	r1, #4
     940:	430a      	orrs	r2, r1
     942:	60da      	str	r2, [r3, #12]
     944:	46c0      	nop			; (mov r8, r8)
     946:	46bd      	mov	sp, r7
     948:	bd80      	pop	{r7, pc}
     94a:	46c0      	nop			; (mov r8, r8)
     94c:	40020000 	.word	0x40020000
     950:	00000b04 	.word	0x00000b04
     954:	40018000 	.word	0x40018000

00000958 <TimerConfig>:
     958:	b580      	push	{r7, lr}
     95a:	af00      	add	r7, sp, #0
     95c:	4b5d      	ldr	r3, [pc, #372]	; (ad4 <TimerConfig+0x17c>)
     95e:	4a5d      	ldr	r2, [pc, #372]	; (ad4 <TimerConfig+0x17c>)
     960:	69d2      	ldr	r2, [r2, #28]
     962:	2180      	movs	r1, #128	; 0x80
     964:	01c9      	lsls	r1, r1, #7
     966:	430a      	orrs	r2, r1
     968:	61da      	str	r2, [r3, #28]
     96a:	4b5a      	ldr	r3, [pc, #360]	; (ad4 <TimerConfig+0x17c>)
     96c:	4a59      	ldr	r2, [pc, #356]	; (ad4 <TimerConfig+0x17c>)
     96e:	6a52      	ldr	r2, [r2, #36]	; 0x24
     970:	2180      	movs	r1, #128	; 0x80
     972:	0449      	lsls	r1, r1, #17
     974:	430a      	orrs	r2, r1
     976:	625a      	str	r2, [r3, #36]	; 0x24
     978:	4b56      	ldr	r3, [pc, #344]	; (ad4 <TimerConfig+0x17c>)
     97a:	4a56      	ldr	r2, [pc, #344]	; (ad4 <TimerConfig+0x17c>)
     97c:	6a52      	ldr	r2, [r2, #36]	; 0x24
     97e:	21ff      	movs	r1, #255	; 0xff
     980:	438a      	bics	r2, r1
     982:	625a      	str	r2, [r3, #36]	; 0x24
     984:	4b54      	ldr	r3, [pc, #336]	; (ad8 <TimerConfig+0x180>)
     986:	2200      	movs	r2, #0
     988:	601a      	str	r2, [r3, #0]
     98a:	4b53      	ldr	r3, [pc, #332]	; (ad8 <TimerConfig+0x180>)
     98c:	225f      	movs	r2, #95	; 0x5f
     98e:	605a      	str	r2, [r3, #4]
     990:	4b51      	ldr	r3, [pc, #324]	; (ad8 <TimerConfig+0x180>)
     992:	4a52      	ldr	r2, [pc, #328]	; (adc <TimerConfig+0x184>)
     994:	609a      	str	r2, [r3, #8]
     996:	4b50      	ldr	r3, [pc, #320]	; (ad8 <TimerConfig+0x180>)
     998:	22c8      	movs	r2, #200	; 0xc8
     99a:	0052      	lsls	r2, r2, #1
     99c:	611a      	str	r2, [r3, #16]
     99e:	4b4e      	ldr	r3, [pc, #312]	; (ad8 <TimerConfig+0x180>)
     9a0:	22af      	movs	r2, #175	; 0xaf
     9a2:	0092      	lsls	r2, r2, #2
     9a4:	615a      	str	r2, [r3, #20]
     9a6:	4b4c      	ldr	r3, [pc, #304]	; (ad8 <TimerConfig+0x180>)
     9a8:	4a4d      	ldr	r2, [pc, #308]	; (ae0 <TimerConfig+0x188>)
     9aa:	619a      	str	r2, [r3, #24]
     9ac:	4b4a      	ldr	r3, [pc, #296]	; (ad8 <TimerConfig+0x180>)
     9ae:	4a4a      	ldr	r2, [pc, #296]	; (ad8 <TimerConfig+0x180>)
     9b0:	6a12      	ldr	r2, [r2, #32]
     9b2:	494c      	ldr	r1, [pc, #304]	; (ae4 <TimerConfig+0x18c>)
     9b4:	400a      	ands	r2, r1
     9b6:	621a      	str	r2, [r3, #32]
     9b8:	4b47      	ldr	r3, [pc, #284]	; (ad8 <TimerConfig+0x180>)
     9ba:	4a47      	ldr	r2, [pc, #284]	; (ad8 <TimerConfig+0x180>)
     9bc:	6a12      	ldr	r2, [r2, #32]
     9be:	21e0      	movs	r1, #224	; 0xe0
     9c0:	0109      	lsls	r1, r1, #4
     9c2:	430a      	orrs	r2, r1
     9c4:	621a      	str	r2, [r3, #32]
     9c6:	4b44      	ldr	r3, [pc, #272]	; (ad8 <TimerConfig+0x180>)
     9c8:	4a43      	ldr	r2, [pc, #268]	; (ad8 <TimerConfig+0x180>)
     9ca:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9cc:	210f      	movs	r1, #15
     9ce:	438a      	bics	r2, r1
     9d0:	631a      	str	r2, [r3, #48]	; 0x30
     9d2:	4b41      	ldr	r3, [pc, #260]	; (ad8 <TimerConfig+0x180>)
     9d4:	4a40      	ldr	r2, [pc, #256]	; (ad8 <TimerConfig+0x180>)
     9d6:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9d8:	210c      	movs	r1, #12
     9da:	430a      	orrs	r2, r1
     9dc:	631a      	str	r2, [r3, #48]	; 0x30
     9de:	4b3e      	ldr	r3, [pc, #248]	; (ad8 <TimerConfig+0x180>)
     9e0:	4a3d      	ldr	r2, [pc, #244]	; (ad8 <TimerConfig+0x180>)
     9e2:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9e4:	2101      	movs	r1, #1
     9e6:	430a      	orrs	r2, r1
     9e8:	631a      	str	r2, [r3, #48]	; 0x30
     9ea:	4b3b      	ldr	r3, [pc, #236]	; (ad8 <TimerConfig+0x180>)
     9ec:	4a3a      	ldr	r2, [pc, #232]	; (ad8 <TimerConfig+0x180>)
     9ee:	6a52      	ldr	r2, [r2, #36]	; 0x24
     9f0:	493c      	ldr	r1, [pc, #240]	; (ae4 <TimerConfig+0x18c>)
     9f2:	400a      	ands	r2, r1
     9f4:	625a      	str	r2, [r3, #36]	; 0x24
     9f6:	4b38      	ldr	r3, [pc, #224]	; (ad8 <TimerConfig+0x180>)
     9f8:	4a37      	ldr	r2, [pc, #220]	; (ad8 <TimerConfig+0x180>)
     9fa:	6a52      	ldr	r2, [r2, #36]	; 0x24
     9fc:	21e0      	movs	r1, #224	; 0xe0
     9fe:	0109      	lsls	r1, r1, #4
     a00:	430a      	orrs	r2, r1
     a02:	625a      	str	r2, [r3, #36]	; 0x24
     a04:	4b34      	ldr	r3, [pc, #208]	; (ad8 <TimerConfig+0x180>)
     a06:	4a34      	ldr	r2, [pc, #208]	; (ad8 <TimerConfig+0x180>)
     a08:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a0a:	210f      	movs	r1, #15
     a0c:	438a      	bics	r2, r1
     a0e:	635a      	str	r2, [r3, #52]	; 0x34
     a10:	4b31      	ldr	r3, [pc, #196]	; (ad8 <TimerConfig+0x180>)
     a12:	4a31      	ldr	r2, [pc, #196]	; (ad8 <TimerConfig+0x180>)
     a14:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a16:	210c      	movs	r1, #12
     a18:	430a      	orrs	r2, r1
     a1a:	635a      	str	r2, [r3, #52]	; 0x34
     a1c:	4b2e      	ldr	r3, [pc, #184]	; (ad8 <TimerConfig+0x180>)
     a1e:	4a2e      	ldr	r2, [pc, #184]	; (ad8 <TimerConfig+0x180>)
     a20:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a22:	2101      	movs	r1, #1
     a24:	430a      	orrs	r2, r1
     a26:	635a      	str	r2, [r3, #52]	; 0x34
     a28:	4b2b      	ldr	r3, [pc, #172]	; (ad8 <TimerConfig+0x180>)
     a2a:	4a2b      	ldr	r2, [pc, #172]	; (ad8 <TimerConfig+0x180>)
     a2c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a2e:	492d      	ldr	r1, [pc, #180]	; (ae4 <TimerConfig+0x18c>)
     a30:	400a      	ands	r2, r1
     a32:	629a      	str	r2, [r3, #40]	; 0x28
     a34:	4b28      	ldr	r3, [pc, #160]	; (ad8 <TimerConfig+0x180>)
     a36:	4a28      	ldr	r2, [pc, #160]	; (ad8 <TimerConfig+0x180>)
     a38:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a3a:	21e0      	movs	r1, #224	; 0xe0
     a3c:	0109      	lsls	r1, r1, #4
     a3e:	430a      	orrs	r2, r1
     a40:	629a      	str	r2, [r3, #40]	; 0x28
     a42:	4b25      	ldr	r3, [pc, #148]	; (ad8 <TimerConfig+0x180>)
     a44:	4a24      	ldr	r2, [pc, #144]	; (ad8 <TimerConfig+0x180>)
     a46:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a48:	210f      	movs	r1, #15
     a4a:	438a      	bics	r2, r1
     a4c:	639a      	str	r2, [r3, #56]	; 0x38
     a4e:	4b22      	ldr	r3, [pc, #136]	; (ad8 <TimerConfig+0x180>)
     a50:	4a21      	ldr	r2, [pc, #132]	; (ad8 <TimerConfig+0x180>)
     a52:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a54:	210c      	movs	r1, #12
     a56:	430a      	orrs	r2, r1
     a58:	639a      	str	r2, [r3, #56]	; 0x38
     a5a:	4b1f      	ldr	r3, [pc, #124]	; (ad8 <TimerConfig+0x180>)
     a5c:	4a1e      	ldr	r2, [pc, #120]	; (ad8 <TimerConfig+0x180>)
     a5e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a60:	2101      	movs	r1, #1
     a62:	430a      	orrs	r2, r1
     a64:	639a      	str	r2, [r3, #56]	; 0x38
     a66:	4b1c      	ldr	r3, [pc, #112]	; (ad8 <TimerConfig+0x180>)
     a68:	4a1b      	ldr	r2, [pc, #108]	; (ad8 <TimerConfig+0x180>)
     a6a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     a6c:	21e0      	movs	r1, #224	; 0xe0
     a6e:	0109      	lsls	r1, r1, #4
     a70:	430a      	orrs	r2, r1
     a72:	659a      	str	r2, [r3, #88]	; 0x58
     a74:	4b18      	ldr	r3, [pc, #96]	; (ad8 <TimerConfig+0x180>)
     a76:	2201      	movs	r2, #1
     a78:	60da      	str	r2, [r3, #12]
     a7a:	4b16      	ldr	r3, [pc, #88]	; (ad4 <TimerConfig+0x17c>)
     a7c:	4a15      	ldr	r2, [pc, #84]	; (ad4 <TimerConfig+0x17c>)
     a7e:	69d2      	ldr	r2, [r2, #28]
     a80:	2180      	movs	r1, #128	; 0x80
     a82:	0309      	lsls	r1, r1, #12
     a84:	430a      	orrs	r2, r1
     a86:	61da      	str	r2, [r3, #28]
     a88:	4b12      	ldr	r3, [pc, #72]	; (ad4 <TimerConfig+0x17c>)
     a8a:	4a12      	ldr	r2, [pc, #72]	; (ad4 <TimerConfig+0x17c>)
     a8c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a8e:	2180      	movs	r1, #128	; 0x80
     a90:	04c9      	lsls	r1, r1, #19
     a92:	430a      	orrs	r2, r1
     a94:	629a      	str	r2, [r3, #40]	; 0x28
     a96:	4b0f      	ldr	r3, [pc, #60]	; (ad4 <TimerConfig+0x17c>)
     a98:	4a0e      	ldr	r2, [pc, #56]	; (ad4 <TimerConfig+0x17c>)
     a9a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a9c:	4912      	ldr	r1, [pc, #72]	; (ae8 <TimerConfig+0x190>)
     a9e:	400a      	ands	r2, r1
     aa0:	629a      	str	r2, [r3, #40]	; 0x28
     aa2:	4b12      	ldr	r3, [pc, #72]	; (aec <TimerConfig+0x194>)
     aa4:	2200      	movs	r2, #0
     aa6:	601a      	str	r2, [r3, #0]
     aa8:	4b10      	ldr	r3, [pc, #64]	; (aec <TimerConfig+0x194>)
     aaa:	225f      	movs	r2, #95	; 0x5f
     aac:	605a      	str	r2, [r3, #4]
     aae:	4b0f      	ldr	r3, [pc, #60]	; (aec <TimerConfig+0x194>)
     ab0:	4a0a      	ldr	r2, [pc, #40]	; (adc <TimerConfig+0x184>)
     ab2:	609a      	str	r2, [r3, #8]
     ab4:	4b0d      	ldr	r3, [pc, #52]	; (aec <TimerConfig+0x194>)
     ab6:	4a0d      	ldr	r2, [pc, #52]	; (aec <TimerConfig+0x194>)
     ab8:	6d92      	ldr	r2, [r2, #88]	; 0x58
     aba:	2102      	movs	r1, #2
     abc:	430a      	orrs	r2, r1
     abe:	659a      	str	r2, [r3, #88]	; 0x58
     ac0:	4b0a      	ldr	r3, [pc, #40]	; (aec <TimerConfig+0x194>)
     ac2:	2201      	movs	r2, #1
     ac4:	60da      	str	r2, [r3, #12]
     ac6:	200d      	movs	r0, #13
     ac8:	f7ff fafa 	bl	c0 <NVIC_EnableIRQ>
     acc:	46c0      	nop			; (mov r8, r8)
     ace:	46bd      	mov	sp, r7
     ad0:	bd80      	pop	{r7, pc}
     ad2:	46c0      	nop			; (mov r8, r8)
     ad4:	40020000 	.word	0x40020000
     ad8:	40070000 	.word	0x40070000
     adc:	000003e7 	.word	0x000003e7
     ae0:	000003de 	.word	0x000003de
     ae4:	fffff1ff 	.word	0xfffff1ff
     ae8:	ff00ffff 	.word	0xff00ffff
     aec:	40098000 	.word	0x40098000

00000af0 <mil_std_1533_init_rt>:
     af0:	b580      	push	{r7, lr}
     af2:	b082      	sub	sp, #8
     af4:	af00      	add	r7, sp, #0
     af6:	4b26      	ldr	r3, [pc, #152]	; (b90 <mil_std_1533_init_rt+0xa0>)
     af8:	603b      	str	r3, [r7, #0]
     afa:	4b26      	ldr	r3, [pc, #152]	; (b94 <mil_std_1533_init_rt+0xa4>)
     afc:	4a25      	ldr	r2, [pc, #148]	; (b94 <mil_std_1533_init_rt+0xa4>)
     afe:	69d2      	ldr	r2, [r2, #28]
     b00:	2180      	movs	r1, #128	; 0x80
     b02:	0089      	lsls	r1, r1, #2
     b04:	430a      	orrs	r2, r1
     b06:	61da      	str	r2, [r3, #28]
     b08:	4b22      	ldr	r3, [pc, #136]	; (b94 <mil_std_1533_init_rt+0xa4>)
     b0a:	4a22      	ldr	r2, [pc, #136]	; (b94 <mil_std_1533_init_rt+0xa4>)
     b0c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b0e:	4922      	ldr	r1, [pc, #136]	; (b98 <mil_std_1533_init_rt+0xa8>)
     b10:	430a      	orrs	r2, r1
     b12:	635a      	str	r2, [r3, #52]	; 0x34
     b14:	4a21      	ldr	r2, [pc, #132]	; (b9c <mil_std_1533_init_rt+0xac>)
     b16:	2380      	movs	r3, #128	; 0x80
     b18:	015b      	lsls	r3, r3, #5
     b1a:	2101      	movs	r1, #1
     b1c:	50d1      	str	r1, [r2, r3]
     b1e:	4a1f      	ldr	r2, [pc, #124]	; (b9c <mil_std_1533_init_rt+0xac>)
     b20:	2380      	movs	r3, #128	; 0x80
     b22:	015b      	lsls	r3, r3, #5
     b24:	491e      	ldr	r1, [pc, #120]	; (ba0 <mil_std_1533_init_rt+0xb0>)
     b26:	50d1      	str	r1, [r2, r3]
     b28:	491c      	ldr	r1, [pc, #112]	; (b9c <mil_std_1533_init_rt+0xac>)
     b2a:	4a1c      	ldr	r2, [pc, #112]	; (b9c <mil_std_1533_init_rt+0xac>)
     b2c:	2381      	movs	r3, #129	; 0x81
     b2e:	015b      	lsls	r3, r3, #5
     b30:	58d3      	ldr	r3, [r2, r3]
     b32:	2208      	movs	r2, #8
     b34:	431a      	orrs	r2, r3
     b36:	2381      	movs	r3, #129	; 0x81
     b38:	015b      	lsls	r3, r3, #5
     b3a:	50ca      	str	r2, [r1, r3]
     b3c:	4917      	ldr	r1, [pc, #92]	; (b9c <mil_std_1533_init_rt+0xac>)
     b3e:	4a17      	ldr	r2, [pc, #92]	; (b9c <mil_std_1533_init_rt+0xac>)
     b40:	2381      	movs	r3, #129	; 0x81
     b42:	015b      	lsls	r3, r3, #5
     b44:	58d3      	ldr	r3, [r2, r3]
     b46:	2206      	movs	r2, #6
     b48:	431a      	orrs	r2, r3
     b4a:	2381      	movs	r3, #129	; 0x81
     b4c:	015b      	lsls	r3, r3, #5
     b4e:	50ca      	str	r2, [r1, r3]
     b50:	2001      	movs	r0, #1
     b52:	f7ff fab5 	bl	c0 <NVIC_EnableIRQ>
     b56:	4911      	ldr	r1, [pc, #68]	; (b9c <mil_std_1533_init_rt+0xac>)
     b58:	4a12      	ldr	r2, [pc, #72]	; (ba4 <mil_std_1533_init_rt+0xb4>)
     b5a:	2380      	movs	r3, #128	; 0x80
     b5c:	01db      	lsls	r3, r3, #7
     b5e:	508b      	str	r3, [r1, r2]
     b60:	2300      	movs	r3, #0
     b62:	607b      	str	r3, [r7, #4]
     b64:	e00d      	b.n	b82 <mil_std_1533_init_rt+0x92>
     b66:	683b      	ldr	r3, [r7, #0]
     b68:	1d1a      	adds	r2, r3, #4
     b6a:	603a      	str	r2, [r7, #0]
     b6c:	687a      	ldr	r2, [r7, #4]
     b6e:	b292      	uxth	r2, r2
     b70:	210f      	movs	r1, #15
     b72:	400a      	ands	r2, r1
     b74:	b292      	uxth	r2, r2
     b76:	3230      	adds	r2, #48	; 0x30
     b78:	b292      	uxth	r2, r2
     b7a:	601a      	str	r2, [r3, #0]
     b7c:	687b      	ldr	r3, [r7, #4]
     b7e:	3301      	adds	r3, #1
     b80:	607b      	str	r3, [r7, #4]
     b82:	687b      	ldr	r3, [r7, #4]
     b84:	2b1f      	cmp	r3, #31
     b86:	ddee      	ble.n	b66 <mil_std_1533_init_rt+0x76>
     b88:	46c0      	nop			; (mov r8, r8)
     b8a:	46bd      	mov	sp, r7
     b8c:	b002      	add	sp, #8
     b8e:	bd80      	pop	{r7, pc}
     b90:	40048080 	.word	0x40048080
     b94:	40020000 	.word	0x40020000
     b98:	02000100 	.word	0x02000100
     b9c:	40048000 	.word	0x40048000
     ba0:	00018238 	.word	0x00018238
     ba4:	00001018 	.word	0x00001018

00000ba8 <SystemInit>:
     ba8:	b580      	push	{r7, lr}
     baa:	af00      	add	r7, sp, #0
     bac:	f7ff fe9a 	bl	8e4 <ClkConfig>
     bb0:	f7ff fda8 	bl	704 <PortConfig>
     bb4:	f7ff fed0 	bl	958 <TimerConfig>
     bb8:	f000 fa32 	bl	1020 <uart_init>
     bbc:	f7ff ff98 	bl	af0 <mil_std_1533_init_rt>
     bc0:	f7ff fe7a 	bl	8b8 <dac_init>
     bc4:	f001 f822 	bl	1c0c <adc_dma_init>
     bc8:	f001 f860 	bl	1c8c <adc_dma_start>
     bcc:	46c0      	nop			; (mov r8, r8)
     bce:	46bd      	mov	sp, r7
     bd0:	bd80      	pop	{r7, pc}
     bd2:	46c0      	nop			; (mov r8, r8)

00000bd4 <SysTick_Handler>:
     bd4:	b580      	push	{r7, lr}
     bd6:	af00      	add	r7, sp, #0
     bd8:	4b03      	ldr	r3, [pc, #12]	; (be8 <SysTick_Handler+0x14>)
     bda:	681b      	ldr	r3, [r3, #0]
     bdc:	1c5a      	adds	r2, r3, #1
     bde:	4b02      	ldr	r3, [pc, #8]	; (be8 <SysTick_Handler+0x14>)
     be0:	601a      	str	r2, [r3, #0]
     be2:	46c0      	nop			; (mov r8, r8)
     be4:	46bd      	mov	sp, r7
     be6:	bd80      	pop	{r7, pc}
     be8:	200000f0 	.word	0x200000f0

00000bec <TIMER4_Handler>:
     bec:	b580      	push	{r7, lr}
     bee:	af00      	add	r7, sp, #0
     bf0:	4b06      	ldr	r3, [pc, #24]	; (c0c <TIMER4_Handler+0x20>)
     bf2:	2200      	movs	r2, #0
     bf4:	655a      	str	r2, [r3, #84]	; 0x54
     bf6:	4b06      	ldr	r3, [pc, #24]	; (c10 <TIMER4_Handler+0x24>)
     bf8:	681b      	ldr	r3, [r3, #0]
     bfa:	1c5a      	adds	r2, r3, #1
     bfc:	4b04      	ldr	r3, [pc, #16]	; (c10 <TIMER4_Handler+0x24>)
     bfe:	601a      	str	r2, [r3, #0]
     c00:	4b04      	ldr	r3, [pc, #16]	; (c14 <TIMER4_Handler+0x28>)
     c02:	2201      	movs	r2, #1
     c04:	601a      	str	r2, [r3, #0]
     c06:	46c0      	nop			; (mov r8, r8)
     c08:	46bd      	mov	sp, r7
     c0a:	bd80      	pop	{r7, pc}
     c0c:	40098000 	.word	0x40098000
     c10:	200000f0 	.word	0x200000f0
     c14:	200000f8 	.word	0x200000f8

00000c18 <MIL_STD_1553B1_Handler>:
     c18:	b590      	push	{r4, r7, lr}
     c1a:	b087      	sub	sp, #28
     c1c:	af00      	add	r7, sp, #0
     c1e:	4bbe      	ldr	r3, [pc, #760]	; (f18 <MIL_STD_1553B1_Handler+0x300>)
     c20:	613b      	str	r3, [r7, #16]
     c22:	4abe      	ldr	r2, [pc, #760]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     c24:	4bbe      	ldr	r3, [pc, #760]	; (f20 <MIL_STD_1553B1_Handler+0x308>)
     c26:	58d3      	ldr	r3, [r2, r3]
     c28:	2202      	movs	r2, #2
     c2a:	4013      	ands	r3, r2
     c2c:	d100      	bne.n	c30 <MIL_STD_1553B1_Handler+0x18>
     c2e:	e10f      	b.n	e50 <MIL_STD_1553B1_Handler+0x238>
     c30:	4aba      	ldr	r2, [pc, #744]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     c32:	4bbc      	ldr	r3, [pc, #752]	; (f24 <MIL_STD_1553B1_Handler+0x30c>)
     c34:	58d3      	ldr	r3, [r2, r3]
     c36:	4abc      	ldr	r2, [pc, #752]	; (f28 <MIL_STD_1553B1_Handler+0x310>)
     c38:	4293      	cmp	r3, r2
     c3a:	d000      	beq.n	c3e <MIL_STD_1553B1_Handler+0x26>
     c3c:	e108      	b.n	e50 <MIL_STD_1553B1_Handler+0x238>
     c3e:	4bbb      	ldr	r3, [pc, #748]	; (f2c <MIL_STD_1553B1_Handler+0x314>)
     c40:	681b      	ldr	r3, [r3, #0]
     c42:	2201      	movs	r2, #1
     c44:	4053      	eors	r3, r2
     c46:	009a      	lsls	r2, r3, #2
     c48:	4bb9      	ldr	r3, [pc, #740]	; (f30 <MIL_STD_1553B1_Handler+0x318>)
     c4a:	18d3      	adds	r3, r2, r3
     c4c:	681b      	ldr	r3, [r3, #0]
     c4e:	60fb      	str	r3, [r7, #12]
     c50:	693b      	ldr	r3, [r7, #16]
     c52:	1d1a      	adds	r2, r3, #4
     c54:	613a      	str	r2, [r7, #16]
     c56:	68fa      	ldr	r2, [r7, #12]
     c58:	1c91      	adds	r1, r2, #2
     c5a:	60f9      	str	r1, [r7, #12]
     c5c:	8812      	ldrh	r2, [r2, #0]
     c5e:	601a      	str	r2, [r3, #0]
     c60:	693b      	ldr	r3, [r7, #16]
     c62:	1d1a      	adds	r2, r3, #4
     c64:	613a      	str	r2, [r7, #16]
     c66:	68fa      	ldr	r2, [r7, #12]
     c68:	1c91      	adds	r1, r2, #2
     c6a:	60f9      	str	r1, [r7, #12]
     c6c:	8812      	ldrh	r2, [r2, #0]
     c6e:	601a      	str	r2, [r3, #0]
     c70:	693b      	ldr	r3, [r7, #16]
     c72:	1d1a      	adds	r2, r3, #4
     c74:	613a      	str	r2, [r7, #16]
     c76:	68fa      	ldr	r2, [r7, #12]
     c78:	1c91      	adds	r1, r2, #2
     c7a:	60f9      	str	r1, [r7, #12]
     c7c:	8812      	ldrh	r2, [r2, #0]
     c7e:	601a      	str	r2, [r3, #0]
     c80:	693b      	ldr	r3, [r7, #16]
     c82:	1d1a      	adds	r2, r3, #4
     c84:	613a      	str	r2, [r7, #16]
     c86:	68fa      	ldr	r2, [r7, #12]
     c88:	1c91      	adds	r1, r2, #2
     c8a:	60f9      	str	r1, [r7, #12]
     c8c:	8812      	ldrh	r2, [r2, #0]
     c8e:	601a      	str	r2, [r3, #0]
     c90:	693b      	ldr	r3, [r7, #16]
     c92:	1d1a      	adds	r2, r3, #4
     c94:	613a      	str	r2, [r7, #16]
     c96:	68fa      	ldr	r2, [r7, #12]
     c98:	1c91      	adds	r1, r2, #2
     c9a:	60f9      	str	r1, [r7, #12]
     c9c:	8812      	ldrh	r2, [r2, #0]
     c9e:	601a      	str	r2, [r3, #0]
     ca0:	693b      	ldr	r3, [r7, #16]
     ca2:	1d1a      	adds	r2, r3, #4
     ca4:	613a      	str	r2, [r7, #16]
     ca6:	68fa      	ldr	r2, [r7, #12]
     ca8:	1c91      	adds	r1, r2, #2
     caa:	60f9      	str	r1, [r7, #12]
     cac:	8812      	ldrh	r2, [r2, #0]
     cae:	601a      	str	r2, [r3, #0]
     cb0:	693b      	ldr	r3, [r7, #16]
     cb2:	1d1a      	adds	r2, r3, #4
     cb4:	613a      	str	r2, [r7, #16]
     cb6:	68fa      	ldr	r2, [r7, #12]
     cb8:	1c91      	adds	r1, r2, #2
     cba:	60f9      	str	r1, [r7, #12]
     cbc:	8812      	ldrh	r2, [r2, #0]
     cbe:	601a      	str	r2, [r3, #0]
     cc0:	693b      	ldr	r3, [r7, #16]
     cc2:	1d1a      	adds	r2, r3, #4
     cc4:	613a      	str	r2, [r7, #16]
     cc6:	68fa      	ldr	r2, [r7, #12]
     cc8:	1c91      	adds	r1, r2, #2
     cca:	60f9      	str	r1, [r7, #12]
     ccc:	8812      	ldrh	r2, [r2, #0]
     cce:	601a      	str	r2, [r3, #0]
     cd0:	693b      	ldr	r3, [r7, #16]
     cd2:	1d1a      	adds	r2, r3, #4
     cd4:	613a      	str	r2, [r7, #16]
     cd6:	68fa      	ldr	r2, [r7, #12]
     cd8:	1c91      	adds	r1, r2, #2
     cda:	60f9      	str	r1, [r7, #12]
     cdc:	8812      	ldrh	r2, [r2, #0]
     cde:	601a      	str	r2, [r3, #0]
     ce0:	693b      	ldr	r3, [r7, #16]
     ce2:	1d1a      	adds	r2, r3, #4
     ce4:	613a      	str	r2, [r7, #16]
     ce6:	68fa      	ldr	r2, [r7, #12]
     ce8:	1c91      	adds	r1, r2, #2
     cea:	60f9      	str	r1, [r7, #12]
     cec:	8812      	ldrh	r2, [r2, #0]
     cee:	601a      	str	r2, [r3, #0]
     cf0:	693b      	ldr	r3, [r7, #16]
     cf2:	1d1a      	adds	r2, r3, #4
     cf4:	613a      	str	r2, [r7, #16]
     cf6:	68fa      	ldr	r2, [r7, #12]
     cf8:	1c91      	adds	r1, r2, #2
     cfa:	60f9      	str	r1, [r7, #12]
     cfc:	8812      	ldrh	r2, [r2, #0]
     cfe:	601a      	str	r2, [r3, #0]
     d00:	693b      	ldr	r3, [r7, #16]
     d02:	1d1a      	adds	r2, r3, #4
     d04:	613a      	str	r2, [r7, #16]
     d06:	68fa      	ldr	r2, [r7, #12]
     d08:	1c91      	adds	r1, r2, #2
     d0a:	60f9      	str	r1, [r7, #12]
     d0c:	8812      	ldrh	r2, [r2, #0]
     d0e:	601a      	str	r2, [r3, #0]
     d10:	693b      	ldr	r3, [r7, #16]
     d12:	1d1a      	adds	r2, r3, #4
     d14:	613a      	str	r2, [r7, #16]
     d16:	68fa      	ldr	r2, [r7, #12]
     d18:	1c91      	adds	r1, r2, #2
     d1a:	60f9      	str	r1, [r7, #12]
     d1c:	8812      	ldrh	r2, [r2, #0]
     d1e:	601a      	str	r2, [r3, #0]
     d20:	693b      	ldr	r3, [r7, #16]
     d22:	1d1a      	adds	r2, r3, #4
     d24:	613a      	str	r2, [r7, #16]
     d26:	68fa      	ldr	r2, [r7, #12]
     d28:	1c91      	adds	r1, r2, #2
     d2a:	60f9      	str	r1, [r7, #12]
     d2c:	8812      	ldrh	r2, [r2, #0]
     d2e:	601a      	str	r2, [r3, #0]
     d30:	693b      	ldr	r3, [r7, #16]
     d32:	1d1a      	adds	r2, r3, #4
     d34:	613a      	str	r2, [r7, #16]
     d36:	68fa      	ldr	r2, [r7, #12]
     d38:	1c91      	adds	r1, r2, #2
     d3a:	60f9      	str	r1, [r7, #12]
     d3c:	8812      	ldrh	r2, [r2, #0]
     d3e:	601a      	str	r2, [r3, #0]
     d40:	693b      	ldr	r3, [r7, #16]
     d42:	1d1a      	adds	r2, r3, #4
     d44:	613a      	str	r2, [r7, #16]
     d46:	68fa      	ldr	r2, [r7, #12]
     d48:	1c91      	adds	r1, r2, #2
     d4a:	60f9      	str	r1, [r7, #12]
     d4c:	8812      	ldrh	r2, [r2, #0]
     d4e:	601a      	str	r2, [r3, #0]
     d50:	693b      	ldr	r3, [r7, #16]
     d52:	1d1a      	adds	r2, r3, #4
     d54:	613a      	str	r2, [r7, #16]
     d56:	68fa      	ldr	r2, [r7, #12]
     d58:	1c91      	adds	r1, r2, #2
     d5a:	60f9      	str	r1, [r7, #12]
     d5c:	8812      	ldrh	r2, [r2, #0]
     d5e:	601a      	str	r2, [r3, #0]
     d60:	693b      	ldr	r3, [r7, #16]
     d62:	1d1a      	adds	r2, r3, #4
     d64:	613a      	str	r2, [r7, #16]
     d66:	68fa      	ldr	r2, [r7, #12]
     d68:	1c91      	adds	r1, r2, #2
     d6a:	60f9      	str	r1, [r7, #12]
     d6c:	8812      	ldrh	r2, [r2, #0]
     d6e:	601a      	str	r2, [r3, #0]
     d70:	693b      	ldr	r3, [r7, #16]
     d72:	1d1a      	adds	r2, r3, #4
     d74:	613a      	str	r2, [r7, #16]
     d76:	68fa      	ldr	r2, [r7, #12]
     d78:	1c91      	adds	r1, r2, #2
     d7a:	60f9      	str	r1, [r7, #12]
     d7c:	8812      	ldrh	r2, [r2, #0]
     d7e:	601a      	str	r2, [r3, #0]
     d80:	693b      	ldr	r3, [r7, #16]
     d82:	1d1a      	adds	r2, r3, #4
     d84:	613a      	str	r2, [r7, #16]
     d86:	68fa      	ldr	r2, [r7, #12]
     d88:	1c91      	adds	r1, r2, #2
     d8a:	60f9      	str	r1, [r7, #12]
     d8c:	8812      	ldrh	r2, [r2, #0]
     d8e:	601a      	str	r2, [r3, #0]
     d90:	693b      	ldr	r3, [r7, #16]
     d92:	1d1a      	adds	r2, r3, #4
     d94:	613a      	str	r2, [r7, #16]
     d96:	68fa      	ldr	r2, [r7, #12]
     d98:	1c91      	adds	r1, r2, #2
     d9a:	60f9      	str	r1, [r7, #12]
     d9c:	8812      	ldrh	r2, [r2, #0]
     d9e:	601a      	str	r2, [r3, #0]
     da0:	693b      	ldr	r3, [r7, #16]
     da2:	1d1a      	adds	r2, r3, #4
     da4:	613a      	str	r2, [r7, #16]
     da6:	68fa      	ldr	r2, [r7, #12]
     da8:	1c91      	adds	r1, r2, #2
     daa:	60f9      	str	r1, [r7, #12]
     dac:	8812      	ldrh	r2, [r2, #0]
     dae:	601a      	str	r2, [r3, #0]
     db0:	693b      	ldr	r3, [r7, #16]
     db2:	1d1a      	adds	r2, r3, #4
     db4:	613a      	str	r2, [r7, #16]
     db6:	68fa      	ldr	r2, [r7, #12]
     db8:	1c91      	adds	r1, r2, #2
     dba:	60f9      	str	r1, [r7, #12]
     dbc:	8812      	ldrh	r2, [r2, #0]
     dbe:	601a      	str	r2, [r3, #0]
     dc0:	693b      	ldr	r3, [r7, #16]
     dc2:	1d1a      	adds	r2, r3, #4
     dc4:	613a      	str	r2, [r7, #16]
     dc6:	68fa      	ldr	r2, [r7, #12]
     dc8:	1c91      	adds	r1, r2, #2
     dca:	60f9      	str	r1, [r7, #12]
     dcc:	8812      	ldrh	r2, [r2, #0]
     dce:	601a      	str	r2, [r3, #0]
     dd0:	693b      	ldr	r3, [r7, #16]
     dd2:	1d1a      	adds	r2, r3, #4
     dd4:	613a      	str	r2, [r7, #16]
     dd6:	68fa      	ldr	r2, [r7, #12]
     dd8:	1c91      	adds	r1, r2, #2
     dda:	60f9      	str	r1, [r7, #12]
     ddc:	8812      	ldrh	r2, [r2, #0]
     dde:	601a      	str	r2, [r3, #0]
     de0:	693b      	ldr	r3, [r7, #16]
     de2:	1d1a      	adds	r2, r3, #4
     de4:	613a      	str	r2, [r7, #16]
     de6:	68fa      	ldr	r2, [r7, #12]
     de8:	1c91      	adds	r1, r2, #2
     dea:	60f9      	str	r1, [r7, #12]
     dec:	8812      	ldrh	r2, [r2, #0]
     dee:	601a      	str	r2, [r3, #0]
     df0:	693b      	ldr	r3, [r7, #16]
     df2:	1d1a      	adds	r2, r3, #4
     df4:	613a      	str	r2, [r7, #16]
     df6:	68fa      	ldr	r2, [r7, #12]
     df8:	1c91      	adds	r1, r2, #2
     dfa:	60f9      	str	r1, [r7, #12]
     dfc:	8812      	ldrh	r2, [r2, #0]
     dfe:	601a      	str	r2, [r3, #0]
     e00:	693b      	ldr	r3, [r7, #16]
     e02:	1d1a      	adds	r2, r3, #4
     e04:	613a      	str	r2, [r7, #16]
     e06:	68fa      	ldr	r2, [r7, #12]
     e08:	1c91      	adds	r1, r2, #2
     e0a:	60f9      	str	r1, [r7, #12]
     e0c:	8812      	ldrh	r2, [r2, #0]
     e0e:	601a      	str	r2, [r3, #0]
     e10:	693b      	ldr	r3, [r7, #16]
     e12:	1d1a      	adds	r2, r3, #4
     e14:	613a      	str	r2, [r7, #16]
     e16:	68fa      	ldr	r2, [r7, #12]
     e18:	1c91      	adds	r1, r2, #2
     e1a:	60f9      	str	r1, [r7, #12]
     e1c:	8812      	ldrh	r2, [r2, #0]
     e1e:	601a      	str	r2, [r3, #0]
     e20:	693b      	ldr	r3, [r7, #16]
     e22:	1d1a      	adds	r2, r3, #4
     e24:	613a      	str	r2, [r7, #16]
     e26:	68fa      	ldr	r2, [r7, #12]
     e28:	1c91      	adds	r1, r2, #2
     e2a:	60f9      	str	r1, [r7, #12]
     e2c:	8812      	ldrh	r2, [r2, #0]
     e2e:	601a      	str	r2, [r3, #0]
     e30:	693b      	ldr	r3, [r7, #16]
     e32:	1d1a      	adds	r2, r3, #4
     e34:	613a      	str	r2, [r7, #16]
     e36:	68fa      	ldr	r2, [r7, #12]
     e38:	1c91      	adds	r1, r2, #2
     e3a:	60f9      	str	r1, [r7, #12]
     e3c:	8812      	ldrh	r2, [r2, #0]
     e3e:	601a      	str	r2, [r3, #0]
     e40:	693b      	ldr	r3, [r7, #16]
     e42:	1d1a      	adds	r2, r3, #4
     e44:	613a      	str	r2, [r7, #16]
     e46:	68fa      	ldr	r2, [r7, #12]
     e48:	1c91      	adds	r1, r2, #2
     e4a:	60f9      	str	r1, [r7, #12]
     e4c:	8812      	ldrh	r2, [r2, #0]
     e4e:	601a      	str	r2, [r3, #0]
     e50:	4a32      	ldr	r2, [pc, #200]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     e52:	4b33      	ldr	r3, [pc, #204]	; (f20 <MIL_STD_1553B1_Handler+0x308>)
     e54:	58d3      	ldr	r3, [r2, r3]
     e56:	2204      	movs	r2, #4
     e58:	4013      	ands	r3, r2
     e5a:	d056      	beq.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     e5c:	4b35      	ldr	r3, [pc, #212]	; (f34 <MIL_STD_1553B1_Handler+0x31c>)
     e5e:	681b      	ldr	r3, [r3, #0]
     e60:	1c5a      	adds	r2, r3, #1
     e62:	4b34      	ldr	r3, [pc, #208]	; (f34 <MIL_STD_1553B1_Handler+0x31c>)
     e64:	601a      	str	r2, [r3, #0]
     e66:	4a2d      	ldr	r2, [pc, #180]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     e68:	4b2e      	ldr	r3, [pc, #184]	; (f24 <MIL_STD_1553B1_Handler+0x30c>)
     e6a:	58d3      	ldr	r3, [r2, r3]
     e6c:	4a2e      	ldr	r2, [pc, #184]	; (f28 <MIL_STD_1553B1_Handler+0x310>)
     e6e:	4293      	cmp	r3, r2
     e70:	d04b      	beq.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     e72:	4a2a      	ldr	r2, [pc, #168]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     e74:	4b2b      	ldr	r3, [pc, #172]	; (f24 <MIL_STD_1553B1_Handler+0x30c>)
     e76:	58d3      	ldr	r3, [r2, r3]
     e78:	2b01      	cmp	r3, #1
     e7a:	d146      	bne.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     e7c:	4a27      	ldr	r2, [pc, #156]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     e7e:	4b2e      	ldr	r3, [pc, #184]	; (f38 <MIL_STD_1553B1_Handler+0x320>)
     e80:	58d3      	ldr	r3, [r2, r3]
     e82:	221f      	movs	r2, #31
     e84:	4013      	ands	r3, r2
     e86:	60bb      	str	r3, [r7, #8]
     e88:	1dbb      	adds	r3, r7, #6
     e8a:	2200      	movs	r2, #0
     e8c:	801a      	strh	r2, [r3, #0]
     e8e:	4b2b      	ldr	r3, [pc, #172]	; (f3c <MIL_STD_1553B1_Handler+0x324>)
     e90:	603b      	str	r3, [r7, #0]
     e92:	4b2b      	ldr	r3, [pc, #172]	; (f40 <MIL_STD_1553B1_Handler+0x328>)
     e94:	681b      	ldr	r3, [r3, #0]
     e96:	2b00      	cmp	r3, #0
     e98:	d137      	bne.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     e9a:	68bb      	ldr	r3, [r7, #8]
     e9c:	2b20      	cmp	r3, #32
     e9e:	d834      	bhi.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     ea0:	2300      	movs	r3, #0
     ea2:	617b      	str	r3, [r7, #20]
     ea4:	e00c      	b.n	ec0 <MIL_STD_1553B1_Handler+0x2a8>
     ea6:	697b      	ldr	r3, [r7, #20]
     ea8:	005b      	lsls	r3, r3, #1
     eaa:	683a      	ldr	r2, [r7, #0]
     eac:	18d2      	adds	r2, r2, r3
     eae:	693b      	ldr	r3, [r7, #16]
     eb0:	1d19      	adds	r1, r3, #4
     eb2:	6139      	str	r1, [r7, #16]
     eb4:	681b      	ldr	r3, [r3, #0]
     eb6:	b29b      	uxth	r3, r3
     eb8:	8013      	strh	r3, [r2, #0]
     eba:	697b      	ldr	r3, [r7, #20]
     ebc:	3301      	adds	r3, #1
     ebe:	617b      	str	r3, [r7, #20]
     ec0:	697a      	ldr	r2, [r7, #20]
     ec2:	68bb      	ldr	r3, [r7, #8]
     ec4:	429a      	cmp	r2, r3
     ec6:	d3ee      	bcc.n	ea6 <MIL_STD_1553B1_Handler+0x28e>
     ec8:	68bb      	ldr	r3, [r7, #8]
     eca:	1e5a      	subs	r2, r3, #1
     ecc:	1dbc      	adds	r4, r7, #6
     ece:	683b      	ldr	r3, [r7, #0]
     ed0:	0011      	movs	r1, r2
     ed2:	0018      	movs	r0, r3
     ed4:	f7ff f910 	bl	f8 <get_checksum>
     ed8:	0003      	movs	r3, r0
     eda:	8023      	strh	r3, [r4, #0]
     edc:	4b17      	ldr	r3, [pc, #92]	; (f3c <MIL_STD_1553B1_Handler+0x324>)
     ede:	891b      	ldrh	r3, [r3, #8]
     ee0:	1dba      	adds	r2, r7, #6
     ee2:	8812      	ldrh	r2, [r2, #0]
     ee4:	1ad3      	subs	r3, r2, r3
     ee6:	425a      	negs	r2, r3
     ee8:	4153      	adcs	r3, r2
     eea:	b2db      	uxtb	r3, r3
     eec:	001a      	movs	r2, r3
     eee:	4b14      	ldr	r3, [pc, #80]	; (f40 <MIL_STD_1553B1_Handler+0x328>)
     ef0:	601a      	str	r2, [r3, #0]
     ef2:	4b12      	ldr	r3, [pc, #72]	; (f3c <MIL_STD_1553B1_Handler+0x324>)
     ef4:	891b      	ldrh	r3, [r3, #8]
     ef6:	1dba      	adds	r2, r7, #6
     ef8:	8812      	ldrh	r2, [r2, #0]
     efa:	429a      	cmp	r2, r3
     efc:	d005      	beq.n	f0a <MIL_STD_1553B1_Handler+0x2f2>
     efe:	4b11      	ldr	r3, [pc, #68]	; (f44 <MIL_STD_1553B1_Handler+0x32c>)
     f00:	4a10      	ldr	r2, [pc, #64]	; (f44 <MIL_STD_1553B1_Handler+0x32c>)
     f02:	6812      	ldr	r2, [r2, #0]
     f04:	2101      	movs	r1, #1
     f06:	404a      	eors	r2, r1
     f08:	601a      	str	r2, [r3, #0]
     f0a:	4a04      	ldr	r2, [pc, #16]	; (f1c <MIL_STD_1553B1_Handler+0x304>)
     f0c:	4b04      	ldr	r3, [pc, #16]	; (f20 <MIL_STD_1553B1_Handler+0x308>)
     f0e:	58d3      	ldr	r3, [r2, r3]
     f10:	46c0      	nop			; (mov r8, r8)
     f12:	46bd      	mov	sp, r7
     f14:	b007      	add	sp, #28
     f16:	bd90      	pop	{r4, r7, pc}
     f18:	40048080 	.word	0x40048080
     f1c:	40048000 	.word	0x40048000
     f20:	00001004 	.word	0x00001004
     f24:	00001024 	.word	0x00001024
     f28:	00000402 	.word	0x00000402
     f2c:	200000d8 	.word	0x200000d8
     f30:	200000d0 	.word	0x200000d0
     f34:	200000e0 	.word	0x200000e0
     f38:	0000100c 	.word	0x0000100c
     f3c:	200000c4 	.word	0x200000c4
     f40:	200000f4 	.word	0x200000f4
     f44:	400c8000 	.word	0x400c8000

00000f48 <handler_reset>:
     f48:	b580      	push	{r7, lr}
     f4a:	b082      	sub	sp, #8
     f4c:	af00      	add	r7, sp, #0
     f4e:	4b11      	ldr	r3, [pc, #68]	; (f94 <handler_reset+0x4c>)
     f50:	607b      	str	r3, [r7, #4]
     f52:	4b11      	ldr	r3, [pc, #68]	; (f98 <handler_reset+0x50>)
     f54:	603b      	str	r3, [r7, #0]
     f56:	e007      	b.n	f68 <handler_reset+0x20>
     f58:	683b      	ldr	r3, [r7, #0]
     f5a:	1d1a      	adds	r2, r3, #4
     f5c:	603a      	str	r2, [r7, #0]
     f5e:	687a      	ldr	r2, [r7, #4]
     f60:	1d11      	adds	r1, r2, #4
     f62:	6079      	str	r1, [r7, #4]
     f64:	6812      	ldr	r2, [r2, #0]
     f66:	601a      	str	r2, [r3, #0]
     f68:	683a      	ldr	r2, [r7, #0]
     f6a:	4b0c      	ldr	r3, [pc, #48]	; (f9c <handler_reset+0x54>)
     f6c:	429a      	cmp	r2, r3
     f6e:	d3f3      	bcc.n	f58 <handler_reset+0x10>
     f70:	4b0b      	ldr	r3, [pc, #44]	; (fa0 <handler_reset+0x58>)
     f72:	603b      	str	r3, [r7, #0]
     f74:	e004      	b.n	f80 <handler_reset+0x38>
     f76:	683b      	ldr	r3, [r7, #0]
     f78:	1d1a      	adds	r2, r3, #4
     f7a:	603a      	str	r2, [r7, #0]
     f7c:	2200      	movs	r2, #0
     f7e:	601a      	str	r2, [r3, #0]
     f80:	683a      	ldr	r2, [r7, #0]
     f82:	4b08      	ldr	r3, [pc, #32]	; (fa4 <handler_reset+0x5c>)
     f84:	429a      	cmp	r2, r3
     f86:	d3f6      	bcc.n	f76 <handler_reset+0x2e>
     f88:	f7ff fb4c 	bl	624 <main>
     f8c:	46c0      	nop			; (mov r8, r8)
     f8e:	46bd      	mov	sp, r7
     f90:	b002      	add	sp, #8
     f92:	bd80      	pop	{r7, pc}
     f94:	00001ed4 	.word	0x00001ed4
     f98:	20000000 	.word	0x20000000
     f9c:	20000044 	.word	0x20000044
     fa0:	20000044 	.word	0x20000044
     fa4:	20000568 	.word	0x20000568

00000fa8 <default_handler>:
     fa8:	b580      	push	{r7, lr}
     faa:	af00      	add	r7, sp, #0
     fac:	e7fe      	b.n	fac <default_handler+0x4>
     fae:	46c0      	nop			; (mov r8, r8)

00000fb0 <NVIC_EnableIRQ>:
     fb0:	b580      	push	{r7, lr}
     fb2:	b082      	sub	sp, #8
     fb4:	af00      	add	r7, sp, #0
     fb6:	0002      	movs	r2, r0
     fb8:	1dfb      	adds	r3, r7, #7
     fba:	701a      	strb	r2, [r3, #0]
     fbc:	4909      	ldr	r1, [pc, #36]	; (fe4 <NVIC_EnableIRQ+0x34>)
     fbe:	1dfb      	adds	r3, r7, #7
     fc0:	781b      	ldrb	r3, [r3, #0]
     fc2:	b25b      	sxtb	r3, r3
     fc4:	095b      	lsrs	r3, r3, #5
     fc6:	1dfa      	adds	r2, r7, #7
     fc8:	7812      	ldrb	r2, [r2, #0]
     fca:	0010      	movs	r0, r2
     fcc:	221f      	movs	r2, #31
     fce:	4002      	ands	r2, r0
     fd0:	2001      	movs	r0, #1
     fd2:	4090      	lsls	r0, r2
     fd4:	0002      	movs	r2, r0
     fd6:	009b      	lsls	r3, r3, #2
     fd8:	505a      	str	r2, [r3, r1]
     fda:	46c0      	nop			; (mov r8, r8)
     fdc:	46bd      	mov	sp, r7
     fde:	b002      	add	sp, #8
     fe0:	bd80      	pop	{r7, pc}
     fe2:	46c0      	nop			; (mov r8, r8)
     fe4:	e000e100 	.word	0xe000e100

00000fe8 <NVIC_DisableIRQ>:
     fe8:	b580      	push	{r7, lr}
     fea:	b082      	sub	sp, #8
     fec:	af00      	add	r7, sp, #0
     fee:	0002      	movs	r2, r0
     ff0:	1dfb      	adds	r3, r7, #7
     ff2:	701a      	strb	r2, [r3, #0]
     ff4:	4909      	ldr	r1, [pc, #36]	; (101c <NVIC_DisableIRQ+0x34>)
     ff6:	1dfb      	adds	r3, r7, #7
     ff8:	781b      	ldrb	r3, [r3, #0]
     ffa:	b25b      	sxtb	r3, r3
     ffc:	095b      	lsrs	r3, r3, #5
     ffe:	1dfa      	adds	r2, r7, #7
    1000:	7812      	ldrb	r2, [r2, #0]
    1002:	0010      	movs	r0, r2
    1004:	221f      	movs	r2, #31
    1006:	4002      	ands	r2, r0
    1008:	2001      	movs	r0, #1
    100a:	4090      	lsls	r0, r2
    100c:	0002      	movs	r2, r0
    100e:	3320      	adds	r3, #32
    1010:	009b      	lsls	r3, r3, #2
    1012:	505a      	str	r2, [r3, r1]
    1014:	46c0      	nop			; (mov r8, r8)
    1016:	46bd      	mov	sp, r7
    1018:	b002      	add	sp, #8
    101a:	bd80      	pop	{r7, pc}
    101c:	e000e100 	.word	0xe000e100

00001020 <uart_init>:
    1020:	b580      	push	{r7, lr}
    1022:	af00      	add	r7, sp, #0
    1024:	4b1f      	ldr	r3, [pc, #124]	; (10a4 <uart_init+0x84>)
    1026:	4a1f      	ldr	r2, [pc, #124]	; (10a4 <uart_init+0x84>)
    1028:	69d2      	ldr	r2, [r2, #28]
    102a:	2140      	movs	r1, #64	; 0x40
    102c:	430a      	orrs	r2, r1
    102e:	61da      	str	r2, [r3, #28]
    1030:	4b1c      	ldr	r3, [pc, #112]	; (10a4 <uart_init+0x84>)
    1032:	4a1c      	ldr	r2, [pc, #112]	; (10a4 <uart_init+0x84>)
    1034:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1036:	2180      	movs	r1, #128	; 0x80
    1038:	0449      	lsls	r1, r1, #17
    103a:	430a      	orrs	r2, r1
    103c:	629a      	str	r2, [r3, #40]	; 0x28
    103e:	4b1a      	ldr	r3, [pc, #104]	; (10a8 <uart_init+0x88>)
    1040:	2204      	movs	r2, #4
    1042:	625a      	str	r2, [r3, #36]	; 0x24
    1044:	4b18      	ldr	r3, [pc, #96]	; (10a8 <uart_init+0x88>)
    1046:	2233      	movs	r2, #51	; 0x33
    1048:	629a      	str	r2, [r3, #40]	; 0x28
    104a:	4b17      	ldr	r3, [pc, #92]	; (10a8 <uart_init+0x88>)
    104c:	4a16      	ldr	r2, [pc, #88]	; (10a8 <uart_init+0x88>)
    104e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1050:	213f      	movs	r1, #63	; 0x3f
    1052:	438a      	bics	r2, r1
    1054:	635a      	str	r2, [r3, #52]	; 0x34
    1056:	4b14      	ldr	r3, [pc, #80]	; (10a8 <uart_init+0x88>)
    1058:	4a13      	ldr	r2, [pc, #76]	; (10a8 <uart_init+0x88>)
    105a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    105c:	2112      	movs	r1, #18
    105e:	430a      	orrs	r2, r1
    1060:	635a      	str	r2, [r3, #52]	; 0x34
    1062:	4b11      	ldr	r3, [pc, #68]	; (10a8 <uart_init+0x88>)
    1064:	4a10      	ldr	r2, [pc, #64]	; (10a8 <uart_init+0x88>)
    1066:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1068:	2110      	movs	r1, #16
    106a:	430a      	orrs	r2, r1
    106c:	62da      	str	r2, [r3, #44]	; 0x2c
    106e:	4b0e      	ldr	r3, [pc, #56]	; (10a8 <uart_init+0x88>)
    1070:	4a0d      	ldr	r2, [pc, #52]	; (10a8 <uart_init+0x88>)
    1072:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1074:	2160      	movs	r1, #96	; 0x60
    1076:	430a      	orrs	r2, r1
    1078:	62da      	str	r2, [r3, #44]	; 0x2c
    107a:	4b0b      	ldr	r3, [pc, #44]	; (10a8 <uart_init+0x88>)
    107c:	4a0a      	ldr	r2, [pc, #40]	; (10a8 <uart_init+0x88>)
    107e:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1080:	490a      	ldr	r1, [pc, #40]	; (10ac <uart_init+0x8c>)
    1082:	430a      	orrs	r2, r1
    1084:	631a      	str	r2, [r3, #48]	; 0x30
    1086:	4b08      	ldr	r3, [pc, #32]	; (10a8 <uart_init+0x88>)
    1088:	4a07      	ldr	r2, [pc, #28]	; (10a8 <uart_init+0x88>)
    108a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    108c:	2110      	movs	r1, #16
    108e:	430a      	orrs	r2, r1
    1090:	639a      	str	r2, [r3, #56]	; 0x38
    1092:	4b05      	ldr	r3, [pc, #20]	; (10a8 <uart_init+0x88>)
    1094:	4a04      	ldr	r2, [pc, #16]	; (10a8 <uart_init+0x88>)
    1096:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1098:	2140      	movs	r1, #64	; 0x40
    109a:	430a      	orrs	r2, r1
    109c:	639a      	str	r2, [r3, #56]	; 0x38
    109e:	46c0      	nop			; (mov r8, r8)
    10a0:	46bd      	mov	sp, r7
    10a2:	bd80      	pop	{r7, pc}
    10a4:	40020000 	.word	0x40020000
    10a8:	40030000 	.word	0x40030000
    10ac:	00000301 	.word	0x00000301

000010b0 <uart_read>:
    10b0:	b580      	push	{r7, lr}
    10b2:	b084      	sub	sp, #16
    10b4:	af00      	add	r7, sp, #0
    10b6:	6078      	str	r0, [r7, #4]
    10b8:	6039      	str	r1, [r7, #0]
    10ba:	4b18      	ldr	r3, [pc, #96]	; (111c <uart_read+0x6c>)
    10bc:	681a      	ldr	r2, [r3, #0]
    10be:	4b18      	ldr	r3, [pc, #96]	; (1120 <uart_read+0x70>)
    10c0:	681b      	ldr	r3, [r3, #0]
    10c2:	429a      	cmp	r2, r3
    10c4:	d101      	bne.n	10ca <uart_read+0x1a>
    10c6:	2300      	movs	r3, #0
    10c8:	e023      	b.n	1112 <uart_read+0x62>
    10ca:	2300      	movs	r3, #0
    10cc:	60fb      	str	r3, [r7, #12]
    10ce:	e01b      	b.n	1108 <uart_read+0x58>
    10d0:	68fb      	ldr	r3, [r7, #12]
    10d2:	687a      	ldr	r2, [r7, #4]
    10d4:	18d2      	adds	r2, r2, r3
    10d6:	4b11      	ldr	r3, [pc, #68]	; (111c <uart_read+0x6c>)
    10d8:	681b      	ldr	r3, [r3, #0]
    10da:	4912      	ldr	r1, [pc, #72]	; (1124 <uart_read+0x74>)
    10dc:	5ccb      	ldrb	r3, [r1, r3]
    10de:	7013      	strb	r3, [r2, #0]
    10e0:	4b0e      	ldr	r3, [pc, #56]	; (111c <uart_read+0x6c>)
    10e2:	681b      	ldr	r3, [r3, #0]
    10e4:	3301      	adds	r3, #1
    10e6:	05db      	lsls	r3, r3, #23
    10e8:	0dda      	lsrs	r2, r3, #23
    10ea:	4b0c      	ldr	r3, [pc, #48]	; (111c <uart_read+0x6c>)
    10ec:	601a      	str	r2, [r3, #0]
    10ee:	4b0b      	ldr	r3, [pc, #44]	; (111c <uart_read+0x6c>)
    10f0:	681a      	ldr	r2, [r3, #0]
    10f2:	4b0b      	ldr	r3, [pc, #44]	; (1120 <uart_read+0x70>)
    10f4:	681b      	ldr	r3, [r3, #0]
    10f6:	429a      	cmp	r2, r3
    10f8:	d103      	bne.n	1102 <uart_read+0x52>
    10fa:	68fb      	ldr	r3, [r7, #12]
    10fc:	3301      	adds	r3, #1
    10fe:	60fb      	str	r3, [r7, #12]
    1100:	e006      	b.n	1110 <uart_read+0x60>
    1102:	68fb      	ldr	r3, [r7, #12]
    1104:	3301      	adds	r3, #1
    1106:	60fb      	str	r3, [r7, #12]
    1108:	68fa      	ldr	r2, [r7, #12]
    110a:	683b      	ldr	r3, [r7, #0]
    110c:	429a      	cmp	r2, r3
    110e:	dbdf      	blt.n	10d0 <uart_read+0x20>
    1110:	68fb      	ldr	r3, [r7, #12]
    1112:	0018      	movs	r0, r3
    1114:	46bd      	mov	sp, r7
    1116:	b004      	add	sp, #16
    1118:	bd80      	pop	{r7, pc}
    111a:	46c0      	nop			; (mov r8, r8)
    111c:	20000558 	.word	0x20000558
    1120:	20000554 	.word	0x20000554
    1124:	20000354 	.word	0x20000354

00001128 <uart_send>:
    1128:	b580      	push	{r7, lr}
    112a:	b084      	sub	sp, #16
    112c:	af00      	add	r7, sp, #0
    112e:	6078      	str	r0, [r7, #4]
    1130:	6039      	str	r1, [r7, #0]
    1132:	2006      	movs	r0, #6
    1134:	f7ff ff58 	bl	fe8 <NVIC_DisableIRQ>
    1138:	2300      	movs	r3, #0
    113a:	60fb      	str	r3, [r7, #12]
    113c:	e01b      	b.n	1176 <uart_send+0x4e>
    113e:	4b20      	ldr	r3, [pc, #128]	; (11c0 <uart_send+0x98>)
    1140:	681b      	ldr	r3, [r3, #0]
    1142:	68fa      	ldr	r2, [r7, #12]
    1144:	6879      	ldr	r1, [r7, #4]
    1146:	188a      	adds	r2, r1, r2
    1148:	7811      	ldrb	r1, [r2, #0]
    114a:	4a1e      	ldr	r2, [pc, #120]	; (11c4 <uart_send+0x9c>)
    114c:	54d1      	strb	r1, [r2, r3]
    114e:	4b1c      	ldr	r3, [pc, #112]	; (11c0 <uart_send+0x98>)
    1150:	681b      	ldr	r3, [r3, #0]
    1152:	3301      	adds	r3, #1
    1154:	05db      	lsls	r3, r3, #23
    1156:	0dda      	lsrs	r2, r3, #23
    1158:	4b19      	ldr	r3, [pc, #100]	; (11c0 <uart_send+0x98>)
    115a:	601a      	str	r2, [r3, #0]
    115c:	4b18      	ldr	r3, [pc, #96]	; (11c0 <uart_send+0x98>)
    115e:	681a      	ldr	r2, [r3, #0]
    1160:	4b19      	ldr	r3, [pc, #100]	; (11c8 <uart_send+0xa0>)
    1162:	681b      	ldr	r3, [r3, #0]
    1164:	429a      	cmp	r2, r3
    1166:	d103      	bne.n	1170 <uart_send+0x48>
    1168:	68fb      	ldr	r3, [r7, #12]
    116a:	3301      	adds	r3, #1
    116c:	60fb      	str	r3, [r7, #12]
    116e:	e006      	b.n	117e <uart_send+0x56>
    1170:	68fb      	ldr	r3, [r7, #12]
    1172:	3301      	adds	r3, #1
    1174:	60fb      	str	r3, [r7, #12]
    1176:	68fa      	ldr	r2, [r7, #12]
    1178:	683b      	ldr	r3, [r7, #0]
    117a:	429a      	cmp	r2, r3
    117c:	dbdf      	blt.n	113e <uart_send+0x16>
    117e:	4b13      	ldr	r3, [pc, #76]	; (11cc <uart_send+0xa4>)
    1180:	699b      	ldr	r3, [r3, #24]
    1182:	2208      	movs	r2, #8
    1184:	4013      	ands	r3, r2
    1186:	d10c      	bne.n	11a2 <uart_send+0x7a>
    1188:	4a10      	ldr	r2, [pc, #64]	; (11cc <uart_send+0xa4>)
    118a:	4b0f      	ldr	r3, [pc, #60]	; (11c8 <uart_send+0xa0>)
    118c:	681b      	ldr	r3, [r3, #0]
    118e:	490d      	ldr	r1, [pc, #52]	; (11c4 <uart_send+0x9c>)
    1190:	5ccb      	ldrb	r3, [r1, r3]
    1192:	6013      	str	r3, [r2, #0]
    1194:	4b0c      	ldr	r3, [pc, #48]	; (11c8 <uart_send+0xa0>)
    1196:	681b      	ldr	r3, [r3, #0]
    1198:	3301      	adds	r3, #1
    119a:	05db      	lsls	r3, r3, #23
    119c:	0dda      	lsrs	r2, r3, #23
    119e:	4b0a      	ldr	r3, [pc, #40]	; (11c8 <uart_send+0xa0>)
    11a0:	601a      	str	r2, [r3, #0]
    11a2:	4b0a      	ldr	r3, [pc, #40]	; (11cc <uart_send+0xa4>)
    11a4:	4a09      	ldr	r2, [pc, #36]	; (11cc <uart_send+0xa4>)
    11a6:	6b92      	ldr	r2, [r2, #56]	; 0x38
    11a8:	2120      	movs	r1, #32
    11aa:	430a      	orrs	r2, r1
    11ac:	639a      	str	r2, [r3, #56]	; 0x38
    11ae:	2006      	movs	r0, #6
    11b0:	f7ff fefe 	bl	fb0 <NVIC_EnableIRQ>
    11b4:	68fb      	ldr	r3, [r7, #12]
    11b6:	0018      	movs	r0, r3
    11b8:	46bd      	mov	sp, r7
    11ba:	b004      	add	sp, #16
    11bc:	bd80      	pop	{r7, pc}
    11be:	46c0      	nop			; (mov r8, r8)
    11c0:	20000350 	.word	0x20000350
    11c4:	2000014c 	.word	0x2000014c
    11c8:	2000034c 	.word	0x2000034c
    11cc:	40030000 	.word	0x40030000

000011d0 <uart_putch>:
    11d0:	b580      	push	{r7, lr}
    11d2:	b082      	sub	sp, #8
    11d4:	af00      	add	r7, sp, #0
    11d6:	0002      	movs	r2, r0
    11d8:	1dfb      	adds	r3, r7, #7
    11da:	701a      	strb	r2, [r3, #0]
    11dc:	46c0      	nop			; (mov r8, r8)
    11de:	4b06      	ldr	r3, [pc, #24]	; (11f8 <uart_putch+0x28>)
    11e0:	699b      	ldr	r3, [r3, #24]
    11e2:	2220      	movs	r2, #32
    11e4:	4013      	ands	r3, r2
    11e6:	d1fa      	bne.n	11de <uart_putch+0xe>
    11e8:	4b03      	ldr	r3, [pc, #12]	; (11f8 <uart_putch+0x28>)
    11ea:	1dfa      	adds	r2, r7, #7
    11ec:	7812      	ldrb	r2, [r2, #0]
    11ee:	601a      	str	r2, [r3, #0]
    11f0:	46c0      	nop			; (mov r8, r8)
    11f2:	46bd      	mov	sp, r7
    11f4:	b002      	add	sp, #8
    11f6:	bd80      	pop	{r7, pc}
    11f8:	40030000 	.word	0x40030000

000011fc <UART1_Handler>:
    11fc:	b580      	push	{r7, lr}
    11fe:	af00      	add	r7, sp, #0
    1200:	4b1a      	ldr	r3, [pc, #104]	; (126c <UART1_Handler+0x70>)
    1202:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1204:	2220      	movs	r2, #32
    1206:	4013      	ands	r3, r2
    1208:	d019      	beq.n	123e <UART1_Handler+0x42>
    120a:	4b19      	ldr	r3, [pc, #100]	; (1270 <UART1_Handler+0x74>)
    120c:	681a      	ldr	r2, [r3, #0]
    120e:	4b19      	ldr	r3, [pc, #100]	; (1274 <UART1_Handler+0x78>)
    1210:	681b      	ldr	r3, [r3, #0]
    1212:	429a      	cmp	r2, r3
    1214:	d106      	bne.n	1224 <UART1_Handler+0x28>
    1216:	4b15      	ldr	r3, [pc, #84]	; (126c <UART1_Handler+0x70>)
    1218:	4a14      	ldr	r2, [pc, #80]	; (126c <UART1_Handler+0x70>)
    121a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    121c:	2120      	movs	r1, #32
    121e:	438a      	bics	r2, r1
    1220:	639a      	str	r2, [r3, #56]	; 0x38
    1222:	e00c      	b.n	123e <UART1_Handler+0x42>
    1224:	4a11      	ldr	r2, [pc, #68]	; (126c <UART1_Handler+0x70>)
    1226:	4b12      	ldr	r3, [pc, #72]	; (1270 <UART1_Handler+0x74>)
    1228:	681b      	ldr	r3, [r3, #0]
    122a:	4913      	ldr	r1, [pc, #76]	; (1278 <UART1_Handler+0x7c>)
    122c:	5ccb      	ldrb	r3, [r1, r3]
    122e:	6013      	str	r3, [r2, #0]
    1230:	4b0f      	ldr	r3, [pc, #60]	; (1270 <UART1_Handler+0x74>)
    1232:	681b      	ldr	r3, [r3, #0]
    1234:	3301      	adds	r3, #1
    1236:	05db      	lsls	r3, r3, #23
    1238:	0dda      	lsrs	r2, r3, #23
    123a:	4b0d      	ldr	r3, [pc, #52]	; (1270 <UART1_Handler+0x74>)
    123c:	601a      	str	r2, [r3, #0]
    123e:	4b0b      	ldr	r3, [pc, #44]	; (126c <UART1_Handler+0x70>)
    1240:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1242:	2210      	movs	r2, #16
    1244:	4013      	ands	r3, r2
    1246:	d00d      	beq.n	1264 <UART1_Handler+0x68>
    1248:	4b0c      	ldr	r3, [pc, #48]	; (127c <UART1_Handler+0x80>)
    124a:	681a      	ldr	r2, [r3, #0]
    124c:	4b07      	ldr	r3, [pc, #28]	; (126c <UART1_Handler+0x70>)
    124e:	681b      	ldr	r3, [r3, #0]
    1250:	b2d9      	uxtb	r1, r3
    1252:	4b0b      	ldr	r3, [pc, #44]	; (1280 <UART1_Handler+0x84>)
    1254:	5499      	strb	r1, [r3, r2]
    1256:	4b09      	ldr	r3, [pc, #36]	; (127c <UART1_Handler+0x80>)
    1258:	681b      	ldr	r3, [r3, #0]
    125a:	3301      	adds	r3, #1
    125c:	05db      	lsls	r3, r3, #23
    125e:	0dda      	lsrs	r2, r3, #23
    1260:	4b06      	ldr	r3, [pc, #24]	; (127c <UART1_Handler+0x80>)
    1262:	601a      	str	r2, [r3, #0]
    1264:	46c0      	nop			; (mov r8, r8)
    1266:	46bd      	mov	sp, r7
    1268:	bd80      	pop	{r7, pc}
    126a:	46c0      	nop			; (mov r8, r8)
    126c:	40030000 	.word	0x40030000
    1270:	2000034c 	.word	0x2000034c
    1274:	20000350 	.word	0x20000350
    1278:	2000014c 	.word	0x2000014c
    127c:	20000554 	.word	0x20000554
    1280:	20000354 	.word	0x20000354

00001284 <xputc>:
    1284:	b580      	push	{r7, lr}
    1286:	b082      	sub	sp, #8
    1288:	af00      	add	r7, sp, #0
    128a:	0002      	movs	r2, r0
    128c:	1dfb      	adds	r3, r7, #7
    128e:	701a      	strb	r2, [r3, #0]
    1290:	1dfb      	adds	r3, r7, #7
    1292:	781b      	ldrb	r3, [r3, #0]
    1294:	2b0a      	cmp	r3, #10
    1296:	d102      	bne.n	129e <xputc+0x1a>
    1298:	200d      	movs	r0, #13
    129a:	f7ff fff3 	bl	1284 <xputc>
    129e:	4b0d      	ldr	r3, [pc, #52]	; (12d4 <xputc+0x50>)
    12a0:	681b      	ldr	r3, [r3, #0]
    12a2:	2b00      	cmp	r3, #0
    12a4:	d008      	beq.n	12b8 <xputc+0x34>
    12a6:	4b0b      	ldr	r3, [pc, #44]	; (12d4 <xputc+0x50>)
    12a8:	681b      	ldr	r3, [r3, #0]
    12aa:	1c59      	adds	r1, r3, #1
    12ac:	4a09      	ldr	r2, [pc, #36]	; (12d4 <xputc+0x50>)
    12ae:	6011      	str	r1, [r2, #0]
    12b0:	1dfa      	adds	r2, r7, #7
    12b2:	7812      	ldrb	r2, [r2, #0]
    12b4:	701a      	strb	r2, [r3, #0]
    12b6:	e009      	b.n	12cc <xputc+0x48>
    12b8:	4b07      	ldr	r3, [pc, #28]	; (12d8 <xputc+0x54>)
    12ba:	681b      	ldr	r3, [r3, #0]
    12bc:	2b00      	cmp	r3, #0
    12be:	d005      	beq.n	12cc <xputc+0x48>
    12c0:	4b05      	ldr	r3, [pc, #20]	; (12d8 <xputc+0x54>)
    12c2:	681b      	ldr	r3, [r3, #0]
    12c4:	1dfa      	adds	r2, r7, #7
    12c6:	7812      	ldrb	r2, [r2, #0]
    12c8:	0010      	movs	r0, r2
    12ca:	4798      	blx	r3
    12cc:	46bd      	mov	sp, r7
    12ce:	b002      	add	sp, #8
    12d0:	bd80      	pop	{r7, pc}
    12d2:	46c0      	nop			; (mov r8, r8)
    12d4:	20000560 	.word	0x20000560
    12d8:	2000055c 	.word	0x2000055c

000012dc <xputs>:
    12dc:	b580      	push	{r7, lr}
    12de:	b082      	sub	sp, #8
    12e0:	af00      	add	r7, sp, #0
    12e2:	6078      	str	r0, [r7, #4]
    12e4:	e006      	b.n	12f4 <xputs+0x18>
    12e6:	687b      	ldr	r3, [r7, #4]
    12e8:	1c5a      	adds	r2, r3, #1
    12ea:	607a      	str	r2, [r7, #4]
    12ec:	781b      	ldrb	r3, [r3, #0]
    12ee:	0018      	movs	r0, r3
    12f0:	f7ff ffc8 	bl	1284 <xputc>
    12f4:	687b      	ldr	r3, [r7, #4]
    12f6:	781b      	ldrb	r3, [r3, #0]
    12f8:	2b00      	cmp	r3, #0
    12fa:	d1f4      	bne.n	12e6 <xputs+0xa>
    12fc:	46c0      	nop			; (mov r8, r8)
    12fe:	46bd      	mov	sp, r7
    1300:	b002      	add	sp, #8
    1302:	bd80      	pop	{r7, pc}

00001304 <xfputs>:
    1304:	b580      	push	{r7, lr}
    1306:	b084      	sub	sp, #16
    1308:	af00      	add	r7, sp, #0
    130a:	6078      	str	r0, [r7, #4]
    130c:	6039      	str	r1, [r7, #0]
    130e:	4b0c      	ldr	r3, [pc, #48]	; (1340 <xfputs+0x3c>)
    1310:	681b      	ldr	r3, [r3, #0]
    1312:	60fb      	str	r3, [r7, #12]
    1314:	4b0a      	ldr	r3, [pc, #40]	; (1340 <xfputs+0x3c>)
    1316:	687a      	ldr	r2, [r7, #4]
    1318:	601a      	str	r2, [r3, #0]
    131a:	e006      	b.n	132a <xfputs+0x26>
    131c:	683b      	ldr	r3, [r7, #0]
    131e:	1c5a      	adds	r2, r3, #1
    1320:	603a      	str	r2, [r7, #0]
    1322:	781b      	ldrb	r3, [r3, #0]
    1324:	0018      	movs	r0, r3
    1326:	f7ff ffad 	bl	1284 <xputc>
    132a:	683b      	ldr	r3, [r7, #0]
    132c:	781b      	ldrb	r3, [r3, #0]
    132e:	2b00      	cmp	r3, #0
    1330:	d1f4      	bne.n	131c <xfputs+0x18>
    1332:	4b03      	ldr	r3, [pc, #12]	; (1340 <xfputs+0x3c>)
    1334:	68fa      	ldr	r2, [r7, #12]
    1336:	601a      	str	r2, [r3, #0]
    1338:	46c0      	nop			; (mov r8, r8)
    133a:	46bd      	mov	sp, r7
    133c:	b004      	add	sp, #16
    133e:	bd80      	pop	{r7, pc}
    1340:	2000055c 	.word	0x2000055c

00001344 <xvprintf>:
    1344:	b580      	push	{r7, lr}
    1346:	b08e      	sub	sp, #56	; 0x38
    1348:	af00      	add	r7, sp, #0
    134a:	6078      	str	r0, [r7, #4]
    134c:	6039      	str	r1, [r7, #0]
    134e:	687b      	ldr	r3, [r7, #4]
    1350:	1c5a      	adds	r2, r3, #1
    1352:	607a      	str	r2, [r7, #4]
    1354:	221f      	movs	r2, #31
    1356:	18ba      	adds	r2, r7, r2
    1358:	781b      	ldrb	r3, [r3, #0]
    135a:	7013      	strb	r3, [r2, #0]
    135c:	231f      	movs	r3, #31
    135e:	18fb      	adds	r3, r7, r3
    1360:	781b      	ldrb	r3, [r3, #0]
    1362:	2b00      	cmp	r3, #0
    1364:	d100      	bne.n	1368 <xvprintf+0x24>
    1366:	e172      	b.n	164e <xvprintf+0x30a>
    1368:	231f      	movs	r3, #31
    136a:	18fb      	adds	r3, r7, r3
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	2b25      	cmp	r3, #37	; 0x25
    1370:	d006      	beq.n	1380 <xvprintf+0x3c>
    1372:	231f      	movs	r3, #31
    1374:	18fb      	adds	r3, r7, r3
    1376:	781b      	ldrb	r3, [r3, #0]
    1378:	0018      	movs	r0, r3
    137a:	f7ff ff83 	bl	1284 <xputc>
    137e:	e165      	b.n	164c <xvprintf+0x308>
    1380:	2300      	movs	r3, #0
    1382:	627b      	str	r3, [r7, #36]	; 0x24
    1384:	687b      	ldr	r3, [r7, #4]
    1386:	1c5a      	adds	r2, r3, #1
    1388:	607a      	str	r2, [r7, #4]
    138a:	221f      	movs	r2, #31
    138c:	18ba      	adds	r2, r7, r2
    138e:	781b      	ldrb	r3, [r3, #0]
    1390:	7013      	strb	r3, [r2, #0]
    1392:	231f      	movs	r3, #31
    1394:	18fb      	adds	r3, r7, r3
    1396:	781b      	ldrb	r3, [r3, #0]
    1398:	2b30      	cmp	r3, #48	; 0x30
    139a:	d109      	bne.n	13b0 <xvprintf+0x6c>
    139c:	2301      	movs	r3, #1
    139e:	627b      	str	r3, [r7, #36]	; 0x24
    13a0:	687b      	ldr	r3, [r7, #4]
    13a2:	1c5a      	adds	r2, r3, #1
    13a4:	607a      	str	r2, [r7, #4]
    13a6:	221f      	movs	r2, #31
    13a8:	18ba      	adds	r2, r7, r2
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	7013      	strb	r3, [r2, #0]
    13ae:	e00d      	b.n	13cc <xvprintf+0x88>
    13b0:	231f      	movs	r3, #31
    13b2:	18fb      	adds	r3, r7, r3
    13b4:	781b      	ldrb	r3, [r3, #0]
    13b6:	2b2d      	cmp	r3, #45	; 0x2d
    13b8:	d108      	bne.n	13cc <xvprintf+0x88>
    13ba:	2302      	movs	r3, #2
    13bc:	627b      	str	r3, [r7, #36]	; 0x24
    13be:	687b      	ldr	r3, [r7, #4]
    13c0:	1c5a      	adds	r2, r3, #1
    13c2:	607a      	str	r2, [r7, #4]
    13c4:	221f      	movs	r2, #31
    13c6:	18ba      	adds	r2, r7, r2
    13c8:	781b      	ldrb	r3, [r3, #0]
    13ca:	7013      	strb	r3, [r2, #0]
    13cc:	2300      	movs	r3, #0
    13ce:	62bb      	str	r3, [r7, #40]	; 0x28
    13d0:	e012      	b.n	13f8 <xvprintf+0xb4>
    13d2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    13d4:	0013      	movs	r3, r2
    13d6:	009b      	lsls	r3, r3, #2
    13d8:	189b      	adds	r3, r3, r2
    13da:	005b      	lsls	r3, r3, #1
    13dc:	001a      	movs	r2, r3
    13de:	231f      	movs	r3, #31
    13e0:	18fb      	adds	r3, r7, r3
    13e2:	781b      	ldrb	r3, [r3, #0]
    13e4:	18d3      	adds	r3, r2, r3
    13e6:	3b30      	subs	r3, #48	; 0x30
    13e8:	62bb      	str	r3, [r7, #40]	; 0x28
    13ea:	687b      	ldr	r3, [r7, #4]
    13ec:	1c5a      	adds	r2, r3, #1
    13ee:	607a      	str	r2, [r7, #4]
    13f0:	221f      	movs	r2, #31
    13f2:	18ba      	adds	r2, r7, r2
    13f4:	781b      	ldrb	r3, [r3, #0]
    13f6:	7013      	strb	r3, [r2, #0]
    13f8:	231f      	movs	r3, #31
    13fa:	18fb      	adds	r3, r7, r3
    13fc:	781b      	ldrb	r3, [r3, #0]
    13fe:	2b2f      	cmp	r3, #47	; 0x2f
    1400:	d904      	bls.n	140c <xvprintf+0xc8>
    1402:	231f      	movs	r3, #31
    1404:	18fb      	adds	r3, r7, r3
    1406:	781b      	ldrb	r3, [r3, #0]
    1408:	2b39      	cmp	r3, #57	; 0x39
    140a:	d9e2      	bls.n	13d2 <xvprintf+0x8e>
    140c:	231f      	movs	r3, #31
    140e:	18fb      	adds	r3, r7, r3
    1410:	781b      	ldrb	r3, [r3, #0]
    1412:	2b6c      	cmp	r3, #108	; 0x6c
    1414:	d004      	beq.n	1420 <xvprintf+0xdc>
    1416:	231f      	movs	r3, #31
    1418:	18fb      	adds	r3, r7, r3
    141a:	781b      	ldrb	r3, [r3, #0]
    141c:	2b4c      	cmp	r3, #76	; 0x4c
    141e:	d10a      	bne.n	1436 <xvprintf+0xf2>
    1420:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1422:	2204      	movs	r2, #4
    1424:	4313      	orrs	r3, r2
    1426:	627b      	str	r3, [r7, #36]	; 0x24
    1428:	687b      	ldr	r3, [r7, #4]
    142a:	1c5a      	adds	r2, r3, #1
    142c:	607a      	str	r2, [r7, #4]
    142e:	221f      	movs	r2, #31
    1430:	18ba      	adds	r2, r7, r2
    1432:	781b      	ldrb	r3, [r3, #0]
    1434:	7013      	strb	r3, [r2, #0]
    1436:	231f      	movs	r3, #31
    1438:	18fb      	adds	r3, r7, r3
    143a:	781b      	ldrb	r3, [r3, #0]
    143c:	2b00      	cmp	r3, #0
    143e:	d100      	bne.n	1442 <xvprintf+0xfe>
    1440:	e107      	b.n	1652 <xvprintf+0x30e>
    1442:	231e      	movs	r3, #30
    1444:	18fb      	adds	r3, r7, r3
    1446:	221f      	movs	r2, #31
    1448:	18ba      	adds	r2, r7, r2
    144a:	7812      	ldrb	r2, [r2, #0]
    144c:	701a      	strb	r2, [r3, #0]
    144e:	231e      	movs	r3, #30
    1450:	18fb      	adds	r3, r7, r3
    1452:	781b      	ldrb	r3, [r3, #0]
    1454:	2b60      	cmp	r3, #96	; 0x60
    1456:	d906      	bls.n	1466 <xvprintf+0x122>
    1458:	231e      	movs	r3, #30
    145a:	18fb      	adds	r3, r7, r3
    145c:	221e      	movs	r2, #30
    145e:	18ba      	adds	r2, r7, r2
    1460:	7812      	ldrb	r2, [r2, #0]
    1462:	3a20      	subs	r2, #32
    1464:	701a      	strb	r2, [r3, #0]
    1466:	231e      	movs	r3, #30
    1468:	18fb      	adds	r3, r7, r3
    146a:	781b      	ldrb	r3, [r3, #0]
    146c:	3b42      	subs	r3, #66	; 0x42
    146e:	2b16      	cmp	r3, #22
    1470:	d847      	bhi.n	1502 <xvprintf+0x1be>
    1472:	009a      	lsls	r2, r3, #2
    1474:	4b79      	ldr	r3, [pc, #484]	; (165c <xvprintf+0x318>)
    1476:	18d3      	adds	r3, r2, r3
    1478:	681b      	ldr	r3, [r3, #0]
    147a:	469f      	mov	pc, r3
    147c:	683b      	ldr	r3, [r7, #0]
    147e:	1d1a      	adds	r2, r3, #4
    1480:	603a      	str	r2, [r7, #0]
    1482:	681b      	ldr	r3, [r3, #0]
    1484:	61bb      	str	r3, [r7, #24]
    1486:	2300      	movs	r3, #0
    1488:	62fb      	str	r3, [r7, #44]	; 0x2c
    148a:	e002      	b.n	1492 <xvprintf+0x14e>
    148c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    148e:	3301      	adds	r3, #1
    1490:	62fb      	str	r3, [r7, #44]	; 0x2c
    1492:	69ba      	ldr	r2, [r7, #24]
    1494:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1496:	18d3      	adds	r3, r2, r3
    1498:	781b      	ldrb	r3, [r3, #0]
    149a:	2b00      	cmp	r3, #0
    149c:	d1f6      	bne.n	148c <xvprintf+0x148>
    149e:	e002      	b.n	14a6 <xvprintf+0x162>
    14a0:	2020      	movs	r0, #32
    14a2:	f7ff feef 	bl	1284 <xputc>
    14a6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14a8:	2202      	movs	r2, #2
    14aa:	4013      	ands	r3, r2
    14ac:	d105      	bne.n	14ba <xvprintf+0x176>
    14ae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14b0:	1c5a      	adds	r2, r3, #1
    14b2:	62fa      	str	r2, [r7, #44]	; 0x2c
    14b4:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14b6:	4293      	cmp	r3, r2
    14b8:	d3f2      	bcc.n	14a0 <xvprintf+0x15c>
    14ba:	69bb      	ldr	r3, [r7, #24]
    14bc:	0018      	movs	r0, r3
    14be:	f7ff ff0d 	bl	12dc <xputs>
    14c2:	e002      	b.n	14ca <xvprintf+0x186>
    14c4:	2020      	movs	r0, #32
    14c6:	f7ff fedd 	bl	1284 <xputc>
    14ca:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14cc:	1c5a      	adds	r2, r3, #1
    14ce:	62fa      	str	r2, [r7, #44]	; 0x2c
    14d0:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14d2:	4293      	cmp	r3, r2
    14d4:	d3f6      	bcc.n	14c4 <xvprintf+0x180>
    14d6:	e0b9      	b.n	164c <xvprintf+0x308>
    14d8:	683b      	ldr	r3, [r7, #0]
    14da:	1d1a      	adds	r2, r3, #4
    14dc:	603a      	str	r2, [r7, #0]
    14de:	681b      	ldr	r3, [r3, #0]
    14e0:	b2db      	uxtb	r3, r3
    14e2:	0018      	movs	r0, r3
    14e4:	f7ff fece 	bl	1284 <xputc>
    14e8:	e0b0      	b.n	164c <xvprintf+0x308>
    14ea:	2302      	movs	r3, #2
    14ec:	637b      	str	r3, [r7, #52]	; 0x34
    14ee:	e00f      	b.n	1510 <xvprintf+0x1cc>
    14f0:	2308      	movs	r3, #8
    14f2:	637b      	str	r3, [r7, #52]	; 0x34
    14f4:	e00c      	b.n	1510 <xvprintf+0x1cc>
    14f6:	230a      	movs	r3, #10
    14f8:	637b      	str	r3, [r7, #52]	; 0x34
    14fa:	e009      	b.n	1510 <xvprintf+0x1cc>
    14fc:	2310      	movs	r3, #16
    14fe:	637b      	str	r3, [r7, #52]	; 0x34
    1500:	e006      	b.n	1510 <xvprintf+0x1cc>
    1502:	231f      	movs	r3, #31
    1504:	18fb      	adds	r3, r7, r3
    1506:	781b      	ldrb	r3, [r3, #0]
    1508:	0018      	movs	r0, r3
    150a:	f7ff febb 	bl	1284 <xputc>
    150e:	e09d      	b.n	164c <xvprintf+0x308>
    1510:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1512:	2204      	movs	r2, #4
    1514:	4013      	ands	r3, r2
    1516:	d004      	beq.n	1522 <xvprintf+0x1de>
    1518:	683b      	ldr	r3, [r7, #0]
    151a:	1d1a      	adds	r2, r3, #4
    151c:	603a      	str	r2, [r7, #0]
    151e:	681b      	ldr	r3, [r3, #0]
    1520:	e00d      	b.n	153e <xvprintf+0x1fa>
    1522:	231e      	movs	r3, #30
    1524:	18fb      	adds	r3, r7, r3
    1526:	781b      	ldrb	r3, [r3, #0]
    1528:	2b44      	cmp	r3, #68	; 0x44
    152a:	d104      	bne.n	1536 <xvprintf+0x1f2>
    152c:	683b      	ldr	r3, [r7, #0]
    152e:	1d1a      	adds	r2, r3, #4
    1530:	603a      	str	r2, [r7, #0]
    1532:	681b      	ldr	r3, [r3, #0]
    1534:	e003      	b.n	153e <xvprintf+0x1fa>
    1536:	683b      	ldr	r3, [r7, #0]
    1538:	1d1a      	adds	r2, r3, #4
    153a:	603a      	str	r2, [r7, #0]
    153c:	681b      	ldr	r3, [r3, #0]
    153e:	623b      	str	r3, [r7, #32]
    1540:	231e      	movs	r3, #30
    1542:	18fb      	adds	r3, r7, r3
    1544:	781b      	ldrb	r3, [r3, #0]
    1546:	2b44      	cmp	r3, #68	; 0x44
    1548:	d109      	bne.n	155e <xvprintf+0x21a>
    154a:	6a3b      	ldr	r3, [r7, #32]
    154c:	2b00      	cmp	r3, #0
    154e:	da06      	bge.n	155e <xvprintf+0x21a>
    1550:	6a3b      	ldr	r3, [r7, #32]
    1552:	425b      	negs	r3, r3
    1554:	623b      	str	r3, [r7, #32]
    1556:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1558:	2208      	movs	r2, #8
    155a:	4313      	orrs	r3, r2
    155c:	627b      	str	r3, [r7, #36]	; 0x24
    155e:	2300      	movs	r3, #0
    1560:	633b      	str	r3, [r7, #48]	; 0x30
    1562:	6a3b      	ldr	r3, [r7, #32]
    1564:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1566:	0018      	movs	r0, r3
    1568:	f000 fc68 	bl	1e3c <__aeabi_uidivmod>
    156c:	000b      	movs	r3, r1
    156e:	001a      	movs	r2, r3
    1570:	231e      	movs	r3, #30
    1572:	18fb      	adds	r3, r7, r3
    1574:	701a      	strb	r2, [r3, #0]
    1576:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1578:	6a38      	ldr	r0, [r7, #32]
    157a:	f000 fbd9 	bl	1d30 <__aeabi_uidiv>
    157e:	0003      	movs	r3, r0
    1580:	623b      	str	r3, [r7, #32]
    1582:	231e      	movs	r3, #30
    1584:	18fb      	adds	r3, r7, r3
    1586:	781b      	ldrb	r3, [r3, #0]
    1588:	2b09      	cmp	r3, #9
    158a:	d90e      	bls.n	15aa <xvprintf+0x266>
    158c:	231f      	movs	r3, #31
    158e:	18fb      	adds	r3, r7, r3
    1590:	781b      	ldrb	r3, [r3, #0]
    1592:	2b78      	cmp	r3, #120	; 0x78
    1594:	d101      	bne.n	159a <xvprintf+0x256>
    1596:	2327      	movs	r3, #39	; 0x27
    1598:	e000      	b.n	159c <xvprintf+0x258>
    159a:	2307      	movs	r3, #7
    159c:	221e      	movs	r2, #30
    159e:	18ba      	adds	r2, r7, r2
    15a0:	211e      	movs	r1, #30
    15a2:	1879      	adds	r1, r7, r1
    15a4:	7809      	ldrb	r1, [r1, #0]
    15a6:	185b      	adds	r3, r3, r1
    15a8:	7013      	strb	r3, [r2, #0]
    15aa:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15ac:	1c5a      	adds	r2, r3, #1
    15ae:	633a      	str	r2, [r7, #48]	; 0x30
    15b0:	221e      	movs	r2, #30
    15b2:	18ba      	adds	r2, r7, r2
    15b4:	7812      	ldrb	r2, [r2, #0]
    15b6:	3230      	adds	r2, #48	; 0x30
    15b8:	b2d1      	uxtb	r1, r2
    15ba:	2208      	movs	r2, #8
    15bc:	18ba      	adds	r2, r7, r2
    15be:	54d1      	strb	r1, [r2, r3]
    15c0:	6a3b      	ldr	r3, [r7, #32]
    15c2:	2b00      	cmp	r3, #0
    15c4:	d002      	beq.n	15cc <xvprintf+0x288>
    15c6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15c8:	2b0f      	cmp	r3, #15
    15ca:	d9ca      	bls.n	1562 <xvprintf+0x21e>
    15cc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15ce:	2208      	movs	r2, #8
    15d0:	4013      	ands	r3, r2
    15d2:	d006      	beq.n	15e2 <xvprintf+0x29e>
    15d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15d6:	1c5a      	adds	r2, r3, #1
    15d8:	633a      	str	r2, [r7, #48]	; 0x30
    15da:	2208      	movs	r2, #8
    15dc:	18ba      	adds	r2, r7, r2
    15de:	212d      	movs	r1, #45	; 0x2d
    15e0:	54d1      	strb	r1, [r2, r3]
    15e2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15e4:	62fb      	str	r3, [r7, #44]	; 0x2c
    15e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15e8:	2201      	movs	r2, #1
    15ea:	4013      	ands	r3, r2
    15ec:	d001      	beq.n	15f2 <xvprintf+0x2ae>
    15ee:	2230      	movs	r2, #48	; 0x30
    15f0:	e000      	b.n	15f4 <xvprintf+0x2b0>
    15f2:	2220      	movs	r2, #32
    15f4:	231e      	movs	r3, #30
    15f6:	18fb      	adds	r3, r7, r3
    15f8:	701a      	strb	r2, [r3, #0]
    15fa:	e005      	b.n	1608 <xvprintf+0x2c4>
    15fc:	231e      	movs	r3, #30
    15fe:	18fb      	adds	r3, r7, r3
    1600:	781b      	ldrb	r3, [r3, #0]
    1602:	0018      	movs	r0, r3
    1604:	f7ff fe3e 	bl	1284 <xputc>
    1608:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    160a:	2202      	movs	r2, #2
    160c:	4013      	ands	r3, r2
    160e:	d105      	bne.n	161c <xvprintf+0x2d8>
    1610:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1612:	1c5a      	adds	r2, r3, #1
    1614:	62fa      	str	r2, [r7, #44]	; 0x2c
    1616:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1618:	4293      	cmp	r3, r2
    161a:	d3ef      	bcc.n	15fc <xvprintf+0x2b8>
    161c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    161e:	3b01      	subs	r3, #1
    1620:	633b      	str	r3, [r7, #48]	; 0x30
    1622:	2308      	movs	r3, #8
    1624:	18fa      	adds	r2, r7, r3
    1626:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1628:	18d3      	adds	r3, r2, r3
    162a:	781b      	ldrb	r3, [r3, #0]
    162c:	0018      	movs	r0, r3
    162e:	f7ff fe29 	bl	1284 <xputc>
    1632:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1634:	2b00      	cmp	r3, #0
    1636:	d1f1      	bne.n	161c <xvprintf+0x2d8>
    1638:	e002      	b.n	1640 <xvprintf+0x2fc>
    163a:	2020      	movs	r0, #32
    163c:	f7ff fe22 	bl	1284 <xputc>
    1640:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1642:	1c5a      	adds	r2, r3, #1
    1644:	62fa      	str	r2, [r7, #44]	; 0x2c
    1646:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1648:	4293      	cmp	r3, r2
    164a:	d3f6      	bcc.n	163a <xvprintf+0x2f6>
    164c:	e67f      	b.n	134e <xvprintf+0xa>
    164e:	46c0      	nop			; (mov r8, r8)
    1650:	e000      	b.n	1654 <xvprintf+0x310>
    1652:	46c0      	nop			; (mov r8, r8)
    1654:	46c0      	nop			; (mov r8, r8)
    1656:	46bd      	mov	sp, r7
    1658:	b00e      	add	sp, #56	; 0x38
    165a:	bd80      	pop	{r7, pc}
    165c:	00001e58 	.word	0x00001e58

00001660 <xprintf>:
    1660:	b40f      	push	{r0, r1, r2, r3}
    1662:	b580      	push	{r7, lr}
    1664:	b082      	sub	sp, #8
    1666:	af00      	add	r7, sp, #0
    1668:	2314      	movs	r3, #20
    166a:	18fb      	adds	r3, r7, r3
    166c:	607b      	str	r3, [r7, #4]
    166e:	687a      	ldr	r2, [r7, #4]
    1670:	693b      	ldr	r3, [r7, #16]
    1672:	0011      	movs	r1, r2
    1674:	0018      	movs	r0, r3
    1676:	f7ff fe65 	bl	1344 <xvprintf>
    167a:	46c0      	nop			; (mov r8, r8)
    167c:	46bd      	mov	sp, r7
    167e:	b002      	add	sp, #8
    1680:	bc80      	pop	{r7}
    1682:	bc08      	pop	{r3}
    1684:	b004      	add	sp, #16
    1686:	4718      	bx	r3

00001688 <xsprintf>:
    1688:	b40e      	push	{r1, r2, r3}
    168a:	b580      	push	{r7, lr}
    168c:	b085      	sub	sp, #20
    168e:	af00      	add	r7, sp, #0
    1690:	6078      	str	r0, [r7, #4]
    1692:	4b0d      	ldr	r3, [pc, #52]	; (16c8 <xsprintf+0x40>)
    1694:	687a      	ldr	r2, [r7, #4]
    1696:	601a      	str	r2, [r3, #0]
    1698:	2320      	movs	r3, #32
    169a:	18fb      	adds	r3, r7, r3
    169c:	60fb      	str	r3, [r7, #12]
    169e:	68fa      	ldr	r2, [r7, #12]
    16a0:	69fb      	ldr	r3, [r7, #28]
    16a2:	0011      	movs	r1, r2
    16a4:	0018      	movs	r0, r3
    16a6:	f7ff fe4d 	bl	1344 <xvprintf>
    16aa:	4b07      	ldr	r3, [pc, #28]	; (16c8 <xsprintf+0x40>)
    16ac:	681b      	ldr	r3, [r3, #0]
    16ae:	2200      	movs	r2, #0
    16b0:	701a      	strb	r2, [r3, #0]
    16b2:	4b05      	ldr	r3, [pc, #20]	; (16c8 <xsprintf+0x40>)
    16b4:	2200      	movs	r2, #0
    16b6:	601a      	str	r2, [r3, #0]
    16b8:	46c0      	nop			; (mov r8, r8)
    16ba:	46bd      	mov	sp, r7
    16bc:	b005      	add	sp, #20
    16be:	bc80      	pop	{r7}
    16c0:	bc08      	pop	{r3}
    16c2:	b003      	add	sp, #12
    16c4:	4718      	bx	r3
    16c6:	46c0      	nop			; (mov r8, r8)
    16c8:	20000560 	.word	0x20000560

000016cc <xfprintf>:
    16cc:	b40e      	push	{r1, r2, r3}
    16ce:	b580      	push	{r7, lr}
    16d0:	b085      	sub	sp, #20
    16d2:	af00      	add	r7, sp, #0
    16d4:	6078      	str	r0, [r7, #4]
    16d6:	4b0c      	ldr	r3, [pc, #48]	; (1708 <xfprintf+0x3c>)
    16d8:	681b      	ldr	r3, [r3, #0]
    16da:	60fb      	str	r3, [r7, #12]
    16dc:	4b0a      	ldr	r3, [pc, #40]	; (1708 <xfprintf+0x3c>)
    16de:	687a      	ldr	r2, [r7, #4]
    16e0:	601a      	str	r2, [r3, #0]
    16e2:	2320      	movs	r3, #32
    16e4:	18fb      	adds	r3, r7, r3
    16e6:	60bb      	str	r3, [r7, #8]
    16e8:	68ba      	ldr	r2, [r7, #8]
    16ea:	69fb      	ldr	r3, [r7, #28]
    16ec:	0011      	movs	r1, r2
    16ee:	0018      	movs	r0, r3
    16f0:	f7ff fe28 	bl	1344 <xvprintf>
    16f4:	4b04      	ldr	r3, [pc, #16]	; (1708 <xfprintf+0x3c>)
    16f6:	68fa      	ldr	r2, [r7, #12]
    16f8:	601a      	str	r2, [r3, #0]
    16fa:	46c0      	nop			; (mov r8, r8)
    16fc:	46bd      	mov	sp, r7
    16fe:	b005      	add	sp, #20
    1700:	bc80      	pop	{r7}
    1702:	bc08      	pop	{r3}
    1704:	b003      	add	sp, #12
    1706:	4718      	bx	r3
    1708:	2000055c 	.word	0x2000055c

0000170c <put_dump>:
    170c:	b580      	push	{r7, lr}
    170e:	b088      	sub	sp, #32
    1710:	af00      	add	r7, sp, #0
    1712:	60f8      	str	r0, [r7, #12]
    1714:	60b9      	str	r1, [r7, #8]
    1716:	607a      	str	r2, [r7, #4]
    1718:	603b      	str	r3, [r7, #0]
    171a:	68ba      	ldr	r2, [r7, #8]
    171c:	4b38      	ldr	r3, [pc, #224]	; (1800 <put_dump+0xf4>)
    171e:	0011      	movs	r1, r2
    1720:	0018      	movs	r0, r3
    1722:	f7ff ff9d 	bl	1660 <xprintf>
    1726:	683b      	ldr	r3, [r7, #0]
    1728:	2b02      	cmp	r3, #2
    172a:	d03c      	beq.n	17a6 <put_dump+0x9a>
    172c:	2b04      	cmp	r3, #4
    172e:	d04d      	beq.n	17cc <put_dump+0xc0>
    1730:	2b01      	cmp	r3, #1
    1732:	d15d      	bne.n	17f0 <put_dump+0xe4>
    1734:	68fb      	ldr	r3, [r7, #12]
    1736:	613b      	str	r3, [r7, #16]
    1738:	2300      	movs	r3, #0
    173a:	61fb      	str	r3, [r7, #28]
    173c:	e00c      	b.n	1758 <put_dump+0x4c>
    173e:	69fb      	ldr	r3, [r7, #28]
    1740:	693a      	ldr	r2, [r7, #16]
    1742:	18d3      	adds	r3, r2, r3
    1744:	781b      	ldrb	r3, [r3, #0]
    1746:	001a      	movs	r2, r3
    1748:	4b2e      	ldr	r3, [pc, #184]	; (1804 <put_dump+0xf8>)
    174a:	0011      	movs	r1, r2
    174c:	0018      	movs	r0, r3
    174e:	f7ff ff87 	bl	1660 <xprintf>
    1752:	69fb      	ldr	r3, [r7, #28]
    1754:	3301      	adds	r3, #1
    1756:	61fb      	str	r3, [r7, #28]
    1758:	69fa      	ldr	r2, [r7, #28]
    175a:	687b      	ldr	r3, [r7, #4]
    175c:	429a      	cmp	r2, r3
    175e:	dbee      	blt.n	173e <put_dump+0x32>
    1760:	2020      	movs	r0, #32
    1762:	f7ff fd8f 	bl	1284 <xputc>
    1766:	2300      	movs	r3, #0
    1768:	61fb      	str	r3, [r7, #28]
    176a:	e017      	b.n	179c <put_dump+0x90>
    176c:	69fb      	ldr	r3, [r7, #28]
    176e:	693a      	ldr	r2, [r7, #16]
    1770:	18d3      	adds	r3, r2, r3
    1772:	781b      	ldrb	r3, [r3, #0]
    1774:	2b1f      	cmp	r3, #31
    1776:	d90a      	bls.n	178e <put_dump+0x82>
    1778:	69fb      	ldr	r3, [r7, #28]
    177a:	693a      	ldr	r2, [r7, #16]
    177c:	18d3      	adds	r3, r2, r3
    177e:	781b      	ldrb	r3, [r3, #0]
    1780:	2b7e      	cmp	r3, #126	; 0x7e
    1782:	d804      	bhi.n	178e <put_dump+0x82>
    1784:	69fb      	ldr	r3, [r7, #28]
    1786:	693a      	ldr	r2, [r7, #16]
    1788:	18d3      	adds	r3, r2, r3
    178a:	781b      	ldrb	r3, [r3, #0]
    178c:	e000      	b.n	1790 <put_dump+0x84>
    178e:	232e      	movs	r3, #46	; 0x2e
    1790:	0018      	movs	r0, r3
    1792:	f7ff fd77 	bl	1284 <xputc>
    1796:	69fb      	ldr	r3, [r7, #28]
    1798:	3301      	adds	r3, #1
    179a:	61fb      	str	r3, [r7, #28]
    179c:	69fa      	ldr	r2, [r7, #28]
    179e:	687b      	ldr	r3, [r7, #4]
    17a0:	429a      	cmp	r2, r3
    17a2:	dbe3      	blt.n	176c <put_dump+0x60>
    17a4:	e024      	b.n	17f0 <put_dump+0xe4>
    17a6:	68fb      	ldr	r3, [r7, #12]
    17a8:	61bb      	str	r3, [r7, #24]
    17aa:	69bb      	ldr	r3, [r7, #24]
    17ac:	1c9a      	adds	r2, r3, #2
    17ae:	61ba      	str	r2, [r7, #24]
    17b0:	881b      	ldrh	r3, [r3, #0]
    17b2:	001a      	movs	r2, r3
    17b4:	4b14      	ldr	r3, [pc, #80]	; (1808 <put_dump+0xfc>)
    17b6:	0011      	movs	r1, r2
    17b8:	0018      	movs	r0, r3
    17ba:	f7ff ff51 	bl	1660 <xprintf>
    17be:	687b      	ldr	r3, [r7, #4]
    17c0:	3b01      	subs	r3, #1
    17c2:	607b      	str	r3, [r7, #4]
    17c4:	687b      	ldr	r3, [r7, #4]
    17c6:	2b00      	cmp	r3, #0
    17c8:	d1ef      	bne.n	17aa <put_dump+0x9e>
    17ca:	e011      	b.n	17f0 <put_dump+0xe4>
    17cc:	68fb      	ldr	r3, [r7, #12]
    17ce:	617b      	str	r3, [r7, #20]
    17d0:	697b      	ldr	r3, [r7, #20]
    17d2:	1d1a      	adds	r2, r3, #4
    17d4:	617a      	str	r2, [r7, #20]
    17d6:	681a      	ldr	r2, [r3, #0]
    17d8:	4b0c      	ldr	r3, [pc, #48]	; (180c <put_dump+0x100>)
    17da:	0011      	movs	r1, r2
    17dc:	0018      	movs	r0, r3
    17de:	f7ff ff3f 	bl	1660 <xprintf>
    17e2:	687b      	ldr	r3, [r7, #4]
    17e4:	3b01      	subs	r3, #1
    17e6:	607b      	str	r3, [r7, #4]
    17e8:	687b      	ldr	r3, [r7, #4]
    17ea:	2b00      	cmp	r3, #0
    17ec:	d1f0      	bne.n	17d0 <put_dump+0xc4>
    17ee:	46c0      	nop			; (mov r8, r8)
    17f0:	200a      	movs	r0, #10
    17f2:	f7ff fd47 	bl	1284 <xputc>
    17f6:	46c0      	nop			; (mov r8, r8)
    17f8:	46bd      	mov	sp, r7
    17fa:	b008      	add	sp, #32
    17fc:	bd80      	pop	{r7, pc}
    17fe:	46c0      	nop			; (mov r8, r8)
    1800:	00001eb4 	.word	0x00001eb4
    1804:	00001ebc 	.word	0x00001ebc
    1808:	00001ec4 	.word	0x00001ec4
    180c:	00001ecc 	.word	0x00001ecc

00001810 <xgets>:
    1810:	b580      	push	{r7, lr}
    1812:	b084      	sub	sp, #16
    1814:	af00      	add	r7, sp, #0
    1816:	6078      	str	r0, [r7, #4]
    1818:	6039      	str	r1, [r7, #0]
    181a:	4b24      	ldr	r3, [pc, #144]	; (18ac <xgets+0x9c>)
    181c:	681b      	ldr	r3, [r3, #0]
    181e:	2b00      	cmp	r3, #0
    1820:	d101      	bne.n	1826 <xgets+0x16>
    1822:	2300      	movs	r3, #0
    1824:	e03e      	b.n	18a4 <xgets+0x94>
    1826:	2300      	movs	r3, #0
    1828:	60fb      	str	r3, [r7, #12]
    182a:	4b20      	ldr	r3, [pc, #128]	; (18ac <xgets+0x9c>)
    182c:	681b      	ldr	r3, [r3, #0]
    182e:	4798      	blx	r3
    1830:	0003      	movs	r3, r0
    1832:	60bb      	str	r3, [r7, #8]
    1834:	68bb      	ldr	r3, [r7, #8]
    1836:	2b00      	cmp	r3, #0
    1838:	d101      	bne.n	183e <xgets+0x2e>
    183a:	2300      	movs	r3, #0
    183c:	e032      	b.n	18a4 <xgets+0x94>
    183e:	68bb      	ldr	r3, [r7, #8]
    1840:	2b0d      	cmp	r3, #13
    1842:	d025      	beq.n	1890 <xgets+0x80>
    1844:	68bb      	ldr	r3, [r7, #8]
    1846:	2b08      	cmp	r3, #8
    1848:	d10b      	bne.n	1862 <xgets+0x52>
    184a:	68fb      	ldr	r3, [r7, #12]
    184c:	2b00      	cmp	r3, #0
    184e:	d008      	beq.n	1862 <xgets+0x52>
    1850:	68fb      	ldr	r3, [r7, #12]
    1852:	3b01      	subs	r3, #1
    1854:	60fb      	str	r3, [r7, #12]
    1856:	68bb      	ldr	r3, [r7, #8]
    1858:	b2db      	uxtb	r3, r3
    185a:	0018      	movs	r0, r3
    185c:	f7ff fd12 	bl	1284 <xputc>
    1860:	e015      	b.n	188e <xgets+0x7e>
    1862:	68bb      	ldr	r3, [r7, #8]
    1864:	2b1f      	cmp	r3, #31
    1866:	dde0      	ble.n	182a <xgets+0x1a>
    1868:	683b      	ldr	r3, [r7, #0]
    186a:	1e5a      	subs	r2, r3, #1
    186c:	68fb      	ldr	r3, [r7, #12]
    186e:	429a      	cmp	r2, r3
    1870:	dddb      	ble.n	182a <xgets+0x1a>
    1872:	68fb      	ldr	r3, [r7, #12]
    1874:	1c5a      	adds	r2, r3, #1
    1876:	60fa      	str	r2, [r7, #12]
    1878:	001a      	movs	r2, r3
    187a:	687b      	ldr	r3, [r7, #4]
    187c:	189b      	adds	r3, r3, r2
    187e:	68ba      	ldr	r2, [r7, #8]
    1880:	b2d2      	uxtb	r2, r2
    1882:	701a      	strb	r2, [r3, #0]
    1884:	68bb      	ldr	r3, [r7, #8]
    1886:	b2db      	uxtb	r3, r3
    1888:	0018      	movs	r0, r3
    188a:	f7ff fcfb 	bl	1284 <xputc>
    188e:	e7cc      	b.n	182a <xgets+0x1a>
    1890:	46c0      	nop			; (mov r8, r8)
    1892:	68fb      	ldr	r3, [r7, #12]
    1894:	687a      	ldr	r2, [r7, #4]
    1896:	18d3      	adds	r3, r2, r3
    1898:	2200      	movs	r2, #0
    189a:	701a      	strb	r2, [r3, #0]
    189c:	200a      	movs	r0, #10
    189e:	f7ff fcf1 	bl	1284 <xputc>
    18a2:	2301      	movs	r3, #1
    18a4:	0018      	movs	r0, r3
    18a6:	46bd      	mov	sp, r7
    18a8:	b004      	add	sp, #16
    18aa:	bd80      	pop	{r7, pc}
    18ac:	20000564 	.word	0x20000564

000018b0 <xfgets>:
    18b0:	b580      	push	{r7, lr}
    18b2:	b086      	sub	sp, #24
    18b4:	af00      	add	r7, sp, #0
    18b6:	60f8      	str	r0, [r7, #12]
    18b8:	60b9      	str	r1, [r7, #8]
    18ba:	607a      	str	r2, [r7, #4]
    18bc:	4b0a      	ldr	r3, [pc, #40]	; (18e8 <xfgets+0x38>)
    18be:	681b      	ldr	r3, [r3, #0]
    18c0:	617b      	str	r3, [r7, #20]
    18c2:	4b09      	ldr	r3, [pc, #36]	; (18e8 <xfgets+0x38>)
    18c4:	68fa      	ldr	r2, [r7, #12]
    18c6:	601a      	str	r2, [r3, #0]
    18c8:	687a      	ldr	r2, [r7, #4]
    18ca:	68bb      	ldr	r3, [r7, #8]
    18cc:	0011      	movs	r1, r2
    18ce:	0018      	movs	r0, r3
    18d0:	f7ff ff9e 	bl	1810 <xgets>
    18d4:	0003      	movs	r3, r0
    18d6:	613b      	str	r3, [r7, #16]
    18d8:	4b03      	ldr	r3, [pc, #12]	; (18e8 <xfgets+0x38>)
    18da:	697a      	ldr	r2, [r7, #20]
    18dc:	601a      	str	r2, [r3, #0]
    18de:	693b      	ldr	r3, [r7, #16]
    18e0:	0018      	movs	r0, r3
    18e2:	46bd      	mov	sp, r7
    18e4:	b006      	add	sp, #24
    18e6:	bd80      	pop	{r7, pc}
    18e8:	20000564 	.word	0x20000564

000018ec <xatoi>:
    18ec:	b580      	push	{r7, lr}
    18ee:	b084      	sub	sp, #16
    18f0:	af00      	add	r7, sp, #0
    18f2:	6078      	str	r0, [r7, #4]
    18f4:	6039      	str	r1, [r7, #0]
    18f6:	2309      	movs	r3, #9
    18f8:	18fb      	adds	r3, r7, r3
    18fa:	2200      	movs	r2, #0
    18fc:	701a      	strb	r2, [r3, #0]
    18fe:	683b      	ldr	r3, [r7, #0]
    1900:	2200      	movs	r2, #0
    1902:	601a      	str	r2, [r3, #0]
    1904:	e004      	b.n	1910 <xatoi+0x24>
    1906:	687b      	ldr	r3, [r7, #4]
    1908:	681b      	ldr	r3, [r3, #0]
    190a:	1c5a      	adds	r2, r3, #1
    190c:	687b      	ldr	r3, [r7, #4]
    190e:	601a      	str	r2, [r3, #0]
    1910:	687b      	ldr	r3, [r7, #4]
    1912:	681a      	ldr	r2, [r3, #0]
    1914:	230b      	movs	r3, #11
    1916:	18fb      	adds	r3, r7, r3
    1918:	7812      	ldrb	r2, [r2, #0]
    191a:	701a      	strb	r2, [r3, #0]
    191c:	230b      	movs	r3, #11
    191e:	18fb      	adds	r3, r7, r3
    1920:	781b      	ldrb	r3, [r3, #0]
    1922:	2b20      	cmp	r3, #32
    1924:	d0ef      	beq.n	1906 <xatoi+0x1a>
    1926:	230b      	movs	r3, #11
    1928:	18fb      	adds	r3, r7, r3
    192a:	781b      	ldrb	r3, [r3, #0]
    192c:	2b2d      	cmp	r3, #45	; 0x2d
    192e:	d10e      	bne.n	194e <xatoi+0x62>
    1930:	2309      	movs	r3, #9
    1932:	18fb      	adds	r3, r7, r3
    1934:	2201      	movs	r2, #1
    1936:	701a      	strb	r2, [r3, #0]
    1938:	687b      	ldr	r3, [r7, #4]
    193a:	681b      	ldr	r3, [r3, #0]
    193c:	1c5a      	adds	r2, r3, #1
    193e:	687b      	ldr	r3, [r7, #4]
    1940:	601a      	str	r2, [r3, #0]
    1942:	687b      	ldr	r3, [r7, #4]
    1944:	681a      	ldr	r2, [r3, #0]
    1946:	230b      	movs	r3, #11
    1948:	18fb      	adds	r3, r7, r3
    194a:	7812      	ldrb	r2, [r2, #0]
    194c:	701a      	strb	r2, [r3, #0]
    194e:	230b      	movs	r3, #11
    1950:	18fb      	adds	r3, r7, r3
    1952:	781b      	ldrb	r3, [r3, #0]
    1954:	2b30      	cmp	r3, #48	; 0x30
    1956:	d149      	bne.n	19ec <xatoi+0x100>
    1958:	687b      	ldr	r3, [r7, #4]
    195a:	681b      	ldr	r3, [r3, #0]
    195c:	1c5a      	adds	r2, r3, #1
    195e:	687b      	ldr	r3, [r7, #4]
    1960:	601a      	str	r2, [r3, #0]
    1962:	687b      	ldr	r3, [r7, #4]
    1964:	681a      	ldr	r2, [r3, #0]
    1966:	230b      	movs	r3, #11
    1968:	18fb      	adds	r3, r7, r3
    196a:	7812      	ldrb	r2, [r2, #0]
    196c:	701a      	strb	r2, [r3, #0]
    196e:	230b      	movs	r3, #11
    1970:	18fb      	adds	r3, r7, r3
    1972:	781b      	ldrb	r3, [r3, #0]
    1974:	2b62      	cmp	r3, #98	; 0x62
    1976:	d011      	beq.n	199c <xatoi+0xb0>
    1978:	2b78      	cmp	r3, #120	; 0x78
    197a:	d11f      	bne.n	19bc <xatoi+0xd0>
    197c:	230a      	movs	r3, #10
    197e:	18fb      	adds	r3, r7, r3
    1980:	2210      	movs	r2, #16
    1982:	701a      	strb	r2, [r3, #0]
    1984:	687b      	ldr	r3, [r7, #4]
    1986:	681b      	ldr	r3, [r3, #0]
    1988:	1c5a      	adds	r2, r3, #1
    198a:	687b      	ldr	r3, [r7, #4]
    198c:	601a      	str	r2, [r3, #0]
    198e:	687b      	ldr	r3, [r7, #4]
    1990:	681a      	ldr	r2, [r3, #0]
    1992:	230b      	movs	r3, #11
    1994:	18fb      	adds	r3, r7, r3
    1996:	7812      	ldrb	r2, [r2, #0]
    1998:	701a      	strb	r2, [r3, #0]
    199a:	e037      	b.n	1a0c <xatoi+0x120>
    199c:	230a      	movs	r3, #10
    199e:	18fb      	adds	r3, r7, r3
    19a0:	2202      	movs	r2, #2
    19a2:	701a      	strb	r2, [r3, #0]
    19a4:	687b      	ldr	r3, [r7, #4]
    19a6:	681b      	ldr	r3, [r3, #0]
    19a8:	1c5a      	adds	r2, r3, #1
    19aa:	687b      	ldr	r3, [r7, #4]
    19ac:	601a      	str	r2, [r3, #0]
    19ae:	687b      	ldr	r3, [r7, #4]
    19b0:	681a      	ldr	r2, [r3, #0]
    19b2:	230b      	movs	r3, #11
    19b4:	18fb      	adds	r3, r7, r3
    19b6:	7812      	ldrb	r2, [r2, #0]
    19b8:	701a      	strb	r2, [r3, #0]
    19ba:	e027      	b.n	1a0c <xatoi+0x120>
    19bc:	230b      	movs	r3, #11
    19be:	18fb      	adds	r3, r7, r3
    19c0:	781b      	ldrb	r3, [r3, #0]
    19c2:	2b20      	cmp	r3, #32
    19c4:	d801      	bhi.n	19ca <xatoi+0xde>
    19c6:	2301      	movs	r3, #1
    19c8:	e079      	b.n	1abe <xatoi+0x1d2>
    19ca:	230b      	movs	r3, #11
    19cc:	18fb      	adds	r3, r7, r3
    19ce:	781b      	ldrb	r3, [r3, #0]
    19d0:	2b2f      	cmp	r3, #47	; 0x2f
    19d2:	d904      	bls.n	19de <xatoi+0xf2>
    19d4:	230b      	movs	r3, #11
    19d6:	18fb      	adds	r3, r7, r3
    19d8:	781b      	ldrb	r3, [r3, #0]
    19da:	2b39      	cmp	r3, #57	; 0x39
    19dc:	d901      	bls.n	19e2 <xatoi+0xf6>
    19de:	2300      	movs	r3, #0
    19e0:	e06d      	b.n	1abe <xatoi+0x1d2>
    19e2:	230a      	movs	r3, #10
    19e4:	18fb      	adds	r3, r7, r3
    19e6:	2208      	movs	r2, #8
    19e8:	701a      	strb	r2, [r3, #0]
    19ea:	e00f      	b.n	1a0c <xatoi+0x120>
    19ec:	230b      	movs	r3, #11
    19ee:	18fb      	adds	r3, r7, r3
    19f0:	781b      	ldrb	r3, [r3, #0]
    19f2:	2b2f      	cmp	r3, #47	; 0x2f
    19f4:	d904      	bls.n	1a00 <xatoi+0x114>
    19f6:	230b      	movs	r3, #11
    19f8:	18fb      	adds	r3, r7, r3
    19fa:	781b      	ldrb	r3, [r3, #0]
    19fc:	2b39      	cmp	r3, #57	; 0x39
    19fe:	d901      	bls.n	1a04 <xatoi+0x118>
    1a00:	2300      	movs	r3, #0
    1a02:	e05c      	b.n	1abe <xatoi+0x1d2>
    1a04:	230a      	movs	r3, #10
    1a06:	18fb      	adds	r3, r7, r3
    1a08:	220a      	movs	r2, #10
    1a0a:	701a      	strb	r2, [r3, #0]
    1a0c:	2300      	movs	r3, #0
    1a0e:	60fb      	str	r3, [r7, #12]
    1a10:	e044      	b.n	1a9c <xatoi+0x1b0>
    1a12:	230b      	movs	r3, #11
    1a14:	18fb      	adds	r3, r7, r3
    1a16:	781b      	ldrb	r3, [r3, #0]
    1a18:	2b60      	cmp	r3, #96	; 0x60
    1a1a:	d906      	bls.n	1a2a <xatoi+0x13e>
    1a1c:	230b      	movs	r3, #11
    1a1e:	18fb      	adds	r3, r7, r3
    1a20:	220b      	movs	r2, #11
    1a22:	18ba      	adds	r2, r7, r2
    1a24:	7812      	ldrb	r2, [r2, #0]
    1a26:	3a20      	subs	r2, #32
    1a28:	701a      	strb	r2, [r3, #0]
    1a2a:	230b      	movs	r3, #11
    1a2c:	18fb      	adds	r3, r7, r3
    1a2e:	220b      	movs	r2, #11
    1a30:	18ba      	adds	r2, r7, r2
    1a32:	7812      	ldrb	r2, [r2, #0]
    1a34:	3a30      	subs	r2, #48	; 0x30
    1a36:	701a      	strb	r2, [r3, #0]
    1a38:	230b      	movs	r3, #11
    1a3a:	18fb      	adds	r3, r7, r3
    1a3c:	781b      	ldrb	r3, [r3, #0]
    1a3e:	2b10      	cmp	r3, #16
    1a40:	d90d      	bls.n	1a5e <xatoi+0x172>
    1a42:	230b      	movs	r3, #11
    1a44:	18fb      	adds	r3, r7, r3
    1a46:	220b      	movs	r2, #11
    1a48:	18ba      	adds	r2, r7, r2
    1a4a:	7812      	ldrb	r2, [r2, #0]
    1a4c:	3a07      	subs	r2, #7
    1a4e:	701a      	strb	r2, [r3, #0]
    1a50:	230b      	movs	r3, #11
    1a52:	18fb      	adds	r3, r7, r3
    1a54:	781b      	ldrb	r3, [r3, #0]
    1a56:	2b09      	cmp	r3, #9
    1a58:	d801      	bhi.n	1a5e <xatoi+0x172>
    1a5a:	2300      	movs	r3, #0
    1a5c:	e02f      	b.n	1abe <xatoi+0x1d2>
    1a5e:	230b      	movs	r3, #11
    1a60:	18fa      	adds	r2, r7, r3
    1a62:	230a      	movs	r3, #10
    1a64:	18fb      	adds	r3, r7, r3
    1a66:	7812      	ldrb	r2, [r2, #0]
    1a68:	781b      	ldrb	r3, [r3, #0]
    1a6a:	429a      	cmp	r2, r3
    1a6c:	d301      	bcc.n	1a72 <xatoi+0x186>
    1a6e:	2300      	movs	r3, #0
    1a70:	e025      	b.n	1abe <xatoi+0x1d2>
    1a72:	230a      	movs	r3, #10
    1a74:	18fb      	adds	r3, r7, r3
    1a76:	781b      	ldrb	r3, [r3, #0]
    1a78:	68fa      	ldr	r2, [r7, #12]
    1a7a:	435a      	muls	r2, r3
    1a7c:	230b      	movs	r3, #11
    1a7e:	18fb      	adds	r3, r7, r3
    1a80:	781b      	ldrb	r3, [r3, #0]
    1a82:	18d3      	adds	r3, r2, r3
    1a84:	60fb      	str	r3, [r7, #12]
    1a86:	687b      	ldr	r3, [r7, #4]
    1a88:	681b      	ldr	r3, [r3, #0]
    1a8a:	1c5a      	adds	r2, r3, #1
    1a8c:	687b      	ldr	r3, [r7, #4]
    1a8e:	601a      	str	r2, [r3, #0]
    1a90:	687b      	ldr	r3, [r7, #4]
    1a92:	681a      	ldr	r2, [r3, #0]
    1a94:	230b      	movs	r3, #11
    1a96:	18fb      	adds	r3, r7, r3
    1a98:	7812      	ldrb	r2, [r2, #0]
    1a9a:	701a      	strb	r2, [r3, #0]
    1a9c:	230b      	movs	r3, #11
    1a9e:	18fb      	adds	r3, r7, r3
    1aa0:	781b      	ldrb	r3, [r3, #0]
    1aa2:	2b20      	cmp	r3, #32
    1aa4:	d8b5      	bhi.n	1a12 <xatoi+0x126>
    1aa6:	2309      	movs	r3, #9
    1aa8:	18fb      	adds	r3, r7, r3
    1aaa:	781b      	ldrb	r3, [r3, #0]
    1aac:	2b00      	cmp	r3, #0
    1aae:	d002      	beq.n	1ab6 <xatoi+0x1ca>
    1ab0:	68fb      	ldr	r3, [r7, #12]
    1ab2:	425b      	negs	r3, r3
    1ab4:	60fb      	str	r3, [r7, #12]
    1ab6:	68fa      	ldr	r2, [r7, #12]
    1ab8:	683b      	ldr	r3, [r7, #0]
    1aba:	601a      	str	r2, [r3, #0]
    1abc:	2301      	movs	r3, #1
    1abe:	0018      	movs	r0, r3
    1ac0:	46bd      	mov	sp, r7
    1ac2:	b004      	add	sp, #16
    1ac4:	bd80      	pop	{r7, pc}
    1ac6:	46c0      	nop			; (mov r8, r8)

00001ac8 <mil_cpy>:
    1ac8:	8802      	ldrh	r2, [r0, #0]
    1aca:	4b30      	ldr	r3, [pc, #192]	; (1b8c <mil_cpy+0xc4>)
    1acc:	601a      	str	r2, [r3, #0]
    1ace:	8842      	ldrh	r2, [r0, #2]
    1ad0:	4b2f      	ldr	r3, [pc, #188]	; (1b90 <mil_cpy+0xc8>)
    1ad2:	601a      	str	r2, [r3, #0]
    1ad4:	8882      	ldrh	r2, [r0, #4]
    1ad6:	4b2f      	ldr	r3, [pc, #188]	; (1b94 <mil_cpy+0xcc>)
    1ad8:	601a      	str	r2, [r3, #0]
    1ada:	88c2      	ldrh	r2, [r0, #6]
    1adc:	4b2e      	ldr	r3, [pc, #184]	; (1b98 <mil_cpy+0xd0>)
    1ade:	601a      	str	r2, [r3, #0]
    1ae0:	8902      	ldrh	r2, [r0, #8]
    1ae2:	4b2e      	ldr	r3, [pc, #184]	; (1b9c <mil_cpy+0xd4>)
    1ae4:	601a      	str	r2, [r3, #0]
    1ae6:	8942      	ldrh	r2, [r0, #10]
    1ae8:	4b2d      	ldr	r3, [pc, #180]	; (1ba0 <mil_cpy+0xd8>)
    1aea:	601a      	str	r2, [r3, #0]
    1aec:	8982      	ldrh	r2, [r0, #12]
    1aee:	4b2d      	ldr	r3, [pc, #180]	; (1ba4 <mil_cpy+0xdc>)
    1af0:	601a      	str	r2, [r3, #0]
    1af2:	89c2      	ldrh	r2, [r0, #14]
    1af4:	4b2c      	ldr	r3, [pc, #176]	; (1ba8 <mil_cpy+0xe0>)
    1af6:	601a      	str	r2, [r3, #0]
    1af8:	8a02      	ldrh	r2, [r0, #16]
    1afa:	4b2c      	ldr	r3, [pc, #176]	; (1bac <mil_cpy+0xe4>)
    1afc:	601a      	str	r2, [r3, #0]
    1afe:	8a42      	ldrh	r2, [r0, #18]
    1b00:	4b2b      	ldr	r3, [pc, #172]	; (1bb0 <mil_cpy+0xe8>)
    1b02:	601a      	str	r2, [r3, #0]
    1b04:	8a82      	ldrh	r2, [r0, #20]
    1b06:	4b2b      	ldr	r3, [pc, #172]	; (1bb4 <mil_cpy+0xec>)
    1b08:	601a      	str	r2, [r3, #0]
    1b0a:	8ac2      	ldrh	r2, [r0, #22]
    1b0c:	4b2a      	ldr	r3, [pc, #168]	; (1bb8 <mil_cpy+0xf0>)
    1b0e:	601a      	str	r2, [r3, #0]
    1b10:	8b02      	ldrh	r2, [r0, #24]
    1b12:	4b2a      	ldr	r3, [pc, #168]	; (1bbc <mil_cpy+0xf4>)
    1b14:	601a      	str	r2, [r3, #0]
    1b16:	8b42      	ldrh	r2, [r0, #26]
    1b18:	4b29      	ldr	r3, [pc, #164]	; (1bc0 <mil_cpy+0xf8>)
    1b1a:	601a      	str	r2, [r3, #0]
    1b1c:	8b82      	ldrh	r2, [r0, #28]
    1b1e:	4b29      	ldr	r3, [pc, #164]	; (1bc4 <mil_cpy+0xfc>)
    1b20:	601a      	str	r2, [r3, #0]
    1b22:	8bc2      	ldrh	r2, [r0, #30]
    1b24:	4b28      	ldr	r3, [pc, #160]	; (1bc8 <mil_cpy+0x100>)
    1b26:	601a      	str	r2, [r3, #0]
    1b28:	8c02      	ldrh	r2, [r0, #32]
    1b2a:	4b28      	ldr	r3, [pc, #160]	; (1bcc <mil_cpy+0x104>)
    1b2c:	601a      	str	r2, [r3, #0]
    1b2e:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1b30:	4b27      	ldr	r3, [pc, #156]	; (1bd0 <mil_cpy+0x108>)
    1b32:	601a      	str	r2, [r3, #0]
    1b34:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1b36:	4b27      	ldr	r3, [pc, #156]	; (1bd4 <mil_cpy+0x10c>)
    1b38:	601a      	str	r2, [r3, #0]
    1b3a:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1b3c:	4b26      	ldr	r3, [pc, #152]	; (1bd8 <mil_cpy+0x110>)
    1b3e:	601a      	str	r2, [r3, #0]
    1b40:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1b42:	4b26      	ldr	r3, [pc, #152]	; (1bdc <mil_cpy+0x114>)
    1b44:	601a      	str	r2, [r3, #0]
    1b46:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1b48:	4b25      	ldr	r3, [pc, #148]	; (1be0 <mil_cpy+0x118>)
    1b4a:	601a      	str	r2, [r3, #0]
    1b4c:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1b4e:	4b25      	ldr	r3, [pc, #148]	; (1be4 <mil_cpy+0x11c>)
    1b50:	601a      	str	r2, [r3, #0]
    1b52:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1b54:	4b24      	ldr	r3, [pc, #144]	; (1be8 <mil_cpy+0x120>)
    1b56:	601a      	str	r2, [r3, #0]
    1b58:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1b5a:	4b24      	ldr	r3, [pc, #144]	; (1bec <mil_cpy+0x124>)
    1b5c:	601a      	str	r2, [r3, #0]
    1b5e:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1b60:	4b23      	ldr	r3, [pc, #140]	; (1bf0 <mil_cpy+0x128>)
    1b62:	601a      	str	r2, [r3, #0]
    1b64:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1b66:	4b23      	ldr	r3, [pc, #140]	; (1bf4 <mil_cpy+0x12c>)
    1b68:	601a      	str	r2, [r3, #0]
    1b6a:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1b6c:	4b22      	ldr	r3, [pc, #136]	; (1bf8 <mil_cpy+0x130>)
    1b6e:	601a      	str	r2, [r3, #0]
    1b70:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1b72:	4b22      	ldr	r3, [pc, #136]	; (1bfc <mil_cpy+0x134>)
    1b74:	601a      	str	r2, [r3, #0]
    1b76:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1b78:	4b21      	ldr	r3, [pc, #132]	; (1c00 <mil_cpy+0x138>)
    1b7a:	601a      	str	r2, [r3, #0]
    1b7c:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1b7e:	4b21      	ldr	r3, [pc, #132]	; (1c04 <mil_cpy+0x13c>)
    1b80:	601a      	str	r2, [r3, #0]
    1b82:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1b84:	4b20      	ldr	r3, [pc, #128]	; (1c08 <mil_cpy+0x140>)
    1b86:	601a      	str	r2, [r3, #0]
    1b88:	4770      	bx	lr
    1b8a:	46c0      	nop			; (mov r8, r8)
    1b8c:	40048080 	.word	0x40048080
    1b90:	40048084 	.word	0x40048084
    1b94:	40048088 	.word	0x40048088
    1b98:	4004808c 	.word	0x4004808c
    1b9c:	40048090 	.word	0x40048090
    1ba0:	40048094 	.word	0x40048094
    1ba4:	40048098 	.word	0x40048098
    1ba8:	4004809c 	.word	0x4004809c
    1bac:	400480a0 	.word	0x400480a0
    1bb0:	400480a4 	.word	0x400480a4
    1bb4:	400480a8 	.word	0x400480a8
    1bb8:	400480ac 	.word	0x400480ac
    1bbc:	400480b0 	.word	0x400480b0
    1bc0:	400480b4 	.word	0x400480b4
    1bc4:	400480b8 	.word	0x400480b8
    1bc8:	400480bc 	.word	0x400480bc
    1bcc:	400480c0 	.word	0x400480c0
    1bd0:	400480c4 	.word	0x400480c4
    1bd4:	400480c8 	.word	0x400480c8
    1bd8:	400480cc 	.word	0x400480cc
    1bdc:	400480d0 	.word	0x400480d0
    1be0:	400480d4 	.word	0x400480d4
    1be4:	400480d8 	.word	0x400480d8
    1be8:	400480dc 	.word	0x400480dc
    1bec:	400480e0 	.word	0x400480e0
    1bf0:	400480e4 	.word	0x400480e4
    1bf4:	400480e8 	.word	0x400480e8
    1bf8:	400480ec 	.word	0x400480ec
    1bfc:	400480f0 	.word	0x400480f0
    1c00:	400480f4 	.word	0x400480f4
    1c04:	400480f8 	.word	0x400480f8
    1c08:	400480fc 	.word	0x400480fc

00001c0c <adc_dma_init>:
    1c0c:	b580      	push	{r7, lr}
    1c0e:	af00      	add	r7, sp, #0
    1c10:	4b18      	ldr	r3, [pc, #96]	; (1c74 <adc_dma_init+0x68>)
    1c12:	4a18      	ldr	r2, [pc, #96]	; (1c74 <adc_dma_init+0x68>)
    1c14:	69d2      	ldr	r2, [r2, #28]
    1c16:	2120      	movs	r1, #32
    1c18:	430a      	orrs	r2, r1
    1c1a:	61da      	str	r2, [r3, #28]
    1c1c:	4b16      	ldr	r3, [pc, #88]	; (1c78 <adc_dma_init+0x6c>)
    1c1e:	4a17      	ldr	r2, [pc, #92]	; (1c7c <adc_dma_init+0x70>)
    1c20:	609a      	str	r2, [r3, #8]
    1c22:	4b15      	ldr	r3, [pc, #84]	; (1c78 <adc_dma_init+0x6c>)
    1c24:	2201      	movs	r2, #1
    1c26:	4252      	negs	r2, r2
    1c28:	62da      	str	r2, [r3, #44]	; 0x2c
    1c2a:	4b13      	ldr	r3, [pc, #76]	; (1c78 <adc_dma_init+0x6c>)
    1c2c:	2201      	movs	r2, #1
    1c2e:	4252      	negs	r2, r2
    1c30:	621a      	str	r2, [r3, #32]
    1c32:	4b11      	ldr	r3, [pc, #68]	; (1c78 <adc_dma_init+0x6c>)
    1c34:	2201      	movs	r2, #1
    1c36:	4252      	negs	r2, r2
    1c38:	635a      	str	r2, [r3, #52]	; 0x34
    1c3a:	4b0f      	ldr	r3, [pc, #60]	; (1c78 <adc_dma_init+0x6c>)
    1c3c:	2280      	movs	r2, #128	; 0x80
    1c3e:	05d2      	lsls	r2, r2, #23
    1c40:	61da      	str	r2, [r3, #28]
    1c42:	4b0d      	ldr	r3, [pc, #52]	; (1c78 <adc_dma_init+0x6c>)
    1c44:	2280      	movs	r2, #128	; 0x80
    1c46:	05d2      	lsls	r2, r2, #23
    1c48:	625a      	str	r2, [r3, #36]	; 0x24
    1c4a:	4b0b      	ldr	r3, [pc, #44]	; (1c78 <adc_dma_init+0x6c>)
    1c4c:	2201      	movs	r2, #1
    1c4e:	605a      	str	r2, [r3, #4]
    1c50:	4a0a      	ldr	r2, [pc, #40]	; (1c7c <adc_dma_init+0x70>)
    1c52:	23f0      	movs	r3, #240	; 0xf0
    1c54:	005b      	lsls	r3, r3, #1
    1c56:	490a      	ldr	r1, [pc, #40]	; (1c80 <adc_dma_init+0x74>)
    1c58:	50d1      	str	r1, [r2, r3]
    1c5a:	490a      	ldr	r1, [pc, #40]	; (1c84 <adc_dma_init+0x78>)
    1c5c:	4a07      	ldr	r2, [pc, #28]	; (1c7c <adc_dma_init+0x70>)
    1c5e:	23f2      	movs	r3, #242	; 0xf2
    1c60:	005b      	lsls	r3, r3, #1
    1c62:	50d1      	str	r1, [r2, r3]
    1c64:	4a05      	ldr	r2, [pc, #20]	; (1c7c <adc_dma_init+0x70>)
    1c66:	23f4      	movs	r3, #244	; 0xf4
    1c68:	005b      	lsls	r3, r3, #1
    1c6a:	4907      	ldr	r1, [pc, #28]	; (1c88 <adc_dma_init+0x7c>)
    1c6c:	50d1      	str	r1, [r2, r3]
    1c6e:	46c0      	nop			; (mov r8, r8)
    1c70:	46bd      	mov	sp, r7
    1c72:	bd80      	pop	{r7, pc}
    1c74:	40020000 	.word	0x40020000
    1c78:	40028000 	.word	0x40028000
    1c7c:	20100000 	.word	0x20100000
    1c80:	40088018 	.word	0x40088018
    1c84:	2010020c 	.word	0x2010020c
    1c88:	ae000031 	.word	0xae000031

00001c8c <adc_dma_start>:
    1c8c:	b580      	push	{r7, lr}
    1c8e:	af00      	add	r7, sp, #0
    1c90:	4b06      	ldr	r3, [pc, #24]	; (1cac <adc_dma_start+0x20>)
    1c92:	4a06      	ldr	r2, [pc, #24]	; (1cac <adc_dma_start+0x20>)
    1c94:	6812      	ldr	r2, [r2, #0]
    1c96:	2108      	movs	r1, #8
    1c98:	430a      	orrs	r2, r1
    1c9a:	601a      	str	r2, [r3, #0]
    1c9c:	4b04      	ldr	r3, [pc, #16]	; (1cb0 <adc_dma_start+0x24>)
    1c9e:	2280      	movs	r2, #128	; 0x80
    1ca0:	05d2      	lsls	r2, r2, #23
    1ca2:	629a      	str	r2, [r3, #40]	; 0x28
    1ca4:	46c0      	nop			; (mov r8, r8)
    1ca6:	46bd      	mov	sp, r7
    1ca8:	bd80      	pop	{r7, pc}
    1caa:	46c0      	nop			; (mov r8, r8)
    1cac:	40088000 	.word	0x40088000
    1cb0:	40028000 	.word	0x40028000

00001cb4 <adc_dma_wait>:
    1cb4:	b580      	push	{r7, lr}
    1cb6:	af00      	add	r7, sp, #0
    1cb8:	46c0      	nop			; (mov r8, r8)
    1cba:	4a0a      	ldr	r2, [pc, #40]	; (1ce4 <adc_dma_wait+0x30>)
    1cbc:	23f4      	movs	r3, #244	; 0xf4
    1cbe:	005b      	lsls	r3, r3, #1
    1cc0:	58d3      	ldr	r3, [r2, r3]
    1cc2:	2207      	movs	r2, #7
    1cc4:	4013      	ands	r3, r2
    1cc6:	d1f8      	bne.n	1cba <adc_dma_wait+0x6>
    1cc8:	4b07      	ldr	r3, [pc, #28]	; (1ce8 <adc_dma_wait+0x34>)
    1cca:	4a07      	ldr	r2, [pc, #28]	; (1ce8 <adc_dma_wait+0x34>)
    1ccc:	6812      	ldr	r2, [r2, #0]
    1cce:	2108      	movs	r1, #8
    1cd0:	438a      	bics	r2, r1
    1cd2:	601a      	str	r2, [r3, #0]
    1cd4:	4a03      	ldr	r2, [pc, #12]	; (1ce4 <adc_dma_wait+0x30>)
    1cd6:	23f4      	movs	r3, #244	; 0xf4
    1cd8:	005b      	lsls	r3, r3, #1
    1cda:	4904      	ldr	r1, [pc, #16]	; (1cec <adc_dma_wait+0x38>)
    1cdc:	50d1      	str	r1, [r2, r3]
    1cde:	46c0      	nop			; (mov r8, r8)
    1ce0:	46bd      	mov	sp, r7
    1ce2:	bd80      	pop	{r7, pc}
    1ce4:	20100000 	.word	0x20100000
    1ce8:	40088000 	.word	0x40088000
    1cec:	ae000031 	.word	0xae000031

00001cf0 <adc_dma_check>:
    1cf0:	b580      	push	{r7, lr}
    1cf2:	af00      	add	r7, sp, #0
    1cf4:	4a0b      	ldr	r2, [pc, #44]	; (1d24 <adc_dma_check+0x34>)
    1cf6:	23f4      	movs	r3, #244	; 0xf4
    1cf8:	005b      	lsls	r3, r3, #1
    1cfa:	58d3      	ldr	r3, [r2, r3]
    1cfc:	2207      	movs	r2, #7
    1cfe:	4013      	ands	r3, r2
    1d00:	d001      	beq.n	1d06 <adc_dma_check+0x16>
    1d02:	2300      	movs	r3, #0
    1d04:	e00b      	b.n	1d1e <adc_dma_check+0x2e>
    1d06:	4b08      	ldr	r3, [pc, #32]	; (1d28 <adc_dma_check+0x38>)
    1d08:	4a07      	ldr	r2, [pc, #28]	; (1d28 <adc_dma_check+0x38>)
    1d0a:	6812      	ldr	r2, [r2, #0]
    1d0c:	2108      	movs	r1, #8
    1d0e:	438a      	bics	r2, r1
    1d10:	601a      	str	r2, [r3, #0]
    1d12:	4a04      	ldr	r2, [pc, #16]	; (1d24 <adc_dma_check+0x34>)
    1d14:	23f4      	movs	r3, #244	; 0xf4
    1d16:	005b      	lsls	r3, r3, #1
    1d18:	4904      	ldr	r1, [pc, #16]	; (1d2c <adc_dma_check+0x3c>)
    1d1a:	50d1      	str	r1, [r2, r3]
    1d1c:	2301      	movs	r3, #1
    1d1e:	0018      	movs	r0, r3
    1d20:	46bd      	mov	sp, r7
    1d22:	bd80      	pop	{r7, pc}
    1d24:	20100000 	.word	0x20100000
    1d28:	40088000 	.word	0x40088000
    1d2c:	ae000031 	.word	0xae000031

00001d30 <__aeabi_uidiv>:
    1d30:	2200      	movs	r2, #0
    1d32:	0843      	lsrs	r3, r0, #1
    1d34:	428b      	cmp	r3, r1
    1d36:	d374      	bcc.n	1e22 <__aeabi_uidiv+0xf2>
    1d38:	0903      	lsrs	r3, r0, #4
    1d3a:	428b      	cmp	r3, r1
    1d3c:	d35f      	bcc.n	1dfe <__aeabi_uidiv+0xce>
    1d3e:	0a03      	lsrs	r3, r0, #8
    1d40:	428b      	cmp	r3, r1
    1d42:	d344      	bcc.n	1dce <__aeabi_uidiv+0x9e>
    1d44:	0b03      	lsrs	r3, r0, #12
    1d46:	428b      	cmp	r3, r1
    1d48:	d328      	bcc.n	1d9c <__aeabi_uidiv+0x6c>
    1d4a:	0c03      	lsrs	r3, r0, #16
    1d4c:	428b      	cmp	r3, r1
    1d4e:	d30d      	bcc.n	1d6c <__aeabi_uidiv+0x3c>
    1d50:	22ff      	movs	r2, #255	; 0xff
    1d52:	0209      	lsls	r1, r1, #8
    1d54:	ba12      	rev	r2, r2
    1d56:	0c03      	lsrs	r3, r0, #16
    1d58:	428b      	cmp	r3, r1
    1d5a:	d302      	bcc.n	1d62 <__aeabi_uidiv+0x32>
    1d5c:	1212      	asrs	r2, r2, #8
    1d5e:	0209      	lsls	r1, r1, #8
    1d60:	d065      	beq.n	1e2e <__aeabi_uidiv+0xfe>
    1d62:	0b03      	lsrs	r3, r0, #12
    1d64:	428b      	cmp	r3, r1
    1d66:	d319      	bcc.n	1d9c <__aeabi_uidiv+0x6c>
    1d68:	e000      	b.n	1d6c <__aeabi_uidiv+0x3c>
    1d6a:	0a09      	lsrs	r1, r1, #8
    1d6c:	0bc3      	lsrs	r3, r0, #15
    1d6e:	428b      	cmp	r3, r1
    1d70:	d301      	bcc.n	1d76 <__aeabi_uidiv+0x46>
    1d72:	03cb      	lsls	r3, r1, #15
    1d74:	1ac0      	subs	r0, r0, r3
    1d76:	4152      	adcs	r2, r2
    1d78:	0b83      	lsrs	r3, r0, #14
    1d7a:	428b      	cmp	r3, r1
    1d7c:	d301      	bcc.n	1d82 <__aeabi_uidiv+0x52>
    1d7e:	038b      	lsls	r3, r1, #14
    1d80:	1ac0      	subs	r0, r0, r3
    1d82:	4152      	adcs	r2, r2
    1d84:	0b43      	lsrs	r3, r0, #13
    1d86:	428b      	cmp	r3, r1
    1d88:	d301      	bcc.n	1d8e <__aeabi_uidiv+0x5e>
    1d8a:	034b      	lsls	r3, r1, #13
    1d8c:	1ac0      	subs	r0, r0, r3
    1d8e:	4152      	adcs	r2, r2
    1d90:	0b03      	lsrs	r3, r0, #12
    1d92:	428b      	cmp	r3, r1
    1d94:	d301      	bcc.n	1d9a <__aeabi_uidiv+0x6a>
    1d96:	030b      	lsls	r3, r1, #12
    1d98:	1ac0      	subs	r0, r0, r3
    1d9a:	4152      	adcs	r2, r2
    1d9c:	0ac3      	lsrs	r3, r0, #11
    1d9e:	428b      	cmp	r3, r1
    1da0:	d301      	bcc.n	1da6 <__aeabi_uidiv+0x76>
    1da2:	02cb      	lsls	r3, r1, #11
    1da4:	1ac0      	subs	r0, r0, r3
    1da6:	4152      	adcs	r2, r2
    1da8:	0a83      	lsrs	r3, r0, #10
    1daa:	428b      	cmp	r3, r1
    1dac:	d301      	bcc.n	1db2 <__aeabi_uidiv+0x82>
    1dae:	028b      	lsls	r3, r1, #10
    1db0:	1ac0      	subs	r0, r0, r3
    1db2:	4152      	adcs	r2, r2
    1db4:	0a43      	lsrs	r3, r0, #9
    1db6:	428b      	cmp	r3, r1
    1db8:	d301      	bcc.n	1dbe <__aeabi_uidiv+0x8e>
    1dba:	024b      	lsls	r3, r1, #9
    1dbc:	1ac0      	subs	r0, r0, r3
    1dbe:	4152      	adcs	r2, r2
    1dc0:	0a03      	lsrs	r3, r0, #8
    1dc2:	428b      	cmp	r3, r1
    1dc4:	d301      	bcc.n	1dca <__aeabi_uidiv+0x9a>
    1dc6:	020b      	lsls	r3, r1, #8
    1dc8:	1ac0      	subs	r0, r0, r3
    1dca:	4152      	adcs	r2, r2
    1dcc:	d2cd      	bcs.n	1d6a <__aeabi_uidiv+0x3a>
    1dce:	09c3      	lsrs	r3, r0, #7
    1dd0:	428b      	cmp	r3, r1
    1dd2:	d301      	bcc.n	1dd8 <__aeabi_uidiv+0xa8>
    1dd4:	01cb      	lsls	r3, r1, #7
    1dd6:	1ac0      	subs	r0, r0, r3
    1dd8:	4152      	adcs	r2, r2
    1dda:	0983      	lsrs	r3, r0, #6
    1ddc:	428b      	cmp	r3, r1
    1dde:	d301      	bcc.n	1de4 <__aeabi_uidiv+0xb4>
    1de0:	018b      	lsls	r3, r1, #6
    1de2:	1ac0      	subs	r0, r0, r3
    1de4:	4152      	adcs	r2, r2
    1de6:	0943      	lsrs	r3, r0, #5
    1de8:	428b      	cmp	r3, r1
    1dea:	d301      	bcc.n	1df0 <__aeabi_uidiv+0xc0>
    1dec:	014b      	lsls	r3, r1, #5
    1dee:	1ac0      	subs	r0, r0, r3
    1df0:	4152      	adcs	r2, r2
    1df2:	0903      	lsrs	r3, r0, #4
    1df4:	428b      	cmp	r3, r1
    1df6:	d301      	bcc.n	1dfc <__aeabi_uidiv+0xcc>
    1df8:	010b      	lsls	r3, r1, #4
    1dfa:	1ac0      	subs	r0, r0, r3
    1dfc:	4152      	adcs	r2, r2
    1dfe:	08c3      	lsrs	r3, r0, #3
    1e00:	428b      	cmp	r3, r1
    1e02:	d301      	bcc.n	1e08 <__aeabi_uidiv+0xd8>
    1e04:	00cb      	lsls	r3, r1, #3
    1e06:	1ac0      	subs	r0, r0, r3
    1e08:	4152      	adcs	r2, r2
    1e0a:	0883      	lsrs	r3, r0, #2
    1e0c:	428b      	cmp	r3, r1
    1e0e:	d301      	bcc.n	1e14 <__aeabi_uidiv+0xe4>
    1e10:	008b      	lsls	r3, r1, #2
    1e12:	1ac0      	subs	r0, r0, r3
    1e14:	4152      	adcs	r2, r2
    1e16:	0843      	lsrs	r3, r0, #1
    1e18:	428b      	cmp	r3, r1
    1e1a:	d301      	bcc.n	1e20 <__aeabi_uidiv+0xf0>
    1e1c:	004b      	lsls	r3, r1, #1
    1e1e:	1ac0      	subs	r0, r0, r3
    1e20:	4152      	adcs	r2, r2
    1e22:	1a41      	subs	r1, r0, r1
    1e24:	d200      	bcs.n	1e28 <__aeabi_uidiv+0xf8>
    1e26:	4601      	mov	r1, r0
    1e28:	4152      	adcs	r2, r2
    1e2a:	4610      	mov	r0, r2
    1e2c:	4770      	bx	lr
    1e2e:	e7ff      	b.n	1e30 <__aeabi_uidiv+0x100>
    1e30:	b501      	push	{r0, lr}
    1e32:	2000      	movs	r0, #0
    1e34:	f000 f806 	bl	1e44 <__aeabi_idiv0>
    1e38:	bd02      	pop	{r1, pc}
    1e3a:	46c0      	nop			; (mov r8, r8)

00001e3c <__aeabi_uidivmod>:
    1e3c:	2900      	cmp	r1, #0
    1e3e:	d0f7      	beq.n	1e30 <__aeabi_uidiv+0x100>
    1e40:	e776      	b.n	1d30 <__aeabi_uidiv>
    1e42:	4770      	bx	lr

00001e44 <__aeabi_idiv0>:
    1e44:	4770      	bx	lr
    1e46:	46c0      	nop			; (mov r8, r8)
    1e48:	6c6c6568 	.word	0x6c6c6568
    1e4c:	6f77206f 	.word	0x6f77206f
    1e50:	0d646c72 	.word	0x0d646c72
    1e54:	0000000a 	.word	0x0000000a
    1e58:	000014ea 	.word	0x000014ea
    1e5c:	000014d8 	.word	0x000014d8
    1e60:	000014f6 	.word	0x000014f6
    1e64:	00001502 	.word	0x00001502
    1e68:	00001502 	.word	0x00001502
    1e6c:	00001502 	.word	0x00001502
    1e70:	00001502 	.word	0x00001502
    1e74:	00001502 	.word	0x00001502
    1e78:	00001502 	.word	0x00001502
    1e7c:	00001502 	.word	0x00001502
    1e80:	00001502 	.word	0x00001502
    1e84:	00001502 	.word	0x00001502
    1e88:	00001502 	.word	0x00001502
    1e8c:	000014f0 	.word	0x000014f0
    1e90:	00001502 	.word	0x00001502
    1e94:	00001502 	.word	0x00001502
    1e98:	00001502 	.word	0x00001502
    1e9c:	0000147c 	.word	0x0000147c
    1ea0:	00001502 	.word	0x00001502
    1ea4:	000014f6 	.word	0x000014f6
    1ea8:	00001502 	.word	0x00001502
    1eac:	00001502 	.word	0x00001502
    1eb0:	000014fc 	.word	0x000014fc
    1eb4:	6c383025 	.word	0x6c383025
    1eb8:	00002058 	.word	0x00002058
    1ebc:	32302520 	.word	0x32302520
    1ec0:	00000058 	.word	0x00000058
    1ec4:	34302520 	.word	0x34302520
    1ec8:	00000058 	.word	0x00000058
    1ecc:	38302520 	.word	0x38302520
    1ed0:	0000584c 	.word	0x0000584c
