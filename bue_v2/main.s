
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 1d 0a 00 00 7d 0a 00 00 7d 0a 00 00     ... ....}...}...
	...
      2c:	7d 0a 00 00 00 00 00 00 00 00 00 00 7d 0a 00 00     }...........}...
      3c:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      4c:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      5c:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      6c:	7d 0a 00 00 7d 0a 00 00 e9 09 00 00 7d 0a 00 00     }...}.......}...
      7c:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      8c:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      9c:	7d 0a 00 00 7d 0a 00 00 00 00 00 00 00 00 00 00     }...}...........
      ac:	7d 0a 00 00 7d 0a 00 00 7d 0a 00 00 7d 0a 00 00     }...}...}...}...
      bc:	7d 0a 00 00                                         }...

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

000000f8 <sleep>:
      f8:	b580      	push	{r7, lr}
      fa:	b084      	sub	sp, #16
      fc:	af00      	add	r7, sp, #0
      fe:	6078      	str	r0, [r7, #4]
     100:	4b07      	ldr	r3, [pc, #28]	; (120 <sleep+0x28>)
     102:	681a      	ldr	r2, [r3, #0]
     104:	687b      	ldr	r3, [r7, #4]
     106:	18d3      	adds	r3, r2, r3
     108:	60fb      	str	r3, [r7, #12]
     10a:	46c0      	nop			; (mov r8, r8)
     10c:	4b04      	ldr	r3, [pc, #16]	; (120 <sleep+0x28>)
     10e:	681a      	ldr	r2, [r3, #0]
     110:	68fb      	ldr	r3, [r7, #12]
     112:	429a      	cmp	r2, r3
     114:	d3fa      	bcc.n	10c <sleep+0x14>
     116:	46c0      	nop			; (mov r8, r8)
     118:	0018      	movs	r0, r3
     11a:	46bd      	mov	sp, r7
     11c:	b004      	add	sp, #16
     11e:	bd80      	pop	{r7, pc}
     120:	2000000c 	.word	0x2000000c

00000124 <PortConfig>:
     124:	b580      	push	{r7, lr}
     126:	af00      	add	r7, sp, #0
     128:	4b42      	ldr	r3, [pc, #264]	; (234 <PortConfig+0x110>)
     12a:	4a42      	ldr	r2, [pc, #264]	; (234 <PortConfig+0x110>)
     12c:	69d2      	ldr	r2, [r2, #28]
     12e:	2180      	movs	r1, #128	; 0x80
     130:	0389      	lsls	r1, r1, #14
     132:	430a      	orrs	r2, r1
     134:	61da      	str	r2, [r3, #28]
     136:	4b40      	ldr	r3, [pc, #256]	; (238 <PortConfig+0x114>)
     138:	4a3f      	ldr	r2, [pc, #252]	; (238 <PortConfig+0x114>)
     13a:	6892      	ldr	r2, [r2, #8]
     13c:	493f      	ldr	r1, [pc, #252]	; (23c <PortConfig+0x118>)
     13e:	400a      	ands	r2, r1
     140:	609a      	str	r2, [r3, #8]
     142:	4b3d      	ldr	r3, [pc, #244]	; (238 <PortConfig+0x114>)
     144:	4a3c      	ldr	r2, [pc, #240]	; (238 <PortConfig+0x114>)
     146:	6892      	ldr	r2, [r2, #8]
     148:	493d      	ldr	r1, [pc, #244]	; (240 <PortConfig+0x11c>)
     14a:	430a      	orrs	r2, r1
     14c:	609a      	str	r2, [r3, #8]
     14e:	4b3a      	ldr	r3, [pc, #232]	; (238 <PortConfig+0x114>)
     150:	4a39      	ldr	r2, [pc, #228]	; (238 <PortConfig+0x114>)
     152:	6852      	ldr	r2, [r2, #4]
     154:	21fc      	movs	r1, #252	; 0xfc
     156:	0109      	lsls	r1, r1, #4
     158:	430a      	orrs	r2, r1
     15a:	605a      	str	r2, [r3, #4]
     15c:	4b36      	ldr	r3, [pc, #216]	; (238 <PortConfig+0x114>)
     15e:	4a36      	ldr	r2, [pc, #216]	; (238 <PortConfig+0x114>)
     160:	68d2      	ldr	r2, [r2, #12]
     162:	21fc      	movs	r1, #252	; 0xfc
     164:	0109      	lsls	r1, r1, #4
     166:	430a      	orrs	r2, r1
     168:	60da      	str	r2, [r3, #12]
     16a:	4b33      	ldr	r3, [pc, #204]	; (238 <PortConfig+0x114>)
     16c:	4a32      	ldr	r2, [pc, #200]	; (238 <PortConfig+0x114>)
     16e:	6992      	ldr	r2, [r2, #24]
     170:	4934      	ldr	r1, [pc, #208]	; (244 <PortConfig+0x120>)
     172:	430a      	orrs	r2, r1
     174:	619a      	str	r2, [r3, #24]
     176:	4b2f      	ldr	r3, [pc, #188]	; (234 <PortConfig+0x110>)
     178:	4a2e      	ldr	r2, [pc, #184]	; (234 <PortConfig+0x110>)
     17a:	69d2      	ldr	r2, [r2, #28]
     17c:	2180      	movs	r1, #128	; 0x80
     17e:	0489      	lsls	r1, r1, #18
     180:	430a      	orrs	r2, r1
     182:	61da      	str	r2, [r3, #28]
     184:	4b30      	ldr	r3, [pc, #192]	; (248 <PortConfig+0x124>)
     186:	4a30      	ldr	r2, [pc, #192]	; (248 <PortConfig+0x124>)
     188:	68d2      	ldr	r2, [r2, #12]
     18a:	2102      	movs	r1, #2
     18c:	438a      	bics	r2, r1
     18e:	60da      	str	r2, [r3, #12]
     190:	4b28      	ldr	r3, [pc, #160]	; (234 <PortConfig+0x110>)
     192:	4a28      	ldr	r2, [pc, #160]	; (234 <PortConfig+0x110>)
     194:	69d2      	ldr	r2, [r2, #28]
     196:	2180      	movs	r1, #128	; 0x80
     198:	0449      	lsls	r1, r1, #17
     19a:	430a      	orrs	r2, r1
     19c:	61da      	str	r2, [r3, #28]
     19e:	4b2b      	ldr	r3, [pc, #172]	; (24c <PortConfig+0x128>)
     1a0:	4a2a      	ldr	r2, [pc, #168]	; (24c <PortConfig+0x128>)
     1a2:	6892      	ldr	r2, [r2, #8]
     1a4:	492a      	ldr	r1, [pc, #168]	; (250 <PortConfig+0x12c>)
     1a6:	400a      	ands	r2, r1
     1a8:	609a      	str	r2, [r3, #8]
     1aa:	4b28      	ldr	r3, [pc, #160]	; (24c <PortConfig+0x128>)
     1ac:	4a27      	ldr	r2, [pc, #156]	; (24c <PortConfig+0x128>)
     1ae:	6892      	ldr	r2, [r2, #8]
     1b0:	21a0      	movs	r1, #160	; 0xa0
     1b2:	02c9      	lsls	r1, r1, #11
     1b4:	430a      	orrs	r2, r1
     1b6:	609a      	str	r2, [r3, #8]
     1b8:	4b24      	ldr	r3, [pc, #144]	; (24c <PortConfig+0x128>)
     1ba:	4a24      	ldr	r2, [pc, #144]	; (24c <PortConfig+0x128>)
     1bc:	68d2      	ldr	r2, [r2, #12]
     1be:	21c0      	movs	r1, #192	; 0xc0
     1c0:	0089      	lsls	r1, r1, #2
     1c2:	430a      	orrs	r2, r1
     1c4:	60da      	str	r2, [r3, #12]
     1c6:	4b21      	ldr	r3, [pc, #132]	; (24c <PortConfig+0x128>)
     1c8:	4a20      	ldr	r2, [pc, #128]	; (24c <PortConfig+0x128>)
     1ca:	6992      	ldr	r2, [r2, #24]
     1cc:	21c0      	movs	r1, #192	; 0xc0
     1ce:	0309      	lsls	r1, r1, #12
     1d0:	430a      	orrs	r2, r1
     1d2:	619a      	str	r2, [r3, #24]
     1d4:	4b1d      	ldr	r3, [pc, #116]	; (24c <PortConfig+0x128>)
     1d6:	4a1d      	ldr	r2, [pc, #116]	; (24c <PortConfig+0x128>)
     1d8:	6852      	ldr	r2, [r2, #4]
     1da:	2180      	movs	r1, #128	; 0x80
     1dc:	0089      	lsls	r1, r1, #2
     1de:	430a      	orrs	r2, r1
     1e0:	605a      	str	r2, [r3, #4]
     1e2:	4b1a      	ldr	r3, [pc, #104]	; (24c <PortConfig+0x128>)
     1e4:	4a19      	ldr	r2, [pc, #100]	; (24c <PortConfig+0x128>)
     1e6:	6852      	ldr	r2, [r2, #4]
     1e8:	491a      	ldr	r1, [pc, #104]	; (254 <PortConfig+0x130>)
     1ea:	400a      	ands	r2, r1
     1ec:	605a      	str	r2, [r3, #4]
     1ee:	4b11      	ldr	r3, [pc, #68]	; (234 <PortConfig+0x110>)
     1f0:	4a10      	ldr	r2, [pc, #64]	; (234 <PortConfig+0x110>)
     1f2:	69d2      	ldr	r2, [r2, #28]
     1f4:	2180      	movs	r1, #128	; 0x80
     1f6:	0409      	lsls	r1, r1, #16
     1f8:	430a      	orrs	r2, r1
     1fa:	61da      	str	r2, [r3, #28]
     1fc:	4b16      	ldr	r3, [pc, #88]	; (258 <PortConfig+0x134>)
     1fe:	2200      	movs	r2, #0
     200:	609a      	str	r2, [r3, #8]
     202:	4b15      	ldr	r3, [pc, #84]	; (258 <PortConfig+0x134>)
     204:	2200      	movs	r2, #0
     206:	601a      	str	r2, [r3, #0]
     208:	4b13      	ldr	r3, [pc, #76]	; (258 <PortConfig+0x134>)
     20a:	4a13      	ldr	r2, [pc, #76]	; (258 <PortConfig+0x134>)
     20c:	6852      	ldr	r2, [r2, #4]
     20e:	2160      	movs	r1, #96	; 0x60
     210:	430a      	orrs	r2, r1
     212:	605a      	str	r2, [r3, #4]
     214:	4b10      	ldr	r3, [pc, #64]	; (258 <PortConfig+0x134>)
     216:	4a10      	ldr	r2, [pc, #64]	; (258 <PortConfig+0x134>)
     218:	68d2      	ldr	r2, [r2, #12]
     21a:	2160      	movs	r1, #96	; 0x60
     21c:	430a      	orrs	r2, r1
     21e:	60da      	str	r2, [r3, #12]
     220:	4b0d      	ldr	r3, [pc, #52]	; (258 <PortConfig+0x134>)
     222:	4a0d      	ldr	r2, [pc, #52]	; (258 <PortConfig+0x134>)
     224:	6992      	ldr	r2, [r2, #24]
     226:	21f0      	movs	r1, #240	; 0xf0
     228:	0189      	lsls	r1, r1, #6
     22a:	430a      	orrs	r2, r1
     22c:	619a      	str	r2, [r3, #24]
     22e:	46c0      	nop			; (mov r8, r8)
     230:	46bd      	mov	sp, r7
     232:	bd80      	pop	{r7, pc}
     234:	40020000 	.word	0x40020000
     238:	400a8000 	.word	0x400a8000
     23c:	ff000fff 	.word	0xff000fff
     240:	00aaa000 	.word	0x00aaa000
     244:	00fff000 	.word	0x00fff000
     248:	400c8000 	.word	0x400c8000
     24c:	400c0000 	.word	0x400c0000
     250:	fff0ffff 	.word	0xfff0ffff
     254:	fffffeff 	.word	0xfffffeff
     258:	400b8000 	.word	0x400b8000

0000025c <ClkConfig>:
     25c:	b580      	push	{r7, lr}
     25e:	af00      	add	r7, sp, #0
     260:	4b18      	ldr	r3, [pc, #96]	; (2c4 <ClkConfig+0x68>)
     262:	4a18      	ldr	r2, [pc, #96]	; (2c4 <ClkConfig+0x68>)
     264:	6892      	ldr	r2, [r2, #8]
     266:	2101      	movs	r1, #1
     268:	430a      	orrs	r2, r1
     26a:	609a      	str	r2, [r3, #8]
     26c:	46c0      	nop			; (mov r8, r8)
     26e:	4b15      	ldr	r3, [pc, #84]	; (2c4 <ClkConfig+0x68>)
     270:	681b      	ldr	r3, [r3, #0]
     272:	2204      	movs	r2, #4
     274:	4013      	ands	r3, r2
     276:	d0fa      	beq.n	26e <ClkConfig+0x12>
     278:	4b12      	ldr	r3, [pc, #72]	; (2c4 <ClkConfig+0x68>)
     27a:	4a12      	ldr	r2, [pc, #72]	; (2c4 <ClkConfig+0x68>)
     27c:	68d2      	ldr	r2, [r2, #12]
     27e:	2102      	movs	r1, #2
     280:	430a      	orrs	r2, r1
     282:	60da      	str	r2, [r3, #12]
     284:	4b0f      	ldr	r3, [pc, #60]	; (2c4 <ClkConfig+0x68>)
     286:	4a10      	ldr	r2, [pc, #64]	; (2c8 <ClkConfig+0x6c>)
     288:	605a      	str	r2, [r3, #4]
     28a:	46c0      	nop			; (mov r8, r8)
     28c:	4b0d      	ldr	r3, [pc, #52]	; (2c4 <ClkConfig+0x68>)
     28e:	681b      	ldr	r3, [r3, #0]
     290:	2202      	movs	r2, #2
     292:	4013      	ands	r3, r2
     294:	d0fa      	beq.n	28c <ClkConfig+0x30>
     296:	4b0d      	ldr	r3, [pc, #52]	; (2cc <ClkConfig+0x70>)
     298:	4a0c      	ldr	r2, [pc, #48]	; (2cc <ClkConfig+0x70>)
     29a:	6812      	ldr	r2, [r2, #0]
     29c:	2120      	movs	r1, #32
     29e:	430a      	orrs	r2, r1
     2a0:	601a      	str	r2, [r3, #0]
     2a2:	4b08      	ldr	r3, [pc, #32]	; (2c4 <ClkConfig+0x68>)
     2a4:	4a07      	ldr	r2, [pc, #28]	; (2c4 <ClkConfig+0x68>)
     2a6:	68d2      	ldr	r2, [r2, #12]
     2a8:	2180      	movs	r1, #128	; 0x80
     2aa:	0049      	lsls	r1, r1, #1
     2ac:	430a      	orrs	r2, r1
     2ae:	60da      	str	r2, [r3, #12]
     2b0:	4b04      	ldr	r3, [pc, #16]	; (2c4 <ClkConfig+0x68>)
     2b2:	4a04      	ldr	r2, [pc, #16]	; (2c4 <ClkConfig+0x68>)
     2b4:	68d2      	ldr	r2, [r2, #12]
     2b6:	2104      	movs	r1, #4
     2b8:	430a      	orrs	r2, r1
     2ba:	60da      	str	r2, [r3, #12]
     2bc:	46c0      	nop			; (mov r8, r8)
     2be:	46bd      	mov	sp, r7
     2c0:	bd80      	pop	{r7, pc}
     2c2:	46c0      	nop			; (mov r8, r8)
     2c4:	40020000 	.word	0x40020000
     2c8:	00000e04 	.word	0x00000e04
     2cc:	40018000 	.word	0x40018000

000002d0 <TimerConfig>:
     2d0:	b580      	push	{r7, lr}
     2d2:	af00      	add	r7, sp, #0
     2d4:	4b71      	ldr	r3, [pc, #452]	; (49c <_stack_size+0x9c>)
     2d6:	4a71      	ldr	r2, [pc, #452]	; (49c <_stack_size+0x9c>)
     2d8:	69d2      	ldr	r2, [r2, #28]
     2da:	2180      	movs	r1, #128	; 0x80
     2dc:	0309      	lsls	r1, r1, #12
     2de:	430a      	orrs	r2, r1
     2e0:	61da      	str	r2, [r3, #28]
     2e2:	4b6e      	ldr	r3, [pc, #440]	; (49c <_stack_size+0x9c>)
     2e4:	4a6d      	ldr	r2, [pc, #436]	; (49c <_stack_size+0x9c>)
     2e6:	6a92      	ldr	r2, [r2, #40]	; 0x28
     2e8:	2180      	movs	r1, #128	; 0x80
     2ea:	04c9      	lsls	r1, r1, #19
     2ec:	430a      	orrs	r2, r1
     2ee:	629a      	str	r2, [r3, #40]	; 0x28
     2f0:	4b6a      	ldr	r3, [pc, #424]	; (49c <_stack_size+0x9c>)
     2f2:	4a6a      	ldr	r2, [pc, #424]	; (49c <_stack_size+0x9c>)
     2f4:	6a92      	ldr	r2, [r2, #40]	; 0x28
     2f6:	496a      	ldr	r1, [pc, #424]	; (4a0 <_stack_size+0xa0>)
     2f8:	400a      	ands	r2, r1
     2fa:	629a      	str	r2, [r3, #40]	; 0x28
     2fc:	4b69      	ldr	r3, [pc, #420]	; (4a4 <_stack_size+0xa4>)
     2fe:	2200      	movs	r2, #0
     300:	601a      	str	r2, [r3, #0]
     302:	4b68      	ldr	r3, [pc, #416]	; (4a4 <_stack_size+0xa4>)
     304:	2204      	movs	r2, #4
     306:	605a      	str	r2, [r3, #4]
     308:	4b66      	ldr	r3, [pc, #408]	; (4a4 <_stack_size+0xa4>)
     30a:	4a67      	ldr	r2, [pc, #412]	; (4a8 <_stack_size+0xa8>)
     30c:	609a      	str	r2, [r3, #8]
     30e:	4b65      	ldr	r3, [pc, #404]	; (4a4 <_stack_size+0xa4>)
     310:	2280      	movs	r2, #128	; 0x80
     312:	0092      	lsls	r2, r2, #2
     314:	611a      	str	r2, [r3, #16]
     316:	4b63      	ldr	r3, [pc, #396]	; (4a4 <_stack_size+0xa4>)
     318:	2280      	movs	r2, #128	; 0x80
     31a:	0092      	lsls	r2, r2, #2
     31c:	615a      	str	r2, [r3, #20]
     31e:	4b61      	ldr	r3, [pc, #388]	; (4a4 <_stack_size+0xa4>)
     320:	2280      	movs	r2, #128	; 0x80
     322:	0092      	lsls	r2, r2, #2
     324:	619a      	str	r2, [r3, #24]
     326:	4b5f      	ldr	r3, [pc, #380]	; (4a4 <_stack_size+0xa4>)
     328:	4a5e      	ldr	r2, [pc, #376]	; (4a4 <_stack_size+0xa4>)
     32a:	6a12      	ldr	r2, [r2, #32]
     32c:	495f      	ldr	r1, [pc, #380]	; (4ac <_stack_size+0xac>)
     32e:	400a      	ands	r2, r1
     330:	621a      	str	r2, [r3, #32]
     332:	4b5c      	ldr	r3, [pc, #368]	; (4a4 <_stack_size+0xa4>)
     334:	4a5b      	ldr	r2, [pc, #364]	; (4a4 <_stack_size+0xa4>)
     336:	6a12      	ldr	r2, [r2, #32]
     338:	21e0      	movs	r1, #224	; 0xe0
     33a:	0109      	lsls	r1, r1, #4
     33c:	430a      	orrs	r2, r1
     33e:	621a      	str	r2, [r3, #32]
     340:	4b58      	ldr	r3, [pc, #352]	; (4a4 <_stack_size+0xa4>)
     342:	4a58      	ldr	r2, [pc, #352]	; (4a4 <_stack_size+0xa4>)
     344:	6b12      	ldr	r2, [r2, #48]	; 0x30
     346:	210f      	movs	r1, #15
     348:	438a      	bics	r2, r1
     34a:	631a      	str	r2, [r3, #48]	; 0x30
     34c:	4b55      	ldr	r3, [pc, #340]	; (4a4 <_stack_size+0xa4>)
     34e:	4a55      	ldr	r2, [pc, #340]	; (4a4 <_stack_size+0xa4>)
     350:	6b12      	ldr	r2, [r2, #48]	; 0x30
     352:	210c      	movs	r1, #12
     354:	430a      	orrs	r2, r1
     356:	631a      	str	r2, [r3, #48]	; 0x30
     358:	4b52      	ldr	r3, [pc, #328]	; (4a4 <_stack_size+0xa4>)
     35a:	4a52      	ldr	r2, [pc, #328]	; (4a4 <_stack_size+0xa4>)
     35c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     35e:	2101      	movs	r1, #1
     360:	430a      	orrs	r2, r1
     362:	631a      	str	r2, [r3, #48]	; 0x30
     364:	4b4f      	ldr	r3, [pc, #316]	; (4a4 <_stack_size+0xa4>)
     366:	4a4f      	ldr	r2, [pc, #316]	; (4a4 <_stack_size+0xa4>)
     368:	6b12      	ldr	r2, [r2, #48]	; 0x30
     36a:	4951      	ldr	r1, [pc, #324]	; (4b0 <_stack_size+0xb0>)
     36c:	400a      	ands	r2, r1
     36e:	631a      	str	r2, [r3, #48]	; 0x30
     370:	4b4c      	ldr	r3, [pc, #304]	; (4a4 <_stack_size+0xa4>)
     372:	4a4c      	ldr	r2, [pc, #304]	; (4a4 <_stack_size+0xa4>)
     374:	6b12      	ldr	r2, [r2, #48]	; 0x30
     376:	21c0      	movs	r1, #192	; 0xc0
     378:	0109      	lsls	r1, r1, #4
     37a:	430a      	orrs	r2, r1
     37c:	631a      	str	r2, [r3, #48]	; 0x30
     37e:	4b49      	ldr	r3, [pc, #292]	; (4a4 <_stack_size+0xa4>)
     380:	4a48      	ldr	r2, [pc, #288]	; (4a4 <_stack_size+0xa4>)
     382:	6b12      	ldr	r2, [r2, #48]	; 0x30
     384:	2180      	movs	r1, #128	; 0x80
     386:	0049      	lsls	r1, r1, #1
     388:	430a      	orrs	r2, r1
     38a:	631a      	str	r2, [r3, #48]	; 0x30
     38c:	4b45      	ldr	r3, [pc, #276]	; (4a4 <_stack_size+0xa4>)
     38e:	4a45      	ldr	r2, [pc, #276]	; (4a4 <_stack_size+0xa4>)
     390:	6a52      	ldr	r2, [r2, #36]	; 0x24
     392:	4946      	ldr	r1, [pc, #280]	; (4ac <_stack_size+0xac>)
     394:	400a      	ands	r2, r1
     396:	625a      	str	r2, [r3, #36]	; 0x24
     398:	4b42      	ldr	r3, [pc, #264]	; (4a4 <_stack_size+0xa4>)
     39a:	4a42      	ldr	r2, [pc, #264]	; (4a4 <_stack_size+0xa4>)
     39c:	6a52      	ldr	r2, [r2, #36]	; 0x24
     39e:	21e0      	movs	r1, #224	; 0xe0
     3a0:	0109      	lsls	r1, r1, #4
     3a2:	430a      	orrs	r2, r1
     3a4:	625a      	str	r2, [r3, #36]	; 0x24
     3a6:	4b3f      	ldr	r3, [pc, #252]	; (4a4 <_stack_size+0xa4>)
     3a8:	4a3e      	ldr	r2, [pc, #248]	; (4a4 <_stack_size+0xa4>)
     3aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3ac:	210f      	movs	r1, #15
     3ae:	438a      	bics	r2, r1
     3b0:	635a      	str	r2, [r3, #52]	; 0x34
     3b2:	4b3c      	ldr	r3, [pc, #240]	; (4a4 <_stack_size+0xa4>)
     3b4:	4a3b      	ldr	r2, [pc, #236]	; (4a4 <_stack_size+0xa4>)
     3b6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3b8:	210c      	movs	r1, #12
     3ba:	430a      	orrs	r2, r1
     3bc:	635a      	str	r2, [r3, #52]	; 0x34
     3be:	4b39      	ldr	r3, [pc, #228]	; (4a4 <_stack_size+0xa4>)
     3c0:	4a38      	ldr	r2, [pc, #224]	; (4a4 <_stack_size+0xa4>)
     3c2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3c4:	2101      	movs	r1, #1
     3c6:	430a      	orrs	r2, r1
     3c8:	635a      	str	r2, [r3, #52]	; 0x34
     3ca:	4b36      	ldr	r3, [pc, #216]	; (4a4 <_stack_size+0xa4>)
     3cc:	4a35      	ldr	r2, [pc, #212]	; (4a4 <_stack_size+0xa4>)
     3ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3d0:	4937      	ldr	r1, [pc, #220]	; (4b0 <_stack_size+0xb0>)
     3d2:	400a      	ands	r2, r1
     3d4:	635a      	str	r2, [r3, #52]	; 0x34
     3d6:	4b33      	ldr	r3, [pc, #204]	; (4a4 <_stack_size+0xa4>)
     3d8:	4a32      	ldr	r2, [pc, #200]	; (4a4 <_stack_size+0xa4>)
     3da:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3dc:	21c0      	movs	r1, #192	; 0xc0
     3de:	0109      	lsls	r1, r1, #4
     3e0:	430a      	orrs	r2, r1
     3e2:	635a      	str	r2, [r3, #52]	; 0x34
     3e4:	4b2f      	ldr	r3, [pc, #188]	; (4a4 <_stack_size+0xa4>)
     3e6:	4a2f      	ldr	r2, [pc, #188]	; (4a4 <_stack_size+0xa4>)
     3e8:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3ea:	2180      	movs	r1, #128	; 0x80
     3ec:	0049      	lsls	r1, r1, #1
     3ee:	430a      	orrs	r2, r1
     3f0:	635a      	str	r2, [r3, #52]	; 0x34
     3f2:	4b2c      	ldr	r3, [pc, #176]	; (4a4 <_stack_size+0xa4>)
     3f4:	4a2b      	ldr	r2, [pc, #172]	; (4a4 <_stack_size+0xa4>)
     3f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3f8:	492c      	ldr	r1, [pc, #176]	; (4ac <_stack_size+0xac>)
     3fa:	400a      	ands	r2, r1
     3fc:	629a      	str	r2, [r3, #40]	; 0x28
     3fe:	4b29      	ldr	r3, [pc, #164]	; (4a4 <_stack_size+0xa4>)
     400:	4a28      	ldr	r2, [pc, #160]	; (4a4 <_stack_size+0xa4>)
     402:	6a92      	ldr	r2, [r2, #40]	; 0x28
     404:	21e0      	movs	r1, #224	; 0xe0
     406:	0109      	lsls	r1, r1, #4
     408:	430a      	orrs	r2, r1
     40a:	629a      	str	r2, [r3, #40]	; 0x28
     40c:	4b25      	ldr	r3, [pc, #148]	; (4a4 <_stack_size+0xa4>)
     40e:	4a25      	ldr	r2, [pc, #148]	; (4a4 <_stack_size+0xa4>)
     410:	6b92      	ldr	r2, [r2, #56]	; 0x38
     412:	210f      	movs	r1, #15
     414:	438a      	bics	r2, r1
     416:	639a      	str	r2, [r3, #56]	; 0x38
     418:	4b22      	ldr	r3, [pc, #136]	; (4a4 <_stack_size+0xa4>)
     41a:	4a22      	ldr	r2, [pc, #136]	; (4a4 <_stack_size+0xa4>)
     41c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     41e:	210c      	movs	r1, #12
     420:	430a      	orrs	r2, r1
     422:	639a      	str	r2, [r3, #56]	; 0x38
     424:	4b1f      	ldr	r3, [pc, #124]	; (4a4 <_stack_size+0xa4>)
     426:	4a1f      	ldr	r2, [pc, #124]	; (4a4 <_stack_size+0xa4>)
     428:	6b92      	ldr	r2, [r2, #56]	; 0x38
     42a:	2101      	movs	r1, #1
     42c:	430a      	orrs	r2, r1
     42e:	639a      	str	r2, [r3, #56]	; 0x38
     430:	4b1c      	ldr	r3, [pc, #112]	; (4a4 <_stack_size+0xa4>)
     432:	4a1c      	ldr	r2, [pc, #112]	; (4a4 <_stack_size+0xa4>)
     434:	6b92      	ldr	r2, [r2, #56]	; 0x38
     436:	491e      	ldr	r1, [pc, #120]	; (4b0 <_stack_size+0xb0>)
     438:	400a      	ands	r2, r1
     43a:	639a      	str	r2, [r3, #56]	; 0x38
     43c:	4b19      	ldr	r3, [pc, #100]	; (4a4 <_stack_size+0xa4>)
     43e:	4a19      	ldr	r2, [pc, #100]	; (4a4 <_stack_size+0xa4>)
     440:	6b92      	ldr	r2, [r2, #56]	; 0x38
     442:	21c0      	movs	r1, #192	; 0xc0
     444:	0109      	lsls	r1, r1, #4
     446:	430a      	orrs	r2, r1
     448:	639a      	str	r2, [r3, #56]	; 0x38
     44a:	4b16      	ldr	r3, [pc, #88]	; (4a4 <_stack_size+0xa4>)
     44c:	4a15      	ldr	r2, [pc, #84]	; (4a4 <_stack_size+0xa4>)
     44e:	6b92      	ldr	r2, [r2, #56]	; 0x38
     450:	2180      	movs	r1, #128	; 0x80
     452:	0049      	lsls	r1, r1, #1
     454:	430a      	orrs	r2, r1
     456:	639a      	str	r2, [r3, #56]	; 0x38
     458:	4b12      	ldr	r3, [pc, #72]	; (4a4 <_stack_size+0xa4>)
     45a:	4a12      	ldr	r2, [pc, #72]	; (4a4 <_stack_size+0xa4>)
     45c:	6c12      	ldr	r2, [r2, #64]	; 0x40
     45e:	21c8      	movs	r1, #200	; 0xc8
     460:	01c9      	lsls	r1, r1, #7
     462:	430a      	orrs	r2, r1
     464:	641a      	str	r2, [r3, #64]	; 0x40
     466:	4b0f      	ldr	r3, [pc, #60]	; (4a4 <_stack_size+0xa4>)
     468:	4a0e      	ldr	r2, [pc, #56]	; (4a4 <_stack_size+0xa4>)
     46a:	6c52      	ldr	r2, [r2, #68]	; 0x44
     46c:	21c8      	movs	r1, #200	; 0xc8
     46e:	01c9      	lsls	r1, r1, #7
     470:	430a      	orrs	r2, r1
     472:	645a      	str	r2, [r3, #68]	; 0x44
     474:	4b0b      	ldr	r3, [pc, #44]	; (4a4 <_stack_size+0xa4>)
     476:	4a0b      	ldr	r2, [pc, #44]	; (4a4 <_stack_size+0xa4>)
     478:	6c92      	ldr	r2, [r2, #72]	; 0x48
     47a:	21c8      	movs	r1, #200	; 0xc8
     47c:	01c9      	lsls	r1, r1, #7
     47e:	430a      	orrs	r2, r1
     480:	649a      	str	r2, [r3, #72]	; 0x48
     482:	4b08      	ldr	r3, [pc, #32]	; (4a4 <_stack_size+0xa4>)
     484:	4a07      	ldr	r2, [pc, #28]	; (4a4 <_stack_size+0xa4>)
     486:	6d92      	ldr	r2, [r2, #88]	; 0x58
     488:	2102      	movs	r1, #2
     48a:	430a      	orrs	r2, r1
     48c:	659a      	str	r2, [r3, #88]	; 0x58
     48e:	4b05      	ldr	r3, [pc, #20]	; (4a4 <_stack_size+0xa4>)
     490:	2201      	movs	r2, #1
     492:	60da      	str	r2, [r3, #12]
     494:	46c0      	nop			; (mov r8, r8)
     496:	46bd      	mov	sp, r7
     498:	bd80      	pop	{r7, pc}
     49a:	46c0      	nop			; (mov r8, r8)
     49c:	40020000 	.word	0x40020000
     4a0:	ff00ffff 	.word	0xff00ffff
     4a4:	40098000 	.word	0x40098000
     4a8:	000003ff 	.word	0x000003ff
     4ac:	fffff1ff 	.word	0xfffff1ff
     4b0:	fffff0ff 	.word	0xfffff0ff

000004b4 <start_dma>:
     4b4:	b580      	push	{r7, lr}
     4b6:	af00      	add	r7, sp, #0
     4b8:	200d      	movs	r0, #13
     4ba:	f7ff fe01 	bl	c0 <NVIC_EnableIRQ>
     4be:	46c0      	nop			; (mov r8, r8)
     4c0:	46bd      	mov	sp, r7
     4c2:	bd80      	pop	{r7, pc}

000004c4 <adc_init>:
     4c4:	b580      	push	{r7, lr}
     4c6:	af00      	add	r7, sp, #0
     4c8:	4b0f      	ldr	r3, [pc, #60]	; (508 <adc_init+0x44>)
     4ca:	4a0f      	ldr	r2, [pc, #60]	; (508 <adc_init+0x44>)
     4cc:	69d2      	ldr	r2, [r2, #28]
     4ce:	2180      	movs	r1, #128	; 0x80
     4d0:	0289      	lsls	r1, r1, #10
     4d2:	430a      	orrs	r2, r1
     4d4:	61da      	str	r2, [r3, #28]
     4d6:	4b0c      	ldr	r3, [pc, #48]	; (508 <adc_init+0x44>)
     4d8:	4a0c      	ldr	r2, [pc, #48]	; (50c <adc_init+0x48>)
     4da:	615a      	str	r2, [r3, #20]
     4dc:	4b0c      	ldr	r3, [pc, #48]	; (510 <adc_init+0x4c>)
     4de:	2200      	movs	r2, #0
     4e0:	601a      	str	r2, [r3, #0]
     4e2:	4b0b      	ldr	r3, [pc, #44]	; (510 <adc_init+0x4c>)
     4e4:	4a0a      	ldr	r2, [pc, #40]	; (510 <adc_init+0x4c>)
     4e6:	6812      	ldr	r2, [r2, #0]
     4e8:	490a      	ldr	r1, [pc, #40]	; (514 <adc_init+0x50>)
     4ea:	430a      	orrs	r2, r1
     4ec:	601a      	str	r2, [r3, #0]
     4ee:	4b08      	ldr	r3, [pc, #32]	; (510 <adc_init+0x4c>)
     4f0:	4a07      	ldr	r2, [pc, #28]	; (510 <adc_init+0x4c>)
     4f2:	6a92      	ldr	r2, [r2, #40]	; 0x28
     4f4:	2139      	movs	r1, #57	; 0x39
     4f6:	430a      	orrs	r2, r1
     4f8:	629a      	str	r2, [r3, #40]	; 0x28
     4fa:	4b05      	ldr	r3, [pc, #20]	; (510 <adc_init+0x4c>)
     4fc:	2210      	movs	r2, #16
     4fe:	621a      	str	r2, [r3, #32]
     500:	46c0      	nop			; (mov r8, r8)
     502:	46bd      	mov	sp, r7
     504:	bd80      	pop	{r7, pc}
     506:	46c0      	nop			; (mov r8, r8)
     508:	40020000 	.word	0x40020000
     50c:	00002020 	.word	0x00002020
     510:	40088000 	.word	0x40088000
     514:	00000205 	.word	0x00000205

00000518 <dac_init>:
     518:	b580      	push	{r7, lr}
     51a:	af00      	add	r7, sp, #0
     51c:	4b07      	ldr	r3, [pc, #28]	; (53c <dac_init+0x24>)
     51e:	4a07      	ldr	r2, [pc, #28]	; (53c <dac_init+0x24>)
     520:	69d2      	ldr	r2, [r2, #28]
     522:	2180      	movs	r1, #128	; 0x80
     524:	02c9      	lsls	r1, r1, #11
     526:	430a      	orrs	r2, r1
     528:	61da      	str	r2, [r3, #28]
     52a:	4b05      	ldr	r3, [pc, #20]	; (540 <dac_init+0x28>)
     52c:	4a04      	ldr	r2, [pc, #16]	; (540 <dac_init+0x28>)
     52e:	6812      	ldr	r2, [r2, #0]
     530:	2104      	movs	r1, #4
     532:	430a      	orrs	r2, r1
     534:	601a      	str	r2, [r3, #0]
     536:	46c0      	nop			; (mov r8, r8)
     538:	46bd      	mov	sp, r7
     53a:	bd80      	pop	{r7, pc}
     53c:	40020000 	.word	0x40020000
     540:	40090000 	.word	0x40090000

00000544 <ssi_init>:
     544:	b580      	push	{r7, lr}
     546:	af00      	add	r7, sp, #0
     548:	4b0c      	ldr	r3, [pc, #48]	; (57c <ssi_init+0x38>)
     54a:	4a0c      	ldr	r2, [pc, #48]	; (57c <ssi_init+0x38>)
     54c:	69d2      	ldr	r2, [r2, #28]
     54e:	2180      	movs	r1, #128	; 0x80
     550:	0349      	lsls	r1, r1, #13
     552:	430a      	orrs	r2, r1
     554:	61da      	str	r2, [r3, #28]
     556:	4b09      	ldr	r3, [pc, #36]	; (57c <ssi_init+0x38>)
     558:	4a09      	ldr	r2, [pc, #36]	; (580 <ssi_init+0x3c>)
     55a:	62da      	str	r2, [r3, #44]	; 0x2c
     55c:	4b09      	ldr	r3, [pc, #36]	; (584 <ssi_init+0x40>)
     55e:	2200      	movs	r2, #0
     560:	605a      	str	r2, [r3, #4]
     562:	4b08      	ldr	r3, [pc, #32]	; (584 <ssi_init+0x40>)
     564:	220a      	movs	r2, #10
     566:	611a      	str	r2, [r3, #16]
     568:	4b06      	ldr	r3, [pc, #24]	; (584 <ssi_init+0x40>)
     56a:	4a07      	ldr	r2, [pc, #28]	; (588 <ssi_init+0x44>)
     56c:	601a      	str	r2, [r3, #0]
     56e:	4b05      	ldr	r3, [pc, #20]	; (584 <ssi_init+0x40>)
     570:	2202      	movs	r2, #2
     572:	605a      	str	r2, [r3, #4]
     574:	46c0      	nop			; (mov r8, r8)
     576:	46bd      	mov	sp, r7
     578:	bd80      	pop	{r7, pc}
     57a:	46c0      	nop			; (mov r8, r8)
     57c:	40020000 	.word	0x40020000
     580:	02000200 	.word	0x02000200
     584:	400a0000 	.word	0x400a0000
     588:	0000021b 	.word	0x0000021b

0000058c <b2g>:
     58c:	b580      	push	{r7, lr}
     58e:	b082      	sub	sp, #8
     590:	af00      	add	r7, sp, #0
     592:	6078      	str	r0, [r7, #4]
     594:	687b      	ldr	r3, [r7, #4]
     596:	085a      	lsrs	r2, r3, #1
     598:	687b      	ldr	r3, [r7, #4]
     59a:	4053      	eors	r3, r2
     59c:	0018      	movs	r0, r3
     59e:	46bd      	mov	sp, r7
     5a0:	b002      	add	sp, #8
     5a2:	bd80      	pop	{r7, pc}

000005a4 <g2b>:
     5a4:	b580      	push	{r7, lr}
     5a6:	b084      	sub	sp, #16
     5a8:	af00      	add	r7, sp, #0
     5aa:	6078      	str	r0, [r7, #4]
     5ac:	2300      	movs	r3, #0
     5ae:	60fb      	str	r3, [r7, #12]
     5b0:	2300      	movs	r3, #0
     5b2:	60fb      	str	r3, [r7, #12]
     5b4:	e006      	b.n	5c4 <g2b+0x20>
     5b6:	68fa      	ldr	r2, [r7, #12]
     5b8:	687b      	ldr	r3, [r7, #4]
     5ba:	4053      	eors	r3, r2
     5bc:	60fb      	str	r3, [r7, #12]
     5be:	687b      	ldr	r3, [r7, #4]
     5c0:	085b      	lsrs	r3, r3, #1
     5c2:	607b      	str	r3, [r7, #4]
     5c4:	687b      	ldr	r3, [r7, #4]
     5c6:	2b00      	cmp	r3, #0
     5c8:	d1f5      	bne.n	5b6 <g2b+0x12>
     5ca:	68fb      	ldr	r3, [r7, #12]
     5cc:	0018      	movs	r0, r3
     5ce:	46bd      	mov	sp, r7
     5d0:	b004      	add	sp, #16
     5d2:	bd80      	pop	{r7, pc}

000005d4 <SystemInit>:
     5d4:	b580      	push	{r7, lr}
     5d6:	af00      	add	r7, sp, #0
     5d8:	f7ff fe40 	bl	25c <ClkConfig>
     5dc:	f7ff fda2 	bl	124 <PortConfig>
     5e0:	f7ff fe76 	bl	2d0 <TimerConfig>
     5e4:	f7ff ff6e 	bl	4c4 <adc_init>
     5e8:	f7ff ff96 	bl	518 <dac_init>
     5ec:	f7ff ffaa 	bl	544 <ssi_init>
     5f0:	f000 fa48 	bl	a84 <adc_dma_init>
     5f4:	46c0      	nop			; (mov r8, r8)
     5f6:	46bd      	mov	sp, r7
     5f8:	bd80      	pop	{r7, pc}
     5fa:	46c0      	nop			; (mov r8, r8)

000005fc <timer_wait>:
     5fc:	b580      	push	{r7, lr}
     5fe:	af00      	add	r7, sp, #0
     600:	46c0      	nop			; (mov r8, r8)
     602:	4b05      	ldr	r3, [pc, #20]	; (618 <timer_wait+0x1c>)
     604:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     606:	2202      	movs	r2, #2
     608:	4013      	ands	r3, r2
     60a:	d0fa      	beq.n	602 <timer_wait+0x6>
     60c:	4b02      	ldr	r3, [pc, #8]	; (618 <timer_wait+0x1c>)
     60e:	2200      	movs	r2, #0
     610:	655a      	str	r2, [r3, #84]	; 0x54
     612:	46c0      	nop			; (mov r8, r8)
     614:	46bd      	mov	sp, r7
     616:	bd80      	pop	{r7, pc}
     618:	40098000 	.word	0x40098000

0000061c <main>:
     61c:	b580      	push	{r7, lr}
     61e:	b0a8      	sub	sp, #160	; 0xa0
     620:	af00      	add	r7, sp, #0
     622:	2300      	movs	r3, #0
     624:	229c      	movs	r2, #156	; 0x9c
     626:	18ba      	adds	r2, r7, r2
     628:	6013      	str	r3, [r2, #0]
     62a:	2300      	movs	r3, #0
     62c:	67fb      	str	r3, [r7, #124]	; 0x7c
     62e:	2300      	movs	r3, #0
     630:	2298      	movs	r2, #152	; 0x98
     632:	18ba      	adds	r2, r7, r2
     634:	6013      	str	r3, [r2, #0]
     636:	2300      	movs	r3, #0
     638:	2294      	movs	r2, #148	; 0x94
     63a:	18ba      	adds	r2, r7, r2
     63c:	6013      	str	r3, [r2, #0]
     63e:	2300      	movs	r3, #0
     640:	2290      	movs	r2, #144	; 0x90
     642:	18ba      	adds	r2, r7, r2
     644:	6013      	str	r3, [r2, #0]
     646:	2300      	movs	r3, #0
     648:	228c      	movs	r2, #140	; 0x8c
     64a:	18ba      	adds	r2, r7, r2
     64c:	6013      	str	r3, [r2, #0]
     64e:	23fa      	movs	r3, #250	; 0xfa
     650:	009b      	lsls	r3, r3, #2
     652:	67bb      	str	r3, [r7, #120]	; 0x78
     654:	2300      	movs	r3, #0
     656:	603b      	str	r3, [r7, #0]
     658:	2300      	movs	r3, #0
     65a:	677b      	str	r3, [r7, #116]	; 0x74
     65c:	2300      	movs	r3, #0
     65e:	2284      	movs	r2, #132	; 0x84
     660:	18ba      	adds	r2, r7, r2
     662:	6013      	str	r3, [r2, #0]
     664:	2300      	movs	r3, #0
     666:	2280      	movs	r2, #128	; 0x80
     668:	18ba      	adds	r2, r7, r2
     66a:	6013      	str	r3, [r2, #0]
     66c:	f7ff ffb2 	bl	5d4 <SystemInit>
     670:	2396      	movs	r3, #150	; 0x96
     672:	005a      	lsls	r2, r3, #1
     674:	2396      	movs	r3, #150	; 0x96
     676:	0059      	lsls	r1, r3, #1
     678:	2334      	movs	r3, #52	; 0x34
     67a:	18fb      	adds	r3, r7, r3
     67c:	0018      	movs	r0, r3
     67e:	f000 fa87 	bl	b90 <reg_init>
     682:	2396      	movs	r3, #150	; 0x96
     684:	005a      	lsls	r2, r3, #1
     686:	2396      	movs	r3, #150	; 0x96
     688:	0059      	lsls	r1, r3, #1
     68a:	2324      	movs	r3, #36	; 0x24
     68c:	18fb      	adds	r3, r7, r3
     68e:	0018      	movs	r0, r3
     690:	f000 fa7e 	bl	b90 <reg_init>
     694:	23fa      	movs	r3, #250	; 0xfa
     696:	00da      	lsls	r2, r3, #3
     698:	2314      	movs	r3, #20
     69a:	18fb      	adds	r3, r7, r3
     69c:	2100      	movs	r1, #0
     69e:	0018      	movs	r0, r3
     6a0:	f000 fa76 	bl	b90 <reg_init>
     6a4:	4ac6      	ldr	r2, [pc, #792]	; (9c0 <main+0x3a4>)
     6a6:	1d3b      	adds	r3, r7, #4
     6a8:	2100      	movs	r1, #0
     6aa:	0018      	movs	r0, r3
     6ac:	f000 fa70 	bl	b90 <reg_init>
     6b0:	4bc4      	ldr	r3, [pc, #784]	; (9c4 <main+0x3a8>)
     6b2:	2200      	movs	r2, #0
     6b4:	601a      	str	r2, [r3, #0]
     6b6:	f7ff fefd 	bl	4b4 <start_dma>
     6ba:	2300      	movs	r3, #0
     6bc:	2298      	movs	r2, #152	; 0x98
     6be:	18ba      	adds	r2, r7, r2
     6c0:	6013      	str	r3, [r2, #0]
     6c2:	2300      	movs	r3, #0
     6c4:	2294      	movs	r2, #148	; 0x94
     6c6:	18ba      	adds	r2, r7, r2
     6c8:	6013      	str	r3, [r2, #0]
     6ca:	2300      	movs	r3, #0
     6cc:	2284      	movs	r2, #132	; 0x84
     6ce:	18ba      	adds	r2, r7, r2
     6d0:	6013      	str	r3, [r2, #0]
     6d2:	2300      	movs	r3, #0
     6d4:	2280      	movs	r2, #128	; 0x80
     6d6:	18ba      	adds	r2, r7, r2
     6d8:	6013      	str	r3, [r2, #0]
     6da:	2300      	movs	r3, #0
     6dc:	229c      	movs	r2, #156	; 0x9c
     6de:	18ba      	adds	r2, r7, r2
     6e0:	6013      	str	r3, [r2, #0]
     6e2:	e038      	b.n	756 <main+0x13a>
     6e4:	f000 fa22 	bl	b2c <adc_dma_wait>
     6e8:	4bb7      	ldr	r3, [pc, #732]	; (9c8 <main+0x3ac>)
     6ea:	685b      	ldr	r3, [r3, #4]
     6ec:	051b      	lsls	r3, r3, #20
     6ee:	0d1a      	lsrs	r2, r3, #20
     6f0:	2398      	movs	r3, #152	; 0x98
     6f2:	18fb      	adds	r3, r7, r3
     6f4:	681b      	ldr	r3, [r3, #0]
     6f6:	18d3      	adds	r3, r2, r3
     6f8:	2298      	movs	r2, #152	; 0x98
     6fa:	18ba      	adds	r2, r7, r2
     6fc:	6013      	str	r3, [r2, #0]
     6fe:	4bb2      	ldr	r3, [pc, #712]	; (9c8 <main+0x3ac>)
     700:	689b      	ldr	r3, [r3, #8]
     702:	051b      	lsls	r3, r3, #20
     704:	0d1a      	lsrs	r2, r3, #20
     706:	2394      	movs	r3, #148	; 0x94
     708:	18fb      	adds	r3, r7, r3
     70a:	681b      	ldr	r3, [r3, #0]
     70c:	18d3      	adds	r3, r2, r3
     70e:	2294      	movs	r2, #148	; 0x94
     710:	18ba      	adds	r2, r7, r2
     712:	6013      	str	r3, [r2, #0]
     714:	4bac      	ldr	r3, [pc, #688]	; (9c8 <main+0x3ac>)
     716:	68db      	ldr	r3, [r3, #12]
     718:	051b      	lsls	r3, r3, #20
     71a:	0d1a      	lsrs	r2, r3, #20
     71c:	2384      	movs	r3, #132	; 0x84
     71e:	18fb      	adds	r3, r7, r3
     720:	681b      	ldr	r3, [r3, #0]
     722:	18d3      	adds	r3, r2, r3
     724:	2284      	movs	r2, #132	; 0x84
     726:	18ba      	adds	r2, r7, r2
     728:	6013      	str	r3, [r2, #0]
     72a:	4ba8      	ldr	r3, [pc, #672]	; (9cc <main+0x3b0>)
     72c:	689b      	ldr	r3, [r3, #8]
     72e:	051b      	lsls	r3, r3, #20
     730:	0d1b      	lsrs	r3, r3, #20
     732:	0018      	movs	r0, r3
     734:	f7ff ff36 	bl	5a4 <g2b>
     738:	0002      	movs	r2, r0
     73a:	2380      	movs	r3, #128	; 0x80
     73c:	18fb      	adds	r3, r7, r3
     73e:	681b      	ldr	r3, [r3, #0]
     740:	18d3      	adds	r3, r2, r3
     742:	2280      	movs	r2, #128	; 0x80
     744:	18ba      	adds	r2, r7, r2
     746:	6013      	str	r3, [r2, #0]
     748:	239c      	movs	r3, #156	; 0x9c
     74a:	18fb      	adds	r3, r7, r3
     74c:	681b      	ldr	r3, [r3, #0]
     74e:	3301      	adds	r3, #1
     750:	229c      	movs	r2, #156	; 0x9c
     752:	18ba      	adds	r2, r7, r2
     754:	6013      	str	r3, [r2, #0]
     756:	239c      	movs	r3, #156	; 0x9c
     758:	18fb      	adds	r3, r7, r3
     75a:	681b      	ldr	r3, [r3, #0]
     75c:	4a9c      	ldr	r2, [pc, #624]	; (9d0 <main+0x3b4>)
     75e:	4293      	cmp	r3, r2
     760:	ddc0      	ble.n	6e4 <main+0xc8>
     762:	2398      	movs	r3, #152	; 0x98
     764:	18fb      	adds	r3, r7, r3
     766:	681b      	ldr	r3, [r3, #0]
     768:	129b      	asrs	r3, r3, #10
     76a:	2298      	movs	r2, #152	; 0x98
     76c:	18ba      	adds	r2, r7, r2
     76e:	6013      	str	r3, [r2, #0]
     770:	2394      	movs	r3, #148	; 0x94
     772:	18fb      	adds	r3, r7, r3
     774:	681b      	ldr	r3, [r3, #0]
     776:	129b      	asrs	r3, r3, #10
     778:	2294      	movs	r2, #148	; 0x94
     77a:	18ba      	adds	r2, r7, r2
     77c:	6013      	str	r3, [r2, #0]
     77e:	2384      	movs	r3, #132	; 0x84
     780:	18fb      	adds	r3, r7, r3
     782:	681b      	ldr	r3, [r3, #0]
     784:	129b      	asrs	r3, r3, #10
     786:	2284      	movs	r2, #132	; 0x84
     788:	18ba      	adds	r2, r7, r2
     78a:	6013      	str	r3, [r2, #0]
     78c:	4b91      	ldr	r3, [pc, #580]	; (9d4 <main+0x3b8>)
     78e:	2284      	movs	r2, #132	; 0x84
     790:	18ba      	adds	r2, r7, r2
     792:	6812      	ldr	r2, [r2, #0]
     794:	601a      	str	r2, [r3, #0]
     796:	2380      	movs	r3, #128	; 0x80
     798:	18fb      	adds	r3, r7, r3
     79a:	681b      	ldr	r3, [r3, #0]
     79c:	129b      	asrs	r3, r3, #10
     79e:	2280      	movs	r2, #128	; 0x80
     7a0:	18ba      	adds	r2, r7, r2
     7a2:	6013      	str	r3, [r2, #0]
     7a4:	f000 f9c2 	bl	b2c <adc_dma_wait>
     7a8:	4b87      	ldr	r3, [pc, #540]	; (9c8 <main+0x3ac>)
     7aa:	681b      	ldr	r3, [r3, #0]
     7ac:	051b      	lsls	r3, r3, #20
     7ae:	0d1a      	lsrs	r2, r3, #20
     7b0:	0013      	movs	r3, r2
     7b2:	009b      	lsls	r3, r3, #2
     7b4:	189b      	adds	r3, r3, r2
     7b6:	0018      	movs	r0, r3
     7b8:	f000 fde6 	bl	1388 <mfilter>
     7bc:	0003      	movs	r3, r0
     7be:	229c      	movs	r2, #156	; 0x9c
     7c0:	18ba      	adds	r2, r7, r2
     7c2:	6013      	str	r3, [r2, #0]
     7c4:	239c      	movs	r3, #156	; 0x9c
     7c6:	18fb      	adds	r3, r7, r3
     7c8:	681b      	ldr	r3, [r3, #0]
     7ca:	10da      	asrs	r2, r3, #3
     7cc:	239c      	movs	r3, #156	; 0x9c
     7ce:	18fb      	adds	r3, r7, r3
     7d0:	681b      	ldr	r3, [r3, #0]
     7d2:	18d3      	adds	r3, r2, r3
     7d4:	10db      	asrs	r3, r3, #3
     7d6:	22af      	movs	r2, #175	; 0xaf
     7d8:	0092      	lsls	r2, r2, #2
     7da:	189a      	adds	r2, r3, r2
     7dc:	4b7d      	ldr	r3, [pc, #500]	; (9d4 <main+0x3b8>)
     7de:	601a      	str	r2, [r3, #0]
     7e0:	4b79      	ldr	r3, [pc, #484]	; (9c8 <main+0x3ac>)
     7e2:	685b      	ldr	r3, [r3, #4]
     7e4:	051b      	lsls	r3, r3, #20
     7e6:	0d1a      	lsrs	r2, r3, #20
     7e8:	2398      	movs	r3, #152	; 0x98
     7ea:	18fb      	adds	r3, r7, r3
     7ec:	681b      	ldr	r3, [r3, #0]
     7ee:	1ad3      	subs	r3, r2, r3
     7f0:	673b      	str	r3, [r7, #112]	; 0x70
     7f2:	4b75      	ldr	r3, [pc, #468]	; (9c8 <main+0x3ac>)
     7f4:	689b      	ldr	r3, [r3, #8]
     7f6:	051b      	lsls	r3, r3, #20
     7f8:	0d1a      	lsrs	r2, r3, #20
     7fa:	2394      	movs	r3, #148	; 0x94
     7fc:	18fb      	adds	r3, r7, r3
     7fe:	681b      	ldr	r3, [r3, #0]
     800:	1ad3      	subs	r3, r2, r3
     802:	66fb      	str	r3, [r7, #108]	; 0x6c
     804:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     806:	425a      	negs	r2, r3
     808:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     80a:	1ad3      	subs	r3, r2, r3
     80c:	66bb      	str	r3, [r7, #104]	; 0x68
     80e:	4b6e      	ldr	r3, [pc, #440]	; (9c8 <main+0x3ac>)
     810:	68db      	ldr	r3, [r3, #12]
     812:	051b      	lsls	r3, r3, #20
     814:	0d1b      	lsrs	r3, r3, #20
     816:	677b      	str	r3, [r7, #116]	; 0x74
     818:	4b6c      	ldr	r3, [pc, #432]	; (9cc <main+0x3b0>)
     81a:	689b      	ldr	r3, [r3, #8]
     81c:	051b      	lsls	r3, r3, #20
     81e:	0d1b      	lsrs	r3, r3, #20
     820:	0018      	movs	r0, r3
     822:	f7ff febf 	bl	5a4 <g2b>
     826:	0003      	movs	r3, r0
     828:	667b      	str	r3, [r7, #100]	; 0x64
     82a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     82c:	059b      	lsls	r3, r3, #22
     82e:	0d9b      	lsrs	r3, r3, #22
     830:	67fb      	str	r3, [r7, #124]	; 0x7c
     832:	4b69      	ldr	r3, [pc, #420]	; (9d8 <main+0x3bc>)
     834:	6e7a      	ldr	r2, [r7, #100]	; 0x64
     836:	605a      	str	r2, [r3, #4]
     838:	238c      	movs	r3, #140	; 0x8c
     83a:	18fb      	adds	r3, r7, r3
     83c:	681b      	ldr	r3, [r3, #0]
     83e:	3301      	adds	r3, #1
     840:	228c      	movs	r2, #140	; 0x8c
     842:	18ba      	adds	r2, r7, r2
     844:	6013      	str	r3, [r2, #0]
     846:	238c      	movs	r3, #140	; 0x8c
     848:	18fb      	adds	r3, r7, r3
     84a:	681b      	ldr	r3, [r3, #0]
     84c:	2207      	movs	r2, #7
     84e:	4013      	ands	r3, r2
     850:	d147      	bne.n	8e2 <main+0x2c6>
     852:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     854:	003a      	movs	r2, r7
     856:	0011      	movs	r1, r2
     858:	0018      	movs	r0, r3
     85a:	f000 fd6f 	bl	133c <get_speed>
     85e:	0003      	movs	r3, r0
     860:	663b      	str	r3, [r7, #96]	; 0x60
     862:	4b58      	ldr	r3, [pc, #352]	; (9c4 <main+0x3a8>)
     864:	681a      	ldr	r2, [r3, #0]
     866:	683b      	ldr	r3, [r7, #0]
     868:	1ad1      	subs	r1, r2, r3
     86a:	1d3b      	adds	r3, r7, #4
     86c:	2200      	movs	r2, #0
     86e:	0018      	movs	r0, r3
     870:	f000 f994 	bl	b9c <reg_update>
     874:	1d3b      	adds	r3, r7, #4
     876:	68db      	ldr	r3, [r3, #12]
     878:	129b      	asrs	r3, r3, #10
     87a:	67bb      	str	r3, [r7, #120]	; 0x78
     87c:	6fba      	ldr	r2, [r7, #120]	; 0x78
     87e:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     880:	1ad1      	subs	r1, r2, r3
     882:	2314      	movs	r3, #20
     884:	18fb      	adds	r3, r7, r3
     886:	2200      	movs	r2, #0
     888:	0018      	movs	r0, r3
     88a:	f000 f987 	bl	b9c <reg_update>
     88e:	2314      	movs	r3, #20
     890:	18fb      	adds	r3, r7, r3
     892:	68db      	ldr	r3, [r3, #12]
     894:	129b      	asrs	r3, r3, #10
     896:	2288      	movs	r2, #136	; 0x88
     898:	18ba      	adds	r2, r7, r2
     89a:	6013      	str	r3, [r2, #0]
     89c:	2388      	movs	r3, #136	; 0x88
     89e:	18fb      	adds	r3, r7, r3
     8a0:	681a      	ldr	r2, [r3, #0]
     8a2:	23fa      	movs	r3, #250	; 0xfa
     8a4:	00db      	lsls	r3, r3, #3
     8a6:	429a      	cmp	r2, r3
     8a8:	dd04      	ble.n	8b4 <main+0x298>
     8aa:	23fa      	movs	r3, #250	; 0xfa
     8ac:	00db      	lsls	r3, r3, #3
     8ae:	2288      	movs	r2, #136	; 0x88
     8b0:	18ba      	adds	r2, r7, r2
     8b2:	6013      	str	r3, [r2, #0]
     8b4:	2388      	movs	r3, #136	; 0x88
     8b6:	18fb      	adds	r3, r7, r3
     8b8:	681b      	ldr	r3, [r3, #0]
     8ba:	4a48      	ldr	r2, [pc, #288]	; (9dc <main+0x3c0>)
     8bc:	4293      	cmp	r3, r2
     8be:	da03      	bge.n	8c8 <main+0x2ac>
     8c0:	4b46      	ldr	r3, [pc, #280]	; (9dc <main+0x3c0>)
     8c2:	2288      	movs	r2, #136	; 0x88
     8c4:	18ba      	adds	r2, r7, r2
     8c6:	6013      	str	r3, [r2, #0]
     8c8:	4b42      	ldr	r3, [pc, #264]	; (9d4 <main+0x3b8>)
     8ca:	681a      	ldr	r2, [r3, #0]
     8cc:	2384      	movs	r3, #132	; 0x84
     8ce:	18fb      	adds	r3, r7, r3
     8d0:	681b      	ldr	r3, [r3, #0]
     8d2:	1ad2      	subs	r2, r2, r3
     8d4:	0013      	movs	r3, r2
     8d6:	00db      	lsls	r3, r3, #3
     8d8:	1a9b      	subs	r3, r3, r2
     8da:	00da      	lsls	r2, r3, #3
     8dc:	1ad2      	subs	r2, r2, r3
     8de:	4b39      	ldr	r3, [pc, #228]	; (9c4 <main+0x3a8>)
     8e0:	601a      	str	r2, [r3, #0]
     8e2:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
     8e4:	4a3e      	ldr	r2, [pc, #248]	; (9e0 <main+0x3c4>)
     8e6:	4694      	mov	ip, r2
     8e8:	4463      	add	r3, ip
     8ea:	059b      	lsls	r3, r3, #22
     8ec:	0d9b      	lsrs	r3, r3, #22
     8ee:	67fb      	str	r3, [r7, #124]	; 0x7c
     8f0:	2344      	movs	r3, #68	; 0x44
     8f2:	18fb      	adds	r3, r7, r3
     8f4:	6f3a      	ldr	r2, [r7, #112]	; 0x70
     8f6:	601a      	str	r2, [r3, #0]
     8f8:	2344      	movs	r3, #68	; 0x44
     8fa:	18fb      	adds	r3, r7, r3
     8fc:	6eba      	ldr	r2, [r7, #104]	; 0x68
     8fe:	605a      	str	r2, [r3, #4]
     900:	2344      	movs	r3, #68	; 0x44
     902:	18fb      	adds	r3, r7, r3
     904:	6efa      	ldr	r2, [r7, #108]	; 0x6c
     906:	609a      	str	r2, [r3, #8]
     908:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
     90a:	2350      	movs	r3, #80	; 0x50
     90c:	18f9      	adds	r1, r7, r3
     90e:	2344      	movs	r3, #68	; 0x44
     910:	18fb      	adds	r3, r7, r3
     912:	0018      	movs	r0, r3
     914:	f000 f968 	bl	be8 <abc_to_dq>
     918:	2350      	movs	r3, #80	; 0x50
     91a:	18fb      	adds	r3, r7, r3
     91c:	681b      	ldr	r3, [r3, #0]
     91e:	425b      	negs	r3, r3
     920:	65fb      	str	r3, [r7, #92]	; 0x5c
     922:	2350      	movs	r3, #80	; 0x50
     924:	18fb      	adds	r3, r7, r3
     926:	685b      	ldr	r3, [r3, #4]
     928:	2288      	movs	r2, #136	; 0x88
     92a:	18ba      	adds	r2, r7, r2
     92c:	6812      	ldr	r2, [r2, #0]
     92e:	1ad3      	subs	r3, r2, r3
     930:	65bb      	str	r3, [r7, #88]	; 0x58
     932:	2390      	movs	r3, #144	; 0x90
     934:	18fb      	adds	r3, r7, r3
     936:	681a      	ldr	r2, [r3, #0]
     938:	6df9      	ldr	r1, [r7, #92]	; 0x5c
     93a:	2334      	movs	r3, #52	; 0x34
     93c:	18fb      	adds	r3, r7, r3
     93e:	0018      	movs	r0, r3
     940:	f000 f92c 	bl	b9c <reg_update>
     944:	2390      	movs	r3, #144	; 0x90
     946:	18fb      	adds	r3, r7, r3
     948:	681a      	ldr	r2, [r3, #0]
     94a:	6db9      	ldr	r1, [r7, #88]	; 0x58
     94c:	2324      	movs	r3, #36	; 0x24
     94e:	18fb      	adds	r3, r7, r3
     950:	0018      	movs	r0, r3
     952:	f000 f923 	bl	b9c <reg_update>
     956:	2334      	movs	r3, #52	; 0x34
     958:	18fb      	adds	r3, r7, r3
     95a:	68da      	ldr	r2, [r3, #12]
     95c:	2350      	movs	r3, #80	; 0x50
     95e:	18fb      	adds	r3, r7, r3
     960:	601a      	str	r2, [r3, #0]
     962:	2324      	movs	r3, #36	; 0x24
     964:	18fb      	adds	r3, r7, r3
     966:	68da      	ldr	r2, [r3, #12]
     968:	2350      	movs	r3, #80	; 0x50
     96a:	18fb      	adds	r3, r7, r3
     96c:	605a      	str	r2, [r3, #4]
     96e:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
     970:	2350      	movs	r3, #80	; 0x50
     972:	18f9      	adds	r1, r7, r3
     974:	2344      	movs	r3, #68	; 0x44
     976:	18fb      	adds	r3, r7, r3
     978:	0018      	movs	r0, r3
     97a:	f000 fb61 	bl	1040 <svpwm>
     97e:	0003      	movs	r3, r0
     980:	2290      	movs	r2, #144	; 0x90
     982:	18ba      	adds	r2, r7, r2
     984:	6013      	str	r3, [r2, #0]
     986:	4a17      	ldr	r2, [pc, #92]	; (9e4 <main+0x3c8>)
     988:	2344      	movs	r3, #68	; 0x44
     98a:	18fb      	adds	r3, r7, r3
     98c:	681b      	ldr	r3, [r3, #0]
     98e:	2180      	movs	r1, #128	; 0x80
     990:	0089      	lsls	r1, r1, #2
     992:	468c      	mov	ip, r1
     994:	4463      	add	r3, ip
     996:	6113      	str	r3, [r2, #16]
     998:	4a12      	ldr	r2, [pc, #72]	; (9e4 <main+0x3c8>)
     99a:	2344      	movs	r3, #68	; 0x44
     99c:	18fb      	adds	r3, r7, r3
     99e:	685b      	ldr	r3, [r3, #4]
     9a0:	2180      	movs	r1, #128	; 0x80
     9a2:	0089      	lsls	r1, r1, #2
     9a4:	468c      	mov	ip, r1
     9a6:	4463      	add	r3, ip
     9a8:	6153      	str	r3, [r2, #20]
     9aa:	4a0e      	ldr	r2, [pc, #56]	; (9e4 <main+0x3c8>)
     9ac:	2344      	movs	r3, #68	; 0x44
     9ae:	18fb      	adds	r3, r7, r3
     9b0:	689b      	ldr	r3, [r3, #8]
     9b2:	2180      	movs	r1, #128	; 0x80
     9b4:	0089      	lsls	r1, r1, #2
     9b6:	468c      	mov	ip, r1
     9b8:	4463      	add	r3, ip
     9ba:	6193      	str	r3, [r2, #24]
     9bc:	e6f2      	b.n	7a4 <main+0x188>
     9be:	46c0      	nop			; (mov r8, r8)
     9c0:	00000bb8 	.word	0x00000bb8
     9c4:	20000004 	.word	0x20000004
     9c8:	20100200 	.word	0x20100200
     9cc:	400a0000 	.word	0x400a0000
     9d0:	000003ff 	.word	0x000003ff
     9d4:	20000008 	.word	0x20000008
     9d8:	40090000 	.word	0x40090000
     9dc:	fffff830 	.word	0xfffff830
     9e0:	000003ea 	.word	0x000003ea
     9e4:	40098000 	.word	0x40098000

000009e8 <TIMER4_Handler>:
     9e8:	b580      	push	{r7, lr}
     9ea:	af00      	add	r7, sp, #0
     9ec:	4b07      	ldr	r3, [pc, #28]	; (a0c <TIMER4_Handler+0x24>)
     9ee:	2200      	movs	r2, #0
     9f0:	655a      	str	r2, [r3, #84]	; 0x54
     9f2:	4b07      	ldr	r3, [pc, #28]	; (a10 <TIMER4_Handler+0x28>)
     9f4:	681b      	ldr	r3, [r3, #0]
     9f6:	1c5a      	adds	r2, r3, #1
     9f8:	4b05      	ldr	r3, [pc, #20]	; (a10 <TIMER4_Handler+0x28>)
     9fa:	601a      	str	r2, [r3, #0]
     9fc:	f000 f882 	bl	b04 <adc_dma_start>
     a00:	4b04      	ldr	r3, [pc, #16]	; (a14 <TIMER4_Handler+0x2c>)
     a02:	4a05      	ldr	r2, [pc, #20]	; (a18 <TIMER4_Handler+0x30>)
     a04:	609a      	str	r2, [r3, #8]
     a06:	46c0      	nop			; (mov r8, r8)
     a08:	46bd      	mov	sp, r7
     a0a:	bd80      	pop	{r7, pc}
     a0c:	40098000 	.word	0x40098000
     a10:	2000000c 	.word	0x2000000c
     a14:	400a0000 	.word	0x400a0000
     a18:	00000555 	.word	0x00000555

00000a1c <handler_reset>:
     a1c:	b580      	push	{r7, lr}
     a1e:	b082      	sub	sp, #8
     a20:	af00      	add	r7, sp, #0
     a22:	4b11      	ldr	r3, [pc, #68]	; (a68 <handler_reset+0x4c>)
     a24:	607b      	str	r3, [r7, #4]
     a26:	4b11      	ldr	r3, [pc, #68]	; (a6c <handler_reset+0x50>)
     a28:	603b      	str	r3, [r7, #0]
     a2a:	e007      	b.n	a3c <handler_reset+0x20>
     a2c:	683b      	ldr	r3, [r7, #0]
     a2e:	1d1a      	adds	r2, r3, #4
     a30:	603a      	str	r2, [r7, #0]
     a32:	687a      	ldr	r2, [r7, #4]
     a34:	1d11      	adds	r1, r2, #4
     a36:	6079      	str	r1, [r7, #4]
     a38:	6812      	ldr	r2, [r2, #0]
     a3a:	601a      	str	r2, [r3, #0]
     a3c:	683a      	ldr	r2, [r7, #0]
     a3e:	4b0c      	ldr	r3, [pc, #48]	; (a70 <handler_reset+0x54>)
     a40:	429a      	cmp	r2, r3
     a42:	d3f3      	bcc.n	a2c <handler_reset+0x10>
     a44:	4b0b      	ldr	r3, [pc, #44]	; (a74 <handler_reset+0x58>)
     a46:	603b      	str	r3, [r7, #0]
     a48:	e004      	b.n	a54 <handler_reset+0x38>
     a4a:	683b      	ldr	r3, [r7, #0]
     a4c:	1d1a      	adds	r2, r3, #4
     a4e:	603a      	str	r2, [r7, #0]
     a50:	2200      	movs	r2, #0
     a52:	601a      	str	r2, [r3, #0]
     a54:	683a      	ldr	r2, [r7, #0]
     a56:	4b08      	ldr	r3, [pc, #32]	; (a78 <handler_reset+0x5c>)
     a58:	429a      	cmp	r2, r3
     a5a:	d3f6      	bcc.n	a4a <handler_reset+0x2e>
     a5c:	f7ff fdde 	bl	61c <main>
     a60:	46c0      	nop			; (mov r8, r8)
     a62:	46bd      	mov	sp, r7
     a64:	b002      	add	sp, #8
     a66:	bd80      	pop	{r7, pc}
     a68:	00002408 	.word	0x00002408
     a6c:	20000000 	.word	0x20000000
     a70:	20000004 	.word	0x20000004
     a74:	20000004 	.word	0x20000004
     a78:	200000a0 	.word	0x200000a0

00000a7c <default_handler>:
     a7c:	b580      	push	{r7, lr}
     a7e:	af00      	add	r7, sp, #0
     a80:	e7fe      	b.n	a80 <default_handler+0x4>
     a82:	46c0      	nop			; (mov r8, r8)

00000a84 <adc_dma_init>:
     a84:	b580      	push	{r7, lr}
     a86:	af00      	add	r7, sp, #0
     a88:	4b18      	ldr	r3, [pc, #96]	; (aec <adc_dma_init+0x68>)
     a8a:	4a18      	ldr	r2, [pc, #96]	; (aec <adc_dma_init+0x68>)
     a8c:	69d2      	ldr	r2, [r2, #28]
     a8e:	2120      	movs	r1, #32
     a90:	430a      	orrs	r2, r1
     a92:	61da      	str	r2, [r3, #28]
     a94:	4b16      	ldr	r3, [pc, #88]	; (af0 <adc_dma_init+0x6c>)
     a96:	4a17      	ldr	r2, [pc, #92]	; (af4 <adc_dma_init+0x70>)
     a98:	609a      	str	r2, [r3, #8]
     a9a:	4b15      	ldr	r3, [pc, #84]	; (af0 <adc_dma_init+0x6c>)
     a9c:	2201      	movs	r2, #1
     a9e:	4252      	negs	r2, r2
     aa0:	62da      	str	r2, [r3, #44]	; 0x2c
     aa2:	4b13      	ldr	r3, [pc, #76]	; (af0 <adc_dma_init+0x6c>)
     aa4:	2201      	movs	r2, #1
     aa6:	4252      	negs	r2, r2
     aa8:	621a      	str	r2, [r3, #32]
     aaa:	4b11      	ldr	r3, [pc, #68]	; (af0 <adc_dma_init+0x6c>)
     aac:	2201      	movs	r2, #1
     aae:	4252      	negs	r2, r2
     ab0:	635a      	str	r2, [r3, #52]	; 0x34
     ab2:	4b0f      	ldr	r3, [pc, #60]	; (af0 <adc_dma_init+0x6c>)
     ab4:	2280      	movs	r2, #128	; 0x80
     ab6:	05d2      	lsls	r2, r2, #23
     ab8:	61da      	str	r2, [r3, #28]
     aba:	4b0d      	ldr	r3, [pc, #52]	; (af0 <adc_dma_init+0x6c>)
     abc:	2280      	movs	r2, #128	; 0x80
     abe:	05d2      	lsls	r2, r2, #23
     ac0:	625a      	str	r2, [r3, #36]	; 0x24
     ac2:	4b0b      	ldr	r3, [pc, #44]	; (af0 <adc_dma_init+0x6c>)
     ac4:	2201      	movs	r2, #1
     ac6:	605a      	str	r2, [r3, #4]
     ac8:	4a0a      	ldr	r2, [pc, #40]	; (af4 <adc_dma_init+0x70>)
     aca:	23f0      	movs	r3, #240	; 0xf0
     acc:	005b      	lsls	r3, r3, #1
     ace:	490a      	ldr	r1, [pc, #40]	; (af8 <adc_dma_init+0x74>)
     ad0:	50d1      	str	r1, [r2, r3]
     ad2:	490a      	ldr	r1, [pc, #40]	; (afc <adc_dma_init+0x78>)
     ad4:	4a07      	ldr	r2, [pc, #28]	; (af4 <adc_dma_init+0x70>)
     ad6:	23f2      	movs	r3, #242	; 0xf2
     ad8:	005b      	lsls	r3, r3, #1
     ada:	50d1      	str	r1, [r2, r3]
     adc:	4a05      	ldr	r2, [pc, #20]	; (af4 <adc_dma_init+0x70>)
     ade:	23f4      	movs	r3, #244	; 0xf4
     ae0:	005b      	lsls	r3, r3, #1
     ae2:	4907      	ldr	r1, [pc, #28]	; (b00 <adc_dma_init+0x7c>)
     ae4:	50d1      	str	r1, [r2, r3]
     ae6:	46c0      	nop			; (mov r8, r8)
     ae8:	46bd      	mov	sp, r7
     aea:	bd80      	pop	{r7, pc}
     aec:	40020000 	.word	0x40020000
     af0:	40028000 	.word	0x40028000
     af4:	20100000 	.word	0x20100000
     af8:	40088018 	.word	0x40088018
     afc:	2010020c 	.word	0x2010020c
     b00:	ae000031 	.word	0xae000031

00000b04 <adc_dma_start>:
     b04:	b580      	push	{r7, lr}
     b06:	af00      	add	r7, sp, #0
     b08:	4b06      	ldr	r3, [pc, #24]	; (b24 <adc_dma_start+0x20>)
     b0a:	4a06      	ldr	r2, [pc, #24]	; (b24 <adc_dma_start+0x20>)
     b0c:	6812      	ldr	r2, [r2, #0]
     b0e:	2108      	movs	r1, #8
     b10:	430a      	orrs	r2, r1
     b12:	601a      	str	r2, [r3, #0]
     b14:	4b04      	ldr	r3, [pc, #16]	; (b28 <adc_dma_start+0x24>)
     b16:	2280      	movs	r2, #128	; 0x80
     b18:	05d2      	lsls	r2, r2, #23
     b1a:	629a      	str	r2, [r3, #40]	; 0x28
     b1c:	46c0      	nop			; (mov r8, r8)
     b1e:	46bd      	mov	sp, r7
     b20:	bd80      	pop	{r7, pc}
     b22:	46c0      	nop			; (mov r8, r8)
     b24:	40088000 	.word	0x40088000
     b28:	40028000 	.word	0x40028000

00000b2c <adc_dma_wait>:
     b2c:	b580      	push	{r7, lr}
     b2e:	af00      	add	r7, sp, #0
     b30:	46c0      	nop			; (mov r8, r8)
     b32:	4a0a      	ldr	r2, [pc, #40]	; (b5c <adc_dma_wait+0x30>)
     b34:	23f4      	movs	r3, #244	; 0xf4
     b36:	005b      	lsls	r3, r3, #1
     b38:	58d3      	ldr	r3, [r2, r3]
     b3a:	2207      	movs	r2, #7
     b3c:	4013      	ands	r3, r2
     b3e:	d1f8      	bne.n	b32 <adc_dma_wait+0x6>
     b40:	4b07      	ldr	r3, [pc, #28]	; (b60 <adc_dma_wait+0x34>)
     b42:	4a07      	ldr	r2, [pc, #28]	; (b60 <adc_dma_wait+0x34>)
     b44:	6812      	ldr	r2, [r2, #0]
     b46:	2108      	movs	r1, #8
     b48:	438a      	bics	r2, r1
     b4a:	601a      	str	r2, [r3, #0]
     b4c:	4a03      	ldr	r2, [pc, #12]	; (b5c <adc_dma_wait+0x30>)
     b4e:	23f4      	movs	r3, #244	; 0xf4
     b50:	005b      	lsls	r3, r3, #1
     b52:	4904      	ldr	r1, [pc, #16]	; (b64 <adc_dma_wait+0x38>)
     b54:	50d1      	str	r1, [r2, r3]
     b56:	46c0      	nop			; (mov r8, r8)
     b58:	46bd      	mov	sp, r7
     b5a:	bd80      	pop	{r7, pc}
     b5c:	20100000 	.word	0x20100000
     b60:	40088000 	.word	0x40088000
     b64:	ae000031 	.word	0xae000031

00000b68 <mycos>:
     b68:	4b02      	ldr	r3, [pc, #8]	; (b74 <mycos+0xc>)
     b6a:	0580      	lsls	r0, r0, #22
     b6c:	0d00      	lsrs	r0, r0, #20
     b6e:	58c0      	ldr	r0, [r0, r3]
     b70:	4770      	bx	lr
     b72:	46c0      	nop			; (mov r8, r8)
     b74:	000013b0 	.word	0x000013b0

00000b78 <mysin>:
     b78:	23c0      	movs	r3, #192	; 0xc0
     b7a:	009b      	lsls	r3, r3, #2
     b7c:	469c      	mov	ip, r3
     b7e:	4460      	add	r0, ip
     b80:	4b02      	ldr	r3, [pc, #8]	; (b8c <mysin+0x14>)
     b82:	0580      	lsls	r0, r0, #22
     b84:	0d00      	lsrs	r0, r0, #20
     b86:	58c0      	ldr	r0, [r0, r3]
     b88:	4770      	bx	lr
     b8a:	46c0      	nop			; (mov r8, r8)
     b8c:	000013b0 	.word	0x000013b0

00000b90 <reg_init>:
     b90:	2300      	movs	r3, #0
     b92:	6001      	str	r1, [r0, #0]
     b94:	6042      	str	r2, [r0, #4]
     b96:	6083      	str	r3, [r0, #8]
     b98:	60c3      	str	r3, [r0, #12]
     b9a:	4770      	bx	lr

00000b9c <reg_update>:
     b9c:	b510      	push	{r4, lr}
     b9e:	6804      	ldr	r4, [r0, #0]
     ba0:	6883      	ldr	r3, [r0, #8]
     ba2:	434c      	muls	r4, r1
     ba4:	2a00      	cmp	r2, #0
     ba6:	d004      	beq.n	bb2 <reg_update+0x16>
     ba8:	2b00      	cmp	r3, #0
     baa:	dd09      	ble.n	bc0 <reg_update+0x24>
     bac:	2c00      	cmp	r4, #0
     bae:	dd00      	ble.n	bb2 <reg_update+0x16>
     bb0:	2400      	movs	r4, #0
     bb2:	6842      	ldr	r2, [r0, #4]
     bb4:	18e3      	adds	r3, r4, r3
     bb6:	4351      	muls	r1, r2
     bb8:	18c9      	adds	r1, r1, r3
     bba:	60c1      	str	r1, [r0, #12]
     bbc:	6083      	str	r3, [r0, #8]
     bbe:	bd10      	pop	{r4, pc}
     bc0:	2b00      	cmp	r3, #0
     bc2:	d0f6      	beq.n	bb2 <reg_update+0x16>
     bc4:	43e2      	mvns	r2, r4
     bc6:	17d2      	asrs	r2, r2, #31
     bc8:	4014      	ands	r4, r2
     bca:	e7f2      	b.n	bb2 <reg_update+0x16>

00000bcc <dot3>:
     bcc:	6803      	ldr	r3, [r0, #0]
     bce:	680a      	ldr	r2, [r1, #0]
     bd0:	b510      	push	{r4, lr}
     bd2:	435a      	muls	r2, r3
     bd4:	6844      	ldr	r4, [r0, #4]
     bd6:	684b      	ldr	r3, [r1, #4]
     bd8:	6880      	ldr	r0, [r0, #8]
     bda:	4363      	muls	r3, r4
     bdc:	18d2      	adds	r2, r2, r3
     bde:	688b      	ldr	r3, [r1, #8]
     be0:	4343      	muls	r3, r0
     be2:	18d0      	adds	r0, r2, r3
     be4:	bd10      	pop	{r4, pc}
     be6:	46c0      	nop			; (mov r8, r8)

00000be8 <abc_to_dq>:
     be8:	23c0      	movs	r3, #192	; 0xc0
     bea:	b5f0      	push	{r4, r5, r6, r7, lr}
     bec:	4647      	mov	r7, r8
     bee:	009b      	lsls	r3, r3, #2
     bf0:	18d3      	adds	r3, r2, r3
     bf2:	4d1b      	ldr	r5, [pc, #108]	; (c60 <abc_to_dq+0x78>)
     bf4:	059b      	lsls	r3, r3, #22
     bf6:	0d1b      	lsrs	r3, r3, #20
     bf8:	595b      	ldr	r3, [r3, r5]
     bfa:	b480      	push	{r7}
     bfc:	4698      	mov	r8, r3
     bfe:	4b19      	ldr	r3, [pc, #100]	; (c64 <abc_to_dq+0x7c>)
     c00:	18d4      	adds	r4, r2, r3
     c02:	05a4      	lsls	r4, r4, #22
     c04:	4b18      	ldr	r3, [pc, #96]	; (c68 <abc_to_dq+0x80>)
     c06:	0d24      	lsrs	r4, r4, #20
     c08:	5967      	ldr	r7, [r4, r5]
     c0a:	18d4      	adds	r4, r2, r3
     c0c:	05a4      	lsls	r4, r4, #22
     c0e:	4b17      	ldr	r3, [pc, #92]	; (c6c <abc_to_dq+0x84>)
     c10:	0d24      	lsrs	r4, r4, #20
     c12:	5966      	ldr	r6, [r4, r5]
     c14:	18d4      	adds	r4, r2, r3
     c16:	05a4      	lsls	r4, r4, #22
     c18:	0d24      	lsrs	r4, r4, #20
     c1a:	5964      	ldr	r4, [r4, r5]
     c1c:	6843      	ldr	r3, [r0, #4]
     c1e:	4363      	muls	r3, r4
     c20:	0094      	lsls	r4, r2, #2
     c22:	469c      	mov	ip, r3
     c24:	3256      	adds	r2, #86	; 0x56
     c26:	32ff      	adds	r2, #255	; 0xff
     c28:	6803      	ldr	r3, [r0, #0]
     c2a:	5964      	ldr	r4, [r4, r5]
     c2c:	0592      	lsls	r2, r2, #22
     c2e:	0d12      	lsrs	r2, r2, #20
     c30:	5955      	ldr	r5, [r2, r5]
     c32:	435c      	muls	r4, r3
     c34:	6883      	ldr	r3, [r0, #8]
     c36:	4464      	add	r4, ip
     c38:	435d      	muls	r5, r3
     c3a:	4643      	mov	r3, r8
     c3c:	1964      	adds	r4, r4, r5
     c3e:	12a4      	asrs	r4, r4, #10
     c40:	600c      	str	r4, [r1, #0]
     c42:	6802      	ldr	r2, [r0, #0]
     c44:	435a      	muls	r2, r3
     c46:	6843      	ldr	r3, [r0, #4]
     c48:	437b      	muls	r3, r7
     c4a:	18d3      	adds	r3, r2, r3
     c4c:	6882      	ldr	r2, [r0, #8]
     c4e:	4372      	muls	r2, r6
     c50:	189b      	adds	r3, r3, r2
     c52:	425b      	negs	r3, r3
     c54:	129b      	asrs	r3, r3, #10
     c56:	604b      	str	r3, [r1, #4]
     c58:	bc04      	pop	{r2}
     c5a:	4690      	mov	r8, r2
     c5c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c5e:	46c0      	nop			; (mov r8, r8)
     c60:	000013b0 	.word	0x000013b0
     c64:	000005aa 	.word	0x000005aa
     c68:	00000455 	.word	0x00000455
     c6c:	000002aa 	.word	0x000002aa

00000c70 <dq_to_abc>:
     c70:	b570      	push	{r4, r5, r6, lr}
     c72:	4d1a      	ldr	r5, [pc, #104]	; (cdc <dq_to_abc+0x6c>)
     c74:	0093      	lsls	r3, r2, #2
     c76:	680c      	ldr	r4, [r1, #0]
     c78:	595b      	ldr	r3, [r3, r5]
     c7a:	684e      	ldr	r6, [r1, #4]
     c7c:	435c      	muls	r4, r3
     c7e:	23c0      	movs	r3, #192	; 0xc0
     c80:	009b      	lsls	r3, r3, #2
     c82:	18d3      	adds	r3, r2, r3
     c84:	059b      	lsls	r3, r3, #22
     c86:	0d1b      	lsrs	r3, r3, #20
     c88:	595b      	ldr	r3, [r3, r5]
     c8a:	4373      	muls	r3, r6
     c8c:	1ae3      	subs	r3, r4, r3
     c8e:	151b      	asrs	r3, r3, #20
     c90:	6003      	str	r3, [r0, #0]
     c92:	4b13      	ldr	r3, [pc, #76]	; (ce0 <dq_to_abc+0x70>)
     c94:	680c      	ldr	r4, [r1, #0]
     c96:	18d3      	adds	r3, r2, r3
     c98:	059b      	lsls	r3, r3, #22
     c9a:	0d1b      	lsrs	r3, r3, #20
     c9c:	595b      	ldr	r3, [r3, r5]
     c9e:	684e      	ldr	r6, [r1, #4]
     ca0:	435c      	muls	r4, r3
     ca2:	4b10      	ldr	r3, [pc, #64]	; (ce4 <dq_to_abc+0x74>)
     ca4:	18d3      	adds	r3, r2, r3
     ca6:	059b      	lsls	r3, r3, #22
     ca8:	0d1b      	lsrs	r3, r3, #20
     caa:	595b      	ldr	r3, [r3, r5]
     cac:	4373      	muls	r3, r6
     cae:	1ae3      	subs	r3, r4, r3
     cb0:	151b      	asrs	r3, r3, #20
     cb2:	6043      	str	r3, [r0, #4]
     cb4:	0013      	movs	r3, r2
     cb6:	3356      	adds	r3, #86	; 0x56
     cb8:	33ff      	adds	r3, #255	; 0xff
     cba:	059b      	lsls	r3, r3, #22
     cbc:	0d1b      	lsrs	r3, r3, #20
     cbe:	595b      	ldr	r3, [r3, r5]
     cc0:	680c      	ldr	r4, [r1, #0]
     cc2:	435c      	muls	r4, r3
     cc4:	4b08      	ldr	r3, [pc, #32]	; (ce8 <dq_to_abc+0x78>)
     cc6:	469c      	mov	ip, r3
     cc8:	4462      	add	r2, ip
     cca:	0592      	lsls	r2, r2, #22
     ccc:	0d12      	lsrs	r2, r2, #20
     cce:	5952      	ldr	r2, [r2, r5]
     cd0:	684b      	ldr	r3, [r1, #4]
     cd2:	4353      	muls	r3, r2
     cd4:	1ae3      	subs	r3, r4, r3
     cd6:	151b      	asrs	r3, r3, #20
     cd8:	6083      	str	r3, [r0, #8]
     cda:	bd70      	pop	{r4, r5, r6, pc}
     cdc:	000013b0 	.word	0x000013b0
     ce0:	000002aa 	.word	0x000002aa
     ce4:	000005aa 	.word	0x000005aa
     ce8:	00000455 	.word	0x00000455

00000cec <cord_atan>:
     cec:	b5f0      	push	{r4, r5, r6, r7, lr}
     cee:	464f      	mov	r7, r9
     cf0:	4646      	mov	r6, r8
     cf2:	b4c0      	push	{r6, r7}
     cf4:	4b63      	ldr	r3, [pc, #396]	; (e84 <cord_atan+0x198>)
     cf6:	b091      	sub	sp, #68	; 0x44
     cf8:	001c      	movs	r4, r3
     cfa:	4694      	mov	ip, r2
     cfc:	466a      	mov	r2, sp
     cfe:	4699      	mov	r9, r3
     d00:	cca8      	ldmia	r4!, {r3, r5, r7}
     d02:	c2a8      	stmia	r2!, {r3, r5, r7}
     d04:	cca8      	ldmia	r4!, {r3, r5, r7}
     d06:	c2a8      	stmia	r2!, {r3, r5, r7}
     d08:	cc28      	ldmia	r4!, {r3, r5}
     d0a:	c228      	stmia	r2!, {r3, r5}
     d0c:	464b      	mov	r3, r9
     d0e:	aa08      	add	r2, sp, #32
     d10:	3320      	adds	r3, #32
     d12:	4690      	mov	r8, r2
     d14:	cbb0      	ldmia	r3!, {r4, r5, r7}
     d16:	c2b0      	stmia	r2!, {r4, r5, r7}
     d18:	cbb0      	ldmia	r3!, {r4, r5, r7}
     d1a:	c2b0      	stmia	r2!, {r4, r5, r7}
     d1c:	cb30      	ldmia	r3!, {r4, r5}
     d1e:	c230      	stmia	r2!, {r4, r5}
     d20:	6802      	ldr	r2, [r0, #0]
     d22:	6845      	ldr	r5, [r0, #4]
     d24:	17d4      	asrs	r4, r2, #31
     d26:	1913      	adds	r3, r2, r4
     d28:	466e      	mov	r6, sp
     d2a:	4063      	eors	r3, r4
     d2c:	2d00      	cmp	r5, #0
     d2e:	dd69      	ble.n	e04 <cord_atan+0x118>
     d30:	195f      	adds	r7, r3, r5
     d32:	1aeb      	subs	r3, r5, r3
     d34:	9d00      	ldr	r5, [sp, #0]
     d36:	2b00      	cmp	r3, #0
     d38:	d100      	bne.n	d3c <cord_atan+0x50>
     d3a:	e091      	b.n	e60 <cord_atan+0x174>
     d3c:	105c      	asrs	r4, r3, #1
     d3e:	2b00      	cmp	r3, #0
     d40:	dd65      	ble.n	e0e <cord_atan+0x122>
     d42:	1078      	asrs	r0, r7, #1
     d44:	1a1b      	subs	r3, r3, r0
     d46:	6870      	ldr	r0, [r6, #4]
     d48:	19e4      	adds	r4, r4, r7
     d4a:	4681      	mov	r9, r0
     d4c:	444d      	add	r5, r9
     d4e:	2b00      	cmp	r3, #0
     d50:	d100      	bne.n	d54 <cord_atan+0x68>
     d52:	e087      	b.n	e64 <cord_atan+0x178>
     d54:	1098      	asrs	r0, r3, #2
     d56:	2b00      	cmp	r3, #0
     d58:	dd5f      	ble.n	e1a <cord_atan+0x12e>
     d5a:	1907      	adds	r7, r0, r4
     d5c:	10a4      	asrs	r4, r4, #2
     d5e:	1b18      	subs	r0, r3, r4
     d60:	68b3      	ldr	r3, [r6, #8]
     d62:	4699      	mov	r9, r3
     d64:	444d      	add	r5, r9
     d66:	2800      	cmp	r0, #0
     d68:	d100      	bne.n	d6c <cord_atan+0x80>
     d6a:	e07e      	b.n	e6a <cord_atan+0x17e>
     d6c:	10c3      	asrs	r3, r0, #3
     d6e:	2800      	cmp	r0, #0
     d70:	dd59      	ble.n	e26 <cord_atan+0x13a>
     d72:	10fc      	asrs	r4, r7, #3
     d74:	1b00      	subs	r0, r0, r4
     d76:	68f4      	ldr	r4, [r6, #12]
     d78:	19db      	adds	r3, r3, r7
     d7a:	46a1      	mov	r9, r4
     d7c:	444d      	add	r5, r9
     d7e:	2800      	cmp	r0, #0
     d80:	d100      	bne.n	d84 <cord_atan+0x98>
     d82:	e074      	b.n	e6e <cord_atan+0x182>
     d84:	1104      	asrs	r4, r0, #4
     d86:	2800      	cmp	r0, #0
     d88:	dd53      	ble.n	e32 <cord_atan+0x146>
     d8a:	18e7      	adds	r7, r4, r3
     d8c:	111b      	asrs	r3, r3, #4
     d8e:	1ac4      	subs	r4, r0, r3
     d90:	6933      	ldr	r3, [r6, #16]
     d92:	4699      	mov	r9, r3
     d94:	444d      	add	r5, r9
     d96:	2c00      	cmp	r4, #0
     d98:	d06c      	beq.n	e74 <cord_atan+0x188>
     d9a:	1163      	asrs	r3, r4, #5
     d9c:	2c00      	cmp	r4, #0
     d9e:	dd4e      	ble.n	e3e <cord_atan+0x152>
     da0:	1178      	asrs	r0, r7, #5
     da2:	1a20      	subs	r0, r4, r0
     da4:	6974      	ldr	r4, [r6, #20]
     da6:	19db      	adds	r3, r3, r7
     da8:	46a1      	mov	r9, r4
     daa:	444d      	add	r5, r9
     dac:	2800      	cmp	r0, #0
     dae:	d063      	beq.n	e78 <cord_atan+0x18c>
     db0:	1184      	asrs	r4, r0, #6
     db2:	2800      	cmp	r0, #0
     db4:	dd49      	ble.n	e4a <cord_atan+0x15e>
     db6:	18e7      	adds	r7, r4, r3
     db8:	119b      	asrs	r3, r3, #6
     dba:	1ac0      	subs	r0, r0, r3
     dbc:	69b3      	ldr	r3, [r6, #24]
     dbe:	4699      	mov	r9, r3
     dc0:	444d      	add	r5, r9
     dc2:	2800      	cmp	r0, #0
     dc4:	d05b      	beq.n	e7e <cord_atan+0x192>
     dc6:	dd46      	ble.n	e56 <cord_atan+0x16a>
     dc8:	69f3      	ldr	r3, [r6, #28]
     dca:	11c0      	asrs	r0, r0, #7
     dcc:	19c7      	adds	r7, r0, r7
     dce:	18ed      	adds	r5, r5, r3
     dd0:	2307      	movs	r3, #7
     dd2:	2a00      	cmp	r2, #0
     dd4:	db12      	blt.n	dfc <cord_atan+0x110>
     dd6:	2d00      	cmp	r5, #0
     dd8:	da03      	bge.n	de2 <cord_atan+0xf6>
     dda:	2280      	movs	r2, #128	; 0x80
     ddc:	00d2      	lsls	r2, r2, #3
     dde:	4691      	mov	r9, r2
     de0:	444d      	add	r5, r9
     de2:	4642      	mov	r2, r8
     de4:	009b      	lsls	r3, r3, #2
     de6:	58d0      	ldr	r0, [r2, r3]
     de8:	4663      	mov	r3, ip
     dea:	4378      	muls	r0, r7
     dec:	1280      	asrs	r0, r0, #10
     dee:	600d      	str	r5, [r1, #0]
     df0:	6018      	str	r0, [r3, #0]
     df2:	b011      	add	sp, #68	; 0x44
     df4:	bc0c      	pop	{r2, r3}
     df6:	4690      	mov	r8, r2
     df8:	4699      	mov	r9, r3
     dfa:	bdf0      	pop	{r4, r5, r6, r7, pc}
     dfc:	2280      	movs	r2, #128	; 0x80
     dfe:	0092      	lsls	r2, r2, #2
     e00:	1b55      	subs	r5, r2, r5
     e02:	e7e8      	b.n	dd6 <cord_atan+0xea>
     e04:	9800      	ldr	r0, [sp, #0]
     e06:	1b5f      	subs	r7, r3, r5
     e08:	195b      	adds	r3, r3, r5
     e0a:	4245      	negs	r5, r0
     e0c:	e793      	b.n	d36 <cord_atan+0x4a>
     e0e:	1078      	asrs	r0, r7, #1
     e10:	18c3      	adds	r3, r0, r3
     e12:	6870      	ldr	r0, [r6, #4]
     e14:	1b3c      	subs	r4, r7, r4
     e16:	1a2d      	subs	r5, r5, r0
     e18:	e799      	b.n	d4e <cord_atan+0x62>
     e1a:	1a27      	subs	r7, r4, r0
     e1c:	10a0      	asrs	r0, r4, #2
     e1e:	18c0      	adds	r0, r0, r3
     e20:	68b3      	ldr	r3, [r6, #8]
     e22:	1aed      	subs	r5, r5, r3
     e24:	e79f      	b.n	d66 <cord_atan+0x7a>
     e26:	10fc      	asrs	r4, r7, #3
     e28:	1820      	adds	r0, r4, r0
     e2a:	68f4      	ldr	r4, [r6, #12]
     e2c:	1afb      	subs	r3, r7, r3
     e2e:	1b2d      	subs	r5, r5, r4
     e30:	e7a5      	b.n	d7e <cord_atan+0x92>
     e32:	1b1f      	subs	r7, r3, r4
     e34:	111c      	asrs	r4, r3, #4
     e36:	6933      	ldr	r3, [r6, #16]
     e38:	1824      	adds	r4, r4, r0
     e3a:	1aed      	subs	r5, r5, r3
     e3c:	e7ab      	b.n	d96 <cord_atan+0xaa>
     e3e:	1178      	asrs	r0, r7, #5
     e40:	1900      	adds	r0, r0, r4
     e42:	6974      	ldr	r4, [r6, #20]
     e44:	1afb      	subs	r3, r7, r3
     e46:	1b2d      	subs	r5, r5, r4
     e48:	e7b0      	b.n	dac <cord_atan+0xc0>
     e4a:	1b1f      	subs	r7, r3, r4
     e4c:	119b      	asrs	r3, r3, #6
     e4e:	1818      	adds	r0, r3, r0
     e50:	69b3      	ldr	r3, [r6, #24]
     e52:	1aed      	subs	r5, r5, r3
     e54:	e7b5      	b.n	dc2 <cord_atan+0xd6>
     e56:	69f3      	ldr	r3, [r6, #28]
     e58:	11c4      	asrs	r4, r0, #7
     e5a:	1b3f      	subs	r7, r7, r4
     e5c:	1aed      	subs	r5, r5, r3
     e5e:	e7b7      	b.n	dd0 <cord_atan+0xe4>
     e60:	2300      	movs	r3, #0
     e62:	e7b6      	b.n	dd2 <cord_atan+0xe6>
     e64:	0027      	movs	r7, r4
     e66:	2301      	movs	r3, #1
     e68:	e7b3      	b.n	dd2 <cord_atan+0xe6>
     e6a:	2302      	movs	r3, #2
     e6c:	e7b1      	b.n	dd2 <cord_atan+0xe6>
     e6e:	001f      	movs	r7, r3
     e70:	2303      	movs	r3, #3
     e72:	e7ae      	b.n	dd2 <cord_atan+0xe6>
     e74:	2304      	movs	r3, #4
     e76:	e7ac      	b.n	dd2 <cord_atan+0xe6>
     e78:	001f      	movs	r7, r3
     e7a:	2305      	movs	r3, #5
     e7c:	e7a9      	b.n	dd2 <cord_atan+0xe6>
     e7e:	2306      	movs	r3, #6
     e80:	e7a7      	b.n	dd2 <cord_atan+0xe6>
     e82:	46c0      	nop			; (mov r8, r8)
     e84:	000023c8 	.word	0x000023c8

00000e88 <sinpwm>:
     e88:	b5f0      	push	{r4, r5, r6, r7, lr}
     e8a:	4646      	mov	r6, r8
     e8c:	464f      	mov	r7, r9
     e8e:	b4c0      	push	{r6, r7}
     e90:	b089      	sub	sp, #36	; 0x24
     e92:	466c      	mov	r4, sp
     e94:	4b65      	ldr	r3, [pc, #404]	; (102c <sinpwm+0x1a4>)
     e96:	46e9      	mov	r9, sp
     e98:	3320      	adds	r3, #32
     e9a:	cbe0      	ldmia	r3!, {r5, r6, r7}
     e9c:	c4e0      	stmia	r4!, {r5, r6, r7}
     e9e:	cbe0      	ldmia	r3!, {r5, r6, r7}
     ea0:	c4e0      	stmia	r4!, {r5, r6, r7}
     ea2:	cb60      	ldmia	r3!, {r5, r6}
     ea4:	c460      	stmia	r4!, {r5, r6}
     ea6:	680b      	ldr	r3, [r1, #0]
     ea8:	17dc      	asrs	r4, r3, #31
     eaa:	191e      	adds	r6, r3, r4
     eac:	4698      	mov	r8, r3
     eae:	684b      	ldr	r3, [r1, #4]
     eb0:	4066      	eors	r6, r4
     eb2:	469c      	mov	ip, r3
     eb4:	2b00      	cmp	r3, #0
     eb6:	dc00      	bgt.n	eba <sinpwm+0x32>
     eb8:	e086      	b.n	fc8 <sinpwm+0x140>
     eba:	18f7      	adds	r7, r6, r3
     ebc:	1b9b      	subs	r3, r3, r6
     ebe:	2b00      	cmp	r3, #0
     ec0:	d100      	bne.n	ec4 <sinpwm+0x3c>
     ec2:	e0a0      	b.n	1006 <sinpwm+0x17e>
     ec4:	105e      	asrs	r6, r3, #1
     ec6:	2b00      	cmp	r3, #0
     ec8:	dc00      	bgt.n	ecc <sinpwm+0x44>
     eca:	e081      	b.n	fd0 <sinpwm+0x148>
     ecc:	107c      	asrs	r4, r7, #1
     ece:	19f6      	adds	r6, r6, r7
     ed0:	1b1b      	subs	r3, r3, r4
     ed2:	2b00      	cmp	r3, #0
     ed4:	d100      	bne.n	ed8 <sinpwm+0x50>
     ed6:	e098      	b.n	100a <sinpwm+0x182>
     ed8:	109c      	asrs	r4, r3, #2
     eda:	2b00      	cmp	r3, #0
     edc:	dc00      	bgt.n	ee0 <sinpwm+0x58>
     ede:	e07b      	b.n	fd8 <sinpwm+0x150>
     ee0:	19a7      	adds	r7, r4, r6
     ee2:	10b6      	asrs	r6, r6, #2
     ee4:	1b9c      	subs	r4, r3, r6
     ee6:	2c00      	cmp	r4, #0
     ee8:	d100      	bne.n	eec <sinpwm+0x64>
     eea:	e091      	b.n	1010 <sinpwm+0x188>
     eec:	10e6      	asrs	r6, r4, #3
     eee:	2c00      	cmp	r4, #0
     ef0:	dc00      	bgt.n	ef4 <sinpwm+0x6c>
     ef2:	e075      	b.n	fe0 <sinpwm+0x158>
     ef4:	10fd      	asrs	r5, r7, #3
     ef6:	19f6      	adds	r6, r6, r7
     ef8:	1b64      	subs	r4, r4, r5
     efa:	2c00      	cmp	r4, #0
     efc:	d100      	bne.n	f00 <sinpwm+0x78>
     efe:	e089      	b.n	1014 <sinpwm+0x18c>
     f00:	1125      	asrs	r5, r4, #4
     f02:	2c00      	cmp	r4, #0
     f04:	dc00      	bgt.n	f08 <sinpwm+0x80>
     f06:	e06f      	b.n	fe8 <sinpwm+0x160>
     f08:	19af      	adds	r7, r5, r6
     f0a:	1136      	asrs	r6, r6, #4
     f0c:	1ba5      	subs	r5, r4, r6
     f0e:	2d00      	cmp	r5, #0
     f10:	d100      	bne.n	f14 <sinpwm+0x8c>
     f12:	e082      	b.n	101a <sinpwm+0x192>
     f14:	116e      	asrs	r6, r5, #5
     f16:	2d00      	cmp	r5, #0
     f18:	dd6a      	ble.n	ff0 <sinpwm+0x168>
     f1a:	117c      	asrs	r4, r7, #5
     f1c:	19f6      	adds	r6, r6, r7
     f1e:	1b2c      	subs	r4, r5, r4
     f20:	2c00      	cmp	r4, #0
     f22:	d100      	bne.n	f26 <sinpwm+0x9e>
     f24:	e07b      	b.n	101e <sinpwm+0x196>
     f26:	11a3      	asrs	r3, r4, #6
     f28:	2c00      	cmp	r4, #0
     f2a:	dd65      	ble.n	ff8 <sinpwm+0x170>
     f2c:	199b      	adds	r3, r3, r6
     f2e:	11b6      	asrs	r6, r6, #6
     f30:	1ba4      	subs	r4, r4, r6
     f32:	2c00      	cmp	r4, #0
     f34:	d100      	bne.n	f38 <sinpwm+0xb0>
     f36:	e075      	b.n	1024 <sinpwm+0x19c>
     f38:	dd62      	ble.n	1000 <sinpwm+0x178>
     f3a:	11e4      	asrs	r4, r4, #7
     f3c:	18e7      	adds	r7, r4, r3
     f3e:	2307      	movs	r3, #7
     f40:	464c      	mov	r4, r9
     f42:	4646      	mov	r6, r8
     f44:	009b      	lsls	r3, r3, #2
     f46:	58e4      	ldr	r4, [r4, r3]
     f48:	4b39      	ldr	r3, [pc, #228]	; (1030 <sinpwm+0x1a8>)
     f4a:	0095      	lsls	r5, r2, #2
     f4c:	58ed      	ldr	r5, [r5, r3]
     f4e:	437c      	muls	r4, r7
     f50:	436e      	muls	r6, r5
     f52:	25c0      	movs	r5, #192	; 0xc0
     f54:	4667      	mov	r7, ip
     f56:	00ad      	lsls	r5, r5, #2
     f58:	1955      	adds	r5, r2, r5
     f5a:	05ad      	lsls	r5, r5, #22
     f5c:	0d2d      	lsrs	r5, r5, #20
     f5e:	58ed      	ldr	r5, [r5, r3]
     f60:	1524      	asrs	r4, r4, #20
     f62:	437d      	muls	r5, r7
     f64:	1b75      	subs	r5, r6, r5
     f66:	152d      	asrs	r5, r5, #20
     f68:	6005      	str	r5, [r0, #0]
     f6a:	4d32      	ldr	r5, [pc, #200]	; (1034 <sinpwm+0x1ac>)
     f6c:	684f      	ldr	r7, [r1, #4]
     f6e:	1955      	adds	r5, r2, r5
     f70:	05ad      	lsls	r5, r5, #22
     f72:	0d2d      	lsrs	r5, r5, #20
     f74:	58ee      	ldr	r6, [r5, r3]
     f76:	680d      	ldr	r5, [r1, #0]
     f78:	4375      	muls	r5, r6
     f7a:	4e2f      	ldr	r6, [pc, #188]	; (1038 <sinpwm+0x1b0>)
     f7c:	1996      	adds	r6, r2, r6
     f7e:	05b6      	lsls	r6, r6, #22
     f80:	0d36      	lsrs	r6, r6, #20
     f82:	58f6      	ldr	r6, [r6, r3]
     f84:	437e      	muls	r6, r7
     f86:	1bae      	subs	r6, r5, r6
     f88:	0015      	movs	r5, r2
     f8a:	3556      	adds	r5, #86	; 0x56
     f8c:	35ff      	adds	r5, #255	; 0xff
     f8e:	1536      	asrs	r6, r6, #20
     f90:	05ad      	lsls	r5, r5, #22
     f92:	6046      	str	r6, [r0, #4]
     f94:	0d2d      	lsrs	r5, r5, #20
     f96:	58ee      	ldr	r6, [r5, r3]
     f98:	680d      	ldr	r5, [r1, #0]
     f9a:	436e      	muls	r6, r5
     f9c:	4d27      	ldr	r5, [pc, #156]	; (103c <sinpwm+0x1b4>)
     f9e:	46ac      	mov	ip, r5
     fa0:	4462      	add	r2, ip
     fa2:	0592      	lsls	r2, r2, #22
     fa4:	0d12      	lsrs	r2, r2, #20
     fa6:	58d2      	ldr	r2, [r2, r3]
     fa8:	684b      	ldr	r3, [r1, #4]
     faa:	435a      	muls	r2, r3
     fac:	23fa      	movs	r3, #250	; 0xfa
     fae:	1ab2      	subs	r2, r6, r2
     fb0:	1512      	asrs	r2, r2, #20
     fb2:	6082      	str	r2, [r0, #8]
     fb4:	005b      	lsls	r3, r3, #1
     fb6:	2001      	movs	r0, #1
     fb8:	429c      	cmp	r4, r3
     fba:	dc00      	bgt.n	fbe <sinpwm+0x136>
     fbc:	2000      	movs	r0, #0
     fbe:	b009      	add	sp, #36	; 0x24
     fc0:	bc0c      	pop	{r2, r3}
     fc2:	4690      	mov	r8, r2
     fc4:	4699      	mov	r9, r3
     fc6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     fc8:	1af7      	subs	r7, r6, r3
     fca:	0033      	movs	r3, r6
     fcc:	4463      	add	r3, ip
     fce:	e776      	b.n	ebe <sinpwm+0x36>
     fd0:	107c      	asrs	r4, r7, #1
     fd2:	1bbe      	subs	r6, r7, r6
     fd4:	18e3      	adds	r3, r4, r3
     fd6:	e77c      	b.n	ed2 <sinpwm+0x4a>
     fd8:	1b37      	subs	r7, r6, r4
     fda:	10b4      	asrs	r4, r6, #2
     fdc:	18e4      	adds	r4, r4, r3
     fde:	e782      	b.n	ee6 <sinpwm+0x5e>
     fe0:	10fd      	asrs	r5, r7, #3
     fe2:	1bbe      	subs	r6, r7, r6
     fe4:	192c      	adds	r4, r5, r4
     fe6:	e788      	b.n	efa <sinpwm+0x72>
     fe8:	1b77      	subs	r7, r6, r5
     fea:	1135      	asrs	r5, r6, #4
     fec:	192d      	adds	r5, r5, r4
     fee:	e78e      	b.n	f0e <sinpwm+0x86>
     ff0:	117c      	asrs	r4, r7, #5
     ff2:	1bbe      	subs	r6, r7, r6
     ff4:	1964      	adds	r4, r4, r5
     ff6:	e793      	b.n	f20 <sinpwm+0x98>
     ff8:	1af3      	subs	r3, r6, r3
     ffa:	11b6      	asrs	r6, r6, #6
     ffc:	1934      	adds	r4, r6, r4
     ffe:	e798      	b.n	f32 <sinpwm+0xaa>
    1000:	11e5      	asrs	r5, r4, #7
    1002:	1b5f      	subs	r7, r3, r5
    1004:	e79b      	b.n	f3e <sinpwm+0xb6>
    1006:	2300      	movs	r3, #0
    1008:	e79a      	b.n	f40 <sinpwm+0xb8>
    100a:	0037      	movs	r7, r6
    100c:	2301      	movs	r3, #1
    100e:	e797      	b.n	f40 <sinpwm+0xb8>
    1010:	2302      	movs	r3, #2
    1012:	e795      	b.n	f40 <sinpwm+0xb8>
    1014:	0037      	movs	r7, r6
    1016:	2303      	movs	r3, #3
    1018:	e792      	b.n	f40 <sinpwm+0xb8>
    101a:	2304      	movs	r3, #4
    101c:	e790      	b.n	f40 <sinpwm+0xb8>
    101e:	0037      	movs	r7, r6
    1020:	2305      	movs	r3, #5
    1022:	e78d      	b.n	f40 <sinpwm+0xb8>
    1024:	001f      	movs	r7, r3
    1026:	2306      	movs	r3, #6
    1028:	e78a      	b.n	f40 <sinpwm+0xb8>
    102a:	46c0      	nop			; (mov r8, r8)
    102c:	000023c8 	.word	0x000023c8
    1030:	000013b0 	.word	0x000013b0
    1034:	000002aa 	.word	0x000002aa
    1038:	000005aa 	.word	0x000005aa
    103c:	00000455 	.word	0x00000455

00001040 <svpwm>:
    1040:	b5f0      	push	{r4, r5, r6, r7, lr}
    1042:	464f      	mov	r7, r9
    1044:	4646      	mov	r6, r8
    1046:	b4c0      	push	{r6, r7}
    1048:	4bb2      	ldr	r3, [pc, #712]	; (1314 <svpwm+0x2d4>)
    104a:	b091      	sub	sp, #68	; 0x44
    104c:	001c      	movs	r4, r3
    104e:	4694      	mov	ip, r2
    1050:	466a      	mov	r2, sp
    1052:	4699      	mov	r9, r3
    1054:	cca8      	ldmia	r4!, {r3, r5, r7}
    1056:	c2a8      	stmia	r2!, {r3, r5, r7}
    1058:	cca8      	ldmia	r4!, {r3, r5, r7}
    105a:	c2a8      	stmia	r2!, {r3, r5, r7}
    105c:	cc28      	ldmia	r4!, {r3, r5}
    105e:	c228      	stmia	r2!, {r3, r5}
    1060:	464b      	mov	r3, r9
    1062:	aa08      	add	r2, sp, #32
    1064:	3320      	adds	r3, #32
    1066:	4690      	mov	r8, r2
    1068:	cbb0      	ldmia	r3!, {r4, r5, r7}
    106a:	c2b0      	stmia	r2!, {r4, r5, r7}
    106c:	cbb0      	ldmia	r3!, {r4, r5, r7}
    106e:	c2b0      	stmia	r2!, {r4, r5, r7}
    1070:	cb30      	ldmia	r3!, {r4, r5}
    1072:	c230      	stmia	r2!, {r4, r5}
    1074:	680a      	ldr	r2, [r1, #0]
    1076:	684d      	ldr	r5, [r1, #4]
    1078:	17d4      	asrs	r4, r2, #31
    107a:	1913      	adds	r3, r2, r4
    107c:	466e      	mov	r6, sp
    107e:	4063      	eors	r3, r4
    1080:	2d00      	cmp	r5, #0
    1082:	dd78      	ble.n	1176 <svpwm+0x136>
    1084:	195f      	adds	r7, r3, r5
    1086:	1aeb      	subs	r3, r5, r3
    1088:	9d00      	ldr	r5, [sp, #0]
    108a:	2b00      	cmp	r3, #0
    108c:	d100      	bne.n	1090 <svpwm+0x50>
    108e:	e130      	b.n	12f2 <svpwm+0x2b2>
    1090:	105c      	asrs	r4, r3, #1
    1092:	2b00      	cmp	r3, #0
    1094:	dd74      	ble.n	1180 <svpwm+0x140>
    1096:	1079      	asrs	r1, r7, #1
    1098:	1a5b      	subs	r3, r3, r1
    109a:	6871      	ldr	r1, [r6, #4]
    109c:	19e4      	adds	r4, r4, r7
    109e:	4689      	mov	r9, r1
    10a0:	444d      	add	r5, r9
    10a2:	2b00      	cmp	r3, #0
    10a4:	d100      	bne.n	10a8 <svpwm+0x68>
    10a6:	e126      	b.n	12f6 <svpwm+0x2b6>
    10a8:	1099      	asrs	r1, r3, #2
    10aa:	2b00      	cmp	r3, #0
    10ac:	dd6e      	ble.n	118c <svpwm+0x14c>
    10ae:	190f      	adds	r7, r1, r4
    10b0:	10a4      	asrs	r4, r4, #2
    10b2:	1b19      	subs	r1, r3, r4
    10b4:	68b3      	ldr	r3, [r6, #8]
    10b6:	4699      	mov	r9, r3
    10b8:	444d      	add	r5, r9
    10ba:	2900      	cmp	r1, #0
    10bc:	d100      	bne.n	10c0 <svpwm+0x80>
    10be:	e11d      	b.n	12fc <svpwm+0x2bc>
    10c0:	10cb      	asrs	r3, r1, #3
    10c2:	2900      	cmp	r1, #0
    10c4:	dd68      	ble.n	1198 <svpwm+0x158>
    10c6:	10fc      	asrs	r4, r7, #3
    10c8:	1b09      	subs	r1, r1, r4
    10ca:	68f4      	ldr	r4, [r6, #12]
    10cc:	19db      	adds	r3, r3, r7
    10ce:	46a1      	mov	r9, r4
    10d0:	444d      	add	r5, r9
    10d2:	2900      	cmp	r1, #0
    10d4:	d100      	bne.n	10d8 <svpwm+0x98>
    10d6:	e113      	b.n	1300 <svpwm+0x2c0>
    10d8:	110c      	asrs	r4, r1, #4
    10da:	2900      	cmp	r1, #0
    10dc:	dd62      	ble.n	11a4 <svpwm+0x164>
    10de:	18e7      	adds	r7, r4, r3
    10e0:	111b      	asrs	r3, r3, #4
    10e2:	1acc      	subs	r4, r1, r3
    10e4:	6933      	ldr	r3, [r6, #16]
    10e6:	4699      	mov	r9, r3
    10e8:	444d      	add	r5, r9
    10ea:	2c00      	cmp	r4, #0
    10ec:	d100      	bne.n	10f0 <svpwm+0xb0>
    10ee:	e10a      	b.n	1306 <svpwm+0x2c6>
    10f0:	1163      	asrs	r3, r4, #5
    10f2:	2c00      	cmp	r4, #0
    10f4:	dd5c      	ble.n	11b0 <svpwm+0x170>
    10f6:	1179      	asrs	r1, r7, #5
    10f8:	1a61      	subs	r1, r4, r1
    10fa:	6974      	ldr	r4, [r6, #20]
    10fc:	19db      	adds	r3, r3, r7
    10fe:	46a1      	mov	r9, r4
    1100:	444d      	add	r5, r9
    1102:	2900      	cmp	r1, #0
    1104:	d100      	bne.n	1108 <svpwm+0xc8>
    1106:	e100      	b.n	130a <svpwm+0x2ca>
    1108:	118c      	asrs	r4, r1, #6
    110a:	2900      	cmp	r1, #0
    110c:	dd56      	ble.n	11bc <svpwm+0x17c>
    110e:	18e7      	adds	r7, r4, r3
    1110:	119b      	asrs	r3, r3, #6
    1112:	1ac9      	subs	r1, r1, r3
    1114:	69b3      	ldr	r3, [r6, #24]
    1116:	4699      	mov	r9, r3
    1118:	444d      	add	r5, r9
    111a:	2900      	cmp	r1, #0
    111c:	d100      	bne.n	1120 <svpwm+0xe0>
    111e:	e0f7      	b.n	1310 <svpwm+0x2d0>
    1120:	dc00      	bgt.n	1124 <svpwm+0xe4>
    1122:	e0e1      	b.n	12e8 <svpwm+0x2a8>
    1124:	69f3      	ldr	r3, [r6, #28]
    1126:	11c9      	asrs	r1, r1, #7
    1128:	19cf      	adds	r7, r1, r7
    112a:	18ed      	adds	r5, r5, r3
    112c:	2307      	movs	r3, #7
    112e:	2a00      	cmp	r2, #0
    1130:	db1d      	blt.n	116e <svpwm+0x12e>
    1132:	2d00      	cmp	r5, #0
    1134:	da03      	bge.n	113e <svpwm+0xfe>
    1136:	2280      	movs	r2, #128	; 0x80
    1138:	00d2      	lsls	r2, r2, #3
    113a:	4691      	mov	r9, r2
    113c:	444d      	add	r5, r9
    113e:	4642      	mov	r2, r8
    1140:	009b      	lsls	r3, r3, #2
    1142:	58d1      	ldr	r1, [r2, r3]
    1144:	23fa      	movs	r3, #250	; 0xfa
    1146:	4379      	muls	r1, r7
    1148:	4465      	add	r5, ip
    114a:	05ad      	lsls	r5, r5, #22
    114c:	1509      	asrs	r1, r1, #20
    114e:	0dad      	lsrs	r5, r5, #22
    1150:	005b      	lsls	r3, r3, #1
    1152:	2600      	movs	r6, #0
    1154:	4299      	cmp	r1, r3
    1156:	dd01      	ble.n	115c <svpwm+0x11c>
    1158:	0019      	movs	r1, r3
    115a:	3601      	adds	r6, #1
    115c:	006a      	lsls	r2, r5, #1
    115e:	1952      	adds	r2, r2, r5
    1160:	1252      	asrs	r2, r2, #9
    1162:	2a05      	cmp	r2, #5
    1164:	d84b      	bhi.n	11fe <svpwm+0x1be>
    1166:	4b6c      	ldr	r3, [pc, #432]	; (1318 <svpwm+0x2d8>)
    1168:	0092      	lsls	r2, r2, #2
    116a:	589b      	ldr	r3, [r3, r2]
    116c:	469f      	mov	pc, r3
    116e:	2280      	movs	r2, #128	; 0x80
    1170:	0092      	lsls	r2, r2, #2
    1172:	1b55      	subs	r5, r2, r5
    1174:	e7dd      	b.n	1132 <svpwm+0xf2>
    1176:	9900      	ldr	r1, [sp, #0]
    1178:	1b5f      	subs	r7, r3, r5
    117a:	195b      	adds	r3, r3, r5
    117c:	424d      	negs	r5, r1
    117e:	e784      	b.n	108a <svpwm+0x4a>
    1180:	1079      	asrs	r1, r7, #1
    1182:	18cb      	adds	r3, r1, r3
    1184:	6871      	ldr	r1, [r6, #4]
    1186:	1b3c      	subs	r4, r7, r4
    1188:	1a6d      	subs	r5, r5, r1
    118a:	e78a      	b.n	10a2 <svpwm+0x62>
    118c:	1a67      	subs	r7, r4, r1
    118e:	10a1      	asrs	r1, r4, #2
    1190:	18c9      	adds	r1, r1, r3
    1192:	68b3      	ldr	r3, [r6, #8]
    1194:	1aed      	subs	r5, r5, r3
    1196:	e790      	b.n	10ba <svpwm+0x7a>
    1198:	10fc      	asrs	r4, r7, #3
    119a:	1861      	adds	r1, r4, r1
    119c:	68f4      	ldr	r4, [r6, #12]
    119e:	1afb      	subs	r3, r7, r3
    11a0:	1b2d      	subs	r5, r5, r4
    11a2:	e796      	b.n	10d2 <svpwm+0x92>
    11a4:	1b1f      	subs	r7, r3, r4
    11a6:	111c      	asrs	r4, r3, #4
    11a8:	6933      	ldr	r3, [r6, #16]
    11aa:	1864      	adds	r4, r4, r1
    11ac:	1aed      	subs	r5, r5, r3
    11ae:	e79c      	b.n	10ea <svpwm+0xaa>
    11b0:	1179      	asrs	r1, r7, #5
    11b2:	1909      	adds	r1, r1, r4
    11b4:	6974      	ldr	r4, [r6, #20]
    11b6:	1afb      	subs	r3, r7, r3
    11b8:	1b2d      	subs	r5, r5, r4
    11ba:	e7a2      	b.n	1102 <svpwm+0xc2>
    11bc:	1b1f      	subs	r7, r3, r4
    11be:	119b      	asrs	r3, r3, #6
    11c0:	1859      	adds	r1, r3, r1
    11c2:	69b3      	ldr	r3, [r6, #24]
    11c4:	1aed      	subs	r5, r5, r3
    11c6:	e7a8      	b.n	111a <svpwm+0xda>
    11c8:	4b54      	ldr	r3, [pc, #336]	; (131c <svpwm+0x2dc>)
    11ca:	4a55      	ldr	r2, [pc, #340]	; (1320 <svpwm+0x2e0>)
    11cc:	1b5b      	subs	r3, r3, r5
    11ce:	3556      	adds	r5, #86	; 0x56
    11d0:	059b      	lsls	r3, r3, #22
    11d2:	05ad      	lsls	r5, r5, #22
    11d4:	0d1b      	lsrs	r3, r3, #20
    11d6:	0d2d      	lsrs	r5, r5, #20
    11d8:	589b      	ldr	r3, [r3, r2]
    11da:	58ac      	ldr	r4, [r5, r2]
    11dc:	434b      	muls	r3, r1
    11de:	434c      	muls	r4, r1
    11e0:	129b      	asrs	r3, r3, #10
    11e2:	12a1      	asrs	r1, r4, #10
    11e4:	1aca      	subs	r2, r1, r3
    11e6:	6002      	str	r2, [r0, #0]
    11e8:	425a      	negs	r2, r3
    11ea:	1a52      	subs	r2, r2, r1
    11ec:	1859      	adds	r1, r3, r1
    11ee:	6042      	str	r2, [r0, #4]
    11f0:	6081      	str	r1, [r0, #8]
    11f2:	0030      	movs	r0, r6
    11f4:	b011      	add	sp, #68	; 0x44
    11f6:	bc0c      	pop	{r2, r3}
    11f8:	4690      	mov	r8, r2
    11fa:	4699      	mov	r9, r3
    11fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    11fe:	4b49      	ldr	r3, [pc, #292]	; (1324 <svpwm+0x2e4>)
    1200:	4c47      	ldr	r4, [pc, #284]	; (1320 <svpwm+0x2e0>)
    1202:	1b5b      	subs	r3, r3, r5
    1204:	059b      	lsls	r3, r3, #22
    1206:	0d1b      	lsrs	r3, r3, #20
    1208:	591a      	ldr	r2, [r3, r4]
    120a:	23c0      	movs	r3, #192	; 0xc0
    120c:	009b      	lsls	r3, r3, #2
    120e:	469c      	mov	ip, r3
    1210:	4465      	add	r5, ip
    1212:	05ad      	lsls	r5, r5, #22
    1214:	0d2d      	lsrs	r5, r5, #20
    1216:	592c      	ldr	r4, [r5, r4]
    1218:	434a      	muls	r2, r1
    121a:	4361      	muls	r1, r4
    121c:	1292      	asrs	r2, r2, #10
    121e:	1289      	asrs	r1, r1, #10
    1220:	1853      	adds	r3, r2, r1
    1222:	6003      	str	r3, [r0, #0]
    1224:	1a8b      	subs	r3, r1, r2
    1226:	4252      	negs	r2, r2
    1228:	1a52      	subs	r2, r2, r1
    122a:	6043      	str	r3, [r0, #4]
    122c:	6082      	str	r2, [r0, #8]
    122e:	e7e0      	b.n	11f2 <svpwm+0x1b2>
    1230:	4b3d      	ldr	r3, [pc, #244]	; (1328 <svpwm+0x2e8>)
    1232:	4a3b      	ldr	r2, [pc, #236]	; (1320 <svpwm+0x2e0>)
    1234:	1b5b      	subs	r3, r3, r5
    1236:	059b      	lsls	r3, r3, #22
    1238:	0d1b      	lsrs	r3, r3, #20
    123a:	589f      	ldr	r7, [r3, r2]
    123c:	4b3b      	ldr	r3, [pc, #236]	; (132c <svpwm+0x2ec>)
    123e:	434f      	muls	r7, r1
    1240:	469c      	mov	ip, r3
    1242:	4465      	add	r5, ip
    1244:	05ad      	lsls	r5, r5, #22
    1246:	0d2d      	lsrs	r5, r5, #20
    1248:	58ac      	ldr	r4, [r5, r2]
    124a:	12bf      	asrs	r7, r7, #10
    124c:	4361      	muls	r1, r4
    124e:	1289      	asrs	r1, r1, #10
    1250:	1a7b      	subs	r3, r7, r1
    1252:	6003      	str	r3, [r0, #0]
    1254:	187b      	adds	r3, r7, r1
    1256:	427f      	negs	r7, r7
    1258:	1a7f      	subs	r7, r7, r1
    125a:	6043      	str	r3, [r0, #4]
    125c:	6087      	str	r7, [r0, #8]
    125e:	e7c8      	b.n	11f2 <svpwm+0x1b2>
    1260:	4b33      	ldr	r3, [pc, #204]	; (1330 <svpwm+0x2f0>)
    1262:	4a2f      	ldr	r2, [pc, #188]	; (1320 <svpwm+0x2e0>)
    1264:	1b5b      	subs	r3, r3, r5
    1266:	35ac      	adds	r5, #172	; 0xac
    1268:	059b      	lsls	r3, r3, #22
    126a:	35ff      	adds	r5, #255	; 0xff
    126c:	0d1b      	lsrs	r3, r3, #20
    126e:	05ad      	lsls	r5, r5, #22
    1270:	589b      	ldr	r3, [r3, r2]
    1272:	0d2d      	lsrs	r5, r5, #20
    1274:	58ac      	ldr	r4, [r5, r2]
    1276:	434b      	muls	r3, r1
    1278:	4361      	muls	r1, r4
    127a:	129b      	asrs	r3, r3, #10
    127c:	1289      	asrs	r1, r1, #10
    127e:	425a      	negs	r2, r3
    1280:	1a52      	subs	r2, r2, r1
    1282:	6002      	str	r2, [r0, #0]
    1284:	185a      	adds	r2, r3, r1
    1286:	1ac9      	subs	r1, r1, r3
    1288:	6042      	str	r2, [r0, #4]
    128a:	6081      	str	r1, [r0, #8]
    128c:	e7b1      	b.n	11f2 <svpwm+0x1b2>
    128e:	4b29      	ldr	r3, [pc, #164]	; (1334 <svpwm+0x2f4>)
    1290:	4a23      	ldr	r2, [pc, #140]	; (1320 <svpwm+0x2e0>)
    1292:	1b5b      	subs	r3, r3, r5
    1294:	3501      	adds	r5, #1
    1296:	059b      	lsls	r3, r3, #22
    1298:	35ff      	adds	r5, #255	; 0xff
    129a:	0d1b      	lsrs	r3, r3, #20
    129c:	05ad      	lsls	r5, r5, #22
    129e:	589b      	ldr	r3, [r3, r2]
    12a0:	0d2d      	lsrs	r5, r5, #20
    12a2:	58ac      	ldr	r4, [r5, r2]
    12a4:	434b      	muls	r3, r1
    12a6:	434c      	muls	r4, r1
    12a8:	129b      	asrs	r3, r3, #10
    12aa:	12a1      	asrs	r1, r4, #10
    12ac:	425a      	negs	r2, r3
    12ae:	1a52      	subs	r2, r2, r1
    12b0:	6002      	str	r2, [r0, #0]
    12b2:	1a5a      	subs	r2, r3, r1
    12b4:	1859      	adds	r1, r3, r1
    12b6:	6042      	str	r2, [r0, #4]
    12b8:	6081      	str	r1, [r0, #8]
    12ba:	e79a      	b.n	11f2 <svpwm+0x1b2>
    12bc:	4b1e      	ldr	r3, [pc, #120]	; (1338 <svpwm+0x2f8>)
    12be:	4a18      	ldr	r2, [pc, #96]	; (1320 <svpwm+0x2e0>)
    12c0:	1b5b      	subs	r3, r3, r5
    12c2:	3d55      	subs	r5, #85	; 0x55
    12c4:	059b      	lsls	r3, r3, #22
    12c6:	05ad      	lsls	r5, r5, #22
    12c8:	0d1b      	lsrs	r3, r3, #20
    12ca:	0d2d      	lsrs	r5, r5, #20
    12cc:	589b      	ldr	r3, [r3, r2]
    12ce:	58ac      	ldr	r4, [r5, r2]
    12d0:	434b      	muls	r3, r1
    12d2:	4361      	muls	r1, r4
    12d4:	129b      	asrs	r3, r3, #10
    12d6:	1289      	asrs	r1, r1, #10
    12d8:	185a      	adds	r2, r3, r1
    12da:	6002      	str	r2, [r0, #0]
    12dc:	425a      	negs	r2, r3
    12de:	1a52      	subs	r2, r2, r1
    12e0:	1a59      	subs	r1, r3, r1
    12e2:	6042      	str	r2, [r0, #4]
    12e4:	6081      	str	r1, [r0, #8]
    12e6:	e784      	b.n	11f2 <svpwm+0x1b2>
    12e8:	69f3      	ldr	r3, [r6, #28]
    12ea:	11cc      	asrs	r4, r1, #7
    12ec:	1b3f      	subs	r7, r7, r4
    12ee:	1aed      	subs	r5, r5, r3
    12f0:	e71c      	b.n	112c <svpwm+0xec>
    12f2:	2300      	movs	r3, #0
    12f4:	e71b      	b.n	112e <svpwm+0xee>
    12f6:	0027      	movs	r7, r4
    12f8:	2301      	movs	r3, #1
    12fa:	e718      	b.n	112e <svpwm+0xee>
    12fc:	2302      	movs	r3, #2
    12fe:	e716      	b.n	112e <svpwm+0xee>
    1300:	001f      	movs	r7, r3
    1302:	2303      	movs	r3, #3
    1304:	e713      	b.n	112e <svpwm+0xee>
    1306:	2304      	movs	r3, #4
    1308:	e711      	b.n	112e <svpwm+0xee>
    130a:	001f      	movs	r7, r3
    130c:	2305      	movs	r3, #5
    130e:	e70e      	b.n	112e <svpwm+0xee>
    1310:	2306      	movs	r3, #6
    1312:	e70c      	b.n	112e <svpwm+0xee>
    1314:	000023c8 	.word	0x000023c8
    1318:	000023b0 	.word	0x000023b0
    131c:	00000a54 	.word	0x00000a54
    1320:	000013b0 	.word	0x000013b0
    1324:	000007aa 	.word	0x000007aa
    1328:	00000854 	.word	0x00000854
    132c:	00000256 	.word	0x00000256
    1330:	000008ff 	.word	0x000008ff
    1334:	000009aa 	.word	0x000009aa
    1338:	00000aff 	.word	0x00000aff

0000133c <get_speed>:
    133c:	4a0f      	ldr	r2, [pc, #60]	; (137c <get_speed+0x40>)
    133e:	b510      	push	{r4, lr}
    1340:	6813      	ldr	r3, [r2, #0]
    1342:	6854      	ldr	r4, [r2, #4]
    1344:	1ac3      	subs	r3, r0, r3
    1346:	6050      	str	r0, [r2, #4]
    1348:	6014      	str	r4, [r2, #0]
    134a:	17da      	asrs	r2, r3, #31
    134c:	1898      	adds	r0, r3, r2
    134e:	4050      	eors	r0, r2
    1350:	22fa      	movs	r2, #250	; 0xfa
    1352:	0092      	lsls	r2, r2, #2
    1354:	4290      	cmp	r0, r2
    1356:	dd04      	ble.n	1362 <get_speed+0x26>
    1358:	2b00      	cmp	r3, #0
    135a:	db0a      	blt.n	1372 <get_speed+0x36>
    135c:	4a08      	ldr	r2, [pc, #32]	; (1380 <get_speed+0x44>)
    135e:	4694      	mov	ip, r2
    1360:	4463      	add	r3, ip
    1362:	680a      	ldr	r2, [r1, #0]
    1364:	4807      	ldr	r0, [pc, #28]	; (1384 <get_speed+0x48>)
    1366:	18d2      	adds	r2, r2, r3
    1368:	105b      	asrs	r3, r3, #1
    136a:	4343      	muls	r3, r0
    136c:	600a      	str	r2, [r1, #0]
    136e:	1318      	asrs	r0, r3, #12
    1370:	bd10      	pop	{r4, pc}
    1372:	2280      	movs	r2, #128	; 0x80
    1374:	0152      	lsls	r2, r2, #5
    1376:	4694      	mov	ip, r2
    1378:	4463      	add	r3, ip
    137a:	e7f2      	b.n	1362 <get_speed+0x26>
    137c:	20000010 	.word	0x20000010
    1380:	fffff000 	.word	0xfffff000
    1384:	0002ae7c 	.word	0x0002ae7c

00001388 <mfilter>:
    1388:	221f      	movs	r2, #31
    138a:	4908      	ldr	r1, [pc, #32]	; (13ac <mfilter+0x24>)
    138c:	b510      	push	{r4, lr}
    138e:	688b      	ldr	r3, [r1, #8]
    1390:	3301      	adds	r3, #1
    1392:	4013      	ands	r3, r2
    1394:	608b      	str	r3, [r1, #8]
    1396:	009b      	lsls	r3, r3, #2
    1398:	18cb      	adds	r3, r1, r3
    139a:	68ca      	ldr	r2, [r1, #12]
    139c:	691c      	ldr	r4, [r3, #16]
    139e:	6118      	str	r0, [r3, #16]
    13a0:	1b12      	subs	r2, r2, r4
    13a2:	1812      	adds	r2, r2, r0
    13a4:	1150      	asrs	r0, r2, #5
    13a6:	60ca      	str	r2, [r1, #12]
    13a8:	bd10      	pop	{r4, pc}
    13aa:	46c0      	nop			; (mov r8, r8)
    13ac:	20000010 	.word	0x20000010

000013b0 <cos_tb>:
    13b0:	00000400 00000400 00000400 00000400     ................
    13c0:	00000400 00000400 000003ff 000003ff     ................
    13d0:	000003ff 000003fe 000003fe 000003fe     ................
    13e0:	000003fd 000003fd 000003fc 000003fc     ................
    13f0:	000003fb 000003fa 000003fa 000003f9     ................
    1400:	000003f8 000003f8 000003f7 000003f6     ................
    1410:	000003f5 000003f4 000003f3 000003f2     ................
    1420:	000003f1 000003f0 000003ef 000003ee     ................
    1430:	000003ec 000003eb 000003ea 000003e8     ................
    1440:	000003e7 000003e6 000003e4 000003e3     ................
    1450:	000003e1 000003e0 000003de 000003dd     ................
    1460:	000003db 000003d9 000003d7 000003d6     ................
    1470:	000003d4 000003d2 000003d0 000003ce     ................
    1480:	000003cc 000003ca 000003c8 000003c6     ................
    1490:	000003c4 000003c2 000003c0 000003be     ................
    14a0:	000003bb 000003b9 000003b7 000003b4     ................
    14b0:	000003b2 000003b0 000003ad 000003ab     ................
    14c0:	000003a8 000003a6 000003a3 000003a0     ................
    14d0:	0000039e 0000039b 00000398 00000395     ................
    14e0:	00000393 00000390 0000038d 0000038a     ................
    14f0:	00000387 00000384 00000381 0000037e     ............~...
    1500:	0000037b 00000378 00000375 00000372     {...x...u...r...
    1510:	0000036e 0000036b 00000368 00000364     n...k...h...d...
    1520:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
    1530:	00000353 00000350 0000034c 00000349     S...P...L...I...
    1540:	00000345 00000342 0000033e 0000033a     E...B...>...:...
    1550:	00000336 00000333 0000032f 0000032b     6...3.../...+...
    1560:	00000327 00000323 0000031f 0000031c     '...#...........
    1570:	00000318 00000314 00000310 0000030b     ................
    1580:	00000307 00000303 000002ff 000002fb     ................
    1590:	000002f7 000002f3 000002ee 000002ea     ................
    15a0:	000002e6 000002e1 000002dd 000002d9     ................
    15b0:	000002d4 000002d0 000002cb 000002c7     ................
    15c0:	000002c2 000002be 000002b9 000002b4     ................
    15d0:	000002b0 000002ab 000002a6 000002a2     ................
    15e0:	0000029d 00000298 00000293 0000028e     ................
    15f0:	0000028a 00000285 00000280 0000027b     ............{...
    1600:	00000276 00000271 0000026c 00000267     v...q...l...g...
    1610:	00000262 0000025d 00000258 00000253     b...]...X...S...
    1620:	0000024e 00000248 00000243 0000023e     N...H...C...>...
    1630:	00000239 00000234 0000022e 00000229     9...4.......)...
    1640:	00000224 0000021f 00000219 00000214     $...............
    1650:	0000020e 00000209 00000204 000001fe     ................
    1660:	000001f9 000001f3 000001ee 000001e8     ................
    1670:	000001e3 000001dd 000001d8 000001d2     ................
    1680:	000001cc 000001c7 000001c1 000001bb     ................
    1690:	000001b6 000001b0 000001aa 000001a5     ................
    16a0:	0000019f 00000199 00000193 0000018e     ................
    16b0:	00000188 00000182 0000017c 00000176     ........|...v...
    16c0:	00000171 0000016b 00000165 0000015f     q...k...e..._...
    16d0:	00000159 00000153 0000014d 00000147     Y...S...M...G...
    16e0:	00000141 0000013b 00000135 0000012f     A...;...5.../...
    16f0:	00000129 00000123 0000011d 00000117     )...#...........
    1700:	00000111 0000010b 00000105 000000ff     ................
    1710:	000000f9 000000f3 000000ed 000000e6     ................
    1720:	000000e0 000000da 000000d4 000000ce     ................
    1730:	000000c8 000000c2 000000bb 000000b5     ................
    1740:	000000af 000000a9 000000a3 0000009c     ................
    1750:	00000096 00000090 0000008a 00000084     ................
    1760:	0000007d 00000077 00000071 0000006b     }...w...q...k...
    1770:	00000064 0000005e 00000058 00000052     d...^...X...R...
    1780:	0000004b 00000045 0000003f 00000039     K...E...?...9...
    1790:	00000032 0000002c 00000026 0000001f     2...,...&.......
    17a0:	00000019 00000013 0000000d 00000006     ................
    17b0:	00000000 fffffffa fffffff3 ffffffed     ................
    17c0:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
    17d0:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
    17e0:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
    17f0:	ffffff9c ffffff95 ffffff8f ffffff89     ................
    1800:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
    1810:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
    1820:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
    1830:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
    1840:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
    1850:	ffffff07 ffffff01 fffffefb fffffef5     ................
    1860:	fffffeef fffffee9 fffffee3 fffffedd     ................
    1870:	fffffed7 fffffed1 fffffecb fffffec5     ................
    1880:	fffffebf fffffeb9 fffffeb3 fffffead     ................
    1890:	fffffea7 fffffea1 fffffe9b fffffe95     ................
    18a0:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
    18b0:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
    18c0:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
    18d0:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
    18e0:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
    18f0:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
    1900:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
    1910:	fffffdf2 fffffdec fffffde7 fffffde1     ................
    1920:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
    1930:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
    1940:	fffffdb2 fffffdad fffffda8 fffffda3     ................
    1950:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
    1960:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
    1970:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
    1980:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
    1990:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
    19a0:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
    19b0:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
    19c0:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
    19d0:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
    19e0:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
    19f0:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
    1a00:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
    1a10:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
    1a20:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
    1a30:	fffffcad fffffca9 fffffca6 fffffca2     ................
    1a40:	fffffc9f fffffc9c fffffc98 fffffc95     ................
    1a50:	fffffc92 fffffc8e fffffc8b fffffc88     ................
    1a60:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
    1a70:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
    1a80:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
    1a90:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
    1aa0:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
    1ab0:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
    1ac0:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
    1ad0:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
    1ae0:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
    1af0:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
    1b00:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
    1b10:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
    1b20:	fffffc19 fffffc18 fffffc16 fffffc15     ................
    1b30:	fffffc14 fffffc12 fffffc11 fffffc10     ................
    1b40:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
    1b50:	fffffc0b fffffc0a fffffc09 fffffc08     ................
    1b60:	fffffc08 fffffc07 fffffc06 fffffc06     ................
    1b70:	fffffc05 fffffc04 fffffc04 fffffc03     ................
    1b80:	fffffc03 fffffc02 fffffc02 fffffc02     ................
    1b90:	fffffc01 fffffc01 fffffc01 fffffc00     ................
    1ba0:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1bb0:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1bc0:	fffffc00 fffffc00 fffffc01 fffffc01     ................
    1bd0:	fffffc01 fffffc02 fffffc02 fffffc02     ................
    1be0:	fffffc03 fffffc03 fffffc04 fffffc04     ................
    1bf0:	fffffc05 fffffc06 fffffc06 fffffc07     ................
    1c00:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
    1c10:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
    1c20:	fffffc0f fffffc10 fffffc11 fffffc12     ................
    1c30:	fffffc14 fffffc15 fffffc16 fffffc18     ................
    1c40:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
    1c50:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
    1c60:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
    1c70:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
    1c80:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
    1c90:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
    1ca0:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
    1cb0:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
    1cc0:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
    1cd0:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
    1ce0:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
    1cf0:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
    1d00:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
    1d10:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
    1d20:	fffffc9f fffffca2 fffffca6 fffffca9     ................
    1d30:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
    1d40:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
    1d50:	fffffcca fffffccd fffffcd1 fffffcd5     ................
    1d60:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
    1d70:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
    1d80:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
    1d90:	fffffd09 fffffd0d fffffd12 fffffd16     ................
    1da0:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
    1db0:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
    1dc0:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
    1dd0:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
    1de0:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
    1df0:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
    1e00:	fffffd8a fffffd8f fffffd94 fffffd99     ................
    1e10:	fffffd9e fffffda3 fffffda8 fffffdad     ................
    1e20:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
    1e30:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
    1e40:	fffffddc fffffde1 fffffde7 fffffdec     ................
    1e50:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
    1e60:	fffffe07 fffffe0d fffffe12 fffffe18     ................
    1e70:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
    1e80:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
    1e90:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
    1ea0:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
    1eb0:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
    1ec0:	fffffe8f fffffe95 fffffe9b fffffea1     ................
    1ed0:	fffffea7 fffffead fffffeb3 fffffeb9     ................
    1ee0:	fffffebf fffffec5 fffffecb fffffed1     ................
    1ef0:	fffffed7 fffffedd fffffee3 fffffee9     ................
    1f00:	fffffeef fffffef5 fffffefb ffffff01     ................
    1f10:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
    1f20:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
    1f30:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
    1f40:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
    1f50:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
    1f60:	ffffff83 ffffff89 ffffff8f ffffff95     ................
    1f70:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
    1f80:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
    1f90:	ffffffce ffffffd4 ffffffda ffffffe1     ................
    1fa0:	ffffffe7 ffffffed fffffff3 fffffffa     ................
    1fb0:	00000000 00000006 0000000d 00000013     ................
    1fc0:	00000019 0000001f 00000026 0000002c     ........&...,...
    1fd0:	00000032 00000039 0000003f 00000045     2...9...?...E...
    1fe0:	0000004b 00000052 00000058 0000005e     K...R...X...^...
    1ff0:	00000064 0000006b 00000071 00000077     d...k...q...w...
    2000:	0000007d 00000084 0000008a 00000090     }...............
    2010:	00000096 0000009c 000000a3 000000a9     ................
    2020:	000000af 000000b5 000000bb 000000c2     ................
    2030:	000000c8 000000ce 000000d4 000000da     ................
    2040:	000000e0 000000e6 000000ed 000000f3     ................
    2050:	000000f9 000000ff 00000105 0000010b     ................
    2060:	00000111 00000117 0000011d 00000123     ............#...
    2070:	00000129 0000012f 00000135 0000013b     ).../...5...;...
    2080:	00000141 00000147 0000014d 00000153     A...G...M...S...
    2090:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
    20a0:	00000171 00000176 0000017c 00000182     q...v...|.......
    20b0:	00000188 0000018e 00000193 00000199     ................
    20c0:	0000019f 000001a5 000001aa 000001b0     ................
    20d0:	000001b6 000001bb 000001c1 000001c7     ................
    20e0:	000001cc 000001d2 000001d8 000001dd     ................
    20f0:	000001e3 000001e8 000001ee 000001f3     ................
    2100:	000001f9 000001fe 00000204 00000209     ................
    2110:	0000020e 00000214 00000219 0000021f     ................
    2120:	00000224 00000229 0000022e 00000234     $...).......4...
    2130:	00000239 0000023e 00000243 00000248     9...>...C...H...
    2140:	0000024e 00000253 00000258 0000025d     N...S...X...]...
    2150:	00000262 00000267 0000026c 00000271     b...g...l...q...
    2160:	00000276 0000027b 00000280 00000285     v...{...........
    2170:	0000028a 0000028e 00000293 00000298     ................
    2180:	0000029d 000002a2 000002a6 000002ab     ................
    2190:	000002b0 000002b4 000002b9 000002be     ................
    21a0:	000002c2 000002c7 000002cb 000002d0     ................
    21b0:	000002d4 000002d9 000002dd 000002e1     ................
    21c0:	000002e6 000002ea 000002ee 000002f3     ................
    21d0:	000002f7 000002fb 000002ff 00000303     ................
    21e0:	00000307 0000030b 00000310 00000314     ................
    21f0:	00000318 0000031c 0000031f 00000323     ............#...
    2200:	00000327 0000032b 0000032f 00000333     '...+.../...3...
    2210:	00000336 0000033a 0000033e 00000342     6...:...>...B...
    2220:	00000345 00000349 0000034c 00000350     E...I...L...P...
    2230:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
    2240:	00000361 00000364 00000368 0000036b     a...d...h...k...
    2250:	0000036e 00000372 00000375 00000378     n...r...u...x...
    2260:	0000037b 0000037e 00000381 00000384     {...~...........
    2270:	00000387 0000038a 0000038d 00000390     ................
    2280:	00000393 00000395 00000398 0000039b     ................
    2290:	0000039e 000003a0 000003a3 000003a6     ................
    22a0:	000003a8 000003ab 000003ad 000003b0     ................
    22b0:	000003b2 000003b4 000003b7 000003b9     ................
    22c0:	000003bb 000003be 000003c0 000003c2     ................
    22d0:	000003c4 000003c6 000003c8 000003ca     ................
    22e0:	000003cc 000003ce 000003d0 000003d2     ................
    22f0:	000003d4 000003d6 000003d7 000003d9     ................
    2300:	000003db 000003dd 000003de 000003e0     ................
    2310:	000003e1 000003e3 000003e4 000003e6     ................
    2320:	000003e7 000003e8 000003ea 000003eb     ................
    2330:	000003ec 000003ee 000003ef 000003f0     ................
    2340:	000003f1 000003f2 000003f3 000003f4     ................
    2350:	000003f5 000003f6 000003f7 000003f8     ................
    2360:	000003f8 000003f9 000003fa 000003fa     ................
    2370:	000003fb 000003fc 000003fc 000003fd     ................
    2380:	000003fd 000003fe 000003fe 000003fe     ................
    2390:	000003ff 000003ff 000003ff 00000400     ................
    23a0:	00000400 00000400 00000400 00000400     ................
    23b0:	000011fe 00001230 00001260 0000128e     ....0...`.......
    23c0:	000011c8 000012bc 00000080 0000004c     ............L...
    23d0:	00000028 00000014 0000000a 00000005     (...............
    23e0:	00000003 00000001 000002d4 00000288     ................
    23f0:	00000274 0000026f 0000026f 0000026e     t...o...o...n...
    2400:	0000026e 0000026e                       n...n...
