
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 c9 0d 00 00 29 0e 00 00 29 0e 00 00     ... ....)...)...
	...
      2c:	29 0e 00 00 00 00 00 00 00 00 00 00 29 0e 00 00     )...........)...
      3c:	1d 0a 00 00 29 0e 00 00 a5 0a 00 00 29 0e 00 00     ....).......)...
      4c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 7d 10 00 00     )...)...)...}...
      5c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      6c:	29 0e 00 00 29 0e 00 00 79 0a 00 00 35 0a 00 00     )...)...y...5...
      7c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      8c:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      9c:	29 0e 00 00 29 0e 00 00 00 00 00 00 00 00 00 00     )...)...........
      ac:	29 0e 00 00 29 0e 00 00 29 0e 00 00 29 0e 00 00     )...)...)...)...
      bc:	29 0e 00 00                                         )...

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
     170:	200000f4 	.word	0x200000f4

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
     294:	200000e8 	.word	0x200000e8
     298:	200000e0 	.word	0x200000e0
     29c:	40030000 	.word	0x40030000
     2a0:	ffffb060 	.word	0xffffb060
     2a4:	40090000 	.word	0x40090000
     2a8:	200000d4 	.word	0x200000d4

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
     400:	200000e8 	.word	0x200000e8
     404:	200000e0 	.word	0x200000e0
     408:	40030000 	.word	0x40030000
     40c:	ffffb060 	.word	0xffffb060

