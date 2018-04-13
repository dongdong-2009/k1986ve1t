
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 3d 11 00 00 9d 11 00 00 9d 11 00 00     ... =...........
	...
      2c:	9d 11 00 00 00 00 00 00 00 00 00 00 9d 11 00 00     ................
      3c:	a9 0d 00 00 9d 11 00 00 29 0e 00 00 9d 11 00 00     ........).......
      4c:	9d 11 00 00 9d 11 00 00 e5 1e 00 00 f1 13 00 00     ................
      5c:	9d 11 00 00 9d 11 00 00 9d 11 00 00 9d 11 00 00     ................
      6c:	9d 11 00 00 9d 11 00 00 c1 0d 00 00 9d 11 00 00     ................
      7c:	9d 11 00 00 9d 11 00 00 9d 11 00 00 9d 11 00 00     ................
      8c:	9d 11 00 00 9d 11 00 00 9d 11 00 00 9d 11 00 00     ................
      9c:	9d 11 00 00 9d 11 00 00 00 00 00 00 00 00 00 00     ................
      ac:	9d 11 00 00 9d 11 00 00 9d 11 00 00 9d 11 00 00     ................
      bc:	9d 11 00 00                                         ....

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
     170:	20000118 	.word	0x20000118

00000174 <update_telemetry_loop>:
     174:	b580      	push	{r7, lr}
     176:	b088      	sub	sp, #32
     178:	af00      	add	r7, sp, #0
     17a:	6078      	str	r0, [r7, #4]
     17c:	4b6a      	ldr	r3, [pc, #424]	; (328 <update_telemetry_loop+0x1b4>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b6a      	ldr	r3, [pc, #424]	; (32c <update_telemetry_loop+0x1b8>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	61fb      	str	r3, [r7, #28]
     18a:	2300      	movs	r3, #0
     18c:	61bb      	str	r3, [r7, #24]
     18e:	4b68      	ldr	r3, [pc, #416]	; (330 <update_telemetry_loop+0x1bc>)
     190:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     192:	0a5b      	lsrs	r3, r3, #9
     194:	001a      	movs	r2, r3
     196:	2307      	movs	r3, #7
     198:	4013      	ands	r3, r2
     19a:	617b      	str	r3, [r7, #20]
     19c:	697b      	ldr	r3, [r7, #20]
     19e:	2b00      	cmp	r3, #0
     1a0:	d100      	bne.n	1a4 <update_telemetry_loop+0x30>
     1a2:	e0bc      	b.n	31e <update_telemetry_loop+0x1aa>
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
     1c0:	4b5b      	ldr	r3, [pc, #364]	; (330 <update_telemetry_loop+0x1bc>)
     1c2:	2200      	movs	r2, #0
     1c4:	655a      	str	r2, [r3, #84]	; 0x54
     1c6:	4b5b      	ldr	r3, [pc, #364]	; (334 <update_telemetry_loop+0x1c0>)
     1c8:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     1ca:	2210      	movs	r2, #16
     1cc:	4013      	ands	r3, r2
     1ce:	d03c      	beq.n	24a <update_telemetry_loop+0xd6>
     1d0:	69bb      	ldr	r3, [r7, #24]
     1d2:	00da      	lsls	r2, r3, #3
     1d4:	4b58      	ldr	r3, [pc, #352]	; (338 <update_telemetry_loop+0x1c4>)
     1d6:	18d3      	adds	r3, r2, r3
     1d8:	613b      	str	r3, [r7, #16]
     1da:	693b      	ldr	r3, [r7, #16]
     1dc:	1c5a      	adds	r2, r3, #1
     1de:	613a      	str	r2, [r7, #16]
     1e0:	4a54      	ldr	r2, [pc, #336]	; (334 <update_telemetry_loop+0x1c0>)
     1e2:	6812      	ldr	r2, [r2, #0]
     1e4:	b2d2      	uxtb	r2, r2
     1e6:	701a      	strb	r2, [r3, #0]
     1e8:	693b      	ldr	r3, [r7, #16]
     1ea:	1c5a      	adds	r2, r3, #1
     1ec:	613a      	str	r2, [r7, #16]
     1ee:	4a51      	ldr	r2, [pc, #324]	; (334 <update_telemetry_loop+0x1c0>)
     1f0:	6812      	ldr	r2, [r2, #0]
     1f2:	b2d2      	uxtb	r2, r2
     1f4:	701a      	strb	r2, [r3, #0]
     1f6:	693b      	ldr	r3, [r7, #16]
     1f8:	1c5a      	adds	r2, r3, #1
     1fa:	613a      	str	r2, [r7, #16]
     1fc:	4a4d      	ldr	r2, [pc, #308]	; (334 <update_telemetry_loop+0x1c0>)
     1fe:	6812      	ldr	r2, [r2, #0]
     200:	b2d2      	uxtb	r2, r2
     202:	701a      	strb	r2, [r3, #0]
     204:	693b      	ldr	r3, [r7, #16]
     206:	1c5a      	adds	r2, r3, #1
     208:	613a      	str	r2, [r7, #16]
     20a:	4a4a      	ldr	r2, [pc, #296]	; (334 <update_telemetry_loop+0x1c0>)
     20c:	6812      	ldr	r2, [r2, #0]
     20e:	b2d2      	uxtb	r2, r2
     210:	701a      	strb	r2, [r3, #0]
     212:	693b      	ldr	r3, [r7, #16]
     214:	1c5a      	adds	r2, r3, #1
     216:	613a      	str	r2, [r7, #16]
     218:	4a46      	ldr	r2, [pc, #280]	; (334 <update_telemetry_loop+0x1c0>)
     21a:	6812      	ldr	r2, [r2, #0]
     21c:	b2d2      	uxtb	r2, r2
     21e:	701a      	strb	r2, [r3, #0]
     220:	693b      	ldr	r3, [r7, #16]
     222:	1c5a      	adds	r2, r3, #1
     224:	613a      	str	r2, [r7, #16]
     226:	4a43      	ldr	r2, [pc, #268]	; (334 <update_telemetry_loop+0x1c0>)
     228:	6812      	ldr	r2, [r2, #0]
     22a:	b2d2      	uxtb	r2, r2
     22c:	701a      	strb	r2, [r3, #0]
     22e:	693b      	ldr	r3, [r7, #16]
     230:	1c5a      	adds	r2, r3, #1
     232:	613a      	str	r2, [r7, #16]
     234:	4a3f      	ldr	r2, [pc, #252]	; (334 <update_telemetry_loop+0x1c0>)
     236:	6812      	ldr	r2, [r2, #0]
     238:	b2d2      	uxtb	r2, r2
     23a:	701a      	strb	r2, [r3, #0]
     23c:	693b      	ldr	r3, [r7, #16]
     23e:	1c5a      	adds	r2, r3, #1
     240:	613a      	str	r2, [r7, #16]
     242:	4a3c      	ldr	r2, [pc, #240]	; (334 <update_telemetry_loop+0x1c0>)
     244:	6812      	ldr	r2, [r2, #0]
     246:	b2d2      	uxtb	r2, r2
     248:	701a      	strb	r2, [r3, #0]
     24a:	4b3a      	ldr	r3, [pc, #232]	; (334 <update_telemetry_loop+0x1c0>)
     24c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     24e:	2240      	movs	r2, #64	; 0x40
     250:	4013      	ands	r3, r2
     252:	d00a      	beq.n	26a <update_telemetry_loop+0xf6>
     254:	e004      	b.n	260 <update_telemetry_loop+0xec>
     256:	4b37      	ldr	r3, [pc, #220]	; (334 <update_telemetry_loop+0x1c0>)
     258:	681a      	ldr	r2, [r3, #0]
     25a:	230f      	movs	r3, #15
     25c:	18fb      	adds	r3, r7, r3
     25e:	701a      	strb	r2, [r3, #0]
     260:	4b34      	ldr	r3, [pc, #208]	; (334 <update_telemetry_loop+0x1c0>)
     262:	699b      	ldr	r3, [r3, #24]
     264:	2210      	movs	r2, #16
     266:	4013      	ands	r3, r2
     268:	d0f5      	beq.n	256 <update_telemetry_loop+0xe2>
     26a:	69bb      	ldr	r3, [r7, #24]
     26c:	2b03      	cmp	r3, #3
     26e:	d157      	bne.n	320 <update_telemetry_loop+0x1ac>
     270:	69fb      	ldr	r3, [r7, #28]
     272:	4a32      	ldr	r2, [pc, #200]	; (33c <update_telemetry_loop+0x1c8>)
     274:	801a      	strh	r2, [r3, #0]
     276:	687b      	ldr	r3, [r7, #4]
     278:	0c1b      	lsrs	r3, r3, #16
     27a:	b29a      	uxth	r2, r3
     27c:	69fb      	ldr	r3, [r7, #28]
     27e:	805a      	strh	r2, [r3, #2]
     280:	687b      	ldr	r3, [r7, #4]
     282:	b29a      	uxth	r2, r3
     284:	69fb      	ldr	r3, [r7, #28]
     286:	809a      	strh	r2, [r3, #4]
     288:	4b2d      	ldr	r3, [pc, #180]	; (340 <update_telemetry_loop+0x1cc>)
     28a:	685b      	ldr	r3, [r3, #4]
     28c:	b29b      	uxth	r3, r3
     28e:	4a2d      	ldr	r2, [pc, #180]	; (344 <update_telemetry_loop+0x1d0>)
     290:	4694      	mov	ip, r2
     292:	4463      	add	r3, ip
     294:	b29b      	uxth	r3, r3
     296:	b21a      	sxth	r2, r3
     298:	69fb      	ldr	r3, [r7, #28]
     29a:	80da      	strh	r2, [r3, #6]
     29c:	69fb      	ldr	r3, [r7, #28]
     29e:	2200      	movs	r2, #0
     2a0:	811a      	strh	r2, [r3, #8]
     2a2:	69fb      	ldr	r3, [r7, #28]
     2a4:	2200      	movs	r2, #0
     2a6:	815a      	strh	r2, [r3, #10]
     2a8:	69fb      	ldr	r3, [r7, #28]
     2aa:	2200      	movs	r2, #0
     2ac:	819a      	strh	r2, [r3, #12]
     2ae:	4b24      	ldr	r3, [pc, #144]	; (340 <update_telemetry_loop+0x1cc>)
     2b0:	685b      	ldr	r3, [r3, #4]
     2b2:	b29b      	uxth	r3, r3
     2b4:	4a23      	ldr	r2, [pc, #140]	; (344 <update_telemetry_loop+0x1d0>)
     2b6:	4694      	mov	ip, r2
     2b8:	4463      	add	r3, ip
     2ba:	b29b      	uxth	r3, r3
     2bc:	b21a      	sxth	r2, r3
     2be:	69fb      	ldr	r3, [r7, #28]
     2c0:	81da      	strh	r2, [r3, #14]
     2c2:	69fb      	ldr	r3, [r7, #28]
     2c4:	2200      	movs	r2, #0
     2c6:	821a      	strh	r2, [r3, #16]
     2c8:	69fb      	ldr	r3, [r7, #28]
     2ca:	2200      	movs	r2, #0
     2cc:	825a      	strh	r2, [r3, #18]
     2ce:	4b1e      	ldr	r3, [pc, #120]	; (348 <update_telemetry_loop+0x1d4>)
     2d0:	881a      	ldrh	r2, [r3, #0]
     2d2:	69fb      	ldr	r3, [r7, #28]
     2d4:	829a      	strh	r2, [r3, #20]
     2d6:	4b1d      	ldr	r3, [pc, #116]	; (34c <update_telemetry_loop+0x1d8>)
     2d8:	881a      	ldrh	r2, [r3, #0]
     2da:	69fb      	ldr	r3, [r7, #28]
     2dc:	82da      	strh	r2, [r3, #22]
     2de:	4b16      	ldr	r3, [pc, #88]	; (338 <update_telemetry_loop+0x1c4>)
     2e0:	899a      	ldrh	r2, [r3, #12]
     2e2:	69fb      	ldr	r3, [r7, #28]
     2e4:	831a      	strh	r2, [r3, #24]
     2e6:	4b14      	ldr	r3, [pc, #80]	; (338 <update_telemetry_loop+0x1c4>)
     2e8:	8a9a      	ldrh	r2, [r3, #20]
     2ea:	69fb      	ldr	r3, [r7, #28]
     2ec:	835a      	strh	r2, [r3, #26]
     2ee:	4b12      	ldr	r3, [pc, #72]	; (338 <update_telemetry_loop+0x1c4>)
     2f0:	8b9a      	ldrh	r2, [r3, #28]
     2f2:	69fb      	ldr	r3, [r7, #28]
     2f4:	839a      	strh	r2, [r3, #28]
     2f6:	4b16      	ldr	r3, [pc, #88]	; (350 <update_telemetry_loop+0x1dc>)
     2f8:	881a      	ldrh	r2, [r3, #0]
     2fa:	69fb      	ldr	r3, [r7, #28]
     2fc:	83da      	strh	r2, [r3, #30]
     2fe:	69fb      	ldr	r3, [r7, #28]
     300:	211f      	movs	r1, #31
     302:	0018      	movs	r0, r3
     304:	f7ff fef8 	bl	f8 <get_checksum>
     308:	0003      	movs	r3, r0
     30a:	001a      	movs	r2, r3
     30c:	69fb      	ldr	r3, [r7, #28]
     30e:	87da      	strh	r2, [r3, #62]	; 0x3e
     310:	4b05      	ldr	r3, [pc, #20]	; (328 <update_telemetry_loop+0x1b4>)
     312:	681b      	ldr	r3, [r3, #0]
     314:	2201      	movs	r2, #1
     316:	405a      	eors	r2, r3
     318:	4b03      	ldr	r3, [pc, #12]	; (328 <update_telemetry_loop+0x1b4>)
     31a:	601a      	str	r2, [r3, #0]
     31c:	e000      	b.n	320 <update_telemetry_loop+0x1ac>
     31e:	46c0      	nop			; (mov r8, r8)
     320:	46bd      	mov	sp, r7
     322:	b008      	add	sp, #32
     324:	bd80      	pop	{r7, pc}
     326:	46c0      	nop			; (mov r8, r8)
     328:	200000d8 	.word	0x200000d8
     32c:	200000d0 	.word	0x200000d0
     330:	40070000 	.word	0x40070000
     334:	40030000 	.word	0x40030000
     338:	20000128 	.word	0x20000128
     33c:	ffffb060 	.word	0xffffb060
     340:	40090000 	.word	0x40090000
     344:	fffff800 	.word	0xfffff800
     348:	200000ec 	.word	0x200000ec
     34c:	200000ea 	.word	0x200000ea
     350:	200000e8 	.word	0x200000e8

00000354 <update_telemetry>:
     354:	b580      	push	{r7, lr}
     356:	b088      	sub	sp, #32
     358:	af00      	add	r7, sp, #0
     35a:	6078      	str	r0, [r7, #4]
     35c:	4b81      	ldr	r3, [pc, #516]	; (564 <_stack_size+0x164>)
     35e:	681b      	ldr	r3, [r3, #0]
     360:	009a      	lsls	r2, r3, #2
     362:	4b81      	ldr	r3, [pc, #516]	; (568 <_stack_size+0x168>)
     364:	18d3      	adds	r3, r2, r3
     366:	681b      	ldr	r3, [r3, #0]
     368:	61fb      	str	r3, [r7, #28]
     36a:	2300      	movs	r3, #0
     36c:	61bb      	str	r3, [r7, #24]
     36e:	4b7f      	ldr	r3, [pc, #508]	; (56c <_stack_size+0x16c>)
     370:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     372:	0a5b      	lsrs	r3, r3, #9
     374:	001a      	movs	r2, r3
     376:	2307      	movs	r3, #7
     378:	4013      	ands	r3, r2
     37a:	617b      	str	r3, [r7, #20]
     37c:	697b      	ldr	r3, [r7, #20]
     37e:	2b00      	cmp	r3, #0
     380:	d100      	bne.n	384 <update_telemetry+0x30>
     382:	e0eb      	b.n	55c <_stack_size+0x15c>
     384:	697b      	ldr	r3, [r7, #20]
     386:	2203      	movs	r2, #3
     388:	401a      	ands	r2, r3
     38a:	697b      	ldr	r3, [r7, #20]
     38c:	105b      	asrs	r3, r3, #1
     38e:	2102      	movs	r1, #2
     390:	400b      	ands	r3, r1
     392:	431a      	orrs	r2, r3
     394:	697b      	ldr	r3, [r7, #20]
     396:	109b      	asrs	r3, r3, #2
     398:	2101      	movs	r1, #1
     39a:	400b      	ands	r3, r1
     39c:	4313      	orrs	r3, r2
     39e:	61bb      	str	r3, [r7, #24]
     3a0:	69bb      	ldr	r3, [r7, #24]
     3a2:	2204      	movs	r2, #4
     3a4:	1ad3      	subs	r3, r2, r3
     3a6:	220f      	movs	r2, #15
     3a8:	4013      	ands	r3, r2
     3aa:	61bb      	str	r3, [r7, #24]
     3ac:	4b6f      	ldr	r3, [pc, #444]	; (56c <_stack_size+0x16c>)
     3ae:	2200      	movs	r2, #0
     3b0:	655a      	str	r2, [r3, #84]	; 0x54
     3b2:	4b6f      	ldr	r3, [pc, #444]	; (570 <_stack_size+0x170>)
     3b4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     3b6:	2210      	movs	r2, #16
     3b8:	4013      	ands	r3, r2
     3ba:	d03c      	beq.n	436 <_stack_size+0x36>
     3bc:	69bb      	ldr	r3, [r7, #24]
     3be:	00da      	lsls	r2, r3, #3
     3c0:	4b6c      	ldr	r3, [pc, #432]	; (574 <_stack_size+0x174>)
     3c2:	18d3      	adds	r3, r2, r3
     3c4:	613b      	str	r3, [r7, #16]
     3c6:	693b      	ldr	r3, [r7, #16]
     3c8:	1c5a      	adds	r2, r3, #1
     3ca:	613a      	str	r2, [r7, #16]
     3cc:	4a68      	ldr	r2, [pc, #416]	; (570 <_stack_size+0x170>)
     3ce:	6812      	ldr	r2, [r2, #0]
     3d0:	b2d2      	uxtb	r2, r2
     3d2:	701a      	strb	r2, [r3, #0]
     3d4:	693b      	ldr	r3, [r7, #16]
     3d6:	1c5a      	adds	r2, r3, #1
     3d8:	613a      	str	r2, [r7, #16]
     3da:	4a65      	ldr	r2, [pc, #404]	; (570 <_stack_size+0x170>)
     3dc:	6812      	ldr	r2, [r2, #0]
     3de:	b2d2      	uxtb	r2, r2
     3e0:	701a      	strb	r2, [r3, #0]
     3e2:	693b      	ldr	r3, [r7, #16]
     3e4:	1c5a      	adds	r2, r3, #1
     3e6:	613a      	str	r2, [r7, #16]
     3e8:	4a61      	ldr	r2, [pc, #388]	; (570 <_stack_size+0x170>)
     3ea:	6812      	ldr	r2, [r2, #0]
     3ec:	b2d2      	uxtb	r2, r2
     3ee:	701a      	strb	r2, [r3, #0]
     3f0:	693b      	ldr	r3, [r7, #16]
     3f2:	1c5a      	adds	r2, r3, #1
     3f4:	613a      	str	r2, [r7, #16]
     3f6:	4a5e      	ldr	r2, [pc, #376]	; (570 <_stack_size+0x170>)
     3f8:	6812      	ldr	r2, [r2, #0]
     3fa:	b2d2      	uxtb	r2, r2
     3fc:	701a      	strb	r2, [r3, #0]
     3fe:	693b      	ldr	r3, [r7, #16]
     400:	1c5a      	adds	r2, r3, #1
     402:	613a      	str	r2, [r7, #16]
     404:	4a5a      	ldr	r2, [pc, #360]	; (570 <_stack_size+0x170>)
     406:	6812      	ldr	r2, [r2, #0]
     408:	b2d2      	uxtb	r2, r2
     40a:	701a      	strb	r2, [r3, #0]
     40c:	693b      	ldr	r3, [r7, #16]
     40e:	1c5a      	adds	r2, r3, #1
     410:	613a      	str	r2, [r7, #16]
     412:	4a57      	ldr	r2, [pc, #348]	; (570 <_stack_size+0x170>)
     414:	6812      	ldr	r2, [r2, #0]
     416:	b2d2      	uxtb	r2, r2
     418:	701a      	strb	r2, [r3, #0]
     41a:	693b      	ldr	r3, [r7, #16]
     41c:	1c5a      	adds	r2, r3, #1
     41e:	613a      	str	r2, [r7, #16]
     420:	4a53      	ldr	r2, [pc, #332]	; (570 <_stack_size+0x170>)
     422:	6812      	ldr	r2, [r2, #0]
     424:	b2d2      	uxtb	r2, r2
     426:	701a      	strb	r2, [r3, #0]
     428:	693b      	ldr	r3, [r7, #16]
     42a:	1c5a      	adds	r2, r3, #1
     42c:	613a      	str	r2, [r7, #16]
     42e:	4a50      	ldr	r2, [pc, #320]	; (570 <_stack_size+0x170>)
     430:	6812      	ldr	r2, [r2, #0]
     432:	b2d2      	uxtb	r2, r2
     434:	701a      	strb	r2, [r3, #0]
     436:	4b4e      	ldr	r3, [pc, #312]	; (570 <_stack_size+0x170>)
     438:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     43a:	2240      	movs	r2, #64	; 0x40
     43c:	4013      	ands	r3, r2
     43e:	d00a      	beq.n	456 <_stack_size+0x56>
     440:	e004      	b.n	44c <_stack_size+0x4c>
     442:	4b4b      	ldr	r3, [pc, #300]	; (570 <_stack_size+0x170>)
     444:	681a      	ldr	r2, [r3, #0]
     446:	230f      	movs	r3, #15
     448:	18fb      	adds	r3, r7, r3
     44a:	701a      	strb	r2, [r3, #0]
     44c:	4b48      	ldr	r3, [pc, #288]	; (570 <_stack_size+0x170>)
     44e:	699b      	ldr	r3, [r3, #24]
     450:	2210      	movs	r2, #16
     452:	4013      	ands	r3, r2
     454:	d0f5      	beq.n	442 <_stack_size+0x42>
     456:	69bb      	ldr	r3, [r7, #24]
     458:	2b03      	cmp	r3, #3
     45a:	d000      	beq.n	45e <_stack_size+0x5e>
     45c:	e07f      	b.n	55e <_stack_size+0x15e>
     45e:	4b45      	ldr	r3, [pc, #276]	; (574 <_stack_size+0x174>)
     460:	7b9b      	ldrb	r3, [r3, #14]
     462:	009b      	lsls	r3, r3, #2
     464:	b21b      	sxth	r3, r3
     466:	2240      	movs	r2, #64	; 0x40
     468:	4013      	ands	r3, r2
     46a:	b21a      	sxth	r2, r3
     46c:	4b41      	ldr	r3, [pc, #260]	; (574 <_stack_size+0x174>)
     46e:	7b9b      	ldrb	r3, [r3, #14]
     470:	031b      	lsls	r3, r3, #12
     472:	b21b      	sxth	r3, r3
     474:	0bdb      	lsrs	r3, r3, #15
     476:	03db      	lsls	r3, r3, #15
     478:	b21b      	sxth	r3, r3
     47a:	4313      	orrs	r3, r2
     47c:	b21a      	sxth	r2, r3
     47e:	4b3d      	ldr	r3, [pc, #244]	; (574 <_stack_size+0x174>)
     480:	7b9b      	ldrb	r3, [r3, #14]
     482:	011b      	lsls	r3, r3, #4
     484:	b21b      	sxth	r3, r3
     486:	2130      	movs	r1, #48	; 0x30
     488:	400b      	ands	r3, r1
     48a:	b21b      	sxth	r3, r3
     48c:	4313      	orrs	r3, r2
     48e:	b21a      	sxth	r2, r3
     490:	4b38      	ldr	r3, [pc, #224]	; (574 <_stack_size+0x174>)
     492:	7d9b      	ldrb	r3, [r3, #22]
     494:	009b      	lsls	r3, r3, #2
     496:	b21b      	sxth	r3, r3
     498:	210c      	movs	r1, #12
     49a:	400b      	ands	r3, r1
     49c:	b21b      	sxth	r3, r3
     49e:	4313      	orrs	r3, r2
     4a0:	b21a      	sxth	r2, r3
     4a2:	4b34      	ldr	r3, [pc, #208]	; (574 <_stack_size+0x174>)
     4a4:	7f9b      	ldrb	r3, [r3, #30]
     4a6:	b21b      	sxth	r3, r3
     4a8:	2103      	movs	r1, #3
     4aa:	400b      	ands	r3, r1
     4ac:	b21b      	sxth	r3, r3
     4ae:	4313      	orrs	r3, r2
     4b0:	b21b      	sxth	r3, r3
     4b2:	b29a      	uxth	r2, r3
     4b4:	69fb      	ldr	r3, [r7, #28]
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
     50c:	4b1a      	ldr	r3, [pc, #104]	; (578 <_stack_size+0x178>)
     50e:	881a      	ldrh	r2, [r3, #0]
     510:	69fb      	ldr	r3, [r7, #28]
     512:	829a      	strh	r2, [r3, #20]
     514:	4b19      	ldr	r3, [pc, #100]	; (57c <_stack_size+0x17c>)
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
     534:	4b12      	ldr	r3, [pc, #72]	; (580 <_stack_size+0x180>)
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
     574:	20000148 	.word	0x20000148
     578:	200000ec 	.word	0x200000ec
     57c:	200000ea 	.word	0x200000ea
     580:	200000e8 	.word	0x200000e8

00000584 <send_command>:
     584:	b580      	push	{r7, lr}
     586:	b086      	sub	sp, #24
     588:	af00      	add	r7, sp, #0
     58a:	6078      	str	r0, [r7, #4]
     58c:	2316      	movs	r3, #22
     58e:	18fb      	adds	r3, r7, r3
     590:	2200      	movs	r2, #0
     592:	701a      	strb	r2, [r3, #0]
     594:	2314      	movs	r3, #20
     596:	18fb      	adds	r3, r7, r3
     598:	687a      	ldr	r2, [r7, #4]
     59a:	8812      	ldrh	r2, [r2, #0]
     59c:	801a      	strh	r2, [r3, #0]
     59e:	687b      	ldr	r3, [r7, #4]
     5a0:	2202      	movs	r2, #2
     5a2:	5e9a      	ldrsh	r2, [r3, r2]
     5a4:	2312      	movs	r3, #18
     5a6:	18fb      	adds	r3, r7, r3
     5a8:	801a      	strh	r2, [r3, #0]
     5aa:	687b      	ldr	r3, [r7, #4]
     5ac:	2204      	movs	r2, #4
     5ae:	5e9a      	ldrsh	r2, [r3, r2]
     5b0:	2310      	movs	r3, #16
     5b2:	18fb      	adds	r3, r7, r3
     5b4:	801a      	strh	r2, [r3, #0]
     5b6:	687b      	ldr	r3, [r7, #4]
     5b8:	2206      	movs	r2, #6
     5ba:	5e9a      	ldrsh	r2, [r3, r2]
     5bc:	230e      	movs	r3, #14
     5be:	18fb      	adds	r3, r7, r3
     5c0:	801a      	strh	r2, [r3, #0]
     5c2:	2317      	movs	r3, #23
     5c4:	18fb      	adds	r3, r7, r3
     5c6:	2200      	movs	r2, #0
     5c8:	701a      	strb	r2, [r3, #0]
     5ca:	4b5d      	ldr	r3, [pc, #372]	; (740 <send_command+0x1bc>)
     5cc:	881a      	ldrh	r2, [r3, #0]
     5ce:	23fa      	movs	r3, #250	; 0xfa
     5d0:	00db      	lsls	r3, r3, #3
     5d2:	429a      	cmp	r2, r3
     5d4:	d90d      	bls.n	5f2 <send_command+0x6e>
     5d6:	4b5a      	ldr	r3, [pc, #360]	; (740 <send_command+0x1bc>)
     5d8:	881b      	ldrh	r3, [r3, #0]
     5da:	4a5a      	ldr	r2, [pc, #360]	; (744 <send_command+0x1c0>)
     5dc:	4293      	cmp	r3, r2
     5de:	d808      	bhi.n	5f2 <send_command+0x6e>
     5e0:	2317      	movs	r3, #23
     5e2:	18fb      	adds	r3, r7, r3
     5e4:	2217      	movs	r2, #23
     5e6:	18ba      	adds	r2, r7, r2
     5e8:	7812      	ldrb	r2, [r2, #0]
     5ea:	2140      	movs	r1, #64	; 0x40
     5ec:	430a      	orrs	r2, r1
     5ee:	701a      	strb	r2, [r3, #0]
     5f0:	46c0      	nop			; (mov r8, r8)
     5f2:	4b55      	ldr	r3, [pc, #340]	; (748 <send_command+0x1c4>)
     5f4:	2212      	movs	r2, #18
     5f6:	18ba      	adds	r2, r7, r2
     5f8:	8812      	ldrh	r2, [r2, #0]
     5fa:	21ff      	movs	r1, #255	; 0xff
     5fc:	400a      	ands	r2, r1
     5fe:	601a      	str	r2, [r3, #0]
     600:	b2d1      	uxtb	r1, r2
     602:	2316      	movs	r3, #22
     604:	18fb      	adds	r3, r7, r3
     606:	2216      	movs	r2, #22
     608:	18ba      	adds	r2, r7, r2
     60a:	7812      	ldrb	r2, [r2, #0]
     60c:	404a      	eors	r2, r1
     60e:	701a      	strb	r2, [r3, #0]
     610:	4b4d      	ldr	r3, [pc, #308]	; (748 <send_command+0x1c4>)
     612:	2212      	movs	r2, #18
     614:	18ba      	adds	r2, r7, r2
     616:	8812      	ldrh	r2, [r2, #0]
     618:	0a12      	lsrs	r2, r2, #8
     61a:	b292      	uxth	r2, r2
     61c:	0011      	movs	r1, r2
     61e:	22ff      	movs	r2, #255	; 0xff
     620:	400a      	ands	r2, r1
     622:	601a      	str	r2, [r3, #0]
     624:	b2d1      	uxtb	r1, r2
     626:	2316      	movs	r3, #22
     628:	18fb      	adds	r3, r7, r3
     62a:	2216      	movs	r2, #22
     62c:	18ba      	adds	r2, r7, r2
     62e:	7812      	ldrb	r2, [r2, #0]
     630:	404a      	eors	r2, r1
     632:	701a      	strb	r2, [r3, #0]
     634:	4b44      	ldr	r3, [pc, #272]	; (748 <send_command+0x1c4>)
     636:	2210      	movs	r2, #16
     638:	18ba      	adds	r2, r7, r2
     63a:	8812      	ldrh	r2, [r2, #0]
     63c:	21ff      	movs	r1, #255	; 0xff
     63e:	400a      	ands	r2, r1
     640:	601a      	str	r2, [r3, #0]
     642:	b2d1      	uxtb	r1, r2
     644:	2316      	movs	r3, #22
     646:	18fb      	adds	r3, r7, r3
     648:	2216      	movs	r2, #22
     64a:	18ba      	adds	r2, r7, r2
     64c:	7812      	ldrb	r2, [r2, #0]
     64e:	404a      	eors	r2, r1
     650:	701a      	strb	r2, [r3, #0]
     652:	4b3d      	ldr	r3, [pc, #244]	; (748 <send_command+0x1c4>)
     654:	2210      	movs	r2, #16
     656:	18ba      	adds	r2, r7, r2
     658:	8812      	ldrh	r2, [r2, #0]
     65a:	0a12      	lsrs	r2, r2, #8
     65c:	b292      	uxth	r2, r2
     65e:	0011      	movs	r1, r2
     660:	22ff      	movs	r2, #255	; 0xff
     662:	400a      	ands	r2, r1
     664:	601a      	str	r2, [r3, #0]
     666:	b2d1      	uxtb	r1, r2
     668:	2316      	movs	r3, #22
     66a:	18fb      	adds	r3, r7, r3
     66c:	2216      	movs	r2, #22
     66e:	18ba      	adds	r2, r7, r2
     670:	7812      	ldrb	r2, [r2, #0]
     672:	404a      	eors	r2, r1
     674:	701a      	strb	r2, [r3, #0]
     676:	4b34      	ldr	r3, [pc, #208]	; (748 <send_command+0x1c4>)
     678:	220e      	movs	r2, #14
     67a:	18ba      	adds	r2, r7, r2
     67c:	8812      	ldrh	r2, [r2, #0]
     67e:	21ff      	movs	r1, #255	; 0xff
     680:	400a      	ands	r2, r1
     682:	601a      	str	r2, [r3, #0]
     684:	b2d1      	uxtb	r1, r2
     686:	2316      	movs	r3, #22
     688:	18fb      	adds	r3, r7, r3
     68a:	2216      	movs	r2, #22
     68c:	18ba      	adds	r2, r7, r2
     68e:	7812      	ldrb	r2, [r2, #0]
     690:	404a      	eors	r2, r1
     692:	701a      	strb	r2, [r3, #0]
     694:	4b2c      	ldr	r3, [pc, #176]	; (748 <send_command+0x1c4>)
     696:	220e      	movs	r2, #14
     698:	18ba      	adds	r2, r7, r2
     69a:	8812      	ldrh	r2, [r2, #0]
     69c:	0a12      	lsrs	r2, r2, #8
     69e:	b292      	uxth	r2, r2
     6a0:	0011      	movs	r1, r2
     6a2:	22ff      	movs	r2, #255	; 0xff
     6a4:	400a      	ands	r2, r1
     6a6:	601a      	str	r2, [r3, #0]
     6a8:	b2d1      	uxtb	r1, r2
     6aa:	2316      	movs	r3, #22
     6ac:	18fb      	adds	r3, r7, r3
     6ae:	2216      	movs	r2, #22
     6b0:	18ba      	adds	r2, r7, r2
     6b2:	7812      	ldrb	r2, [r2, #0]
     6b4:	404a      	eors	r2, r1
     6b6:	701a      	strb	r2, [r3, #0]
     6b8:	4b23      	ldr	r3, [pc, #140]	; (748 <send_command+0x1c4>)
     6ba:	2217      	movs	r2, #23
     6bc:	18ba      	adds	r2, r7, r2
     6be:	7811      	ldrb	r1, [r2, #0]
     6c0:	2214      	movs	r2, #20
     6c2:	18ba      	adds	r2, r7, r2
     6c4:	8812      	ldrh	r2, [r2, #0]
     6c6:	0852      	lsrs	r2, r2, #1
     6c8:	b292      	uxth	r2, r2
     6ca:	0010      	movs	r0, r2
     6cc:	2201      	movs	r2, #1
     6ce:	4002      	ands	r2, r0
     6d0:	4311      	orrs	r1, r2
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
     71e:	2316      	movs	r3, #22
     720:	18fb      	adds	r3, r7, r3
     722:	2216      	movs	r2, #22
     724:	18ba      	adds	r2, r7, r2
     726:	7812      	ldrb	r2, [r2, #0]
     728:	404a      	eors	r2, r1
     72a:	701a      	strb	r2, [r3, #0]
     72c:	4b06      	ldr	r3, [pc, #24]	; (748 <send_command+0x1c4>)
     72e:	2216      	movs	r2, #22
     730:	18ba      	adds	r2, r7, r2
     732:	7812      	ldrb	r2, [r2, #0]
     734:	601a      	str	r2, [r3, #0]
     736:	46c0      	nop			; (mov r8, r8)
     738:	46bd      	mov	sp, r7
     73a:	b006      	add	sp, #24
     73c:	bd80      	pop	{r7, pc}
     73e:	46c0      	nop			; (mov r8, r8)
     740:	200000ea 	.word	0x200000ea
     744:	00000f9f 	.word	0x00000f9f
     748:	40030000 	.word	0x40030000

0000074c <update_status>:
     74c:	b580      	push	{r7, lr}
     74e:	af00      	add	r7, sp, #0
     750:	4b0d      	ldr	r3, [pc, #52]	; (788 <update_status+0x3c>)
     752:	691b      	ldr	r3, [r3, #16]
     754:	b29a      	uxth	r2, r3
     756:	4b0d      	ldr	r3, [pc, #52]	; (78c <update_status+0x40>)
     758:	801a      	strh	r2, [r3, #0]
     75a:	4b0b      	ldr	r3, [pc, #44]	; (788 <update_status+0x3c>)
     75c:	695b      	ldr	r3, [r3, #20]
     75e:	b29a      	uxth	r2, r3
     760:	4b0b      	ldr	r3, [pc, #44]	; (790 <update_status+0x44>)
     762:	801a      	strh	r2, [r3, #0]
     764:	4b08      	ldr	r3, [pc, #32]	; (788 <update_status+0x3c>)
     766:	699b      	ldr	r3, [r3, #24]
     768:	b29a      	uxth	r2, r3
     76a:	4b0a      	ldr	r3, [pc, #40]	; (794 <update_status+0x48>)
     76c:	801a      	strh	r2, [r3, #0]
     76e:	4b0a      	ldr	r3, [pc, #40]	; (798 <update_status+0x4c>)
     770:	4a07      	ldr	r2, [pc, #28]	; (790 <update_status+0x44>)
     772:	8812      	ldrh	r2, [r2, #0]
     774:	09d2      	lsrs	r2, r2, #7
     776:	b292      	uxth	r2, r2
     778:	0011      	movs	r1, r2
     77a:	221f      	movs	r2, #31
     77c:	400a      	ands	r2, r1
     77e:	601a      	str	r2, [r3, #0]
     780:	46c0      	nop			; (mov r8, r8)
     782:	46bd      	mov	sp, r7
     784:	bd80      	pop	{r7, pc}
     786:	46c0      	nop			; (mov r8, r8)
     788:	200000f0 	.word	0x200000f0
     78c:	200000e8 	.word	0x200000e8
     790:	200000ea 	.word	0x200000ea
     794:	200000ec 	.word	0x200000ec
     798:	400e8000 	.word	0x400e8000

0000079c <main>:
     79c:	b590      	push	{r4, r7, lr}
     79e:	b0a7      	sub	sp, #156	; 0x9c
     7a0:	af00      	add	r7, sp, #0
     7a2:	2380      	movs	r3, #128	; 0x80
     7a4:	18fb      	adds	r3, r7, r3
     7a6:	4a24      	ldr	r2, [pc, #144]	; (838 <main+0x9c>)
     7a8:	ca13      	ldmia	r2!, {r0, r1, r4}
     7aa:	c313      	stmia	r3!, {r0, r1, r4}
     7ac:	8812      	ldrh	r2, [r2, #0]
     7ae:	801a      	strh	r2, [r3, #0]
     7b0:	f000 fac6 	bl	d40 <SystemInit>
     7b4:	4b21      	ldr	r3, [pc, #132]	; (83c <main+0xa0>)
     7b6:	2200      	movs	r2, #0
     7b8:	601a      	str	r2, [r3, #0]
     7ba:	2300      	movs	r3, #0
     7bc:	2294      	movs	r2, #148	; 0x94
     7be:	18ba      	adds	r2, r7, r2
     7c0:	6013      	str	r3, [r2, #0]
     7c2:	4b1f      	ldr	r3, [pc, #124]	; (840 <main+0xa4>)
     7c4:	2200      	movs	r2, #0
     7c6:	601a      	str	r2, [r3, #0]
     7c8:	4b1e      	ldr	r3, [pc, #120]	; (844 <main+0xa8>)
     7ca:	4a1f      	ldr	r2, [pc, #124]	; (848 <main+0xac>)
     7cc:	601a      	str	r2, [r3, #0]
     7ce:	4b1d      	ldr	r3, [pc, #116]	; (844 <main+0xa8>)
     7d0:	4a1e      	ldr	r2, [pc, #120]	; (84c <main+0xb0>)
     7d2:	605a      	str	r2, [r3, #4]
     7d4:	4b1e      	ldr	r3, [pc, #120]	; (850 <main+0xb4>)
     7d6:	2200      	movs	r2, #0
     7d8:	601a      	str	r2, [r3, #0]
     7da:	4b1e      	ldr	r3, [pc, #120]	; (854 <main+0xb8>)
     7dc:	681b      	ldr	r3, [r3, #0]
     7de:	2b00      	cmp	r3, #0
     7e0:	d021      	beq.n	826 <main+0x8a>
     7e2:	4b1d      	ldr	r3, [pc, #116]	; (858 <main+0xbc>)
     7e4:	2202      	movs	r2, #2
     7e6:	5e9b      	ldrsh	r3, [r3, r2]
     7e8:	2b00      	cmp	r3, #0
     7ea:	da06      	bge.n	7fa <main+0x5e>
     7ec:	4b1a      	ldr	r3, [pc, #104]	; (858 <main+0xbc>)
     7ee:	2202      	movs	r2, #2
     7f0:	5e9b      	ldrsh	r3, [r3, r2]
     7f2:	4a1a      	ldr	r2, [pc, #104]	; (85c <main+0xc0>)
     7f4:	4694      	mov	ip, r2
     7f6:	4463      	add	r3, ip
     7f8:	e002      	b.n	800 <main+0x64>
     7fa:	4b17      	ldr	r3, [pc, #92]	; (858 <main+0xbc>)
     7fc:	2202      	movs	r2, #2
     7fe:	5e9b      	ldrsh	r3, [r3, r2]
     800:	2290      	movs	r2, #144	; 0x90
     802:	18ba      	adds	r2, r7, r2
     804:	6013      	str	r3, [r2, #0]
     806:	4b16      	ldr	r3, [pc, #88]	; (860 <main+0xc4>)
     808:	2290      	movs	r2, #144	; 0x90
     80a:	18ba      	adds	r2, r7, r2
     80c:	6812      	ldr	r2, [r2, #0]
     80e:	2180      	movs	r1, #128	; 0x80
     810:	0109      	lsls	r1, r1, #4
     812:	468c      	mov	ip, r1
     814:	4462      	add	r2, ip
     816:	605a      	str	r2, [r3, #4]
     818:	4b0f      	ldr	r3, [pc, #60]	; (858 <main+0xbc>)
     81a:	0018      	movs	r0, r3
     81c:	f7ff feb2 	bl	584 <send_command>
     820:	4b0c      	ldr	r3, [pc, #48]	; (854 <main+0xb8>)
     822:	2200      	movs	r2, #0
     824:	601a      	str	r2, [r3, #0]
     826:	4b0f      	ldr	r3, [pc, #60]	; (864 <main+0xc8>)
     828:	681b      	ldr	r3, [r3, #0]
     82a:	0018      	movs	r0, r3
     82c:	f7ff fd92 	bl	354 <update_telemetry>
     830:	f7ff ff8c 	bl	74c <update_status>
     834:	e7d1      	b.n	7da <main+0x3e>
     836:	46c0      	nop			; (mov r8, r8)
     838:	00002020 	.word	0x00002020
     83c:	20000110 	.word	0x20000110
     840:	20000114 	.word	0x20000114
     844:	200000d0 	.word	0x200000d0
     848:	20000044 	.word	0x20000044
     84c:	20000084 	.word	0x20000084
     850:	200000d8 	.word	0x200000d8
     854:	2000011c 	.word	0x2000011c
     858:	200000c4 	.word	0x200000c4
     85c:	ffff0000 	.word	0xffff0000
     860:	40090000 	.word	0x40090000
     864:	20000118 	.word	0x20000118

00000868 <PortConfig>:
     868:	b580      	push	{r7, lr}
     86a:	af00      	add	r7, sp, #0
     86c:	4b6e      	ldr	r3, [pc, #440]	; (a28 <PortConfig+0x1c0>)
     86e:	4a6e      	ldr	r2, [pc, #440]	; (a28 <PortConfig+0x1c0>)
     870:	69d2      	ldr	r2, [r2, #28]
     872:	2180      	movs	r1, #128	; 0x80
     874:	0449      	lsls	r1, r1, #17
     876:	430a      	orrs	r2, r1
     878:	61da      	str	r2, [r3, #28]
     87a:	4b6c      	ldr	r3, [pc, #432]	; (a2c <PortConfig+0x1c4>)
     87c:	4a6b      	ldr	r2, [pc, #428]	; (a2c <PortConfig+0x1c4>)
     87e:	68d2      	ldr	r2, [r2, #12]
     880:	496b      	ldr	r1, [pc, #428]	; (a30 <PortConfig+0x1c8>)
     882:	400a      	ands	r2, r1
     884:	60da      	str	r2, [r3, #12]
     886:	4b68      	ldr	r3, [pc, #416]	; (a28 <PortConfig+0x1c0>)
     888:	4a67      	ldr	r2, [pc, #412]	; (a28 <PortConfig+0x1c0>)
     88a:	69d2      	ldr	r2, [r2, #28]
     88c:	2180      	movs	r1, #128	; 0x80
     88e:	0409      	lsls	r1, r1, #16
     890:	430a      	orrs	r2, r1
     892:	61da      	str	r2, [r3, #28]
     894:	4b64      	ldr	r3, [pc, #400]	; (a28 <PortConfig+0x1c0>)
     896:	4a64      	ldr	r2, [pc, #400]	; (a28 <PortConfig+0x1c0>)
     898:	69d2      	ldr	r2, [r2, #28]
     89a:	2180      	movs	r1, #128	; 0x80
     89c:	0449      	lsls	r1, r1, #17
     89e:	430a      	orrs	r2, r1
     8a0:	61da      	str	r2, [r3, #28]
     8a2:	4b64      	ldr	r3, [pc, #400]	; (a34 <PortConfig+0x1cc>)
     8a4:	4a63      	ldr	r2, [pc, #396]	; (a34 <PortConfig+0x1cc>)
     8a6:	6892      	ldr	r2, [r2, #8]
     8a8:	0192      	lsls	r2, r2, #6
     8aa:	0992      	lsrs	r2, r2, #6
     8ac:	609a      	str	r2, [r3, #8]
     8ae:	4b61      	ldr	r3, [pc, #388]	; (a34 <PortConfig+0x1cc>)
     8b0:	4a60      	ldr	r2, [pc, #384]	; (a34 <PortConfig+0x1cc>)
     8b2:	6892      	ldr	r2, [r2, #8]
     8b4:	21a8      	movs	r1, #168	; 0xa8
     8b6:	05c9      	lsls	r1, r1, #23
     8b8:	430a      	orrs	r2, r1
     8ba:	609a      	str	r2, [r3, #8]
     8bc:	4b5d      	ldr	r3, [pc, #372]	; (a34 <PortConfig+0x1cc>)
     8be:	4a5d      	ldr	r2, [pc, #372]	; (a34 <PortConfig+0x1cc>)
     8c0:	68d2      	ldr	r2, [r2, #12]
     8c2:	21e0      	movs	r1, #224	; 0xe0
     8c4:	0209      	lsls	r1, r1, #8
     8c6:	430a      	orrs	r2, r1
     8c8:	60da      	str	r2, [r3, #12]
     8ca:	4b5a      	ldr	r3, [pc, #360]	; (a34 <PortConfig+0x1cc>)
     8cc:	4a59      	ldr	r2, [pc, #356]	; (a34 <PortConfig+0x1cc>)
     8ce:	6992      	ldr	r2, [r2, #24]
     8d0:	21fc      	movs	r1, #252	; 0xfc
     8d2:	0609      	lsls	r1, r1, #24
     8d4:	430a      	orrs	r2, r1
     8d6:	619a      	str	r2, [r3, #24]
     8d8:	4b54      	ldr	r3, [pc, #336]	; (a2c <PortConfig+0x1c4>)
     8da:	4a54      	ldr	r2, [pc, #336]	; (a2c <PortConfig+0x1c4>)
     8dc:	6892      	ldr	r2, [r2, #8]
     8de:	0b92      	lsrs	r2, r2, #14
     8e0:	0392      	lsls	r2, r2, #14
     8e2:	609a      	str	r2, [r3, #8]
     8e4:	4b51      	ldr	r3, [pc, #324]	; (a2c <PortConfig+0x1c4>)
     8e6:	4a51      	ldr	r2, [pc, #324]	; (a2c <PortConfig+0x1c4>)
     8e8:	6892      	ldr	r2, [r2, #8]
     8ea:	4953      	ldr	r1, [pc, #332]	; (a38 <PortConfig+0x1d0>)
     8ec:	430a      	orrs	r2, r1
     8ee:	609a      	str	r2, [r3, #8]
     8f0:	4b4e      	ldr	r3, [pc, #312]	; (a2c <PortConfig+0x1c4>)
     8f2:	4a4e      	ldr	r2, [pc, #312]	; (a2c <PortConfig+0x1c4>)
     8f4:	68d2      	ldr	r2, [r2, #12]
     8f6:	217f      	movs	r1, #127	; 0x7f
     8f8:	430a      	orrs	r2, r1
     8fa:	60da      	str	r2, [r3, #12]
     8fc:	4b4b      	ldr	r3, [pc, #300]	; (a2c <PortConfig+0x1c4>)
     8fe:	4a4b      	ldr	r2, [pc, #300]	; (a2c <PortConfig+0x1c4>)
     900:	6992      	ldr	r2, [r2, #24]
     902:	494e      	ldr	r1, [pc, #312]	; (a3c <PortConfig+0x1d4>)
     904:	430a      	orrs	r2, r1
     906:	619a      	str	r2, [r3, #24]
     908:	4b47      	ldr	r3, [pc, #284]	; (a28 <PortConfig+0x1c0>)
     90a:	4a47      	ldr	r2, [pc, #284]	; (a28 <PortConfig+0x1c0>)
     90c:	69d2      	ldr	r2, [r2, #28]
     90e:	2180      	movs	r1, #128	; 0x80
     910:	0489      	lsls	r1, r1, #18
     912:	430a      	orrs	r2, r1
     914:	61da      	str	r2, [r3, #28]
     916:	4b4a      	ldr	r3, [pc, #296]	; (a40 <PortConfig+0x1d8>)
     918:	4a49      	ldr	r2, [pc, #292]	; (a40 <PortConfig+0x1d8>)
     91a:	68d2      	ldr	r2, [r2, #12]
     91c:	2102      	movs	r1, #2
     91e:	438a      	bics	r2, r1
     920:	60da      	str	r2, [r3, #12]
     922:	4b47      	ldr	r3, [pc, #284]	; (a40 <PortConfig+0x1d8>)
     924:	4a46      	ldr	r2, [pc, #280]	; (a40 <PortConfig+0x1d8>)
     926:	68d2      	ldr	r2, [r2, #12]
     928:	2108      	movs	r1, #8
     92a:	430a      	orrs	r2, r1
     92c:	60da      	str	r2, [r3, #12]
     92e:	4b44      	ldr	r3, [pc, #272]	; (a40 <PortConfig+0x1d8>)
     930:	4a43      	ldr	r2, [pc, #268]	; (a40 <PortConfig+0x1d8>)
     932:	6892      	ldr	r2, [r2, #8]
     934:	21c0      	movs	r1, #192	; 0xc0
     936:	438a      	bics	r2, r1
     938:	609a      	str	r2, [r3, #8]
     93a:	4b41      	ldr	r3, [pc, #260]	; (a40 <PortConfig+0x1d8>)
     93c:	4a40      	ldr	r2, [pc, #256]	; (a40 <PortConfig+0x1d8>)
     93e:	6892      	ldr	r2, [r2, #8]
     940:	2140      	movs	r1, #64	; 0x40
     942:	430a      	orrs	r2, r1
     944:	609a      	str	r2, [r3, #8]
     946:	4b3e      	ldr	r3, [pc, #248]	; (a40 <PortConfig+0x1d8>)
     948:	4a3d      	ldr	r2, [pc, #244]	; (a40 <PortConfig+0x1d8>)
     94a:	6992      	ldr	r2, [r2, #24]
     94c:	21c0      	movs	r1, #192	; 0xc0
     94e:	430a      	orrs	r2, r1
     950:	619a      	str	r2, [r3, #24]
     952:	4b3b      	ldr	r3, [pc, #236]	; (a40 <PortConfig+0x1d8>)
     954:	4a3a      	ldr	r2, [pc, #232]	; (a40 <PortConfig+0x1d8>)
     956:	6852      	ldr	r2, [r2, #4]
     958:	2108      	movs	r1, #8
     95a:	430a      	orrs	r2, r1
     95c:	605a      	str	r2, [r3, #4]
     95e:	4b38      	ldr	r3, [pc, #224]	; (a40 <PortConfig+0x1d8>)
     960:	4a37      	ldr	r2, [pc, #220]	; (a40 <PortConfig+0x1d8>)
     962:	68d2      	ldr	r2, [r2, #12]
     964:	2101      	movs	r1, #1
     966:	430a      	orrs	r2, r1
     968:	60da      	str	r2, [r3, #12]
     96a:	4b35      	ldr	r3, [pc, #212]	; (a40 <PortConfig+0x1d8>)
     96c:	4a34      	ldr	r2, [pc, #208]	; (a40 <PortConfig+0x1d8>)
     96e:	6892      	ldr	r2, [r2, #8]
     970:	2103      	movs	r1, #3
     972:	438a      	bics	r2, r1
     974:	609a      	str	r2, [r3, #8]
     976:	4b32      	ldr	r3, [pc, #200]	; (a40 <PortConfig+0x1d8>)
     978:	4a31      	ldr	r2, [pc, #196]	; (a40 <PortConfig+0x1d8>)
     97a:	6992      	ldr	r2, [r2, #24]
     97c:	2103      	movs	r1, #3
     97e:	430a      	orrs	r2, r1
     980:	619a      	str	r2, [r3, #24]
     982:	4b2f      	ldr	r3, [pc, #188]	; (a40 <PortConfig+0x1d8>)
     984:	4a2e      	ldr	r2, [pc, #184]	; (a40 <PortConfig+0x1d8>)
     986:	6852      	ldr	r2, [r2, #4]
     988:	2101      	movs	r1, #1
     98a:	430a      	orrs	r2, r1
     98c:	605a      	str	r2, [r3, #4]
     98e:	4b2c      	ldr	r3, [pc, #176]	; (a40 <PortConfig+0x1d8>)
     990:	4a2b      	ldr	r2, [pc, #172]	; (a40 <PortConfig+0x1d8>)
     992:	6812      	ldr	r2, [r2, #0]
     994:	2101      	movs	r1, #1
     996:	430a      	orrs	r2, r1
     998:	601a      	str	r2, [r3, #0]
     99a:	4b23      	ldr	r3, [pc, #140]	; (a28 <PortConfig+0x1c0>)
     99c:	4a22      	ldr	r2, [pc, #136]	; (a28 <PortConfig+0x1c0>)
     99e:	69d2      	ldr	r2, [r2, #28]
     9a0:	2180      	movs	r1, #128	; 0x80
     9a2:	0409      	lsls	r1, r1, #16
     9a4:	430a      	orrs	r2, r1
     9a6:	61da      	str	r2, [r3, #28]
     9a8:	4b22      	ldr	r3, [pc, #136]	; (a34 <PortConfig+0x1cc>)
     9aa:	4a22      	ldr	r2, [pc, #136]	; (a34 <PortConfig+0x1cc>)
     9ac:	6892      	ldr	r2, [r2, #8]
     9ae:	4925      	ldr	r1, [pc, #148]	; (a44 <PortConfig+0x1dc>)
     9b0:	400a      	ands	r2, r1
     9b2:	609a      	str	r2, [r3, #8]
     9b4:	4b1f      	ldr	r3, [pc, #124]	; (a34 <PortConfig+0x1cc>)
     9b6:	4a1f      	ldr	r2, [pc, #124]	; (a34 <PortConfig+0x1cc>)
     9b8:	6892      	ldr	r2, [r2, #8]
     9ba:	21a0      	movs	r1, #160	; 0xa0
     9bc:	0049      	lsls	r1, r1, #1
     9be:	430a      	orrs	r2, r1
     9c0:	609a      	str	r2, [r3, #8]
     9c2:	4b1c      	ldr	r3, [pc, #112]	; (a34 <PortConfig+0x1cc>)
     9c4:	4a1b      	ldr	r2, [pc, #108]	; (a34 <PortConfig+0x1cc>)
     9c6:	68d2      	ldr	r2, [r2, #12]
     9c8:	2118      	movs	r1, #24
     9ca:	430a      	orrs	r2, r1
     9cc:	60da      	str	r2, [r3, #12]
     9ce:	4b19      	ldr	r3, [pc, #100]	; (a34 <PortConfig+0x1cc>)
     9d0:	4a18      	ldr	r2, [pc, #96]	; (a34 <PortConfig+0x1cc>)
     9d2:	6992      	ldr	r2, [r2, #24]
     9d4:	21f0      	movs	r1, #240	; 0xf0
     9d6:	0089      	lsls	r1, r1, #2
     9d8:	430a      	orrs	r2, r1
     9da:	619a      	str	r2, [r3, #24]
     9dc:	4b15      	ldr	r3, [pc, #84]	; (a34 <PortConfig+0x1cc>)
     9de:	4a15      	ldr	r2, [pc, #84]	; (a34 <PortConfig+0x1cc>)
     9e0:	6812      	ldr	r2, [r2, #0]
     9e2:	2118      	movs	r1, #24
     9e4:	438a      	bics	r2, r1
     9e6:	601a      	str	r2, [r3, #0]
     9e8:	4b12      	ldr	r3, [pc, #72]	; (a34 <PortConfig+0x1cc>)
     9ea:	4a12      	ldr	r2, [pc, #72]	; (a34 <PortConfig+0x1cc>)
     9ec:	6912      	ldr	r2, [r2, #16]
     9ee:	2180      	movs	r1, #128	; 0x80
     9f0:	0349      	lsls	r1, r1, #13
     9f2:	430a      	orrs	r2, r1
     9f4:	611a      	str	r2, [r3, #16]
     9f6:	4b0c      	ldr	r3, [pc, #48]	; (a28 <PortConfig+0x1c0>)
     9f8:	4a0b      	ldr	r2, [pc, #44]	; (a28 <PortConfig+0x1c0>)
     9fa:	69d2      	ldr	r2, [r2, #28]
     9fc:	2180      	movs	r1, #128	; 0x80
     9fe:	0589      	lsls	r1, r1, #22
     a00:	430a      	orrs	r2, r1
     a02:	61da      	str	r2, [r3, #28]
     a04:	4b10      	ldr	r3, [pc, #64]	; (a48 <PortConfig+0x1e0>)
     a06:	221f      	movs	r2, #31
     a08:	60da      	str	r2, [r3, #12]
     a0a:	4b0f      	ldr	r3, [pc, #60]	; (a48 <PortConfig+0x1e0>)
     a0c:	2200      	movs	r2, #0
     a0e:	609a      	str	r2, [r3, #8]
     a10:	4b0d      	ldr	r3, [pc, #52]	; (a48 <PortConfig+0x1e0>)
     a12:	4a0e      	ldr	r2, [pc, #56]	; (a4c <PortConfig+0x1e4>)
     a14:	619a      	str	r2, [r3, #24]
     a16:	4b0c      	ldr	r3, [pc, #48]	; (a48 <PortConfig+0x1e0>)
     a18:	221f      	movs	r2, #31
     a1a:	605a      	str	r2, [r3, #4]
     a1c:	4b0a      	ldr	r3, [pc, #40]	; (a48 <PortConfig+0x1e0>)
     a1e:	2200      	movs	r2, #0
     a20:	601a      	str	r2, [r3, #0]
     a22:	46c0      	nop			; (mov r8, r8)
     a24:	46bd      	mov	sp, r7
     a26:	bd80      	pop	{r7, pc}
     a28:	40020000 	.word	0x40020000
     a2c:	400c0000 	.word	0x400c0000
     a30:	ffffc7ff 	.word	0xffffc7ff
     a34:	400b8000 	.word	0x400b8000
     a38:	00001555 	.word	0x00001555
     a3c:	00003fff 	.word	0x00003fff
     a40:	400c8000 	.word	0x400c8000
     a44:	fffffc3f 	.word	0xfffffc3f
     a48:	400e8000 	.word	0x400e8000
     a4c:	000003ff 	.word	0x000003ff

00000a50 <dac_init>:
     a50:	b580      	push	{r7, lr}
     a52:	af00      	add	r7, sp, #0
     a54:	4b07      	ldr	r3, [pc, #28]	; (a74 <dac_init+0x24>)
     a56:	4a07      	ldr	r2, [pc, #28]	; (a74 <dac_init+0x24>)
     a58:	69d2      	ldr	r2, [r2, #28]
     a5a:	2180      	movs	r1, #128	; 0x80
     a5c:	02c9      	lsls	r1, r1, #11
     a5e:	430a      	orrs	r2, r1
     a60:	61da      	str	r2, [r3, #28]
     a62:	4b05      	ldr	r3, [pc, #20]	; (a78 <dac_init+0x28>)
     a64:	4a04      	ldr	r2, [pc, #16]	; (a78 <dac_init+0x28>)
     a66:	6812      	ldr	r2, [r2, #0]
     a68:	2104      	movs	r1, #4
     a6a:	430a      	orrs	r2, r1
     a6c:	601a      	str	r2, [r3, #0]
     a6e:	46c0      	nop			; (mov r8, r8)
     a70:	46bd      	mov	sp, r7
     a72:	bd80      	pop	{r7, pc}
     a74:	40020000 	.word	0x40020000
     a78:	40090000 	.word	0x40090000

00000a7c <ClkConfig>:
     a7c:	b580      	push	{r7, lr}
     a7e:	af00      	add	r7, sp, #0
     a80:	4b18      	ldr	r3, [pc, #96]	; (ae4 <ClkConfig+0x68>)
     a82:	4a18      	ldr	r2, [pc, #96]	; (ae4 <ClkConfig+0x68>)
     a84:	6892      	ldr	r2, [r2, #8]
     a86:	2101      	movs	r1, #1
     a88:	430a      	orrs	r2, r1
     a8a:	609a      	str	r2, [r3, #8]
     a8c:	46c0      	nop			; (mov r8, r8)
     a8e:	4b15      	ldr	r3, [pc, #84]	; (ae4 <ClkConfig+0x68>)
     a90:	681b      	ldr	r3, [r3, #0]
     a92:	2204      	movs	r2, #4
     a94:	4013      	ands	r3, r2
     a96:	d0fa      	beq.n	a8e <ClkConfig+0x12>
     a98:	4b12      	ldr	r3, [pc, #72]	; (ae4 <ClkConfig+0x68>)
     a9a:	4a12      	ldr	r2, [pc, #72]	; (ae4 <ClkConfig+0x68>)
     a9c:	68d2      	ldr	r2, [r2, #12]
     a9e:	2102      	movs	r1, #2
     aa0:	430a      	orrs	r2, r1
     aa2:	60da      	str	r2, [r3, #12]
     aa4:	4b0f      	ldr	r3, [pc, #60]	; (ae4 <ClkConfig+0x68>)
     aa6:	4a10      	ldr	r2, [pc, #64]	; (ae8 <ClkConfig+0x6c>)
     aa8:	605a      	str	r2, [r3, #4]
     aaa:	46c0      	nop			; (mov r8, r8)
     aac:	4b0d      	ldr	r3, [pc, #52]	; (ae4 <ClkConfig+0x68>)
     aae:	681b      	ldr	r3, [r3, #0]
     ab0:	2202      	movs	r2, #2
     ab2:	4013      	ands	r3, r2
     ab4:	d0fa      	beq.n	aac <ClkConfig+0x30>
     ab6:	4b0d      	ldr	r3, [pc, #52]	; (aec <ClkConfig+0x70>)
     ab8:	4a0c      	ldr	r2, [pc, #48]	; (aec <ClkConfig+0x70>)
     aba:	6812      	ldr	r2, [r2, #0]
     abc:	2120      	movs	r1, #32
     abe:	430a      	orrs	r2, r1
     ac0:	601a      	str	r2, [r3, #0]
     ac2:	4b08      	ldr	r3, [pc, #32]	; (ae4 <ClkConfig+0x68>)
     ac4:	4a07      	ldr	r2, [pc, #28]	; (ae4 <ClkConfig+0x68>)
     ac6:	68d2      	ldr	r2, [r2, #12]
     ac8:	2180      	movs	r1, #128	; 0x80
     aca:	0049      	lsls	r1, r1, #1
     acc:	430a      	orrs	r2, r1
     ace:	60da      	str	r2, [r3, #12]
     ad0:	4b04      	ldr	r3, [pc, #16]	; (ae4 <ClkConfig+0x68>)
     ad2:	4a04      	ldr	r2, [pc, #16]	; (ae4 <ClkConfig+0x68>)
     ad4:	68d2      	ldr	r2, [r2, #12]
     ad6:	2104      	movs	r1, #4
     ad8:	430a      	orrs	r2, r1
     ada:	60da      	str	r2, [r3, #12]
     adc:	46c0      	nop			; (mov r8, r8)
     ade:	46bd      	mov	sp, r7
     ae0:	bd80      	pop	{r7, pc}
     ae2:	46c0      	nop			; (mov r8, r8)
     ae4:	40020000 	.word	0x40020000
     ae8:	00000b04 	.word	0x00000b04
     aec:	40018000 	.word	0x40018000

00000af0 <TimerConfig>:
     af0:	b580      	push	{r7, lr}
     af2:	af00      	add	r7, sp, #0
     af4:	4b5d      	ldr	r3, [pc, #372]	; (c6c <TimerConfig+0x17c>)
     af6:	4a5d      	ldr	r2, [pc, #372]	; (c6c <TimerConfig+0x17c>)
     af8:	69d2      	ldr	r2, [r2, #28]
     afa:	2180      	movs	r1, #128	; 0x80
     afc:	01c9      	lsls	r1, r1, #7
     afe:	430a      	orrs	r2, r1
     b00:	61da      	str	r2, [r3, #28]
     b02:	4b5a      	ldr	r3, [pc, #360]	; (c6c <TimerConfig+0x17c>)
     b04:	4a59      	ldr	r2, [pc, #356]	; (c6c <TimerConfig+0x17c>)
     b06:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b08:	2180      	movs	r1, #128	; 0x80
     b0a:	0449      	lsls	r1, r1, #17
     b0c:	430a      	orrs	r2, r1
     b0e:	625a      	str	r2, [r3, #36]	; 0x24
     b10:	4b56      	ldr	r3, [pc, #344]	; (c6c <TimerConfig+0x17c>)
     b12:	4a56      	ldr	r2, [pc, #344]	; (c6c <TimerConfig+0x17c>)
     b14:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b16:	21ff      	movs	r1, #255	; 0xff
     b18:	438a      	bics	r2, r1
     b1a:	625a      	str	r2, [r3, #36]	; 0x24
     b1c:	4b54      	ldr	r3, [pc, #336]	; (c70 <TimerConfig+0x180>)
     b1e:	2200      	movs	r2, #0
     b20:	601a      	str	r2, [r3, #0]
     b22:	4b53      	ldr	r3, [pc, #332]	; (c70 <TimerConfig+0x180>)
     b24:	225f      	movs	r2, #95	; 0x5f
     b26:	605a      	str	r2, [r3, #4]
     b28:	4b51      	ldr	r3, [pc, #324]	; (c70 <TimerConfig+0x180>)
     b2a:	4a52      	ldr	r2, [pc, #328]	; (c74 <TimerConfig+0x184>)
     b2c:	609a      	str	r2, [r3, #8]
     b2e:	4b50      	ldr	r3, [pc, #320]	; (c70 <TimerConfig+0x180>)
     b30:	22c8      	movs	r2, #200	; 0xc8
     b32:	0052      	lsls	r2, r2, #1
     b34:	611a      	str	r2, [r3, #16]
     b36:	4b4e      	ldr	r3, [pc, #312]	; (c70 <TimerConfig+0x180>)
     b38:	22af      	movs	r2, #175	; 0xaf
     b3a:	0092      	lsls	r2, r2, #2
     b3c:	615a      	str	r2, [r3, #20]
     b3e:	4b4c      	ldr	r3, [pc, #304]	; (c70 <TimerConfig+0x180>)
     b40:	4a4d      	ldr	r2, [pc, #308]	; (c78 <TimerConfig+0x188>)
     b42:	619a      	str	r2, [r3, #24]
     b44:	4b4a      	ldr	r3, [pc, #296]	; (c70 <TimerConfig+0x180>)
     b46:	4a4a      	ldr	r2, [pc, #296]	; (c70 <TimerConfig+0x180>)
     b48:	6a12      	ldr	r2, [r2, #32]
     b4a:	494c      	ldr	r1, [pc, #304]	; (c7c <TimerConfig+0x18c>)
     b4c:	400a      	ands	r2, r1
     b4e:	621a      	str	r2, [r3, #32]
     b50:	4b47      	ldr	r3, [pc, #284]	; (c70 <TimerConfig+0x180>)
     b52:	4a47      	ldr	r2, [pc, #284]	; (c70 <TimerConfig+0x180>)
     b54:	6a12      	ldr	r2, [r2, #32]
     b56:	21e0      	movs	r1, #224	; 0xe0
     b58:	0109      	lsls	r1, r1, #4
     b5a:	430a      	orrs	r2, r1
     b5c:	621a      	str	r2, [r3, #32]
     b5e:	4b44      	ldr	r3, [pc, #272]	; (c70 <TimerConfig+0x180>)
     b60:	4a43      	ldr	r2, [pc, #268]	; (c70 <TimerConfig+0x180>)
     b62:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b64:	210f      	movs	r1, #15
     b66:	438a      	bics	r2, r1
     b68:	631a      	str	r2, [r3, #48]	; 0x30
     b6a:	4b41      	ldr	r3, [pc, #260]	; (c70 <TimerConfig+0x180>)
     b6c:	4a40      	ldr	r2, [pc, #256]	; (c70 <TimerConfig+0x180>)
     b6e:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b70:	210c      	movs	r1, #12
     b72:	430a      	orrs	r2, r1
     b74:	631a      	str	r2, [r3, #48]	; 0x30
     b76:	4b3e      	ldr	r3, [pc, #248]	; (c70 <TimerConfig+0x180>)
     b78:	4a3d      	ldr	r2, [pc, #244]	; (c70 <TimerConfig+0x180>)
     b7a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b7c:	2101      	movs	r1, #1
     b7e:	430a      	orrs	r2, r1
     b80:	631a      	str	r2, [r3, #48]	; 0x30
     b82:	4b3b      	ldr	r3, [pc, #236]	; (c70 <TimerConfig+0x180>)
     b84:	4a3a      	ldr	r2, [pc, #232]	; (c70 <TimerConfig+0x180>)
     b86:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b88:	493c      	ldr	r1, [pc, #240]	; (c7c <TimerConfig+0x18c>)
     b8a:	400a      	ands	r2, r1
     b8c:	625a      	str	r2, [r3, #36]	; 0x24
     b8e:	4b38      	ldr	r3, [pc, #224]	; (c70 <TimerConfig+0x180>)
     b90:	4a37      	ldr	r2, [pc, #220]	; (c70 <TimerConfig+0x180>)
     b92:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b94:	21e0      	movs	r1, #224	; 0xe0
     b96:	0109      	lsls	r1, r1, #4
     b98:	430a      	orrs	r2, r1
     b9a:	625a      	str	r2, [r3, #36]	; 0x24
     b9c:	4b34      	ldr	r3, [pc, #208]	; (c70 <TimerConfig+0x180>)
     b9e:	4a34      	ldr	r2, [pc, #208]	; (c70 <TimerConfig+0x180>)
     ba0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ba2:	210f      	movs	r1, #15
     ba4:	438a      	bics	r2, r1
     ba6:	635a      	str	r2, [r3, #52]	; 0x34
     ba8:	4b31      	ldr	r3, [pc, #196]	; (c70 <TimerConfig+0x180>)
     baa:	4a31      	ldr	r2, [pc, #196]	; (c70 <TimerConfig+0x180>)
     bac:	6b52      	ldr	r2, [r2, #52]	; 0x34
     bae:	210c      	movs	r1, #12
     bb0:	430a      	orrs	r2, r1
     bb2:	635a      	str	r2, [r3, #52]	; 0x34
     bb4:	4b2e      	ldr	r3, [pc, #184]	; (c70 <TimerConfig+0x180>)
     bb6:	4a2e      	ldr	r2, [pc, #184]	; (c70 <TimerConfig+0x180>)
     bb8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     bba:	2101      	movs	r1, #1
     bbc:	430a      	orrs	r2, r1
     bbe:	635a      	str	r2, [r3, #52]	; 0x34
     bc0:	4b2b      	ldr	r3, [pc, #172]	; (c70 <TimerConfig+0x180>)
     bc2:	4a2b      	ldr	r2, [pc, #172]	; (c70 <TimerConfig+0x180>)
     bc4:	6a92      	ldr	r2, [r2, #40]	; 0x28
     bc6:	492d      	ldr	r1, [pc, #180]	; (c7c <TimerConfig+0x18c>)
     bc8:	400a      	ands	r2, r1
     bca:	629a      	str	r2, [r3, #40]	; 0x28
     bcc:	4b28      	ldr	r3, [pc, #160]	; (c70 <TimerConfig+0x180>)
     bce:	4a28      	ldr	r2, [pc, #160]	; (c70 <TimerConfig+0x180>)
     bd0:	6a92      	ldr	r2, [r2, #40]	; 0x28
     bd2:	21e0      	movs	r1, #224	; 0xe0
     bd4:	0109      	lsls	r1, r1, #4
     bd6:	430a      	orrs	r2, r1
     bd8:	629a      	str	r2, [r3, #40]	; 0x28
     bda:	4b25      	ldr	r3, [pc, #148]	; (c70 <TimerConfig+0x180>)
     bdc:	4a24      	ldr	r2, [pc, #144]	; (c70 <TimerConfig+0x180>)
     bde:	6b92      	ldr	r2, [r2, #56]	; 0x38
     be0:	210f      	movs	r1, #15
     be2:	438a      	bics	r2, r1
     be4:	639a      	str	r2, [r3, #56]	; 0x38
     be6:	4b22      	ldr	r3, [pc, #136]	; (c70 <TimerConfig+0x180>)
     be8:	4a21      	ldr	r2, [pc, #132]	; (c70 <TimerConfig+0x180>)
     bea:	6b92      	ldr	r2, [r2, #56]	; 0x38
     bec:	210c      	movs	r1, #12
     bee:	430a      	orrs	r2, r1
     bf0:	639a      	str	r2, [r3, #56]	; 0x38
     bf2:	4b1f      	ldr	r3, [pc, #124]	; (c70 <TimerConfig+0x180>)
     bf4:	4a1e      	ldr	r2, [pc, #120]	; (c70 <TimerConfig+0x180>)
     bf6:	6b92      	ldr	r2, [r2, #56]	; 0x38
     bf8:	2101      	movs	r1, #1
     bfa:	430a      	orrs	r2, r1
     bfc:	639a      	str	r2, [r3, #56]	; 0x38
     bfe:	4b1c      	ldr	r3, [pc, #112]	; (c70 <TimerConfig+0x180>)
     c00:	4a1b      	ldr	r2, [pc, #108]	; (c70 <TimerConfig+0x180>)
     c02:	6d92      	ldr	r2, [r2, #88]	; 0x58
     c04:	21e0      	movs	r1, #224	; 0xe0
     c06:	0109      	lsls	r1, r1, #4
     c08:	430a      	orrs	r2, r1
     c0a:	659a      	str	r2, [r3, #88]	; 0x58
     c0c:	4b18      	ldr	r3, [pc, #96]	; (c70 <TimerConfig+0x180>)
     c0e:	2201      	movs	r2, #1
     c10:	60da      	str	r2, [r3, #12]
     c12:	4b16      	ldr	r3, [pc, #88]	; (c6c <TimerConfig+0x17c>)
     c14:	4a15      	ldr	r2, [pc, #84]	; (c6c <TimerConfig+0x17c>)
     c16:	69d2      	ldr	r2, [r2, #28]
     c18:	2180      	movs	r1, #128	; 0x80
     c1a:	0309      	lsls	r1, r1, #12
     c1c:	430a      	orrs	r2, r1
     c1e:	61da      	str	r2, [r3, #28]
     c20:	4b12      	ldr	r3, [pc, #72]	; (c6c <TimerConfig+0x17c>)
     c22:	4a12      	ldr	r2, [pc, #72]	; (c6c <TimerConfig+0x17c>)
     c24:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c26:	2180      	movs	r1, #128	; 0x80
     c28:	04c9      	lsls	r1, r1, #19
     c2a:	430a      	orrs	r2, r1
     c2c:	629a      	str	r2, [r3, #40]	; 0x28
     c2e:	4b0f      	ldr	r3, [pc, #60]	; (c6c <TimerConfig+0x17c>)
     c30:	4a0e      	ldr	r2, [pc, #56]	; (c6c <TimerConfig+0x17c>)
     c32:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c34:	4912      	ldr	r1, [pc, #72]	; (c80 <TimerConfig+0x190>)
     c36:	400a      	ands	r2, r1
     c38:	629a      	str	r2, [r3, #40]	; 0x28
     c3a:	4b12      	ldr	r3, [pc, #72]	; (c84 <TimerConfig+0x194>)
     c3c:	2200      	movs	r2, #0
     c3e:	601a      	str	r2, [r3, #0]
     c40:	4b10      	ldr	r3, [pc, #64]	; (c84 <TimerConfig+0x194>)
     c42:	225f      	movs	r2, #95	; 0x5f
     c44:	605a      	str	r2, [r3, #4]
     c46:	4b0f      	ldr	r3, [pc, #60]	; (c84 <TimerConfig+0x194>)
     c48:	4a0a      	ldr	r2, [pc, #40]	; (c74 <TimerConfig+0x184>)
     c4a:	609a      	str	r2, [r3, #8]
     c4c:	4b0d      	ldr	r3, [pc, #52]	; (c84 <TimerConfig+0x194>)
     c4e:	4a0d      	ldr	r2, [pc, #52]	; (c84 <TimerConfig+0x194>)
     c50:	6d92      	ldr	r2, [r2, #88]	; 0x58
     c52:	2102      	movs	r1, #2
     c54:	430a      	orrs	r2, r1
     c56:	659a      	str	r2, [r3, #88]	; 0x58
     c58:	4b0a      	ldr	r3, [pc, #40]	; (c84 <TimerConfig+0x194>)
     c5a:	2201      	movs	r2, #1
     c5c:	60da      	str	r2, [r3, #12]
     c5e:	200d      	movs	r0, #13
     c60:	f7ff fa2e 	bl	c0 <NVIC_EnableIRQ>
     c64:	46c0      	nop			; (mov r8, r8)
     c66:	46bd      	mov	sp, r7
     c68:	bd80      	pop	{r7, pc}
     c6a:	46c0      	nop			; (mov r8, r8)
     c6c:	40020000 	.word	0x40020000
     c70:	40070000 	.word	0x40070000
     c74:	000003e7 	.word	0x000003e7
     c78:	000003de 	.word	0x000003de
     c7c:	fffff1ff 	.word	0xfffff1ff
     c80:	ff00ffff 	.word	0xff00ffff
     c84:	40098000 	.word	0x40098000

00000c88 <mil_std_1533_init_rt>:
     c88:	b580      	push	{r7, lr}
     c8a:	b082      	sub	sp, #8
     c8c:	af00      	add	r7, sp, #0
     c8e:	4b26      	ldr	r3, [pc, #152]	; (d28 <mil_std_1533_init_rt+0xa0>)
     c90:	603b      	str	r3, [r7, #0]
     c92:	4b26      	ldr	r3, [pc, #152]	; (d2c <mil_std_1533_init_rt+0xa4>)
     c94:	4a25      	ldr	r2, [pc, #148]	; (d2c <mil_std_1533_init_rt+0xa4>)
     c96:	69d2      	ldr	r2, [r2, #28]
     c98:	2180      	movs	r1, #128	; 0x80
     c9a:	0089      	lsls	r1, r1, #2
     c9c:	430a      	orrs	r2, r1
     c9e:	61da      	str	r2, [r3, #28]
     ca0:	4b22      	ldr	r3, [pc, #136]	; (d2c <mil_std_1533_init_rt+0xa4>)
     ca2:	4a22      	ldr	r2, [pc, #136]	; (d2c <mil_std_1533_init_rt+0xa4>)
     ca4:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ca6:	4922      	ldr	r1, [pc, #136]	; (d30 <mil_std_1533_init_rt+0xa8>)
     ca8:	430a      	orrs	r2, r1
     caa:	635a      	str	r2, [r3, #52]	; 0x34
     cac:	4a21      	ldr	r2, [pc, #132]	; (d34 <mil_std_1533_init_rt+0xac>)
     cae:	2380      	movs	r3, #128	; 0x80
     cb0:	015b      	lsls	r3, r3, #5
     cb2:	2101      	movs	r1, #1
     cb4:	50d1      	str	r1, [r2, r3]
     cb6:	4a1f      	ldr	r2, [pc, #124]	; (d34 <mil_std_1533_init_rt+0xac>)
     cb8:	2380      	movs	r3, #128	; 0x80
     cba:	015b      	lsls	r3, r3, #5
     cbc:	491e      	ldr	r1, [pc, #120]	; (d38 <mil_std_1533_init_rt+0xb0>)
     cbe:	50d1      	str	r1, [r2, r3]
     cc0:	491c      	ldr	r1, [pc, #112]	; (d34 <mil_std_1533_init_rt+0xac>)
     cc2:	4a1c      	ldr	r2, [pc, #112]	; (d34 <mil_std_1533_init_rt+0xac>)
     cc4:	2381      	movs	r3, #129	; 0x81
     cc6:	015b      	lsls	r3, r3, #5
     cc8:	58d3      	ldr	r3, [r2, r3]
     cca:	2208      	movs	r2, #8
     ccc:	431a      	orrs	r2, r3
     cce:	2381      	movs	r3, #129	; 0x81
     cd0:	015b      	lsls	r3, r3, #5
     cd2:	50ca      	str	r2, [r1, r3]
     cd4:	4917      	ldr	r1, [pc, #92]	; (d34 <mil_std_1533_init_rt+0xac>)
     cd6:	4a17      	ldr	r2, [pc, #92]	; (d34 <mil_std_1533_init_rt+0xac>)
     cd8:	2381      	movs	r3, #129	; 0x81
     cda:	015b      	lsls	r3, r3, #5
     cdc:	58d3      	ldr	r3, [r2, r3]
     cde:	2206      	movs	r2, #6
     ce0:	431a      	orrs	r2, r3
     ce2:	2381      	movs	r3, #129	; 0x81
     ce4:	015b      	lsls	r3, r3, #5
     ce6:	50ca      	str	r2, [r1, r3]
     ce8:	2001      	movs	r0, #1
     cea:	f7ff f9e9 	bl	c0 <NVIC_EnableIRQ>
     cee:	4911      	ldr	r1, [pc, #68]	; (d34 <mil_std_1533_init_rt+0xac>)
     cf0:	4a12      	ldr	r2, [pc, #72]	; (d3c <mil_std_1533_init_rt+0xb4>)
     cf2:	2380      	movs	r3, #128	; 0x80
     cf4:	01db      	lsls	r3, r3, #7
     cf6:	508b      	str	r3, [r1, r2]
     cf8:	2300      	movs	r3, #0
     cfa:	607b      	str	r3, [r7, #4]
     cfc:	e00d      	b.n	d1a <mil_std_1533_init_rt+0x92>
     cfe:	683b      	ldr	r3, [r7, #0]
     d00:	1d1a      	adds	r2, r3, #4
     d02:	603a      	str	r2, [r7, #0]
     d04:	687a      	ldr	r2, [r7, #4]
     d06:	b292      	uxth	r2, r2
     d08:	210f      	movs	r1, #15
     d0a:	400a      	ands	r2, r1
     d0c:	b292      	uxth	r2, r2
     d0e:	3230      	adds	r2, #48	; 0x30
     d10:	b292      	uxth	r2, r2
     d12:	601a      	str	r2, [r3, #0]
     d14:	687b      	ldr	r3, [r7, #4]
     d16:	3301      	adds	r3, #1
     d18:	607b      	str	r3, [r7, #4]
     d1a:	687b      	ldr	r3, [r7, #4]
     d1c:	2b1f      	cmp	r3, #31
     d1e:	ddee      	ble.n	cfe <mil_std_1533_init_rt+0x76>
     d20:	46c0      	nop			; (mov r8, r8)
     d22:	46bd      	mov	sp, r7
     d24:	b002      	add	sp, #8
     d26:	bd80      	pop	{r7, pc}
     d28:	40048080 	.word	0x40048080
     d2c:	40020000 	.word	0x40020000
     d30:	02000100 	.word	0x02000100
     d34:	40048000 	.word	0x40048000
     d38:	00018238 	.word	0x00018238
     d3c:	00001018 	.word	0x00001018

00000d40 <SystemInit>:
     d40:	b580      	push	{r7, lr}
     d42:	af00      	add	r7, sp, #0
     d44:	f7ff fe9a 	bl	a7c <ClkConfig>
     d48:	f7ff fd8e 	bl	868 <PortConfig>
     d4c:	f7ff fed0 	bl	af0 <TimerConfig>
     d50:	f000 fa60 	bl	1214 <uart_init>
     d54:	f7ff ff98 	bl	c88 <mil_std_1533_init_rt>
     d58:	f7ff fe7a 	bl	a50 <dac_init>
     d5c:	4b0c      	ldr	r3, [pc, #48]	; (d90 <SystemInit+0x50>)
     d5e:	4a0c      	ldr	r2, [pc, #48]	; (d90 <SystemInit+0x50>)
     d60:	69d2      	ldr	r2, [r2, #28]
     d62:	490c      	ldr	r1, [pc, #48]	; (d94 <SystemInit+0x54>)
     d64:	430a      	orrs	r2, r1
     d66:	61da      	str	r2, [r3, #28]
     d68:	4b0b      	ldr	r3, [pc, #44]	; (d98 <SystemInit+0x58>)
     d6a:	2200      	movs	r2, #0
     d6c:	625a      	str	r2, [r3, #36]	; 0x24
     d6e:	4b0b      	ldr	r3, [pc, #44]	; (d9c <SystemInit+0x5c>)
     d70:	2200      	movs	r2, #0
     d72:	625a      	str	r2, [r3, #36]	; 0x24
     d74:	4b0a      	ldr	r3, [pc, #40]	; (da0 <SystemInit+0x60>)
     d76:	2200      	movs	r2, #0
     d78:	625a      	str	r2, [r3, #36]	; 0x24
     d7a:	4b05      	ldr	r3, [pc, #20]	; (d90 <SystemInit+0x50>)
     d7c:	4a04      	ldr	r2, [pc, #16]	; (d90 <SystemInit+0x50>)
     d7e:	69d2      	ldr	r2, [r2, #28]
     d80:	4908      	ldr	r1, [pc, #32]	; (da4 <SystemInit+0x64>)
     d82:	400a      	ands	r2, r1
     d84:	61da      	str	r2, [r3, #28]
     d86:	f001 f83b 	bl	1e00 <adc_init>
     d8a:	46c0      	nop			; (mov r8, r8)
     d8c:	46bd      	mov	sp, r7
     d8e:	bd80      	pop	{r7, pc}
     d90:	40020000 	.word	0x40020000
     d94:	80100100 	.word	0x80100100
     d98:	40040000 	.word	0x40040000
     d9c:	400a0000 	.word	0x400a0000
     da0:	400f8000 	.word	0x400f8000
     da4:	7feffeff 	.word	0x7feffeff

00000da8 <SysTick_Handler>:
     da8:	b580      	push	{r7, lr}
     daa:	af00      	add	r7, sp, #0
     dac:	4b03      	ldr	r3, [pc, #12]	; (dbc <SysTick_Handler+0x14>)
     dae:	681b      	ldr	r3, [r3, #0]
     db0:	1c5a      	adds	r2, r3, #1
     db2:	4b02      	ldr	r3, [pc, #8]	; (dbc <SysTick_Handler+0x14>)
     db4:	601a      	str	r2, [r3, #0]
     db6:	46c0      	nop			; (mov r8, r8)
     db8:	46bd      	mov	sp, r7
     dba:	bd80      	pop	{r7, pc}
     dbc:	20000118 	.word	0x20000118

00000dc0 <TIMER4_Handler>:
     dc0:	b580      	push	{r7, lr}
     dc2:	b082      	sub	sp, #8
     dc4:	af00      	add	r7, sp, #0
     dc6:	4b13      	ldr	r3, [pc, #76]	; (e14 <TIMER4_Handler+0x54>)
     dc8:	2200      	movs	r2, #0
     dca:	655a      	str	r2, [r3, #84]	; 0x54
     dcc:	4b12      	ldr	r3, [pc, #72]	; (e18 <TIMER4_Handler+0x58>)
     dce:	681b      	ldr	r3, [r3, #0]
     dd0:	1c5a      	adds	r2, r3, #1
     dd2:	4b11      	ldr	r3, [pc, #68]	; (e18 <TIMER4_Handler+0x58>)
     dd4:	601a      	str	r2, [r3, #0]
     dd6:	4b11      	ldr	r3, [pc, #68]	; (e1c <TIMER4_Handler+0x5c>)
     dd8:	2201      	movs	r2, #1
     dda:	601a      	str	r2, [r3, #0]
     ddc:	4b10      	ldr	r3, [pc, #64]	; (e20 <TIMER4_Handler+0x60>)
     dde:	681b      	ldr	r3, [r3, #0]
     de0:	3301      	adds	r3, #1
     de2:	2207      	movs	r2, #7
     de4:	401a      	ands	r2, r3
     de6:	4b0e      	ldr	r3, [pc, #56]	; (e20 <TIMER4_Handler+0x60>)
     de8:	601a      	str	r2, [r3, #0]
     dea:	4b0d      	ldr	r3, [pc, #52]	; (e20 <TIMER4_Handler+0x60>)
     dec:	681b      	ldr	r3, [r3, #0]
     dee:	0018      	movs	r0, r3
     df0:	f001 f81a 	bl	1e28 <adc_update>
     df4:	0003      	movs	r3, r0
     df6:	607b      	str	r3, [r7, #4]
     df8:	687b      	ldr	r3, [r7, #4]
     dfa:	0c1b      	lsrs	r3, r3, #16
     dfc:	2207      	movs	r2, #7
     dfe:	401a      	ands	r2, r3
     e00:	687b      	ldr	r3, [r7, #4]
     e02:	051b      	lsls	r3, r3, #20
     e04:	0d19      	lsrs	r1, r3, #20
     e06:	4b07      	ldr	r3, [pc, #28]	; (e24 <TIMER4_Handler+0x64>)
     e08:	0092      	lsls	r2, r2, #2
     e0a:	50d1      	str	r1, [r2, r3]
     e0c:	46c0      	nop			; (mov r8, r8)
     e0e:	46bd      	mov	sp, r7
     e10:	b002      	add	sp, #8
     e12:	bd80      	pop	{r7, pc}
     e14:	40098000 	.word	0x40098000
     e18:	20000118 	.word	0x20000118
     e1c:	20000120 	.word	0x20000120
     e20:	20000168 	.word	0x20000168
     e24:	200000f0 	.word	0x200000f0

00000e28 <MIL_STD_1553B1_Handler>:
     e28:	b590      	push	{r4, r7, lr}
     e2a:	b087      	sub	sp, #28
     e2c:	af00      	add	r7, sp, #0
     e2e:	4bb8      	ldr	r3, [pc, #736]	; (1110 <MIL_STD_1553B1_Handler+0x2e8>)
     e30:	613b      	str	r3, [r7, #16]
     e32:	4ab8      	ldr	r2, [pc, #736]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
     e34:	4bb8      	ldr	r3, [pc, #736]	; (1118 <MIL_STD_1553B1_Handler+0x2f0>)
     e36:	58d3      	ldr	r3, [r2, r3]
     e38:	2202      	movs	r2, #2
     e3a:	4013      	ands	r3, r2
     e3c:	d100      	bne.n	e40 <MIL_STD_1553B1_Handler+0x18>
     e3e:	e10f      	b.n	1060 <MIL_STD_1553B1_Handler+0x238>
     e40:	4ab4      	ldr	r2, [pc, #720]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
     e42:	4bb6      	ldr	r3, [pc, #728]	; (111c <MIL_STD_1553B1_Handler+0x2f4>)
     e44:	58d3      	ldr	r3, [r2, r3]
     e46:	4ab6      	ldr	r2, [pc, #728]	; (1120 <MIL_STD_1553B1_Handler+0x2f8>)
     e48:	4293      	cmp	r3, r2
     e4a:	d000      	beq.n	e4e <MIL_STD_1553B1_Handler+0x26>
     e4c:	e108      	b.n	1060 <MIL_STD_1553B1_Handler+0x238>
     e4e:	4bb5      	ldr	r3, [pc, #724]	; (1124 <MIL_STD_1553B1_Handler+0x2fc>)
     e50:	681b      	ldr	r3, [r3, #0]
     e52:	2201      	movs	r2, #1
     e54:	4053      	eors	r3, r2
     e56:	009a      	lsls	r2, r3, #2
     e58:	4bb3      	ldr	r3, [pc, #716]	; (1128 <MIL_STD_1553B1_Handler+0x300>)
     e5a:	18d3      	adds	r3, r2, r3
     e5c:	681b      	ldr	r3, [r3, #0]
     e5e:	60fb      	str	r3, [r7, #12]
     e60:	693b      	ldr	r3, [r7, #16]
     e62:	1d1a      	adds	r2, r3, #4
     e64:	613a      	str	r2, [r7, #16]
     e66:	68fa      	ldr	r2, [r7, #12]
     e68:	1c91      	adds	r1, r2, #2
     e6a:	60f9      	str	r1, [r7, #12]
     e6c:	8812      	ldrh	r2, [r2, #0]
     e6e:	601a      	str	r2, [r3, #0]
     e70:	693b      	ldr	r3, [r7, #16]
     e72:	1d1a      	adds	r2, r3, #4
     e74:	613a      	str	r2, [r7, #16]
     e76:	68fa      	ldr	r2, [r7, #12]
     e78:	1c91      	adds	r1, r2, #2
     e7a:	60f9      	str	r1, [r7, #12]
     e7c:	8812      	ldrh	r2, [r2, #0]
     e7e:	601a      	str	r2, [r3, #0]
     e80:	693b      	ldr	r3, [r7, #16]
     e82:	1d1a      	adds	r2, r3, #4
     e84:	613a      	str	r2, [r7, #16]
     e86:	68fa      	ldr	r2, [r7, #12]
     e88:	1c91      	adds	r1, r2, #2
     e8a:	60f9      	str	r1, [r7, #12]
     e8c:	8812      	ldrh	r2, [r2, #0]
     e8e:	601a      	str	r2, [r3, #0]
     e90:	693b      	ldr	r3, [r7, #16]
     e92:	1d1a      	adds	r2, r3, #4
     e94:	613a      	str	r2, [r7, #16]
     e96:	68fa      	ldr	r2, [r7, #12]
     e98:	1c91      	adds	r1, r2, #2
     e9a:	60f9      	str	r1, [r7, #12]
     e9c:	8812      	ldrh	r2, [r2, #0]
     e9e:	601a      	str	r2, [r3, #0]
     ea0:	693b      	ldr	r3, [r7, #16]
     ea2:	1d1a      	adds	r2, r3, #4
     ea4:	613a      	str	r2, [r7, #16]
     ea6:	68fa      	ldr	r2, [r7, #12]
     ea8:	1c91      	adds	r1, r2, #2
     eaa:	60f9      	str	r1, [r7, #12]
     eac:	8812      	ldrh	r2, [r2, #0]
     eae:	601a      	str	r2, [r3, #0]
     eb0:	693b      	ldr	r3, [r7, #16]
     eb2:	1d1a      	adds	r2, r3, #4
     eb4:	613a      	str	r2, [r7, #16]
     eb6:	68fa      	ldr	r2, [r7, #12]
     eb8:	1c91      	adds	r1, r2, #2
     eba:	60f9      	str	r1, [r7, #12]
     ebc:	8812      	ldrh	r2, [r2, #0]
     ebe:	601a      	str	r2, [r3, #0]
     ec0:	693b      	ldr	r3, [r7, #16]
     ec2:	1d1a      	adds	r2, r3, #4
     ec4:	613a      	str	r2, [r7, #16]
     ec6:	68fa      	ldr	r2, [r7, #12]
     ec8:	1c91      	adds	r1, r2, #2
     eca:	60f9      	str	r1, [r7, #12]
     ecc:	8812      	ldrh	r2, [r2, #0]
     ece:	601a      	str	r2, [r3, #0]
     ed0:	693b      	ldr	r3, [r7, #16]
     ed2:	1d1a      	adds	r2, r3, #4
     ed4:	613a      	str	r2, [r7, #16]
     ed6:	68fa      	ldr	r2, [r7, #12]
     ed8:	1c91      	adds	r1, r2, #2
     eda:	60f9      	str	r1, [r7, #12]
     edc:	8812      	ldrh	r2, [r2, #0]
     ede:	601a      	str	r2, [r3, #0]
     ee0:	693b      	ldr	r3, [r7, #16]
     ee2:	1d1a      	adds	r2, r3, #4
     ee4:	613a      	str	r2, [r7, #16]
     ee6:	68fa      	ldr	r2, [r7, #12]
     ee8:	1c91      	adds	r1, r2, #2
     eea:	60f9      	str	r1, [r7, #12]
     eec:	8812      	ldrh	r2, [r2, #0]
     eee:	601a      	str	r2, [r3, #0]
     ef0:	693b      	ldr	r3, [r7, #16]
     ef2:	1d1a      	adds	r2, r3, #4
     ef4:	613a      	str	r2, [r7, #16]
     ef6:	68fa      	ldr	r2, [r7, #12]
     ef8:	1c91      	adds	r1, r2, #2
     efa:	60f9      	str	r1, [r7, #12]
     efc:	8812      	ldrh	r2, [r2, #0]
     efe:	601a      	str	r2, [r3, #0]
     f00:	693b      	ldr	r3, [r7, #16]
     f02:	1d1a      	adds	r2, r3, #4
     f04:	613a      	str	r2, [r7, #16]
     f06:	68fa      	ldr	r2, [r7, #12]
     f08:	1c91      	adds	r1, r2, #2
     f0a:	60f9      	str	r1, [r7, #12]
     f0c:	8812      	ldrh	r2, [r2, #0]
     f0e:	601a      	str	r2, [r3, #0]
     f10:	693b      	ldr	r3, [r7, #16]
     f12:	1d1a      	adds	r2, r3, #4
     f14:	613a      	str	r2, [r7, #16]
     f16:	68fa      	ldr	r2, [r7, #12]
     f18:	1c91      	adds	r1, r2, #2
     f1a:	60f9      	str	r1, [r7, #12]
     f1c:	8812      	ldrh	r2, [r2, #0]
     f1e:	601a      	str	r2, [r3, #0]
     f20:	693b      	ldr	r3, [r7, #16]
     f22:	1d1a      	adds	r2, r3, #4
     f24:	613a      	str	r2, [r7, #16]
     f26:	68fa      	ldr	r2, [r7, #12]
     f28:	1c91      	adds	r1, r2, #2
     f2a:	60f9      	str	r1, [r7, #12]
     f2c:	8812      	ldrh	r2, [r2, #0]
     f2e:	601a      	str	r2, [r3, #0]
     f30:	693b      	ldr	r3, [r7, #16]
     f32:	1d1a      	adds	r2, r3, #4
     f34:	613a      	str	r2, [r7, #16]
     f36:	68fa      	ldr	r2, [r7, #12]
     f38:	1c91      	adds	r1, r2, #2
     f3a:	60f9      	str	r1, [r7, #12]
     f3c:	8812      	ldrh	r2, [r2, #0]
     f3e:	601a      	str	r2, [r3, #0]
     f40:	693b      	ldr	r3, [r7, #16]
     f42:	1d1a      	adds	r2, r3, #4
     f44:	613a      	str	r2, [r7, #16]
     f46:	68fa      	ldr	r2, [r7, #12]
     f48:	1c91      	adds	r1, r2, #2
     f4a:	60f9      	str	r1, [r7, #12]
     f4c:	8812      	ldrh	r2, [r2, #0]
     f4e:	601a      	str	r2, [r3, #0]
     f50:	693b      	ldr	r3, [r7, #16]
     f52:	1d1a      	adds	r2, r3, #4
     f54:	613a      	str	r2, [r7, #16]
     f56:	68fa      	ldr	r2, [r7, #12]
     f58:	1c91      	adds	r1, r2, #2
     f5a:	60f9      	str	r1, [r7, #12]
     f5c:	8812      	ldrh	r2, [r2, #0]
     f5e:	601a      	str	r2, [r3, #0]
     f60:	693b      	ldr	r3, [r7, #16]
     f62:	1d1a      	adds	r2, r3, #4
     f64:	613a      	str	r2, [r7, #16]
     f66:	68fa      	ldr	r2, [r7, #12]
     f68:	1c91      	adds	r1, r2, #2
     f6a:	60f9      	str	r1, [r7, #12]
     f6c:	8812      	ldrh	r2, [r2, #0]
     f6e:	601a      	str	r2, [r3, #0]
     f70:	693b      	ldr	r3, [r7, #16]
     f72:	1d1a      	adds	r2, r3, #4
     f74:	613a      	str	r2, [r7, #16]
     f76:	68fa      	ldr	r2, [r7, #12]
     f78:	1c91      	adds	r1, r2, #2
     f7a:	60f9      	str	r1, [r7, #12]
     f7c:	8812      	ldrh	r2, [r2, #0]
     f7e:	601a      	str	r2, [r3, #0]
     f80:	693b      	ldr	r3, [r7, #16]
     f82:	1d1a      	adds	r2, r3, #4
     f84:	613a      	str	r2, [r7, #16]
     f86:	68fa      	ldr	r2, [r7, #12]
     f88:	1c91      	adds	r1, r2, #2
     f8a:	60f9      	str	r1, [r7, #12]
     f8c:	8812      	ldrh	r2, [r2, #0]
     f8e:	601a      	str	r2, [r3, #0]
     f90:	693b      	ldr	r3, [r7, #16]
     f92:	1d1a      	adds	r2, r3, #4
     f94:	613a      	str	r2, [r7, #16]
     f96:	68fa      	ldr	r2, [r7, #12]
     f98:	1c91      	adds	r1, r2, #2
     f9a:	60f9      	str	r1, [r7, #12]
     f9c:	8812      	ldrh	r2, [r2, #0]
     f9e:	601a      	str	r2, [r3, #0]
     fa0:	693b      	ldr	r3, [r7, #16]
     fa2:	1d1a      	adds	r2, r3, #4
     fa4:	613a      	str	r2, [r7, #16]
     fa6:	68fa      	ldr	r2, [r7, #12]
     fa8:	1c91      	adds	r1, r2, #2
     faa:	60f9      	str	r1, [r7, #12]
     fac:	8812      	ldrh	r2, [r2, #0]
     fae:	601a      	str	r2, [r3, #0]
     fb0:	693b      	ldr	r3, [r7, #16]
     fb2:	1d1a      	adds	r2, r3, #4
     fb4:	613a      	str	r2, [r7, #16]
     fb6:	68fa      	ldr	r2, [r7, #12]
     fb8:	1c91      	adds	r1, r2, #2
     fba:	60f9      	str	r1, [r7, #12]
     fbc:	8812      	ldrh	r2, [r2, #0]
     fbe:	601a      	str	r2, [r3, #0]
     fc0:	693b      	ldr	r3, [r7, #16]
     fc2:	1d1a      	adds	r2, r3, #4
     fc4:	613a      	str	r2, [r7, #16]
     fc6:	68fa      	ldr	r2, [r7, #12]
     fc8:	1c91      	adds	r1, r2, #2
     fca:	60f9      	str	r1, [r7, #12]
     fcc:	8812      	ldrh	r2, [r2, #0]
     fce:	601a      	str	r2, [r3, #0]
     fd0:	693b      	ldr	r3, [r7, #16]
     fd2:	1d1a      	adds	r2, r3, #4
     fd4:	613a      	str	r2, [r7, #16]
     fd6:	68fa      	ldr	r2, [r7, #12]
     fd8:	1c91      	adds	r1, r2, #2
     fda:	60f9      	str	r1, [r7, #12]
     fdc:	8812      	ldrh	r2, [r2, #0]
     fde:	601a      	str	r2, [r3, #0]
     fe0:	693b      	ldr	r3, [r7, #16]
     fe2:	1d1a      	adds	r2, r3, #4
     fe4:	613a      	str	r2, [r7, #16]
     fe6:	68fa      	ldr	r2, [r7, #12]
     fe8:	1c91      	adds	r1, r2, #2
     fea:	60f9      	str	r1, [r7, #12]
     fec:	8812      	ldrh	r2, [r2, #0]
     fee:	601a      	str	r2, [r3, #0]
     ff0:	693b      	ldr	r3, [r7, #16]
     ff2:	1d1a      	adds	r2, r3, #4
     ff4:	613a      	str	r2, [r7, #16]
     ff6:	68fa      	ldr	r2, [r7, #12]
     ff8:	1c91      	adds	r1, r2, #2
     ffa:	60f9      	str	r1, [r7, #12]
     ffc:	8812      	ldrh	r2, [r2, #0]
     ffe:	601a      	str	r2, [r3, #0]
    1000:	693b      	ldr	r3, [r7, #16]
    1002:	1d1a      	adds	r2, r3, #4
    1004:	613a      	str	r2, [r7, #16]
    1006:	68fa      	ldr	r2, [r7, #12]
    1008:	1c91      	adds	r1, r2, #2
    100a:	60f9      	str	r1, [r7, #12]
    100c:	8812      	ldrh	r2, [r2, #0]
    100e:	601a      	str	r2, [r3, #0]
    1010:	693b      	ldr	r3, [r7, #16]
    1012:	1d1a      	adds	r2, r3, #4
    1014:	613a      	str	r2, [r7, #16]
    1016:	68fa      	ldr	r2, [r7, #12]
    1018:	1c91      	adds	r1, r2, #2
    101a:	60f9      	str	r1, [r7, #12]
    101c:	8812      	ldrh	r2, [r2, #0]
    101e:	601a      	str	r2, [r3, #0]
    1020:	693b      	ldr	r3, [r7, #16]
    1022:	1d1a      	adds	r2, r3, #4
    1024:	613a      	str	r2, [r7, #16]
    1026:	68fa      	ldr	r2, [r7, #12]
    1028:	1c91      	adds	r1, r2, #2
    102a:	60f9      	str	r1, [r7, #12]
    102c:	8812      	ldrh	r2, [r2, #0]
    102e:	601a      	str	r2, [r3, #0]
    1030:	693b      	ldr	r3, [r7, #16]
    1032:	1d1a      	adds	r2, r3, #4
    1034:	613a      	str	r2, [r7, #16]
    1036:	68fa      	ldr	r2, [r7, #12]
    1038:	1c91      	adds	r1, r2, #2
    103a:	60f9      	str	r1, [r7, #12]
    103c:	8812      	ldrh	r2, [r2, #0]
    103e:	601a      	str	r2, [r3, #0]
    1040:	693b      	ldr	r3, [r7, #16]
    1042:	1d1a      	adds	r2, r3, #4
    1044:	613a      	str	r2, [r7, #16]
    1046:	68fa      	ldr	r2, [r7, #12]
    1048:	1c91      	adds	r1, r2, #2
    104a:	60f9      	str	r1, [r7, #12]
    104c:	8812      	ldrh	r2, [r2, #0]
    104e:	601a      	str	r2, [r3, #0]
    1050:	693b      	ldr	r3, [r7, #16]
    1052:	1d1a      	adds	r2, r3, #4
    1054:	613a      	str	r2, [r7, #16]
    1056:	68fa      	ldr	r2, [r7, #12]
    1058:	1c91      	adds	r1, r2, #2
    105a:	60f9      	str	r1, [r7, #12]
    105c:	8812      	ldrh	r2, [r2, #0]
    105e:	601a      	str	r2, [r3, #0]
    1060:	4a2c      	ldr	r2, [pc, #176]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
    1062:	4b2d      	ldr	r3, [pc, #180]	; (1118 <MIL_STD_1553B1_Handler+0x2f0>)
    1064:	58d3      	ldr	r3, [r2, r3]
    1066:	2204      	movs	r2, #4
    1068:	4013      	ands	r3, r2
    106a:	d04a      	beq.n	1102 <MIL_STD_1553B1_Handler+0x2da>
    106c:	4b2f      	ldr	r3, [pc, #188]	; (112c <MIL_STD_1553B1_Handler+0x304>)
    106e:	681b      	ldr	r3, [r3, #0]
    1070:	1c5a      	adds	r2, r3, #1
    1072:	4b2e      	ldr	r3, [pc, #184]	; (112c <MIL_STD_1553B1_Handler+0x304>)
    1074:	601a      	str	r2, [r3, #0]
    1076:	4a27      	ldr	r2, [pc, #156]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
    1078:	4b28      	ldr	r3, [pc, #160]	; (111c <MIL_STD_1553B1_Handler+0x2f4>)
    107a:	58d3      	ldr	r3, [r2, r3]
    107c:	4a28      	ldr	r2, [pc, #160]	; (1120 <MIL_STD_1553B1_Handler+0x2f8>)
    107e:	4293      	cmp	r3, r2
    1080:	d03f      	beq.n	1102 <MIL_STD_1553B1_Handler+0x2da>
    1082:	4a24      	ldr	r2, [pc, #144]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
    1084:	4b25      	ldr	r3, [pc, #148]	; (111c <MIL_STD_1553B1_Handler+0x2f4>)
    1086:	58d3      	ldr	r3, [r2, r3]
    1088:	2b01      	cmp	r3, #1
    108a:	d13a      	bne.n	1102 <MIL_STD_1553B1_Handler+0x2da>
    108c:	4a21      	ldr	r2, [pc, #132]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
    108e:	4b28      	ldr	r3, [pc, #160]	; (1130 <MIL_STD_1553B1_Handler+0x308>)
    1090:	58d3      	ldr	r3, [r2, r3]
    1092:	221f      	movs	r2, #31
    1094:	4013      	ands	r3, r2
    1096:	60bb      	str	r3, [r7, #8]
    1098:	1dbb      	adds	r3, r7, #6
    109a:	2200      	movs	r2, #0
    109c:	801a      	strh	r2, [r3, #0]
    109e:	4b25      	ldr	r3, [pc, #148]	; (1134 <MIL_STD_1553B1_Handler+0x30c>)
    10a0:	603b      	str	r3, [r7, #0]
    10a2:	4b25      	ldr	r3, [pc, #148]	; (1138 <MIL_STD_1553B1_Handler+0x310>)
    10a4:	681b      	ldr	r3, [r3, #0]
    10a6:	2b00      	cmp	r3, #0
    10a8:	d12b      	bne.n	1102 <MIL_STD_1553B1_Handler+0x2da>
    10aa:	68bb      	ldr	r3, [r7, #8]
    10ac:	2b20      	cmp	r3, #32
    10ae:	d828      	bhi.n	1102 <MIL_STD_1553B1_Handler+0x2da>
    10b0:	2300      	movs	r3, #0
    10b2:	617b      	str	r3, [r7, #20]
    10b4:	e00c      	b.n	10d0 <MIL_STD_1553B1_Handler+0x2a8>
    10b6:	697b      	ldr	r3, [r7, #20]
    10b8:	005b      	lsls	r3, r3, #1
    10ba:	683a      	ldr	r2, [r7, #0]
    10bc:	18d2      	adds	r2, r2, r3
    10be:	693b      	ldr	r3, [r7, #16]
    10c0:	1d19      	adds	r1, r3, #4
    10c2:	6139      	str	r1, [r7, #16]
    10c4:	681b      	ldr	r3, [r3, #0]
    10c6:	b29b      	uxth	r3, r3
    10c8:	8013      	strh	r3, [r2, #0]
    10ca:	697b      	ldr	r3, [r7, #20]
    10cc:	3301      	adds	r3, #1
    10ce:	617b      	str	r3, [r7, #20]
    10d0:	697a      	ldr	r2, [r7, #20]
    10d2:	68bb      	ldr	r3, [r7, #8]
    10d4:	429a      	cmp	r2, r3
    10d6:	d3ee      	bcc.n	10b6 <MIL_STD_1553B1_Handler+0x28e>
    10d8:	68bb      	ldr	r3, [r7, #8]
    10da:	1e5a      	subs	r2, r3, #1
    10dc:	1dbc      	adds	r4, r7, #6
    10de:	683b      	ldr	r3, [r7, #0]
    10e0:	0011      	movs	r1, r2
    10e2:	0018      	movs	r0, r3
    10e4:	f7ff f808 	bl	f8 <get_checksum>
    10e8:	0003      	movs	r3, r0
    10ea:	8023      	strh	r3, [r4, #0]
    10ec:	4b11      	ldr	r3, [pc, #68]	; (1134 <MIL_STD_1553B1_Handler+0x30c>)
    10ee:	891b      	ldrh	r3, [r3, #8]
    10f0:	1dba      	adds	r2, r7, #6
    10f2:	8812      	ldrh	r2, [r2, #0]
    10f4:	1ad3      	subs	r3, r2, r3
    10f6:	425a      	negs	r2, r3
    10f8:	4153      	adcs	r3, r2
    10fa:	b2db      	uxtb	r3, r3
    10fc:	001a      	movs	r2, r3
    10fe:	4b0e      	ldr	r3, [pc, #56]	; (1138 <MIL_STD_1553B1_Handler+0x310>)
    1100:	601a      	str	r2, [r3, #0]
    1102:	4a04      	ldr	r2, [pc, #16]	; (1114 <MIL_STD_1553B1_Handler+0x2ec>)
    1104:	4b04      	ldr	r3, [pc, #16]	; (1118 <MIL_STD_1553B1_Handler+0x2f0>)
    1106:	58d3      	ldr	r3, [r2, r3]
    1108:	46c0      	nop			; (mov r8, r8)
    110a:	46bd      	mov	sp, r7
    110c:	b007      	add	sp, #28
    110e:	bd90      	pop	{r4, r7, pc}
    1110:	40048080 	.word	0x40048080
    1114:	40048000 	.word	0x40048000
    1118:	00001004 	.word	0x00001004
    111c:	00001024 	.word	0x00001024
    1120:	00000402 	.word	0x00000402
    1124:	200000d8 	.word	0x200000d8
    1128:	200000d0 	.word	0x200000d0
    112c:	200000e0 	.word	0x200000e0
    1130:	0000100c 	.word	0x0000100c
    1134:	200000c4 	.word	0x200000c4
    1138:	2000011c 	.word	0x2000011c

0000113c <handler_reset>:
    113c:	b580      	push	{r7, lr}
    113e:	b082      	sub	sp, #8
    1140:	af00      	add	r7, sp, #0
    1142:	4b11      	ldr	r3, [pc, #68]	; (1188 <handler_reset+0x4c>)
    1144:	607b      	str	r3, [r7, #4]
    1146:	4b11      	ldr	r3, [pc, #68]	; (118c <handler_reset+0x50>)
    1148:	603b      	str	r3, [r7, #0]
    114a:	e007      	b.n	115c <handler_reset+0x20>
    114c:	683b      	ldr	r3, [r7, #0]
    114e:	1d1a      	adds	r2, r3, #4
    1150:	603a      	str	r2, [r7, #0]
    1152:	687a      	ldr	r2, [r7, #4]
    1154:	1d11      	adds	r1, r2, #4
    1156:	6079      	str	r1, [r7, #4]
    1158:	6812      	ldr	r2, [r2, #0]
    115a:	601a      	str	r2, [r3, #0]
    115c:	683a      	ldr	r2, [r7, #0]
    115e:	4b0c      	ldr	r3, [pc, #48]	; (1190 <handler_reset+0x54>)
    1160:	429a      	cmp	r2, r3
    1162:	d3f3      	bcc.n	114c <handler_reset+0x10>
    1164:	4b0b      	ldr	r3, [pc, #44]	; (1194 <handler_reset+0x58>)
    1166:	603b      	str	r3, [r7, #0]
    1168:	e004      	b.n	1174 <handler_reset+0x38>
    116a:	683b      	ldr	r3, [r7, #0]
    116c:	1d1a      	adds	r2, r3, #4
    116e:	603a      	str	r2, [r7, #0]
    1170:	2200      	movs	r2, #0
    1172:	601a      	str	r2, [r3, #0]
    1174:	683a      	ldr	r2, [r7, #0]
    1176:	4b08      	ldr	r3, [pc, #32]	; (1198 <handler_reset+0x5c>)
    1178:	429a      	cmp	r2, r3
    117a:	d3f6      	bcc.n	116a <handler_reset+0x2e>
    117c:	f7ff fb0e 	bl	79c <main>
    1180:	46c0      	nop			; (mov r8, r8)
    1182:	46bd      	mov	sp, r7
    1184:	b002      	add	sp, #8
    1186:	bd80      	pop	{r7, pc}
    1188:	000020ac 	.word	0x000020ac
    118c:	20000000 	.word	0x20000000
    1190:	20000044 	.word	0x20000044
    1194:	20000044 	.word	0x20000044
    1198:	20000588 	.word	0x20000588

0000119c <default_handler>:
    119c:	b580      	push	{r7, lr}
    119e:	af00      	add	r7, sp, #0
    11a0:	e7fe      	b.n	11a0 <default_handler+0x4>
    11a2:	46c0      	nop			; (mov r8, r8)

000011a4 <NVIC_EnableIRQ>:
    11a4:	b580      	push	{r7, lr}
    11a6:	b082      	sub	sp, #8
    11a8:	af00      	add	r7, sp, #0
    11aa:	0002      	movs	r2, r0
    11ac:	1dfb      	adds	r3, r7, #7
    11ae:	701a      	strb	r2, [r3, #0]
    11b0:	4909      	ldr	r1, [pc, #36]	; (11d8 <NVIC_EnableIRQ+0x34>)
    11b2:	1dfb      	adds	r3, r7, #7
    11b4:	781b      	ldrb	r3, [r3, #0]
    11b6:	b25b      	sxtb	r3, r3
    11b8:	095b      	lsrs	r3, r3, #5
    11ba:	1dfa      	adds	r2, r7, #7
    11bc:	7812      	ldrb	r2, [r2, #0]
    11be:	0010      	movs	r0, r2
    11c0:	221f      	movs	r2, #31
    11c2:	4002      	ands	r2, r0
    11c4:	2001      	movs	r0, #1
    11c6:	4090      	lsls	r0, r2
    11c8:	0002      	movs	r2, r0
    11ca:	009b      	lsls	r3, r3, #2
    11cc:	505a      	str	r2, [r3, r1]
    11ce:	46c0      	nop			; (mov r8, r8)
    11d0:	46bd      	mov	sp, r7
    11d2:	b002      	add	sp, #8
    11d4:	bd80      	pop	{r7, pc}
    11d6:	46c0      	nop			; (mov r8, r8)
    11d8:	e000e100 	.word	0xe000e100

000011dc <NVIC_DisableIRQ>:
    11dc:	b580      	push	{r7, lr}
    11de:	b082      	sub	sp, #8
    11e0:	af00      	add	r7, sp, #0
    11e2:	0002      	movs	r2, r0
    11e4:	1dfb      	adds	r3, r7, #7
    11e6:	701a      	strb	r2, [r3, #0]
    11e8:	4909      	ldr	r1, [pc, #36]	; (1210 <NVIC_DisableIRQ+0x34>)
    11ea:	1dfb      	adds	r3, r7, #7
    11ec:	781b      	ldrb	r3, [r3, #0]
    11ee:	b25b      	sxtb	r3, r3
    11f0:	095b      	lsrs	r3, r3, #5
    11f2:	1dfa      	adds	r2, r7, #7
    11f4:	7812      	ldrb	r2, [r2, #0]
    11f6:	0010      	movs	r0, r2
    11f8:	221f      	movs	r2, #31
    11fa:	4002      	ands	r2, r0
    11fc:	2001      	movs	r0, #1
    11fe:	4090      	lsls	r0, r2
    1200:	0002      	movs	r2, r0
    1202:	3320      	adds	r3, #32
    1204:	009b      	lsls	r3, r3, #2
    1206:	505a      	str	r2, [r3, r1]
    1208:	46c0      	nop			; (mov r8, r8)
    120a:	46bd      	mov	sp, r7
    120c:	b002      	add	sp, #8
    120e:	bd80      	pop	{r7, pc}
    1210:	e000e100 	.word	0xe000e100

00001214 <uart_init>:
    1214:	b580      	push	{r7, lr}
    1216:	af00      	add	r7, sp, #0
    1218:	4b1f      	ldr	r3, [pc, #124]	; (1298 <uart_init+0x84>)
    121a:	4a1f      	ldr	r2, [pc, #124]	; (1298 <uart_init+0x84>)
    121c:	69d2      	ldr	r2, [r2, #28]
    121e:	2140      	movs	r1, #64	; 0x40
    1220:	430a      	orrs	r2, r1
    1222:	61da      	str	r2, [r3, #28]
    1224:	4b1c      	ldr	r3, [pc, #112]	; (1298 <uart_init+0x84>)
    1226:	4a1c      	ldr	r2, [pc, #112]	; (1298 <uart_init+0x84>)
    1228:	6a92      	ldr	r2, [r2, #40]	; 0x28
    122a:	2180      	movs	r1, #128	; 0x80
    122c:	0449      	lsls	r1, r1, #17
    122e:	430a      	orrs	r2, r1
    1230:	629a      	str	r2, [r3, #40]	; 0x28
    1232:	4b1a      	ldr	r3, [pc, #104]	; (129c <uart_init+0x88>)
    1234:	2204      	movs	r2, #4
    1236:	625a      	str	r2, [r3, #36]	; 0x24
    1238:	4b18      	ldr	r3, [pc, #96]	; (129c <uart_init+0x88>)
    123a:	2233      	movs	r2, #51	; 0x33
    123c:	629a      	str	r2, [r3, #40]	; 0x28
    123e:	4b17      	ldr	r3, [pc, #92]	; (129c <uart_init+0x88>)
    1240:	4a16      	ldr	r2, [pc, #88]	; (129c <uart_init+0x88>)
    1242:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1244:	213f      	movs	r1, #63	; 0x3f
    1246:	438a      	bics	r2, r1
    1248:	635a      	str	r2, [r3, #52]	; 0x34
    124a:	4b14      	ldr	r3, [pc, #80]	; (129c <uart_init+0x88>)
    124c:	4a13      	ldr	r2, [pc, #76]	; (129c <uart_init+0x88>)
    124e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1250:	2112      	movs	r1, #18
    1252:	430a      	orrs	r2, r1
    1254:	635a      	str	r2, [r3, #52]	; 0x34
    1256:	4b11      	ldr	r3, [pc, #68]	; (129c <uart_init+0x88>)
    1258:	4a10      	ldr	r2, [pc, #64]	; (129c <uart_init+0x88>)
    125a:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    125c:	2110      	movs	r1, #16
    125e:	430a      	orrs	r2, r1
    1260:	62da      	str	r2, [r3, #44]	; 0x2c
    1262:	4b0e      	ldr	r3, [pc, #56]	; (129c <uart_init+0x88>)
    1264:	4a0d      	ldr	r2, [pc, #52]	; (129c <uart_init+0x88>)
    1266:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1268:	2160      	movs	r1, #96	; 0x60
    126a:	430a      	orrs	r2, r1
    126c:	62da      	str	r2, [r3, #44]	; 0x2c
    126e:	4b0b      	ldr	r3, [pc, #44]	; (129c <uart_init+0x88>)
    1270:	4a0a      	ldr	r2, [pc, #40]	; (129c <uart_init+0x88>)
    1272:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1274:	490a      	ldr	r1, [pc, #40]	; (12a0 <uart_init+0x8c>)
    1276:	430a      	orrs	r2, r1
    1278:	631a      	str	r2, [r3, #48]	; 0x30
    127a:	4b08      	ldr	r3, [pc, #32]	; (129c <uart_init+0x88>)
    127c:	4a07      	ldr	r2, [pc, #28]	; (129c <uart_init+0x88>)
    127e:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1280:	2110      	movs	r1, #16
    1282:	430a      	orrs	r2, r1
    1284:	639a      	str	r2, [r3, #56]	; 0x38
    1286:	4b05      	ldr	r3, [pc, #20]	; (129c <uart_init+0x88>)
    1288:	4a04      	ldr	r2, [pc, #16]	; (129c <uart_init+0x88>)
    128a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    128c:	2140      	movs	r1, #64	; 0x40
    128e:	430a      	orrs	r2, r1
    1290:	639a      	str	r2, [r3, #56]	; 0x38
    1292:	46c0      	nop			; (mov r8, r8)
    1294:	46bd      	mov	sp, r7
    1296:	bd80      	pop	{r7, pc}
    1298:	40020000 	.word	0x40020000
    129c:	40030000 	.word	0x40030000
    12a0:	00000301 	.word	0x00000301

000012a4 <uart_read>:
    12a4:	b580      	push	{r7, lr}
    12a6:	b084      	sub	sp, #16
    12a8:	af00      	add	r7, sp, #0
    12aa:	6078      	str	r0, [r7, #4]
    12ac:	6039      	str	r1, [r7, #0]
    12ae:	4b18      	ldr	r3, [pc, #96]	; (1310 <uart_read+0x6c>)
    12b0:	681a      	ldr	r2, [r3, #0]
    12b2:	4b18      	ldr	r3, [pc, #96]	; (1314 <uart_read+0x70>)
    12b4:	681b      	ldr	r3, [r3, #0]
    12b6:	429a      	cmp	r2, r3
    12b8:	d101      	bne.n	12be <uart_read+0x1a>
    12ba:	2300      	movs	r3, #0
    12bc:	e023      	b.n	1306 <uart_read+0x62>
    12be:	2300      	movs	r3, #0
    12c0:	60fb      	str	r3, [r7, #12]
    12c2:	e01b      	b.n	12fc <uart_read+0x58>
    12c4:	68fb      	ldr	r3, [r7, #12]
    12c6:	687a      	ldr	r2, [r7, #4]
    12c8:	18d2      	adds	r2, r2, r3
    12ca:	4b11      	ldr	r3, [pc, #68]	; (1310 <uart_read+0x6c>)
    12cc:	681b      	ldr	r3, [r3, #0]
    12ce:	4912      	ldr	r1, [pc, #72]	; (1318 <uart_read+0x74>)
    12d0:	5ccb      	ldrb	r3, [r1, r3]
    12d2:	7013      	strb	r3, [r2, #0]
    12d4:	4b0e      	ldr	r3, [pc, #56]	; (1310 <uart_read+0x6c>)
    12d6:	681b      	ldr	r3, [r3, #0]
    12d8:	3301      	adds	r3, #1
    12da:	05db      	lsls	r3, r3, #23
    12dc:	0dda      	lsrs	r2, r3, #23
    12de:	4b0c      	ldr	r3, [pc, #48]	; (1310 <uart_read+0x6c>)
    12e0:	601a      	str	r2, [r3, #0]
    12e2:	4b0b      	ldr	r3, [pc, #44]	; (1310 <uart_read+0x6c>)
    12e4:	681a      	ldr	r2, [r3, #0]
    12e6:	4b0b      	ldr	r3, [pc, #44]	; (1314 <uart_read+0x70>)
    12e8:	681b      	ldr	r3, [r3, #0]
    12ea:	429a      	cmp	r2, r3
    12ec:	d103      	bne.n	12f6 <uart_read+0x52>
    12ee:	68fb      	ldr	r3, [r7, #12]
    12f0:	3301      	adds	r3, #1
    12f2:	60fb      	str	r3, [r7, #12]
    12f4:	e006      	b.n	1304 <uart_read+0x60>
    12f6:	68fb      	ldr	r3, [r7, #12]
    12f8:	3301      	adds	r3, #1
    12fa:	60fb      	str	r3, [r7, #12]
    12fc:	68fa      	ldr	r2, [r7, #12]
    12fe:	683b      	ldr	r3, [r7, #0]
    1300:	429a      	cmp	r2, r3
    1302:	dbdf      	blt.n	12c4 <uart_read+0x20>
    1304:	68fb      	ldr	r3, [r7, #12]
    1306:	0018      	movs	r0, r3
    1308:	46bd      	mov	sp, r7
    130a:	b004      	add	sp, #16
    130c:	bd80      	pop	{r7, pc}
    130e:	46c0      	nop			; (mov r8, r8)
    1310:	20000578 	.word	0x20000578
    1314:	20000574 	.word	0x20000574
    1318:	20000374 	.word	0x20000374

0000131c <uart_send>:
    131c:	b580      	push	{r7, lr}
    131e:	b084      	sub	sp, #16
    1320:	af00      	add	r7, sp, #0
    1322:	6078      	str	r0, [r7, #4]
    1324:	6039      	str	r1, [r7, #0]
    1326:	2006      	movs	r0, #6
    1328:	f7ff ff58 	bl	11dc <NVIC_DisableIRQ>
    132c:	2300      	movs	r3, #0
    132e:	60fb      	str	r3, [r7, #12]
    1330:	e01b      	b.n	136a <uart_send+0x4e>
    1332:	4b20      	ldr	r3, [pc, #128]	; (13b4 <uart_send+0x98>)
    1334:	681b      	ldr	r3, [r3, #0]
    1336:	68fa      	ldr	r2, [r7, #12]
    1338:	6879      	ldr	r1, [r7, #4]
    133a:	188a      	adds	r2, r1, r2
    133c:	7811      	ldrb	r1, [r2, #0]
    133e:	4a1e      	ldr	r2, [pc, #120]	; (13b8 <uart_send+0x9c>)
    1340:	54d1      	strb	r1, [r2, r3]
    1342:	4b1c      	ldr	r3, [pc, #112]	; (13b4 <uart_send+0x98>)
    1344:	681b      	ldr	r3, [r3, #0]
    1346:	3301      	adds	r3, #1
    1348:	05db      	lsls	r3, r3, #23
    134a:	0dda      	lsrs	r2, r3, #23
    134c:	4b19      	ldr	r3, [pc, #100]	; (13b4 <uart_send+0x98>)
    134e:	601a      	str	r2, [r3, #0]
    1350:	4b18      	ldr	r3, [pc, #96]	; (13b4 <uart_send+0x98>)
    1352:	681a      	ldr	r2, [r3, #0]
    1354:	4b19      	ldr	r3, [pc, #100]	; (13bc <uart_send+0xa0>)
    1356:	681b      	ldr	r3, [r3, #0]
    1358:	429a      	cmp	r2, r3
    135a:	d103      	bne.n	1364 <uart_send+0x48>
    135c:	68fb      	ldr	r3, [r7, #12]
    135e:	3301      	adds	r3, #1
    1360:	60fb      	str	r3, [r7, #12]
    1362:	e006      	b.n	1372 <uart_send+0x56>
    1364:	68fb      	ldr	r3, [r7, #12]
    1366:	3301      	adds	r3, #1
    1368:	60fb      	str	r3, [r7, #12]
    136a:	68fa      	ldr	r2, [r7, #12]
    136c:	683b      	ldr	r3, [r7, #0]
    136e:	429a      	cmp	r2, r3
    1370:	dbdf      	blt.n	1332 <uart_send+0x16>
    1372:	4b13      	ldr	r3, [pc, #76]	; (13c0 <uart_send+0xa4>)
    1374:	699b      	ldr	r3, [r3, #24]
    1376:	2208      	movs	r2, #8
    1378:	4013      	ands	r3, r2
    137a:	d10c      	bne.n	1396 <uart_send+0x7a>
    137c:	4a10      	ldr	r2, [pc, #64]	; (13c0 <uart_send+0xa4>)
    137e:	4b0f      	ldr	r3, [pc, #60]	; (13bc <uart_send+0xa0>)
    1380:	681b      	ldr	r3, [r3, #0]
    1382:	490d      	ldr	r1, [pc, #52]	; (13b8 <uart_send+0x9c>)
    1384:	5ccb      	ldrb	r3, [r1, r3]
    1386:	6013      	str	r3, [r2, #0]
    1388:	4b0c      	ldr	r3, [pc, #48]	; (13bc <uart_send+0xa0>)
    138a:	681b      	ldr	r3, [r3, #0]
    138c:	3301      	adds	r3, #1
    138e:	05db      	lsls	r3, r3, #23
    1390:	0dda      	lsrs	r2, r3, #23
    1392:	4b0a      	ldr	r3, [pc, #40]	; (13bc <uart_send+0xa0>)
    1394:	601a      	str	r2, [r3, #0]
    1396:	4b0a      	ldr	r3, [pc, #40]	; (13c0 <uart_send+0xa4>)
    1398:	4a09      	ldr	r2, [pc, #36]	; (13c0 <uart_send+0xa4>)
    139a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    139c:	2120      	movs	r1, #32
    139e:	430a      	orrs	r2, r1
    13a0:	639a      	str	r2, [r3, #56]	; 0x38
    13a2:	2006      	movs	r0, #6
    13a4:	f7ff fefe 	bl	11a4 <NVIC_EnableIRQ>
    13a8:	68fb      	ldr	r3, [r7, #12]
    13aa:	0018      	movs	r0, r3
    13ac:	46bd      	mov	sp, r7
    13ae:	b004      	add	sp, #16
    13b0:	bd80      	pop	{r7, pc}
    13b2:	46c0      	nop			; (mov r8, r8)
    13b4:	20000370 	.word	0x20000370
    13b8:	2000016c 	.word	0x2000016c
    13bc:	2000036c 	.word	0x2000036c
    13c0:	40030000 	.word	0x40030000

000013c4 <uart_putch>:
    13c4:	b580      	push	{r7, lr}
    13c6:	b082      	sub	sp, #8
    13c8:	af00      	add	r7, sp, #0
    13ca:	0002      	movs	r2, r0
    13cc:	1dfb      	adds	r3, r7, #7
    13ce:	701a      	strb	r2, [r3, #0]
    13d0:	46c0      	nop			; (mov r8, r8)
    13d2:	4b06      	ldr	r3, [pc, #24]	; (13ec <uart_putch+0x28>)
    13d4:	699b      	ldr	r3, [r3, #24]
    13d6:	2220      	movs	r2, #32
    13d8:	4013      	ands	r3, r2
    13da:	d1fa      	bne.n	13d2 <uart_putch+0xe>
    13dc:	4b03      	ldr	r3, [pc, #12]	; (13ec <uart_putch+0x28>)
    13de:	1dfa      	adds	r2, r7, #7
    13e0:	7812      	ldrb	r2, [r2, #0]
    13e2:	601a      	str	r2, [r3, #0]
    13e4:	46c0      	nop			; (mov r8, r8)
    13e6:	46bd      	mov	sp, r7
    13e8:	b002      	add	sp, #8
    13ea:	bd80      	pop	{r7, pc}
    13ec:	40030000 	.word	0x40030000

000013f0 <UART1_Handler>:
    13f0:	b580      	push	{r7, lr}
    13f2:	af00      	add	r7, sp, #0
    13f4:	4b1a      	ldr	r3, [pc, #104]	; (1460 <UART1_Handler+0x70>)
    13f6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    13f8:	2220      	movs	r2, #32
    13fa:	4013      	ands	r3, r2
    13fc:	d019      	beq.n	1432 <UART1_Handler+0x42>
    13fe:	4b19      	ldr	r3, [pc, #100]	; (1464 <UART1_Handler+0x74>)
    1400:	681a      	ldr	r2, [r3, #0]
    1402:	4b19      	ldr	r3, [pc, #100]	; (1468 <UART1_Handler+0x78>)
    1404:	681b      	ldr	r3, [r3, #0]
    1406:	429a      	cmp	r2, r3
    1408:	d106      	bne.n	1418 <UART1_Handler+0x28>
    140a:	4b15      	ldr	r3, [pc, #84]	; (1460 <UART1_Handler+0x70>)
    140c:	4a14      	ldr	r2, [pc, #80]	; (1460 <UART1_Handler+0x70>)
    140e:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1410:	2120      	movs	r1, #32
    1412:	438a      	bics	r2, r1
    1414:	639a      	str	r2, [r3, #56]	; 0x38
    1416:	e00c      	b.n	1432 <UART1_Handler+0x42>
    1418:	4a11      	ldr	r2, [pc, #68]	; (1460 <UART1_Handler+0x70>)
    141a:	4b12      	ldr	r3, [pc, #72]	; (1464 <UART1_Handler+0x74>)
    141c:	681b      	ldr	r3, [r3, #0]
    141e:	4913      	ldr	r1, [pc, #76]	; (146c <UART1_Handler+0x7c>)
    1420:	5ccb      	ldrb	r3, [r1, r3]
    1422:	6013      	str	r3, [r2, #0]
    1424:	4b0f      	ldr	r3, [pc, #60]	; (1464 <UART1_Handler+0x74>)
    1426:	681b      	ldr	r3, [r3, #0]
    1428:	3301      	adds	r3, #1
    142a:	05db      	lsls	r3, r3, #23
    142c:	0dda      	lsrs	r2, r3, #23
    142e:	4b0d      	ldr	r3, [pc, #52]	; (1464 <UART1_Handler+0x74>)
    1430:	601a      	str	r2, [r3, #0]
    1432:	4b0b      	ldr	r3, [pc, #44]	; (1460 <UART1_Handler+0x70>)
    1434:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1436:	2210      	movs	r2, #16
    1438:	4013      	ands	r3, r2
    143a:	d00d      	beq.n	1458 <UART1_Handler+0x68>
    143c:	4b0c      	ldr	r3, [pc, #48]	; (1470 <UART1_Handler+0x80>)
    143e:	681a      	ldr	r2, [r3, #0]
    1440:	4b07      	ldr	r3, [pc, #28]	; (1460 <UART1_Handler+0x70>)
    1442:	681b      	ldr	r3, [r3, #0]
    1444:	b2d9      	uxtb	r1, r3
    1446:	4b0b      	ldr	r3, [pc, #44]	; (1474 <UART1_Handler+0x84>)
    1448:	5499      	strb	r1, [r3, r2]
    144a:	4b09      	ldr	r3, [pc, #36]	; (1470 <UART1_Handler+0x80>)
    144c:	681b      	ldr	r3, [r3, #0]
    144e:	3301      	adds	r3, #1
    1450:	05db      	lsls	r3, r3, #23
    1452:	0dda      	lsrs	r2, r3, #23
    1454:	4b06      	ldr	r3, [pc, #24]	; (1470 <UART1_Handler+0x80>)
    1456:	601a      	str	r2, [r3, #0]
    1458:	46c0      	nop			; (mov r8, r8)
    145a:	46bd      	mov	sp, r7
    145c:	bd80      	pop	{r7, pc}
    145e:	46c0      	nop			; (mov r8, r8)
    1460:	40030000 	.word	0x40030000
    1464:	2000036c 	.word	0x2000036c
    1468:	20000370 	.word	0x20000370
    146c:	2000016c 	.word	0x2000016c
    1470:	20000574 	.word	0x20000574
    1474:	20000374 	.word	0x20000374

00001478 <xputc>:
    1478:	b580      	push	{r7, lr}
    147a:	b082      	sub	sp, #8
    147c:	af00      	add	r7, sp, #0
    147e:	0002      	movs	r2, r0
    1480:	1dfb      	adds	r3, r7, #7
    1482:	701a      	strb	r2, [r3, #0]
    1484:	1dfb      	adds	r3, r7, #7
    1486:	781b      	ldrb	r3, [r3, #0]
    1488:	2b0a      	cmp	r3, #10
    148a:	d102      	bne.n	1492 <xputc+0x1a>
    148c:	200d      	movs	r0, #13
    148e:	f7ff fff3 	bl	1478 <xputc>
    1492:	4b0d      	ldr	r3, [pc, #52]	; (14c8 <xputc+0x50>)
    1494:	681b      	ldr	r3, [r3, #0]
    1496:	2b00      	cmp	r3, #0
    1498:	d008      	beq.n	14ac <xputc+0x34>
    149a:	4b0b      	ldr	r3, [pc, #44]	; (14c8 <xputc+0x50>)
    149c:	681b      	ldr	r3, [r3, #0]
    149e:	1c59      	adds	r1, r3, #1
    14a0:	4a09      	ldr	r2, [pc, #36]	; (14c8 <xputc+0x50>)
    14a2:	6011      	str	r1, [r2, #0]
    14a4:	1dfa      	adds	r2, r7, #7
    14a6:	7812      	ldrb	r2, [r2, #0]
    14a8:	701a      	strb	r2, [r3, #0]
    14aa:	e009      	b.n	14c0 <xputc+0x48>
    14ac:	4b07      	ldr	r3, [pc, #28]	; (14cc <xputc+0x54>)
    14ae:	681b      	ldr	r3, [r3, #0]
    14b0:	2b00      	cmp	r3, #0
    14b2:	d005      	beq.n	14c0 <xputc+0x48>
    14b4:	4b05      	ldr	r3, [pc, #20]	; (14cc <xputc+0x54>)
    14b6:	681b      	ldr	r3, [r3, #0]
    14b8:	1dfa      	adds	r2, r7, #7
    14ba:	7812      	ldrb	r2, [r2, #0]
    14bc:	0010      	movs	r0, r2
    14be:	4798      	blx	r3
    14c0:	46bd      	mov	sp, r7
    14c2:	b002      	add	sp, #8
    14c4:	bd80      	pop	{r7, pc}
    14c6:	46c0      	nop			; (mov r8, r8)
    14c8:	20000580 	.word	0x20000580
    14cc:	2000057c 	.word	0x2000057c

000014d0 <xputs>:
    14d0:	b580      	push	{r7, lr}
    14d2:	b082      	sub	sp, #8
    14d4:	af00      	add	r7, sp, #0
    14d6:	6078      	str	r0, [r7, #4]
    14d8:	e006      	b.n	14e8 <xputs+0x18>
    14da:	687b      	ldr	r3, [r7, #4]
    14dc:	1c5a      	adds	r2, r3, #1
    14de:	607a      	str	r2, [r7, #4]
    14e0:	781b      	ldrb	r3, [r3, #0]
    14e2:	0018      	movs	r0, r3
    14e4:	f7ff ffc8 	bl	1478 <xputc>
    14e8:	687b      	ldr	r3, [r7, #4]
    14ea:	781b      	ldrb	r3, [r3, #0]
    14ec:	2b00      	cmp	r3, #0
    14ee:	d1f4      	bne.n	14da <xputs+0xa>
    14f0:	46c0      	nop			; (mov r8, r8)
    14f2:	46bd      	mov	sp, r7
    14f4:	b002      	add	sp, #8
    14f6:	bd80      	pop	{r7, pc}

000014f8 <xfputs>:
    14f8:	b580      	push	{r7, lr}
    14fa:	b084      	sub	sp, #16
    14fc:	af00      	add	r7, sp, #0
    14fe:	6078      	str	r0, [r7, #4]
    1500:	6039      	str	r1, [r7, #0]
    1502:	4b0c      	ldr	r3, [pc, #48]	; (1534 <xfputs+0x3c>)
    1504:	681b      	ldr	r3, [r3, #0]
    1506:	60fb      	str	r3, [r7, #12]
    1508:	4b0a      	ldr	r3, [pc, #40]	; (1534 <xfputs+0x3c>)
    150a:	687a      	ldr	r2, [r7, #4]
    150c:	601a      	str	r2, [r3, #0]
    150e:	e006      	b.n	151e <xfputs+0x26>
    1510:	683b      	ldr	r3, [r7, #0]
    1512:	1c5a      	adds	r2, r3, #1
    1514:	603a      	str	r2, [r7, #0]
    1516:	781b      	ldrb	r3, [r3, #0]
    1518:	0018      	movs	r0, r3
    151a:	f7ff ffad 	bl	1478 <xputc>
    151e:	683b      	ldr	r3, [r7, #0]
    1520:	781b      	ldrb	r3, [r3, #0]
    1522:	2b00      	cmp	r3, #0
    1524:	d1f4      	bne.n	1510 <xfputs+0x18>
    1526:	4b03      	ldr	r3, [pc, #12]	; (1534 <xfputs+0x3c>)
    1528:	68fa      	ldr	r2, [r7, #12]
    152a:	601a      	str	r2, [r3, #0]
    152c:	46c0      	nop			; (mov r8, r8)
    152e:	46bd      	mov	sp, r7
    1530:	b004      	add	sp, #16
    1532:	bd80      	pop	{r7, pc}
    1534:	2000057c 	.word	0x2000057c

00001538 <xvprintf>:
    1538:	b580      	push	{r7, lr}
    153a:	b08e      	sub	sp, #56	; 0x38
    153c:	af00      	add	r7, sp, #0
    153e:	6078      	str	r0, [r7, #4]
    1540:	6039      	str	r1, [r7, #0]
    1542:	687b      	ldr	r3, [r7, #4]
    1544:	1c5a      	adds	r2, r3, #1
    1546:	607a      	str	r2, [r7, #4]
    1548:	221f      	movs	r2, #31
    154a:	18ba      	adds	r2, r7, r2
    154c:	781b      	ldrb	r3, [r3, #0]
    154e:	7013      	strb	r3, [r2, #0]
    1550:	231f      	movs	r3, #31
    1552:	18fb      	adds	r3, r7, r3
    1554:	781b      	ldrb	r3, [r3, #0]
    1556:	2b00      	cmp	r3, #0
    1558:	d100      	bne.n	155c <xvprintf+0x24>
    155a:	e172      	b.n	1842 <xvprintf+0x30a>
    155c:	231f      	movs	r3, #31
    155e:	18fb      	adds	r3, r7, r3
    1560:	781b      	ldrb	r3, [r3, #0]
    1562:	2b25      	cmp	r3, #37	; 0x25
    1564:	d006      	beq.n	1574 <xvprintf+0x3c>
    1566:	231f      	movs	r3, #31
    1568:	18fb      	adds	r3, r7, r3
    156a:	781b      	ldrb	r3, [r3, #0]
    156c:	0018      	movs	r0, r3
    156e:	f7ff ff83 	bl	1478 <xputc>
    1572:	e165      	b.n	1840 <xvprintf+0x308>
    1574:	2300      	movs	r3, #0
    1576:	627b      	str	r3, [r7, #36]	; 0x24
    1578:	687b      	ldr	r3, [r7, #4]
    157a:	1c5a      	adds	r2, r3, #1
    157c:	607a      	str	r2, [r7, #4]
    157e:	221f      	movs	r2, #31
    1580:	18ba      	adds	r2, r7, r2
    1582:	781b      	ldrb	r3, [r3, #0]
    1584:	7013      	strb	r3, [r2, #0]
    1586:	231f      	movs	r3, #31
    1588:	18fb      	adds	r3, r7, r3
    158a:	781b      	ldrb	r3, [r3, #0]
    158c:	2b30      	cmp	r3, #48	; 0x30
    158e:	d109      	bne.n	15a4 <xvprintf+0x6c>
    1590:	2301      	movs	r3, #1
    1592:	627b      	str	r3, [r7, #36]	; 0x24
    1594:	687b      	ldr	r3, [r7, #4]
    1596:	1c5a      	adds	r2, r3, #1
    1598:	607a      	str	r2, [r7, #4]
    159a:	221f      	movs	r2, #31
    159c:	18ba      	adds	r2, r7, r2
    159e:	781b      	ldrb	r3, [r3, #0]
    15a0:	7013      	strb	r3, [r2, #0]
    15a2:	e00d      	b.n	15c0 <xvprintf+0x88>
    15a4:	231f      	movs	r3, #31
    15a6:	18fb      	adds	r3, r7, r3
    15a8:	781b      	ldrb	r3, [r3, #0]
    15aa:	2b2d      	cmp	r3, #45	; 0x2d
    15ac:	d108      	bne.n	15c0 <xvprintf+0x88>
    15ae:	2302      	movs	r3, #2
    15b0:	627b      	str	r3, [r7, #36]	; 0x24
    15b2:	687b      	ldr	r3, [r7, #4]
    15b4:	1c5a      	adds	r2, r3, #1
    15b6:	607a      	str	r2, [r7, #4]
    15b8:	221f      	movs	r2, #31
    15ba:	18ba      	adds	r2, r7, r2
    15bc:	781b      	ldrb	r3, [r3, #0]
    15be:	7013      	strb	r3, [r2, #0]
    15c0:	2300      	movs	r3, #0
    15c2:	62bb      	str	r3, [r7, #40]	; 0x28
    15c4:	e012      	b.n	15ec <xvprintf+0xb4>
    15c6:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15c8:	0013      	movs	r3, r2
    15ca:	009b      	lsls	r3, r3, #2
    15cc:	189b      	adds	r3, r3, r2
    15ce:	005b      	lsls	r3, r3, #1
    15d0:	001a      	movs	r2, r3
    15d2:	231f      	movs	r3, #31
    15d4:	18fb      	adds	r3, r7, r3
    15d6:	781b      	ldrb	r3, [r3, #0]
    15d8:	18d3      	adds	r3, r2, r3
    15da:	3b30      	subs	r3, #48	; 0x30
    15dc:	62bb      	str	r3, [r7, #40]	; 0x28
    15de:	687b      	ldr	r3, [r7, #4]
    15e0:	1c5a      	adds	r2, r3, #1
    15e2:	607a      	str	r2, [r7, #4]
    15e4:	221f      	movs	r2, #31
    15e6:	18ba      	adds	r2, r7, r2
    15e8:	781b      	ldrb	r3, [r3, #0]
    15ea:	7013      	strb	r3, [r2, #0]
    15ec:	231f      	movs	r3, #31
    15ee:	18fb      	adds	r3, r7, r3
    15f0:	781b      	ldrb	r3, [r3, #0]
    15f2:	2b2f      	cmp	r3, #47	; 0x2f
    15f4:	d904      	bls.n	1600 <xvprintf+0xc8>
    15f6:	231f      	movs	r3, #31
    15f8:	18fb      	adds	r3, r7, r3
    15fa:	781b      	ldrb	r3, [r3, #0]
    15fc:	2b39      	cmp	r3, #57	; 0x39
    15fe:	d9e2      	bls.n	15c6 <xvprintf+0x8e>
    1600:	231f      	movs	r3, #31
    1602:	18fb      	adds	r3, r7, r3
    1604:	781b      	ldrb	r3, [r3, #0]
    1606:	2b6c      	cmp	r3, #108	; 0x6c
    1608:	d004      	beq.n	1614 <xvprintf+0xdc>
    160a:	231f      	movs	r3, #31
    160c:	18fb      	adds	r3, r7, r3
    160e:	781b      	ldrb	r3, [r3, #0]
    1610:	2b4c      	cmp	r3, #76	; 0x4c
    1612:	d10a      	bne.n	162a <xvprintf+0xf2>
    1614:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1616:	2204      	movs	r2, #4
    1618:	4313      	orrs	r3, r2
    161a:	627b      	str	r3, [r7, #36]	; 0x24
    161c:	687b      	ldr	r3, [r7, #4]
    161e:	1c5a      	adds	r2, r3, #1
    1620:	607a      	str	r2, [r7, #4]
    1622:	221f      	movs	r2, #31
    1624:	18ba      	adds	r2, r7, r2
    1626:	781b      	ldrb	r3, [r3, #0]
    1628:	7013      	strb	r3, [r2, #0]
    162a:	231f      	movs	r3, #31
    162c:	18fb      	adds	r3, r7, r3
    162e:	781b      	ldrb	r3, [r3, #0]
    1630:	2b00      	cmp	r3, #0
    1632:	d100      	bne.n	1636 <xvprintf+0xfe>
    1634:	e107      	b.n	1846 <xvprintf+0x30e>
    1636:	231e      	movs	r3, #30
    1638:	18fb      	adds	r3, r7, r3
    163a:	221f      	movs	r2, #31
    163c:	18ba      	adds	r2, r7, r2
    163e:	7812      	ldrb	r2, [r2, #0]
    1640:	701a      	strb	r2, [r3, #0]
    1642:	231e      	movs	r3, #30
    1644:	18fb      	adds	r3, r7, r3
    1646:	781b      	ldrb	r3, [r3, #0]
    1648:	2b60      	cmp	r3, #96	; 0x60
    164a:	d906      	bls.n	165a <xvprintf+0x122>
    164c:	231e      	movs	r3, #30
    164e:	18fb      	adds	r3, r7, r3
    1650:	221e      	movs	r2, #30
    1652:	18ba      	adds	r2, r7, r2
    1654:	7812      	ldrb	r2, [r2, #0]
    1656:	3a20      	subs	r2, #32
    1658:	701a      	strb	r2, [r3, #0]
    165a:	231e      	movs	r3, #30
    165c:	18fb      	adds	r3, r7, r3
    165e:	781b      	ldrb	r3, [r3, #0]
    1660:	3b42      	subs	r3, #66	; 0x42
    1662:	2b16      	cmp	r3, #22
    1664:	d847      	bhi.n	16f6 <xvprintf+0x1be>
    1666:	009a      	lsls	r2, r3, #2
    1668:	4b79      	ldr	r3, [pc, #484]	; (1850 <xvprintf+0x318>)
    166a:	18d3      	adds	r3, r2, r3
    166c:	681b      	ldr	r3, [r3, #0]
    166e:	469f      	mov	pc, r3
    1670:	683b      	ldr	r3, [r7, #0]
    1672:	1d1a      	adds	r2, r3, #4
    1674:	603a      	str	r2, [r7, #0]
    1676:	681b      	ldr	r3, [r3, #0]
    1678:	61bb      	str	r3, [r7, #24]
    167a:	2300      	movs	r3, #0
    167c:	62fb      	str	r3, [r7, #44]	; 0x2c
    167e:	e002      	b.n	1686 <xvprintf+0x14e>
    1680:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1682:	3301      	adds	r3, #1
    1684:	62fb      	str	r3, [r7, #44]	; 0x2c
    1686:	69ba      	ldr	r2, [r7, #24]
    1688:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    168a:	18d3      	adds	r3, r2, r3
    168c:	781b      	ldrb	r3, [r3, #0]
    168e:	2b00      	cmp	r3, #0
    1690:	d1f6      	bne.n	1680 <xvprintf+0x148>
    1692:	e002      	b.n	169a <xvprintf+0x162>
    1694:	2020      	movs	r0, #32
    1696:	f7ff feef 	bl	1478 <xputc>
    169a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    169c:	2202      	movs	r2, #2
    169e:	4013      	ands	r3, r2
    16a0:	d105      	bne.n	16ae <xvprintf+0x176>
    16a2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16a4:	1c5a      	adds	r2, r3, #1
    16a6:	62fa      	str	r2, [r7, #44]	; 0x2c
    16a8:	6aba      	ldr	r2, [r7, #40]	; 0x28
    16aa:	4293      	cmp	r3, r2
    16ac:	d3f2      	bcc.n	1694 <xvprintf+0x15c>
    16ae:	69bb      	ldr	r3, [r7, #24]
    16b0:	0018      	movs	r0, r3
    16b2:	f7ff ff0d 	bl	14d0 <xputs>
    16b6:	e002      	b.n	16be <xvprintf+0x186>
    16b8:	2020      	movs	r0, #32
    16ba:	f7ff fedd 	bl	1478 <xputc>
    16be:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16c0:	1c5a      	adds	r2, r3, #1
    16c2:	62fa      	str	r2, [r7, #44]	; 0x2c
    16c4:	6aba      	ldr	r2, [r7, #40]	; 0x28
    16c6:	4293      	cmp	r3, r2
    16c8:	d3f6      	bcc.n	16b8 <xvprintf+0x180>
    16ca:	e0b9      	b.n	1840 <xvprintf+0x308>
    16cc:	683b      	ldr	r3, [r7, #0]
    16ce:	1d1a      	adds	r2, r3, #4
    16d0:	603a      	str	r2, [r7, #0]
    16d2:	681b      	ldr	r3, [r3, #0]
    16d4:	b2db      	uxtb	r3, r3
    16d6:	0018      	movs	r0, r3
    16d8:	f7ff fece 	bl	1478 <xputc>
    16dc:	e0b0      	b.n	1840 <xvprintf+0x308>
    16de:	2302      	movs	r3, #2
    16e0:	637b      	str	r3, [r7, #52]	; 0x34
    16e2:	e00f      	b.n	1704 <xvprintf+0x1cc>
    16e4:	2308      	movs	r3, #8
    16e6:	637b      	str	r3, [r7, #52]	; 0x34
    16e8:	e00c      	b.n	1704 <xvprintf+0x1cc>
    16ea:	230a      	movs	r3, #10
    16ec:	637b      	str	r3, [r7, #52]	; 0x34
    16ee:	e009      	b.n	1704 <xvprintf+0x1cc>
    16f0:	2310      	movs	r3, #16
    16f2:	637b      	str	r3, [r7, #52]	; 0x34
    16f4:	e006      	b.n	1704 <xvprintf+0x1cc>
    16f6:	231f      	movs	r3, #31
    16f8:	18fb      	adds	r3, r7, r3
    16fa:	781b      	ldrb	r3, [r3, #0]
    16fc:	0018      	movs	r0, r3
    16fe:	f7ff febb 	bl	1478 <xputc>
    1702:	e09d      	b.n	1840 <xvprintf+0x308>
    1704:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1706:	2204      	movs	r2, #4
    1708:	4013      	ands	r3, r2
    170a:	d004      	beq.n	1716 <xvprintf+0x1de>
    170c:	683b      	ldr	r3, [r7, #0]
    170e:	1d1a      	adds	r2, r3, #4
    1710:	603a      	str	r2, [r7, #0]
    1712:	681b      	ldr	r3, [r3, #0]
    1714:	e00d      	b.n	1732 <xvprintf+0x1fa>
    1716:	231e      	movs	r3, #30
    1718:	18fb      	adds	r3, r7, r3
    171a:	781b      	ldrb	r3, [r3, #0]
    171c:	2b44      	cmp	r3, #68	; 0x44
    171e:	d104      	bne.n	172a <xvprintf+0x1f2>
    1720:	683b      	ldr	r3, [r7, #0]
    1722:	1d1a      	adds	r2, r3, #4
    1724:	603a      	str	r2, [r7, #0]
    1726:	681b      	ldr	r3, [r3, #0]
    1728:	e003      	b.n	1732 <xvprintf+0x1fa>
    172a:	683b      	ldr	r3, [r7, #0]
    172c:	1d1a      	adds	r2, r3, #4
    172e:	603a      	str	r2, [r7, #0]
    1730:	681b      	ldr	r3, [r3, #0]
    1732:	623b      	str	r3, [r7, #32]
    1734:	231e      	movs	r3, #30
    1736:	18fb      	adds	r3, r7, r3
    1738:	781b      	ldrb	r3, [r3, #0]
    173a:	2b44      	cmp	r3, #68	; 0x44
    173c:	d109      	bne.n	1752 <xvprintf+0x21a>
    173e:	6a3b      	ldr	r3, [r7, #32]
    1740:	2b00      	cmp	r3, #0
    1742:	da06      	bge.n	1752 <xvprintf+0x21a>
    1744:	6a3b      	ldr	r3, [r7, #32]
    1746:	425b      	negs	r3, r3
    1748:	623b      	str	r3, [r7, #32]
    174a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    174c:	2208      	movs	r2, #8
    174e:	4313      	orrs	r3, r2
    1750:	627b      	str	r3, [r7, #36]	; 0x24
    1752:	2300      	movs	r3, #0
    1754:	633b      	str	r3, [r7, #48]	; 0x30
    1756:	6a3b      	ldr	r3, [r7, #32]
    1758:	6b79      	ldr	r1, [r7, #52]	; 0x34
    175a:	0018      	movs	r0, r3
    175c:	f000 fc5a 	bl	2014 <__aeabi_uidivmod>
    1760:	000b      	movs	r3, r1
    1762:	001a      	movs	r2, r3
    1764:	231e      	movs	r3, #30
    1766:	18fb      	adds	r3, r7, r3
    1768:	701a      	strb	r2, [r3, #0]
    176a:	6b79      	ldr	r1, [r7, #52]	; 0x34
    176c:	6a38      	ldr	r0, [r7, #32]
    176e:	f000 fbcb 	bl	1f08 <__aeabi_uidiv>
    1772:	0003      	movs	r3, r0
    1774:	623b      	str	r3, [r7, #32]
    1776:	231e      	movs	r3, #30
    1778:	18fb      	adds	r3, r7, r3
    177a:	781b      	ldrb	r3, [r3, #0]
    177c:	2b09      	cmp	r3, #9
    177e:	d90e      	bls.n	179e <xvprintf+0x266>
    1780:	231f      	movs	r3, #31
    1782:	18fb      	adds	r3, r7, r3
    1784:	781b      	ldrb	r3, [r3, #0]
    1786:	2b78      	cmp	r3, #120	; 0x78
    1788:	d101      	bne.n	178e <xvprintf+0x256>
    178a:	2327      	movs	r3, #39	; 0x27
    178c:	e000      	b.n	1790 <xvprintf+0x258>
    178e:	2307      	movs	r3, #7
    1790:	221e      	movs	r2, #30
    1792:	18ba      	adds	r2, r7, r2
    1794:	211e      	movs	r1, #30
    1796:	1879      	adds	r1, r7, r1
    1798:	7809      	ldrb	r1, [r1, #0]
    179a:	185b      	adds	r3, r3, r1
    179c:	7013      	strb	r3, [r2, #0]
    179e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17a0:	1c5a      	adds	r2, r3, #1
    17a2:	633a      	str	r2, [r7, #48]	; 0x30
    17a4:	221e      	movs	r2, #30
    17a6:	18ba      	adds	r2, r7, r2
    17a8:	7812      	ldrb	r2, [r2, #0]
    17aa:	3230      	adds	r2, #48	; 0x30
    17ac:	b2d1      	uxtb	r1, r2
    17ae:	2208      	movs	r2, #8
    17b0:	18ba      	adds	r2, r7, r2
    17b2:	54d1      	strb	r1, [r2, r3]
    17b4:	6a3b      	ldr	r3, [r7, #32]
    17b6:	2b00      	cmp	r3, #0
    17b8:	d002      	beq.n	17c0 <xvprintf+0x288>
    17ba:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17bc:	2b0f      	cmp	r3, #15
    17be:	d9ca      	bls.n	1756 <xvprintf+0x21e>
    17c0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    17c2:	2208      	movs	r2, #8
    17c4:	4013      	ands	r3, r2
    17c6:	d006      	beq.n	17d6 <xvprintf+0x29e>
    17c8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17ca:	1c5a      	adds	r2, r3, #1
    17cc:	633a      	str	r2, [r7, #48]	; 0x30
    17ce:	2208      	movs	r2, #8
    17d0:	18ba      	adds	r2, r7, r2
    17d2:	212d      	movs	r1, #45	; 0x2d
    17d4:	54d1      	strb	r1, [r2, r3]
    17d6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17d8:	62fb      	str	r3, [r7, #44]	; 0x2c
    17da:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    17dc:	2201      	movs	r2, #1
    17de:	4013      	ands	r3, r2
    17e0:	d001      	beq.n	17e6 <xvprintf+0x2ae>
    17e2:	2230      	movs	r2, #48	; 0x30
    17e4:	e000      	b.n	17e8 <xvprintf+0x2b0>
    17e6:	2220      	movs	r2, #32
    17e8:	231e      	movs	r3, #30
    17ea:	18fb      	adds	r3, r7, r3
    17ec:	701a      	strb	r2, [r3, #0]
    17ee:	e005      	b.n	17fc <xvprintf+0x2c4>
    17f0:	231e      	movs	r3, #30
    17f2:	18fb      	adds	r3, r7, r3
    17f4:	781b      	ldrb	r3, [r3, #0]
    17f6:	0018      	movs	r0, r3
    17f8:	f7ff fe3e 	bl	1478 <xputc>
    17fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    17fe:	2202      	movs	r2, #2
    1800:	4013      	ands	r3, r2
    1802:	d105      	bne.n	1810 <xvprintf+0x2d8>
    1804:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1806:	1c5a      	adds	r2, r3, #1
    1808:	62fa      	str	r2, [r7, #44]	; 0x2c
    180a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    180c:	4293      	cmp	r3, r2
    180e:	d3ef      	bcc.n	17f0 <xvprintf+0x2b8>
    1810:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1812:	3b01      	subs	r3, #1
    1814:	633b      	str	r3, [r7, #48]	; 0x30
    1816:	2308      	movs	r3, #8
    1818:	18fa      	adds	r2, r7, r3
    181a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    181c:	18d3      	adds	r3, r2, r3
    181e:	781b      	ldrb	r3, [r3, #0]
    1820:	0018      	movs	r0, r3
    1822:	f7ff fe29 	bl	1478 <xputc>
    1826:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1828:	2b00      	cmp	r3, #0
    182a:	d1f1      	bne.n	1810 <xvprintf+0x2d8>
    182c:	e002      	b.n	1834 <xvprintf+0x2fc>
    182e:	2020      	movs	r0, #32
    1830:	f7ff fe22 	bl	1478 <xputc>
    1834:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1836:	1c5a      	adds	r2, r3, #1
    1838:	62fa      	str	r2, [r7, #44]	; 0x2c
    183a:	6aba      	ldr	r2, [r7, #40]	; 0x28
    183c:	4293      	cmp	r3, r2
    183e:	d3f6      	bcc.n	182e <xvprintf+0x2f6>
    1840:	e67f      	b.n	1542 <xvprintf+0xa>
    1842:	46c0      	nop			; (mov r8, r8)
    1844:	e000      	b.n	1848 <xvprintf+0x310>
    1846:	46c0      	nop			; (mov r8, r8)
    1848:	46c0      	nop			; (mov r8, r8)
    184a:	46bd      	mov	sp, r7
    184c:	b00e      	add	sp, #56	; 0x38
    184e:	bd80      	pop	{r7, pc}
    1850:	00002030 	.word	0x00002030

00001854 <xprintf>:
    1854:	b40f      	push	{r0, r1, r2, r3}
    1856:	b580      	push	{r7, lr}
    1858:	b082      	sub	sp, #8
    185a:	af00      	add	r7, sp, #0
    185c:	2314      	movs	r3, #20
    185e:	18fb      	adds	r3, r7, r3
    1860:	607b      	str	r3, [r7, #4]
    1862:	687a      	ldr	r2, [r7, #4]
    1864:	693b      	ldr	r3, [r7, #16]
    1866:	0011      	movs	r1, r2
    1868:	0018      	movs	r0, r3
    186a:	f7ff fe65 	bl	1538 <xvprintf>
    186e:	46c0      	nop			; (mov r8, r8)
    1870:	46bd      	mov	sp, r7
    1872:	b002      	add	sp, #8
    1874:	bc80      	pop	{r7}
    1876:	bc08      	pop	{r3}
    1878:	b004      	add	sp, #16
    187a:	4718      	bx	r3

0000187c <xsprintf>:
    187c:	b40e      	push	{r1, r2, r3}
    187e:	b580      	push	{r7, lr}
    1880:	b085      	sub	sp, #20
    1882:	af00      	add	r7, sp, #0
    1884:	6078      	str	r0, [r7, #4]
    1886:	4b0d      	ldr	r3, [pc, #52]	; (18bc <xsprintf+0x40>)
    1888:	687a      	ldr	r2, [r7, #4]
    188a:	601a      	str	r2, [r3, #0]
    188c:	2320      	movs	r3, #32
    188e:	18fb      	adds	r3, r7, r3
    1890:	60fb      	str	r3, [r7, #12]
    1892:	68fa      	ldr	r2, [r7, #12]
    1894:	69fb      	ldr	r3, [r7, #28]
    1896:	0011      	movs	r1, r2
    1898:	0018      	movs	r0, r3
    189a:	f7ff fe4d 	bl	1538 <xvprintf>
    189e:	4b07      	ldr	r3, [pc, #28]	; (18bc <xsprintf+0x40>)
    18a0:	681b      	ldr	r3, [r3, #0]
    18a2:	2200      	movs	r2, #0
    18a4:	701a      	strb	r2, [r3, #0]
    18a6:	4b05      	ldr	r3, [pc, #20]	; (18bc <xsprintf+0x40>)
    18a8:	2200      	movs	r2, #0
    18aa:	601a      	str	r2, [r3, #0]
    18ac:	46c0      	nop			; (mov r8, r8)
    18ae:	46bd      	mov	sp, r7
    18b0:	b005      	add	sp, #20
    18b2:	bc80      	pop	{r7}
    18b4:	bc08      	pop	{r3}
    18b6:	b003      	add	sp, #12
    18b8:	4718      	bx	r3
    18ba:	46c0      	nop			; (mov r8, r8)
    18bc:	20000580 	.word	0x20000580

000018c0 <xfprintf>:
    18c0:	b40e      	push	{r1, r2, r3}
    18c2:	b580      	push	{r7, lr}
    18c4:	b085      	sub	sp, #20
    18c6:	af00      	add	r7, sp, #0
    18c8:	6078      	str	r0, [r7, #4]
    18ca:	4b0c      	ldr	r3, [pc, #48]	; (18fc <xfprintf+0x3c>)
    18cc:	681b      	ldr	r3, [r3, #0]
    18ce:	60fb      	str	r3, [r7, #12]
    18d0:	4b0a      	ldr	r3, [pc, #40]	; (18fc <xfprintf+0x3c>)
    18d2:	687a      	ldr	r2, [r7, #4]
    18d4:	601a      	str	r2, [r3, #0]
    18d6:	2320      	movs	r3, #32
    18d8:	18fb      	adds	r3, r7, r3
    18da:	60bb      	str	r3, [r7, #8]
    18dc:	68ba      	ldr	r2, [r7, #8]
    18de:	69fb      	ldr	r3, [r7, #28]
    18e0:	0011      	movs	r1, r2
    18e2:	0018      	movs	r0, r3
    18e4:	f7ff fe28 	bl	1538 <xvprintf>
    18e8:	4b04      	ldr	r3, [pc, #16]	; (18fc <xfprintf+0x3c>)
    18ea:	68fa      	ldr	r2, [r7, #12]
    18ec:	601a      	str	r2, [r3, #0]
    18ee:	46c0      	nop			; (mov r8, r8)
    18f0:	46bd      	mov	sp, r7
    18f2:	b005      	add	sp, #20
    18f4:	bc80      	pop	{r7}
    18f6:	bc08      	pop	{r3}
    18f8:	b003      	add	sp, #12
    18fa:	4718      	bx	r3
    18fc:	2000057c 	.word	0x2000057c

00001900 <put_dump>:
    1900:	b580      	push	{r7, lr}
    1902:	b088      	sub	sp, #32
    1904:	af00      	add	r7, sp, #0
    1906:	60f8      	str	r0, [r7, #12]
    1908:	60b9      	str	r1, [r7, #8]
    190a:	607a      	str	r2, [r7, #4]
    190c:	603b      	str	r3, [r7, #0]
    190e:	68ba      	ldr	r2, [r7, #8]
    1910:	4b38      	ldr	r3, [pc, #224]	; (19f4 <put_dump+0xf4>)
    1912:	0011      	movs	r1, r2
    1914:	0018      	movs	r0, r3
    1916:	f7ff ff9d 	bl	1854 <xprintf>
    191a:	683b      	ldr	r3, [r7, #0]
    191c:	2b02      	cmp	r3, #2
    191e:	d03c      	beq.n	199a <put_dump+0x9a>
    1920:	2b04      	cmp	r3, #4
    1922:	d04d      	beq.n	19c0 <put_dump+0xc0>
    1924:	2b01      	cmp	r3, #1
    1926:	d15d      	bne.n	19e4 <put_dump+0xe4>
    1928:	68fb      	ldr	r3, [r7, #12]
    192a:	613b      	str	r3, [r7, #16]
    192c:	2300      	movs	r3, #0
    192e:	61fb      	str	r3, [r7, #28]
    1930:	e00c      	b.n	194c <put_dump+0x4c>
    1932:	69fb      	ldr	r3, [r7, #28]
    1934:	693a      	ldr	r2, [r7, #16]
    1936:	18d3      	adds	r3, r2, r3
    1938:	781b      	ldrb	r3, [r3, #0]
    193a:	001a      	movs	r2, r3
    193c:	4b2e      	ldr	r3, [pc, #184]	; (19f8 <put_dump+0xf8>)
    193e:	0011      	movs	r1, r2
    1940:	0018      	movs	r0, r3
    1942:	f7ff ff87 	bl	1854 <xprintf>
    1946:	69fb      	ldr	r3, [r7, #28]
    1948:	3301      	adds	r3, #1
    194a:	61fb      	str	r3, [r7, #28]
    194c:	69fa      	ldr	r2, [r7, #28]
    194e:	687b      	ldr	r3, [r7, #4]
    1950:	429a      	cmp	r2, r3
    1952:	dbee      	blt.n	1932 <put_dump+0x32>
    1954:	2020      	movs	r0, #32
    1956:	f7ff fd8f 	bl	1478 <xputc>
    195a:	2300      	movs	r3, #0
    195c:	61fb      	str	r3, [r7, #28]
    195e:	e017      	b.n	1990 <put_dump+0x90>
    1960:	69fb      	ldr	r3, [r7, #28]
    1962:	693a      	ldr	r2, [r7, #16]
    1964:	18d3      	adds	r3, r2, r3
    1966:	781b      	ldrb	r3, [r3, #0]
    1968:	2b1f      	cmp	r3, #31
    196a:	d90a      	bls.n	1982 <put_dump+0x82>
    196c:	69fb      	ldr	r3, [r7, #28]
    196e:	693a      	ldr	r2, [r7, #16]
    1970:	18d3      	adds	r3, r2, r3
    1972:	781b      	ldrb	r3, [r3, #0]
    1974:	2b7e      	cmp	r3, #126	; 0x7e
    1976:	d804      	bhi.n	1982 <put_dump+0x82>
    1978:	69fb      	ldr	r3, [r7, #28]
    197a:	693a      	ldr	r2, [r7, #16]
    197c:	18d3      	adds	r3, r2, r3
    197e:	781b      	ldrb	r3, [r3, #0]
    1980:	e000      	b.n	1984 <put_dump+0x84>
    1982:	232e      	movs	r3, #46	; 0x2e
    1984:	0018      	movs	r0, r3
    1986:	f7ff fd77 	bl	1478 <xputc>
    198a:	69fb      	ldr	r3, [r7, #28]
    198c:	3301      	adds	r3, #1
    198e:	61fb      	str	r3, [r7, #28]
    1990:	69fa      	ldr	r2, [r7, #28]
    1992:	687b      	ldr	r3, [r7, #4]
    1994:	429a      	cmp	r2, r3
    1996:	dbe3      	blt.n	1960 <put_dump+0x60>
    1998:	e024      	b.n	19e4 <put_dump+0xe4>
    199a:	68fb      	ldr	r3, [r7, #12]
    199c:	61bb      	str	r3, [r7, #24]
    199e:	69bb      	ldr	r3, [r7, #24]
    19a0:	1c9a      	adds	r2, r3, #2
    19a2:	61ba      	str	r2, [r7, #24]
    19a4:	881b      	ldrh	r3, [r3, #0]
    19a6:	001a      	movs	r2, r3
    19a8:	4b14      	ldr	r3, [pc, #80]	; (19fc <put_dump+0xfc>)
    19aa:	0011      	movs	r1, r2
    19ac:	0018      	movs	r0, r3
    19ae:	f7ff ff51 	bl	1854 <xprintf>
    19b2:	687b      	ldr	r3, [r7, #4]
    19b4:	3b01      	subs	r3, #1
    19b6:	607b      	str	r3, [r7, #4]
    19b8:	687b      	ldr	r3, [r7, #4]
    19ba:	2b00      	cmp	r3, #0
    19bc:	d1ef      	bne.n	199e <put_dump+0x9e>
    19be:	e011      	b.n	19e4 <put_dump+0xe4>
    19c0:	68fb      	ldr	r3, [r7, #12]
    19c2:	617b      	str	r3, [r7, #20]
    19c4:	697b      	ldr	r3, [r7, #20]
    19c6:	1d1a      	adds	r2, r3, #4
    19c8:	617a      	str	r2, [r7, #20]
    19ca:	681a      	ldr	r2, [r3, #0]
    19cc:	4b0c      	ldr	r3, [pc, #48]	; (1a00 <put_dump+0x100>)
    19ce:	0011      	movs	r1, r2
    19d0:	0018      	movs	r0, r3
    19d2:	f7ff ff3f 	bl	1854 <xprintf>
    19d6:	687b      	ldr	r3, [r7, #4]
    19d8:	3b01      	subs	r3, #1
    19da:	607b      	str	r3, [r7, #4]
    19dc:	687b      	ldr	r3, [r7, #4]
    19de:	2b00      	cmp	r3, #0
    19e0:	d1f0      	bne.n	19c4 <put_dump+0xc4>
    19e2:	46c0      	nop			; (mov r8, r8)
    19e4:	200a      	movs	r0, #10
    19e6:	f7ff fd47 	bl	1478 <xputc>
    19ea:	46c0      	nop			; (mov r8, r8)
    19ec:	46bd      	mov	sp, r7
    19ee:	b008      	add	sp, #32
    19f0:	bd80      	pop	{r7, pc}
    19f2:	46c0      	nop			; (mov r8, r8)
    19f4:	0000208c 	.word	0x0000208c
    19f8:	00002094 	.word	0x00002094
    19fc:	0000209c 	.word	0x0000209c
    1a00:	000020a4 	.word	0x000020a4

00001a04 <xgets>:
    1a04:	b580      	push	{r7, lr}
    1a06:	b084      	sub	sp, #16
    1a08:	af00      	add	r7, sp, #0
    1a0a:	6078      	str	r0, [r7, #4]
    1a0c:	6039      	str	r1, [r7, #0]
    1a0e:	4b24      	ldr	r3, [pc, #144]	; (1aa0 <xgets+0x9c>)
    1a10:	681b      	ldr	r3, [r3, #0]
    1a12:	2b00      	cmp	r3, #0
    1a14:	d101      	bne.n	1a1a <xgets+0x16>
    1a16:	2300      	movs	r3, #0
    1a18:	e03e      	b.n	1a98 <xgets+0x94>
    1a1a:	2300      	movs	r3, #0
    1a1c:	60fb      	str	r3, [r7, #12]
    1a1e:	4b20      	ldr	r3, [pc, #128]	; (1aa0 <xgets+0x9c>)
    1a20:	681b      	ldr	r3, [r3, #0]
    1a22:	4798      	blx	r3
    1a24:	0003      	movs	r3, r0
    1a26:	60bb      	str	r3, [r7, #8]
    1a28:	68bb      	ldr	r3, [r7, #8]
    1a2a:	2b00      	cmp	r3, #0
    1a2c:	d101      	bne.n	1a32 <xgets+0x2e>
    1a2e:	2300      	movs	r3, #0
    1a30:	e032      	b.n	1a98 <xgets+0x94>
    1a32:	68bb      	ldr	r3, [r7, #8]
    1a34:	2b0d      	cmp	r3, #13
    1a36:	d025      	beq.n	1a84 <xgets+0x80>
    1a38:	68bb      	ldr	r3, [r7, #8]
    1a3a:	2b08      	cmp	r3, #8
    1a3c:	d10b      	bne.n	1a56 <xgets+0x52>
    1a3e:	68fb      	ldr	r3, [r7, #12]
    1a40:	2b00      	cmp	r3, #0
    1a42:	d008      	beq.n	1a56 <xgets+0x52>
    1a44:	68fb      	ldr	r3, [r7, #12]
    1a46:	3b01      	subs	r3, #1
    1a48:	60fb      	str	r3, [r7, #12]
    1a4a:	68bb      	ldr	r3, [r7, #8]
    1a4c:	b2db      	uxtb	r3, r3
    1a4e:	0018      	movs	r0, r3
    1a50:	f7ff fd12 	bl	1478 <xputc>
    1a54:	e015      	b.n	1a82 <xgets+0x7e>
    1a56:	68bb      	ldr	r3, [r7, #8]
    1a58:	2b1f      	cmp	r3, #31
    1a5a:	dde0      	ble.n	1a1e <xgets+0x1a>
    1a5c:	683b      	ldr	r3, [r7, #0]
    1a5e:	1e5a      	subs	r2, r3, #1
    1a60:	68fb      	ldr	r3, [r7, #12]
    1a62:	429a      	cmp	r2, r3
    1a64:	dddb      	ble.n	1a1e <xgets+0x1a>
    1a66:	68fb      	ldr	r3, [r7, #12]
    1a68:	1c5a      	adds	r2, r3, #1
    1a6a:	60fa      	str	r2, [r7, #12]
    1a6c:	001a      	movs	r2, r3
    1a6e:	687b      	ldr	r3, [r7, #4]
    1a70:	189b      	adds	r3, r3, r2
    1a72:	68ba      	ldr	r2, [r7, #8]
    1a74:	b2d2      	uxtb	r2, r2
    1a76:	701a      	strb	r2, [r3, #0]
    1a78:	68bb      	ldr	r3, [r7, #8]
    1a7a:	b2db      	uxtb	r3, r3
    1a7c:	0018      	movs	r0, r3
    1a7e:	f7ff fcfb 	bl	1478 <xputc>
    1a82:	e7cc      	b.n	1a1e <xgets+0x1a>
    1a84:	46c0      	nop			; (mov r8, r8)
    1a86:	68fb      	ldr	r3, [r7, #12]
    1a88:	687a      	ldr	r2, [r7, #4]
    1a8a:	18d3      	adds	r3, r2, r3
    1a8c:	2200      	movs	r2, #0
    1a8e:	701a      	strb	r2, [r3, #0]
    1a90:	200a      	movs	r0, #10
    1a92:	f7ff fcf1 	bl	1478 <xputc>
    1a96:	2301      	movs	r3, #1
    1a98:	0018      	movs	r0, r3
    1a9a:	46bd      	mov	sp, r7
    1a9c:	b004      	add	sp, #16
    1a9e:	bd80      	pop	{r7, pc}
    1aa0:	20000584 	.word	0x20000584

00001aa4 <xfgets>:
    1aa4:	b580      	push	{r7, lr}
    1aa6:	b086      	sub	sp, #24
    1aa8:	af00      	add	r7, sp, #0
    1aaa:	60f8      	str	r0, [r7, #12]
    1aac:	60b9      	str	r1, [r7, #8]
    1aae:	607a      	str	r2, [r7, #4]
    1ab0:	4b0a      	ldr	r3, [pc, #40]	; (1adc <xfgets+0x38>)
    1ab2:	681b      	ldr	r3, [r3, #0]
    1ab4:	617b      	str	r3, [r7, #20]
    1ab6:	4b09      	ldr	r3, [pc, #36]	; (1adc <xfgets+0x38>)
    1ab8:	68fa      	ldr	r2, [r7, #12]
    1aba:	601a      	str	r2, [r3, #0]
    1abc:	687a      	ldr	r2, [r7, #4]
    1abe:	68bb      	ldr	r3, [r7, #8]
    1ac0:	0011      	movs	r1, r2
    1ac2:	0018      	movs	r0, r3
    1ac4:	f7ff ff9e 	bl	1a04 <xgets>
    1ac8:	0003      	movs	r3, r0
    1aca:	613b      	str	r3, [r7, #16]
    1acc:	4b03      	ldr	r3, [pc, #12]	; (1adc <xfgets+0x38>)
    1ace:	697a      	ldr	r2, [r7, #20]
    1ad0:	601a      	str	r2, [r3, #0]
    1ad2:	693b      	ldr	r3, [r7, #16]
    1ad4:	0018      	movs	r0, r3
    1ad6:	46bd      	mov	sp, r7
    1ad8:	b006      	add	sp, #24
    1ada:	bd80      	pop	{r7, pc}
    1adc:	20000584 	.word	0x20000584

00001ae0 <xatoi>:
    1ae0:	b580      	push	{r7, lr}
    1ae2:	b084      	sub	sp, #16
    1ae4:	af00      	add	r7, sp, #0
    1ae6:	6078      	str	r0, [r7, #4]
    1ae8:	6039      	str	r1, [r7, #0]
    1aea:	2309      	movs	r3, #9
    1aec:	18fb      	adds	r3, r7, r3
    1aee:	2200      	movs	r2, #0
    1af0:	701a      	strb	r2, [r3, #0]
    1af2:	683b      	ldr	r3, [r7, #0]
    1af4:	2200      	movs	r2, #0
    1af6:	601a      	str	r2, [r3, #0]
    1af8:	e004      	b.n	1b04 <xatoi+0x24>
    1afa:	687b      	ldr	r3, [r7, #4]
    1afc:	681b      	ldr	r3, [r3, #0]
    1afe:	1c5a      	adds	r2, r3, #1
    1b00:	687b      	ldr	r3, [r7, #4]
    1b02:	601a      	str	r2, [r3, #0]
    1b04:	687b      	ldr	r3, [r7, #4]
    1b06:	681a      	ldr	r2, [r3, #0]
    1b08:	230b      	movs	r3, #11
    1b0a:	18fb      	adds	r3, r7, r3
    1b0c:	7812      	ldrb	r2, [r2, #0]
    1b0e:	701a      	strb	r2, [r3, #0]
    1b10:	230b      	movs	r3, #11
    1b12:	18fb      	adds	r3, r7, r3
    1b14:	781b      	ldrb	r3, [r3, #0]
    1b16:	2b20      	cmp	r3, #32
    1b18:	d0ef      	beq.n	1afa <xatoi+0x1a>
    1b1a:	230b      	movs	r3, #11
    1b1c:	18fb      	adds	r3, r7, r3
    1b1e:	781b      	ldrb	r3, [r3, #0]
    1b20:	2b2d      	cmp	r3, #45	; 0x2d
    1b22:	d10e      	bne.n	1b42 <xatoi+0x62>
    1b24:	2309      	movs	r3, #9
    1b26:	18fb      	adds	r3, r7, r3
    1b28:	2201      	movs	r2, #1
    1b2a:	701a      	strb	r2, [r3, #0]
    1b2c:	687b      	ldr	r3, [r7, #4]
    1b2e:	681b      	ldr	r3, [r3, #0]
    1b30:	1c5a      	adds	r2, r3, #1
    1b32:	687b      	ldr	r3, [r7, #4]
    1b34:	601a      	str	r2, [r3, #0]
    1b36:	687b      	ldr	r3, [r7, #4]
    1b38:	681a      	ldr	r2, [r3, #0]
    1b3a:	230b      	movs	r3, #11
    1b3c:	18fb      	adds	r3, r7, r3
    1b3e:	7812      	ldrb	r2, [r2, #0]
    1b40:	701a      	strb	r2, [r3, #0]
    1b42:	230b      	movs	r3, #11
    1b44:	18fb      	adds	r3, r7, r3
    1b46:	781b      	ldrb	r3, [r3, #0]
    1b48:	2b30      	cmp	r3, #48	; 0x30
    1b4a:	d149      	bne.n	1be0 <xatoi+0x100>
    1b4c:	687b      	ldr	r3, [r7, #4]
    1b4e:	681b      	ldr	r3, [r3, #0]
    1b50:	1c5a      	adds	r2, r3, #1
    1b52:	687b      	ldr	r3, [r7, #4]
    1b54:	601a      	str	r2, [r3, #0]
    1b56:	687b      	ldr	r3, [r7, #4]
    1b58:	681a      	ldr	r2, [r3, #0]
    1b5a:	230b      	movs	r3, #11
    1b5c:	18fb      	adds	r3, r7, r3
    1b5e:	7812      	ldrb	r2, [r2, #0]
    1b60:	701a      	strb	r2, [r3, #0]
    1b62:	230b      	movs	r3, #11
    1b64:	18fb      	adds	r3, r7, r3
    1b66:	781b      	ldrb	r3, [r3, #0]
    1b68:	2b62      	cmp	r3, #98	; 0x62
    1b6a:	d011      	beq.n	1b90 <xatoi+0xb0>
    1b6c:	2b78      	cmp	r3, #120	; 0x78
    1b6e:	d11f      	bne.n	1bb0 <xatoi+0xd0>
    1b70:	230a      	movs	r3, #10
    1b72:	18fb      	adds	r3, r7, r3
    1b74:	2210      	movs	r2, #16
    1b76:	701a      	strb	r2, [r3, #0]
    1b78:	687b      	ldr	r3, [r7, #4]
    1b7a:	681b      	ldr	r3, [r3, #0]
    1b7c:	1c5a      	adds	r2, r3, #1
    1b7e:	687b      	ldr	r3, [r7, #4]
    1b80:	601a      	str	r2, [r3, #0]
    1b82:	687b      	ldr	r3, [r7, #4]
    1b84:	681a      	ldr	r2, [r3, #0]
    1b86:	230b      	movs	r3, #11
    1b88:	18fb      	adds	r3, r7, r3
    1b8a:	7812      	ldrb	r2, [r2, #0]
    1b8c:	701a      	strb	r2, [r3, #0]
    1b8e:	e037      	b.n	1c00 <xatoi+0x120>
    1b90:	230a      	movs	r3, #10
    1b92:	18fb      	adds	r3, r7, r3
    1b94:	2202      	movs	r2, #2
    1b96:	701a      	strb	r2, [r3, #0]
    1b98:	687b      	ldr	r3, [r7, #4]
    1b9a:	681b      	ldr	r3, [r3, #0]
    1b9c:	1c5a      	adds	r2, r3, #1
    1b9e:	687b      	ldr	r3, [r7, #4]
    1ba0:	601a      	str	r2, [r3, #0]
    1ba2:	687b      	ldr	r3, [r7, #4]
    1ba4:	681a      	ldr	r2, [r3, #0]
    1ba6:	230b      	movs	r3, #11
    1ba8:	18fb      	adds	r3, r7, r3
    1baa:	7812      	ldrb	r2, [r2, #0]
    1bac:	701a      	strb	r2, [r3, #0]
    1bae:	e027      	b.n	1c00 <xatoi+0x120>
    1bb0:	230b      	movs	r3, #11
    1bb2:	18fb      	adds	r3, r7, r3
    1bb4:	781b      	ldrb	r3, [r3, #0]
    1bb6:	2b20      	cmp	r3, #32
    1bb8:	d801      	bhi.n	1bbe <xatoi+0xde>
    1bba:	2301      	movs	r3, #1
    1bbc:	e079      	b.n	1cb2 <xatoi+0x1d2>
    1bbe:	230b      	movs	r3, #11
    1bc0:	18fb      	adds	r3, r7, r3
    1bc2:	781b      	ldrb	r3, [r3, #0]
    1bc4:	2b2f      	cmp	r3, #47	; 0x2f
    1bc6:	d904      	bls.n	1bd2 <xatoi+0xf2>
    1bc8:	230b      	movs	r3, #11
    1bca:	18fb      	adds	r3, r7, r3
    1bcc:	781b      	ldrb	r3, [r3, #0]
    1bce:	2b39      	cmp	r3, #57	; 0x39
    1bd0:	d901      	bls.n	1bd6 <xatoi+0xf6>
    1bd2:	2300      	movs	r3, #0
    1bd4:	e06d      	b.n	1cb2 <xatoi+0x1d2>
    1bd6:	230a      	movs	r3, #10
    1bd8:	18fb      	adds	r3, r7, r3
    1bda:	2208      	movs	r2, #8
    1bdc:	701a      	strb	r2, [r3, #0]
    1bde:	e00f      	b.n	1c00 <xatoi+0x120>
    1be0:	230b      	movs	r3, #11
    1be2:	18fb      	adds	r3, r7, r3
    1be4:	781b      	ldrb	r3, [r3, #0]
    1be6:	2b2f      	cmp	r3, #47	; 0x2f
    1be8:	d904      	bls.n	1bf4 <xatoi+0x114>
    1bea:	230b      	movs	r3, #11
    1bec:	18fb      	adds	r3, r7, r3
    1bee:	781b      	ldrb	r3, [r3, #0]
    1bf0:	2b39      	cmp	r3, #57	; 0x39
    1bf2:	d901      	bls.n	1bf8 <xatoi+0x118>
    1bf4:	2300      	movs	r3, #0
    1bf6:	e05c      	b.n	1cb2 <xatoi+0x1d2>
    1bf8:	230a      	movs	r3, #10
    1bfa:	18fb      	adds	r3, r7, r3
    1bfc:	220a      	movs	r2, #10
    1bfe:	701a      	strb	r2, [r3, #0]
    1c00:	2300      	movs	r3, #0
    1c02:	60fb      	str	r3, [r7, #12]
    1c04:	e044      	b.n	1c90 <xatoi+0x1b0>
    1c06:	230b      	movs	r3, #11
    1c08:	18fb      	adds	r3, r7, r3
    1c0a:	781b      	ldrb	r3, [r3, #0]
    1c0c:	2b60      	cmp	r3, #96	; 0x60
    1c0e:	d906      	bls.n	1c1e <xatoi+0x13e>
    1c10:	230b      	movs	r3, #11
    1c12:	18fb      	adds	r3, r7, r3
    1c14:	220b      	movs	r2, #11
    1c16:	18ba      	adds	r2, r7, r2
    1c18:	7812      	ldrb	r2, [r2, #0]
    1c1a:	3a20      	subs	r2, #32
    1c1c:	701a      	strb	r2, [r3, #0]
    1c1e:	230b      	movs	r3, #11
    1c20:	18fb      	adds	r3, r7, r3
    1c22:	220b      	movs	r2, #11
    1c24:	18ba      	adds	r2, r7, r2
    1c26:	7812      	ldrb	r2, [r2, #0]
    1c28:	3a30      	subs	r2, #48	; 0x30
    1c2a:	701a      	strb	r2, [r3, #0]
    1c2c:	230b      	movs	r3, #11
    1c2e:	18fb      	adds	r3, r7, r3
    1c30:	781b      	ldrb	r3, [r3, #0]
    1c32:	2b10      	cmp	r3, #16
    1c34:	d90d      	bls.n	1c52 <xatoi+0x172>
    1c36:	230b      	movs	r3, #11
    1c38:	18fb      	adds	r3, r7, r3
    1c3a:	220b      	movs	r2, #11
    1c3c:	18ba      	adds	r2, r7, r2
    1c3e:	7812      	ldrb	r2, [r2, #0]
    1c40:	3a07      	subs	r2, #7
    1c42:	701a      	strb	r2, [r3, #0]
    1c44:	230b      	movs	r3, #11
    1c46:	18fb      	adds	r3, r7, r3
    1c48:	781b      	ldrb	r3, [r3, #0]
    1c4a:	2b09      	cmp	r3, #9
    1c4c:	d801      	bhi.n	1c52 <xatoi+0x172>
    1c4e:	2300      	movs	r3, #0
    1c50:	e02f      	b.n	1cb2 <xatoi+0x1d2>
    1c52:	230b      	movs	r3, #11
    1c54:	18fa      	adds	r2, r7, r3
    1c56:	230a      	movs	r3, #10
    1c58:	18fb      	adds	r3, r7, r3
    1c5a:	7812      	ldrb	r2, [r2, #0]
    1c5c:	781b      	ldrb	r3, [r3, #0]
    1c5e:	429a      	cmp	r2, r3
    1c60:	d301      	bcc.n	1c66 <xatoi+0x186>
    1c62:	2300      	movs	r3, #0
    1c64:	e025      	b.n	1cb2 <xatoi+0x1d2>
    1c66:	230a      	movs	r3, #10
    1c68:	18fb      	adds	r3, r7, r3
    1c6a:	781b      	ldrb	r3, [r3, #0]
    1c6c:	68fa      	ldr	r2, [r7, #12]
    1c6e:	435a      	muls	r2, r3
    1c70:	230b      	movs	r3, #11
    1c72:	18fb      	adds	r3, r7, r3
    1c74:	781b      	ldrb	r3, [r3, #0]
    1c76:	18d3      	adds	r3, r2, r3
    1c78:	60fb      	str	r3, [r7, #12]
    1c7a:	687b      	ldr	r3, [r7, #4]
    1c7c:	681b      	ldr	r3, [r3, #0]
    1c7e:	1c5a      	adds	r2, r3, #1
    1c80:	687b      	ldr	r3, [r7, #4]
    1c82:	601a      	str	r2, [r3, #0]
    1c84:	687b      	ldr	r3, [r7, #4]
    1c86:	681a      	ldr	r2, [r3, #0]
    1c88:	230b      	movs	r3, #11
    1c8a:	18fb      	adds	r3, r7, r3
    1c8c:	7812      	ldrb	r2, [r2, #0]
    1c8e:	701a      	strb	r2, [r3, #0]
    1c90:	230b      	movs	r3, #11
    1c92:	18fb      	adds	r3, r7, r3
    1c94:	781b      	ldrb	r3, [r3, #0]
    1c96:	2b20      	cmp	r3, #32
    1c98:	d8b5      	bhi.n	1c06 <xatoi+0x126>
    1c9a:	2309      	movs	r3, #9
    1c9c:	18fb      	adds	r3, r7, r3
    1c9e:	781b      	ldrb	r3, [r3, #0]
    1ca0:	2b00      	cmp	r3, #0
    1ca2:	d002      	beq.n	1caa <xatoi+0x1ca>
    1ca4:	68fb      	ldr	r3, [r7, #12]
    1ca6:	425b      	negs	r3, r3
    1ca8:	60fb      	str	r3, [r7, #12]
    1caa:	68fa      	ldr	r2, [r7, #12]
    1cac:	683b      	ldr	r3, [r7, #0]
    1cae:	601a      	str	r2, [r3, #0]
    1cb0:	2301      	movs	r3, #1
    1cb2:	0018      	movs	r0, r3
    1cb4:	46bd      	mov	sp, r7
    1cb6:	b004      	add	sp, #16
    1cb8:	bd80      	pop	{r7, pc}
    1cba:	46c0      	nop			; (mov r8, r8)

00001cbc <mil_cpy>:
    1cbc:	8802      	ldrh	r2, [r0, #0]
    1cbe:	4b30      	ldr	r3, [pc, #192]	; (1d80 <mil_cpy+0xc4>)
    1cc0:	601a      	str	r2, [r3, #0]
    1cc2:	8842      	ldrh	r2, [r0, #2]
    1cc4:	4b2f      	ldr	r3, [pc, #188]	; (1d84 <mil_cpy+0xc8>)
    1cc6:	601a      	str	r2, [r3, #0]
    1cc8:	8882      	ldrh	r2, [r0, #4]
    1cca:	4b2f      	ldr	r3, [pc, #188]	; (1d88 <mil_cpy+0xcc>)
    1ccc:	601a      	str	r2, [r3, #0]
    1cce:	88c2      	ldrh	r2, [r0, #6]
    1cd0:	4b2e      	ldr	r3, [pc, #184]	; (1d8c <mil_cpy+0xd0>)
    1cd2:	601a      	str	r2, [r3, #0]
    1cd4:	8902      	ldrh	r2, [r0, #8]
    1cd6:	4b2e      	ldr	r3, [pc, #184]	; (1d90 <mil_cpy+0xd4>)
    1cd8:	601a      	str	r2, [r3, #0]
    1cda:	8942      	ldrh	r2, [r0, #10]
    1cdc:	4b2d      	ldr	r3, [pc, #180]	; (1d94 <mil_cpy+0xd8>)
    1cde:	601a      	str	r2, [r3, #0]
    1ce0:	8982      	ldrh	r2, [r0, #12]
    1ce2:	4b2d      	ldr	r3, [pc, #180]	; (1d98 <mil_cpy+0xdc>)
    1ce4:	601a      	str	r2, [r3, #0]
    1ce6:	89c2      	ldrh	r2, [r0, #14]
    1ce8:	4b2c      	ldr	r3, [pc, #176]	; (1d9c <mil_cpy+0xe0>)
    1cea:	601a      	str	r2, [r3, #0]
    1cec:	8a02      	ldrh	r2, [r0, #16]
    1cee:	4b2c      	ldr	r3, [pc, #176]	; (1da0 <mil_cpy+0xe4>)
    1cf0:	601a      	str	r2, [r3, #0]
    1cf2:	8a42      	ldrh	r2, [r0, #18]
    1cf4:	4b2b      	ldr	r3, [pc, #172]	; (1da4 <mil_cpy+0xe8>)
    1cf6:	601a      	str	r2, [r3, #0]
    1cf8:	8a82      	ldrh	r2, [r0, #20]
    1cfa:	4b2b      	ldr	r3, [pc, #172]	; (1da8 <mil_cpy+0xec>)
    1cfc:	601a      	str	r2, [r3, #0]
    1cfe:	8ac2      	ldrh	r2, [r0, #22]
    1d00:	4b2a      	ldr	r3, [pc, #168]	; (1dac <mil_cpy+0xf0>)
    1d02:	601a      	str	r2, [r3, #0]
    1d04:	8b02      	ldrh	r2, [r0, #24]
    1d06:	4b2a      	ldr	r3, [pc, #168]	; (1db0 <mil_cpy+0xf4>)
    1d08:	601a      	str	r2, [r3, #0]
    1d0a:	8b42      	ldrh	r2, [r0, #26]
    1d0c:	4b29      	ldr	r3, [pc, #164]	; (1db4 <mil_cpy+0xf8>)
    1d0e:	601a      	str	r2, [r3, #0]
    1d10:	8b82      	ldrh	r2, [r0, #28]
    1d12:	4b29      	ldr	r3, [pc, #164]	; (1db8 <mil_cpy+0xfc>)
    1d14:	601a      	str	r2, [r3, #0]
    1d16:	8bc2      	ldrh	r2, [r0, #30]
    1d18:	4b28      	ldr	r3, [pc, #160]	; (1dbc <mil_cpy+0x100>)
    1d1a:	601a      	str	r2, [r3, #0]
    1d1c:	8c02      	ldrh	r2, [r0, #32]
    1d1e:	4b28      	ldr	r3, [pc, #160]	; (1dc0 <mil_cpy+0x104>)
    1d20:	601a      	str	r2, [r3, #0]
    1d22:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1d24:	4b27      	ldr	r3, [pc, #156]	; (1dc4 <mil_cpy+0x108>)
    1d26:	601a      	str	r2, [r3, #0]
    1d28:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1d2a:	4b27      	ldr	r3, [pc, #156]	; (1dc8 <mil_cpy+0x10c>)
    1d2c:	601a      	str	r2, [r3, #0]
    1d2e:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1d30:	4b26      	ldr	r3, [pc, #152]	; (1dcc <mil_cpy+0x110>)
    1d32:	601a      	str	r2, [r3, #0]
    1d34:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1d36:	4b26      	ldr	r3, [pc, #152]	; (1dd0 <mil_cpy+0x114>)
    1d38:	601a      	str	r2, [r3, #0]
    1d3a:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1d3c:	4b25      	ldr	r3, [pc, #148]	; (1dd4 <mil_cpy+0x118>)
    1d3e:	601a      	str	r2, [r3, #0]
    1d40:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1d42:	4b25      	ldr	r3, [pc, #148]	; (1dd8 <mil_cpy+0x11c>)
    1d44:	601a      	str	r2, [r3, #0]
    1d46:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1d48:	4b24      	ldr	r3, [pc, #144]	; (1ddc <mil_cpy+0x120>)
    1d4a:	601a      	str	r2, [r3, #0]
    1d4c:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1d4e:	4b24      	ldr	r3, [pc, #144]	; (1de0 <mil_cpy+0x124>)
    1d50:	601a      	str	r2, [r3, #0]
    1d52:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1d54:	4b23      	ldr	r3, [pc, #140]	; (1de4 <mil_cpy+0x128>)
    1d56:	601a      	str	r2, [r3, #0]
    1d58:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1d5a:	4b23      	ldr	r3, [pc, #140]	; (1de8 <mil_cpy+0x12c>)
    1d5c:	601a      	str	r2, [r3, #0]
    1d5e:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1d60:	4b22      	ldr	r3, [pc, #136]	; (1dec <mil_cpy+0x130>)
    1d62:	601a      	str	r2, [r3, #0]
    1d64:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1d66:	4b22      	ldr	r3, [pc, #136]	; (1df0 <mil_cpy+0x134>)
    1d68:	601a      	str	r2, [r3, #0]
    1d6a:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1d6c:	4b21      	ldr	r3, [pc, #132]	; (1df4 <mil_cpy+0x138>)
    1d6e:	601a      	str	r2, [r3, #0]
    1d70:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1d72:	4b21      	ldr	r3, [pc, #132]	; (1df8 <mil_cpy+0x13c>)
    1d74:	601a      	str	r2, [r3, #0]
    1d76:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1d78:	4b20      	ldr	r3, [pc, #128]	; (1dfc <mil_cpy+0x140>)
    1d7a:	601a      	str	r2, [r3, #0]
    1d7c:	4770      	bx	lr
    1d7e:	46c0      	nop			; (mov r8, r8)
    1d80:	40048080 	.word	0x40048080
    1d84:	40048084 	.word	0x40048084
    1d88:	40048088 	.word	0x40048088
    1d8c:	4004808c 	.word	0x4004808c
    1d90:	40048090 	.word	0x40048090
    1d94:	40048094 	.word	0x40048094
    1d98:	40048098 	.word	0x40048098
    1d9c:	4004809c 	.word	0x4004809c
    1da0:	400480a0 	.word	0x400480a0
    1da4:	400480a4 	.word	0x400480a4
    1da8:	400480a8 	.word	0x400480a8
    1dac:	400480ac 	.word	0x400480ac
    1db0:	400480b0 	.word	0x400480b0
    1db4:	400480b4 	.word	0x400480b4
    1db8:	400480b8 	.word	0x400480b8
    1dbc:	400480bc 	.word	0x400480bc
    1dc0:	400480c0 	.word	0x400480c0
    1dc4:	400480c4 	.word	0x400480c4
    1dc8:	400480c8 	.word	0x400480c8
    1dcc:	400480cc 	.word	0x400480cc
    1dd0:	400480d0 	.word	0x400480d0
    1dd4:	400480d4 	.word	0x400480d4
    1dd8:	400480d8 	.word	0x400480d8
    1ddc:	400480dc 	.word	0x400480dc
    1de0:	400480e0 	.word	0x400480e0
    1de4:	400480e4 	.word	0x400480e4
    1de8:	400480e8 	.word	0x400480e8
    1dec:	400480ec 	.word	0x400480ec
    1df0:	400480f0 	.word	0x400480f0
    1df4:	400480f4 	.word	0x400480f4
    1df8:	400480f8 	.word	0x400480f8
    1dfc:	400480fc 	.word	0x400480fc

00001e00 <adc_init>:
    1e00:	b580      	push	{r7, lr}
    1e02:	af00      	add	r7, sp, #0
    1e04:	4b06      	ldr	r3, [pc, #24]	; (1e20 <adc_init+0x20>)
    1e06:	4a06      	ldr	r2, [pc, #24]	; (1e20 <adc_init+0x20>)
    1e08:	69d2      	ldr	r2, [r2, #28]
    1e0a:	2180      	movs	r1, #128	; 0x80
    1e0c:	0289      	lsls	r1, r1, #10
    1e0e:	430a      	orrs	r2, r1
    1e10:	61da      	str	r2, [r3, #28]
    1e12:	4b03      	ldr	r3, [pc, #12]	; (1e20 <adc_init+0x20>)
    1e14:	4a03      	ldr	r2, [pc, #12]	; (1e24 <adc_init+0x24>)
    1e16:	615a      	str	r2, [r3, #20]
    1e18:	46c0      	nop			; (mov r8, r8)
    1e1a:	46bd      	mov	sp, r7
    1e1c:	bd80      	pop	{r7, pc}
    1e1e:	46c0      	nop			; (mov r8, r8)
    1e20:	40020000 	.word	0x40020000
    1e24:	00002020 	.word	0x00002020

00001e28 <adc_update>:
    1e28:	b580      	push	{r7, lr}
    1e2a:	b082      	sub	sp, #8
    1e2c:	af00      	add	r7, sp, #0
    1e2e:	6078      	str	r0, [r7, #4]
    1e30:	687b      	ldr	r3, [r7, #4]
    1e32:	2207      	movs	r2, #7
    1e34:	4013      	ands	r3, r2
    1e36:	607b      	str	r3, [r7, #4]
    1e38:	4b05      	ldr	r3, [pc, #20]	; (1e50 <adc_update+0x28>)
    1e3a:	687a      	ldr	r2, [r7, #4]
    1e3c:	0112      	lsls	r2, r2, #4
    1e3e:	3207      	adds	r2, #7
    1e40:	601a      	str	r2, [r3, #0]
    1e42:	4b03      	ldr	r3, [pc, #12]	; (1e50 <adc_update+0x28>)
    1e44:	699b      	ldr	r3, [r3, #24]
    1e46:	0018      	movs	r0, r3
    1e48:	46bd      	mov	sp, r7
    1e4a:	b002      	add	sp, #8
    1e4c:	bd80      	pop	{r7, pc}
    1e4e:	46c0      	nop			; (mov r8, r8)
    1e50:	40088000 	.word	0x40088000

00001e54 <adc_dma_init>:
    1e54:	b580      	push	{r7, lr}
    1e56:	af00      	add	r7, sp, #0
    1e58:	f7ff ffd2 	bl	1e00 <adc_init>
    1e5c:	46c0      	nop			; (mov r8, r8)
    1e5e:	46bd      	mov	sp, r7
    1e60:	bd80      	pop	{r7, pc}
    1e62:	46c0      	nop			; (mov r8, r8)

00001e64 <adc_dma_start>:
    1e64:	b580      	push	{r7, lr}
    1e66:	af00      	add	r7, sp, #0
    1e68:	4b04      	ldr	r3, [pc, #16]	; (1e7c <adc_dma_start+0x18>)
    1e6a:	4a04      	ldr	r2, [pc, #16]	; (1e7c <adc_dma_start+0x18>)
    1e6c:	6812      	ldr	r2, [r2, #0]
    1e6e:	2102      	movs	r1, #2
    1e70:	430a      	orrs	r2, r1
    1e72:	601a      	str	r2, [r3, #0]
    1e74:	46c0      	nop			; (mov r8, r8)
    1e76:	46bd      	mov	sp, r7
    1e78:	bd80      	pop	{r7, pc}
    1e7a:	46c0      	nop			; (mov r8, r8)
    1e7c:	40088000 	.word	0x40088000

00001e80 <adc_dma_wait>:
    1e80:	b580      	push	{r7, lr}
    1e82:	af00      	add	r7, sp, #0
    1e84:	46c0      	nop			; (mov r8, r8)
    1e86:	4a08      	ldr	r2, [pc, #32]	; (1ea8 <adc_dma_wait+0x28>)
    1e88:	23f4      	movs	r3, #244	; 0xf4
    1e8a:	005b      	lsls	r3, r3, #1
    1e8c:	58d3      	ldr	r3, [r2, r3]
    1e8e:	2207      	movs	r2, #7
    1e90:	4013      	ands	r3, r2
    1e92:	d1f8      	bne.n	1e86 <adc_dma_wait+0x6>
    1e94:	4b05      	ldr	r3, [pc, #20]	; (1eac <adc_dma_wait+0x2c>)
    1e96:	4a05      	ldr	r2, [pc, #20]	; (1eac <adc_dma_wait+0x2c>)
    1e98:	6812      	ldr	r2, [r2, #0]
    1e9a:	2108      	movs	r1, #8
    1e9c:	438a      	bics	r2, r1
    1e9e:	601a      	str	r2, [r3, #0]
    1ea0:	46c0      	nop			; (mov r8, r8)
    1ea2:	46bd      	mov	sp, r7
    1ea4:	bd80      	pop	{r7, pc}
    1ea6:	46c0      	nop			; (mov r8, r8)
    1ea8:	20100000 	.word	0x20100000
    1eac:	40088000 	.word	0x40088000

00001eb0 <adc_dma_check>:
    1eb0:	b580      	push	{r7, lr}
    1eb2:	af00      	add	r7, sp, #0
    1eb4:	4a09      	ldr	r2, [pc, #36]	; (1edc <adc_dma_check+0x2c>)
    1eb6:	23f4      	movs	r3, #244	; 0xf4
    1eb8:	005b      	lsls	r3, r3, #1
    1eba:	58d3      	ldr	r3, [r2, r3]
    1ebc:	2207      	movs	r2, #7
    1ebe:	4013      	ands	r3, r2
    1ec0:	d001      	beq.n	1ec6 <adc_dma_check+0x16>
    1ec2:	2300      	movs	r3, #0
    1ec4:	e006      	b.n	1ed4 <adc_dma_check+0x24>
    1ec6:	4b06      	ldr	r3, [pc, #24]	; (1ee0 <adc_dma_check+0x30>)
    1ec8:	4a05      	ldr	r2, [pc, #20]	; (1ee0 <adc_dma_check+0x30>)
    1eca:	6812      	ldr	r2, [r2, #0]
    1ecc:	2108      	movs	r1, #8
    1ece:	438a      	bics	r2, r1
    1ed0:	601a      	str	r2, [r3, #0]
    1ed2:	2301      	movs	r3, #1
    1ed4:	0018      	movs	r0, r3
    1ed6:	46bd      	mov	sp, r7
    1ed8:	bd80      	pop	{r7, pc}
    1eda:	46c0      	nop			; (mov r8, r8)
    1edc:	20100000 	.word	0x20100000
    1ee0:	40088000 	.word	0x40088000

00001ee4 <DMA_Handler>:
    1ee4:	b580      	push	{r7, lr}
    1ee6:	af00      	add	r7, sp, #0
    1ee8:	4b05      	ldr	r3, [pc, #20]	; (1f00 <DMA_Handler+0x1c>)
    1eea:	2200      	movs	r2, #0
    1eec:	601a      	str	r2, [r3, #0]
    1eee:	4b05      	ldr	r3, [pc, #20]	; (1f04 <DMA_Handler+0x20>)
    1ef0:	4a04      	ldr	r2, [pc, #16]	; (1f04 <DMA_Handler+0x20>)
    1ef2:	6812      	ldr	r2, [r2, #0]
    1ef4:	2101      	movs	r1, #1
    1ef6:	404a      	eors	r2, r1
    1ef8:	601a      	str	r2, [r3, #0]
    1efa:	46c0      	nop			; (mov r8, r8)
    1efc:	46bd      	mov	sp, r7
    1efe:	bd80      	pop	{r7, pc}
    1f00:	40088000 	.word	0x40088000
    1f04:	400c8000 	.word	0x400c8000

00001f08 <__aeabi_uidiv>:
    1f08:	2200      	movs	r2, #0
    1f0a:	0843      	lsrs	r3, r0, #1
    1f0c:	428b      	cmp	r3, r1
    1f0e:	d374      	bcc.n	1ffa <__aeabi_uidiv+0xf2>
    1f10:	0903      	lsrs	r3, r0, #4
    1f12:	428b      	cmp	r3, r1
    1f14:	d35f      	bcc.n	1fd6 <__aeabi_uidiv+0xce>
    1f16:	0a03      	lsrs	r3, r0, #8
    1f18:	428b      	cmp	r3, r1
    1f1a:	d344      	bcc.n	1fa6 <__aeabi_uidiv+0x9e>
    1f1c:	0b03      	lsrs	r3, r0, #12
    1f1e:	428b      	cmp	r3, r1
    1f20:	d328      	bcc.n	1f74 <__aeabi_uidiv+0x6c>
    1f22:	0c03      	lsrs	r3, r0, #16
    1f24:	428b      	cmp	r3, r1
    1f26:	d30d      	bcc.n	1f44 <__aeabi_uidiv+0x3c>
    1f28:	22ff      	movs	r2, #255	; 0xff
    1f2a:	0209      	lsls	r1, r1, #8
    1f2c:	ba12      	rev	r2, r2
    1f2e:	0c03      	lsrs	r3, r0, #16
    1f30:	428b      	cmp	r3, r1
    1f32:	d302      	bcc.n	1f3a <__aeabi_uidiv+0x32>
    1f34:	1212      	asrs	r2, r2, #8
    1f36:	0209      	lsls	r1, r1, #8
    1f38:	d065      	beq.n	2006 <__aeabi_uidiv+0xfe>
    1f3a:	0b03      	lsrs	r3, r0, #12
    1f3c:	428b      	cmp	r3, r1
    1f3e:	d319      	bcc.n	1f74 <__aeabi_uidiv+0x6c>
    1f40:	e000      	b.n	1f44 <__aeabi_uidiv+0x3c>
    1f42:	0a09      	lsrs	r1, r1, #8
    1f44:	0bc3      	lsrs	r3, r0, #15
    1f46:	428b      	cmp	r3, r1
    1f48:	d301      	bcc.n	1f4e <__aeabi_uidiv+0x46>
    1f4a:	03cb      	lsls	r3, r1, #15
    1f4c:	1ac0      	subs	r0, r0, r3
    1f4e:	4152      	adcs	r2, r2
    1f50:	0b83      	lsrs	r3, r0, #14
    1f52:	428b      	cmp	r3, r1
    1f54:	d301      	bcc.n	1f5a <__aeabi_uidiv+0x52>
    1f56:	038b      	lsls	r3, r1, #14
    1f58:	1ac0      	subs	r0, r0, r3
    1f5a:	4152      	adcs	r2, r2
    1f5c:	0b43      	lsrs	r3, r0, #13
    1f5e:	428b      	cmp	r3, r1
    1f60:	d301      	bcc.n	1f66 <__aeabi_uidiv+0x5e>
    1f62:	034b      	lsls	r3, r1, #13
    1f64:	1ac0      	subs	r0, r0, r3
    1f66:	4152      	adcs	r2, r2
    1f68:	0b03      	lsrs	r3, r0, #12
    1f6a:	428b      	cmp	r3, r1
    1f6c:	d301      	bcc.n	1f72 <__aeabi_uidiv+0x6a>
    1f6e:	030b      	lsls	r3, r1, #12
    1f70:	1ac0      	subs	r0, r0, r3
    1f72:	4152      	adcs	r2, r2
    1f74:	0ac3      	lsrs	r3, r0, #11
    1f76:	428b      	cmp	r3, r1
    1f78:	d301      	bcc.n	1f7e <__aeabi_uidiv+0x76>
    1f7a:	02cb      	lsls	r3, r1, #11
    1f7c:	1ac0      	subs	r0, r0, r3
    1f7e:	4152      	adcs	r2, r2
    1f80:	0a83      	lsrs	r3, r0, #10
    1f82:	428b      	cmp	r3, r1
    1f84:	d301      	bcc.n	1f8a <__aeabi_uidiv+0x82>
    1f86:	028b      	lsls	r3, r1, #10
    1f88:	1ac0      	subs	r0, r0, r3
    1f8a:	4152      	adcs	r2, r2
    1f8c:	0a43      	lsrs	r3, r0, #9
    1f8e:	428b      	cmp	r3, r1
    1f90:	d301      	bcc.n	1f96 <__aeabi_uidiv+0x8e>
    1f92:	024b      	lsls	r3, r1, #9
    1f94:	1ac0      	subs	r0, r0, r3
    1f96:	4152      	adcs	r2, r2
    1f98:	0a03      	lsrs	r3, r0, #8
    1f9a:	428b      	cmp	r3, r1
    1f9c:	d301      	bcc.n	1fa2 <__aeabi_uidiv+0x9a>
    1f9e:	020b      	lsls	r3, r1, #8
    1fa0:	1ac0      	subs	r0, r0, r3
    1fa2:	4152      	adcs	r2, r2
    1fa4:	d2cd      	bcs.n	1f42 <__aeabi_uidiv+0x3a>
    1fa6:	09c3      	lsrs	r3, r0, #7
    1fa8:	428b      	cmp	r3, r1
    1faa:	d301      	bcc.n	1fb0 <__aeabi_uidiv+0xa8>
    1fac:	01cb      	lsls	r3, r1, #7
    1fae:	1ac0      	subs	r0, r0, r3
    1fb0:	4152      	adcs	r2, r2
    1fb2:	0983      	lsrs	r3, r0, #6
    1fb4:	428b      	cmp	r3, r1
    1fb6:	d301      	bcc.n	1fbc <__aeabi_uidiv+0xb4>
    1fb8:	018b      	lsls	r3, r1, #6
    1fba:	1ac0      	subs	r0, r0, r3
    1fbc:	4152      	adcs	r2, r2
    1fbe:	0943      	lsrs	r3, r0, #5
    1fc0:	428b      	cmp	r3, r1
    1fc2:	d301      	bcc.n	1fc8 <__aeabi_uidiv+0xc0>
    1fc4:	014b      	lsls	r3, r1, #5
    1fc6:	1ac0      	subs	r0, r0, r3
    1fc8:	4152      	adcs	r2, r2
    1fca:	0903      	lsrs	r3, r0, #4
    1fcc:	428b      	cmp	r3, r1
    1fce:	d301      	bcc.n	1fd4 <__aeabi_uidiv+0xcc>
    1fd0:	010b      	lsls	r3, r1, #4
    1fd2:	1ac0      	subs	r0, r0, r3
    1fd4:	4152      	adcs	r2, r2
    1fd6:	08c3      	lsrs	r3, r0, #3
    1fd8:	428b      	cmp	r3, r1
    1fda:	d301      	bcc.n	1fe0 <__aeabi_uidiv+0xd8>
    1fdc:	00cb      	lsls	r3, r1, #3
    1fde:	1ac0      	subs	r0, r0, r3
    1fe0:	4152      	adcs	r2, r2
    1fe2:	0883      	lsrs	r3, r0, #2
    1fe4:	428b      	cmp	r3, r1
    1fe6:	d301      	bcc.n	1fec <__aeabi_uidiv+0xe4>
    1fe8:	008b      	lsls	r3, r1, #2
    1fea:	1ac0      	subs	r0, r0, r3
    1fec:	4152      	adcs	r2, r2
    1fee:	0843      	lsrs	r3, r0, #1
    1ff0:	428b      	cmp	r3, r1
    1ff2:	d301      	bcc.n	1ff8 <__aeabi_uidiv+0xf0>
    1ff4:	004b      	lsls	r3, r1, #1
    1ff6:	1ac0      	subs	r0, r0, r3
    1ff8:	4152      	adcs	r2, r2
    1ffa:	1a41      	subs	r1, r0, r1
    1ffc:	d200      	bcs.n	2000 <__aeabi_uidiv+0xf8>
    1ffe:	4601      	mov	r1, r0
    2000:	4152      	adcs	r2, r2
    2002:	4610      	mov	r0, r2
    2004:	4770      	bx	lr
    2006:	e7ff      	b.n	2008 <__aeabi_uidiv+0x100>
    2008:	b501      	push	{r0, lr}
    200a:	2000      	movs	r0, #0
    200c:	f000 f806 	bl	201c <__aeabi_idiv0>
    2010:	bd02      	pop	{r1, pc}
    2012:	46c0      	nop			; (mov r8, r8)

00002014 <__aeabi_uidivmod>:
    2014:	2900      	cmp	r1, #0
    2016:	d0f7      	beq.n	2008 <__aeabi_uidiv+0x100>
    2018:	e776      	b.n	1f08 <__aeabi_uidiv>
    201a:	4770      	bx	lr

0000201c <__aeabi_idiv0>:
    201c:	4770      	bx	lr
    201e:	46c0      	nop			; (mov r8, r8)
    2020:	6c6c6568 	.word	0x6c6c6568
    2024:	6f77206f 	.word	0x6f77206f
    2028:	0d646c72 	.word	0x0d646c72
    202c:	0000000a 	.word	0x0000000a
    2030:	000016de 	.word	0x000016de
    2034:	000016cc 	.word	0x000016cc
    2038:	000016ea 	.word	0x000016ea
    203c:	000016f6 	.word	0x000016f6
    2040:	000016f6 	.word	0x000016f6
    2044:	000016f6 	.word	0x000016f6
    2048:	000016f6 	.word	0x000016f6
    204c:	000016f6 	.word	0x000016f6
    2050:	000016f6 	.word	0x000016f6
    2054:	000016f6 	.word	0x000016f6
    2058:	000016f6 	.word	0x000016f6
    205c:	000016f6 	.word	0x000016f6
    2060:	000016f6 	.word	0x000016f6
    2064:	000016e4 	.word	0x000016e4
    2068:	000016f6 	.word	0x000016f6
    206c:	000016f6 	.word	0x000016f6
    2070:	000016f6 	.word	0x000016f6
    2074:	00001670 	.word	0x00001670
    2078:	000016f6 	.word	0x000016f6
    207c:	000016ea 	.word	0x000016ea
    2080:	000016f6 	.word	0x000016f6
    2084:	000016f6 	.word	0x000016f6
    2088:	000016f0 	.word	0x000016f0
    208c:	6c383025 	.word	0x6c383025
    2090:	00002058 	.word	0x00002058
    2094:	32302520 	.word	0x32302520
    2098:	00000058 	.word	0x00000058
    209c:	34302520 	.word	0x34302520
    20a0:	00000058 	.word	0x00000058
    20a4:	38302520 	.word	0x38302520
    20a8:	0000584c 	.word	0x0000584c
