
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 ad 0b 00 00 0d 0c 00 00 0d 0c 00 00     ... ............
	...
      2c:	0d 0c 00 00 00 00 00 00 00 00 00 00 0d 0c 00 00     ................
      3c:	49 08 00 00 0d 0c 00 00 8d 08 00 00 0d 0c 00 00     I...............
      4c:	0d 0c 00 00 0d 0c 00 00 0d 0c 00 00 61 0e 00 00     ............a...
      5c:	0d 0c 00 00 0d 0c 00 00 0d 0c 00 00 0d 0c 00 00     ................
      6c:	0d 0c 00 00 0d 0c 00 00 61 08 00 00 0d 0c 00 00     ........a.......
      7c:	0d 0c 00 00 0d 0c 00 00 0d 0c 00 00 0d 0c 00 00     ................
      8c:	0d 0c 00 00 0d 0c 00 00 0d 0c 00 00 0d 0c 00 00     ................
      9c:	0d 0c 00 00 0d 0c 00 00 00 00 00 00 00 00 00 00     ................
      ac:	0d 0c 00 00 0d 0c 00 00 0d 0c 00 00 0d 0c 00 00     ................
      bc:	0d 0c 00 00                                         ....

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
     176:	b088      	sub	sp, #32
     178:	af00      	add	r7, sp, #0
     17a:	6078      	str	r0, [r7, #4]
     17c:	4b52      	ldr	r3, [pc, #328]	; (2c8 <update_telemetry+0x154>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b52      	ldr	r3, [pc, #328]	; (2cc <update_telemetry+0x158>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	61fb      	str	r3, [r7, #28]
     18a:	4b51      	ldr	r3, [pc, #324]	; (2d0 <update_telemetry+0x15c>)
     18c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     18e:	2210      	movs	r2, #16
     190:	4013      	ands	r3, r2
     192:	d100      	bne.n	196 <update_telemetry+0x22>
     194:	e084      	b.n	2a0 <update_telemetry+0x12c>
     196:	230c      	movs	r3, #12
     198:	18fb      	adds	r3, r7, r3
     19a:	61bb      	str	r3, [r7, #24]
     19c:	69bb      	ldr	r3, [r7, #24]
     19e:	1c5a      	adds	r2, r3, #1
     1a0:	61ba      	str	r2, [r7, #24]
     1a2:	4a4b      	ldr	r2, [pc, #300]	; (2d0 <update_telemetry+0x15c>)
     1a4:	6812      	ldr	r2, [r2, #0]
     1a6:	b2d2      	uxtb	r2, r2
     1a8:	701a      	strb	r2, [r3, #0]
     1aa:	69bb      	ldr	r3, [r7, #24]
     1ac:	1c5a      	adds	r2, r3, #1
     1ae:	61ba      	str	r2, [r7, #24]
     1b0:	4a47      	ldr	r2, [pc, #284]	; (2d0 <update_telemetry+0x15c>)
     1b2:	6812      	ldr	r2, [r2, #0]
     1b4:	b2d2      	uxtb	r2, r2
     1b6:	701a      	strb	r2, [r3, #0]
     1b8:	69bb      	ldr	r3, [r7, #24]
     1ba:	1c5a      	adds	r2, r3, #1
     1bc:	61ba      	str	r2, [r7, #24]
     1be:	4a44      	ldr	r2, [pc, #272]	; (2d0 <update_telemetry+0x15c>)
     1c0:	6812      	ldr	r2, [r2, #0]
     1c2:	b2d2      	uxtb	r2, r2
     1c4:	701a      	strb	r2, [r3, #0]
     1c6:	69bb      	ldr	r3, [r7, #24]
     1c8:	1c5a      	adds	r2, r3, #1
     1ca:	61ba      	str	r2, [r7, #24]
     1cc:	4a40      	ldr	r2, [pc, #256]	; (2d0 <update_telemetry+0x15c>)
     1ce:	6812      	ldr	r2, [r2, #0]
     1d0:	b2d2      	uxtb	r2, r2
     1d2:	701a      	strb	r2, [r3, #0]
     1d4:	69bb      	ldr	r3, [r7, #24]
     1d6:	1c5a      	adds	r2, r3, #1
     1d8:	61ba      	str	r2, [r7, #24]
     1da:	4a3d      	ldr	r2, [pc, #244]	; (2d0 <update_telemetry+0x15c>)
     1dc:	6812      	ldr	r2, [r2, #0]
     1de:	b2d2      	uxtb	r2, r2
     1e0:	701a      	strb	r2, [r3, #0]
     1e2:	69bb      	ldr	r3, [r7, #24]
     1e4:	1c5a      	adds	r2, r3, #1
     1e6:	61ba      	str	r2, [r7, #24]
     1e8:	4a39      	ldr	r2, [pc, #228]	; (2d0 <update_telemetry+0x15c>)
     1ea:	6812      	ldr	r2, [r2, #0]
     1ec:	b2d2      	uxtb	r2, r2
     1ee:	701a      	strb	r2, [r3, #0]
     1f0:	69bb      	ldr	r3, [r7, #24]
     1f2:	1c5a      	adds	r2, r3, #1
     1f4:	61ba      	str	r2, [r7, #24]
     1f6:	4a36      	ldr	r2, [pc, #216]	; (2d0 <update_telemetry+0x15c>)
     1f8:	6812      	ldr	r2, [r2, #0]
     1fa:	b2d2      	uxtb	r2, r2
     1fc:	701a      	strb	r2, [r3, #0]
     1fe:	69bb      	ldr	r3, [r7, #24]
     200:	1c5a      	adds	r2, r3, #1
     202:	61ba      	str	r2, [r7, #24]
     204:	4a32      	ldr	r2, [pc, #200]	; (2d0 <update_telemetry+0x15c>)
     206:	6812      	ldr	r2, [r2, #0]
     208:	b2d2      	uxtb	r2, r2
     20a:	701a      	strb	r2, [r3, #0]
     20c:	69fb      	ldr	r3, [r7, #28]
     20e:	4a31      	ldr	r2, [pc, #196]	; (2d4 <update_telemetry+0x160>)
     210:	801a      	strh	r2, [r3, #0]
     212:	687b      	ldr	r3, [r7, #4]
     214:	0c1b      	lsrs	r3, r3, #16
     216:	b29a      	uxth	r2, r3
     218:	69fb      	ldr	r3, [r7, #28]
     21a:	805a      	strh	r2, [r3, #2]
     21c:	687b      	ldr	r3, [r7, #4]
     21e:	b29a      	uxth	r2, r3
     220:	69fb      	ldr	r3, [r7, #28]
     222:	809a      	strh	r2, [r3, #4]
     224:	230c      	movs	r3, #12
     226:	18fb      	adds	r3, r7, r3
     228:	2202      	movs	r2, #2
     22a:	5e9a      	ldrsh	r2, [r3, r2]
     22c:	69fb      	ldr	r3, [r7, #28]
     22e:	80da      	strh	r2, [r3, #6]
     230:	69fb      	ldr	r3, [r7, #28]
     232:	2200      	movs	r2, #0
     234:	811a      	strh	r2, [r3, #8]
     236:	69fb      	ldr	r3, [r7, #28]
     238:	2200      	movs	r2, #0
     23a:	815a      	strh	r2, [r3, #10]
     23c:	69fb      	ldr	r3, [r7, #28]
     23e:	2200      	movs	r2, #0
     240:	819a      	strh	r2, [r3, #12]
     242:	230c      	movs	r3, #12
     244:	18fb      	adds	r3, r7, r3
     246:	2200      	movs	r2, #0
     248:	5e9a      	ldrsh	r2, [r3, r2]
     24a:	69fb      	ldr	r3, [r7, #28]
     24c:	81da      	strh	r2, [r3, #14]
     24e:	69fb      	ldr	r3, [r7, #28]
     250:	2200      	movs	r2, #0
     252:	821a      	strh	r2, [r3, #16]
     254:	69fb      	ldr	r3, [r7, #28]
     256:	2200      	movs	r2, #0
     258:	825a      	strh	r2, [r3, #18]
     25a:	69fb      	ldr	r3, [r7, #28]
     25c:	221b      	movs	r2, #27
     25e:	829a      	strh	r2, [r3, #20]
     260:	69fb      	ldr	r3, [r7, #28]
     262:	221b      	movs	r2, #27
     264:	82da      	strh	r2, [r3, #22]
     266:	230c      	movs	r3, #12
     268:	18fb      	adds	r3, r7, r3
     26a:	889a      	ldrh	r2, [r3, #4]
     26c:	69fb      	ldr	r3, [r7, #28]
     26e:	831a      	strh	r2, [r3, #24]
     270:	69fb      	ldr	r3, [r7, #28]
     272:	2200      	movs	r2, #0
     274:	835a      	strh	r2, [r3, #26]
     276:	69fb      	ldr	r3, [r7, #28]
     278:	2200      	movs	r2, #0
     27a:	839a      	strh	r2, [r3, #28]
     27c:	69fb      	ldr	r3, [r7, #28]
     27e:	2201      	movs	r2, #1
     280:	83da      	strh	r2, [r3, #30]
     282:	69fb      	ldr	r3, [r7, #28]
     284:	211f      	movs	r1, #31
     286:	0018      	movs	r0, r3
     288:	f7ff ff36 	bl	f8 <get_checksum>
     28c:	0003      	movs	r3, r0
     28e:	001a      	movs	r2, r3
     290:	69fb      	ldr	r3, [r7, #28]
     292:	87da      	strh	r2, [r3, #62]	; 0x3e
     294:	4b0c      	ldr	r3, [pc, #48]	; (2c8 <update_telemetry+0x154>)
     296:	681b      	ldr	r3, [r3, #0]
     298:	2201      	movs	r2, #1
     29a:	405a      	eors	r2, r3
     29c:	4b0a      	ldr	r3, [pc, #40]	; (2c8 <update_telemetry+0x154>)
     29e:	601a      	str	r2, [r3, #0]
     2a0:	4b0b      	ldr	r3, [pc, #44]	; (2d0 <update_telemetry+0x15c>)
     2a2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     2a4:	2240      	movs	r2, #64	; 0x40
     2a6:	4013      	ands	r3, r2
     2a8:	d00a      	beq.n	2c0 <update_telemetry+0x14c>
     2aa:	e004      	b.n	2b6 <update_telemetry+0x142>
     2ac:	4b08      	ldr	r3, [pc, #32]	; (2d0 <update_telemetry+0x15c>)
     2ae:	681a      	ldr	r2, [r3, #0]
     2b0:	2317      	movs	r3, #23
     2b2:	18fb      	adds	r3, r7, r3
     2b4:	701a      	strb	r2, [r3, #0]
     2b6:	4b06      	ldr	r3, [pc, #24]	; (2d0 <update_telemetry+0x15c>)
     2b8:	699b      	ldr	r3, [r3, #24]
     2ba:	2210      	movs	r2, #16
     2bc:	4013      	ands	r3, r2
     2be:	d0f5      	beq.n	2ac <update_telemetry+0x138>
     2c0:	46c0      	nop			; (mov r8, r8)
     2c2:	46bd      	mov	sp, r7
     2c4:	b008      	add	sp, #32
     2c6:	bd80      	pop	{r7, pc}
     2c8:	200000d8 	.word	0x200000d8
     2cc:	200000d0 	.word	0x200000d0
     2d0:	40030000 	.word	0x40030000
     2d4:	ffffb060 	.word	0xffffb060

000002d8 <send_command>:
     2d8:	b580      	push	{r7, lr}
     2da:	b086      	sub	sp, #24
     2dc:	af00      	add	r7, sp, #0
     2de:	6078      	str	r0, [r7, #4]
     2e0:	687b      	ldr	r3, [r7, #4]
     2e2:	2202      	movs	r2, #2
     2e4:	5e9a      	ldrsh	r2, [r3, r2]
     2e6:	2316      	movs	r3, #22
     2e8:	18fb      	adds	r3, r7, r3
     2ea:	801a      	strh	r2, [r3, #0]
     2ec:	2308      	movs	r3, #8
     2ee:	18fb      	adds	r3, r7, r3
     2f0:	613b      	str	r3, [r7, #16]
     2f2:	4b23      	ldr	r3, [pc, #140]	; (380 <send_command+0xa8>)
     2f4:	687a      	ldr	r2, [r7, #4]
     2f6:	2102      	movs	r1, #2
     2f8:	5e52      	ldrsh	r2, [r2, r1]
     2fa:	b292      	uxth	r2, r2
     2fc:	0011      	movs	r1, r2
     2fe:	22ff      	movs	r2, #255	; 0xff
     300:	400a      	ands	r2, r1
     302:	601a      	str	r2, [r3, #0]
     304:	4b1e      	ldr	r3, [pc, #120]	; (380 <send_command+0xa8>)
     306:	687a      	ldr	r2, [r7, #4]
     308:	2102      	movs	r1, #2
     30a:	5e52      	ldrsh	r2, [r2, r1]
     30c:	1212      	asrs	r2, r2, #8
     30e:	b212      	sxth	r2, r2
     310:	b292      	uxth	r2, r2
     312:	0011      	movs	r1, r2
     314:	22ff      	movs	r2, #255	; 0xff
     316:	400a      	ands	r2, r1
     318:	601a      	str	r2, [r3, #0]
     31a:	4b19      	ldr	r3, [pc, #100]	; (380 <send_command+0xa8>)
     31c:	687a      	ldr	r2, [r7, #4]
     31e:	2104      	movs	r1, #4
     320:	5e52      	ldrsh	r2, [r2, r1]
     322:	b292      	uxth	r2, r2
     324:	0011      	movs	r1, r2
     326:	22ff      	movs	r2, #255	; 0xff
     328:	400a      	ands	r2, r1
     32a:	601a      	str	r2, [r3, #0]
     32c:	4b14      	ldr	r3, [pc, #80]	; (380 <send_command+0xa8>)
     32e:	687a      	ldr	r2, [r7, #4]
     330:	2104      	movs	r1, #4
     332:	5e52      	ldrsh	r2, [r2, r1]
     334:	1212      	asrs	r2, r2, #8
     336:	b212      	sxth	r2, r2
     338:	b292      	uxth	r2, r2
     33a:	0011      	movs	r1, r2
     33c:	22ff      	movs	r2, #255	; 0xff
     33e:	400a      	ands	r2, r1
     340:	601a      	str	r2, [r3, #0]
     342:	4b0f      	ldr	r3, [pc, #60]	; (380 <send_command+0xa8>)
     344:	687a      	ldr	r2, [r7, #4]
     346:	2106      	movs	r1, #6
     348:	5e52      	ldrsh	r2, [r2, r1]
     34a:	b292      	uxth	r2, r2
     34c:	0011      	movs	r1, r2
     34e:	22ff      	movs	r2, #255	; 0xff
     350:	400a      	ands	r2, r1
     352:	601a      	str	r2, [r3, #0]
     354:	4b0a      	ldr	r3, [pc, #40]	; (380 <send_command+0xa8>)
     356:	687a      	ldr	r2, [r7, #4]
     358:	2106      	movs	r1, #6
     35a:	5e52      	ldrsh	r2, [r2, r1]
     35c:	1212      	asrs	r2, r2, #8
     35e:	b212      	sxth	r2, r2
     360:	b292      	uxth	r2, r2
     362:	0011      	movs	r1, r2
     364:	22ff      	movs	r2, #255	; 0xff
     366:	400a      	ands	r2, r1
     368:	601a      	str	r2, [r3, #0]
     36a:	4b05      	ldr	r3, [pc, #20]	; (380 <send_command+0xa8>)
     36c:	2200      	movs	r2, #0
     36e:	601a      	str	r2, [r3, #0]
     370:	4b03      	ldr	r3, [pc, #12]	; (380 <send_command+0xa8>)
     372:	2200      	movs	r2, #0
     374:	601a      	str	r2, [r3, #0]
     376:	46c0      	nop			; (mov r8, r8)
     378:	46bd      	mov	sp, r7
     37a:	b006      	add	sp, #24
     37c:	bd80      	pop	{r7, pc}
     37e:	46c0      	nop			; (mov r8, r8)
     380:	40030000 	.word	0x40030000

00000384 <main>:
     384:	b590      	push	{r4, r7, lr}
     386:	b0a7      	sub	sp, #156	; 0x9c
     388:	af00      	add	r7, sp, #0
     38a:	2380      	movs	r3, #128	; 0x80
     38c:	18fb      	adds	r3, r7, r3
     38e:	4a29      	ldr	r2, [pc, #164]	; (434 <_stack_size+0x34>)
     390:	ca13      	ldmia	r2!, {r0, r1, r4}
     392:	c313      	stmia	r3!, {r0, r1, r4}
     394:	8812      	ldrh	r2, [r2, #0]
     396:	801a      	strh	r2, [r3, #0]
     398:	f000 fa44 	bl	824 <SystemInit>
     39c:	4b26      	ldr	r3, [pc, #152]	; (438 <_stack_size+0x38>)
     39e:	2200      	movs	r2, #0
     3a0:	601a      	str	r2, [r3, #0]
     3a2:	2300      	movs	r3, #0
     3a4:	2294      	movs	r2, #148	; 0x94
     3a6:	18ba      	adds	r2, r7, r2
     3a8:	6013      	str	r3, [r2, #0]
     3aa:	4b24      	ldr	r3, [pc, #144]	; (43c <_stack_size+0x3c>)
     3ac:	2200      	movs	r2, #0
     3ae:	601a      	str	r2, [r3, #0]
     3b0:	4b23      	ldr	r3, [pc, #140]	; (440 <_stack_size+0x40>)
     3b2:	4a24      	ldr	r2, [pc, #144]	; (444 <_stack_size+0x44>)
     3b4:	601a      	str	r2, [r3, #0]
     3b6:	4b22      	ldr	r3, [pc, #136]	; (440 <_stack_size+0x40>)
     3b8:	4a23      	ldr	r2, [pc, #140]	; (448 <_stack_size+0x48>)
     3ba:	605a      	str	r2, [r3, #4]
     3bc:	4b23      	ldr	r3, [pc, #140]	; (44c <_stack_size+0x4c>)
     3be:	2200      	movs	r2, #0
     3c0:	601a      	str	r2, [r3, #0]
     3c2:	4b23      	ldr	r3, [pc, #140]	; (450 <_stack_size+0x50>)
     3c4:	681b      	ldr	r3, [r3, #0]
     3c6:	2b00      	cmp	r3, #0
     3c8:	d02d      	beq.n	426 <_stack_size+0x26>
     3ca:	4b22      	ldr	r3, [pc, #136]	; (454 <_stack_size+0x54>)
     3cc:	881b      	ldrh	r3, [r3, #0]
     3ce:	2220      	movs	r2, #32
     3d0:	4013      	ands	r3, r2
     3d2:	b29b      	uxth	r3, r3
     3d4:	2b00      	cmp	r3, #0
     3d6:	d01f      	beq.n	418 <_stack_size+0x18>
     3d8:	4b1e      	ldr	r3, [pc, #120]	; (454 <_stack_size+0x54>)
     3da:	2202      	movs	r2, #2
     3dc:	5e9b      	ldrsh	r3, [r3, r2]
     3de:	2b00      	cmp	r3, #0
     3e0:	da06      	bge.n	3f0 <main+0x6c>
     3e2:	4b1c      	ldr	r3, [pc, #112]	; (454 <_stack_size+0x54>)
     3e4:	2202      	movs	r2, #2
     3e6:	5e9b      	ldrsh	r3, [r3, r2]
     3e8:	4a1b      	ldr	r2, [pc, #108]	; (458 <_stack_size+0x58>)
     3ea:	4694      	mov	ip, r2
     3ec:	4463      	add	r3, ip
     3ee:	e002      	b.n	3f6 <main+0x72>
     3f0:	4b18      	ldr	r3, [pc, #96]	; (454 <_stack_size+0x54>)
     3f2:	2202      	movs	r2, #2
     3f4:	5e9b      	ldrsh	r3, [r3, r2]
     3f6:	2290      	movs	r2, #144	; 0x90
     3f8:	18ba      	adds	r2, r7, r2
     3fa:	6013      	str	r3, [r2, #0]
     3fc:	4b17      	ldr	r3, [pc, #92]	; (45c <_stack_size+0x5c>)
     3fe:	2290      	movs	r2, #144	; 0x90
     400:	18ba      	adds	r2, r7, r2
     402:	6812      	ldr	r2, [r2, #0]
     404:	2180      	movs	r1, #128	; 0x80
     406:	0109      	lsls	r1, r1, #4
     408:	468c      	mov	ip, r1
     40a:	4462      	add	r2, ip
     40c:	605a      	str	r2, [r3, #4]
     40e:	4b11      	ldr	r3, [pc, #68]	; (454 <_stack_size+0x54>)
     410:	0018      	movs	r0, r3
     412:	f7ff ff61 	bl	2d8 <send_command>
     416:	e003      	b.n	420 <_stack_size+0x20>
     418:	4b10      	ldr	r3, [pc, #64]	; (45c <_stack_size+0x5c>)
     41a:	2280      	movs	r2, #128	; 0x80
     41c:	0112      	lsls	r2, r2, #4
     41e:	605a      	str	r2, [r3, #4]
     420:	4b0b      	ldr	r3, [pc, #44]	; (450 <_stack_size+0x50>)
     422:	2200      	movs	r2, #0
     424:	601a      	str	r2, [r3, #0]
     426:	4b0e      	ldr	r3, [pc, #56]	; (460 <_stack_size+0x60>)
     428:	681b      	ldr	r3, [r3, #0]
     42a:	0018      	movs	r0, r3
     42c:	f7ff fea2 	bl	174 <update_telemetry>
     430:	e7c7      	b.n	3c2 <main+0x3e>
     432:	46c0      	nop			; (mov r8, r8)
     434:	00001988 	.word	0x00001988
     438:	200000dc 	.word	0x200000dc
     43c:	200000e0 	.word	0x200000e0
     440:	200000d0 	.word	0x200000d0
     444:	20000044 	.word	0x20000044
     448:	20000084 	.word	0x20000084
     44c:	200000d8 	.word	0x200000d8
     450:	200000e8 	.word	0x200000e8
     454:	200000c4 	.word	0x200000c4
     458:	ffff0000 	.word	0xffff0000
     45c:	40090000 	.word	0x40090000
     460:	200000e4 	.word	0x200000e4

00000464 <PortConfig>:
     464:	b580      	push	{r7, lr}
     466:	af00      	add	r7, sp, #0
     468:	4b56      	ldr	r3, [pc, #344]	; (5c4 <PortConfig+0x160>)
     46a:	4a56      	ldr	r2, [pc, #344]	; (5c4 <PortConfig+0x160>)
     46c:	69d2      	ldr	r2, [r2, #28]
     46e:	2180      	movs	r1, #128	; 0x80
     470:	0449      	lsls	r1, r1, #17
     472:	430a      	orrs	r2, r1
     474:	61da      	str	r2, [r3, #28]
     476:	4b54      	ldr	r3, [pc, #336]	; (5c8 <PortConfig+0x164>)
     478:	2200      	movs	r2, #0
     47a:	609a      	str	r2, [r3, #8]
     47c:	4b52      	ldr	r3, [pc, #328]	; (5c8 <PortConfig+0x164>)
     47e:	2200      	movs	r2, #0
     480:	601a      	str	r2, [r3, #0]
     482:	4b51      	ldr	r3, [pc, #324]	; (5c8 <PortConfig+0x164>)
     484:	22ff      	movs	r2, #255	; 0xff
     486:	01d2      	lsls	r2, r2, #7
     488:	605a      	str	r2, [r3, #4]
     48a:	4b4f      	ldr	r3, [pc, #316]	; (5c8 <PortConfig+0x164>)
     48c:	22ff      	movs	r2, #255	; 0xff
     48e:	01d2      	lsls	r2, r2, #7
     490:	60da      	str	r2, [r3, #12]
     492:	4b4d      	ldr	r3, [pc, #308]	; (5c8 <PortConfig+0x164>)
     494:	4a4d      	ldr	r2, [pc, #308]	; (5cc <PortConfig+0x168>)
     496:	619a      	str	r2, [r3, #24]
     498:	4b4a      	ldr	r3, [pc, #296]	; (5c4 <PortConfig+0x160>)
     49a:	4a4a      	ldr	r2, [pc, #296]	; (5c4 <PortConfig+0x160>)
     49c:	69d2      	ldr	r2, [r2, #28]
     49e:	2180      	movs	r1, #128	; 0x80
     4a0:	0409      	lsls	r1, r1, #16
     4a2:	430a      	orrs	r2, r1
     4a4:	61da      	str	r2, [r3, #28]
     4a6:	4b47      	ldr	r3, [pc, #284]	; (5c4 <PortConfig+0x160>)
     4a8:	4a46      	ldr	r2, [pc, #280]	; (5c4 <PortConfig+0x160>)
     4aa:	69d2      	ldr	r2, [r2, #28]
     4ac:	2180      	movs	r1, #128	; 0x80
     4ae:	0449      	lsls	r1, r1, #17
     4b0:	430a      	orrs	r2, r1
     4b2:	61da      	str	r2, [r3, #28]
     4b4:	4b46      	ldr	r3, [pc, #280]	; (5d0 <PortConfig+0x16c>)
     4b6:	4a46      	ldr	r2, [pc, #280]	; (5d0 <PortConfig+0x16c>)
     4b8:	6892      	ldr	r2, [r2, #8]
     4ba:	0192      	lsls	r2, r2, #6
     4bc:	0992      	lsrs	r2, r2, #6
     4be:	609a      	str	r2, [r3, #8]
     4c0:	4b43      	ldr	r3, [pc, #268]	; (5d0 <PortConfig+0x16c>)
     4c2:	4a43      	ldr	r2, [pc, #268]	; (5d0 <PortConfig+0x16c>)
     4c4:	6892      	ldr	r2, [r2, #8]
     4c6:	21a8      	movs	r1, #168	; 0xa8
     4c8:	05c9      	lsls	r1, r1, #23
     4ca:	430a      	orrs	r2, r1
     4cc:	609a      	str	r2, [r3, #8]
     4ce:	4b40      	ldr	r3, [pc, #256]	; (5d0 <PortConfig+0x16c>)
     4d0:	4a3f      	ldr	r2, [pc, #252]	; (5d0 <PortConfig+0x16c>)
     4d2:	68d2      	ldr	r2, [r2, #12]
     4d4:	21e0      	movs	r1, #224	; 0xe0
     4d6:	0209      	lsls	r1, r1, #8
     4d8:	430a      	orrs	r2, r1
     4da:	60da      	str	r2, [r3, #12]
     4dc:	4b3c      	ldr	r3, [pc, #240]	; (5d0 <PortConfig+0x16c>)
     4de:	4a3c      	ldr	r2, [pc, #240]	; (5d0 <PortConfig+0x16c>)
     4e0:	6992      	ldr	r2, [r2, #24]
     4e2:	21fc      	movs	r1, #252	; 0xfc
     4e4:	0609      	lsls	r1, r1, #24
     4e6:	430a      	orrs	r2, r1
     4e8:	619a      	str	r2, [r3, #24]
     4ea:	4b37      	ldr	r3, [pc, #220]	; (5c8 <PortConfig+0x164>)
     4ec:	4a36      	ldr	r2, [pc, #216]	; (5c8 <PortConfig+0x164>)
     4ee:	6892      	ldr	r2, [r2, #8]
     4f0:	0b92      	lsrs	r2, r2, #14
     4f2:	0392      	lsls	r2, r2, #14
     4f4:	609a      	str	r2, [r3, #8]
     4f6:	4b34      	ldr	r3, [pc, #208]	; (5c8 <PortConfig+0x164>)
     4f8:	4a33      	ldr	r2, [pc, #204]	; (5c8 <PortConfig+0x164>)
     4fa:	6892      	ldr	r2, [r2, #8]
     4fc:	4935      	ldr	r1, [pc, #212]	; (5d4 <PortConfig+0x170>)
     4fe:	430a      	orrs	r2, r1
     500:	609a      	str	r2, [r3, #8]
     502:	4b31      	ldr	r3, [pc, #196]	; (5c8 <PortConfig+0x164>)
     504:	4a30      	ldr	r2, [pc, #192]	; (5c8 <PortConfig+0x164>)
     506:	68d2      	ldr	r2, [r2, #12]
     508:	217f      	movs	r1, #127	; 0x7f
     50a:	430a      	orrs	r2, r1
     50c:	60da      	str	r2, [r3, #12]
     50e:	4b2e      	ldr	r3, [pc, #184]	; (5c8 <PortConfig+0x164>)
     510:	4a2d      	ldr	r2, [pc, #180]	; (5c8 <PortConfig+0x164>)
     512:	6992      	ldr	r2, [r2, #24]
     514:	4930      	ldr	r1, [pc, #192]	; (5d8 <PortConfig+0x174>)
     516:	430a      	orrs	r2, r1
     518:	619a      	str	r2, [r3, #24]
     51a:	4b2a      	ldr	r3, [pc, #168]	; (5c4 <PortConfig+0x160>)
     51c:	4a29      	ldr	r2, [pc, #164]	; (5c4 <PortConfig+0x160>)
     51e:	69d2      	ldr	r2, [r2, #28]
     520:	2180      	movs	r1, #128	; 0x80
     522:	0489      	lsls	r1, r1, #18
     524:	430a      	orrs	r2, r1
     526:	61da      	str	r2, [r3, #28]
     528:	4b2c      	ldr	r3, [pc, #176]	; (5dc <PortConfig+0x178>)
     52a:	4a2c      	ldr	r2, [pc, #176]	; (5dc <PortConfig+0x178>)
     52c:	68d2      	ldr	r2, [r2, #12]
     52e:	2102      	movs	r1, #2
     530:	438a      	bics	r2, r1
     532:	60da      	str	r2, [r3, #12]
     534:	4b29      	ldr	r3, [pc, #164]	; (5dc <PortConfig+0x178>)
     536:	4a29      	ldr	r2, [pc, #164]	; (5dc <PortConfig+0x178>)
     538:	68d2      	ldr	r2, [r2, #12]
     53a:	2108      	movs	r1, #8
     53c:	430a      	orrs	r2, r1
     53e:	60da      	str	r2, [r3, #12]
     540:	4b26      	ldr	r3, [pc, #152]	; (5dc <PortConfig+0x178>)
     542:	4a26      	ldr	r2, [pc, #152]	; (5dc <PortConfig+0x178>)
     544:	6892      	ldr	r2, [r2, #8]
     546:	21c0      	movs	r1, #192	; 0xc0
     548:	438a      	bics	r2, r1
     54a:	609a      	str	r2, [r3, #8]
     54c:	4b23      	ldr	r3, [pc, #140]	; (5dc <PortConfig+0x178>)
     54e:	4a23      	ldr	r2, [pc, #140]	; (5dc <PortConfig+0x178>)
     550:	6892      	ldr	r2, [r2, #8]
     552:	2140      	movs	r1, #64	; 0x40
     554:	430a      	orrs	r2, r1
     556:	609a      	str	r2, [r3, #8]
     558:	4b20      	ldr	r3, [pc, #128]	; (5dc <PortConfig+0x178>)
     55a:	4a20      	ldr	r2, [pc, #128]	; (5dc <PortConfig+0x178>)
     55c:	6992      	ldr	r2, [r2, #24]
     55e:	21c0      	movs	r1, #192	; 0xc0
     560:	430a      	orrs	r2, r1
     562:	619a      	str	r2, [r3, #24]
     564:	4b1d      	ldr	r3, [pc, #116]	; (5dc <PortConfig+0x178>)
     566:	4a1d      	ldr	r2, [pc, #116]	; (5dc <PortConfig+0x178>)
     568:	6852      	ldr	r2, [r2, #4]
     56a:	2108      	movs	r1, #8
     56c:	430a      	orrs	r2, r1
     56e:	605a      	str	r2, [r3, #4]
     570:	4b14      	ldr	r3, [pc, #80]	; (5c4 <PortConfig+0x160>)
     572:	4a14      	ldr	r2, [pc, #80]	; (5c4 <PortConfig+0x160>)
     574:	69d2      	ldr	r2, [r2, #28]
     576:	2180      	movs	r1, #128	; 0x80
     578:	0409      	lsls	r1, r1, #16
     57a:	430a      	orrs	r2, r1
     57c:	61da      	str	r2, [r3, #28]
     57e:	4b14      	ldr	r3, [pc, #80]	; (5d0 <PortConfig+0x16c>)
     580:	4a13      	ldr	r2, [pc, #76]	; (5d0 <PortConfig+0x16c>)
     582:	6892      	ldr	r2, [r2, #8]
     584:	4916      	ldr	r1, [pc, #88]	; (5e0 <PortConfig+0x17c>)
     586:	400a      	ands	r2, r1
     588:	609a      	str	r2, [r3, #8]
     58a:	4b11      	ldr	r3, [pc, #68]	; (5d0 <PortConfig+0x16c>)
     58c:	4a10      	ldr	r2, [pc, #64]	; (5d0 <PortConfig+0x16c>)
     58e:	6892      	ldr	r2, [r2, #8]
     590:	21a0      	movs	r1, #160	; 0xa0
     592:	0049      	lsls	r1, r1, #1
     594:	430a      	orrs	r2, r1
     596:	609a      	str	r2, [r3, #8]
     598:	4b0d      	ldr	r3, [pc, #52]	; (5d0 <PortConfig+0x16c>)
     59a:	4a0d      	ldr	r2, [pc, #52]	; (5d0 <PortConfig+0x16c>)
     59c:	68d2      	ldr	r2, [r2, #12]
     59e:	2118      	movs	r1, #24
     5a0:	430a      	orrs	r2, r1
     5a2:	60da      	str	r2, [r3, #12]
     5a4:	4b0a      	ldr	r3, [pc, #40]	; (5d0 <PortConfig+0x16c>)
     5a6:	4a0a      	ldr	r2, [pc, #40]	; (5d0 <PortConfig+0x16c>)
     5a8:	6992      	ldr	r2, [r2, #24]
     5aa:	21f0      	movs	r1, #240	; 0xf0
     5ac:	0089      	lsls	r1, r1, #2
     5ae:	430a      	orrs	r2, r1
     5b0:	619a      	str	r2, [r3, #24]
     5b2:	4b07      	ldr	r3, [pc, #28]	; (5d0 <PortConfig+0x16c>)
     5b4:	4a06      	ldr	r2, [pc, #24]	; (5d0 <PortConfig+0x16c>)
     5b6:	6812      	ldr	r2, [r2, #0]
     5b8:	2118      	movs	r1, #24
     5ba:	438a      	bics	r2, r1
     5bc:	601a      	str	r2, [r3, #0]
     5be:	46c0      	nop			; (mov r8, r8)
     5c0:	46bd      	mov	sp, r7
     5c2:	bd80      	pop	{r7, pc}
     5c4:	40020000 	.word	0x40020000
     5c8:	400c0000 	.word	0x400c0000
     5cc:	3fffc000 	.word	0x3fffc000
     5d0:	400b8000 	.word	0x400b8000
     5d4:	00001555 	.word	0x00001555
     5d8:	00003fff 	.word	0x00003fff
     5dc:	400c8000 	.word	0x400c8000
     5e0:	fffffc3f 	.word	0xfffffc3f

000005e4 <dac_init>:
     5e4:	b580      	push	{r7, lr}
     5e6:	af00      	add	r7, sp, #0
     5e8:	4b07      	ldr	r3, [pc, #28]	; (608 <dac_init+0x24>)
     5ea:	4a07      	ldr	r2, [pc, #28]	; (608 <dac_init+0x24>)
     5ec:	69d2      	ldr	r2, [r2, #28]
     5ee:	2180      	movs	r1, #128	; 0x80
     5f0:	02c9      	lsls	r1, r1, #11
     5f2:	430a      	orrs	r2, r1
     5f4:	61da      	str	r2, [r3, #28]
     5f6:	4b05      	ldr	r3, [pc, #20]	; (60c <dac_init+0x28>)
     5f8:	4a04      	ldr	r2, [pc, #16]	; (60c <dac_init+0x28>)
     5fa:	6812      	ldr	r2, [r2, #0]
     5fc:	2104      	movs	r1, #4
     5fe:	430a      	orrs	r2, r1
     600:	601a      	str	r2, [r3, #0]
     602:	46c0      	nop			; (mov r8, r8)
     604:	46bd      	mov	sp, r7
     606:	bd80      	pop	{r7, pc}
     608:	40020000 	.word	0x40020000
     60c:	40090000 	.word	0x40090000

00000610 <ClkConfig>:
     610:	b580      	push	{r7, lr}
     612:	af00      	add	r7, sp, #0
     614:	4b18      	ldr	r3, [pc, #96]	; (678 <ClkConfig+0x68>)
     616:	4a18      	ldr	r2, [pc, #96]	; (678 <ClkConfig+0x68>)
     618:	6892      	ldr	r2, [r2, #8]
     61a:	2101      	movs	r1, #1
     61c:	430a      	orrs	r2, r1
     61e:	609a      	str	r2, [r3, #8]
     620:	46c0      	nop			; (mov r8, r8)
     622:	4b15      	ldr	r3, [pc, #84]	; (678 <ClkConfig+0x68>)
     624:	681b      	ldr	r3, [r3, #0]
     626:	2204      	movs	r2, #4
     628:	4013      	ands	r3, r2
     62a:	d0fa      	beq.n	622 <ClkConfig+0x12>
     62c:	4b12      	ldr	r3, [pc, #72]	; (678 <ClkConfig+0x68>)
     62e:	4a12      	ldr	r2, [pc, #72]	; (678 <ClkConfig+0x68>)
     630:	68d2      	ldr	r2, [r2, #12]
     632:	2102      	movs	r1, #2
     634:	430a      	orrs	r2, r1
     636:	60da      	str	r2, [r3, #12]
     638:	4b0f      	ldr	r3, [pc, #60]	; (678 <ClkConfig+0x68>)
     63a:	4a10      	ldr	r2, [pc, #64]	; (67c <ClkConfig+0x6c>)
     63c:	605a      	str	r2, [r3, #4]
     63e:	46c0      	nop			; (mov r8, r8)
     640:	4b0d      	ldr	r3, [pc, #52]	; (678 <ClkConfig+0x68>)
     642:	681b      	ldr	r3, [r3, #0]
     644:	2202      	movs	r2, #2
     646:	4013      	ands	r3, r2
     648:	d0fa      	beq.n	640 <ClkConfig+0x30>
     64a:	4b0d      	ldr	r3, [pc, #52]	; (680 <ClkConfig+0x70>)
     64c:	4a0c      	ldr	r2, [pc, #48]	; (680 <ClkConfig+0x70>)
     64e:	6812      	ldr	r2, [r2, #0]
     650:	2120      	movs	r1, #32
     652:	430a      	orrs	r2, r1
     654:	601a      	str	r2, [r3, #0]
     656:	4b08      	ldr	r3, [pc, #32]	; (678 <ClkConfig+0x68>)
     658:	4a07      	ldr	r2, [pc, #28]	; (678 <ClkConfig+0x68>)
     65a:	68d2      	ldr	r2, [r2, #12]
     65c:	2180      	movs	r1, #128	; 0x80
     65e:	0049      	lsls	r1, r1, #1
     660:	430a      	orrs	r2, r1
     662:	60da      	str	r2, [r3, #12]
     664:	4b04      	ldr	r3, [pc, #16]	; (678 <ClkConfig+0x68>)
     666:	4a04      	ldr	r2, [pc, #16]	; (678 <ClkConfig+0x68>)
     668:	68d2      	ldr	r2, [r2, #12]
     66a:	2104      	movs	r1, #4
     66c:	430a      	orrs	r2, r1
     66e:	60da      	str	r2, [r3, #12]
     670:	46c0      	nop			; (mov r8, r8)
     672:	46bd      	mov	sp, r7
     674:	bd80      	pop	{r7, pc}
     676:	46c0      	nop			; (mov r8, r8)
     678:	40020000 	.word	0x40020000
     67c:	00000e04 	.word	0x00000e04
     680:	40018000 	.word	0x40018000

00000684 <TimerConfig>:
     684:	b580      	push	{r7, lr}
     686:	af00      	add	r7, sp, #0
     688:	4b37      	ldr	r3, [pc, #220]	; (768 <TimerConfig+0xe4>)
     68a:	4a37      	ldr	r2, [pc, #220]	; (768 <TimerConfig+0xe4>)
     68c:	69d2      	ldr	r2, [r2, #28]
     68e:	2180      	movs	r1, #128	; 0x80
     690:	01c9      	lsls	r1, r1, #7
     692:	430a      	orrs	r2, r1
     694:	61da      	str	r2, [r3, #28]
     696:	4b34      	ldr	r3, [pc, #208]	; (768 <TimerConfig+0xe4>)
     698:	4a33      	ldr	r2, [pc, #204]	; (768 <TimerConfig+0xe4>)
     69a:	6a52      	ldr	r2, [r2, #36]	; 0x24
     69c:	2180      	movs	r1, #128	; 0x80
     69e:	0449      	lsls	r1, r1, #17
     6a0:	430a      	orrs	r2, r1
     6a2:	625a      	str	r2, [r3, #36]	; 0x24
     6a4:	4b30      	ldr	r3, [pc, #192]	; (768 <TimerConfig+0xe4>)
     6a6:	4a30      	ldr	r2, [pc, #192]	; (768 <TimerConfig+0xe4>)
     6a8:	6a52      	ldr	r2, [r2, #36]	; 0x24
     6aa:	21ff      	movs	r1, #255	; 0xff
     6ac:	438a      	bics	r2, r1
     6ae:	625a      	str	r2, [r3, #36]	; 0x24
     6b0:	4b2e      	ldr	r3, [pc, #184]	; (76c <TimerConfig+0xe8>)
     6b2:	2200      	movs	r2, #0
     6b4:	601a      	str	r2, [r3, #0]
     6b6:	4b2d      	ldr	r3, [pc, #180]	; (76c <TimerConfig+0xe8>)
     6b8:	2277      	movs	r2, #119	; 0x77
     6ba:	605a      	str	r2, [r3, #4]
     6bc:	4b2b      	ldr	r3, [pc, #172]	; (76c <TimerConfig+0xe8>)
     6be:	4a2c      	ldr	r2, [pc, #176]	; (770 <TimerConfig+0xec>)
     6c0:	609a      	str	r2, [r3, #8]
     6c2:	4b2a      	ldr	r3, [pc, #168]	; (76c <TimerConfig+0xe8>)
     6c4:	22fa      	movs	r2, #250	; 0xfa
     6c6:	0052      	lsls	r2, r2, #1
     6c8:	611a      	str	r2, [r3, #16]
     6ca:	4b28      	ldr	r3, [pc, #160]	; (76c <TimerConfig+0xe8>)
     6cc:	4a27      	ldr	r2, [pc, #156]	; (76c <TimerConfig+0xe8>)
     6ce:	6a12      	ldr	r2, [r2, #32]
     6d0:	4928      	ldr	r1, [pc, #160]	; (774 <TimerConfig+0xf0>)
     6d2:	400a      	ands	r2, r1
     6d4:	621a      	str	r2, [r3, #32]
     6d6:	4b25      	ldr	r3, [pc, #148]	; (76c <TimerConfig+0xe8>)
     6d8:	4a24      	ldr	r2, [pc, #144]	; (76c <TimerConfig+0xe8>)
     6da:	6a12      	ldr	r2, [r2, #32]
     6dc:	21e0      	movs	r1, #224	; 0xe0
     6de:	0109      	lsls	r1, r1, #4
     6e0:	430a      	orrs	r2, r1
     6e2:	621a      	str	r2, [r3, #32]
     6e4:	4b21      	ldr	r3, [pc, #132]	; (76c <TimerConfig+0xe8>)
     6e6:	4a21      	ldr	r2, [pc, #132]	; (76c <TimerConfig+0xe8>)
     6e8:	6b12      	ldr	r2, [r2, #48]	; 0x30
     6ea:	210f      	movs	r1, #15
     6ec:	438a      	bics	r2, r1
     6ee:	631a      	str	r2, [r3, #48]	; 0x30
     6f0:	4b1e      	ldr	r3, [pc, #120]	; (76c <TimerConfig+0xe8>)
     6f2:	4a1e      	ldr	r2, [pc, #120]	; (76c <TimerConfig+0xe8>)
     6f4:	6b12      	ldr	r2, [r2, #48]	; 0x30
     6f6:	210c      	movs	r1, #12
     6f8:	430a      	orrs	r2, r1
     6fa:	631a      	str	r2, [r3, #48]	; 0x30
     6fc:	4b1b      	ldr	r3, [pc, #108]	; (76c <TimerConfig+0xe8>)
     6fe:	4a1b      	ldr	r2, [pc, #108]	; (76c <TimerConfig+0xe8>)
     700:	6b12      	ldr	r2, [r2, #48]	; 0x30
     702:	2101      	movs	r1, #1
     704:	430a      	orrs	r2, r1
     706:	631a      	str	r2, [r3, #48]	; 0x30
     708:	4b18      	ldr	r3, [pc, #96]	; (76c <TimerConfig+0xe8>)
     70a:	2201      	movs	r2, #1
     70c:	60da      	str	r2, [r3, #12]
     70e:	4b16      	ldr	r3, [pc, #88]	; (768 <TimerConfig+0xe4>)
     710:	4a15      	ldr	r2, [pc, #84]	; (768 <TimerConfig+0xe4>)
     712:	69d2      	ldr	r2, [r2, #28]
     714:	2180      	movs	r1, #128	; 0x80
     716:	0309      	lsls	r1, r1, #12
     718:	430a      	orrs	r2, r1
     71a:	61da      	str	r2, [r3, #28]
     71c:	4b12      	ldr	r3, [pc, #72]	; (768 <TimerConfig+0xe4>)
     71e:	4a12      	ldr	r2, [pc, #72]	; (768 <TimerConfig+0xe4>)
     720:	6a92      	ldr	r2, [r2, #40]	; 0x28
     722:	2180      	movs	r1, #128	; 0x80
     724:	04c9      	lsls	r1, r1, #19
     726:	430a      	orrs	r2, r1
     728:	629a      	str	r2, [r3, #40]	; 0x28
     72a:	4b0f      	ldr	r3, [pc, #60]	; (768 <TimerConfig+0xe4>)
     72c:	4a0e      	ldr	r2, [pc, #56]	; (768 <TimerConfig+0xe4>)
     72e:	6a92      	ldr	r2, [r2, #40]	; 0x28
     730:	4911      	ldr	r1, [pc, #68]	; (778 <TimerConfig+0xf4>)
     732:	400a      	ands	r2, r1
     734:	629a      	str	r2, [r3, #40]	; 0x28
     736:	4b11      	ldr	r3, [pc, #68]	; (77c <TimerConfig+0xf8>)
     738:	2200      	movs	r2, #0
     73a:	601a      	str	r2, [r3, #0]
     73c:	4b0f      	ldr	r3, [pc, #60]	; (77c <TimerConfig+0xf8>)
     73e:	2277      	movs	r2, #119	; 0x77
     740:	605a      	str	r2, [r3, #4]
     742:	4b0e      	ldr	r3, [pc, #56]	; (77c <TimerConfig+0xf8>)
     744:	4a0a      	ldr	r2, [pc, #40]	; (770 <TimerConfig+0xec>)
     746:	609a      	str	r2, [r3, #8]
     748:	4b0c      	ldr	r3, [pc, #48]	; (77c <TimerConfig+0xf8>)
     74a:	4a0c      	ldr	r2, [pc, #48]	; (77c <TimerConfig+0xf8>)
     74c:	6d92      	ldr	r2, [r2, #88]	; 0x58
     74e:	2102      	movs	r1, #2
     750:	430a      	orrs	r2, r1
     752:	659a      	str	r2, [r3, #88]	; 0x58
     754:	4b09      	ldr	r3, [pc, #36]	; (77c <TimerConfig+0xf8>)
     756:	2201      	movs	r2, #1
     758:	60da      	str	r2, [r3, #12]
     75a:	200d      	movs	r0, #13
     75c:	f7ff fcb0 	bl	c0 <NVIC_EnableIRQ>
     760:	46c0      	nop			; (mov r8, r8)
     762:	46bd      	mov	sp, r7
     764:	bd80      	pop	{r7, pc}
     766:	46c0      	nop			; (mov r8, r8)
     768:	40020000 	.word	0x40020000
     76c:	40070000 	.word	0x40070000
     770:	000003e7 	.word	0x000003e7
     774:	fffff1ff 	.word	0xfffff1ff
     778:	ff00ffff 	.word	0xff00ffff
     77c:	40098000 	.word	0x40098000

00000780 <mil_std_1533_init_rt>:
     780:	b580      	push	{r7, lr}
     782:	b082      	sub	sp, #8
     784:	af00      	add	r7, sp, #0
     786:	4b22      	ldr	r3, [pc, #136]	; (810 <mil_std_1533_init_rt+0x90>)
     788:	603b      	str	r3, [r7, #0]
     78a:	4b22      	ldr	r3, [pc, #136]	; (814 <mil_std_1533_init_rt+0x94>)
     78c:	4a21      	ldr	r2, [pc, #132]	; (814 <mil_std_1533_init_rt+0x94>)
     78e:	69d2      	ldr	r2, [r2, #28]
     790:	2180      	movs	r1, #128	; 0x80
     792:	0089      	lsls	r1, r1, #2
     794:	430a      	orrs	r2, r1
     796:	61da      	str	r2, [r3, #28]
     798:	4b1e      	ldr	r3, [pc, #120]	; (814 <mil_std_1533_init_rt+0x94>)
     79a:	4a1e      	ldr	r2, [pc, #120]	; (814 <mil_std_1533_init_rt+0x94>)
     79c:	6b52      	ldr	r2, [r2, #52]	; 0x34
     79e:	2180      	movs	r1, #128	; 0x80
     7a0:	0489      	lsls	r1, r1, #18
     7a2:	430a      	orrs	r2, r1
     7a4:	635a      	str	r2, [r3, #52]	; 0x34
     7a6:	4a1c      	ldr	r2, [pc, #112]	; (818 <mil_std_1533_init_rt+0x98>)
     7a8:	2380      	movs	r3, #128	; 0x80
     7aa:	015b      	lsls	r3, r3, #5
     7ac:	2101      	movs	r1, #1
     7ae:	50d1      	str	r1, [r2, r3]
     7b0:	4a19      	ldr	r2, [pc, #100]	; (818 <mil_std_1533_init_rt+0x98>)
     7b2:	2380      	movs	r3, #128	; 0x80
     7b4:	015b      	lsls	r3, r3, #5
     7b6:	4919      	ldr	r1, [pc, #100]	; (81c <mil_std_1533_init_rt+0x9c>)
     7b8:	50d1      	str	r1, [r2, r3]
     7ba:	4917      	ldr	r1, [pc, #92]	; (818 <mil_std_1533_init_rt+0x98>)
     7bc:	4a16      	ldr	r2, [pc, #88]	; (818 <mil_std_1533_init_rt+0x98>)
     7be:	2381      	movs	r3, #129	; 0x81
     7c0:	015b      	lsls	r3, r3, #5
     7c2:	58d3      	ldr	r3, [r2, r3]
     7c4:	2206      	movs	r2, #6
     7c6:	431a      	orrs	r2, r3
     7c8:	2381      	movs	r3, #129	; 0x81
     7ca:	015b      	lsls	r3, r3, #5
     7cc:	50ca      	str	r2, [r1, r3]
     7ce:	2001      	movs	r0, #1
     7d0:	f7ff fc76 	bl	c0 <NVIC_EnableIRQ>
     7d4:	4910      	ldr	r1, [pc, #64]	; (818 <mil_std_1533_init_rt+0x98>)
     7d6:	4a12      	ldr	r2, [pc, #72]	; (820 <mil_std_1533_init_rt+0xa0>)
     7d8:	2380      	movs	r3, #128	; 0x80
     7da:	01db      	lsls	r3, r3, #7
     7dc:	508b      	str	r3, [r1, r2]
     7de:	2300      	movs	r3, #0
     7e0:	607b      	str	r3, [r7, #4]
     7e2:	e00d      	b.n	800 <mil_std_1533_init_rt+0x80>
     7e4:	683b      	ldr	r3, [r7, #0]
     7e6:	1d1a      	adds	r2, r3, #4
     7e8:	603a      	str	r2, [r7, #0]
     7ea:	687a      	ldr	r2, [r7, #4]
     7ec:	b292      	uxth	r2, r2
     7ee:	210f      	movs	r1, #15
     7f0:	400a      	ands	r2, r1
     7f2:	b292      	uxth	r2, r2
     7f4:	3230      	adds	r2, #48	; 0x30
     7f6:	b292      	uxth	r2, r2
     7f8:	601a      	str	r2, [r3, #0]
     7fa:	687b      	ldr	r3, [r7, #4]
     7fc:	3301      	adds	r3, #1
     7fe:	607b      	str	r3, [r7, #4]
     800:	687b      	ldr	r3, [r7, #4]
     802:	2b1f      	cmp	r3, #31
     804:	ddee      	ble.n	7e4 <mil_std_1533_init_rt+0x64>
     806:	46c0      	nop			; (mov r8, r8)
     808:	46bd      	mov	sp, r7
     80a:	b002      	add	sp, #8
     80c:	bd80      	pop	{r7, pc}
     80e:	46c0      	nop			; (mov r8, r8)
     810:	40048080 	.word	0x40048080
     814:	40020000 	.word	0x40020000
     818:	40048000 	.word	0x40048000
     81c:	0003c238 	.word	0x0003c238
     820:	00001018 	.word	0x00001018

00000824 <SystemInit>:
     824:	b580      	push	{r7, lr}
     826:	af00      	add	r7, sp, #0
     828:	f7ff fef2 	bl	610 <ClkConfig>
     82c:	f7ff fe1a 	bl	464 <PortConfig>
     830:	f7ff ff28 	bl	684 <TimerConfig>
     834:	f000 fa26 	bl	c84 <uart_init>
     838:	f7ff ffa2 	bl	780 <mil_std_1533_init_rt>
     83c:	f7ff fed2 	bl	5e4 <dac_init>
     840:	46c0      	nop			; (mov r8, r8)
     842:	46bd      	mov	sp, r7
     844:	bd80      	pop	{r7, pc}
     846:	46c0      	nop			; (mov r8, r8)

00000848 <SysTick_Handler>:
     848:	b580      	push	{r7, lr}
     84a:	af00      	add	r7, sp, #0
     84c:	4b03      	ldr	r3, [pc, #12]	; (85c <SysTick_Handler+0x14>)
     84e:	681b      	ldr	r3, [r3, #0]
     850:	1c5a      	adds	r2, r3, #1
     852:	4b02      	ldr	r3, [pc, #8]	; (85c <SysTick_Handler+0x14>)
     854:	601a      	str	r2, [r3, #0]
     856:	46c0      	nop			; (mov r8, r8)
     858:	46bd      	mov	sp, r7
     85a:	bd80      	pop	{r7, pc}
     85c:	200000e4 	.word	0x200000e4

00000860 <TIMER4_Handler>:
     860:	b580      	push	{r7, lr}
     862:	af00      	add	r7, sp, #0
     864:	4b06      	ldr	r3, [pc, #24]	; (880 <TIMER4_Handler+0x20>)
     866:	2200      	movs	r2, #0
     868:	655a      	str	r2, [r3, #84]	; 0x54
     86a:	4b06      	ldr	r3, [pc, #24]	; (884 <TIMER4_Handler+0x24>)
     86c:	681b      	ldr	r3, [r3, #0]
     86e:	1c5a      	adds	r2, r3, #1
     870:	4b04      	ldr	r3, [pc, #16]	; (884 <TIMER4_Handler+0x24>)
     872:	601a      	str	r2, [r3, #0]
     874:	4b04      	ldr	r3, [pc, #16]	; (888 <TIMER4_Handler+0x28>)
     876:	2201      	movs	r2, #1
     878:	601a      	str	r2, [r3, #0]
     87a:	46c0      	nop			; (mov r8, r8)
     87c:	46bd      	mov	sp, r7
     87e:	bd80      	pop	{r7, pc}
     880:	40098000 	.word	0x40098000
     884:	200000e4 	.word	0x200000e4
     888:	200000ec 	.word	0x200000ec

0000088c <MIL_STD_1553B1_Handler>:
     88c:	b590      	push	{r4, r7, lr}
     88e:	b087      	sub	sp, #28
     890:	af00      	add	r7, sp, #0
     892:	4bba      	ldr	r3, [pc, #744]	; (b7c <MIL_STD_1553B1_Handler+0x2f0>)
     894:	613b      	str	r3, [r7, #16]
     896:	4aba      	ldr	r2, [pc, #744]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     898:	4bba      	ldr	r3, [pc, #744]	; (b84 <MIL_STD_1553B1_Handler+0x2f8>)
     89a:	58d3      	ldr	r3, [r2, r3]
     89c:	2202      	movs	r2, #2
     89e:	4013      	ands	r3, r2
     8a0:	d100      	bne.n	8a4 <MIL_STD_1553B1_Handler+0x18>
     8a2:	e11b      	b.n	adc <MIL_STD_1553B1_Handler+0x250>
     8a4:	4ab6      	ldr	r2, [pc, #728]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     8a6:	4bb8      	ldr	r3, [pc, #736]	; (b88 <MIL_STD_1553B1_Handler+0x2fc>)
     8a8:	58d3      	ldr	r3, [r2, r3]
     8aa:	4ab8      	ldr	r2, [pc, #736]	; (b8c <MIL_STD_1553B1_Handler+0x300>)
     8ac:	4293      	cmp	r3, r2
     8ae:	d000      	beq.n	8b2 <MIL_STD_1553B1_Handler+0x26>
     8b0:	e114      	b.n	adc <MIL_STD_1553B1_Handler+0x250>
     8b2:	4bb7      	ldr	r3, [pc, #732]	; (b90 <MIL_STD_1553B1_Handler+0x304>)
     8b4:	4ab6      	ldr	r2, [pc, #728]	; (b90 <MIL_STD_1553B1_Handler+0x304>)
     8b6:	6812      	ldr	r2, [r2, #0]
     8b8:	49b6      	ldr	r1, [pc, #728]	; (b94 <MIL_STD_1553B1_Handler+0x308>)
     8ba:	430a      	orrs	r2, r1
     8bc:	601a      	str	r2, [r3, #0]
     8be:	4bb6      	ldr	r3, [pc, #728]	; (b98 <MIL_STD_1553B1_Handler+0x30c>)
     8c0:	681b      	ldr	r3, [r3, #0]
     8c2:	2201      	movs	r2, #1
     8c4:	4053      	eors	r3, r2
     8c6:	009a      	lsls	r2, r3, #2
     8c8:	4bb4      	ldr	r3, [pc, #720]	; (b9c <MIL_STD_1553B1_Handler+0x310>)
     8ca:	18d3      	adds	r3, r2, r3
     8cc:	681b      	ldr	r3, [r3, #0]
     8ce:	60fb      	str	r3, [r7, #12]
     8d0:	693b      	ldr	r3, [r7, #16]
     8d2:	1d1a      	adds	r2, r3, #4
     8d4:	613a      	str	r2, [r7, #16]
     8d6:	68fa      	ldr	r2, [r7, #12]
     8d8:	1c91      	adds	r1, r2, #2
     8da:	60f9      	str	r1, [r7, #12]
     8dc:	8812      	ldrh	r2, [r2, #0]
     8de:	601a      	str	r2, [r3, #0]
     8e0:	693b      	ldr	r3, [r7, #16]
     8e2:	1d1a      	adds	r2, r3, #4
     8e4:	613a      	str	r2, [r7, #16]
     8e6:	68fa      	ldr	r2, [r7, #12]
     8e8:	1c91      	adds	r1, r2, #2
     8ea:	60f9      	str	r1, [r7, #12]
     8ec:	8812      	ldrh	r2, [r2, #0]
     8ee:	601a      	str	r2, [r3, #0]
     8f0:	693b      	ldr	r3, [r7, #16]
     8f2:	1d1a      	adds	r2, r3, #4
     8f4:	613a      	str	r2, [r7, #16]
     8f6:	68fa      	ldr	r2, [r7, #12]
     8f8:	1c91      	adds	r1, r2, #2
     8fa:	60f9      	str	r1, [r7, #12]
     8fc:	8812      	ldrh	r2, [r2, #0]
     8fe:	601a      	str	r2, [r3, #0]
     900:	693b      	ldr	r3, [r7, #16]
     902:	1d1a      	adds	r2, r3, #4
     904:	613a      	str	r2, [r7, #16]
     906:	68fa      	ldr	r2, [r7, #12]
     908:	1c91      	adds	r1, r2, #2
     90a:	60f9      	str	r1, [r7, #12]
     90c:	8812      	ldrh	r2, [r2, #0]
     90e:	601a      	str	r2, [r3, #0]
     910:	693b      	ldr	r3, [r7, #16]
     912:	1d1a      	adds	r2, r3, #4
     914:	613a      	str	r2, [r7, #16]
     916:	68fa      	ldr	r2, [r7, #12]
     918:	1c91      	adds	r1, r2, #2
     91a:	60f9      	str	r1, [r7, #12]
     91c:	8812      	ldrh	r2, [r2, #0]
     91e:	601a      	str	r2, [r3, #0]
     920:	693b      	ldr	r3, [r7, #16]
     922:	1d1a      	adds	r2, r3, #4
     924:	613a      	str	r2, [r7, #16]
     926:	68fa      	ldr	r2, [r7, #12]
     928:	1c91      	adds	r1, r2, #2
     92a:	60f9      	str	r1, [r7, #12]
     92c:	8812      	ldrh	r2, [r2, #0]
     92e:	601a      	str	r2, [r3, #0]
     930:	693b      	ldr	r3, [r7, #16]
     932:	1d1a      	adds	r2, r3, #4
     934:	613a      	str	r2, [r7, #16]
     936:	68fa      	ldr	r2, [r7, #12]
     938:	1c91      	adds	r1, r2, #2
     93a:	60f9      	str	r1, [r7, #12]
     93c:	8812      	ldrh	r2, [r2, #0]
     93e:	601a      	str	r2, [r3, #0]
     940:	693b      	ldr	r3, [r7, #16]
     942:	1d1a      	adds	r2, r3, #4
     944:	613a      	str	r2, [r7, #16]
     946:	68fa      	ldr	r2, [r7, #12]
     948:	1c91      	adds	r1, r2, #2
     94a:	60f9      	str	r1, [r7, #12]
     94c:	8812      	ldrh	r2, [r2, #0]
     94e:	601a      	str	r2, [r3, #0]
     950:	693b      	ldr	r3, [r7, #16]
     952:	1d1a      	adds	r2, r3, #4
     954:	613a      	str	r2, [r7, #16]
     956:	68fa      	ldr	r2, [r7, #12]
     958:	1c91      	adds	r1, r2, #2
     95a:	60f9      	str	r1, [r7, #12]
     95c:	8812      	ldrh	r2, [r2, #0]
     95e:	601a      	str	r2, [r3, #0]
     960:	693b      	ldr	r3, [r7, #16]
     962:	1d1a      	adds	r2, r3, #4
     964:	613a      	str	r2, [r7, #16]
     966:	68fa      	ldr	r2, [r7, #12]
     968:	1c91      	adds	r1, r2, #2
     96a:	60f9      	str	r1, [r7, #12]
     96c:	8812      	ldrh	r2, [r2, #0]
     96e:	601a      	str	r2, [r3, #0]
     970:	693b      	ldr	r3, [r7, #16]
     972:	1d1a      	adds	r2, r3, #4
     974:	613a      	str	r2, [r7, #16]
     976:	68fa      	ldr	r2, [r7, #12]
     978:	1c91      	adds	r1, r2, #2
     97a:	60f9      	str	r1, [r7, #12]
     97c:	8812      	ldrh	r2, [r2, #0]
     97e:	601a      	str	r2, [r3, #0]
     980:	693b      	ldr	r3, [r7, #16]
     982:	1d1a      	adds	r2, r3, #4
     984:	613a      	str	r2, [r7, #16]
     986:	68fa      	ldr	r2, [r7, #12]
     988:	1c91      	adds	r1, r2, #2
     98a:	60f9      	str	r1, [r7, #12]
     98c:	8812      	ldrh	r2, [r2, #0]
     98e:	601a      	str	r2, [r3, #0]
     990:	693b      	ldr	r3, [r7, #16]
     992:	1d1a      	adds	r2, r3, #4
     994:	613a      	str	r2, [r7, #16]
     996:	68fa      	ldr	r2, [r7, #12]
     998:	1c91      	adds	r1, r2, #2
     99a:	60f9      	str	r1, [r7, #12]
     99c:	8812      	ldrh	r2, [r2, #0]
     99e:	601a      	str	r2, [r3, #0]
     9a0:	693b      	ldr	r3, [r7, #16]
     9a2:	1d1a      	adds	r2, r3, #4
     9a4:	613a      	str	r2, [r7, #16]
     9a6:	68fa      	ldr	r2, [r7, #12]
     9a8:	1c91      	adds	r1, r2, #2
     9aa:	60f9      	str	r1, [r7, #12]
     9ac:	8812      	ldrh	r2, [r2, #0]
     9ae:	601a      	str	r2, [r3, #0]
     9b0:	693b      	ldr	r3, [r7, #16]
     9b2:	1d1a      	adds	r2, r3, #4
     9b4:	613a      	str	r2, [r7, #16]
     9b6:	68fa      	ldr	r2, [r7, #12]
     9b8:	1c91      	adds	r1, r2, #2
     9ba:	60f9      	str	r1, [r7, #12]
     9bc:	8812      	ldrh	r2, [r2, #0]
     9be:	601a      	str	r2, [r3, #0]
     9c0:	693b      	ldr	r3, [r7, #16]
     9c2:	1d1a      	adds	r2, r3, #4
     9c4:	613a      	str	r2, [r7, #16]
     9c6:	68fa      	ldr	r2, [r7, #12]
     9c8:	1c91      	adds	r1, r2, #2
     9ca:	60f9      	str	r1, [r7, #12]
     9cc:	8812      	ldrh	r2, [r2, #0]
     9ce:	601a      	str	r2, [r3, #0]
     9d0:	693b      	ldr	r3, [r7, #16]
     9d2:	1d1a      	adds	r2, r3, #4
     9d4:	613a      	str	r2, [r7, #16]
     9d6:	68fa      	ldr	r2, [r7, #12]
     9d8:	1c91      	adds	r1, r2, #2
     9da:	60f9      	str	r1, [r7, #12]
     9dc:	8812      	ldrh	r2, [r2, #0]
     9de:	601a      	str	r2, [r3, #0]
     9e0:	693b      	ldr	r3, [r7, #16]
     9e2:	1d1a      	adds	r2, r3, #4
     9e4:	613a      	str	r2, [r7, #16]
     9e6:	68fa      	ldr	r2, [r7, #12]
     9e8:	1c91      	adds	r1, r2, #2
     9ea:	60f9      	str	r1, [r7, #12]
     9ec:	8812      	ldrh	r2, [r2, #0]
     9ee:	601a      	str	r2, [r3, #0]
     9f0:	693b      	ldr	r3, [r7, #16]
     9f2:	1d1a      	adds	r2, r3, #4
     9f4:	613a      	str	r2, [r7, #16]
     9f6:	68fa      	ldr	r2, [r7, #12]
     9f8:	1c91      	adds	r1, r2, #2
     9fa:	60f9      	str	r1, [r7, #12]
     9fc:	8812      	ldrh	r2, [r2, #0]
     9fe:	601a      	str	r2, [r3, #0]
     a00:	693b      	ldr	r3, [r7, #16]
     a02:	1d1a      	adds	r2, r3, #4
     a04:	613a      	str	r2, [r7, #16]
     a06:	68fa      	ldr	r2, [r7, #12]
     a08:	1c91      	adds	r1, r2, #2
     a0a:	60f9      	str	r1, [r7, #12]
     a0c:	8812      	ldrh	r2, [r2, #0]
     a0e:	601a      	str	r2, [r3, #0]
     a10:	693b      	ldr	r3, [r7, #16]
     a12:	1d1a      	adds	r2, r3, #4
     a14:	613a      	str	r2, [r7, #16]
     a16:	68fa      	ldr	r2, [r7, #12]
     a18:	1c91      	adds	r1, r2, #2
     a1a:	60f9      	str	r1, [r7, #12]
     a1c:	8812      	ldrh	r2, [r2, #0]
     a1e:	601a      	str	r2, [r3, #0]
     a20:	693b      	ldr	r3, [r7, #16]
     a22:	1d1a      	adds	r2, r3, #4
     a24:	613a      	str	r2, [r7, #16]
     a26:	68fa      	ldr	r2, [r7, #12]
     a28:	1c91      	adds	r1, r2, #2
     a2a:	60f9      	str	r1, [r7, #12]
     a2c:	8812      	ldrh	r2, [r2, #0]
     a2e:	601a      	str	r2, [r3, #0]
     a30:	693b      	ldr	r3, [r7, #16]
     a32:	1d1a      	adds	r2, r3, #4
     a34:	613a      	str	r2, [r7, #16]
     a36:	68fa      	ldr	r2, [r7, #12]
     a38:	1c91      	adds	r1, r2, #2
     a3a:	60f9      	str	r1, [r7, #12]
     a3c:	8812      	ldrh	r2, [r2, #0]
     a3e:	601a      	str	r2, [r3, #0]
     a40:	693b      	ldr	r3, [r7, #16]
     a42:	1d1a      	adds	r2, r3, #4
     a44:	613a      	str	r2, [r7, #16]
     a46:	68fa      	ldr	r2, [r7, #12]
     a48:	1c91      	adds	r1, r2, #2
     a4a:	60f9      	str	r1, [r7, #12]
     a4c:	8812      	ldrh	r2, [r2, #0]
     a4e:	601a      	str	r2, [r3, #0]
     a50:	693b      	ldr	r3, [r7, #16]
     a52:	1d1a      	adds	r2, r3, #4
     a54:	613a      	str	r2, [r7, #16]
     a56:	68fa      	ldr	r2, [r7, #12]
     a58:	1c91      	adds	r1, r2, #2
     a5a:	60f9      	str	r1, [r7, #12]
     a5c:	8812      	ldrh	r2, [r2, #0]
     a5e:	601a      	str	r2, [r3, #0]
     a60:	693b      	ldr	r3, [r7, #16]
     a62:	1d1a      	adds	r2, r3, #4
     a64:	613a      	str	r2, [r7, #16]
     a66:	68fa      	ldr	r2, [r7, #12]
     a68:	1c91      	adds	r1, r2, #2
     a6a:	60f9      	str	r1, [r7, #12]
     a6c:	8812      	ldrh	r2, [r2, #0]
     a6e:	601a      	str	r2, [r3, #0]
     a70:	693b      	ldr	r3, [r7, #16]
     a72:	1d1a      	adds	r2, r3, #4
     a74:	613a      	str	r2, [r7, #16]
     a76:	68fa      	ldr	r2, [r7, #12]
     a78:	1c91      	adds	r1, r2, #2
     a7a:	60f9      	str	r1, [r7, #12]
     a7c:	8812      	ldrh	r2, [r2, #0]
     a7e:	601a      	str	r2, [r3, #0]
     a80:	693b      	ldr	r3, [r7, #16]
     a82:	1d1a      	adds	r2, r3, #4
     a84:	613a      	str	r2, [r7, #16]
     a86:	68fa      	ldr	r2, [r7, #12]
     a88:	1c91      	adds	r1, r2, #2
     a8a:	60f9      	str	r1, [r7, #12]
     a8c:	8812      	ldrh	r2, [r2, #0]
     a8e:	601a      	str	r2, [r3, #0]
     a90:	693b      	ldr	r3, [r7, #16]
     a92:	1d1a      	adds	r2, r3, #4
     a94:	613a      	str	r2, [r7, #16]
     a96:	68fa      	ldr	r2, [r7, #12]
     a98:	1c91      	adds	r1, r2, #2
     a9a:	60f9      	str	r1, [r7, #12]
     a9c:	8812      	ldrh	r2, [r2, #0]
     a9e:	601a      	str	r2, [r3, #0]
     aa0:	693b      	ldr	r3, [r7, #16]
     aa2:	1d1a      	adds	r2, r3, #4
     aa4:	613a      	str	r2, [r7, #16]
     aa6:	68fa      	ldr	r2, [r7, #12]
     aa8:	1c91      	adds	r1, r2, #2
     aaa:	60f9      	str	r1, [r7, #12]
     aac:	8812      	ldrh	r2, [r2, #0]
     aae:	601a      	str	r2, [r3, #0]
     ab0:	693b      	ldr	r3, [r7, #16]
     ab2:	1d1a      	adds	r2, r3, #4
     ab4:	613a      	str	r2, [r7, #16]
     ab6:	68fa      	ldr	r2, [r7, #12]
     ab8:	1c91      	adds	r1, r2, #2
     aba:	60f9      	str	r1, [r7, #12]
     abc:	8812      	ldrh	r2, [r2, #0]
     abe:	601a      	str	r2, [r3, #0]
     ac0:	693b      	ldr	r3, [r7, #16]
     ac2:	1d1a      	adds	r2, r3, #4
     ac4:	613a      	str	r2, [r7, #16]
     ac6:	68fa      	ldr	r2, [r7, #12]
     ac8:	1c91      	adds	r1, r2, #2
     aca:	60f9      	str	r1, [r7, #12]
     acc:	8812      	ldrh	r2, [r2, #0]
     ace:	601a      	str	r2, [r3, #0]
     ad0:	4b2f      	ldr	r3, [pc, #188]	; (b90 <MIL_STD_1553B1_Handler+0x304>)
     ad2:	4a2f      	ldr	r2, [pc, #188]	; (b90 <MIL_STD_1553B1_Handler+0x304>)
     ad4:	6812      	ldr	r2, [r2, #0]
     ad6:	0c12      	lsrs	r2, r2, #16
     ad8:	0412      	lsls	r2, r2, #16
     ada:	601a      	str	r2, [r3, #0]
     adc:	4a28      	ldr	r2, [pc, #160]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     ade:	4b29      	ldr	r3, [pc, #164]	; (b84 <MIL_STD_1553B1_Handler+0x2f8>)
     ae0:	58d3      	ldr	r3, [r2, r3]
     ae2:	2204      	movs	r2, #4
     ae4:	4013      	ands	r3, r2
     ae6:	d045      	beq.n	b74 <MIL_STD_1553B1_Handler+0x2e8>
     ae8:	4a25      	ldr	r2, [pc, #148]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     aea:	4b27      	ldr	r3, [pc, #156]	; (b88 <MIL_STD_1553B1_Handler+0x2fc>)
     aec:	58d3      	ldr	r3, [r2, r3]
     aee:	4a27      	ldr	r2, [pc, #156]	; (b8c <MIL_STD_1553B1_Handler+0x300>)
     af0:	4293      	cmp	r3, r2
     af2:	d03f      	beq.n	b74 <MIL_STD_1553B1_Handler+0x2e8>
     af4:	4a22      	ldr	r2, [pc, #136]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     af6:	4b24      	ldr	r3, [pc, #144]	; (b88 <MIL_STD_1553B1_Handler+0x2fc>)
     af8:	58d3      	ldr	r3, [r2, r3]
     afa:	2b01      	cmp	r3, #1
     afc:	d13a      	bne.n	b74 <MIL_STD_1553B1_Handler+0x2e8>
     afe:	4a20      	ldr	r2, [pc, #128]	; (b80 <MIL_STD_1553B1_Handler+0x2f4>)
     b00:	4b27      	ldr	r3, [pc, #156]	; (ba0 <MIL_STD_1553B1_Handler+0x314>)
     b02:	58d3      	ldr	r3, [r2, r3]
     b04:	221f      	movs	r2, #31
     b06:	4013      	ands	r3, r2
     b08:	60bb      	str	r3, [r7, #8]
     b0a:	1dbb      	adds	r3, r7, #6
     b0c:	2200      	movs	r2, #0
     b0e:	801a      	strh	r2, [r3, #0]
     b10:	4b24      	ldr	r3, [pc, #144]	; (ba4 <MIL_STD_1553B1_Handler+0x318>)
     b12:	603b      	str	r3, [r7, #0]
     b14:	4b24      	ldr	r3, [pc, #144]	; (ba8 <MIL_STD_1553B1_Handler+0x31c>)
     b16:	681b      	ldr	r3, [r3, #0]
     b18:	2b00      	cmp	r3, #0
     b1a:	d12b      	bne.n	b74 <MIL_STD_1553B1_Handler+0x2e8>
     b1c:	68bb      	ldr	r3, [r7, #8]
     b1e:	2b20      	cmp	r3, #32
     b20:	d828      	bhi.n	b74 <MIL_STD_1553B1_Handler+0x2e8>
     b22:	2300      	movs	r3, #0
     b24:	617b      	str	r3, [r7, #20]
     b26:	e00c      	b.n	b42 <MIL_STD_1553B1_Handler+0x2b6>
     b28:	697b      	ldr	r3, [r7, #20]
     b2a:	005b      	lsls	r3, r3, #1
     b2c:	683a      	ldr	r2, [r7, #0]
     b2e:	18d2      	adds	r2, r2, r3
     b30:	693b      	ldr	r3, [r7, #16]
     b32:	1d19      	adds	r1, r3, #4
     b34:	6139      	str	r1, [r7, #16]
     b36:	681b      	ldr	r3, [r3, #0]
     b38:	b29b      	uxth	r3, r3
     b3a:	8013      	strh	r3, [r2, #0]
     b3c:	697b      	ldr	r3, [r7, #20]
     b3e:	3301      	adds	r3, #1
     b40:	617b      	str	r3, [r7, #20]
     b42:	697a      	ldr	r2, [r7, #20]
     b44:	68bb      	ldr	r3, [r7, #8]
     b46:	429a      	cmp	r2, r3
     b48:	d3ee      	bcc.n	b28 <MIL_STD_1553B1_Handler+0x29c>
     b4a:	68bb      	ldr	r3, [r7, #8]
     b4c:	1e5a      	subs	r2, r3, #1
     b4e:	1dbc      	adds	r4, r7, #6
     b50:	683b      	ldr	r3, [r7, #0]
     b52:	0011      	movs	r1, r2
     b54:	0018      	movs	r0, r3
     b56:	f7ff facf 	bl	f8 <get_checksum>
     b5a:	0003      	movs	r3, r0
     b5c:	8023      	strh	r3, [r4, #0]
     b5e:	4b11      	ldr	r3, [pc, #68]	; (ba4 <MIL_STD_1553B1_Handler+0x318>)
     b60:	891b      	ldrh	r3, [r3, #8]
     b62:	1dba      	adds	r2, r7, #6
     b64:	8812      	ldrh	r2, [r2, #0]
     b66:	1ad3      	subs	r3, r2, r3
     b68:	425a      	negs	r2, r3
     b6a:	4153      	adcs	r3, r2
     b6c:	b2db      	uxtb	r3, r3
     b6e:	001a      	movs	r2, r3
     b70:	4b0d      	ldr	r3, [pc, #52]	; (ba8 <MIL_STD_1553B1_Handler+0x31c>)
     b72:	601a      	str	r2, [r3, #0]
     b74:	46c0      	nop			; (mov r8, r8)
     b76:	46bd      	mov	sp, r7
     b78:	b007      	add	sp, #28
     b7a:	bd90      	pop	{r4, r7, pc}
     b7c:	40048080 	.word	0x40048080
     b80:	40048000 	.word	0x40048000
     b84:	00001004 	.word	0x00001004
     b88:	00001024 	.word	0x00001024
     b8c:	00000402 	.word	0x00000402
     b90:	400c0000 	.word	0x400c0000
     b94:	0000ffff 	.word	0x0000ffff
     b98:	200000d8 	.word	0x200000d8
     b9c:	200000d0 	.word	0x200000d0
     ba0:	0000100c 	.word	0x0000100c
     ba4:	200000c4 	.word	0x200000c4
     ba8:	200000e8 	.word	0x200000e8

00000bac <handler_reset>:
     bac:	b580      	push	{r7, lr}
     bae:	b082      	sub	sp, #8
     bb0:	af00      	add	r7, sp, #0
     bb2:	4b11      	ldr	r3, [pc, #68]	; (bf8 <handler_reset+0x4c>)
     bb4:	607b      	str	r3, [r7, #4]
     bb6:	4b11      	ldr	r3, [pc, #68]	; (bfc <handler_reset+0x50>)
     bb8:	603b      	str	r3, [r7, #0]
     bba:	e007      	b.n	bcc <handler_reset+0x20>
     bbc:	683b      	ldr	r3, [r7, #0]
     bbe:	1d1a      	adds	r2, r3, #4
     bc0:	603a      	str	r2, [r7, #0]
     bc2:	687a      	ldr	r2, [r7, #4]
     bc4:	1d11      	adds	r1, r2, #4
     bc6:	6079      	str	r1, [r7, #4]
     bc8:	6812      	ldr	r2, [r2, #0]
     bca:	601a      	str	r2, [r3, #0]
     bcc:	683a      	ldr	r2, [r7, #0]
     bce:	4b0c      	ldr	r3, [pc, #48]	; (c00 <handler_reset+0x54>)
     bd0:	429a      	cmp	r2, r3
     bd2:	d3f3      	bcc.n	bbc <handler_reset+0x10>
     bd4:	4b0b      	ldr	r3, [pc, #44]	; (c04 <handler_reset+0x58>)
     bd6:	603b      	str	r3, [r7, #0]
     bd8:	e004      	b.n	be4 <handler_reset+0x38>
     bda:	683b      	ldr	r3, [r7, #0]
     bdc:	1d1a      	adds	r2, r3, #4
     bde:	603a      	str	r2, [r7, #0]
     be0:	2200      	movs	r2, #0
     be2:	601a      	str	r2, [r3, #0]
     be4:	683a      	ldr	r2, [r7, #0]
     be6:	4b08      	ldr	r3, [pc, #32]	; (c08 <handler_reset+0x5c>)
     be8:	429a      	cmp	r2, r3
     bea:	d3f6      	bcc.n	bda <handler_reset+0x2e>
     bec:	f7ff fbca 	bl	384 <main>
     bf0:	46c0      	nop			; (mov r8, r8)
     bf2:	46bd      	mov	sp, r7
     bf4:	b002      	add	sp, #8
     bf6:	bd80      	pop	{r7, pc}
     bf8:	00001a14 	.word	0x00001a14
     bfc:	20000000 	.word	0x20000000
     c00:	20000044 	.word	0x20000044
     c04:	20000044 	.word	0x20000044
     c08:	2000050c 	.word	0x2000050c

00000c0c <default_handler>:
     c0c:	b580      	push	{r7, lr}
     c0e:	af00      	add	r7, sp, #0
     c10:	e7fe      	b.n	c10 <default_handler+0x4>
     c12:	46c0      	nop			; (mov r8, r8)

00000c14 <NVIC_EnableIRQ>:
     c14:	b580      	push	{r7, lr}
     c16:	b082      	sub	sp, #8
     c18:	af00      	add	r7, sp, #0
     c1a:	0002      	movs	r2, r0
     c1c:	1dfb      	adds	r3, r7, #7
     c1e:	701a      	strb	r2, [r3, #0]
     c20:	4909      	ldr	r1, [pc, #36]	; (c48 <NVIC_EnableIRQ+0x34>)
     c22:	1dfb      	adds	r3, r7, #7
     c24:	781b      	ldrb	r3, [r3, #0]
     c26:	b25b      	sxtb	r3, r3
     c28:	095b      	lsrs	r3, r3, #5
     c2a:	1dfa      	adds	r2, r7, #7
     c2c:	7812      	ldrb	r2, [r2, #0]
     c2e:	0010      	movs	r0, r2
     c30:	221f      	movs	r2, #31
     c32:	4002      	ands	r2, r0
     c34:	2001      	movs	r0, #1
     c36:	4090      	lsls	r0, r2
     c38:	0002      	movs	r2, r0
     c3a:	009b      	lsls	r3, r3, #2
     c3c:	505a      	str	r2, [r3, r1]
     c3e:	46c0      	nop			; (mov r8, r8)
     c40:	46bd      	mov	sp, r7
     c42:	b002      	add	sp, #8
     c44:	bd80      	pop	{r7, pc}
     c46:	46c0      	nop			; (mov r8, r8)
     c48:	e000e100 	.word	0xe000e100

00000c4c <NVIC_DisableIRQ>:
     c4c:	b580      	push	{r7, lr}
     c4e:	b082      	sub	sp, #8
     c50:	af00      	add	r7, sp, #0
     c52:	0002      	movs	r2, r0
     c54:	1dfb      	adds	r3, r7, #7
     c56:	701a      	strb	r2, [r3, #0]
     c58:	4909      	ldr	r1, [pc, #36]	; (c80 <NVIC_DisableIRQ+0x34>)
     c5a:	1dfb      	adds	r3, r7, #7
     c5c:	781b      	ldrb	r3, [r3, #0]
     c5e:	b25b      	sxtb	r3, r3
     c60:	095b      	lsrs	r3, r3, #5
     c62:	1dfa      	adds	r2, r7, #7
     c64:	7812      	ldrb	r2, [r2, #0]
     c66:	0010      	movs	r0, r2
     c68:	221f      	movs	r2, #31
     c6a:	4002      	ands	r2, r0
     c6c:	2001      	movs	r0, #1
     c6e:	4090      	lsls	r0, r2
     c70:	0002      	movs	r2, r0
     c72:	3320      	adds	r3, #32
     c74:	009b      	lsls	r3, r3, #2
     c76:	505a      	str	r2, [r3, r1]
     c78:	46c0      	nop			; (mov r8, r8)
     c7a:	46bd      	mov	sp, r7
     c7c:	b002      	add	sp, #8
     c7e:	bd80      	pop	{r7, pc}
     c80:	e000e100 	.word	0xe000e100

00000c84 <uart_init>:
     c84:	b580      	push	{r7, lr}
     c86:	af00      	add	r7, sp, #0
     c88:	4b1f      	ldr	r3, [pc, #124]	; (d08 <uart_init+0x84>)
     c8a:	4a1f      	ldr	r2, [pc, #124]	; (d08 <uart_init+0x84>)
     c8c:	69d2      	ldr	r2, [r2, #28]
     c8e:	2140      	movs	r1, #64	; 0x40
     c90:	430a      	orrs	r2, r1
     c92:	61da      	str	r2, [r3, #28]
     c94:	4b1c      	ldr	r3, [pc, #112]	; (d08 <uart_init+0x84>)
     c96:	4a1c      	ldr	r2, [pc, #112]	; (d08 <uart_init+0x84>)
     c98:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c9a:	2180      	movs	r1, #128	; 0x80
     c9c:	0449      	lsls	r1, r1, #17
     c9e:	430a      	orrs	r2, r1
     ca0:	629a      	str	r2, [r3, #40]	; 0x28
     ca2:	4b1a      	ldr	r3, [pc, #104]	; (d0c <uart_init+0x88>)
     ca4:	2206      	movs	r2, #6
     ca6:	625a      	str	r2, [r3, #36]	; 0x24
     ca8:	4b18      	ldr	r3, [pc, #96]	; (d0c <uart_init+0x88>)
     caa:	2200      	movs	r2, #0
     cac:	629a      	str	r2, [r3, #40]	; 0x28
     cae:	4b17      	ldr	r3, [pc, #92]	; (d0c <uart_init+0x88>)
     cb0:	4a16      	ldr	r2, [pc, #88]	; (d0c <uart_init+0x88>)
     cb2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     cb4:	213f      	movs	r1, #63	; 0x3f
     cb6:	438a      	bics	r2, r1
     cb8:	635a      	str	r2, [r3, #52]	; 0x34
     cba:	4b14      	ldr	r3, [pc, #80]	; (d0c <uart_init+0x88>)
     cbc:	4a13      	ldr	r2, [pc, #76]	; (d0c <uart_init+0x88>)
     cbe:	6b52      	ldr	r2, [r2, #52]	; 0x34
     cc0:	2112      	movs	r1, #18
     cc2:	430a      	orrs	r2, r1
     cc4:	635a      	str	r2, [r3, #52]	; 0x34
     cc6:	4b11      	ldr	r3, [pc, #68]	; (d0c <uart_init+0x88>)
     cc8:	4a10      	ldr	r2, [pc, #64]	; (d0c <uart_init+0x88>)
     cca:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ccc:	2110      	movs	r1, #16
     cce:	430a      	orrs	r2, r1
     cd0:	62da      	str	r2, [r3, #44]	; 0x2c
     cd2:	4b0e      	ldr	r3, [pc, #56]	; (d0c <uart_init+0x88>)
     cd4:	4a0d      	ldr	r2, [pc, #52]	; (d0c <uart_init+0x88>)
     cd6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     cd8:	2160      	movs	r1, #96	; 0x60
     cda:	430a      	orrs	r2, r1
     cdc:	62da      	str	r2, [r3, #44]	; 0x2c
     cde:	4b0b      	ldr	r3, [pc, #44]	; (d0c <uart_init+0x88>)
     ce0:	4a0a      	ldr	r2, [pc, #40]	; (d0c <uart_init+0x88>)
     ce2:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ce4:	490a      	ldr	r1, [pc, #40]	; (d10 <uart_init+0x8c>)
     ce6:	430a      	orrs	r2, r1
     ce8:	631a      	str	r2, [r3, #48]	; 0x30
     cea:	4b08      	ldr	r3, [pc, #32]	; (d0c <uart_init+0x88>)
     cec:	4a07      	ldr	r2, [pc, #28]	; (d0c <uart_init+0x88>)
     cee:	6b92      	ldr	r2, [r2, #56]	; 0x38
     cf0:	2110      	movs	r1, #16
     cf2:	430a      	orrs	r2, r1
     cf4:	639a      	str	r2, [r3, #56]	; 0x38
     cf6:	4b05      	ldr	r3, [pc, #20]	; (d0c <uart_init+0x88>)
     cf8:	4a04      	ldr	r2, [pc, #16]	; (d0c <uart_init+0x88>)
     cfa:	6b92      	ldr	r2, [r2, #56]	; 0x38
     cfc:	2140      	movs	r1, #64	; 0x40
     cfe:	430a      	orrs	r2, r1
     d00:	639a      	str	r2, [r3, #56]	; 0x38
     d02:	46c0      	nop			; (mov r8, r8)
     d04:	46bd      	mov	sp, r7
     d06:	bd80      	pop	{r7, pc}
     d08:	40020000 	.word	0x40020000
     d0c:	40030000 	.word	0x40030000
     d10:	00000301 	.word	0x00000301

00000d14 <uart_read>:
     d14:	b580      	push	{r7, lr}
     d16:	b084      	sub	sp, #16
     d18:	af00      	add	r7, sp, #0
     d1a:	6078      	str	r0, [r7, #4]
     d1c:	6039      	str	r1, [r7, #0]
     d1e:	4b18      	ldr	r3, [pc, #96]	; (d80 <uart_read+0x6c>)
     d20:	681a      	ldr	r2, [r3, #0]
     d22:	4b18      	ldr	r3, [pc, #96]	; (d84 <uart_read+0x70>)
     d24:	681b      	ldr	r3, [r3, #0]
     d26:	429a      	cmp	r2, r3
     d28:	d101      	bne.n	d2e <uart_read+0x1a>
     d2a:	2300      	movs	r3, #0
     d2c:	e023      	b.n	d76 <uart_read+0x62>
     d2e:	2300      	movs	r3, #0
     d30:	60fb      	str	r3, [r7, #12]
     d32:	e01b      	b.n	d6c <uart_read+0x58>
     d34:	68fb      	ldr	r3, [r7, #12]
     d36:	687a      	ldr	r2, [r7, #4]
     d38:	18d2      	adds	r2, r2, r3
     d3a:	4b11      	ldr	r3, [pc, #68]	; (d80 <uart_read+0x6c>)
     d3c:	681b      	ldr	r3, [r3, #0]
     d3e:	4912      	ldr	r1, [pc, #72]	; (d88 <uart_read+0x74>)
     d40:	5ccb      	ldrb	r3, [r1, r3]
     d42:	7013      	strb	r3, [r2, #0]
     d44:	4b0e      	ldr	r3, [pc, #56]	; (d80 <uart_read+0x6c>)
     d46:	681b      	ldr	r3, [r3, #0]
     d48:	3301      	adds	r3, #1
     d4a:	05db      	lsls	r3, r3, #23
     d4c:	0dda      	lsrs	r2, r3, #23
     d4e:	4b0c      	ldr	r3, [pc, #48]	; (d80 <uart_read+0x6c>)
     d50:	601a      	str	r2, [r3, #0]
     d52:	4b0b      	ldr	r3, [pc, #44]	; (d80 <uart_read+0x6c>)
     d54:	681a      	ldr	r2, [r3, #0]
     d56:	4b0b      	ldr	r3, [pc, #44]	; (d84 <uart_read+0x70>)
     d58:	681b      	ldr	r3, [r3, #0]
     d5a:	429a      	cmp	r2, r3
     d5c:	d103      	bne.n	d66 <uart_read+0x52>
     d5e:	68fb      	ldr	r3, [r7, #12]
     d60:	3301      	adds	r3, #1
     d62:	60fb      	str	r3, [r7, #12]
     d64:	e006      	b.n	d74 <uart_read+0x60>
     d66:	68fb      	ldr	r3, [r7, #12]
     d68:	3301      	adds	r3, #1
     d6a:	60fb      	str	r3, [r7, #12]
     d6c:	68fa      	ldr	r2, [r7, #12]
     d6e:	683b      	ldr	r3, [r7, #0]
     d70:	429a      	cmp	r2, r3
     d72:	dbdf      	blt.n	d34 <uart_read+0x20>
     d74:	68fb      	ldr	r3, [r7, #12]
     d76:	0018      	movs	r0, r3
     d78:	46bd      	mov	sp, r7
     d7a:	b004      	add	sp, #16
     d7c:	bd80      	pop	{r7, pc}
     d7e:	46c0      	nop			; (mov r8, r8)
     d80:	200004fc 	.word	0x200004fc
     d84:	200004f8 	.word	0x200004f8
     d88:	200002f8 	.word	0x200002f8

00000d8c <uart_send>:
     d8c:	b580      	push	{r7, lr}
     d8e:	b084      	sub	sp, #16
     d90:	af00      	add	r7, sp, #0
     d92:	6078      	str	r0, [r7, #4]
     d94:	6039      	str	r1, [r7, #0]
     d96:	2006      	movs	r0, #6
     d98:	f7ff ff58 	bl	c4c <NVIC_DisableIRQ>
     d9c:	2300      	movs	r3, #0
     d9e:	60fb      	str	r3, [r7, #12]
     da0:	e01b      	b.n	dda <uart_send+0x4e>
     da2:	4b20      	ldr	r3, [pc, #128]	; (e24 <uart_send+0x98>)
     da4:	681b      	ldr	r3, [r3, #0]
     da6:	68fa      	ldr	r2, [r7, #12]
     da8:	6879      	ldr	r1, [r7, #4]
     daa:	188a      	adds	r2, r1, r2
     dac:	7811      	ldrb	r1, [r2, #0]
     dae:	4a1e      	ldr	r2, [pc, #120]	; (e28 <uart_send+0x9c>)
     db0:	54d1      	strb	r1, [r2, r3]
     db2:	4b1c      	ldr	r3, [pc, #112]	; (e24 <uart_send+0x98>)
     db4:	681b      	ldr	r3, [r3, #0]
     db6:	3301      	adds	r3, #1
     db8:	05db      	lsls	r3, r3, #23
     dba:	0dda      	lsrs	r2, r3, #23
     dbc:	4b19      	ldr	r3, [pc, #100]	; (e24 <uart_send+0x98>)
     dbe:	601a      	str	r2, [r3, #0]
     dc0:	4b18      	ldr	r3, [pc, #96]	; (e24 <uart_send+0x98>)
     dc2:	681a      	ldr	r2, [r3, #0]
     dc4:	4b19      	ldr	r3, [pc, #100]	; (e2c <uart_send+0xa0>)
     dc6:	681b      	ldr	r3, [r3, #0]
     dc8:	429a      	cmp	r2, r3
     dca:	d103      	bne.n	dd4 <uart_send+0x48>
     dcc:	68fb      	ldr	r3, [r7, #12]
     dce:	3301      	adds	r3, #1
     dd0:	60fb      	str	r3, [r7, #12]
     dd2:	e006      	b.n	de2 <uart_send+0x56>
     dd4:	68fb      	ldr	r3, [r7, #12]
     dd6:	3301      	adds	r3, #1
     dd8:	60fb      	str	r3, [r7, #12]
     dda:	68fa      	ldr	r2, [r7, #12]
     ddc:	683b      	ldr	r3, [r7, #0]
     dde:	429a      	cmp	r2, r3
     de0:	dbdf      	blt.n	da2 <uart_send+0x16>
     de2:	4b13      	ldr	r3, [pc, #76]	; (e30 <uart_send+0xa4>)
     de4:	699b      	ldr	r3, [r3, #24]
     de6:	2208      	movs	r2, #8
     de8:	4013      	ands	r3, r2
     dea:	d10c      	bne.n	e06 <uart_send+0x7a>
     dec:	4a10      	ldr	r2, [pc, #64]	; (e30 <uart_send+0xa4>)
     dee:	4b0f      	ldr	r3, [pc, #60]	; (e2c <uart_send+0xa0>)
     df0:	681b      	ldr	r3, [r3, #0]
     df2:	490d      	ldr	r1, [pc, #52]	; (e28 <uart_send+0x9c>)
     df4:	5ccb      	ldrb	r3, [r1, r3]
     df6:	6013      	str	r3, [r2, #0]
     df8:	4b0c      	ldr	r3, [pc, #48]	; (e2c <uart_send+0xa0>)
     dfa:	681b      	ldr	r3, [r3, #0]
     dfc:	3301      	adds	r3, #1
     dfe:	05db      	lsls	r3, r3, #23
     e00:	0dda      	lsrs	r2, r3, #23
     e02:	4b0a      	ldr	r3, [pc, #40]	; (e2c <uart_send+0xa0>)
     e04:	601a      	str	r2, [r3, #0]
     e06:	4b0a      	ldr	r3, [pc, #40]	; (e30 <uart_send+0xa4>)
     e08:	4a09      	ldr	r2, [pc, #36]	; (e30 <uart_send+0xa4>)
     e0a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e0c:	2120      	movs	r1, #32
     e0e:	430a      	orrs	r2, r1
     e10:	639a      	str	r2, [r3, #56]	; 0x38
     e12:	2006      	movs	r0, #6
     e14:	f7ff fefe 	bl	c14 <NVIC_EnableIRQ>
     e18:	68fb      	ldr	r3, [r7, #12]
     e1a:	0018      	movs	r0, r3
     e1c:	46bd      	mov	sp, r7
     e1e:	b004      	add	sp, #16
     e20:	bd80      	pop	{r7, pc}
     e22:	46c0      	nop			; (mov r8, r8)
     e24:	200002f4 	.word	0x200002f4
     e28:	200000f0 	.word	0x200000f0
     e2c:	200002f0 	.word	0x200002f0
     e30:	40030000 	.word	0x40030000

00000e34 <uart_putch>:
     e34:	b580      	push	{r7, lr}
     e36:	b082      	sub	sp, #8
     e38:	af00      	add	r7, sp, #0
     e3a:	0002      	movs	r2, r0
     e3c:	1dfb      	adds	r3, r7, #7
     e3e:	701a      	strb	r2, [r3, #0]
     e40:	46c0      	nop			; (mov r8, r8)
     e42:	4b06      	ldr	r3, [pc, #24]	; (e5c <uart_putch+0x28>)
     e44:	699b      	ldr	r3, [r3, #24]
     e46:	2220      	movs	r2, #32
     e48:	4013      	ands	r3, r2
     e4a:	d1fa      	bne.n	e42 <uart_putch+0xe>
     e4c:	4b03      	ldr	r3, [pc, #12]	; (e5c <uart_putch+0x28>)
     e4e:	1dfa      	adds	r2, r7, #7
     e50:	7812      	ldrb	r2, [r2, #0]
     e52:	601a      	str	r2, [r3, #0]
     e54:	46c0      	nop			; (mov r8, r8)
     e56:	46bd      	mov	sp, r7
     e58:	b002      	add	sp, #8
     e5a:	bd80      	pop	{r7, pc}
     e5c:	40030000 	.word	0x40030000

00000e60 <UART1_Handler>:
     e60:	b580      	push	{r7, lr}
     e62:	af00      	add	r7, sp, #0
     e64:	4b1a      	ldr	r3, [pc, #104]	; (ed0 <UART1_Handler+0x70>)
     e66:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     e68:	2220      	movs	r2, #32
     e6a:	4013      	ands	r3, r2
     e6c:	d019      	beq.n	ea2 <UART1_Handler+0x42>
     e6e:	4b19      	ldr	r3, [pc, #100]	; (ed4 <UART1_Handler+0x74>)
     e70:	681a      	ldr	r2, [r3, #0]
     e72:	4b19      	ldr	r3, [pc, #100]	; (ed8 <UART1_Handler+0x78>)
     e74:	681b      	ldr	r3, [r3, #0]
     e76:	429a      	cmp	r2, r3
     e78:	d106      	bne.n	e88 <UART1_Handler+0x28>
     e7a:	4b15      	ldr	r3, [pc, #84]	; (ed0 <UART1_Handler+0x70>)
     e7c:	4a14      	ldr	r2, [pc, #80]	; (ed0 <UART1_Handler+0x70>)
     e7e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e80:	2120      	movs	r1, #32
     e82:	438a      	bics	r2, r1
     e84:	639a      	str	r2, [r3, #56]	; 0x38
     e86:	e00c      	b.n	ea2 <UART1_Handler+0x42>
     e88:	4a11      	ldr	r2, [pc, #68]	; (ed0 <UART1_Handler+0x70>)
     e8a:	4b12      	ldr	r3, [pc, #72]	; (ed4 <UART1_Handler+0x74>)
     e8c:	681b      	ldr	r3, [r3, #0]
     e8e:	4913      	ldr	r1, [pc, #76]	; (edc <UART1_Handler+0x7c>)
     e90:	5ccb      	ldrb	r3, [r1, r3]
     e92:	6013      	str	r3, [r2, #0]
     e94:	4b0f      	ldr	r3, [pc, #60]	; (ed4 <UART1_Handler+0x74>)
     e96:	681b      	ldr	r3, [r3, #0]
     e98:	3301      	adds	r3, #1
     e9a:	05db      	lsls	r3, r3, #23
     e9c:	0dda      	lsrs	r2, r3, #23
     e9e:	4b0d      	ldr	r3, [pc, #52]	; (ed4 <UART1_Handler+0x74>)
     ea0:	601a      	str	r2, [r3, #0]
     ea2:	4b0b      	ldr	r3, [pc, #44]	; (ed0 <UART1_Handler+0x70>)
     ea4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     ea6:	2210      	movs	r2, #16
     ea8:	4013      	ands	r3, r2
     eaa:	d00d      	beq.n	ec8 <UART1_Handler+0x68>
     eac:	4b0c      	ldr	r3, [pc, #48]	; (ee0 <UART1_Handler+0x80>)
     eae:	681a      	ldr	r2, [r3, #0]
     eb0:	4b07      	ldr	r3, [pc, #28]	; (ed0 <UART1_Handler+0x70>)
     eb2:	681b      	ldr	r3, [r3, #0]
     eb4:	b2d9      	uxtb	r1, r3
     eb6:	4b0b      	ldr	r3, [pc, #44]	; (ee4 <UART1_Handler+0x84>)
     eb8:	5499      	strb	r1, [r3, r2]
     eba:	4b09      	ldr	r3, [pc, #36]	; (ee0 <UART1_Handler+0x80>)
     ebc:	681b      	ldr	r3, [r3, #0]
     ebe:	3301      	adds	r3, #1
     ec0:	05db      	lsls	r3, r3, #23
     ec2:	0dda      	lsrs	r2, r3, #23
     ec4:	4b06      	ldr	r3, [pc, #24]	; (ee0 <UART1_Handler+0x80>)
     ec6:	601a      	str	r2, [r3, #0]
     ec8:	46c0      	nop			; (mov r8, r8)
     eca:	46bd      	mov	sp, r7
     ecc:	bd80      	pop	{r7, pc}
     ece:	46c0      	nop			; (mov r8, r8)
     ed0:	40030000 	.word	0x40030000
     ed4:	200002f0 	.word	0x200002f0
     ed8:	200002f4 	.word	0x200002f4
     edc:	200000f0 	.word	0x200000f0
     ee0:	200004f8 	.word	0x200004f8
     ee4:	200002f8 	.word	0x200002f8

00000ee8 <xputc>:
     ee8:	b580      	push	{r7, lr}
     eea:	b082      	sub	sp, #8
     eec:	af00      	add	r7, sp, #0
     eee:	0002      	movs	r2, r0
     ef0:	1dfb      	adds	r3, r7, #7
     ef2:	701a      	strb	r2, [r3, #0]
     ef4:	1dfb      	adds	r3, r7, #7
     ef6:	781b      	ldrb	r3, [r3, #0]
     ef8:	2b0a      	cmp	r3, #10
     efa:	d102      	bne.n	f02 <xputc+0x1a>
     efc:	200d      	movs	r0, #13
     efe:	f7ff fff3 	bl	ee8 <xputc>
     f02:	4b0d      	ldr	r3, [pc, #52]	; (f38 <xputc+0x50>)
     f04:	681b      	ldr	r3, [r3, #0]
     f06:	2b00      	cmp	r3, #0
     f08:	d008      	beq.n	f1c <xputc+0x34>
     f0a:	4b0b      	ldr	r3, [pc, #44]	; (f38 <xputc+0x50>)
     f0c:	681b      	ldr	r3, [r3, #0]
     f0e:	1c59      	adds	r1, r3, #1
     f10:	4a09      	ldr	r2, [pc, #36]	; (f38 <xputc+0x50>)
     f12:	6011      	str	r1, [r2, #0]
     f14:	1dfa      	adds	r2, r7, #7
     f16:	7812      	ldrb	r2, [r2, #0]
     f18:	701a      	strb	r2, [r3, #0]
     f1a:	e009      	b.n	f30 <xputc+0x48>
     f1c:	4b07      	ldr	r3, [pc, #28]	; (f3c <xputc+0x54>)
     f1e:	681b      	ldr	r3, [r3, #0]
     f20:	2b00      	cmp	r3, #0
     f22:	d005      	beq.n	f30 <xputc+0x48>
     f24:	4b05      	ldr	r3, [pc, #20]	; (f3c <xputc+0x54>)
     f26:	681b      	ldr	r3, [r3, #0]
     f28:	1dfa      	adds	r2, r7, #7
     f2a:	7812      	ldrb	r2, [r2, #0]
     f2c:	0010      	movs	r0, r2
     f2e:	4798      	blx	r3
     f30:	46bd      	mov	sp, r7
     f32:	b002      	add	sp, #8
     f34:	bd80      	pop	{r7, pc}
     f36:	46c0      	nop			; (mov r8, r8)
     f38:	20000504 	.word	0x20000504
     f3c:	20000500 	.word	0x20000500

00000f40 <xputs>:
     f40:	b580      	push	{r7, lr}
     f42:	b082      	sub	sp, #8
     f44:	af00      	add	r7, sp, #0
     f46:	6078      	str	r0, [r7, #4]
     f48:	e006      	b.n	f58 <xputs+0x18>
     f4a:	687b      	ldr	r3, [r7, #4]
     f4c:	1c5a      	adds	r2, r3, #1
     f4e:	607a      	str	r2, [r7, #4]
     f50:	781b      	ldrb	r3, [r3, #0]
     f52:	0018      	movs	r0, r3
     f54:	f7ff ffc8 	bl	ee8 <xputc>
     f58:	687b      	ldr	r3, [r7, #4]
     f5a:	781b      	ldrb	r3, [r3, #0]
     f5c:	2b00      	cmp	r3, #0
     f5e:	d1f4      	bne.n	f4a <xputs+0xa>
     f60:	46c0      	nop			; (mov r8, r8)
     f62:	46bd      	mov	sp, r7
     f64:	b002      	add	sp, #8
     f66:	bd80      	pop	{r7, pc}

00000f68 <xfputs>:
     f68:	b580      	push	{r7, lr}
     f6a:	b084      	sub	sp, #16
     f6c:	af00      	add	r7, sp, #0
     f6e:	6078      	str	r0, [r7, #4]
     f70:	6039      	str	r1, [r7, #0]
     f72:	4b0c      	ldr	r3, [pc, #48]	; (fa4 <xfputs+0x3c>)
     f74:	681b      	ldr	r3, [r3, #0]
     f76:	60fb      	str	r3, [r7, #12]
     f78:	4b0a      	ldr	r3, [pc, #40]	; (fa4 <xfputs+0x3c>)
     f7a:	687a      	ldr	r2, [r7, #4]
     f7c:	601a      	str	r2, [r3, #0]
     f7e:	e006      	b.n	f8e <xfputs+0x26>
     f80:	683b      	ldr	r3, [r7, #0]
     f82:	1c5a      	adds	r2, r3, #1
     f84:	603a      	str	r2, [r7, #0]
     f86:	781b      	ldrb	r3, [r3, #0]
     f88:	0018      	movs	r0, r3
     f8a:	f7ff ffad 	bl	ee8 <xputc>
     f8e:	683b      	ldr	r3, [r7, #0]
     f90:	781b      	ldrb	r3, [r3, #0]
     f92:	2b00      	cmp	r3, #0
     f94:	d1f4      	bne.n	f80 <xfputs+0x18>
     f96:	4b03      	ldr	r3, [pc, #12]	; (fa4 <xfputs+0x3c>)
     f98:	68fa      	ldr	r2, [r7, #12]
     f9a:	601a      	str	r2, [r3, #0]
     f9c:	46c0      	nop			; (mov r8, r8)
     f9e:	46bd      	mov	sp, r7
     fa0:	b004      	add	sp, #16
     fa2:	bd80      	pop	{r7, pc}
     fa4:	20000500 	.word	0x20000500

00000fa8 <xvprintf>:
     fa8:	b580      	push	{r7, lr}
     faa:	b08e      	sub	sp, #56	; 0x38
     fac:	af00      	add	r7, sp, #0
     fae:	6078      	str	r0, [r7, #4]
     fb0:	6039      	str	r1, [r7, #0]
     fb2:	687b      	ldr	r3, [r7, #4]
     fb4:	1c5a      	adds	r2, r3, #1
     fb6:	607a      	str	r2, [r7, #4]
     fb8:	221f      	movs	r2, #31
     fba:	18ba      	adds	r2, r7, r2
     fbc:	781b      	ldrb	r3, [r3, #0]
     fbe:	7013      	strb	r3, [r2, #0]
     fc0:	231f      	movs	r3, #31
     fc2:	18fb      	adds	r3, r7, r3
     fc4:	781b      	ldrb	r3, [r3, #0]
     fc6:	2b00      	cmp	r3, #0
     fc8:	d100      	bne.n	fcc <xvprintf+0x24>
     fca:	e172      	b.n	12b2 <xvprintf+0x30a>
     fcc:	231f      	movs	r3, #31
     fce:	18fb      	adds	r3, r7, r3
     fd0:	781b      	ldrb	r3, [r3, #0]
     fd2:	2b25      	cmp	r3, #37	; 0x25
     fd4:	d006      	beq.n	fe4 <xvprintf+0x3c>
     fd6:	231f      	movs	r3, #31
     fd8:	18fb      	adds	r3, r7, r3
     fda:	781b      	ldrb	r3, [r3, #0]
     fdc:	0018      	movs	r0, r3
     fde:	f7ff ff83 	bl	ee8 <xputc>
     fe2:	e165      	b.n	12b0 <xvprintf+0x308>
     fe4:	2300      	movs	r3, #0
     fe6:	627b      	str	r3, [r7, #36]	; 0x24
     fe8:	687b      	ldr	r3, [r7, #4]
     fea:	1c5a      	adds	r2, r3, #1
     fec:	607a      	str	r2, [r7, #4]
     fee:	221f      	movs	r2, #31
     ff0:	18ba      	adds	r2, r7, r2
     ff2:	781b      	ldrb	r3, [r3, #0]
     ff4:	7013      	strb	r3, [r2, #0]
     ff6:	231f      	movs	r3, #31
     ff8:	18fb      	adds	r3, r7, r3
     ffa:	781b      	ldrb	r3, [r3, #0]
     ffc:	2b30      	cmp	r3, #48	; 0x30
     ffe:	d109      	bne.n	1014 <xvprintf+0x6c>
    1000:	2301      	movs	r3, #1
    1002:	627b      	str	r3, [r7, #36]	; 0x24
    1004:	687b      	ldr	r3, [r7, #4]
    1006:	1c5a      	adds	r2, r3, #1
    1008:	607a      	str	r2, [r7, #4]
    100a:	221f      	movs	r2, #31
    100c:	18ba      	adds	r2, r7, r2
    100e:	781b      	ldrb	r3, [r3, #0]
    1010:	7013      	strb	r3, [r2, #0]
    1012:	e00d      	b.n	1030 <xvprintf+0x88>
    1014:	231f      	movs	r3, #31
    1016:	18fb      	adds	r3, r7, r3
    1018:	781b      	ldrb	r3, [r3, #0]
    101a:	2b2d      	cmp	r3, #45	; 0x2d
    101c:	d108      	bne.n	1030 <xvprintf+0x88>
    101e:	2302      	movs	r3, #2
    1020:	627b      	str	r3, [r7, #36]	; 0x24
    1022:	687b      	ldr	r3, [r7, #4]
    1024:	1c5a      	adds	r2, r3, #1
    1026:	607a      	str	r2, [r7, #4]
    1028:	221f      	movs	r2, #31
    102a:	18ba      	adds	r2, r7, r2
    102c:	781b      	ldrb	r3, [r3, #0]
    102e:	7013      	strb	r3, [r2, #0]
    1030:	2300      	movs	r3, #0
    1032:	62bb      	str	r3, [r7, #40]	; 0x28
    1034:	e012      	b.n	105c <xvprintf+0xb4>
    1036:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1038:	0013      	movs	r3, r2
    103a:	009b      	lsls	r3, r3, #2
    103c:	189b      	adds	r3, r3, r2
    103e:	005b      	lsls	r3, r3, #1
    1040:	001a      	movs	r2, r3
    1042:	231f      	movs	r3, #31
    1044:	18fb      	adds	r3, r7, r3
    1046:	781b      	ldrb	r3, [r3, #0]
    1048:	18d3      	adds	r3, r2, r3
    104a:	3b30      	subs	r3, #48	; 0x30
    104c:	62bb      	str	r3, [r7, #40]	; 0x28
    104e:	687b      	ldr	r3, [r7, #4]
    1050:	1c5a      	adds	r2, r3, #1
    1052:	607a      	str	r2, [r7, #4]
    1054:	221f      	movs	r2, #31
    1056:	18ba      	adds	r2, r7, r2
    1058:	781b      	ldrb	r3, [r3, #0]
    105a:	7013      	strb	r3, [r2, #0]
    105c:	231f      	movs	r3, #31
    105e:	18fb      	adds	r3, r7, r3
    1060:	781b      	ldrb	r3, [r3, #0]
    1062:	2b2f      	cmp	r3, #47	; 0x2f
    1064:	d904      	bls.n	1070 <xvprintf+0xc8>
    1066:	231f      	movs	r3, #31
    1068:	18fb      	adds	r3, r7, r3
    106a:	781b      	ldrb	r3, [r3, #0]
    106c:	2b39      	cmp	r3, #57	; 0x39
    106e:	d9e2      	bls.n	1036 <xvprintf+0x8e>
    1070:	231f      	movs	r3, #31
    1072:	18fb      	adds	r3, r7, r3
    1074:	781b      	ldrb	r3, [r3, #0]
    1076:	2b6c      	cmp	r3, #108	; 0x6c
    1078:	d004      	beq.n	1084 <xvprintf+0xdc>
    107a:	231f      	movs	r3, #31
    107c:	18fb      	adds	r3, r7, r3
    107e:	781b      	ldrb	r3, [r3, #0]
    1080:	2b4c      	cmp	r3, #76	; 0x4c
    1082:	d10a      	bne.n	109a <xvprintf+0xf2>
    1084:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1086:	2204      	movs	r2, #4
    1088:	4313      	orrs	r3, r2
    108a:	627b      	str	r3, [r7, #36]	; 0x24
    108c:	687b      	ldr	r3, [r7, #4]
    108e:	1c5a      	adds	r2, r3, #1
    1090:	607a      	str	r2, [r7, #4]
    1092:	221f      	movs	r2, #31
    1094:	18ba      	adds	r2, r7, r2
    1096:	781b      	ldrb	r3, [r3, #0]
    1098:	7013      	strb	r3, [r2, #0]
    109a:	231f      	movs	r3, #31
    109c:	18fb      	adds	r3, r7, r3
    109e:	781b      	ldrb	r3, [r3, #0]
    10a0:	2b00      	cmp	r3, #0
    10a2:	d100      	bne.n	10a6 <xvprintf+0xfe>
    10a4:	e107      	b.n	12b6 <xvprintf+0x30e>
    10a6:	231e      	movs	r3, #30
    10a8:	18fb      	adds	r3, r7, r3
    10aa:	221f      	movs	r2, #31
    10ac:	18ba      	adds	r2, r7, r2
    10ae:	7812      	ldrb	r2, [r2, #0]
    10b0:	701a      	strb	r2, [r3, #0]
    10b2:	231e      	movs	r3, #30
    10b4:	18fb      	adds	r3, r7, r3
    10b6:	781b      	ldrb	r3, [r3, #0]
    10b8:	2b60      	cmp	r3, #96	; 0x60
    10ba:	d906      	bls.n	10ca <xvprintf+0x122>
    10bc:	231e      	movs	r3, #30
    10be:	18fb      	adds	r3, r7, r3
    10c0:	221e      	movs	r2, #30
    10c2:	18ba      	adds	r2, r7, r2
    10c4:	7812      	ldrb	r2, [r2, #0]
    10c6:	3a20      	subs	r2, #32
    10c8:	701a      	strb	r2, [r3, #0]
    10ca:	231e      	movs	r3, #30
    10cc:	18fb      	adds	r3, r7, r3
    10ce:	781b      	ldrb	r3, [r3, #0]
    10d0:	3b42      	subs	r3, #66	; 0x42
    10d2:	2b16      	cmp	r3, #22
    10d4:	d847      	bhi.n	1166 <xvprintf+0x1be>
    10d6:	009a      	lsls	r2, r3, #2
    10d8:	4b79      	ldr	r3, [pc, #484]	; (12c0 <xvprintf+0x318>)
    10da:	18d3      	adds	r3, r2, r3
    10dc:	681b      	ldr	r3, [r3, #0]
    10de:	469f      	mov	pc, r3
    10e0:	683b      	ldr	r3, [r7, #0]
    10e2:	1d1a      	adds	r2, r3, #4
    10e4:	603a      	str	r2, [r7, #0]
    10e6:	681b      	ldr	r3, [r3, #0]
    10e8:	61bb      	str	r3, [r7, #24]
    10ea:	2300      	movs	r3, #0
    10ec:	62fb      	str	r3, [r7, #44]	; 0x2c
    10ee:	e002      	b.n	10f6 <xvprintf+0x14e>
    10f0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10f2:	3301      	adds	r3, #1
    10f4:	62fb      	str	r3, [r7, #44]	; 0x2c
    10f6:	69ba      	ldr	r2, [r7, #24]
    10f8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    10fa:	18d3      	adds	r3, r2, r3
    10fc:	781b      	ldrb	r3, [r3, #0]
    10fe:	2b00      	cmp	r3, #0
    1100:	d1f6      	bne.n	10f0 <xvprintf+0x148>
    1102:	e002      	b.n	110a <xvprintf+0x162>
    1104:	2020      	movs	r0, #32
    1106:	f7ff feef 	bl	ee8 <xputc>
    110a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    110c:	2202      	movs	r2, #2
    110e:	4013      	ands	r3, r2
    1110:	d105      	bne.n	111e <xvprintf+0x176>
    1112:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1114:	1c5a      	adds	r2, r3, #1
    1116:	62fa      	str	r2, [r7, #44]	; 0x2c
    1118:	6aba      	ldr	r2, [r7, #40]	; 0x28
    111a:	4293      	cmp	r3, r2
    111c:	d3f2      	bcc.n	1104 <xvprintf+0x15c>
    111e:	69bb      	ldr	r3, [r7, #24]
    1120:	0018      	movs	r0, r3
    1122:	f7ff ff0d 	bl	f40 <xputs>
    1126:	e002      	b.n	112e <xvprintf+0x186>
    1128:	2020      	movs	r0, #32
    112a:	f7ff fedd 	bl	ee8 <xputc>
    112e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1130:	1c5a      	adds	r2, r3, #1
    1132:	62fa      	str	r2, [r7, #44]	; 0x2c
    1134:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1136:	4293      	cmp	r3, r2
    1138:	d3f6      	bcc.n	1128 <xvprintf+0x180>
    113a:	e0b9      	b.n	12b0 <xvprintf+0x308>
    113c:	683b      	ldr	r3, [r7, #0]
    113e:	1d1a      	adds	r2, r3, #4
    1140:	603a      	str	r2, [r7, #0]
    1142:	681b      	ldr	r3, [r3, #0]
    1144:	b2db      	uxtb	r3, r3
    1146:	0018      	movs	r0, r3
    1148:	f7ff fece 	bl	ee8 <xputc>
    114c:	e0b0      	b.n	12b0 <xvprintf+0x308>
    114e:	2302      	movs	r3, #2
    1150:	637b      	str	r3, [r7, #52]	; 0x34
    1152:	e00f      	b.n	1174 <xvprintf+0x1cc>
    1154:	2308      	movs	r3, #8
    1156:	637b      	str	r3, [r7, #52]	; 0x34
    1158:	e00c      	b.n	1174 <xvprintf+0x1cc>
    115a:	230a      	movs	r3, #10
    115c:	637b      	str	r3, [r7, #52]	; 0x34
    115e:	e009      	b.n	1174 <xvprintf+0x1cc>
    1160:	2310      	movs	r3, #16
    1162:	637b      	str	r3, [r7, #52]	; 0x34
    1164:	e006      	b.n	1174 <xvprintf+0x1cc>
    1166:	231f      	movs	r3, #31
    1168:	18fb      	adds	r3, r7, r3
    116a:	781b      	ldrb	r3, [r3, #0]
    116c:	0018      	movs	r0, r3
    116e:	f7ff febb 	bl	ee8 <xputc>
    1172:	e09d      	b.n	12b0 <xvprintf+0x308>
    1174:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1176:	2204      	movs	r2, #4
    1178:	4013      	ands	r3, r2
    117a:	d004      	beq.n	1186 <xvprintf+0x1de>
    117c:	683b      	ldr	r3, [r7, #0]
    117e:	1d1a      	adds	r2, r3, #4
    1180:	603a      	str	r2, [r7, #0]
    1182:	681b      	ldr	r3, [r3, #0]
    1184:	e00d      	b.n	11a2 <xvprintf+0x1fa>
    1186:	231e      	movs	r3, #30
    1188:	18fb      	adds	r3, r7, r3
    118a:	781b      	ldrb	r3, [r3, #0]
    118c:	2b44      	cmp	r3, #68	; 0x44
    118e:	d104      	bne.n	119a <xvprintf+0x1f2>
    1190:	683b      	ldr	r3, [r7, #0]
    1192:	1d1a      	adds	r2, r3, #4
    1194:	603a      	str	r2, [r7, #0]
    1196:	681b      	ldr	r3, [r3, #0]
    1198:	e003      	b.n	11a2 <xvprintf+0x1fa>
    119a:	683b      	ldr	r3, [r7, #0]
    119c:	1d1a      	adds	r2, r3, #4
    119e:	603a      	str	r2, [r7, #0]
    11a0:	681b      	ldr	r3, [r3, #0]
    11a2:	623b      	str	r3, [r7, #32]
    11a4:	231e      	movs	r3, #30
    11a6:	18fb      	adds	r3, r7, r3
    11a8:	781b      	ldrb	r3, [r3, #0]
    11aa:	2b44      	cmp	r3, #68	; 0x44
    11ac:	d109      	bne.n	11c2 <xvprintf+0x21a>
    11ae:	6a3b      	ldr	r3, [r7, #32]
    11b0:	2b00      	cmp	r3, #0
    11b2:	da06      	bge.n	11c2 <xvprintf+0x21a>
    11b4:	6a3b      	ldr	r3, [r7, #32]
    11b6:	425b      	negs	r3, r3
    11b8:	623b      	str	r3, [r7, #32]
    11ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    11bc:	2208      	movs	r2, #8
    11be:	4313      	orrs	r3, r2
    11c0:	627b      	str	r3, [r7, #36]	; 0x24
    11c2:	2300      	movs	r3, #0
    11c4:	633b      	str	r3, [r7, #48]	; 0x30
    11c6:	6a3b      	ldr	r3, [r7, #32]
    11c8:	6b79      	ldr	r1, [r7, #52]	; 0x34
    11ca:	0018      	movs	r0, r3
    11cc:	f000 fbd6 	bl	197c <__aeabi_uidivmod>
    11d0:	000b      	movs	r3, r1
    11d2:	001a      	movs	r2, r3
    11d4:	231e      	movs	r3, #30
    11d6:	18fb      	adds	r3, r7, r3
    11d8:	701a      	strb	r2, [r3, #0]
    11da:	6b79      	ldr	r1, [r7, #52]	; 0x34
    11dc:	6a38      	ldr	r0, [r7, #32]
    11de:	f000 fb47 	bl	1870 <__aeabi_uidiv>
    11e2:	0003      	movs	r3, r0
    11e4:	623b      	str	r3, [r7, #32]
    11e6:	231e      	movs	r3, #30
    11e8:	18fb      	adds	r3, r7, r3
    11ea:	781b      	ldrb	r3, [r3, #0]
    11ec:	2b09      	cmp	r3, #9
    11ee:	d90e      	bls.n	120e <xvprintf+0x266>
    11f0:	231f      	movs	r3, #31
    11f2:	18fb      	adds	r3, r7, r3
    11f4:	781b      	ldrb	r3, [r3, #0]
    11f6:	2b78      	cmp	r3, #120	; 0x78
    11f8:	d101      	bne.n	11fe <xvprintf+0x256>
    11fa:	2327      	movs	r3, #39	; 0x27
    11fc:	e000      	b.n	1200 <xvprintf+0x258>
    11fe:	2307      	movs	r3, #7
    1200:	221e      	movs	r2, #30
    1202:	18ba      	adds	r2, r7, r2
    1204:	211e      	movs	r1, #30
    1206:	1879      	adds	r1, r7, r1
    1208:	7809      	ldrb	r1, [r1, #0]
    120a:	185b      	adds	r3, r3, r1
    120c:	7013      	strb	r3, [r2, #0]
    120e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1210:	1c5a      	adds	r2, r3, #1
    1212:	633a      	str	r2, [r7, #48]	; 0x30
    1214:	221e      	movs	r2, #30
    1216:	18ba      	adds	r2, r7, r2
    1218:	7812      	ldrb	r2, [r2, #0]
    121a:	3230      	adds	r2, #48	; 0x30
    121c:	b2d1      	uxtb	r1, r2
    121e:	2208      	movs	r2, #8
    1220:	18ba      	adds	r2, r7, r2
    1222:	54d1      	strb	r1, [r2, r3]
    1224:	6a3b      	ldr	r3, [r7, #32]
    1226:	2b00      	cmp	r3, #0
    1228:	d002      	beq.n	1230 <xvprintf+0x288>
    122a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    122c:	2b0f      	cmp	r3, #15
    122e:	d9ca      	bls.n	11c6 <xvprintf+0x21e>
    1230:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1232:	2208      	movs	r2, #8
    1234:	4013      	ands	r3, r2
    1236:	d006      	beq.n	1246 <xvprintf+0x29e>
    1238:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    123a:	1c5a      	adds	r2, r3, #1
    123c:	633a      	str	r2, [r7, #48]	; 0x30
    123e:	2208      	movs	r2, #8
    1240:	18ba      	adds	r2, r7, r2
    1242:	212d      	movs	r1, #45	; 0x2d
    1244:	54d1      	strb	r1, [r2, r3]
    1246:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1248:	62fb      	str	r3, [r7, #44]	; 0x2c
    124a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    124c:	2201      	movs	r2, #1
    124e:	4013      	ands	r3, r2
    1250:	d001      	beq.n	1256 <xvprintf+0x2ae>
    1252:	2230      	movs	r2, #48	; 0x30
    1254:	e000      	b.n	1258 <xvprintf+0x2b0>
    1256:	2220      	movs	r2, #32
    1258:	231e      	movs	r3, #30
    125a:	18fb      	adds	r3, r7, r3
    125c:	701a      	strb	r2, [r3, #0]
    125e:	e005      	b.n	126c <xvprintf+0x2c4>
    1260:	231e      	movs	r3, #30
    1262:	18fb      	adds	r3, r7, r3
    1264:	781b      	ldrb	r3, [r3, #0]
    1266:	0018      	movs	r0, r3
    1268:	f7ff fe3e 	bl	ee8 <xputc>
    126c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    126e:	2202      	movs	r2, #2
    1270:	4013      	ands	r3, r2
    1272:	d105      	bne.n	1280 <xvprintf+0x2d8>
    1274:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1276:	1c5a      	adds	r2, r3, #1
    1278:	62fa      	str	r2, [r7, #44]	; 0x2c
    127a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    127c:	4293      	cmp	r3, r2
    127e:	d3ef      	bcc.n	1260 <xvprintf+0x2b8>
    1280:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1282:	3b01      	subs	r3, #1
    1284:	633b      	str	r3, [r7, #48]	; 0x30
    1286:	2308      	movs	r3, #8
    1288:	18fa      	adds	r2, r7, r3
    128a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    128c:	18d3      	adds	r3, r2, r3
    128e:	781b      	ldrb	r3, [r3, #0]
    1290:	0018      	movs	r0, r3
    1292:	f7ff fe29 	bl	ee8 <xputc>
    1296:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1298:	2b00      	cmp	r3, #0
    129a:	d1f1      	bne.n	1280 <xvprintf+0x2d8>
    129c:	e002      	b.n	12a4 <xvprintf+0x2fc>
    129e:	2020      	movs	r0, #32
    12a0:	f7ff fe22 	bl	ee8 <xputc>
    12a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12a6:	1c5a      	adds	r2, r3, #1
    12a8:	62fa      	str	r2, [r7, #44]	; 0x2c
    12aa:	6aba      	ldr	r2, [r7, #40]	; 0x28
    12ac:	4293      	cmp	r3, r2
    12ae:	d3f6      	bcc.n	129e <xvprintf+0x2f6>
    12b0:	e67f      	b.n	fb2 <xvprintf+0xa>
    12b2:	46c0      	nop			; (mov r8, r8)
    12b4:	e000      	b.n	12b8 <xvprintf+0x310>
    12b6:	46c0      	nop			; (mov r8, r8)
    12b8:	46c0      	nop			; (mov r8, r8)
    12ba:	46bd      	mov	sp, r7
    12bc:	b00e      	add	sp, #56	; 0x38
    12be:	bd80      	pop	{r7, pc}
    12c0:	00001998 	.word	0x00001998

000012c4 <xprintf>:
    12c4:	b40f      	push	{r0, r1, r2, r3}
    12c6:	b580      	push	{r7, lr}
    12c8:	b082      	sub	sp, #8
    12ca:	af00      	add	r7, sp, #0
    12cc:	2314      	movs	r3, #20
    12ce:	18fb      	adds	r3, r7, r3
    12d0:	607b      	str	r3, [r7, #4]
    12d2:	687a      	ldr	r2, [r7, #4]
    12d4:	693b      	ldr	r3, [r7, #16]
    12d6:	0011      	movs	r1, r2
    12d8:	0018      	movs	r0, r3
    12da:	f7ff fe65 	bl	fa8 <xvprintf>
    12de:	46c0      	nop			; (mov r8, r8)
    12e0:	46bd      	mov	sp, r7
    12e2:	b002      	add	sp, #8
    12e4:	bc80      	pop	{r7}
    12e6:	bc08      	pop	{r3}
    12e8:	b004      	add	sp, #16
    12ea:	4718      	bx	r3

000012ec <xsprintf>:
    12ec:	b40e      	push	{r1, r2, r3}
    12ee:	b580      	push	{r7, lr}
    12f0:	b085      	sub	sp, #20
    12f2:	af00      	add	r7, sp, #0
    12f4:	6078      	str	r0, [r7, #4]
    12f6:	4b0d      	ldr	r3, [pc, #52]	; (132c <xsprintf+0x40>)
    12f8:	687a      	ldr	r2, [r7, #4]
    12fa:	601a      	str	r2, [r3, #0]
    12fc:	2320      	movs	r3, #32
    12fe:	18fb      	adds	r3, r7, r3
    1300:	60fb      	str	r3, [r7, #12]
    1302:	68fa      	ldr	r2, [r7, #12]
    1304:	69fb      	ldr	r3, [r7, #28]
    1306:	0011      	movs	r1, r2
    1308:	0018      	movs	r0, r3
    130a:	f7ff fe4d 	bl	fa8 <xvprintf>
    130e:	4b07      	ldr	r3, [pc, #28]	; (132c <xsprintf+0x40>)
    1310:	681b      	ldr	r3, [r3, #0]
    1312:	2200      	movs	r2, #0
    1314:	701a      	strb	r2, [r3, #0]
    1316:	4b05      	ldr	r3, [pc, #20]	; (132c <xsprintf+0x40>)
    1318:	2200      	movs	r2, #0
    131a:	601a      	str	r2, [r3, #0]
    131c:	46c0      	nop			; (mov r8, r8)
    131e:	46bd      	mov	sp, r7
    1320:	b005      	add	sp, #20
    1322:	bc80      	pop	{r7}
    1324:	bc08      	pop	{r3}
    1326:	b003      	add	sp, #12
    1328:	4718      	bx	r3
    132a:	46c0      	nop			; (mov r8, r8)
    132c:	20000504 	.word	0x20000504

00001330 <xfprintf>:
    1330:	b40e      	push	{r1, r2, r3}
    1332:	b580      	push	{r7, lr}
    1334:	b085      	sub	sp, #20
    1336:	af00      	add	r7, sp, #0
    1338:	6078      	str	r0, [r7, #4]
    133a:	4b0c      	ldr	r3, [pc, #48]	; (136c <xfprintf+0x3c>)
    133c:	681b      	ldr	r3, [r3, #0]
    133e:	60fb      	str	r3, [r7, #12]
    1340:	4b0a      	ldr	r3, [pc, #40]	; (136c <xfprintf+0x3c>)
    1342:	687a      	ldr	r2, [r7, #4]
    1344:	601a      	str	r2, [r3, #0]
    1346:	2320      	movs	r3, #32
    1348:	18fb      	adds	r3, r7, r3
    134a:	60bb      	str	r3, [r7, #8]
    134c:	68ba      	ldr	r2, [r7, #8]
    134e:	69fb      	ldr	r3, [r7, #28]
    1350:	0011      	movs	r1, r2
    1352:	0018      	movs	r0, r3
    1354:	f7ff fe28 	bl	fa8 <xvprintf>
    1358:	4b04      	ldr	r3, [pc, #16]	; (136c <xfprintf+0x3c>)
    135a:	68fa      	ldr	r2, [r7, #12]
    135c:	601a      	str	r2, [r3, #0]
    135e:	46c0      	nop			; (mov r8, r8)
    1360:	46bd      	mov	sp, r7
    1362:	b005      	add	sp, #20
    1364:	bc80      	pop	{r7}
    1366:	bc08      	pop	{r3}
    1368:	b003      	add	sp, #12
    136a:	4718      	bx	r3
    136c:	20000500 	.word	0x20000500

00001370 <put_dump>:
    1370:	b580      	push	{r7, lr}
    1372:	b088      	sub	sp, #32
    1374:	af00      	add	r7, sp, #0
    1376:	60f8      	str	r0, [r7, #12]
    1378:	60b9      	str	r1, [r7, #8]
    137a:	607a      	str	r2, [r7, #4]
    137c:	603b      	str	r3, [r7, #0]
    137e:	68ba      	ldr	r2, [r7, #8]
    1380:	4b38      	ldr	r3, [pc, #224]	; (1464 <put_dump+0xf4>)
    1382:	0011      	movs	r1, r2
    1384:	0018      	movs	r0, r3
    1386:	f7ff ff9d 	bl	12c4 <xprintf>
    138a:	683b      	ldr	r3, [r7, #0]
    138c:	2b02      	cmp	r3, #2
    138e:	d03c      	beq.n	140a <put_dump+0x9a>
    1390:	2b04      	cmp	r3, #4
    1392:	d04d      	beq.n	1430 <put_dump+0xc0>
    1394:	2b01      	cmp	r3, #1
    1396:	d15d      	bne.n	1454 <put_dump+0xe4>
    1398:	68fb      	ldr	r3, [r7, #12]
    139a:	613b      	str	r3, [r7, #16]
    139c:	2300      	movs	r3, #0
    139e:	61fb      	str	r3, [r7, #28]
    13a0:	e00c      	b.n	13bc <put_dump+0x4c>
    13a2:	69fb      	ldr	r3, [r7, #28]
    13a4:	693a      	ldr	r2, [r7, #16]
    13a6:	18d3      	adds	r3, r2, r3
    13a8:	781b      	ldrb	r3, [r3, #0]
    13aa:	001a      	movs	r2, r3
    13ac:	4b2e      	ldr	r3, [pc, #184]	; (1468 <put_dump+0xf8>)
    13ae:	0011      	movs	r1, r2
    13b0:	0018      	movs	r0, r3
    13b2:	f7ff ff87 	bl	12c4 <xprintf>
    13b6:	69fb      	ldr	r3, [r7, #28]
    13b8:	3301      	adds	r3, #1
    13ba:	61fb      	str	r3, [r7, #28]
    13bc:	69fa      	ldr	r2, [r7, #28]
    13be:	687b      	ldr	r3, [r7, #4]
    13c0:	429a      	cmp	r2, r3
    13c2:	dbee      	blt.n	13a2 <put_dump+0x32>
    13c4:	2020      	movs	r0, #32
    13c6:	f7ff fd8f 	bl	ee8 <xputc>
    13ca:	2300      	movs	r3, #0
    13cc:	61fb      	str	r3, [r7, #28]
    13ce:	e017      	b.n	1400 <put_dump+0x90>
    13d0:	69fb      	ldr	r3, [r7, #28]
    13d2:	693a      	ldr	r2, [r7, #16]
    13d4:	18d3      	adds	r3, r2, r3
    13d6:	781b      	ldrb	r3, [r3, #0]
    13d8:	2b1f      	cmp	r3, #31
    13da:	d90a      	bls.n	13f2 <put_dump+0x82>
    13dc:	69fb      	ldr	r3, [r7, #28]
    13de:	693a      	ldr	r2, [r7, #16]
    13e0:	18d3      	adds	r3, r2, r3
    13e2:	781b      	ldrb	r3, [r3, #0]
    13e4:	2b7e      	cmp	r3, #126	; 0x7e
    13e6:	d804      	bhi.n	13f2 <put_dump+0x82>
    13e8:	69fb      	ldr	r3, [r7, #28]
    13ea:	693a      	ldr	r2, [r7, #16]
    13ec:	18d3      	adds	r3, r2, r3
    13ee:	781b      	ldrb	r3, [r3, #0]
    13f0:	e000      	b.n	13f4 <put_dump+0x84>
    13f2:	232e      	movs	r3, #46	; 0x2e
    13f4:	0018      	movs	r0, r3
    13f6:	f7ff fd77 	bl	ee8 <xputc>
    13fa:	69fb      	ldr	r3, [r7, #28]
    13fc:	3301      	adds	r3, #1
    13fe:	61fb      	str	r3, [r7, #28]
    1400:	69fa      	ldr	r2, [r7, #28]
    1402:	687b      	ldr	r3, [r7, #4]
    1404:	429a      	cmp	r2, r3
    1406:	dbe3      	blt.n	13d0 <put_dump+0x60>
    1408:	e024      	b.n	1454 <put_dump+0xe4>
    140a:	68fb      	ldr	r3, [r7, #12]
    140c:	61bb      	str	r3, [r7, #24]
    140e:	69bb      	ldr	r3, [r7, #24]
    1410:	1c9a      	adds	r2, r3, #2
    1412:	61ba      	str	r2, [r7, #24]
    1414:	881b      	ldrh	r3, [r3, #0]
    1416:	001a      	movs	r2, r3
    1418:	4b14      	ldr	r3, [pc, #80]	; (146c <put_dump+0xfc>)
    141a:	0011      	movs	r1, r2
    141c:	0018      	movs	r0, r3
    141e:	f7ff ff51 	bl	12c4 <xprintf>
    1422:	687b      	ldr	r3, [r7, #4]
    1424:	3b01      	subs	r3, #1
    1426:	607b      	str	r3, [r7, #4]
    1428:	687b      	ldr	r3, [r7, #4]
    142a:	2b00      	cmp	r3, #0
    142c:	d1ef      	bne.n	140e <put_dump+0x9e>
    142e:	e011      	b.n	1454 <put_dump+0xe4>
    1430:	68fb      	ldr	r3, [r7, #12]
    1432:	617b      	str	r3, [r7, #20]
    1434:	697b      	ldr	r3, [r7, #20]
    1436:	1d1a      	adds	r2, r3, #4
    1438:	617a      	str	r2, [r7, #20]
    143a:	681a      	ldr	r2, [r3, #0]
    143c:	4b0c      	ldr	r3, [pc, #48]	; (1470 <put_dump+0x100>)
    143e:	0011      	movs	r1, r2
    1440:	0018      	movs	r0, r3
    1442:	f7ff ff3f 	bl	12c4 <xprintf>
    1446:	687b      	ldr	r3, [r7, #4]
    1448:	3b01      	subs	r3, #1
    144a:	607b      	str	r3, [r7, #4]
    144c:	687b      	ldr	r3, [r7, #4]
    144e:	2b00      	cmp	r3, #0
    1450:	d1f0      	bne.n	1434 <put_dump+0xc4>
    1452:	46c0      	nop			; (mov r8, r8)
    1454:	200a      	movs	r0, #10
    1456:	f7ff fd47 	bl	ee8 <xputc>
    145a:	46c0      	nop			; (mov r8, r8)
    145c:	46bd      	mov	sp, r7
    145e:	b008      	add	sp, #32
    1460:	bd80      	pop	{r7, pc}
    1462:	46c0      	nop			; (mov r8, r8)
    1464:	000019f4 	.word	0x000019f4
    1468:	000019fc 	.word	0x000019fc
    146c:	00001a04 	.word	0x00001a04
    1470:	00001a0c 	.word	0x00001a0c

00001474 <xgets>:
    1474:	b580      	push	{r7, lr}
    1476:	b084      	sub	sp, #16
    1478:	af00      	add	r7, sp, #0
    147a:	6078      	str	r0, [r7, #4]
    147c:	6039      	str	r1, [r7, #0]
    147e:	4b24      	ldr	r3, [pc, #144]	; (1510 <xgets+0x9c>)
    1480:	681b      	ldr	r3, [r3, #0]
    1482:	2b00      	cmp	r3, #0
    1484:	d101      	bne.n	148a <xgets+0x16>
    1486:	2300      	movs	r3, #0
    1488:	e03e      	b.n	1508 <xgets+0x94>
    148a:	2300      	movs	r3, #0
    148c:	60fb      	str	r3, [r7, #12]
    148e:	4b20      	ldr	r3, [pc, #128]	; (1510 <xgets+0x9c>)
    1490:	681b      	ldr	r3, [r3, #0]
    1492:	4798      	blx	r3
    1494:	0003      	movs	r3, r0
    1496:	60bb      	str	r3, [r7, #8]
    1498:	68bb      	ldr	r3, [r7, #8]
    149a:	2b00      	cmp	r3, #0
    149c:	d101      	bne.n	14a2 <xgets+0x2e>
    149e:	2300      	movs	r3, #0
    14a0:	e032      	b.n	1508 <xgets+0x94>
    14a2:	68bb      	ldr	r3, [r7, #8]
    14a4:	2b0d      	cmp	r3, #13
    14a6:	d025      	beq.n	14f4 <xgets+0x80>
    14a8:	68bb      	ldr	r3, [r7, #8]
    14aa:	2b08      	cmp	r3, #8
    14ac:	d10b      	bne.n	14c6 <xgets+0x52>
    14ae:	68fb      	ldr	r3, [r7, #12]
    14b0:	2b00      	cmp	r3, #0
    14b2:	d008      	beq.n	14c6 <xgets+0x52>
    14b4:	68fb      	ldr	r3, [r7, #12]
    14b6:	3b01      	subs	r3, #1
    14b8:	60fb      	str	r3, [r7, #12]
    14ba:	68bb      	ldr	r3, [r7, #8]
    14bc:	b2db      	uxtb	r3, r3
    14be:	0018      	movs	r0, r3
    14c0:	f7ff fd12 	bl	ee8 <xputc>
    14c4:	e015      	b.n	14f2 <xgets+0x7e>
    14c6:	68bb      	ldr	r3, [r7, #8]
    14c8:	2b1f      	cmp	r3, #31
    14ca:	dde0      	ble.n	148e <xgets+0x1a>
    14cc:	683b      	ldr	r3, [r7, #0]
    14ce:	1e5a      	subs	r2, r3, #1
    14d0:	68fb      	ldr	r3, [r7, #12]
    14d2:	429a      	cmp	r2, r3
    14d4:	dddb      	ble.n	148e <xgets+0x1a>
    14d6:	68fb      	ldr	r3, [r7, #12]
    14d8:	1c5a      	adds	r2, r3, #1
    14da:	60fa      	str	r2, [r7, #12]
    14dc:	001a      	movs	r2, r3
    14de:	687b      	ldr	r3, [r7, #4]
    14e0:	189b      	adds	r3, r3, r2
    14e2:	68ba      	ldr	r2, [r7, #8]
    14e4:	b2d2      	uxtb	r2, r2
    14e6:	701a      	strb	r2, [r3, #0]
    14e8:	68bb      	ldr	r3, [r7, #8]
    14ea:	b2db      	uxtb	r3, r3
    14ec:	0018      	movs	r0, r3
    14ee:	f7ff fcfb 	bl	ee8 <xputc>
    14f2:	e7cc      	b.n	148e <xgets+0x1a>
    14f4:	46c0      	nop			; (mov r8, r8)
    14f6:	68fb      	ldr	r3, [r7, #12]
    14f8:	687a      	ldr	r2, [r7, #4]
    14fa:	18d3      	adds	r3, r2, r3
    14fc:	2200      	movs	r2, #0
    14fe:	701a      	strb	r2, [r3, #0]
    1500:	200a      	movs	r0, #10
    1502:	f7ff fcf1 	bl	ee8 <xputc>
    1506:	2301      	movs	r3, #1
    1508:	0018      	movs	r0, r3
    150a:	46bd      	mov	sp, r7
    150c:	b004      	add	sp, #16
    150e:	bd80      	pop	{r7, pc}
    1510:	20000508 	.word	0x20000508

00001514 <xfgets>:
    1514:	b580      	push	{r7, lr}
    1516:	b086      	sub	sp, #24
    1518:	af00      	add	r7, sp, #0
    151a:	60f8      	str	r0, [r7, #12]
    151c:	60b9      	str	r1, [r7, #8]
    151e:	607a      	str	r2, [r7, #4]
    1520:	4b0a      	ldr	r3, [pc, #40]	; (154c <xfgets+0x38>)
    1522:	681b      	ldr	r3, [r3, #0]
    1524:	617b      	str	r3, [r7, #20]
    1526:	4b09      	ldr	r3, [pc, #36]	; (154c <xfgets+0x38>)
    1528:	68fa      	ldr	r2, [r7, #12]
    152a:	601a      	str	r2, [r3, #0]
    152c:	687a      	ldr	r2, [r7, #4]
    152e:	68bb      	ldr	r3, [r7, #8]
    1530:	0011      	movs	r1, r2
    1532:	0018      	movs	r0, r3
    1534:	f7ff ff9e 	bl	1474 <xgets>
    1538:	0003      	movs	r3, r0
    153a:	613b      	str	r3, [r7, #16]
    153c:	4b03      	ldr	r3, [pc, #12]	; (154c <xfgets+0x38>)
    153e:	697a      	ldr	r2, [r7, #20]
    1540:	601a      	str	r2, [r3, #0]
    1542:	693b      	ldr	r3, [r7, #16]
    1544:	0018      	movs	r0, r3
    1546:	46bd      	mov	sp, r7
    1548:	b006      	add	sp, #24
    154a:	bd80      	pop	{r7, pc}
    154c:	20000508 	.word	0x20000508

00001550 <xatoi>:
    1550:	b580      	push	{r7, lr}
    1552:	b084      	sub	sp, #16
    1554:	af00      	add	r7, sp, #0
    1556:	6078      	str	r0, [r7, #4]
    1558:	6039      	str	r1, [r7, #0]
    155a:	2309      	movs	r3, #9
    155c:	18fb      	adds	r3, r7, r3
    155e:	2200      	movs	r2, #0
    1560:	701a      	strb	r2, [r3, #0]
    1562:	683b      	ldr	r3, [r7, #0]
    1564:	2200      	movs	r2, #0
    1566:	601a      	str	r2, [r3, #0]
    1568:	e004      	b.n	1574 <xatoi+0x24>
    156a:	687b      	ldr	r3, [r7, #4]
    156c:	681b      	ldr	r3, [r3, #0]
    156e:	1c5a      	adds	r2, r3, #1
    1570:	687b      	ldr	r3, [r7, #4]
    1572:	601a      	str	r2, [r3, #0]
    1574:	687b      	ldr	r3, [r7, #4]
    1576:	681a      	ldr	r2, [r3, #0]
    1578:	230b      	movs	r3, #11
    157a:	18fb      	adds	r3, r7, r3
    157c:	7812      	ldrb	r2, [r2, #0]
    157e:	701a      	strb	r2, [r3, #0]
    1580:	230b      	movs	r3, #11
    1582:	18fb      	adds	r3, r7, r3
    1584:	781b      	ldrb	r3, [r3, #0]
    1586:	2b20      	cmp	r3, #32
    1588:	d0ef      	beq.n	156a <xatoi+0x1a>
    158a:	230b      	movs	r3, #11
    158c:	18fb      	adds	r3, r7, r3
    158e:	781b      	ldrb	r3, [r3, #0]
    1590:	2b2d      	cmp	r3, #45	; 0x2d
    1592:	d10e      	bne.n	15b2 <xatoi+0x62>
    1594:	2309      	movs	r3, #9
    1596:	18fb      	adds	r3, r7, r3
    1598:	2201      	movs	r2, #1
    159a:	701a      	strb	r2, [r3, #0]
    159c:	687b      	ldr	r3, [r7, #4]
    159e:	681b      	ldr	r3, [r3, #0]
    15a0:	1c5a      	adds	r2, r3, #1
    15a2:	687b      	ldr	r3, [r7, #4]
    15a4:	601a      	str	r2, [r3, #0]
    15a6:	687b      	ldr	r3, [r7, #4]
    15a8:	681a      	ldr	r2, [r3, #0]
    15aa:	230b      	movs	r3, #11
    15ac:	18fb      	adds	r3, r7, r3
    15ae:	7812      	ldrb	r2, [r2, #0]
    15b0:	701a      	strb	r2, [r3, #0]
    15b2:	230b      	movs	r3, #11
    15b4:	18fb      	adds	r3, r7, r3
    15b6:	781b      	ldrb	r3, [r3, #0]
    15b8:	2b30      	cmp	r3, #48	; 0x30
    15ba:	d149      	bne.n	1650 <xatoi+0x100>
    15bc:	687b      	ldr	r3, [r7, #4]
    15be:	681b      	ldr	r3, [r3, #0]
    15c0:	1c5a      	adds	r2, r3, #1
    15c2:	687b      	ldr	r3, [r7, #4]
    15c4:	601a      	str	r2, [r3, #0]
    15c6:	687b      	ldr	r3, [r7, #4]
    15c8:	681a      	ldr	r2, [r3, #0]
    15ca:	230b      	movs	r3, #11
    15cc:	18fb      	adds	r3, r7, r3
    15ce:	7812      	ldrb	r2, [r2, #0]
    15d0:	701a      	strb	r2, [r3, #0]
    15d2:	230b      	movs	r3, #11
    15d4:	18fb      	adds	r3, r7, r3
    15d6:	781b      	ldrb	r3, [r3, #0]
    15d8:	2b62      	cmp	r3, #98	; 0x62
    15da:	d011      	beq.n	1600 <xatoi+0xb0>
    15dc:	2b78      	cmp	r3, #120	; 0x78
    15de:	d11f      	bne.n	1620 <xatoi+0xd0>
    15e0:	230a      	movs	r3, #10
    15e2:	18fb      	adds	r3, r7, r3
    15e4:	2210      	movs	r2, #16
    15e6:	701a      	strb	r2, [r3, #0]
    15e8:	687b      	ldr	r3, [r7, #4]
    15ea:	681b      	ldr	r3, [r3, #0]
    15ec:	1c5a      	adds	r2, r3, #1
    15ee:	687b      	ldr	r3, [r7, #4]
    15f0:	601a      	str	r2, [r3, #0]
    15f2:	687b      	ldr	r3, [r7, #4]
    15f4:	681a      	ldr	r2, [r3, #0]
    15f6:	230b      	movs	r3, #11
    15f8:	18fb      	adds	r3, r7, r3
    15fa:	7812      	ldrb	r2, [r2, #0]
    15fc:	701a      	strb	r2, [r3, #0]
    15fe:	e037      	b.n	1670 <xatoi+0x120>
    1600:	230a      	movs	r3, #10
    1602:	18fb      	adds	r3, r7, r3
    1604:	2202      	movs	r2, #2
    1606:	701a      	strb	r2, [r3, #0]
    1608:	687b      	ldr	r3, [r7, #4]
    160a:	681b      	ldr	r3, [r3, #0]
    160c:	1c5a      	adds	r2, r3, #1
    160e:	687b      	ldr	r3, [r7, #4]
    1610:	601a      	str	r2, [r3, #0]
    1612:	687b      	ldr	r3, [r7, #4]
    1614:	681a      	ldr	r2, [r3, #0]
    1616:	230b      	movs	r3, #11
    1618:	18fb      	adds	r3, r7, r3
    161a:	7812      	ldrb	r2, [r2, #0]
    161c:	701a      	strb	r2, [r3, #0]
    161e:	e027      	b.n	1670 <xatoi+0x120>
    1620:	230b      	movs	r3, #11
    1622:	18fb      	adds	r3, r7, r3
    1624:	781b      	ldrb	r3, [r3, #0]
    1626:	2b20      	cmp	r3, #32
    1628:	d801      	bhi.n	162e <xatoi+0xde>
    162a:	2301      	movs	r3, #1
    162c:	e079      	b.n	1722 <xatoi+0x1d2>
    162e:	230b      	movs	r3, #11
    1630:	18fb      	adds	r3, r7, r3
    1632:	781b      	ldrb	r3, [r3, #0]
    1634:	2b2f      	cmp	r3, #47	; 0x2f
    1636:	d904      	bls.n	1642 <xatoi+0xf2>
    1638:	230b      	movs	r3, #11
    163a:	18fb      	adds	r3, r7, r3
    163c:	781b      	ldrb	r3, [r3, #0]
    163e:	2b39      	cmp	r3, #57	; 0x39
    1640:	d901      	bls.n	1646 <xatoi+0xf6>
    1642:	2300      	movs	r3, #0
    1644:	e06d      	b.n	1722 <xatoi+0x1d2>
    1646:	230a      	movs	r3, #10
    1648:	18fb      	adds	r3, r7, r3
    164a:	2208      	movs	r2, #8
    164c:	701a      	strb	r2, [r3, #0]
    164e:	e00f      	b.n	1670 <xatoi+0x120>
    1650:	230b      	movs	r3, #11
    1652:	18fb      	adds	r3, r7, r3
    1654:	781b      	ldrb	r3, [r3, #0]
    1656:	2b2f      	cmp	r3, #47	; 0x2f
    1658:	d904      	bls.n	1664 <xatoi+0x114>
    165a:	230b      	movs	r3, #11
    165c:	18fb      	adds	r3, r7, r3
    165e:	781b      	ldrb	r3, [r3, #0]
    1660:	2b39      	cmp	r3, #57	; 0x39
    1662:	d901      	bls.n	1668 <xatoi+0x118>
    1664:	2300      	movs	r3, #0
    1666:	e05c      	b.n	1722 <xatoi+0x1d2>
    1668:	230a      	movs	r3, #10
    166a:	18fb      	adds	r3, r7, r3
    166c:	220a      	movs	r2, #10
    166e:	701a      	strb	r2, [r3, #0]
    1670:	2300      	movs	r3, #0
    1672:	60fb      	str	r3, [r7, #12]
    1674:	e044      	b.n	1700 <xatoi+0x1b0>
    1676:	230b      	movs	r3, #11
    1678:	18fb      	adds	r3, r7, r3
    167a:	781b      	ldrb	r3, [r3, #0]
    167c:	2b60      	cmp	r3, #96	; 0x60
    167e:	d906      	bls.n	168e <xatoi+0x13e>
    1680:	230b      	movs	r3, #11
    1682:	18fb      	adds	r3, r7, r3
    1684:	220b      	movs	r2, #11
    1686:	18ba      	adds	r2, r7, r2
    1688:	7812      	ldrb	r2, [r2, #0]
    168a:	3a20      	subs	r2, #32
    168c:	701a      	strb	r2, [r3, #0]
    168e:	230b      	movs	r3, #11
    1690:	18fb      	adds	r3, r7, r3
    1692:	220b      	movs	r2, #11
    1694:	18ba      	adds	r2, r7, r2
    1696:	7812      	ldrb	r2, [r2, #0]
    1698:	3a30      	subs	r2, #48	; 0x30
    169a:	701a      	strb	r2, [r3, #0]
    169c:	230b      	movs	r3, #11
    169e:	18fb      	adds	r3, r7, r3
    16a0:	781b      	ldrb	r3, [r3, #0]
    16a2:	2b10      	cmp	r3, #16
    16a4:	d90d      	bls.n	16c2 <xatoi+0x172>
    16a6:	230b      	movs	r3, #11
    16a8:	18fb      	adds	r3, r7, r3
    16aa:	220b      	movs	r2, #11
    16ac:	18ba      	adds	r2, r7, r2
    16ae:	7812      	ldrb	r2, [r2, #0]
    16b0:	3a07      	subs	r2, #7
    16b2:	701a      	strb	r2, [r3, #0]
    16b4:	230b      	movs	r3, #11
    16b6:	18fb      	adds	r3, r7, r3
    16b8:	781b      	ldrb	r3, [r3, #0]
    16ba:	2b09      	cmp	r3, #9
    16bc:	d801      	bhi.n	16c2 <xatoi+0x172>
    16be:	2300      	movs	r3, #0
    16c0:	e02f      	b.n	1722 <xatoi+0x1d2>
    16c2:	230b      	movs	r3, #11
    16c4:	18fa      	adds	r2, r7, r3
    16c6:	230a      	movs	r3, #10
    16c8:	18fb      	adds	r3, r7, r3
    16ca:	7812      	ldrb	r2, [r2, #0]
    16cc:	781b      	ldrb	r3, [r3, #0]
    16ce:	429a      	cmp	r2, r3
    16d0:	d301      	bcc.n	16d6 <xatoi+0x186>
    16d2:	2300      	movs	r3, #0
    16d4:	e025      	b.n	1722 <xatoi+0x1d2>
    16d6:	230a      	movs	r3, #10
    16d8:	18fb      	adds	r3, r7, r3
    16da:	781b      	ldrb	r3, [r3, #0]
    16dc:	68fa      	ldr	r2, [r7, #12]
    16de:	435a      	muls	r2, r3
    16e0:	230b      	movs	r3, #11
    16e2:	18fb      	adds	r3, r7, r3
    16e4:	781b      	ldrb	r3, [r3, #0]
    16e6:	18d3      	adds	r3, r2, r3
    16e8:	60fb      	str	r3, [r7, #12]
    16ea:	687b      	ldr	r3, [r7, #4]
    16ec:	681b      	ldr	r3, [r3, #0]
    16ee:	1c5a      	adds	r2, r3, #1
    16f0:	687b      	ldr	r3, [r7, #4]
    16f2:	601a      	str	r2, [r3, #0]
    16f4:	687b      	ldr	r3, [r7, #4]
    16f6:	681a      	ldr	r2, [r3, #0]
    16f8:	230b      	movs	r3, #11
    16fa:	18fb      	adds	r3, r7, r3
    16fc:	7812      	ldrb	r2, [r2, #0]
    16fe:	701a      	strb	r2, [r3, #0]
    1700:	230b      	movs	r3, #11
    1702:	18fb      	adds	r3, r7, r3
    1704:	781b      	ldrb	r3, [r3, #0]
    1706:	2b20      	cmp	r3, #32
    1708:	d8b5      	bhi.n	1676 <xatoi+0x126>
    170a:	2309      	movs	r3, #9
    170c:	18fb      	adds	r3, r7, r3
    170e:	781b      	ldrb	r3, [r3, #0]
    1710:	2b00      	cmp	r3, #0
    1712:	d002      	beq.n	171a <xatoi+0x1ca>
    1714:	68fb      	ldr	r3, [r7, #12]
    1716:	425b      	negs	r3, r3
    1718:	60fb      	str	r3, [r7, #12]
    171a:	68fa      	ldr	r2, [r7, #12]
    171c:	683b      	ldr	r3, [r7, #0]
    171e:	601a      	str	r2, [r3, #0]
    1720:	2301      	movs	r3, #1
    1722:	0018      	movs	r0, r3
    1724:	46bd      	mov	sp, r7
    1726:	b004      	add	sp, #16
    1728:	bd80      	pop	{r7, pc}
    172a:	46c0      	nop			; (mov r8, r8)

0000172c <mil_cpy>:
    172c:	8802      	ldrh	r2, [r0, #0]
    172e:	4b30      	ldr	r3, [pc, #192]	; (17f0 <mil_cpy+0xc4>)
    1730:	601a      	str	r2, [r3, #0]
    1732:	8842      	ldrh	r2, [r0, #2]
    1734:	4b2f      	ldr	r3, [pc, #188]	; (17f4 <mil_cpy+0xc8>)
    1736:	601a      	str	r2, [r3, #0]
    1738:	8882      	ldrh	r2, [r0, #4]
    173a:	4b2f      	ldr	r3, [pc, #188]	; (17f8 <mil_cpy+0xcc>)
    173c:	601a      	str	r2, [r3, #0]
    173e:	88c2      	ldrh	r2, [r0, #6]
    1740:	4b2e      	ldr	r3, [pc, #184]	; (17fc <mil_cpy+0xd0>)
    1742:	601a      	str	r2, [r3, #0]
    1744:	8902      	ldrh	r2, [r0, #8]
    1746:	4b2e      	ldr	r3, [pc, #184]	; (1800 <mil_cpy+0xd4>)
    1748:	601a      	str	r2, [r3, #0]
    174a:	8942      	ldrh	r2, [r0, #10]
    174c:	4b2d      	ldr	r3, [pc, #180]	; (1804 <mil_cpy+0xd8>)
    174e:	601a      	str	r2, [r3, #0]
    1750:	8982      	ldrh	r2, [r0, #12]
    1752:	4b2d      	ldr	r3, [pc, #180]	; (1808 <mil_cpy+0xdc>)
    1754:	601a      	str	r2, [r3, #0]
    1756:	89c2      	ldrh	r2, [r0, #14]
    1758:	4b2c      	ldr	r3, [pc, #176]	; (180c <mil_cpy+0xe0>)
    175a:	601a      	str	r2, [r3, #0]
    175c:	8a02      	ldrh	r2, [r0, #16]
    175e:	4b2c      	ldr	r3, [pc, #176]	; (1810 <mil_cpy+0xe4>)
    1760:	601a      	str	r2, [r3, #0]
    1762:	8a42      	ldrh	r2, [r0, #18]
    1764:	4b2b      	ldr	r3, [pc, #172]	; (1814 <mil_cpy+0xe8>)
    1766:	601a      	str	r2, [r3, #0]
    1768:	8a82      	ldrh	r2, [r0, #20]
    176a:	4b2b      	ldr	r3, [pc, #172]	; (1818 <mil_cpy+0xec>)
    176c:	601a      	str	r2, [r3, #0]
    176e:	8ac2      	ldrh	r2, [r0, #22]
    1770:	4b2a      	ldr	r3, [pc, #168]	; (181c <mil_cpy+0xf0>)
    1772:	601a      	str	r2, [r3, #0]
    1774:	8b02      	ldrh	r2, [r0, #24]
    1776:	4b2a      	ldr	r3, [pc, #168]	; (1820 <mil_cpy+0xf4>)
    1778:	601a      	str	r2, [r3, #0]
    177a:	8b42      	ldrh	r2, [r0, #26]
    177c:	4b29      	ldr	r3, [pc, #164]	; (1824 <mil_cpy+0xf8>)
    177e:	601a      	str	r2, [r3, #0]
    1780:	8b82      	ldrh	r2, [r0, #28]
    1782:	4b29      	ldr	r3, [pc, #164]	; (1828 <mil_cpy+0xfc>)
    1784:	601a      	str	r2, [r3, #0]
    1786:	8bc2      	ldrh	r2, [r0, #30]
    1788:	4b28      	ldr	r3, [pc, #160]	; (182c <mil_cpy+0x100>)
    178a:	601a      	str	r2, [r3, #0]
    178c:	8c02      	ldrh	r2, [r0, #32]
    178e:	4b28      	ldr	r3, [pc, #160]	; (1830 <mil_cpy+0x104>)
    1790:	601a      	str	r2, [r3, #0]
    1792:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1794:	4b27      	ldr	r3, [pc, #156]	; (1834 <mil_cpy+0x108>)
    1796:	601a      	str	r2, [r3, #0]
    1798:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    179a:	4b27      	ldr	r3, [pc, #156]	; (1838 <mil_cpy+0x10c>)
    179c:	601a      	str	r2, [r3, #0]
    179e:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    17a0:	4b26      	ldr	r3, [pc, #152]	; (183c <mil_cpy+0x110>)
    17a2:	601a      	str	r2, [r3, #0]
    17a4:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    17a6:	4b26      	ldr	r3, [pc, #152]	; (1840 <mil_cpy+0x114>)
    17a8:	601a      	str	r2, [r3, #0]
    17aa:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    17ac:	4b25      	ldr	r3, [pc, #148]	; (1844 <mil_cpy+0x118>)
    17ae:	601a      	str	r2, [r3, #0]
    17b0:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    17b2:	4b25      	ldr	r3, [pc, #148]	; (1848 <mil_cpy+0x11c>)
    17b4:	601a      	str	r2, [r3, #0]
    17b6:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    17b8:	4b24      	ldr	r3, [pc, #144]	; (184c <mil_cpy+0x120>)
    17ba:	601a      	str	r2, [r3, #0]
    17bc:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    17be:	4b24      	ldr	r3, [pc, #144]	; (1850 <mil_cpy+0x124>)
    17c0:	601a      	str	r2, [r3, #0]
    17c2:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    17c4:	4b23      	ldr	r3, [pc, #140]	; (1854 <mil_cpy+0x128>)
    17c6:	601a      	str	r2, [r3, #0]
    17c8:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    17ca:	4b23      	ldr	r3, [pc, #140]	; (1858 <mil_cpy+0x12c>)
    17cc:	601a      	str	r2, [r3, #0]
    17ce:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    17d0:	4b22      	ldr	r3, [pc, #136]	; (185c <mil_cpy+0x130>)
    17d2:	601a      	str	r2, [r3, #0]
    17d4:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    17d6:	4b22      	ldr	r3, [pc, #136]	; (1860 <mil_cpy+0x134>)
    17d8:	601a      	str	r2, [r3, #0]
    17da:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    17dc:	4b21      	ldr	r3, [pc, #132]	; (1864 <mil_cpy+0x138>)
    17de:	601a      	str	r2, [r3, #0]
    17e0:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    17e2:	4b21      	ldr	r3, [pc, #132]	; (1868 <mil_cpy+0x13c>)
    17e4:	601a      	str	r2, [r3, #0]
    17e6:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    17e8:	4b20      	ldr	r3, [pc, #128]	; (186c <mil_cpy+0x140>)
    17ea:	601a      	str	r2, [r3, #0]
    17ec:	4770      	bx	lr
    17ee:	46c0      	nop			; (mov r8, r8)
    17f0:	40048080 	.word	0x40048080
    17f4:	40048084 	.word	0x40048084
    17f8:	40048088 	.word	0x40048088
    17fc:	4004808c 	.word	0x4004808c
    1800:	40048090 	.word	0x40048090
    1804:	40048094 	.word	0x40048094
    1808:	40048098 	.word	0x40048098
    180c:	4004809c 	.word	0x4004809c
    1810:	400480a0 	.word	0x400480a0
    1814:	400480a4 	.word	0x400480a4
    1818:	400480a8 	.word	0x400480a8
    181c:	400480ac 	.word	0x400480ac
    1820:	400480b0 	.word	0x400480b0
    1824:	400480b4 	.word	0x400480b4
    1828:	400480b8 	.word	0x400480b8
    182c:	400480bc 	.word	0x400480bc
    1830:	400480c0 	.word	0x400480c0
    1834:	400480c4 	.word	0x400480c4
    1838:	400480c8 	.word	0x400480c8
    183c:	400480cc 	.word	0x400480cc
    1840:	400480d0 	.word	0x400480d0
    1844:	400480d4 	.word	0x400480d4
    1848:	400480d8 	.word	0x400480d8
    184c:	400480dc 	.word	0x400480dc
    1850:	400480e0 	.word	0x400480e0
    1854:	400480e4 	.word	0x400480e4
    1858:	400480e8 	.word	0x400480e8
    185c:	400480ec 	.word	0x400480ec
    1860:	400480f0 	.word	0x400480f0
    1864:	400480f4 	.word	0x400480f4
    1868:	400480f8 	.word	0x400480f8
    186c:	400480fc 	.word	0x400480fc

00001870 <__aeabi_uidiv>:
    1870:	2200      	movs	r2, #0
    1872:	0843      	lsrs	r3, r0, #1
    1874:	428b      	cmp	r3, r1
    1876:	d374      	bcc.n	1962 <__aeabi_uidiv+0xf2>
    1878:	0903      	lsrs	r3, r0, #4
    187a:	428b      	cmp	r3, r1
    187c:	d35f      	bcc.n	193e <__aeabi_uidiv+0xce>
    187e:	0a03      	lsrs	r3, r0, #8
    1880:	428b      	cmp	r3, r1
    1882:	d344      	bcc.n	190e <__aeabi_uidiv+0x9e>
    1884:	0b03      	lsrs	r3, r0, #12
    1886:	428b      	cmp	r3, r1
    1888:	d328      	bcc.n	18dc <__aeabi_uidiv+0x6c>
    188a:	0c03      	lsrs	r3, r0, #16
    188c:	428b      	cmp	r3, r1
    188e:	d30d      	bcc.n	18ac <__aeabi_uidiv+0x3c>
    1890:	22ff      	movs	r2, #255	; 0xff
    1892:	0209      	lsls	r1, r1, #8
    1894:	ba12      	rev	r2, r2
    1896:	0c03      	lsrs	r3, r0, #16
    1898:	428b      	cmp	r3, r1
    189a:	d302      	bcc.n	18a2 <__aeabi_uidiv+0x32>
    189c:	1212      	asrs	r2, r2, #8
    189e:	0209      	lsls	r1, r1, #8
    18a0:	d065      	beq.n	196e <__aeabi_uidiv+0xfe>
    18a2:	0b03      	lsrs	r3, r0, #12
    18a4:	428b      	cmp	r3, r1
    18a6:	d319      	bcc.n	18dc <__aeabi_uidiv+0x6c>
    18a8:	e000      	b.n	18ac <__aeabi_uidiv+0x3c>
    18aa:	0a09      	lsrs	r1, r1, #8
    18ac:	0bc3      	lsrs	r3, r0, #15
    18ae:	428b      	cmp	r3, r1
    18b0:	d301      	bcc.n	18b6 <__aeabi_uidiv+0x46>
    18b2:	03cb      	lsls	r3, r1, #15
    18b4:	1ac0      	subs	r0, r0, r3
    18b6:	4152      	adcs	r2, r2
    18b8:	0b83      	lsrs	r3, r0, #14
    18ba:	428b      	cmp	r3, r1
    18bc:	d301      	bcc.n	18c2 <__aeabi_uidiv+0x52>
    18be:	038b      	lsls	r3, r1, #14
    18c0:	1ac0      	subs	r0, r0, r3
    18c2:	4152      	adcs	r2, r2
    18c4:	0b43      	lsrs	r3, r0, #13
    18c6:	428b      	cmp	r3, r1
    18c8:	d301      	bcc.n	18ce <__aeabi_uidiv+0x5e>
    18ca:	034b      	lsls	r3, r1, #13
    18cc:	1ac0      	subs	r0, r0, r3
    18ce:	4152      	adcs	r2, r2
    18d0:	0b03      	lsrs	r3, r0, #12
    18d2:	428b      	cmp	r3, r1
    18d4:	d301      	bcc.n	18da <__aeabi_uidiv+0x6a>
    18d6:	030b      	lsls	r3, r1, #12
    18d8:	1ac0      	subs	r0, r0, r3
    18da:	4152      	adcs	r2, r2
    18dc:	0ac3      	lsrs	r3, r0, #11
    18de:	428b      	cmp	r3, r1
    18e0:	d301      	bcc.n	18e6 <__aeabi_uidiv+0x76>
    18e2:	02cb      	lsls	r3, r1, #11
    18e4:	1ac0      	subs	r0, r0, r3
    18e6:	4152      	adcs	r2, r2
    18e8:	0a83      	lsrs	r3, r0, #10
    18ea:	428b      	cmp	r3, r1
    18ec:	d301      	bcc.n	18f2 <__aeabi_uidiv+0x82>
    18ee:	028b      	lsls	r3, r1, #10
    18f0:	1ac0      	subs	r0, r0, r3
    18f2:	4152      	adcs	r2, r2
    18f4:	0a43      	lsrs	r3, r0, #9
    18f6:	428b      	cmp	r3, r1
    18f8:	d301      	bcc.n	18fe <__aeabi_uidiv+0x8e>
    18fa:	024b      	lsls	r3, r1, #9
    18fc:	1ac0      	subs	r0, r0, r3
    18fe:	4152      	adcs	r2, r2
    1900:	0a03      	lsrs	r3, r0, #8
    1902:	428b      	cmp	r3, r1
    1904:	d301      	bcc.n	190a <__aeabi_uidiv+0x9a>
    1906:	020b      	lsls	r3, r1, #8
    1908:	1ac0      	subs	r0, r0, r3
    190a:	4152      	adcs	r2, r2
    190c:	d2cd      	bcs.n	18aa <__aeabi_uidiv+0x3a>
    190e:	09c3      	lsrs	r3, r0, #7
    1910:	428b      	cmp	r3, r1
    1912:	d301      	bcc.n	1918 <__aeabi_uidiv+0xa8>
    1914:	01cb      	lsls	r3, r1, #7
    1916:	1ac0      	subs	r0, r0, r3
    1918:	4152      	adcs	r2, r2
    191a:	0983      	lsrs	r3, r0, #6
    191c:	428b      	cmp	r3, r1
    191e:	d301      	bcc.n	1924 <__aeabi_uidiv+0xb4>
    1920:	018b      	lsls	r3, r1, #6
    1922:	1ac0      	subs	r0, r0, r3
    1924:	4152      	adcs	r2, r2
    1926:	0943      	lsrs	r3, r0, #5
    1928:	428b      	cmp	r3, r1
    192a:	d301      	bcc.n	1930 <__aeabi_uidiv+0xc0>
    192c:	014b      	lsls	r3, r1, #5
    192e:	1ac0      	subs	r0, r0, r3
    1930:	4152      	adcs	r2, r2
    1932:	0903      	lsrs	r3, r0, #4
    1934:	428b      	cmp	r3, r1
    1936:	d301      	bcc.n	193c <__aeabi_uidiv+0xcc>
    1938:	010b      	lsls	r3, r1, #4
    193a:	1ac0      	subs	r0, r0, r3
    193c:	4152      	adcs	r2, r2
    193e:	08c3      	lsrs	r3, r0, #3
    1940:	428b      	cmp	r3, r1
    1942:	d301      	bcc.n	1948 <__aeabi_uidiv+0xd8>
    1944:	00cb      	lsls	r3, r1, #3
    1946:	1ac0      	subs	r0, r0, r3
    1948:	4152      	adcs	r2, r2
    194a:	0883      	lsrs	r3, r0, #2
    194c:	428b      	cmp	r3, r1
    194e:	d301      	bcc.n	1954 <__aeabi_uidiv+0xe4>
    1950:	008b      	lsls	r3, r1, #2
    1952:	1ac0      	subs	r0, r0, r3
    1954:	4152      	adcs	r2, r2
    1956:	0843      	lsrs	r3, r0, #1
    1958:	428b      	cmp	r3, r1
    195a:	d301      	bcc.n	1960 <__aeabi_uidiv+0xf0>
    195c:	004b      	lsls	r3, r1, #1
    195e:	1ac0      	subs	r0, r0, r3
    1960:	4152      	adcs	r2, r2
    1962:	1a41      	subs	r1, r0, r1
    1964:	d200      	bcs.n	1968 <__aeabi_uidiv+0xf8>
    1966:	4601      	mov	r1, r0
    1968:	4152      	adcs	r2, r2
    196a:	4610      	mov	r0, r2
    196c:	4770      	bx	lr
    196e:	e7ff      	b.n	1970 <__aeabi_uidiv+0x100>
    1970:	b501      	push	{r0, lr}
    1972:	2000      	movs	r0, #0
    1974:	f000 f806 	bl	1984 <__aeabi_idiv0>
    1978:	bd02      	pop	{r1, pc}
    197a:	46c0      	nop			; (mov r8, r8)

0000197c <__aeabi_uidivmod>:
    197c:	2900      	cmp	r1, #0
    197e:	d0f7      	beq.n	1970 <__aeabi_uidiv+0x100>
    1980:	e776      	b.n	1870 <__aeabi_uidiv>
    1982:	4770      	bx	lr

00001984 <__aeabi_idiv0>:
    1984:	4770      	bx	lr
    1986:	46c0      	nop			; (mov r8, r8)
    1988:	6c6c6568 	.word	0x6c6c6568
    198c:	6f77206f 	.word	0x6f77206f
    1990:	0d646c72 	.word	0x0d646c72
    1994:	0000000a 	.word	0x0000000a
    1998:	0000114e 	.word	0x0000114e
    199c:	0000113c 	.word	0x0000113c
    19a0:	0000115a 	.word	0x0000115a
    19a4:	00001166 	.word	0x00001166
    19a8:	00001166 	.word	0x00001166
    19ac:	00001166 	.word	0x00001166
    19b0:	00001166 	.word	0x00001166
    19b4:	00001166 	.word	0x00001166
    19b8:	00001166 	.word	0x00001166
    19bc:	00001166 	.word	0x00001166
    19c0:	00001166 	.word	0x00001166
    19c4:	00001166 	.word	0x00001166
    19c8:	00001166 	.word	0x00001166
    19cc:	00001154 	.word	0x00001154
    19d0:	00001166 	.word	0x00001166
    19d4:	00001166 	.word	0x00001166
    19d8:	00001166 	.word	0x00001166
    19dc:	000010e0 	.word	0x000010e0
    19e0:	00001166 	.word	0x00001166
    19e4:	0000115a 	.word	0x0000115a
    19e8:	00001166 	.word	0x00001166
    19ec:	00001166 	.word	0x00001166
    19f0:	00001160 	.word	0x00001160
    19f4:	6c383025 	.word	0x6c383025
    19f8:	00002058 	.word	0x00002058
    19fc:	32302520 	.word	0x32302520
    1a00:	00000058 	.word	0x00000058
    1a04:	34302520 	.word	0x34302520
    1a08:	00000058 	.word	0x00000058
    1a0c:	38302520 	.word	0x38302520
    1a10:	0000584c 	.word	0x0000584c
