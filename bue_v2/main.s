
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 bd 0a 00 00 1d 0b 00 00 1d 0b 00 00     ... ............
	...
      2c:	1d 0b 00 00 00 00 00 00 00 00 00 00 1d 0b 00 00     ................
      3c:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      4c:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      5c:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      6c:	1d 0b 00 00 1d 0b 00 00 91 0a 00 00 1d 0b 00 00     ................
      7c:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      8c:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      9c:	1d 0b 00 00 1d 0b 00 00 00 00 00 00 00 00 00 00     ................
      ac:	1d 0b 00 00 1d 0b 00 00 1d 0b 00 00 1d 0b 00 00     ................
      bc:	1d 0b 00 00                                         ....

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
     654:	f000 fa66 	bl	b24 <adc_dma_init>
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
     6d0:	f000 faae 	bl	c30 <reg_init>
     6d4:	2396      	movs	r3, #150	; 0x96
     6d6:	009a      	lsls	r2, r3, #2
     6d8:	2324      	movs	r3, #36	; 0x24
     6da:	18fb      	adds	r3, r7, r3
     6dc:	21c8      	movs	r1, #200	; 0xc8
     6de:	0018      	movs	r0, r3
     6e0:	f000 faa6 	bl	c30 <reg_init>
     6e4:	23fa      	movs	r3, #250	; 0xfa
     6e6:	011a      	lsls	r2, r3, #4
     6e8:	2314      	movs	r3, #20
     6ea:	18fb      	adds	r3, r7, r3
     6ec:	2100      	movs	r1, #0
     6ee:	0018      	movs	r0, r3
     6f0:	f000 fa9e 	bl	c30 <reg_init>
     6f4:	4ad6      	ldr	r2, [pc, #856]	; (a50 <main+0x3d0>)
     6f6:	1d3b      	adds	r3, r7, #4
     6f8:	2100      	movs	r1, #0
     6fa:	0018      	movs	r0, r3
     6fc:	f000 fa98 	bl	c30 <reg_init>
     700:	4bd4      	ldr	r3, [pc, #848]	; (a54 <main+0x3d4>)
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
     716:	4bd0      	ldr	r3, [pc, #832]	; (a58 <main+0x3d8>)
     718:	2200      	movs	r2, #0
     71a:	601a      	str	r2, [r3, #0]
     71c:	4bcf      	ldr	r3, [pc, #828]	; (a5c <main+0x3dc>)
     71e:	2200      	movs	r2, #0
     720:	601a      	str	r2, [r3, #0]
     722:	2300      	movs	r3, #0
     724:	2294      	movs	r2, #148	; 0x94
     726:	18ba      	adds	r2, r7, r2
     728:	6013      	str	r3, [r2, #0]
     72a:	e040      	b.n	7ae <main+0x12e>
     72c:	f000 fa4e 	bl	bcc <adc_dma_wait>
     730:	4bcb      	ldr	r3, [pc, #812]	; (a60 <main+0x3e0>)
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
     746:	4bc6      	ldr	r3, [pc, #792]	; (a60 <main+0x3e0>)
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
     75c:	4bc0      	ldr	r3, [pc, #768]	; (a60 <main+0x3e0>)
     75e:	68db      	ldr	r3, [r3, #12]
     760:	051b      	lsls	r3, r3, #20
     762:	0d1a      	lsrs	r2, r3, #20
     764:	4bbc      	ldr	r3, [pc, #752]	; (a58 <main+0x3d8>)
     766:	681b      	ldr	r3, [r3, #0]
     768:	18d3      	adds	r3, r2, r3
     76a:	001a      	movs	r2, r3
     76c:	4bba      	ldr	r3, [pc, #744]	; (a58 <main+0x3d8>)
     76e:	601a      	str	r2, [r3, #0]
     770:	4bbc      	ldr	r3, [pc, #752]	; (a64 <main+0x3e4>)
     772:	689b      	ldr	r3, [r3, #8]
     774:	051b      	lsls	r3, r3, #20
     776:	0d1b      	lsrs	r3, r3, #20
     778:	0018      	movs	r0, r3
     77a:	f7ff ff39 	bl	5f0 <g2b>
     77e:	0002      	movs	r2, r0
     780:	4bb6      	ldr	r3, [pc, #728]	; (a5c <main+0x3dc>)
     782:	681b      	ldr	r3, [r3, #0]
     784:	18d3      	adds	r3, r2, r3
     786:	001a      	movs	r2, r3
     788:	4bb4      	ldr	r3, [pc, #720]	; (a5c <main+0x3dc>)
     78a:	601a      	str	r2, [r3, #0]
     78c:	4bb4      	ldr	r3, [pc, #720]	; (a60 <main+0x3e0>)
     78e:	681b      	ldr	r3, [r3, #0]
     790:	051b      	lsls	r3, r3, #20
     792:	0d1a      	lsrs	r2, r3, #20
     794:	0013      	movs	r3, r2
     796:	009b      	lsls	r3, r3, #2
     798:	189b      	adds	r3, r3, r2
     79a:	0018      	movs	r0, r3
     79c:	f000 fe44 	bl	1428 <mfilter>
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
     7b4:	4aac      	ldr	r2, [pc, #688]	; (a68 <main+0x3e8>)
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
     7d6:	4ba0      	ldr	r3, [pc, #640]	; (a58 <main+0x3d8>)
     7d8:	681b      	ldr	r3, [r3, #0]
     7da:	129a      	asrs	r2, r3, #10
     7dc:	4b9e      	ldr	r3, [pc, #632]	; (a58 <main+0x3d8>)
     7de:	601a      	str	r2, [r3, #0]
     7e0:	4b9d      	ldr	r3, [pc, #628]	; (a58 <main+0x3d8>)
     7e2:	681a      	ldr	r2, [r3, #0]
     7e4:	4ba1      	ldr	r3, [pc, #644]	; (a6c <main+0x3ec>)
     7e6:	601a      	str	r2, [r3, #0]
     7e8:	4b9c      	ldr	r3, [pc, #624]	; (a5c <main+0x3dc>)
     7ea:	681b      	ldr	r3, [r3, #0]
     7ec:	129a      	asrs	r2, r3, #10
     7ee:	4b9b      	ldr	r3, [pc, #620]	; (a5c <main+0x3dc>)
     7f0:	601a      	str	r2, [r3, #0]
     7f2:	f000 f9eb 	bl	bcc <adc_dma_wait>
     7f6:	4b9e      	ldr	r3, [pc, #632]	; (a70 <main+0x3f0>)
     7f8:	4a9d      	ldr	r2, [pc, #628]	; (a70 <main+0x3f0>)
     7fa:	6812      	ldr	r2, [r2, #0]
     7fc:	2140      	movs	r1, #64	; 0x40
     7fe:	430a      	orrs	r2, r1
     800:	601a      	str	r2, [r3, #0]
     802:	4b97      	ldr	r3, [pc, #604]	; (a60 <main+0x3e0>)
     804:	681b      	ldr	r3, [r3, #0]
     806:	051b      	lsls	r3, r3, #20
     808:	0d1a      	lsrs	r2, r3, #20
     80a:	0013      	movs	r3, r2
     80c:	009b      	lsls	r3, r3, #2
     80e:	189b      	adds	r3, r3, r2
     810:	0018      	movs	r0, r3
     812:	f000 fe09 	bl	1428 <mfilter>
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
     830:	1d5a      	adds	r2, r3, #5
     832:	32ff      	adds	r2, #255	; 0xff
     834:	4b8d      	ldr	r3, [pc, #564]	; (a6c <main+0x3ec>)
     836:	601a      	str	r2, [r3, #0]
     838:	4b8c      	ldr	r3, [pc, #560]	; (a6c <main+0x3ec>)
     83a:	681b      	ldr	r3, [r3, #0]
     83c:	4a8d      	ldr	r2, [pc, #564]	; (a74 <main+0x3f4>)
     83e:	4293      	cmp	r3, r2
     840:	dd03      	ble.n	84a <main+0x1ca>
     842:	4b8a      	ldr	r3, [pc, #552]	; (a6c <main+0x3ec>)
     844:	4a8b      	ldr	r2, [pc, #556]	; (a74 <main+0x3f4>)
     846:	601a      	str	r2, [r3, #0]
     848:	46c0      	nop			; (mov r8, r8)
     84a:	4b88      	ldr	r3, [pc, #544]	; (a6c <main+0x3ec>)
     84c:	681b      	ldr	r3, [r3, #0]
     84e:	4a8a      	ldr	r2, [pc, #552]	; (a78 <main+0x3f8>)
     850:	4293      	cmp	r3, r2
     852:	dc03      	bgt.n	85c <main+0x1dc>
     854:	4b85      	ldr	r3, [pc, #532]	; (a6c <main+0x3ec>)
     856:	4a89      	ldr	r2, [pc, #548]	; (a7c <main+0x3fc>)
     858:	601a      	str	r2, [r3, #0]
     85a:	46c0      	nop			; (mov r8, r8)
     85c:	4b80      	ldr	r3, [pc, #512]	; (a60 <main+0x3e0>)
     85e:	685b      	ldr	r3, [r3, #4]
     860:	051b      	lsls	r3, r3, #20
     862:	0d1a      	lsrs	r2, r3, #20
     864:	2390      	movs	r3, #144	; 0x90
     866:	18fb      	adds	r3, r7, r3
     868:	681b      	ldr	r3, [r3, #0]
     86a:	1ad3      	subs	r3, r2, r3
     86c:	673b      	str	r3, [r7, #112]	; 0x70
     86e:	4b7c      	ldr	r3, [pc, #496]	; (a60 <main+0x3e0>)
     870:	689b      	ldr	r3, [r3, #8]
     872:	051b      	lsls	r3, r3, #20
     874:	0d1a      	lsrs	r2, r3, #20
     876:	238c      	movs	r3, #140	; 0x8c
     878:	18fb      	adds	r3, r7, r3
     87a:	681b      	ldr	r3, [r3, #0]
     87c:	1ad3      	subs	r3, r2, r3
     87e:	66fb      	str	r3, [r7, #108]	; 0x6c
     880:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     882:	425a      	negs	r2, r3
     884:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     886:	1ad3      	subs	r3, r2, r3
     888:	66bb      	str	r3, [r7, #104]	; 0x68
     88a:	4b75      	ldr	r3, [pc, #468]	; (a60 <main+0x3e0>)
     88c:	68db      	ldr	r3, [r3, #12]
     88e:	051b      	lsls	r3, r3, #20
     890:	0d1a      	lsrs	r2, r3, #20
     892:	4b7b      	ldr	r3, [pc, #492]	; (a80 <main+0x400>)
     894:	601a      	str	r2, [r3, #0]
     896:	4b73      	ldr	r3, [pc, #460]	; (a64 <main+0x3e4>)
     898:	689b      	ldr	r3, [r3, #8]
     89a:	051b      	lsls	r3, r3, #20
     89c:	0d1b      	lsrs	r3, r3, #20
     89e:	0018      	movs	r0, r3
     8a0:	f7ff fea6 	bl	5f0 <g2b>
     8a4:	0003      	movs	r3, r0
     8a6:	667b      	str	r3, [r7, #100]	; 0x64
     8a8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     8aa:	059b      	lsls	r3, r3, #22
     8ac:	0d9b      	lsrs	r3, r3, #22
     8ae:	67bb      	str	r3, [r7, #120]	; 0x78
     8b0:	2384      	movs	r3, #132	; 0x84
     8b2:	18fb      	adds	r3, r7, r3
     8b4:	681b      	ldr	r3, [r3, #0]
     8b6:	3301      	adds	r3, #1
     8b8:	2284      	movs	r2, #132	; 0x84
     8ba:	18ba      	adds	r2, r7, r2
     8bc:	6013      	str	r3, [r2, #0]
     8be:	2384      	movs	r3, #132	; 0x84
     8c0:	18fb      	adds	r3, r7, r3
     8c2:	681b      	ldr	r3, [r3, #0]
     8c4:	2207      	movs	r2, #7
     8c6:	4013      	ands	r3, r2
     8c8:	d151      	bne.n	96e <main+0x2ee>
     8ca:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     8cc:	003a      	movs	r2, r7
     8ce:	0011      	movs	r1, r2
     8d0:	0018      	movs	r0, r3
     8d2:	f000 fd83 	bl	13dc <get_speed>
     8d6:	0003      	movs	r3, r0
     8d8:	663b      	str	r3, [r7, #96]	; 0x60
     8da:	4b5e      	ldr	r3, [pc, #376]	; (a54 <main+0x3d4>)
     8dc:	681a      	ldr	r2, [r3, #0]
     8de:	683b      	ldr	r3, [r7, #0]
     8e0:	1ad1      	subs	r1, r2, r3
     8e2:	1d3b      	adds	r3, r7, #4
     8e4:	2200      	movs	r2, #0
     8e6:	0018      	movs	r0, r3
     8e8:	f000 f9a8 	bl	c3c <reg_update>
     8ec:	1d3b      	adds	r3, r7, #4
     8ee:	68db      	ldr	r3, [r3, #12]
     8f0:	131b      	asrs	r3, r3, #12
     8f2:	677b      	str	r3, [r7, #116]	; 0x74
     8f4:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     8f6:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     8f8:	1ad1      	subs	r1, r2, r3
     8fa:	2314      	movs	r3, #20
     8fc:	18fb      	adds	r3, r7, r3
     8fe:	2200      	movs	r2, #0
     900:	0018      	movs	r0, r3
     902:	f000 f99b 	bl	c3c <reg_update>
     906:	2314      	movs	r3, #20
     908:	18fb      	adds	r3, r7, r3
     90a:	68db      	ldr	r3, [r3, #12]
     90c:	131b      	asrs	r3, r3, #12
     90e:	2280      	movs	r2, #128	; 0x80
     910:	18ba      	adds	r2, r7, r2
     912:	6013      	str	r3, [r2, #0]
     914:	2380      	movs	r3, #128	; 0x80
     916:	18fb      	adds	r3, r7, r3
     918:	681a      	ldr	r2, [r3, #0]
     91a:	23fa      	movs	r3, #250	; 0xfa
     91c:	00db      	lsls	r3, r3, #3
     91e:	429a      	cmp	r2, r3
     920:	dd04      	ble.n	92c <main+0x2ac>
     922:	23fa      	movs	r3, #250	; 0xfa
     924:	00db      	lsls	r3, r3, #3
     926:	2280      	movs	r2, #128	; 0x80
     928:	18ba      	adds	r2, r7, r2
     92a:	6013      	str	r3, [r2, #0]
     92c:	2380      	movs	r3, #128	; 0x80
     92e:	18fb      	adds	r3, r7, r3
     930:	681b      	ldr	r3, [r3, #0]
     932:	4a54      	ldr	r2, [pc, #336]	; (a84 <main+0x404>)
     934:	4293      	cmp	r3, r2
     936:	da03      	bge.n	940 <main+0x2c0>
     938:	4b52      	ldr	r3, [pc, #328]	; (a84 <main+0x404>)
     93a:	2280      	movs	r2, #128	; 0x80
     93c:	18ba      	adds	r2, r7, r2
     93e:	6013      	str	r3, [r2, #0]
     940:	4a51      	ldr	r2, [pc, #324]	; (a88 <main+0x408>)
     942:	4b46      	ldr	r3, [pc, #280]	; (a5c <main+0x3dc>)
     944:	6819      	ldr	r1, [r3, #0]
     946:	683b      	ldr	r3, [r7, #0]
     948:	1acb      	subs	r3, r1, r3
     94a:	111b      	asrs	r3, r3, #4
     94c:	2180      	movs	r1, #128	; 0x80
     94e:	0109      	lsls	r1, r1, #4
     950:	468c      	mov	ip, r1
     952:	4463      	add	r3, ip
     954:	6053      	str	r3, [r2, #4]
     956:	4b45      	ldr	r3, [pc, #276]	; (a6c <main+0x3ec>)
     958:	681a      	ldr	r2, [r3, #0]
     95a:	4b3f      	ldr	r3, [pc, #252]	; (a58 <main+0x3d8>)
     95c:	681b      	ldr	r3, [r3, #0]
     95e:	1ad2      	subs	r2, r2, r3
     960:	0013      	movs	r3, r2
     962:	00db      	lsls	r3, r3, #3
     964:	1a9b      	subs	r3, r3, r2
     966:	00da      	lsls	r2, r3, #3
     968:	1ad2      	subs	r2, r2, r3
     96a:	4b3a      	ldr	r3, [pc, #232]	; (a54 <main+0x3d4>)
     96c:	601a      	str	r2, [r3, #0]
     96e:	6fbb      	ldr	r3, [r7, #120]	; 0x78
     970:	22d0      	movs	r2, #208	; 0xd0
     972:	0092      	lsls	r2, r2, #2
     974:	4694      	mov	ip, r2
     976:	4463      	add	r3, ip
     978:	059b      	lsls	r3, r3, #22
     97a:	0d9b      	lsrs	r3, r3, #22
     97c:	67bb      	str	r3, [r7, #120]	; 0x78
     97e:	2344      	movs	r3, #68	; 0x44
     980:	18fb      	adds	r3, r7, r3
     982:	6f3a      	ldr	r2, [r7, #112]	; 0x70
     984:	601a      	str	r2, [r3, #0]
     986:	2344      	movs	r3, #68	; 0x44
     988:	18fb      	adds	r3, r7, r3
     98a:	6eba      	ldr	r2, [r7, #104]	; 0x68
     98c:	605a      	str	r2, [r3, #4]
     98e:	2344      	movs	r3, #68	; 0x44
     990:	18fb      	adds	r3, r7, r3
     992:	6efa      	ldr	r2, [r7, #108]	; 0x6c
     994:	609a      	str	r2, [r3, #8]
     996:	6fba      	ldr	r2, [r7, #120]	; 0x78
     998:	2350      	movs	r3, #80	; 0x50
     99a:	18f9      	adds	r1, r7, r3
     99c:	2344      	movs	r3, #68	; 0x44
     99e:	18fb      	adds	r3, r7, r3
     9a0:	0018      	movs	r0, r3
     9a2:	f000 f971 	bl	c88 <abc_to_dq>
     9a6:	2350      	movs	r3, #80	; 0x50
     9a8:	18fb      	adds	r3, r7, r3
     9aa:	681b      	ldr	r3, [r3, #0]
     9ac:	425b      	negs	r3, r3
     9ae:	65fb      	str	r3, [r7, #92]	; 0x5c
     9b0:	2350      	movs	r3, #80	; 0x50
     9b2:	18fb      	adds	r3, r7, r3
     9b4:	685b      	ldr	r3, [r3, #4]
     9b6:	2280      	movs	r2, #128	; 0x80
     9b8:	18ba      	adds	r2, r7, r2
     9ba:	6812      	ldr	r2, [r2, #0]
     9bc:	1ad3      	subs	r3, r2, r3
     9be:	65bb      	str	r3, [r7, #88]	; 0x58
     9c0:	2388      	movs	r3, #136	; 0x88
     9c2:	18fb      	adds	r3, r7, r3
     9c4:	681a      	ldr	r2, [r3, #0]
     9c6:	6df9      	ldr	r1, [r7, #92]	; 0x5c
     9c8:	2334      	movs	r3, #52	; 0x34
     9ca:	18fb      	adds	r3, r7, r3
     9cc:	0018      	movs	r0, r3
     9ce:	f000 f935 	bl	c3c <reg_update>
     9d2:	2388      	movs	r3, #136	; 0x88
     9d4:	18fb      	adds	r3, r7, r3
     9d6:	681a      	ldr	r2, [r3, #0]
     9d8:	6db9      	ldr	r1, [r7, #88]	; 0x58
     9da:	2324      	movs	r3, #36	; 0x24
     9dc:	18fb      	adds	r3, r7, r3
     9de:	0018      	movs	r0, r3
     9e0:	f000 f92c 	bl	c3c <reg_update>
     9e4:	2334      	movs	r3, #52	; 0x34
     9e6:	18fb      	adds	r3, r7, r3
     9e8:	68db      	ldr	r3, [r3, #12]
     9ea:	109a      	asrs	r2, r3, #2
     9ec:	2350      	movs	r3, #80	; 0x50
     9ee:	18fb      	adds	r3, r7, r3
     9f0:	601a      	str	r2, [r3, #0]
     9f2:	2324      	movs	r3, #36	; 0x24
     9f4:	18fb      	adds	r3, r7, r3
     9f6:	68db      	ldr	r3, [r3, #12]
     9f8:	109a      	asrs	r2, r3, #2
     9fa:	2350      	movs	r3, #80	; 0x50
     9fc:	18fb      	adds	r3, r7, r3
     9fe:	605a      	str	r2, [r3, #4]
     a00:	6fba      	ldr	r2, [r7, #120]	; 0x78
     a02:	2350      	movs	r3, #80	; 0x50
     a04:	18f9      	adds	r1, r7, r3
     a06:	2344      	movs	r3, #68	; 0x44
     a08:	18fb      	adds	r3, r7, r3
     a0a:	0018      	movs	r0, r3
     a0c:	f000 fb68 	bl	10e0 <svpwm>
     a10:	0003      	movs	r3, r0
     a12:	2288      	movs	r2, #136	; 0x88
     a14:	18ba      	adds	r2, r7, r2
     a16:	6013      	str	r3, [r2, #0]
     a18:	4a1c      	ldr	r2, [pc, #112]	; (a8c <main+0x40c>)
     a1a:	2344      	movs	r3, #68	; 0x44
     a1c:	18fb      	adds	r3, r7, r3
     a1e:	681b      	ldr	r3, [r3, #0]
     a20:	2180      	movs	r1, #128	; 0x80
     a22:	0089      	lsls	r1, r1, #2
     a24:	468c      	mov	ip, r1
     a26:	4463      	add	r3, ip
     a28:	6113      	str	r3, [r2, #16]
     a2a:	4a18      	ldr	r2, [pc, #96]	; (a8c <main+0x40c>)
     a2c:	2344      	movs	r3, #68	; 0x44
     a2e:	18fb      	adds	r3, r7, r3
     a30:	685b      	ldr	r3, [r3, #4]
     a32:	2180      	movs	r1, #128	; 0x80
     a34:	0089      	lsls	r1, r1, #2
     a36:	468c      	mov	ip, r1
     a38:	4463      	add	r3, ip
     a3a:	6153      	str	r3, [r2, #20]
     a3c:	4a13      	ldr	r2, [pc, #76]	; (a8c <main+0x40c>)
     a3e:	2344      	movs	r3, #68	; 0x44
     a40:	18fb      	adds	r3, r7, r3
     a42:	689b      	ldr	r3, [r3, #8]
     a44:	2180      	movs	r1, #128	; 0x80
     a46:	0089      	lsls	r1, r1, #2
     a48:	468c      	mov	ip, r1
     a4a:	4463      	add	r3, ip
     a4c:	6193      	str	r3, [r2, #24]
     a4e:	e6d0      	b.n	7f2 <main+0x172>
     a50:	00001770 	.word	0x00001770
     a54:	20000004 	.word	0x20000004
     a58:	2000000c 	.word	0x2000000c
     a5c:	20000010 	.word	0x20000010
     a60:	20100200 	.word	0x20100200
     a64:	400a0000 	.word	0x400a0000
     a68:	000003ff 	.word	0x000003ff
     a6c:	20000008 	.word	0x20000008
     a70:	400b8000 	.word	0x400b8000
     a74:	00000d16 	.word	0x00000d16
     a78:	00000289 	.word	0x00000289
     a7c:	0000028a 	.word	0x0000028a
     a80:	20000014 	.word	0x20000014
     a84:	fffff830 	.word	0xfffff830
     a88:	40090000 	.word	0x40090000
     a8c:	40098000 	.word	0x40098000

00000a90 <TIMER4_Handler>:
     a90:	b580      	push	{r7, lr}
     a92:	af00      	add	r7, sp, #0
     a94:	4b07      	ldr	r3, [pc, #28]	; (ab4 <TIMER4_Handler+0x24>)
     a96:	2200      	movs	r2, #0
     a98:	655a      	str	r2, [r3, #84]	; 0x54
     a9a:	4b07      	ldr	r3, [pc, #28]	; (ab8 <TIMER4_Handler+0x28>)
     a9c:	681b      	ldr	r3, [r3, #0]
     a9e:	1c5a      	adds	r2, r3, #1
     aa0:	4b05      	ldr	r3, [pc, #20]	; (ab8 <TIMER4_Handler+0x28>)
     aa2:	601a      	str	r2, [r3, #0]
     aa4:	f000 f87e 	bl	ba4 <adc_dma_start>
     aa8:	f7ff fdba 	bl	620 <encoder_start>
     aac:	46c0      	nop			; (mov r8, r8)
     aae:	46bd      	mov	sp, r7
     ab0:	bd80      	pop	{r7, pc}
     ab2:	46c0      	nop			; (mov r8, r8)
     ab4:	40098000 	.word	0x40098000
     ab8:	20000018 	.word	0x20000018

00000abc <handler_reset>:
     abc:	b580      	push	{r7, lr}
     abe:	b082      	sub	sp, #8
     ac0:	af00      	add	r7, sp, #0
     ac2:	4b11      	ldr	r3, [pc, #68]	; (b08 <handler_reset+0x4c>)
     ac4:	607b      	str	r3, [r7, #4]
     ac6:	4b11      	ldr	r3, [pc, #68]	; (b0c <handler_reset+0x50>)
     ac8:	603b      	str	r3, [r7, #0]
     aca:	e007      	b.n	adc <handler_reset+0x20>
     acc:	683b      	ldr	r3, [r7, #0]
     ace:	1d1a      	adds	r2, r3, #4
     ad0:	603a      	str	r2, [r7, #0]
     ad2:	687a      	ldr	r2, [r7, #4]
     ad4:	1d11      	adds	r1, r2, #4
     ad6:	6079      	str	r1, [r7, #4]
     ad8:	6812      	ldr	r2, [r2, #0]
     ada:	601a      	str	r2, [r3, #0]
     adc:	683a      	ldr	r2, [r7, #0]
     ade:	4b0c      	ldr	r3, [pc, #48]	; (b10 <handler_reset+0x54>)
     ae0:	429a      	cmp	r2, r3
     ae2:	d3f3      	bcc.n	acc <handler_reset+0x10>
     ae4:	4b0b      	ldr	r3, [pc, #44]	; (b14 <handler_reset+0x58>)
     ae6:	603b      	str	r3, [r7, #0]
     ae8:	e004      	b.n	af4 <handler_reset+0x38>
     aea:	683b      	ldr	r3, [r7, #0]
     aec:	1d1a      	adds	r2, r3, #4
     aee:	603a      	str	r2, [r7, #0]
     af0:	2200      	movs	r2, #0
     af2:	601a      	str	r2, [r3, #0]
     af4:	683a      	ldr	r2, [r7, #0]
     af6:	4b08      	ldr	r3, [pc, #32]	; (b18 <handler_reset+0x5c>)
     af8:	429a      	cmp	r2, r3
     afa:	d3f6      	bcc.n	aea <handler_reset+0x2e>
     afc:	f7ff fdc0 	bl	680 <main>
     b00:	46c0      	nop			; (mov r8, r8)
     b02:	46bd      	mov	sp, r7
     b04:	b002      	add	sp, #8
     b06:	bd80      	pop	{r7, pc}
     b08:	000024a8 	.word	0x000024a8
     b0c:	20000000 	.word	0x20000000
     b10:	20000004 	.word	0x20000004
     b14:	20000004 	.word	0x20000004
     b18:	200000ac 	.word	0x200000ac

00000b1c <default_handler>:
     b1c:	b580      	push	{r7, lr}
     b1e:	af00      	add	r7, sp, #0
     b20:	e7fe      	b.n	b20 <default_handler+0x4>
     b22:	46c0      	nop			; (mov r8, r8)

00000b24 <adc_dma_init>:
     b24:	b580      	push	{r7, lr}
     b26:	af00      	add	r7, sp, #0
     b28:	4b18      	ldr	r3, [pc, #96]	; (b8c <adc_dma_init+0x68>)
     b2a:	4a18      	ldr	r2, [pc, #96]	; (b8c <adc_dma_init+0x68>)
     b2c:	69d2      	ldr	r2, [r2, #28]
     b2e:	2120      	movs	r1, #32
     b30:	430a      	orrs	r2, r1
     b32:	61da      	str	r2, [r3, #28]
     b34:	4b16      	ldr	r3, [pc, #88]	; (b90 <adc_dma_init+0x6c>)
     b36:	4a17      	ldr	r2, [pc, #92]	; (b94 <adc_dma_init+0x70>)
     b38:	609a      	str	r2, [r3, #8]
     b3a:	4b15      	ldr	r3, [pc, #84]	; (b90 <adc_dma_init+0x6c>)
     b3c:	2201      	movs	r2, #1
     b3e:	4252      	negs	r2, r2
     b40:	62da      	str	r2, [r3, #44]	; 0x2c
     b42:	4b13      	ldr	r3, [pc, #76]	; (b90 <adc_dma_init+0x6c>)
     b44:	2201      	movs	r2, #1
     b46:	4252      	negs	r2, r2
     b48:	621a      	str	r2, [r3, #32]
     b4a:	4b11      	ldr	r3, [pc, #68]	; (b90 <adc_dma_init+0x6c>)
     b4c:	2201      	movs	r2, #1
     b4e:	4252      	negs	r2, r2
     b50:	635a      	str	r2, [r3, #52]	; 0x34
     b52:	4b0f      	ldr	r3, [pc, #60]	; (b90 <adc_dma_init+0x6c>)
     b54:	2280      	movs	r2, #128	; 0x80
     b56:	05d2      	lsls	r2, r2, #23
     b58:	61da      	str	r2, [r3, #28]
     b5a:	4b0d      	ldr	r3, [pc, #52]	; (b90 <adc_dma_init+0x6c>)
     b5c:	2280      	movs	r2, #128	; 0x80
     b5e:	05d2      	lsls	r2, r2, #23
     b60:	625a      	str	r2, [r3, #36]	; 0x24
     b62:	4b0b      	ldr	r3, [pc, #44]	; (b90 <adc_dma_init+0x6c>)
     b64:	2201      	movs	r2, #1
     b66:	605a      	str	r2, [r3, #4]
     b68:	4a0a      	ldr	r2, [pc, #40]	; (b94 <adc_dma_init+0x70>)
     b6a:	23f0      	movs	r3, #240	; 0xf0
     b6c:	005b      	lsls	r3, r3, #1
     b6e:	490a      	ldr	r1, [pc, #40]	; (b98 <adc_dma_init+0x74>)
     b70:	50d1      	str	r1, [r2, r3]
     b72:	490a      	ldr	r1, [pc, #40]	; (b9c <adc_dma_init+0x78>)
     b74:	4a07      	ldr	r2, [pc, #28]	; (b94 <adc_dma_init+0x70>)
     b76:	23f2      	movs	r3, #242	; 0xf2
     b78:	005b      	lsls	r3, r3, #1
     b7a:	50d1      	str	r1, [r2, r3]
     b7c:	4a05      	ldr	r2, [pc, #20]	; (b94 <adc_dma_init+0x70>)
     b7e:	23f4      	movs	r3, #244	; 0xf4
     b80:	005b      	lsls	r3, r3, #1
     b82:	4907      	ldr	r1, [pc, #28]	; (ba0 <adc_dma_init+0x7c>)
     b84:	50d1      	str	r1, [r2, r3]
     b86:	46c0      	nop			; (mov r8, r8)
     b88:	46bd      	mov	sp, r7
     b8a:	bd80      	pop	{r7, pc}
     b8c:	40020000 	.word	0x40020000
     b90:	40028000 	.word	0x40028000
     b94:	20100000 	.word	0x20100000
     b98:	40088018 	.word	0x40088018
     b9c:	2010020c 	.word	0x2010020c
     ba0:	ae000031 	.word	0xae000031

00000ba4 <adc_dma_start>:
     ba4:	b580      	push	{r7, lr}
     ba6:	af00      	add	r7, sp, #0
     ba8:	4b06      	ldr	r3, [pc, #24]	; (bc4 <adc_dma_start+0x20>)
     baa:	4a06      	ldr	r2, [pc, #24]	; (bc4 <adc_dma_start+0x20>)
     bac:	6812      	ldr	r2, [r2, #0]
     bae:	2108      	movs	r1, #8
     bb0:	430a      	orrs	r2, r1
     bb2:	601a      	str	r2, [r3, #0]
     bb4:	4b04      	ldr	r3, [pc, #16]	; (bc8 <adc_dma_start+0x24>)
     bb6:	2280      	movs	r2, #128	; 0x80
     bb8:	05d2      	lsls	r2, r2, #23
     bba:	629a      	str	r2, [r3, #40]	; 0x28
     bbc:	46c0      	nop			; (mov r8, r8)
     bbe:	46bd      	mov	sp, r7
     bc0:	bd80      	pop	{r7, pc}
     bc2:	46c0      	nop			; (mov r8, r8)
     bc4:	40088000 	.word	0x40088000
     bc8:	40028000 	.word	0x40028000

00000bcc <adc_dma_wait>:
     bcc:	b580      	push	{r7, lr}
     bce:	af00      	add	r7, sp, #0
     bd0:	46c0      	nop			; (mov r8, r8)
     bd2:	4a0a      	ldr	r2, [pc, #40]	; (bfc <adc_dma_wait+0x30>)
     bd4:	23f4      	movs	r3, #244	; 0xf4
     bd6:	005b      	lsls	r3, r3, #1
     bd8:	58d3      	ldr	r3, [r2, r3]
     bda:	2207      	movs	r2, #7
     bdc:	4013      	ands	r3, r2
     bde:	d1f8      	bne.n	bd2 <adc_dma_wait+0x6>
     be0:	4b07      	ldr	r3, [pc, #28]	; (c00 <adc_dma_wait+0x34>)
     be2:	4a07      	ldr	r2, [pc, #28]	; (c00 <adc_dma_wait+0x34>)
     be4:	6812      	ldr	r2, [r2, #0]
     be6:	2108      	movs	r1, #8
     be8:	438a      	bics	r2, r1
     bea:	601a      	str	r2, [r3, #0]
     bec:	4a03      	ldr	r2, [pc, #12]	; (bfc <adc_dma_wait+0x30>)
     bee:	23f4      	movs	r3, #244	; 0xf4
     bf0:	005b      	lsls	r3, r3, #1
     bf2:	4904      	ldr	r1, [pc, #16]	; (c04 <adc_dma_wait+0x38>)
     bf4:	50d1      	str	r1, [r2, r3]
     bf6:	46c0      	nop			; (mov r8, r8)
     bf8:	46bd      	mov	sp, r7
     bfa:	bd80      	pop	{r7, pc}
     bfc:	20100000 	.word	0x20100000
     c00:	40088000 	.word	0x40088000
     c04:	ae000031 	.word	0xae000031

00000c08 <mycos>:
     c08:	4b02      	ldr	r3, [pc, #8]	; (c14 <mycos+0xc>)
     c0a:	0580      	lsls	r0, r0, #22
     c0c:	0d00      	lsrs	r0, r0, #20
     c0e:	58c0      	ldr	r0, [r0, r3]
     c10:	4770      	bx	lr
     c12:	46c0      	nop			; (mov r8, r8)
     c14:	00001450 	.word	0x00001450

00000c18 <mysin>:
     c18:	23c0      	movs	r3, #192	; 0xc0
     c1a:	009b      	lsls	r3, r3, #2
     c1c:	469c      	mov	ip, r3
     c1e:	4460      	add	r0, ip
     c20:	4b02      	ldr	r3, [pc, #8]	; (c2c <mysin+0x14>)
     c22:	0580      	lsls	r0, r0, #22
     c24:	0d00      	lsrs	r0, r0, #20
     c26:	58c0      	ldr	r0, [r0, r3]
     c28:	4770      	bx	lr
     c2a:	46c0      	nop			; (mov r8, r8)
     c2c:	00001450 	.word	0x00001450

00000c30 <reg_init>:
     c30:	2300      	movs	r3, #0
     c32:	6001      	str	r1, [r0, #0]
     c34:	6042      	str	r2, [r0, #4]
     c36:	6083      	str	r3, [r0, #8]
     c38:	60c3      	str	r3, [r0, #12]
     c3a:	4770      	bx	lr

00000c3c <reg_update>:
     c3c:	b510      	push	{r4, lr}
     c3e:	6804      	ldr	r4, [r0, #0]
     c40:	6883      	ldr	r3, [r0, #8]
     c42:	434c      	muls	r4, r1
     c44:	2a00      	cmp	r2, #0
     c46:	d004      	beq.n	c52 <reg_update+0x16>
     c48:	2b00      	cmp	r3, #0
     c4a:	dd09      	ble.n	c60 <reg_update+0x24>
     c4c:	2c00      	cmp	r4, #0
     c4e:	dd00      	ble.n	c52 <reg_update+0x16>
     c50:	2400      	movs	r4, #0
     c52:	6842      	ldr	r2, [r0, #4]
     c54:	18e3      	adds	r3, r4, r3
     c56:	4351      	muls	r1, r2
     c58:	18c9      	adds	r1, r1, r3
     c5a:	60c1      	str	r1, [r0, #12]
     c5c:	6083      	str	r3, [r0, #8]
     c5e:	bd10      	pop	{r4, pc}
     c60:	2b00      	cmp	r3, #0
     c62:	d0f6      	beq.n	c52 <reg_update+0x16>
     c64:	43e2      	mvns	r2, r4
     c66:	17d2      	asrs	r2, r2, #31
     c68:	4014      	ands	r4, r2
     c6a:	e7f2      	b.n	c52 <reg_update+0x16>

00000c6c <dot3>:
     c6c:	6803      	ldr	r3, [r0, #0]
     c6e:	680a      	ldr	r2, [r1, #0]
     c70:	b510      	push	{r4, lr}
     c72:	435a      	muls	r2, r3
     c74:	6844      	ldr	r4, [r0, #4]
     c76:	684b      	ldr	r3, [r1, #4]
     c78:	6880      	ldr	r0, [r0, #8]
     c7a:	4363      	muls	r3, r4
     c7c:	18d2      	adds	r2, r2, r3
     c7e:	688b      	ldr	r3, [r1, #8]
     c80:	4343      	muls	r3, r0
     c82:	18d0      	adds	r0, r2, r3
     c84:	bd10      	pop	{r4, pc}
     c86:	46c0      	nop			; (mov r8, r8)

00000c88 <abc_to_dq>:
     c88:	23c0      	movs	r3, #192	; 0xc0
     c8a:	b5f0      	push	{r4, r5, r6, r7, lr}
     c8c:	4647      	mov	r7, r8
     c8e:	009b      	lsls	r3, r3, #2
     c90:	18d3      	adds	r3, r2, r3
     c92:	4d1b      	ldr	r5, [pc, #108]	; (d00 <abc_to_dq+0x78>)
     c94:	059b      	lsls	r3, r3, #22
     c96:	0d1b      	lsrs	r3, r3, #20
     c98:	595b      	ldr	r3, [r3, r5]
     c9a:	b480      	push	{r7}
     c9c:	4698      	mov	r8, r3
     c9e:	4b19      	ldr	r3, [pc, #100]	; (d04 <abc_to_dq+0x7c>)
     ca0:	18d4      	adds	r4, r2, r3
     ca2:	05a4      	lsls	r4, r4, #22
     ca4:	4b18      	ldr	r3, [pc, #96]	; (d08 <abc_to_dq+0x80>)
     ca6:	0d24      	lsrs	r4, r4, #20
     ca8:	5967      	ldr	r7, [r4, r5]
     caa:	18d4      	adds	r4, r2, r3
     cac:	05a4      	lsls	r4, r4, #22
     cae:	4b17      	ldr	r3, [pc, #92]	; (d0c <abc_to_dq+0x84>)
     cb0:	0d24      	lsrs	r4, r4, #20
     cb2:	5966      	ldr	r6, [r4, r5]
     cb4:	18d4      	adds	r4, r2, r3
     cb6:	05a4      	lsls	r4, r4, #22
     cb8:	0d24      	lsrs	r4, r4, #20
     cba:	5964      	ldr	r4, [r4, r5]
     cbc:	6843      	ldr	r3, [r0, #4]
     cbe:	4363      	muls	r3, r4
     cc0:	0094      	lsls	r4, r2, #2
     cc2:	469c      	mov	ip, r3
     cc4:	3256      	adds	r2, #86	; 0x56
     cc6:	32ff      	adds	r2, #255	; 0xff
     cc8:	6803      	ldr	r3, [r0, #0]
     cca:	5964      	ldr	r4, [r4, r5]
     ccc:	0592      	lsls	r2, r2, #22
     cce:	0d12      	lsrs	r2, r2, #20
     cd0:	5955      	ldr	r5, [r2, r5]
     cd2:	435c      	muls	r4, r3
     cd4:	6883      	ldr	r3, [r0, #8]
     cd6:	4464      	add	r4, ip
     cd8:	435d      	muls	r5, r3
     cda:	4643      	mov	r3, r8
     cdc:	1964      	adds	r4, r4, r5
     cde:	12a4      	asrs	r4, r4, #10
     ce0:	600c      	str	r4, [r1, #0]
     ce2:	6802      	ldr	r2, [r0, #0]
     ce4:	435a      	muls	r2, r3
     ce6:	6843      	ldr	r3, [r0, #4]
     ce8:	437b      	muls	r3, r7
     cea:	18d3      	adds	r3, r2, r3
     cec:	6882      	ldr	r2, [r0, #8]
     cee:	4372      	muls	r2, r6
     cf0:	189b      	adds	r3, r3, r2
     cf2:	425b      	negs	r3, r3
     cf4:	129b      	asrs	r3, r3, #10
     cf6:	604b      	str	r3, [r1, #4]
     cf8:	bc04      	pop	{r2}
     cfa:	4690      	mov	r8, r2
     cfc:	bdf0      	pop	{r4, r5, r6, r7, pc}
     cfe:	46c0      	nop			; (mov r8, r8)
     d00:	00001450 	.word	0x00001450
     d04:	000005aa 	.word	0x000005aa
     d08:	00000455 	.word	0x00000455
     d0c:	000002aa 	.word	0x000002aa

00000d10 <dq_to_abc>:
     d10:	b570      	push	{r4, r5, r6, lr}
     d12:	4d1a      	ldr	r5, [pc, #104]	; (d7c <dq_to_abc+0x6c>)
     d14:	0093      	lsls	r3, r2, #2
     d16:	680c      	ldr	r4, [r1, #0]
     d18:	595b      	ldr	r3, [r3, r5]
     d1a:	684e      	ldr	r6, [r1, #4]
     d1c:	435c      	muls	r4, r3
     d1e:	23c0      	movs	r3, #192	; 0xc0
     d20:	009b      	lsls	r3, r3, #2
     d22:	18d3      	adds	r3, r2, r3
     d24:	059b      	lsls	r3, r3, #22
     d26:	0d1b      	lsrs	r3, r3, #20
     d28:	595b      	ldr	r3, [r3, r5]
     d2a:	4373      	muls	r3, r6
     d2c:	1ae3      	subs	r3, r4, r3
     d2e:	151b      	asrs	r3, r3, #20
     d30:	6003      	str	r3, [r0, #0]
     d32:	4b13      	ldr	r3, [pc, #76]	; (d80 <dq_to_abc+0x70>)
     d34:	680c      	ldr	r4, [r1, #0]
     d36:	18d3      	adds	r3, r2, r3
     d38:	059b      	lsls	r3, r3, #22
     d3a:	0d1b      	lsrs	r3, r3, #20
     d3c:	595b      	ldr	r3, [r3, r5]
     d3e:	684e      	ldr	r6, [r1, #4]
     d40:	435c      	muls	r4, r3
     d42:	4b10      	ldr	r3, [pc, #64]	; (d84 <dq_to_abc+0x74>)
     d44:	18d3      	adds	r3, r2, r3
     d46:	059b      	lsls	r3, r3, #22
     d48:	0d1b      	lsrs	r3, r3, #20
     d4a:	595b      	ldr	r3, [r3, r5]
     d4c:	4373      	muls	r3, r6
     d4e:	1ae3      	subs	r3, r4, r3
     d50:	151b      	asrs	r3, r3, #20
     d52:	6043      	str	r3, [r0, #4]
     d54:	0013      	movs	r3, r2
     d56:	3356      	adds	r3, #86	; 0x56
     d58:	33ff      	adds	r3, #255	; 0xff
     d5a:	059b      	lsls	r3, r3, #22
     d5c:	0d1b      	lsrs	r3, r3, #20
     d5e:	595b      	ldr	r3, [r3, r5]
     d60:	680c      	ldr	r4, [r1, #0]
     d62:	435c      	muls	r4, r3
     d64:	4b08      	ldr	r3, [pc, #32]	; (d88 <dq_to_abc+0x78>)
     d66:	469c      	mov	ip, r3
     d68:	4462      	add	r2, ip
     d6a:	0592      	lsls	r2, r2, #22
     d6c:	0d12      	lsrs	r2, r2, #20
     d6e:	5952      	ldr	r2, [r2, r5]
     d70:	684b      	ldr	r3, [r1, #4]
     d72:	4353      	muls	r3, r2
     d74:	1ae3      	subs	r3, r4, r3
     d76:	151b      	asrs	r3, r3, #20
     d78:	6083      	str	r3, [r0, #8]
     d7a:	bd70      	pop	{r4, r5, r6, pc}
     d7c:	00001450 	.word	0x00001450
     d80:	000002aa 	.word	0x000002aa
     d84:	000005aa 	.word	0x000005aa
     d88:	00000455 	.word	0x00000455

00000d8c <cord_atan>:
     d8c:	b5f0      	push	{r4, r5, r6, r7, lr}
     d8e:	464f      	mov	r7, r9
     d90:	4646      	mov	r6, r8
     d92:	b4c0      	push	{r6, r7}
     d94:	4b63      	ldr	r3, [pc, #396]	; (f24 <cord_atan+0x198>)
     d96:	b091      	sub	sp, #68	; 0x44
     d98:	001c      	movs	r4, r3
     d9a:	4694      	mov	ip, r2
     d9c:	466a      	mov	r2, sp
     d9e:	4699      	mov	r9, r3
     da0:	cca8      	ldmia	r4!, {r3, r5, r7}
     da2:	c2a8      	stmia	r2!, {r3, r5, r7}
     da4:	cca8      	ldmia	r4!, {r3, r5, r7}
     da6:	c2a8      	stmia	r2!, {r3, r5, r7}
     da8:	cc28      	ldmia	r4!, {r3, r5}
     daa:	c228      	stmia	r2!, {r3, r5}
     dac:	464b      	mov	r3, r9
     dae:	aa08      	add	r2, sp, #32
     db0:	3320      	adds	r3, #32
     db2:	4690      	mov	r8, r2
     db4:	cbb0      	ldmia	r3!, {r4, r5, r7}
     db6:	c2b0      	stmia	r2!, {r4, r5, r7}
     db8:	cbb0      	ldmia	r3!, {r4, r5, r7}
     dba:	c2b0      	stmia	r2!, {r4, r5, r7}
     dbc:	cb30      	ldmia	r3!, {r4, r5}
     dbe:	c230      	stmia	r2!, {r4, r5}
     dc0:	6802      	ldr	r2, [r0, #0]
     dc2:	6845      	ldr	r5, [r0, #4]
     dc4:	17d4      	asrs	r4, r2, #31
     dc6:	1913      	adds	r3, r2, r4
     dc8:	466e      	mov	r6, sp
     dca:	4063      	eors	r3, r4
     dcc:	2d00      	cmp	r5, #0
     dce:	dd69      	ble.n	ea4 <cord_atan+0x118>
     dd0:	195f      	adds	r7, r3, r5
     dd2:	1aeb      	subs	r3, r5, r3
     dd4:	9d00      	ldr	r5, [sp, #0]
     dd6:	2b00      	cmp	r3, #0
     dd8:	d100      	bne.n	ddc <cord_atan+0x50>
     dda:	e091      	b.n	f00 <cord_atan+0x174>
     ddc:	105c      	asrs	r4, r3, #1
     dde:	2b00      	cmp	r3, #0
     de0:	dd65      	ble.n	eae <cord_atan+0x122>
     de2:	1078      	asrs	r0, r7, #1
     de4:	1a1b      	subs	r3, r3, r0
     de6:	6870      	ldr	r0, [r6, #4]
     de8:	19e4      	adds	r4, r4, r7
     dea:	4681      	mov	r9, r0
     dec:	444d      	add	r5, r9
     dee:	2b00      	cmp	r3, #0
     df0:	d100      	bne.n	df4 <cord_atan+0x68>
     df2:	e087      	b.n	f04 <cord_atan+0x178>
     df4:	1098      	asrs	r0, r3, #2
     df6:	2b00      	cmp	r3, #0
     df8:	dd5f      	ble.n	eba <cord_atan+0x12e>
     dfa:	1907      	adds	r7, r0, r4
     dfc:	10a4      	asrs	r4, r4, #2
     dfe:	1b18      	subs	r0, r3, r4
     e00:	68b3      	ldr	r3, [r6, #8]
     e02:	4699      	mov	r9, r3
     e04:	444d      	add	r5, r9
     e06:	2800      	cmp	r0, #0
     e08:	d100      	bne.n	e0c <cord_atan+0x80>
     e0a:	e07e      	b.n	f0a <cord_atan+0x17e>
     e0c:	10c3      	asrs	r3, r0, #3
     e0e:	2800      	cmp	r0, #0
     e10:	dd59      	ble.n	ec6 <cord_atan+0x13a>
     e12:	10fc      	asrs	r4, r7, #3
     e14:	1b00      	subs	r0, r0, r4
     e16:	68f4      	ldr	r4, [r6, #12]
     e18:	19db      	adds	r3, r3, r7
     e1a:	46a1      	mov	r9, r4
     e1c:	444d      	add	r5, r9
     e1e:	2800      	cmp	r0, #0
     e20:	d100      	bne.n	e24 <cord_atan+0x98>
     e22:	e074      	b.n	f0e <cord_atan+0x182>
     e24:	1104      	asrs	r4, r0, #4
     e26:	2800      	cmp	r0, #0
     e28:	dd53      	ble.n	ed2 <cord_atan+0x146>
     e2a:	18e7      	adds	r7, r4, r3
     e2c:	111b      	asrs	r3, r3, #4
     e2e:	1ac4      	subs	r4, r0, r3
     e30:	6933      	ldr	r3, [r6, #16]
     e32:	4699      	mov	r9, r3
     e34:	444d      	add	r5, r9
     e36:	2c00      	cmp	r4, #0
     e38:	d06c      	beq.n	f14 <cord_atan+0x188>
     e3a:	1163      	asrs	r3, r4, #5
     e3c:	2c00      	cmp	r4, #0
     e3e:	dd4e      	ble.n	ede <cord_atan+0x152>
     e40:	1178      	asrs	r0, r7, #5
     e42:	1a20      	subs	r0, r4, r0
     e44:	6974      	ldr	r4, [r6, #20]
     e46:	19db      	adds	r3, r3, r7
     e48:	46a1      	mov	r9, r4
     e4a:	444d      	add	r5, r9
     e4c:	2800      	cmp	r0, #0
     e4e:	d063      	beq.n	f18 <cord_atan+0x18c>
     e50:	1184      	asrs	r4, r0, #6
     e52:	2800      	cmp	r0, #0
     e54:	dd49      	ble.n	eea <cord_atan+0x15e>
     e56:	18e7      	adds	r7, r4, r3
     e58:	119b      	asrs	r3, r3, #6
     e5a:	1ac0      	subs	r0, r0, r3
     e5c:	69b3      	ldr	r3, [r6, #24]
     e5e:	4699      	mov	r9, r3
     e60:	444d      	add	r5, r9
     e62:	2800      	cmp	r0, #0
     e64:	d05b      	beq.n	f1e <cord_atan+0x192>
     e66:	dd46      	ble.n	ef6 <cord_atan+0x16a>
     e68:	69f3      	ldr	r3, [r6, #28]
     e6a:	11c0      	asrs	r0, r0, #7
     e6c:	19c7      	adds	r7, r0, r7
     e6e:	18ed      	adds	r5, r5, r3
     e70:	2307      	movs	r3, #7
     e72:	2a00      	cmp	r2, #0
     e74:	db12      	blt.n	e9c <cord_atan+0x110>
     e76:	2d00      	cmp	r5, #0
     e78:	da03      	bge.n	e82 <cord_atan+0xf6>
     e7a:	2280      	movs	r2, #128	; 0x80
     e7c:	00d2      	lsls	r2, r2, #3
     e7e:	4691      	mov	r9, r2
     e80:	444d      	add	r5, r9
     e82:	4642      	mov	r2, r8
     e84:	009b      	lsls	r3, r3, #2
     e86:	58d0      	ldr	r0, [r2, r3]
     e88:	4663      	mov	r3, ip
     e8a:	4378      	muls	r0, r7
     e8c:	1280      	asrs	r0, r0, #10
     e8e:	600d      	str	r5, [r1, #0]
     e90:	6018      	str	r0, [r3, #0]
     e92:	b011      	add	sp, #68	; 0x44
     e94:	bc0c      	pop	{r2, r3}
     e96:	4690      	mov	r8, r2
     e98:	4699      	mov	r9, r3
     e9a:	bdf0      	pop	{r4, r5, r6, r7, pc}
     e9c:	2280      	movs	r2, #128	; 0x80
     e9e:	0092      	lsls	r2, r2, #2
     ea0:	1b55      	subs	r5, r2, r5
     ea2:	e7e8      	b.n	e76 <cord_atan+0xea>
     ea4:	9800      	ldr	r0, [sp, #0]
     ea6:	1b5f      	subs	r7, r3, r5
     ea8:	195b      	adds	r3, r3, r5
     eaa:	4245      	negs	r5, r0
     eac:	e793      	b.n	dd6 <cord_atan+0x4a>
     eae:	1078      	asrs	r0, r7, #1
     eb0:	18c3      	adds	r3, r0, r3
     eb2:	6870      	ldr	r0, [r6, #4]
     eb4:	1b3c      	subs	r4, r7, r4
     eb6:	1a2d      	subs	r5, r5, r0
     eb8:	e799      	b.n	dee <cord_atan+0x62>
     eba:	1a27      	subs	r7, r4, r0
     ebc:	10a0      	asrs	r0, r4, #2
     ebe:	18c0      	adds	r0, r0, r3
     ec0:	68b3      	ldr	r3, [r6, #8]
     ec2:	1aed      	subs	r5, r5, r3
     ec4:	e79f      	b.n	e06 <cord_atan+0x7a>
     ec6:	10fc      	asrs	r4, r7, #3
     ec8:	1820      	adds	r0, r4, r0
     eca:	68f4      	ldr	r4, [r6, #12]
     ecc:	1afb      	subs	r3, r7, r3
     ece:	1b2d      	subs	r5, r5, r4
     ed0:	e7a5      	b.n	e1e <cord_atan+0x92>
     ed2:	1b1f      	subs	r7, r3, r4
     ed4:	111c      	asrs	r4, r3, #4
     ed6:	6933      	ldr	r3, [r6, #16]
     ed8:	1824      	adds	r4, r4, r0
     eda:	1aed      	subs	r5, r5, r3
     edc:	e7ab      	b.n	e36 <cord_atan+0xaa>
     ede:	1178      	asrs	r0, r7, #5
     ee0:	1900      	adds	r0, r0, r4
     ee2:	6974      	ldr	r4, [r6, #20]
     ee4:	1afb      	subs	r3, r7, r3
     ee6:	1b2d      	subs	r5, r5, r4
     ee8:	e7b0      	b.n	e4c <cord_atan+0xc0>
     eea:	1b1f      	subs	r7, r3, r4
     eec:	119b      	asrs	r3, r3, #6
     eee:	1818      	adds	r0, r3, r0
     ef0:	69b3      	ldr	r3, [r6, #24]
     ef2:	1aed      	subs	r5, r5, r3
     ef4:	e7b5      	b.n	e62 <cord_atan+0xd6>
     ef6:	69f3      	ldr	r3, [r6, #28]
     ef8:	11c4      	asrs	r4, r0, #7
     efa:	1b3f      	subs	r7, r7, r4
     efc:	1aed      	subs	r5, r5, r3
     efe:	e7b7      	b.n	e70 <cord_atan+0xe4>
     f00:	2300      	movs	r3, #0
     f02:	e7b6      	b.n	e72 <cord_atan+0xe6>
     f04:	0027      	movs	r7, r4
     f06:	2301      	movs	r3, #1
     f08:	e7b3      	b.n	e72 <cord_atan+0xe6>
     f0a:	2302      	movs	r3, #2
     f0c:	e7b1      	b.n	e72 <cord_atan+0xe6>
     f0e:	001f      	movs	r7, r3
     f10:	2303      	movs	r3, #3
     f12:	e7ae      	b.n	e72 <cord_atan+0xe6>
     f14:	2304      	movs	r3, #4
     f16:	e7ac      	b.n	e72 <cord_atan+0xe6>
     f18:	001f      	movs	r7, r3
     f1a:	2305      	movs	r3, #5
     f1c:	e7a9      	b.n	e72 <cord_atan+0xe6>
     f1e:	2306      	movs	r3, #6
     f20:	e7a7      	b.n	e72 <cord_atan+0xe6>
     f22:	46c0      	nop			; (mov r8, r8)
     f24:	00002468 	.word	0x00002468

00000f28 <sinpwm>:
     f28:	b5f0      	push	{r4, r5, r6, r7, lr}
     f2a:	4646      	mov	r6, r8
     f2c:	464f      	mov	r7, r9
     f2e:	b4c0      	push	{r6, r7}
     f30:	b089      	sub	sp, #36	; 0x24
     f32:	466c      	mov	r4, sp
     f34:	4b65      	ldr	r3, [pc, #404]	; (10cc <sinpwm+0x1a4>)
     f36:	46e9      	mov	r9, sp
     f38:	3320      	adds	r3, #32
     f3a:	cbe0      	ldmia	r3!, {r5, r6, r7}
     f3c:	c4e0      	stmia	r4!, {r5, r6, r7}
     f3e:	cbe0      	ldmia	r3!, {r5, r6, r7}
     f40:	c4e0      	stmia	r4!, {r5, r6, r7}
     f42:	cb60      	ldmia	r3!, {r5, r6}
     f44:	c460      	stmia	r4!, {r5, r6}
     f46:	680b      	ldr	r3, [r1, #0]
     f48:	17dc      	asrs	r4, r3, #31
     f4a:	191e      	adds	r6, r3, r4
     f4c:	4698      	mov	r8, r3
     f4e:	684b      	ldr	r3, [r1, #4]
     f50:	4066      	eors	r6, r4
     f52:	469c      	mov	ip, r3
     f54:	2b00      	cmp	r3, #0
     f56:	dc00      	bgt.n	f5a <sinpwm+0x32>
     f58:	e086      	b.n	1068 <sinpwm+0x140>
     f5a:	18f7      	adds	r7, r6, r3
     f5c:	1b9b      	subs	r3, r3, r6
     f5e:	2b00      	cmp	r3, #0
     f60:	d100      	bne.n	f64 <sinpwm+0x3c>
     f62:	e0a0      	b.n	10a6 <sinpwm+0x17e>
     f64:	105e      	asrs	r6, r3, #1
     f66:	2b00      	cmp	r3, #0
     f68:	dc00      	bgt.n	f6c <sinpwm+0x44>
     f6a:	e081      	b.n	1070 <sinpwm+0x148>
     f6c:	107c      	asrs	r4, r7, #1
     f6e:	19f6      	adds	r6, r6, r7
     f70:	1b1b      	subs	r3, r3, r4
     f72:	2b00      	cmp	r3, #0
     f74:	d100      	bne.n	f78 <sinpwm+0x50>
     f76:	e098      	b.n	10aa <sinpwm+0x182>
     f78:	109c      	asrs	r4, r3, #2
     f7a:	2b00      	cmp	r3, #0
     f7c:	dc00      	bgt.n	f80 <sinpwm+0x58>
     f7e:	e07b      	b.n	1078 <sinpwm+0x150>
     f80:	19a7      	adds	r7, r4, r6
     f82:	10b6      	asrs	r6, r6, #2
     f84:	1b9c      	subs	r4, r3, r6
     f86:	2c00      	cmp	r4, #0
     f88:	d100      	bne.n	f8c <sinpwm+0x64>
     f8a:	e091      	b.n	10b0 <sinpwm+0x188>
     f8c:	10e6      	asrs	r6, r4, #3
     f8e:	2c00      	cmp	r4, #0
     f90:	dc00      	bgt.n	f94 <sinpwm+0x6c>
     f92:	e075      	b.n	1080 <sinpwm+0x158>
     f94:	10fd      	asrs	r5, r7, #3
     f96:	19f6      	adds	r6, r6, r7
     f98:	1b64      	subs	r4, r4, r5
     f9a:	2c00      	cmp	r4, #0
     f9c:	d100      	bne.n	fa0 <sinpwm+0x78>
     f9e:	e089      	b.n	10b4 <sinpwm+0x18c>
     fa0:	1125      	asrs	r5, r4, #4
     fa2:	2c00      	cmp	r4, #0
     fa4:	dc00      	bgt.n	fa8 <sinpwm+0x80>
     fa6:	e06f      	b.n	1088 <sinpwm+0x160>
     fa8:	19af      	adds	r7, r5, r6
     faa:	1136      	asrs	r6, r6, #4
     fac:	1ba5      	subs	r5, r4, r6
     fae:	2d00      	cmp	r5, #0
     fb0:	d100      	bne.n	fb4 <sinpwm+0x8c>
     fb2:	e082      	b.n	10ba <sinpwm+0x192>
     fb4:	116e      	asrs	r6, r5, #5
     fb6:	2d00      	cmp	r5, #0
     fb8:	dd6a      	ble.n	1090 <sinpwm+0x168>
     fba:	117c      	asrs	r4, r7, #5
     fbc:	19f6      	adds	r6, r6, r7
     fbe:	1b2c      	subs	r4, r5, r4
     fc0:	2c00      	cmp	r4, #0
     fc2:	d100      	bne.n	fc6 <sinpwm+0x9e>
     fc4:	e07b      	b.n	10be <sinpwm+0x196>
     fc6:	11a3      	asrs	r3, r4, #6
     fc8:	2c00      	cmp	r4, #0
     fca:	dd65      	ble.n	1098 <sinpwm+0x170>
     fcc:	199b      	adds	r3, r3, r6
     fce:	11b6      	asrs	r6, r6, #6
     fd0:	1ba4      	subs	r4, r4, r6
     fd2:	2c00      	cmp	r4, #0
     fd4:	d100      	bne.n	fd8 <sinpwm+0xb0>
     fd6:	e075      	b.n	10c4 <sinpwm+0x19c>
     fd8:	dd62      	ble.n	10a0 <sinpwm+0x178>
     fda:	11e4      	asrs	r4, r4, #7
     fdc:	18e7      	adds	r7, r4, r3
     fde:	2307      	movs	r3, #7
     fe0:	464c      	mov	r4, r9
     fe2:	4646      	mov	r6, r8
     fe4:	009b      	lsls	r3, r3, #2
     fe6:	58e4      	ldr	r4, [r4, r3]
     fe8:	4b39      	ldr	r3, [pc, #228]	; (10d0 <sinpwm+0x1a8>)
     fea:	0095      	lsls	r5, r2, #2
     fec:	58ed      	ldr	r5, [r5, r3]
     fee:	437c      	muls	r4, r7
     ff0:	436e      	muls	r6, r5
     ff2:	25c0      	movs	r5, #192	; 0xc0
     ff4:	4667      	mov	r7, ip
     ff6:	00ad      	lsls	r5, r5, #2
     ff8:	1955      	adds	r5, r2, r5
     ffa:	05ad      	lsls	r5, r5, #22
     ffc:	0d2d      	lsrs	r5, r5, #20
     ffe:	58ed      	ldr	r5, [r5, r3]
    1000:	1524      	asrs	r4, r4, #20
    1002:	437d      	muls	r5, r7
    1004:	1b75      	subs	r5, r6, r5
    1006:	152d      	asrs	r5, r5, #20
    1008:	6005      	str	r5, [r0, #0]
    100a:	4d32      	ldr	r5, [pc, #200]	; (10d4 <sinpwm+0x1ac>)
    100c:	684f      	ldr	r7, [r1, #4]
    100e:	1955      	adds	r5, r2, r5
    1010:	05ad      	lsls	r5, r5, #22
    1012:	0d2d      	lsrs	r5, r5, #20
    1014:	58ee      	ldr	r6, [r5, r3]
    1016:	680d      	ldr	r5, [r1, #0]
    1018:	4375      	muls	r5, r6
    101a:	4e2f      	ldr	r6, [pc, #188]	; (10d8 <sinpwm+0x1b0>)
    101c:	1996      	adds	r6, r2, r6
    101e:	05b6      	lsls	r6, r6, #22
    1020:	0d36      	lsrs	r6, r6, #20
    1022:	58f6      	ldr	r6, [r6, r3]
    1024:	437e      	muls	r6, r7
    1026:	1bae      	subs	r6, r5, r6
    1028:	0015      	movs	r5, r2
    102a:	3556      	adds	r5, #86	; 0x56
    102c:	35ff      	adds	r5, #255	; 0xff
    102e:	1536      	asrs	r6, r6, #20
    1030:	05ad      	lsls	r5, r5, #22
    1032:	6046      	str	r6, [r0, #4]
    1034:	0d2d      	lsrs	r5, r5, #20
    1036:	58ee      	ldr	r6, [r5, r3]
    1038:	680d      	ldr	r5, [r1, #0]
    103a:	436e      	muls	r6, r5
    103c:	4d27      	ldr	r5, [pc, #156]	; (10dc <sinpwm+0x1b4>)
    103e:	46ac      	mov	ip, r5
    1040:	4462      	add	r2, ip
    1042:	0592      	lsls	r2, r2, #22
    1044:	0d12      	lsrs	r2, r2, #20
    1046:	58d2      	ldr	r2, [r2, r3]
    1048:	684b      	ldr	r3, [r1, #4]
    104a:	435a      	muls	r2, r3
    104c:	23fa      	movs	r3, #250	; 0xfa
    104e:	1ab2      	subs	r2, r6, r2
    1050:	1512      	asrs	r2, r2, #20
    1052:	6082      	str	r2, [r0, #8]
    1054:	005b      	lsls	r3, r3, #1
    1056:	2001      	movs	r0, #1
    1058:	429c      	cmp	r4, r3
    105a:	dc00      	bgt.n	105e <sinpwm+0x136>
    105c:	2000      	movs	r0, #0
    105e:	b009      	add	sp, #36	; 0x24
    1060:	bc0c      	pop	{r2, r3}
    1062:	4690      	mov	r8, r2
    1064:	4699      	mov	r9, r3
    1066:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1068:	1af7      	subs	r7, r6, r3
    106a:	0033      	movs	r3, r6
    106c:	4463      	add	r3, ip
    106e:	e776      	b.n	f5e <sinpwm+0x36>
    1070:	107c      	asrs	r4, r7, #1
    1072:	1bbe      	subs	r6, r7, r6
    1074:	18e3      	adds	r3, r4, r3
    1076:	e77c      	b.n	f72 <sinpwm+0x4a>
    1078:	1b37      	subs	r7, r6, r4
    107a:	10b4      	asrs	r4, r6, #2
    107c:	18e4      	adds	r4, r4, r3
    107e:	e782      	b.n	f86 <sinpwm+0x5e>
    1080:	10fd      	asrs	r5, r7, #3
    1082:	1bbe      	subs	r6, r7, r6
    1084:	192c      	adds	r4, r5, r4
    1086:	e788      	b.n	f9a <sinpwm+0x72>
    1088:	1b77      	subs	r7, r6, r5
    108a:	1135      	asrs	r5, r6, #4
    108c:	192d      	adds	r5, r5, r4
    108e:	e78e      	b.n	fae <sinpwm+0x86>
    1090:	117c      	asrs	r4, r7, #5
    1092:	1bbe      	subs	r6, r7, r6
    1094:	1964      	adds	r4, r4, r5
    1096:	e793      	b.n	fc0 <sinpwm+0x98>
    1098:	1af3      	subs	r3, r6, r3
    109a:	11b6      	asrs	r6, r6, #6
    109c:	1934      	adds	r4, r6, r4
    109e:	e798      	b.n	fd2 <sinpwm+0xaa>
    10a0:	11e5      	asrs	r5, r4, #7
    10a2:	1b5f      	subs	r7, r3, r5
    10a4:	e79b      	b.n	fde <sinpwm+0xb6>
    10a6:	2300      	movs	r3, #0
    10a8:	e79a      	b.n	fe0 <sinpwm+0xb8>
    10aa:	0037      	movs	r7, r6
    10ac:	2301      	movs	r3, #1
    10ae:	e797      	b.n	fe0 <sinpwm+0xb8>
    10b0:	2302      	movs	r3, #2
    10b2:	e795      	b.n	fe0 <sinpwm+0xb8>
    10b4:	0037      	movs	r7, r6
    10b6:	2303      	movs	r3, #3
    10b8:	e792      	b.n	fe0 <sinpwm+0xb8>
    10ba:	2304      	movs	r3, #4
    10bc:	e790      	b.n	fe0 <sinpwm+0xb8>
    10be:	0037      	movs	r7, r6
    10c0:	2305      	movs	r3, #5
    10c2:	e78d      	b.n	fe0 <sinpwm+0xb8>
    10c4:	001f      	movs	r7, r3
    10c6:	2306      	movs	r3, #6
    10c8:	e78a      	b.n	fe0 <sinpwm+0xb8>
    10ca:	46c0      	nop			; (mov r8, r8)
    10cc:	00002468 	.word	0x00002468
    10d0:	00001450 	.word	0x00001450
    10d4:	000002aa 	.word	0x000002aa
    10d8:	000005aa 	.word	0x000005aa
    10dc:	00000455 	.word	0x00000455

000010e0 <svpwm>:
    10e0:	b5f0      	push	{r4, r5, r6, r7, lr}
    10e2:	464f      	mov	r7, r9
    10e4:	4646      	mov	r6, r8
    10e6:	b4c0      	push	{r6, r7}
    10e8:	4bb2      	ldr	r3, [pc, #712]	; (13b4 <svpwm+0x2d4>)
    10ea:	b091      	sub	sp, #68	; 0x44
    10ec:	001c      	movs	r4, r3
    10ee:	4694      	mov	ip, r2
    10f0:	466a      	mov	r2, sp
    10f2:	4699      	mov	r9, r3
    10f4:	cca8      	ldmia	r4!, {r3, r5, r7}
    10f6:	c2a8      	stmia	r2!, {r3, r5, r7}
    10f8:	cca8      	ldmia	r4!, {r3, r5, r7}
    10fa:	c2a8      	stmia	r2!, {r3, r5, r7}
    10fc:	cc28      	ldmia	r4!, {r3, r5}
    10fe:	c228      	stmia	r2!, {r3, r5}
    1100:	464b      	mov	r3, r9
    1102:	aa08      	add	r2, sp, #32
    1104:	3320      	adds	r3, #32
    1106:	4690      	mov	r8, r2
    1108:	cbb0      	ldmia	r3!, {r4, r5, r7}
    110a:	c2b0      	stmia	r2!, {r4, r5, r7}
    110c:	cbb0      	ldmia	r3!, {r4, r5, r7}
    110e:	c2b0      	stmia	r2!, {r4, r5, r7}
    1110:	cb30      	ldmia	r3!, {r4, r5}
    1112:	c230      	stmia	r2!, {r4, r5}
    1114:	680a      	ldr	r2, [r1, #0]
    1116:	684d      	ldr	r5, [r1, #4]
    1118:	17d4      	asrs	r4, r2, #31
    111a:	1913      	adds	r3, r2, r4
    111c:	466e      	mov	r6, sp
    111e:	4063      	eors	r3, r4
    1120:	2d00      	cmp	r5, #0
    1122:	dd78      	ble.n	1216 <svpwm+0x136>
    1124:	195f      	adds	r7, r3, r5
    1126:	1aeb      	subs	r3, r5, r3
    1128:	9d00      	ldr	r5, [sp, #0]
    112a:	2b00      	cmp	r3, #0
    112c:	d100      	bne.n	1130 <svpwm+0x50>
    112e:	e130      	b.n	1392 <svpwm+0x2b2>
    1130:	105c      	asrs	r4, r3, #1
    1132:	2b00      	cmp	r3, #0
    1134:	dd74      	ble.n	1220 <svpwm+0x140>
    1136:	1079      	asrs	r1, r7, #1
    1138:	1a5b      	subs	r3, r3, r1
    113a:	6871      	ldr	r1, [r6, #4]
    113c:	19e4      	adds	r4, r4, r7
    113e:	4689      	mov	r9, r1
    1140:	444d      	add	r5, r9
    1142:	2b00      	cmp	r3, #0
    1144:	d100      	bne.n	1148 <svpwm+0x68>
    1146:	e126      	b.n	1396 <svpwm+0x2b6>
    1148:	1099      	asrs	r1, r3, #2
    114a:	2b00      	cmp	r3, #0
    114c:	dd6e      	ble.n	122c <svpwm+0x14c>
    114e:	190f      	adds	r7, r1, r4
    1150:	10a4      	asrs	r4, r4, #2
    1152:	1b19      	subs	r1, r3, r4
    1154:	68b3      	ldr	r3, [r6, #8]
    1156:	4699      	mov	r9, r3
    1158:	444d      	add	r5, r9
    115a:	2900      	cmp	r1, #0
    115c:	d100      	bne.n	1160 <svpwm+0x80>
    115e:	e11d      	b.n	139c <svpwm+0x2bc>
    1160:	10cb      	asrs	r3, r1, #3
    1162:	2900      	cmp	r1, #0
    1164:	dd68      	ble.n	1238 <svpwm+0x158>
    1166:	10fc      	asrs	r4, r7, #3
    1168:	1b09      	subs	r1, r1, r4
    116a:	68f4      	ldr	r4, [r6, #12]
    116c:	19db      	adds	r3, r3, r7
    116e:	46a1      	mov	r9, r4
    1170:	444d      	add	r5, r9
    1172:	2900      	cmp	r1, #0
    1174:	d100      	bne.n	1178 <svpwm+0x98>
    1176:	e113      	b.n	13a0 <svpwm+0x2c0>
    1178:	110c      	asrs	r4, r1, #4
    117a:	2900      	cmp	r1, #0
    117c:	dd62      	ble.n	1244 <svpwm+0x164>
    117e:	18e7      	adds	r7, r4, r3
    1180:	111b      	asrs	r3, r3, #4
    1182:	1acc      	subs	r4, r1, r3
    1184:	6933      	ldr	r3, [r6, #16]
    1186:	4699      	mov	r9, r3
    1188:	444d      	add	r5, r9
    118a:	2c00      	cmp	r4, #0
    118c:	d100      	bne.n	1190 <svpwm+0xb0>
    118e:	e10a      	b.n	13a6 <svpwm+0x2c6>
    1190:	1163      	asrs	r3, r4, #5
    1192:	2c00      	cmp	r4, #0
    1194:	dd5c      	ble.n	1250 <svpwm+0x170>
    1196:	1179      	asrs	r1, r7, #5
    1198:	1a61      	subs	r1, r4, r1
    119a:	6974      	ldr	r4, [r6, #20]
    119c:	19db      	adds	r3, r3, r7
    119e:	46a1      	mov	r9, r4
    11a0:	444d      	add	r5, r9
    11a2:	2900      	cmp	r1, #0
    11a4:	d100      	bne.n	11a8 <svpwm+0xc8>
    11a6:	e100      	b.n	13aa <svpwm+0x2ca>
    11a8:	118c      	asrs	r4, r1, #6
    11aa:	2900      	cmp	r1, #0
    11ac:	dd56      	ble.n	125c <svpwm+0x17c>
    11ae:	18e7      	adds	r7, r4, r3
    11b0:	119b      	asrs	r3, r3, #6
    11b2:	1ac9      	subs	r1, r1, r3
    11b4:	69b3      	ldr	r3, [r6, #24]
    11b6:	4699      	mov	r9, r3
    11b8:	444d      	add	r5, r9
    11ba:	2900      	cmp	r1, #0
    11bc:	d100      	bne.n	11c0 <svpwm+0xe0>
    11be:	e0f7      	b.n	13b0 <svpwm+0x2d0>
    11c0:	dc00      	bgt.n	11c4 <svpwm+0xe4>
    11c2:	e0e1      	b.n	1388 <svpwm+0x2a8>
    11c4:	69f3      	ldr	r3, [r6, #28]
    11c6:	11c9      	asrs	r1, r1, #7
    11c8:	19cf      	adds	r7, r1, r7
    11ca:	18ed      	adds	r5, r5, r3
    11cc:	2307      	movs	r3, #7
    11ce:	2a00      	cmp	r2, #0
    11d0:	db1d      	blt.n	120e <svpwm+0x12e>
    11d2:	2d00      	cmp	r5, #0
    11d4:	da03      	bge.n	11de <svpwm+0xfe>
    11d6:	2280      	movs	r2, #128	; 0x80
    11d8:	00d2      	lsls	r2, r2, #3
    11da:	4691      	mov	r9, r2
    11dc:	444d      	add	r5, r9
    11de:	4642      	mov	r2, r8
    11e0:	009b      	lsls	r3, r3, #2
    11e2:	58d1      	ldr	r1, [r2, r3]
    11e4:	23fa      	movs	r3, #250	; 0xfa
    11e6:	4379      	muls	r1, r7
    11e8:	4465      	add	r5, ip
    11ea:	05ad      	lsls	r5, r5, #22
    11ec:	1509      	asrs	r1, r1, #20
    11ee:	0dad      	lsrs	r5, r5, #22
    11f0:	005b      	lsls	r3, r3, #1
    11f2:	2600      	movs	r6, #0
    11f4:	4299      	cmp	r1, r3
    11f6:	dd01      	ble.n	11fc <svpwm+0x11c>
    11f8:	0019      	movs	r1, r3
    11fa:	3601      	adds	r6, #1
    11fc:	006a      	lsls	r2, r5, #1
    11fe:	1952      	adds	r2, r2, r5
    1200:	1252      	asrs	r2, r2, #9
    1202:	2a05      	cmp	r2, #5
    1204:	d84b      	bhi.n	129e <svpwm+0x1be>
    1206:	4b6c      	ldr	r3, [pc, #432]	; (13b8 <svpwm+0x2d8>)
    1208:	0092      	lsls	r2, r2, #2
    120a:	589b      	ldr	r3, [r3, r2]
    120c:	469f      	mov	pc, r3
    120e:	2280      	movs	r2, #128	; 0x80
    1210:	0092      	lsls	r2, r2, #2
    1212:	1b55      	subs	r5, r2, r5
    1214:	e7dd      	b.n	11d2 <svpwm+0xf2>
    1216:	9900      	ldr	r1, [sp, #0]
    1218:	1b5f      	subs	r7, r3, r5
    121a:	195b      	adds	r3, r3, r5
    121c:	424d      	negs	r5, r1
    121e:	e784      	b.n	112a <svpwm+0x4a>
    1220:	1079      	asrs	r1, r7, #1
    1222:	18cb      	adds	r3, r1, r3
    1224:	6871      	ldr	r1, [r6, #4]
    1226:	1b3c      	subs	r4, r7, r4
    1228:	1a6d      	subs	r5, r5, r1
    122a:	e78a      	b.n	1142 <svpwm+0x62>
    122c:	1a67      	subs	r7, r4, r1
    122e:	10a1      	asrs	r1, r4, #2
    1230:	18c9      	adds	r1, r1, r3
    1232:	68b3      	ldr	r3, [r6, #8]
    1234:	1aed      	subs	r5, r5, r3
    1236:	e790      	b.n	115a <svpwm+0x7a>
    1238:	10fc      	asrs	r4, r7, #3
    123a:	1861      	adds	r1, r4, r1
    123c:	68f4      	ldr	r4, [r6, #12]
    123e:	1afb      	subs	r3, r7, r3
    1240:	1b2d      	subs	r5, r5, r4
    1242:	e796      	b.n	1172 <svpwm+0x92>
    1244:	1b1f      	subs	r7, r3, r4
    1246:	111c      	asrs	r4, r3, #4
    1248:	6933      	ldr	r3, [r6, #16]
    124a:	1864      	adds	r4, r4, r1
    124c:	1aed      	subs	r5, r5, r3
    124e:	e79c      	b.n	118a <svpwm+0xaa>
    1250:	1179      	asrs	r1, r7, #5
    1252:	1909      	adds	r1, r1, r4
    1254:	6974      	ldr	r4, [r6, #20]
    1256:	1afb      	subs	r3, r7, r3
    1258:	1b2d      	subs	r5, r5, r4
    125a:	e7a2      	b.n	11a2 <svpwm+0xc2>
    125c:	1b1f      	subs	r7, r3, r4
    125e:	119b      	asrs	r3, r3, #6
    1260:	1859      	adds	r1, r3, r1
    1262:	69b3      	ldr	r3, [r6, #24]
    1264:	1aed      	subs	r5, r5, r3
    1266:	e7a8      	b.n	11ba <svpwm+0xda>
    1268:	4b54      	ldr	r3, [pc, #336]	; (13bc <svpwm+0x2dc>)
    126a:	4a55      	ldr	r2, [pc, #340]	; (13c0 <svpwm+0x2e0>)
    126c:	1b5b      	subs	r3, r3, r5
    126e:	3556      	adds	r5, #86	; 0x56
    1270:	059b      	lsls	r3, r3, #22
    1272:	05ad      	lsls	r5, r5, #22
    1274:	0d1b      	lsrs	r3, r3, #20
    1276:	0d2d      	lsrs	r5, r5, #20
    1278:	589b      	ldr	r3, [r3, r2]
    127a:	58ac      	ldr	r4, [r5, r2]
    127c:	434b      	muls	r3, r1
    127e:	434c      	muls	r4, r1
    1280:	129b      	asrs	r3, r3, #10
    1282:	12a1      	asrs	r1, r4, #10
    1284:	1aca      	subs	r2, r1, r3
    1286:	6002      	str	r2, [r0, #0]
    1288:	425a      	negs	r2, r3
    128a:	1a52      	subs	r2, r2, r1
    128c:	1859      	adds	r1, r3, r1
    128e:	6042      	str	r2, [r0, #4]
    1290:	6081      	str	r1, [r0, #8]
    1292:	0030      	movs	r0, r6
    1294:	b011      	add	sp, #68	; 0x44
    1296:	bc0c      	pop	{r2, r3}
    1298:	4690      	mov	r8, r2
    129a:	4699      	mov	r9, r3
    129c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    129e:	4b49      	ldr	r3, [pc, #292]	; (13c4 <svpwm+0x2e4>)
    12a0:	4c47      	ldr	r4, [pc, #284]	; (13c0 <svpwm+0x2e0>)
    12a2:	1b5b      	subs	r3, r3, r5
    12a4:	059b      	lsls	r3, r3, #22
    12a6:	0d1b      	lsrs	r3, r3, #20
    12a8:	591a      	ldr	r2, [r3, r4]
    12aa:	23c0      	movs	r3, #192	; 0xc0
    12ac:	009b      	lsls	r3, r3, #2
    12ae:	469c      	mov	ip, r3
    12b0:	4465      	add	r5, ip
    12b2:	05ad      	lsls	r5, r5, #22
    12b4:	0d2d      	lsrs	r5, r5, #20
    12b6:	592c      	ldr	r4, [r5, r4]
    12b8:	434a      	muls	r2, r1
    12ba:	4361      	muls	r1, r4
    12bc:	1292      	asrs	r2, r2, #10
    12be:	1289      	asrs	r1, r1, #10
    12c0:	1853      	adds	r3, r2, r1
    12c2:	6003      	str	r3, [r0, #0]
    12c4:	1a8b      	subs	r3, r1, r2
    12c6:	4252      	negs	r2, r2
    12c8:	1a52      	subs	r2, r2, r1
    12ca:	6043      	str	r3, [r0, #4]
    12cc:	6082      	str	r2, [r0, #8]
    12ce:	e7e0      	b.n	1292 <svpwm+0x1b2>
    12d0:	4b3d      	ldr	r3, [pc, #244]	; (13c8 <svpwm+0x2e8>)
    12d2:	4a3b      	ldr	r2, [pc, #236]	; (13c0 <svpwm+0x2e0>)
    12d4:	1b5b      	subs	r3, r3, r5
    12d6:	059b      	lsls	r3, r3, #22
    12d8:	0d1b      	lsrs	r3, r3, #20
    12da:	589f      	ldr	r7, [r3, r2]
    12dc:	4b3b      	ldr	r3, [pc, #236]	; (13cc <svpwm+0x2ec>)
    12de:	434f      	muls	r7, r1
    12e0:	469c      	mov	ip, r3
    12e2:	4465      	add	r5, ip
    12e4:	05ad      	lsls	r5, r5, #22
    12e6:	0d2d      	lsrs	r5, r5, #20
    12e8:	58ac      	ldr	r4, [r5, r2]
    12ea:	12bf      	asrs	r7, r7, #10
    12ec:	4361      	muls	r1, r4
    12ee:	1289      	asrs	r1, r1, #10
    12f0:	1a7b      	subs	r3, r7, r1
    12f2:	6003      	str	r3, [r0, #0]
    12f4:	187b      	adds	r3, r7, r1
    12f6:	427f      	negs	r7, r7
    12f8:	1a7f      	subs	r7, r7, r1
    12fa:	6043      	str	r3, [r0, #4]
    12fc:	6087      	str	r7, [r0, #8]
    12fe:	e7c8      	b.n	1292 <svpwm+0x1b2>
    1300:	4b33      	ldr	r3, [pc, #204]	; (13d0 <svpwm+0x2f0>)
    1302:	4a2f      	ldr	r2, [pc, #188]	; (13c0 <svpwm+0x2e0>)
    1304:	1b5b      	subs	r3, r3, r5
    1306:	35ac      	adds	r5, #172	; 0xac
    1308:	059b      	lsls	r3, r3, #22
    130a:	35ff      	adds	r5, #255	; 0xff
    130c:	0d1b      	lsrs	r3, r3, #20
    130e:	05ad      	lsls	r5, r5, #22
    1310:	589b      	ldr	r3, [r3, r2]
    1312:	0d2d      	lsrs	r5, r5, #20
    1314:	58ac      	ldr	r4, [r5, r2]
    1316:	434b      	muls	r3, r1
    1318:	4361      	muls	r1, r4
    131a:	129b      	asrs	r3, r3, #10
    131c:	1289      	asrs	r1, r1, #10
    131e:	425a      	negs	r2, r3
    1320:	1a52      	subs	r2, r2, r1
    1322:	6002      	str	r2, [r0, #0]
    1324:	185a      	adds	r2, r3, r1
    1326:	1ac9      	subs	r1, r1, r3
    1328:	6042      	str	r2, [r0, #4]
    132a:	6081      	str	r1, [r0, #8]
    132c:	e7b1      	b.n	1292 <svpwm+0x1b2>
    132e:	4b29      	ldr	r3, [pc, #164]	; (13d4 <svpwm+0x2f4>)
    1330:	4a23      	ldr	r2, [pc, #140]	; (13c0 <svpwm+0x2e0>)
    1332:	1b5b      	subs	r3, r3, r5
    1334:	3501      	adds	r5, #1
    1336:	059b      	lsls	r3, r3, #22
    1338:	35ff      	adds	r5, #255	; 0xff
    133a:	0d1b      	lsrs	r3, r3, #20
    133c:	05ad      	lsls	r5, r5, #22
    133e:	589b      	ldr	r3, [r3, r2]
    1340:	0d2d      	lsrs	r5, r5, #20
    1342:	58ac      	ldr	r4, [r5, r2]
    1344:	434b      	muls	r3, r1
    1346:	434c      	muls	r4, r1
    1348:	129b      	asrs	r3, r3, #10
    134a:	12a1      	asrs	r1, r4, #10
    134c:	425a      	negs	r2, r3
    134e:	1a52      	subs	r2, r2, r1
    1350:	6002      	str	r2, [r0, #0]
    1352:	1a5a      	subs	r2, r3, r1
    1354:	1859      	adds	r1, r3, r1
    1356:	6042      	str	r2, [r0, #4]
    1358:	6081      	str	r1, [r0, #8]
    135a:	e79a      	b.n	1292 <svpwm+0x1b2>
    135c:	4b1e      	ldr	r3, [pc, #120]	; (13d8 <svpwm+0x2f8>)
    135e:	4a18      	ldr	r2, [pc, #96]	; (13c0 <svpwm+0x2e0>)
    1360:	1b5b      	subs	r3, r3, r5
    1362:	3d55      	subs	r5, #85	; 0x55
    1364:	059b      	lsls	r3, r3, #22
    1366:	05ad      	lsls	r5, r5, #22
    1368:	0d1b      	lsrs	r3, r3, #20
    136a:	0d2d      	lsrs	r5, r5, #20
    136c:	589b      	ldr	r3, [r3, r2]
    136e:	58ac      	ldr	r4, [r5, r2]
    1370:	434b      	muls	r3, r1
    1372:	4361      	muls	r1, r4
    1374:	129b      	asrs	r3, r3, #10
    1376:	1289      	asrs	r1, r1, #10
    1378:	185a      	adds	r2, r3, r1
    137a:	6002      	str	r2, [r0, #0]
    137c:	425a      	negs	r2, r3
    137e:	1a52      	subs	r2, r2, r1
    1380:	1a59      	subs	r1, r3, r1
    1382:	6042      	str	r2, [r0, #4]
    1384:	6081      	str	r1, [r0, #8]
    1386:	e784      	b.n	1292 <svpwm+0x1b2>
    1388:	69f3      	ldr	r3, [r6, #28]
    138a:	11cc      	asrs	r4, r1, #7
    138c:	1b3f      	subs	r7, r7, r4
    138e:	1aed      	subs	r5, r5, r3
    1390:	e71c      	b.n	11cc <svpwm+0xec>
    1392:	2300      	movs	r3, #0
    1394:	e71b      	b.n	11ce <svpwm+0xee>
    1396:	0027      	movs	r7, r4
    1398:	2301      	movs	r3, #1
    139a:	e718      	b.n	11ce <svpwm+0xee>
    139c:	2302      	movs	r3, #2
    139e:	e716      	b.n	11ce <svpwm+0xee>
    13a0:	001f      	movs	r7, r3
    13a2:	2303      	movs	r3, #3
    13a4:	e713      	b.n	11ce <svpwm+0xee>
    13a6:	2304      	movs	r3, #4
    13a8:	e711      	b.n	11ce <svpwm+0xee>
    13aa:	001f      	movs	r7, r3
    13ac:	2305      	movs	r3, #5
    13ae:	e70e      	b.n	11ce <svpwm+0xee>
    13b0:	2306      	movs	r3, #6
    13b2:	e70c      	b.n	11ce <svpwm+0xee>
    13b4:	00002468 	.word	0x00002468
    13b8:	00002450 	.word	0x00002450
    13bc:	00000a54 	.word	0x00000a54
    13c0:	00001450 	.word	0x00001450
    13c4:	000007aa 	.word	0x000007aa
    13c8:	00000854 	.word	0x00000854
    13cc:	00000256 	.word	0x00000256
    13d0:	000008ff 	.word	0x000008ff
    13d4:	000009aa 	.word	0x000009aa
    13d8:	00000aff 	.word	0x00000aff

000013dc <get_speed>:
    13dc:	4a0f      	ldr	r2, [pc, #60]	; (141c <get_speed+0x40>)
    13de:	b510      	push	{r4, lr}
    13e0:	6813      	ldr	r3, [r2, #0]
    13e2:	6854      	ldr	r4, [r2, #4]
    13e4:	1ac3      	subs	r3, r0, r3
    13e6:	6050      	str	r0, [r2, #4]
    13e8:	6014      	str	r4, [r2, #0]
    13ea:	17da      	asrs	r2, r3, #31
    13ec:	1898      	adds	r0, r3, r2
    13ee:	4050      	eors	r0, r2
    13f0:	22fa      	movs	r2, #250	; 0xfa
    13f2:	0092      	lsls	r2, r2, #2
    13f4:	4290      	cmp	r0, r2
    13f6:	dd04      	ble.n	1402 <get_speed+0x26>
    13f8:	2b00      	cmp	r3, #0
    13fa:	db0a      	blt.n	1412 <get_speed+0x36>
    13fc:	4a08      	ldr	r2, [pc, #32]	; (1420 <get_speed+0x44>)
    13fe:	4694      	mov	ip, r2
    1400:	4463      	add	r3, ip
    1402:	680a      	ldr	r2, [r1, #0]
    1404:	4807      	ldr	r0, [pc, #28]	; (1424 <get_speed+0x48>)
    1406:	18d2      	adds	r2, r2, r3
    1408:	105b      	asrs	r3, r3, #1
    140a:	4343      	muls	r3, r0
    140c:	600a      	str	r2, [r1, #0]
    140e:	1318      	asrs	r0, r3, #12
    1410:	bd10      	pop	{r4, pc}
    1412:	2280      	movs	r2, #128	; 0x80
    1414:	0152      	lsls	r2, r2, #5
    1416:	4694      	mov	ip, r2
    1418:	4463      	add	r3, ip
    141a:	e7f2      	b.n	1402 <get_speed+0x26>
    141c:	2000001c 	.word	0x2000001c
    1420:	fffff000 	.word	0xfffff000
    1424:	0002ae7c 	.word	0x0002ae7c

00001428 <mfilter>:
    1428:	221f      	movs	r2, #31
    142a:	4908      	ldr	r1, [pc, #32]	; (144c <mfilter+0x24>)
    142c:	b510      	push	{r4, lr}
    142e:	688b      	ldr	r3, [r1, #8]
    1430:	3301      	adds	r3, #1
    1432:	4013      	ands	r3, r2
    1434:	608b      	str	r3, [r1, #8]
    1436:	009b      	lsls	r3, r3, #2
    1438:	18cb      	adds	r3, r1, r3
    143a:	68ca      	ldr	r2, [r1, #12]
    143c:	691c      	ldr	r4, [r3, #16]
    143e:	6118      	str	r0, [r3, #16]
    1440:	1b12      	subs	r2, r2, r4
    1442:	1812      	adds	r2, r2, r0
    1444:	1150      	asrs	r0, r2, #5
    1446:	60ca      	str	r2, [r1, #12]
    1448:	bd10      	pop	{r4, pc}
    144a:	46c0      	nop			; (mov r8, r8)
    144c:	2000001c 	.word	0x2000001c

00001450 <cos_tb>:
    1450:	00000400 00000400 00000400 00000400     ................
    1460:	00000400 00000400 000003ff 000003ff     ................
    1470:	000003ff 000003fe 000003fe 000003fe     ................
    1480:	000003fd 000003fd 000003fc 000003fc     ................
    1490:	000003fb 000003fa 000003fa 000003f9     ................
    14a0:	000003f8 000003f8 000003f7 000003f6     ................
    14b0:	000003f5 000003f4 000003f3 000003f2     ................
    14c0:	000003f1 000003f0 000003ef 000003ee     ................
    14d0:	000003ec 000003eb 000003ea 000003e8     ................
    14e0:	000003e7 000003e6 000003e4 000003e3     ................
    14f0:	000003e1 000003e0 000003de 000003dd     ................
    1500:	000003db 000003d9 000003d7 000003d6     ................
    1510:	000003d4 000003d2 000003d0 000003ce     ................
    1520:	000003cc 000003ca 000003c8 000003c6     ................
    1530:	000003c4 000003c2 000003c0 000003be     ................
    1540:	000003bb 000003b9 000003b7 000003b4     ................
    1550:	000003b2 000003b0 000003ad 000003ab     ................
    1560:	000003a8 000003a6 000003a3 000003a0     ................
    1570:	0000039e 0000039b 00000398 00000395     ................
    1580:	00000393 00000390 0000038d 0000038a     ................
    1590:	00000387 00000384 00000381 0000037e     ............~...
    15a0:	0000037b 00000378 00000375 00000372     {...x...u...r...
    15b0:	0000036e 0000036b 00000368 00000364     n...k...h...d...
    15c0:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
    15d0:	00000353 00000350 0000034c 00000349     S...P...L...I...
    15e0:	00000345 00000342 0000033e 0000033a     E...B...>...:...
    15f0:	00000336 00000333 0000032f 0000032b     6...3.../...+...
    1600:	00000327 00000323 0000031f 0000031c     '...#...........
    1610:	00000318 00000314 00000310 0000030b     ................
    1620:	00000307 00000303 000002ff 000002fb     ................
    1630:	000002f7 000002f3 000002ee 000002ea     ................
    1640:	000002e6 000002e1 000002dd 000002d9     ................
    1650:	000002d4 000002d0 000002cb 000002c7     ................
    1660:	000002c2 000002be 000002b9 000002b4     ................
    1670:	000002b0 000002ab 000002a6 000002a2     ................
    1680:	0000029d 00000298 00000293 0000028e     ................
    1690:	0000028a 00000285 00000280 0000027b     ............{...
    16a0:	00000276 00000271 0000026c 00000267     v...q...l...g...
    16b0:	00000262 0000025d 00000258 00000253     b...]...X...S...
    16c0:	0000024e 00000248 00000243 0000023e     N...H...C...>...
    16d0:	00000239 00000234 0000022e 00000229     9...4.......)...
    16e0:	00000224 0000021f 00000219 00000214     $...............
    16f0:	0000020e 00000209 00000204 000001fe     ................
    1700:	000001f9 000001f3 000001ee 000001e8     ................
    1710:	000001e3 000001dd 000001d8 000001d2     ................
    1720:	000001cc 000001c7 000001c1 000001bb     ................
    1730:	000001b6 000001b0 000001aa 000001a5     ................
    1740:	0000019f 00000199 00000193 0000018e     ................
    1750:	00000188 00000182 0000017c 00000176     ........|...v...
    1760:	00000171 0000016b 00000165 0000015f     q...k...e..._...
    1770:	00000159 00000153 0000014d 00000147     Y...S...M...G...
    1780:	00000141 0000013b 00000135 0000012f     A...;...5.../...
    1790:	00000129 00000123 0000011d 00000117     )...#...........
    17a0:	00000111 0000010b 00000105 000000ff     ................
    17b0:	000000f9 000000f3 000000ed 000000e6     ................
    17c0:	000000e0 000000da 000000d4 000000ce     ................
    17d0:	000000c8 000000c2 000000bb 000000b5     ................
    17e0:	000000af 000000a9 000000a3 0000009c     ................
    17f0:	00000096 00000090 0000008a 00000084     ................
    1800:	0000007d 00000077 00000071 0000006b     }...w...q...k...
    1810:	00000064 0000005e 00000058 00000052     d...^...X...R...
    1820:	0000004b 00000045 0000003f 00000039     K...E...?...9...
    1830:	00000032 0000002c 00000026 0000001f     2...,...&.......
    1840:	00000019 00000013 0000000d 00000006     ................
    1850:	00000000 fffffffa fffffff3 ffffffed     ................
    1860:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
    1870:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
    1880:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
    1890:	ffffff9c ffffff95 ffffff8f ffffff89     ................
    18a0:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
    18b0:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
    18c0:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
    18d0:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
    18e0:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
    18f0:	ffffff07 ffffff01 fffffefb fffffef5     ................
    1900:	fffffeef fffffee9 fffffee3 fffffedd     ................
    1910:	fffffed7 fffffed1 fffffecb fffffec5     ................
    1920:	fffffebf fffffeb9 fffffeb3 fffffead     ................
    1930:	fffffea7 fffffea1 fffffe9b fffffe95     ................
    1940:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
    1950:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
    1960:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
    1970:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
    1980:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
    1990:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
    19a0:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
    19b0:	fffffdf2 fffffdec fffffde7 fffffde1     ................
    19c0:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
    19d0:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
    19e0:	fffffdb2 fffffdad fffffda8 fffffda3     ................
    19f0:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
    1a00:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
    1a10:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
    1a20:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
    1a30:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
    1a40:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
    1a50:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
    1a60:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
    1a70:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
    1a80:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
    1a90:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
    1aa0:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
    1ab0:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
    1ac0:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
    1ad0:	fffffcad fffffca9 fffffca6 fffffca2     ................
    1ae0:	fffffc9f fffffc9c fffffc98 fffffc95     ................
    1af0:	fffffc92 fffffc8e fffffc8b fffffc88     ................
    1b00:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
    1b10:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
    1b20:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
    1b30:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
    1b40:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
    1b50:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
    1b60:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
    1b70:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
    1b80:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
    1b90:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
    1ba0:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
    1bb0:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
    1bc0:	fffffc19 fffffc18 fffffc16 fffffc15     ................
    1bd0:	fffffc14 fffffc12 fffffc11 fffffc10     ................
    1be0:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
    1bf0:	fffffc0b fffffc0a fffffc09 fffffc08     ................
    1c00:	fffffc08 fffffc07 fffffc06 fffffc06     ................
    1c10:	fffffc05 fffffc04 fffffc04 fffffc03     ................
    1c20:	fffffc03 fffffc02 fffffc02 fffffc02     ................
    1c30:	fffffc01 fffffc01 fffffc01 fffffc00     ................
    1c40:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1c50:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1c60:	fffffc00 fffffc00 fffffc01 fffffc01     ................
    1c70:	fffffc01 fffffc02 fffffc02 fffffc02     ................
    1c80:	fffffc03 fffffc03 fffffc04 fffffc04     ................
    1c90:	fffffc05 fffffc06 fffffc06 fffffc07     ................
    1ca0:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
    1cb0:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
    1cc0:	fffffc0f fffffc10 fffffc11 fffffc12     ................
    1cd0:	fffffc14 fffffc15 fffffc16 fffffc18     ................
    1ce0:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
    1cf0:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
    1d00:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
    1d10:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
    1d20:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
    1d30:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
    1d40:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
    1d50:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
    1d60:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
    1d70:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
    1d80:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
    1d90:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
    1da0:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
    1db0:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
    1dc0:	fffffc9f fffffca2 fffffca6 fffffca9     ................
    1dd0:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
    1de0:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
    1df0:	fffffcca fffffccd fffffcd1 fffffcd5     ................
    1e00:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
    1e10:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
    1e20:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
    1e30:	fffffd09 fffffd0d fffffd12 fffffd16     ................
    1e40:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
    1e50:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
    1e60:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
    1e70:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
    1e80:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
    1e90:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
    1ea0:	fffffd8a fffffd8f fffffd94 fffffd99     ................
    1eb0:	fffffd9e fffffda3 fffffda8 fffffdad     ................
    1ec0:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
    1ed0:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
    1ee0:	fffffddc fffffde1 fffffde7 fffffdec     ................
    1ef0:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
    1f00:	fffffe07 fffffe0d fffffe12 fffffe18     ................
    1f10:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
    1f20:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
    1f30:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
    1f40:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
    1f50:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
    1f60:	fffffe8f fffffe95 fffffe9b fffffea1     ................
    1f70:	fffffea7 fffffead fffffeb3 fffffeb9     ................
    1f80:	fffffebf fffffec5 fffffecb fffffed1     ................
    1f90:	fffffed7 fffffedd fffffee3 fffffee9     ................
    1fa0:	fffffeef fffffef5 fffffefb ffffff01     ................
    1fb0:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
    1fc0:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
    1fd0:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
    1fe0:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
    1ff0:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
    2000:	ffffff83 ffffff89 ffffff8f ffffff95     ................
    2010:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
    2020:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
    2030:	ffffffce ffffffd4 ffffffda ffffffe1     ................
    2040:	ffffffe7 ffffffed fffffff3 fffffffa     ................
    2050:	00000000 00000006 0000000d 00000013     ................
    2060:	00000019 0000001f 00000026 0000002c     ........&...,...
    2070:	00000032 00000039 0000003f 00000045     2...9...?...E...
    2080:	0000004b 00000052 00000058 0000005e     K...R...X...^...
    2090:	00000064 0000006b 00000071 00000077     d...k...q...w...
    20a0:	0000007d 00000084 0000008a 00000090     }...............
    20b0:	00000096 0000009c 000000a3 000000a9     ................
    20c0:	000000af 000000b5 000000bb 000000c2     ................
    20d0:	000000c8 000000ce 000000d4 000000da     ................
    20e0:	000000e0 000000e6 000000ed 000000f3     ................
    20f0:	000000f9 000000ff 00000105 0000010b     ................
    2100:	00000111 00000117 0000011d 00000123     ............#...
    2110:	00000129 0000012f 00000135 0000013b     ).../...5...;...
    2120:	00000141 00000147 0000014d 00000153     A...G...M...S...
    2130:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
    2140:	00000171 00000176 0000017c 00000182     q...v...|.......
    2150:	00000188 0000018e 00000193 00000199     ................
    2160:	0000019f 000001a5 000001aa 000001b0     ................
    2170:	000001b6 000001bb 000001c1 000001c7     ................
    2180:	000001cc 000001d2 000001d8 000001dd     ................
    2190:	000001e3 000001e8 000001ee 000001f3     ................
    21a0:	000001f9 000001fe 00000204 00000209     ................
    21b0:	0000020e 00000214 00000219 0000021f     ................
    21c0:	00000224 00000229 0000022e 00000234     $...).......4...
    21d0:	00000239 0000023e 00000243 00000248     9...>...C...H...
    21e0:	0000024e 00000253 00000258 0000025d     N...S...X...]...
    21f0:	00000262 00000267 0000026c 00000271     b...g...l...q...
    2200:	00000276 0000027b 00000280 00000285     v...{...........
    2210:	0000028a 0000028e 00000293 00000298     ................
    2220:	0000029d 000002a2 000002a6 000002ab     ................
    2230:	000002b0 000002b4 000002b9 000002be     ................
    2240:	000002c2 000002c7 000002cb 000002d0     ................
    2250:	000002d4 000002d9 000002dd 000002e1     ................
    2260:	000002e6 000002ea 000002ee 000002f3     ................
    2270:	000002f7 000002fb 000002ff 00000303     ................
    2280:	00000307 0000030b 00000310 00000314     ................
    2290:	00000318 0000031c 0000031f 00000323     ............#...
    22a0:	00000327 0000032b 0000032f 00000333     '...+.../...3...
    22b0:	00000336 0000033a 0000033e 00000342     6...:...>...B...
    22c0:	00000345 00000349 0000034c 00000350     E...I...L...P...
    22d0:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
    22e0:	00000361 00000364 00000368 0000036b     a...d...h...k...
    22f0:	0000036e 00000372 00000375 00000378     n...r...u...x...
    2300:	0000037b 0000037e 00000381 00000384     {...~...........
    2310:	00000387 0000038a 0000038d 00000390     ................
    2320:	00000393 00000395 00000398 0000039b     ................
    2330:	0000039e 000003a0 000003a3 000003a6     ................
    2340:	000003a8 000003ab 000003ad 000003b0     ................
    2350:	000003b2 000003b4 000003b7 000003b9     ................
    2360:	000003bb 000003be 000003c0 000003c2     ................
    2370:	000003c4 000003c6 000003c8 000003ca     ................
    2380:	000003cc 000003ce 000003d0 000003d2     ................
    2390:	000003d4 000003d6 000003d7 000003d9     ................
    23a0:	000003db 000003dd 000003de 000003e0     ................
    23b0:	000003e1 000003e3 000003e4 000003e6     ................
    23c0:	000003e7 000003e8 000003ea 000003eb     ................
    23d0:	000003ec 000003ee 000003ef 000003f0     ................
    23e0:	000003f1 000003f2 000003f3 000003f4     ................
    23f0:	000003f5 000003f6 000003f7 000003f8     ................
    2400:	000003f8 000003f9 000003fa 000003fa     ................
    2410:	000003fb 000003fc 000003fc 000003fd     ................
    2420:	000003fd 000003fe 000003fe 000003fe     ................
    2430:	000003ff 000003ff 000003ff 00000400     ................
    2440:	00000400 00000400 00000400 00000400     ................
    2450:	0000129e 000012d0 00001300 0000132e     ................
    2460:	00001268 0000135c 00000080 0000004c     h...\.......L...
    2470:	00000028 00000014 0000000a 00000005     (...............
    2480:	00000003 00000001 000002d4 00000288     ................
    2490:	00000274 0000026f 0000026f 0000026e     t...o...o...n...
    24a0:	0000026e 0000026e                       n...n...