00000410 <send_command>:
     410:	b580      	push	{r7, lr}
     412:	b082      	sub	sp, #8
     414:	af00      	add	r7, sp, #0
     416:	6078      	str	r0, [r7, #4]
     418:	687b      	ldr	r3, [r7, #4]
     41a:	2202      	movs	r2, #2
     41c:	5e9b      	ldrsh	r3, [r3, r2]
     41e:	b29a      	uxth	r2, r3
     420:	4b08      	ldr	r3, [pc, #32]	; (444 <send_command+0x34>)
     422:	805a      	strh	r2, [r3, #2]
     424:	687b      	ldr	r3, [r7, #4]
     426:	2204      	movs	r2, #4
     428:	5e9b      	ldrsh	r3, [r3, r2]
     42a:	b29a      	uxth	r2, r3
     42c:	4b05      	ldr	r3, [pc, #20]	; (444 <send_command+0x34>)
     42e:	809a      	strh	r2, [r3, #4]
     430:	687b      	ldr	r3, [r7, #4]
     432:	2206      	movs	r2, #6
     434:	5e9b      	ldrsh	r3, [r3, r2]
     436:	b29a      	uxth	r2, r3
     438:	4b02      	ldr	r3, [pc, #8]	; (444 <send_command+0x34>)
     43a:	811a      	strh	r2, [r3, #8]
     43c:	46c0      	nop			; (mov r8, r8)
     43e:	46bd      	mov	sp, r7
     440:	b002      	add	sp, #8
     442:	bd80      	pop	{r7, pc}
     444:	20000000 	.word	0x20000000

00000448 <main>:
     448:	b590      	push	{r4, r7, lr}
     44a:	b0a7      	sub	sp, #156	; 0x9c
     44c:	af00      	add	r7, sp, #0
     44e:	2380      	movs	r3, #128	; 0x80
     450:	18fb      	adds	r3, r7, r3
     452:	4a29      	ldr	r2, [pc, #164]	; (4f8 <main+0xb0>)
     454:	ca13      	ldmia	r2!, {r0, r1, r4}
     456:	c313      	stmia	r3!, {r0, r1, r4}
     458:	8812      	ldrh	r2, [r2, #0]
     45a:	801a      	strh	r2, [r3, #0]
     45c:	f000 facc 	bl	9f8 <SystemInit>
     460:	4b26      	ldr	r3, [pc, #152]	; (4fc <main+0xb4>)
     462:	2200      	movs	r2, #0
     464:	601a      	str	r2, [r3, #0]
     466:	2300      	movs	r3, #0
     468:	2294      	movs	r2, #148	; 0x94
     46a:	18ba      	adds	r2, r7, r2
     46c:	6013      	str	r3, [r2, #0]
     46e:	4b24      	ldr	r3, [pc, #144]	; (500 <main+0xb8>)
     470:	2200      	movs	r2, #0
     472:	601a      	str	r2, [r3, #0]
     474:	4b23      	ldr	r3, [pc, #140]	; (504 <main+0xbc>)
     476:	4a24      	ldr	r2, [pc, #144]	; (508 <main+0xc0>)
     478:	601a      	str	r2, [r3, #0]
     47a:	4b22      	ldr	r3, [pc, #136]	; (504 <main+0xbc>)
     47c:	4a23      	ldr	r2, [pc, #140]	; (50c <main+0xc4>)
     47e:	605a      	str	r2, [r3, #4]
     480:	4b23      	ldr	r3, [pc, #140]	; (510 <main+0xc8>)
     482:	2200      	movs	r2, #0
     484:	601a      	str	r2, [r3, #0]
     486:	4b23      	ldr	r3, [pc, #140]	; (514 <main+0xcc>)
     488:	681b      	ldr	r3, [r3, #0]
     48a:	2b00      	cmp	r3, #0
     48c:	d02d      	beq.n	4ea <main+0xa2>
     48e:	4b22      	ldr	r3, [pc, #136]	; (518 <main+0xd0>)
     490:	881b      	ldrh	r3, [r3, #0]
     492:	2220      	movs	r2, #32
     494:	4013      	ands	r3, r2
     496:	b29b      	uxth	r3, r3
     498:	2b00      	cmp	r3, #0
     49a:	d01f      	beq.n	4dc <main+0x94>
     49c:	4b1e      	ldr	r3, [pc, #120]	; (518 <main+0xd0>)
     49e:	2202      	movs	r2, #2
     4a0:	5e9b      	ldrsh	r3, [r3, r2]
     4a2:	2b00      	cmp	r3, #0
     4a4:	da06      	bge.n	4b4 <main+0x6c>
     4a6:	4b1c      	ldr	r3, [pc, #112]	; (518 <main+0xd0>)
     4a8:	2202      	movs	r2, #2
     4aa:	5e9b      	ldrsh	r3, [r3, r2]
     4ac:	4a1b      	ldr	r2, [pc, #108]	; (51c <main+0xd4>)
     4ae:	4694      	mov	ip, r2
     4b0:	4463      	add	r3, ip
     4b2:	e002      	b.n	4ba <main+0x72>
     4b4:	4b18      	ldr	r3, [pc, #96]	; (518 <main+0xd0>)
     4b6:	2202      	movs	r2, #2
     4b8:	5e9b      	ldrsh	r3, [r3, r2]
     4ba:	2290      	movs	r2, #144	; 0x90
     4bc:	18ba      	adds	r2, r7, r2
     4be:	6013      	str	r3, [r2, #0]
     4c0:	4b17      	ldr	r3, [pc, #92]	; (520 <main+0xd8>)
     4c2:	2290      	movs	r2, #144	; 0x90
     4c4:	18ba      	adds	r2, r7, r2
     4c6:	6812      	ldr	r2, [r2, #0]
     4c8:	2180      	movs	r1, #128	; 0x80
     4ca:	0109      	lsls	r1, r1, #4
     4cc:	468c      	mov	ip, r1
     4ce:	4462      	add	r2, ip
     4d0:	605a      	str	r2, [r3, #4]
     4d2:	4b11      	ldr	r3, [pc, #68]	; (518 <main+0xd0>)
     4d4:	0018      	movs	r0, r3
     4d6:	f7ff ff9b 	bl	410 <send_command>
     4da:	e003      	b.n	4e4 <main+0x9c>
     4dc:	4b10      	ldr	r3, [pc, #64]	; (520 <main+0xd8>)
     4de:	2280      	movs	r2, #128	; 0x80
     4e0:	0112      	lsls	r2, r2, #4
     4e2:	605a      	str	r2, [r3, #4]
     4e4:	4b0b      	ldr	r3, [pc, #44]	; (514 <main+0xcc>)
     4e6:	2200      	movs	r2, #0
     4e8:	601a      	str	r2, [r3, #0]
     4ea:	4b0e      	ldr	r3, [pc, #56]	; (524 <main+0xdc>)
     4ec:	681b      	ldr	r3, [r3, #0]
     4ee:	0018      	movs	r0, r3
     4f0:	f7ff fedc 	bl	2ac <update_telemetry>
     4f4:	e7c7      	b.n	486 <main+0x3e>
     4f6:	46c0      	nop			; (mov r8, r8)
     4f8:	00001ba4 	.word	0x00001ba4
     4fc:	200000ec 	.word	0x200000ec
     500:	200000f0 	.word	0x200000f0
     504:	200000e0 	.word	0x200000e0
     508:	20000054 	.word	0x20000054
     50c:	20000094 	.word	0x20000094
     510:	200000e8 	.word	0x200000e8
     514:	200000f8 	.word	0x200000f8
     518:	200000d4 	.word	0x200000d4
     51c:	ffff0000 	.word	0xffff0000
     520:	40090000 	.word	0x40090000
     524:	200000f4 	.word	0x200000f4

00000528 <PortConfig>:
     528:	b580      	push	{r7, lr}
     52a:	af00      	add	r7, sp, #0
     52c:	4b6f      	ldr	r3, [pc, #444]	; (6ec <PortConfig+0x1c4>)
     52e:	4a6f      	ldr	r2, [pc, #444]	; (6ec <PortConfig+0x1c4>)
     530:	69d2      	ldr	r2, [r2, #28]
     532:	2180      	movs	r1, #128	; 0x80
     534:	0389      	lsls	r1, r1, #14
     536:	430a      	orrs	r2, r1
     538:	61da      	str	r2, [r3, #28]
     53a:	4b6d      	ldr	r3, [pc, #436]	; (6f0 <PortConfig+0x1c8>)
     53c:	4a6c      	ldr	r2, [pc, #432]	; (6f0 <PortConfig+0x1c8>)
     53e:	6892      	ldr	r2, [r2, #8]
     540:	2108      	movs	r1, #8
     542:	400a      	ands	r2, r1
     544:	609a      	str	r2, [r3, #8]
     546:	4b6a      	ldr	r3, [pc, #424]	; (6f0 <PortConfig+0x1c8>)
     548:	4a69      	ldr	r2, [pc, #420]	; (6f0 <PortConfig+0x1c8>)
     54a:	6852      	ldr	r2, [r2, #4]
     54c:	2108      	movs	r1, #8
     54e:	430a      	orrs	r2, r1
     550:	605a      	str	r2, [r3, #4]
     552:	4b67      	ldr	r3, [pc, #412]	; (6f0 <PortConfig+0x1c8>)
     554:	4a66      	ldr	r2, [pc, #408]	; (6f0 <PortConfig+0x1c8>)
     556:	68d2      	ldr	r2, [r2, #12]
     558:	2108      	movs	r1, #8
     55a:	430a      	orrs	r2, r1
     55c:	60da      	str	r2, [r3, #12]
     55e:	4b64      	ldr	r3, [pc, #400]	; (6f0 <PortConfig+0x1c8>)
     560:	4a63      	ldr	r2, [pc, #396]	; (6f0 <PortConfig+0x1c8>)
     562:	6992      	ldr	r2, [r2, #24]
     564:	21c0      	movs	r1, #192	; 0xc0
     566:	430a      	orrs	r2, r1
     568:	619a      	str	r2, [r3, #24]
     56a:	4b60      	ldr	r3, [pc, #384]	; (6ec <PortConfig+0x1c4>)
     56c:	4a5f      	ldr	r2, [pc, #380]	; (6ec <PortConfig+0x1c4>)
     56e:	69d2      	ldr	r2, [r2, #28]
     570:	2180      	movs	r1, #128	; 0x80
     572:	0449      	lsls	r1, r1, #17
     574:	430a      	orrs	r2, r1
     576:	61da      	str	r2, [r3, #28]
     578:	4b5e      	ldr	r3, [pc, #376]	; (6f4 <PortConfig+0x1cc>)
     57a:	2200      	movs	r2, #0
     57c:	609a      	str	r2, [r3, #8]
     57e:	4b5d      	ldr	r3, [pc, #372]	; (6f4 <PortConfig+0x1cc>)
     580:	2200      	movs	r2, #0
     582:	601a      	str	r2, [r3, #0]
     584:	4b5b      	ldr	r3, [pc, #364]	; (6f4 <PortConfig+0x1cc>)
     586:	22ff      	movs	r2, #255	; 0xff
     588:	01d2      	lsls	r2, r2, #7
     58a:	605a      	str	r2, [r3, #4]
     58c:	4b59      	ldr	r3, [pc, #356]	; (6f4 <PortConfig+0x1cc>)
     58e:	22ff      	movs	r2, #255	; 0xff
     590:	01d2      	lsls	r2, r2, #7
     592:	60da      	str	r2, [r3, #12]
     594:	4b57      	ldr	r3, [pc, #348]	; (6f4 <PortConfig+0x1cc>)
     596:	4a58      	ldr	r2, [pc, #352]	; (6f8 <PortConfig+0x1d0>)
     598:	619a      	str	r2, [r3, #24]
     59a:	4b54      	ldr	r3, [pc, #336]	; (6ec <PortConfig+0x1c4>)
     59c:	4a53      	ldr	r2, [pc, #332]	; (6ec <PortConfig+0x1c4>)
     59e:	69d2      	ldr	r2, [r2, #28]
     5a0:	2180      	movs	r1, #128	; 0x80
     5a2:	0409      	lsls	r1, r1, #16
     5a4:	430a      	orrs	r2, r1
     5a6:	61da      	str	r2, [r3, #28]
     5a8:	4b50      	ldr	r3, [pc, #320]	; (6ec <PortConfig+0x1c4>)
     5aa:	4a50      	ldr	r2, [pc, #320]	; (6ec <PortConfig+0x1c4>)
     5ac:	69d2      	ldr	r2, [r2, #28]
     5ae:	2180      	movs	r1, #128	; 0x80
     5b0:	0449      	lsls	r1, r1, #17
     5b2:	430a      	orrs	r2, r1
     5b4:	61da      	str	r2, [r3, #28]
     5b6:	4b51      	ldr	r3, [pc, #324]	; (6fc <PortConfig+0x1d4>)
     5b8:	4a50      	ldr	r2, [pc, #320]	; (6fc <PortConfig+0x1d4>)
     5ba:	6892      	ldr	r2, [r2, #8]
     5bc:	0192      	lsls	r2, r2, #6
     5be:	0992      	lsrs	r2, r2, #6
     5c0:	609a      	str	r2, [r3, #8]
     5c2:	4b4e      	ldr	r3, [pc, #312]	; (6fc <PortConfig+0x1d4>)
     5c4:	4a4d      	ldr	r2, [pc, #308]	; (6fc <PortConfig+0x1d4>)
     5c6:	6892      	ldr	r2, [r2, #8]
     5c8:	21a8      	movs	r1, #168	; 0xa8
     5ca:	05c9      	lsls	r1, r1, #23
     5cc:	430a      	orrs	r2, r1
     5ce:	609a      	str	r2, [r3, #8]
     5d0:	4b4a      	ldr	r3, [pc, #296]	; (6fc <PortConfig+0x1d4>)
     5d2:	4a4a      	ldr	r2, [pc, #296]	; (6fc <PortConfig+0x1d4>)
     5d4:	68d2      	ldr	r2, [r2, #12]
     5d6:	21e0      	movs	r1, #224	; 0xe0
     5d8:	0209      	lsls	r1, r1, #8
     5da:	430a      	orrs	r2, r1
     5dc:	60da      	str	r2, [r3, #12]
     5de:	4b47      	ldr	r3, [pc, #284]	; (6fc <PortConfig+0x1d4>)
     5e0:	4a46      	ldr	r2, [pc, #280]	; (6fc <PortConfig+0x1d4>)
     5e2:	6992      	ldr	r2, [r2, #24]
     5e4:	21fc      	movs	r1, #252	; 0xfc
     5e6:	0609      	lsls	r1, r1, #24
     5e8:	430a      	orrs	r2, r1
     5ea:	619a      	str	r2, [r3, #24]
     5ec:	4b41      	ldr	r3, [pc, #260]	; (6f4 <PortConfig+0x1cc>)
     5ee:	4a41      	ldr	r2, [pc, #260]	; (6f4 <PortConfig+0x1cc>)
     5f0:	6892      	ldr	r2, [r2, #8]
     5f2:	0b92      	lsrs	r2, r2, #14
     5f4:	0392      	lsls	r2, r2, #14
     5f6:	609a      	str	r2, [r3, #8]
     5f8:	4b3e      	ldr	r3, [pc, #248]	; (6f4 <PortConfig+0x1cc>)
     5fa:	4a3e      	ldr	r2, [pc, #248]	; (6f4 <PortConfig+0x1cc>)
     5fc:	6892      	ldr	r2, [r2, #8]
     5fe:	4940      	ldr	r1, [pc, #256]	; (700 <PortConfig+0x1d8>)
     600:	430a      	orrs	r2, r1
     602:	609a      	str	r2, [r3, #8]
     604:	4b3b      	ldr	r3, [pc, #236]	; (6f4 <PortConfig+0x1cc>)
     606:	4a3b      	ldr	r2, [pc, #236]	; (6f4 <PortConfig+0x1cc>)
     608:	68d2      	ldr	r2, [r2, #12]
     60a:	217f      	movs	r1, #127	; 0x7f
     60c:	430a      	orrs	r2, r1
     60e:	60da      	str	r2, [r3, #12]
     610:	4b38      	ldr	r3, [pc, #224]	; (6f4 <PortConfig+0x1cc>)
     612:	4a38      	ldr	r2, [pc, #224]	; (6f4 <PortConfig+0x1cc>)
     614:	6992      	ldr	r2, [r2, #24]
     616:	493b      	ldr	r1, [pc, #236]	; (704 <PortConfig+0x1dc>)
     618:	430a      	orrs	r2, r1
     61a:	619a      	str	r2, [r3, #24]
     61c:	4b33      	ldr	r3, [pc, #204]	; (6ec <PortConfig+0x1c4>)
     61e:	4a33      	ldr	r2, [pc, #204]	; (6ec <PortConfig+0x1c4>)
     620:	69d2      	ldr	r2, [r2, #28]
     622:	2180      	movs	r1, #128	; 0x80
     624:	0489      	lsls	r1, r1, #18
     626:	430a      	orrs	r2, r1
     628:	61da      	str	r2, [r3, #28]
     62a:	4b37      	ldr	r3, [pc, #220]	; (708 <PortConfig+0x1e0>)
     62c:	2200      	movs	r2, #0
     62e:	609a      	str	r2, [r3, #8]
     630:	4b35      	ldr	r3, [pc, #212]	; (708 <PortConfig+0x1e0>)
     632:	4a35      	ldr	r2, [pc, #212]	; (708 <PortConfig+0x1e0>)
     634:	68d2      	ldr	r2, [r2, #12]
     636:	2108      	movs	r1, #8
     638:	430a      	orrs	r2, r1
     63a:	60da      	str	r2, [r3, #12]
     63c:	4b32      	ldr	r3, [pc, #200]	; (708 <PortConfig+0x1e0>)
     63e:	4a32      	ldr	r2, [pc, #200]	; (708 <PortConfig+0x1e0>)
     640:	6892      	ldr	r2, [r2, #8]
     642:	21c0      	movs	r1, #192	; 0xc0
     644:	438a      	bics	r2, r1
     646:	609a      	str	r2, [r3, #8]
     648:	4b2f      	ldr	r3, [pc, #188]	; (708 <PortConfig+0x1e0>)
     64a:	4a2f      	ldr	r2, [pc, #188]	; (708 <PortConfig+0x1e0>)
     64c:	6892      	ldr	r2, [r2, #8]
     64e:	2140      	movs	r1, #64	; 0x40
     650:	430a      	orrs	r2, r1
     652:	609a      	str	r2, [r3, #8]
     654:	4b2c      	ldr	r3, [pc, #176]	; (708 <PortConfig+0x1e0>)
     656:	4a2c      	ldr	r2, [pc, #176]	; (708 <PortConfig+0x1e0>)
     658:	6992      	ldr	r2, [r2, #24]
     65a:	21c0      	movs	r1, #192	; 0xc0
     65c:	430a      	orrs	r2, r1
     65e:	619a      	str	r2, [r3, #24]
     660:	4b29      	ldr	r3, [pc, #164]	; (708 <PortConfig+0x1e0>)
     662:	4a29      	ldr	r2, [pc, #164]	; (708 <PortConfig+0x1e0>)
     664:	6852      	ldr	r2, [r2, #4]
     666:	2108      	movs	r1, #8
     668:	430a      	orrs	r2, r1
     66a:	605a      	str	r2, [r3, #4]
     66c:	4b26      	ldr	r3, [pc, #152]	; (708 <PortConfig+0x1e0>)
     66e:	4a26      	ldr	r2, [pc, #152]	; (708 <PortConfig+0x1e0>)
     670:	68d2      	ldr	r2, [r2, #12]
     672:	4926      	ldr	r1, [pc, #152]	; (70c <PortConfig+0x1e4>)
     674:	430a      	orrs	r2, r1
     676:	60da      	str	r2, [r3, #12]
     678:	4b23      	ldr	r3, [pc, #140]	; (708 <PortConfig+0x1e0>)
     67a:	4a23      	ldr	r2, [pc, #140]	; (708 <PortConfig+0x1e0>)
     67c:	6992      	ldr	r2, [r2, #24]
     67e:	4924      	ldr	r1, [pc, #144]	; (710 <PortConfig+0x1e8>)
     680:	430a      	orrs	r2, r1
     682:	619a      	str	r2, [r3, #24]
     684:	4b20      	ldr	r3, [pc, #128]	; (708 <PortConfig+0x1e0>)
     686:	4a20      	ldr	r2, [pc, #128]	; (708 <PortConfig+0x1e0>)
     688:	6852      	ldr	r2, [r2, #4]
     68a:	4920      	ldr	r1, [pc, #128]	; (70c <PortConfig+0x1e4>)
     68c:	430a      	orrs	r2, r1
     68e:	605a      	str	r2, [r3, #4]
     690:	4b1d      	ldr	r3, [pc, #116]	; (708 <PortConfig+0x1e0>)
     692:	2200      	movs	r2, #0
     694:	601a      	str	r2, [r3, #0]
     696:	4b15      	ldr	r3, [pc, #84]	; (6ec <PortConfig+0x1c4>)
     698:	4a14      	ldr	r2, [pc, #80]	; (6ec <PortConfig+0x1c4>)
     69a:	69d2      	ldr	r2, [r2, #28]
     69c:	2180      	movs	r1, #128	; 0x80
     69e:	0409      	lsls	r1, r1, #16
     6a0:	430a      	orrs	r2, r1
     6a2:	61da      	str	r2, [r3, #28]
     6a4:	4b15      	ldr	r3, [pc, #84]	; (6fc <PortConfig+0x1d4>)
     6a6:	4a15      	ldr	r2, [pc, #84]	; (6fc <PortConfig+0x1d4>)
     6a8:	6892      	ldr	r2, [r2, #8]
     6aa:	491a      	ldr	r1, [pc, #104]	; (714 <PortConfig+0x1ec>)
     6ac:	400a      	ands	r2, r1
     6ae:	609a      	str	r2, [r3, #8]
     6b0:	4b12      	ldr	r3, [pc, #72]	; (6fc <PortConfig+0x1d4>)
     6b2:	4a12      	ldr	r2, [pc, #72]	; (6fc <PortConfig+0x1d4>)
     6b4:	6892      	ldr	r2, [r2, #8]
     6b6:	21a0      	movs	r1, #160	; 0xa0
     6b8:	0049      	lsls	r1, r1, #1
     6ba:	430a      	orrs	r2, r1
     6bc:	609a      	str	r2, [r3, #8]
     6be:	4b0f      	ldr	r3, [pc, #60]	; (6fc <PortConfig+0x1d4>)
     6c0:	4a0e      	ldr	r2, [pc, #56]	; (6fc <PortConfig+0x1d4>)
     6c2:	68d2      	ldr	r2, [r2, #12]
     6c4:	2118      	movs	r1, #24
     6c6:	430a      	orrs	r2, r1
     6c8:	60da      	str	r2, [r3, #12]
     6ca:	4b0c      	ldr	r3, [pc, #48]	; (6fc <PortConfig+0x1d4>)
     6cc:	4a0b      	ldr	r2, [pc, #44]	; (6fc <PortConfig+0x1d4>)
     6ce:	6992      	ldr	r2, [r2, #24]
     6d0:	21f0      	movs	r1, #240	; 0xf0
     6d2:	0089      	lsls	r1, r1, #2
     6d4:	430a      	orrs	r2, r1
     6d6:	619a      	str	r2, [r3, #24]
     6d8:	4b08      	ldr	r3, [pc, #32]	; (6fc <PortConfig+0x1d4>)
     6da:	4a08      	ldr	r2, [pc, #32]	; (6fc <PortConfig+0x1d4>)
     6dc:	6812      	ldr	r2, [r2, #0]
     6de:	2118      	movs	r1, #24
     6e0:	438a      	bics	r2, r1
     6e2:	601a      	str	r2, [r3, #0]
     6e4:	46c0      	nop			; (mov r8, r8)
     6e6:	46bd      	mov	sp, r7
     6e8:	bd80      	pop	{r7, pc}
     6ea:	46c0      	nop			; (mov r8, r8)
     6ec:	40020000 	.word	0x40020000
     6f0:	400a8000 	.word	0x400a8000
     6f4:	400c0000 	.word	0x400c0000
     6f8:	3fffc000 	.word	0x3fffc000
     6fc:	400b8000 	.word	0x400b8000
     700:	00001555 	.word	0x00001555
     704:	00003fff 	.word	0x00003fff
     708:	400c8000 	.word	0x400c8000
     70c:	0000fff0 	.word	0x0000fff0
     710:	ffffff00 	.word	0xffffff00
     714:	fffffc3f 	.word	0xfffffc3f

00000718 <dac_init>:
     718:	b580      	push	{r7, lr}
     71a:	af00      	add	r7, sp, #0
     71c:	4b07      	ldr	r3, [pc, #28]	; (73c <dac_init+0x24>)
     71e:	4a07      	ldr	r2, [pc, #28]	; (73c <dac_init+0x24>)
     720:	69d2      	ldr	r2, [r2, #28]
     722:	2180      	movs	r1, #128	; 0x80
     724:	02c9      	lsls	r1, r1, #11
     726:	430a      	orrs	r2, r1
     728:	61da      	str	r2, [r3, #28]
     72a:	4b05      	ldr	r3, [pc, #20]	; (740 <dac_init+0x28>)
     72c:	4a04      	ldr	r2, [pc, #16]	; (740 <dac_init+0x28>)
     72e:	6812      	ldr	r2, [r2, #0]
     730:	2104      	movs	r1, #4
     732:	430a      	orrs	r2, r1
     734:	601a      	str	r2, [r3, #0]
     736:	46c0      	nop			; (mov r8, r8)
     738:	46bd      	mov	sp, r7
     73a:	bd80      	pop	{r7, pc}
     73c:	40020000 	.word	0x40020000
     740:	40090000 	.word	0x40090000

00000744 <ClkConfig>:
     744:	b580      	push	{r7, lr}
     746:	af00      	add	r7, sp, #0
     748:	4b18      	ldr	r3, [pc, #96]	; (7ac <ClkConfig+0x68>)
     74a:	4a18      	ldr	r2, [pc, #96]	; (7ac <ClkConfig+0x68>)
     74c:	6892      	ldr	r2, [r2, #8]
     74e:	2101      	movs	r1, #1
     750:	430a      	orrs	r2, r1
     752:	609a      	str	r2, [r3, #8]
     754:	46c0      	nop			; (mov r8, r8)
     756:	4b15      	ldr	r3, [pc, #84]	; (7ac <ClkConfig+0x68>)
     758:	681b      	ldr	r3, [r3, #0]
     75a:	2204      	movs	r2, #4
     75c:	4013      	ands	r3, r2
     75e:	d0fa      	beq.n	756 <ClkConfig+0x12>
     760:	4b12      	ldr	r3, [pc, #72]	; (7ac <ClkConfig+0x68>)
     762:	4a12      	ldr	r2, [pc, #72]	; (7ac <ClkConfig+0x68>)
     764:	68d2      	ldr	r2, [r2, #12]
     766:	2102      	movs	r1, #2
     768:	430a      	orrs	r2, r1
     76a:	60da      	str	r2, [r3, #12]
     76c:	4b0f      	ldr	r3, [pc, #60]	; (7ac <ClkConfig+0x68>)
     76e:	4a10      	ldr	r2, [pc, #64]	; (7b0 <ClkConfig+0x6c>)
     770:	605a      	str	r2, [r3, #4]
     772:	46c0      	nop			; (mov r8, r8)
     774:	4b0d      	ldr	r3, [pc, #52]	; (7ac <ClkConfig+0x68>)
     776:	681b      	ldr	r3, [r3, #0]
     778:	2202      	movs	r2, #2
     77a:	4013      	ands	r3, r2
     77c:	d0fa      	beq.n	774 <ClkConfig+0x30>
     77e:	4b0d      	ldr	r3, [pc, #52]	; (7b4 <ClkConfig+0x70>)
     780:	4a0c      	ldr	r2, [pc, #48]	; (7b4 <ClkConfig+0x70>)
     782:	6812      	ldr	r2, [r2, #0]
     784:	2120      	movs	r1, #32
     786:	430a      	orrs	r2, r1
     788:	601a      	str	r2, [r3, #0]
     78a:	4b08      	ldr	r3, [pc, #32]	; (7ac <ClkConfig+0x68>)
     78c:	4a07      	ldr	r2, [pc, #28]	; (7ac <ClkConfig+0x68>)
     78e:	68d2      	ldr	r2, [r2, #12]
     790:	2180      	movs	r1, #128	; 0x80
     792:	0049      	lsls	r1, r1, #1
     794:	430a      	orrs	r2, r1
     796:	60da      	str	r2, [r3, #12]
     798:	4b04      	ldr	r3, [pc, #16]	; (7ac <ClkConfig+0x68>)
     79a:	4a04      	ldr	r2, [pc, #16]	; (7ac <ClkConfig+0x68>)
     79c:	68d2      	ldr	r2, [r2, #12]
     79e:	2104      	movs	r1, #4
     7a0:	430a      	orrs	r2, r1
     7a2:	60da      	str	r2, [r3, #12]
     7a4:	46c0      	nop			; (mov r8, r8)
     7a6:	46bd      	mov	sp, r7
     7a8:	bd80      	pop	{r7, pc}
     7aa:	46c0      	nop			; (mov r8, r8)
     7ac:	40020000 	.word	0x40020000
     7b0:	00000b04 	.word	0x00000b04
     7b4:	40018000 	.word	0x40018000

000007b8 <TimerConfig>:
     7b8:	b580      	push	{r7, lr}
     7ba:	af00      	add	r7, sp, #0
     7bc:	4b5e      	ldr	r3, [pc, #376]	; (938 <TimerConfig+0x180>)
     7be:	4a5e      	ldr	r2, [pc, #376]	; (938 <TimerConfig+0x180>)
     7c0:	69d2      	ldr	r2, [r2, #28]
     7c2:	2180      	movs	r1, #128	; 0x80
     7c4:	01c9      	lsls	r1, r1, #7
     7c6:	430a      	orrs	r2, r1
     7c8:	61da      	str	r2, [r3, #28]
     7ca:	4b5b      	ldr	r3, [pc, #364]	; (938 <TimerConfig+0x180>)
     7cc:	4a5a      	ldr	r2, [pc, #360]	; (938 <TimerConfig+0x180>)
     7ce:	6a52      	ldr	r2, [r2, #36]	; 0x24
     7d0:	2180      	movs	r1, #128	; 0x80
     7d2:	0449      	lsls	r1, r1, #17
     7d4:	430a      	orrs	r2, r1
     7d6:	625a      	str	r2, [r3, #36]	; 0x24
     7d8:	4b57      	ldr	r3, [pc, #348]	; (938 <TimerConfig+0x180>)
     7da:	4a57      	ldr	r2, [pc, #348]	; (938 <TimerConfig+0x180>)
     7dc:	6a52      	ldr	r2, [r2, #36]	; 0x24
     7de:	21ff      	movs	r1, #255	; 0xff
     7e0:	438a      	bics	r2, r1
     7e2:	625a      	str	r2, [r3, #36]	; 0x24
     7e4:	4b55      	ldr	r3, [pc, #340]	; (93c <TimerConfig+0x184>)
     7e6:	2200      	movs	r2, #0
     7e8:	601a      	str	r2, [r3, #0]
     7ea:	4b54      	ldr	r3, [pc, #336]	; (93c <TimerConfig+0x184>)
     7ec:	225f      	movs	r2, #95	; 0x5f
     7ee:	605a      	str	r2, [r3, #4]
     7f0:	4b52      	ldr	r3, [pc, #328]	; (93c <TimerConfig+0x184>)
     7f2:	4a53      	ldr	r2, [pc, #332]	; (940 <TimerConfig+0x188>)
     7f4:	609a      	str	r2, [r3, #8]
     7f6:	4b51      	ldr	r3, [pc, #324]	; (93c <TimerConfig+0x184>)
     7f8:	22fa      	movs	r2, #250	; 0xfa
     7fa:	611a      	str	r2, [r3, #16]
     7fc:	4b4f      	ldr	r3, [pc, #316]	; (93c <TimerConfig+0x184>)
     7fe:	22fa      	movs	r2, #250	; 0xfa
     800:	0052      	lsls	r2, r2, #1
     802:	615a      	str	r2, [r3, #20]
     804:	4b4d      	ldr	r3, [pc, #308]	; (93c <TimerConfig+0x184>)
     806:	4a4f      	ldr	r2, [pc, #316]	; (944 <TimerConfig+0x18c>)
     808:	619a      	str	r2, [r3, #24]
     80a:	4b4c      	ldr	r3, [pc, #304]	; (93c <TimerConfig+0x184>)
     80c:	4a4b      	ldr	r2, [pc, #300]	; (93c <TimerConfig+0x184>)
     80e:	6a12      	ldr	r2, [r2, #32]
     810:	494d      	ldr	r1, [pc, #308]	; (948 <TimerConfig+0x190>)
     812:	400a      	ands	r2, r1
     814:	621a      	str	r2, [r3, #32]
     816:	4b49      	ldr	r3, [pc, #292]	; (93c <TimerConfig+0x184>)
     818:	4a48      	ldr	r2, [pc, #288]	; (93c <TimerConfig+0x184>)
     81a:	6a12      	ldr	r2, [r2, #32]
     81c:	21e0      	movs	r1, #224	; 0xe0
     81e:	0109      	lsls	r1, r1, #4
     820:	430a      	orrs	r2, r1
     822:	621a      	str	r2, [r3, #32]
     824:	4b45      	ldr	r3, [pc, #276]	; (93c <TimerConfig+0x184>)
     826:	4a45      	ldr	r2, [pc, #276]	; (93c <TimerConfig+0x184>)
     828:	6b12      	ldr	r2, [r2, #48]	; 0x30
     82a:	210f      	movs	r1, #15
     82c:	438a      	bics	r2, r1
     82e:	631a      	str	r2, [r3, #48]	; 0x30
     830:	4b42      	ldr	r3, [pc, #264]	; (93c <TimerConfig+0x184>)
     832:	4a42      	ldr	r2, [pc, #264]	; (93c <TimerConfig+0x184>)
     834:	6b12      	ldr	r2, [r2, #48]	; 0x30
     836:	210c      	movs	r1, #12
     838:	430a      	orrs	r2, r1
     83a:	631a      	str	r2, [r3, #48]	; 0x30
     83c:	4b3f      	ldr	r3, [pc, #252]	; (93c <TimerConfig+0x184>)
     83e:	4a3f      	ldr	r2, [pc, #252]	; (93c <TimerConfig+0x184>)
     840:	6b12      	ldr	r2, [r2, #48]	; 0x30
     842:	2101      	movs	r1, #1
     844:	430a      	orrs	r2, r1
     846:	631a      	str	r2, [r3, #48]	; 0x30
     848:	4b3c      	ldr	r3, [pc, #240]	; (93c <TimerConfig+0x184>)
     84a:	4a3c      	ldr	r2, [pc, #240]	; (93c <TimerConfig+0x184>)
     84c:	6a52      	ldr	r2, [r2, #36]	; 0x24
     84e:	493e      	ldr	r1, [pc, #248]	; (948 <TimerConfig+0x190>)
     850:	400a      	ands	r2, r1
     852:	625a      	str	r2, [r3, #36]	; 0x24
     854:	4b39      	ldr	r3, [pc, #228]	; (93c <TimerConfig+0x184>)
     856:	4a39      	ldr	r2, [pc, #228]	; (93c <TimerConfig+0x184>)
     858:	6a52      	ldr	r2, [r2, #36]	; 0x24
     85a:	21e0      	movs	r1, #224	; 0xe0
     85c:	0109      	lsls	r1, r1, #4
     85e:	430a      	orrs	r2, r1
     860:	625a      	str	r2, [r3, #36]	; 0x24
     862:	4b36      	ldr	r3, [pc, #216]	; (93c <TimerConfig+0x184>)
     864:	4a35      	ldr	r2, [pc, #212]	; (93c <TimerConfig+0x184>)
     866:	6b52      	ldr	r2, [r2, #52]	; 0x34
     868:	210f      	movs	r1, #15
     86a:	438a      	bics	r2, r1
     86c:	635a      	str	r2, [r3, #52]	; 0x34
     86e:	4b33      	ldr	r3, [pc, #204]	; (93c <TimerConfig+0x184>)
     870:	4a32      	ldr	r2, [pc, #200]	; (93c <TimerConfig+0x184>)
     872:	6b52      	ldr	r2, [r2, #52]	; 0x34
     874:	210c      	movs	r1, #12
     876:	430a      	orrs	r2, r1
     878:	635a      	str	r2, [r3, #52]	; 0x34
     87a:	4b30      	ldr	r3, [pc, #192]	; (93c <TimerConfig+0x184>)
     87c:	4a2f      	ldr	r2, [pc, #188]	; (93c <TimerConfig+0x184>)
     87e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     880:	2101      	movs	r1, #1
     882:	430a      	orrs	r2, r1
     884:	635a      	str	r2, [r3, #52]	; 0x34
     886:	4b2d      	ldr	r3, [pc, #180]	; (93c <TimerConfig+0x184>)
     888:	4a2c      	ldr	r2, [pc, #176]	; (93c <TimerConfig+0x184>)
     88a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     88c:	492e      	ldr	r1, [pc, #184]	; (948 <TimerConfig+0x190>)
     88e:	400a      	ands	r2, r1
     890:	629a      	str	r2, [r3, #40]	; 0x28
     892:	4b2a      	ldr	r3, [pc, #168]	; (93c <TimerConfig+0x184>)
     894:	4a29      	ldr	r2, [pc, #164]	; (93c <TimerConfig+0x184>)
     896:	6a92      	ldr	r2, [r2, #40]	; 0x28
     898:	21e0      	movs	r1, #224	; 0xe0
     89a:	0109      	lsls	r1, r1, #4
     89c:	430a      	orrs	r2, r1
     89e:	629a      	str	r2, [r3, #40]	; 0x28
     8a0:	4b26      	ldr	r3, [pc, #152]	; (93c <TimerConfig+0x184>)
     8a2:	4a26      	ldr	r2, [pc, #152]	; (93c <TimerConfig+0x184>)
     8a4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     8a6:	210f      	movs	r1, #15
     8a8:	438a      	bics	r2, r1
     8aa:	639a      	str	r2, [r3, #56]	; 0x38
     8ac:	4b23      	ldr	r3, [pc, #140]	; (93c <TimerConfig+0x184>)
     8ae:	4a23      	ldr	r2, [pc, #140]	; (93c <TimerConfig+0x184>)
     8b0:	6b92      	ldr	r2, [r2, #56]	; 0x38
     8b2:	210c      	movs	r1, #12
     8b4:	430a      	orrs	r2, r1
     8b6:	639a      	str	r2, [r3, #56]	; 0x38
     8b8:	4b20      	ldr	r3, [pc, #128]	; (93c <TimerConfig+0x184>)
     8ba:	4a20      	ldr	r2, [pc, #128]	; (93c <TimerConfig+0x184>)
     8bc:	6b92      	ldr	r2, [r2, #56]	; 0x38
     8be:	2101      	movs	r1, #1
     8c0:	430a      	orrs	r2, r1
     8c2:	639a      	str	r2, [r3, #56]	; 0x38
     8c4:	4b1d      	ldr	r3, [pc, #116]	; (93c <TimerConfig+0x184>)
     8c6:	4a1d      	ldr	r2, [pc, #116]	; (93c <TimerConfig+0x184>)
     8c8:	6d92      	ldr	r2, [r2, #88]	; 0x58
     8ca:	21e0      	movs	r1, #224	; 0xe0
     8cc:	0109      	lsls	r1, r1, #4
     8ce:	430a      	orrs	r2, r1
     8d0:	659a      	str	r2, [r3, #88]	; 0x58
     8d2:	200e      	movs	r0, #14
     8d4:	f7ff fbf4 	bl	c0 <NVIC_EnableIRQ>
     8d8:	4b18      	ldr	r3, [pc, #96]	; (93c <TimerConfig+0x184>)
     8da:	2201      	movs	r2, #1
     8dc:	60da      	str	r2, [r3, #12]
     8de:	4b16      	ldr	r3, [pc, #88]	; (938 <TimerConfig+0x180>)
     8e0:	4a15      	ldr	r2, [pc, #84]	; (938 <TimerConfig+0x180>)
     8e2:	69d2      	ldr	r2, [r2, #28]
     8e4:	2180      	movs	r1, #128	; 0x80
     8e6:	0309      	lsls	r1, r1, #12
     8e8:	430a      	orrs	r2, r1
     8ea:	61da      	str	r2, [r3, #28]
     8ec:	4b12      	ldr	r3, [pc, #72]	; (938 <TimerConfig+0x180>)
     8ee:	4a12      	ldr	r2, [pc, #72]	; (938 <TimerConfig+0x180>)
     8f0:	6a92      	ldr	r2, [r2, #40]	; 0x28
     8f2:	2180      	movs	r1, #128	; 0x80
     8f4:	04c9      	lsls	r1, r1, #19
     8f6:	430a      	orrs	r2, r1
     8f8:	629a      	str	r2, [r3, #40]	; 0x28
     8fa:	4b0f      	ldr	r3, [pc, #60]	; (938 <TimerConfig+0x180>)
     8fc:	4a0e      	ldr	r2, [pc, #56]	; (938 <TimerConfig+0x180>)
     8fe:	6a92      	ldr	r2, [r2, #40]	; 0x28
     900:	4912      	ldr	r1, [pc, #72]	; (94c <TimerConfig+0x194>)
     902:	400a      	ands	r2, r1
     904:	629a      	str	r2, [r3, #40]	; 0x28
     906:	4b12      	ldr	r3, [pc, #72]	; (950 <TimerConfig+0x198>)
     908:	2200      	movs	r2, #0
     90a:	601a      	str	r2, [r3, #0]
     90c:	4b10      	ldr	r3, [pc, #64]	; (950 <TimerConfig+0x198>)
     90e:	225f      	movs	r2, #95	; 0x5f
     910:	605a      	str	r2, [r3, #4]
     912:	4b0f      	ldr	r3, [pc, #60]	; (950 <TimerConfig+0x198>)
     914:	4a0a      	ldr	r2, [pc, #40]	; (940 <TimerConfig+0x188>)
     916:	609a      	str	r2, [r3, #8]
     918:	4b0d      	ldr	r3, [pc, #52]	; (950 <TimerConfig+0x198>)
     91a:	4a0d      	ldr	r2, [pc, #52]	; (950 <TimerConfig+0x198>)
     91c:	6d92      	ldr	r2, [r2, #88]	; 0x58
     91e:	2102      	movs	r1, #2
     920:	430a      	orrs	r2, r1
     922:	659a      	str	r2, [r3, #88]	; 0x58
     924:	4b0a      	ldr	r3, [pc, #40]	; (950 <TimerConfig+0x198>)
     926:	2201      	movs	r2, #1
     928:	60da      	str	r2, [r3, #12]
     92a:	200d      	movs	r0, #13
     92c:	f7ff fbc8 	bl	c0 <NVIC_EnableIRQ>
     930:	46c0      	nop			; (mov r8, r8)
     932:	46bd      	mov	sp, r7
     934:	bd80      	pop	{r7, pc}
     936:	46c0      	nop			; (mov r8, r8)
     938:	40020000 	.word	0x40020000
     93c:	40070000 	.word	0x40070000
     940:	000003e7 	.word	0x000003e7
     944:	000002ee 	.word	0x000002ee
     948:	fffff1ff 	.word	0xfffff1ff
     94c:	ff00ffff 	.word	0xff00ffff
     950:	40098000 	.word	0x40098000

00000954 <mil_std_1533_init_rt>:
     954:	b580      	push	{r7, lr}
     956:	b082      	sub	sp, #8
     958:	af00      	add	r7, sp, #0
     95a:	4b21      	ldr	r3, [pc, #132]	; (9e0 <mil_std_1533_init_rt+0x8c>)
     95c:	603b      	str	r3, [r7, #0]
     95e:	4b21      	ldr	r3, [pc, #132]	; (9e4 <mil_std_1533_init_rt+0x90>)
     960:	4a20      	ldr	r2, [pc, #128]	; (9e4 <mil_std_1533_init_rt+0x90>)
     962:	69d2      	ldr	r2, [r2, #28]
     964:	2180      	movs	r1, #128	; 0x80
     966:	0089      	lsls	r1, r1, #2
     968:	430a      	orrs	r2, r1
     96a:	61da      	str	r2, [r3, #28]
     96c:	4b1d      	ldr	r3, [pc, #116]	; (9e4 <mil_std_1533_init_rt+0x90>)
     96e:	4a1d      	ldr	r2, [pc, #116]	; (9e4 <mil_std_1533_init_rt+0x90>)
     970:	6b52      	ldr	r2, [r2, #52]	; 0x34
     972:	491d      	ldr	r1, [pc, #116]	; (9e8 <mil_std_1533_init_rt+0x94>)
     974:	430a      	orrs	r2, r1
     976:	635a      	str	r2, [r3, #52]	; 0x34
     978:	4a1c      	ldr	r2, [pc, #112]	; (9ec <mil_std_1533_init_rt+0x98>)
     97a:	2380      	movs	r3, #128	; 0x80
     97c:	015b      	lsls	r3, r3, #5
     97e:	2101      	movs	r1, #1
     980:	50d1      	str	r1, [r2, r3]
     982:	4a1a      	ldr	r2, [pc, #104]	; (9ec <mil_std_1533_init_rt+0x98>)
     984:	2380      	movs	r3, #128	; 0x80
     986:	015b      	lsls	r3, r3, #5
     988:	4919      	ldr	r1, [pc, #100]	; (9f0 <mil_std_1533_init_rt+0x9c>)
     98a:	50d1      	str	r1, [r2, r3]
     98c:	4917      	ldr	r1, [pc, #92]	; (9ec <mil_std_1533_init_rt+0x98>)
     98e:	4a17      	ldr	r2, [pc, #92]	; (9ec <mil_std_1533_init_rt+0x98>)
     990:	2381      	movs	r3, #129	; 0x81
     992:	015b      	lsls	r3, r3, #5
     994:	58d3      	ldr	r3, [r2, r3]
     996:	2206      	movs	r2, #6
     998:	431a      	orrs	r2, r3
     99a:	2381      	movs	r3, #129	; 0x81
     99c:	015b      	lsls	r3, r3, #5
     99e:	50ca      	str	r2, [r1, r3]
     9a0:	2001      	movs	r0, #1
     9a2:	f7ff fb8d 	bl	c0 <NVIC_EnableIRQ>
     9a6:	4911      	ldr	r1, [pc, #68]	; (9ec <mil_std_1533_init_rt+0x98>)
     9a8:	4a12      	ldr	r2, [pc, #72]	; (9f4 <mil_std_1533_init_rt+0xa0>)
     9aa:	2380      	movs	r3, #128	; 0x80
     9ac:	01db      	lsls	r3, r3, #7
     9ae:	508b      	str	r3, [r1, r2]
     9b0:	2300      	movs	r3, #0
     9b2:	607b      	str	r3, [r7, #4]
     9b4:	e00d      	b.n	9d2 <mil_std_1533_init_rt+0x7e>
     9b6:	683b      	ldr	r3, [r7, #0]
     9b8:	1d1a      	adds	r2, r3, #4
     9ba:	603a      	str	r2, [r7, #0]
     9bc:	687a      	ldr	r2, [r7, #4]
     9be:	b292      	uxth	r2, r2
     9c0:	210f      	movs	r1, #15
     9c2:	400a      	ands	r2, r1
     9c4:	b292      	uxth	r2, r2
     9c6:	3230      	adds	r2, #48	; 0x30
     9c8:	b292      	uxth	r2, r2
     9ca:	601a      	str	r2, [r3, #0]
     9cc:	687b      	ldr	r3, [r7, #4]
     9ce:	3301      	adds	r3, #1
     9d0:	607b      	str	r3, [r7, #4]
     9d2:	687b      	ldr	r3, [r7, #4]
     9d4:	2b1f      	cmp	r3, #31
     9d6:	ddee      	ble.n	9b6 <mil_std_1533_init_rt+0x62>
     9d8:	46c0      	nop			; (mov r8, r8)
     9da:	46bd      	mov	sp, r7
     9dc:	b002      	add	sp, #8
     9de:	bd80      	pop	{r7, pc}
     9e0:	40048080 	.word	0x40048080
     9e4:	40020000 	.word	0x40020000
     9e8:	02000100 	.word	0x02000100
     9ec:	40048000 	.word	0x40048000
     9f0:	00018238 	.word	0x00018238
     9f4:	00001018 	.word	0x00001018

000009f8 <SystemInit>:
     9f8:	b580      	push	{r7, lr}
     9fa:	af00      	add	r7, sp, #0
     9fc:	f7ff fea2 	bl	744 <ClkConfig>
     a00:	f7ff fd92 	bl	528 <PortConfig>
     a04:	f7ff fed8 	bl	7b8 <TimerConfig>
     a08:	f000 fa4a 	bl	ea0 <uart_init>
     a0c:	f7ff ffa2 	bl	954 <mil_std_1533_init_rt>
     a10:	f7ff fe82 	bl	718 <dac_init>
     a14:	46c0      	nop			; (mov r8, r8)
     a16:	46bd      	mov	sp, r7
     a18:	bd80      	pop	{r7, pc}
     a1a:	46c0      	nop			; (mov r8, r8)

00000a1c <SysTick_Handler>:
     a1c:	b580      	push	{r7, lr}
     a1e:	af00      	add	r7, sp, #0
     a20:	4b03      	ldr	r3, [pc, #12]	; (a30 <SysTick_Handler+0x14>)
     a22:	681b      	ldr	r3, [r3, #0]
     a24:	1c5a      	adds	r2, r3, #1
     a26:	4b02      	ldr	r3, [pc, #8]	; (a30 <SysTick_Handler+0x14>)
     a28:	601a      	str	r2, [r3, #0]
     a2a:	46c0      	nop			; (mov r8, r8)
     a2c:	46bd      	mov	sp, r7
     a2e:	bd80      	pop	{r7, pc}
     a30:	200000f4 	.word	0x200000f4

00000a34 <TIMER1_Handler>:
     a34:	b590      	push	{r4, r7, lr}
     a36:	af00      	add	r7, sp, #0
     a38:	4b0b      	ldr	r3, [pc, #44]	; (a68 <TIMER1_Handler+0x34>)
     a3a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     a3c:	0a5b      	lsrs	r3, r3, #9
     a3e:	2207      	movs	r2, #7
     a40:	4013      	ands	r3, r2
     a42:	001c      	movs	r4, r3
     a44:	4b08      	ldr	r3, [pc, #32]	; (a68 <TIMER1_Handler+0x34>)
     a46:	2200      	movs	r2, #0
     a48:	655a      	str	r2, [r3, #84]	; 0x54
     a4a:	4b08      	ldr	r3, [pc, #32]	; (a6c <TIMER1_Handler+0x38>)
     a4c:	4a08      	ldr	r2, [pc, #32]	; (a70 <TIMER1_Handler+0x3c>)
     a4e:	0061      	lsls	r1, r4, #1
     a50:	5a8a      	ldrh	r2, [r1, r2]
     a52:	0112      	lsls	r2, r2, #4
     a54:	601a      	str	r2, [r3, #0]
     a56:	4b07      	ldr	r3, [pc, #28]	; (a74 <TIMER1_Handler+0x40>)
     a58:	4a06      	ldr	r2, [pc, #24]	; (a74 <TIMER1_Handler+0x40>)
     a5a:	6812      	ldr	r2, [r2, #0]
     a5c:	2108      	movs	r1, #8
     a5e:	404a      	eors	r2, r1
     a60:	601a      	str	r2, [r3, #0]
     a62:	46c0      	nop			; (mov r8, r8)
     a64:	46bd      	mov	sp, r7
     a66:	bd90      	pop	{r4, r7, pc}
     a68:	40070000 	.word	0x40070000
     a6c:	400c8000 	.word	0x400c8000
     a70:	20000000 	.word	0x20000000
     a74:	400a8000 	.word	0x400a8000

00000a78 <TIMER4_Handler>:
     a78:	b580      	push	{r7, lr}
     a7a:	af00      	add	r7, sp, #0
     a7c:	4b06      	ldr	r3, [pc, #24]	; (a98 <TIMER4_Handler+0x20>)
     a7e:	2200      	movs	r2, #0
     a80:	655a      	str	r2, [r3, #84]	; 0x54
     a82:	4b06      	ldr	r3, [pc, #24]	; (a9c <TIMER4_Handler+0x24>)
     a84:	681b      	ldr	r3, [r3, #0]
     a86:	1c5a      	adds	r2, r3, #1
     a88:	4b04      	ldr	r3, [pc, #16]	; (a9c <TIMER4_Handler+0x24>)
     a8a:	601a      	str	r2, [r3, #0]
     a8c:	4b04      	ldr	r3, [pc, #16]	; (aa0 <TIMER4_Handler+0x28>)
     a8e:	2201      	movs	r2, #1
     a90:	601a      	str	r2, [r3, #0]
     a92:	46c0      	nop			; (mov r8, r8)
     a94:	46bd      	mov	sp, r7
     a96:	bd80      	pop	{r7, pc}
     a98:	40098000 	.word	0x40098000
     a9c:	200000f4 	.word	0x200000f4
     aa0:	200000fc 	.word	0x200000fc

00000aa4 <MIL_STD_1553B1_Handler>:
     aa4:	b590      	push	{r4, r7, lr}
     aa6:	b087      	sub	sp, #28
     aa8:	af00      	add	r7, sp, #0
     aaa:	4bbb      	ldr	r3, [pc, #748]	; (d98 <MIL_STD_1553B1_Handler+0x2f4>)
     aac:	613b      	str	r3, [r7, #16]
     aae:	4abb      	ldr	r2, [pc, #748]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     ab0:	4bbb      	ldr	r3, [pc, #748]	; (da0 <MIL_STD_1553B1_Handler+0x2fc>)
     ab2:	58d3      	ldr	r3, [r2, r3]
     ab4:	2202      	movs	r2, #2
     ab6:	4013      	ands	r3, r2
     ab8:	d100      	bne.n	abc <MIL_STD_1553B1_Handler+0x18>
     aba:	e115      	b.n	ce8 <MIL_STD_1553B1_Handler+0x244>
     abc:	4ab7      	ldr	r2, [pc, #732]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     abe:	4bb9      	ldr	r3, [pc, #740]	; (da4 <MIL_STD_1553B1_Handler+0x300>)
     ac0:	58d3      	ldr	r3, [r2, r3]
     ac2:	4ab9      	ldr	r2, [pc, #740]	; (da8 <MIL_STD_1553B1_Handler+0x304>)
     ac4:	4293      	cmp	r3, r2
     ac6:	d000      	beq.n	aca <MIL_STD_1553B1_Handler+0x26>
     ac8:	e10e      	b.n	ce8 <MIL_STD_1553B1_Handler+0x244>
     aca:	4bb8      	ldr	r3, [pc, #736]	; (dac <MIL_STD_1553B1_Handler+0x308>)
     acc:	681b      	ldr	r3, [r3, #0]
     ace:	2201      	movs	r2, #1
     ad0:	4053      	eors	r3, r2
     ad2:	009a      	lsls	r2, r3, #2
     ad4:	4bb6      	ldr	r3, [pc, #728]	; (db0 <MIL_STD_1553B1_Handler+0x30c>)
     ad6:	18d3      	adds	r3, r2, r3
     ad8:	681b      	ldr	r3, [r3, #0]
     ada:	60fb      	str	r3, [r7, #12]
     adc:	693b      	ldr	r3, [r7, #16]
     ade:	1d1a      	adds	r2, r3, #4
     ae0:	613a      	str	r2, [r7, #16]
     ae2:	68fa      	ldr	r2, [r7, #12]
     ae4:	1c91      	adds	r1, r2, #2
     ae6:	60f9      	str	r1, [r7, #12]
     ae8:	8812      	ldrh	r2, [r2, #0]
     aea:	601a      	str	r2, [r3, #0]
     aec:	693b      	ldr	r3, [r7, #16]
     aee:	1d1a      	adds	r2, r3, #4
     af0:	613a      	str	r2, [r7, #16]
     af2:	68fa      	ldr	r2, [r7, #12]
     af4:	1c91      	adds	r1, r2, #2
     af6:	60f9      	str	r1, [r7, #12]
     af8:	8812      	ldrh	r2, [r2, #0]
     afa:	601a      	str	r2, [r3, #0]
     afc:	693b      	ldr	r3, [r7, #16]
     afe:	1d1a      	adds	r2, r3, #4
     b00:	613a      	str	r2, [r7, #16]
     b02:	68fa      	ldr	r2, [r7, #12]
     b04:	1c91      	adds	r1, r2, #2
     b06:	60f9      	str	r1, [r7, #12]
     b08:	8812      	ldrh	r2, [r2, #0]
     b0a:	601a      	str	r2, [r3, #0]
     b0c:	693b      	ldr	r3, [r7, #16]
     b0e:	1d1a      	adds	r2, r3, #4
     b10:	613a      	str	r2, [r7, #16]
     b12:	68fa      	ldr	r2, [r7, #12]
     b14:	1c91      	adds	r1, r2, #2
     b16:	60f9      	str	r1, [r7, #12]
     b18:	8812      	ldrh	r2, [r2, #0]
     b1a:	601a      	str	r2, [r3, #0]
     b1c:	693b      	ldr	r3, [r7, #16]
     b1e:	1d1a      	adds	r2, r3, #4
     b20:	613a      	str	r2, [r7, #16]
     b22:	68fa      	ldr	r2, [r7, #12]
     b24:	1c91      	adds	r1, r2, #2
     b26:	60f9      	str	r1, [r7, #12]
     b28:	8812      	ldrh	r2, [r2, #0]
     b2a:	601a      	str	r2, [r3, #0]
     b2c:	693b      	ldr	r3, [r7, #16]
     b2e:	1d1a      	adds	r2, r3, #4
     b30:	613a      	str	r2, [r7, #16]
     b32:	68fa      	ldr	r2, [r7, #12]
     b34:	1c91      	adds	r1, r2, #2
     b36:	60f9      	str	r1, [r7, #12]
     b38:	8812      	ldrh	r2, [r2, #0]
     b3a:	601a      	str	r2, [r3, #0]
     b3c:	693b      	ldr	r3, [r7, #16]
     b3e:	1d1a      	adds	r2, r3, #4
     b40:	613a      	str	r2, [r7, #16]
     b42:	68fa      	ldr	r2, [r7, #12]
     b44:	1c91      	adds	r1, r2, #2
     b46:	60f9      	str	r1, [r7, #12]
     b48:	8812      	ldrh	r2, [r2, #0]
     b4a:	601a      	str	r2, [r3, #0]
     b4c:	693b      	ldr	r3, [r7, #16]
     b4e:	1d1a      	adds	r2, r3, #4
     b50:	613a      	str	r2, [r7, #16]
     b52:	68fa      	ldr	r2, [r7, #12]
     b54:	1c91      	adds	r1, r2, #2
     b56:	60f9      	str	r1, [r7, #12]
     b58:	8812      	ldrh	r2, [r2, #0]
     b5a:	601a      	str	r2, [r3, #0]
     b5c:	693b      	ldr	r3, [r7, #16]
     b5e:	1d1a      	adds	r2, r3, #4
     b60:	613a      	str	r2, [r7, #16]
     b62:	68fa      	ldr	r2, [r7, #12]
     b64:	1c91      	adds	r1, r2, #2
     b66:	60f9      	str	r1, [r7, #12]
     b68:	8812      	ldrh	r2, [r2, #0]
     b6a:	601a      	str	r2, [r3, #0]
     b6c:	693b      	ldr	r3, [r7, #16]
     b6e:	1d1a      	adds	r2, r3, #4
     b70:	613a      	str	r2, [r7, #16]
     b72:	68fa      	ldr	r2, [r7, #12]
     b74:	1c91      	adds	r1, r2, #2
     b76:	60f9      	str	r1, [r7, #12]
     b78:	8812      	ldrh	r2, [r2, #0]
     b7a:	601a      	str	r2, [r3, #0]
     b7c:	693b      	ldr	r3, [r7, #16]
     b7e:	1d1a      	adds	r2, r3, #4
     b80:	613a      	str	r2, [r7, #16]
     b82:	68fa      	ldr	r2, [r7, #12]
     b84:	1c91      	adds	r1, r2, #2
     b86:	60f9      	str	r1, [r7, #12]
     b88:	8812      	ldrh	r2, [r2, #0]
     b8a:	601a      	str	r2, [r3, #0]
     b8c:	693b      	ldr	r3, [r7, #16]
     b8e:	1d1a      	adds	r2, r3, #4
     b90:	613a      	str	r2, [r7, #16]
     b92:	68fa      	ldr	r2, [r7, #12]
     b94:	1c91      	adds	r1, r2, #2
     b96:	60f9      	str	r1, [r7, #12]
     b98:	8812      	ldrh	r2, [r2, #0]
     b9a:	601a      	str	r2, [r3, #0]
     b9c:	693b      	ldr	r3, [r7, #16]
     b9e:	1d1a      	adds	r2, r3, #4
     ba0:	613a      	str	r2, [r7, #16]
     ba2:	68fa      	ldr	r2, [r7, #12]
     ba4:	1c91      	adds	r1, r2, #2
     ba6:	60f9      	str	r1, [r7, #12]
     ba8:	8812      	ldrh	r2, [r2, #0]
     baa:	601a      	str	r2, [r3, #0]
     bac:	693b      	ldr	r3, [r7, #16]
     bae:	1d1a      	adds	r2, r3, #4
     bb0:	613a      	str	r2, [r7, #16]
     bb2:	68fa      	ldr	r2, [r7, #12]
     bb4:	1c91      	adds	r1, r2, #2
     bb6:	60f9      	str	r1, [r7, #12]
     bb8:	8812      	ldrh	r2, [r2, #0]
     bba:	601a      	str	r2, [r3, #0]
     bbc:	693b      	ldr	r3, [r7, #16]
     bbe:	1d1a      	adds	r2, r3, #4
     bc0:	613a      	str	r2, [r7, #16]
     bc2:	68fa      	ldr	r2, [r7, #12]
     bc4:	1c91      	adds	r1, r2, #2
     bc6:	60f9      	str	r1, [r7, #12]
     bc8:	8812      	ldrh	r2, [r2, #0]
     bca:	601a      	str	r2, [r3, #0]
     bcc:	693b      	ldr	r3, [r7, #16]
     bce:	1d1a      	adds	r2, r3, #4
     bd0:	613a      	str	r2, [r7, #16]
     bd2:	68fa      	ldr	r2, [r7, #12]
     bd4:	1c91      	adds	r1, r2, #2
     bd6:	60f9      	str	r1, [r7, #12]
     bd8:	8812      	ldrh	r2, [r2, #0]
     bda:	601a      	str	r2, [r3, #0]
     bdc:	693b      	ldr	r3, [r7, #16]
     bde:	1d1a      	adds	r2, r3, #4
     be0:	613a      	str	r2, [r7, #16]
     be2:	68fa      	ldr	r2, [r7, #12]
     be4:	1c91      	adds	r1, r2, #2
     be6:	60f9      	str	r1, [r7, #12]
     be8:	8812      	ldrh	r2, [r2, #0]
     bea:	601a      	str	r2, [r3, #0]
     bec:	693b      	ldr	r3, [r7, #16]
     bee:	1d1a      	adds	r2, r3, #4
     bf0:	613a      	str	r2, [r7, #16]
     bf2:	68fa      	ldr	r2, [r7, #12]
     bf4:	1c91      	adds	r1, r2, #2
     bf6:	60f9      	str	r1, [r7, #12]
     bf8:	8812      	ldrh	r2, [r2, #0]
     bfa:	601a      	str	r2, [r3, #0]
     bfc:	693b      	ldr	r3, [r7, #16]
     bfe:	1d1a      	adds	r2, r3, #4
     c00:	613a      	str	r2, [r7, #16]
     c02:	68fa      	ldr	r2, [r7, #12]
     c04:	1c91      	adds	r1, r2, #2
     c06:	60f9      	str	r1, [r7, #12]
     c08:	8812      	ldrh	r2, [r2, #0]
     c0a:	601a      	str	r2, [r3, #0]
     c0c:	693b      	ldr	r3, [r7, #16]
     c0e:	1d1a      	adds	r2, r3, #4
     c10:	613a      	str	r2, [r7, #16]
     c12:	68fa      	ldr	r2, [r7, #12]
     c14:	1c91      	adds	r1, r2, #2
     c16:	60f9      	str	r1, [r7, #12]
     c18:	8812      	ldrh	r2, [r2, #0]
     c1a:	601a      	str	r2, [r3, #0]
     c1c:	693b      	ldr	r3, [r7, #16]
     c1e:	1d1a      	adds	r2, r3, #4
     c20:	613a      	str	r2, [r7, #16]
     c22:	68fa      	ldr	r2, [r7, #12]
     c24:	1c91      	adds	r1, r2, #2
     c26:	60f9      	str	r1, [r7, #12]
     c28:	8812      	ldrh	r2, [r2, #0]
     c2a:	601a      	str	r2, [r3, #0]
     c2c:	693b      	ldr	r3, [r7, #16]
     c2e:	1d1a      	adds	r2, r3, #4
     c30:	613a      	str	r2, [r7, #16]
     c32:	68fa      	ldr	r2, [r7, #12]
     c34:	1c91      	adds	r1, r2, #2
     c36:	60f9      	str	r1, [r7, #12]
     c38:	8812      	ldrh	r2, [r2, #0]
     c3a:	601a      	str	r2, [r3, #0]
     c3c:	693b      	ldr	r3, [r7, #16]
     c3e:	1d1a      	adds	r2, r3, #4
     c40:	613a      	str	r2, [r7, #16]
     c42:	68fa      	ldr	r2, [r7, #12]
     c44:	1c91      	adds	r1, r2, #2
     c46:	60f9      	str	r1, [r7, #12]
     c48:	8812      	ldrh	r2, [r2, #0]
     c4a:	601a      	str	r2, [r3, #0]
     c4c:	693b      	ldr	r3, [r7, #16]
     c4e:	1d1a      	adds	r2, r3, #4
     c50:	613a      	str	r2, [r7, #16]
     c52:	68fa      	ldr	r2, [r7, #12]
     c54:	1c91      	adds	r1, r2, #2
     c56:	60f9      	str	r1, [r7, #12]
     c58:	8812      	ldrh	r2, [r2, #0]
     c5a:	601a      	str	r2, [r3, #0]
     c5c:	693b      	ldr	r3, [r7, #16]
     c5e:	1d1a      	adds	r2, r3, #4
     c60:	613a      	str	r2, [r7, #16]
     c62:	68fa      	ldr	r2, [r7, #12]
     c64:	1c91      	adds	r1, r2, #2
     c66:	60f9      	str	r1, [r7, #12]
     c68:	8812      	ldrh	r2, [r2, #0]
     c6a:	601a      	str	r2, [r3, #0]
     c6c:	693b      	ldr	r3, [r7, #16]
     c6e:	1d1a      	adds	r2, r3, #4
     c70:	613a      	str	r2, [r7, #16]
     c72:	68fa      	ldr	r2, [r7, #12]
     c74:	1c91      	adds	r1, r2, #2
     c76:	60f9      	str	r1, [r7, #12]
     c78:	8812      	ldrh	r2, [r2, #0]
     c7a:	601a      	str	r2, [r3, #0]
     c7c:	693b      	ldr	r3, [r7, #16]
     c7e:	1d1a      	adds	r2, r3, #4
     c80:	613a      	str	r2, [r7, #16]
     c82:	68fa      	ldr	r2, [r7, #12]
     c84:	1c91      	adds	r1, r2, #2
     c86:	60f9      	str	r1, [r7, #12]
     c88:	8812      	ldrh	r2, [r2, #0]
     c8a:	601a      	str	r2, [r3, #0]
     c8c:	693b      	ldr	r3, [r7, #16]
     c8e:	1d1a      	adds	r2, r3, #4
     c90:	613a      	str	r2, [r7, #16]
     c92:	68fa      	ldr	r2, [r7, #12]
     c94:	1c91      	adds	r1, r2, #2
     c96:	60f9      	str	r1, [r7, #12]
     c98:	8812      	ldrh	r2, [r2, #0]
     c9a:	601a      	str	r2, [r3, #0]
     c9c:	693b      	ldr	r3, [r7, #16]
     c9e:	1d1a      	adds	r2, r3, #4
     ca0:	613a      	str	r2, [r7, #16]
     ca2:	68fa      	ldr	r2, [r7, #12]
     ca4:	1c91      	adds	r1, r2, #2
     ca6:	60f9      	str	r1, [r7, #12]
     ca8:	8812      	ldrh	r2, [r2, #0]
     caa:	601a      	str	r2, [r3, #0]
     cac:	693b      	ldr	r3, [r7, #16]
     cae:	1d1a      	adds	r2, r3, #4
     cb0:	613a      	str	r2, [r7, #16]
     cb2:	68fa      	ldr	r2, [r7, #12]
     cb4:	1c91      	adds	r1, r2, #2
     cb6:	60f9      	str	r1, [r7, #12]
     cb8:	8812      	ldrh	r2, [r2, #0]
     cba:	601a      	str	r2, [r3, #0]
     cbc:	693b      	ldr	r3, [r7, #16]
     cbe:	1d1a      	adds	r2, r3, #4
     cc0:	613a      	str	r2, [r7, #16]
     cc2:	68fa      	ldr	r2, [r7, #12]
     cc4:	1c91      	adds	r1, r2, #2
     cc6:	60f9      	str	r1, [r7, #12]
     cc8:	8812      	ldrh	r2, [r2, #0]
     cca:	601a      	str	r2, [r3, #0]
     ccc:	693b      	ldr	r3, [r7, #16]
     cce:	1d1a      	adds	r2, r3, #4
     cd0:	613a      	str	r2, [r7, #16]
     cd2:	68fa      	ldr	r2, [r7, #12]
     cd4:	1c91      	adds	r1, r2, #2
     cd6:	60f9      	str	r1, [r7, #12]
     cd8:	8812      	ldrh	r2, [r2, #0]
     cda:	601a      	str	r2, [r3, #0]
     cdc:	4b35      	ldr	r3, [pc, #212]	; (db4 <MIL_STD_1553B1_Handler+0x310>)
     cde:	4a35      	ldr	r2, [pc, #212]	; (db4 <MIL_STD_1553B1_Handler+0x310>)
     ce0:	6812      	ldr	r2, [r2, #0]
     ce2:	0c12      	lsrs	r2, r2, #16
     ce4:	0412      	lsls	r2, r2, #16
     ce6:	601a      	str	r2, [r3, #0]
     ce8:	4a2c      	ldr	r2, [pc, #176]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     cea:	4b2d      	ldr	r3, [pc, #180]	; (da0 <MIL_STD_1553B1_Handler+0x2fc>)
     cec:	58d3      	ldr	r3, [r2, r3]
     cee:	2204      	movs	r2, #4
     cf0:	4013      	ands	r3, r2
     cf2:	d04c      	beq.n	d8e <MIL_STD_1553B1_Handler+0x2ea>
     cf4:	4a29      	ldr	r2, [pc, #164]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     cf6:	4b2b      	ldr	r3, [pc, #172]	; (da4 <MIL_STD_1553B1_Handler+0x300>)
     cf8:	58d3      	ldr	r3, [r2, r3]
     cfa:	4a2b      	ldr	r2, [pc, #172]	; (da8 <MIL_STD_1553B1_Handler+0x304>)
     cfc:	4293      	cmp	r3, r2
     cfe:	d106      	bne.n	d0e <MIL_STD_1553B1_Handler+0x26a>
     d00:	4b2d      	ldr	r3, [pc, #180]	; (db8 <MIL_STD_1553B1_Handler+0x314>)
     d02:	4a2d      	ldr	r2, [pc, #180]	; (db8 <MIL_STD_1553B1_Handler+0x314>)
     d04:	6812      	ldr	r2, [r2, #0]
     d06:	2101      	movs	r1, #1
     d08:	404a      	eors	r2, r1
     d0a:	601a      	str	r2, [r3, #0]
     d0c:	e03f      	b.n	d8e <MIL_STD_1553B1_Handler+0x2ea>
     d0e:	4a23      	ldr	r2, [pc, #140]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     d10:	4b24      	ldr	r3, [pc, #144]	; (da4 <MIL_STD_1553B1_Handler+0x300>)
     d12:	58d3      	ldr	r3, [r2, r3]
     d14:	2b01      	cmp	r3, #1
     d16:	d13a      	bne.n	d8e <MIL_STD_1553B1_Handler+0x2ea>
     d18:	4a20      	ldr	r2, [pc, #128]	; (d9c <MIL_STD_1553B1_Handler+0x2f8>)
     d1a:	4b28      	ldr	r3, [pc, #160]	; (dbc <MIL_STD_1553B1_Handler+0x318>)
     d1c:	58d3      	ldr	r3, [r2, r3]
     d1e:	221f      	movs	r2, #31
     d20:	4013      	ands	r3, r2
     d22:	60bb      	str	r3, [r7, #8]
     d24:	1dbb      	adds	r3, r7, #6
     d26:	2200      	movs	r2, #0
     d28:	801a      	strh	r2, [r3, #0]
     d2a:	4b25      	ldr	r3, [pc, #148]	; (dc0 <MIL_STD_1553B1_Handler+0x31c>)
     d2c:	603b      	str	r3, [r7, #0]
     d2e:	4b25      	ldr	r3, [pc, #148]	; (dc4 <MIL_STD_1553B1_Handler+0x320>)
     d30:	681b      	ldr	r3, [r3, #0]
     d32:	2b00      	cmp	r3, #0
     d34:	d12b      	bne.n	d8e <MIL_STD_1553B1_Handler+0x2ea>
     d36:	68bb      	ldr	r3, [r7, #8]
     d38:	2b20      	cmp	r3, #32
     d3a:	d828      	bhi.n	d8e <MIL_STD_1553B1_Handler+0x2ea>
     d3c:	2300      	movs	r3, #0
     d3e:	617b      	str	r3, [r7, #20]
     d40:	e00c      	b.n	d5c <MIL_STD_1553B1_Handler+0x2b8>
     d42:	697b      	ldr	r3, [r7, #20]
     d44:	005b      	lsls	r3, r3, #1
     d46:	683a      	ldr	r2, [r7, #0]
     d48:	18d2      	adds	r2, r2, r3
     d4a:	693b      	ldr	r3, [r7, #16]
     d4c:	1d19      	adds	r1, r3, #4
     d4e:	6139      	str	r1, [r7, #16]
     d50:	681b      	ldr	r3, [r3, #0]
     d52:	b29b      	uxth	r3, r3
     d54:	8013      	strh	r3, [r2, #0]
     d56:	697b      	ldr	r3, [r7, #20]
     d58:	3301      	adds	r3, #1
     d5a:	617b      	str	r3, [r7, #20]
     d5c:	697a      	ldr	r2, [r7, #20]
     d5e:	68bb      	ldr	r3, [r7, #8]
     d60:	429a      	cmp	r2, r3
     d62:	d3ee      	bcc.n	d42 <MIL_STD_1553B1_Handler+0x29e>
     d64:	68bb      	ldr	r3, [r7, #8]
     d66:	1e5a      	subs	r2, r3, #1
     d68:	1dbc      	adds	r4, r7, #6
     d6a:	683b      	ldr	r3, [r7, #0]
     d6c:	0011      	movs	r1, r2
     d6e:	0018      	movs	r0, r3
     d70:	f7ff f9c2 	bl	f8 <get_checksum>
     d74:	0003      	movs	r3, r0
     d76:	8023      	strh	r3, [r4, #0]
     d78:	4b11      	ldr	r3, [pc, #68]	; (dc0 <MIL_STD_1553B1_Handler+0x31c>)
     d7a:	891b      	ldrh	r3, [r3, #8]
     d7c:	1dba      	adds	r2, r7, #6
     d7e:	8812      	ldrh	r2, [r2, #0]
     d80:	1ad3      	subs	r3, r2, r3
     d82:	425a      	negs	r2, r3
     d84:	4153      	adcs	r3, r2
     d86:	b2db      	uxtb	r3, r3
     d88:	001a      	movs	r2, r3
     d8a:	4b0e      	ldr	r3, [pc, #56]	; (dc4 <MIL_STD_1553B1_Handler+0x320>)
     d8c:	601a      	str	r2, [r3, #0]
     d8e:	46c0      	nop			; (mov r8, r8)
     d90:	46bd      	mov	sp, r7
     d92:	b007      	add	sp, #28
     d94:	bd90      	pop	{r4, r7, pc}
     d96:	46c0      	nop			; (mov r8, r8)
     d98:	40048080 	.word	0x40048080
     d9c:	40048000 	.word	0x40048000
     da0:	00001004 	.word	0x00001004
     da4:	00001024 	.word	0x00001024
     da8:	00000402 	.word	0x00000402
     dac:	200000e8 	.word	0x200000e8
     db0:	200000e0 	.word	0x200000e0
     db4:	400c0000 	.word	0x400c0000
     db8:	400c8000 	.word	0x400c8000
     dbc:	0000100c 	.word	0x0000100c
     dc0:	200000d4 	.word	0x200000d4
     dc4:	200000f8 	.word	0x200000f8

00000dc8 <handler_reset>:
     dc8:	b580      	push	{r7, lr}
     dca:	b082      	sub	sp, #8
     dcc:	af00      	add	r7, sp, #0
     dce:	4b11      	ldr	r3, [pc, #68]	; (e14 <handler_reset+0x4c>)
     dd0:	607b      	str	r3, [r7, #4]
     dd2:	4b11      	ldr	r3, [pc, #68]	; (e18 <handler_reset+0x50>)
     dd4:	603b      	str	r3, [r7, #0]
     dd6:	e007      	b.n	de8 <handler_reset+0x20>
     dd8:	683b      	ldr	r3, [r7, #0]
     dda:	1d1a      	adds	r2, r3, #4
     ddc:	603a      	str	r2, [r7, #0]
     dde:	687a      	ldr	r2, [r7, #4]
     de0:	1d11      	adds	r1, r2, #4
     de2:	6079      	str	r1, [r7, #4]
     de4:	6812      	ldr	r2, [r2, #0]
     de6:	601a      	str	r2, [r3, #0]
     de8:	683a      	ldr	r2, [r7, #0]
     dea:	4b0c      	ldr	r3, [pc, #48]	; (e1c <handler_reset+0x54>)
     dec:	429a      	cmp	r2, r3
     dee:	d3f3      	bcc.n	dd8 <handler_reset+0x10>
     df0:	4b0b      	ldr	r3, [pc, #44]	; (e20 <handler_reset+0x58>)
     df2:	603b      	str	r3, [r7, #0]
     df4:	e004      	b.n	e00 <handler_reset+0x38>
     df6:	683b      	ldr	r3, [r7, #0]
     df8:	1d1a      	adds	r2, r3, #4
     dfa:	603a      	str	r2, [r7, #0]
     dfc:	2200      	movs	r2, #0
     dfe:	601a      	str	r2, [r3, #0]
     e00:	683a      	ldr	r2, [r7, #0]
     e02:	4b08      	ldr	r3, [pc, #32]	; (e24 <handler_reset+0x5c>)
     e04:	429a      	cmp	r2, r3
     e06:	d3f6      	bcc.n	df6 <handler_reset+0x2e>
     e08:	f7ff fb1e 	bl	448 <main>
     e0c:	46c0      	nop			; (mov r8, r8)
     e0e:	46bd      	mov	sp, r7
     e10:	b002      	add	sp, #8
     e12:	bd80      	pop	{r7, pc}
     e14:	00001c30 	.word	0x00001c30
     e18:	20000000 	.word	0x20000000
     e1c:	20000054 	.word	0x20000054
     e20:	20000054 	.word	0x20000054
     e24:	2000051c 	.word	0x2000051c

00000e28 <default_handler>:
     e28:	b580      	push	{r7, lr}
     e2a:	af00      	add	r7, sp, #0
     e2c:	e7fe      	b.n	e2c <default_handler+0x4>
     e2e:	46c0      	nop			; (mov r8, r8)

00000e30 <NVIC_EnableIRQ>:
     e30:	b580      	push	{r7, lr}
     e32:	b082      	sub	sp, #8
     e34:	af00      	add	r7, sp, #0
     e36:	0002      	movs	r2, r0
     e38:	1dfb      	adds	r3, r7, #7
     e3a:	701a      	strb	r2, [r3, #0]
     e3c:	4909      	ldr	r1, [pc, #36]	; (e64 <NVIC_EnableIRQ+0x34>)
     e3e:	1dfb      	adds	r3, r7, #7
     e40:	781b      	ldrb	r3, [r3, #0]
     e42:	b25b      	sxtb	r3, r3
     e44:	095b      	lsrs	r3, r3, #5
     e46:	1dfa      	adds	r2, r7, #7
     e48:	7812      	ldrb	r2, [r2, #0]
     e4a:	0010      	movs	r0, r2
     e4c:	221f      	movs	r2, #31
     e4e:	4002      	ands	r2, r0
     e50:	2001      	movs	r0, #1
     e52:	4090      	lsls	r0, r2
     e54:	0002      	movs	r2, r0
     e56:	009b      	lsls	r3, r3, #2
     e58:	505a      	str	r2, [r3, r1]
     e5a:	46c0      	nop			; (mov r8, r8)
     e5c:	46bd      	mov	sp, r7
     e5e:	b002      	add	sp, #8
     e60:	bd80      	pop	{r7, pc}
     e62:	46c0      	nop			; (mov r8, r8)
     e64:	e000e100 	.word	0xe000e100

00000e68 <NVIC_DisableIRQ>:
     e68:	b580      	push	{r7, lr}
     e6a:	b082      	sub	sp, #8
     e6c:	af00      	add	r7, sp, #0
     e6e:	0002      	movs	r2, r0
     e70:	1dfb      	adds	r3, r7, #7
     e72:	701a      	strb	r2, [r3, #0]
     e74:	4909      	ldr	r1, [pc, #36]	; (e9c <NVIC_DisableIRQ+0x34>)
     e76:	1dfb      	adds	r3, r7, #7
     e78:	781b      	ldrb	r3, [r3, #0]
     e7a:	b25b      	sxtb	r3, r3
     e7c:	095b      	lsrs	r3, r3, #5
     e7e:	1dfa      	adds	r2, r7, #7
     e80:	7812      	ldrb	r2, [r2, #0]
     e82:	0010      	movs	r0, r2
     e84:	221f      	movs	r2, #31
     e86:	4002      	ands	r2, r0
     e88:	2001      	movs	r0, #1
     e8a:	4090      	lsls	r0, r2
     e8c:	0002      	movs	r2, r0
     e8e:	3320      	adds	r3, #32
     e90:	009b      	lsls	r3, r3, #2
     e92:	505a      	str	r2, [r3, r1]
     e94:	46c0      	nop			; (mov r8, r8)
     e96:	46bd      	mov	sp, r7
     e98:	b002      	add	sp, #8
     e9a:	bd80      	pop	{r7, pc}
     e9c:	e000e100 	.word	0xe000e100

00000ea0 <uart_init>:
     ea0:	b580      	push	{r7, lr}
     ea2:	af00      	add	r7, sp, #0
     ea4:	4b1f      	ldr	r3, [pc, #124]	; (f24 <uart_init+0x84>)
     ea6:	4a1f      	ldr	r2, [pc, #124]	; (f24 <uart_init+0x84>)
     ea8:	69d2      	ldr	r2, [r2, #28]
     eaa:	2140      	movs	r1, #64	; 0x40
     eac:	430a      	orrs	r2, r1
     eae:	61da      	str	r2, [r3, #28]
     eb0:	4b1c      	ldr	r3, [pc, #112]	; (f24 <uart_init+0x84>)
     eb2:	4a1c      	ldr	r2, [pc, #112]	; (f24 <uart_init+0x84>)
     eb4:	6a92      	ldr	r2, [r2, #40]	; 0x28
     eb6:	2180      	movs	r1, #128	; 0x80
     eb8:	0449      	lsls	r1, r1, #17
     eba:	430a      	orrs	r2, r1
     ebc:	629a      	str	r2, [r3, #40]	; 0x28
     ebe:	4b1a      	ldr	r3, [pc, #104]	; (f28 <uart_init+0x88>)
     ec0:	2204      	movs	r2, #4
     ec2:	625a      	str	r2, [r3, #36]	; 0x24
     ec4:	4b18      	ldr	r3, [pc, #96]	; (f28 <uart_init+0x88>)
     ec6:	2233      	movs	r2, #51	; 0x33
     ec8:	629a      	str	r2, [r3, #40]	; 0x28
     eca:	4b17      	ldr	r3, [pc, #92]	; (f28 <uart_init+0x88>)
     ecc:	4a16      	ldr	r2, [pc, #88]	; (f28 <uart_init+0x88>)
     ece:	6b52      	ldr	r2, [r2, #52]	; 0x34
     ed0:	213f      	movs	r1, #63	; 0x3f
     ed2:	438a      	bics	r2, r1
     ed4:	635a      	str	r2, [r3, #52]	; 0x34
     ed6:	4b14      	ldr	r3, [pc, #80]	; (f28 <uart_init+0x88>)
     ed8:	4a13      	ldr	r2, [pc, #76]	; (f28 <uart_init+0x88>)
     eda:	6b52      	ldr	r2, [r2, #52]	; 0x34
     edc:	2112      	movs	r1, #18
     ede:	430a      	orrs	r2, r1
     ee0:	635a      	str	r2, [r3, #52]	; 0x34
     ee2:	4b11      	ldr	r3, [pc, #68]	; (f28 <uart_init+0x88>)
     ee4:	4a10      	ldr	r2, [pc, #64]	; (f28 <uart_init+0x88>)
     ee6:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ee8:	2110      	movs	r1, #16
     eea:	430a      	orrs	r2, r1
     eec:	62da      	str	r2, [r3, #44]	; 0x2c
     eee:	4b0e      	ldr	r3, [pc, #56]	; (f28 <uart_init+0x88>)
     ef0:	4a0d      	ldr	r2, [pc, #52]	; (f28 <uart_init+0x88>)
     ef2:	6ad2      	ldr	r2, [r2, #44]	; 0x2c
     ef4:	2160      	movs	r1, #96	; 0x60
     ef6:	430a      	orrs	r2, r1
     ef8:	62da      	str	r2, [r3, #44]	; 0x2c
     efa:	4b0b      	ldr	r3, [pc, #44]	; (f28 <uart_init+0x88>)
     efc:	4a0a      	ldr	r2, [pc, #40]	; (f28 <uart_init+0x88>)
     efe:	6b12      	ldr	r2, [r2, #48]	; 0x30
     f00:	490a      	ldr	r1, [pc, #40]	; (f2c <uart_init+0x8c>)
     f02:	430a      	orrs	r2, r1
     f04:	631a      	str	r2, [r3, #48]	; 0x30
     f06:	4b08      	ldr	r3, [pc, #32]	; (f28 <uart_init+0x88>)
     f08:	4a07      	ldr	r2, [pc, #28]	; (f28 <uart_init+0x88>)
     f0a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     f0c:	2110      	movs	r1, #16
     f0e:	430a      	orrs	r2, r1
     f10:	639a      	str	r2, [r3, #56]	; 0x38
     f12:	4b05      	ldr	r3, [pc, #20]	; (f28 <uart_init+0x88>)
     f14:	4a04      	ldr	r2, [pc, #16]	; (f28 <uart_init+0x88>)
     f16:	6b92      	ldr	r2, [r2, #56]	; 0x38
     f18:	2140      	movs	r1, #64	; 0x40
     f1a:	430a      	orrs	r2, r1
     f1c:	639a      	str	r2, [r3, #56]	; 0x38
     f1e:	46c0      	nop			; (mov r8, r8)
     f20:	46bd      	mov	sp, r7
     f22:	bd80      	pop	{r7, pc}
     f24:	40020000 	.word	0x40020000
     f28:	40030000 	.word	0x40030000
     f2c:	00000301 	.word	0x00000301

00000f30 <uart_read>:
     f30:	b580      	push	{r7, lr}
     f32:	b084      	sub	sp, #16
     f34:	af00      	add	r7, sp, #0
     f36:	6078      	str	r0, [r7, #4]
     f38:	6039      	str	r1, [r7, #0]
     f3a:	4b18      	ldr	r3, [pc, #96]	; (f9c <uart_read+0x6c>)
     f3c:	681a      	ldr	r2, [r3, #0]
     f3e:	4b18      	ldr	r3, [pc, #96]	; (fa0 <uart_read+0x70>)
     f40:	681b      	ldr	r3, [r3, #0]
     f42:	429a      	cmp	r2, r3
     f44:	d101      	bne.n	f4a <uart_read+0x1a>
     f46:	2300      	movs	r3, #0
     f48:	e023      	b.n	f92 <uart_read+0x62>
     f4a:	2300      	movs	r3, #0
     f4c:	60fb      	str	r3, [r7, #12]
     f4e:	e01b      	b.n	f88 <uart_read+0x58>
     f50:	68fb      	ldr	r3, [r7, #12]
     f52:	687a      	ldr	r2, [r7, #4]
     f54:	18d2      	adds	r2, r2, r3
     f56:	4b11      	ldr	r3, [pc, #68]	; (f9c <uart_read+0x6c>)
     f58:	681b      	ldr	r3, [r3, #0]
     f5a:	4912      	ldr	r1, [pc, #72]	; (fa4 <uart_read+0x74>)
     f5c:	5ccb      	ldrb	r3, [r1, r3]
     f5e:	7013      	strb	r3, [r2, #0]
     f60:	4b0e      	ldr	r3, [pc, #56]	; (f9c <uart_read+0x6c>)
     f62:	681b      	ldr	r3, [r3, #0]
     f64:	3301      	adds	r3, #1
     f66:	05db      	lsls	r3, r3, #23
     f68:	0dda      	lsrs	r2, r3, #23
     f6a:	4b0c      	ldr	r3, [pc, #48]	; (f9c <uart_read+0x6c>)
     f6c:	601a      	str	r2, [r3, #0]
     f6e:	4b0b      	ldr	r3, [pc, #44]	; (f9c <uart_read+0x6c>)
     f70:	681a      	ldr	r2, [r3, #0]
     f72:	4b0b      	ldr	r3, [pc, #44]	; (fa0 <uart_read+0x70>)
     f74:	681b      	ldr	r3, [r3, #0]
     f76:	429a      	cmp	r2, r3
     f78:	d103      	bne.n	f82 <uart_read+0x52>
     f7a:	68fb      	ldr	r3, [r7, #12]
     f7c:	3301      	adds	r3, #1
     f7e:	60fb      	str	r3, [r7, #12]
     f80:	e006      	b.n	f90 <uart_read+0x60>
     f82:	68fb      	ldr	r3, [r7, #12]
     f84:	3301      	adds	r3, #1
     f86:	60fb      	str	r3, [r7, #12]
     f88:	68fa      	ldr	r2, [r7, #12]
     f8a:	683b      	ldr	r3, [r7, #0]
     f8c:	429a      	cmp	r2, r3
     f8e:	dbdf      	blt.n	f50 <uart_read+0x20>
     f90:	68fb      	ldr	r3, [r7, #12]
     f92:	0018      	movs	r0, r3
     f94:	46bd      	mov	sp, r7
     f96:	b004      	add	sp, #16
     f98:	bd80      	pop	{r7, pc}
     f9a:	46c0      	nop			; (mov r8, r8)
     f9c:	2000050c 	.word	0x2000050c
     fa0:	20000508 	.word	0x20000508
     fa4:	20000308 	.word	0x20000308

00000fa8 <uart_send>:
     fa8:	b580      	push	{r7, lr}
     faa:	b084      	sub	sp, #16
     fac:	af00      	add	r7, sp, #0
     fae:	6078      	str	r0, [r7, #4]
     fb0:	6039      	str	r1, [r7, #0]
     fb2:	2006      	movs	r0, #6
     fb4:	f7ff ff58 	bl	e68 <NVIC_DisableIRQ>
     fb8:	2300      	movs	r3, #0
     fba:	60fb      	str	r3, [r7, #12]
     fbc:	e01b      	b.n	ff6 <uart_send+0x4e>
     fbe:	4b20      	ldr	r3, [pc, #128]	; (1040 <uart_send+0x98>)
     fc0:	681b      	ldr	r3, [r3, #0]
     fc2:	68fa      	ldr	r2, [r7, #12]
     fc4:	6879      	ldr	r1, [r7, #4]
     fc6:	188a      	adds	r2, r1, r2
     fc8:	7811      	ldrb	r1, [r2, #0]
     fca:	4a1e      	ldr	r2, [pc, #120]	; (1044 <uart_send+0x9c>)
     fcc:	54d1      	strb	r1, [r2, r3]
     fce:	4b1c      	ldr	r3, [pc, #112]	; (1040 <uart_send+0x98>)
     fd0:	681b      	ldr	r3, [r3, #0]
     fd2:	3301      	adds	r3, #1
     fd4:	05db      	lsls	r3, r3, #23
     fd6:	0dda      	lsrs	r2, r3, #23
     fd8:	4b19      	ldr	r3, [pc, #100]	; (1040 <uart_send+0x98>)
     fda:	601a      	str	r2, [r3, #0]
     fdc:	4b18      	ldr	r3, [pc, #96]	; (1040 <uart_send+0x98>)
     fde:	681a      	ldr	r2, [r3, #0]
     fe0:	4b19      	ldr	r3, [pc, #100]	; (1048 <uart_send+0xa0>)
     fe2:	681b      	ldr	r3, [r3, #0]
     fe4:	429a      	cmp	r2, r3
     fe6:	d103      	bne.n	ff0 <uart_send+0x48>
     fe8:	68fb      	ldr	r3, [r7, #12]
     fea:	3301      	adds	r3, #1
     fec:	60fb      	str	r3, [r7, #12]
     fee:	e006      	b.n	ffe <uart_send+0x56>
     ff0:	68fb      	ldr	r3, [r7, #12]
     ff2:	3301      	adds	r3, #1
     ff4:	60fb      	str	r3, [r7, #12]
     ff6:	68fa      	ldr	r2, [r7, #12]
     ff8:	683b      	ldr	r3, [r7, #0]
     ffa:	429a      	cmp	r2, r3
     ffc:	dbdf      	blt.n	fbe <uart_send+0x16>
     ffe:	4b13      	ldr	r3, [pc, #76]	; (104c <uart_send+0xa4>)
    1000:	699b      	ldr	r3, [r3, #24]
    1002:	2208      	movs	r2, #8
    1004:	4013      	ands	r3, r2
    1006:	d10c      	bne.n	1022 <uart_send+0x7a>
    1008:	4a10      	ldr	r2, [pc, #64]	; (104c <uart_send+0xa4>)
    100a:	4b0f      	ldr	r3, [pc, #60]	; (1048 <uart_send+0xa0>)
    100c:	681b      	ldr	r3, [r3, #0]
    100e:	490d      	ldr	r1, [pc, #52]	; (1044 <uart_send+0x9c>)
    1010:	5ccb      	ldrb	r3, [r1, r3]
    1012:	6013      	str	r3, [r2, #0]
    1014:	4b0c      	ldr	r3, [pc, #48]	; (1048 <uart_send+0xa0>)
    1016:	681b      	ldr	r3, [r3, #0]
    1018:	3301      	adds	r3, #1
    101a:	05db      	lsls	r3, r3, #23
    101c:	0dda      	lsrs	r2, r3, #23
    101e:	4b0a      	ldr	r3, [pc, #40]	; (1048 <uart_send+0xa0>)
    1020:	601a      	str	r2, [r3, #0]
    1022:	4b0a      	ldr	r3, [pc, #40]	; (104c <uart_send+0xa4>)
    1024:	4a09      	ldr	r2, [pc, #36]	; (104c <uart_send+0xa4>)
    1026:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1028:	2120      	movs	r1, #32
    102a:	430a      	orrs	r2, r1
    102c:	639a      	str	r2, [r3, #56]	; 0x38
    102e:	2006      	movs	r0, #6
    1030:	f7ff fefe 	bl	e30 <NVIC_EnableIRQ>
    1034:	68fb      	ldr	r3, [r7, #12]
    1036:	0018      	movs	r0, r3
    1038:	46bd      	mov	sp, r7
    103a:	b004      	add	sp, #16
    103c:	bd80      	pop	{r7, pc}
    103e:	46c0      	nop			; (mov r8, r8)
    1040:	20000304 	.word	0x20000304
    1044:	20000100 	.word	0x20000100
    1048:	20000300 	.word	0x20000300
    104c:	40030000 	.word	0x40030000

00001050 <uart_putch>:
    1050:	b580      	push	{r7, lr}
    1052:	b082      	sub	sp, #8
    1054:	af00      	add	r7, sp, #0
    1056:	0002      	movs	r2, r0
    1058:	1dfb      	adds	r3, r7, #7
    105a:	701a      	strb	r2, [r3, #0]
    105c:	46c0      	nop			; (mov r8, r8)
    105e:	4b06      	ldr	r3, [pc, #24]	; (1078 <uart_putch+0x28>)
    1060:	699b      	ldr	r3, [r3, #24]
    1062:	2220      	movs	r2, #32
    1064:	4013      	ands	r3, r2
    1066:	d1fa      	bne.n	105e <uart_putch+0xe>
    1068:	4b03      	ldr	r3, [pc, #12]	; (1078 <uart_putch+0x28>)
    106a:	1dfa      	adds	r2, r7, #7
    106c:	7812      	ldrb	r2, [r2, #0]
    106e:	601a      	str	r2, [r3, #0]
    1070:	46c0      	nop			; (mov r8, r8)
    1072:	46bd      	mov	sp, r7
    1074:	b002      	add	sp, #8
    1076:	bd80      	pop	{r7, pc}
    1078:	40030000 	.word	0x40030000

0000107c <UART1_Handler>:
    107c:	b580      	push	{r7, lr}
    107e:	af00      	add	r7, sp, #0
    1080:	4b1a      	ldr	r3, [pc, #104]	; (10ec <UART1_Handler+0x70>)
    1082:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    1084:	2220      	movs	r2, #32
    1086:	4013      	ands	r3, r2
    1088:	d019      	beq.n	10be <UART1_Handler+0x42>
    108a:	4b19      	ldr	r3, [pc, #100]	; (10f0 <UART1_Handler+0x74>)
    108c:	681a      	ldr	r2, [r3, #0]
    108e:	4b19      	ldr	r3, [pc, #100]	; (10f4 <UART1_Handler+0x78>)
    1090:	681b      	ldr	r3, [r3, #0]
    1092:	429a      	cmp	r2, r3
    1094:	d106      	bne.n	10a4 <UART1_Handler+0x28>
    1096:	4b15      	ldr	r3, [pc, #84]	; (10ec <UART1_Handler+0x70>)
    1098:	4a14      	ldr	r2, [pc, #80]	; (10ec <UART1_Handler+0x70>)
    109a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    109c:	2120      	movs	r1, #32
    109e:	438a      	bics	r2, r1
    10a0:	639a      	str	r2, [r3, #56]	; 0x38
    10a2:	e00c      	b.n	10be <UART1_Handler+0x42>
    10a4:	4a11      	ldr	r2, [pc, #68]	; (10ec <UART1_Handler+0x70>)
    10a6:	4b12      	ldr	r3, [pc, #72]	; (10f0 <UART1_Handler+0x74>)
    10a8:	681b      	ldr	r3, [r3, #0]
    10aa:	4913      	ldr	r1, [pc, #76]	; (10f8 <UART1_Handler+0x7c>)
    10ac:	5ccb      	ldrb	r3, [r1, r3]
    10ae:	6013      	str	r3, [r2, #0]
    10b0:	4b0f      	ldr	r3, [pc, #60]	; (10f0 <UART1_Handler+0x74>)
    10b2:	681b      	ldr	r3, [r3, #0]
    10b4:	3301      	adds	r3, #1
    10b6:	05db      	lsls	r3, r3, #23
    10b8:	0dda      	lsrs	r2, r3, #23
    10ba:	4b0d      	ldr	r3, [pc, #52]	; (10f0 <UART1_Handler+0x74>)
    10bc:	601a      	str	r2, [r3, #0]
    10be:	4b0b      	ldr	r3, [pc, #44]	; (10ec <UART1_Handler+0x70>)
    10c0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
    10c2:	2210      	movs	r2, #16
    10c4:	4013      	ands	r3, r2
    10c6:	d00d      	beq.n	10e4 <UART1_Handler+0x68>
    10c8:	4b0c      	ldr	r3, [pc, #48]	; (10fc <UART1_Handler+0x80>)
    10ca:	681a      	ldr	r2, [r3, #0]
    10cc:	4b07      	ldr	r3, [pc, #28]	; (10ec <UART1_Handler+0x70>)
    10ce:	681b      	ldr	r3, [r3, #0]
    10d0:	b2d9      	uxtb	r1, r3
    10d2:	4b0b      	ldr	r3, [pc, #44]	; (1100 <UART1_Handler+0x84>)
    10d4:	5499      	strb	r1, [r3, r2]
    10d6:	4b09      	ldr	r3, [pc, #36]	; (10fc <UART1_Handler+0x80>)
    10d8:	681b      	ldr	r3, [r3, #0]
    10da:	3301      	adds	r3, #1
    10dc:	05db      	lsls	r3, r3, #23
    10de:	0dda      	lsrs	r2, r3, #23
    10e0:	4b06      	ldr	r3, [pc, #24]	; (10fc <UART1_Handler+0x80>)
    10e2:	601a      	str	r2, [r3, #0]
    10e4:	46c0      	nop			; (mov r8, r8)
    10e6:	46bd      	mov	sp, r7
    10e8:	bd80      	pop	{r7, pc}
    10ea:	46c0      	nop			; (mov r8, r8)
    10ec:	40030000 	.word	0x40030000
    10f0:	20000300 	.word	0x20000300
    10f4:	20000304 	.word	0x20000304
    10f8:	20000100 	.word	0x20000100
    10fc:	20000508 	.word	0x20000508
    1100:	20000308 	.word	0x20000308

00001104 <xputc>:
    1104:	b580      	push	{r7, lr}
    1106:	b082      	sub	sp, #8
    1108:	af00      	add	r7, sp, #0
    110a:	0002      	movs	r2, r0
    110c:	1dfb      	adds	r3, r7, #7
    110e:	701a      	strb	r2, [r3, #0]
    1110:	1dfb      	adds	r3, r7, #7
    1112:	781b      	ldrb	r3, [r3, #0]
    1114:	2b0a      	cmp	r3, #10
    1116:	d102      	bne.n	111e <xputc+0x1a>
    1118:	200d      	movs	r0, #13
    111a:	f7ff fff3 	bl	1104 <xputc>
    111e:	4b0d      	ldr	r3, [pc, #52]	; (1154 <xputc+0x50>)
    1120:	681b      	ldr	r3, [r3, #0]
    1122:	2b00      	cmp	r3, #0
    1124:	d008      	beq.n	1138 <xputc+0x34>
    1126:	4b0b      	ldr	r3, [pc, #44]	; (1154 <xputc+0x50>)
    1128:	681b      	ldr	r3, [r3, #0]
    112a:	1c59      	adds	r1, r3, #1
    112c:	4a09      	ldr	r2, [pc, #36]	; (1154 <xputc+0x50>)
    112e:	6011      	str	r1, [r2, #0]
    1130:	1dfa      	adds	r2, r7, #7
    1132:	7812      	ldrb	r2, [r2, #0]
    1134:	701a      	strb	r2, [r3, #0]
    1136:	e009      	b.n	114c <xputc+0x48>
    1138:	4b07      	ldr	r3, [pc, #28]	; (1158 <xputc+0x54>)
    113a:	681b      	ldr	r3, [r3, #0]
    113c:	2b00      	cmp	r3, #0
    113e:	d005      	beq.n	114c <xputc+0x48>
    1140:	4b05      	ldr	r3, [pc, #20]	; (1158 <xputc+0x54>)
    1142:	681b      	ldr	r3, [r3, #0]
    1144:	1dfa      	adds	r2, r7, #7
    1146:	7812      	ldrb	r2, [r2, #0]
    1148:	0010      	movs	r0, r2
    114a:	4798      	blx	r3
    114c:	46bd      	mov	sp, r7
    114e:	b002      	add	sp, #8
    1150:	bd80      	pop	{r7, pc}
    1152:	46c0      	nop			; (mov r8, r8)
    1154:	20000514 	.word	0x20000514
    1158:	20000510 	.word	0x20000510

0000115c <xputs>:
    115c:	b580      	push	{r7, lr}
    115e:	b082      	sub	sp, #8
    1160:	af00      	add	r7, sp, #0
    1162:	6078      	str	r0, [r7, #4]
    1164:	e006      	b.n	1174 <xputs+0x18>
    1166:	687b      	ldr	r3, [r7, #4]
    1168:	1c5a      	adds	r2, r3, #1
    116a:	607a      	str	r2, [r7, #4]
    116c:	781b      	ldrb	r3, [r3, #0]
    116e:	0018      	movs	r0, r3
    1170:	f7ff ffc8 	bl	1104 <xputc>
    1174:	687b      	ldr	r3, [r7, #4]
    1176:	781b      	ldrb	r3, [r3, #0]
    1178:	2b00      	cmp	r3, #0
    117a:	d1f4      	bne.n	1166 <xputs+0xa>
    117c:	46c0      	nop			; (mov r8, r8)
    117e:	46bd      	mov	sp, r7
    1180:	b002      	add	sp, #8
    1182:	bd80      	pop	{r7, pc}

00001184 <xfputs>:
    1184:	b580      	push	{r7, lr}
    1186:	b084      	sub	sp, #16
    1188:	af00      	add	r7, sp, #0
    118a:	6078      	str	r0, [r7, #4]
    118c:	6039      	str	r1, [r7, #0]
    118e:	4b0c      	ldr	r3, [pc, #48]	; (11c0 <xfputs+0x3c>)
    1190:	681b      	ldr	r3, [r3, #0]
    1192:	60fb      	str	r3, [r7, #12]
    1194:	4b0a      	ldr	r3, [pc, #40]	; (11c0 <xfputs+0x3c>)
    1196:	687a      	ldr	r2, [r7, #4]
    1198:	601a      	str	r2, [r3, #0]
    119a:	e006      	b.n	11aa <xfputs+0x26>
    119c:	683b      	ldr	r3, [r7, #0]
    119e:	1c5a      	adds	r2, r3, #1
    11a0:	603a      	str	r2, [r7, #0]
    11a2:	781b      	ldrb	r3, [r3, #0]
    11a4:	0018      	movs	r0, r3
    11a6:	f7ff ffad 	bl	1104 <xputc>
    11aa:	683b      	ldr	r3, [r7, #0]
    11ac:	781b      	ldrb	r3, [r3, #0]
    11ae:	2b00      	cmp	r3, #0
    11b0:	d1f4      	bne.n	119c <xfputs+0x18>
    11b2:	4b03      	ldr	r3, [pc, #12]	; (11c0 <xfputs+0x3c>)
    11b4:	68fa      	ldr	r2, [r7, #12]
    11b6:	601a      	str	r2, [r3, #0]
    11b8:	46c0      	nop			; (mov r8, r8)
    11ba:	46bd      	mov	sp, r7
    11bc:	b004      	add	sp, #16
    11be:	bd80      	pop	{r7, pc}
    11c0:	20000510 	.word	0x20000510

000011c4 <xvprintf>:
    11c4:	b580      	push	{r7, lr}
    11c6:	b08e      	sub	sp, #56	; 0x38
    11c8:	af00      	add	r7, sp, #0
    11ca:	6078      	str	r0, [r7, #4]
    11cc:	6039      	str	r1, [r7, #0]
    11ce:	687b      	ldr	r3, [r7, #4]
    11d0:	1c5a      	adds	r2, r3, #1
    11d2:	607a      	str	r2, [r7, #4]
    11d4:	221f      	movs	r2, #31
    11d6:	18ba      	adds	r2, r7, r2
    11d8:	781b      	ldrb	r3, [r3, #0]
    11da:	7013      	strb	r3, [r2, #0]
    11dc:	231f      	movs	r3, #31
    11de:	18fb      	adds	r3, r7, r3
    11e0:	781b      	ldrb	r3, [r3, #0]
    11e2:	2b00      	cmp	r3, #0
    11e4:	d100      	bne.n	11e8 <xvprintf+0x24>
    11e6:	e172      	b.n	14ce <xvprintf+0x30a>
    11e8:	231f      	movs	r3, #31
    11ea:	18fb      	adds	r3, r7, r3
    11ec:	781b      	ldrb	r3, [r3, #0]
    11ee:	2b25      	cmp	r3, #37	; 0x25
    11f0:	d006      	beq.n	1200 <xvprintf+0x3c>
    11f2:	231f      	movs	r3, #31
    11f4:	18fb      	adds	r3, r7, r3
    11f6:	781b      	ldrb	r3, [r3, #0]
    11f8:	0018      	movs	r0, r3
    11fa:	f7ff ff83 	bl	1104 <xputc>
    11fe:	e165      	b.n	14cc <xvprintf+0x308>
    1200:	2300      	movs	r3, #0
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
    1218:	2b30      	cmp	r3, #48	; 0x30
    121a:	d109      	bne.n	1230 <xvprintf+0x6c>
    121c:	2301      	movs	r3, #1
    121e:	627b      	str	r3, [r7, #36]	; 0x24
    1220:	687b      	ldr	r3, [r7, #4]
    1222:	1c5a      	adds	r2, r3, #1
    1224:	607a      	str	r2, [r7, #4]
    1226:	221f      	movs	r2, #31
    1228:	18ba      	adds	r2, r7, r2
    122a:	781b      	ldrb	r3, [r3, #0]
    122c:	7013      	strb	r3, [r2, #0]
    122e:	e00d      	b.n	124c <xvprintf+0x88>
    1230:	231f      	movs	r3, #31
    1232:	18fb      	adds	r3, r7, r3
    1234:	781b      	ldrb	r3, [r3, #0]
    1236:	2b2d      	cmp	r3, #45	; 0x2d
    1238:	d108      	bne.n	124c <xvprintf+0x88>
    123a:	2302      	movs	r3, #2
    123c:	627b      	str	r3, [r7, #36]	; 0x24
    123e:	687b      	ldr	r3, [r7, #4]
    1240:	1c5a      	adds	r2, r3, #1
    1242:	607a      	str	r2, [r7, #4]
    1244:	221f      	movs	r2, #31
    1246:	18ba      	adds	r2, r7, r2
    1248:	781b      	ldrb	r3, [r3, #0]
    124a:	7013      	strb	r3, [r2, #0]
    124c:	2300      	movs	r3, #0
    124e:	62bb      	str	r3, [r7, #40]	; 0x28
    1250:	e012      	b.n	1278 <xvprintf+0xb4>
    1252:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1254:	0013      	movs	r3, r2
    1256:	009b      	lsls	r3, r3, #2
    1258:	189b      	adds	r3, r3, r2
    125a:	005b      	lsls	r3, r3, #1
    125c:	001a      	movs	r2, r3
    125e:	231f      	movs	r3, #31
    1260:	18fb      	adds	r3, r7, r3
    1262:	781b      	ldrb	r3, [r3, #0]
    1264:	18d3      	adds	r3, r2, r3
    1266:	3b30      	subs	r3, #48	; 0x30
    1268:	62bb      	str	r3, [r7, #40]	; 0x28
    126a:	687b      	ldr	r3, [r7, #4]
    126c:	1c5a      	adds	r2, r3, #1
    126e:	607a      	str	r2, [r7, #4]
    1270:	221f      	movs	r2, #31
    1272:	18ba      	adds	r2, r7, r2
    1274:	781b      	ldrb	r3, [r3, #0]
    1276:	7013      	strb	r3, [r2, #0]
    1278:	231f      	movs	r3, #31
    127a:	18fb      	adds	r3, r7, r3
    127c:	781b      	ldrb	r3, [r3, #0]
    127e:	2b2f      	cmp	r3, #47	; 0x2f
    1280:	d904      	bls.n	128c <xvprintf+0xc8>
    1282:	231f      	movs	r3, #31
    1284:	18fb      	adds	r3, r7, r3
    1286:	781b      	ldrb	r3, [r3, #0]
    1288:	2b39      	cmp	r3, #57	; 0x39
    128a:	d9e2      	bls.n	1252 <xvprintf+0x8e>
    128c:	231f      	movs	r3, #31
    128e:	18fb      	adds	r3, r7, r3
    1290:	781b      	ldrb	r3, [r3, #0]
    1292:	2b6c      	cmp	r3, #108	; 0x6c
    1294:	d004      	beq.n	12a0 <xvprintf+0xdc>
    1296:	231f      	movs	r3, #31
    1298:	18fb      	adds	r3, r7, r3
    129a:	781b      	ldrb	r3, [r3, #0]
    129c:	2b4c      	cmp	r3, #76	; 0x4c
    129e:	d10a      	bne.n	12b6 <xvprintf+0xf2>
    12a0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    12a2:	2204      	movs	r2, #4
    12a4:	4313      	orrs	r3, r2
    12a6:	627b      	str	r3, [r7, #36]	; 0x24
    12a8:	687b      	ldr	r3, [r7, #4]
    12aa:	1c5a      	adds	r2, r3, #1
    12ac:	607a      	str	r2, [r7, #4]
    12ae:	221f      	movs	r2, #31
    12b0:	18ba      	adds	r2, r7, r2
    12b2:	781b      	ldrb	r3, [r3, #0]
    12b4:	7013      	strb	r3, [r2, #0]
    12b6:	231f      	movs	r3, #31
    12b8:	18fb      	adds	r3, r7, r3
    12ba:	781b      	ldrb	r3, [r3, #0]
    12bc:	2b00      	cmp	r3, #0
    12be:	d100      	bne.n	12c2 <xvprintf+0xfe>
    12c0:	e107      	b.n	14d2 <xvprintf+0x30e>
    12c2:	231e      	movs	r3, #30
    12c4:	18fb      	adds	r3, r7, r3
    12c6:	221f      	movs	r2, #31
    12c8:	18ba      	adds	r2, r7, r2
    12ca:	7812      	ldrb	r2, [r2, #0]
    12cc:	701a      	strb	r2, [r3, #0]
    12ce:	231e      	movs	r3, #30
    12d0:	18fb      	adds	r3, r7, r3
    12d2:	781b      	ldrb	r3, [r3, #0]
    12d4:	2b60      	cmp	r3, #96	; 0x60
    12d6:	d906      	bls.n	12e6 <xvprintf+0x122>
    12d8:	231e      	movs	r3, #30
    12da:	18fb      	adds	r3, r7, r3
    12dc:	221e      	movs	r2, #30
    12de:	18ba      	adds	r2, r7, r2
    12e0:	7812      	ldrb	r2, [r2, #0]
    12e2:	3a20      	subs	r2, #32
    12e4:	701a      	strb	r2, [r3, #0]
    12e6:	231e      	movs	r3, #30
    12e8:	18fb      	adds	r3, r7, r3
    12ea:	781b      	ldrb	r3, [r3, #0]
    12ec:	3b42      	subs	r3, #66	; 0x42
    12ee:	2b16      	cmp	r3, #22
    12f0:	d847      	bhi.n	1382 <xvprintf+0x1be>
    12f2:	009a      	lsls	r2, r3, #2
    12f4:	4b79      	ldr	r3, [pc, #484]	; (14dc <xvprintf+0x318>)
    12f6:	18d3      	adds	r3, r2, r3
    12f8:	681b      	ldr	r3, [r3, #0]
    12fa:	469f      	mov	pc, r3
    12fc:	683b      	ldr	r3, [r7, #0]
    12fe:	1d1a      	adds	r2, r3, #4
    1300:	603a      	str	r2, [r7, #0]
    1302:	681b      	ldr	r3, [r3, #0]
    1304:	61bb      	str	r3, [r7, #24]
    1306:	2300      	movs	r3, #0
    1308:	62fb      	str	r3, [r7, #44]	; 0x2c
    130a:	e002      	b.n	1312 <xvprintf+0x14e>
    130c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    130e:	3301      	adds	r3, #1
    1310:	62fb      	str	r3, [r7, #44]	; 0x2c
    1312:	69ba      	ldr	r2, [r7, #24]
    1314:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1316:	18d3      	adds	r3, r2, r3
    1318:	781b      	ldrb	r3, [r3, #0]
    131a:	2b00      	cmp	r3, #0
    131c:	d1f6      	bne.n	130c <xvprintf+0x148>
    131e:	e002      	b.n	1326 <xvprintf+0x162>
    1320:	2020      	movs	r0, #32
    1322:	f7ff feef 	bl	1104 <xputc>
    1326:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1328:	2202      	movs	r2, #2
    132a:	4013      	ands	r3, r2
    132c:	d105      	bne.n	133a <xvprintf+0x176>
    132e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1330:	1c5a      	adds	r2, r3, #1
    1332:	62fa      	str	r2, [r7, #44]	; 0x2c
    1334:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1336:	4293      	cmp	r3, r2
    1338:	d3f2      	bcc.n	1320 <xvprintf+0x15c>
    133a:	69bb      	ldr	r3, [r7, #24]
    133c:	0018      	movs	r0, r3
    133e:	f7ff ff0d 	bl	115c <xputs>
    1342:	e002      	b.n	134a <xvprintf+0x186>
    1344:	2020      	movs	r0, #32
    1346:	f7ff fedd 	bl	1104 <xputc>
    134a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    134c:	1c5a      	adds	r2, r3, #1
    134e:	62fa      	str	r2, [r7, #44]	; 0x2c
    1350:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1352:	4293      	cmp	r3, r2
    1354:	d3f6      	bcc.n	1344 <xvprintf+0x180>
    1356:	e0b9      	b.n	14cc <xvprintf+0x308>
    1358:	683b      	ldr	r3, [r7, #0]
    135a:	1d1a      	adds	r2, r3, #4
    135c:	603a      	str	r2, [r7, #0]
    135e:	681b      	ldr	r3, [r3, #0]
    1360:	b2db      	uxtb	r3, r3
    1362:	0018      	movs	r0, r3
    1364:	f7ff fece 	bl	1104 <xputc>
    1368:	e0b0      	b.n	14cc <xvprintf+0x308>
    136a:	2302      	movs	r3, #2
    136c:	637b      	str	r3, [r7, #52]	; 0x34
    136e:	e00f      	b.n	1390 <xvprintf+0x1cc>
    1370:	2308      	movs	r3, #8
    1372:	637b      	str	r3, [r7, #52]	; 0x34
    1374:	e00c      	b.n	1390 <xvprintf+0x1cc>
    1376:	230a      	movs	r3, #10
    1378:	637b      	str	r3, [r7, #52]	; 0x34
    137a:	e009      	b.n	1390 <xvprintf+0x1cc>
    137c:	2310      	movs	r3, #16
    137e:	637b      	str	r3, [r7, #52]	; 0x34
    1380:	e006      	b.n	1390 <xvprintf+0x1cc>
    1382:	231f      	movs	r3, #31
    1384:	18fb      	adds	r3, r7, r3
    1386:	781b      	ldrb	r3, [r3, #0]
    1388:	0018      	movs	r0, r3
    138a:	f7ff febb 	bl	1104 <xputc>
    138e:	e09d      	b.n	14cc <xvprintf+0x308>
    1390:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1392:	2204      	movs	r2, #4
    1394:	4013      	ands	r3, r2
    1396:	d004      	beq.n	13a2 <xvprintf+0x1de>
    1398:	683b      	ldr	r3, [r7, #0]
    139a:	1d1a      	adds	r2, r3, #4
    139c:	603a      	str	r2, [r7, #0]
    139e:	681b      	ldr	r3, [r3, #0]
    13a0:	e00d      	b.n	13be <xvprintf+0x1fa>
    13a2:	231e      	movs	r3, #30
    13a4:	18fb      	adds	r3, r7, r3
    13a6:	781b      	ldrb	r3, [r3, #0]
    13a8:	2b44      	cmp	r3, #68	; 0x44
    13aa:	d104      	bne.n	13b6 <xvprintf+0x1f2>
    13ac:	683b      	ldr	r3, [r7, #0]
    13ae:	1d1a      	adds	r2, r3, #4
    13b0:	603a      	str	r2, [r7, #0]
    13b2:	681b      	ldr	r3, [r3, #0]
    13b4:	e003      	b.n	13be <xvprintf+0x1fa>
    13b6:	683b      	ldr	r3, [r7, #0]
    13b8:	1d1a      	adds	r2, r3, #4
    13ba:	603a      	str	r2, [r7, #0]
    13bc:	681b      	ldr	r3, [r3, #0]
    13be:	623b      	str	r3, [r7, #32]
    13c0:	231e      	movs	r3, #30
    13c2:	18fb      	adds	r3, r7, r3
    13c4:	781b      	ldrb	r3, [r3, #0]
    13c6:	2b44      	cmp	r3, #68	; 0x44
    13c8:	d109      	bne.n	13de <xvprintf+0x21a>
    13ca:	6a3b      	ldr	r3, [r7, #32]
    13cc:	2b00      	cmp	r3, #0
    13ce:	da06      	bge.n	13de <xvprintf+0x21a>
    13d0:	6a3b      	ldr	r3, [r7, #32]
    13d2:	425b      	negs	r3, r3
    13d4:	623b      	str	r3, [r7, #32]
    13d6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    13d8:	2208      	movs	r2, #8
    13da:	4313      	orrs	r3, r2
    13dc:	627b      	str	r3, [r7, #36]	; 0x24
    13de:	2300      	movs	r3, #0
    13e0:	633b      	str	r3, [r7, #48]	; 0x30
    13e2:	6a3b      	ldr	r3, [r7, #32]
    13e4:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13e6:	0018      	movs	r0, r3
    13e8:	f000 fbd6 	bl	1b98 <__aeabi_uidivmod>
    13ec:	000b      	movs	r3, r1
    13ee:	001a      	movs	r2, r3
    13f0:	231e      	movs	r3, #30
    13f2:	18fb      	adds	r3, r7, r3
    13f4:	701a      	strb	r2, [r3, #0]
    13f6:	6b79      	ldr	r1, [r7, #52]	; 0x34
    13f8:	6a38      	ldr	r0, [r7, #32]
    13fa:	f000 fb47 	bl	1a8c <__aeabi_uidiv>
    13fe:	0003      	movs	r3, r0
    1400:	623b      	str	r3, [r7, #32]
    1402:	231e      	movs	r3, #30
    1404:	18fb      	adds	r3, r7, r3
    1406:	781b      	ldrb	r3, [r3, #0]
    1408:	2b09      	cmp	r3, #9
    140a:	d90e      	bls.n	142a <xvprintf+0x266>
    140c:	231f      	movs	r3, #31
    140e:	18fb      	adds	r3, r7, r3
    1410:	781b      	ldrb	r3, [r3, #0]
    1412:	2b78      	cmp	r3, #120	; 0x78
    1414:	d101      	bne.n	141a <xvprintf+0x256>
    1416:	2327      	movs	r3, #39	; 0x27
    1418:	e000      	b.n	141c <xvprintf+0x258>
    141a:	2307      	movs	r3, #7
    141c:	221e      	movs	r2, #30
    141e:	18ba      	adds	r2, r7, r2
    1420:	211e      	movs	r1, #30
    1422:	1879      	adds	r1, r7, r1
    1424:	7809      	ldrb	r1, [r1, #0]
    1426:	185b      	adds	r3, r3, r1
    1428:	7013      	strb	r3, [r2, #0]
    142a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    142c:	1c5a      	adds	r2, r3, #1
    142e:	633a      	str	r2, [r7, #48]	; 0x30
    1430:	221e      	movs	r2, #30
    1432:	18ba      	adds	r2, r7, r2
    1434:	7812      	ldrb	r2, [r2, #0]
    1436:	3230      	adds	r2, #48	; 0x30
    1438:	b2d1      	uxtb	r1, r2
    143a:	2208      	movs	r2, #8
    143c:	18ba      	adds	r2, r7, r2
    143e:	54d1      	strb	r1, [r2, r3]
    1440:	6a3b      	ldr	r3, [r7, #32]
    1442:	2b00      	cmp	r3, #0
    1444:	d002      	beq.n	144c <xvprintf+0x288>
    1446:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1448:	2b0f      	cmp	r3, #15
    144a:	d9ca      	bls.n	13e2 <xvprintf+0x21e>
    144c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    144e:	2208      	movs	r2, #8
    1450:	4013      	ands	r3, r2
    1452:	d006      	beq.n	1462 <xvprintf+0x29e>
    1454:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1456:	1c5a      	adds	r2, r3, #1
    1458:	633a      	str	r2, [r7, #48]	; 0x30
    145a:	2208      	movs	r2, #8
    145c:	18ba      	adds	r2, r7, r2
    145e:	212d      	movs	r1, #45	; 0x2d
    1460:	54d1      	strb	r1, [r2, r3]
    1462:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    1464:	62fb      	str	r3, [r7, #44]	; 0x2c
    1466:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    1468:	2201      	movs	r2, #1
    146a:	4013      	ands	r3, r2
    146c:	d001      	beq.n	1472 <xvprintf+0x2ae>
    146e:	2230      	movs	r2, #48	; 0x30
    1470:	e000      	b.n	1474 <xvprintf+0x2b0>
    1472:	2220      	movs	r2, #32
    1474:	231e      	movs	r3, #30
    1476:	18fb      	adds	r3, r7, r3
    1478:	701a      	strb	r2, [r3, #0]
    147a:	e005      	b.n	1488 <xvprintf+0x2c4>
    147c:	231e      	movs	r3, #30
    147e:	18fb      	adds	r3, r7, r3
    1480:	781b      	ldrb	r3, [r3, #0]
    1482:	0018      	movs	r0, r3
    1484:	f7ff fe3e 	bl	1104 <xputc>
    1488:	6a7b      	ldr	r3, [r7, #36]	; 0x24
    148a:	2202      	movs	r2, #2
    148c:	4013      	ands	r3, r2
    148e:	d105      	bne.n	149c <xvprintf+0x2d8>
    1490:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    1492:	1c5a      	adds	r2, r3, #1
    1494:	62fa      	str	r2, [r7, #44]	; 0x2c
    1496:	6aba      	ldr	r2, [r7, #40]	; 0x28
    1498:	4293      	cmp	r3, r2
    149a:	d3ef      	bcc.n	147c <xvprintf+0x2b8>
    149c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    149e:	3b01      	subs	r3, #1
    14a0:	633b      	str	r3, [r7, #48]	; 0x30
    14a2:	2308      	movs	r3, #8
    14a4:	18fa      	adds	r2, r7, r3
    14a6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14a8:	18d3      	adds	r3, r2, r3
    14aa:	781b      	ldrb	r3, [r3, #0]
    14ac:	0018      	movs	r0, r3
    14ae:	f7ff fe29 	bl	1104 <xputc>
    14b2:	6b3b      	ldr	r3, [r7, #48]	; 0x30
    14b4:	2b00      	cmp	r3, #0
    14b6:	d1f1      	bne.n	149c <xvprintf+0x2d8>
    14b8:	e002      	b.n	14c0 <xvprintf+0x2fc>
    14ba:	2020      	movs	r0, #32
    14bc:	f7ff fe22 	bl	1104 <xputc>
    14c0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
    14c2:	1c5a      	adds	r2, r3, #1
    14c4:	62fa      	str	r2, [r7, #44]	; 0x2c
    14c6:	6aba      	ldr	r2, [r7, #40]	; 0x28
    14c8:	4293      	cmp	r3, r2
    14ca:	d3f6      	bcc.n	14ba <xvprintf+0x2f6>
    14cc:	e67f      	b.n	11ce <xvprintf+0xa>
    14ce:	46c0      	nop			; (mov r8, r8)
    14d0:	e000      	b.n	14d4 <xvprintf+0x310>
    14d2:	46c0      	nop			; (mov r8, r8)
    14d4:	46c0      	nop			; (mov r8, r8)
    14d6:	46bd      	mov	sp, r7
    14d8:	b00e      	add	sp, #56	; 0x38
    14da:	bd80      	pop	{r7, pc}
    14dc:	00001bb4 	.word	0x00001bb4

000014e0 <xprintf>:
    14e0:	b40f      	push	{r0, r1, r2, r3}
    14e2:	b580      	push	{r7, lr}
    14e4:	b082      	sub	sp, #8
    14e6:	af00      	add	r7, sp, #0
    14e8:	2314      	movs	r3, #20
    14ea:	18fb      	adds	r3, r7, r3
    14ec:	607b      	str	r3, [r7, #4]
    14ee:	687a      	ldr	r2, [r7, #4]
    14f0:	693b      	ldr	r3, [r7, #16]
    14f2:	0011      	movs	r1, r2
    14f4:	0018      	movs	r0, r3
    14f6:	f7ff fe65 	bl	11c4 <xvprintf>
    14fa:	46c0      	nop			; (mov r8, r8)
    14fc:	46bd      	mov	sp, r7
    14fe:	b002      	add	sp, #8
    1500:	bc80      	pop	{r7}
    1502:	bc08      	pop	{r3}
    1504:	b004      	add	sp, #16
    1506:	4718      	bx	r3

00001508 <xsprintf>:
    1508:	b40e      	push	{r1, r2, r3}
    150a:	b580      	push	{r7, lr}
    150c:	b085      	sub	sp, #20
    150e:	af00      	add	r7, sp, #0
    1510:	6078      	str	r0, [r7, #4]
    1512:	4b0d      	ldr	r3, [pc, #52]	; (1548 <xsprintf+0x40>)
    1514:	687a      	ldr	r2, [r7, #4]
    1516:	601a      	str	r2, [r3, #0]
    1518:	2320      	movs	r3, #32
    151a:	18fb      	adds	r3, r7, r3
    151c:	60fb      	str	r3, [r7, #12]
    151e:	68fa      	ldr	r2, [r7, #12]
    1520:	69fb      	ldr	r3, [r7, #28]
    1522:	0011      	movs	r1, r2
    1524:	0018      	movs	r0, r3
    1526:	f7ff fe4d 	bl	11c4 <xvprintf>
    152a:	4b07      	ldr	r3, [pc, #28]	; (1548 <xsprintf+0x40>)
    152c:	681b      	ldr	r3, [r3, #0]
    152e:	2200      	movs	r2, #0
    1530:	701a      	strb	r2, [r3, #0]
    1532:	4b05      	ldr	r3, [pc, #20]	; (1548 <xsprintf+0x40>)
    1534:	2200      	movs	r2, #0
    1536:	601a      	str	r2, [r3, #0]
    1538:	46c0      	nop			; (mov r8, r8)
    153a:	46bd      	mov	sp, r7
    153c:	b005      	add	sp, #20
    153e:	bc80      	pop	{r7}
    1540:	bc08      	pop	{r3}
    1542:	b003      	add	sp, #12
    1544:	4718      	bx	r3
    1546:	46c0      	nop			; (mov r8, r8)
    1548:	20000514 	.word	0x20000514

0000154c <xfprintf>:
    154c:	b40e      	push	{r1, r2, r3}
    154e:	b580      	push	{r7, lr}
    1550:	b085      	sub	sp, #20
    1552:	af00      	add	r7, sp, #0
    1554:	6078      	str	r0, [r7, #4]
    1556:	4b0c      	ldr	r3, [pc, #48]	; (1588 <xfprintf+0x3c>)
    1558:	681b      	ldr	r3, [r3, #0]
    155a:	60fb      	str	r3, [r7, #12]
    155c:	4b0a      	ldr	r3, [pc, #40]	; (1588 <xfprintf+0x3c>)
    155e:	687a      	ldr	r2, [r7, #4]
    1560:	601a      	str	r2, [r3, #0]
    1562:	2320      	movs	r3, #32
    1564:	18fb      	adds	r3, r7, r3
    1566:	60bb      	str	r3, [r7, #8]
    1568:	68ba      	ldr	r2, [r7, #8]
    156a:	69fb      	ldr	r3, [r7, #28]
    156c:	0011      	movs	r1, r2
    156e:	0018      	movs	r0, r3
    1570:	f7ff fe28 	bl	11c4 <xvprintf>
    1574:	4b04      	ldr	r3, [pc, #16]	; (1588 <xfprintf+0x3c>)
    1576:	68fa      	ldr	r2, [r7, #12]
    1578:	601a      	str	r2, [r3, #0]
    157a:	46c0      	nop			; (mov r8, r8)
    157c:	46bd      	mov	sp, r7
    157e:	b005      	add	sp, #20
    1580:	bc80      	pop	{r7}
    1582:	bc08      	pop	{r3}
    1584:	b003      	add	sp, #12
    1586:	4718      	bx	r3
    1588:	20000510 	.word	0x20000510

0000158c <put_dump>:
    158c:	b580      	push	{r7, lr}
    158e:	b088      	sub	sp, #32
    1590:	af00      	add	r7, sp, #0
    1592:	60f8      	str	r0, [r7, #12]
    1594:	60b9      	str	r1, [r7, #8]
    1596:	607a      	str	r2, [r7, #4]
    1598:	603b      	str	r3, [r7, #0]
    159a:	68ba      	ldr	r2, [r7, #8]
    159c:	4b38      	ldr	r3, [pc, #224]	; (1680 <put_dump+0xf4>)
    159e:	0011      	movs	r1, r2
    15a0:	0018      	movs	r0, r3
    15a2:	f7ff ff9d 	bl	14e0 <xprintf>
    15a6:	683b      	ldr	r3, [r7, #0]
    15a8:	2b02      	cmp	r3, #2
    15aa:	d03c      	beq.n	1626 <put_dump+0x9a>
    15ac:	2b04      	cmp	r3, #4
    15ae:	d04d      	beq.n	164c <put_dump+0xc0>
    15b0:	2b01      	cmp	r3, #1
    15b2:	d15d      	bne.n	1670 <put_dump+0xe4>
    15b4:	68fb      	ldr	r3, [r7, #12]
    15b6:	613b      	str	r3, [r7, #16]
    15b8:	2300      	movs	r3, #0
    15ba:	61fb      	str	r3, [r7, #28]
    15bc:	e00c      	b.n	15d8 <put_dump+0x4c>
    15be:	69fb      	ldr	r3, [r7, #28]
    15c0:	693a      	ldr	r2, [r7, #16]
    15c2:	18d3      	adds	r3, r2, r3
    15c4:	781b      	ldrb	r3, [r3, #0]
    15c6:	001a      	movs	r2, r3
    15c8:	4b2e      	ldr	r3, [pc, #184]	; (1684 <put_dump+0xf8>)
    15ca:	0011      	movs	r1, r2
    15cc:	0018      	movs	r0, r3
    15ce:	f7ff ff87 	bl	14e0 <xprintf>
    15d2:	69fb      	ldr	r3, [r7, #28]
    15d4:	3301      	adds	r3, #1
    15d6:	61fb      	str	r3, [r7, #28]
    15d8:	69fa      	ldr	r2, [r7, #28]
    15da:	687b      	ldr	r3, [r7, #4]
    15dc:	429a      	cmp	r2, r3
    15de:	dbee      	blt.n	15be <put_dump+0x32>
    15e0:	2020      	movs	r0, #32
    15e2:	f7ff fd8f 	bl	1104 <xputc>
    15e6:	2300      	movs	r3, #0
    15e8:	61fb      	str	r3, [r7, #28]
    15ea:	e017      	b.n	161c <put_dump+0x90>
    15ec:	69fb      	ldr	r3, [r7, #28]
    15ee:	693a      	ldr	r2, [r7, #16]
    15f0:	18d3      	adds	r3, r2, r3
    15f2:	781b      	ldrb	r3, [r3, #0]
    15f4:	2b1f      	cmp	r3, #31
    15f6:	d90a      	bls.n	160e <put_dump+0x82>
    15f8:	69fb      	ldr	r3, [r7, #28]
    15fa:	693a      	ldr	r2, [r7, #16]
    15fc:	18d3      	adds	r3, r2, r3
    15fe:	781b      	ldrb	r3, [r3, #0]
    1600:	2b7e      	cmp	r3, #126	; 0x7e
    1602:	d804      	bhi.n	160e <put_dump+0x82>
    1604:	69fb      	ldr	r3, [r7, #28]
    1606:	693a      	ldr	r2, [r7, #16]
    1608:	18d3      	adds	r3, r2, r3
    160a:	781b      	ldrb	r3, [r3, #0]
    160c:	e000      	b.n	1610 <put_dump+0x84>
    160e:	232e      	movs	r3, #46	; 0x2e
    1610:	0018      	movs	r0, r3
    1612:	f7ff fd77 	bl	1104 <xputc>
    1616:	69fb      	ldr	r3, [r7, #28]
    1618:	3301      	adds	r3, #1
    161a:	61fb      	str	r3, [r7, #28]
    161c:	69fa      	ldr	r2, [r7, #28]
    161e:	687b      	ldr	r3, [r7, #4]
    1620:	429a      	cmp	r2, r3
    1622:	dbe3      	blt.n	15ec <put_dump+0x60>
    1624:	e024      	b.n	1670 <put_dump+0xe4>
    1626:	68fb      	ldr	r3, [r7, #12]
    1628:	61bb      	str	r3, [r7, #24]
    162a:	69bb      	ldr	r3, [r7, #24]
    162c:	1c9a      	adds	r2, r3, #2
    162e:	61ba      	str	r2, [r7, #24]
    1630:	881b      	ldrh	r3, [r3, #0]
    1632:	001a      	movs	r2, r3
    1634:	4b14      	ldr	r3, [pc, #80]	; (1688 <put_dump+0xfc>)
    1636:	0011      	movs	r1, r2
    1638:	0018      	movs	r0, r3
    163a:	f7ff ff51 	bl	14e0 <xprintf>
    163e:	687b      	ldr	r3, [r7, #4]
    1640:	3b01      	subs	r3, #1
    1642:	607b      	str	r3, [r7, #4]
    1644:	687b      	ldr	r3, [r7, #4]
    1646:	2b00      	cmp	r3, #0
    1648:	d1ef      	bne.n	162a <put_dump+0x9e>
    164a:	e011      	b.n	1670 <put_dump+0xe4>
    164c:	68fb      	ldr	r3, [r7, #12]
    164e:	617b      	str	r3, [r7, #20]
    1650:	697b      	ldr	r3, [r7, #20]
    1652:	1d1a      	adds	r2, r3, #4
    1654:	617a      	str	r2, [r7, #20]
    1656:	681a      	ldr	r2, [r3, #0]
    1658:	4b0c      	ldr	r3, [pc, #48]	; (168c <put_dump+0x100>)
    165a:	0011      	movs	r1, r2
    165c:	0018      	movs	r0, r3
    165e:	f7ff ff3f 	bl	14e0 <xprintf>
    1662:	687b      	ldr	r3, [r7, #4]
    1664:	3b01      	subs	r3, #1
    1666:	607b      	str	r3, [r7, #4]
    1668:	687b      	ldr	r3, [r7, #4]
    166a:	2b00      	cmp	r3, #0
    166c:	d1f0      	bne.n	1650 <put_dump+0xc4>
    166e:	46c0      	nop			; (mov r8, r8)
    1670:	200a      	movs	r0, #10
    1672:	f7ff fd47 	bl	1104 <xputc>
    1676:	46c0      	nop			; (mov r8, r8)
    1678:	46bd      	mov	sp, r7
    167a:	b008      	add	sp, #32
    167c:	bd80      	pop	{r7, pc}
    167e:	46c0      	nop			; (mov r8, r8)
    1680:	00001c10 	.word	0x00001c10
    1684:	00001c18 	.word	0x00001c18
    1688:	00001c20 	.word	0x00001c20
    168c:	00001c28 	.word	0x00001c28

00001690 <xgets>:
    1690:	b580      	push	{r7, lr}
    1692:	b084      	sub	sp, #16
    1694:	af00      	add	r7, sp, #0
    1696:	6078      	str	r0, [r7, #4]
    1698:	6039      	str	r1, [r7, #0]
    169a:	4b24      	ldr	r3, [pc, #144]	; (172c <xgets+0x9c>)
    169c:	681b      	ldr	r3, [r3, #0]
    169e:	2b00      	cmp	r3, #0
    16a0:	d101      	bne.n	16a6 <xgets+0x16>
    16a2:	2300      	movs	r3, #0
    16a4:	e03e      	b.n	1724 <xgets+0x94>
    16a6:	2300      	movs	r3, #0
    16a8:	60fb      	str	r3, [r7, #12]
    16aa:	4b20      	ldr	r3, [pc, #128]	; (172c <xgets+0x9c>)
    16ac:	681b      	ldr	r3, [r3, #0]
    16ae:	4798      	blx	r3
    16b0:	0003      	movs	r3, r0
    16b2:	60bb      	str	r3, [r7, #8]
    16b4:	68bb      	ldr	r3, [r7, #8]
    16b6:	2b00      	cmp	r3, #0
    16b8:	d101      	bne.n	16be <xgets+0x2e>
    16ba:	2300      	movs	r3, #0
    16bc:	e032      	b.n	1724 <xgets+0x94>
    16be:	68bb      	ldr	r3, [r7, #8]
    16c0:	2b0d      	cmp	r3, #13
    16c2:	d025      	beq.n	1710 <xgets+0x80>
    16c4:	68bb      	ldr	r3, [r7, #8]
    16c6:	2b08      	cmp	r3, #8
    16c8:	d10b      	bne.n	16e2 <xgets+0x52>
    16ca:	68fb      	ldr	r3, [r7, #12]
    16cc:	2b00      	cmp	r3, #0
    16ce:	d008      	beq.n	16e2 <xgets+0x52>
    16d0:	68fb      	ldr	r3, [r7, #12]
    16d2:	3b01      	subs	r3, #1
    16d4:	60fb      	str	r3, [r7, #12]
    16d6:	68bb      	ldr	r3, [r7, #8]
    16d8:	b2db      	uxtb	r3, r3
    16da:	0018      	movs	r0, r3
    16dc:	f7ff fd12 	bl	1104 <xputc>
    16e0:	e015      	b.n	170e <xgets+0x7e>
    16e2:	68bb      	ldr	r3, [r7, #8]
    16e4:	2b1f      	cmp	r3, #31
    16e6:	dde0      	ble.n	16aa <xgets+0x1a>
    16e8:	683b      	ldr	r3, [r7, #0]
    16ea:	1e5a      	subs	r2, r3, #1
    16ec:	68fb      	ldr	r3, [r7, #12]
    16ee:	429a      	cmp	r2, r3
    16f0:	dddb      	ble.n	16aa <xgets+0x1a>
    16f2:	68fb      	ldr	r3, [r7, #12]
    16f4:	1c5a      	adds	r2, r3, #1
    16f6:	60fa      	str	r2, [r7, #12]
    16f8:	001a      	movs	r2, r3
    16fa:	687b      	ldr	r3, [r7, #4]
    16fc:	189b      	adds	r3, r3, r2
    16fe:	68ba      	ldr	r2, [r7, #8]
    1700:	b2d2      	uxtb	r2, r2
    1702:	701a      	strb	r2, [r3, #0]
    1704:	68bb      	ldr	r3, [r7, #8]
    1706:	b2db      	uxtb	r3, r3
    1708:	0018      	movs	r0, r3
    170a:	f7ff fcfb 	bl	1104 <xputc>
    170e:	e7cc      	b.n	16aa <xgets+0x1a>
    1710:	46c0      	nop			; (mov r8, r8)
    1712:	68fb      	ldr	r3, [r7, #12]
    1714:	687a      	ldr	r2, [r7, #4]
    1716:	18d3      	adds	r3, r2, r3
    1718:	2200      	movs	r2, #0
    171a:	701a      	strb	r2, [r3, #0]
    171c:	200a      	movs	r0, #10
    171e:	f7ff fcf1 	bl	1104 <xputc>
    1722:	2301      	movs	r3, #1
    1724:	0018      	movs	r0, r3
    1726:	46bd      	mov	sp, r7
    1728:	b004      	add	sp, #16
    172a:	bd80      	pop	{r7, pc}
    172c:	20000518 	.word	0x20000518

00001730 <xfgets>:
    1730:	b580      	push	{r7, lr}
    1732:	b086      	sub	sp, #24
    1734:	af00      	add	r7, sp, #0
    1736:	60f8      	str	r0, [r7, #12]
    1738:	60b9      	str	r1, [r7, #8]
    173a:	607a      	str	r2, [r7, #4]
    173c:	4b0a      	ldr	r3, [pc, #40]	; (1768 <xfgets+0x38>)
    173e:	681b      	ldr	r3, [r3, #0]
    1740:	617b      	str	r3, [r7, #20]
    1742:	4b09      	ldr	r3, [pc, #36]	; (1768 <xfgets+0x38>)
    1744:	68fa      	ldr	r2, [r7, #12]
    1746:	601a      	str	r2, [r3, #0]
    1748:	687a      	ldr	r2, [r7, #4]
    174a:	68bb      	ldr	r3, [r7, #8]
    174c:	0011      	movs	r1, r2
    174e:	0018      	movs	r0, r3
    1750:	f7ff ff9e 	bl	1690 <xgets>
    1754:	0003      	movs	r3, r0
    1756:	613b      	str	r3, [r7, #16]
    1758:	4b03      	ldr	r3, [pc, #12]	; (1768 <xfgets+0x38>)
    175a:	697a      	ldr	r2, [r7, #20]
    175c:	601a      	str	r2, [r3, #0]
    175e:	693b      	ldr	r3, [r7, #16]
    1760:	0018      	movs	r0, r3
    1762:	46bd      	mov	sp, r7
    1764:	b006      	add	sp, #24
    1766:	bd80      	pop	{r7, pc}
    1768:	20000518 	.word	0x20000518

0000176c <xatoi>:
    176c:	b580      	push	{r7, lr}
    176e:	b084      	sub	sp, #16
    1770:	af00      	add	r7, sp, #0
    1772:	6078      	str	r0, [r7, #4]
    1774:	6039      	str	r1, [r7, #0]
    1776:	2309      	movs	r3, #9
    1778:	18fb      	adds	r3, r7, r3
    177a:	2200      	movs	r2, #0
    177c:	701a      	strb	r2, [r3, #0]
    177e:	683b      	ldr	r3, [r7, #0]
    1780:	2200      	movs	r2, #0
    1782:	601a      	str	r2, [r3, #0]
    1784:	e004      	b.n	1790 <xatoi+0x24>
    1786:	687b      	ldr	r3, [r7, #4]
    1788:	681b      	ldr	r3, [r3, #0]
    178a:	1c5a      	adds	r2, r3, #1
    178c:	687b      	ldr	r3, [r7, #4]
    178e:	601a      	str	r2, [r3, #0]
    1790:	687b      	ldr	r3, [r7, #4]
    1792:	681a      	ldr	r2, [r3, #0]
    1794:	230b      	movs	r3, #11
    1796:	18fb      	adds	r3, r7, r3
    1798:	7812      	ldrb	r2, [r2, #0]
    179a:	701a      	strb	r2, [r3, #0]
    179c:	230b      	movs	r3, #11
    179e:	18fb      	adds	r3, r7, r3
    17a0:	781b      	ldrb	r3, [r3, #0]
    17a2:	2b20      	cmp	r3, #32
    17a4:	d0ef      	beq.n	1786 <xatoi+0x1a>
    17a6:	230b      	movs	r3, #11
    17a8:	18fb      	adds	r3, r7, r3
    17aa:	781b      	ldrb	r3, [r3, #0]
    17ac:	2b2d      	cmp	r3, #45	; 0x2d
    17ae:	d10e      	bne.n	17ce <xatoi+0x62>
    17b0:	2309      	movs	r3, #9
    17b2:	18fb      	adds	r3, r7, r3
    17b4:	2201      	movs	r2, #1
    17b6:	701a      	strb	r2, [r3, #0]
    17b8:	687b      	ldr	r3, [r7, #4]
    17ba:	681b      	ldr	r3, [r3, #0]
    17bc:	1c5a      	adds	r2, r3, #1
    17be:	687b      	ldr	r3, [r7, #4]
    17c0:	601a      	str	r2, [r3, #0]
    17c2:	687b      	ldr	r3, [r7, #4]
    17c4:	681a      	ldr	r2, [r3, #0]
    17c6:	230b      	movs	r3, #11
    17c8:	18fb      	adds	r3, r7, r3
    17ca:	7812      	ldrb	r2, [r2, #0]
    17cc:	701a      	strb	r2, [r3, #0]
    17ce:	230b      	movs	r3, #11
    17d0:	18fb      	adds	r3, r7, r3
    17d2:	781b      	ldrb	r3, [r3, #0]
    17d4:	2b30      	cmp	r3, #48	; 0x30
    17d6:	d149      	bne.n	186c <xatoi+0x100>
    17d8:	687b      	ldr	r3, [r7, #4]
    17da:	681b      	ldr	r3, [r3, #0]
    17dc:	1c5a      	adds	r2, r3, #1
    17de:	687b      	ldr	r3, [r7, #4]
    17e0:	601a      	str	r2, [r3, #0]
    17e2:	687b      	ldr	r3, [r7, #4]
    17e4:	681a      	ldr	r2, [r3, #0]
    17e6:	230b      	movs	r3, #11
    17e8:	18fb      	adds	r3, r7, r3
    17ea:	7812      	ldrb	r2, [r2, #0]
    17ec:	701a      	strb	r2, [r3, #0]
    17ee:	230b      	movs	r3, #11
    17f0:	18fb      	adds	r3, r7, r3
    17f2:	781b      	ldrb	r3, [r3, #0]
    17f4:	2b62      	cmp	r3, #98	; 0x62
    17f6:	d011      	beq.n	181c <xatoi+0xb0>
    17f8:	2b78      	cmp	r3, #120	; 0x78
    17fa:	d11f      	bne.n	183c <xatoi+0xd0>
    17fc:	230a      	movs	r3, #10
    17fe:	18fb      	adds	r3, r7, r3
    1800:	2210      	movs	r2, #16
    1802:	701a      	strb	r2, [r3, #0]
    1804:	687b      	ldr	r3, [r7, #4]
    1806:	681b      	ldr	r3, [r3, #0]
    1808:	1c5a      	adds	r2, r3, #1
    180a:	687b      	ldr	r3, [r7, #4]
    180c:	601a      	str	r2, [r3, #0]
    180e:	687b      	ldr	r3, [r7, #4]
    1810:	681a      	ldr	r2, [r3, #0]
    1812:	230b      	movs	r3, #11
    1814:	18fb      	adds	r3, r7, r3
    1816:	7812      	ldrb	r2, [r2, #0]
    1818:	701a      	strb	r2, [r3, #0]
    181a:	e037      	b.n	188c <xatoi+0x120>
    181c:	230a      	movs	r3, #10
    181e:	18fb      	adds	r3, r7, r3
    1820:	2202      	movs	r2, #2
    1822:	701a      	strb	r2, [r3, #0]
    1824:	687b      	ldr	r3, [r7, #4]
    1826:	681b      	ldr	r3, [r3, #0]
    1828:	1c5a      	adds	r2, r3, #1
    182a:	687b      	ldr	r3, [r7, #4]
    182c:	601a      	str	r2, [r3, #0]
    182e:	687b      	ldr	r3, [r7, #4]
    1830:	681a      	ldr	r2, [r3, #0]
    1832:	230b      	movs	r3, #11
    1834:	18fb      	adds	r3, r7, r3
    1836:	7812      	ldrb	r2, [r2, #0]
    1838:	701a      	strb	r2, [r3, #0]
    183a:	e027      	b.n	188c <xatoi+0x120>
    183c:	230b      	movs	r3, #11
    183e:	18fb      	adds	r3, r7, r3
    1840:	781b      	ldrb	r3, [r3, #0]
    1842:	2b20      	cmp	r3, #32
    1844:	d801      	bhi.n	184a <xatoi+0xde>
    1846:	2301      	movs	r3, #1
    1848:	e079      	b.n	193e <xatoi+0x1d2>
    184a:	230b      	movs	r3, #11
    184c:	18fb      	adds	r3, r7, r3
    184e:	781b      	ldrb	r3, [r3, #0]
    1850:	2b2f      	cmp	r3, #47	; 0x2f
    1852:	d904      	bls.n	185e <xatoi+0xf2>
    1854:	230b      	movs	r3, #11
    1856:	18fb      	adds	r3, r7, r3
    1858:	781b      	ldrb	r3, [r3, #0]
    185a:	2b39      	cmp	r3, #57	; 0x39
    185c:	d901      	bls.n	1862 <xatoi+0xf6>
    185e:	2300      	movs	r3, #0
    1860:	e06d      	b.n	193e <xatoi+0x1d2>
    1862:	230a      	movs	r3, #10
    1864:	18fb      	adds	r3, r7, r3
    1866:	2208      	movs	r2, #8
    1868:	701a      	strb	r2, [r3, #0]
    186a:	e00f      	b.n	188c <xatoi+0x120>
    186c:	230b      	movs	r3, #11
    186e:	18fb      	adds	r3, r7, r3
    1870:	781b      	ldrb	r3, [r3, #0]
    1872:	2b2f      	cmp	r3, #47	; 0x2f
    1874:	d904      	bls.n	1880 <xatoi+0x114>
    1876:	230b      	movs	r3, #11
    1878:	18fb      	adds	r3, r7, r3
    187a:	781b      	ldrb	r3, [r3, #0]
    187c:	2b39      	cmp	r3, #57	; 0x39
    187e:	d901      	bls.n	1884 <xatoi+0x118>
    1880:	2300      	movs	r3, #0
    1882:	e05c      	b.n	193e <xatoi+0x1d2>
    1884:	230a      	movs	r3, #10
    1886:	18fb      	adds	r3, r7, r3
    1888:	220a      	movs	r2, #10
    188a:	701a      	strb	r2, [r3, #0]
    188c:	2300      	movs	r3, #0
    188e:	60fb      	str	r3, [r7, #12]
    1890:	e044      	b.n	191c <xatoi+0x1b0>
    1892:	230b      	movs	r3, #11
    1894:	18fb      	adds	r3, r7, r3
    1896:	781b      	ldrb	r3, [r3, #0]
    1898:	2b60      	cmp	r3, #96	; 0x60
    189a:	d906      	bls.n	18aa <xatoi+0x13e>
    189c:	230b      	movs	r3, #11
    189e:	18fb      	adds	r3, r7, r3
    18a0:	220b      	movs	r2, #11
    18a2:	18ba      	adds	r2, r7, r2
    18a4:	7812      	ldrb	r2, [r2, #0]
    18a6:	3a20      	subs	r2, #32
    18a8:	701a      	strb	r2, [r3, #0]
    18aa:	230b      	movs	r3, #11
    18ac:	18fb      	adds	r3, r7, r3
    18ae:	220b      	movs	r2, #11
    18b0:	18ba      	adds	r2, r7, r2
    18b2:	7812      	ldrb	r2, [r2, #0]
    18b4:	3a30      	subs	r2, #48	; 0x30
    18b6:	701a      	strb	r2, [r3, #0]
    18b8:	230b      	movs	r3, #11
    18ba:	18fb      	adds	r3, r7, r3
    18bc:	781b      	ldrb	r3, [r3, #0]
    18be:	2b10      	cmp	r3, #16
    18c0:	d90d      	bls.n	18de <xatoi+0x172>
    18c2:	230b      	movs	r3, #11
    18c4:	18fb      	adds	r3, r7, r3
    18c6:	220b      	movs	r2, #11
    18c8:	18ba      	adds	r2, r7, r2
    18ca:	7812      	ldrb	r2, [r2, #0]
    18cc:	3a07      	subs	r2, #7
    18ce:	701a      	strb	r2, [r3, #0]
    18d0:	230b      	movs	r3, #11
    18d2:	18fb      	adds	r3, r7, r3
    18d4:	781b      	ldrb	r3, [r3, #0]
    18d6:	2b09      	cmp	r3, #9
    18d8:	d801      	bhi.n	18de <xatoi+0x172>
    18da:	2300      	movs	r3, #0
    18dc:	e02f      	b.n	193e <xatoi+0x1d2>
    18de:	230b      	movs	r3, #11
    18e0:	18fa      	adds	r2, r7, r3
    18e2:	230a      	movs	r3, #10
    18e4:	18fb      	adds	r3, r7, r3
    18e6:	7812      	ldrb	r2, [r2, #0]
    18e8:	781b      	ldrb	r3, [r3, #0]
    18ea:	429a      	cmp	r2, r3
    18ec:	d301      	bcc.n	18f2 <xatoi+0x186>
    18ee:	2300      	movs	r3, #0
    18f0:	e025      	b.n	193e <xatoi+0x1d2>
    18f2:	230a      	movs	r3, #10
    18f4:	18fb      	adds	r3, r7, r3
    18f6:	781b      	ldrb	r3, [r3, #0]
    18f8:	68fa      	ldr	r2, [r7, #12]
    18fa:	435a      	muls	r2, r3
    18fc:	230b      	movs	r3, #11
    18fe:	18fb      	adds	r3, r7, r3
    1900:	781b      	ldrb	r3, [r3, #0]
    1902:	18d3      	adds	r3, r2, r3
    1904:	60fb      	str	r3, [r7, #12]
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
    1924:	d8b5      	bhi.n	1892 <xatoi+0x126>
    1926:	2309      	movs	r3, #9
    1928:	18fb      	adds	r3, r7, r3
    192a:	781b      	ldrb	r3, [r3, #0]
    192c:	2b00      	cmp	r3, #0
    192e:	d002      	beq.n	1936 <xatoi+0x1ca>
    1930:	68fb      	ldr	r3, [r7, #12]
    1932:	425b      	negs	r3, r3
    1934:	60fb      	str	r3, [r7, #12]
    1936:	68fa      	ldr	r2, [r7, #12]
    1938:	683b      	ldr	r3, [r7, #0]
    193a:	601a      	str	r2, [r3, #0]
    193c:	2301      	movs	r3, #1
    193e:	0018      	movs	r0, r3
    1940:	46bd      	mov	sp, r7
    1942:	b004      	add	sp, #16
    1944:	bd80      	pop	{r7, pc}
    1946:	46c0      	nop			; (mov r8, r8)

00001948 <mil_cpy>:
    1948:	8802      	ldrh	r2, [r0, #0]
    194a:	4b30      	ldr	r3, [pc, #192]	; (1a0c <mil_cpy+0xc4>)
    194c:	601a      	str	r2, [r3, #0]
    194e:	8842      	ldrh	r2, [r0, #2]
    1950:	4b2f      	ldr	r3, [pc, #188]	; (1a10 <mil_cpy+0xc8>)
    1952:	601a      	str	r2, [r3, #0]
    1954:	8882      	ldrh	r2, [r0, #4]
    1956:	4b2f      	ldr	r3, [pc, #188]	; (1a14 <mil_cpy+0xcc>)
    1958:	601a      	str	r2, [r3, #0]
    195a:	88c2      	ldrh	r2, [r0, #6]
    195c:	4b2e      	ldr	r3, [pc, #184]	; (1a18 <mil_cpy+0xd0>)
    195e:	601a      	str	r2, [r3, #0]
    1960:	8902      	ldrh	r2, [r0, #8]
    1962:	4b2e      	ldr	r3, [pc, #184]	; (1a1c <mil_cpy+0xd4>)
    1964:	601a      	str	r2, [r3, #0]
    1966:	8942      	ldrh	r2, [r0, #10]
    1968:	4b2d      	ldr	r3, [pc, #180]	; (1a20 <mil_cpy+0xd8>)
    196a:	601a      	str	r2, [r3, #0]
    196c:	8982      	ldrh	r2, [r0, #12]
    196e:	4b2d      	ldr	r3, [pc, #180]	; (1a24 <mil_cpy+0xdc>)
    1970:	601a      	str	r2, [r3, #0]
    1972:	89c2      	ldrh	r2, [r0, #14]
    1974:	4b2c      	ldr	r3, [pc, #176]	; (1a28 <mil_cpy+0xe0>)
    1976:	601a      	str	r2, [r3, #0]
    1978:	8a02      	ldrh	r2, [r0, #16]
    197a:	4b2c      	ldr	r3, [pc, #176]	; (1a2c <mil_cpy+0xe4>)
    197c:	601a      	str	r2, [r3, #0]
    197e:	8a42      	ldrh	r2, [r0, #18]
    1980:	4b2b      	ldr	r3, [pc, #172]	; (1a30 <mil_cpy+0xe8>)
    1982:	601a      	str	r2, [r3, #0]
    1984:	8a82      	ldrh	r2, [r0, #20]
    1986:	4b2b      	ldr	r3, [pc, #172]	; (1a34 <mil_cpy+0xec>)
    1988:	601a      	str	r2, [r3, #0]
    198a:	8ac2      	ldrh	r2, [r0, #22]
    198c:	4b2a      	ldr	r3, [pc, #168]	; (1a38 <mil_cpy+0xf0>)
    198e:	601a      	str	r2, [r3, #0]
    1990:	8b02      	ldrh	r2, [r0, #24]
    1992:	4b2a      	ldr	r3, [pc, #168]	; (1a3c <mil_cpy+0xf4>)
    1994:	601a      	str	r2, [r3, #0]
    1996:	8b42      	ldrh	r2, [r0, #26]
    1998:	4b29      	ldr	r3, [pc, #164]	; (1a40 <mil_cpy+0xf8>)
    199a:	601a      	str	r2, [r3, #0]
    199c:	8b82      	ldrh	r2, [r0, #28]
    199e:	4b29      	ldr	r3, [pc, #164]	; (1a44 <mil_cpy+0xfc>)
    19a0:	601a      	str	r2, [r3, #0]
    19a2:	8bc2      	ldrh	r2, [r0, #30]
    19a4:	4b28      	ldr	r3, [pc, #160]	; (1a48 <mil_cpy+0x100>)
    19a6:	601a      	str	r2, [r3, #0]
    19a8:	8c02      	ldrh	r2, [r0, #32]
    19aa:	4b28      	ldr	r3, [pc, #160]	; (1a4c <mil_cpy+0x104>)
    19ac:	601a      	str	r2, [r3, #0]
    19ae:	8c42      	ldrh	r2, [r0, #34]	; 0x22
    19b0:	4b27      	ldr	r3, [pc, #156]	; (1a50 <mil_cpy+0x108>)
    19b2:	601a      	str	r2, [r3, #0]
    19b4:	8c82      	ldrh	r2, [r0, #36]	; 0x24
    19b6:	4b27      	ldr	r3, [pc, #156]	; (1a54 <mil_cpy+0x10c>)
    19b8:	601a      	str	r2, [r3, #0]
    19ba:	8cc2      	ldrh	r2, [r0, #38]	; 0x26
    19bc:	4b26      	ldr	r3, [pc, #152]	; (1a58 <mil_cpy+0x110>)
    19be:	601a      	str	r2, [r3, #0]
    19c0:	8d02      	ldrh	r2, [r0, #40]	; 0x28
    19c2:	4b26      	ldr	r3, [pc, #152]	; (1a5c <mil_cpy+0x114>)
    19c4:	601a      	str	r2, [r3, #0]
    19c6:	8d42      	ldrh	r2, [r0, #42]	; 0x2a
    19c8:	4b25      	ldr	r3, [pc, #148]	; (1a60 <mil_cpy+0x118>)
    19ca:	601a      	str	r2, [r3, #0]
    19cc:	8d82      	ldrh	r2, [r0, #44]	; 0x2c
    19ce:	4b25      	ldr	r3, [pc, #148]	; (1a64 <mil_cpy+0x11c>)
    19d0:	601a      	str	r2, [r3, #0]
    19d2:	8dc2      	ldrh	r2, [r0, #46]	; 0x2e
    19d4:	4b24      	ldr	r3, [pc, #144]	; (1a68 <mil_cpy+0x120>)
    19d6:	601a      	str	r2, [r3, #0]
    19d8:	8e02      	ldrh	r2, [r0, #48]	; 0x30
    19da:	4b24      	ldr	r3, [pc, #144]	; (1a6c <mil_cpy+0x124>)
    19dc:	601a      	str	r2, [r3, #0]
    19de:	8e42      	ldrh	r2, [r0, #50]	; 0x32
    19e0:	4b23      	ldr	r3, [pc, #140]	; (1a70 <mil_cpy+0x128>)
    19e2:	601a      	str	r2, [r3, #0]
    19e4:	8e82      	ldrh	r2, [r0, #52]	; 0x34
    19e6:	4b23      	ldr	r3, [pc, #140]	; (1a74 <mil_cpy+0x12c>)
    19e8:	601a      	str	r2, [r3, #0]
    19ea:	8ec2      	ldrh	r2, [r0, #54]	; 0x36
    19ec:	4b22      	ldr	r3, [pc, #136]	; (1a78 <mil_cpy+0x130>)
    19ee:	601a      	str	r2, [r3, #0]
    19f0:	8f02      	ldrh	r2, [r0, #56]	; 0x38
    19f2:	4b22      	ldr	r3, [pc, #136]	; (1a7c <mil_cpy+0x134>)
    19f4:	601a      	str	r2, [r3, #0]
    19f6:	8f42      	ldrh	r2, [r0, #58]	; 0x3a
    19f8:	4b21      	ldr	r3, [pc, #132]	; (1a80 <mil_cpy+0x138>)
    19fa:	601a      	str	r2, [r3, #0]
    19fc:	8f82      	ldrh	r2, [r0, #60]	; 0x3c
    19fe:	4b21      	ldr	r3, [pc, #132]	; (1a84 <mil_cpy+0x13c>)
    1a00:	601a      	str	r2, [r3, #0]
    1a02:	8fc2      	ldrh	r2, [r0, #62]	; 0x3e
    1a04:	4b20      	ldr	r3, [pc, #128]	; (1a88 <mil_cpy+0x140>)
    1a06:	601a      	str	r2, [r3, #0]
    1a08:	4770      	bx	lr
    1a0a:	46c0      	nop			; (mov r8, r8)
    1a0c:	40048080 	.word	0x40048080
    1a10:	40048084 	.word	0x40048084
    1a14:	40048088 	.word	0x40048088
    1a18:	4004808c 	.word	0x4004808c
    1a1c:	40048090 	.word	0x40048090
    1a20:	40048094 	.word	0x40048094
    1a24:	40048098 	.word	0x40048098
    1a28:	4004809c 	.word	0x4004809c
    1a2c:	400480a0 	.word	0x400480a0
    1a30:	400480a4 	.word	0x400480a4
    1a34:	400480a8 	.word	0x400480a8
    1a38:	400480ac 	.word	0x400480ac
    1a3c:	400480b0 	.word	0x400480b0
    1a40:	400480b4 	.word	0x400480b4
    1a44:	400480b8 	.word	0x400480b8
    1a48:	400480bc 	.word	0x400480bc
    1a4c:	400480c0 	.word	0x400480c0
    1a50:	400480c4 	.word	0x400480c4
    1a54:	400480c8 	.word	0x400480c8
    1a58:	400480cc 	.word	0x400480cc
    1a5c:	400480d0 	.word	0x400480d0
    1a60:	400480d4 	.word	0x400480d4
    1a64:	400480d8 	.word	0x400480d8
    1a68:	400480dc 	.word	0x400480dc
    1a6c:	400480e0 	.word	0x400480e0
    1a70:	400480e4 	.word	0x400480e4
    1a74:	400480e8 	.word	0x400480e8
    1a78:	400480ec 	.word	0x400480ec
    1a7c:	400480f0 	.word	0x400480f0
    1a80:	400480f4 	.word	0x400480f4
    1a84:	400480f8 	.word	0x400480f8
    1a88:	400480fc 	.word	0x400480fc

00001a8c <__aeabi_uidiv>:
    1a8c:	2200      	movs	r2, #0
    1a8e:	0843      	lsrs	r3, r0, #1
    1a90:	428b      	cmp	r3, r1
    1a92:	d374      	bcc.n	1b7e <__aeabi_uidiv+0xf2>
    1a94:	0903      	lsrs	r3, r0, #4
    1a96:	428b      	cmp	r3, r1
    1a98:	d35f      	bcc.n	1b5a <__aeabi_uidiv+0xce>
    1a9a:	0a03      	lsrs	r3, r0, #8
    1a9c:	428b      	cmp	r3, r1
    1a9e:	d344      	bcc.n	1b2a <__aeabi_uidiv+0x9e>
    1aa0:	0b03      	lsrs	r3, r0, #12
    1aa2:	428b      	cmp	r3, r1
    1aa4:	d328      	bcc.n	1af8 <__aeabi_uidiv+0x6c>
    1aa6:	0c03      	lsrs	r3, r0, #16
    1aa8:	428b      	cmp	r3, r1
    1aaa:	d30d      	bcc.n	1ac8 <__aeabi_uidiv+0x3c>
    1aac:	22ff      	movs	r2, #255	; 0xff
    1aae:	0209      	lsls	r1, r1, #8
    1ab0:	ba12      	rev	r2, r2
    1ab2:	0c03      	lsrs	r3, r0, #16
    1ab4:	428b      	cmp	r3, r1
    1ab6:	d302      	bcc.n	1abe <__aeabi_uidiv+0x32>
    1ab8:	1212      	asrs	r2, r2, #8
    1aba:	0209      	lsls	r1, r1, #8
    1abc:	d065      	beq.n	1b8a <__aeabi_uidiv+0xfe>
    1abe:	0b03      	lsrs	r3, r0, #12
    1ac0:	428b      	cmp	r3, r1
    1ac2:	d319      	bcc.n	1af8 <__aeabi_uidiv+0x6c>
    1ac4:	e000      	b.n	1ac8 <__aeabi_uidiv+0x3c>
    1ac6:	0a09      	lsrs	r1, r1, #8
    1ac8:	0bc3      	lsrs	r3, r0, #15
    1aca:	428b      	cmp	r3, r1
    1acc:	d301      	bcc.n	1ad2 <__aeabi_uidiv+0x46>
    1ace:	03cb      	lsls	r3, r1, #15
    1ad0:	1ac0      	subs	r0, r0, r3
    1ad2:	4152      	adcs	r2, r2
    1ad4:	0b83      	lsrs	r3, r0, #14
    1ad6:	428b      	cmp	r3, r1
    1ad8:	d301      	bcc.n	1ade <__aeabi_uidiv+0x52>
    1ada:	038b      	lsls	r3, r1, #14
    1adc:	1ac0      	subs	r0, r0, r3
    1ade:	4152      	adcs	r2, r2
    1ae0:	0b43      	lsrs	r3, r0, #13
    1ae2:	428b      	cmp	r3, r1
    1ae4:	d301      	bcc.n	1aea <__aeabi_uidiv+0x5e>
    1ae6:	034b      	lsls	r3, r1, #13
    1ae8:	1ac0      	subs	r0, r0, r3
    1aea:	4152      	adcs	r2, r2
    1aec:	0b03      	lsrs	r3, r0, #12
    1aee:	428b      	cmp	r3, r1
    1af0:	d301      	bcc.n	1af6 <__aeabi_uidiv+0x6a>
    1af2:	030b      	lsls	r3, r1, #12
    1af4:	1ac0      	subs	r0, r0, r3
    1af6:	4152      	adcs	r2, r2
    1af8:	0ac3      	lsrs	r3, r0, #11
    1afa:	428b      	cmp	r3, r1
    1afc:	d301      	bcc.n	1b02 <__aeabi_uidiv+0x76>
    1afe:	02cb      	lsls	r3, r1, #11
    1b00:	1ac0      	subs	r0, r0, r3
    1b02:	4152      	adcs	r2, r2
    1b04:	0a83      	lsrs	r3, r0, #10
    1b06:	428b      	cmp	r3, r1
    1b08:	d301      	bcc.n	1b0e <__aeabi_uidiv+0x82>
    1b0a:	028b      	lsls	r3, r1, #10
    1b0c:	1ac0      	subs	r0, r0, r3
    1b0e:	4152      	adcs	r2, r2
    1b10:	0a43      	lsrs	r3, r0, #9
    1b12:	428b      	cmp	r3, r1
    1b14:	d301      	bcc.n	1b1a <__aeabi_uidiv+0x8e>
    1b16:	024b      	lsls	r3, r1, #9
    1b18:	1ac0      	subs	r0, r0, r3
    1b1a:	4152      	adcs	r2, r2
    1b1c:	0a03      	lsrs	r3, r0, #8
    1b1e:	428b      	cmp	r3, r1
    1b20:	d301      	bcc.n	1b26 <__aeabi_uidiv+0x9a>
    1b22:	020b      	lsls	r3, r1, #8
    1b24:	1ac0      	subs	r0, r0, r3
    1b26:	4152      	adcs	r2, r2
    1b28:	d2cd      	bcs.n	1ac6 <__aeabi_uidiv+0x3a>
    1b2a:	09c3      	lsrs	r3, r0, #7
    1b2c:	428b      	cmp	r3, r1
    1b2e:	d301      	bcc.n	1b34 <__aeabi_uidiv+0xa8>
    1b30:	01cb      	lsls	r3, r1, #7
    1b32:	1ac0      	subs	r0, r0, r3
    1b34:	4152      	adcs	r2, r2
    1b36:	0983      	lsrs	r3, r0, #6
    1b38:	428b      	cmp	r3, r1
    1b3a:	d301      	bcc.n	1b40 <__aeabi_uidiv+0xb4>
    1b3c:	018b      	lsls	r3, r1, #6
    1b3e:	1ac0      	subs	r0, r0, r3
    1b40:	4152      	adcs	r2, r2
    1b42:	0943      	lsrs	r3, r0, #5
    1b44:	428b      	cmp	r3, r1
    1b46:	d301      	bcc.n	1b4c <__aeabi_uidiv+0xc0>
    1b48:	014b      	lsls	r3, r1, #5
    1b4a:	1ac0      	subs	r0, r0, r3
    1b4c:	4152      	adcs	r2, r2
    1b4e:	0903      	lsrs	r3, r0, #4
    1b50:	428b      	cmp	r3, r1
    1b52:	d301      	bcc.n	1b58 <__aeabi_uidiv+0xcc>
    1b54:	010b      	lsls	r3, r1, #4
    1b56:	1ac0      	subs	r0, r0, r3
    1b58:	4152      	adcs	r2, r2
    1b5a:	08c3      	lsrs	r3, r0, #3
    1b5c:	428b      	cmp	r3, r1
    1b5e:	d301      	bcc.n	1b64 <__aeabi_uidiv+0xd8>
    1b60:	00cb      	lsls	r3, r1, #3
    1b62:	1ac0      	subs	r0, r0, r3
    1b64:	4152      	adcs	r2, r2
    1b66:	0883      	lsrs	r3, r0, #2
    1b68:	428b      	cmp	r3, r1
    1b6a:	d301      	bcc.n	1b70 <__aeabi_uidiv+0xe4>
    1b6c:	008b      	lsls	r3, r1, #2
    1b6e:	1ac0      	subs	r0, r0, r3
    1b70:	4152      	adcs	r2, r2
    1b72:	0843      	lsrs	r3, r0, #1
    1b74:	428b      	cmp	r3, r1
    1b76:	d301      	bcc.n	1b7c <__aeabi_uidiv+0xf0>
    1b78:	004b      	lsls	r3, r1, #1
    1b7a:	1ac0      	subs	r0, r0, r3
    1b7c:	4152      	adcs	r2, r2
    1b7e:	1a41      	subs	r1, r0, r1
    1b80:	d200      	bcs.n	1b84 <__aeabi_uidiv+0xf8>
    1b82:	4601      	mov	r1, r0
    1b84:	4152      	adcs	r2, r2
    1b86:	4610      	mov	r0, r2
    1b88:	4770      	bx	lr
    1b8a:	e7ff      	b.n	1b8c <__aeabi_uidiv+0x100>
    1b8c:	b501      	push	{r0, lr}
    1b8e:	2000      	movs	r0, #0
    1b90:	f000 f806 	bl	1ba0 <__aeabi_idiv0>
    1b94:	bd02      	pop	{r1, pc}
    1b96:	46c0      	nop			; (mov r8, r8)

00001b98 <__aeabi_uidivmod>:
    1b98:	2900      	cmp	r1, #0
    1b9a:	d0f7      	beq.n	1b8c <__aeabi_uidiv+0x100>
    1b9c:	e776      	b.n	1a8c <__aeabi_uidiv>
    1b9e:	4770      	bx	lr

00001ba0 <__aeabi_idiv0>:
    1ba0:	4770      	bx	lr
    1ba2:	46c0      	nop			; (mov r8, r8)
    1ba4:	6c6c6568 	.word	0x6c6c6568
    1ba8:	6f77206f 	.word	0x6f77206f
    1bac:	0d646c72 	.word	0x0d646c72
    1bb0:	0000000a 	.word	0x0000000a
    1bb4:	0000136a 	.word	0x0000136a
    1bb8:	00001358 	.word	0x00001358
    1bbc:	00001376 	.word	0x00001376
    1bc0:	00001382 	.word	0x00001382
    1bc4:	00001382 	.word	0x00001382
    1bc8:	00001382 	.word	0x00001382
    1bcc:	00001382 	.word	0x00001382
    1bd0:	00001382 	.word	0x00001382
    1bd4:	00001382 	.word	0x00001382
    1bd8:	00001382 	.word	0x00001382
    1bdc:	00001382 	.word	0x00001382
    1be0:	00001382 	.word	0x00001382
    1be4:	00001382 	.word	0x00001382
    1be8:	00001370 	.word	0x00001370
    1bec:	00001382 	.word	0x00001382
    1bf0:	00001382 	.word	0x00001382
    1bf4:	00001382 	.word	0x00001382
    1bf8:	000012fc 	.word	0x000012fc
    1bfc:	00001382 	.word	0x00001382
    1c00:	00001376 	.word	0x00001376
    1c04:	00001382 	.word	0x00001382
    1c08:	00001382 	.word	0x00001382
    1c0c:	0000137c 	.word	0x0000137c
    1c10:	6c383025 	.word	0x6c383025
    1c14:	00002058 	.word	0x00002058
    1c18:	32302520 	.word	0x32302520
    1c1c:	00000058 	.word	0x00000058
    1c20:	34302520 	.word	0x34302520
    1c24:	00000058 	.word	0x00000058
    1c28:	38302520 	.word	0x38302520
    1c2c:	0000584c 	.word	0x0000584c
