
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d9 0a 00 00 39 0b 00 00 39 0b 00 00     ... ....9...9...
	...
      2c:	39 0b 00 00 00 00 00 00 00 00 00 00 39 0b 00 00     9...........9...
      3c:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      4c:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      5c:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      6c:	39 0b 00 00 39 0b 00 00 ad 0a 00 00 39 0b 00 00     9...9.......9...
      7c:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      8c:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      9c:	39 0b 00 00 39 0b 00 00 00 00 00 00 00 00 00 00     9...9...........
      ac:	39 0b 00 00 39 0b 00 00 39 0b 00 00 39 0b 00 00     9...9...9...9...
      bc:	39 0b 00 00                                         9...

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
     100:	2300      	movs	r3, #0
     102:	60fb      	str	r3, [r7, #12]
     104:	e00b      	b.n	11e <sleep+0x26>
     106:	46c0      	nop			; (mov r8, r8)
     108:	4b09      	ldr	r3, [pc, #36]	; (130 <sleep+0x38>)
     10a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     10c:	2202      	movs	r2, #2
     10e:	4013      	ands	r3, r2
     110:	d0fa      	beq.n	108 <sleep+0x10>
     112:	4b07      	ldr	r3, [pc, #28]	; (130 <sleep+0x38>)
     114:	2200      	movs	r2, #0
     116:	655a      	str	r2, [r3, #84]	; 0x54
     118:	68fb      	ldr	r3, [r7, #12]
     11a:	3301      	adds	r3, #1
     11c:	60fb      	str	r3, [r7, #12]
     11e:	68fa      	ldr	r2, [r7, #12]
     120:	687b      	ldr	r3, [r7, #4]
     122:	429a      	cmp	r2, r3
     124:	d3ef      	bcc.n	106 <sleep+0xe>
     126:	46c0      	nop			; (mov r8, r8)
     128:	0018      	movs	r0, r3
     12a:	46bd      	mov	sp, r7
     12c:	b004      	add	sp, #16
     12e:	bd80      	pop	{r7, pc}
     130:	40098000 	.word	0x40098000

00000134 <PortConfig>:
     134:	b580      	push	{r7, lr}
     136:	af00      	add	r7, sp, #0
     138:	4b50      	ldr	r3, [pc, #320]	; (27c <PortConfig+0x148>)
     13a:	4a50      	ldr	r2, [pc, #320]	; (27c <PortConfig+0x148>)
     13c:	69d2      	ldr	r2, [r2, #28]
     13e:	2180      	movs	r1, #128	; 0x80
     140:	0389      	lsls	r1, r1, #14
     142:	430a      	orrs	r2, r1
     144:	61da      	str	r2, [r3, #28]
     146:	4b4e      	ldr	r3, [pc, #312]	; (280 <PortConfig+0x14c>)
     148:	4a4d      	ldr	r2, [pc, #308]	; (280 <PortConfig+0x14c>)
     14a:	6892      	ldr	r2, [r2, #8]
     14c:	494d      	ldr	r1, [pc, #308]	; (284 <PortConfig+0x150>)
     14e:	400a      	ands	r2, r1
     150:	609a      	str	r2, [r3, #8]
     152:	4b4b      	ldr	r3, [pc, #300]	; (280 <PortConfig+0x14c>)
     154:	4a4a      	ldr	r2, [pc, #296]	; (280 <PortConfig+0x14c>)
     156:	6812      	ldr	r2, [r2, #0]
     158:	494b      	ldr	r1, [pc, #300]	; (288 <PortConfig+0x154>)
     15a:	400a      	ands	r2, r1
     15c:	601a      	str	r2, [r3, #0]
     15e:	4b48      	ldr	r3, [pc, #288]	; (280 <PortConfig+0x14c>)
     160:	4a47      	ldr	r2, [pc, #284]	; (280 <PortConfig+0x14c>)
     162:	6852      	ldr	r2, [r2, #4]
     164:	2180      	movs	r1, #128	; 0x80
     166:	0209      	lsls	r1, r1, #8
     168:	430a      	orrs	r2, r1
     16a:	605a      	str	r2, [r3, #4]
     16c:	4b44      	ldr	r3, [pc, #272]	; (280 <PortConfig+0x14c>)
     16e:	4a44      	ldr	r2, [pc, #272]	; (280 <PortConfig+0x14c>)
     170:	68d2      	ldr	r2, [r2, #12]
     172:	2180      	movs	r1, #128	; 0x80
     174:	0209      	lsls	r1, r1, #8
     176:	430a      	orrs	r2, r1
     178:	60da      	str	r2, [r3, #12]
     17a:	4b41      	ldr	r3, [pc, #260]	; (280 <PortConfig+0x14c>)
     17c:	4a40      	ldr	r2, [pc, #256]	; (280 <PortConfig+0x14c>)
     17e:	6992      	ldr	r2, [r2, #24]
     180:	21c0      	movs	r1, #192	; 0xc0
     182:	0609      	lsls	r1, r1, #24
     184:	430a      	orrs	r2, r1
     186:	619a      	str	r2, [r3, #24]
     188:	4b3d      	ldr	r3, [pc, #244]	; (280 <PortConfig+0x14c>)
     18a:	4a3d      	ldr	r2, [pc, #244]	; (280 <PortConfig+0x14c>)
     18c:	6892      	ldr	r2, [r2, #8]
     18e:	493f      	ldr	r1, [pc, #252]	; (28c <PortConfig+0x158>)
     190:	430a      	orrs	r2, r1
     192:	609a      	str	r2, [r3, #8]
     194:	4b3a      	ldr	r3, [pc, #232]	; (280 <PortConfig+0x14c>)
     196:	4a3a      	ldr	r2, [pc, #232]	; (280 <PortConfig+0x14c>)
     198:	6852      	ldr	r2, [r2, #4]
     19a:	21fc      	movs	r1, #252	; 0xfc
     19c:	0109      	lsls	r1, r1, #4
     19e:	430a      	orrs	r2, r1
     1a0:	605a      	str	r2, [r3, #4]
     1a2:	4b37      	ldr	r3, [pc, #220]	; (280 <PortConfig+0x14c>)
     1a4:	4a36      	ldr	r2, [pc, #216]	; (280 <PortConfig+0x14c>)
     1a6:	68d2      	ldr	r2, [r2, #12]
     1a8:	21fc      	movs	r1, #252	; 0xfc
     1aa:	0109      	lsls	r1, r1, #4
     1ac:	430a      	orrs	r2, r1
     1ae:	60da      	str	r2, [r3, #12]
     1b0:	4b33      	ldr	r3, [pc, #204]	; (280 <PortConfig+0x14c>)
     1b2:	4a33      	ldr	r2, [pc, #204]	; (280 <PortConfig+0x14c>)
     1b4:	6992      	ldr	r2, [r2, #24]
     1b6:	4936      	ldr	r1, [pc, #216]	; (290 <PortConfig+0x15c>)
     1b8:	430a      	orrs	r2, r1
     1ba:	619a      	str	r2, [r3, #24]
     1bc:	4b2f      	ldr	r3, [pc, #188]	; (27c <PortConfig+0x148>)
     1be:	4a2f      	ldr	r2, [pc, #188]	; (27c <PortConfig+0x148>)
     1c0:	69d2      	ldr	r2, [r2, #28]
     1c2:	2180      	movs	r1, #128	; 0x80
     1c4:	0489      	lsls	r1, r1, #18
     1c6:	430a      	orrs	r2, r1
     1c8:	61da      	str	r2, [r3, #28]
     1ca:	4b32      	ldr	r3, [pc, #200]	; (294 <PortConfig+0x160>)
     1cc:	4a31      	ldr	r2, [pc, #196]	; (294 <PortConfig+0x160>)
     1ce:	68d2      	ldr	r2, [r2, #12]
     1d0:	2102      	movs	r1, #2
     1d2:	438a      	bics	r2, r1
     1d4:	60da      	str	r2, [r3, #12]
     1d6:	4b29      	ldr	r3, [pc, #164]	; (27c <PortConfig+0x148>)
     1d8:	4a28      	ldr	r2, [pc, #160]	; (27c <PortConfig+0x148>)
     1da:	69d2      	ldr	r2, [r2, #28]
     1dc:	2180      	movs	r1, #128	; 0x80
     1de:	0449      	lsls	r1, r1, #17
     1e0:	430a      	orrs	r2, r1
     1e2:	61da      	str	r2, [r3, #28]
     1e4:	4b2c      	ldr	r3, [pc, #176]	; (298 <PortConfig+0x164>)
     1e6:	4a2c      	ldr	r2, [pc, #176]	; (298 <PortConfig+0x164>)
     1e8:	6892      	ldr	r2, [r2, #8]
     1ea:	492c      	ldr	r1, [pc, #176]	; (29c <PortConfig+0x168>)
     1ec:	400a      	ands	r2, r1
     1ee:	609a      	str	r2, [r3, #8]
     1f0:	4b29      	ldr	r3, [pc, #164]	; (298 <PortConfig+0x164>)
     1f2:	4a29      	ldr	r2, [pc, #164]	; (298 <PortConfig+0x164>)
     1f4:	6892      	ldr	r2, [r2, #8]
     1f6:	21a0      	movs	r1, #160	; 0xa0
     1f8:	02c9      	lsls	r1, r1, #11
     1fa:	430a      	orrs	r2, r1
     1fc:	609a      	str	r2, [r3, #8]
     1fe:	4b26      	ldr	r3, [pc, #152]	; (298 <PortConfig+0x164>)
     200:	4a25      	ldr	r2, [pc, #148]	; (298 <PortConfig+0x164>)
     202:	68d2      	ldr	r2, [r2, #12]
     204:	21c0      	movs	r1, #192	; 0xc0
     206:	0089      	lsls	r1, r1, #2
     208:	430a      	orrs	r2, r1
     20a:	60da      	str	r2, [r3, #12]
     20c:	4b22      	ldr	r3, [pc, #136]	; (298 <PortConfig+0x164>)
     20e:	4a22      	ldr	r2, [pc, #136]	; (298 <PortConfig+0x164>)
     210:	6992      	ldr	r2, [r2, #24]
     212:	21c0      	movs	r1, #192	; 0xc0
     214:	0309      	lsls	r1, r1, #12
     216:	430a      	orrs	r2, r1
     218:	619a      	str	r2, [r3, #24]
     21a:	4b1f      	ldr	r3, [pc, #124]	; (298 <PortConfig+0x164>)
     21c:	4a1e      	ldr	r2, [pc, #120]	; (298 <PortConfig+0x164>)
     21e:	6852      	ldr	r2, [r2, #4]
     220:	2180      	movs	r1, #128	; 0x80
     222:	0089      	lsls	r1, r1, #2
     224:	430a      	orrs	r2, r1
     226:	605a      	str	r2, [r3, #4]
     228:	4b1b      	ldr	r3, [pc, #108]	; (298 <PortConfig+0x164>)
     22a:	4a1b      	ldr	r2, [pc, #108]	; (298 <PortConfig+0x164>)
     22c:	6852      	ldr	r2, [r2, #4]
     22e:	491c      	ldr	r1, [pc, #112]	; (2a0 <PortConfig+0x16c>)
     230:	400a      	ands	r2, r1
     232:	605a      	str	r2, [r3, #4]
     234:	4b11      	ldr	r3, [pc, #68]	; (27c <PortConfig+0x148>)
     236:	4a11      	ldr	r2, [pc, #68]	; (27c <PortConfig+0x148>)
     238:	69d2      	ldr	r2, [r2, #28]
     23a:	2180      	movs	r1, #128	; 0x80
     23c:	0409      	lsls	r1, r1, #16
     23e:	430a      	orrs	r2, r1
     240:	61da      	str	r2, [r3, #28]
     242:	4b18      	ldr	r3, [pc, #96]	; (2a4 <PortConfig+0x170>)
     244:	2200      	movs	r2, #0
     246:	609a      	str	r2, [r3, #8]
     248:	4b16      	ldr	r3, [pc, #88]	; (2a4 <PortConfig+0x170>)
     24a:	2200      	movs	r2, #0
     24c:	601a      	str	r2, [r3, #0]
     24e:	4b15      	ldr	r3, [pc, #84]	; (2a4 <PortConfig+0x170>)
     250:	4a14      	ldr	r2, [pc, #80]	; (2a4 <PortConfig+0x170>)
     252:	6852      	ldr	r2, [r2, #4]
     254:	2160      	movs	r1, #96	; 0x60
     256:	430a      	orrs	r2, r1
     258:	605a      	str	r2, [r3, #4]
     25a:	4b12      	ldr	r3, [pc, #72]	; (2a4 <PortConfig+0x170>)
     25c:	4a11      	ldr	r2, [pc, #68]	; (2a4 <PortConfig+0x170>)
     25e:	68d2      	ldr	r2, [r2, #12]
     260:	2160      	movs	r1, #96	; 0x60
     262:	430a      	orrs	r2, r1
     264:	60da      	str	r2, [r3, #12]
     266:	4b0f      	ldr	r3, [pc, #60]	; (2a4 <PortConfig+0x170>)
     268:	4a0e      	ldr	r2, [pc, #56]	; (2a4 <PortConfig+0x170>)
     26a:	6992      	ldr	r2, [r2, #24]
     26c:	21f0      	movs	r1, #240	; 0xf0
     26e:	0189      	lsls	r1, r1, #6
     270:	430a      	orrs	r2, r1
     272:	619a      	str	r2, [r3, #24]
     274:	46c0      	nop			; (mov r8, r8)
     276:	46bd      	mov	sp, r7
     278:	bd80      	pop	{r7, pc}
     27a:	46c0      	nop			; (mov r8, r8)
     27c:	40020000 	.word	0x40020000
     280:	400a8000 	.word	0x400a8000
     284:	ff000fff 	.word	0xff000fff
     288:	ffff7fff 	.word	0xffff7fff
     28c:	00aaa000 	.word	0x00aaa000
     290:	00fff000 	.word	0x00fff000
     294:	400c8000 	.word	0x400c8000
     298:	400c0000 	.word	0x400c0000
     29c:	fff0ffff 	.word	0xfff0ffff
     2a0:	fffffeff 	.word	0xfffffeff
     2a4:	400b8000 	.word	0x400b8000

000002a8 <ClkConfig>:
     2a8:	b580      	push	{r7, lr}
     2aa:	af00      	add	r7, sp, #0
     2ac:	4b18      	ldr	r3, [pc, #96]	; (310 <ClkConfig+0x68>)
     2ae:	4a18      	ldr	r2, [pc, #96]	; (310 <ClkConfig+0x68>)
     2b0:	6892      	ldr	r2, [r2, #8]
     2b2:	2101      	movs	r1, #1
     2b4:	430a      	orrs	r2, r1
     2b6:	609a      	str	r2, [r3, #8]
     2b8:	46c0      	nop			; (mov r8, r8)
     2ba:	4b15      	ldr	r3, [pc, #84]	; (310 <ClkConfig+0x68>)
     2bc:	681b      	ldr	r3, [r3, #0]
     2be:	2204      	movs	r2, #4
     2c0:	4013      	ands	r3, r2
     2c2:	d0fa      	beq.n	2ba <ClkConfig+0x12>
     2c4:	4b12      	ldr	r3, [pc, #72]	; (310 <ClkConfig+0x68>)
     2c6:	4a12      	ldr	r2, [pc, #72]	; (310 <ClkConfig+0x68>)
     2c8:	68d2      	ldr	r2, [r2, #12]
     2ca:	2102      	movs	r1, #2
     2cc:	430a      	orrs	r2, r1
     2ce:	60da      	str	r2, [r3, #12]
     2d0:	4b0f      	ldr	r3, [pc, #60]	; (310 <ClkConfig+0x68>)
     2d2:	4a10      	ldr	r2, [pc, #64]	; (314 <ClkConfig+0x6c>)
     2d4:	605a      	str	r2, [r3, #4]
     2d6:	46c0      	nop			; (mov r8, r8)
     2d8:	4b0d      	ldr	r3, [pc, #52]	; (310 <ClkConfig+0x68>)
     2da:	681b      	ldr	r3, [r3, #0]
     2dc:	2202      	movs	r2, #2
     2de:	4013      	ands	r3, r2
     2e0:	d0fa      	beq.n	2d8 <ClkConfig+0x30>
     2e2:	4b0d      	ldr	r3, [pc, #52]	; (318 <ClkConfig+0x70>)
     2e4:	4a0c      	ldr	r2, [pc, #48]	; (318 <ClkConfig+0x70>)
     2e6:	6812      	ldr	r2, [r2, #0]
     2e8:	2120      	movs	r1, #32
     2ea:	430a      	orrs	r2, r1
     2ec:	601a      	str	r2, [r3, #0]
     2ee:	4b08      	ldr	r3, [pc, #32]	; (310 <ClkConfig+0x68>)
     2f0:	4a07      	ldr	r2, [pc, #28]	; (310 <ClkConfig+0x68>)
     2f2:	68d2      	ldr	r2, [r2, #12]
     2f4:	2180      	movs	r1, #128	; 0x80
     2f6:	0049      	lsls	r1, r1, #1
     2f8:	430a      	orrs	r2, r1
     2fa:	60da      	str	r2, [r3, #12]
     2fc:	4b04      	ldr	r3, [pc, #16]	; (310 <ClkConfig+0x68>)
     2fe:	4a04      	ldr	r2, [pc, #16]	; (310 <ClkConfig+0x68>)
     300:	68d2      	ldr	r2, [r2, #12]
     302:	2104      	movs	r1, #4
     304:	430a      	orrs	r2, r1
     306:	60da      	str	r2, [r3, #12]
     308:	46c0      	nop			; (mov r8, r8)
     30a:	46bd      	mov	sp, r7
     30c:	bd80      	pop	{r7, pc}
     30e:	46c0      	nop			; (mov r8, r8)
     310:	40020000 	.word	0x40020000
     314:	00000e04 	.word	0x00000e04
     318:	40018000 	.word	0x40018000

0000031c <TimerConfig>:
     31c:	b580      	push	{r7, lr}
     31e:	af00      	add	r7, sp, #0
     320:	4b7b      	ldr	r3, [pc, #492]	; (510 <_stack_size+0x110>)
     322:	4a7b      	ldr	r2, [pc, #492]	; (510 <_stack_size+0x110>)
     324:	69d2      	ldr	r2, [r2, #28]
     326:	2180      	movs	r1, #128	; 0x80
     328:	0309      	lsls	r1, r1, #12
     32a:	430a      	orrs	r2, r1
     32c:	61da      	str	r2, [r3, #28]
     32e:	4b78      	ldr	r3, [pc, #480]	; (510 <_stack_size+0x110>)
     330:	4a77      	ldr	r2, [pc, #476]	; (510 <_stack_size+0x110>)
     332:	6a92      	ldr	r2, [r2, #40]	; 0x28
     334:	2180      	movs	r1, #128	; 0x80
     336:	04c9      	lsls	r1, r1, #19
     338:	430a      	orrs	r2, r1
     33a:	629a      	str	r2, [r3, #40]	; 0x28
     33c:	4b74      	ldr	r3, [pc, #464]	; (510 <_stack_size+0x110>)
     33e:	4a74      	ldr	r2, [pc, #464]	; (510 <_stack_size+0x110>)
     340:	6a92      	ldr	r2, [r2, #40]	; 0x28
     342:	4974      	ldr	r1, [pc, #464]	; (514 <_stack_size+0x114>)
     344:	400a      	ands	r2, r1
     346:	629a      	str	r2, [r3, #40]	; 0x28
     348:	4b73      	ldr	r3, [pc, #460]	; (518 <_stack_size+0x118>)
     34a:	2200      	movs	r2, #0
     34c:	601a      	str	r2, [r3, #0]
     34e:	4b72      	ldr	r3, [pc, #456]	; (518 <_stack_size+0x118>)
     350:	2204      	movs	r2, #4
     352:	605a      	str	r2, [r3, #4]
     354:	4b70      	ldr	r3, [pc, #448]	; (518 <_stack_size+0x118>)
     356:	4a71      	ldr	r2, [pc, #452]	; (51c <_stack_size+0x11c>)
     358:	609a      	str	r2, [r3, #8]
     35a:	4b6f      	ldr	r3, [pc, #444]	; (518 <_stack_size+0x118>)
     35c:	2280      	movs	r2, #128	; 0x80
     35e:	0092      	lsls	r2, r2, #2
     360:	611a      	str	r2, [r3, #16]
     362:	4b6d      	ldr	r3, [pc, #436]	; (518 <_stack_size+0x118>)
     364:	2280      	movs	r2, #128	; 0x80
     366:	0092      	lsls	r2, r2, #2
     368:	615a      	str	r2, [r3, #20]
     36a:	4b6b      	ldr	r3, [pc, #428]	; (518 <_stack_size+0x118>)
     36c:	2280      	movs	r2, #128	; 0x80
     36e:	0092      	lsls	r2, r2, #2
     370:	619a      	str	r2, [r3, #24]
     372:	4b69      	ldr	r3, [pc, #420]	; (518 <_stack_size+0x118>)
     374:	4a68      	ldr	r2, [pc, #416]	; (518 <_stack_size+0x118>)
     376:	6a12      	ldr	r2, [r2, #32]
     378:	4969      	ldr	r1, [pc, #420]	; (520 <_stack_size+0x120>)
     37a:	400a      	ands	r2, r1
     37c:	621a      	str	r2, [r3, #32]
     37e:	4b66      	ldr	r3, [pc, #408]	; (518 <_stack_size+0x118>)
     380:	4a65      	ldr	r2, [pc, #404]	; (518 <_stack_size+0x118>)
     382:	6a12      	ldr	r2, [r2, #32]
     384:	21e0      	movs	r1, #224	; 0xe0
     386:	0109      	lsls	r1, r1, #4
     388:	430a      	orrs	r2, r1
     38a:	621a      	str	r2, [r3, #32]
     38c:	4b62      	ldr	r3, [pc, #392]	; (518 <_stack_size+0x118>)
     38e:	4a62      	ldr	r2, [pc, #392]	; (518 <_stack_size+0x118>)
     390:	6b12      	ldr	r2, [r2, #48]	; 0x30
     392:	210f      	movs	r1, #15
     394:	438a      	bics	r2, r1
     396:	631a      	str	r2, [r3, #48]	; 0x30
     398:	4b5f      	ldr	r3, [pc, #380]	; (518 <_stack_size+0x118>)
     39a:	4a5f      	ldr	r2, [pc, #380]	; (518 <_stack_size+0x118>)
     39c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     39e:	210c      	movs	r1, #12
     3a0:	430a      	orrs	r2, r1
     3a2:	631a      	str	r2, [r3, #48]	; 0x30
     3a4:	4b5c      	ldr	r3, [pc, #368]	; (518 <_stack_size+0x118>)
     3a6:	4a5c      	ldr	r2, [pc, #368]	; (518 <_stack_size+0x118>)
     3a8:	6b12      	ldr	r2, [r2, #48]	; 0x30
     3aa:	2101      	movs	r1, #1
     3ac:	430a      	orrs	r2, r1
     3ae:	631a      	str	r2, [r3, #48]	; 0x30
     3b0:	4b59      	ldr	r3, [pc, #356]	; (518 <_stack_size+0x118>)
     3b2:	4a59      	ldr	r2, [pc, #356]	; (518 <_stack_size+0x118>)
     3b4:	6b12      	ldr	r2, [r2, #48]	; 0x30
     3b6:	495b      	ldr	r1, [pc, #364]	; (524 <_stack_size+0x124>)
     3b8:	400a      	ands	r2, r1
     3ba:	631a      	str	r2, [r3, #48]	; 0x30
     3bc:	4b56      	ldr	r3, [pc, #344]	; (518 <_stack_size+0x118>)
     3be:	4a56      	ldr	r2, [pc, #344]	; (518 <_stack_size+0x118>)
     3c0:	6b12      	ldr	r2, [r2, #48]	; 0x30
     3c2:	21c0      	movs	r1, #192	; 0xc0
     3c4:	0109      	lsls	r1, r1, #4
     3c6:	430a      	orrs	r2, r1
     3c8:	631a      	str	r2, [r3, #48]	; 0x30
     3ca:	4b53      	ldr	r3, [pc, #332]	; (518 <_stack_size+0x118>)
     3cc:	4a52      	ldr	r2, [pc, #328]	; (518 <_stack_size+0x118>)
     3ce:	6b12      	ldr	r2, [r2, #48]	; 0x30
     3d0:	2180      	movs	r1, #128	; 0x80
     3d2:	0049      	lsls	r1, r1, #1
     3d4:	430a      	orrs	r2, r1
     3d6:	631a      	str	r2, [r3, #48]	; 0x30
     3d8:	4b4f      	ldr	r3, [pc, #316]	; (518 <_stack_size+0x118>)
     3da:	4a4f      	ldr	r2, [pc, #316]	; (518 <_stack_size+0x118>)
     3dc:	6e12      	ldr	r2, [r2, #96]	; 0x60
     3de:	2108      	movs	r1, #8
     3e0:	430a      	orrs	r2, r1
     3e2:	661a      	str	r2, [r3, #96]	; 0x60
     3e4:	4b4c      	ldr	r3, [pc, #304]	; (518 <_stack_size+0x118>)
     3e6:	4a4c      	ldr	r2, [pc, #304]	; (518 <_stack_size+0x118>)
     3e8:	6a52      	ldr	r2, [r2, #36]	; 0x24
     3ea:	494d      	ldr	r1, [pc, #308]	; (520 <_stack_size+0x120>)
     3ec:	400a      	ands	r2, r1
     3ee:	625a      	str	r2, [r3, #36]	; 0x24
     3f0:	4b49      	ldr	r3, [pc, #292]	; (518 <_stack_size+0x118>)
     3f2:	4a49      	ldr	r2, [pc, #292]	; (518 <_stack_size+0x118>)
     3f4:	6a52      	ldr	r2, [r2, #36]	; 0x24
     3f6:	21e0      	movs	r1, #224	; 0xe0
     3f8:	0109      	lsls	r1, r1, #4
     3fa:	430a      	orrs	r2, r1
     3fc:	625a      	str	r2, [r3, #36]	; 0x24
     3fe:	4b46      	ldr	r3, [pc, #280]	; (518 <_stack_size+0x118>)
     400:	4a45      	ldr	r2, [pc, #276]	; (518 <_stack_size+0x118>)
     402:	6b52      	ldr	r2, [r2, #52]	; 0x34
     404:	210f      	movs	r1, #15
     406:	438a      	bics	r2, r1
     408:	635a      	str	r2, [r3, #52]	; 0x34
     40a:	4b43      	ldr	r3, [pc, #268]	; (518 <_stack_size+0x118>)
     40c:	4a42      	ldr	r2, [pc, #264]	; (518 <_stack_size+0x118>)
     40e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     410:	210c      	movs	r1, #12
     412:	430a      	orrs	r2, r1
     414:	635a      	str	r2, [r3, #52]	; 0x34
     416:	4b40      	ldr	r3, [pc, #256]	; (518 <_stack_size+0x118>)
     418:	4a3f      	ldr	r2, [pc, #252]	; (518 <_stack_size+0x118>)
     41a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     41c:	2101      	movs	r1, #1
     41e:	430a      	orrs	r2, r1
     420:	635a      	str	r2, [r3, #52]	; 0x34
     422:	4b3d      	ldr	r3, [pc, #244]	; (518 <_stack_size+0x118>)
     424:	4a3c      	ldr	r2, [pc, #240]	; (518 <_stack_size+0x118>)
     426:	6b52      	ldr	r2, [r2, #52]	; 0x34
     428:	493e      	ldr	r1, [pc, #248]	; (524 <_stack_size+0x124>)
     42a:	400a      	ands	r2, r1
     42c:	635a      	str	r2, [r3, #52]	; 0x34
     42e:	4b3a      	ldr	r3, [pc, #232]	; (518 <_stack_size+0x118>)
     430:	4a39      	ldr	r2, [pc, #228]	; (518 <_stack_size+0x118>)
     432:	6b52      	ldr	r2, [r2, #52]	; 0x34
     434:	21c0      	movs	r1, #192	; 0xc0
     436:	0109      	lsls	r1, r1, #4
     438:	430a      	orrs	r2, r1
     43a:	635a      	str	r2, [r3, #52]	; 0x34
     43c:	4b36      	ldr	r3, [pc, #216]	; (518 <_stack_size+0x118>)
     43e:	4a36      	ldr	r2, [pc, #216]	; (518 <_stack_size+0x118>)
     440:	6b52      	ldr	r2, [r2, #52]	; 0x34
     442:	2180      	movs	r1, #128	; 0x80
     444:	0049      	lsls	r1, r1, #1
     446:	430a      	orrs	r2, r1
     448:	635a      	str	r2, [r3, #52]	; 0x34
     44a:	4b33      	ldr	r3, [pc, #204]	; (518 <_stack_size+0x118>)
     44c:	4a32      	ldr	r2, [pc, #200]	; (518 <_stack_size+0x118>)
     44e:	6e52      	ldr	r2, [r2, #100]	; 0x64
     450:	2108      	movs	r1, #8
     452:	430a      	orrs	r2, r1
     454:	665a      	str	r2, [r3, #100]	; 0x64
     456:	4b30      	ldr	r3, [pc, #192]	; (518 <_stack_size+0x118>)
     458:	4a2f      	ldr	r2, [pc, #188]	; (518 <_stack_size+0x118>)
     45a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     45c:	4930      	ldr	r1, [pc, #192]	; (520 <_stack_size+0x120>)
     45e:	400a      	ands	r2, r1
     460:	629a      	str	r2, [r3, #40]	; 0x28
     462:	4b2d      	ldr	r3, [pc, #180]	; (518 <_stack_size+0x118>)
     464:	4a2c      	ldr	r2, [pc, #176]	; (518 <_stack_size+0x118>)
     466:	6a92      	ldr	r2, [r2, #40]	; 0x28
     468:	21e0      	movs	r1, #224	; 0xe0
     46a:	0109      	lsls	r1, r1, #4
     46c:	430a      	orrs	r2, r1
     46e:	629a      	str	r2, [r3, #40]	; 0x28
     470:	4b29      	ldr	r3, [pc, #164]	; (518 <_stack_size+0x118>)
     472:	4a29      	ldr	r2, [pc, #164]	; (518 <_stack_size+0x118>)
     474:	6b92      	ldr	r2, [r2, #56]	; 0x38
     476:	210f      	movs	r1, #15
     478:	438a      	bics	r2, r1
     47a:	639a      	str	r2, [r3, #56]	; 0x38
     47c:	4b26      	ldr	r3, [pc, #152]	; (518 <_stack_size+0x118>)
     47e:	4a26      	ldr	r2, [pc, #152]	; (518 <_stack_size+0x118>)
     480:	6b92      	ldr	r2, [r2, #56]	; 0x38
     482:	210c      	movs	r1, #12
     484:	430a      	orrs	r2, r1
     486:	639a      	str	r2, [r3, #56]	; 0x38
     488:	4b23      	ldr	r3, [pc, #140]	; (518 <_stack_size+0x118>)
     48a:	4a23      	ldr	r2, [pc, #140]	; (518 <_stack_size+0x118>)
     48c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     48e:	2101      	movs	r1, #1
     490:	430a      	orrs	r2, r1
     492:	639a      	str	r2, [r3, #56]	; 0x38
     494:	4b20      	ldr	r3, [pc, #128]	; (518 <_stack_size+0x118>)
     496:	4a20      	ldr	r2, [pc, #128]	; (518 <_stack_size+0x118>)
     498:	6b92      	ldr	r2, [r2, #56]	; 0x38
     49a:	4922      	ldr	r1, [pc, #136]	; (524 <_stack_size+0x124>)
     49c:	400a      	ands	r2, r1
     49e:	639a      	str	r2, [r3, #56]	; 0x38
     4a0:	4b1d      	ldr	r3, [pc, #116]	; (518 <_stack_size+0x118>)
     4a2:	4a1d      	ldr	r2, [pc, #116]	; (518 <_stack_size+0x118>)
     4a4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     4a6:	21c0      	movs	r1, #192	; 0xc0
     4a8:	0109      	lsls	r1, r1, #4
     4aa:	430a      	orrs	r2, r1
     4ac:	639a      	str	r2, [r3, #56]	; 0x38
     4ae:	4b1a      	ldr	r3, [pc, #104]	; (518 <_stack_size+0x118>)
     4b0:	4a19      	ldr	r2, [pc, #100]	; (518 <_stack_size+0x118>)
     4b2:	6b92      	ldr	r2, [r2, #56]	; 0x38
     4b4:	2180      	movs	r1, #128	; 0x80
     4b6:	0049      	lsls	r1, r1, #1
     4b8:	430a      	orrs	r2, r1
     4ba:	639a      	str	r2, [r3, #56]	; 0x38
     4bc:	4b16      	ldr	r3, [pc, #88]	; (518 <_stack_size+0x118>)
     4be:	4a16      	ldr	r2, [pc, #88]	; (518 <_stack_size+0x118>)
     4c0:	6e92      	ldr	r2, [r2, #104]	; 0x68
     4c2:	2108      	movs	r1, #8
     4c4:	430a      	orrs	r2, r1
     4c6:	669a      	str	r2, [r3, #104]	; 0x68
     4c8:	4b13      	ldr	r3, [pc, #76]	; (518 <_stack_size+0x118>)
     4ca:	4a13      	ldr	r2, [pc, #76]	; (518 <_stack_size+0x118>)
     4cc:	6c12      	ldr	r2, [r2, #64]	; 0x40
     4ce:	2196      	movs	r1, #150	; 0x96
     4d0:	0189      	lsls	r1, r1, #6
     4d2:	430a      	orrs	r2, r1
     4d4:	641a      	str	r2, [r3, #64]	; 0x40
     4d6:	4b10      	ldr	r3, [pc, #64]	; (518 <_stack_size+0x118>)
     4d8:	4a0f      	ldr	r2, [pc, #60]	; (518 <_stack_size+0x118>)
     4da:	6c52      	ldr	r2, [r2, #68]	; 0x44
     4dc:	2196      	movs	r1, #150	; 0x96
     4de:	0189      	lsls	r1, r1, #6
     4e0:	430a      	orrs	r2, r1
     4e2:	645a      	str	r2, [r3, #68]	; 0x44
     4e4:	4b0c      	ldr	r3, [pc, #48]	; (518 <_stack_size+0x118>)
     4e6:	4a0c      	ldr	r2, [pc, #48]	; (518 <_stack_size+0x118>)
     4e8:	6c92      	ldr	r2, [r2, #72]	; 0x48
     4ea:	2196      	movs	r1, #150	; 0x96
     4ec:	0189      	lsls	r1, r1, #6
     4ee:	430a      	orrs	r2, r1
     4f0:	649a      	str	r2, [r3, #72]	; 0x48
     4f2:	4b09      	ldr	r3, [pc, #36]	; (518 <_stack_size+0x118>)
     4f4:	4a08      	ldr	r2, [pc, #32]	; (518 <_stack_size+0x118>)
     4f6:	6d92      	ldr	r2, [r2, #88]	; 0x58
     4f8:	2102      	movs	r1, #2
     4fa:	430a      	orrs	r2, r1
     4fc:	659a      	str	r2, [r3, #88]	; 0x58
     4fe:	200d      	movs	r0, #13
     500:	f7ff fdde 	bl	c0 <NVIC_EnableIRQ>
     504:	4b04      	ldr	r3, [pc, #16]	; (518 <_stack_size+0x118>)
     506:	2201      	movs	r2, #1
     508:	60da      	str	r2, [r3, #12]
     50a:	46c0      	nop			; (mov r8, r8)
     50c:	46bd      	mov	sp, r7
     50e:	bd80      	pop	{r7, pc}
     510:	40020000 	.word	0x40020000
     514:	ff00ffff 	.word	0xff00ffff
     518:	40098000 	.word	0x40098000
     51c:	000003ff 	.word	0x000003ff
     520:	fffff1ff 	.word	0xfffff1ff
     524:	fffff0ff 	.word	0xfffff0ff

00000528 <adc_init>:
     528:	b580      	push	{r7, lr}
     52a:	af00      	add	r7, sp, #0
     52c:	4b0f      	ldr	r3, [pc, #60]	; (56c <adc_init+0x44>)
     52e:	4a0f      	ldr	r2, [pc, #60]	; (56c <adc_init+0x44>)
     530:	69d2      	ldr	r2, [r2, #28]
     532:	2180      	movs	r1, #128	; 0x80
     534:	0289      	lsls	r1, r1, #10
     536:	430a      	orrs	r2, r1
     538:	61da      	str	r2, [r3, #28]
     53a:	4b0c      	ldr	r3, [pc, #48]	; (56c <adc_init+0x44>)
     53c:	4a0c      	ldr	r2, [pc, #48]	; (570 <adc_init+0x48>)
     53e:	615a      	str	r2, [r3, #20]
     540:	4b0c      	ldr	r3, [pc, #48]	; (574 <adc_init+0x4c>)
     542:	2200      	movs	r2, #0
     544:	601a      	str	r2, [r3, #0]
     546:	4b0b      	ldr	r3, [pc, #44]	; (574 <adc_init+0x4c>)
     548:	4a0a      	ldr	r2, [pc, #40]	; (574 <adc_init+0x4c>)
     54a:	6812      	ldr	r2, [r2, #0]
     54c:	490a      	ldr	r1, [pc, #40]	; (578 <adc_init+0x50>)
     54e:	430a      	orrs	r2, r1
     550:	601a      	str	r2, [r3, #0]
     552:	4b08      	ldr	r3, [pc, #32]	; (574 <adc_init+0x4c>)
     554:	4a07      	ldr	r2, [pc, #28]	; (574 <adc_init+0x4c>)
     556:	6a92      	ldr	r2, [r2, #40]	; 0x28
     558:	2139      	movs	r1, #57	; 0x39
     55a:	430a      	orrs	r2, r1
     55c:	629a      	str	r2, [r3, #40]	; 0x28
     55e:	4b05      	ldr	r3, [pc, #20]	; (574 <adc_init+0x4c>)
     560:	2210      	movs	r2, #16
     562:	621a      	str	r2, [r3, #32]
     564:	46c0      	nop			; (mov r8, r8)
     566:	46bd      	mov	sp, r7
     568:	bd80      	pop	{r7, pc}
     56a:	46c0      	nop			; (mov r8, r8)
     56c:	40020000 	.word	0x40020000
     570:	00002020 	.word	0x00002020
     574:	40088000 	.word	0x40088000
     578:	00000205 	.word	0x00000205

0000057c <dac_init>:
     57c:	b580      	push	{r7, lr}
     57e:	af00      	add	r7, sp, #0
     580:	4b07      	ldr	r3, [pc, #28]	; (5a0 <dac_init+0x24>)
     582:	4a07      	ldr	r2, [pc, #28]	; (5a0 <dac_init+0x24>)
     584:	69d2      	ldr	r2, [r2, #28]
     586:	2180      	movs	r1, #128	; 0x80
     588:	02c9      	lsls	r1, r1, #11
     58a:	430a      	orrs	r2, r1
     58c:	61da      	str	r2, [r3, #28]
     58e:	4b05      	ldr	r3, [pc, #20]	; (5a4 <dac_init+0x28>)
     590:	4a04      	ldr	r2, [pc, #16]	; (5a4 <dac_init+0x28>)
     592:	6812      	ldr	r2, [r2, #0]
     594:	2104      	movs	r1, #4
     596:	430a      	orrs	r2, r1
     598:	601a      	str	r2, [r3, #0]
     59a:	46c0      	nop			; (mov r8, r8)
     59c:	46bd      	mov	sp, r7
     59e:	bd80      	pop	{r7, pc}
     5a0:	40020000 	.word	0x40020000
     5a4:	40090000 	.word	0x40090000

000005a8 <ssi_init>:
     5a8:	b580      	push	{r7, lr}
     5aa:	af00      	add	r7, sp, #0
     5ac:	4b0c      	ldr	r3, [pc, #48]	; (5e0 <ssi_init+0x38>)
     5ae:	4a0c      	ldr	r2, [pc, #48]	; (5e0 <ssi_init+0x38>)
     5b0:	69d2      	ldr	r2, [r2, #28]
     5b2:	2180      	movs	r1, #128	; 0x80
     5b4:	0349      	lsls	r1, r1, #13
     5b6:	430a      	orrs	r2, r1
     5b8:	61da      	str	r2, [r3, #28]
     5ba:	4b09      	ldr	r3, [pc, #36]	; (5e0 <ssi_init+0x38>)
     5bc:	4a09      	ldr	r2, [pc, #36]	; (5e4 <ssi_init+0x3c>)
     5be:	62da      	str	r2, [r3, #44]	; 0x2c
     5c0:	4b09      	ldr	r3, [pc, #36]	; (5e8 <ssi_init+0x40>)
     5c2:	2200      	movs	r2, #0
     5c4:	605a      	str	r2, [r3, #4]
     5c6:	4b08      	ldr	r3, [pc, #32]	; (5e8 <ssi_init+0x40>)
     5c8:	220a      	movs	r2, #10
     5ca:	611a      	str	r2, [r3, #16]
     5cc:	4b06      	ldr	r3, [pc, #24]	; (5e8 <ssi_init+0x40>)
     5ce:	4a07      	ldr	r2, [pc, #28]	; (5ec <ssi_init+0x44>)
     5d0:	601a      	str	r2, [r3, #0]
     5d2:	4b05      	ldr	r3, [pc, #20]	; (5e8 <ssi_init+0x40>)
     5d4:	2202      	movs	r2, #2
     5d6:	605a      	str	r2, [r3, #4]
     5d8:	46c0      	nop			; (mov r8, r8)
     5da:	46bd      	mov	sp, r7
     5dc:	bd80      	pop	{r7, pc}
     5de:	46c0      	nop			; (mov r8, r8)
     5e0:	40020000 	.word	0x40020000
     5e4:	02000200 	.word	0x02000200
     5e8:	400a0000 	.word	0x400a0000
     5ec:	0000021b 	.word	0x0000021b

000005f0 <g2b>:
     5f0:	b580      	push	{r7, lr}
     5f2:	b084      	sub	sp, #16
     5f4:	af00      	add	r7, sp, #0
     5f6:	6078      	str	r0, [r7, #4]
     5f8:	2300      	movs	r3, #0
     5fa:	60fb      	str	r3, [r7, #12]
     5fc:	2300      	movs	r3, #0
     5fe:	60fb      	str	r3, [r7, #12]
     600:	e006      	b.n	610 <g2b+0x20>
     602:	68fa      	ldr	r2, [r7, #12]
     604:	687b      	ldr	r3, [r7, #4]
     606:	4053      	eors	r3, r2
     608:	60fb      	str	r3, [r7, #12]
     60a:	687b      	ldr	r3, [r7, #4]
     60c:	085b      	lsrs	r3, r3, #1
     60e:	607b      	str	r3, [r7, #4]
     610:	687b      	ldr	r3, [r7, #4]
     612:	2b00      	cmp	r3, #0
     614:	d1f5      	bne.n	602 <g2b+0x12>
     616:	68fb      	ldr	r3, [r7, #12]
     618:	0018      	movs	r0, r3
     61a:	46bd      	mov	sp, r7
     61c:	b004      	add	sp, #16
     61e:	bd80      	pop	{r7, pc}

00000620 <encoder_start>:
     620:	b580      	push	{r7, lr}
     622:	af00      	add	r7, sp, #0
     624:	4b02      	ldr	r3, [pc, #8]	; (630 <encoder_start+0x10>)
     626:	4a03      	ldr	r2, [pc, #12]	; (634 <encoder_start+0x14>)
     628:	609a      	str	r2, [r3, #8]
     62a:	46c0      	nop			; (mov r8, r8)
     62c:	46bd      	mov	sp, r7
     62e:	bd80      	pop	{r7, pc}
     630:	400a0000 	.word	0x400a0000
     634:	00000555 	.word	0x00000555

00000638 <SystemInit>:
     638:	b580      	push	{r7, lr}
     63a:	af00      	add	r7, sp, #0
     63c:	f7ff fe34 	bl	2a8 <ClkConfig>
     640:	f7ff fd78 	bl	134 <PortConfig>
     644:	f7ff fe6a 	bl	31c <TimerConfig>
     648:	f7ff ff6e 	bl	528 <adc_init>
     64c:	f7ff ff96 	bl	57c <dac_init>
     650:	f7ff ffaa 	bl	5a8 <ssi_init>
     654:	f000 fa74 	bl	b40 <adc_dma_init>
     658:	46c0      	nop			; (mov r8, r8)
     65a:	46bd      	mov	sp, r7
     65c:	bd80      	pop	{r7, pc}
     65e:	46c0      	nop			; (mov r8, r8)

00000660 <timer_wait>:
     660:	b580      	push	{r7, lr}
     662:	af00      	add	r7, sp, #0
     664:	46c0      	nop			; (mov r8, r8)
     666:	4b05      	ldr	r3, [pc, #20]	; (67c <timer_wait+0x1c>)
     668:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     66a:	2202      	movs	r2, #2
     66c:	4013      	ands	r3, r2
     66e:	d0fa      	beq.n	666 <timer_wait+0x6>
     670:	4b02      	ldr	r3, [pc, #8]	; (67c <timer_wait+0x1c>)
     672:	2200      	movs	r2, #0
     674:	655a      	str	r2, [r3, #84]	; 0x54
     676:	46c0      	nop			; (mov r8, r8)
     678:	46bd      	mov	sp, r7
     67a:	bd80      	pop	{r7, pc}
     67c:	40098000 	.word	0x40098000

00000680 <main>:
     680:	b580      	push	{r7, lr}
     682:	b0a6      	sub	sp, #152	; 0x98
     684:	af00      	add	r7, sp, #0
     686:	2300      	movs	r3, #0
     688:	2294      	movs	r2, #148	; 0x94
     68a:	18ba      	adds	r2, r7, r2
     68c:	6013      	str	r3, [r2, #0]
     68e:	2300      	movs	r3, #0
     690:	67fb      	str	r3, [r7, #124]	; 0x7c
     692:	2300      	movs	r3, #0
     694:	67bb      	str	r3, [r7, #120]	; 0x78
     696:	2300      	movs	r3, #0
     698:	2290      	movs	r2, #144	; 0x90
     69a:	18ba      	adds	r2, r7, r2
     69c:	6013      	str	r3, [r2, #0]
     69e:	2300      	movs	r3, #0
     6a0:	228c      	movs	r2, #140	; 0x8c
     6a2:	18ba      	adds	r2, r7, r2
     6a4:	6013      	str	r3, [r2, #0]
     6a6:	2300      	movs	r3, #0
     6a8:	2288      	movs	r2, #136	; 0x88
     6aa:	18ba      	adds	r2, r7, r2
     6ac:	6013      	str	r3, [r2, #0]
     6ae:	2300      	movs	r3, #0
     6b0:	2284      	movs	r2, #132	; 0x84
     6b2:	18ba      	adds	r2, r7, r2
     6b4:	6013      	str	r3, [r2, #0]
     6b6:	23fa      	movs	r3, #250	; 0xfa
     6b8:	009b      	lsls	r3, r3, #2
     6ba:	677b      	str	r3, [r7, #116]	; 0x74
     6bc:	2300      	movs	r3, #0
     6be:	603b      	str	r3, [r7, #0]
     6c0:	f7ff ffba 	bl	638 <SystemInit>
     6c4:	2396      	movs	r3, #150	; 0x96
     6c6:	009a      	lsls	r2, r3, #2
     6c8:	2334      	movs	r3, #52	; 0x34
     6ca:	18fb      	adds	r3, r7, r3
     6cc:	21c8      	movs	r1, #200	; 0xc8
     6ce:	0018      	movs	r0, r3
     6d0:	f000 fabc 	bl	c4c <reg_init>
     6d4:	2396      	movs	r3, #150	; 0x96
     6d6:	009a      	lsls	r2, r3, #2
     6d8:	2324      	movs	r3, #36	; 0x24
     6da:	18fb      	adds	r3, r7, r3
     6dc:	21c8      	movs	r1, #200	; 0xc8
     6de:	0018      	movs	r0, r3
     6e0:	f000 fab4 	bl	c4c <reg_init>
     6e4:	23fa      	movs	r3, #250	; 0xfa
     6e6:	011a      	lsls	r2, r3, #4
     6e8:	2314      	movs	r3, #20
     6ea:	18fb      	adds	r3, r7, r3
     6ec:	2100      	movs	r1, #0
     6ee:	0018      	movs	r0, r3
     6f0:	f000 faac 	bl	c4c <reg_init>
     6f4:	4adf      	ldr	r2, [pc, #892]	; (a74 <main+0x3f4>)
     6f6:	1d3b      	adds	r3, r7, #4
     6f8:	2100      	movs	r1, #0
     6fa:	0018      	movs	r0, r3
     6fc:	f000 faa6 	bl	c4c <reg_init>
     700:	4bdd      	ldr	r3, [pc, #884]	; (a78 <main+0x3f8>)
     702:	2200      	movs	r2, #0
     704:	601a      	str	r2, [r3, #0]
     706:	2300      	movs	r3, #0
     708:	2290      	movs	r2, #144	; 0x90
     70a:	18ba      	adds	r2, r7, r2
     70c:	6013      	str	r3, [r2, #0]
     70e:	2300      	movs	r3, #0
     710:	228c      	movs	r2, #140	; 0x8c
     712:	18ba      	adds	r2, r7, r2
     714:	6013      	str	r3, [r2, #0]
     716:	4bd9      	ldr	r3, [pc, #868]	; (a7c <main+0x3fc>)
     718:	2200      	movs	r2, #0
     71a:	601a      	str	r2, [r3, #0]
     71c:	4bd8      	ldr	r3, [pc, #864]	; (a80 <main+0x400>)
     71e:	2200      	movs	r2, #0
     720:	601a      	str	r2, [r3, #0]
     722:	2300      	movs	r3, #0
     724:	2294      	movs	r2, #148	; 0x94
     726:	18ba      	adds	r2, r7, r2
     728:	6013      	str	r3, [r2, #0]
     72a:	e040      	b.n	7ae <main+0x12e>
     72c:	f000 fa5c 	bl	be8 <adc_dma_wait>
     730:	4bd4      	ldr	r3, [pc, #848]	; (a84 <main+0x404>)
     732:	685b      	ldr	r3, [r3, #4]
     734:	051b      	lsls	r3, r3, #20
     736:	0d1a      	lsrs	r2, r3, #20
     738:	2390      	movs	r3, #144	; 0x90
     73a:	18fb      	adds	r3, r7, r3
     73c:	681b      	ldr	r3, [r3, #0]
     73e:	18d3      	adds	r3, r2, r3
     740:	2290      	movs	r2, #144	; 0x90
     742:	18ba      	adds	r2, r7, r2
     744:	6013      	str	r3, [r2, #0]
     746:	4bcf      	ldr	r3, [pc, #828]	; (a84 <main+0x404>)
     748:	689b      	ldr	r3, [r3, #8]
     74a:	051b      	lsls	r3, r3, #20
     74c:	0d1a      	lsrs	r2, r3, #20
     74e:	238c      	movs	r3, #140	; 0x8c
     750:	18fb      	adds	r3, r7, r3
     752:	681b      	ldr	r3, [r3, #0]
     754:	18d3      	adds	r3, r2, r3
     756:	228c      	movs	r2, #140	; 0x8c
     758:	18ba      	adds	r2, r7, r2
     75a:	6013      	str	r3, [r2, #0]
     75c:	4bc9      	ldr	r3, [pc, #804]	; (a84 <main+0x404>)
     75e:	68db      	ldr	r3, [r3, #12]
     760:	051b      	lsls	r3, r3, #20
     762:	0d1a      	lsrs	r2, r3, #20
     764:	4bc5      	ldr	r3, [pc, #788]	; (a7c <main+0x3fc>)
     766:	681b      	ldr	r3, [r3, #0]
     768:	18d3      	adds	r3, r2, r3
     76a:	001a      	movs	r2, r3
     76c:	4bc3      	ldr	r3, [pc, #780]	; (a7c <main+0x3fc>)
     76e:	601a      	str	r2, [r3, #0]
     770:	4bc5      	ldr	r3, [pc, #788]	; (a88 <main+0x408>)
     772:	689b      	ldr	r3, [r3, #8]
     774:	051b      	lsls	r3, r3, #20
     776:	0d1b      	lsrs	r3, r3, #20
     778:	0018      	movs	r0, r3
     77a:	f7ff ff39 	bl	5f0 <g2b>
     77e:	0002      	movs	r2, r0
     780:	4bbf      	ldr	r3, [pc, #764]	; (a80 <main+0x400>)
     782:	681b      	ldr	r3, [r3, #0]
     784:	18d3      	adds	r3, r2, r3
     786:	001a      	movs	r2, r3
     788:	4bbd      	ldr	r3, [pc, #756]	; (a80 <main+0x400>)
     78a:	601a      	str	r2, [r3, #0]
     78c:	4bbd      	ldr	r3, [pc, #756]	; (a84 <main+0x404>)
     78e:	681b      	ldr	r3, [r3, #0]
     790:	051b      	lsls	r3, r3, #20
     792:	0d1a      	lsrs	r2, r3, #20
     794:	0013      	movs	r3, r2
     796:	009b      	lsls	r3, r3, #2
     798:	189b      	adds	r3, r3, r2
     79a:	0018      	movs	r0, r3
     79c:	f000 fe52 	bl	1444 <mfilter>
     7a0:	2394      	movs	r3, #148	; 0x94
     7a2:	18fb      	adds	r3, r7, r3
     7a4:	681b      	ldr	r3, [r3, #0]
     7a6:	3301      	adds	r3, #1
     7a8:	2294      	movs	r2, #148	; 0x94
     7aa:	18ba      	adds	r2, r7, r2
     7ac:	6013      	str	r3, [r2, #0]
     7ae:	2394      	movs	r3, #148	; 0x94
     7b0:	18fb      	adds	r3, r7, r3
     7b2:	681b      	ldr	r3, [r3, #0]
     7b4:	4ab5      	ldr	r2, [pc, #724]	; (a8c <main+0x40c>)
     7b6:	4293      	cmp	r3, r2
     7b8:	ddb8      	ble.n	72c <main+0xac>
     7ba:	2390      	movs	r3, #144	; 0x90
     7bc:	18fb      	adds	r3, r7, r3
     7be:	681b      	ldr	r3, [r3, #0]
     7c0:	129b      	asrs	r3, r3, #10
     7c2:	2290      	movs	r2, #144	; 0x90
     7c4:	18ba      	adds	r2, r7, r2
     7c6:	6013      	str	r3, [r2, #0]
     7c8:	238c      	movs	r3, #140	; 0x8c
     7ca:	18fb      	adds	r3, r7, r3
     7cc:	681b      	ldr	r3, [r3, #0]
     7ce:	129b      	asrs	r3, r3, #10
     7d0:	228c      	movs	r2, #140	; 0x8c
     7d2:	18ba      	adds	r2, r7, r2
     7d4:	6013      	str	r3, [r2, #0]
     7d6:	4ba9      	ldr	r3, [pc, #676]	; (a7c <main+0x3fc>)
     7d8:	681b      	ldr	r3, [r3, #0]
     7da:	129a      	asrs	r2, r3, #10
     7dc:	4ba7      	ldr	r3, [pc, #668]	; (a7c <main+0x3fc>)
     7de:	601a      	str	r2, [r3, #0]
     7e0:	4ba6      	ldr	r3, [pc, #664]	; (a7c <main+0x3fc>)
     7e2:	681a      	ldr	r2, [r3, #0]
     7e4:	4baa      	ldr	r3, [pc, #680]	; (a90 <main+0x410>)
     7e6:	601a      	str	r2, [r3, #0]
     7e8:	4ba5      	ldr	r3, [pc, #660]	; (a80 <main+0x400>)
     7ea:	681b      	ldr	r3, [r3, #0]
     7ec:	129a      	asrs	r2, r3, #10
     7ee:	4ba4      	ldr	r3, [pc, #656]	; (a80 <main+0x400>)
     7f0:	601a      	str	r2, [r3, #0]
     7f2:	f000 f9f9 	bl	be8 <adc_dma_wait>
     7f6:	4ba7      	ldr	r3, [pc, #668]	; (a94 <main+0x414>)
     7f8:	4aa6      	ldr	r2, [pc, #664]	; (a94 <main+0x414>)
     7fa:	6812      	ldr	r2, [r2, #0]
     7fc:	2140      	movs	r1, #64	; 0x40
     7fe:	430a      	orrs	r2, r1
     800:	601a      	str	r2, [r3, #0]
     802:	4ba0      	ldr	r3, [pc, #640]	; (a84 <main+0x404>)
     804:	681b      	ldr	r3, [r3, #0]
     806:	051b      	lsls	r3, r3, #20
     808:	0d1a      	lsrs	r2, r3, #20
     80a:	0013      	movs	r3, r2
     80c:	009b      	lsls	r3, r3, #2
     80e:	189b      	adds	r3, r3, r2
     810:	0018      	movs	r0, r3
     812:	f000 fe17 	bl	1444 <mfilter>
     816:	0003      	movs	r3, r0
     818:	2294      	movs	r2, #148	; 0x94
     81a:	18ba      	adds	r2, r7, r2
     81c:	6013      	str	r3, [r2, #0]
     81e:	2394      	movs	r3, #148	; 0x94
     820:	18fb      	adds	r3, r7, r3
     822:	681a      	ldr	r2, [r3, #0]
     824:	0013      	movs	r3, r2
     826:	009b      	lsls	r3, r3, #2
     828:	189b      	adds	r3, r3, r2
     82a:	005b      	lsls	r3, r3, #1
     82c:	189b      	adds	r3, r3, r2
     82e:	119b      	asrs	r3, r3, #6
     830:	4a99      	ldr	r2, [pc, #612]	; (a98 <main+0x418>)
     832:	1ad2      	subs	r2, r2, r3
     834:	4b96      	ldr	r3, [pc, #600]	; (a90 <main+0x410>)
     836:	601a      	str	r2, [r3, #0]
     838:	4b95      	ldr	r3, [pc, #596]	; (a90 <main+0x410>)
     83a:	681a      	ldr	r2, [r3, #0]
     83c:	23c8      	movs	r3, #200	; 0xc8
     83e:	011b      	lsls	r3, r3, #4
     840:	429a      	cmp	r2, r3
     842:	dd04      	ble.n	84e <main+0x1ce>
     844:	4b92      	ldr	r3, [pc, #584]	; (a90 <main+0x410>)
     846:	22c8      	movs	r2, #200	; 0xc8
     848:	0112      	lsls	r2, r2, #4
     84a:	601a      	str	r2, [r3, #0]
     84c:	46c0      	nop			; (mov r8, r8)
     84e:	4b90      	ldr	r3, [pc, #576]	; (a90 <main+0x410>)
     850:	681a      	ldr	r2, [r3, #0]
     852:	23f4      	movs	r3, #244	; 0xf4
     854:	33ff      	adds	r3, #255	; 0xff
     856:	429a      	cmp	r2, r3
     858:	dc04      	bgt.n	864 <main+0x1e4>
     85a:	4b8d      	ldr	r3, [pc, #564]	; (a90 <main+0x410>)
     85c:	22fa      	movs	r2, #250	; 0xfa
     85e:	0052      	lsls	r2, r2, #1
     860:	601a      	str	r2, [r3, #0]
     862:	46c0      	nop			; (mov r8, r8)
     864:	4b87      	ldr	r3, [pc, #540]	; (a84 <main+0x404>)
     866:	685b      	ldr	r3, [r3, #4]
     868:	051b      	lsls	r3, r3, #20
     86a:	0d1a      	lsrs	r2, r3, #20
     86c:	2390      	movs	r3, #144	; 0x90
     86e:	18fb      	adds	r3, r7, r3
     870:	681b      	ldr	r3, [r3, #0]
     872:	1ad3      	subs	r3, r2, r3
     874:	673b      	str	r3, [r7, #112]	; 0x70
     876:	4b83      	ldr	r3, [pc, #524]	; (a84 <main+0x404>)
     878:	689b      	ldr	r3, [r3, #8]
     87a:	051b      	lsls	r3, r3, #20
     87c:	0d1a      	lsrs	r2, r3, #20
     87e:	238c      	movs	r3, #140	; 0x8c
     880:	18fb      	adds	r3, r7, r3
     882:	681b      	ldr	r3, [r3, #0]
     884:	1ad3      	subs	r3, r2, r3
     886:	66fb      	str	r3, [r7, #108]	; 0x6c
     888:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     88a:	425a      	negs	r2, r3
     88c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     88e:	1ad3      	subs	r3, r2, r3
     890:	66bb      	str	r3, [r7, #104]	; 0x68
     892:	4b7c      	ldr	r3, [pc, #496]	; (a84 <main+0x404>)
     894:	68db      	ldr	r3, [r3, #12]
     896:	051b      	lsls	r3, r3, #20
     898:	0d1a      	lsrs	r2, r3, #20
     89a:	4b80      	ldr	r3, [pc, #512]	; (a9c <main+0x41c>)
     89c:	601a      	str	r2, [r3, #0]
     89e:	4b7a      	ldr	r3, [pc, #488]	; (a88 <main+0x408>)
     8a0:	689b      	ldr	r3, [r3, #8]
     8a2:	051b      	lsls	r3, r3, #20
     8a4:	0d1b      	lsrs	r3, r3, #20
     8a6:	0018      	movs	r0, r3
     8a8:	f7ff fea2 	bl	5f0 <g2b>
     8ac:	0003      	movs	r3, r0
     8ae:	667b      	str	r3, [r7, #100]	; 0x64
     8b0:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     8b2:	059b      	lsls	r3, r3, #22
     8b4:	0d9b      	lsrs	r3, r3, #22
     8b6:	67bb      	str	r3, [r7, #120]	; 0x78
     8b8:	2384      	movs	r3, #132	; 0x84
     8ba:	18fb      	adds	r3, r7, r3
     8bc:	681b      	ldr	r3, [r3, #0]
     8be:	3301      	adds	r3, #1
     8c0:	2284      	movs	r2, #132	; 0x84
     8c2:	18ba      	adds	r2, r7, r2
     8c4:	6013      	str	r3, [r2, #0]
     8c6:	2384      	movs	r3, #132	; 0x84
     8c8:	18fb      	adds	r3, r7, r3
     8ca:	681b      	ldr	r3, [r3, #0]
     8cc:	2207      	movs	r2, #7
     8ce:	4013      	ands	r3, r2
     8d0:	d161      	bne.n	996 <main+0x316>
     8d2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     8d4:	003a      	movs	r2, r7
     8d6:	0011      	movs	r1, r2
     8d8:	0018      	movs	r0, r3
     8da:	f000 fd8d 	bl	13f8 <get_speed>
     8de:	0003      	movs	r3, r0
     8e0:	663b      	str	r3, [r7, #96]	; 0x60
     8e2:	4b6b      	ldr	r3, [pc, #428]	; (a90 <main+0x410>)
     8e4:	681b      	ldr	r3, [r3, #0]
     8e6:	0018      	movs	r0, r3
     8e8:	f000 fdc0 	bl	146c <rfilter1>
     8ec:	0002      	movs	r2, r0
     8ee:	4b68      	ldr	r3, [pc, #416]	; (a90 <main+0x410>)
     8f0:	601a      	str	r2, [r3, #0]
     8f2:	4b67      	ldr	r3, [pc, #412]	; (a90 <main+0x410>)
     8f4:	681b      	ldr	r3, [r3, #0]
     8f6:	0018      	movs	r0, r3
     8f8:	f000 fde0 	bl	14bc <rfilter2>
     8fc:	0002      	movs	r2, r0
     8fe:	4b64      	ldr	r3, [pc, #400]	; (a90 <main+0x410>)
     900:	601a      	str	r2, [r3, #0]
     902:	4b63      	ldr	r3, [pc, #396]	; (a90 <main+0x410>)
     904:	681a      	ldr	r2, [r3, #0]
     906:	4b5d      	ldr	r3, [pc, #372]	; (a7c <main+0x3fc>)
     908:	681b      	ldr	r3, [r3, #0]
     90a:	1ad2      	subs	r2, r2, r3
     90c:	0013      	movs	r3, r2
     90e:	00db      	lsls	r3, r3, #3
     910:	1a9b      	subs	r3, r3, r2
     912:	00da      	lsls	r2, r3, #3
     914:	1ad2      	subs	r2, r2, r3
     916:	4b58      	ldr	r3, [pc, #352]	; (a78 <main+0x3f8>)
     918:	601a      	str	r2, [r3, #0]
     91a:	4b57      	ldr	r3, [pc, #348]	; (a78 <main+0x3f8>)
     91c:	681a      	ldr	r2, [r3, #0]
     91e:	683b      	ldr	r3, [r7, #0]
     920:	1ad1      	subs	r1, r2, r3
     922:	1d3b      	adds	r3, r7, #4
     924:	2200      	movs	r2, #0
     926:	0018      	movs	r0, r3
     928:	f000 f996 	bl	c58 <reg_update>
     92c:	1d3b      	adds	r3, r7, #4
     92e:	68db      	ldr	r3, [r3, #12]
     930:	131b      	asrs	r3, r3, #12
     932:	677b      	str	r3, [r7, #116]	; 0x74
     934:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     936:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     938:	1ad1      	subs	r1, r2, r3
     93a:	2314      	movs	r3, #20
     93c:	18fb      	adds	r3, r7, r3
     93e:	2200      	movs	r2, #0
     940:	0018      	movs	r0, r3
     942:	f000 f989 	bl	c58 <reg_update>
     946:	2314      	movs	r3, #20
     948:	18fb      	adds	r3, r7, r3
     94a:	68db      	ldr	r3, [r3, #12]
     94c:	131b      	asrs	r3, r3, #12
     94e:	2280      	movs	r2, #128	; 0x80
     950:	18ba      	adds	r2, r7, r2
     952:	6013      	str	r3, [r2, #0]
     954:	2380      	movs	r3, #128	; 0x80
     956:	18fb      	adds	r3, r7, r3
     958:	681a      	ldr	r2, [r3, #0]
     95a:	23fa      	movs	r3, #250	; 0xfa
     95c:	00db      	lsls	r3, r3, #3
     95e:	429a      	cmp	r2, r3
     960:	dd04      	ble.n	96c <main+0x2ec>
     962:	23fa      	movs	r3, #250	; 0xfa
     964:	00db      	lsls	r3, r3, #3
     966:	2280      	movs	r2, #128	; 0x80
     968:	18ba      	adds	r2, r7, r2
     96a:	6013      	str	r3, [r2, #0]
     96c:	2380      	movs	r3, #128	; 0x80
     96e:	18fb      	adds	r3, r7, r3
     970:	681b      	ldr	r3, [r3, #0]
     972:	4a4b      	ldr	r2, [pc, #300]	; (aa0 <main+0x420>)
     974:	4293      	cmp	r3, r2
     976:	da03      	bge.n	980 <main+0x300>
     978:	4b49      	ldr	r3, [pc, #292]	; (aa0 <main+0x420>)
     97a:	2280      	movs	r2, #128	; 0x80
     97c:	18ba      	adds	r2, r7, r2
     97e:	6013      	str	r3, [r2, #0]
     980:	4a48      	ldr	r2, [pc, #288]	; (aa4 <main+0x424>)
     982:	4b3f      	ldr	r3, [pc, #252]	; (a80 <main+0x400>)
     984:	6819      	ldr	r1, [r3, #0]
     986:	683b      	ldr	r3, [r7, #0]
     988:	1acb      	subs	r3, r1, r3
     98a:	111b      	asrs	r3, r3, #4
     98c:	2180      	movs	r1, #128	; 0x80
     98e:	0109      	lsls	r1, r1, #4
     990:	468c      	mov	ip, r1
     992:	4463      	add	r3, ip
     994:	6053      	str	r3, [r2, #4]
     996:	6fbb      	ldr	r3, [r7, #120]	; 0x78
     998:	33fa      	adds	r3, #250	; 0xfa
     99a:	059b      	lsls	r3, r3, #22
     99c:	0d9b      	lsrs	r3, r3, #22
     99e:	67bb      	str	r3, [r7, #120]	; 0x78
     9a0:	2344      	movs	r3, #68	; 0x44
     9a2:	18fb      	adds	r3, r7, r3
     9a4:	6f3a      	ldr	r2, [r7, #112]	; 0x70
     9a6:	601a      	str	r2, [r3, #0]
     9a8:	2344      	movs	r3, #68	; 0x44
     9aa:	18fb      	adds	r3, r7, r3
     9ac:	6eba      	ldr	r2, [r7, #104]	; 0x68
     9ae:	605a      	str	r2, [r3, #4]
     9b0:	2344      	movs	r3, #68	; 0x44
     9b2:	18fb      	adds	r3, r7, r3
     9b4:	6efa      	ldr	r2, [r7, #108]	; 0x6c
     9b6:	609a      	str	r2, [r3, #8]
     9b8:	6fba      	ldr	r2, [r7, #120]	; 0x78
     9ba:	2350      	movs	r3, #80	; 0x50
     9bc:	18f9      	adds	r1, r7, r3
     9be:	2344      	movs	r3, #68	; 0x44
     9c0:	18fb      	adds	r3, r7, r3
     9c2:	0018      	movs	r0, r3
     9c4:	f000 f96e 	bl	ca4 <abc_to_dq>
     9c8:	2350      	movs	r3, #80	; 0x50
     9ca:	18fb      	adds	r3, r7, r3
     9cc:	681b      	ldr	r3, [r3, #0]
     9ce:	425b      	negs	r3, r3
     9d0:	65fb      	str	r3, [r7, #92]	; 0x5c
     9d2:	2350      	movs	r3, #80	; 0x50
     9d4:	18fb      	adds	r3, r7, r3
     9d6:	685b      	ldr	r3, [r3, #4]
     9d8:	2280      	movs	r2, #128	; 0x80
     9da:	18ba      	adds	r2, r7, r2
     9dc:	6812      	ldr	r2, [r2, #0]
     9de:	1ad3      	subs	r3, r2, r3
     9e0:	65bb      	str	r3, [r7, #88]	; 0x58
     9e2:	2388      	movs	r3, #136	; 0x88
     9e4:	18fb      	adds	r3, r7, r3
     9e6:	681a      	ldr	r2, [r3, #0]
     9e8:	6df9      	ldr	r1, [r7, #92]	; 0x5c
     9ea:	2334      	movs	r3, #52	; 0x34
     9ec:	18fb      	adds	r3, r7, r3
     9ee:	0018      	movs	r0, r3
     9f0:	f000 f932 	bl	c58 <reg_update>
     9f4:	2388      	movs	r3, #136	; 0x88
     9f6:	18fb      	adds	r3, r7, r3
     9f8:	681a      	ldr	r2, [r3, #0]
     9fa:	6db9      	ldr	r1, [r7, #88]	; 0x58
     9fc:	2324      	movs	r3, #36	; 0x24
     9fe:	18fb      	adds	r3, r7, r3
     a00:	0018      	movs	r0, r3
     a02:	f000 f929 	bl	c58 <reg_update>
     a06:	2334      	movs	r3, #52	; 0x34
     a08:	18fb      	adds	r3, r7, r3
     a0a:	68db      	ldr	r3, [r3, #12]
     a0c:	109a      	asrs	r2, r3, #2
     a0e:	2350      	movs	r3, #80	; 0x50
     a10:	18fb      	adds	r3, r7, r3
     a12:	601a      	str	r2, [r3, #0]
     a14:	2324      	movs	r3, #36	; 0x24
     a16:	18fb      	adds	r3, r7, r3
     a18:	68db      	ldr	r3, [r3, #12]
     a1a:	109a      	asrs	r2, r3, #2
     a1c:	2350      	movs	r3, #80	; 0x50
     a1e:	18fb      	adds	r3, r7, r3
     a20:	605a      	str	r2, [r3, #4]
     a22:	6fba      	ldr	r2, [r7, #120]	; 0x78
     a24:	2350      	movs	r3, #80	; 0x50
     a26:	18f9      	adds	r1, r7, r3
     a28:	2344      	movs	r3, #68	; 0x44
     a2a:	18fb      	adds	r3, r7, r3
     a2c:	0018      	movs	r0, r3
     a2e:	f000 fb65 	bl	10fc <svpwm>
     a32:	0003      	movs	r3, r0
     a34:	2288      	movs	r2, #136	; 0x88
     a36:	18ba      	adds	r2, r7, r2
     a38:	6013      	str	r3, [r2, #0]
     a3a:	4a1b      	ldr	r2, [pc, #108]	; (aa8 <main+0x428>)
     a3c:	2344      	movs	r3, #68	; 0x44
     a3e:	18fb      	adds	r3, r7, r3
     a40:	681b      	ldr	r3, [r3, #0]
     a42:	2180      	movs	r1, #128	; 0x80
     a44:	0089      	lsls	r1, r1, #2
     a46:	468c      	mov	ip, r1
     a48:	4463      	add	r3, ip
     a4a:	6113      	str	r3, [r2, #16]
     a4c:	4a16      	ldr	r2, [pc, #88]	; (aa8 <main+0x428>)
     a4e:	2344      	movs	r3, #68	; 0x44
     a50:	18fb      	adds	r3, r7, r3
     a52:	685b      	ldr	r3, [r3, #4]
     a54:	2180      	movs	r1, #128	; 0x80
     a56:	0089      	lsls	r1, r1, #2
     a58:	468c      	mov	ip, r1
     a5a:	4463      	add	r3, ip
     a5c:	6153      	str	r3, [r2, #20]
     a5e:	4a12      	ldr	r2, [pc, #72]	; (aa8 <main+0x428>)
     a60:	2344      	movs	r3, #68	; 0x44
     a62:	18fb      	adds	r3, r7, r3
     a64:	689b      	ldr	r3, [r3, #8]
     a66:	2180      	movs	r1, #128	; 0x80
     a68:	0089      	lsls	r1, r1, #2
     a6a:	468c      	mov	ip, r1
     a6c:	4463      	add	r3, ip
     a6e:	6193      	str	r3, [r2, #24]
     a70:	e6bf      	b.n	7f2 <main+0x172>
     a72:	46c0      	nop			; (mov r8, r8)
     a74:	00001770 	.word	0x00001770
     a78:	20000004 	.word	0x20000004
     a7c:	2000000c 	.word	0x2000000c
     a80:	20000010 	.word	0x20000010
     a84:	20100200 	.word	0x20100200
     a88:	400a0000 	.word	0x400a0000
     a8c:	000003ff 	.word	0x000003ff
     a90:	20000008 	.word	0x20000008
     a94:	400b8000 	.word	0x400b8000
     a98:	00000e61 	.word	0x00000e61
     a9c:	20000014 	.word	0x20000014
     aa0:	fffff830 	.word	0xfffff830
     aa4:	40090000 	.word	0x40090000
     aa8:	40098000 	.word	0x40098000

00000aac <TIMER4_Handler>:
     aac:	b580      	push	{r7, lr}
     aae:	af00      	add	r7, sp, #0
     ab0:	4b07      	ldr	r3, [pc, #28]	; (ad0 <TIMER4_Handler+0x24>)
     ab2:	2200      	movs	r2, #0
     ab4:	655a      	str	r2, [r3, #84]	; 0x54
     ab6:	4b07      	ldr	r3, [pc, #28]	; (ad4 <TIMER4_Handler+0x28>)
     ab8:	681b      	ldr	r3, [r3, #0]
     aba:	1c5a      	adds	r2, r3, #1
     abc:	4b05      	ldr	r3, [pc, #20]	; (ad4 <TIMER4_Handler+0x28>)
     abe:	601a      	str	r2, [r3, #0]
     ac0:	f000 f87e 	bl	bc0 <adc_dma_start>
     ac4:	f7ff fdac 	bl	620 <encoder_start>
     ac8:	46c0      	nop			; (mov r8, r8)
     aca:	46bd      	mov	sp, r7
     acc:	bd80      	pop	{r7, pc}
     ace:	46c0      	nop			; (mov r8, r8)
     ad0:	40098000 	.word	0x40098000
     ad4:	20000018 	.word	0x20000018

00000ad8 <handler_reset>:
     ad8:	b580      	push	{r7, lr}
     ada:	b082      	sub	sp, #8
     adc:	af00      	add	r7, sp, #0
     ade:	4b11      	ldr	r3, [pc, #68]	; (b24 <handler_reset+0x4c>)
     ae0:	607b      	str	r3, [r7, #4]
     ae2:	4b11      	ldr	r3, [pc, #68]	; (b28 <handler_reset+0x50>)
     ae4:	603b      	str	r3, [r7, #0]
     ae6:	e007      	b.n	af8 <handler_reset+0x20>
     ae8:	683b      	ldr	r3, [r7, #0]
     aea:	1d1a      	adds	r2, r3, #4
     aec:	603a      	str	r2, [r7, #0]
     aee:	687a      	ldr	r2, [r7, #4]
     af0:	1d11      	adds	r1, r2, #4
     af2:	6079      	str	r1, [r7, #4]
     af4:	6812      	ldr	r2, [r2, #0]
     af6:	601a      	str	r2, [r3, #0]
     af8:	683a      	ldr	r2, [r7, #0]
     afa:	4b0c      	ldr	r3, [pc, #48]	; (b2c <handler_reset+0x54>)
     afc:	429a      	cmp	r2, r3
     afe:	d3f3      	bcc.n	ae8 <handler_reset+0x10>
     b00:	4b0b      	ldr	r3, [pc, #44]	; (b30 <handler_reset+0x58>)
     b02:	603b      	str	r3, [r7, #0]
     b04:	e004      	b.n	b10 <handler_reset+0x38>
     b06:	683b      	ldr	r3, [r7, #0]
     b08:	1d1a      	adds	r2, r3, #4
     b0a:	603a      	str	r2, [r7, #0]
     b0c:	2200      	movs	r2, #0
     b0e:	601a      	str	r2, [r3, #0]
     b10:	683a      	ldr	r2, [r7, #0]
     b12:	4b08      	ldr	r3, [pc, #32]	; (b34 <handler_reset+0x5c>)
     b14:	429a      	cmp	r2, r3
     b16:	d3f6      	bcc.n	b06 <handler_reset+0x2e>
     b18:	f7ff fdb2 	bl	680 <main>
     b1c:	46c0      	nop			; (mov r8, r8)
     b1e:	46bd      	mov	sp, r7
     b20:	b002      	add	sp, #8
     b22:	bd80      	pop	{r7, pc}
     b24:	00002564 	.word	0x00002564
     b28:	20000000 	.word	0x20000000
     b2c:	20000004 	.word	0x20000004
     b30:	20000004 	.word	0x20000004
     b34:	200000cc 	.word	0x200000cc

00000b38 <default_handler>:
     b38:	b580      	push	{r7, lr}
     b3a:	af00      	add	r7, sp, #0
     b3c:	e7fe      	b.n	b3c <default_handler+0x4>
     b3e:	46c0      	nop			; (mov r8, r8)

00000b40 <adc_dma_init>:
     b40:	b580      	push	{r7, lr}
     b42:	af00      	add	r7, sp, #0
     b44:	4b18      	ldr	r3, [pc, #96]	; (ba8 <adc_dma_init+0x68>)
     b46:	4a18      	ldr	r2, [pc, #96]	; (ba8 <adc_dma_init+0x68>)
     b48:	69d2      	ldr	r2, [r2, #28]
     b4a:	2120      	movs	r1, #32
     b4c:	430a      	orrs	r2, r1
     b4e:	61da      	str	r2, [r3, #28]
     b50:	4b16      	ldr	r3, [pc, #88]	; (bac <adc_dma_init+0x6c>)
     b52:	4a17      	ldr	r2, [pc, #92]	; (bb0 <adc_dma_init+0x70>)
     b54:	609a      	str	r2, [r3, #8]
     b56:	4b15      	ldr	r3, [pc, #84]	; (bac <adc_dma_init+0x6c>)
     b58:	2201      	movs	r2, #1
     b5a:	4252      	negs	r2, r2
     b5c:	62da      	str	r2, [r3, #44]	; 0x2c
     b5e:	4b13      	ldr	r3, [pc, #76]	; (bac <adc_dma_init+0x6c>)
     b60:	2201      	movs	r2, #1
     b62:	4252      	negs	r2, r2
     b64:	621a      	str	r2, [r3, #32]
     b66:	4b11      	ldr	r3, [pc, #68]	; (bac <adc_dma_init+0x6c>)
     b68:	2201      	movs	r2, #1
     b6a:	4252      	negs	r2, r2
     b6c:	635a      	str	r2, [r3, #52]	; 0x34
     b6e:	4b0f      	ldr	r3, [pc, #60]	; (bac <adc_dma_init+0x6c>)
     b70:	2280      	movs	r2, #128	; 0x80
     b72:	05d2      	lsls	r2, r2, #23
     b74:	61da      	str	r2, [r3, #28]
     b76:	4b0d      	ldr	r3, [pc, #52]	; (bac <adc_dma_init+0x6c>)
     b78:	2280      	movs	r2, #128	; 0x80
     b7a:	05d2      	lsls	r2, r2, #23
     b7c:	625a      	str	r2, [r3, #36]	; 0x24
     b7e:	4b0b      	ldr	r3, [pc, #44]	; (bac <adc_dma_init+0x6c>)
     b80:	2201      	movs	r2, #1
     b82:	605a      	str	r2, [r3, #4]
     b84:	4a0a      	ldr	r2, [pc, #40]	; (bb0 <adc_dma_init+0x70>)
     b86:	23f0      	movs	r3, #240	; 0xf0
     b88:	005b      	lsls	r3, r3, #1
     b8a:	490a      	ldr	r1, [pc, #40]	; (bb4 <adc_dma_init+0x74>)
     b8c:	50d1      	str	r1, [r2, r3]
     b8e:	490a      	ldr	r1, [pc, #40]	; (bb8 <adc_dma_init+0x78>)
     b90:	4a07      	ldr	r2, [pc, #28]	; (bb0 <adc_dma_init+0x70>)
     b92:	23f2      	movs	r3, #242	; 0xf2
     b94:	005b      	lsls	r3, r3, #1
     b96:	50d1      	str	r1, [r2, r3]
     b98:	4a05      	ldr	r2, [pc, #20]	; (bb0 <adc_dma_init+0x70>)
     b9a:	23f4      	movs	r3, #244	; 0xf4
     b9c:	005b      	lsls	r3, r3, #1
     b9e:	4907      	ldr	r1, [pc, #28]	; (bbc <adc_dma_init+0x7c>)
     ba0:	50d1      	str	r1, [r2, r3]
     ba2:	46c0      	nop			; (mov r8, r8)
     ba4:	46bd      	mov	sp, r7
     ba6:	bd80      	pop	{r7, pc}
     ba8:	40020000 	.word	0x40020000
     bac:	40028000 	.word	0x40028000
     bb0:	20100000 	.word	0x20100000
     bb4:	40088018 	.word	0x40088018
     bb8:	2010020c 	.word	0x2010020c
     bbc:	ae000031 	.word	0xae000031

00000bc0 <adc_dma_start>:
     bc0:	b580      	push	{r7, lr}
     bc2:	af00      	add	r7, sp, #0
     bc4:	4b06      	ldr	r3, [pc, #24]	; (be0 <adc_dma_start+0x20>)
     bc6:	4a06      	ldr	r2, [pc, #24]	; (be0 <adc_dma_start+0x20>)
     bc8:	6812      	ldr	r2, [r2, #0]
     bca:	2108      	movs	r1, #8
     bcc:	430a      	orrs	r2, r1
     bce:	601a      	str	r2, [r3, #0]
     bd0:	4b04      	ldr	r3, [pc, #16]	; (be4 <adc_dma_start+0x24>)
     bd2:	2280      	movs	r2, #128	; 0x80
     bd4:	05d2      	lsls	r2, r2, #23
     bd6:	629a      	str	r2, [r3, #40]	; 0x28
     bd8:	46c0      	nop			; (mov r8, r8)
     bda:	46bd      	mov	sp, r7
     bdc:	bd80      	pop	{r7, pc}
     bde:	46c0      	nop			; (mov r8, r8)
     be0:	40088000 	.word	0x40088000
     be4:	40028000 	.word	0x40028000

00000be8 <adc_dma_wait>:
     be8:	b580      	push	{r7, lr}
     bea:	af00      	add	r7, sp, #0
     bec:	46c0      	nop			; (mov r8, r8)
     bee:	4a0a      	ldr	r2, [pc, #40]	; (c18 <adc_dma_wait+0x30>)
     bf0:	23f4      	movs	r3, #244	; 0xf4
     bf2:	005b      	lsls	r3, r3, #1
     bf4:	58d3      	ldr	r3, [r2, r3]
     bf6:	2207      	movs	r2, #7
     bf8:	4013      	ands	r3, r2
     bfa:	d1f8      	bne.n	bee <adc_dma_wait+0x6>
     bfc:	4b07      	ldr	r3, [pc, #28]	; (c1c <adc_dma_wait+0x34>)
     bfe:	4a07      	ldr	r2, [pc, #28]	; (c1c <adc_dma_wait+0x34>)
     c00:	6812      	ldr	r2, [r2, #0]
     c02:	2108      	movs	r1, #8
     c04:	438a      	bics	r2, r1
     c06:	601a      	str	r2, [r3, #0]
     c08:	4a03      	ldr	r2, [pc, #12]	; (c18 <adc_dma_wait+0x30>)
     c0a:	23f4      	movs	r3, #244	; 0xf4
     c0c:	005b      	lsls	r3, r3, #1
     c0e:	4904      	ldr	r1, [pc, #16]	; (c20 <adc_dma_wait+0x38>)
     c10:	50d1      	str	r1, [r2, r3]
     c12:	46c0      	nop			; (mov r8, r8)
     c14:	46bd      	mov	sp, r7
     c16:	bd80      	pop	{r7, pc}
     c18:	20100000 	.word	0x20100000
     c1c:	40088000 	.word	0x40088000
     c20:	ae000031 	.word	0xae000031

00000c24 <mycos>:
     c24:	4b02      	ldr	r3, [pc, #8]	; (c30 <mycos+0xc>)
     c26:	0580      	lsls	r0, r0, #22
     c28:	0d00      	lsrs	r0, r0, #20
     c2a:	58c0      	ldr	r0, [r0, r3]
     c2c:	4770      	bx	lr
     c2e:	46c0      	nop			; (mov r8, r8)
     c30:	0000150c 	.word	0x0000150c

00000c34 <mysin>:
     c34:	23c0      	movs	r3, #192	; 0xc0
     c36:	009b      	lsls	r3, r3, #2
     c38:	469c      	mov	ip, r3
     c3a:	4460      	add	r0, ip
     c3c:	4b02      	ldr	r3, [pc, #8]	; (c48 <mysin+0x14>)
     c3e:	0580      	lsls	r0, r0, #22
     c40:	0d00      	lsrs	r0, r0, #20
     c42:	58c0      	ldr	r0, [r0, r3]
     c44:	4770      	bx	lr
     c46:	46c0      	nop			; (mov r8, r8)
     c48:	0000150c 	.word	0x0000150c

00000c4c <reg_init>:
     c4c:	2300      	movs	r3, #0
     c4e:	6001      	str	r1, [r0, #0]
     c50:	6042      	str	r2, [r0, #4]
     c52:	6083      	str	r3, [r0, #8]
     c54:	60c3      	str	r3, [r0, #12]
     c56:	4770      	bx	lr

00000c58 <reg_update>:
     c58:	b510      	push	{r4, lr}
     c5a:	6804      	ldr	r4, [r0, #0]
     c5c:	6883      	ldr	r3, [r0, #8]
     c5e:	434c      	muls	r4, r1
     c60:	2a00      	cmp	r2, #0
     c62:	d004      	beq.n	c6e <reg_update+0x16>
     c64:	2b00      	cmp	r3, #0
     c66:	dd09      	ble.n	c7c <reg_update+0x24>
     c68:	2c00      	cmp	r4, #0
     c6a:	dd00      	ble.n	c6e <reg_update+0x16>
     c6c:	2400      	movs	r4, #0
     c6e:	6842      	ldr	r2, [r0, #4]
     c70:	18e3      	adds	r3, r4, r3
     c72:	4351      	muls	r1, r2
     c74:	18c9      	adds	r1, r1, r3
     c76:	60c1      	str	r1, [r0, #12]
     c78:	6083      	str	r3, [r0, #8]
     c7a:	bd10      	pop	{r4, pc}
     c7c:	2b00      	cmp	r3, #0
     c7e:	d0f6      	beq.n	c6e <reg_update+0x16>
     c80:	43e2      	mvns	r2, r4
     c82:	17d2      	asrs	r2, r2, #31
     c84:	4014      	ands	r4, r2
     c86:	e7f2      	b.n	c6e <reg_update+0x16>

00000c88 <dot3>:
     c88:	6803      	ldr	r3, [r0, #0]
     c8a:	680a      	ldr	r2, [r1, #0]
     c8c:	b510      	push	{r4, lr}
     c8e:	435a      	muls	r2, r3
     c90:	6844      	ldr	r4, [r0, #4]
     c92:	684b      	ldr	r3, [r1, #4]
     c94:	6880      	ldr	r0, [r0, #8]
     c96:	4363      	muls	r3, r4
     c98:	18d2      	adds	r2, r2, r3
     c9a:	688b      	ldr	r3, [r1, #8]
     c9c:	4343      	muls	r3, r0
     c9e:	18d0      	adds	r0, r2, r3
     ca0:	bd10      	pop	{r4, pc}
     ca2:	46c0      	nop			; (mov r8, r8)

00000ca4 <abc_to_dq>:
     ca4:	23c0      	movs	r3, #192	; 0xc0
     ca6:	b5f0      	push	{r4, r5, r6, r7, lr}
     ca8:	4647      	mov	r7, r8
     caa:	009b      	lsls	r3, r3, #2
     cac:	18d3      	adds	r3, r2, r3
     cae:	4d1b      	ldr	r5, [pc, #108]	; (d1c <abc_to_dq+0x78>)
     cb0:	059b      	lsls	r3, r3, #22
     cb2:	0d1b      	lsrs	r3, r3, #20
     cb4:	595b      	ldr	r3, [r3, r5]
     cb6:	b480      	push	{r7}
     cb8:	4698      	mov	r8, r3
     cba:	4b19      	ldr	r3, [pc, #100]	; (d20 <abc_to_dq+0x7c>)
     cbc:	18d4      	adds	r4, r2, r3
     cbe:	05a4      	lsls	r4, r4, #22
     cc0:	4b18      	ldr	r3, [pc, #96]	; (d24 <abc_to_dq+0x80>)
     cc2:	0d24      	lsrs	r4, r4, #20
     cc4:	5967      	ldr	r7, [r4, r5]
     cc6:	18d4      	adds	r4, r2, r3
     cc8:	05a4      	lsls	r4, r4, #22
     cca:	4b17      	ldr	r3, [pc, #92]	; (d28 <abc_to_dq+0x84>)
     ccc:	0d24      	lsrs	r4, r4, #20
     cce:	5966      	ldr	r6, [r4, r5]
     cd0:	18d4      	adds	r4, r2, r3
     cd2:	05a4      	lsls	r4, r4, #22
     cd4:	0d24      	lsrs	r4, r4, #20
     cd6:	5964      	ldr	r4, [r4, r5]
     cd8:	6843      	ldr	r3, [r0, #4]
     cda:	4363      	muls	r3, r4
     cdc:	0094      	lsls	r4, r2, #2
     cde:	469c      	mov	ip, r3
     ce0:	3256      	adds	r2, #86	; 0x56
     ce2:	32ff      	adds	r2, #255	; 0xff
     ce4:	6803      	ldr	r3, [r0, #0]
     ce6:	5964      	ldr	r4, [r4, r5]
     ce8:	0592      	lsls	r2, r2, #22
     cea:	0d12      	lsrs	r2, r2, #20
     cec:	5955      	ldr	r5, [r2, r5]
     cee:	435c      	muls	r4, r3
     cf0:	6883      	ldr	r3, [r0, #8]
     cf2:	4464      	add	r4, ip
     cf4:	435d      	muls	r5, r3
     cf6:	4643      	mov	r3, r8
     cf8:	1964      	adds	r4, r4, r5
     cfa:	12a4      	asrs	r4, r4, #10
     cfc:	600c      	str	r4, [r1, #0]
     cfe:	6802      	ldr	r2, [r0, #0]
     d00:	435a      	muls	r2, r3
     d02:	6843      	ldr	r3, [r0, #4]
     d04:	437b      	muls	r3, r7
     d06:	18d3      	adds	r3, r2, r3
     d08:	6882      	ldr	r2, [r0, #8]
     d0a:	4372      	muls	r2, r6
     d0c:	189b      	adds	r3, r3, r2
     d0e:	425b      	negs	r3, r3
     d10:	129b      	asrs	r3, r3, #10
     d12:	604b      	str	r3, [r1, #4]
     d14:	bc04      	pop	{r2}
     d16:	4690      	mov	r8, r2
     d18:	bdf0      	pop	{r4, r5, r6, r7, pc}
     d1a:	46c0      	nop			; (mov r8, r8)
     d1c:	0000150c 	.word	0x0000150c
     d20:	000005aa 	.word	0x000005aa
     d24:	00000455 	.word	0x00000455
     d28:	000002aa 	.word	0x000002aa

00000d2c <dq_to_abc>:
     d2c:	b570      	push	{r4, r5, r6, lr}
     d2e:	4d1a      	ldr	r5, [pc, #104]	; (d98 <dq_to_abc+0x6c>)
     d30:	0093      	lsls	r3, r2, #2
     d32:	680c      	ldr	r4, [r1, #0]
     d34:	595b      	ldr	r3, [r3, r5]
     d36:	684e      	ldr	r6, [r1, #4]
     d38:	435c      	muls	r4, r3
     d3a:	23c0      	movs	r3, #192	; 0xc0
     d3c:	009b      	lsls	r3, r3, #2
     d3e:	18d3      	adds	r3, r2, r3
     d40:	059b      	lsls	r3, r3, #22
     d42:	0d1b      	lsrs	r3, r3, #20
     d44:	595b      	ldr	r3, [r3, r5]
     d46:	4373      	muls	r3, r6
     d48:	1ae3      	subs	r3, r4, r3
     d4a:	151b      	asrs	r3, r3, #20
     d4c:	6003      	str	r3, [r0, #0]
     d4e:	4b13      	ldr	r3, [pc, #76]	; (d9c <dq_to_abc+0x70>)
     d50:	680c      	ldr	r4, [r1, #0]
     d52:	18d3      	adds	r3, r2, r3
     d54:	059b      	lsls	r3, r3, #22
     d56:	0d1b      	lsrs	r3, r3, #20
     d58:	595b      	ldr	r3, [r3, r5]
     d5a:	684e      	ldr	r6, [r1, #4]
     d5c:	435c      	muls	r4, r3
     d5e:	4b10      	ldr	r3, [pc, #64]	; (da0 <dq_to_abc+0x74>)
     d60:	18d3      	adds	r3, r2, r3
     d62:	059b      	lsls	r3, r3, #22
     d64:	0d1b      	lsrs	r3, r3, #20
     d66:	595b      	ldr	r3, [r3, r5]
     d68:	4373      	muls	r3, r6
     d6a:	1ae3      	subs	r3, r4, r3
     d6c:	151b      	asrs	r3, r3, #20
     d6e:	6043      	str	r3, [r0, #4]
     d70:	0013      	movs	r3, r2
     d72:	3356      	adds	r3, #86	; 0x56
     d74:	33ff      	adds	r3, #255	; 0xff
     d76:	059b      	lsls	r3, r3, #22
     d78:	0d1b      	lsrs	r3, r3, #20
     d7a:	595b      	ldr	r3, [r3, r5]
     d7c:	680c      	ldr	r4, [r1, #0]
     d7e:	435c      	muls	r4, r3
     d80:	4b08      	ldr	r3, [pc, #32]	; (da4 <dq_to_abc+0x78>)
     d82:	469c      	mov	ip, r3
     d84:	4462      	add	r2, ip
     d86:	0592      	lsls	r2, r2, #22
     d88:	0d12      	lsrs	r2, r2, #20
     d8a:	5952      	ldr	r2, [r2, r5]
     d8c:	684b      	ldr	r3, [r1, #4]
     d8e:	4353      	muls	r3, r2
     d90:	1ae3      	subs	r3, r4, r3
     d92:	151b      	asrs	r3, r3, #20
     d94:	6083      	str	r3, [r0, #8]
     d96:	bd70      	pop	{r4, r5, r6, pc}
     d98:	0000150c 	.word	0x0000150c
     d9c:	000002aa 	.word	0x000002aa
     da0:	000005aa 	.word	0x000005aa
     da4:	00000455 	.word	0x00000455

00000da8 <cord_atan>:
     da8:	b5f0      	push	{r4, r5, r6, r7, lr}
     daa:	464f      	mov	r7, r9
     dac:	4646      	mov	r6, r8
     dae:	b4c0      	push	{r6, r7}
     db0:	4b63      	ldr	r3, [pc, #396]	; (f40 <cord_atan+0x198>)
     db2:	b091      	sub	sp, #68	; 0x44
     db4:	001c      	movs	r4, r3
     db6:	4694      	mov	ip, r2
     db8:	466a      	mov	r2, sp
     dba:	4699      	mov	r9, r3
     dbc:	cca8      	ldmia	r4!, {r3, r5, r7}
     dbe:	c2a8      	stmia	r2!, {r3, r5, r7}
     dc0:	cca8      	ldmia	r4!, {r3, r5, r7}
     dc2:	c2a8      	stmia	r2!, {r3, r5, r7}
     dc4:	cc28      	ldmia	r4!, {r3, r5}
     dc6:	c228      	stmia	r2!, {r3, r5}
     dc8:	464b      	mov	r3, r9
     dca:	aa08      	add	r2, sp, #32
     dcc:	3320      	adds	r3, #32
     dce:	4690      	mov	r8, r2
     dd0:	cbb0      	ldmia	r3!, {r4, r5, r7}
     dd2:	c2b0      	stmia	r2!, {r4, r5, r7}
     dd4:	cbb0      	ldmia	r3!, {r4, r5, r7}
     dd6:	c2b0      	stmia	r2!, {r4, r5, r7}
     dd8:	cb30      	ldmia	r3!, {r4, r5}
     dda:	c230      	stmia	r2!, {r4, r5}
     ddc:	6802      	ldr	r2, [r0, #0]
     dde:	6845      	ldr	r5, [r0, #4]
     de0:	17d4      	asrs	r4, r2, #31
     de2:	1913      	adds	r3, r2, r4
     de4:	466e      	mov	r6, sp
     de6:	4063      	eors	r3, r4
     de8:	2d00      	cmp	r5, #0
     dea:	dd69      	ble.n	ec0 <cord_atan+0x118>
     dec:	195f      	adds	r7, r3, r5
     dee:	1aeb      	subs	r3, r5, r3
     df0:	9d00      	ldr	r5, [sp, #0]
     df2:	2b00      	cmp	r3, #0
     df4:	d100      	bne.n	df8 <cord_atan+0x50>
     df6:	e091      	b.n	f1c <cord_atan+0x174>
     df8:	105c      	asrs	r4, r3, #1
     dfa:	2b00      	cmp	r3, #0
     dfc:	dd65      	ble.n	eca <cord_atan+0x122>
     dfe:	1078      	asrs	r0, r7, #1
     e00:	1a1b      	subs	r3, r3, r0
     e02:	6870      	ldr	r0, [r6, #4]
     e04:	19e4      	adds	r4, r4, r7
     e06:	4681      	mov	r9, r0
     e08:	444d      	add	r5, r9
     e0a:	2b00      	cmp	r3, #0
     e0c:	d100      	bne.n	e10 <cord_atan+0x68>
     e0e:	e087      	b.n	f20 <cord_atan+0x178>
     e10:	1098      	asrs	r0, r3, #2
     e12:	2b00      	cmp	r3, #0
     e14:	dd5f      	ble.n	ed6 <cord_atan+0x12e>
     e16:	1907      	adds	r7, r0, r4
     e18:	10a4      	asrs	r4, r4, #2
     e1a:	1b18      	subs	r0, r3, r4
     e1c:	68b3      	ldr	r3, [r6, #8]
     e1e:	4699      	mov	r9, r3
     e20:	444d      	add	r5, r9
     e22:	2800      	cmp	r0, #0
     e24:	d100      	bne.n	e28 <cord_atan+0x80>
     e26:	e07e      	b.n	f26 <cord_atan+0x17e>
     e28:	10c3      	asrs	r3, r0, #3
     e2a:	2800      	cmp	r0, #0
     e2c:	dd59      	ble.n	ee2 <cord_atan+0x13a>
     e2e:	10fc      	asrs	r4, r7, #3
     e30:	1b00      	subs	r0, r0, r4
     e32:	68f4      	ldr	r4, [r6, #12]
     e34:	19db      	adds	r3, r3, r7
     e36:	46a1      	mov	r9, r4
     e38:	444d      	add	r5, r9
     e3a:	2800      	cmp	r0, #0
     e3c:	d100      	bne.n	e40 <cord_atan+0x98>
     e3e:	e074      	b.n	f2a <cord_atan+0x182>
     e40:	1104      	asrs	r4, r0, #4
     e42:	2800      	cmp	r0, #0
     e44:	dd53      	ble.n	eee <cord_atan+0x146>
     e46:	18e7      	adds	r7, r4, r3
     e48:	111b      	asrs	r3, r3, #4
     e4a:	1ac4      	subs	r4, r0, r3
     e4c:	6933      	ldr	r3, [r6, #16]
     e4e:	4699      	mov	r9, r3
     e50:	444d      	add	r5, r9
     e52:	2c00      	cmp	r4, #0
     e54:	d06c      	beq.n	f30 <cord_atan+0x188>
     e56:	1163      	asrs	r3, r4, #5
     e58:	2c00      	cmp	r4, #0
     e5a:	dd4e      	ble.n	efa <cord_atan+0x152>
     e5c:	1178      	asrs	r0, r7, #5
     e5e:	1a20      	subs	r0, r4, r0
     e60:	6974      	ldr	r4, [r6, #20]
     e62:	19db      	adds	r3, r3, r7
     e64:	46a1      	mov	r9, r4
     e66:	444d      	add	r5, r9
     e68:	2800      	cmp	r0, #0
     e6a:	d063      	beq.n	f34 <cord_atan+0x18c>
     e6c:	1184      	asrs	r4, r0, #6
     e6e:	2800      	cmp	r0, #0
     e70:	dd49      	ble.n	f06 <cord_atan+0x15e>
     e72:	18e7      	adds	r7, r4, r3
     e74:	119b      	asrs	r3, r3, #6
     e76:	1ac0      	subs	r0, r0, r3
     e78:	69b3      	ldr	r3, [r6, #24]
     e7a:	4699      	mov	r9, r3
     e7c:	444d      	add	r5, r9
     e7e:	2800      	cmp	r0, #0
     e80:	d05b      	beq.n	f3a <cord_atan+0x192>
     e82:	dd46      	ble.n	f12 <cord_atan+0x16a>
     e84:	69f3      	ldr	r3, [r6, #28]
     e86:	11c0      	asrs	r0, r0, #7
     e88:	19c7      	adds	r7, r0, r7
     e8a:	18ed      	adds	r5, r5, r3
     e8c:	2307      	movs	r3, #7
     e8e:	2a00      	cmp	r2, #0
     e90:	db12      	blt.n	eb8 <cord_atan+0x110>
     e92:	2d00      	cmp	r5, #0
     e94:	da03      	bge.n	e9e <cord_atan+0xf6>
     e96:	2280      	movs	r2, #128	; 0x80
     e98:	00d2      	lsls	r2, r2, #3
     e9a:	4691      	mov	r9, r2
     e9c:	444d      	add	r5, r9
     e9e:	4642      	mov	r2, r8
     ea0:	009b      	lsls	r3, r3, #2
     ea2:	58d0      	ldr	r0, [r2, r3]
     ea4:	4663      	mov	r3, ip
     ea6:	4378      	muls	r0, r7
     ea8:	1280      	asrs	r0, r0, #10
     eaa:	600d      	str	r5, [r1, #0]
     eac:	6018      	str	r0, [r3, #0]
     eae:	b011      	add	sp, #68	; 0x44
     eb0:	bc0c      	pop	{r2, r3}
     eb2:	4690      	mov	r8, r2
     eb4:	4699      	mov	r9, r3
     eb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     eb8:	2280      	movs	r2, #128	; 0x80
     eba:	0092      	lsls	r2, r2, #2
     ebc:	1b55      	subs	r5, r2, r5
     ebe:	e7e8      	b.n	e92 <cord_atan+0xea>
     ec0:	9800      	ldr	r0, [sp, #0]
     ec2:	1b5f      	subs	r7, r3, r5
     ec4:	195b      	adds	r3, r3, r5
     ec6:	4245      	negs	r5, r0
     ec8:	e793      	b.n	df2 <cord_atan+0x4a>
     eca:	1078      	asrs	r0, r7, #1
     ecc:	18c3      	adds	r3, r0, r3
     ece:	6870      	ldr	r0, [r6, #4]
     ed0:	1b3c      	subs	r4, r7, r4
     ed2:	1a2d      	subs	r5, r5, r0
     ed4:	e799      	b.n	e0a <cord_atan+0x62>
     ed6:	1a27      	subs	r7, r4, r0
     ed8:	10a0      	asrs	r0, r4, #2
     eda:	18c0      	adds	r0, r0, r3
     edc:	68b3      	ldr	r3, [r6, #8]
     ede:	1aed      	subs	r5, r5, r3
     ee0:	e79f      	b.n	e22 <cord_atan+0x7a>
     ee2:	10fc      	asrs	r4, r7, #3
     ee4:	1820      	adds	r0, r4, r0
     ee6:	68f4      	ldr	r4, [r6, #12]
     ee8:	1afb      	subs	r3, r7, r3
     eea:	1b2d      	subs	r5, r5, r4
     eec:	e7a5      	b.n	e3a <cord_atan+0x92>
     eee:	1b1f      	subs	r7, r3, r4
     ef0:	111c      	asrs	r4, r3, #4
     ef2:	6933      	ldr	r3, [r6, #16]
     ef4:	1824      	adds	r4, r4, r0
     ef6:	1aed      	subs	r5, r5, r3
     ef8:	e7ab      	b.n	e52 <cord_atan+0xaa>
     efa:	1178      	asrs	r0, r7, #5
     efc:	1900      	adds	r0, r0, r4
     efe:	6974      	ldr	r4, [r6, #20]
     f00:	1afb      	subs	r3, r7, r3
     f02:	1b2d      	subs	r5, r5, r4
     f04:	e7b0      	b.n	e68 <cord_atan+0xc0>
     f06:	1b1f      	subs	r7, r3, r4
     f08:	119b      	asrs	r3, r3, #6
     f0a:	1818      	adds	r0, r3, r0
     f0c:	69b3      	ldr	r3, [r6, #24]
     f0e:	1aed      	subs	r5, r5, r3
     f10:	e7b5      	b.n	e7e <cord_atan+0xd6>
     f12:	69f3      	ldr	r3, [r6, #28]
     f14:	11c4      	asrs	r4, r0, #7
     f16:	1b3f      	subs	r7, r7, r4
     f18:	1aed      	subs	r5, r5, r3
     f1a:	e7b7      	b.n	e8c <cord_atan+0xe4>
     f1c:	2300      	movs	r3, #0
     f1e:	e7b6      	b.n	e8e <cord_atan+0xe6>
     f20:	0027      	movs	r7, r4
     f22:	2301      	movs	r3, #1
     f24:	e7b3      	b.n	e8e <cord_atan+0xe6>
     f26:	2302      	movs	r3, #2
     f28:	e7b1      	b.n	e8e <cord_atan+0xe6>
     f2a:	001f      	movs	r7, r3
     f2c:	2303      	movs	r3, #3
     f2e:	e7ae      	b.n	e8e <cord_atan+0xe6>
     f30:	2304      	movs	r3, #4
     f32:	e7ac      	b.n	e8e <cord_atan+0xe6>
     f34:	001f      	movs	r7, r3
     f36:	2305      	movs	r3, #5
     f38:	e7a9      	b.n	e8e <cord_atan+0xe6>
     f3a:	2306      	movs	r3, #6
     f3c:	e7a7      	b.n	e8e <cord_atan+0xe6>
     f3e:	46c0      	nop			; (mov r8, r8)
     f40:	00002524 	.word	0x00002524

00000f44 <sinpwm>:
     f44:	b5f0      	push	{r4, r5, r6, r7, lr}
     f46:	4646      	mov	r6, r8
     f48:	464f      	mov	r7, r9
     f4a:	b4c0      	push	{r6, r7}
     f4c:	b089      	sub	sp, #36	; 0x24
     f4e:	466c      	mov	r4, sp
     f50:	4b65      	ldr	r3, [pc, #404]	; (10e8 <sinpwm+0x1a4>)
     f52:	46e9      	mov	r9, sp
     f54:	3320      	adds	r3, #32
     f56:	cbe0      	ldmia	r3!, {r5, r6, r7}
     f58:	c4e0      	stmia	r4!, {r5, r6, r7}
     f5a:	cbe0      	ldmia	r3!, {r5, r6, r7}
     f5c:	c4e0      	stmia	r4!, {r5, r6, r7}
     f5e:	cb60      	ldmia	r3!, {r5, r6}
     f60:	c460      	stmia	r4!, {r5, r6}
     f62:	680b      	ldr	r3, [r1, #0]
     f64:	17dc      	asrs	r4, r3, #31
     f66:	191e      	adds	r6, r3, r4
     f68:	4698      	mov	r8, r3
     f6a:	684b      	ldr	r3, [r1, #4]
     f6c:	4066      	eors	r6, r4
     f6e:	469c      	mov	ip, r3
     f70:	2b00      	cmp	r3, #0
     f72:	dc00      	bgt.n	f76 <sinpwm+0x32>
     f74:	e086      	b.n	1084 <sinpwm+0x140>
     f76:	18f7      	adds	r7, r6, r3
     f78:	1b9b      	subs	r3, r3, r6
     f7a:	2b00      	cmp	r3, #0
     f7c:	d100      	bne.n	f80 <sinpwm+0x3c>
     f7e:	e0a0      	b.n	10c2 <sinpwm+0x17e>
     f80:	105e      	asrs	r6, r3, #1
     f82:	2b00      	cmp	r3, #0
     f84:	dc00      	bgt.n	f88 <sinpwm+0x44>
     f86:	e081      	b.n	108c <sinpwm+0x148>
     f88:	107c      	asrs	r4, r7, #1
     f8a:	19f6      	adds	r6, r6, r7
     f8c:	1b1b      	subs	r3, r3, r4
     f8e:	2b00      	cmp	r3, #0
     f90:	d100      	bne.n	f94 <sinpwm+0x50>
     f92:	e098      	b.n	10c6 <sinpwm+0x182>
     f94:	109c      	asrs	r4, r3, #2
     f96:	2b00      	cmp	r3, #0
     f98:	dc00      	bgt.n	f9c <sinpwm+0x58>
     f9a:	e07b      	b.n	1094 <sinpwm+0x150>
     f9c:	19a7      	adds	r7, r4, r6
     f9e:	10b6      	asrs	r6, r6, #2
     fa0:	1b9c      	subs	r4, r3, r6
     fa2:	2c00      	cmp	r4, #0
     fa4:	d100      	bne.n	fa8 <sinpwm+0x64>
     fa6:	e091      	b.n	10cc <sinpwm+0x188>
     fa8:	10e6      	asrs	r6, r4, #3
     faa:	2c00      	cmp	r4, #0
     fac:	dc00      	bgt.n	fb0 <sinpwm+0x6c>
     fae:	e075      	b.n	109c <sinpwm+0x158>
     fb0:	10fd      	asrs	r5, r7, #3
     fb2:	19f6      	adds	r6, r6, r7
     fb4:	1b64      	subs	r4, r4, r5
     fb6:	2c00      	cmp	r4, #0
     fb8:	d100      	bne.n	fbc <sinpwm+0x78>
     fba:	e089      	b.n	10d0 <sinpwm+0x18c>
     fbc:	1125      	asrs	r5, r4, #4
     fbe:	2c00      	cmp	r4, #0
     fc0:	dc00      	bgt.n	fc4 <sinpwm+0x80>
     fc2:	e06f      	b.n	10a4 <sinpwm+0x160>
     fc4:	19af      	adds	r7, r5, r6
     fc6:	1136      	asrs	r6, r6, #4
     fc8:	1ba5      	subs	r5, r4, r6
     fca:	2d00      	cmp	r5, #0
     fcc:	d100      	bne.n	fd0 <sinpwm+0x8c>
     fce:	e082      	b.n	10d6 <sinpwm+0x192>
     fd0:	116e      	asrs	r6, r5, #5
     fd2:	2d00      	cmp	r5, #0
     fd4:	dd6a      	ble.n	10ac <sinpwm+0x168>
     fd6:	117c      	asrs	r4, r7, #5
     fd8:	19f6      	adds	r6, r6, r7
     fda:	1b2c      	subs	r4, r5, r4
     fdc:	2c00      	cmp	r4, #0
     fde:	d100      	bne.n	fe2 <sinpwm+0x9e>
     fe0:	e07b      	b.n	10da <sinpwm+0x196>
     fe2:	11a3      	asrs	r3, r4, #6
     fe4:	2c00      	cmp	r4, #0
     fe6:	dd65      	ble.n	10b4 <sinpwm+0x170>
     fe8:	199b      	adds	r3, r3, r6
     fea:	11b6      	asrs	r6, r6, #6
     fec:	1ba4      	subs	r4, r4, r6
     fee:	2c00      	cmp	r4, #0
     ff0:	d100      	bne.n	ff4 <sinpwm+0xb0>
     ff2:	e075      	b.n	10e0 <sinpwm+0x19c>
     ff4:	dd62      	ble.n	10bc <sinpwm+0x178>
     ff6:	11e4      	asrs	r4, r4, #7
     ff8:	18e7      	adds	r7, r4, r3
     ffa:	2307      	movs	r3, #7
     ffc:	464c      	mov	r4, r9
     ffe:	4646      	mov	r6, r8
    1000:	009b      	lsls	r3, r3, #2
    1002:	58e4      	ldr	r4, [r4, r3]
    1004:	4b39      	ldr	r3, [pc, #228]	; (10ec <sinpwm+0x1a8>)
    1006:	0095      	lsls	r5, r2, #2
    1008:	58ed      	ldr	r5, [r5, r3]
    100a:	437c      	muls	r4, r7
    100c:	436e      	muls	r6, r5
    100e:	25c0      	movs	r5, #192	; 0xc0
    1010:	4667      	mov	r7, ip
    1012:	00ad      	lsls	r5, r5, #2
    1014:	1955      	adds	r5, r2, r5
    1016:	05ad      	lsls	r5, r5, #22
    1018:	0d2d      	lsrs	r5, r5, #20
    101a:	58ed      	ldr	r5, [r5, r3]
    101c:	1524      	asrs	r4, r4, #20
    101e:	437d      	muls	r5, r7
    1020:	1b75      	subs	r5, r6, r5
    1022:	152d      	asrs	r5, r5, #20
    1024:	6005      	str	r5, [r0, #0]
    1026:	4d32      	ldr	r5, [pc, #200]	; (10f0 <sinpwm+0x1ac>)
    1028:	684f      	ldr	r7, [r1, #4]
    102a:	1955      	adds	r5, r2, r5
    102c:	05ad      	lsls	r5, r5, #22
    102e:	0d2d      	lsrs	r5, r5, #20
    1030:	58ee      	ldr	r6, [r5, r3]
    1032:	680d      	ldr	r5, [r1, #0]
    1034:	4375      	muls	r5, r6
    1036:	4e2f      	ldr	r6, [pc, #188]	; (10f4 <sinpwm+0x1b0>)
    1038:	1996      	adds	r6, r2, r6
    103a:	05b6      	lsls	r6, r6, #22
    103c:	0d36      	lsrs	r6, r6, #20
    103e:	58f6      	ldr	r6, [r6, r3]
    1040:	437e      	muls	r6, r7
    1042:	1bae      	subs	r6, r5, r6
    1044:	0015      	movs	r5, r2
    1046:	3556      	adds	r5, #86	; 0x56
    1048:	35ff      	adds	r5, #255	; 0xff
    104a:	1536      	asrs	r6, r6, #20
    104c:	05ad      	lsls	r5, r5, #22
    104e:	6046      	str	r6, [r0, #4]
    1050:	0d2d      	lsrs	r5, r5, #20
    1052:	58ee      	ldr	r6, [r5, r3]
    1054:	680d      	ldr	r5, [r1, #0]
    1056:	436e      	muls	r6, r5
    1058:	4d27      	ldr	r5, [pc, #156]	; (10f8 <sinpwm+0x1b4>)
    105a:	46ac      	mov	ip, r5
    105c:	4462      	add	r2, ip
    105e:	0592      	lsls	r2, r2, #22
    1060:	0d12      	lsrs	r2, r2, #20
    1062:	58d2      	ldr	r2, [r2, r3]
    1064:	684b      	ldr	r3, [r1, #4]
    1066:	435a      	muls	r2, r3
    1068:	23fa      	movs	r3, #250	; 0xfa
    106a:	1ab2      	subs	r2, r6, r2
    106c:	1512      	asrs	r2, r2, #20
    106e:	6082      	str	r2, [r0, #8]
    1070:	005b      	lsls	r3, r3, #1
    1072:	2001      	movs	r0, #1
    1074:	429c      	cmp	r4, r3
    1076:	dc00      	bgt.n	107a <sinpwm+0x136>
    1078:	2000      	movs	r0, #0
    107a:	b009      	add	sp, #36	; 0x24
    107c:	bc0c      	pop	{r2, r3}
    107e:	4690      	mov	r8, r2
    1080:	4699      	mov	r9, r3
    1082:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1084:	1af7      	subs	r7, r6, r3
    1086:	0033      	movs	r3, r6
    1088:	4463      	add	r3, ip
    108a:	e776      	b.n	f7a <sinpwm+0x36>
    108c:	107c      	asrs	r4, r7, #1
    108e:	1bbe      	subs	r6, r7, r6
    1090:	18e3      	adds	r3, r4, r3
    1092:	e77c      	b.n	f8e <sinpwm+0x4a>
    1094:	1b37      	subs	r7, r6, r4
    1096:	10b4      	asrs	r4, r6, #2
    1098:	18e4      	adds	r4, r4, r3
    109a:	e782      	b.n	fa2 <sinpwm+0x5e>
    109c:	10fd      	asrs	r5, r7, #3
    109e:	1bbe      	subs	r6, r7, r6
    10a0:	192c      	adds	r4, r5, r4
    10a2:	e788      	b.n	fb6 <sinpwm+0x72>
    10a4:	1b77      	subs	r7, r6, r5
    10a6:	1135      	asrs	r5, r6, #4
    10a8:	192d      	adds	r5, r5, r4
    10aa:	e78e      	b.n	fca <sinpwm+0x86>
    10ac:	117c      	asrs	r4, r7, #5
    10ae:	1bbe      	subs	r6, r7, r6
    10b0:	1964      	adds	r4, r4, r5
    10b2:	e793      	b.n	fdc <sinpwm+0x98>
    10b4:	1af3      	subs	r3, r6, r3
    10b6:	11b6      	asrs	r6, r6, #6
    10b8:	1934      	adds	r4, r6, r4
    10ba:	e798      	b.n	fee <sinpwm+0xaa>
    10bc:	11e5      	asrs	r5, r4, #7
    10be:	1b5f      	subs	r7, r3, r5
    10c0:	e79b      	b.n	ffa <sinpwm+0xb6>
    10c2:	2300      	movs	r3, #0
    10c4:	e79a      	b.n	ffc <sinpwm+0xb8>
    10c6:	0037      	movs	r7, r6
    10c8:	2301      	movs	r3, #1
    10ca:	e797      	b.n	ffc <sinpwm+0xb8>
    10cc:	2302      	movs	r3, #2
    10ce:	e795      	b.n	ffc <sinpwm+0xb8>
    10d0:	0037      	movs	r7, r6
    10d2:	2303      	movs	r3, #3
    10d4:	e792      	b.n	ffc <sinpwm+0xb8>
    10d6:	2304      	movs	r3, #4
    10d8:	e790      	b.n	ffc <sinpwm+0xb8>
    10da:	0037      	movs	r7, r6
    10dc:	2305      	movs	r3, #5
    10de:	e78d      	b.n	ffc <sinpwm+0xb8>
    10e0:	001f      	movs	r7, r3
    10e2:	2306      	movs	r3, #6
    10e4:	e78a      	b.n	ffc <sinpwm+0xb8>
    10e6:	46c0      	nop			; (mov r8, r8)
    10e8:	00002524 	.word	0x00002524
    10ec:	0000150c 	.word	0x0000150c
    10f0:	000002aa 	.word	0x000002aa
    10f4:	000005aa 	.word	0x000005aa
    10f8:	00000455 	.word	0x00000455

000010fc <svpwm>:
    10fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    10fe:	464f      	mov	r7, r9
    1100:	4646      	mov	r6, r8
    1102:	b4c0      	push	{r6, r7}
    1104:	4bb2      	ldr	r3, [pc, #712]	; (13d0 <svpwm+0x2d4>)
    1106:	b091      	sub	sp, #68	; 0x44
    1108:	001c      	movs	r4, r3
    110a:	4694      	mov	ip, r2
    110c:	466a      	mov	r2, sp
    110e:	4699      	mov	r9, r3
    1110:	cca8      	ldmia	r4!, {r3, r5, r7}
    1112:	c2a8      	stmia	r2!, {r3, r5, r7}
    1114:	cca8      	ldmia	r4!, {r3, r5, r7}
    1116:	c2a8      	stmia	r2!, {r3, r5, r7}
    1118:	cc28      	ldmia	r4!, {r3, r5}
    111a:	c228      	stmia	r2!, {r3, r5}
    111c:	464b      	mov	r3, r9
    111e:	aa08      	add	r2, sp, #32
    1120:	3320      	adds	r3, #32
    1122:	4690      	mov	r8, r2
    1124:	cbb0      	ldmia	r3!, {r4, r5, r7}
    1126:	c2b0      	stmia	r2!, {r4, r5, r7}
    1128:	cbb0      	ldmia	r3!, {r4, r5, r7}
    112a:	c2b0      	stmia	r2!, {r4, r5, r7}
    112c:	cb30      	ldmia	r3!, {r4, r5}
    112e:	c230      	stmia	r2!, {r4, r5}
    1130:	680a      	ldr	r2, [r1, #0]
    1132:	684d      	ldr	r5, [r1, #4]
    1134:	17d4      	asrs	r4, r2, #31
    1136:	1913      	adds	r3, r2, r4
    1138:	466e      	mov	r6, sp
    113a:	4063      	eors	r3, r4
    113c:	2d00      	cmp	r5, #0
    113e:	dd78      	ble.n	1232 <svpwm+0x136>
    1140:	195f      	adds	r7, r3, r5
    1142:	1aeb      	subs	r3, r5, r3
    1144:	9d00      	ldr	r5, [sp, #0]
    1146:	2b00      	cmp	r3, #0
    1148:	d100      	bne.n	114c <svpwm+0x50>
    114a:	e130      	b.n	13ae <svpwm+0x2b2>
    114c:	105c      	asrs	r4, r3, #1
    114e:	2b00      	cmp	r3, #0
    1150:	dd74      	ble.n	123c <svpwm+0x140>
    1152:	1079      	asrs	r1, r7, #1
    1154:	1a5b      	subs	r3, r3, r1
    1156:	6871      	ldr	r1, [r6, #4]
    1158:	19e4      	adds	r4, r4, r7
    115a:	4689      	mov	r9, r1
    115c:	444d      	add	r5, r9
    115e:	2b00      	cmp	r3, #0
    1160:	d100      	bne.n	1164 <svpwm+0x68>
    1162:	e126      	b.n	13b2 <svpwm+0x2b6>
    1164:	1099      	asrs	r1, r3, #2
    1166:	2b00      	cmp	r3, #0
    1168:	dd6e      	ble.n	1248 <svpwm+0x14c>
    116a:	190f      	adds	r7, r1, r4
    116c:	10a4      	asrs	r4, r4, #2
    116e:	1b19      	subs	r1, r3, r4
    1170:	68b3      	ldr	r3, [r6, #8]
    1172:	4699      	mov	r9, r3
    1174:	444d      	add	r5, r9
    1176:	2900      	cmp	r1, #0
    1178:	d100      	bne.n	117c <svpwm+0x80>
    117a:	e11d      	b.n	13b8 <svpwm+0x2bc>
    117c:	10cb      	asrs	r3, r1, #3
    117e:	2900      	cmp	r1, #0
    1180:	dd68      	ble.n	1254 <svpwm+0x158>
    1182:	10fc      	asrs	r4, r7, #3
    1184:	1b09      	subs	r1, r1, r4
    1186:	68f4      	ldr	r4, [r6, #12]
    1188:	19db      	adds	r3, r3, r7
    118a:	46a1      	mov	r9, r4
    118c:	444d      	add	r5, r9
    118e:	2900      	cmp	r1, #0
    1190:	d100      	bne.n	1194 <svpwm+0x98>
    1192:	e113      	b.n	13bc <svpwm+0x2c0>
    1194:	110c      	asrs	r4, r1, #4
    1196:	2900      	cmp	r1, #0
    1198:	dd62      	ble.n	1260 <svpwm+0x164>
    119a:	18e7      	adds	r7, r4, r3
    119c:	111b      	asrs	r3, r3, #4
    119e:	1acc      	subs	r4, r1, r3
    11a0:	6933      	ldr	r3, [r6, #16]
    11a2:	4699      	mov	r9, r3
    11a4:	444d      	add	r5, r9
    11a6:	2c00      	cmp	r4, #0
    11a8:	d100      	bne.n	11ac <svpwm+0xb0>
    11aa:	e10a      	b.n	13c2 <svpwm+0x2c6>
    11ac:	1163      	asrs	r3, r4, #5
    11ae:	2c00      	cmp	r4, #0
    11b0:	dd5c      	ble.n	126c <svpwm+0x170>
    11b2:	1179      	asrs	r1, r7, #5
    11b4:	1a61      	subs	r1, r4, r1
    11b6:	6974      	ldr	r4, [r6, #20]
    11b8:	19db      	adds	r3, r3, r7
    11ba:	46a1      	mov	r9, r4
    11bc:	444d      	add	r5, r9
    11be:	2900      	cmp	r1, #0
    11c0:	d100      	bne.n	11c4 <svpwm+0xc8>
    11c2:	e100      	b.n	13c6 <svpwm+0x2ca>
    11c4:	118c      	asrs	r4, r1, #6
    11c6:	2900      	cmp	r1, #0
    11c8:	dd56      	ble.n	1278 <svpwm+0x17c>
    11ca:	18e7      	adds	r7, r4, r3
    11cc:	119b      	asrs	r3, r3, #6
    11ce:	1ac9      	subs	r1, r1, r3
    11d0:	69b3      	ldr	r3, [r6, #24]
    11d2:	4699      	mov	r9, r3
    11d4:	444d      	add	r5, r9
    11d6:	2900      	cmp	r1, #0
    11d8:	d100      	bne.n	11dc <svpwm+0xe0>
    11da:	e0f7      	b.n	13cc <svpwm+0x2d0>
    11dc:	dc00      	bgt.n	11e0 <svpwm+0xe4>
    11de:	e0e1      	b.n	13a4 <svpwm+0x2a8>
    11e0:	69f3      	ldr	r3, [r6, #28]
    11e2:	11c9      	asrs	r1, r1, #7
    11e4:	19cf      	adds	r7, r1, r7
    11e6:	18ed      	adds	r5, r5, r3
    11e8:	2307      	movs	r3, #7
    11ea:	2a00      	cmp	r2, #0
    11ec:	db1d      	blt.n	122a <svpwm+0x12e>
    11ee:	2d00      	cmp	r5, #0
    11f0:	da03      	bge.n	11fa <svpwm+0xfe>
    11f2:	2280      	movs	r2, #128	; 0x80
    11f4:	00d2      	lsls	r2, r2, #3
    11f6:	4691      	mov	r9, r2
    11f8:	444d      	add	r5, r9
    11fa:	4642      	mov	r2, r8
    11fc:	009b      	lsls	r3, r3, #2
    11fe:	58d1      	ldr	r1, [r2, r3]
    1200:	23fa      	movs	r3, #250	; 0xfa
    1202:	4379      	muls	r1, r7
    1204:	4465      	add	r5, ip
    1206:	05ad      	lsls	r5, r5, #22
    1208:	1509      	asrs	r1, r1, #20
    120a:	0dad      	lsrs	r5, r5, #22
    120c:	005b      	lsls	r3, r3, #1
    120e:	2600      	movs	r6, #0
    1210:	4299      	cmp	r1, r3
    1212:	dd01      	ble.n	1218 <svpwm+0x11c>
    1214:	0019      	movs	r1, r3
    1216:	3601      	adds	r6, #1
    1218:	006a      	lsls	r2, r5, #1
    121a:	1952      	adds	r2, r2, r5
    121c:	1252      	asrs	r2, r2, #9
    121e:	2a05      	cmp	r2, #5
    1220:	d84b      	bhi.n	12ba <svpwm+0x1be>
    1222:	4b6c      	ldr	r3, [pc, #432]	; (13d4 <svpwm+0x2d8>)
    1224:	0092      	lsls	r2, r2, #2
    1226:	589b      	ldr	r3, [r3, r2]
    1228:	469f      	mov	pc, r3
    122a:	2280      	movs	r2, #128	; 0x80
    122c:	0092      	lsls	r2, r2, #2
    122e:	1b55      	subs	r5, r2, r5
    1230:	e7dd      	b.n	11ee <svpwm+0xf2>
    1232:	9900      	ldr	r1, [sp, #0]
    1234:	1b5f      	subs	r7, r3, r5
    1236:	195b      	adds	r3, r3, r5
    1238:	424d      	negs	r5, r1
    123a:	e784      	b.n	1146 <svpwm+0x4a>
    123c:	1079      	asrs	r1, r7, #1
    123e:	18cb      	adds	r3, r1, r3
    1240:	6871      	ldr	r1, [r6, #4]
    1242:	1b3c      	subs	r4, r7, r4
    1244:	1a6d      	subs	r5, r5, r1
    1246:	e78a      	b.n	115e <svpwm+0x62>
    1248:	1a67      	subs	r7, r4, r1
    124a:	10a1      	asrs	r1, r4, #2
    124c:	18c9      	adds	r1, r1, r3
    124e:	68b3      	ldr	r3, [r6, #8]
    1250:	1aed      	subs	r5, r5, r3
    1252:	e790      	b.n	1176 <svpwm+0x7a>
    1254:	10fc      	asrs	r4, r7, #3
    1256:	1861      	adds	r1, r4, r1
    1258:	68f4      	ldr	r4, [r6, #12]
    125a:	1afb      	subs	r3, r7, r3
    125c:	1b2d      	subs	r5, r5, r4
    125e:	e796      	b.n	118e <svpwm+0x92>
    1260:	1b1f      	subs	r7, r3, r4
    1262:	111c      	asrs	r4, r3, #4
    1264:	6933      	ldr	r3, [r6, #16]
    1266:	1864      	adds	r4, r4, r1
    1268:	1aed      	subs	r5, r5, r3
    126a:	e79c      	b.n	11a6 <svpwm+0xaa>
    126c:	1179      	asrs	r1, r7, #5
    126e:	1909      	adds	r1, r1, r4
    1270:	6974      	ldr	r4, [r6, #20]
    1272:	1afb      	subs	r3, r7, r3
    1274:	1b2d      	subs	r5, r5, r4
    1276:	e7a2      	b.n	11be <svpwm+0xc2>
    1278:	1b1f      	subs	r7, r3, r4
    127a:	119b      	asrs	r3, r3, #6
    127c:	1859      	adds	r1, r3, r1
    127e:	69b3      	ldr	r3, [r6, #24]
    1280:	1aed      	subs	r5, r5, r3
    1282:	e7a8      	b.n	11d6 <svpwm+0xda>
    1284:	4b54      	ldr	r3, [pc, #336]	; (13d8 <svpwm+0x2dc>)
    1286:	4a55      	ldr	r2, [pc, #340]	; (13dc <svpwm+0x2e0>)
    1288:	1b5b      	subs	r3, r3, r5
    128a:	3556      	adds	r5, #86	; 0x56
    128c:	059b      	lsls	r3, r3, #22
    128e:	05ad      	lsls	r5, r5, #22
    1290:	0d1b      	lsrs	r3, r3, #20
    1292:	0d2d      	lsrs	r5, r5, #20
    1294:	589b      	ldr	r3, [r3, r2]
    1296:	58ac      	ldr	r4, [r5, r2]
    1298:	434b      	muls	r3, r1
    129a:	434c      	muls	r4, r1
    129c:	129b      	asrs	r3, r3, #10
    129e:	12a1      	asrs	r1, r4, #10
    12a0:	1aca      	subs	r2, r1, r3
    12a2:	6002      	str	r2, [r0, #0]
    12a4:	425a      	negs	r2, r3
    12a6:	1a52      	subs	r2, r2, r1
    12a8:	1859      	adds	r1, r3, r1
    12aa:	6042      	str	r2, [r0, #4]
    12ac:	6081      	str	r1, [r0, #8]
    12ae:	0030      	movs	r0, r6
    12b0:	b011      	add	sp, #68	; 0x44
    12b2:	bc0c      	pop	{r2, r3}
    12b4:	4690      	mov	r8, r2
    12b6:	4699      	mov	r9, r3
    12b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    12ba:	4b49      	ldr	r3, [pc, #292]	; (13e0 <svpwm+0x2e4>)
    12bc:	4c47      	ldr	r4, [pc, #284]	; (13dc <svpwm+0x2e0>)
    12be:	1b5b      	subs	r3, r3, r5
    12c0:	059b      	lsls	r3, r3, #22
    12c2:	0d1b      	lsrs	r3, r3, #20
    12c4:	591a      	ldr	r2, [r3, r4]
    12c6:	23c0      	movs	r3, #192	; 0xc0
    12c8:	009b      	lsls	r3, r3, #2
    12ca:	469c      	mov	ip, r3
    12cc:	4465      	add	r5, ip
    12ce:	05ad      	lsls	r5, r5, #22
    12d0:	0d2d      	lsrs	r5, r5, #20
    12d2:	592c      	ldr	r4, [r5, r4]
    12d4:	434a      	muls	r2, r1
    12d6:	4361      	muls	r1, r4
    12d8:	1292      	asrs	r2, r2, #10
    12da:	1289      	asrs	r1, r1, #10
    12dc:	1853      	adds	r3, r2, r1
    12de:	6003      	str	r3, [r0, #0]
    12e0:	1a8b      	subs	r3, r1, r2
    12e2:	4252      	negs	r2, r2
    12e4:	1a52      	subs	r2, r2, r1
    12e6:	6043      	str	r3, [r0, #4]
    12e8:	6082      	str	r2, [r0, #8]
    12ea:	e7e0      	b.n	12ae <svpwm+0x1b2>
    12ec:	4b3d      	ldr	r3, [pc, #244]	; (13e4 <svpwm+0x2e8>)
    12ee:	4a3b      	ldr	r2, [pc, #236]	; (13dc <svpwm+0x2e0>)
    12f0:	1b5b      	subs	r3, r3, r5
    12f2:	059b      	lsls	r3, r3, #22
    12f4:	0d1b      	lsrs	r3, r3, #20
    12f6:	589f      	ldr	r7, [r3, r2]
    12f8:	4b3b      	ldr	r3, [pc, #236]	; (13e8 <svpwm+0x2ec>)
    12fa:	434f      	muls	r7, r1
    12fc:	469c      	mov	ip, r3
    12fe:	4465      	add	r5, ip
    1300:	05ad      	lsls	r5, r5, #22
    1302:	0d2d      	lsrs	r5, r5, #20
    1304:	58ac      	ldr	r4, [r5, r2]
    1306:	12bf      	asrs	r7, r7, #10
    1308:	4361      	muls	r1, r4
    130a:	1289      	asrs	r1, r1, #10
    130c:	1a7b      	subs	r3, r7, r1
    130e:	6003      	str	r3, [r0, #0]
    1310:	187b      	adds	r3, r7, r1
    1312:	427f      	negs	r7, r7
    1314:	1a7f      	subs	r7, r7, r1
    1316:	6043      	str	r3, [r0, #4]
    1318:	6087      	str	r7, [r0, #8]
    131a:	e7c8      	b.n	12ae <svpwm+0x1b2>
    131c:	4b33      	ldr	r3, [pc, #204]	; (13ec <svpwm+0x2f0>)
    131e:	4a2f      	ldr	r2, [pc, #188]	; (13dc <svpwm+0x2e0>)
    1320:	1b5b      	subs	r3, r3, r5
    1322:	35ac      	adds	r5, #172	; 0xac
    1324:	059b      	lsls	r3, r3, #22
    1326:	35ff      	adds	r5, #255	; 0xff
    1328:	0d1b      	lsrs	r3, r3, #20
    132a:	05ad      	lsls	r5, r5, #22
    132c:	589b      	ldr	r3, [r3, r2]
    132e:	0d2d      	lsrs	r5, r5, #20
    1330:	58ac      	ldr	r4, [r5, r2]
    1332:	434b      	muls	r3, r1
    1334:	4361      	muls	r1, r4
    1336:	129b      	asrs	r3, r3, #10
    1338:	1289      	asrs	r1, r1, #10
    133a:	425a      	negs	r2, r3
    133c:	1a52      	subs	r2, r2, r1
    133e:	6002      	str	r2, [r0, #0]
    1340:	185a      	adds	r2, r3, r1
    1342:	1ac9      	subs	r1, r1, r3
    1344:	6042      	str	r2, [r0, #4]
    1346:	6081      	str	r1, [r0, #8]
    1348:	e7b1      	b.n	12ae <svpwm+0x1b2>
    134a:	4b29      	ldr	r3, [pc, #164]	; (13f0 <svpwm+0x2f4>)
    134c:	4a23      	ldr	r2, [pc, #140]	; (13dc <svpwm+0x2e0>)
    134e:	1b5b      	subs	r3, r3, r5
    1350:	3501      	adds	r5, #1
    1352:	059b      	lsls	r3, r3, #22
    1354:	35ff      	adds	r5, #255	; 0xff
    1356:	0d1b      	lsrs	r3, r3, #20
    1358:	05ad      	lsls	r5, r5, #22
    135a:	589b      	ldr	r3, [r3, r2]
    135c:	0d2d      	lsrs	r5, r5, #20
    135e:	58ac      	ldr	r4, [r5, r2]
    1360:	434b      	muls	r3, r1
    1362:	434c      	muls	r4, r1
    1364:	129b      	asrs	r3, r3, #10
    1366:	12a1      	asrs	r1, r4, #10
    1368:	425a      	negs	r2, r3
    136a:	1a52      	subs	r2, r2, r1
    136c:	6002      	str	r2, [r0, #0]
    136e:	1a5a      	subs	r2, r3, r1
    1370:	1859      	adds	r1, r3, r1
    1372:	6042      	str	r2, [r0, #4]
    1374:	6081      	str	r1, [r0, #8]
    1376:	e79a      	b.n	12ae <svpwm+0x1b2>
    1378:	4b1e      	ldr	r3, [pc, #120]	; (13f4 <svpwm+0x2f8>)
    137a:	4a18      	ldr	r2, [pc, #96]	; (13dc <svpwm+0x2e0>)
    137c:	1b5b      	subs	r3, r3, r5
    137e:	3d55      	subs	r5, #85	; 0x55
    1380:	059b      	lsls	r3, r3, #22
    1382:	05ad      	lsls	r5, r5, #22
    1384:	0d1b      	lsrs	r3, r3, #20
    1386:	0d2d      	lsrs	r5, r5, #20
    1388:	589b      	ldr	r3, [r3, r2]
    138a:	58ac      	ldr	r4, [r5, r2]
    138c:	434b      	muls	r3, r1
    138e:	4361      	muls	r1, r4
    1390:	129b      	asrs	r3, r3, #10
    1392:	1289      	asrs	r1, r1, #10
    1394:	185a      	adds	r2, r3, r1
    1396:	6002      	str	r2, [r0, #0]
    1398:	425a      	negs	r2, r3
    139a:	1a52      	subs	r2, r2, r1
    139c:	1a59      	subs	r1, r3, r1
    139e:	6042      	str	r2, [r0, #4]
    13a0:	6081      	str	r1, [r0, #8]
    13a2:	e784      	b.n	12ae <svpwm+0x1b2>
    13a4:	69f3      	ldr	r3, [r6, #28]
    13a6:	11cc      	asrs	r4, r1, #7
    13a8:	1b3f      	subs	r7, r7, r4
    13aa:	1aed      	subs	r5, r5, r3
    13ac:	e71c      	b.n	11e8 <svpwm+0xec>
    13ae:	2300      	movs	r3, #0
    13b0:	e71b      	b.n	11ea <svpwm+0xee>
    13b2:	0027      	movs	r7, r4
    13b4:	2301      	movs	r3, #1
    13b6:	e718      	b.n	11ea <svpwm+0xee>
    13b8:	2302      	movs	r3, #2
    13ba:	e716      	b.n	11ea <svpwm+0xee>
    13bc:	001f      	movs	r7, r3
    13be:	2303      	movs	r3, #3
    13c0:	e713      	b.n	11ea <svpwm+0xee>
    13c2:	2304      	movs	r3, #4
    13c4:	e711      	b.n	11ea <svpwm+0xee>
    13c6:	001f      	movs	r7, r3
    13c8:	2305      	movs	r3, #5
    13ca:	e70e      	b.n	11ea <svpwm+0xee>
    13cc:	2306      	movs	r3, #6
    13ce:	e70c      	b.n	11ea <svpwm+0xee>
    13d0:	00002524 	.word	0x00002524
    13d4:	0000250c 	.word	0x0000250c
    13d8:	00000a54 	.word	0x00000a54
    13dc:	0000150c 	.word	0x0000150c
    13e0:	000007aa 	.word	0x000007aa
    13e4:	00000854 	.word	0x00000854
    13e8:	00000256 	.word	0x00000256
    13ec:	000008ff 	.word	0x000008ff
    13f0:	000009aa 	.word	0x000009aa
    13f4:	00000aff 	.word	0x00000aff

000013f8 <get_speed>:
    13f8:	4a0f      	ldr	r2, [pc, #60]	; (1438 <get_speed+0x40>)
    13fa:	b510      	push	{r4, lr}
    13fc:	6813      	ldr	r3, [r2, #0]
    13fe:	6854      	ldr	r4, [r2, #4]
    1400:	1ac3      	subs	r3, r0, r3
    1402:	6050      	str	r0, [r2, #4]
    1404:	6014      	str	r4, [r2, #0]
    1406:	17da      	asrs	r2, r3, #31
    1408:	1898      	adds	r0, r3, r2
    140a:	4050      	eors	r0, r2
    140c:	22fa      	movs	r2, #250	; 0xfa
    140e:	0092      	lsls	r2, r2, #2
    1410:	4290      	cmp	r0, r2
    1412:	dd04      	ble.n	141e <get_speed+0x26>
    1414:	2b00      	cmp	r3, #0
    1416:	db0a      	blt.n	142e <get_speed+0x36>
    1418:	4a08      	ldr	r2, [pc, #32]	; (143c <get_speed+0x44>)
    141a:	4694      	mov	ip, r2
    141c:	4463      	add	r3, ip
    141e:	680a      	ldr	r2, [r1, #0]
    1420:	4807      	ldr	r0, [pc, #28]	; (1440 <get_speed+0x48>)
    1422:	18d2      	adds	r2, r2, r3
    1424:	105b      	asrs	r3, r3, #1
    1426:	4343      	muls	r3, r0
    1428:	600a      	str	r2, [r1, #0]
    142a:	1318      	asrs	r0, r3, #12
    142c:	bd10      	pop	{r4, pc}
    142e:	2280      	movs	r2, #128	; 0x80
    1430:	0152      	lsls	r2, r2, #5
    1432:	4694      	mov	ip, r2
    1434:	4463      	add	r3, ip
    1436:	e7f2      	b.n	141e <get_speed+0x26>
    1438:	2000001c 	.word	0x2000001c
    143c:	fffff000 	.word	0xfffff000
    1440:	0002ae7c 	.word	0x0002ae7c

00001444 <mfilter>:
    1444:	221f      	movs	r2, #31
    1446:	4908      	ldr	r1, [pc, #32]	; (1468 <mfilter+0x24>)
    1448:	b510      	push	{r4, lr}
    144a:	688b      	ldr	r3, [r1, #8]
    144c:	3301      	adds	r3, #1
    144e:	4013      	ands	r3, r2
    1450:	608b      	str	r3, [r1, #8]
    1452:	009b      	lsls	r3, r3, #2
    1454:	18cb      	adds	r3, r1, r3
    1456:	68ca      	ldr	r2, [r1, #12]
    1458:	691c      	ldr	r4, [r3, #16]
    145a:	6118      	str	r0, [r3, #16]
    145c:	1b12      	subs	r2, r2, r4
    145e:	1812      	adds	r2, r2, r0
    1460:	1150      	asrs	r0, r2, #5
    1462:	60ca      	str	r2, [r1, #12]
    1464:	bd10      	pop	{r4, pc}
    1466:	46c0      	nop			; (mov r8, r8)
    1468:	2000001c 	.word	0x2000001c

0000146c <rfilter1>:
    146c:	490d      	ldr	r1, [pc, #52]	; (14a4 <rfilter1+0x38>)
    146e:	b570      	push	{r4, r5, r6, lr}
    1470:	4b0d      	ldr	r3, [pc, #52]	; (14a8 <rfilter1+0x3c>)
    1472:	698e      	ldr	r6, [r1, #24]
    1474:	4a0d      	ldr	r2, [pc, #52]	; (14ac <rfilter1+0x40>)
    1476:	435e      	muls	r6, r3
    1478:	0013      	movs	r3, r2
    147a:	690c      	ldr	r4, [r1, #16]
    147c:	4a0c      	ldr	r2, [pc, #48]	; (14b0 <rfilter1+0x44>)
    147e:	4363      	muls	r3, r4
    1480:	4342      	muls	r2, r0
    1482:	18f3      	adds	r3, r6, r3
    1484:	694d      	ldr	r5, [r1, #20]
    1486:	189b      	adds	r3, r3, r2
    1488:	4a0a      	ldr	r2, [pc, #40]	; (14b4 <rfilter1+0x48>)
    148a:	69ce      	ldr	r6, [r1, #28]
    148c:	436a      	muls	r2, r5
    148e:	189b      	adds	r3, r3, r2
    1490:	4a09      	ldr	r2, [pc, #36]	; (14b8 <rfilter1+0x4c>)
    1492:	61cd      	str	r5, [r1, #28]
    1494:	4372      	muls	r2, r6
    1496:	189b      	adds	r3, r3, r2
    1498:	129a      	asrs	r2, r3, #10
    149a:	6148      	str	r0, [r1, #20]
    149c:	618c      	str	r4, [r1, #24]
    149e:	1498      	asrs	r0, r3, #18
    14a0:	610a      	str	r2, [r1, #16]
    14a2:	bd70      	pop	{r4, r5, r6, pc}
    14a4:	2000009c 	.word	0x2000009c
    14a8:	fffffc33 	.word	0xfffffc33
    14ac:	000007c6 	.word	0x000007c6
    14b0:	0003f0a4 	.word	0x0003f0a4
    14b4:	fff83a2e 	.word	0xfff83a2e
    14b8:	0003dc29 	.word	0x0003dc29

000014bc <rfilter2>:
    14bc:	490d      	ldr	r1, [pc, #52]	; (14f4 <rfilter2+0x38>)
    14be:	b570      	push	{r4, r5, r6, lr}
    14c0:	4b0d      	ldr	r3, [pc, #52]	; (14f8 <rfilter2+0x3c>)
    14c2:	6a8e      	ldr	r6, [r1, #40]	; 0x28
    14c4:	4a0d      	ldr	r2, [pc, #52]	; (14fc <rfilter2+0x40>)
    14c6:	435e      	muls	r6, r3
    14c8:	0013      	movs	r3, r2
    14ca:	6a0c      	ldr	r4, [r1, #32]
    14cc:	4a0c      	ldr	r2, [pc, #48]	; (1500 <rfilter2+0x44>)
    14ce:	4363      	muls	r3, r4
    14d0:	4342      	muls	r2, r0
    14d2:	18f3      	adds	r3, r6, r3
    14d4:	6a4d      	ldr	r5, [r1, #36]	; 0x24
    14d6:	189b      	adds	r3, r3, r2
    14d8:	4a0a      	ldr	r2, [pc, #40]	; (1504 <rfilter2+0x48>)
    14da:	6ace      	ldr	r6, [r1, #44]	; 0x2c
    14dc:	436a      	muls	r2, r5
    14de:	189b      	adds	r3, r3, r2
    14e0:	4a09      	ldr	r2, [pc, #36]	; (1508 <rfilter2+0x4c>)
    14e2:	62cd      	str	r5, [r1, #44]	; 0x2c
    14e4:	4372      	muls	r2, r6
    14e6:	189b      	adds	r3, r3, r2
    14e8:	129a      	asrs	r2, r3, #10
    14ea:	6248      	str	r0, [r1, #36]	; 0x24
    14ec:	628c      	str	r4, [r1, #40]	; 0x28
    14ee:	1498      	asrs	r0, r3, #18
    14f0:	620a      	str	r2, [r1, #32]
    14f2:	bd70      	pop	{r4, r5, r6, pc}
    14f4:	2000009c 	.word	0x2000009c
    14f8:	fffffc66 	.word	0xfffffc66
    14fc:	0000078a 	.word	0x0000078a
    1500:	0003e3d7 	.word	0x0003e3d7
    1504:	fff8767b 	.word	0xfff8767b
    1508:	0003b5c3 	.word	0x0003b5c3

0000150c <cos_tb>:
    150c:	00000400 00000400 00000400 00000400     ................
    151c:	00000400 00000400 000003ff 000003ff     ................
    152c:	000003ff 000003fe 000003fe 000003fe     ................
    153c:	000003fd 000003fd 000003fc 000003fc     ................
    154c:	000003fb 000003fa 000003fa 000003f9     ................
    155c:	000003f8 000003f8 000003f7 000003f6     ................
    156c:	000003f5 000003f4 000003f3 000003f2     ................
    157c:	000003f1 000003f0 000003ef 000003ee     ................
    158c:	000003ec 000003eb 000003ea 000003e8     ................
    159c:	000003e7 000003e6 000003e4 000003e3     ................
    15ac:	000003e1 000003e0 000003de 000003dd     ................
    15bc:	000003db 000003d9 000003d7 000003d6     ................
    15cc:	000003d4 000003d2 000003d0 000003ce     ................
    15dc:	000003cc 000003ca 000003c8 000003c6     ................
    15ec:	000003c4 000003c2 000003c0 000003be     ................
    15fc:	000003bb 000003b9 000003b7 000003b4     ................
    160c:	000003b2 000003b0 000003ad 000003ab     ................
    161c:	000003a8 000003a6 000003a3 000003a0     ................
    162c:	0000039e 0000039b 00000398 00000395     ................
    163c:	00000393 00000390 0000038d 0000038a     ................
    164c:	00000387 00000384 00000381 0000037e     ............~...
    165c:	0000037b 00000378 00000375 00000372     {...x...u...r...
    166c:	0000036e 0000036b 00000368 00000364     n...k...h...d...
    167c:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
    168c:	00000353 00000350 0000034c 00000349     S...P...L...I...
    169c:	00000345 00000342 0000033e 0000033a     E...B...>...:...
    16ac:	00000336 00000333 0000032f 0000032b     6...3.../...+...
    16bc:	00000327 00000323 0000031f 0000031c     '...#...........
    16cc:	00000318 00000314 00000310 0000030b     ................
    16dc:	00000307 00000303 000002ff 000002fb     ................
    16ec:	000002f7 000002f3 000002ee 000002ea     ................
    16fc:	000002e6 000002e1 000002dd 000002d9     ................
    170c:	000002d4 000002d0 000002cb 000002c7     ................
    171c:	000002c2 000002be 000002b9 000002b4     ................
    172c:	000002b0 000002ab 000002a6 000002a2     ................
    173c:	0000029d 00000298 00000293 0000028e     ................
    174c:	0000028a 00000285 00000280 0000027b     ............{...
    175c:	00000276 00000271 0000026c 00000267     v...q...l...g...
    176c:	00000262 0000025d 00000258 00000253     b...]...X...S...
    177c:	0000024e 00000248 00000243 0000023e     N...H...C...>...
    178c:	00000239 00000234 0000022e 00000229     9...4.......)...
    179c:	00000224 0000021f 00000219 00000214     $...............
    17ac:	0000020e 00000209 00000204 000001fe     ................
    17bc:	000001f9 000001f3 000001ee 000001e8     ................
    17cc:	000001e3 000001dd 000001d8 000001d2     ................
    17dc:	000001cc 000001c7 000001c1 000001bb     ................
    17ec:	000001b6 000001b0 000001aa 000001a5     ................
    17fc:	0000019f 00000199 00000193 0000018e     ................
    180c:	00000188 00000182 0000017c 00000176     ........|...v...
    181c:	00000171 0000016b 00000165 0000015f     q...k...e..._...
    182c:	00000159 00000153 0000014d 00000147     Y...S...M...G...
    183c:	00000141 0000013b 00000135 0000012f     A...;...5.../...
    184c:	00000129 00000123 0000011d 00000117     )...#...........
    185c:	00000111 0000010b 00000105 000000ff     ................
    186c:	000000f9 000000f3 000000ed 000000e6     ................
    187c:	000000e0 000000da 000000d4 000000ce     ................
    188c:	000000c8 000000c2 000000bb 000000b5     ................
    189c:	000000af 000000a9 000000a3 0000009c     ................
    18ac:	00000096 00000090 0000008a 00000084     ................
    18bc:	0000007d 00000077 00000071 0000006b     }...w...q...k...
    18cc:	00000064 0000005e 00000058 00000052     d...^...X...R...
    18dc:	0000004b 00000045 0000003f 00000039     K...E...?...9...
    18ec:	00000032 0000002c 00000026 0000001f     2...,...&.......
    18fc:	00000019 00000013 0000000d 00000006     ................
    190c:	00000000 fffffffa fffffff3 ffffffed     ................
    191c:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
    192c:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
    193c:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
    194c:	ffffff9c ffffff95 ffffff8f ffffff89     ................
    195c:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
    196c:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
    197c:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
    198c:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
    199c:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
    19ac:	ffffff07 ffffff01 fffffefb fffffef5     ................
    19bc:	fffffeef fffffee9 fffffee3 fffffedd     ................
    19cc:	fffffed7 fffffed1 fffffecb fffffec5     ................
    19dc:	fffffebf fffffeb9 fffffeb3 fffffead     ................
    19ec:	fffffea7 fffffea1 fffffe9b fffffe95     ................
    19fc:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
    1a0c:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
    1a1c:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
    1a2c:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
    1a3c:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
    1a4c:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
    1a5c:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
    1a6c:	fffffdf2 fffffdec fffffde7 fffffde1     ................
    1a7c:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
    1a8c:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
    1a9c:	fffffdb2 fffffdad fffffda8 fffffda3     ................
    1aac:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
    1abc:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
    1acc:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
    1adc:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
    1aec:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
    1afc:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
    1b0c:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
    1b1c:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
    1b2c:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
    1b3c:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
    1b4c:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
    1b5c:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
    1b6c:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
    1b7c:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
    1b8c:	fffffcad fffffca9 fffffca6 fffffca2     ................
    1b9c:	fffffc9f fffffc9c fffffc98 fffffc95     ................
    1bac:	fffffc92 fffffc8e fffffc8b fffffc88     ................
    1bbc:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
    1bcc:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
    1bdc:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
    1bec:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
    1bfc:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
    1c0c:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
    1c1c:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
    1c2c:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
    1c3c:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
    1c4c:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
    1c5c:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
    1c6c:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
    1c7c:	fffffc19 fffffc18 fffffc16 fffffc15     ................
    1c8c:	fffffc14 fffffc12 fffffc11 fffffc10     ................
    1c9c:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
    1cac:	fffffc0b fffffc0a fffffc09 fffffc08     ................
    1cbc:	fffffc08 fffffc07 fffffc06 fffffc06     ................
    1ccc:	fffffc05 fffffc04 fffffc04 fffffc03     ................
    1cdc:	fffffc03 fffffc02 fffffc02 fffffc02     ................
    1cec:	fffffc01 fffffc01 fffffc01 fffffc00     ................
    1cfc:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1d0c:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1d1c:	fffffc00 fffffc00 fffffc01 fffffc01     ................
    1d2c:	fffffc01 fffffc02 fffffc02 fffffc02     ................
    1d3c:	fffffc03 fffffc03 fffffc04 fffffc04     ................
    1d4c:	fffffc05 fffffc06 fffffc06 fffffc07     ................
    1d5c:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
    1d6c:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
    1d7c:	fffffc0f fffffc10 fffffc11 fffffc12     ................
    1d8c:	fffffc14 fffffc15 fffffc16 fffffc18     ................
    1d9c:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
    1dac:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
    1dbc:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
    1dcc:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
    1ddc:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
    1dec:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
    1dfc:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
    1e0c:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
    1e1c:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
    1e2c:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
    1e3c:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
    1e4c:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
    1e5c:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
    1e6c:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
    1e7c:	fffffc9f fffffca2 fffffca6 fffffca9     ................
    1e8c:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
    1e9c:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
    1eac:	fffffcca fffffccd fffffcd1 fffffcd5     ................
    1ebc:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
    1ecc:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
    1edc:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
    1eec:	fffffd09 fffffd0d fffffd12 fffffd16     ................
    1efc:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
    1f0c:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
    1f1c:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
    1f2c:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
    1f3c:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
    1f4c:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
    1f5c:	fffffd8a fffffd8f fffffd94 fffffd99     ................
    1f6c:	fffffd9e fffffda3 fffffda8 fffffdad     ................
    1f7c:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
    1f8c:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
    1f9c:	fffffddc fffffde1 fffffde7 fffffdec     ................
    1fac:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
    1fbc:	fffffe07 fffffe0d fffffe12 fffffe18     ................
    1fcc:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
    1fdc:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
    1fec:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
    1ffc:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
    200c:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
    201c:	fffffe8f fffffe95 fffffe9b fffffea1     ................
    202c:	fffffea7 fffffead fffffeb3 fffffeb9     ................
    203c:	fffffebf fffffec5 fffffecb fffffed1     ................
    204c:	fffffed7 fffffedd fffffee3 fffffee9     ................
    205c:	fffffeef fffffef5 fffffefb ffffff01     ................
    206c:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
    207c:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
    208c:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
    209c:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
    20ac:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
    20bc:	ffffff83 ffffff89 ffffff8f ffffff95     ................
    20cc:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
    20dc:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
    20ec:	ffffffce ffffffd4 ffffffda ffffffe1     ................
    20fc:	ffffffe7 ffffffed fffffff3 fffffffa     ................
    210c:	00000000 00000006 0000000d 00000013     ................
    211c:	00000019 0000001f 00000026 0000002c     ........&...,...
    212c:	00000032 00000039 0000003f 00000045     2...9...?...E...
    213c:	0000004b 00000052 00000058 0000005e     K...R...X...^...
    214c:	00000064 0000006b 00000071 00000077     d...k...q...w...
    215c:	0000007d 00000084 0000008a 00000090     }...............
    216c:	00000096 0000009c 000000a3 000000a9     ................
    217c:	000000af 000000b5 000000bb 000000c2     ................
    218c:	000000c8 000000ce 000000d4 000000da     ................
    219c:	000000e0 000000e6 000000ed 000000f3     ................
    21ac:	000000f9 000000ff 00000105 0000010b     ................
    21bc:	00000111 00000117 0000011d 00000123     ............#...
    21cc:	00000129 0000012f 00000135 0000013b     ).../...5...;...
    21dc:	00000141 00000147 0000014d 00000153     A...G...M...S...
    21ec:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
    21fc:	00000171 00000176 0000017c 00000182     q...v...|.......
    220c:	00000188 0000018e 00000193 00000199     ................
    221c:	0000019f 000001a5 000001aa 000001b0     ................
    222c:	000001b6 000001bb 000001c1 000001c7     ................
    223c:	000001cc 000001d2 000001d8 000001dd     ................
    224c:	000001e3 000001e8 000001ee 000001f3     ................
    225c:	000001f9 000001fe 00000204 00000209     ................
    226c:	0000020e 00000214 00000219 0000021f     ................
    227c:	00000224 00000229 0000022e 00000234     $...).......4...
    228c:	00000239 0000023e 00000243 00000248     9...>...C...H...
    229c:	0000024e 00000253 00000258 0000025d     N...S...X...]...
    22ac:	00000262 00000267 0000026c 00000271     b...g...l...q...
    22bc:	00000276 0000027b 00000280 00000285     v...{...........
    22cc:	0000028a 0000028e 00000293 00000298     ................
    22dc:	0000029d 000002a2 000002a6 000002ab     ................
    22ec:	000002b0 000002b4 000002b9 000002be     ................
    22fc:	000002c2 000002c7 000002cb 000002d0     ................
    230c:	000002d4 000002d9 000002dd 000002e1     ................
    231c:	000002e6 000002ea 000002ee 000002f3     ................
    232c:	000002f7 000002fb 000002ff 00000303     ................
    233c:	00000307 0000030b 00000310 00000314     ................
    234c:	00000318 0000031c 0000031f 00000323     ............#...
    235c:	00000327 0000032b 0000032f 00000333     '...+.../...3...
    236c:	00000336 0000033a 0000033e 00000342     6...:...>...B...
    237c:	00000345 00000349 0000034c 00000350     E...I...L...P...
    238c:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
    239c:	00000361 00000364 00000368 0000036b     a...d...h...k...
    23ac:	0000036e 00000372 00000375 00000378     n...r...u...x...
    23bc:	0000037b 0000037e 00000381 00000384     {...~...........
    23cc:	00000387 0000038a 0000038d 00000390     ................
    23dc:	00000393 00000395 00000398 0000039b     ................
    23ec:	0000039e 000003a0 000003a3 000003a6     ................
    23fc:	000003a8 000003ab 000003ad 000003b0     ................
    240c:	000003b2 000003b4 000003b7 000003b9     ................
    241c:	000003bb 000003be 000003c0 000003c2     ................
    242c:	000003c4 000003c6 000003c8 000003ca     ................
    243c:	000003cc 000003ce 000003d0 000003d2     ................
    244c:	000003d4 000003d6 000003d7 000003d9     ................
    245c:	000003db 000003dd 000003de 000003e0     ................
    246c:	000003e1 000003e3 000003e4 000003e6     ................
    247c:	000003e7 000003e8 000003ea 000003eb     ................
    248c:	000003ec 000003ee 000003ef 000003f0     ................
    249c:	000003f1 000003f2 000003f3 000003f4     ................
    24ac:	000003f5 000003f6 000003f7 000003f8     ................
    24bc:	000003f8 000003f9 000003fa 000003fa     ................
    24cc:	000003fb 000003fc 000003fc 000003fd     ................
    24dc:	000003fd 000003fe 000003fe 000003fe     ................
    24ec:	000003ff 000003ff 000003ff 00000400     ................
    24fc:	00000400 00000400 00000400 00000400     ................
    250c:	000012ba 000012ec 0000131c 0000134a     ............J...
    251c:	00001284 00001378 00000080 0000004c     ....x.......L...
    252c:	00000028 00000014 0000000a 00000005     (...............
    253c:	00000003 00000001 000002d4 00000288     ................
    254c:	00000274 0000026f 0000026f 0000026e     t...o...o...n...
    255c:	0000026e 0000026e                       n...n...
