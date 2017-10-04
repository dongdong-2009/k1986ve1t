
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 45 05 00 00 a5 05 00 00 a5 05 00 00     ... E...........
	...
      2c:	a5 05 00 00 00 00 00 00 00 00 00 00 a5 05 00 00     ................
      3c:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      4c:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      5c:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      6c:	a5 05 00 00 a5 05 00 00 19 05 00 00 a5 05 00 00     ................
      7c:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      8c:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      9c:	a5 05 00 00 a5 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	a5 05 00 00 a5 05 00 00 a5 05 00 00 a5 05 00 00     ................
      bc:	a5 05 00 00                                         ....

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
     192:	f001 f803 	bl	119c <g2b>
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
     278:	f000 ff80 	bl	117c <SystemInit>
     27c:	f001 f800 	bl	1280 <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	4b97      	ldr	r3, [pc, #604]	; (4e8 <_stack_size+0xe8>)
     28a:	22c8      	movs	r2, #200	; 0xc8
     28c:	21c8      	movs	r1, #200	; 0xc8
     28e:	0018      	movs	r0, r3
     290:	f000 f98c 	bl	5ac <reg_init>
     294:	4b95      	ldr	r3, [pc, #596]	; (4ec <_stack_size+0xec>)
     296:	22c8      	movs	r2, #200	; 0xc8
     298:	21c8      	movs	r1, #200	; 0xc8
     29a:	0018      	movs	r0, r3
     29c:	f000 f986 	bl	5ac <reg_init>
     2a0:	23fa      	movs	r3, #250	; 0xfa
     2a2:	009a      	lsls	r2, r3, #2
     2a4:	4b92      	ldr	r3, [pc, #584]	; (4f0 <_stack_size+0xf0>)
     2a6:	2100      	movs	r1, #0
     2a8:	0018      	movs	r0, r3
     2aa:	f000 f97f 	bl	5ac <reg_init>
     2ae:	23fa      	movs	r3, #250	; 0xfa
     2b0:	00da      	lsls	r2, r3, #3
     2b2:	4b90      	ldr	r3, [pc, #576]	; (4f4 <_stack_size+0xf4>)
     2b4:	2100      	movs	r1, #0
     2b6:	0018      	movs	r0, r3
     2b8:	f000 f978 	bl	5ac <reg_init>
     2bc:	4b8e      	ldr	r3, [pc, #568]	; (4f8 <_stack_size+0xf8>)
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
     2dc:	4b87      	ldr	r3, [pc, #540]	; (4fc <_stack_size+0xfc>)
     2de:	685b      	ldr	r3, [r3, #4]
     2e0:	051b      	lsls	r3, r3, #20
     2e2:	0d1a      	lsrs	r2, r3, #20
     2e4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2e6:	18d3      	adds	r3, r2, r3
     2e8:	65bb      	str	r3, [r7, #88]	; 0x58
     2ea:	4b84      	ldr	r3, [pc, #528]	; (4fc <_stack_size+0xfc>)
     2ec:	689b      	ldr	r3, [r3, #8]
     2ee:	051b      	lsls	r3, r3, #20
     2f0:	0d1a      	lsrs	r2, r3, #20
     2f2:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2f4:	18d3      	adds	r3, r2, r3
     2f6:	657b      	str	r3, [r7, #84]	; 0x54
     2f8:	4b80      	ldr	r3, [pc, #512]	; (4fc <_stack_size+0xfc>)
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
     31a:	4a79      	ldr	r2, [pc, #484]	; (500 <_stack_size+0x100>)
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
     332:	4b74      	ldr	r3, [pc, #464]	; (504 <_stack_size+0x104>)
     334:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     336:	601a      	str	r2, [r3, #0]
     338:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     33a:	129b      	asrs	r3, r3, #10
     33c:	643b      	str	r3, [r7, #64]	; 0x40
     33e:	4b72      	ldr	r3, [pc, #456]	; (508 <_stack_size+0x108>)
     340:	4a71      	ldr	r2, [pc, #452]	; (508 <_stack_size+0x108>)
     342:	6812      	ldr	r2, [r2, #0]
     344:	2120      	movs	r1, #32
     346:	438a      	bics	r2, r1
     348:	601a      	str	r2, [r3, #0]
     34a:	f7ff fecd 	bl	e8 <adc_dma_wait>
     34e:	4b6e      	ldr	r3, [pc, #440]	; (508 <_stack_size+0x108>)
     350:	4a6d      	ldr	r2, [pc, #436]	; (508 <_stack_size+0x108>)
     352:	6812      	ldr	r2, [r2, #0]
     354:	2120      	movs	r1, #32
     356:	430a      	orrs	r2, r1
     358:	601a      	str	r2, [r3, #0]
     35a:	4b68      	ldr	r3, [pc, #416]	; (4fc <_stack_size+0xfc>)
     35c:	681b      	ldr	r3, [r3, #0]
     35e:	051b      	lsls	r3, r3, #20
     360:	0d1a      	lsrs	r2, r3, #20
     362:	0013      	movs	r3, r2
     364:	009b      	lsls	r3, r3, #2
     366:	189b      	adds	r3, r3, r2
     368:	0018      	movs	r0, r3
     36a:	f000 fd0d 	bl	d88 <mfilter>
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
     382:	4b60      	ldr	r3, [pc, #384]	; (504 <_stack_size+0x104>)
     384:	601a      	str	r2, [r3, #0]
     386:	4b5f      	ldr	r3, [pc, #380]	; (504 <_stack_size+0x104>)
     388:	681a      	ldr	r2, [r3, #0]
     38a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     38c:	1ad2      	subs	r2, r2, r3
     38e:	0013      	movs	r3, r2
     390:	00db      	lsls	r3, r3, #3
     392:	1a9b      	subs	r3, r3, r2
     394:	00da      	lsls	r2, r3, #3
     396:	1ad2      	subs	r2, r2, r3
     398:	4b57      	ldr	r3, [pc, #348]	; (4f8 <_stack_size+0xf8>)
     39a:	601a      	str	r2, [r3, #0]
     39c:	4b57      	ldr	r3, [pc, #348]	; (4fc <_stack_size+0xfc>)
     39e:	685b      	ldr	r3, [r3, #4]
     3a0:	051b      	lsls	r3, r3, #20
     3a2:	0d1a      	lsrs	r2, r3, #20
     3a4:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3a6:	1ad3      	subs	r3, r2, r3
     3a8:	633b      	str	r3, [r7, #48]	; 0x30
     3aa:	4b54      	ldr	r3, [pc, #336]	; (4fc <_stack_size+0xfc>)
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
     3c2:	4b4e      	ldr	r3, [pc, #312]	; (4fc <_stack_size+0xfc>)
     3c4:	68db      	ldr	r3, [r3, #12]
     3c6:	051b      	lsls	r3, r3, #20
     3c8:	0d1b      	lsrs	r3, r3, #20
     3ca:	637b      	str	r3, [r7, #52]	; 0x34
     3cc:	f7ff feda 	bl	184 <encoder_read>
     3d0:	0003      	movs	r3, r0
     3d2:	627b      	str	r3, [r7, #36]	; 0x24
     3d4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3d6:	3301      	adds	r3, #1
     3d8:	64fb      	str	r3, [r7, #76]	; 0x4c
     3da:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3dc:	2207      	movs	r2, #7
     3de:	4013      	ands	r3, r2
     3e0:	d138      	bne.n	454 <_stack_size+0x54>
     3e2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3e4:	003a      	movs	r2, r7
     3e6:	0011      	movs	r1, r2
     3e8:	0018      	movs	r0, r3
     3ea:	f000 fca7 	bl	d3c <get_speed>
     3ee:	0003      	movs	r3, r0
     3f0:	623b      	str	r3, [r7, #32]
     3f2:	4b41      	ldr	r3, [pc, #260]	; (4f8 <_stack_size+0xf8>)
     3f4:	681a      	ldr	r2, [r3, #0]
     3f6:	683b      	ldr	r3, [r7, #0]
     3f8:	1ad1      	subs	r1, r2, r3
     3fa:	4b3e      	ldr	r3, [pc, #248]	; (4f4 <_stack_size+0xf4>)
     3fc:	2200      	movs	r2, #0
     3fe:	0018      	movs	r0, r3
     400:	f000 f8da 	bl	5b8 <reg_update>
     404:	4b3b      	ldr	r3, [pc, #236]	; (4f4 <_stack_size+0xf4>)
     406:	68db      	ldr	r3, [r3, #12]
     408:	129b      	asrs	r3, r3, #10
     40a:	63bb      	str	r3, [r7, #56]	; 0x38
     40c:	6bba      	ldr	r2, [r7, #56]	; 0x38
     40e:	6a3b      	ldr	r3, [r7, #32]
     410:	1ad1      	subs	r1, r2, r3
     412:	4b37      	ldr	r3, [pc, #220]	; (4f0 <_stack_size+0xf0>)
     414:	2200      	movs	r2, #0
     416:	0018      	movs	r0, r3
     418:	f000 f8ce 	bl	5b8 <reg_update>
     41c:	4b34      	ldr	r3, [pc, #208]	; (4f0 <_stack_size+0xf0>)
     41e:	68db      	ldr	r3, [r3, #12]
     420:	129b      	asrs	r3, r3, #10
     422:	64bb      	str	r3, [r7, #72]	; 0x48
     424:	6cba      	ldr	r2, [r7, #72]	; 0x48
     426:	23fa      	movs	r3, #250	; 0xfa
     428:	00db      	lsls	r3, r3, #3
     42a:	429a      	cmp	r2, r3
     42c:	dd02      	ble.n	434 <_stack_size+0x34>
     42e:	23fa      	movs	r3, #250	; 0xfa
     430:	00db      	lsls	r3, r3, #3
     432:	64bb      	str	r3, [r7, #72]	; 0x48
     434:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     436:	4a35      	ldr	r2, [pc, #212]	; (50c <_stack_size+0x10c>)
     438:	4293      	cmp	r3, r2
     43a:	da01      	bge.n	440 <_stack_size+0x40>
     43c:	4b33      	ldr	r3, [pc, #204]	; (50c <_stack_size+0x10c>)
     43e:	64bb      	str	r3, [r7, #72]	; 0x48
     440:	4b33      	ldr	r3, [pc, #204]	; (510 <_stack_size+0x110>)
     442:	683a      	ldr	r2, [r7, #0]
     444:	6c39      	ldr	r1, [r7, #64]	; 0x40
     446:	1a8a      	subs	r2, r1, r2
     448:	10d2      	asrs	r2, r2, #3
     44a:	2180      	movs	r1, #128	; 0x80
     44c:	0109      	lsls	r1, r1, #4
     44e:	468c      	mov	ip, r1
     450:	4462      	add	r2, ip
     452:	605a      	str	r2, [r3, #4]
     454:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     456:	059b      	lsls	r3, r3, #22
     458:	0d9b      	lsrs	r3, r3, #22
     45a:	63fb      	str	r3, [r7, #60]	; 0x3c
     45c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     45e:	4a2d      	ldr	r2, [pc, #180]	; (514 <_stack_size+0x114>)
     460:	4694      	mov	ip, r2
     462:	4463      	add	r3, ip
     464:	059b      	lsls	r3, r3, #22
     466:	0d9b      	lsrs	r3, r3, #22
     468:	63fb      	str	r3, [r7, #60]	; 0x3c
     46a:	1d3b      	adds	r3, r7, #4
     46c:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     46e:	601a      	str	r2, [r3, #0]
     470:	1d3b      	adds	r3, r7, #4
     472:	6aba      	ldr	r2, [r7, #40]	; 0x28
     474:	605a      	str	r2, [r3, #4]
     476:	1d3b      	adds	r3, r7, #4
     478:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     47a:	609a      	str	r2, [r3, #8]
     47c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     47e:	2310      	movs	r3, #16
     480:	18f9      	adds	r1, r7, r3
     482:	1d3b      	adds	r3, r7, #4
     484:	0018      	movs	r0, r3
     486:	f000 f8af 	bl	5e8 <abc_to_dq>
     48a:	2310      	movs	r3, #16
     48c:	18fb      	adds	r3, r7, r3
     48e:	681b      	ldr	r3, [r3, #0]
     490:	425b      	negs	r3, r3
     492:	61fb      	str	r3, [r7, #28]
     494:	2310      	movs	r3, #16
     496:	18fb      	adds	r3, r7, r3
     498:	685b      	ldr	r3, [r3, #4]
     49a:	6cba      	ldr	r2, [r7, #72]	; 0x48
     49c:	1ad3      	subs	r3, r2, r3
     49e:	61bb      	str	r3, [r7, #24]
     4a0:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4a2:	69f9      	ldr	r1, [r7, #28]
     4a4:	4b10      	ldr	r3, [pc, #64]	; (4e8 <_stack_size+0xe8>)
     4a6:	0018      	movs	r0, r3
     4a8:	f000 f886 	bl	5b8 <reg_update>
     4ac:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4ae:	69b9      	ldr	r1, [r7, #24]
     4b0:	4b0e      	ldr	r3, [pc, #56]	; (4ec <_stack_size+0xec>)
     4b2:	0018      	movs	r0, r3
     4b4:	f000 f880 	bl	5b8 <reg_update>
     4b8:	4b0b      	ldr	r3, [pc, #44]	; (4e8 <_stack_size+0xe8>)
     4ba:	68da      	ldr	r2, [r3, #12]
     4bc:	2310      	movs	r3, #16
     4be:	18fb      	adds	r3, r7, r3
     4c0:	601a      	str	r2, [r3, #0]
     4c2:	4b0a      	ldr	r3, [pc, #40]	; (4ec <_stack_size+0xec>)
     4c4:	68da      	ldr	r2, [r3, #12]
     4c6:	2310      	movs	r3, #16
     4c8:	18fb      	adds	r3, r7, r3
     4ca:	605a      	str	r2, [r3, #4]
     4cc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4ce:	2310      	movs	r3, #16
     4d0:	18f9      	adds	r1, r7, r3
     4d2:	1d3b      	adds	r3, r7, #4
     4d4:	0018      	movs	r0, r3
     4d6:	f000 fab3 	bl	a40 <svpwm>
     4da:	0003      	movs	r3, r0
     4dc:	653b      	str	r3, [r7, #80]	; 0x50
     4de:	1d3b      	adds	r3, r7, #4
     4e0:	0018      	movs	r0, r3
     4e2:	f7ff fe75 	bl	1d0 <pwm_set>
     4e6:	e72a      	b.n	33e <main+0xfa>
     4e8:	20000008 	.word	0x20000008
     4ec:	20000018 	.word	0x20000018
     4f0:	20000028 	.word	0x20000028
     4f4:	20000038 	.word	0x20000038
     4f8:	20000000 	.word	0x20000000
     4fc:	20100200 	.word	0x20100200
     500:	000003ff 	.word	0x000003ff
     504:	20000004 	.word	0x20000004
     508:	400b8000 	.word	0x400b8000
     50c:	fffff830 	.word	0xfffff830
     510:	40090000 	.word	0x40090000
     514:	0000035e 	.word	0x0000035e

00000518 <TIMER4_Handler>:
     518:	b580      	push	{r7, lr}
     51a:	af00      	add	r7, sp, #0
     51c:	4b07      	ldr	r3, [pc, #28]	; (53c <TIMER4_Handler+0x24>)
     51e:	2200      	movs	r2, #0
     520:	655a      	str	r2, [r3, #84]	; 0x54
     522:	4b07      	ldr	r3, [pc, #28]	; (540 <TIMER4_Handler+0x28>)
     524:	681b      	ldr	r3, [r3, #0]
     526:	1c5a      	adds	r2, r3, #1
     528:	4b05      	ldr	r3, [pc, #20]	; (540 <TIMER4_Handler+0x28>)
     52a:	601a      	str	r2, [r3, #0]
     52c:	f7ff fdc8 	bl	c0 <adc_dma_start>
     530:	f7ff fe1c 	bl	16c <encoder_start>
     534:	46c0      	nop			; (mov r8, r8)
     536:	46bd      	mov	sp, r7
     538:	bd80      	pop	{r7, pc}
     53a:	46c0      	nop			; (mov r8, r8)
     53c:	40098000 	.word	0x40098000
     540:	20000048 	.word	0x20000048

00000544 <handler_reset>:
     544:	b580      	push	{r7, lr}
     546:	b082      	sub	sp, #8
     548:	af00      	add	r7, sp, #0
     54a:	4b11      	ldr	r3, [pc, #68]	; (590 <handler_reset+0x4c>)
     54c:	607b      	str	r3, [r7, #4]
     54e:	4b11      	ldr	r3, [pc, #68]	; (594 <handler_reset+0x50>)
     550:	603b      	str	r3, [r7, #0]
     552:	e007      	b.n	564 <handler_reset+0x20>
     554:	683b      	ldr	r3, [r7, #0]
     556:	1d1a      	adds	r2, r3, #4
     558:	603a      	str	r2, [r7, #0]
     55a:	687a      	ldr	r2, [r7, #4]
     55c:	1d11      	adds	r1, r2, #4
     55e:	6079      	str	r1, [r7, #4]
     560:	6812      	ldr	r2, [r2, #0]
     562:	601a      	str	r2, [r3, #0]
     564:	683a      	ldr	r2, [r7, #0]
     566:	4b0c      	ldr	r3, [pc, #48]	; (598 <handler_reset+0x54>)
     568:	429a      	cmp	r2, r3
     56a:	d3f3      	bcc.n	554 <handler_reset+0x10>
     56c:	4b0b      	ldr	r3, [pc, #44]	; (59c <handler_reset+0x58>)
     56e:	603b      	str	r3, [r7, #0]
     570:	e004      	b.n	57c <handler_reset+0x38>
     572:	683b      	ldr	r3, [r7, #0]
     574:	1d1a      	adds	r2, r3, #4
     576:	603a      	str	r2, [r7, #0]
     578:	2200      	movs	r2, #0
     57a:	601a      	str	r2, [r3, #0]
     57c:	683a      	ldr	r2, [r7, #0]
     57e:	4b08      	ldr	r3, [pc, #32]	; (5a0 <handler_reset+0x5c>)
     580:	429a      	cmp	r2, r3
     582:	d3f6      	bcc.n	572 <handler_reset+0x2e>
     584:	f7ff fe5e 	bl	244 <main>
     588:	46c0      	nop			; (mov r8, r8)
     58a:	46bd      	mov	sp, r7
     58c:	b002      	add	sp, #8
     58e:	bd80      	pop	{r7, pc}
     590:	000022ec 	.word	0x000022ec
     594:	20000000 	.word	0x20000000
     598:	20000000 	.word	0x20000000
     59c:	20000000 	.word	0x20000000
     5a0:	200000dc 	.word	0x200000dc

000005a4 <default_handler>:
     5a4:	b580      	push	{r7, lr}
     5a6:	af00      	add	r7, sp, #0
     5a8:	e7fe      	b.n	5a8 <default_handler+0x4>
     5aa:	46c0      	nop			; (mov r8, r8)

000005ac <reg_init>:
     5ac:	2300      	movs	r3, #0
     5ae:	6001      	str	r1, [r0, #0]
     5b0:	6042      	str	r2, [r0, #4]
     5b2:	6083      	str	r3, [r0, #8]
     5b4:	60c3      	str	r3, [r0, #12]
     5b6:	4770      	bx	lr

000005b8 <reg_update>:
     5b8:	b510      	push	{r4, lr}
     5ba:	6804      	ldr	r4, [r0, #0]
     5bc:	6883      	ldr	r3, [r0, #8]
     5be:	434c      	muls	r4, r1
     5c0:	2a00      	cmp	r2, #0
     5c2:	d004      	beq.n	5ce <reg_update+0x16>
     5c4:	2b00      	cmp	r3, #0
     5c6:	dd09      	ble.n	5dc <reg_update+0x24>
     5c8:	2c00      	cmp	r4, #0
     5ca:	dd00      	ble.n	5ce <reg_update+0x16>
     5cc:	2400      	movs	r4, #0
     5ce:	6842      	ldr	r2, [r0, #4]
     5d0:	18e3      	adds	r3, r4, r3
     5d2:	4351      	muls	r1, r2
     5d4:	18c9      	adds	r1, r1, r3
     5d6:	60c1      	str	r1, [r0, #12]
     5d8:	6083      	str	r3, [r0, #8]
     5da:	bd10      	pop	{r4, pc}
     5dc:	2b00      	cmp	r3, #0
     5de:	d0f6      	beq.n	5ce <reg_update+0x16>
     5e0:	43e2      	mvns	r2, r4
     5e2:	17d2      	asrs	r2, r2, #31
     5e4:	4014      	ands	r4, r2
     5e6:	e7f2      	b.n	5ce <reg_update+0x16>

000005e8 <abc_to_dq>:
     5e8:	23c0      	movs	r3, #192	; 0xc0
     5ea:	b5f0      	push	{r4, r5, r6, r7, lr}
     5ec:	4647      	mov	r7, r8
     5ee:	009b      	lsls	r3, r3, #2
     5f0:	18d3      	adds	r3, r2, r3
     5f2:	4d1b      	ldr	r5, [pc, #108]	; (660 <abc_to_dq+0x78>)
     5f4:	059b      	lsls	r3, r3, #22
     5f6:	0d1b      	lsrs	r3, r3, #20
     5f8:	595b      	ldr	r3, [r3, r5]
     5fa:	b480      	push	{r7}
     5fc:	4698      	mov	r8, r3
     5fe:	4b19      	ldr	r3, [pc, #100]	; (664 <abc_to_dq+0x7c>)
     600:	18d4      	adds	r4, r2, r3
     602:	05a4      	lsls	r4, r4, #22
     604:	4b18      	ldr	r3, [pc, #96]	; (668 <abc_to_dq+0x80>)
     606:	0d24      	lsrs	r4, r4, #20
     608:	5967      	ldr	r7, [r4, r5]
     60a:	18d4      	adds	r4, r2, r3
     60c:	05a4      	lsls	r4, r4, #22
     60e:	4b17      	ldr	r3, [pc, #92]	; (66c <abc_to_dq+0x84>)
     610:	0d24      	lsrs	r4, r4, #20
     612:	5966      	ldr	r6, [r4, r5]
     614:	18d4      	adds	r4, r2, r3
     616:	05a4      	lsls	r4, r4, #22
     618:	0d24      	lsrs	r4, r4, #20
     61a:	5964      	ldr	r4, [r4, r5]
     61c:	6843      	ldr	r3, [r0, #4]
     61e:	4363      	muls	r3, r4
     620:	0094      	lsls	r4, r2, #2
     622:	469c      	mov	ip, r3
     624:	3256      	adds	r2, #86	; 0x56
     626:	32ff      	adds	r2, #255	; 0xff
     628:	6803      	ldr	r3, [r0, #0]
     62a:	5964      	ldr	r4, [r4, r5]
     62c:	0592      	lsls	r2, r2, #22
     62e:	0d12      	lsrs	r2, r2, #20
     630:	5955      	ldr	r5, [r2, r5]
     632:	435c      	muls	r4, r3
     634:	6883      	ldr	r3, [r0, #8]
     636:	4464      	add	r4, ip
     638:	435d      	muls	r5, r3
     63a:	4643      	mov	r3, r8
     63c:	1964      	adds	r4, r4, r5
     63e:	12a4      	asrs	r4, r4, #10
     640:	600c      	str	r4, [r1, #0]
     642:	6802      	ldr	r2, [r0, #0]
     644:	435a      	muls	r2, r3
     646:	6843      	ldr	r3, [r0, #4]
     648:	437b      	muls	r3, r7
     64a:	18d3      	adds	r3, r2, r3
     64c:	6882      	ldr	r2, [r0, #8]
     64e:	4372      	muls	r2, r6
     650:	189b      	adds	r3, r3, r2
     652:	425b      	negs	r3, r3
     654:	129b      	asrs	r3, r3, #10
     656:	604b      	str	r3, [r1, #4]
     658:	bc04      	pop	{r2}
     65a:	4690      	mov	r8, r2
     65c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     65e:	46c0      	nop			; (mov r8, r8)
     660:	00001294 	.word	0x00001294
     664:	000005aa 	.word	0x000005aa
     668:	00000455 	.word	0x00000455
     66c:	000002aa 	.word	0x000002aa

00000670 <dq_to_abc>:
     670:	b570      	push	{r4, r5, r6, lr}
     672:	4d1a      	ldr	r5, [pc, #104]	; (6dc <dq_to_abc+0x6c>)
     674:	0093      	lsls	r3, r2, #2
     676:	680c      	ldr	r4, [r1, #0]
     678:	595b      	ldr	r3, [r3, r5]
     67a:	684e      	ldr	r6, [r1, #4]
     67c:	435c      	muls	r4, r3
     67e:	23c0      	movs	r3, #192	; 0xc0
     680:	009b      	lsls	r3, r3, #2
     682:	18d3      	adds	r3, r2, r3
     684:	059b      	lsls	r3, r3, #22
     686:	0d1b      	lsrs	r3, r3, #20
     688:	595b      	ldr	r3, [r3, r5]
     68a:	4373      	muls	r3, r6
     68c:	1ae3      	subs	r3, r4, r3
     68e:	151b      	asrs	r3, r3, #20
     690:	6003      	str	r3, [r0, #0]
     692:	4b13      	ldr	r3, [pc, #76]	; (6e0 <dq_to_abc+0x70>)
     694:	680c      	ldr	r4, [r1, #0]
     696:	18d3      	adds	r3, r2, r3
     698:	059b      	lsls	r3, r3, #22
     69a:	0d1b      	lsrs	r3, r3, #20
     69c:	595b      	ldr	r3, [r3, r5]
     69e:	684e      	ldr	r6, [r1, #4]
     6a0:	435c      	muls	r4, r3
     6a2:	4b10      	ldr	r3, [pc, #64]	; (6e4 <dq_to_abc+0x74>)
     6a4:	18d3      	adds	r3, r2, r3
     6a6:	059b      	lsls	r3, r3, #22
     6a8:	0d1b      	lsrs	r3, r3, #20
     6aa:	595b      	ldr	r3, [r3, r5]
     6ac:	4373      	muls	r3, r6
     6ae:	1ae3      	subs	r3, r4, r3
     6b0:	151b      	asrs	r3, r3, #20
     6b2:	6043      	str	r3, [r0, #4]
     6b4:	0013      	movs	r3, r2
     6b6:	3356      	adds	r3, #86	; 0x56
     6b8:	33ff      	adds	r3, #255	; 0xff
     6ba:	059b      	lsls	r3, r3, #22
     6bc:	0d1b      	lsrs	r3, r3, #20
     6be:	595b      	ldr	r3, [r3, r5]
     6c0:	680c      	ldr	r4, [r1, #0]
     6c2:	435c      	muls	r4, r3
     6c4:	4b08      	ldr	r3, [pc, #32]	; (6e8 <dq_to_abc+0x78>)
     6c6:	469c      	mov	ip, r3
     6c8:	4462      	add	r2, ip
     6ca:	0592      	lsls	r2, r2, #22
     6cc:	0d12      	lsrs	r2, r2, #20
     6ce:	5952      	ldr	r2, [r2, r5]
     6d0:	684b      	ldr	r3, [r1, #4]
     6d2:	4353      	muls	r3, r2
     6d4:	1ae3      	subs	r3, r4, r3
     6d6:	151b      	asrs	r3, r3, #20
     6d8:	6083      	str	r3, [r0, #8]
     6da:	bd70      	pop	{r4, r5, r6, pc}
     6dc:	00001294 	.word	0x00001294
     6e0:	000002aa 	.word	0x000002aa
     6e4:	000005aa 	.word	0x000005aa
     6e8:	00000455 	.word	0x00000455

000006ec <cord_atan>:
     6ec:	b5f0      	push	{r4, r5, r6, r7, lr}
     6ee:	464f      	mov	r7, r9
     6f0:	4646      	mov	r6, r8
     6f2:	b4c0      	push	{r6, r7}
     6f4:	4b63      	ldr	r3, [pc, #396]	; (884 <cord_atan+0x198>)
     6f6:	b091      	sub	sp, #68	; 0x44
     6f8:	001c      	movs	r4, r3
     6fa:	4694      	mov	ip, r2
     6fc:	466a      	mov	r2, sp
     6fe:	4699      	mov	r9, r3
     700:	cca8      	ldmia	r4!, {r3, r5, r7}
     702:	c2a8      	stmia	r2!, {r3, r5, r7}
     704:	cca8      	ldmia	r4!, {r3, r5, r7}
     706:	c2a8      	stmia	r2!, {r3, r5, r7}
     708:	cc28      	ldmia	r4!, {r3, r5}
     70a:	c228      	stmia	r2!, {r3, r5}
     70c:	464b      	mov	r3, r9
     70e:	aa08      	add	r2, sp, #32
     710:	3320      	adds	r3, #32
     712:	4690      	mov	r8, r2
     714:	cbb0      	ldmia	r3!, {r4, r5, r7}
     716:	c2b0      	stmia	r2!, {r4, r5, r7}
     718:	cbb0      	ldmia	r3!, {r4, r5, r7}
     71a:	c2b0      	stmia	r2!, {r4, r5, r7}
     71c:	cb30      	ldmia	r3!, {r4, r5}
     71e:	c230      	stmia	r2!, {r4, r5}
     720:	6802      	ldr	r2, [r0, #0]
     722:	6845      	ldr	r5, [r0, #4]
     724:	17d4      	asrs	r4, r2, #31
     726:	1913      	adds	r3, r2, r4
     728:	466e      	mov	r6, sp
     72a:	4063      	eors	r3, r4
     72c:	2d00      	cmp	r5, #0
     72e:	dd69      	ble.n	804 <cord_atan+0x118>
     730:	195f      	adds	r7, r3, r5
     732:	1aeb      	subs	r3, r5, r3
     734:	9d00      	ldr	r5, [sp, #0]
     736:	2b00      	cmp	r3, #0
     738:	d100      	bne.n	73c <cord_atan+0x50>
     73a:	e091      	b.n	860 <cord_atan+0x174>
     73c:	105c      	asrs	r4, r3, #1
     73e:	2b00      	cmp	r3, #0
     740:	dd65      	ble.n	80e <cord_atan+0x122>
     742:	1078      	asrs	r0, r7, #1
     744:	1a1b      	subs	r3, r3, r0
     746:	6870      	ldr	r0, [r6, #4]
     748:	19e4      	adds	r4, r4, r7
     74a:	4681      	mov	r9, r0
     74c:	444d      	add	r5, r9
     74e:	2b00      	cmp	r3, #0
     750:	d100      	bne.n	754 <cord_atan+0x68>
     752:	e087      	b.n	864 <cord_atan+0x178>
     754:	1098      	asrs	r0, r3, #2
     756:	2b00      	cmp	r3, #0
     758:	dd5f      	ble.n	81a <cord_atan+0x12e>
     75a:	1907      	adds	r7, r0, r4
     75c:	10a4      	asrs	r4, r4, #2
     75e:	1b18      	subs	r0, r3, r4
     760:	68b3      	ldr	r3, [r6, #8]
     762:	4699      	mov	r9, r3
     764:	444d      	add	r5, r9
     766:	2800      	cmp	r0, #0
     768:	d100      	bne.n	76c <cord_atan+0x80>
     76a:	e07e      	b.n	86a <cord_atan+0x17e>
     76c:	10c3      	asrs	r3, r0, #3
     76e:	2800      	cmp	r0, #0
     770:	dd59      	ble.n	826 <cord_atan+0x13a>
     772:	10fc      	asrs	r4, r7, #3
     774:	1b00      	subs	r0, r0, r4
     776:	68f4      	ldr	r4, [r6, #12]
     778:	19db      	adds	r3, r3, r7
     77a:	46a1      	mov	r9, r4
     77c:	444d      	add	r5, r9
     77e:	2800      	cmp	r0, #0
     780:	d100      	bne.n	784 <cord_atan+0x98>
     782:	e074      	b.n	86e <cord_atan+0x182>
     784:	1104      	asrs	r4, r0, #4
     786:	2800      	cmp	r0, #0
     788:	dd53      	ble.n	832 <cord_atan+0x146>
     78a:	18e7      	adds	r7, r4, r3
     78c:	111b      	asrs	r3, r3, #4
     78e:	1ac4      	subs	r4, r0, r3
     790:	6933      	ldr	r3, [r6, #16]
     792:	4699      	mov	r9, r3
     794:	444d      	add	r5, r9
     796:	2c00      	cmp	r4, #0
     798:	d06c      	beq.n	874 <cord_atan+0x188>
     79a:	1163      	asrs	r3, r4, #5
     79c:	2c00      	cmp	r4, #0
     79e:	dd4e      	ble.n	83e <cord_atan+0x152>
     7a0:	1178      	asrs	r0, r7, #5
     7a2:	1a20      	subs	r0, r4, r0
     7a4:	6974      	ldr	r4, [r6, #20]
     7a6:	19db      	adds	r3, r3, r7
     7a8:	46a1      	mov	r9, r4
     7aa:	444d      	add	r5, r9
     7ac:	2800      	cmp	r0, #0
     7ae:	d063      	beq.n	878 <cord_atan+0x18c>
     7b0:	1184      	asrs	r4, r0, #6
     7b2:	2800      	cmp	r0, #0
     7b4:	dd49      	ble.n	84a <cord_atan+0x15e>
     7b6:	18e7      	adds	r7, r4, r3
     7b8:	119b      	asrs	r3, r3, #6
     7ba:	1ac0      	subs	r0, r0, r3
     7bc:	69b3      	ldr	r3, [r6, #24]
     7be:	4699      	mov	r9, r3
     7c0:	444d      	add	r5, r9
     7c2:	2800      	cmp	r0, #0
     7c4:	d05b      	beq.n	87e <cord_atan+0x192>
     7c6:	dd46      	ble.n	856 <cord_atan+0x16a>
     7c8:	69f3      	ldr	r3, [r6, #28]
     7ca:	11c0      	asrs	r0, r0, #7
     7cc:	19c7      	adds	r7, r0, r7
     7ce:	18ed      	adds	r5, r5, r3
     7d0:	2307      	movs	r3, #7
     7d2:	2a00      	cmp	r2, #0
     7d4:	db12      	blt.n	7fc <cord_atan+0x110>
     7d6:	2d00      	cmp	r5, #0
     7d8:	da03      	bge.n	7e2 <cord_atan+0xf6>
     7da:	2280      	movs	r2, #128	; 0x80
     7dc:	00d2      	lsls	r2, r2, #3
     7de:	4691      	mov	r9, r2
     7e0:	444d      	add	r5, r9
     7e2:	4642      	mov	r2, r8
     7e4:	009b      	lsls	r3, r3, #2
     7e6:	58d0      	ldr	r0, [r2, r3]
     7e8:	4663      	mov	r3, ip
     7ea:	4378      	muls	r0, r7
     7ec:	1280      	asrs	r0, r0, #10
     7ee:	600d      	str	r5, [r1, #0]
     7f0:	6018      	str	r0, [r3, #0]
     7f2:	b011      	add	sp, #68	; 0x44
     7f4:	bc0c      	pop	{r2, r3}
     7f6:	4690      	mov	r8, r2
     7f8:	4699      	mov	r9, r3
     7fa:	bdf0      	pop	{r4, r5, r6, r7, pc}
     7fc:	2280      	movs	r2, #128	; 0x80
     7fe:	0092      	lsls	r2, r2, #2
     800:	1b55      	subs	r5, r2, r5
     802:	e7e8      	b.n	7d6 <cord_atan+0xea>
     804:	9800      	ldr	r0, [sp, #0]
     806:	1b5f      	subs	r7, r3, r5
     808:	195b      	adds	r3, r3, r5
     80a:	4245      	negs	r5, r0
     80c:	e793      	b.n	736 <cord_atan+0x4a>
     80e:	1078      	asrs	r0, r7, #1
     810:	18c3      	adds	r3, r0, r3
     812:	6870      	ldr	r0, [r6, #4]
     814:	1b3c      	subs	r4, r7, r4
     816:	1a2d      	subs	r5, r5, r0
     818:	e799      	b.n	74e <cord_atan+0x62>
     81a:	1a27      	subs	r7, r4, r0
     81c:	10a0      	asrs	r0, r4, #2
     81e:	18c0      	adds	r0, r0, r3
     820:	68b3      	ldr	r3, [r6, #8]
     822:	1aed      	subs	r5, r5, r3
     824:	e79f      	b.n	766 <cord_atan+0x7a>
     826:	10fc      	asrs	r4, r7, #3
     828:	1820      	adds	r0, r4, r0
     82a:	68f4      	ldr	r4, [r6, #12]
     82c:	1afb      	subs	r3, r7, r3
     82e:	1b2d      	subs	r5, r5, r4
     830:	e7a5      	b.n	77e <cord_atan+0x92>
     832:	1b1f      	subs	r7, r3, r4
     834:	111c      	asrs	r4, r3, #4
     836:	6933      	ldr	r3, [r6, #16]
     838:	1824      	adds	r4, r4, r0
     83a:	1aed      	subs	r5, r5, r3
     83c:	e7ab      	b.n	796 <cord_atan+0xaa>
     83e:	1178      	asrs	r0, r7, #5
     840:	1900      	adds	r0, r0, r4
     842:	6974      	ldr	r4, [r6, #20]
     844:	1afb      	subs	r3, r7, r3
     846:	1b2d      	subs	r5, r5, r4
     848:	e7b0      	b.n	7ac <cord_atan+0xc0>
     84a:	1b1f      	subs	r7, r3, r4
     84c:	119b      	asrs	r3, r3, #6
     84e:	1818      	adds	r0, r3, r0
     850:	69b3      	ldr	r3, [r6, #24]
     852:	1aed      	subs	r5, r5, r3
     854:	e7b5      	b.n	7c2 <cord_atan+0xd6>
     856:	69f3      	ldr	r3, [r6, #28]
     858:	11c4      	asrs	r4, r0, #7
     85a:	1b3f      	subs	r7, r7, r4
     85c:	1aed      	subs	r5, r5, r3
     85e:	e7b7      	b.n	7d0 <cord_atan+0xe4>
     860:	2300      	movs	r3, #0
     862:	e7b6      	b.n	7d2 <cord_atan+0xe6>
     864:	0027      	movs	r7, r4
     866:	2301      	movs	r3, #1
     868:	e7b3      	b.n	7d2 <cord_atan+0xe6>
     86a:	2302      	movs	r3, #2
     86c:	e7b1      	b.n	7d2 <cord_atan+0xe6>
     86e:	001f      	movs	r7, r3
     870:	2303      	movs	r3, #3
     872:	e7ae      	b.n	7d2 <cord_atan+0xe6>
     874:	2304      	movs	r3, #4
     876:	e7ac      	b.n	7d2 <cord_atan+0xe6>
     878:	001f      	movs	r7, r3
     87a:	2305      	movs	r3, #5
     87c:	e7a9      	b.n	7d2 <cord_atan+0xe6>
     87e:	2306      	movs	r3, #6
     880:	e7a7      	b.n	7d2 <cord_atan+0xe6>
     882:	46c0      	nop			; (mov r8, r8)
     884:	000022ac 	.word	0x000022ac

00000888 <sinpwm>:
     888:	b5f0      	push	{r4, r5, r6, r7, lr}
     88a:	4646      	mov	r6, r8
     88c:	464f      	mov	r7, r9
     88e:	b4c0      	push	{r6, r7}
     890:	b089      	sub	sp, #36	; 0x24
     892:	466c      	mov	r4, sp
     894:	4b65      	ldr	r3, [pc, #404]	; (a2c <sinpwm+0x1a4>)
     896:	46e9      	mov	r9, sp
     898:	3320      	adds	r3, #32
     89a:	cbe0      	ldmia	r3!, {r5, r6, r7}
     89c:	c4e0      	stmia	r4!, {r5, r6, r7}
     89e:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8a0:	c4e0      	stmia	r4!, {r5, r6, r7}
     8a2:	cb60      	ldmia	r3!, {r5, r6}
     8a4:	c460      	stmia	r4!, {r5, r6}
     8a6:	680b      	ldr	r3, [r1, #0]
     8a8:	17dc      	asrs	r4, r3, #31
     8aa:	191e      	adds	r6, r3, r4
     8ac:	4698      	mov	r8, r3
     8ae:	684b      	ldr	r3, [r1, #4]
     8b0:	4066      	eors	r6, r4
     8b2:	469c      	mov	ip, r3
     8b4:	2b00      	cmp	r3, #0
     8b6:	dc00      	bgt.n	8ba <sinpwm+0x32>
     8b8:	e086      	b.n	9c8 <sinpwm+0x140>
     8ba:	18f7      	adds	r7, r6, r3
     8bc:	1b9b      	subs	r3, r3, r6
     8be:	2b00      	cmp	r3, #0
     8c0:	d100      	bne.n	8c4 <sinpwm+0x3c>
     8c2:	e0a0      	b.n	a06 <sinpwm+0x17e>
     8c4:	105e      	asrs	r6, r3, #1
     8c6:	2b00      	cmp	r3, #0
     8c8:	dc00      	bgt.n	8cc <sinpwm+0x44>
     8ca:	e081      	b.n	9d0 <sinpwm+0x148>
     8cc:	107c      	asrs	r4, r7, #1
     8ce:	19f6      	adds	r6, r6, r7
     8d0:	1b1b      	subs	r3, r3, r4
     8d2:	2b00      	cmp	r3, #0
     8d4:	d100      	bne.n	8d8 <sinpwm+0x50>
     8d6:	e098      	b.n	a0a <sinpwm+0x182>
     8d8:	109c      	asrs	r4, r3, #2
     8da:	2b00      	cmp	r3, #0
     8dc:	dc00      	bgt.n	8e0 <sinpwm+0x58>
     8de:	e07b      	b.n	9d8 <sinpwm+0x150>
     8e0:	19a7      	adds	r7, r4, r6
     8e2:	10b6      	asrs	r6, r6, #2
     8e4:	1b9c      	subs	r4, r3, r6
     8e6:	2c00      	cmp	r4, #0
     8e8:	d100      	bne.n	8ec <sinpwm+0x64>
     8ea:	e091      	b.n	a10 <sinpwm+0x188>
     8ec:	10e6      	asrs	r6, r4, #3
     8ee:	2c00      	cmp	r4, #0
     8f0:	dc00      	bgt.n	8f4 <sinpwm+0x6c>
     8f2:	e075      	b.n	9e0 <sinpwm+0x158>
     8f4:	10fd      	asrs	r5, r7, #3
     8f6:	19f6      	adds	r6, r6, r7
     8f8:	1b64      	subs	r4, r4, r5
     8fa:	2c00      	cmp	r4, #0
     8fc:	d100      	bne.n	900 <sinpwm+0x78>
     8fe:	e089      	b.n	a14 <sinpwm+0x18c>
     900:	1125      	asrs	r5, r4, #4
     902:	2c00      	cmp	r4, #0
     904:	dc00      	bgt.n	908 <sinpwm+0x80>
     906:	e06f      	b.n	9e8 <sinpwm+0x160>
     908:	19af      	adds	r7, r5, r6
     90a:	1136      	asrs	r6, r6, #4
     90c:	1ba5      	subs	r5, r4, r6
     90e:	2d00      	cmp	r5, #0
     910:	d100      	bne.n	914 <sinpwm+0x8c>
     912:	e082      	b.n	a1a <sinpwm+0x192>
     914:	116e      	asrs	r6, r5, #5
     916:	2d00      	cmp	r5, #0
     918:	dd6a      	ble.n	9f0 <sinpwm+0x168>
     91a:	117c      	asrs	r4, r7, #5
     91c:	19f6      	adds	r6, r6, r7
     91e:	1b2c      	subs	r4, r5, r4
     920:	2c00      	cmp	r4, #0
     922:	d100      	bne.n	926 <sinpwm+0x9e>
     924:	e07b      	b.n	a1e <sinpwm+0x196>
     926:	11a3      	asrs	r3, r4, #6
     928:	2c00      	cmp	r4, #0
     92a:	dd65      	ble.n	9f8 <sinpwm+0x170>
     92c:	199b      	adds	r3, r3, r6
     92e:	11b6      	asrs	r6, r6, #6
     930:	1ba4      	subs	r4, r4, r6
     932:	2c00      	cmp	r4, #0
     934:	d100      	bne.n	938 <sinpwm+0xb0>
     936:	e075      	b.n	a24 <sinpwm+0x19c>
     938:	dd62      	ble.n	a00 <sinpwm+0x178>
     93a:	11e4      	asrs	r4, r4, #7
     93c:	18e7      	adds	r7, r4, r3
     93e:	2307      	movs	r3, #7
     940:	464c      	mov	r4, r9
     942:	4646      	mov	r6, r8
     944:	009b      	lsls	r3, r3, #2
     946:	58e4      	ldr	r4, [r4, r3]
     948:	4b39      	ldr	r3, [pc, #228]	; (a30 <sinpwm+0x1a8>)
     94a:	0095      	lsls	r5, r2, #2
     94c:	58ed      	ldr	r5, [r5, r3]
     94e:	437c      	muls	r4, r7
     950:	436e      	muls	r6, r5
     952:	25c0      	movs	r5, #192	; 0xc0
     954:	4667      	mov	r7, ip
     956:	00ad      	lsls	r5, r5, #2
     958:	1955      	adds	r5, r2, r5
     95a:	05ad      	lsls	r5, r5, #22
     95c:	0d2d      	lsrs	r5, r5, #20
     95e:	58ed      	ldr	r5, [r5, r3]
     960:	1524      	asrs	r4, r4, #20
     962:	437d      	muls	r5, r7
     964:	1b75      	subs	r5, r6, r5
     966:	152d      	asrs	r5, r5, #20
     968:	6005      	str	r5, [r0, #0]
     96a:	4d32      	ldr	r5, [pc, #200]	; (a34 <sinpwm+0x1ac>)
     96c:	684f      	ldr	r7, [r1, #4]
     96e:	1955      	adds	r5, r2, r5
     970:	05ad      	lsls	r5, r5, #22
     972:	0d2d      	lsrs	r5, r5, #20
     974:	58ee      	ldr	r6, [r5, r3]
     976:	680d      	ldr	r5, [r1, #0]
     978:	4375      	muls	r5, r6
     97a:	4e2f      	ldr	r6, [pc, #188]	; (a38 <sinpwm+0x1b0>)
     97c:	1996      	adds	r6, r2, r6
     97e:	05b6      	lsls	r6, r6, #22
     980:	0d36      	lsrs	r6, r6, #20
     982:	58f6      	ldr	r6, [r6, r3]
     984:	437e      	muls	r6, r7
     986:	1bae      	subs	r6, r5, r6
     988:	0015      	movs	r5, r2
     98a:	3556      	adds	r5, #86	; 0x56
     98c:	35ff      	adds	r5, #255	; 0xff
     98e:	1536      	asrs	r6, r6, #20
     990:	05ad      	lsls	r5, r5, #22
     992:	6046      	str	r6, [r0, #4]
     994:	0d2d      	lsrs	r5, r5, #20
     996:	58ee      	ldr	r6, [r5, r3]
     998:	680d      	ldr	r5, [r1, #0]
     99a:	436e      	muls	r6, r5
     99c:	4d27      	ldr	r5, [pc, #156]	; (a3c <sinpwm+0x1b4>)
     99e:	46ac      	mov	ip, r5
     9a0:	4462      	add	r2, ip
     9a2:	0592      	lsls	r2, r2, #22
     9a4:	0d12      	lsrs	r2, r2, #20
     9a6:	58d2      	ldr	r2, [r2, r3]
     9a8:	684b      	ldr	r3, [r1, #4]
     9aa:	435a      	muls	r2, r3
     9ac:	23fa      	movs	r3, #250	; 0xfa
     9ae:	1ab2      	subs	r2, r6, r2
     9b0:	1512      	asrs	r2, r2, #20
     9b2:	6082      	str	r2, [r0, #8]
     9b4:	005b      	lsls	r3, r3, #1
     9b6:	2001      	movs	r0, #1
     9b8:	429c      	cmp	r4, r3
     9ba:	dc00      	bgt.n	9be <sinpwm+0x136>
     9bc:	2000      	movs	r0, #0
     9be:	b009      	add	sp, #36	; 0x24
     9c0:	bc0c      	pop	{r2, r3}
     9c2:	4690      	mov	r8, r2
     9c4:	4699      	mov	r9, r3
     9c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9c8:	1af7      	subs	r7, r6, r3
     9ca:	0033      	movs	r3, r6
     9cc:	4463      	add	r3, ip
     9ce:	e776      	b.n	8be <sinpwm+0x36>
     9d0:	107c      	asrs	r4, r7, #1
     9d2:	1bbe      	subs	r6, r7, r6
     9d4:	18e3      	adds	r3, r4, r3
     9d6:	e77c      	b.n	8d2 <sinpwm+0x4a>
     9d8:	1b37      	subs	r7, r6, r4
     9da:	10b4      	asrs	r4, r6, #2
     9dc:	18e4      	adds	r4, r4, r3
     9de:	e782      	b.n	8e6 <sinpwm+0x5e>
     9e0:	10fd      	asrs	r5, r7, #3
     9e2:	1bbe      	subs	r6, r7, r6
     9e4:	192c      	adds	r4, r5, r4
     9e6:	e788      	b.n	8fa <sinpwm+0x72>
     9e8:	1b77      	subs	r7, r6, r5
     9ea:	1135      	asrs	r5, r6, #4
     9ec:	192d      	adds	r5, r5, r4
     9ee:	e78e      	b.n	90e <sinpwm+0x86>
     9f0:	117c      	asrs	r4, r7, #5
     9f2:	1bbe      	subs	r6, r7, r6
     9f4:	1964      	adds	r4, r4, r5
     9f6:	e793      	b.n	920 <sinpwm+0x98>
     9f8:	1af3      	subs	r3, r6, r3
     9fa:	11b6      	asrs	r6, r6, #6
     9fc:	1934      	adds	r4, r6, r4
     9fe:	e798      	b.n	932 <sinpwm+0xaa>
     a00:	11e5      	asrs	r5, r4, #7
     a02:	1b5f      	subs	r7, r3, r5
     a04:	e79b      	b.n	93e <sinpwm+0xb6>
     a06:	2300      	movs	r3, #0
     a08:	e79a      	b.n	940 <sinpwm+0xb8>
     a0a:	0037      	movs	r7, r6
     a0c:	2301      	movs	r3, #1
     a0e:	e797      	b.n	940 <sinpwm+0xb8>
     a10:	2302      	movs	r3, #2
     a12:	e795      	b.n	940 <sinpwm+0xb8>
     a14:	0037      	movs	r7, r6
     a16:	2303      	movs	r3, #3
     a18:	e792      	b.n	940 <sinpwm+0xb8>
     a1a:	2304      	movs	r3, #4
     a1c:	e790      	b.n	940 <sinpwm+0xb8>
     a1e:	0037      	movs	r7, r6
     a20:	2305      	movs	r3, #5
     a22:	e78d      	b.n	940 <sinpwm+0xb8>
     a24:	001f      	movs	r7, r3
     a26:	2306      	movs	r3, #6
     a28:	e78a      	b.n	940 <sinpwm+0xb8>
     a2a:	46c0      	nop			; (mov r8, r8)
     a2c:	000022ac 	.word	0x000022ac
     a30:	00001294 	.word	0x00001294
     a34:	000002aa 	.word	0x000002aa
     a38:	000005aa 	.word	0x000005aa
     a3c:	00000455 	.word	0x00000455

00000a40 <svpwm>:
     a40:	b5f0      	push	{r4, r5, r6, r7, lr}
     a42:	464f      	mov	r7, r9
     a44:	4646      	mov	r6, r8
     a46:	b4c0      	push	{r6, r7}
     a48:	4bb2      	ldr	r3, [pc, #712]	; (d14 <svpwm+0x2d4>)
     a4a:	b091      	sub	sp, #68	; 0x44
     a4c:	001c      	movs	r4, r3
     a4e:	4694      	mov	ip, r2
     a50:	466a      	mov	r2, sp
     a52:	4699      	mov	r9, r3
     a54:	cca8      	ldmia	r4!, {r3, r5, r7}
     a56:	c2a8      	stmia	r2!, {r3, r5, r7}
     a58:	cca8      	ldmia	r4!, {r3, r5, r7}
     a5a:	c2a8      	stmia	r2!, {r3, r5, r7}
     a5c:	cc28      	ldmia	r4!, {r3, r5}
     a5e:	c228      	stmia	r2!, {r3, r5}
     a60:	464b      	mov	r3, r9
     a62:	aa08      	add	r2, sp, #32
     a64:	3320      	adds	r3, #32
     a66:	4690      	mov	r8, r2
     a68:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a6a:	c2b0      	stmia	r2!, {r4, r5, r7}
     a6c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a6e:	c2b0      	stmia	r2!, {r4, r5, r7}
     a70:	cb30      	ldmia	r3!, {r4, r5}
     a72:	c230      	stmia	r2!, {r4, r5}
     a74:	680a      	ldr	r2, [r1, #0]
     a76:	684d      	ldr	r5, [r1, #4]
     a78:	17d4      	asrs	r4, r2, #31
     a7a:	1913      	adds	r3, r2, r4
     a7c:	466e      	mov	r6, sp
     a7e:	4063      	eors	r3, r4
     a80:	2d00      	cmp	r5, #0
     a82:	dd78      	ble.n	b76 <svpwm+0x136>
     a84:	195f      	adds	r7, r3, r5
     a86:	1aeb      	subs	r3, r5, r3
     a88:	9d00      	ldr	r5, [sp, #0]
     a8a:	2b00      	cmp	r3, #0
     a8c:	d100      	bne.n	a90 <svpwm+0x50>
     a8e:	e130      	b.n	cf2 <svpwm+0x2b2>
     a90:	105c      	asrs	r4, r3, #1
     a92:	2b00      	cmp	r3, #0
     a94:	dd74      	ble.n	b80 <svpwm+0x140>
     a96:	1079      	asrs	r1, r7, #1
     a98:	1a5b      	subs	r3, r3, r1
     a9a:	6871      	ldr	r1, [r6, #4]
     a9c:	19e4      	adds	r4, r4, r7
     a9e:	4689      	mov	r9, r1
     aa0:	444d      	add	r5, r9
     aa2:	2b00      	cmp	r3, #0
     aa4:	d100      	bne.n	aa8 <svpwm+0x68>
     aa6:	e126      	b.n	cf6 <svpwm+0x2b6>
     aa8:	1099      	asrs	r1, r3, #2
     aaa:	2b00      	cmp	r3, #0
     aac:	dd6e      	ble.n	b8c <svpwm+0x14c>
     aae:	190f      	adds	r7, r1, r4
     ab0:	10a4      	asrs	r4, r4, #2
     ab2:	1b19      	subs	r1, r3, r4
     ab4:	68b3      	ldr	r3, [r6, #8]
     ab6:	4699      	mov	r9, r3
     ab8:	444d      	add	r5, r9
     aba:	2900      	cmp	r1, #0
     abc:	d100      	bne.n	ac0 <svpwm+0x80>
     abe:	e11d      	b.n	cfc <svpwm+0x2bc>
     ac0:	10cb      	asrs	r3, r1, #3
     ac2:	2900      	cmp	r1, #0
     ac4:	dd68      	ble.n	b98 <svpwm+0x158>
     ac6:	10fc      	asrs	r4, r7, #3
     ac8:	1b09      	subs	r1, r1, r4
     aca:	68f4      	ldr	r4, [r6, #12]
     acc:	19db      	adds	r3, r3, r7
     ace:	46a1      	mov	r9, r4
     ad0:	444d      	add	r5, r9
     ad2:	2900      	cmp	r1, #0
     ad4:	d100      	bne.n	ad8 <svpwm+0x98>
     ad6:	e113      	b.n	d00 <svpwm+0x2c0>
     ad8:	110c      	asrs	r4, r1, #4
     ada:	2900      	cmp	r1, #0
     adc:	dd62      	ble.n	ba4 <svpwm+0x164>
     ade:	18e7      	adds	r7, r4, r3
     ae0:	111b      	asrs	r3, r3, #4
     ae2:	1acc      	subs	r4, r1, r3
     ae4:	6933      	ldr	r3, [r6, #16]
     ae6:	4699      	mov	r9, r3
     ae8:	444d      	add	r5, r9
     aea:	2c00      	cmp	r4, #0
     aec:	d100      	bne.n	af0 <svpwm+0xb0>
     aee:	e10a      	b.n	d06 <svpwm+0x2c6>
     af0:	1163      	asrs	r3, r4, #5
     af2:	2c00      	cmp	r4, #0
     af4:	dd5c      	ble.n	bb0 <svpwm+0x170>
     af6:	1179      	asrs	r1, r7, #5
     af8:	1a61      	subs	r1, r4, r1
     afa:	6974      	ldr	r4, [r6, #20]
     afc:	19db      	adds	r3, r3, r7
     afe:	46a1      	mov	r9, r4
     b00:	444d      	add	r5, r9
     b02:	2900      	cmp	r1, #0
     b04:	d100      	bne.n	b08 <svpwm+0xc8>
     b06:	e100      	b.n	d0a <svpwm+0x2ca>
     b08:	118c      	asrs	r4, r1, #6
     b0a:	2900      	cmp	r1, #0
     b0c:	dd56      	ble.n	bbc <svpwm+0x17c>
     b0e:	18e7      	adds	r7, r4, r3
     b10:	119b      	asrs	r3, r3, #6
     b12:	1ac9      	subs	r1, r1, r3
     b14:	69b3      	ldr	r3, [r6, #24]
     b16:	4699      	mov	r9, r3
     b18:	444d      	add	r5, r9
     b1a:	2900      	cmp	r1, #0
     b1c:	d100      	bne.n	b20 <svpwm+0xe0>
     b1e:	e0f7      	b.n	d10 <svpwm+0x2d0>
     b20:	dc00      	bgt.n	b24 <svpwm+0xe4>
     b22:	e0e1      	b.n	ce8 <svpwm+0x2a8>
     b24:	69f3      	ldr	r3, [r6, #28]
     b26:	11c9      	asrs	r1, r1, #7
     b28:	19cf      	adds	r7, r1, r7
     b2a:	18ed      	adds	r5, r5, r3
     b2c:	2307      	movs	r3, #7
     b2e:	2a00      	cmp	r2, #0
     b30:	db1d      	blt.n	b6e <svpwm+0x12e>
     b32:	2d00      	cmp	r5, #0
     b34:	da03      	bge.n	b3e <svpwm+0xfe>
     b36:	2280      	movs	r2, #128	; 0x80
     b38:	00d2      	lsls	r2, r2, #3
     b3a:	4691      	mov	r9, r2
     b3c:	444d      	add	r5, r9
     b3e:	4642      	mov	r2, r8
     b40:	009b      	lsls	r3, r3, #2
     b42:	58d1      	ldr	r1, [r2, r3]
     b44:	23fa      	movs	r3, #250	; 0xfa
     b46:	4379      	muls	r1, r7
     b48:	4465      	add	r5, ip
     b4a:	05ad      	lsls	r5, r5, #22
     b4c:	1509      	asrs	r1, r1, #20
     b4e:	0dad      	lsrs	r5, r5, #22
     b50:	005b      	lsls	r3, r3, #1
     b52:	2600      	movs	r6, #0
     b54:	4299      	cmp	r1, r3
     b56:	dd01      	ble.n	b5c <svpwm+0x11c>
     b58:	0019      	movs	r1, r3
     b5a:	3601      	adds	r6, #1
     b5c:	006a      	lsls	r2, r5, #1
     b5e:	1952      	adds	r2, r2, r5
     b60:	1252      	asrs	r2, r2, #9
     b62:	2a05      	cmp	r2, #5
     b64:	d84b      	bhi.n	bfe <svpwm+0x1be>
     b66:	4b6c      	ldr	r3, [pc, #432]	; (d18 <svpwm+0x2d8>)
     b68:	0092      	lsls	r2, r2, #2
     b6a:	589b      	ldr	r3, [r3, r2]
     b6c:	469f      	mov	pc, r3
     b6e:	2280      	movs	r2, #128	; 0x80
     b70:	0092      	lsls	r2, r2, #2
     b72:	1b55      	subs	r5, r2, r5
     b74:	e7dd      	b.n	b32 <svpwm+0xf2>
     b76:	9900      	ldr	r1, [sp, #0]
     b78:	1b5f      	subs	r7, r3, r5
     b7a:	195b      	adds	r3, r3, r5
     b7c:	424d      	negs	r5, r1
     b7e:	e784      	b.n	a8a <svpwm+0x4a>
     b80:	1079      	asrs	r1, r7, #1
     b82:	18cb      	adds	r3, r1, r3
     b84:	6871      	ldr	r1, [r6, #4]
     b86:	1b3c      	subs	r4, r7, r4
     b88:	1a6d      	subs	r5, r5, r1
     b8a:	e78a      	b.n	aa2 <svpwm+0x62>
     b8c:	1a67      	subs	r7, r4, r1
     b8e:	10a1      	asrs	r1, r4, #2
     b90:	18c9      	adds	r1, r1, r3
     b92:	68b3      	ldr	r3, [r6, #8]
     b94:	1aed      	subs	r5, r5, r3
     b96:	e790      	b.n	aba <svpwm+0x7a>
     b98:	10fc      	asrs	r4, r7, #3
     b9a:	1861      	adds	r1, r4, r1
     b9c:	68f4      	ldr	r4, [r6, #12]
     b9e:	1afb      	subs	r3, r7, r3
     ba0:	1b2d      	subs	r5, r5, r4
     ba2:	e796      	b.n	ad2 <svpwm+0x92>
     ba4:	1b1f      	subs	r7, r3, r4
     ba6:	111c      	asrs	r4, r3, #4
     ba8:	6933      	ldr	r3, [r6, #16]
     baa:	1864      	adds	r4, r4, r1
     bac:	1aed      	subs	r5, r5, r3
     bae:	e79c      	b.n	aea <svpwm+0xaa>
     bb0:	1179      	asrs	r1, r7, #5
     bb2:	1909      	adds	r1, r1, r4
     bb4:	6974      	ldr	r4, [r6, #20]
     bb6:	1afb      	subs	r3, r7, r3
     bb8:	1b2d      	subs	r5, r5, r4
     bba:	e7a2      	b.n	b02 <svpwm+0xc2>
     bbc:	1b1f      	subs	r7, r3, r4
     bbe:	119b      	asrs	r3, r3, #6
     bc0:	1859      	adds	r1, r3, r1
     bc2:	69b3      	ldr	r3, [r6, #24]
     bc4:	1aed      	subs	r5, r5, r3
     bc6:	e7a8      	b.n	b1a <svpwm+0xda>
     bc8:	4b54      	ldr	r3, [pc, #336]	; (d1c <svpwm+0x2dc>)
     bca:	4a55      	ldr	r2, [pc, #340]	; (d20 <svpwm+0x2e0>)
     bcc:	1b5b      	subs	r3, r3, r5
     bce:	3556      	adds	r5, #86	; 0x56
     bd0:	059b      	lsls	r3, r3, #22
     bd2:	05ad      	lsls	r5, r5, #22
     bd4:	0d1b      	lsrs	r3, r3, #20
     bd6:	0d2d      	lsrs	r5, r5, #20
     bd8:	589b      	ldr	r3, [r3, r2]
     bda:	58ac      	ldr	r4, [r5, r2]
     bdc:	434b      	muls	r3, r1
     bde:	434c      	muls	r4, r1
     be0:	129b      	asrs	r3, r3, #10
     be2:	12a1      	asrs	r1, r4, #10
     be4:	1aca      	subs	r2, r1, r3
     be6:	6002      	str	r2, [r0, #0]
     be8:	425a      	negs	r2, r3
     bea:	1a52      	subs	r2, r2, r1
     bec:	1859      	adds	r1, r3, r1
     bee:	6042      	str	r2, [r0, #4]
     bf0:	6081      	str	r1, [r0, #8]
     bf2:	0030      	movs	r0, r6
     bf4:	b011      	add	sp, #68	; 0x44
     bf6:	bc0c      	pop	{r2, r3}
     bf8:	4690      	mov	r8, r2
     bfa:	4699      	mov	r9, r3
     bfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
     bfe:	4b49      	ldr	r3, [pc, #292]	; (d24 <svpwm+0x2e4>)
     c00:	4c47      	ldr	r4, [pc, #284]	; (d20 <svpwm+0x2e0>)
     c02:	1b5b      	subs	r3, r3, r5
     c04:	059b      	lsls	r3, r3, #22
     c06:	0d1b      	lsrs	r3, r3, #20
     c08:	591a      	ldr	r2, [r3, r4]
     c0a:	23c0      	movs	r3, #192	; 0xc0
     c0c:	009b      	lsls	r3, r3, #2
     c0e:	469c      	mov	ip, r3
     c10:	4465      	add	r5, ip
     c12:	05ad      	lsls	r5, r5, #22
     c14:	0d2d      	lsrs	r5, r5, #20
     c16:	592c      	ldr	r4, [r5, r4]
     c18:	434a      	muls	r2, r1
     c1a:	4361      	muls	r1, r4
     c1c:	1292      	asrs	r2, r2, #10
     c1e:	1289      	asrs	r1, r1, #10
     c20:	1853      	adds	r3, r2, r1
     c22:	6003      	str	r3, [r0, #0]
     c24:	1a8b      	subs	r3, r1, r2
     c26:	4252      	negs	r2, r2
     c28:	1a52      	subs	r2, r2, r1
     c2a:	6043      	str	r3, [r0, #4]
     c2c:	6082      	str	r2, [r0, #8]
     c2e:	e7e0      	b.n	bf2 <svpwm+0x1b2>
     c30:	4b3d      	ldr	r3, [pc, #244]	; (d28 <svpwm+0x2e8>)
     c32:	4a3b      	ldr	r2, [pc, #236]	; (d20 <svpwm+0x2e0>)
     c34:	1b5b      	subs	r3, r3, r5
     c36:	059b      	lsls	r3, r3, #22
     c38:	0d1b      	lsrs	r3, r3, #20
     c3a:	589f      	ldr	r7, [r3, r2]
     c3c:	4b3b      	ldr	r3, [pc, #236]	; (d2c <svpwm+0x2ec>)
     c3e:	434f      	muls	r7, r1
     c40:	469c      	mov	ip, r3
     c42:	4465      	add	r5, ip
     c44:	05ad      	lsls	r5, r5, #22
     c46:	0d2d      	lsrs	r5, r5, #20
     c48:	58ac      	ldr	r4, [r5, r2]
     c4a:	12bf      	asrs	r7, r7, #10
     c4c:	4361      	muls	r1, r4
     c4e:	1289      	asrs	r1, r1, #10
     c50:	1a7b      	subs	r3, r7, r1
     c52:	6003      	str	r3, [r0, #0]
     c54:	187b      	adds	r3, r7, r1
     c56:	427f      	negs	r7, r7
     c58:	1a7f      	subs	r7, r7, r1
     c5a:	6043      	str	r3, [r0, #4]
     c5c:	6087      	str	r7, [r0, #8]
     c5e:	e7c8      	b.n	bf2 <svpwm+0x1b2>
     c60:	4b33      	ldr	r3, [pc, #204]	; (d30 <svpwm+0x2f0>)
     c62:	4a2f      	ldr	r2, [pc, #188]	; (d20 <svpwm+0x2e0>)
     c64:	1b5b      	subs	r3, r3, r5
     c66:	35ac      	adds	r5, #172	; 0xac
     c68:	059b      	lsls	r3, r3, #22
     c6a:	35ff      	adds	r5, #255	; 0xff
     c6c:	0d1b      	lsrs	r3, r3, #20
     c6e:	05ad      	lsls	r5, r5, #22
     c70:	589b      	ldr	r3, [r3, r2]
     c72:	0d2d      	lsrs	r5, r5, #20
     c74:	58ac      	ldr	r4, [r5, r2]
     c76:	434b      	muls	r3, r1
     c78:	4361      	muls	r1, r4
     c7a:	129b      	asrs	r3, r3, #10
     c7c:	1289      	asrs	r1, r1, #10
     c7e:	425a      	negs	r2, r3
     c80:	1a52      	subs	r2, r2, r1
     c82:	6002      	str	r2, [r0, #0]
     c84:	185a      	adds	r2, r3, r1
     c86:	1ac9      	subs	r1, r1, r3
     c88:	6042      	str	r2, [r0, #4]
     c8a:	6081      	str	r1, [r0, #8]
     c8c:	e7b1      	b.n	bf2 <svpwm+0x1b2>
     c8e:	4b29      	ldr	r3, [pc, #164]	; (d34 <svpwm+0x2f4>)
     c90:	4a23      	ldr	r2, [pc, #140]	; (d20 <svpwm+0x2e0>)
     c92:	1b5b      	subs	r3, r3, r5
     c94:	3501      	adds	r5, #1
     c96:	059b      	lsls	r3, r3, #22
     c98:	35ff      	adds	r5, #255	; 0xff
     c9a:	0d1b      	lsrs	r3, r3, #20
     c9c:	05ad      	lsls	r5, r5, #22
     c9e:	589b      	ldr	r3, [r3, r2]
     ca0:	0d2d      	lsrs	r5, r5, #20
     ca2:	58ac      	ldr	r4, [r5, r2]
     ca4:	434b      	muls	r3, r1
     ca6:	434c      	muls	r4, r1
     ca8:	129b      	asrs	r3, r3, #10
     caa:	12a1      	asrs	r1, r4, #10
     cac:	425a      	negs	r2, r3
     cae:	1a52      	subs	r2, r2, r1
     cb0:	6002      	str	r2, [r0, #0]
     cb2:	1a5a      	subs	r2, r3, r1
     cb4:	1859      	adds	r1, r3, r1
     cb6:	6042      	str	r2, [r0, #4]
     cb8:	6081      	str	r1, [r0, #8]
     cba:	e79a      	b.n	bf2 <svpwm+0x1b2>
     cbc:	4b1e      	ldr	r3, [pc, #120]	; (d38 <svpwm+0x2f8>)
     cbe:	4a18      	ldr	r2, [pc, #96]	; (d20 <svpwm+0x2e0>)
     cc0:	1b5b      	subs	r3, r3, r5
     cc2:	3d55      	subs	r5, #85	; 0x55
     cc4:	059b      	lsls	r3, r3, #22
     cc6:	05ad      	lsls	r5, r5, #22
     cc8:	0d1b      	lsrs	r3, r3, #20
     cca:	0d2d      	lsrs	r5, r5, #20
     ccc:	589b      	ldr	r3, [r3, r2]
     cce:	58ac      	ldr	r4, [r5, r2]
     cd0:	434b      	muls	r3, r1
     cd2:	4361      	muls	r1, r4
     cd4:	129b      	asrs	r3, r3, #10
     cd6:	1289      	asrs	r1, r1, #10
     cd8:	185a      	adds	r2, r3, r1
     cda:	6002      	str	r2, [r0, #0]
     cdc:	425a      	negs	r2, r3
     cde:	1a52      	subs	r2, r2, r1
     ce0:	1a59      	subs	r1, r3, r1
     ce2:	6042      	str	r2, [r0, #4]
     ce4:	6081      	str	r1, [r0, #8]
     ce6:	e784      	b.n	bf2 <svpwm+0x1b2>
     ce8:	69f3      	ldr	r3, [r6, #28]
     cea:	11cc      	asrs	r4, r1, #7
     cec:	1b3f      	subs	r7, r7, r4
     cee:	1aed      	subs	r5, r5, r3
     cf0:	e71c      	b.n	b2c <svpwm+0xec>
     cf2:	2300      	movs	r3, #0
     cf4:	e71b      	b.n	b2e <svpwm+0xee>
     cf6:	0027      	movs	r7, r4
     cf8:	2301      	movs	r3, #1
     cfa:	e718      	b.n	b2e <svpwm+0xee>
     cfc:	2302      	movs	r3, #2
     cfe:	e716      	b.n	b2e <svpwm+0xee>
     d00:	001f      	movs	r7, r3
     d02:	2303      	movs	r3, #3
     d04:	e713      	b.n	b2e <svpwm+0xee>
     d06:	2304      	movs	r3, #4
     d08:	e711      	b.n	b2e <svpwm+0xee>
     d0a:	001f      	movs	r7, r3
     d0c:	2305      	movs	r3, #5
     d0e:	e70e      	b.n	b2e <svpwm+0xee>
     d10:	2306      	movs	r3, #6
     d12:	e70c      	b.n	b2e <svpwm+0xee>
     d14:	000022ac 	.word	0x000022ac
     d18:	00002294 	.word	0x00002294
     d1c:	00000a54 	.word	0x00000a54
     d20:	00001294 	.word	0x00001294
     d24:	000007aa 	.word	0x000007aa
     d28:	00000854 	.word	0x00000854
     d2c:	00000256 	.word	0x00000256
     d30:	000008ff 	.word	0x000008ff
     d34:	000009aa 	.word	0x000009aa
     d38:	00000aff 	.word	0x00000aff

00000d3c <get_speed>:
     d3c:	4a0f      	ldr	r2, [pc, #60]	; (d7c <get_speed+0x40>)
     d3e:	b510      	push	{r4, lr}
     d40:	6813      	ldr	r3, [r2, #0]
     d42:	6854      	ldr	r4, [r2, #4]
     d44:	1ac3      	subs	r3, r0, r3
     d46:	6050      	str	r0, [r2, #4]
     d48:	6014      	str	r4, [r2, #0]
     d4a:	17da      	asrs	r2, r3, #31
     d4c:	1898      	adds	r0, r3, r2
     d4e:	4050      	eors	r0, r2
     d50:	22fa      	movs	r2, #250	; 0xfa
     d52:	0092      	lsls	r2, r2, #2
     d54:	4290      	cmp	r0, r2
     d56:	dd04      	ble.n	d62 <get_speed+0x26>
     d58:	2b00      	cmp	r3, #0
     d5a:	db0a      	blt.n	d72 <get_speed+0x36>
     d5c:	4a08      	ldr	r2, [pc, #32]	; (d80 <get_speed+0x44>)
     d5e:	4694      	mov	ip, r2
     d60:	4463      	add	r3, ip
     d62:	680a      	ldr	r2, [r1, #0]
     d64:	4807      	ldr	r0, [pc, #28]	; (d84 <get_speed+0x48>)
     d66:	18d2      	adds	r2, r2, r3
     d68:	105b      	asrs	r3, r3, #1
     d6a:	4343      	muls	r3, r0
     d6c:	600a      	str	r2, [r1, #0]
     d6e:	1318      	asrs	r0, r3, #12
     d70:	bd10      	pop	{r4, pc}
     d72:	2280      	movs	r2, #128	; 0x80
     d74:	0152      	lsls	r2, r2, #5
     d76:	4694      	mov	ip, r2
     d78:	4463      	add	r3, ip
     d7a:	e7f2      	b.n	d62 <get_speed+0x26>
     d7c:	2000004c 	.word	0x2000004c
     d80:	fffff000 	.word	0xfffff000
     d84:	0002ae7c 	.word	0x0002ae7c

00000d88 <mfilter>:
     d88:	221f      	movs	r2, #31
     d8a:	4908      	ldr	r1, [pc, #32]	; (dac <mfilter+0x24>)
     d8c:	b510      	push	{r4, lr}
     d8e:	688b      	ldr	r3, [r1, #8]
     d90:	3301      	adds	r3, #1
     d92:	4013      	ands	r3, r2
     d94:	608b      	str	r3, [r1, #8]
     d96:	009b      	lsls	r3, r3, #2
     d98:	18cb      	adds	r3, r1, r3
     d9a:	68ca      	ldr	r2, [r1, #12]
     d9c:	691c      	ldr	r4, [r3, #16]
     d9e:	6118      	str	r0, [r3, #16]
     da0:	1b12      	subs	r2, r2, r4
     da2:	1812      	adds	r2, r2, r0
     da4:	1150      	asrs	r0, r2, #5
     da6:	60ca      	str	r2, [r1, #12]
     da8:	bd10      	pop	{r4, pc}
     daa:	46c0      	nop			; (mov r8, r8)
     dac:	2000004c 	.word	0x2000004c

00000db0 <NVIC_EnableIRQ>:
     db0:	b580      	push	{r7, lr}
     db2:	b082      	sub	sp, #8
     db4:	af00      	add	r7, sp, #0
     db6:	0002      	movs	r2, r0
     db8:	1dfb      	adds	r3, r7, #7
     dba:	701a      	strb	r2, [r3, #0]
     dbc:	4909      	ldr	r1, [pc, #36]	; (de4 <NVIC_EnableIRQ+0x34>)
     dbe:	1dfb      	adds	r3, r7, #7
     dc0:	781b      	ldrb	r3, [r3, #0]
     dc2:	b25b      	sxtb	r3, r3
     dc4:	095b      	lsrs	r3, r3, #5
     dc6:	1dfa      	adds	r2, r7, #7
     dc8:	7812      	ldrb	r2, [r2, #0]
     dca:	0010      	movs	r0, r2
     dcc:	221f      	movs	r2, #31
     dce:	4002      	ands	r2, r0
     dd0:	2001      	movs	r0, #1
     dd2:	4090      	lsls	r0, r2
     dd4:	0002      	movs	r2, r0
     dd6:	009b      	lsls	r3, r3, #2
     dd8:	505a      	str	r2, [r3, r1]
     dda:	46c0      	nop			; (mov r8, r8)
     ddc:	46bd      	mov	sp, r7
     dde:	b002      	add	sp, #8
     de0:	bd80      	pop	{r7, pc}
     de2:	46c0      	nop			; (mov r8, r8)
     de4:	e000e100 	.word	0xe000e100

00000de8 <PortConfig>:
     de8:	b580      	push	{r7, lr}
     dea:	af00      	add	r7, sp, #0
     dec:	4b42      	ldr	r3, [pc, #264]	; (ef8 <PortConfig+0x110>)
     dee:	4a42      	ldr	r2, [pc, #264]	; (ef8 <PortConfig+0x110>)
     df0:	69d2      	ldr	r2, [r2, #28]
     df2:	2180      	movs	r1, #128	; 0x80
     df4:	0389      	lsls	r1, r1, #14
     df6:	430a      	orrs	r2, r1
     df8:	61da      	str	r2, [r3, #28]
     dfa:	4b40      	ldr	r3, [pc, #256]	; (efc <PortConfig+0x114>)
     dfc:	4a3f      	ldr	r2, [pc, #252]	; (efc <PortConfig+0x114>)
     dfe:	6892      	ldr	r2, [r2, #8]
     e00:	493f      	ldr	r1, [pc, #252]	; (f00 <PortConfig+0x118>)
     e02:	400a      	ands	r2, r1
     e04:	609a      	str	r2, [r3, #8]
     e06:	4b3d      	ldr	r3, [pc, #244]	; (efc <PortConfig+0x114>)
     e08:	4a3c      	ldr	r2, [pc, #240]	; (efc <PortConfig+0x114>)
     e0a:	6892      	ldr	r2, [r2, #8]
     e0c:	493d      	ldr	r1, [pc, #244]	; (f04 <PortConfig+0x11c>)
     e0e:	430a      	orrs	r2, r1
     e10:	609a      	str	r2, [r3, #8]
     e12:	4b3a      	ldr	r3, [pc, #232]	; (efc <PortConfig+0x114>)
     e14:	4a39      	ldr	r2, [pc, #228]	; (efc <PortConfig+0x114>)
     e16:	6852      	ldr	r2, [r2, #4]
     e18:	21fc      	movs	r1, #252	; 0xfc
     e1a:	0109      	lsls	r1, r1, #4
     e1c:	430a      	orrs	r2, r1
     e1e:	605a      	str	r2, [r3, #4]
     e20:	4b36      	ldr	r3, [pc, #216]	; (efc <PortConfig+0x114>)
     e22:	4a36      	ldr	r2, [pc, #216]	; (efc <PortConfig+0x114>)
     e24:	68d2      	ldr	r2, [r2, #12]
     e26:	21fc      	movs	r1, #252	; 0xfc
     e28:	0109      	lsls	r1, r1, #4
     e2a:	430a      	orrs	r2, r1
     e2c:	60da      	str	r2, [r3, #12]
     e2e:	4b33      	ldr	r3, [pc, #204]	; (efc <PortConfig+0x114>)
     e30:	4a32      	ldr	r2, [pc, #200]	; (efc <PortConfig+0x114>)
     e32:	6992      	ldr	r2, [r2, #24]
     e34:	4934      	ldr	r1, [pc, #208]	; (f08 <PortConfig+0x120>)
     e36:	430a      	orrs	r2, r1
     e38:	619a      	str	r2, [r3, #24]
     e3a:	4b2f      	ldr	r3, [pc, #188]	; (ef8 <PortConfig+0x110>)
     e3c:	4a2e      	ldr	r2, [pc, #184]	; (ef8 <PortConfig+0x110>)
     e3e:	69d2      	ldr	r2, [r2, #28]
     e40:	2180      	movs	r1, #128	; 0x80
     e42:	0489      	lsls	r1, r1, #18
     e44:	430a      	orrs	r2, r1
     e46:	61da      	str	r2, [r3, #28]
     e48:	4b30      	ldr	r3, [pc, #192]	; (f0c <PortConfig+0x124>)
     e4a:	4a30      	ldr	r2, [pc, #192]	; (f0c <PortConfig+0x124>)
     e4c:	68d2      	ldr	r2, [r2, #12]
     e4e:	2102      	movs	r1, #2
     e50:	438a      	bics	r2, r1
     e52:	60da      	str	r2, [r3, #12]
     e54:	4b28      	ldr	r3, [pc, #160]	; (ef8 <PortConfig+0x110>)
     e56:	4a28      	ldr	r2, [pc, #160]	; (ef8 <PortConfig+0x110>)
     e58:	69d2      	ldr	r2, [r2, #28]
     e5a:	2180      	movs	r1, #128	; 0x80
     e5c:	0449      	lsls	r1, r1, #17
     e5e:	430a      	orrs	r2, r1
     e60:	61da      	str	r2, [r3, #28]
     e62:	4b2b      	ldr	r3, [pc, #172]	; (f10 <PortConfig+0x128>)
     e64:	4a2a      	ldr	r2, [pc, #168]	; (f10 <PortConfig+0x128>)
     e66:	6892      	ldr	r2, [r2, #8]
     e68:	492a      	ldr	r1, [pc, #168]	; (f14 <PortConfig+0x12c>)
     e6a:	400a      	ands	r2, r1
     e6c:	609a      	str	r2, [r3, #8]
     e6e:	4b28      	ldr	r3, [pc, #160]	; (f10 <PortConfig+0x128>)
     e70:	4a27      	ldr	r2, [pc, #156]	; (f10 <PortConfig+0x128>)
     e72:	6892      	ldr	r2, [r2, #8]
     e74:	21a0      	movs	r1, #160	; 0xa0
     e76:	02c9      	lsls	r1, r1, #11
     e78:	430a      	orrs	r2, r1
     e7a:	609a      	str	r2, [r3, #8]
     e7c:	4b24      	ldr	r3, [pc, #144]	; (f10 <PortConfig+0x128>)
     e7e:	4a24      	ldr	r2, [pc, #144]	; (f10 <PortConfig+0x128>)
     e80:	68d2      	ldr	r2, [r2, #12]
     e82:	21c0      	movs	r1, #192	; 0xc0
     e84:	0089      	lsls	r1, r1, #2
     e86:	430a      	orrs	r2, r1
     e88:	60da      	str	r2, [r3, #12]
     e8a:	4b21      	ldr	r3, [pc, #132]	; (f10 <PortConfig+0x128>)
     e8c:	4a20      	ldr	r2, [pc, #128]	; (f10 <PortConfig+0x128>)
     e8e:	6992      	ldr	r2, [r2, #24]
     e90:	21c0      	movs	r1, #192	; 0xc0
     e92:	0309      	lsls	r1, r1, #12
     e94:	430a      	orrs	r2, r1
     e96:	619a      	str	r2, [r3, #24]
     e98:	4b1d      	ldr	r3, [pc, #116]	; (f10 <PortConfig+0x128>)
     e9a:	4a1d      	ldr	r2, [pc, #116]	; (f10 <PortConfig+0x128>)
     e9c:	6852      	ldr	r2, [r2, #4]
     e9e:	2180      	movs	r1, #128	; 0x80
     ea0:	0089      	lsls	r1, r1, #2
     ea2:	430a      	orrs	r2, r1
     ea4:	605a      	str	r2, [r3, #4]
     ea6:	4b1a      	ldr	r3, [pc, #104]	; (f10 <PortConfig+0x128>)
     ea8:	4a19      	ldr	r2, [pc, #100]	; (f10 <PortConfig+0x128>)
     eaa:	6852      	ldr	r2, [r2, #4]
     eac:	491a      	ldr	r1, [pc, #104]	; (f18 <PortConfig+0x130>)
     eae:	400a      	ands	r2, r1
     eb0:	605a      	str	r2, [r3, #4]
     eb2:	4b11      	ldr	r3, [pc, #68]	; (ef8 <PortConfig+0x110>)
     eb4:	4a10      	ldr	r2, [pc, #64]	; (ef8 <PortConfig+0x110>)
     eb6:	69d2      	ldr	r2, [r2, #28]
     eb8:	2180      	movs	r1, #128	; 0x80
     eba:	0409      	lsls	r1, r1, #16
     ebc:	430a      	orrs	r2, r1
     ebe:	61da      	str	r2, [r3, #28]
     ec0:	4b16      	ldr	r3, [pc, #88]	; (f1c <PortConfig+0x134>)
     ec2:	2200      	movs	r2, #0
     ec4:	609a      	str	r2, [r3, #8]
     ec6:	4b15      	ldr	r3, [pc, #84]	; (f1c <PortConfig+0x134>)
     ec8:	2200      	movs	r2, #0
     eca:	601a      	str	r2, [r3, #0]
     ecc:	4b13      	ldr	r3, [pc, #76]	; (f1c <PortConfig+0x134>)
     ece:	4a13      	ldr	r2, [pc, #76]	; (f1c <PortConfig+0x134>)
     ed0:	6852      	ldr	r2, [r2, #4]
     ed2:	2160      	movs	r1, #96	; 0x60
     ed4:	430a      	orrs	r2, r1
     ed6:	605a      	str	r2, [r3, #4]
     ed8:	4b10      	ldr	r3, [pc, #64]	; (f1c <PortConfig+0x134>)
     eda:	4a10      	ldr	r2, [pc, #64]	; (f1c <PortConfig+0x134>)
     edc:	68d2      	ldr	r2, [r2, #12]
     ede:	2160      	movs	r1, #96	; 0x60
     ee0:	430a      	orrs	r2, r1
     ee2:	60da      	str	r2, [r3, #12]
     ee4:	4b0d      	ldr	r3, [pc, #52]	; (f1c <PortConfig+0x134>)
     ee6:	4a0d      	ldr	r2, [pc, #52]	; (f1c <PortConfig+0x134>)
     ee8:	6992      	ldr	r2, [r2, #24]
     eea:	21f0      	movs	r1, #240	; 0xf0
     eec:	0189      	lsls	r1, r1, #6
     eee:	430a      	orrs	r2, r1
     ef0:	619a      	str	r2, [r3, #24]
     ef2:	46c0      	nop			; (mov r8, r8)
     ef4:	46bd      	mov	sp, r7
     ef6:	bd80      	pop	{r7, pc}
     ef8:	40020000 	.word	0x40020000
     efc:	400a8000 	.word	0x400a8000
     f00:	ff000fff 	.word	0xff000fff
     f04:	00aaa000 	.word	0x00aaa000
     f08:	00fff000 	.word	0x00fff000
     f0c:	400c8000 	.word	0x400c8000
     f10:	400c0000 	.word	0x400c0000
     f14:	fff0ffff 	.word	0xfff0ffff
     f18:	fffffeff 	.word	0xfffffeff
     f1c:	400b8000 	.word	0x400b8000

00000f20 <ClkConfig>:
     f20:	b580      	push	{r7, lr}
     f22:	af00      	add	r7, sp, #0
     f24:	4b18      	ldr	r3, [pc, #96]	; (f88 <ClkConfig+0x68>)
     f26:	4a18      	ldr	r2, [pc, #96]	; (f88 <ClkConfig+0x68>)
     f28:	6892      	ldr	r2, [r2, #8]
     f2a:	2101      	movs	r1, #1
     f2c:	430a      	orrs	r2, r1
     f2e:	609a      	str	r2, [r3, #8]
     f30:	46c0      	nop			; (mov r8, r8)
     f32:	4b15      	ldr	r3, [pc, #84]	; (f88 <ClkConfig+0x68>)
     f34:	681b      	ldr	r3, [r3, #0]
     f36:	2204      	movs	r2, #4
     f38:	4013      	ands	r3, r2
     f3a:	d0fa      	beq.n	f32 <ClkConfig+0x12>
     f3c:	4b12      	ldr	r3, [pc, #72]	; (f88 <ClkConfig+0x68>)
     f3e:	4a12      	ldr	r2, [pc, #72]	; (f88 <ClkConfig+0x68>)
     f40:	68d2      	ldr	r2, [r2, #12]
     f42:	2102      	movs	r1, #2
     f44:	430a      	orrs	r2, r1
     f46:	60da      	str	r2, [r3, #12]
     f48:	4b0f      	ldr	r3, [pc, #60]	; (f88 <ClkConfig+0x68>)
     f4a:	4a10      	ldr	r2, [pc, #64]	; (f8c <ClkConfig+0x6c>)
     f4c:	605a      	str	r2, [r3, #4]
     f4e:	46c0      	nop			; (mov r8, r8)
     f50:	4b0d      	ldr	r3, [pc, #52]	; (f88 <ClkConfig+0x68>)
     f52:	681b      	ldr	r3, [r3, #0]
     f54:	2202      	movs	r2, #2
     f56:	4013      	ands	r3, r2
     f58:	d0fa      	beq.n	f50 <ClkConfig+0x30>
     f5a:	4b0d      	ldr	r3, [pc, #52]	; (f90 <ClkConfig+0x70>)
     f5c:	4a0c      	ldr	r2, [pc, #48]	; (f90 <ClkConfig+0x70>)
     f5e:	6812      	ldr	r2, [r2, #0]
     f60:	2120      	movs	r1, #32
     f62:	430a      	orrs	r2, r1
     f64:	601a      	str	r2, [r3, #0]
     f66:	4b08      	ldr	r3, [pc, #32]	; (f88 <ClkConfig+0x68>)
     f68:	4a07      	ldr	r2, [pc, #28]	; (f88 <ClkConfig+0x68>)
     f6a:	68d2      	ldr	r2, [r2, #12]
     f6c:	2180      	movs	r1, #128	; 0x80
     f6e:	0049      	lsls	r1, r1, #1
     f70:	430a      	orrs	r2, r1
     f72:	60da      	str	r2, [r3, #12]
     f74:	4b04      	ldr	r3, [pc, #16]	; (f88 <ClkConfig+0x68>)
     f76:	4a04      	ldr	r2, [pc, #16]	; (f88 <ClkConfig+0x68>)
     f78:	68d2      	ldr	r2, [r2, #12]
     f7a:	2104      	movs	r1, #4
     f7c:	430a      	orrs	r2, r1
     f7e:	60da      	str	r2, [r3, #12]
     f80:	46c0      	nop			; (mov r8, r8)
     f82:	46bd      	mov	sp, r7
     f84:	bd80      	pop	{r7, pc}
     f86:	46c0      	nop			; (mov r8, r8)
     f88:	40020000 	.word	0x40020000
     f8c:	00000e04 	.word	0x00000e04
     f90:	40018000 	.word	0x40018000

00000f94 <TimerConfig>:
     f94:	b580      	push	{r7, lr}
     f96:	af00      	add	r7, sp, #0
     f98:	4b72      	ldr	r3, [pc, #456]	; (1164 <TimerConfig+0x1d0>)
     f9a:	4a72      	ldr	r2, [pc, #456]	; (1164 <TimerConfig+0x1d0>)
     f9c:	69d2      	ldr	r2, [r2, #28]
     f9e:	2180      	movs	r1, #128	; 0x80
     fa0:	0309      	lsls	r1, r1, #12
     fa2:	430a      	orrs	r2, r1
     fa4:	61da      	str	r2, [r3, #28]
     fa6:	4b6f      	ldr	r3, [pc, #444]	; (1164 <TimerConfig+0x1d0>)
     fa8:	4a6e      	ldr	r2, [pc, #440]	; (1164 <TimerConfig+0x1d0>)
     faa:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fac:	2180      	movs	r1, #128	; 0x80
     fae:	04c9      	lsls	r1, r1, #19
     fb0:	430a      	orrs	r2, r1
     fb2:	629a      	str	r2, [r3, #40]	; 0x28
     fb4:	4b6b      	ldr	r3, [pc, #428]	; (1164 <TimerConfig+0x1d0>)
     fb6:	4a6b      	ldr	r2, [pc, #428]	; (1164 <TimerConfig+0x1d0>)
     fb8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fba:	496b      	ldr	r1, [pc, #428]	; (1168 <TimerConfig+0x1d4>)
     fbc:	400a      	ands	r2, r1
     fbe:	629a      	str	r2, [r3, #40]	; 0x28
     fc0:	4b6a      	ldr	r3, [pc, #424]	; (116c <TimerConfig+0x1d8>)
     fc2:	2200      	movs	r2, #0
     fc4:	601a      	str	r2, [r3, #0]
     fc6:	4b69      	ldr	r3, [pc, #420]	; (116c <TimerConfig+0x1d8>)
     fc8:	2204      	movs	r2, #4
     fca:	605a      	str	r2, [r3, #4]
     fcc:	4b67      	ldr	r3, [pc, #412]	; (116c <TimerConfig+0x1d8>)
     fce:	4a68      	ldr	r2, [pc, #416]	; (1170 <TimerConfig+0x1dc>)
     fd0:	609a      	str	r2, [r3, #8]
     fd2:	4b66      	ldr	r3, [pc, #408]	; (116c <TimerConfig+0x1d8>)
     fd4:	2280      	movs	r2, #128	; 0x80
     fd6:	0092      	lsls	r2, r2, #2
     fd8:	611a      	str	r2, [r3, #16]
     fda:	4b64      	ldr	r3, [pc, #400]	; (116c <TimerConfig+0x1d8>)
     fdc:	2280      	movs	r2, #128	; 0x80
     fde:	0092      	lsls	r2, r2, #2
     fe0:	615a      	str	r2, [r3, #20]
     fe2:	4b62      	ldr	r3, [pc, #392]	; (116c <TimerConfig+0x1d8>)
     fe4:	2280      	movs	r2, #128	; 0x80
     fe6:	0092      	lsls	r2, r2, #2
     fe8:	619a      	str	r2, [r3, #24]
     fea:	4b60      	ldr	r3, [pc, #384]	; (116c <TimerConfig+0x1d8>)
     fec:	4a5f      	ldr	r2, [pc, #380]	; (116c <TimerConfig+0x1d8>)
     fee:	6a12      	ldr	r2, [r2, #32]
     ff0:	4960      	ldr	r1, [pc, #384]	; (1174 <TimerConfig+0x1e0>)
     ff2:	400a      	ands	r2, r1
     ff4:	621a      	str	r2, [r3, #32]
     ff6:	4b5d      	ldr	r3, [pc, #372]	; (116c <TimerConfig+0x1d8>)
     ff8:	4a5c      	ldr	r2, [pc, #368]	; (116c <TimerConfig+0x1d8>)
     ffa:	6a12      	ldr	r2, [r2, #32]
     ffc:	21e0      	movs	r1, #224	; 0xe0
     ffe:	0109      	lsls	r1, r1, #4
    1000:	430a      	orrs	r2, r1
    1002:	621a      	str	r2, [r3, #32]
    1004:	4b59      	ldr	r3, [pc, #356]	; (116c <TimerConfig+0x1d8>)
    1006:	4a59      	ldr	r2, [pc, #356]	; (116c <TimerConfig+0x1d8>)
    1008:	6b12      	ldr	r2, [r2, #48]	; 0x30
    100a:	210f      	movs	r1, #15
    100c:	438a      	bics	r2, r1
    100e:	631a      	str	r2, [r3, #48]	; 0x30
    1010:	4b56      	ldr	r3, [pc, #344]	; (116c <TimerConfig+0x1d8>)
    1012:	4a56      	ldr	r2, [pc, #344]	; (116c <TimerConfig+0x1d8>)
    1014:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1016:	210c      	movs	r1, #12
    1018:	430a      	orrs	r2, r1
    101a:	631a      	str	r2, [r3, #48]	; 0x30
    101c:	4b53      	ldr	r3, [pc, #332]	; (116c <TimerConfig+0x1d8>)
    101e:	4a53      	ldr	r2, [pc, #332]	; (116c <TimerConfig+0x1d8>)
    1020:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1022:	2101      	movs	r1, #1
    1024:	430a      	orrs	r2, r1
    1026:	631a      	str	r2, [r3, #48]	; 0x30
    1028:	4b50      	ldr	r3, [pc, #320]	; (116c <TimerConfig+0x1d8>)
    102a:	4a50      	ldr	r2, [pc, #320]	; (116c <TimerConfig+0x1d8>)
    102c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    102e:	4952      	ldr	r1, [pc, #328]	; (1178 <TimerConfig+0x1e4>)
    1030:	400a      	ands	r2, r1
    1032:	631a      	str	r2, [r3, #48]	; 0x30
    1034:	4b4d      	ldr	r3, [pc, #308]	; (116c <TimerConfig+0x1d8>)
    1036:	4a4d      	ldr	r2, [pc, #308]	; (116c <TimerConfig+0x1d8>)
    1038:	6b12      	ldr	r2, [r2, #48]	; 0x30
    103a:	21c0      	movs	r1, #192	; 0xc0
    103c:	0109      	lsls	r1, r1, #4
    103e:	430a      	orrs	r2, r1
    1040:	631a      	str	r2, [r3, #48]	; 0x30
    1042:	4b4a      	ldr	r3, [pc, #296]	; (116c <TimerConfig+0x1d8>)
    1044:	4a49      	ldr	r2, [pc, #292]	; (116c <TimerConfig+0x1d8>)
    1046:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1048:	2180      	movs	r1, #128	; 0x80
    104a:	0049      	lsls	r1, r1, #1
    104c:	430a      	orrs	r2, r1
    104e:	631a      	str	r2, [r3, #48]	; 0x30
    1050:	4b46      	ldr	r3, [pc, #280]	; (116c <TimerConfig+0x1d8>)
    1052:	4a46      	ldr	r2, [pc, #280]	; (116c <TimerConfig+0x1d8>)
    1054:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1056:	4947      	ldr	r1, [pc, #284]	; (1174 <TimerConfig+0x1e0>)
    1058:	400a      	ands	r2, r1
    105a:	625a      	str	r2, [r3, #36]	; 0x24
    105c:	4b43      	ldr	r3, [pc, #268]	; (116c <TimerConfig+0x1d8>)
    105e:	4a43      	ldr	r2, [pc, #268]	; (116c <TimerConfig+0x1d8>)
    1060:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1062:	21e0      	movs	r1, #224	; 0xe0
    1064:	0109      	lsls	r1, r1, #4
    1066:	430a      	orrs	r2, r1
    1068:	625a      	str	r2, [r3, #36]	; 0x24
    106a:	4b40      	ldr	r3, [pc, #256]	; (116c <TimerConfig+0x1d8>)
    106c:	4a3f      	ldr	r2, [pc, #252]	; (116c <TimerConfig+0x1d8>)
    106e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1070:	210f      	movs	r1, #15
    1072:	438a      	bics	r2, r1
    1074:	635a      	str	r2, [r3, #52]	; 0x34
    1076:	4b3d      	ldr	r3, [pc, #244]	; (116c <TimerConfig+0x1d8>)
    1078:	4a3c      	ldr	r2, [pc, #240]	; (116c <TimerConfig+0x1d8>)
    107a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    107c:	210c      	movs	r1, #12
    107e:	430a      	orrs	r2, r1
    1080:	635a      	str	r2, [r3, #52]	; 0x34
    1082:	4b3a      	ldr	r3, [pc, #232]	; (116c <TimerConfig+0x1d8>)
    1084:	4a39      	ldr	r2, [pc, #228]	; (116c <TimerConfig+0x1d8>)
    1086:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1088:	2101      	movs	r1, #1
    108a:	430a      	orrs	r2, r1
    108c:	635a      	str	r2, [r3, #52]	; 0x34
    108e:	4b37      	ldr	r3, [pc, #220]	; (116c <TimerConfig+0x1d8>)
    1090:	4a36      	ldr	r2, [pc, #216]	; (116c <TimerConfig+0x1d8>)
    1092:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1094:	4938      	ldr	r1, [pc, #224]	; (1178 <TimerConfig+0x1e4>)
    1096:	400a      	ands	r2, r1
    1098:	635a      	str	r2, [r3, #52]	; 0x34
    109a:	4b34      	ldr	r3, [pc, #208]	; (116c <TimerConfig+0x1d8>)
    109c:	4a33      	ldr	r2, [pc, #204]	; (116c <TimerConfig+0x1d8>)
    109e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10a0:	21c0      	movs	r1, #192	; 0xc0
    10a2:	0109      	lsls	r1, r1, #4
    10a4:	430a      	orrs	r2, r1
    10a6:	635a      	str	r2, [r3, #52]	; 0x34
    10a8:	4b30      	ldr	r3, [pc, #192]	; (116c <TimerConfig+0x1d8>)
    10aa:	4a30      	ldr	r2, [pc, #192]	; (116c <TimerConfig+0x1d8>)
    10ac:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10ae:	2180      	movs	r1, #128	; 0x80
    10b0:	0049      	lsls	r1, r1, #1
    10b2:	430a      	orrs	r2, r1
    10b4:	635a      	str	r2, [r3, #52]	; 0x34
    10b6:	4b2d      	ldr	r3, [pc, #180]	; (116c <TimerConfig+0x1d8>)
    10b8:	4a2c      	ldr	r2, [pc, #176]	; (116c <TimerConfig+0x1d8>)
    10ba:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10bc:	492d      	ldr	r1, [pc, #180]	; (1174 <TimerConfig+0x1e0>)
    10be:	400a      	ands	r2, r1
    10c0:	629a      	str	r2, [r3, #40]	; 0x28
    10c2:	4b2a      	ldr	r3, [pc, #168]	; (116c <TimerConfig+0x1d8>)
    10c4:	4a29      	ldr	r2, [pc, #164]	; (116c <TimerConfig+0x1d8>)
    10c6:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10c8:	21e0      	movs	r1, #224	; 0xe0
    10ca:	0109      	lsls	r1, r1, #4
    10cc:	430a      	orrs	r2, r1
    10ce:	629a      	str	r2, [r3, #40]	; 0x28
    10d0:	4b26      	ldr	r3, [pc, #152]	; (116c <TimerConfig+0x1d8>)
    10d2:	4a26      	ldr	r2, [pc, #152]	; (116c <TimerConfig+0x1d8>)
    10d4:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10d6:	210f      	movs	r1, #15
    10d8:	438a      	bics	r2, r1
    10da:	639a      	str	r2, [r3, #56]	; 0x38
    10dc:	4b23      	ldr	r3, [pc, #140]	; (116c <TimerConfig+0x1d8>)
    10de:	4a23      	ldr	r2, [pc, #140]	; (116c <TimerConfig+0x1d8>)
    10e0:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10e2:	210c      	movs	r1, #12
    10e4:	430a      	orrs	r2, r1
    10e6:	639a      	str	r2, [r3, #56]	; 0x38
    10e8:	4b20      	ldr	r3, [pc, #128]	; (116c <TimerConfig+0x1d8>)
    10ea:	4a20      	ldr	r2, [pc, #128]	; (116c <TimerConfig+0x1d8>)
    10ec:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10ee:	2101      	movs	r1, #1
    10f0:	430a      	orrs	r2, r1
    10f2:	639a      	str	r2, [r3, #56]	; 0x38
    10f4:	4b1d      	ldr	r3, [pc, #116]	; (116c <TimerConfig+0x1d8>)
    10f6:	4a1d      	ldr	r2, [pc, #116]	; (116c <TimerConfig+0x1d8>)
    10f8:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10fa:	491f      	ldr	r1, [pc, #124]	; (1178 <TimerConfig+0x1e4>)
    10fc:	400a      	ands	r2, r1
    10fe:	639a      	str	r2, [r3, #56]	; 0x38
    1100:	4b1a      	ldr	r3, [pc, #104]	; (116c <TimerConfig+0x1d8>)
    1102:	4a1a      	ldr	r2, [pc, #104]	; (116c <TimerConfig+0x1d8>)
    1104:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1106:	21c0      	movs	r1, #192	; 0xc0
    1108:	0109      	lsls	r1, r1, #4
    110a:	430a      	orrs	r2, r1
    110c:	639a      	str	r2, [r3, #56]	; 0x38
    110e:	4b17      	ldr	r3, [pc, #92]	; (116c <TimerConfig+0x1d8>)
    1110:	4a16      	ldr	r2, [pc, #88]	; (116c <TimerConfig+0x1d8>)
    1112:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1114:	2180      	movs	r1, #128	; 0x80
    1116:	0049      	lsls	r1, r1, #1
    1118:	430a      	orrs	r2, r1
    111a:	639a      	str	r2, [r3, #56]	; 0x38
    111c:	4b13      	ldr	r3, [pc, #76]	; (116c <TimerConfig+0x1d8>)
    111e:	4a13      	ldr	r2, [pc, #76]	; (116c <TimerConfig+0x1d8>)
    1120:	6c12      	ldr	r2, [r2, #64]	; 0x40
    1122:	21c8      	movs	r1, #200	; 0xc8
    1124:	01c9      	lsls	r1, r1, #7
    1126:	430a      	orrs	r2, r1
    1128:	641a      	str	r2, [r3, #64]	; 0x40
    112a:	4b10      	ldr	r3, [pc, #64]	; (116c <TimerConfig+0x1d8>)
    112c:	4a0f      	ldr	r2, [pc, #60]	; (116c <TimerConfig+0x1d8>)
    112e:	6c52      	ldr	r2, [r2, #68]	; 0x44
    1130:	21c8      	movs	r1, #200	; 0xc8
    1132:	01c9      	lsls	r1, r1, #7
    1134:	430a      	orrs	r2, r1
    1136:	645a      	str	r2, [r3, #68]	; 0x44
    1138:	4b0c      	ldr	r3, [pc, #48]	; (116c <TimerConfig+0x1d8>)
    113a:	4a0c      	ldr	r2, [pc, #48]	; (116c <TimerConfig+0x1d8>)
    113c:	6c92      	ldr	r2, [r2, #72]	; 0x48
    113e:	21c8      	movs	r1, #200	; 0xc8
    1140:	01c9      	lsls	r1, r1, #7
    1142:	430a      	orrs	r2, r1
    1144:	649a      	str	r2, [r3, #72]	; 0x48
    1146:	4b09      	ldr	r3, [pc, #36]	; (116c <TimerConfig+0x1d8>)
    1148:	4a08      	ldr	r2, [pc, #32]	; (116c <TimerConfig+0x1d8>)
    114a:	6d92      	ldr	r2, [r2, #88]	; 0x58
    114c:	2102      	movs	r1, #2
    114e:	430a      	orrs	r2, r1
    1150:	659a      	str	r2, [r3, #88]	; 0x58
    1152:	4b06      	ldr	r3, [pc, #24]	; (116c <TimerConfig+0x1d8>)
    1154:	2201      	movs	r2, #1
    1156:	60da      	str	r2, [r3, #12]
    1158:	200d      	movs	r0, #13
    115a:	f7ff fe29 	bl	db0 <NVIC_EnableIRQ>
    115e:	46c0      	nop			; (mov r8, r8)
    1160:	46bd      	mov	sp, r7
    1162:	bd80      	pop	{r7, pc}
    1164:	40020000 	.word	0x40020000
    1168:	ff00ffff 	.word	0xff00ffff
    116c:	40098000 	.word	0x40098000
    1170:	000003ff 	.word	0x000003ff
    1174:	fffff1ff 	.word	0xfffff1ff
    1178:	fffff0ff 	.word	0xfffff0ff

0000117c <SystemInit>:
    117c:	b580      	push	{r7, lr}
    117e:	af00      	add	r7, sp, #0
    1180:	f7ff fece 	bl	f20 <ClkConfig>
    1184:	f7ff fe30 	bl	de8 <PortConfig>
    1188:	f7ff ff04 	bl	f94 <TimerConfig>
    118c:	46c0      	nop			; (mov r8, r8)
    118e:	46bd      	mov	sp, r7
    1190:	bd80      	pop	{r7, pc}
    1192:	46c0      	nop			; (mov r8, r8)

00001194 <b2g>:
    1194:	0843      	lsrs	r3, r0, #1
    1196:	4058      	eors	r0, r3
    1198:	4770      	bx	lr
    119a:	46c0      	nop			; (mov r8, r8)

0000119c <g2b>:
    119c:	0003      	movs	r3, r0
    119e:	2000      	movs	r0, #0
    11a0:	2b00      	cmp	r3, #0
    11a2:	d002      	beq.n	11aa <g2b+0xe>
    11a4:	4058      	eors	r0, r3
    11a6:	085b      	lsrs	r3, r3, #1
    11a8:	d1fc      	bne.n	11a4 <g2b+0x8>
    11aa:	4770      	bx	lr

000011ac <adc_init>:
    11ac:	b580      	push	{r7, lr}
    11ae:	af00      	add	r7, sp, #0
    11b0:	4b0f      	ldr	r3, [pc, #60]	; (11f0 <adc_init+0x44>)
    11b2:	4a0f      	ldr	r2, [pc, #60]	; (11f0 <adc_init+0x44>)
    11b4:	69d2      	ldr	r2, [r2, #28]
    11b6:	2180      	movs	r1, #128	; 0x80
    11b8:	0289      	lsls	r1, r1, #10
    11ba:	430a      	orrs	r2, r1
    11bc:	61da      	str	r2, [r3, #28]
    11be:	4b0c      	ldr	r3, [pc, #48]	; (11f0 <adc_init+0x44>)
    11c0:	4a0c      	ldr	r2, [pc, #48]	; (11f4 <adc_init+0x48>)
    11c2:	615a      	str	r2, [r3, #20]
    11c4:	4b0c      	ldr	r3, [pc, #48]	; (11f8 <adc_init+0x4c>)
    11c6:	2200      	movs	r2, #0
    11c8:	601a      	str	r2, [r3, #0]
    11ca:	4b0b      	ldr	r3, [pc, #44]	; (11f8 <adc_init+0x4c>)
    11cc:	4a0a      	ldr	r2, [pc, #40]	; (11f8 <adc_init+0x4c>)
    11ce:	6812      	ldr	r2, [r2, #0]
    11d0:	490a      	ldr	r1, [pc, #40]	; (11fc <adc_init+0x50>)
    11d2:	430a      	orrs	r2, r1
    11d4:	601a      	str	r2, [r3, #0]
    11d6:	4b08      	ldr	r3, [pc, #32]	; (11f8 <adc_init+0x4c>)
    11d8:	4a07      	ldr	r2, [pc, #28]	; (11f8 <adc_init+0x4c>)
    11da:	6a92      	ldr	r2, [r2, #40]	; 0x28
    11dc:	2139      	movs	r1, #57	; 0x39
    11de:	430a      	orrs	r2, r1
    11e0:	629a      	str	r2, [r3, #40]	; 0x28
    11e2:	4b05      	ldr	r3, [pc, #20]	; (11f8 <adc_init+0x4c>)
    11e4:	2210      	movs	r2, #16
    11e6:	621a      	str	r2, [r3, #32]
    11e8:	46c0      	nop			; (mov r8, r8)
    11ea:	46bd      	mov	sp, r7
    11ec:	bd80      	pop	{r7, pc}
    11ee:	46c0      	nop			; (mov r8, r8)
    11f0:	40020000 	.word	0x40020000
    11f4:	00002020 	.word	0x00002020
    11f8:	40088000 	.word	0x40088000
    11fc:	00000205 	.word	0x00000205

00001200 <dma_init>:
    1200:	b580      	push	{r7, lr}
    1202:	af00      	add	r7, sp, #0
    1204:	4b18      	ldr	r3, [pc, #96]	; (1268 <dma_init+0x68>)
    1206:	4a18      	ldr	r2, [pc, #96]	; (1268 <dma_init+0x68>)
    1208:	69d2      	ldr	r2, [r2, #28]
    120a:	2120      	movs	r1, #32
    120c:	430a      	orrs	r2, r1
    120e:	61da      	str	r2, [r3, #28]
    1210:	4b16      	ldr	r3, [pc, #88]	; (126c <dma_init+0x6c>)
    1212:	4a17      	ldr	r2, [pc, #92]	; (1270 <dma_init+0x70>)
    1214:	609a      	str	r2, [r3, #8]
    1216:	4b15      	ldr	r3, [pc, #84]	; (126c <dma_init+0x6c>)
    1218:	2201      	movs	r2, #1
    121a:	4252      	negs	r2, r2
    121c:	62da      	str	r2, [r3, #44]	; 0x2c
    121e:	4b13      	ldr	r3, [pc, #76]	; (126c <dma_init+0x6c>)
    1220:	2201      	movs	r2, #1
    1222:	4252      	negs	r2, r2
    1224:	621a      	str	r2, [r3, #32]
    1226:	4b11      	ldr	r3, [pc, #68]	; (126c <dma_init+0x6c>)
    1228:	2201      	movs	r2, #1
    122a:	4252      	negs	r2, r2
    122c:	635a      	str	r2, [r3, #52]	; 0x34
    122e:	4b0f      	ldr	r3, [pc, #60]	; (126c <dma_init+0x6c>)
    1230:	2280      	movs	r2, #128	; 0x80
    1232:	05d2      	lsls	r2, r2, #23
    1234:	61da      	str	r2, [r3, #28]
    1236:	4b0d      	ldr	r3, [pc, #52]	; (126c <dma_init+0x6c>)
    1238:	2280      	movs	r2, #128	; 0x80
    123a:	05d2      	lsls	r2, r2, #23
    123c:	625a      	str	r2, [r3, #36]	; 0x24
    123e:	4b0b      	ldr	r3, [pc, #44]	; (126c <dma_init+0x6c>)
    1240:	2201      	movs	r2, #1
    1242:	605a      	str	r2, [r3, #4]
    1244:	4a0a      	ldr	r2, [pc, #40]	; (1270 <dma_init+0x70>)
    1246:	23f0      	movs	r3, #240	; 0xf0
    1248:	005b      	lsls	r3, r3, #1
    124a:	490a      	ldr	r1, [pc, #40]	; (1274 <dma_init+0x74>)
    124c:	50d1      	str	r1, [r2, r3]
    124e:	490a      	ldr	r1, [pc, #40]	; (1278 <dma_init+0x78>)
    1250:	4a07      	ldr	r2, [pc, #28]	; (1270 <dma_init+0x70>)
    1252:	23f2      	movs	r3, #242	; 0xf2
    1254:	005b      	lsls	r3, r3, #1
    1256:	50d1      	str	r1, [r2, r3]
    1258:	4a05      	ldr	r2, [pc, #20]	; (1270 <dma_init+0x70>)
    125a:	23f4      	movs	r3, #244	; 0xf4
    125c:	005b      	lsls	r3, r3, #1
    125e:	4907      	ldr	r1, [pc, #28]	; (127c <dma_init+0x7c>)
    1260:	50d1      	str	r1, [r2, r3]
    1262:	46c0      	nop			; (mov r8, r8)
    1264:	46bd      	mov	sp, r7
    1266:	bd80      	pop	{r7, pc}
    1268:	40020000 	.word	0x40020000
    126c:	40028000 	.word	0x40028000
    1270:	20100000 	.word	0x20100000
    1274:	40088018 	.word	0x40088018
    1278:	2010020c 	.word	0x2010020c
    127c:	ae000031 	.word	0xae000031

00001280 <adc_dma_init>:
    1280:	b580      	push	{r7, lr}
    1282:	af00      	add	r7, sp, #0
    1284:	f7ff ff92 	bl	11ac <adc_init>
    1288:	f7ff ffba 	bl	1200 <dma_init>
    128c:	46c0      	nop			; (mov r8, r8)
    128e:	46bd      	mov	sp, r7
    1290:	bd80      	pop	{r7, pc}
    1292:	46c0      	nop			; (mov r8, r8)

00001294 <cos_tb>:
    1294:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    12a4:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12b4:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    12c4:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    12d4:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    12e4:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    12f4:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    1304:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1314:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1324:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1334:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1344:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1354:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    1364:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    1374:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    1384:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    1394:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    13a4:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13b4:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    13c4:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    13d4:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    13e4:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    13f4:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    1404:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1414:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1424:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1434:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1444:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1454:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    1464:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    1474:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    1484:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    1494:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    14a4:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14b4:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    14c4:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    14d4:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    14e4:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    14f4:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    1504:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1514:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1524:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1534:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1544:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1554:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    1564:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    1574:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    1584:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    1594:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    15a4:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15b4:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    15c4:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    15d4:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    15e4:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    15f4:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    1604:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1614:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1624:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1634:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1644:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1654:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    1664:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    1674:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    1684:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    1694:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    16a4:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16b4:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    16c4:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    16d4:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    16e4:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    16f4:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    1704:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1714:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1724:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1734:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1744:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1754:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    1764:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    1774:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    1784:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    1794:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    17a4:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17b4:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    17c4:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    17d4:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    17e4:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    17f4:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    1804:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1814:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1824:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1834:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1844:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1854:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    1864:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    1874:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    1884:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    1894:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    18a4:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18b4:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    18c4:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    18d4:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    18e4:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    18f4:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    1904:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1914:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1924:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1934:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1944:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1954:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    1964:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    1974:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    1984:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    1994:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    19a4:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19b4:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    19c4:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    19d4:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    19e4:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    19f4:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    1a04:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a14:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a24:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a34:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a44:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a54:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1a64:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1a74:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1a84:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1a94:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1aa4:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1ab4:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1ac4:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1ad4:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1ae4:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1af4:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1b04:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b14:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b24:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b34:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b44:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b54:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1b64:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1b74:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1b84:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1b94:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1ba4:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1bb4:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1bc4:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1bd4:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1be4:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1bf4:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1c04:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c14:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c24:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c34:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c44:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c54:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1c64:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1c74:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1c84:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1c94:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1ca4:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1cb4:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1cc4:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1cd4:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1ce4:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1cf4:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1d04:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d14:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d24:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d34:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d44:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d54:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1d64:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1d74:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1d84:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1d94:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1da4:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1db4:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1dc4:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1dd4:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1de4:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1df4:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1e04:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e14:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e24:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e34:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e44:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e54:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1e64:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1e74:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1e84:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1e94:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1ea4:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1eb4:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1ec4:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1ed4:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1ee4:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1ef4:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1f04:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f14:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f24:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f34:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f44:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f54:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1f64:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1f74:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1f84:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1f94:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1fa4:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1fb4:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    1fc4:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    1fd4:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    1fe4:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    1ff4:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    2004:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2014:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2024:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2034:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2044:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2054:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    2064:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    2074:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    2084:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    2094:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    20a4:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20b4:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    20c4:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    20d4:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    20e4:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    20f4:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    2104:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2114:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2124:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2134:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2144:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2154:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    2164:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    2174:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    2184:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    2194:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    21a4:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21b4:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    21c4:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    21d4:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    21e4:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    21f4:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    2204:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2214:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2224:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2234:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2244:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2254:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    2264:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    2274:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    2284:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    2294:	0bfe 0000 0c30 0000 0c60 0000 0c8e 0000     ....0...`.......
    22a4:	0bc8 0000 0cbc 0000 0080 0000 004c 0000     ............L...
    22b4:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    22c4:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    22d4:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    22e4:	026e 0000 026e 0000                         n...n...
