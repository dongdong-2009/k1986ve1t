
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 25 0d 00 00 85 0d 00 00 85 0d 00 00     ... %...........
	...
      2c:	85 0d 00 00 00 00 00 00 00 00 00 00 85 0d 00 00     ................
      3c:	bd 09 00 00 85 0d 00 00 01 0a 00 00 85 0d 00 00     ................
      4c:	85 0d 00 00 85 0d 00 00 85 0d 00 00 d9 0f 00 00     ................
      5c:	85 0d 00 00 85 0d 00 00 85 0d 00 00 85 0d 00 00     ................
      6c:	85 0d 00 00 85 0d 00 00 d5 09 00 00 85 0d 00 00     ................
      7c:	85 0d 00 00 85 0d 00 00 85 0d 00 00 85 0d 00 00     ................
      8c:	85 0d 00 00 85 0d 00 00 85 0d 00 00 85 0d 00 00     ................
      9c:	85 0d 00 00 85 0d 00 00 00 00 00 00 00 00 00 00     ................
      ac:	85 0d 00 00 85 0d 00 00 85 0d 00 00 85 0d 00 00     ................
      bc:	85 0d 00 00                                         ....

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

00000174 <update_telemetry_loop>:
     174:	b580      	push	{r7, lr}
     176:	b086      	sub	sp, #24
     178:	af00      	add	r7, sp, #0
     17a:	6078      	str	r0, [r7, #4]
     17c:	4b45      	ldr	r3, [pc, #276]	; (294 <update_telemetry_loop+0x120>)
     17e:	681b      	ldr	r3, [r3, #0]
     180:	009a      	lsls	r2, r3, #2
     182:	4b45      	ldr	r3, [pc, #276]	; (298 <update_telemetry_loop+0x124>)
     184:	18d3      	adds	r3, r2, r3
     186:	681b      	ldr	r3, [r3, #0]
     188:	617b      	str	r3, [r7, #20]
     18a:	2308      	movs	r3, #8
     18c:	18fb      	adds	r3, r7, r3
     18e:	613b      	str	r3, [r7, #16]
     190:	693b      	ldr	r3, [r7, #16]
     192:	1c5a      	adds	r2, r3, #1
     194:	613a      	str	r2, [r7, #16]
     196:	4a41      	ldr	r2, [pc, #260]	; (29c <update_telemetry_loop+0x128>)
     198:	6812      	ldr	r2, [r2, #0]
     19a:	b2d2      	uxtb	r2, r2
     19c:	701a      	strb	r2, [r3, #0]
     19e:	693b      	ldr	r3, [r7, #16]
     1a0:	1c5a      	adds	r2, r3, #1
     1a2:	613a      	str	r2, [r7, #16]
     1a4:	4a3d      	ldr	r2, [pc, #244]	; (29c <update_telemetry_loop+0x128>)
     1a6:	6812      	ldr	r2, [r2, #0]
     1a8:	b2d2      	uxtb	r2, r2
     1aa:	701a      	strb	r2, [r3, #0]
     1ac:	693b      	ldr	r3, [r7, #16]
     1ae:	1c5a      	adds	r2, r3, #1
     1b0:	613a      	str	r2, [r7, #16]
     1b2:	4a3a      	ldr	r2, [pc, #232]	; (29c <update_telemetry_loop+0x128>)
     1b4:	6812      	ldr	r2, [r2, #0]
     1b6:	b2d2      	uxtb	r2, r2
     1b8:	701a      	strb	r2, [r3, #0]
     1ba:	693b      	ldr	r3, [r7, #16]
     1bc:	1c5a      	adds	r2, r3, #1
     1be:	613a      	str	r2, [r7, #16]
     1c0:	4a36      	ldr	r2, [pc, #216]	; (29c <update_telemetry_loop+0x128>)
     1c2:	6812      	ldr	r2, [r2, #0]
     1c4:	b2d2      	uxtb	r2, r2
     1c6:	701a      	strb	r2, [r3, #0]
     1c8:	693b      	ldr	r3, [r7, #16]
     1ca:	1c5a      	adds	r2, r3, #1
     1cc:	613a      	str	r2, [r7, #16]
     1ce:	4a33      	ldr	r2, [pc, #204]	; (29c <update_telemetry_loop+0x128>)
     1d0:	6812      	ldr	r2, [r2, #0]
     1d2:	b2d2      	uxtb	r2, r2
     1d4:	701a      	strb	r2, [r3, #0]
     1d6:	693b      	ldr	r3, [r7, #16]
     1d8:	1c5a      	adds	r2, r3, #1
     1da:	613a      	str	r2, [r7, #16]
     1dc:	4a2f      	ldr	r2, [pc, #188]	; (29c <update_telemetry_loop+0x128>)
     1de:	6812      	ldr	r2, [r2, #0]
     1e0:	b2d2      	uxtb	r2, r2
     1e2:	701a      	strb	r2, [r3, #0]
     1e4:	693b      	ldr	r3, [r7, #16]
     1e6:	1c5a      	adds	r2, r3, #1
     1e8:	613a      	str	r2, [r7, #16]
     1ea:	4a2c      	ldr	r2, [pc, #176]	; (29c <update_telemetry_loop+0x128>)
     1ec:	6812      	ldr	r2, [r2, #0]
     1ee:	b2d2      	uxtb	r2, r2
     1f0:	701a      	strb	r2, [r3, #0]
     1f2:	693b      	ldr	r3, [r7, #16]
     1f4:	1c5a      	adds	r2, r3, #1
     1f6:	613a      	str	r2, [r7, #16]
     1f8:	4a28      	ldr	r2, [pc, #160]	; (29c <update_telemetry_loop+0x128>)
     1fa:	6812      	ldr	r2, [r2, #0]
     1fc:	b2d2      	uxtb	r2, r2
     1fe:	701a      	strb	r2, [r3, #0]
     200:	697b      	ldr	r3, [r7, #20]
     202:	4a27      	ldr	r2, [pc, #156]	; (2a0 <update_telemetry_loop+0x12c>)
     204:	801a      	strh	r2, [r3, #0]
     206:	687b      	ldr	r3, [r7, #4]
     208:	0c1b      	lsrs	r3, r3, #16
     20a:	b29a      	uxth	r2, r3
     20c:	697b      	ldr	r3, [r7, #20]
     20e:	805a      	strh	r2, [r3, #2]
     210:	687b      	ldr	r3, [r7, #4]
     212:	b29a      	uxth	r2, r3
     214:	697b      	ldr	r3, [r7, #20]
     216:	809a      	strh	r2, [r3, #4]
     218:	4b22      	ldr	r3, [pc, #136]	; (2a4 <update_telemetry_loop+0x130>)
     21a:	685b      	ldr	r3, [r3, #4]
     21c:	b21a      	sxth	r2, r3
     21e:	697b      	ldr	r3, [r7, #20]
     220:	80da      	strh	r2, [r3, #6]
     222:	697b      	ldr	r3, [r7, #20]
     224:	2200      	movs	r2, #0
     226:	811a      	strh	r2, [r3, #8]
     228:	697b      	ldr	r3, [r7, #20]
     22a:	2200      	movs	r2, #0
     22c:	815a      	strh	r2, [r3, #10]
     22e:	697b      	ldr	r3, [r7, #20]
     230:	2200      	movs	r2, #0
     232:	819a      	strh	r2, [r3, #12]
     234:	4b1c      	ldr	r3, [pc, #112]	; (2a8 <update_telemetry_loop+0x134>)
     236:	2202      	movs	r2, #2
     238:	5e9a      	ldrsh	r2, [r3, r2]
     23a:	697b      	ldr	r3, [r7, #20]
     23c:	81da      	strh	r2, [r3, #14]
     23e:	697b      	ldr	r3, [r7, #20]
     240:	2200      	movs	r2, #0
     242:	821a      	strh	r2, [r3, #16]
     244:	697b      	ldr	r3, [r7, #20]
     246:	2200      	movs	r2, #0
     248:	825a      	strh	r2, [r3, #18]
     24a:	697b      	ldr	r3, [r7, #20]
     24c:	221b      	movs	r2, #27
     24e:	829a      	strh	r2, [r3, #20]
     250:	697b      	ldr	r3, [r7, #20]
     252:	221b      	movs	r2, #27
     254:	82da      	strh	r2, [r3, #22]
     256:	697b      	ldr	r3, [r7, #20]
     258:	220a      	movs	r2, #10
     25a:	831a      	strh	r2, [r3, #24]
     25c:	697b      	ldr	r3, [r7, #20]
     25e:	2200      	movs	r2, #0
     260:	835a      	strh	r2, [r3, #26]
     262:	697b      	ldr	r3, [r7, #20]
     264:	2200      	movs	r2, #0
     266:	839a      	strh	r2, [r3, #28]
     268:	697b      	ldr	r3, [r7, #20]
     26a:	2201      	movs	r2, #1
     26c:	83da      	strh	r2, [r3, #30]
     26e:	697b      	ldr	r3, [r7, #20]
     270:	211f      	movs	r1, #31
     272:	0018      	movs	r0, r3
     274:	f7ff ff40 	bl	f8 <get_checksum>
     278:	0003      	movs	r3, r0
     27a:	001a      	movs	r2, r3
     27c:	697b      	ldr	r3, [r7, #20]
     27e:	87da      	strh	r2, [r3, #62]	; 0x3e
     280:	4b04      	ldr	r3, [pc, #16]	; (294 <update_telemetry_loop+0x120>)
     282:	681b      	ldr	r3, [r3, #0]
     284:	2201      	movs	r2, #1
     286:	405a      	eors	r2, r3
     288:	4b02      	ldr	r3, [pc, #8]	; (294 <update_telemetry_loop+0x120>)
     28a:	601a      	str	r2, [r3, #0]
     28c:	46c0      	nop			; (mov r8, r8)
     28e:	46bd      	mov	sp, r7
     290:	b006      	add	sp, #24
     292:	bd80      	pop	{r7, pc}
     294:	200000d8 	.word	0x200000d8
     298:	200000d0 	.word	0x200000d0
     29c:	40030000 	.word	0x40030000
     2a0:	ffffb060 	.word	0xffffb060
     2a4:	40090000 	.word	0x40090000
     2a8:	200000c4 	.word	0x200000c4

000002ac <update_telemetry>:
     2ac:	b580      	push	{r7, lr}
     2ae:	b088      	sub	sp, #32
     2b0:	af00      	add	r7, sp, #0
     2b2:	6078      	str	r0, [r7, #4]
     2b4:	4b52      	ldr	r3, [pc, #328]	; (400 <_stack_size>)
     2b6:	681b      	ldr	r3, [r3, #0]
     2b8:	009a      	lsls	r2, r3, #2
     2ba:	4b52      	ldr	r3, [pc, #328]	; (404 <_stack_size+0x4>)
     2bc:	18d3      	adds	r3, r2, r3
     2be:	681b      	ldr	r3, [r3, #0]
     2c0:	61fb      	str	r3, [r7, #28]
     2c2:	4b51      	ldr	r3, [pc, #324]	; (408 <_stack_size+0x8>)
     2c4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     2c6:	2210      	movs	r2, #16
     2c8:	4013      	ands	r3, r2
     2ca:	d100      	bne.n	2ce <update_telemetry+0x22>
     2cc:	e084      	b.n	3d8 <update_telemetry+0x12c>
     2ce:	230c      	movs	r3, #12
     2d0:	18fb      	adds	r3, r7, r3
     2d2:	61bb      	str	r3, [r7, #24]
     2d4:	69bb      	ldr	r3, [r7, #24]
     2d6:	1c5a      	adds	r2, r3, #1
     2d8:	61ba      	str	r2, [r7, #24]
     2da:	4a4b      	ldr	r2, [pc, #300]	; (408 <_stack_size+0x8>)
     2dc:	6812      	ldr	r2, [r2, #0]
     2de:	b2d2      	uxtb	r2, r2
     2e0:	701a      	strb	r2, [r3, #0]
     2e2:	69bb      	ldr	r3, [r7, #24]
     2e4:	1c5a      	adds	r2, r3, #1
     2e6:	61ba      	str	r2, [r7, #24]
     2e8:	4a47      	ldr	r2, [pc, #284]	; (408 <_stack_size+0x8>)
     2ea:	6812      	ldr	r2, [r2, #0]
     2ec:	b2d2      	uxtb	r2, r2
     2ee:	701a      	strb	r2, [r3, #0]
     2f0:	69bb      	ldr	r3, [r7, #24]
     2f2:	1c5a      	adds	r2, r3, #1
     2f4:	61ba      	str	r2, [r7, #24]
     2f6:	4a44      	ldr	r2, [pc, #272]	; (408 <_stack_size+0x8>)
     2f8:	6812      	ldr	r2, [r2, #0]
     2fa:	b2d2      	uxtb	r2, r2
     2fc:	701a      	strb	r2, [r3, #0]
     2fe:	69bb      	ldr	r3, [r7, #24]
     300:	1c5a      	adds	r2, r3, #1
     302:	61ba      	str	r2, [r7, #24]
     304:	4a40      	ldr	r2, [pc, #256]	; (408 <_stack_size+0x8>)
     306:	6812      	ldr	r2, [r2, #0]
     308:	b2d2      	uxtb	r2, r2
     30a:	701a      	strb	r2, [r3, #0]
     30c:	69bb      	ldr	r3, [r7, #24]
     30e:	1c5a      	adds	r2, r3, #1
     310:	61ba      	str	r2, [r7, #24]
     312:	4a3d      	ldr	r2, [pc, #244]	; (408 <_stack_size+0x8>)
     314:	6812      	ldr	r2, [r2, #0]
     316:	b2d2      	uxtb	r2, r2
     318:	701a      	strb	r2, [r3, #0]
     31a:	69bb      	ldr	r3, [r7, #24]
     31c:	1c5a      	adds	r2, r3, #1
     31e:	61ba      	str	r2, [r7, #24]
     320:	4a39      	ldr	r2, [pc, #228]	; (408 <_stack_size+0x8>)
     322:	6812      	ldr	r2, [r2, #0]
     324:	b2d2      	uxtb	r2, r2
     326:	701a      	strb	r2, [r3, #0]
     328:	69bb      	ldr	r3, [r7, #24]
     32a:	1c5a      	adds	r2, r3, #1
     32c:	61ba      	str	r2, [r7, #24]
     32e:	4a36      	ldr	r2, [pc, #216]	; (408 <_stack_size+0x8>)
     330:	6812      	ldr	r2, [r2, #0]
     332:	b2d2      	uxtb	r2, r2
     334:	701a      	strb	r2, [r3, #0]
     336:	69bb      	ldr	r3, [r7, #24]
     338:	1c5a      	adds	r2, r3, #1
     33a:	61ba      	str	r2, [r7, #24]
     33c:	4a32      	ldr	r2, [pc, #200]	; (408 <_stack_size+0x8>)
     33e:	6812      	ldr	r2, [r2, #0]
     340:	b2d2      	uxtb	r2, r2
     342:	701a      	strb	r2, [r3, #0]
     344:	69fb      	ldr	r3, [r7, #28]
     346:	4a31      	ldr	r2, [pc, #196]	; (40c <_stack_size+0xc>)
     348:	801a      	strh	r2, [r3, #0]
     34a:	687b      	ldr	r3, [r7, #4]
     34c:	0c1b      	lsrs	r3, r3, #16
     34e:	b29a      	uxth	r2, r3
     350:	69fb      	ldr	r3, [r7, #28]
     352:	805a      	strh	r2, [r3, #2]
     354:	687b      	ldr	r3, [r7, #4]
     356:	b29a      	uxth	r2, r3
     358:	69fb      	ldr	r3, [r7, #28]
     35a:	809a      	strh	r2, [r3, #4]
     35c:	230c      	movs	r3, #12
     35e:	18fb      	adds	r3, r7, r3
     360:	2202      	movs	r2, #2
     362:	5e9a      	ldrsh	r2, [r3, r2]
     364:	69fb      	ldr	r3, [r7, #28]
     366:	80da      	strh	r2, [r3, #6]
     368:	69fb      	ldr	r3, [r7, #28]
     36a:	2200      	movs	r2, #0
     36c:	811a      	strh	r2, [r3, #8]
     36e:	69fb      	ldr	r3, [r7, #28]
     370:	2200      	movs	r2, #0
     372:	815a      	strh	r2, [r3, #10]
     374:	69fb      	ldr	r3, [r7, #28]
     376:	2200      	movs	r2, #0
     378:	819a      	strh	r2, [r3, #12]
     37a:	230c      	movs	r3, #12
     37c:	18fb      	adds	r3, r7, r3
     37e:	2200      	movs	r2, #0
     380:	5e9a      	ldrsh	r2, [r3, r2]
     382:	69fb      	ldr	r3, [r7, #28]
     384:	81da      	strh	r2, [r3, #14]
     386:	69fb      	ldr	r3, [r7, #28]
     388:	2200      	movs	r2, #0
     38a:	821a      	strh	r2, [r3, #16]
     38c:	69fb      	ldr	r3, [r7, #28]
     38e:	2200      	movs	r2, #0
     390:	825a      	strh	r2, [r3, #18]
     392:	69fb      	ldr	r3, [r7, #28]
     394:	221b      	movs	r2, #27
     396:	829a      	strh	r2, [r3, #20]
     398:	69fb      	ldr	r3, [r7, #28]
     39a:	221b      	movs	r2, #27
     39c:	82da      	strh	r2, [r3, #22]
     39e:	230c      	movs	r3, #12
     3a0:	18fb      	adds	r3, r7, r3
     3a2:	889a      	ldrh	r2, [r3, #4]
     3a4:	69fb      	ldr	r3, [r7, #28]
     3a6:	831a      	strh	r2, [r3, #24]
     3a8:	69fb      	ldr	r3, [r7, #28]
     3aa:	2200      	movs	r2, #0
     3ac:	835a      	strh	r2, [r3, #26]
     3ae:	69fb      	ldr	r3, [r7, #28]
     3b0:	2200      	movs	r2, #0
     3b2:	839a      	strh	r2, [r3, #28]
     3b4:	69fb      	ldr	r3, [r7, #28]
     3b6:	2201      	movs	r2, #1
     3b8:	83da      	strh	r2, [r3, #30]
     3ba:	69fb      	ldr	r3, [r7, #28]
     3bc:	211f      	movs	r1, #31
     3be:	0018      	movs	r0, r3
     3c0:	f7ff fe9a 	bl	f8 <get_checksum>
     3c4:	0003      	movs	r3, r0
     3c6:	001a      	movs	r2, r3
     3c8:	69fb      	ldr	r3, [r7, #28]
     3ca:	87da      	strh	r2, [r3, #62]	; 0x3e
     3cc:	4b0c      	ldr	r3, [pc, #48]	; (400 <_stack_size>)
     3ce:	681b      	ldr	r3, [r3, #0]
     3d0:	2201      	movs	r2, #1
     3d2:	405a      	eors	r2, r3
     3d4:	4b0a      	ldr	r3, [pc, #40]	; (400 <_stack_size>)
     3d6:	601a      	str	r2, [r3, #0]
     3d8:	4b0b      	ldr	r3, [pc, #44]	; (408 <_stack_size+0x8>)
     3da:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     3dc:	2240      	movs	r2, #64	; 0x40
     3de:	4013      	ands	r3, r2
     3e0:	d00a      	beq.n	3f8 <update_telemetry+0x14c>
     3e2:	e004      	b.n	3ee <update_telemetry+0x142>
     3e4:	4b08      	ldr	r3, [pc, #32]	; (408 <_stack_size+0x8>)
     3e6:	681a      	ldr	r2, [r3, #0]
     3e8:	2317      	movs	r3, #23
     3ea:	18fb      	adds	r3, r7, r3
     3ec:	701a      	strb	r2, [r3, #0]
     3ee:	4b06      	ldr	r3, [pc, #24]	; (408 <_stack_size+0x8>)
     3f0:	699b      	ldr	r3, [r3, #24]
     3f2:	2210      	movs	r2, #16
     3f4:	4013      	ands	r3, r2
     3f6:	d0f5      	beq.n	3e4 <update_telemetry+0x138>
     3f8:	46c0      	nop			; (mov r8, r8)
     3fa:	46bd      	mov	sp, r7
     3fc:	b008      	add	sp, #32
     3fe:	bd80      	pop	{r7, pc}
     400:	200000d8 	.word	0x200000d8
     404:	200000d0 	.word	0x200000d0
     408:	40030000 	.word	0x40030000
     40c:	ffffb060 	.word	0xffffb060

00000410 <send_command>:
     410:	b580      	push	{r7, lr}
     412:	b086      	sub	sp, #24
     414:	af00      	add	r7, sp, #0
     416:	6078      	str	r0, [r7, #4]
     418:	687b      	ldr	r3, [r7, #4]
     41a:	2202      	movs	r2, #2
     41c:	5e9a      	ldrsh	r2, [r3, r2]
     41e:	2316      	movs	r3, #22
     420:	18fb      	adds	r3, r7, r3
     422:	801a      	strh	r2, [r3, #0]
     424:	2308      	movs	r3, #8
     426:	18fb      	adds	r3, r7, r3
     428:	613b      	str	r3, [r7, #16]
     42a:	4b23      	ldr	r3, [pc, #140]	; (4b8 <send_command+0xa8>)
     42c:	687a      	ldr	r2, [r7, #4]
     42e:	2102      	movs	r1, #2
     430:	5e52      	ldrsh	r2, [r2, r1]
     432:	b292      	uxth	r2, r2
     434:	0011      	movs	r1, r2
     436:	22ff      	movs	r2, #255	; 0xff
     438:	400a      	ands	r2, r1
     43a:	601a      	str	r2, [r3, #0]
     43c:	4b1e      	ldr	r3, [pc, #120]	; (4b8 <send_command+0xa8>)
     43e:	687a      	ldr	r2, [r7, #4]
     440:	2102      	movs	r1, #2
     442:	5e52      	ldrsh	r2, [r2, r1]
     444:	1212      	asrs	r2, r2, #8
     446:	b212      	sxth	r2, r2
     448:	b292      	uxth	r2, r2
     44a:	0011      	movs	r1, r2
     44c:	22ff      	movs	r2, #255	; 0xff
     44e:	400a      	ands	r2, r1
     450:	601a      	str	r2, [r3, #0]
     452:	4b19      	ldr	r3, [pc, #100]	; (4b8 <send_command+0xa8>)
     454:	687a      	ldr	r2, [r7, #4]
     456:	2104      	movs	r1, #4
     458:	5e52      	ldrsh	r2, [r2, r1]
     45a:	b292      	uxth	r2, r2
     45c:	0011      	movs	r1, r2
     45e:	22ff      	movs	r2, #255	; 0xff
     460:	400a      	ands	r2, r1
     462:	601a      	str	r2, [r3, #0]
     464:	4b14      	ldr	r3, [pc, #80]	; (4b8 <send_command+0xa8>)
     466:	687a      	ldr	r2, [r7, #4]
     468:	2104      	movs	r1, #4
     46a:	5e52      	ldrsh	r2, [r2, r1]
     46c:	1212      	asrs	r2, r2, #8
     46e:	b212      	sxth	r2, r2
     470:	b292      	uxth	r2, r2
     472:	0011      	movs	r1, r2
     474:	22ff      	movs	r2, #255	; 0xff
     476:	400a      	ands	r2, r1
     478:	601a      	str	r2, [r3, #0]
     47a:	4b0f      	ldr	r3, [pc, #60]	; (4b8 <send_command+0xa8>)
     47c:	687a      	ldr	r2, [r7, #4]
     47e:	2106      	movs	r1, #6
     480:	5e52      	ldrsh	r2, [r2, r1]
     482:	b292      	uxth	r2, r2
     484:	0011      	movs	r1, r2
     486:	22ff      	movs	r2, #255	; 0xff
     488:	400a      	ands	r2, r1
     48a:	601a      	str	r2, [r3, #0]
     48c:	4b0a      	ldr	r3, [pc, #40]	; (4b8 <send_command+0xa8>)
     48e:	687a      	ldr	r2, [r7, #4]
     490:	2106      	movs	r1, #6
     492:	5e52      	ldrsh	r2, [r2, r1]
     494:	1212      	asrs	r2, r2, #8
     496:	b212      	sxth	r2, r2
     498:	b292      	uxth	r2, r2
     49a:	0011      	movs	r1, r2
     49c:	22ff      	movs	r2, #255	; 0xff
     49e:	400a      	ands	r2, r1
     4a0:	601a      	str	r2, [r3, #0]
     4a2:	4b05      	ldr	r3, [pc, #20]	; (4b8 <send_command+0xa8>)
     4a4:	2200      	movs	r2, #0
     4a6:	601a      	str	r2, [r3, #0]
     4a8:	4b03      	ldr	r3, [pc, #12]	; (4b8 <send_command+0xa8>)
     4aa:	2200      	movs	r2, #0
     4ac:	601a      	str	r2, [r3, #0]
     4ae:	46c0      	nop			; (mov r8, r8)
     4b0:	46bd      	mov	sp, r7
     4b2:	b006      	add	sp, #24
     4b4:	bd80      	pop	{r7, pc}
     4b6:	46c0      	nop			; (mov r8, r8)
     4b8:	40030000 	.word	0x40030000

000004bc <main>:
     4bc:	b590      	push	{r4, r7, lr}
     4be:	b0a7      	sub	sp, #156	; 0x9c
     4c0:	af00      	add	r7, sp, #0
     4c2:	2380      	movs	r3, #128	; 0x80
     4c4:	18fb      	adds	r3, r7, r3
     4c6:	4a29      	ldr	r2, [pc, #164]	; (56c <main+0xb0>)
     4c8:	ca13      	ldmia	r2!, {r0, r1, r4}
     4ca:	c313      	stmia	r3!, {r0, r1, r4}
     4cc:	8812      	ldrh	r2, [r2, #0]
     4ce:	801a      	strh	r2, [r3, #0]
     4d0:	f000 fa62 	bl	998 <SystemInit>
     4d4:	4b26      	ldr	r3, [pc, #152]	; (570 <main+0xb4>)
     4d6:	2200      	movs	r2, #0
     4d8:	601a      	str	r2, [r3, #0]
     4da:	2300      	movs	r3, #0
     4dc:	2294      	movs	r2, #148	; 0x94
     4de:	18ba      	adds	r2, r7, r2
     4e0:	6013      	str	r3, [r2, #0]
     4e2:	4b24      	ldr	r3, [pc, #144]	; (574 <main+0xb8>)
     4e4:	2200      	movs	r2, #0
     4e6:	601a      	str	r2, [r3, #0]
     4e8:	4b23      	ldr	r3, [pc, #140]	; (578 <main+0xbc>)
     4ea:	4a24      	ldr	r2, [pc, #144]	; (57c <main+0xc0>)
     4ec:	601a      	str	r2, [r3, #0]
     4ee:	4b22      	ldr	r3, [pc, #136]	; (578 <main+0xbc>)
     4f0:	4a23      	ldr	r2, [pc, #140]	; (580 <main+0xc4>)
     4f2:	605a      	str	r2, [r3, #4]
     4f4:	4b23      	ldr	r3, [pc, #140]	; (584 <main+0xc8>)
     4f6:	2200      	movs	r2, #0
     4f8:	601a      	str	r2, [r3, #0]
     4fa:	4b23      	ldr	r3, [pc, #140]	; (588 <main+0xcc>)
     4fc:	681b      	ldr	r3, [r3, #0]
     4fe:	2b00      	cmp	r3, #0
     500:	d02d      	beq.n	55e <main+0xa2>
     502:	4b22      	ldr	r3, [pc, #136]	; (58c <main+0xd0>)
     504:	881b      	ldrh	r3, [r3, #0]
     506:	2220      	movs	r2, #32
     508:	4013      	ands	r3, r2
     50a:	b29b      	uxth	r3, r3
     50c:	2b00      	cmp	r3, #0
     50e:	d01f      	beq.n	550 <main+0x94>
     510:	4b1e      	ldr	r3, [pc, #120]	; (58c <main+0xd0>)
     512:	2202      	movs	r2, #2
     514:	5e9b      	ldrsh	r3, [r3, r2]
     516:	2b00      	cmp	r3, #0
     518:	da06      	bge.n	528 <main+0x6c>
     51a:	4b1c      	ldr	r3, [pc, #112]	; (58c <main+0xd0>)
     51c:	2202      	movs	r2, #2
     51e:	5e9b      	ldrsh	r3, [r3, r2]
     520:	4a1b      	ldr	r2, [pc, #108]	; (590 <main+0xd4>)
     522:	4694      	mov	ip, r2
     524:	4463      	add	r3, ip
     526:	e002      	b.n	52e <main+0x72>
     528:	4b18      	ldr	r3, [pc, #96]	; (58c <main+0xd0>)
     52a:	2202      	movs	r2, #2
     52c:	5e9b      	ldrsh	r3, [r3, r2]
     52e:	2290      	movs	r2, #144	; 0x90
     530:	18ba      	adds	r2, r7, r2
     532:	6013      	str	r3, [r2, #0]
     534:	4b17      	ldr	r3, [pc, #92]	; (594 <main+0xd8>)
     536:	2290      	movs	r2, #144	; 0x90
     538:	18ba      	adds	r2, r7, r2
     53a:	6812      	ldr	r2, [r2, #0]
     53c:	2180      	movs	r1, #128	; 0x80
     53e:	0109      	lsls	r1, r1, #4
     540:	468c      	mov	ip, r1
     542:	4462      	add	r2, ip
     544:	605a      	str	r2, [r3, #4]
     546:	4b11      	ldr	r3, [pc, #68]	; (58c <main+0xd0>)
     548:	0018      	movs	r0, r3
     54a:	f7ff ff61 	bl	410 <send_command>
     54e:	e003      	b.n	558 <main+0x9c>
     550:	4b10      	ldr	r3, [pc, #64]	; (594 <main+0xd8>)
     552:	2280      	movs	r2, #128	; 0x80
     554:	0112      	lsls	r2, r2, #4
     556:	605a      	str	r2, [r3, #4]
     558:	4b0b      	ldr	r3, [pc, #44]	; (588 <main+0xcc>)
     55a:	2200      	movs	r2, #0
     55c:	601a      	str	r2, [r3, #0]
     55e:	4b0e      	ldr	r3, [pc, #56]	; (598 <main+0xdc>)
     560:	681b      	ldr	r3, [r3, #0]
     562:	0018      	movs	r0, r3
     564:	f7ff fea2 	bl	2ac <update_telemetry>
     568:	e7c7      	b.n	4fa <main+0x3e>
     56a:	46c0      	nop			; (mov r8, r8)
     56c:	00001b00 	.word	0x00001b00
     570:	200000dc 	.word	0x200000dc
     574:	200000e0 	.word	0x200000e0
     578:	200000d0 	.word	0x200000d0
     57c:	20000044 	.word	0x20000044
     580:	20000084 	.word	0x20000084
     584:	200000d8 	.word	0x200000d8
     588:	200000e8 	.word	0x200000e8
     58c:	200000c4 	.word	0x200000c4
     590:	ffff0000 	.word	0xffff0000
     594:	40090000 	.word	0x40090000
     598:	200000e4 	.word	0x200000e4

0000059c <PortConfig>:
     59c:	b580      	push	{r7, lr}
     59e:	af00      	add	r7, sp, #0
     5a0:	4b65      	ldr	r3, [pc, #404]	; (738 <PortConfig+0x19c>)
     5a2:	4a65      	ldr	r2, [pc, #404]	; (738 <PortConfig+0x19c>)
     5a4:	69d2      	ldr	r2, [r2, #28]
     5a6:	2180      	movs	r1, #128	; 0x80
     5a8:	0449      	lsls	r1, r1, #17
     5aa:	430a      	orrs	r2, r1
     5ac:	61da      	str	r2, [r3, #28]
     5ae:	4b63      	ldr	r3, [pc, #396]	; (73c <PortConfig+0x1a0>)
     5b0:	2200      	movs	r2, #0
     5b2:	609a      	str	r2, [r3, #8]
     5b4:	4b61      	ldr	r3, [pc, #388]	; (73c <PortConfig+0x1a0>)
     5b6:	2200      	movs	r2, #0
     5b8:	601a      	str	r2, [r3, #0]
     5ba:	4b60      	ldr	r3, [pc, #384]	; (73c <PortConfig+0x1a0>)
     5bc:	22ff      	movs	r2, #255	; 0xff
     5be:	01d2      	lsls	r2, r2, #7
     5c0:	605a      	str	r2, [r3, #4]
     5c2:	4b5e      	ldr	r3, [pc, #376]	; (73c <PortConfig+0x1a0>)
     5c4:	22ff      	movs	r2, #255	; 0xff
     5c6:	01d2      	lsls	r2, r2, #7
     5c8:	60da      	str	r2, [r3, #12]
     5ca:	4b5c      	ldr	r3, [pc, #368]	; (73c <PortConfig+0x1a0>)
     5cc:	4a5c      	ldr	r2, [pc, #368]	; (740 <PortConfig+0x1a4>)
     5ce:	619a      	str	r2, [r3, #24]
     5d0:	4b59      	ldr	r3, [pc, #356]	; (738 <PortConfig+0x19c>)
     5d2:	4a59      	ldr	r2, [pc, #356]	; (738 <PortConfig+0x19c>)
     5d4:	69d2      	ldr	r2, [r2, #28]
     5d6:	2180      	movs	r1, #128	; 0x80
     5d8:	0409      	lsls	r1, r1, #16
     5da:	430a      	orrs	r2, r1
     5dc:	61da      	str	r2, [r3, #28]
     5de:	4b56      	ldr	r3, [pc, #344]	; (738 <PortConfig+0x19c>)
     5e0:	4a55      	ldr	r2, [pc, #340]	; (738 <PortConfig+0x19c>)
     5e2:	69d2      	ldr	r2, [r2, #28]
     5e4:	2180      	movs	r1, #128	; 0x80
     5e6:	0449      	lsls	r1, r1, #17
     5e8:	430a      	orrs	r2, r1
     5ea:	61da      	str	r2, [r3, #28]
     5ec:	4b55      	ldr	r3, [pc, #340]	; (744 <PortConfig+0x1a8>)
     5ee:	4a55      	ldr	r2, [pc, #340]	; (744 <PortConfig+0x1a8>)
     5f0:	6892      	ldr	r2, [r2, #8]
     5f2:	0192      	lsls	r2, r2, #6
     5f4:	0992      	lsrs	r2, r2, #6
     5f6:	609a      	str	r2, [r3, #8]
     5f8:	4b52      	ldr	r3, [pc, #328]	; (744 <PortConfig+0x1a8>)
     5fa:	4a52      	ldr	r2, [pc, #328]	; (744 <PortConfig+0x1a8>)
     5fc:	6892      	ldr	r2, [r2, #8]
     5fe:	21a8      	movs	r1, #168	; 0xa8
     600:	05c9      	lsls	r1, r1, #23
     602:	430a      	orrs	r2, r1
     604:	609a      	str	r2, [r3, #8]
     606:	4b4f      	ldr	r3, [pc, #316]	; (744 <PortConfig+0x1a8>)
     608:	4a4e      	ldr	r2, [pc, #312]	; (744 <PortConfig+0x1a8>)
     60a:	68d2      	ldr	r2, [r2, #12]
     60c:	21e0      	movs	r1, #224	; 0xe0
     60e:	0209      	lsls	r1, r1, #8
     610:	430a      	orrs	r2, r1
     612:	60da      	str	r2, [r3, #12]
     614:	4b4b      	ldr	r3, [pc, #300]	; (744 <PortConfig+0x1a8>)
     616:	4a4b      	ldr	r2, [pc, #300]	; (744 <PortConfig+0x1a8>)
     618:	6992      	ldr	r2, [r2, #24]
     61a:	21fc      	movs	r1, #252	; 0xfc
     61c:	0609      	lsls	r1, r1, #24
     61e:	430a      	orrs	r2, r1
     620:	619a      	str	r2, [r3, #24]
     622:	4b46      	ldr	r3, [pc, #280]	; (73c <PortConfig+0x1a0>)
     624:	4a45      	ldr	r2, [pc, #276]	; (73c <PortConfig+0x1a0>)
     626:	6892      	ldr	r2, [r2, #8]
     628:	0b92      	lsrs	r2, r2, #14
     62a:	0392      	lsls	r2, r2, #14
     62c:	609a      	str	r2, [r3, #8]
     62e:	4b43      	ldr	r3, [pc, #268]	; (73c <PortConfig+0x1a0>)
     630:	4a42      	ldr	r2, [pc, #264]	; (73c <PortConfig+0x1a0>)
     632:	6892      	ldr	r2, [r2, #8]
     634:	4944      	ldr	r1, [pc, #272]	; (748 <PortConfig+0x1ac>)
     636:	430a      	orrs	r2, r1
     638:	609a      	str	r2, [r3, #8]
     63a:	4b40      	ldr	r3, [pc, #256]	; (73c <PortConfig+0x1a0>)
     63c:	4a3f      	ldr	r2, [pc, #252]	; (73c <PortConfig+0x1a0>)
     63e:	68d2      	ldr	r2, [r2, #12]
     640:	217f      	movs	r1, #127	; 0x7f
     642:	430a      	orrs	r2, r1
     644:	60da      	str	r2, [r3, #12]
     646:	4b3d      	ldr	r3, [pc, #244]	; (73c <PortConfig+0x1a0>)
     648:	4a3c      	ldr	r2, [pc, #240]	; (73c <PortConfig+0x1a0>)
     64a:	6992      	ldr	r2, [r2, #24]
     64c:	493f      	ldr	r1, [pc, #252]	; (74c <PortConfig+0x1b0>)
     64e:	430a      	orrs	r2, r1
     650:	619a      	str	r2, [r3, #24]
     652:	4b39      	ldr	r3, [pc, #228]	; (738 <PortConfig+0x19c>)
     654:	4a38      	ldr	r2, [pc, #224]	; (738 <PortConfig+0x19c>)
     656:	69d2      	ldr	r2, [r2, #28]
     658:	2180      	movs	r1, #128	; 0x80
     65a:	0489      	lsls	r1, r1, #18
     65c:	430a      	orrs	r2, r1
     65e:	61da      	str	r2, [r3, #28]
     660:	4b3b      	ldr	r3, [pc, #236]	; (750 <PortConfig+0x1b4>)
     662:	4a3b      	ldr	r2, [pc, #236]	; (750 <PortConfig+0x1b4>)
     664:	68d2      	ldr	r2, [r2, #12]
     666:	2102      	movs	r1, #2
     668:	438a      	bics	r2, r1
     66a:	60da      	str	r2, [r3, #12]
     66c:	4b38      	ldr	r3, [pc, #224]	; (750 <PortConfig+0x1b4>)
     66e:	4a38      	ldr	r2, [pc, #224]	; (750 <PortConfig+0x1b4>)
     670:	68d2      	ldr	r2, [r2, #12]
     672:	2108      	movs	r1, #8
     674:	430a      	orrs	r2, r1
     676:	60da      	str	r2, [r3, #12]
     678:	4b35      	ldr	r3, [pc, #212]	; (750 <PortConfig+0x1b4>)
     67a:	4a35      	ldr	r2, [pc, #212]	; (750 <PortConfig+0x1b4>)
     67c:	6892      	ldr	r2, [r2, #8]
     67e:	21c0      	movs	r1, #192	; 0xc0
     680:	438a      	bics	r2, r1
     682:	609a      	str	r2, [r3, #8]
     684:	4b32      	ldr	r3, [pc, #200]	; (750 <PortConfig+0x1b4>)
     686:	4a32      	ldr	r2, [pc, #200]	; (750 <PortConfig+0x1b4>)
     688:	6892      	ldr	r2, [r2, #8]
     68a:	2140      	movs	r1, #64	; 0x40
     68c:	430a      	orrs	r2, r1
     68e:	609a      	str	r2, [r3, #8]
     690:	4b2f      	ldr	r3, [pc, #188]	; (750 <PortConfig+0x1b4>)
     692:	4a2f      	ldr	r2, [pc, #188]	; (750 <PortConfig+0x1b4>)
     694:	6992      	ldr	r2, [r2, #24]
     696:	21c0      	movs	r1, #192	; 0xc0
     698:	430a      	orrs	r2, r1
     69a:	619a      	str	r2, [r3, #24]
     69c:	4b2c      	ldr	r3, [pc, #176]	; (750 <PortConfig+0x1b4>)
     69e:	4a2c      	ldr	r2, [pc, #176]	; (750 <PortConfig+0x1b4>)
     6a0:	6852      	ldr	r2, [r2, #4]
     6a2:	2108      	movs	r1, #8
     6a4:	430a      	orrs	r2, r1
     6a6:	605a      	str	r2, [r3, #4]
     6a8:	4b29      	ldr	r3, [pc, #164]	; (750 <PortConfig+0x1b4>)
     6aa:	4a29      	ldr	r2, [pc, #164]	; (750 <PortConfig+0x1b4>)
     6ac:	68d2      	ldr	r2, [r2, #12]
     6ae:	2101      	movs	r1, #1
     6b0:	430a      	orrs	r2, r1
     6b2:	60da      	str	r2, [r3, #12]
     6b4:	4b26      	ldr	r3, [pc, #152]	; (750 <PortConfig+0x1b4>)
     6b6:	4a26      	ldr	r2, [pc, #152]	; (750 <PortConfig+0x1b4>)
     6b8:	6892      	ldr	r2, [r2, #8]
     6ba:	2103      	movs	r1, #3
     6bc:	438a      	bics	r2, r1
     6be:	609a      	str	r2, [r3, #8]
     6c0:	4b23      	ldr	r3, [pc, #140]	; (750 <PortConfig+0x1b4>)
     6c2:	4a23      	ldr	r2, [pc, #140]	; (750 <PortConfig+0x1b4>)
     6c4:	6992      	ldr	r2, [r2, #24]
     6c6:	2103      	movs	r1, #3
     6c8:	430a      	orrs	r2, r1
     6ca:	619a      	str	r2, [r3, #24]
     6cc:	4b20      	ldr	r3, [pc, #128]	; (750 <PortConfig+0x1b4>)
     6ce:	4a20      	ldr	r2, [pc, #128]	; (750 <PortConfig+0x1b4>)
     6d0:	6852      	ldr	r2, [r2, #4]
     6d2:	2101      	movs	r1, #1
     6d4:	430a      	orrs	r2, r1
     6d6:	605a      	str	r2, [r3, #4]
     6d8:	4b1d      	ldr	r3, [pc, #116]	; (750 <PortConfig+0x1b4>)
     6da:	4a1d      	ldr	r2, [pc, #116]	; (750 <PortConfig+0x1b4>)
     6dc:	6812      	ldr	r2, [r2, #0]
     6de:	2101      	movs	r1, #1
     6e0:	430a      	orrs	r2, r1
     6e2:	601a      	str	r2, [r3, #0]
     6e4:	4b14      	ldr	r3, [pc, #80]	; (738 <PortConfig+0x19c>)
     6e6:	4a14      	ldr	r2, [pc, #80]	; (738 <PortConfig+0x19c>)
     6e8:	69d2      	ldr	r2, [r2, #28]
     6ea:	2180      	movs	r1, #128	; 0x80
     6ec:	0409      	lsls	r1, r1, #16
     6ee:	430a      	orrs	r2, r1
     6f0:	61da      	str	r2, [r3, #28]
     6f2:	4b14      	ldr	r3, [pc, #80]	; (744 <PortConfig+0x1a8>)
     6f4:	4a13      	ldr	r2, [pc, #76]	; (744 <PortConfig+0x1a8>)
     6f6:	6892      	ldr	r2, [r2, #8]
     6f8:	4916      	ldr	r1, [pc, #88]	; (754 <PortConfig+0x1b8>)
     6fa:	400a      	ands	r2, r1
     6fc:	609a      	str	r2, [r3, #8]
     6fe:	4b11      	ldr	r3, [pc, #68]	; (744 <PortConfig+0x1a8>)
     700:	4a10      	ldr	r2, [pc, #64]	; (744 <PortConfig+0x1a8>)
     702:	6892      	ldr	r2, [r2, #8]
     704:	21a0      	movs	r1, #160	; 0xa0
     706:	0049      	lsls	r1, r1, #1
     708:	430a      	orrs	r2, r1
     70a:	609a      	str	r2, [r3, #8]
     70c:	4b0d      	ldr	r3, [pc, #52]	; (744 <PortConfig+0x1a8>)
     70e:	4a0d      	ldr	r2, [pc, #52]	; (744 <PortConfig+0x1a8>)
     710:	68d2      	ldr	r2, [r2, #12]
     712:	2118      	movs	r1, #24
     714:	430a      	orrs	r2, r1
     716:	60da      	str	r2, [r3, #12]
     718:	4b0a      	ldr	r3, [pc, #40]	; (744 <PortConfig+0x1a8>)
     71a:	4a0a      	ldr	r2, [pc, #40]	; (744 <PortConfig+0x1a8>)
     71c:	6992      	ldr	r2, [r2, #24]
     71e:	21f0      	movs	r1, #240	; 0xf0
     720:	0089      	lsls	r1, r1, #2
     722:	430a      	orrs	r2, r1
     724:	619a      	str	r2, [r3, #24]
     726:	4b07      	ldr	r3, [pc, #28]	; (744 <PortConfig+0x1a8>)
     728:	4a06      	ldr	r2, [pc, #24]	; (744 <PortConfig+0x1a8>)
     72a:	6812      	ldr	r2, [r2, #0]
     72c:	2118      	movs	r1, #24
     72e:	438a      	bics	r2, r1
     730:	601a      	str	r2, [r3, #0]
     732:	46c0      	nop			; (mov r8, r8)
     734:	46bd      	mov	sp, r7
     736:	bd80      	pop	{r7, pc}
     738:	40020000 	.word	0x40020000
     73c:	400c0000 	.word	0x400c0000
     740:	3fffc000 	.word	0x3fffc000
     744:	400b8000 	.word	0x400b8000
     748:	00001555 	.word	0x00001555
     74c:	00003fff 	.word	0x00003fff
     750:	400c8000 	.word	0x400c8000
     754:	fffffc3f 	.word	0xfffffc3f

00000758 <dac_init>:
     758:	b580      	push	{r7, lr}
     75a:	af00      	add	r7, sp, #0
     75c:	4b07      	ldr	r3, [pc, #28]	; (77c <dac_init+0x24>)
     75e:	4a07      	ldr	r2, [pc, #28]	; (77c <dac_init+0x24>)
     760:	69d2      	ldr	r2, [r2, #28]
     762:	2180      	movs	r1, #128	; 0x80
     764:	02c9      	lsls	r1, r1, #11
     766:	430a      	orrs	r2, r1
     768:	61da      	str	r2, [r3, #28]
     76a:	4b05      	ldr	r3, [pc, #20]	; (780 <dac_init+0x28>)
     76c:	4a04      	ldr	r2, [pc, #16]	; (780 <dac_init+0x28>)
     76e:	6812      	ldr	r2, [r2, #0]
     770:	2104      	movs	r1, #4
     772:	430a      	orrs	r2, r1
     774:	601a      	str	r2, [r3, #0]
     776:	46c0      	nop			; (mov r8, r8)
     778:	46bd      	mov	sp, r7
     77a:	bd80      	pop	{r7, pc}
     77c:	40020000 	.word	0x40020000
     780:	40090000 	.word	0x40090000

00000784 <ClkConfig>:
     784:	b580      	push	{r7, lr}
     786:	af00      	add	r7, sp, #0
     788:	4b18      	ldr	r3, [pc, #96]	; (7ec <ClkConfig+0x68>)
     78a:	4a18      	ldr	r2, [pc, #96]	; (7ec <ClkConfig+0x68>)
     78c:	6892      	ldr	r2, [r2, #8]
     78e:	2101      	movs	r1, #1
     790:	430a      	orrs	r2, r1
     792:	609a      	str	r2, [r3, #8]
     794:	46c0      	nop			; (mov r8, r8)
     796:	4b15      	ldr	r3, [pc, #84]	; (7ec <ClkConfig+0x68>)
     798:	681b      	ldr	r3, [r3, #0]
     79a:	2204      	movs	r2, #4
     79c:	4013      	ands	r3, r2
     79e:	d0fa      	beq.n	796 <ClkConfig+0x12>
     7a0:	4b12      	ldr	r3, [pc, #72]	; (7ec <ClkConfig+0x68>)
     7a2:	4a12      	ldr	r2, [pc, #72]	; (7ec <ClkConfig+0x68>)
     7a4:	68d2      	ldr	r2, [r2, #12]
     7a6:	2102      	movs	r1, #2
     7a8:	430a      	orrs	r2, r1
     7aa:	60da      	str	r2, [r3, #12]
     7ac:	4b0f      	ldr	r3, [pc, #60]	; (7ec <ClkConfig+0x68>)
     7ae:	4a10      	ldr	r2, [pc, #64]	; (7f0 <ClkConfig+0x6c>)
     7b0:	605a      	str	r2, [r3, #4]
     7b2:	46c0      	nop			; (mov r8, r8)
     7b4:	4b0d      	ldr	r3, [pc, #52]	; (7ec <ClkConfig+0x68>)
     7b6:	681b      	ldr	r3, [r3, #0]
     7b8:	2202      	movs	r2, #2
     7ba:	4013      	ands	r3, r2
     7bc:	d0fa      	beq.n	7b4 <ClkConfig+0x30>
     7be:	4b0d      	ldr	r3, [pc, #52]	; (7f4 <ClkConfig+0x70>)
     7c0:	4a0c      	ldr	r2, [pc, #48]	; (7f4 <ClkConfig+0x70>)
     7c2:	6812      	ldr	r2, [r2, #0]
     7c4:	2120      	movs	r1, #32
     7c6:	430a      	orrs	r2, r1
     7c8:	601a      	str	r2, [r3, #0]
     7ca:	4b08      	ldr	r3, [pc, #32]	; (7ec <ClkConfig+0x68>)
     7cc:	4a07      	ldr	r2, [pc, #28]	; (7ec <ClkConfig+0x68>)
     7ce:	68d2      	ldr	r2, [r2, #12]
     7d0:	2180      	movs	r1, #128	; 0x80
     7d2:	0049      	lsls	r1, r1, #1
     7d4:	430a      	orrs	r2, r1
     7d6:	60da      	str	r2, [r3, #12]
     7d8:	4b04      	ldr	r3, [pc, #16]	; (7ec <ClkConfig+0x68>)
     7da:	4a04      	ldr	r2, [pc, #16]	; (7ec <ClkConfig+0x68>)
     7dc:	68d2      	ldr	r2, [r2, #12]
     7de:	2104      	movs	r1, #4
     7e0:	430a      	orrs	r2, r1
     7e2:	60da      	str	r2, [r3, #12]
     7e4:	46c0      	nop			; (mov r8, r8)
     7e6:	46bd      	mov	sp, r7
     7e8:	bd80      	pop	{r7, pc}
     7ea:	46c0      	nop			; (mov r8, r8)
     7ec:	40020000 	.word	0x40020000
     7f0:	00000b04 	.word	0x00000b04
     7f4:	40018000 	.word	0x40018000

000007f8 <TimerConfig>:
     7f8:	b580      	push	{r7, lr}
     7fa:	af00      	add	r7, sp, #0
     7fc:	4b37      	ldr	r3, [pc, #220]	; (8dc <TimerConfig+0xe4>)
     7fe:	4a37      	ldr	r2, [pc, #220]	; (8dc <TimerConfig+0xe4>)
     800:	69d2      	ldr	r2, [r2, #28]
     802:	2180      	movs	r1, #128	; 0x80
     804:	01c9      	lsls	r1, r1, #7
     806:	430a      	orrs	r2, r1
     808:	61da      	str	r2, [r3, #28]
     80a:	4b34      	ldr	r3, [pc, #208]	; (8dc <TimerConfig+0xe4>)
     80c:	4a33      	ldr	r2, [pc, #204]	; (8dc <TimerConfig+0xe4>)
     80e:	6a52      	ldr	r2, [r2, #36]	; 0x24
     810:	2180      	movs	r1, #128	; 0x80
     812:	0449      	lsls	r1, r1, #17
     814:	430a      	orrs	r2, r1
     816:	625a      	str	r2, [r3, #36]	; 0x24
     818:	4b30      	ldr	r3, [pc, #192]	; (8dc <TimerConfig+0xe4>)
     81a:	4a30      	ldr	r2, [pc, #192]	; (8dc <TimerConfig+0xe4>)
     81c:	6a52      	ldr	r2, [r2, #36]	; 0x24
     81e:	21ff      	movs	r1, #255	; 0xff
     820:	438a      	bics	r2, r1
     822:	625a      	str	r2, [r3, #36]	; 0x24
     824:	4b2e      	ldr	r3, [pc, #184]	; (8e0 <TimerConfig+0xe8>)
     826:	2200      	movs	r2, #0
     828:	601a      	str	r2, [r3, #0]
     82a:	4b2d      	ldr	r3, [pc, #180]	; (8e0 <TimerConfig+0xe8>)
     82c:	225f      	movs	r2, #95	; 0x5f
     82e:	605a      	str	r2, [r3, #4]
     830:	4b2b      	ldr	r3, [pc, #172]	; (8e0 <TimerConfig+0xe8>)
     832:	4a2c      	ldr	r2, [pc, #176]	; (8e4 <TimerConfig+0xec>)
     834:	609a      	str	r2, [r3, #8]
     836:	4b2a      	ldr	r3, [pc, #168]	; (8e0 <TimerConfig+0xe8>)
     838:	22fa      	movs	r2, #250	; 0xfa
     83a:	0052      	lsls	r2, r2, #1
     83c:	611a      	str	r2, [r3, #16]
     83e:	4b28      	ldr	r3, [pc, #160]	; (8e0 <TimerConfig+0xe8>)
     840:	4a27      	ldr	r2, [pc, #156]	; (8e0 <TimerConfig+0xe8>)
     842:	6a12      	ldr	r2, [r2, #32]
     844:	4928      	ldr	r1, [pc, #160]	; (8e8 <TimerConfig+0xf0>)
     846:	400a      	ands	r2, r1
     848:	621a      	str	r2, [r3, #32]
     84a:	4b25      	ldr	r3, [pc, #148]	; (8e0 <TimerConfig+0xe8>)
     84c:	4a24      	ldr	r2, [pc, #144]	; (8e0 <TimerConfig+0xe8>)
     84e:	6a12      	ldr	r2, [r2, #32]
     850:	21e0      	movs	r1, #224	; 0xe0
     852:	0109      	lsls	r1, r1, #4
     854:	430a      	orrs	r2, r1
     856:	621a      	str	r2, [r3, #32]
     858:	4b21      	ldr	r3, [pc, #132]	; (8e0 <TimerConfig+0xe8>)
     85a:	4a21      	ldr	r2, [pc, #132]	; (8e0 <TimerConfig+0xe8>)
     85c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     85e:	210f      	movs	r1, #15
     860:	438a      	bics	r2, r1
     862:	631a      	str	r2, [r3, #48]	; 0x30
     864:	4b1e      	ldr	r3, [pc, #120]	; (8e0 <TimerConfig+0xe8>)
     866:	4a1e      	ldr	r2, [pc, #120]	; (8e0 <TimerConfig+0xe8>)
     868:	6b12      	ldr	r2, [r2, #48]	; 0x30
     86a:	210c      	movs	r1, #12
     86c:	430a      	orrs	r2, r1
     86e:	631a      	str	r2, [r3, #48]	; 0x30
     870:	4b1b      	ldr	r3, [pc, #108]	; (8e0 <TimerConfig+0xe8>)
     872:	4a1b      	ldr	r2, [pc, #108]	; (8e0 <TimerConfig+0xe8>)
     874:	6b12      	ldr	r2, [r2, #48]	; 0x30
     876:	2101      	movs	r1, #1
     878:	430a      	orrs	r2, r1
     87a:	631a      	str	r2, [r3, #48]	; 0x30
     87c:	4b18      	ldr	r3, [pc, #96]	; (8e0 <TimerConfig+0xe8>)
     87e:	2201      	movs	r2, #1
     880:	60da      	str	r2, [r3, #12]
     882:	4b16      	ldr	r3, [pc, #88]	; (8dc <TimerConfig+0xe4>)
     884:	4a15      	ldr	r2, [pc, #84]	; (8dc <TimerConfig+0xe4>)
     886:	69d2      	ldr	r2, [r2, #28]
     888:	2180      	movs	r1, #128	; 0x80
     88a:	0309      	lsls	r1, r1, #12
     88c:	430a      	orrs	r2, r1
     88e:	61da      	str	r2, [r3, #28]
     890:	4b12      	ldr	r3, [pc, #72]	; (8dc <TimerConfig+0xe4>)
     892:	4a12      	ldr	r2, [pc, #72]	; (8dc <TimerConfig+0xe4>)
     894:	6a92      	ldr	r2, [r2, #40]	; 0x28
     896:	2180      	movs	r1, #128	; 0x80
     898:	04c9      	lsls	r1, r1, #19
     89a:	430a      	orrs	r2, r1
     89c:	629a      	str	r2, [r3, #40]	; 0x28
     89e:	4b0f      	ldr	r3, [pc, #60]	; (8dc <TimerConfig+0xe4>)
     8a0:	4a0e      	ldr	r2, [pc, #56]	; (8dc <TimerConfig+0xe4>)
     8a2:	6a92      	ldr	r2, [r2, #40]	; 0x28
     8a4:	4911      	ldr	r1, [pc, #68]	; (8ec <TimerConfig+0xf4>)
     8a6:	400a      	ands	r2, r1
     8a8:	629a      	str	r2, [r3, #40]	; 0x28
     8aa:	4b11      	ldr	r3, [pc, #68]	; (8f0 <TimerConfig+0xf8>)
     8ac:	2200      	movs	r2, #0
     8ae:	601a      	str	r2, [r3, #0]
     8b0:	4b0f      	ldr	r3, [pc, #60]	; (8f0 <TimerConfig+0xf8>)
     8b2:	225f      	movs	r2, #95	; 0x5f
     8b4:	605a      	str	r2, [r3, #4]
     8b6:	4b0e      	ldr	r3, [pc, #56]	; (8f0 <TimerConfig+0xf8>)
     8b8:	4a0a      	ldr	r2, [pc, #40]	; (8e4 <TimerConfig+0xec>)
     8ba:	609a      	str	r2, [r3, #8]
     8bc:	4b0c      	ldr	r3, [pc, #48]	; (8f0 <TimerConfig+0xf8>)
     8be:	4a0c      	ldr	r2, [pc, #48]	; (8f0 <TimerConfig+0xf8>)
     8c0:	6d92      	ldr	r2, [r2, #88]	; 0x58
     8c2:	2102      	movs	r1, #2
     8c4:	430a      	orrs	r2, r1
     8c6:	659a      	str	r2, [r3, #88]	; 0x58
     8c8:	4b09      	ldr	r3, [pc, #36]	; (8f0 <TimerConfig+0xf8>)
     8ca:	2201      	movs	r2, #1
     8cc:	60da      	str	r2, [r3, #12]
     8ce:	200d      	movs	r0, #13
     8d0:	f7ff fbf6 	bl	c0 <NVIC_EnableIRQ>
     8d4:	46c0      	nop			; (mov r8, r8)
     8d6:	46bd      	mov	sp, r7
     8d8:	bd80      	pop	{r7, pc}
     8da:	46c0      	nop			; (mov r8, r8)
     8dc:	40020000 	.word	0x40020000
     8e0:	40070000 	.word	0x40070000
     8e4:	000003e7 	.word	0x000003e7
     8e8:	fffff1ff 	.word	0xfffff1ff
     8ec:	ff00ffff 	.word	0xff00ffff
     8f0:	40098000 	.word	0x40098000

000008f4 <mil_std_1533_init_rt>:
     8f4:	b580      	push	{r7, lr}
     8f6:	b082      	sub	sp, #8
     8f8:	af00      	add	r7, sp, #0
     8fa:	4b21      	ldr	r3, [pc, #132]	; (980 <mil_std_1533_init_rt+0x8c>)
     8fc:	603b      	str	r3, [r7, #0]
     8fe:	4b21      	ldr	r3, [pc, #132]	; (984 <mil_std_1533_init_rt+0x90>)
     900:	4a20      	ldr	r2, [pc, #128]	; (984 <mil_std_1533_init_rt+0x90>)
     902:	69d2      	ldr	r2, [r2, #28]
     904:	2180      	movs	r1, #128	; 0x80
     906:	0089      	lsls	r1, r1, #2
     908:	430a      	orrs	r2, r1
     90a:	61da      	str	r2, [r3, #28]
     90c:	4b1d      	ldr	r3, [pc, #116]	; (984 <mil_std_1533_init_rt+0x90>)
     90e:	4a1d      	ldr	r2, [pc, #116]	; (984 <mil_std_1533_init_rt+0x90>)
     910:	6b52      	ldr	r2, [r2, #52]	; 0x34
     912:	491d      	ldr	r1, [pc, #116]	; (988 <mil_std_1533_init_rt+0x94>)
     914:	430a      	orrs	r2, r1
     916:	635a      	str	r2, [r3, #52]	; 0x34
     918:	4a1c      	ldr	r2, [pc, #112]	; (98c <mil_std_1533_init_rt+0x98>)
     91a:	2380      	movs	r3, #128	; 0x80
     91c:	015b      	lsls	r3, r3, #5
     91e:	2101      	movs	r1, #1
     920:	50d1      	str	r1, [r2, r3]
     922:	4a1a      	ldr	r2, [pc, #104]	; (98c <mil_std_1533_init_rt+0x98>)
     924:	2380      	movs	r3, #128	; 0x80
     926:	015b      	lsls	r3, r3, #5
     928:	4919      	ldr	r1, [pc, #100]	; (990 <mil_std_1533_init_rt+0x9c>)
     92a:	50d1      	str	r1, [r2, r3]
     92c:	4917      	ldr	r1, [pc, #92]	; (98c <mil_std_1533_init_rt+0x98>)
     92e:	4a17      	ldr	r2, [pc, #92]	; (98c <mil_std_1533_init_rt+0x98>)
     930:	2381      	movs	r3, #129	; 0x81
     932:	015b      	lsls	r3, r3, #5
     934:	58d3      	ldr	r3, [r2, r3]
     936:	2206      	movs	r2, #6
     938:	431a      	orrs	r2, r3
     93a:	2381      	movs	r3, #129	; 0x81
     93c:	015b      	lsls	r3, r3, #5
     93e:	50ca      	str	r2, [r1, r3]
     940:	2001      	movs	r0, #1
     942:	f7ff fbbd 	bl	c0 <NVIC_EnableIRQ>
     946:	4911      	ldr	r1, [pc, #68]	; (98c <mil_std_1533_init_rt+0x98>)
     948:	4a12      	ldr	r2, [pc, #72]	; (994 <mil_std_1533_init_rt+0xa0>)
     94a:	2380      	movs	r3, #128	; 0x80
     94c:	01db      	lsls	r3, r3, #7
     94e:	508b      	str	r3, [r1, r2]
     950:	2300      	movs	r3, #0
     952:	607b      	str	r3, [r7, #4]
     954:	e00d      	b.n	972 <mil_std_1533_init_rt+0x7e>
     956:	683b      	ldr	r3, [r7, #0]
     958:	1d1a      	adds	r2, r3, #4
     95a:	603a      	str	r2, [r7, #0]
     95c:	687a      	ldr	r2, [r7, #4]
     95e:	b292      	uxth	r2, r2
     960:	210f      	movs	r1, #15
     962:	400a      	ands	r2, r1
     964:	b292      	uxth	r2, r2
     966:	3230      	adds	r2, #48	; 0x30
     968:	b292      	uxth	r2, r2
     96a:	601a      	str	r2, [r3, #0]
     96c:	687b      	ldr	r3, [r7, #4]
     96e:	3301      	adds	r3, #1
     970:	607b      	str	r3, [r7, #4]
     972:	687b      	ldr	r3, [r7, #4]
     974:	2b1f      	cmp	r3, #31
     976:	ddee      	ble.n	956 <mil_std_1533_init_rt+0x62>
     978:	46c0      	nop			; (mov r8, r8)
     97a:	46bd      	mov	sp, r7
     97c:	b002      	add	sp, #8
     97e:	bd80      	pop	{r7, pc}
     980:	40048080 	.word	0x40048080
     984:	40020000 	.word	0x40020000
     988:	02000100 	.word	0x02000100
     98c:	40048000 	.word	0x40048000
     990:	00018238 	.word	0x00018238
     994:	00001018 	.word	0x00001018

00000998 <SystemInit>:
     998:	b580      	push	{r7, lr}
     99a:	af00      	add	r7, sp, #0
     99c:	f7ff fef2 	bl	784 <ClkConfig>
     9a0:	f7ff fdfc 	bl	59c <PortConfig>
     9a4:	f7ff ff28 	bl	7f8 <TimerConfig>
     9a8:	f000 fa28 	bl	dfc <uart_init>
     9ac:	f7ff ffa2 	bl	8f4 <mil_std_1533_init_rt>
     9b0:	f7ff fed2 	bl	758 <dac_init>
     9b4:	46c0      	nop			; (mov r8, r8)
     9b6:	46bd      	mov	sp, r7
     9b8:	bd80      	pop	{r7, pc}
     9ba:	46c0      	nop			; (mov r8, r8)

000009bc <SysTick_Handler>:
     9bc:	b580      	push	{r7, lr}
     9be:	af00      	add	r7, sp, #0
     9c0:	4b03      	ldr	r3, [pc, #12]	; (9d0 <SysTick_Handler+0x14>)
     9c2:	681b      	ldr	r3, [r3, #0]
     9c4:	1c5a      	adds	r2, r3, #1
     9c6:	4b02      	ldr	r3, [pc, #8]	; (9d0 <SysTick_Handler+0x14>)
     9c8:	601a      	str	r2, [r3, #0]
     9ca:	46c0      	nop			; (mov r8, r8)
     9cc:	46bd      	mov	sp, r7
     9ce:	bd80      	pop	{r7, pc}
     9d0:	200000e4 	.word	0x200000e4

000009d4 <TIMER4_Handler>:
     9d4:	b580      	push	{r7, lr}
     9d6:	af00      	add	r7, sp, #0
     9d8:	4b06      	ldr	r3, [pc, #24]	; (9f4 <TIMER4_Handler+0x20>)
     9da:	2200      	movs	r2, #0
     9dc:	655a      	str	r2, [r3, #84]	; 0x54
     9de:	4b06      	ldr	r3, [pc, #24]	; (9f8 <TIMER4_Handler+0x24>)
     9e0:	681b      	ldr	r3, [r3, #0]
     9e2:	1c5a      	adds	r2, r3, #1
     9e4:	4b04      	ldr	r3, [pc, #16]	; (9f8 <TIMER4_Handler+0x24>)
     9e6:	601a      	str	r2, [r3, #0]
     9e8:	4b04      	ldr	r3, [pc, #16]	; (9fc <TIMER4_Handler+0x28>)
     9ea:	2201      	movs	r2, #1
     9ec:	601a      	str	r2, [r3, #0]
     9ee:	46c0      	nop			; (mov r8, r8)
     9f0:	46bd      	mov	sp, r7
     9f2:	bd80      	pop	{r7, pc}
     9f4:	40098000 	.word	0x40098000
     9f8:	200000e4 	.word	0x200000e4
     9fc:	200000ec 	.word	0x200000ec

00000a00 <MIL_STD_1553B1_Handler>:
     a00:	b590      	push	{r4, r7, lr}
     a02:	b087      	sub	sp, #28
     a04:	af00      	add	r7, sp, #0
     a06:	4bbb      	ldr	r3, [pc, #748]	; (cf4 <MIL_STD_1553B1_Handler+0x2f4>)
     a08:	613b      	str	r3, [r7, #16]
     a0a:	4abb      	ldr	r2, [pc, #748]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     a0c:	4bbb      	ldr	r3, [pc, #748]	; (cfc <MIL_STD_1553B1_Handler+0x2fc>)
     a0e:	58d3      	ldr	r3, [r2, r3]
     a10:	2202      	movs	r2, #2
     a12:	4013      	ands	r3, r2
     a14:	d100      	bne.n	a18 <MIL_STD_1553B1_Handler+0x18>
     a16:	e115      	b.n	c44 <MIL_STD_1553B1_Handler+0x244>
     a18:	4ab7      	ldr	r2, [pc, #732]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     a1a:	4bb9      	ldr	r3, [pc, #740]	; (d00 <MIL_STD_1553B1_Handler+0x300>)
     a1c:	58d3      	ldr	r3, [r2, r3]
     a1e:	4ab9      	ldr	r2, [pc, #740]	; (d04 <MIL_STD_1553B1_Handler+0x304>)
     a20:	4293      	cmp	r3, r2
     a22:	d000      	beq.n	a26 <MIL_STD_1553B1_Handler+0x26>
     a24:	e10e      	b.n	c44 <MIL_STD_1553B1_Handler+0x244>
     a26:	4bb8      	ldr	r3, [pc, #736]	; (d08 <MIL_STD_1553B1_Handler+0x308>)
     a28:	681b      	ldr	r3, [r3, #0]
     a2a:	2201      	movs	r2, #1
     a2c:	4053      	eors	r3, r2
     a2e:	009a      	lsls	r2, r3, #2
     a30:	4bb6      	ldr	r3, [pc, #728]	; (d0c <MIL_STD_1553B1_Handler+0x30c>)
     a32:	18d3      	adds	r3, r2, r3
     a34:	681b      	ldr	r3, [r3, #0]
     a36:	60fb      	str	r3, [r7, #12]
     a38:	693b      	ldr	r3, [r7, #16]
     a3a:	1d1a      	adds	r2, r3, #4
     a3c:	613a      	str	r2, [r7, #16]
     a3e:	68fa      	ldr	r2, [r7, #12]
     a40:	1c91      	adds	r1, r2, #2
     a42:	60f9      	str	r1, [r7, #12]
     a44:	8812      	ldrh	r2, [r2, #0]
     a46:	601a      	str	r2, [r3, #0]
     a48:	693b      	ldr	r3, [r7, #16]
     a4a:	1d1a      	adds	r2, r3, #4
     a4c:	613a      	str	r2, [r7, #16]
     a4e:	68fa      	ldr	r2, [r7, #12]
     a50:	1c91      	adds	r1, r2, #2
     a52:	60f9      	str	r1, [r7, #12]
     a54:	8812      	ldrh	r2, [r2, #0]
     a56:	601a      	str	r2, [r3, #0]
     a58:	693b      	ldr	r3, [r7, #16]
     a5a:	1d1a      	adds	r2, r3, #4
     a5c:	613a      	str	r2, [r7, #16]
     a5e:	68fa      	ldr	r2, [r7, #12]
     a60:	1c91      	adds	r1, r2, #2
     a62:	60f9      	str	r1, [r7, #12]
     a64:	8812      	ldrh	r2, [r2, #0]
     a66:	601a      	str	r2, [r3, #0]
     a68:	693b      	ldr	r3, [r7, #16]
     a6a:	1d1a      	adds	r2, r3, #4
     a6c:	613a      	str	r2, [r7, #16]
     a6e:	68fa      	ldr	r2, [r7, #12]
     a70:	1c91      	adds	r1, r2, #2
     a72:	60f9      	str	r1, [r7, #12]
     a74:	8812      	ldrh	r2, [r2, #0]
     a76:	601a      	str	r2, [r3, #0]
     a78:	693b      	ldr	r3, [r7, #16]
     a7a:	1d1a      	adds	r2, r3, #4
     a7c:	613a      	str	r2, [r7, #16]
     a7e:	68fa      	ldr	r2, [r7, #12]
     a80:	1c91      	adds	r1, r2, #2
     a82:	60f9      	str	r1, [r7, #12]
     a84:	8812      	ldrh	r2, [r2, #0]
     a86:	601a      	str	r2, [r3, #0]
     a88:	693b      	ldr	r3, [r7, #16]
     a8a:	1d1a      	adds	r2, r3, #4
     a8c:	613a      	str	r2, [r7, #16]
     a8e:	68fa      	ldr	r2, [r7, #12]
     a90:	1c91      	adds	r1, r2, #2
     a92:	60f9      	str	r1, [r7, #12]
     a94:	8812      	ldrh	r2, [r2, #0]
     a96:	601a      	str	r2, [r3, #0]
     a98:	693b      	ldr	r3, [r7, #16]
     a9a:	1d1a      	adds	r2, r3, #4
     a9c:	613a      	str	r2, [r7, #16]
     a9e:	68fa      	ldr	r2, [r7, #12]
     aa0:	1c91      	adds	r1, r2, #2
     aa2:	60f9      	str	r1, [r7, #12]
     aa4:	8812      	ldrh	r2, [r2, #0]
     aa6:	601a      	str	r2, [r3, #0]
     aa8:	693b      	ldr	r3, [r7, #16]
     aaa:	1d1a      	adds	r2, r3, #4
     aac:	613a      	str	r2, [r7, #16]
     aae:	68fa      	ldr	r2, [r7, #12]
     ab0:	1c91      	adds	r1, r2, #2
     ab2:	60f9      	str	r1, [r7, #12]
     ab4:	8812      	ldrh	r2, [r2, #0]
     ab6:	601a      	str	r2, [r3, #0]
     ab8:	693b      	ldr	r3, [r7, #16]
     aba:	1d1a      	adds	r2, r3, #4
     abc:	613a      	str	r2, [r7, #16]
     abe:	68fa      	ldr	r2, [r7, #12]
     ac0:	1c91      	adds	r1, r2, #2
     ac2:	60f9      	str	r1, [r7, #12]
     ac4:	8812      	ldrh	r2, [r2, #0]
     ac6:	601a      	str	r2, [r3, #0]
     ac8:	693b      	ldr	r3, [r7, #16]
     aca:	1d1a      	adds	r2, r3, #4
     acc:	613a      	str	r2, [r7, #16]
     ace:	68fa      	ldr	r2, [r7, #12]
     ad0:	1c91      	adds	r1, r2, #2
     ad2:	60f9      	str	r1, [r7, #12]
     ad4:	8812      	ldrh	r2, [r2, #0]
     ad6:	601a      	str	r2, [r3, #0]
     ad8:	693b      	ldr	r3, [r7, #16]
     ada:	1d1a      	adds	r2, r3, #4
     adc:	613a      	str	r2, [r7, #16]
     ade:	68fa      	ldr	r2, [r7, #12]
     ae0:	1c91      	adds	r1, r2, #2
     ae2:	60f9      	str	r1, [r7, #12]
     ae4:	8812      	ldrh	r2, [r2, #0]
     ae6:	601a      	str	r2, [r3, #0]
     ae8:	693b      	ldr	r3, [r7, #16]
     aea:	1d1a      	adds	r2, r3, #4
     aec:	613a      	str	r2, [r7, #16]
     aee:	68fa      	ldr	r2, [r7, #12]
     af0:	1c91      	adds	r1, r2, #2
     af2:	60f9      	str	r1, [r7, #12]
     af4:	8812      	ldrh	r2, [r2, #0]
     af6:	601a      	str	r2, [r3, #0]
     af8:	693b      	ldr	r3, [r7, #16]
     afa:	1d1a      	adds	r2, r3, #4
     afc:	613a      	str	r2, [r7, #16]
     afe:	68fa      	ldr	r2, [r7, #12]
     b00:	1c91      	adds	r1, r2, #2
     b02:	60f9      	str	r1, [r7, #12]
     b04:	8812      	ldrh	r2, [r2, #0]
     b06:	601a      	str	r2, [r3, #0]
     b08:	693b      	ldr	r3, [r7, #16]
     b0a:	1d1a      	adds	r2, r3, #4
     b0c:	613a      	str	r2, [r7, #16]
     b0e:	68fa      	ldr	r2, [r7, #12]
     b10:	1c91      	adds	r1, r2, #2
     b12:	60f9      	str	r1, [r7, #12]
     b14:	8812      	ldrh	r2, [r2, #0]
     b16:	601a      	str	r2, [r3, #0]
     b18:	693b      	ldr	r3, [r7, #16]
     b1a:	1d1a      	adds	r2, r3, #4
     b1c:	613a      	str	r2, [r7, #16]
     b1e:	68fa      	ldr	r2, [r7, #12]
     b20:	1c91      	adds	r1, r2, #2
     b22:	60f9      	str	r1, [r7, #12]
     b24:	8812      	ldrh	r2, [r2, #0]
     b26:	601a      	str	r2, [r3, #0]
     b28:	693b      	ldr	r3, [r7, #16]
     b2a:	1d1a      	adds	r2, r3, #4
     b2c:	613a      	str	r2, [r7, #16]
     b2e:	68fa      	ldr	r2, [r7, #12]
     b30:	1c91      	adds	r1, r2, #2
     b32:	60f9      	str	r1, [r7, #12]
     b34:	8812      	ldrh	r2, [r2, #0]
     b36:	601a      	str	r2, [r3, #0]
     b38:	693b      	ldr	r3, [r7, #16]
     b3a:	1d1a      	adds	r2, r3, #4
     b3c:	613a      	str	r2, [r7, #16]
     b3e:	68fa      	ldr	r2, [r7, #12]
     b40:	1c91      	adds	r1, r2, #2
     b42:	60f9      	str	r1, [r7, #12]
     b44:	8812      	ldrh	r2, [r2, #0]
     b46:	601a      	str	r2, [r3, #0]
     b48:	693b      	ldr	r3, [r7, #16]
     b4a:	1d1a      	adds	r2, r3, #4
     b4c:	613a      	str	r2, [r7, #16]
     b4e:	68fa      	ldr	r2, [r7, #12]
     b50:	1c91      	adds	r1, r2, #2
     b52:	60f9      	str	r1, [r7, #12]
     b54:	8812      	ldrh	r2, [r2, #0]
     b56:	601a      	str	r2, [r3, #0]
     b58:	693b      	ldr	r3, [r7, #16]
     b5a:	1d1a      	adds	r2, r3, #4
     b5c:	613a      	str	r2, [r7, #16]
     b5e:	68fa      	ldr	r2, [r7, #12]
     b60:	1c91      	adds	r1, r2, #2
     b62:	60f9      	str	r1, [r7, #12]
     b64:	8812      	ldrh	r2, [r2, #0]
     b66:	601a      	str	r2, [r3, #0]
     b68:	693b      	ldr	r3, [r7, #16]
     b6a:	1d1a      	adds	r2, r3, #4
     b6c:	613a      	str	r2, [r7, #16]
     b6e:	68fa      	ldr	r2, [r7, #12]
     b70:	1c91      	adds	r1, r2, #2
     b72:	60f9      	str	r1, [r7, #12]
     b74:	8812      	ldrh	r2, [r2, #0]
     b76:	601a      	str	r2, [r3, #0]
     b78:	693b      	ldr	r3, [r7, #16]
     b7a:	1d1a      	adds	r2, r3, #4
     b7c:	613a      	str	r2, [r7, #16]
     b7e:	68fa      	ldr	r2, [r7, #12]
     b80:	1c91      	adds	r1, r2, #2
     b82:	60f9      	str	r1, [r7, #12]
     b84:	8812      	ldrh	r2, [r2, #0]
     b86:	601a      	str	r2, [r3, #0]
     b88:	693b      	ldr	r3, [r7, #16]
     b8a:	1d1a      	adds	r2, r3, #4
     b8c:	613a      	str	r2, [r7, #16]
     b8e:	68fa      	ldr	r2, [r7, #12]
     b90:	1c91      	adds	r1, r2, #2
     b92:	60f9      	str	r1, [r7, #12]
     b94:	8812      	ldrh	r2, [r2, #0]
     b96:	601a      	str	r2, [r3, #0]
     b98:	693b      	ldr	r3, [r7, #16]
     b9a:	1d1a      	adds	r2, r3, #4
     b9c:	613a      	str	r2, [r7, #16]
     b9e:	68fa      	ldr	r2, [r7, #12]
     ba0:	1c91      	adds	r1, r2, #2
     ba2:	60f9      	str	r1, [r7, #12]
     ba4:	8812      	ldrh	r2, [r2, #0]
     ba6:	601a      	str	r2, [r3, #0]
     ba8:	693b      	ldr	r3, [r7, #16]
     baa:	1d1a      	adds	r2, r3, #4
     bac:	613a      	str	r2, [r7, #16]
     bae:	68fa      	ldr	r2, [r7, #12]
     bb0:	1c91      	adds	r1, r2, #2
     bb2:	60f9      	str	r1, [r7, #12]
     bb4:	8812      	ldrh	r2, [r2, #0]
     bb6:	601a      	str	r2, [r3, #0]
     bb8:	693b      	ldr	r3, [r7, #16]
     bba:	1d1a      	adds	r2, r3, #4
     bbc:	613a      	str	r2, [r7, #16]
     bbe:	68fa      	ldr	r2, [r7, #12]
     bc0:	1c91      	adds	r1, r2, #2
     bc2:	60f9      	str	r1, [r7, #12]
     bc4:	8812      	ldrh	r2, [r2, #0]
     bc6:	601a      	str	r2, [r3, #0]
     bc8:	693b      	ldr	r3, [r7, #16]
     bca:	1d1a      	adds	r2, r3, #4
     bcc:	613a      	str	r2, [r7, #16]
     bce:	68fa      	ldr	r2, [r7, #12]
     bd0:	1c91      	adds	r1, r2, #2
     bd2:	60f9      	str	r1, [r7, #12]
     bd4:	8812      	ldrh	r2, [r2, #0]
     bd6:	601a      	str	r2, [r3, #0]
     bd8:	693b      	ldr	r3, [r7, #16]
     bda:	1d1a      	adds	r2, r3, #4
     bdc:	613a      	str	r2, [r7, #16]
     bde:	68fa      	ldr	r2, [r7, #12]
     be0:	1c91      	adds	r1, r2, #2
     be2:	60f9      	str	r1, [r7, #12]
     be4:	8812      	ldrh	r2, [r2, #0]
     be6:	601a      	str	r2, [r3, #0]
     be8:	693b      	ldr	r3, [r7, #16]
     bea:	1d1a      	adds	r2, r3, #4
     bec:	613a      	str	r2, [r7, #16]
     bee:	68fa      	ldr	r2, [r7, #12]
     bf0:	1c91      	adds	r1, r2, #2
     bf2:	60f9      	str	r1, [r7, #12]
     bf4:	8812      	ldrh	r2, [r2, #0]
     bf6:	601a      	str	r2, [r3, #0]
     bf8:	693b      	ldr	r3, [r7, #16]
     bfa:	1d1a      	adds	r2, r3, #4
     bfc:	613a      	str	r2, [r7, #16]
     bfe:	68fa      	ldr	r2, [r7, #12]
     c00:	1c91      	adds	r1, r2, #2
     c02:	60f9      	str	r1, [r7, #12]
     c04:	8812      	ldrh	r2, [r2, #0]
     c06:	601a      	str	r2, [r3, #0]
     c08:	693b      	ldr	r3, [r7, #16]
     c0a:	1d1a      	adds	r2, r3, #4
     c0c:	613a      	str	r2, [r7, #16]
     c0e:	68fa      	ldr	r2, [r7, #12]
     c10:	1c91      	adds	r1, r2, #2
     c12:	60f9      	str	r1, [r7, #12]
     c14:	8812      	ldrh	r2, [r2, #0]
     c16:	601a      	str	r2, [r3, #0]
     c18:	693b      	ldr	r3, [r7, #16]
     c1a:	1d1a      	adds	r2, r3, #4
     c1c:	613a      	str	r2, [r7, #16]
     c1e:	68fa      	ldr	r2, [r7, #12]
     c20:	1c91      	adds	r1, r2, #2
     c22:	60f9      	str	r1, [r7, #12]
     c24:	8812      	ldrh	r2, [r2, #0]
     c26:	601a      	str	r2, [r3, #0]
     c28:	693b      	ldr	r3, [r7, #16]
     c2a:	1d1a      	adds	r2, r3, #4
     c2c:	613a      	str	r2, [r7, #16]
     c2e:	68fa      	ldr	r2, [r7, #12]
     c30:	1c91      	adds	r1, r2, #2
     c32:	60f9      	str	r1, [r7, #12]
     c34:	8812      	ldrh	r2, [r2, #0]
     c36:	601a      	str	r2, [r3, #0]
     c38:	4b35      	ldr	r3, [pc, #212]	; (d10 <MIL_STD_1553B1_Handler+0x310>)
     c3a:	4a35      	ldr	r2, [pc, #212]	; (d10 <MIL_STD_1553B1_Handler+0x310>)
     c3c:	6812      	ldr	r2, [r2, #0]
     c3e:	0c12      	lsrs	r2, r2, #16
     c40:	0412      	lsls	r2, r2, #16
     c42:	601a      	str	r2, [r3, #0]
     c44:	4a2c      	ldr	r2, [pc, #176]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     c46:	4b2d      	ldr	r3, [pc, #180]	; (cfc <MIL_STD_1553B1_Handler+0x2fc>)
     c48:	58d3      	ldr	r3, [r2, r3]
     c4a:	2204      	movs	r2, #4
     c4c:	4013      	ands	r3, r2
     c4e:	d04c      	beq.n	cea <MIL_STD_1553B1_Handler+0x2ea>
     c50:	4a29      	ldr	r2, [pc, #164]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     c52:	4b2b      	ldr	r3, [pc, #172]	; (d00 <MIL_STD_1553B1_Handler+0x300>)
     c54:	58d3      	ldr	r3, [r2, r3]
     c56:	4a2b      	ldr	r2, [pc, #172]	; (d04 <MIL_STD_1553B1_Handler+0x304>)
     c58:	4293      	cmp	r3, r2
     c5a:	d106      	bne.n	c6a <MIL_STD_1553B1_Handler+0x26a>
     c5c:	4b2d      	ldr	r3, [pc, #180]	; (d14 <MIL_STD_1553B1_Handler+0x314>)
     c5e:	4a2d      	ldr	r2, [pc, #180]	; (d14 <MIL_STD_1553B1_Handler+0x314>)
     c60:	6812      	ldr	r2, [r2, #0]
     c62:	2101      	movs	r1, #1
     c64:	404a      	eors	r2, r1
     c66:	601a      	str	r2, [r3, #0]
     c68:	e03f      	b.n	cea <MIL_STD_1553B1_Handler+0x2ea>
     c6a:	4a23      	ldr	r2, [pc, #140]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     c6c:	4b24      	ldr	r3, [pc, #144]	; (d00 <MIL_STD_1553B1_Handler+0x300>)
     c6e:	58d3      	ldr	r3, [r2, r3]
     c70:	2b01      	cmp	r3, #1
     c72:	d13a      	bne.n	cea <MIL_STD_1553B1_Handler+0x2ea>
     c74:	4a20      	ldr	r2, [pc, #128]	; (cf8 <MIL_STD_1553B1_Handler+0x2f8>)
     c76:	4b28      	ldr	r3, [pc, #160]	; (d18 <MIL_STD_1553B1_Handler+0x318>)
     c78:	58d3      	ldr	r3, [r2, r3]
     c7a:	221f      	movs	r2, #31
     c7c:	4013      	ands	r3, r2
     c7e:	60bb      	str	r3, [r7, #8]
     c80:	1dbb      	adds	r3, r7, #6
     c82:	2200      	movs	r2, #0
     c84:	801a      	strh	r2, [r3, #0]
     c86:	4b25      	ldr	r3, [pc, #148]	; (d1c <MIL_STD_1553B1_Handler+0x31c>)
     c88:	603b      	str	r3, [r7, #0]
     c8a:	4b25      	ldr	r3, [pc, #148]	; (d20 <MIL_STD_1553B1_Handler+0x320>)
     c8c:	681b      	ldr	r3, [r3, #0]
     c8e:	2b00      	cmp	r3, #0
     c90:	d12b      	bne.n	cea <MIL_STD_1553B1_Handler+0x2ea>
     c92:	68bb      	ldr	r3, [r7, #8]
     c94:	2b20      	cmp	r3, #32
     c96:	d828      	bhi.n	cea <MIL_STD_1553B1_Handler+0x2ea>
     c98:	2300      	movs	r3, #0
     c9a:	617b      	str	r3, [r7, #20]
     c9c:	e00c      	b.n	cb8 <MIL_STD_1553B1_Handler+0x2b8>
     c9e:	697b      	ldr	r3, [r7, #20]
     ca0:	005b      	lsls	r3, r3, #1
     ca2:	683a      	ldr	r2, [r7, #0]
     ca4:	18d2      	adds	r2, r2, r3
     ca6:	693b      	ldr	r3, [r7, #16]
     ca8:	1d19      	adds	r1, r3, #4
     caa:	6139      	str	r1, [r7, #16]
     cac:	681b      	ldr	r3, [r3, #0]
     cae:	b29b      	uxth	r3, r3
     cb0:	8013      	strh	r3, [r2, #0]
     cb2:	697b      	ldr	r3, [r7, #20]
     cb4:	3301      	adds	r3, #1
     cb6:	617b      	str	r3, [r7, #20]
     cb8:	697a      	ldr	r2, [r7, #20]
     cba:	68bb      	ldr	r3, [r7, #8]
     cbc:	429a      	cmp	r2, r3
     cbe:	d3ee      	bcc.n	c9e <MIL_STD_1553B1_Handler+0x29e>
     cc0:	68bb      	ldr	r3, [r7, #8]
     cc2:	1e5a      	subs	r2, r3, #1
     cc4:	1dbc      	adds	r4, r7, #6
     cc6:	683b      	ldr	r3, [r7, #0]
     cc8:	0011      	movs	r1, r2
     cca:	0018      	movs	r0, r3
     ccc:	f7ff fa14 	bl	f8 <get_checksum>
     cd0:	0003      	movs	r3, r0
     cd2:	8023      	strh	r3, [r4, #0]
     cd4:	4b11      	ldr	r3, [pc, #68]	; (d1c <MIL_STD_1553B1_Handler+0x31c>)
     cd6:	891b      	ldrh	r3, [r3, #8]
     cd8:	1dba      	adds	r2, r7, #6
     cda:	8812      	ldrh	r2, [r2, #0]
     cdc:	1ad3      	subs	r3, r2, r3
     cde:	425a      	negs	r2, r3
     ce0:	4153      	adcs	r3, r2
     ce2:	b2db      	uxtb	r3, r3
     ce4:	001a      	movs	r2, r3
     ce6:	4b0e      	ldr	r3, [pc, #56]	; (d20 <MIL_STD_1553B1_Handler+0x320>)
     ce8:	601a      	str	r2, [r3, #0]
     cea:	46c0      	nop			; (mov r8, r8)
     cec:	46bd      	mov	sp, r7
     cee:	b007      	add	sp, #28
     cf0:	bd90      	pop	{r4, r7, pc}
     cf2:	46c0      	nop			; (mov r8, r8)
     cf4:	40048080 	.word	0x40048080
     cf8:	40048000 	.word	0x40048000
     cfc:	00001004 	.word	0x00001004
     d00:	00001024 	.word	0x00001024
     d04:	00000402 	.word	0x00000402
     d08:	200000d8 	.word	0x200000d8
     d0c:	200000d0 	.word	0x200000d0
     d10:	400c0000 	.word	0x400c0000
     d14:	400c8000 	.word	0x400c8000
     d18:	0000100c 	.word	0x0000100c
     d1c:	200000c4 	.word	0x200000c4
     d20:	200000e8 	.word	0x200000e8

00000d24 <handler_reset>:
     d24:	b580      	push	{r7, lr}
     d26:	b082      	sub	sp, #8
     d28:	af00      	add	r7, sp, #0
     d2a:	4b11      	ldr	r3, [pc, #68]	; (d70 <handler_reset+0x4c>)
     d2c:	607b      	str	r3, [r7, #4]
     d2e:	4b11      	ldr	r3, [pc, #68]	; (d74 <handler_reset+0x50>)
     d30:	603b      	str	r3, [r7, #0]
     d32:	e007      	b.n	d44 <handler_reset+0x20>
     d34:	683b      	ldr	r3, [r7, #0]
     d36:	1d1a      	adds	r2, r3, #4
     d38:	603a      	str	r2, [r7, #0]
     d3a:	687a      	ldr	r2, [r7, #4]
     d3c:	1d11      	adds	r1, r2, #4
     d3e:	6079      	str	r1, [r7, #4]
     d40:	6812      	ldr	r2, [r2, #0]
     d42:	601a      	str	r2, [r3, #0]
     d44:	683a      	ldr	r2, [r7, #0]
     d46:	4b0c      	ldr	r3, [pc, #48]	; (d78 <handler_reset+0x54>)
     d48:	429a      	cmp	r2, r3
     d4a:	d3f3      	bcc.n	d34 <handler_reset+0x10>
     d4c:	4b0b      	ldr	r3, [pc, #44]	; (d7c <handler_reset+0x58>)
     d4e:	603b      	str	r3, [r7, #0]
     d50:	e004      	b.n	d5c <handler_reset+0x38>
     d52:	683b      	ldr	r3, [r7, #0]
     d54:	1d1a      	adds	r2, r3, #4
     d56:	603a      	str	r2, [r7, #0]
     d58:	2200      	movs	r2, #0
     d5a:	601a      	str	r2, [r3, #0]
     d5c:	683a      	ldr	r2, [r7, #0]
     d5e:	4b08      	ldr	r3, [pc, #32]	; (d80 <handler_reset+0x5c>)
     d60:	429a      	cmp	r2, r3
     d62:	d3f6      	bcc.n	d52 <handler_reset+0x2e>
     d64:	f7ff fbaa 	bl	4bc <main>
     d68:	46c0      	nop			; (mov r8, r8)
     d6a:	46bd      	mov	sp, r7
     d6c:	b002      	add	sp, #8
     d6e:	bd80      	pop	{r7, pc}
     d70:	00001b8c 	.word	0x00001b8c
     d74:	20000000 	.word	0x20000000
     d78:	20000044 	.word	0x20000044
     d7c:	20000044 	.word	0x20000044
     d80:	2000050c 	.word	0x2000050c

00000d84 <default_handler>:
     d84:	b580      	push	{r7, lr}
     d86:	af00      	add	r7, sp, #0
     d88:	e7fe      	b.n	d88 <default_handler+0x4>
     d8a:	46c0      	nop			; (mov r8, r8)

00000d8c <NVIC_EnableIRQ>:
     d8c:	b580      	push	{r7, lr}
     d8e:	b082      	sub	sp, #8
     d90:	af00      	add	r7, sp, #0
     d92:	0002      	movs	r2, r0
     d94:	1dfb      	adds	r3, r7, #7
     d96:	701a      	strb	r2, [r3, #0]
     d98:	4909      	ldr	r1, [pc, #36]	; (dc0 <NVIC_EnableIRQ+0x34>)
     d9a:	1dfb      	adds	r3, r7, #7
     d9c:	781b      	ldrb	r3, [r3, #0]
     d9e:	b25b      	sxtb	r3, r3
     da0:	095b      	lsrs	r3, r3, #5
     da2:	1dfa      	adds	r2, r7, #7
     da4:	7812      	ldrb	r2, [r2, #0]
     da6:	0010      	movs	r0, r2
     da8:	221f      	movs	r2, #31
     daa:	4002      	ands	r2, r0
     dac:	2001      	movs	r0, #1
     dae:	4090      	lsls	r0, r2
     db0:	0002      	movs	r2, r0
     db2:	009b      	lsls	r3, r3, #2
     db4:	505a      	str	r2, [r3, r1]
     db6:	46c0      	nop			; (mov r8, r8)
     db8:	46bd      	mov	sp, r7
     dba:	b002      	add	sp, #8
     dbc:	bd80      	pop	{r7, pc}
     dbe:	46c0      	nop			; (mov r8, r8)
     dc0:	e000e100 	.word	0xe000e100

00000dc4 <NVIC_DisableIRQ>:
     dc4:	b580      	push	{r7, lr}
     dc6:	b082      	sub	sp, #8
     dc8:	af00      	add	r7, sp, #0
     dca:	0002      	movs	r2, r0
     dcc:	1dfb      	adds	r3, r7, #7
     dce:	701a      	strb	r2, [r3, #0]
     dd0:	4909      	ldr	r1, [pc, #36]	; (df8 <NVIC_DisableIRQ+0x34>)
     dd2:	1dfb      	adds	r3, r7, #7
     dd4:	781b      	ldrb	r3, [r3, #0]
     dd6:	b25b      	sxtb	r3, r3
     dd8:	095b      	lsrs	r3, r3, #5
     dda:	1dfa      	adds	r2, r7, #7
     ddc:	7812      	ldrb	r2, [r2, #0]
     dde:	0010      	movs	r0, r2
     de0:	221f      	movs	r2, #31
     de2:	4002      	ands	r2, r0
     de4:	2001      	movs	r0, #1
     de6:	4090      	lsls	r0, r2
     de8:	0002      	movs	r2, r0
     dea:	3320      	adds	r3, #32
     dec:	009b      	lsls	r3, r3, #2
     dee:	505a      	str	r2, [r3, r1]
     df0:	46c0      	nop			; (mov r8, r8)
     df2:	46bd      	mov	sp, r7
     df4:	b002      	add	sp, #8
     df6:	bd80      	pop	{r7, pc}
     df8:	e000e100 	.word	0xe000e100

00000dfc <uart_init>:
     dfc:	b580      	push	{r7, lr}
     dfe:	af00      	add	r7, sp, #0
     e00:	4b1f      	ldr	r3, [pc, #124]	; (e80 <uart_init+0x84>)
     e02:	4a1f      	ldr	r2, [pc, #124]	; (e80 <uart_init+0x84>)
     e04:	69d2      	ldr	r2, [r2, #28]
     e06:	2140      	movs	r1, #64	; 0x40
     e08:	430a      	orrs	r2, r1
     e0a:	61da      	str	r2, [r3, #28]
     e0c:	4b1c      	ldr	r3, [pc, #112]	; (e80 <uart_init+0x84>)
     e0e:	4a1c      	ldr	r2, [pc, #112]	; (e80 <uart_init+0x84>)
     e10:	6a92      	ldr	r2, [r2, #40]	; 0x28
     e12:	2180      	movs	r1, #128	; 0x80
     e14:	0449      	lsls	r1, r1, #17
     e16:	430a      	orrs	r2, r1
     e18:	629a      	str	r2, [r3, #40]	; 0x28
     e1a:	4b1a      	ldr	r3, [pc, #104]	; (e84 <uart_init+0x88>)
     e1c:	2204      	movs	r2, #4
     e1e:	625a      	str	r2, [r3, #36]	; 0x24
     e20:	4b18      	ldr	r3, [pc, #96]	; (e84 <uart_init+0x88>)
     e22:	2233      	movs	r2, #51	; 0x33
     e24:	629a      	str	r2, [r3, #40]	; 0x28
     e26:	4b17      	ldr	r3, [pc, #92]	; (e84 <uart_init+0x88>)
     e28:	4a16      	ldr	r2, [pc, #88]	; (e84 <uart_init+0x88>)
     e2a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     e2c:	213f      	movs	r1, #63	; 0x3f
     e2e:	438a      	bics	r2, r1
     e30:	635a      	str	r2, [r3, #52]	; 0x34
     e32:	4b14      	ldr	r3, [pc, #80]	; (e84 <uart_init+0x88>)
     e34:	4a13      	ldr	r2, [pc, #76]	; (e84 <uart_init+0x88>)
     e36:	6b52      	ldr	r2, [r2, #52]	; 0x34
     e38:	2112      	movs	r1, #18
     e3a:	430a      	orrs	r2, r1
     e3c:	635a      	str	r2, [r3, #52]	; 0x34
     e3e:	4b11      	ldr	r3, [pc, #68]	; (e84 <uart_init+0x88>)
     e40:	4a10      	ldr	r2, [pc, #64]	; (e84 <uart_init+0x88>)
     e42:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e44:	2110      	movs	r1, #16
     e46:	430a      	orrs	r2, r1
     e48:	62da      	str	r2, [r3, #44]	; 0x2c
     e4a:	4b0e      	ldr	r3, [pc, #56]	; (e84 <uart_init+0x88>)
     e4c:	4a0d      	ldr	r2, [pc, #52]	; (e84 <uart_init+0x88>)
     e4e:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     e50:	2160      	movs	r1, #96	; 0x60
     e52:	430a      	orrs	r2, r1
     e54:	62da      	str	r2, [r3, #44]	; 0x2c
     e56:	4b0b      	ldr	r3, [pc, #44]	; (e84 <uart_init+0x88>)
     e58:	4a0a      	ldr	r2, [pc, #40]	; (e84 <uart_init+0x88>)
     e5a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     e5c:	490a      	ldr	r1, [pc, #40]	; (e88 <uart_init+0x8c>)
     e5e:	430a      	orrs	r2, r1
     e60:	631a      	str	r2, [r3, #48]	; 0x30
     e62:	4b08      	ldr	r3, [pc, #32]	; (e84 <uart_init+0x88>)
     e64:	4a07      	ldr	r2, [pc, #28]	; (e84 <uart_init+0x88>)
     e66:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e68:	2110      	movs	r1, #16
     e6a:	430a      	orrs	r2, r1
     e6c:	639a      	str	r2, [r3, #56]	; 0x38
     e6e:	4b05      	ldr	r3, [pc, #20]	; (e84 <uart_init+0x88>)
     e70:	4a04      	ldr	r2, [pc, #16]	; (e84 <uart_init+0x88>)
     e72:	6b92      	ldr	r2, [r2, #56]	; 0x38
     e74:	2140      	movs	r1, #64	; 0x40
     e76:	430a      	orrs	r2, r1
     e78:	639a      	str	r2, [r3, #56]	; 0x38
     e7a:	46c0      	nop			; (mov r8, r8)
     e7c:	46bd      	mov	sp, r7
     e7e:	bd80      	pop	{r7, pc}
     e80:	40020000 	.word	0x40020000
     e84:	40030000 	.word	0x40030000
     e88:	00000301 	.word	0x00000301

00000e8c <uart_read>:
     e8c:	b580      	push	{r7, lr}
     e8e:	b084      	sub	sp, #16
     e90:	af00      	add	r7, sp, #0
     e92:	6078      	str	r0, [r7, #4]
     e94:	6039      	str	r1, [r7, #0]
     e96:	4b18      	ldr	r3, [pc, #96]	; (ef8 <uart_read+0x6c>)
     e98:	681a      	ldr	r2, [r3, #0]
     e9a:	4b18      	ldr	r3, [pc, #96]	; (efc <uart_read+0x70>)
     e9c:	681b      	ldr	r3, [r3, #0]
     e9e:	429a      	cmp	r2, r3
     ea0:	d101      	bne.n	ea6 <uart_read+0x1a>
     ea2:	2300      	movs	r3, #0
     ea4:	e023      	b.n	eee <uart_read+0x62>
     ea6:	2300      	movs	r3, #0
     ea8:	60fb      	str	r3, [r7, #12]
     eaa:	e01b      	b.n	ee4 <uart_read+0x58>
     eac:	68fb      	ldr	r3, [r7, #12]
     eae:	687a      	ldr	r2, [r7, #4]
     eb0:	18d2      	adds	r2, r2, r3
     eb2:	4b11      	ldr	r3, [pc, #68]	; (ef8 <uart_read+0x6c>)
     eb4:	681b      	ldr	r3, [r3, #0]
     eb6:	4912      	ldr	r1, [pc, #72]	; (f00 <uart_read+0x74>)
     eb8:	5ccb      	ldrb	r3, [r1, r3]
     eba:	7013      	strb	r3, [r2, #0]
     ebc:	4b0e      	ldr	r3, [pc, #56]	; (ef8 <uart_read+0x6c>)
     ebe:	681b      	ldr	r3, [r3, #0]
     ec0:	3301      	adds	r3, #1
     ec2:	05db      	lsls	r3, r3, #23
     ec4:	0dda      	lsrs	r2, r3, #23
     ec6:	4b0c      	ldr	r3, [pc, #48]	; (ef8 <uart_read+0x6c>)
     ec8:	601a      	str	r2, [r3, #0]
     eca:	4b0b      	ldr	r3, [pc, #44]	; (ef8 <uart_read+0x6c>)
     ecc:	681a      	ldr	r2, [r3, #0]
     ece:	4b0b      	ldr	r3, [pc, #44]	; (efc <uart_read+0x70>)
     ed0:	681b      	ldr	r3, [r3, #0]
     ed2:	429a      	cmp	r2, r3
     ed4:	d103      	bne.n	ede <uart_read+0x52>
     ed6:	68fb      	ldr	r3, [r7, #12]
     ed8:	3301      	adds	r3, #1
     eda:	60fb      	str	r3, [r7, #12]
     edc:	e006      	b.n	eec <uart_read+0x60>
     ede:	68fb      	ldr	r3, [r7, #12]
     ee0:	3301      	adds	r3, #1
     ee2:	60fb      	str	r3, [r7, #12]
     ee4:	68fa      	ldr	r2, [r7, #12]
     ee6:	683b      	ldr	r3, [r7, #0]
     ee8:	429a      	cmp	r2, r3
     eea:	dbdf      	blt.n	eac <uart_read+0x20>
     eec:	68fb      	ldr	r3, [r7, #12]
     eee:	0018      	movs	r0, r3
     ef0:	46bd      	mov	sp, r7
     ef2:	b004      	add	sp, #16
     ef4:	bd80      	pop	{r7, pc}
     ef6:	46c0      	nop			; (mov r8, r8)
     ef8:	200004fc 	.word	0x200004fc
     efc:	200004f8 	.word	0x200004f8
     f00:	200002f8 	.word	0x200002f8

00000f04 <uart_send>:
     f04:	b580      	push	{r7, lr}
     f06:	b084      	sub	sp, #16
     f08:	af00      	add	r7, sp, #0
     f0a:	6078      	str	r0, [r7, #4]
     f0c:	6039      	str	r1, [r7, #0]
     f0e:	2006      	movs	r0, #6
     f10:	f7ff ff58 	bl	dc4 <NVIC_DisableIRQ>
     f14:	2300      	movs	r3, #0
     f16:	60fb      	str	r3, [r7, #12]
     f18:	e01b      	b.n	f52 <uart_send+0x4e>
     f1a:	4b20      	ldr	r3, [pc, #128]	; (f9c <uart_send+0x98>)
     f1c:	681b      	ldr	r3, [r3, #0]
     f1e:	68fa      	ldr	r2, [r7, #12]
     f20:	6879      	ldr	r1, [r7, #4]
     f22:	188a      	adds	r2, r1, r2
     f24:	7811      	ldrb	r1, [r2, #0]
     f26:	4a1e      	ldr	r2, [pc, #120]	; (fa0 <uart_send+0x9c>)
     f28:	54d1      	strb	r1, [r2, r3]
     f2a:	4b1c      	ldr	r3, [pc, #112]	; (f9c <uart_send+0x98>)
     f2c:	681b      	ldr	r3, [r3, #0]
     f2e:	3301      	adds	r3, #1
     f30:	05db      	lsls	r3, r3, #23
     f32:	0dda      	lsrs	r2, r3, #23
     f34:	4b19      	ldr	r3, [pc, #100]	; (f9c <uart_send+0x98>)
     f36:	601a      	str	r2, [r3, #0]
     f38:	4b18      	ldr	r3, [pc, #96]	; (f9c <uart_send+0x98>)
     f3a:	681a      	ldr	r2, [r3, #0]
     f3c:	4b19      	ldr	r3, [pc, #100]	; (fa4 <uart_send+0xa0>)
     f3e:	681b      	ldr	r3, [r3, #0]
     f40:	429a      	cmp	r2, r3
     f42:	d103      	bne.n	f4c <uart_send+0x48>
     f44:	68fb      	ldr	r3, [r7, #12]
     f46:	3301      	adds	r3, #1
     f48:	60fb      	str	r3, [r7, #12]
     f4a:	e006      	b.n	f5a <uart_send+0x56>
     f4c:	68fb      	ldr	r3, [r7, #12]
     f4e:	3301      	adds	r3, #1
     f50:	60fb      	str	r3, [r7, #12]
     f52:	68fa      	ldr	r2, [r7, #12]
     f54:	683b      	ldr	r3, [r7, #0]
     f56:	429a      	cmp	r2, r3
     f58:	dbdf      	blt.n	f1a <uart_send+0x16>
     f5a:	4b13      	ldr	r3, [pc, #76]	; (fa8 <uart_send+0xa4>)
     f5c:	699b      	ldr	r3, [r3, #24]
     f5e:	2208      	movs	r2, #8
     f60:	4013      	ands	r3, r2
     f62:	d10c      	bne.n	f7e <uart_send+0x7a>
     f64:	4a10      	ldr	r2, [pc, #64]	; (fa8 <uart_send+0xa4>)
     f66:	4b0f      	ldr	r3, [pc, #60]	; (fa4 <uart_send+0xa0>)
     f68:	681b      	ldr	r3, [r3, #0]
     f6a:	490d      	ldr	r1, [pc, #52]	; (fa0 <uart_send+0x9c>)
     f6c:	5ccb      	ldrb	r3, [r1, r3]
     f6e:	6013      	str	r3, [r2, #0]
     f70:	4b0c      	ldr	r3, [pc, #48]	; (fa4 <uart_send+0xa0>)
     f72:	681b      	ldr	r3, [r3, #0]
     f74:	3301      	adds	r3, #1
     f76:	05db      	lsls	r3, r3, #23
     f78:	0dda      	lsrs	r2, r3, #23
     f7a:	4b0a      	ldr	r3, [pc, #40]	; (fa4 <uart_send+0xa0>)
     f7c:	601a      	str	r2, [r3, #0]
     f7e:	4b0a      	ldr	r3, [pc, #40]	; (fa8 <uart_send+0xa4>)
     f80:	4a09      	ldr	r2, [pc, #36]	; (fa8 <uart_send+0xa4>)
     f82:	6b92      	ldr	r2, [r2, #56]	; 0x38
     f84:	2120      	movs	r1, #32
     f86:	430a      	orrs	r2, r1
     f88:	639a      	str	r2, [r3, #56]	; 0x38
     f8a:	2006      	movs	r0, #6
     f8c:	f7ff fefe 	bl	d8c <NVIC_EnableIRQ>
     f90:	68fb      	ldr	r3, [r7, #12]
     f92:	0018      	movs	r0, r3
     f94:	46bd      	mov	sp, r7
     f96:	b004      	add	sp, #16
     f98:	bd80      	pop	{r7, pc}
     f9a:	46c0      	nop			; (mov r8, r8)
     f9c:	200002f4 	.word	0x200002f4
     fa0:	200000f0 	.word	0x200000f0
     fa4:	200002f0 	.word	0x200002f0
     fa8:	40030000 	.word	0x40030000

00000fac <uart_putch>:
     fac:	b580      	push	{r7, lr}
     fae:	b082      	sub	sp, #8
     fb0:	af00      	add	r7, sp, #0
     fb2:	0002      	movs	r2, r0
     fb4:	1dfb      	adds	r3, r7, #7
     fb6:	701a      	strb	r2, [r3, #0]
     fb8:	46c0      	nop			; (mov r8, r8)
     fba:	4b06      	ldr	r3, [pc, #24]	; (fd4 <uart_putch+0x28>)
     fbc:	699b      	ldr	r3, [r3, #24]
     fbe:	2220      	movs	r2, #32
     fc0:	4013      	ands	r3, r2
     fc2:	d1fa      	bne.n	fba <uart_putch+0xe>
     fc4:	4b03      	ldr	r3, [pc, #12]	; (fd4 <uart_putch+0x28>)
     fc6:	1dfa      	adds	r2, r7, #7
     fc8:	7812      	ldrb	r2, [r2, #0]
     fca:	601a      	str	r2, [r3, #0]
     fcc:	46c0      	nop			; (mov r8, r8)
     fce:	46bd      	mov	sp, r7
     fd0:	b002      	add	sp, #8
     fd2:	bd80      	pop	{r7, pc}
     fd4:	40030000 	.word	0x40030000

00000fd8 <UART1_Handler>:
     fd8:	b580      	push	{r7, lr}
     fda:	af00      	add	r7, sp, #0
     fdc:	4b1a      	ldr	r3, [pc, #104]	; (1048 <UART1_Handler+0x70>)
     fde:	6c1b      	ldr	r3, [r3, #64]	; 0x40
     fe0:	2220      	movs	r2, #32
     fe2:	4013      	ands	r3, r2
     fe4:	d019      	beq.n	101a <UART1_Handler+0x42>
     fe6:	4b19      	ldr	r3, [pc, #100]	; (104c <UART1_Handler+0x74>)
     fe8:	681a      	ldr	r2, [r3, #0]
     fea:	4b19      	ldr	r3, [pc, #100]	; (1050 <UART1_Handler+0x78>)
     fec:	681b      	ldr	r3, [r3, #0]
     fee:	429a      	cmp	r2, r3
     ff0:	d106      	bne.n	1000 <UART1_Handler+0x28>
     ff2:	4b15      	ldr	r3, [pc, #84]	; (1048 <UART1_Handler+0x70>)
     ff4:	4a14      	ldr	r2, [pc, #80]	; (1048 <UART1_Handler+0x70>)
     ff6:	6b92      	ldr	r2, [r2, #56]	; 0x38
     ff8:	2120      	movs	r1, #32
     ffa:	438a      	bics	r2, r1
     ffc:	639a      	str	r2, [r3, #56]	; 0x38
     ffe:	e00c      	b.n	101a <UART1_Handler+0x42>
    1000:	4a11      	ldr	r2, [pc, #68]	; (1048 <UART1_Handler+0x70>)
    1002:	4b12      	ldr	r3, [pc, #72]	; (104c <UART1_Handler+0x74>)
    1004:	681b      	ldr	r3, [r3, #0]
    1006:	4913      	ldr	r1, [pc, #76]	; (1054 <UART1_Handler+0x7c>)
    1008:	5ccb      	ldrb	r3, [r1, r3]
    100a:	6013      	str	r3, [r2, #0]
    100c:	4b0f      	ldr	r3, [pc, #60]	; (104c <UART1_Handler+0x74>)
    100e:	681b      	ldr	r3, [r3, #0]
    1010:	3301      	adds	r3, #1
    1012:	05db      	lsls	r3, r3, #23
    1014:	0dda      	lsrs	r2, r3, #23
    1016:	4b0d      	ldr	r3, [pc, #52]	; (104c <UART1_Handler+0x74>)
    1018:	601a      	str	r2, [r3, #0]
    101a:	4b0b      	ldr	r3, [pc, #44]	; (1048 <UART1_Handler+0x70>)
    101c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    101e:	2210      	movs	r2, #16
    1020:	4013      	ands	r3, r2
    1022:	d00d      	beq.n	1040 <UART1_Handler+0x68>
    1024:	4b0c      	ldr	r3, [pc, #48]	; (1058 <UART1_Handler+0x80>)
    1026:	681a      	ldr	r2, [r3, #0]
    1028:	4b07      	ldr	r3, [pc, #28]	; (1048 <UART1_Handler+0x70>)
    102a:	681b      	ldr	r3, [r3, #0]
    102c:	b2d9      	uxtb	r1, r3
    102e:	4b0b      	ldr	r3, [pc, #44]	; (105c <UART1_Handler+0x84>)
    1030:	5499      	strb	r1, [r3, r2]
    1032:	4b09      	ldr	r3, [pc, #36]	; (1058 <UART1_Handler+0x80>)
    1034:	681b      	ldr	r3, [r3, #0]
    1036:	3301      	adds	r3, #1
    1038:	05db      	lsls	r3, r3, #23
    103a:	0dda      	lsrs	r2, r3, #23
    103c:	4b06      	ldr	r3, [pc, #24]	; (1058 <UART1_Handler+0x80>)
    103e:	601a      	str	r2, [r3, #0]
    1040:	46c0      	nop			; (mov r8, r8)
    1042:	46bd      	mov	sp, r7
    1044:	bd80      	pop	{r7, pc}
    1046:	46c0      	nop			; (mov r8, r8)
    1048:	40030000 	.word	0x40030000
    104c:	200002f0 	.word	0x200002f0
    1050:	200002f4 	.word	0x200002f4
    1054:	200000f0 	.word	0x200000f0
    1058:	200004f8 	.word	0x200004f8
    105c:	200002f8 	.word	0x200002f8

00001060 <xputc>:
    1060:	b580      	push	{r7, lr}
    1062:	b082      	sub	sp, #8
    1064:	af00      	add	r7, sp, #0
    1066:	0002      	movs	r2, r0
    1068:	1dfb      	adds	r3, r7, #7
    106a:	701a      	strb	r2, [r3, #0]
    106c:	1dfb      	adds	r3, r7, #7
    106e:	781b      	ldrb	r3, [r3, #0]
    1070:	2b0a      	cmp	r3, #10
    1072:	d102      	bne.n	107a <xputc+0x1a>
    1074:	200d      	movs	r0, #13
    1076:	f7ff fff3 	bl	1060 <xputc>
    107a:	4b0d      	ldr	r3, [pc, #52]	; (10b0 <xputc+0x50>)
    107c:	681b      	ldr	r3, [r3, #0]
    107e:	2b00      	cmp	r3, #0
    1080:	d008      	beq.n	1094 <xputc+0x34>
    1082:	4b0b      	ldr	r3, [pc, #44]	; (10b0 <xputc+0x50>)
    1084:	681b      	ldr	r3, [r3, #0]
    1086:	1c59      	adds	r1, r3, #1
    1088:	4a09      	ldr	r2, [pc, #36]	; (10b0 <xputc+0x50>)
    108a:	6011      	str	r1, [r2, #0]
    108c:	1dfa      	adds	r2, r7, #7
    108e:	7812      	ldrb	r2, [r2, #0]
    1090:	701a      	strb	r2, [r3, #0]
    1092:	e009      	b.n	10a8 <xputc+0x48>
    1094:	4b07      	ldr	r3, [pc, #28]	; (10b4 <xputc+0x54>)
    1096:	681b      	ldr	r3, [r3, #0]
    1098:	2b00      	cmp	r3, #0
    109a:	d005      	beq.n	10a8 <xputc+0x48>
    109c:	4b05      	ldr	r3, [pc, #20]	; (10b4 <xputc+0x54>)
    109e:	681b      	ldr	r3, [r3, #0]
    10a0:	1dfa      	adds	r2, r7, #7
    10a2:	7812      	ldrb	r2, [r2, #0]
    10a4:	0010      	movs	r0, r2
    10a6:	4798      	blx	r3
    10a8:	46bd      	mov	sp, r7
    10aa:	b002      	add	sp, #8
    10ac:	bd80      	pop	{r7, pc}
    10ae:	46c0      	nop			; (mov r8, r8)
    10b0:	20000504 	.word	0x20000504
    10b4:	20000500 	.word	0x20000500

000010b8 <xputs>:
    10b8:	b580      	push	{r7, lr}
    10ba:	b082      	sub	sp, #8
    10bc:	af00      	add	r7, sp, #0
    10be:	6078      	str	r0, [r7, #4]
    10c0:	e006      	b.n	10d0 <xputs+0x18>
    10c2:	687b      	ldr	r3, [r7, #4]
    10c4:	1c5a      	adds	r2, r3, #1
    10c6:	607a      	str	r2, [r7, #4]
    10c8:	781b      	ldrb	r3, [r3, #0]
    10ca:	0018      	movs	r0, r3
    10cc:	f7ff ffc8 	bl	1060 <xputc>
    10d0:	687b      	ldr	r3, [r7, #4]
    10d2:	781b      	ldrb	r3, [r3, #0]
    10d4:	2b00      	cmp	r3, #0
    10d6:	d1f4      	bne.n	10c2 <xputs+0xa>
    10d8:	46c0      	nop			; (mov r8, r8)
    10da:	46bd      	mov	sp, r7
    10dc:	b002      	add	sp, #8
    10de:	bd80      	pop	{r7, pc}

000010e0 <xfputs>:
    10e0:	b580      	push	{r7, lr}
    10e2:	b084      	sub	sp, #16
    10e4:	af00      	add	r7, sp, #0
    10e6:	6078      	str	r0, [r7, #4]
    10e8:	6039      	str	r1, [r7, #0]
    10ea:	4b0c      	ldr	r3, [pc, #48]	; (111c <xfputs+0x3c>)
    10ec:	681b      	ldr	r3, [r3, #0]
    10ee:	60fb      	str	r3, [r7, #12]
    10f0:	4b0a      	ldr	r3, [pc, #40]	; (111c <xfputs+0x3c>)
    10f2:	687a      	ldr	r2, [r7, #4]
    10f4:	601a      	str	r2, [r3, #0]
    10f6:	e006      	b.n	1106 <xfputs+0x26>
    10f8:	683b      	ldr	r3, [r7, #0]
    10fa:	1c5a      	adds	r2, r3, #1
    10fc:	603a      	str	r2, [r7, #0]
    10fe:	781b      	ldrb	r3, [r3, #0]
    1100:	0018      	movs	r0, r3
    1102:	f7ff ffad 	bl	1060 <xputc>
    1106:	683b      	ldr	r3, [r7, #0]
    1108:	781b      	ldrb	r3, [r3, #0]
    110a:	2b00      	cmp	r3, #0
    110c:	d1f4      	bne.n	10f8 <xfputs+0x18>
    110e:	4b03      	ldr	r3, [pc, #12]	; (111c <xfputs+0x3c>)
    1110:	68fa      	ldr	r2, [r7, #12]
    1112:	601a      	str	r2, [r3, #0]
    1114:	46c0      	nop			; (mov r8, r8)
    1116:	46bd      	mov	sp, r7
    1118:	b004      	add	sp, #16
    111a:	bd80      	pop	{r7, pc}
    111c:	20000500 	.word	0x20000500

00001120 <xvprintf>:
    1120:	b580      	push	{r7, lr}
    1122:	b08e      	sub	sp, #56	; 0x38
    1124:	af00      	add	r7, sp, #0
    1126:	6078      	str	r0, [r7, #4]
    1128:	6039      	str	r1, [r7, #0]
    112a:	687b      	ldr	r3, [r7, #4]
    112c:	1c5a      	adds	r2, r3, #1
    112e:	607a      	str	r2, [r7, #4]
    1130:	221f      	movs	r2, #31
    1132:	18ba      	adds	r2, r7, r2
    1134:	781b      	ldrb	r3, [r3, #0]
    1136:	7013      	strb	r3, [r2, #0]
    1138:	231f      	movs	r3, #31
    113a:	18fb      	adds	r3, r7, r3
    113c:	781b      	ldrb	r3, [r3, #0]
    113e:	2b00      	cmp	r3, #0
    1140:	d100      	bne.n	1144 <xvprintf+0x24>
    1142:	e172      	b.n	142a <xvprintf+0x30a>
    1144:	231f      	movs	r3, #31
    1146:	18fb      	adds	r3, r7, r3
    1148:	781b      	ldrb	r3, [r3, #0]
    114a:	2b25      	cmp	r3, #37	; 0x25
    114c:	d006      	beq.n	115c <xvprintf+0x3c>
    114e:	231f      	movs	r3, #31
    1150:	18fb      	adds	r3, r7, r3
    1152:	781b      	ldrb	r3, [r3, #0]
    1154:	0018      	movs	r0, r3
    1156:	f7ff ff83 	bl	1060 <xputc>
    115a:	e165      	b.n	1428 <xvprintf+0x308>
    115c:	2300      	movs	r3, #0
    115e:	627b      	str	r3, [r7, #36]	; 0x24
    1160:	687b      	ldr	r3, [r7, #4]
    1162:	1c5a      	adds	r2, r3, #1
    1164:	607a      	str	r2, [r7, #4]
    1166:	221f      	movs	r2, #31
    1168:	18ba      	adds	r2, r7, r2
    116a:	781b      	ldrb	r3, [r3, #0]
    116c:	7013      	strb	r3, [r2, #0]
    116e:	231f      	movs	r3, #31
    1170:	18fb      	adds	r3, r7, r3
    1172:	781b      	ldrb	r3, [r3, #0]
    1174:	2b30      	cmp	r3, #48	; 0x30
    1176:	d109      	bne.n	118c <xvprintf+0x6c>
    1178:	2301      	movs	r3, #1
    117a:	627b      	str	r3, [r7, #36]	; 0x24
    117c:	687b      	ldr	r3, [r7, #4]
    117e:	1c5a      	adds	r2, r3, #1
    1180:	607a      	str	r2, [r7, #4]
    1182:	221f      	movs	r2, #31
    1184:	18ba      	adds	r2, r7, r2
    1186:	781b      	ldrb	r3, [r3, #0]
    1188:	7013      	strb	r3, [r2, #0]
    118a:	e00d      	b.n	11a8 <xvprintf+0x88>
    118c:	231f      	movs	r3, #31
    118e:	18fb      	adds	r3, r7, r3
    1190:	781b      	ldrb	r3, [r3, #0]
    1192:	2b2d      	cmp	r3, #45	; 0x2d
    1194:	d108      	bne.n	11a8 <xvprintf+0x88>
    1196:	2302      	movs	r3, #2
    1198:	627b      	str	r3, [r7, #36]	; 0x24
    119a:	687b      	ldr	r3, [r7, #4]
    119c:	1c5a      	adds	r2, r3, #1
    119e:	607a      	str	r2, [r7, #4]
    11a0:	221f      	movs	r2, #31
    11a2:	18ba      	adds	r2, r7, r2
    11a4:	781b      	ldrb	r3, [r3, #0]
    11a6:	7013      	strb	r3, [r2, #0]
    11a8:	2300      	movs	r3, #0
    11aa:	62bb      	str	r3, [r7, #40]	; 0x28
    11ac:	e012      	b.n	11d4 <xvprintf+0xb4>
    11ae:	6aba      	ldr	r2, [r7, #40]	; 0x28
    11b0:	0013      	movs	r3, r2
    11b2:	009b      	lsls	r3, r3, #2
    11b4:	189b      	adds	r3, r3, r2
    11b6:	005b      	lsls	r3, r3, #1
    11b8:	001a      	movs	r2, r3
    11ba:	231f      	movs	r3, #31
    11bc:	18fb      	adds	r3, r7, r3
    11be:	781b      	ldrb	r3, [r3, #0]
    11c0:	18d3      	adds	r3, r2, r3
    11c2:	3b30      	subs	r3, #48	; 0x30
    11c4:	62bb      	str	r3, [r7, #40]	; 0x28
    11c6:	687b      	ldr	r3, [r7, #4]
    11c8:	1c5a      	adds	r2, r3, #1
    11ca:	607a      	str	r2, [r7, #4]
    11cc:	221f      	movs	r2, #31
    11ce:	18ba      	adds	r2, r7, r2
    11d0:	781b      	ldrb	r3, [r3, #0]
    11d2:	7013      	strb	r3, [r2, #0]
    11d4:	231f      	movs	r3, #31
    11d6:	18fb      	adds	r3, r7, r3
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	2b2f      	cmp	r3, #47	; 0x2f
    11dc:	d904      	bls.n	11e8 <xvprintf+0xc8>
    11de:	231f      	movs	r3, #31
    11e0:	18fb      	adds	r3, r7, r3
    11e2:	781b      	ldrb	r3, [r3, #0]
    11e4:	2b39      	cmp	r3, #57	; 0x39
    11e6:	d9e2      	bls.n	11ae <xvprintf+0x8e>
    11e8:	231f      	movs	r3, #31
    11ea:	18fb      	adds	r3, r7, r3
    11ec:	781b      	ldrb	r3, [r3, #0]
    11ee:	2b6c      	cmp	r3, #108	; 0x6c
    11f0:	d004      	beq.n	11fc <xvprintf+0xdc>
    11f2:	231f      	movs	r3, #31
    11f4:	18fb      	adds	r3, r7, r3
    11f6:	781b      	ldrb	r3, [r3, #0]
    11f8:	2b4c      	cmp	r3, #76	; 0x4c
    11fa:	d10a      	bne.n	1212 <xvprintf+0xf2>
    11fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    11fe:	2204      	movs	r2, #4
    1200:	4313      	orrs	r3, r2
    1202:	627b      	str	r3, [r7, #36]	; 0x24
    1204:	687b      	ldr	r3, [r7, #4]
    1206:	1c5a      	adds	r2, r3, #1
    1208:	607a      	str	r2, [r7, #4]
    120a:	221f      	movs	r2, #31
    120c:	18ba      	adds	r2, r7, r2
    120e:	781b      	ldrb	r3, [r3, #0]
    1210:	7013      	strb	r3, [r2, #0]
    1212:	231f      	movs	r3, #31
    1214:	18fb      	adds	r3, r7, r3
    1216:	781b      	ldrb	r3, [r3, #0]
    1218:	2b00      	cmp	r3, #0
    121a:	d100      	bne.n	121e <xvprintf+0xfe>
    121c:	e107      	b.n	142e <xvprintf+0x30e>
    121e:	231e      	movs	r3, #30
    1220:	18fb      	adds	r3, r7, r3
    1222:	221f      	movs	r2, #31
    1224:	18ba      	adds	r2, r7, r2
    1226:	7812      	ldrb	r2, [r2, #0]
    1228:	701a      	strb	r2, [r3, #0]
    122a:	231e      	movs	r3, #30
    122c:	18fb      	adds	r3, r7, r3
    122e:	781b      	ldrb	r3, [r3, #0]
    1230:	2b60      	cmp	r3, #96	; 0x60
    1232:	d906      	bls.n	1242 <xvprintf+0x122>
    1234:	231e      	movs	r3, #30
    1236:	18fb      	adds	r3, r7, r3
    1238:	221e      	movs	r2, #30
    123a:	18ba      	adds	r2, r7, r2
    123c:	7812      	ldrb	r2, [r2, #0]
    123e:	3a20      	subs	r2, #32
    1240:	701a      	strb	r2, [r3, #0]
    1242:	231e      	movs	r3, #30
    1244:	18fb      	adds	r3, r7, r3
    1246:	781b      	ldrb	r3, [r3, #0]
    1248:	3b42      	subs	r3, #66	; 0x42
    124a:	2b16      	cmp	r3, #22
    124c:	d847      	bhi.n	12de <xvprintf+0x1be>
    124e:	009a      	lsls	r2, r3, #2
    1250:	4b79      	ldr	r3, [pc, #484]	; (1438 <xvprintf+0x318>)
    1252:	18d3      	adds	r3, r2, r3
    1254:	681b      	ldr	r3, [r3, #0]
    1256:	469f      	mov	pc, r3
    1258:	683b      	ldr	r3, [r7, #0]
    125a:	1d1a      	adds	r2, r3, #4
    125c:	603a      	str	r2, [r7, #0]
    125e:	681b      	ldr	r3, [r3, #0]
    1260:	61bb      	str	r3, [r7, #24]
    1262:	2300      	movs	r3, #0
    1264:	62fb      	str	r3, [r7, #44]	; 0x2c
    1266:	e002      	b.n	126e <xvprintf+0x14e>
    1268:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    126a:	3301      	adds	r3, #1
    126c:	62fb      	str	r3, [r7, #44]	; 0x2c
    126e:	69ba      	ldr	r2, [r7, #24]
    1270:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1272:	18d3      	adds	r3, r2, r3
    1274:	781b      	ldrb	r3, [r3, #0]
    1276:	2b00      	cmp	r3, #0
    1278:	d1f6      	bne.n	1268 <xvprintf+0x148>
    127a:	e002      	b.n	1282 <xvprintf+0x162>
    127c:	2020      	movs	r0, #32
    127e:	f7ff feef 	bl	1060 <xputc>
    1282:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1284:	2202      	movs	r2, #2
    1286:	4013      	ands	r3, r2
    1288:	d105      	bne.n	1296 <xvprintf+0x176>
    128a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    128c:	1c5a      	adds	r2, r3, #1
    128e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1290:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1292:	4293      	cmp	r3, r2
    1294:	d3f2      	bcc.n	127c <xvprintf+0x15c>
    1296:	69bb      	ldr	r3, [r7, #24]
    1298:	0018      	movs	r0, r3
    129a:	f7ff ff0d 	bl	10b8 <xputs>
    129e:	e002      	b.n	12a6 <xvprintf+0x186>
    12a0:	2020      	movs	r0, #32
    12a2:	f7ff fedd 	bl	1060 <xputc>
    12a6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    12a8:	1c5a      	adds	r2, r3, #1
    12aa:	62fa      	str	r2, [r7, #44]	; 0x2c
    12ac:	6aba      	ldr	r2, [r7, #40]	; 0x28
    12ae:	4293      	cmp	r3, r2
    12b0:	d3f6      	bcc.n	12a0 <xvprintf+0x180>
    12b2:	e0b9      	b.n	1428 <xvprintf+0x308>
    12b4:	683b      	ldr	r3, [r7, #0]
    12b6:	1d1a      	adds	r2, r3, #4
    12b8:	603a      	str	r2, [r7, #0]
    12ba:	681b      	ldr	r3, [r3, #0]
    12bc:	b2db      	uxtb	r3, r3
    12be:	0018      	movs	r0, r3
    12c0:	f7ff fece 	bl	1060 <xputc>
    12c4:	e0b0      	b.n	1428 <xvprintf+0x308>
    12c6:	2302      	movs	r3, #2
    12c8:	637b      	str	r3, [r7, #52]	; 0x34
    12ca:	e00f      	b.n	12ec <xvprintf+0x1cc>
    12cc:	2308      	movs	r3, #8
    12ce:	637b      	str	r3, [r7, #52]	; 0x34
    12d0:	e00c      	b.n	12ec <xvprintf+0x1cc>
    12d2:	230a      	movs	r3, #10
    12d4:	637b      	str	r3, [r7, #52]	; 0x34
    12d6:	e009      	b.n	12ec <xvprintf+0x1cc>
    12d8:	2310      	movs	r3, #16
    12da:	637b      	str	r3, [r7, #52]	; 0x34
    12dc:	e006      	b.n	12ec <xvprintf+0x1cc>
    12de:	231f      	movs	r3, #31
    12e0:	18fb      	adds	r3, r7, r3
    12e2:	781b      	ldrb	r3, [r3, #0]
    12e4:	0018      	movs	r0, r3
    12e6:	f7ff febb 	bl	1060 <xputc>
    12ea:	e09d      	b.n	1428 <xvprintf+0x308>
    12ec:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12ee:	2204      	movs	r2, #4
    12f0:	4013      	ands	r3, r2
    12f2:	d004      	beq.n	12fe <xvprintf+0x1de>
    12f4:	683b      	ldr	r3, [r7, #0]
    12f6:	1d1a      	adds	r2, r3, #4
    12f8:	603a      	str	r2, [r7, #0]
    12fa:	681b      	ldr	r3, [r3, #0]
    12fc:	e00d      	b.n	131a <xvprintf+0x1fa>
    12fe:	231e      	movs	r3, #30
    1300:	18fb      	adds	r3, r7, r3
    1302:	781b      	ldrb	r3, [r3, #0]
    1304:	2b44      	cmp	r3, #68	; 0x44
    1306:	d104      	bne.n	1312 <xvprintf+0x1f2>
    1308:	683b      	ldr	r3, [r7, #0]
    130a:	1d1a      	adds	r2, r3, #4
    130c:	603a      	str	r2, [r7, #0]
    130e:	681b      	ldr	r3, [r3, #0]
    1310:	e003      	b.n	131a <xvprintf+0x1fa>
    1312:	683b      	ldr	r3, [r7, #0]
    1314:	1d1a      	adds	r2, r3, #4
    1316:	603a      	str	r2, [r7, #0]
    1318:	681b      	ldr	r3, [r3, #0]
    131a:	623b      	str	r3, [r7, #32]
    131c:	231e      	movs	r3, #30
    131e:	18fb      	adds	r3, r7, r3
    1320:	781b      	ldrb	r3, [r3, #0]
    1322:	2b44      	cmp	r3, #68	; 0x44
    1324:	d109      	bne.n	133a <xvprintf+0x21a>
    1326:	6a3b      	ldr	r3, [r7, #32]
    1328:	2b00      	cmp	r3, #0
    132a:	da06      	bge.n	133a <xvprintf+0x21a>
    132c:	6a3b      	ldr	r3, [r7, #32]
    132e:	425b      	negs	r3, r3
    1330:	623b      	str	r3, [r7, #32]
    1332:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1334:	2208      	movs	r2, #8
    1336:	4313      	orrs	r3, r2
    1338:	627b      	str	r3, [r7, #36]	; 0x24
    133a:	2300      	movs	r3, #0
    133c:	633b      	str	r3, [r7, #48]	; 0x30
    133e:	6a3b      	ldr	r3, [r7, #32]
    1340:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1342:	0018      	movs	r0, r3
    1344:	f000 fbd6 	bl	1af4 <__aeabi_uidivmod>
    1348:	000b      	movs	r3, r1
    134a:	001a      	movs	r2, r3
    134c:	231e      	movs	r3, #30
    134e:	18fb      	adds	r3, r7, r3
    1350:	701a      	strb	r2, [r3, #0]
    1352:	6b79      	ldr	r1, [r7, #52]	; 0x34
    1354:	6a38      	ldr	r0, [r7, #32]
    1356:	f000 fb47 	bl	19e8 <__aeabi_uidiv>
    135a:	0003      	movs	r3, r0
    135c:	623b      	str	r3, [r7, #32]
    135e:	231e      	movs	r3, #30
    1360:	18fb      	adds	r3, r7, r3
    1362:	781b      	ldrb	r3, [r3, #0]
    1364:	2b09      	cmp	r3, #9
    1366:	d90e      	bls.n	1386 <xvprintf+0x266>
    1368:	231f      	movs	r3, #31
    136a:	18fb      	adds	r3, r7, r3
    136c:	781b      	ldrb	r3, [r3, #0]
    136e:	2b78      	cmp	r3, #120	; 0x78
    1370:	d101      	bne.n	1376 <xvprintf+0x256>
    1372:	2327      	movs	r3, #39	; 0x27
    1374:	e000      	b.n	1378 <xvprintf+0x258>
    1376:	2307      	movs	r3, #7
    1378:	221e      	movs	r2, #30
    137a:	18ba      	adds	r2, r7, r2
    137c:	211e      	movs	r1, #30
    137e:	1879      	adds	r1, r7, r1
    1380:	7809      	ldrb	r1, [r1, #0]
    1382:	185b      	adds	r3, r3, r1
    1384:	7013      	strb	r3, [r2, #0]
    1386:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1388:	1c5a      	adds	r2, r3, #1
    138a:	633a      	str	r2, [r7, #48]	; 0x30
    138c:	221e      	movs	r2, #30
    138e:	18ba      	adds	r2, r7, r2
    1390:	7812      	ldrb	r2, [r2, #0]
    1392:	3230      	adds	r2, #48	; 0x30
    1394:	b2d1      	uxtb	r1, r2
    1396:	2208      	movs	r2, #8
    1398:	18ba      	adds	r2, r7, r2
    139a:	54d1      	strb	r1, [r2, r3]
    139c:	6a3b      	ldr	r3, [r7, #32]
    139e:	2b00      	cmp	r3, #0
    13a0:	d002      	beq.n	13a8 <xvprintf+0x288>
    13a2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    13a4:	2b0f      	cmp	r3, #15
    13a6:	d9ca      	bls.n	133e <xvprintf+0x21e>
    13a8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13aa:	2208      	movs	r2, #8
    13ac:	4013      	ands	r3, r2
    13ae:	d006      	beq.n	13be <xvprintf+0x29e>
    13b0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    13b2:	1c5a      	adds	r2, r3, #1
    13b4:	633a      	str	r2, [r7, #48]	; 0x30
    13b6:	2208      	movs	r2, #8
    13b8:	18ba      	adds	r2, r7, r2
    13ba:	212d      	movs	r1, #45	; 0x2d
    13bc:	54d1      	strb	r1, [r2, r3]
    13be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    13c0:	62fb      	str	r3, [r7, #44]	; 0x2c
    13c2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13c4:	2201      	movs	r2, #1
    13c6:	4013      	ands	r3, r2
    13c8:	d001      	beq.n	13ce <xvprintf+0x2ae>
    13ca:	2230      	movs	r2, #48	; 0x30
    13cc:	e000      	b.n	13d0 <xvprintf+0x2b0>
    13ce:	2220      	movs	r2, #32
    13d0:	231e      	movs	r3, #30
    13d2:	18fb      	adds	r3, r7, r3
    13d4:	701a      	strb	r2, [r3, #0]
    13d6:	e005      	b.n	13e4 <xvprintf+0x2c4>
    13d8:	231e      	movs	r3, #30
    13da:	18fb      	adds	r3, r7, r3
    13dc:	781b      	ldrb	r3, [r3, #0]
    13de:	0018      	movs	r0, r3
    13e0:	f7ff fe3e 	bl	1060 <xputc>
    13e4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13e6:	2202      	movs	r2, #2
    13e8:	4013      	ands	r3, r2
    13ea:	d105      	bne.n	13f8 <xvprintf+0x2d8>
    13ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    13ee:	1c5a      	adds	r2, r3, #1
    13f0:	62fa      	str	r2, [r7, #44]	; 0x2c
    13f2:	6aba      	ldr	r2, [r7, #40]	; 0x28
    13f4:	4293      	cmp	r3, r2
    13f6:	d3ef      	bcc.n	13d8 <xvprintf+0x2b8>
    13f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    13fa:	3b01      	subs	r3, #1
    13fc:	633b      	str	r3, [r7, #48]	; 0x30
    13fe:	2308      	movs	r3, #8
    1400:	18fa      	adds	r2, r7, r3
    1402:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1404:	18d3      	adds	r3, r2, r3
    1406:	781b      	ldrb	r3, [r3, #0]
    1408:	0018      	movs	r0, r3
    140a:	f7ff fe29 	bl	1060 <xputc>
    140e:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1410:	2b00      	cmp	r3, #0
    1412:	d1f1      	bne.n	13f8 <xvprintf+0x2d8>
    1414:	e002      	b.n	141c <xvprintf+0x2fc>
    1416:	2020      	movs	r0, #32
    1418:	f7ff fe22 	bl	1060 <xputc>
    141c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    141e:	1c5a      	adds	r2, r3, #1
    1420:	62fa      	str	r2, [r7, #44]	; 0x2c
    1422:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1424:	4293      	cmp	r3, r2
    1426:	d3f6      	bcc.n	1416 <xvprintf+0x2f6>
    1428:	e67f      	b.n	112a <xvprintf+0xa>
    142a:	46c0      	nop			; (mov r8, r8)
    142c:	e000      	b.n	1430 <xvprintf+0x310>
    142e:	46c0      	nop			; (mov r8, r8)
    1430:	46c0      	nop			; (mov r8, r8)
    1432:	46bd      	mov	sp, r7
    1434:	b00e      	add	sp, #56	; 0x38
    1436:	bd80      	pop	{r7, pc}
    1438:	00001b10 	.word	0x00001b10

0000143c <xprintf>:
    143c:	b40f      	push	{r0, r1, r2, r3}
    143e:	b580      	push	{r7, lr}
    1440:	b082      	sub	sp, #8
    1442:	af00      	add	r7, sp, #0
    1444:	2314      	movs	r3, #20
    1446:	18fb      	adds	r3, r7, r3
    1448:	607b      	str	r3, [r7, #4]
    144a:	687a      	ldr	r2, [r7, #4]
    144c:	693b      	ldr	r3, [r7, #16]
    144e:	0011      	movs	r1, r2
    1450:	0018      	movs	r0, r3
    1452:	f7ff fe65 	bl	1120 <xvprintf>
    1456:	46c0      	nop			; (mov r8, r8)
    1458:	46bd      	mov	sp, r7
    145a:	b002      	add	sp, #8
    145c:	bc80      	pop	{r7}
    145e:	bc08      	pop	{r3}
    1460:	b004      	add	sp, #16
    1462:	4718      	bx	r3

00001464 <xsprintf>:
    1464:	b40e      	push	{r1, r2, r3}
    1466:	b580      	push	{r7, lr}
    1468:	b085      	sub	sp, #20
    146a:	af00      	add	r7, sp, #0
    146c:	6078      	str	r0, [r7, #4]
    146e:	4b0d      	ldr	r3, [pc, #52]	; (14a4 <xsprintf+0x40>)
    1470:	687a      	ldr	r2, [r7, #4]
    1472:	601a      	str	r2, [r3, #0]
    1474:	2320      	movs	r3, #32
    1476:	18fb      	adds	r3, r7, r3
    1478:	60fb      	str	r3, [r7, #12]
    147a:	68fa      	ldr	r2, [r7, #12]
    147c:	69fb      	ldr	r3, [r7, #28]
    147e:	0011      	movs	r1, r2
    1480:	0018      	movs	r0, r3
    1482:	f7ff fe4d 	bl	1120 <xvprintf>
    1486:	4b07      	ldr	r3, [pc, #28]	; (14a4 <xsprintf+0x40>)
    1488:	681b      	ldr	r3, [r3, #0]
    148a:	2200      	movs	r2, #0
    148c:	701a      	strb	r2, [r3, #0]
    148e:	4b05      	ldr	r3, [pc, #20]	; (14a4 <xsprintf+0x40>)
    1490:	2200      	movs	r2, #0
    1492:	601a      	str	r2, [r3, #0]
    1494:	46c0      	nop			; (mov r8, r8)
    1496:	46bd      	mov	sp, r7
    1498:	b005      	add	sp, #20
    149a:	bc80      	pop	{r7}
    149c:	bc08      	pop	{r3}
    149e:	b003      	add	sp, #12
    14a0:	4718      	bx	r3
    14a2:	46c0      	nop			; (mov r8, r8)
    14a4:	20000504 	.word	0x20000504

000014a8 <xfprintf>:
    14a8:	b40e      	push	{r1, r2, r3}
    14aa:	b580      	push	{r7, lr}
    14ac:	b085      	sub	sp, #20
    14ae:	af00      	add	r7, sp, #0
    14b0:	6078      	str	r0, [r7, #4]
    14b2:	4b0c      	ldr	r3, [pc, #48]	; (14e4 <xfprintf+0x3c>)
    14b4:	681b      	ldr	r3, [r3, #0]
    14b6:	60fb      	str	r3, [r7, #12]
    14b8:	4b0a      	ldr	r3, [pc, #40]	; (14e4 <xfprintf+0x3c>)
    14ba:	687a      	ldr	r2, [r7, #4]
    14bc:	601a      	str	r2, [r3, #0]
    14be:	2320      	movs	r3, #32
    14c0:	18fb      	adds	r3, r7, r3
    14c2:	60bb      	str	r3, [r7, #8]
    14c4:	68ba      	ldr	r2, [r7, #8]
    14c6:	69fb      	ldr	r3, [r7, #28]
    14c8:	0011      	movs	r1, r2
    14ca:	0018      	movs	r0, r3
    14cc:	f7ff fe28 	bl	1120 <xvprintf>
    14d0:	4b04      	ldr	r3, [pc, #16]	; (14e4 <xfprintf+0x3c>)
    14d2:	68fa      	ldr	r2, [r7, #12]
    14d4:	601a      	str	r2, [r3, #0]
    14d6:	46c0      	nop			; (mov r8, r8)
    14d8:	46bd      	mov	sp, r7
    14da:	b005      	add	sp, #20
    14dc:	bc80      	pop	{r7}
    14de:	bc08      	pop	{r3}
    14e0:	b003      	add	sp, #12
    14e2:	4718      	bx	r3
    14e4:	20000500 	.word	0x20000500

000014e8 <put_dump>:
    14e8:	b580      	push	{r7, lr}
    14ea:	b088      	sub	sp, #32
    14ec:	af00      	add	r7, sp, #0
    14ee:	60f8      	str	r0, [r7, #12]
    14f0:	60b9      	str	r1, [r7, #8]
    14f2:	607a      	str	r2, [r7, #4]
    14f4:	603b      	str	r3, [r7, #0]
    14f6:	68ba      	ldr	r2, [r7, #8]
    14f8:	4b38      	ldr	r3, [pc, #224]	; (15dc <put_dump+0xf4>)
    14fa:	0011      	movs	r1, r2
    14fc:	0018      	movs	r0, r3
    14fe:	f7ff ff9d 	bl	143c <xprintf>
    1502:	683b      	ldr	r3, [r7, #0]
    1504:	2b02      	cmp	r3, #2
    1506:	d03c      	beq.n	1582 <put_dump+0x9a>
    1508:	2b04      	cmp	r3, #4
    150a:	d04d      	beq.n	15a8 <put_dump+0xc0>
    150c:	2b01      	cmp	r3, #1
    150e:	d15d      	bne.n	15cc <put_dump+0xe4>
    1510:	68fb      	ldr	r3, [r7, #12]
    1512:	613b      	str	r3, [r7, #16]
    1514:	2300      	movs	r3, #0
    1516:	61fb      	str	r3, [r7, #28]
    1518:	e00c      	b.n	1534 <put_dump+0x4c>
    151a:	69fb      	ldr	r3, [r7, #28]
    151c:	693a      	ldr	r2, [r7, #16]
    151e:	18d3      	adds	r3, r2, r3
    1520:	781b      	ldrb	r3, [r3, #0]
    1522:	001a      	movs	r2, r3
    1524:	4b2e      	ldr	r3, [pc, #184]	; (15e0 <put_dump+0xf8>)
    1526:	0011      	movs	r1, r2
    1528:	0018      	movs	r0, r3
    152a:	f7ff ff87 	bl	143c <xprintf>
    152e:	69fb      	ldr	r3, [r7, #28]
    1530:	3301      	adds	r3, #1
    1532:	61fb      	str	r3, [r7, #28]
    1534:	69fa      	ldr	r2, [r7, #28]
    1536:	687b      	ldr	r3, [r7, #4]
    1538:	429a      	cmp	r2, r3
    153a:	dbee      	blt.n	151a <put_dump+0x32>
    153c:	2020      	movs	r0, #32
    153e:	f7ff fd8f 	bl	1060 <xputc>
    1542:	2300      	movs	r3, #0
    1544:	61fb      	str	r3, [r7, #28]
    1546:	e017      	b.n	1578 <put_dump+0x90>
    1548:	69fb      	ldr	r3, [r7, #28]
    154a:	693a      	ldr	r2, [r7, #16]
    154c:	18d3      	adds	r3, r2, r3
    154e:	781b      	ldrb	r3, [r3, #0]
    1550:	2b1f      	cmp	r3, #31
    1552:	d90a      	bls.n	156a <put_dump+0x82>
    1554:	69fb      	ldr	r3, [r7, #28]
    1556:	693a      	ldr	r2, [r7, #16]
    1558:	18d3      	adds	r3, r2, r3
    155a:	781b      	ldrb	r3, [r3, #0]
    155c:	2b7e      	cmp	r3, #126	; 0x7e
    155e:	d804      	bhi.n	156a <put_dump+0x82>
    1560:	69fb      	ldr	r3, [r7, #28]
    1562:	693a      	ldr	r2, [r7, #16]
    1564:	18d3      	adds	r3, r2, r3
    1566:	781b      	ldrb	r3, [r3, #0]
    1568:	e000      	b.n	156c <put_dump+0x84>
    156a:	232e      	movs	r3, #46	; 0x2e
    156c:	0018      	movs	r0, r3
    156e:	f7ff fd77 	bl	1060 <xputc>
    1572:	69fb      	ldr	r3, [r7, #28]
    1574:	3301      	adds	r3, #1
    1576:	61fb      	str	r3, [r7, #28]
    1578:	69fa      	ldr	r2, [r7, #28]
    157a:	687b      	ldr	r3, [r7, #4]
    157c:	429a      	cmp	r2, r3
    157e:	dbe3      	blt.n	1548 <put_dump+0x60>
    1580:	e024      	b.n	15cc <put_dump+0xe4>
    1582:	68fb      	ldr	r3, [r7, #12]
    1584:	61bb      	str	r3, [r7, #24]
    1586:	69bb      	ldr	r3, [r7, #24]
    1588:	1c9a      	adds	r2, r3, #2
    158a:	61ba      	str	r2, [r7, #24]
    158c:	881b      	ldrh	r3, [r3, #0]
    158e:	001a      	movs	r2, r3
    1590:	4b14      	ldr	r3, [pc, #80]	; (15e4 <put_dump+0xfc>)
    1592:	0011      	movs	r1, r2
    1594:	0018      	movs	r0, r3
    1596:	f7ff ff51 	bl	143c <xprintf>
    159a:	687b      	ldr	r3, [r7, #4]
    159c:	3b01      	subs	r3, #1
    159e:	607b      	str	r3, [r7, #4]
    15a0:	687b      	ldr	r3, [r7, #4]
    15a2:	2b00      	cmp	r3, #0
    15a4:	d1ef      	bne.n	1586 <put_dump+0x9e>
    15a6:	e011      	b.n	15cc <put_dump+0xe4>
    15a8:	68fb      	ldr	r3, [r7, #12]
    15aa:	617b      	str	r3, [r7, #20]
    15ac:	697b      	ldr	r3, [r7, #20]
    15ae:	1d1a      	adds	r2, r3, #4
    15b0:	617a      	str	r2, [r7, #20]
    15b2:	681a      	ldr	r2, [r3, #0]
    15b4:	4b0c      	ldr	r3, [pc, #48]	; (15e8 <put_dump+0x100>)
    15b6:	0011      	movs	r1, r2
    15b8:	0018      	movs	r0, r3
    15ba:	f7ff ff3f 	bl	143c <xprintf>
    15be:	687b      	ldr	r3, [r7, #4]
    15c0:	3b01      	subs	r3, #1
    15c2:	607b      	str	r3, [r7, #4]
    15c4:	687b      	ldr	r3, [r7, #4]
    15c6:	2b00      	cmp	r3, #0
    15c8:	d1f0      	bne.n	15ac <put_dump+0xc4>
    15ca:	46c0      	nop			; (mov r8, r8)
    15cc:	200a      	movs	r0, #10
    15ce:	f7ff fd47 	bl	1060 <xputc>
    15d2:	46c0      	nop			; (mov r8, r8)
    15d4:	46bd      	mov	sp, r7
    15d6:	b008      	add	sp, #32
    15d8:	bd80      	pop	{r7, pc}
    15da:	46c0      	nop			; (mov r8, r8)
    15dc:	00001b6c 	.word	0x00001b6c
    15e0:	00001b74 	.word	0x00001b74
    15e4:	00001b7c 	.word	0x00001b7c
    15e8:	00001b84 	.word	0x00001b84

000015ec <xgets>:
    15ec:	b580      	push	{r7, lr}
    15ee:	b084      	sub	sp, #16
    15f0:	af00      	add	r7, sp, #0
    15f2:	6078      	str	r0, [r7, #4]
    15f4:	6039      	str	r1, [r7, #0]
    15f6:	4b24      	ldr	r3, [pc, #144]	; (1688 <xgets+0x9c>)
    15f8:	681b      	ldr	r3, [r3, #0]
    15fa:	2b00      	cmp	r3, #0
    15fc:	d101      	bne.n	1602 <xgets+0x16>
    15fe:	2300      	movs	r3, #0
    1600:	e03e      	b.n	1680 <xgets+0x94>
    1602:	2300      	movs	r3, #0
    1604:	60fb      	str	r3, [r7, #12]
    1606:	4b20      	ldr	r3, [pc, #128]	; (1688 <xgets+0x9c>)
    1608:	681b      	ldr	r3, [r3, #0]
    160a:	4798      	blx	r3
    160c:	0003      	movs	r3, r0
    160e:	60bb      	str	r3, [r7, #8]
    1610:	68bb      	ldr	r3, [r7, #8]
    1612:	2b00      	cmp	r3, #0
    1614:	d101      	bne.n	161a <xgets+0x2e>
    1616:	2300      	movs	r3, #0
    1618:	e032      	b.n	1680 <xgets+0x94>
    161a:	68bb      	ldr	r3, [r7, #8]
    161c:	2b0d      	cmp	r3, #13
    161e:	d025      	beq.n	166c <xgets+0x80>
    1620:	68bb      	ldr	r3, [r7, #8]
    1622:	2b08      	cmp	r3, #8
    1624:	d10b      	bne.n	163e <xgets+0x52>
    1626:	68fb      	ldr	r3, [r7, #12]
    1628:	2b00      	cmp	r3, #0
    162a:	d008      	beq.n	163e <xgets+0x52>
    162c:	68fb      	ldr	r3, [r7, #12]
    162e:	3b01      	subs	r3, #1
    1630:	60fb      	str	r3, [r7, #12]
    1632:	68bb      	ldr	r3, [r7, #8]
    1634:	b2db      	uxtb	r3, r3
    1636:	0018      	movs	r0, r3
    1638:	f7ff fd12 	bl	1060 <xputc>
    163c:	e015      	b.n	166a <xgets+0x7e>
    163e:	68bb      	ldr	r3, [r7, #8]
    1640:	2b1f      	cmp	r3, #31
    1642:	dde0      	ble.n	1606 <xgets+0x1a>
    1644:	683b      	ldr	r3, [r7, #0]
    1646:	1e5a      	subs	r2, r3, #1
    1648:	68fb      	ldr	r3, [r7, #12]
    164a:	429a      	cmp	r2, r3
    164c:	dddb      	ble.n	1606 <xgets+0x1a>
    164e:	68fb      	ldr	r3, [r7, #12]
    1650:	1c5a      	adds	r2, r3, #1
    1652:	60fa      	str	r2, [r7, #12]
    1654:	001a      	movs	r2, r3
    1656:	687b      	ldr	r3, [r7, #4]
    1658:	189b      	adds	r3, r3, r2
    165a:	68ba      	ldr	r2, [r7, #8]
    165c:	b2d2      	uxtb	r2, r2
    165e:	701a      	strb	r2, [r3, #0]
    1660:	68bb      	ldr	r3, [r7, #8]
    1662:	b2db      	uxtb	r3, r3
    1664:	0018      	movs	r0, r3
    1666:	f7ff fcfb 	bl	1060 <xputc>
    166a:	e7cc      	b.n	1606 <xgets+0x1a>
    166c:	46c0      	nop			; (mov r8, r8)
    166e:	68fb      	ldr	r3, [r7, #12]
    1670:	687a      	ldr	r2, [r7, #4]
    1672:	18d3      	adds	r3, r2, r3
    1674:	2200      	movs	r2, #0
    1676:	701a      	strb	r2, [r3, #0]
    1678:	200a      	movs	r0, #10
    167a:	f7ff fcf1 	bl	1060 <xputc>
    167e:	2301      	movs	r3, #1
    1680:	0018      	movs	r0, r3
    1682:	46bd      	mov	sp, r7
    1684:	b004      	add	sp, #16
    1686:	bd80      	pop	{r7, pc}
    1688:	20000508 	.word	0x20000508

0000168c <xfgets>:
    168c:	b580      	push	{r7, lr}
    168e:	b086      	sub	sp, #24
    1690:	af00      	add	r7, sp, #0
    1692:	60f8      	str	r0, [r7, #12]
    1694:	60b9      	str	r1, [r7, #8]
    1696:	607a      	str	r2, [r7, #4]
    1698:	4b0a      	ldr	r3, [pc, #40]	; (16c4 <xfgets+0x38>)
    169a:	681b      	ldr	r3, [r3, #0]
    169c:	617b      	str	r3, [r7, #20]
    169e:	4b09      	ldr	r3, [pc, #36]	; (16c4 <xfgets+0x38>)
    16a0:	68fa      	ldr	r2, [r7, #12]
    16a2:	601a      	str	r2, [r3, #0]
    16a4:	687a      	ldr	r2, [r7, #4]
    16a6:	68bb      	ldr	r3, [r7, #8]
    16a8:	0011      	movs	r1, r2
    16aa:	0018      	movs	r0, r3
    16ac:	f7ff ff9e 	bl	15ec <xgets>
    16b0:	0003      	movs	r3, r0
    16b2:	613b      	str	r3, [r7, #16]
    16b4:	4b03      	ldr	r3, [pc, #12]	; (16c4 <xfgets+0x38>)
    16b6:	697a      	ldr	r2, [r7, #20]
    16b8:	601a      	str	r2, [r3, #0]
    16ba:	693b      	ldr	r3, [r7, #16]
    16bc:	0018      	movs	r0, r3
    16be:	46bd      	mov	sp, r7
    16c0:	b006      	add	sp, #24
    16c2:	bd80      	pop	{r7, pc}
    16c4:	20000508 	.word	0x20000508

000016c8 <xatoi>:
    16c8:	b580      	push	{r7, lr}
    16ca:	b084      	sub	sp, #16
    16cc:	af00      	add	r7, sp, #0
    16ce:	6078      	str	r0, [r7, #4]
    16d0:	6039      	str	r1, [r7, #0]
    16d2:	2309      	movs	r3, #9
    16d4:	18fb      	adds	r3, r7, r3
    16d6:	2200      	movs	r2, #0
    16d8:	701a      	strb	r2, [r3, #0]
    16da:	683b      	ldr	r3, [r7, #0]
    16dc:	2200      	movs	r2, #0
    16de:	601a      	str	r2, [r3, #0]
    16e0:	e004      	b.n	16ec <xatoi+0x24>
    16e2:	687b      	ldr	r3, [r7, #4]
    16e4:	681b      	ldr	r3, [r3, #0]
    16e6:	1c5a      	adds	r2, r3, #1
    16e8:	687b      	ldr	r3, [r7, #4]
    16ea:	601a      	str	r2, [r3, #0]
    16ec:	687b      	ldr	r3, [r7, #4]
    16ee:	681a      	ldr	r2, [r3, #0]
    16f0:	230b      	movs	r3, #11
    16f2:	18fb      	adds	r3, r7, r3
    16f4:	7812      	ldrb	r2, [r2, #0]
    16f6:	701a      	strb	r2, [r3, #0]
    16f8:	230b      	movs	r3, #11
    16fa:	18fb      	adds	r3, r7, r3
    16fc:	781b      	ldrb	r3, [r3, #0]
    16fe:	2b20      	cmp	r3, #32
    1700:	d0ef      	beq.n	16e2 <xatoi+0x1a>
    1702:	230b      	movs	r3, #11
    1704:	18fb      	adds	r3, r7, r3
    1706:	781b      	ldrb	r3, [r3, #0]
    1708:	2b2d      	cmp	r3, #45	; 0x2d
    170a:	d10e      	bne.n	172a <xatoi+0x62>
    170c:	2309      	movs	r3, #9
    170e:	18fb      	adds	r3, r7, r3
    1710:	2201      	movs	r2, #1
    1712:	701a      	strb	r2, [r3, #0]
    1714:	687b      	ldr	r3, [r7, #4]
    1716:	681b      	ldr	r3, [r3, #0]
    1718:	1c5a      	adds	r2, r3, #1
    171a:	687b      	ldr	r3, [r7, #4]
    171c:	601a      	str	r2, [r3, #0]
    171e:	687b      	ldr	r3, [r7, #4]
    1720:	681a      	ldr	r2, [r3, #0]
    1722:	230b      	movs	r3, #11
    1724:	18fb      	adds	r3, r7, r3
    1726:	7812      	ldrb	r2, [r2, #0]
    1728:	701a      	strb	r2, [r3, #0]
    172a:	230b      	movs	r3, #11
    172c:	18fb      	adds	r3, r7, r3
    172e:	781b      	ldrb	r3, [r3, #0]
    1730:	2b30      	cmp	r3, #48	; 0x30
    1732:	d149      	bne.n	17c8 <xatoi+0x100>
    1734:	687b      	ldr	r3, [r7, #4]
    1736:	681b      	ldr	r3, [r3, #0]
    1738:	1c5a      	adds	r2, r3, #1
    173a:	687b      	ldr	r3, [r7, #4]
    173c:	601a      	str	r2, [r3, #0]
    173e:	687b      	ldr	r3, [r7, #4]
    1740:	681a      	ldr	r2, [r3, #0]
    1742:	230b      	movs	r3, #11
    1744:	18fb      	adds	r3, r7, r3
    1746:	7812      	ldrb	r2, [r2, #0]
    1748:	701a      	strb	r2, [r3, #0]
    174a:	230b      	movs	r3, #11
    174c:	18fb      	adds	r3, r7, r3
    174e:	781b      	ldrb	r3, [r3, #0]
    1750:	2b62      	cmp	r3, #98	; 0x62
    1752:	d011      	beq.n	1778 <xatoi+0xb0>
    1754:	2b78      	cmp	r3, #120	; 0x78
    1756:	d11f      	bne.n	1798 <xatoi+0xd0>
    1758:	230a      	movs	r3, #10
    175a:	18fb      	adds	r3, r7, r3
    175c:	2210      	movs	r2, #16
    175e:	701a      	strb	r2, [r3, #0]
    1760:	687b      	ldr	r3, [r7, #4]
    1762:	681b      	ldr	r3, [r3, #0]
    1764:	1c5a      	adds	r2, r3, #1
    1766:	687b      	ldr	r3, [r7, #4]
    1768:	601a      	str	r2, [r3, #0]
    176a:	687b      	ldr	r3, [r7, #4]
    176c:	681a      	ldr	r2, [r3, #0]
    176e:	230b      	movs	r3, #11
    1770:	18fb      	adds	r3, r7, r3
    1772:	7812      	ldrb	r2, [r2, #0]
    1774:	701a      	strb	r2, [r3, #0]
    1776:	e037      	b.n	17e8 <xatoi+0x120>
    1778:	230a      	movs	r3, #10
    177a:	18fb      	adds	r3, r7, r3
    177c:	2202      	movs	r2, #2
    177e:	701a      	strb	r2, [r3, #0]
    1780:	687b      	ldr	r3, [r7, #4]
    1782:	681b      	ldr	r3, [r3, #0]
    1784:	1c5a      	adds	r2, r3, #1
    1786:	687b      	ldr	r3, [r7, #4]
    1788:	601a      	str	r2, [r3, #0]
    178a:	687b      	ldr	r3, [r7, #4]
    178c:	681a      	ldr	r2, [r3, #0]
    178e:	230b      	movs	r3, #11
    1790:	18fb      	adds	r3, r7, r3
    1792:	7812      	ldrb	r2, [r2, #0]
    1794:	701a      	strb	r2, [r3, #0]
    1796:	e027      	b.n	17e8 <xatoi+0x120>
    1798:	230b      	movs	r3, #11
    179a:	18fb      	adds	r3, r7, r3
    179c:	781b      	ldrb	r3, [r3, #0]
    179e:	2b20      	cmp	r3, #32
    17a0:	d801      	bhi.n	17a6 <xatoi+0xde>
    17a2:	2301      	movs	r3, #1
    17a4:	e079      	b.n	189a <xatoi+0x1d2>
    17a6:	230b      	movs	r3, #11
    17a8:	18fb      	adds	r3, r7, r3
    17aa:	781b      	ldrb	r3, [r3, #0]
    17ac:	2b2f      	cmp	r3, #47	; 0x2f
    17ae:	d904      	bls.n	17ba <xatoi+0xf2>
    17b0:	230b      	movs	r3, #11
    17b2:	18fb      	adds	r3, r7, r3
    17b4:	781b      	ldrb	r3, [r3, #0]
    17b6:	2b39      	cmp	r3, #57	; 0x39
    17b8:	d901      	bls.n	17be <xatoi+0xf6>
    17ba:	2300      	movs	r3, #0
    17bc:	e06d      	b.n	189a <xatoi+0x1d2>
    17be:	230a      	movs	r3, #10
    17c0:	18fb      	adds	r3, r7, r3
    17c2:	2208      	movs	r2, #8
    17c4:	701a      	strb	r2, [r3, #0]
    17c6:	e00f      	b.n	17e8 <xatoi+0x120>
    17c8:	230b      	movs	r3, #11
    17ca:	18fb      	adds	r3, r7, r3
    17cc:	781b      	ldrb	r3, [r3, #0]
    17ce:	2b2f      	cmp	r3, #47	; 0x2f
    17d0:	d904      	bls.n	17dc <xatoi+0x114>
    17d2:	230b      	movs	r3, #11
    17d4:	18fb      	adds	r3, r7, r3
    17d6:	781b      	ldrb	r3, [r3, #0]
    17d8:	2b39      	cmp	r3, #57	; 0x39
    17da:	d901      	bls.n	17e0 <xatoi+0x118>
    17dc:	2300      	movs	r3, #0
    17de:	e05c      	b.n	189a <xatoi+0x1d2>
    17e0:	230a      	movs	r3, #10
    17e2:	18fb      	adds	r3, r7, r3
    17e4:	220a      	movs	r2, #10
    17e6:	701a      	strb	r2, [r3, #0]
    17e8:	2300      	movs	r3, #0
    17ea:	60fb      	str	r3, [r7, #12]
    17ec:	e044      	b.n	1878 <xatoi+0x1b0>
    17ee:	230b      	movs	r3, #11
    17f0:	18fb      	adds	r3, r7, r3
    17f2:	781b      	ldrb	r3, [r3, #0]
    17f4:	2b60      	cmp	r3, #96	; 0x60
    17f6:	d906      	bls.n	1806 <xatoi+0x13e>
    17f8:	230b      	movs	r3, #11
    17fa:	18fb      	adds	r3, r7, r3
    17fc:	220b      	movs	r2, #11
    17fe:	18ba      	adds	r2, r7, r2
    1800:	7812      	ldrb	r2, [r2, #0]
    1802:	3a20      	subs	r2, #32
    1804:	701a      	strb	r2, [r3, #0]
    1806:	230b      	movs	r3, #11
    1808:	18fb      	adds	r3, r7, r3
    180a:	220b      	movs	r2, #11
    180c:	18ba      	adds	r2, r7, r2
    180e:	7812      	ldrb	r2, [r2, #0]
    1810:	3a30      	subs	r2, #48	; 0x30
    1812:	701a      	strb	r2, [r3, #0]
    1814:	230b      	movs	r3, #11
    1816:	18fb      	adds	r3, r7, r3
    1818:	781b      	ldrb	r3, [r3, #0]
    181a:	2b10      	cmp	r3, #16
    181c:	d90d      	bls.n	183a <xatoi+0x172>
    181e:	230b      	movs	r3, #11
    1820:	18fb      	adds	r3, r7, r3
    1822:	220b      	movs	r2, #11
    1824:	18ba      	adds	r2, r7, r2
    1826:	7812      	ldrb	r2, [r2, #0]
    1828:	3a07      	subs	r2, #7
    182a:	701a      	strb	r2, [r3, #0]
    182c:	230b      	movs	r3, #11
    182e:	18fb      	adds	r3, r7, r3
    1830:	781b      	ldrb	r3, [r3, #0]
    1832:	2b09      	cmp	r3, #9
    1834:	d801      	bhi.n	183a <xatoi+0x172>
    1836:	2300      	movs	r3, #0
    1838:	e02f      	b.n	189a <xatoi+0x1d2>
    183a:	230b      	movs	r3, #11
    183c:	18fa      	adds	r2, r7, r3
    183e:	230a      	movs	r3, #10
    1840:	18fb      	adds	r3, r7, r3
    1842:	7812      	ldrb	r2, [r2, #0]
    1844:	781b      	ldrb	r3, [r3, #0]
    1846:	429a      	cmp	r2, r3
    1848:	d301      	bcc.n	184e <xatoi+0x186>
    184a:	2300      	movs	r3, #0
    184c:	e025      	b.n	189a <xatoi+0x1d2>
    184e:	230a      	movs	r3, #10
    1850:	18fb      	adds	r3, r7, r3
    1852:	781b      	ldrb	r3, [r3, #0]
    1854:	68fa      	ldr	r2, [r7, #12]
    1856:	435a      	muls	r2, r3
    1858:	230b      	movs	r3, #11
    185a:	18fb      	adds	r3, r7, r3
    185c:	781b      	ldrb	r3, [r3, #0]
    185e:	18d3      	adds	r3, r2, r3
    1860:	60fb      	str	r3, [r7, #12]
    1862:	687b      	ldr	r3, [r7, #4]
    1864:	681b      	ldr	r3, [r3, #0]
    1866:	1c5a      	adds	r2, r3, #1
    1868:	687b      	ldr	r3, [r7, #4]
    186a:	601a      	str	r2, [r3, #0]
    186c:	687b      	ldr	r3, [r7, #4]
    186e:	681a      	ldr	r2, [r3, #0]
    1870:	230b      	movs	r3, #11
    1872:	18fb      	adds	r3, r7, r3
    1874:	7812      	ldrb	r2, [r2, #0]
    1876:	701a      	strb	r2, [r3, #0]
    1878:	230b      	movs	r3, #11
    187a:	18fb      	adds	r3, r7, r3
    187c:	781b      	ldrb	r3, [r3, #0]
    187e:	2b20      	cmp	r3, #32
    1880:	d8b5      	bhi.n	17ee <xatoi+0x126>
    1882:	2309      	movs	r3, #9
    1884:	18fb      	adds	r3, r7, r3
    1886:	781b      	ldrb	r3, [r3, #0]
    1888:	2b00      	cmp	r3, #0
    188a:	d002      	beq.n	1892 <xatoi+0x1ca>
    188c:	68fb      	ldr	r3, [r7, #12]
    188e:	425b      	negs	r3, r3
    1890:	60fb      	str	r3, [r7, #12]
    1892:	68fa      	ldr	r2, [r7, #12]
    1894:	683b      	ldr	r3, [r7, #0]
    1896:	601a      	str	r2, [r3, #0]
    1898:	2301      	movs	r3, #1
    189a:	0018      	movs	r0, r3
    189c:	46bd      	mov	sp, r7
    189e:	b004      	add	sp, #16
    18a0:	bd80      	pop	{r7, pc}
    18a2:	46c0      	nop			; (mov r8, r8)

000018a4 <mil_cpy>:
    18a4:	8802      	ldrh	r2, [r0, #0]
    18a6:	4b30      	ldr	r3, [pc, #192]	; (1968 <mil_cpy+0xc4>)
    18a8:	601a      	str	r2, [r3, #0]
    18aa:	8842      	ldrh	r2, [r0, #2]
    18ac:	4b2f      	ldr	r3, [pc, #188]	; (196c <mil_cpy+0xc8>)
    18ae:	601a      	str	r2, [r3, #0]
    18b0:	8882      	ldrh	r2, [r0, #4]
    18b2:	4b2f      	ldr	r3, [pc, #188]	; (1970 <mil_cpy+0xcc>)
    18b4:	601a      	str	r2, [r3, #0]
    18b6:	88c2      	ldrh	r2, [r0, #6]
    18b8:	4b2e      	ldr	r3, [pc, #184]	; (1974 <mil_cpy+0xd0>)
    18ba:	601a      	str	r2, [r3, #0]
    18bc:	8902      	ldrh	r2, [r0, #8]
    18be:	4b2e      	ldr	r3, [pc, #184]	; (1978 <mil_cpy+0xd4>)
    18c0:	601a      	str	r2, [r3, #0]
    18c2:	8942      	ldrh	r2, [r0, #10]
    18c4:	4b2d      	ldr	r3, [pc, #180]	; (197c <mil_cpy+0xd8>)
    18c6:	601a      	str	r2, [r3, #0]
    18c8:	8982      	ldrh	r2, [r0, #12]
    18ca:	4b2d      	ldr	r3, [pc, #180]	; (1980 <mil_cpy+0xdc>)
    18cc:	601a      	str	r2, [r3, #0]
    18ce:	89c2      	ldrh	r2, [r0, #14]
    18d0:	4b2c      	ldr	r3, [pc, #176]	; (1984 <mil_cpy+0xe0>)
    18d2:	601a      	str	r2, [r3, #0]
    18d4:	8a02      	ldrh	r2, [r0, #16]
    18d6:	4b2c      	ldr	r3, [pc, #176]	; (1988 <mil_cpy+0xe4>)
    18d8:	601a      	str	r2, [r3, #0]
    18da:	8a42      	ldrh	r2, [r0, #18]
    18dc:	4b2b      	ldr	r3, [pc, #172]	; (198c <mil_cpy+0xe8>)
    18de:	601a      	str	r2, [r3, #0]
    18e0:	8a82      	ldrh	r2, [r0, #20]
    18e2:	4b2b      	ldr	r3, [pc, #172]	; (1990 <mil_cpy+0xec>)
    18e4:	601a      	str	r2, [r3, #0]
    18e6:	8ac2      	ldrh	r2, [r0, #22]
    18e8:	4b2a      	ldr	r3, [pc, #168]	; (1994 <mil_cpy+0xf0>)
    18ea:	601a      	str	r2, [r3, #0]
    18ec:	8b02      	ldrh	r2, [r0, #24]
    18ee:	4b2a      	ldr	r3, [pc, #168]	; (1998 <mil_cpy+0xf4>)
    18f0:	601a      	str	r2, [r3, #0]
    18f2:	8b42      	ldrh	r2, [r0, #26]
    18f4:	4b29      	ldr	r3, [pc, #164]	; (199c <mil_cpy+0xf8>)
    18f6:	601a      	str	r2, [r3, #0]
    18f8:	8b82      	ldrh	r2, [r0, #28]
    18fa:	4b29      	ldr	r3, [pc, #164]	; (19a0 <mil_cpy+0xfc>)
    18fc:	601a      	str	r2, [r3, #0]
    18fe:	8bc2      	ldrh	r2, [r0, #30]
    1900:	4b28      	ldr	r3, [pc, #160]	; (19a4 <mil_cpy+0x100>)
    1902:	601a      	str	r2, [r3, #0]
    1904:	8c02      	ldrh	r2, [r0, #32]
    1906:	4b28      	ldr	r3, [pc, #160]	; (19a8 <mil_cpy+0x104>)
    1908:	601a      	str	r2, [r3, #0]
    190a:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    190c:	4b27      	ldr	r3, [pc, #156]	; (19ac <mil_cpy+0x108>)
    190e:	601a      	str	r2, [r3, #0]
    1910:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    1912:	4b27      	ldr	r3, [pc, #156]	; (19b0 <mil_cpy+0x10c>)
    1914:	601a      	str	r2, [r3, #0]
    1916:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    1918:	4b26      	ldr	r3, [pc, #152]	; (19b4 <mil_cpy+0x110>)
    191a:	601a      	str	r2, [r3, #0]
    191c:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    191e:	4b26      	ldr	r3, [pc, #152]	; (19b8 <mil_cpy+0x114>)
    1920:	601a      	str	r2, [r3, #0]
    1922:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    1924:	4b25      	ldr	r3, [pc, #148]	; (19bc <mil_cpy+0x118>)
    1926:	601a      	str	r2, [r3, #0]
    1928:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    192a:	4b25      	ldr	r3, [pc, #148]	; (19c0 <mil_cpy+0x11c>)
    192c:	601a      	str	r2, [r3, #0]
    192e:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    1930:	4b24      	ldr	r3, [pc, #144]	; (19c4 <mil_cpy+0x120>)
    1932:	601a      	str	r2, [r3, #0]
    1934:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    1936:	4b24      	ldr	r3, [pc, #144]	; (19c8 <mil_cpy+0x124>)
    1938:	601a      	str	r2, [r3, #0]
    193a:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    193c:	4b23      	ldr	r3, [pc, #140]	; (19cc <mil_cpy+0x128>)
    193e:	601a      	str	r2, [r3, #0]
    1940:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    1942:	4b23      	ldr	r3, [pc, #140]	; (19d0 <mil_cpy+0x12c>)
    1944:	601a      	str	r2, [r3, #0]
    1946:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    1948:	4b22      	ldr	r3, [pc, #136]	; (19d4 <mil_cpy+0x130>)
    194a:	601a      	str	r2, [r3, #0]
    194c:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    194e:	4b22      	ldr	r3, [pc, #136]	; (19d8 <mil_cpy+0x134>)
    1950:	601a      	str	r2, [r3, #0]
    1952:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    1954:	4b21      	ldr	r3, [pc, #132]	; (19dc <mil_cpy+0x138>)
    1956:	601a      	str	r2, [r3, #0]
    1958:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    195a:	4b21      	ldr	r3, [pc, #132]	; (19e0 <mil_cpy+0x13c>)
    195c:	601a      	str	r2, [r3, #0]
    195e:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1960:	4b20      	ldr	r3, [pc, #128]	; (19e4 <mil_cpy+0x140>)
    1962:	601a      	str	r2, [r3, #0]
    1964:	4770      	bx	lr
    1966:	46c0      	nop			; (mov r8, r8)
    1968:	40048080 	.word	0x40048080
    196c:	40048084 	.word	0x40048084
    1970:	40048088 	.word	0x40048088
    1974:	4004808c 	.word	0x4004808c
    1978:	40048090 	.word	0x40048090
    197c:	40048094 	.word	0x40048094
    1980:	40048098 	.word	0x40048098
    1984:	4004809c 	.word	0x4004809c
    1988:	400480a0 	.word	0x400480a0
    198c:	400480a4 	.word	0x400480a4
    1990:	400480a8 	.word	0x400480a8
    1994:	400480ac 	.word	0x400480ac
    1998:	400480b0 	.word	0x400480b0
    199c:	400480b4 	.word	0x400480b4
    19a0:	400480b8 	.word	0x400480b8
    19a4:	400480bc 	.word	0x400480bc
    19a8:	400480c0 	.word	0x400480c0
    19ac:	400480c4 	.word	0x400480c4
    19b0:	400480c8 	.word	0x400480c8
    19b4:	400480cc 	.word	0x400480cc
    19b8:	400480d0 	.word	0x400480d0
    19bc:	400480d4 	.word	0x400480d4
    19c0:	400480d8 	.word	0x400480d8
    19c4:	400480dc 	.word	0x400480dc
    19c8:	400480e0 	.word	0x400480e0
    19cc:	400480e4 	.word	0x400480e4
    19d0:	400480e8 	.word	0x400480e8
    19d4:	400480ec 	.word	0x400480ec
    19d8:	400480f0 	.word	0x400480f0
    19dc:	400480f4 	.word	0x400480f4
    19e0:	400480f8 	.word	0x400480f8
    19e4:	400480fc 	.word	0x400480fc

000019e8 <__aeabi_uidiv>:
    19e8:	2200      	movs	r2, #0
    19ea:	0843      	lsrs	r3, r0, #1
    19ec:	428b      	cmp	r3, r1
    19ee:	d374      	bcc.n	1ada <__aeabi_uidiv+0xf2>
    19f0:	0903      	lsrs	r3, r0, #4
    19f2:	428b      	cmp	r3, r1
    19f4:	d35f      	bcc.n	1ab6 <__aeabi_uidiv+0xce>
    19f6:	0a03      	lsrs	r3, r0, #8
    19f8:	428b      	cmp	r3, r1
    19fa:	d344      	bcc.n	1a86 <__aeabi_uidiv+0x9e>
    19fc:	0b03      	lsrs	r3, r0, #12
    19fe:	428b      	cmp	r3, r1
    1a00:	d328      	bcc.n	1a54 <__aeabi_uidiv+0x6c>
    1a02:	0c03      	lsrs	r3, r0, #16
    1a04:	428b      	cmp	r3, r1
    1a06:	d30d      	bcc.n	1a24 <__aeabi_uidiv+0x3c>
    1a08:	22ff      	movs	r2, #255	; 0xff
    1a0a:	0209      	lsls	r1, r1, #8
    1a0c:	ba12      	rev	r2, r2
    1a0e:	0c03      	lsrs	r3, r0, #16
    1a10:	428b      	cmp	r3, r1
    1a12:	d302      	bcc.n	1a1a <__aeabi_uidiv+0x32>
    1a14:	1212      	asrs	r2, r2, #8
    1a16:	0209      	lsls	r1, r1, #8
    1a18:	d065      	beq.n	1ae6 <__aeabi_uidiv+0xfe>
    1a1a:	0b03      	lsrs	r3, r0, #12
    1a1c:	428b      	cmp	r3, r1
    1a1e:	d319      	bcc.n	1a54 <__aeabi_uidiv+0x6c>
    1a20:	e000      	b.n	1a24 <__aeabi_uidiv+0x3c>
    1a22:	0a09      	lsrs	r1, r1, #8
    1a24:	0bc3      	lsrs	r3, r0, #15
    1a26:	428b      	cmp	r3, r1
    1a28:	d301      	bcc.n	1a2e <__aeabi_uidiv+0x46>
    1a2a:	03cb      	lsls	r3, r1, #15
    1a2c:	1ac0      	subs	r0, r0, r3
    1a2e:	4152      	adcs	r2, r2
    1a30:	0b83      	lsrs	r3, r0, #14
    1a32:	428b      	cmp	r3, r1
    1a34:	d301      	bcc.n	1a3a <__aeabi_uidiv+0x52>
    1a36:	038b      	lsls	r3, r1, #14
    1a38:	1ac0      	subs	r0, r0, r3
    1a3a:	4152      	adcs	r2, r2
    1a3c:	0b43      	lsrs	r3, r0, #13
    1a3e:	428b      	cmp	r3, r1
    1a40:	d301      	bcc.n	1a46 <__aeabi_uidiv+0x5e>
    1a42:	034b      	lsls	r3, r1, #13
    1a44:	1ac0      	subs	r0, r0, r3
    1a46:	4152      	adcs	r2, r2
    1a48:	0b03      	lsrs	r3, r0, #12
    1a4a:	428b      	cmp	r3, r1
    1a4c:	d301      	bcc.n	1a52 <__aeabi_uidiv+0x6a>
    1a4e:	030b      	lsls	r3, r1, #12
    1a50:	1ac0      	subs	r0, r0, r3
    1a52:	4152      	adcs	r2, r2
    1a54:	0ac3      	lsrs	r3, r0, #11
    1a56:	428b      	cmp	r3, r1
    1a58:	d301      	bcc.n	1a5e <__aeabi_uidiv+0x76>
    1a5a:	02cb      	lsls	r3, r1, #11
    1a5c:	1ac0      	subs	r0, r0, r3
    1a5e:	4152      	adcs	r2, r2
    1a60:	0a83      	lsrs	r3, r0, #10
    1a62:	428b      	cmp	r3, r1
    1a64:	d301      	bcc.n	1a6a <__aeabi_uidiv+0x82>
    1a66:	028b      	lsls	r3, r1, #10
    1a68:	1ac0      	subs	r0, r0, r3
    1a6a:	4152      	adcs	r2, r2
    1a6c:	0a43      	lsrs	r3, r0, #9
    1a6e:	428b      	cmp	r3, r1
    1a70:	d301      	bcc.n	1a76 <__aeabi_uidiv+0x8e>
    1a72:	024b      	lsls	r3, r1, #9
    1a74:	1ac0      	subs	r0, r0, r3
    1a76:	4152      	adcs	r2, r2
    1a78:	0a03      	lsrs	r3, r0, #8
    1a7a:	428b      	cmp	r3, r1
    1a7c:	d301      	bcc.n	1a82 <__aeabi_uidiv+0x9a>
    1a7e:	020b      	lsls	r3, r1, #8
    1a80:	1ac0      	subs	r0, r0, r3
    1a82:	4152      	adcs	r2, r2
    1a84:	d2cd      	bcs.n	1a22 <__aeabi_uidiv+0x3a>
    1a86:	09c3      	lsrs	r3, r0, #7
    1a88:	428b      	cmp	r3, r1
    1a8a:	d301      	bcc.n	1a90 <__aeabi_uidiv+0xa8>
    1a8c:	01cb      	lsls	r3, r1, #7
    1a8e:	1ac0      	subs	r0, r0, r3
    1a90:	4152      	adcs	r2, r2
    1a92:	0983      	lsrs	r3, r0, #6
    1a94:	428b      	cmp	r3, r1
    1a96:	d301      	bcc.n	1a9c <__aeabi_uidiv+0xb4>
    1a98:	018b      	lsls	r3, r1, #6
    1a9a:	1ac0      	subs	r0, r0, r3
    1a9c:	4152      	adcs	r2, r2
    1a9e:	0943      	lsrs	r3, r0, #5
    1aa0:	428b      	cmp	r3, r1
    1aa2:	d301      	bcc.n	1aa8 <__aeabi_uidiv+0xc0>
    1aa4:	014b      	lsls	r3, r1, #5
    1aa6:	1ac0      	subs	r0, r0, r3
    1aa8:	4152      	adcs	r2, r2
    1aaa:	0903      	lsrs	r3, r0, #4
    1aac:	428b      	cmp	r3, r1
    1aae:	d301      	bcc.n	1ab4 <__aeabi_uidiv+0xcc>
    1ab0:	010b      	lsls	r3, r1, #4
    1ab2:	1ac0      	subs	r0, r0, r3
    1ab4:	4152      	adcs	r2, r2
    1ab6:	08c3      	lsrs	r3, r0, #3
    1ab8:	428b      	cmp	r3, r1
    1aba:	d301      	bcc.n	1ac0 <__aeabi_uidiv+0xd8>
    1abc:	00cb      	lsls	r3, r1, #3
    1abe:	1ac0      	subs	r0, r0, r3
    1ac0:	4152      	adcs	r2, r2
    1ac2:	0883      	lsrs	r3, r0, #2
    1ac4:	428b      	cmp	r3, r1
    1ac6:	d301      	bcc.n	1acc <__aeabi_uidiv+0xe4>
    1ac8:	008b      	lsls	r3, r1, #2
    1aca:	1ac0      	subs	r0, r0, r3
    1acc:	4152      	adcs	r2, r2
    1ace:	0843      	lsrs	r3, r0, #1
    1ad0:	428b      	cmp	r3, r1
    1ad2:	d301      	bcc.n	1ad8 <__aeabi_uidiv+0xf0>
    1ad4:	004b      	lsls	r3, r1, #1
    1ad6:	1ac0      	subs	r0, r0, r3
    1ad8:	4152      	adcs	r2, r2
    1ada:	1a41      	subs	r1, r0, r1
    1adc:	d200      	bcs.n	1ae0 <__aeabi_uidiv+0xf8>
    1ade:	4601      	mov	r1, r0
    1ae0:	4152      	adcs	r2, r2
    1ae2:	4610      	mov	r0, r2
    1ae4:	4770      	bx	lr
    1ae6:	e7ff      	b.n	1ae8 <__aeabi_uidiv+0x100>
    1ae8:	b501      	push	{r0, lr}
    1aea:	2000      	movs	r0, #0
    1aec:	f000 f806 	bl	1afc <__aeabi_idiv0>
    1af0:	bd02      	pop	{r1, pc}
    1af2:	46c0      	nop			; (mov r8, r8)

00001af4 <__aeabi_uidivmod>:
    1af4:	2900      	cmp	r1, #0
    1af6:	d0f7      	beq.n	1ae8 <__aeabi_uidiv+0x100>
    1af8:	e776      	b.n	19e8 <__aeabi_uidiv>
    1afa:	4770      	bx	lr

00001afc <__aeabi_idiv0>:
    1afc:	4770      	bx	lr
    1afe:	46c0      	nop			; (mov r8, r8)
    1b00:	6c6c6568 	.word	0x6c6c6568
    1b04:	6f77206f 	.word	0x6f77206f
    1b08:	0d646c72 	.word	0x0d646c72
    1b0c:	0000000a 	.word	0x0000000a
    1b10:	000012c6 	.word	0x000012c6
    1b14:	000012b4 	.word	0x000012b4
    1b18:	000012d2 	.word	0x000012d2
    1b1c:	000012de 	.word	0x000012de
    1b20:	000012de 	.word	0x000012de
    1b24:	000012de 	.word	0x000012de
    1b28:	000012de 	.word	0x000012de
    1b2c:	000012de 	.word	0x000012de
    1b30:	000012de 	.word	0x000012de
    1b34:	000012de 	.word	0x000012de
    1b38:	000012de 	.word	0x000012de
    1b3c:	000012de 	.word	0x000012de
    1b40:	000012de 	.word	0x000012de
    1b44:	000012cc 	.word	0x000012cc
    1b48:	000012de 	.word	0x000012de
    1b4c:	000012de 	.word	0x000012de
    1b50:	000012de 	.word	0x000012de
    1b54:	00001258 	.word	0x00001258
    1b58:	000012de 	.word	0x000012de
    1b5c:	000012d2 	.word	0x000012d2
    1b60:	000012de 	.word	0x000012de
    1b64:	000012de 	.word	0x000012de
    1b68:	000012d8 	.word	0x000012d8
    1b6c:	6c383025 	.word	0x6c383025
    1b70:	00002058 	.word	0x00002058
    1b74:	32302520 	.word	0x32302520
    1b78:	00000058 	.word	0x00000058
    1b7c:	34302520 	.word	0x34302520
    1b80:	00000058 	.word	0x00000058
    1b84:	38302520 	.word	0x38302520
    1b88:	0000584c 	.word	0x0000584c
