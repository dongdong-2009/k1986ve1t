
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 51 10 00 00 b1 10 00 00 b1 10 00 00     ... Q...........
	...
      2c:	b1 10 00 00 00 00 00 00 00 00 00 00 b1 10 00 00     ................
      3c:	dd 0c 00 00 b1 10 00 00 21 0d 00 00 b1 10 00 00     ........!.......
      4c:	b1 10 00 00 b1 10 00 00 b1 10 00 00 05 13 00 00     ................
      5c:	b1 10 00 00 b1 10 00 00 b1 10 00 00 b1 10 00 00     ................
      6c:	b1 10 00 00 b1 10 00 00 f5 0c 00 00 b1 10 00 00     ................
      7c:	b1 10 00 00 b1 10 00 00 b1 10 00 00 b1 10 00 00     ................
      8c:	b1 10 00 00 b1 10 00 00 b1 10 00 00 b1 10 00 00     ................
      9c:	b1 10 00 00 b1 10 00 00 00 00 00 00 00 00 00 00     ................
      ac:	b1 10 00 00 b1 10 00 00 b1 10 00 00 b1 10 00 00     ................
      bc:	b1 10 00 00                                         ....

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
     17c:	4b74      	ldr	r3, [pc, #464]	; (350 <update_telemetry_loop+0x1dc>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b74      	ldr	r3, [pc, #464]	; (354 <update_telemetry_loop+0x1e0>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	61fb      	str	r3, [r7, #28]
     18a:	2300      	movs	r3, #0
     18c:	61bb      	str	r3, [r7, #24]
     18e:	4b72      	ldr	r3, [pc, #456]	; (358 <update_telemetry_loop+0x1e4>)
     190:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     192:	0a5b      	lsrs	r3, r3, #9
     194:	001a      	movs	r2, r3
     196:	2307      	movs	r3, #7
     198:	4013      	ands	r3, r2
     19a:	617b      	str	r3, [r7, #20]
     19c:	697b      	ldr	r3, [r7, #20]
     19e:	2b00      	cmp	r3, #0
     1a0:	d100      	bne.n	1a4 <update_telemetry_loop+0x30>
     1a2:	e0d1      	b.n	348 <update_telemetry_loop+0x1d4>
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
     1c0:	4b65      	ldr	r3, [pc, #404]	; (358 <update_telemetry_loop+0x1e4>)
     1c2:	2200      	movs	r2, #0
     1c4:	655a      	str	r2, [r3, #84]	; 0x54
     1c6:	4b65      	ldr	r3, [pc, #404]	; (35c <update_telemetry_loop+0x1e8>)
     1c8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     1ca:	2210      	movs	r2, #16
     1cc:	4013      	ands	r3, r2
     1ce:	d03c      	beq.n	24a <update_telemetry_loop+0xd6>
     1d0:	69bb      	ldr	r3, [r7, #24]
     1d2:	00da      	lsls	r2, r3, #3
     1d4:	4b62      	ldr	r3, [pc, #392]	; (360 <update_telemetry_loop+0x1ec>)
     1d6:	18d3      	adds	r3, r2, r3
     1d8:	613b      	str	r3, [r7, #16]
     1da:	693b      	ldr	r3, [r7, #16]
     1dc:	1c5a      	adds	r2, r3, #1
     1de:	613a      	str	r2, [r7, #16]
     1e0:	4a5e      	ldr	r2, [pc, #376]	; (35c <update_telemetry_loop+0x1e8>)
     1e2:	6812      	ldr	r2, [r2, #0]
     1e4:	b2d2      	uxtb	r2, r2
     1e6:	701a      	strb	r2, [r3, #0]
     1e8:	693b      	ldr	r3, [r7, #16]
     1ea:	1c5a      	adds	r2, r3, #1
     1ec:	613a      	str	r2, [r7, #16]
     1ee:	4a5b      	ldr	r2, [pc, #364]	; (35c <update_telemetry_loop+0x1e8>)
     1f0:	6812      	ldr	r2, [r2, #0]
     1f2:	b2d2      	uxtb	r2, r2
     1f4:	701a      	strb	r2, [r3, #0]
     1f6:	693b      	ldr	r3, [r7, #16]
     1f8:	1c5a      	adds	r2, r3, #1
     1fa:	613a      	str	r2, [r7, #16]
     1fc:	4a57      	ldr	r2, [pc, #348]	; (35c <update_telemetry_loop+0x1e8>)
     1fe:	6812      	ldr	r2, [r2, #0]
     200:	b2d2      	uxtb	r2, r2
     202:	701a      	strb	r2, [r3, #0]
     204:	693b      	ldr	r3, [r7, #16]
     206:	1c5a      	adds	r2, r3, #1
     208:	613a      	str	r2, [r7, #16]
     20a:	4a54      	ldr	r2, [pc, #336]	; (35c <update_telemetry_loop+0x1e8>)
     20c:	6812      	ldr	r2, [r2, #0]
     20e:	b2d2      	uxtb	r2, r2
     210:	701a      	strb	r2, [r3, #0]
     212:	693b      	ldr	r3, [r7, #16]
     214:	1c5a      	adds	r2, r3, #1
     216:	613a      	str	r2, [r7, #16]
     218:	4a50      	ldr	r2, [pc, #320]	; (35c <update_telemetry_loop+0x1e8>)
     21a:	6812      	ldr	r2, [r2, #0]
     21c:	b2d2      	uxtb	r2, r2
     21e:	701a      	strb	r2, [r3, #0]
     220:	693b      	ldr	r3, [r7, #16]
     222:	1c5a      	adds	r2, r3, #1
     224:	613a      	str	r2, [r7, #16]
     226:	4a4d      	ldr	r2, [pc, #308]	; (35c <update_telemetry_loop+0x1e8>)
     228:	6812      	ldr	r2, [r2, #0]
     22a:	b2d2      	uxtb	r2, r2
     22c:	701a      	strb	r2, [r3, #0]
     22e:	693b      	ldr	r3, [r7, #16]
     230:	1c5a      	adds	r2, r3, #1
     232:	613a      	str	r2, [r7, #16]
     234:	4a49      	ldr	r2, [pc, #292]	; (35c <update_telemetry_loop+0x1e8>)
     236:	6812      	ldr	r2, [r2, #0]
     238:	b2d2      	uxtb	r2, r2
     23a:	701a      	strb	r2, [r3, #0]
     23c:	693b      	ldr	r3, [r7, #16]
     23e:	1c5a      	adds	r2, r3, #1
     240:	613a      	str	r2, [r7, #16]
     242:	4a46      	ldr	r2, [pc, #280]	; (35c <update_telemetry_loop+0x1e8>)
     244:	6812      	ldr	r2, [r2, #0]
     246:	b2d2      	uxtb	r2, r2
     248:	701a      	strb	r2, [r3, #0]
     24a:	4b44      	ldr	r3, [pc, #272]	; (35c <update_telemetry_loop+0x1e8>)
     24c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     24e:	2240      	movs	r2, #64	; 0x40
     250:	4013      	ands	r3, r2
     252:	d00a      	beq.n	26a <update_telemetry_loop+0xf6>
     254:	e004      	b.n	260 <update_telemetry_loop+0xec>
     256:	4b41      	ldr	r3, [pc, #260]	; (35c <update_telemetry_loop+0x1e8>)
     258:	681a      	ldr	r2, [r3, #0]
     25a:	230f      	movs	r3, #15
     25c:	18fb      	adds	r3, r7, r3
     25e:	701a      	strb	r2, [r3, #0]
     260:	4b3e      	ldr	r3, [pc, #248]	; (35c <update_telemetry_loop+0x1e8>)
     262:	699b      	ldr	r3, [r3, #24]
     264:	2210      	movs	r2, #16
     266:	4013      	ands	r3, r2
     268:	d0f5      	beq.n	256 <update_telemetry_loop+0xe2>
     26a:	69bb      	ldr	r3, [r7, #24]
     26c:	2b03      	cmp	r3, #3
     26e:	d16c      	bne.n	34a <update_telemetry_loop+0x1d6>
     270:	f001 fdc2 	bl	1df8 <adc_dma_check>
     274:	1e03      	subs	r3, r0, #0
     276:	d010      	beq.n	29a <update_telemetry_loop+0x126>
     278:	4b3a      	ldr	r3, [pc, #232]	; (364 <update_telemetry_loop+0x1f0>)
     27a:	681b      	ldr	r3, [r3, #0]
     27c:	b29a      	uxth	r2, r3
     27e:	4b3a      	ldr	r3, [pc, #232]	; (368 <update_telemetry_loop+0x1f4>)
     280:	801a      	strh	r2, [r3, #0]
     282:	4b38      	ldr	r3, [pc, #224]	; (364 <update_telemetry_loop+0x1f0>)
     284:	685b      	ldr	r3, [r3, #4]
     286:	b29a      	uxth	r2, r3
     288:	4b38      	ldr	r3, [pc, #224]	; (36c <update_telemetry_loop+0x1f8>)
     28a:	801a      	strh	r2, [r3, #0]
     28c:	4b35      	ldr	r3, [pc, #212]	; (364 <update_telemetry_loop+0x1f0>)
     28e:	689b      	ldr	r3, [r3, #8]
     290:	b29a      	uxth	r2, r3
     292:	4b37      	ldr	r3, [pc, #220]	; (370 <update_telemetry_loop+0x1fc>)
     294:	801a      	strh	r2, [r3, #0]
     296:	f001 fd7d 	bl	1d94 <adc_dma_start>
     29a:	69fb      	ldr	r3, [r7, #28]
     29c:	4a35      	ldr	r2, [pc, #212]	; (374 <update_telemetry_loop+0x200>)
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
     2b2:	4b31      	ldr	r3, [pc, #196]	; (378 <update_telemetry_loop+0x204>)
     2b4:	685b      	ldr	r3, [r3, #4]
     2b6:	b29b      	uxth	r3, r3
     2b8:	4a30      	ldr	r2, [pc, #192]	; (37c <update_telemetry_loop+0x208>)
     2ba:	4694      	mov	ip, r2
     2bc:	4463      	add	r3, ip
     2be:	b29b      	uxth	r3, r3
     2c0:	b21a      	sxth	r2, r3
     2c2:	69fb      	ldr	r3, [r7, #28]
     2c4:	80da      	strh	r2, [r3, #6]
     2c6:	69fb      	ldr	r3, [r7, #28]
     2c8:	2200      	movs	r2, #0
     2ca:	811a      	strh	r2, [r3, #8]
     2cc:	69fb      	ldr	r3, [r7, #28]
     2ce:	2200      	movs	r2, #0
     2d0:	815a      	strh	r2, [r3, #10]
     2d2:	69fb      	ldr	r3, [r7, #28]
     2d4:	2200      	movs	r2, #0
     2d6:	819a      	strh	r2, [r3, #12]
     2d8:	4b27      	ldr	r3, [pc, #156]	; (378 <update_telemetry_loop+0x204>)
     2da:	685b      	ldr	r3, [r3, #4]
     2dc:	b29b      	uxth	r3, r3
     2de:	4a27      	ldr	r2, [pc, #156]	; (37c <update_telemetry_loop+0x208>)
     2e0:	4694      	mov	ip, r2
     2e2:	4463      	add	r3, ip
     2e4:	b29b      	uxth	r3, r3
     2e6:	b21a      	sxth	r2, r3
     2e8:	69fb      	ldr	r3, [r7, #28]
     2ea:	81da      	strh	r2, [r3, #14]
     2ec:	69fb      	ldr	r3, [r7, #28]
     2ee:	2200      	movs	r2, #0
     2f0:	821a      	strh	r2, [r3, #16]
     2f2:	69fb      	ldr	r3, [r7, #28]
     2f4:	2200      	movs	r2, #0
     2f6:	825a      	strh	r2, [r3, #18]
     2f8:	4b1d      	ldr	r3, [pc, #116]	; (370 <update_telemetry_loop+0x1fc>)
     2fa:	881a      	ldrh	r2, [r3, #0]
     2fc:	69fb      	ldr	r3, [r7, #28]
     2fe:	829a      	strh	r2, [r3, #20]
     300:	4b1a      	ldr	r3, [pc, #104]	; (36c <update_telemetry_loop+0x1f8>)
     302:	881a      	ldrh	r2, [r3, #0]
     304:	69fb      	ldr	r3, [r7, #28]
     306:	82da      	strh	r2, [r3, #22]
     308:	4b15      	ldr	r3, [pc, #84]	; (360 <update_telemetry_loop+0x1ec>)
     30a:	899a      	ldrh	r2, [r3, #12]
     30c:	69fb      	ldr	r3, [r7, #28]
     30e:	831a      	strh	r2, [r3, #24]
     310:	4b13      	ldr	r3, [pc, #76]	; (360 <update_telemetry_loop+0x1ec>)
     312:	8a9a      	ldrh	r2, [r3, #20]
     314:	69fb      	ldr	r3, [r7, #28]
     316:	835a      	strh	r2, [r3, #26]
     318:	4b11      	ldr	r3, [pc, #68]	; (360 <update_telemetry_loop+0x1ec>)
     31a:	8b9a      	ldrh	r2, [r3, #28]
     31c:	69fb      	ldr	r3, [r7, #28]
     31e:	839a      	strh	r2, [r3, #28]
     320:	4b11      	ldr	r3, [pc, #68]	; (368 <update_telemetry_loop+0x1f4>)
     322:	881a      	ldrh	r2, [r3, #0]
     324:	69fb      	ldr	r3, [r7, #28]
     326:	83da      	strh	r2, [r3, #30]
     328:	69fb      	ldr	r3, [r7, #28]
     32a:	211f      	movs	r1, #31
     32c:	0018      	movs	r0, r3
     32e:	f7ff fee3 	bl	f8 <get_checksum>
     332:	0003      	movs	r3, r0
     334:	001a      	movs	r2, r3
     336:	69fb      	ldr	r3, [r7, #28]
     338:	87da      	strh	r2, [r3, #62]	; 0x3e
     33a:	4b05      	ldr	r3, [pc, #20]	; (350 <update_telemetry_loop+0x1dc>)
     33c:	681b      	ldr	r3, [r3, #0]
     33e:	2201      	movs	r2, #1
     340:	405a      	eors	r2, r3
     342:	4b03      	ldr	r3, [pc, #12]	; (350 <update_telemetry_loop+0x1dc>)
     344:	601a      	str	r2, [r3, #0]
     346:	e000      	b.n	34a <update_telemetry_loop+0x1d6>
     348:	46c0      	nop			; (mov r8, r8)
     34a:	46bd      	mov	sp, r7
     34c:	b008      	add	sp, #32
     34e:	bd80      	pop	{r7, pc}
     350:	200000d8 	.word	0x200000d8
     354:	200000d0 	.word	0x200000d0
     358:	40070000 	.word	0x40070000
     35c:	40030000 	.word	0x40030000
     360:	200000fc 	.word	0x200000fc
     364:	20100200 	.word	0x20100200
     368:	2000011c 	.word	0x2000011c
     36c:	2000011e 	.word	0x2000011e
     370:	20000120 	.word	0x20000120
     374:	ffffb060 	.word	0xffffb060
     378:	40090000 	.word	0x40090000
     37c:	fffff800 	.word	0xfffff800

00000380 <update_telemetry>:
     380:	b580      	push	{r7, lr}
     382:	b088      	sub	sp, #32
     384:	af00      	add	r7, sp, #0
     386:	6078      	str	r0, [r7, #4]
     388:	4b83      	ldr	r3, [pc, #524]	; (598 <_stack_size+0x198>)
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	009a      	lsls	r2, r3, #2
     38e:	4b83      	ldr	r3, [pc, #524]	; (59c <_stack_size+0x19c>)
     390:	18d3      	adds	r3, r2, r3
     392:	681b      	ldr	r3, [r3, #0]
     394:	61fb      	str	r3, [r7, #28]
     396:	2300      	movs	r3, #0
     398:	61bb      	str	r3, [r7, #24]
     39a:	4b81      	ldr	r3, [pc, #516]	; (5a0 <_stack_size+0x1a0>)
     39c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     39e:	0a5b      	lsrs	r3, r3, #9
     3a0:	001a      	movs	r2, r3
     3a2:	2307      	movs	r3, #7
     3a4:	4013      	ands	r3, r2
     3a6:	617b      	str	r3, [r7, #20]
     3a8:	697b      	ldr	r3, [r7, #20]
     3aa:	2b00      	cmp	r3, #0
     3ac:	d100      	bne.n	3b0 <update_telemetry+0x30>
     3ae:	e0ee      	b.n	58e <_stack_size+0x18e>
     3b0:	697b      	ldr	r3, [r7, #20]
     3b2:	2203      	movs	r2, #3
     3b4:	401a      	ands	r2, r3
     3b6:	697b      	ldr	r3, [r7, #20]
     3b8:	105b      	asrs	r3, r3, #1
     3ba:	2102      	movs	r1, #2
     3bc:	400b      	ands	r3, r1
     3be:	431a      	orrs	r2, r3
     3c0:	697b      	ldr	r3, [r7, #20]
     3c2:	109b      	asrs	r3, r3, #2
     3c4:	2101      	movs	r1, #1
     3c6:	400b      	ands	r3, r1
     3c8:	4313      	orrs	r3, r2
     3ca:	61bb      	str	r3, [r7, #24]
     3cc:	69bb      	ldr	r3, [r7, #24]
     3ce:	2204      	movs	r2, #4
     3d0:	1ad3      	subs	r3, r2, r3
     3d2:	220f      	movs	r2, #15
     3d4:	4013      	ands	r3, r2
     3d6:	61bb      	str	r3, [r7, #24]
     3d8:	4b71      	ldr	r3, [pc, #452]	; (5a0 <_stack_size+0x1a0>)
     3da:	2200      	movs	r2, #0
     3dc:	655a      	str	r2, [r3, #84]	; 0x54
     3de:	4b71      	ldr	r3, [pc, #452]	; (5a4 <_stack_size+0x1a4>)
     3e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     3e2:	2210      	movs	r2, #16
     3e4:	4013      	ands	r3, r2
     3e6:	d03c      	beq.n	462 <_stack_size+0x62>
     3e8:	69bb      	ldr	r3, [r7, #24]
     3ea:	00da      	lsls	r2, r3, #3
     3ec:	4b6e      	ldr	r3, [pc, #440]	; (5a8 <_stack_size+0x1a8>)
     3ee:	18d3      	adds	r3, r2, r3
     3f0:	613b      	str	r3, [r7, #16]
     3f2:	693b      	ldr	r3, [r7, #16]
     3f4:	1c5a      	adds	r2, r3, #1
     3f6:	613a      	str	r2, [r7, #16]
     3f8:	4a6a      	ldr	r2, [pc, #424]	; (5a4 <_stack_size+0x1a4>)
     3fa:	6812      	ldr	r2, [r2, #0]
     3fc:	b2d2      	uxtb	r2, r2
     3fe:	701a      	strb	r2, [r3, #0]
     400:	693b      	ldr	r3, [r7, #16]
     402:	1c5a      	adds	r2, r3, #1
     404:	613a      	str	r2, [r7, #16]
     406:	4a67      	ldr	r2, [pc, #412]	; (5a4 <_stack_size+0x1a4>)
     408:	6812      	ldr	r2, [r2, #0]
     40a:	b2d2      	uxtb	r2, r2
     40c:	701a      	strb	r2, [r3, #0]
     40e:	693b      	ldr	r3, [r7, #16]
     410:	1c5a      	adds	r2, r3, #1
     412:	613a      	str	r2, [r7, #16]
     414:	4a63      	ldr	r2, [pc, #396]	; (5a4 <_stack_size+0x1a4>)
     416:	6812      	ldr	r2, [r2, #0]
     418:	b2d2      	uxtb	r2, r2
     41a:	701a      	strb	r2, [r3, #0]
     41c:	693b      	ldr	r3, [r7, #16]
     41e:	1c5a      	adds	r2, r3, #1
     420:	613a      	str	r2, [r7, #16]
     422:	4a60      	ldr	r2, [pc, #384]	; (5a4 <_stack_size+0x1a4>)
     424:	6812      	ldr	r2, [r2, #0]
     426:	b2d2      	uxtb	r2, r2
     428:	701a      	strb	r2, [r3, #0]
     42a:	693b      	ldr	r3, [r7, #16]
     42c:	1c5a      	adds	r2, r3, #1
     42e:	613a      	str	r2, [r7, #16]
     430:	4a5c      	ldr	r2, [pc, #368]	; (5a4 <_stack_size+0x1a4>)
     432:	6812      	ldr	r2, [r2, #0]
     434:	b2d2      	uxtb	r2, r2
     436:	701a      	strb	r2, [r3, #0]
     438:	693b      	ldr	r3, [r7, #16]
     43a:	1c5a      	adds	r2, r3, #1
     43c:	613a      	str	r2, [r7, #16]
     43e:	4a59      	ldr	r2, [pc, #356]	; (5a4 <_stack_size+0x1a4>)
     440:	6812      	ldr	r2, [r2, #0]
     442:	b2d2      	uxtb	r2, r2
     444:	701a      	strb	r2, [r3, #0]
     446:	693b      	ldr	r3, [r7, #16]
     448:	1c5a      	adds	r2, r3, #1
     44a:	613a      	str	r2, [r7, #16]
     44c:	4a55      	ldr	r2, [pc, #340]	; (5a4 <_stack_size+0x1a4>)
     44e:	6812      	ldr	r2, [r2, #0]
     450:	b2d2      	uxtb	r2, r2
     452:	701a      	strb	r2, [r3, #0]
     454:	693b      	ldr	r3, [r7, #16]
     456:	1c5a      	adds	r2, r3, #1
     458:	613a      	str	r2, [r7, #16]
     45a:	4a52      	ldr	r2, [pc, #328]	; (5a4 <_stack_size+0x1a4>)
     45c:	6812      	ldr	r2, [r2, #0]
     45e:	b2d2      	uxtb	r2, r2
     460:	701a      	strb	r2, [r3, #0]
     462:	4b50      	ldr	r3, [pc, #320]	; (5a4 <_stack_size+0x1a4>)
     464:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     466:	2240      	movs	r2, #64	; 0x40
     468:	4013      	ands	r3, r2
     46a:	d00a      	beq.n	482 <_stack_size+0x82>
     46c:	e004      	b.n	478 <_stack_size+0x78>
     46e:	4b4d      	ldr	r3, [pc, #308]	; (5a4 <_stack_size+0x1a4>)
     470:	681a      	ldr	r2, [r3, #0]
     472:	230f      	movs	r3, #15
     474:	18fb      	adds	r3, r7, r3
     476:	701a      	strb	r2, [r3, #0]
     478:	4b4a      	ldr	r3, [pc, #296]	; (5a4 <_stack_size+0x1a4>)
     47a:	699b      	ldr	r3, [r3, #24]
     47c:	2210      	movs	r2, #16
     47e:	4013      	ands	r3, r2
     480:	d0f5      	beq.n	46e <_stack_size+0x6e>
     482:	69bb      	ldr	r3, [r7, #24]
     484:	2b03      	cmp	r3, #3
     486:	d000      	beq.n	48a <_stack_size+0x8a>
     488:	e082      	b.n	590 <_stack_size+0x190>
     48a:	f001 fcb5 	bl	1df8 <adc_dma_check>
     48e:	1e03      	subs	r3, r0, #0
     490:	d010      	beq.n	4b4 <_stack_size+0xb4>
     492:	4b46      	ldr	r3, [pc, #280]	; (5ac <_stack_size+0x1ac>)
     494:	681b      	ldr	r3, [r3, #0]
     496:	b29a      	uxth	r2, r3
     498:	4b45      	ldr	r3, [pc, #276]	; (5b0 <_stack_size+0x1b0>)
     49a:	801a      	strh	r2, [r3, #0]
     49c:	4b43      	ldr	r3, [pc, #268]	; (5ac <_stack_size+0x1ac>)
     49e:	685b      	ldr	r3, [r3, #4]
     4a0:	b29a      	uxth	r2, r3
     4a2:	4b44      	ldr	r3, [pc, #272]	; (5b4 <_stack_size+0x1b4>)
     4a4:	801a      	strh	r2, [r3, #0]
     4a6:	4b41      	ldr	r3, [pc, #260]	; (5ac <_stack_size+0x1ac>)
     4a8:	689b      	ldr	r3, [r3, #8]
     4aa:	b29a      	uxth	r2, r3
     4ac:	4b42      	ldr	r3, [pc, #264]	; (5b8 <_stack_size+0x1b8>)
     4ae:	801a      	strh	r2, [r3, #0]
     4b0:	f001 fc70 	bl	1d94 <adc_dma_start>
     4b4:	4b3c      	ldr	r3, [pc, #240]	; (5a8 <_stack_size+0x1a8>)
     4b6:	7b9b      	ldrb	r3, [r3, #14]
     4b8:	011b      	lsls	r3, r3, #4
     4ba:	b21b      	sxth	r3, r3
     4bc:	2230      	movs	r2, #48	; 0x30
     4be:	4013      	ands	r3, r2
     4c0:	b21a      	sxth	r2, r3
     4c2:	4b39      	ldr	r3, [pc, #228]	; (5a8 <_stack_size+0x1a8>)
     4c4:	7d9b      	ldrb	r3, [r3, #22]
     4c6:	009b      	lsls	r3, r3, #2
     4c8:	b21b      	sxth	r3, r3
     4ca:	210c      	movs	r1, #12
     4cc:	400b      	ands	r3, r1
     4ce:	b21b      	sxth	r3, r3
     4d0:	4313      	orrs	r3, r2
     4d2:	b21a      	sxth	r2, r3
     4d4:	4b34      	ldr	r3, [pc, #208]	; (5a8 <_stack_size+0x1a8>)
     4d6:	7f9b      	ldrb	r3, [r3, #30]
     4d8:	b21b      	sxth	r3, r3
     4da:	2103      	movs	r1, #3
     4dc:	400b      	ands	r3, r1
     4de:	b21b      	sxth	r3, r3
     4e0:	4313      	orrs	r3, r2
     4e2:	b21b      	sxth	r3, r3
     4e4:	b29a      	uxth	r2, r3
     4e6:	69fb      	ldr	r3, [r7, #28]
     4e8:	801a      	strh	r2, [r3, #0]
     4ea:	687b      	ldr	r3, [r7, #4]
     4ec:	0c1b      	lsrs	r3, r3, #16
     4ee:	b29a      	uxth	r2, r3
     4f0:	69fb      	ldr	r3, [r7, #28]
     4f2:	805a      	strh	r2, [r3, #2]
     4f4:	687b      	ldr	r3, [r7, #4]
     4f6:	b29a      	uxth	r2, r3
     4f8:	69fb      	ldr	r3, [r7, #28]
     4fa:	809a      	strh	r2, [r3, #4]
     4fc:	4b2a      	ldr	r3, [pc, #168]	; (5a8 <_stack_size+0x1a8>)
     4fe:	220a      	movs	r2, #10
     500:	5e9a      	ldrsh	r2, [r3, r2]
     502:	69fb      	ldr	r3, [r7, #28]
     504:	80da      	strh	r2, [r3, #6]
     506:	4b28      	ldr	r3, [pc, #160]	; (5a8 <_stack_size+0x1a8>)
     508:	2212      	movs	r2, #18
     50a:	5e9a      	ldrsh	r2, [r3, r2]
     50c:	69fb      	ldr	r3, [r7, #28]
     50e:	811a      	strh	r2, [r3, #8]
     510:	4b25      	ldr	r3, [pc, #148]	; (5a8 <_stack_size+0x1a8>)
     512:	221a      	movs	r2, #26
     514:	5e9a      	ldrsh	r2, [r3, r2]
     516:	69fb      	ldr	r3, [r7, #28]
     518:	815a      	strh	r2, [r3, #10]
     51a:	69fb      	ldr	r3, [r7, #28]
     51c:	2200      	movs	r2, #0
     51e:	819a      	strh	r2, [r3, #12]
     520:	4b21      	ldr	r3, [pc, #132]	; (5a8 <_stack_size+0x1a8>)
     522:	2208      	movs	r2, #8
     524:	5e9a      	ldrsh	r2, [r3, r2]
     526:	69fb      	ldr	r3, [r7, #28]
     528:	81da      	strh	r2, [r3, #14]
     52a:	4b1f      	ldr	r3, [pc, #124]	; (5a8 <_stack_size+0x1a8>)
     52c:	2210      	movs	r2, #16
     52e:	5e9a      	ldrsh	r2, [r3, r2]
     530:	69fb      	ldr	r3, [r7, #28]
     532:	821a      	strh	r2, [r3, #16]
     534:	4b1c      	ldr	r3, [pc, #112]	; (5a8 <_stack_size+0x1a8>)
     536:	2218      	movs	r2, #24
     538:	5e9a      	ldrsh	r2, [r3, r2]
     53a:	69fb      	ldr	r3, [r7, #28]
     53c:	825a      	strh	r2, [r3, #18]
     53e:	4b1e      	ldr	r3, [pc, #120]	; (5b8 <_stack_size+0x1b8>)
     540:	881a      	ldrh	r2, [r3, #0]
     542:	69fb      	ldr	r3, [r7, #28]
     544:	829a      	strh	r2, [r3, #20]
     546:	4b1b      	ldr	r3, [pc, #108]	; (5b4 <_stack_size+0x1b4>)
     548:	881a      	ldrh	r2, [r3, #0]
     54a:	69fb      	ldr	r3, [r7, #28]
     54c:	82da      	strh	r2, [r3, #22]
     54e:	4b16      	ldr	r3, [pc, #88]	; (5a8 <_stack_size+0x1a8>)
     550:	899a      	ldrh	r2, [r3, #12]
     552:	69fb      	ldr	r3, [r7, #28]
     554:	831a      	strh	r2, [r3, #24]
     556:	4b14      	ldr	r3, [pc, #80]	; (5a8 <_stack_size+0x1a8>)
     558:	8a9a      	ldrh	r2, [r3, #20]
     55a:	69fb      	ldr	r3, [r7, #28]
     55c:	835a      	strh	r2, [r3, #26]
     55e:	4b12      	ldr	r3, [pc, #72]	; (5a8 <_stack_size+0x1a8>)
     560:	8b9a      	ldrh	r2, [r3, #28]
     562:	69fb      	ldr	r3, [r7, #28]
     564:	839a      	strh	r2, [r3, #28]
     566:	4b12      	ldr	r3, [pc, #72]	; (5b0 <_stack_size+0x1b0>)
     568:	881a      	ldrh	r2, [r3, #0]
     56a:	69fb      	ldr	r3, [r7, #28]
     56c:	83da      	strh	r2, [r3, #30]
     56e:	69fb      	ldr	r3, [r7, #28]
     570:	211f      	movs	r1, #31
     572:	0018      	movs	r0, r3
     574:	f7ff fdc0 	bl	f8 <get_checksum>
     578:	0003      	movs	r3, r0
     57a:	001a      	movs	r2, r3
     57c:	69fb      	ldr	r3, [r7, #28]
     57e:	87da      	strh	r2, [r3, #62]	; 0x3e
     580:	4b05      	ldr	r3, [pc, #20]	; (598 <_stack_size+0x198>)
     582:	681b      	ldr	r3, [r3, #0]
     584:	2201      	movs	r2, #1
     586:	405a      	eors	r2, r3
     588:	4b03      	ldr	r3, [pc, #12]	; (598 <_stack_size+0x198>)
     58a:	601a      	str	r2, [r3, #0]
     58c:	e000      	b.n	590 <_stack_size+0x190>
     58e:	46c0      	nop			; (mov r8, r8)
     590:	46bd      	mov	sp, r7
     592:	b008      	add	sp, #32
     594:	bd80      	pop	{r7, pc}
     596:	46c0      	nop			; (mov r8, r8)
     598:	200000d8 	.word	0x200000d8
     59c:	200000d0 	.word	0x200000d0
     5a0:	40070000 	.word	0x40070000
     5a4:	40030000 	.word	0x40030000
     5a8:	20000124 	.word	0x20000124
     5ac:	20100200 	.word	0x20100200
     5b0:	20000144 	.word	0x20000144
     5b4:	20000146 	.word	0x20000146
     5b8:	20000148 	.word	0x20000148

000005bc <send_command>:
     5bc:	b580      	push	{r7, lr}
     5be:	b086      	sub	sp, #24
     5c0:	af00      	add	r7, sp, #0
     5c2:	6078      	str	r0, [r7, #4]
     5c4:	2317      	movs	r3, #23
     5c6:	18fb      	adds	r3, r7, r3
     5c8:	2200      	movs	r2, #0
     5ca:	701a      	strb	r2, [r3, #0]
     5cc:	2314      	movs	r3, #20
     5ce:	18fb      	adds	r3, r7, r3
     5d0:	687a      	ldr	r2, [r7, #4]
     5d2:	8812      	ldrh	r2, [r2, #0]
     5d4:	801a      	strh	r2, [r3, #0]
     5d6:	687b      	ldr	r3, [r7, #4]
     5d8:	2202      	movs	r2, #2
     5da:	5e9a      	ldrsh	r2, [r3, r2]
     5dc:	2312      	movs	r3, #18
     5de:	18fb      	adds	r3, r7, r3
     5e0:	801a      	strh	r2, [r3, #0]
     5e2:	687b      	ldr	r3, [r7, #4]
     5e4:	2204      	movs	r2, #4
     5e6:	5e9a      	ldrsh	r2, [r3, r2]
     5e8:	2310      	movs	r3, #16
     5ea:	18fb      	adds	r3, r7, r3
     5ec:	801a      	strh	r2, [r3, #0]
     5ee:	687b      	ldr	r3, [r7, #4]
     5f0:	2206      	movs	r2, #6
     5f2:	5e9a      	ldrsh	r2, [r3, r2]
     5f4:	230e      	movs	r3, #14
     5f6:	18fb      	adds	r3, r7, r3
     5f8:	801a      	strh	r2, [r3, #0]
     5fa:	4b51      	ldr	r3, [pc, #324]	; (740 <send_command+0x184>)
     5fc:	2212      	movs	r2, #18
     5fe:	18ba      	adds	r2, r7, r2
     600:	8812      	ldrh	r2, [r2, #0]
     602:	21ff      	movs	r1, #255	; 0xff
     604:	400a      	ands	r2, r1
     606:	601a      	str	r2, [r3, #0]
     608:	b2d1      	uxtb	r1, r2
     60a:	2317      	movs	r3, #23
     60c:	18fb      	adds	r3, r7, r3
     60e:	2217      	movs	r2, #23
     610:	18ba      	adds	r2, r7, r2
     612:	7812      	ldrb	r2, [r2, #0]
     614:	404a      	eors	r2, r1
     616:	701a      	strb	r2, [r3, #0]
     618:	4b49      	ldr	r3, [pc, #292]	; (740 <send_command+0x184>)
     61a:	2212      	movs	r2, #18
     61c:	18ba      	adds	r2, r7, r2
     61e:	8812      	ldrh	r2, [r2, #0]
     620:	0a12      	lsrs	r2, r2, #8
     622:	b292      	uxth	r2, r2
     624:	0011      	movs	r1, r2
     626:	22ff      	movs	r2, #255	; 0xff
     628:	400a      	ands	r2, r1
     62a:	601a      	str	r2, [r3, #0]
     62c:	b2d1      	uxtb	r1, r2
     62e:	2317      	movs	r3, #23
     630:	18fb      	adds	r3, r7, r3
     632:	2217      	movs	r2, #23
     634:	18ba      	adds	r2, r7, r2
     636:	7812      	ldrb	r2, [r2, #0]
     638:	404a      	eors	r2, r1
     63a:	701a      	strb	r2, [r3, #0]
     63c:	4b40      	ldr	r3, [pc, #256]	; (740 <send_command+0x184>)
     63e:	2210      	movs	r2, #16
     640:	18ba      	adds	r2, r7, r2
     642:	8812      	ldrh	r2, [r2, #0]
     644:	21ff      	movs	r1, #255	; 0xff
     646:	400a      	ands	r2, r1
     648:	601a      	str	r2, [r3, #0]
     64a:	b2d1      	uxtb	r1, r2
     64c:	2317      	movs	r3, #23
     64e:	18fb      	adds	r3, r7, r3
     650:	2217      	movs	r2, #23
     652:	18ba      	adds	r2, r7, r2
     654:	7812      	ldrb	r2, [r2, #0]
     656:	404a      	eors	r2, r1
     658:	701a      	strb	r2, [r3, #0]
     65a:	4b39      	ldr	r3, [pc, #228]	; (740 <send_command+0x184>)
     65c:	2210      	movs	r2, #16
     65e:	18ba      	adds	r2, r7, r2
     660:	8812      	ldrh	r2, [r2, #0]
     662:	0a12      	lsrs	r2, r2, #8
     664:	b292      	uxth	r2, r2
     666:	0011      	movs	r1, r2
     668:	22ff      	movs	r2, #255	; 0xff
     66a:	400a      	ands	r2, r1
     66c:	601a      	str	r2, [r3, #0]
     66e:	b2d1      	uxtb	r1, r2
     670:	2317      	movs	r3, #23
     672:	18fb      	adds	r3, r7, r3
     674:	2217      	movs	r2, #23
     676:	18ba      	adds	r2, r7, r2
     678:	7812      	ldrb	r2, [r2, #0]
     67a:	404a      	eors	r2, r1
     67c:	701a      	strb	r2, [r3, #0]
     67e:	4b30      	ldr	r3, [pc, #192]	; (740 <send_command+0x184>)
     680:	220e      	movs	r2, #14
     682:	18ba      	adds	r2, r7, r2
     684:	8812      	ldrh	r2, [r2, #0]
     686:	21ff      	movs	r1, #255	; 0xff
     688:	400a      	ands	r2, r1
     68a:	601a      	str	r2, [r3, #0]
     68c:	b2d1      	uxtb	r1, r2
     68e:	2317      	movs	r3, #23
     690:	18fb      	adds	r3, r7, r3
     692:	2217      	movs	r2, #23
     694:	18ba      	adds	r2, r7, r2
     696:	7812      	ldrb	r2, [r2, #0]
     698:	404a      	eors	r2, r1
     69a:	701a      	strb	r2, [r3, #0]
     69c:	4b28      	ldr	r3, [pc, #160]	; (740 <send_command+0x184>)
     69e:	220e      	movs	r2, #14
     6a0:	18ba      	adds	r2, r7, r2
     6a2:	8812      	ldrh	r2, [r2, #0]
     6a4:	0a12      	lsrs	r2, r2, #8
     6a6:	b292      	uxth	r2, r2
     6a8:	0011      	movs	r1, r2
     6aa:	22ff      	movs	r2, #255	; 0xff
     6ac:	400a      	ands	r2, r1
     6ae:	601a      	str	r2, [r3, #0]
     6b0:	b2d1      	uxtb	r1, r2
     6b2:	2317      	movs	r3, #23
     6b4:	18fb      	adds	r3, r7, r3
     6b6:	2217      	movs	r2, #23
     6b8:	18ba      	adds	r2, r7, r2
     6ba:	7812      	ldrb	r2, [r2, #0]
     6bc:	404a      	eors	r2, r1
     6be:	701a      	strb	r2, [r3, #0]
     6c0:	4b1f      	ldr	r3, [pc, #124]	; (740 <send_command+0x184>)
     6c2:	2214      	movs	r2, #20
     6c4:	18ba      	adds	r2, r7, r2
     6c6:	8812      	ldrh	r2, [r2, #0]
     6c8:	0852      	lsrs	r2, r2, #1
     6ca:	b292      	uxth	r2, r2
     6cc:	0011      	movs	r1, r2
     6ce:	2201      	movs	r2, #1
     6d0:	4011      	ands	r1, r2
     6d2:	2214      	movs	r2, #20
     6d4:	18ba      	adds	r2, r7, r2
     6d6:	8812      	ldrh	r2, [r2, #0]
     6d8:	0892      	lsrs	r2, r2, #2
     6da:	b292      	uxth	r2, r2
     6dc:	0010      	movs	r0, r2
     6de:	2202      	movs	r2, #2
     6e0:	4002      	ands	r2, r0
     6e2:	4311      	orrs	r1, r2
     6e4:	2214      	movs	r2, #20
     6e6:	18ba      	adds	r2, r7, r2
     6e8:	8812      	ldrh	r2, [r2, #0]
     6ea:	08d2      	lsrs	r2, r2, #3
     6ec:	b292      	uxth	r2, r2
     6ee:	0010      	movs	r0, r2
     6f0:	2204      	movs	r2, #4
     6f2:	4002      	ands	r2, r0
     6f4:	4311      	orrs	r1, r2
     6f6:	2214      	movs	r2, #20
     6f8:	18ba      	adds	r2, r7, r2
     6fa:	8812      	ldrh	r2, [r2, #0]
     6fc:	0a52      	lsrs	r2, r2, #9
     6fe:	b292      	uxth	r2, r2
     700:	0010      	movs	r0, r2
     702:	2208      	movs	r2, #8
     704:	4002      	ands	r2, r0
     706:	4311      	orrs	r1, r2
     708:	2214      	movs	r2, #20
     70a:	18ba      	adds	r2, r7, r2
     70c:	8812      	ldrh	r2, [r2, #0]
     70e:	0ad2      	lsrs	r2, r2, #11
     710:	b292      	uxth	r2, r2
     712:	0010      	movs	r0, r2
     714:	2210      	movs	r2, #16
     716:	4002      	ands	r2, r0
     718:	430a      	orrs	r2, r1
     71a:	601a      	str	r2, [r3, #0]
     71c:	b2d1      	uxtb	r1, r2
     71e:	2317      	movs	r3, #23
     720:	18fb      	adds	r3, r7, r3
     722:	2217      	movs	r2, #23
     724:	18ba      	adds	r2, r7, r2
     726:	7812      	ldrb	r2, [r2, #0]
     728:	404a      	eors	r2, r1
     72a:	701a      	strb	r2, [r3, #0]
     72c:	4b04      	ldr	r3, [pc, #16]	; (740 <send_command+0x184>)
     72e:	2217      	movs	r2, #23
     730:	18ba      	adds	r2, r7, r2
     732:	7812      	ldrb	r2, [r2, #0]
     734:	601a      	str	r2, [r3, #0]
     736:	46c0      	nop			; (mov r8, r8)
     738:	46bd      	mov	sp, r7
     73a:	b006      	add	sp, #24
     73c:	bd80      	pop	{r7, pc}
     73e:	46c0      	nop			; (mov r8, r8)
     740:	40030000 	.word	0x40030000

00000744 <main>:
     744:	b590      	push	{r4, r7, lr}
     746:	b0a7      	sub	sp, #156	; 0x9c
     748:	af00      	add	r7, sp, #0
     74a:	2380      	movs	r3, #128	; 0x80
     74c:	18fb      	adds	r3, r7, r3
     74e:	4a23      	ldr	r2, [pc, #140]	; (7dc <main+0x98>)
     750:	ca13      	ldmia	r2!, {r0, r1, r4}
     752:	c313      	stmia	r3!, {r0, r1, r4}
     754:	8812      	ldrh	r2, [r2, #0]
     756:	801a      	strh	r2, [r3, #0]
     758:	f000 faaa 	bl	cb0 <SystemInit>
     75c:	4b20      	ldr	r3, [pc, #128]	; (7e0 <main+0x9c>)
     75e:	2200      	movs	r2, #0
     760:	601a      	str	r2, [r3, #0]
     762:	2300      	movs	r3, #0
     764:	2294      	movs	r2, #148	; 0x94
     766:	18ba      	adds	r2, r7, r2
     768:	6013      	str	r3, [r2, #0]
     76a:	4b1e      	ldr	r3, [pc, #120]	; (7e4 <main+0xa0>)
     76c:	2200      	movs	r2, #0
     76e:	601a      	str	r2, [r3, #0]
     770:	4b1d      	ldr	r3, [pc, #116]	; (7e8 <main+0xa4>)
     772:	4a1e      	ldr	r2, [pc, #120]	; (7ec <main+0xa8>)
     774:	601a      	str	r2, [r3, #0]
     776:	4b1c      	ldr	r3, [pc, #112]	; (7e8 <main+0xa4>)
     778:	4a1d      	ldr	r2, [pc, #116]	; (7f0 <main+0xac>)
     77a:	605a      	str	r2, [r3, #4]
     77c:	4b1d      	ldr	r3, [pc, #116]	; (7f4 <main+0xb0>)
     77e:	2200      	movs	r2, #0
     780:	601a      	str	r2, [r3, #0]
     782:	4b1d      	ldr	r3, [pc, #116]	; (7f8 <main+0xb4>)
     784:	681b      	ldr	r3, [r3, #0]
     786:	2b00      	cmp	r3, #0
     788:	d021      	beq.n	7ce <main+0x8a>
     78a:	4b1c      	ldr	r3, [pc, #112]	; (7fc <main+0xb8>)
     78c:	2202      	movs	r2, #2
     78e:	5e9b      	ldrsh	r3, [r3, r2]
     790:	2b00      	cmp	r3, #0
     792:	da06      	bge.n	7a2 <main+0x5e>
     794:	4b19      	ldr	r3, [pc, #100]	; (7fc <main+0xb8>)
     796:	2202      	movs	r2, #2
     798:	5e9b      	ldrsh	r3, [r3, r2]
     79a:	4a19      	ldr	r2, [pc, #100]	; (800 <main+0xbc>)
     79c:	4694      	mov	ip, r2
     79e:	4463      	add	r3, ip
     7a0:	e002      	b.n	7a8 <main+0x64>
     7a2:	4b16      	ldr	r3, [pc, #88]	; (7fc <main+0xb8>)
     7a4:	2202      	movs	r2, #2
     7a6:	5e9b      	ldrsh	r3, [r3, r2]
     7a8:	2290      	movs	r2, #144	; 0x90
     7aa:	18ba      	adds	r2, r7, r2
     7ac:	6013      	str	r3, [r2, #0]
     7ae:	4b15      	ldr	r3, [pc, #84]	; (804 <main+0xc0>)
     7b0:	2290      	movs	r2, #144	; 0x90
     7b2:	18ba      	adds	r2, r7, r2
     7b4:	6812      	ldr	r2, [r2, #0]
     7b6:	2180      	movs	r1, #128	; 0x80
     7b8:	0109      	lsls	r1, r1, #4
     7ba:	468c      	mov	ip, r1
     7bc:	4462      	add	r2, ip
     7be:	605a      	str	r2, [r3, #4]
     7c0:	4b0e      	ldr	r3, [pc, #56]	; (7fc <main+0xb8>)
     7c2:	0018      	movs	r0, r3
     7c4:	f7ff fefa 	bl	5bc <send_command>
     7c8:	4b0b      	ldr	r3, [pc, #44]	; (7f8 <main+0xb4>)
     7ca:	2200      	movs	r2, #0
     7cc:	601a      	str	r2, [r3, #0]
     7ce:	4b0e      	ldr	r3, [pc, #56]	; (808 <main+0xc4>)
     7d0:	681b      	ldr	r3, [r3, #0]
     7d2:	0018      	movs	r0, r3
     7d4:	f7ff fdd4 	bl	380 <update_telemetry>
     7d8:	e7d3      	b.n	782 <main+0x3e>
     7da:	46c0      	nop			; (mov r8, r8)
     7dc:	00001f50 	.word	0x00001f50
     7e0:	200000e8 	.word	0x200000e8
     7e4:	200000ec 	.word	0x200000ec
     7e8:	200000d0 	.word	0x200000d0
     7ec:	20000044 	.word	0x20000044
     7f0:	20000084 	.word	0x20000084
     7f4:	200000d8 	.word	0x200000d8
     7f8:	200000f4 	.word	0x200000f4
     7fc:	200000c4 	.word	0x200000c4
     800:	ffff0000 	.word	0xffff0000
     804:	40090000 	.word	0x40090000
     808:	200000f0 	.word	0x200000f0

0000080c <PortConfig>:
     80c:	b580      	push	{r7, lr}
     80e:	af00      	add	r7, sp, #0
     810:	4b63      	ldr	r3, [pc, #396]	; (9a0 <PortConfig+0x194>)
     812:	4a63      	ldr	r2, [pc, #396]	; (9a0 <PortConfig+0x194>)
     814:	69d2      	ldr	r2, [r2, #28]
     816:	2180      	movs	r1, #128	; 0x80
     818:	0449      	lsls	r1, r1, #17
     81a:	430a      	orrs	r2, r1
     81c:	61da      	str	r2, [r3, #28]
     81e:	4b61      	ldr	r3, [pc, #388]	; (9a4 <PortConfig+0x198>)
     820:	4a60      	ldr	r2, [pc, #384]	; (9a4 <PortConfig+0x198>)
     822:	68d2      	ldr	r2, [r2, #12]
     824:	4960      	ldr	r1, [pc, #384]	; (9a8 <PortConfig+0x19c>)
     826:	400a      	ands	r2, r1
     828:	60da      	str	r2, [r3, #12]
     82a:	4b5d      	ldr	r3, [pc, #372]	; (9a0 <PortConfig+0x194>)
     82c:	4a5c      	ldr	r2, [pc, #368]	; (9a0 <PortConfig+0x194>)
     82e:	69d2      	ldr	r2, [r2, #28]
     830:	2180      	movs	r1, #128	; 0x80
     832:	0409      	lsls	r1, r1, #16
     834:	430a      	orrs	r2, r1
     836:	61da      	str	r2, [r3, #28]
     838:	4b59      	ldr	r3, [pc, #356]	; (9a0 <PortConfig+0x194>)
     83a:	4a59      	ldr	r2, [pc, #356]	; (9a0 <PortConfig+0x194>)
     83c:	69d2      	ldr	r2, [r2, #28]
     83e:	2180      	movs	r1, #128	; 0x80
     840:	0449      	lsls	r1, r1, #17
     842:	430a      	orrs	r2, r1
     844:	61da      	str	r2, [r3, #28]
     846:	4b59      	ldr	r3, [pc, #356]	; (9ac <PortConfig+0x1a0>)
     848:	4a58      	ldr	r2, [pc, #352]	; (9ac <PortConfig+0x1a0>)
     84a:	6892      	ldr	r2, [r2, #8]
     84c:	0192      	lsls	r2, r2, #6
     84e:	0992      	lsrs	r2, r2, #6
     850:	609a      	str	r2, [r3, #8]
     852:	4b56      	ldr	r3, [pc, #344]	; (9ac <PortConfig+0x1a0>)
     854:	4a55      	ldr	r2, [pc, #340]	; (9ac <PortConfig+0x1a0>)
     856:	6892      	ldr	r2, [r2, #8]
     858:	21a8      	movs	r1, #168	; 0xa8
     85a:	05c9      	lsls	r1, r1, #23
     85c:	430a      	orrs	r2, r1
     85e:	609a      	str	r2, [r3, #8]
     860:	4b52      	ldr	r3, [pc, #328]	; (9ac <PortConfig+0x1a0>)
     862:	4a52      	ldr	r2, [pc, #328]	; (9ac <PortConfig+0x1a0>)
     864:	68d2      	ldr	r2, [r2, #12]
     866:	21e0      	movs	r1, #224	; 0xe0
     868:	0209      	lsls	r1, r1, #8
     86a:	430a      	orrs	r2, r1
     86c:	60da      	str	r2, [r3, #12]
     86e:	4b4f      	ldr	r3, [pc, #316]	; (9ac <PortConfig+0x1a0>)
     870:	4a4e      	ldr	r2, [pc, #312]	; (9ac <PortConfig+0x1a0>)
     872:	6992      	ldr	r2, [r2, #24]
     874:	21fc      	movs	r1, #252	; 0xfc
     876:	0609      	lsls	r1, r1, #24
     878:	430a      	orrs	r2, r1
     87a:	619a      	str	r2, [r3, #24]
     87c:	4b49      	ldr	r3, [pc, #292]	; (9a4 <PortConfig+0x198>)
     87e:	4a49      	ldr	r2, [pc, #292]	; (9a4 <PortConfig+0x198>)
     880:	6892      	ldr	r2, [r2, #8]
     882:	0b92      	lsrs	r2, r2, #14
     884:	0392      	lsls	r2, r2, #14
     886:	609a      	str	r2, [r3, #8]
     888:	4b46      	ldr	r3, [pc, #280]	; (9a4 <PortConfig+0x198>)
     88a:	4a46      	ldr	r2, [pc, #280]	; (9a4 <PortConfig+0x198>)
     88c:	6892      	ldr	r2, [r2, #8]
     88e:	4948      	ldr	r1, [pc, #288]	; (9b0 <PortConfig+0x1a4>)
     890:	430a      	orrs	r2, r1
     892:	609a      	str	r2, [r3, #8]
     894:	4b43      	ldr	r3, [pc, #268]	; (9a4 <PortConfig+0x198>)
     896:	4a43      	ldr	r2, [pc, #268]	; (9a4 <PortConfig+0x198>)
     898:	68d2      	ldr	r2, [r2, #12]
     89a:	217f      	movs	r1, #127	; 0x7f
     89c:	430a      	orrs	r2, r1
     89e:	60da      	str	r2, [r3, #12]
     8a0:	4b40      	ldr	r3, [pc, #256]	; (9a4 <PortConfig+0x198>)
     8a2:	4a40      	ldr	r2, [pc, #256]	; (9a4 <PortConfig+0x198>)
     8a4:	6992      	ldr	r2, [r2, #24]
     8a6:	4943      	ldr	r1, [pc, #268]	; (9b4 <PortConfig+0x1a8>)
     8a8:	430a      	orrs	r2, r1
     8aa:	619a      	str	r2, [r3, #24]
     8ac:	4b3c      	ldr	r3, [pc, #240]	; (9a0 <PortConfig+0x194>)
     8ae:	4a3c      	ldr	r2, [pc, #240]	; (9a0 <PortConfig+0x194>)
     8b0:	69d2      	ldr	r2, [r2, #28]
     8b2:	2180      	movs	r1, #128	; 0x80
     8b4:	0489      	lsls	r1, r1, #18
     8b6:	430a      	orrs	r2, r1
     8b8:	61da      	str	r2, [r3, #28]
     8ba:	4b3f      	ldr	r3, [pc, #252]	; (9b8 <PortConfig+0x1ac>)
     8bc:	4a3e      	ldr	r2, [pc, #248]	; (9b8 <PortConfig+0x1ac>)
     8be:	68d2      	ldr	r2, [r2, #12]
     8c0:	2102      	movs	r1, #2
     8c2:	438a      	bics	r2, r1
     8c4:	60da      	str	r2, [r3, #12]
     8c6:	4b3c      	ldr	r3, [pc, #240]	; (9b8 <PortConfig+0x1ac>)
     8c8:	4a3b      	ldr	r2, [pc, #236]	; (9b8 <PortConfig+0x1ac>)
     8ca:	68d2      	ldr	r2, [r2, #12]
     8cc:	2108      	movs	r1, #8
     8ce:	430a      	orrs	r2, r1
     8d0:	60da      	str	r2, [r3, #12]
     8d2:	4b39      	ldr	r3, [pc, #228]	; (9b8 <PortConfig+0x1ac>)
     8d4:	4a38      	ldr	r2, [pc, #224]	; (9b8 <PortConfig+0x1ac>)
     8d6:	6892      	ldr	r2, [r2, #8]
     8d8:	21c0      	movs	r1, #192	; 0xc0
     8da:	438a      	bics	r2, r1
     8dc:	609a      	str	r2, [r3, #8]
     8de:	4b36      	ldr	r3, [pc, #216]	; (9b8 <PortConfig+0x1ac>)
     8e0:	4a35      	ldr	r2, [pc, #212]	; (9b8 <PortConfig+0x1ac>)
     8e2:	6892      	ldr	r2, [r2, #8]
     8e4:	2140      	movs	r1, #64	; 0x40
     8e6:	430a      	orrs	r2, r1
     8e8:	609a      	str	r2, [r3, #8]
     8ea:	4b33      	ldr	r3, [pc, #204]	; (9b8 <PortConfig+0x1ac>)
     8ec:	4a32      	ldr	r2, [pc, #200]	; (9b8 <PortConfig+0x1ac>)
     8ee:	6992      	ldr	r2, [r2, #24]
     8f0:	21c0      	movs	r1, #192	; 0xc0
     8f2:	430a      	orrs	r2, r1
     8f4:	619a      	str	r2, [r3, #24]
     8f6:	4b30      	ldr	r3, [pc, #192]	; (9b8 <PortConfig+0x1ac>)
     8f8:	4a2f      	ldr	r2, [pc, #188]	; (9b8 <PortConfig+0x1ac>)
     8fa:	6852      	ldr	r2, [r2, #4]
     8fc:	2108      	movs	r1, #8
     8fe:	430a      	orrs	r2, r1
     900:	605a      	str	r2, [r3, #4]
     902:	4b2d      	ldr	r3, [pc, #180]	; (9b8 <PortConfig+0x1ac>)
     904:	4a2c      	ldr	r2, [pc, #176]	; (9b8 <PortConfig+0x1ac>)
     906:	68d2      	ldr	r2, [r2, #12]
     908:	2101      	movs	r1, #1
     90a:	430a      	orrs	r2, r1
     90c:	60da      	str	r2, [r3, #12]
     90e:	4b2a      	ldr	r3, [pc, #168]	; (9b8 <PortConfig+0x1ac>)
     910:	4a29      	ldr	r2, [pc, #164]	; (9b8 <PortConfig+0x1ac>)
     912:	6892      	ldr	r2, [r2, #8]
     914:	2103      	movs	r1, #3
     916:	438a      	bics	r2, r1
     918:	609a      	str	r2, [r3, #8]
     91a:	4b27      	ldr	r3, [pc, #156]	; (9b8 <PortConfig+0x1ac>)
     91c:	4a26      	ldr	r2, [pc, #152]	; (9b8 <PortConfig+0x1ac>)
     91e:	6992      	ldr	r2, [r2, #24]
     920:	2103      	movs	r1, #3
     922:	430a      	orrs	r2, r1
     924:	619a      	str	r2, [r3, #24]
     926:	4b24      	ldr	r3, [pc, #144]	; (9b8 <PortConfig+0x1ac>)
     928:	4a23      	ldr	r2, [pc, #140]	; (9b8 <PortConfig+0x1ac>)
     92a:	6852      	ldr	r2, [r2, #4]
     92c:	2101      	movs	r1, #1
     92e:	430a      	orrs	r2, r1
     930:	605a      	str	r2, [r3, #4]
     932:	4b21      	ldr	r3, [pc, #132]	; (9b8 <PortConfig+0x1ac>)
     934:	4a20      	ldr	r2, [pc, #128]	; (9b8 <PortConfig+0x1ac>)
     936:	6812      	ldr	r2, [r2, #0]
     938:	2101      	movs	r1, #1
     93a:	430a      	orrs	r2, r1
     93c:	601a      	str	r2, [r3, #0]
     93e:	4b18      	ldr	r3, [pc, #96]	; (9a0 <PortConfig+0x194>)
     940:	4a17      	ldr	r2, [pc, #92]	; (9a0 <PortConfig+0x194>)
     942:	69d2      	ldr	r2, [r2, #28]
     944:	2180      	movs	r1, #128	; 0x80
     946:	0409      	lsls	r1, r1, #16
     948:	430a      	orrs	r2, r1
     94a:	61da      	str	r2, [r3, #28]
     94c:	4b17      	ldr	r3, [pc, #92]	; (9ac <PortConfig+0x1a0>)
     94e:	4a17      	ldr	r2, [pc, #92]	; (9ac <PortConfig+0x1a0>)
     950:	6892      	ldr	r2, [r2, #8]
     952:	491a      	ldr	r1, [pc, #104]	; (9bc <PortConfig+0x1b0>)
     954:	400a      	ands	r2, r1
     956:	609a      	str	r2, [r3, #8]
     958:	4b14      	ldr	r3, [pc, #80]	; (9ac <PortConfig+0x1a0>)
     95a:	4a14      	ldr	r2, [pc, #80]	; (9ac <PortConfig+0x1a0>)
     95c:	6892      	ldr	r2, [r2, #8]
     95e:	21a0      	movs	r1, #160	; 0xa0
     960:	0049      	lsls	r1, r1, #1
     962:	430a      	orrs	r2, r1
     964:	609a      	str	r2, [r3, #8]
     966:	4b11      	ldr	r3, [pc, #68]	; (9ac <PortConfig+0x1a0>)
     968:	4a10      	ldr	r2, [pc, #64]	; (9ac <PortConfig+0x1a0>)
     96a:	68d2      	ldr	r2, [r2, #12]
     96c:	2118      	movs	r1, #24
     96e:	430a      	orrs	r2, r1
     970:	60da      	str	r2, [r3, #12]
     972:	4b0e      	ldr	r3, [pc, #56]	; (9ac <PortConfig+0x1a0>)
     974:	4a0d      	ldr	r2, [pc, #52]	; (9ac <PortConfig+0x1a0>)
     976:	6992      	ldr	r2, [r2, #24]
     978:	21f0      	movs	r1, #240	; 0xf0
     97a:	0089      	lsls	r1, r1, #2
     97c:	430a      	orrs	r2, r1
     97e:	619a      	str	r2, [r3, #24]
     980:	4b0a      	ldr	r3, [pc, #40]	; (9ac <PortConfig+0x1a0>)
     982:	4a0a      	ldr	r2, [pc, #40]	; (9ac <PortConfig+0x1a0>)
     984:	6812      	ldr	r2, [r2, #0]
     986:	2118      	movs	r1, #24
     988:	438a      	bics	r2, r1
     98a:	601a      	str	r2, [r3, #0]
     98c:	4b07      	ldr	r3, [pc, #28]	; (9ac <PortConfig+0x1a0>)
     98e:	4a07      	ldr	r2, [pc, #28]	; (9ac <PortConfig+0x1a0>)
     990:	6912      	ldr	r2, [r2, #16]
     992:	2180      	movs	r1, #128	; 0x80
     994:	0349      	lsls	r1, r1, #13
     996:	430a      	orrs	r2, r1
     998:	611a      	str	r2, [r3, #16]
     99a:	46c0      	nop			; (mov r8, r8)
     99c:	46bd      	mov	sp, r7
     99e:	bd80      	pop	{r7, pc}
     9a0:	40020000 	.word	0x40020000
     9a4:	400c0000 	.word	0x400c0000
     9a8:	ffffc7ff 	.word	0xffffc7ff
     9ac:	400b8000 	.word	0x400b8000
     9b0:	00001555 	.word	0x00001555
     9b4:	00003fff 	.word	0x00003fff
     9b8:	400c8000 	.word	0x400c8000
     9bc:	fffffc3f 	.word	0xfffffc3f

000009c0 <dac_init>:
     9c0:	b580      	push	{r7, lr}
     9c2:	af00      	add	r7, sp, #0
     9c4:	4b07      	ldr	r3, [pc, #28]	; (9e4 <dac_init+0x24>)
     9c6:	4a07      	ldr	r2, [pc, #28]	; (9e4 <dac_init+0x24>)
     9c8:	69d2      	ldr	r2, [r2, #28]
     9ca:	2180      	movs	r1, #128	; 0x80
     9cc:	02c9      	lsls	r1, r1, #11
     9ce:	430a      	orrs	r2, r1
     9d0:	61da      	str	r2, [r3, #28]
     9d2:	4b05      	ldr	r3, [pc, #20]	; (9e8 <dac_init+0x28>)
     9d4:	4a04      	ldr	r2, [pc, #16]	; (9e8 <dac_init+0x28>)
     9d6:	6812      	ldr	r2, [r2, #0]
     9d8:	2104      	movs	r1, #4
     9da:	430a      	orrs	r2, r1
     9dc:	601a      	str	r2, [r3, #0]
     9de:	46c0      	nop			; (mov r8, r8)
     9e0:	46bd      	mov	sp, r7
     9e2:	bd80      	pop	{r7, pc}
     9e4:	40020000 	.word	0x40020000
     9e8:	40090000 	.word	0x40090000

000009ec <ClkConfig>:
     9ec:	b580      	push	{r7, lr}
     9ee:	af00      	add	r7, sp, #0
     9f0:	4b18      	ldr	r3, [pc, #96]	; (a54 <ClkConfig+0x68>)
     9f2:	4a18      	ldr	r2, [pc, #96]	; (a54 <ClkConfig+0x68>)
     9f4:	6892      	ldr	r2, [r2, #8]
     9f6:	2101      	movs	r1, #1
     9f8:	430a      	orrs	r2, r1
     9fa:	609a      	str	r2, [r3, #8]
     9fc:	46c0      	nop			; (mov r8, r8)
     9fe:	4b15      	ldr	r3, [pc, #84]	; (a54 <ClkConfig+0x68>)
     a00:	681b      	ldr	r3, [r3, #0]
     a02:	2204      	movs	r2, #4
     a04:	4013      	ands	r3, r2
     a06:	d0fa      	beq.n	9fe <ClkConfig+0x12>
     a08:	4b12      	ldr	r3, [pc, #72]	; (a54 <ClkConfig+0x68>)
     a0a:	4a12      	ldr	r2, [pc, #72]	; (a54 <ClkConfig+0x68>)
     a0c:	68d2      	ldr	r2, [r2, #12]
     a0e:	2102      	movs	r1, #2
     a10:	430a      	orrs	r2, r1
     a12:	60da      	str	r2, [r3, #12]
     a14:	4b0f      	ldr	r3, [pc, #60]	; (a54 <ClkConfig+0x68>)
     a16:	4a10      	ldr	r2, [pc, #64]	; (a58 <ClkConfig+0x6c>)
     a18:	605a      	str	r2, [r3, #4]
     a1a:	46c0      	nop			; (mov r8, r8)
     a1c:	4b0d      	ldr	r3, [pc, #52]	; (a54 <ClkConfig+0x68>)
     a1e:	681b      	ldr	r3, [r3, #0]
     a20:	2202      	movs	r2, #2
     a22:	4013      	ands	r3, r2
     a24:	d0fa      	beq.n	a1c <ClkConfig+0x30>
     a26:	4b0d      	ldr	r3, [pc, #52]	; (a5c <ClkConfig+0x70>)
     a28:	4a0c      	ldr	r2, [pc, #48]	; (a5c <ClkConfig+0x70>)
     a2a:	6812      	ldr	r2, [r2, #0]
     a2c:	2120      	movs	r1, #32
     a2e:	430a      	orrs	r2, r1
     a30:	601a      	str	r2, [r3, #0]
     a32:	4b08      	ldr	r3, [pc, #32]	; (a54 <ClkConfig+0x68>)
     a34:	4a07      	ldr	r2, [pc, #28]	; (a54 <ClkConfig+0x68>)
     a36:	68d2      	ldr	r2, [r2, #12]
     a38:	2180      	movs	r1, #128	; 0x80
     a3a:	0049      	lsls	r1, r1, #1
     a3c:	430a      	orrs	r2, r1
     a3e:	60da      	str	r2, [r3, #12]
     a40:	4b04      	ldr	r3, [pc, #16]	; (a54 <ClkConfig+0x68>)
     a42:	4a04      	ldr	r2, [pc, #16]	; (a54 <ClkConfig+0x68>)
     a44:	68d2      	ldr	r2, [r2, #12]
     a46:	2104      	movs	r1, #4
     a48:	430a      	orrs	r2, r1
     a4a:	60da      	str	r2, [r3, #12]
     a4c:	46c0      	nop			; (mov r8, r8)
     a4e:	46bd      	mov	sp, r7
     a50:	bd80      	pop	{r7, pc}
     a52:	46c0      	nop			; (mov r8, r8)
     a54:	40020000 	.word	0x40020000
     a58:	00000b04 	.word	0x00000b04
     a5c:	40018000 	.word	0x40018000

00000a60 <TimerConfig>:
     a60:	b580      	push	{r7, lr}
     a62:	af00      	add	r7, sp, #0
     a64:	4b5d      	ldr	r3, [pc, #372]	; (bdc <TimerConfig+0x17c>)
     a66:	4a5d      	ldr	r2, [pc, #372]	; (bdc <TimerConfig+0x17c>)
     a68:	69d2      	ldr	r2, [r2, #28]
     a6a:	2180      	movs	r1, #128	; 0x80
     a6c:	01c9      	lsls	r1, r1, #7
     a6e:	430a      	orrs	r2, r1
     a70:	61da      	str	r2, [r3, #28]
     a72:	4b5a      	ldr	r3, [pc, #360]	; (bdc <TimerConfig+0x17c>)
     a74:	4a59      	ldr	r2, [pc, #356]	; (bdc <TimerConfig+0x17c>)
     a76:	6a52      	ldr	r2, [r2, #36]	; 0x24
     a78:	2180      	movs	r1, #128	; 0x80
     a7a:	0449      	lsls	r1, r1, #17
     a7c:	430a      	orrs	r2, r1
     a7e:	625a      	str	r2, [r3, #36]	; 0x24
     a80:	4b56      	ldr	r3, [pc, #344]	; (bdc <TimerConfig+0x17c>)
     a82:	4a56      	ldr	r2, [pc, #344]	; (bdc <TimerConfig+0x17c>)
     a84:	6a52      	ldr	r2, [r2, #36]	; 0x24
     a86:	21ff      	movs	r1, #255	; 0xff
     a88:	438a      	bics	r2, r1
     a8a:	625a      	str	r2, [r3, #36]	; 0x24
     a8c:	4b54      	ldr	r3, [pc, #336]	; (be0 <TimerConfig+0x180>)
     a8e:	2200      	movs	r2, #0
     a90:	601a      	str	r2, [r3, #0]
     a92:	4b53      	ldr	r3, [pc, #332]	; (be0 <TimerConfig+0x180>)
     a94:	225f      	movs	r2, #95	; 0x5f
     a96:	605a      	str	r2, [r3, #4]
     a98:	4b51      	ldr	r3, [pc, #324]	; (be0 <TimerConfig+0x180>)
     a9a:	4a52      	ldr	r2, [pc, #328]	; (be4 <TimerConfig+0x184>)
     a9c:	609a      	str	r2, [r3, #8]
     a9e:	4b50      	ldr	r3, [pc, #320]	; (be0 <TimerConfig+0x180>)
     aa0:	22c8      	movs	r2, #200	; 0xc8
     aa2:	0052      	lsls	r2, r2, #1
     aa4:	611a      	str	r2, [r3, #16]
     aa6:	4b4e      	ldr	r3, [pc, #312]	; (be0 <TimerConfig+0x180>)
     aa8:	22af      	movs	r2, #175	; 0xaf
     aaa:	0092      	lsls	r2, r2, #2
     aac:	615a      	str	r2, [r3, #20]
     aae:	4b4c      	ldr	r3, [pc, #304]	; (be0 <TimerConfig+0x180>)
     ab0:	4a4d      	ldr	r2, [pc, #308]	; (be8 <TimerConfig+0x188>)
     ab2:	619a      	str	r2, [r3, #24]
     ab4:	4b4a      	ldr	r3, [pc, #296]	; (be0 <TimerConfig+0x180>)
     ab6:	4a4a      	ldr	r2, [pc, #296]	; (be0 <TimerConfig+0x180>)
     ab8:	6a12      	ldr	r2, [r2, #32]
     aba:	494c      	ldr	r1, [pc, #304]	; (bec <TimerConfig+0x18c>)
     abc:	400a      	ands	r2, r1
     abe:	621a      	str	r2, [r3, #32]
     ac0:	4b47      	ldr	r3, [pc, #284]	; (be0 <TimerConfig+0x180>)
     ac2:	4a47      	ldr	r2, [pc, #284]	; (be0 <TimerConfig+0x180>)
     ac4:	6a12      	ldr	r2, [r2, #32]
     ac6:	21e0      	movs	r1, #224	; 0xe0
     ac8:	0109      	lsls	r1, r1, #4
     aca:	430a      	orrs	r2, r1
     acc:	621a      	str	r2, [r3, #32]
     ace:	4b44      	ldr	r3, [pc, #272]	; (be0 <TimerConfig+0x180>)
     ad0:	4a43      	ldr	r2, [pc, #268]	; (be0 <TimerConfig+0x180>)
     ad2:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ad4:	210f      	movs	r1, #15
     ad6:	438a      	bics	r2, r1
     ad8:	631a      	str	r2, [r3, #48]	; 0x30
     ada:	4b41      	ldr	r3, [pc, #260]	; (be0 <TimerConfig+0x180>)
     adc:	4a40      	ldr	r2, [pc, #256]	; (be0 <TimerConfig+0x180>)
     ade:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ae0:	210c      	movs	r1, #12
     ae2:	430a      	orrs	r2, r1
     ae4:	631a      	str	r2, [r3, #48]	; 0x30
     ae6:	4b3e      	ldr	r3, [pc, #248]	; (be0 <TimerConfig+0x180>)
     ae8:	4a3d      	ldr	r2, [pc, #244]	; (be0 <TimerConfig+0x180>)
     aea:	6b12      	ldr	r2, [r2, #48]	; 0x30
     aec:	2101      	movs	r1, #1
     aee:	430a      	orrs	r2, r1
     af0:	631a      	str	r2, [r3, #48]	; 0x30
     af2:	4b3b      	ldr	r3, [pc, #236]	; (be0 <TimerConfig+0x180>)
     af4:	4a3a      	ldr	r2, [pc, #232]	; (be0 <TimerConfig+0x180>)
     af6:	6a52      	ldr	r2, [r2, #36]	; 0x24
     af8:	493c      	ldr	r1, [pc, #240]	; (bec <TimerConfig+0x18c>)
     afa:	400a      	ands	r2, r1
     afc:	625a      	str	r2, [r3, #36]	; 0x24
     afe:	4b38      	ldr	r3, [pc, #224]	; (be0 <TimerConfig+0x180>)
     b00:	4a37      	ldr	r2, [pc, #220]	; (be0 <TimerConfig+0x180>)
     b02:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b04:	21e0      	movs	r1, #224	; 0xe0
     b06:	0109      	lsls	r1, r1, #4
     b08:	430a      	orrs	r2, r1
     b0a:	625a      	str	r2, [r3, #36]	; 0x24
     b0c:	4b34      	ldr	r3, [pc, #208]	; (be0 <TimerConfig+0x180>)
     b0e:	4a34      	ldr	r2, [pc, #208]	; (be0 <TimerConfig+0x180>)
     b10:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b12:	210f      	movs	r1, #15
     b14:	438a      	bics	r2, r1
     b16:	635a      	str	r2, [r3, #52]	; 0x34
     b18:	4b31      	ldr	r3, [pc, #196]	; (be0 <TimerConfig+0x180>)
     b1a:	4a31      	ldr	r2, [pc, #196]	; (be0 <TimerConfig+0x180>)
     b1c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b1e:	210c      	movs	r1, #12
     b20:	430a      	orrs	r2, r1
     b22:	635a      	str	r2, [r3, #52]	; 0x34
     b24:	4b2e      	ldr	r3, [pc, #184]	; (be0 <TimerConfig+0x180>)
     b26:	4a2e      	ldr	r2, [pc, #184]	; (be0 <TimerConfig+0x180>)
     b28:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b2a:	2101      	movs	r1, #1
     b2c:	430a      	orrs	r2, r1
     b2e:	635a      	str	r2, [r3, #52]	; 0x34
     b30:	4b2b      	ldr	r3, [pc, #172]	; (be0 <TimerConfig+0x180>)
     b32:	4a2b      	ldr	r2, [pc, #172]	; (be0 <TimerConfig+0x180>)
     b34:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b36:	492d      	ldr	r1, [pc, #180]	; (bec <TimerConfig+0x18c>)
     b38:	400a      	ands	r2, r1
     b3a:	629a      	str	r2, [r3, #40]	; 0x28
     b3c:	4b28      	ldr	r3, [pc, #160]	; (be0 <TimerConfig+0x180>)
     b3e:	4a28      	ldr	r2, [pc, #160]	; (be0 <TimerConfig+0x180>)
     b40:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b42:	21e0      	movs	r1, #224	; 0xe0
     b44:	0109      	lsls	r1, r1, #4
     b46:	430a      	orrs	r2, r1
     b48:	629a      	str	r2, [r3, #40]	; 0x28
     b4a:	4b25      	ldr	r3, [pc, #148]	; (be0 <TimerConfig+0x180>)
     b4c:	4a24      	ldr	r2, [pc, #144]	; (be0 <TimerConfig+0x180>)
     b4e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b50:	210f      	movs	r1, #15
     b52:	438a      	bics	r2, r1
     b54:	639a      	str	r2, [r3, #56]	; 0x38
     b56:	4b22      	ldr	r3, [pc, #136]	; (be0 <TimerConfig+0x180>)
     b58:	4a21      	ldr	r2, [pc, #132]	; (be0 <TimerConfig+0x180>)
     b5a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b5c:	210c      	movs	r1, #12
     b5e:	430a      	orrs	r2, r1
     b60:	639a      	str	r2, [r3, #56]	; 0x38
     b62:	4b1f      	ldr	r3, [pc, #124]	; (be0 <TimerConfig+0x180>)
     b64:	4a1e      	ldr	r2, [pc, #120]	; (be0 <TimerConfig+0x180>)
     b66:	6b92      	ldr	r2, [r2, #56]	; 0x38
     b68:	2101      	movs	r1, #1
     b6a:	430a      	orrs	r2, r1
     b6c:	639a      	str	r2, [r3, #56]	; 0x38
     b6e:	4b1c      	ldr	r3, [pc, #112]	; (be0 <TimerConfig+0x180>)
     b70:	4a1b      	ldr	r2, [pc, #108]	; (be0 <TimerConfig+0x180>)
     b72:	6d92      	ldr	r2, [r2, #88]	; 0x58
     b74:	21e0      	movs	r1, #224	; 0xe0
     b76:	0109      	lsls	r1, r1, #4
     b78:	430a      	orrs	r2, r1
     b7a:	659a      	str	r2, [r3, #88]	; 0x58
     b7c:	4b18      	ldr	r3, [pc, #96]	; (be0 <TimerConfig+0x180>)
     b7e:	2201      	movs	r2, #1
     b80:	60da      	str	r2, [r3, #12]
     b82:	4b16      	ldr	r3, [pc, #88]	; (bdc <TimerConfig+0x17c>)
     b84:	4a15      	ldr	r2, [pc, #84]	; (bdc <TimerConfig+0x17c>)
     b86:	69d2      	ldr	r2, [r2, #28]
     b88:	2180      	movs	r1, #128	; 0x80
     b8a:	0309      	lsls	r1, r1, #12
     b8c:	430a      	orrs	r2, r1
     b8e:	61da      	str	r2, [r3, #28]
     b90:	4b12      	ldr	r3, [pc, #72]	; (bdc <TimerConfig+0x17c>)
     b92:	4a12      	ldr	r2, [pc, #72]	; (bdc <TimerConfig+0x17c>)
     b94:	6a92      	ldr	r2, [r2, #40]	; 0x28
     b96:	2180      	movs	r1, #128	; 0x80
     b98:	04c9      	lsls	r1, r1, #19
     b9a:	430a      	orrs	r2, r1
     b9c:	629a      	str	r2, [r3, #40]	; 0x28
     b9e:	4b0f      	ldr	r3, [pc, #60]	; (bdc <TimerConfig+0x17c>)
     ba0:	4a0e      	ldr	r2, [pc, #56]	; (bdc <TimerConfig+0x17c>)
     ba2:	6a92      	ldr	r2, [r2, #40]	; 0x28
     ba4:	4912      	ldr	r1, [pc, #72]	; (bf0 <TimerConfig+0x190>)
     ba6:	400a      	ands	r2, r1
     ba8:	629a      	str	r2, [r3, #40]	; 0x28
     baa:	4b12      	ldr	r3, [pc, #72]	; (bf4 <TimerConfig+0x194>)
     bac:	2200      	movs	r2, #0
     bae:	601a      	str	r2, [r3, #0]
     bb0:	4b10      	ldr	r3, [pc, #64]	; (bf4 <TimerConfig+0x194>)
     bb2:	225f      	movs	r2, #95	; 0x5f
     bb4:	605a      	str	r2, [r3, #4]
     bb6:	4b0f      	ldr	r3, [pc, #60]	; (bf4 <TimerConfig+0x194>)
     bb8:	4a0a      	ldr	r2, [pc, #40]	; (be4 <TimerConfig+0x184>)
     bba:	609a      	str	r2, [r3, #8]
     bbc:	4b0d      	ldr	r3, [pc, #52]	; (bf4 <TimerConfig+0x194>)
     bbe:	4a0d      	ldr	r2, [pc, #52]	; (bf4 <TimerConfig+0x194>)
     bc0:	6d92      	ldr	r2, [r2, #88]	; 0x58
     bc2:	2102      	movs	r1, #2
     bc4:	430a      	orrs	r2, r1
     bc6:	659a      	str	r2, [r3, #88]	; 0x58
     bc8:	4b0a      	ldr	r3, [pc, #40]	; (bf4 <TimerConfig+0x194>)
     bca:	2201      	movs	r2, #1
     bcc:	60da      	str	r2, [r3, #12]
     bce:	200d      	movs	r0, #13
     bd0:	f7ff fa76 	bl	c0 <NVIC_EnableIRQ>
     bd4:	46c0      	nop			; (mov r8, r8)
     bd6:	46bd      	mov	sp, r7
     bd8:	bd80      	pop	{r7, pc}
     bda:	46c0      	nop			; (mov r8, r8)
     bdc:	40020000 	.word	0x40020000
     be0:	40070000 	.word	0x40070000
     be4:	000003e7 	.word	0x000003e7
     be8:	000003de 	.word	0x000003de
     bec:	fffff1ff 	.word	0xfffff1ff
     bf0:	ff00ffff 	.word	0xff00ffff
     bf4:	40098000 	.word	0x40098000

00000bf8 <mil_std_1533_init_rt>:
     bf8:	b580      	push	{r7, lr}
     bfa:	b082      	sub	sp, #8
     bfc:	af00      	add	r7, sp, #0
     bfe:	4b26      	ldr	r3, [pc, #152]	; (c98 <mil_std_1533_init_rt+0xa0>)
     c00:	603b      	str	r3, [r7, #0]
     c02:	4b26      	ldr	r3, [pc, #152]	; (c9c <mil_std_1533_init_rt+0xa4>)
     c04:	4a25      	ldr	r2, [pc, #148]	; (c9c <mil_std_1533_init_rt+0xa4>)
     c06:	69d2      	ldr	r2, [r2, #28]
     c08:	2180      	movs	r1, #128	; 0x80
     c0a:	0089      	lsls	r1, r1, #2
     c0c:	430a      	orrs	r2, r1
     c0e:	61da      	str	r2, [r3, #28]
     c10:	4b22      	ldr	r3, [pc, #136]	; (c9c <mil_std_1533_init_rt+0xa4>)
     c12:	4a22      	ldr	r2, [pc, #136]	; (c9c <mil_std_1533_init_rt+0xa4>)
     c14:	6b52      	ldr	r2, [r2, #52]	; 0x34
     c16:	4922      	ldr	r1, [pc, #136]	; (ca0 <mil_std_1533_init_rt+0xa8>)
     c18:	430a      	orrs	r2, r1
     c1a:	635a      	str	r2, [r3, #52]	; 0x34
     c1c:	4a21      	ldr	r2, [pc, #132]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c1e:	2380      	movs	r3, #128	; 0x80
     c20:	015b      	lsls	r3, r3, #5
     c22:	2101      	movs	r1, #1
     c24:	50d1      	str	r1, [r2, r3]
     c26:	4a1f      	ldr	r2, [pc, #124]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c28:	2380      	movs	r3, #128	; 0x80
     c2a:	015b      	lsls	r3, r3, #5
     c2c:	491e      	ldr	r1, [pc, #120]	; (ca8 <mil_std_1533_init_rt+0xb0>)
     c2e:	50d1      	str	r1, [r2, r3]
     c30:	491c      	ldr	r1, [pc, #112]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c32:	4a1c      	ldr	r2, [pc, #112]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c34:	2381      	movs	r3, #129	; 0x81
     c36:	015b      	lsls	r3, r3, #5
     c38:	58d3      	ldr	r3, [r2, r3]
     c3a:	2208      	movs	r2, #8
     c3c:	431a      	orrs	r2, r3
     c3e:	2381      	movs	r3, #129	; 0x81
     c40:	015b      	lsls	r3, r3, #5
     c42:	50ca      	str	r2, [r1, r3]
     c44:	4917      	ldr	r1, [pc, #92]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c46:	4a17      	ldr	r2, [pc, #92]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c48:	2381      	movs	r3, #129	; 0x81
     c4a:	015b      	lsls	r3, r3, #5
     c4c:	58d3      	ldr	r3, [r2, r3]
     c4e:	2206      	movs	r2, #6
     c50:	431a      	orrs	r2, r3
     c52:	2381      	movs	r3, #129	; 0x81
     c54:	015b      	lsls	r3, r3, #5
     c56:	50ca      	str	r2, [r1, r3]
     c58:	2001      	movs	r0, #1
     c5a:	f7ff fa31 	bl	c0 <NVIC_EnableIRQ>
     c5e:	4911      	ldr	r1, [pc, #68]	; (ca4 <mil_std_1533_init_rt+0xac>)
     c60:	4a12      	ldr	r2, [pc, #72]	; (cac <mil_std_1533_init_rt+0xb4>)
     c62:	2380      	movs	r3, #128	; 0x80
     c64:	01db      	lsls	r3, r3, #7
     c66:	508b      	str	r3, [r1, r2]
     c68:	2300      	movs	r3, #0
     c6a:	607b      	str	r3, [r7, #4]
     c6c:	e00d      	b.n	c8a <mil_std_1533_init_rt+0x92>
     c6e:	683b      	ldr	r3, [r7, #0]
     c70:	1d1a      	adds	r2, r3, #4
     c72:	603a      	str	r2, [r7, #0]
     c74:	687a      	ldr	r2, [r7, #4]
     c76:	b292      	uxth	r2, r2
     c78:	210f      	movs	r1, #15
     c7a:	400a      	ands	r2, r1
     c7c:	b292      	uxth	r2, r2
     c7e:	3230      	adds	r2, #48	; 0x30
     c80:	b292      	uxth	r2, r2
     c82:	601a      	str	r2, [r3, #0]
     c84:	687b      	ldr	r3, [r7, #4]
     c86:	3301      	adds	r3, #1
     c88:	607b      	str	r3, [r7, #4]
     c8a:	687b      	ldr	r3, [r7, #4]
     c8c:	2b1f      	cmp	r3, #31
     c8e:	ddee      	ble.n	c6e <mil_std_1533_init_rt+0x76>
     c90:	46c0      	nop			; (mov r8, r8)
     c92:	46bd      	mov	sp, r7
     c94:	b002      	add	sp, #8
     c96:	bd80      	pop	{r7, pc}
     c98:	40048080 	.word	0x40048080
     c9c:	40020000 	.word	0x40020000
     ca0:	02000100 	.word	0x02000100
     ca4:	40048000 	.word	0x40048000
     ca8:	00018238 	.word	0x00018238
     cac:	00001018 	.word	0x00001018

00000cb0 <SystemInit>:
     cb0:	b580      	push	{r7, lr}
     cb2:	af00      	add	r7, sp, #0
     cb4:	f7ff fe9a 	bl	9ec <ClkConfig>
     cb8:	f7ff fda8 	bl	80c <PortConfig>
     cbc:	f7ff fed0 	bl	a60 <TimerConfig>
     cc0:	f000 fa32 	bl	1128 <uart_init>
     cc4:	f7ff ff98 	bl	bf8 <mil_std_1533_init_rt>
     cc8:	f7ff fe7a 	bl	9c0 <dac_init>
     ccc:	f001 f822 	bl	1d14 <adc_dma_init>
     cd0:	f001 f860 	bl	1d94 <adc_dma_start>
     cd4:	46c0      	nop			; (mov r8, r8)
     cd6:	46bd      	mov	sp, r7
     cd8:	bd80      	pop	{r7, pc}
     cda:	46c0      	nop			; (mov r8, r8)

00000cdc <SysTick_Handler>:
     cdc:	b580      	push	{r7, lr}
     cde:	af00      	add	r7, sp, #0
     ce0:	4b03      	ldr	r3, [pc, #12]	; (cf0 <SysTick_Handler+0x14>)
     ce2:	681b      	ldr	r3, [r3, #0]
     ce4:	1c5a      	adds	r2, r3, #1
     ce6:	4b02      	ldr	r3, [pc, #8]	; (cf0 <SysTick_Handler+0x14>)
     ce8:	601a      	str	r2, [r3, #0]
     cea:	46c0      	nop			; (mov r8, r8)
     cec:	46bd      	mov	sp, r7
     cee:	bd80      	pop	{r7, pc}
     cf0:	200000f0 	.word	0x200000f0

00000cf4 <TIMER4_Handler>:
     cf4:	b580      	push	{r7, lr}
     cf6:	af00      	add	r7, sp, #0
     cf8:	4b06      	ldr	r3, [pc, #24]	; (d14 <TIMER4_Handler+0x20>)
     cfa:	2200      	movs	r2, #0
     cfc:	655a      	str	r2, [r3, #84]	; 0x54
     cfe:	4b06      	ldr	r3, [pc, #24]	; (d18 <TIMER4_Handler+0x24>)
     d00:	681b      	ldr	r3, [r3, #0]
     d02:	1c5a      	adds	r2, r3, #1
     d04:	4b04      	ldr	r3, [pc, #16]	; (d18 <TIMER4_Handler+0x24>)
     d06:	601a      	str	r2, [r3, #0]
     d08:	4b04      	ldr	r3, [pc, #16]	; (d1c <TIMER4_Handler+0x28>)
     d0a:	2201      	movs	r2, #1
     d0c:	601a      	str	r2, [r3, #0]
     d0e:	46c0      	nop			; (mov r8, r8)
     d10:	46bd      	mov	sp, r7
     d12:	bd80      	pop	{r7, pc}
     d14:	40098000 	.word	0x40098000
     d18:	200000f0 	.word	0x200000f0
     d1c:	200000f8 	.word	0x200000f8

00000d20 <MIL_STD_1553B1_Handler>:
     d20:	b590      	push	{r4, r7, lr}
     d22:	b087      	sub	sp, #28
     d24:	af00      	add	r7, sp, #0
     d26:	4bbe      	ldr	r3, [pc, #760]	; (1020 <MIL_STD_1553B1_Handler+0x300>)
     d28:	613b      	str	r3, [r7, #16]
     d2a:	4abe      	ldr	r2, [pc, #760]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     d2c:	4bbe      	ldr	r3, [pc, #760]	; (1028 <MIL_STD_1553B1_Handler+0x308>)
     d2e:	58d3      	ldr	r3, [r2, r3]
     d30:	2202      	movs	r2, #2
     d32:	4013      	ands	r3, r2
     d34:	d100      	bne.n	d38 <MIL_STD_1553B1_Handler+0x18>
     d36:	e10f      	b.n	f58 <MIL_STD_1553B1_Handler+0x238>
     d38:	4aba      	ldr	r2, [pc, #744]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     d3a:	4bbc      	ldr	r3, [pc, #752]	; (102c <MIL_STD_1553B1_Handler+0x30c>)
     d3c:	58d3      	ldr	r3, [r2, r3]
     d3e:	4abc      	ldr	r2, [pc, #752]	; (1030 <MIL_STD_1553B1_Handler+0x310>)
     d40:	4293      	cmp	r3, r2
     d42:	d000      	beq.n	d46 <MIL_STD_1553B1_Handler+0x26>
     d44:	e108      	b.n	f58 <MIL_STD_1553B1_Handler+0x238>
     d46:	4bbb      	ldr	r3, [pc, #748]	; (1034 <MIL_STD_1553B1_Handler+0x314>)
     d48:	681b      	ldr	r3, [r3, #0]
     d4a:	2201      	movs	r2, #1
     d4c:	4053      	eors	r3, r2
     d4e:	009a      	lsls	r2, r3, #2
     d50:	4bb9      	ldr	r3, [pc, #740]	; (1038 <MIL_STD_1553B1_Handler+0x318>)
     d52:	18d3      	adds	r3, r2, r3
     d54:	681b      	ldr	r3, [r3, #0]
     d56:	60fb      	str	r3, [r7, #12]
     d58:	693b      	ldr	r3, [r7, #16]
     d5a:	1d1a      	adds	r2, r3, #4
     d5c:	613a      	str	r2, [r7, #16]
     d5e:	68fa      	ldr	r2, [r7, #12]
     d60:	1c91      	adds	r1, r2, #2
     d62:	60f9      	str	r1, [r7, #12]
     d64:	8812      	ldrh	r2, [r2, #0]
     d66:	601a      	str	r2, [r3, #0]
     d68:	693b      	ldr	r3, [r7, #16]
     d6a:	1d1a      	adds	r2, r3, #4
     d6c:	613a      	str	r2, [r7, #16]
     d6e:	68fa      	ldr	r2, [r7, #12]
     d70:	1c91      	adds	r1, r2, #2
     d72:	60f9      	str	r1, [r7, #12]
     d74:	8812      	ldrh	r2, [r2, #0]
     d76:	601a      	str	r2, [r3, #0]
     d78:	693b      	ldr	r3, [r7, #16]
     d7a:	1d1a      	adds	r2, r3, #4
     d7c:	613a      	str	r2, [r7, #16]
     d7e:	68fa      	ldr	r2, [r7, #12]
     d80:	1c91      	adds	r1, r2, #2
     d82:	60f9      	str	r1, [r7, #12]
     d84:	8812      	ldrh	r2, [r2, #0]
     d86:	601a      	str	r2, [r3, #0]
     d88:	693b      	ldr	r3, [r7, #16]
     d8a:	1d1a      	adds	r2, r3, #4
     d8c:	613a      	str	r2, [r7, #16]
     d8e:	68fa      	ldr	r2, [r7, #12]
     d90:	1c91      	adds	r1, r2, #2
     d92:	60f9      	str	r1, [r7, #12]
     d94:	8812      	ldrh	r2, [r2, #0]
     d96:	601a      	str	r2, [r3, #0]
     d98:	693b      	ldr	r3, [r7, #16]
     d9a:	1d1a      	adds	r2, r3, #4
     d9c:	613a      	str	r2, [r7, #16]
     d9e:	68fa      	ldr	r2, [r7, #12]
     da0:	1c91      	adds	r1, r2, #2
     da2:	60f9      	str	r1, [r7, #12]
     da4:	8812      	ldrh	r2, [r2, #0]
     da6:	601a      	str	r2, [r3, #0]
     da8:	693b      	ldr	r3, [r7, #16]
     daa:	1d1a      	adds	r2, r3, #4
     dac:	613a      	str	r2, [r7, #16]
     dae:	68fa      	ldr	r2, [r7, #12]
     db0:	1c91      	adds	r1, r2, #2
     db2:	60f9      	str	r1, [r7, #12]
     db4:	8812      	ldrh	r2, [r2, #0]
     db6:	601a      	str	r2, [r3, #0]
     db8:	693b      	ldr	r3, [r7, #16]
     dba:	1d1a      	adds	r2, r3, #4
     dbc:	613a      	str	r2, [r7, #16]
     dbe:	68fa      	ldr	r2, [r7, #12]
     dc0:	1c91      	adds	r1, r2, #2
     dc2:	60f9      	str	r1, [r7, #12]
     dc4:	8812      	ldrh	r2, [r2, #0]
     dc6:	601a      	str	r2, [r3, #0]
     dc8:	693b      	ldr	r3, [r7, #16]
     dca:	1d1a      	adds	r2, r3, #4
     dcc:	613a      	str	r2, [r7, #16]
     dce:	68fa      	ldr	r2, [r7, #12]
     dd0:	1c91      	adds	r1, r2, #2
     dd2:	60f9      	str	r1, [r7, #12]
     dd4:	8812      	ldrh	r2, [r2, #0]
     dd6:	601a      	str	r2, [r3, #0]
     dd8:	693b      	ldr	r3, [r7, #16]
     dda:	1d1a      	adds	r2, r3, #4
     ddc:	613a      	str	r2, [r7, #16]
     dde:	68fa      	ldr	r2, [r7, #12]
     de0:	1c91      	adds	r1, r2, #2
     de2:	60f9      	str	r1, [r7, #12]
     de4:	8812      	ldrh	r2, [r2, #0]
     de6:	601a      	str	r2, [r3, #0]
     de8:	693b      	ldr	r3, [r7, #16]
     dea:	1d1a      	adds	r2, r3, #4
     dec:	613a      	str	r2, [r7, #16]
     dee:	68fa      	ldr	r2, [r7, #12]
     df0:	1c91      	adds	r1, r2, #2
     df2:	60f9      	str	r1, [r7, #12]
     df4:	8812      	ldrh	r2, [r2, #0]
     df6:	601a      	str	r2, [r3, #0]
     df8:	693b      	ldr	r3, [r7, #16]
     dfa:	1d1a      	adds	r2, r3, #4
     dfc:	613a      	str	r2, [r7, #16]
     dfe:	68fa      	ldr	r2, [r7, #12]
     e00:	1c91      	adds	r1, r2, #2
     e02:	60f9      	str	r1, [r7, #12]
     e04:	8812      	ldrh	r2, [r2, #0]
     e06:	601a      	str	r2, [r3, #0]
     e08:	693b      	ldr	r3, [r7, #16]
     e0a:	1d1a      	adds	r2, r3, #4
     e0c:	613a      	str	r2, [r7, #16]
     e0e:	68fa      	ldr	r2, [r7, #12]
     e10:	1c91      	adds	r1, r2, #2
     e12:	60f9      	str	r1, [r7, #12]
     e14:	8812      	ldrh	r2, [r2, #0]
     e16:	601a      	str	r2, [r3, #0]
     e18:	693b      	ldr	r3, [r7, #16]
     e1a:	1d1a      	adds	r2, r3, #4
     e1c:	613a      	str	r2, [r7, #16]
     e1e:	68fa      	ldr	r2, [r7, #12]
     e20:	1c91      	adds	r1, r2, #2
     e22:	60f9      	str	r1, [r7, #12]
     e24:	8812      	ldrh	r2, [r2, #0]
     e26:	601a      	str	r2, [r3, #0]
     e28:	693b      	ldr	r3, [r7, #16]
     e2a:	1d1a      	adds	r2, r3, #4
     e2c:	613a      	str	r2, [r7, #16]
     e2e:	68fa      	ldr	r2, [r7, #12]
     e30:	1c91      	adds	r1, r2, #2
     e32:	60f9      	str	r1, [r7, #12]
     e34:	8812      	ldrh	r2, [r2, #0]
     e36:	601a      	str	r2, [r3, #0]
     e38:	693b      	ldr	r3, [r7, #16]
     e3a:	1d1a      	adds	r2, r3, #4
     e3c:	613a      	str	r2, [r7, #16]
     e3e:	68fa      	ldr	r2, [r7, #12]
     e40:	1c91      	adds	r1, r2, #2
     e42:	60f9      	str	r1, [r7, #12]
     e44:	8812      	ldrh	r2, [r2, #0]
     e46:	601a      	str	r2, [r3, #0]
     e48:	693b      	ldr	r3, [r7, #16]
     e4a:	1d1a      	adds	r2, r3, #4
     e4c:	613a      	str	r2, [r7, #16]
     e4e:	68fa      	ldr	r2, [r7, #12]
     e50:	1c91      	adds	r1, r2, #2
     e52:	60f9      	str	r1, [r7, #12]
     e54:	8812      	ldrh	r2, [r2, #0]
     e56:	601a      	str	r2, [r3, #0]
     e58:	693b      	ldr	r3, [r7, #16]
     e5a:	1d1a      	adds	r2, r3, #4
     e5c:	613a      	str	r2, [r7, #16]
     e5e:	68fa      	ldr	r2, [r7, #12]
     e60:	1c91      	adds	r1, r2, #2
     e62:	60f9      	str	r1, [r7, #12]
     e64:	8812      	ldrh	r2, [r2, #0]
     e66:	601a      	str	r2, [r3, #0]
     e68:	693b      	ldr	r3, [r7, #16]
     e6a:	1d1a      	adds	r2, r3, #4
     e6c:	613a      	str	r2, [r7, #16]
     e6e:	68fa      	ldr	r2, [r7, #12]
     e70:	1c91      	adds	r1, r2, #2
     e72:	60f9      	str	r1, [r7, #12]
     e74:	8812      	ldrh	r2, [r2, #0]
     e76:	601a      	str	r2, [r3, #0]
     e78:	693b      	ldr	r3, [r7, #16]
     e7a:	1d1a      	adds	r2, r3, #4
     e7c:	613a      	str	r2, [r7, #16]
     e7e:	68fa      	ldr	r2, [r7, #12]
     e80:	1c91      	adds	r1, r2, #2
     e82:	60f9      	str	r1, [r7, #12]
     e84:	8812      	ldrh	r2, [r2, #0]
     e86:	601a      	str	r2, [r3, #0]
     e88:	693b      	ldr	r3, [r7, #16]
     e8a:	1d1a      	adds	r2, r3, #4
     e8c:	613a      	str	r2, [r7, #16]
     e8e:	68fa      	ldr	r2, [r7, #12]
     e90:	1c91      	adds	r1, r2, #2
     e92:	60f9      	str	r1, [r7, #12]
     e94:	8812      	ldrh	r2, [r2, #0]
     e96:	601a      	str	r2, [r3, #0]
     e98:	693b      	ldr	r3, [r7, #16]
     e9a:	1d1a      	adds	r2, r3, #4
     e9c:	613a      	str	r2, [r7, #16]
     e9e:	68fa      	ldr	r2, [r7, #12]
     ea0:	1c91      	adds	r1, r2, #2
     ea2:	60f9      	str	r1, [r7, #12]
     ea4:	8812      	ldrh	r2, [r2, #0]
     ea6:	601a      	str	r2, [r3, #0]
     ea8:	693b      	ldr	r3, [r7, #16]
     eaa:	1d1a      	adds	r2, r3, #4
     eac:	613a      	str	r2, [r7, #16]
     eae:	68fa      	ldr	r2, [r7, #12]
     eb0:	1c91      	adds	r1, r2, #2
     eb2:	60f9      	str	r1, [r7, #12]
     eb4:	8812      	ldrh	r2, [r2, #0]
     eb6:	601a      	str	r2, [r3, #0]
     eb8:	693b      	ldr	r3, [r7, #16]
     eba:	1d1a      	adds	r2, r3, #4
     ebc:	613a      	str	r2, [r7, #16]
     ebe:	68fa      	ldr	r2, [r7, #12]
     ec0:	1c91      	adds	r1, r2, #2
     ec2:	60f9      	str	r1, [r7, #12]
     ec4:	8812      	ldrh	r2, [r2, #0]
     ec6:	601a      	str	r2, [r3, #0]
     ec8:	693b      	ldr	r3, [r7, #16]
     eca:	1d1a      	adds	r2, r3, #4
     ecc:	613a      	str	r2, [r7, #16]
     ece:	68fa      	ldr	r2, [r7, #12]
     ed0:	1c91      	adds	r1, r2, #2
     ed2:	60f9      	str	r1, [r7, #12]
     ed4:	8812      	ldrh	r2, [r2, #0]
     ed6:	601a      	str	r2, [r3, #0]
     ed8:	693b      	ldr	r3, [r7, #16]
     eda:	1d1a      	adds	r2, r3, #4
     edc:	613a      	str	r2, [r7, #16]
     ede:	68fa      	ldr	r2, [r7, #12]
     ee0:	1c91      	adds	r1, r2, #2
     ee2:	60f9      	str	r1, [r7, #12]
     ee4:	8812      	ldrh	r2, [r2, #0]
     ee6:	601a      	str	r2, [r3, #0]
     ee8:	693b      	ldr	r3, [r7, #16]
     eea:	1d1a      	adds	r2, r3, #4
     eec:	613a      	str	r2, [r7, #16]
     eee:	68fa      	ldr	r2, [r7, #12]
     ef0:	1c91      	adds	r1, r2, #2
     ef2:	60f9      	str	r1, [r7, #12]
     ef4:	8812      	ldrh	r2, [r2, #0]
     ef6:	601a      	str	r2, [r3, #0]
     ef8:	693b      	ldr	r3, [r7, #16]
     efa:	1d1a      	adds	r2, r3, #4
     efc:	613a      	str	r2, [r7, #16]
     efe:	68fa      	ldr	r2, [r7, #12]
     f00:	1c91      	adds	r1, r2, #2
     f02:	60f9      	str	r1, [r7, #12]
     f04:	8812      	ldrh	r2, [r2, #0]
     f06:	601a      	str	r2, [r3, #0]
     f08:	693b      	ldr	r3, [r7, #16]
     f0a:	1d1a      	adds	r2, r3, #4
     f0c:	613a      	str	r2, [r7, #16]
     f0e:	68fa      	ldr	r2, [r7, #12]
     f10:	1c91      	adds	r1, r2, #2
     f12:	60f9      	str	r1, [r7, #12]
     f14:	8812      	ldrh	r2, [r2, #0]
     f16:	601a      	str	r2, [r3, #0]
     f18:	693b      	ldr	r3, [r7, #16]
     f1a:	1d1a      	adds	r2, r3, #4
     f1c:	613a      	str	r2, [r7, #16]
     f1e:	68fa      	ldr	r2, [r7, #12]
     f20:	1c91      	adds	r1, r2, #2
     f22:	60f9      	str	r1, [r7, #12]
     f24:	8812      	ldrh	r2, [r2, #0]
     f26:	601a      	str	r2, [r3, #0]
     f28:	693b      	ldr	r3, [r7, #16]
     f2a:	1d1a      	adds	r2, r3, #4
     f2c:	613a      	str	r2, [r7, #16]
     f2e:	68fa      	ldr	r2, [r7, #12]
     f30:	1c91      	adds	r1, r2, #2
     f32:	60f9      	str	r1, [r7, #12]
     f34:	8812      	ldrh	r2, [r2, #0]
     f36:	601a      	str	r2, [r3, #0]
     f38:	693b      	ldr	r3, [r7, #16]
     f3a:	1d1a      	adds	r2, r3, #4
     f3c:	613a      	str	r2, [r7, #16]
     f3e:	68fa      	ldr	r2, [r7, #12]
     f40:	1c91      	adds	r1, r2, #2
     f42:	60f9      	str	r1, [r7, #12]
     f44:	8812      	ldrh	r2, [r2, #0]
     f46:	601a      	str	r2, [r3, #0]
     f48:	693b      	ldr	r3, [r7, #16]
     f4a:	1d1a      	adds	r2, r3, #4
     f4c:	613a      	str	r2, [r7, #16]
     f4e:	68fa      	ldr	r2, [r7, #12]
     f50:	1c91      	adds	r1, r2, #2
     f52:	60f9      	str	r1, [r7, #12]
     f54:	8812      	ldrh	r2, [r2, #0]
     f56:	601a      	str	r2, [r3, #0]
     f58:	4a32      	ldr	r2, [pc, #200]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     f5a:	4b33      	ldr	r3, [pc, #204]	; (1028 <MIL_STD_1553B1_Handler+0x308>)
     f5c:	58d3      	ldr	r3, [r2, r3]
     f5e:	2204      	movs	r2, #4
     f60:	4013      	ands	r3, r2
     f62:	d056      	beq.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
     f64:	4b35      	ldr	r3, [pc, #212]	; (103c <MIL_STD_1553B1_Handler+0x31c>)
     f66:	681b      	ldr	r3, [r3, #0]
     f68:	1c5a      	adds	r2, r3, #1
     f6a:	4b34      	ldr	r3, [pc, #208]	; (103c <MIL_STD_1553B1_Handler+0x31c>)
     f6c:	601a      	str	r2, [r3, #0]
     f6e:	4a2d      	ldr	r2, [pc, #180]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     f70:	4b2e      	ldr	r3, [pc, #184]	; (102c <MIL_STD_1553B1_Handler+0x30c>)
     f72:	58d3      	ldr	r3, [r2, r3]
     f74:	4a2e      	ldr	r2, [pc, #184]	; (1030 <MIL_STD_1553B1_Handler+0x310>)
     f76:	4293      	cmp	r3, r2
     f78:	d04b      	beq.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
     f7a:	4a2a      	ldr	r2, [pc, #168]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     f7c:	4b2b      	ldr	r3, [pc, #172]	; (102c <MIL_STD_1553B1_Handler+0x30c>)
     f7e:	58d3      	ldr	r3, [r2, r3]
     f80:	2b01      	cmp	r3, #1
     f82:	d146      	bne.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
     f84:	4a27      	ldr	r2, [pc, #156]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
     f86:	4b2e      	ldr	r3, [pc, #184]	; (1040 <MIL_STD_1553B1_Handler+0x320>)
     f88:	58d3      	ldr	r3, [r2, r3]
     f8a:	221f      	movs	r2, #31
     f8c:	4013      	ands	r3, r2
     f8e:	60bb      	str	r3, [r7, #8]
     f90:	1dbb      	adds	r3, r7, #6
     f92:	2200      	movs	r2, #0
     f94:	801a      	strh	r2, [r3, #0]
     f96:	4b2b      	ldr	r3, [pc, #172]	; (1044 <MIL_STD_1553B1_Handler+0x324>)
     f98:	603b      	str	r3, [r7, #0]
     f9a:	4b2b      	ldr	r3, [pc, #172]	; (1048 <MIL_STD_1553B1_Handler+0x328>)
     f9c:	681b      	ldr	r3, [r3, #0]
     f9e:	2b00      	cmp	r3, #0
     fa0:	d137      	bne.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
     fa2:	68bb      	ldr	r3, [r7, #8]
     fa4:	2b20      	cmp	r3, #32
     fa6:	d834      	bhi.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
     fa8:	2300      	movs	r3, #0
     faa:	617b      	str	r3, [r7, #20]
     fac:	e00c      	b.n	fc8 <MIL_STD_1553B1_Handler+0x2a8>
     fae:	697b      	ldr	r3, [r7, #20]
     fb0:	005b      	lsls	r3, r3, #1
     fb2:	683a      	ldr	r2, [r7, #0]
     fb4:	18d2      	adds	r2, r2, r3
     fb6:	693b      	ldr	r3, [r7, #16]
     fb8:	1d19      	adds	r1, r3, #4
     fba:	6139      	str	r1, [r7, #16]
     fbc:	681b      	ldr	r3, [r3, #0]
     fbe:	b29b      	uxth	r3, r3
     fc0:	8013      	strh	r3, [r2, #0]
     fc2:	697b      	ldr	r3, [r7, #20]
     fc4:	3301      	adds	r3, #1
     fc6:	617b      	str	r3, [r7, #20]
     fc8:	697a      	ldr	r2, [r7, #20]
     fca:	68bb      	ldr	r3, [r7, #8]
     fcc:	429a      	cmp	r2, r3
     fce:	d3ee      	bcc.n	fae <MIL_STD_1553B1_Handler+0x28e>
     fd0:	68bb      	ldr	r3, [r7, #8]
     fd2:	1e5a      	subs	r2, r3, #1
     fd4:	1dbc      	adds	r4, r7, #6
     fd6:	683b      	ldr	r3, [r7, #0]
     fd8:	0011      	movs	r1, r2
     fda:	0018      	movs	r0, r3
     fdc:	f7ff f88c 	bl	f8 <get_checksum>
     fe0:	0003      	movs	r3, r0
     fe2:	8023      	strh	r3, [r4, #0]
     fe4:	4b17      	ldr	r3, [pc, #92]	; (1044 <MIL_STD_1553B1_Handler+0x324>)
     fe6:	891b      	ldrh	r3, [r3, #8]
     fe8:	1dba      	adds	r2, r7, #6
     fea:	8812      	ldrh	r2, [r2, #0]
     fec:	1ad3      	subs	r3, r2, r3
     fee:	425a      	negs	r2, r3
     ff0:	4153      	adcs	r3, r2
     ff2:	b2db      	uxtb	r3, r3
     ff4:	001a      	movs	r2, r3
     ff6:	4b14      	ldr	r3, [pc, #80]	; (1048 <MIL_STD_1553B1_Handler+0x328>)
     ff8:	601a      	str	r2, [r3, #0]
     ffa:	4b12      	ldr	r3, [pc, #72]	; (1044 <MIL_STD_1553B1_Handler+0x324>)
     ffc:	891b      	ldrh	r3, [r3, #8]
     ffe:	1dba      	adds	r2, r7, #6
    1000:	8812      	ldrh	r2, [r2, #0]
    1002:	429a      	cmp	r2, r3
    1004:	d005      	beq.n	1012 <MIL_STD_1553B1_Handler+0x2f2>
    1006:	4b11      	ldr	r3, [pc, #68]	; (104c <MIL_STD_1553B1_Handler+0x32c>)
    1008:	4a10      	ldr	r2, [pc, #64]	; (104c <MIL_STD_1553B1_Handler+0x32c>)
    100a:	6812      	ldr	r2, [r2, #0]
    100c:	2101      	movs	r1, #1
    100e:	404a      	eors	r2, r1
    1010:	601a      	str	r2, [r3, #0]
    1012:	4a04      	ldr	r2, [pc, #16]	; (1024 <MIL_STD_1553B1_Handler+0x304>)
    1014:	4b04      	ldr	r3, [pc, #16]	; (1028 <MIL_STD_1553B1_Handler+0x308>)
    1016:	58d3      	ldr	r3, [r2, r3]
    1018:	46c0      	nop			; (mov r8, r8)
    101a:	46bd      	mov	sp, r7
    101c:	b007      	add	sp, #28
    101e:	bd90      	pop	{r4, r7, pc}
    1020:	40048080 	.word	0x40048080
    1024:	40048000 	.word	0x40048000
    1028:	00001004 	.word	0x00001004
    102c:	00001024 	.word	0x00001024
    1030:	00000402 	.word	0x00000402
    1034:	200000d8 	.word	0x200000d8
    1038:	200000d0 	.word	0x200000d0
    103c:	200000e0 	.word	0x200000e0
    1040:	0000100c 	.word	0x0000100c
    1044:	200000c4 	.word	0x200000c4
    1048:	200000f4 	.word	0x200000f4
    104c:	400c8000 	.word	0x400c8000

00001050 <handler_reset>:
    1050:	b580      	push	{r7, lr}
    1052:	b082      	sub	sp, #8
    1054:	af00      	add	r7, sp, #0
    1056:	4b11      	ldr	r3, [pc, #68]	; (109c <handler_reset+0x4c>)
    1058:	607b      	str	r3, [r7, #4]
    105a:	4b11      	ldr	r3, [pc, #68]	; (10a0 <handler_reset+0x50>)
    105c:	603b      	str	r3, [r7, #0]
    105e:	e007      	b.n	1070 <handler_reset+0x20>
    1060:	683b      	ldr	r3, [r7, #0]
    1062:	1d1a      	adds	r2, r3, #4
    1064:	603a      	str	r2, [r7, #0]
    1066:	687a      	ldr	r2, [r7, #4]
    1068:	1d11      	adds	r1, r2, #4
    106a:	6079      	str	r1, [r7, #4]
    106c:	6812      	ldr	r2, [r2, #0]
    106e:	601a      	str	r2, [r3, #0]
    1070:	683a      	ldr	r2, [r7, #0]
    1072:	4b0c      	ldr	r3, [pc, #48]	; (10a4 <handler_reset+0x54>)
    1074:	429a      	cmp	r2, r3
    1076:	d3f3      	bcc.n	1060 <handler_reset+0x10>
    1078:	4b0b      	ldr	r3, [pc, #44]	; (10a8 <handler_reset+0x58>)
    107a:	603b      	str	r3, [r7, #0]
    107c:	e004      	b.n	1088 <handler_reset+0x38>
    107e:	683b      	ldr	r3, [r7, #0]
    1080:	1d1a      	adds	r2, r3, #4
    1082:	603a      	str	r2, [r7, #0]
    1084:	2200      	movs	r2, #0
    1086:	601a      	str	r2, [r3, #0]
    1088:	683a      	ldr	r2, [r7, #0]
    108a:	4b08      	ldr	r3, [pc, #32]	; (10ac <handler_reset+0x5c>)
    108c:	429a      	cmp	r2, r3
    108e:	d3f6      	bcc.n	107e <handler_reset+0x2e>
    1090:	f7ff fb58 	bl	744 <main>
    1094:	46c0      	nop			; (mov r8, r8)
    1096:	46bd      	mov	sp, r7
    1098:	b002      	add	sp, #8
    109a:	bd80      	pop	{r7, pc}
    109c:	00001fdc 	.word	0x00001fdc
    10a0:	20000000 	.word	0x20000000
    10a4:	20000044 	.word	0x20000044
    10a8:	20000044 	.word	0x20000044
    10ac:	20000568 	.word	0x20000568

000010b0 <default_handler>:
    10b0:	b580      	push	{r7, lr}
    10b2:	af00      	add	r7, sp, #0
    10b4:	e7fe      	b.n	10b4 <default_handler+0x4>
    10b6:	46c0      	nop			; (mov r8, r8)

000010b8 <NVIC_EnableIRQ>:
    10b8:	b580      	push	{r7, lr}
    10ba:	b082      	sub	sp, #8
    10bc:	af00      	add	r7, sp, #0
    10be:	0002      	movs	r2, r0
    10c0:	1dfb      	adds	r3, r7, #7
    10c2:	701a      	strb	r2, [r3, #0]
    10c4:	4909      	ldr	r1, [pc, #36]	; (10ec <NVIC_EnableIRQ+0x34>)
    10c6:	1dfb      	adds	r3, r7, #7
    10c8:	781b      	ldrb	r3, [r3, #0]
    10ca:	b25b      	sxtb	r3, r3
    10cc:	095b      	lsrs	r3, r3, #5
    10ce:	1dfa      	adds	r2, r7, #7
    10d0:	7812      	ldrb	r2, [r2, #0]
    10d2:	0010      	movs	r0, r2
    10d4:	221f      	movs	r2, #31
    10d6:	4002      	ands	r2, r0
    10d8:	2001      	movs	r0, #1
    10da:	4090      	lsls	r0, r2
    10dc:	0002      	movs	r2, r0
    10de:	009b      	lsls	r3, r3, #2
    10e0:	505a      	str	r2, [r3, r1]
    10e2:	46c0      	nop			; (mov r8, r8)
    10e4:	46bd      	mov	sp, r7
    10e6:	b002      	add	sp, #8
    10e8:	bd80      	pop	{r7, pc}
    10ea:	46c0      	nop			; (mov r8, r8)
    10ec:	e000e100 	.word	0xe000e100

000010f0 <NVIC_DisableIRQ>:
    10f0:	b580      	push	{r7, lr}
    10f2:	b082      	sub	sp, #8
    10f4:	af00      	add	r7, sp, #0
    10f6:	0002      	movs	r2, r0
    10f8:	1dfb      	adds	r3, r7, #7
    10fa:	701a      	strb	r2, [r3, #0]
    10fc:	4909      	ldr	r1, [pc, #36]	; (1124 <NVIC_DisableIRQ+0x34>)
    10fe:	1dfb      	adds	r3, r7, #7
    1100:	781b      	ldrb	r3, [r3, #0]
    1102:	b25b      	sxtb	r3, r3
    1104:	095b      	lsrs	r3, r3, #5
    1106:	1dfa      	adds	r2, r7, #7
    1108:	7812      	ldrb	r2, [r2, #0]
    110a:	0010      	movs	r0, r2
    110c:	221f      	movs	r2, #31
    110e:	4002      	ands	r2, r0
    1110:	2001      	movs	r0, #1
    1112:	4090      	lsls	r0, r2
    1114:	0002      	movs	r2, r0
    1116:	3320      	adds	r3, #32
    1118:	009b      	lsls	r3, r3, #2
    111a:	505a      	str	r2, [r3, r1]
    111c:	46c0      	nop			; (mov r8, r8)
    111e:	46bd      	mov	sp, r7
    1120:	b002      	add	sp, #8
    1122:	bd80      	pop	{r7, pc}
    1124:	e000e100 	.word	0xe000e100

00001128 <uart_init>:
    1128:	b580      	push	{r7, lr}
    112a:	af00      	add	r7, sp, #0
    112c:	4b1f      	ldr	r3, [pc, #124]	; (11ac <uart_init+0x84>)
    112e:	4a1f      	ldr	r2, [pc, #124]	; (11ac <uart_init+0x84>)
    1130:	69d2      	ldr	r2, [r2, #28]
    1132:	2140      	movs	r1, #64	; 0x40
    1134:	430a      	orrs	r2, r1
    1136:	61da      	str	r2, [r3, #28]
    1138:	4b1c      	ldr	r3, [pc, #112]	; (11ac <uart_init+0x84>)
    113a:	4a1c      	ldr	r2, [pc, #112]	; (11ac <uart_init+0x84>)
    113c:	6a92      	ldr	r2, [r2, #40]	; 0x28
    113e:	2180      	movs	r1, #128	; 0x80
    1140:	0449      	lsls	r1, r1, #17
    1142:	430a      	orrs	r2, r1
    1144:	629a      	str	r2, [r3, #40]	; 0x28
    1146:	4b1a      	ldr	r3, [pc, #104]	; (11b0 <uart_init+0x88>)
    1148:	2204      	movs	r2, #4
    114a:	625a      	str	r2, [r3, #36]	; 0x24
    114c:	4b18      	ldr	r3, [pc, #96]	; (11b0 <uart_init+0x88>)
    114e:	2233      	movs	r2, #51	; 0x33
    1150:	629a      	str	r2, [r3, #40]	; 0x28
    1152:	4b17      	ldr	r3, [pc, #92]	; (11b0 <uart_init+0x88>)
    1154:	4a16      	ldr	r2, [pc, #88]	; (11b0 <uart_init+0x88>)
    1156:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1158:	213f      	movs	r1, #63	; 0x3f
    115a:	438a      	bics	r2, r1
    115c:	635a      	str	r2, [r3, #52]	; 0x34
    115e:	4b14      	ldr	r3, [pc, #80]	; (11b0 <uart_init+0x88>)
    1160:	4a13      	ldr	r2, [pc, #76]	; (11b0 <uart_init+0x88>)
    1162:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1164:	2112      	movs	r1, #18
    1166:	430a      	orrs	r2, r1
    1168:	635a      	str	r2, [r3, #52]	; 0x34
    116a:	4b11      	ldr	r3, [pc, #68]	; (11b0 <uart_init+0x88>)
    116c:	4a10      	ldr	r2, [pc, #64]	; (11b0 <uart_init+0x88>)
    116e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1170:	2110      	movs	r1, #16
    1172:	430a      	orrs	r2, r1
    1174:	62da      	str	r2, [r3, #44]	; 0x2c
    1176:	4b0e      	ldr	r3, [pc, #56]	; (11b0 <uart_init+0x88>)
    1178:	4a0d      	ldr	r2, [pc, #52]	; (11b0 <uart_init+0x88>)
    117a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    117c:	2160      	movs	r1, #96	; 0x60
    117e:	430a      	orrs	r2, r1
    1180:	62da      	str	r2, [r3, #44]	; 0x2c
    1182:	4b0b      	ldr	r3, [pc, #44]	; (11b0 <uart_init+0x88>)
    1184:	4a0a      	ldr	r2, [pc, #40]	; (11b0 <uart_init+0x88>)
    1186:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1188:	490a      	ldr	r1, [pc, #40]	; (11b4 <uart_init+0x8c>)
    118a:	430a      	orrs	r2, r1
    118c:	631a      	str	r2, [r3, #48]	; 0x30
    118e:	4b08      	ldr	r3, [pc, #32]	; (11b0 <uart_init+0x88>)
    1190:	4a07      	ldr	r2, [pc, #28]	; (11b0 <uart_init+0x88>)
    1192:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1194:	2110      	movs	r1, #16
    1196:	430a      	orrs	r2, r1
    1198:	639a      	str	r2, [r3, #56]	; 0x38
    119a:	4b05      	ldr	r3, [pc, #20]	; (11b0 <uart_init+0x88>)
    119c:	4a04      	ldr	r2, [pc, #16]	; (11b0 <uart_init+0x88>)
    119e:	6b92      	ldr	r2, [r2, #56]	; 0x38
    11a0:	2140      	movs	r1, #64	; 0x40
    11a2:	430a      	orrs	r2, r1
    11a4:	639a      	str	r2, [r3, #56]	; 0x38
    11a6:	46c0      	nop			; (mov r8, r8)
    11a8:	46bd      	mov	sp, r7
    11aa:	bd80      	pop	{r7, pc}
    11ac:	40020000 	.word	0x40020000
    11b0:	40030000 	.word	0x40030000
    11b4:	00000301 	.word	0x00000301

000011b8 <uart_read>:
    11b8:	b580      	push	{r7, lr}
    11ba:	b084      	sub	sp, #16
    11bc:	af00      	add	r7, sp, #0
    11be:	6078      	str	r0, [r7, #4]
    11c0:	6039      	str	r1, [r7, #0]
    11c2:	4b18      	ldr	r3, [pc, #96]	; (1224 <uart_read+0x6c>)
    11c4:	681a      	ldr	r2, [r3, #0]
    11c6:	4b18      	ldr	r3, [pc, #96]	; (1228 <uart_read+0x70>)
    11c8:	681b      	ldr	r3, [r3, #0]
    11ca:	429a      	cmp	r2, r3
    11cc:	d101      	bne.n	11d2 <uart_read+0x1a>
    11ce:	2300      	movs	r3, #0
    11d0:	e023      	b.n	121a <uart_read+0x62>
    11d2:	2300      	movs	r3, #0
    11d4:	60fb      	str	r3, [r7, #12]
    11d6:	e01b      	b.n	1210 <uart_read+0x58>
    11d8:	68fb      	ldr	r3, [r7, #12]
    11da:	687a      	ldr	r2, [r7, #4]
    11dc:	18d2      	adds	r2, r2, r3
    11de:	4b11      	ldr	r3, [pc, #68]	; (1224 <uart_read+0x6c>)
    11e0:	681b      	ldr	r3, [r3, #0]
    11e2:	4912      	ldr	r1, [pc, #72]	; (122c <uart_read+0x74>)
    11e4:	5ccb      	ldrb	r3, [r1, r3]
    11e6:	7013      	strb	r3, [r2, #0]
    11e8:	4b0e      	ldr	r3, [pc, #56]	; (1224 <uart_read+0x6c>)
    11ea:	681b      	ldr	r3, [r3, #0]
    11ec:	3301      	adds	r3, #1
    11ee:	05db      	lsls	r3, r3, #23
    11f0:	0dda      	lsrs	r2, r3, #23
    11f2:	4b0c      	ldr	r3, [pc, #48]	; (1224 <uart_read+0x6c>)
    11f4:	601a      	str	r2, [r3, #0]
    11f6:	4b0b      	ldr	r3, [pc, #44]	; (1224 <uart_read+0x6c>)
    11f8:	681a      	ldr	r2, [r3, #0]
    11fa:	4b0b      	ldr	r3, [pc, #44]	; (1228 <uart_read+0x70>)
    11fc:	681b      	ldr	r3, [r3, #0]
    11fe:	429a      	cmp	r2, r3
    1200:	d103      	bne.n	120a <uart_read+0x52>
    1202:	68fb      	ldr	r3, [r7, #12]
    1204:	3301      	adds	r3, #1
    1206:	60fb      	str	r3, [r7, #12]
    1208:	e006      	b.n	1218 <uart_read+0x60>
    120a:	68fb      	ldr	r3, [r7, #12]
    120c:	3301      	adds	r3, #1
    120e:	60fb      	str	r3, [r7, #12]
    1210:	68fa      	ldr	r2, [r7, #12]
    1212:	683b      	ldr	r3, [r7, #0]
    1214:	429a      	cmp	r2, r3
    1216:	dbdf      	blt.n	11d8 <uart_read+0x20>
    1218:	68fb      	ldr	r3, [r7, #12]
    121a:	0018      	movs	r0, r3
    121c:	46bd      	mov	sp, r7
    121e:	b004      	add	sp, #16
    1220:	bd80      	pop	{r7, pc}
    1222:	46c0      	nop			; (mov r8, r8)
    1224:	20000558 	.word	0x20000558
    1228:	20000554 	.word	0x20000554
    122c:	20000354 	.word	0x20000354

00001230 <uart_send>:
    1230:	b580      	push	{r7, lr}
    1232:	b084      	sub	sp, #16
    1234:	af00      	add	r7, sp, #0
    1236:	6078      	str	r0, [r7, #4]
    1238:	6039      	str	r1, [r7, #0]
    123a:	2006      	movs	r0, #6
    123c:	f7ff ff58 	bl	10f0 <NVIC_DisableIRQ>
    1240:	2300      	movs	r3, #0
    1242:	60fb      	str	r3, [r7, #12]
    1244:	e01b      	b.n	127e <uart_send+0x4e>
    1246:	4b20      	ldr	r3, [pc, #128]	; (12c8 <uart_send+0x98>)
    1248:	681b      	ldr	r3, [r3, #0]
    124a:	68fa      	ldr	r2, [r7, #12]
    124c:	6879      	ldr	r1, [r7, #4]
    124e:	188a      	adds	r2, r1, r2
    1250:	7811      	ldrb	r1, [r2, #0]
    1252:	4a1e      	ldr	r2, [pc, #120]	; (12cc <uart_send+0x9c>)
    1254:	54d1      	strb	r1, [r2, r3]
    1256:	4b1c      	ldr	r3, [pc, #112]	; (12c8 <uart_send+0x98>)
    1258:	681b      	ldr	r3, [r3, #0]
    125a:	3301      	adds	r3, #1
    125c:	05db      	lsls	r3, r3, #23
    125e:	0dda      	lsrs	r2, r3, #23
    1260:	4b19      	ldr	r3, [pc, #100]	; (12c8 <uart_send+0x98>)
    1262:	601a      	str	r2, [r3, #0]
    1264:	4b18      	ldr	r3, [pc, #96]	; (12c8 <uart_send+0x98>)
    1266:	681a      	ldr	r2, [r3, #0]
    1268:	4b19      	ldr	r3, [pc, #100]	; (12d0 <uart_send+0xa0>)
    126a:	681b      	ldr	r3, [r3, #0]
    126c:	429a      	cmp	r2, r3
    126e:	d103      	bne.n	1278 <uart_send+0x48>
    1270:	68fb      	ldr	r3, [r7, #12]
    1272:	3301      	adds	r3, #1
    1274:	60fb      	str	r3, [r7, #12]
    1276:	e006      	b.n	1286 <uart_send+0x56>
    1278:	68fb      	ldr	r3, [r7, #12]
    127a:	3301      	adds	r3, #1
    127c:	60fb      	str	r3, [r7, #12]
    127e:	68fa      	ldr	r2, [r7, #12]
    1280:	683b      	ldr	r3, [r7, #0]
    1282:	429a      	cmp	r2, r3
    1284:	dbdf      	blt.n	1246 <uart_send+0x16>
    1286:	4b13      	ldr	r3, [pc, #76]	; (12d4 <uart_send+0xa4>)
    1288:	699b      	ldr	r3, [r3, #24]
    128a:	2208      	movs	r2, #8
    128c:	4013      	ands	r3, r2
    128e:	d10c      	bne.n	12aa <uart_send+0x7a>
    1290:	4a10      	ldr	r2, [pc, #64]	; (12d4 <uart_send+0xa4>)
    1292:	4b0f      	ldr	r3, [pc, #60]	; (12d0 <uart_send+0xa0>)
    1294:	681b      	ldr	r3, [r3, #0]
    1296:	490d      	ldr	r1, [pc, #52]	; (12cc <uart_send+0x9c>)
    1298:	5ccb      	ldrb	r3, [r1, r3]
    129a:	6013      	str	r3, [r2, #0]
    129c:	4b0c      	ldr	r3, [pc, #48]	; (12d0 <uart_send+0xa0>)
    129e:	681b      	ldr	r3, [r3, #0]
    12a0:	3301      	adds	r3, #1
    12a2:	05db      	lsls	r3, r3, #23
    12a4:	0dda      	lsrs	r2, r3, #23
    12a6:	4b0a      	ldr	r3, [pc, #40]	; (12d0 <uart_send+0xa0>)
    12a8:	601a      	str	r2, [r3, #0]
    12aa:	4b0a      	ldr	r3, [pc, #40]	; (12d4 <uart_send+0xa4>)
    12ac:	4a09      	ldr	r2, [pc, #36]	; (12d4 <uart_send+0xa4>)
    12ae:	6b92      	ldr	r2, [r2, #56]	; 0x38
    12b0:	2120      	movs	r1, #32
    12b2:	430a      	orrs	r2, r1
    12b4:	639a      	str	r2, [r3, #56]	; 0x38
    12b6:	2006      	movs	r0, #6
    12b8:	f7ff fefe 	bl	10b8 <NVIC_EnableIRQ>
    12bc:	68fb      	ldr	r3, [r7, #12]
    12be:	0018      	movs	r0, r3
    12c0:	46bd      	mov	sp, r7
    12c2:	b004      	add	sp, #16
    12c4:	bd80      	pop	{r7, pc}
    12c6:	46c0      	nop			; (mov r8, r8)
    12c8:	20000350 	.word	0x20000350
    12cc:	2000014c 	.word	0x2000014c
    12d0:	2000034c 	.word	0x2000034c
    12d4:	40030000 	.word	0x40030000

000012d8 <uart_putch>:
    12d8:	b580      	push	{r7, lr}
    12da:	b082      	sub	sp, #8
    12dc:	af00      	add	r7, sp, #0
    12de:	0002      	movs	r2, r0
    12e0:	1dfb      	adds	r3, r7, #7
    12e2:	701a      	strb	r2, [r3, #0]
    12e4:	46c0      	nop			; (mov r8, r8)
    12e6:	4b06      	ldr	r3, [pc, #24]	; (1300 <uart_putch+0x28>)
    12e8:	699b      	ldr	r3, [r3, #24]
    12ea:	2220      	movs	r2, #32
    12ec:	4013      	ands	r3, r2
    12ee:	d1fa      	bne.n	12e6 <uart_putch+0xe>
    12f0:	4b03      	ldr	r3, [pc, #12]	; (1300 <uart_putch+0x28>)
    12f2:	1dfa      	adds	r2, r7, #7
    12f4:	7812      	ldrb	r2, [r2, #0]
    12f6:	601a      	str	r2, [r3, #0]
    12f8:	46c0      	nop			; (mov r8, r8)
    12fa:	46bd      	mov	sp, r7
    12fc:	b002      	add	sp, #8
    12fe:	bd80      	pop	{r7, pc}
    1300:	40030000 	.word	0x40030000

00001304 <UART1_Handler>:
    1304:	b580      	push	{r7, lr}
    1306:	af00      	add	r7, sp, #0
    1308:	4b1a      	ldr	r3, [pc, #104]	; (1374 <UART1_Handler+0x70>)
    130a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    130c:	2220      	movs	r2, #32
    130e:	4013      	ands	r3, r2
    1310:	d019      	beq.n	1346 <UART1_Handler+0x42>
    1312:	4b19      	ldr	r3, [pc, #100]	; (1378 <UART1_Handler+0x74>)
    1314:	681a      	ldr	r2, [r3, #0]
    1316:	4b19      	ldr	r3, [pc, #100]	; (137c <UART1_Handler+0x78>)
    1318:	681b      	ldr	r3, [r3, #0]
    131a:	429a      	cmp	r2, r3
    131c:	d106      	bne.n	132c <UART1_Handler+0x28>
    131e:	4b15      	ldr	r3, [pc, #84]	; (1374 <UART1_Handler+0x70>)
    1320:	4a14      	ldr	r2, [pc, #80]	; (1374 <UART1_Handler+0x70>)
    1322:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1324:	2120      	movs	r1, #32
    1326:	438a      	bics	r2, r1
    1328:	639a      	str	r2, [r3, #56]	; 0x38
    132a:	e00c      	b.n	1346 <UART1_Handler+0x42>
    132c:	4a11      	ldr	r2, [pc, #68]	; (1374 <UART1_Handler+0x70>)
    132e:	4b12      	ldr	r3, [pc, #72]	; (1378 <UART1_Handler+0x74>)
    1330:	681b      	ldr	r3, [r3, #0]
    1332:	4913      	ldr	r1, [pc, #76]	; (1380 <UART1_Handler+0x7c>)
    1334:	5ccb      	ldrb	r3, [r1, r3]
    1336:	6013      	str	r3, [r2, #0]
    1338:	4b0f      	ldr	r3, [pc, #60]	; (1378 <UART1_Handler+0x74>)
    133a:	681b      	ldr	r3, [r3, #0]
    133c:	3301      	adds	r3, #1
    133e:	05db      	lsls	r3, r3, #23
    1340:	0dda      	lsrs	r2, r3, #23
    1342:	4b0d      	ldr	r3, [pc, #52]	; (1378 <UART1_Handler+0x74>)
    1344:	601a      	str	r2, [r3, #0]
    1346:	4b0b      	ldr	r3, [pc, #44]	; (1374 <UART1_Handler+0x70>)
    1348:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    134a:	2210      	movs	r2, #16
    134c:	4013      	ands	r3, r2
    134e:	d00d      	beq.n	136c <UART1_Handler+0x68>
    1350:	4b0c      	ldr	r3, [pc, #48]	; (1384 <UART1_Handler+0x80>)
    1352:	681a      	ldr	r2, [r3, #0]
    1354:	4b07      	ldr	r3, [pc, #28]	; (1374 <UART1_Handler+0x70>)
    1356:	681b      	ldr	r3, [r3, #0]
    1358:	b2d9      	uxtb	r1, r3
    135a:	4b0b      	ldr	r3, [pc, #44]	; (1388 <UART1_Handler+0x84>)
    135c:	5499      	strb	r1, [r3, r2]
    135e:	4b09      	ldr	r3, [pc, #36]	; (1384 <UART1_Handler+0x80>)
    1360:	681b      	ldr	r3, [r3, #0]
    1362:	3301      	adds	r3, #1
    1364:	05db      	lsls	r3, r3, #23
    1366:	0dda      	lsrs	r2, r3, #23
    1368:	4b06      	ldr	r3, [pc, #24]	; (1384 <UART1_Handler+0x80>)
    136a:	601a      	str	r2, [r3, #0]
    136c:	46c0      	nop			; (mov r8, r8)
    136e:	46bd      	mov	sp, r7
    1370:	bd80      	pop	{r7, pc}
    1372:	46c0      	nop			; (mov r8, r8)
    1374:	40030000 	.word	0x40030000
    1378:	2000034c 	.word	0x2000034c
    137c:	20000350 	.word	0x20000350
    1380:	2000014c 	.word	0x2000014c
    1384:	20000554 	.word	0x20000554
    1388:	20000354 	.word	0x20000354

0000138c <xputc>:
    138c:	b580      	push	{r7, lr}
    138e:	b082      	sub	sp, #8
    1390:	af00      	add	r7, sp, #0
    1392:	0002      	movs	r2, r0
    1394:	1dfb      	adds	r3, r7, #7
    1396:	701a      	strb	r2, [r3, #0]
    1398:	1dfb      	adds	r3, r7, #7
    139a:	781b      	ldrb	r3, [r3, #0]
    139c:	2b0a      	cmp	r3, #10
    139e:	d102      	bne.n	13a6 <xputc+0x1a>
    13a0:	200d      	movs	r0, #13
    13a2:	f7ff fff3 	bl	138c <xputc>
    13a6:	4b0d      	ldr	r3, [pc, #52]	; (13dc <xputc+0x50>)
    13a8:	681b      	ldr	r3, [r3, #0]
    13aa:	2b00      	cmp	r3, #0
    13ac:	d008      	beq.n	13c0 <xputc+0x34>
    13ae:	4b0b      	ldr	r3, [pc, #44]	; (13dc <xputc+0x50>)
    13b0:	681b      	ldr	r3, [r3, #0]
    13b2:	1c59      	adds	r1, r3, #1
    13b4:	4a09      	ldr	r2, [pc, #36]	; (13dc <xputc+0x50>)
    13b6:	6011      	str	r1, [r2, #0]
    13b8:	1dfa      	adds	r2, r7, #7
    13ba:	7812      	ldrb	r2, [r2, #0]
    13bc:	701a      	strb	r2, [r3, #0]
    13be:	e009      	b.n	13d4 <xputc+0x48>
    13c0:	4b07      	ldr	r3, [pc, #28]	; (13e0 <xputc+0x54>)
    13c2:	681b      	ldr	r3, [r3, #0]
    13c4:	2b00      	cmp	r3, #0
    13c6:	d005      	beq.n	13d4 <xputc+0x48>
    13c8:	4b05      	ldr	r3, [pc, #20]	; (13e0 <xputc+0x54>)
    13ca:	681b      	ldr	r3, [r3, #0]
    13cc:	1dfa      	adds	r2, r7, #7
    13ce:	7812      	ldrb	r2, [r2, #0]
    13d0:	0010      	movs	r0, r2
    13d2:	4798      	blx	r3
    13d4:	46bd      	mov	sp, r7
    13d6:	b002      	add	sp, #8
    13d8:	bd80      	pop	{r7, pc}
    13da:	46c0      	nop			; (mov r8, r8)
    13dc:	20000560 	.word	0x20000560
    13e0:	2000055c 	.word	0x2000055c

000013e4 <xputs>:
    13e4:	b580      	push	{r7, lr}
    13e6:	b082      	sub	sp, #8
    13e8:	af00      	add	r7, sp, #0
    13ea:	6078      	str	r0, [r7, #4]
    13ec:	e006      	b.n	13fc <xputs+0x18>
    13ee:	687b      	ldr	r3, [r7, #4]
    13f0:	1c5a      	adds	r2, r3, #1
    13f2:	607a      	str	r2, [r7, #4]
    13f4:	781b      	ldrb	r3, [r3, #0]
    13f6:	0018      	movs	r0, r3
    13f8:	f7ff ffc8 	bl	138c <xputc>
    13fc:	687b      	ldr	r3, [r7, #4]
    13fe:	781b      	ldrb	r3, [r3, #0]
    1400:	2b00      	cmp	r3, #0
    1402:	d1f4      	bne.n	13ee <xputs+0xa>
    1404:	46c0      	nop			; (mov r8, r8)
    1406:	46bd      	mov	sp, r7
    1408:	b002      	add	sp, #8
    140a:	bd80      	pop	{r7, pc}

0000140c <xfputs>:
    140c:	b580      	push	{r7, lr}
    140e:	b084      	sub	sp, #16
    1410:	af00      	add	r7, sp, #0
    1412:	6078      	str	r0, [r7, #4]
    1414:	6039      	str	r1, [r7, #0]
    1416:	4b0c      	ldr	r3, [pc, #48]	; (1448 <xfputs+0x3c>)
    1418:	681b      	ldr	r3, [r3, #0]
    141a:	60fb      	str	r3, [r7, #12]
    141c:	4b0a      	ldr	r3, [pc, #40]	; (1448 <xfputs+0x3c>)
    141e:	687a      	ldr	r2, [r7, #4]
    1420:	601a      	str	r2, [r3, #0]
    1422:	e006      	b.n	1432 <xfputs+0x26>
    1424:	683b      	ldr	r3, [r7, #0]
    1426:	1c5a      	adds	r2, r3, #1
    1428:	603a      	str	r2, [r7, #0]
    142a:	781b      	ldrb	r3, [r3, #0]
    142c:	0018      	movs	r0, r3
    142e:	f7ff ffad 	bl	138c <xputc>
    1432:	683b      	ldr	r3, [r7, #0]
    1434:	781b      	ldrb	r3, [r3, #0]
    1436:	2b00      	cmp	r3, #0
    1438:	d1f4      	bne.n	1424 <xfputs+0x18>
    143a:	4b03      	ldr	r3, [pc, #12]	; (1448 <xfputs+0x3c>)
    143c:	68fa      	ldr	r2, [r7, #12]
    143e:	601a      	str	r2, [r3, #0]
    1440:	46c0      	nop			; (mov r8, r8)
    1442:	46bd      	mov	sp, r7
    1444:	b004      	add	sp, #16
    1446:	bd80      	pop	{r7, pc}
    1448:	2000055c 	.word	0x2000055c

0000144c <xvprintf>:
    144c:	b580      	push	{r7, lr}
    144e:	b08e      	sub	sp, #56	; 0x38
    1450:	af00      	add	r7, sp, #0
    1452:	6078      	str	r0, [r7, #4]
    1454:	6039      	str	r1, [r7, #0]
    1456:	687b      	ldr	r3, [r7, #4]
    1458:	1c5a      	adds	r2, r3, #1
    145a:	607a      	str	r2, [r7, #4]
    145c:	221f      	movs	r2, #31
    145e:	18ba      	adds	r2, r7, r2
    1460:	781b      	ldrb	r3, [r3, #0]
    1462:	7013      	strb	r3, [r2, #0]
    1464:	231f      	movs	r3, #31
    1466:	18fb      	adds	r3, r7, r3
    1468:	781b      	ldrb	r3, [r3, #0]
    146a:	2b00      	cmp	r3, #0
    146c:	d100      	bne.n	1470 <xvprintf+0x24>
    146e:	e172      	b.n	1756 <xvprintf+0x30a>
    1470:	231f      	movs	r3, #31
    1472:	18fb      	adds	r3, r7, r3
    1474:	781b      	ldrb	r3, [r3, #0]
    1476:	2b25      	cmp	r3, #37	; 0x25
    1478:	d006      	beq.n	1488 <xvprintf+0x3c>
    147a:	231f      	movs	r3, #31
    147c:	18fb      	adds	r3, r7, r3
    147e:	781b      	ldrb	r3, [r3, #0]
    1480:	0018      	movs	r0, r3
    1482:	f7ff ff83 	bl	138c <xputc>
    1486:	e165      	b.n	1754 <xvprintf+0x308>
    1488:	2300      	movs	r3, #0
    148a:	627b      	str	r3, [r7, #36]	; 0x24
    148c:	687b      	ldr	r3, [r7, #4]
    148e:	1c5a      	adds	r2, r3, #1
    1490:	607a      	str	r2, [r7, #4]
    1492:	221f      	movs	r2, #31
    1494:	18ba      	adds	r2, r7, r2
    1496:	781b      	ldrb	r3, [r3, #0]
    1498:	7013      	strb	r3, [r2, #0]
    149a:	231f      	movs	r3, #31
    149c:	18fb      	adds	r3, r7, r3
    149e:	781b      	ldrb	r3, [r3, #0]
    14a0:	2b30      	cmp	r3, #48	; 0x30
    14a2:	d109      	bne.n	14b8 <xvprintf+0x6c>
    14a4:	2301      	movs	r3, #1
    14a6:	627b      	str	r3, [r7, #36]	; 0x24
    14a8:	687b      	ldr	r3, [r7, #4]
    14aa:	1c5a      	adds	r2, r3, #1
    14ac:	607a      	str	r2, [r7, #4]
    14ae:	221f      	movs	r2, #31
    14b0:	18ba      	adds	r2, r7, r2
    14b2:	781b      	ldrb	r3, [r3, #0]
    14b4:	7013      	strb	r3, [r2, #0]
    14b6:	e00d      	b.n	14d4 <xvprintf+0x88>
    14b8:	231f      	movs	r3, #31
    14ba:	18fb      	adds	r3, r7, r3
    14bc:	781b      	ldrb	r3, [r3, #0]
    14be:	2b2d      	cmp	r3, #45	; 0x2d
    14c0:	d108      	bne.n	14d4 <xvprintf+0x88>
    14c2:	2302      	movs	r3, #2
    14c4:	627b      	str	r3, [r7, #36]	; 0x24
    14c6:	687b      	ldr	r3, [r7, #4]
    14c8:	1c5a      	adds	r2, r3, #1
    14ca:	607a      	str	r2, [r7, #4]
    14cc:	221f      	movs	r2, #31
    14ce:	18ba      	adds	r2, r7, r2
    14d0:	781b      	ldrb	r3, [r3, #0]
    14d2:	7013      	strb	r3, [r2, #0]
    14d4:	2300      	movs	r3, #0
    14d6:	62bb      	str	r3, [r7, #40]	; 0x28
    14d8:	e012      	b.n	1500 <xvprintf+0xb4>
    14da:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14dc:	0013      	movs	r3, r2
    14de:	009b      	lsls	r3, r3, #2
    14e0:	189b      	adds	r3, r3, r2
    14e2:	005b      	lsls	r3, r3, #1
    14e4:	001a      	movs	r2, r3
    14e6:	231f      	movs	r3, #31
    14e8:	18fb      	adds	r3, r7, r3
    14ea:	781b      	ldrb	r3, [r3, #0]
    14ec:	18d3      	adds	r3, r2, r3
    14ee:	3b30      	subs	r3, #48	; 0x30
    14f0:	62bb      	str	r3, [r7, #40]	; 0x28
    14f2:	687b      	ldr	r3, [r7, #4]
    14f4:	1c5a      	adds	r2, r3, #1
    14f6:	607a      	str	r2, [r7, #4]
    14f8:	221f      	movs	r2, #31
    14fa:	18ba      	adds	r2, r7, r2
    14fc:	781b      	ldrb	r3, [r3, #0]
    14fe:	7013      	strb	r3, [r2, #0]
    1500:	231f      	movs	r3, #31
    1502:	18fb      	adds	r3, r7, r3
    1504:	781b      	ldrb	r3, [r3, #0]
    1506:	2b2f      	cmp	r3, #47	; 0x2f
    1508:	d904      	bls.n	1514 <xvprintf+0xc8>
    150a:	231f      	movs	r3, #31
    150c:	18fb      	adds	r3, r7, r3
    150e:	781b      	ldrb	r3, [r3, #0]
    1510:	2b39      	cmp	r3, #57	; 0x39
    1512:	d9e2      	bls.n	14da <xvprintf+0x8e>
    1514:	231f      	movs	r3, #31
    1516:	18fb      	adds	r3, r7, r3
    1518:	781b      	ldrb	r3, [r3, #0]
    151a:	2b6c      	cmp	r3, #108	; 0x6c
    151c:	d004      	beq.n	1528 <xvprintf+0xdc>
    151e:	231f      	movs	r3, #31
    1520:	18fb      	adds	r3, r7, r3
    1522:	781b      	ldrb	r3, [r3, #0]
    1524:	2b4c      	cmp	r3, #76	; 0x4c
    1526:	d10a      	bne.n	153e <xvprintf+0xf2>
    1528:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    152a:	2204      	movs	r2, #4
    152c:	4313      	orrs	r3, r2
    152e:	627b      	str	r3, [r7, #36]	; 0x24
    1530:	687b      	ldr	r3, [r7, #4]
    1532:	1c5a      	adds	r2, r3, #1
    1534:	607a      	str	r2, [r7, #4]
    1536:	221f      	movs	r2, #31
    1538:	18ba      	adds	r2, r7, r2
    153a:	781b      	ldrb	r3, [r3, #0]
    153c:	7013      	strb	r3, [r2, #0]
    153e:	231f      	movs	r3, #31
    1540:	18fb      	adds	r3, r7, r3
    1542:	781b      	ldrb	r3, [r3, #0]
    1544:	2b00      	cmp	r3, #0
    1546:	d100      	bne.n	154a <xvprintf+0xfe>
    1548:	e107      	b.n	175a <xvprintf+0x30e>
    154a:	231e      	movs	r3, #30
    154c:	18fb      	adds	r3, r7, r3
    154e:	221f      	movs	r2, #31
    1550:	18ba      	adds	r2, r7, r2
    1552:	7812      	ldrb	r2, [r2, #0]
    1554:	701a      	strb	r2, [r3, #0]
    1556:	231e      	movs	r3, #30
    1558:	18fb      	adds	r3, r7, r3
    155a:	781b      	ldrb	r3, [r3, #0]
    155c:	2b60      	cmp	r3, #96	; 0x60
    155e:	d906      	bls.n	156e <xvprintf+0x122>
    1560:	231e      	movs	r3, #30
    1562:	18fb      	adds	r3, r7, r3
    1564:	221e      	movs	r2, #30
    1566:	18ba      	adds	r2, r7, r2
    1568:	7812      	ldrb	r2, [r2, #0]
    156a:	3a20      	subs	r2, #32
    156c:	701a      	strb	r2, [r3, #0]
    156e:	231e      	movs	r3, #30
    1570:	18fb      	adds	r3, r7, r3
    1572:	781b      	ldrb	r3, [r3, #0]
    1574:	3b42      	subs	r3, #66	; 0x42
    1576:	2b16      	cmp	r3, #22
    1578:	d847      	bhi.n	160a <xvprintf+0x1be>
    157a:	009a      	lsls	r2, r3, #2
    157c:	4b79      	ldr	r3, [pc, #484]	; (1764 <xvprintf+0x318>)
    157e:	18d3      	adds	r3, r2, r3
    1580:	681b      	ldr	r3, [r3, #0]
    1582:	469f      	mov	pc, r3
    1584:	683b      	ldr	r3, [r7, #0]
    1586:	1d1a      	adds	r2, r3, #4
    1588:	603a      	str	r2, [r7, #0]
    158a:	681b      	ldr	r3, [r3, #0]
    158c:	61bb      	str	r3, [r7, #24]
    158e:	2300      	movs	r3, #0
    1590:	62fb      	str	r3, [r7, #44]	; 0x2c
    1592:	e002      	b.n	159a <xvprintf+0x14e>
    1594:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1596:	3301      	adds	r3, #1
    1598:	62fb      	str	r3, [r7, #44]	; 0x2c
    159a:	69ba      	ldr	r2, [r7, #24]
    159c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    159e:	18d3      	adds	r3, r2, r3
    15a0:	781b      	ldrb	r3, [r3, #0]
    15a2:	2b00      	cmp	r3, #0
    15a4:	d1f6      	bne.n	1594 <xvprintf+0x148>
    15a6:	e002      	b.n	15ae <xvprintf+0x162>
    15a8:	2020      	movs	r0, #32
    15aa:	f7ff feef 	bl	138c <xputc>
    15ae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15b0:	2202      	movs	r2, #2
    15b2:	4013      	ands	r3, r2
    15b4:	d105      	bne.n	15c2 <xvprintf+0x176>
    15b6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15b8:	1c5a      	adds	r2, r3, #1
    15ba:	62fa      	str	r2, [r7, #44]	; 0x2c
    15bc:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15be:	4293      	cmp	r3, r2
    15c0:	d3f2      	bcc.n	15a8 <xvprintf+0x15c>
    15c2:	69bb      	ldr	r3, [r7, #24]
    15c4:	0018      	movs	r0, r3
    15c6:	f7ff ff0d 	bl	13e4 <xputs>
    15ca:	e002      	b.n	15d2 <xvprintf+0x186>
    15cc:	2020      	movs	r0, #32
    15ce:	f7ff fedd 	bl	138c <xputc>
    15d2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    15d4:	1c5a      	adds	r2, r3, #1
    15d6:	62fa      	str	r2, [r7, #44]	; 0x2c
    15d8:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15da:	4293      	cmp	r3, r2
    15dc:	d3f6      	bcc.n	15cc <xvprintf+0x180>
    15de:	e0b9      	b.n	1754 <xvprintf+0x308>
    15e0:	683b      	ldr	r3, [r7, #0]
    15e2:	1d1a      	adds	r2, r3, #4
    15e4:	603a      	str	r2, [r7, #0]
    15e6:	681b      	ldr	r3, [r3, #0]
    15e8:	b2db      	uxtb	r3, r3
    15ea:	0018      	movs	r0, r3
    15ec:	f7ff fece 	bl	138c <xputc>
    15f0:	e0b0      	b.n	1754 <xvprintf+0x308>
    15f2:	2302      	movs	r3, #2
    15f4:	637b      	str	r3, [r7, #52]	; 0x34
    15f6:	e00f      	b.n	1618 <xvprintf+0x1cc>
    15f8:	2308      	movs	r3, #8
    15fa:	637b      	str	r3, [r7, #52]	; 0x34
    15fc:	e00c      	b.n	1618 <xvprintf+0x1cc>
    15fe:	230a      	movs	r3, #10
    1600:	637b      	str	r3, [r7, #52]	; 0x34
    1602:	e009      	b.n	1618 <xvprintf+0x1cc>
    1604:	2310      	movs	r3, #16
    1606:	637b      	str	r3, [r7, #52]	; 0x34
    1608:	e006      	b.n	1618 <xvprintf+0x1cc>
    160a:	231f      	movs	r3, #31
    160c:	18fb      	adds	r3, r7, r3
    160e:	781b      	ldrb	r3, [r3, #0]
    1610:	0018      	movs	r0, r3
    1612:	f7ff febb 	bl	138c <xputc>
    1616:	e09d      	b.n	1754 <xvprintf+0x308>
    1618:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    161a:	2204      	movs	r2, #4
    161c:	4013      	ands	r3, r2
    161e:	d004      	beq.n	162a <xvprintf+0x1de>
    1620:	683b      	ldr	r3, [r7, #0]
    1622:	1d1a      	adds	r2, r3, #4
    1624:	603a      	str	r2, [r7, #0]
    1626:	681b      	ldr	r3, [r3, #0]
    1628:	e00d      	b.n	1646 <xvprintf+0x1fa>
    162a:	231e      	movs	r3, #30
    162c:	18fb      	adds	r3, r7, r3
    162e:	781b      	ldrb	r3, [r3, #0]
    1630:	2b44      	cmp	r3, #68	; 0x44
    1632:	d104      	bne.n	163e <xvprintf+0x1f2>
    1634:	683b      	ldr	r3, [r7, #0]
    1636:	1d1a      	adds	r2, r3, #4
    1638:	603a      	str	r2, [r7, #0]
    163a:	681b      	ldr	r3, [r3, #0]
    163c:	e003      	b.n	1646 <xvprintf+0x1fa>
    163e:	683b      	ldr	r3, [r7, #0]
    1640:	1d1a      	adds	r2, r3, #4
    1642:	603a      	str	r2, [r7, #0]
    1644:	681b      	ldr	r3, [r3, #0]
    1646:	623b      	str	r3, [r7, #32]
    1648:	231e      	movs	r3, #30
    164a:	18fb      	adds	r3, r7, r3
    164c:	781b      	ldrb	r3, [r3, #0]
    164e:	2b44      	cmp	r3, #68	; 0x44
    1650:	d109      	bne.n	1666 <xvprintf+0x21a>
    1652:	6a3b      	ldr	r3, [r7, #32]
    1654:	2b00      	cmp	r3, #0
    1656:	da06      	bge.n	1666 <xvprintf+0x21a>
    1658:	6a3b      	ldr	r3, [r7, #32]
    165a:	425b      	negs	r3, r3
    165c:	623b      	str	r3, [r7, #32]
    165e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1660:	2208      	movs	r2, #8
    1662:	4313      	orrs	r3, r2
    1664:	627b      	str	r3, [r7, #36]	; 0x24
    1666:	2300      	movs	r3, #0
    1668:	633b      	str	r3, [r7, #48]	; 0x30
    166a:	6a3b      	ldr	r3, [r7, #32]
    166c:	6b79      	ldr	r1, [r7, #52]	; 0x34
    166e:	0018      	movs	r0, r3
    1670:	f000 fc68 	bl	1f44 <__aeabi_uidivmod>
    1674:	000b      	movs	r3, r1
    1676:	001a      	movs	r2, r3
    1678:	231e      	movs	r3, #30
    167a:	18fb      	adds	r3, r7, r3
    167c:	701a      	strb	r2, [r3, #0]
    167e:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1680:	6a38      	ldr	r0, [r7, #32]
    1682:	f000 fbd9 	bl	1e38 <__aeabi_uidiv>
    1686:	0003      	movs	r3, r0
    1688:	623b      	str	r3, [r7, #32]
    168a:	231e      	movs	r3, #30
    168c:	18fb      	adds	r3, r7, r3
    168e:	781b      	ldrb	r3, [r3, #0]
    1690:	2b09      	cmp	r3, #9
    1692:	d90e      	bls.n	16b2 <xvprintf+0x266>
    1694:	231f      	movs	r3, #31
    1696:	18fb      	adds	r3, r7, r3
    1698:	781b      	ldrb	r3, [r3, #0]
    169a:	2b78      	cmp	r3, #120	; 0x78
    169c:	d101      	bne.n	16a2 <xvprintf+0x256>
    169e:	2327      	movs	r3, #39	; 0x27
    16a0:	e000      	b.n	16a4 <xvprintf+0x258>
    16a2:	2307      	movs	r3, #7
    16a4:	221e      	movs	r2, #30
    16a6:	18ba      	adds	r2, r7, r2
    16a8:	211e      	movs	r1, #30
    16aa:	1879      	adds	r1, r7, r1
    16ac:	7809      	ldrb	r1, [r1, #0]
    16ae:	185b      	adds	r3, r3, r1
    16b0:	7013      	strb	r3, [r2, #0]
    16b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16b4:	1c5a      	adds	r2, r3, #1
    16b6:	633a      	str	r2, [r7, #48]	; 0x30
    16b8:	221e      	movs	r2, #30
    16ba:	18ba      	adds	r2, r7, r2
    16bc:	7812      	ldrb	r2, [r2, #0]
    16be:	3230      	adds	r2, #48	; 0x30
    16c0:	b2d1      	uxtb	r1, r2
    16c2:	2208      	movs	r2, #8
    16c4:	18ba      	adds	r2, r7, r2
    16c6:	54d1      	strb	r1, [r2, r3]
    16c8:	6a3b      	ldr	r3, [r7, #32]
    16ca:	2b00      	cmp	r3, #0
    16cc:	d002      	beq.n	16d4 <xvprintf+0x288>
    16ce:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16d0:	2b0f      	cmp	r3, #15
    16d2:	d9ca      	bls.n	166a <xvprintf+0x21e>
    16d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16d6:	2208      	movs	r2, #8
    16d8:	4013      	ands	r3, r2
    16da:	d006      	beq.n	16ea <xvprintf+0x29e>
    16dc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16de:	1c5a      	adds	r2, r3, #1
    16e0:	633a      	str	r2, [r7, #48]	; 0x30
    16e2:	2208      	movs	r2, #8
    16e4:	18ba      	adds	r2, r7, r2
    16e6:	212d      	movs	r1, #45	; 0x2d
    16e8:	54d1      	strb	r1, [r2, r3]
    16ea:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    16ec:	62fb      	str	r3, [r7, #44]	; 0x2c
    16ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16f0:	2201      	movs	r2, #1
    16f2:	4013      	ands	r3, r2
    16f4:	d001      	beq.n	16fa <xvprintf+0x2ae>
    16f6:	2230      	movs	r2, #48	; 0x30
    16f8:	e000      	b.n	16fc <xvprintf+0x2b0>
    16fa:	2220      	movs	r2, #32
    16fc:	231e      	movs	r3, #30
    16fe:	18fb      	adds	r3, r7, r3
    1700:	701a      	strb	r2, [r3, #0]
    1702:	e005      	b.n	1710 <xvprintf+0x2c4>
    1704:	231e      	movs	r3, #30
    1706:	18fb      	adds	r3, r7, r3
    1708:	781b      	ldrb	r3, [r3, #0]
    170a:	0018      	movs	r0, r3
    170c:	f7ff fe3e 	bl	138c <xputc>
    1710:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1712:	2202      	movs	r2, #2
    1714:	4013      	ands	r3, r2
    1716:	d105      	bne.n	1724 <xvprintf+0x2d8>
    1718:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    171a:	1c5a      	adds	r2, r3, #1
    171c:	62fa      	str	r2, [r7, #44]	; 0x2c
    171e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1720:	4293      	cmp	r3, r2
    1722:	d3ef      	bcc.n	1704 <xvprintf+0x2b8>
    1724:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1726:	3b01      	subs	r3, #1
    1728:	633b      	str	r3, [r7, #48]	; 0x30
    172a:	2308      	movs	r3, #8
    172c:	18fa      	adds	r2, r7, r3
    172e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1730:	18d3      	adds	r3, r2, r3
    1732:	781b      	ldrb	r3, [r3, #0]
    1734:	0018      	movs	r0, r3
    1736:	f7ff fe29 	bl	138c <xputc>
    173a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    173c:	2b00      	cmp	r3, #0
    173e:	d1f1      	bne.n	1724 <xvprintf+0x2d8>
    1740:	e002      	b.n	1748 <xvprintf+0x2fc>
    1742:	2020      	movs	r0, #32
    1744:	f7ff fe22 	bl	138c <xputc>
    1748:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    174a:	1c5a      	adds	r2, r3, #1
    174c:	62fa      	str	r2, [r7, #44]	; 0x2c
    174e:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1750:	4293      	cmp	r3, r2
    1752:	d3f6      	bcc.n	1742 <xvprintf+0x2f6>
    1754:	e67f      	b.n	1456 <xvprintf+0xa>
    1756:	46c0      	nop			; (mov r8, r8)
    1758:	e000      	b.n	175c <xvprintf+0x310>
    175a:	46c0      	nop			; (mov r8, r8)
    175c:	46c0      	nop			; (mov r8, r8)
    175e:	46bd      	mov	sp, r7
    1760:	b00e      	add	sp, #56	; 0x38
    1762:	bd80      	pop	{r7, pc}
    1764:	00001f60 	.word	0x00001f60

00001768 <xprintf>:
    1768:	b40f      	push	{r0, r1, r2, r3}
    176a:	b580      	push	{r7, lr}
    176c:	b082      	sub	sp, #8
    176e:	af00      	add	r7, sp, #0
    1770:	2314      	movs	r3, #20
    1772:	18fb      	adds	r3, r7, r3
    1774:	607b      	str	r3, [r7, #4]
    1776:	687a      	ldr	r2, [r7, #4]
    1778:	693b      	ldr	r3, [r7, #16]
    177a:	0011      	movs	r1, r2
    177c:	0018      	movs	r0, r3
    177e:	f7ff fe65 	bl	144c <xvprintf>
    1782:	46c0      	nop			; (mov r8, r8)
    1784:	46bd      	mov	sp, r7
    1786:	b002      	add	sp, #8
    1788:	bc80      	pop	{r7}
    178a:	bc08      	pop	{r3}
    178c:	b004      	add	sp, #16
    178e:	4718      	bx	r3

00001790 <xsprintf>:
    1790:	b40e      	push	{r1, r2, r3}
    1792:	b580      	push	{r7, lr}
    1794:	b085      	sub	sp, #20
    1796:	af00      	add	r7, sp, #0
    1798:	6078      	str	r0, [r7, #4]
    179a:	4b0d      	ldr	r3, [pc, #52]	; (17d0 <xsprintf+0x40>)
    179c:	687a      	ldr	r2, [r7, #4]
    179e:	601a      	str	r2, [r3, #0]
    17a0:	2320      	movs	r3, #32
    17a2:	18fb      	adds	r3, r7, r3
    17a4:	60fb      	str	r3, [r7, #12]
    17a6:	68fa      	ldr	r2, [r7, #12]
    17a8:	69fb      	ldr	r3, [r7, #28]
    17aa:	0011      	movs	r1, r2
    17ac:	0018      	movs	r0, r3
    17ae:	f7ff fe4d 	bl	144c <xvprintf>
    17b2:	4b07      	ldr	r3, [pc, #28]	; (17d0 <xsprintf+0x40>)
    17b4:	681b      	ldr	r3, [r3, #0]
    17b6:	2200      	movs	r2, #0
    17b8:	701a      	strb	r2, [r3, #0]
    17ba:	4b05      	ldr	r3, [pc, #20]	; (17d0 <xsprintf+0x40>)
    17bc:	2200      	movs	r2, #0
    17be:	601a      	str	r2, [r3, #0]
    17c0:	46c0      	nop			; (mov r8, r8)
    17c2:	46bd      	mov	sp, r7
    17c4:	b005      	add	sp, #20
    17c6:	bc80      	pop	{r7}
    17c8:	bc08      	pop	{r3}
    17ca:	b003      	add	sp, #12
    17cc:	4718      	bx	r3
    17ce:	46c0      	nop			; (mov r8, r8)
    17d0:	20000560 	.word	0x20000560

000017d4 <xfprintf>:
    17d4:	b40e      	push	{r1, r2, r3}
    17d6:	b580      	push	{r7, lr}
    17d8:	b085      	sub	sp, #20
    17da:	af00      	add	r7, sp, #0
    17dc:	6078      	str	r0, [r7, #4]
    17de:	4b0c      	ldr	r3, [pc, #48]	; (1810 <xfprintf+0x3c>)
    17e0:	681b      	ldr	r3, [r3, #0]
    17e2:	60fb      	str	r3, [r7, #12]
    17e4:	4b0a      	ldr	r3, [pc, #40]	; (1810 <xfprintf+0x3c>)
    17e6:	687a      	ldr	r2, [r7, #4]
    17e8:	601a      	str	r2, [r3, #0]
    17ea:	2320      	movs	r3, #32
    17ec:	18fb      	adds	r3, r7, r3
    17ee:	60bb      	str	r3, [r7, #8]
    17f0:	68ba      	ldr	r2, [r7, #8]
    17f2:	69fb      	ldr	r3, [r7, #28]
    17f4:	0011      	movs	r1, r2
    17f6:	0018      	movs	r0, r3
    17f8:	f7ff fe28 	bl	144c <xvprintf>
    17fc:	4b04      	ldr	r3, [pc, #16]	; (1810 <xfprintf+0x3c>)
    17fe:	68fa      	ldr	r2, [r7, #12]
    1800:	601a      	str	r2, [r3, #0]
    1802:	46c0      	nop			; (mov r8, r8)
    1804:	46bd      	mov	sp, r7
    1806:	b005      	add	sp, #20
    1808:	bc80      	pop	{r7}
    180a:	bc08      	pop	{r3}
    180c:	b003      	add	sp, #12
    180e:	4718      	bx	r3
    1810:	2000055c 	.word	0x2000055c

00001814 <put_dump>:
    1814:	b580      	push	{r7, lr}
    1816:	b088      	sub	sp, #32
    1818:	af00      	add	r7, sp, #0
    181a:	60f8      	str	r0, [r7, #12]
    181c:	60b9      	str	r1, [r7, #8]
    181e:	607a      	str	r2, [r7, #4]
    1820:	603b      	str	r3, [r7, #0]
    1822:	68ba      	ldr	r2, [r7, #8]
    1824:	4b38      	ldr	r3, [pc, #224]	; (1908 <put_dump+0xf4>)
    1826:	0011      	movs	r1, r2
    1828:	0018      	movs	r0, r3
    182a:	f7ff ff9d 	bl	1768 <xprintf>
    182e:	683b      	ldr	r3, [r7, #0]
    1830:	2b02      	cmp	r3, #2
    1832:	d03c      	beq.n	18ae <put_dump+0x9a>
    1834:	2b04      	cmp	r3, #4
    1836:	d04d      	beq.n	18d4 <put_dump+0xc0>
    1838:	2b01      	cmp	r3, #1
    183a:	d15d      	bne.n	18f8 <put_dump+0xe4>
    183c:	68fb      	ldr	r3, [r7, #12]
    183e:	613b      	str	r3, [r7, #16]
    1840:	2300      	movs	r3, #0
    1842:	61fb      	str	r3, [r7, #28]
    1844:	e00c      	b.n	1860 <put_dump+0x4c>
    1846:	69fb      	ldr	r3, [r7, #28]
    1848:	693a      	ldr	r2, [r7, #16]
    184a:	18d3      	adds	r3, r2, r3
    184c:	781b      	ldrb	r3, [r3, #0]
    184e:	001a      	movs	r2, r3
    1850:	4b2e      	ldr	r3, [pc, #184]	; (190c <put_dump+0xf8>)
    1852:	0011      	movs	r1, r2
    1854:	0018      	movs	r0, r3
    1856:	f7ff ff87 	bl	1768 <xprintf>
    185a:	69fb      	ldr	r3, [r7, #28]
    185c:	3301      	adds	r3, #1
    185e:	61fb      	str	r3, [r7, #28]
    1860:	69fa      	ldr	r2, [r7, #28]
    1862:	687b      	ldr	r3, [r7, #4]
    1864:	429a      	cmp	r2, r3
    1866:	dbee      	blt.n	1846 <put_dump+0x32>
    1868:	2020      	movs	r0, #32
    186a:	f7ff fd8f 	bl	138c <xputc>
    186e:	2300      	movs	r3, #0
    1870:	61fb      	str	r3, [r7, #28]
    1872:	e017      	b.n	18a4 <put_dump+0x90>
    1874:	69fb      	ldr	r3, [r7, #28]
    1876:	693a      	ldr	r2, [r7, #16]
    1878:	18d3      	adds	r3, r2, r3
    187a:	781b      	ldrb	r3, [r3, #0]
    187c:	2b1f      	cmp	r3, #31
    187e:	d90a      	bls.n	1896 <put_dump+0x82>
    1880:	69fb      	ldr	r3, [r7, #28]
    1882:	693a      	ldr	r2, [r7, #16]
    1884:	18d3      	adds	r3, r2, r3
    1886:	781b      	ldrb	r3, [r3, #0]
    1888:	2b7e      	cmp	r3, #126	; 0x7e
    188a:	d804      	bhi.n	1896 <put_dump+0x82>
    188c:	69fb      	ldr	r3, [r7, #28]
    188e:	693a      	ldr	r2, [r7, #16]
    1890:	18d3      	adds	r3, r2, r3
    1892:	781b      	ldrb	r3, [r3, #0]
    1894:	e000      	b.n	1898 <put_dump+0x84>
    1896:	232e      	movs	r3, #46	; 0x2e
    1898:	0018      	movs	r0, r3
    189a:	f7ff fd77 	bl	138c <xputc>
    189e:	69fb      	ldr	r3, [r7, #28]
    18a0:	3301      	adds	r3, #1
    18a2:	61fb      	str	r3, [r7, #28]
    18a4:	69fa      	ldr	r2, [r7, #28]
    18a6:	687b      	ldr	r3, [r7, #4]
    18a8:	429a      	cmp	r2, r3
    18aa:	dbe3      	blt.n	1874 <put_dump+0x60>
    18ac:	e024      	b.n	18f8 <put_dump+0xe4>
    18ae:	68fb      	ldr	r3, [r7, #12]
    18b0:	61bb      	str	r3, [r7, #24]
    18b2:	69bb      	ldr	r3, [r7, #24]
    18b4:	1c9a      	adds	r2, r3, #2
    18b6:	61ba      	str	r2, [r7, #24]
    18b8:	881b      	ldrh	r3, [r3, #0]
    18ba:	001a      	movs	r2, r3
    18bc:	4b14      	ldr	r3, [pc, #80]	; (1910 <put_dump+0xfc>)
    18be:	0011      	movs	r1, r2
    18c0:	0018      	movs	r0, r3
    18c2:	f7ff ff51 	bl	1768 <xprintf>
    18c6:	687b      	ldr	r3, [r7, #4]
    18c8:	3b01      	subs	r3, #1
    18ca:	607b      	str	r3, [r7, #4]
    18cc:	687b      	ldr	r3, [r7, #4]
    18ce:	2b00      	cmp	r3, #0
    18d0:	d1ef      	bne.n	18b2 <put_dump+0x9e>
    18d2:	e011      	b.n	18f8 <put_dump+0xe4>
    18d4:	68fb      	ldr	r3, [r7, #12]
    18d6:	617b      	str	r3, [r7, #20]
    18d8:	697b      	ldr	r3, [r7, #20]
    18da:	1d1a      	adds	r2, r3, #4
    18dc:	617a      	str	r2, [r7, #20]
    18de:	681a      	ldr	r2, [r3, #0]
    18e0:	4b0c      	ldr	r3, [pc, #48]	; (1914 <put_dump+0x100>)
    18e2:	0011      	movs	r1, r2
    18e4:	0018      	movs	r0, r3
    18e6:	f7ff ff3f 	bl	1768 <xprintf>
    18ea:	687b      	ldr	r3, [r7, #4]
    18ec:	3b01      	subs	r3, #1
    18ee:	607b      	str	r3, [r7, #4]
    18f0:	687b      	ldr	r3, [r7, #4]
    18f2:	2b00      	cmp	r3, #0
    18f4:	d1f0      	bne.n	18d8 <put_dump+0xc4>
    18f6:	46c0      	nop			; (mov r8, r8)
    18f8:	200a      	movs	r0, #10
    18fa:	f7ff fd47 	bl	138c <xputc>
    18fe:	46c0      	nop			; (mov r8, r8)
    1900:	46bd      	mov	sp, r7
    1902:	b008      	add	sp, #32
    1904:	bd80      	pop	{r7, pc}
    1906:	46c0      	nop			; (mov r8, r8)
    1908:	00001fbc 	.word	0x00001fbc
    190c:	00001fc4 	.word	0x00001fc4
    1910:	00001fcc 	.word	0x00001fcc
    1914:	00001fd4 	.word	0x00001fd4

00001918 <xgets>:
    1918:	b580      	push	{r7, lr}
    191a:	b084      	sub	sp, #16
    191c:	af00      	add	r7, sp, #0
    191e:	6078      	str	r0, [r7, #4]
    1920:	6039      	str	r1, [r7, #0]
    1922:	4b24      	ldr	r3, [pc, #144]	; (19b4 <xgets+0x9c>)
    1924:	681b      	ldr	r3, [r3, #0]
    1926:	2b00      	cmp	r3, #0
    1928:	d101      	bne.n	192e <xgets+0x16>
    192a:	2300      	movs	r3, #0
    192c:	e03e      	b.n	19ac <xgets+0x94>
    192e:	2300      	movs	r3, #0
    1930:	60fb      	str	r3, [r7, #12]
    1932:	4b20      	ldr	r3, [pc, #128]	; (19b4 <xgets+0x9c>)
    1934:	681b      	ldr	r3, [r3, #0]
    1936:	4798      	blx	r3
    1938:	0003      	movs	r3, r0
    193a:	60bb      	str	r3, [r7, #8]
    193c:	68bb      	ldr	r3, [r7, #8]
    193e:	2b00      	cmp	r3, #0
    1940:	d101      	bne.n	1946 <xgets+0x2e>
    1942:	2300      	movs	r3, #0
    1944:	e032      	b.n	19ac <xgets+0x94>
    1946:	68bb      	ldr	r3, [r7, #8]
    1948:	2b0d      	cmp	r3, #13
    194a:	d025      	beq.n	1998 <xgets+0x80>
    194c:	68bb      	ldr	r3, [r7, #8]
    194e:	2b08      	cmp	r3, #8
    1950:	d10b      	bne.n	196a <xgets+0x52>
    1952:	68fb      	ldr	r3, [r7, #12]
    1954:	2b00      	cmp	r3, #0
    1956:	d008      	beq.n	196a <xgets+0x52>
    1958:	68fb      	ldr	r3, [r7, #12]
    195a:	3b01      	subs	r3, #1
    195c:	60fb      	str	r3, [r7, #12]
    195e:	68bb      	ldr	r3, [r7, #8]
    1960:	b2db      	uxtb	r3, r3
    1962:	0018      	movs	r0, r3
    1964:	f7ff fd12 	bl	138c <xputc>
    1968:	e015      	b.n	1996 <xgets+0x7e>
    196a:	68bb      	ldr	r3, [r7, #8]
    196c:	2b1f      	cmp	r3, #31
    196e:	dde0      	ble.n	1932 <xgets+0x1a>
    1970:	683b      	ldr	r3, [r7, #0]
    1972:	1e5a      	subs	r2, r3, #1
    1974:	68fb      	ldr	r3, [r7, #12]
    1976:	429a      	cmp	r2, r3
    1978:	dddb      	ble.n	1932 <xgets+0x1a>
    197a:	68fb      	ldr	r3, [r7, #12]
    197c:	1c5a      	adds	r2, r3, #1
    197e:	60fa      	str	r2, [r7, #12]
    1980:	001a      	movs	r2, r3
    1982:	687b      	ldr	r3, [r7, #4]
    1984:	189b      	adds	r3, r3, r2
    1986:	68ba      	ldr	r2, [r7, #8]
    1988:	b2d2      	uxtb	r2, r2
    198a:	701a      	strb	r2, [r3, #0]
    198c:	68bb      	ldr	r3, [r7, #8]
    198e:	b2db      	uxtb	r3, r3
    1990:	0018      	movs	r0, r3
    1992:	f7ff fcfb 	bl	138c <xputc>
    1996:	e7cc      	b.n	1932 <xgets+0x1a>
    1998:	46c0      	nop			; (mov r8, r8)
    199a:	68fb      	ldr	r3, [r7, #12]
    199c:	687a      	ldr	r2, [r7, #4]
    199e:	18d3      	adds	r3, r2, r3
    19a0:	2200      	movs	r2, #0
    19a2:	701a      	strb	r2, [r3, #0]
    19a4:	200a      	movs	r0, #10
    19a6:	f7ff fcf1 	bl	138c <xputc>
    19aa:	2301      	movs	r3, #1
    19ac:	0018      	movs	r0, r3
    19ae:	46bd      	mov	sp, r7
    19b0:	b004      	add	sp, #16
    19b2:	bd80      	pop	{r7, pc}
    19b4:	20000564 	.word	0x20000564

000019b8 <xfgets>:
    19b8:	b580      	push	{r7, lr}
    19ba:	b086      	sub	sp, #24
    19bc:	af00      	add	r7, sp, #0
    19be:	60f8      	str	r0, [r7, #12]
    19c0:	60b9      	str	r1, [r7, #8]
    19c2:	607a      	str	r2, [r7, #4]
    19c4:	4b0a      	ldr	r3, [pc, #40]	; (19f0 <xfgets+0x38>)
    19c6:	681b      	ldr	r3, [r3, #0]
    19c8:	617b      	str	r3, [r7, #20]
    19ca:	4b09      	ldr	r3, [pc, #36]	; (19f0 <xfgets+0x38>)
    19cc:	68fa      	ldr	r2, [r7, #12]
    19ce:	601a      	str	r2, [r3, #0]
    19d0:	687a      	ldr	r2, [r7, #4]
    19d2:	68bb      	ldr	r3, [r7, #8]
    19d4:	0011      	movs	r1, r2
    19d6:	0018      	movs	r0, r3
    19d8:	f7ff ff9e 	bl	1918 <xgets>
    19dc:	0003      	movs	r3, r0
    19de:	613b      	str	r3, [r7, #16]
    19e0:	4b03      	ldr	r3, [pc, #12]	; (19f0 <xfgets+0x38>)
    19e2:	697a      	ldr	r2, [r7, #20]
    19e4:	601a      	str	r2, [r3, #0]
    19e6:	693b      	ldr	r3, [r7, #16]
    19e8:	0018      	movs	r0, r3
    19ea:	46bd      	mov	sp, r7
    19ec:	b006      	add	sp, #24
    19ee:	bd80      	pop	{r7, pc}
    19f0:	20000564 	.word	0x20000564

000019f4 <xatoi>:
    19f4:	b580      	push	{r7, lr}
    19f6:	b084      	sub	sp, #16
    19f8:	af00      	add	r7, sp, #0
    19fa:	6078      	str	r0, [r7, #4]
    19fc:	6039      	str	r1, [r7, #0]
    19fe:	2309      	movs	r3, #9
    1a00:	18fb      	adds	r3, r7, r3
    1a02:	2200      	movs	r2, #0
    1a04:	701a      	strb	r2, [r3, #0]
    1a06:	683b      	ldr	r3, [r7, #0]
    1a08:	2200      	movs	r2, #0
    1a0a:	601a      	str	r2, [r3, #0]
    1a0c:	e004      	b.n	1a18 <xatoi+0x24>
    1a0e:	687b      	ldr	r3, [r7, #4]
    1a10:	681b      	ldr	r3, [r3, #0]
    1a12:	1c5a      	adds	r2, r3, #1
    1a14:	687b      	ldr	r3, [r7, #4]
    1a16:	601a      	str	r2, [r3, #0]
    1a18:	687b      	ldr	r3, [r7, #4]
    1a1a:	681a      	ldr	r2, [r3, #0]
    1a1c:	230b      	movs	r3, #11
    1a1e:	18fb      	adds	r3, r7, r3
    1a20:	7812      	ldrb	r2, [r2, #0]
    1a22:	701a      	strb	r2, [r3, #0]
    1a24:	230b      	movs	r3, #11
    1a26:	18fb      	adds	r3, r7, r3
    1a28:	781b      	ldrb	r3, [r3, #0]
    1a2a:	2b20      	cmp	r3, #32
    1a2c:	d0ef      	beq.n	1a0e <xatoi+0x1a>
    1a2e:	230b      	movs	r3, #11
    1a30:	18fb      	adds	r3, r7, r3
    1a32:	781b      	ldrb	r3, [r3, #0]
    1a34:	2b2d      	cmp	r3, #45	; 0x2d
    1a36:	d10e      	bne.n	1a56 <xatoi+0x62>
    1a38:	2309      	movs	r3, #9
    1a3a:	18fb      	adds	r3, r7, r3
    1a3c:	2201      	movs	r2, #1
    1a3e:	701a      	strb	r2, [r3, #0]
    1a40:	687b      	ldr	r3, [r7, #4]
    1a42:	681b      	ldr	r3, [r3, #0]
    1a44:	1c5a      	adds	r2, r3, #1
    1a46:	687b      	ldr	r3, [r7, #4]
    1a48:	601a      	str	r2, [r3, #0]
    1a4a:	687b      	ldr	r3, [r7, #4]
    1a4c:	681a      	ldr	r2, [r3, #0]
    1a4e:	230b      	movs	r3, #11
    1a50:	18fb      	adds	r3, r7, r3
    1a52:	7812      	ldrb	r2, [r2, #0]
    1a54:	701a      	strb	r2, [r3, #0]
    1a56:	230b      	movs	r3, #11
    1a58:	18fb      	adds	r3, r7, r3
    1a5a:	781b      	ldrb	r3, [r3, #0]
    1a5c:	2b30      	cmp	r3, #48	; 0x30
    1a5e:	d149      	bne.n	1af4 <xatoi+0x100>
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
    1a76:	230b      	movs	r3, #11
    1a78:	18fb      	adds	r3, r7, r3
    1a7a:	781b      	ldrb	r3, [r3, #0]
    1a7c:	2b62      	cmp	r3, #98	; 0x62
    1a7e:	d011      	beq.n	1aa4 <xatoi+0xb0>
    1a80:	2b78      	cmp	r3, #120	; 0x78
    1a82:	d11f      	bne.n	1ac4 <xatoi+0xd0>
    1a84:	230a      	movs	r3, #10
    1a86:	18fb      	adds	r3, r7, r3
    1a88:	2210      	movs	r2, #16
    1a8a:	701a      	strb	r2, [r3, #0]
    1a8c:	687b      	ldr	r3, [r7, #4]
    1a8e:	681b      	ldr	r3, [r3, #0]
    1a90:	1c5a      	adds	r2, r3, #1
    1a92:	687b      	ldr	r3, [r7, #4]
    1a94:	601a      	str	r2, [r3, #0]
    1a96:	687b      	ldr	r3, [r7, #4]
    1a98:	681a      	ldr	r2, [r3, #0]
    1a9a:	230b      	movs	r3, #11
    1a9c:	18fb      	adds	r3, r7, r3
    1a9e:	7812      	ldrb	r2, [r2, #0]
    1aa0:	701a      	strb	r2, [r3, #0]
    1aa2:	e037      	b.n	1b14 <xatoi+0x120>
    1aa4:	230a      	movs	r3, #10
    1aa6:	18fb      	adds	r3, r7, r3
    1aa8:	2202      	movs	r2, #2
    1aaa:	701a      	strb	r2, [r3, #0]
    1aac:	687b      	ldr	r3, [r7, #4]
    1aae:	681b      	ldr	r3, [r3, #0]
    1ab0:	1c5a      	adds	r2, r3, #1
    1ab2:	687b      	ldr	r3, [r7, #4]
    1ab4:	601a      	str	r2, [r3, #0]
    1ab6:	687b      	ldr	r3, [r7, #4]
    1ab8:	681a      	ldr	r2, [r3, #0]
    1aba:	230b      	movs	r3, #11
    1abc:	18fb      	adds	r3, r7, r3
    1abe:	7812      	ldrb	r2, [r2, #0]
    1ac0:	701a      	strb	r2, [r3, #0]
    1ac2:	e027      	b.n	1b14 <xatoi+0x120>
    1ac4:	230b      	movs	r3, #11
    1ac6:	18fb      	adds	r3, r7, r3
    1ac8:	781b      	ldrb	r3, [r3, #0]
    1aca:	2b20      	cmp	r3, #32
    1acc:	d801      	bhi.n	1ad2 <xatoi+0xde>
    1ace:	2301      	movs	r3, #1
    1ad0:	e079      	b.n	1bc6 <xatoi+0x1d2>
    1ad2:	230b      	movs	r3, #11
    1ad4:	18fb      	adds	r3, r7, r3
    1ad6:	781b      	ldrb	r3, [r3, #0]
    1ad8:	2b2f      	cmp	r3, #47	; 0x2f
    1ada:	d904      	bls.n	1ae6 <xatoi+0xf2>
    1adc:	230b      	movs	r3, #11
    1ade:	18fb      	adds	r3, r7, r3
    1ae0:	781b      	ldrb	r3, [r3, #0]
    1ae2:	2b39      	cmp	r3, #57	; 0x39
    1ae4:	d901      	bls.n	1aea <xatoi+0xf6>
    1ae6:	2300      	movs	r3, #0
    1ae8:	e06d      	b.n	1bc6 <xatoi+0x1d2>
    1aea:	230a      	movs	r3, #10
    1aec:	18fb      	adds	r3, r7, r3
    1aee:	2208      	movs	r2, #8
    1af0:	701a      	strb	r2, [r3, #0]
    1af2:	e00f      	b.n	1b14 <xatoi+0x120>
    1af4:	230b      	movs	r3, #11
    1af6:	18fb      	adds	r3, r7, r3
    1af8:	781b      	ldrb	r3, [r3, #0]
    1afa:	2b2f      	cmp	r3, #47	; 0x2f
    1afc:	d904      	bls.n	1b08 <xatoi+0x114>
    1afe:	230b      	movs	r3, #11
    1b00:	18fb      	adds	r3, r7, r3
    1b02:	781b      	ldrb	r3, [r3, #0]
    1b04:	2b39      	cmp	r3, #57	; 0x39
    1b06:	d901      	bls.n	1b0c <xatoi+0x118>
    1b08:	2300      	movs	r3, #0
    1b0a:	e05c      	b.n	1bc6 <xatoi+0x1d2>
    1b0c:	230a      	movs	r3, #10
    1b0e:	18fb      	adds	r3, r7, r3
    1b10:	220a      	movs	r2, #10
    1b12:	701a      	strb	r2, [r3, #0]
    1b14:	2300      	movs	r3, #0
    1b16:	60fb      	str	r3, [r7, #12]
    1b18:	e044      	b.n	1ba4 <xatoi+0x1b0>
    1b1a:	230b      	movs	r3, #11
    1b1c:	18fb      	adds	r3, r7, r3
    1b1e:	781b      	ldrb	r3, [r3, #0]
    1b20:	2b60      	cmp	r3, #96	; 0x60
    1b22:	d906      	bls.n	1b32 <xatoi+0x13e>
    1b24:	230b      	movs	r3, #11
    1b26:	18fb      	adds	r3, r7, r3
    1b28:	220b      	movs	r2, #11
    1b2a:	18ba      	adds	r2, r7, r2
    1b2c:	7812      	ldrb	r2, [r2, #0]
    1b2e:	3a20      	subs	r2, #32
    1b30:	701a      	strb	r2, [r3, #0]
    1b32:	230b      	movs	r3, #11
    1b34:	18fb      	adds	r3, r7, r3
    1b36:	220b      	movs	r2, #11
    1b38:	18ba      	adds	r2, r7, r2
    1b3a:	7812      	ldrb	r2, [r2, #0]
    1b3c:	3a30      	subs	r2, #48	; 0x30
    1b3e:	701a      	strb	r2, [r3, #0]
    1b40:	230b      	movs	r3, #11
    1b42:	18fb      	adds	r3, r7, r3
    1b44:	781b      	ldrb	r3, [r3, #0]
    1b46:	2b10      	cmp	r3, #16
    1b48:	d90d      	bls.n	1b66 <xatoi+0x172>
    1b4a:	230b      	movs	r3, #11
    1b4c:	18fb      	adds	r3, r7, r3
    1b4e:	220b      	movs	r2, #11
    1b50:	18ba      	adds	r2, r7, r2
    1b52:	7812      	ldrb	r2, [r2, #0]
    1b54:	3a07      	subs	r2, #7
    1b56:	701a      	strb	r2, [r3, #0]
    1b58:	230b      	movs	r3, #11
    1b5a:	18fb      	adds	r3, r7, r3
    1b5c:	781b      	ldrb	r3, [r3, #0]
    1b5e:	2b09      	cmp	r3, #9
    1b60:	d801      	bhi.n	1b66 <xatoi+0x172>
    1b62:	2300      	movs	r3, #0
    1b64:	e02f      	b.n	1bc6 <xatoi+0x1d2>
    1b66:	230b      	movs	r3, #11
    1b68:	18fa      	adds	r2, r7, r3
    1b6a:	230a      	movs	r3, #10
    1b6c:	18fb      	adds	r3, r7, r3
    1b6e:	7812      	ldrb	r2, [r2, #0]
    1b70:	781b      	ldrb	r3, [r3, #0]
    1b72:	429a      	cmp	r2, r3
    1b74:	d301      	bcc.n	1b7a <xatoi+0x186>
    1b76:	2300      	movs	r3, #0
    1b78:	e025      	b.n	1bc6 <xatoi+0x1d2>
    1b7a:	230a      	movs	r3, #10
    1b7c:	18fb      	adds	r3, r7, r3
    1b7e:	781b      	ldrb	r3, [r3, #0]
    1b80:	68fa      	ldr	r2, [r7, #12]
    1b82:	435a      	muls	r2, r3
    1b84:	230b      	movs	r3, #11
    1b86:	18fb      	adds	r3, r7, r3
    1b88:	781b      	ldrb	r3, [r3, #0]
    1b8a:	18d3      	adds	r3, r2, r3
    1b8c:	60fb      	str	r3, [r7, #12]
    1b8e:	687b      	ldr	r3, [r7, #4]
    1b90:	681b      	ldr	r3, [r3, #0]
    1b92:	1c5a      	adds	r2, r3, #1
    1b94:	687b      	ldr	r3, [r7, #4]
    1b96:	601a      	str	r2, [r3, #0]
    1b98:	687b      	ldr	r3, [r7, #4]
    1b9a:	681a      	ldr	r2, [r3, #0]
    1b9c:	230b      	movs	r3, #11
    1b9e:	18fb      	adds	r3, r7, r3
    1ba0:	7812      	ldrb	r2, [r2, #0]
    1ba2:	701a      	strb	r2, [r3, #0]
    1ba4:	230b      	movs	r3, #11
    1ba6:	18fb      	adds	r3, r7, r3
    1ba8:	781b      	ldrb	r3, [r3, #0]
    1baa:	2b20      	cmp	r3, #32
    1bac:	d8b5      	bhi.n	1b1a <xatoi+0x126>
    1bae:	2309      	movs	r3, #9
    1bb0:	18fb      	adds	r3, r7, r3
    1bb2:	781b      	ldrb	r3, [r3, #0]
    1bb4:	2b00      	cmp	r3, #0
    1bb6:	d002      	beq.n	1bbe <xatoi+0x1ca>
    1bb8:	68fb      	ldr	r3, [r7, #12]
    1bba:	425b      	negs	r3, r3
    1bbc:	60fb      	str	r3, [r7, #12]
    1bbe:	68fa      	ldr	r2, [r7, #12]
    1bc0:	683b      	ldr	r3, [r7, #0]
    1bc2:	601a      	str	r2, [r3, #0]
    1bc4:	2301      	movs	r3, #1
    1bc6:	0018      	movs	r0, r3
    1bc8:	46bd      	mov	sp, r7
    1bca:	b004      	add	sp, #16
    1bcc:	bd80      	pop	{r7, pc}
    1bce:	46c0      	nop			; (mov r8, r8)

00001bd0 <mil_cpy>:
    1bd0:	8802      	ldrh	r2, [r0, #0]
    1bd2:	4b30      	ldr	r3, [pc, #192]	; (1c94 <mil_cpy+0xc4>)
    1bd4:	601a      	str	r2, [r3, #0]
    1bd6:	8842      	ldrh	r2, [r0, #2]
    1bd8:	4b2f      	ldr	r3, [pc, #188]	; (1c98 <mil_cpy+0xc8>)
    1bda:	601a      	str	r2, [r3, #0]
    1bdc:	8882      	ldrh	r2, [r0, #4]
    1bde:	4b2f      	ldr	r3, [pc, #188]	; (1c9c <mil_cpy+0xcc>)
    1be0:	601a      	str	r2, [r3, #0]
    1be2:	88c2      	ldrh	r2, [r0, #6]
    1be4:	4b2e      	ldr	r3, [pc, #184]	; (1ca0 <mil_cpy+0xd0>)
    1be6:	601a      	str	r2, [r3, #0]
    1be8:	8902      	ldrh	r2, [r0, #8]
    1bea:	4b2e      	ldr	r3, [pc, #184]	; (1ca4 <mil_cpy+0xd4>)
    1bec:	601a      	str	r2, [r3, #0]
    1bee:	8942      	ldrh	r2, [r0, #10]
    1bf0:	4b2d      	ldr	r3, [pc, #180]	; (1ca8 <mil_cpy+0xd8>)
    1bf2:	601a      	str	r2, [r3, #0]
    1bf4:	8982      	ldrh	r2, [r0, #12]
    1bf6:	4b2d      	ldr	r3, [pc, #180]	; (1cac <mil_cpy+0xdc>)
    1bf8:	601a      	str	r2, [r3, #0]
    1bfa:	89c2      	ldrh	r2, [r0, #14]
    1bfc:	4b2c      	ldr	r3, [pc, #176]	; (1cb0 <mil_cpy+0xe0>)
    1bfe:	601a      	str	r2, [r3, #0]
    1c00:	8a02      	ldrh	r2, [r0, #16]
    1c02:	4b2c      	ldr	r3, [pc, #176]	; (1cb4 <mil_cpy+0xe4>)
    1c04:	601a      	str	r2, [r3, #0]
    1c06:	8a42      	ldrh	r2, [r0, #18]
    1c08:	4b2b      	ldr	r3, [pc, #172]	; (1cb8 <mil_cpy+0xe8>)
    1c0a:	601a      	str	r2, [r3, #0]
    1c0c:	8a82      	ldrh	r2, [r0, #20]
    1c0e:	4b2b      	ldr	r3, [pc, #172]	; (1cbc <mil_cpy+0xec>)
    1c10:	601a      	str	r2, [r3, #0]
    1c12:	8ac2      	ldrh	r2, [r0, #22]
    1c14:	4b2a      	ldr	r3, [pc, #168]	; (1cc0 <mil_cpy+0xf0>)
    1c16:	601a      	str	r2, [r3, #0]
    1c18:	8b02      	ldrh	r2, [r0, #24]
    1c1a:	4b2a      	ldr	r3, [pc, #168]	; (1cc4 <mil_cpy+0xf4>)
    1c1c:	601a      	str	r2, [r3, #0]
    1c1e:	8b42      	ldrh	r2, [r0, #26]
    1c20:	4b29      	ldr	r3, [pc, #164]	; (1cc8 <mil_cpy+0xf8>)
    1c22:	601a      	str	r2, [r3, #0]
    1c24:	8b82      	ldrh	r2, [r0, #28]
    1c26:	4b29      	ldr	r3, [pc, #164]	; (1ccc <mil_cpy+0xfc>)
    1c28:	601a      	str	r2, [r3, #0]
    1c2a:	8bc2      	ldrh	r2, [r0, #30]
    1c2c:	4b28      	ldr	r3, [pc, #160]	; (1cd0 <mil_cpy+0x100>)
    1c2e:	601a      	str	r2, [r3, #0]
    1c30:	8c02      	ldrh	r2, [r0, #32]
    1c32:	4b28      	ldr	r3, [pc, #160]	; (1cd4 <mil_cpy+0x104>)
    1c34:	601a      	str	r2, [r3, #0]
    1c36:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1c38:	4b27      	ldr	r3, [pc, #156]	; (1cd8 <mil_cpy+0x108>)
    1c3a:	601a      	str	r2, [r3, #0]
    1c3c:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1c3e:	4b27      	ldr	r3, [pc, #156]	; (1cdc <mil_cpy+0x10c>)
    1c40:	601a      	str	r2, [r3, #0]
    1c42:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1c44:	4b26      	ldr	r3, [pc, #152]	; (1ce0 <mil_cpy+0x110>)
    1c46:	601a      	str	r2, [r3, #0]
    1c48:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1c4a:	4b26      	ldr	r3, [pc, #152]	; (1ce4 <mil_cpy+0x114>)
    1c4c:	601a      	str	r2, [r3, #0]
    1c4e:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1c50:	4b25      	ldr	r3, [pc, #148]	; (1ce8 <mil_cpy+0x118>)
    1c52:	601a      	str	r2, [r3, #0]
    1c54:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1c56:	4b25      	ldr	r3, [pc, #148]	; (1cec <mil_cpy+0x11c>)
    1c58:	601a      	str	r2, [r3, #0]
    1c5a:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1c5c:	4b24      	ldr	r3, [pc, #144]	; (1cf0 <mil_cpy+0x120>)
    1c5e:	601a      	str	r2, [r3, #0]
    1c60:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1c62:	4b24      	ldr	r3, [pc, #144]	; (1cf4 <mil_cpy+0x124>)
    1c64:	601a      	str	r2, [r3, #0]
    1c66:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1c68:	4b23      	ldr	r3, [pc, #140]	; (1cf8 <mil_cpy+0x128>)
    1c6a:	601a      	str	r2, [r3, #0]
    1c6c:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1c6e:	4b23      	ldr	r3, [pc, #140]	; (1cfc <mil_cpy+0x12c>)
    1c70:	601a      	str	r2, [r3, #0]
    1c72:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1c74:	4b22      	ldr	r3, [pc, #136]	; (1d00 <mil_cpy+0x130>)
    1c76:	601a      	str	r2, [r3, #0]
    1c78:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1c7a:	4b22      	ldr	r3, [pc, #136]	; (1d04 <mil_cpy+0x134>)
    1c7c:	601a      	str	r2, [r3, #0]
    1c7e:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1c80:	4b21      	ldr	r3, [pc, #132]	; (1d08 <mil_cpy+0x138>)
    1c82:	601a      	str	r2, [r3, #0]
    1c84:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1c86:	4b21      	ldr	r3, [pc, #132]	; (1d0c <mil_cpy+0x13c>)
    1c88:	601a      	str	r2, [r3, #0]
    1c8a:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1c8c:	4b20      	ldr	r3, [pc, #128]	; (1d10 <mil_cpy+0x140>)
    1c8e:	601a      	str	r2, [r3, #0]
    1c90:	4770      	bx	lr
    1c92:	46c0      	nop			; (mov r8, r8)
    1c94:	40048080 	.word	0x40048080
    1c98:	40048084 	.word	0x40048084
    1c9c:	40048088 	.word	0x40048088
    1ca0:	4004808c 	.word	0x4004808c
    1ca4:	40048090 	.word	0x40048090
    1ca8:	40048094 	.word	0x40048094
    1cac:	40048098 	.word	0x40048098
    1cb0:	4004809c 	.word	0x4004809c
    1cb4:	400480a0 	.word	0x400480a0
    1cb8:	400480a4 	.word	0x400480a4
    1cbc:	400480a8 	.word	0x400480a8
    1cc0:	400480ac 	.word	0x400480ac
    1cc4:	400480b0 	.word	0x400480b0
    1cc8:	400480b4 	.word	0x400480b4
    1ccc:	400480b8 	.word	0x400480b8
    1cd0:	400480bc 	.word	0x400480bc
    1cd4:	400480c0 	.word	0x400480c0
    1cd8:	400480c4 	.word	0x400480c4
    1cdc:	400480c8 	.word	0x400480c8
    1ce0:	400480cc 	.word	0x400480cc
    1ce4:	400480d0 	.word	0x400480d0
    1ce8:	400480d4 	.word	0x400480d4
    1cec:	400480d8 	.word	0x400480d8
    1cf0:	400480dc 	.word	0x400480dc
    1cf4:	400480e0 	.word	0x400480e0
    1cf8:	400480e4 	.word	0x400480e4
    1cfc:	400480e8 	.word	0x400480e8
    1d00:	400480ec 	.word	0x400480ec
    1d04:	400480f0 	.word	0x400480f0
    1d08:	400480f4 	.word	0x400480f4
    1d0c:	400480f8 	.word	0x400480f8
    1d10:	400480fc 	.word	0x400480fc

00001d14 <adc_dma_init>:
    1d14:	b580      	push	{r7, lr}
    1d16:	af00      	add	r7, sp, #0
    1d18:	4b18      	ldr	r3, [pc, #96]	; (1d7c <adc_dma_init+0x68>)
    1d1a:	4a18      	ldr	r2, [pc, #96]	; (1d7c <adc_dma_init+0x68>)
    1d1c:	69d2      	ldr	r2, [r2, #28]
    1d1e:	2120      	movs	r1, #32
    1d20:	430a      	orrs	r2, r1
    1d22:	61da      	str	r2, [r3, #28]
    1d24:	4b16      	ldr	r3, [pc, #88]	; (1d80 <adc_dma_init+0x6c>)
    1d26:	4a17      	ldr	r2, [pc, #92]	; (1d84 <adc_dma_init+0x70>)
    1d28:	609a      	str	r2, [r3, #8]
    1d2a:	4b15      	ldr	r3, [pc, #84]	; (1d80 <adc_dma_init+0x6c>)
    1d2c:	2201      	movs	r2, #1
    1d2e:	4252      	negs	r2, r2
    1d30:	62da      	str	r2, [r3, #44]	; 0x2c
    1d32:	4b13      	ldr	r3, [pc, #76]	; (1d80 <adc_dma_init+0x6c>)
    1d34:	2201      	movs	r2, #1
    1d36:	4252      	negs	r2, r2
    1d38:	621a      	str	r2, [r3, #32]
    1d3a:	4b11      	ldr	r3, [pc, #68]	; (1d80 <adc_dma_init+0x6c>)
    1d3c:	2201      	movs	r2, #1
    1d3e:	4252      	negs	r2, r2
    1d40:	635a      	str	r2, [r3, #52]	; 0x34
    1d42:	4b0f      	ldr	r3, [pc, #60]	; (1d80 <adc_dma_init+0x6c>)
    1d44:	2280      	movs	r2, #128	; 0x80
    1d46:	05d2      	lsls	r2, r2, #23
    1d48:	61da      	str	r2, [r3, #28]
    1d4a:	4b0d      	ldr	r3, [pc, #52]	; (1d80 <adc_dma_init+0x6c>)
    1d4c:	2280      	movs	r2, #128	; 0x80
    1d4e:	05d2      	lsls	r2, r2, #23
    1d50:	625a      	str	r2, [r3, #36]	; 0x24
    1d52:	4b0b      	ldr	r3, [pc, #44]	; (1d80 <adc_dma_init+0x6c>)
    1d54:	2201      	movs	r2, #1
    1d56:	605a      	str	r2, [r3, #4]
    1d58:	4a0a      	ldr	r2, [pc, #40]	; (1d84 <adc_dma_init+0x70>)
    1d5a:	23f0      	movs	r3, #240	; 0xf0
    1d5c:	005b      	lsls	r3, r3, #1
    1d5e:	490a      	ldr	r1, [pc, #40]	; (1d88 <adc_dma_init+0x74>)
    1d60:	50d1      	str	r1, [r2, r3]
    1d62:	490a      	ldr	r1, [pc, #40]	; (1d8c <adc_dma_init+0x78>)
    1d64:	4a07      	ldr	r2, [pc, #28]	; (1d84 <adc_dma_init+0x70>)
    1d66:	23f2      	movs	r3, #242	; 0xf2
    1d68:	005b      	lsls	r3, r3, #1
    1d6a:	50d1      	str	r1, [r2, r3]
    1d6c:	4a05      	ldr	r2, [pc, #20]	; (1d84 <adc_dma_init+0x70>)
    1d6e:	23f4      	movs	r3, #244	; 0xf4
    1d70:	005b      	lsls	r3, r3, #1
    1d72:	4907      	ldr	r1, [pc, #28]	; (1d90 <adc_dma_init+0x7c>)
    1d74:	50d1      	str	r1, [r2, r3]
    1d76:	46c0      	nop			; (mov r8, r8)
    1d78:	46bd      	mov	sp, r7
    1d7a:	bd80      	pop	{r7, pc}
    1d7c:	40020000 	.word	0x40020000
    1d80:	40028000 	.word	0x40028000
    1d84:	20100000 	.word	0x20100000
    1d88:	40088018 	.word	0x40088018
    1d8c:	2010020c 	.word	0x2010020c
    1d90:	ae000031 	.word	0xae000031

00001d94 <adc_dma_start>:
    1d94:	b580      	push	{r7, lr}
    1d96:	af00      	add	r7, sp, #0
    1d98:	4b06      	ldr	r3, [pc, #24]	; (1db4 <adc_dma_start+0x20>)
    1d9a:	4a06      	ldr	r2, [pc, #24]	; (1db4 <adc_dma_start+0x20>)
    1d9c:	6812      	ldr	r2, [r2, #0]
    1d9e:	2108      	movs	r1, #8
    1da0:	430a      	orrs	r2, r1
    1da2:	601a      	str	r2, [r3, #0]
    1da4:	4b04      	ldr	r3, [pc, #16]	; (1db8 <adc_dma_start+0x24>)
    1da6:	2280      	movs	r2, #128	; 0x80
    1da8:	05d2      	lsls	r2, r2, #23
    1daa:	629a      	str	r2, [r3, #40]	; 0x28
    1dac:	46c0      	nop			; (mov r8, r8)
    1dae:	46bd      	mov	sp, r7
    1db0:	bd80      	pop	{r7, pc}
    1db2:	46c0      	nop			; (mov r8, r8)
    1db4:	40088000 	.word	0x40088000
    1db8:	40028000 	.word	0x40028000

00001dbc <adc_dma_wait>:
    1dbc:	b580      	push	{r7, lr}
    1dbe:	af00      	add	r7, sp, #0
    1dc0:	46c0      	nop			; (mov r8, r8)
    1dc2:	4a0a      	ldr	r2, [pc, #40]	; (1dec <adc_dma_wait+0x30>)
    1dc4:	23f4      	movs	r3, #244	; 0xf4
    1dc6:	005b      	lsls	r3, r3, #1
    1dc8:	58d3      	ldr	r3, [r2, r3]
    1dca:	2207      	movs	r2, #7
    1dcc:	4013      	ands	r3, r2
    1dce:	d1f8      	bne.n	1dc2 <adc_dma_wait+0x6>
    1dd0:	4b07      	ldr	r3, [pc, #28]	; (1df0 <adc_dma_wait+0x34>)
    1dd2:	4a07      	ldr	r2, [pc, #28]	; (1df0 <adc_dma_wait+0x34>)
    1dd4:	6812      	ldr	r2, [r2, #0]
    1dd6:	2108      	movs	r1, #8
    1dd8:	438a      	bics	r2, r1
    1dda:	601a      	str	r2, [r3, #0]
    1ddc:	4a03      	ldr	r2, [pc, #12]	; (1dec <adc_dma_wait+0x30>)
    1dde:	23f4      	movs	r3, #244	; 0xf4
    1de0:	005b      	lsls	r3, r3, #1
    1de2:	4904      	ldr	r1, [pc, #16]	; (1df4 <adc_dma_wait+0x38>)
    1de4:	50d1      	str	r1, [r2, r3]
    1de6:	46c0      	nop			; (mov r8, r8)
    1de8:	46bd      	mov	sp, r7
    1dea:	bd80      	pop	{r7, pc}
    1dec:	20100000 	.word	0x20100000
    1df0:	40088000 	.word	0x40088000
    1df4:	ae000031 	.word	0xae000031

00001df8 <adc_dma_check>:
    1df8:	b580      	push	{r7, lr}
    1dfa:	af00      	add	r7, sp, #0
    1dfc:	4a0b      	ldr	r2, [pc, #44]	; (1e2c <adc_dma_check+0x34>)
    1dfe:	23f4      	movs	r3, #244	; 0xf4
    1e00:	005b      	lsls	r3, r3, #1
    1e02:	58d3      	ldr	r3, [r2, r3]
    1e04:	2207      	movs	r2, #7
    1e06:	4013      	ands	r3, r2
    1e08:	d001      	beq.n	1e0e <adc_dma_check+0x16>
    1e0a:	2300      	movs	r3, #0
    1e0c:	e00b      	b.n	1e26 <adc_dma_check+0x2e>
    1e0e:	4b08      	ldr	r3, [pc, #32]	; (1e30 <adc_dma_check+0x38>)
    1e10:	4a07      	ldr	r2, [pc, #28]	; (1e30 <adc_dma_check+0x38>)
    1e12:	6812      	ldr	r2, [r2, #0]
    1e14:	2108      	movs	r1, #8
    1e16:	438a      	bics	r2, r1
    1e18:	601a      	str	r2, [r3, #0]
    1e1a:	4a04      	ldr	r2, [pc, #16]	; (1e2c <adc_dma_check+0x34>)
    1e1c:	23f4      	movs	r3, #244	; 0xf4
    1e1e:	005b      	lsls	r3, r3, #1
    1e20:	4904      	ldr	r1, [pc, #16]	; (1e34 <adc_dma_check+0x3c>)
    1e22:	50d1      	str	r1, [r2, r3]
    1e24:	2301      	movs	r3, #1
    1e26:	0018      	movs	r0, r3
    1e28:	46bd      	mov	sp, r7
    1e2a:	bd80      	pop	{r7, pc}
    1e2c:	20100000 	.word	0x20100000
    1e30:	40088000 	.word	0x40088000
    1e34:	ae000031 	.word	0xae000031

00001e38 <__aeabi_uidiv>:
    1e38:	2200      	movs	r2, #0
    1e3a:	0843      	lsrs	r3, r0, #1
    1e3c:	428b      	cmp	r3, r1
    1e3e:	d374      	bcc.n	1f2a <__aeabi_uidiv+0xf2>
    1e40:	0903      	lsrs	r3, r0, #4
    1e42:	428b      	cmp	r3, r1
    1e44:	d35f      	bcc.n	1f06 <__aeabi_uidiv+0xce>
    1e46:	0a03      	lsrs	r3, r0, #8
    1e48:	428b      	cmp	r3, r1
    1e4a:	d344      	bcc.n	1ed6 <__aeabi_uidiv+0x9e>
    1e4c:	0b03      	lsrs	r3, r0, #12
    1e4e:	428b      	cmp	r3, r1
    1e50:	d328      	bcc.n	1ea4 <__aeabi_uidiv+0x6c>
    1e52:	0c03      	lsrs	r3, r0, #16
    1e54:	428b      	cmp	r3, r1
    1e56:	d30d      	bcc.n	1e74 <__aeabi_uidiv+0x3c>
    1e58:	22ff      	movs	r2, #255	; 0xff
    1e5a:	0209      	lsls	r1, r1, #8
    1e5c:	ba12      	rev	r2, r2
    1e5e:	0c03      	lsrs	r3, r0, #16
    1e60:	428b      	cmp	r3, r1
    1e62:	d302      	bcc.n	1e6a <__aeabi_uidiv+0x32>
    1e64:	1212      	asrs	r2, r2, #8
    1e66:	0209      	lsls	r1, r1, #8
    1e68:	d065      	beq.n	1f36 <__aeabi_uidiv+0xfe>
    1e6a:	0b03      	lsrs	r3, r0, #12
    1e6c:	428b      	cmp	r3, r1
    1e6e:	d319      	bcc.n	1ea4 <__aeabi_uidiv+0x6c>
    1e70:	e000      	b.n	1e74 <__aeabi_uidiv+0x3c>
    1e72:	0a09      	lsrs	r1, r1, #8
    1e74:	0bc3      	lsrs	r3, r0, #15
    1e76:	428b      	cmp	r3, r1
    1e78:	d301      	bcc.n	1e7e <__aeabi_uidiv+0x46>
    1e7a:	03cb      	lsls	r3, r1, #15
    1e7c:	1ac0      	subs	r0, r0, r3
    1e7e:	4152      	adcs	r2, r2
    1e80:	0b83      	lsrs	r3, r0, #14
    1e82:	428b      	cmp	r3, r1
    1e84:	d301      	bcc.n	1e8a <__aeabi_uidiv+0x52>
    1e86:	038b      	lsls	r3, r1, #14
    1e88:	1ac0      	subs	r0, r0, r3
    1e8a:	4152      	adcs	r2, r2
    1e8c:	0b43      	lsrs	r3, r0, #13
    1e8e:	428b      	cmp	r3, r1
    1e90:	d301      	bcc.n	1e96 <__aeabi_uidiv+0x5e>
    1e92:	034b      	lsls	r3, r1, #13
    1e94:	1ac0      	subs	r0, r0, r3
    1e96:	4152      	adcs	r2, r2
    1e98:	0b03      	lsrs	r3, r0, #12
    1e9a:	428b      	cmp	r3, r1
    1e9c:	d301      	bcc.n	1ea2 <__aeabi_uidiv+0x6a>
    1e9e:	030b      	lsls	r3, r1, #12
    1ea0:	1ac0      	subs	r0, r0, r3
    1ea2:	4152      	adcs	r2, r2
    1ea4:	0ac3      	lsrs	r3, r0, #11
    1ea6:	428b      	cmp	r3, r1
    1ea8:	d301      	bcc.n	1eae <__aeabi_uidiv+0x76>
    1eaa:	02cb      	lsls	r3, r1, #11
    1eac:	1ac0      	subs	r0, r0, r3
    1eae:	4152      	adcs	r2, r2
    1eb0:	0a83      	lsrs	r3, r0, #10
    1eb2:	428b      	cmp	r3, r1
    1eb4:	d301      	bcc.n	1eba <__aeabi_uidiv+0x82>
    1eb6:	028b      	lsls	r3, r1, #10
    1eb8:	1ac0      	subs	r0, r0, r3
    1eba:	4152      	adcs	r2, r2
    1ebc:	0a43      	lsrs	r3, r0, #9
    1ebe:	428b      	cmp	r3, r1
    1ec0:	d301      	bcc.n	1ec6 <__aeabi_uidiv+0x8e>
    1ec2:	024b      	lsls	r3, r1, #9
    1ec4:	1ac0      	subs	r0, r0, r3
    1ec6:	4152      	adcs	r2, r2
    1ec8:	0a03      	lsrs	r3, r0, #8
    1eca:	428b      	cmp	r3, r1
    1ecc:	d301      	bcc.n	1ed2 <__aeabi_uidiv+0x9a>
    1ece:	020b      	lsls	r3, r1, #8
    1ed0:	1ac0      	subs	r0, r0, r3
    1ed2:	4152      	adcs	r2, r2
    1ed4:	d2cd      	bcs.n	1e72 <__aeabi_uidiv+0x3a>
    1ed6:	09c3      	lsrs	r3, r0, #7
    1ed8:	428b      	cmp	r3, r1
    1eda:	d301      	bcc.n	1ee0 <__aeabi_uidiv+0xa8>
    1edc:	01cb      	lsls	r3, r1, #7
    1ede:	1ac0      	subs	r0, r0, r3
    1ee0:	4152      	adcs	r2, r2
    1ee2:	0983      	lsrs	r3, r0, #6
    1ee4:	428b      	cmp	r3, r1
    1ee6:	d301      	bcc.n	1eec <__aeabi_uidiv+0xb4>
    1ee8:	018b      	lsls	r3, r1, #6
    1eea:	1ac0      	subs	r0, r0, r3
    1eec:	4152      	adcs	r2, r2
    1eee:	0943      	lsrs	r3, r0, #5
    1ef0:	428b      	cmp	r3, r1
    1ef2:	d301      	bcc.n	1ef8 <__aeabi_uidiv+0xc0>
    1ef4:	014b      	lsls	r3, r1, #5
    1ef6:	1ac0      	subs	r0, r0, r3
    1ef8:	4152      	adcs	r2, r2
    1efa:	0903      	lsrs	r3, r0, #4
    1efc:	428b      	cmp	r3, r1
    1efe:	d301      	bcc.n	1f04 <__aeabi_uidiv+0xcc>
    1f00:	010b      	lsls	r3, r1, #4
    1f02:	1ac0      	subs	r0, r0, r3
    1f04:	4152      	adcs	r2, r2
    1f06:	08c3      	lsrs	r3, r0, #3
    1f08:	428b      	cmp	r3, r1
    1f0a:	d301      	bcc.n	1f10 <__aeabi_uidiv+0xd8>
    1f0c:	00cb      	lsls	r3, r1, #3
    1f0e:	1ac0      	subs	r0, r0, r3
    1f10:	4152      	adcs	r2, r2
    1f12:	0883      	lsrs	r3, r0, #2
    1f14:	428b      	cmp	r3, r1
    1f16:	d301      	bcc.n	1f1c <__aeabi_uidiv+0xe4>
    1f18:	008b      	lsls	r3, r1, #2
    1f1a:	1ac0      	subs	r0, r0, r3
    1f1c:	4152      	adcs	r2, r2
    1f1e:	0843      	lsrs	r3, r0, #1
    1f20:	428b      	cmp	r3, r1
    1f22:	d301      	bcc.n	1f28 <__aeabi_uidiv+0xf0>
    1f24:	004b      	lsls	r3, r1, #1
    1f26:	1ac0      	subs	r0, r0, r3
    1f28:	4152      	adcs	r2, r2
    1f2a:	1a41      	subs	r1, r0, r1
    1f2c:	d200      	bcs.n	1f30 <__aeabi_uidiv+0xf8>
    1f2e:	4601      	mov	r1, r0
    1f30:	4152      	adcs	r2, r2
    1f32:	4610      	mov	r0, r2
    1f34:	4770      	bx	lr
    1f36:	e7ff      	b.n	1f38 <__aeabi_uidiv+0x100>
    1f38:	b501      	push	{r0, lr}
    1f3a:	2000      	movs	r0, #0
    1f3c:	f000 f806 	bl	1f4c <__aeabi_idiv0>
    1f40:	bd02      	pop	{r1, pc}
    1f42:	46c0      	nop			; (mov r8, r8)

00001f44 <__aeabi_uidivmod>:
    1f44:	2900      	cmp	r1, #0
    1f46:	d0f7      	beq.n	1f38 <__aeabi_uidiv+0x100>
    1f48:	e776      	b.n	1e38 <__aeabi_uidiv>
    1f4a:	4770      	bx	lr

00001f4c <__aeabi_idiv0>:
    1f4c:	4770      	bx	lr
    1f4e:	46c0      	nop			; (mov r8, r8)
    1f50:	6c6c6568 	.word	0x6c6c6568
    1f54:	6f77206f 	.word	0x6f77206f
    1f58:	0d646c72 	.word	0x0d646c72
    1f5c:	0000000a 	.word	0x0000000a
    1f60:	000015f2 	.word	0x000015f2
    1f64:	000015e0 	.word	0x000015e0
    1f68:	000015fe 	.word	0x000015fe
    1f6c:	0000160a 	.word	0x0000160a
    1f70:	0000160a 	.word	0x0000160a
    1f74:	0000160a 	.word	0x0000160a
    1f78:	0000160a 	.word	0x0000160a
    1f7c:	0000160a 	.word	0x0000160a
    1f80:	0000160a 	.word	0x0000160a
    1f84:	0000160a 	.word	0x0000160a
    1f88:	0000160a 	.word	0x0000160a
    1f8c:	0000160a 	.word	0x0000160a
    1f90:	0000160a 	.word	0x0000160a
    1f94:	000015f8 	.word	0x000015f8
    1f98:	0000160a 	.word	0x0000160a
    1f9c:	0000160a 	.word	0x0000160a
    1fa0:	0000160a 	.word	0x0000160a
    1fa4:	00001584 	.word	0x00001584
    1fa8:	0000160a 	.word	0x0000160a
    1fac:	000015fe 	.word	0x000015fe
    1fb0:	0000160a 	.word	0x0000160a
    1fb4:	0000160a 	.word	0x0000160a
    1fb8:	00001604 	.word	0x00001604
    1fbc:	6c383025 	.word	0x6c383025
    1fc0:	00002058 	.word	0x00002058
    1fc4:	32302520 	.word	0x32302520
    1fc8:	00000058 	.word	0x00000058
    1fcc:	34302520 	.word	0x34302520
    1fd0:	00000058 	.word	0x00000058
    1fd4:	38302520 	.word	0x38302520
    1fd8:	0000584c 	.word	0x0000584c
