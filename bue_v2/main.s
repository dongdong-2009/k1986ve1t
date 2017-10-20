
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 61 05 00 00 c1 05 00 00 c1 05 00 00     ... a...........
	...
      2c:	c1 05 00 00 00 00 00 00 00 00 00 00 c1 05 00 00     ................
      3c:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      4c:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      5c:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      6c:	c1 05 00 00 c1 05 00 00 35 05 00 00 c1 05 00 00     ........5.......
      7c:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      8c:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      9c:	c1 05 00 00 c1 05 00 00 00 00 00 00 00 00 00 00     ................
      ac:	c1 05 00 00 c1 05 00 00 c1 05 00 00 c1 05 00 00     ................
      bc:	c1 05 00 00                                         ....

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
     192:	f001 f823 	bl	11dc <g2b>
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
     278:	f000 ffa0 	bl	11bc <SystemInit>
     27c:	f001 f820 	bl	12c0 <adc_dma_init>
     280:	f7ff ff50 	bl	124 <encoder_init>
     284:	f7ff ff8e 	bl	1a4 <debug_init>
     288:	2396      	movs	r3, #150	; 0x96
     28a:	009a      	lsls	r2, r3, #2
     28c:	2396      	movs	r3, #150	; 0x96
     28e:	0099      	lsls	r1, r3, #2
     290:	4b9d      	ldr	r3, [pc, #628]	; (508 <_stack_size+0x108>)
     292:	0018      	movs	r0, r3
     294:	f000 f998 	bl	5c8 <reg_init>
     298:	2396      	movs	r3, #150	; 0x96
     29a:	009a      	lsls	r2, r3, #2
     29c:	2396      	movs	r3, #150	; 0x96
     29e:	0099      	lsls	r1, r3, #2
     2a0:	4b9a      	ldr	r3, [pc, #616]	; (50c <_stack_size+0x10c>)
     2a2:	0018      	movs	r0, r3
     2a4:	f000 f990 	bl	5c8 <reg_init>
     2a8:	23fa      	movs	r3, #250	; 0xfa
     2aa:	009a      	lsls	r2, r3, #2
     2ac:	4b98      	ldr	r3, [pc, #608]	; (510 <_stack_size+0x110>)
     2ae:	2100      	movs	r1, #0
     2b0:	0018      	movs	r0, r3
     2b2:	f000 f989 	bl	5c8 <reg_init>
     2b6:	23fa      	movs	r3, #250	; 0xfa
     2b8:	00da      	lsls	r2, r3, #3
     2ba:	4b96      	ldr	r3, [pc, #600]	; (514 <_stack_size+0x114>)
     2bc:	2100      	movs	r1, #0
     2be:	0018      	movs	r0, r3
     2c0:	f000 f982 	bl	5c8 <reg_init>
     2c4:	4b94      	ldr	r3, [pc, #592]	; (518 <_stack_size+0x118>)
     2c6:	2200      	movs	r2, #0
     2c8:	601a      	str	r2, [r3, #0]
     2ca:	2300      	movs	r3, #0
     2cc:	65bb      	str	r3, [r7, #88]	; 0x58
     2ce:	2300      	movs	r3, #0
     2d0:	657b      	str	r3, [r7, #84]	; 0x54
     2d2:	2300      	movs	r3, #0
     2d4:	647b      	str	r3, [r7, #68]	; 0x44
     2d6:	2300      	movs	r3, #0
     2d8:	643b      	str	r3, [r7, #64]	; 0x40
     2da:	2300      	movs	r3, #0
     2dc:	65fb      	str	r3, [r7, #92]	; 0x5c
     2de:	e029      	b.n	334 <main+0xf0>
     2e0:	f7ff ff02 	bl	e8 <adc_dma_wait>
     2e4:	4b8d      	ldr	r3, [pc, #564]	; (51c <_stack_size+0x11c>)
     2e6:	685b      	ldr	r3, [r3, #4]
     2e8:	051b      	lsls	r3, r3, #20
     2ea:	0d1a      	lsrs	r2, r3, #20
     2ec:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     2ee:	18d3      	adds	r3, r2, r3
     2f0:	65bb      	str	r3, [r7, #88]	; 0x58
     2f2:	4b8a      	ldr	r3, [pc, #552]	; (51c <_stack_size+0x11c>)
     2f4:	689b      	ldr	r3, [r3, #8]
     2f6:	051b      	lsls	r3, r3, #20
     2f8:	0d1a      	lsrs	r2, r3, #20
     2fa:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     2fc:	18d3      	adds	r3, r2, r3
     2fe:	657b      	str	r3, [r7, #84]	; 0x54
     300:	4b86      	ldr	r3, [pc, #536]	; (51c <_stack_size+0x11c>)
     302:	68db      	ldr	r3, [r3, #12]
     304:	051b      	lsls	r3, r3, #20
     306:	0d1a      	lsrs	r2, r3, #20
     308:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     30a:	18d3      	adds	r3, r2, r3
     30c:	647b      	str	r3, [r7, #68]	; 0x44
     30e:	f7ff ff39 	bl	184 <encoder_read>
     312:	0002      	movs	r2, r0
     314:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     316:	189b      	adds	r3, r3, r2
     318:	643b      	str	r3, [r7, #64]	; 0x40
     31a:	4b80      	ldr	r3, [pc, #512]	; (51c <_stack_size+0x11c>)
     31c:	681b      	ldr	r3, [r3, #0]
     31e:	051b      	lsls	r3, r3, #20
     320:	0d1a      	lsrs	r2, r3, #20
     322:	0013      	movs	r3, r2
     324:	009b      	lsls	r3, r3, #2
     326:	189b      	adds	r3, r3, r2
     328:	0018      	movs	r0, r3
     32a:	f000 fd3b 	bl	da4 <mfilter>
     32e:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     330:	3301      	adds	r3, #1
     332:	65fb      	str	r3, [r7, #92]	; 0x5c
     334:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     336:	4a7a      	ldr	r2, [pc, #488]	; (520 <_stack_size+0x120>)
     338:	4293      	cmp	r3, r2
     33a:	ddd1      	ble.n	2e0 <main+0x9c>
     33c:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     33e:	129b      	asrs	r3, r3, #10
     340:	65bb      	str	r3, [r7, #88]	; 0x58
     342:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     344:	129b      	asrs	r3, r3, #10
     346:	657b      	str	r3, [r7, #84]	; 0x54
     348:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     34a:	129b      	asrs	r3, r3, #10
     34c:	647b      	str	r3, [r7, #68]	; 0x44
     34e:	4b75      	ldr	r3, [pc, #468]	; (524 <_stack_size+0x124>)
     350:	6c7a      	ldr	r2, [r7, #68]	; 0x44
     352:	601a      	str	r2, [r3, #0]
     354:	6c3b      	ldr	r3, [r7, #64]	; 0x40
     356:	129b      	asrs	r3, r3, #10
     358:	643b      	str	r3, [r7, #64]	; 0x40
     35a:	4b73      	ldr	r3, [pc, #460]	; (528 <_stack_size+0x128>)
     35c:	4a72      	ldr	r2, [pc, #456]	; (528 <_stack_size+0x128>)
     35e:	6812      	ldr	r2, [r2, #0]
     360:	2120      	movs	r1, #32
     362:	438a      	bics	r2, r1
     364:	601a      	str	r2, [r3, #0]
     366:	f7ff febf 	bl	e8 <adc_dma_wait>
     36a:	4b6f      	ldr	r3, [pc, #444]	; (528 <_stack_size+0x128>)
     36c:	4a6e      	ldr	r2, [pc, #440]	; (528 <_stack_size+0x128>)
     36e:	6812      	ldr	r2, [r2, #0]
     370:	2120      	movs	r1, #32
     372:	430a      	orrs	r2, r1
     374:	601a      	str	r2, [r3, #0]
     376:	4b69      	ldr	r3, [pc, #420]	; (51c <_stack_size+0x11c>)
     378:	681b      	ldr	r3, [r3, #0]
     37a:	051b      	lsls	r3, r3, #20
     37c:	0d1a      	lsrs	r2, r3, #20
     37e:	0013      	movs	r3, r2
     380:	009b      	lsls	r3, r3, #2
     382:	189b      	adds	r3, r3, r2
     384:	0018      	movs	r0, r3
     386:	f000 fd0d 	bl	da4 <mfilter>
     38a:	0003      	movs	r3, r0
     38c:	65fb      	str	r3, [r7, #92]	; 0x5c
     38e:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     390:	10da      	asrs	r2, r3, #3
     392:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
     394:	18d3      	adds	r3, r2, r3
     396:	10db      	asrs	r3, r3, #3
     398:	2291      	movs	r2, #145	; 0x91
     39a:	0092      	lsls	r2, r2, #2
     39c:	189a      	adds	r2, r3, r2
     39e:	4b61      	ldr	r3, [pc, #388]	; (524 <_stack_size+0x124>)
     3a0:	601a      	str	r2, [r3, #0]
     3a2:	4b60      	ldr	r3, [pc, #384]	; (524 <_stack_size+0x124>)
     3a4:	681a      	ldr	r2, [r3, #0]
     3a6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
     3a8:	1ad2      	subs	r2, r2, r3
     3aa:	0013      	movs	r3, r2
     3ac:	00db      	lsls	r3, r3, #3
     3ae:	1a9b      	subs	r3, r3, r2
     3b0:	00da      	lsls	r2, r3, #3
     3b2:	1ad2      	subs	r2, r2, r3
     3b4:	4b58      	ldr	r3, [pc, #352]	; (518 <_stack_size+0x118>)
     3b6:	601a      	str	r2, [r3, #0]
     3b8:	4b58      	ldr	r3, [pc, #352]	; (51c <_stack_size+0x11c>)
     3ba:	685b      	ldr	r3, [r3, #4]
     3bc:	051b      	lsls	r3, r3, #20
     3be:	0d1a      	lsrs	r2, r3, #20
     3c0:	6dbb      	ldr	r3, [r7, #88]	; 0x58
     3c2:	1ad3      	subs	r3, r2, r3
     3c4:	633b      	str	r3, [r7, #48]	; 0x30
     3c6:	4b55      	ldr	r3, [pc, #340]	; (51c <_stack_size+0x11c>)
     3c8:	689b      	ldr	r3, [r3, #8]
     3ca:	051b      	lsls	r3, r3, #20
     3cc:	0d1a      	lsrs	r2, r3, #20
     3ce:	6d7b      	ldr	r3, [r7, #84]	; 0x54
     3d0:	1ad3      	subs	r3, r2, r3
     3d2:	62fb      	str	r3, [r7, #44]	; 0x2c
     3d4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
     3d6:	425a      	negs	r2, r3
     3d8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
     3da:	1ad3      	subs	r3, r2, r3
     3dc:	62bb      	str	r3, [r7, #40]	; 0x28
     3de:	4b4f      	ldr	r3, [pc, #316]	; (51c <_stack_size+0x11c>)
     3e0:	68db      	ldr	r3, [r3, #12]
     3e2:	051b      	lsls	r3, r3, #20
     3e4:	0d1b      	lsrs	r3, r3, #20
     3e6:	637b      	str	r3, [r7, #52]	; 0x34
     3e8:	f7ff fecc 	bl	184 <encoder_read>
     3ec:	0003      	movs	r3, r0
     3ee:	627b      	str	r3, [r7, #36]	; 0x24
     3f0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3f2:	3301      	adds	r3, #1
     3f4:	64fb      	str	r3, [r7, #76]	; 0x4c
     3f6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
     3f8:	2207      	movs	r2, #7
     3fa:	4013      	ands	r3, r2
     3fc:	d138      	bne.n	470 <_stack_size+0x70>
     3fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     400:	003a      	movs	r2, r7
     402:	0011      	movs	r1, r2
     404:	0018      	movs	r0, r3
     406:	f000 fca7 	bl	d58 <get_speed>
     40a:	0003      	movs	r3, r0
     40c:	623b      	str	r3, [r7, #32]
     40e:	4b42      	ldr	r3, [pc, #264]	; (518 <_stack_size+0x118>)
     410:	681a      	ldr	r2, [r3, #0]
     412:	683b      	ldr	r3, [r7, #0]
     414:	1ad1      	subs	r1, r2, r3
     416:	4b3f      	ldr	r3, [pc, #252]	; (514 <_stack_size+0x114>)
     418:	2200      	movs	r2, #0
     41a:	0018      	movs	r0, r3
     41c:	f000 f8da 	bl	5d4 <reg_update>
     420:	4b3c      	ldr	r3, [pc, #240]	; (514 <_stack_size+0x114>)
     422:	68db      	ldr	r3, [r3, #12]
     424:	129b      	asrs	r3, r3, #10
     426:	63bb      	str	r3, [r7, #56]	; 0x38
     428:	6bba      	ldr	r2, [r7, #56]	; 0x38
     42a:	6a3b      	ldr	r3, [r7, #32]
     42c:	1ad1      	subs	r1, r2, r3
     42e:	4b38      	ldr	r3, [pc, #224]	; (510 <_stack_size+0x110>)
     430:	2200      	movs	r2, #0
     432:	0018      	movs	r0, r3
     434:	f000 f8ce 	bl	5d4 <reg_update>
     438:	4b35      	ldr	r3, [pc, #212]	; (510 <_stack_size+0x110>)
     43a:	68db      	ldr	r3, [r3, #12]
     43c:	129b      	asrs	r3, r3, #10
     43e:	64bb      	str	r3, [r7, #72]	; 0x48
     440:	6cba      	ldr	r2, [r7, #72]	; 0x48
     442:	23fa      	movs	r3, #250	; 0xfa
     444:	009b      	lsls	r3, r3, #2
     446:	429a      	cmp	r2, r3
     448:	dd02      	ble.n	450 <_stack_size+0x50>
     44a:	23fa      	movs	r3, #250	; 0xfa
     44c:	009b      	lsls	r3, r3, #2
     44e:	64bb      	str	r3, [r7, #72]	; 0x48
     450:	6cbb      	ldr	r3, [r7, #72]	; 0x48
     452:	4a36      	ldr	r2, [pc, #216]	; (52c <_stack_size+0x12c>)
     454:	4293      	cmp	r3, r2
     456:	da01      	bge.n	45c <_stack_size+0x5c>
     458:	4b34      	ldr	r3, [pc, #208]	; (52c <_stack_size+0x12c>)
     45a:	64bb      	str	r3, [r7, #72]	; 0x48
     45c:	4b34      	ldr	r3, [pc, #208]	; (530 <_stack_size+0x130>)
     45e:	683a      	ldr	r2, [r7, #0]
     460:	6c39      	ldr	r1, [r7, #64]	; 0x40
     462:	1a8a      	subs	r2, r1, r2
     464:	10d2      	asrs	r2, r2, #3
     466:	2180      	movs	r1, #128	; 0x80
     468:	0109      	lsls	r1, r1, #4
     46a:	468c      	mov	ip, r1
     46c:	4462      	add	r2, ip
     46e:	605a      	str	r2, [r3, #4]
     470:	6a7b      	ldr	r3, [r7, #36]	; 0x24
     472:	059b      	lsls	r3, r3, #22
     474:	0d9b      	lsrs	r3, r3, #22
     476:	63fb      	str	r3, [r7, #60]	; 0x3c
     478:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
     47a:	22bc      	movs	r2, #188	; 0xbc
     47c:	0092      	lsls	r2, r2, #2
     47e:	4694      	mov	ip, r2
     480:	4463      	add	r3, ip
     482:	059b      	lsls	r3, r3, #22
     484:	0d9b      	lsrs	r3, r3, #22
     486:	63fb      	str	r3, [r7, #60]	; 0x3c
     488:	1d3b      	adds	r3, r7, #4
     48a:	6b3a      	ldr	r2, [r7, #48]	; 0x30
     48c:	601a      	str	r2, [r3, #0]
     48e:	1d3b      	adds	r3, r7, #4
     490:	6aba      	ldr	r2, [r7, #40]	; 0x28
     492:	605a      	str	r2, [r3, #4]
     494:	1d3b      	adds	r3, r7, #4
     496:	6afa      	ldr	r2, [r7, #44]	; 0x2c
     498:	609a      	str	r2, [r3, #8]
     49a:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     49c:	2310      	movs	r3, #16
     49e:	18f9      	adds	r1, r7, r3
     4a0:	1d3b      	adds	r3, r7, #4
     4a2:	0018      	movs	r0, r3
     4a4:	f000 f8ae 	bl	604 <abc_to_dq>
     4a8:	2310      	movs	r3, #16
     4aa:	18fb      	adds	r3, r7, r3
     4ac:	681b      	ldr	r3, [r3, #0]
     4ae:	425b      	negs	r3, r3
     4b0:	61fb      	str	r3, [r7, #28]
     4b2:	2310      	movs	r3, #16
     4b4:	18fb      	adds	r3, r7, r3
     4b6:	685b      	ldr	r3, [r3, #4]
     4b8:	6cba      	ldr	r2, [r7, #72]	; 0x48
     4ba:	1ad3      	subs	r3, r2, r3
     4bc:	61bb      	str	r3, [r7, #24]
     4be:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4c0:	69f9      	ldr	r1, [r7, #28]
     4c2:	4b11      	ldr	r3, [pc, #68]	; (508 <_stack_size+0x108>)
     4c4:	0018      	movs	r0, r3
     4c6:	f000 f885 	bl	5d4 <reg_update>
     4ca:	6d3a      	ldr	r2, [r7, #80]	; 0x50
     4cc:	69b9      	ldr	r1, [r7, #24]
     4ce:	4b0f      	ldr	r3, [pc, #60]	; (50c <_stack_size+0x10c>)
     4d0:	0018      	movs	r0, r3
     4d2:	f000 f87f 	bl	5d4 <reg_update>
     4d6:	4b0c      	ldr	r3, [pc, #48]	; (508 <_stack_size+0x108>)
     4d8:	68da      	ldr	r2, [r3, #12]
     4da:	2310      	movs	r3, #16
     4dc:	18fb      	adds	r3, r7, r3
     4de:	601a      	str	r2, [r3, #0]
     4e0:	4b0a      	ldr	r3, [pc, #40]	; (50c <_stack_size+0x10c>)
     4e2:	68da      	ldr	r2, [r3, #12]
     4e4:	2310      	movs	r3, #16
     4e6:	18fb      	adds	r3, r7, r3
     4e8:	605a      	str	r2, [r3, #4]
     4ea:	6bfa      	ldr	r2, [r7, #60]	; 0x3c
     4ec:	2310      	movs	r3, #16
     4ee:	18f9      	adds	r1, r7, r3
     4f0:	1d3b      	adds	r3, r7, #4
     4f2:	0018      	movs	r0, r3
     4f4:	f000 fab2 	bl	a5c <svpwm>
     4f8:	0003      	movs	r3, r0
     4fa:	653b      	str	r3, [r7, #80]	; 0x50
     4fc:	1d3b      	adds	r3, r7, #4
     4fe:	0018      	movs	r0, r3
     500:	f7ff fe66 	bl	1d0 <pwm_set>
     504:	e729      	b.n	35a <main+0x116>
     506:	46c0      	nop			; (mov r8, r8)
     508:	20000008 	.word	0x20000008
     50c:	20000018 	.word	0x20000018
     510:	20000028 	.word	0x20000028
     514:	20000038 	.word	0x20000038
     518:	20000000 	.word	0x20000000
     51c:	20100200 	.word	0x20100200
     520:	000003ff 	.word	0x000003ff
     524:	20000004 	.word	0x20000004
     528:	400b8000 	.word	0x400b8000
     52c:	fffffc18 	.word	0xfffffc18
     530:	40090000 	.word	0x40090000

00000534 <TIMER4_Handler>:
     534:	b580      	push	{r7, lr}
     536:	af00      	add	r7, sp, #0
     538:	4b07      	ldr	r3, [pc, #28]	; (558 <TIMER4_Handler+0x24>)
     53a:	2200      	movs	r2, #0
     53c:	655a      	str	r2, [r3, #84]	; 0x54
     53e:	4b07      	ldr	r3, [pc, #28]	; (55c <TIMER4_Handler+0x28>)
     540:	681b      	ldr	r3, [r3, #0]
     542:	1c5a      	adds	r2, r3, #1
     544:	4b05      	ldr	r3, [pc, #20]	; (55c <TIMER4_Handler+0x28>)
     546:	601a      	str	r2, [r3, #0]
     548:	f7ff fdba 	bl	c0 <adc_dma_start>
     54c:	f7ff fe0e 	bl	16c <encoder_start>
     550:	46c0      	nop			; (mov r8, r8)
     552:	46bd      	mov	sp, r7
     554:	bd80      	pop	{r7, pc}
     556:	46c0      	nop			; (mov r8, r8)
     558:	40098000 	.word	0x40098000
     55c:	20000048 	.word	0x20000048

00000560 <handler_reset>:
     560:	b580      	push	{r7, lr}
     562:	b082      	sub	sp, #8
     564:	af00      	add	r7, sp, #0
     566:	4b11      	ldr	r3, [pc, #68]	; (5ac <handler_reset+0x4c>)
     568:	607b      	str	r3, [r7, #4]
     56a:	4b11      	ldr	r3, [pc, #68]	; (5b0 <handler_reset+0x50>)
     56c:	603b      	str	r3, [r7, #0]
     56e:	e007      	b.n	580 <handler_reset+0x20>
     570:	683b      	ldr	r3, [r7, #0]
     572:	1d1a      	adds	r2, r3, #4
     574:	603a      	str	r2, [r7, #0]
     576:	687a      	ldr	r2, [r7, #4]
     578:	1d11      	adds	r1, r2, #4
     57a:	6079      	str	r1, [r7, #4]
     57c:	6812      	ldr	r2, [r2, #0]
     57e:	601a      	str	r2, [r3, #0]
     580:	683a      	ldr	r2, [r7, #0]
     582:	4b0c      	ldr	r3, [pc, #48]	; (5b4 <handler_reset+0x54>)
     584:	429a      	cmp	r2, r3
     586:	d3f3      	bcc.n	570 <handler_reset+0x10>
     588:	4b0b      	ldr	r3, [pc, #44]	; (5b8 <handler_reset+0x58>)
     58a:	603b      	str	r3, [r7, #0]
     58c:	e004      	b.n	598 <handler_reset+0x38>
     58e:	683b      	ldr	r3, [r7, #0]
     590:	1d1a      	adds	r2, r3, #4
     592:	603a      	str	r2, [r7, #0]
     594:	2200      	movs	r2, #0
     596:	601a      	str	r2, [r3, #0]
     598:	683a      	ldr	r2, [r7, #0]
     59a:	4b08      	ldr	r3, [pc, #32]	; (5bc <handler_reset+0x5c>)
     59c:	429a      	cmp	r2, r3
     59e:	d3f6      	bcc.n	58e <handler_reset+0x2e>
     5a0:	f7ff fe50 	bl	244 <main>
     5a4:	46c0      	nop			; (mov r8, r8)
     5a6:	46bd      	mov	sp, r7
     5a8:	b002      	add	sp, #8
     5aa:	bd80      	pop	{r7, pc}
     5ac:	0000232c 	.word	0x0000232c
     5b0:	20000000 	.word	0x20000000
     5b4:	20000000 	.word	0x20000000
     5b8:	20000000 	.word	0x20000000
     5bc:	200000dc 	.word	0x200000dc

000005c0 <default_handler>:
     5c0:	b580      	push	{r7, lr}
     5c2:	af00      	add	r7, sp, #0
     5c4:	e7fe      	b.n	5c4 <default_handler+0x4>
     5c6:	46c0      	nop			; (mov r8, r8)

000005c8 <reg_init>:
     5c8:	2300      	movs	r3, #0
     5ca:	6001      	str	r1, [r0, #0]
     5cc:	6042      	str	r2, [r0, #4]
     5ce:	6083      	str	r3, [r0, #8]
     5d0:	60c3      	str	r3, [r0, #12]
     5d2:	4770      	bx	lr

000005d4 <reg_update>:
     5d4:	b510      	push	{r4, lr}
     5d6:	6804      	ldr	r4, [r0, #0]
     5d8:	6883      	ldr	r3, [r0, #8]
     5da:	434c      	muls	r4, r1
     5dc:	2a00      	cmp	r2, #0
     5de:	d004      	beq.n	5ea <reg_update+0x16>
     5e0:	2b00      	cmp	r3, #0
     5e2:	dd09      	ble.n	5f8 <reg_update+0x24>
     5e4:	2c00      	cmp	r4, #0
     5e6:	dd00      	ble.n	5ea <reg_update+0x16>
     5e8:	2400      	movs	r4, #0
     5ea:	6842      	ldr	r2, [r0, #4]
     5ec:	18e3      	adds	r3, r4, r3
     5ee:	4351      	muls	r1, r2
     5f0:	18c9      	adds	r1, r1, r3
     5f2:	60c1      	str	r1, [r0, #12]
     5f4:	6083      	str	r3, [r0, #8]
     5f6:	bd10      	pop	{r4, pc}
     5f8:	2b00      	cmp	r3, #0
     5fa:	d0f6      	beq.n	5ea <reg_update+0x16>
     5fc:	43e2      	mvns	r2, r4
     5fe:	17d2      	asrs	r2, r2, #31
     600:	4014      	ands	r4, r2
     602:	e7f2      	b.n	5ea <reg_update+0x16>

00000604 <abc_to_dq>:
     604:	23c0      	movs	r3, #192	; 0xc0
     606:	b5f0      	push	{r4, r5, r6, r7, lr}
     608:	4647      	mov	r7, r8
     60a:	009b      	lsls	r3, r3, #2
     60c:	18d3      	adds	r3, r2, r3
     60e:	4d1b      	ldr	r5, [pc, #108]	; (67c <abc_to_dq+0x78>)
     610:	059b      	lsls	r3, r3, #22
     612:	0d1b      	lsrs	r3, r3, #20
     614:	595b      	ldr	r3, [r3, r5]
     616:	b480      	push	{r7}
     618:	4698      	mov	r8, r3
     61a:	4b19      	ldr	r3, [pc, #100]	; (680 <abc_to_dq+0x7c>)
     61c:	18d4      	adds	r4, r2, r3
     61e:	05a4      	lsls	r4, r4, #22
     620:	4b18      	ldr	r3, [pc, #96]	; (684 <abc_to_dq+0x80>)
     622:	0d24      	lsrs	r4, r4, #20
     624:	5967      	ldr	r7, [r4, r5]
     626:	18d4      	adds	r4, r2, r3
     628:	05a4      	lsls	r4, r4, #22
     62a:	4b17      	ldr	r3, [pc, #92]	; (688 <abc_to_dq+0x84>)
     62c:	0d24      	lsrs	r4, r4, #20
     62e:	5966      	ldr	r6, [r4, r5]
     630:	18d4      	adds	r4, r2, r3
     632:	05a4      	lsls	r4, r4, #22
     634:	0d24      	lsrs	r4, r4, #20
     636:	5964      	ldr	r4, [r4, r5]
     638:	6843      	ldr	r3, [r0, #4]
     63a:	4363      	muls	r3, r4
     63c:	0094      	lsls	r4, r2, #2
     63e:	469c      	mov	ip, r3
     640:	3256      	adds	r2, #86	; 0x56
     642:	32ff      	adds	r2, #255	; 0xff
     644:	6803      	ldr	r3, [r0, #0]
     646:	5964      	ldr	r4, [r4, r5]
     648:	0592      	lsls	r2, r2, #22
     64a:	0d12      	lsrs	r2, r2, #20
     64c:	5955      	ldr	r5, [r2, r5]
     64e:	435c      	muls	r4, r3
     650:	6883      	ldr	r3, [r0, #8]
     652:	4464      	add	r4, ip
     654:	435d      	muls	r5, r3
     656:	4643      	mov	r3, r8
     658:	1964      	adds	r4, r4, r5
     65a:	12a4      	asrs	r4, r4, #10
     65c:	600c      	str	r4, [r1, #0]
     65e:	6802      	ldr	r2, [r0, #0]
     660:	435a      	muls	r2, r3
     662:	6843      	ldr	r3, [r0, #4]
     664:	437b      	muls	r3, r7
     666:	18d3      	adds	r3, r2, r3
     668:	6882      	ldr	r2, [r0, #8]
     66a:	4372      	muls	r2, r6
     66c:	189b      	adds	r3, r3, r2
     66e:	425b      	negs	r3, r3
     670:	129b      	asrs	r3, r3, #10
     672:	604b      	str	r3, [r1, #4]
     674:	bc04      	pop	{r2}
     676:	4690      	mov	r8, r2
     678:	bdf0      	pop	{r4, r5, r6, r7, pc}
     67a:	46c0      	nop			; (mov r8, r8)
     67c:	000012d4 	.word	0x000012d4
     680:	000005aa 	.word	0x000005aa
     684:	00000455 	.word	0x00000455
     688:	000002aa 	.word	0x000002aa

0000068c <dq_to_abc>:
     68c:	b570      	push	{r4, r5, r6, lr}
     68e:	4d1a      	ldr	r5, [pc, #104]	; (6f8 <dq_to_abc+0x6c>)
     690:	0093      	lsls	r3, r2, #2
     692:	680c      	ldr	r4, [r1, #0]
     694:	595b      	ldr	r3, [r3, r5]
     696:	684e      	ldr	r6, [r1, #4]
     698:	435c      	muls	r4, r3
     69a:	23c0      	movs	r3, #192	; 0xc0
     69c:	009b      	lsls	r3, r3, #2
     69e:	18d3      	adds	r3, r2, r3
     6a0:	059b      	lsls	r3, r3, #22
     6a2:	0d1b      	lsrs	r3, r3, #20
     6a4:	595b      	ldr	r3, [r3, r5]
     6a6:	4373      	muls	r3, r6
     6a8:	1ae3      	subs	r3, r4, r3
     6aa:	151b      	asrs	r3, r3, #20
     6ac:	6003      	str	r3, [r0, #0]
     6ae:	4b13      	ldr	r3, [pc, #76]	; (6fc <dq_to_abc+0x70>)
     6b0:	680c      	ldr	r4, [r1, #0]
     6b2:	18d3      	adds	r3, r2, r3
     6b4:	059b      	lsls	r3, r3, #22
     6b6:	0d1b      	lsrs	r3, r3, #20
     6b8:	595b      	ldr	r3, [r3, r5]
     6ba:	684e      	ldr	r6, [r1, #4]
     6bc:	435c      	muls	r4, r3
     6be:	4b10      	ldr	r3, [pc, #64]	; (700 <dq_to_abc+0x74>)
     6c0:	18d3      	adds	r3, r2, r3
     6c2:	059b      	lsls	r3, r3, #22
     6c4:	0d1b      	lsrs	r3, r3, #20
     6c6:	595b      	ldr	r3, [r3, r5]
     6c8:	4373      	muls	r3, r6
     6ca:	1ae3      	subs	r3, r4, r3
     6cc:	151b      	asrs	r3, r3, #20
     6ce:	6043      	str	r3, [r0, #4]
     6d0:	0013      	movs	r3, r2
     6d2:	3356      	adds	r3, #86	; 0x56
     6d4:	33ff      	adds	r3, #255	; 0xff
     6d6:	059b      	lsls	r3, r3, #22
     6d8:	0d1b      	lsrs	r3, r3, #20
     6da:	595b      	ldr	r3, [r3, r5]
     6dc:	680c      	ldr	r4, [r1, #0]
     6de:	435c      	muls	r4, r3
     6e0:	4b08      	ldr	r3, [pc, #32]	; (704 <dq_to_abc+0x78>)
     6e2:	469c      	mov	ip, r3
     6e4:	4462      	add	r2, ip
     6e6:	0592      	lsls	r2, r2, #22
     6e8:	0d12      	lsrs	r2, r2, #20
     6ea:	5952      	ldr	r2, [r2, r5]
     6ec:	684b      	ldr	r3, [r1, #4]
     6ee:	4353      	muls	r3, r2
     6f0:	1ae3      	subs	r3, r4, r3
     6f2:	151b      	asrs	r3, r3, #20
     6f4:	6083      	str	r3, [r0, #8]
     6f6:	bd70      	pop	{r4, r5, r6, pc}
     6f8:	000012d4 	.word	0x000012d4
     6fc:	000002aa 	.word	0x000002aa
     700:	000005aa 	.word	0x000005aa
     704:	00000455 	.word	0x00000455

00000708 <cord_atan>:
     708:	b5f0      	push	{r4, r5, r6, r7, lr}
     70a:	464f      	mov	r7, r9
     70c:	4646      	mov	r6, r8
     70e:	b4c0      	push	{r6, r7}
     710:	4b63      	ldr	r3, [pc, #396]	; (8a0 <cord_atan+0x198>)
     712:	b091      	sub	sp, #68	; 0x44
     714:	001c      	movs	r4, r3
     716:	4694      	mov	ip, r2
     718:	466a      	mov	r2, sp
     71a:	4699      	mov	r9, r3
     71c:	cca8      	ldmia	r4!, {r3, r5, r7}
     71e:	c2a8      	stmia	r2!, {r3, r5, r7}
     720:	cca8      	ldmia	r4!, {r3, r5, r7}
     722:	c2a8      	stmia	r2!, {r3, r5, r7}
     724:	cc28      	ldmia	r4!, {r3, r5}
     726:	c228      	stmia	r2!, {r3, r5}
     728:	464b      	mov	r3, r9
     72a:	aa08      	add	r2, sp, #32
     72c:	3320      	adds	r3, #32
     72e:	4690      	mov	r8, r2
     730:	cbb0      	ldmia	r3!, {r4, r5, r7}
     732:	c2b0      	stmia	r2!, {r4, r5, r7}
     734:	cbb0      	ldmia	r3!, {r4, r5, r7}
     736:	c2b0      	stmia	r2!, {r4, r5, r7}
     738:	cb30      	ldmia	r3!, {r4, r5}
     73a:	c230      	stmia	r2!, {r4, r5}
     73c:	6802      	ldr	r2, [r0, #0]
     73e:	6845      	ldr	r5, [r0, #4]
     740:	17d4      	asrs	r4, r2, #31
     742:	1913      	adds	r3, r2, r4
     744:	466e      	mov	r6, sp
     746:	4063      	eors	r3, r4
     748:	2d00      	cmp	r5, #0
     74a:	dd69      	ble.n	820 <cord_atan+0x118>
     74c:	195f      	adds	r7, r3, r5
     74e:	1aeb      	subs	r3, r5, r3
     750:	9d00      	ldr	r5, [sp, #0]
     752:	2b00      	cmp	r3, #0
     754:	d100      	bne.n	758 <cord_atan+0x50>
     756:	e091      	b.n	87c <cord_atan+0x174>
     758:	105c      	asrs	r4, r3, #1
     75a:	2b00      	cmp	r3, #0
     75c:	dd65      	ble.n	82a <cord_atan+0x122>
     75e:	1078      	asrs	r0, r7, #1
     760:	1a1b      	subs	r3, r3, r0
     762:	6870      	ldr	r0, [r6, #4]
     764:	19e4      	adds	r4, r4, r7
     766:	4681      	mov	r9, r0
     768:	444d      	add	r5, r9
     76a:	2b00      	cmp	r3, #0
     76c:	d100      	bne.n	770 <cord_atan+0x68>
     76e:	e087      	b.n	880 <cord_atan+0x178>
     770:	1098      	asrs	r0, r3, #2
     772:	2b00      	cmp	r3, #0
     774:	dd5f      	ble.n	836 <cord_atan+0x12e>
     776:	1907      	adds	r7, r0, r4
     778:	10a4      	asrs	r4, r4, #2
     77a:	1b18      	subs	r0, r3, r4
     77c:	68b3      	ldr	r3, [r6, #8]
     77e:	4699      	mov	r9, r3
     780:	444d      	add	r5, r9
     782:	2800      	cmp	r0, #0
     784:	d100      	bne.n	788 <cord_atan+0x80>
     786:	e07e      	b.n	886 <cord_atan+0x17e>
     788:	10c3      	asrs	r3, r0, #3
     78a:	2800      	cmp	r0, #0
     78c:	dd59      	ble.n	842 <cord_atan+0x13a>
     78e:	10fc      	asrs	r4, r7, #3
     790:	1b00      	subs	r0, r0, r4
     792:	68f4      	ldr	r4, [r6, #12]
     794:	19db      	adds	r3, r3, r7
     796:	46a1      	mov	r9, r4
     798:	444d      	add	r5, r9
     79a:	2800      	cmp	r0, #0
     79c:	d100      	bne.n	7a0 <cord_atan+0x98>
     79e:	e074      	b.n	88a <cord_atan+0x182>
     7a0:	1104      	asrs	r4, r0, #4
     7a2:	2800      	cmp	r0, #0
     7a4:	dd53      	ble.n	84e <cord_atan+0x146>
     7a6:	18e7      	adds	r7, r4, r3
     7a8:	111b      	asrs	r3, r3, #4
     7aa:	1ac4      	subs	r4, r0, r3
     7ac:	6933      	ldr	r3, [r6, #16]
     7ae:	4699      	mov	r9, r3
     7b0:	444d      	add	r5, r9
     7b2:	2c00      	cmp	r4, #0
     7b4:	d06c      	beq.n	890 <cord_atan+0x188>
     7b6:	1163      	asrs	r3, r4, #5
     7b8:	2c00      	cmp	r4, #0
     7ba:	dd4e      	ble.n	85a <cord_atan+0x152>
     7bc:	1178      	asrs	r0, r7, #5
     7be:	1a20      	subs	r0, r4, r0
     7c0:	6974      	ldr	r4, [r6, #20]
     7c2:	19db      	adds	r3, r3, r7
     7c4:	46a1      	mov	r9, r4
     7c6:	444d      	add	r5, r9
     7c8:	2800      	cmp	r0, #0
     7ca:	d063      	beq.n	894 <cord_atan+0x18c>
     7cc:	1184      	asrs	r4, r0, #6
     7ce:	2800      	cmp	r0, #0
     7d0:	dd49      	ble.n	866 <cord_atan+0x15e>
     7d2:	18e7      	adds	r7, r4, r3
     7d4:	119b      	asrs	r3, r3, #6
     7d6:	1ac0      	subs	r0, r0, r3
     7d8:	69b3      	ldr	r3, [r6, #24]
     7da:	4699      	mov	r9, r3
     7dc:	444d      	add	r5, r9
     7de:	2800      	cmp	r0, #0
     7e0:	d05b      	beq.n	89a <cord_atan+0x192>
     7e2:	dd46      	ble.n	872 <cord_atan+0x16a>
     7e4:	69f3      	ldr	r3, [r6, #28]
     7e6:	11c0      	asrs	r0, r0, #7
     7e8:	19c7      	adds	r7, r0, r7
     7ea:	18ed      	adds	r5, r5, r3
     7ec:	2307      	movs	r3, #7
     7ee:	2a00      	cmp	r2, #0
     7f0:	db12      	blt.n	818 <cord_atan+0x110>
     7f2:	2d00      	cmp	r5, #0
     7f4:	da03      	bge.n	7fe <cord_atan+0xf6>
     7f6:	2280      	movs	r2, #128	; 0x80
     7f8:	00d2      	lsls	r2, r2, #3
     7fa:	4691      	mov	r9, r2
     7fc:	444d      	add	r5, r9
     7fe:	4642      	mov	r2, r8
     800:	009b      	lsls	r3, r3, #2
     802:	58d0      	ldr	r0, [r2, r3]
     804:	4663      	mov	r3, ip
     806:	4378      	muls	r0, r7
     808:	1280      	asrs	r0, r0, #10
     80a:	600d      	str	r5, [r1, #0]
     80c:	6018      	str	r0, [r3, #0]
     80e:	b011      	add	sp, #68	; 0x44
     810:	bc0c      	pop	{r2, r3}
     812:	4690      	mov	r8, r2
     814:	4699      	mov	r9, r3
     816:	bdf0      	pop	{r4, r5, r6, r7, pc}
     818:	2280      	movs	r2, #128	; 0x80
     81a:	0092      	lsls	r2, r2, #2
     81c:	1b55      	subs	r5, r2, r5
     81e:	e7e8      	b.n	7f2 <cord_atan+0xea>
     820:	9800      	ldr	r0, [sp, #0]
     822:	1b5f      	subs	r7, r3, r5
     824:	195b      	adds	r3, r3, r5
     826:	4245      	negs	r5, r0
     828:	e793      	b.n	752 <cord_atan+0x4a>
     82a:	1078      	asrs	r0, r7, #1
     82c:	18c3      	adds	r3, r0, r3
     82e:	6870      	ldr	r0, [r6, #4]
     830:	1b3c      	subs	r4, r7, r4
     832:	1a2d      	subs	r5, r5, r0
     834:	e799      	b.n	76a <cord_atan+0x62>
     836:	1a27      	subs	r7, r4, r0
     838:	10a0      	asrs	r0, r4, #2
     83a:	18c0      	adds	r0, r0, r3
     83c:	68b3      	ldr	r3, [r6, #8]
     83e:	1aed      	subs	r5, r5, r3
     840:	e79f      	b.n	782 <cord_atan+0x7a>
     842:	10fc      	asrs	r4, r7, #3
     844:	1820      	adds	r0, r4, r0
     846:	68f4      	ldr	r4, [r6, #12]
     848:	1afb      	subs	r3, r7, r3
     84a:	1b2d      	subs	r5, r5, r4
     84c:	e7a5      	b.n	79a <cord_atan+0x92>
     84e:	1b1f      	subs	r7, r3, r4
     850:	111c      	asrs	r4, r3, #4
     852:	6933      	ldr	r3, [r6, #16]
     854:	1824      	adds	r4, r4, r0
     856:	1aed      	subs	r5, r5, r3
     858:	e7ab      	b.n	7b2 <cord_atan+0xaa>
     85a:	1178      	asrs	r0, r7, #5
     85c:	1900      	adds	r0, r0, r4
     85e:	6974      	ldr	r4, [r6, #20]
     860:	1afb      	subs	r3, r7, r3
     862:	1b2d      	subs	r5, r5, r4
     864:	e7b0      	b.n	7c8 <cord_atan+0xc0>
     866:	1b1f      	subs	r7, r3, r4
     868:	119b      	asrs	r3, r3, #6
     86a:	1818      	adds	r0, r3, r0
     86c:	69b3      	ldr	r3, [r6, #24]
     86e:	1aed      	subs	r5, r5, r3
     870:	e7b5      	b.n	7de <cord_atan+0xd6>
     872:	69f3      	ldr	r3, [r6, #28]
     874:	11c4      	asrs	r4, r0, #7
     876:	1b3f      	subs	r7, r7, r4
     878:	1aed      	subs	r5, r5, r3
     87a:	e7b7      	b.n	7ec <cord_atan+0xe4>
     87c:	2300      	movs	r3, #0
     87e:	e7b6      	b.n	7ee <cord_atan+0xe6>
     880:	0027      	movs	r7, r4
     882:	2301      	movs	r3, #1
     884:	e7b3      	b.n	7ee <cord_atan+0xe6>
     886:	2302      	movs	r3, #2
     888:	e7b1      	b.n	7ee <cord_atan+0xe6>
     88a:	001f      	movs	r7, r3
     88c:	2303      	movs	r3, #3
     88e:	e7ae      	b.n	7ee <cord_atan+0xe6>
     890:	2304      	movs	r3, #4
     892:	e7ac      	b.n	7ee <cord_atan+0xe6>
     894:	001f      	movs	r7, r3
     896:	2305      	movs	r3, #5
     898:	e7a9      	b.n	7ee <cord_atan+0xe6>
     89a:	2306      	movs	r3, #6
     89c:	e7a7      	b.n	7ee <cord_atan+0xe6>
     89e:	46c0      	nop			; (mov r8, r8)
     8a0:	000022ec 	.word	0x000022ec

000008a4 <sinpwm>:
     8a4:	b5f0      	push	{r4, r5, r6, r7, lr}
     8a6:	4646      	mov	r6, r8
     8a8:	464f      	mov	r7, r9
     8aa:	b4c0      	push	{r6, r7}
     8ac:	b089      	sub	sp, #36	; 0x24
     8ae:	466c      	mov	r4, sp
     8b0:	4b65      	ldr	r3, [pc, #404]	; (a48 <sinpwm+0x1a4>)
     8b2:	46e9      	mov	r9, sp
     8b4:	3320      	adds	r3, #32
     8b6:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8b8:	c4e0      	stmia	r4!, {r5, r6, r7}
     8ba:	cbe0      	ldmia	r3!, {r5, r6, r7}
     8bc:	c4e0      	stmia	r4!, {r5, r6, r7}
     8be:	cb60      	ldmia	r3!, {r5, r6}
     8c0:	c460      	stmia	r4!, {r5, r6}
     8c2:	680b      	ldr	r3, [r1, #0]
     8c4:	17dc      	asrs	r4, r3, #31
     8c6:	191e      	adds	r6, r3, r4
     8c8:	4698      	mov	r8, r3
     8ca:	684b      	ldr	r3, [r1, #4]
     8cc:	4066      	eors	r6, r4
     8ce:	469c      	mov	ip, r3
     8d0:	2b00      	cmp	r3, #0
     8d2:	dc00      	bgt.n	8d6 <sinpwm+0x32>
     8d4:	e086      	b.n	9e4 <sinpwm+0x140>
     8d6:	18f7      	adds	r7, r6, r3
     8d8:	1b9b      	subs	r3, r3, r6
     8da:	2b00      	cmp	r3, #0
     8dc:	d100      	bne.n	8e0 <sinpwm+0x3c>
     8de:	e0a0      	b.n	a22 <sinpwm+0x17e>
     8e0:	105e      	asrs	r6, r3, #1
     8e2:	2b00      	cmp	r3, #0
     8e4:	dc00      	bgt.n	8e8 <sinpwm+0x44>
     8e6:	e081      	b.n	9ec <sinpwm+0x148>
     8e8:	107c      	asrs	r4, r7, #1
     8ea:	19f6      	adds	r6, r6, r7
     8ec:	1b1b      	subs	r3, r3, r4
     8ee:	2b00      	cmp	r3, #0
     8f0:	d100      	bne.n	8f4 <sinpwm+0x50>
     8f2:	e098      	b.n	a26 <sinpwm+0x182>
     8f4:	109c      	asrs	r4, r3, #2
     8f6:	2b00      	cmp	r3, #0
     8f8:	dc00      	bgt.n	8fc <sinpwm+0x58>
     8fa:	e07b      	b.n	9f4 <sinpwm+0x150>
     8fc:	19a7      	adds	r7, r4, r6
     8fe:	10b6      	asrs	r6, r6, #2
     900:	1b9c      	subs	r4, r3, r6
     902:	2c00      	cmp	r4, #0
     904:	d100      	bne.n	908 <sinpwm+0x64>
     906:	e091      	b.n	a2c <sinpwm+0x188>
     908:	10e6      	asrs	r6, r4, #3
     90a:	2c00      	cmp	r4, #0
     90c:	dc00      	bgt.n	910 <sinpwm+0x6c>
     90e:	e075      	b.n	9fc <sinpwm+0x158>
     910:	10fd      	asrs	r5, r7, #3
     912:	19f6      	adds	r6, r6, r7
     914:	1b64      	subs	r4, r4, r5
     916:	2c00      	cmp	r4, #0
     918:	d100      	bne.n	91c <sinpwm+0x78>
     91a:	e089      	b.n	a30 <sinpwm+0x18c>
     91c:	1125      	asrs	r5, r4, #4
     91e:	2c00      	cmp	r4, #0
     920:	dc00      	bgt.n	924 <sinpwm+0x80>
     922:	e06f      	b.n	a04 <sinpwm+0x160>
     924:	19af      	adds	r7, r5, r6
     926:	1136      	asrs	r6, r6, #4
     928:	1ba5      	subs	r5, r4, r6
     92a:	2d00      	cmp	r5, #0
     92c:	d100      	bne.n	930 <sinpwm+0x8c>
     92e:	e082      	b.n	a36 <sinpwm+0x192>
     930:	116e      	asrs	r6, r5, #5
     932:	2d00      	cmp	r5, #0
     934:	dd6a      	ble.n	a0c <sinpwm+0x168>
     936:	117c      	asrs	r4, r7, #5
     938:	19f6      	adds	r6, r6, r7
     93a:	1b2c      	subs	r4, r5, r4
     93c:	2c00      	cmp	r4, #0
     93e:	d100      	bne.n	942 <sinpwm+0x9e>
     940:	e07b      	b.n	a3a <sinpwm+0x196>
     942:	11a3      	asrs	r3, r4, #6
     944:	2c00      	cmp	r4, #0
     946:	dd65      	ble.n	a14 <sinpwm+0x170>
     948:	199b      	adds	r3, r3, r6
     94a:	11b6      	asrs	r6, r6, #6
     94c:	1ba4      	subs	r4, r4, r6
     94e:	2c00      	cmp	r4, #0
     950:	d100      	bne.n	954 <sinpwm+0xb0>
     952:	e075      	b.n	a40 <sinpwm+0x19c>
     954:	dd62      	ble.n	a1c <sinpwm+0x178>
     956:	11e4      	asrs	r4, r4, #7
     958:	18e7      	adds	r7, r4, r3
     95a:	2307      	movs	r3, #7
     95c:	464c      	mov	r4, r9
     95e:	4646      	mov	r6, r8
     960:	009b      	lsls	r3, r3, #2
     962:	58e4      	ldr	r4, [r4, r3]
     964:	4b39      	ldr	r3, [pc, #228]	; (a4c <sinpwm+0x1a8>)
     966:	0095      	lsls	r5, r2, #2
     968:	58ed      	ldr	r5, [r5, r3]
     96a:	437c      	muls	r4, r7
     96c:	436e      	muls	r6, r5
     96e:	25c0      	movs	r5, #192	; 0xc0
     970:	4667      	mov	r7, ip
     972:	00ad      	lsls	r5, r5, #2
     974:	1955      	adds	r5, r2, r5
     976:	05ad      	lsls	r5, r5, #22
     978:	0d2d      	lsrs	r5, r5, #20
     97a:	58ed      	ldr	r5, [r5, r3]
     97c:	1524      	asrs	r4, r4, #20
     97e:	437d      	muls	r5, r7
     980:	1b75      	subs	r5, r6, r5
     982:	152d      	asrs	r5, r5, #20
     984:	6005      	str	r5, [r0, #0]
     986:	4d32      	ldr	r5, [pc, #200]	; (a50 <sinpwm+0x1ac>)
     988:	684f      	ldr	r7, [r1, #4]
     98a:	1955      	adds	r5, r2, r5
     98c:	05ad      	lsls	r5, r5, #22
     98e:	0d2d      	lsrs	r5, r5, #20
     990:	58ee      	ldr	r6, [r5, r3]
     992:	680d      	ldr	r5, [r1, #0]
     994:	4375      	muls	r5, r6
     996:	4e2f      	ldr	r6, [pc, #188]	; (a54 <sinpwm+0x1b0>)
     998:	1996      	adds	r6, r2, r6
     99a:	05b6      	lsls	r6, r6, #22
     99c:	0d36      	lsrs	r6, r6, #20
     99e:	58f6      	ldr	r6, [r6, r3]
     9a0:	437e      	muls	r6, r7
     9a2:	1bae      	subs	r6, r5, r6
     9a4:	0015      	movs	r5, r2
     9a6:	3556      	adds	r5, #86	; 0x56
     9a8:	35ff      	adds	r5, #255	; 0xff
     9aa:	1536      	asrs	r6, r6, #20
     9ac:	05ad      	lsls	r5, r5, #22
     9ae:	6046      	str	r6, [r0, #4]
     9b0:	0d2d      	lsrs	r5, r5, #20
     9b2:	58ee      	ldr	r6, [r5, r3]
     9b4:	680d      	ldr	r5, [r1, #0]
     9b6:	436e      	muls	r6, r5
     9b8:	4d27      	ldr	r5, [pc, #156]	; (a58 <sinpwm+0x1b4>)
     9ba:	46ac      	mov	ip, r5
     9bc:	4462      	add	r2, ip
     9be:	0592      	lsls	r2, r2, #22
     9c0:	0d12      	lsrs	r2, r2, #20
     9c2:	58d2      	ldr	r2, [r2, r3]
     9c4:	684b      	ldr	r3, [r1, #4]
     9c6:	435a      	muls	r2, r3
     9c8:	23fa      	movs	r3, #250	; 0xfa
     9ca:	1ab2      	subs	r2, r6, r2
     9cc:	1512      	asrs	r2, r2, #20
     9ce:	6082      	str	r2, [r0, #8]
     9d0:	005b      	lsls	r3, r3, #1
     9d2:	2001      	movs	r0, #1
     9d4:	429c      	cmp	r4, r3
     9d6:	dc00      	bgt.n	9da <sinpwm+0x136>
     9d8:	2000      	movs	r0, #0
     9da:	b009      	add	sp, #36	; 0x24
     9dc:	bc0c      	pop	{r2, r3}
     9de:	4690      	mov	r8, r2
     9e0:	4699      	mov	r9, r3
     9e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9e4:	1af7      	subs	r7, r6, r3
     9e6:	0033      	movs	r3, r6
     9e8:	4463      	add	r3, ip
     9ea:	e776      	b.n	8da <sinpwm+0x36>
     9ec:	107c      	asrs	r4, r7, #1
     9ee:	1bbe      	subs	r6, r7, r6
     9f0:	18e3      	adds	r3, r4, r3
     9f2:	e77c      	b.n	8ee <sinpwm+0x4a>
     9f4:	1b37      	subs	r7, r6, r4
     9f6:	10b4      	asrs	r4, r6, #2
     9f8:	18e4      	adds	r4, r4, r3
     9fa:	e782      	b.n	902 <sinpwm+0x5e>
     9fc:	10fd      	asrs	r5, r7, #3
     9fe:	1bbe      	subs	r6, r7, r6
     a00:	192c      	adds	r4, r5, r4
     a02:	e788      	b.n	916 <sinpwm+0x72>
     a04:	1b77      	subs	r7, r6, r5
     a06:	1135      	asrs	r5, r6, #4
     a08:	192d      	adds	r5, r5, r4
     a0a:	e78e      	b.n	92a <sinpwm+0x86>
     a0c:	117c      	asrs	r4, r7, #5
     a0e:	1bbe      	subs	r6, r7, r6
     a10:	1964      	adds	r4, r4, r5
     a12:	e793      	b.n	93c <sinpwm+0x98>
     a14:	1af3      	subs	r3, r6, r3
     a16:	11b6      	asrs	r6, r6, #6
     a18:	1934      	adds	r4, r6, r4
     a1a:	e798      	b.n	94e <sinpwm+0xaa>
     a1c:	11e5      	asrs	r5, r4, #7
     a1e:	1b5f      	subs	r7, r3, r5
     a20:	e79b      	b.n	95a <sinpwm+0xb6>
     a22:	2300      	movs	r3, #0
     a24:	e79a      	b.n	95c <sinpwm+0xb8>
     a26:	0037      	movs	r7, r6
     a28:	2301      	movs	r3, #1
     a2a:	e797      	b.n	95c <sinpwm+0xb8>
     a2c:	2302      	movs	r3, #2
     a2e:	e795      	b.n	95c <sinpwm+0xb8>
     a30:	0037      	movs	r7, r6
     a32:	2303      	movs	r3, #3
     a34:	e792      	b.n	95c <sinpwm+0xb8>
     a36:	2304      	movs	r3, #4
     a38:	e790      	b.n	95c <sinpwm+0xb8>
     a3a:	0037      	movs	r7, r6
     a3c:	2305      	movs	r3, #5
     a3e:	e78d      	b.n	95c <sinpwm+0xb8>
     a40:	001f      	movs	r7, r3
     a42:	2306      	movs	r3, #6
     a44:	e78a      	b.n	95c <sinpwm+0xb8>
     a46:	46c0      	nop			; (mov r8, r8)
     a48:	000022ec 	.word	0x000022ec
     a4c:	000012d4 	.word	0x000012d4
     a50:	000002aa 	.word	0x000002aa
     a54:	000005aa 	.word	0x000005aa
     a58:	00000455 	.word	0x00000455

00000a5c <svpwm>:
     a5c:	b5f0      	push	{r4, r5, r6, r7, lr}
     a5e:	464f      	mov	r7, r9
     a60:	4646      	mov	r6, r8
     a62:	b4c0      	push	{r6, r7}
     a64:	4bb2      	ldr	r3, [pc, #712]	; (d30 <svpwm+0x2d4>)
     a66:	b091      	sub	sp, #68	; 0x44
     a68:	001c      	movs	r4, r3
     a6a:	4694      	mov	ip, r2
     a6c:	466a      	mov	r2, sp
     a6e:	4699      	mov	r9, r3
     a70:	cca8      	ldmia	r4!, {r3, r5, r7}
     a72:	c2a8      	stmia	r2!, {r3, r5, r7}
     a74:	cca8      	ldmia	r4!, {r3, r5, r7}
     a76:	c2a8      	stmia	r2!, {r3, r5, r7}
     a78:	cc28      	ldmia	r4!, {r3, r5}
     a7a:	c228      	stmia	r2!, {r3, r5}
     a7c:	464b      	mov	r3, r9
     a7e:	aa08      	add	r2, sp, #32
     a80:	3320      	adds	r3, #32
     a82:	4690      	mov	r8, r2
     a84:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a86:	c2b0      	stmia	r2!, {r4, r5, r7}
     a88:	cbb0      	ldmia	r3!, {r4, r5, r7}
     a8a:	c2b0      	stmia	r2!, {r4, r5, r7}
     a8c:	cb30      	ldmia	r3!, {r4, r5}
     a8e:	c230      	stmia	r2!, {r4, r5}
     a90:	680a      	ldr	r2, [r1, #0]
     a92:	684d      	ldr	r5, [r1, #4]
     a94:	17d4      	asrs	r4, r2, #31
     a96:	1913      	adds	r3, r2, r4
     a98:	466e      	mov	r6, sp
     a9a:	4063      	eors	r3, r4
     a9c:	2d00      	cmp	r5, #0
     a9e:	dd78      	ble.n	b92 <svpwm+0x136>
     aa0:	195f      	adds	r7, r3, r5
     aa2:	1aeb      	subs	r3, r5, r3
     aa4:	9d00      	ldr	r5, [sp, #0]
     aa6:	2b00      	cmp	r3, #0
     aa8:	d100      	bne.n	aac <svpwm+0x50>
     aaa:	e130      	b.n	d0e <svpwm+0x2b2>
     aac:	105c      	asrs	r4, r3, #1
     aae:	2b00      	cmp	r3, #0
     ab0:	dd74      	ble.n	b9c <svpwm+0x140>
     ab2:	1079      	asrs	r1, r7, #1
     ab4:	1a5b      	subs	r3, r3, r1
     ab6:	6871      	ldr	r1, [r6, #4]
     ab8:	19e4      	adds	r4, r4, r7
     aba:	4689      	mov	r9, r1
     abc:	444d      	add	r5, r9
     abe:	2b00      	cmp	r3, #0
     ac0:	d100      	bne.n	ac4 <svpwm+0x68>
     ac2:	e126      	b.n	d12 <svpwm+0x2b6>
     ac4:	1099      	asrs	r1, r3, #2
     ac6:	2b00      	cmp	r3, #0
     ac8:	dd6e      	ble.n	ba8 <svpwm+0x14c>
     aca:	190f      	adds	r7, r1, r4
     acc:	10a4      	asrs	r4, r4, #2
     ace:	1b19      	subs	r1, r3, r4
     ad0:	68b3      	ldr	r3, [r6, #8]
     ad2:	4699      	mov	r9, r3
     ad4:	444d      	add	r5, r9
     ad6:	2900      	cmp	r1, #0
     ad8:	d100      	bne.n	adc <svpwm+0x80>
     ada:	e11d      	b.n	d18 <svpwm+0x2bc>
     adc:	10cb      	asrs	r3, r1, #3
     ade:	2900      	cmp	r1, #0
     ae0:	dd68      	ble.n	bb4 <svpwm+0x158>
     ae2:	10fc      	asrs	r4, r7, #3
     ae4:	1b09      	subs	r1, r1, r4
     ae6:	68f4      	ldr	r4, [r6, #12]
     ae8:	19db      	adds	r3, r3, r7
     aea:	46a1      	mov	r9, r4
     aec:	444d      	add	r5, r9
     aee:	2900      	cmp	r1, #0
     af0:	d100      	bne.n	af4 <svpwm+0x98>
     af2:	e113      	b.n	d1c <svpwm+0x2c0>
     af4:	110c      	asrs	r4, r1, #4
     af6:	2900      	cmp	r1, #0
     af8:	dd62      	ble.n	bc0 <svpwm+0x164>
     afa:	18e7      	adds	r7, r4, r3
     afc:	111b      	asrs	r3, r3, #4
     afe:	1acc      	subs	r4, r1, r3
     b00:	6933      	ldr	r3, [r6, #16]
     b02:	4699      	mov	r9, r3
     b04:	444d      	add	r5, r9
     b06:	2c00      	cmp	r4, #0
     b08:	d100      	bne.n	b0c <svpwm+0xb0>
     b0a:	e10a      	b.n	d22 <svpwm+0x2c6>
     b0c:	1163      	asrs	r3, r4, #5
     b0e:	2c00      	cmp	r4, #0
     b10:	dd5c      	ble.n	bcc <svpwm+0x170>
     b12:	1179      	asrs	r1, r7, #5
     b14:	1a61      	subs	r1, r4, r1
     b16:	6974      	ldr	r4, [r6, #20]
     b18:	19db      	adds	r3, r3, r7
     b1a:	46a1      	mov	r9, r4
     b1c:	444d      	add	r5, r9
     b1e:	2900      	cmp	r1, #0
     b20:	d100      	bne.n	b24 <svpwm+0xc8>
     b22:	e100      	b.n	d26 <svpwm+0x2ca>
     b24:	118c      	asrs	r4, r1, #6
     b26:	2900      	cmp	r1, #0
     b28:	dd56      	ble.n	bd8 <svpwm+0x17c>
     b2a:	18e7      	adds	r7, r4, r3
     b2c:	119b      	asrs	r3, r3, #6
     b2e:	1ac9      	subs	r1, r1, r3
     b30:	69b3      	ldr	r3, [r6, #24]
     b32:	4699      	mov	r9, r3
     b34:	444d      	add	r5, r9
     b36:	2900      	cmp	r1, #0
     b38:	d100      	bne.n	b3c <svpwm+0xe0>
     b3a:	e0f7      	b.n	d2c <svpwm+0x2d0>
     b3c:	dc00      	bgt.n	b40 <svpwm+0xe4>
     b3e:	e0e1      	b.n	d04 <svpwm+0x2a8>
     b40:	69f3      	ldr	r3, [r6, #28]
     b42:	11c9      	asrs	r1, r1, #7
     b44:	19cf      	adds	r7, r1, r7
     b46:	18ed      	adds	r5, r5, r3
     b48:	2307      	movs	r3, #7
     b4a:	2a00      	cmp	r2, #0
     b4c:	db1d      	blt.n	b8a <svpwm+0x12e>
     b4e:	2d00      	cmp	r5, #0
     b50:	da03      	bge.n	b5a <svpwm+0xfe>
     b52:	2280      	movs	r2, #128	; 0x80
     b54:	00d2      	lsls	r2, r2, #3
     b56:	4691      	mov	r9, r2
     b58:	444d      	add	r5, r9
     b5a:	4642      	mov	r2, r8
     b5c:	009b      	lsls	r3, r3, #2
     b5e:	58d1      	ldr	r1, [r2, r3]
     b60:	23fa      	movs	r3, #250	; 0xfa
     b62:	4379      	muls	r1, r7
     b64:	4465      	add	r5, ip
     b66:	05ad      	lsls	r5, r5, #22
     b68:	1509      	asrs	r1, r1, #20
     b6a:	0dad      	lsrs	r5, r5, #22
     b6c:	005b      	lsls	r3, r3, #1
     b6e:	2600      	movs	r6, #0
     b70:	4299      	cmp	r1, r3
     b72:	dd01      	ble.n	b78 <svpwm+0x11c>
     b74:	0019      	movs	r1, r3
     b76:	3601      	adds	r6, #1
     b78:	006a      	lsls	r2, r5, #1
     b7a:	1952      	adds	r2, r2, r5
     b7c:	1252      	asrs	r2, r2, #9
     b7e:	2a05      	cmp	r2, #5
     b80:	d84b      	bhi.n	c1a <svpwm+0x1be>
     b82:	4b6c      	ldr	r3, [pc, #432]	; (d34 <svpwm+0x2d8>)
     b84:	0092      	lsls	r2, r2, #2
     b86:	589b      	ldr	r3, [r3, r2]
     b88:	469f      	mov	pc, r3
     b8a:	2280      	movs	r2, #128	; 0x80
     b8c:	0092      	lsls	r2, r2, #2
     b8e:	1b55      	subs	r5, r2, r5
     b90:	e7dd      	b.n	b4e <svpwm+0xf2>
     b92:	9900      	ldr	r1, [sp, #0]
     b94:	1b5f      	subs	r7, r3, r5
     b96:	195b      	adds	r3, r3, r5
     b98:	424d      	negs	r5, r1
     b9a:	e784      	b.n	aa6 <svpwm+0x4a>
     b9c:	1079      	asrs	r1, r7, #1
     b9e:	18cb      	adds	r3, r1, r3
     ba0:	6871      	ldr	r1, [r6, #4]
     ba2:	1b3c      	subs	r4, r7, r4
     ba4:	1a6d      	subs	r5, r5, r1
     ba6:	e78a      	b.n	abe <svpwm+0x62>
     ba8:	1a67      	subs	r7, r4, r1
     baa:	10a1      	asrs	r1, r4, #2
     bac:	18c9      	adds	r1, r1, r3
     bae:	68b3      	ldr	r3, [r6, #8]
     bb0:	1aed      	subs	r5, r5, r3
     bb2:	e790      	b.n	ad6 <svpwm+0x7a>
     bb4:	10fc      	asrs	r4, r7, #3
     bb6:	1861      	adds	r1, r4, r1
     bb8:	68f4      	ldr	r4, [r6, #12]
     bba:	1afb      	subs	r3, r7, r3
     bbc:	1b2d      	subs	r5, r5, r4
     bbe:	e796      	b.n	aee <svpwm+0x92>
     bc0:	1b1f      	subs	r7, r3, r4
     bc2:	111c      	asrs	r4, r3, #4
     bc4:	6933      	ldr	r3, [r6, #16]
     bc6:	1864      	adds	r4, r4, r1
     bc8:	1aed      	subs	r5, r5, r3
     bca:	e79c      	b.n	b06 <svpwm+0xaa>
     bcc:	1179      	asrs	r1, r7, #5
     bce:	1909      	adds	r1, r1, r4
     bd0:	6974      	ldr	r4, [r6, #20]
     bd2:	1afb      	subs	r3, r7, r3
     bd4:	1b2d      	subs	r5, r5, r4
     bd6:	e7a2      	b.n	b1e <svpwm+0xc2>
     bd8:	1b1f      	subs	r7, r3, r4
     bda:	119b      	asrs	r3, r3, #6
     bdc:	1859      	adds	r1, r3, r1
     bde:	69b3      	ldr	r3, [r6, #24]
     be0:	1aed      	subs	r5, r5, r3
     be2:	e7a8      	b.n	b36 <svpwm+0xda>
     be4:	4b54      	ldr	r3, [pc, #336]	; (d38 <svpwm+0x2dc>)
     be6:	4a55      	ldr	r2, [pc, #340]	; (d3c <svpwm+0x2e0>)
     be8:	1b5b      	subs	r3, r3, r5
     bea:	3556      	adds	r5, #86	; 0x56
     bec:	059b      	lsls	r3, r3, #22
     bee:	05ad      	lsls	r5, r5, #22
     bf0:	0d1b      	lsrs	r3, r3, #20
     bf2:	0d2d      	lsrs	r5, r5, #20
     bf4:	589b      	ldr	r3, [r3, r2]
     bf6:	58ac      	ldr	r4, [r5, r2]
     bf8:	434b      	muls	r3, r1
     bfa:	434c      	muls	r4, r1
     bfc:	129b      	asrs	r3, r3, #10
     bfe:	12a1      	asrs	r1, r4, #10
     c00:	1aca      	subs	r2, r1, r3
     c02:	6002      	str	r2, [r0, #0]
     c04:	425a      	negs	r2, r3
     c06:	1a52      	subs	r2, r2, r1
     c08:	1859      	adds	r1, r3, r1
     c0a:	6042      	str	r2, [r0, #4]
     c0c:	6081      	str	r1, [r0, #8]
     c0e:	0030      	movs	r0, r6
     c10:	b011      	add	sp, #68	; 0x44
     c12:	bc0c      	pop	{r2, r3}
     c14:	4690      	mov	r8, r2
     c16:	4699      	mov	r9, r3
     c18:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c1a:	4b49      	ldr	r3, [pc, #292]	; (d40 <svpwm+0x2e4>)
     c1c:	4c47      	ldr	r4, [pc, #284]	; (d3c <svpwm+0x2e0>)
     c1e:	1b5b      	subs	r3, r3, r5
     c20:	059b      	lsls	r3, r3, #22
     c22:	0d1b      	lsrs	r3, r3, #20
     c24:	591a      	ldr	r2, [r3, r4]
     c26:	23c0      	movs	r3, #192	; 0xc0
     c28:	009b      	lsls	r3, r3, #2
     c2a:	469c      	mov	ip, r3
     c2c:	4465      	add	r5, ip
     c2e:	05ad      	lsls	r5, r5, #22
     c30:	0d2d      	lsrs	r5, r5, #20
     c32:	592c      	ldr	r4, [r5, r4]
     c34:	434a      	muls	r2, r1
     c36:	4361      	muls	r1, r4
     c38:	1292      	asrs	r2, r2, #10
     c3a:	1289      	asrs	r1, r1, #10
     c3c:	1853      	adds	r3, r2, r1
     c3e:	6003      	str	r3, [r0, #0]
     c40:	1a8b      	subs	r3, r1, r2
     c42:	4252      	negs	r2, r2
     c44:	1a52      	subs	r2, r2, r1
     c46:	6043      	str	r3, [r0, #4]
     c48:	6082      	str	r2, [r0, #8]
     c4a:	e7e0      	b.n	c0e <svpwm+0x1b2>
     c4c:	4b3d      	ldr	r3, [pc, #244]	; (d44 <svpwm+0x2e8>)
     c4e:	4a3b      	ldr	r2, [pc, #236]	; (d3c <svpwm+0x2e0>)
     c50:	1b5b      	subs	r3, r3, r5
     c52:	059b      	lsls	r3, r3, #22
     c54:	0d1b      	lsrs	r3, r3, #20
     c56:	589f      	ldr	r7, [r3, r2]
     c58:	4b3b      	ldr	r3, [pc, #236]	; (d48 <svpwm+0x2ec>)
     c5a:	434f      	muls	r7, r1
     c5c:	469c      	mov	ip, r3
     c5e:	4465      	add	r5, ip
     c60:	05ad      	lsls	r5, r5, #22
     c62:	0d2d      	lsrs	r5, r5, #20
     c64:	58ac      	ldr	r4, [r5, r2]
     c66:	12bf      	asrs	r7, r7, #10
     c68:	4361      	muls	r1, r4
     c6a:	1289      	asrs	r1, r1, #10
     c6c:	1a7b      	subs	r3, r7, r1
     c6e:	6003      	str	r3, [r0, #0]
     c70:	187b      	adds	r3, r7, r1
     c72:	427f      	negs	r7, r7
     c74:	1a7f      	subs	r7, r7, r1
     c76:	6043      	str	r3, [r0, #4]
     c78:	6087      	str	r7, [r0, #8]
     c7a:	e7c8      	b.n	c0e <svpwm+0x1b2>
     c7c:	4b33      	ldr	r3, [pc, #204]	; (d4c <svpwm+0x2f0>)
     c7e:	4a2f      	ldr	r2, [pc, #188]	; (d3c <svpwm+0x2e0>)
     c80:	1b5b      	subs	r3, r3, r5
     c82:	35ac      	adds	r5, #172	; 0xac
     c84:	059b      	lsls	r3, r3, #22
     c86:	35ff      	adds	r5, #255	; 0xff
     c88:	0d1b      	lsrs	r3, r3, #20
     c8a:	05ad      	lsls	r5, r5, #22
     c8c:	589b      	ldr	r3, [r3, r2]
     c8e:	0d2d      	lsrs	r5, r5, #20
     c90:	58ac      	ldr	r4, [r5, r2]
     c92:	434b      	muls	r3, r1
     c94:	4361      	muls	r1, r4
     c96:	129b      	asrs	r3, r3, #10
     c98:	1289      	asrs	r1, r1, #10
     c9a:	425a      	negs	r2, r3
     c9c:	1a52      	subs	r2, r2, r1
     c9e:	6002      	str	r2, [r0, #0]
     ca0:	185a      	adds	r2, r3, r1
     ca2:	1ac9      	subs	r1, r1, r3
     ca4:	6042      	str	r2, [r0, #4]
     ca6:	6081      	str	r1, [r0, #8]
     ca8:	e7b1      	b.n	c0e <svpwm+0x1b2>
     caa:	4b29      	ldr	r3, [pc, #164]	; (d50 <svpwm+0x2f4>)
     cac:	4a23      	ldr	r2, [pc, #140]	; (d3c <svpwm+0x2e0>)
     cae:	1b5b      	subs	r3, r3, r5
     cb0:	3501      	adds	r5, #1
     cb2:	059b      	lsls	r3, r3, #22
     cb4:	35ff      	adds	r5, #255	; 0xff
     cb6:	0d1b      	lsrs	r3, r3, #20
     cb8:	05ad      	lsls	r5, r5, #22
     cba:	589b      	ldr	r3, [r3, r2]
     cbc:	0d2d      	lsrs	r5, r5, #20
     cbe:	58ac      	ldr	r4, [r5, r2]
     cc0:	434b      	muls	r3, r1
     cc2:	434c      	muls	r4, r1
     cc4:	129b      	asrs	r3, r3, #10
     cc6:	12a1      	asrs	r1, r4, #10
     cc8:	425a      	negs	r2, r3
     cca:	1a52      	subs	r2, r2, r1
     ccc:	6002      	str	r2, [r0, #0]
     cce:	1a5a      	subs	r2, r3, r1
     cd0:	1859      	adds	r1, r3, r1
     cd2:	6042      	str	r2, [r0, #4]
     cd4:	6081      	str	r1, [r0, #8]
     cd6:	e79a      	b.n	c0e <svpwm+0x1b2>
     cd8:	4b1e      	ldr	r3, [pc, #120]	; (d54 <svpwm+0x2f8>)
     cda:	4a18      	ldr	r2, [pc, #96]	; (d3c <svpwm+0x2e0>)
     cdc:	1b5b      	subs	r3, r3, r5
     cde:	3d55      	subs	r5, #85	; 0x55
     ce0:	059b      	lsls	r3, r3, #22
     ce2:	05ad      	lsls	r5, r5, #22
     ce4:	0d1b      	lsrs	r3, r3, #20
     ce6:	0d2d      	lsrs	r5, r5, #20
     ce8:	589b      	ldr	r3, [r3, r2]
     cea:	58ac      	ldr	r4, [r5, r2]
     cec:	434b      	muls	r3, r1
     cee:	4361      	muls	r1, r4
     cf0:	129b      	asrs	r3, r3, #10
     cf2:	1289      	asrs	r1, r1, #10
     cf4:	185a      	adds	r2, r3, r1
     cf6:	6002      	str	r2, [r0, #0]
     cf8:	425a      	negs	r2, r3
     cfa:	1a52      	subs	r2, r2, r1
     cfc:	1a59      	subs	r1, r3, r1
     cfe:	6042      	str	r2, [r0, #4]
     d00:	6081      	str	r1, [r0, #8]
     d02:	e784      	b.n	c0e <svpwm+0x1b2>
     d04:	69f3      	ldr	r3, [r6, #28]
     d06:	11cc      	asrs	r4, r1, #7
     d08:	1b3f      	subs	r7, r7, r4
     d0a:	1aed      	subs	r5, r5, r3
     d0c:	e71c      	b.n	b48 <svpwm+0xec>
     d0e:	2300      	movs	r3, #0
     d10:	e71b      	b.n	b4a <svpwm+0xee>
     d12:	0027      	movs	r7, r4
     d14:	2301      	movs	r3, #1
     d16:	e718      	b.n	b4a <svpwm+0xee>
     d18:	2302      	movs	r3, #2
     d1a:	e716      	b.n	b4a <svpwm+0xee>
     d1c:	001f      	movs	r7, r3
     d1e:	2303      	movs	r3, #3
     d20:	e713      	b.n	b4a <svpwm+0xee>
     d22:	2304      	movs	r3, #4
     d24:	e711      	b.n	b4a <svpwm+0xee>
     d26:	001f      	movs	r7, r3
     d28:	2305      	movs	r3, #5
     d2a:	e70e      	b.n	b4a <svpwm+0xee>
     d2c:	2306      	movs	r3, #6
     d2e:	e70c      	b.n	b4a <svpwm+0xee>
     d30:	000022ec 	.word	0x000022ec
     d34:	000022d4 	.word	0x000022d4
     d38:	00000a54 	.word	0x00000a54
     d3c:	000012d4 	.word	0x000012d4
     d40:	000007aa 	.word	0x000007aa
     d44:	00000854 	.word	0x00000854
     d48:	00000256 	.word	0x00000256
     d4c:	000008ff 	.word	0x000008ff
     d50:	000009aa 	.word	0x000009aa
     d54:	00000aff 	.word	0x00000aff

00000d58 <get_speed>:
     d58:	4a0f      	ldr	r2, [pc, #60]	; (d98 <get_speed+0x40>)
     d5a:	b510      	push	{r4, lr}
     d5c:	6813      	ldr	r3, [r2, #0]
     d5e:	6854      	ldr	r4, [r2, #4]
     d60:	1ac3      	subs	r3, r0, r3
     d62:	6050      	str	r0, [r2, #4]
     d64:	6014      	str	r4, [r2, #0]
     d66:	17da      	asrs	r2, r3, #31
     d68:	1898      	adds	r0, r3, r2
     d6a:	4050      	eors	r0, r2
     d6c:	22fa      	movs	r2, #250	; 0xfa
     d6e:	0092      	lsls	r2, r2, #2
     d70:	4290      	cmp	r0, r2
     d72:	dd04      	ble.n	d7e <get_speed+0x26>
     d74:	2b00      	cmp	r3, #0
     d76:	db0a      	blt.n	d8e <get_speed+0x36>
     d78:	4a08      	ldr	r2, [pc, #32]	; (d9c <get_speed+0x44>)
     d7a:	4694      	mov	ip, r2
     d7c:	4463      	add	r3, ip
     d7e:	680a      	ldr	r2, [r1, #0]
     d80:	4807      	ldr	r0, [pc, #28]	; (da0 <get_speed+0x48>)
     d82:	18d2      	adds	r2, r2, r3
     d84:	105b      	asrs	r3, r3, #1
     d86:	4343      	muls	r3, r0
     d88:	600a      	str	r2, [r1, #0]
     d8a:	1318      	asrs	r0, r3, #12
     d8c:	bd10      	pop	{r4, pc}
     d8e:	2280      	movs	r2, #128	; 0x80
     d90:	0152      	lsls	r2, r2, #5
     d92:	4694      	mov	ip, r2
     d94:	4463      	add	r3, ip
     d96:	e7f2      	b.n	d7e <get_speed+0x26>
     d98:	2000004c 	.word	0x2000004c
     d9c:	fffff000 	.word	0xfffff000
     da0:	0002ae7c 	.word	0x0002ae7c

00000da4 <mfilter>:
     da4:	221f      	movs	r2, #31
     da6:	4908      	ldr	r1, [pc, #32]	; (dc8 <mfilter+0x24>)
     da8:	b510      	push	{r4, lr}
     daa:	688b      	ldr	r3, [r1, #8]
     dac:	3301      	adds	r3, #1
     dae:	4013      	ands	r3, r2
     db0:	608b      	str	r3, [r1, #8]
     db2:	009b      	lsls	r3, r3, #2
     db4:	18cb      	adds	r3, r1, r3
     db6:	68ca      	ldr	r2, [r1, #12]
     db8:	691c      	ldr	r4, [r3, #16]
     dba:	6118      	str	r0, [r3, #16]
     dbc:	1b12      	subs	r2, r2, r4
     dbe:	1812      	adds	r2, r2, r0
     dc0:	1150      	asrs	r0, r2, #5
     dc2:	60ca      	str	r2, [r1, #12]
     dc4:	bd10      	pop	{r4, pc}
     dc6:	46c0      	nop			; (mov r8, r8)
     dc8:	2000004c 	.word	0x2000004c

00000dcc <NVIC_EnableIRQ>:
     dcc:	b580      	push	{r7, lr}
     dce:	b082      	sub	sp, #8
     dd0:	af00      	add	r7, sp, #0
     dd2:	0002      	movs	r2, r0
     dd4:	1dfb      	adds	r3, r7, #7
     dd6:	701a      	strb	r2, [r3, #0]
     dd8:	4909      	ldr	r1, [pc, #36]	; (e00 <NVIC_EnableIRQ+0x34>)
     dda:	1dfb      	adds	r3, r7, #7
     ddc:	781b      	ldrb	r3, [r3, #0]
     dde:	b25b      	sxtb	r3, r3
     de0:	095b      	lsrs	r3, r3, #5
     de2:	1dfa      	adds	r2, r7, #7
     de4:	7812      	ldrb	r2, [r2, #0]
     de6:	0010      	movs	r0, r2
     de8:	221f      	movs	r2, #31
     dea:	4002      	ands	r2, r0
     dec:	2001      	movs	r0, #1
     dee:	4090      	lsls	r0, r2
     df0:	0002      	movs	r2, r0
     df2:	009b      	lsls	r3, r3, #2
     df4:	505a      	str	r2, [r3, r1]
     df6:	46c0      	nop			; (mov r8, r8)
     df8:	46bd      	mov	sp, r7
     dfa:	b002      	add	sp, #8
     dfc:	bd80      	pop	{r7, pc}
     dfe:	46c0      	nop			; (mov r8, r8)
     e00:	e000e100 	.word	0xe000e100

00000e04 <PortConfig>:
     e04:	b580      	push	{r7, lr}
     e06:	af00      	add	r7, sp, #0
     e08:	4b42      	ldr	r3, [pc, #264]	; (f14 <PortConfig+0x110>)
     e0a:	4a42      	ldr	r2, [pc, #264]	; (f14 <PortConfig+0x110>)
     e0c:	69d2      	ldr	r2, [r2, #28]
     e0e:	2180      	movs	r1, #128	; 0x80
     e10:	0389      	lsls	r1, r1, #14
     e12:	430a      	orrs	r2, r1
     e14:	61da      	str	r2, [r3, #28]
     e16:	4b40      	ldr	r3, [pc, #256]	; (f18 <PortConfig+0x114>)
     e18:	4a3f      	ldr	r2, [pc, #252]	; (f18 <PortConfig+0x114>)
     e1a:	6892      	ldr	r2, [r2, #8]
     e1c:	493f      	ldr	r1, [pc, #252]	; (f1c <PortConfig+0x118>)
     e1e:	400a      	ands	r2, r1
     e20:	609a      	str	r2, [r3, #8]
     e22:	4b3d      	ldr	r3, [pc, #244]	; (f18 <PortConfig+0x114>)
     e24:	4a3c      	ldr	r2, [pc, #240]	; (f18 <PortConfig+0x114>)
     e26:	6892      	ldr	r2, [r2, #8]
     e28:	493d      	ldr	r1, [pc, #244]	; (f20 <PortConfig+0x11c>)
     e2a:	430a      	orrs	r2, r1
     e2c:	609a      	str	r2, [r3, #8]
     e2e:	4b3a      	ldr	r3, [pc, #232]	; (f18 <PortConfig+0x114>)
     e30:	4a39      	ldr	r2, [pc, #228]	; (f18 <PortConfig+0x114>)
     e32:	6852      	ldr	r2, [r2, #4]
     e34:	21fc      	movs	r1, #252	; 0xfc
     e36:	0109      	lsls	r1, r1, #4
     e38:	430a      	orrs	r2, r1
     e3a:	605a      	str	r2, [r3, #4]
     e3c:	4b36      	ldr	r3, [pc, #216]	; (f18 <PortConfig+0x114>)
     e3e:	4a36      	ldr	r2, [pc, #216]	; (f18 <PortConfig+0x114>)
     e40:	68d2      	ldr	r2, [r2, #12]
     e42:	21fc      	movs	r1, #252	; 0xfc
     e44:	0109      	lsls	r1, r1, #4
     e46:	430a      	orrs	r2, r1
     e48:	60da      	str	r2, [r3, #12]
     e4a:	4b33      	ldr	r3, [pc, #204]	; (f18 <PortConfig+0x114>)
     e4c:	4a32      	ldr	r2, [pc, #200]	; (f18 <PortConfig+0x114>)
     e4e:	6992      	ldr	r2, [r2, #24]
     e50:	4934      	ldr	r1, [pc, #208]	; (f24 <PortConfig+0x120>)
     e52:	430a      	orrs	r2, r1
     e54:	619a      	str	r2, [r3, #24]
     e56:	4b2f      	ldr	r3, [pc, #188]	; (f14 <PortConfig+0x110>)
     e58:	4a2e      	ldr	r2, [pc, #184]	; (f14 <PortConfig+0x110>)
     e5a:	69d2      	ldr	r2, [r2, #28]
     e5c:	2180      	movs	r1, #128	; 0x80
     e5e:	0489      	lsls	r1, r1, #18
     e60:	430a      	orrs	r2, r1
     e62:	61da      	str	r2, [r3, #28]
     e64:	4b30      	ldr	r3, [pc, #192]	; (f28 <PortConfig+0x124>)
     e66:	4a30      	ldr	r2, [pc, #192]	; (f28 <PortConfig+0x124>)
     e68:	68d2      	ldr	r2, [r2, #12]
     e6a:	2102      	movs	r1, #2
     e6c:	438a      	bics	r2, r1
     e6e:	60da      	str	r2, [r3, #12]
     e70:	4b28      	ldr	r3, [pc, #160]	; (f14 <PortConfig+0x110>)
     e72:	4a28      	ldr	r2, [pc, #160]	; (f14 <PortConfig+0x110>)
     e74:	69d2      	ldr	r2, [r2, #28]
     e76:	2180      	movs	r1, #128	; 0x80
     e78:	0449      	lsls	r1, r1, #17
     e7a:	430a      	orrs	r2, r1
     e7c:	61da      	str	r2, [r3, #28]
     e7e:	4b2b      	ldr	r3, [pc, #172]	; (f2c <PortConfig+0x128>)
     e80:	4a2a      	ldr	r2, [pc, #168]	; (f2c <PortConfig+0x128>)
     e82:	6892      	ldr	r2, [r2, #8]
     e84:	492a      	ldr	r1, [pc, #168]	; (f30 <PortConfig+0x12c>)
     e86:	400a      	ands	r2, r1
     e88:	609a      	str	r2, [r3, #8]
     e8a:	4b28      	ldr	r3, [pc, #160]	; (f2c <PortConfig+0x128>)
     e8c:	4a27      	ldr	r2, [pc, #156]	; (f2c <PortConfig+0x128>)
     e8e:	6892      	ldr	r2, [r2, #8]
     e90:	21a0      	movs	r1, #160	; 0xa0
     e92:	02c9      	lsls	r1, r1, #11
     e94:	430a      	orrs	r2, r1
     e96:	609a      	str	r2, [r3, #8]
     e98:	4b24      	ldr	r3, [pc, #144]	; (f2c <PortConfig+0x128>)
     e9a:	4a24      	ldr	r2, [pc, #144]	; (f2c <PortConfig+0x128>)
     e9c:	68d2      	ldr	r2, [r2, #12]
     e9e:	21c0      	movs	r1, #192	; 0xc0
     ea0:	0089      	lsls	r1, r1, #2
     ea2:	430a      	orrs	r2, r1
     ea4:	60da      	str	r2, [r3, #12]
     ea6:	4b21      	ldr	r3, [pc, #132]	; (f2c <PortConfig+0x128>)
     ea8:	4a20      	ldr	r2, [pc, #128]	; (f2c <PortConfig+0x128>)
     eaa:	6992      	ldr	r2, [r2, #24]
     eac:	21c0      	movs	r1, #192	; 0xc0
     eae:	0309      	lsls	r1, r1, #12
     eb0:	430a      	orrs	r2, r1
     eb2:	619a      	str	r2, [r3, #24]
     eb4:	4b1d      	ldr	r3, [pc, #116]	; (f2c <PortConfig+0x128>)
     eb6:	4a1d      	ldr	r2, [pc, #116]	; (f2c <PortConfig+0x128>)
     eb8:	6852      	ldr	r2, [r2, #4]
     eba:	2180      	movs	r1, #128	; 0x80
     ebc:	0089      	lsls	r1, r1, #2
     ebe:	430a      	orrs	r2, r1
     ec0:	605a      	str	r2, [r3, #4]
     ec2:	4b1a      	ldr	r3, [pc, #104]	; (f2c <PortConfig+0x128>)
     ec4:	4a19      	ldr	r2, [pc, #100]	; (f2c <PortConfig+0x128>)
     ec6:	6852      	ldr	r2, [r2, #4]
     ec8:	491a      	ldr	r1, [pc, #104]	; (f34 <PortConfig+0x130>)
     eca:	400a      	ands	r2, r1
     ecc:	605a      	str	r2, [r3, #4]
     ece:	4b11      	ldr	r3, [pc, #68]	; (f14 <PortConfig+0x110>)
     ed0:	4a10      	ldr	r2, [pc, #64]	; (f14 <PortConfig+0x110>)
     ed2:	69d2      	ldr	r2, [r2, #28]
     ed4:	2180      	movs	r1, #128	; 0x80
     ed6:	0409      	lsls	r1, r1, #16
     ed8:	430a      	orrs	r2, r1
     eda:	61da      	str	r2, [r3, #28]
     edc:	4b16      	ldr	r3, [pc, #88]	; (f38 <PortConfig+0x134>)
     ede:	2200      	movs	r2, #0
     ee0:	609a      	str	r2, [r3, #8]
     ee2:	4b15      	ldr	r3, [pc, #84]	; (f38 <PortConfig+0x134>)
     ee4:	2200      	movs	r2, #0
     ee6:	601a      	str	r2, [r3, #0]
     ee8:	4b13      	ldr	r3, [pc, #76]	; (f38 <PortConfig+0x134>)
     eea:	4a13      	ldr	r2, [pc, #76]	; (f38 <PortConfig+0x134>)
     eec:	6852      	ldr	r2, [r2, #4]
     eee:	2160      	movs	r1, #96	; 0x60
     ef0:	430a      	orrs	r2, r1
     ef2:	605a      	str	r2, [r3, #4]
     ef4:	4b10      	ldr	r3, [pc, #64]	; (f38 <PortConfig+0x134>)
     ef6:	4a10      	ldr	r2, [pc, #64]	; (f38 <PortConfig+0x134>)
     ef8:	68d2      	ldr	r2, [r2, #12]
     efa:	2160      	movs	r1, #96	; 0x60
     efc:	430a      	orrs	r2, r1
     efe:	60da      	str	r2, [r3, #12]
     f00:	4b0d      	ldr	r3, [pc, #52]	; (f38 <PortConfig+0x134>)
     f02:	4a0d      	ldr	r2, [pc, #52]	; (f38 <PortConfig+0x134>)
     f04:	6992      	ldr	r2, [r2, #24]
     f06:	21f0      	movs	r1, #240	; 0xf0
     f08:	0189      	lsls	r1, r1, #6
     f0a:	430a      	orrs	r2, r1
     f0c:	619a      	str	r2, [r3, #24]
     f0e:	46c0      	nop			; (mov r8, r8)
     f10:	46bd      	mov	sp, r7
     f12:	bd80      	pop	{r7, pc}
     f14:	40020000 	.word	0x40020000
     f18:	400a8000 	.word	0x400a8000
     f1c:	ff000fff 	.word	0xff000fff
     f20:	00aaa000 	.word	0x00aaa000
     f24:	00fff000 	.word	0x00fff000
     f28:	400c8000 	.word	0x400c8000
     f2c:	400c0000 	.word	0x400c0000
     f30:	fff0ffff 	.word	0xfff0ffff
     f34:	fffffeff 	.word	0xfffffeff
     f38:	400b8000 	.word	0x400b8000

00000f3c <ClkConfig>:
     f3c:	b580      	push	{r7, lr}
     f3e:	af00      	add	r7, sp, #0
     f40:	4b18      	ldr	r3, [pc, #96]	; (fa4 <ClkConfig+0x68>)
     f42:	4a18      	ldr	r2, [pc, #96]	; (fa4 <ClkConfig+0x68>)
     f44:	6892      	ldr	r2, [r2, #8]
     f46:	2101      	movs	r1, #1
     f48:	430a      	orrs	r2, r1
     f4a:	609a      	str	r2, [r3, #8]
     f4c:	46c0      	nop			; (mov r8, r8)
     f4e:	4b15      	ldr	r3, [pc, #84]	; (fa4 <ClkConfig+0x68>)
     f50:	681b      	ldr	r3, [r3, #0]
     f52:	2204      	movs	r2, #4
     f54:	4013      	ands	r3, r2
     f56:	d0fa      	beq.n	f4e <ClkConfig+0x12>
     f58:	4b12      	ldr	r3, [pc, #72]	; (fa4 <ClkConfig+0x68>)
     f5a:	4a12      	ldr	r2, [pc, #72]	; (fa4 <ClkConfig+0x68>)
     f5c:	68d2      	ldr	r2, [r2, #12]
     f5e:	2102      	movs	r1, #2
     f60:	430a      	orrs	r2, r1
     f62:	60da      	str	r2, [r3, #12]
     f64:	4b0f      	ldr	r3, [pc, #60]	; (fa4 <ClkConfig+0x68>)
     f66:	4a10      	ldr	r2, [pc, #64]	; (fa8 <ClkConfig+0x6c>)
     f68:	605a      	str	r2, [r3, #4]
     f6a:	46c0      	nop			; (mov r8, r8)
     f6c:	4b0d      	ldr	r3, [pc, #52]	; (fa4 <ClkConfig+0x68>)
     f6e:	681b      	ldr	r3, [r3, #0]
     f70:	2202      	movs	r2, #2
     f72:	4013      	ands	r3, r2
     f74:	d0fa      	beq.n	f6c <ClkConfig+0x30>
     f76:	4b0d      	ldr	r3, [pc, #52]	; (fac <ClkConfig+0x70>)
     f78:	4a0c      	ldr	r2, [pc, #48]	; (fac <ClkConfig+0x70>)
     f7a:	6812      	ldr	r2, [r2, #0]
     f7c:	2120      	movs	r1, #32
     f7e:	430a      	orrs	r2, r1
     f80:	601a      	str	r2, [r3, #0]
     f82:	4b08      	ldr	r3, [pc, #32]	; (fa4 <ClkConfig+0x68>)
     f84:	4a07      	ldr	r2, [pc, #28]	; (fa4 <ClkConfig+0x68>)
     f86:	68d2      	ldr	r2, [r2, #12]
     f88:	2180      	movs	r1, #128	; 0x80
     f8a:	0049      	lsls	r1, r1, #1
     f8c:	430a      	orrs	r2, r1
     f8e:	60da      	str	r2, [r3, #12]
     f90:	4b04      	ldr	r3, [pc, #16]	; (fa4 <ClkConfig+0x68>)
     f92:	4a04      	ldr	r2, [pc, #16]	; (fa4 <ClkConfig+0x68>)
     f94:	68d2      	ldr	r2, [r2, #12]
     f96:	2104      	movs	r1, #4
     f98:	430a      	orrs	r2, r1
     f9a:	60da      	str	r2, [r3, #12]
     f9c:	46c0      	nop			; (mov r8, r8)
     f9e:	46bd      	mov	sp, r7
     fa0:	bd80      	pop	{r7, pc}
     fa2:	46c0      	nop			; (mov r8, r8)
     fa4:	40020000 	.word	0x40020000
     fa8:	00000e04 	.word	0x00000e04
     fac:	40018000 	.word	0x40018000

00000fb0 <TimerConfig>:
     fb0:	b580      	push	{r7, lr}
     fb2:	af00      	add	r7, sp, #0
     fb4:	4b7b      	ldr	r3, [pc, #492]	; (11a4 <TimerConfig+0x1f4>)
     fb6:	4a7b      	ldr	r2, [pc, #492]	; (11a4 <TimerConfig+0x1f4>)
     fb8:	69d2      	ldr	r2, [r2, #28]
     fba:	2180      	movs	r1, #128	; 0x80
     fbc:	0309      	lsls	r1, r1, #12
     fbe:	430a      	orrs	r2, r1
     fc0:	61da      	str	r2, [r3, #28]
     fc2:	4b78      	ldr	r3, [pc, #480]	; (11a4 <TimerConfig+0x1f4>)
     fc4:	4a77      	ldr	r2, [pc, #476]	; (11a4 <TimerConfig+0x1f4>)
     fc6:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fc8:	2180      	movs	r1, #128	; 0x80
     fca:	04c9      	lsls	r1, r1, #19
     fcc:	430a      	orrs	r2, r1
     fce:	629a      	str	r2, [r3, #40]	; 0x28
     fd0:	4b74      	ldr	r3, [pc, #464]	; (11a4 <TimerConfig+0x1f4>)
     fd2:	4a74      	ldr	r2, [pc, #464]	; (11a4 <TimerConfig+0x1f4>)
     fd4:	6a92      	ldr	r2, [r2, #40]	; 0x28
     fd6:	4974      	ldr	r1, [pc, #464]	; (11a8 <TimerConfig+0x1f8>)
     fd8:	400a      	ands	r2, r1
     fda:	629a      	str	r2, [r3, #40]	; 0x28
     fdc:	4b73      	ldr	r3, [pc, #460]	; (11ac <TimerConfig+0x1fc>)
     fde:	2200      	movs	r2, #0
     fe0:	601a      	str	r2, [r3, #0]
     fe2:	4b72      	ldr	r3, [pc, #456]	; (11ac <TimerConfig+0x1fc>)
     fe4:	2204      	movs	r2, #4
     fe6:	605a      	str	r2, [r3, #4]
     fe8:	4b70      	ldr	r3, [pc, #448]	; (11ac <TimerConfig+0x1fc>)
     fea:	4a71      	ldr	r2, [pc, #452]	; (11b0 <TimerConfig+0x200>)
     fec:	609a      	str	r2, [r3, #8]
     fee:	4b6f      	ldr	r3, [pc, #444]	; (11ac <TimerConfig+0x1fc>)
     ff0:	2280      	movs	r2, #128	; 0x80
     ff2:	0092      	lsls	r2, r2, #2
     ff4:	611a      	str	r2, [r3, #16]
     ff6:	4b6d      	ldr	r3, [pc, #436]	; (11ac <TimerConfig+0x1fc>)
     ff8:	2280      	movs	r2, #128	; 0x80
     ffa:	0092      	lsls	r2, r2, #2
     ffc:	615a      	str	r2, [r3, #20]
     ffe:	4b6b      	ldr	r3, [pc, #428]	; (11ac <TimerConfig+0x1fc>)
    1000:	2280      	movs	r2, #128	; 0x80
    1002:	0092      	lsls	r2, r2, #2
    1004:	619a      	str	r2, [r3, #24]
    1006:	4b69      	ldr	r3, [pc, #420]	; (11ac <TimerConfig+0x1fc>)
    1008:	4a68      	ldr	r2, [pc, #416]	; (11ac <TimerConfig+0x1fc>)
    100a:	6a12      	ldr	r2, [r2, #32]
    100c:	4969      	ldr	r1, [pc, #420]	; (11b4 <TimerConfig+0x204>)
    100e:	400a      	ands	r2, r1
    1010:	621a      	str	r2, [r3, #32]
    1012:	4b66      	ldr	r3, [pc, #408]	; (11ac <TimerConfig+0x1fc>)
    1014:	4a65      	ldr	r2, [pc, #404]	; (11ac <TimerConfig+0x1fc>)
    1016:	6a12      	ldr	r2, [r2, #32]
    1018:	21e0      	movs	r1, #224	; 0xe0
    101a:	0109      	lsls	r1, r1, #4
    101c:	430a      	orrs	r2, r1
    101e:	621a      	str	r2, [r3, #32]
    1020:	4b62      	ldr	r3, [pc, #392]	; (11ac <TimerConfig+0x1fc>)
    1022:	4a62      	ldr	r2, [pc, #392]	; (11ac <TimerConfig+0x1fc>)
    1024:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1026:	210f      	movs	r1, #15
    1028:	438a      	bics	r2, r1
    102a:	631a      	str	r2, [r3, #48]	; 0x30
    102c:	4b5f      	ldr	r3, [pc, #380]	; (11ac <TimerConfig+0x1fc>)
    102e:	4a5f      	ldr	r2, [pc, #380]	; (11ac <TimerConfig+0x1fc>)
    1030:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1032:	210c      	movs	r1, #12
    1034:	430a      	orrs	r2, r1
    1036:	631a      	str	r2, [r3, #48]	; 0x30
    1038:	4b5c      	ldr	r3, [pc, #368]	; (11ac <TimerConfig+0x1fc>)
    103a:	4a5c      	ldr	r2, [pc, #368]	; (11ac <TimerConfig+0x1fc>)
    103c:	6b12      	ldr	r2, [r2, #48]	; 0x30
    103e:	2101      	movs	r1, #1
    1040:	430a      	orrs	r2, r1
    1042:	631a      	str	r2, [r3, #48]	; 0x30
    1044:	4b59      	ldr	r3, [pc, #356]	; (11ac <TimerConfig+0x1fc>)
    1046:	4a59      	ldr	r2, [pc, #356]	; (11ac <TimerConfig+0x1fc>)
    1048:	6b12      	ldr	r2, [r2, #48]	; 0x30
    104a:	495b      	ldr	r1, [pc, #364]	; (11b8 <TimerConfig+0x208>)
    104c:	400a      	ands	r2, r1
    104e:	631a      	str	r2, [r3, #48]	; 0x30
    1050:	4b56      	ldr	r3, [pc, #344]	; (11ac <TimerConfig+0x1fc>)
    1052:	4a56      	ldr	r2, [pc, #344]	; (11ac <TimerConfig+0x1fc>)
    1054:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1056:	21c0      	movs	r1, #192	; 0xc0
    1058:	0109      	lsls	r1, r1, #4
    105a:	430a      	orrs	r2, r1
    105c:	631a      	str	r2, [r3, #48]	; 0x30
    105e:	4b53      	ldr	r3, [pc, #332]	; (11ac <TimerConfig+0x1fc>)
    1060:	4a52      	ldr	r2, [pc, #328]	; (11ac <TimerConfig+0x1fc>)
    1062:	6b12      	ldr	r2, [r2, #48]	; 0x30
    1064:	2180      	movs	r1, #128	; 0x80
    1066:	0049      	lsls	r1, r1, #1
    1068:	430a      	orrs	r2, r1
    106a:	631a      	str	r2, [r3, #48]	; 0x30
    106c:	4b4f      	ldr	r3, [pc, #316]	; (11ac <TimerConfig+0x1fc>)
    106e:	4a4f      	ldr	r2, [pc, #316]	; (11ac <TimerConfig+0x1fc>)
    1070:	6e12      	ldr	r2, [r2, #96]	; 0x60
    1072:	2108      	movs	r1, #8
    1074:	430a      	orrs	r2, r1
    1076:	661a      	str	r2, [r3, #96]	; 0x60
    1078:	4b4c      	ldr	r3, [pc, #304]	; (11ac <TimerConfig+0x1fc>)
    107a:	4a4c      	ldr	r2, [pc, #304]	; (11ac <TimerConfig+0x1fc>)
    107c:	6a52      	ldr	r2, [r2, #36]	; 0x24
    107e:	494d      	ldr	r1, [pc, #308]	; (11b4 <TimerConfig+0x204>)
    1080:	400a      	ands	r2, r1
    1082:	625a      	str	r2, [r3, #36]	; 0x24
    1084:	4b49      	ldr	r3, [pc, #292]	; (11ac <TimerConfig+0x1fc>)
    1086:	4a49      	ldr	r2, [pc, #292]	; (11ac <TimerConfig+0x1fc>)
    1088:	6a52      	ldr	r2, [r2, #36]	; 0x24
    108a:	21e0      	movs	r1, #224	; 0xe0
    108c:	0109      	lsls	r1, r1, #4
    108e:	430a      	orrs	r2, r1
    1090:	625a      	str	r2, [r3, #36]	; 0x24
    1092:	4b46      	ldr	r3, [pc, #280]	; (11ac <TimerConfig+0x1fc>)
    1094:	4a45      	ldr	r2, [pc, #276]	; (11ac <TimerConfig+0x1fc>)
    1096:	6b52      	ldr	r2, [r2, #52]	; 0x34
    1098:	210f      	movs	r1, #15
    109a:	438a      	bics	r2, r1
    109c:	635a      	str	r2, [r3, #52]	; 0x34
    109e:	4b43      	ldr	r3, [pc, #268]	; (11ac <TimerConfig+0x1fc>)
    10a0:	4a42      	ldr	r2, [pc, #264]	; (11ac <TimerConfig+0x1fc>)
    10a2:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10a4:	210c      	movs	r1, #12
    10a6:	430a      	orrs	r2, r1
    10a8:	635a      	str	r2, [r3, #52]	; 0x34
    10aa:	4b40      	ldr	r3, [pc, #256]	; (11ac <TimerConfig+0x1fc>)
    10ac:	4a3f      	ldr	r2, [pc, #252]	; (11ac <TimerConfig+0x1fc>)
    10ae:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10b0:	2101      	movs	r1, #1
    10b2:	430a      	orrs	r2, r1
    10b4:	635a      	str	r2, [r3, #52]	; 0x34
    10b6:	4b3d      	ldr	r3, [pc, #244]	; (11ac <TimerConfig+0x1fc>)
    10b8:	4a3c      	ldr	r2, [pc, #240]	; (11ac <TimerConfig+0x1fc>)
    10ba:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10bc:	493e      	ldr	r1, [pc, #248]	; (11b8 <TimerConfig+0x208>)
    10be:	400a      	ands	r2, r1
    10c0:	635a      	str	r2, [r3, #52]	; 0x34
    10c2:	4b3a      	ldr	r3, [pc, #232]	; (11ac <TimerConfig+0x1fc>)
    10c4:	4a39      	ldr	r2, [pc, #228]	; (11ac <TimerConfig+0x1fc>)
    10c6:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10c8:	21c0      	movs	r1, #192	; 0xc0
    10ca:	0109      	lsls	r1, r1, #4
    10cc:	430a      	orrs	r2, r1
    10ce:	635a      	str	r2, [r3, #52]	; 0x34
    10d0:	4b36      	ldr	r3, [pc, #216]	; (11ac <TimerConfig+0x1fc>)
    10d2:	4a36      	ldr	r2, [pc, #216]	; (11ac <TimerConfig+0x1fc>)
    10d4:	6b52      	ldr	r2, [r2, #52]	; 0x34
    10d6:	2180      	movs	r1, #128	; 0x80
    10d8:	0049      	lsls	r1, r1, #1
    10da:	430a      	orrs	r2, r1
    10dc:	635a      	str	r2, [r3, #52]	; 0x34
    10de:	4b33      	ldr	r3, [pc, #204]	; (11ac <TimerConfig+0x1fc>)
    10e0:	4a32      	ldr	r2, [pc, #200]	; (11ac <TimerConfig+0x1fc>)
    10e2:	6e52      	ldr	r2, [r2, #100]	; 0x64
    10e4:	2108      	movs	r1, #8
    10e6:	430a      	orrs	r2, r1
    10e8:	665a      	str	r2, [r3, #100]	; 0x64
    10ea:	4b30      	ldr	r3, [pc, #192]	; (11ac <TimerConfig+0x1fc>)
    10ec:	4a2f      	ldr	r2, [pc, #188]	; (11ac <TimerConfig+0x1fc>)
    10ee:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10f0:	4930      	ldr	r1, [pc, #192]	; (11b4 <TimerConfig+0x204>)
    10f2:	400a      	ands	r2, r1
    10f4:	629a      	str	r2, [r3, #40]	; 0x28
    10f6:	4b2d      	ldr	r3, [pc, #180]	; (11ac <TimerConfig+0x1fc>)
    10f8:	4a2c      	ldr	r2, [pc, #176]	; (11ac <TimerConfig+0x1fc>)
    10fa:	6a92      	ldr	r2, [r2, #40]	; 0x28
    10fc:	21e0      	movs	r1, #224	; 0xe0
    10fe:	0109      	lsls	r1, r1, #4
    1100:	430a      	orrs	r2, r1
    1102:	629a      	str	r2, [r3, #40]	; 0x28
    1104:	4b29      	ldr	r3, [pc, #164]	; (11ac <TimerConfig+0x1fc>)
    1106:	4a29      	ldr	r2, [pc, #164]	; (11ac <TimerConfig+0x1fc>)
    1108:	6b92      	ldr	r2, [r2, #56]	; 0x38
    110a:	210f      	movs	r1, #15
    110c:	438a      	bics	r2, r1
    110e:	639a      	str	r2, [r3, #56]	; 0x38
    1110:	4b26      	ldr	r3, [pc, #152]	; (11ac <TimerConfig+0x1fc>)
    1112:	4a26      	ldr	r2, [pc, #152]	; (11ac <TimerConfig+0x1fc>)
    1114:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1116:	210c      	movs	r1, #12
    1118:	430a      	orrs	r2, r1
    111a:	639a      	str	r2, [r3, #56]	; 0x38
    111c:	4b23      	ldr	r3, [pc, #140]	; (11ac <TimerConfig+0x1fc>)
    111e:	4a23      	ldr	r2, [pc, #140]	; (11ac <TimerConfig+0x1fc>)
    1120:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1122:	2101      	movs	r1, #1
    1124:	430a      	orrs	r2, r1
    1126:	639a      	str	r2, [r3, #56]	; 0x38
    1128:	4b20      	ldr	r3, [pc, #128]	; (11ac <TimerConfig+0x1fc>)
    112a:	4a20      	ldr	r2, [pc, #128]	; (11ac <TimerConfig+0x1fc>)
    112c:	6b92      	ldr	r2, [r2, #56]	; 0x38
    112e:	4922      	ldr	r1, [pc, #136]	; (11b8 <TimerConfig+0x208>)
    1130:	400a      	ands	r2, r1
    1132:	639a      	str	r2, [r3, #56]	; 0x38
    1134:	4b1d      	ldr	r3, [pc, #116]	; (11ac <TimerConfig+0x1fc>)
    1136:	4a1d      	ldr	r2, [pc, #116]	; (11ac <TimerConfig+0x1fc>)
    1138:	6b92      	ldr	r2, [r2, #56]	; 0x38
    113a:	21c0      	movs	r1, #192	; 0xc0
    113c:	0109      	lsls	r1, r1, #4
    113e:	430a      	orrs	r2, r1
    1140:	639a      	str	r2, [r3, #56]	; 0x38
    1142:	4b1a      	ldr	r3, [pc, #104]	; (11ac <TimerConfig+0x1fc>)
    1144:	4a19      	ldr	r2, [pc, #100]	; (11ac <TimerConfig+0x1fc>)
    1146:	6b92      	ldr	r2, [r2, #56]	; 0x38
    1148:	2180      	movs	r1, #128	; 0x80
    114a:	0049      	lsls	r1, r1, #1
    114c:	430a      	orrs	r2, r1
    114e:	639a      	str	r2, [r3, #56]	; 0x38
    1150:	4b16      	ldr	r3, [pc, #88]	; (11ac <TimerConfig+0x1fc>)
    1152:	4a16      	ldr	r2, [pc, #88]	; (11ac <TimerConfig+0x1fc>)
    1154:	6e92      	ldr	r2, [r2, #104]	; 0x68
    1156:	2108      	movs	r1, #8
    1158:	430a      	orrs	r2, r1
    115a:	669a      	str	r2, [r3, #104]	; 0x68
    115c:	4b13      	ldr	r3, [pc, #76]	; (11ac <TimerConfig+0x1fc>)
    115e:	4a13      	ldr	r2, [pc, #76]	; (11ac <TimerConfig+0x1fc>)
    1160:	6c12      	ldr	r2, [r2, #64]	; 0x40
    1162:	2196      	movs	r1, #150	; 0x96
    1164:	0189      	lsls	r1, r1, #6
    1166:	430a      	orrs	r2, r1
    1168:	641a      	str	r2, [r3, #64]	; 0x40
    116a:	4b10      	ldr	r3, [pc, #64]	; (11ac <TimerConfig+0x1fc>)
    116c:	4a0f      	ldr	r2, [pc, #60]	; (11ac <TimerConfig+0x1fc>)
    116e:	6c52      	ldr	r2, [r2, #68]	; 0x44
    1170:	2196      	movs	r1, #150	; 0x96
    1172:	0189      	lsls	r1, r1, #6
    1174:	430a      	orrs	r2, r1
    1176:	645a      	str	r2, [r3, #68]	; 0x44
    1178:	4b0c      	ldr	r3, [pc, #48]	; (11ac <TimerConfig+0x1fc>)
    117a:	4a0c      	ldr	r2, [pc, #48]	; (11ac <TimerConfig+0x1fc>)
    117c:	6c92      	ldr	r2, [r2, #72]	; 0x48
    117e:	2196      	movs	r1, #150	; 0x96
    1180:	0189      	lsls	r1, r1, #6
    1182:	430a      	orrs	r2, r1
    1184:	649a      	str	r2, [r3, #72]	; 0x48
    1186:	4b09      	ldr	r3, [pc, #36]	; (11ac <TimerConfig+0x1fc>)
    1188:	4a08      	ldr	r2, [pc, #32]	; (11ac <TimerConfig+0x1fc>)
    118a:	6d92      	ldr	r2, [r2, #88]	; 0x58
    118c:	2102      	movs	r1, #2
    118e:	430a      	orrs	r2, r1
    1190:	659a      	str	r2, [r3, #88]	; 0x58
    1192:	4b06      	ldr	r3, [pc, #24]	; (11ac <TimerConfig+0x1fc>)
    1194:	2201      	movs	r2, #1
    1196:	60da      	str	r2, [r3, #12]
    1198:	200d      	movs	r0, #13
    119a:	f7ff fe17 	bl	dcc <NVIC_EnableIRQ>
    119e:	46c0      	nop			; (mov r8, r8)
    11a0:	46bd      	mov	sp, r7
    11a2:	bd80      	pop	{r7, pc}
    11a4:	40020000 	.word	0x40020000
    11a8:	ff00ffff 	.word	0xff00ffff
    11ac:	40098000 	.word	0x40098000
    11b0:	000003ff 	.word	0x000003ff
    11b4:	fffff1ff 	.word	0xfffff1ff
    11b8:	fffff0ff 	.word	0xfffff0ff

000011bc <SystemInit>:
    11bc:	b580      	push	{r7, lr}
    11be:	af00      	add	r7, sp, #0
    11c0:	f7ff febc 	bl	f3c <ClkConfig>
    11c4:	f7ff fe1e 	bl	e04 <PortConfig>
    11c8:	f7ff fef2 	bl	fb0 <TimerConfig>
    11cc:	46c0      	nop			; (mov r8, r8)
    11ce:	46bd      	mov	sp, r7
    11d0:	bd80      	pop	{r7, pc}
    11d2:	46c0      	nop			; (mov r8, r8)

000011d4 <b2g>:
    11d4:	0843      	lsrs	r3, r0, #1
    11d6:	4058      	eors	r0, r3
    11d8:	4770      	bx	lr
    11da:	46c0      	nop			; (mov r8, r8)

000011dc <g2b>:
    11dc:	0003      	movs	r3, r0
    11de:	2000      	movs	r0, #0
    11e0:	2b00      	cmp	r3, #0
    11e2:	d002      	beq.n	11ea <g2b+0xe>
    11e4:	4058      	eors	r0, r3
    11e6:	085b      	lsrs	r3, r3, #1
    11e8:	d1fc      	bne.n	11e4 <g2b+0x8>
    11ea:	4770      	bx	lr

000011ec <adc_init>:
    11ec:	b580      	push	{r7, lr}
    11ee:	af00      	add	r7, sp, #0
    11f0:	4b0f      	ldr	r3, [pc, #60]	; (1230 <adc_init+0x44>)
    11f2:	4a0f      	ldr	r2, [pc, #60]	; (1230 <adc_init+0x44>)
    11f4:	69d2      	ldr	r2, [r2, #28]
    11f6:	2180      	movs	r1, #128	; 0x80
    11f8:	0289      	lsls	r1, r1, #10
    11fa:	430a      	orrs	r2, r1
    11fc:	61da      	str	r2, [r3, #28]
    11fe:	4b0c      	ldr	r3, [pc, #48]	; (1230 <adc_init+0x44>)
    1200:	4a0c      	ldr	r2, [pc, #48]	; (1234 <adc_init+0x48>)
    1202:	615a      	str	r2, [r3, #20]
    1204:	4b0c      	ldr	r3, [pc, #48]	; (1238 <adc_init+0x4c>)
    1206:	2200      	movs	r2, #0
    1208:	601a      	str	r2, [r3, #0]
    120a:	4b0b      	ldr	r3, [pc, #44]	; (1238 <adc_init+0x4c>)
    120c:	4a0a      	ldr	r2, [pc, #40]	; (1238 <adc_init+0x4c>)
    120e:	6812      	ldr	r2, [r2, #0]
    1210:	490a      	ldr	r1, [pc, #40]	; (123c <adc_init+0x50>)
    1212:	430a      	orrs	r2, r1
    1214:	601a      	str	r2, [r3, #0]
    1216:	4b08      	ldr	r3, [pc, #32]	; (1238 <adc_init+0x4c>)
    1218:	4a07      	ldr	r2, [pc, #28]	; (1238 <adc_init+0x4c>)
    121a:	6a92      	ldr	r2, [r2, #40]	; 0x28
    121c:	2139      	movs	r1, #57	; 0x39
    121e:	430a      	orrs	r2, r1
    1220:	629a      	str	r2, [r3, #40]	; 0x28
    1222:	4b05      	ldr	r3, [pc, #20]	; (1238 <adc_init+0x4c>)
    1224:	2210      	movs	r2, #16
    1226:	621a      	str	r2, [r3, #32]
    1228:	46c0      	nop			; (mov r8, r8)
    122a:	46bd      	mov	sp, r7
    122c:	bd80      	pop	{r7, pc}
    122e:	46c0      	nop			; (mov r8, r8)
    1230:	40020000 	.word	0x40020000
    1234:	00002020 	.word	0x00002020
    1238:	40088000 	.word	0x40088000
    123c:	00000205 	.word	0x00000205

00001240 <dma_init>:
    1240:	b580      	push	{r7, lr}
    1242:	af00      	add	r7, sp, #0
    1244:	4b18      	ldr	r3, [pc, #96]	; (12a8 <dma_init+0x68>)
    1246:	4a18      	ldr	r2, [pc, #96]	; (12a8 <dma_init+0x68>)
    1248:	69d2      	ldr	r2, [r2, #28]
    124a:	2120      	movs	r1, #32
    124c:	430a      	orrs	r2, r1
    124e:	61da      	str	r2, [r3, #28]
    1250:	4b16      	ldr	r3, [pc, #88]	; (12ac <dma_init+0x6c>)
    1252:	4a17      	ldr	r2, [pc, #92]	; (12b0 <dma_init+0x70>)
    1254:	609a      	str	r2, [r3, #8]
    1256:	4b15      	ldr	r3, [pc, #84]	; (12ac <dma_init+0x6c>)
    1258:	2201      	movs	r2, #1
    125a:	4252      	negs	r2, r2
    125c:	62da      	str	r2, [r3, #44]	; 0x2c
    125e:	4b13      	ldr	r3, [pc, #76]	; (12ac <dma_init+0x6c>)
    1260:	2201      	movs	r2, #1
    1262:	4252      	negs	r2, r2
    1264:	621a      	str	r2, [r3, #32]
    1266:	4b11      	ldr	r3, [pc, #68]	; (12ac <dma_init+0x6c>)
    1268:	2201      	movs	r2, #1
    126a:	4252      	negs	r2, r2
    126c:	635a      	str	r2, [r3, #52]	; 0x34
    126e:	4b0f      	ldr	r3, [pc, #60]	; (12ac <dma_init+0x6c>)
    1270:	2280      	movs	r2, #128	; 0x80
    1272:	05d2      	lsls	r2, r2, #23
    1274:	61da      	str	r2, [r3, #28]
    1276:	4b0d      	ldr	r3, [pc, #52]	; (12ac <dma_init+0x6c>)
    1278:	2280      	movs	r2, #128	; 0x80
    127a:	05d2      	lsls	r2, r2, #23
    127c:	625a      	str	r2, [r3, #36]	; 0x24
    127e:	4b0b      	ldr	r3, [pc, #44]	; (12ac <dma_init+0x6c>)
    1280:	2201      	movs	r2, #1
    1282:	605a      	str	r2, [r3, #4]
    1284:	4a0a      	ldr	r2, [pc, #40]	; (12b0 <dma_init+0x70>)
    1286:	23f0      	movs	r3, #240	; 0xf0
    1288:	005b      	lsls	r3, r3, #1
    128a:	490a      	ldr	r1, [pc, #40]	; (12b4 <dma_init+0x74>)
    128c:	50d1      	str	r1, [r2, r3]
    128e:	490a      	ldr	r1, [pc, #40]	; (12b8 <dma_init+0x78>)
    1290:	4a07      	ldr	r2, [pc, #28]	; (12b0 <dma_init+0x70>)
    1292:	23f2      	movs	r3, #242	; 0xf2
    1294:	005b      	lsls	r3, r3, #1
    1296:	50d1      	str	r1, [r2, r3]
    1298:	4a05      	ldr	r2, [pc, #20]	; (12b0 <dma_init+0x70>)
    129a:	23f4      	movs	r3, #244	; 0xf4
    129c:	005b      	lsls	r3, r3, #1
    129e:	4907      	ldr	r1, [pc, #28]	; (12bc <dma_init+0x7c>)
    12a0:	50d1      	str	r1, [r2, r3]
    12a2:	46c0      	nop			; (mov r8, r8)
    12a4:	46bd      	mov	sp, r7
    12a6:	bd80      	pop	{r7, pc}
    12a8:	40020000 	.word	0x40020000
    12ac:	40028000 	.word	0x40028000
    12b0:	20100000 	.word	0x20100000
    12b4:	40088018 	.word	0x40088018
    12b8:	2010020c 	.word	0x2010020c
    12bc:	ae000031 	.word	0xae000031

000012c0 <adc_dma_init>:
    12c0:	b580      	push	{r7, lr}
    12c2:	af00      	add	r7, sp, #0
    12c4:	f7ff ff92 	bl	11ec <adc_init>
    12c8:	f7ff ffba 	bl	1240 <dma_init>
    12cc:	46c0      	nop			; (mov r8, r8)
    12ce:	46bd      	mov	sp, r7
    12d0:	bd80      	pop	{r7, pc}
    12d2:	46c0      	nop			; (mov r8, r8)

000012d4 <cos_tb>:
    12d4:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    12e4:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    12f4:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    1304:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    1314:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    1324:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    1334:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    1344:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    1354:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    1364:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    1374:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    1384:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    1394:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    13a4:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    13b4:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    13c4:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    13d4:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    13e4:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    13f4:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    1404:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    1414:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    1424:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    1434:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    1444:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    1454:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    1464:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    1474:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    1484:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    1494:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    14a4:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    14b4:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    14c4:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    14d4:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    14e4:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    14f4:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    1504:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    1514:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    1524:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    1534:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    1544:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    1554:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    1564:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    1574:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    1584:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    1594:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    15a4:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    15b4:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    15c4:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    15d4:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    15e4:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    15f4:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    1604:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    1614:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    1624:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    1634:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    1644:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    1654:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    1664:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    1674:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    1684:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    1694:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    16a4:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    16b4:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    16c4:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    16d4:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    16e4:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    16f4:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    1704:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    1714:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    1724:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    1734:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    1744:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    1754:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    1764:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    1774:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    1784:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    1794:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    17a4:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    17b4:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    17c4:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    17d4:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    17e4:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    17f4:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    1804:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    1814:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    1824:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    1834:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    1844:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    1854:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    1864:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    1874:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    1884:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    1894:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    18a4:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    18b4:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    18c4:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    18d4:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    18e4:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    18f4:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    1904:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    1914:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    1924:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    1934:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    1944:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    1954:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    1964:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    1974:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    1984:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    1994:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    19a4:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    19b4:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    19c4:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    19d4:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    19e4:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    19f4:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    1a04:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    1a14:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    1a24:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    1a34:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    1a44:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1a54:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1a64:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1a74:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1a84:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1a94:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1aa4:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1ab4:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1ac4:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ad4:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1ae4:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1af4:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1b04:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1b14:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1b24:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1b34:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1b44:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1b54:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1b64:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1b74:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1b84:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1b94:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1ba4:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1bb4:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1bc4:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1bd4:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1be4:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1bf4:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1c04:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1c14:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1c24:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1c34:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1c44:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1c54:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1c64:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1c74:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1c84:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1c94:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1ca4:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1cb4:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1cc4:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1cd4:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1ce4:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1cf4:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1d04:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1d14:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1d24:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1d34:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1d44:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1d54:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1d64:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1d74:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1d84:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1d94:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1da4:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1db4:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1dc4:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1dd4:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1de4:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1df4:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1e04:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1e14:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1e24:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1e34:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1e44:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1e54:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1e64:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1e74:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1e84:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1e94:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1ea4:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1eb4:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1ec4:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1ed4:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1ee4:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1ef4:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1f04:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1f14:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1f24:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1f34:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1f44:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1f54:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1f64:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1f74:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1f84:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1f94:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    1fa4:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    1fb4:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    1fc4:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    1fd4:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    1fe4:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    1ff4:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    2004:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    2014:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    2024:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    2034:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    2044:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    2054:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    2064:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    2074:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    2084:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    2094:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    20a4:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    20b4:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    20c4:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    20d4:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    20e4:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    20f4:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    2104:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    2114:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    2124:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    2134:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    2144:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    2154:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    2164:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    2174:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    2184:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    2194:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    21a4:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    21b4:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    21c4:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    21d4:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    21e4:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    21f4:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    2204:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    2214:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    2224:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    2234:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    2244:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    2254:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    2264:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    2274:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    2284:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    2294:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    22a4:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    22b4:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    22c4:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    22d4:	0c1a 0000 0c4c 0000 0c7c 0000 0caa 0000     ....L...|.......
    22e4:	0be4 0000 0cd8 0000 0080 0000 004c 0000     ............L...
    22f4:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    2304:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    2314:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    2324:	026e 0000 026e 0000                         n...n...
