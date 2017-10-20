
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 5d 05 00 00 bd 05 00 00 bd 05 00 00     ... ]...........
	...
      2c:	bd 05 00 00 00 00 00 00 00 00 00 00 bd 05 00 00     ................
      3c:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      4c:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      5c:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      6c:	bd 05 00 00 bd 05 00 00 31 05 00 00 bd 05 00 00     ........1.......
      7c:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      8c:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      9c:	bd 05 00 00 bd 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	bd 05 00 00 bd 05 00 00 bd 05 00 00 bd 05 00 00     ................
      bc:	bd 05 00 00                                         ....

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
     192:	f001 f821 	bl	11d8 <g2b>
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
     278:	f000 ff9e 	bl	11b8 <SystemInit>
     27c:	f001 f81e 	bl	12bc <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	2396      	movs	r3, #150	; 0x96
     28a:	009a      	lsls	r2, r3, #2
     28c:	2396      	movs	r3, #150	; 0x96
     28e:	0099      	lsls	r1, r3, #2
     290:	4b9b      	ldr	r3, [pc, #620]	; (500 <_stack_size+0x100>)
     292:	0018      	movs	r0, r3
     294:	f000 f996 	bl	5c4 <reg_init>
     298:	2396      	movs	r3, #150	; 0x96
     29a:	009a      	lsls	r2, r3, #2
     29c:	2396      	movs	r3, #150	; 0x96
     29e:	0099      	lsls	r1, r3, #2
     2a0:	4b98      	ldr	r3, [pc, #608]	; (504 <_stack_size+0x104>)
     2a2:	0018      	movs	r0, r3
     2a4:	f000 f98e 	bl	5c4 <reg_init>
     2a8:	23fa      	movs	r3, #250	; 0xfa
     2aa:	011a      	lsls	r2, r3, #4
     2ac:	4b96      	ldr	r3, [pc, #600]	; (508 <_stack_size+0x108>)
     2ae:	2100      	movs	r1, #0
     2b0:	0018      	movs	r0, r3
     2b2:	f000 f987 	bl	5c4 <reg_init>
     2b6:	4a95      	ldr	r2, [pc, #596]	; (50c <_stack_size+0x10c>)
     2b8:	4b95      	ldr	r3, [pc, #596]	; (510 <_stack_size+0x110>)
     2ba:	2100      	movs	r1, #0
     2bc:	0018      	movs	r0, r3
     2be:	f000 f981 	bl	5c4 <reg_init>
     2c2:	4b94      	ldr	r3, [pc, #592]	; (514 <_stack_size+0x114>)
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
     2dc:	e029      	b.n	332 <main+0xee>
     2de:	f7ff ff03 	bl	e8 <adc_dma_wait>
     2e2:	4b8d      	ldr	r3, [pc, #564]	; (518 <_stack_size+0x118>)
     2e4:	685b      	ldr	r3, [r3, #4]
     2e6:	051b      	lsls	r3, r3, #20
     2e8:	0d1a      	lsrs	r2, r3, #20
     2ea:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2ec:	18d3      	adds	r3, r2, r3
     2ee:	65bb      	str	r3, [r7, #88]	; 0x58
     2f0:	4b89      	ldr	r3, [pc, #548]	; (518 <_stack_size+0x118>)
     2f2:	689b      	ldr	r3, [r3, #8]
     2f4:	051b      	lsls	r3, r3, #20
     2f6:	0d1a      	lsrs	r2, r3, #20
     2f8:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2fa:	18d3      	adds	r3, r2, r3
     2fc:	657b      	str	r3, [r7, #84]	; 0x54
     2fe:	4b86      	ldr	r3, [pc, #536]	; (518 <_stack_size+0x118>)
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
     318:	4b7f      	ldr	r3, [pc, #508]	; (518 <_stack_size+0x118>)
     31a:	681b      	ldr	r3, [r3, #0]
     31c:	051b      	lsls	r3, r3, #20
     31e:	0d1a      	lsrs	r2, r3, #20
     320:	0013      	movs	r3, r2
     322:	009b      	lsls	r3, r3, #2
     324:	189b      	adds	r3, r3, r2
     326:	0018      	movs	r0, r3
     328:	f000 fd3a 	bl	da0 <mfilter>
     32c:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     32e:	3301      	adds	r3, #1
     330:	65fb      	str	r3, [r7, #92]	; 0x5c
     332:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     334:	4a79      	ldr	r2, [pc, #484]	; (51c <_stack_size+0x11c>)
     336:	4293      	cmp	r3, r2
     338:	ddd1      	ble.n	2de <main+0x9a>
     33a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     33c:	129b      	asrs	r3, r3, #10
     33e:	65bb      	str	r3, [r7, #88]	; 0x58
     340:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     342:	129b      	asrs	r3, r3, #10
     344:	657b      	str	r3, [r7, #84]	; 0x54
     346:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     348:	129b      	asrs	r3, r3, #10
     34a:	647b      	str	r3, [r7, #68]	; 0x44
     34c:	4b74      	ldr	r3, [pc, #464]	; (520 <_stack_size+0x120>)
     34e:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     350:	601a      	str	r2, [r3, #0]
     352:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     354:	129b      	asrs	r3, r3, #10
     356:	643b      	str	r3, [r7, #64]	; 0x40
     358:	4b72      	ldr	r3, [pc, #456]	; (524 <_stack_size+0x124>)
     35a:	4a72      	ldr	r2, [pc, #456]	; (524 <_stack_size+0x124>)
     35c:	6812      	ldr	r2, [r2, #0]
     35e:	2120      	movs	r1, #32
     360:	438a      	bics	r2, r1
     362:	601a      	str	r2, [r3, #0]
     364:	f7ff fec0 	bl	e8 <adc_dma_wait>
     368:	4b6e      	ldr	r3, [pc, #440]	; (524 <_stack_size+0x124>)
     36a:	4a6e      	ldr	r2, [pc, #440]	; (524 <_stack_size+0x124>)
     36c:	6812      	ldr	r2, [r2, #0]
     36e:	2120      	movs	r1, #32
     370:	430a      	orrs	r2, r1
     372:	601a      	str	r2, [r3, #0]
     374:	4b68      	ldr	r3, [pc, #416]	; (518 <_stack_size+0x118>)
     376:	681b      	ldr	r3, [r3, #0]
     378:	051b      	lsls	r3, r3, #20
     37a:	0d1a      	lsrs	r2, r3, #20
     37c:	0013      	movs	r3, r2
     37e:	009b      	lsls	r3, r3, #2
     380:	189b      	adds	r3, r3, r2
     382:	65fb      	str	r3, [r7, #92]	; 0x5c
     384:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     386:	10da      	asrs	r2, r3, #3
     388:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     38a:	18d3      	adds	r3, r2, r3
     38c:	10db      	asrs	r3, r3, #3
     38e:	2291      	movs	r2, #145	; 0x91
     390:	0092      	lsls	r2, r2, #2
     392:	189a      	adds	r2, r3, r2
     394:	4b62      	ldr	r3, [pc, #392]	; (520 <_stack_size+0x120>)
     396:	601a      	str	r2, [r3, #0]
     398:	4b61      	ldr	r3, [pc, #388]	; (520 <_stack_size+0x120>)
     39a:	681a      	ldr	r2, [r3, #0]
     39c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     39e:	1ad2      	subs	r2, r2, r3
     3a0:	0013      	movs	r3, r2
     3a2:	00db      	lsls	r3, r3, #3
     3a4:	1a9b      	subs	r3, r3, r2
     3a6:	00da      	lsls	r2, r3, #3
     3a8:	1ad2      	subs	r2, r2, r3
     3aa:	4b5a      	ldr	r3, [pc, #360]	; (514 <_stack_size+0x114>)
     3ac:	601a      	str	r2, [r3, #0]
     3ae:	4b5a      	ldr	r3, [pc, #360]	; (518 <_stack_size+0x118>)
     3b0:	685b      	ldr	r3, [r3, #4]
     3b2:	051b      	lsls	r3, r3, #20
     3b4:	0d1a      	lsrs	r2, r3, #20
     3b6:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3b8:	1ad3      	subs	r3, r2, r3
     3ba:	633b      	str	r3, [r7, #48]	; 0x30
     3bc:	4b56      	ldr	r3, [pc, #344]	; (518 <_stack_size+0x118>)
     3be:	689b      	ldr	r3, [r3, #8]
     3c0:	051b      	lsls	r3, r3, #20
     3c2:	0d1a      	lsrs	r2, r3, #20
     3c4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     3c6:	1ad3      	subs	r3, r2, r3
     3c8:	62fb      	str	r3, [r7, #44]	; 0x2c
     3ca:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     3cc:	425a      	negs	r2, r3
     3ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     3d0:	1ad3      	subs	r3, r2, r3
     3d2:	62bb      	str	r3, [r7, #40]	; 0x28
     3d4:	4b50      	ldr	r3, [pc, #320]	; (518 <_stack_size+0x118>)
     3d6:	68db      	ldr	r3, [r3, #12]
     3d8:	051b      	lsls	r3, r3, #20
     3da:	0d1b      	lsrs	r3, r3, #20
     3dc:	637b      	str	r3, [r7, #52]	; 0x34
     3de:	f7ff fed1 	bl	184 <encoder_read>
     3e2:	0003      	movs	r3, r0
     3e4:	627b      	str	r3, [r7, #36]	; 0x24
     3e6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3e8:	3301      	adds	r3, #1
     3ea:	64fb      	str	r3, [r7, #76]	; 0x4c
     3ec:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3ee:	2207      	movs	r2, #7
     3f0:	4013      	ands	r3, r2
     3f2:	d138      	bne.n	466 <_stack_size+0x66>
     3f4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     3f6:	003a      	movs	r2, r7
     3f8:	0011      	movs	r1, r2
     3fa:	0018      	movs	r0, r3
     3fc:	f000 fcaa 	bl	d54 <get_speed>
     400:	0003      	movs	r3, r0
     402:	623b      	str	r3, [r7, #32]
     404:	4b43      	ldr	r3, [pc, #268]	; (514 <_stack_size+0x114>)
     406:	681a      	ldr	r2, [r3, #0]
     408:	683b      	ldr	r3, [r7, #0]
     40a:	1ad1      	subs	r1, r2, r3
     40c:	4b40      	ldr	r3, [pc, #256]	; (510 <_stack_size+0x110>)
     40e:	2200      	movs	r2, #0
     410:	0018      	movs	r0, r3
     412:	f000 f8dd 	bl	5d0 <reg_update>
     416:	4b3e      	ldr	r3, [pc, #248]	; (510 <_stack_size+0x110>)
     418:	68db      	ldr	r3, [r3, #12]
     41a:	131b      	asrs	r3, r3, #12
     41c:	63bb      	str	r3, [r7, #56]	; 0x38
     41e:	6bba      	ldr	r2, [r7, #56]	; 0x38
     420:	6a3b      	ldr	r3, [r7, #32]
     422:	1ad1      	subs	r1, r2, r3
     424:	4b38      	ldr	r3, [pc, #224]	; (508 <_stack_size+0x108>)
     426:	2200      	movs	r2, #0
     428:	0018      	movs	r0, r3
     42a:	f000 f8d1 	bl	5d0 <reg_update>
     42e:	4b36      	ldr	r3, [pc, #216]	; (508 <_stack_size+0x108>)
     430:	68db      	ldr	r3, [r3, #12]
     432:	131b      	asrs	r3, r3, #12
     434:	64bb      	str	r3, [r7, #72]	; 0x48
     436:	6cba      	ldr	r2, [r7, #72]	; 0x48
     438:	23fa      	movs	r3, #250	; 0xfa
     43a:	009b      	lsls	r3, r3, #2
     43c:	429a      	cmp	r2, r3
     43e:	dd02      	ble.n	446 <_stack_size+0x46>
     440:	23fa      	movs	r3, #250	; 0xfa
     442:	009b      	lsls	r3, r3, #2
     444:	64bb      	str	r3, [r7, #72]	; 0x48
     446:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     448:	4a37      	ldr	r2, [pc, #220]	; (528 <_stack_size+0x128>)
     44a:	4293      	cmp	r3, r2
     44c:	da01      	bge.n	452 <_stack_size+0x52>
     44e:	4b36      	ldr	r3, [pc, #216]	; (528 <_stack_size+0x128>)
     450:	64bb      	str	r3, [r7, #72]	; 0x48
     452:	4b36      	ldr	r3, [pc, #216]	; (52c <_stack_size+0x12c>)
     454:	683a      	ldr	r2, [r7, #0]
     456:	6c39      	ldr	r1, [r7, #64]	; 0x40
     458:	1a8a      	subs	r2, r1, r2
     45a:	10d2      	asrs	r2, r2, #3
     45c:	2180      	movs	r1, #128	; 0x80
     45e:	0109      	lsls	r1, r1, #4
     460:	468c      	mov	ip, r1
     462:	4462      	add	r2, ip
     464:	605a      	str	r2, [r3, #4]
     466:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     468:	059b      	lsls	r3, r3, #22
     46a:	0d9b      	lsrs	r3, r3, #22
     46c:	63fb      	str	r3, [r7, #60]	; 0x3c
     46e:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     470:	22bc      	movs	r2, #188	; 0xbc
     472:	0092      	lsls	r2, r2, #2
     474:	4694      	mov	ip, r2
     476:	4463      	add	r3, ip
     478:	059b      	lsls	r3, r3, #22
     47a:	0d9b      	lsrs	r3, r3, #22
     47c:	63fb      	str	r3, [r7, #60]	; 0x3c
     47e:	1d3b      	adds	r3, r7, #4
     480:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     482:	601a      	str	r2, [r3, #0]
     484:	1d3b      	adds	r3, r7, #4
     486:	6aba      	ldr	r2, [r7, #40]	; 0x28
     488:	605a      	str	r2, [r3, #4]
     48a:	1d3b      	adds	r3, r7, #4
     48c:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     48e:	609a      	str	r2, [r3, #8]
     490:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     492:	2310      	movs	r3, #16
     494:	18f9      	adds	r1, r7, r3
     496:	1d3b      	adds	r3, r7, #4
     498:	0018      	movs	r0, r3
     49a:	f000 f8b1 	bl	600 <abc_to_dq>
     49e:	2310      	movs	r3, #16
     4a0:	18fb      	adds	r3, r7, r3
     4a2:	681b      	ldr	r3, [r3, #0]
     4a4:	425b      	negs	r3, r3
     4a6:	61fb      	str	r3, [r7, #28]
     4a8:	2310      	movs	r3, #16
     4aa:	18fb      	adds	r3, r7, r3
     4ac:	685b      	ldr	r3, [r3, #4]
     4ae:	6cba      	ldr	r2, [r7, #72]	; 0x48
     4b0:	1ad3      	subs	r3, r2, r3
     4b2:	61bb      	str	r3, [r7, #24]
     4b4:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4b6:	69f9      	ldr	r1, [r7, #28]
     4b8:	4b11      	ldr	r3, [pc, #68]	; (500 <_stack_size+0x100>)
     4ba:	0018      	movs	r0, r3
     4bc:	f000 f888 	bl	5d0 <reg_update>
     4c0:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4c2:	69b9      	ldr	r1, [r7, #24]
     4c4:	4b0f      	ldr	r3, [pc, #60]	; (504 <_stack_size+0x104>)
     4c6:	0018      	movs	r0, r3
     4c8:	f000 f882 	bl	5d0 <reg_update>
     4cc:	4b0c      	ldr	r3, [pc, #48]	; (500 <_stack_size+0x100>)
     4ce:	68db      	ldr	r3, [r3, #12]
     4d0:	109a      	asrs	r2, r3, #2
     4d2:	2310      	movs	r3, #16
     4d4:	18fb      	adds	r3, r7, r3
     4d6:	601a      	str	r2, [r3, #0]
     4d8:	4b0a      	ldr	r3, [pc, #40]	; (504 <_stack_size+0x104>)
     4da:	68db      	ldr	r3, [r3, #12]
     4dc:	109a      	asrs	r2, r3, #2
     4de:	2310      	movs	r3, #16
     4e0:	18fb      	adds	r3, r7, r3
     4e2:	605a      	str	r2, [r3, #4]
     4e4:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4e6:	2310      	movs	r3, #16
     4e8:	18f9      	adds	r1, r7, r3
     4ea:	1d3b      	adds	r3, r7, #4
     4ec:	0018      	movs	r0, r3
     4ee:	f000 fab3 	bl	a58 <svpwm>
     4f2:	0003      	movs	r3, r0
     4f4:	653b      	str	r3, [r7, #80]	; 0x50
     4f6:	1d3b      	adds	r3, r7, #4
     4f8:	0018      	movs	r0, r3
     4fa:	f7ff fe69 	bl	1d0 <pwm_set>
     4fe:	e72b      	b.n	358 <main+0x114>
     500:	20000008 	.word	0x20000008
     504:	20000018 	.word	0x20000018
     508:	20000028 	.word	0x20000028
     50c:	00002710 	.word	0x00002710
     510:	20000038 	.word	0x20000038
     514:	20000000 	.word	0x20000000
     518:	20100200 	.word	0x20100200
     51c:	000003ff 	.word	0x000003ff
     520:	20000004 	.word	0x20000004
     524:	400b8000 	.word	0x400b8000
     528:	fffffc18 	.word	0xfffffc18
     52c:	40090000 	.word	0x40090000

00000530 <TIMER4_Handler>:
     530:	b580      	push	{r7, lr}
     532:	af00      	add	r7, sp, #0
     534:	4b07      	ldr	r3, [pc, #28]	; (554 <TIMER4_Handler+0x24>)
     536:	2200      	movs	r2, #0
     538:	655a      	str	r2, [r3, #84]	; 0x54
     53a:	4b07      	ldr	r3, [pc, #28]	; (558 <TIMER4_Handler+0x28>)
     53c:	681b      	ldr	r3, [r3, #0]
     53e:	1c5a      	adds	r2, r3, #1
     540:	4b05      	ldr	r3, [pc, #20]	; (558 <TIMER4_Handler+0x28>)
     542:	601a      	str	r2, [r3, #0]
     544:	f7ff fdbc 	bl	c0 <adc_dma_start>
     548:	f7ff fe10 	bl	16c <encoder_start>
     54c:	46c0      	nop			; (mov r8, r8)
     54e:	46bd      	mov	sp, r7
     550:	bd80      	pop	{r7, pc}
     552:	46c0      	nop			; (mov r8, r8)
     554:	40098000 	.word	0x40098000
     558:	20000048 	.word	0x20000048

0000055c <handler_reset>:
     55c:	b580      	push	{r7, lr}
     55e:	b082      	sub	sp, #8
     560:	af00      	add	r7, sp, #0
     562:	4b11      	ldr	r3, [pc, #68]	; (5a8 <handler_reset+0x4c>)
     564:	607b      	str	r3, [r7, #4]
     566:	4b11      	ldr	r3, [pc, #68]	; (5ac <handler_reset+0x50>)
     568:	603b      	str	r3, [r7, #0]
     56a:	e007      	b.n	57c <handler_reset+0x20>
     56c:	683b      	ldr	r3, [r7, #0]
     56e:	1d1a      	adds	r2, r3, #4
     570:	603a      	str	r2, [r7, #0]
     572:	687a      	ldr	r2, [r7, #4]
     574:	1d11      	adds	r1, r2, #4
     576:	6079      	str	r1, [r7, #4]
     578:	6812      	ldr	r2, [r2, #0]
     57a:	601a      	str	r2, [r3, #0]
     57c:	683a      	ldr	r2, [r7, #0]
     57e:	4b0c      	ldr	r3, [pc, #48]	; (5b0 <handler_reset+0x54>)
     580:	429a      	cmp	r2, r3
     582:	d3f3      	bcc.n	56c <handler_reset+0x10>
     584:	4b0b      	ldr	r3, [pc, #44]	; (5b4 <handler_reset+0x58>)
     586:	603b      	str	r3, [r7, #0]
     588:	e004      	b.n	594 <handler_reset+0x38>
     58a:	683b      	ldr	r3, [r7, #0]
     58c:	1d1a      	adds	r2, r3, #4
     58e:	603a      	str	r2, [r7, #0]
     590:	2200      	movs	r2, #0
     592:	601a      	str	r2, [r3, #0]
     594:	683a      	ldr	r2, [r7, #0]
     596:	4b08      	ldr	r3, [pc, #32]	; (5b8 <handler_reset+0x5c>)
     598:	429a      	cmp	r2, r3
     59a:	d3f6      	bcc.n	58a <handler_reset+0x2e>
     59c:	f7ff fe52 	bl	244 <main>
     5a0:	46c0      	nop			; (mov r8, r8)
     5a2:	46bd      	mov	sp, r7
     5a4:	b002      	add	sp, #8
     5a6:	bd80      	pop	{r7, pc}
     5a8:	00002328 	.word	0x00002328
     5ac:	20000000 	.word	0x20000000
     5b0:	20000000 	.word	0x20000000
     5b4:	20000000 	.word	0x20000000
     5b8:	200000dc 	.word	0x200000dc

000005bc <default_handler>:
     5bc:	b580      	push	{r7, lr}
     5be:	af00      	add	r7, sp, #0
     5c0:	e7fe      	b.n	5c0 <default_handler+0x4>
     5c2:	46c0      	nop			; (mov r8, r8)

000005c4 <reg_init>:
     5c4:	2300      	movs	r3, #0
     5c6:	6001      	str	r1, [r0, #0]
     5c8:	6042      	str	r2, [r0, #4]
     5ca:	6083      	str	r3, [r0, #8]
     5cc:	60c3      	str	r3, [r0, #12]
     5ce:	4770      	bx	lr

000005d0 <reg_update>:
     5d0:	b510      	push	{r4, lr}
     5d2:	6804      	ldr	r4, [r0, #0]
     5d4:	6883      	ldr	r3, [r0, #8]
     5d6:	434c      	muls	r4, r1
     5d8:	2a00      	cmp	r2, #0
     5da:	d004      	beq.n	5e6 <reg_update+0x16>
     5dc:	2b00      	cmp	r3, #0
     5de:	dd09      	ble.n	5f4 <reg_update+0x24>
     5e0:	2c00      	cmp	r4, #0
     5e2:	dd00      	ble.n	5e6 <reg_update+0x16>
     5e4:	2400      	movs	r4, #0
     5e6:	6842      	ldr	r2, [r0, #4]
     5e8:	18e3      	adds	r3, r4, r3
     5ea:	4351      	muls	r1, r2
     5ec:	18c9      	adds	r1, r1, r3
     5ee:	60c1      	str	r1, [r0, #12]
     5f0:	6083      	str	r3, [r0, #8]
     5f2:	bd10      	pop	{r4, pc}
     5f4:	2b00      	cmp	r3, #0
     5f6:	d0f6      	beq.n	5e6 <reg_update+0x16>
     5f8:	43e2      	mvns	r2, r4
     5fa:	17d2      	asrs	r2, r2, #31
     5fc:	4014      	ands	r4, r2
     5fe:	e7f2      	b.n	5e6 <reg_update+0x16>

00000600 <abc_to_dq>:
     600:	23c0      	movs	r3, #192	; 0xc0
     602:	b5f0      	push	{r4, r5, r6, r7, lr}
     604:	4647      	mov	r7, r8
     606:	009b      	lsls	r3, r3, #2
     608:	18d3      	adds	r3, r2, r3
     60a:	4d1b      	ldr	r5, [pc, #108]	; (678 <abc_to_dq+0x78>)
     60c:	059b      	lsls	r3, r3, #22
     60e:	0d1b      	lsrs	r3, r3, #20
     610:	595b      	ldr	r3, [r3, r5]
     612:	b480      	push	{r7}
     614:	4698      	mov	r8, r3
     616:	4b19      	ldr	r3, [pc, #100]	; (67c <abc_to_dq+0x7c>)
     618:	18d4      	adds	r4, r2, r3
     61a:	05a4      	lsls	r4, r4, #22
     61c:	4b18      	ldr	r3, [pc, #96]	; (680 <abc_to_dq+0x80>)
     61e:	0d24      	lsrs	r4, r4, #20
     620:	5967      	ldr	r7, [r4, r5]
     622:	18d4      	adds	r4, r2, r3
     624:	05a4      	lsls	r4, r4, #22
     626:	4b17      	ldr	r3, [pc, #92]	; (684 <abc_to_dq+0x84>)
     628:	0d24      	lsrs	r4, r4, #20
     62a:	5966      	ldr	r6, [r4, r5]
     62c:	18d4      	adds	r4, r2, r3
     62e:	05a4      	lsls	r4, r4, #22
     630:	0d24      	lsrs	r4, r4, #20
     632:	5964      	ldr	r4, [r4, r5]
     634:	6843      	ldr	r3, [r0, #4]
     636:	4363      	muls	r3, r4
     638:	0094      	lsls	r4, r2, #2
     63a:	469c      	mov	ip, r3
     63c:	3256      	adds	r2, #86	; 0x56
     63e:	32ff      	adds	r2, #255	; 0xff
     640:	6803      	ldr	r3, [r0, #0]
     642:	5964      	ldr	r4, [r4, r5]
     644:	0592      	lsls	r2, r2, #22
     646:	0d12      	lsrs	r2, r2, #20
     648:	5955      	ldr	r5, [r2, r5]
     64a:	435c      	muls	r4, r3
     64c:	6883      	ldr	r3, [r0, #8]
     64e:	4464      	add	r4, ip
     650:	435d      	muls	r5, r3
     652:	4643      	mov	r3, r8
     654:	1964      	adds	r4, r4, r5
     656:	12a4      	asrs	r4, r4, #10
     658:	600c      	str	r4, [r1, #0]
     65a:	6802      	ldr	r2, [r0, #0]
     65c:	435a      	muls	r2, r3
     65e:	6843      	ldr	r3, [r0, #4]
     660:	437b      	muls	r3, r7
     662:	18d3      	adds	r3, r2, r3
     664:	6882      	ldr	r2, [r0, #8]
     666:	4372      	muls	r2, r6
     668:	189b      	adds	r3, r3, r2
     66a:	425b      	negs	r3, r3
     66c:	129b      	asrs	r3, r3, #10
     66e:	604b      	str	r3, [r1, #4]
     670:	bc04      	pop	{r2}
     672:	4690      	mov	r8, r2
     674:	bdf0      	pop	{r4, r5, r6, r7, pc}
     676:	46c0      	nop			; (mov r8, r8)
     678:	000012d0 	.word	0x000012d0
     67c:	000005aa 	.word	0x000005aa
     680:	00000455 	.word	0x00000455
     684:	000002aa 	.word	0x000002aa

00000688 <dq_to_abc>:
     688:	b570      	push	{r4, r5, r6, lr}
     68a:	4d1a      	ldr	r5, [pc, #104]	; (6f4 <dq_to_abc+0x6c>)
     68c:	0093      	lsls	r3, r2, #2
     68e:	680c      	ldr	r4, [r1, #0]
     690:	595b      	ldr	r3, [r3, r5]
     692:	684e      	ldr	r6, [r1, #4]
     694:	435c      	muls	r4, r3
     696:	23c0      	movs	r3, #192	; 0xc0
     698:	009b      	lsls	r3, r3, #2
     69a:	18d3      	adds	r3, r2, r3
     69c:	059b      	lsls	r3, r3, #22
     69e:	0d1b      	lsrs	r3, r3, #20
     6a0:	595b      	ldr	r3, [r3, r5]
     6a2:	4373      	muls	r3, r6
     6a4:	1ae3      	subs	r3, r4, r3
     6a6:	151b      	asrs	r3, r3, #20
     6a8:	6003      	str	r3, [r0, #0]
     6aa:	4b13      	ldr	r3, [pc, #76]	; (6f8 <dq_to_abc+0x70>)
     6ac:	680c      	ldr	r4, [r1, #0]
     6ae:	18d3      	adds	r3, r2, r3
     6b0:	059b      	lsls	r3, r3, #22
     6b2:	0d1b      	lsrs	r3, r3, #20
     6b4:	595b      	ldr	r3, [r3, r5]
     6b6:	684e      	ldr	r6, [r1, #4]
     6b8:	435c      	muls	r4, r3
     6ba:	4b10      	ldr	r3, [pc, #64]	; (6fc <dq_to_abc+0x74>)
     6bc:	18d3      	adds	r3, r2, r3
     6be:	059b      	lsls	r3, r3, #22
     6c0:	0d1b      	lsrs	r3, r3, #20
     6c2:	595b      	ldr	r3, [r3, r5]
     6c4:	4373      	muls	r3, r6
     6c6:	1ae3      	subs	r3, r4, r3
     6c8:	151b      	asrs	r3, r3, #20
     6ca:	6043      	str	r3, [r0, #4]
     6cc:	0013      	movs	r3, r2
     6ce:	3356      	adds	r3, #86	; 0x56
     6d0:	33ff      	adds	r3, #255	; 0xff
     6d2:	059b      	lsls	r3, r3, #22
     6d4:	0d1b      	lsrs	r3, r3, #20
     6d6:	595b      	ldr	r3, [r3, r5]
     6d8:	680c      	ldr	r4, [r1, #0]
     6da:	435c      	muls	r4, r3
     6dc:	4b08      	ldr	r3, [pc, #32]	; (700 <dq_to_abc+0x78>)
     6de:	469c      	mov	ip, r3
     6e0:	4462      	add	r2, ip
     6e2:	0592      	lsls	r2, r2, #22
     6e4:	0d12      	lsrs	r2, r2, #20
     6e6:	5952      	ldr	r2, [r2, r5]
     6e8:	684b      	ldr	r3, [r1, #4]
     6ea:	4353      	muls	r3, r2
     6ec:	1ae3      	subs	r3, r4, r3
     6ee:	151b      	asrs	r3, r3, #20
     6f0:	6083      	str	r3, [r0, #8]
     6f2:	bd70      	pop	{r4, r5, r6, pc}
     6f4:	000012d0 	.word	0x000012d0
     6f8:	000002aa 	.word	0x000002aa
     6fc:	000005aa 	.word	0x000005aa
     700:	00000455 	.word	0x00000455

00000704 <cord_atan>:
     704:	b5f0      	push	{r4, r5, r6, r7, lr}
     706:	464f      	mov	r7, r9
     708:	4646      	mov	r6, r8
     70a:	b4c0      	push	{r6, r7}
     70c:	4b63      	ldr	r3, [pc, #396]	; (89c <cord_atan+0x198>)
     70e:	b091      	sub	sp, #68	; 0x44
     710:	001c      	movs	r4, r3
     712:	4694      	mov	ip, r2
     714:	466a      	mov	r2, sp
     716:	4699      	mov	r9, r3
     718:	cca8      	ldmia	r4!, {r3, r5, r7}
     71a:	c2a8      	stmia	r2!, {r3, r5, r7}
     71c:	cca8      	ldmia	r4!, {r3, r5, r7}
     71e:	c2a8      	stmia	r2!, {r3, r5, r7}
     720:	cc28      	ldmia	r4!, {r3, r5}
     722:	c228      	stmia	r2!, {r3, r5}
     724:	464b      	mov	r3, r9
     726:	aa08      	add	r2, sp, #32
     728:	3320      	adds	r3, #32
     72a:	4690      	mov	r8, r2
     72c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     72e:	c2b0      	stmia	r2!, {r4, r5, r7}
     730:	cbb0      	ldmia	r3!, {r4, r5, r7}
     732:	c2b0      	stmia	r2!, {r4, r5, r7}
     734:	cb30      	ldmia	r3!, {r4, r5}
     736:	c230      	stmia	r2!, {r4, r5}
     738:	6802      	ldr	r2, [r0, #0]
     73a:	6845      	ldr	r5, [r0, #4]
     73c:	17d4      	asrs	r4, r2, #31
     73e:	1913      	adds	r3, r2, r4
     740:	466e      	mov	r6, sp
     742:	4063      	eors	r3, r4
     744:	2d00      	cmp	r5, #0
     746:	dd69      	ble.n	81c <cord_atan+0x118>
     748:	195f      	adds	r7, r3, r5
     74a:	1aeb      	subs	r3, r5, r3
     74c:	9d00      	ldr	r5, [sp, #0]
     74e:	2b00      	cmp	r3, #0
     750:	d100      	bne.n	754 <cord_atan+0x50>
     752:	e091      	b.n	878 <cord_atan+0x174>
     754:	105c      	asrs	r4, r3, #1
     756:	2b00      	cmp	r3, #0
     758:	dd65      	ble.n	826 <cord_atan+0x122>
     75a:	1078      	asrs	r0, r7, #1
     75c:	1a1b      	subs	r3, r3, r0
     75e:	6870      	ldr	r0, [r6, #4]
     760:	19e4      	adds	r4, r4, r7
     762:	4681      	mov	r9, r0
     764:	444d      	add	r5, r9
     766:	2b00      	cmp	r3, #0
     768:	d100      	bne.n	76c <cord_atan+0x68>
     76a:	e087      	b.n	87c <cord_atan+0x178>
     76c:	1098      	asrs	r0, r3, #2
     76e:	2b00      	cmp	r3, #0
     770:	dd5f      	ble.n	832 <cord_atan+0x12e>
     772:	1907      	adds	r7, r0, r4
     774:	10a4      	asrs	r4, r4, #2
     776:	1b18      	subs	r0, r3, r4
     778:	68b3      	ldr	r3, [r6, #8]
     77a:	4699      	mov	r9, r3
     77c:	444d      	add	r5, r9
     77e:	2800      	cmp	r0, #0
     780:	d100      	bne.n	784 <cord_atan+0x80>
     782:	e07e      	b.n	882 <cord_atan+0x17e>
     784:	10c3      	asrs	r3, r0, #3
     786:	2800      	cmp	r0, #0
     788:	dd59      	ble.n	83e <cord_atan+0x13a>
     78a:	10fc      	asrs	r4, r7, #3
     78c:	1b00      	subs	r0, r0, r4
     78e:	68f4      	ldr	r4, [r6, #12]
     790:	19db      	adds	r3, r3, r7
     792:	46a1      	mov	r9, r4
     794:	444d      	add	r5, r9
     796:	2800      	cmp	r0, #0
     798:	d100      	bne.n	79c <cord_atan+0x98>
     79a:	e074      	b.n	886 <cord_atan+0x182>
     79c:	1104      	asrs	r4, r0, #4
     79e:	2800      	cmp	r0, #0
     7a0:	dd53      	ble.n	84a <cord_atan+0x146>
     7a2:	18e7      	adds	r7, r4, r3
     7a4:	111b      	asrs	r3, r3, #4
     7a6:	1ac4      	subs	r4, r0, r3
     7a8:	6933      	ldr	r3, [r6, #16]
     7aa:	4699      	mov	r9, r3
     7ac:	444d      	add	r5, r9
     7ae:	2c00      	cmp	r4, #0
     7b0:	d06c      	beq.n	88c <cord_atan+0x188>
     7b2:	1163      	asrs	r3, r4, #5
     7b4:	2c00      	cmp	r4, #0
     7b6:	dd4e      	ble.n	856 <cord_atan+0x152>
     7b8:	1178      	asrs	r0, r7, #5
     7ba:	1a20      	subs	r0, r4, r0
     7bc:	6974      	ldr	r4, [r6, #20]
     7be:	19db      	adds	r3, r3, r7
     7c0:	46a1      	mov	r9, r4
     7c2:	444d      	add	r5, r9
     7c4:	2800      	cmp	r0, #0
     7c6:	d063      	beq.n	890 <cord_atan+0x18c>
     7c8:	1184      	asrs	r4, r0, #6
     7ca:	2800      	cmp	r0, #0
     7cc:	dd49      	ble.n	862 <cord_atan+0x15e>
     7ce:	18e7      	adds	r7, r4, r3
     7d0:	119b      	asrs	r3, r3, #6
     7d2:	1ac0      	subs	r0, r0, r3
     7d4:	69b3      	ldr	r3, [r6, #24]
     7d6:	4699      	mov	r9, r3
     7d8:	444d      	add	r5, r9
     7da:	2800      	cmp	r0, #0
     7dc:	d05b      	beq.n	896 <cord_atan+0x192>
     7de:	dd46      	ble.n	86e <cord_atan+0x16a>
     7e0:	69f3      	ldr	r3, [r6, #28]
     7e2:	11c0      	asrs	r0, r0, #7
     7e4:	19c7      	adds	r7, r0, r7
     7e6:	18ed      	adds	r5, r5, r3
     7e8:	2307      	movs	r3, #7
     7ea:	2a00      	cmp	r2, #0
     7ec:	db12      	blt.n	814 <cord_atan+0x110>
     7ee:	2d00      	cmp	r5, #0
     7f0:	da03      	bge.n	7fa <cord_atan+0xf6>
     7f2:	2280      	movs	r2, #128	; 0x80
     7f4:	00d2      	lsls	r2, r2, #3
     7f6:	4691      	mov	r9, r2
     7f8:	444d      	add	r5, r9
     7fa:	4642      	mov	r2, r8
     7fc:	009b      	lsls	r3, r3, #2
     7fe:	58d0      	ldr	r0, [r2, r3]
     800:	4663      	mov	r3, ip
     802:	4378      	muls	r0, r7
     804:	1280      	asrs	r0, r0, #10
     806:	600d      	str	r5, [r1, #0]
     808:	6018      	str	r0, [r3, #0]
     80a:	b011      	add	sp, #68	; 0x44
     80c:	bc0c      	pop	{r2, r3}
     80e:	4690      	mov	r8, r2
     810:	4699      	mov	r9, r3
     812:	bdf0      	pop	{r4, r5, r6, r7, pc}
     814:	2280      	movs	r2, #128	; 0x80
     816:	0092      	lsls	r2, r2, #2
     818:	1b55      	subs	r5, r2, r5
     81a:	e7e8      	b.n	7ee <cord_atan+0xea>
     81c:	9800      	ldr	r0, [sp, #0]
     81e:	1b5f      	subs	r7, r3, r5
     820:	195b      	adds	r3, r3, r5
     822:	4245      	negs	r5, r0
     824:	e793      	b.n	74e <cord_atan+0x4a>
     826:	1078      	asrs	r0, r7, #1
     828:	18c3      	adds	r3, r0, r3
     82a:	6870      	ldr	r0, [r6, #4]
     82c:	1b3c      	subs	r4, r7, r4
     82e:	1a2d      	subs	r5, r5, r0
     830:	e799      	b.n	766 <cord_atan+0x62>
     832:	1a27      	subs	r7, r4, r0
     834:	10a0      	asrs	r0, r4, #2
     836:	18c0      	adds	r0, r0, r3
     838:	68b3      	ldr	r3, [r6, #8]
     83a:	1aed      	subs	r5, r5, r3
     83c:	e79f      	b.n	77e <cord_atan+0x7a>
     83e:	10fc      	asrs	r4, r7, #3
     840:	1820      	adds	r0, r4, r0
     842:	68f4      	ldr	r4, [r6, #12]
     844:	1afb      	subs	r3, r7, r3
     846:	1b2d      	subs	r5, r5, r4
     848:	e7a5      	b.n	796 <cord_atan+0x92>
     84a:	1b1f      	subs	r7, r3, r4
     84c:	111c      	asrs	r4, r3, #4
     84e:	6933      	ldr	r3, [r6, #16]
     850:	1824      	adds	r4, r4, r0
     852:	1aed      	subs	r5, r5, r3
     854:	e7ab      	b.n	7ae <cord_atan+0xaa>
     856:	1178      	asrs	r0, r7, #5
     858:	1900      	adds	r0, r0, r4
     85a:	6974      	ldr	r4, [r6, #20]
     85c:	1afb      	subs	r3, r7, r3
     85e:	1b2d      	subs	r5, r5, r4
     860:	e7b0      	b.n	7c4 <cord_atan+0xc0>
     862:	1b1f      	subs	r7, r3, r4
     864:	119b      	asrs	r3, r3, #6
     866:	1818      	adds	r0, r3, r0
     868:	69b3      	ldr	r3, [r6, #24]
     86a:	1aed      	subs	r5, r5, r3
     86c:	e7b5      	b.n	7da <cord_atan+0xd6>
     86e:	69f3      	ldr	r3, [r6, #28]
     870:	11c4      	asrs	r4, r0, #7
     872:	1b3f      	subs	r7, r7, r4
     874:	1aed      	subs	r5, r5, r3
     876:	e7b7      	b.n	7e8 <cord_atan+0xe4>
     878:	2300      	movs	r3, #0
     87a:	e7b6      	b.n	7ea <cord_atan+0xe6>
     87c:	0027      	movs	r7, r4
     87e:	2301      	movs	r3, #1
     880:	e7b3      	b.n	7ea <cord_atan+0xe6>
     882:	2302      	movs	r3, #2
     884:	e7b1      	b.n	7ea <cord_atan+0xe6>
     886:	001f      	movs	r7, r3
     888:	2303      	movs	r3, #3
     88a:	e7ae      	b.n	7ea <cord_atan+0xe6>
     88c:	2304      	movs	r3, #4
     88e:	e7ac      	b.n	7ea <cord_atan+0xe6>
     890:	001f      	movs	r7, r3
     892:	2305      	movs	r3, #5
     894:	e7a9      	b.n	7ea <cord_atan+0xe6>
     896:	2306      	movs	r3, #6
     898:	e7a7      	b.n	7ea <cord_atan+0xe6>
     89a:	46c0      	nop			; (mov r8, r8)
     89c:	000022e8 	.word	0x000022e8

000008a0 <sinpwm>:
     8a0:	b5f0      	push	{r4, r5, r6, r7, lr}
     8a2:	4646      	mov	r6, r8
     8a4:	464f      	mov	r7, r9
     8a6:	b4c0      	push	{r6, r7}
     8a8:	b089      	sub	sp, #36	; 0x24
     8aa:	466c      	mov	r4, sp
     8ac:	4b65      	ldr	r3, [pc, #404]	; (a44 <sinpwm+0x1a4>)
     8ae:	46e9      	mov	r9, sp
     8b0:	3320      	adds	r3, #32
     8b2:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8b4:	c4e0      	stmia	r4!, {r5, r6, r7}
     8b6:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8b8:	c4e0      	stmia	r4!, {r5, r6, r7}
     8ba:	cb60      	ldmia	r3!, {r5, r6}
     8bc:	c460      	stmia	r4!, {r5, r6}
     8be:	680b      	ldr	r3, [r1, #0]
     8c0:	17dc      	asrs	r4, r3, #31
     8c2:	191e      	adds	r6, r3, r4
     8c4:	4698      	mov	r8, r3
     8c6:	684b      	ldr	r3, [r1, #4]
     8c8:	4066      	eors	r6, r4
     8ca:	469c      	mov	ip, r3
     8cc:	2b00      	cmp	r3, #0
     8ce:	dc00      	bgt.n	8d2 <sinpwm+0x32>
     8d0:	e086      	b.n	9e0 <sinpwm+0x140>
     8d2:	18f7      	adds	r7, r6, r3
     8d4:	1b9b      	subs	r3, r3, r6
     8d6:	2b00      	cmp	r3, #0
     8d8:	d100      	bne.n	8dc <sinpwm+0x3c>
     8da:	e0a0      	b.n	a1e <sinpwm+0x17e>
     8dc:	105e      	asrs	r6, r3, #1
     8de:	2b00      	cmp	r3, #0
     8e0:	dc00      	bgt.n	8e4 <sinpwm+0x44>
     8e2:	e081      	b.n	9e8 <sinpwm+0x148>
     8e4:	107c      	asrs	r4, r7, #1
     8e6:	19f6      	adds	r6, r6, r7
     8e8:	1b1b      	subs	r3, r3, r4
     8ea:	2b00      	cmp	r3, #0
     8ec:	d100      	bne.n	8f0 <sinpwm+0x50>
     8ee:	e098      	b.n	a22 <sinpwm+0x182>
     8f0:	109c      	asrs	r4, r3, #2
     8f2:	2b00      	cmp	r3, #0
     8f4:	dc00      	bgt.n	8f8 <sinpwm+0x58>
     8f6:	e07b      	b.n	9f0 <sinpwm+0x150>
     8f8:	19a7      	adds	r7, r4, r6
     8fa:	10b6      	asrs	r6, r6, #2
     8fc:	1b9c      	subs	r4, r3, r6
     8fe:	2c00      	cmp	r4, #0
     900:	d100      	bne.n	904 <sinpwm+0x64>
     902:	e091      	b.n	a28 <sinpwm+0x188>
     904:	10e6      	asrs	r6, r4, #3
     906:	2c00      	cmp	r4, #0
     908:	dc00      	bgt.n	90c <sinpwm+0x6c>
     90a:	e075      	b.n	9f8 <sinpwm+0x158>
     90c:	10fd      	asrs	r5, r7, #3
     90e:	19f6      	adds	r6, r6, r7
     910:	1b64      	subs	r4, r4, r5
     912:	2c00      	cmp	r4, #0
     914:	d100      	bne.n	918 <sinpwm+0x78>
     916:	e089      	b.n	a2c <sinpwm+0x18c>
     918:	1125      	asrs	r5, r4, #4
     91a:	2c00      	cmp	r4, #0
     91c:	dc00      	bgt.n	920 <sinpwm+0x80>
     91e:	e06f      	b.n	a00 <sinpwm+0x160>
     920:	19af      	adds	r7, r5, r6
     922:	1136      	asrs	r6, r6, #4
     924:	1ba5      	subs	r5, r4, r6
     926:	2d00      	cmp	r5, #0
     928:	d100      	bne.n	92c <sinpwm+0x8c>
     92a:	e082      	b.n	a32 <sinpwm+0x192>
     92c:	116e      	asrs	r6, r5, #5
     92e:	2d00      	cmp	r5, #0
     930:	dd6a      	ble.n	a08 <sinpwm+0x168>
     932:	117c      	asrs	r4, r7, #5
     934:	19f6      	adds	r6, r6, r7
     936:	1b2c      	subs	r4, r5, r4
     938:	2c00      	cmp	r4, #0
     93a:	d100      	bne.n	93e <sinpwm+0x9e>
     93c:	e07b      	b.n	a36 <sinpwm+0x196>
     93e:	11a3      	asrs	r3, r4, #6
     940:	2c00      	cmp	r4, #0
     942:	dd65      	ble.n	a10 <sinpwm+0x170>
     944:	199b      	adds	r3, r3, r6
     946:	11b6      	asrs	r6, r6, #6
     948:	1ba4      	subs	r4, r4, r6
     94a:	2c00      	cmp	r4, #0
     94c:	d100      	bne.n	950 <sinpwm+0xb0>
     94e:	e075      	b.n	a3c <sinpwm+0x19c>
     950:	dd62      	ble.n	a18 <sinpwm+0x178>
     952:	11e4      	asrs	r4, r4, #7
     954:	18e7      	adds	r7, r4, r3
     956:	2307      	movs	r3, #7
     958:	464c      	mov	r4, r9
     95a:	4646      	mov	r6, r8
     95c:	009b      	lsls	r3, r3, #2
     95e:	58e4      	ldr	r4, [r4, r3]
     960:	4b39      	ldr	r3, [pc, #228]	; (a48 <sinpwm+0x1a8>)
     962:	0095      	lsls	r5, r2, #2
     964:	58ed      	ldr	r5, [r5, r3]
     966:	437c      	muls	r4, r7
     968:	436e      	muls	r6, r5
     96a:	25c0      	movs	r5, #192	; 0xc0
     96c:	4667      	mov	r7, ip
     96e:	00ad      	lsls	r5, r5, #2
     970:	1955      	adds	r5, r2, r5
     972:	05ad      	lsls	r5, r5, #22
     974:	0d2d      	lsrs	r5, r5, #20
     976:	58ed      	ldr	r5, [r5, r3]
     978:	1524      	asrs	r4, r4, #20
     97a:	437d      	muls	r5, r7
     97c:	1b75      	subs	r5, r6, r5
     97e:	152d      	asrs	r5, r5, #20
     980:	6005      	str	r5, [r0, #0]
     982:	4d32      	ldr	r5, [pc, #200]	; (a4c <sinpwm+0x1ac>)
     984:	684f      	ldr	r7, [r1, #4]
     986:	1955      	adds	r5, r2, r5
     988:	05ad      	lsls	r5, r5, #22
     98a:	0d2d      	lsrs	r5, r5, #20
     98c:	58ee      	ldr	r6, [r5, r3]
     98e:	680d      	ldr	r5, [r1, #0]
     990:	4375      	muls	r5, r6
     992:	4e2f      	ldr	r6, [pc, #188]	; (a50 <sinpwm+0x1b0>)
     994:	1996      	adds	r6, r2, r6
     996:	05b6      	lsls	r6, r6, #22
     998:	0d36      	lsrs	r6, r6, #20
     99a:	58f6      	ldr	r6, [r6, r3]
     99c:	437e      	muls	r6, r7
     99e:	1bae      	subs	r6, r5, r6
     9a0:	0015      	movs	r5, r2
     9a2:	3556      	adds	r5, #86	; 0x56
     9a4:	35ff      	adds	r5, #255	; 0xff
     9a6:	1536      	asrs	r6, r6, #20
     9a8:	05ad      	lsls	r5, r5, #22
     9aa:	6046      	str	r6, [r0, #4]
     9ac:	0d2d      	lsrs	r5, r5, #20
     9ae:	58ee      	ldr	r6, [r5, r3]
     9b0:	680d      	ldr	r5, [r1, #0]
     9b2:	436e      	muls	r6, r5
     9b4:	4d27      	ldr	r5, [pc, #156]	; (a54 <sinpwm+0x1b4>)
     9b6:	46ac      	mov	ip, r5
     9b8:	4462      	add	r2, ip
     9ba:	0592      	lsls	r2, r2, #22
     9bc:	0d12      	lsrs	r2, r2, #20
     9be:	58d2      	ldr	r2, [r2, r3]
     9c0:	684b      	ldr	r3, [r1, #4]
     9c2:	435a      	muls	r2, r3
     9c4:	23fa      	movs	r3, #250	; 0xfa
     9c6:	1ab2      	subs	r2, r6, r2
     9c8:	1512      	asrs	r2, r2, #20
     9ca:	6082      	str	r2, [r0, #8]
     9cc:	005b      	lsls	r3, r3, #1
     9ce:	2001      	movs	r0, #1
     9d0:	429c      	cmp	r4, r3
     9d2:	dc00      	bgt.n	9d6 <sinpwm+0x136>
     9d4:	2000      	movs	r0, #0
     9d6:	b009      	add	sp, #36	; 0x24
     9d8:	bc0c      	pop	{r2, r3}
     9da:	4690      	mov	r8, r2
     9dc:	4699      	mov	r9, r3
     9de:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9e0:	1af7      	subs	r7, r6, r3
     9e2:	0033      	movs	r3, r6
     9e4:	4463      	add	r3, ip
     9e6:	e776      	b.n	8d6 <sinpwm+0x36>
     9e8:	107c      	asrs	r4, r7, #1
     9ea:	1bbe      	subs	r6, r7, r6
     9ec:	18e3      	adds	r3, r4, r3
     9ee:	e77c      	b.n	8ea <sinpwm+0x4a>
     9f0:	1b37      	subs	r7, r6, r4
     9f2:	10b4      	asrs	r4, r6, #2
     9f4:	18e4      	adds	r4, r4, r3
     9f6:	e782      	b.n	8fe <sinpwm+0x5e>
     9f8:	10fd      	asrs	r5, r7, #3
     9fa:	1bbe      	subs	r6, r7, r6
     9fc:	192c      	adds	r4, r5, r4
     9fe:	e788      	b.n	912 <sinpwm+0x72>
     a00:	1b77      	subs	r7, r6, r5
     a02:	1135      	asrs	r5, r6, #4
     a04:	192d      	adds	r5, r5, r4
     a06:	e78e      	b.n	926 <sinpwm+0x86>
     a08:	117c      	asrs	r4, r7, #5
     a0a:	1bbe      	subs	r6, r7, r6
     a0c:	1964      	adds	r4, r4, r5
     a0e:	e793      	b.n	938 <sinpwm+0x98>
     a10:	1af3      	subs	r3, r6, r3
     a12:	11b6      	asrs	r6, r6, #6
     a14:	1934      	adds	r4, r6, r4
     a16:	e798      	b.n	94a <sinpwm+0xaa>
     a18:	11e5      	asrs	r5, r4, #7
     a1a:	1b5f      	subs	r7, r3, r5
     a1c:	e79b      	b.n	956 <sinpwm+0xb6>
     a1e:	2300      	movs	r3, #0
     a20:	e79a      	b.n	958 <sinpwm+0xb8>
     a22:	0037      	movs	r7, r6
     a24:	2301      	movs	r3, #1
     a26:	e797      	b.n	958 <sinpwm+0xb8>
     a28:	2302      	movs	r3, #2
     a2a:	e795      	b.n	958 <sinpwm+0xb8>
     a2c:	0037      	movs	r7, r6
     a2e:	2303      	movs	r3, #3
     a30:	e792      	b.n	958 <sinpwm+0xb8>
     a32:	2304      	movs	r3, #4
     a34:	e790      	b.n	958 <sinpwm+0xb8>
     a36:	0037      	movs	r7, r6
     a38:	2305      	movs	r3, #5
     a3a:	e78d      	b.n	958 <sinpwm+0xb8>
     a3c:	001f      	movs	r7, r3
     a3e:	2306      	movs	r3, #6
     a40:	e78a      	b.n	958 <sinpwm+0xb8>
     a42:	46c0      	nop			; (mov r8, r8)
     a44:	000022e8 	.word	0x000022e8
     a48:	000012d0 	.word	0x000012d0
     a4c:	000002aa 	.word	0x000002aa
     a50:	000005aa 	.word	0x000005aa
     a54:	00000455 	.word	0x00000455

00000a58 <svpwm>:
     a58:	b5f0      	push	{r4, r5, r6, r7, lr}
     a5a:	464f      	mov	r7, r9
     a5c:	4646      	mov	r6, r8
     a5e:	b4c0      	push	{r6, r7}
     a60:	4bb2      	ldr	r3, [pc, #712]	; (d2c <svpwm+0x2d4>)
     a62:	b091      	sub	sp, #68	; 0x44
     a64:	001c      	movs	r4, r3
     a66:	4694      	mov	ip, r2
     a68:	466a      	mov	r2, sp
     a6a:	4699      	mov	r9, r3
     a6c:	cca8      	ldmia	r4!, {r3, r5, r7}
     a6e:	c2a8      	stmia	r2!, {r3, r5, r7}
     a70:	cca8      	ldmia	r4!, {r3, r5, r7}
     a72:	c2a8      	stmia	r2!, {r3, r5, r7}
     a74:	cc28      	ldmia	r4!, {r3, r5}
     a76:	c228      	stmia	r2!, {r3, r5}
     a78:	464b      	mov	r3, r9
     a7a:	aa08      	add	r2, sp, #32
     a7c:	3320      	adds	r3, #32
     a7e:	4690      	mov	r8, r2
     a80:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a82:	c2b0      	stmia	r2!, {r4, r5, r7}
     a84:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a86:	c2b0      	stmia	r2!, {r4, r5, r7}
     a88:	cb30      	ldmia	r3!, {r4, r5}
     a8a:	c230      	stmia	r2!, {r4, r5}
     a8c:	680a      	ldr	r2, [r1, #0]
     a8e:	684d      	ldr	r5, [r1, #4]
     a90:	17d4      	asrs	r4, r2, #31
     a92:	1913      	adds	r3, r2, r4
     a94:	466e      	mov	r6, sp
     a96:	4063      	eors	r3, r4
     a98:	2d00      	cmp	r5, #0
     a9a:	dd78      	ble.n	b8e <svpwm+0x136>
     a9c:	195f      	adds	r7, r3, r5
     a9e:	1aeb      	subs	r3, r5, r3
     aa0:	9d00      	ldr	r5, [sp, #0]
     aa2:	2b00      	cmp	r3, #0
     aa4:	d100      	bne.n	aa8 <svpwm+0x50>
     aa6:	e130      	b.n	d0a <svpwm+0x2b2>
     aa8:	105c      	asrs	r4, r3, #1
     aaa:	2b00      	cmp	r3, #0
     aac:	dd74      	ble.n	b98 <svpwm+0x140>
     aae:	1079      	asrs	r1, r7, #1
     ab0:	1a5b      	subs	r3, r3, r1
     ab2:	6871      	ldr	r1, [r6, #4]
     ab4:	19e4      	adds	r4, r4, r7
     ab6:	4689      	mov	r9, r1
     ab8:	444d      	add	r5, r9
     aba:	2b00      	cmp	r3, #0
     abc:	d100      	bne.n	ac0 <svpwm+0x68>
     abe:	e126      	b.n	d0e <svpwm+0x2b6>
     ac0:	1099      	asrs	r1, r3, #2
     ac2:	2b00      	cmp	r3, #0
     ac4:	dd6e      	ble.n	ba4 <svpwm+0x14c>
     ac6:	190f      	adds	r7, r1, r4
     ac8:	10a4      	asrs	r4, r4, #2
     aca:	1b19      	subs	r1, r3, r4
     acc:	68b3      	ldr	r3, [r6, #8]
     ace:	4699      	mov	r9, r3
     ad0:	444d      	add	r5, r9
     ad2:	2900      	cmp	r1, #0
     ad4:	d100      	bne.n	ad8 <svpwm+0x80>
     ad6:	e11d      	b.n	d14 <svpwm+0x2bc>
     ad8:	10cb      	asrs	r3, r1, #3
     ada:	2900      	cmp	r1, #0
     adc:	dd68      	ble.n	bb0 <svpwm+0x158>
     ade:	10fc      	asrs	r4, r7, #3
     ae0:	1b09      	subs	r1, r1, r4
     ae2:	68f4      	ldr	r4, [r6, #12]
     ae4:	19db      	adds	r3, r3, r7
     ae6:	46a1      	mov	r9, r4
     ae8:	444d      	add	r5, r9
     aea:	2900      	cmp	r1, #0
     aec:	d100      	bne.n	af0 <svpwm+0x98>
     aee:	e113      	b.n	d18 <svpwm+0x2c0>
     af0:	110c      	asrs	r4, r1, #4
     af2:	2900      	cmp	r1, #0
     af4:	dd62      	ble.n	bbc <svpwm+0x164>
     af6:	18e7      	adds	r7, r4, r3
     af8:	111b      	asrs	r3, r3, #4
     afa:	1acc      	subs	r4, r1, r3
     afc:	6933      	ldr	r3, [r6, #16]
     afe:	4699      	mov	r9, r3
     b00:	444d      	add	r5, r9
     b02:	2c00      	cmp	r4, #0
     b04:	d100      	bne.n	b08 <svpwm+0xb0>
     b06:	e10a      	b.n	d1e <svpwm+0x2c6>
     b08:	1163      	asrs	r3, r4, #5
     b0a:	2c00      	cmp	r4, #0
     b0c:	dd5c      	ble.n	bc8 <svpwm+0x170>
     b0e:	1179      	asrs	r1, r7, #5
     b10:	1a61      	subs	r1, r4, r1
     b12:	6974      	ldr	r4, [r6, #20]
     b14:	19db      	adds	r3, r3, r7
     b16:	46a1      	mov	r9, r4
     b18:	444d      	add	r5, r9
     b1a:	2900      	cmp	r1, #0
     b1c:	d100      	bne.n	b20 <svpwm+0xc8>
     b1e:	e100      	b.n	d22 <svpwm+0x2ca>
     b20:	118c      	asrs	r4, r1, #6
     b22:	2900      	cmp	r1, #0
     b24:	dd56      	ble.n	bd4 <svpwm+0x17c>
     b26:	18e7      	adds	r7, r4, r3
     b28:	119b      	asrs	r3, r3, #6
     b2a:	1ac9      	subs	r1, r1, r3
     b2c:	69b3      	ldr	r3, [r6, #24]
     b2e:	4699      	mov	r9, r3
     b30:	444d      	add	r5, r9
     b32:	2900      	cmp	r1, #0
     b34:	d100      	bne.n	b38 <svpwm+0xe0>
     b36:	e0f7      	b.n	d28 <svpwm+0x2d0>
     b38:	dc00      	bgt.n	b3c <svpwm+0xe4>
     b3a:	e0e1      	b.n	d00 <svpwm+0x2a8>
     b3c:	69f3      	ldr	r3, [r6, #28]
     b3e:	11c9      	asrs	r1, r1, #7
     b40:	19cf      	adds	r7, r1, r7
     b42:	18ed      	adds	r5, r5, r3
     b44:	2307      	movs	r3, #7
     b46:	2a00      	cmp	r2, #0
     b48:	db1d      	blt.n	b86 <svpwm+0x12e>
     b4a:	2d00      	cmp	r5, #0
     b4c:	da03      	bge.n	b56 <svpwm+0xfe>
     b4e:	2280      	movs	r2, #128	; 0x80
     b50:	00d2      	lsls	r2, r2, #3
     b52:	4691      	mov	r9, r2
     b54:	444d      	add	r5, r9
     b56:	4642      	mov	r2, r8
     b58:	009b      	lsls	r3, r3, #2
     b5a:	58d1      	ldr	r1, [r2, r3]
     b5c:	23fa      	movs	r3, #250	; 0xfa
     b5e:	4379      	muls	r1, r7
     b60:	4465      	add	r5, ip
     b62:	05ad      	lsls	r5, r5, #22
     b64:	1509      	asrs	r1, r1, #20
     b66:	0dad      	lsrs	r5, r5, #22
     b68:	005b      	lsls	r3, r3, #1
     b6a:	2600      	movs	r6, #0
     b6c:	4299      	cmp	r1, r3
     b6e:	dd01      	ble.n	b74 <svpwm+0x11c>
     b70:	0019      	movs	r1, r3
     b72:	3601      	adds	r6, #1
     b74:	006a      	lsls	r2, r5, #1
     b76:	1952      	adds	r2, r2, r5
     b78:	1252      	asrs	r2, r2, #9
     b7a:	2a05      	cmp	r2, #5
     b7c:	d84b      	bhi.n	c16 <svpwm+0x1be>
     b7e:	4b6c      	ldr	r3, [pc, #432]	; (d30 <svpwm+0x2d8>)
     b80:	0092      	lsls	r2, r2, #2
     b82:	589b      	ldr	r3, [r3, r2]
     b84:	469f      	mov	pc, r3
     b86:	2280      	movs	r2, #128	; 0x80
     b88:	0092      	lsls	r2, r2, #2
     b8a:	1b55      	subs	r5, r2, r5
     b8c:	e7dd      	b.n	b4a <svpwm+0xf2>
     b8e:	9900      	ldr	r1, [sp, #0]
     b90:	1b5f      	subs	r7, r3, r5
     b92:	195b      	adds	r3, r3, r5
     b94:	424d      	negs	r5, r1
     b96:	e784      	b.n	aa2 <svpwm+0x4a>
     b98:	1079      	asrs	r1, r7, #1
     b9a:	18cb      	adds	r3, r1, r3
     b9c:	6871      	ldr	r1, [r6, #4]
     b9e:	1b3c      	subs	r4, r7, r4
     ba0:	1a6d      	subs	r5, r5, r1
     ba2:	e78a      	b.n	aba <svpwm+0x62>
     ba4:	1a67      	subs	r7, r4, r1
     ba6:	10a1      	asrs	r1, r4, #2
     ba8:	18c9      	adds	r1, r1, r3
     baa:	68b3      	ldr	r3, [r6, #8]
     bac:	1aed      	subs	r5, r5, r3
     bae:	e790      	b.n	ad2 <svpwm+0x7a>
     bb0:	10fc      	asrs	r4, r7, #3
     bb2:	1861      	adds	r1, r4, r1
     bb4:	68f4      	ldr	r4, [r6, #12]
     bb6:	1afb      	subs	r3, r7, r3
     bb8:	1b2d      	subs	r5, r5, r4
     bba:	e796      	b.n	aea <svpwm+0x92>
     bbc:	1b1f      	subs	r7, r3, r4
     bbe:	111c      	asrs	r4, r3, #4
     bc0:	6933      	ldr	r3, [r6, #16]
     bc2:	1864      	adds	r4, r4, r1
     bc4:	1aed      	subs	r5, r5, r3
     bc6:	e79c      	b.n	b02 <svpwm+0xaa>
     bc8:	1179      	asrs	r1, r7, #5
     bca:	1909      	adds	r1, r1, r4
     bcc:	6974      	ldr	r4, [r6, #20]
     bce:	1afb      	subs	r3, r7, r3
     bd0:	1b2d      	subs	r5, r5, r4
     bd2:	e7a2      	b.n	b1a <svpwm+0xc2>
     bd4:	1b1f      	subs	r7, r3, r4
     bd6:	119b      	asrs	r3, r3, #6
     bd8:	1859      	adds	r1, r3, r1
     bda:	69b3      	ldr	r3, [r6, #24]
     bdc:	1aed      	subs	r5, r5, r3
     bde:	e7a8      	b.n	b32 <svpwm+0xda>
     be0:	4b54      	ldr	r3, [pc, #336]	; (d34 <svpwm+0x2dc>)
     be2:	4a55      	ldr	r2, [pc, #340]	; (d38 <svpwm+0x2e0>)
     be4:	1b5b      	subs	r3, r3, r5
     be6:	3556      	adds	r5, #86	; 0x56
     be8:	059b      	lsls	r3, r3, #22
     bea:	05ad      	lsls	r5, r5, #22
     bec:	0d1b      	lsrs	r3, r3, #20
     bee:	0d2d      	lsrs	r5, r5, #20
     bf0:	589b      	ldr	r3, [r3, r2]
     bf2:	58ac      	ldr	r4, [r5, r2]
     bf4:	434b      	muls	r3, r1
     bf6:	434c      	muls	r4, r1
     bf8:	129b      	asrs	r3, r3, #10
     bfa:	12a1      	asrs	r1, r4, #10
     bfc:	1aca      	subs	r2, r1, r3
     bfe:	6002      	str	r2, [r0, #0]
     c00:	425a      	negs	r2, r3
     c02:	1a52      	subs	r2, r2, r1
     c04:	1859      	adds	r1, r3, r1
     c06:	6042      	str	r2, [r0, #4]
     c08:	6081      	str	r1, [r0, #8]
     c0a:	0030      	movs	r0, r6
     c0c:	b011      	add	sp, #68	; 0x44
     c0e:	bc0c      	pop	{r2, r3}
     c10:	4690      	mov	r8, r2
     c12:	4699      	mov	r9, r3
     c14:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c16:	4b49      	ldr	r3, [pc, #292]	; (d3c <svpwm+0x2e4>)
     c18:	4c47      	ldr	r4, [pc, #284]	; (d38 <svpwm+0x2e0>)
     c1a:	1b5b      	subs	r3, r3, r5
     c1c:	059b      	lsls	r3, r3, #22
     c1e:	0d1b      	lsrs	r3, r3, #20
     c20:	591a      	ldr	r2, [r3, r4]
     c22:	23c0      	movs	r3, #192	; 0xc0
     c24:	009b      	lsls	r3, r3, #2
     c26:	469c      	mov	ip, r3
     c28:	4465      	add	r5, ip
     c2a:	05ad      	lsls	r5, r5, #22
     c2c:	0d2d      	lsrs	r5, r5, #20
     c2e:	592c      	ldr	r4, [r5, r4]
     c30:	434a      	muls	r2, r1
     c32:	4361      	muls	r1, r4
     c34:	1292      	asrs	r2, r2, #10
     c36:	1289      	asrs	r1, r1, #10
     c38:	1853      	adds	r3, r2, r1
     c3a:	6003      	str	r3, [r0, #0]
     c3c:	1a8b      	subs	r3, r1, r2
     c3e:	4252      	negs	r2, r2
     c40:	1a52      	subs	r2, r2, r1
     c42:	6043      	str	r3, [r0, #4]
     c44:	6082      	str	r2, [r0, #8]
     c46:	e7e0      	b.n	c0a <svpwm+0x1b2>
     c48:	4b3d      	ldr	r3, [pc, #244]	; (d40 <svpwm+0x2e8>)
     c4a:	4a3b      	ldr	r2, [pc, #236]	; (d38 <svpwm+0x2e0>)
     c4c:	1b5b      	subs	r3, r3, r5
     c4e:	059b      	lsls	r3, r3, #22
     c50:	0d1b      	lsrs	r3, r3, #20
     c52:	589f      	ldr	r7, [r3, r2]
     c54:	4b3b      	ldr	r3, [pc, #236]	; (d44 <svpwm+0x2ec>)
     c56:	434f      	muls	r7, r1
     c58:	469c      	mov	ip, r3
     c5a:	4465      	add	r5, ip
     c5c:	05ad      	lsls	r5, r5, #22
     c5e:	0d2d      	lsrs	r5, r5, #20
     c60:	58ac      	ldr	r4, [r5, r2]
     c62:	12bf      	asrs	r7, r7, #10
     c64:	4361      	muls	r1, r4
     c66:	1289      	asrs	r1, r1, #10
     c68:	1a7b      	subs	r3, r7, r1
     c6a:	6003      	str	r3, [r0, #0]
     c6c:	187b      	adds	r3, r7, r1
     c6e:	427f      	negs	r7, r7
     c70:	1a7f      	subs	r7, r7, r1
     c72:	6043      	str	r3, [r0, #4]
     c74:	6087      	str	r7, [r0, #8]
     c76:	e7c8      	b.n	c0a <svpwm+0x1b2>
     c78:	4b33      	ldr	r3, [pc, #204]	; (d48 <svpwm+0x2f0>)
     c7a:	4a2f      	ldr	r2, [pc, #188]	; (d38 <svpwm+0x2e0>)
     c7c:	1b5b      	subs	r3, r3, r5
     c7e:	35ac      	adds	r5, #172	; 0xac
     c80:	059b      	lsls	r3, r3, #22
     c82:	35ff      	adds	r5, #255	; 0xff
     c84:	0d1b      	lsrs	r3, r3, #20
     c86:	05ad      	lsls	r5, r5, #22
     c88:	589b      	ldr	r3, [r3, r2]
     c8a:	0d2d      	lsrs	r5, r5, #20
     c8c:	58ac      	ldr	r4, [r5, r2]
     c8e:	434b      	muls	r3, r1
     c90:	4361      	muls	r1, r4
     c92:	129b      	asrs	r3, r3, #10
     c94:	1289      	asrs	r1, r1, #10
     c96:	425a      	negs	r2, r3
     c98:	1a52      	subs	r2, r2, r1
     c9a:	6002      	str	r2, [r0, #0]
     c9c:	185a      	adds	r2, r3, r1
     c9e:	1ac9      	subs	r1, r1, r3
     ca0:	6042      	str	r2, [r0, #4]
     ca2:	6081      	str	r1, [r0, #8]
     ca4:	e7b1      	b.n	c0a <svpwm+0x1b2>
     ca6:	4b29      	ldr	r3, [pc, #164]	; (d4c <svpwm+0x2f4>)
     ca8:	4a23      	ldr	r2, [pc, #140]	; (d38 <svpwm+0x2e0>)
     caa:	1b5b      	subs	r3, r3, r5
     cac:	3501      	adds	r5, #1
     cae:	059b      	lsls	r3, r3, #22
     cb0:	35ff      	adds	r5, #255	; 0xff
     cb2:	0d1b      	lsrs	r3, r3, #20
     cb4:	05ad      	lsls	r5, r5, #22
     cb6:	589b      	ldr	r3, [r3, r2]
     cb8:	0d2d      	lsrs	r5, r5, #20
     cba:	58ac      	ldr	r4, [r5, r2]
     cbc:	434b      	muls	r3, r1
     cbe:	434c      	muls	r4, r1
     cc0:	129b      	asrs	r3, r3, #10
     cc2:	12a1      	asrs	r1, r4, #10
     cc4:	425a      	negs	r2, r3
     cc6:	1a52      	subs	r2, r2, r1
     cc8:	6002      	str	r2, [r0, #0]
     cca:	1a5a      	subs	r2, r3, r1
     ccc:	1859      	adds	r1, r3, r1
     cce:	6042      	str	r2, [r0, #4]
     cd0:	6081      	str	r1, [r0, #8]
     cd2:	e79a      	b.n	c0a <svpwm+0x1b2>
     cd4:	4b1e      	ldr	r3, [pc, #120]	; (d50 <svpwm+0x2f8>)
     cd6:	4a18      	ldr	r2, [pc, #96]	; (d38 <svpwm+0x2e0>)
     cd8:	1b5b      	subs	r3, r3, r5
     cda:	3d55      	subs	r5, #85	; 0x55
     cdc:	059b      	lsls	r3, r3, #22
     cde:	05ad      	lsls	r5, r5, #22
     ce0:	0d1b      	lsrs	r3, r3, #20
     ce2:	0d2d      	lsrs	r5, r5, #20
     ce4:	589b      	ldr	r3, [r3, r2]
     ce6:	58ac      	ldr	r4, [r5, r2]
     ce8:	434b      	muls	r3, r1
     cea:	4361      	muls	r1, r4
     cec:	129b      	asrs	r3, r3, #10
     cee:	1289      	asrs	r1, r1, #10
     cf0:	185a      	adds	r2, r3, r1
     cf2:	6002      	str	r2, [r0, #0]
     cf4:	425a      	negs	r2, r3
     cf6:	1a52      	subs	r2, r2, r1
     cf8:	1a59      	subs	r1, r3, r1
     cfa:	6042      	str	r2, [r0, #4]
     cfc:	6081      	str	r1, [r0, #8]
     cfe:	e784      	b.n	c0a <svpwm+0x1b2>
     d00:	69f3      	ldr	r3, [r6, #28]
     d02:	11cc      	asrs	r4, r1, #7
     d04:	1b3f      	subs	r7, r7, r4
     d06:	1aed      	subs	r5, r5, r3
     d08:	e71c      	b.n	b44 <svpwm+0xec>
     d0a:	2300      	movs	r3, #0
     d0c:	e71b      	b.n	b46 <svpwm+0xee>
     d0e:	0027      	movs	r7, r4
     d10:	2301      	movs	r3, #1
     d12:	e718      	b.n	b46 <svpwm+0xee>
     d14:	2302      	movs	r3, #2
     d16:	e716      	b.n	b46 <svpwm+0xee>
     d18:	001f      	movs	r7, r3
     d1a:	2303      	movs	r3, #3
     d1c:	e713      	b.n	b46 <svpwm+0xee>
     d1e:	2304      	movs	r3, #4
     d20:	e711      	b.n	b46 <svpwm+0xee>
     d22:	001f      	movs	r7, r3
     d24:	2305      	movs	r3, #5
     d26:	e70e      	b.n	b46 <svpwm+0xee>
     d28:	2306      	movs	r3, #6
     d2a:	e70c      	b.n	b46 <svpwm+0xee>
     d2c:	000022e8 	.word	0x000022e8
     d30:	000022d0 	.word	0x000022d0
     d34:	00000a54 	.word	0x00000a54
     d38:	000012d0 	.word	0x000012d0
     d3c:	000007aa 	.word	0x000007aa
     d40:	00000854 	.word	0x00000854
     d44:	00000256 	.word	0x00000256
     d48:	000008ff 	.word	0x000008ff
     d4c:	000009aa 	.word	0x000009aa
     d50:	00000aff 	.word	0x00000aff

00000d54 <get_speed>:
     d54:	4a0f      	ldr	r2, [pc, #60]	; (d94 <get_speed+0x40>)
     d56:	b510      	push	{r4, lr}
     d58:	6813      	ldr	r3, [r2, #0]
     d5a:	6854      	ldr	r4, [r2, #4]
     d5c:	1ac3      	subs	r3, r0, r3
     d5e:	6050      	str	r0, [r2, #4]
     d60:	6014      	str	r4, [r2, #0]
     d62:	17da      	asrs	r2, r3, #31
     d64:	1898      	adds	r0, r3, r2
     d66:	4050      	eors	r0, r2
     d68:	22fa      	movs	r2, #250	; 0xfa
     d6a:	0092      	lsls	r2, r2, #2
     d6c:	4290      	cmp	r0, r2
     d6e:	dd04      	ble.n	d7a <get_speed+0x26>
     d70:	2b00      	cmp	r3, #0
     d72:	db0a      	blt.n	d8a <get_speed+0x36>
     d74:	4a08      	ldr	r2, [pc, #32]	; (d98 <get_speed+0x44>)
     d76:	4694      	mov	ip, r2
     d78:	4463      	add	r3, ip
     d7a:	680a      	ldr	r2, [r1, #0]
     d7c:	4807      	ldr	r0, [pc, #28]	; (d9c <get_speed+0x48>)
     d7e:	18d2      	adds	r2, r2, r3
     d80:	105b      	asrs	r3, r3, #1
     d82:	4343      	muls	r3, r0
     d84:	600a      	str	r2, [r1, #0]
     d86:	1318      	asrs	r0, r3, #12
     d88:	bd10      	pop	{r4, pc}
     d8a:	2280      	movs	r2, #128	; 0x80
     d8c:	0152      	lsls	r2, r2, #5
     d8e:	4694      	mov	ip, r2
     d90:	4463      	add	r3, ip
     d92:	e7f2      	b.n	d7a <get_speed+0x26>
     d94:	2000004c 	.word	0x2000004c
     d98:	fffff000 	.word	0xfffff000
     d9c:	0002ae7c 	.word	0x0002ae7c

00000da0 <mfilter>:
     da0:	221f      	movs	r2, #31
     da2:	4908      	ldr	r1, [pc, #32]	; (dc4 <mfilter+0x24>)
     da4:	b510      	push	{r4, lr}
     da6:	688b      	ldr	r3, [r1, #8]
     da8:	3301      	adds	r3, #1
     daa:	4013      	ands	r3, r2
     dac:	608b      	str	r3, [r1, #8]
     dae:	009b      	lsls	r3, r3, #2
     db0:	18cb      	adds	r3, r1, r3
     db2:	68ca      	ldr	r2, [r1, #12]
     db4:	691c      	ldr	r4, [r3, #16]
     db6:	6118      	str	r0, [r3, #16]
     db8:	1b12      	subs	r2, r2, r4
     dba:	1812      	adds	r2, r2, r0
     dbc:	1150      	asrs	r0, r2, #5
     dbe:	60ca      	str	r2, [r1, #12]
     dc0:	bd10      	pop	{r4, pc}
     dc2:	46c0      	nop			; (mov r8, r8)
     dc4:	2000004c 	.word	0x2000004c

00000dc8 <NVIC_EnableIRQ>:
     dc8:	b580      	push	{r7, lr}
     dca:	b082      	sub	sp, #8
     dcc:	af00      	add	r7, sp, #0
     dce:	0002      	movs	r2, r0
     dd0:	1dfb      	adds	r3, r7, #7
     dd2:	701a      	strb	r2, [r3, #0]
     dd4:	4909      	ldr	r1, [pc, #36]	; (dfc <NVIC_EnableIRQ+0x34>)
     dd6:	1dfb      	adds	r3, r7, #7
     dd8:	781b      	ldrb	r3, [r3, #0]
     dda:	b25b      	sxtb	r3, r3
     ddc:	095b      	lsrs	r3, r3, #5
     dde:	1dfa      	adds	r2, r7, #7
     de0:	7812      	ldrb	r2, [r2, #0]
     de2:	0010      	movs	r0, r2
     de4:	221f      	movs	r2, #31
     de6:	4002      	ands	r2, r0
     de8:	2001      	movs	r0, #1
     dea:	4090      	lsls	r0, r2
     dec:	0002      	movs	r2, r0
     dee:	009b      	lsls	r3, r3, #2
     df0:	505a      	str	r2, [r3, r1]
     df2:	46c0      	nop			; (mov r8, r8)
     df4:	46bd      	mov	sp, r7
     df6:	b002      	add	sp, #8
     df8:	bd80      	pop	{r7, pc}
     dfa:	46c0      	nop			; (mov r8, r8)
     dfc:	e000e100 	.word	0xe000e100

00000e00 <PortConfig>:
     e00:	b580      	push	{r7, lr}
     e02:	af00      	add	r7, sp, #0
     e04:	4b42      	ldr	r3, [pc, #264]	; (f10 <PortConfig+0x110>)
     e06:	4a42      	ldr	r2, [pc, #264]	; (f10 <PortConfig+0x110>)
     e08:	69d2      	ldr	r2, [r2, #28]
     e0a:	2180      	movs	r1, #128	; 0x80
     e0c:	0389      	lsls	r1, r1, #14
     e0e:	430a      	orrs	r2, r1
     e10:	61da      	str	r2, [r3, #28]
     e12:	4b40      	ldr	r3, [pc, #256]	; (f14 <PortConfig+0x114>)
     e14:	4a3f      	ldr	r2, [pc, #252]	; (f14 <PortConfig+0x114>)
     e16:	6892      	ldr	r2, [r2, #8]
     e18:	493f      	ldr	r1, [pc, #252]	; (f18 <PortConfig+0x118>)
     e1a:	400a      	ands	r2, r1
     e1c:	609a      	str	r2, [r3, #8]
     e1e:	4b3d      	ldr	r3, [pc, #244]	; (f14 <PortConfig+0x114>)
     e20:	4a3c      	ldr	r2, [pc, #240]	; (f14 <PortConfig+0x114>)
     e22:	6892      	ldr	r2, [r2, #8]
     e24:	493d      	ldr	r1, [pc, #244]	; (f1c <PortConfig+0x11c>)
     e26:	430a      	orrs	r2, r1
     e28:	609a      	str	r2, [r3, #8]
     e2a:	4b3a      	ldr	r3, [pc, #232]	; (f14 <PortConfig+0x114>)
     e2c:	4a39      	ldr	r2, [pc, #228]	; (f14 <PortConfig+0x114>)
     e2e:	6852      	ldr	r2, [r2, #4]
     e30:	21fc      	movs	r1, #252	; 0xfc
     e32:	0109      	lsls	r1, r1, #4
     e34:	430a      	orrs	r2, r1
     e36:	605a      	str	r2, [r3, #4]
     e38:	4b36      	ldr	r3, [pc, #216]	; (f14 <PortConfig+0x114>)
     e3a:	4a36      	ldr	r2, [pc, #216]	; (f14 <PortConfig+0x114>)
     e3c:	68d2      	ldr	r2, [r2, #12]
     e3e:	21fc      	movs	r1, #252	; 0xfc
     e40:	0109      	lsls	r1, r1, #4
     e42:	430a      	orrs	r2, r1
     e44:	60da      	str	r2, [r3, #12]
     e46:	4b33      	ldr	r3, [pc, #204]	; (f14 <PortConfig+0x114>)
     e48:	4a32      	ldr	r2, [pc, #200]	; (f14 <PortConfig+0x114>)
     e4a:	6992      	ldr	r2, [r2, #24]
     e4c:	4934      	ldr	r1, [pc, #208]	; (f20 <PortConfig+0x120>)
     e4e:	430a      	orrs	r2, r1
     e50:	619a      	str	r2, [r3, #24]
     e52:	4b2f      	ldr	r3, [pc, #188]	; (f10 <PortConfig+0x110>)
     e54:	4a2e      	ldr	r2, [pc, #184]	; (f10 <PortConfig+0x110>)
     e56:	69d2      	ldr	r2, [r2, #28]
     e58:	2180      	movs	r1, #128	; 0x80
     e5a:	0489      	lsls	r1, r1, #18
     e5c:	430a      	orrs	r2, r1
     e5e:	61da      	str	r2, [r3, #28]
     e60:	4b30      	ldr	r3, [pc, #192]	; (f24 <PortConfig+0x124>)
     e62:	4a30      	ldr	r2, [pc, #192]	; (f24 <PortConfig+0x124>)
     e64:	68d2      	ldr	r2, [r2, #12]
     e66:	2102      	movs	r1, #2
     e68:	438a      	bics	r2, r1
     e6a:	60da      	str	r2, [r3, #12]
     e6c:	4b28      	ldr	r3, [pc, #160]	; (f10 <PortConfig+0x110>)
     e6e:	4a28      	ldr	r2, [pc, #160]	; (f10 <PortConfig+0x110>)
     e70:	69d2      	ldr	r2, [r2, #28]
     e72:	2180      	movs	r1, #128	; 0x80
     e74:	0449      	lsls	r1, r1, #17
     e76:	430a      	orrs	r2, r1
     e78:	61da      	str	r2, [r3, #28]
     e7a:	4b2b      	ldr	r3, [pc, #172]	; (f28 <PortConfig+0x128>)
     e7c:	4a2a      	ldr	r2, [pc, #168]	; (f28 <PortConfig+0x128>)
     e7e:	6892      	ldr	r2, [r2, #8]
     e80:	492a      	ldr	r1, [pc, #168]	; (f2c <PortConfig+0x12c>)
     e82:	400a      	ands	r2, r1
     e84:	609a      	str	r2, [r3, #8]
     e86:	4b28      	ldr	r3, [pc, #160]	; (f28 <PortConfig+0x128>)
     e88:	4a27      	ldr	r2, [pc, #156]	; (f28 <PortConfig+0x128>)
     e8a:	6892      	ldr	r2, [r2, #8]
     e8c:	21a0      	movs	r1, #160	; 0xa0
     e8e:	02c9      	lsls	r1, r1, #11
     e90:	430a      	orrs	r2, r1
     e92:	609a      	str	r2, [r3, #8]
     e94:	4b24      	ldr	r3, [pc, #144]	; (f28 <PortConfig+0x128>)
     e96:	4a24      	ldr	r2, [pc, #144]	; (f28 <PortConfig+0x128>)
     e98:	68d2      	ldr	r2, [r2, #12]
     e9a:	21c0      	movs	r1, #192	; 0xc0
     e9c:	0089      	lsls	r1, r1, #2
     e9e:	430a      	orrs	r2, r1
     ea0:	60da      	str	r2, [r3, #12]
     ea2:	4b21      	ldr	r3, [pc, #132]	; (f28 <PortConfig+0x128>)
     ea4:	4a20      	ldr	r2, [pc, #128]	; (f28 <PortConfig+0x128>)
     ea6:	6992      	ldr	r2, [r2, #24]
     ea8:	21c0      	movs	r1, #192	; 0xc0
     eaa:	0309      	lsls	r1, r1, #12
     eac:	430a      	orrs	r2, r1
     eae:	619a      	str	r2, [r3, #24]
     eb0:	4b1d      	ldr	r3, [pc, #116]	; (f28 <PortConfig+0x128>)
     eb2:	4a1d      	ldr	r2, [pc, #116]	; (f28 <PortConfig+0x128>)
     eb4:	6852      	ldr	r2, [r2, #4]
     eb6:	2180      	movs	r1, #128	; 0x80
     eb8:	0089      	lsls	r1, r1, #2
     eba:	430a      	orrs	r2, r1
     ebc:	605a      	str	r2, [r3, #4]
     ebe:	4b1a      	ldr	r3, [pc, #104]	; (f28 <PortConfig+0x128>)
     ec0:	4a19      	ldr	r2, [pc, #100]	; (f28 <PortConfig+0x128>)
     ec2:	6852      	ldr	r2, [r2, #4]
     ec4:	491a      	ldr	r1, [pc, #104]	; (f30 <PortConfig+0x130>)
     ec6:	400a      	ands	r2, r1
     ec8:	605a      	str	r2, [r3, #4]
     eca:	4b11      	ldr	r3, [pc, #68]	; (f10 <PortConfig+0x110>)
     ecc:	4a10      	ldr	r2, [pc, #64]	; (f10 <PortConfig+0x110>)
     ece:	69d2      	ldr	r2, [r2, #28]
     ed0:	2180      	movs	r1, #128	; 0x80
     ed2:	0409      	lsls	r1, r1, #16
     ed4:	430a      	orrs	r2, r1
     ed6:	61da      	str	r2, [r3, #28]
     ed8:	4b16      	ldr	r3, [pc, #88]	; (f34 <PortConfig+0x134>)
     eda:	2200      	movs	r2, #0
     edc:	609a      	str	r2, [r3, #8]
     ede:	4b15      	ldr	r3, [pc, #84]	; (f34 <PortConfig+0x134>)
     ee0:	2200      	movs	r2, #0
     ee2:	601a      	str	r2, [r3, #0]
     ee4:	4b13      	ldr	r3, [pc, #76]	; (f34 <PortConfig+0x134>)
     ee6:	4a13      	ldr	r2, [pc, #76]	; (f34 <PortConfig+0x134>)
     ee8:	6852      	ldr	r2, [r2, #4]
     eea:	2160      	movs	r1, #96	; 0x60
     eec:	430a      	orrs	r2, r1
     eee:	605a      	str	r2, [r3, #4]
     ef0:	4b10      	ldr	r3, [pc, #64]	; (f34 <PortConfig+0x134>)
     ef2:	4a10      	ldr	r2, [pc, #64]	; (f34 <PortConfig+0x134>)
     ef4:	68d2      	ldr	r2, [r2, #12]
     ef6:	2160      	movs	r1, #96	; 0x60
     ef8:	430a      	orrs	r2, r1
     efa:	60da      	str	r2, [r3, #12]
     efc:	4b0d      	ldr	r3, [pc, #52]	; (f34 <PortConfig+0x134>)
     efe:	4a0d      	ldr	r2, [pc, #52]	; (f34 <PortConfig+0x134>)
     f00:	6992      	ldr	r2, [r2, #24]
     f02:	21f0      	movs	r1, #240	; 0xf0
     f04:	0189      	lsls	r1, r1, #6
     f06:	430a      	orrs	r2, r1
     f08:	619a      	str	r2, [r3, #24]
     f0a:	46c0      	nop			; (mov r8, r8)
     f0c:	46bd      	mov	sp, r7
     f0e:	bd80      	pop	{r7, pc}
     f10:	40020000 	.word	0x40020000
     f14:	400a8000 	.word	0x400a8000
     f18:	ff000fff 	.word	0xff000fff
     f1c:	00aaa000 	.word	0x00aaa000
     f20:	00fff000 	.word	0x00fff000
     f24:	400c8000 	.word	0x400c8000
     f28:	400c0000 	.word	0x400c0000
     f2c:	fff0ffff 	.word	0xfff0ffff
     f30:	fffffeff 	.word	0xfffffeff
     f34:	400b8000 	.word	0x400b8000

00000f38 <ClkConfig>:
     f38:	b580      	push	{r7, lr}
     f3a:	af00      	add	r7, sp, #0
     f3c:	4b18      	ldr	r3, [pc, #96]	; (fa0 <ClkConfig+0x68>)
     f3e:	4a18      	ldr	r2, [pc, #96]	; (fa0 <ClkConfig+0x68>)
     f40:	6892      	ldr	r2, [r2, #8]
     f42:	2101      	movs	r1, #1
     f44:	430a      	orrs	r2, r1
     f46:	609a      	str	r2, [r3, #8]
     f48:	46c0      	nop			; (mov r8, r8)
     f4a:	4b15      	ldr	r3, [pc, #84]	; (fa0 <ClkConfig+0x68>)
     f4c:	681b      	ldr	r3, [r3, #0]
     f4e:	2204      	movs	r2, #4
     f50:	4013      	ands	r3, r2
     f52:	d0fa      	beq.n	f4a <ClkConfig+0x12>
     f54:	4b12      	ldr	r3, [pc, #72]	; (fa0 <ClkConfig+0x68>)
     f56:	4a12      	ldr	r2, [pc, #72]	; (fa0 <ClkConfig+0x68>)
     f58:	68d2      	ldr	r2, [r2, #12]
     f5a:	2102      	movs	r1, #2
     f5c:	430a      	orrs	r2, r1
     f5e:	60da      	str	r2, [r3, #12]
     f60:	4b0f      	ldr	r3, [pc, #60]	; (fa0 <ClkConfig+0x68>)
     f62:	4a10      	ldr	r2, [pc, #64]	; (fa4 <ClkConfig+0x6c>)
     f64:	605a      	str	r2, [r3, #4]
     f66:	46c0      	nop			; (mov r8, r8)
     f68:	4b0d      	ldr	r3, [pc, #52]	; (fa0 <ClkConfig+0x68>)
     f6a:	681b      	ldr	r3, [r3, #0]
     f6c:	2202      	movs	r2, #2
     f6e:	4013      	ands	r3, r2
     f70:	d0fa      	beq.n	f68 <ClkConfig+0x30>
     f72:	4b0d      	ldr	r3, [pc, #52]	; (fa8 <ClkConfig+0x70>)
     f74:	4a0c      	ldr	r2, [pc, #48]	; (fa8 <ClkConfig+0x70>)
     f76:	6812      	ldr	r2, [r2, #0]
     f78:	2120      	movs	r1, #32
     f7a:	430a      	orrs	r2, r1
     f7c:	601a      	str	r2, [r3, #0]
     f7e:	4b08      	ldr	r3, [pc, #32]	; (fa0 <ClkConfig+0x68>)
     f80:	4a07      	ldr	r2, [pc, #28]	; (fa0 <ClkConfig+0x68>)
     f82:	68d2      	ldr	r2, [r2, #12]
     f84:	2180      	movs	r1, #128	; 0x80
     f86:	0049      	lsls	r1, r1, #1
     f88:	430a      	orrs	r2, r1
     f8a:	60da      	str	r2, [r3, #12]
     f8c:	4b04      	ldr	r3, [pc, #16]	; (fa0 <ClkConfig+0x68>)
     f8e:	4a04      	ldr	r2, [pc, #16]	; (fa0 <ClkConfig+0x68>)
     f90:	68d2      	ldr	r2, [r2, #12]
     f92:	2104      	movs	r1, #4
     f94:	430a      	orrs	r2, r1
     f96:	60da      	str	r2, [r3, #12]
     f98:	46c0      	nop			; (mov r8, r8)
     f9a:	46bd      	mov	sp, r7
     f9c:	bd80      	pop	{r7, pc}
     f9e:	46c0      	nop			; (mov r8, r8)
     fa0:	40020000 	.word	0x40020000
     fa4:	00000e04 	.word	0x00000e04
     fa8:	40018000 	.word	0x40018000

00000fac <TimerConfig>:
     fac:	b580      	push	{r7, lr}
     fae:	af00      	add	r7, sp, #0
     fb0:	4b7b      	ldr	r3, [pc, #492]	; (11a0 <TimerConfig+0x1f4>)
     fb2:	4a7b      	ldr	r2, [pc, #492]	; (11a0 <TimerConfig+0x1f4>)
     fb4:	69d2      	ldr	r2, [r2, #28]
     fb6:	2180      	movs	r1, #128	; 0x80
     fb8:	0309      	lsls	r1, r1, #12
     fba:	430a      	orrs	r2, r1
     fbc:	61da      	str	r2, [r3, #28]
     fbe:	4b78      	ldr	r3, [pc, #480]	; (11a0 <TimerConfig+0x1f4>)
     fc0:	4a77      	ldr	r2, [pc, #476]	; (11a0 <TimerConfig+0x1f4>)
     fc2:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fc4:	2180      	movs	r1, #128	; 0x80
     fc6:	04c9      	lsls	r1, r1, #19
     fc8:	430a      	orrs	r2, r1
     fca:	629a      	str	r2, [r3, #40]	; 0x28
     fcc:	4b74      	ldr	r3, [pc, #464]	; (11a0 <TimerConfig+0x1f4>)
     fce:	4a74      	ldr	r2, [pc, #464]	; (11a0 <TimerConfig+0x1f4>)
     fd0:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fd2:	4974      	ldr	r1, [pc, #464]	; (11a4 <TimerConfig+0x1f8>)
     fd4:	400a      	ands	r2, r1
     fd6:	629a      	str	r2, [r3, #40]	; 0x28
     fd8:	4b73      	ldr	r3, [pc, #460]	; (11a8 <TimerConfig+0x1fc>)
     fda:	2200      	movs	r2, #0
     fdc:	601a      	str	r2, [r3, #0]
     fde:	4b72      	ldr	r3, [pc, #456]	; (11a8 <TimerConfig+0x1fc>)
     fe0:	2204      	movs	r2, #4
     fe2:	605a      	str	r2, [r3, #4]
     fe4:	4b70      	ldr	r3, [pc, #448]	; (11a8 <TimerConfig+0x1fc>)
     fe6:	4a71      	ldr	r2, [pc, #452]	; (11ac <TimerConfig+0x200>)
     fe8:	609a      	str	r2, [r3, #8]
     fea:	4b6f      	ldr	r3, [pc, #444]	; (11a8 <TimerConfig+0x1fc>)
     fec:	2280      	movs	r2, #128	; 0x80
     fee:	0092      	lsls	r2, r2, #2
     ff0:	611a      	str	r2, [r3, #16]
     ff2:	4b6d      	ldr	r3, [pc, #436]	; (11a8 <TimerConfig+0x1fc>)
     ff4:	2280      	movs	r2, #128	; 0x80
     ff6:	0092      	lsls	r2, r2, #2
     ff8:	615a      	str	r2, [r3, #20]
     ffa:	4b6b      	ldr	r3, [pc, #428]	; (11a8 <TimerConfig+0x1fc>)
     ffc:	2280      	movs	r2, #128	; 0x80
     ffe:	0092      	lsls	r2, r2, #2
    1000:	619a      	str	r2, [r3, #24]
    1002:	4b69      	ldr	r3, [pc, #420]	; (11a8 <TimerConfig+0x1fc>)
    1004:	4a68      	ldr	r2, [pc, #416]	; (11a8 <TimerConfig+0x1fc>)
    1006:	6a12      	ldr	r2, [r2, #32]
    1008:	4969      	ldr	r1, [pc, #420]	; (11b0 <TimerConfig+0x204>)
    100a:	400a      	ands	r2, r1
    100c:	621a      	str	r2, [r3, #32]
    100e:	4b66      	ldr	r3, [pc, #408]	; (11a8 <TimerConfig+0x1fc>)
    1010:	4a65      	ldr	r2, [pc, #404]	; (11a8 <TimerConfig+0x1fc>)
    1012:	6a12      	ldr	r2, [r2, #32]
    1014:	21e0      	movs	r1, #224	; 0xe0
    1016:	0109      	lsls	r1, r1, #4
    1018:	430a      	orrs	r2, r1
    101a:	621a      	str	r2, [r3, #32]
    101c:	4b62      	ldr	r3, [pc, #392]	; (11a8 <TimerConfig+0x1fc>)
    101e:	4a62      	ldr	r2, [pc, #392]	; (11a8 <TimerConfig+0x1fc>)
    1020:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1022:	210f      	movs	r1, #15
    1024:	438a      	bics	r2, r1
    1026:	631a      	str	r2, [r3, #48]	; 0x30
    1028:	4b5f      	ldr	r3, [pc, #380]	; (11a8 <TimerConfig+0x1fc>)
    102a:	4a5f      	ldr	r2, [pc, #380]	; (11a8 <TimerConfig+0x1fc>)
    102c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    102e:	210c      	movs	r1, #12
    1030:	430a      	orrs	r2, r1
    1032:	631a      	str	r2, [r3, #48]	; 0x30
    1034:	4b5c      	ldr	r3, [pc, #368]	; (11a8 <TimerConfig+0x1fc>)
    1036:	4a5c      	ldr	r2, [pc, #368]	; (11a8 <TimerConfig+0x1fc>)
    1038:	6b12      	ldr	r2, [r2, #48]	; 0x30
    103a:	2101      	movs	r1, #1
    103c:	430a      	orrs	r2, r1
    103e:	631a      	str	r2, [r3, #48]	; 0x30
    1040:	4b59      	ldr	r3, [pc, #356]	; (11a8 <TimerConfig+0x1fc>)
    1042:	4a59      	ldr	r2, [pc, #356]	; (11a8 <TimerConfig+0x1fc>)
    1044:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1046:	495b      	ldr	r1, [pc, #364]	; (11b4 <TimerConfig+0x208>)
    1048:	400a      	ands	r2, r1
    104a:	631a      	str	r2, [r3, #48]	; 0x30
    104c:	4b56      	ldr	r3, [pc, #344]	; (11a8 <TimerConfig+0x1fc>)
    104e:	4a56      	ldr	r2, [pc, #344]	; (11a8 <TimerConfig+0x1fc>)
    1050:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1052:	21c0      	movs	r1, #192	; 0xc0
    1054:	0109      	lsls	r1, r1, #4
    1056:	430a      	orrs	r2, r1
    1058:	631a      	str	r2, [r3, #48]	; 0x30
    105a:	4b53      	ldr	r3, [pc, #332]	; (11a8 <TimerConfig+0x1fc>)
    105c:	4a52      	ldr	r2, [pc, #328]	; (11a8 <TimerConfig+0x1fc>)
    105e:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1060:	2180      	movs	r1, #128	; 0x80
    1062:	0049      	lsls	r1, r1, #1
    1064:	430a      	orrs	r2, r1
    1066:	631a      	str	r2, [r3, #48]	; 0x30
    1068:	4b4f      	ldr	r3, [pc, #316]	; (11a8 <TimerConfig+0x1fc>)
    106a:	4a4f      	ldr	r2, [pc, #316]	; (11a8 <TimerConfig+0x1fc>)
    106c:	6e12      	ldr	r2, [r2, #96]	; 0x60
    106e:	2108      	movs	r1, #8
    1070:	430a      	orrs	r2, r1
    1072:	661a      	str	r2, [r3, #96]	; 0x60
    1074:	4b4c      	ldr	r3, [pc, #304]	; (11a8 <TimerConfig+0x1fc>)
    1076:	4a4c      	ldr	r2, [pc, #304]	; (11a8 <TimerConfig+0x1fc>)
    1078:	6a52      	ldr	r2, [r2, #36]	; 0x24
    107a:	494d      	ldr	r1, [pc, #308]	; (11b0 <TimerConfig+0x204>)
    107c:	400a      	ands	r2, r1
    107e:	625a      	str	r2, [r3, #36]	; 0x24
    1080:	4b49      	ldr	r3, [pc, #292]	; (11a8 <TimerConfig+0x1fc>)
    1082:	4a49      	ldr	r2, [pc, #292]	; (11a8 <TimerConfig+0x1fc>)
    1084:	6a52      	ldr	r2, [r2, #36]	; 0x24
    1086:	21e0      	movs	r1, #224	; 0xe0
    1088:	0109      	lsls	r1, r1, #4
    108a:	430a      	orrs	r2, r1
    108c:	625a      	str	r2, [r3, #36]	; 0x24
    108e:	4b46      	ldr	r3, [pc, #280]	; (11a8 <TimerConfig+0x1fc>)
    1090:	4a45      	ldr	r2, [pc, #276]	; (11a8 <TimerConfig+0x1fc>)
    1092:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1094:	210f      	movs	r1, #15
    1096:	438a      	bics	r2, r1
    1098:	635a      	str	r2, [r3, #52]	; 0x34
    109a:	4b43      	ldr	r3, [pc, #268]	; (11a8 <TimerConfig+0x1fc>)
    109c:	4a42      	ldr	r2, [pc, #264]	; (11a8 <TimerConfig+0x1fc>)
    109e:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10a0:	210c      	movs	r1, #12
    10a2:	430a      	orrs	r2, r1
    10a4:	635a      	str	r2, [r3, #52]	; 0x34
    10a6:	4b40      	ldr	r3, [pc, #256]	; (11a8 <TimerConfig+0x1fc>)
    10a8:	4a3f      	ldr	r2, [pc, #252]	; (11a8 <TimerConfig+0x1fc>)
    10aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10ac:	2101      	movs	r1, #1
    10ae:	430a      	orrs	r2, r1
    10b0:	635a      	str	r2, [r3, #52]	; 0x34
    10b2:	4b3d      	ldr	r3, [pc, #244]	; (11a8 <TimerConfig+0x1fc>)
    10b4:	4a3c      	ldr	r2, [pc, #240]	; (11a8 <TimerConfig+0x1fc>)
    10b6:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10b8:	493e      	ldr	r1, [pc, #248]	; (11b4 <TimerConfig+0x208>)
    10ba:	400a      	ands	r2, r1
    10bc:	635a      	str	r2, [r3, #52]	; 0x34
    10be:	4b3a      	ldr	r3, [pc, #232]	; (11a8 <TimerConfig+0x1fc>)
    10c0:	4a39      	ldr	r2, [pc, #228]	; (11a8 <TimerConfig+0x1fc>)
    10c2:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10c4:	21c0      	movs	r1, #192	; 0xc0
    10c6:	0109      	lsls	r1, r1, #4
    10c8:	430a      	orrs	r2, r1
    10ca:	635a      	str	r2, [r3, #52]	; 0x34
    10cc:	4b36      	ldr	r3, [pc, #216]	; (11a8 <TimerConfig+0x1fc>)
    10ce:	4a36      	ldr	r2, [pc, #216]	; (11a8 <TimerConfig+0x1fc>)
    10d0:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10d2:	2180      	movs	r1, #128	; 0x80
    10d4:	0049      	lsls	r1, r1, #1
    10d6:	430a      	orrs	r2, r1
    10d8:	635a      	str	r2, [r3, #52]	; 0x34
    10da:	4b33      	ldr	r3, [pc, #204]	; (11a8 <TimerConfig+0x1fc>)
    10dc:	4a32      	ldr	r2, [pc, #200]	; (11a8 <TimerConfig+0x1fc>)
    10de:	6e52      	ldr	r2, [r2, #100]	; 0x64
    10e0:	2108      	movs	r1, #8
    10e2:	430a      	orrs	r2, r1
    10e4:	665a      	str	r2, [r3, #100]	; 0x64
    10e6:	4b30      	ldr	r3, [pc, #192]	; (11a8 <TimerConfig+0x1fc>)
    10e8:	4a2f      	ldr	r2, [pc, #188]	; (11a8 <TimerConfig+0x1fc>)
    10ea:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10ec:	4930      	ldr	r1, [pc, #192]	; (11b0 <TimerConfig+0x204>)
    10ee:	400a      	ands	r2, r1
    10f0:	629a      	str	r2, [r3, #40]	; 0x28
    10f2:	4b2d      	ldr	r3, [pc, #180]	; (11a8 <TimerConfig+0x1fc>)
    10f4:	4a2c      	ldr	r2, [pc, #176]	; (11a8 <TimerConfig+0x1fc>)
    10f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10f8:	21e0      	movs	r1, #224	; 0xe0
    10fa:	0109      	lsls	r1, r1, #4
    10fc:	430a      	orrs	r2, r1
    10fe:	629a      	str	r2, [r3, #40]	; 0x28
    1100:	4b29      	ldr	r3, [pc, #164]	; (11a8 <TimerConfig+0x1fc>)
    1102:	4a29      	ldr	r2, [pc, #164]	; (11a8 <TimerConfig+0x1fc>)
    1104:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1106:	210f      	movs	r1, #15
    1108:	438a      	bics	r2, r1
    110a:	639a      	str	r2, [r3, #56]	; 0x38
    110c:	4b26      	ldr	r3, [pc, #152]	; (11a8 <TimerConfig+0x1fc>)
    110e:	4a26      	ldr	r2, [pc, #152]	; (11a8 <TimerConfig+0x1fc>)
    1110:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1112:	210c      	movs	r1, #12
    1114:	430a      	orrs	r2, r1
    1116:	639a      	str	r2, [r3, #56]	; 0x38
    1118:	4b23      	ldr	r3, [pc, #140]	; (11a8 <TimerConfig+0x1fc>)
    111a:	4a23      	ldr	r2, [pc, #140]	; (11a8 <TimerConfig+0x1fc>)
    111c:	6b92      	ldr	r2, [r2, #56]	; 0x38
    111e:	2101      	movs	r1, #1
    1120:	430a      	orrs	r2, r1
    1122:	639a      	str	r2, [r3, #56]	; 0x38
    1124:	4b20      	ldr	r3, [pc, #128]	; (11a8 <TimerConfig+0x1fc>)
    1126:	4a20      	ldr	r2, [pc, #128]	; (11a8 <TimerConfig+0x1fc>)
    1128:	6b92      	ldr	r2, [r2, #56]	; 0x38
    112a:	4922      	ldr	r1, [pc, #136]	; (11b4 <TimerConfig+0x208>)
    112c:	400a      	ands	r2, r1
    112e:	639a      	str	r2, [r3, #56]	; 0x38
    1130:	4b1d      	ldr	r3, [pc, #116]	; (11a8 <TimerConfig+0x1fc>)
    1132:	4a1d      	ldr	r2, [pc, #116]	; (11a8 <TimerConfig+0x1fc>)
    1134:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1136:	21c0      	movs	r1, #192	; 0xc0
    1138:	0109      	lsls	r1, r1, #4
    113a:	430a      	orrs	r2, r1
    113c:	639a      	str	r2, [r3, #56]	; 0x38
    113e:	4b1a      	ldr	r3, [pc, #104]	; (11a8 <TimerConfig+0x1fc>)
    1140:	4a19      	ldr	r2, [pc, #100]	; (11a8 <TimerConfig+0x1fc>)
    1142:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1144:	2180      	movs	r1, #128	; 0x80
    1146:	0049      	lsls	r1, r1, #1
    1148:	430a      	orrs	r2, r1
    114a:	639a      	str	r2, [r3, #56]	; 0x38
    114c:	4b16      	ldr	r3, [pc, #88]	; (11a8 <TimerConfig+0x1fc>)
    114e:	4a16      	ldr	r2, [pc, #88]	; (11a8 <TimerConfig+0x1fc>)
    1150:	6e92      	ldr	r2, [r2, #104]	; 0x68
    1152:	2108      	movs	r1, #8
    1154:	430a      	orrs	r2, r1
    1156:	669a      	str	r2, [r3, #104]	; 0x68
    1158:	4b13      	ldr	r3, [pc, #76]	; (11a8 <TimerConfig+0x1fc>)
    115a:	4a13      	ldr	r2, [pc, #76]	; (11a8 <TimerConfig+0x1fc>)
    115c:	6c12      	ldr	r2, [r2, #64]	; 0x40
    115e:	2196      	movs	r1, #150	; 0x96
    1160:	0189      	lsls	r1, r1, #6
    1162:	430a      	orrs	r2, r1
    1164:	641a      	str	r2, [r3, #64]	; 0x40
    1166:	4b10      	ldr	r3, [pc, #64]	; (11a8 <TimerConfig+0x1fc>)
    1168:	4a0f      	ldr	r2, [pc, #60]	; (11a8 <TimerConfig+0x1fc>)
    116a:	6c52      	ldr	r2, [r2, #68]	; 0x44
    116c:	2196      	movs	r1, #150	; 0x96
    116e:	0189      	lsls	r1, r1, #6
    1170:	430a      	orrs	r2, r1
    1172:	645a      	str	r2, [r3, #68]	; 0x44
    1174:	4b0c      	ldr	r3, [pc, #48]	; (11a8 <TimerConfig+0x1fc>)
    1176:	4a0c      	ldr	r2, [pc, #48]	; (11a8 <TimerConfig+0x1fc>)
    1178:	6c92      	ldr	r2, [r2, #72]	; 0x48
    117a:	2196      	movs	r1, #150	; 0x96
    117c:	0189      	lsls	r1, r1, #6
    117e:	430a      	orrs	r2, r1
    1180:	649a      	str	r2, [r3, #72]	; 0x48
    1182:	4b09      	ldr	r3, [pc, #36]	; (11a8 <TimerConfig+0x1fc>)
    1184:	4a08      	ldr	r2, [pc, #32]	; (11a8 <TimerConfig+0x1fc>)
    1186:	6d92      	ldr	r2, [r2, #88]	; 0x58
    1188:	2102      	movs	r1, #2
    118a:	430a      	orrs	r2, r1
    118c:	659a      	str	r2, [r3, #88]	; 0x58
    118e:	4b06      	ldr	r3, [pc, #24]	; (11a8 <TimerConfig+0x1fc>)
    1190:	2201      	movs	r2, #1
    1192:	60da      	str	r2, [r3, #12]
    1194:	200d      	movs	r0, #13
    1196:	f7ff fe17 	bl	dc8 <NVIC_EnableIRQ>
    119a:	46c0      	nop			; (mov r8, r8)
    119c:	46bd      	mov	sp, r7
    119e:	bd80      	pop	{r7, pc}
    11a0:	40020000 	.word	0x40020000
    11a4:	ff00ffff 	.word	0xff00ffff
    11a8:	40098000 	.word	0x40098000
    11ac:	000003ff 	.word	0x000003ff
    11b0:	fffff1ff 	.word	0xfffff1ff
    11b4:	fffff0ff 	.word	0xfffff0ff

000011b8 <SystemInit>:
    11b8:	b580      	push	{r7, lr}
    11ba:	af00      	add	r7, sp, #0
    11bc:	f7ff febc 	bl	f38 <ClkConfig>
    11c0:	f7ff fe1e 	bl	e00 <PortConfig>
    11c4:	f7ff fef2 	bl	fac <TimerConfig>
    11c8:	46c0      	nop			; (mov r8, r8)
    11ca:	46bd      	mov	sp, r7
    11cc:	bd80      	pop	{r7, pc}
    11ce:	46c0      	nop			; (mov r8, r8)

000011d0 <b2g>:
    11d0:	0843      	lsrs	r3, r0, #1
    11d2:	4058      	eors	r0, r3
    11d4:	4770      	bx	lr
    11d6:	46c0      	nop			; (mov r8, r8)

000011d8 <g2b>:
    11d8:	0003      	movs	r3, r0
    11da:	2000      	movs	r0, #0
    11dc:	2b00      	cmp	r3, #0
    11de:	d002      	beq.n	11e6 <g2b+0xe>
    11e0:	4058      	eors	r0, r3
    11e2:	085b      	lsrs	r3, r3, #1
    11e4:	d1fc      	bne.n	11e0 <g2b+0x8>
    11e6:	4770      	bx	lr

000011e8 <adc_init>:
    11e8:	b580      	push	{r7, lr}
    11ea:	af00      	add	r7, sp, #0
    11ec:	4b0f      	ldr	r3, [pc, #60]	; (122c <adc_init+0x44>)
    11ee:	4a0f      	ldr	r2, [pc, #60]	; (122c <adc_init+0x44>)
    11f0:	69d2      	ldr	r2, [r2, #28]
    11f2:	2180      	movs	r1, #128	; 0x80
    11f4:	0289      	lsls	r1, r1, #10
    11f6:	430a      	orrs	r2, r1
    11f8:	61da      	str	r2, [r3, #28]
    11fa:	4b0c      	ldr	r3, [pc, #48]	; (122c <adc_init+0x44>)
    11fc:	4a0c      	ldr	r2, [pc, #48]	; (1230 <adc_init+0x48>)
    11fe:	615a      	str	r2, [r3, #20]
    1200:	4b0c      	ldr	r3, [pc, #48]	; (1234 <adc_init+0x4c>)
    1202:	2200      	movs	r2, #0
    1204:	601a      	str	r2, [r3, #0]
    1206:	4b0b      	ldr	r3, [pc, #44]	; (1234 <adc_init+0x4c>)
    1208:	4a0a      	ldr	r2, [pc, #40]	; (1234 <adc_init+0x4c>)
    120a:	6812      	ldr	r2, [r2, #0]
    120c:	490a      	ldr	r1, [pc, #40]	; (1238 <adc_init+0x50>)
    120e:	430a      	orrs	r2, r1
    1210:	601a      	str	r2, [r3, #0]
    1212:	4b08      	ldr	r3, [pc, #32]	; (1234 <adc_init+0x4c>)
    1214:	4a07      	ldr	r2, [pc, #28]	; (1234 <adc_init+0x4c>)
    1216:	6a92      	ldr	r2, [r2, #40]	; 0x28
    1218:	2139      	movs	r1, #57	; 0x39
    121a:	430a      	orrs	r2, r1
    121c:	629a      	str	r2, [r3, #40]	; 0x28
    121e:	4b05      	ldr	r3, [pc, #20]	; (1234 <adc_init+0x4c>)
    1220:	2210      	movs	r2, #16
    1222:	621a      	str	r2, [r3, #32]
    1224:	46c0      	nop			; (mov r8, r8)
    1226:	46bd      	mov	sp, r7
    1228:	bd80      	pop	{r7, pc}
    122a:	46c0      	nop			; (mov r8, r8)
    122c:	40020000 	.word	0x40020000
    1230:	00002020 	.word	0x00002020
    1234:	40088000 	.word	0x40088000
    1238:	00000205 	.word	0x00000205

0000123c <dma_init>:
    123c:	b580      	push	{r7, lr}
    123e:	af00      	add	r7, sp, #0
    1240:	4b18      	ldr	r3, [pc, #96]	; (12a4 <dma_init+0x68>)
    1242:	4a18      	ldr	r2, [pc, #96]	; (12a4 <dma_init+0x68>)
    1244:	69d2      	ldr	r2, [r2, #28]
    1246:	2120      	movs	r1, #32
    1248:	430a      	orrs	r2, r1
    124a:	61da      	str	r2, [r3, #28]
    124c:	4b16      	ldr	r3, [pc, #88]	; (12a8 <dma_init+0x6c>)
    124e:	4a17      	ldr	r2, [pc, #92]	; (12ac <dma_init+0x70>)
    1250:	609a      	str	r2, [r3, #8]
    1252:	4b15      	ldr	r3, [pc, #84]	; (12a8 <dma_init+0x6c>)
    1254:	2201      	movs	r2, #1
    1256:	4252      	negs	r2, r2
    1258:	62da      	str	r2, [r3, #44]	; 0x2c
    125a:	4b13      	ldr	r3, [pc, #76]	; (12a8 <dma_init+0x6c>)
    125c:	2201      	movs	r2, #1
    125e:	4252      	negs	r2, r2
    1260:	621a      	str	r2, [r3, #32]
    1262:	4b11      	ldr	r3, [pc, #68]	; (12a8 <dma_init+0x6c>)
    1264:	2201      	movs	r2, #1
    1266:	4252      	negs	r2, r2
    1268:	635a      	str	r2, [r3, #52]	; 0x34
    126a:	4b0f      	ldr	r3, [pc, #60]	; (12a8 <dma_init+0x6c>)
    126c:	2280      	movs	r2, #128	; 0x80
    126e:	05d2      	lsls	r2, r2, #23
    1270:	61da      	str	r2, [r3, #28]
    1272:	4b0d      	ldr	r3, [pc, #52]	; (12a8 <dma_init+0x6c>)
    1274:	2280      	movs	r2, #128	; 0x80
    1276:	05d2      	lsls	r2, r2, #23
    1278:	625a      	str	r2, [r3, #36]	; 0x24
    127a:	4b0b      	ldr	r3, [pc, #44]	; (12a8 <dma_init+0x6c>)
    127c:	2201      	movs	r2, #1
    127e:	605a      	str	r2, [r3, #4]
    1280:	4a0a      	ldr	r2, [pc, #40]	; (12ac <dma_init+0x70>)
    1282:	23f0      	movs	r3, #240	; 0xf0
    1284:	005b      	lsls	r3, r3, #1
    1286:	490a      	ldr	r1, [pc, #40]	; (12b0 <dma_init+0x74>)
    1288:	50d1      	str	r1, [r2, r3]
    128a:	490a      	ldr	r1, [pc, #40]	; (12b4 <dma_init+0x78>)
    128c:	4a07      	ldr	r2, [pc, #28]	; (12ac <dma_init+0x70>)
    128e:	23f2      	movs	r3, #242	; 0xf2
    1290:	005b      	lsls	r3, r3, #1
    1292:	50d1      	str	r1, [r2, r3]
    1294:	4a05      	ldr	r2, [pc, #20]	; (12ac <dma_init+0x70>)
    1296:	23f4      	movs	r3, #244	; 0xf4
    1298:	005b      	lsls	r3, r3, #1
    129a:	4907      	ldr	r1, [pc, #28]	; (12b8 <dma_init+0x7c>)
    129c:	50d1      	str	r1, [r2, r3]
    129e:	46c0      	nop			; (mov r8, r8)
    12a0:	46bd      	mov	sp, r7
    12a2:	bd80      	pop	{r7, pc}
    12a4:	40020000 	.word	0x40020000
    12a8:	40028000 	.word	0x40028000
    12ac:	20100000 	.word	0x20100000
    12b0:	40088018 	.word	0x40088018
    12b4:	2010020c 	.word	0x2010020c
    12b8:	ae000031 	.word	0xae000031

000012bc <adc_dma_init>:
    12bc:	b580      	push	{r7, lr}
    12be:	af00      	add	r7, sp, #0
    12c0:	f7ff ff92 	bl	11e8 <adc_init>
    12c4:	f7ff ffba 	bl	123c <dma_init>
    12c8:	46c0      	nop			; (mov r8, r8)
    12ca:	46bd      	mov	sp, r7
    12cc:	bd80      	pop	{r7, pc}
    12ce:	46c0      	nop			; (mov r8, r8)

000012d0 <cos_tb>:
    12d0:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    12e0:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12f0:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    1300:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    1310:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    1320:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    1330:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    1340:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1350:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1360:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1370:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1380:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1390:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    13a0:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    13b0:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    13c0:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    13d0:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    13e0:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13f0:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    1400:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    1410:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    1420:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    1430:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    1440:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1450:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1460:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1470:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1480:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1490:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    14a0:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    14b0:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    14c0:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    14d0:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    14e0:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14f0:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    1500:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    1510:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    1520:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    1530:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    1540:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1550:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1560:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1570:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1580:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1590:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    15a0:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    15b0:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    15c0:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    15d0:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    15e0:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15f0:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    1600:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    1610:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    1620:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    1630:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    1640:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1650:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1660:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1670:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1680:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1690:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    16a0:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    16b0:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    16c0:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    16d0:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    16e0:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16f0:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    1700:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    1710:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    1720:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    1730:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    1740:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1750:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1760:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1770:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1780:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1790:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    17a0:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    17b0:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    17c0:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    17d0:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    17e0:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17f0:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    1800:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    1810:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    1820:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    1830:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    1840:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1850:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1860:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1870:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1880:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1890:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    18a0:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    18b0:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    18c0:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    18d0:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    18e0:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18f0:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    1900:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    1910:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    1920:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    1930:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    1940:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1950:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1960:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1970:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1980:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1990:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    19a0:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    19b0:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    19c0:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    19d0:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    19e0:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19f0:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    1a00:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    1a10:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    1a20:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    1a30:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    1a40:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a50:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a60:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a70:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a80:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a90:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1aa0:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1ab0:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1ac0:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ad0:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ae0:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1af0:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1b00:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1b10:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1b20:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1b30:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1b40:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b50:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b60:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b70:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b80:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b90:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1ba0:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1bb0:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1bc0:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1bd0:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1be0:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1bf0:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1c00:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1c10:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1c20:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1c30:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1c40:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c50:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c60:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c70:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c80:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c90:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1ca0:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1cb0:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1cc0:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1cd0:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1ce0:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1cf0:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1d00:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1d10:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1d20:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1d30:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1d40:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d50:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d60:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d70:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d80:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d90:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1da0:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1db0:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1dc0:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1dd0:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1de0:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1df0:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1e00:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1e10:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1e20:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1e30:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1e40:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e50:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e60:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e70:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e80:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e90:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1ea0:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1eb0:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1ec0:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1ed0:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1ee0:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1ef0:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1f00:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1f10:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1f20:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1f30:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1f40:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f50:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f60:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f70:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f80:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f90:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1fa0:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1fb0:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1fc0:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1fd0:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1fe0:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1ff0:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    2000:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    2010:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    2020:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    2030:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    2040:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2050:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2060:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2070:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2080:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2090:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    20a0:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    20b0:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    20c0:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    20d0:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    20e0:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20f0:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    2100:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    2110:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    2120:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    2130:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    2140:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2150:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2160:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2170:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2180:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2190:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    21a0:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    21b0:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    21c0:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    21d0:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    21e0:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21f0:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    2200:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    2210:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    2220:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    2230:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    2240:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2250:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2260:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2270:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2280:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2290:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    22a0:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    22b0:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    22c0:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    22d0:	0c16 0000 0c48 0000 0c78 0000 0ca6 0000     ....H...x.......
    22e0:	0be0 0000 0cd4 0000 0080 0000 004c 0000     ............L...
    22f0:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    2300:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    2310:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    2320:	026e 0000 026e 0000                         n...n...
