
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 5d 0f 00 00 bd 0f 00 00 bd 0f 00 00     ... ]...........
	...
      2c:	bd 0f 00 00 00 00 00 00 00 00 00 00 bd 0f 00 00     ................
      3c:	e9 0b 00 00 bd 0f 00 00 2d 0c 00 00 bd 0f 00 00     ........-.......
      4c:	bd 0f 00 00 bd 0f 00 00 bd 0f 00 00 11 12 00 00     ................
      5c:	bd 0f 00 00 bd 0f 00 00 bd 0f 00 00 bd 0f 00 00     ................
      6c:	bd 0f 00 00 bd 0f 00 00 01 0c 00 00 bd 0f 00 00     ................
      7c:	bd 0f 00 00 bd 0f 00 00 bd 0f 00 00 bd 0f 00 00     ................
      8c:	bd 0f 00 00 bd 0f 00 00 bd 0f 00 00 bd 0f 00 00     ................
      9c:	bd 0f 00 00 bd 0f 00 00 00 00 00 00 00 00 00 00     ................
      ac:	bd 0f 00 00 bd 0f 00 00 bd 0f 00 00 bd 0f 00 00     ................
      bc:	bd 0f 00 00                                         ....

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
     270:	f001 fd48 	bl	1d04 <adc_dma_check>
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
     296:	f001 fd03 	bl	1ca0 <adc_dma_start>
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
     388:	4b76      	ldr	r3, [pc, #472]	; (564 <_stack_size+0x164>)
     38a:	681b      	ldr	r3, [r3, #0]
     38c:	009a      	lsls	r2, r3, #2
     38e:	4b76      	ldr	r3, [pc, #472]	; (568 <_stack_size+0x168>)
     390:	18d3      	adds	r3, r2, r3
     392:	681b      	ldr	r3, [r3, #0]
     394:	61fb      	str	r3, [r7, #28]
     396:	2300      	movs	r3, #0
     398:	61bb      	str	r3, [r7, #24]
     39a:	4b74      	ldr	r3, [pc, #464]	; (56c <_stack_size+0x16c>)
     39c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     39e:	0a5b      	lsrs	r3, r3, #9
     3a0:	001a      	movs	r2, r3
     3a2:	2307      	movs	r3, #7
     3a4:	4013      	ands	r3, r2
     3a6:	617b      	str	r3, [r7, #20]
     3a8:	697b      	ldr	r3, [r7, #20]
     3aa:	2b00      	cmp	r3, #0
     3ac:	d100      	bne.n	3b0 <update_telemetry+0x30>
     3ae:	e0d5      	b.n	55c <_stack_size+0x15c>
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
     3d8:	4b64      	ldr	r3, [pc, #400]	; (56c <_stack_size+0x16c>)
     3da:	2200      	movs	r2, #0
     3dc:	655a      	str	r2, [r3, #84]	; 0x54
     3de:	4b64      	ldr	r3, [pc, #400]	; (570 <_stack_size+0x170>)
     3e0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     3e2:	2210      	movs	r2, #16
     3e4:	4013      	ands	r3, r2
     3e6:	d03c      	beq.n	462 <_stack_size+0x62>
     3e8:	69bb      	ldr	r3, [r7, #24]
     3ea:	00da      	lsls	r2, r3, #3
     3ec:	4b61      	ldr	r3, [pc, #388]	; (574 <_stack_size+0x174>)
     3ee:	18d3      	adds	r3, r2, r3
     3f0:	613b      	str	r3, [r7, #16]
     3f2:	693b      	ldr	r3, [r7, #16]
     3f4:	1c5a      	adds	r2, r3, #1
     3f6:	613a      	str	r2, [r7, #16]
     3f8:	4a5d      	ldr	r2, [pc, #372]	; (570 <_stack_size+0x170>)
     3fa:	6812      	ldr	r2, [r2, #0]
     3fc:	b2d2      	uxtb	r2, r2
     3fe:	701a      	strb	r2, [r3, #0]
     400:	693b      	ldr	r3, [r7, #16]
     402:	1c5a      	adds	r2, r3, #1
     404:	613a      	str	r2, [r7, #16]
     406:	4a5a      	ldr	r2, [pc, #360]	; (570 <_stack_size+0x170>)
     408:	6812      	ldr	r2, [r2, #0]
     40a:	b2d2      	uxtb	r2, r2
     40c:	701a      	strb	r2, [r3, #0]
     40e:	693b      	ldr	r3, [r7, #16]
     410:	1c5a      	adds	r2, r3, #1
     412:	613a      	str	r2, [r7, #16]
     414:	4a56      	ldr	r2, [pc, #344]	; (570 <_stack_size+0x170>)
     416:	6812      	ldr	r2, [r2, #0]
     418:	b2d2      	uxtb	r2, r2
     41a:	701a      	strb	r2, [r3, #0]
     41c:	693b      	ldr	r3, [r7, #16]
     41e:	1c5a      	adds	r2, r3, #1
     420:	613a      	str	r2, [r7, #16]
     422:	4a53      	ldr	r2, [pc, #332]	; (570 <_stack_size+0x170>)
     424:	6812      	ldr	r2, [r2, #0]
     426:	b2d2      	uxtb	r2, r2
     428:	701a      	strb	r2, [r3, #0]
     42a:	693b      	ldr	r3, [r7, #16]
     42c:	1c5a      	adds	r2, r3, #1
     42e:	613a      	str	r2, [r7, #16]
     430:	4a4f      	ldr	r2, [pc, #316]	; (570 <_stack_size+0x170>)
     432:	6812      	ldr	r2, [r2, #0]
     434:	b2d2      	uxtb	r2, r2
     436:	701a      	strb	r2, [r3, #0]
     438:	693b      	ldr	r3, [r7, #16]
     43a:	1c5a      	adds	r2, r3, #1
     43c:	613a      	str	r2, [r7, #16]
     43e:	4a4c      	ldr	r2, [pc, #304]	; (570 <_stack_size+0x170>)
     440:	6812      	ldr	r2, [r2, #0]
     442:	b2d2      	uxtb	r2, r2
     444:	701a      	strb	r2, [r3, #0]
     446:	693b      	ldr	r3, [r7, #16]
     448:	1c5a      	adds	r2, r3, #1
     44a:	613a      	str	r2, [r7, #16]
     44c:	4a48      	ldr	r2, [pc, #288]	; (570 <_stack_size+0x170>)
     44e:	6812      	ldr	r2, [r2, #0]
     450:	b2d2      	uxtb	r2, r2
     452:	701a      	strb	r2, [r3, #0]
     454:	693b      	ldr	r3, [r7, #16]
     456:	1c5a      	adds	r2, r3, #1
     458:	613a      	str	r2, [r7, #16]
     45a:	4a45      	ldr	r2, [pc, #276]	; (570 <_stack_size+0x170>)
     45c:	6812      	ldr	r2, [r2, #0]
     45e:	b2d2      	uxtb	r2, r2
     460:	701a      	strb	r2, [r3, #0]
     462:	4b43      	ldr	r3, [pc, #268]	; (570 <_stack_size+0x170>)
     464:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     466:	2240      	movs	r2, #64	; 0x40
     468:	4013      	ands	r3, r2
     46a:	d00a      	beq.n	482 <_stack_size+0x82>
     46c:	e004      	b.n	478 <_stack_size+0x78>
     46e:	4b40      	ldr	r3, [pc, #256]	; (570 <_stack_size+0x170>)
     470:	681a      	ldr	r2, [r3, #0]
     472:	230f      	movs	r3, #15
     474:	18fb      	adds	r3, r7, r3
     476:	701a      	strb	r2, [r3, #0]
     478:	4b3d      	ldr	r3, [pc, #244]	; (570 <_stack_size+0x170>)
     47a:	699b      	ldr	r3, [r3, #24]
     47c:	2210      	movs	r2, #16
     47e:	4013      	ands	r3, r2
     480:	d0f5      	beq.n	46e <_stack_size+0x6e>
     482:	69bb      	ldr	r3, [r7, #24]
     484:	2b03      	cmp	r3, #3
     486:	d16a      	bne.n	55e <_stack_size+0x15e>
     488:	f001 fc3c 	bl	1d04 <adc_dma_check>
     48c:	1e03      	subs	r3, r0, #0
     48e:	d010      	beq.n	4b2 <_stack_size+0xb2>
     490:	4b39      	ldr	r3, [pc, #228]	; (578 <_stack_size+0x178>)
     492:	681b      	ldr	r3, [r3, #0]
     494:	b29a      	uxth	r2, r3
     496:	4b39      	ldr	r3, [pc, #228]	; (57c <_stack_size+0x17c>)
     498:	801a      	strh	r2, [r3, #0]
     49a:	4b37      	ldr	r3, [pc, #220]	; (578 <_stack_size+0x178>)
     49c:	685b      	ldr	r3, [r3, #4]
     49e:	b29a      	uxth	r2, r3
     4a0:	4b37      	ldr	r3, [pc, #220]	; (580 <_stack_size+0x180>)
     4a2:	801a      	strh	r2, [r3, #0]
     4a4:	4b34      	ldr	r3, [pc, #208]	; (578 <_stack_size+0x178>)
     4a6:	689b      	ldr	r3, [r3, #8]
     4a8:	b29a      	uxth	r2, r3
     4aa:	4b36      	ldr	r3, [pc, #216]	; (584 <_stack_size+0x184>)
     4ac:	801a      	strh	r2, [r3, #0]
     4ae:	f001 fbf7 	bl	1ca0 <adc_dma_start>
     4b2:	69fb      	ldr	r3, [r7, #28]
     4b4:	4a34      	ldr	r2, [pc, #208]	; (588 <_stack_size+0x188>)
     4b6:	801a      	strh	r2, [r3, #0]
     4b8:	687b      	ldr	r3, [r7, #4]
     4ba:	0c1b      	lsrs	r3, r3, #16
     4bc:	b29a      	uxth	r2, r3
     4be:	69fb      	ldr	r3, [r7, #28]
     4c0:	805a      	strh	r2, [r3, #2]
     4c2:	687b      	ldr	r3, [r7, #4]
     4c4:	b29a      	uxth	r2, r3
     4c6:	69fb      	ldr	r3, [r7, #28]
     4c8:	809a      	strh	r2, [r3, #4]
     4ca:	4b2a      	ldr	r3, [pc, #168]	; (574 <_stack_size+0x174>)
     4cc:	220a      	movs	r2, #10
     4ce:	5e9a      	ldrsh	r2, [r3, r2]
     4d0:	69fb      	ldr	r3, [r7, #28]
     4d2:	80da      	strh	r2, [r3, #6]
     4d4:	4b27      	ldr	r3, [pc, #156]	; (574 <_stack_size+0x174>)
     4d6:	2212      	movs	r2, #18
     4d8:	5e9a      	ldrsh	r2, [r3, r2]
     4da:	69fb      	ldr	r3, [r7, #28]
     4dc:	811a      	strh	r2, [r3, #8]
     4de:	4b25      	ldr	r3, [pc, #148]	; (574 <_stack_size+0x174>)
     4e0:	221a      	movs	r2, #26
     4e2:	5e9a      	ldrsh	r2, [r3, r2]
     4e4:	69fb      	ldr	r3, [r7, #28]
     4e6:	815a      	strh	r2, [r3, #10]
     4e8:	69fb      	ldr	r3, [r7, #28]
     4ea:	2200      	movs	r2, #0
     4ec:	819a      	strh	r2, [r3, #12]
     4ee:	4b21      	ldr	r3, [pc, #132]	; (574 <_stack_size+0x174>)
     4f0:	2208      	movs	r2, #8
     4f2:	5e9a      	ldrsh	r2, [r3, r2]
     4f4:	69fb      	ldr	r3, [r7, #28]
     4f6:	81da      	strh	r2, [r3, #14]
     4f8:	4b1e      	ldr	r3, [pc, #120]	; (574 <_stack_size+0x174>)
     4fa:	2210      	movs	r2, #16
     4fc:	5e9a      	ldrsh	r2, [r3, r2]
     4fe:	69fb      	ldr	r3, [r7, #28]
     500:	821a      	strh	r2, [r3, #16]
     502:	4b1c      	ldr	r3, [pc, #112]	; (574 <_stack_size+0x174>)
     504:	2218      	movs	r2, #24
     506:	5e9a      	ldrsh	r2, [r3, r2]
     508:	69fb      	ldr	r3, [r7, #28]
     50a:	825a      	strh	r2, [r3, #18]
     50c:	4b1d      	ldr	r3, [pc, #116]	; (584 <_stack_size+0x184>)
     50e:	881a      	ldrh	r2, [r3, #0]
     510:	69fb      	ldr	r3, [r7, #28]
     512:	829a      	strh	r2, [r3, #20]
     514:	4b1a      	ldr	r3, [pc, #104]	; (580 <_stack_size+0x180>)
     516:	881a      	ldrh	r2, [r3, #0]
     518:	69fb      	ldr	r3, [r7, #28]
     51a:	82da      	strh	r2, [r3, #22]
     51c:	4b15      	ldr	r3, [pc, #84]	; (574 <_stack_size+0x174>)
     51e:	899a      	ldrh	r2, [r3, #12]
     520:	69fb      	ldr	r3, [r7, #28]
     522:	831a      	strh	r2, [r3, #24]
     524:	4b13      	ldr	r3, [pc, #76]	; (574 <_stack_size+0x174>)
     526:	8a9a      	ldrh	r2, [r3, #20]
     528:	69fb      	ldr	r3, [r7, #28]
     52a:	835a      	strh	r2, [r3, #26]
     52c:	4b11      	ldr	r3, [pc, #68]	; (574 <_stack_size+0x174>)
     52e:	8b9a      	ldrh	r2, [r3, #28]
     530:	69fb      	ldr	r3, [r7, #28]
     532:	839a      	strh	r2, [r3, #28]
     534:	4b11      	ldr	r3, [pc, #68]	; (57c <_stack_size+0x17c>)
     536:	881a      	ldrh	r2, [r3, #0]
     538:	69fb      	ldr	r3, [r7, #28]
     53a:	83da      	strh	r2, [r3, #30]
     53c:	69fb      	ldr	r3, [r7, #28]
     53e:	211f      	movs	r1, #31
     540:	0018      	movs	r0, r3
     542:	f7ff fdd9 	bl	f8 <get_checksum>
     546:	0003      	movs	r3, r0
     548:	001a      	movs	r2, r3
     54a:	69fb      	ldr	r3, [r7, #28]
     54c:	87da      	strh	r2, [r3, #62]	; 0x3e
     54e:	4b05      	ldr	r3, [pc, #20]	; (564 <_stack_size+0x164>)
     550:	681b      	ldr	r3, [r3, #0]
     552:	2201      	movs	r2, #1
     554:	405a      	eors	r2, r3
     556:	4b03      	ldr	r3, [pc, #12]	; (564 <_stack_size+0x164>)
     558:	601a      	str	r2, [r3, #0]
     55a:	e000      	b.n	55e <_stack_size+0x15e>
     55c:	46c0      	nop			; (mov r8, r8)
     55e:	46bd      	mov	sp, r7
     560:	b008      	add	sp, #32
     562:	bd80      	pop	{r7, pc}
     564:	200000d8 	.word	0x200000d8
     568:	200000d0 	.word	0x200000d0
     56c:	40070000 	.word	0x40070000
     570:	40030000 	.word	0x40030000
     574:	20000124 	.word	0x20000124
     578:	20100200 	.word	0x20100200
     57c:	20000144 	.word	0x20000144
     580:	20000146 	.word	0x20000146
     584:	20000148 	.word	0x20000148
     588:	ffffb060 	.word	0xffffb060

0000058c <send_command>:
     58c:	b580      	push	{r7, lr}
     58e:	b086      	sub	sp, #24
     590:	af00      	add	r7, sp, #0
     592:	6078      	str	r0, [r7, #4]
     594:	687b      	ldr	r3, [r7, #4]
     596:	2202      	movs	r2, #2
     598:	5e9a      	ldrsh	r2, [r3, r2]
     59a:	2316      	movs	r3, #22
     59c:	18fb      	adds	r3, r7, r3
     59e:	801a      	strh	r2, [r3, #0]
     5a0:	2308      	movs	r3, #8
     5a2:	18fb      	adds	r3, r7, r3
     5a4:	613b      	str	r3, [r7, #16]
     5a6:	4b23      	ldr	r3, [pc, #140]	; (634 <send_command+0xa8>)
     5a8:	687a      	ldr	r2, [r7, #4]
     5aa:	2102      	movs	r1, #2
     5ac:	5e52      	ldrsh	r2, [r2, r1]
     5ae:	b292      	uxth	r2, r2
     5b0:	0011      	movs	r1, r2
     5b2:	22ff      	movs	r2, #255	; 0xff
     5b4:	400a      	ands	r2, r1
     5b6:	601a      	str	r2, [r3, #0]
     5b8:	4b1e      	ldr	r3, [pc, #120]	; (634 <send_command+0xa8>)
     5ba:	687a      	ldr	r2, [r7, #4]
     5bc:	2102      	movs	r1, #2
     5be:	5e52      	ldrsh	r2, [r2, r1]
     5c0:	1212      	asrs	r2, r2, #8
     5c2:	b212      	sxth	r2, r2
     5c4:	b292      	uxth	r2, r2
     5c6:	0011      	movs	r1, r2
     5c8:	22ff      	movs	r2, #255	; 0xff
     5ca:	400a      	ands	r2, r1
     5cc:	601a      	str	r2, [r3, #0]
     5ce:	4b19      	ldr	r3, [pc, #100]	; (634 <send_command+0xa8>)
     5d0:	687a      	ldr	r2, [r7, #4]
     5d2:	2104      	movs	r1, #4
     5d4:	5e52      	ldrsh	r2, [r2, r1]
     5d6:	b292      	uxth	r2, r2
     5d8:	0011      	movs	r1, r2
     5da:	22ff      	movs	r2, #255	; 0xff
     5dc:	400a      	ands	r2, r1
     5de:	601a      	str	r2, [r3, #0]
     5e0:	4b14      	ldr	r3, [pc, #80]	; (634 <send_command+0xa8>)
     5e2:	687a      	ldr	r2, [r7, #4]
     5e4:	2104      	movs	r1, #4
     5e6:	5e52      	ldrsh	r2, [r2, r1]
     5e8:	1212      	asrs	r2, r2, #8
     5ea:	b212      	sxth	r2, r2
     5ec:	b292      	uxth	r2, r2
     5ee:	0011      	movs	r1, r2
     5f0:	22ff      	movs	r2, #255	; 0xff
     5f2:	400a      	ands	r2, r1
     5f4:	601a      	str	r2, [r3, #0]
     5f6:	4b0f      	ldr	r3, [pc, #60]	; (634 <send_command+0xa8>)
     5f8:	687a      	ldr	r2, [r7, #4]
     5fa:	2106      	movs	r1, #6
     5fc:	5e52      	ldrsh	r2, [r2, r1]
     5fe:	b292      	uxth	r2, r2
     600:	0011      	movs	r1, r2
     602:	22ff      	movs	r2, #255	; 0xff
     604:	400a      	ands	r2, r1
     606:	601a      	str	r2, [r3, #0]
     608:	4b0a      	ldr	r3, [pc, #40]	; (634 <send_command+0xa8>)
     60a:	687a      	ldr	r2, [r7, #4]
     60c:	2106      	movs	r1, #6
     60e:	5e52      	ldrsh	r2, [r2, r1]
     610:	1212      	asrs	r2, r2, #8
     612:	b212      	sxth	r2, r2
     614:	b292      	uxth	r2, r2
     616:	0011      	movs	r1, r2
     618:	22ff      	movs	r2, #255	; 0xff
     61a:	400a      	ands	r2, r1
     61c:	601a      	str	r2, [r3, #0]
     61e:	4b05      	ldr	r3, [pc, #20]	; (634 <send_command+0xa8>)
     620:	2200      	movs	r2, #0
     622:	601a      	str	r2, [r3, #0]
     624:	4b03      	ldr	r3, [pc, #12]	; (634 <send_command+0xa8>)
     626:	2200      	movs	r2, #0
     628:	601a      	str	r2, [r3, #0]
     62a:	46c0      	nop			; (mov r8, r8)
     62c:	46bd      	mov	sp, r7
     62e:	b006      	add	sp, #24
     630:	bd80      	pop	{r7, pc}
     632:	46c0      	nop			; (mov r8, r8)
     634:	40030000 	.word	0x40030000

00000638 <main>:
     638:	b590      	push	{r4, r7, lr}
     63a:	b0a7      	sub	sp, #156	; 0x9c
     63c:	af00      	add	r7, sp, #0
     63e:	2380      	movs	r3, #128	; 0x80
     640:	18fb      	adds	r3, r7, r3
     642:	4a29      	ldr	r2, [pc, #164]	; (6e8 <main+0xb0>)
     644:	ca13      	ldmia	r2!, {r0, r1, r4}
     646:	c313      	stmia	r3!, {r0, r1, r4}
     648:	8812      	ldrh	r2, [r2, #0]
     64a:	801a      	strh	r2, [r3, #0]
     64c:	f000 fab6 	bl	bbc <SystemInit>
     650:	4b26      	ldr	r3, [pc, #152]	; (6ec <main+0xb4>)
     652:	2200      	movs	r2, #0
     654:	601a      	str	r2, [r3, #0]
     656:	2300      	movs	r3, #0
     658:	2294      	movs	r2, #148	; 0x94
     65a:	18ba      	adds	r2, r7, r2
     65c:	6013      	str	r3, [r2, #0]
     65e:	4b24      	ldr	r3, [pc, #144]	; (6f0 <main+0xb8>)
     660:	2200      	movs	r2, #0
     662:	601a      	str	r2, [r3, #0]
     664:	4b23      	ldr	r3, [pc, #140]	; (6f4 <main+0xbc>)
     666:	4a24      	ldr	r2, [pc, #144]	; (6f8 <main+0xc0>)
     668:	601a      	str	r2, [r3, #0]
     66a:	4b22      	ldr	r3, [pc, #136]	; (6f4 <main+0xbc>)
     66c:	4a23      	ldr	r2, [pc, #140]	; (6fc <main+0xc4>)
     66e:	605a      	str	r2, [r3, #4]
     670:	4b23      	ldr	r3, [pc, #140]	; (700 <main+0xc8>)
     672:	2200      	movs	r2, #0
     674:	601a      	str	r2, [r3, #0]
     676:	4b23      	ldr	r3, [pc, #140]	; (704 <main+0xcc>)
     678:	681b      	ldr	r3, [r3, #0]
     67a:	2b00      	cmp	r3, #0
     67c:	d02d      	beq.n	6da <main+0xa2>
     67e:	4b22      	ldr	r3, [pc, #136]	; (708 <main+0xd0>)
     680:	881b      	ldrh	r3, [r3, #0]
     682:	2220      	movs	r2, #32
     684:	4013      	ands	r3, r2
     686:	b29b      	uxth	r3, r3
     688:	2b00      	cmp	r3, #0
     68a:	d01f      	beq.n	6cc <main+0x94>
     68c:	4b1e      	ldr	r3, [pc, #120]	; (708 <main+0xd0>)
     68e:	2202      	movs	r2, #2
     690:	5e9b      	ldrsh	r3, [r3, r2]
     692:	2b00      	cmp	r3, #0
     694:	da06      	bge.n	6a4 <main+0x6c>
     696:	4b1c      	ldr	r3, [pc, #112]	; (708 <main+0xd0>)
     698:	2202      	movs	r2, #2
     69a:	5e9b      	ldrsh	r3, [r3, r2]
     69c:	4a1b      	ldr	r2, [pc, #108]	; (70c <main+0xd4>)
     69e:	4694      	mov	ip, r2
     6a0:	4463      	add	r3, ip
     6a2:	e002      	b.n	6aa <main+0x72>
     6a4:	4b18      	ldr	r3, [pc, #96]	; (708 <main+0xd0>)
     6a6:	2202      	movs	r2, #2
     6a8:	5e9b      	ldrsh	r3, [r3, r2]
     6aa:	2290      	movs	r2, #144	; 0x90
     6ac:	18ba      	adds	r2, r7, r2
     6ae:	6013      	str	r3, [r2, #0]
     6b0:	4b17      	ldr	r3, [pc, #92]	; (710 <main+0xd8>)
     6b2:	2290      	movs	r2, #144	; 0x90
     6b4:	18ba      	adds	r2, r7, r2
     6b6:	6812      	ldr	r2, [r2, #0]
     6b8:	2180      	movs	r1, #128	; 0x80
     6ba:	0109      	lsls	r1, r1, #4
     6bc:	468c      	mov	ip, r1
     6be:	4462      	add	r2, ip
     6c0:	605a      	str	r2, [r3, #4]
     6c2:	4b11      	ldr	r3, [pc, #68]	; (708 <main+0xd0>)
     6c4:	0018      	movs	r0, r3
     6c6:	f7ff ff61 	bl	58c <send_command>
     6ca:	e003      	b.n	6d4 <main+0x9c>
     6cc:	4b10      	ldr	r3, [pc, #64]	; (710 <main+0xd8>)
     6ce:	2280      	movs	r2, #128	; 0x80
     6d0:	0112      	lsls	r2, r2, #4
     6d2:	605a      	str	r2, [r3, #4]
     6d4:	4b0b      	ldr	r3, [pc, #44]	; (704 <main+0xcc>)
     6d6:	2200      	movs	r2, #0
     6d8:	601a      	str	r2, [r3, #0]
     6da:	4b0e      	ldr	r3, [pc, #56]	; (714 <main+0xdc>)
     6dc:	681b      	ldr	r3, [r3, #0]
     6de:	0018      	movs	r0, r3
     6e0:	f7ff fd48 	bl	174 <update_telemetry_loop>
     6e4:	e7c7      	b.n	676 <main+0x3e>
     6e6:	46c0      	nop			; (mov r8, r8)
     6e8:	00001e5c 	.word	0x00001e5c
     6ec:	200000e8 	.word	0x200000e8
     6f0:	200000ec 	.word	0x200000ec
     6f4:	200000d0 	.word	0x200000d0
     6f8:	20000044 	.word	0x20000044
     6fc:	20000084 	.word	0x20000084
     700:	200000d8 	.word	0x200000d8
     704:	200000f4 	.word	0x200000f4
     708:	200000c4 	.word	0x200000c4
     70c:	ffff0000 	.word	0xffff0000
     710:	40090000 	.word	0x40090000
     714:	200000f0 	.word	0x200000f0

00000718 <PortConfig>:
     718:	b580      	push	{r7, lr}
     71a:	af00      	add	r7, sp, #0
     71c:	4b63      	ldr	r3, [pc, #396]	; (8ac <PortConfig+0x194>)
     71e:	4a63      	ldr	r2, [pc, #396]	; (8ac <PortConfig+0x194>)
     720:	69d2      	ldr	r2, [r2, #28]
     722:	2180      	movs	r1, #128	; 0x80
     724:	0449      	lsls	r1, r1, #17
     726:	430a      	orrs	r2, r1
     728:	61da      	str	r2, [r3, #28]
     72a:	4b61      	ldr	r3, [pc, #388]	; (8b0 <PortConfig+0x198>)
     72c:	4a60      	ldr	r2, [pc, #384]	; (8b0 <PortConfig+0x198>)
     72e:	68d2      	ldr	r2, [r2, #12]
     730:	4960      	ldr	r1, [pc, #384]	; (8b4 <PortConfig+0x19c>)
     732:	400a      	ands	r2, r1
     734:	60da      	str	r2, [r3, #12]
     736:	4b5d      	ldr	r3, [pc, #372]	; (8ac <PortConfig+0x194>)
     738:	4a5c      	ldr	r2, [pc, #368]	; (8ac <PortConfig+0x194>)
     73a:	69d2      	ldr	r2, [r2, #28]
     73c:	2180      	movs	r1, #128	; 0x80
     73e:	0409      	lsls	r1, r1, #16
     740:	430a      	orrs	r2, r1
     742:	61da      	str	r2, [r3, #28]
     744:	4b59      	ldr	r3, [pc, #356]	; (8ac <PortConfig+0x194>)
     746:	4a59      	ldr	r2, [pc, #356]	; (8ac <PortConfig+0x194>)
     748:	69d2      	ldr	r2, [r2, #28]
     74a:	2180      	movs	r1, #128	; 0x80
     74c:	0449      	lsls	r1, r1, #17
     74e:	430a      	orrs	r2, r1
     750:	61da      	str	r2, [r3, #28]
     752:	4b59      	ldr	r3, [pc, #356]	; (8b8 <PortConfig+0x1a0>)
     754:	4a58      	ldr	r2, [pc, #352]	; (8b8 <PortConfig+0x1a0>)
     756:	6892      	ldr	r2, [r2, #8]
     758:	0192      	lsls	r2, r2, #6
     75a:	0992      	lsrs	r2, r2, #6
     75c:	609a      	str	r2, [r3, #8]
     75e:	4b56      	ldr	r3, [pc, #344]	; (8b8 <PortConfig+0x1a0>)
     760:	4a55      	ldr	r2, [pc, #340]	; (8b8 <PortConfig+0x1a0>)
     762:	6892      	ldr	r2, [r2, #8]
     764:	21a8      	movs	r1, #168	; 0xa8
     766:	05c9      	lsls	r1, r1, #23
     768:	430a      	orrs	r2, r1
     76a:	609a      	str	r2, [r3, #8]
     76c:	4b52      	ldr	r3, [pc, #328]	; (8b8 <PortConfig+0x1a0>)
     76e:	4a52      	ldr	r2, [pc, #328]	; (8b8 <PortConfig+0x1a0>)
     770:	68d2      	ldr	r2, [r2, #12]
     772:	21e0      	movs	r1, #224	; 0xe0
     774:	0209      	lsls	r1, r1, #8
     776:	430a      	orrs	r2, r1
     778:	60da      	str	r2, [r3, #12]
     77a:	4b4f      	ldr	r3, [pc, #316]	; (8b8 <PortConfig+0x1a0>)
     77c:	4a4e      	ldr	r2, [pc, #312]	; (8b8 <PortConfig+0x1a0>)
     77e:	6992      	ldr	r2, [r2, #24]
     780:	21fc      	movs	r1, #252	; 0xfc
     782:	0609      	lsls	r1, r1, #24
     784:	430a      	orrs	r2, r1
     786:	619a      	str	r2, [r3, #24]
     788:	4b49      	ldr	r3, [pc, #292]	; (8b0 <PortConfig+0x198>)
     78a:	4a49      	ldr	r2, [pc, #292]	; (8b0 <PortConfig+0x198>)
     78c:	6892      	ldr	r2, [r2, #8]
     78e:	0b92      	lsrs	r2, r2, #14
     790:	0392      	lsls	r2, r2, #14
     792:	609a      	str	r2, [r3, #8]
     794:	4b46      	ldr	r3, [pc, #280]	; (8b0 <PortConfig+0x198>)
     796:	4a46      	ldr	r2, [pc, #280]	; (8b0 <PortConfig+0x198>)
     798:	6892      	ldr	r2, [r2, #8]
     79a:	4948      	ldr	r1, [pc, #288]	; (8bc <PortConfig+0x1a4>)
     79c:	430a      	orrs	r2, r1
     79e:	609a      	str	r2, [r3, #8]
     7a0:	4b43      	ldr	r3, [pc, #268]	; (8b0 <PortConfig+0x198>)
     7a2:	4a43      	ldr	r2, [pc, #268]	; (8b0 <PortConfig+0x198>)
     7a4:	68d2      	ldr	r2, [r2, #12]
     7a6:	217f      	movs	r1, #127	; 0x7f
     7a8:	430a      	orrs	r2, r1
     7aa:	60da      	str	r2, [r3, #12]
     7ac:	4b40      	ldr	r3, [pc, #256]	; (8b0 <PortConfig+0x198>)
     7ae:	4a40      	ldr	r2, [pc, #256]	; (8b0 <PortConfig+0x198>)
     7b0:	6992      	ldr	r2, [r2, #24]
     7b2:	4943      	ldr	r1, [pc, #268]	; (8c0 <PortConfig+0x1a8>)
     7b4:	430a      	orrs	r2, r1
     7b6:	619a      	str	r2, [r3, #24]
     7b8:	4b3c      	ldr	r3, [pc, #240]	; (8ac <PortConfig+0x194>)
     7ba:	4a3c      	ldr	r2, [pc, #240]	; (8ac <PortConfig+0x194>)
     7bc:	69d2      	ldr	r2, [r2, #28]
     7be:	2180      	movs	r1, #128	; 0x80
     7c0:	0489      	lsls	r1, r1, #18
     7c2:	430a      	orrs	r2, r1
     7c4:	61da      	str	r2, [r3, #28]
     7c6:	4b3f      	ldr	r3, [pc, #252]	; (8c4 <PortConfig+0x1ac>)
     7c8:	4a3e      	ldr	r2, [pc, #248]	; (8c4 <PortConfig+0x1ac>)
     7ca:	68d2      	ldr	r2, [r2, #12]
     7cc:	2102      	movs	r1, #2
     7ce:	438a      	bics	r2, r1
     7d0:	60da      	str	r2, [r3, #12]
     7d2:	4b3c      	ldr	r3, [pc, #240]	; (8c4 <PortConfig+0x1ac>)
     7d4:	4a3b      	ldr	r2, [pc, #236]	; (8c4 <PortConfig+0x1ac>)
     7d6:	68d2      	ldr	r2, [r2, #12]
     7d8:	2108      	movs	r1, #8
     7da:	430a      	orrs	r2, r1
     7dc:	60da      	str	r2, [r3, #12]
     7de:	4b39      	ldr	r3, [pc, #228]	; (8c4 <PortConfig+0x1ac>)
     7e0:	4a38      	ldr	r2, [pc, #224]	; (8c4 <PortConfig+0x1ac>)
     7e2:	6892      	ldr	r2, [r2, #8]
     7e4:	21c0      	movs	r1, #192	; 0xc0
     7e6:	438a      	bics	r2, r1
     7e8:	609a      	str	r2, [r3, #8]
     7ea:	4b36      	ldr	r3, [pc, #216]	; (8c4 <PortConfig+0x1ac>)
     7ec:	4a35      	ldr	r2, [pc, #212]	; (8c4 <PortConfig+0x1ac>)
     7ee:	6892      	ldr	r2, [r2, #8]
     7f0:	2140      	movs	r1, #64	; 0x40
     7f2:	430a      	orrs	r2, r1
     7f4:	609a      	str	r2, [r3, #8]
     7f6:	4b33      	ldr	r3, [pc, #204]	; (8c4 <PortConfig+0x1ac>)
     7f8:	4a32      	ldr	r2, [pc, #200]	; (8c4 <PortConfig+0x1ac>)
     7fa:	6992      	ldr	r2, [r2, #24]
     7fc:	21c0      	movs	r1, #192	; 0xc0
     7fe:	430a      	orrs	r2, r1
     800:	619a      	str	r2, [r3, #24]
     802:	4b30      	ldr	r3, [pc, #192]	; (8c4 <PortConfig+0x1ac>)
     804:	4a2f      	ldr	r2, [pc, #188]	; (8c4 <PortConfig+0x1ac>)
     806:	6852      	ldr	r2, [r2, #4]
     808:	2108      	movs	r1, #8
     80a:	430a      	orrs	r2, r1
     80c:	605a      	str	r2, [r3, #4]
     80e:	4b2d      	ldr	r3, [pc, #180]	; (8c4 <PortConfig+0x1ac>)
     810:	4a2c      	ldr	r2, [pc, #176]	; (8c4 <PortConfig+0x1ac>)
     812:	68d2      	ldr	r2, [r2, #12]
     814:	2101      	movs	r1, #1
     816:	430a      	orrs	r2, r1
     818:	60da      	str	r2, [r3, #12]
     81a:	4b2a      	ldr	r3, [pc, #168]	; (8c4 <PortConfig+0x1ac>)
     81c:	4a29      	ldr	r2, [pc, #164]	; (8c4 <PortConfig+0x1ac>)
     81e:	6892      	ldr	r2, [r2, #8]
     820:	2103      	movs	r1, #3
     822:	438a      	bics	r2, r1
     824:	609a      	str	r2, [r3, #8]
     826:	4b27      	ldr	r3, [pc, #156]	; (8c4 <PortConfig+0x1ac>)
     828:	4a26      	ldr	r2, [pc, #152]	; (8c4 <PortConfig+0x1ac>)
     82a:	6992      	ldr	r2, [r2, #24]
     82c:	2103      	movs	r1, #3
     82e:	430a      	orrs	r2, r1
     830:	619a      	str	r2, [r3, #24]
     832:	4b24      	ldr	r3, [pc, #144]	; (8c4 <PortConfig+0x1ac>)
     834:	4a23      	ldr	r2, [pc, #140]	; (8c4 <PortConfig+0x1ac>)
     836:	6852      	ldr	r2, [r2, #4]
     838:	2101      	movs	r1, #1
     83a:	430a      	orrs	r2, r1
     83c:	605a      	str	r2, [r3, #4]
     83e:	4b21      	ldr	r3, [pc, #132]	; (8c4 <PortConfig+0x1ac>)
     840:	4a20      	ldr	r2, [pc, #128]	; (8c4 <PortConfig+0x1ac>)
     842:	6812      	ldr	r2, [r2, #0]
     844:	2101      	movs	r1, #1
     846:	430a      	orrs	r2, r1
     848:	601a      	str	r2, [r3, #0]
     84a:	4b18      	ldr	r3, [pc, #96]	; (8ac <PortConfig+0x194>)
     84c:	4a17      	ldr	r2, [pc, #92]	; (8ac <PortConfig+0x194>)
     84e:	69d2      	ldr	r2, [r2, #28]
     850:	2180      	movs	r1, #128	; 0x80
     852:	0409      	lsls	r1, r1, #16
     854:	430a      	orrs	r2, r1
     856:	61da      	str	r2, [r3, #28]
     858:	4b17      	ldr	r3, [pc, #92]	; (8b8 <PortConfig+0x1a0>)
     85a:	4a17      	ldr	r2, [pc, #92]	; (8b8 <PortConfig+0x1a0>)
     85c:	6892      	ldr	r2, [r2, #8]
     85e:	491a      	ldr	r1, [pc, #104]	; (8c8 <PortConfig+0x1b0>)
     860:	400a      	ands	r2, r1
     862:	609a      	str	r2, [r3, #8]
     864:	4b14      	ldr	r3, [pc, #80]	; (8b8 <PortConfig+0x1a0>)
     866:	4a14      	ldr	r2, [pc, #80]	; (8b8 <PortConfig+0x1a0>)
     868:	6892      	ldr	r2, [r2, #8]
     86a:	21a0      	movs	r1, #160	; 0xa0
     86c:	0049      	lsls	r1, r1, #1
     86e:	430a      	orrs	r2, r1
     870:	609a      	str	r2, [r3, #8]
     872:	4b11      	ldr	r3, [pc, #68]	; (8b8 <PortConfig+0x1a0>)
     874:	4a10      	ldr	r2, [pc, #64]	; (8b8 <PortConfig+0x1a0>)
     876:	68d2      	ldr	r2, [r2, #12]
     878:	2118      	movs	r1, #24
     87a:	430a      	orrs	r2, r1
     87c:	60da      	str	r2, [r3, #12]
     87e:	4b0e      	ldr	r3, [pc, #56]	; (8b8 <PortConfig+0x1a0>)
     880:	4a0d      	ldr	r2, [pc, #52]	; (8b8 <PortConfig+0x1a0>)
     882:	6992      	ldr	r2, [r2, #24]
     884:	21f0      	movs	r1, #240	; 0xf0
     886:	0089      	lsls	r1, r1, #2
     888:	430a      	orrs	r2, r1
     88a:	619a      	str	r2, [r3, #24]
     88c:	4b0a      	ldr	r3, [pc, #40]	; (8b8 <PortConfig+0x1a0>)
     88e:	4a0a      	ldr	r2, [pc, #40]	; (8b8 <PortConfig+0x1a0>)
     890:	6812      	ldr	r2, [r2, #0]
     892:	2118      	movs	r1, #24
     894:	438a      	bics	r2, r1
     896:	601a      	str	r2, [r3, #0]
     898:	4b07      	ldr	r3, [pc, #28]	; (8b8 <PortConfig+0x1a0>)
     89a:	4a07      	ldr	r2, [pc, #28]	; (8b8 <PortConfig+0x1a0>)
     89c:	6912      	ldr	r2, [r2, #16]
     89e:	2180      	movs	r1, #128	; 0x80
     8a0:	0349      	lsls	r1, r1, #13
     8a2:	430a      	orrs	r2, r1
     8a4:	611a      	str	r2, [r3, #16]
     8a6:	46c0      	nop			; (mov r8, r8)
     8a8:	46bd      	mov	sp, r7
     8aa:	bd80      	pop	{r7, pc}
     8ac:	40020000 	.word	0x40020000
     8b0:	400c0000 	.word	0x400c0000
     8b4:	ffffc7ff 	.word	0xffffc7ff
     8b8:	400b8000 	.word	0x400b8000
     8bc:	00001555 	.word	0x00001555
     8c0:	00003fff 	.word	0x00003fff
     8c4:	400c8000 	.word	0x400c8000
     8c8:	fffffc3f 	.word	0xfffffc3f

000008cc <dac_init>:
     8cc:	b580      	push	{r7, lr}
     8ce:	af00      	add	r7, sp, #0
     8d0:	4b07      	ldr	r3, [pc, #28]	; (8f0 <dac_init+0x24>)
     8d2:	4a07      	ldr	r2, [pc, #28]	; (8f0 <dac_init+0x24>)
     8d4:	69d2      	ldr	r2, [r2, #28]
     8d6:	2180      	movs	r1, #128	; 0x80
     8d8:	02c9      	lsls	r1, r1, #11
     8da:	430a      	orrs	r2, r1
     8dc:	61da      	str	r2, [r3, #28]
     8de:	4b05      	ldr	r3, [pc, #20]	; (8f4 <dac_init+0x28>)
     8e0:	4a04      	ldr	r2, [pc, #16]	; (8f4 <dac_init+0x28>)
     8e2:	6812      	ldr	r2, [r2, #0]
     8e4:	2104      	movs	r1, #4
     8e6:	430a      	orrs	r2, r1
     8e8:	601a      	str	r2, [r3, #0]
     8ea:	46c0      	nop			; (mov r8, r8)
     8ec:	46bd      	mov	sp, r7
     8ee:	bd80      	pop	{r7, pc}
     8f0:	40020000 	.word	0x40020000
     8f4:	40090000 	.word	0x40090000

000008f8 <ClkConfig>:
     8f8:	b580      	push	{r7, lr}
     8fa:	af00      	add	r7, sp, #0
     8fc:	4b18      	ldr	r3, [pc, #96]	; (960 <ClkConfig+0x68>)
     8fe:	4a18      	ldr	r2, [pc, #96]	; (960 <ClkConfig+0x68>)
     900:	6892      	ldr	r2, [r2, #8]
     902:	2101      	movs	r1, #1
     904:	430a      	orrs	r2, r1
     906:	609a      	str	r2, [r3, #8]
     908:	46c0      	nop			; (mov r8, r8)
     90a:	4b15      	ldr	r3, [pc, #84]	; (960 <ClkConfig+0x68>)
     90c:	681b      	ldr	r3, [r3, #0]
     90e:	2204      	movs	r2, #4
     910:	4013      	ands	r3, r2
     912:	d0fa      	beq.n	90a <ClkConfig+0x12>
     914:	4b12      	ldr	r3, [pc, #72]	; (960 <ClkConfig+0x68>)
     916:	4a12      	ldr	r2, [pc, #72]	; (960 <ClkConfig+0x68>)
     918:	68d2      	ldr	r2, [r2, #12]
     91a:	2102      	movs	r1, #2
     91c:	430a      	orrs	r2, r1
     91e:	60da      	str	r2, [r3, #12]
     920:	4b0f      	ldr	r3, [pc, #60]	; (960 <ClkConfig+0x68>)
     922:	4a10      	ldr	r2, [pc, #64]	; (964 <ClkConfig+0x6c>)
     924:	605a      	str	r2, [r3, #4]
     926:	46c0      	nop			; (mov r8, r8)
     928:	4b0d      	ldr	r3, [pc, #52]	; (960 <ClkConfig+0x68>)
     92a:	681b      	ldr	r3, [r3, #0]
     92c:	2202      	movs	r2, #2
     92e:	4013      	ands	r3, r2
     930:	d0fa      	beq.n	928 <ClkConfig+0x30>
     932:	4b0d      	ldr	r3, [pc, #52]	; (968 <ClkConfig+0x70>)
     934:	4a0c      	ldr	r2, [pc, #48]	; (968 <ClkConfig+0x70>)
     936:	6812      	ldr	r2, [r2, #0]
     938:	2120      	movs	r1, #32
     93a:	430a      	orrs	r2, r1
     93c:	601a      	str	r2, [r3, #0]
     93e:	4b08      	ldr	r3, [pc, #32]	; (960 <ClkConfig+0x68>)
     940:	4a07      	ldr	r2, [pc, #28]	; (960 <ClkConfig+0x68>)
     942:	68d2      	ldr	r2, [r2, #12]
     944:	2180      	movs	r1, #128	; 0x80
     946:	0049      	lsls	r1, r1, #1
     948:	430a      	orrs	r2, r1
     94a:	60da      	str	r2, [r3, #12]
     94c:	4b04      	ldr	r3, [pc, #16]	; (960 <ClkConfig+0x68>)
     94e:	4a04      	ldr	r2, [pc, #16]	; (960 <ClkConfig+0x68>)
     950:	68d2      	ldr	r2, [r2, #12]
     952:	2104      	movs	r1, #4
     954:	430a      	orrs	r2, r1
     956:	60da      	str	r2, [r3, #12]
     958:	46c0      	nop			; (mov r8, r8)
     95a:	46bd      	mov	sp, r7
     95c:	bd80      	pop	{r7, pc}
     95e:	46c0      	nop			; (mov r8, r8)
     960:	40020000 	.word	0x40020000
     964:	00000b04 	.word	0x00000b04
     968:	40018000 	.word	0x40018000

0000096c <TimerConfig>:
     96c:	b580      	push	{r7, lr}
     96e:	af00      	add	r7, sp, #0
     970:	4b5d      	ldr	r3, [pc, #372]	; (ae8 <TimerConfig+0x17c>)
     972:	4a5d      	ldr	r2, [pc, #372]	; (ae8 <TimerConfig+0x17c>)
     974:	69d2      	ldr	r2, [r2, #28]
     976:	2180      	movs	r1, #128	; 0x80
     978:	01c9      	lsls	r1, r1, #7
     97a:	430a      	orrs	r2, r1
     97c:	61da      	str	r2, [r3, #28]
     97e:	4b5a      	ldr	r3, [pc, #360]	; (ae8 <TimerConfig+0x17c>)
     980:	4a59      	ldr	r2, [pc, #356]	; (ae8 <TimerConfig+0x17c>)
     982:	6a52      	ldr	r2, [r2, #36]	; 0x24
     984:	2180      	movs	r1, #128	; 0x80
     986:	0449      	lsls	r1, r1, #17
     988:	430a      	orrs	r2, r1
     98a:	625a      	str	r2, [r3, #36]	; 0x24
     98c:	4b56      	ldr	r3, [pc, #344]	; (ae8 <TimerConfig+0x17c>)
     98e:	4a56      	ldr	r2, [pc, #344]	; (ae8 <TimerConfig+0x17c>)
     990:	6a52      	ldr	r2, [r2, #36]	; 0x24
     992:	21ff      	movs	r1, #255	; 0xff
     994:	438a      	bics	r2, r1
     996:	625a      	str	r2, [r3, #36]	; 0x24
     998:	4b54      	ldr	r3, [pc, #336]	; (aec <TimerConfig+0x180>)
     99a:	2200      	movs	r2, #0
     99c:	601a      	str	r2, [r3, #0]
     99e:	4b53      	ldr	r3, [pc, #332]	; (aec <TimerConfig+0x180>)
     9a0:	225f      	movs	r2, #95	; 0x5f
     9a2:	605a      	str	r2, [r3, #4]
     9a4:	4b51      	ldr	r3, [pc, #324]	; (aec <TimerConfig+0x180>)
     9a6:	4a52      	ldr	r2, [pc, #328]	; (af0 <TimerConfig+0x184>)
     9a8:	609a      	str	r2, [r3, #8]
     9aa:	4b50      	ldr	r3, [pc, #320]	; (aec <TimerConfig+0x180>)
     9ac:	22c8      	movs	r2, #200	; 0xc8
     9ae:	0052      	lsls	r2, r2, #1
     9b0:	611a      	str	r2, [r3, #16]
     9b2:	4b4e      	ldr	r3, [pc, #312]	; (aec <TimerConfig+0x180>)
     9b4:	22af      	movs	r2, #175	; 0xaf
     9b6:	0092      	lsls	r2, r2, #2
     9b8:	615a      	str	r2, [r3, #20]
     9ba:	4b4c      	ldr	r3, [pc, #304]	; (aec <TimerConfig+0x180>)
     9bc:	4a4d      	ldr	r2, [pc, #308]	; (af4 <TimerConfig+0x188>)
     9be:	619a      	str	r2, [r3, #24]
     9c0:	4b4a      	ldr	r3, [pc, #296]	; (aec <TimerConfig+0x180>)
     9c2:	4a4a      	ldr	r2, [pc, #296]	; (aec <TimerConfig+0x180>)
     9c4:	6a12      	ldr	r2, [r2, #32]
     9c6:	494c      	ldr	r1, [pc, #304]	; (af8 <TimerConfig+0x18c>)
     9c8:	400a      	ands	r2, r1
     9ca:	621a      	str	r2, [r3, #32]
     9cc:	4b47      	ldr	r3, [pc, #284]	; (aec <TimerConfig+0x180>)
     9ce:	4a47      	ldr	r2, [pc, #284]	; (aec <TimerConfig+0x180>)
     9d0:	6a12      	ldr	r2, [r2, #32]
     9d2:	21e0      	movs	r1, #224	; 0xe0
     9d4:	0109      	lsls	r1, r1, #4
     9d6:	430a      	orrs	r2, r1
     9d8:	621a      	str	r2, [r3, #32]
     9da:	4b44      	ldr	r3, [pc, #272]	; (aec <TimerConfig+0x180>)
     9dc:	4a43      	ldr	r2, [pc, #268]	; (aec <TimerConfig+0x180>)
     9de:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9e0:	210f      	movs	r1, #15
     9e2:	438a      	bics	r2, r1
     9e4:	631a      	str	r2, [r3, #48]	; 0x30
     9e6:	4b41      	ldr	r3, [pc, #260]	; (aec <TimerConfig+0x180>)
     9e8:	4a40      	ldr	r2, [pc, #256]	; (aec <TimerConfig+0x180>)
     9ea:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9ec:	210c      	movs	r1, #12
     9ee:	430a      	orrs	r2, r1
     9f0:	631a      	str	r2, [r3, #48]	; 0x30
     9f2:	4b3e      	ldr	r3, [pc, #248]	; (aec <TimerConfig+0x180>)
     9f4:	4a3d      	ldr	r2, [pc, #244]	; (aec <TimerConfig+0x180>)
     9f6:	6b12      	ldr	r2, [r2, #48]	; 0x30
     9f8:	2101      	movs	r1, #1
     9fa:	430a      	orrs	r2, r1
     9fc:	631a      	str	r2, [r3, #48]	; 0x30
     9fe:	4b3b      	ldr	r3, [pc, #236]	; (aec <TimerConfig+0x180>)
     a00:	4a3a      	ldr	r2, [pc, #232]	; (aec <TimerConfig+0x180>)
     a02:	6a52      	ldr	r2, [r2, #36]	; 0x24
     a04:	493c      	ldr	r1, [pc, #240]	; (af8 <TimerConfig+0x18c>)
     a06:	400a      	ands	r2, r1
     a08:	625a      	str	r2, [r3, #36]	; 0x24
     a0a:	4b38      	ldr	r3, [pc, #224]	; (aec <TimerConfig+0x180>)
     a0c:	4a37      	ldr	r2, [pc, #220]	; (aec <TimerConfig+0x180>)
     a0e:	6a52      	ldr	r2, [r2, #36]	; 0x24
     a10:	21e0      	movs	r1, #224	; 0xe0
     a12:	0109      	lsls	r1, r1, #4
     a14:	430a      	orrs	r2, r1
     a16:	625a      	str	r2, [r3, #36]	; 0x24
     a18:	4b34      	ldr	r3, [pc, #208]	; (aec <TimerConfig+0x180>)
     a1a:	4a34      	ldr	r2, [pc, #208]	; (aec <TimerConfig+0x180>)
     a1c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a1e:	210f      	movs	r1, #15
     a20:	438a      	bics	r2, r1
     a22:	635a      	str	r2, [r3, #52]	; 0x34
     a24:	4b31      	ldr	r3, [pc, #196]	; (aec <TimerConfig+0x180>)
     a26:	4a31      	ldr	r2, [pc, #196]	; (aec <TimerConfig+0x180>)
     a28:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a2a:	210c      	movs	r1, #12
     a2c:	430a      	orrs	r2, r1
     a2e:	635a      	str	r2, [r3, #52]	; 0x34
     a30:	4b2e      	ldr	r3, [pc, #184]	; (aec <TimerConfig+0x180>)
     a32:	4a2e      	ldr	r2, [pc, #184]	; (aec <TimerConfig+0x180>)
     a34:	6b52      	ldr	r2, [r2, #52]	; 0x34
     a36:	2101      	movs	r1, #1
     a38:	430a      	orrs	r2, r1
     a3a:	635a      	str	r2, [r3, #52]	; 0x34
     a3c:	4b2b      	ldr	r3, [pc, #172]	; (aec <TimerConfig+0x180>)
     a3e:	4a2b      	ldr	r2, [pc, #172]	; (aec <TimerConfig+0x180>)
     a40:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a42:	492d      	ldr	r1, [pc, #180]	; (af8 <TimerConfig+0x18c>)
     a44:	400a      	ands	r2, r1
     a46:	629a      	str	r2, [r3, #40]	; 0x28
     a48:	4b28      	ldr	r3, [pc, #160]	; (aec <TimerConfig+0x180>)
     a4a:	4a28      	ldr	r2, [pc, #160]	; (aec <TimerConfig+0x180>)
     a4c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     a4e:	21e0      	movs	r1, #224	; 0xe0
     a50:	0109      	lsls	r1, r1, #4
     a52:	430a      	orrs	r2, r1
     a54:	629a      	str	r2, [r3, #40]	; 0x28
     a56:	4b25      	ldr	r3, [pc, #148]	; (aec <TimerConfig+0x180>)
     a58:	4a24      	ldr	r2, [pc, #144]	; (aec <TimerConfig+0x180>)
     a5a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a5c:	210f      	movs	r1, #15
     a5e:	438a      	bics	r2, r1
     a60:	639a      	str	r2, [r3, #56]	; 0x38
     a62:	4b22      	ldr	r3, [pc, #136]	; (aec <TimerConfig+0x180>)
     a64:	4a21      	ldr	r2, [pc, #132]	; (aec <TimerConfig+0x180>)
     a66:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a68:	210c      	movs	r1, #12
     a6a:	430a      	orrs	r2, r1
     a6c:	639a      	str	r2, [r3, #56]	; 0x38
     a6e:	4b1f      	ldr	r3, [pc, #124]	; (aec <TimerConfig+0x180>)
     a70:	4a1e      	ldr	r2, [pc, #120]	; (aec <TimerConfig+0x180>)
     a72:	6b92      	ldr	r2, [r2, #56]	; 0x38
     a74:	2101      	movs	r1, #1
     a76:	430a      	orrs	r2, r1
     a78:	639a      	str	r2, [r3, #56]	; 0x38
     a7a:	4b1c      	ldr	r3, [pc, #112]	; (aec <TimerConfig+0x180>)
     a7c:	4a1b      	ldr	r2, [pc, #108]	; (aec <TimerConfig+0x180>)
     a7e:	6d92      	ldr	r2, [r2, #88]	; 0x58
     a80:	21e0      	movs	r1, #224	; 0xe0
     a82:	0109      	lsls	r1, r1, #4
     a84:	430a      	orrs	r2, r1
     a86:	659a      	str	r2, [r3, #88]	; 0x58
     a88:	4b18      	ldr	r3, [pc, #96]	; (aec <TimerConfig+0x180>)
     a8a:	2201      	movs	r2, #1
     a8c:	60da      	str	r2, [r3, #12]
     a8e:	4b16      	ldr	r3, [pc, #88]	; (ae8 <TimerConfig+0x17c>)
     a90:	4a15      	ldr	r2, [pc, #84]	; (ae8 <TimerConfig+0x17c>)
     a92:	69d2      	ldr	r2, [r2, #28]
     a94:	2180      	movs	r1, #128	; 0x80
     a96:	0309      	lsls	r1, r1, #12
     a98:	430a      	orrs	r2, r1
     a9a:	61da      	str	r2, [r3, #28]
     a9c:	4b12      	ldr	r3, [pc, #72]	; (ae8 <TimerConfig+0x17c>)
     a9e:	4a12      	ldr	r2, [pc, #72]	; (ae8 <TimerConfig+0x17c>)
     aa0:	6a92      	ldr	r2, [r2, #40]	; 0x28
     aa2:	2180      	movs	r1, #128	; 0x80
     aa4:	04c9      	lsls	r1, r1, #19
     aa6:	430a      	orrs	r2, r1
     aa8:	629a      	str	r2, [r3, #40]	; 0x28
     aaa:	4b0f      	ldr	r3, [pc, #60]	; (ae8 <TimerConfig+0x17c>)
     aac:	4a0e      	ldr	r2, [pc, #56]	; (ae8 <TimerConfig+0x17c>)
     aae:	6a92      	ldr	r2, [r2, #40]	; 0x28
     ab0:	4912      	ldr	r1, [pc, #72]	; (afc <TimerConfig+0x190>)
     ab2:	400a      	ands	r2, r1
     ab4:	629a      	str	r2, [r3, #40]	; 0x28
     ab6:	4b12      	ldr	r3, [pc, #72]	; (b00 <TimerConfig+0x194>)
     ab8:	2200      	movs	r2, #0
     aba:	601a      	str	r2, [r3, #0]
     abc:	4b10      	ldr	r3, [pc, #64]	; (b00 <TimerConfig+0x194>)
     abe:	225f      	movs	r2, #95	; 0x5f
     ac0:	605a      	str	r2, [r3, #4]
     ac2:	4b0f      	ldr	r3, [pc, #60]	; (b00 <TimerConfig+0x194>)
     ac4:	4a0a      	ldr	r2, [pc, #40]	; (af0 <TimerConfig+0x184>)
     ac6:	609a      	str	r2, [r3, #8]
     ac8:	4b0d      	ldr	r3, [pc, #52]	; (b00 <TimerConfig+0x194>)
     aca:	4a0d      	ldr	r2, [pc, #52]	; (b00 <TimerConfig+0x194>)
     acc:	6d92      	ldr	r2, [r2, #88]	; 0x58
     ace:	2102      	movs	r1, #2
     ad0:	430a      	orrs	r2, r1
     ad2:	659a      	str	r2, [r3, #88]	; 0x58
     ad4:	4b0a      	ldr	r3, [pc, #40]	; (b00 <TimerConfig+0x194>)
     ad6:	2201      	movs	r2, #1
     ad8:	60da      	str	r2, [r3, #12]
     ada:	200d      	movs	r0, #13
     adc:	f7ff faf0 	bl	c0 <NVIC_EnableIRQ>
     ae0:	46c0      	nop			; (mov r8, r8)
     ae2:	46bd      	mov	sp, r7
     ae4:	bd80      	pop	{r7, pc}
     ae6:	46c0      	nop			; (mov r8, r8)
     ae8:	40020000 	.word	0x40020000
     aec:	40070000 	.word	0x40070000
     af0:	000003e7 	.word	0x000003e7
     af4:	000003de 	.word	0x000003de
     af8:	fffff1ff 	.word	0xfffff1ff
     afc:	ff00ffff 	.word	0xff00ffff
     b00:	40098000 	.word	0x40098000

00000b04 <mil_std_1533_init_rt>:
     b04:	b580      	push	{r7, lr}
     b06:	b082      	sub	sp, #8
     b08:	af00      	add	r7, sp, #0
     b0a:	4b26      	ldr	r3, [pc, #152]	; (ba4 <mil_std_1533_init_rt+0xa0>)
     b0c:	603b      	str	r3, [r7, #0]
     b0e:	4b26      	ldr	r3, [pc, #152]	; (ba8 <mil_std_1533_init_rt+0xa4>)
     b10:	4a25      	ldr	r2, [pc, #148]	; (ba8 <mil_std_1533_init_rt+0xa4>)
     b12:	69d2      	ldr	r2, [r2, #28]
     b14:	2180      	movs	r1, #128	; 0x80
     b16:	0089      	lsls	r1, r1, #2
     b18:	430a      	orrs	r2, r1
     b1a:	61da      	str	r2, [r3, #28]
     b1c:	4b22      	ldr	r3, [pc, #136]	; (ba8 <mil_std_1533_init_rt+0xa4>)
     b1e:	4a22      	ldr	r2, [pc, #136]	; (ba8 <mil_std_1533_init_rt+0xa4>)
     b20:	6b52      	ldr	r2, [r2, #52]	; 0x34
     b22:	4922      	ldr	r1, [pc, #136]	; (bac <mil_std_1533_init_rt+0xa8>)
     b24:	430a      	orrs	r2, r1
     b26:	635a      	str	r2, [r3, #52]	; 0x34
     b28:	4a21      	ldr	r2, [pc, #132]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b2a:	2380      	movs	r3, #128	; 0x80
     b2c:	015b      	lsls	r3, r3, #5
     b2e:	2101      	movs	r1, #1
     b30:	50d1      	str	r1, [r2, r3]
     b32:	4a1f      	ldr	r2, [pc, #124]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b34:	2380      	movs	r3, #128	; 0x80
     b36:	015b      	lsls	r3, r3, #5
     b38:	491e      	ldr	r1, [pc, #120]	; (bb4 <mil_std_1533_init_rt+0xb0>)
     b3a:	50d1      	str	r1, [r2, r3]
     b3c:	491c      	ldr	r1, [pc, #112]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b3e:	4a1c      	ldr	r2, [pc, #112]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b40:	2381      	movs	r3, #129	; 0x81
     b42:	015b      	lsls	r3, r3, #5
     b44:	58d3      	ldr	r3, [r2, r3]
     b46:	2208      	movs	r2, #8
     b48:	431a      	orrs	r2, r3
     b4a:	2381      	movs	r3, #129	; 0x81
     b4c:	015b      	lsls	r3, r3, #5
     b4e:	50ca      	str	r2, [r1, r3]
     b50:	4917      	ldr	r1, [pc, #92]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b52:	4a17      	ldr	r2, [pc, #92]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b54:	2381      	movs	r3, #129	; 0x81
     b56:	015b      	lsls	r3, r3, #5
     b58:	58d3      	ldr	r3, [r2, r3]
     b5a:	2206      	movs	r2, #6
     b5c:	431a      	orrs	r2, r3
     b5e:	2381      	movs	r3, #129	; 0x81
     b60:	015b      	lsls	r3, r3, #5
     b62:	50ca      	str	r2, [r1, r3]
     b64:	2001      	movs	r0, #1
     b66:	f7ff faab 	bl	c0 <NVIC_EnableIRQ>
     b6a:	4911      	ldr	r1, [pc, #68]	; (bb0 <mil_std_1533_init_rt+0xac>)
     b6c:	4a12      	ldr	r2, [pc, #72]	; (bb8 <mil_std_1533_init_rt+0xb4>)
     b6e:	2380      	movs	r3, #128	; 0x80
     b70:	01db      	lsls	r3, r3, #7
     b72:	508b      	str	r3, [r1, r2]
     b74:	2300      	movs	r3, #0
     b76:	607b      	str	r3, [r7, #4]
     b78:	e00d      	b.n	b96 <mil_std_1533_init_rt+0x92>
     b7a:	683b      	ldr	r3, [r7, #0]
     b7c:	1d1a      	adds	r2, r3, #4
     b7e:	603a      	str	r2, [r7, #0]
     b80:	687a      	ldr	r2, [r7, #4]
     b82:	b292      	uxth	r2, r2
     b84:	210f      	movs	r1, #15
     b86:	400a      	ands	r2, r1
     b88:	b292      	uxth	r2, r2
     b8a:	3230      	adds	r2, #48	; 0x30
     b8c:	b292      	uxth	r2, r2
     b8e:	601a      	str	r2, [r3, #0]
     b90:	687b      	ldr	r3, [r7, #4]
     b92:	3301      	adds	r3, #1
     b94:	607b      	str	r3, [r7, #4]
     b96:	687b      	ldr	r3, [r7, #4]
     b98:	2b1f      	cmp	r3, #31
     b9a:	ddee      	ble.n	b7a <mil_std_1533_init_rt+0x76>
     b9c:	46c0      	nop			; (mov r8, r8)
     b9e:	46bd      	mov	sp, r7
     ba0:	b002      	add	sp, #8
     ba2:	bd80      	pop	{r7, pc}
     ba4:	40048080 	.word	0x40048080
     ba8:	40020000 	.word	0x40020000
     bac:	02000100 	.word	0x02000100
     bb0:	40048000 	.word	0x40048000
     bb4:	00018238 	.word	0x00018238
     bb8:	00001018 	.word	0x00001018

00000bbc <SystemInit>:
     bbc:	b580      	push	{r7, lr}
     bbe:	af00      	add	r7, sp, #0
     bc0:	f7ff fe9a 	bl	8f8 <ClkConfig>
     bc4:	f7ff fda8 	bl	718 <PortConfig>
     bc8:	f7ff fed0 	bl	96c <TimerConfig>
     bcc:	f000 fa32 	bl	1034 <uart_init>
     bd0:	f7ff ff98 	bl	b04 <mil_std_1533_init_rt>
     bd4:	f7ff fe7a 	bl	8cc <dac_init>
     bd8:	f001 f822 	bl	1c20 <adc_dma_init>
     bdc:	f001 f860 	bl	1ca0 <adc_dma_start>
     be0:	46c0      	nop			; (mov r8, r8)
     be2:	46bd      	mov	sp, r7
     be4:	bd80      	pop	{r7, pc}
     be6:	46c0      	nop			; (mov r8, r8)

00000be8 <SysTick_Handler>:
     be8:	b580      	push	{r7, lr}
     bea:	af00      	add	r7, sp, #0
     bec:	4b03      	ldr	r3, [pc, #12]	; (bfc <SysTick_Handler+0x14>)
     bee:	681b      	ldr	r3, [r3, #0]
     bf0:	1c5a      	adds	r2, r3, #1
     bf2:	4b02      	ldr	r3, [pc, #8]	; (bfc <SysTick_Handler+0x14>)
     bf4:	601a      	str	r2, [r3, #0]
     bf6:	46c0      	nop			; (mov r8, r8)
     bf8:	46bd      	mov	sp, r7
     bfa:	bd80      	pop	{r7, pc}
     bfc:	200000f0 	.word	0x200000f0

00000c00 <TIMER4_Handler>:
     c00:	b580      	push	{r7, lr}
     c02:	af00      	add	r7, sp, #0
     c04:	4b06      	ldr	r3, [pc, #24]	; (c20 <TIMER4_Handler+0x20>)
     c06:	2200      	movs	r2, #0
     c08:	655a      	str	r2, [r3, #84]	; 0x54
     c0a:	4b06      	ldr	r3, [pc, #24]	; (c24 <TIMER4_Handler+0x24>)
     c0c:	681b      	ldr	r3, [r3, #0]
     c0e:	1c5a      	adds	r2, r3, #1
     c10:	4b04      	ldr	r3, [pc, #16]	; (c24 <TIMER4_Handler+0x24>)
     c12:	601a      	str	r2, [r3, #0]
     c14:	4b04      	ldr	r3, [pc, #16]	; (c28 <TIMER4_Handler+0x28>)
     c16:	2201      	movs	r2, #1
     c18:	601a      	str	r2, [r3, #0]
     c1a:	46c0      	nop			; (mov r8, r8)
     c1c:	46bd      	mov	sp, r7
     c1e:	bd80      	pop	{r7, pc}
     c20:	40098000 	.word	0x40098000
     c24:	200000f0 	.word	0x200000f0
     c28:	200000f8 	.word	0x200000f8

00000c2c <MIL_STD_1553B1_Handler>:
     c2c:	b590      	push	{r4, r7, lr}
     c2e:	b087      	sub	sp, #28
     c30:	af00      	add	r7, sp, #0
     c32:	4bbe      	ldr	r3, [pc, #760]	; (f2c <MIL_STD_1553B1_Handler+0x300>)
     c34:	613b      	str	r3, [r7, #16]
     c36:	4abe      	ldr	r2, [pc, #760]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     c38:	4bbe      	ldr	r3, [pc, #760]	; (f34 <MIL_STD_1553B1_Handler+0x308>)
     c3a:	58d3      	ldr	r3, [r2, r3]
     c3c:	2202      	movs	r2, #2
     c3e:	4013      	ands	r3, r2
     c40:	d100      	bne.n	c44 <MIL_STD_1553B1_Handler+0x18>
     c42:	e10f      	b.n	e64 <MIL_STD_1553B1_Handler+0x238>
     c44:	4aba      	ldr	r2, [pc, #744]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     c46:	4bbc      	ldr	r3, [pc, #752]	; (f38 <MIL_STD_1553B1_Handler+0x30c>)
     c48:	58d3      	ldr	r3, [r2, r3]
     c4a:	4abc      	ldr	r2, [pc, #752]	; (f3c <MIL_STD_1553B1_Handler+0x310>)
     c4c:	4293      	cmp	r3, r2
     c4e:	d000      	beq.n	c52 <MIL_STD_1553B1_Handler+0x26>
     c50:	e108      	b.n	e64 <MIL_STD_1553B1_Handler+0x238>
     c52:	4bbb      	ldr	r3, [pc, #748]	; (f40 <MIL_STD_1553B1_Handler+0x314>)
     c54:	681b      	ldr	r3, [r3, #0]
     c56:	2201      	movs	r2, #1
     c58:	4053      	eors	r3, r2
     c5a:	009a      	lsls	r2, r3, #2
     c5c:	4bb9      	ldr	r3, [pc, #740]	; (f44 <MIL_STD_1553B1_Handler+0x318>)
     c5e:	18d3      	adds	r3, r2, r3
     c60:	681b      	ldr	r3, [r3, #0]
     c62:	60fb      	str	r3, [r7, #12]
     c64:	693b      	ldr	r3, [r7, #16]
     c66:	1d1a      	adds	r2, r3, #4
     c68:	613a      	str	r2, [r7, #16]
     c6a:	68fa      	ldr	r2, [r7, #12]
     c6c:	1c91      	adds	r1, r2, #2
     c6e:	60f9      	str	r1, [r7, #12]
     c70:	8812      	ldrh	r2, [r2, #0]
     c72:	601a      	str	r2, [r3, #0]
     c74:	693b      	ldr	r3, [r7, #16]
     c76:	1d1a      	adds	r2, r3, #4
     c78:	613a      	str	r2, [r7, #16]
     c7a:	68fa      	ldr	r2, [r7, #12]
     c7c:	1c91      	adds	r1, r2, #2
     c7e:	60f9      	str	r1, [r7, #12]
     c80:	8812      	ldrh	r2, [r2, #0]
     c82:	601a      	str	r2, [r3, #0]
     c84:	693b      	ldr	r3, [r7, #16]
     c86:	1d1a      	adds	r2, r3, #4
     c88:	613a      	str	r2, [r7, #16]
     c8a:	68fa      	ldr	r2, [r7, #12]
     c8c:	1c91      	adds	r1, r2, #2
     c8e:	60f9      	str	r1, [r7, #12]
     c90:	8812      	ldrh	r2, [r2, #0]
     c92:	601a      	str	r2, [r3, #0]
     c94:	693b      	ldr	r3, [r7, #16]
     c96:	1d1a      	adds	r2, r3, #4
     c98:	613a      	str	r2, [r7, #16]
     c9a:	68fa      	ldr	r2, [r7, #12]
     c9c:	1c91      	adds	r1, r2, #2
     c9e:	60f9      	str	r1, [r7, #12]
     ca0:	8812      	ldrh	r2, [r2, #0]
     ca2:	601a      	str	r2, [r3, #0]
     ca4:	693b      	ldr	r3, [r7, #16]
     ca6:	1d1a      	adds	r2, r3, #4
     ca8:	613a      	str	r2, [r7, #16]
     caa:	68fa      	ldr	r2, [r7, #12]
     cac:	1c91      	adds	r1, r2, #2
     cae:	60f9      	str	r1, [r7, #12]
     cb0:	8812      	ldrh	r2, [r2, #0]
     cb2:	601a      	str	r2, [r3, #0]
     cb4:	693b      	ldr	r3, [r7, #16]
     cb6:	1d1a      	adds	r2, r3, #4
     cb8:	613a      	str	r2, [r7, #16]
     cba:	68fa      	ldr	r2, [r7, #12]
     cbc:	1c91      	adds	r1, r2, #2
     cbe:	60f9      	str	r1, [r7, #12]
     cc0:	8812      	ldrh	r2, [r2, #0]
     cc2:	601a      	str	r2, [r3, #0]
     cc4:	693b      	ldr	r3, [r7, #16]
     cc6:	1d1a      	adds	r2, r3, #4
     cc8:	613a      	str	r2, [r7, #16]
     cca:	68fa      	ldr	r2, [r7, #12]
     ccc:	1c91      	adds	r1, r2, #2
     cce:	60f9      	str	r1, [r7, #12]
     cd0:	8812      	ldrh	r2, [r2, #0]
     cd2:	601a      	str	r2, [r3, #0]
     cd4:	693b      	ldr	r3, [r7, #16]
     cd6:	1d1a      	adds	r2, r3, #4
     cd8:	613a      	str	r2, [r7, #16]
     cda:	68fa      	ldr	r2, [r7, #12]
     cdc:	1c91      	adds	r1, r2, #2
     cde:	60f9      	str	r1, [r7, #12]
     ce0:	8812      	ldrh	r2, [r2, #0]
     ce2:	601a      	str	r2, [r3, #0]
     ce4:	693b      	ldr	r3, [r7, #16]
     ce6:	1d1a      	adds	r2, r3, #4
     ce8:	613a      	str	r2, [r7, #16]
     cea:	68fa      	ldr	r2, [r7, #12]
     cec:	1c91      	adds	r1, r2, #2
     cee:	60f9      	str	r1, [r7, #12]
     cf0:	8812      	ldrh	r2, [r2, #0]
     cf2:	601a      	str	r2, [r3, #0]
     cf4:	693b      	ldr	r3, [r7, #16]
     cf6:	1d1a      	adds	r2, r3, #4
     cf8:	613a      	str	r2, [r7, #16]
     cfa:	68fa      	ldr	r2, [r7, #12]
     cfc:	1c91      	adds	r1, r2, #2
     cfe:	60f9      	str	r1, [r7, #12]
     d00:	8812      	ldrh	r2, [r2, #0]
     d02:	601a      	str	r2, [r3, #0]
     d04:	693b      	ldr	r3, [r7, #16]
     d06:	1d1a      	adds	r2, r3, #4
     d08:	613a      	str	r2, [r7, #16]
     d0a:	68fa      	ldr	r2, [r7, #12]
     d0c:	1c91      	adds	r1, r2, #2
     d0e:	60f9      	str	r1, [r7, #12]
     d10:	8812      	ldrh	r2, [r2, #0]
     d12:	601a      	str	r2, [r3, #0]
     d14:	693b      	ldr	r3, [r7, #16]
     d16:	1d1a      	adds	r2, r3, #4
     d18:	613a      	str	r2, [r7, #16]
     d1a:	68fa      	ldr	r2, [r7, #12]
     d1c:	1c91      	adds	r1, r2, #2
     d1e:	60f9      	str	r1, [r7, #12]
     d20:	8812      	ldrh	r2, [r2, #0]
     d22:	601a      	str	r2, [r3, #0]
     d24:	693b      	ldr	r3, [r7, #16]
     d26:	1d1a      	adds	r2, r3, #4
     d28:	613a      	str	r2, [r7, #16]
     d2a:	68fa      	ldr	r2, [r7, #12]
     d2c:	1c91      	adds	r1, r2, #2
     d2e:	60f9      	str	r1, [r7, #12]
     d30:	8812      	ldrh	r2, [r2, #0]
     d32:	601a      	str	r2, [r3, #0]
     d34:	693b      	ldr	r3, [r7, #16]
     d36:	1d1a      	adds	r2, r3, #4
     d38:	613a      	str	r2, [r7, #16]
     d3a:	68fa      	ldr	r2, [r7, #12]
     d3c:	1c91      	adds	r1, r2, #2
     d3e:	60f9      	str	r1, [r7, #12]
     d40:	8812      	ldrh	r2, [r2, #0]
     d42:	601a      	str	r2, [r3, #0]
     d44:	693b      	ldr	r3, [r7, #16]
     d46:	1d1a      	adds	r2, r3, #4
     d48:	613a      	str	r2, [r7, #16]
     d4a:	68fa      	ldr	r2, [r7, #12]
     d4c:	1c91      	adds	r1, r2, #2
     d4e:	60f9      	str	r1, [r7, #12]
     d50:	8812      	ldrh	r2, [r2, #0]
     d52:	601a      	str	r2, [r3, #0]
     d54:	693b      	ldr	r3, [r7, #16]
     d56:	1d1a      	adds	r2, r3, #4
     d58:	613a      	str	r2, [r7, #16]
     d5a:	68fa      	ldr	r2, [r7, #12]
     d5c:	1c91      	adds	r1, r2, #2
     d5e:	60f9      	str	r1, [r7, #12]
     d60:	8812      	ldrh	r2, [r2, #0]
     d62:	601a      	str	r2, [r3, #0]
     d64:	693b      	ldr	r3, [r7, #16]
     d66:	1d1a      	adds	r2, r3, #4
     d68:	613a      	str	r2, [r7, #16]
     d6a:	68fa      	ldr	r2, [r7, #12]
     d6c:	1c91      	adds	r1, r2, #2
     d6e:	60f9      	str	r1, [r7, #12]
     d70:	8812      	ldrh	r2, [r2, #0]
     d72:	601a      	str	r2, [r3, #0]
     d74:	693b      	ldr	r3, [r7, #16]
     d76:	1d1a      	adds	r2, r3, #4
     d78:	613a      	str	r2, [r7, #16]
     d7a:	68fa      	ldr	r2, [r7, #12]
     d7c:	1c91      	adds	r1, r2, #2
     d7e:	60f9      	str	r1, [r7, #12]
     d80:	8812      	ldrh	r2, [r2, #0]
     d82:	601a      	str	r2, [r3, #0]
     d84:	693b      	ldr	r3, [r7, #16]
     d86:	1d1a      	adds	r2, r3, #4
     d88:	613a      	str	r2, [r7, #16]
     d8a:	68fa      	ldr	r2, [r7, #12]
     d8c:	1c91      	adds	r1, r2, #2
     d8e:	60f9      	str	r1, [r7, #12]
     d90:	8812      	ldrh	r2, [r2, #0]
     d92:	601a      	str	r2, [r3, #0]
     d94:	693b      	ldr	r3, [r7, #16]
     d96:	1d1a      	adds	r2, r3, #4
     d98:	613a      	str	r2, [r7, #16]
     d9a:	68fa      	ldr	r2, [r7, #12]
     d9c:	1c91      	adds	r1, r2, #2
     d9e:	60f9      	str	r1, [r7, #12]
     da0:	8812      	ldrh	r2, [r2, #0]
     da2:	601a      	str	r2, [r3, #0]
     da4:	693b      	ldr	r3, [r7, #16]
     da6:	1d1a      	adds	r2, r3, #4
     da8:	613a      	str	r2, [r7, #16]
     daa:	68fa      	ldr	r2, [r7, #12]
     dac:	1c91      	adds	r1, r2, #2
     dae:	60f9      	str	r1, [r7, #12]
     db0:	8812      	ldrh	r2, [r2, #0]
     db2:	601a      	str	r2, [r3, #0]
     db4:	693b      	ldr	r3, [r7, #16]
     db6:	1d1a      	adds	r2, r3, #4
     db8:	613a      	str	r2, [r7, #16]
     dba:	68fa      	ldr	r2, [r7, #12]
     dbc:	1c91      	adds	r1, r2, #2
     dbe:	60f9      	str	r1, [r7, #12]
     dc0:	8812      	ldrh	r2, [r2, #0]
     dc2:	601a      	str	r2, [r3, #0]
     dc4:	693b      	ldr	r3, [r7, #16]
     dc6:	1d1a      	adds	r2, r3, #4
     dc8:	613a      	str	r2, [r7, #16]
     dca:	68fa      	ldr	r2, [r7, #12]
     dcc:	1c91      	adds	r1, r2, #2
     dce:	60f9      	str	r1, [r7, #12]
     dd0:	8812      	ldrh	r2, [r2, #0]
     dd2:	601a      	str	r2, [r3, #0]
     dd4:	693b      	ldr	r3, [r7, #16]
     dd6:	1d1a      	adds	r2, r3, #4
     dd8:	613a      	str	r2, [r7, #16]
     dda:	68fa      	ldr	r2, [r7, #12]
     ddc:	1c91      	adds	r1, r2, #2
     dde:	60f9      	str	r1, [r7, #12]
     de0:	8812      	ldrh	r2, [r2, #0]
     de2:	601a      	str	r2, [r3, #0]
     de4:	693b      	ldr	r3, [r7, #16]
     de6:	1d1a      	adds	r2, r3, #4
     de8:	613a      	str	r2, [r7, #16]
     dea:	68fa      	ldr	r2, [r7, #12]
     dec:	1c91      	adds	r1, r2, #2
     dee:	60f9      	str	r1, [r7, #12]
     df0:	8812      	ldrh	r2, [r2, #0]
     df2:	601a      	str	r2, [r3, #0]
     df4:	693b      	ldr	r3, [r7, #16]
     df6:	1d1a      	adds	r2, r3, #4
     df8:	613a      	str	r2, [r7, #16]
     dfa:	68fa      	ldr	r2, [r7, #12]
     dfc:	1c91      	adds	r1, r2, #2
     dfe:	60f9      	str	r1, [r7, #12]
     e00:	8812      	ldrh	r2, [r2, #0]
     e02:	601a      	str	r2, [r3, #0]
     e04:	693b      	ldr	r3, [r7, #16]
     e06:	1d1a      	adds	r2, r3, #4
     e08:	613a      	str	r2, [r7, #16]
     e0a:	68fa      	ldr	r2, [r7, #12]
     e0c:	1c91      	adds	r1, r2, #2
     e0e:	60f9      	str	r1, [r7, #12]
     e10:	8812      	ldrh	r2, [r2, #0]
     e12:	601a      	str	r2, [r3, #0]
     e14:	693b      	ldr	r3, [r7, #16]
     e16:	1d1a      	adds	r2, r3, #4
     e18:	613a      	str	r2, [r7, #16]
     e1a:	68fa      	ldr	r2, [r7, #12]
     e1c:	1c91      	adds	r1, r2, #2
     e1e:	60f9      	str	r1, [r7, #12]
     e20:	8812      	ldrh	r2, [r2, #0]
     e22:	601a      	str	r2, [r3, #0]
     e24:	693b      	ldr	r3, [r7, #16]
     e26:	1d1a      	adds	r2, r3, #4
     e28:	613a      	str	r2, [r7, #16]
     e2a:	68fa      	ldr	r2, [r7, #12]
     e2c:	1c91      	adds	r1, r2, #2
     e2e:	60f9      	str	r1, [r7, #12]
     e30:	8812      	ldrh	r2, [r2, #0]
     e32:	601a      	str	r2, [r3, #0]
     e34:	693b      	ldr	r3, [r7, #16]
     e36:	1d1a      	adds	r2, r3, #4
     e38:	613a      	str	r2, [r7, #16]
     e3a:	68fa      	ldr	r2, [r7, #12]
     e3c:	1c91      	adds	r1, r2, #2
     e3e:	60f9      	str	r1, [r7, #12]
     e40:	8812      	ldrh	r2, [r2, #0]
     e42:	601a      	str	r2, [r3, #0]
     e44:	693b      	ldr	r3, [r7, #16]
     e46:	1d1a      	adds	r2, r3, #4
     e48:	613a      	str	r2, [r7, #16]
     e4a:	68fa      	ldr	r2, [r7, #12]
     e4c:	1c91      	adds	r1, r2, #2
     e4e:	60f9      	str	r1, [r7, #12]
     e50:	8812      	ldrh	r2, [r2, #0]
     e52:	601a      	str	r2, [r3, #0]
     e54:	693b      	ldr	r3, [r7, #16]
     e56:	1d1a      	adds	r2, r3, #4
     e58:	613a      	str	r2, [r7, #16]
     e5a:	68fa      	ldr	r2, [r7, #12]
     e5c:	1c91      	adds	r1, r2, #2
     e5e:	60f9      	str	r1, [r7, #12]
     e60:	8812      	ldrh	r2, [r2, #0]
     e62:	601a      	str	r2, [r3, #0]
     e64:	4a32      	ldr	r2, [pc, #200]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     e66:	4b33      	ldr	r3, [pc, #204]	; (f34 <MIL_STD_1553B1_Handler+0x308>)
     e68:	58d3      	ldr	r3, [r2, r3]
     e6a:	2204      	movs	r2, #4
     e6c:	4013      	ands	r3, r2
     e6e:	d056      	beq.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     e70:	4b35      	ldr	r3, [pc, #212]	; (f48 <MIL_STD_1553B1_Handler+0x31c>)
     e72:	681b      	ldr	r3, [r3, #0]
     e74:	1c5a      	adds	r2, r3, #1
     e76:	4b34      	ldr	r3, [pc, #208]	; (f48 <MIL_STD_1553B1_Handler+0x31c>)
     e78:	601a      	str	r2, [r3, #0]
     e7a:	4a2d      	ldr	r2, [pc, #180]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     e7c:	4b2e      	ldr	r3, [pc, #184]	; (f38 <MIL_STD_1553B1_Handler+0x30c>)
     e7e:	58d3      	ldr	r3, [r2, r3]
     e80:	4a2e      	ldr	r2, [pc, #184]	; (f3c <MIL_STD_1553B1_Handler+0x310>)
     e82:	4293      	cmp	r3, r2
     e84:	d04b      	beq.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     e86:	4a2a      	ldr	r2, [pc, #168]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     e88:	4b2b      	ldr	r3, [pc, #172]	; (f38 <MIL_STD_1553B1_Handler+0x30c>)
     e8a:	58d3      	ldr	r3, [r2, r3]
     e8c:	2b01      	cmp	r3, #1
     e8e:	d146      	bne.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     e90:	4a27      	ldr	r2, [pc, #156]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     e92:	4b2e      	ldr	r3, [pc, #184]	; (f4c <MIL_STD_1553B1_Handler+0x320>)
     e94:	58d3      	ldr	r3, [r2, r3]
     e96:	221f      	movs	r2, #31
     e98:	4013      	ands	r3, r2
     e9a:	60bb      	str	r3, [r7, #8]
     e9c:	1dbb      	adds	r3, r7, #6
     e9e:	2200      	movs	r2, #0
     ea0:	801a      	strh	r2, [r3, #0]
     ea2:	4b2b      	ldr	r3, [pc, #172]	; (f50 <MIL_STD_1553B1_Handler+0x324>)
     ea4:	603b      	str	r3, [r7, #0]
     ea6:	4b2b      	ldr	r3, [pc, #172]	; (f54 <MIL_STD_1553B1_Handler+0x328>)
     ea8:	681b      	ldr	r3, [r3, #0]
     eaa:	2b00      	cmp	r3, #0
     eac:	d137      	bne.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     eae:	68bb      	ldr	r3, [r7, #8]
     eb0:	2b20      	cmp	r3, #32
     eb2:	d834      	bhi.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     eb4:	2300      	movs	r3, #0
     eb6:	617b      	str	r3, [r7, #20]
     eb8:	e00c      	b.n	ed4 <MIL_STD_1553B1_Handler+0x2a8>
     eba:	697b      	ldr	r3, [r7, #20]
     ebc:	005b      	lsls	r3, r3, #1
     ebe:	683a      	ldr	r2, [r7, #0]
     ec0:	18d2      	adds	r2, r2, r3
     ec2:	693b      	ldr	r3, [r7, #16]
     ec4:	1d19      	adds	r1, r3, #4
     ec6:	6139      	str	r1, [r7, #16]
     ec8:	681b      	ldr	r3, [r3, #0]
     eca:	b29b      	uxth	r3, r3
     ecc:	8013      	strh	r3, [r2, #0]
     ece:	697b      	ldr	r3, [r7, #20]
     ed0:	3301      	adds	r3, #1
     ed2:	617b      	str	r3, [r7, #20]
     ed4:	697a      	ldr	r2, [r7, #20]
     ed6:	68bb      	ldr	r3, [r7, #8]
     ed8:	429a      	cmp	r2, r3
     eda:	d3ee      	bcc.n	eba <MIL_STD_1553B1_Handler+0x28e>
     edc:	68bb      	ldr	r3, [r7, #8]
     ede:	1e5a      	subs	r2, r3, #1
     ee0:	1dbc      	adds	r4, r7, #6
     ee2:	683b      	ldr	r3, [r7, #0]
     ee4:	0011      	movs	r1, r2
     ee6:	0018      	movs	r0, r3
     ee8:	f7ff f906 	bl	f8 <get_checksum>
     eec:	0003      	movs	r3, r0
     eee:	8023      	strh	r3, [r4, #0]
     ef0:	4b17      	ldr	r3, [pc, #92]	; (f50 <MIL_STD_1553B1_Handler+0x324>)
     ef2:	891b      	ldrh	r3, [r3, #8]
     ef4:	1dba      	adds	r2, r7, #6
     ef6:	8812      	ldrh	r2, [r2, #0]
     ef8:	1ad3      	subs	r3, r2, r3
     efa:	425a      	negs	r2, r3
     efc:	4153      	adcs	r3, r2
     efe:	b2db      	uxtb	r3, r3
     f00:	001a      	movs	r2, r3
     f02:	4b14      	ldr	r3, [pc, #80]	; (f54 <MIL_STD_1553B1_Handler+0x328>)
     f04:	601a      	str	r2, [r3, #0]
     f06:	4b12      	ldr	r3, [pc, #72]	; (f50 <MIL_STD_1553B1_Handler+0x324>)
     f08:	891b      	ldrh	r3, [r3, #8]
     f0a:	1dba      	adds	r2, r7, #6
     f0c:	8812      	ldrh	r2, [r2, #0]
     f0e:	429a      	cmp	r2, r3
     f10:	d005      	beq.n	f1e <MIL_STD_1553B1_Handler+0x2f2>
     f12:	4b11      	ldr	r3, [pc, #68]	; (f58 <MIL_STD_1553B1_Handler+0x32c>)
     f14:	4a10      	ldr	r2, [pc, #64]	; (f58 <MIL_STD_1553B1_Handler+0x32c>)
     f16:	6812      	ldr	r2, [r2, #0]
     f18:	2101      	movs	r1, #1
     f1a:	404a      	eors	r2, r1
     f1c:	601a      	str	r2, [r3, #0]
     f1e:	4a04      	ldr	r2, [pc, #16]	; (f30 <MIL_STD_1553B1_Handler+0x304>)
     f20:	4b04      	ldr	r3, [pc, #16]	; (f34 <MIL_STD_1553B1_Handler+0x308>)
     f22:	58d3      	ldr	r3, [r2, r3]
     f24:	46c0      	nop			; (mov r8, r8)
     f26:	46bd      	mov	sp, r7
     f28:	b007      	add	sp, #28
     f2a:	bd90      	pop	{r4, r7, pc}
     f2c:	40048080 	.word	0x40048080
     f30:	40048000 	.word	0x40048000
     f34:	00001004 	.word	0x00001004
     f38:	00001024 	.word	0x00001024
     f3c:	00000402 	.word	0x00000402
     f40:	200000d8 	.word	0x200000d8
     f44:	200000d0 	.word	0x200000d0
     f48:	200000e0 	.word	0x200000e0
     f4c:	0000100c 	.word	0x0000100c
     f50:	200000c4 	.word	0x200000c4
     f54:	200000f4 	.word	0x200000f4
     f58:	400c8000 	.word	0x400c8000

00000f5c <handler_reset>:
     f5c:	b580      	push	{r7, lr}
     f5e:	b082      	sub	sp, #8
     f60:	af00      	add	r7, sp, #0
     f62:	4b11      	ldr	r3, [pc, #68]	; (fa8 <handler_reset+0x4c>)
     f64:	607b      	str	r3, [r7, #4]
     f66:	4b11      	ldr	r3, [pc, #68]	; (fac <handler_reset+0x50>)
     f68:	603b      	str	r3, [r7, #0]
     f6a:	e007      	b.n	f7c <handler_reset+0x20>
     f6c:	683b      	ldr	r3, [r7, #0]
     f6e:	1d1a      	adds	r2, r3, #4
     f70:	603a      	str	r2, [r7, #0]
     f72:	687a      	ldr	r2, [r7, #4]
     f74:	1d11      	adds	r1, r2, #4
     f76:	6079      	str	r1, [r7, #4]
     f78:	6812      	ldr	r2, [r2, #0]
     f7a:	601a      	str	r2, [r3, #0]
     f7c:	683a      	ldr	r2, [r7, #0]
     f7e:	4b0c      	ldr	r3, [pc, #48]	; (fb0 <handler_reset+0x54>)
     f80:	429a      	cmp	r2, r3
     f82:	d3f3      	bcc.n	f6c <handler_reset+0x10>
     f84:	4b0b      	ldr	r3, [pc, #44]	; (fb4 <handler_reset+0x58>)
     f86:	603b      	str	r3, [r7, #0]
     f88:	e004      	b.n	f94 <handler_reset+0x38>
     f8a:	683b      	ldr	r3, [r7, #0]
     f8c:	1d1a      	adds	r2, r3, #4
     f8e:	603a      	str	r2, [r7, #0]
     f90:	2200      	movs	r2, #0
     f92:	601a      	str	r2, [r3, #0]
     f94:	683a      	ldr	r2, [r7, #0]
     f96:	4b08      	ldr	r3, [pc, #32]	; (fb8 <handler_reset+0x5c>)
     f98:	429a      	cmp	r2, r3
     f9a:	d3f6      	bcc.n	f8a <handler_reset+0x2e>
     f9c:	f7ff fb4c 	bl	638 <main>
     fa0:	46c0      	nop			; (mov r8, r8)
     fa2:	46bd      	mov	sp, r7
     fa4:	b002      	add	sp, #8
     fa6:	bd80      	pop	{r7, pc}
     fa8:	00001ee8 	.word	0x00001ee8
     fac:	20000000 	.word	0x20000000
     fb0:	20000044 	.word	0x20000044
     fb4:	20000044 	.word	0x20000044
     fb8:	20000568 	.word	0x20000568

00000fbc <default_handler>:
     fbc:	b580      	push	{r7, lr}
     fbe:	af00      	add	r7, sp, #0
     fc0:	e7fe      	b.n	fc0 <default_handler+0x4>
     fc2:	46c0      	nop			; (mov r8, r8)

00000fc4 <NVIC_EnableIRQ>:
     fc4:	b580      	push	{r7, lr}
     fc6:	b082      	sub	sp, #8
     fc8:	af00      	add	r7, sp, #0
     fca:	0002      	movs	r2, r0
     fcc:	1dfb      	adds	r3, r7, #7
     fce:	701a      	strb	r2, [r3, #0]
     fd0:	4909      	ldr	r1, [pc, #36]	; (ff8 <NVIC_EnableIRQ+0x34>)
     fd2:	1dfb      	adds	r3, r7, #7
     fd4:	781b      	ldrb	r3, [r3, #0]
     fd6:	b25b      	sxtb	r3, r3
     fd8:	095b      	lsrs	r3, r3, #5
     fda:	1dfa      	adds	r2, r7, #7
     fdc:	7812      	ldrb	r2, [r2, #0]
     fde:	0010      	movs	r0, r2
     fe0:	221f      	movs	r2, #31
     fe2:	4002      	ands	r2, r0
     fe4:	2001      	movs	r0, #1
     fe6:	4090      	lsls	r0, r2
     fe8:	0002      	movs	r2, r0
     fea:	009b      	lsls	r3, r3, #2
     fec:	505a      	str	r2, [r3, r1]
     fee:	46c0      	nop			; (mov r8, r8)
     ff0:	46bd      	mov	sp, r7
     ff2:	b002      	add	sp, #8
     ff4:	bd80      	pop	{r7, pc}
     ff6:	46c0      	nop			; (mov r8, r8)
     ff8:	e000e100 	.word	0xe000e100

00000ffc <NVIC_DisableIRQ>:
     ffc:	b580      	push	{r7, lr}
     ffe:	b082      	sub	sp, #8
    1000:	af00      	add	r7, sp, #0
    1002:	0002      	movs	r2, r0
    1004:	1dfb      	adds	r3, r7, #7
    1006:	701a      	strb	r2, [r3, #0]
    1008:	4909      	ldr	r1, [pc, #36]	; (1030 <NVIC_DisableIRQ+0x34>)
    100a:	1dfb      	adds	r3, r7, #7
    100c:	781b      	ldrb	r3, [r3, #0]
    100e:	b25b      	sxtb	r3, r3
    1010:	095b      	lsrs	r3, r3, #5
    1012:	1dfa      	adds	r2, r7, #7
    1014:	7812      	ldrb	r2, [r2, #0]
    1016:	0010      	movs	r0, r2
    1018:	221f      	movs	r2, #31
    101a:	4002      	ands	r2, r0
    101c:	2001      	movs	r0, #1
    101e:	4090      	lsls	r0, r2
    1020:	0002      	movs	r2, r0
    1022:	3320      	adds	r3, #32
    1024:	009b      	lsls	r3, r3, #2
    1026:	505a      	str	r2, [r3, r1]
    1028:	46c0      	nop			; (mov r8, r8)
    102a:	46bd      	mov	sp, r7
    102c:	b002      	add	sp, #8
    102e:	bd80      	pop	{r7, pc}
    1030:	e000e100 	.word	0xe000e100

00001034 <uart_init>:
    1034:	b580      	push	{r7, lr}
    1036:	af00      	add	r7, sp, #0
    1038:	4b1f      	ldr	r3, [pc, #124]	; (10b8 <uart_init+0x84>)
    103a:	4a1f      	ldr	r2, [pc, #124]	; (10b8 <uart_init+0x84>)
    103c:	69d2      	ldr	r2, [r2, #28]
    103e:	2140      	movs	r1, #64	; 0x40
    1040:	430a      	orrs	r2, r1
    1042:	61da      	str	r2, [r3, #28]
    1044:	4b1c      	ldr	r3, [pc, #112]	; (10b8 <uart_init+0x84>)
    1046:	4a1c      	ldr	r2, [pc, #112]	; (10b8 <uart_init+0x84>)
    1048:	6a92      	ldr	r2, [r2, #40]	; 0x28
    104a:	2180      	movs	r1, #128	; 0x80
    104c:	0449      	lsls	r1, r1, #17
    104e:	430a      	orrs	r2, r1
    1050:	629a      	str	r2, [r3, #40]	; 0x28
    1052:	4b1a      	ldr	r3, [pc, #104]	; (10bc <uart_init+0x88>)
    1054:	2204      	movs	r2, #4
    1056:	625a      	str	r2, [r3, #36]	; 0x24
    1058:	4b18      	ldr	r3, [pc, #96]	; (10bc <uart_init+0x88>)
    105a:	2233      	movs	r2, #51	; 0x33
    105c:	629a      	str	r2, [r3, #40]	; 0x28
    105e:	4b17      	ldr	r3, [pc, #92]	; (10bc <uart_init+0x88>)
    1060:	4a16      	ldr	r2, [pc, #88]	; (10bc <uart_init+0x88>)
    1062:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1064:	213f      	movs	r1, #63	; 0x3f
    1066:	438a      	bics	r2, r1
    1068:	635a      	str	r2, [r3, #52]	; 0x34
    106a:	4b14      	ldr	r3, [pc, #80]	; (10bc <uart_init+0x88>)
    106c:	4a13      	ldr	r2, [pc, #76]	; (10bc <uart_init+0x88>)
    106e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1070:	2112      	movs	r1, #18
    1072:	430a      	orrs	r2, r1
    1074:	635a      	str	r2, [r3, #52]	; 0x34
    1076:	4b11      	ldr	r3, [pc, #68]	; (10bc <uart_init+0x88>)
    1078:	4a10      	ldr	r2, [pc, #64]	; (10bc <uart_init+0x88>)
    107a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    107c:	2110      	movs	r1, #16
    107e:	430a      	orrs	r2, r1
    1080:	62da      	str	r2, [r3, #44]	; 0x2c
    1082:	4b0e      	ldr	r3, [pc, #56]	; (10bc <uart_init+0x88>)
    1084:	4a0d      	ldr	r2, [pc, #52]	; (10bc <uart_init+0x88>)
    1086:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1088:	2160      	movs	r1, #96	; 0x60
    108a:	430a      	orrs	r2, r1
    108c:	62da      	str	r2, [r3, #44]	; 0x2c
    108e:	4b0b      	ldr	r3, [pc, #44]	; (10bc <uart_init+0x88>)
    1090:	4a0a      	ldr	r2, [pc, #40]	; (10bc <uart_init+0x88>)
    1092:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1094:	490a      	ldr	r1, [pc, #40]	; (10c0 <uart_init+0x8c>)
    1096:	430a      	orrs	r2, r1
    1098:	631a      	str	r2, [r3, #48]	; 0x30
    109a:	4b08      	ldr	r3, [pc, #32]	; (10bc <uart_init+0x88>)
    109c:	4a07      	ldr	r2, [pc, #28]	; (10bc <uart_init+0x88>)
    109e:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10a0:	2110      	movs	r1, #16
    10a2:	430a      	orrs	r2, r1
    10a4:	639a      	str	r2, [r3, #56]	; 0x38
    10a6:	4b05      	ldr	r3, [pc, #20]	; (10bc <uart_init+0x88>)
    10a8:	4a04      	ldr	r2, [pc, #16]	; (10bc <uart_init+0x88>)
    10aa:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10ac:	2140      	movs	r1, #64	; 0x40
    10ae:	430a      	orrs	r2, r1
    10b0:	639a      	str	r2, [r3, #56]	; 0x38
    10b2:	46c0      	nop			; (mov r8, r8)
    10b4:	46bd      	mov	sp, r7
    10b6:	bd80      	pop	{r7, pc}
    10b8:	40020000 	.word	0x40020000
    10bc:	40030000 	.word	0x40030000
    10c0:	00000301 	.word	0x00000301

000010c4 <uart_read>:
    10c4:	b580      	push	{r7, lr}
    10c6:	b084      	sub	sp, #16
    10c8:	af00      	add	r7, sp, #0
    10ca:	6078      	str	r0, [r7, #4]
    10cc:	6039      	str	r1, [r7, #0]
    10ce:	4b18      	ldr	r3, [pc, #96]	; (1130 <uart_read+0x6c>)
    10d0:	681a      	ldr	r2, [r3, #0]
    10d2:	4b18      	ldr	r3, [pc, #96]	; (1134 <uart_read+0x70>)
    10d4:	681b      	ldr	r3, [r3, #0]
    10d6:	429a      	cmp	r2, r3
    10d8:	d101      	bne.n	10de <uart_read+0x1a>
    10da:	2300      	movs	r3, #0
    10dc:	e023      	b.n	1126 <uart_read+0x62>
    10de:	2300      	movs	r3, #0
    10e0:	60fb      	str	r3, [r7, #12]
    10e2:	e01b      	b.n	111c <uart_read+0x58>
    10e4:	68fb      	ldr	r3, [r7, #12]
    10e6:	687a      	ldr	r2, [r7, #4]
    10e8:	18d2      	adds	r2, r2, r3
    10ea:	4b11      	ldr	r3, [pc, #68]	; (1130 <uart_read+0x6c>)
    10ec:	681b      	ldr	r3, [r3, #0]
    10ee:	4912      	ldr	r1, [pc, #72]	; (1138 <uart_read+0x74>)
    10f0:	5ccb      	ldrb	r3, [r1, r3]
    10f2:	7013      	strb	r3, [r2, #0]
    10f4:	4b0e      	ldr	r3, [pc, #56]	; (1130 <uart_read+0x6c>)
    10f6:	681b      	ldr	r3, [r3, #0]
    10f8:	3301      	adds	r3, #1
    10fa:	05db      	lsls	r3, r3, #23
    10fc:	0dda      	lsrs	r2, r3, #23
    10fe:	4b0c      	ldr	r3, [pc, #48]	; (1130 <uart_read+0x6c>)
    1100:	601a      	str	r2, [r3, #0]
    1102:	4b0b      	ldr	r3, [pc, #44]	; (1130 <uart_read+0x6c>)
    1104:	681a      	ldr	r2, [r3, #0]
    1106:	4b0b      	ldr	r3, [pc, #44]	; (1134 <uart_read+0x70>)
    1108:	681b      	ldr	r3, [r3, #0]
    110a:	429a      	cmp	r2, r3
    110c:	d103      	bne.n	1116 <uart_read+0x52>
    110e:	68fb      	ldr	r3, [r7, #12]
    1110:	3301      	adds	r3, #1
    1112:	60fb      	str	r3, [r7, #12]
    1114:	e006      	b.n	1124 <uart_read+0x60>
    1116:	68fb      	ldr	r3, [r7, #12]
    1118:	3301      	adds	r3, #1
    111a:	60fb      	str	r3, [r7, #12]
    111c:	68fa      	ldr	r2, [r7, #12]
    111e:	683b      	ldr	r3, [r7, #0]
    1120:	429a      	cmp	r2, r3
    1122:	dbdf      	blt.n	10e4 <uart_read+0x20>
    1124:	68fb      	ldr	r3, [r7, #12]
    1126:	0018      	movs	r0, r3
    1128:	46bd      	mov	sp, r7
    112a:	b004      	add	sp, #16
    112c:	bd80      	pop	{r7, pc}
    112e:	46c0      	nop			; (mov r8, r8)
    1130:	20000558 	.word	0x20000558
    1134:	20000554 	.word	0x20000554
    1138:	20000354 	.word	0x20000354

0000113c <uart_send>:
    113c:	b580      	push	{r7, lr}
    113e:	b084      	sub	sp, #16
    1140:	af00      	add	r7, sp, #0
    1142:	6078      	str	r0, [r7, #4]
    1144:	6039      	str	r1, [r7, #0]
    1146:	2006      	movs	r0, #6
    1148:	f7ff ff58 	bl	ffc <NVIC_DisableIRQ>
    114c:	2300      	movs	r3, #0
    114e:	60fb      	str	r3, [r7, #12]
    1150:	e01b      	b.n	118a <uart_send+0x4e>
    1152:	4b20      	ldr	r3, [pc, #128]	; (11d4 <uart_send+0x98>)
    1154:	681b      	ldr	r3, [r3, #0]
    1156:	68fa      	ldr	r2, [r7, #12]
    1158:	6879      	ldr	r1, [r7, #4]
    115a:	188a      	adds	r2, r1, r2
    115c:	7811      	ldrb	r1, [r2, #0]
    115e:	4a1e      	ldr	r2, [pc, #120]	; (11d8 <uart_send+0x9c>)
    1160:	54d1      	strb	r1, [r2, r3]
    1162:	4b1c      	ldr	r3, [pc, #112]	; (11d4 <uart_send+0x98>)
    1164:	681b      	ldr	r3, [r3, #0]
    1166:	3301      	adds	r3, #1
    1168:	05db      	lsls	r3, r3, #23
    116a:	0dda      	lsrs	r2, r3, #23
    116c:	4b19      	ldr	r3, [pc, #100]	; (11d4 <uart_send+0x98>)
    116e:	601a      	str	r2, [r3, #0]
    1170:	4b18      	ldr	r3, [pc, #96]	; (11d4 <uart_send+0x98>)
    1172:	681a      	ldr	r2, [r3, #0]
    1174:	4b19      	ldr	r3, [pc, #100]	; (11dc <uart_send+0xa0>)
    1176:	681b      	ldr	r3, [r3, #0]
    1178:	429a      	cmp	r2, r3
    117a:	d103      	bne.n	1184 <uart_send+0x48>
    117c:	68fb      	ldr	r3, [r7, #12]
    117e:	3301      	adds	r3, #1
    1180:	60fb      	str	r3, [r7, #12]
    1182:	e006      	b.n	1192 <uart_send+0x56>
    1184:	68fb      	ldr	r3, [r7, #12]
    1186:	3301      	adds	r3, #1
    1188:	60fb      	str	r3, [r7, #12]
    118a:	68fa      	ldr	r2, [r7, #12]
    118c:	683b      	ldr	r3, [r7, #0]
    118e:	429a      	cmp	r2, r3
    1190:	dbdf      	blt.n	1152 <uart_send+0x16>
    1192:	4b13      	ldr	r3, [pc, #76]	; (11e0 <uart_send+0xa4>)
    1194:	699b      	ldr	r3, [r3, #24]
    1196:	2208      	movs	r2, #8
    1198:	4013      	ands	r3, r2
    119a:	d10c      	bne.n	11b6 <uart_send+0x7a>
    119c:	4a10      	ldr	r2, [pc, #64]	; (11e0 <uart_send+0xa4>)
    119e:	4b0f      	ldr	r3, [pc, #60]	; (11dc <uart_send+0xa0>)
    11a0:	681b      	ldr	r3, [r3, #0]
    11a2:	490d      	ldr	r1, [pc, #52]	; (11d8 <uart_send+0x9c>)
    11a4:	5ccb      	ldrb	r3, [r1, r3]
    11a6:	6013      	str	r3, [r2, #0]
    11a8:	4b0c      	ldr	r3, [pc, #48]	; (11dc <uart_send+0xa0>)
    11aa:	681b      	ldr	r3, [r3, #0]
    11ac:	3301      	adds	r3, #1
    11ae:	05db      	lsls	r3, r3, #23
    11b0:	0dda      	lsrs	r2, r3, #23
    11b2:	4b0a      	ldr	r3, [pc, #40]	; (11dc <uart_send+0xa0>)
    11b4:	601a      	str	r2, [r3, #0]
    11b6:	4b0a      	ldr	r3, [pc, #40]	; (11e0 <uart_send+0xa4>)
    11b8:	4a09      	ldr	r2, [pc, #36]	; (11e0 <uart_send+0xa4>)
    11ba:	6b92      	ldr	r2, [r2, #56]	; 0x38
    11bc:	2120      	movs	r1, #32
    11be:	430a      	orrs	r2, r1
    11c0:	639a      	str	r2, [r3, #56]	; 0x38
    11c2:	2006      	movs	r0, #6
    11c4:	f7ff fefe 	bl	fc4 <NVIC_EnableIRQ>
    11c8:	68fb      	ldr	r3, [r7, #12]
    11ca:	0018      	movs	r0, r3
    11cc:	46bd      	mov	sp, r7
    11ce:	b004      	add	sp, #16
    11d0:	bd80      	pop	{r7, pc}
    11d2:	46c0      	nop			; (mov r8, r8)
    11d4:	20000350 	.word	0x20000350
    11d8:	2000014c 	.word	0x2000014c
    11dc:	2000034c 	.word	0x2000034c
    11e0:	40030000 	.word	0x40030000

000011e4 <uart_putch>:
    11e4:	b580      	push	{r7, lr}
    11e6:	b082      	sub	sp, #8
    11e8:	af00      	add	r7, sp, #0
    11ea:	0002      	movs	r2, r0
    11ec:	1dfb      	adds	r3, r7, #7
    11ee:	701a      	strb	r2, [r3, #0]
    11f0:	46c0      	nop			; (mov r8, r8)
    11f2:	4b06      	ldr	r3, [pc, #24]	; (120c <uart_putch+0x28>)
    11f4:	699b      	ldr	r3, [r3, #24]
    11f6:	2220      	movs	r2, #32
    11f8:	4013      	ands	r3, r2
    11fa:	d1fa      	bne.n	11f2 <uart_putch+0xe>
    11fc:	4b03      	ldr	r3, [pc, #12]	; (120c <uart_putch+0x28>)
    11fe:	1dfa      	adds	r2, r7, #7
    1200:	7812      	ldrb	r2, [r2, #0]
    1202:	601a      	str	r2, [r3, #0]
    1204:	46c0      	nop			; (mov r8, r8)
    1206:	46bd      	mov	sp, r7
    1208:	b002      	add	sp, #8
    120a:	bd80      	pop	{r7, pc}
    120c:	40030000 	.word	0x40030000

00001210 <UART1_Handler>:
    1210:	b580      	push	{r7, lr}
    1212:	af00      	add	r7, sp, #0
    1214:	4b1a      	ldr	r3, [pc, #104]	; (1280 <UART1_Handler+0x70>)
    1216:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1218:	2220      	movs	r2, #32
    121a:	4013      	ands	r3, r2
    121c:	d019      	beq.n	1252 <UART1_Handler+0x42>
    121e:	4b19      	ldr	r3, [pc, #100]	; (1284 <UART1_Handler+0x74>)
    1220:	681a      	ldr	r2, [r3, #0]
    1222:	4b19      	ldr	r3, [pc, #100]	; (1288 <UART1_Handler+0x78>)
    1224:	681b      	ldr	r3, [r3, #0]
    1226:	429a      	cmp	r2, r3
    1228:	d106      	bne.n	1238 <UART1_Handler+0x28>
    122a:	4b15      	ldr	r3, [pc, #84]	; (1280 <UART1_Handler+0x70>)
    122c:	4a14      	ldr	r2, [pc, #80]	; (1280 <UART1_Handler+0x70>)
    122e:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1230:	2120      	movs	r1, #32
    1232:	438a      	bics	r2, r1
    1234:	639a      	str	r2, [r3, #56]	; 0x38
    1236:	e00c      	b.n	1252 <UART1_Handler+0x42>
    1238:	4a11      	ldr	r2, [pc, #68]	; (1280 <UART1_Handler+0x70>)
    123a:	4b12      	ldr	r3, [pc, #72]	; (1284 <UART1_Handler+0x74>)
    123c:	681b      	ldr	r3, [r3, #0]
    123e:	4913      	ldr	r1, [pc, #76]	; (128c <UART1_Handler+0x7c>)
    1240:	5ccb      	ldrb	r3, [r1, r3]
    1242:	6013      	str	r3, [r2, #0]
    1244:	4b0f      	ldr	r3, [pc, #60]	; (1284 <UART1_Handler+0x74>)
    1246:	681b      	ldr	r3, [r3, #0]
    1248:	3301      	adds	r3, #1
    124a:	05db      	lsls	r3, r3, #23
    124c:	0dda      	lsrs	r2, r3, #23
    124e:	4b0d      	ldr	r3, [pc, #52]	; (1284 <UART1_Handler+0x74>)
    1250:	601a      	str	r2, [r3, #0]
    1252:	4b0b      	ldr	r3, [pc, #44]	; (1280 <UART1_Handler+0x70>)
    1254:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1256:	2210      	movs	r2, #16
    1258:	4013      	ands	r3, r2
    125a:	d00d      	beq.n	1278 <UART1_Handler+0x68>
    125c:	4b0c      	ldr	r3, [pc, #48]	; (1290 <UART1_Handler+0x80>)
    125e:	681a      	ldr	r2, [r3, #0]
    1260:	4b07      	ldr	r3, [pc, #28]	; (1280 <UART1_Handler+0x70>)
    1262:	681b      	ldr	r3, [r3, #0]
    1264:	b2d9      	uxtb	r1, r3
    1266:	4b0b      	ldr	r3, [pc, #44]	; (1294 <UART1_Handler+0x84>)
    1268:	5499      	strb	r1, [r3, r2]
    126a:	4b09      	ldr	r3, [pc, #36]	; (1290 <UART1_Handler+0x80>)
    126c:	681b      	ldr	r3, [r3, #0]
    126e:	3301      	adds	r3, #1
    1270:	05db      	lsls	r3, r3, #23
    1272:	0dda      	lsrs	r2, r3, #23
    1274:	4b06      	ldr	r3, [pc, #24]	; (1290 <UART1_Handler+0x80>)
    1276:	601a      	str	r2, [r3, #0]
    1278:	46c0      	nop			; (mov r8, r8)
    127a:	46bd      	mov	sp, r7
    127c:	bd80      	pop	{r7, pc}
    127e:	46c0      	nop			; (mov r8, r8)
    1280:	40030000 	.word	0x40030000
    1284:	2000034c 	.word	0x2000034c
    1288:	20000350 	.word	0x20000350
    128c:	2000014c 	.word	0x2000014c
    1290:	20000554 	.word	0x20000554
    1294:	20000354 	.word	0x20000354

00001298 <xputc>:
    1298:	b580      	push	{r7, lr}
    129a:	b082      	sub	sp, #8
    129c:	af00      	add	r7, sp, #0
    129e:	0002      	movs	r2, r0
    12a0:	1dfb      	adds	r3, r7, #7
    12a2:	701a      	strb	r2, [r3, #0]
    12a4:	1dfb      	adds	r3, r7, #7
    12a6:	781b      	ldrb	r3, [r3, #0]
    12a8:	2b0a      	cmp	r3, #10
    12aa:	d102      	bne.n	12b2 <xputc+0x1a>
    12ac:	200d      	movs	r0, #13
    12ae:	f7ff fff3 	bl	1298 <xputc>
    12b2:	4b0d      	ldr	r3, [pc, #52]	; (12e8 <xputc+0x50>)
    12b4:	681b      	ldr	r3, [r3, #0]
    12b6:	2b00      	cmp	r3, #0
    12b8:	d008      	beq.n	12cc <xputc+0x34>
    12ba:	4b0b      	ldr	r3, [pc, #44]	; (12e8 <xputc+0x50>)
    12bc:	681b      	ldr	r3, [r3, #0]
    12be:	1c59      	adds	r1, r3, #1
    12c0:	4a09      	ldr	r2, [pc, #36]	; (12e8 <xputc+0x50>)
    12c2:	6011      	str	r1, [r2, #0]
    12c4:	1dfa      	adds	r2, r7, #7
    12c6:	7812      	ldrb	r2, [r2, #0]
    12c8:	701a      	strb	r2, [r3, #0]
    12ca:	e009      	b.n	12e0 <xputc+0x48>
    12cc:	4b07      	ldr	r3, [pc, #28]	; (12ec <xputc+0x54>)
    12ce:	681b      	ldr	r3, [r3, #0]
    12d0:	2b00      	cmp	r3, #0
    12d2:	d005      	beq.n	12e0 <xputc+0x48>
    12d4:	4b05      	ldr	r3, [pc, #20]	; (12ec <xputc+0x54>)
    12d6:	681b      	ldr	r3, [r3, #0]
    12d8:	1dfa      	adds	r2, r7, #7
    12da:	7812      	ldrb	r2, [r2, #0]
    12dc:	0010      	movs	r0, r2
    12de:	4798      	blx	r3
    12e0:	46bd      	mov	sp, r7
    12e2:	b002      	add	sp, #8
    12e4:	bd80      	pop	{r7, pc}
    12e6:	46c0      	nop			; (mov r8, r8)
    12e8:	20000560 	.word	0x20000560
    12ec:	2000055c 	.word	0x2000055c

000012f0 <xputs>:
    12f0:	b580      	push	{r7, lr}
    12f2:	b082      	sub	sp, #8
    12f4:	af00      	add	r7, sp, #0
    12f6:	6078      	str	r0, [r7, #4]
    12f8:	e006      	b.n	1308 <xputs+0x18>
    12fa:	687b      	ldr	r3, [r7, #4]
    12fc:	1c5a      	adds	r2, r3, #1
    12fe:	607a      	str	r2, [r7, #4]
    1300:	781b      	ldrb	r3, [r3, #0]
    1302:	0018      	movs	r0, r3
    1304:	f7ff ffc8 	bl	1298 <xputc>
    1308:	687b      	ldr	r3, [r7, #4]
    130a:	781b      	ldrb	r3, [r3, #0]
    130c:	2b00      	cmp	r3, #0
    130e:	d1f4      	bne.n	12fa <xputs+0xa>
    1310:	46c0      	nop			; (mov r8, r8)
    1312:	46bd      	mov	sp, r7
    1314:	b002      	add	sp, #8
    1316:	bd80      	pop	{r7, pc}

00001318 <xfputs>:
    1318:	b580      	push	{r7, lr}
    131a:	b084      	sub	sp, #16
    131c:	af00      	add	r7, sp, #0
    131e:	6078      	str	r0, [r7, #4]
    1320:	6039      	str	r1, [r7, #0]
    1322:	4b0c      	ldr	r3, [pc, #48]	; (1354 <xfputs+0x3c>)
    1324:	681b      	ldr	r3, [r3, #0]
    1326:	60fb      	str	r3, [r7, #12]
    1328:	4b0a      	ldr	r3, [pc, #40]	; (1354 <xfputs+0x3c>)
    132a:	687a      	ldr	r2, [r7, #4]
    132c:	601a      	str	r2, [r3, #0]
    132e:	e006      	b.n	133e <xfputs+0x26>
    1330:	683b      	ldr	r3, [r7, #0]
    1332:	1c5a      	adds	r2, r3, #1
    1334:	603a      	str	r2, [r7, #0]
    1336:	781b      	ldrb	r3, [r3, #0]
    1338:	0018      	movs	r0, r3
    133a:	f7ff ffad 	bl	1298 <xputc>
    133e:	683b      	ldr	r3, [r7, #0]
    1340:	781b      	ldrb	r3, [r3, #0]
    1342:	2b00      	cmp	r3, #0
    1344:	d1f4      	bne.n	1330 <xfputs+0x18>
    1346:	4b03      	ldr	r3, [pc, #12]	; (1354 <xfputs+0x3c>)
    1348:	68fa      	ldr	r2, [r7, #12]
    134a:	601a      	str	r2, [r3, #0]
    134c:	46c0      	nop			; (mov r8, r8)
    134e:	46bd      	mov	sp, r7
    1350:	b004      	add	sp, #16
    1352:	bd80      	pop	{r7, pc}
    1354:	2000055c 	.word	0x2000055c

00001358 <xvprintf>:
    1358:	b580      	push	{r7, lr}
    135a:	b08e      	sub	sp, #56	; 0x38
    135c:	af00      	add	r7, sp, #0
    135e:	6078      	str	r0, [r7, #4]
    1360:	6039      	str	r1, [r7, #0]
    1362:	687b      	ldr	r3, [r7, #4]
    1364:	1c5a      	adds	r2, r3, #1
    1366:	607a      	str	r2, [r7, #4]
    1368:	221f      	movs	r2, #31
    136a:	18ba      	adds	r2, r7, r2
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	7013      	strb	r3, [r2, #0]
    1370:	231f      	movs	r3, #31
    1372:	18fb      	adds	r3, r7, r3
    1374:	781b      	ldrb	r3, [r3, #0]
    1376:	2b00      	cmp	r3, #0
    1378:	d100      	bne.n	137c <xvprintf+0x24>
    137a:	e172      	b.n	1662 <xvprintf+0x30a>
    137c:	231f      	movs	r3, #31
    137e:	18fb      	adds	r3, r7, r3
    1380:	781b      	ldrb	r3, [r3, #0]
    1382:	2b25      	cmp	r3, #37	; 0x25
    1384:	d006      	beq.n	1394 <xvprintf+0x3c>
    1386:	231f      	movs	r3, #31
    1388:	18fb      	adds	r3, r7, r3
    138a:	781b      	ldrb	r3, [r3, #0]
    138c:	0018      	movs	r0, r3
    138e:	f7ff ff83 	bl	1298 <xputc>
    1392:	e165      	b.n	1660 <xvprintf+0x308>
    1394:	2300      	movs	r3, #0
    1396:	627b      	str	r3, [r7, #36]	; 0x24
    1398:	687b      	ldr	r3, [r7, #4]
    139a:	1c5a      	adds	r2, r3, #1
    139c:	607a      	str	r2, [r7, #4]
    139e:	221f      	movs	r2, #31
    13a0:	18ba      	adds	r2, r7, r2
    13a2:	781b      	ldrb	r3, [r3, #0]
    13a4:	7013      	strb	r3, [r2, #0]
    13a6:	231f      	movs	r3, #31
    13a8:	18fb      	adds	r3, r7, r3
    13aa:	781b      	ldrb	r3, [r3, #0]
    13ac:	2b30      	cmp	r3, #48	; 0x30
    13ae:	d109      	bne.n	13c4 <xvprintf+0x6c>
    13b0:	2301      	movs	r3, #1
    13b2:	627b      	str	r3, [r7, #36]	; 0x24
    13b4:	687b      	ldr	r3, [r7, #4]
    13b6:	1c5a      	adds	r2, r3, #1
    13b8:	607a      	str	r2, [r7, #4]
    13ba:	221f      	movs	r2, #31
    13bc:	18ba      	adds	r2, r7, r2
    13be:	781b      	ldrb	r3, [r3, #0]
    13c0:	7013      	strb	r3, [r2, #0]
    13c2:	e00d      	b.n	13e0 <xvprintf+0x88>
    13c4:	231f      	movs	r3, #31
    13c6:	18fb      	adds	r3, r7, r3
    13c8:	781b      	ldrb	r3, [r3, #0]
    13ca:	2b2d      	cmp	r3, #45	; 0x2d
    13cc:	d108      	bne.n	13e0 <xvprintf+0x88>
    13ce:	2302      	movs	r3, #2
    13d0:	627b      	str	r3, [r7, #36]	; 0x24
    13d2:	687b      	ldr	r3, [r7, #4]
    13d4:	1c5a      	adds	r2, r3, #1
    13d6:	607a      	str	r2, [r7, #4]
    13d8:	221f      	movs	r2, #31
    13da:	18ba      	adds	r2, r7, r2
    13dc:	781b      	ldrb	r3, [r3, #0]
    13de:	7013      	strb	r3, [r2, #0]
    13e0:	2300      	movs	r3, #0
    13e2:	62bb      	str	r3, [r7, #40]	; 0x28
    13e4:	e012      	b.n	140c <xvprintf+0xb4>
    13e6:	6aba      	ldr	r2, [r7, #40]	; 0x28
    13e8:	0013      	movs	r3, r2
    13ea:	009b      	lsls	r3, r3, #2
    13ec:	189b      	adds	r3, r3, r2
    13ee:	005b      	lsls	r3, r3, #1
    13f0:	001a      	movs	r2, r3
    13f2:	231f      	movs	r3, #31
    13f4:	18fb      	adds	r3, r7, r3
    13f6:	781b      	ldrb	r3, [r3, #0]
    13f8:	18d3      	adds	r3, r2, r3
    13fa:	3b30      	subs	r3, #48	; 0x30
    13fc:	62bb      	str	r3, [r7, #40]	; 0x28
    13fe:	687b      	ldr	r3, [r7, #4]
    1400:	1c5a      	adds	r2, r3, #1
    1402:	607a      	str	r2, [r7, #4]
    1404:	221f      	movs	r2, #31
    1406:	18ba      	adds	r2, r7, r2
    1408:	781b      	ldrb	r3, [r3, #0]
    140a:	7013      	strb	r3, [r2, #0]
    140c:	231f      	movs	r3, #31
    140e:	18fb      	adds	r3, r7, r3
    1410:	781b      	ldrb	r3, [r3, #0]
    1412:	2b2f      	cmp	r3, #47	; 0x2f
    1414:	d904      	bls.n	1420 <xvprintf+0xc8>
    1416:	231f      	movs	r3, #31
    1418:	18fb      	adds	r3, r7, r3
    141a:	781b      	ldrb	r3, [r3, #0]
    141c:	2b39      	cmp	r3, #57	; 0x39
    141e:	d9e2      	bls.n	13e6 <xvprintf+0x8e>
    1420:	231f      	movs	r3, #31
    1422:	18fb      	adds	r3, r7, r3
    1424:	781b      	ldrb	r3, [r3, #0]
    1426:	2b6c      	cmp	r3, #108	; 0x6c
    1428:	d004      	beq.n	1434 <xvprintf+0xdc>
    142a:	231f      	movs	r3, #31
    142c:	18fb      	adds	r3, r7, r3
    142e:	781b      	ldrb	r3, [r3, #0]
    1430:	2b4c      	cmp	r3, #76	; 0x4c
    1432:	d10a      	bne.n	144a <xvprintf+0xf2>
    1434:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1436:	2204      	movs	r2, #4
    1438:	4313      	orrs	r3, r2
    143a:	627b      	str	r3, [r7, #36]	; 0x24
    143c:	687b      	ldr	r3, [r7, #4]
    143e:	1c5a      	adds	r2, r3, #1
    1440:	607a      	str	r2, [r7, #4]
    1442:	221f      	movs	r2, #31
    1444:	18ba      	adds	r2, r7, r2
    1446:	781b      	ldrb	r3, [r3, #0]
    1448:	7013      	strb	r3, [r2, #0]
    144a:	231f      	movs	r3, #31
    144c:	18fb      	adds	r3, r7, r3
    144e:	781b      	ldrb	r3, [r3, #0]
    1450:	2b00      	cmp	r3, #0
    1452:	d100      	bne.n	1456 <xvprintf+0xfe>
    1454:	e107      	b.n	1666 <xvprintf+0x30e>
    1456:	231e      	movs	r3, #30
    1458:	18fb      	adds	r3, r7, r3
    145a:	221f      	movs	r2, #31
    145c:	18ba      	adds	r2, r7, r2
    145e:	7812      	ldrb	r2, [r2, #0]
    1460:	701a      	strb	r2, [r3, #0]
    1462:	231e      	movs	r3, #30
    1464:	18fb      	adds	r3, r7, r3
    1466:	781b      	ldrb	r3, [r3, #0]
    1468:	2b60      	cmp	r3, #96	; 0x60
    146a:	d906      	bls.n	147a <xvprintf+0x122>
    146c:	231e      	movs	r3, #30
    146e:	18fb      	adds	r3, r7, r3
    1470:	221e      	movs	r2, #30
    1472:	18ba      	adds	r2, r7, r2
    1474:	7812      	ldrb	r2, [r2, #0]
    1476:	3a20      	subs	r2, #32
    1478:	701a      	strb	r2, [r3, #0]
    147a:	231e      	movs	r3, #30
    147c:	18fb      	adds	r3, r7, r3
    147e:	781b      	ldrb	r3, [r3, #0]
    1480:	3b42      	subs	r3, #66	; 0x42
    1482:	2b16      	cmp	r3, #22
    1484:	d847      	bhi.n	1516 <xvprintf+0x1be>
    1486:	009a      	lsls	r2, r3, #2
    1488:	4b79      	ldr	r3, [pc, #484]	; (1670 <xvprintf+0x318>)
    148a:	18d3      	adds	r3, r2, r3
    148c:	681b      	ldr	r3, [r3, #0]
    148e:	469f      	mov	pc, r3
    1490:	683b      	ldr	r3, [r7, #0]
    1492:	1d1a      	adds	r2, r3, #4
    1494:	603a      	str	r2, [r7, #0]
    1496:	681b      	ldr	r3, [r3, #0]
    1498:	61bb      	str	r3, [r7, #24]
    149a:	2300      	movs	r3, #0
    149c:	62fb      	str	r3, [r7, #44]	; 0x2c
    149e:	e002      	b.n	14a6 <xvprintf+0x14e>
    14a0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14a2:	3301      	adds	r3, #1
    14a4:	62fb      	str	r3, [r7, #44]	; 0x2c
    14a6:	69ba      	ldr	r2, [r7, #24]
    14a8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14aa:	18d3      	adds	r3, r2, r3
    14ac:	781b      	ldrb	r3, [r3, #0]
    14ae:	2b00      	cmp	r3, #0
    14b0:	d1f6      	bne.n	14a0 <xvprintf+0x148>
    14b2:	e002      	b.n	14ba <xvprintf+0x162>
    14b4:	2020      	movs	r0, #32
    14b6:	f7ff feef 	bl	1298 <xputc>
    14ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    14bc:	2202      	movs	r2, #2
    14be:	4013      	ands	r3, r2
    14c0:	d105      	bne.n	14ce <xvprintf+0x176>
    14c2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14c4:	1c5a      	adds	r2, r3, #1
    14c6:	62fa      	str	r2, [r7, #44]	; 0x2c
    14c8:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14ca:	4293      	cmp	r3, r2
    14cc:	d3f2      	bcc.n	14b4 <xvprintf+0x15c>
    14ce:	69bb      	ldr	r3, [r7, #24]
    14d0:	0018      	movs	r0, r3
    14d2:	f7ff ff0d 	bl	12f0 <xputs>
    14d6:	e002      	b.n	14de <xvprintf+0x186>
    14d8:	2020      	movs	r0, #32
    14da:	f7ff fedd 	bl	1298 <xputc>
    14de:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14e0:	1c5a      	adds	r2, r3, #1
    14e2:	62fa      	str	r2, [r7, #44]	; 0x2c
    14e4:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14e6:	4293      	cmp	r3, r2
    14e8:	d3f6      	bcc.n	14d8 <xvprintf+0x180>
    14ea:	e0b9      	b.n	1660 <xvprintf+0x308>
    14ec:	683b      	ldr	r3, [r7, #0]
    14ee:	1d1a      	adds	r2, r3, #4
    14f0:	603a      	str	r2, [r7, #0]
    14f2:	681b      	ldr	r3, [r3, #0]
    14f4:	b2db      	uxtb	r3, r3
    14f6:	0018      	movs	r0, r3
    14f8:	f7ff fece 	bl	1298 <xputc>
    14fc:	e0b0      	b.n	1660 <xvprintf+0x308>
    14fe:	2302      	movs	r3, #2
    1500:	637b      	str	r3, [r7, #52]	; 0x34
    1502:	e00f      	b.n	1524 <xvprintf+0x1cc>
    1504:	2308      	movs	r3, #8
    1506:	637b      	str	r3, [r7, #52]	; 0x34
    1508:	e00c      	b.n	1524 <xvprintf+0x1cc>
    150a:	230a      	movs	r3, #10
    150c:	637b      	str	r3, [r7, #52]	; 0x34
    150e:	e009      	b.n	1524 <xvprintf+0x1cc>
    1510:	2310      	movs	r3, #16
    1512:	637b      	str	r3, [r7, #52]	; 0x34
    1514:	e006      	b.n	1524 <xvprintf+0x1cc>
    1516:	231f      	movs	r3, #31
    1518:	18fb      	adds	r3, r7, r3
    151a:	781b      	ldrb	r3, [r3, #0]
    151c:	0018      	movs	r0, r3
    151e:	f7ff febb 	bl	1298 <xputc>
    1522:	e09d      	b.n	1660 <xvprintf+0x308>
    1524:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1526:	2204      	movs	r2, #4
    1528:	4013      	ands	r3, r2
    152a:	d004      	beq.n	1536 <xvprintf+0x1de>
    152c:	683b      	ldr	r3, [r7, #0]
    152e:	1d1a      	adds	r2, r3, #4
    1530:	603a      	str	r2, [r7, #0]
    1532:	681b      	ldr	r3, [r3, #0]
    1534:	e00d      	b.n	1552 <xvprintf+0x1fa>
    1536:	231e      	movs	r3, #30
    1538:	18fb      	adds	r3, r7, r3
    153a:	781b      	ldrb	r3, [r3, #0]
    153c:	2b44      	cmp	r3, #68	; 0x44
    153e:	d104      	bne.n	154a <xvprintf+0x1f2>
    1540:	683b      	ldr	r3, [r7, #0]
    1542:	1d1a      	adds	r2, r3, #4
    1544:	603a      	str	r2, [r7, #0]
    1546:	681b      	ldr	r3, [r3, #0]
    1548:	e003      	b.n	1552 <xvprintf+0x1fa>
    154a:	683b      	ldr	r3, [r7, #0]
    154c:	1d1a      	adds	r2, r3, #4
    154e:	603a      	str	r2, [r7, #0]
    1550:	681b      	ldr	r3, [r3, #0]
    1552:	623b      	str	r3, [r7, #32]
    1554:	231e      	movs	r3, #30
    1556:	18fb      	adds	r3, r7, r3
    1558:	781b      	ldrb	r3, [r3, #0]
    155a:	2b44      	cmp	r3, #68	; 0x44
    155c:	d109      	bne.n	1572 <xvprintf+0x21a>
    155e:	6a3b      	ldr	r3, [r7, #32]
    1560:	2b00      	cmp	r3, #0
    1562:	da06      	bge.n	1572 <xvprintf+0x21a>
    1564:	6a3b      	ldr	r3, [r7, #32]
    1566:	425b      	negs	r3, r3
    1568:	623b      	str	r3, [r7, #32]
    156a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    156c:	2208      	movs	r2, #8
    156e:	4313      	orrs	r3, r2
    1570:	627b      	str	r3, [r7, #36]	; 0x24
    1572:	2300      	movs	r3, #0
    1574:	633b      	str	r3, [r7, #48]	; 0x30
    1576:	6a3b      	ldr	r3, [r7, #32]
    1578:	6b79      	ldr	r1, [r7, #52]	; 0x34
    157a:	0018      	movs	r0, r3
    157c:	f000 fc68 	bl	1e50 <__aeabi_uidivmod>
    1580:	000b      	movs	r3, r1
    1582:	001a      	movs	r2, r3
    1584:	231e      	movs	r3, #30
    1586:	18fb      	adds	r3, r7, r3
    1588:	701a      	strb	r2, [r3, #0]
    158a:	6b79      	ldr	r1, [r7, #52]	; 0x34
    158c:	6a38      	ldr	r0, [r7, #32]
    158e:	f000 fbd9 	bl	1d44 <__aeabi_uidiv>
    1592:	0003      	movs	r3, r0
    1594:	623b      	str	r3, [r7, #32]
    1596:	231e      	movs	r3, #30
    1598:	18fb      	adds	r3, r7, r3
    159a:	781b      	ldrb	r3, [r3, #0]
    159c:	2b09      	cmp	r3, #9
    159e:	d90e      	bls.n	15be <xvprintf+0x266>
    15a0:	231f      	movs	r3, #31
    15a2:	18fb      	adds	r3, r7, r3
    15a4:	781b      	ldrb	r3, [r3, #0]
    15a6:	2b78      	cmp	r3, #120	; 0x78
    15a8:	d101      	bne.n	15ae <xvprintf+0x256>
    15aa:	2327      	movs	r3, #39	; 0x27
    15ac:	e000      	b.n	15b0 <xvprintf+0x258>
    15ae:	2307      	movs	r3, #7
    15b0:	221e      	movs	r2, #30
    15b2:	18ba      	adds	r2, r7, r2
    15b4:	211e      	movs	r1, #30
    15b6:	1879      	adds	r1, r7, r1
    15b8:	7809      	ldrb	r1, [r1, #0]
    15ba:	185b      	adds	r3, r3, r1
    15bc:	7013      	strb	r3, [r2, #0]
    15be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15c0:	1c5a      	adds	r2, r3, #1
    15c2:	633a      	str	r2, [r7, #48]	; 0x30
    15c4:	221e      	movs	r2, #30
    15c6:	18ba      	adds	r2, r7, r2
    15c8:	7812      	ldrb	r2, [r2, #0]
    15ca:	3230      	adds	r2, #48	; 0x30
    15cc:	b2d1      	uxtb	r1, r2
    15ce:	2208      	movs	r2, #8
    15d0:	18ba      	adds	r2, r7, r2
    15d2:	54d1      	strb	r1, [r2, r3]
    15d4:	6a3b      	ldr	r3, [r7, #32]
    15d6:	2b00      	cmp	r3, #0
    15d8:	d002      	beq.n	15e0 <xvprintf+0x288>
    15da:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15dc:	2b0f      	cmp	r3, #15
    15de:	d9ca      	bls.n	1576 <xvprintf+0x21e>
    15e0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15e2:	2208      	movs	r2, #8
    15e4:	4013      	ands	r3, r2
    15e6:	d006      	beq.n	15f6 <xvprintf+0x29e>
    15e8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15ea:	1c5a      	adds	r2, r3, #1
    15ec:	633a      	str	r2, [r7, #48]	; 0x30
    15ee:	2208      	movs	r2, #8
    15f0:	18ba      	adds	r2, r7, r2
    15f2:	212d      	movs	r1, #45	; 0x2d
    15f4:	54d1      	strb	r1, [r2, r3]
    15f6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    15f8:	62fb      	str	r3, [r7, #44]	; 0x2c
    15fa:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    15fc:	2201      	movs	r2, #1
    15fe:	4013      	ands	r3, r2
    1600:	d001      	beq.n	1606 <xvprintf+0x2ae>
    1602:	2230      	movs	r2, #48	; 0x30
    1604:	e000      	b.n	1608 <xvprintf+0x2b0>
    1606:	2220      	movs	r2, #32
    1608:	231e      	movs	r3, #30
    160a:	18fb      	adds	r3, r7, r3
    160c:	701a      	strb	r2, [r3, #0]
    160e:	e005      	b.n	161c <xvprintf+0x2c4>
    1610:	231e      	movs	r3, #30
    1612:	18fb      	adds	r3, r7, r3
    1614:	781b      	ldrb	r3, [r3, #0]
    1616:	0018      	movs	r0, r3
    1618:	f7ff fe3e 	bl	1298 <xputc>
    161c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    161e:	2202      	movs	r2, #2
    1620:	4013      	ands	r3, r2
    1622:	d105      	bne.n	1630 <xvprintf+0x2d8>
    1624:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1626:	1c5a      	adds	r2, r3, #1
    1628:	62fa      	str	r2, [r7, #44]	; 0x2c
    162a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    162c:	4293      	cmp	r3, r2
    162e:	d3ef      	bcc.n	1610 <xvprintf+0x2b8>
    1630:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1632:	3b01      	subs	r3, #1
    1634:	633b      	str	r3, [r7, #48]	; 0x30
    1636:	2308      	movs	r3, #8
    1638:	18fa      	adds	r2, r7, r3
    163a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    163c:	18d3      	adds	r3, r2, r3
    163e:	781b      	ldrb	r3, [r3, #0]
    1640:	0018      	movs	r0, r3
    1642:	f7ff fe29 	bl	1298 <xputc>
    1646:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1648:	2b00      	cmp	r3, #0
    164a:	d1f1      	bne.n	1630 <xvprintf+0x2d8>
    164c:	e002      	b.n	1654 <xvprintf+0x2fc>
    164e:	2020      	movs	r0, #32
    1650:	f7ff fe22 	bl	1298 <xputc>
    1654:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1656:	1c5a      	adds	r2, r3, #1
    1658:	62fa      	str	r2, [r7, #44]	; 0x2c
    165a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    165c:	4293      	cmp	r3, r2
    165e:	d3f6      	bcc.n	164e <xvprintf+0x2f6>
    1660:	e67f      	b.n	1362 <xvprintf+0xa>
    1662:	46c0      	nop			; (mov r8, r8)
    1664:	e000      	b.n	1668 <xvprintf+0x310>
    1666:	46c0      	nop			; (mov r8, r8)
    1668:	46c0      	nop			; (mov r8, r8)
    166a:	46bd      	mov	sp, r7
    166c:	b00e      	add	sp, #56	; 0x38
    166e:	bd80      	pop	{r7, pc}
    1670:	00001e6c 	.word	0x00001e6c

00001674 <xprintf>:
    1674:	b40f      	push	{r0, r1, r2, r3}
    1676:	b580      	push	{r7, lr}
    1678:	b082      	sub	sp, #8
    167a:	af00      	add	r7, sp, #0
    167c:	2314      	movs	r3, #20
    167e:	18fb      	adds	r3, r7, r3
    1680:	607b      	str	r3, [r7, #4]
    1682:	687a      	ldr	r2, [r7, #4]
    1684:	693b      	ldr	r3, [r7, #16]
    1686:	0011      	movs	r1, r2
    1688:	0018      	movs	r0, r3
    168a:	f7ff fe65 	bl	1358 <xvprintf>
    168e:	46c0      	nop			; (mov r8, r8)
    1690:	46bd      	mov	sp, r7
    1692:	b002      	add	sp, #8
    1694:	bc80      	pop	{r7}
    1696:	bc08      	pop	{r3}
    1698:	b004      	add	sp, #16
    169a:	4718      	bx	r3

0000169c <xsprintf>:
    169c:	b40e      	push	{r1, r2, r3}
    169e:	b580      	push	{r7, lr}
    16a0:	b085      	sub	sp, #20
    16a2:	af00      	add	r7, sp, #0
    16a4:	6078      	str	r0, [r7, #4]
    16a6:	4b0d      	ldr	r3, [pc, #52]	; (16dc <xsprintf+0x40>)
    16a8:	687a      	ldr	r2, [r7, #4]
    16aa:	601a      	str	r2, [r3, #0]
    16ac:	2320      	movs	r3, #32
    16ae:	18fb      	adds	r3, r7, r3
    16b0:	60fb      	str	r3, [r7, #12]
    16b2:	68fa      	ldr	r2, [r7, #12]
    16b4:	69fb      	ldr	r3, [r7, #28]
    16b6:	0011      	movs	r1, r2
    16b8:	0018      	movs	r0, r3
    16ba:	f7ff fe4d 	bl	1358 <xvprintf>
    16be:	4b07      	ldr	r3, [pc, #28]	; (16dc <xsprintf+0x40>)
    16c0:	681b      	ldr	r3, [r3, #0]
    16c2:	2200      	movs	r2, #0
    16c4:	701a      	strb	r2, [r3, #0]
    16c6:	4b05      	ldr	r3, [pc, #20]	; (16dc <xsprintf+0x40>)
    16c8:	2200      	movs	r2, #0
    16ca:	601a      	str	r2, [r3, #0]
    16cc:	46c0      	nop			; (mov r8, r8)
    16ce:	46bd      	mov	sp, r7
    16d0:	b005      	add	sp, #20
    16d2:	bc80      	pop	{r7}
    16d4:	bc08      	pop	{r3}
    16d6:	b003      	add	sp, #12
    16d8:	4718      	bx	r3
    16da:	46c0      	nop			; (mov r8, r8)
    16dc:	20000560 	.word	0x20000560

000016e0 <xfprintf>:
    16e0:	b40e      	push	{r1, r2, r3}
    16e2:	b580      	push	{r7, lr}
    16e4:	b085      	sub	sp, #20
    16e6:	af00      	add	r7, sp, #0
    16e8:	6078      	str	r0, [r7, #4]
    16ea:	4b0c      	ldr	r3, [pc, #48]	; (171c <xfprintf+0x3c>)
    16ec:	681b      	ldr	r3, [r3, #0]
    16ee:	60fb      	str	r3, [r7, #12]
    16f0:	4b0a      	ldr	r3, [pc, #40]	; (171c <xfprintf+0x3c>)
    16f2:	687a      	ldr	r2, [r7, #4]
    16f4:	601a      	str	r2, [r3, #0]
    16f6:	2320      	movs	r3, #32
    16f8:	18fb      	adds	r3, r7, r3
    16fa:	60bb      	str	r3, [r7, #8]
    16fc:	68ba      	ldr	r2, [r7, #8]
    16fe:	69fb      	ldr	r3, [r7, #28]
    1700:	0011      	movs	r1, r2
    1702:	0018      	movs	r0, r3
    1704:	f7ff fe28 	bl	1358 <xvprintf>
    1708:	4b04      	ldr	r3, [pc, #16]	; (171c <xfprintf+0x3c>)
    170a:	68fa      	ldr	r2, [r7, #12]
    170c:	601a      	str	r2, [r3, #0]
    170e:	46c0      	nop			; (mov r8, r8)
    1710:	46bd      	mov	sp, r7
    1712:	b005      	add	sp, #20
    1714:	bc80      	pop	{r7}
    1716:	bc08      	pop	{r3}
    1718:	b003      	add	sp, #12
    171a:	4718      	bx	r3
    171c:	2000055c 	.word	0x2000055c

00001720 <put_dump>:
    1720:	b580      	push	{r7, lr}
    1722:	b088      	sub	sp, #32
    1724:	af00      	add	r7, sp, #0
    1726:	60f8      	str	r0, [r7, #12]
    1728:	60b9      	str	r1, [r7, #8]
    172a:	607a      	str	r2, [r7, #4]
    172c:	603b      	str	r3, [r7, #0]
    172e:	68ba      	ldr	r2, [r7, #8]
    1730:	4b38      	ldr	r3, [pc, #224]	; (1814 <put_dump+0xf4>)
    1732:	0011      	movs	r1, r2
    1734:	0018      	movs	r0, r3
    1736:	f7ff ff9d 	bl	1674 <xprintf>
    173a:	683b      	ldr	r3, [r7, #0]
    173c:	2b02      	cmp	r3, #2
    173e:	d03c      	beq.n	17ba <put_dump+0x9a>
    1740:	2b04      	cmp	r3, #4
    1742:	d04d      	beq.n	17e0 <put_dump+0xc0>
    1744:	2b01      	cmp	r3, #1
    1746:	d15d      	bne.n	1804 <put_dump+0xe4>
    1748:	68fb      	ldr	r3, [r7, #12]
    174a:	613b      	str	r3, [r7, #16]
    174c:	2300      	movs	r3, #0
    174e:	61fb      	str	r3, [r7, #28]
    1750:	e00c      	b.n	176c <put_dump+0x4c>
    1752:	69fb      	ldr	r3, [r7, #28]
    1754:	693a      	ldr	r2, [r7, #16]
    1756:	18d3      	adds	r3, r2, r3
    1758:	781b      	ldrb	r3, [r3, #0]
    175a:	001a      	movs	r2, r3
    175c:	4b2e      	ldr	r3, [pc, #184]	; (1818 <put_dump+0xf8>)
    175e:	0011      	movs	r1, r2
    1760:	0018      	movs	r0, r3
    1762:	f7ff ff87 	bl	1674 <xprintf>
    1766:	69fb      	ldr	r3, [r7, #28]
    1768:	3301      	adds	r3, #1
    176a:	61fb      	str	r3, [r7, #28]
    176c:	69fa      	ldr	r2, [r7, #28]
    176e:	687b      	ldr	r3, [r7, #4]
    1770:	429a      	cmp	r2, r3
    1772:	dbee      	blt.n	1752 <put_dump+0x32>
    1774:	2020      	movs	r0, #32
    1776:	f7ff fd8f 	bl	1298 <xputc>
    177a:	2300      	movs	r3, #0
    177c:	61fb      	str	r3, [r7, #28]
    177e:	e017      	b.n	17b0 <put_dump+0x90>
    1780:	69fb      	ldr	r3, [r7, #28]
    1782:	693a      	ldr	r2, [r7, #16]
    1784:	18d3      	adds	r3, r2, r3
    1786:	781b      	ldrb	r3, [r3, #0]
    1788:	2b1f      	cmp	r3, #31
    178a:	d90a      	bls.n	17a2 <put_dump+0x82>
    178c:	69fb      	ldr	r3, [r7, #28]
    178e:	693a      	ldr	r2, [r7, #16]
    1790:	18d3      	adds	r3, r2, r3
    1792:	781b      	ldrb	r3, [r3, #0]
    1794:	2b7e      	cmp	r3, #126	; 0x7e
    1796:	d804      	bhi.n	17a2 <put_dump+0x82>
    1798:	69fb      	ldr	r3, [r7, #28]
    179a:	693a      	ldr	r2, [r7, #16]
    179c:	18d3      	adds	r3, r2, r3
    179e:	781b      	ldrb	r3, [r3, #0]
    17a0:	e000      	b.n	17a4 <put_dump+0x84>
    17a2:	232e      	movs	r3, #46	; 0x2e
    17a4:	0018      	movs	r0, r3
    17a6:	f7ff fd77 	bl	1298 <xputc>
    17aa:	69fb      	ldr	r3, [r7, #28]
    17ac:	3301      	adds	r3, #1
    17ae:	61fb      	str	r3, [r7, #28]
    17b0:	69fa      	ldr	r2, [r7, #28]
    17b2:	687b      	ldr	r3, [r7, #4]
    17b4:	429a      	cmp	r2, r3
    17b6:	dbe3      	blt.n	1780 <put_dump+0x60>
    17b8:	e024      	b.n	1804 <put_dump+0xe4>
    17ba:	68fb      	ldr	r3, [r7, #12]
    17bc:	61bb      	str	r3, [r7, #24]
    17be:	69bb      	ldr	r3, [r7, #24]
    17c0:	1c9a      	adds	r2, r3, #2
    17c2:	61ba      	str	r2, [r7, #24]
    17c4:	881b      	ldrh	r3, [r3, #0]
    17c6:	001a      	movs	r2, r3
    17c8:	4b14      	ldr	r3, [pc, #80]	; (181c <put_dump+0xfc>)
    17ca:	0011      	movs	r1, r2
    17cc:	0018      	movs	r0, r3
    17ce:	f7ff ff51 	bl	1674 <xprintf>
    17d2:	687b      	ldr	r3, [r7, #4]
    17d4:	3b01      	subs	r3, #1
    17d6:	607b      	str	r3, [r7, #4]
    17d8:	687b      	ldr	r3, [r7, #4]
    17da:	2b00      	cmp	r3, #0
    17dc:	d1ef      	bne.n	17be <put_dump+0x9e>
    17de:	e011      	b.n	1804 <put_dump+0xe4>
    17e0:	68fb      	ldr	r3, [r7, #12]
    17e2:	617b      	str	r3, [r7, #20]
    17e4:	697b      	ldr	r3, [r7, #20]
    17e6:	1d1a      	adds	r2, r3, #4
    17e8:	617a      	str	r2, [r7, #20]
    17ea:	681a      	ldr	r2, [r3, #0]
    17ec:	4b0c      	ldr	r3, [pc, #48]	; (1820 <put_dump+0x100>)
    17ee:	0011      	movs	r1, r2
    17f0:	0018      	movs	r0, r3
    17f2:	f7ff ff3f 	bl	1674 <xprintf>
    17f6:	687b      	ldr	r3, [r7, #4]
    17f8:	3b01      	subs	r3, #1
    17fa:	607b      	str	r3, [r7, #4]
    17fc:	687b      	ldr	r3, [r7, #4]
    17fe:	2b00      	cmp	r3, #0
    1800:	d1f0      	bne.n	17e4 <put_dump+0xc4>
    1802:	46c0      	nop			; (mov r8, r8)
    1804:	200a      	movs	r0, #10
    1806:	f7ff fd47 	bl	1298 <xputc>
    180a:	46c0      	nop			; (mov r8, r8)
    180c:	46bd      	mov	sp, r7
    180e:	b008      	add	sp, #32
    1810:	bd80      	pop	{r7, pc}
    1812:	46c0      	nop			; (mov r8, r8)
    1814:	00001ec8 	.word	0x00001ec8
    1818:	00001ed0 	.word	0x00001ed0
    181c:	00001ed8 	.word	0x00001ed8
    1820:	00001ee0 	.word	0x00001ee0

00001824 <xgets>:
    1824:	b580      	push	{r7, lr}
    1826:	b084      	sub	sp, #16
    1828:	af00      	add	r7, sp, #0
    182a:	6078      	str	r0, [r7, #4]
    182c:	6039      	str	r1, [r7, #0]
    182e:	4b24      	ldr	r3, [pc, #144]	; (18c0 <xgets+0x9c>)
    1830:	681b      	ldr	r3, [r3, #0]
    1832:	2b00      	cmp	r3, #0
    1834:	d101      	bne.n	183a <xgets+0x16>
    1836:	2300      	movs	r3, #0
    1838:	e03e      	b.n	18b8 <xgets+0x94>
    183a:	2300      	movs	r3, #0
    183c:	60fb      	str	r3, [r7, #12]
    183e:	4b20      	ldr	r3, [pc, #128]	; (18c0 <xgets+0x9c>)
    1840:	681b      	ldr	r3, [r3, #0]
    1842:	4798      	blx	r3
    1844:	0003      	movs	r3, r0
    1846:	60bb      	str	r3, [r7, #8]
    1848:	68bb      	ldr	r3, [r7, #8]
    184a:	2b00      	cmp	r3, #0
    184c:	d101      	bne.n	1852 <xgets+0x2e>
    184e:	2300      	movs	r3, #0
    1850:	e032      	b.n	18b8 <xgets+0x94>
    1852:	68bb      	ldr	r3, [r7, #8]
    1854:	2b0d      	cmp	r3, #13
    1856:	d025      	beq.n	18a4 <xgets+0x80>
    1858:	68bb      	ldr	r3, [r7, #8]
    185a:	2b08      	cmp	r3, #8
    185c:	d10b      	bne.n	1876 <xgets+0x52>
    185e:	68fb      	ldr	r3, [r7, #12]
    1860:	2b00      	cmp	r3, #0
    1862:	d008      	beq.n	1876 <xgets+0x52>
    1864:	68fb      	ldr	r3, [r7, #12]
    1866:	3b01      	subs	r3, #1
    1868:	60fb      	str	r3, [r7, #12]
    186a:	68bb      	ldr	r3, [r7, #8]
    186c:	b2db      	uxtb	r3, r3
    186e:	0018      	movs	r0, r3
    1870:	f7ff fd12 	bl	1298 <xputc>
    1874:	e015      	b.n	18a2 <xgets+0x7e>
    1876:	68bb      	ldr	r3, [r7, #8]
    1878:	2b1f      	cmp	r3, #31
    187a:	dde0      	ble.n	183e <xgets+0x1a>
    187c:	683b      	ldr	r3, [r7, #0]
    187e:	1e5a      	subs	r2, r3, #1
    1880:	68fb      	ldr	r3, [r7, #12]
    1882:	429a      	cmp	r2, r3
    1884:	dddb      	ble.n	183e <xgets+0x1a>
    1886:	68fb      	ldr	r3, [r7, #12]
    1888:	1c5a      	adds	r2, r3, #1
    188a:	60fa      	str	r2, [r7, #12]
    188c:	001a      	movs	r2, r3
    188e:	687b      	ldr	r3, [r7, #4]
    1890:	189b      	adds	r3, r3, r2
    1892:	68ba      	ldr	r2, [r7, #8]
    1894:	b2d2      	uxtb	r2, r2
    1896:	701a      	strb	r2, [r3, #0]
    1898:	68bb      	ldr	r3, [r7, #8]
    189a:	b2db      	uxtb	r3, r3
    189c:	0018      	movs	r0, r3
    189e:	f7ff fcfb 	bl	1298 <xputc>
    18a2:	e7cc      	b.n	183e <xgets+0x1a>
    18a4:	46c0      	nop			; (mov r8, r8)
    18a6:	68fb      	ldr	r3, [r7, #12]
    18a8:	687a      	ldr	r2, [r7, #4]
    18aa:	18d3      	adds	r3, r2, r3
    18ac:	2200      	movs	r2, #0
    18ae:	701a      	strb	r2, [r3, #0]
    18b0:	200a      	movs	r0, #10
    18b2:	f7ff fcf1 	bl	1298 <xputc>
    18b6:	2301      	movs	r3, #1
    18b8:	0018      	movs	r0, r3
    18ba:	46bd      	mov	sp, r7
    18bc:	b004      	add	sp, #16
    18be:	bd80      	pop	{r7, pc}
    18c0:	20000564 	.word	0x20000564

000018c4 <xfgets>:
    18c4:	b580      	push	{r7, lr}
    18c6:	b086      	sub	sp, #24
    18c8:	af00      	add	r7, sp, #0
    18ca:	60f8      	str	r0, [r7, #12]
    18cc:	60b9      	str	r1, [r7, #8]
    18ce:	607a      	str	r2, [r7, #4]
    18d0:	4b0a      	ldr	r3, [pc, #40]	; (18fc <xfgets+0x38>)
    18d2:	681b      	ldr	r3, [r3, #0]
    18d4:	617b      	str	r3, [r7, #20]
    18d6:	4b09      	ldr	r3, [pc, #36]	; (18fc <xfgets+0x38>)
    18d8:	68fa      	ldr	r2, [r7, #12]
    18da:	601a      	str	r2, [r3, #0]
    18dc:	687a      	ldr	r2, [r7, #4]
    18de:	68bb      	ldr	r3, [r7, #8]
    18e0:	0011      	movs	r1, r2
    18e2:	0018      	movs	r0, r3
    18e4:	f7ff ff9e 	bl	1824 <xgets>
    18e8:	0003      	movs	r3, r0
    18ea:	613b      	str	r3, [r7, #16]
    18ec:	4b03      	ldr	r3, [pc, #12]	; (18fc <xfgets+0x38>)
    18ee:	697a      	ldr	r2, [r7, #20]
    18f0:	601a      	str	r2, [r3, #0]
    18f2:	693b      	ldr	r3, [r7, #16]
    18f4:	0018      	movs	r0, r3
    18f6:	46bd      	mov	sp, r7
    18f8:	b006      	add	sp, #24
    18fa:	bd80      	pop	{r7, pc}
    18fc:	20000564 	.word	0x20000564

00001900 <xatoi>:
    1900:	b580      	push	{r7, lr}
    1902:	b084      	sub	sp, #16
    1904:	af00      	add	r7, sp, #0
    1906:	6078      	str	r0, [r7, #4]
    1908:	6039      	str	r1, [r7, #0]
    190a:	2309      	movs	r3, #9
    190c:	18fb      	adds	r3, r7, r3
    190e:	2200      	movs	r2, #0
    1910:	701a      	strb	r2, [r3, #0]
    1912:	683b      	ldr	r3, [r7, #0]
    1914:	2200      	movs	r2, #0
    1916:	601a      	str	r2, [r3, #0]
    1918:	e004      	b.n	1924 <xatoi+0x24>
    191a:	687b      	ldr	r3, [r7, #4]
    191c:	681b      	ldr	r3, [r3, #0]
    191e:	1c5a      	adds	r2, r3, #1
    1920:	687b      	ldr	r3, [r7, #4]
    1922:	601a      	str	r2, [r3, #0]
    1924:	687b      	ldr	r3, [r7, #4]
    1926:	681a      	ldr	r2, [r3, #0]
    1928:	230b      	movs	r3, #11
    192a:	18fb      	adds	r3, r7, r3
    192c:	7812      	ldrb	r2, [r2, #0]
    192e:	701a      	strb	r2, [r3, #0]
    1930:	230b      	movs	r3, #11
    1932:	18fb      	adds	r3, r7, r3
    1934:	781b      	ldrb	r3, [r3, #0]
    1936:	2b20      	cmp	r3, #32
    1938:	d0ef      	beq.n	191a <xatoi+0x1a>
    193a:	230b      	movs	r3, #11
    193c:	18fb      	adds	r3, r7, r3
    193e:	781b      	ldrb	r3, [r3, #0]
    1940:	2b2d      	cmp	r3, #45	; 0x2d
    1942:	d10e      	bne.n	1962 <xatoi+0x62>
    1944:	2309      	movs	r3, #9
    1946:	18fb      	adds	r3, r7, r3
    1948:	2201      	movs	r2, #1
    194a:	701a      	strb	r2, [r3, #0]
    194c:	687b      	ldr	r3, [r7, #4]
    194e:	681b      	ldr	r3, [r3, #0]
    1950:	1c5a      	adds	r2, r3, #1
    1952:	687b      	ldr	r3, [r7, #4]
    1954:	601a      	str	r2, [r3, #0]
    1956:	687b      	ldr	r3, [r7, #4]
    1958:	681a      	ldr	r2, [r3, #0]
    195a:	230b      	movs	r3, #11
    195c:	18fb      	adds	r3, r7, r3
    195e:	7812      	ldrb	r2, [r2, #0]
    1960:	701a      	strb	r2, [r3, #0]
    1962:	230b      	movs	r3, #11
    1964:	18fb      	adds	r3, r7, r3
    1966:	781b      	ldrb	r3, [r3, #0]
    1968:	2b30      	cmp	r3, #48	; 0x30
    196a:	d149      	bne.n	1a00 <xatoi+0x100>
    196c:	687b      	ldr	r3, [r7, #4]
    196e:	681b      	ldr	r3, [r3, #0]
    1970:	1c5a      	adds	r2, r3, #1
    1972:	687b      	ldr	r3, [r7, #4]
    1974:	601a      	str	r2, [r3, #0]
    1976:	687b      	ldr	r3, [r7, #4]
    1978:	681a      	ldr	r2, [r3, #0]
    197a:	230b      	movs	r3, #11
    197c:	18fb      	adds	r3, r7, r3
    197e:	7812      	ldrb	r2, [r2, #0]
    1980:	701a      	strb	r2, [r3, #0]
    1982:	230b      	movs	r3, #11
    1984:	18fb      	adds	r3, r7, r3
    1986:	781b      	ldrb	r3, [r3, #0]
    1988:	2b62      	cmp	r3, #98	; 0x62
    198a:	d011      	beq.n	19b0 <xatoi+0xb0>
    198c:	2b78      	cmp	r3, #120	; 0x78
    198e:	d11f      	bne.n	19d0 <xatoi+0xd0>
    1990:	230a      	movs	r3, #10
    1992:	18fb      	adds	r3, r7, r3
    1994:	2210      	movs	r2, #16
    1996:	701a      	strb	r2, [r3, #0]
    1998:	687b      	ldr	r3, [r7, #4]
    199a:	681b      	ldr	r3, [r3, #0]
    199c:	1c5a      	adds	r2, r3, #1
    199e:	687b      	ldr	r3, [r7, #4]
    19a0:	601a      	str	r2, [r3, #0]
    19a2:	687b      	ldr	r3, [r7, #4]
    19a4:	681a      	ldr	r2, [r3, #0]
    19a6:	230b      	movs	r3, #11
    19a8:	18fb      	adds	r3, r7, r3
    19aa:	7812      	ldrb	r2, [r2, #0]
    19ac:	701a      	strb	r2, [r3, #0]
    19ae:	e037      	b.n	1a20 <xatoi+0x120>
    19b0:	230a      	movs	r3, #10
    19b2:	18fb      	adds	r3, r7, r3
    19b4:	2202      	movs	r2, #2
    19b6:	701a      	strb	r2, [r3, #0]
    19b8:	687b      	ldr	r3, [r7, #4]
    19ba:	681b      	ldr	r3, [r3, #0]
    19bc:	1c5a      	adds	r2, r3, #1
    19be:	687b      	ldr	r3, [r7, #4]
    19c0:	601a      	str	r2, [r3, #0]
    19c2:	687b      	ldr	r3, [r7, #4]
    19c4:	681a      	ldr	r2, [r3, #0]
    19c6:	230b      	movs	r3, #11
    19c8:	18fb      	adds	r3, r7, r3
    19ca:	7812      	ldrb	r2, [r2, #0]
    19cc:	701a      	strb	r2, [r3, #0]
    19ce:	e027      	b.n	1a20 <xatoi+0x120>
    19d0:	230b      	movs	r3, #11
    19d2:	18fb      	adds	r3, r7, r3
    19d4:	781b      	ldrb	r3, [r3, #0]
    19d6:	2b20      	cmp	r3, #32
    19d8:	d801      	bhi.n	19de <xatoi+0xde>
    19da:	2301      	movs	r3, #1
    19dc:	e079      	b.n	1ad2 <xatoi+0x1d2>
    19de:	230b      	movs	r3, #11
    19e0:	18fb      	adds	r3, r7, r3
    19e2:	781b      	ldrb	r3, [r3, #0]
    19e4:	2b2f      	cmp	r3, #47	; 0x2f
    19e6:	d904      	bls.n	19f2 <xatoi+0xf2>
    19e8:	230b      	movs	r3, #11
    19ea:	18fb      	adds	r3, r7, r3
    19ec:	781b      	ldrb	r3, [r3, #0]
    19ee:	2b39      	cmp	r3, #57	; 0x39
    19f0:	d901      	bls.n	19f6 <xatoi+0xf6>
    19f2:	2300      	movs	r3, #0
    19f4:	e06d      	b.n	1ad2 <xatoi+0x1d2>
    19f6:	230a      	movs	r3, #10
    19f8:	18fb      	adds	r3, r7, r3
    19fa:	2208      	movs	r2, #8
    19fc:	701a      	strb	r2, [r3, #0]
    19fe:	e00f      	b.n	1a20 <xatoi+0x120>
    1a00:	230b      	movs	r3, #11
    1a02:	18fb      	adds	r3, r7, r3
    1a04:	781b      	ldrb	r3, [r3, #0]
    1a06:	2b2f      	cmp	r3, #47	; 0x2f
    1a08:	d904      	bls.n	1a14 <xatoi+0x114>
    1a0a:	230b      	movs	r3, #11
    1a0c:	18fb      	adds	r3, r7, r3
    1a0e:	781b      	ldrb	r3, [r3, #0]
    1a10:	2b39      	cmp	r3, #57	; 0x39
    1a12:	d901      	bls.n	1a18 <xatoi+0x118>
    1a14:	2300      	movs	r3, #0
    1a16:	e05c      	b.n	1ad2 <xatoi+0x1d2>
    1a18:	230a      	movs	r3, #10
    1a1a:	18fb      	adds	r3, r7, r3
    1a1c:	220a      	movs	r2, #10
    1a1e:	701a      	strb	r2, [r3, #0]
    1a20:	2300      	movs	r3, #0
    1a22:	60fb      	str	r3, [r7, #12]
    1a24:	e044      	b.n	1ab0 <xatoi+0x1b0>
    1a26:	230b      	movs	r3, #11
    1a28:	18fb      	adds	r3, r7, r3
    1a2a:	781b      	ldrb	r3, [r3, #0]
    1a2c:	2b60      	cmp	r3, #96	; 0x60
    1a2e:	d906      	bls.n	1a3e <xatoi+0x13e>
    1a30:	230b      	movs	r3, #11
    1a32:	18fb      	adds	r3, r7, r3
    1a34:	220b      	movs	r2, #11
    1a36:	18ba      	adds	r2, r7, r2
    1a38:	7812      	ldrb	r2, [r2, #0]
    1a3a:	3a20      	subs	r2, #32
    1a3c:	701a      	strb	r2, [r3, #0]
    1a3e:	230b      	movs	r3, #11
    1a40:	18fb      	adds	r3, r7, r3
    1a42:	220b      	movs	r2, #11
    1a44:	18ba      	adds	r2, r7, r2
    1a46:	7812      	ldrb	r2, [r2, #0]
    1a48:	3a30      	subs	r2, #48	; 0x30
    1a4a:	701a      	strb	r2, [r3, #0]
    1a4c:	230b      	movs	r3, #11
    1a4e:	18fb      	adds	r3, r7, r3
    1a50:	781b      	ldrb	r3, [r3, #0]
    1a52:	2b10      	cmp	r3, #16
    1a54:	d90d      	bls.n	1a72 <xatoi+0x172>
    1a56:	230b      	movs	r3, #11
    1a58:	18fb      	adds	r3, r7, r3
    1a5a:	220b      	movs	r2, #11
    1a5c:	18ba      	adds	r2, r7, r2
    1a5e:	7812      	ldrb	r2, [r2, #0]
    1a60:	3a07      	subs	r2, #7
    1a62:	701a      	strb	r2, [r3, #0]
    1a64:	230b      	movs	r3, #11
    1a66:	18fb      	adds	r3, r7, r3
    1a68:	781b      	ldrb	r3, [r3, #0]
    1a6a:	2b09      	cmp	r3, #9
    1a6c:	d801      	bhi.n	1a72 <xatoi+0x172>
    1a6e:	2300      	movs	r3, #0
    1a70:	e02f      	b.n	1ad2 <xatoi+0x1d2>
    1a72:	230b      	movs	r3, #11
    1a74:	18fa      	adds	r2, r7, r3
    1a76:	230a      	movs	r3, #10
    1a78:	18fb      	adds	r3, r7, r3
    1a7a:	7812      	ldrb	r2, [r2, #0]
    1a7c:	781b      	ldrb	r3, [r3, #0]
    1a7e:	429a      	cmp	r2, r3
    1a80:	d301      	bcc.n	1a86 <xatoi+0x186>
    1a82:	2300      	movs	r3, #0
    1a84:	e025      	b.n	1ad2 <xatoi+0x1d2>
    1a86:	230a      	movs	r3, #10
    1a88:	18fb      	adds	r3, r7, r3
    1a8a:	781b      	ldrb	r3, [r3, #0]
    1a8c:	68fa      	ldr	r2, [r7, #12]
    1a8e:	435a      	muls	r2, r3
    1a90:	230b      	movs	r3, #11
    1a92:	18fb      	adds	r3, r7, r3
    1a94:	781b      	ldrb	r3, [r3, #0]
    1a96:	18d3      	adds	r3, r2, r3
    1a98:	60fb      	str	r3, [r7, #12]
    1a9a:	687b      	ldr	r3, [r7, #4]
    1a9c:	681b      	ldr	r3, [r3, #0]
    1a9e:	1c5a      	adds	r2, r3, #1
    1aa0:	687b      	ldr	r3, [r7, #4]
    1aa2:	601a      	str	r2, [r3, #0]
    1aa4:	687b      	ldr	r3, [r7, #4]
    1aa6:	681a      	ldr	r2, [r3, #0]
    1aa8:	230b      	movs	r3, #11
    1aaa:	18fb      	adds	r3, r7, r3
    1aac:	7812      	ldrb	r2, [r2, #0]
    1aae:	701a      	strb	r2, [r3, #0]
    1ab0:	230b      	movs	r3, #11
    1ab2:	18fb      	adds	r3, r7, r3
    1ab4:	781b      	ldrb	r3, [r3, #0]
    1ab6:	2b20      	cmp	r3, #32
    1ab8:	d8b5      	bhi.n	1a26 <xatoi+0x126>
    1aba:	2309      	movs	r3, #9
    1abc:	18fb      	adds	r3, r7, r3
    1abe:	781b      	ldrb	r3, [r3, #0]
    1ac0:	2b00      	cmp	r3, #0
    1ac2:	d002      	beq.n	1aca <xatoi+0x1ca>
    1ac4:	68fb      	ldr	r3, [r7, #12]
    1ac6:	425b      	negs	r3, r3
    1ac8:	60fb      	str	r3, [r7, #12]
    1aca:	68fa      	ldr	r2, [r7, #12]
    1acc:	683b      	ldr	r3, [r7, #0]
    1ace:	601a      	str	r2, [r3, #0]
    1ad0:	2301      	movs	r3, #1
    1ad2:	0018      	movs	r0, r3
    1ad4:	46bd      	mov	sp, r7
    1ad6:	b004      	add	sp, #16
    1ad8:	bd80      	pop	{r7, pc}
    1ada:	46c0      	nop			; (mov r8, r8)

00001adc <mil_cpy>:
    1adc:	8802      	ldrh	r2, [r0, #0]
    1ade:	4b30      	ldr	r3, [pc, #192]	; (1ba0 <mil_cpy+0xc4>)
    1ae0:	601a      	str	r2, [r3, #0]
    1ae2:	8842      	ldrh	r2, [r0, #2]
    1ae4:	4b2f      	ldr	r3, [pc, #188]	; (1ba4 <mil_cpy+0xc8>)
    1ae6:	601a      	str	r2, [r3, #0]
    1ae8:	8882      	ldrh	r2, [r0, #4]
    1aea:	4b2f      	ldr	r3, [pc, #188]	; (1ba8 <mil_cpy+0xcc>)
    1aec:	601a      	str	r2, [r3, #0]
    1aee:	88c2      	ldrh	r2, [r0, #6]
    1af0:	4b2e      	ldr	r3, [pc, #184]	; (1bac <mil_cpy+0xd0>)
    1af2:	601a      	str	r2, [r3, #0]
    1af4:	8902      	ldrh	r2, [r0, #8]
    1af6:	4b2e      	ldr	r3, [pc, #184]	; (1bb0 <mil_cpy+0xd4>)
    1af8:	601a      	str	r2, [r3, #0]
    1afa:	8942      	ldrh	r2, [r0, #10]
    1afc:	4b2d      	ldr	r3, [pc, #180]	; (1bb4 <mil_cpy+0xd8>)
    1afe:	601a      	str	r2, [r3, #0]
    1b00:	8982      	ldrh	r2, [r0, #12]
    1b02:	4b2d      	ldr	r3, [pc, #180]	; (1bb8 <mil_cpy+0xdc>)
    1b04:	601a      	str	r2, [r3, #0]
    1b06:	89c2      	ldrh	r2, [r0, #14]
    1b08:	4b2c      	ldr	r3, [pc, #176]	; (1bbc <mil_cpy+0xe0>)
    1b0a:	601a      	str	r2, [r3, #0]
    1b0c:	8a02      	ldrh	r2, [r0, #16]
    1b0e:	4b2c      	ldr	r3, [pc, #176]	; (1bc0 <mil_cpy+0xe4>)
    1b10:	601a      	str	r2, [r3, #0]
    1b12:	8a42      	ldrh	r2, [r0, #18]
    1b14:	4b2b      	ldr	r3, [pc, #172]	; (1bc4 <mil_cpy+0xe8>)
    1b16:	601a      	str	r2, [r3, #0]
    1b18:	8a82      	ldrh	r2, [r0, #20]
    1b1a:	4b2b      	ldr	r3, [pc, #172]	; (1bc8 <mil_cpy+0xec>)
    1b1c:	601a      	str	r2, [r3, #0]
    1b1e:	8ac2      	ldrh	r2, [r0, #22]
    1b20:	4b2a      	ldr	r3, [pc, #168]	; (1bcc <mil_cpy+0xf0>)
    1b22:	601a      	str	r2, [r3, #0]
    1b24:	8b02      	ldrh	r2, [r0, #24]
    1b26:	4b2a      	ldr	r3, [pc, #168]	; (1bd0 <mil_cpy+0xf4>)
    1b28:	601a      	str	r2, [r3, #0]
    1b2a:	8b42      	ldrh	r2, [r0, #26]
    1b2c:	4b29      	ldr	r3, [pc, #164]	; (1bd4 <mil_cpy+0xf8>)
    1b2e:	601a      	str	r2, [r3, #0]
    1b30:	8b82      	ldrh	r2, [r0, #28]
    1b32:	4b29      	ldr	r3, [pc, #164]	; (1bd8 <mil_cpy+0xfc>)
    1b34:	601a      	str	r2, [r3, #0]
    1b36:	8bc2      	ldrh	r2, [r0, #30]
    1b38:	4b28      	ldr	r3, [pc, #160]	; (1bdc <mil_cpy+0x100>)
    1b3a:	601a      	str	r2, [r3, #0]
    1b3c:	8c02      	ldrh	r2, [r0, #32]
    1b3e:	4b28      	ldr	r3, [pc, #160]	; (1be0 <mil_cpy+0x104>)
    1b40:	601a      	str	r2, [r3, #0]
    1b42:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1b44:	4b27      	ldr	r3, [pc, #156]	; (1be4 <mil_cpy+0x108>)
    1b46:	601a      	str	r2, [r3, #0]
    1b48:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1b4a:	4b27      	ldr	r3, [pc, #156]	; (1be8 <mil_cpy+0x10c>)
    1b4c:	601a      	str	r2, [r3, #0]
    1b4e:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1b50:	4b26      	ldr	r3, [pc, #152]	; (1bec <mil_cpy+0x110>)
    1b52:	601a      	str	r2, [r3, #0]
    1b54:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1b56:	4b26      	ldr	r3, [pc, #152]	; (1bf0 <mil_cpy+0x114>)
    1b58:	601a      	str	r2, [r3, #0]
    1b5a:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1b5c:	4b25      	ldr	r3, [pc, #148]	; (1bf4 <mil_cpy+0x118>)
    1b5e:	601a      	str	r2, [r3, #0]
    1b60:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1b62:	4b25      	ldr	r3, [pc, #148]	; (1bf8 <mil_cpy+0x11c>)
    1b64:	601a      	str	r2, [r3, #0]
    1b66:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1b68:	4b24      	ldr	r3, [pc, #144]	; (1bfc <mil_cpy+0x120>)
    1b6a:	601a      	str	r2, [r3, #0]
    1b6c:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1b6e:	4b24      	ldr	r3, [pc, #144]	; (1c00 <mil_cpy+0x124>)
    1b70:	601a      	str	r2, [r3, #0]
    1b72:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1b74:	4b23      	ldr	r3, [pc, #140]	; (1c04 <mil_cpy+0x128>)
    1b76:	601a      	str	r2, [r3, #0]
    1b78:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1b7a:	4b23      	ldr	r3, [pc, #140]	; (1c08 <mil_cpy+0x12c>)
    1b7c:	601a      	str	r2, [r3, #0]
    1b7e:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1b80:	4b22      	ldr	r3, [pc, #136]	; (1c0c <mil_cpy+0x130>)
    1b82:	601a      	str	r2, [r3, #0]
    1b84:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1b86:	4b22      	ldr	r3, [pc, #136]	; (1c10 <mil_cpy+0x134>)
    1b88:	601a      	str	r2, [r3, #0]
    1b8a:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1b8c:	4b21      	ldr	r3, [pc, #132]	; (1c14 <mil_cpy+0x138>)
    1b8e:	601a      	str	r2, [r3, #0]
    1b90:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1b92:	4b21      	ldr	r3, [pc, #132]	; (1c18 <mil_cpy+0x13c>)
    1b94:	601a      	str	r2, [r3, #0]
    1b96:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1b98:	4b20      	ldr	r3, [pc, #128]	; (1c1c <mil_cpy+0x140>)
    1b9a:	601a      	str	r2, [r3, #0]
    1b9c:	4770      	bx	lr
    1b9e:	46c0      	nop			; (mov r8, r8)
    1ba0:	40048080 	.word	0x40048080
    1ba4:	40048084 	.word	0x40048084
    1ba8:	40048088 	.word	0x40048088
    1bac:	4004808c 	.word	0x4004808c
    1bb0:	40048090 	.word	0x40048090
    1bb4:	40048094 	.word	0x40048094
    1bb8:	40048098 	.word	0x40048098
    1bbc:	4004809c 	.word	0x4004809c
    1bc0:	400480a0 	.word	0x400480a0
    1bc4:	400480a4 	.word	0x400480a4
    1bc8:	400480a8 	.word	0x400480a8
    1bcc:	400480ac 	.word	0x400480ac
    1bd0:	400480b0 	.word	0x400480b0
    1bd4:	400480b4 	.word	0x400480b4
    1bd8:	400480b8 	.word	0x400480b8
    1bdc:	400480bc 	.word	0x400480bc
    1be0:	400480c0 	.word	0x400480c0
    1be4:	400480c4 	.word	0x400480c4
    1be8:	400480c8 	.word	0x400480c8
    1bec:	400480cc 	.word	0x400480cc
    1bf0:	400480d0 	.word	0x400480d0
    1bf4:	400480d4 	.word	0x400480d4
    1bf8:	400480d8 	.word	0x400480d8
    1bfc:	400480dc 	.word	0x400480dc
    1c00:	400480e0 	.word	0x400480e0
    1c04:	400480e4 	.word	0x400480e4
    1c08:	400480e8 	.word	0x400480e8
    1c0c:	400480ec 	.word	0x400480ec
    1c10:	400480f0 	.word	0x400480f0
    1c14:	400480f4 	.word	0x400480f4
    1c18:	400480f8 	.word	0x400480f8
    1c1c:	400480fc 	.word	0x400480fc

00001c20 <adc_dma_init>:
    1c20:	b580      	push	{r7, lr}
    1c22:	af00      	add	r7, sp, #0
    1c24:	4b18      	ldr	r3, [pc, #96]	; (1c88 <adc_dma_init+0x68>)
    1c26:	4a18      	ldr	r2, [pc, #96]	; (1c88 <adc_dma_init+0x68>)
    1c28:	69d2      	ldr	r2, [r2, #28]
    1c2a:	2120      	movs	r1, #32
    1c2c:	430a      	orrs	r2, r1
    1c2e:	61da      	str	r2, [r3, #28]
    1c30:	4b16      	ldr	r3, [pc, #88]	; (1c8c <adc_dma_init+0x6c>)
    1c32:	4a17      	ldr	r2, [pc, #92]	; (1c90 <adc_dma_init+0x70>)
    1c34:	609a      	str	r2, [r3, #8]
    1c36:	4b15      	ldr	r3, [pc, #84]	; (1c8c <adc_dma_init+0x6c>)
    1c38:	2201      	movs	r2, #1
    1c3a:	4252      	negs	r2, r2
    1c3c:	62da      	str	r2, [r3, #44]	; 0x2c
    1c3e:	4b13      	ldr	r3, [pc, #76]	; (1c8c <adc_dma_init+0x6c>)
    1c40:	2201      	movs	r2, #1
    1c42:	4252      	negs	r2, r2
    1c44:	621a      	str	r2, [r3, #32]
    1c46:	4b11      	ldr	r3, [pc, #68]	; (1c8c <adc_dma_init+0x6c>)
    1c48:	2201      	movs	r2, #1
    1c4a:	4252      	negs	r2, r2
    1c4c:	635a      	str	r2, [r3, #52]	; 0x34
    1c4e:	4b0f      	ldr	r3, [pc, #60]	; (1c8c <adc_dma_init+0x6c>)
    1c50:	2280      	movs	r2, #128	; 0x80
    1c52:	05d2      	lsls	r2, r2, #23
    1c54:	61da      	str	r2, [r3, #28]
    1c56:	4b0d      	ldr	r3, [pc, #52]	; (1c8c <adc_dma_init+0x6c>)
    1c58:	2280      	movs	r2, #128	; 0x80
    1c5a:	05d2      	lsls	r2, r2, #23
    1c5c:	625a      	str	r2, [r3, #36]	; 0x24
    1c5e:	4b0b      	ldr	r3, [pc, #44]	; (1c8c <adc_dma_init+0x6c>)
    1c60:	2201      	movs	r2, #1
    1c62:	605a      	str	r2, [r3, #4]
    1c64:	4a0a      	ldr	r2, [pc, #40]	; (1c90 <adc_dma_init+0x70>)
    1c66:	23f0      	movs	r3, #240	; 0xf0
    1c68:	005b      	lsls	r3, r3, #1
    1c6a:	490a      	ldr	r1, [pc, #40]	; (1c94 <adc_dma_init+0x74>)
    1c6c:	50d1      	str	r1, [r2, r3]
    1c6e:	490a      	ldr	r1, [pc, #40]	; (1c98 <adc_dma_init+0x78>)
    1c70:	4a07      	ldr	r2, [pc, #28]	; (1c90 <adc_dma_init+0x70>)
    1c72:	23f2      	movs	r3, #242	; 0xf2
    1c74:	005b      	lsls	r3, r3, #1
    1c76:	50d1      	str	r1, [r2, r3]
    1c78:	4a05      	ldr	r2, [pc, #20]	; (1c90 <adc_dma_init+0x70>)
    1c7a:	23f4      	movs	r3, #244	; 0xf4
    1c7c:	005b      	lsls	r3, r3, #1
    1c7e:	4907      	ldr	r1, [pc, #28]	; (1c9c <adc_dma_init+0x7c>)
    1c80:	50d1      	str	r1, [r2, r3]
    1c82:	46c0      	nop			; (mov r8, r8)
    1c84:	46bd      	mov	sp, r7
    1c86:	bd80      	pop	{r7, pc}
    1c88:	40020000 	.word	0x40020000
    1c8c:	40028000 	.word	0x40028000
    1c90:	20100000 	.word	0x20100000
    1c94:	40088018 	.word	0x40088018
    1c98:	2010020c 	.word	0x2010020c
    1c9c:	ae000031 	.word	0xae000031

00001ca0 <adc_dma_start>:
    1ca0:	b580      	push	{r7, lr}
    1ca2:	af00      	add	r7, sp, #0
    1ca4:	4b06      	ldr	r3, [pc, #24]	; (1cc0 <adc_dma_start+0x20>)
    1ca6:	4a06      	ldr	r2, [pc, #24]	; (1cc0 <adc_dma_start+0x20>)
    1ca8:	6812      	ldr	r2, [r2, #0]
    1caa:	2108      	movs	r1, #8
    1cac:	430a      	orrs	r2, r1
    1cae:	601a      	str	r2, [r3, #0]
    1cb0:	4b04      	ldr	r3, [pc, #16]	; (1cc4 <adc_dma_start+0x24>)
    1cb2:	2280      	movs	r2, #128	; 0x80
    1cb4:	05d2      	lsls	r2, r2, #23
    1cb6:	629a      	str	r2, [r3, #40]	; 0x28
    1cb8:	46c0      	nop			; (mov r8, r8)
    1cba:	46bd      	mov	sp, r7
    1cbc:	bd80      	pop	{r7, pc}
    1cbe:	46c0      	nop			; (mov r8, r8)
    1cc0:	40088000 	.word	0x40088000
    1cc4:	40028000 	.word	0x40028000

00001cc8 <adc_dma_wait>:
    1cc8:	b580      	push	{r7, lr}
    1cca:	af00      	add	r7, sp, #0
    1ccc:	46c0      	nop			; (mov r8, r8)
    1cce:	4a0a      	ldr	r2, [pc, #40]	; (1cf8 <adc_dma_wait+0x30>)
    1cd0:	23f4      	movs	r3, #244	; 0xf4
    1cd2:	005b      	lsls	r3, r3, #1
    1cd4:	58d3      	ldr	r3, [r2, r3]
    1cd6:	2207      	movs	r2, #7
    1cd8:	4013      	ands	r3, r2
    1cda:	d1f8      	bne.n	1cce <adc_dma_wait+0x6>
    1cdc:	4b07      	ldr	r3, [pc, #28]	; (1cfc <adc_dma_wait+0x34>)
    1cde:	4a07      	ldr	r2, [pc, #28]	; (1cfc <adc_dma_wait+0x34>)
    1ce0:	6812      	ldr	r2, [r2, #0]
    1ce2:	2108      	movs	r1, #8
    1ce4:	438a      	bics	r2, r1
    1ce6:	601a      	str	r2, [r3, #0]
    1ce8:	4a03      	ldr	r2, [pc, #12]	; (1cf8 <adc_dma_wait+0x30>)
    1cea:	23f4      	movs	r3, #244	; 0xf4
    1cec:	005b      	lsls	r3, r3, #1
    1cee:	4904      	ldr	r1, [pc, #16]	; (1d00 <adc_dma_wait+0x38>)
    1cf0:	50d1      	str	r1, [r2, r3]
    1cf2:	46c0      	nop			; (mov r8, r8)
    1cf4:	46bd      	mov	sp, r7
    1cf6:	bd80      	pop	{r7, pc}
    1cf8:	20100000 	.word	0x20100000
    1cfc:	40088000 	.word	0x40088000
    1d00:	ae000031 	.word	0xae000031

00001d04 <adc_dma_check>:
    1d04:	b580      	push	{r7, lr}
    1d06:	af00      	add	r7, sp, #0
    1d08:	4a0b      	ldr	r2, [pc, #44]	; (1d38 <adc_dma_check+0x34>)
    1d0a:	23f4      	movs	r3, #244	; 0xf4
    1d0c:	005b      	lsls	r3, r3, #1
    1d0e:	58d3      	ldr	r3, [r2, r3]
    1d10:	2207      	movs	r2, #7
    1d12:	4013      	ands	r3, r2
    1d14:	d001      	beq.n	1d1a <adc_dma_check+0x16>
    1d16:	2300      	movs	r3, #0
    1d18:	e00b      	b.n	1d32 <adc_dma_check+0x2e>
    1d1a:	4b08      	ldr	r3, [pc, #32]	; (1d3c <adc_dma_check+0x38>)
    1d1c:	4a07      	ldr	r2, [pc, #28]	; (1d3c <adc_dma_check+0x38>)
    1d1e:	6812      	ldr	r2, [r2, #0]
    1d20:	2108      	movs	r1, #8
    1d22:	438a      	bics	r2, r1
    1d24:	601a      	str	r2, [r3, #0]
    1d26:	4a04      	ldr	r2, [pc, #16]	; (1d38 <adc_dma_check+0x34>)
    1d28:	23f4      	movs	r3, #244	; 0xf4
    1d2a:	005b      	lsls	r3, r3, #1
    1d2c:	4904      	ldr	r1, [pc, #16]	; (1d40 <adc_dma_check+0x3c>)
    1d2e:	50d1      	str	r1, [r2, r3]
    1d30:	2301      	movs	r3, #1
    1d32:	0018      	movs	r0, r3
    1d34:	46bd      	mov	sp, r7
    1d36:	bd80      	pop	{r7, pc}
    1d38:	20100000 	.word	0x20100000
    1d3c:	40088000 	.word	0x40088000
    1d40:	ae000031 	.word	0xae000031

00001d44 <__aeabi_uidiv>:
    1d44:	2200      	movs	r2, #0
    1d46:	0843      	lsrs	r3, r0, #1
    1d48:	428b      	cmp	r3, r1
    1d4a:	d374      	bcc.n	1e36 <__aeabi_uidiv+0xf2>
    1d4c:	0903      	lsrs	r3, r0, #4
    1d4e:	428b      	cmp	r3, r1
    1d50:	d35f      	bcc.n	1e12 <__aeabi_uidiv+0xce>
    1d52:	0a03      	lsrs	r3, r0, #8
    1d54:	428b      	cmp	r3, r1
    1d56:	d344      	bcc.n	1de2 <__aeabi_uidiv+0x9e>
    1d58:	0b03      	lsrs	r3, r0, #12
    1d5a:	428b      	cmp	r3, r1
    1d5c:	d328      	bcc.n	1db0 <__aeabi_uidiv+0x6c>
    1d5e:	0c03      	lsrs	r3, r0, #16
    1d60:	428b      	cmp	r3, r1
    1d62:	d30d      	bcc.n	1d80 <__aeabi_uidiv+0x3c>
    1d64:	22ff      	movs	r2, #255	; 0xff
    1d66:	0209      	lsls	r1, r1, #8
    1d68:	ba12      	rev	r2, r2
    1d6a:	0c03      	lsrs	r3, r0, #16
    1d6c:	428b      	cmp	r3, r1
    1d6e:	d302      	bcc.n	1d76 <__aeabi_uidiv+0x32>
    1d70:	1212      	asrs	r2, r2, #8
    1d72:	0209      	lsls	r1, r1, #8
    1d74:	d065      	beq.n	1e42 <__aeabi_uidiv+0xfe>
    1d76:	0b03      	lsrs	r3, r0, #12
    1d78:	428b      	cmp	r3, r1
    1d7a:	d319      	bcc.n	1db0 <__aeabi_uidiv+0x6c>
    1d7c:	e000      	b.n	1d80 <__aeabi_uidiv+0x3c>
    1d7e:	0a09      	lsrs	r1, r1, #8
    1d80:	0bc3      	lsrs	r3, r0, #15
    1d82:	428b      	cmp	r3, r1
    1d84:	d301      	bcc.n	1d8a <__aeabi_uidiv+0x46>
    1d86:	03cb      	lsls	r3, r1, #15
    1d88:	1ac0      	subs	r0, r0, r3
    1d8a:	4152      	adcs	r2, r2
    1d8c:	0b83      	lsrs	r3, r0, #14
    1d8e:	428b      	cmp	r3, r1
    1d90:	d301      	bcc.n	1d96 <__aeabi_uidiv+0x52>
    1d92:	038b      	lsls	r3, r1, #14
    1d94:	1ac0      	subs	r0, r0, r3
    1d96:	4152      	adcs	r2, r2
    1d98:	0b43      	lsrs	r3, r0, #13
    1d9a:	428b      	cmp	r3, r1
    1d9c:	d301      	bcc.n	1da2 <__aeabi_uidiv+0x5e>
    1d9e:	034b      	lsls	r3, r1, #13
    1da0:	1ac0      	subs	r0, r0, r3
    1da2:	4152      	adcs	r2, r2
    1da4:	0b03      	lsrs	r3, r0, #12
    1da6:	428b      	cmp	r3, r1
    1da8:	d301      	bcc.n	1dae <__aeabi_uidiv+0x6a>
    1daa:	030b      	lsls	r3, r1, #12
    1dac:	1ac0      	subs	r0, r0, r3
    1dae:	4152      	adcs	r2, r2
    1db0:	0ac3      	lsrs	r3, r0, #11
    1db2:	428b      	cmp	r3, r1
    1db4:	d301      	bcc.n	1dba <__aeabi_uidiv+0x76>
    1db6:	02cb      	lsls	r3, r1, #11
    1db8:	1ac0      	subs	r0, r0, r3
    1dba:	4152      	adcs	r2, r2
    1dbc:	0a83      	lsrs	r3, r0, #10
    1dbe:	428b      	cmp	r3, r1
    1dc0:	d301      	bcc.n	1dc6 <__aeabi_uidiv+0x82>
    1dc2:	028b      	lsls	r3, r1, #10
    1dc4:	1ac0      	subs	r0, r0, r3
    1dc6:	4152      	adcs	r2, r2
    1dc8:	0a43      	lsrs	r3, r0, #9
    1dca:	428b      	cmp	r3, r1
    1dcc:	d301      	bcc.n	1dd2 <__aeabi_uidiv+0x8e>
    1dce:	024b      	lsls	r3, r1, #9
    1dd0:	1ac0      	subs	r0, r0, r3
    1dd2:	4152      	adcs	r2, r2
    1dd4:	0a03      	lsrs	r3, r0, #8
    1dd6:	428b      	cmp	r3, r1
    1dd8:	d301      	bcc.n	1dde <__aeabi_uidiv+0x9a>
    1dda:	020b      	lsls	r3, r1, #8
    1ddc:	1ac0      	subs	r0, r0, r3
    1dde:	4152      	adcs	r2, r2
    1de0:	d2cd      	bcs.n	1d7e <__aeabi_uidiv+0x3a>
    1de2:	09c3      	lsrs	r3, r0, #7
    1de4:	428b      	cmp	r3, r1
    1de6:	d301      	bcc.n	1dec <__aeabi_uidiv+0xa8>
    1de8:	01cb      	lsls	r3, r1, #7
    1dea:	1ac0      	subs	r0, r0, r3
    1dec:	4152      	adcs	r2, r2
    1dee:	0983      	lsrs	r3, r0, #6
    1df0:	428b      	cmp	r3, r1
    1df2:	d301      	bcc.n	1df8 <__aeabi_uidiv+0xb4>
    1df4:	018b      	lsls	r3, r1, #6
    1df6:	1ac0      	subs	r0, r0, r3
    1df8:	4152      	adcs	r2, r2
    1dfa:	0943      	lsrs	r3, r0, #5
    1dfc:	428b      	cmp	r3, r1
    1dfe:	d301      	bcc.n	1e04 <__aeabi_uidiv+0xc0>
    1e00:	014b      	lsls	r3, r1, #5
    1e02:	1ac0      	subs	r0, r0, r3
    1e04:	4152      	adcs	r2, r2
    1e06:	0903      	lsrs	r3, r0, #4
    1e08:	428b      	cmp	r3, r1
    1e0a:	d301      	bcc.n	1e10 <__aeabi_uidiv+0xcc>
    1e0c:	010b      	lsls	r3, r1, #4
    1e0e:	1ac0      	subs	r0, r0, r3
    1e10:	4152      	adcs	r2, r2
    1e12:	08c3      	lsrs	r3, r0, #3
    1e14:	428b      	cmp	r3, r1
    1e16:	d301      	bcc.n	1e1c <__aeabi_uidiv+0xd8>
    1e18:	00cb      	lsls	r3, r1, #3
    1e1a:	1ac0      	subs	r0, r0, r3
    1e1c:	4152      	adcs	r2, r2
    1e1e:	0883      	lsrs	r3, r0, #2
    1e20:	428b      	cmp	r3, r1
    1e22:	d301      	bcc.n	1e28 <__aeabi_uidiv+0xe4>
    1e24:	008b      	lsls	r3, r1, #2
    1e26:	1ac0      	subs	r0, r0, r3
    1e28:	4152      	adcs	r2, r2
    1e2a:	0843      	lsrs	r3, r0, #1
    1e2c:	428b      	cmp	r3, r1
    1e2e:	d301      	bcc.n	1e34 <__aeabi_uidiv+0xf0>
    1e30:	004b      	lsls	r3, r1, #1
    1e32:	1ac0      	subs	r0, r0, r3
    1e34:	4152      	adcs	r2, r2
    1e36:	1a41      	subs	r1, r0, r1
    1e38:	d200      	bcs.n	1e3c <__aeabi_uidiv+0xf8>
    1e3a:	4601      	mov	r1, r0
    1e3c:	4152      	adcs	r2, r2
    1e3e:	4610      	mov	r0, r2
    1e40:	4770      	bx	lr
    1e42:	e7ff      	b.n	1e44 <__aeabi_uidiv+0x100>
    1e44:	b501      	push	{r0, lr}
    1e46:	2000      	movs	r0, #0
    1e48:	f000 f806 	bl	1e58 <__aeabi_idiv0>
    1e4c:	bd02      	pop	{r1, pc}
    1e4e:	46c0      	nop			; (mov r8, r8)

00001e50 <__aeabi_uidivmod>:
    1e50:	2900      	cmp	r1, #0
    1e52:	d0f7      	beq.n	1e44 <__aeabi_uidiv+0x100>
    1e54:	e776      	b.n	1d44 <__aeabi_uidiv>
    1e56:	4770      	bx	lr

00001e58 <__aeabi_idiv0>:
    1e58:	4770      	bx	lr
    1e5a:	46c0      	nop			; (mov r8, r8)
    1e5c:	6c6c6568 	.word	0x6c6c6568
    1e60:	6f77206f 	.word	0x6f77206f
    1e64:	0d646c72 	.word	0x0d646c72
    1e68:	0000000a 	.word	0x0000000a
    1e6c:	000014fe 	.word	0x000014fe
    1e70:	000014ec 	.word	0x000014ec
    1e74:	0000150a 	.word	0x0000150a
    1e78:	00001516 	.word	0x00001516
    1e7c:	00001516 	.word	0x00001516
    1e80:	00001516 	.word	0x00001516
    1e84:	00001516 	.word	0x00001516
    1e88:	00001516 	.word	0x00001516
    1e8c:	00001516 	.word	0x00001516
    1e90:	00001516 	.word	0x00001516
    1e94:	00001516 	.word	0x00001516
    1e98:	00001516 	.word	0x00001516
    1e9c:	00001516 	.word	0x00001516
    1ea0:	00001504 	.word	0x00001504
    1ea4:	00001516 	.word	0x00001516
    1ea8:	00001516 	.word	0x00001516
    1eac:	00001516 	.word	0x00001516
    1eb0:	00001490 	.word	0x00001490
    1eb4:	00001516 	.word	0x00001516
    1eb8:	0000150a 	.word	0x0000150a
    1ebc:	00001516 	.word	0x00001516
    1ec0:	00001516 	.word	0x00001516
    1ec4:	00001510 	.word	0x00001510
    1ec8:	6c383025 	.word	0x6c383025
    1ecc:	00002058 	.word	0x00002058
    1ed0:	32302520 	.word	0x32302520
    1ed4:	00000058 	.word	0x00000058
    1ed8:	34302520 	.word	0x34302520
    1edc:	00000058 	.word	0x00000058
    1ee0:	38302520 	.word	0x38302520
    1ee4:	0000584c 	.word	0x0000584c
