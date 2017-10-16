
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 55 05 00 00 b5 05 00 00 b5 05 00 00     ... U...........
	...
      2c:	b5 05 00 00 00 00 00 00 00 00 00 00 b5 05 00 00     ................
      3c:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      4c:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      5c:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      6c:	b5 05 00 00 b5 05 00 00 29 05 00 00 b5 05 00 00     ........).......
      7c:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      8c:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      9c:	b5 05 00 00 b5 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	b5 05 00 00 b5 05 00 00 b5 05 00 00 b5 05 00 00     ................
      bc:	b5 05 00 00                                         ....

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
     192:	f001 f81d 	bl	11d0 <g2b>
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
     278:	f000 ff9a 	bl	11b0 <SystemInit>
     27c:	f001 f81a 	bl	12b4 <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	2396      	movs	r3, #150	; 0x96
     28a:	009a      	lsls	r2, r3, #2
     28c:	2396      	movs	r3, #150	; 0x96
     28e:	0099      	lsls	r1, r3, #2
     290:	4b98      	ldr	r3, [pc, #608]	; (4f4 <_stack_size+0xf4>)
     292:	0018      	movs	r0, r3
     294:	f000 f992 	bl	5bc <reg_init>
     298:	2396      	movs	r3, #150	; 0x96
     29a:	009a      	lsls	r2, r3, #2
     29c:	2396      	movs	r3, #150	; 0x96
     29e:	0099      	lsls	r1, r3, #2
     2a0:	4b95      	ldr	r3, [pc, #596]	; (4f8 <_stack_size+0xf8>)
     2a2:	0018      	movs	r0, r3
     2a4:	f000 f98a 	bl	5bc <reg_init>
     2a8:	23fa      	movs	r3, #250	; 0xfa
     2aa:	011a      	lsls	r2, r3, #4
     2ac:	4b93      	ldr	r3, [pc, #588]	; (4fc <_stack_size+0xfc>)
     2ae:	2100      	movs	r1, #0
     2b0:	0018      	movs	r0, r3
     2b2:	f000 f983 	bl	5bc <reg_init>
     2b6:	4a92      	ldr	r2, [pc, #584]	; (500 <_stack_size+0x100>)
     2b8:	4b92      	ldr	r3, [pc, #584]	; (504 <_stack_size+0x104>)
     2ba:	2101      	movs	r1, #1
     2bc:	0018      	movs	r0, r3
     2be:	f000 f97d 	bl	5bc <reg_init>
     2c2:	4b91      	ldr	r3, [pc, #580]	; (508 <_stack_size+0x108>)
     2c4:	2200      	movs	r2, #0
     2c6:	601a      	str	r2, [r3, #0]
     2c8:	2300      	movs	r3, #0
     2ca:	65bb      	str	r3, [r7, #88]	; 0x58
     2cc:	2300      	movs	r3, #0
     2ce:	657b      	str	r3, [r7, #84]	; 0x54
     2d0:	2300      	movs	r3, #0
     2d2:	647b      	str	r3, [r7, #68]	; 0x44
     2d4:	2300      	movs	r3, #0
     2d6:	643b      	str	r3, [r7, #64]	; 0x40
     2d8:	2300      	movs	r3, #0
     2da:	65fb      	str	r3, [r7, #92]	; 0x5c
     2dc:	e01f      	b.n	31e <main+0xda>
     2de:	f7ff ff03 	bl	e8 <adc_dma_wait>
     2e2:	4b8a      	ldr	r3, [pc, #552]	; (50c <_stack_size+0x10c>)
     2e4:	685b      	ldr	r3, [r3, #4]
     2e6:	051b      	lsls	r3, r3, #20
     2e8:	0d1a      	lsrs	r2, r3, #20
     2ea:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2ec:	18d3      	adds	r3, r2, r3
     2ee:	65bb      	str	r3, [r7, #88]	; 0x58
     2f0:	4b86      	ldr	r3, [pc, #536]	; (50c <_stack_size+0x10c>)
     2f2:	689b      	ldr	r3, [r3, #8]
     2f4:	051b      	lsls	r3, r3, #20
     2f6:	0d1a      	lsrs	r2, r3, #20
     2f8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2fa:	18d3      	adds	r3, r2, r3
     2fc:	657b      	str	r3, [r7, #84]	; 0x54
     2fe:	4b83      	ldr	r3, [pc, #524]	; (50c <_stack_size+0x10c>)
     300:	68db      	ldr	r3, [r3, #12]
     302:	051b      	lsls	r3, r3, #20
     304:	0d1a      	lsrs	r2, r3, #20
     306:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     308:	18d3      	adds	r3, r2, r3
     30a:	647b      	str	r3, [r7, #68]	; 0x44
     30c:	f7ff ff3a 	bl	184 <encoder_read>
     310:	0002      	movs	r2, r0
     312:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     314:	189b      	adds	r3, r3, r2
     316:	643b      	str	r3, [r7, #64]	; 0x40
     318:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     31a:	3301      	adds	r3, #1
     31c:	65fb      	str	r3, [r7, #92]	; 0x5c
     31e:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     320:	4a7b      	ldr	r2, [pc, #492]	; (510 <_stack_size+0x110>)
     322:	4293      	cmp	r3, r2
     324:	dddb      	ble.n	2de <main+0x9a>
     326:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     328:	129b      	asrs	r3, r3, #10
     32a:	65bb      	str	r3, [r7, #88]	; 0x58
     32c:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     32e:	129b      	asrs	r3, r3, #10
     330:	657b      	str	r3, [r7, #84]	; 0x54
     332:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     334:	129b      	asrs	r3, r3, #10
     336:	647b      	str	r3, [r7, #68]	; 0x44
     338:	4b76      	ldr	r3, [pc, #472]	; (514 <_stack_size+0x114>)
     33a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     33c:	601a      	str	r2, [r3, #0]
     33e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     340:	129b      	asrs	r3, r3, #10
     342:	643b      	str	r3, [r7, #64]	; 0x40
     344:	4b74      	ldr	r3, [pc, #464]	; (518 <_stack_size+0x118>)
     346:	4a74      	ldr	r2, [pc, #464]	; (518 <_stack_size+0x118>)
     348:	6812      	ldr	r2, [r2, #0]
     34a:	2120      	movs	r1, #32
     34c:	438a      	bics	r2, r1
     34e:	601a      	str	r2, [r3, #0]
     350:	f7ff feca 	bl	e8 <adc_dma_wait>
     354:	4b70      	ldr	r3, [pc, #448]	; (518 <_stack_size+0x118>)
     356:	4a70      	ldr	r2, [pc, #448]	; (518 <_stack_size+0x118>)
     358:	6812      	ldr	r2, [r2, #0]
     35a:	2120      	movs	r1, #32
     35c:	430a      	orrs	r2, r1
     35e:	601a      	str	r2, [r3, #0]
     360:	4b6a      	ldr	r3, [pc, #424]	; (50c <_stack_size+0x10c>)
     362:	681b      	ldr	r3, [r3, #0]
     364:	051b      	lsls	r3, r3, #20
     366:	0d1a      	lsrs	r2, r3, #20
     368:	0013      	movs	r3, r2
     36a:	009b      	lsls	r3, r3, #2
     36c:	189b      	adds	r3, r3, r2
     36e:	0018      	movs	r0, r3
     370:	f000 fd12 	bl	d98 <mfilter>
     374:	0003      	movs	r3, r0
     376:	65fb      	str	r3, [r7, #92]	; 0x5c
     378:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     37a:	10da      	asrs	r2, r3, #3
     37c:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     37e:	18d3      	adds	r3, r2, r3
     380:	10db      	asrs	r3, r3, #3
     382:	2291      	movs	r2, #145	; 0x91
     384:	0092      	lsls	r2, r2, #2
     386:	189a      	adds	r2, r3, r2
     388:	4b62      	ldr	r3, [pc, #392]	; (514 <_stack_size+0x114>)
     38a:	601a      	str	r2, [r3, #0]
     38c:	4b61      	ldr	r3, [pc, #388]	; (514 <_stack_size+0x114>)
     38e:	681a      	ldr	r2, [r3, #0]
     390:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     392:	1ad2      	subs	r2, r2, r3
     394:	0013      	movs	r3, r2
     396:	00db      	lsls	r3, r3, #3
     398:	1a9b      	subs	r3, r3, r2
     39a:	00da      	lsls	r2, r3, #3
     39c:	1ad2      	subs	r2, r2, r3
     39e:	4b5a      	ldr	r3, [pc, #360]	; (508 <_stack_size+0x108>)
     3a0:	601a      	str	r2, [r3, #0]
     3a2:	4b5a      	ldr	r3, [pc, #360]	; (50c <_stack_size+0x10c>)
     3a4:	685b      	ldr	r3, [r3, #4]
     3a6:	051b      	lsls	r3, r3, #20
     3a8:	0d1a      	lsrs	r2, r3, #20
     3aa:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3ac:	1ad3      	subs	r3, r2, r3
     3ae:	633b      	str	r3, [r7, #48]	; 0x30
     3b0:	4b56      	ldr	r3, [pc, #344]	; (50c <_stack_size+0x10c>)
     3b2:	689b      	ldr	r3, [r3, #8]
     3b4:	051b      	lsls	r3, r3, #20
     3b6:	0d1a      	lsrs	r2, r3, #20
     3b8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     3ba:	1ad3      	subs	r3, r2, r3
     3bc:	62fb      	str	r3, [r7, #44]	; 0x2c
     3be:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     3c0:	425a      	negs	r2, r3
     3c2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     3c4:	1ad3      	subs	r3, r2, r3
     3c6:	62bb      	str	r3, [r7, #40]	; 0x28
     3c8:	4b50      	ldr	r3, [pc, #320]	; (50c <_stack_size+0x10c>)
     3ca:	68db      	ldr	r3, [r3, #12]
     3cc:	051b      	lsls	r3, r3, #20
     3ce:	0d1b      	lsrs	r3, r3, #20
     3d0:	637b      	str	r3, [r7, #52]	; 0x34
     3d2:	f7ff fed7 	bl	184 <encoder_read>
     3d6:	0003      	movs	r3, r0
     3d8:	627b      	str	r3, [r7, #36]	; 0x24
     3da:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3dc:	3301      	adds	r3, #1
     3de:	64fb      	str	r3, [r7, #76]	; 0x4c
     3e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3e2:	2207      	movs	r2, #7
     3e4:	4013      	ands	r3, r2
     3e6:	d138      	bne.n	45a <_stack_size+0x5a>
     3e8:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3ea:	003a      	movs	r2, r7
     3ec:	0011      	movs	r1, r2
     3ee:	0018      	movs	r0, r3
     3f0:	f000 fcac 	bl	d4c <get_speed>
     3f4:	0003      	movs	r3, r0
     3f6:	623b      	str	r3, [r7, #32]
     3f8:	4b43      	ldr	r3, [pc, #268]	; (508 <_stack_size+0x108>)
     3fa:	681a      	ldr	r2, [r3, #0]
     3fc:	683b      	ldr	r3, [r7, #0]
     3fe:	1ad1      	subs	r1, r2, r3
     400:	4b40      	ldr	r3, [pc, #256]	; (504 <_stack_size+0x104>)
     402:	2200      	movs	r2, #0
     404:	0018      	movs	r0, r3
     406:	f000 f8df 	bl	5c8 <reg_update>
     40a:	4b3e      	ldr	r3, [pc, #248]	; (504 <_stack_size+0x104>)
     40c:	68db      	ldr	r3, [r3, #12]
     40e:	131b      	asrs	r3, r3, #12
     410:	63bb      	str	r3, [r7, #56]	; 0x38
     412:	6bba      	ldr	r2, [r7, #56]	; 0x38
     414:	6a3b      	ldr	r3, [r7, #32]
     416:	1ad1      	subs	r1, r2, r3
     418:	4b38      	ldr	r3, [pc, #224]	; (4fc <_stack_size+0xfc>)
     41a:	2200      	movs	r2, #0
     41c:	0018      	movs	r0, r3
     41e:	f000 f8d3 	bl	5c8 <reg_update>
     422:	4b36      	ldr	r3, [pc, #216]	; (4fc <_stack_size+0xfc>)
     424:	68db      	ldr	r3, [r3, #12]
     426:	131b      	asrs	r3, r3, #12
     428:	64bb      	str	r3, [r7, #72]	; 0x48
     42a:	6cba      	ldr	r2, [r7, #72]	; 0x48
     42c:	23fa      	movs	r3, #250	; 0xfa
     42e:	00db      	lsls	r3, r3, #3
     430:	429a      	cmp	r2, r3
     432:	dd02      	ble.n	43a <_stack_size+0x3a>
     434:	23fa      	movs	r3, #250	; 0xfa
     436:	00db      	lsls	r3, r3, #3
     438:	64bb      	str	r3, [r7, #72]	; 0x48
     43a:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     43c:	4a37      	ldr	r2, [pc, #220]	; (51c <_stack_size+0x11c>)
     43e:	4293      	cmp	r3, r2
     440:	da01      	bge.n	446 <_stack_size+0x46>
     442:	4b36      	ldr	r3, [pc, #216]	; (51c <_stack_size+0x11c>)
     444:	64bb      	str	r3, [r7, #72]	; 0x48
     446:	4b36      	ldr	r3, [pc, #216]	; (520 <_stack_size+0x120>)
     448:	683a      	ldr	r2, [r7, #0]
     44a:	6c39      	ldr	r1, [r7, #64]	; 0x40
     44c:	1a8a      	subs	r2, r1, r2
     44e:	10d2      	asrs	r2, r2, #3
     450:	2180      	movs	r1, #128	; 0x80
     452:	0109      	lsls	r1, r1, #4
     454:	468c      	mov	ip, r1
     456:	4462      	add	r2, ip
     458:	605a      	str	r2, [r3, #4]
     45a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     45c:	059b      	lsls	r3, r3, #22
     45e:	0d9b      	lsrs	r3, r3, #22
     460:	63fb      	str	r3, [r7, #60]	; 0x3c
     462:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     464:	4a2f      	ldr	r2, [pc, #188]	; (524 <_stack_size+0x124>)
     466:	4694      	mov	ip, r2
     468:	4463      	add	r3, ip
     46a:	059b      	lsls	r3, r3, #22
     46c:	0d9b      	lsrs	r3, r3, #22
     46e:	63fb      	str	r3, [r7, #60]	; 0x3c
     470:	1d3b      	adds	r3, r7, #4
     472:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     474:	601a      	str	r2, [r3, #0]
     476:	1d3b      	adds	r3, r7, #4
     478:	6aba      	ldr	r2, [r7, #40]	; 0x28
     47a:	605a      	str	r2, [r3, #4]
     47c:	1d3b      	adds	r3, r7, #4
     47e:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     480:	609a      	str	r2, [r3, #8]
     482:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     484:	2310      	movs	r3, #16
     486:	18f9      	adds	r1, r7, r3
     488:	1d3b      	adds	r3, r7, #4
     48a:	0018      	movs	r0, r3
     48c:	f000 f8b4 	bl	5f8 <abc_to_dq>
     490:	2310      	movs	r3, #16
     492:	18fb      	adds	r3, r7, r3
     494:	681b      	ldr	r3, [r3, #0]
     496:	425b      	negs	r3, r3
     498:	61fb      	str	r3, [r7, #28]
     49a:	2310      	movs	r3, #16
     49c:	18fb      	adds	r3, r7, r3
     49e:	685b      	ldr	r3, [r3, #4]
     4a0:	6cba      	ldr	r2, [r7, #72]	; 0x48
     4a2:	1ad3      	subs	r3, r2, r3
     4a4:	61bb      	str	r3, [r7, #24]
     4a6:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4a8:	69f9      	ldr	r1, [r7, #28]
     4aa:	4b12      	ldr	r3, [pc, #72]	; (4f4 <_stack_size+0xf4>)
     4ac:	0018      	movs	r0, r3
     4ae:	f000 f88b 	bl	5c8 <reg_update>
     4b2:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4b4:	69b9      	ldr	r1, [r7, #24]
     4b6:	4b10      	ldr	r3, [pc, #64]	; (4f8 <_stack_size+0xf8>)
     4b8:	0018      	movs	r0, r3
     4ba:	f000 f885 	bl	5c8 <reg_update>
     4be:	4b0d      	ldr	r3, [pc, #52]	; (4f4 <_stack_size+0xf4>)
     4c0:	68db      	ldr	r3, [r3, #12]
     4c2:	109a      	asrs	r2, r3, #2
     4c4:	2310      	movs	r3, #16
     4c6:	18fb      	adds	r3, r7, r3
     4c8:	601a      	str	r2, [r3, #0]
     4ca:	4b0b      	ldr	r3, [pc, #44]	; (4f8 <_stack_size+0xf8>)
     4cc:	68db      	ldr	r3, [r3, #12]
     4ce:	109a      	asrs	r2, r3, #2
     4d0:	2310      	movs	r3, #16
     4d2:	18fb      	adds	r3, r7, r3
     4d4:	605a      	str	r2, [r3, #4]
     4d6:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4d8:	2310      	movs	r3, #16
     4da:	18f9      	adds	r1, r7, r3
     4dc:	1d3b      	adds	r3, r7, #4
     4de:	0018      	movs	r0, r3
     4e0:	f000 fab6 	bl	a50 <svpwm>
     4e4:	0003      	movs	r3, r0
     4e6:	653b      	str	r3, [r7, #80]	; 0x50
     4e8:	1d3b      	adds	r3, r7, #4
     4ea:	0018      	movs	r0, r3
     4ec:	f7ff fe70 	bl	1d0 <pwm_set>
     4f0:	e728      	b.n	344 <main+0x100>
     4f2:	46c0      	nop			; (mov r8, r8)
     4f4:	20000008 	.word	0x20000008
     4f8:	20000018 	.word	0x20000018
     4fc:	20000028 	.word	0x20000028
     500:	00003a98 	.word	0x00003a98
     504:	20000038 	.word	0x20000038
     508:	20000000 	.word	0x20000000
     50c:	20100200 	.word	0x20100200
     510:	000003ff 	.word	0x000003ff
     514:	20000004 	.word	0x20000004
     518:	400b8000 	.word	0x400b8000
     51c:	fffff830 	.word	0xfffff830
     520:	40090000 	.word	0x40090000
     524:	0000035e 	.word	0x0000035e

00000528 <TIMER4_Handler>:
     528:	b580      	push	{r7, lr}
     52a:	af00      	add	r7, sp, #0
     52c:	4b07      	ldr	r3, [pc, #28]	; (54c <TIMER4_Handler+0x24>)
     52e:	2200      	movs	r2, #0
     530:	655a      	str	r2, [r3, #84]	; 0x54
     532:	4b07      	ldr	r3, [pc, #28]	; (550 <TIMER4_Handler+0x28>)
     534:	681b      	ldr	r3, [r3, #0]
     536:	1c5a      	adds	r2, r3, #1
     538:	4b05      	ldr	r3, [pc, #20]	; (550 <TIMER4_Handler+0x28>)
     53a:	601a      	str	r2, [r3, #0]
     53c:	f7ff fdc0 	bl	c0 <adc_dma_start>
     540:	f7ff fe14 	bl	16c <encoder_start>
     544:	46c0      	nop			; (mov r8, r8)
     546:	46bd      	mov	sp, r7
     548:	bd80      	pop	{r7, pc}
     54a:	46c0      	nop			; (mov r8, r8)
     54c:	40098000 	.word	0x40098000
     550:	20000048 	.word	0x20000048

00000554 <handler_reset>:
     554:	b580      	push	{r7, lr}
     556:	b082      	sub	sp, #8
     558:	af00      	add	r7, sp, #0
     55a:	4b11      	ldr	r3, [pc, #68]	; (5a0 <handler_reset+0x4c>)
     55c:	607b      	str	r3, [r7, #4]
     55e:	4b11      	ldr	r3, [pc, #68]	; (5a4 <handler_reset+0x50>)
     560:	603b      	str	r3, [r7, #0]
     562:	e007      	b.n	574 <handler_reset+0x20>
     564:	683b      	ldr	r3, [r7, #0]
     566:	1d1a      	adds	r2, r3, #4
     568:	603a      	str	r2, [r7, #0]
     56a:	687a      	ldr	r2, [r7, #4]
     56c:	1d11      	adds	r1, r2, #4
     56e:	6079      	str	r1, [r7, #4]
     570:	6812      	ldr	r2, [r2, #0]
     572:	601a      	str	r2, [r3, #0]
     574:	683a      	ldr	r2, [r7, #0]
     576:	4b0c      	ldr	r3, [pc, #48]	; (5a8 <handler_reset+0x54>)
     578:	429a      	cmp	r2, r3
     57a:	d3f3      	bcc.n	564 <handler_reset+0x10>
     57c:	4b0b      	ldr	r3, [pc, #44]	; (5ac <handler_reset+0x58>)
     57e:	603b      	str	r3, [r7, #0]
     580:	e004      	b.n	58c <handler_reset+0x38>
     582:	683b      	ldr	r3, [r7, #0]
     584:	1d1a      	adds	r2, r3, #4
     586:	603a      	str	r2, [r7, #0]
     588:	2200      	movs	r2, #0
     58a:	601a      	str	r2, [r3, #0]
     58c:	683a      	ldr	r2, [r7, #0]
     58e:	4b08      	ldr	r3, [pc, #32]	; (5b0 <handler_reset+0x5c>)
     590:	429a      	cmp	r2, r3
     592:	d3f6      	bcc.n	582 <handler_reset+0x2e>
     594:	f7ff fe56 	bl	244 <main>
     598:	46c0      	nop			; (mov r8, r8)
     59a:	46bd      	mov	sp, r7
     59c:	b002      	add	sp, #8
     59e:	bd80      	pop	{r7, pc}
     5a0:	00002320 	.word	0x00002320
     5a4:	20000000 	.word	0x20000000
     5a8:	20000000 	.word	0x20000000
     5ac:	20000000 	.word	0x20000000
     5b0:	200000dc 	.word	0x200000dc

000005b4 <default_handler>:
     5b4:	b580      	push	{r7, lr}
     5b6:	af00      	add	r7, sp, #0
     5b8:	e7fe      	b.n	5b8 <default_handler+0x4>
     5ba:	46c0      	nop			; (mov r8, r8)

000005bc <reg_init>:
     5bc:	2300      	movs	r3, #0
     5be:	6001      	str	r1, [r0, #0]
     5c0:	6042      	str	r2, [r0, #4]
     5c2:	6083      	str	r3, [r0, #8]
     5c4:	60c3      	str	r3, [r0, #12]
     5c6:	4770      	bx	lr

000005c8 <reg_update>:
     5c8:	b510      	push	{r4, lr}
     5ca:	6804      	ldr	r4, [r0, #0]
     5cc:	6883      	ldr	r3, [r0, #8]
     5ce:	434c      	muls	r4, r1
     5d0:	2a00      	cmp	r2, #0
     5d2:	d004      	beq.n	5de <reg_update+0x16>
     5d4:	2b00      	cmp	r3, #0
     5d6:	dd09      	ble.n	5ec <reg_update+0x24>
     5d8:	2c00      	cmp	r4, #0
     5da:	dd00      	ble.n	5de <reg_update+0x16>
     5dc:	2400      	movs	r4, #0
     5de:	6842      	ldr	r2, [r0, #4]
     5e0:	18e3      	adds	r3, r4, r3
     5e2:	4351      	muls	r1, r2
     5e4:	18c9      	adds	r1, r1, r3
     5e6:	60c1      	str	r1, [r0, #12]
     5e8:	6083      	str	r3, [r0, #8]
     5ea:	bd10      	pop	{r4, pc}
     5ec:	2b00      	cmp	r3, #0
     5ee:	d0f6      	beq.n	5de <reg_update+0x16>
     5f0:	43e2      	mvns	r2, r4
     5f2:	17d2      	asrs	r2, r2, #31
     5f4:	4014      	ands	r4, r2
     5f6:	e7f2      	b.n	5de <reg_update+0x16>

000005f8 <abc_to_dq>:
     5f8:	23c0      	movs	r3, #192	; 0xc0
     5fa:	b5f0      	push	{r4, r5, r6, r7, lr}
     5fc:	4647      	mov	r7, r8
     5fe:	009b      	lsls	r3, r3, #2
     600:	18d3      	adds	r3, r2, r3
     602:	4d1b      	ldr	r5, [pc, #108]	; (670 <abc_to_dq+0x78>)
     604:	059b      	lsls	r3, r3, #22
     606:	0d1b      	lsrs	r3, r3, #20
     608:	595b      	ldr	r3, [r3, r5]
     60a:	b480      	push	{r7}
     60c:	4698      	mov	r8, r3
     60e:	4b19      	ldr	r3, [pc, #100]	; (674 <abc_to_dq+0x7c>)
     610:	18d4      	adds	r4, r2, r3
     612:	05a4      	lsls	r4, r4, #22
     614:	4b18      	ldr	r3, [pc, #96]	; (678 <abc_to_dq+0x80>)
     616:	0d24      	lsrs	r4, r4, #20
     618:	5967      	ldr	r7, [r4, r5]
     61a:	18d4      	adds	r4, r2, r3
     61c:	05a4      	lsls	r4, r4, #22
     61e:	4b17      	ldr	r3, [pc, #92]	; (67c <abc_to_dq+0x84>)
     620:	0d24      	lsrs	r4, r4, #20
     622:	5966      	ldr	r6, [r4, r5]
     624:	18d4      	adds	r4, r2, r3
     626:	05a4      	lsls	r4, r4, #22
     628:	0d24      	lsrs	r4, r4, #20
     62a:	5964      	ldr	r4, [r4, r5]
     62c:	6843      	ldr	r3, [r0, #4]
     62e:	4363      	muls	r3, r4
     630:	0094      	lsls	r4, r2, #2
     632:	469c      	mov	ip, r3
     634:	3256      	adds	r2, #86	; 0x56
     636:	32ff      	adds	r2, #255	; 0xff
     638:	6803      	ldr	r3, [r0, #0]
     63a:	5964      	ldr	r4, [r4, r5]
     63c:	0592      	lsls	r2, r2, #22
     63e:	0d12      	lsrs	r2, r2, #20
     640:	5955      	ldr	r5, [r2, r5]
     642:	435c      	muls	r4, r3
     644:	6883      	ldr	r3, [r0, #8]
     646:	4464      	add	r4, ip
     648:	435d      	muls	r5, r3
     64a:	4643      	mov	r3, r8
     64c:	1964      	adds	r4, r4, r5
     64e:	12a4      	asrs	r4, r4, #10
     650:	600c      	str	r4, [r1, #0]
     652:	6802      	ldr	r2, [r0, #0]
     654:	435a      	muls	r2, r3
     656:	6843      	ldr	r3, [r0, #4]
     658:	437b      	muls	r3, r7
     65a:	18d3      	adds	r3, r2, r3
     65c:	6882      	ldr	r2, [r0, #8]
     65e:	4372      	muls	r2, r6
     660:	189b      	adds	r3, r3, r2
     662:	425b      	negs	r3, r3
     664:	129b      	asrs	r3, r3, #10
     666:	604b      	str	r3, [r1, #4]
     668:	bc04      	pop	{r2}
     66a:	4690      	mov	r8, r2
     66c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     66e:	46c0      	nop			; (mov r8, r8)
     670:	000012c8 	.word	0x000012c8
     674:	000005aa 	.word	0x000005aa
     678:	00000455 	.word	0x00000455
     67c:	000002aa 	.word	0x000002aa

00000680 <dq_to_abc>:
     680:	b570      	push	{r4, r5, r6, lr}
     682:	4d1a      	ldr	r5, [pc, #104]	; (6ec <dq_to_abc+0x6c>)
     684:	0093      	lsls	r3, r2, #2
     686:	680c      	ldr	r4, [r1, #0]
     688:	595b      	ldr	r3, [r3, r5]
     68a:	684e      	ldr	r6, [r1, #4]
     68c:	435c      	muls	r4, r3
     68e:	23c0      	movs	r3, #192	; 0xc0
     690:	009b      	lsls	r3, r3, #2
     692:	18d3      	adds	r3, r2, r3
     694:	059b      	lsls	r3, r3, #22
     696:	0d1b      	lsrs	r3, r3, #20
     698:	595b      	ldr	r3, [r3, r5]
     69a:	4373      	muls	r3, r6
     69c:	1ae3      	subs	r3, r4, r3
     69e:	151b      	asrs	r3, r3, #20
     6a0:	6003      	str	r3, [r0, #0]
     6a2:	4b13      	ldr	r3, [pc, #76]	; (6f0 <dq_to_abc+0x70>)
     6a4:	680c      	ldr	r4, [r1, #0]
     6a6:	18d3      	adds	r3, r2, r3
     6a8:	059b      	lsls	r3, r3, #22
     6aa:	0d1b      	lsrs	r3, r3, #20
     6ac:	595b      	ldr	r3, [r3, r5]
     6ae:	684e      	ldr	r6, [r1, #4]
     6b0:	435c      	muls	r4, r3
     6b2:	4b10      	ldr	r3, [pc, #64]	; (6f4 <dq_to_abc+0x74>)
     6b4:	18d3      	adds	r3, r2, r3
     6b6:	059b      	lsls	r3, r3, #22
     6b8:	0d1b      	lsrs	r3, r3, #20
     6ba:	595b      	ldr	r3, [r3, r5]
     6bc:	4373      	muls	r3, r6
     6be:	1ae3      	subs	r3, r4, r3
     6c0:	151b      	asrs	r3, r3, #20
     6c2:	6043      	str	r3, [r0, #4]
     6c4:	0013      	movs	r3, r2
     6c6:	3356      	adds	r3, #86	; 0x56
     6c8:	33ff      	adds	r3, #255	; 0xff
     6ca:	059b      	lsls	r3, r3, #22
     6cc:	0d1b      	lsrs	r3, r3, #20
     6ce:	595b      	ldr	r3, [r3, r5]
     6d0:	680c      	ldr	r4, [r1, #0]
     6d2:	435c      	muls	r4, r3
     6d4:	4b08      	ldr	r3, [pc, #32]	; (6f8 <dq_to_abc+0x78>)
     6d6:	469c      	mov	ip, r3
     6d8:	4462      	add	r2, ip
     6da:	0592      	lsls	r2, r2, #22
     6dc:	0d12      	lsrs	r2, r2, #20
     6de:	5952      	ldr	r2, [r2, r5]
     6e0:	684b      	ldr	r3, [r1, #4]
     6e2:	4353      	muls	r3, r2
     6e4:	1ae3      	subs	r3, r4, r3
     6e6:	151b      	asrs	r3, r3, #20
     6e8:	6083      	str	r3, [r0, #8]
     6ea:	bd70      	pop	{r4, r5, r6, pc}
     6ec:	000012c8 	.word	0x000012c8
     6f0:	000002aa 	.word	0x000002aa
     6f4:	000005aa 	.word	0x000005aa
     6f8:	00000455 	.word	0x00000455

000006fc <cord_atan>:
     6fc:	b5f0      	push	{r4, r5, r6, r7, lr}
     6fe:	464f      	mov	r7, r9
     700:	4646      	mov	r6, r8
     702:	b4c0      	push	{r6, r7}
     704:	4b63      	ldr	r3, [pc, #396]	; (894 <cord_atan+0x198>)
     706:	b091      	sub	sp, #68	; 0x44
     708:	001c      	movs	r4, r3
     70a:	4694      	mov	ip, r2
     70c:	466a      	mov	r2, sp
     70e:	4699      	mov	r9, r3
     710:	cca8      	ldmia	r4!, {r3, r5, r7}
     712:	c2a8      	stmia	r2!, {r3, r5, r7}
     714:	cca8      	ldmia	r4!, {r3, r5, r7}
     716:	c2a8      	stmia	r2!, {r3, r5, r7}
     718:	cc28      	ldmia	r4!, {r3, r5}
     71a:	c228      	stmia	r2!, {r3, r5}
     71c:	464b      	mov	r3, r9
     71e:	aa08      	add	r2, sp, #32
     720:	3320      	adds	r3, #32
     722:	4690      	mov	r8, r2
     724:	cbb0      	ldmia	r3!, {r4, r5, r7}
     726:	c2b0      	stmia	r2!, {r4, r5, r7}
     728:	cbb0      	ldmia	r3!, {r4, r5, r7}
     72a:	c2b0      	stmia	r2!, {r4, r5, r7}
     72c:	cb30      	ldmia	r3!, {r4, r5}
     72e:	c230      	stmia	r2!, {r4, r5}
     730:	6802      	ldr	r2, [r0, #0]
     732:	6845      	ldr	r5, [r0, #4]
     734:	17d4      	asrs	r4, r2, #31
     736:	1913      	adds	r3, r2, r4
     738:	466e      	mov	r6, sp
     73a:	4063      	eors	r3, r4
     73c:	2d00      	cmp	r5, #0
     73e:	dd69      	ble.n	814 <cord_atan+0x118>
     740:	195f      	adds	r7, r3, r5
     742:	1aeb      	subs	r3, r5, r3
     744:	9d00      	ldr	r5, [sp, #0]
     746:	2b00      	cmp	r3, #0
     748:	d100      	bne.n	74c <cord_atan+0x50>
     74a:	e091      	b.n	870 <cord_atan+0x174>
     74c:	105c      	asrs	r4, r3, #1
     74e:	2b00      	cmp	r3, #0
     750:	dd65      	ble.n	81e <cord_atan+0x122>
     752:	1078      	asrs	r0, r7, #1
     754:	1a1b      	subs	r3, r3, r0
     756:	6870      	ldr	r0, [r6, #4]
     758:	19e4      	adds	r4, r4, r7
     75a:	4681      	mov	r9, r0
     75c:	444d      	add	r5, r9
     75e:	2b00      	cmp	r3, #0
     760:	d100      	bne.n	764 <cord_atan+0x68>
     762:	e087      	b.n	874 <cord_atan+0x178>
     764:	1098      	asrs	r0, r3, #2
     766:	2b00      	cmp	r3, #0
     768:	dd5f      	ble.n	82a <cord_atan+0x12e>
     76a:	1907      	adds	r7, r0, r4
     76c:	10a4      	asrs	r4, r4, #2
     76e:	1b18      	subs	r0, r3, r4
     770:	68b3      	ldr	r3, [r6, #8]
     772:	4699      	mov	r9, r3
     774:	444d      	add	r5, r9
     776:	2800      	cmp	r0, #0
     778:	d100      	bne.n	77c <cord_atan+0x80>
     77a:	e07e      	b.n	87a <cord_atan+0x17e>
     77c:	10c3      	asrs	r3, r0, #3
     77e:	2800      	cmp	r0, #0
     780:	dd59      	ble.n	836 <cord_atan+0x13a>
     782:	10fc      	asrs	r4, r7, #3
     784:	1b00      	subs	r0, r0, r4
     786:	68f4      	ldr	r4, [r6, #12]
     788:	19db      	adds	r3, r3, r7
     78a:	46a1      	mov	r9, r4
     78c:	444d      	add	r5, r9
     78e:	2800      	cmp	r0, #0
     790:	d100      	bne.n	794 <cord_atan+0x98>
     792:	e074      	b.n	87e <cord_atan+0x182>
     794:	1104      	asrs	r4, r0, #4
     796:	2800      	cmp	r0, #0
     798:	dd53      	ble.n	842 <cord_atan+0x146>
     79a:	18e7      	adds	r7, r4, r3
     79c:	111b      	asrs	r3, r3, #4
     79e:	1ac4      	subs	r4, r0, r3
     7a0:	6933      	ldr	r3, [r6, #16]
     7a2:	4699      	mov	r9, r3
     7a4:	444d      	add	r5, r9
     7a6:	2c00      	cmp	r4, #0
     7a8:	d06c      	beq.n	884 <cord_atan+0x188>
     7aa:	1163      	asrs	r3, r4, #5
     7ac:	2c00      	cmp	r4, #0
     7ae:	dd4e      	ble.n	84e <cord_atan+0x152>
     7b0:	1178      	asrs	r0, r7, #5
     7b2:	1a20      	subs	r0, r4, r0
     7b4:	6974      	ldr	r4, [r6, #20]
     7b6:	19db      	adds	r3, r3, r7
     7b8:	46a1      	mov	r9, r4
     7ba:	444d      	add	r5, r9
     7bc:	2800      	cmp	r0, #0
     7be:	d063      	beq.n	888 <cord_atan+0x18c>
     7c0:	1184      	asrs	r4, r0, #6
     7c2:	2800      	cmp	r0, #0
     7c4:	dd49      	ble.n	85a <cord_atan+0x15e>
     7c6:	18e7      	adds	r7, r4, r3
     7c8:	119b      	asrs	r3, r3, #6
     7ca:	1ac0      	subs	r0, r0, r3
     7cc:	69b3      	ldr	r3, [r6, #24]
     7ce:	4699      	mov	r9, r3
     7d0:	444d      	add	r5, r9
     7d2:	2800      	cmp	r0, #0
     7d4:	d05b      	beq.n	88e <cord_atan+0x192>
     7d6:	dd46      	ble.n	866 <cord_atan+0x16a>
     7d8:	69f3      	ldr	r3, [r6, #28]
     7da:	11c0      	asrs	r0, r0, #7
     7dc:	19c7      	adds	r7, r0, r7
     7de:	18ed      	adds	r5, r5, r3
     7e0:	2307      	movs	r3, #7
     7e2:	2a00      	cmp	r2, #0
     7e4:	db12      	blt.n	80c <cord_atan+0x110>
     7e6:	2d00      	cmp	r5, #0
     7e8:	da03      	bge.n	7f2 <cord_atan+0xf6>
     7ea:	2280      	movs	r2, #128	; 0x80
     7ec:	00d2      	lsls	r2, r2, #3
     7ee:	4691      	mov	r9, r2
     7f0:	444d      	add	r5, r9
     7f2:	4642      	mov	r2, r8
     7f4:	009b      	lsls	r3, r3, #2
     7f6:	58d0      	ldr	r0, [r2, r3]
     7f8:	4663      	mov	r3, ip
     7fa:	4378      	muls	r0, r7
     7fc:	1280      	asrs	r0, r0, #10
     7fe:	600d      	str	r5, [r1, #0]
     800:	6018      	str	r0, [r3, #0]
     802:	b011      	add	sp, #68	; 0x44
     804:	bc0c      	pop	{r2, r3}
     806:	4690      	mov	r8, r2
     808:	4699      	mov	r9, r3
     80a:	bdf0      	pop	{r4, r5, r6, r7, pc}
     80c:	2280      	movs	r2, #128	; 0x80
     80e:	0092      	lsls	r2, r2, #2
     810:	1b55      	subs	r5, r2, r5
     812:	e7e8      	b.n	7e6 <cord_atan+0xea>
     814:	9800      	ldr	r0, [sp, #0]
     816:	1b5f      	subs	r7, r3, r5
     818:	195b      	adds	r3, r3, r5
     81a:	4245      	negs	r5, r0
     81c:	e793      	b.n	746 <cord_atan+0x4a>
     81e:	1078      	asrs	r0, r7, #1
     820:	18c3      	adds	r3, r0, r3
     822:	6870      	ldr	r0, [r6, #4]
     824:	1b3c      	subs	r4, r7, r4
     826:	1a2d      	subs	r5, r5, r0
     828:	e799      	b.n	75e <cord_atan+0x62>
     82a:	1a27      	subs	r7, r4, r0
     82c:	10a0      	asrs	r0, r4, #2
     82e:	18c0      	adds	r0, r0, r3
     830:	68b3      	ldr	r3, [r6, #8]
     832:	1aed      	subs	r5, r5, r3
     834:	e79f      	b.n	776 <cord_atan+0x7a>
     836:	10fc      	asrs	r4, r7, #3
     838:	1820      	adds	r0, r4, r0
     83a:	68f4      	ldr	r4, [r6, #12]
     83c:	1afb      	subs	r3, r7, r3
     83e:	1b2d      	subs	r5, r5, r4
     840:	e7a5      	b.n	78e <cord_atan+0x92>
     842:	1b1f      	subs	r7, r3, r4
     844:	111c      	asrs	r4, r3, #4
     846:	6933      	ldr	r3, [r6, #16]
     848:	1824      	adds	r4, r4, r0
     84a:	1aed      	subs	r5, r5, r3
     84c:	e7ab      	b.n	7a6 <cord_atan+0xaa>
     84e:	1178      	asrs	r0, r7, #5
     850:	1900      	adds	r0, r0, r4
     852:	6974      	ldr	r4, [r6, #20]
     854:	1afb      	subs	r3, r7, r3
     856:	1b2d      	subs	r5, r5, r4
     858:	e7b0      	b.n	7bc <cord_atan+0xc0>
     85a:	1b1f      	subs	r7, r3, r4
     85c:	119b      	asrs	r3, r3, #6
     85e:	1818      	adds	r0, r3, r0
     860:	69b3      	ldr	r3, [r6, #24]
     862:	1aed      	subs	r5, r5, r3
     864:	e7b5      	b.n	7d2 <cord_atan+0xd6>
     866:	69f3      	ldr	r3, [r6, #28]
     868:	11c4      	asrs	r4, r0, #7
     86a:	1b3f      	subs	r7, r7, r4
     86c:	1aed      	subs	r5, r5, r3
     86e:	e7b7      	b.n	7e0 <cord_atan+0xe4>
     870:	2300      	movs	r3, #0
     872:	e7b6      	b.n	7e2 <cord_atan+0xe6>
     874:	0027      	movs	r7, r4
     876:	2301      	movs	r3, #1
     878:	e7b3      	b.n	7e2 <cord_atan+0xe6>
     87a:	2302      	movs	r3, #2
     87c:	e7b1      	b.n	7e2 <cord_atan+0xe6>
     87e:	001f      	movs	r7, r3
     880:	2303      	movs	r3, #3
     882:	e7ae      	b.n	7e2 <cord_atan+0xe6>
     884:	2304      	movs	r3, #4
     886:	e7ac      	b.n	7e2 <cord_atan+0xe6>
     888:	001f      	movs	r7, r3
     88a:	2305      	movs	r3, #5
     88c:	e7a9      	b.n	7e2 <cord_atan+0xe6>
     88e:	2306      	movs	r3, #6
     890:	e7a7      	b.n	7e2 <cord_atan+0xe6>
     892:	46c0      	nop			; (mov r8, r8)
     894:	000022e0 	.word	0x000022e0

00000898 <sinpwm>:
     898:	b5f0      	push	{r4, r5, r6, r7, lr}
     89a:	4646      	mov	r6, r8
     89c:	464f      	mov	r7, r9
     89e:	b4c0      	push	{r6, r7}
     8a0:	b089      	sub	sp, #36	; 0x24
     8a2:	466c      	mov	r4, sp
     8a4:	4b65      	ldr	r3, [pc, #404]	; (a3c <sinpwm+0x1a4>)
     8a6:	46e9      	mov	r9, sp
     8a8:	3320      	adds	r3, #32
     8aa:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8ac:	c4e0      	stmia	r4!, {r5, r6, r7}
     8ae:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8b0:	c4e0      	stmia	r4!, {r5, r6, r7}
     8b2:	cb60      	ldmia	r3!, {r5, r6}
     8b4:	c460      	stmia	r4!, {r5, r6}
     8b6:	680b      	ldr	r3, [r1, #0]
     8b8:	17dc      	asrs	r4, r3, #31
     8ba:	191e      	adds	r6, r3, r4
     8bc:	4698      	mov	r8, r3
     8be:	684b      	ldr	r3, [r1, #4]
     8c0:	4066      	eors	r6, r4
     8c2:	469c      	mov	ip, r3
     8c4:	2b00      	cmp	r3, #0
     8c6:	dc00      	bgt.n	8ca <sinpwm+0x32>
     8c8:	e086      	b.n	9d8 <sinpwm+0x140>
     8ca:	18f7      	adds	r7, r6, r3
     8cc:	1b9b      	subs	r3, r3, r6
     8ce:	2b00      	cmp	r3, #0
     8d0:	d100      	bne.n	8d4 <sinpwm+0x3c>
     8d2:	e0a0      	b.n	a16 <sinpwm+0x17e>
     8d4:	105e      	asrs	r6, r3, #1
     8d6:	2b00      	cmp	r3, #0
     8d8:	dc00      	bgt.n	8dc <sinpwm+0x44>
     8da:	e081      	b.n	9e0 <sinpwm+0x148>
     8dc:	107c      	asrs	r4, r7, #1
     8de:	19f6      	adds	r6, r6, r7
     8e0:	1b1b      	subs	r3, r3, r4
     8e2:	2b00      	cmp	r3, #0
     8e4:	d100      	bne.n	8e8 <sinpwm+0x50>
     8e6:	e098      	b.n	a1a <sinpwm+0x182>
     8e8:	109c      	asrs	r4, r3, #2
     8ea:	2b00      	cmp	r3, #0
     8ec:	dc00      	bgt.n	8f0 <sinpwm+0x58>
     8ee:	e07b      	b.n	9e8 <sinpwm+0x150>
     8f0:	19a7      	adds	r7, r4, r6
     8f2:	10b6      	asrs	r6, r6, #2
     8f4:	1b9c      	subs	r4, r3, r6
     8f6:	2c00      	cmp	r4, #0
     8f8:	d100      	bne.n	8fc <sinpwm+0x64>
     8fa:	e091      	b.n	a20 <sinpwm+0x188>
     8fc:	10e6      	asrs	r6, r4, #3
     8fe:	2c00      	cmp	r4, #0
     900:	dc00      	bgt.n	904 <sinpwm+0x6c>
     902:	e075      	b.n	9f0 <sinpwm+0x158>
     904:	10fd      	asrs	r5, r7, #3
     906:	19f6      	adds	r6, r6, r7
     908:	1b64      	subs	r4, r4, r5
     90a:	2c00      	cmp	r4, #0
     90c:	d100      	bne.n	910 <sinpwm+0x78>
     90e:	e089      	b.n	a24 <sinpwm+0x18c>
     910:	1125      	asrs	r5, r4, #4
     912:	2c00      	cmp	r4, #0
     914:	dc00      	bgt.n	918 <sinpwm+0x80>
     916:	e06f      	b.n	9f8 <sinpwm+0x160>
     918:	19af      	adds	r7, r5, r6
     91a:	1136      	asrs	r6, r6, #4
     91c:	1ba5      	subs	r5, r4, r6
     91e:	2d00      	cmp	r5, #0
     920:	d100      	bne.n	924 <sinpwm+0x8c>
     922:	e082      	b.n	a2a <sinpwm+0x192>
     924:	116e      	asrs	r6, r5, #5
     926:	2d00      	cmp	r5, #0
     928:	dd6a      	ble.n	a00 <sinpwm+0x168>
     92a:	117c      	asrs	r4, r7, #5
     92c:	19f6      	adds	r6, r6, r7
     92e:	1b2c      	subs	r4, r5, r4
     930:	2c00      	cmp	r4, #0
     932:	d100      	bne.n	936 <sinpwm+0x9e>
     934:	e07b      	b.n	a2e <sinpwm+0x196>
     936:	11a3      	asrs	r3, r4, #6
     938:	2c00      	cmp	r4, #0
     93a:	dd65      	ble.n	a08 <sinpwm+0x170>
     93c:	199b      	adds	r3, r3, r6
     93e:	11b6      	asrs	r6, r6, #6
     940:	1ba4      	subs	r4, r4, r6
     942:	2c00      	cmp	r4, #0
     944:	d100      	bne.n	948 <sinpwm+0xb0>
     946:	e075      	b.n	a34 <sinpwm+0x19c>
     948:	dd62      	ble.n	a10 <sinpwm+0x178>
     94a:	11e4      	asrs	r4, r4, #7
     94c:	18e7      	adds	r7, r4, r3
     94e:	2307      	movs	r3, #7
     950:	464c      	mov	r4, r9
     952:	4646      	mov	r6, r8
     954:	009b      	lsls	r3, r3, #2
     956:	58e4      	ldr	r4, [r4, r3]
     958:	4b39      	ldr	r3, [pc, #228]	; (a40 <sinpwm+0x1a8>)
     95a:	0095      	lsls	r5, r2, #2
     95c:	58ed      	ldr	r5, [r5, r3]
     95e:	437c      	muls	r4, r7
     960:	436e      	muls	r6, r5
     962:	25c0      	movs	r5, #192	; 0xc0
     964:	4667      	mov	r7, ip
     966:	00ad      	lsls	r5, r5, #2
     968:	1955      	adds	r5, r2, r5
     96a:	05ad      	lsls	r5, r5, #22
     96c:	0d2d      	lsrs	r5, r5, #20
     96e:	58ed      	ldr	r5, [r5, r3]
     970:	1524      	asrs	r4, r4, #20
     972:	437d      	muls	r5, r7
     974:	1b75      	subs	r5, r6, r5
     976:	152d      	asrs	r5, r5, #20
     978:	6005      	str	r5, [r0, #0]
     97a:	4d32      	ldr	r5, [pc, #200]	; (a44 <sinpwm+0x1ac>)
     97c:	684f      	ldr	r7, [r1, #4]
     97e:	1955      	adds	r5, r2, r5
     980:	05ad      	lsls	r5, r5, #22
     982:	0d2d      	lsrs	r5, r5, #20
     984:	58ee      	ldr	r6, [r5, r3]
     986:	680d      	ldr	r5, [r1, #0]
     988:	4375      	muls	r5, r6
     98a:	4e2f      	ldr	r6, [pc, #188]	; (a48 <sinpwm+0x1b0>)
     98c:	1996      	adds	r6, r2, r6
     98e:	05b6      	lsls	r6, r6, #22
     990:	0d36      	lsrs	r6, r6, #20
     992:	58f6      	ldr	r6, [r6, r3]
     994:	437e      	muls	r6, r7
     996:	1bae      	subs	r6, r5, r6
     998:	0015      	movs	r5, r2
     99a:	3556      	adds	r5, #86	; 0x56
     99c:	35ff      	adds	r5, #255	; 0xff
     99e:	1536      	asrs	r6, r6, #20
     9a0:	05ad      	lsls	r5, r5, #22
     9a2:	6046      	str	r6, [r0, #4]
     9a4:	0d2d      	lsrs	r5, r5, #20
     9a6:	58ee      	ldr	r6, [r5, r3]
     9a8:	680d      	ldr	r5, [r1, #0]
     9aa:	436e      	muls	r6, r5
     9ac:	4d27      	ldr	r5, [pc, #156]	; (a4c <sinpwm+0x1b4>)
     9ae:	46ac      	mov	ip, r5
     9b0:	4462      	add	r2, ip
     9b2:	0592      	lsls	r2, r2, #22
     9b4:	0d12      	lsrs	r2, r2, #20
     9b6:	58d2      	ldr	r2, [r2, r3]
     9b8:	684b      	ldr	r3, [r1, #4]
     9ba:	435a      	muls	r2, r3
     9bc:	23fa      	movs	r3, #250	; 0xfa
     9be:	1ab2      	subs	r2, r6, r2
     9c0:	1512      	asrs	r2, r2, #20
     9c2:	6082      	str	r2, [r0, #8]
     9c4:	005b      	lsls	r3, r3, #1
     9c6:	2001      	movs	r0, #1
     9c8:	429c      	cmp	r4, r3
     9ca:	dc00      	bgt.n	9ce <sinpwm+0x136>
     9cc:	2000      	movs	r0, #0
     9ce:	b009      	add	sp, #36	; 0x24
     9d0:	bc0c      	pop	{r2, r3}
     9d2:	4690      	mov	r8, r2
     9d4:	4699      	mov	r9, r3
     9d6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9d8:	1af7      	subs	r7, r6, r3
     9da:	0033      	movs	r3, r6
     9dc:	4463      	add	r3, ip
     9de:	e776      	b.n	8ce <sinpwm+0x36>
     9e0:	107c      	asrs	r4, r7, #1
     9e2:	1bbe      	subs	r6, r7, r6
     9e4:	18e3      	adds	r3, r4, r3
     9e6:	e77c      	b.n	8e2 <sinpwm+0x4a>
     9e8:	1b37      	subs	r7, r6, r4
     9ea:	10b4      	asrs	r4, r6, #2
     9ec:	18e4      	adds	r4, r4, r3
     9ee:	e782      	b.n	8f6 <sinpwm+0x5e>
     9f0:	10fd      	asrs	r5, r7, #3
     9f2:	1bbe      	subs	r6, r7, r6
     9f4:	192c      	adds	r4, r5, r4
     9f6:	e788      	b.n	90a <sinpwm+0x72>
     9f8:	1b77      	subs	r7, r6, r5
     9fa:	1135      	asrs	r5, r6, #4
     9fc:	192d      	adds	r5, r5, r4
     9fe:	e78e      	b.n	91e <sinpwm+0x86>
     a00:	117c      	asrs	r4, r7, #5
     a02:	1bbe      	subs	r6, r7, r6
     a04:	1964      	adds	r4, r4, r5
     a06:	e793      	b.n	930 <sinpwm+0x98>
     a08:	1af3      	subs	r3, r6, r3
     a0a:	11b6      	asrs	r6, r6, #6
     a0c:	1934      	adds	r4, r6, r4
     a0e:	e798      	b.n	942 <sinpwm+0xaa>
     a10:	11e5      	asrs	r5, r4, #7
     a12:	1b5f      	subs	r7, r3, r5
     a14:	e79b      	b.n	94e <sinpwm+0xb6>
     a16:	2300      	movs	r3, #0
     a18:	e79a      	b.n	950 <sinpwm+0xb8>
     a1a:	0037      	movs	r7, r6
     a1c:	2301      	movs	r3, #1
     a1e:	e797      	b.n	950 <sinpwm+0xb8>
     a20:	2302      	movs	r3, #2
     a22:	e795      	b.n	950 <sinpwm+0xb8>
     a24:	0037      	movs	r7, r6
     a26:	2303      	movs	r3, #3
     a28:	e792      	b.n	950 <sinpwm+0xb8>
     a2a:	2304      	movs	r3, #4
     a2c:	e790      	b.n	950 <sinpwm+0xb8>
     a2e:	0037      	movs	r7, r6
     a30:	2305      	movs	r3, #5
     a32:	e78d      	b.n	950 <sinpwm+0xb8>
     a34:	001f      	movs	r7, r3
     a36:	2306      	movs	r3, #6
     a38:	e78a      	b.n	950 <sinpwm+0xb8>
     a3a:	46c0      	nop			; (mov r8, r8)
     a3c:	000022e0 	.word	0x000022e0
     a40:	000012c8 	.word	0x000012c8
     a44:	000002aa 	.word	0x000002aa
     a48:	000005aa 	.word	0x000005aa
     a4c:	00000455 	.word	0x00000455

00000a50 <svpwm>:
     a50:	b5f0      	push	{r4, r5, r6, r7, lr}
     a52:	464f      	mov	r7, r9
     a54:	4646      	mov	r6, r8
     a56:	b4c0      	push	{r6, r7}
     a58:	4bb2      	ldr	r3, [pc, #712]	; (d24 <svpwm+0x2d4>)
     a5a:	b091      	sub	sp, #68	; 0x44
     a5c:	001c      	movs	r4, r3
     a5e:	4694      	mov	ip, r2
     a60:	466a      	mov	r2, sp
     a62:	4699      	mov	r9, r3
     a64:	cca8      	ldmia	r4!, {r3, r5, r7}
     a66:	c2a8      	stmia	r2!, {r3, r5, r7}
     a68:	cca8      	ldmia	r4!, {r3, r5, r7}
     a6a:	c2a8      	stmia	r2!, {r3, r5, r7}
     a6c:	cc28      	ldmia	r4!, {r3, r5}
     a6e:	c228      	stmia	r2!, {r3, r5}
     a70:	464b      	mov	r3, r9
     a72:	aa08      	add	r2, sp, #32
     a74:	3320      	adds	r3, #32
     a76:	4690      	mov	r8, r2
     a78:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a7a:	c2b0      	stmia	r2!, {r4, r5, r7}
     a7c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a7e:	c2b0      	stmia	r2!, {r4, r5, r7}
     a80:	cb30      	ldmia	r3!, {r4, r5}
     a82:	c230      	stmia	r2!, {r4, r5}
     a84:	680a      	ldr	r2, [r1, #0]
     a86:	684d      	ldr	r5, [r1, #4]
     a88:	17d4      	asrs	r4, r2, #31
     a8a:	1913      	adds	r3, r2, r4
     a8c:	466e      	mov	r6, sp
     a8e:	4063      	eors	r3, r4
     a90:	2d00      	cmp	r5, #0
     a92:	dd78      	ble.n	b86 <svpwm+0x136>
     a94:	195f      	adds	r7, r3, r5
     a96:	1aeb      	subs	r3, r5, r3
     a98:	9d00      	ldr	r5, [sp, #0]
     a9a:	2b00      	cmp	r3, #0
     a9c:	d100      	bne.n	aa0 <svpwm+0x50>
     a9e:	e130      	b.n	d02 <svpwm+0x2b2>
     aa0:	105c      	asrs	r4, r3, #1
     aa2:	2b00      	cmp	r3, #0
     aa4:	dd74      	ble.n	b90 <svpwm+0x140>
     aa6:	1079      	asrs	r1, r7, #1
     aa8:	1a5b      	subs	r3, r3, r1
     aaa:	6871      	ldr	r1, [r6, #4]
     aac:	19e4      	adds	r4, r4, r7
     aae:	4689      	mov	r9, r1
     ab0:	444d      	add	r5, r9
     ab2:	2b00      	cmp	r3, #0
     ab4:	d100      	bne.n	ab8 <svpwm+0x68>
     ab6:	e126      	b.n	d06 <svpwm+0x2b6>
     ab8:	1099      	asrs	r1, r3, #2
     aba:	2b00      	cmp	r3, #0
     abc:	dd6e      	ble.n	b9c <svpwm+0x14c>
     abe:	190f      	adds	r7, r1, r4
     ac0:	10a4      	asrs	r4, r4, #2
     ac2:	1b19      	subs	r1, r3, r4
     ac4:	68b3      	ldr	r3, [r6, #8]
     ac6:	4699      	mov	r9, r3
     ac8:	444d      	add	r5, r9
     aca:	2900      	cmp	r1, #0
     acc:	d100      	bne.n	ad0 <svpwm+0x80>
     ace:	e11d      	b.n	d0c <svpwm+0x2bc>
     ad0:	10cb      	asrs	r3, r1, #3
     ad2:	2900      	cmp	r1, #0
     ad4:	dd68      	ble.n	ba8 <svpwm+0x158>
     ad6:	10fc      	asrs	r4, r7, #3
     ad8:	1b09      	subs	r1, r1, r4
     ada:	68f4      	ldr	r4, [r6, #12]
     adc:	19db      	adds	r3, r3, r7
     ade:	46a1      	mov	r9, r4
     ae0:	444d      	add	r5, r9
     ae2:	2900      	cmp	r1, #0
     ae4:	d100      	bne.n	ae8 <svpwm+0x98>
     ae6:	e113      	b.n	d10 <svpwm+0x2c0>
     ae8:	110c      	asrs	r4, r1, #4
     aea:	2900      	cmp	r1, #0
     aec:	dd62      	ble.n	bb4 <svpwm+0x164>
     aee:	18e7      	adds	r7, r4, r3
     af0:	111b      	asrs	r3, r3, #4
     af2:	1acc      	subs	r4, r1, r3
     af4:	6933      	ldr	r3, [r6, #16]
     af6:	4699      	mov	r9, r3
     af8:	444d      	add	r5, r9
     afa:	2c00      	cmp	r4, #0
     afc:	d100      	bne.n	b00 <svpwm+0xb0>
     afe:	e10a      	b.n	d16 <svpwm+0x2c6>
     b00:	1163      	asrs	r3, r4, #5
     b02:	2c00      	cmp	r4, #0
     b04:	dd5c      	ble.n	bc0 <svpwm+0x170>
     b06:	1179      	asrs	r1, r7, #5
     b08:	1a61      	subs	r1, r4, r1
     b0a:	6974      	ldr	r4, [r6, #20]
     b0c:	19db      	adds	r3, r3, r7
     b0e:	46a1      	mov	r9, r4
     b10:	444d      	add	r5, r9
     b12:	2900      	cmp	r1, #0
     b14:	d100      	bne.n	b18 <svpwm+0xc8>
     b16:	e100      	b.n	d1a <svpwm+0x2ca>
     b18:	118c      	asrs	r4, r1, #6
     b1a:	2900      	cmp	r1, #0
     b1c:	dd56      	ble.n	bcc <svpwm+0x17c>
     b1e:	18e7      	adds	r7, r4, r3
     b20:	119b      	asrs	r3, r3, #6
     b22:	1ac9      	subs	r1, r1, r3
     b24:	69b3      	ldr	r3, [r6, #24]
     b26:	4699      	mov	r9, r3
     b28:	444d      	add	r5, r9
     b2a:	2900      	cmp	r1, #0
     b2c:	d100      	bne.n	b30 <svpwm+0xe0>
     b2e:	e0f7      	b.n	d20 <svpwm+0x2d0>
     b30:	dc00      	bgt.n	b34 <svpwm+0xe4>
     b32:	e0e1      	b.n	cf8 <svpwm+0x2a8>
     b34:	69f3      	ldr	r3, [r6, #28]
     b36:	11c9      	asrs	r1, r1, #7
     b38:	19cf      	adds	r7, r1, r7
     b3a:	18ed      	adds	r5, r5, r3
     b3c:	2307      	movs	r3, #7
     b3e:	2a00      	cmp	r2, #0
     b40:	db1d      	blt.n	b7e <svpwm+0x12e>
     b42:	2d00      	cmp	r5, #0
     b44:	da03      	bge.n	b4e <svpwm+0xfe>
     b46:	2280      	movs	r2, #128	; 0x80
     b48:	00d2      	lsls	r2, r2, #3
     b4a:	4691      	mov	r9, r2
     b4c:	444d      	add	r5, r9
     b4e:	4642      	mov	r2, r8
     b50:	009b      	lsls	r3, r3, #2
     b52:	58d1      	ldr	r1, [r2, r3]
     b54:	23fa      	movs	r3, #250	; 0xfa
     b56:	4379      	muls	r1, r7
     b58:	4465      	add	r5, ip
     b5a:	05ad      	lsls	r5, r5, #22
     b5c:	1509      	asrs	r1, r1, #20
     b5e:	0dad      	lsrs	r5, r5, #22
     b60:	005b      	lsls	r3, r3, #1
     b62:	2600      	movs	r6, #0
     b64:	4299      	cmp	r1, r3
     b66:	dd01      	ble.n	b6c <svpwm+0x11c>
     b68:	0019      	movs	r1, r3
     b6a:	3601      	adds	r6, #1
     b6c:	006a      	lsls	r2, r5, #1
     b6e:	1952      	adds	r2, r2, r5
     b70:	1252      	asrs	r2, r2, #9
     b72:	2a05      	cmp	r2, #5
     b74:	d84b      	bhi.n	c0e <svpwm+0x1be>
     b76:	4b6c      	ldr	r3, [pc, #432]	; (d28 <svpwm+0x2d8>)
     b78:	0092      	lsls	r2, r2, #2
     b7a:	589b      	ldr	r3, [r3, r2]
     b7c:	469f      	mov	pc, r3
     b7e:	2280      	movs	r2, #128	; 0x80
     b80:	0092      	lsls	r2, r2, #2
     b82:	1b55      	subs	r5, r2, r5
     b84:	e7dd      	b.n	b42 <svpwm+0xf2>
     b86:	9900      	ldr	r1, [sp, #0]
     b88:	1b5f      	subs	r7, r3, r5
     b8a:	195b      	adds	r3, r3, r5
     b8c:	424d      	negs	r5, r1
     b8e:	e784      	b.n	a9a <svpwm+0x4a>
     b90:	1079      	asrs	r1, r7, #1
     b92:	18cb      	adds	r3, r1, r3
     b94:	6871      	ldr	r1, [r6, #4]
     b96:	1b3c      	subs	r4, r7, r4
     b98:	1a6d      	subs	r5, r5, r1
     b9a:	e78a      	b.n	ab2 <svpwm+0x62>
     b9c:	1a67      	subs	r7, r4, r1
     b9e:	10a1      	asrs	r1, r4, #2
     ba0:	18c9      	adds	r1, r1, r3
     ba2:	68b3      	ldr	r3, [r6, #8]
     ba4:	1aed      	subs	r5, r5, r3
     ba6:	e790      	b.n	aca <svpwm+0x7a>
     ba8:	10fc      	asrs	r4, r7, #3
     baa:	1861      	adds	r1, r4, r1
     bac:	68f4      	ldr	r4, [r6, #12]
     bae:	1afb      	subs	r3, r7, r3
     bb0:	1b2d      	subs	r5, r5, r4
     bb2:	e796      	b.n	ae2 <svpwm+0x92>
     bb4:	1b1f      	subs	r7, r3, r4
     bb6:	111c      	asrs	r4, r3, #4
     bb8:	6933      	ldr	r3, [r6, #16]
     bba:	1864      	adds	r4, r4, r1
     bbc:	1aed      	subs	r5, r5, r3
     bbe:	e79c      	b.n	afa <svpwm+0xaa>
     bc0:	1179      	asrs	r1, r7, #5
     bc2:	1909      	adds	r1, r1, r4
     bc4:	6974      	ldr	r4, [r6, #20]
     bc6:	1afb      	subs	r3, r7, r3
     bc8:	1b2d      	subs	r5, r5, r4
     bca:	e7a2      	b.n	b12 <svpwm+0xc2>
     bcc:	1b1f      	subs	r7, r3, r4
     bce:	119b      	asrs	r3, r3, #6
     bd0:	1859      	adds	r1, r3, r1
     bd2:	69b3      	ldr	r3, [r6, #24]
     bd4:	1aed      	subs	r5, r5, r3
     bd6:	e7a8      	b.n	b2a <svpwm+0xda>
     bd8:	4b54      	ldr	r3, [pc, #336]	; (d2c <svpwm+0x2dc>)
     bda:	4a55      	ldr	r2, [pc, #340]	; (d30 <svpwm+0x2e0>)
     bdc:	1b5b      	subs	r3, r3, r5
     bde:	3556      	adds	r5, #86	; 0x56
     be0:	059b      	lsls	r3, r3, #22
     be2:	05ad      	lsls	r5, r5, #22
     be4:	0d1b      	lsrs	r3, r3, #20
     be6:	0d2d      	lsrs	r5, r5, #20
     be8:	589b      	ldr	r3, [r3, r2]
     bea:	58ac      	ldr	r4, [r5, r2]
     bec:	434b      	muls	r3, r1
     bee:	434c      	muls	r4, r1
     bf0:	129b      	asrs	r3, r3, #10
     bf2:	12a1      	asrs	r1, r4, #10
     bf4:	1aca      	subs	r2, r1, r3
     bf6:	6002      	str	r2, [r0, #0]
     bf8:	425a      	negs	r2, r3
     bfa:	1a52      	subs	r2, r2, r1
     bfc:	1859      	adds	r1, r3, r1
     bfe:	6042      	str	r2, [r0, #4]
     c00:	6081      	str	r1, [r0, #8]
     c02:	0030      	movs	r0, r6
     c04:	b011      	add	sp, #68	; 0x44
     c06:	bc0c      	pop	{r2, r3}
     c08:	4690      	mov	r8, r2
     c0a:	4699      	mov	r9, r3
     c0c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c0e:	4b49      	ldr	r3, [pc, #292]	; (d34 <svpwm+0x2e4>)
     c10:	4c47      	ldr	r4, [pc, #284]	; (d30 <svpwm+0x2e0>)
     c12:	1b5b      	subs	r3, r3, r5
     c14:	059b      	lsls	r3, r3, #22
     c16:	0d1b      	lsrs	r3, r3, #20
     c18:	591a      	ldr	r2, [r3, r4]
     c1a:	23c0      	movs	r3, #192	; 0xc0
     c1c:	009b      	lsls	r3, r3, #2
     c1e:	469c      	mov	ip, r3
     c20:	4465      	add	r5, ip
     c22:	05ad      	lsls	r5, r5, #22
     c24:	0d2d      	lsrs	r5, r5, #20
     c26:	592c      	ldr	r4, [r5, r4]
     c28:	434a      	muls	r2, r1
     c2a:	4361      	muls	r1, r4
     c2c:	1292      	asrs	r2, r2, #10
     c2e:	1289      	asrs	r1, r1, #10
     c30:	1853      	adds	r3, r2, r1
     c32:	6003      	str	r3, [r0, #0]
     c34:	1a8b      	subs	r3, r1, r2
     c36:	4252      	negs	r2, r2
     c38:	1a52      	subs	r2, r2, r1
     c3a:	6043      	str	r3, [r0, #4]
     c3c:	6082      	str	r2, [r0, #8]
     c3e:	e7e0      	b.n	c02 <svpwm+0x1b2>
     c40:	4b3d      	ldr	r3, [pc, #244]	; (d38 <svpwm+0x2e8>)
     c42:	4a3b      	ldr	r2, [pc, #236]	; (d30 <svpwm+0x2e0>)
     c44:	1b5b      	subs	r3, r3, r5
     c46:	059b      	lsls	r3, r3, #22
     c48:	0d1b      	lsrs	r3, r3, #20
     c4a:	589f      	ldr	r7, [r3, r2]
     c4c:	4b3b      	ldr	r3, [pc, #236]	; (d3c <svpwm+0x2ec>)
     c4e:	434f      	muls	r7, r1
     c50:	469c      	mov	ip, r3
     c52:	4465      	add	r5, ip
     c54:	05ad      	lsls	r5, r5, #22
     c56:	0d2d      	lsrs	r5, r5, #20
     c58:	58ac      	ldr	r4, [r5, r2]
     c5a:	12bf      	asrs	r7, r7, #10
     c5c:	4361      	muls	r1, r4
     c5e:	1289      	asrs	r1, r1, #10
     c60:	1a7b      	subs	r3, r7, r1
     c62:	6003      	str	r3, [r0, #0]
     c64:	187b      	adds	r3, r7, r1
     c66:	427f      	negs	r7, r7
     c68:	1a7f      	subs	r7, r7, r1
     c6a:	6043      	str	r3, [r0, #4]
     c6c:	6087      	str	r7, [r0, #8]
     c6e:	e7c8      	b.n	c02 <svpwm+0x1b2>
     c70:	4b33      	ldr	r3, [pc, #204]	; (d40 <svpwm+0x2f0>)
     c72:	4a2f      	ldr	r2, [pc, #188]	; (d30 <svpwm+0x2e0>)
     c74:	1b5b      	subs	r3, r3, r5
     c76:	35ac      	adds	r5, #172	; 0xac
     c78:	059b      	lsls	r3, r3, #22
     c7a:	35ff      	adds	r5, #255	; 0xff
     c7c:	0d1b      	lsrs	r3, r3, #20
     c7e:	05ad      	lsls	r5, r5, #22
     c80:	589b      	ldr	r3, [r3, r2]
     c82:	0d2d      	lsrs	r5, r5, #20
     c84:	58ac      	ldr	r4, [r5, r2]
     c86:	434b      	muls	r3, r1
     c88:	4361      	muls	r1, r4
     c8a:	129b      	asrs	r3, r3, #10
     c8c:	1289      	asrs	r1, r1, #10
     c8e:	425a      	negs	r2, r3
     c90:	1a52      	subs	r2, r2, r1
     c92:	6002      	str	r2, [r0, #0]
     c94:	185a      	adds	r2, r3, r1
     c96:	1ac9      	subs	r1, r1, r3
     c98:	6042      	str	r2, [r0, #4]
     c9a:	6081      	str	r1, [r0, #8]
     c9c:	e7b1      	b.n	c02 <svpwm+0x1b2>
     c9e:	4b29      	ldr	r3, [pc, #164]	; (d44 <svpwm+0x2f4>)
     ca0:	4a23      	ldr	r2, [pc, #140]	; (d30 <svpwm+0x2e0>)
     ca2:	1b5b      	subs	r3, r3, r5
     ca4:	3501      	adds	r5, #1
     ca6:	059b      	lsls	r3, r3, #22
     ca8:	35ff      	adds	r5, #255	; 0xff
     caa:	0d1b      	lsrs	r3, r3, #20
     cac:	05ad      	lsls	r5, r5, #22
     cae:	589b      	ldr	r3, [r3, r2]
     cb0:	0d2d      	lsrs	r5, r5, #20
     cb2:	58ac      	ldr	r4, [r5, r2]
     cb4:	434b      	muls	r3, r1
     cb6:	434c      	muls	r4, r1
     cb8:	129b      	asrs	r3, r3, #10
     cba:	12a1      	asrs	r1, r4, #10
     cbc:	425a      	negs	r2, r3
     cbe:	1a52      	subs	r2, r2, r1
     cc0:	6002      	str	r2, [r0, #0]
     cc2:	1a5a      	subs	r2, r3, r1
     cc4:	1859      	adds	r1, r3, r1
     cc6:	6042      	str	r2, [r0, #4]
     cc8:	6081      	str	r1, [r0, #8]
     cca:	e79a      	b.n	c02 <svpwm+0x1b2>
     ccc:	4b1e      	ldr	r3, [pc, #120]	; (d48 <svpwm+0x2f8>)
     cce:	4a18      	ldr	r2, [pc, #96]	; (d30 <svpwm+0x2e0>)
     cd0:	1b5b      	subs	r3, r3, r5
     cd2:	3d55      	subs	r5, #85	; 0x55
     cd4:	059b      	lsls	r3, r3, #22
     cd6:	05ad      	lsls	r5, r5, #22
     cd8:	0d1b      	lsrs	r3, r3, #20
     cda:	0d2d      	lsrs	r5, r5, #20
     cdc:	589b      	ldr	r3, [r3, r2]
     cde:	58ac      	ldr	r4, [r5, r2]
     ce0:	434b      	muls	r3, r1
     ce2:	4361      	muls	r1, r4
     ce4:	129b      	asrs	r3, r3, #10
     ce6:	1289      	asrs	r1, r1, #10
     ce8:	185a      	adds	r2, r3, r1
     cea:	6002      	str	r2, [r0, #0]
     cec:	425a      	negs	r2, r3
     cee:	1a52      	subs	r2, r2, r1
     cf0:	1a59      	subs	r1, r3, r1
     cf2:	6042      	str	r2, [r0, #4]
     cf4:	6081      	str	r1, [r0, #8]
     cf6:	e784      	b.n	c02 <svpwm+0x1b2>
     cf8:	69f3      	ldr	r3, [r6, #28]
     cfa:	11cc      	asrs	r4, r1, #7
     cfc:	1b3f      	subs	r7, r7, r4
     cfe:	1aed      	subs	r5, r5, r3
     d00:	e71c      	b.n	b3c <svpwm+0xec>
     d02:	2300      	movs	r3, #0
     d04:	e71b      	b.n	b3e <svpwm+0xee>
     d06:	0027      	movs	r7, r4
     d08:	2301      	movs	r3, #1
     d0a:	e718      	b.n	b3e <svpwm+0xee>
     d0c:	2302      	movs	r3, #2
     d0e:	e716      	b.n	b3e <svpwm+0xee>
     d10:	001f      	movs	r7, r3
     d12:	2303      	movs	r3, #3
     d14:	e713      	b.n	b3e <svpwm+0xee>
     d16:	2304      	movs	r3, #4
     d18:	e711      	b.n	b3e <svpwm+0xee>
     d1a:	001f      	movs	r7, r3
     d1c:	2305      	movs	r3, #5
     d1e:	e70e      	b.n	b3e <svpwm+0xee>
     d20:	2306      	movs	r3, #6
     d22:	e70c      	b.n	b3e <svpwm+0xee>
     d24:	000022e0 	.word	0x000022e0
     d28:	000022c8 	.word	0x000022c8
     d2c:	00000a54 	.word	0x00000a54
     d30:	000012c8 	.word	0x000012c8
     d34:	000007aa 	.word	0x000007aa
     d38:	00000854 	.word	0x00000854
     d3c:	00000256 	.word	0x00000256
     d40:	000008ff 	.word	0x000008ff
     d44:	000009aa 	.word	0x000009aa
     d48:	00000aff 	.word	0x00000aff

00000d4c <get_speed>:
     d4c:	4a0f      	ldr	r2, [pc, #60]	; (d8c <get_speed+0x40>)
     d4e:	b510      	push	{r4, lr}
     d50:	6813      	ldr	r3, [r2, #0]
     d52:	6854      	ldr	r4, [r2, #4]
     d54:	1ac3      	subs	r3, r0, r3
     d56:	6050      	str	r0, [r2, #4]
     d58:	6014      	str	r4, [r2, #0]
     d5a:	17da      	asrs	r2, r3, #31
     d5c:	1898      	adds	r0, r3, r2
     d5e:	4050      	eors	r0, r2
     d60:	22fa      	movs	r2, #250	; 0xfa
     d62:	0092      	lsls	r2, r2, #2
     d64:	4290      	cmp	r0, r2
     d66:	dd04      	ble.n	d72 <get_speed+0x26>
     d68:	2b00      	cmp	r3, #0
     d6a:	db0a      	blt.n	d82 <get_speed+0x36>
     d6c:	4a08      	ldr	r2, [pc, #32]	; (d90 <get_speed+0x44>)
     d6e:	4694      	mov	ip, r2
     d70:	4463      	add	r3, ip
     d72:	680a      	ldr	r2, [r1, #0]
     d74:	4807      	ldr	r0, [pc, #28]	; (d94 <get_speed+0x48>)
     d76:	18d2      	adds	r2, r2, r3
     d78:	105b      	asrs	r3, r3, #1
     d7a:	4343      	muls	r3, r0
     d7c:	600a      	str	r2, [r1, #0]
     d7e:	1318      	asrs	r0, r3, #12
     d80:	bd10      	pop	{r4, pc}
     d82:	2280      	movs	r2, #128	; 0x80
     d84:	0152      	lsls	r2, r2, #5
     d86:	4694      	mov	ip, r2
     d88:	4463      	add	r3, ip
     d8a:	e7f2      	b.n	d72 <get_speed+0x26>
     d8c:	2000004c 	.word	0x2000004c
     d90:	fffff000 	.word	0xfffff000
     d94:	0002ae7c 	.word	0x0002ae7c

00000d98 <mfilter>:
     d98:	221f      	movs	r2, #31
     d9a:	4908      	ldr	r1, [pc, #32]	; (dbc <mfilter+0x24>)
     d9c:	b510      	push	{r4, lr}
     d9e:	688b      	ldr	r3, [r1, #8]
     da0:	3301      	adds	r3, #1
     da2:	4013      	ands	r3, r2
     da4:	608b      	str	r3, [r1, #8]
     da6:	009b      	lsls	r3, r3, #2
     da8:	18cb      	adds	r3, r1, r3
     daa:	68ca      	ldr	r2, [r1, #12]
     dac:	691c      	ldr	r4, [r3, #16]
     dae:	6118      	str	r0, [r3, #16]
     db0:	1b12      	subs	r2, r2, r4
     db2:	1812      	adds	r2, r2, r0
     db4:	1150      	asrs	r0, r2, #5
     db6:	60ca      	str	r2, [r1, #12]
     db8:	bd10      	pop	{r4, pc}
     dba:	46c0      	nop			; (mov r8, r8)
     dbc:	2000004c 	.word	0x2000004c

00000dc0 <NVIC_EnableIRQ>:
     dc0:	b580      	push	{r7, lr}
     dc2:	b082      	sub	sp, #8
     dc4:	af00      	add	r7, sp, #0
     dc6:	0002      	movs	r2, r0
     dc8:	1dfb      	adds	r3, r7, #7
     dca:	701a      	strb	r2, [r3, #0]
     dcc:	4909      	ldr	r1, [pc, #36]	; (df4 <NVIC_EnableIRQ+0x34>)
     dce:	1dfb      	adds	r3, r7, #7
     dd0:	781b      	ldrb	r3, [r3, #0]
     dd2:	b25b      	sxtb	r3, r3
     dd4:	095b      	lsrs	r3, r3, #5
     dd6:	1dfa      	adds	r2, r7, #7
     dd8:	7812      	ldrb	r2, [r2, #0]
     dda:	0010      	movs	r0, r2
     ddc:	221f      	movs	r2, #31
     dde:	4002      	ands	r2, r0
     de0:	2001      	movs	r0, #1
     de2:	4090      	lsls	r0, r2
     de4:	0002      	movs	r2, r0
     de6:	009b      	lsls	r3, r3, #2
     de8:	505a      	str	r2, [r3, r1]
     dea:	46c0      	nop			; (mov r8, r8)
     dec:	46bd      	mov	sp, r7
     dee:	b002      	add	sp, #8
     df0:	bd80      	pop	{r7, pc}
     df2:	46c0      	nop			; (mov r8, r8)
     df4:	e000e100 	.word	0xe000e100

00000df8 <PortConfig>:
     df8:	b580      	push	{r7, lr}
     dfa:	af00      	add	r7, sp, #0
     dfc:	4b42      	ldr	r3, [pc, #264]	; (f08 <PortConfig+0x110>)
     dfe:	4a42      	ldr	r2, [pc, #264]	; (f08 <PortConfig+0x110>)
     e00:	69d2      	ldr	r2, [r2, #28]
     e02:	2180      	movs	r1, #128	; 0x80
     e04:	0389      	lsls	r1, r1, #14
     e06:	430a      	orrs	r2, r1
     e08:	61da      	str	r2, [r3, #28]
     e0a:	4b40      	ldr	r3, [pc, #256]	; (f0c <PortConfig+0x114>)
     e0c:	4a3f      	ldr	r2, [pc, #252]	; (f0c <PortConfig+0x114>)
     e0e:	6892      	ldr	r2, [r2, #8]
     e10:	493f      	ldr	r1, [pc, #252]	; (f10 <PortConfig+0x118>)
     e12:	400a      	ands	r2, r1
     e14:	609a      	str	r2, [r3, #8]
     e16:	4b3d      	ldr	r3, [pc, #244]	; (f0c <PortConfig+0x114>)
     e18:	4a3c      	ldr	r2, [pc, #240]	; (f0c <PortConfig+0x114>)
     e1a:	6892      	ldr	r2, [r2, #8]
     e1c:	493d      	ldr	r1, [pc, #244]	; (f14 <PortConfig+0x11c>)
     e1e:	430a      	orrs	r2, r1
     e20:	609a      	str	r2, [r3, #8]
     e22:	4b3a      	ldr	r3, [pc, #232]	; (f0c <PortConfig+0x114>)
     e24:	4a39      	ldr	r2, [pc, #228]	; (f0c <PortConfig+0x114>)
     e26:	6852      	ldr	r2, [r2, #4]
     e28:	21fc      	movs	r1, #252	; 0xfc
     e2a:	0109      	lsls	r1, r1, #4
     e2c:	430a      	orrs	r2, r1
     e2e:	605a      	str	r2, [r3, #4]
     e30:	4b36      	ldr	r3, [pc, #216]	; (f0c <PortConfig+0x114>)
     e32:	4a36      	ldr	r2, [pc, #216]	; (f0c <PortConfig+0x114>)
     e34:	68d2      	ldr	r2, [r2, #12]
     e36:	21fc      	movs	r1, #252	; 0xfc
     e38:	0109      	lsls	r1, r1, #4
     e3a:	430a      	orrs	r2, r1
     e3c:	60da      	str	r2, [r3, #12]
     e3e:	4b33      	ldr	r3, [pc, #204]	; (f0c <PortConfig+0x114>)
     e40:	4a32      	ldr	r2, [pc, #200]	; (f0c <PortConfig+0x114>)
     e42:	6992      	ldr	r2, [r2, #24]
     e44:	4934      	ldr	r1, [pc, #208]	; (f18 <PortConfig+0x120>)
     e46:	430a      	orrs	r2, r1
     e48:	619a      	str	r2, [r3, #24]
     e4a:	4b2f      	ldr	r3, [pc, #188]	; (f08 <PortConfig+0x110>)
     e4c:	4a2e      	ldr	r2, [pc, #184]	; (f08 <PortConfig+0x110>)
     e4e:	69d2      	ldr	r2, [r2, #28]
     e50:	2180      	movs	r1, #128	; 0x80
     e52:	0489      	lsls	r1, r1, #18
     e54:	430a      	orrs	r2, r1
     e56:	61da      	str	r2, [r3, #28]
     e58:	4b30      	ldr	r3, [pc, #192]	; (f1c <PortConfig+0x124>)
     e5a:	4a30      	ldr	r2, [pc, #192]	; (f1c <PortConfig+0x124>)
     e5c:	68d2      	ldr	r2, [r2, #12]
     e5e:	2102      	movs	r1, #2
     e60:	438a      	bics	r2, r1
     e62:	60da      	str	r2, [r3, #12]
     e64:	4b28      	ldr	r3, [pc, #160]	; (f08 <PortConfig+0x110>)
     e66:	4a28      	ldr	r2, [pc, #160]	; (f08 <PortConfig+0x110>)
     e68:	69d2      	ldr	r2, [r2, #28]
     e6a:	2180      	movs	r1, #128	; 0x80
     e6c:	0449      	lsls	r1, r1, #17
     e6e:	430a      	orrs	r2, r1
     e70:	61da      	str	r2, [r3, #28]
     e72:	4b2b      	ldr	r3, [pc, #172]	; (f20 <PortConfig+0x128>)
     e74:	4a2a      	ldr	r2, [pc, #168]	; (f20 <PortConfig+0x128>)
     e76:	6892      	ldr	r2, [r2, #8]
     e78:	492a      	ldr	r1, [pc, #168]	; (f24 <PortConfig+0x12c>)
     e7a:	400a      	ands	r2, r1
     e7c:	609a      	str	r2, [r3, #8]
     e7e:	4b28      	ldr	r3, [pc, #160]	; (f20 <PortConfig+0x128>)
     e80:	4a27      	ldr	r2, [pc, #156]	; (f20 <PortConfig+0x128>)
     e82:	6892      	ldr	r2, [r2, #8]
     e84:	21a0      	movs	r1, #160	; 0xa0
     e86:	02c9      	lsls	r1, r1, #11
     e88:	430a      	orrs	r2, r1
     e8a:	609a      	str	r2, [r3, #8]
     e8c:	4b24      	ldr	r3, [pc, #144]	; (f20 <PortConfig+0x128>)
     e8e:	4a24      	ldr	r2, [pc, #144]	; (f20 <PortConfig+0x128>)
     e90:	68d2      	ldr	r2, [r2, #12]
     e92:	21c0      	movs	r1, #192	; 0xc0
     e94:	0089      	lsls	r1, r1, #2
     e96:	430a      	orrs	r2, r1
     e98:	60da      	str	r2, [r3, #12]
     e9a:	4b21      	ldr	r3, [pc, #132]	; (f20 <PortConfig+0x128>)
     e9c:	4a20      	ldr	r2, [pc, #128]	; (f20 <PortConfig+0x128>)
     e9e:	6992      	ldr	r2, [r2, #24]
     ea0:	21c0      	movs	r1, #192	; 0xc0
     ea2:	0309      	lsls	r1, r1, #12
     ea4:	430a      	orrs	r2, r1
     ea6:	619a      	str	r2, [r3, #24]
     ea8:	4b1d      	ldr	r3, [pc, #116]	; (f20 <PortConfig+0x128>)
     eaa:	4a1d      	ldr	r2, [pc, #116]	; (f20 <PortConfig+0x128>)
     eac:	6852      	ldr	r2, [r2, #4]
     eae:	2180      	movs	r1, #128	; 0x80
     eb0:	0089      	lsls	r1, r1, #2
     eb2:	430a      	orrs	r2, r1
     eb4:	605a      	str	r2, [r3, #4]
     eb6:	4b1a      	ldr	r3, [pc, #104]	; (f20 <PortConfig+0x128>)
     eb8:	4a19      	ldr	r2, [pc, #100]	; (f20 <PortConfig+0x128>)
     eba:	6852      	ldr	r2, [r2, #4]
     ebc:	491a      	ldr	r1, [pc, #104]	; (f28 <PortConfig+0x130>)
     ebe:	400a      	ands	r2, r1
     ec0:	605a      	str	r2, [r3, #4]
     ec2:	4b11      	ldr	r3, [pc, #68]	; (f08 <PortConfig+0x110>)
     ec4:	4a10      	ldr	r2, [pc, #64]	; (f08 <PortConfig+0x110>)
     ec6:	69d2      	ldr	r2, [r2, #28]
     ec8:	2180      	movs	r1, #128	; 0x80
     eca:	0409      	lsls	r1, r1, #16
     ecc:	430a      	orrs	r2, r1
     ece:	61da      	str	r2, [r3, #28]
     ed0:	4b16      	ldr	r3, [pc, #88]	; (f2c <PortConfig+0x134>)
     ed2:	2200      	movs	r2, #0
     ed4:	609a      	str	r2, [r3, #8]
     ed6:	4b15      	ldr	r3, [pc, #84]	; (f2c <PortConfig+0x134>)
     ed8:	2200      	movs	r2, #0
     eda:	601a      	str	r2, [r3, #0]
     edc:	4b13      	ldr	r3, [pc, #76]	; (f2c <PortConfig+0x134>)
     ede:	4a13      	ldr	r2, [pc, #76]	; (f2c <PortConfig+0x134>)
     ee0:	6852      	ldr	r2, [r2, #4]
     ee2:	2160      	movs	r1, #96	; 0x60
     ee4:	430a      	orrs	r2, r1
     ee6:	605a      	str	r2, [r3, #4]
     ee8:	4b10      	ldr	r3, [pc, #64]	; (f2c <PortConfig+0x134>)
     eea:	4a10      	ldr	r2, [pc, #64]	; (f2c <PortConfig+0x134>)
     eec:	68d2      	ldr	r2, [r2, #12]
     eee:	2160      	movs	r1, #96	; 0x60
     ef0:	430a      	orrs	r2, r1
     ef2:	60da      	str	r2, [r3, #12]
     ef4:	4b0d      	ldr	r3, [pc, #52]	; (f2c <PortConfig+0x134>)
     ef6:	4a0d      	ldr	r2, [pc, #52]	; (f2c <PortConfig+0x134>)
     ef8:	6992      	ldr	r2, [r2, #24]
     efa:	21f0      	movs	r1, #240	; 0xf0
     efc:	0189      	lsls	r1, r1, #6
     efe:	430a      	orrs	r2, r1
     f00:	619a      	str	r2, [r3, #24]
     f02:	46c0      	nop			; (mov r8, r8)
     f04:	46bd      	mov	sp, r7
     f06:	bd80      	pop	{r7, pc}
     f08:	40020000 	.word	0x40020000
     f0c:	400a8000 	.word	0x400a8000
     f10:	ff000fff 	.word	0xff000fff
     f14:	00aaa000 	.word	0x00aaa000
     f18:	00fff000 	.word	0x00fff000
     f1c:	400c8000 	.word	0x400c8000
     f20:	400c0000 	.word	0x400c0000
     f24:	fff0ffff 	.word	0xfff0ffff
     f28:	fffffeff 	.word	0xfffffeff
     f2c:	400b8000 	.word	0x400b8000

00000f30 <ClkConfig>:
     f30:	b580      	push	{r7, lr}
     f32:	af00      	add	r7, sp, #0
     f34:	4b18      	ldr	r3, [pc, #96]	; (f98 <ClkConfig+0x68>)
     f36:	4a18      	ldr	r2, [pc, #96]	; (f98 <ClkConfig+0x68>)
     f38:	6892      	ldr	r2, [r2, #8]
     f3a:	2101      	movs	r1, #1
     f3c:	430a      	orrs	r2, r1
     f3e:	609a      	str	r2, [r3, #8]
     f40:	46c0      	nop			; (mov r8, r8)
     f42:	4b15      	ldr	r3, [pc, #84]	; (f98 <ClkConfig+0x68>)
     f44:	681b      	ldr	r3, [r3, #0]
     f46:	2204      	movs	r2, #4
     f48:	4013      	ands	r3, r2
     f4a:	d0fa      	beq.n	f42 <ClkConfig+0x12>
     f4c:	4b12      	ldr	r3, [pc, #72]	; (f98 <ClkConfig+0x68>)
     f4e:	4a12      	ldr	r2, [pc, #72]	; (f98 <ClkConfig+0x68>)
     f50:	68d2      	ldr	r2, [r2, #12]
     f52:	2102      	movs	r1, #2
     f54:	430a      	orrs	r2, r1
     f56:	60da      	str	r2, [r3, #12]
     f58:	4b0f      	ldr	r3, [pc, #60]	; (f98 <ClkConfig+0x68>)
     f5a:	4a10      	ldr	r2, [pc, #64]	; (f9c <ClkConfig+0x6c>)
     f5c:	605a      	str	r2, [r3, #4]
     f5e:	46c0      	nop			; (mov r8, r8)
     f60:	4b0d      	ldr	r3, [pc, #52]	; (f98 <ClkConfig+0x68>)
     f62:	681b      	ldr	r3, [r3, #0]
     f64:	2202      	movs	r2, #2
     f66:	4013      	ands	r3, r2
     f68:	d0fa      	beq.n	f60 <ClkConfig+0x30>
     f6a:	4b0d      	ldr	r3, [pc, #52]	; (fa0 <ClkConfig+0x70>)
     f6c:	4a0c      	ldr	r2, [pc, #48]	; (fa0 <ClkConfig+0x70>)
     f6e:	6812      	ldr	r2, [r2, #0]
     f70:	2120      	movs	r1, #32
     f72:	430a      	orrs	r2, r1
     f74:	601a      	str	r2, [r3, #0]
     f76:	4b08      	ldr	r3, [pc, #32]	; (f98 <ClkConfig+0x68>)
     f78:	4a07      	ldr	r2, [pc, #28]	; (f98 <ClkConfig+0x68>)
     f7a:	68d2      	ldr	r2, [r2, #12]
     f7c:	2180      	movs	r1, #128	; 0x80
     f7e:	0049      	lsls	r1, r1, #1
     f80:	430a      	orrs	r2, r1
     f82:	60da      	str	r2, [r3, #12]
     f84:	4b04      	ldr	r3, [pc, #16]	; (f98 <ClkConfig+0x68>)
     f86:	4a04      	ldr	r2, [pc, #16]	; (f98 <ClkConfig+0x68>)
     f88:	68d2      	ldr	r2, [r2, #12]
     f8a:	2104      	movs	r1, #4
     f8c:	430a      	orrs	r2, r1
     f8e:	60da      	str	r2, [r3, #12]
     f90:	46c0      	nop			; (mov r8, r8)
     f92:	46bd      	mov	sp, r7
     f94:	bd80      	pop	{r7, pc}
     f96:	46c0      	nop			; (mov r8, r8)
     f98:	40020000 	.word	0x40020000
     f9c:	00000e04 	.word	0x00000e04
     fa0:	40018000 	.word	0x40018000

00000fa4 <TimerConfig>:
     fa4:	b580      	push	{r7, lr}
     fa6:	af00      	add	r7, sp, #0
     fa8:	4b7b      	ldr	r3, [pc, #492]	; (1198 <TimerConfig+0x1f4>)
     faa:	4a7b      	ldr	r2, [pc, #492]	; (1198 <TimerConfig+0x1f4>)
     fac:	69d2      	ldr	r2, [r2, #28]
     fae:	2180      	movs	r1, #128	; 0x80
     fb0:	0309      	lsls	r1, r1, #12
     fb2:	430a      	orrs	r2, r1
     fb4:	61da      	str	r2, [r3, #28]
     fb6:	4b78      	ldr	r3, [pc, #480]	; (1198 <TimerConfig+0x1f4>)
     fb8:	4a77      	ldr	r2, [pc, #476]	; (1198 <TimerConfig+0x1f4>)
     fba:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fbc:	2180      	movs	r1, #128	; 0x80
     fbe:	04c9      	lsls	r1, r1, #19
     fc0:	430a      	orrs	r2, r1
     fc2:	629a      	str	r2, [r3, #40]	; 0x28
     fc4:	4b74      	ldr	r3, [pc, #464]	; (1198 <TimerConfig+0x1f4>)
     fc6:	4a74      	ldr	r2, [pc, #464]	; (1198 <TimerConfig+0x1f4>)
     fc8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fca:	4974      	ldr	r1, [pc, #464]	; (119c <TimerConfig+0x1f8>)
     fcc:	400a      	ands	r2, r1
     fce:	629a      	str	r2, [r3, #40]	; 0x28
     fd0:	4b73      	ldr	r3, [pc, #460]	; (11a0 <TimerConfig+0x1fc>)
     fd2:	2200      	movs	r2, #0
     fd4:	601a      	str	r2, [r3, #0]
     fd6:	4b72      	ldr	r3, [pc, #456]	; (11a0 <TimerConfig+0x1fc>)
     fd8:	2204      	movs	r2, #4
     fda:	605a      	str	r2, [r3, #4]
     fdc:	4b70      	ldr	r3, [pc, #448]	; (11a0 <TimerConfig+0x1fc>)
     fde:	4a71      	ldr	r2, [pc, #452]	; (11a4 <TimerConfig+0x200>)
     fe0:	609a      	str	r2, [r3, #8]
     fe2:	4b6f      	ldr	r3, [pc, #444]	; (11a0 <TimerConfig+0x1fc>)
     fe4:	2280      	movs	r2, #128	; 0x80
     fe6:	0092      	lsls	r2, r2, #2
     fe8:	611a      	str	r2, [r3, #16]
     fea:	4b6d      	ldr	r3, [pc, #436]	; (11a0 <TimerConfig+0x1fc>)
     fec:	2280      	movs	r2, #128	; 0x80
     fee:	0092      	lsls	r2, r2, #2
     ff0:	615a      	str	r2, [r3, #20]
     ff2:	4b6b      	ldr	r3, [pc, #428]	; (11a0 <TimerConfig+0x1fc>)
     ff4:	2280      	movs	r2, #128	; 0x80
     ff6:	0092      	lsls	r2, r2, #2
     ff8:	619a      	str	r2, [r3, #24]
     ffa:	4b69      	ldr	r3, [pc, #420]	; (11a0 <TimerConfig+0x1fc>)
     ffc:	4a68      	ldr	r2, [pc, #416]	; (11a0 <TimerConfig+0x1fc>)
     ffe:	6a12      	ldr	r2, [r2, #32]
    1000:	4969      	ldr	r1, [pc, #420]	; (11a8 <TimerConfig+0x204>)
    1002:	400a      	ands	r2, r1
    1004:	621a      	str	r2, [r3, #32]
    1006:	4b66      	ldr	r3, [pc, #408]	; (11a0 <TimerConfig+0x1fc>)
    1008:	4a65      	ldr	r2, [pc, #404]	; (11a0 <TimerConfig+0x1fc>)
    100a:	6a12      	ldr	r2, [r2, #32]
    100c:	21e0      	movs	r1, #224	; 0xe0
    100e:	0109      	lsls	r1, r1, #4
    1010:	430a      	orrs	r2, r1
    1012:	621a      	str	r2, [r3, #32]
    1014:	4b62      	ldr	r3, [pc, #392]	; (11a0 <TimerConfig+0x1fc>)
    1016:	4a62      	ldr	r2, [pc, #392]	; (11a0 <TimerConfig+0x1fc>)
    1018:	6b12      	ldr	r2, [r2, #48]	; 0x30
    101a:	210f      	movs	r1, #15
    101c:	438a      	bics	r2, r1
    101e:	631a      	str	r2, [r3, #48]	; 0x30
    1020:	4b5f      	ldr	r3, [pc, #380]	; (11a0 <TimerConfig+0x1fc>)
    1022:	4a5f      	ldr	r2, [pc, #380]	; (11a0 <TimerConfig+0x1fc>)
    1024:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1026:	210c      	movs	r1, #12
    1028:	430a      	orrs	r2, r1
    102a:	631a      	str	r2, [r3, #48]	; 0x30
    102c:	4b5c      	ldr	r3, [pc, #368]	; (11a0 <TimerConfig+0x1fc>)
    102e:	4a5c      	ldr	r2, [pc, #368]	; (11a0 <TimerConfig+0x1fc>)
    1030:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1032:	2101      	movs	r1, #1
    1034:	430a      	orrs	r2, r1
    1036:	631a      	str	r2, [r3, #48]	; 0x30
    1038:	4b59      	ldr	r3, [pc, #356]	; (11a0 <TimerConfig+0x1fc>)
    103a:	4a59      	ldr	r2, [pc, #356]	; (11a0 <TimerConfig+0x1fc>)
    103c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    103e:	495b      	ldr	r1, [pc, #364]	; (11ac <TimerConfig+0x208>)
    1040:	400a      	ands	r2, r1
    1042:	631a      	str	r2, [r3, #48]	; 0x30
    1044:	4b56      	ldr	r3, [pc, #344]	; (11a0 <TimerConfig+0x1fc>)
    1046:	4a56      	ldr	r2, [pc, #344]	; (11a0 <TimerConfig+0x1fc>)
    1048:	6b12      	ldr	r2, [r2, #48]	; 0x30
    104a:	21c0      	movs	r1, #192	; 0xc0
    104c:	0109      	lsls	r1, r1, #4
    104e:	430a      	orrs	r2, r1
    1050:	631a      	str	r2, [r3, #48]	; 0x30
    1052:	4b53      	ldr	r3, [pc, #332]	; (11a0 <TimerConfig+0x1fc>)
    1054:	4a52      	ldr	r2, [pc, #328]	; (11a0 <TimerConfig+0x1fc>)
    1056:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1058:	2180      	movs	r1, #128	; 0x80
    105a:	0049      	lsls	r1, r1, #1
    105c:	430a      	orrs	r2, r1
    105e:	631a      	str	r2, [r3, #48]	; 0x30
    1060:	4b4f      	ldr	r3, [pc, #316]	; (11a0 <TimerConfig+0x1fc>)
    1062:	4a4f      	ldr	r2, [pc, #316]	; (11a0 <TimerConfig+0x1fc>)
    1064:	6e12      	ldr	r2, [r2, #96]	; 0x60
    1066:	2108      	movs	r1, #8
    1068:	430a      	orrs	r2, r1
    106a:	661a      	str	r2, [r3, #96]	; 0x60
    106c:	4b4c      	ldr	r3, [pc, #304]	; (11a0 <TimerConfig+0x1fc>)
    106e:	4a4c      	ldr	r2, [pc, #304]	; (11a0 <TimerConfig+0x1fc>)
    1070:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1072:	494d      	ldr	r1, [pc, #308]	; (11a8 <TimerConfig+0x204>)
    1074:	400a      	ands	r2, r1
    1076:	625a      	str	r2, [r3, #36]	; 0x24
    1078:	4b49      	ldr	r3, [pc, #292]	; (11a0 <TimerConfig+0x1fc>)
    107a:	4a49      	ldr	r2, [pc, #292]	; (11a0 <TimerConfig+0x1fc>)
    107c:	6a52      	ldr	r2, [r2, #36]	; 0x24
    107e:	21e0      	movs	r1, #224	; 0xe0
    1080:	0109      	lsls	r1, r1, #4
    1082:	430a      	orrs	r2, r1
    1084:	625a      	str	r2, [r3, #36]	; 0x24
    1086:	4b46      	ldr	r3, [pc, #280]	; (11a0 <TimerConfig+0x1fc>)
    1088:	4a45      	ldr	r2, [pc, #276]	; (11a0 <TimerConfig+0x1fc>)
    108a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    108c:	210f      	movs	r1, #15
    108e:	438a      	bics	r2, r1
    1090:	635a      	str	r2, [r3, #52]	; 0x34
    1092:	4b43      	ldr	r3, [pc, #268]	; (11a0 <TimerConfig+0x1fc>)
    1094:	4a42      	ldr	r2, [pc, #264]	; (11a0 <TimerConfig+0x1fc>)
    1096:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1098:	210c      	movs	r1, #12
    109a:	430a      	orrs	r2, r1
    109c:	635a      	str	r2, [r3, #52]	; 0x34
    109e:	4b40      	ldr	r3, [pc, #256]	; (11a0 <TimerConfig+0x1fc>)
    10a0:	4a3f      	ldr	r2, [pc, #252]	; (11a0 <TimerConfig+0x1fc>)
    10a2:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10a4:	2101      	movs	r1, #1
    10a6:	430a      	orrs	r2, r1
    10a8:	635a      	str	r2, [r3, #52]	; 0x34
    10aa:	4b3d      	ldr	r3, [pc, #244]	; (11a0 <TimerConfig+0x1fc>)
    10ac:	4a3c      	ldr	r2, [pc, #240]	; (11a0 <TimerConfig+0x1fc>)
    10ae:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10b0:	493e      	ldr	r1, [pc, #248]	; (11ac <TimerConfig+0x208>)
    10b2:	400a      	ands	r2, r1
    10b4:	635a      	str	r2, [r3, #52]	; 0x34
    10b6:	4b3a      	ldr	r3, [pc, #232]	; (11a0 <TimerConfig+0x1fc>)
    10b8:	4a39      	ldr	r2, [pc, #228]	; (11a0 <TimerConfig+0x1fc>)
    10ba:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10bc:	21c0      	movs	r1, #192	; 0xc0
    10be:	0109      	lsls	r1, r1, #4
    10c0:	430a      	orrs	r2, r1
    10c2:	635a      	str	r2, [r3, #52]	; 0x34
    10c4:	4b36      	ldr	r3, [pc, #216]	; (11a0 <TimerConfig+0x1fc>)
    10c6:	4a36      	ldr	r2, [pc, #216]	; (11a0 <TimerConfig+0x1fc>)
    10c8:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10ca:	2180      	movs	r1, #128	; 0x80
    10cc:	0049      	lsls	r1, r1, #1
    10ce:	430a      	orrs	r2, r1
    10d0:	635a      	str	r2, [r3, #52]	; 0x34
    10d2:	4b33      	ldr	r3, [pc, #204]	; (11a0 <TimerConfig+0x1fc>)
    10d4:	4a32      	ldr	r2, [pc, #200]	; (11a0 <TimerConfig+0x1fc>)
    10d6:	6e52      	ldr	r2, [r2, #100]	; 0x64
    10d8:	2108      	movs	r1, #8
    10da:	430a      	orrs	r2, r1
    10dc:	665a      	str	r2, [r3, #100]	; 0x64
    10de:	4b30      	ldr	r3, [pc, #192]	; (11a0 <TimerConfig+0x1fc>)
    10e0:	4a2f      	ldr	r2, [pc, #188]	; (11a0 <TimerConfig+0x1fc>)
    10e2:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10e4:	4930      	ldr	r1, [pc, #192]	; (11a8 <TimerConfig+0x204>)
    10e6:	400a      	ands	r2, r1
    10e8:	629a      	str	r2, [r3, #40]	; 0x28
    10ea:	4b2d      	ldr	r3, [pc, #180]	; (11a0 <TimerConfig+0x1fc>)
    10ec:	4a2c      	ldr	r2, [pc, #176]	; (11a0 <TimerConfig+0x1fc>)
    10ee:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10f0:	21e0      	movs	r1, #224	; 0xe0
    10f2:	0109      	lsls	r1, r1, #4
    10f4:	430a      	orrs	r2, r1
    10f6:	629a      	str	r2, [r3, #40]	; 0x28
    10f8:	4b29      	ldr	r3, [pc, #164]	; (11a0 <TimerConfig+0x1fc>)
    10fa:	4a29      	ldr	r2, [pc, #164]	; (11a0 <TimerConfig+0x1fc>)
    10fc:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10fe:	210f      	movs	r1, #15
    1100:	438a      	bics	r2, r1
    1102:	639a      	str	r2, [r3, #56]	; 0x38
    1104:	4b26      	ldr	r3, [pc, #152]	; (11a0 <TimerConfig+0x1fc>)
    1106:	4a26      	ldr	r2, [pc, #152]	; (11a0 <TimerConfig+0x1fc>)
    1108:	6b92      	ldr	r2, [r2, #56]	; 0x38
    110a:	210c      	movs	r1, #12
    110c:	430a      	orrs	r2, r1
    110e:	639a      	str	r2, [r3, #56]	; 0x38
    1110:	4b23      	ldr	r3, [pc, #140]	; (11a0 <TimerConfig+0x1fc>)
    1112:	4a23      	ldr	r2, [pc, #140]	; (11a0 <TimerConfig+0x1fc>)
    1114:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1116:	2101      	movs	r1, #1
    1118:	430a      	orrs	r2, r1
    111a:	639a      	str	r2, [r3, #56]	; 0x38
    111c:	4b20      	ldr	r3, [pc, #128]	; (11a0 <TimerConfig+0x1fc>)
    111e:	4a20      	ldr	r2, [pc, #128]	; (11a0 <TimerConfig+0x1fc>)
    1120:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1122:	4922      	ldr	r1, [pc, #136]	; (11ac <TimerConfig+0x208>)
    1124:	400a      	ands	r2, r1
    1126:	639a      	str	r2, [r3, #56]	; 0x38
    1128:	4b1d      	ldr	r3, [pc, #116]	; (11a0 <TimerConfig+0x1fc>)
    112a:	4a1d      	ldr	r2, [pc, #116]	; (11a0 <TimerConfig+0x1fc>)
    112c:	6b92      	ldr	r2, [r2, #56]	; 0x38
    112e:	21c0      	movs	r1, #192	; 0xc0
    1130:	0109      	lsls	r1, r1, #4
    1132:	430a      	orrs	r2, r1
    1134:	639a      	str	r2, [r3, #56]	; 0x38
    1136:	4b1a      	ldr	r3, [pc, #104]	; (11a0 <TimerConfig+0x1fc>)
    1138:	4a19      	ldr	r2, [pc, #100]	; (11a0 <TimerConfig+0x1fc>)
    113a:	6b92      	ldr	r2, [r2, #56]	; 0x38
    113c:	2180      	movs	r1, #128	; 0x80
    113e:	0049      	lsls	r1, r1, #1
    1140:	430a      	orrs	r2, r1
    1142:	639a      	str	r2, [r3, #56]	; 0x38
    1144:	4b16      	ldr	r3, [pc, #88]	; (11a0 <TimerConfig+0x1fc>)
    1146:	4a16      	ldr	r2, [pc, #88]	; (11a0 <TimerConfig+0x1fc>)
    1148:	6e92      	ldr	r2, [r2, #104]	; 0x68
    114a:	2108      	movs	r1, #8
    114c:	430a      	orrs	r2, r1
    114e:	669a      	str	r2, [r3, #104]	; 0x68
    1150:	4b13      	ldr	r3, [pc, #76]	; (11a0 <TimerConfig+0x1fc>)
    1152:	4a13      	ldr	r2, [pc, #76]	; (11a0 <TimerConfig+0x1fc>)
    1154:	6c12      	ldr	r2, [r2, #64]	; 0x40
    1156:	2196      	movs	r1, #150	; 0x96
    1158:	0189      	lsls	r1, r1, #6
    115a:	430a      	orrs	r2, r1
    115c:	641a      	str	r2, [r3, #64]	; 0x40
    115e:	4b10      	ldr	r3, [pc, #64]	; (11a0 <TimerConfig+0x1fc>)
    1160:	4a0f      	ldr	r2, [pc, #60]	; (11a0 <TimerConfig+0x1fc>)
    1162:	6c52      	ldr	r2, [r2, #68]	; 0x44
    1164:	2196      	movs	r1, #150	; 0x96
    1166:	0189      	lsls	r1, r1, #6
    1168:	430a      	orrs	r2, r1
    116a:	645a      	str	r2, [r3, #68]	; 0x44
    116c:	4b0c      	ldr	r3, [pc, #48]	; (11a0 <TimerConfig+0x1fc>)
    116e:	4a0c      	ldr	r2, [pc, #48]	; (11a0 <TimerConfig+0x1fc>)
    1170:	6c92      	ldr	r2, [r2, #72]	; 0x48
    1172:	2196      	movs	r1, #150	; 0x96
    1174:	0189      	lsls	r1, r1, #6
    1176:	430a      	orrs	r2, r1
    1178:	649a      	str	r2, [r3, #72]	; 0x48
    117a:	4b09      	ldr	r3, [pc, #36]	; (11a0 <TimerConfig+0x1fc>)
    117c:	4a08      	ldr	r2, [pc, #32]	; (11a0 <TimerConfig+0x1fc>)
    117e:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1180:	2102      	movs	r1, #2
    1182:	430a      	orrs	r2, r1
    1184:	659a      	str	r2, [r3, #88]	; 0x58
    1186:	4b06      	ldr	r3, [pc, #24]	; (11a0 <TimerConfig+0x1fc>)
    1188:	2201      	movs	r2, #1
    118a:	60da      	str	r2, [r3, #12]
    118c:	200d      	movs	r0, #13
    118e:	f7ff fe17 	bl	dc0 <NVIC_EnableIRQ>
    1192:	46c0      	nop			; (mov r8, r8)
    1194:	46bd      	mov	sp, r7
    1196:	bd80      	pop	{r7, pc}
    1198:	40020000 	.word	0x40020000
    119c:	ff00ffff 	.word	0xff00ffff
    11a0:	40098000 	.word	0x40098000
    11a4:	000003ff 	.word	0x000003ff
    11a8:	fffff1ff 	.word	0xfffff1ff
    11ac:	fffff0ff 	.word	0xfffff0ff

000011b0 <SystemInit>:
    11b0:	b580      	push	{r7, lr}
    11b2:	af00      	add	r7, sp, #0
    11b4:	f7ff febc 	bl	f30 <ClkConfig>
    11b8:	f7ff fe1e 	bl	df8 <PortConfig>
    11bc:	f7ff fef2 	bl	fa4 <TimerConfig>
    11c0:	46c0      	nop			; (mov r8, r8)
    11c2:	46bd      	mov	sp, r7
    11c4:	bd80      	pop	{r7, pc}
    11c6:	46c0      	nop			; (mov r8, r8)

000011c8 <b2g>:
    11c8:	0843      	lsrs	r3, r0, #1
    11ca:	4058      	eors	r0, r3
    11cc:	4770      	bx	lr
    11ce:	46c0      	nop			; (mov r8, r8)

000011d0 <g2b>:
    11d0:	0003      	movs	r3, r0
    11d2:	2000      	movs	r0, #0
    11d4:	2b00      	cmp	r3, #0
    11d6:	d002      	beq.n	11de <g2b+0xe>
    11d8:	4058      	eors	r0, r3
    11da:	085b      	lsrs	r3, r3, #1
    11dc:	d1fc      	bne.n	11d8 <g2b+0x8>
    11de:	4770      	bx	lr

000011e0 <adc_init>:
    11e0:	b580      	push	{r7, lr}
    11e2:	af00      	add	r7, sp, #0
    11e4:	4b0f      	ldr	r3, [pc, #60]	; (1224 <adc_init+0x44>)
    11e6:	4a0f      	ldr	r2, [pc, #60]	; (1224 <adc_init+0x44>)
    11e8:	69d2      	ldr	r2, [r2, #28]
    11ea:	2180      	movs	r1, #128	; 0x80
    11ec:	0289      	lsls	r1, r1, #10
    11ee:	430a      	orrs	r2, r1
    11f0:	61da      	str	r2, [r3, #28]
    11f2:	4b0c      	ldr	r3, [pc, #48]	; (1224 <adc_init+0x44>)
    11f4:	4a0c      	ldr	r2, [pc, #48]	; (1228 <adc_init+0x48>)
    11f6:	615a      	str	r2, [r3, #20]
    11f8:	4b0c      	ldr	r3, [pc, #48]	; (122c <adc_init+0x4c>)
    11fa:	2200      	movs	r2, #0
    11fc:	601a      	str	r2, [r3, #0]
    11fe:	4b0b      	ldr	r3, [pc, #44]	; (122c <adc_init+0x4c>)
    1200:	4a0a      	ldr	r2, [pc, #40]	; (122c <adc_init+0x4c>)
    1202:	6812      	ldr	r2, [r2, #0]
    1204:	490a      	ldr	r1, [pc, #40]	; (1230 <adc_init+0x50>)
    1206:	430a      	orrs	r2, r1
    1208:	601a      	str	r2, [r3, #0]
    120a:	4b08      	ldr	r3, [pc, #32]	; (122c <adc_init+0x4c>)
    120c:	4a07      	ldr	r2, [pc, #28]	; (122c <adc_init+0x4c>)
    120e:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1210:	2139      	movs	r1, #57	; 0x39
    1212:	430a      	orrs	r2, r1
    1214:	629a      	str	r2, [r3, #40]	; 0x28
    1216:	4b05      	ldr	r3, [pc, #20]	; (122c <adc_init+0x4c>)
    1218:	2210      	movs	r2, #16
    121a:	621a      	str	r2, [r3, #32]
    121c:	46c0      	nop			; (mov r8, r8)
    121e:	46bd      	mov	sp, r7
    1220:	bd80      	pop	{r7, pc}
    1222:	46c0      	nop			; (mov r8, r8)
    1224:	40020000 	.word	0x40020000
    1228:	00002020 	.word	0x00002020
    122c:	40088000 	.word	0x40088000
    1230:	00000205 	.word	0x00000205

00001234 <dma_init>:
    1234:	b580      	push	{r7, lr}
    1236:	af00      	add	r7, sp, #0
    1238:	4b18      	ldr	r3, [pc, #96]	; (129c <dma_init+0x68>)
    123a:	4a18      	ldr	r2, [pc, #96]	; (129c <dma_init+0x68>)
    123c:	69d2      	ldr	r2, [r2, #28]
    123e:	2120      	movs	r1, #32
    1240:	430a      	orrs	r2, r1
    1242:	61da      	str	r2, [r3, #28]
    1244:	4b16      	ldr	r3, [pc, #88]	; (12a0 <dma_init+0x6c>)
    1246:	4a17      	ldr	r2, [pc, #92]	; (12a4 <dma_init+0x70>)
    1248:	609a      	str	r2, [r3, #8]
    124a:	4b15      	ldr	r3, [pc, #84]	; (12a0 <dma_init+0x6c>)
    124c:	2201      	movs	r2, #1
    124e:	4252      	negs	r2, r2
    1250:	62da      	str	r2, [r3, #44]	; 0x2c
    1252:	4b13      	ldr	r3, [pc, #76]	; (12a0 <dma_init+0x6c>)
    1254:	2201      	movs	r2, #1
    1256:	4252      	negs	r2, r2
    1258:	621a      	str	r2, [r3, #32]
    125a:	4b11      	ldr	r3, [pc, #68]	; (12a0 <dma_init+0x6c>)
    125c:	2201      	movs	r2, #1
    125e:	4252      	negs	r2, r2
    1260:	635a      	str	r2, [r3, #52]	; 0x34
    1262:	4b0f      	ldr	r3, [pc, #60]	; (12a0 <dma_init+0x6c>)
    1264:	2280      	movs	r2, #128	; 0x80
    1266:	05d2      	lsls	r2, r2, #23
    1268:	61da      	str	r2, [r3, #28]
    126a:	4b0d      	ldr	r3, [pc, #52]	; (12a0 <dma_init+0x6c>)
    126c:	2280      	movs	r2, #128	; 0x80
    126e:	05d2      	lsls	r2, r2, #23
    1270:	625a      	str	r2, [r3, #36]	; 0x24
    1272:	4b0b      	ldr	r3, [pc, #44]	; (12a0 <dma_init+0x6c>)
    1274:	2201      	movs	r2, #1
    1276:	605a      	str	r2, [r3, #4]
    1278:	4a0a      	ldr	r2, [pc, #40]	; (12a4 <dma_init+0x70>)
    127a:	23f0      	movs	r3, #240	; 0xf0
    127c:	005b      	lsls	r3, r3, #1
    127e:	490a      	ldr	r1, [pc, #40]	; (12a8 <dma_init+0x74>)
    1280:	50d1      	str	r1, [r2, r3]
    1282:	490a      	ldr	r1, [pc, #40]	; (12ac <dma_init+0x78>)
    1284:	4a07      	ldr	r2, [pc, #28]	; (12a4 <dma_init+0x70>)
    1286:	23f2      	movs	r3, #242	; 0xf2
    1288:	005b      	lsls	r3, r3, #1
    128a:	50d1      	str	r1, [r2, r3]
    128c:	4a05      	ldr	r2, [pc, #20]	; (12a4 <dma_init+0x70>)
    128e:	23f4      	movs	r3, #244	; 0xf4
    1290:	005b      	lsls	r3, r3, #1
    1292:	4907      	ldr	r1, [pc, #28]	; (12b0 <dma_init+0x7c>)
    1294:	50d1      	str	r1, [r2, r3]
    1296:	46c0      	nop			; (mov r8, r8)
    1298:	46bd      	mov	sp, r7
    129a:	bd80      	pop	{r7, pc}
    129c:	40020000 	.word	0x40020000
    12a0:	40028000 	.word	0x40028000
    12a4:	20100000 	.word	0x20100000
    12a8:	40088018 	.word	0x40088018
    12ac:	2010020c 	.word	0x2010020c
    12b0:	ae000031 	.word	0xae000031

000012b4 <adc_dma_init>:
    12b4:	b580      	push	{r7, lr}
    12b6:	af00      	add	r7, sp, #0
    12b8:	f7ff ff92 	bl	11e0 <adc_init>
    12bc:	f7ff ffba 	bl	1234 <dma_init>
    12c0:	46c0      	nop			; (mov r8, r8)
    12c2:	46bd      	mov	sp, r7
    12c4:	bd80      	pop	{r7, pc}
    12c6:	46c0      	nop			; (mov r8, r8)

000012c8 <cos_tb>:
    12c8:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    12d8:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12e8:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    12f8:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    1308:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    1318:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    1328:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    1338:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1348:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1358:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1368:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1378:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1388:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    1398:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    13a8:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    13b8:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    13c8:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    13d8:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13e8:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    13f8:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    1408:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    1418:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    1428:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    1438:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1448:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1458:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1468:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1478:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1488:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    1498:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    14a8:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    14b8:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    14c8:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    14d8:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14e8:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    14f8:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    1508:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    1518:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    1528:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    1538:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1548:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1558:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1568:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1578:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1588:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    1598:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    15a8:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    15b8:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    15c8:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    15d8:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15e8:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    15f8:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    1608:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    1618:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    1628:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    1638:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1648:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1658:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1668:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1678:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1688:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    1698:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    16a8:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    16b8:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    16c8:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    16d8:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16e8:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    16f8:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    1708:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    1718:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    1728:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    1738:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1748:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1758:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1768:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1778:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1788:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    1798:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    17a8:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    17b8:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    17c8:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    17d8:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17e8:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    17f8:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    1808:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    1818:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    1828:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    1838:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1848:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1858:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1868:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1878:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1888:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    1898:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    18a8:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    18b8:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    18c8:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    18d8:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18e8:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    18f8:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    1908:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    1918:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    1928:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    1938:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1948:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1958:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1968:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1978:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1988:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    1998:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    19a8:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    19b8:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    19c8:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    19d8:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19e8:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    19f8:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    1a08:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    1a18:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    1a28:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    1a38:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a48:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a58:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a68:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a78:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a88:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1a98:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1aa8:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1ab8:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ac8:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ad8:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1ae8:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1af8:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1b08:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1b18:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1b28:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1b38:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b48:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b58:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b68:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b78:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b88:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1b98:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1ba8:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1bb8:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1bc8:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1bd8:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1be8:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1bf8:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1c08:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1c18:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1c28:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1c38:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c48:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c58:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c68:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c78:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c88:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1c98:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1ca8:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1cb8:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1cc8:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1cd8:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1ce8:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1cf8:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1d08:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1d18:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1d28:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1d38:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d48:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d58:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d68:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d78:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d88:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1d98:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1da8:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1db8:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1dc8:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1dd8:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1de8:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1df8:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1e08:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1e18:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1e28:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1e38:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e48:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e58:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e68:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e78:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e88:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1e98:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1ea8:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1eb8:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1ec8:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1ed8:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1ee8:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1ef8:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1f08:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1f18:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1f28:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1f38:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f48:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f58:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f68:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f78:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f88:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1f98:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1fa8:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1fb8:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1fc8:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1fd8:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1fe8:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    1ff8:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    2008:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    2018:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    2028:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    2038:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2048:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2058:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2068:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2078:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2088:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    2098:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    20a8:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    20b8:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    20c8:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    20d8:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20e8:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    20f8:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    2108:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    2118:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    2128:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    2138:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2148:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2158:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2168:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2178:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2188:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    2198:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    21a8:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    21b8:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    21c8:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    21d8:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21e8:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    21f8:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    2208:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    2218:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    2228:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    2238:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2248:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2258:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2268:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2278:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2288:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    2298:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    22a8:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    22b8:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    22c8:	0c0e 0000 0c40 0000 0c70 0000 0c9e 0000     ....@...p.......
    22d8:	0bd8 0000 0ccc 0000 0080 0000 004c 0000     ............L...
    22e8:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    22f8:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    2308:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    2318:	026e 0000 026e 0000                         n...n...
