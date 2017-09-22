
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 35 05 00 00 95 05 00 00 95 05 00 00     ... 5...........
	...
      2c:	95 05 00 00 00 00 00 00 00 00 00 00 95 05 00 00     ................
      3c:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      4c:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      5c:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      6c:	95 05 00 00 95 05 00 00 09 05 00 00 95 05 00 00     ................
      7c:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      8c:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      9c:	95 05 00 00 95 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	95 05 00 00 95 05 00 00 95 05 00 00 95 05 00 00     ................
      bc:	95 05 00 00                                         ....

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
     192:	f000 fffb 	bl	118c <g2b>
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
     278:	f000 ff78 	bl	116c <SystemInit>
     27c:	f000 fff8 	bl	1270 <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	4b93      	ldr	r3, [pc, #588]	; (4d8 <_stack_size+0xd8>)
     28a:	22c8      	movs	r2, #200	; 0xc8
     28c:	21c8      	movs	r1, #200	; 0xc8
     28e:	0018      	movs	r0, r3
     290:	f000 f984 	bl	59c <reg_init>
     294:	4b91      	ldr	r3, [pc, #580]	; (4dc <_stack_size+0xdc>)
     296:	22c8      	movs	r2, #200	; 0xc8
     298:	21c8      	movs	r1, #200	; 0xc8
     29a:	0018      	movs	r0, r3
     29c:	f000 f97e 	bl	59c <reg_init>
     2a0:	4b8f      	ldr	r3, [pc, #572]	; (4e0 <_stack_size+0xe0>)
     2a2:	22c8      	movs	r2, #200	; 0xc8
     2a4:	2100      	movs	r1, #0
     2a6:	0018      	movs	r0, r3
     2a8:	f000 f978 	bl	59c <reg_init>
     2ac:	23fa      	movs	r3, #250	; 0xfa
     2ae:	009a      	lsls	r2, r3, #2
     2b0:	4b8c      	ldr	r3, [pc, #560]	; (4e4 <_stack_size+0xe4>)
     2b2:	2100      	movs	r1, #0
     2b4:	0018      	movs	r0, r3
     2b6:	f000 f971 	bl	59c <reg_init>
     2ba:	4b8b      	ldr	r3, [pc, #556]	; (4e8 <_stack_size+0xe8>)
     2bc:	2200      	movs	r2, #0
     2be:	601a      	str	r2, [r3, #0]
     2c0:	2300      	movs	r3, #0
     2c2:	65bb      	str	r3, [r7, #88]	; 0x58
     2c4:	2300      	movs	r3, #0
     2c6:	657b      	str	r3, [r7, #84]	; 0x54
     2c8:	2300      	movs	r3, #0
     2ca:	647b      	str	r3, [r7, #68]	; 0x44
     2cc:	2300      	movs	r3, #0
     2ce:	643b      	str	r3, [r7, #64]	; 0x40
     2d0:	2300      	movs	r3, #0
     2d2:	65fb      	str	r3, [r7, #92]	; 0x5c
     2d4:	e01f      	b.n	316 <main+0xd2>
     2d6:	f7ff ff07 	bl	e8 <adc_dma_wait>
     2da:	4b84      	ldr	r3, [pc, #528]	; (4ec <_stack_size+0xec>)
     2dc:	685b      	ldr	r3, [r3, #4]
     2de:	051b      	lsls	r3, r3, #20
     2e0:	0d1a      	lsrs	r2, r3, #20
     2e2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2e4:	18d3      	adds	r3, r2, r3
     2e6:	65bb      	str	r3, [r7, #88]	; 0x58
     2e8:	4b80      	ldr	r3, [pc, #512]	; (4ec <_stack_size+0xec>)
     2ea:	689b      	ldr	r3, [r3, #8]
     2ec:	051b      	lsls	r3, r3, #20
     2ee:	0d1a      	lsrs	r2, r3, #20
     2f0:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2f2:	18d3      	adds	r3, r2, r3
     2f4:	657b      	str	r3, [r7, #84]	; 0x54
     2f6:	4b7d      	ldr	r3, [pc, #500]	; (4ec <_stack_size+0xec>)
     2f8:	68db      	ldr	r3, [r3, #12]
     2fa:	051b      	lsls	r3, r3, #20
     2fc:	0d1a      	lsrs	r2, r3, #20
     2fe:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     300:	18d3      	adds	r3, r2, r3
     302:	647b      	str	r3, [r7, #68]	; 0x44
     304:	f7ff ff3e 	bl	184 <encoder_read>
     308:	0002      	movs	r2, r0
     30a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     30c:	189b      	adds	r3, r3, r2
     30e:	643b      	str	r3, [r7, #64]	; 0x40
     310:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     312:	3301      	adds	r3, #1
     314:	65fb      	str	r3, [r7, #92]	; 0x5c
     316:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     318:	4a75      	ldr	r2, [pc, #468]	; (4f0 <_stack_size+0xf0>)
     31a:	4293      	cmp	r3, r2
     31c:	dddb      	ble.n	2d6 <main+0x92>
     31e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     320:	129b      	asrs	r3, r3, #10
     322:	65bb      	str	r3, [r7, #88]	; 0x58
     324:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     326:	129b      	asrs	r3, r3, #10
     328:	657b      	str	r3, [r7, #84]	; 0x54
     32a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     32c:	129b      	asrs	r3, r3, #10
     32e:	647b      	str	r3, [r7, #68]	; 0x44
     330:	4b70      	ldr	r3, [pc, #448]	; (4f4 <_stack_size+0xf4>)
     332:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     334:	601a      	str	r2, [r3, #0]
     336:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     338:	129b      	asrs	r3, r3, #10
     33a:	643b      	str	r3, [r7, #64]	; 0x40
     33c:	4b6e      	ldr	r3, [pc, #440]	; (4f8 <_stack_size+0xf8>)
     33e:	4a6e      	ldr	r2, [pc, #440]	; (4f8 <_stack_size+0xf8>)
     340:	6812      	ldr	r2, [r2, #0]
     342:	2120      	movs	r1, #32
     344:	438a      	bics	r2, r1
     346:	601a      	str	r2, [r3, #0]
     348:	f7ff fece 	bl	e8 <adc_dma_wait>
     34c:	4b6a      	ldr	r3, [pc, #424]	; (4f8 <_stack_size+0xf8>)
     34e:	4a6a      	ldr	r2, [pc, #424]	; (4f8 <_stack_size+0xf8>)
     350:	6812      	ldr	r2, [r2, #0]
     352:	2120      	movs	r1, #32
     354:	430a      	orrs	r2, r1
     356:	601a      	str	r2, [r3, #0]
     358:	4b64      	ldr	r3, [pc, #400]	; (4ec <_stack_size+0xec>)
     35a:	681b      	ldr	r3, [r3, #0]
     35c:	051b      	lsls	r3, r3, #20
     35e:	0d1a      	lsrs	r2, r3, #20
     360:	0013      	movs	r3, r2
     362:	009b      	lsls	r3, r3, #2
     364:	189b      	adds	r3, r3, r2
     366:	0018      	movs	r0, r3
     368:	f000 fd06 	bl	d78 <mfilter>
     36c:	0003      	movs	r3, r0
     36e:	65fb      	str	r3, [r7, #92]	; 0x5c
     370:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     372:	10da      	asrs	r2, r3, #3
     374:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     376:	18d3      	adds	r3, r2, r3
     378:	10db      	asrs	r3, r3, #3
     37a:	22af      	movs	r2, #175	; 0xaf
     37c:	0092      	lsls	r2, r2, #2
     37e:	189a      	adds	r2, r3, r2
     380:	4b5c      	ldr	r3, [pc, #368]	; (4f4 <_stack_size+0xf4>)
     382:	601a      	str	r2, [r3, #0]
     384:	4b5b      	ldr	r3, [pc, #364]	; (4f4 <_stack_size+0xf4>)
     386:	681a      	ldr	r2, [r3, #0]
     388:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     38a:	1ad2      	subs	r2, r2, r3
     38c:	0013      	movs	r3, r2
     38e:	00db      	lsls	r3, r3, #3
     390:	1a9b      	subs	r3, r3, r2
     392:	00da      	lsls	r2, r3, #3
     394:	1ad2      	subs	r2, r2, r3
     396:	4b54      	ldr	r3, [pc, #336]	; (4e8 <_stack_size+0xe8>)
     398:	601a      	str	r2, [r3, #0]
     39a:	4b54      	ldr	r3, [pc, #336]	; (4ec <_stack_size+0xec>)
     39c:	685b      	ldr	r3, [r3, #4]
     39e:	051b      	lsls	r3, r3, #20
     3a0:	0d1a      	lsrs	r2, r3, #20
     3a2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3a4:	1ad3      	subs	r3, r2, r3
     3a6:	633b      	str	r3, [r7, #48]	; 0x30
     3a8:	4b50      	ldr	r3, [pc, #320]	; (4ec <_stack_size+0xec>)
     3aa:	689b      	ldr	r3, [r3, #8]
     3ac:	051b      	lsls	r3, r3, #20
     3ae:	0d1a      	lsrs	r2, r3, #20
     3b0:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     3b2:	1ad3      	subs	r3, r2, r3
     3b4:	62fb      	str	r3, [r7, #44]	; 0x2c
     3b6:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     3b8:	425a      	negs	r2, r3
     3ba:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     3bc:	1ad3      	subs	r3, r2, r3
     3be:	62bb      	str	r3, [r7, #40]	; 0x28
     3c0:	4b4a      	ldr	r3, [pc, #296]	; (4ec <_stack_size+0xec>)
     3c2:	68db      	ldr	r3, [r3, #12]
     3c4:	051b      	lsls	r3, r3, #20
     3c6:	0d1b      	lsrs	r3, r3, #20
     3c8:	637b      	str	r3, [r7, #52]	; 0x34
     3ca:	f7ff fedb 	bl	184 <encoder_read>
     3ce:	0003      	movs	r3, r0
     3d0:	627b      	str	r3, [r7, #36]	; 0x24
     3d2:	4b4a      	ldr	r3, [pc, #296]	; (4fc <_stack_size+0xfc>)
     3d4:	6a7a      	ldr	r2, [r7, #36]	; 0x24
     3d6:	605a      	str	r2, [r3, #4]
     3d8:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3da:	3301      	adds	r3, #1
     3dc:	64fb      	str	r3, [r7, #76]	; 0x4c
     3de:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3e0:	2207      	movs	r2, #7
     3e2:	4013      	ands	r3, r2
     3e4:	d12e      	bne.n	444 <_stack_size+0x44>
     3e6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3e8:	003a      	movs	r2, r7
     3ea:	0011      	movs	r1, r2
     3ec:	0018      	movs	r0, r3
     3ee:	f000 fc9d 	bl	d2c <get_speed>
     3f2:	0003      	movs	r3, r0
     3f4:	623b      	str	r3, [r7, #32]
     3f6:	4b3c      	ldr	r3, [pc, #240]	; (4e8 <_stack_size+0xe8>)
     3f8:	681a      	ldr	r2, [r3, #0]
     3fa:	683b      	ldr	r3, [r7, #0]
     3fc:	1ad1      	subs	r1, r2, r3
     3fe:	4b39      	ldr	r3, [pc, #228]	; (4e4 <_stack_size+0xe4>)
     400:	2200      	movs	r2, #0
     402:	0018      	movs	r0, r3
     404:	f000 f8d0 	bl	5a8 <reg_update>
     408:	4b36      	ldr	r3, [pc, #216]	; (4e4 <_stack_size+0xe4>)
     40a:	68db      	ldr	r3, [r3, #12]
     40c:	129b      	asrs	r3, r3, #10
     40e:	63bb      	str	r3, [r7, #56]	; 0x38
     410:	6bba      	ldr	r2, [r7, #56]	; 0x38
     412:	6a3b      	ldr	r3, [r7, #32]
     414:	1ad1      	subs	r1, r2, r3
     416:	4b32      	ldr	r3, [pc, #200]	; (4e0 <_stack_size+0xe0>)
     418:	2200      	movs	r2, #0
     41a:	0018      	movs	r0, r3
     41c:	f000 f8c4 	bl	5a8 <reg_update>
     420:	4b2f      	ldr	r3, [pc, #188]	; (4e0 <_stack_size+0xe0>)
     422:	68db      	ldr	r3, [r3, #12]
     424:	129b      	asrs	r3, r3, #10
     426:	64bb      	str	r3, [r7, #72]	; 0x48
     428:	6cba      	ldr	r2, [r7, #72]	; 0x48
     42a:	23fa      	movs	r3, #250	; 0xfa
     42c:	009b      	lsls	r3, r3, #2
     42e:	429a      	cmp	r2, r3
     430:	dd02      	ble.n	438 <_stack_size+0x38>
     432:	23fa      	movs	r3, #250	; 0xfa
     434:	009b      	lsls	r3, r3, #2
     436:	64bb      	str	r3, [r7, #72]	; 0x48
     438:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     43a:	4a31      	ldr	r2, [pc, #196]	; (500 <_stack_size+0x100>)
     43c:	4293      	cmp	r3, r2
     43e:	da01      	bge.n	444 <_stack_size+0x44>
     440:	4b2f      	ldr	r3, [pc, #188]	; (500 <_stack_size+0x100>)
     442:	64bb      	str	r3, [r7, #72]	; 0x48
     444:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     446:	059b      	lsls	r3, r3, #22
     448:	0d9b      	lsrs	r3, r3, #22
     44a:	63fb      	str	r3, [r7, #60]	; 0x3c
     44c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     44e:	4a2d      	ldr	r2, [pc, #180]	; (504 <_stack_size+0x104>)
     450:	4694      	mov	ip, r2
     452:	4463      	add	r3, ip
     454:	059b      	lsls	r3, r3, #22
     456:	0d9b      	lsrs	r3, r3, #22
     458:	63fb      	str	r3, [r7, #60]	; 0x3c
     45a:	1d3b      	adds	r3, r7, #4
     45c:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     45e:	601a      	str	r2, [r3, #0]
     460:	1d3b      	adds	r3, r7, #4
     462:	6aba      	ldr	r2, [r7, #40]	; 0x28
     464:	605a      	str	r2, [r3, #4]
     466:	1d3b      	adds	r3, r7, #4
     468:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     46a:	609a      	str	r2, [r3, #8]
     46c:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     46e:	2310      	movs	r3, #16
     470:	18f9      	adds	r1, r7, r3
     472:	1d3b      	adds	r3, r7, #4
     474:	0018      	movs	r0, r3
     476:	f000 f8af 	bl	5d8 <abc_to_dq>
     47a:	2310      	movs	r3, #16
     47c:	18fb      	adds	r3, r7, r3
     47e:	681b      	ldr	r3, [r3, #0]
     480:	425b      	negs	r3, r3
     482:	61fb      	str	r3, [r7, #28]
     484:	2310      	movs	r3, #16
     486:	18fb      	adds	r3, r7, r3
     488:	685b      	ldr	r3, [r3, #4]
     48a:	6cba      	ldr	r2, [r7, #72]	; 0x48
     48c:	1ad3      	subs	r3, r2, r3
     48e:	61bb      	str	r3, [r7, #24]
     490:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     492:	69f9      	ldr	r1, [r7, #28]
     494:	4b10      	ldr	r3, [pc, #64]	; (4d8 <_stack_size+0xd8>)
     496:	0018      	movs	r0, r3
     498:	f000 f886 	bl	5a8 <reg_update>
     49c:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     49e:	69b9      	ldr	r1, [r7, #24]
     4a0:	4b0e      	ldr	r3, [pc, #56]	; (4dc <_stack_size+0xdc>)
     4a2:	0018      	movs	r0, r3
     4a4:	f000 f880 	bl	5a8 <reg_update>
     4a8:	4b0b      	ldr	r3, [pc, #44]	; (4d8 <_stack_size+0xd8>)
     4aa:	68da      	ldr	r2, [r3, #12]
     4ac:	2310      	movs	r3, #16
     4ae:	18fb      	adds	r3, r7, r3
     4b0:	601a      	str	r2, [r3, #0]
     4b2:	4b0a      	ldr	r3, [pc, #40]	; (4dc <_stack_size+0xdc>)
     4b4:	68da      	ldr	r2, [r3, #12]
     4b6:	2310      	movs	r3, #16
     4b8:	18fb      	adds	r3, r7, r3
     4ba:	605a      	str	r2, [r3, #4]
     4bc:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4be:	2310      	movs	r3, #16
     4c0:	18f9      	adds	r1, r7, r3
     4c2:	1d3b      	adds	r3, r7, #4
     4c4:	0018      	movs	r0, r3
     4c6:	f000 fab3 	bl	a30 <svpwm>
     4ca:	0003      	movs	r3, r0
     4cc:	653b      	str	r3, [r7, #80]	; 0x50
     4ce:	1d3b      	adds	r3, r7, #4
     4d0:	0018      	movs	r0, r3
     4d2:	f7ff fe7d 	bl	1d0 <pwm_set>
     4d6:	e731      	b.n	33c <main+0xf8>
     4d8:	20000008 	.word	0x20000008
     4dc:	20000018 	.word	0x20000018
     4e0:	20000028 	.word	0x20000028
     4e4:	20000038 	.word	0x20000038
     4e8:	20000000 	.word	0x20000000
     4ec:	20100200 	.word	0x20100200
     4f0:	000003ff 	.word	0x000003ff
     4f4:	20000004 	.word	0x20000004
     4f8:	400b8000 	.word	0x400b8000
     4fc:	40090000 	.word	0x40090000
     500:	fffffc18 	.word	0xfffffc18
     504:	000003ea 	.word	0x000003ea

00000508 <TIMER4_Handler>:
     508:	b580      	push	{r7, lr}
     50a:	af00      	add	r7, sp, #0
     50c:	4b07      	ldr	r3, [pc, #28]	; (52c <TIMER4_Handler+0x24>)
     50e:	2200      	movs	r2, #0
     510:	655a      	str	r2, [r3, #84]	; 0x54
     512:	4b07      	ldr	r3, [pc, #28]	; (530 <TIMER4_Handler+0x28>)
     514:	681b      	ldr	r3, [r3, #0]
     516:	1c5a      	adds	r2, r3, #1
     518:	4b05      	ldr	r3, [pc, #20]	; (530 <TIMER4_Handler+0x28>)
     51a:	601a      	str	r2, [r3, #0]
     51c:	f7ff fdd0 	bl	c0 <adc_dma_start>
     520:	f7ff fe24 	bl	16c <encoder_start>
     524:	46c0      	nop			; (mov r8, r8)
     526:	46bd      	mov	sp, r7
     528:	bd80      	pop	{r7, pc}
     52a:	46c0      	nop			; (mov r8, r8)
     52c:	40098000 	.word	0x40098000
     530:	20000048 	.word	0x20000048

00000534 <handler_reset>:
     534:	b580      	push	{r7, lr}
     536:	b082      	sub	sp, #8
     538:	af00      	add	r7, sp, #0
     53a:	4b11      	ldr	r3, [pc, #68]	; (580 <handler_reset+0x4c>)
     53c:	607b      	str	r3, [r7, #4]
     53e:	4b11      	ldr	r3, [pc, #68]	; (584 <handler_reset+0x50>)
     540:	603b      	str	r3, [r7, #0]
     542:	e007      	b.n	554 <handler_reset+0x20>
     544:	683b      	ldr	r3, [r7, #0]
     546:	1d1a      	adds	r2, r3, #4
     548:	603a      	str	r2, [r7, #0]
     54a:	687a      	ldr	r2, [r7, #4]
     54c:	1d11      	adds	r1, r2, #4
     54e:	6079      	str	r1, [r7, #4]
     550:	6812      	ldr	r2, [r2, #0]
     552:	601a      	str	r2, [r3, #0]
     554:	683a      	ldr	r2, [r7, #0]
     556:	4b0c      	ldr	r3, [pc, #48]	; (588 <handler_reset+0x54>)
     558:	429a      	cmp	r2, r3
     55a:	d3f3      	bcc.n	544 <handler_reset+0x10>
     55c:	4b0b      	ldr	r3, [pc, #44]	; (58c <handler_reset+0x58>)
     55e:	603b      	str	r3, [r7, #0]
     560:	e004      	b.n	56c <handler_reset+0x38>
     562:	683b      	ldr	r3, [r7, #0]
     564:	1d1a      	adds	r2, r3, #4
     566:	603a      	str	r2, [r7, #0]
     568:	2200      	movs	r2, #0
     56a:	601a      	str	r2, [r3, #0]
     56c:	683a      	ldr	r2, [r7, #0]
     56e:	4b08      	ldr	r3, [pc, #32]	; (590 <handler_reset+0x5c>)
     570:	429a      	cmp	r2, r3
     572:	d3f6      	bcc.n	562 <handler_reset+0x2e>
     574:	f7ff fe66 	bl	244 <main>
     578:	46c0      	nop			; (mov r8, r8)
     57a:	46bd      	mov	sp, r7
     57c:	b002      	add	sp, #8
     57e:	bd80      	pop	{r7, pc}
     580:	000022dc 	.word	0x000022dc
     584:	20000000 	.word	0x20000000
     588:	20000000 	.word	0x20000000
     58c:	20000000 	.word	0x20000000
     590:	200000dc 	.word	0x200000dc

00000594 <default_handler>:
     594:	b580      	push	{r7, lr}
     596:	af00      	add	r7, sp, #0
     598:	e7fe      	b.n	598 <default_handler+0x4>
     59a:	46c0      	nop			; (mov r8, r8)

0000059c <reg_init>:
     59c:	2300      	movs	r3, #0
     59e:	6001      	str	r1, [r0, #0]
     5a0:	6042      	str	r2, [r0, #4]
     5a2:	6083      	str	r3, [r0, #8]
     5a4:	60c3      	str	r3, [r0, #12]
     5a6:	4770      	bx	lr

000005a8 <reg_update>:
     5a8:	b510      	push	{r4, lr}
     5aa:	6804      	ldr	r4, [r0, #0]
     5ac:	6883      	ldr	r3, [r0, #8]
     5ae:	434c      	muls	r4, r1
     5b0:	2a00      	cmp	r2, #0
     5b2:	d004      	beq.n	5be <reg_update+0x16>
     5b4:	2b00      	cmp	r3, #0
     5b6:	dd09      	ble.n	5cc <reg_update+0x24>
     5b8:	2c00      	cmp	r4, #0
     5ba:	dd00      	ble.n	5be <reg_update+0x16>
     5bc:	2400      	movs	r4, #0
     5be:	6842      	ldr	r2, [r0, #4]
     5c0:	18e3      	adds	r3, r4, r3
     5c2:	4351      	muls	r1, r2
     5c4:	18c9      	adds	r1, r1, r3
     5c6:	60c1      	str	r1, [r0, #12]
     5c8:	6083      	str	r3, [r0, #8]
     5ca:	bd10      	pop	{r4, pc}
     5cc:	2b00      	cmp	r3, #0
     5ce:	d0f6      	beq.n	5be <reg_update+0x16>
     5d0:	43e2      	mvns	r2, r4
     5d2:	17d2      	asrs	r2, r2, #31
     5d4:	4014      	ands	r4, r2
     5d6:	e7f2      	b.n	5be <reg_update+0x16>

000005d8 <abc_to_dq>:
     5d8:	23c0      	movs	r3, #192	; 0xc0
     5da:	b5f0      	push	{r4, r5, r6, r7, lr}
     5dc:	4647      	mov	r7, r8
     5de:	009b      	lsls	r3, r3, #2
     5e0:	18d3      	adds	r3, r2, r3
     5e2:	4d1b      	ldr	r5, [pc, #108]	; (650 <abc_to_dq+0x78>)
     5e4:	059b      	lsls	r3, r3, #22
     5e6:	0d1b      	lsrs	r3, r3, #20
     5e8:	595b      	ldr	r3, [r3, r5]
     5ea:	b480      	push	{r7}
     5ec:	4698      	mov	r8, r3
     5ee:	4b19      	ldr	r3, [pc, #100]	; (654 <abc_to_dq+0x7c>)
     5f0:	18d4      	adds	r4, r2, r3
     5f2:	05a4      	lsls	r4, r4, #22
     5f4:	4b18      	ldr	r3, [pc, #96]	; (658 <abc_to_dq+0x80>)
     5f6:	0d24      	lsrs	r4, r4, #20
     5f8:	5967      	ldr	r7, [r4, r5]
     5fa:	18d4      	adds	r4, r2, r3
     5fc:	05a4      	lsls	r4, r4, #22
     5fe:	4b17      	ldr	r3, [pc, #92]	; (65c <abc_to_dq+0x84>)
     600:	0d24      	lsrs	r4, r4, #20
     602:	5966      	ldr	r6, [r4, r5]
     604:	18d4      	adds	r4, r2, r3
     606:	05a4      	lsls	r4, r4, #22
     608:	0d24      	lsrs	r4, r4, #20
     60a:	5964      	ldr	r4, [r4, r5]
     60c:	6843      	ldr	r3, [r0, #4]
     60e:	4363      	muls	r3, r4
     610:	0094      	lsls	r4, r2, #2
     612:	469c      	mov	ip, r3
     614:	3256      	adds	r2, #86	; 0x56
     616:	32ff      	adds	r2, #255	; 0xff
     618:	6803      	ldr	r3, [r0, #0]
     61a:	5964      	ldr	r4, [r4, r5]
     61c:	0592      	lsls	r2, r2, #22
     61e:	0d12      	lsrs	r2, r2, #20
     620:	5955      	ldr	r5, [r2, r5]
     622:	435c      	muls	r4, r3
     624:	6883      	ldr	r3, [r0, #8]
     626:	4464      	add	r4, ip
     628:	435d      	muls	r5, r3
     62a:	4643      	mov	r3, r8
     62c:	1964      	adds	r4, r4, r5
     62e:	12a4      	asrs	r4, r4, #10
     630:	600c      	str	r4, [r1, #0]
     632:	6802      	ldr	r2, [r0, #0]
     634:	435a      	muls	r2, r3
     636:	6843      	ldr	r3, [r0, #4]
     638:	437b      	muls	r3, r7
     63a:	18d3      	adds	r3, r2, r3
     63c:	6882      	ldr	r2, [r0, #8]
     63e:	4372      	muls	r2, r6
     640:	189b      	adds	r3, r3, r2
     642:	425b      	negs	r3, r3
     644:	129b      	asrs	r3, r3, #10
     646:	604b      	str	r3, [r1, #4]
     648:	bc04      	pop	{r2}
     64a:	4690      	mov	r8, r2
     64c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     64e:	46c0      	nop			; (mov r8, r8)
     650:	00001284 	.word	0x00001284
     654:	000005aa 	.word	0x000005aa
     658:	00000455 	.word	0x00000455
     65c:	000002aa 	.word	0x000002aa

00000660 <dq_to_abc>:
     660:	b570      	push	{r4, r5, r6, lr}
     662:	4d1a      	ldr	r5, [pc, #104]	; (6cc <dq_to_abc+0x6c>)
     664:	0093      	lsls	r3, r2, #2
     666:	680c      	ldr	r4, [r1, #0]
     668:	595b      	ldr	r3, [r3, r5]
     66a:	684e      	ldr	r6, [r1, #4]
     66c:	435c      	muls	r4, r3
     66e:	23c0      	movs	r3, #192	; 0xc0
     670:	009b      	lsls	r3, r3, #2
     672:	18d3      	adds	r3, r2, r3
     674:	059b      	lsls	r3, r3, #22
     676:	0d1b      	lsrs	r3, r3, #20
     678:	595b      	ldr	r3, [r3, r5]
     67a:	4373      	muls	r3, r6
     67c:	1ae3      	subs	r3, r4, r3
     67e:	151b      	asrs	r3, r3, #20
     680:	6003      	str	r3, [r0, #0]
     682:	4b13      	ldr	r3, [pc, #76]	; (6d0 <dq_to_abc+0x70>)
     684:	680c      	ldr	r4, [r1, #0]
     686:	18d3      	adds	r3, r2, r3
     688:	059b      	lsls	r3, r3, #22
     68a:	0d1b      	lsrs	r3, r3, #20
     68c:	595b      	ldr	r3, [r3, r5]
     68e:	684e      	ldr	r6, [r1, #4]
     690:	435c      	muls	r4, r3
     692:	4b10      	ldr	r3, [pc, #64]	; (6d4 <dq_to_abc+0x74>)
     694:	18d3      	adds	r3, r2, r3
     696:	059b      	lsls	r3, r3, #22
     698:	0d1b      	lsrs	r3, r3, #20
     69a:	595b      	ldr	r3, [r3, r5]
     69c:	4373      	muls	r3, r6
     69e:	1ae3      	subs	r3, r4, r3
     6a0:	151b      	asrs	r3, r3, #20
     6a2:	6043      	str	r3, [r0, #4]
     6a4:	0013      	movs	r3, r2
     6a6:	3356      	adds	r3, #86	; 0x56
     6a8:	33ff      	adds	r3, #255	; 0xff
     6aa:	059b      	lsls	r3, r3, #22
     6ac:	0d1b      	lsrs	r3, r3, #20
     6ae:	595b      	ldr	r3, [r3, r5]
     6b0:	680c      	ldr	r4, [r1, #0]
     6b2:	435c      	muls	r4, r3
     6b4:	4b08      	ldr	r3, [pc, #32]	; (6d8 <dq_to_abc+0x78>)
     6b6:	469c      	mov	ip, r3
     6b8:	4462      	add	r2, ip
     6ba:	0592      	lsls	r2, r2, #22
     6bc:	0d12      	lsrs	r2, r2, #20
     6be:	5952      	ldr	r2, [r2, r5]
     6c0:	684b      	ldr	r3, [r1, #4]
     6c2:	4353      	muls	r3, r2
     6c4:	1ae3      	subs	r3, r4, r3
     6c6:	151b      	asrs	r3, r3, #20
     6c8:	6083      	str	r3, [r0, #8]
     6ca:	bd70      	pop	{r4, r5, r6, pc}
     6cc:	00001284 	.word	0x00001284
     6d0:	000002aa 	.word	0x000002aa
     6d4:	000005aa 	.word	0x000005aa
     6d8:	00000455 	.word	0x00000455

000006dc <cord_atan>:
     6dc:	b5f0      	push	{r4, r5, r6, r7, lr}
     6de:	464f      	mov	r7, r9
     6e0:	4646      	mov	r6, r8
     6e2:	b4c0      	push	{r6, r7}
     6e4:	4b63      	ldr	r3, [pc, #396]	; (874 <cord_atan+0x198>)
     6e6:	b091      	sub	sp, #68	; 0x44
     6e8:	001c      	movs	r4, r3
     6ea:	4694      	mov	ip, r2
     6ec:	466a      	mov	r2, sp
     6ee:	4699      	mov	r9, r3
     6f0:	cca8      	ldmia	r4!, {r3, r5, r7}
     6f2:	c2a8      	stmia	r2!, {r3, r5, r7}
     6f4:	cca8      	ldmia	r4!, {r3, r5, r7}
     6f6:	c2a8      	stmia	r2!, {r3, r5, r7}
     6f8:	cc28      	ldmia	r4!, {r3, r5}
     6fa:	c228      	stmia	r2!, {r3, r5}
     6fc:	464b      	mov	r3, r9
     6fe:	aa08      	add	r2, sp, #32
     700:	3320      	adds	r3, #32
     702:	4690      	mov	r8, r2
     704:	cbb0      	ldmia	r3!, {r4, r5, r7}
     706:	c2b0      	stmia	r2!, {r4, r5, r7}
     708:	cbb0      	ldmia	r3!, {r4, r5, r7}
     70a:	c2b0      	stmia	r2!, {r4, r5, r7}
     70c:	cb30      	ldmia	r3!, {r4, r5}
     70e:	c230      	stmia	r2!, {r4, r5}
     710:	6802      	ldr	r2, [r0, #0]
     712:	6845      	ldr	r5, [r0, #4]
     714:	17d4      	asrs	r4, r2, #31
     716:	1913      	adds	r3, r2, r4
     718:	466e      	mov	r6, sp
     71a:	4063      	eors	r3, r4
     71c:	2d00      	cmp	r5, #0
     71e:	dd69      	ble.n	7f4 <cord_atan+0x118>
     720:	195f      	adds	r7, r3, r5
     722:	1aeb      	subs	r3, r5, r3
     724:	9d00      	ldr	r5, [sp, #0]
     726:	2b00      	cmp	r3, #0
     728:	d100      	bne.n	72c <cord_atan+0x50>
     72a:	e091      	b.n	850 <cord_atan+0x174>
     72c:	105c      	asrs	r4, r3, #1
     72e:	2b00      	cmp	r3, #0
     730:	dd65      	ble.n	7fe <cord_atan+0x122>
     732:	1078      	asrs	r0, r7, #1
     734:	1a1b      	subs	r3, r3, r0
     736:	6870      	ldr	r0, [r6, #4]
     738:	19e4      	adds	r4, r4, r7
     73a:	4681      	mov	r9, r0
     73c:	444d      	add	r5, r9
     73e:	2b00      	cmp	r3, #0
     740:	d100      	bne.n	744 <cord_atan+0x68>
     742:	e087      	b.n	854 <cord_atan+0x178>
     744:	1098      	asrs	r0, r3, #2
     746:	2b00      	cmp	r3, #0
     748:	dd5f      	ble.n	80a <cord_atan+0x12e>
     74a:	1907      	adds	r7, r0, r4
     74c:	10a4      	asrs	r4, r4, #2
     74e:	1b18      	subs	r0, r3, r4
     750:	68b3      	ldr	r3, [r6, #8]
     752:	4699      	mov	r9, r3
     754:	444d      	add	r5, r9
     756:	2800      	cmp	r0, #0
     758:	d100      	bne.n	75c <cord_atan+0x80>
     75a:	e07e      	b.n	85a <cord_atan+0x17e>
     75c:	10c3      	asrs	r3, r0, #3
     75e:	2800      	cmp	r0, #0
     760:	dd59      	ble.n	816 <cord_atan+0x13a>
     762:	10fc      	asrs	r4, r7, #3
     764:	1b00      	subs	r0, r0, r4
     766:	68f4      	ldr	r4, [r6, #12]
     768:	19db      	adds	r3, r3, r7
     76a:	46a1      	mov	r9, r4
     76c:	444d      	add	r5, r9
     76e:	2800      	cmp	r0, #0
     770:	d100      	bne.n	774 <cord_atan+0x98>
     772:	e074      	b.n	85e <cord_atan+0x182>
     774:	1104      	asrs	r4, r0, #4
     776:	2800      	cmp	r0, #0
     778:	dd53      	ble.n	822 <cord_atan+0x146>
     77a:	18e7      	adds	r7, r4, r3
     77c:	111b      	asrs	r3, r3, #4
     77e:	1ac4      	subs	r4, r0, r3
     780:	6933      	ldr	r3, [r6, #16]
     782:	4699      	mov	r9, r3
     784:	444d      	add	r5, r9
     786:	2c00      	cmp	r4, #0
     788:	d06c      	beq.n	864 <cord_atan+0x188>
     78a:	1163      	asrs	r3, r4, #5
     78c:	2c00      	cmp	r4, #0
     78e:	dd4e      	ble.n	82e <cord_atan+0x152>
     790:	1178      	asrs	r0, r7, #5
     792:	1a20      	subs	r0, r4, r0
     794:	6974      	ldr	r4, [r6, #20]
     796:	19db      	adds	r3, r3, r7
     798:	46a1      	mov	r9, r4
     79a:	444d      	add	r5, r9
     79c:	2800      	cmp	r0, #0
     79e:	d063      	beq.n	868 <cord_atan+0x18c>
     7a0:	1184      	asrs	r4, r0, #6
     7a2:	2800      	cmp	r0, #0
     7a4:	dd49      	ble.n	83a <cord_atan+0x15e>
     7a6:	18e7      	adds	r7, r4, r3
     7a8:	119b      	asrs	r3, r3, #6
     7aa:	1ac0      	subs	r0, r0, r3
     7ac:	69b3      	ldr	r3, [r6, #24]
     7ae:	4699      	mov	r9, r3
     7b0:	444d      	add	r5, r9
     7b2:	2800      	cmp	r0, #0
     7b4:	d05b      	beq.n	86e <cord_atan+0x192>
     7b6:	dd46      	ble.n	846 <cord_atan+0x16a>
     7b8:	69f3      	ldr	r3, [r6, #28]
     7ba:	11c0      	asrs	r0, r0, #7
     7bc:	19c7      	adds	r7, r0, r7
     7be:	18ed      	adds	r5, r5, r3
     7c0:	2307      	movs	r3, #7
     7c2:	2a00      	cmp	r2, #0
     7c4:	db12      	blt.n	7ec <cord_atan+0x110>
     7c6:	2d00      	cmp	r5, #0
     7c8:	da03      	bge.n	7d2 <cord_atan+0xf6>
     7ca:	2280      	movs	r2, #128	; 0x80
     7cc:	00d2      	lsls	r2, r2, #3
     7ce:	4691      	mov	r9, r2
     7d0:	444d      	add	r5, r9
     7d2:	4642      	mov	r2, r8
     7d4:	009b      	lsls	r3, r3, #2
     7d6:	58d0      	ldr	r0, [r2, r3]
     7d8:	4663      	mov	r3, ip
     7da:	4378      	muls	r0, r7
     7dc:	1280      	asrs	r0, r0, #10
     7de:	600d      	str	r5, [r1, #0]
     7e0:	6018      	str	r0, [r3, #0]
     7e2:	b011      	add	sp, #68	; 0x44
     7e4:	bc0c      	pop	{r2, r3}
     7e6:	4690      	mov	r8, r2
     7e8:	4699      	mov	r9, r3
     7ea:	bdf0      	pop	{r4, r5, r6, r7, pc}
     7ec:	2280      	movs	r2, #128	; 0x80
     7ee:	0092      	lsls	r2, r2, #2
     7f0:	1b55      	subs	r5, r2, r5
     7f2:	e7e8      	b.n	7c6 <cord_atan+0xea>
     7f4:	9800      	ldr	r0, [sp, #0]
     7f6:	1b5f      	subs	r7, r3, r5
     7f8:	195b      	adds	r3, r3, r5
     7fa:	4245      	negs	r5, r0
     7fc:	e793      	b.n	726 <cord_atan+0x4a>
     7fe:	1078      	asrs	r0, r7, #1
     800:	18c3      	adds	r3, r0, r3
     802:	6870      	ldr	r0, [r6, #4]
     804:	1b3c      	subs	r4, r7, r4
     806:	1a2d      	subs	r5, r5, r0
     808:	e799      	b.n	73e <cord_atan+0x62>
     80a:	1a27      	subs	r7, r4, r0
     80c:	10a0      	asrs	r0, r4, #2
     80e:	18c0      	adds	r0, r0, r3
     810:	68b3      	ldr	r3, [r6, #8]
     812:	1aed      	subs	r5, r5, r3
     814:	e79f      	b.n	756 <cord_atan+0x7a>
     816:	10fc      	asrs	r4, r7, #3
     818:	1820      	adds	r0, r4, r0
     81a:	68f4      	ldr	r4, [r6, #12]
     81c:	1afb      	subs	r3, r7, r3
     81e:	1b2d      	subs	r5, r5, r4
     820:	e7a5      	b.n	76e <cord_atan+0x92>
     822:	1b1f      	subs	r7, r3, r4
     824:	111c      	asrs	r4, r3, #4
     826:	6933      	ldr	r3, [r6, #16]
     828:	1824      	adds	r4, r4, r0
     82a:	1aed      	subs	r5, r5, r3
     82c:	e7ab      	b.n	786 <cord_atan+0xaa>
     82e:	1178      	asrs	r0, r7, #5
     830:	1900      	adds	r0, r0, r4
     832:	6974      	ldr	r4, [r6, #20]
     834:	1afb      	subs	r3, r7, r3
     836:	1b2d      	subs	r5, r5, r4
     838:	e7b0      	b.n	79c <cord_atan+0xc0>
     83a:	1b1f      	subs	r7, r3, r4
     83c:	119b      	asrs	r3, r3, #6
     83e:	1818      	adds	r0, r3, r0
     840:	69b3      	ldr	r3, [r6, #24]
     842:	1aed      	subs	r5, r5, r3
     844:	e7b5      	b.n	7b2 <cord_atan+0xd6>
     846:	69f3      	ldr	r3, [r6, #28]
     848:	11c4      	asrs	r4, r0, #7
     84a:	1b3f      	subs	r7, r7, r4
     84c:	1aed      	subs	r5, r5, r3
     84e:	e7b7      	b.n	7c0 <cord_atan+0xe4>
     850:	2300      	movs	r3, #0
     852:	e7b6      	b.n	7c2 <cord_atan+0xe6>
     854:	0027      	movs	r7, r4
     856:	2301      	movs	r3, #1
     858:	e7b3      	b.n	7c2 <cord_atan+0xe6>
     85a:	2302      	movs	r3, #2
     85c:	e7b1      	b.n	7c2 <cord_atan+0xe6>
     85e:	001f      	movs	r7, r3
     860:	2303      	movs	r3, #3
     862:	e7ae      	b.n	7c2 <cord_atan+0xe6>
     864:	2304      	movs	r3, #4
     866:	e7ac      	b.n	7c2 <cord_atan+0xe6>
     868:	001f      	movs	r7, r3
     86a:	2305      	movs	r3, #5
     86c:	e7a9      	b.n	7c2 <cord_atan+0xe6>
     86e:	2306      	movs	r3, #6
     870:	e7a7      	b.n	7c2 <cord_atan+0xe6>
     872:	46c0      	nop			; (mov r8, r8)
     874:	0000229c 	.word	0x0000229c

00000878 <sinpwm>:
     878:	b5f0      	push	{r4, r5, r6, r7, lr}
     87a:	4646      	mov	r6, r8
     87c:	464f      	mov	r7, r9
     87e:	b4c0      	push	{r6, r7}
     880:	b089      	sub	sp, #36	; 0x24
     882:	466c      	mov	r4, sp
     884:	4b65      	ldr	r3, [pc, #404]	; (a1c <sinpwm+0x1a4>)
     886:	46e9      	mov	r9, sp
     888:	3320      	adds	r3, #32
     88a:	cbe0      	ldmia	r3!, {r5, r6, r7}
     88c:	c4e0      	stmia	r4!, {r5, r6, r7}
     88e:	cbe0      	ldmia	r3!, {r5, r6, r7}
     890:	c4e0      	stmia	r4!, {r5, r6, r7}
     892:	cb60      	ldmia	r3!, {r5, r6}
     894:	c460      	stmia	r4!, {r5, r6}
     896:	680b      	ldr	r3, [r1, #0]
     898:	17dc      	asrs	r4, r3, #31
     89a:	191e      	adds	r6, r3, r4
     89c:	4698      	mov	r8, r3
     89e:	684b      	ldr	r3, [r1, #4]
     8a0:	4066      	eors	r6, r4
     8a2:	469c      	mov	ip, r3
     8a4:	2b00      	cmp	r3, #0
     8a6:	dc00      	bgt.n	8aa <sinpwm+0x32>
     8a8:	e086      	b.n	9b8 <sinpwm+0x140>
     8aa:	18f7      	adds	r7, r6, r3
     8ac:	1b9b      	subs	r3, r3, r6
     8ae:	2b00      	cmp	r3, #0
     8b0:	d100      	bne.n	8b4 <sinpwm+0x3c>
     8b2:	e0a0      	b.n	9f6 <sinpwm+0x17e>
     8b4:	105e      	asrs	r6, r3, #1
     8b6:	2b00      	cmp	r3, #0
     8b8:	dc00      	bgt.n	8bc <sinpwm+0x44>
     8ba:	e081      	b.n	9c0 <sinpwm+0x148>
     8bc:	107c      	asrs	r4, r7, #1
     8be:	19f6      	adds	r6, r6, r7
     8c0:	1b1b      	subs	r3, r3, r4
     8c2:	2b00      	cmp	r3, #0
     8c4:	d100      	bne.n	8c8 <sinpwm+0x50>
     8c6:	e098      	b.n	9fa <sinpwm+0x182>
     8c8:	109c      	asrs	r4, r3, #2
     8ca:	2b00      	cmp	r3, #0
     8cc:	dc00      	bgt.n	8d0 <sinpwm+0x58>
     8ce:	e07b      	b.n	9c8 <sinpwm+0x150>
     8d0:	19a7      	adds	r7, r4, r6
     8d2:	10b6      	asrs	r6, r6, #2
     8d4:	1b9c      	subs	r4, r3, r6
     8d6:	2c00      	cmp	r4, #0
     8d8:	d100      	bne.n	8dc <sinpwm+0x64>
     8da:	e091      	b.n	a00 <sinpwm+0x188>
     8dc:	10e6      	asrs	r6, r4, #3
     8de:	2c00      	cmp	r4, #0
     8e0:	dc00      	bgt.n	8e4 <sinpwm+0x6c>
     8e2:	e075      	b.n	9d0 <sinpwm+0x158>
     8e4:	10fd      	asrs	r5, r7, #3
     8e6:	19f6      	adds	r6, r6, r7
     8e8:	1b64      	subs	r4, r4, r5
     8ea:	2c00      	cmp	r4, #0
     8ec:	d100      	bne.n	8f0 <sinpwm+0x78>
     8ee:	e089      	b.n	a04 <sinpwm+0x18c>
     8f0:	1125      	asrs	r5, r4, #4
     8f2:	2c00      	cmp	r4, #0
     8f4:	dc00      	bgt.n	8f8 <sinpwm+0x80>
     8f6:	e06f      	b.n	9d8 <sinpwm+0x160>
     8f8:	19af      	adds	r7, r5, r6
     8fa:	1136      	asrs	r6, r6, #4
     8fc:	1ba5      	subs	r5, r4, r6
     8fe:	2d00      	cmp	r5, #0
     900:	d100      	bne.n	904 <sinpwm+0x8c>
     902:	e082      	b.n	a0a <sinpwm+0x192>
     904:	116e      	asrs	r6, r5, #5
     906:	2d00      	cmp	r5, #0
     908:	dd6a      	ble.n	9e0 <sinpwm+0x168>
     90a:	117c      	asrs	r4, r7, #5
     90c:	19f6      	adds	r6, r6, r7
     90e:	1b2c      	subs	r4, r5, r4
     910:	2c00      	cmp	r4, #0
     912:	d100      	bne.n	916 <sinpwm+0x9e>
     914:	e07b      	b.n	a0e <sinpwm+0x196>
     916:	11a3      	asrs	r3, r4, #6
     918:	2c00      	cmp	r4, #0
     91a:	dd65      	ble.n	9e8 <sinpwm+0x170>
     91c:	199b      	adds	r3, r3, r6
     91e:	11b6      	asrs	r6, r6, #6
     920:	1ba4      	subs	r4, r4, r6
     922:	2c00      	cmp	r4, #0
     924:	d100      	bne.n	928 <sinpwm+0xb0>
     926:	e075      	b.n	a14 <sinpwm+0x19c>
     928:	dd62      	ble.n	9f0 <sinpwm+0x178>
     92a:	11e4      	asrs	r4, r4, #7
     92c:	18e7      	adds	r7, r4, r3
     92e:	2307      	movs	r3, #7
     930:	464c      	mov	r4, r9
     932:	4646      	mov	r6, r8
     934:	009b      	lsls	r3, r3, #2
     936:	58e4      	ldr	r4, [r4, r3]
     938:	4b39      	ldr	r3, [pc, #228]	; (a20 <sinpwm+0x1a8>)
     93a:	0095      	lsls	r5, r2, #2
     93c:	58ed      	ldr	r5, [r5, r3]
     93e:	437c      	muls	r4, r7
     940:	436e      	muls	r6, r5
     942:	25c0      	movs	r5, #192	; 0xc0
     944:	4667      	mov	r7, ip
     946:	00ad      	lsls	r5, r5, #2
     948:	1955      	adds	r5, r2, r5
     94a:	05ad      	lsls	r5, r5, #22
     94c:	0d2d      	lsrs	r5, r5, #20
     94e:	58ed      	ldr	r5, [r5, r3]
     950:	1524      	asrs	r4, r4, #20
     952:	437d      	muls	r5, r7
     954:	1b75      	subs	r5, r6, r5
     956:	152d      	asrs	r5, r5, #20
     958:	6005      	str	r5, [r0, #0]
     95a:	4d32      	ldr	r5, [pc, #200]	; (a24 <sinpwm+0x1ac>)
     95c:	684f      	ldr	r7, [r1, #4]
     95e:	1955      	adds	r5, r2, r5
     960:	05ad      	lsls	r5, r5, #22
     962:	0d2d      	lsrs	r5, r5, #20
     964:	58ee      	ldr	r6, [r5, r3]
     966:	680d      	ldr	r5, [r1, #0]
     968:	4375      	muls	r5, r6
     96a:	4e2f      	ldr	r6, [pc, #188]	; (a28 <sinpwm+0x1b0>)
     96c:	1996      	adds	r6, r2, r6
     96e:	05b6      	lsls	r6, r6, #22
     970:	0d36      	lsrs	r6, r6, #20
     972:	58f6      	ldr	r6, [r6, r3]
     974:	437e      	muls	r6, r7
     976:	1bae      	subs	r6, r5, r6
     978:	0015      	movs	r5, r2
     97a:	3556      	adds	r5, #86	; 0x56
     97c:	35ff      	adds	r5, #255	; 0xff
     97e:	1536      	asrs	r6, r6, #20
     980:	05ad      	lsls	r5, r5, #22
     982:	6046      	str	r6, [r0, #4]
     984:	0d2d      	lsrs	r5, r5, #20
     986:	58ee      	ldr	r6, [r5, r3]
     988:	680d      	ldr	r5, [r1, #0]
     98a:	436e      	muls	r6, r5
     98c:	4d27      	ldr	r5, [pc, #156]	; (a2c <sinpwm+0x1b4>)
     98e:	46ac      	mov	ip, r5
     990:	4462      	add	r2, ip
     992:	0592      	lsls	r2, r2, #22
     994:	0d12      	lsrs	r2, r2, #20
     996:	58d2      	ldr	r2, [r2, r3]
     998:	684b      	ldr	r3, [r1, #4]
     99a:	435a      	muls	r2, r3
     99c:	23fa      	movs	r3, #250	; 0xfa
     99e:	1ab2      	subs	r2, r6, r2
     9a0:	1512      	asrs	r2, r2, #20
     9a2:	6082      	str	r2, [r0, #8]
     9a4:	005b      	lsls	r3, r3, #1
     9a6:	2001      	movs	r0, #1
     9a8:	429c      	cmp	r4, r3
     9aa:	dc00      	bgt.n	9ae <sinpwm+0x136>
     9ac:	2000      	movs	r0, #0
     9ae:	b009      	add	sp, #36	; 0x24
     9b0:	bc0c      	pop	{r2, r3}
     9b2:	4690      	mov	r8, r2
     9b4:	4699      	mov	r9, r3
     9b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9b8:	1af7      	subs	r7, r6, r3
     9ba:	0033      	movs	r3, r6
     9bc:	4463      	add	r3, ip
     9be:	e776      	b.n	8ae <sinpwm+0x36>
     9c0:	107c      	asrs	r4, r7, #1
     9c2:	1bbe      	subs	r6, r7, r6
     9c4:	18e3      	adds	r3, r4, r3
     9c6:	e77c      	b.n	8c2 <sinpwm+0x4a>
     9c8:	1b37      	subs	r7, r6, r4
     9ca:	10b4      	asrs	r4, r6, #2
     9cc:	18e4      	adds	r4, r4, r3
     9ce:	e782      	b.n	8d6 <sinpwm+0x5e>
     9d0:	10fd      	asrs	r5, r7, #3
     9d2:	1bbe      	subs	r6, r7, r6
     9d4:	192c      	adds	r4, r5, r4
     9d6:	e788      	b.n	8ea <sinpwm+0x72>
     9d8:	1b77      	subs	r7, r6, r5
     9da:	1135      	asrs	r5, r6, #4
     9dc:	192d      	adds	r5, r5, r4
     9de:	e78e      	b.n	8fe <sinpwm+0x86>
     9e0:	117c      	asrs	r4, r7, #5
     9e2:	1bbe      	subs	r6, r7, r6
     9e4:	1964      	adds	r4, r4, r5
     9e6:	e793      	b.n	910 <sinpwm+0x98>
     9e8:	1af3      	subs	r3, r6, r3
     9ea:	11b6      	asrs	r6, r6, #6
     9ec:	1934      	adds	r4, r6, r4
     9ee:	e798      	b.n	922 <sinpwm+0xaa>
     9f0:	11e5      	asrs	r5, r4, #7
     9f2:	1b5f      	subs	r7, r3, r5
     9f4:	e79b      	b.n	92e <sinpwm+0xb6>
     9f6:	2300      	movs	r3, #0
     9f8:	e79a      	b.n	930 <sinpwm+0xb8>
     9fa:	0037      	movs	r7, r6
     9fc:	2301      	movs	r3, #1
     9fe:	e797      	b.n	930 <sinpwm+0xb8>
     a00:	2302      	movs	r3, #2
     a02:	e795      	b.n	930 <sinpwm+0xb8>
     a04:	0037      	movs	r7, r6
     a06:	2303      	movs	r3, #3
     a08:	e792      	b.n	930 <sinpwm+0xb8>
     a0a:	2304      	movs	r3, #4
     a0c:	e790      	b.n	930 <sinpwm+0xb8>
     a0e:	0037      	movs	r7, r6
     a10:	2305      	movs	r3, #5
     a12:	e78d      	b.n	930 <sinpwm+0xb8>
     a14:	001f      	movs	r7, r3
     a16:	2306      	movs	r3, #6
     a18:	e78a      	b.n	930 <sinpwm+0xb8>
     a1a:	46c0      	nop			; (mov r8, r8)
     a1c:	0000229c 	.word	0x0000229c
     a20:	00001284 	.word	0x00001284
     a24:	000002aa 	.word	0x000002aa
     a28:	000005aa 	.word	0x000005aa
     a2c:	00000455 	.word	0x00000455

00000a30 <svpwm>:
     a30:	b5f0      	push	{r4, r5, r6, r7, lr}
     a32:	464f      	mov	r7, r9
     a34:	4646      	mov	r6, r8
     a36:	b4c0      	push	{r6, r7}
     a38:	4bb2      	ldr	r3, [pc, #712]	; (d04 <svpwm+0x2d4>)
     a3a:	b091      	sub	sp, #68	; 0x44
     a3c:	001c      	movs	r4, r3
     a3e:	4694      	mov	ip, r2
     a40:	466a      	mov	r2, sp
     a42:	4699      	mov	r9, r3
     a44:	cca8      	ldmia	r4!, {r3, r5, r7}
     a46:	c2a8      	stmia	r2!, {r3, r5, r7}
     a48:	cca8      	ldmia	r4!, {r3, r5, r7}
     a4a:	c2a8      	stmia	r2!, {r3, r5, r7}
     a4c:	cc28      	ldmia	r4!, {r3, r5}
     a4e:	c228      	stmia	r2!, {r3, r5}
     a50:	464b      	mov	r3, r9
     a52:	aa08      	add	r2, sp, #32
     a54:	3320      	adds	r3, #32
     a56:	4690      	mov	r8, r2
     a58:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a5a:	c2b0      	stmia	r2!, {r4, r5, r7}
     a5c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a5e:	c2b0      	stmia	r2!, {r4, r5, r7}
     a60:	cb30      	ldmia	r3!, {r4, r5}
     a62:	c230      	stmia	r2!, {r4, r5}
     a64:	680a      	ldr	r2, [r1, #0]
     a66:	684d      	ldr	r5, [r1, #4]
     a68:	17d4      	asrs	r4, r2, #31
     a6a:	1913      	adds	r3, r2, r4
     a6c:	466e      	mov	r6, sp
     a6e:	4063      	eors	r3, r4
     a70:	2d00      	cmp	r5, #0
     a72:	dd78      	ble.n	b66 <svpwm+0x136>
     a74:	195f      	adds	r7, r3, r5
     a76:	1aeb      	subs	r3, r5, r3
     a78:	9d00      	ldr	r5, [sp, #0]
     a7a:	2b00      	cmp	r3, #0
     a7c:	d100      	bne.n	a80 <svpwm+0x50>
     a7e:	e130      	b.n	ce2 <svpwm+0x2b2>
     a80:	105c      	asrs	r4, r3, #1
     a82:	2b00      	cmp	r3, #0
     a84:	dd74      	ble.n	b70 <svpwm+0x140>
     a86:	1079      	asrs	r1, r7, #1
     a88:	1a5b      	subs	r3, r3, r1
     a8a:	6871      	ldr	r1, [r6, #4]
     a8c:	19e4      	adds	r4, r4, r7
     a8e:	4689      	mov	r9, r1
     a90:	444d      	add	r5, r9
     a92:	2b00      	cmp	r3, #0
     a94:	d100      	bne.n	a98 <svpwm+0x68>
     a96:	e126      	b.n	ce6 <svpwm+0x2b6>
     a98:	1099      	asrs	r1, r3, #2
     a9a:	2b00      	cmp	r3, #0
     a9c:	dd6e      	ble.n	b7c <svpwm+0x14c>
     a9e:	190f      	adds	r7, r1, r4
     aa0:	10a4      	asrs	r4, r4, #2
     aa2:	1b19      	subs	r1, r3, r4
     aa4:	68b3      	ldr	r3, [r6, #8]
     aa6:	4699      	mov	r9, r3
     aa8:	444d      	add	r5, r9
     aaa:	2900      	cmp	r1, #0
     aac:	d100      	bne.n	ab0 <svpwm+0x80>
     aae:	e11d      	b.n	cec <svpwm+0x2bc>
     ab0:	10cb      	asrs	r3, r1, #3
     ab2:	2900      	cmp	r1, #0
     ab4:	dd68      	ble.n	b88 <svpwm+0x158>
     ab6:	10fc      	asrs	r4, r7, #3
     ab8:	1b09      	subs	r1, r1, r4
     aba:	68f4      	ldr	r4, [r6, #12]
     abc:	19db      	adds	r3, r3, r7
     abe:	46a1      	mov	r9, r4
     ac0:	444d      	add	r5, r9
     ac2:	2900      	cmp	r1, #0
     ac4:	d100      	bne.n	ac8 <svpwm+0x98>
     ac6:	e113      	b.n	cf0 <svpwm+0x2c0>
     ac8:	110c      	asrs	r4, r1, #4
     aca:	2900      	cmp	r1, #0
     acc:	dd62      	ble.n	b94 <svpwm+0x164>
     ace:	18e7      	adds	r7, r4, r3
     ad0:	111b      	asrs	r3, r3, #4
     ad2:	1acc      	subs	r4, r1, r3
     ad4:	6933      	ldr	r3, [r6, #16]
     ad6:	4699      	mov	r9, r3
     ad8:	444d      	add	r5, r9
     ada:	2c00      	cmp	r4, #0
     adc:	d100      	bne.n	ae0 <svpwm+0xb0>
     ade:	e10a      	b.n	cf6 <svpwm+0x2c6>
     ae0:	1163      	asrs	r3, r4, #5
     ae2:	2c00      	cmp	r4, #0
     ae4:	dd5c      	ble.n	ba0 <svpwm+0x170>
     ae6:	1179      	asrs	r1, r7, #5
     ae8:	1a61      	subs	r1, r4, r1
     aea:	6974      	ldr	r4, [r6, #20]
     aec:	19db      	adds	r3, r3, r7
     aee:	46a1      	mov	r9, r4
     af0:	444d      	add	r5, r9
     af2:	2900      	cmp	r1, #0
     af4:	d100      	bne.n	af8 <svpwm+0xc8>
     af6:	e100      	b.n	cfa <svpwm+0x2ca>
     af8:	118c      	asrs	r4, r1, #6
     afa:	2900      	cmp	r1, #0
     afc:	dd56      	ble.n	bac <svpwm+0x17c>
     afe:	18e7      	adds	r7, r4, r3
     b00:	119b      	asrs	r3, r3, #6
     b02:	1ac9      	subs	r1, r1, r3
     b04:	69b3      	ldr	r3, [r6, #24]
     b06:	4699      	mov	r9, r3
     b08:	444d      	add	r5, r9
     b0a:	2900      	cmp	r1, #0
     b0c:	d100      	bne.n	b10 <svpwm+0xe0>
     b0e:	e0f7      	b.n	d00 <svpwm+0x2d0>
     b10:	dc00      	bgt.n	b14 <svpwm+0xe4>
     b12:	e0e1      	b.n	cd8 <svpwm+0x2a8>
     b14:	69f3      	ldr	r3, [r6, #28]
     b16:	11c9      	asrs	r1, r1, #7
     b18:	19cf      	adds	r7, r1, r7
     b1a:	18ed      	adds	r5, r5, r3
     b1c:	2307      	movs	r3, #7
     b1e:	2a00      	cmp	r2, #0
     b20:	db1d      	blt.n	b5e <svpwm+0x12e>
     b22:	2d00      	cmp	r5, #0
     b24:	da03      	bge.n	b2e <svpwm+0xfe>
     b26:	2280      	movs	r2, #128	; 0x80
     b28:	00d2      	lsls	r2, r2, #3
     b2a:	4691      	mov	r9, r2
     b2c:	444d      	add	r5, r9
     b2e:	4642      	mov	r2, r8
     b30:	009b      	lsls	r3, r3, #2
     b32:	58d1      	ldr	r1, [r2, r3]
     b34:	23fa      	movs	r3, #250	; 0xfa
     b36:	4379      	muls	r1, r7
     b38:	4465      	add	r5, ip
     b3a:	05ad      	lsls	r5, r5, #22
     b3c:	1509      	asrs	r1, r1, #20
     b3e:	0dad      	lsrs	r5, r5, #22
     b40:	005b      	lsls	r3, r3, #1
     b42:	2600      	movs	r6, #0
     b44:	4299      	cmp	r1, r3
     b46:	dd01      	ble.n	b4c <svpwm+0x11c>
     b48:	0019      	movs	r1, r3
     b4a:	3601      	adds	r6, #1
     b4c:	006a      	lsls	r2, r5, #1
     b4e:	1952      	adds	r2, r2, r5
     b50:	1252      	asrs	r2, r2, #9
     b52:	2a05      	cmp	r2, #5
     b54:	d84b      	bhi.n	bee <svpwm+0x1be>
     b56:	4b6c      	ldr	r3, [pc, #432]	; (d08 <svpwm+0x2d8>)
     b58:	0092      	lsls	r2, r2, #2
     b5a:	589b      	ldr	r3, [r3, r2]
     b5c:	469f      	mov	pc, r3
     b5e:	2280      	movs	r2, #128	; 0x80
     b60:	0092      	lsls	r2, r2, #2
     b62:	1b55      	subs	r5, r2, r5
     b64:	e7dd      	b.n	b22 <svpwm+0xf2>
     b66:	9900      	ldr	r1, [sp, #0]
     b68:	1b5f      	subs	r7, r3, r5
     b6a:	195b      	adds	r3, r3, r5
     b6c:	424d      	negs	r5, r1
     b6e:	e784      	b.n	a7a <svpwm+0x4a>
     b70:	1079      	asrs	r1, r7, #1
     b72:	18cb      	adds	r3, r1, r3
     b74:	6871      	ldr	r1, [r6, #4]
     b76:	1b3c      	subs	r4, r7, r4
     b78:	1a6d      	subs	r5, r5, r1
     b7a:	e78a      	b.n	a92 <svpwm+0x62>
     b7c:	1a67      	subs	r7, r4, r1
     b7e:	10a1      	asrs	r1, r4, #2
     b80:	18c9      	adds	r1, r1, r3
     b82:	68b3      	ldr	r3, [r6, #8]
     b84:	1aed      	subs	r5, r5, r3
     b86:	e790      	b.n	aaa <svpwm+0x7a>
     b88:	10fc      	asrs	r4, r7, #3
     b8a:	1861      	adds	r1, r4, r1
     b8c:	68f4      	ldr	r4, [r6, #12]
     b8e:	1afb      	subs	r3, r7, r3
     b90:	1b2d      	subs	r5, r5, r4
     b92:	e796      	b.n	ac2 <svpwm+0x92>
     b94:	1b1f      	subs	r7, r3, r4
     b96:	111c      	asrs	r4, r3, #4
     b98:	6933      	ldr	r3, [r6, #16]
     b9a:	1864      	adds	r4, r4, r1
     b9c:	1aed      	subs	r5, r5, r3
     b9e:	e79c      	b.n	ada <svpwm+0xaa>
     ba0:	1179      	asrs	r1, r7, #5
     ba2:	1909      	adds	r1, r1, r4
     ba4:	6974      	ldr	r4, [r6, #20]
     ba6:	1afb      	subs	r3, r7, r3
     ba8:	1b2d      	subs	r5, r5, r4
     baa:	e7a2      	b.n	af2 <svpwm+0xc2>
     bac:	1b1f      	subs	r7, r3, r4
     bae:	119b      	asrs	r3, r3, #6
     bb0:	1859      	adds	r1, r3, r1
     bb2:	69b3      	ldr	r3, [r6, #24]
     bb4:	1aed      	subs	r5, r5, r3
     bb6:	e7a8      	b.n	b0a <svpwm+0xda>
     bb8:	4b54      	ldr	r3, [pc, #336]	; (d0c <svpwm+0x2dc>)
     bba:	4a55      	ldr	r2, [pc, #340]	; (d10 <svpwm+0x2e0>)
     bbc:	1b5b      	subs	r3, r3, r5
     bbe:	3556      	adds	r5, #86	; 0x56
     bc0:	059b      	lsls	r3, r3, #22
     bc2:	05ad      	lsls	r5, r5, #22
     bc4:	0d1b      	lsrs	r3, r3, #20
     bc6:	0d2d      	lsrs	r5, r5, #20
     bc8:	589b      	ldr	r3, [r3, r2]
     bca:	58ac      	ldr	r4, [r5, r2]
     bcc:	434b      	muls	r3, r1
     bce:	434c      	muls	r4, r1
     bd0:	129b      	asrs	r3, r3, #10
     bd2:	12a1      	asrs	r1, r4, #10
     bd4:	1aca      	subs	r2, r1, r3
     bd6:	6002      	str	r2, [r0, #0]
     bd8:	425a      	negs	r2, r3
     bda:	1a52      	subs	r2, r2, r1
     bdc:	1859      	adds	r1, r3, r1
     bde:	6042      	str	r2, [r0, #4]
     be0:	6081      	str	r1, [r0, #8]
     be2:	0030      	movs	r0, r6
     be4:	b011      	add	sp, #68	; 0x44
     be6:	bc0c      	pop	{r2, r3}
     be8:	4690      	mov	r8, r2
     bea:	4699      	mov	r9, r3
     bec:	bdf0      	pop	{r4, r5, r6, r7, pc}
     bee:	4b49      	ldr	r3, [pc, #292]	; (d14 <svpwm+0x2e4>)
     bf0:	4c47      	ldr	r4, [pc, #284]	; (d10 <svpwm+0x2e0>)
     bf2:	1b5b      	subs	r3, r3, r5
     bf4:	059b      	lsls	r3, r3, #22
     bf6:	0d1b      	lsrs	r3, r3, #20
     bf8:	591a      	ldr	r2, [r3, r4]
     bfa:	23c0      	movs	r3, #192	; 0xc0
     bfc:	009b      	lsls	r3, r3, #2
     bfe:	469c      	mov	ip, r3
     c00:	4465      	add	r5, ip
     c02:	05ad      	lsls	r5, r5, #22
     c04:	0d2d      	lsrs	r5, r5, #20
     c06:	592c      	ldr	r4, [r5, r4]
     c08:	434a      	muls	r2, r1
     c0a:	4361      	muls	r1, r4
     c0c:	1292      	asrs	r2, r2, #10
     c0e:	1289      	asrs	r1, r1, #10
     c10:	1853      	adds	r3, r2, r1
     c12:	6003      	str	r3, [r0, #0]
     c14:	1a8b      	subs	r3, r1, r2
     c16:	4252      	negs	r2, r2
     c18:	1a52      	subs	r2, r2, r1
     c1a:	6043      	str	r3, [r0, #4]
     c1c:	6082      	str	r2, [r0, #8]
     c1e:	e7e0      	b.n	be2 <svpwm+0x1b2>
     c20:	4b3d      	ldr	r3, [pc, #244]	; (d18 <svpwm+0x2e8>)
     c22:	4a3b      	ldr	r2, [pc, #236]	; (d10 <svpwm+0x2e0>)
     c24:	1b5b      	subs	r3, r3, r5
     c26:	059b      	lsls	r3, r3, #22
     c28:	0d1b      	lsrs	r3, r3, #20
     c2a:	589f      	ldr	r7, [r3, r2]
     c2c:	4b3b      	ldr	r3, [pc, #236]	; (d1c <svpwm+0x2ec>)
     c2e:	434f      	muls	r7, r1
     c30:	469c      	mov	ip, r3
     c32:	4465      	add	r5, ip
     c34:	05ad      	lsls	r5, r5, #22
     c36:	0d2d      	lsrs	r5, r5, #20
     c38:	58ac      	ldr	r4, [r5, r2]
     c3a:	12bf      	asrs	r7, r7, #10
     c3c:	4361      	muls	r1, r4
     c3e:	1289      	asrs	r1, r1, #10
     c40:	1a7b      	subs	r3, r7, r1
     c42:	6003      	str	r3, [r0, #0]
     c44:	187b      	adds	r3, r7, r1
     c46:	427f      	negs	r7, r7
     c48:	1a7f      	subs	r7, r7, r1
     c4a:	6043      	str	r3, [r0, #4]
     c4c:	6087      	str	r7, [r0, #8]
     c4e:	e7c8      	b.n	be2 <svpwm+0x1b2>
     c50:	4b33      	ldr	r3, [pc, #204]	; (d20 <svpwm+0x2f0>)
     c52:	4a2f      	ldr	r2, [pc, #188]	; (d10 <svpwm+0x2e0>)
     c54:	1b5b      	subs	r3, r3, r5
     c56:	35ac      	adds	r5, #172	; 0xac
     c58:	059b      	lsls	r3, r3, #22
     c5a:	35ff      	adds	r5, #255	; 0xff
     c5c:	0d1b      	lsrs	r3, r3, #20
     c5e:	05ad      	lsls	r5, r5, #22
     c60:	589b      	ldr	r3, [r3, r2]
     c62:	0d2d      	lsrs	r5, r5, #20
     c64:	58ac      	ldr	r4, [r5, r2]
     c66:	434b      	muls	r3, r1
     c68:	4361      	muls	r1, r4
     c6a:	129b      	asrs	r3, r3, #10
     c6c:	1289      	asrs	r1, r1, #10
     c6e:	425a      	negs	r2, r3
     c70:	1a52      	subs	r2, r2, r1
     c72:	6002      	str	r2, [r0, #0]
     c74:	185a      	adds	r2, r3, r1
     c76:	1ac9      	subs	r1, r1, r3
     c78:	6042      	str	r2, [r0, #4]
     c7a:	6081      	str	r1, [r0, #8]
     c7c:	e7b1      	b.n	be2 <svpwm+0x1b2>
     c7e:	4b29      	ldr	r3, [pc, #164]	; (d24 <svpwm+0x2f4>)
     c80:	4a23      	ldr	r2, [pc, #140]	; (d10 <svpwm+0x2e0>)
     c82:	1b5b      	subs	r3, r3, r5
     c84:	3501      	adds	r5, #1
     c86:	059b      	lsls	r3, r3, #22
     c88:	35ff      	adds	r5, #255	; 0xff
     c8a:	0d1b      	lsrs	r3, r3, #20
     c8c:	05ad      	lsls	r5, r5, #22
     c8e:	589b      	ldr	r3, [r3, r2]
     c90:	0d2d      	lsrs	r5, r5, #20
     c92:	58ac      	ldr	r4, [r5, r2]
     c94:	434b      	muls	r3, r1
     c96:	434c      	muls	r4, r1
     c98:	129b      	asrs	r3, r3, #10
     c9a:	12a1      	asrs	r1, r4, #10
     c9c:	425a      	negs	r2, r3
     c9e:	1a52      	subs	r2, r2, r1
     ca0:	6002      	str	r2, [r0, #0]
     ca2:	1a5a      	subs	r2, r3, r1
     ca4:	1859      	adds	r1, r3, r1
     ca6:	6042      	str	r2, [r0, #4]
     ca8:	6081      	str	r1, [r0, #8]
     caa:	e79a      	b.n	be2 <svpwm+0x1b2>
     cac:	4b1e      	ldr	r3, [pc, #120]	; (d28 <svpwm+0x2f8>)
     cae:	4a18      	ldr	r2, [pc, #96]	; (d10 <svpwm+0x2e0>)
     cb0:	1b5b      	subs	r3, r3, r5
     cb2:	3d55      	subs	r5, #85	; 0x55
     cb4:	059b      	lsls	r3, r3, #22
     cb6:	05ad      	lsls	r5, r5, #22
     cb8:	0d1b      	lsrs	r3, r3, #20
     cba:	0d2d      	lsrs	r5, r5, #20
     cbc:	589b      	ldr	r3, [r3, r2]
     cbe:	58ac      	ldr	r4, [r5, r2]
     cc0:	434b      	muls	r3, r1
     cc2:	4361      	muls	r1, r4
     cc4:	129b      	asrs	r3, r3, #10
     cc6:	1289      	asrs	r1, r1, #10
     cc8:	185a      	adds	r2, r3, r1
     cca:	6002      	str	r2, [r0, #0]
     ccc:	425a      	negs	r2, r3
     cce:	1a52      	subs	r2, r2, r1
     cd0:	1a59      	subs	r1, r3, r1
     cd2:	6042      	str	r2, [r0, #4]
     cd4:	6081      	str	r1, [r0, #8]
     cd6:	e784      	b.n	be2 <svpwm+0x1b2>
     cd8:	69f3      	ldr	r3, [r6, #28]
     cda:	11cc      	asrs	r4, r1, #7
     cdc:	1b3f      	subs	r7, r7, r4
     cde:	1aed      	subs	r5, r5, r3
     ce0:	e71c      	b.n	b1c <svpwm+0xec>
     ce2:	2300      	movs	r3, #0
     ce4:	e71b      	b.n	b1e <svpwm+0xee>
     ce6:	0027      	movs	r7, r4
     ce8:	2301      	movs	r3, #1
     cea:	e718      	b.n	b1e <svpwm+0xee>
     cec:	2302      	movs	r3, #2
     cee:	e716      	b.n	b1e <svpwm+0xee>
     cf0:	001f      	movs	r7, r3
     cf2:	2303      	movs	r3, #3
     cf4:	e713      	b.n	b1e <svpwm+0xee>
     cf6:	2304      	movs	r3, #4
     cf8:	e711      	b.n	b1e <svpwm+0xee>
     cfa:	001f      	movs	r7, r3
     cfc:	2305      	movs	r3, #5
     cfe:	e70e      	b.n	b1e <svpwm+0xee>
     d00:	2306      	movs	r3, #6
     d02:	e70c      	b.n	b1e <svpwm+0xee>
     d04:	0000229c 	.word	0x0000229c
     d08:	00002284 	.word	0x00002284
     d0c:	00000a54 	.word	0x00000a54
     d10:	00001284 	.word	0x00001284
     d14:	000007aa 	.word	0x000007aa
     d18:	00000854 	.word	0x00000854
     d1c:	00000256 	.word	0x00000256
     d20:	000008ff 	.word	0x000008ff
     d24:	000009aa 	.word	0x000009aa
     d28:	00000aff 	.word	0x00000aff

00000d2c <get_speed>:
     d2c:	4a0f      	ldr	r2, [pc, #60]	; (d6c <get_speed+0x40>)
     d2e:	b510      	push	{r4, lr}
     d30:	6813      	ldr	r3, [r2, #0]
     d32:	6854      	ldr	r4, [r2, #4]
     d34:	1ac3      	subs	r3, r0, r3
     d36:	6050      	str	r0, [r2, #4]
     d38:	6014      	str	r4, [r2, #0]
     d3a:	17da      	asrs	r2, r3, #31
     d3c:	1898      	adds	r0, r3, r2
     d3e:	4050      	eors	r0, r2
     d40:	22fa      	movs	r2, #250	; 0xfa
     d42:	0092      	lsls	r2, r2, #2
     d44:	4290      	cmp	r0, r2
     d46:	dd04      	ble.n	d52 <get_speed+0x26>
     d48:	2b00      	cmp	r3, #0
     d4a:	db0a      	blt.n	d62 <get_speed+0x36>
     d4c:	4a08      	ldr	r2, [pc, #32]	; (d70 <get_speed+0x44>)
     d4e:	4694      	mov	ip, r2
     d50:	4463      	add	r3, ip
     d52:	680a      	ldr	r2, [r1, #0]
     d54:	4807      	ldr	r0, [pc, #28]	; (d74 <get_speed+0x48>)
     d56:	18d2      	adds	r2, r2, r3
     d58:	105b      	asrs	r3, r3, #1
     d5a:	4343      	muls	r3, r0
     d5c:	600a      	str	r2, [r1, #0]
     d5e:	1318      	asrs	r0, r3, #12
     d60:	bd10      	pop	{r4, pc}
     d62:	2280      	movs	r2, #128	; 0x80
     d64:	0152      	lsls	r2, r2, #5
     d66:	4694      	mov	ip, r2
     d68:	4463      	add	r3, ip
     d6a:	e7f2      	b.n	d52 <get_speed+0x26>
     d6c:	2000004c 	.word	0x2000004c
     d70:	fffff000 	.word	0xfffff000
     d74:	0002ae7c 	.word	0x0002ae7c

00000d78 <mfilter>:
     d78:	221f      	movs	r2, #31
     d7a:	4908      	ldr	r1, [pc, #32]	; (d9c <mfilter+0x24>)
     d7c:	b510      	push	{r4, lr}
     d7e:	688b      	ldr	r3, [r1, #8]
     d80:	3301      	adds	r3, #1
     d82:	4013      	ands	r3, r2
     d84:	608b      	str	r3, [r1, #8]
     d86:	009b      	lsls	r3, r3, #2
     d88:	18cb      	adds	r3, r1, r3
     d8a:	68ca      	ldr	r2, [r1, #12]
     d8c:	691c      	ldr	r4, [r3, #16]
     d8e:	6118      	str	r0, [r3, #16]
     d90:	1b12      	subs	r2, r2, r4
     d92:	1812      	adds	r2, r2, r0
     d94:	1150      	asrs	r0, r2, #5
     d96:	60ca      	str	r2, [r1, #12]
     d98:	bd10      	pop	{r4, pc}
     d9a:	46c0      	nop			; (mov r8, r8)
     d9c:	2000004c 	.word	0x2000004c

00000da0 <NVIC_EnableIRQ>:
     da0:	b580      	push	{r7, lr}
     da2:	b082      	sub	sp, #8
     da4:	af00      	add	r7, sp, #0
     da6:	0002      	movs	r2, r0
     da8:	1dfb      	adds	r3, r7, #7
     daa:	701a      	strb	r2, [r3, #0]
     dac:	4909      	ldr	r1, [pc, #36]	; (dd4 <NVIC_EnableIRQ+0x34>)
     dae:	1dfb      	adds	r3, r7, #7
     db0:	781b      	ldrb	r3, [r3, #0]
     db2:	b25b      	sxtb	r3, r3
     db4:	095b      	lsrs	r3, r3, #5
     db6:	1dfa      	adds	r2, r7, #7
     db8:	7812      	ldrb	r2, [r2, #0]
     dba:	0010      	movs	r0, r2
     dbc:	221f      	movs	r2, #31
     dbe:	4002      	ands	r2, r0
     dc0:	2001      	movs	r0, #1
     dc2:	4090      	lsls	r0, r2
     dc4:	0002      	movs	r2, r0
     dc6:	009b      	lsls	r3, r3, #2
     dc8:	505a      	str	r2, [r3, r1]
     dca:	46c0      	nop			; (mov r8, r8)
     dcc:	46bd      	mov	sp, r7
     dce:	b002      	add	sp, #8
     dd0:	bd80      	pop	{r7, pc}
     dd2:	46c0      	nop			; (mov r8, r8)
     dd4:	e000e100 	.word	0xe000e100

00000dd8 <PortConfig>:
     dd8:	b580      	push	{r7, lr}
     dda:	af00      	add	r7, sp, #0
     ddc:	4b42      	ldr	r3, [pc, #264]	; (ee8 <PortConfig+0x110>)
     dde:	4a42      	ldr	r2, [pc, #264]	; (ee8 <PortConfig+0x110>)
     de0:	69d2      	ldr	r2, [r2, #28]
     de2:	2180      	movs	r1, #128	; 0x80
     de4:	0389      	lsls	r1, r1, #14
     de6:	430a      	orrs	r2, r1
     de8:	61da      	str	r2, [r3, #28]
     dea:	4b40      	ldr	r3, [pc, #256]	; (eec <PortConfig+0x114>)
     dec:	4a3f      	ldr	r2, [pc, #252]	; (eec <PortConfig+0x114>)
     dee:	6892      	ldr	r2, [r2, #8]
     df0:	493f      	ldr	r1, [pc, #252]	; (ef0 <PortConfig+0x118>)
     df2:	400a      	ands	r2, r1
     df4:	609a      	str	r2, [r3, #8]
     df6:	4b3d      	ldr	r3, [pc, #244]	; (eec <PortConfig+0x114>)
     df8:	4a3c      	ldr	r2, [pc, #240]	; (eec <PortConfig+0x114>)
     dfa:	6892      	ldr	r2, [r2, #8]
     dfc:	493d      	ldr	r1, [pc, #244]	; (ef4 <PortConfig+0x11c>)
     dfe:	430a      	orrs	r2, r1
     e00:	609a      	str	r2, [r3, #8]
     e02:	4b3a      	ldr	r3, [pc, #232]	; (eec <PortConfig+0x114>)
     e04:	4a39      	ldr	r2, [pc, #228]	; (eec <PortConfig+0x114>)
     e06:	6852      	ldr	r2, [r2, #4]
     e08:	21fc      	movs	r1, #252	; 0xfc
     e0a:	0109      	lsls	r1, r1, #4
     e0c:	430a      	orrs	r2, r1
     e0e:	605a      	str	r2, [r3, #4]
     e10:	4b36      	ldr	r3, [pc, #216]	; (eec <PortConfig+0x114>)
     e12:	4a36      	ldr	r2, [pc, #216]	; (eec <PortConfig+0x114>)
     e14:	68d2      	ldr	r2, [r2, #12]
     e16:	21fc      	movs	r1, #252	; 0xfc
     e18:	0109      	lsls	r1, r1, #4
     e1a:	430a      	orrs	r2, r1
     e1c:	60da      	str	r2, [r3, #12]
     e1e:	4b33      	ldr	r3, [pc, #204]	; (eec <PortConfig+0x114>)
     e20:	4a32      	ldr	r2, [pc, #200]	; (eec <PortConfig+0x114>)
     e22:	6992      	ldr	r2, [r2, #24]
     e24:	4934      	ldr	r1, [pc, #208]	; (ef8 <PortConfig+0x120>)
     e26:	430a      	orrs	r2, r1
     e28:	619a      	str	r2, [r3, #24]
     e2a:	4b2f      	ldr	r3, [pc, #188]	; (ee8 <PortConfig+0x110>)
     e2c:	4a2e      	ldr	r2, [pc, #184]	; (ee8 <PortConfig+0x110>)
     e2e:	69d2      	ldr	r2, [r2, #28]
     e30:	2180      	movs	r1, #128	; 0x80
     e32:	0489      	lsls	r1, r1, #18
     e34:	430a      	orrs	r2, r1
     e36:	61da      	str	r2, [r3, #28]
     e38:	4b30      	ldr	r3, [pc, #192]	; (efc <PortConfig+0x124>)
     e3a:	4a30      	ldr	r2, [pc, #192]	; (efc <PortConfig+0x124>)
     e3c:	68d2      	ldr	r2, [r2, #12]
     e3e:	2102      	movs	r1, #2
     e40:	438a      	bics	r2, r1
     e42:	60da      	str	r2, [r3, #12]
     e44:	4b28      	ldr	r3, [pc, #160]	; (ee8 <PortConfig+0x110>)
     e46:	4a28      	ldr	r2, [pc, #160]	; (ee8 <PortConfig+0x110>)
     e48:	69d2      	ldr	r2, [r2, #28]
     e4a:	2180      	movs	r1, #128	; 0x80
     e4c:	0449      	lsls	r1, r1, #17
     e4e:	430a      	orrs	r2, r1
     e50:	61da      	str	r2, [r3, #28]
     e52:	4b2b      	ldr	r3, [pc, #172]	; (f00 <PortConfig+0x128>)
     e54:	4a2a      	ldr	r2, [pc, #168]	; (f00 <PortConfig+0x128>)
     e56:	6892      	ldr	r2, [r2, #8]
     e58:	492a      	ldr	r1, [pc, #168]	; (f04 <PortConfig+0x12c>)
     e5a:	400a      	ands	r2, r1
     e5c:	609a      	str	r2, [r3, #8]
     e5e:	4b28      	ldr	r3, [pc, #160]	; (f00 <PortConfig+0x128>)
     e60:	4a27      	ldr	r2, [pc, #156]	; (f00 <PortConfig+0x128>)
     e62:	6892      	ldr	r2, [r2, #8]
     e64:	21a0      	movs	r1, #160	; 0xa0
     e66:	02c9      	lsls	r1, r1, #11
     e68:	430a      	orrs	r2, r1
     e6a:	609a      	str	r2, [r3, #8]
     e6c:	4b24      	ldr	r3, [pc, #144]	; (f00 <PortConfig+0x128>)
     e6e:	4a24      	ldr	r2, [pc, #144]	; (f00 <PortConfig+0x128>)
     e70:	68d2      	ldr	r2, [r2, #12]
     e72:	21c0      	movs	r1, #192	; 0xc0
     e74:	0089      	lsls	r1, r1, #2
     e76:	430a      	orrs	r2, r1
     e78:	60da      	str	r2, [r3, #12]
     e7a:	4b21      	ldr	r3, [pc, #132]	; (f00 <PortConfig+0x128>)
     e7c:	4a20      	ldr	r2, [pc, #128]	; (f00 <PortConfig+0x128>)
     e7e:	6992      	ldr	r2, [r2, #24]
     e80:	21c0      	movs	r1, #192	; 0xc0
     e82:	0309      	lsls	r1, r1, #12
     e84:	430a      	orrs	r2, r1
     e86:	619a      	str	r2, [r3, #24]
     e88:	4b1d      	ldr	r3, [pc, #116]	; (f00 <PortConfig+0x128>)
     e8a:	4a1d      	ldr	r2, [pc, #116]	; (f00 <PortConfig+0x128>)
     e8c:	6852      	ldr	r2, [r2, #4]
     e8e:	2180      	movs	r1, #128	; 0x80
     e90:	0089      	lsls	r1, r1, #2
     e92:	430a      	orrs	r2, r1
     e94:	605a      	str	r2, [r3, #4]
     e96:	4b1a      	ldr	r3, [pc, #104]	; (f00 <PortConfig+0x128>)
     e98:	4a19      	ldr	r2, [pc, #100]	; (f00 <PortConfig+0x128>)
     e9a:	6852      	ldr	r2, [r2, #4]
     e9c:	491a      	ldr	r1, [pc, #104]	; (f08 <PortConfig+0x130>)
     e9e:	400a      	ands	r2, r1
     ea0:	605a      	str	r2, [r3, #4]
     ea2:	4b11      	ldr	r3, [pc, #68]	; (ee8 <PortConfig+0x110>)
     ea4:	4a10      	ldr	r2, [pc, #64]	; (ee8 <PortConfig+0x110>)
     ea6:	69d2      	ldr	r2, [r2, #28]
     ea8:	2180      	movs	r1, #128	; 0x80
     eaa:	0409      	lsls	r1, r1, #16
     eac:	430a      	orrs	r2, r1
     eae:	61da      	str	r2, [r3, #28]
     eb0:	4b16      	ldr	r3, [pc, #88]	; (f0c <PortConfig+0x134>)
     eb2:	2200      	movs	r2, #0
     eb4:	609a      	str	r2, [r3, #8]
     eb6:	4b15      	ldr	r3, [pc, #84]	; (f0c <PortConfig+0x134>)
     eb8:	2200      	movs	r2, #0
     eba:	601a      	str	r2, [r3, #0]
     ebc:	4b13      	ldr	r3, [pc, #76]	; (f0c <PortConfig+0x134>)
     ebe:	4a13      	ldr	r2, [pc, #76]	; (f0c <PortConfig+0x134>)
     ec0:	6852      	ldr	r2, [r2, #4]
     ec2:	2160      	movs	r1, #96	; 0x60
     ec4:	430a      	orrs	r2, r1
     ec6:	605a      	str	r2, [r3, #4]
     ec8:	4b10      	ldr	r3, [pc, #64]	; (f0c <PortConfig+0x134>)
     eca:	4a10      	ldr	r2, [pc, #64]	; (f0c <PortConfig+0x134>)
     ecc:	68d2      	ldr	r2, [r2, #12]
     ece:	2160      	movs	r1, #96	; 0x60
     ed0:	430a      	orrs	r2, r1
     ed2:	60da      	str	r2, [r3, #12]
     ed4:	4b0d      	ldr	r3, [pc, #52]	; (f0c <PortConfig+0x134>)
     ed6:	4a0d      	ldr	r2, [pc, #52]	; (f0c <PortConfig+0x134>)
     ed8:	6992      	ldr	r2, [r2, #24]
     eda:	21f0      	movs	r1, #240	; 0xf0
     edc:	0189      	lsls	r1, r1, #6
     ede:	430a      	orrs	r2, r1
     ee0:	619a      	str	r2, [r3, #24]
     ee2:	46c0      	nop			; (mov r8, r8)
     ee4:	46bd      	mov	sp, r7
     ee6:	bd80      	pop	{r7, pc}
     ee8:	40020000 	.word	0x40020000
     eec:	400a8000 	.word	0x400a8000
     ef0:	ff000fff 	.word	0xff000fff
     ef4:	00aaa000 	.word	0x00aaa000
     ef8:	00fff000 	.word	0x00fff000
     efc:	400c8000 	.word	0x400c8000
     f00:	400c0000 	.word	0x400c0000
     f04:	fff0ffff 	.word	0xfff0ffff
     f08:	fffffeff 	.word	0xfffffeff
     f0c:	400b8000 	.word	0x400b8000

00000f10 <ClkConfig>:
     f10:	b580      	push	{r7, lr}
     f12:	af00      	add	r7, sp, #0
     f14:	4b18      	ldr	r3, [pc, #96]	; (f78 <ClkConfig+0x68>)
     f16:	4a18      	ldr	r2, [pc, #96]	; (f78 <ClkConfig+0x68>)
     f18:	6892      	ldr	r2, [r2, #8]
     f1a:	2101      	movs	r1, #1
     f1c:	430a      	orrs	r2, r1
     f1e:	609a      	str	r2, [r3, #8]
     f20:	46c0      	nop			; (mov r8, r8)
     f22:	4b15      	ldr	r3, [pc, #84]	; (f78 <ClkConfig+0x68>)
     f24:	681b      	ldr	r3, [r3, #0]
     f26:	2204      	movs	r2, #4
     f28:	4013      	ands	r3, r2
     f2a:	d0fa      	beq.n	f22 <ClkConfig+0x12>
     f2c:	4b12      	ldr	r3, [pc, #72]	; (f78 <ClkConfig+0x68>)
     f2e:	4a12      	ldr	r2, [pc, #72]	; (f78 <ClkConfig+0x68>)
     f30:	68d2      	ldr	r2, [r2, #12]
     f32:	2102      	movs	r1, #2
     f34:	430a      	orrs	r2, r1
     f36:	60da      	str	r2, [r3, #12]
     f38:	4b0f      	ldr	r3, [pc, #60]	; (f78 <ClkConfig+0x68>)
     f3a:	4a10      	ldr	r2, [pc, #64]	; (f7c <ClkConfig+0x6c>)
     f3c:	605a      	str	r2, [r3, #4]
     f3e:	46c0      	nop			; (mov r8, r8)
     f40:	4b0d      	ldr	r3, [pc, #52]	; (f78 <ClkConfig+0x68>)
     f42:	681b      	ldr	r3, [r3, #0]
     f44:	2202      	movs	r2, #2
     f46:	4013      	ands	r3, r2
     f48:	d0fa      	beq.n	f40 <ClkConfig+0x30>
     f4a:	4b0d      	ldr	r3, [pc, #52]	; (f80 <ClkConfig+0x70>)
     f4c:	4a0c      	ldr	r2, [pc, #48]	; (f80 <ClkConfig+0x70>)
     f4e:	6812      	ldr	r2, [r2, #0]
     f50:	2120      	movs	r1, #32
     f52:	430a      	orrs	r2, r1
     f54:	601a      	str	r2, [r3, #0]
     f56:	4b08      	ldr	r3, [pc, #32]	; (f78 <ClkConfig+0x68>)
     f58:	4a07      	ldr	r2, [pc, #28]	; (f78 <ClkConfig+0x68>)
     f5a:	68d2      	ldr	r2, [r2, #12]
     f5c:	2180      	movs	r1, #128	; 0x80
     f5e:	0049      	lsls	r1, r1, #1
     f60:	430a      	orrs	r2, r1
     f62:	60da      	str	r2, [r3, #12]
     f64:	4b04      	ldr	r3, [pc, #16]	; (f78 <ClkConfig+0x68>)
     f66:	4a04      	ldr	r2, [pc, #16]	; (f78 <ClkConfig+0x68>)
     f68:	68d2      	ldr	r2, [r2, #12]
     f6a:	2104      	movs	r1, #4
     f6c:	430a      	orrs	r2, r1
     f6e:	60da      	str	r2, [r3, #12]
     f70:	46c0      	nop			; (mov r8, r8)
     f72:	46bd      	mov	sp, r7
     f74:	bd80      	pop	{r7, pc}
     f76:	46c0      	nop			; (mov r8, r8)
     f78:	40020000 	.word	0x40020000
     f7c:	00000e04 	.word	0x00000e04
     f80:	40018000 	.word	0x40018000

00000f84 <TimerConfig>:
     f84:	b580      	push	{r7, lr}
     f86:	af00      	add	r7, sp, #0
     f88:	4b72      	ldr	r3, [pc, #456]	; (1154 <TimerConfig+0x1d0>)
     f8a:	4a72      	ldr	r2, [pc, #456]	; (1154 <TimerConfig+0x1d0>)
     f8c:	69d2      	ldr	r2, [r2, #28]
     f8e:	2180      	movs	r1, #128	; 0x80
     f90:	0309      	lsls	r1, r1, #12
     f92:	430a      	orrs	r2, r1
     f94:	61da      	str	r2, [r3, #28]
     f96:	4b6f      	ldr	r3, [pc, #444]	; (1154 <TimerConfig+0x1d0>)
     f98:	4a6e      	ldr	r2, [pc, #440]	; (1154 <TimerConfig+0x1d0>)
     f9a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     f9c:	2180      	movs	r1, #128	; 0x80
     f9e:	04c9      	lsls	r1, r1, #19
     fa0:	430a      	orrs	r2, r1
     fa2:	629a      	str	r2, [r3, #40]	; 0x28
     fa4:	4b6b      	ldr	r3, [pc, #428]	; (1154 <TimerConfig+0x1d0>)
     fa6:	4a6b      	ldr	r2, [pc, #428]	; (1154 <TimerConfig+0x1d0>)
     fa8:	6a92      	ldr	r2, [r2, #40]	; 0x28
     faa:	496b      	ldr	r1, [pc, #428]	; (1158 <TimerConfig+0x1d4>)
     fac:	400a      	ands	r2, r1
     fae:	629a      	str	r2, [r3, #40]	; 0x28
     fb0:	4b6a      	ldr	r3, [pc, #424]	; (115c <TimerConfig+0x1d8>)
     fb2:	2200      	movs	r2, #0
     fb4:	601a      	str	r2, [r3, #0]
     fb6:	4b69      	ldr	r3, [pc, #420]	; (115c <TimerConfig+0x1d8>)
     fb8:	2204      	movs	r2, #4
     fba:	605a      	str	r2, [r3, #4]
     fbc:	4b67      	ldr	r3, [pc, #412]	; (115c <TimerConfig+0x1d8>)
     fbe:	4a68      	ldr	r2, [pc, #416]	; (1160 <TimerConfig+0x1dc>)
     fc0:	609a      	str	r2, [r3, #8]
     fc2:	4b66      	ldr	r3, [pc, #408]	; (115c <TimerConfig+0x1d8>)
     fc4:	2280      	movs	r2, #128	; 0x80
     fc6:	0092      	lsls	r2, r2, #2
     fc8:	611a      	str	r2, [r3, #16]
     fca:	4b64      	ldr	r3, [pc, #400]	; (115c <TimerConfig+0x1d8>)
     fcc:	2280      	movs	r2, #128	; 0x80
     fce:	0092      	lsls	r2, r2, #2
     fd0:	615a      	str	r2, [r3, #20]
     fd2:	4b62      	ldr	r3, [pc, #392]	; (115c <TimerConfig+0x1d8>)
     fd4:	2280      	movs	r2, #128	; 0x80
     fd6:	0092      	lsls	r2, r2, #2
     fd8:	619a      	str	r2, [r3, #24]
     fda:	4b60      	ldr	r3, [pc, #384]	; (115c <TimerConfig+0x1d8>)
     fdc:	4a5f      	ldr	r2, [pc, #380]	; (115c <TimerConfig+0x1d8>)
     fde:	6a12      	ldr	r2, [r2, #32]
     fe0:	4960      	ldr	r1, [pc, #384]	; (1164 <TimerConfig+0x1e0>)
     fe2:	400a      	ands	r2, r1
     fe4:	621a      	str	r2, [r3, #32]
     fe6:	4b5d      	ldr	r3, [pc, #372]	; (115c <TimerConfig+0x1d8>)
     fe8:	4a5c      	ldr	r2, [pc, #368]	; (115c <TimerConfig+0x1d8>)
     fea:	6a12      	ldr	r2, [r2, #32]
     fec:	21e0      	movs	r1, #224	; 0xe0
     fee:	0109      	lsls	r1, r1, #4
     ff0:	430a      	orrs	r2, r1
     ff2:	621a      	str	r2, [r3, #32]
     ff4:	4b59      	ldr	r3, [pc, #356]	; (115c <TimerConfig+0x1d8>)
     ff6:	4a59      	ldr	r2, [pc, #356]	; (115c <TimerConfig+0x1d8>)
     ff8:	6b12      	ldr	r2, [r2, #48]	; 0x30
     ffa:	210f      	movs	r1, #15
     ffc:	438a      	bics	r2, r1
     ffe:	631a      	str	r2, [r3, #48]	; 0x30
    1000:	4b56      	ldr	r3, [pc, #344]	; (115c <TimerConfig+0x1d8>)
    1002:	4a56      	ldr	r2, [pc, #344]	; (115c <TimerConfig+0x1d8>)
    1004:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1006:	210c      	movs	r1, #12
    1008:	430a      	orrs	r2, r1
    100a:	631a      	str	r2, [r3, #48]	; 0x30
    100c:	4b53      	ldr	r3, [pc, #332]	; (115c <TimerConfig+0x1d8>)
    100e:	4a53      	ldr	r2, [pc, #332]	; (115c <TimerConfig+0x1d8>)
    1010:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1012:	2101      	movs	r1, #1
    1014:	430a      	orrs	r2, r1
    1016:	631a      	str	r2, [r3, #48]	; 0x30
    1018:	4b50      	ldr	r3, [pc, #320]	; (115c <TimerConfig+0x1d8>)
    101a:	4a50      	ldr	r2, [pc, #320]	; (115c <TimerConfig+0x1d8>)
    101c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    101e:	4952      	ldr	r1, [pc, #328]	; (1168 <TimerConfig+0x1e4>)
    1020:	400a      	ands	r2, r1
    1022:	631a      	str	r2, [r3, #48]	; 0x30
    1024:	4b4d      	ldr	r3, [pc, #308]	; (115c <TimerConfig+0x1d8>)
    1026:	4a4d      	ldr	r2, [pc, #308]	; (115c <TimerConfig+0x1d8>)
    1028:	6b12      	ldr	r2, [r2, #48]	; 0x30
    102a:	21c0      	movs	r1, #192	; 0xc0
    102c:	0109      	lsls	r1, r1, #4
    102e:	430a      	orrs	r2, r1
    1030:	631a      	str	r2, [r3, #48]	; 0x30
    1032:	4b4a      	ldr	r3, [pc, #296]	; (115c <TimerConfig+0x1d8>)
    1034:	4a49      	ldr	r2, [pc, #292]	; (115c <TimerConfig+0x1d8>)
    1036:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1038:	2180      	movs	r1, #128	; 0x80
    103a:	0049      	lsls	r1, r1, #1
    103c:	430a      	orrs	r2, r1
    103e:	631a      	str	r2, [r3, #48]	; 0x30
    1040:	4b46      	ldr	r3, [pc, #280]	; (115c <TimerConfig+0x1d8>)
    1042:	4a46      	ldr	r2, [pc, #280]	; (115c <TimerConfig+0x1d8>)
    1044:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1046:	4947      	ldr	r1, [pc, #284]	; (1164 <TimerConfig+0x1e0>)
    1048:	400a      	ands	r2, r1
    104a:	625a      	str	r2, [r3, #36]	; 0x24
    104c:	4b43      	ldr	r3, [pc, #268]	; (115c <TimerConfig+0x1d8>)
    104e:	4a43      	ldr	r2, [pc, #268]	; (115c <TimerConfig+0x1d8>)
    1050:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1052:	21e0      	movs	r1, #224	; 0xe0
    1054:	0109      	lsls	r1, r1, #4
    1056:	430a      	orrs	r2, r1
    1058:	625a      	str	r2, [r3, #36]	; 0x24
    105a:	4b40      	ldr	r3, [pc, #256]	; (115c <TimerConfig+0x1d8>)
    105c:	4a3f      	ldr	r2, [pc, #252]	; (115c <TimerConfig+0x1d8>)
    105e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1060:	210f      	movs	r1, #15
    1062:	438a      	bics	r2, r1
    1064:	635a      	str	r2, [r3, #52]	; 0x34
    1066:	4b3d      	ldr	r3, [pc, #244]	; (115c <TimerConfig+0x1d8>)
    1068:	4a3c      	ldr	r2, [pc, #240]	; (115c <TimerConfig+0x1d8>)
    106a:	6b52      	ldr	r2, [r2, #52]	; 0x34
    106c:	210c      	movs	r1, #12
    106e:	430a      	orrs	r2, r1
    1070:	635a      	str	r2, [r3, #52]	; 0x34
    1072:	4b3a      	ldr	r3, [pc, #232]	; (115c <TimerConfig+0x1d8>)
    1074:	4a39      	ldr	r2, [pc, #228]	; (115c <TimerConfig+0x1d8>)
    1076:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1078:	2101      	movs	r1, #1
    107a:	430a      	orrs	r2, r1
    107c:	635a      	str	r2, [r3, #52]	; 0x34
    107e:	4b37      	ldr	r3, [pc, #220]	; (115c <TimerConfig+0x1d8>)
    1080:	4a36      	ldr	r2, [pc, #216]	; (115c <TimerConfig+0x1d8>)
    1082:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1084:	4938      	ldr	r1, [pc, #224]	; (1168 <TimerConfig+0x1e4>)
    1086:	400a      	ands	r2, r1
    1088:	635a      	str	r2, [r3, #52]	; 0x34
    108a:	4b34      	ldr	r3, [pc, #208]	; (115c <TimerConfig+0x1d8>)
    108c:	4a33      	ldr	r2, [pc, #204]	; (115c <TimerConfig+0x1d8>)
    108e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1090:	21c0      	movs	r1, #192	; 0xc0
    1092:	0109      	lsls	r1, r1, #4
    1094:	430a      	orrs	r2, r1
    1096:	635a      	str	r2, [r3, #52]	; 0x34
    1098:	4b30      	ldr	r3, [pc, #192]	; (115c <TimerConfig+0x1d8>)
    109a:	4a30      	ldr	r2, [pc, #192]	; (115c <TimerConfig+0x1d8>)
    109c:	6b52      	ldr	r2, [r2, #52]	; 0x34
    109e:	2180      	movs	r1, #128	; 0x80
    10a0:	0049      	lsls	r1, r1, #1
    10a2:	430a      	orrs	r2, r1
    10a4:	635a      	str	r2, [r3, #52]	; 0x34
    10a6:	4b2d      	ldr	r3, [pc, #180]	; (115c <TimerConfig+0x1d8>)
    10a8:	4a2c      	ldr	r2, [pc, #176]	; (115c <TimerConfig+0x1d8>)
    10aa:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10ac:	492d      	ldr	r1, [pc, #180]	; (1164 <TimerConfig+0x1e0>)
    10ae:	400a      	ands	r2, r1
    10b0:	629a      	str	r2, [r3, #40]	; 0x28
    10b2:	4b2a      	ldr	r3, [pc, #168]	; (115c <TimerConfig+0x1d8>)
    10b4:	4a29      	ldr	r2, [pc, #164]	; (115c <TimerConfig+0x1d8>)
    10b6:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10b8:	21e0      	movs	r1, #224	; 0xe0
    10ba:	0109      	lsls	r1, r1, #4
    10bc:	430a      	orrs	r2, r1
    10be:	629a      	str	r2, [r3, #40]	; 0x28
    10c0:	4b26      	ldr	r3, [pc, #152]	; (115c <TimerConfig+0x1d8>)
    10c2:	4a26      	ldr	r2, [pc, #152]	; (115c <TimerConfig+0x1d8>)
    10c4:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10c6:	210f      	movs	r1, #15
    10c8:	438a      	bics	r2, r1
    10ca:	639a      	str	r2, [r3, #56]	; 0x38
    10cc:	4b23      	ldr	r3, [pc, #140]	; (115c <TimerConfig+0x1d8>)
    10ce:	4a23      	ldr	r2, [pc, #140]	; (115c <TimerConfig+0x1d8>)
    10d0:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10d2:	210c      	movs	r1, #12
    10d4:	430a      	orrs	r2, r1
    10d6:	639a      	str	r2, [r3, #56]	; 0x38
    10d8:	4b20      	ldr	r3, [pc, #128]	; (115c <TimerConfig+0x1d8>)
    10da:	4a20      	ldr	r2, [pc, #128]	; (115c <TimerConfig+0x1d8>)
    10dc:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10de:	2101      	movs	r1, #1
    10e0:	430a      	orrs	r2, r1
    10e2:	639a      	str	r2, [r3, #56]	; 0x38
    10e4:	4b1d      	ldr	r3, [pc, #116]	; (115c <TimerConfig+0x1d8>)
    10e6:	4a1d      	ldr	r2, [pc, #116]	; (115c <TimerConfig+0x1d8>)
    10e8:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10ea:	491f      	ldr	r1, [pc, #124]	; (1168 <TimerConfig+0x1e4>)
    10ec:	400a      	ands	r2, r1
    10ee:	639a      	str	r2, [r3, #56]	; 0x38
    10f0:	4b1a      	ldr	r3, [pc, #104]	; (115c <TimerConfig+0x1d8>)
    10f2:	4a1a      	ldr	r2, [pc, #104]	; (115c <TimerConfig+0x1d8>)
    10f4:	6b92      	ldr	r2, [r2, #56]	; 0x38
    10f6:	21c0      	movs	r1, #192	; 0xc0
    10f8:	0109      	lsls	r1, r1, #4
    10fa:	430a      	orrs	r2, r1
    10fc:	639a      	str	r2, [r3, #56]	; 0x38
    10fe:	4b17      	ldr	r3, [pc, #92]	; (115c <TimerConfig+0x1d8>)
    1100:	4a16      	ldr	r2, [pc, #88]	; (115c <TimerConfig+0x1d8>)
    1102:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1104:	2180      	movs	r1, #128	; 0x80
    1106:	0049      	lsls	r1, r1, #1
    1108:	430a      	orrs	r2, r1
    110a:	639a      	str	r2, [r3, #56]	; 0x38
    110c:	4b13      	ldr	r3, [pc, #76]	; (115c <TimerConfig+0x1d8>)
    110e:	4a13      	ldr	r2, [pc, #76]	; (115c <TimerConfig+0x1d8>)
    1110:	6c12      	ldr	r2, [r2, #64]	; 0x40
    1112:	21c8      	movs	r1, #200	; 0xc8
    1114:	01c9      	lsls	r1, r1, #7
    1116:	430a      	orrs	r2, r1
    1118:	641a      	str	r2, [r3, #64]	; 0x40
    111a:	4b10      	ldr	r3, [pc, #64]	; (115c <TimerConfig+0x1d8>)
    111c:	4a0f      	ldr	r2, [pc, #60]	; (115c <TimerConfig+0x1d8>)
    111e:	6c52      	ldr	r2, [r2, #68]	; 0x44
    1120:	21c8      	movs	r1, #200	; 0xc8
    1122:	01c9      	lsls	r1, r1, #7
    1124:	430a      	orrs	r2, r1
    1126:	645a      	str	r2, [r3, #68]	; 0x44
    1128:	4b0c      	ldr	r3, [pc, #48]	; (115c <TimerConfig+0x1d8>)
    112a:	4a0c      	ldr	r2, [pc, #48]	; (115c <TimerConfig+0x1d8>)
    112c:	6c92      	ldr	r2, [r2, #72]	; 0x48
    112e:	21c8      	movs	r1, #200	; 0xc8
    1130:	01c9      	lsls	r1, r1, #7
    1132:	430a      	orrs	r2, r1
    1134:	649a      	str	r2, [r3, #72]	; 0x48
    1136:	4b09      	ldr	r3, [pc, #36]	; (115c <TimerConfig+0x1d8>)
    1138:	4a08      	ldr	r2, [pc, #32]	; (115c <TimerConfig+0x1d8>)
    113a:	6d92      	ldr	r2, [r2, #88]	; 0x58
    113c:	2102      	movs	r1, #2
    113e:	430a      	orrs	r2, r1
    1140:	659a      	str	r2, [r3, #88]	; 0x58
    1142:	4b06      	ldr	r3, [pc, #24]	; (115c <TimerConfig+0x1d8>)
    1144:	2201      	movs	r2, #1
    1146:	60da      	str	r2, [r3, #12]
    1148:	200d      	movs	r0, #13
    114a:	f7ff fe29 	bl	da0 <NVIC_EnableIRQ>
    114e:	46c0      	nop			; (mov r8, r8)
    1150:	46bd      	mov	sp, r7
    1152:	bd80      	pop	{r7, pc}
    1154:	40020000 	.word	0x40020000
    1158:	ff00ffff 	.word	0xff00ffff
    115c:	40098000 	.word	0x40098000
    1160:	000003ff 	.word	0x000003ff
    1164:	fffff1ff 	.word	0xfffff1ff
    1168:	fffff0ff 	.word	0xfffff0ff

0000116c <SystemInit>:
    116c:	b580      	push	{r7, lr}
    116e:	af00      	add	r7, sp, #0
    1170:	f7ff fece 	bl	f10 <ClkConfig>
    1174:	f7ff fe30 	bl	dd8 <PortConfig>
    1178:	f7ff ff04 	bl	f84 <TimerConfig>
    117c:	46c0      	nop			; (mov r8, r8)
    117e:	46bd      	mov	sp, r7
    1180:	bd80      	pop	{r7, pc}
    1182:	46c0      	nop			; (mov r8, r8)

00001184 <b2g>:
    1184:	0843      	lsrs	r3, r0, #1
    1186:	4058      	eors	r0, r3
    1188:	4770      	bx	lr
    118a:	46c0      	nop			; (mov r8, r8)

0000118c <g2b>:
    118c:	0003      	movs	r3, r0
    118e:	2000      	movs	r0, #0
    1190:	2b00      	cmp	r3, #0
    1192:	d002      	beq.n	119a <g2b+0xe>
    1194:	4058      	eors	r0, r3
    1196:	085b      	lsrs	r3, r3, #1
    1198:	d1fc      	bne.n	1194 <g2b+0x8>
    119a:	4770      	bx	lr

0000119c <adc_init>:
    119c:	b580      	push	{r7, lr}
    119e:	af00      	add	r7, sp, #0
    11a0:	4b0f      	ldr	r3, [pc, #60]	; (11e0 <adc_init+0x44>)
    11a2:	4a0f      	ldr	r2, [pc, #60]	; (11e0 <adc_init+0x44>)
    11a4:	69d2      	ldr	r2, [r2, #28]
    11a6:	2180      	movs	r1, #128	; 0x80
    11a8:	0289      	lsls	r1, r1, #10
    11aa:	430a      	orrs	r2, r1
    11ac:	61da      	str	r2, [r3, #28]
    11ae:	4b0c      	ldr	r3, [pc, #48]	; (11e0 <adc_init+0x44>)
    11b0:	4a0c      	ldr	r2, [pc, #48]	; (11e4 <adc_init+0x48>)
    11b2:	615a      	str	r2, [r3, #20]
    11b4:	4b0c      	ldr	r3, [pc, #48]	; (11e8 <adc_init+0x4c>)
    11b6:	2200      	movs	r2, #0
    11b8:	601a      	str	r2, [r3, #0]
    11ba:	4b0b      	ldr	r3, [pc, #44]	; (11e8 <adc_init+0x4c>)
    11bc:	4a0a      	ldr	r2, [pc, #40]	; (11e8 <adc_init+0x4c>)
    11be:	6812      	ldr	r2, [r2, #0]
    11c0:	490a      	ldr	r1, [pc, #40]	; (11ec <adc_init+0x50>)
    11c2:	430a      	orrs	r2, r1
    11c4:	601a      	str	r2, [r3, #0]
    11c6:	4b08      	ldr	r3, [pc, #32]	; (11e8 <adc_init+0x4c>)
    11c8:	4a07      	ldr	r2, [pc, #28]	; (11e8 <adc_init+0x4c>)
    11ca:	6a92      	ldr	r2, [r2, #40]	; 0x28
    11cc:	2139      	movs	r1, #57	; 0x39
    11ce:	430a      	orrs	r2, r1
    11d0:	629a      	str	r2, [r3, #40]	; 0x28
    11d2:	4b05      	ldr	r3, [pc, #20]	; (11e8 <adc_init+0x4c>)
    11d4:	2210      	movs	r2, #16
    11d6:	621a      	str	r2, [r3, #32]
    11d8:	46c0      	nop			; (mov r8, r8)
    11da:	46bd      	mov	sp, r7
    11dc:	bd80      	pop	{r7, pc}
    11de:	46c0      	nop			; (mov r8, r8)
    11e0:	40020000 	.word	0x40020000
    11e4:	00002020 	.word	0x00002020
    11e8:	40088000 	.word	0x40088000
    11ec:	00000205 	.word	0x00000205

000011f0 <dma_init>:
    11f0:	b580      	push	{r7, lr}
    11f2:	af00      	add	r7, sp, #0
    11f4:	4b18      	ldr	r3, [pc, #96]	; (1258 <dma_init+0x68>)
    11f6:	4a18      	ldr	r2, [pc, #96]	; (1258 <dma_init+0x68>)
    11f8:	69d2      	ldr	r2, [r2, #28]
    11fa:	2120      	movs	r1, #32
    11fc:	430a      	orrs	r2, r1
    11fe:	61da      	str	r2, [r3, #28]
    1200:	4b16      	ldr	r3, [pc, #88]	; (125c <dma_init+0x6c>)
    1202:	4a17      	ldr	r2, [pc, #92]	; (1260 <dma_init+0x70>)
    1204:	609a      	str	r2, [r3, #8]
    1206:	4b15      	ldr	r3, [pc, #84]	; (125c <dma_init+0x6c>)
    1208:	2201      	movs	r2, #1
    120a:	4252      	negs	r2, r2
    120c:	62da      	str	r2, [r3, #44]	; 0x2c
    120e:	4b13      	ldr	r3, [pc, #76]	; (125c <dma_init+0x6c>)
    1210:	2201      	movs	r2, #1
    1212:	4252      	negs	r2, r2
    1214:	621a      	str	r2, [r3, #32]
    1216:	4b11      	ldr	r3, [pc, #68]	; (125c <dma_init+0x6c>)
    1218:	2201      	movs	r2, #1
    121a:	4252      	negs	r2, r2
    121c:	635a      	str	r2, [r3, #52]	; 0x34
    121e:	4b0f      	ldr	r3, [pc, #60]	; (125c <dma_init+0x6c>)
    1220:	2280      	movs	r2, #128	; 0x80
    1222:	05d2      	lsls	r2, r2, #23
    1224:	61da      	str	r2, [r3, #28]
    1226:	4b0d      	ldr	r3, [pc, #52]	; (125c <dma_init+0x6c>)
    1228:	2280      	movs	r2, #128	; 0x80
    122a:	05d2      	lsls	r2, r2, #23
    122c:	625a      	str	r2, [r3, #36]	; 0x24
    122e:	4b0b      	ldr	r3, [pc, #44]	; (125c <dma_init+0x6c>)
    1230:	2201      	movs	r2, #1
    1232:	605a      	str	r2, [r3, #4]
    1234:	4a0a      	ldr	r2, [pc, #40]	; (1260 <dma_init+0x70>)
    1236:	23f0      	movs	r3, #240	; 0xf0
    1238:	005b      	lsls	r3, r3, #1
    123a:	490a      	ldr	r1, [pc, #40]	; (1264 <dma_init+0x74>)
    123c:	50d1      	str	r1, [r2, r3]
    123e:	490a      	ldr	r1, [pc, #40]	; (1268 <dma_init+0x78>)
    1240:	4a07      	ldr	r2, [pc, #28]	; (1260 <dma_init+0x70>)
    1242:	23f2      	movs	r3, #242	; 0xf2
    1244:	005b      	lsls	r3, r3, #1
    1246:	50d1      	str	r1, [r2, r3]
    1248:	4a05      	ldr	r2, [pc, #20]	; (1260 <dma_init+0x70>)
    124a:	23f4      	movs	r3, #244	; 0xf4
    124c:	005b      	lsls	r3, r3, #1
    124e:	4907      	ldr	r1, [pc, #28]	; (126c <dma_init+0x7c>)
    1250:	50d1      	str	r1, [r2, r3]
    1252:	46c0      	nop			; (mov r8, r8)
    1254:	46bd      	mov	sp, r7
    1256:	bd80      	pop	{r7, pc}
    1258:	40020000 	.word	0x40020000
    125c:	40028000 	.word	0x40028000
    1260:	20100000 	.word	0x20100000
    1264:	40088018 	.word	0x40088018
    1268:	2010020c 	.word	0x2010020c
    126c:	ae000031 	.word	0xae000031

00001270 <adc_dma_init>:
    1270:	b580      	push	{r7, lr}
    1272:	af00      	add	r7, sp, #0
    1274:	f7ff ff92 	bl	119c <adc_init>
    1278:	f7ff ffba 	bl	11f0 <dma_init>
    127c:	46c0      	nop			; (mov r8, r8)
    127e:	46bd      	mov	sp, r7
    1280:	bd80      	pop	{r7, pc}
    1282:	46c0      	nop			; (mov r8, r8)

00001284 <cos_tb>:
    1284:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    1294:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12a4:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    12b4:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    12c4:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    12d4:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    12e4:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    12f4:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1304:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1314:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1324:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1334:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1344:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    1354:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    1364:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    1374:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    1384:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    1394:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13a4:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    13b4:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    13c4:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    13d4:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    13e4:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    13f4:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1404:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1414:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1424:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1434:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1444:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    1454:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    1464:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    1474:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    1484:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    1494:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14a4:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    14b4:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    14c4:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    14d4:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    14e4:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    14f4:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1504:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1514:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1524:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1534:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1544:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    1554:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    1564:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    1574:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    1584:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    1594:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15a4:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    15b4:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    15c4:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    15d4:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    15e4:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    15f4:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1604:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1614:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1624:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1634:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1644:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    1654:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    1664:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    1674:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    1684:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    1694:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16a4:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    16b4:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    16c4:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    16d4:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    16e4:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    16f4:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1704:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1714:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1724:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1734:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1744:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    1754:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    1764:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    1774:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    1784:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    1794:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17a4:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    17b4:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    17c4:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    17d4:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    17e4:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    17f4:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1804:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1814:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1824:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1834:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1844:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    1854:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    1864:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    1874:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    1884:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    1894:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18a4:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    18b4:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    18c4:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    18d4:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    18e4:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    18f4:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1904:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1914:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1924:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1934:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1944:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    1954:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    1964:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    1974:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    1984:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    1994:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19a4:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    19b4:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    19c4:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    19d4:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    19e4:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    19f4:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a04:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a14:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a24:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a34:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a44:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1a54:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1a64:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1a74:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1a84:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1a94:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1aa4:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1ab4:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1ac4:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1ad4:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1ae4:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1af4:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b04:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b14:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b24:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b34:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b44:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1b54:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1b64:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1b74:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1b84:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1b94:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1ba4:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1bb4:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1bc4:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1bd4:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1be4:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1bf4:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c04:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c14:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c24:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c34:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c44:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1c54:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1c64:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1c74:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1c84:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1c94:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1ca4:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1cb4:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1cc4:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1cd4:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1ce4:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1cf4:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d04:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d14:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d24:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d34:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d44:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1d54:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1d64:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1d74:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1d84:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1d94:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1da4:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1db4:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1dc4:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1dd4:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1de4:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1df4:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e04:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e14:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e24:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e34:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e44:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1e54:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1e64:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1e74:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1e84:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1e94:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1ea4:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1eb4:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1ec4:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1ed4:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1ee4:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1ef4:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f04:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f14:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f24:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f34:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f44:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1f54:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1f64:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1f74:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1f84:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1f94:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1fa4:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    1fb4:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    1fc4:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    1fd4:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    1fe4:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    1ff4:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2004:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2014:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2024:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2034:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2044:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    2054:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    2064:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    2074:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    2084:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    2094:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20a4:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    20b4:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    20c4:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    20d4:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    20e4:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    20f4:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2104:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2114:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2124:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2134:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2144:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    2154:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    2164:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    2174:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    2184:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    2194:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21a4:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    21b4:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    21c4:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    21d4:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    21e4:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    21f4:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2204:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2214:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2224:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2234:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2244:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    2254:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    2264:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    2274:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    2284:	0bee 0000 0c20 0000 0c50 0000 0c7e 0000     .... ...P...~...
    2294:	0bb8 0000 0cac 0000 0080 0000 004c 0000     ............L...
    22a4:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    22b4:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    22c4:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    22d4:	026e 0000 026e 0000                         n...n...
