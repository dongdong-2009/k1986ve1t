
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 55 11 00 00 b5 11 00 00 b5 11 00 00     ... U...........
	...
      2c:	b5 11 00 00 00 00 00 00 00 00 00 00 b5 11 00 00     ................
      3c:	c1 0d 00 00 b5 11 00 00 41 0e 00 00 b5 11 00 00     ........A.......
      4c:	b5 11 00 00 b5 11 00 00 fd 1e 00 00 09 14 00 00     ................
      5c:	b5 11 00 00 b5 11 00 00 b5 11 00 00 b5 11 00 00     ................
      6c:	b5 11 00 00 b5 11 00 00 d9 0d 00 00 b5 11 00 00     ................
      7c:	b5 11 00 00 b5 11 00 00 b5 11 00 00 b5 11 00 00     ................
      8c:	b5 11 00 00 b5 11 00 00 b5 11 00 00 b5 11 00 00     ................
      9c:	b5 11 00 00 b5 11 00 00 00 00 00 00 00 00 00 00     ................
      ac:	b5 11 00 00 b5 11 00 00 b5 11 00 00 b5 11 00 00     ................
      bc:	b5 11 00 00                                         ....

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
     750:	4b13      	ldr	r3, [pc, #76]	; (7a0 <update_status+0x54>)
     752:	691b      	ldr	r3, [r3, #16]
     754:	b29a      	uxth	r2, r3
     756:	4b13      	ldr	r3, [pc, #76]	; (7a4 <update_status+0x58>)
     758:	801a      	strh	r2, [r3, #0]
     75a:	4b11      	ldr	r3, [pc, #68]	; (7a0 <update_status+0x54>)
     75c:	695b      	ldr	r3, [r3, #20]
     75e:	b29a      	uxth	r2, r3
     760:	4b0f      	ldr	r3, [pc, #60]	; (7a0 <update_status+0x54>)
     762:	695b      	ldr	r3, [r3, #20]
     764:	089b      	lsrs	r3, r3, #2
     766:	b29b      	uxth	r3, r3
     768:	18d3      	adds	r3, r2, r3
     76a:	b29a      	uxth	r2, r3
     76c:	4b0e      	ldr	r3, [pc, #56]	; (7a8 <update_status+0x5c>)
     76e:	801a      	strh	r2, [r3, #0]
     770:	4b0b      	ldr	r3, [pc, #44]	; (7a0 <update_status+0x54>)
     772:	699b      	ldr	r3, [r3, #24]
     774:	b29a      	uxth	r2, r3
     776:	4b0a      	ldr	r3, [pc, #40]	; (7a0 <update_status+0x54>)
     778:	699b      	ldr	r3, [r3, #24]
     77a:	089b      	lsrs	r3, r3, #2
     77c:	b29b      	uxth	r3, r3
     77e:	18d3      	adds	r3, r2, r3
     780:	b29a      	uxth	r2, r3
     782:	4b0a      	ldr	r3, [pc, #40]	; (7ac <update_status+0x60>)
     784:	801a      	strh	r2, [r3, #0]
     786:	4b0a      	ldr	r3, [pc, #40]	; (7b0 <update_status+0x64>)
     788:	4a07      	ldr	r2, [pc, #28]	; (7a8 <update_status+0x5c>)
     78a:	8812      	ldrh	r2, [r2, #0]
     78c:	09d2      	lsrs	r2, r2, #7
     78e:	b292      	uxth	r2, r2
     790:	0011      	movs	r1, r2
     792:	221f      	movs	r2, #31
     794:	400a      	ands	r2, r1
     796:	601a      	str	r2, [r3, #0]
     798:	46c0      	nop			; (mov r8, r8)
     79a:	46bd      	mov	sp, r7
     79c:	bd80      	pop	{r7, pc}
     79e:	46c0      	nop			; (mov r8, r8)
     7a0:	200000f0 	.word	0x200000f0
     7a4:	200000e8 	.word	0x200000e8
     7a8:	200000ea 	.word	0x200000ea
     7ac:	200000ec 	.word	0x200000ec
     7b0:	400e8000 	.word	0x400e8000

000007b4 <main>:
     7b4:	b590      	push	{r4, r7, lr}
     7b6:	b0a7      	sub	sp, #156	; 0x9c
     7b8:	af00      	add	r7, sp, #0
     7ba:	2380      	movs	r3, #128	; 0x80
     7bc:	18fb      	adds	r3, r7, r3
     7be:	4a24      	ldr	r2, [pc, #144]	; (850 <main+0x9c>)
     7c0:	ca13      	ldmia	r2!, {r0, r1, r4}
     7c2:	c313      	stmia	r3!, {r0, r1, r4}
     7c4:	8812      	ldrh	r2, [r2, #0]
     7c6:	801a      	strh	r2, [r3, #0]
     7c8:	f000 fac6 	bl	d58 <SystemInit>
     7cc:	4b21      	ldr	r3, [pc, #132]	; (854 <main+0xa0>)
     7ce:	2200      	movs	r2, #0
     7d0:	601a      	str	r2, [r3, #0]
     7d2:	2300      	movs	r3, #0
     7d4:	2294      	movs	r2, #148	; 0x94
     7d6:	18ba      	adds	r2, r7, r2
     7d8:	6013      	str	r3, [r2, #0]
     7da:	4b1f      	ldr	r3, [pc, #124]	; (858 <main+0xa4>)
     7dc:	2200      	movs	r2, #0
     7de:	601a      	str	r2, [r3, #0]
     7e0:	4b1e      	ldr	r3, [pc, #120]	; (85c <main+0xa8>)
     7e2:	4a1f      	ldr	r2, [pc, #124]	; (860 <main+0xac>)
     7e4:	601a      	str	r2, [r3, #0]
     7e6:	4b1d      	ldr	r3, [pc, #116]	; (85c <main+0xa8>)
     7e8:	4a1e      	ldr	r2, [pc, #120]	; (864 <main+0xb0>)
     7ea:	605a      	str	r2, [r3, #4]
     7ec:	4b1e      	ldr	r3, [pc, #120]	; (868 <main+0xb4>)
     7ee:	2200      	movs	r2, #0
     7f0:	601a      	str	r2, [r3, #0]
     7f2:	4b1e      	ldr	r3, [pc, #120]	; (86c <main+0xb8>)
     7f4:	681b      	ldr	r3, [r3, #0]
     7f6:	2b00      	cmp	r3, #0
     7f8:	d021      	beq.n	83e <main+0x8a>
     7fa:	4b1d      	ldr	r3, [pc, #116]	; (870 <main+0xbc>)
     7fc:	2202      	movs	r2, #2
     7fe:	5e9b      	ldrsh	r3, [r3, r2]
     800:	2b00      	cmp	r3, #0
     802:	da06      	bge.n	812 <main+0x5e>
     804:	4b1a      	ldr	r3, [pc, #104]	; (870 <main+0xbc>)
     806:	2202      	movs	r2, #2
     808:	5e9b      	ldrsh	r3, [r3, r2]
     80a:	4a1a      	ldr	r2, [pc, #104]	; (874 <main+0xc0>)
     80c:	4694      	mov	ip, r2
     80e:	4463      	add	r3, ip
     810:	e002      	b.n	818 <main+0x64>
     812:	4b17      	ldr	r3, [pc, #92]	; (870 <main+0xbc>)
     814:	2202      	movs	r2, #2
     816:	5e9b      	ldrsh	r3, [r3, r2]
     818:	2290      	movs	r2, #144	; 0x90
     81a:	18ba      	adds	r2, r7, r2
     81c:	6013      	str	r3, [r2, #0]
     81e:	4b16      	ldr	r3, [pc, #88]	; (878 <main+0xc4>)
     820:	2290      	movs	r2, #144	; 0x90
     822:	18ba      	adds	r2, r7, r2
     824:	6812      	ldr	r2, [r2, #0]
     826:	2180      	movs	r1, #128	; 0x80
     828:	0109      	lsls	r1, r1, #4
     82a:	468c      	mov	ip, r1
     82c:	4462      	add	r2, ip
     82e:	605a      	str	r2, [r3, #4]
     830:	4b0f      	ldr	r3, [pc, #60]	; (870 <main+0xbc>)
     832:	0018      	movs	r0, r3
     834:	f7ff fea6 	bl	584 <send_command>
     838:	4b0c      	ldr	r3, [pc, #48]	; (86c <main+0xb8>)
     83a:	2200      	movs	r2, #0
     83c:	601a      	str	r2, [r3, #0]
     83e:	4b0f      	ldr	r3, [pc, #60]	; (87c <main+0xc8>)
     840:	681b      	ldr	r3, [r3, #0]
     842:	0018      	movs	r0, r3
     844:	f7ff fd86 	bl	354 <update_telemetry>
     848:	f7ff ff80 	bl	74c <update_status>
     84c:	e7d1      	b.n	7f2 <main+0x3e>
     84e:	46c0      	nop			; (mov r8, r8)
     850:	00002038 	.word	0x00002038
     854:	20000110 	.word	0x20000110
     858:	20000114 	.word	0x20000114
     85c:	200000d0 	.word	0x200000d0
     860:	20000044 	.word	0x20000044
     864:	20000084 	.word	0x20000084
     868:	200000d8 	.word	0x200000d8
     86c:	2000011c 	.word	0x2000011c
     870:	200000c4 	.word	0x200000c4
     874:	ffff0000 	.word	0xffff0000
     878:	40090000 	.word	0x40090000
     87c:	20000118 	.word	0x20000118

00000880 <PortConfig>:
     880:	b580      	push	{r7, lr}
     882:	af00      	add	r7, sp, #0
     884:	4b6e      	ldr	r3, [pc, #440]	; (a40 <PortConfig+0x1c0>)
     886:	4a6e      	ldr	r2, [pc, #440]	; (a40 <PortConfig+0x1c0>)
     888:	69d2      	ldr	r2, [r2, #28]
     88a:	2180      	movs	r1, #128	; 0x80
     88c:	0449      	lsls	r1, r1, #17
     88e:	430a      	orrs	r2, r1
     890:	61da      	str	r2, [r3, #28]
     892:	4b6c      	ldr	r3, [pc, #432]	; (a44 <PortConfig+0x1c4>)
     894:	4a6b      	ldr	r2, [pc, #428]	; (a44 <PortConfig+0x1c4>)
     896:	68d2      	ldr	r2, [r2, #12]
     898:	496b      	ldr	r1, [pc, #428]	; (a48 <PortConfig+0x1c8>)
     89a:	400a      	ands	r2, r1
     89c:	60da      	str	r2, [r3, #12]
     89e:	4b68      	ldr	r3, [pc, #416]	; (a40 <PortConfig+0x1c0>)
     8a0:	4a67      	ldr	r2, [pc, #412]	; (a40 <PortConfig+0x1c0>)
     8a2:	69d2      	ldr	r2, [r2, #28]
     8a4:	2180      	movs	r1, #128	; 0x80
     8a6:	0409      	lsls	r1, r1, #16
     8a8:	430a      	orrs	r2, r1
     8aa:	61da      	str	r2, [r3, #28]
     8ac:	4b64      	ldr	r3, [pc, #400]	; (a40 <PortConfig+0x1c0>)
     8ae:	4a64      	ldr	r2, [pc, #400]	; (a40 <PortConfig+0x1c0>)
     8b0:	69d2      	ldr	r2, [r2, #28]
     8b2:	2180      	movs	r1, #128	; 0x80
     8b4:	0449      	lsls	r1, r1, #17
     8b6:	430a      	orrs	r2, r1
     8b8:	61da      	str	r2, [r3, #28]
     8ba:	4b64      	ldr	r3, [pc, #400]	; (a4c <PortConfig+0x1cc>)
     8bc:	4a63      	ldr	r2, [pc, #396]	; (a4c <PortConfig+0x1cc>)
     8be:	6892      	ldr	r2, [r2, #8]
     8c0:	0192      	lsls	r2, r2, #6
     8c2:	0992      	lsrs	r2, r2, #6
     8c4:	609a      	str	r2, [r3, #8]
     8c6:	4b61      	ldr	r3, [pc, #388]	; (a4c <PortConfig+0x1cc>)
     8c8:	4a60      	ldr	r2, [pc, #384]	; (a4c <PortConfig+0x1cc>)
     8ca:	6892      	ldr	r2, [r2, #8]
     8cc:	21a8      	movs	r1, #168	; 0xa8
     8ce:	05c9      	lsls	r1, r1, #23
     8d0:	430a      	orrs	r2, r1
     8d2:	609a      	str	r2, [r3, #8]
     8d4:	4b5d      	ldr	r3, [pc, #372]	; (a4c <PortConfig+0x1cc>)
     8d6:	4a5d      	ldr	r2, [pc, #372]	; (a4c <PortConfig+0x1cc>)
     8d8:	68d2      	ldr	r2, [r2, #12]
     8da:	21e0      	movs	r1, #224	; 0xe0
     8dc:	0209      	lsls	r1, r1, #8
     8de:	430a      	orrs	r2, r1
     8e0:	60da      	str	r2, [r3, #12]
     8e2:	4b5a      	ldr	r3, [pc, #360]	; (a4c <PortConfig+0x1cc>)
     8e4:	4a59      	ldr	r2, [pc, #356]	; (a4c <PortConfig+0x1cc>)
     8e6:	6992      	ldr	r2, [r2, #24]
     8e8:	21fc      	movs	r1, #252	; 0xfc
     8ea:	0609      	lsls	r1, r1, #24
     8ec:	430a      	orrs	r2, r1
     8ee:	619a      	str	r2, [r3, #24]
     8f0:	4b54      	ldr	r3, [pc, #336]	; (a44 <PortConfig+0x1c4>)
     8f2:	4a54      	ldr	r2, [pc, #336]	; (a44 <PortConfig+0x1c4>)
     8f4:	6892      	ldr	r2, [r2, #8]
     8f6:	0b92      	lsrs	r2, r2, #14
     8f8:	0392      	lsls	r2, r2, #14
     8fa:	609a      	str	r2, [r3, #8]
     8fc:	4b51      	ldr	r3, [pc, #324]	; (a44 <PortConfig+0x1c4>)
     8fe:	4a51      	ldr	r2, [pc, #324]	; (a44 <PortConfig+0x1c4>)
     900:	6892      	ldr	r2, [r2, #8]
     902:	4953      	ldr	r1, [pc, #332]	; (a50 <PortConfig+0x1d0>)
     904:	430a      	orrs	r2, r1
     906:	609a      	str	r2, [r3, #8]
     908:	4b4e      	ldr	r3, [pc, #312]	; (a44 <PortConfig+0x1c4>)
     90a:	4a4e      	ldr	r2, [pc, #312]	; (a44 <PortConfig+0x1c4>)
     90c:	68d2      	ldr	r2, [r2, #12]
     90e:	217f      	movs	r1, #127	; 0x7f
     910:	430a      	orrs	r2, r1
     912:	60da      	str	r2, [r3, #12]
     914:	4b4b      	ldr	r3, [pc, #300]	; (a44 <PortConfig+0x1c4>)
     916:	4a4b      	ldr	r2, [pc, #300]	; (a44 <PortConfig+0x1c4>)
     918:	6992      	ldr	r2, [r2, #24]
     91a:	494e      	ldr	r1, [pc, #312]	; (a54 <PortConfig+0x1d4>)
     91c:	430a      	orrs	r2, r1
     91e:	619a      	str	r2, [r3, #24]
     920:	4b47      	ldr	r3, [pc, #284]	; (a40 <PortConfig+0x1c0>)
     922:	4a47      	ldr	r2, [pc, #284]	; (a40 <PortConfig+0x1c0>)
     924:	69d2      	ldr	r2, [r2, #28]
     926:	2180      	movs	r1, #128	; 0x80
     928:	0489      	lsls	r1, r1, #18
     92a:	430a      	orrs	r2, r1
     92c:	61da      	str	r2, [r3, #28]
     92e:	4b4a      	ldr	r3, [pc, #296]	; (a58 <PortConfig+0x1d8>)
     930:	4a49      	ldr	r2, [pc, #292]	; (a58 <PortConfig+0x1d8>)
     932:	68d2      	ldr	r2, [r2, #12]
     934:	2102      	movs	r1, #2
     936:	438a      	bics	r2, r1
     938:	60da      	str	r2, [r3, #12]
     93a:	4b47      	ldr	r3, [pc, #284]	; (a58 <PortConfig+0x1d8>)
     93c:	4a46      	ldr	r2, [pc, #280]	; (a58 <PortConfig+0x1d8>)
     93e:	68d2      	ldr	r2, [r2, #12]
     940:	2108      	movs	r1, #8
     942:	430a      	orrs	r2, r1
     944:	60da      	str	r2, [r3, #12]
     946:	4b44      	ldr	r3, [pc, #272]	; (a58 <PortConfig+0x1d8>)
     948:	4a43      	ldr	r2, [pc, #268]	; (a58 <PortConfig+0x1d8>)
     94a:	6892      	ldr	r2, [r2, #8]
     94c:	21c0      	movs	r1, #192	; 0xc0
     94e:	438a      	bics	r2, r1
     950:	609a      	str	r2, [r3, #8]
     952:	4b41      	ldr	r3, [pc, #260]	; (a58 <PortConfig+0x1d8>)
     954:	4a40      	ldr	r2, [pc, #256]	; (a58 <PortConfig+0x1d8>)
     956:	6892      	ldr	r2, [r2, #8]
     958:	2140      	movs	r1, #64	; 0x40
     95a:	430a      	orrs	r2, r1
     95c:	609a      	str	r2, [r3, #8]
     95e:	4b3e      	ldr	r3, [pc, #248]	; (a58 <PortConfig+0x1d8>)
     960:	4a3d      	ldr	r2, [pc, #244]	; (a58 <PortConfig+0x1d8>)
     962:	6992      	ldr	r2, [r2, #24]
     964:	21c0      	movs	r1, #192	; 0xc0
     966:	430a      	orrs	r2, r1
     968:	619a      	str	r2, [r3, #24]
     96a:	4b3b      	ldr	r3, [pc, #236]	; (a58 <PortConfig+0x1d8>)
     96c:	4a3a      	ldr	r2, [pc, #232]	; (a58 <PortConfig+0x1d8>)
     96e:	6852      	ldr	r2, [r2, #4]
     970:	2108      	movs	r1, #8
     972:	430a      	orrs	r2, r1
     974:	605a      	str	r2, [r3, #4]
     976:	4b38      	ldr	r3, [pc, #224]	; (a58 <PortConfig+0x1d8>)
     978:	4a37      	ldr	r2, [pc, #220]	; (a58 <PortConfig+0x1d8>)
     97a:	68d2      	ldr	r2, [r2, #12]
     97c:	2101      	movs	r1, #1
     97e:	430a      	orrs	r2, r1
     980:	60da      	str	r2, [r3, #12]
     982:	4b35      	ldr	r3, [pc, #212]	; (a58 <PortConfig+0x1d8>)
     984:	4a34      	ldr	r2, [pc, #208]	; (a58 <PortConfig+0x1d8>)
     986:	6892      	ldr	r2, [r2, #8]
     988:	2103      	movs	r1, #3
     98a:	438a      	bics	r2, r1
     98c:	609a      	str	r2, [r3, #8]
     98e:	4b32      	ldr	r3, [pc, #200]	; (a58 <PortConfig+0x1d8>)
     990:	4a31      	ldr	r2, [pc, #196]	; (a58 <PortConfig+0x1d8>)
     992:	6992      	ldr	r2, [r2, #24]
     994:	2103      	movs	r1, #3
     996:	430a      	orrs	r2, r1
     998:	619a      	str	r2, [r3, #24]
     99a:	4b2f      	ldr	r3, [pc, #188]	; (a58 <PortConfig+0x1d8>)
     99c:	4a2e      	ldr	r2, [pc, #184]	; (a58 <PortConfig+0x1d8>)
     99e:	6852      	ldr	r2, [r2, #4]
     9a0:	2101      	movs	r1, #1
     9a2:	430a      	orrs	r2, r1
     9a4:	605a      	str	r2, [r3, #4]
     9a6:	4b2c      	ldr	r3, [pc, #176]	; (a58 <PortConfig+0x1d8>)
     9a8:	4a2b      	ldr	r2, [pc, #172]	; (a58 <PortConfig+0x1d8>)
     9aa:	6812      	ldr	r2, [r2, #0]
     9ac:	2101      	movs	r1, #1
     9ae:	430a      	orrs	r2, r1
     9b0:	601a      	str	r2, [r3, #0]
     9b2:	4b23      	ldr	r3, [pc, #140]	; (a40 <PortConfig+0x1c0>)
     9b4:	4a22      	ldr	r2, [pc, #136]	; (a40 <PortConfig+0x1c0>)
     9b6:	69d2      	ldr	r2, [r2, #28]
     9b8:	2180      	movs	r1, #128	; 0x80
     9ba:	0409      	lsls	r1, r1, #16
     9bc:	430a      	orrs	r2, r1
     9be:	61da      	str	r2, [r3, #28]
     9c0:	4b22      	ldr	r3, [pc, #136]	; (a4c <PortConfig+0x1cc>)
     9c2:	4a22      	ldr	r2, [pc, #136]	; (a4c <PortConfig+0x1cc>)
     9c4:	6892      	ldr	r2, [r2, #8]
     9c6:	4925      	ldr	r1, [pc, #148]	; (a5c <PortConfig+0x1dc>)
     9c8:	400a      	ands	r2, r1
     9ca:	609a      	str	r2, [r3, #8]
     9cc:	4b1f      	ldr	r3, [pc, #124]	; (a4c <PortConfig+0x1cc>)
     9ce:	4a1f      	ldr	r2, [pc, #124]	; (a4c <PortConfig+0x1cc>)
     9d0:	6892      	ldr	r2, [r2, #8]
     9d2:	21a0      	movs	r1, #160	; 0xa0
     9d4:	0049      	lsls	r1, r1, #1
     9d6:	430a      	orrs	r2, r1
     9d8:	609a      	str	r2, [r3, #8]
     9da:	4b1c      	ldr	r3, [pc, #112]	; (a4c <PortConfig+0x1cc>)
     9dc:	4a1b      	ldr	r2, [pc, #108]	; (a4c <PortConfig+0x1cc>)
     9de:	68d2      	ldr	r2, [r2, #12]
     9e0:	2118      	movs	r1, #24
     9e2:	430a      	orrs	r2, r1
     9e4:	60da      	str	r2, [r3, #12]
     9e6:	4b19      	ldr	r3, [pc, #100]	; (a4c <PortConfig+0x1cc>)
     9e8:	4a18      	ldr	r2, [pc, #96]	; (a4c <PortConfig+0x1cc>)
     9ea:	6992      	ldr	r2, [r2, #24]
     9ec:	21f0      	movs	r1, #240	; 0xf0
     9ee:	0089      	lsls	r1, r1, #2
     9f0:	430a      	orrs	r2, r1
     9f2:	619a      	str	r2, [r3, #24]
     9f4:	4b15      	ldr	r3, [pc, #84]	; (a4c <PortConfig+0x1cc>)
     9f6:	4a15      	ldr	r2, [pc, #84]	; (a4c <PortConfig+0x1cc>)
     9f8:	6812      	ldr	r2, [r2, #0]
     9fa:	2118      	movs	r1, #24
     9fc:	438a      	bics	r2, r1
     9fe:	601a      	str	r2, [r3, #0]
     a00:	4b12      	ldr	r3, [pc, #72]	; (a4c <PortConfig+0x1cc>)
     a02:	4a12      	ldr	r2, [pc, #72]	; (a4c <PortConfig+0x1cc>)
     a04:	6912      	ldr	r2, [r2, #16]
     a06:	2180      	movs	r1, #128	; 0x80
     a08:	0349      	lsls	r1, r1, #13
     a0a:	430a      	orrs	r2, r1
     a0c:	611a      	str	r2, [r3, #16]
     a0e:	4b0c      	ldr	r3, [pc, #48]	; (a40 <PortConfig+0x1c0>)
     a10:	4a0b      	ldr	r2, [pc, #44]	; (a40 <PortConfig+0x1c0>)
     a12:	69d2      	ldr	r2, [r2, #28]
     a14:	2180      	movs	r1, #128	; 0x80
     a16:	0589      	lsls	r1, r1, #22
     a18:	430a      	orrs	r2, r1
     a1a:	61da      	str	r2, [r3, #28]
     a1c:	4b10      	ldr	r3, [pc, #64]	; (a60 <PortConfig+0x1e0>)
     a1e:	221f      	movs	r2, #31
     a20:	60da      	str	r2, [r3, #12]
     a22:	4b0f      	ldr	r3, [pc, #60]	; (a60 <PortConfig+0x1e0>)
     a24:	2200      	movs	r2, #0
     a26:	609a      	str	r2, [r3, #8]
     a28:	4b0d      	ldr	r3, [pc, #52]	; (a60 <PortConfig+0x1e0>)
     a2a:	4a0e      	ldr	r2, [pc, #56]	; (a64 <PortConfig+0x1e4>)
     a2c:	619a      	str	r2, [r3, #24]
     a2e:	4b0c      	ldr	r3, [pc, #48]	; (a60 <PortConfig+0x1e0>)
     a30:	221f      	movs	r2, #31
     a32:	605a      	str	r2, [r3, #4]
     a34:	4b0a      	ldr	r3, [pc, #40]	; (a60 <PortConfig+0x1e0>)
     a36:	2200      	movs	r2, #0
     a38:	601a      	str	r2, [r3, #0]
     a3a:	46c0      	nop			; (mov r8, r8)
     a3c:	46bd      	mov	sp, r7
     a3e:	bd80      	pop	{r7, pc}
     a40:	40020000 	.word	0x40020000
     a44:	400c0000 	.word	0x400c0000
     a48:	ffffc7ff 	.word	0xffffc7ff
     a4c:	400b8000 	.word	0x400b8000
     a50:	00001555 	.word	0x00001555
     a54:	00003fff 	.word	0x00003fff
     a58:	400c8000 	.word	0x400c8000
     a5c:	fffffc3f 	.word	0xfffffc3f
     a60:	400e8000 	.word	0x400e8000
     a64:	000003ff 	.word	0x000003ff

00000a68 <dac_init>:
     a68:	b580      	push	{r7, lr}
     a6a:	af00      	add	r7, sp, #0
     a6c:	4b07      	ldr	r3, [pc, #28]	; (a8c <dac_init+0x24>)
     a6e:	4a07      	ldr	r2, [pc, #28]	; (a8c <dac_init+0x24>)
     a70:	69d2      	ldr	r2, [r2, #28]
     a72:	2180      	movs	r1, #128	; 0x80
     a74:	02c9      	lsls	r1, r1, #11
     a76:	430a      	orrs	r2, r1
     a78:	61da      	str	r2, [r3, #28]
     a7a:	4b05      	ldr	r3, [pc, #20]	; (a90 <dac_init+0x28>)
     a7c:	4a04      	ldr	r2, [pc, #16]	; (a90 <dac_init+0x28>)
     a7e:	6812      	ldr	r2, [r2, #0]
     a80:	2104      	movs	r1, #4
     a82:	430a      	orrs	r2, r1
     a84:	601a      	str	r2, [r3, #0]
     a86:	46c0      	nop			; (mov r8, r8)
     a88:	46bd      	mov	sp, r7
     a8a:	bd80      	pop	{r7, pc}
     a8c:	40020000 	.word	0x40020000
     a90:	40090000 	.word	0x40090000

00000a94 <ClkConfig>:
     a94:	b580      	push	{r7, lr}
     a96:	af00      	add	r7, sp, #0
     a98:	4b18      	ldr	r3, [pc, #96]	; (afc <ClkConfig+0x68>)
     a9a:	4a18      	ldr	r2, [pc, #96]	; (afc <ClkConfig+0x68>)
     a9c:	6892      	ldr	r2, [r2, #8]
     a9e:	2101      	movs	r1, #1
     aa0:	430a      	orrs	r2, r1
     aa2:	609a      	str	r2, [r3, #8]
     aa4:	46c0      	nop			; (mov r8, r8)
     aa6:	4b15      	ldr	r3, [pc, #84]	; (afc <ClkConfig+0x68>)
     aa8:	681b      	ldr	r3, [r3, #0]
     aaa:	2204      	movs	r2, #4
     aac:	4013      	ands	r3, r2
     aae:	d0fa      	beq.n	aa6 <ClkConfig+0x12>
     ab0:	4b12      	ldr	r3, [pc, #72]	; (afc <ClkConfig+0x68>)
     ab2:	4a12      	ldr	r2, [pc, #72]	; (afc <ClkConfig+0x68>)
     ab4:	68d2      	ldr	r2, [r2, #12]
     ab6:	2102      	movs	r1, #2
     ab8:	430a      	orrs	r2, r1
     aba:	60da      	str	r2, [r3, #12]
     abc:	4b0f      	ldr	r3, [pc, #60]	; (afc <ClkConfig+0x68>)
     abe:	4a10      	ldr	r2, [pc, #64]	; (b00 <ClkConfig+0x6c>)
     ac0:	605a      	str	r2, [r3, #4]
     ac2:	46c0      	nop			; (mov r8, r8)
     ac4:	4b0d      	ldr	r3, [pc, #52]	; (afc <ClkConfig+0x68>)
     ac6:	681b      	ldr	r3, [r3, #0]
     ac8:	2202      	movs	r2, #2
     aca:	4013      	ands	r3, r2
     acc:	d0fa      	beq.n	ac4 <ClkConfig+0x30>
     ace:	4b0d      	ldr	r3, [pc, #52]	; (b04 <ClkConfig+0x70>)
     ad0:	4a0c      	ldr	r2, [pc, #48]	; (b04 <ClkConfig+0x70>)
     ad2:	6812      	ldr	r2, [r2, #0]
     ad4:	2120      	movs	r1, #32
     ad6:	430a      	orrs	r2, r1
     ad8:	601a      	str	r2, [r3, #0]
     ada:	4b08      	ldr	r3, [pc, #32]	; (afc <ClkConfig+0x68>)
     adc:	4a07      	ldr	r2, [pc, #28]	; (afc <ClkConfig+0x68>)
     ade:	68d2      	ldr	r2, [r2, #12]
     ae0:	2180      	movs	r1, #128	; 0x80
     ae2:	0049      	lsls	r1, r1, #1
     ae4:	430a      	orrs	r2, r1
     ae6:	60da      	str	r2, [r3, #12]
     ae8:	4b04      	ldr	r3, [pc, #16]	; (afc <ClkConfig+0x68>)
     aea:	4a04      	ldr	r2, [pc, #16]	; (afc <ClkConfig+0x68>)
     aec:	68d2      	ldr	r2, [r2, #12]
     aee:	2104      	movs	r1, #4
     af0:	430a      	orrs	r2, r1
     af2:	60da      	str	r2, [r3, #12]
     af4:	46c0      	nop			; (mov r8, r8)
     af6:	46bd      	mov	sp, r7
     af8:	bd80      	pop	{r7, pc}
     afa:	46c0      	nop			; (mov r8, r8)
     afc:	40020000 	.word	0x40020000
     b00:	00000b04 	.word	0x00000b04
     b04:	40018000 	.word	0x40018000

00000b08 <TimerConfig>:
     b08:	b580      	push	{r7, lr}
     b0a:	af00      	add	r7, sp, #0
     b0c:	4b5d      	ldr	r3, [pc, #372]	; (c84 <TimerConfig+0x17c>)
     b0e:	4a5d      	ldr	r2, [pc, #372]	; (c84 <TimerConfig+0x17c>)
     b10:	69d2      	ldr	r2, [r2, #28]
     b12:	2180      	movs	r1, #128	; 0x80
     b14:	01c9      	lsls	r1, r1, #7
     b16:	430a      	orrs	r2, r1
     b18:	61da      	str	r2, [r3, #28]
     b1a:	4b5a      	ldr	r3, [pc, #360]	; (c84 <TimerConfig+0x17c>)
     b1c:	4a59      	ldr	r2, [pc, #356]	; (c84 <TimerConfig+0x17c>)
     b1e:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b20:	2180      	movs	r1, #128	; 0x80
     b22:	0449      	lsls	r1, r1, #17
     b24:	430a      	orrs	r2, r1
     b26:	625a      	str	r2, [r3, #36]	; 0x24
     b28:	4b56      	ldr	r3, [pc, #344]	; (c84 <TimerConfig+0x17c>)
     b2a:	4a56      	ldr	r2, [pc, #344]	; (c84 <TimerConfig+0x17c>)
     b2c:	6a52      	ldr	r2, [r2, #36]	; 0x24
     b2e:	21ff      	movs	r1, #255	; 0xff
     b30:	438a      	bics	r2, r1
     b32:	625a      	str	r2, [r3, #36]	; 0x24
     b34:	4b54      	ldr	r3, [pc, #336]	; (c88 <TimerConfig+0x180>)
     b36:	2200      	movs	r2, #0
     b38:	601a      	str	r2, [r3, #0]
     b3a:	4b53      	ldr	r3, [pc, #332]	; (c88 <TimerConfig+0x180>)
     b3c:	225f      	movs	r2, #95	; 0x5f
     b3e:	605a      	str	r2, [r3, #4]
     b40:	4b51      	ldr	r3, [pc, #324]	; (c88 <TimerConfig+0x180>)
     b42:	4a52      	ldr	r2, [pc, #328]	; (c8c <TimerConfig+0x184>)
     b44:	609a      	str	r2, [r3, #8]
     b46:	4b50      	ldr	r3, [pc, #320]	; (c88 <TimerConfig+0x180>)
     b48:	22c8      	movs	r2, #200	; 0xc8
     b4a:	0052      	lsls	r2, r2, #1
     b4c:	611a      	str	r2, [r3, #16]
     b4e:	4b4e      	ldr	r3, [pc, #312]	; (c88 <TimerConfig+0x180>)
     b50:	22af      	movs	r2, #175	; 0xaf
     b52:	0092      	lsls	r2, r2, #2
     b54:	615a      	str	r2, [r3, #20]
     b56:	4b4c      	ldr	r3, [pc, #304]	; (c88 <TimerConfig+0x180>)
     b58:	4a4d      	ldr	r2, [pc, #308]	; (c90 <TimerConfig+0x188>)
     b5a:	619a      	str	r2, [r3, #24]
     b5c:	4b4a      	ldr	r3, [pc, #296]	; (c88 <TimerConfig+0x180>)
     b5e:	4a4a      	ldr	r2, [pc, #296]	; (c88 <TimerConfig+0x180>)
     b60:	6a12      	ldr	r2, [r2, #32]
     b62:	494c      	ldr	r1, [pc, #304]	; (c94 <TimerConfig+0x18c>)
     b64:	400a      	ands	r2, r1
     b66:	621a      	str	r2, [r3, #32]
     b68:	4b47      	ldr	r3, [pc, #284]	; (c88 <TimerConfig+0x180>)
     b6a:	4a47      	ldr	r2, [pc, #284]	; (c88 <TimerConfig+0x180>)
     b6c:	6a12      	ldr	r2, [r2, #32]
     b6e:	21e0      	movs	r1, #224	; 0xe0
     b70:	0109      	lsls	r1, r1, #4
     b72:	430a      	orrs	r2, r1
     b74:	621a      	str	r2, [r3, #32]
     b76:	4b44      	ldr	r3, [pc, #272]	; (c88 <TimerConfig+0x180>)
     b78:	4a43      	ldr	r2, [pc, #268]	; (c88 <TimerConfig+0x180>)
     b7a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b7c:	210f      	movs	r1, #15
     b7e:	438a      	bics	r2, r1
     b80:	631a      	str	r2, [r3, #48]	; 0x30
     b82:	4b41      	ldr	r3, [pc, #260]	; (c88 <TimerConfig+0x180>)
     b84:	4a40      	ldr	r2, [pc, #256]	; (c88 <TimerConfig+0x180>)
     b86:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b88:	210c      	movs	r1, #12
     b8a:	430a      	orrs	r2, r1
     b8c:	631a      	str	r2, [r3, #48]	; 0x30
     b8e:	4b3e      	ldr	r3, [pc, #248]	; (c88 <TimerConfig+0x180>)
     b90:	4a3d      	ldr	r2, [pc, #244]	; (c88 <TimerConfig+0x180>)
     b92:	6b12      	ldr	r2, [r2, #48]	; 0x30
     b94:	2101      	movs	r1, #1
     b96:	430a      	orrs	r2, r1
     b98:	631a      	str	r2, [r3, #48]	; 0x30
     b9a:	4b3b      	ldr	r3, [pc, #236]	; (c88 <TimerConfig+0x180>)
     b9c:	4a3a      	ldr	r2, [pc, #232]	; (c88 <TimerConfig+0x180>)
     b9e:	6a52      	ldr	r2, [r2, #36]	; 0x24
     ba0:	493c      	ldr	r1, [pc, #240]	; (c94 <TimerConfig+0x18c>)
     ba2:	400a      	ands	r2, r1
     ba4:	625a      	str	r2, [r3, #36]	; 0x24
     ba6:	4b38      	ldr	r3, [pc, #224]	; (c88 <TimerConfig+0x180>)
     ba8:	4a37      	ldr	r2, [pc, #220]	; (c88 <TimerConfig+0x180>)
     baa:	6a52      	ldr	r2, [r2, #36]	; 0x24
     bac:	21e0      	movs	r1, #224	; 0xe0
     bae:	0109      	lsls	r1, r1, #4
     bb0:	430a      	orrs	r2, r1
     bb2:	625a      	str	r2, [r3, #36]	; 0x24
     bb4:	4b34      	ldr	r3, [pc, #208]	; (c88 <TimerConfig+0x180>)
     bb6:	4a34      	ldr	r2, [pc, #208]	; (c88 <TimerConfig+0x180>)
     bb8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     bba:	210f      	movs	r1, #15
     bbc:	438a      	bics	r2, r1
     bbe:	635a      	str	r2, [r3, #52]	; 0x34
     bc0:	4b31      	ldr	r3, [pc, #196]	; (c88 <TimerConfig+0x180>)
     bc2:	4a31      	ldr	r2, [pc, #196]	; (c88 <TimerConfig+0x180>)
     bc4:	6b52      	ldr	r2, [r2, #52]	; 0x34
     bc6:	210c      	movs	r1, #12
     bc8:	430a      	orrs	r2, r1
     bca:	635a      	str	r2, [r3, #52]	; 0x34
     bcc:	4b2e      	ldr	r3, [pc, #184]	; (c88 <TimerConfig+0x180>)
     bce:	4a2e      	ldr	r2, [pc, #184]	; (c88 <TimerConfig+0x180>)
     bd0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     bd2:	2101      	movs	r1, #1
     bd4:	430a      	orrs	r2, r1
     bd6:	635a      	str	r2, [r3, #52]	; 0x34
     bd8:	4b2b      	ldr	r3, [pc, #172]	; (c88 <TimerConfig+0x180>)
     bda:	4a2b      	ldr	r2, [pc, #172]	; (c88 <TimerConfig+0x180>)
     bdc:	6a92      	ldr	r2, [r2, #40]	; 0x28
     bde:	492d      	ldr	r1, [pc, #180]	; (c94 <TimerConfig+0x18c>)
     be0:	400a      	ands	r2, r1
     be2:	629a      	str	r2, [r3, #40]	; 0x28
     be4:	4b28      	ldr	r3, [pc, #160]	; (c88 <TimerConfig+0x180>)
     be6:	4a28      	ldr	r2, [pc, #160]	; (c88 <TimerConfig+0x180>)
     be8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     bea:	21e0      	movs	r1, #224	; 0xe0
     bec:	0109      	lsls	r1, r1, #4
     bee:	430a      	orrs	r2, r1
     bf0:	629a      	str	r2, [r3, #40]	; 0x28
     bf2:	4b25      	ldr	r3, [pc, #148]	; (c88 <TimerConfig+0x180>)
     bf4:	4a24      	ldr	r2, [pc, #144]	; (c88 <TimerConfig+0x180>)
     bf6:	6b92      	ldr	r2, [r2, #56]	; 0x38
     bf8:	210f      	movs	r1, #15
     bfa:	438a      	bics	r2, r1
     bfc:	639a      	str	r2, [r3, #56]	; 0x38
     bfe:	4b22      	ldr	r3, [pc, #136]	; (c88 <TimerConfig+0x180>)
     c00:	4a21      	ldr	r2, [pc, #132]	; (c88 <TimerConfig+0x180>)
     c02:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c04:	210c      	movs	r1, #12
     c06:	430a      	orrs	r2, r1
     c08:	639a      	str	r2, [r3, #56]	; 0x38
     c0a:	4b1f      	ldr	r3, [pc, #124]	; (c88 <TimerConfig+0x180>)
     c0c:	4a1e      	ldr	r2, [pc, #120]	; (c88 <TimerConfig+0x180>)
     c0e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     c10:	2101      	movs	r1, #1
     c12:	430a      	orrs	r2, r1
     c14:	639a      	str	r2, [r3, #56]	; 0x38
     c16:	4b1c      	ldr	r3, [pc, #112]	; (c88 <TimerConfig+0x180>)
     c18:	4a1b      	ldr	r2, [pc, #108]	; (c88 <TimerConfig+0x180>)
     c1a:	6d92      	ldr	r2, [r2, #88]	; 0x58
     c1c:	21e0      	movs	r1, #224	; 0xe0
     c1e:	0109      	lsls	r1, r1, #4
     c20:	430a      	orrs	r2, r1
     c22:	659a      	str	r2, [r3, #88]	; 0x58
     c24:	4b18      	ldr	r3, [pc, #96]	; (c88 <TimerConfig+0x180>)
     c26:	2201      	movs	r2, #1
     c28:	60da      	str	r2, [r3, #12]
     c2a:	4b16      	ldr	r3, [pc, #88]	; (c84 <TimerConfig+0x17c>)
     c2c:	4a15      	ldr	r2, [pc, #84]	; (c84 <TimerConfig+0x17c>)
     c2e:	69d2      	ldr	r2, [r2, #28]
     c30:	2180      	movs	r1, #128	; 0x80
     c32:	0309      	lsls	r1, r1, #12
     c34:	430a      	orrs	r2, r1
     c36:	61da      	str	r2, [r3, #28]
     c38:	4b12      	ldr	r3, [pc, #72]	; (c84 <TimerConfig+0x17c>)
     c3a:	4a12      	ldr	r2, [pc, #72]	; (c84 <TimerConfig+0x17c>)
     c3c:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c3e:	2180      	movs	r1, #128	; 0x80
     c40:	04c9      	lsls	r1, r1, #19
     c42:	430a      	orrs	r2, r1
     c44:	629a      	str	r2, [r3, #40]	; 0x28
     c46:	4b0f      	ldr	r3, [pc, #60]	; (c84 <TimerConfig+0x17c>)
     c48:	4a0e      	ldr	r2, [pc, #56]	; (c84 <TimerConfig+0x17c>)
     c4a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     c4c:	4912      	ldr	r1, [pc, #72]	; (c98 <TimerConfig+0x190>)
     c4e:	400a      	ands	r2, r1
     c50:	629a      	str	r2, [r3, #40]	; 0x28
     c52:	4b12      	ldr	r3, [pc, #72]	; (c9c <TimerConfig+0x194>)
     c54:	2200      	movs	r2, #0
     c56:	601a      	str	r2, [r3, #0]
     c58:	4b10      	ldr	r3, [pc, #64]	; (c9c <TimerConfig+0x194>)
     c5a:	225f      	movs	r2, #95	; 0x5f
     c5c:	605a      	str	r2, [r3, #4]
     c5e:	4b0f      	ldr	r3, [pc, #60]	; (c9c <TimerConfig+0x194>)
     c60:	4a0a      	ldr	r2, [pc, #40]	; (c8c <TimerConfig+0x184>)
     c62:	609a      	str	r2, [r3, #8]
     c64:	4b0d      	ldr	r3, [pc, #52]	; (c9c <TimerConfig+0x194>)
     c66:	4a0d      	ldr	r2, [pc, #52]	; (c9c <TimerConfig+0x194>)
     c68:	6d92      	ldr	r2, [r2, #88]	; 0x58
     c6a:	2102      	movs	r1, #2
     c6c:	430a      	orrs	r2, r1
     c6e:	659a      	str	r2, [r3, #88]	; 0x58
     c70:	4b0a      	ldr	r3, [pc, #40]	; (c9c <TimerConfig+0x194>)
     c72:	2201      	movs	r2, #1
     c74:	60da      	str	r2, [r3, #12]
     c76:	200d      	movs	r0, #13
     c78:	f7ff fa22 	bl	c0 <NVIC_EnableIRQ>
     c7c:	46c0      	nop			; (mov r8, r8)
     c7e:	46bd      	mov	sp, r7
     c80:	bd80      	pop	{r7, pc}
     c82:	46c0      	nop			; (mov r8, r8)
     c84:	40020000 	.word	0x40020000
     c88:	40070000 	.word	0x40070000
     c8c:	000003e7 	.word	0x000003e7
     c90:	000003de 	.word	0x000003de
     c94:	fffff1ff 	.word	0xfffff1ff
     c98:	ff00ffff 	.word	0xff00ffff
     c9c:	40098000 	.word	0x40098000

00000ca0 <mil_std_1533_init_rt>:
     ca0:	b580      	push	{r7, lr}
     ca2:	b082      	sub	sp, #8
     ca4:	af00      	add	r7, sp, #0
     ca6:	4b26      	ldr	r3, [pc, #152]	; (d40 <mil_std_1533_init_rt+0xa0>)
     ca8:	603b      	str	r3, [r7, #0]
     caa:	4b26      	ldr	r3, [pc, #152]	; (d44 <mil_std_1533_init_rt+0xa4>)
     cac:	4a25      	ldr	r2, [pc, #148]	; (d44 <mil_std_1533_init_rt+0xa4>)
     cae:	69d2      	ldr	r2, [r2, #28]
     cb0:	2180      	movs	r1, #128	; 0x80
     cb2:	0089      	lsls	r1, r1, #2
     cb4:	430a      	orrs	r2, r1
     cb6:	61da      	str	r2, [r3, #28]
     cb8:	4b22      	ldr	r3, [pc, #136]	; (d44 <mil_std_1533_init_rt+0xa4>)
     cba:	4a22      	ldr	r2, [pc, #136]	; (d44 <mil_std_1533_init_rt+0xa4>)
     cbc:	6b52      	ldr	r2, [r2, #52]	; 0x34
     cbe:	4922      	ldr	r1, [pc, #136]	; (d48 <mil_std_1533_init_rt+0xa8>)
     cc0:	430a      	orrs	r2, r1
     cc2:	635a      	str	r2, [r3, #52]	; 0x34
     cc4:	4a21      	ldr	r2, [pc, #132]	; (d4c <mil_std_1533_init_rt+0xac>)
     cc6:	2380      	movs	r3, #128	; 0x80
     cc8:	015b      	lsls	r3, r3, #5
     cca:	2101      	movs	r1, #1
     ccc:	50d1      	str	r1, [r2, r3]
     cce:	4a1f      	ldr	r2, [pc, #124]	; (d4c <mil_std_1533_init_rt+0xac>)
     cd0:	2380      	movs	r3, #128	; 0x80
     cd2:	015b      	lsls	r3, r3, #5
     cd4:	491e      	ldr	r1, [pc, #120]	; (d50 <mil_std_1533_init_rt+0xb0>)
     cd6:	50d1      	str	r1, [r2, r3]
     cd8:	491c      	ldr	r1, [pc, #112]	; (d4c <mil_std_1533_init_rt+0xac>)
     cda:	4a1c      	ldr	r2, [pc, #112]	; (d4c <mil_std_1533_init_rt+0xac>)
     cdc:	2381      	movs	r3, #129	; 0x81
     cde:	015b      	lsls	r3, r3, #5
     ce0:	58d3      	ldr	r3, [r2, r3]
     ce2:	2208      	movs	r2, #8
     ce4:	431a      	orrs	r2, r3
     ce6:	2381      	movs	r3, #129	; 0x81
     ce8:	015b      	lsls	r3, r3, #5
     cea:	50ca      	str	r2, [r1, r3]
     cec:	4917      	ldr	r1, [pc, #92]	; (d4c <mil_std_1533_init_rt+0xac>)
     cee:	4a17      	ldr	r2, [pc, #92]	; (d4c <mil_std_1533_init_rt+0xac>)
     cf0:	2381      	movs	r3, #129	; 0x81
     cf2:	015b      	lsls	r3, r3, #5
     cf4:	58d3      	ldr	r3, [r2, r3]
     cf6:	2206      	movs	r2, #6
     cf8:	431a      	orrs	r2, r3
     cfa:	2381      	movs	r3, #129	; 0x81
     cfc:	015b      	lsls	r3, r3, #5
     cfe:	50ca      	str	r2, [r1, r3]
     d00:	2001      	movs	r0, #1
     d02:	f7ff f9dd 	bl	c0 <NVIC_EnableIRQ>
     d06:	4911      	ldr	r1, [pc, #68]	; (d4c <mil_std_1533_init_rt+0xac>)
     d08:	4a12      	ldr	r2, [pc, #72]	; (d54 <mil_std_1533_init_rt+0xb4>)
     d0a:	2380      	movs	r3, #128	; 0x80
     d0c:	01db      	lsls	r3, r3, #7
     d0e:	508b      	str	r3, [r1, r2]
     d10:	2300      	movs	r3, #0
     d12:	607b      	str	r3, [r7, #4]
     d14:	e00d      	b.n	d32 <mil_std_1533_init_rt+0x92>
     d16:	683b      	ldr	r3, [r7, #0]
     d18:	1d1a      	adds	r2, r3, #4
     d1a:	603a      	str	r2, [r7, #0]
     d1c:	687a      	ldr	r2, [r7, #4]
     d1e:	b292      	uxth	r2, r2
     d20:	210f      	movs	r1, #15
     d22:	400a      	ands	r2, r1
     d24:	b292      	uxth	r2, r2
     d26:	3230      	adds	r2, #48	; 0x30
     d28:	b292      	uxth	r2, r2
     d2a:	601a      	str	r2, [r3, #0]
     d2c:	687b      	ldr	r3, [r7, #4]
     d2e:	3301      	adds	r3, #1
     d30:	607b      	str	r3, [r7, #4]
     d32:	687b      	ldr	r3, [r7, #4]
     d34:	2b1f      	cmp	r3, #31
     d36:	ddee      	ble.n	d16 <mil_std_1533_init_rt+0x76>
     d38:	46c0      	nop			; (mov r8, r8)
     d3a:	46bd      	mov	sp, r7
     d3c:	b002      	add	sp, #8
     d3e:	bd80      	pop	{r7, pc}
     d40:	40048080 	.word	0x40048080
     d44:	40020000 	.word	0x40020000
     d48:	02000100 	.word	0x02000100
     d4c:	40048000 	.word	0x40048000
     d50:	00018238 	.word	0x00018238
     d54:	00001018 	.word	0x00001018

00000d58 <SystemInit>:
     d58:	b580      	push	{r7, lr}
     d5a:	af00      	add	r7, sp, #0
     d5c:	f7ff fe9a 	bl	a94 <ClkConfig>
     d60:	f7ff fd8e 	bl	880 <PortConfig>
     d64:	f7ff fed0 	bl	b08 <TimerConfig>
     d68:	f000 fa60 	bl	122c <uart_init>
     d6c:	f7ff ff98 	bl	ca0 <mil_std_1533_init_rt>
     d70:	f7ff fe7a 	bl	a68 <dac_init>
     d74:	4b0c      	ldr	r3, [pc, #48]	; (da8 <SystemInit+0x50>)
     d76:	4a0c      	ldr	r2, [pc, #48]	; (da8 <SystemInit+0x50>)
     d78:	69d2      	ldr	r2, [r2, #28]
     d7a:	490c      	ldr	r1, [pc, #48]	; (dac <SystemInit+0x54>)
     d7c:	430a      	orrs	r2, r1
     d7e:	61da      	str	r2, [r3, #28]
     d80:	4b0b      	ldr	r3, [pc, #44]	; (db0 <SystemInit+0x58>)
     d82:	2200      	movs	r2, #0
     d84:	625a      	str	r2, [r3, #36]	; 0x24
     d86:	4b0b      	ldr	r3, [pc, #44]	; (db4 <SystemInit+0x5c>)
     d88:	2200      	movs	r2, #0
     d8a:	625a      	str	r2, [r3, #36]	; 0x24
     d8c:	4b0a      	ldr	r3, [pc, #40]	; (db8 <SystemInit+0x60>)
     d8e:	2200      	movs	r2, #0
     d90:	625a      	str	r2, [r3, #36]	; 0x24
     d92:	4b05      	ldr	r3, [pc, #20]	; (da8 <SystemInit+0x50>)
     d94:	4a04      	ldr	r2, [pc, #16]	; (da8 <SystemInit+0x50>)
     d96:	69d2      	ldr	r2, [r2, #28]
     d98:	4908      	ldr	r1, [pc, #32]	; (dbc <SystemInit+0x64>)
     d9a:	400a      	ands	r2, r1
     d9c:	61da      	str	r2, [r3, #28]
     d9e:	f001 f83b 	bl	1e18 <adc_init>
     da2:	46c0      	nop			; (mov r8, r8)
     da4:	46bd      	mov	sp, r7
     da6:	bd80      	pop	{r7, pc}
     da8:	40020000 	.word	0x40020000
     dac:	80100100 	.word	0x80100100
     db0:	40040000 	.word	0x40040000
     db4:	400a0000 	.word	0x400a0000
     db8:	400f8000 	.word	0x400f8000
     dbc:	7feffeff 	.word	0x7feffeff

00000dc0 <SysTick_Handler>:
     dc0:	b580      	push	{r7, lr}
     dc2:	af00      	add	r7, sp, #0
     dc4:	4b03      	ldr	r3, [pc, #12]	; (dd4 <SysTick_Handler+0x14>)
     dc6:	681b      	ldr	r3, [r3, #0]
     dc8:	1c5a      	adds	r2, r3, #1
     dca:	4b02      	ldr	r3, [pc, #8]	; (dd4 <SysTick_Handler+0x14>)
     dcc:	601a      	str	r2, [r3, #0]
     dce:	46c0      	nop			; (mov r8, r8)
     dd0:	46bd      	mov	sp, r7
     dd2:	bd80      	pop	{r7, pc}
     dd4:	20000118 	.word	0x20000118

00000dd8 <TIMER4_Handler>:
     dd8:	b580      	push	{r7, lr}
     dda:	b082      	sub	sp, #8
     ddc:	af00      	add	r7, sp, #0
     dde:	4b13      	ldr	r3, [pc, #76]	; (e2c <TIMER4_Handler+0x54>)
     de0:	2200      	movs	r2, #0
     de2:	655a      	str	r2, [r3, #84]	; 0x54
     de4:	4b12      	ldr	r3, [pc, #72]	; (e30 <TIMER4_Handler+0x58>)
     de6:	681b      	ldr	r3, [r3, #0]
     de8:	1c5a      	adds	r2, r3, #1
     dea:	4b11      	ldr	r3, [pc, #68]	; (e30 <TIMER4_Handler+0x58>)
     dec:	601a      	str	r2, [r3, #0]
     dee:	4b11      	ldr	r3, [pc, #68]	; (e34 <TIMER4_Handler+0x5c>)
     df0:	2201      	movs	r2, #1
     df2:	601a      	str	r2, [r3, #0]
     df4:	4b10      	ldr	r3, [pc, #64]	; (e38 <TIMER4_Handler+0x60>)
     df6:	681b      	ldr	r3, [r3, #0]
     df8:	3301      	adds	r3, #1
     dfa:	2207      	movs	r2, #7
     dfc:	401a      	ands	r2, r3
     dfe:	4b0e      	ldr	r3, [pc, #56]	; (e38 <TIMER4_Handler+0x60>)
     e00:	601a      	str	r2, [r3, #0]
     e02:	4b0d      	ldr	r3, [pc, #52]	; (e38 <TIMER4_Handler+0x60>)
     e04:	681b      	ldr	r3, [r3, #0]
     e06:	0018      	movs	r0, r3
     e08:	f001 f81a 	bl	1e40 <adc_update>
     e0c:	0003      	movs	r3, r0
     e0e:	607b      	str	r3, [r7, #4]
     e10:	687b      	ldr	r3, [r7, #4]
     e12:	0c1b      	lsrs	r3, r3, #16
     e14:	2207      	movs	r2, #7
     e16:	401a      	ands	r2, r3
     e18:	687b      	ldr	r3, [r7, #4]
     e1a:	051b      	lsls	r3, r3, #20
     e1c:	0d19      	lsrs	r1, r3, #20
     e1e:	4b07      	ldr	r3, [pc, #28]	; (e3c <TIMER4_Handler+0x64>)
     e20:	0092      	lsls	r2, r2, #2
     e22:	50d1      	str	r1, [r2, r3]
     e24:	46c0      	nop			; (mov r8, r8)
     e26:	46bd      	mov	sp, r7
     e28:	b002      	add	sp, #8
     e2a:	bd80      	pop	{r7, pc}
     e2c:	40098000 	.word	0x40098000
     e30:	20000118 	.word	0x20000118
     e34:	20000120 	.word	0x20000120
     e38:	20000168 	.word	0x20000168
     e3c:	200000f0 	.word	0x200000f0

00000e40 <MIL_STD_1553B1_Handler>:
     e40:	b590      	push	{r4, r7, lr}
     e42:	b087      	sub	sp, #28
     e44:	af00      	add	r7, sp, #0
     e46:	4bb8      	ldr	r3, [pc, #736]	; (1128 <MIL_STD_1553B1_Handler+0x2e8>)
     e48:	613b      	str	r3, [r7, #16]
     e4a:	4ab8      	ldr	r2, [pc, #736]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
     e4c:	4bb8      	ldr	r3, [pc, #736]	; (1130 <MIL_STD_1553B1_Handler+0x2f0>)
     e4e:	58d3      	ldr	r3, [r2, r3]
     e50:	2202      	movs	r2, #2
     e52:	4013      	ands	r3, r2
     e54:	d100      	bne.n	e58 <MIL_STD_1553B1_Handler+0x18>
     e56:	e10f      	b.n	1078 <MIL_STD_1553B1_Handler+0x238>
     e58:	4ab4      	ldr	r2, [pc, #720]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
     e5a:	4bb6      	ldr	r3, [pc, #728]	; (1134 <MIL_STD_1553B1_Handler+0x2f4>)
     e5c:	58d3      	ldr	r3, [r2, r3]
     e5e:	4ab6      	ldr	r2, [pc, #728]	; (1138 <MIL_STD_1553B1_Handler+0x2f8>)
     e60:	4293      	cmp	r3, r2
     e62:	d000      	beq.n	e66 <MIL_STD_1553B1_Handler+0x26>
     e64:	e108      	b.n	1078 <MIL_STD_1553B1_Handler+0x238>
     e66:	4bb5      	ldr	r3, [pc, #724]	; (113c <MIL_STD_1553B1_Handler+0x2fc>)
     e68:	681b      	ldr	r3, [r3, #0]
     e6a:	2201      	movs	r2, #1
     e6c:	4053      	eors	r3, r2
     e6e:	009a      	lsls	r2, r3, #2
     e70:	4bb3      	ldr	r3, [pc, #716]	; (1140 <MIL_STD_1553B1_Handler+0x300>)
     e72:	18d3      	adds	r3, r2, r3
     e74:	681b      	ldr	r3, [r3, #0]
     e76:	60fb      	str	r3, [r7, #12]
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
     f58:	693b      	ldr	r3, [r7, #16]
     f5a:	1d1a      	adds	r2, r3, #4
     f5c:	613a      	str	r2, [r7, #16]
     f5e:	68fa      	ldr	r2, [r7, #12]
     f60:	1c91      	adds	r1, r2, #2
     f62:	60f9      	str	r1, [r7, #12]
     f64:	8812      	ldrh	r2, [r2, #0]
     f66:	601a      	str	r2, [r3, #0]
     f68:	693b      	ldr	r3, [r7, #16]
     f6a:	1d1a      	adds	r2, r3, #4
     f6c:	613a      	str	r2, [r7, #16]
     f6e:	68fa      	ldr	r2, [r7, #12]
     f70:	1c91      	adds	r1, r2, #2
     f72:	60f9      	str	r1, [r7, #12]
     f74:	8812      	ldrh	r2, [r2, #0]
     f76:	601a      	str	r2, [r3, #0]
     f78:	693b      	ldr	r3, [r7, #16]
     f7a:	1d1a      	adds	r2, r3, #4
     f7c:	613a      	str	r2, [r7, #16]
     f7e:	68fa      	ldr	r2, [r7, #12]
     f80:	1c91      	adds	r1, r2, #2
     f82:	60f9      	str	r1, [r7, #12]
     f84:	8812      	ldrh	r2, [r2, #0]
     f86:	601a      	str	r2, [r3, #0]
     f88:	693b      	ldr	r3, [r7, #16]
     f8a:	1d1a      	adds	r2, r3, #4
     f8c:	613a      	str	r2, [r7, #16]
     f8e:	68fa      	ldr	r2, [r7, #12]
     f90:	1c91      	adds	r1, r2, #2
     f92:	60f9      	str	r1, [r7, #12]
     f94:	8812      	ldrh	r2, [r2, #0]
     f96:	601a      	str	r2, [r3, #0]
     f98:	693b      	ldr	r3, [r7, #16]
     f9a:	1d1a      	adds	r2, r3, #4
     f9c:	613a      	str	r2, [r7, #16]
     f9e:	68fa      	ldr	r2, [r7, #12]
     fa0:	1c91      	adds	r1, r2, #2
     fa2:	60f9      	str	r1, [r7, #12]
     fa4:	8812      	ldrh	r2, [r2, #0]
     fa6:	601a      	str	r2, [r3, #0]
     fa8:	693b      	ldr	r3, [r7, #16]
     faa:	1d1a      	adds	r2, r3, #4
     fac:	613a      	str	r2, [r7, #16]
     fae:	68fa      	ldr	r2, [r7, #12]
     fb0:	1c91      	adds	r1, r2, #2
     fb2:	60f9      	str	r1, [r7, #12]
     fb4:	8812      	ldrh	r2, [r2, #0]
     fb6:	601a      	str	r2, [r3, #0]
     fb8:	693b      	ldr	r3, [r7, #16]
     fba:	1d1a      	adds	r2, r3, #4
     fbc:	613a      	str	r2, [r7, #16]
     fbe:	68fa      	ldr	r2, [r7, #12]
     fc0:	1c91      	adds	r1, r2, #2
     fc2:	60f9      	str	r1, [r7, #12]
     fc4:	8812      	ldrh	r2, [r2, #0]
     fc6:	601a      	str	r2, [r3, #0]
     fc8:	693b      	ldr	r3, [r7, #16]
     fca:	1d1a      	adds	r2, r3, #4
     fcc:	613a      	str	r2, [r7, #16]
     fce:	68fa      	ldr	r2, [r7, #12]
     fd0:	1c91      	adds	r1, r2, #2
     fd2:	60f9      	str	r1, [r7, #12]
     fd4:	8812      	ldrh	r2, [r2, #0]
     fd6:	601a      	str	r2, [r3, #0]
     fd8:	693b      	ldr	r3, [r7, #16]
     fda:	1d1a      	adds	r2, r3, #4
     fdc:	613a      	str	r2, [r7, #16]
     fde:	68fa      	ldr	r2, [r7, #12]
     fe0:	1c91      	adds	r1, r2, #2
     fe2:	60f9      	str	r1, [r7, #12]
     fe4:	8812      	ldrh	r2, [r2, #0]
     fe6:	601a      	str	r2, [r3, #0]
     fe8:	693b      	ldr	r3, [r7, #16]
     fea:	1d1a      	adds	r2, r3, #4
     fec:	613a      	str	r2, [r7, #16]
     fee:	68fa      	ldr	r2, [r7, #12]
     ff0:	1c91      	adds	r1, r2, #2
     ff2:	60f9      	str	r1, [r7, #12]
     ff4:	8812      	ldrh	r2, [r2, #0]
     ff6:	601a      	str	r2, [r3, #0]
     ff8:	693b      	ldr	r3, [r7, #16]
     ffa:	1d1a      	adds	r2, r3, #4
     ffc:	613a      	str	r2, [r7, #16]
     ffe:	68fa      	ldr	r2, [r7, #12]
    1000:	1c91      	adds	r1, r2, #2
    1002:	60f9      	str	r1, [r7, #12]
    1004:	8812      	ldrh	r2, [r2, #0]
    1006:	601a      	str	r2, [r3, #0]
    1008:	693b      	ldr	r3, [r7, #16]
    100a:	1d1a      	adds	r2, r3, #4
    100c:	613a      	str	r2, [r7, #16]
    100e:	68fa      	ldr	r2, [r7, #12]
    1010:	1c91      	adds	r1, r2, #2
    1012:	60f9      	str	r1, [r7, #12]
    1014:	8812      	ldrh	r2, [r2, #0]
    1016:	601a      	str	r2, [r3, #0]
    1018:	693b      	ldr	r3, [r7, #16]
    101a:	1d1a      	adds	r2, r3, #4
    101c:	613a      	str	r2, [r7, #16]
    101e:	68fa      	ldr	r2, [r7, #12]
    1020:	1c91      	adds	r1, r2, #2
    1022:	60f9      	str	r1, [r7, #12]
    1024:	8812      	ldrh	r2, [r2, #0]
    1026:	601a      	str	r2, [r3, #0]
    1028:	693b      	ldr	r3, [r7, #16]
    102a:	1d1a      	adds	r2, r3, #4
    102c:	613a      	str	r2, [r7, #16]
    102e:	68fa      	ldr	r2, [r7, #12]
    1030:	1c91      	adds	r1, r2, #2
    1032:	60f9      	str	r1, [r7, #12]
    1034:	8812      	ldrh	r2, [r2, #0]
    1036:	601a      	str	r2, [r3, #0]
    1038:	693b      	ldr	r3, [r7, #16]
    103a:	1d1a      	adds	r2, r3, #4
    103c:	613a      	str	r2, [r7, #16]
    103e:	68fa      	ldr	r2, [r7, #12]
    1040:	1c91      	adds	r1, r2, #2
    1042:	60f9      	str	r1, [r7, #12]
    1044:	8812      	ldrh	r2, [r2, #0]
    1046:	601a      	str	r2, [r3, #0]
    1048:	693b      	ldr	r3, [r7, #16]
    104a:	1d1a      	adds	r2, r3, #4
    104c:	613a      	str	r2, [r7, #16]
    104e:	68fa      	ldr	r2, [r7, #12]
    1050:	1c91      	adds	r1, r2, #2
    1052:	60f9      	str	r1, [r7, #12]
    1054:	8812      	ldrh	r2, [r2, #0]
    1056:	601a      	str	r2, [r3, #0]
    1058:	693b      	ldr	r3, [r7, #16]
    105a:	1d1a      	adds	r2, r3, #4
    105c:	613a      	str	r2, [r7, #16]
    105e:	68fa      	ldr	r2, [r7, #12]
    1060:	1c91      	adds	r1, r2, #2
    1062:	60f9      	str	r1, [r7, #12]
    1064:	8812      	ldrh	r2, [r2, #0]
    1066:	601a      	str	r2, [r3, #0]
    1068:	693b      	ldr	r3, [r7, #16]
    106a:	1d1a      	adds	r2, r3, #4
    106c:	613a      	str	r2, [r7, #16]
    106e:	68fa      	ldr	r2, [r7, #12]
    1070:	1c91      	adds	r1, r2, #2
    1072:	60f9      	str	r1, [r7, #12]
    1074:	8812      	ldrh	r2, [r2, #0]
    1076:	601a      	str	r2, [r3, #0]
    1078:	4a2c      	ldr	r2, [pc, #176]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
    107a:	4b2d      	ldr	r3, [pc, #180]	; (1130 <MIL_STD_1553B1_Handler+0x2f0>)
    107c:	58d3      	ldr	r3, [r2, r3]
    107e:	2204      	movs	r2, #4
    1080:	4013      	ands	r3, r2
    1082:	d04a      	beq.n	111a <MIL_STD_1553B1_Handler+0x2da>
    1084:	4b2f      	ldr	r3, [pc, #188]	; (1144 <MIL_STD_1553B1_Handler+0x304>)
    1086:	681b      	ldr	r3, [r3, #0]
    1088:	1c5a      	adds	r2, r3, #1
    108a:	4b2e      	ldr	r3, [pc, #184]	; (1144 <MIL_STD_1553B1_Handler+0x304>)
    108c:	601a      	str	r2, [r3, #0]
    108e:	4a27      	ldr	r2, [pc, #156]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
    1090:	4b28      	ldr	r3, [pc, #160]	; (1134 <MIL_STD_1553B1_Handler+0x2f4>)
    1092:	58d3      	ldr	r3, [r2, r3]
    1094:	4a28      	ldr	r2, [pc, #160]	; (1138 <MIL_STD_1553B1_Handler+0x2f8>)
    1096:	4293      	cmp	r3, r2
    1098:	d03f      	beq.n	111a <MIL_STD_1553B1_Handler+0x2da>
    109a:	4a24      	ldr	r2, [pc, #144]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
    109c:	4b25      	ldr	r3, [pc, #148]	; (1134 <MIL_STD_1553B1_Handler+0x2f4>)
    109e:	58d3      	ldr	r3, [r2, r3]
    10a0:	2b01      	cmp	r3, #1
    10a2:	d13a      	bne.n	111a <MIL_STD_1553B1_Handler+0x2da>
    10a4:	4a21      	ldr	r2, [pc, #132]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
    10a6:	4b28      	ldr	r3, [pc, #160]	; (1148 <MIL_STD_1553B1_Handler+0x308>)
    10a8:	58d3      	ldr	r3, [r2, r3]
    10aa:	221f      	movs	r2, #31
    10ac:	4013      	ands	r3, r2
    10ae:	60bb      	str	r3, [r7, #8]
    10b0:	1dbb      	adds	r3, r7, #6
    10b2:	2200      	movs	r2, #0
    10b4:	801a      	strh	r2, [r3, #0]
    10b6:	4b25      	ldr	r3, [pc, #148]	; (114c <MIL_STD_1553B1_Handler+0x30c>)
    10b8:	603b      	str	r3, [r7, #0]
    10ba:	4b25      	ldr	r3, [pc, #148]	; (1150 <MIL_STD_1553B1_Handler+0x310>)
    10bc:	681b      	ldr	r3, [r3, #0]
    10be:	2b00      	cmp	r3, #0
    10c0:	d12b      	bne.n	111a <MIL_STD_1553B1_Handler+0x2da>
    10c2:	68bb      	ldr	r3, [r7, #8]
    10c4:	2b20      	cmp	r3, #32
    10c6:	d828      	bhi.n	111a <MIL_STD_1553B1_Handler+0x2da>
    10c8:	2300      	movs	r3, #0
    10ca:	617b      	str	r3, [r7, #20]
    10cc:	e00c      	b.n	10e8 <MIL_STD_1553B1_Handler+0x2a8>
    10ce:	697b      	ldr	r3, [r7, #20]
    10d0:	005b      	lsls	r3, r3, #1
    10d2:	683a      	ldr	r2, [r7, #0]
    10d4:	18d2      	adds	r2, r2, r3
    10d6:	693b      	ldr	r3, [r7, #16]
    10d8:	1d19      	adds	r1, r3, #4
    10da:	6139      	str	r1, [r7, #16]
    10dc:	681b      	ldr	r3, [r3, #0]
    10de:	b29b      	uxth	r3, r3
    10e0:	8013      	strh	r3, [r2, #0]
    10e2:	697b      	ldr	r3, [r7, #20]
    10e4:	3301      	adds	r3, #1
    10e6:	617b      	str	r3, [r7, #20]
    10e8:	697a      	ldr	r2, [r7, #20]
    10ea:	68bb      	ldr	r3, [r7, #8]
    10ec:	429a      	cmp	r2, r3
    10ee:	d3ee      	bcc.n	10ce <MIL_STD_1553B1_Handler+0x28e>
    10f0:	68bb      	ldr	r3, [r7, #8]
    10f2:	1e5a      	subs	r2, r3, #1
    10f4:	1dbc      	adds	r4, r7, #6
    10f6:	683b      	ldr	r3, [r7, #0]
    10f8:	0011      	movs	r1, r2
    10fa:	0018      	movs	r0, r3
    10fc:	f7fe fffc 	bl	f8 <get_checksum>
    1100:	0003      	movs	r3, r0
    1102:	8023      	strh	r3, [r4, #0]
    1104:	4b11      	ldr	r3, [pc, #68]	; (114c <MIL_STD_1553B1_Handler+0x30c>)
    1106:	891b      	ldrh	r3, [r3, #8]
    1108:	1dba      	adds	r2, r7, #6
    110a:	8812      	ldrh	r2, [r2, #0]
    110c:	1ad3      	subs	r3, r2, r3
    110e:	425a      	negs	r2, r3
    1110:	4153      	adcs	r3, r2
    1112:	b2db      	uxtb	r3, r3
    1114:	001a      	movs	r2, r3
    1116:	4b0e      	ldr	r3, [pc, #56]	; (1150 <MIL_STD_1553B1_Handler+0x310>)
    1118:	601a      	str	r2, [r3, #0]
    111a:	4a04      	ldr	r2, [pc, #16]	; (112c <MIL_STD_1553B1_Handler+0x2ec>)
    111c:	4b04      	ldr	r3, [pc, #16]	; (1130 <MIL_STD_1553B1_Handler+0x2f0>)
    111e:	58d3      	ldr	r3, [r2, r3]
    1120:	46c0      	nop			; (mov r8, r8)
    1122:	46bd      	mov	sp, r7
    1124:	b007      	add	sp, #28
    1126:	bd90      	pop	{r4, r7, pc}
    1128:	40048080 	.word	0x40048080
    112c:	40048000 	.word	0x40048000
    1130:	00001004 	.word	0x00001004
    1134:	00001024 	.word	0x00001024
    1138:	00000402 	.word	0x00000402
    113c:	200000d8 	.word	0x200000d8
    1140:	200000d0 	.word	0x200000d0
    1144:	200000e0 	.word	0x200000e0
    1148:	0000100c 	.word	0x0000100c
    114c:	200000c4 	.word	0x200000c4
    1150:	2000011c 	.word	0x2000011c

00001154 <handler_reset>:
    1154:	b580      	push	{r7, lr}
    1156:	b082      	sub	sp, #8
    1158:	af00      	add	r7, sp, #0
    115a:	4b11      	ldr	r3, [pc, #68]	; (11a0 <handler_reset+0x4c>)
    115c:	607b      	str	r3, [r7, #4]
    115e:	4b11      	ldr	r3, [pc, #68]	; (11a4 <handler_reset+0x50>)
    1160:	603b      	str	r3, [r7, #0]
    1162:	e007      	b.n	1174 <handler_reset+0x20>
    1164:	683b      	ldr	r3, [r7, #0]
    1166:	1d1a      	adds	r2, r3, #4
    1168:	603a      	str	r2, [r7, #0]
    116a:	687a      	ldr	r2, [r7, #4]
    116c:	1d11      	adds	r1, r2, #4
    116e:	6079      	str	r1, [r7, #4]
    1170:	6812      	ldr	r2, [r2, #0]
    1172:	601a      	str	r2, [r3, #0]
    1174:	683a      	ldr	r2, [r7, #0]
    1176:	4b0c      	ldr	r3, [pc, #48]	; (11a8 <handler_reset+0x54>)
    1178:	429a      	cmp	r2, r3
    117a:	d3f3      	bcc.n	1164 <handler_reset+0x10>
    117c:	4b0b      	ldr	r3, [pc, #44]	; (11ac <handler_reset+0x58>)
    117e:	603b      	str	r3, [r7, #0]
    1180:	e004      	b.n	118c <handler_reset+0x38>
    1182:	683b      	ldr	r3, [r7, #0]
    1184:	1d1a      	adds	r2, r3, #4
    1186:	603a      	str	r2, [r7, #0]
    1188:	2200      	movs	r2, #0
    118a:	601a      	str	r2, [r3, #0]
    118c:	683a      	ldr	r2, [r7, #0]
    118e:	4b08      	ldr	r3, [pc, #32]	; (11b0 <handler_reset+0x5c>)
    1190:	429a      	cmp	r2, r3
    1192:	d3f6      	bcc.n	1182 <handler_reset+0x2e>
    1194:	f7ff fb0e 	bl	7b4 <main>
    1198:	46c0      	nop			; (mov r8, r8)
    119a:	46bd      	mov	sp, r7
    119c:	b002      	add	sp, #8
    119e:	bd80      	pop	{r7, pc}
    11a0:	000020c4 	.word	0x000020c4
    11a4:	20000000 	.word	0x20000000
    11a8:	20000044 	.word	0x20000044
    11ac:	20000044 	.word	0x20000044
    11b0:	20000588 	.word	0x20000588

000011b4 <default_handler>:
    11b4:	b580      	push	{r7, lr}
    11b6:	af00      	add	r7, sp, #0
    11b8:	e7fe      	b.n	11b8 <default_handler+0x4>
    11ba:	46c0      	nop			; (mov r8, r8)

000011bc <NVIC_EnableIRQ>:
    11bc:	b580      	push	{r7, lr}
    11be:	b082      	sub	sp, #8
    11c0:	af00      	add	r7, sp, #0
    11c2:	0002      	movs	r2, r0
    11c4:	1dfb      	adds	r3, r7, #7
    11c6:	701a      	strb	r2, [r3, #0]
    11c8:	4909      	ldr	r1, [pc, #36]	; (11f0 <NVIC_EnableIRQ+0x34>)
    11ca:	1dfb      	adds	r3, r7, #7
    11cc:	781b      	ldrb	r3, [r3, #0]
    11ce:	b25b      	sxtb	r3, r3
    11d0:	095b      	lsrs	r3, r3, #5
    11d2:	1dfa      	adds	r2, r7, #7
    11d4:	7812      	ldrb	r2, [r2, #0]
    11d6:	0010      	movs	r0, r2
    11d8:	221f      	movs	r2, #31
    11da:	4002      	ands	r2, r0
    11dc:	2001      	movs	r0, #1
    11de:	4090      	lsls	r0, r2
    11e0:	0002      	movs	r2, r0
    11e2:	009b      	lsls	r3, r3, #2
    11e4:	505a      	str	r2, [r3, r1]
    11e6:	46c0      	nop			; (mov r8, r8)
    11e8:	46bd      	mov	sp, r7
    11ea:	b002      	add	sp, #8
    11ec:	bd80      	pop	{r7, pc}
    11ee:	46c0      	nop			; (mov r8, r8)
    11f0:	e000e100 	.word	0xe000e100

000011f4 <NVIC_DisableIRQ>:
    11f4:	b580      	push	{r7, lr}
    11f6:	b082      	sub	sp, #8
    11f8:	af00      	add	r7, sp, #0
    11fa:	0002      	movs	r2, r0
    11fc:	1dfb      	adds	r3, r7, #7
    11fe:	701a      	strb	r2, [r3, #0]
    1200:	4909      	ldr	r1, [pc, #36]	; (1228 <NVIC_DisableIRQ+0x34>)
    1202:	1dfb      	adds	r3, r7, #7
    1204:	781b      	ldrb	r3, [r3, #0]
    1206:	b25b      	sxtb	r3, r3
    1208:	095b      	lsrs	r3, r3, #5
    120a:	1dfa      	adds	r2, r7, #7
    120c:	7812      	ldrb	r2, [r2, #0]
    120e:	0010      	movs	r0, r2
    1210:	221f      	movs	r2, #31
    1212:	4002      	ands	r2, r0
    1214:	2001      	movs	r0, #1
    1216:	4090      	lsls	r0, r2
    1218:	0002      	movs	r2, r0
    121a:	3320      	adds	r3, #32
    121c:	009b      	lsls	r3, r3, #2
    121e:	505a      	str	r2, [r3, r1]
    1220:	46c0      	nop			; (mov r8, r8)
    1222:	46bd      	mov	sp, r7
    1224:	b002      	add	sp, #8
    1226:	bd80      	pop	{r7, pc}
    1228:	e000e100 	.word	0xe000e100

0000122c <uart_init>:
    122c:	b580      	push	{r7, lr}
    122e:	af00      	add	r7, sp, #0
    1230:	4b1f      	ldr	r3, [pc, #124]	; (12b0 <uart_init+0x84>)
    1232:	4a1f      	ldr	r2, [pc, #124]	; (12b0 <uart_init+0x84>)
    1234:	69d2      	ldr	r2, [r2, #28]
    1236:	2140      	movs	r1, #64	; 0x40
    1238:	430a      	orrs	r2, r1
    123a:	61da      	str	r2, [r3, #28]
    123c:	4b1c      	ldr	r3, [pc, #112]	; (12b0 <uart_init+0x84>)
    123e:	4a1c      	ldr	r2, [pc, #112]	; (12b0 <uart_init+0x84>)
    1240:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1242:	2180      	movs	r1, #128	; 0x80
    1244:	0449      	lsls	r1, r1, #17
    1246:	430a      	orrs	r2, r1
    1248:	629a      	str	r2, [r3, #40]	; 0x28
    124a:	4b1a      	ldr	r3, [pc, #104]	; (12b4 <uart_init+0x88>)
    124c:	2204      	movs	r2, #4
    124e:	625a      	str	r2, [r3, #36]	; 0x24
    1250:	4b18      	ldr	r3, [pc, #96]	; (12b4 <uart_init+0x88>)
    1252:	2233      	movs	r2, #51	; 0x33
    1254:	629a      	str	r2, [r3, #40]	; 0x28
    1256:	4b17      	ldr	r3, [pc, #92]	; (12b4 <uart_init+0x88>)
    1258:	4a16      	ldr	r2, [pc, #88]	; (12b4 <uart_init+0x88>)
    125a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    125c:	213f      	movs	r1, #63	; 0x3f
    125e:	438a      	bics	r2, r1
    1260:	635a      	str	r2, [r3, #52]	; 0x34
    1262:	4b14      	ldr	r3, [pc, #80]	; (12b4 <uart_init+0x88>)
    1264:	4a13      	ldr	r2, [pc, #76]	; (12b4 <uart_init+0x88>)
    1266:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1268:	2112      	movs	r1, #18
    126a:	430a      	orrs	r2, r1
    126c:	635a      	str	r2, [r3, #52]	; 0x34
    126e:	4b11      	ldr	r3, [pc, #68]	; (12b4 <uart_init+0x88>)
    1270:	4a10      	ldr	r2, [pc, #64]	; (12b4 <uart_init+0x88>)
    1272:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1274:	2110      	movs	r1, #16
    1276:	430a      	orrs	r2, r1
    1278:	62da      	str	r2, [r3, #44]	; 0x2c
    127a:	4b0e      	ldr	r3, [pc, #56]	; (12b4 <uart_init+0x88>)
    127c:	4a0d      	ldr	r2, [pc, #52]	; (12b4 <uart_init+0x88>)
    127e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
    1280:	2160      	movs	r1, #96	; 0x60
    1282:	430a      	orrs	r2, r1
    1284:	62da      	str	r2, [r3, #44]	; 0x2c
    1286:	4b0b      	ldr	r3, [pc, #44]	; (12b4 <uart_init+0x88>)
    1288:	4a0a      	ldr	r2, [pc, #40]	; (12b4 <uart_init+0x88>)
    128a:	6b12      	ldr	r2, [r2, #48]	; 0x30
    128c:	490a      	ldr	r1, [pc, #40]	; (12b8 <uart_init+0x8c>)
    128e:	430a      	orrs	r2, r1
    1290:	631a      	str	r2, [r3, #48]	; 0x30
    1292:	4b08      	ldr	r3, [pc, #32]	; (12b4 <uart_init+0x88>)
    1294:	4a07      	ldr	r2, [pc, #28]	; (12b4 <uart_init+0x88>)
    1296:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1298:	2110      	movs	r1, #16
    129a:	430a      	orrs	r2, r1
    129c:	639a      	str	r2, [r3, #56]	; 0x38
    129e:	4b05      	ldr	r3, [pc, #20]	; (12b4 <uart_init+0x88>)
    12a0:	4a04      	ldr	r2, [pc, #16]	; (12b4 <uart_init+0x88>)
    12a2:	6b92      	ldr	r2, [r2, #56]	; 0x38
    12a4:	2140      	movs	r1, #64	; 0x40
    12a6:	430a      	orrs	r2, r1
    12a8:	639a      	str	r2, [r3, #56]	; 0x38
    12aa:	46c0      	nop			; (mov r8, r8)
    12ac:	46bd      	mov	sp, r7
    12ae:	bd80      	pop	{r7, pc}
    12b0:	40020000 	.word	0x40020000
    12b4:	40030000 	.word	0x40030000
    12b8:	00000301 	.word	0x00000301

000012bc <uart_read>:
    12bc:	b580      	push	{r7, lr}
    12be:	b084      	sub	sp, #16
    12c0:	af00      	add	r7, sp, #0
    12c2:	6078      	str	r0, [r7, #4]
    12c4:	6039      	str	r1, [r7, #0]
    12c6:	4b18      	ldr	r3, [pc, #96]	; (1328 <uart_read+0x6c>)
    12c8:	681a      	ldr	r2, [r3, #0]
    12ca:	4b18      	ldr	r3, [pc, #96]	; (132c <uart_read+0x70>)
    12cc:	681b      	ldr	r3, [r3, #0]
    12ce:	429a      	cmp	r2, r3
    12d0:	d101      	bne.n	12d6 <uart_read+0x1a>
    12d2:	2300      	movs	r3, #0
    12d4:	e023      	b.n	131e <uart_read+0x62>
    12d6:	2300      	movs	r3, #0
    12d8:	60fb      	str	r3, [r7, #12]
    12da:	e01b      	b.n	1314 <uart_read+0x58>
    12dc:	68fb      	ldr	r3, [r7, #12]
    12de:	687a      	ldr	r2, [r7, #4]
    12e0:	18d2      	adds	r2, r2, r3
    12e2:	4b11      	ldr	r3, [pc, #68]	; (1328 <uart_read+0x6c>)
    12e4:	681b      	ldr	r3, [r3, #0]
    12e6:	4912      	ldr	r1, [pc, #72]	; (1330 <uart_read+0x74>)
    12e8:	5ccb      	ldrb	r3, [r1, r3]
    12ea:	7013      	strb	r3, [r2, #0]
    12ec:	4b0e      	ldr	r3, [pc, #56]	; (1328 <uart_read+0x6c>)
    12ee:	681b      	ldr	r3, [r3, #0]
    12f0:	3301      	adds	r3, #1
    12f2:	05db      	lsls	r3, r3, #23
    12f4:	0dda      	lsrs	r2, r3, #23
    12f6:	4b0c      	ldr	r3, [pc, #48]	; (1328 <uart_read+0x6c>)
    12f8:	601a      	str	r2, [r3, #0]
    12fa:	4b0b      	ldr	r3, [pc, #44]	; (1328 <uart_read+0x6c>)
    12fc:	681a      	ldr	r2, [r3, #0]
    12fe:	4b0b      	ldr	r3, [pc, #44]	; (132c <uart_read+0x70>)
    1300:	681b      	ldr	r3, [r3, #0]
    1302:	429a      	cmp	r2, r3
    1304:	d103      	bne.n	130e <uart_read+0x52>
    1306:	68fb      	ldr	r3, [r7, #12]
    1308:	3301      	adds	r3, #1
    130a:	60fb      	str	r3, [r7, #12]
    130c:	e006      	b.n	131c <uart_read+0x60>
    130e:	68fb      	ldr	r3, [r7, #12]
    1310:	3301      	adds	r3, #1
    1312:	60fb      	str	r3, [r7, #12]
    1314:	68fa      	ldr	r2, [r7, #12]
    1316:	683b      	ldr	r3, [r7, #0]
    1318:	429a      	cmp	r2, r3
    131a:	dbdf      	blt.n	12dc <uart_read+0x20>
    131c:	68fb      	ldr	r3, [r7, #12]
    131e:	0018      	movs	r0, r3
    1320:	46bd      	mov	sp, r7
    1322:	b004      	add	sp, #16
    1324:	bd80      	pop	{r7, pc}
    1326:	46c0      	nop			; (mov r8, r8)
    1328:	20000578 	.word	0x20000578
    132c:	20000574 	.word	0x20000574
    1330:	20000374 	.word	0x20000374

00001334 <uart_send>:
    1334:	b580      	push	{r7, lr}
    1336:	b084      	sub	sp, #16
    1338:	af00      	add	r7, sp, #0
    133a:	6078      	str	r0, [r7, #4]
    133c:	6039      	str	r1, [r7, #0]
    133e:	2006      	movs	r0, #6
    1340:	f7ff ff58 	bl	11f4 <NVIC_DisableIRQ>
    1344:	2300      	movs	r3, #0
    1346:	60fb      	str	r3, [r7, #12]
    1348:	e01b      	b.n	1382 <uart_send+0x4e>
    134a:	4b20      	ldr	r3, [pc, #128]	; (13cc <uart_send+0x98>)
    134c:	681b      	ldr	r3, [r3, #0]
    134e:	68fa      	ldr	r2, [r7, #12]
    1350:	6879      	ldr	r1, [r7, #4]
    1352:	188a      	adds	r2, r1, r2
    1354:	7811      	ldrb	r1, [r2, #0]
    1356:	4a1e      	ldr	r2, [pc, #120]	; (13d0 <uart_send+0x9c>)
    1358:	54d1      	strb	r1, [r2, r3]
    135a:	4b1c      	ldr	r3, [pc, #112]	; (13cc <uart_send+0x98>)
    135c:	681b      	ldr	r3, [r3, #0]
    135e:	3301      	adds	r3, #1
    1360:	05db      	lsls	r3, r3, #23
    1362:	0dda      	lsrs	r2, r3, #23
    1364:	4b19      	ldr	r3, [pc, #100]	; (13cc <uart_send+0x98>)
    1366:	601a      	str	r2, [r3, #0]
    1368:	4b18      	ldr	r3, [pc, #96]	; (13cc <uart_send+0x98>)
    136a:	681a      	ldr	r2, [r3, #0]
    136c:	4b19      	ldr	r3, [pc, #100]	; (13d4 <uart_send+0xa0>)
    136e:	681b      	ldr	r3, [r3, #0]
    1370:	429a      	cmp	r2, r3
    1372:	d103      	bne.n	137c <uart_send+0x48>
    1374:	68fb      	ldr	r3, [r7, #12]
    1376:	3301      	adds	r3, #1
    1378:	60fb      	str	r3, [r7, #12]
    137a:	e006      	b.n	138a <uart_send+0x56>
    137c:	68fb      	ldr	r3, [r7, #12]
    137e:	3301      	adds	r3, #1
    1380:	60fb      	str	r3, [r7, #12]
    1382:	68fa      	ldr	r2, [r7, #12]
    1384:	683b      	ldr	r3, [r7, #0]
    1386:	429a      	cmp	r2, r3
    1388:	dbdf      	blt.n	134a <uart_send+0x16>
    138a:	4b13      	ldr	r3, [pc, #76]	; (13d8 <uart_send+0xa4>)
    138c:	699b      	ldr	r3, [r3, #24]
    138e:	2208      	movs	r2, #8
    1390:	4013      	ands	r3, r2
    1392:	d10c      	bne.n	13ae <uart_send+0x7a>
    1394:	4a10      	ldr	r2, [pc, #64]	; (13d8 <uart_send+0xa4>)
    1396:	4b0f      	ldr	r3, [pc, #60]	; (13d4 <uart_send+0xa0>)
    1398:	681b      	ldr	r3, [r3, #0]
    139a:	490d      	ldr	r1, [pc, #52]	; (13d0 <uart_send+0x9c>)
    139c:	5ccb      	ldrb	r3, [r1, r3]
    139e:	6013      	str	r3, [r2, #0]
    13a0:	4b0c      	ldr	r3, [pc, #48]	; (13d4 <uart_send+0xa0>)
    13a2:	681b      	ldr	r3, [r3, #0]
    13a4:	3301      	adds	r3, #1
    13a6:	05db      	lsls	r3, r3, #23
    13a8:	0dda      	lsrs	r2, r3, #23
    13aa:	4b0a      	ldr	r3, [pc, #40]	; (13d4 <uart_send+0xa0>)
    13ac:	601a      	str	r2, [r3, #0]
    13ae:	4b0a      	ldr	r3, [pc, #40]	; (13d8 <uart_send+0xa4>)
    13b0:	4a09      	ldr	r2, [pc, #36]	; (13d8 <uart_send+0xa4>)
    13b2:	6b92      	ldr	r2, [r2, #56]	; 0x38
    13b4:	2120      	movs	r1, #32
    13b6:	430a      	orrs	r2, r1
    13b8:	639a      	str	r2, [r3, #56]	; 0x38
    13ba:	2006      	movs	r0, #6
    13bc:	f7ff fefe 	bl	11bc <NVIC_EnableIRQ>
    13c0:	68fb      	ldr	r3, [r7, #12]
    13c2:	0018      	movs	r0, r3
    13c4:	46bd      	mov	sp, r7
    13c6:	b004      	add	sp, #16
    13c8:	bd80      	pop	{r7, pc}
    13ca:	46c0      	nop			; (mov r8, r8)
    13cc:	20000370 	.word	0x20000370
    13d0:	2000016c 	.word	0x2000016c
    13d4:	2000036c 	.word	0x2000036c
    13d8:	40030000 	.word	0x40030000

000013dc <uart_putch>:
    13dc:	b580      	push	{r7, lr}
    13de:	b082      	sub	sp, #8
    13e0:	af00      	add	r7, sp, #0
    13e2:	0002      	movs	r2, r0
    13e4:	1dfb      	adds	r3, r7, #7
    13e6:	701a      	strb	r2, [r3, #0]
    13e8:	46c0      	nop			; (mov r8, r8)
    13ea:	4b06      	ldr	r3, [pc, #24]	; (1404 <uart_putch+0x28>)
    13ec:	699b      	ldr	r3, [r3, #24]
    13ee:	2220      	movs	r2, #32
    13f0:	4013      	ands	r3, r2
    13f2:	d1fa      	bne.n	13ea <uart_putch+0xe>
    13f4:	4b03      	ldr	r3, [pc, #12]	; (1404 <uart_putch+0x28>)
    13f6:	1dfa      	adds	r2, r7, #7
    13f8:	7812      	ldrb	r2, [r2, #0]
    13fa:	601a      	str	r2, [r3, #0]
    13fc:	46c0      	nop			; (mov r8, r8)
    13fe:	46bd      	mov	sp, r7
    1400:	b002      	add	sp, #8
    1402:	bd80      	pop	{r7, pc}
    1404:	40030000 	.word	0x40030000

00001408 <UART1_Handler>:
    1408:	b580      	push	{r7, lr}
    140a:	af00      	add	r7, sp, #0
    140c:	4b1a      	ldr	r3, [pc, #104]	; (1478 <UART1_Handler+0x70>)
    140e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1410:	2220      	movs	r2, #32
    1412:	4013      	ands	r3, r2
    1414:	d019      	beq.n	144a <UART1_Handler+0x42>
    1416:	4b19      	ldr	r3, [pc, #100]	; (147c <UART1_Handler+0x74>)
    1418:	681a      	ldr	r2, [r3, #0]
    141a:	4b19      	ldr	r3, [pc, #100]	; (1480 <UART1_Handler+0x78>)
    141c:	681b      	ldr	r3, [r3, #0]
    141e:	429a      	cmp	r2, r3
    1420:	d106      	bne.n	1430 <UART1_Handler+0x28>
    1422:	4b15      	ldr	r3, [pc, #84]	; (1478 <UART1_Handler+0x70>)
    1424:	4a14      	ldr	r2, [pc, #80]	; (1478 <UART1_Handler+0x70>)
    1426:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1428:	2120      	movs	r1, #32
    142a:	438a      	bics	r2, r1
    142c:	639a      	str	r2, [r3, #56]	; 0x38
    142e:	e00c      	b.n	144a <UART1_Handler+0x42>
    1430:	4a11      	ldr	r2, [pc, #68]	; (1478 <UART1_Handler+0x70>)
    1432:	4b12      	ldr	r3, [pc, #72]	; (147c <UART1_Handler+0x74>)
    1434:	681b      	ldr	r3, [r3, #0]
    1436:	4913      	ldr	r1, [pc, #76]	; (1484 <UART1_Handler+0x7c>)
    1438:	5ccb      	ldrb	r3, [r1, r3]
    143a:	6013      	str	r3, [r2, #0]
    143c:	4b0f      	ldr	r3, [pc, #60]	; (147c <UART1_Handler+0x74>)
    143e:	681b      	ldr	r3, [r3, #0]
    1440:	3301      	adds	r3, #1
    1442:	05db      	lsls	r3, r3, #23
    1444:	0dda      	lsrs	r2, r3, #23
    1446:	4b0d      	ldr	r3, [pc, #52]	; (147c <UART1_Handler+0x74>)
    1448:	601a      	str	r2, [r3, #0]
    144a:	4b0b      	ldr	r3, [pc, #44]	; (1478 <UART1_Handler+0x70>)
    144c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    144e:	2210      	movs	r2, #16
    1450:	4013      	ands	r3, r2
    1452:	d00d      	beq.n	1470 <UART1_Handler+0x68>
    1454:	4b0c      	ldr	r3, [pc, #48]	; (1488 <UART1_Handler+0x80>)
    1456:	681a      	ldr	r2, [r3, #0]
    1458:	4b07      	ldr	r3, [pc, #28]	; (1478 <UART1_Handler+0x70>)
    145a:	681b      	ldr	r3, [r3, #0]
    145c:	b2d9      	uxtb	r1, r3
    145e:	4b0b      	ldr	r3, [pc, #44]	; (148c <UART1_Handler+0x84>)
    1460:	5499      	strb	r1, [r3, r2]
    1462:	4b09      	ldr	r3, [pc, #36]	; (1488 <UART1_Handler+0x80>)
    1464:	681b      	ldr	r3, [r3, #0]
    1466:	3301      	adds	r3, #1
    1468:	05db      	lsls	r3, r3, #23
    146a:	0dda      	lsrs	r2, r3, #23
    146c:	4b06      	ldr	r3, [pc, #24]	; (1488 <UART1_Handler+0x80>)
    146e:	601a      	str	r2, [r3, #0]
    1470:	46c0      	nop			; (mov r8, r8)
    1472:	46bd      	mov	sp, r7
    1474:	bd80      	pop	{r7, pc}
    1476:	46c0      	nop			; (mov r8, r8)
    1478:	40030000 	.word	0x40030000
    147c:	2000036c 	.word	0x2000036c
    1480:	20000370 	.word	0x20000370
    1484:	2000016c 	.word	0x2000016c
    1488:	20000574 	.word	0x20000574
    148c:	20000374 	.word	0x20000374

00001490 <xputc>:
    1490:	b580      	push	{r7, lr}
    1492:	b082      	sub	sp, #8
    1494:	af00      	add	r7, sp, #0
    1496:	0002      	movs	r2, r0
    1498:	1dfb      	adds	r3, r7, #7
    149a:	701a      	strb	r2, [r3, #0]
    149c:	1dfb      	adds	r3, r7, #7
    149e:	781b      	ldrb	r3, [r3, #0]
    14a0:	2b0a      	cmp	r3, #10
    14a2:	d102      	bne.n	14aa <xputc+0x1a>
    14a4:	200d      	movs	r0, #13
    14a6:	f7ff fff3 	bl	1490 <xputc>
    14aa:	4b0d      	ldr	r3, [pc, #52]	; (14e0 <xputc+0x50>)
    14ac:	681b      	ldr	r3, [r3, #0]
    14ae:	2b00      	cmp	r3, #0
    14b0:	d008      	beq.n	14c4 <xputc+0x34>
    14b2:	4b0b      	ldr	r3, [pc, #44]	; (14e0 <xputc+0x50>)
    14b4:	681b      	ldr	r3, [r3, #0]
    14b6:	1c59      	adds	r1, r3, #1
    14b8:	4a09      	ldr	r2, [pc, #36]	; (14e0 <xputc+0x50>)
    14ba:	6011      	str	r1, [r2, #0]
    14bc:	1dfa      	adds	r2, r7, #7
    14be:	7812      	ldrb	r2, [r2, #0]
    14c0:	701a      	strb	r2, [r3, #0]
    14c2:	e009      	b.n	14d8 <xputc+0x48>
    14c4:	4b07      	ldr	r3, [pc, #28]	; (14e4 <xputc+0x54>)
    14c6:	681b      	ldr	r3, [r3, #0]
    14c8:	2b00      	cmp	r3, #0
    14ca:	d005      	beq.n	14d8 <xputc+0x48>
    14cc:	4b05      	ldr	r3, [pc, #20]	; (14e4 <xputc+0x54>)
    14ce:	681b      	ldr	r3, [r3, #0]
    14d0:	1dfa      	adds	r2, r7, #7
    14d2:	7812      	ldrb	r2, [r2, #0]
    14d4:	0010      	movs	r0, r2
    14d6:	4798      	blx	r3
    14d8:	46bd      	mov	sp, r7
    14da:	b002      	add	sp, #8
    14dc:	bd80      	pop	{r7, pc}
    14de:	46c0      	nop			; (mov r8, r8)
    14e0:	20000580 	.word	0x20000580
    14e4:	2000057c 	.word	0x2000057c

000014e8 <xputs>:
    14e8:	b580      	push	{r7, lr}
    14ea:	b082      	sub	sp, #8
    14ec:	af00      	add	r7, sp, #0
    14ee:	6078      	str	r0, [r7, #4]
    14f0:	e006      	b.n	1500 <xputs+0x18>
    14f2:	687b      	ldr	r3, [r7, #4]
    14f4:	1c5a      	adds	r2, r3, #1
    14f6:	607a      	str	r2, [r7, #4]
    14f8:	781b      	ldrb	r3, [r3, #0]
    14fa:	0018      	movs	r0, r3
    14fc:	f7ff ffc8 	bl	1490 <xputc>
    1500:	687b      	ldr	r3, [r7, #4]
    1502:	781b      	ldrb	r3, [r3, #0]
    1504:	2b00      	cmp	r3, #0
    1506:	d1f4      	bne.n	14f2 <xputs+0xa>
    1508:	46c0      	nop			; (mov r8, r8)
    150a:	46bd      	mov	sp, r7
    150c:	b002      	add	sp, #8
    150e:	bd80      	pop	{r7, pc}

00001510 <xfputs>:
    1510:	b580      	push	{r7, lr}
    1512:	b084      	sub	sp, #16
    1514:	af00      	add	r7, sp, #0
    1516:	6078      	str	r0, [r7, #4]
    1518:	6039      	str	r1, [r7, #0]
    151a:	4b0c      	ldr	r3, [pc, #48]	; (154c <xfputs+0x3c>)
    151c:	681b      	ldr	r3, [r3, #0]
    151e:	60fb      	str	r3, [r7, #12]
    1520:	4b0a      	ldr	r3, [pc, #40]	; (154c <xfputs+0x3c>)
    1522:	687a      	ldr	r2, [r7, #4]
    1524:	601a      	str	r2, [r3, #0]
    1526:	e006      	b.n	1536 <xfputs+0x26>
    1528:	683b      	ldr	r3, [r7, #0]
    152a:	1c5a      	adds	r2, r3, #1
    152c:	603a      	str	r2, [r7, #0]
    152e:	781b      	ldrb	r3, [r3, #0]
    1530:	0018      	movs	r0, r3
    1532:	f7ff ffad 	bl	1490 <xputc>
    1536:	683b      	ldr	r3, [r7, #0]
    1538:	781b      	ldrb	r3, [r3, #0]
    153a:	2b00      	cmp	r3, #0
    153c:	d1f4      	bne.n	1528 <xfputs+0x18>
    153e:	4b03      	ldr	r3, [pc, #12]	; (154c <xfputs+0x3c>)
    1540:	68fa      	ldr	r2, [r7, #12]
    1542:	601a      	str	r2, [r3, #0]
    1544:	46c0      	nop			; (mov r8, r8)
    1546:	46bd      	mov	sp, r7
    1548:	b004      	add	sp, #16
    154a:	bd80      	pop	{r7, pc}
    154c:	2000057c 	.word	0x2000057c

00001550 <xvprintf>:
    1550:	b580      	push	{r7, lr}
    1552:	b08e      	sub	sp, #56	; 0x38
    1554:	af00      	add	r7, sp, #0
    1556:	6078      	str	r0, [r7, #4]
    1558:	6039      	str	r1, [r7, #0]
    155a:	687b      	ldr	r3, [r7, #4]
    155c:	1c5a      	adds	r2, r3, #1
    155e:	607a      	str	r2, [r7, #4]
    1560:	221f      	movs	r2, #31
    1562:	18ba      	adds	r2, r7, r2
    1564:	781b      	ldrb	r3, [r3, #0]
    1566:	7013      	strb	r3, [r2, #0]
    1568:	231f      	movs	r3, #31
    156a:	18fb      	adds	r3, r7, r3
    156c:	781b      	ldrb	r3, [r3, #0]
    156e:	2b00      	cmp	r3, #0
    1570:	d100      	bne.n	1574 <xvprintf+0x24>
    1572:	e172      	b.n	185a <xvprintf+0x30a>
    1574:	231f      	movs	r3, #31
    1576:	18fb      	adds	r3, r7, r3
    1578:	781b      	ldrb	r3, [r3, #0]
    157a:	2b25      	cmp	r3, #37	; 0x25
    157c:	d006      	beq.n	158c <xvprintf+0x3c>
    157e:	231f      	movs	r3, #31
    1580:	18fb      	adds	r3, r7, r3
    1582:	781b      	ldrb	r3, [r3, #0]
    1584:	0018      	movs	r0, r3
    1586:	f7ff ff83 	bl	1490 <xputc>
    158a:	e165      	b.n	1858 <xvprintf+0x308>
    158c:	2300      	movs	r3, #0
    158e:	627b      	str	r3, [r7, #36]	; 0x24
    1590:	687b      	ldr	r3, [r7, #4]
    1592:	1c5a      	adds	r2, r3, #1
    1594:	607a      	str	r2, [r7, #4]
    1596:	221f      	movs	r2, #31
    1598:	18ba      	adds	r2, r7, r2
    159a:	781b      	ldrb	r3, [r3, #0]
    159c:	7013      	strb	r3, [r2, #0]
    159e:	231f      	movs	r3, #31
    15a0:	18fb      	adds	r3, r7, r3
    15a2:	781b      	ldrb	r3, [r3, #0]
    15a4:	2b30      	cmp	r3, #48	; 0x30
    15a6:	d109      	bne.n	15bc <xvprintf+0x6c>
    15a8:	2301      	movs	r3, #1
    15aa:	627b      	str	r3, [r7, #36]	; 0x24
    15ac:	687b      	ldr	r3, [r7, #4]
    15ae:	1c5a      	adds	r2, r3, #1
    15b0:	607a      	str	r2, [r7, #4]
    15b2:	221f      	movs	r2, #31
    15b4:	18ba      	adds	r2, r7, r2
    15b6:	781b      	ldrb	r3, [r3, #0]
    15b8:	7013      	strb	r3, [r2, #0]
    15ba:	e00d      	b.n	15d8 <xvprintf+0x88>
    15bc:	231f      	movs	r3, #31
    15be:	18fb      	adds	r3, r7, r3
    15c0:	781b      	ldrb	r3, [r3, #0]
    15c2:	2b2d      	cmp	r3, #45	; 0x2d
    15c4:	d108      	bne.n	15d8 <xvprintf+0x88>
    15c6:	2302      	movs	r3, #2
    15c8:	627b      	str	r3, [r7, #36]	; 0x24
    15ca:	687b      	ldr	r3, [r7, #4]
    15cc:	1c5a      	adds	r2, r3, #1
    15ce:	607a      	str	r2, [r7, #4]
    15d0:	221f      	movs	r2, #31
    15d2:	18ba      	adds	r2, r7, r2
    15d4:	781b      	ldrb	r3, [r3, #0]
    15d6:	7013      	strb	r3, [r2, #0]
    15d8:	2300      	movs	r3, #0
    15da:	62bb      	str	r3, [r7, #40]	; 0x28
    15dc:	e012      	b.n	1604 <xvprintf+0xb4>
    15de:	6aba      	ldr	r2, [r7, #40]	; 0x28
    15e0:	0013      	movs	r3, r2
    15e2:	009b      	lsls	r3, r3, #2
    15e4:	189b      	adds	r3, r3, r2
    15e6:	005b      	lsls	r3, r3, #1
    15e8:	001a      	movs	r2, r3
    15ea:	231f      	movs	r3, #31
    15ec:	18fb      	adds	r3, r7, r3
    15ee:	781b      	ldrb	r3, [r3, #0]
    15f0:	18d3      	adds	r3, r2, r3
    15f2:	3b30      	subs	r3, #48	; 0x30
    15f4:	62bb      	str	r3, [r7, #40]	; 0x28
    15f6:	687b      	ldr	r3, [r7, #4]
    15f8:	1c5a      	adds	r2, r3, #1
    15fa:	607a      	str	r2, [r7, #4]
    15fc:	221f      	movs	r2, #31
    15fe:	18ba      	adds	r2, r7, r2
    1600:	781b      	ldrb	r3, [r3, #0]
    1602:	7013      	strb	r3, [r2, #0]
    1604:	231f      	movs	r3, #31
    1606:	18fb      	adds	r3, r7, r3
    1608:	781b      	ldrb	r3, [r3, #0]
    160a:	2b2f      	cmp	r3, #47	; 0x2f
    160c:	d904      	bls.n	1618 <xvprintf+0xc8>
    160e:	231f      	movs	r3, #31
    1610:	18fb      	adds	r3, r7, r3
    1612:	781b      	ldrb	r3, [r3, #0]
    1614:	2b39      	cmp	r3, #57	; 0x39
    1616:	d9e2      	bls.n	15de <xvprintf+0x8e>
    1618:	231f      	movs	r3, #31
    161a:	18fb      	adds	r3, r7, r3
    161c:	781b      	ldrb	r3, [r3, #0]
    161e:	2b6c      	cmp	r3, #108	; 0x6c
    1620:	d004      	beq.n	162c <xvprintf+0xdc>
    1622:	231f      	movs	r3, #31
    1624:	18fb      	adds	r3, r7, r3
    1626:	781b      	ldrb	r3, [r3, #0]
    1628:	2b4c      	cmp	r3, #76	; 0x4c
    162a:	d10a      	bne.n	1642 <xvprintf+0xf2>
    162c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    162e:	2204      	movs	r2, #4
    1630:	4313      	orrs	r3, r2
    1632:	627b      	str	r3, [r7, #36]	; 0x24
    1634:	687b      	ldr	r3, [r7, #4]
    1636:	1c5a      	adds	r2, r3, #1
    1638:	607a      	str	r2, [r7, #4]
    163a:	221f      	movs	r2, #31
    163c:	18ba      	adds	r2, r7, r2
    163e:	781b      	ldrb	r3, [r3, #0]
    1640:	7013      	strb	r3, [r2, #0]
    1642:	231f      	movs	r3, #31
    1644:	18fb      	adds	r3, r7, r3
    1646:	781b      	ldrb	r3, [r3, #0]
    1648:	2b00      	cmp	r3, #0
    164a:	d100      	bne.n	164e <xvprintf+0xfe>
    164c:	e107      	b.n	185e <xvprintf+0x30e>
    164e:	231e      	movs	r3, #30
    1650:	18fb      	adds	r3, r7, r3
    1652:	221f      	movs	r2, #31
    1654:	18ba      	adds	r2, r7, r2
    1656:	7812      	ldrb	r2, [r2, #0]
    1658:	701a      	strb	r2, [r3, #0]
    165a:	231e      	movs	r3, #30
    165c:	18fb      	adds	r3, r7, r3
    165e:	781b      	ldrb	r3, [r3, #0]
    1660:	2b60      	cmp	r3, #96	; 0x60
    1662:	d906      	bls.n	1672 <xvprintf+0x122>
    1664:	231e      	movs	r3, #30
    1666:	18fb      	adds	r3, r7, r3
    1668:	221e      	movs	r2, #30
    166a:	18ba      	adds	r2, r7, r2
    166c:	7812      	ldrb	r2, [r2, #0]
    166e:	3a20      	subs	r2, #32
    1670:	701a      	strb	r2, [r3, #0]
    1672:	231e      	movs	r3, #30
    1674:	18fb      	adds	r3, r7, r3
    1676:	781b      	ldrb	r3, [r3, #0]
    1678:	3b42      	subs	r3, #66	; 0x42
    167a:	2b16      	cmp	r3, #22
    167c:	d847      	bhi.n	170e <xvprintf+0x1be>
    167e:	009a      	lsls	r2, r3, #2
    1680:	4b79      	ldr	r3, [pc, #484]	; (1868 <xvprintf+0x318>)
    1682:	18d3      	adds	r3, r2, r3
    1684:	681b      	ldr	r3, [r3, #0]
    1686:	469f      	mov	pc, r3
    1688:	683b      	ldr	r3, [r7, #0]
    168a:	1d1a      	adds	r2, r3, #4
    168c:	603a      	str	r2, [r7, #0]
    168e:	681b      	ldr	r3, [r3, #0]
    1690:	61bb      	str	r3, [r7, #24]
    1692:	2300      	movs	r3, #0
    1694:	62fb      	str	r3, [r7, #44]	; 0x2c
    1696:	e002      	b.n	169e <xvprintf+0x14e>
    1698:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    169a:	3301      	adds	r3, #1
    169c:	62fb      	str	r3, [r7, #44]	; 0x2c
    169e:	69ba      	ldr	r2, [r7, #24]
    16a0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16a2:	18d3      	adds	r3, r2, r3
    16a4:	781b      	ldrb	r3, [r3, #0]
    16a6:	2b00      	cmp	r3, #0
    16a8:	d1f6      	bne.n	1698 <xvprintf+0x148>
    16aa:	e002      	b.n	16b2 <xvprintf+0x162>
    16ac:	2020      	movs	r0, #32
    16ae:	f7ff feef 	bl	1490 <xputc>
    16b2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    16b4:	2202      	movs	r2, #2
    16b6:	4013      	ands	r3, r2
    16b8:	d105      	bne.n	16c6 <xvprintf+0x176>
    16ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16bc:	1c5a      	adds	r2, r3, #1
    16be:	62fa      	str	r2, [r7, #44]	; 0x2c
    16c0:	6aba      	ldr	r2, [r7, #40]	; 0x28
    16c2:	4293      	cmp	r3, r2
    16c4:	d3f2      	bcc.n	16ac <xvprintf+0x15c>
    16c6:	69bb      	ldr	r3, [r7, #24]
    16c8:	0018      	movs	r0, r3
    16ca:	f7ff ff0d 	bl	14e8 <xputs>
    16ce:	e002      	b.n	16d6 <xvprintf+0x186>
    16d0:	2020      	movs	r0, #32
    16d2:	f7ff fedd 	bl	1490 <xputc>
    16d6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    16d8:	1c5a      	adds	r2, r3, #1
    16da:	62fa      	str	r2, [r7, #44]	; 0x2c
    16dc:	6aba      	ldr	r2, [r7, #40]	; 0x28
    16de:	4293      	cmp	r3, r2
    16e0:	d3f6      	bcc.n	16d0 <xvprintf+0x180>
    16e2:	e0b9      	b.n	1858 <xvprintf+0x308>
    16e4:	683b      	ldr	r3, [r7, #0]
    16e6:	1d1a      	adds	r2, r3, #4
    16e8:	603a      	str	r2, [r7, #0]
    16ea:	681b      	ldr	r3, [r3, #0]
    16ec:	b2db      	uxtb	r3, r3
    16ee:	0018      	movs	r0, r3
    16f0:	f7ff fece 	bl	1490 <xputc>
    16f4:	e0b0      	b.n	1858 <xvprintf+0x308>
    16f6:	2302      	movs	r3, #2
    16f8:	637b      	str	r3, [r7, #52]	; 0x34
    16fa:	e00f      	b.n	171c <xvprintf+0x1cc>
    16fc:	2308      	movs	r3, #8
    16fe:	637b      	str	r3, [r7, #52]	; 0x34
    1700:	e00c      	b.n	171c <xvprintf+0x1cc>
    1702:	230a      	movs	r3, #10
    1704:	637b      	str	r3, [r7, #52]	; 0x34
    1706:	e009      	b.n	171c <xvprintf+0x1cc>
    1708:	2310      	movs	r3, #16
    170a:	637b      	str	r3, [r7, #52]	; 0x34
    170c:	e006      	b.n	171c <xvprintf+0x1cc>
    170e:	231f      	movs	r3, #31
    1710:	18fb      	adds	r3, r7, r3
    1712:	781b      	ldrb	r3, [r3, #0]
    1714:	0018      	movs	r0, r3
    1716:	f7ff febb 	bl	1490 <xputc>
    171a:	e09d      	b.n	1858 <xvprintf+0x308>
    171c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    171e:	2204      	movs	r2, #4
    1720:	4013      	ands	r3, r2
    1722:	d004      	beq.n	172e <xvprintf+0x1de>
    1724:	683b      	ldr	r3, [r7, #0]
    1726:	1d1a      	adds	r2, r3, #4
    1728:	603a      	str	r2, [r7, #0]
    172a:	681b      	ldr	r3, [r3, #0]
    172c:	e00d      	b.n	174a <xvprintf+0x1fa>
    172e:	231e      	movs	r3, #30
    1730:	18fb      	adds	r3, r7, r3
    1732:	781b      	ldrb	r3, [r3, #0]
    1734:	2b44      	cmp	r3, #68	; 0x44
    1736:	d104      	bne.n	1742 <xvprintf+0x1f2>
    1738:	683b      	ldr	r3, [r7, #0]
    173a:	1d1a      	adds	r2, r3, #4
    173c:	603a      	str	r2, [r7, #0]
    173e:	681b      	ldr	r3, [r3, #0]
    1740:	e003      	b.n	174a <xvprintf+0x1fa>
    1742:	683b      	ldr	r3, [r7, #0]
    1744:	1d1a      	adds	r2, r3, #4
    1746:	603a      	str	r2, [r7, #0]
    1748:	681b      	ldr	r3, [r3, #0]
    174a:	623b      	str	r3, [r7, #32]
    174c:	231e      	movs	r3, #30
    174e:	18fb      	adds	r3, r7, r3
    1750:	781b      	ldrb	r3, [r3, #0]
    1752:	2b44      	cmp	r3, #68	; 0x44
    1754:	d109      	bne.n	176a <xvprintf+0x21a>
    1756:	6a3b      	ldr	r3, [r7, #32]
    1758:	2b00      	cmp	r3, #0
    175a:	da06      	bge.n	176a <xvprintf+0x21a>
    175c:	6a3b      	ldr	r3, [r7, #32]
    175e:	425b      	negs	r3, r3
    1760:	623b      	str	r3, [r7, #32]
    1762:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1764:	2208      	movs	r2, #8
    1766:	4313      	orrs	r3, r2
    1768:	627b      	str	r3, [r7, #36]	; 0x24
    176a:	2300      	movs	r3, #0
    176c:	633b      	str	r3, [r7, #48]	; 0x30
    176e:	6a3b      	ldr	r3, [r7, #32]
    1770:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1772:	0018      	movs	r0, r3
    1774:	f000 fc5a 	bl	202c <__aeabi_uidivmod>
    1778:	000b      	movs	r3, r1
    177a:	001a      	movs	r2, r3
    177c:	231e      	movs	r3, #30
    177e:	18fb      	adds	r3, r7, r3
    1780:	701a      	strb	r2, [r3, #0]
    1782:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1784:	6a38      	ldr	r0, [r7, #32]
    1786:	f000 fbcb 	bl	1f20 <__aeabi_uidiv>
    178a:	0003      	movs	r3, r0
    178c:	623b      	str	r3, [r7, #32]
    178e:	231e      	movs	r3, #30
    1790:	18fb      	adds	r3, r7, r3
    1792:	781b      	ldrb	r3, [r3, #0]
    1794:	2b09      	cmp	r3, #9
    1796:	d90e      	bls.n	17b6 <xvprintf+0x266>
    1798:	231f      	movs	r3, #31
    179a:	18fb      	adds	r3, r7, r3
    179c:	781b      	ldrb	r3, [r3, #0]
    179e:	2b78      	cmp	r3, #120	; 0x78
    17a0:	d101      	bne.n	17a6 <xvprintf+0x256>
    17a2:	2327      	movs	r3, #39	; 0x27
    17a4:	e000      	b.n	17a8 <xvprintf+0x258>
    17a6:	2307      	movs	r3, #7
    17a8:	221e      	movs	r2, #30
    17aa:	18ba      	adds	r2, r7, r2
    17ac:	211e      	movs	r1, #30
    17ae:	1879      	adds	r1, r7, r1
    17b0:	7809      	ldrb	r1, [r1, #0]
    17b2:	185b      	adds	r3, r3, r1
    17b4:	7013      	strb	r3, [r2, #0]
    17b6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17b8:	1c5a      	adds	r2, r3, #1
    17ba:	633a      	str	r2, [r7, #48]	; 0x30
    17bc:	221e      	movs	r2, #30
    17be:	18ba      	adds	r2, r7, r2
    17c0:	7812      	ldrb	r2, [r2, #0]
    17c2:	3230      	adds	r2, #48	; 0x30
    17c4:	b2d1      	uxtb	r1, r2
    17c6:	2208      	movs	r2, #8
    17c8:	18ba      	adds	r2, r7, r2
    17ca:	54d1      	strb	r1, [r2, r3]
    17cc:	6a3b      	ldr	r3, [r7, #32]
    17ce:	2b00      	cmp	r3, #0
    17d0:	d002      	beq.n	17d8 <xvprintf+0x288>
    17d2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17d4:	2b0f      	cmp	r3, #15
    17d6:	d9ca      	bls.n	176e <xvprintf+0x21e>
    17d8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    17da:	2208      	movs	r2, #8
    17dc:	4013      	ands	r3, r2
    17de:	d006      	beq.n	17ee <xvprintf+0x29e>
    17e0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17e2:	1c5a      	adds	r2, r3, #1
    17e4:	633a      	str	r2, [r7, #48]	; 0x30
    17e6:	2208      	movs	r2, #8
    17e8:	18ba      	adds	r2, r7, r2
    17ea:	212d      	movs	r1, #45	; 0x2d
    17ec:	54d1      	strb	r1, [r2, r3]
    17ee:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    17f0:	62fb      	str	r3, [r7, #44]	; 0x2c
    17f2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    17f4:	2201      	movs	r2, #1
    17f6:	4013      	ands	r3, r2
    17f8:	d001      	beq.n	17fe <xvprintf+0x2ae>
    17fa:	2230      	movs	r2, #48	; 0x30
    17fc:	e000      	b.n	1800 <xvprintf+0x2b0>
    17fe:	2220      	movs	r2, #32
    1800:	231e      	movs	r3, #30
    1802:	18fb      	adds	r3, r7, r3
    1804:	701a      	strb	r2, [r3, #0]
    1806:	e005      	b.n	1814 <xvprintf+0x2c4>
    1808:	231e      	movs	r3, #30
    180a:	18fb      	adds	r3, r7, r3
    180c:	781b      	ldrb	r3, [r3, #0]
    180e:	0018      	movs	r0, r3
    1810:	f7ff fe3e 	bl	1490 <xputc>
    1814:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1816:	2202      	movs	r2, #2
    1818:	4013      	ands	r3, r2
    181a:	d105      	bne.n	1828 <xvprintf+0x2d8>
    181c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    181e:	1c5a      	adds	r2, r3, #1
    1820:	62fa      	str	r2, [r7, #44]	; 0x2c
    1822:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1824:	4293      	cmp	r3, r2
    1826:	d3ef      	bcc.n	1808 <xvprintf+0x2b8>
    1828:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    182a:	3b01      	subs	r3, #1
    182c:	633b      	str	r3, [r7, #48]	; 0x30
    182e:	2308      	movs	r3, #8
    1830:	18fa      	adds	r2, r7, r3
    1832:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1834:	18d3      	adds	r3, r2, r3
    1836:	781b      	ldrb	r3, [r3, #0]
    1838:	0018      	movs	r0, r3
    183a:	f7ff fe29 	bl	1490 <xputc>
    183e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1840:	2b00      	cmp	r3, #0
    1842:	d1f1      	bne.n	1828 <xvprintf+0x2d8>
    1844:	e002      	b.n	184c <xvprintf+0x2fc>
    1846:	2020      	movs	r0, #32
    1848:	f7ff fe22 	bl	1490 <xputc>
    184c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    184e:	1c5a      	adds	r2, r3, #1
    1850:	62fa      	str	r2, [r7, #44]	; 0x2c
    1852:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1854:	4293      	cmp	r3, r2
    1856:	d3f6      	bcc.n	1846 <xvprintf+0x2f6>
    1858:	e67f      	b.n	155a <xvprintf+0xa>
    185a:	46c0      	nop			; (mov r8, r8)
    185c:	e000      	b.n	1860 <xvprintf+0x310>
    185e:	46c0      	nop			; (mov r8, r8)
    1860:	46c0      	nop			; (mov r8, r8)
    1862:	46bd      	mov	sp, r7
    1864:	b00e      	add	sp, #56	; 0x38
    1866:	bd80      	pop	{r7, pc}
    1868:	00002048 	.word	0x00002048

0000186c <xprintf>:
    186c:	b40f      	push	{r0, r1, r2, r3}
    186e:	b580      	push	{r7, lr}
    1870:	b082      	sub	sp, #8
    1872:	af00      	add	r7, sp, #0
    1874:	2314      	movs	r3, #20
    1876:	18fb      	adds	r3, r7, r3
    1878:	607b      	str	r3, [r7, #4]
    187a:	687a      	ldr	r2, [r7, #4]
    187c:	693b      	ldr	r3, [r7, #16]
    187e:	0011      	movs	r1, r2
    1880:	0018      	movs	r0, r3
    1882:	f7ff fe65 	bl	1550 <xvprintf>
    1886:	46c0      	nop			; (mov r8, r8)
    1888:	46bd      	mov	sp, r7
    188a:	b002      	add	sp, #8
    188c:	bc80      	pop	{r7}
    188e:	bc08      	pop	{r3}
    1890:	b004      	add	sp, #16
    1892:	4718      	bx	r3

00001894 <xsprintf>:
    1894:	b40e      	push	{r1, r2, r3}
    1896:	b580      	push	{r7, lr}
    1898:	b085      	sub	sp, #20
    189a:	af00      	add	r7, sp, #0
    189c:	6078      	str	r0, [r7, #4]
    189e:	4b0d      	ldr	r3, [pc, #52]	; (18d4 <xsprintf+0x40>)
    18a0:	687a      	ldr	r2, [r7, #4]
    18a2:	601a      	str	r2, [r3, #0]
    18a4:	2320      	movs	r3, #32
    18a6:	18fb      	adds	r3, r7, r3
    18a8:	60fb      	str	r3, [r7, #12]
    18aa:	68fa      	ldr	r2, [r7, #12]
    18ac:	69fb      	ldr	r3, [r7, #28]
    18ae:	0011      	movs	r1, r2
    18b0:	0018      	movs	r0, r3
    18b2:	f7ff fe4d 	bl	1550 <xvprintf>
    18b6:	4b07      	ldr	r3, [pc, #28]	; (18d4 <xsprintf+0x40>)
    18b8:	681b      	ldr	r3, [r3, #0]
    18ba:	2200      	movs	r2, #0
    18bc:	701a      	strb	r2, [r3, #0]
    18be:	4b05      	ldr	r3, [pc, #20]	; (18d4 <xsprintf+0x40>)
    18c0:	2200      	movs	r2, #0
    18c2:	601a      	str	r2, [r3, #0]
    18c4:	46c0      	nop			; (mov r8, r8)
    18c6:	46bd      	mov	sp, r7
    18c8:	b005      	add	sp, #20
    18ca:	bc80      	pop	{r7}
    18cc:	bc08      	pop	{r3}
    18ce:	b003      	add	sp, #12
    18d0:	4718      	bx	r3
    18d2:	46c0      	nop			; (mov r8, r8)
    18d4:	20000580 	.word	0x20000580

000018d8 <xfprintf>:
    18d8:	b40e      	push	{r1, r2, r3}
    18da:	b580      	push	{r7, lr}
    18dc:	b085      	sub	sp, #20
    18de:	af00      	add	r7, sp, #0
    18e0:	6078      	str	r0, [r7, #4]
    18e2:	4b0c      	ldr	r3, [pc, #48]	; (1914 <xfprintf+0x3c>)
    18e4:	681b      	ldr	r3, [r3, #0]
    18e6:	60fb      	str	r3, [r7, #12]
    18e8:	4b0a      	ldr	r3, [pc, #40]	; (1914 <xfprintf+0x3c>)
    18ea:	687a      	ldr	r2, [r7, #4]
    18ec:	601a      	str	r2, [r3, #0]
    18ee:	2320      	movs	r3, #32
    18f0:	18fb      	adds	r3, r7, r3
    18f2:	60bb      	str	r3, [r7, #8]
    18f4:	68ba      	ldr	r2, [r7, #8]
    18f6:	69fb      	ldr	r3, [r7, #28]
    18f8:	0011      	movs	r1, r2
    18fa:	0018      	movs	r0, r3
    18fc:	f7ff fe28 	bl	1550 <xvprintf>
    1900:	4b04      	ldr	r3, [pc, #16]	; (1914 <xfprintf+0x3c>)
    1902:	68fa      	ldr	r2, [r7, #12]
    1904:	601a      	str	r2, [r3, #0]
    1906:	46c0      	nop			; (mov r8, r8)
    1908:	46bd      	mov	sp, r7
    190a:	b005      	add	sp, #20
    190c:	bc80      	pop	{r7}
    190e:	bc08      	pop	{r3}
    1910:	b003      	add	sp, #12
    1912:	4718      	bx	r3
    1914:	2000057c 	.word	0x2000057c

00001918 <put_dump>:
    1918:	b580      	push	{r7, lr}
    191a:	b088      	sub	sp, #32
    191c:	af00      	add	r7, sp, #0
    191e:	60f8      	str	r0, [r7, #12]
    1920:	60b9      	str	r1, [r7, #8]
    1922:	607a      	str	r2, [r7, #4]
    1924:	603b      	str	r3, [r7, #0]
    1926:	68ba      	ldr	r2, [r7, #8]
    1928:	4b38      	ldr	r3, [pc, #224]	; (1a0c <put_dump+0xf4>)
    192a:	0011      	movs	r1, r2
    192c:	0018      	movs	r0, r3
    192e:	f7ff ff9d 	bl	186c <xprintf>
    1932:	683b      	ldr	r3, [r7, #0]
    1934:	2b02      	cmp	r3, #2
    1936:	d03c      	beq.n	19b2 <put_dump+0x9a>
    1938:	2b04      	cmp	r3, #4
    193a:	d04d      	beq.n	19d8 <put_dump+0xc0>
    193c:	2b01      	cmp	r3, #1
    193e:	d15d      	bne.n	19fc <put_dump+0xe4>
    1940:	68fb      	ldr	r3, [r7, #12]
    1942:	613b      	str	r3, [r7, #16]
    1944:	2300      	movs	r3, #0
    1946:	61fb      	str	r3, [r7, #28]
    1948:	e00c      	b.n	1964 <put_dump+0x4c>
    194a:	69fb      	ldr	r3, [r7, #28]
    194c:	693a      	ldr	r2, [r7, #16]
    194e:	18d3      	adds	r3, r2, r3
    1950:	781b      	ldrb	r3, [r3, #0]
    1952:	001a      	movs	r2, r3
    1954:	4b2e      	ldr	r3, [pc, #184]	; (1a10 <put_dump+0xf8>)
    1956:	0011      	movs	r1, r2
    1958:	0018      	movs	r0, r3
    195a:	f7ff ff87 	bl	186c <xprintf>
    195e:	69fb      	ldr	r3, [r7, #28]
    1960:	3301      	adds	r3, #1
    1962:	61fb      	str	r3, [r7, #28]
    1964:	69fa      	ldr	r2, [r7, #28]
    1966:	687b      	ldr	r3, [r7, #4]
    1968:	429a      	cmp	r2, r3
    196a:	dbee      	blt.n	194a <put_dump+0x32>
    196c:	2020      	movs	r0, #32
    196e:	f7ff fd8f 	bl	1490 <xputc>
    1972:	2300      	movs	r3, #0
    1974:	61fb      	str	r3, [r7, #28]
    1976:	e017      	b.n	19a8 <put_dump+0x90>
    1978:	69fb      	ldr	r3, [r7, #28]
    197a:	693a      	ldr	r2, [r7, #16]
    197c:	18d3      	adds	r3, r2, r3
    197e:	781b      	ldrb	r3, [r3, #0]
    1980:	2b1f      	cmp	r3, #31
    1982:	d90a      	bls.n	199a <put_dump+0x82>
    1984:	69fb      	ldr	r3, [r7, #28]
    1986:	693a      	ldr	r2, [r7, #16]
    1988:	18d3      	adds	r3, r2, r3
    198a:	781b      	ldrb	r3, [r3, #0]
    198c:	2b7e      	cmp	r3, #126	; 0x7e
    198e:	d804      	bhi.n	199a <put_dump+0x82>
    1990:	69fb      	ldr	r3, [r7, #28]
    1992:	693a      	ldr	r2, [r7, #16]
    1994:	18d3      	adds	r3, r2, r3
    1996:	781b      	ldrb	r3, [r3, #0]
    1998:	e000      	b.n	199c <put_dump+0x84>
    199a:	232e      	movs	r3, #46	; 0x2e
    199c:	0018      	movs	r0, r3
    199e:	f7ff fd77 	bl	1490 <xputc>
    19a2:	69fb      	ldr	r3, [r7, #28]
    19a4:	3301      	adds	r3, #1
    19a6:	61fb      	str	r3, [r7, #28]
    19a8:	69fa      	ldr	r2, [r7, #28]
    19aa:	687b      	ldr	r3, [r7, #4]
    19ac:	429a      	cmp	r2, r3
    19ae:	dbe3      	blt.n	1978 <put_dump+0x60>
    19b0:	e024      	b.n	19fc <put_dump+0xe4>
    19b2:	68fb      	ldr	r3, [r7, #12]
    19b4:	61bb      	str	r3, [r7, #24]
    19b6:	69bb      	ldr	r3, [r7, #24]
    19b8:	1c9a      	adds	r2, r3, #2
    19ba:	61ba      	str	r2, [r7, #24]
    19bc:	881b      	ldrh	r3, [r3, #0]
    19be:	001a      	movs	r2, r3
    19c0:	4b14      	ldr	r3, [pc, #80]	; (1a14 <put_dump+0xfc>)
    19c2:	0011      	movs	r1, r2
    19c4:	0018      	movs	r0, r3
    19c6:	f7ff ff51 	bl	186c <xprintf>
    19ca:	687b      	ldr	r3, [r7, #4]
    19cc:	3b01      	subs	r3, #1
    19ce:	607b      	str	r3, [r7, #4]
    19d0:	687b      	ldr	r3, [r7, #4]
    19d2:	2b00      	cmp	r3, #0
    19d4:	d1ef      	bne.n	19b6 <put_dump+0x9e>
    19d6:	e011      	b.n	19fc <put_dump+0xe4>
    19d8:	68fb      	ldr	r3, [r7, #12]
    19da:	617b      	str	r3, [r7, #20]
    19dc:	697b      	ldr	r3, [r7, #20]
    19de:	1d1a      	adds	r2, r3, #4
    19e0:	617a      	str	r2, [r7, #20]
    19e2:	681a      	ldr	r2, [r3, #0]
    19e4:	4b0c      	ldr	r3, [pc, #48]	; (1a18 <put_dump+0x100>)
    19e6:	0011      	movs	r1, r2
    19e8:	0018      	movs	r0, r3
    19ea:	f7ff ff3f 	bl	186c <xprintf>
    19ee:	687b      	ldr	r3, [r7, #4]
    19f0:	3b01      	subs	r3, #1
    19f2:	607b      	str	r3, [r7, #4]
    19f4:	687b      	ldr	r3, [r7, #4]
    19f6:	2b00      	cmp	r3, #0
    19f8:	d1f0      	bne.n	19dc <put_dump+0xc4>
    19fa:	46c0      	nop			; (mov r8, r8)
    19fc:	200a      	movs	r0, #10
    19fe:	f7ff fd47 	bl	1490 <xputc>
    1a02:	46c0      	nop			; (mov r8, r8)
    1a04:	46bd      	mov	sp, r7
    1a06:	b008      	add	sp, #32
    1a08:	bd80      	pop	{r7, pc}
    1a0a:	46c0      	nop			; (mov r8, r8)
    1a0c:	000020a4 	.word	0x000020a4
    1a10:	000020ac 	.word	0x000020ac
    1a14:	000020b4 	.word	0x000020b4
    1a18:	000020bc 	.word	0x000020bc

00001a1c <xgets>:
    1a1c:	b580      	push	{r7, lr}
    1a1e:	b084      	sub	sp, #16
    1a20:	af00      	add	r7, sp, #0
    1a22:	6078      	str	r0, [r7, #4]
    1a24:	6039      	str	r1, [r7, #0]
    1a26:	4b24      	ldr	r3, [pc, #144]	; (1ab8 <xgets+0x9c>)
    1a28:	681b      	ldr	r3, [r3, #0]
    1a2a:	2b00      	cmp	r3, #0
    1a2c:	d101      	bne.n	1a32 <xgets+0x16>
    1a2e:	2300      	movs	r3, #0
    1a30:	e03e      	b.n	1ab0 <xgets+0x94>
    1a32:	2300      	movs	r3, #0
    1a34:	60fb      	str	r3, [r7, #12]
    1a36:	4b20      	ldr	r3, [pc, #128]	; (1ab8 <xgets+0x9c>)
    1a38:	681b      	ldr	r3, [r3, #0]
    1a3a:	4798      	blx	r3
    1a3c:	0003      	movs	r3, r0
    1a3e:	60bb      	str	r3, [r7, #8]
    1a40:	68bb      	ldr	r3, [r7, #8]
    1a42:	2b00      	cmp	r3, #0
    1a44:	d101      	bne.n	1a4a <xgets+0x2e>
    1a46:	2300      	movs	r3, #0
    1a48:	e032      	b.n	1ab0 <xgets+0x94>
    1a4a:	68bb      	ldr	r3, [r7, #8]
    1a4c:	2b0d      	cmp	r3, #13
    1a4e:	d025      	beq.n	1a9c <xgets+0x80>
    1a50:	68bb      	ldr	r3, [r7, #8]
    1a52:	2b08      	cmp	r3, #8
    1a54:	d10b      	bne.n	1a6e <xgets+0x52>
    1a56:	68fb      	ldr	r3, [r7, #12]
    1a58:	2b00      	cmp	r3, #0
    1a5a:	d008      	beq.n	1a6e <xgets+0x52>
    1a5c:	68fb      	ldr	r3, [r7, #12]
    1a5e:	3b01      	subs	r3, #1
    1a60:	60fb      	str	r3, [r7, #12]
    1a62:	68bb      	ldr	r3, [r7, #8]
    1a64:	b2db      	uxtb	r3, r3
    1a66:	0018      	movs	r0, r3
    1a68:	f7ff fd12 	bl	1490 <xputc>
    1a6c:	e015      	b.n	1a9a <xgets+0x7e>
    1a6e:	68bb      	ldr	r3, [r7, #8]
    1a70:	2b1f      	cmp	r3, #31
    1a72:	dde0      	ble.n	1a36 <xgets+0x1a>
    1a74:	683b      	ldr	r3, [r7, #0]
    1a76:	1e5a      	subs	r2, r3, #1
    1a78:	68fb      	ldr	r3, [r7, #12]
    1a7a:	429a      	cmp	r2, r3
    1a7c:	dddb      	ble.n	1a36 <xgets+0x1a>
    1a7e:	68fb      	ldr	r3, [r7, #12]
    1a80:	1c5a      	adds	r2, r3, #1
    1a82:	60fa      	str	r2, [r7, #12]
    1a84:	001a      	movs	r2, r3
    1a86:	687b      	ldr	r3, [r7, #4]
    1a88:	189b      	adds	r3, r3, r2
    1a8a:	68ba      	ldr	r2, [r7, #8]
    1a8c:	b2d2      	uxtb	r2, r2
    1a8e:	701a      	strb	r2, [r3, #0]
    1a90:	68bb      	ldr	r3, [r7, #8]
    1a92:	b2db      	uxtb	r3, r3
    1a94:	0018      	movs	r0, r3
    1a96:	f7ff fcfb 	bl	1490 <xputc>
    1a9a:	e7cc      	b.n	1a36 <xgets+0x1a>
    1a9c:	46c0      	nop			; (mov r8, r8)
    1a9e:	68fb      	ldr	r3, [r7, #12]
    1aa0:	687a      	ldr	r2, [r7, #4]
    1aa2:	18d3      	adds	r3, r2, r3
    1aa4:	2200      	movs	r2, #0
    1aa6:	701a      	strb	r2, [r3, #0]
    1aa8:	200a      	movs	r0, #10
    1aaa:	f7ff fcf1 	bl	1490 <xputc>
    1aae:	2301      	movs	r3, #1
    1ab0:	0018      	movs	r0, r3
    1ab2:	46bd      	mov	sp, r7
    1ab4:	b004      	add	sp, #16
    1ab6:	bd80      	pop	{r7, pc}
    1ab8:	20000584 	.word	0x20000584

00001abc <xfgets>:
    1abc:	b580      	push	{r7, lr}
    1abe:	b086      	sub	sp, #24
    1ac0:	af00      	add	r7, sp, #0
    1ac2:	60f8      	str	r0, [r7, #12]
    1ac4:	60b9      	str	r1, [r7, #8]
    1ac6:	607a      	str	r2, [r7, #4]
    1ac8:	4b0a      	ldr	r3, [pc, #40]	; (1af4 <xfgets+0x38>)
    1aca:	681b      	ldr	r3, [r3, #0]
    1acc:	617b      	str	r3, [r7, #20]
    1ace:	4b09      	ldr	r3, [pc, #36]	; (1af4 <xfgets+0x38>)
    1ad0:	68fa      	ldr	r2, [r7, #12]
    1ad2:	601a      	str	r2, [r3, #0]
    1ad4:	687a      	ldr	r2, [r7, #4]
    1ad6:	68bb      	ldr	r3, [r7, #8]
    1ad8:	0011      	movs	r1, r2
    1ada:	0018      	movs	r0, r3
    1adc:	f7ff ff9e 	bl	1a1c <xgets>
    1ae0:	0003      	movs	r3, r0
    1ae2:	613b      	str	r3, [r7, #16]
    1ae4:	4b03      	ldr	r3, [pc, #12]	; (1af4 <xfgets+0x38>)
    1ae6:	697a      	ldr	r2, [r7, #20]
    1ae8:	601a      	str	r2, [r3, #0]
    1aea:	693b      	ldr	r3, [r7, #16]
    1aec:	0018      	movs	r0, r3
    1aee:	46bd      	mov	sp, r7
    1af0:	b006      	add	sp, #24
    1af2:	bd80      	pop	{r7, pc}
    1af4:	20000584 	.word	0x20000584

00001af8 <xatoi>:
    1af8:	b580      	push	{r7, lr}
    1afa:	b084      	sub	sp, #16
    1afc:	af00      	add	r7, sp, #0
    1afe:	6078      	str	r0, [r7, #4]
    1b00:	6039      	str	r1, [r7, #0]
    1b02:	2309      	movs	r3, #9
    1b04:	18fb      	adds	r3, r7, r3
    1b06:	2200      	movs	r2, #0
    1b08:	701a      	strb	r2, [r3, #0]
    1b0a:	683b      	ldr	r3, [r7, #0]
    1b0c:	2200      	movs	r2, #0
    1b0e:	601a      	str	r2, [r3, #0]
    1b10:	e004      	b.n	1b1c <xatoi+0x24>
    1b12:	687b      	ldr	r3, [r7, #4]
    1b14:	681b      	ldr	r3, [r3, #0]
    1b16:	1c5a      	adds	r2, r3, #1
    1b18:	687b      	ldr	r3, [r7, #4]
    1b1a:	601a      	str	r2, [r3, #0]
    1b1c:	687b      	ldr	r3, [r7, #4]
    1b1e:	681a      	ldr	r2, [r3, #0]
    1b20:	230b      	movs	r3, #11
    1b22:	18fb      	adds	r3, r7, r3
    1b24:	7812      	ldrb	r2, [r2, #0]
    1b26:	701a      	strb	r2, [r3, #0]
    1b28:	230b      	movs	r3, #11
    1b2a:	18fb      	adds	r3, r7, r3
    1b2c:	781b      	ldrb	r3, [r3, #0]
    1b2e:	2b20      	cmp	r3, #32
    1b30:	d0ef      	beq.n	1b12 <xatoi+0x1a>
    1b32:	230b      	movs	r3, #11
    1b34:	18fb      	adds	r3, r7, r3
    1b36:	781b      	ldrb	r3, [r3, #0]
    1b38:	2b2d      	cmp	r3, #45	; 0x2d
    1b3a:	d10e      	bne.n	1b5a <xatoi+0x62>
    1b3c:	2309      	movs	r3, #9
    1b3e:	18fb      	adds	r3, r7, r3
    1b40:	2201      	movs	r2, #1
    1b42:	701a      	strb	r2, [r3, #0]
    1b44:	687b      	ldr	r3, [r7, #4]
    1b46:	681b      	ldr	r3, [r3, #0]
    1b48:	1c5a      	adds	r2, r3, #1
    1b4a:	687b      	ldr	r3, [r7, #4]
    1b4c:	601a      	str	r2, [r3, #0]
    1b4e:	687b      	ldr	r3, [r7, #4]
    1b50:	681a      	ldr	r2, [r3, #0]
    1b52:	230b      	movs	r3, #11
    1b54:	18fb      	adds	r3, r7, r3
    1b56:	7812      	ldrb	r2, [r2, #0]
    1b58:	701a      	strb	r2, [r3, #0]
    1b5a:	230b      	movs	r3, #11
    1b5c:	18fb      	adds	r3, r7, r3
    1b5e:	781b      	ldrb	r3, [r3, #0]
    1b60:	2b30      	cmp	r3, #48	; 0x30
    1b62:	d149      	bne.n	1bf8 <xatoi+0x100>
    1b64:	687b      	ldr	r3, [r7, #4]
    1b66:	681b      	ldr	r3, [r3, #0]
    1b68:	1c5a      	adds	r2, r3, #1
    1b6a:	687b      	ldr	r3, [r7, #4]
    1b6c:	601a      	str	r2, [r3, #0]
    1b6e:	687b      	ldr	r3, [r7, #4]
    1b70:	681a      	ldr	r2, [r3, #0]
    1b72:	230b      	movs	r3, #11
    1b74:	18fb      	adds	r3, r7, r3
    1b76:	7812      	ldrb	r2, [r2, #0]
    1b78:	701a      	strb	r2, [r3, #0]
    1b7a:	230b      	movs	r3, #11
    1b7c:	18fb      	adds	r3, r7, r3
    1b7e:	781b      	ldrb	r3, [r3, #0]
    1b80:	2b62      	cmp	r3, #98	; 0x62
    1b82:	d011      	beq.n	1ba8 <xatoi+0xb0>
    1b84:	2b78      	cmp	r3, #120	; 0x78
    1b86:	d11f      	bne.n	1bc8 <xatoi+0xd0>
    1b88:	230a      	movs	r3, #10
    1b8a:	18fb      	adds	r3, r7, r3
    1b8c:	2210      	movs	r2, #16
    1b8e:	701a      	strb	r2, [r3, #0]
    1b90:	687b      	ldr	r3, [r7, #4]
    1b92:	681b      	ldr	r3, [r3, #0]
    1b94:	1c5a      	adds	r2, r3, #1
    1b96:	687b      	ldr	r3, [r7, #4]
    1b98:	601a      	str	r2, [r3, #0]
    1b9a:	687b      	ldr	r3, [r7, #4]
    1b9c:	681a      	ldr	r2, [r3, #0]
    1b9e:	230b      	movs	r3, #11
    1ba0:	18fb      	adds	r3, r7, r3
    1ba2:	7812      	ldrb	r2, [r2, #0]
    1ba4:	701a      	strb	r2, [r3, #0]
    1ba6:	e037      	b.n	1c18 <xatoi+0x120>
    1ba8:	230a      	movs	r3, #10
    1baa:	18fb      	adds	r3, r7, r3
    1bac:	2202      	movs	r2, #2
    1bae:	701a      	strb	r2, [r3, #0]
    1bb0:	687b      	ldr	r3, [r7, #4]
    1bb2:	681b      	ldr	r3, [r3, #0]
    1bb4:	1c5a      	adds	r2, r3, #1
    1bb6:	687b      	ldr	r3, [r7, #4]
    1bb8:	601a      	str	r2, [r3, #0]
    1bba:	687b      	ldr	r3, [r7, #4]
    1bbc:	681a      	ldr	r2, [r3, #0]
    1bbe:	230b      	movs	r3, #11
    1bc0:	18fb      	adds	r3, r7, r3
    1bc2:	7812      	ldrb	r2, [r2, #0]
    1bc4:	701a      	strb	r2, [r3, #0]
    1bc6:	e027      	b.n	1c18 <xatoi+0x120>
    1bc8:	230b      	movs	r3, #11
    1bca:	18fb      	adds	r3, r7, r3
    1bcc:	781b      	ldrb	r3, [r3, #0]
    1bce:	2b20      	cmp	r3, #32
    1bd0:	d801      	bhi.n	1bd6 <xatoi+0xde>
    1bd2:	2301      	movs	r3, #1
    1bd4:	e079      	b.n	1cca <xatoi+0x1d2>
    1bd6:	230b      	movs	r3, #11
    1bd8:	18fb      	adds	r3, r7, r3
    1bda:	781b      	ldrb	r3, [r3, #0]
    1bdc:	2b2f      	cmp	r3, #47	; 0x2f
    1bde:	d904      	bls.n	1bea <xatoi+0xf2>
    1be0:	230b      	movs	r3, #11
    1be2:	18fb      	adds	r3, r7, r3
    1be4:	781b      	ldrb	r3, [r3, #0]
    1be6:	2b39      	cmp	r3, #57	; 0x39
    1be8:	d901      	bls.n	1bee <xatoi+0xf6>
    1bea:	2300      	movs	r3, #0
    1bec:	e06d      	b.n	1cca <xatoi+0x1d2>
    1bee:	230a      	movs	r3, #10
    1bf0:	18fb      	adds	r3, r7, r3
    1bf2:	2208      	movs	r2, #8
    1bf4:	701a      	strb	r2, [r3, #0]
    1bf6:	e00f      	b.n	1c18 <xatoi+0x120>
    1bf8:	230b      	movs	r3, #11
    1bfa:	18fb      	adds	r3, r7, r3
    1bfc:	781b      	ldrb	r3, [r3, #0]
    1bfe:	2b2f      	cmp	r3, #47	; 0x2f
    1c00:	d904      	bls.n	1c0c <xatoi+0x114>
    1c02:	230b      	movs	r3, #11
    1c04:	18fb      	adds	r3, r7, r3
    1c06:	781b      	ldrb	r3, [r3, #0]
    1c08:	2b39      	cmp	r3, #57	; 0x39
    1c0a:	d901      	bls.n	1c10 <xatoi+0x118>
    1c0c:	2300      	movs	r3, #0
    1c0e:	e05c      	b.n	1cca <xatoi+0x1d2>
    1c10:	230a      	movs	r3, #10
    1c12:	18fb      	adds	r3, r7, r3
    1c14:	220a      	movs	r2, #10
    1c16:	701a      	strb	r2, [r3, #0]
    1c18:	2300      	movs	r3, #0
    1c1a:	60fb      	str	r3, [r7, #12]
    1c1c:	e044      	b.n	1ca8 <xatoi+0x1b0>
    1c1e:	230b      	movs	r3, #11
    1c20:	18fb      	adds	r3, r7, r3
    1c22:	781b      	ldrb	r3, [r3, #0]
    1c24:	2b60      	cmp	r3, #96	; 0x60
    1c26:	d906      	bls.n	1c36 <xatoi+0x13e>
    1c28:	230b      	movs	r3, #11
    1c2a:	18fb      	adds	r3, r7, r3
    1c2c:	220b      	movs	r2, #11
    1c2e:	18ba      	adds	r2, r7, r2
    1c30:	7812      	ldrb	r2, [r2, #0]
    1c32:	3a20      	subs	r2, #32
    1c34:	701a      	strb	r2, [r3, #0]
    1c36:	230b      	movs	r3, #11
    1c38:	18fb      	adds	r3, r7, r3
    1c3a:	220b      	movs	r2, #11
    1c3c:	18ba      	adds	r2, r7, r2
    1c3e:	7812      	ldrb	r2, [r2, #0]
    1c40:	3a30      	subs	r2, #48	; 0x30
    1c42:	701a      	strb	r2, [r3, #0]
    1c44:	230b      	movs	r3, #11
    1c46:	18fb      	adds	r3, r7, r3
    1c48:	781b      	ldrb	r3, [r3, #0]
    1c4a:	2b10      	cmp	r3, #16
    1c4c:	d90d      	bls.n	1c6a <xatoi+0x172>
    1c4e:	230b      	movs	r3, #11
    1c50:	18fb      	adds	r3, r7, r3
    1c52:	220b      	movs	r2, #11
    1c54:	18ba      	adds	r2, r7, r2
    1c56:	7812      	ldrb	r2, [r2, #0]
    1c58:	3a07      	subs	r2, #7
    1c5a:	701a      	strb	r2, [r3, #0]
    1c5c:	230b      	movs	r3, #11
    1c5e:	18fb      	adds	r3, r7, r3
    1c60:	781b      	ldrb	r3, [r3, #0]
    1c62:	2b09      	cmp	r3, #9
    1c64:	d801      	bhi.n	1c6a <xatoi+0x172>
    1c66:	2300      	movs	r3, #0
    1c68:	e02f      	b.n	1cca <xatoi+0x1d2>
    1c6a:	230b      	movs	r3, #11
    1c6c:	18fa      	adds	r2, r7, r3
    1c6e:	230a      	movs	r3, #10
    1c70:	18fb      	adds	r3, r7, r3
    1c72:	7812      	ldrb	r2, [r2, #0]
    1c74:	781b      	ldrb	r3, [r3, #0]
    1c76:	429a      	cmp	r2, r3
    1c78:	d301      	bcc.n	1c7e <xatoi+0x186>
    1c7a:	2300      	movs	r3, #0
    1c7c:	e025      	b.n	1cca <xatoi+0x1d2>
    1c7e:	230a      	movs	r3, #10
    1c80:	18fb      	adds	r3, r7, r3
    1c82:	781b      	ldrb	r3, [r3, #0]
    1c84:	68fa      	ldr	r2, [r7, #12]
    1c86:	435a      	muls	r2, r3
    1c88:	230b      	movs	r3, #11
    1c8a:	18fb      	adds	r3, r7, r3
    1c8c:	781b      	ldrb	r3, [r3, #0]
    1c8e:	18d3      	adds	r3, r2, r3
    1c90:	60fb      	str	r3, [r7, #12]
    1c92:	687b      	ldr	r3, [r7, #4]
    1c94:	681b      	ldr	r3, [r3, #0]
    1c96:	1c5a      	adds	r2, r3, #1
    1c98:	687b      	ldr	r3, [r7, #4]
    1c9a:	601a      	str	r2, [r3, #0]
    1c9c:	687b      	ldr	r3, [r7, #4]
    1c9e:	681a      	ldr	r2, [r3, #0]
    1ca0:	230b      	movs	r3, #11
    1ca2:	18fb      	adds	r3, r7, r3
    1ca4:	7812      	ldrb	r2, [r2, #0]
    1ca6:	701a      	strb	r2, [r3, #0]
    1ca8:	230b      	movs	r3, #11
    1caa:	18fb      	adds	r3, r7, r3
    1cac:	781b      	ldrb	r3, [r3, #0]
    1cae:	2b20      	cmp	r3, #32
    1cb0:	d8b5      	bhi.n	1c1e <xatoi+0x126>
    1cb2:	2309      	movs	r3, #9
    1cb4:	18fb      	adds	r3, r7, r3
    1cb6:	781b      	ldrb	r3, [r3, #0]
    1cb8:	2b00      	cmp	r3, #0
    1cba:	d002      	beq.n	1cc2 <xatoi+0x1ca>
    1cbc:	68fb      	ldr	r3, [r7, #12]
    1cbe:	425b      	negs	r3, r3
    1cc0:	60fb      	str	r3, [r7, #12]
    1cc2:	68fa      	ldr	r2, [r7, #12]
    1cc4:	683b      	ldr	r3, [r7, #0]
    1cc6:	601a      	str	r2, [r3, #0]
    1cc8:	2301      	movs	r3, #1
    1cca:	0018      	movs	r0, r3
    1ccc:	46bd      	mov	sp, r7
    1cce:	b004      	add	sp, #16
    1cd0:	bd80      	pop	{r7, pc}
    1cd2:	46c0      	nop			; (mov r8, r8)

00001cd4 <mil_cpy>:
    1cd4:	8802      	ldrh	r2, [r0, #0]
    1cd6:	4b30      	ldr	r3, [pc, #192]	; (1d98 <mil_cpy+0xc4>)
    1cd8:	601a      	str	r2, [r3, #0]
    1cda:	8842      	ldrh	r2, [r0, #2]
    1cdc:	4b2f      	ldr	r3, [pc, #188]	; (1d9c <mil_cpy+0xc8>)
    1cde:	601a      	str	r2, [r3, #0]
    1ce0:	8882      	ldrh	r2, [r0, #4]
    1ce2:	4b2f      	ldr	r3, [pc, #188]	; (1da0 <mil_cpy+0xcc>)
    1ce4:	601a      	str	r2, [r3, #0]
    1ce6:	88c2      	ldrh	r2, [r0, #6]
    1ce8:	4b2e      	ldr	r3, [pc, #184]	; (1da4 <mil_cpy+0xd0>)
    1cea:	601a      	str	r2, [r3, #0]
    1cec:	8902      	ldrh	r2, [r0, #8]
    1cee:	4b2e      	ldr	r3, [pc, #184]	; (1da8 <mil_cpy+0xd4>)
    1cf0:	601a      	str	r2, [r3, #0]
    1cf2:	8942      	ldrh	r2, [r0, #10]
    1cf4:	4b2d      	ldr	r3, [pc, #180]	; (1dac <mil_cpy+0xd8>)
    1cf6:	601a      	str	r2, [r3, #0]
    1cf8:	8982      	ldrh	r2, [r0, #12]
    1cfa:	4b2d      	ldr	r3, [pc, #180]	; (1db0 <mil_cpy+0xdc>)
    1cfc:	601a      	str	r2, [r3, #0]
    1cfe:	89c2      	ldrh	r2, [r0, #14]
    1d00:	4b2c      	ldr	r3, [pc, #176]	; (1db4 <mil_cpy+0xe0>)
    1d02:	601a      	str	r2, [r3, #0]
    1d04:	8a02      	ldrh	r2, [r0, #16]
    1d06:	4b2c      	ldr	r3, [pc, #176]	; (1db8 <mil_cpy+0xe4>)
    1d08:	601a      	str	r2, [r3, #0]
    1d0a:	8a42      	ldrh	r2, [r0, #18]
    1d0c:	4b2b      	ldr	r3, [pc, #172]	; (1dbc <mil_cpy+0xe8>)
    1d0e:	601a      	str	r2, [r3, #0]
    1d10:	8a82      	ldrh	r2, [r0, #20]
    1d12:	4b2b      	ldr	r3, [pc, #172]	; (1dc0 <mil_cpy+0xec>)
    1d14:	601a      	str	r2, [r3, #0]
    1d16:	8ac2      	ldrh	r2, [r0, #22]
    1d18:	4b2a      	ldr	r3, [pc, #168]	; (1dc4 <mil_cpy+0xf0>)
    1d1a:	601a      	str	r2, [r3, #0]
    1d1c:	8b02      	ldrh	r2, [r0, #24]
    1d1e:	4b2a      	ldr	r3, [pc, #168]	; (1dc8 <mil_cpy+0xf4>)
    1d20:	601a      	str	r2, [r3, #0]
    1d22:	8b42      	ldrh	r2, [r0, #26]
    1d24:	4b29      	ldr	r3, [pc, #164]	; (1dcc <mil_cpy+0xf8>)
    1d26:	601a      	str	r2, [r3, #0]
    1d28:	8b82      	ldrh	r2, [r0, #28]
    1d2a:	4b29      	ldr	r3, [pc, #164]	; (1dd0 <mil_cpy+0xfc>)
    1d2c:	601a      	str	r2, [r3, #0]
    1d2e:	8bc2      	ldrh	r2, [r0, #30]
    1d30:	4b28      	ldr	r3, [pc, #160]	; (1dd4 <mil_cpy+0x100>)
    1d32:	601a      	str	r2, [r3, #0]
    1d34:	8c02      	ldrh	r2, [r0, #32]
    1d36:	4b28      	ldr	r3, [pc, #160]	; (1dd8 <mil_cpy+0x104>)
    1d38:	601a      	str	r2, [r3, #0]
    1d3a:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    1d3c:	4b27      	ldr	r3, [pc, #156]	; (1ddc <mil_cpy+0x108>)
    1d3e:	601a      	str	r2, [r3, #0]
    1d40:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1d42:	4b27      	ldr	r3, [pc, #156]	; (1de0 <mil_cpy+0x10c>)
    1d44:	601a      	str	r2, [r3, #0]
    1d46:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1d48:	4b26      	ldr	r3, [pc, #152]	; (1de4 <mil_cpy+0x110>)
    1d4a:	601a      	str	r2, [r3, #0]
    1d4c:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    1d4e:	4b26      	ldr	r3, [pc, #152]	; (1de8 <mil_cpy+0x114>)
    1d50:	601a      	str	r2, [r3, #0]
    1d52:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1d54:	4b25      	ldr	r3, [pc, #148]	; (1dec <mil_cpy+0x118>)
    1d56:	601a      	str	r2, [r3, #0]
    1d58:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    1d5a:	4b25      	ldr	r3, [pc, #148]	; (1df0 <mil_cpy+0x11c>)
    1d5c:	601a      	str	r2, [r3, #0]
    1d5e:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1d60:	4b24      	ldr	r3, [pc, #144]	; (1df4 <mil_cpy+0x120>)
    1d62:	601a      	str	r2, [r3, #0]
    1d64:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1d66:	4b24      	ldr	r3, [pc, #144]	; (1df8 <mil_cpy+0x124>)
    1d68:	601a      	str	r2, [r3, #0]
    1d6a:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    1d6c:	4b23      	ldr	r3, [pc, #140]	; (1dfc <mil_cpy+0x128>)
    1d6e:	601a      	str	r2, [r3, #0]
    1d70:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1d72:	4b23      	ldr	r3, [pc, #140]	; (1e00 <mil_cpy+0x12c>)
    1d74:	601a      	str	r2, [r3, #0]
    1d76:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1d78:	4b22      	ldr	r3, [pc, #136]	; (1e04 <mil_cpy+0x130>)
    1d7a:	601a      	str	r2, [r3, #0]
    1d7c:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    1d7e:	4b22      	ldr	r3, [pc, #136]	; (1e08 <mil_cpy+0x134>)
    1d80:	601a      	str	r2, [r3, #0]
    1d82:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1d84:	4b21      	ldr	r3, [pc, #132]	; (1e0c <mil_cpy+0x138>)
    1d86:	601a      	str	r2, [r3, #0]
    1d88:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    1d8a:	4b21      	ldr	r3, [pc, #132]	; (1e10 <mil_cpy+0x13c>)
    1d8c:	601a      	str	r2, [r3, #0]
    1d8e:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1d90:	4b20      	ldr	r3, [pc, #128]	; (1e14 <mil_cpy+0x140>)
    1d92:	601a      	str	r2, [r3, #0]
    1d94:	4770      	bx	lr
    1d96:	46c0      	nop			; (mov r8, r8)
    1d98:	40048080 	.word	0x40048080
    1d9c:	40048084 	.word	0x40048084
    1da0:	40048088 	.word	0x40048088
    1da4:	4004808c 	.word	0x4004808c
    1da8:	40048090 	.word	0x40048090
    1dac:	40048094 	.word	0x40048094
    1db0:	40048098 	.word	0x40048098
    1db4:	4004809c 	.word	0x4004809c
    1db8:	400480a0 	.word	0x400480a0
    1dbc:	400480a4 	.word	0x400480a4
    1dc0:	400480a8 	.word	0x400480a8
    1dc4:	400480ac 	.word	0x400480ac
    1dc8:	400480b0 	.word	0x400480b0
    1dcc:	400480b4 	.word	0x400480b4
    1dd0:	400480b8 	.word	0x400480b8
    1dd4:	400480bc 	.word	0x400480bc
    1dd8:	400480c0 	.word	0x400480c0
    1ddc:	400480c4 	.word	0x400480c4
    1de0:	400480c8 	.word	0x400480c8
    1de4:	400480cc 	.word	0x400480cc
    1de8:	400480d0 	.word	0x400480d0
    1dec:	400480d4 	.word	0x400480d4
    1df0:	400480d8 	.word	0x400480d8
    1df4:	400480dc 	.word	0x400480dc
    1df8:	400480e0 	.word	0x400480e0
    1dfc:	400480e4 	.word	0x400480e4
    1e00:	400480e8 	.word	0x400480e8
    1e04:	400480ec 	.word	0x400480ec
    1e08:	400480f0 	.word	0x400480f0
    1e0c:	400480f4 	.word	0x400480f4
    1e10:	400480f8 	.word	0x400480f8
    1e14:	400480fc 	.word	0x400480fc

00001e18 <adc_init>:
    1e18:	b580      	push	{r7, lr}
    1e1a:	af00      	add	r7, sp, #0
    1e1c:	4b06      	ldr	r3, [pc, #24]	; (1e38 <adc_init+0x20>)
    1e1e:	4a06      	ldr	r2, [pc, #24]	; (1e38 <adc_init+0x20>)
    1e20:	69d2      	ldr	r2, [r2, #28]
    1e22:	2180      	movs	r1, #128	; 0x80
    1e24:	0289      	lsls	r1, r1, #10
    1e26:	430a      	orrs	r2, r1
    1e28:	61da      	str	r2, [r3, #28]
    1e2a:	4b03      	ldr	r3, [pc, #12]	; (1e38 <adc_init+0x20>)
    1e2c:	4a03      	ldr	r2, [pc, #12]	; (1e3c <adc_init+0x24>)
    1e2e:	615a      	str	r2, [r3, #20]
    1e30:	46c0      	nop			; (mov r8, r8)
    1e32:	46bd      	mov	sp, r7
    1e34:	bd80      	pop	{r7, pc}
    1e36:	46c0      	nop			; (mov r8, r8)
    1e38:	40020000 	.word	0x40020000
    1e3c:	00002020 	.word	0x00002020

00001e40 <adc_update>:
    1e40:	b580      	push	{r7, lr}
    1e42:	b082      	sub	sp, #8
    1e44:	af00      	add	r7, sp, #0
    1e46:	6078      	str	r0, [r7, #4]
    1e48:	687b      	ldr	r3, [r7, #4]
    1e4a:	2207      	movs	r2, #7
    1e4c:	4013      	ands	r3, r2
    1e4e:	607b      	str	r3, [r7, #4]
    1e50:	4b05      	ldr	r3, [pc, #20]	; (1e68 <adc_update+0x28>)
    1e52:	687a      	ldr	r2, [r7, #4]
    1e54:	0112      	lsls	r2, r2, #4
    1e56:	3207      	adds	r2, #7
    1e58:	601a      	str	r2, [r3, #0]
    1e5a:	4b03      	ldr	r3, [pc, #12]	; (1e68 <adc_update+0x28>)
    1e5c:	699b      	ldr	r3, [r3, #24]
    1e5e:	0018      	movs	r0, r3
    1e60:	46bd      	mov	sp, r7
    1e62:	b002      	add	sp, #8
    1e64:	bd80      	pop	{r7, pc}
    1e66:	46c0      	nop			; (mov r8, r8)
    1e68:	40088000 	.word	0x40088000

00001e6c <adc_dma_init>:
    1e6c:	b580      	push	{r7, lr}
    1e6e:	af00      	add	r7, sp, #0
    1e70:	f7ff ffd2 	bl	1e18 <adc_init>
    1e74:	46c0      	nop			; (mov r8, r8)
    1e76:	46bd      	mov	sp, r7
    1e78:	bd80      	pop	{r7, pc}
    1e7a:	46c0      	nop			; (mov r8, r8)

00001e7c <adc_dma_start>:
    1e7c:	b580      	push	{r7, lr}
    1e7e:	af00      	add	r7, sp, #0
    1e80:	4b04      	ldr	r3, [pc, #16]	; (1e94 <adc_dma_start+0x18>)
    1e82:	4a04      	ldr	r2, [pc, #16]	; (1e94 <adc_dma_start+0x18>)
    1e84:	6812      	ldr	r2, [r2, #0]
    1e86:	2102      	movs	r1, #2
    1e88:	430a      	orrs	r2, r1
    1e8a:	601a      	str	r2, [r3, #0]
    1e8c:	46c0      	nop			; (mov r8, r8)
    1e8e:	46bd      	mov	sp, r7
    1e90:	bd80      	pop	{r7, pc}
    1e92:	46c0      	nop			; (mov r8, r8)
    1e94:	40088000 	.word	0x40088000

00001e98 <adc_dma_wait>:
    1e98:	b580      	push	{r7, lr}
    1e9a:	af00      	add	r7, sp, #0
    1e9c:	46c0      	nop			; (mov r8, r8)
    1e9e:	4a08      	ldr	r2, [pc, #32]	; (1ec0 <adc_dma_wait+0x28>)
    1ea0:	23f4      	movs	r3, #244	; 0xf4
    1ea2:	005b      	lsls	r3, r3, #1
    1ea4:	58d3      	ldr	r3, [r2, r3]
    1ea6:	2207      	movs	r2, #7
    1ea8:	4013      	ands	r3, r2
    1eaa:	d1f8      	bne.n	1e9e <adc_dma_wait+0x6>
    1eac:	4b05      	ldr	r3, [pc, #20]	; (1ec4 <adc_dma_wait+0x2c>)
    1eae:	4a05      	ldr	r2, [pc, #20]	; (1ec4 <adc_dma_wait+0x2c>)
    1eb0:	6812      	ldr	r2, [r2, #0]
    1eb2:	2108      	movs	r1, #8
    1eb4:	438a      	bics	r2, r1
    1eb6:	601a      	str	r2, [r3, #0]
    1eb8:	46c0      	nop			; (mov r8, r8)
    1eba:	46bd      	mov	sp, r7
    1ebc:	bd80      	pop	{r7, pc}
    1ebe:	46c0      	nop			; (mov r8, r8)
    1ec0:	20100000 	.word	0x20100000
    1ec4:	40088000 	.word	0x40088000

00001ec8 <adc_dma_check>:
    1ec8:	b580      	push	{r7, lr}
    1eca:	af00      	add	r7, sp, #0
    1ecc:	4a09      	ldr	r2, [pc, #36]	; (1ef4 <adc_dma_check+0x2c>)
    1ece:	23f4      	movs	r3, #244	; 0xf4
    1ed0:	005b      	lsls	r3, r3, #1
    1ed2:	58d3      	ldr	r3, [r2, r3]
    1ed4:	2207      	movs	r2, #7
    1ed6:	4013      	ands	r3, r2
    1ed8:	d001      	beq.n	1ede <adc_dma_check+0x16>
    1eda:	2300      	movs	r3, #0
    1edc:	e006      	b.n	1eec <adc_dma_check+0x24>
    1ede:	4b06      	ldr	r3, [pc, #24]	; (1ef8 <adc_dma_check+0x30>)
    1ee0:	4a05      	ldr	r2, [pc, #20]	; (1ef8 <adc_dma_check+0x30>)
    1ee2:	6812      	ldr	r2, [r2, #0]
    1ee4:	2108      	movs	r1, #8
    1ee6:	438a      	bics	r2, r1
    1ee8:	601a      	str	r2, [r3, #0]
    1eea:	2301      	movs	r3, #1
    1eec:	0018      	movs	r0, r3
    1eee:	46bd      	mov	sp, r7
    1ef0:	bd80      	pop	{r7, pc}
    1ef2:	46c0      	nop			; (mov r8, r8)
    1ef4:	20100000 	.word	0x20100000
    1ef8:	40088000 	.word	0x40088000

00001efc <DMA_Handler>:
    1efc:	b580      	push	{r7, lr}
    1efe:	af00      	add	r7, sp, #0
    1f00:	4b05      	ldr	r3, [pc, #20]	; (1f18 <DMA_Handler+0x1c>)
    1f02:	2200      	movs	r2, #0
    1f04:	601a      	str	r2, [r3, #0]
    1f06:	4b05      	ldr	r3, [pc, #20]	; (1f1c <DMA_Handler+0x20>)
    1f08:	4a04      	ldr	r2, [pc, #16]	; (1f1c <DMA_Handler+0x20>)
    1f0a:	6812      	ldr	r2, [r2, #0]
    1f0c:	2101      	movs	r1, #1
    1f0e:	404a      	eors	r2, r1
    1f10:	601a      	str	r2, [r3, #0]
    1f12:	46c0      	nop			; (mov r8, r8)
    1f14:	46bd      	mov	sp, r7
    1f16:	bd80      	pop	{r7, pc}
    1f18:	40088000 	.word	0x40088000
    1f1c:	400c8000 	.word	0x400c8000

00001f20 <__aeabi_uidiv>:
    1f20:	2200      	movs	r2, #0
    1f22:	0843      	lsrs	r3, r0, #1
    1f24:	428b      	cmp	r3, r1
    1f26:	d374      	bcc.n	2012 <__aeabi_uidiv+0xf2>
    1f28:	0903      	lsrs	r3, r0, #4
    1f2a:	428b      	cmp	r3, r1
    1f2c:	d35f      	bcc.n	1fee <__aeabi_uidiv+0xce>
    1f2e:	0a03      	lsrs	r3, r0, #8
    1f30:	428b      	cmp	r3, r1
    1f32:	d344      	bcc.n	1fbe <__aeabi_uidiv+0x9e>
    1f34:	0b03      	lsrs	r3, r0, #12
    1f36:	428b      	cmp	r3, r1
    1f38:	d328      	bcc.n	1f8c <__aeabi_uidiv+0x6c>
    1f3a:	0c03      	lsrs	r3, r0, #16
    1f3c:	428b      	cmp	r3, r1
    1f3e:	d30d      	bcc.n	1f5c <__aeabi_uidiv+0x3c>
    1f40:	22ff      	movs	r2, #255	; 0xff
    1f42:	0209      	lsls	r1, r1, #8
    1f44:	ba12      	rev	r2, r2
    1f46:	0c03      	lsrs	r3, r0, #16
    1f48:	428b      	cmp	r3, r1
    1f4a:	d302      	bcc.n	1f52 <__aeabi_uidiv+0x32>
    1f4c:	1212      	asrs	r2, r2, #8
    1f4e:	0209      	lsls	r1, r1, #8
    1f50:	d065      	beq.n	201e <__aeabi_uidiv+0xfe>
    1f52:	0b03      	lsrs	r3, r0, #12
    1f54:	428b      	cmp	r3, r1
    1f56:	d319      	bcc.n	1f8c <__aeabi_uidiv+0x6c>
    1f58:	e000      	b.n	1f5c <__aeabi_uidiv+0x3c>
    1f5a:	0a09      	lsrs	r1, r1, #8
    1f5c:	0bc3      	lsrs	r3, r0, #15
    1f5e:	428b      	cmp	r3, r1
    1f60:	d301      	bcc.n	1f66 <__aeabi_uidiv+0x46>
    1f62:	03cb      	lsls	r3, r1, #15
    1f64:	1ac0      	subs	r0, r0, r3
    1f66:	4152      	adcs	r2, r2
    1f68:	0b83      	lsrs	r3, r0, #14
    1f6a:	428b      	cmp	r3, r1
    1f6c:	d301      	bcc.n	1f72 <__aeabi_uidiv+0x52>
    1f6e:	038b      	lsls	r3, r1, #14
    1f70:	1ac0      	subs	r0, r0, r3
    1f72:	4152      	adcs	r2, r2
    1f74:	0b43      	lsrs	r3, r0, #13
    1f76:	428b      	cmp	r3, r1
    1f78:	d301      	bcc.n	1f7e <__aeabi_uidiv+0x5e>
    1f7a:	034b      	lsls	r3, r1, #13
    1f7c:	1ac0      	subs	r0, r0, r3
    1f7e:	4152      	adcs	r2, r2
    1f80:	0b03      	lsrs	r3, r0, #12
    1f82:	428b      	cmp	r3, r1
    1f84:	d301      	bcc.n	1f8a <__aeabi_uidiv+0x6a>
    1f86:	030b      	lsls	r3, r1, #12
    1f88:	1ac0      	subs	r0, r0, r3
    1f8a:	4152      	adcs	r2, r2
    1f8c:	0ac3      	lsrs	r3, r0, #11
    1f8e:	428b      	cmp	r3, r1
    1f90:	d301      	bcc.n	1f96 <__aeabi_uidiv+0x76>
    1f92:	02cb      	lsls	r3, r1, #11
    1f94:	1ac0      	subs	r0, r0, r3
    1f96:	4152      	adcs	r2, r2
    1f98:	0a83      	lsrs	r3, r0, #10
    1f9a:	428b      	cmp	r3, r1
    1f9c:	d301      	bcc.n	1fa2 <__aeabi_uidiv+0x82>
    1f9e:	028b      	lsls	r3, r1, #10
    1fa0:	1ac0      	subs	r0, r0, r3
    1fa2:	4152      	adcs	r2, r2
    1fa4:	0a43      	lsrs	r3, r0, #9
    1fa6:	428b      	cmp	r3, r1
    1fa8:	d301      	bcc.n	1fae <__aeabi_uidiv+0x8e>
    1faa:	024b      	lsls	r3, r1, #9
    1fac:	1ac0      	subs	r0, r0, r3
    1fae:	4152      	adcs	r2, r2
    1fb0:	0a03      	lsrs	r3, r0, #8
    1fb2:	428b      	cmp	r3, r1
    1fb4:	d301      	bcc.n	1fba <__aeabi_uidiv+0x9a>
    1fb6:	020b      	lsls	r3, r1, #8
    1fb8:	1ac0      	subs	r0, r0, r3
    1fba:	4152      	adcs	r2, r2
    1fbc:	d2cd      	bcs.n	1f5a <__aeabi_uidiv+0x3a>
    1fbe:	09c3      	lsrs	r3, r0, #7
    1fc0:	428b      	cmp	r3, r1
    1fc2:	d301      	bcc.n	1fc8 <__aeabi_uidiv+0xa8>
    1fc4:	01cb      	lsls	r3, r1, #7
    1fc6:	1ac0      	subs	r0, r0, r3
    1fc8:	4152      	adcs	r2, r2
    1fca:	0983      	lsrs	r3, r0, #6
    1fcc:	428b      	cmp	r3, r1
    1fce:	d301      	bcc.n	1fd4 <__aeabi_uidiv+0xb4>
    1fd0:	018b      	lsls	r3, r1, #6
    1fd2:	1ac0      	subs	r0, r0, r3
    1fd4:	4152      	adcs	r2, r2
    1fd6:	0943      	lsrs	r3, r0, #5
    1fd8:	428b      	cmp	r3, r1
    1fda:	d301      	bcc.n	1fe0 <__aeabi_uidiv+0xc0>
    1fdc:	014b      	lsls	r3, r1, #5
    1fde:	1ac0      	subs	r0, r0, r3
    1fe0:	4152      	adcs	r2, r2
    1fe2:	0903      	lsrs	r3, r0, #4
    1fe4:	428b      	cmp	r3, r1
    1fe6:	d301      	bcc.n	1fec <__aeabi_uidiv+0xcc>
    1fe8:	010b      	lsls	r3, r1, #4
    1fea:	1ac0      	subs	r0, r0, r3
    1fec:	4152      	adcs	r2, r2
    1fee:	08c3      	lsrs	r3, r0, #3
    1ff0:	428b      	cmp	r3, r1
    1ff2:	d301      	bcc.n	1ff8 <__aeabi_uidiv+0xd8>
    1ff4:	00cb      	lsls	r3, r1, #3
    1ff6:	1ac0      	subs	r0, r0, r3
    1ff8:	4152      	adcs	r2, r2
    1ffa:	0883      	lsrs	r3, r0, #2
    1ffc:	428b      	cmp	r3, r1
    1ffe:	d301      	bcc.n	2004 <__aeabi_uidiv+0xe4>
    2000:	008b      	lsls	r3, r1, #2
    2002:	1ac0      	subs	r0, r0, r3
    2004:	4152      	adcs	r2, r2
    2006:	0843      	lsrs	r3, r0, #1
    2008:	428b      	cmp	r3, r1
    200a:	d301      	bcc.n	2010 <__aeabi_uidiv+0xf0>
    200c:	004b      	lsls	r3, r1, #1
    200e:	1ac0      	subs	r0, r0, r3
    2010:	4152      	adcs	r2, r2
    2012:	1a41      	subs	r1, r0, r1
    2014:	d200      	bcs.n	2018 <__aeabi_uidiv+0xf8>
    2016:	4601      	mov	r1, r0
    2018:	4152      	adcs	r2, r2
    201a:	4610      	mov	r0, r2
    201c:	4770      	bx	lr
    201e:	e7ff      	b.n	2020 <__aeabi_uidiv+0x100>
    2020:	b501      	push	{r0, lr}
    2022:	2000      	movs	r0, #0
    2024:	f000 f806 	bl	2034 <__aeabi_idiv0>
    2028:	bd02      	pop	{r1, pc}
    202a:	46c0      	nop			; (mov r8, r8)

0000202c <__aeabi_uidivmod>:
    202c:	2900      	cmp	r1, #0
    202e:	d0f7      	beq.n	2020 <__aeabi_uidiv+0x100>
    2030:	e776      	b.n	1f20 <__aeabi_uidiv>
    2032:	4770      	bx	lr

00002034 <__aeabi_idiv0>:
    2034:	4770      	bx	lr
    2036:	46c0      	nop			; (mov r8, r8)
    2038:	6c6c6568 	.word	0x6c6c6568
    203c:	6f77206f 	.word	0x6f77206f
    2040:	0d646c72 	.word	0x0d646c72
    2044:	0000000a 	.word	0x0000000a
    2048:	000016f6 	.word	0x000016f6
    204c:	000016e4 	.word	0x000016e4
    2050:	00001702 	.word	0x00001702
    2054:	0000170e 	.word	0x0000170e
    2058:	0000170e 	.word	0x0000170e
    205c:	0000170e 	.word	0x0000170e
    2060:	0000170e 	.word	0x0000170e
    2064:	0000170e 	.word	0x0000170e
    2068:	0000170e 	.word	0x0000170e
    206c:	0000170e 	.word	0x0000170e
    2070:	0000170e 	.word	0x0000170e
    2074:	0000170e 	.word	0x0000170e
    2078:	0000170e 	.word	0x0000170e
    207c:	000016fc 	.word	0x000016fc
    2080:	0000170e 	.word	0x0000170e
    2084:	0000170e 	.word	0x0000170e
    2088:	0000170e 	.word	0x0000170e
    208c:	00001688 	.word	0x00001688
    2090:	0000170e 	.word	0x0000170e
    2094:	00001702 	.word	0x00001702
    2098:	0000170e 	.word	0x0000170e
    209c:	0000170e 	.word	0x0000170e
    20a0:	00001708 	.word	0x00001708
    20a4:	6c383025 	.word	0x6c383025
    20a8:	00002058 	.word	0x00002058
    20ac:	32302520 	.word	0x32302520
    20b0:	00000058 	.word	0x00000058
    20b4:	34302520 	.word	0x34302520
    20b8:	00000058 	.word	0x00000058
    20bc:	38302520 	.word	0x38302520
    20c0:	0000584c 	.word	0x0000584c
