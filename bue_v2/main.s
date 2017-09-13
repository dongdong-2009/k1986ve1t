
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 39 05 00 00 99 05 00 00 99 05 00 00     ... 9...........
	...
      2c:	99 05 00 00 00 00 00 00 00 00 00 00 99 05 00 00     ................
      3c:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      4c:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      5c:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      6c:	99 05 00 00 99 05 00 00 0d 05 00 00 99 05 00 00     ................
      7c:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      8c:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      9c:	99 05 00 00 99 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	99 05 00 00 99 05 00 00 99 05 00 00 99 05 00 00     ................
      bc:	99 05 00 00                                         ....

000000c0 <adc_dma_start>:
      c0:	b580      	push	{r7, lr}
      c2:	af00      	add	r7, sp, #0
      c4:	4b06      	ldr	r3, [pc, #24]	; (e0 <adc_dma_start+0x20>)
      c6:	4a06      	ldr	r2, [pc, #24]	; (e0 <adc_dma_start+0x20>)
      c8:	6812      	ldr	r2, [r2, #0]
      ca:	2108      	movs	r1, #8
      cc:	430a      	orrs	r2, r1
      ce:	601a      	str	r2, [r3, #0]
      d0:	4b04      	ldr	r3, [pc, #16]	; (e4 <adc_dma_start+0x24>)
      d2:	2280      	movs	r2, #128	; 0x80
      d4:	05d2      	lsls	r2, r2, #23
      d6:	629a      	str	r2, [r3, #40]	; 0x28
      d8:	46c0      	nop			; (mov r8, r8)
      da:	46bd      	mov	sp, r7
      dc:	bd80      	pop	{r7, pc}
      de:	46c0      	nop			; (mov r8, r8)
      e0:	40088000 	.word	0x40088000
      e4:	40028000 	.word	0x40028000

000000e8 <adc_dma_wait>:
      e8:	b580      	push	{r7, lr}
      ea:	af00      	add	r7, sp, #0
      ec:	46c0      	nop			; (mov r8, r8)
      ee:	4a0a      	ldr	r2, [pc, #40]	; (118 <adc_dma_wait+0x30>)
      f0:	23f4      	movs	r3, #244	; 0xf4
      f2:	005b      	lsls	r3, r3, #1
      f4:	58d3      	ldr	r3, [r2, r3]
      f6:	2207      	movs	r2, #7
      f8:	4013      	ands	r3, r2
      fa:	d1f8      	bne.n	ee <adc_dma_wait+0x6>
      fc:	4b07      	ldr	r3, [pc, #28]	; (11c <adc_dma_wait+0x34>)
      fe:	4a07      	ldr	r2, [pc, #28]	; (11c <adc_dma_wait+0x34>)
     100:	6812      	ldr	r2, [r2, #0]
     102:	2108      	movs	r1, #8
     104:	438a      	bics	r2, r1
     106:	601a      	str	r2, [r3, #0]
     108:	4a03      	ldr	r2, [pc, #12]	; (118 <adc_dma_wait+0x30>)
     10a:	23f4      	movs	r3, #244	; 0xf4
     10c:	005b      	lsls	r3, r3, #1
     10e:	4904      	ldr	r1, [pc, #16]	; (120 <adc_dma_wait+0x38>)
     110:	50d1      	str	r1, [r2, r3]
     112:	46c0      	nop			; (mov r8, r8)
     114:	46bd      	mov	sp, r7
     116:	bd80      	pop	{r7, pc}
     118:	20100000 	.word	0x20100000
     11c:	40088000 	.word	0x40088000
     120:	ae000031 	.word	0xae000031

00000124 <encoder_init>:
     124:	b580      	push	{r7, lr}
     126:	af00      	add	r7, sp, #0
     128:	4b0c      	ldr	r3, [pc, #48]	; (15c <encoder_init+0x38>)
     12a:	4a0c      	ldr	r2, [pc, #48]	; (15c <encoder_init+0x38>)
     12c:	69d2      	ldr	r2, [r2, #28]
     12e:	2180      	movs	r1, #128	; 0x80
     130:	0349      	lsls	r1, r1, #13
     132:	430a      	orrs	r2, r1
     134:	61da      	str	r2, [r3, #28]
     136:	4b09      	ldr	r3, [pc, #36]	; (15c <encoder_init+0x38>)
     138:	4a09      	ldr	r2, [pc, #36]	; (160 <encoder_init+0x3c>)
     13a:	62da      	str	r2, [r3, #44]	; 0x2c
     13c:	4b09      	ldr	r3, [pc, #36]	; (164 <encoder_init+0x40>)
     13e:	2200      	movs	r2, #0
     140:	605a      	str	r2, [r3, #4]
     142:	4b08      	ldr	r3, [pc, #32]	; (164 <encoder_init+0x40>)
     144:	220a      	movs	r2, #10
     146:	611a      	str	r2, [r3, #16]
     148:	4b06      	ldr	r3, [pc, #24]	; (164 <encoder_init+0x40>)
     14a:	4a07      	ldr	r2, [pc, #28]	; (168 <encoder_init+0x44>)
     14c:	601a      	str	r2, [r3, #0]
     14e:	4b05      	ldr	r3, [pc, #20]	; (164 <encoder_init+0x40>)
     150:	2202      	movs	r2, #2
     152:	605a      	str	r2, [r3, #4]
     154:	46c0      	nop			; (mov r8, r8)
     156:	46bd      	mov	sp, r7
     158:	bd80      	pop	{r7, pc}
     15a:	46c0      	nop			; (mov r8, r8)
     15c:	40020000 	.word	0x40020000
     160:	02000200 	.word	0x02000200
     164:	400a0000 	.word	0x400a0000
     168:	0000021b 	.word	0x0000021b

0000016c <encoder_start>:
     16c:	b580      	push	{r7, lr}
     16e:	af00      	add	r7, sp, #0
     170:	4b02      	ldr	r3, [pc, #8]	; (17c <encoder_start+0x10>)
     172:	4a03      	ldr	r2, [pc, #12]	; (180 <encoder_start+0x14>)
     174:	609a      	str	r2, [r3, #8]
     176:	46c0      	nop			; (mov r8, r8)
     178:	46bd      	mov	sp, r7
     17a:	bd80      	pop	{r7, pc}
     17c:	400a0000 	.word	0x400a0000
     180:	00000555 	.word	0x00000555

00000184 <encoder_read>:
     184:	b580      	push	{r7, lr}
     186:	af00      	add	r7, sp, #0
     188:	4b05      	ldr	r3, [pc, #20]	; (1a0 <encoder_read+0x1c>)
     18a:	689b      	ldr	r3, [r3, #8]
     18c:	051b      	lsls	r3, r3, #20
     18e:	0d1b      	lsrs	r3, r3, #20
     190:	0018      	movs	r0, r3
     192:	f000 fffd 	bl	1190 <g2b>
     196:	0003      	movs	r3, r0
     198:	0018      	movs	r0, r3
     19a:	46bd      	mov	sp, r7
     19c:	bd80      	pop	{r7, pc}
     19e:	46c0      	nop			; (mov r8, r8)
     1a0:	400a0000 	.word	0x400a0000

000001a4 <debug_init>:
     1a4:	b580      	push	{r7, lr}
     1a6:	af00      	add	r7, sp, #0
     1a8:	4b07      	ldr	r3, [pc, #28]	; (1c8 <debug_init+0x24>)
     1aa:	4a07      	ldr	r2, [pc, #28]	; (1c8 <debug_init+0x24>)
     1ac:	69d2      	ldr	r2, [r2, #28]
     1ae:	2180      	movs	r1, #128	; 0x80
     1b0:	02c9      	lsls	r1, r1, #11
     1b2:	430a      	orrs	r2, r1
     1b4:	61da      	str	r2, [r3, #28]
     1b6:	4b05      	ldr	r3, [pc, #20]	; (1cc <debug_init+0x28>)
     1b8:	4a04      	ldr	r2, [pc, #16]	; (1cc <debug_init+0x28>)
     1ba:	6812      	ldr	r2, [r2, #0]
     1bc:	2104      	movs	r1, #4
     1be:	430a      	orrs	r2, r1
     1c0:	601a      	str	r2, [r3, #0]
     1c2:	46c0      	nop			; (mov r8, r8)
     1c4:	46bd      	mov	sp, r7
     1c6:	bd80      	pop	{r7, pc}
     1c8:	40020000 	.word	0x40020000
     1cc:	40090000 	.word	0x40090000

000001d0 <pwm_set>:
     1d0:	b580      	push	{r7, lr}
     1d2:	b082      	sub	sp, #8
     1d4:	af00      	add	r7, sp, #0
     1d6:	6078      	str	r0, [r7, #4]
     1d8:	4a0e      	ldr	r2, [pc, #56]	; (214 <pwm_set+0x44>)
     1da:	687b      	ldr	r3, [r7, #4]
     1dc:	681b      	ldr	r3, [r3, #0]
     1de:	2180      	movs	r1, #128	; 0x80
     1e0:	0089      	lsls	r1, r1, #2
     1e2:	468c      	mov	ip, r1
     1e4:	4463      	add	r3, ip
     1e6:	6113      	str	r3, [r2, #16]
     1e8:	4a0a      	ldr	r2, [pc, #40]	; (214 <pwm_set+0x44>)
     1ea:	687b      	ldr	r3, [r7, #4]
     1ec:	3304      	adds	r3, #4
     1ee:	681b      	ldr	r3, [r3, #0]
     1f0:	2180      	movs	r1, #128	; 0x80
     1f2:	0089      	lsls	r1, r1, #2
     1f4:	468c      	mov	ip, r1
     1f6:	4463      	add	r3, ip
     1f8:	6153      	str	r3, [r2, #20]
     1fa:	4a06      	ldr	r2, [pc, #24]	; (214 <pwm_set+0x44>)
     1fc:	687b      	ldr	r3, [r7, #4]
     1fe:	3308      	adds	r3, #8
     200:	681b      	ldr	r3, [r3, #0]
     202:	2180      	movs	r1, #128	; 0x80
     204:	0089      	lsls	r1, r1, #2
     206:	468c      	mov	ip, r1
     208:	4463      	add	r3, ip
     20a:	6193      	str	r3, [r2, #24]
     20c:	46c0      	nop			; (mov r8, r8)
     20e:	46bd      	mov	sp, r7
     210:	b002      	add	sp, #8
     212:	bd80      	pop	{r7, pc}
     214:	40098000 	.word	0x40098000

00000218 <sleep>:
     218:	b580      	push	{r7, lr}
     21a:	b084      	sub	sp, #16
     21c:	af00      	add	r7, sp, #0
     21e:	6078      	str	r0, [r7, #4]
     220:	4b07      	ldr	r3, [pc, #28]	; (240 <sleep+0x28>)
     222:	681a      	ldr	r2, [r3, #0]
     224:	687b      	ldr	r3, [r7, #4]
     226:	18d3      	adds	r3, r2, r3
     228:	60fb      	str	r3, [r7, #12]
     22a:	46c0      	nop			; (mov r8, r8)
     22c:	4b04      	ldr	r3, [pc, #16]	; (240 <sleep+0x28>)
     22e:	681a      	ldr	r2, [r3, #0]
     230:	68fb      	ldr	r3, [r7, #12]
     232:	429a      	cmp	r2, r3
     234:	d3fa      	bcc.n	22c <sleep+0x14>
     236:	46c0      	nop			; (mov r8, r8)
     238:	0018      	movs	r0, r3
     23a:	46bd      	mov	sp, r7
     23c:	b004      	add	sp, #16
     23e:	bd80      	pop	{r7, pc}
     240:	20000048 	.word	0x20000048

00000244 <main>:
     244:	b580      	push	{r7, lr}
     246:	b098      	sub	sp, #96	; 0x60
     248:	af00      	add	r7, sp, #0
     24a:	2300      	movs	r3, #0
     24c:	65fb      	str	r3, [r7, #92]	; 0x5c
     24e:	2300      	movs	r3, #0
     250:	63fb      	str	r3, [r7, #60]	; 0x3c
     252:	2300      	movs	r3, #0
     254:	65bb      	str	r3, [r7, #88]	; 0x58
     256:	2300      	movs	r3, #0
     258:	657b      	str	r3, [r7, #84]	; 0x54
     25a:	2300      	movs	r3, #0
     25c:	653b      	str	r3, [r7, #80]	; 0x50
     25e:	2300      	movs	r3, #0
     260:	64fb      	str	r3, [r7, #76]	; 0x4c
     262:	23fa      	movs	r3, #250	; 0xfa
     264:	009b      	lsls	r3, r3, #2
     266:	63bb      	str	r3, [r7, #56]	; 0x38
     268:	2300      	movs	r3, #0
     26a:	603b      	str	r3, [r7, #0]
     26c:	2300      	movs	r3, #0
     26e:	637b      	str	r3, [r7, #52]	; 0x34
     270:	2300      	movs	r3, #0
     272:	647b      	str	r3, [r7, #68]	; 0x44
     274:	2300      	movs	r3, #0
     276:	643b      	str	r3, [r7, #64]	; 0x40
     278:	f000 ff7a 	bl	1170 <SystemInit>
     27c:	f000 fffa 	bl	1274 <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	4b94      	ldr	r3, [pc, #592]	; (4dc <_stack_size+0xdc>)
     28a:	22c8      	movs	r2, #200	; 0xc8
     28c:	21c8      	movs	r1, #200	; 0xc8
     28e:	0018      	movs	r0, r3
     290:	f000 f986 	bl	5a0 <reg_init>
     294:	4b92      	ldr	r3, [pc, #584]	; (4e0 <_stack_size+0xe0>)
     296:	22c8      	movs	r2, #200	; 0xc8
     298:	21c8      	movs	r1, #200	; 0xc8
     29a:	0018      	movs	r0, r3
     29c:	f000 f980 	bl	5a0 <reg_init>
     2a0:	23fa      	movs	r3, #250	; 0xfa
     2a2:	009a      	lsls	r2, r3, #2
     2a4:	4b8f      	ldr	r3, [pc, #572]	; (4e4 <_stack_size+0xe4>)
     2a6:	2100      	movs	r1, #0
     2a8:	0018      	movs	r0, r3
     2aa:	f000 f979 	bl	5a0 <reg_init>
     2ae:	23fa      	movs	r3, #250	; 0xfa
     2b0:	009a      	lsls	r2, r3, #2
     2b2:	4b8d      	ldr	r3, [pc, #564]	; (4e8 <_stack_size+0xe8>)
     2b4:	2100      	movs	r1, #0
     2b6:	0018      	movs	r0, r3
     2b8:	f000 f972 	bl	5a0 <reg_init>
     2bc:	4b8b      	ldr	r3, [pc, #556]	; (4ec <_stack_size+0xec>)
     2be:	2200      	movs	r2, #0
     2c0:	601a      	str	r2, [r3, #0]
     2c2:	2300      	movs	r3, #0
     2c4:	65bb      	str	r3, [r7, #88]	; 0x58
     2c6:	2300      	movs	r3, #0
     2c8:	657b      	str	r3, [r7, #84]	; 0x54
     2ca:	2300      	movs	r3, #0
     2cc:	647b      	str	r3, [r7, #68]	; 0x44
     2ce:	2300      	movs	r3, #0
     2d0:	643b      	str	r3, [r7, #64]	; 0x40
     2d2:	2300      	movs	r3, #0
     2d4:	65fb      	str	r3, [r7, #92]	; 0x5c
     2d6:	e01f      	b.n	318 <main+0xd4>
     2d8:	f7ff ff06 	bl	e8 <adc_dma_wait>
     2dc:	4b84      	ldr	r3, [pc, #528]	; (4f0 <_stack_size+0xf0>)
     2de:	685b      	ldr	r3, [r3, #4]
     2e0:	051b      	lsls	r3, r3, #20
     2e2:	0d1a      	lsrs	r2, r3, #20
     2e4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2e6:	18d3      	adds	r3, r2, r3
     2e8:	65bb      	str	r3, [r7, #88]	; 0x58
     2ea:	4b81      	ldr	r3, [pc, #516]	; (4f0 <_stack_size+0xf0>)
     2ec:	689b      	ldr	r3, [r3, #8]
     2ee:	051b      	lsls	r3, r3, #20
     2f0:	0d1a      	lsrs	r2, r3, #20
     2f2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2f4:	18d3      	adds	r3, r2, r3
     2f6:	657b      	str	r3, [r7, #84]	; 0x54
     2f8:	4b7d      	ldr	r3, [pc, #500]	; (4f0 <_stack_size+0xf0>)
     2fa:	68db      	ldr	r3, [r3, #12]
     2fc:	051b      	lsls	r3, r3, #20
     2fe:	0d1a      	lsrs	r2, r3, #20
     300:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     302:	18d3      	adds	r3, r2, r3
     304:	647b      	str	r3, [r7, #68]	; 0x44
     306:	f7ff ff3d 	bl	184 <encoder_read>
     30a:	0002      	movs	r2, r0
     30c:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     30e:	189b      	adds	r3, r3, r2
     310:	643b      	str	r3, [r7, #64]	; 0x40
     312:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     314:	3301      	adds	r3, #1
     316:	65fb      	str	r3, [r7, #92]	; 0x5c
     318:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     31a:	4a76      	ldr	r2, [pc, #472]	; (4f4 <_stack_size+0xf4>)
     31c:	4293      	cmp	r3, r2
     31e:	dddb      	ble.n	2d8 <main+0x94>
     320:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     322:	129b      	asrs	r3, r3, #10
     324:	65bb      	str	r3, [r7, #88]	; 0x58
     326:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     328:	129b      	asrs	r3, r3, #10
     32a:	657b      	str	r3, [r7, #84]	; 0x54
     32c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     32e:	129b      	asrs	r3, r3, #10
     330:	647b      	str	r3, [r7, #68]	; 0x44
     332:	4b71      	ldr	r3, [pc, #452]	; (4f8 <_stack_size+0xf8>)
     334:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     336:	601a      	str	r2, [r3, #0]
     338:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     33a:	129b      	asrs	r3, r3, #10
     33c:	643b      	str	r3, [r7, #64]	; 0x40
     33e:	4b6f      	ldr	r3, [pc, #444]	; (4fc <_stack_size+0xfc>)
     340:	4a6e      	ldr	r2, [pc, #440]	; (4fc <_stack_size+0xfc>)
     342:	6812      	ldr	r2, [r2, #0]
     344:	2120      	movs	r1, #32
     346:	438a      	bics	r2, r1
     348:	601a      	str	r2, [r3, #0]
     34a:	f7ff fecd 	bl	e8 <adc_dma_wait>
     34e:	4b6b      	ldr	r3, [pc, #428]	; (4fc <_stack_size+0xfc>)
     350:	4a6a      	ldr	r2, [pc, #424]	; (4fc <_stack_size+0xfc>)
     352:	6812      	ldr	r2, [r2, #0]
     354:	2120      	movs	r1, #32
     356:	430a      	orrs	r2, r1
     358:	601a      	str	r2, [r3, #0]
     35a:	4b65      	ldr	r3, [pc, #404]	; (4f0 <_stack_size+0xf0>)
     35c:	681b      	ldr	r3, [r3, #0]
     35e:	051b      	lsls	r3, r3, #20
     360:	0d1a      	lsrs	r2, r3, #20
     362:	0013      	movs	r3, r2
     364:	009b      	lsls	r3, r3, #2
     366:	189b      	adds	r3, r3, r2
     368:	0018      	movs	r0, r3
     36a:	f000 fd07 	bl	d7c <mfilter>
     36e:	0003      	movs	r3, r0
     370:	65fb      	str	r3, [r7, #92]	; 0x5c
     372:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     374:	10da      	asrs	r2, r3, #3
     376:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     378:	18d3      	adds	r3, r2, r3
     37a:	10db      	asrs	r3, r3, #3
     37c:	22af      	movs	r2, #175	; 0xaf
     37e:	0092      	lsls	r2, r2, #2
     380:	189a      	adds	r2, r3, r2
     382:	4b5d      	ldr	r3, [pc, #372]	; (4f8 <_stack_size+0xf8>)
     384:	601a      	str	r2, [r3, #0]
     386:	4b5c      	ldr	r3, [pc, #368]	; (4f8 <_stack_size+0xf8>)
     388:	681a      	ldr	r2, [r3, #0]
     38a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     38c:	1ad2      	subs	r2, r2, r3
     38e:	0013      	movs	r3, r2
     390:	00db      	lsls	r3, r3, #3
     392:	1a9b      	subs	r3, r3, r2
     394:	00da      	lsls	r2, r3, #3
     396:	1ad2      	subs	r2, r2, r3
     398:	4b54      	ldr	r3, [pc, #336]	; (4ec <_stack_size+0xec>)
     39a:	601a      	str	r2, [r3, #0]
     39c:	4b54      	ldr	r3, [pc, #336]	; (4f0 <_stack_size+0xf0>)
     39e:	685b      	ldr	r3, [r3, #4]
     3a0:	051b      	lsls	r3, r3, #20
     3a2:	0d1a      	lsrs	r2, r3, #20
     3a4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3a6:	1ad3      	subs	r3, r2, r3
     3a8:	633b      	str	r3, [r7, #48]	; 0x30
     3aa:	4b51      	ldr	r3, [pc, #324]	; (4f0 <_stack_size+0xf0>)
     3ac:	689b      	ldr	r3, [r3, #8]
     3ae:	051b      	lsls	r3, r3, #20
     3b0:	0d1a      	lsrs	r2, r3, #20
     3b2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     3b4:	1ad3      	subs	r3, r2, r3
     3b6:	62fb      	str	r3, [r7, #44]	; 0x2c
     3b8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     3ba:	425a      	negs	r2, r3
     3bc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     3be:	1ad3      	subs	r3, r2, r3
     3c0:	62bb      	str	r3, [r7, #40]	; 0x28
     3c2:	4b4b      	ldr	r3, [pc, #300]	; (4f0 <_stack_size+0xf0>)
     3c4:	68db      	ldr	r3, [r3, #12]
     3c6:	051b      	lsls	r3, r3, #20
     3c8:	0d1b      	lsrs	r3, r3, #20
     3ca:	637b      	str	r3, [r7, #52]	; 0x34
     3cc:	f7ff feda 	bl	184 <encoder_read>
     3d0:	0003      	movs	r3, r0
     3d2:	627b      	str	r3, [r7, #36]	; 0x24
     3d4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3d6:	059b      	lsls	r3, r3, #22
     3d8:	0d9b      	lsrs	r3, r3, #22
     3da:	63fb      	str	r3, [r7, #60]	; 0x3c
     3dc:	4b48      	ldr	r3, [pc, #288]	; (500 <_stack_size+0x100>)
     3de:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     3e0:	605a      	str	r2, [r3, #4]
     3e2:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3e4:	3301      	adds	r3, #1
     3e6:	64fb      	str	r3, [r7, #76]	; 0x4c
     3e8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3ea:	2207      	movs	r2, #7
     3ec:	4013      	ands	r3, r2
     3ee:	d12e      	bne.n	44e <_stack_size+0x4e>
     3f0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3f2:	003a      	movs	r2, r7
     3f4:	0011      	movs	r1, r2
     3f6:	0018      	movs	r0, r3
     3f8:	f000 fc9a 	bl	d30 <get_speed>
     3fc:	0003      	movs	r3, r0
     3fe:	623b      	str	r3, [r7, #32]
     400:	4b3a      	ldr	r3, [pc, #232]	; (4ec <_stack_size+0xec>)
     402:	681a      	ldr	r2, [r3, #0]
     404:	683b      	ldr	r3, [r7, #0]
     406:	1ad1      	subs	r1, r2, r3
     408:	4b37      	ldr	r3, [pc, #220]	; (4e8 <_stack_size+0xe8>)
     40a:	2200      	movs	r2, #0
     40c:	0018      	movs	r0, r3
     40e:	f000 f8cd 	bl	5ac <reg_update>
     412:	4b35      	ldr	r3, [pc, #212]	; (4e8 <_stack_size+0xe8>)
     414:	68db      	ldr	r3, [r3, #12]
     416:	129b      	asrs	r3, r3, #10
     418:	63bb      	str	r3, [r7, #56]	; 0x38
     41a:	6bba      	ldr	r2, [r7, #56]	; 0x38
     41c:	6a3b      	ldr	r3, [r7, #32]
     41e:	1ad1      	subs	r1, r2, r3
     420:	4b30      	ldr	r3, [pc, #192]	; (4e4 <_stack_size+0xe4>)
     422:	2200      	movs	r2, #0
     424:	0018      	movs	r0, r3
     426:	f000 f8c1 	bl	5ac <reg_update>
     42a:	4b2e      	ldr	r3, [pc, #184]	; (4e4 <_stack_size+0xe4>)
     42c:	68db      	ldr	r3, [r3, #12]
     42e:	129b      	asrs	r3, r3, #10
     430:	64bb      	str	r3, [r7, #72]	; 0x48
     432:	6cba      	ldr	r2, [r7, #72]	; 0x48
     434:	23fa      	movs	r3, #250	; 0xfa
     436:	009b      	lsls	r3, r3, #2
     438:	429a      	cmp	r2, r3
     43a:	dd02      	ble.n	442 <_stack_size+0x42>
     43c:	23fa      	movs	r3, #250	; 0xfa
     43e:	009b      	lsls	r3, r3, #2
     440:	64bb      	str	r3, [r7, #72]	; 0x48
     442:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     444:	4a2f      	ldr	r2, [pc, #188]	; (504 <_stack_size+0x104>)
     446:	4293      	cmp	r3, r2
     448:	da01      	bge.n	44e <_stack_size+0x4e>
     44a:	4b2e      	ldr	r3, [pc, #184]	; (504 <_stack_size+0x104>)
     44c:	64bb      	str	r3, [r7, #72]	; 0x48
     44e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     450:	4a2d      	ldr	r2, [pc, #180]	; (508 <_stack_size+0x108>)
     452:	4694      	mov	ip, r2
     454:	4463      	add	r3, ip
     456:	059b      	lsls	r3, r3, #22
     458:	0d9b      	lsrs	r3, r3, #22
     45a:	63fb      	str	r3, [r7, #60]	; 0x3c
     45c:	1d3b      	adds	r3, r7, #4
     45e:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     460:	601a      	str	r2, [r3, #0]
     462:	1d3b      	adds	r3, r7, #4
     464:	6aba      	ldr	r2, [r7, #40]	; 0x28
     466:	605a      	str	r2, [r3, #4]
     468:	1d3b      	adds	r3, r7, #4
     46a:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     46c:	609a      	str	r2, [r3, #8]
     46e:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     470:	2310      	movs	r3, #16
     472:	18f9      	adds	r1, r7, r3
     474:	1d3b      	adds	r3, r7, #4
     476:	0018      	movs	r0, r3
     478:	f000 f8b0 	bl	5dc <abc_to_dq>
     47c:	2310      	movs	r3, #16
     47e:	18fb      	adds	r3, r7, r3
     480:	681b      	ldr	r3, [r3, #0]
     482:	425b      	negs	r3, r3
     484:	61fb      	str	r3, [r7, #28]
     486:	2310      	movs	r3, #16
     488:	18fb      	adds	r3, r7, r3
     48a:	685b      	ldr	r3, [r3, #4]
     48c:	6cba      	ldr	r2, [r7, #72]	; 0x48
     48e:	1ad3      	subs	r3, r2, r3
     490:	61bb      	str	r3, [r7, #24]
     492:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     494:	69f9      	ldr	r1, [r7, #28]
     496:	4b11      	ldr	r3, [pc, #68]	; (4dc <_stack_size+0xdc>)
     498:	0018      	movs	r0, r3
     49a:	f000 f887 	bl	5ac <reg_update>
     49e:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4a0:	69b9      	ldr	r1, [r7, #24]
     4a2:	4b0f      	ldr	r3, [pc, #60]	; (4e0 <_stack_size+0xe0>)
     4a4:	0018      	movs	r0, r3
     4a6:	f000 f881 	bl	5ac <reg_update>
     4aa:	4b0c      	ldr	r3, [pc, #48]	; (4dc <_stack_size+0xdc>)
     4ac:	68da      	ldr	r2, [r3, #12]
     4ae:	2310      	movs	r3, #16
     4b0:	18fb      	adds	r3, r7, r3
     4b2:	601a      	str	r2, [r3, #0]
     4b4:	4b0a      	ldr	r3, [pc, #40]	; (4e0 <_stack_size+0xe0>)
     4b6:	68da      	ldr	r2, [r3, #12]
     4b8:	2310      	movs	r3, #16
     4ba:	18fb      	adds	r3, r7, r3
     4bc:	605a      	str	r2, [r3, #4]
     4be:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4c0:	2310      	movs	r3, #16
     4c2:	18f9      	adds	r1, r7, r3
     4c4:	1d3b      	adds	r3, r7, #4
     4c6:	0018      	movs	r0, r3
     4c8:	f000 fab4 	bl	a34 <svpwm>
     4cc:	0003      	movs	r3, r0
     4ce:	653b      	str	r3, [r7, #80]	; 0x50
     4d0:	1d3b      	adds	r3, r7, #4
     4d2:	0018      	movs	r0, r3
     4d4:	f7ff fe7c 	bl	1d0 <pwm_set>
     4d8:	e731      	b.n	33e <main+0xfa>
     4da:	46c0      	nop			; (mov r8, r8)
     4dc:	20000008 	.word	0x20000008
     4e0:	20000018 	.word	0x20000018
     4e4:	20000028 	.word	0x20000028
     4e8:	20000038 	.word	0x20000038
     4ec:	20000000 	.word	0x20000000
     4f0:	20100200 	.word	0x20100200
     4f4:	000003ff 	.word	0x000003ff
     4f8:	20000004 	.word	0x20000004
     4fc:	400b8000 	.word	0x400b8000
     500:	40090000 	.word	0x40090000
     504:	fffffc18 	.word	0xfffffc18
     508:	000003ea 	.word	0x000003ea

0000050c <TIMER4_Handler>:
     50c:	b580      	push	{r7, lr}
     50e:	af00      	add	r7, sp, #0
     510:	4b07      	ldr	r3, [pc, #28]	; (530 <TIMER4_Handler+0x24>)
     512:	2200      	movs	r2, #0
     514:	655a      	str	r2, [r3, #84]	; 0x54
     516:	4b07      	ldr	r3, [pc, #28]	; (534 <TIMER4_Handler+0x28>)
     518:	681b      	ldr	r3, [r3, #0]
     51a:	1c5a      	adds	r2, r3, #1
     51c:	4b05      	ldr	r3, [pc, #20]	; (534 <TIMER4_Handler+0x28>)
     51e:	601a      	str	r2, [r3, #0]
     520:	f7ff fdce 	bl	c0 <adc_dma_start>
     524:	f7ff fe22 	bl	16c <encoder_start>
     528:	46c0      	nop			; (mov r8, r8)
     52a:	46bd      	mov	sp, r7
     52c:	bd80      	pop	{r7, pc}
     52e:	46c0      	nop			; (mov r8, r8)
     530:	40098000 	.word	0x40098000
     534:	20000048 	.word	0x20000048

00000538 <handler_reset>:
     538:	b580      	push	{r7, lr}
     53a:	b082      	sub	sp, #8
     53c:	af00      	add	r7, sp, #0
     53e:	4b11      	ldr	r3, [pc, #68]	; (584 <handler_reset+0x4c>)
     540:	607b      	str	r3, [r7, #4]
     542:	4b11      	ldr	r3, [pc, #68]	; (588 <handler_reset+0x50>)
     544:	603b      	str	r3, [r7, #0]
     546:	e007      	b.n	558 <handler_reset+0x20>
     548:	683b      	ldr	r3, [r7, #0]
     54a:	1d1a      	adds	r2, r3, #4
     54c:	603a      	str	r2, [r7, #0]
     54e:	687a      	ldr	r2, [r7, #4]
     550:	1d11      	adds	r1, r2, #4
     552:	6079      	str	r1, [r7, #4]
     554:	6812      	ldr	r2, [r2, #0]
     556:	601a      	str	r2, [r3, #0]
     558:	683a      	ldr	r2, [r7, #0]
     55a:	4b0c      	ldr	r3, [pc, #48]	; (58c <handler_reset+0x54>)
     55c:	429a      	cmp	r2, r3
     55e:	d3f3      	bcc.n	548 <handler_reset+0x10>
     560:	4b0b      	ldr	r3, [pc, #44]	; (590 <handler_reset+0x58>)
     562:	603b      	str	r3, [r7, #0]
     564:	e004      	b.n	570 <handler_reset+0x38>
     566:	683b      	ldr	r3, [r7, #0]
     568:	1d1a      	adds	r2, r3, #4
     56a:	603a      	str	r2, [r7, #0]
     56c:	2200      	movs	r2, #0
     56e:	601a      	str	r2, [r3, #0]
     570:	683a      	ldr	r2, [r7, #0]
     572:	4b08      	ldr	r3, [pc, #32]	; (594 <handler_reset+0x5c>)
     574:	429a      	cmp	r2, r3
     576:	d3f6      	bcc.n	566 <handler_reset+0x2e>
     578:	f7ff fe64 	bl	244 <main>
     57c:	46c0      	nop			; (mov r8, r8)
     57e:	46bd      	mov	sp, r7
     580:	b002      	add	sp, #8
     582:	bd80      	pop	{r7, pc}
     584:	000022e0 	.word	0x000022e0
     588:	20000000 	.word	0x20000000
     58c:	20000000 	.word	0x20000000
     590:	20000000 	.word	0x20000000
     594:	200000dc 	.word	0x200000dc

00000598 <default_handler>:
     598:	b580      	push	{r7, lr}
     59a:	af00      	add	r7, sp, #0
     59c:	e7fe      	b.n	59c <default_handler+0x4>
     59e:	46c0      	nop			; (mov r8, r8)

000005a0 <reg_init>:
     5a0:	2300      	movs	r3, #0
     5a2:	6001      	str	r1, [r0, #0]
     5a4:	6042      	str	r2, [r0, #4]
     5a6:	6083      	str	r3, [r0, #8]
     5a8:	60c3      	str	r3, [r0, #12]
     5aa:	4770      	bx	lr

000005ac <reg_update>:
     5ac:	b510      	push	{r4, lr}
     5ae:	6804      	ldr	r4, [r0, #0]
     5b0:	6883      	ldr	r3, [r0, #8]
     5b2:	434c      	muls	r4, r1
     5b4:	2a00      	cmp	r2, #0
     5b6:	d004      	beq.n	5c2 <reg_update+0x16>
     5b8:	2b00      	cmp	r3, #0
     5ba:	dd09      	ble.n	5d0 <reg_update+0x24>
     5bc:	2c00      	cmp	r4, #0
     5be:	dd00      	ble.n	5c2 <reg_update+0x16>
     5c0:	2400      	movs	r4, #0
     5c2:	6842      	ldr	r2, [r0, #4]
     5c4:	18e3      	adds	r3, r4, r3
     5c6:	4351      	muls	r1, r2
     5c8:	18c9      	adds	r1, r1, r3
     5ca:	60c1      	str	r1, [r0, #12]
     5cc:	6083      	str	r3, [r0, #8]
     5ce:	bd10      	pop	{r4, pc}
     5d0:	2b00      	cmp	r3, #0
     5d2:	d0f6      	beq.n	5c2 <reg_update+0x16>
     5d4:	43e2      	mvns	r2, r4
     5d6:	17d2      	asrs	r2, r2, #31
     5d8:	4014      	ands	r4, r2
     5da:	e7f2      	b.n	5c2 <reg_update+0x16>

000005dc <abc_to_dq>:
     5dc:	23c0      	movs	r3, #192	; 0xc0
     5de:	b5f0      	push	{r4, r5, r6, r7, lr}
     5e0:	4647      	mov	r7, r8
     5e2:	009b      	lsls	r3, r3, #2
     5e4:	18d3      	adds	r3, r2, r3
     5e6:	4d1b      	ldr	r5, [pc, #108]	; (654 <abc_to_dq+0x78>)
     5e8:	059b      	lsls	r3, r3, #22
     5ea:	0d1b      	lsrs	r3, r3, #20
     5ec:	595b      	ldr	r3, [r3, r5]
     5ee:	b480      	push	{r7}
     5f0:	4698      	mov	r8, r3
     5f2:	4b19      	ldr	r3, [pc, #100]	; (658 <abc_to_dq+0x7c>)
     5f4:	18d4      	adds	r4, r2, r3
     5f6:	05a4      	lsls	r4, r4, #22
     5f8:	4b18      	ldr	r3, [pc, #96]	; (65c <abc_to_dq+0x80>)
     5fa:	0d24      	lsrs	r4, r4, #20
     5fc:	5967      	ldr	r7, [r4, r5]
     5fe:	18d4      	adds	r4, r2, r3
     600:	05a4      	lsls	r4, r4, #22
     602:	4b17      	ldr	r3, [pc, #92]	; (660 <abc_to_dq+0x84>)
     604:	0d24      	lsrs	r4, r4, #20
     606:	5966      	ldr	r6, [r4, r5]
     608:	18d4      	adds	r4, r2, r3
     60a:	05a4      	lsls	r4, r4, #22
     60c:	0d24      	lsrs	r4, r4, #20
     60e:	5964      	ldr	r4, [r4, r5]
     610:	6843      	ldr	r3, [r0, #4]
     612:	4363      	muls	r3, r4
     614:	0094      	lsls	r4, r2, #2
     616:	469c      	mov	ip, r3
     618:	3256      	adds	r2, #86	; 0x56
     61a:	32ff      	adds	r2, #255	; 0xff
     61c:	6803      	ldr	r3, [r0, #0]
     61e:	5964      	ldr	r4, [r4, r5]
     620:	0592      	lsls	r2, r2, #22
     622:	0d12      	lsrs	r2, r2, #20
     624:	5955      	ldr	r5, [r2, r5]
     626:	435c      	muls	r4, r3
     628:	6883      	ldr	r3, [r0, #8]
     62a:	4464      	add	r4, ip
     62c:	435d      	muls	r5, r3
     62e:	4643      	mov	r3, r8
     630:	1964      	adds	r4, r4, r5
     632:	12a4      	asrs	r4, r4, #10
     634:	600c      	str	r4, [r1, #0]
     636:	6802      	ldr	r2, [r0, #0]
     638:	435a      	muls	r2, r3
     63a:	6843      	ldr	r3, [r0, #4]
     63c:	437b      	muls	r3, r7
     63e:	18d3      	adds	r3, r2, r3
     640:	6882      	ldr	r2, [r0, #8]
     642:	4372      	muls	r2, r6
     644:	189b      	adds	r3, r3, r2
     646:	425b      	negs	r3, r3
     648:	129b      	asrs	r3, r3, #10
     64a:	604b      	str	r3, [r1, #4]
     64c:	bc04      	pop	{r2}
     64e:	4690      	mov	r8, r2
     650:	bdf0      	pop	{r4, r5, r6, r7, pc}
     652:	46c0      	nop			; (mov r8, r8)
     654:	00001288 	.word	0x00001288
     658:	000005aa 	.word	0x000005aa
     65c:	00000455 	.word	0x00000455
     660:	000002aa 	.word	0x000002aa

00000664 <dq_to_abc>:
     664:	b570      	push	{r4, r5, r6, lr}
     666:	4d1a      	ldr	r5, [pc, #104]	; (6d0 <dq_to_abc+0x6c>)
     668:	0093      	lsls	r3, r2, #2
     66a:	680c      	ldr	r4, [r1, #0]
     66c:	595b      	ldr	r3, [r3, r5]
     66e:	684e      	ldr	r6, [r1, #4]
     670:	435c      	muls	r4, r3
     672:	23c0      	movs	r3, #192	; 0xc0
     674:	009b      	lsls	r3, r3, #2
     676:	18d3      	adds	r3, r2, r3
     678:	059b      	lsls	r3, r3, #22
     67a:	0d1b      	lsrs	r3, r3, #20
     67c:	595b      	ldr	r3, [r3, r5]
     67e:	4373      	muls	r3, r6
     680:	1ae3      	subs	r3, r4, r3
     682:	151b      	asrs	r3, r3, #20
     684:	6003      	str	r3, [r0, #0]
     686:	4b13      	ldr	r3, [pc, #76]	; (6d4 <dq_to_abc+0x70>)
     688:	680c      	ldr	r4, [r1, #0]
     68a:	18d3      	adds	r3, r2, r3
     68c:	059b      	lsls	r3, r3, #22
     68e:	0d1b      	lsrs	r3, r3, #20
     690:	595b      	ldr	r3, [r3, r5]
     692:	684e      	ldr	r6, [r1, #4]
     694:	435c      	muls	r4, r3
     696:	4b10      	ldr	r3, [pc, #64]	; (6d8 <dq_to_abc+0x74>)
     698:	18d3      	adds	r3, r2, r3
     69a:	059b      	lsls	r3, r3, #22
     69c:	0d1b      	lsrs	r3, r3, #20
     69e:	595b      	ldr	r3, [r3, r5]
     6a0:	4373      	muls	r3, r6
     6a2:	1ae3      	subs	r3, r4, r3
     6a4:	151b      	asrs	r3, r3, #20
     6a6:	6043      	str	r3, [r0, #4]
     6a8:	0013      	movs	r3, r2
     6aa:	3356      	adds	r3, #86	; 0x56
     6ac:	33ff      	adds	r3, #255	; 0xff
     6ae:	059b      	lsls	r3, r3, #22
     6b0:	0d1b      	lsrs	r3, r3, #20
     6b2:	595b      	ldr	r3, [r3, r5]
     6b4:	680c      	ldr	r4, [r1, #0]
     6b6:	435c      	muls	r4, r3
     6b8:	4b08      	ldr	r3, [pc, #32]	; (6dc <dq_to_abc+0x78>)
     6ba:	469c      	mov	ip, r3
     6bc:	4462      	add	r2, ip
     6be:	0592      	lsls	r2, r2, #22
     6c0:	0d12      	lsrs	r2, r2, #20
     6c2:	5952      	ldr	r2, [r2, r5]
     6c4:	684b      	ldr	r3, [r1, #4]
     6c6:	4353      	muls	r3, r2
     6c8:	1ae3      	subs	r3, r4, r3
     6ca:	151b      	asrs	r3, r3, #20
     6cc:	6083      	str	r3, [r0, #8]
     6ce:	bd70      	pop	{r4, r5, r6, pc}
     6d0:	00001288 	.word	0x00001288
     6d4:	000002aa 	.word	0x000002aa
     6d8:	000005aa 	.word	0x000005aa
     6dc:	00000455 	.word	0x00000455

000006e0 <cord_atan>:
     6e0:	b5f0      	push	{r4, r5, r6, r7, lr}
     6e2:	464f      	mov	r7, r9
     6e4:	4646      	mov	r6, r8
     6e6:	b4c0      	push	{r6, r7}
     6e8:	4b63      	ldr	r3, [pc, #396]	; (878 <cord_atan+0x198>)
     6ea:	b091      	sub	sp, #68	; 0x44
     6ec:	001c      	movs	r4, r3
     6ee:	4694      	mov	ip, r2
     6f0:	466a      	mov	r2, sp
     6f2:	4699      	mov	r9, r3
     6f4:	cca8      	ldmia	r4!, {r3, r5, r7}
     6f6:	c2a8      	stmia	r2!, {r3, r5, r7}
     6f8:	cca8      	ldmia	r4!, {r3, r5, r7}
     6fa:	c2a8      	stmia	r2!, {r3, r5, r7}
     6fc:	cc28      	ldmia	r4!, {r3, r5}
     6fe:	c228      	stmia	r2!, {r3, r5}
     700:	464b      	mov	r3, r9
     702:	aa08      	add	r2, sp, #32
     704:	3320      	adds	r3, #32
     706:	4690      	mov	r8, r2
     708:	cbb0      	ldmia	r3!, {r4, r5, r7}
     70a:	c2b0      	stmia	r2!, {r4, r5, r7}
     70c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     70e:	c2b0      	stmia	r2!, {r4, r5, r7}
     710:	cb30      	ldmia	r3!, {r4, r5}
     712:	c230      	stmia	r2!, {r4, r5}
     714:	6802      	ldr	r2, [r0, #0]
     716:	6845      	ldr	r5, [r0, #4]
     718:	17d4      	asrs	r4, r2, #31
     71a:	1913      	adds	r3, r2, r4
     71c:	466e      	mov	r6, sp
     71e:	4063      	eors	r3, r4
     720:	2d00      	cmp	r5, #0
     722:	dd69      	ble.n	7f8 <cord_atan+0x118>
     724:	195f      	adds	r7, r3, r5
     726:	1aeb      	subs	r3, r5, r3
     728:	9d00      	ldr	r5, [sp, #0]
     72a:	2b00      	cmp	r3, #0
     72c:	d100      	bne.n	730 <cord_atan+0x50>
     72e:	e091      	b.n	854 <cord_atan+0x174>
     730:	105c      	asrs	r4, r3, #1
     732:	2b00      	cmp	r3, #0
     734:	dd65      	ble.n	802 <cord_atan+0x122>
     736:	1078      	asrs	r0, r7, #1
     738:	1a1b      	subs	r3, r3, r0
     73a:	6870      	ldr	r0, [r6, #4]
     73c:	19e4      	adds	r4, r4, r7
     73e:	4681      	mov	r9, r0
     740:	444d      	add	r5, r9
     742:	2b00      	cmp	r3, #0
     744:	d100      	bne.n	748 <cord_atan+0x68>
     746:	e087      	b.n	858 <cord_atan+0x178>
     748:	1098      	asrs	r0, r3, #2
     74a:	2b00      	cmp	r3, #0
     74c:	dd5f      	ble.n	80e <cord_atan+0x12e>
     74e:	1907      	adds	r7, r0, r4
     750:	10a4      	asrs	r4, r4, #2
     752:	1b18      	subs	r0, r3, r4
     754:	68b3      	ldr	r3, [r6, #8]
     756:	4699      	mov	r9, r3
     758:	444d      	add	r5, r9
     75a:	2800      	cmp	r0, #0
     75c:	d100      	bne.n	760 <cord_atan+0x80>
     75e:	e07e      	b.n	85e <cord_atan+0x17e>
     760:	10c3      	asrs	r3, r0, #3
     762:	2800      	cmp	r0, #0
     764:	dd59      	ble.n	81a <cord_atan+0x13a>
     766:	10fc      	asrs	r4, r7, #3
     768:	1b00      	subs	r0, r0, r4
     76a:	68f4      	ldr	r4, [r6, #12]
     76c:	19db      	adds	r3, r3, r7
     76e:	46a1      	mov	r9, r4
     770:	444d      	add	r5, r9
     772:	2800      	cmp	r0, #0
     774:	d100      	bne.n	778 <cord_atan+0x98>
     776:	e074      	b.n	862 <cord_atan+0x182>
     778:	1104      	asrs	r4, r0, #4
     77a:	2800      	cmp	r0, #0
     77c:	dd53      	ble.n	826 <cord_atan+0x146>
     77e:	18e7      	adds	r7, r4, r3
     780:	111b      	asrs	r3, r3, #4
     782:	1ac4      	subs	r4, r0, r3
     784:	6933      	ldr	r3, [r6, #16]
     786:	4699      	mov	r9, r3
     788:	444d      	add	r5, r9
     78a:	2c00      	cmp	r4, #0
     78c:	d06c      	beq.n	868 <cord_atan+0x188>
     78e:	1163      	asrs	r3, r4, #5
     790:	2c00      	cmp	r4, #0
     792:	dd4e      	ble.n	832 <cord_atan+0x152>
     794:	1178      	asrs	r0, r7, #5
     796:	1a20      	subs	r0, r4, r0
     798:	6974      	ldr	r4, [r6, #20]
     79a:	19db      	adds	r3, r3, r7
     79c:	46a1      	mov	r9, r4
     79e:	444d      	add	r5, r9
     7a0:	2800      	cmp	r0, #0
     7a2:	d063      	beq.n	86c <cord_atan+0x18c>
     7a4:	1184      	asrs	r4, r0, #6
     7a6:	2800      	cmp	r0, #0
     7a8:	dd49      	ble.n	83e <cord_atan+0x15e>
     7aa:	18e7      	adds	r7, r4, r3
     7ac:	119b      	asrs	r3, r3, #6
     7ae:	1ac0      	subs	r0, r0, r3
     7b0:	69b3      	ldr	r3, [r6, #24]
     7b2:	4699      	mov	r9, r3
     7b4:	444d      	add	r5, r9
     7b6:	2800      	cmp	r0, #0
     7b8:	d05b      	beq.n	872 <cord_atan+0x192>
     7ba:	dd46      	ble.n	84a <cord_atan+0x16a>
     7bc:	69f3      	ldr	r3, [r6, #28]
     7be:	11c0      	asrs	r0, r0, #7
     7c0:	19c7      	adds	r7, r0, r7
     7c2:	18ed      	adds	r5, r5, r3
     7c4:	2307      	movs	r3, #7
     7c6:	2a00      	cmp	r2, #0
     7c8:	db12      	blt.n	7f0 <cord_atan+0x110>
     7ca:	2d00      	cmp	r5, #0
     7cc:	da03      	bge.n	7d6 <cord_atan+0xf6>
     7ce:	2280      	movs	r2, #128	; 0x80
     7d0:	00d2      	lsls	r2, r2, #3
     7d2:	4691      	mov	r9, r2
     7d4:	444d      	add	r5, r9
     7d6:	4642      	mov	r2, r8
     7d8:	009b      	lsls	r3, r3, #2
     7da:	58d0      	ldr	r0, [r2, r3]
     7dc:	4663      	mov	r3, ip
     7de:	4378      	muls	r0, r7
     7e0:	1280      	asrs	r0, r0, #10
     7e2:	600d      	str	r5, [r1, #0]
     7e4:	6018      	str	r0, [r3, #0]
     7e6:	b011      	add	sp, #68	; 0x44
     7e8:	bc0c      	pop	{r2, r3}
     7ea:	4690      	mov	r8, r2
     7ec:	4699      	mov	r9, r3
     7ee:	bdf0      	pop	{r4, r5, r6, r7, pc}
     7f0:	2280      	movs	r2, #128	; 0x80
     7f2:	0092      	lsls	r2, r2, #2
     7f4:	1b55      	subs	r5, r2, r5
     7f6:	e7e8      	b.n	7ca <cord_atan+0xea>
     7f8:	9800      	ldr	r0, [sp, #0]
     7fa:	1b5f      	subs	r7, r3, r5
     7fc:	195b      	adds	r3, r3, r5
     7fe:	4245      	negs	r5, r0
     800:	e793      	b.n	72a <cord_atan+0x4a>
     802:	1078      	asrs	r0, r7, #1
     804:	18c3      	adds	r3, r0, r3
     806:	6870      	ldr	r0, [r6, #4]
     808:	1b3c      	subs	r4, r7, r4
     80a:	1a2d      	subs	r5, r5, r0
     80c:	e799      	b.n	742 <cord_atan+0x62>
     80e:	1a27      	subs	r7, r4, r0
     810:	10a0      	asrs	r0, r4, #2
     812:	18c0      	adds	r0, r0, r3
     814:	68b3      	ldr	r3, [r6, #8]
     816:	1aed      	subs	r5, r5, r3
     818:	e79f      	b.n	75a <cord_atan+0x7a>
     81a:	10fc      	asrs	r4, r7, #3
     81c:	1820      	adds	r0, r4, r0
     81e:	68f4      	ldr	r4, [r6, #12]
     820:	1afb      	subs	r3, r7, r3
     822:	1b2d      	subs	r5, r5, r4
     824:	e7a5      	b.n	772 <cord_atan+0x92>
     826:	1b1f      	subs	r7, r3, r4
     828:	111c      	asrs	r4, r3, #4
     82a:	6933      	ldr	r3, [r6, #16]
     82c:	1824      	adds	r4, r4, r0
     82e:	1aed      	subs	r5, r5, r3
     830:	e7ab      	b.n	78a <cord_atan+0xaa>
     832:	1178      	asrs	r0, r7, #5
     834:	1900      	adds	r0, r0, r4
     836:	6974      	ldr	r4, [r6, #20]
     838:	1afb      	subs	r3, r7, r3
     83a:	1b2d      	subs	r5, r5, r4
     83c:	e7b0      	b.n	7a0 <cord_atan+0xc0>
     83e:	1b1f      	subs	r7, r3, r4
     840:	119b      	asrs	r3, r3, #6
     842:	1818      	adds	r0, r3, r0
     844:	69b3      	ldr	r3, [r6, #24]
     846:	1aed      	subs	r5, r5, r3
     848:	e7b5      	b.n	7b6 <cord_atan+0xd6>
     84a:	69f3      	ldr	r3, [r6, #28]
     84c:	11c4      	asrs	r4, r0, #7
     84e:	1b3f      	subs	r7, r7, r4
     850:	1aed      	subs	r5, r5, r3
     852:	e7b7      	b.n	7c4 <cord_atan+0xe4>
     854:	2300      	movs	r3, #0
     856:	e7b6      	b.n	7c6 <cord_atan+0xe6>
     858:	0027      	movs	r7, r4
     85a:	2301      	movs	r3, #1
     85c:	e7b3      	b.n	7c6 <cord_atan+0xe6>
     85e:	2302      	movs	r3, #2
     860:	e7b1      	b.n	7c6 <cord_atan+0xe6>
     862:	001f      	movs	r7, r3
     864:	2303      	movs	r3, #3
     866:	e7ae      	b.n	7c6 <cord_atan+0xe6>
     868:	2304      	movs	r3, #4
     86a:	e7ac      	b.n	7c6 <cord_atan+0xe6>
     86c:	001f      	movs	r7, r3
     86e:	2305      	movs	r3, #5
     870:	e7a9      	b.n	7c6 <cord_atan+0xe6>
     872:	2306      	movs	r3, #6
     874:	e7a7      	b.n	7c6 <cord_atan+0xe6>
     876:	46c0      	nop			; (mov r8, r8)
     878:	000022a0 	.word	0x000022a0

0000087c <sinpwm>:
     87c:	b5f0      	push	{r4, r5, r6, r7, lr}
     87e:	4646      	mov	r6, r8
     880:	464f      	mov	r7, r9
     882:	b4c0      	push	{r6, r7}
     884:	b089      	sub	sp, #36	; 0x24
     886:	466c      	mov	r4, sp
     888:	4b65      	ldr	r3, [pc, #404]	; (a20 <sinpwm+0x1a4>)
     88a:	46e9      	mov	r9, sp
     88c:	3320      	adds	r3, #32
     88e:	cbe0      	ldmia	r3!, {r5, r6, r7}
     890:	c4e0      	stmia	r4!, {r5, r6, r7}
     892:	cbe0      	ldmia	r3!, {r5, r6, r7}
     894:	c4e0      	stmia	r4!, {r5, r6, r7}
     896:	cb60      	ldmia	r3!, {r5, r6}
     898:	c460      	stmia	r4!, {r5, r6}
     89a:	680b      	ldr	r3, [r1, #0]
     89c:	17dc      	asrs	r4, r3, #31
     89e:	191e      	adds	r6, r3, r4
     8a0:	4698      	mov	r8, r3
     8a2:	684b      	ldr	r3, [r1, #4]
     8a4:	4066      	eors	r6, r4
     8a6:	469c      	mov	ip, r3
     8a8:	2b00      	cmp	r3, #0
     8aa:	dc00      	bgt.n	8ae <sinpwm+0x32>
     8ac:	e086      	b.n	9bc <sinpwm+0x140>
     8ae:	18f7      	adds	r7, r6, r3
     8b0:	1b9b      	subs	r3, r3, r6
     8b2:	2b00      	cmp	r3, #0
     8b4:	d100      	bne.n	8b8 <sinpwm+0x3c>
     8b6:	e0a0      	b.n	9fa <sinpwm+0x17e>
     8b8:	105e      	asrs	r6, r3, #1
     8ba:	2b00      	cmp	r3, #0
     8bc:	dc00      	bgt.n	8c0 <sinpwm+0x44>
     8be:	e081      	b.n	9c4 <sinpwm+0x148>
     8c0:	107c      	asrs	r4, r7, #1
     8c2:	19f6      	adds	r6, r6, r7
     8c4:	1b1b      	subs	r3, r3, r4
     8c6:	2b00      	cmp	r3, #0
     8c8:	d100      	bne.n	8cc <sinpwm+0x50>
     8ca:	e098      	b.n	9fe <sinpwm+0x182>
     8cc:	109c      	asrs	r4, r3, #2
     8ce:	2b00      	cmp	r3, #0
     8d0:	dc00      	bgt.n	8d4 <sinpwm+0x58>
     8d2:	e07b      	b.n	9cc <sinpwm+0x150>
     8d4:	19a7      	adds	r7, r4, r6
     8d6:	10b6      	asrs	r6, r6, #2
     8d8:	1b9c      	subs	r4, r3, r6
     8da:	2c00      	cmp	r4, #0
     8dc:	d100      	bne.n	8e0 <sinpwm+0x64>
     8de:	e091      	b.n	a04 <sinpwm+0x188>
     8e0:	10e6      	asrs	r6, r4, #3
     8e2:	2c00      	cmp	r4, #0
     8e4:	dc00      	bgt.n	8e8 <sinpwm+0x6c>
     8e6:	e075      	b.n	9d4 <sinpwm+0x158>
     8e8:	10fd      	asrs	r5, r7, #3
     8ea:	19f6      	adds	r6, r6, r7
     8ec:	1b64      	subs	r4, r4, r5
     8ee:	2c00      	cmp	r4, #0
     8f0:	d100      	bne.n	8f4 <sinpwm+0x78>
     8f2:	e089      	b.n	a08 <sinpwm+0x18c>
     8f4:	1125      	asrs	r5, r4, #4
     8f6:	2c00      	cmp	r4, #0
     8f8:	dc00      	bgt.n	8fc <sinpwm+0x80>
     8fa:	e06f      	b.n	9dc <sinpwm+0x160>
     8fc:	19af      	adds	r7, r5, r6
     8fe:	1136      	asrs	r6, r6, #4
     900:	1ba5      	subs	r5, r4, r6
     902:	2d00      	cmp	r5, #0
     904:	d100      	bne.n	908 <sinpwm+0x8c>
     906:	e082      	b.n	a0e <sinpwm+0x192>
     908:	116e      	asrs	r6, r5, #5
     90a:	2d00      	cmp	r5, #0
     90c:	dd6a      	ble.n	9e4 <sinpwm+0x168>
     90e:	117c      	asrs	r4, r7, #5
     910:	19f6      	adds	r6, r6, r7
     912:	1b2c      	subs	r4, r5, r4
     914:	2c00      	cmp	r4, #0
     916:	d100      	bne.n	91a <sinpwm+0x9e>
     918:	e07b      	b.n	a12 <sinpwm+0x196>
     91a:	11a3      	asrs	r3, r4, #6
     91c:	2c00      	cmp	r4, #0
     91e:	dd65      	ble.n	9ec <sinpwm+0x170>
     920:	199b      	adds	r3, r3, r6
     922:	11b6      	asrs	r6, r6, #6
     924:	1ba4      	subs	r4, r4, r6
     926:	2c00      	cmp	r4, #0
     928:	d100      	bne.n	92c <sinpwm+0xb0>
     92a:	e075      	b.n	a18 <sinpwm+0x19c>
     92c:	dd62      	ble.n	9f4 <sinpwm+0x178>
     92e:	11e4      	asrs	r4, r4, #7
     930:	18e7      	adds	r7, r4, r3
     932:	2307      	movs	r3, #7
     934:	464c      	mov	r4, r9
     936:	4646      	mov	r6, r8
     938:	009b      	lsls	r3, r3, #2
     93a:	58e4      	ldr	r4, [r4, r3]
     93c:	4b39      	ldr	r3, [pc, #228]	; (a24 <sinpwm+0x1a8>)
     93e:	0095      	lsls	r5, r2, #2
     940:	58ed      	ldr	r5, [r5, r3]
     942:	437c      	muls	r4, r7
     944:	436e      	muls	r6, r5
     946:	25c0      	movs	r5, #192	; 0xc0
     948:	4667      	mov	r7, ip
     94a:	00ad      	lsls	r5, r5, #2
     94c:	1955      	adds	r5, r2, r5
     94e:	05ad      	lsls	r5, r5, #22
     950:	0d2d      	lsrs	r5, r5, #20
     952:	58ed      	ldr	r5, [r5, r3]
     954:	1524      	asrs	r4, r4, #20
     956:	437d      	muls	r5, r7
     958:	1b75      	subs	r5, r6, r5
     95a:	152d      	asrs	r5, r5, #20
     95c:	6005      	str	r5, [r0, #0]
     95e:	4d32      	ldr	r5, [pc, #200]	; (a28 <sinpwm+0x1ac>)
     960:	684f      	ldr	r7, [r1, #4]
     962:	1955      	adds	r5, r2, r5
     964:	05ad      	lsls	r5, r5, #22
     966:	0d2d      	lsrs	r5, r5, #20
     968:	58ee      	ldr	r6, [r5, r3]
     96a:	680d      	ldr	r5, [r1, #0]
     96c:	4375      	muls	r5, r6
     96e:	4e2f      	ldr	r6, [pc, #188]	; (a2c <sinpwm+0x1b0>)
     970:	1996      	adds	r6, r2, r6
     972:	05b6      	lsls	r6, r6, #22
     974:	0d36      	lsrs	r6, r6, #20
     976:	58f6      	ldr	r6, [r6, r3]
     978:	437e      	muls	r6, r7
     97a:	1bae      	subs	r6, r5, r6
     97c:	0015      	movs	r5, r2
     97e:	3556      	adds	r5, #86	; 0x56
     980:	35ff      	adds	r5, #255	; 0xff
     982:	1536      	asrs	r6, r6, #20
     984:	05ad      	lsls	r5, r5, #22
     986:	6046      	str	r6, [r0, #4]
     988:	0d2d      	lsrs	r5, r5, #20
     98a:	58ee      	ldr	r6, [r5, r3]
     98c:	680d      	ldr	r5, [r1, #0]
     98e:	436e      	muls	r6, r5
     990:	4d27      	ldr	r5, [pc, #156]	; (a30 <sinpwm+0x1b4>)
     992:	46ac      	mov	ip, r5
     994:	4462      	add	r2, ip
     996:	0592      	lsls	r2, r2, #22
     998:	0d12      	lsrs	r2, r2, #20
     99a:	58d2      	ldr	r2, [r2, r3]
     99c:	684b      	ldr	r3, [r1, #4]
     99e:	435a      	muls	r2, r3
     9a0:	23fa      	movs	r3, #250	; 0xfa
     9a2:	1ab2      	subs	r2, r6, r2
     9a4:	1512      	asrs	r2, r2, #20
     9a6:	6082      	str	r2, [r0, #8]
     9a8:	005b      	lsls	r3, r3, #1
     9aa:	2001      	movs	r0, #1
     9ac:	429c      	cmp	r4, r3
     9ae:	dc00      	bgt.n	9b2 <sinpwm+0x136>
     9b0:	2000      	movs	r0, #0
     9b2:	b009      	add	sp, #36	; 0x24
     9b4:	bc0c      	pop	{r2, r3}
     9b6:	4690      	mov	r8, r2
     9b8:	4699      	mov	r9, r3
     9ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9bc:	1af7      	subs	r7, r6, r3
     9be:	0033      	movs	r3, r6
     9c0:	4463      	add	r3, ip
     9c2:	e776      	b.n	8b2 <sinpwm+0x36>
     9c4:	107c      	asrs	r4, r7, #1
     9c6:	1bbe      	subs	r6, r7, r6
     9c8:	18e3      	adds	r3, r4, r3
     9ca:	e77c      	b.n	8c6 <sinpwm+0x4a>
     9cc:	1b37      	subs	r7, r6, r4
     9ce:	10b4      	asrs	r4, r6, #2
     9d0:	18e4      	adds	r4, r4, r3
     9d2:	e782      	b.n	8da <sinpwm+0x5e>
     9d4:	10fd      	asrs	r5, r7, #3
     9d6:	1bbe      	subs	r6, r7, r6
     9d8:	192c      	adds	r4, r5, r4
     9da:	e788      	b.n	8ee <sinpwm+0x72>
     9dc:	1b77      	subs	r7, r6, r5
     9de:	1135      	asrs	r5, r6, #4
     9e0:	192d      	adds	r5, r5, r4
     9e2:	e78e      	b.n	902 <sinpwm+0x86>
     9e4:	117c      	asrs	r4, r7, #5
     9e6:	1bbe      	subs	r6, r7, r6
     9e8:	1964      	adds	r4, r4, r5
     9ea:	e793      	b.n	914 <sinpwm+0x98>
     9ec:	1af3      	subs	r3, r6, r3
     9ee:	11b6      	asrs	r6, r6, #6
     9f0:	1934      	adds	r4, r6, r4
     9f2:	e798      	b.n	926 <sinpwm+0xaa>
     9f4:	11e5      	asrs	r5, r4, #7
     9f6:	1b5f      	subs	r7, r3, r5
     9f8:	e79b      	b.n	932 <sinpwm+0xb6>
     9fa:	2300      	movs	r3, #0
     9fc:	e79a      	b.n	934 <sinpwm+0xb8>
     9fe:	0037      	movs	r7, r6
     a00:	2301      	movs	r3, #1
     a02:	e797      	b.n	934 <sinpwm+0xb8>
     a04:	2302      	movs	r3, #2
     a06:	e795      	b.n	934 <sinpwm+0xb8>
     a08:	0037      	movs	r7, r6
     a0a:	2303      	movs	r3, #3
     a0c:	e792      	b.n	934 <sinpwm+0xb8>
     a0e:	2304      	movs	r3, #4
     a10:	e790      	b.n	934 <sinpwm+0xb8>
     a12:	0037      	movs	r7, r6
     a14:	2305      	movs	r3, #5
     a16:	e78d      	b.n	934 <sinpwm+0xb8>
     a18:	001f      	movs	r7, r3
     a1a:	2306      	movs	r3, #6
     a1c:	e78a      	b.n	934 <sinpwm+0xb8>
     a1e:	46c0      	nop			; (mov r8, r8)
     a20:	000022a0 	.word	0x000022a0
     a24:	00001288 	.word	0x00001288
     a28:	000002aa 	.word	0x000002aa
     a2c:	000005aa 	.word	0x000005aa
     a30:	00000455 	.word	0x00000455

00000a34 <svpwm>:
     a34:	b5f0      	push	{r4, r5, r6, r7, lr}
     a36:	464f      	mov	r7, r9
     a38:	4646      	mov	r6, r8
     a3a:	b4c0      	push	{r6, r7}
     a3c:	4bb2      	ldr	r3, [pc, #712]	; (d08 <svpwm+0x2d4>)
     a3e:	b091      	sub	sp, #68	; 0x44
     a40:	001c      	movs	r4, r3
     a42:	4694      	mov	ip, r2
     a44:	466a      	mov	r2, sp
     a46:	4699      	mov	r9, r3
     a48:	cca8      	ldmia	r4!, {r3, r5, r7}
     a4a:	c2a8      	stmia	r2!, {r3, r5, r7}
     a4c:	cca8      	ldmia	r4!, {r3, r5, r7}
     a4e:	c2a8      	stmia	r2!, {r3, r5, r7}
     a50:	cc28      	ldmia	r4!, {r3, r5}
     a52:	c228      	stmia	r2!, {r3, r5}
     a54:	464b      	mov	r3, r9
     a56:	aa08      	add	r2, sp, #32
     a58:	3320      	adds	r3, #32
     a5a:	4690      	mov	r8, r2
     a5c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a5e:	c2b0      	stmia	r2!, {r4, r5, r7}
     a60:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a62:	c2b0      	stmia	r2!, {r4, r5, r7}
     a64:	cb30      	ldmia	r3!, {r4, r5}
     a66:	c230      	stmia	r2!, {r4, r5}
     a68:	680a      	ldr	r2, [r1, #0]
     a6a:	684d      	ldr	r5, [r1, #4]
     a6c:	17d4      	asrs	r4, r2, #31
     a6e:	1913      	adds	r3, r2, r4
     a70:	466e      	mov	r6, sp
     a72:	4063      	eors	r3, r4
     a74:	2d00      	cmp	r5, #0
     a76:	dd78      	ble.n	b6a <svpwm+0x136>
     a78:	195f      	adds	r7, r3, r5
     a7a:	1aeb      	subs	r3, r5, r3
     a7c:	9d00      	ldr	r5, [sp, #0]
     a7e:	2b00      	cmp	r3, #0
     a80:	d100      	bne.n	a84 <svpwm+0x50>
     a82:	e130      	b.n	ce6 <svpwm+0x2b2>
     a84:	105c      	asrs	r4, r3, #1
     a86:	2b00      	cmp	r3, #0
     a88:	dd74      	ble.n	b74 <svpwm+0x140>
     a8a:	1079      	asrs	r1, r7, #1
     a8c:	1a5b      	subs	r3, r3, r1
     a8e:	6871      	ldr	r1, [r6, #4]
     a90:	19e4      	adds	r4, r4, r7
     a92:	4689      	mov	r9, r1
     a94:	444d      	add	r5, r9
     a96:	2b00      	cmp	r3, #0
     a98:	d100      	bne.n	a9c <svpwm+0x68>
     a9a:	e126      	b.n	cea <svpwm+0x2b6>
     a9c:	1099      	asrs	r1, r3, #2
     a9e:	2b00      	cmp	r3, #0
     aa0:	dd6e      	ble.n	b80 <svpwm+0x14c>
     aa2:	190f      	adds	r7, r1, r4
     aa4:	10a4      	asrs	r4, r4, #2
     aa6:	1b19      	subs	r1, r3, r4
     aa8:	68b3      	ldr	r3, [r6, #8]
     aaa:	4699      	mov	r9, r3
     aac:	444d      	add	r5, r9
     aae:	2900      	cmp	r1, #0
     ab0:	d100      	bne.n	ab4 <svpwm+0x80>
     ab2:	e11d      	b.n	cf0 <svpwm+0x2bc>
     ab4:	10cb      	asrs	r3, r1, #3
     ab6:	2900      	cmp	r1, #0
     ab8:	dd68      	ble.n	b8c <svpwm+0x158>
     aba:	10fc      	asrs	r4, r7, #3
     abc:	1b09      	subs	r1, r1, r4
     abe:	68f4      	ldr	r4, [r6, #12]
     ac0:	19db      	adds	r3, r3, r7
     ac2:	46a1      	mov	r9, r4
     ac4:	444d      	add	r5, r9
     ac6:	2900      	cmp	r1, #0
     ac8:	d100      	bne.n	acc <svpwm+0x98>
     aca:	e113      	b.n	cf4 <svpwm+0x2c0>
     acc:	110c      	asrs	r4, r1, #4
     ace:	2900      	cmp	r1, #0
     ad0:	dd62      	ble.n	b98 <svpwm+0x164>
     ad2:	18e7      	adds	r7, r4, r3
     ad4:	111b      	asrs	r3, r3, #4
     ad6:	1acc      	subs	r4, r1, r3
     ad8:	6933      	ldr	r3, [r6, #16]
     ada:	4699      	mov	r9, r3
     adc:	444d      	add	r5, r9
     ade:	2c00      	cmp	r4, #0
     ae0:	d100      	bne.n	ae4 <svpwm+0xb0>
     ae2:	e10a      	b.n	cfa <svpwm+0x2c6>
     ae4:	1163      	asrs	r3, r4, #5
     ae6:	2c00      	cmp	r4, #0
     ae8:	dd5c      	ble.n	ba4 <svpwm+0x170>
     aea:	1179      	asrs	r1, r7, #5
     aec:	1a61      	subs	r1, r4, r1
     aee:	6974      	ldr	r4, [r6, #20]
     af0:	19db      	adds	r3, r3, r7
     af2:	46a1      	mov	r9, r4
     af4:	444d      	add	r5, r9
     af6:	2900      	cmp	r1, #0
     af8:	d100      	bne.n	afc <svpwm+0xc8>
     afa:	e100      	b.n	cfe <svpwm+0x2ca>
     afc:	118c      	asrs	r4, r1, #6
     afe:	2900      	cmp	r1, #0
     b00:	dd56      	ble.n	bb0 <svpwm+0x17c>
     b02:	18e7      	adds	r7, r4, r3
     b04:	119b      	asrs	r3, r3, #6
     b06:	1ac9      	subs	r1, r1, r3
     b08:	69b3      	ldr	r3, [r6, #24]
     b0a:	4699      	mov	r9, r3
     b0c:	444d      	add	r5, r9
     b0e:	2900      	cmp	r1, #0
     b10:	d100      	bne.n	b14 <svpwm+0xe0>
     b12:	e0f7      	b.n	d04 <svpwm+0x2d0>
     b14:	dc00      	bgt.n	b18 <svpwm+0xe4>
     b16:	e0e1      	b.n	cdc <svpwm+0x2a8>
     b18:	69f3      	ldr	r3, [r6, #28]
     b1a:	11c9      	asrs	r1, r1, #7
     b1c:	19cf      	adds	r7, r1, r7
     b1e:	18ed      	adds	r5, r5, r3
     b20:	2307      	movs	r3, #7
     b22:	2a00      	cmp	r2, #0
     b24:	db1d      	blt.n	b62 <svpwm+0x12e>
     b26:	2d00      	cmp	r5, #0
     b28:	da03      	bge.n	b32 <svpwm+0xfe>
     b2a:	2280      	movs	r2, #128	; 0x80
     b2c:	00d2      	lsls	r2, r2, #3
     b2e:	4691      	mov	r9, r2
     b30:	444d      	add	r5, r9
     b32:	4642      	mov	r2, r8
     b34:	009b      	lsls	r3, r3, #2
     b36:	58d1      	ldr	r1, [r2, r3]
     b38:	23fa      	movs	r3, #250	; 0xfa
     b3a:	4379      	muls	r1, r7
     b3c:	4465      	add	r5, ip
     b3e:	05ad      	lsls	r5, r5, #22
     b40:	1509      	asrs	r1, r1, #20
     b42:	0dad      	lsrs	r5, r5, #22
     b44:	005b      	lsls	r3, r3, #1
     b46:	2600      	movs	r6, #0
     b48:	4299      	cmp	r1, r3
     b4a:	dd01      	ble.n	b50 <svpwm+0x11c>
     b4c:	0019      	movs	r1, r3
     b4e:	3601      	adds	r6, #1
     b50:	006a      	lsls	r2, r5, #1
     b52:	1952      	adds	r2, r2, r5
     b54:	1252      	asrs	r2, r2, #9
     b56:	2a05      	cmp	r2, #5
     b58:	d84b      	bhi.n	bf2 <svpwm+0x1be>
     b5a:	4b6c      	ldr	r3, [pc, #432]	; (d0c <svpwm+0x2d8>)
     b5c:	0092      	lsls	r2, r2, #2
     b5e:	589b      	ldr	r3, [r3, r2]
     b60:	469f      	mov	pc, r3
     b62:	2280      	movs	r2, #128	; 0x80
     b64:	0092      	lsls	r2, r2, #2
     b66:	1b55      	subs	r5, r2, r5
     b68:	e7dd      	b.n	b26 <svpwm+0xf2>
     b6a:	9900      	ldr	r1, [sp, #0]
     b6c:	1b5f      	subs	r7, r3, r5
     b6e:	195b      	adds	r3, r3, r5
     b70:	424d      	negs	r5, r1
     b72:	e784      	b.n	a7e <svpwm+0x4a>
     b74:	1079      	asrs	r1, r7, #1
     b76:	18cb      	adds	r3, r1, r3
     b78:	6871      	ldr	r1, [r6, #4]
     b7a:	1b3c      	subs	r4, r7, r4
     b7c:	1a6d      	subs	r5, r5, r1
     b7e:	e78a      	b.n	a96 <svpwm+0x62>
     b80:	1a67      	subs	r7, r4, r1
     b82:	10a1      	asrs	r1, r4, #2
     b84:	18c9      	adds	r1, r1, r3
     b86:	68b3      	ldr	r3, [r6, #8]
     b88:	1aed      	subs	r5, r5, r3
     b8a:	e790      	b.n	aae <svpwm+0x7a>
     b8c:	10fc      	asrs	r4, r7, #3
     b8e:	1861      	adds	r1, r4, r1
     b90:	68f4      	ldr	r4, [r6, #12]
     b92:	1afb      	subs	r3, r7, r3
     b94:	1b2d      	subs	r5, r5, r4
     b96:	e796      	b.n	ac6 <svpwm+0x92>
     b98:	1b1f      	subs	r7, r3, r4
     b9a:	111c      	asrs	r4, r3, #4
     b9c:	6933      	ldr	r3, [r6, #16]
     b9e:	1864      	adds	r4, r4, r1
     ba0:	1aed      	subs	r5, r5, r3
     ba2:	e79c      	b.n	ade <svpwm+0xaa>
     ba4:	1179      	asrs	r1, r7, #5
     ba6:	1909      	adds	r1, r1, r4
     ba8:	6974      	ldr	r4, [r6, #20]
     baa:	1afb      	subs	r3, r7, r3
     bac:	1b2d      	subs	r5, r5, r4
     bae:	e7a2      	b.n	af6 <svpwm+0xc2>
     bb0:	1b1f      	subs	r7, r3, r4
     bb2:	119b      	asrs	r3, r3, #6
     bb4:	1859      	adds	r1, r3, r1
     bb6:	69b3      	ldr	r3, [r6, #24]
     bb8:	1aed      	subs	r5, r5, r3
     bba:	e7a8      	b.n	b0e <svpwm+0xda>
     bbc:	4b54      	ldr	r3, [pc, #336]	; (d10 <svpwm+0x2dc>)
     bbe:	4a55      	ldr	r2, [pc, #340]	; (d14 <svpwm+0x2e0>)
     bc0:	1b5b      	subs	r3, r3, r5
     bc2:	3556      	adds	r5, #86	; 0x56
     bc4:	059b      	lsls	r3, r3, #22
     bc6:	05ad      	lsls	r5, r5, #22
     bc8:	0d1b      	lsrs	r3, r3, #20
     bca:	0d2d      	lsrs	r5, r5, #20
     bcc:	589b      	ldr	r3, [r3, r2]
     bce:	58ac      	ldr	r4, [r5, r2]
     bd0:	434b      	muls	r3, r1
     bd2:	434c      	muls	r4, r1
     bd4:	129b      	asrs	r3, r3, #10
     bd6:	12a1      	asrs	r1, r4, #10
     bd8:	1aca      	subs	r2, r1, r3
     bda:	6002      	str	r2, [r0, #0]
     bdc:	425a      	negs	r2, r3
     bde:	1a52      	subs	r2, r2, r1
     be0:	1859      	adds	r1, r3, r1
     be2:	6042      	str	r2, [r0, #4]
     be4:	6081      	str	r1, [r0, #8]
     be6:	0030      	movs	r0, r6
     be8:	b011      	add	sp, #68	; 0x44
     bea:	bc0c      	pop	{r2, r3}
     bec:	4690      	mov	r8, r2
     bee:	4699      	mov	r9, r3
     bf0:	bdf0      	pop	{r4, r5, r6, r7, pc}
     bf2:	4b49      	ldr	r3, [pc, #292]	; (d18 <svpwm+0x2e4>)
     bf4:	4c47      	ldr	r4, [pc, #284]	; (d14 <svpwm+0x2e0>)
     bf6:	1b5b      	subs	r3, r3, r5
     bf8:	059b      	lsls	r3, r3, #22
     bfa:	0d1b      	lsrs	r3, r3, #20
     bfc:	591a      	ldr	r2, [r3, r4]
     bfe:	23c0      	movs	r3, #192	; 0xc0
     c00:	009b      	lsls	r3, r3, #2
     c02:	469c      	mov	ip, r3
     c04:	4465      	add	r5, ip
     c06:	05ad      	lsls	r5, r5, #22
     c08:	0d2d      	lsrs	r5, r5, #20
     c0a:	592c      	ldr	r4, [r5, r4]
     c0c:	434a      	muls	r2, r1
     c0e:	4361      	muls	r1, r4
     c10:	1292      	asrs	r2, r2, #10
     c12:	1289      	asrs	r1, r1, #10
     c14:	1853      	adds	r3, r2, r1
     c16:	6003      	str	r3, [r0, #0]
     c18:	1a8b      	subs	r3, r1, r2
     c1a:	4252      	negs	r2, r2
     c1c:	1a52      	subs	r2, r2, r1
     c1e:	6043      	str	r3, [r0, #4]
     c20:	6082      	str	r2, [r0, #8]
     c22:	e7e0      	b.n	be6 <svpwm+0x1b2>
     c24:	4b3d      	ldr	r3, [pc, #244]	; (d1c <svpwm+0x2e8>)
     c26:	4a3b      	ldr	r2, [pc, #236]	; (d14 <svpwm+0x2e0>)
     c28:	1b5b      	subs	r3, r3, r5
     c2a:	059b      	lsls	r3, r3, #22
     c2c:	0d1b      	lsrs	r3, r3, #20
     c2e:	589f      	ldr	r7, [r3, r2]
     c30:	4b3b      	ldr	r3, [pc, #236]	; (d20 <svpwm+0x2ec>)
     c32:	434f      	muls	r7, r1
     c34:	469c      	mov	ip, r3
     c36:	4465      	add	r5, ip
     c38:	05ad      	lsls	r5, r5, #22
     c3a:	0d2d      	lsrs	r5, r5, #20
     c3c:	58ac      	ldr	r4, [r5, r2]
     c3e:	12bf      	asrs	r7, r7, #10
     c40:	4361      	muls	r1, r4
     c42:	1289      	asrs	r1, r1, #10
     c44:	1a7b      	subs	r3, r7, r1
     c46:	6003      	str	r3, [r0, #0]
     c48:	187b      	adds	r3, r7, r1
     c4a:	427f      	negs	r7, r7
     c4c:	1a7f      	subs	r7, r7, r1
     c4e:	6043      	str	r3, [r0, #4]
     c50:	6087      	str	r7, [r0, #8]
     c52:	e7c8      	b.n	be6 <svpwm+0x1b2>
     c54:	4b33      	ldr	r3, [pc, #204]	; (d24 <svpwm+0x2f0>)
     c56:	4a2f      	ldr	r2, [pc, #188]	; (d14 <svpwm+0x2e0>)
     c58:	1b5b      	subs	r3, r3, r5
     c5a:	35ac      	adds	r5, #172	; 0xac
     c5c:	059b      	lsls	r3, r3, #22
     c5e:	35ff      	adds	r5, #255	; 0xff
     c60:	0d1b      	lsrs	r3, r3, #20
     c62:	05ad      	lsls	r5, r5, #22
     c64:	589b      	ldr	r3, [r3, r2]
     c66:	0d2d      	lsrs	r5, r5, #20
     c68:	58ac      	ldr	r4, [r5, r2]
     c6a:	434b      	muls	r3, r1
     c6c:	4361      	muls	r1, r4
     c6e:	129b      	asrs	r3, r3, #10
     c70:	1289      	asrs	r1, r1, #10
     c72:	425a      	negs	r2, r3
     c74:	1a52      	subs	r2, r2, r1
     c76:	6002      	str	r2, [r0, #0]
     c78:	185a      	adds	r2, r3, r1
     c7a:	1ac9      	subs	r1, r1, r3
     c7c:	6042      	str	r2, [r0, #4]
     c7e:	6081      	str	r1, [r0, #8]
     c80:	e7b1      	b.n	be6 <svpwm+0x1b2>
     c82:	4b29      	ldr	r3, [pc, #164]	; (d28 <svpwm+0x2f4>)
     c84:	4a23      	ldr	r2, [pc, #140]	; (d14 <svpwm+0x2e0>)
     c86:	1b5b      	subs	r3, r3, r5
     c88:	3501      	adds	r5, #1
     c8a:	059b      	lsls	r3, r3, #22
     c8c:	35ff      	adds	r5, #255	; 0xff
     c8e:	0d1b      	lsrs	r3, r3, #20
     c90:	05ad      	lsls	r5, r5, #22
     c92:	589b      	ldr	r3, [r3, r2]
     c94:	0d2d      	lsrs	r5, r5, #20
     c96:	58ac      	ldr	r4, [r5, r2]
     c98:	434b      	muls	r3, r1
     c9a:	434c      	muls	r4, r1
     c9c:	129b      	asrs	r3, r3, #10
     c9e:	12a1      	asrs	r1, r4, #10
     ca0:	425a      	negs	r2, r3
     ca2:	1a52      	subs	r2, r2, r1
     ca4:	6002      	str	r2, [r0, #0]
     ca6:	1a5a      	subs	r2, r3, r1
     ca8:	1859      	adds	r1, r3, r1
     caa:	6042      	str	r2, [r0, #4]
     cac:	6081      	str	r1, [r0, #8]
     cae:	e79a      	b.n	be6 <svpwm+0x1b2>
     cb0:	4b1e      	ldr	r3, [pc, #120]	; (d2c <svpwm+0x2f8>)
     cb2:	4a18      	ldr	r2, [pc, #96]	; (d14 <svpwm+0x2e0>)
     cb4:	1b5b      	subs	r3, r3, r5
     cb6:	3d55      	subs	r5, #85	; 0x55
     cb8:	059b      	lsls	r3, r3, #22
     cba:	05ad      	lsls	r5, r5, #22
     cbc:	0d1b      	lsrs	r3, r3, #20
     cbe:	0d2d      	lsrs	r5, r5, #20
     cc0:	589b      	ldr	r3, [r3, r2]
     cc2:	58ac      	ldr	r4, [r5, r2]
     cc4:	434b      	muls	r3, r1
     cc6:	4361      	muls	r1, r4
     cc8:	129b      	asrs	r3, r3, #10
     cca:	1289      	asrs	r1, r1, #10
     ccc:	185a      	adds	r2, r3, r1
     cce:	6002      	str	r2, [r0, #0]
     cd0:	425a      	negs	r2, r3
     cd2:	1a52      	subs	r2, r2, r1
     cd4:	1a59      	subs	r1, r3, r1
     cd6:	6042      	str	r2, [r0, #4]
     cd8:	6081      	str	r1, [r0, #8]
     cda:	e784      	b.n	be6 <svpwm+0x1b2>
     cdc:	69f3      	ldr	r3, [r6, #28]
     cde:	11cc      	asrs	r4, r1, #7
     ce0:	1b3f      	subs	r7, r7, r4
     ce2:	1aed      	subs	r5, r5, r3
     ce4:	e71c      	b.n	b20 <svpwm+0xec>
     ce6:	2300      	movs	r3, #0
     ce8:	e71b      	b.n	b22 <svpwm+0xee>
     cea:	0027      	movs	r7, r4
     cec:	2301      	movs	r3, #1
     cee:	e718      	b.n	b22 <svpwm+0xee>
     cf0:	2302      	movs	r3, #2
     cf2:	e716      	b.n	b22 <svpwm+0xee>
     cf4:	001f      	movs	r7, r3
     cf6:	2303      	movs	r3, #3
     cf8:	e713      	b.n	b22 <svpwm+0xee>
     cfa:	2304      	movs	r3, #4
     cfc:	e711      	b.n	b22 <svpwm+0xee>
     cfe:	001f      	movs	r7, r3
     d00:	2305      	movs	r3, #5
     d02:	e70e      	b.n	b22 <svpwm+0xee>
     d04:	2306      	movs	r3, #6
     d06:	e70c      	b.n	b22 <svpwm+0xee>
     d08:	000022a0 	.word	0x000022a0
     d0c:	00002288 	.word	0x00002288
     d10:	00000a54 	.word	0x00000a54
     d14:	00001288 	.word	0x00001288
     d18:	000007aa 	.word	0x000007aa
     d1c:	00000854 	.word	0x00000854
     d20:	00000256 	.word	0x00000256
     d24:	000008ff 	.word	0x000008ff
     d28:	000009aa 	.word	0x000009aa
     d2c:	00000aff 	.word	0x00000aff

00000d30 <get_speed>:
     d30:	4a0f      	ldr	r2, [pc, #60]	; (d70 <get_speed+0x40>)
     d32:	b510      	push	{r4, lr}
     d34:	6813      	ldr	r3, [r2, #0]
     d36:	6854      	ldr	r4, [r2, #4]
     d38:	1ac3      	subs	r3, r0, r3
     d3a:	6050      	str	r0, [r2, #4]
     d3c:	6014      	str	r4, [r2, #0]
     d3e:	17da      	asrs	r2, r3, #31
     d40:	1898      	adds	r0, r3, r2
     d42:	4050      	eors	r0, r2
     d44:	22fa      	movs	r2, #250	; 0xfa
     d46:	0092      	lsls	r2, r2, #2
     d48:	4290      	cmp	r0, r2
     d4a:	dd04      	ble.n	d56 <get_speed+0x26>
     d4c:	2b00      	cmp	r3, #0
     d4e:	db0a      	blt.n	d66 <get_speed+0x36>
     d50:	4a08      	ldr	r2, [pc, #32]	; (d74 <get_speed+0x44>)
     d52:	4694      	mov	ip, r2
     d54:	4463      	add	r3, ip
     d56:	680a      	ldr	r2, [r1, #0]
     d58:	4807      	ldr	r0, [pc, #28]	; (d78 <get_speed+0x48>)
     d5a:	18d2      	adds	r2, r2, r3
     d5c:	105b      	asrs	r3, r3, #1
     d5e:	4343      	muls	r3, r0
     d60:	600a      	str	r2, [r1, #0]
     d62:	1318      	asrs	r0, r3, #12
     d64:	bd10      	pop	{r4, pc}
     d66:	2280      	movs	r2, #128	; 0x80
     d68:	0152      	lsls	r2, r2, #5
     d6a:	4694      	mov	ip, r2
     d6c:	4463      	add	r3, ip
     d6e:	e7f2      	b.n	d56 <get_speed+0x26>
     d70:	2000004c 	.word	0x2000004c
     d74:	fffff000 	.word	0xfffff000
     d78:	0002ae7c 	.word	0x0002ae7c

00000d7c <mfilter>:
     d7c:	221f      	movs	r2, #31
     d7e:	4908      	ldr	r1, [pc, #32]	; (da0 <mfilter+0x24>)
     d80:	b510      	push	{r4, lr}
     d82:	688b      	ldr	r3, [r1, #8]
     d84:	3301      	adds	r3, #1
     d86:	4013      	ands	r3, r2
     d88:	608b      	str	r3, [r1, #8]
     d8a:	009b      	lsls	r3, r3, #2
     d8c:	18cb      	adds	r3, r1, r3
     d8e:	68ca      	ldr	r2, [r1, #12]
     d90:	691c      	ldr	r4, [r3, #16]
     d92:	6118      	str	r0, [r3, #16]
     d94:	1b12      	subs	r2, r2, r4
     d96:	1812      	adds	r2, r2, r0
     d98:	1150      	asrs	r0, r2, #5
     d9a:	60ca      	str	r2, [r1, #12]
     d9c:	bd10      	pop	{r4, pc}
     d9e:	46c0      	nop			; (mov r8, r8)
     da0:	2000004c 	.word	0x2000004c

00000da4 <NVIC_EnableIRQ>:
     da4:	b580      	push	{r7, lr}
     da6:	b082      	sub	sp, #8
     da8:	af00      	add	r7, sp, #0
     daa:	0002      	movs	r2, r0
     dac:	1dfb      	adds	r3, r7, #7
     dae:	701a      	strb	r2, [r3, #0]
     db0:	4909      	ldr	r1, [pc, #36]	; (dd8 <NVIC_EnableIRQ+0x34>)
     db2:	1dfb      	adds	r3, r7, #7
     db4:	781b      	ldrb	r3, [r3, #0]
     db6:	b25b      	sxtb	r3, r3
     db8:	095b      	lsrs	r3, r3, #5
     dba:	1dfa      	adds	r2, r7, #7
     dbc:	7812      	ldrb	r2, [r2, #0]
     dbe:	0010      	movs	r0, r2
     dc0:	221f      	movs	r2, #31
     dc2:	4002      	ands	r2, r0
     dc4:	2001      	movs	r0, #1
     dc6:	4090      	lsls	r0, r2
     dc8:	0002      	movs	r2, r0
     dca:	009b      	lsls	r3, r3, #2
     dcc:	505a      	str	r2, [r3, r1]
     dce:	46c0      	nop			; (mov r8, r8)
     dd0:	46bd      	mov	sp, r7
     dd2:	b002      	add	sp, #8
     dd4:	bd80      	pop	{r7, pc}
     dd6:	46c0      	nop			; (mov r8, r8)
     dd8:	e000e100 	.word	0xe000e100

00000ddc <PortConfig>:
     ddc:	b580      	push	{r7, lr}
     dde:	af00      	add	r7, sp, #0
     de0:	4b42      	ldr	r3, [pc, #264]	; (eec <PortConfig+0x110>)
     de2:	4a42      	ldr	r2, [pc, #264]	; (eec <PortConfig+0x110>)
     de4:	69d2      	ldr	r2, [r2, #28]
     de6:	2180      	movs	r1, #128	; 0x80
     de8:	0389      	lsls	r1, r1, #14
     dea:	430a      	orrs	r2, r1
     dec:	61da      	str	r2, [r3, #28]
     dee:	4b40      	ldr	r3, [pc, #256]	; (ef0 <PortConfig+0x114>)
     df0:	4a3f      	ldr	r2, [pc, #252]	; (ef0 <PortConfig+0x114>)
     df2:	6892      	ldr	r2, [r2, #8]
     df4:	493f      	ldr	r1, [pc, #252]	; (ef4 <PortConfig+0x118>)
     df6:	400a      	ands	r2, r1
     df8:	609a      	str	r2, [r3, #8]
     dfa:	4b3d      	ldr	r3, [pc, #244]	; (ef0 <PortConfig+0x114>)
     dfc:	4a3c      	ldr	r2, [pc, #240]	; (ef0 <PortConfig+0x114>)
     dfe:	6892      	ldr	r2, [r2, #8]
     e00:	493d      	ldr	r1, [pc, #244]	; (ef8 <PortConfig+0x11c>)
     e02:	430a      	orrs	r2, r1
     e04:	609a      	str	r2, [r3, #8]
     e06:	4b3a      	ldr	r3, [pc, #232]	; (ef0 <PortConfig+0x114>)
     e08:	4a39      	ldr	r2, [pc, #228]	; (ef0 <PortConfig+0x114>)
     e0a:	6852      	ldr	r2, [r2, #4]
     e0c:	21fc      	movs	r1, #252	; 0xfc
     e0e:	0109      	lsls	r1, r1, #4
     e10:	430a      	orrs	r2, r1
     e12:	605a      	str	r2, [r3, #4]
     e14:	4b36      	ldr	r3, [pc, #216]	; (ef0 <PortConfig+0x114>)
     e16:	4a36      	ldr	r2, [pc, #216]	; (ef0 <PortConfig+0x114>)
     e18:	68d2      	ldr	r2, [r2, #12]
     e1a:	21fc      	movs	r1, #252	; 0xfc
     e1c:	0109      	lsls	r1, r1, #4
     e1e:	430a      	orrs	r2, r1
     e20:	60da      	str	r2, [r3, #12]
     e22:	4b33      	ldr	r3, [pc, #204]	; (ef0 <PortConfig+0x114>)
     e24:	4a32      	ldr	r2, [pc, #200]	; (ef0 <PortConfig+0x114>)
     e26:	6992      	ldr	r2, [r2, #24]
     e28:	4934      	ldr	r1, [pc, #208]	; (efc <PortConfig+0x120>)
     e2a:	430a      	orrs	r2, r1
     e2c:	619a      	str	r2, [r3, #24]
     e2e:	4b2f      	ldr	r3, [pc, #188]	; (eec <PortConfig+0x110>)
     e30:	4a2e      	ldr	r2, [pc, #184]	; (eec <PortConfig+0x110>)
     e32:	69d2      	ldr	r2, [r2, #28]
     e34:	2180      	movs	r1, #128	; 0x80
     e36:	0489      	lsls	r1, r1, #18
     e38:	430a      	orrs	r2, r1
     e3a:	61da      	str	r2, [r3, #28]
     e3c:	4b30      	ldr	r3, [pc, #192]	; (f00 <PortConfig+0x124>)
     e3e:	4a30      	ldr	r2, [pc, #192]	; (f00 <PortConfig+0x124>)
     e40:	68d2      	ldr	r2, [r2, #12]
     e42:	2102      	movs	r1, #2
     e44:	438a      	bics	r2, r1
     e46:	60da      	str	r2, [r3, #12]
     e48:	4b28      	ldr	r3, [pc, #160]	; (eec <PortConfig+0x110>)
     e4a:	4a28      	ldr	r2, [pc, #160]	; (eec <PortConfig+0x110>)
     e4c:	69d2      	ldr	r2, [r2, #28]
     e4e:	2180      	movs	r1, #128	; 0x80
     e50:	0449      	lsls	r1, r1, #17
     e52:	430a      	orrs	r2, r1
     e54:	61da      	str	r2, [r3, #28]
     e56:	4b2b      	ldr	r3, [pc, #172]	; (f04 <PortConfig+0x128>)
     e58:	4a2a      	ldr	r2, [pc, #168]	; (f04 <PortConfig+0x128>)
     e5a:	6892      	ldr	r2, [r2, #8]
     e5c:	492a      	ldr	r1, [pc, #168]	; (f08 <PortConfig+0x12c>)
     e5e:	400a      	ands	r2, r1
     e60:	609a      	str	r2, [r3, #8]
     e62:	4b28      	ldr	r3, [pc, #160]	; (f04 <PortConfig+0x128>)
     e64:	4a27      	ldr	r2, [pc, #156]	; (f04 <PortConfig+0x128>)
     e66:	6892      	ldr	r2, [r2, #8]
     e68:	21a0      	movs	r1, #160	; 0xa0
     e6a:	02c9      	lsls	r1, r1, #11
     e6c:	430a      	orrs	r2, r1
     e6e:	609a      	str	r2, [r3, #8]
     e70:	4b24      	ldr	r3, [pc, #144]	; (f04 <PortConfig+0x128>)
     e72:	4a24      	ldr	r2, [pc, #144]	; (f04 <PortConfig+0x128>)
     e74:	68d2      	ldr	r2, [r2, #12]
     e76:	21c0      	movs	r1, #192	; 0xc0
     e78:	0089      	lsls	r1, r1, #2
     e7a:	430a      	orrs	r2, r1
     e7c:	60da      	str	r2, [r3, #12]
     e7e:	4b21      	ldr	r3, [pc, #132]	; (f04 <PortConfig+0x128>)
     e80:	4a20      	ldr	r2, [pc, #128]	; (f04 <PortConfig+0x128>)
     e82:	6992      	ldr	r2, [r2, #24]
     e84:	21c0      	movs	r1, #192	; 0xc0
     e86:	0309      	lsls	r1, r1, #12
     e88:	430a      	orrs	r2, r1
     e8a:	619a      	str	r2, [r3, #24]
     e8c:	4b1d      	ldr	r3, [pc, #116]	; (f04 <PortConfig+0x128>)
     e8e:	4a1d      	ldr	r2, [pc, #116]	; (f04 <PortConfig+0x128>)
     e90:	6852      	ldr	r2, [r2, #4]
     e92:	2180      	movs	r1, #128	; 0x80
     e94:	0089      	lsls	r1, r1, #2
     e96:	430a      	orrs	r2, r1
     e98:	605a      	str	r2, [r3, #4]
     e9a:	4b1a      	ldr	r3, [pc, #104]	; (f04 <PortConfig+0x128>)
     e9c:	4a19      	ldr	r2, [pc, #100]	; (f04 <PortConfig+0x128>)
     e9e:	6852      	ldr	r2, [r2, #4]
     ea0:	491a      	ldr	r1, [pc, #104]	; (f0c <PortConfig+0x130>)
     ea2:	400a      	ands	r2, r1
     ea4:	605a      	str	r2, [r3, #4]
     ea6:	4b11      	ldr	r3, [pc, #68]	; (eec <PortConfig+0x110>)
     ea8:	4a10      	ldr	r2, [pc, #64]	; (eec <PortConfig+0x110>)
     eaa:	69d2      	ldr	r2, [r2, #28]
     eac:	2180      	movs	r1, #128	; 0x80
     eae:	0409      	lsls	r1, r1, #16
     eb0:	430a      	orrs	r2, r1
     eb2:	61da      	str	r2, [r3, #28]
     eb4:	4b16      	ldr	r3, [pc, #88]	; (f10 <PortConfig+0x134>)
     eb6:	2200      	movs	r2, #0
     eb8:	609a      	str	r2, [r3, #8]
     eba:	4b15      	ldr	r3, [pc, #84]	; (f10 <PortConfig+0x134>)
     ebc:	2200      	movs	r2, #0
     ebe:	601a      	str	r2, [r3, #0]
     ec0:	4b13      	ldr	r3, [pc, #76]	; (f10 <PortConfig+0x134>)
     ec2:	4a13      	ldr	r2, [pc, #76]	; (f10 <PortConfig+0x134>)
     ec4:	6852      	ldr	r2, [r2, #4]
     ec6:	2160      	movs	r1, #96	; 0x60
     ec8:	430a      	orrs	r2, r1
     eca:	605a      	str	r2, [r3, #4]
     ecc:	4b10      	ldr	r3, [pc, #64]	; (f10 <PortConfig+0x134>)
     ece:	4a10      	ldr	r2, [pc, #64]	; (f10 <PortConfig+0x134>)
     ed0:	68d2      	ldr	r2, [r2, #12]
     ed2:	2160      	movs	r1, #96	; 0x60
     ed4:	430a      	orrs	r2, r1
     ed6:	60da      	str	r2, [r3, #12]
     ed8:	4b0d      	ldr	r3, [pc, #52]	; (f10 <PortConfig+0x134>)
     eda:	4a0d      	ldr	r2, [pc, #52]	; (f10 <PortConfig+0x134>)
     edc:	6992      	ldr	r2, [r2, #24]
     ede:	21f0      	movs	r1, #240	; 0xf0
     ee0:	0189      	lsls	r1, r1, #6
     ee2:	430a      	orrs	r2, r1
     ee4:	619a      	str	r2, [r3, #24]
     ee6:	46c0      	nop			; (mov r8, r8)
     ee8:	46bd      	mov	sp, r7
     eea:	bd80      	pop	{r7, pc}
     eec:	40020000 	.word	0x40020000
     ef0:	400a8000 	.word	0x400a8000
     ef4:	ff000fff 	.word	0xff000fff
     ef8:	00aaa000 	.word	0x00aaa000
     efc:	00fff000 	.word	0x00fff000
     f00:	400c8000 	.word	0x400c8000
     f04:	400c0000 	.word	0x400c0000
     f08:	fff0ffff 	.word	0xfff0ffff
     f0c:	fffffeff 	.word	0xfffffeff
     f10:	400b8000 	.word	0x400b8000

00000f14 <ClkConfig>:
     f14:	b580      	push	{r7, lr}
     f16:	af00      	add	r7, sp, #0
     f18:	4b18      	ldr	r3, [pc, #96]	; (f7c <ClkConfig+0x68>)
     f1a:	4a18      	ldr	r2, [pc, #96]	; (f7c <ClkConfig+0x68>)
     f1c:	6892      	ldr	r2, [r2, #8]
     f1e:	2101      	movs	r1, #1
     f20:	430a      	orrs	r2, r1
     f22:	609a      	str	r2, [r3, #8]
     f24:	46c0      	nop			; (mov r8, r8)
     f26:	4b15      	ldr	r3, [pc, #84]	; (f7c <ClkConfig+0x68>)
     f28:	681b      	ldr	r3, [r3, #0]
     f2a:	2204      	movs	r2, #4
     f2c:	4013      	ands	r3, r2
     f2e:	d0fa      	beq.n	f26 <ClkConfig+0x12>
     f30:	4b12      	ldr	r3, [pc, #72]	; (f7c <ClkConfig+0x68>)
     f32:	4a12      	ldr	r2, [pc, #72]	; (f7c <ClkConfig+0x68>)
     f34:	68d2      	ldr	r2, [r2, #12]
     f36:	2102      	movs	r1, #2
     f38:	430a      	orrs	r2, r1
     f3a:	60da      	str	r2, [r3, #12]
     f3c:	4b0f      	ldr	r3, [pc, #60]	; (f7c <ClkConfig+0x68>)
     f3e:	4a10      	ldr	r2, [pc, #64]	; (f80 <ClkConfig+0x6c>)
     f40:	605a      	str	r2, [r3, #4]
     f42:	46c0      	nop			; (mov r8, r8)
     f44:	4b0d      	ldr	r3, [pc, #52]	; (f7c <ClkConfig+0x68>)
     f46:	681b      	ldr	r3, [r3, #0]
     f48:	2202      	movs	r2, #2
     f4a:	4013      	ands	r3, r2
     f4c:	d0fa      	beq.n	f44 <ClkConfig+0x30>
     f4e:	4b0d      	ldr	r3, [pc, #52]	; (f84 <ClkConfig+0x70>)
     f50:	4a0c      	ldr	r2, [pc, #48]	; (f84 <ClkConfig+0x70>)
     f52:	6812      	ldr	r2, [r2, #0]
     f54:	2120      	movs	r1, #32
     f56:	430a      	orrs	r2, r1
     f58:	601a      	str	r2, [r3, #0]
     f5a:	4b08      	ldr	r3, [pc, #32]	; (f7c <ClkConfig+0x68>)
     f5c:	4a07      	ldr	r2, [pc, #28]	; (f7c <ClkConfig+0x68>)
     f5e:	68d2      	ldr	r2, [r2, #12]
     f60:	2180      	movs	r1, #128	; 0x80
     f62:	0049      	lsls	r1, r1, #1
     f64:	430a      	orrs	r2, r1
     f66:	60da      	str	r2, [r3, #12]
     f68:	4b04      	ldr	r3, [pc, #16]	; (f7c <ClkConfig+0x68>)
     f6a:	4a04      	ldr	r2, [pc, #16]	; (f7c <ClkConfig+0x68>)
     f6c:	68d2      	ldr	r2, [r2, #12]
     f6e:	2104      	movs	r1, #4
     f70:	430a      	orrs	r2, r1
     f72:	60da      	str	r2, [r3, #12]
     f74:	46c0      	nop			; (mov r8, r8)
     f76:	46bd      	mov	sp, r7
     f78:	bd80      	pop	{r7, pc}
     f7a:	46c0      	nop			; (mov r8, r8)
     f7c:	40020000 	.word	0x40020000
     f80:	00000e04 	.word	0x00000e04
     f84:	40018000 	.word	0x40018000

00000f88 <TimerConfig>:
     f88:	b580      	push	{r7, lr}
     f8a:	af00      	add	r7, sp, #0
     f8c:	4b72      	ldr	r3, [pc, #456]	; (1158 <TimerConfig+0x1d0>)
     f8e:	4a72      	ldr	r2, [pc, #456]	; (1158 <TimerConfig+0x1d0>)
     f90:	69d2      	ldr	r2, [r2, #28]
     f92:	2180      	movs	r1, #128	; 0x80
     f94:	0309      	lsls	r1, r1, #12
     f96:	430a      	orrs	r2, r1
     f98:	61da      	str	r2, [r3, #28]
     f9a:	4b6f      	ldr	r3, [pc, #444]	; (1158 <TimerConfig+0x1d0>)
     f9c:	4a6e      	ldr	r2, [pc, #440]	; (1158 <TimerConfig+0x1d0>)
     f9e:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fa0:	2180      	movs	r1, #128	; 0x80
     fa2:	04c9      	lsls	r1, r1, #19
     fa4:	430a      	orrs	r2, r1
     fa6:	629a      	str	r2, [r3, #40]	; 0x28
     fa8:	4b6b      	ldr	r3, [pc, #428]	; (1158 <TimerConfig+0x1d0>)
     faa:	4a6b      	ldr	r2, [pc, #428]	; (1158 <TimerConfig+0x1d0>)
     fac:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fae:	496b      	ldr	r1, [pc, #428]	; (115c <TimerConfig+0x1d4>)
     fb0:	400a      	ands	r2, r1
     fb2:	629a      	str	r2, [r3, #40]	; 0x28
     fb4:	4b6a      	ldr	r3, [pc, #424]	; (1160 <TimerConfig+0x1d8>)
     fb6:	2200      	movs	r2, #0
     fb8:	601a      	str	r2, [r3, #0]
     fba:	4b69      	ldr	r3, [pc, #420]	; (1160 <TimerConfig+0x1d8>)
     fbc:	2204      	movs	r2, #4
     fbe:	605a      	str	r2, [r3, #4]
     fc0:	4b67      	ldr	r3, [pc, #412]	; (1160 <TimerConfig+0x1d8>)
     fc2:	4a68      	ldr	r2, [pc, #416]	; (1164 <TimerConfig+0x1dc>)
     fc4:	609a      	str	r2, [r3, #8]
     fc6:	4b66      	ldr	r3, [pc, #408]	; (1160 <TimerConfig+0x1d8>)
     fc8:	2280      	movs	r2, #128	; 0x80
     fca:	0092      	lsls	r2, r2, #2
     fcc:	611a      	str	r2, [r3, #16]
     fce:	4b64      	ldr	r3, [pc, #400]	; (1160 <TimerConfig+0x1d8>)
     fd0:	2280      	movs	r2, #128	; 0x80
     fd2:	0092      	lsls	r2, r2, #2
     fd4:	615a      	str	r2, [r3, #20]
     fd6:	4b62      	ldr	r3, [pc, #392]	; (1160 <TimerConfig+0x1d8>)
     fd8:	2280      	movs	r2, #128	; 0x80
     fda:	0092      	lsls	r2, r2, #2
     fdc:	619a      	str	r2, [r3, #24]
     fde:	4b60      	ldr	r3, [pc, #384]	; (1160 <TimerConfig+0x1d8>)
     fe0:	4a5f      	ldr	r2, [pc, #380]	; (1160 <TimerConfig+0x1d8>)
     fe2:	6a12      	ldr	r2, [r2, #32]
     fe4:	4960      	ldr	r1, [pc, #384]	; (1168 <TimerConfig+0x1e0>)
     fe6:	400a      	ands	r2, r1
     fe8:	621a      	str	r2, [r3, #32]
     fea:	4b5d      	ldr	r3, [pc, #372]	; (1160 <TimerConfig+0x1d8>)
     fec:	4a5c      	ldr	r2, [pc, #368]	; (1160 <TimerConfig+0x1d8>)
     fee:	6a12      	ldr	r2, [r2, #32]
     ff0:	21e0      	movs	r1, #224	; 0xe0
     ff2:	0109      	lsls	r1, r1, #4
     ff4:	430a      	orrs	r2, r1
     ff6:	621a      	str	r2, [r3, #32]
     ff8:	4b59      	ldr	r3, [pc, #356]	; (1160 <TimerConfig+0x1d8>)
     ffa:	4a59      	ldr	r2, [pc, #356]	; (1160 <TimerConfig+0x1d8>)
     ffc:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ffe:	210f      	movs	r1, #15
    1000:	438a      	bics	r2, r1
    1002:	631a      	str	r2, [r3, #48]	; 0x30
    1004:	4b56      	ldr	r3, [pc, #344]	; (1160 <TimerConfig+0x1d8>)
    1006:	4a56      	ldr	r2, [pc, #344]	; (1160 <TimerConfig+0x1d8>)
    1008:	6b12      	ldr	r2, [r2, #48]	; 0x30
    100a:	210c      	movs	r1, #12
    100c:	430a      	orrs	r2, r1
    100e:	631a      	str	r2, [r3, #48]	; 0x30
    1010:	4b53      	ldr	r3, [pc, #332]	; (1160 <TimerConfig+0x1d8>)
    1012:	4a53      	ldr	r2, [pc, #332]	; (1160 <TimerConfig+0x1d8>)
    1014:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1016:	2101      	movs	r1, #1
    1018:	430a      	orrs	r2, r1
    101a:	631a      	str	r2, [r3, #48]	; 0x30
    101c:	4b50      	ldr	r3, [pc, #320]	; (1160 <TimerConfig+0x1d8>)
    101e:	4a50      	ldr	r2, [pc, #320]	; (1160 <TimerConfig+0x1d8>)
    1020:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1022:	4952      	ldr	r1, [pc, #328]	; (116c <TimerConfig+0x1e4>)
    1024:	400a      	ands	r2, r1
    1026:	631a      	str	r2, [r3, #48]	; 0x30
    1028:	4b4d      	ldr	r3, [pc, #308]	; (1160 <TimerConfig+0x1d8>)
    102a:	4a4d      	ldr	r2, [pc, #308]	; (1160 <TimerConfig+0x1d8>)
    102c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    102e:	21c0      	movs	r1, #192	; 0xc0
    1030:	0109      	lsls	r1, r1, #4
    1032:	430a      	orrs	r2, r1
    1034:	631a      	str	r2, [r3, #48]	; 0x30
    1036:	4b4a      	ldr	r3, [pc, #296]	; (1160 <TimerConfig+0x1d8>)
    1038:	4a49      	ldr	r2, [pc, #292]	; (1160 <TimerConfig+0x1d8>)
    103a:	6b12      	ldr	r2, [r2, #48]	; 0x30
    103c:	2180      	movs	r1, #128	; 0x80
    103e:	0049      	lsls	r1, r1, #1
    1040:	430a      	orrs	r2, r1
    1042:	631a      	str	r2, [r3, #48]	; 0x30
    1044:	4b46      	ldr	r3, [pc, #280]	; (1160 <TimerConfig+0x1d8>)
    1046:	4a46      	ldr	r2, [pc, #280]	; (1160 <TimerConfig+0x1d8>)
    1048:	6a52      	ldr	r2, [r2, #36]	; 0x24
    104a:	4947      	ldr	r1, [pc, #284]	; (1168 <TimerConfig+0x1e0>)
    104c:	400a      	ands	r2, r1
    104e:	625a      	str	r2, [r3, #36]	; 0x24
    1050:	4b43      	ldr	r3, [pc, #268]	; (1160 <TimerConfig+0x1d8>)
    1052:	4a43      	ldr	r2, [pc, #268]	; (1160 <TimerConfig+0x1d8>)
    1054:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1056:	21e0      	movs	r1, #224	; 0xe0
    1058:	0109      	lsls	r1, r1, #4
    105a:	430a      	orrs	r2, r1
    105c:	625a      	str	r2, [r3, #36]	; 0x24
    105e:	4b40      	ldr	r3, [pc, #256]	; (1160 <TimerConfig+0x1d8>)
    1060:	4a3f      	ldr	r2, [pc, #252]	; (1160 <TimerConfig+0x1d8>)
    1062:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1064:	210f      	movs	r1, #15
    1066:	438a      	bics	r2, r1
    1068:	635a      	str	r2, [r3, #52]	; 0x34
    106a:	4b3d      	ldr	r3, [pc, #244]	; (1160 <TimerConfig+0x1d8>)
    106c:	4a3c      	ldr	r2, [pc, #240]	; (1160 <TimerConfig+0x1d8>)
    106e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1070:	210c      	movs	r1, #12
    1072:	430a      	orrs	r2, r1
    1074:	635a      	str	r2, [r3, #52]	; 0x34
    1076:	4b3a      	ldr	r3, [pc, #232]	; (1160 <TimerConfig+0x1d8>)
    1078:	4a39      	ldr	r2, [pc, #228]	; (1160 <TimerConfig+0x1d8>)
    107a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    107c:	2101      	movs	r1, #1
    107e:	430a      	orrs	r2, r1
    1080:	635a      	str	r2, [r3, #52]	; 0x34
    1082:	4b37      	ldr	r3, [pc, #220]	; (1160 <TimerConfig+0x1d8>)
    1084:	4a36      	ldr	r2, [pc, #216]	; (1160 <TimerConfig+0x1d8>)
    1086:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1088:	4938      	ldr	r1, [pc, #224]	; (116c <TimerConfig+0x1e4>)
    108a:	400a      	ands	r2, r1
    108c:	635a      	str	r2, [r3, #52]	; 0x34
    108e:	4b34      	ldr	r3, [pc, #208]	; (1160 <TimerConfig+0x1d8>)
    1090:	4a33      	ldr	r2, [pc, #204]	; (1160 <TimerConfig+0x1d8>)
    1092:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1094:	21c0      	movs	r1, #192	; 0xc0
    1096:	0109      	lsls	r1, r1, #4
    1098:	430a      	orrs	r2, r1
    109a:	635a      	str	r2, [r3, #52]	; 0x34
    109c:	4b30      	ldr	r3, [pc, #192]	; (1160 <TimerConfig+0x1d8>)
    109e:	4a30      	ldr	r2, [pc, #192]	; (1160 <TimerConfig+0x1d8>)
    10a0:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10a2:	2180      	movs	r1, #128	; 0x80
    10a4:	0049      	lsls	r1, r1, #1
    10a6:	430a      	orrs	r2, r1
    10a8:	635a      	str	r2, [r3, #52]	; 0x34
    10aa:	4b2d      	ldr	r3, [pc, #180]	; (1160 <TimerConfig+0x1d8>)
    10ac:	4a2c      	ldr	r2, [pc, #176]	; (1160 <TimerConfig+0x1d8>)
    10ae:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10b0:	492d      	ldr	r1, [pc, #180]	; (1168 <TimerConfig+0x1e0>)
    10b2:	400a      	ands	r2, r1
    10b4:	629a      	str	r2, [r3, #40]	; 0x28
    10b6:	4b2a      	ldr	r3, [pc, #168]	; (1160 <TimerConfig+0x1d8>)
    10b8:	4a29      	ldr	r2, [pc, #164]	; (1160 <TimerConfig+0x1d8>)
    10ba:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10bc:	21e0      	movs	r1, #224	; 0xe0
    10be:	0109      	lsls	r1, r1, #4
    10c0:	430a      	orrs	r2, r1
    10c2:	629a      	str	r2, [r3, #40]	; 0x28
    10c4:	4b26      	ldr	r3, [pc, #152]	; (1160 <TimerConfig+0x1d8>)
    10c6:	4a26      	ldr	r2, [pc, #152]	; (1160 <TimerConfig+0x1d8>)
    10c8:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10ca:	210f      	movs	r1, #15
    10cc:	438a      	bics	r2, r1
    10ce:	639a      	str	r2, [r3, #56]	; 0x38
    10d0:	4b23      	ldr	r3, [pc, #140]	; (1160 <TimerConfig+0x1d8>)
    10d2:	4a23      	ldr	r2, [pc, #140]	; (1160 <TimerConfig+0x1d8>)
    10d4:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10d6:	210c      	movs	r1, #12
    10d8:	430a      	orrs	r2, r1
    10da:	639a      	str	r2, [r3, #56]	; 0x38
    10dc:	4b20      	ldr	r3, [pc, #128]	; (1160 <TimerConfig+0x1d8>)
    10de:	4a20      	ldr	r2, [pc, #128]	; (1160 <TimerConfig+0x1d8>)
    10e0:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10e2:	2101      	movs	r1, #1
    10e4:	430a      	orrs	r2, r1
    10e6:	639a      	str	r2, [r3, #56]	; 0x38
    10e8:	4b1d      	ldr	r3, [pc, #116]	; (1160 <TimerConfig+0x1d8>)
    10ea:	4a1d      	ldr	r2, [pc, #116]	; (1160 <TimerConfig+0x1d8>)
    10ec:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10ee:	491f      	ldr	r1, [pc, #124]	; (116c <TimerConfig+0x1e4>)
    10f0:	400a      	ands	r2, r1
    10f2:	639a      	str	r2, [r3, #56]	; 0x38
    10f4:	4b1a      	ldr	r3, [pc, #104]	; (1160 <TimerConfig+0x1d8>)
    10f6:	4a1a      	ldr	r2, [pc, #104]	; (1160 <TimerConfig+0x1d8>)
    10f8:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10fa:	21c0      	movs	r1, #192	; 0xc0
    10fc:	0109      	lsls	r1, r1, #4
    10fe:	430a      	orrs	r2, r1
    1100:	639a      	str	r2, [r3, #56]	; 0x38
    1102:	4b17      	ldr	r3, [pc, #92]	; (1160 <TimerConfig+0x1d8>)
    1104:	4a16      	ldr	r2, [pc, #88]	; (1160 <TimerConfig+0x1d8>)
    1106:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1108:	2180      	movs	r1, #128	; 0x80
    110a:	0049      	lsls	r1, r1, #1
    110c:	430a      	orrs	r2, r1
    110e:	639a      	str	r2, [r3, #56]	; 0x38
    1110:	4b13      	ldr	r3, [pc, #76]	; (1160 <TimerConfig+0x1d8>)
    1112:	4a13      	ldr	r2, [pc, #76]	; (1160 <TimerConfig+0x1d8>)
    1114:	6c12      	ldr	r2, [r2, #64]	; 0x40
    1116:	21c8      	movs	r1, #200	; 0xc8
    1118:	01c9      	lsls	r1, r1, #7
    111a:	430a      	orrs	r2, r1
    111c:	641a      	str	r2, [r3, #64]	; 0x40
    111e:	4b10      	ldr	r3, [pc, #64]	; (1160 <TimerConfig+0x1d8>)
    1120:	4a0f      	ldr	r2, [pc, #60]	; (1160 <TimerConfig+0x1d8>)
    1122:	6c52      	ldr	r2, [r2, #68]	; 0x44
    1124:	21c8      	movs	r1, #200	; 0xc8
    1126:	01c9      	lsls	r1, r1, #7
    1128:	430a      	orrs	r2, r1
    112a:	645a      	str	r2, [r3, #68]	; 0x44
    112c:	4b0c      	ldr	r3, [pc, #48]	; (1160 <TimerConfig+0x1d8>)
    112e:	4a0c      	ldr	r2, [pc, #48]	; (1160 <TimerConfig+0x1d8>)
    1130:	6c92      	ldr	r2, [r2, #72]	; 0x48
    1132:	21c8      	movs	r1, #200	; 0xc8
    1134:	01c9      	lsls	r1, r1, #7
    1136:	430a      	orrs	r2, r1
    1138:	649a      	str	r2, [r3, #72]	; 0x48
    113a:	4b09      	ldr	r3, [pc, #36]	; (1160 <TimerConfig+0x1d8>)
    113c:	4a08      	ldr	r2, [pc, #32]	; (1160 <TimerConfig+0x1d8>)
    113e:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1140:	2102      	movs	r1, #2
    1142:	430a      	orrs	r2, r1
    1144:	659a      	str	r2, [r3, #88]	; 0x58
    1146:	4b06      	ldr	r3, [pc, #24]	; (1160 <TimerConfig+0x1d8>)
    1148:	2201      	movs	r2, #1
    114a:	60da      	str	r2, [r3, #12]
    114c:	200d      	movs	r0, #13
    114e:	f7ff fe29 	bl	da4 <NVIC_EnableIRQ>
    1152:	46c0      	nop			; (mov r8, r8)
    1154:	46bd      	mov	sp, r7
    1156:	bd80      	pop	{r7, pc}
    1158:	40020000 	.word	0x40020000
    115c:	ff00ffff 	.word	0xff00ffff
    1160:	40098000 	.word	0x40098000
    1164:	000003ff 	.word	0x000003ff
    1168:	fffff1ff 	.word	0xfffff1ff
    116c:	fffff0ff 	.word	0xfffff0ff

00001170 <SystemInit>:
    1170:	b580      	push	{r7, lr}
    1172:	af00      	add	r7, sp, #0
    1174:	f7ff fece 	bl	f14 <ClkConfig>
    1178:	f7ff fe30 	bl	ddc <PortConfig>
    117c:	f7ff ff04 	bl	f88 <TimerConfig>
    1180:	46c0      	nop			; (mov r8, r8)
    1182:	46bd      	mov	sp, r7
    1184:	bd80      	pop	{r7, pc}
    1186:	46c0      	nop			; (mov r8, r8)

00001188 <b2g>:
    1188:	0843      	lsrs	r3, r0, #1
    118a:	4058      	eors	r0, r3
    118c:	4770      	bx	lr
    118e:	46c0      	nop			; (mov r8, r8)

00001190 <g2b>:
    1190:	0003      	movs	r3, r0
    1192:	2000      	movs	r0, #0
    1194:	2b00      	cmp	r3, #0
    1196:	d002      	beq.n	119e <g2b+0xe>
    1198:	4058      	eors	r0, r3
    119a:	085b      	lsrs	r3, r3, #1
    119c:	d1fc      	bne.n	1198 <g2b+0x8>
    119e:	4770      	bx	lr

000011a0 <adc_init>:
    11a0:	b580      	push	{r7, lr}
    11a2:	af00      	add	r7, sp, #0
    11a4:	4b0f      	ldr	r3, [pc, #60]	; (11e4 <adc_init+0x44>)
    11a6:	4a0f      	ldr	r2, [pc, #60]	; (11e4 <adc_init+0x44>)
    11a8:	69d2      	ldr	r2, [r2, #28]
    11aa:	2180      	movs	r1, #128	; 0x80
    11ac:	0289      	lsls	r1, r1, #10
    11ae:	430a      	orrs	r2, r1
    11b0:	61da      	str	r2, [r3, #28]
    11b2:	4b0c      	ldr	r3, [pc, #48]	; (11e4 <adc_init+0x44>)
    11b4:	4a0c      	ldr	r2, [pc, #48]	; (11e8 <adc_init+0x48>)
    11b6:	615a      	str	r2, [r3, #20]
    11b8:	4b0c      	ldr	r3, [pc, #48]	; (11ec <adc_init+0x4c>)
    11ba:	2200      	movs	r2, #0
    11bc:	601a      	str	r2, [r3, #0]
    11be:	4b0b      	ldr	r3, [pc, #44]	; (11ec <adc_init+0x4c>)
    11c0:	4a0a      	ldr	r2, [pc, #40]	; (11ec <adc_init+0x4c>)
    11c2:	6812      	ldr	r2, [r2, #0]
    11c4:	490a      	ldr	r1, [pc, #40]	; (11f0 <adc_init+0x50>)
    11c6:	430a      	orrs	r2, r1
    11c8:	601a      	str	r2, [r3, #0]
    11ca:	4b08      	ldr	r3, [pc, #32]	; (11ec <adc_init+0x4c>)
    11cc:	4a07      	ldr	r2, [pc, #28]	; (11ec <adc_init+0x4c>)
    11ce:	6a92      	ldr	r2, [r2, #40]	; 0x28
    11d0:	2139      	movs	r1, #57	; 0x39
    11d2:	430a      	orrs	r2, r1
    11d4:	629a      	str	r2, [r3, #40]	; 0x28
    11d6:	4b05      	ldr	r3, [pc, #20]	; (11ec <adc_init+0x4c>)
    11d8:	2210      	movs	r2, #16
    11da:	621a      	str	r2, [r3, #32]
    11dc:	46c0      	nop			; (mov r8, r8)
    11de:	46bd      	mov	sp, r7
    11e0:	bd80      	pop	{r7, pc}
    11e2:	46c0      	nop			; (mov r8, r8)
    11e4:	40020000 	.word	0x40020000
    11e8:	00002020 	.word	0x00002020
    11ec:	40088000 	.word	0x40088000
    11f0:	00000205 	.word	0x00000205

000011f4 <dma_init>:
    11f4:	b580      	push	{r7, lr}
    11f6:	af00      	add	r7, sp, #0
    11f8:	4b18      	ldr	r3, [pc, #96]	; (125c <dma_init+0x68>)
    11fa:	4a18      	ldr	r2, [pc, #96]	; (125c <dma_init+0x68>)
    11fc:	69d2      	ldr	r2, [r2, #28]
    11fe:	2120      	movs	r1, #32
    1200:	430a      	orrs	r2, r1
    1202:	61da      	str	r2, [r3, #28]
    1204:	4b16      	ldr	r3, [pc, #88]	; (1260 <dma_init+0x6c>)
    1206:	4a17      	ldr	r2, [pc, #92]	; (1264 <dma_init+0x70>)
    1208:	609a      	str	r2, [r3, #8]
    120a:	4b15      	ldr	r3, [pc, #84]	; (1260 <dma_init+0x6c>)
    120c:	2201      	movs	r2, #1
    120e:	4252      	negs	r2, r2
    1210:	62da      	str	r2, [r3, #44]	; 0x2c
    1212:	4b13      	ldr	r3, [pc, #76]	; (1260 <dma_init+0x6c>)
    1214:	2201      	movs	r2, #1
    1216:	4252      	negs	r2, r2
    1218:	621a      	str	r2, [r3, #32]
    121a:	4b11      	ldr	r3, [pc, #68]	; (1260 <dma_init+0x6c>)
    121c:	2201      	movs	r2, #1
    121e:	4252      	negs	r2, r2
    1220:	635a      	str	r2, [r3, #52]	; 0x34
    1222:	4b0f      	ldr	r3, [pc, #60]	; (1260 <dma_init+0x6c>)
    1224:	2280      	movs	r2, #128	; 0x80
    1226:	05d2      	lsls	r2, r2, #23
    1228:	61da      	str	r2, [r3, #28]
    122a:	4b0d      	ldr	r3, [pc, #52]	; (1260 <dma_init+0x6c>)
    122c:	2280      	movs	r2, #128	; 0x80
    122e:	05d2      	lsls	r2, r2, #23
    1230:	625a      	str	r2, [r3, #36]	; 0x24
    1232:	4b0b      	ldr	r3, [pc, #44]	; (1260 <dma_init+0x6c>)
    1234:	2201      	movs	r2, #1
    1236:	605a      	str	r2, [r3, #4]
    1238:	4a0a      	ldr	r2, [pc, #40]	; (1264 <dma_init+0x70>)
    123a:	23f0      	movs	r3, #240	; 0xf0
    123c:	005b      	lsls	r3, r3, #1
    123e:	490a      	ldr	r1, [pc, #40]	; (1268 <dma_init+0x74>)
    1240:	50d1      	str	r1, [r2, r3]
    1242:	490a      	ldr	r1, [pc, #40]	; (126c <dma_init+0x78>)
    1244:	4a07      	ldr	r2, [pc, #28]	; (1264 <dma_init+0x70>)
    1246:	23f2      	movs	r3, #242	; 0xf2
    1248:	005b      	lsls	r3, r3, #1
    124a:	50d1      	str	r1, [r2, r3]
    124c:	4a05      	ldr	r2, [pc, #20]	; (1264 <dma_init+0x70>)
    124e:	23f4      	movs	r3, #244	; 0xf4
    1250:	005b      	lsls	r3, r3, #1
    1252:	4907      	ldr	r1, [pc, #28]	; (1270 <dma_init+0x7c>)
    1254:	50d1      	str	r1, [r2, r3]
    1256:	46c0      	nop			; (mov r8, r8)
    1258:	46bd      	mov	sp, r7
    125a:	bd80      	pop	{r7, pc}
    125c:	40020000 	.word	0x40020000
    1260:	40028000 	.word	0x40028000
    1264:	20100000 	.word	0x20100000
    1268:	40088018 	.word	0x40088018
    126c:	2010020c 	.word	0x2010020c
    1270:	ae000031 	.word	0xae000031

00001274 <adc_dma_init>:
    1274:	b580      	push	{r7, lr}
    1276:	af00      	add	r7, sp, #0
    1278:	f7ff ff92 	bl	11a0 <adc_init>
    127c:	f7ff ffba 	bl	11f4 <dma_init>
    1280:	46c0      	nop			; (mov r8, r8)
    1282:	46bd      	mov	sp, r7
    1284:	bd80      	pop	{r7, pc}
    1286:	46c0      	nop			; (mov r8, r8)

00001288 <cos_tb>:
    1288:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    1298:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12a8:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    12b8:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    12c8:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    12d8:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    12e8:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    12f8:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1308:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1318:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1328:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1338:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1348:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    1358:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    1368:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    1378:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    1388:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    1398:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13a8:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    13b8:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    13c8:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    13d8:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    13e8:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    13f8:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1408:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1418:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1428:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1438:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1448:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    1458:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    1468:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    1478:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    1488:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    1498:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14a8:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    14b8:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    14c8:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    14d8:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    14e8:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    14f8:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1508:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1518:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1528:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1538:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1548:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    1558:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    1568:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    1578:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    1588:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    1598:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15a8:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    15b8:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    15c8:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    15d8:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    15e8:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    15f8:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1608:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1618:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1628:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1638:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1648:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    1658:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    1668:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    1678:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    1688:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    1698:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16a8:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    16b8:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    16c8:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    16d8:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    16e8:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    16f8:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1708:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1718:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1728:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1738:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1748:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    1758:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    1768:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    1778:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    1788:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    1798:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17a8:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    17b8:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    17c8:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    17d8:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    17e8:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    17f8:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1808:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1818:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1828:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1838:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1848:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    1858:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    1868:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    1878:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    1888:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    1898:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18a8:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    18b8:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    18c8:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    18d8:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    18e8:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    18f8:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1908:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1918:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1928:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1938:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1948:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    1958:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    1968:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    1978:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    1988:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    1998:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19a8:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    19b8:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    19c8:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    19d8:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    19e8:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    19f8:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a08:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a18:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a28:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a38:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a48:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1a58:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1a68:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1a78:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1a88:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1a98:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1aa8:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1ab8:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1ac8:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1ad8:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1ae8:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1af8:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b08:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b18:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b28:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b38:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b48:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1b58:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1b68:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1b78:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1b88:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1b98:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1ba8:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1bb8:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1bc8:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1bd8:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1be8:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1bf8:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c08:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c18:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c28:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c38:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c48:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1c58:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1c68:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1c78:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1c88:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1c98:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1ca8:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1cb8:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1cc8:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1cd8:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1ce8:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1cf8:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d08:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d18:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d28:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d38:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d48:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1d58:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1d68:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1d78:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1d88:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1d98:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1da8:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1db8:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1dc8:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1dd8:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1de8:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1df8:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e08:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e18:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e28:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e38:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e48:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1e58:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1e68:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1e78:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1e88:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1e98:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1ea8:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1eb8:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1ec8:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1ed8:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1ee8:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1ef8:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f08:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f18:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f28:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f38:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f48:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1f58:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1f68:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1f78:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1f88:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1f98:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1fa8:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    1fb8:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    1fc8:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    1fd8:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    1fe8:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    1ff8:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2008:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2018:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2028:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2038:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2048:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    2058:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    2068:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    2078:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    2088:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    2098:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20a8:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    20b8:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    20c8:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    20d8:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    20e8:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    20f8:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2108:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2118:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2128:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2138:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2148:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    2158:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    2168:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    2178:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    2188:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    2198:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21a8:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    21b8:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    21c8:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    21d8:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    21e8:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    21f8:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2208:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2218:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2228:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2238:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2248:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    2258:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    2268:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    2278:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    2288:	0bf2 0000 0c24 0000 0c54 0000 0c82 0000     ....$...T.......
    2298:	0bbc 0000 0cb0 0000 0080 0000 004c 0000     ............L...
    22a8:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    22b8:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    22c8:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    22d8:	026e 0000 026e 0000                         n...n...
