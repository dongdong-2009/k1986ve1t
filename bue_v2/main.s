
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 59 0a 00 00 b9 0a 00 00 b9 0a 00 00     ... Y...........
	...
      2c:	b9 0a 00 00 00 00 00 00 00 00 00 00 b9 0a 00 00     ................
      3c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      4c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      5c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      6c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      7c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      8c:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      9c:	b9 0a 00 00 b9 0a 00 00 00 00 00 00 00 00 00 00     ................
      ac:	b9 0a 00 00 b9 0a 00 00 b9 0a 00 00 b9 0a 00 00     ................
      bc:	b9 0a 00 00                                         ....

000000c0 <sleep>:
      c0:	b580      	push	{r7, lr}
      c2:	b084      	sub	sp, #16
      c4:	af00      	add	r7, sp, #0
      c6:	6078      	str	r0, [r7, #4]
      c8:	2300      	movs	r3, #0
      ca:	60fb      	str	r3, [r7, #12]
      cc:	e00b      	b.n	e6 <sleep+0x26>
      ce:	46c0      	nop			; (mov r8, r8)
      d0:	4b09      	ldr	r3, [pc, #36]	; (f8 <sleep+0x38>)
      d2:	6d5b      	ldr	r3, [r3, #84]	; 0x54
      d4:	2202      	movs	r2, #2
      d6:	4013      	ands	r3, r2
      d8:	d0fa      	beq.n	d0 <sleep+0x10>
      da:	4b07      	ldr	r3, [pc, #28]	; (f8 <sleep+0x38>)
      dc:	2200      	movs	r2, #0
      de:	655a      	str	r2, [r3, #84]	; 0x54
      e0:	68fb      	ldr	r3, [r7, #12]
      e2:	3301      	adds	r3, #1
      e4:	60fb      	str	r3, [r7, #12]
      e6:	68fa      	ldr	r2, [r7, #12]
      e8:	687b      	ldr	r3, [r7, #4]
      ea:	429a      	cmp	r2, r3
      ec:	d3ef      	bcc.n	ce <sleep+0xe>
      ee:	46c0      	nop			; (mov r8, r8)
      f0:	0018      	movs	r0, r3
      f2:	46bd      	mov	sp, r7
      f4:	b004      	add	sp, #16
      f6:	bd80      	pop	{r7, pc}
      f8:	40098000 	.word	0x40098000

000000fc <PortConfig>:
      fc:	b580      	push	{r7, lr}
      fe:	af00      	add	r7, sp, #0
     100:	4b50      	ldr	r3, [pc, #320]	; (244 <PortConfig+0x148>)
     102:	4a50      	ldr	r2, [pc, #320]	; (244 <PortConfig+0x148>)
     104:	69d2      	ldr	r2, [r2, #28]
     106:	2180      	movs	r1, #128	; 0x80
     108:	0389      	lsls	r1, r1, #14
     10a:	430a      	orrs	r2, r1
     10c:	61da      	str	r2, [r3, #28]
     10e:	4b4e      	ldr	r3, [pc, #312]	; (248 <PortConfig+0x14c>)
     110:	4a4d      	ldr	r2, [pc, #308]	; (248 <PortConfig+0x14c>)
     112:	6892      	ldr	r2, [r2, #8]
     114:	494d      	ldr	r1, [pc, #308]	; (24c <PortConfig+0x150>)
     116:	400a      	ands	r2, r1
     118:	609a      	str	r2, [r3, #8]
     11a:	4b4b      	ldr	r3, [pc, #300]	; (248 <PortConfig+0x14c>)
     11c:	4a4a      	ldr	r2, [pc, #296]	; (248 <PortConfig+0x14c>)
     11e:	6812      	ldr	r2, [r2, #0]
     120:	494b      	ldr	r1, [pc, #300]	; (250 <PortConfig+0x154>)
     122:	400a      	ands	r2, r1
     124:	601a      	str	r2, [r3, #0]
     126:	4b48      	ldr	r3, [pc, #288]	; (248 <PortConfig+0x14c>)
     128:	4a47      	ldr	r2, [pc, #284]	; (248 <PortConfig+0x14c>)
     12a:	6852      	ldr	r2, [r2, #4]
     12c:	2180      	movs	r1, #128	; 0x80
     12e:	0209      	lsls	r1, r1, #8
     130:	430a      	orrs	r2, r1
     132:	605a      	str	r2, [r3, #4]
     134:	4b44      	ldr	r3, [pc, #272]	; (248 <PortConfig+0x14c>)
     136:	4a44      	ldr	r2, [pc, #272]	; (248 <PortConfig+0x14c>)
     138:	68d2      	ldr	r2, [r2, #12]
     13a:	2180      	movs	r1, #128	; 0x80
     13c:	0209      	lsls	r1, r1, #8
     13e:	430a      	orrs	r2, r1
     140:	60da      	str	r2, [r3, #12]
     142:	4b41      	ldr	r3, [pc, #260]	; (248 <PortConfig+0x14c>)
     144:	4a40      	ldr	r2, [pc, #256]	; (248 <PortConfig+0x14c>)
     146:	6992      	ldr	r2, [r2, #24]
     148:	21c0      	movs	r1, #192	; 0xc0
     14a:	0609      	lsls	r1, r1, #24
     14c:	430a      	orrs	r2, r1
     14e:	619a      	str	r2, [r3, #24]
     150:	4b3d      	ldr	r3, [pc, #244]	; (248 <PortConfig+0x14c>)
     152:	4a3d      	ldr	r2, [pc, #244]	; (248 <PortConfig+0x14c>)
     154:	6892      	ldr	r2, [r2, #8]
     156:	493f      	ldr	r1, [pc, #252]	; (254 <PortConfig+0x158>)
     158:	430a      	orrs	r2, r1
     15a:	609a      	str	r2, [r3, #8]
     15c:	4b3a      	ldr	r3, [pc, #232]	; (248 <PortConfig+0x14c>)
     15e:	4a3a      	ldr	r2, [pc, #232]	; (248 <PortConfig+0x14c>)
     160:	6852      	ldr	r2, [r2, #4]
     162:	21fc      	movs	r1, #252	; 0xfc
     164:	0109      	lsls	r1, r1, #4
     166:	430a      	orrs	r2, r1
     168:	605a      	str	r2, [r3, #4]
     16a:	4b37      	ldr	r3, [pc, #220]	; (248 <PortConfig+0x14c>)
     16c:	4a36      	ldr	r2, [pc, #216]	; (248 <PortConfig+0x14c>)
     16e:	68d2      	ldr	r2, [r2, #12]
     170:	21fc      	movs	r1, #252	; 0xfc
     172:	0109      	lsls	r1, r1, #4
     174:	430a      	orrs	r2, r1
     176:	60da      	str	r2, [r3, #12]
     178:	4b33      	ldr	r3, [pc, #204]	; (248 <PortConfig+0x14c>)
     17a:	4a33      	ldr	r2, [pc, #204]	; (248 <PortConfig+0x14c>)
     17c:	6992      	ldr	r2, [r2, #24]
     17e:	4936      	ldr	r1, [pc, #216]	; (258 <PortConfig+0x15c>)
     180:	430a      	orrs	r2, r1
     182:	619a      	str	r2, [r3, #24]
     184:	4b2f      	ldr	r3, [pc, #188]	; (244 <PortConfig+0x148>)
     186:	4a2f      	ldr	r2, [pc, #188]	; (244 <PortConfig+0x148>)
     188:	69d2      	ldr	r2, [r2, #28]
     18a:	2180      	movs	r1, #128	; 0x80
     18c:	0489      	lsls	r1, r1, #18
     18e:	430a      	orrs	r2, r1
     190:	61da      	str	r2, [r3, #28]
     192:	4b32      	ldr	r3, [pc, #200]	; (25c <PortConfig+0x160>)
     194:	4a31      	ldr	r2, [pc, #196]	; (25c <PortConfig+0x160>)
     196:	68d2      	ldr	r2, [r2, #12]
     198:	2102      	movs	r1, #2
     19a:	438a      	bics	r2, r1
     19c:	60da      	str	r2, [r3, #12]
     19e:	4b29      	ldr	r3, [pc, #164]	; (244 <PortConfig+0x148>)
     1a0:	4a28      	ldr	r2, [pc, #160]	; (244 <PortConfig+0x148>)
     1a2:	69d2      	ldr	r2, [r2, #28]
     1a4:	2180      	movs	r1, #128	; 0x80
     1a6:	0449      	lsls	r1, r1, #17
     1a8:	430a      	orrs	r2, r1
     1aa:	61da      	str	r2, [r3, #28]
     1ac:	4b2c      	ldr	r3, [pc, #176]	; (260 <PortConfig+0x164>)
     1ae:	4a2c      	ldr	r2, [pc, #176]	; (260 <PortConfig+0x164>)
     1b0:	6892      	ldr	r2, [r2, #8]
     1b2:	492c      	ldr	r1, [pc, #176]	; (264 <PortConfig+0x168>)
     1b4:	400a      	ands	r2, r1
     1b6:	609a      	str	r2, [r3, #8]
     1b8:	4b29      	ldr	r3, [pc, #164]	; (260 <PortConfig+0x164>)
     1ba:	4a29      	ldr	r2, [pc, #164]	; (260 <PortConfig+0x164>)
     1bc:	6892      	ldr	r2, [r2, #8]
     1be:	21a0      	movs	r1, #160	; 0xa0
     1c0:	02c9      	lsls	r1, r1, #11
     1c2:	430a      	orrs	r2, r1
     1c4:	609a      	str	r2, [r3, #8]
     1c6:	4b26      	ldr	r3, [pc, #152]	; (260 <PortConfig+0x164>)
     1c8:	4a25      	ldr	r2, [pc, #148]	; (260 <PortConfig+0x164>)
     1ca:	68d2      	ldr	r2, [r2, #12]
     1cc:	21c0      	movs	r1, #192	; 0xc0
     1ce:	0089      	lsls	r1, r1, #2
     1d0:	430a      	orrs	r2, r1
     1d2:	60da      	str	r2, [r3, #12]
     1d4:	4b22      	ldr	r3, [pc, #136]	; (260 <PortConfig+0x164>)
     1d6:	4a22      	ldr	r2, [pc, #136]	; (260 <PortConfig+0x164>)
     1d8:	6992      	ldr	r2, [r2, #24]
     1da:	21c0      	movs	r1, #192	; 0xc0
     1dc:	0309      	lsls	r1, r1, #12
     1de:	430a      	orrs	r2, r1
     1e0:	619a      	str	r2, [r3, #24]
     1e2:	4b1f      	ldr	r3, [pc, #124]	; (260 <PortConfig+0x164>)
     1e4:	4a1e      	ldr	r2, [pc, #120]	; (260 <PortConfig+0x164>)
     1e6:	6852      	ldr	r2, [r2, #4]
     1e8:	2180      	movs	r1, #128	; 0x80
     1ea:	0089      	lsls	r1, r1, #2
     1ec:	430a      	orrs	r2, r1
     1ee:	605a      	str	r2, [r3, #4]
     1f0:	4b1b      	ldr	r3, [pc, #108]	; (260 <PortConfig+0x164>)
     1f2:	4a1b      	ldr	r2, [pc, #108]	; (260 <PortConfig+0x164>)
     1f4:	6852      	ldr	r2, [r2, #4]
     1f6:	491c      	ldr	r1, [pc, #112]	; (268 <PortConfig+0x16c>)
     1f8:	400a      	ands	r2, r1
     1fa:	605a      	str	r2, [r3, #4]
     1fc:	4b11      	ldr	r3, [pc, #68]	; (244 <PortConfig+0x148>)
     1fe:	4a11      	ldr	r2, [pc, #68]	; (244 <PortConfig+0x148>)
     200:	69d2      	ldr	r2, [r2, #28]
     202:	2180      	movs	r1, #128	; 0x80
     204:	0409      	lsls	r1, r1, #16
     206:	430a      	orrs	r2, r1
     208:	61da      	str	r2, [r3, #28]
     20a:	4b18      	ldr	r3, [pc, #96]	; (26c <PortConfig+0x170>)
     20c:	2200      	movs	r2, #0
     20e:	609a      	str	r2, [r3, #8]
     210:	4b16      	ldr	r3, [pc, #88]	; (26c <PortConfig+0x170>)
     212:	2200      	movs	r2, #0
     214:	601a      	str	r2, [r3, #0]
     216:	4b15      	ldr	r3, [pc, #84]	; (26c <PortConfig+0x170>)
     218:	4a14      	ldr	r2, [pc, #80]	; (26c <PortConfig+0x170>)
     21a:	6852      	ldr	r2, [r2, #4]
     21c:	2160      	movs	r1, #96	; 0x60
     21e:	430a      	orrs	r2, r1
     220:	605a      	str	r2, [r3, #4]
     222:	4b12      	ldr	r3, [pc, #72]	; (26c <PortConfig+0x170>)
     224:	4a11      	ldr	r2, [pc, #68]	; (26c <PortConfig+0x170>)
     226:	68d2      	ldr	r2, [r2, #12]
     228:	2160      	movs	r1, #96	; 0x60
     22a:	430a      	orrs	r2, r1
     22c:	60da      	str	r2, [r3, #12]
     22e:	4b0f      	ldr	r3, [pc, #60]	; (26c <PortConfig+0x170>)
     230:	4a0e      	ldr	r2, [pc, #56]	; (26c <PortConfig+0x170>)
     232:	6992      	ldr	r2, [r2, #24]
     234:	21f0      	movs	r1, #240	; 0xf0
     236:	0189      	lsls	r1, r1, #6
     238:	430a      	orrs	r2, r1
     23a:	619a      	str	r2, [r3, #24]
     23c:	46c0      	nop			; (mov r8, r8)
     23e:	46bd      	mov	sp, r7
     240:	bd80      	pop	{r7, pc}
     242:	46c0      	nop			; (mov r8, r8)
     244:	40020000 	.word	0x40020000
     248:	400a8000 	.word	0x400a8000
     24c:	ff000fff 	.word	0xff000fff
     250:	ffff7fff 	.word	0xffff7fff
     254:	00aaa000 	.word	0x00aaa000
     258:	00fff000 	.word	0x00fff000
     25c:	400c8000 	.word	0x400c8000
     260:	400c0000 	.word	0x400c0000
     264:	fff0ffff 	.word	0xfff0ffff
     268:	fffffeff 	.word	0xfffffeff
     26c:	400b8000 	.word	0x400b8000

00000270 <ClkConfig>:
     270:	b580      	push	{r7, lr}
     272:	af00      	add	r7, sp, #0
     274:	4b18      	ldr	r3, [pc, #96]	; (2d8 <ClkConfig+0x68>)
     276:	4a18      	ldr	r2, [pc, #96]	; (2d8 <ClkConfig+0x68>)
     278:	6892      	ldr	r2, [r2, #8]
     27a:	2101      	movs	r1, #1
     27c:	430a      	orrs	r2, r1
     27e:	609a      	str	r2, [r3, #8]
     280:	46c0      	nop			; (mov r8, r8)
     282:	4b15      	ldr	r3, [pc, #84]	; (2d8 <ClkConfig+0x68>)
     284:	681b      	ldr	r3, [r3, #0]
     286:	2204      	movs	r2, #4
     288:	4013      	ands	r3, r2
     28a:	d0fa      	beq.n	282 <ClkConfig+0x12>
     28c:	4b12      	ldr	r3, [pc, #72]	; (2d8 <ClkConfig+0x68>)
     28e:	4a12      	ldr	r2, [pc, #72]	; (2d8 <ClkConfig+0x68>)
     290:	68d2      	ldr	r2, [r2, #12]
     292:	2102      	movs	r1, #2
     294:	430a      	orrs	r2, r1
     296:	60da      	str	r2, [r3, #12]
     298:	4b0f      	ldr	r3, [pc, #60]	; (2d8 <ClkConfig+0x68>)
     29a:	4a10      	ldr	r2, [pc, #64]	; (2dc <ClkConfig+0x6c>)
     29c:	605a      	str	r2, [r3, #4]
     29e:	46c0      	nop			; (mov r8, r8)
     2a0:	4b0d      	ldr	r3, [pc, #52]	; (2d8 <ClkConfig+0x68>)
     2a2:	681b      	ldr	r3, [r3, #0]
     2a4:	2202      	movs	r2, #2
     2a6:	4013      	ands	r3, r2
     2a8:	d0fa      	beq.n	2a0 <ClkConfig+0x30>
     2aa:	4b0d      	ldr	r3, [pc, #52]	; (2e0 <ClkConfig+0x70>)
     2ac:	4a0c      	ldr	r2, [pc, #48]	; (2e0 <ClkConfig+0x70>)
     2ae:	6812      	ldr	r2, [r2, #0]
     2b0:	2120      	movs	r1, #32
     2b2:	430a      	orrs	r2, r1
     2b4:	601a      	str	r2, [r3, #0]
     2b6:	4b08      	ldr	r3, [pc, #32]	; (2d8 <ClkConfig+0x68>)
     2b8:	4a07      	ldr	r2, [pc, #28]	; (2d8 <ClkConfig+0x68>)
     2ba:	68d2      	ldr	r2, [r2, #12]
     2bc:	2180      	movs	r1, #128	; 0x80
     2be:	0049      	lsls	r1, r1, #1
     2c0:	430a      	orrs	r2, r1
     2c2:	60da      	str	r2, [r3, #12]
     2c4:	4b04      	ldr	r3, [pc, #16]	; (2d8 <ClkConfig+0x68>)
     2c6:	4a04      	ldr	r2, [pc, #16]	; (2d8 <ClkConfig+0x68>)
     2c8:	68d2      	ldr	r2, [r2, #12]
     2ca:	2104      	movs	r1, #4
     2cc:	430a      	orrs	r2, r1
     2ce:	60da      	str	r2, [r3, #12]
     2d0:	46c0      	nop			; (mov r8, r8)
     2d2:	46bd      	mov	sp, r7
     2d4:	bd80      	pop	{r7, pc}
     2d6:	46c0      	nop			; (mov r8, r8)
     2d8:	40020000 	.word	0x40020000
     2dc:	00000e04 	.word	0x00000e04
     2e0:	40018000 	.word	0x40018000

000002e4 <TimerConfig>:
     2e4:	b580      	push	{r7, lr}
     2e6:	af00      	add	r7, sp, #0
     2e8:	4b7a      	ldr	r3, [pc, #488]	; (4d4 <_stack_size+0xd4>)
     2ea:	4a7a      	ldr	r2, [pc, #488]	; (4d4 <_stack_size+0xd4>)
     2ec:	69d2      	ldr	r2, [r2, #28]
     2ee:	2180      	movs	r1, #128	; 0x80
     2f0:	0309      	lsls	r1, r1, #12
     2f2:	430a      	orrs	r2, r1
     2f4:	61da      	str	r2, [r3, #28]
     2f6:	4b77      	ldr	r3, [pc, #476]	; (4d4 <_stack_size+0xd4>)
     2f8:	4a76      	ldr	r2, [pc, #472]	; (4d4 <_stack_size+0xd4>)
     2fa:	6a92      	ldr	r2, [r2, #40]	; 0x28
     2fc:	2180      	movs	r1, #128	; 0x80
     2fe:	04c9      	lsls	r1, r1, #19
     300:	430a      	orrs	r2, r1
     302:	629a      	str	r2, [r3, #40]	; 0x28
     304:	4b73      	ldr	r3, [pc, #460]	; (4d4 <_stack_size+0xd4>)
     306:	4a73      	ldr	r2, [pc, #460]	; (4d4 <_stack_size+0xd4>)
     308:	6a92      	ldr	r2, [r2, #40]	; 0x28
     30a:	4973      	ldr	r1, [pc, #460]	; (4d8 <_stack_size+0xd8>)
     30c:	400a      	ands	r2, r1
     30e:	629a      	str	r2, [r3, #40]	; 0x28
     310:	4b72      	ldr	r3, [pc, #456]	; (4dc <_stack_size+0xdc>)
     312:	2200      	movs	r2, #0
     314:	601a      	str	r2, [r3, #0]
     316:	4b71      	ldr	r3, [pc, #452]	; (4dc <_stack_size+0xdc>)
     318:	2204      	movs	r2, #4
     31a:	605a      	str	r2, [r3, #4]
     31c:	4b6f      	ldr	r3, [pc, #444]	; (4dc <_stack_size+0xdc>)
     31e:	4a70      	ldr	r2, [pc, #448]	; (4e0 <_stack_size+0xe0>)
     320:	609a      	str	r2, [r3, #8]
     322:	4b6e      	ldr	r3, [pc, #440]	; (4dc <_stack_size+0xdc>)
     324:	2280      	movs	r2, #128	; 0x80
     326:	0092      	lsls	r2, r2, #2
     328:	611a      	str	r2, [r3, #16]
     32a:	4b6c      	ldr	r3, [pc, #432]	; (4dc <_stack_size+0xdc>)
     32c:	2280      	movs	r2, #128	; 0x80
     32e:	0092      	lsls	r2, r2, #2
     330:	615a      	str	r2, [r3, #20]
     332:	4b6a      	ldr	r3, [pc, #424]	; (4dc <_stack_size+0xdc>)
     334:	2280      	movs	r2, #128	; 0x80
     336:	0092      	lsls	r2, r2, #2
     338:	619a      	str	r2, [r3, #24]
     33a:	4b68      	ldr	r3, [pc, #416]	; (4dc <_stack_size+0xdc>)
     33c:	4a67      	ldr	r2, [pc, #412]	; (4dc <_stack_size+0xdc>)
     33e:	6a12      	ldr	r2, [r2, #32]
     340:	4968      	ldr	r1, [pc, #416]	; (4e4 <_stack_size+0xe4>)
     342:	400a      	ands	r2, r1
     344:	621a      	str	r2, [r3, #32]
     346:	4b65      	ldr	r3, [pc, #404]	; (4dc <_stack_size+0xdc>)
     348:	4a64      	ldr	r2, [pc, #400]	; (4dc <_stack_size+0xdc>)
     34a:	6a12      	ldr	r2, [r2, #32]
     34c:	21e0      	movs	r1, #224	; 0xe0
     34e:	0109      	lsls	r1, r1, #4
     350:	430a      	orrs	r2, r1
     352:	621a      	str	r2, [r3, #32]
     354:	4b61      	ldr	r3, [pc, #388]	; (4dc <_stack_size+0xdc>)
     356:	4a61      	ldr	r2, [pc, #388]	; (4dc <_stack_size+0xdc>)
     358:	6b12      	ldr	r2, [r2, #48]	; 0x30
     35a:	210f      	movs	r1, #15
     35c:	438a      	bics	r2, r1
     35e:	631a      	str	r2, [r3, #48]	; 0x30
     360:	4b5e      	ldr	r3, [pc, #376]	; (4dc <_stack_size+0xdc>)
     362:	4a5e      	ldr	r2, [pc, #376]	; (4dc <_stack_size+0xdc>)
     364:	6b12      	ldr	r2, [r2, #48]	; 0x30
     366:	210c      	movs	r1, #12
     368:	430a      	orrs	r2, r1
     36a:	631a      	str	r2, [r3, #48]	; 0x30
     36c:	4b5b      	ldr	r3, [pc, #364]	; (4dc <_stack_size+0xdc>)
     36e:	4a5b      	ldr	r2, [pc, #364]	; (4dc <_stack_size+0xdc>)
     370:	6b12      	ldr	r2, [r2, #48]	; 0x30
     372:	2101      	movs	r1, #1
     374:	430a      	orrs	r2, r1
     376:	631a      	str	r2, [r3, #48]	; 0x30
     378:	4b58      	ldr	r3, [pc, #352]	; (4dc <_stack_size+0xdc>)
     37a:	4a58      	ldr	r2, [pc, #352]	; (4dc <_stack_size+0xdc>)
     37c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     37e:	495a      	ldr	r1, [pc, #360]	; (4e8 <_stack_size+0xe8>)
     380:	400a      	ands	r2, r1
     382:	631a      	str	r2, [r3, #48]	; 0x30
     384:	4b55      	ldr	r3, [pc, #340]	; (4dc <_stack_size+0xdc>)
     386:	4a55      	ldr	r2, [pc, #340]	; (4dc <_stack_size+0xdc>)
     388:	6b12      	ldr	r2, [r2, #48]	; 0x30
     38a:	21c0      	movs	r1, #192	; 0xc0
     38c:	0109      	lsls	r1, r1, #4
     38e:	430a      	orrs	r2, r1
     390:	631a      	str	r2, [r3, #48]	; 0x30
     392:	4b52      	ldr	r3, [pc, #328]	; (4dc <_stack_size+0xdc>)
     394:	4a51      	ldr	r2, [pc, #324]	; (4dc <_stack_size+0xdc>)
     396:	6b12      	ldr	r2, [r2, #48]	; 0x30
     398:	2180      	movs	r1, #128	; 0x80
     39a:	0049      	lsls	r1, r1, #1
     39c:	430a      	orrs	r2, r1
     39e:	631a      	str	r2, [r3, #48]	; 0x30
     3a0:	4b4e      	ldr	r3, [pc, #312]	; (4dc <_stack_size+0xdc>)
     3a2:	4a4e      	ldr	r2, [pc, #312]	; (4dc <_stack_size+0xdc>)
     3a4:	6e12      	ldr	r2, [r2, #96]	; 0x60
     3a6:	2108      	movs	r1, #8
     3a8:	430a      	orrs	r2, r1
     3aa:	661a      	str	r2, [r3, #96]	; 0x60
     3ac:	4b4b      	ldr	r3, [pc, #300]	; (4dc <_stack_size+0xdc>)
     3ae:	4a4b      	ldr	r2, [pc, #300]	; (4dc <_stack_size+0xdc>)
     3b0:	6a52      	ldr	r2, [r2, #36]	; 0x24
     3b2:	494c      	ldr	r1, [pc, #304]	; (4e4 <_stack_size+0xe4>)
     3b4:	400a      	ands	r2, r1
     3b6:	625a      	str	r2, [r3, #36]	; 0x24
     3b8:	4b48      	ldr	r3, [pc, #288]	; (4dc <_stack_size+0xdc>)
     3ba:	4a48      	ldr	r2, [pc, #288]	; (4dc <_stack_size+0xdc>)
     3bc:	6a52      	ldr	r2, [r2, #36]	; 0x24
     3be:	21e0      	movs	r1, #224	; 0xe0
     3c0:	0109      	lsls	r1, r1, #4
     3c2:	430a      	orrs	r2, r1
     3c4:	625a      	str	r2, [r3, #36]	; 0x24
     3c6:	4b45      	ldr	r3, [pc, #276]	; (4dc <_stack_size+0xdc>)
     3c8:	4a44      	ldr	r2, [pc, #272]	; (4dc <_stack_size+0xdc>)
     3ca:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3cc:	210f      	movs	r1, #15
     3ce:	438a      	bics	r2, r1
     3d0:	635a      	str	r2, [r3, #52]	; 0x34
     3d2:	4b42      	ldr	r3, [pc, #264]	; (4dc <_stack_size+0xdc>)
     3d4:	4a41      	ldr	r2, [pc, #260]	; (4dc <_stack_size+0xdc>)
     3d6:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3d8:	210c      	movs	r1, #12
     3da:	430a      	orrs	r2, r1
     3dc:	635a      	str	r2, [r3, #52]	; 0x34
     3de:	4b3f      	ldr	r3, [pc, #252]	; (4dc <_stack_size+0xdc>)
     3e0:	4a3e      	ldr	r2, [pc, #248]	; (4dc <_stack_size+0xdc>)
     3e2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3e4:	2101      	movs	r1, #1
     3e6:	430a      	orrs	r2, r1
     3e8:	635a      	str	r2, [r3, #52]	; 0x34
     3ea:	4b3c      	ldr	r3, [pc, #240]	; (4dc <_stack_size+0xdc>)
     3ec:	4a3b      	ldr	r2, [pc, #236]	; (4dc <_stack_size+0xdc>)
     3ee:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3f0:	493d      	ldr	r1, [pc, #244]	; (4e8 <_stack_size+0xe8>)
     3f2:	400a      	ands	r2, r1
     3f4:	635a      	str	r2, [r3, #52]	; 0x34
     3f6:	4b39      	ldr	r3, [pc, #228]	; (4dc <_stack_size+0xdc>)
     3f8:	4a38      	ldr	r2, [pc, #224]	; (4dc <_stack_size+0xdc>)
     3fa:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3fc:	21c0      	movs	r1, #192	; 0xc0
     3fe:	0109      	lsls	r1, r1, #4
     400:	430a      	orrs	r2, r1
     402:	635a      	str	r2, [r3, #52]	; 0x34
     404:	4b35      	ldr	r3, [pc, #212]	; (4dc <_stack_size+0xdc>)
     406:	4a35      	ldr	r2, [pc, #212]	; (4dc <_stack_size+0xdc>)
     408:	6b52      	ldr	r2, [r2, #52]	; 0x34
     40a:	2180      	movs	r1, #128	; 0x80
     40c:	0049      	lsls	r1, r1, #1
     40e:	430a      	orrs	r2, r1
     410:	635a      	str	r2, [r3, #52]	; 0x34
     412:	4b32      	ldr	r3, [pc, #200]	; (4dc <_stack_size+0xdc>)
     414:	4a31      	ldr	r2, [pc, #196]	; (4dc <_stack_size+0xdc>)
     416:	6e52      	ldr	r2, [r2, #100]	; 0x64
     418:	2108      	movs	r1, #8
     41a:	430a      	orrs	r2, r1
     41c:	665a      	str	r2, [r3, #100]	; 0x64
     41e:	4b2f      	ldr	r3, [pc, #188]	; (4dc <_stack_size+0xdc>)
     420:	4a2e      	ldr	r2, [pc, #184]	; (4dc <_stack_size+0xdc>)
     422:	6a92      	ldr	r2, [r2, #40]	; 0x28
     424:	492f      	ldr	r1, [pc, #188]	; (4e4 <_stack_size+0xe4>)
     426:	400a      	ands	r2, r1
     428:	629a      	str	r2, [r3, #40]	; 0x28
     42a:	4b2c      	ldr	r3, [pc, #176]	; (4dc <_stack_size+0xdc>)
     42c:	4a2b      	ldr	r2, [pc, #172]	; (4dc <_stack_size+0xdc>)
     42e:	6a92      	ldr	r2, [r2, #40]	; 0x28
     430:	21e0      	movs	r1, #224	; 0xe0
     432:	0109      	lsls	r1, r1, #4
     434:	430a      	orrs	r2, r1
     436:	629a      	str	r2, [r3, #40]	; 0x28
     438:	4b28      	ldr	r3, [pc, #160]	; (4dc <_stack_size+0xdc>)
     43a:	4a28      	ldr	r2, [pc, #160]	; (4dc <_stack_size+0xdc>)
     43c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     43e:	210f      	movs	r1, #15
     440:	438a      	bics	r2, r1
     442:	639a      	str	r2, [r3, #56]	; 0x38
     444:	4b25      	ldr	r3, [pc, #148]	; (4dc <_stack_size+0xdc>)
     446:	4a25      	ldr	r2, [pc, #148]	; (4dc <_stack_size+0xdc>)
     448:	6b92      	ldr	r2, [r2, #56]	; 0x38
     44a:	210c      	movs	r1, #12
     44c:	430a      	orrs	r2, r1
     44e:	639a      	str	r2, [r3, #56]	; 0x38
     450:	4b22      	ldr	r3, [pc, #136]	; (4dc <_stack_size+0xdc>)
     452:	4a22      	ldr	r2, [pc, #136]	; (4dc <_stack_size+0xdc>)
     454:	6b92      	ldr	r2, [r2, #56]	; 0x38
     456:	2101      	movs	r1, #1
     458:	430a      	orrs	r2, r1
     45a:	639a      	str	r2, [r3, #56]	; 0x38
     45c:	4b1f      	ldr	r3, [pc, #124]	; (4dc <_stack_size+0xdc>)
     45e:	4a1f      	ldr	r2, [pc, #124]	; (4dc <_stack_size+0xdc>)
     460:	6b92      	ldr	r2, [r2, #56]	; 0x38
     462:	4921      	ldr	r1, [pc, #132]	; (4e8 <_stack_size+0xe8>)
     464:	400a      	ands	r2, r1
     466:	639a      	str	r2, [r3, #56]	; 0x38
     468:	4b1c      	ldr	r3, [pc, #112]	; (4dc <_stack_size+0xdc>)
     46a:	4a1c      	ldr	r2, [pc, #112]	; (4dc <_stack_size+0xdc>)
     46c:	6b92      	ldr	r2, [r2, #56]	; 0x38
     46e:	21c0      	movs	r1, #192	; 0xc0
     470:	0109      	lsls	r1, r1, #4
     472:	430a      	orrs	r2, r1
     474:	639a      	str	r2, [r3, #56]	; 0x38
     476:	4b19      	ldr	r3, [pc, #100]	; (4dc <_stack_size+0xdc>)
     478:	4a18      	ldr	r2, [pc, #96]	; (4dc <_stack_size+0xdc>)
     47a:	6b92      	ldr	r2, [r2, #56]	; 0x38
     47c:	2180      	movs	r1, #128	; 0x80
     47e:	0049      	lsls	r1, r1, #1
     480:	430a      	orrs	r2, r1
     482:	639a      	str	r2, [r3, #56]	; 0x38
     484:	4b15      	ldr	r3, [pc, #84]	; (4dc <_stack_size+0xdc>)
     486:	4a15      	ldr	r2, [pc, #84]	; (4dc <_stack_size+0xdc>)
     488:	6e92      	ldr	r2, [r2, #104]	; 0x68
     48a:	2108      	movs	r1, #8
     48c:	430a      	orrs	r2, r1
     48e:	669a      	str	r2, [r3, #104]	; 0x68
     490:	4b12      	ldr	r3, [pc, #72]	; (4dc <_stack_size+0xdc>)
     492:	4a12      	ldr	r2, [pc, #72]	; (4dc <_stack_size+0xdc>)
     494:	6c12      	ldr	r2, [r2, #64]	; 0x40
     496:	2196      	movs	r1, #150	; 0x96
     498:	0189      	lsls	r1, r1, #6
     49a:	430a      	orrs	r2, r1
     49c:	641a      	str	r2, [r3, #64]	; 0x40
     49e:	4b0f      	ldr	r3, [pc, #60]	; (4dc <_stack_size+0xdc>)
     4a0:	4a0e      	ldr	r2, [pc, #56]	; (4dc <_stack_size+0xdc>)
     4a2:	6c52      	ldr	r2, [r2, #68]	; 0x44
     4a4:	2196      	movs	r1, #150	; 0x96
     4a6:	0189      	lsls	r1, r1, #6
     4a8:	430a      	orrs	r2, r1
     4aa:	645a      	str	r2, [r3, #68]	; 0x44
     4ac:	4b0b      	ldr	r3, [pc, #44]	; (4dc <_stack_size+0xdc>)
     4ae:	4a0b      	ldr	r2, [pc, #44]	; (4dc <_stack_size+0xdc>)
     4b0:	6c92      	ldr	r2, [r2, #72]	; 0x48
     4b2:	2196      	movs	r1, #150	; 0x96
     4b4:	0189      	lsls	r1, r1, #6
     4b6:	430a      	orrs	r2, r1
     4b8:	649a      	str	r2, [r3, #72]	; 0x48
     4ba:	4b08      	ldr	r3, [pc, #32]	; (4dc <_stack_size+0xdc>)
     4bc:	4a07      	ldr	r2, [pc, #28]	; (4dc <_stack_size+0xdc>)
     4be:	6d92      	ldr	r2, [r2, #88]	; 0x58
     4c0:	21f0      	movs	r1, #240	; 0xf0
     4c2:	0149      	lsls	r1, r1, #5
     4c4:	430a      	orrs	r2, r1
     4c6:	659a      	str	r2, [r3, #88]	; 0x58
     4c8:	4b04      	ldr	r3, [pc, #16]	; (4dc <_stack_size+0xdc>)
     4ca:	2201      	movs	r2, #1
     4cc:	60da      	str	r2, [r3, #12]
     4ce:	46c0      	nop			; (mov r8, r8)
     4d0:	46bd      	mov	sp, r7
     4d2:	bd80      	pop	{r7, pc}
     4d4:	40020000 	.word	0x40020000
     4d8:	ff00ffff 	.word	0xff00ffff
     4dc:	40098000 	.word	0x40098000
     4e0:	000003ff 	.word	0x000003ff
     4e4:	fffff1ff 	.word	0xfffff1ff
     4e8:	fffff0ff 	.word	0xfffff0ff

000004ec <adc_init>:
     4ec:	b580      	push	{r7, lr}
     4ee:	af00      	add	r7, sp, #0
     4f0:	4b0f      	ldr	r3, [pc, #60]	; (530 <adc_init+0x44>)
     4f2:	4a0f      	ldr	r2, [pc, #60]	; (530 <adc_init+0x44>)
     4f4:	69d2      	ldr	r2, [r2, #28]
     4f6:	2180      	movs	r1, #128	; 0x80
     4f8:	0289      	lsls	r1, r1, #10
     4fa:	430a      	orrs	r2, r1
     4fc:	61da      	str	r2, [r3, #28]
     4fe:	4b0c      	ldr	r3, [pc, #48]	; (530 <adc_init+0x44>)
     500:	4a0c      	ldr	r2, [pc, #48]	; (534 <adc_init+0x48>)
     502:	615a      	str	r2, [r3, #20]
     504:	4b0c      	ldr	r3, [pc, #48]	; (538 <adc_init+0x4c>)
     506:	2200      	movs	r2, #0
     508:	601a      	str	r2, [r3, #0]
     50a:	4b0b      	ldr	r3, [pc, #44]	; (538 <adc_init+0x4c>)
     50c:	4a0a      	ldr	r2, [pc, #40]	; (538 <adc_init+0x4c>)
     50e:	6812      	ldr	r2, [r2, #0]
     510:	490a      	ldr	r1, [pc, #40]	; (53c <adc_init+0x50>)
     512:	430a      	orrs	r2, r1
     514:	601a      	str	r2, [r3, #0]
     516:	4b08      	ldr	r3, [pc, #32]	; (538 <adc_init+0x4c>)
     518:	4a07      	ldr	r2, [pc, #28]	; (538 <adc_init+0x4c>)
     51a:	6a92      	ldr	r2, [r2, #40]	; 0x28
     51c:	2139      	movs	r1, #57	; 0x39
     51e:	430a      	orrs	r2, r1
     520:	629a      	str	r2, [r3, #40]	; 0x28
     522:	4b05      	ldr	r3, [pc, #20]	; (538 <adc_init+0x4c>)
     524:	2210      	movs	r2, #16
     526:	621a      	str	r2, [r3, #32]
     528:	46c0      	nop			; (mov r8, r8)
     52a:	46bd      	mov	sp, r7
     52c:	bd80      	pop	{r7, pc}
     52e:	46c0      	nop			; (mov r8, r8)
     530:	40020000 	.word	0x40020000
     534:	00002020 	.word	0x00002020
     538:	40088000 	.word	0x40088000
     53c:	00000205 	.word	0x00000205

00000540 <dac_init>:
     540:	b580      	push	{r7, lr}
     542:	af00      	add	r7, sp, #0
     544:	4b07      	ldr	r3, [pc, #28]	; (564 <dac_init+0x24>)
     546:	4a07      	ldr	r2, [pc, #28]	; (564 <dac_init+0x24>)
     548:	69d2      	ldr	r2, [r2, #28]
     54a:	2180      	movs	r1, #128	; 0x80
     54c:	02c9      	lsls	r1, r1, #11
     54e:	430a      	orrs	r2, r1
     550:	61da      	str	r2, [r3, #28]
     552:	4b05      	ldr	r3, [pc, #20]	; (568 <dac_init+0x28>)
     554:	4a04      	ldr	r2, [pc, #16]	; (568 <dac_init+0x28>)
     556:	6812      	ldr	r2, [r2, #0]
     558:	2104      	movs	r1, #4
     55a:	430a      	orrs	r2, r1
     55c:	601a      	str	r2, [r3, #0]
     55e:	46c0      	nop			; (mov r8, r8)
     560:	46bd      	mov	sp, r7
     562:	bd80      	pop	{r7, pc}
     564:	40020000 	.word	0x40020000
     568:	40090000 	.word	0x40090000

0000056c <ssi_init>:
     56c:	b580      	push	{r7, lr}
     56e:	af00      	add	r7, sp, #0
     570:	4b0c      	ldr	r3, [pc, #48]	; (5a4 <ssi_init+0x38>)
     572:	4a0c      	ldr	r2, [pc, #48]	; (5a4 <ssi_init+0x38>)
     574:	69d2      	ldr	r2, [r2, #28]
     576:	2180      	movs	r1, #128	; 0x80
     578:	0349      	lsls	r1, r1, #13
     57a:	430a      	orrs	r2, r1
     57c:	61da      	str	r2, [r3, #28]
     57e:	4b09      	ldr	r3, [pc, #36]	; (5a4 <ssi_init+0x38>)
     580:	4a09      	ldr	r2, [pc, #36]	; (5a8 <ssi_init+0x3c>)
     582:	62da      	str	r2, [r3, #44]	; 0x2c
     584:	4b09      	ldr	r3, [pc, #36]	; (5ac <ssi_init+0x40>)
     586:	2200      	movs	r2, #0
     588:	605a      	str	r2, [r3, #4]
     58a:	4b08      	ldr	r3, [pc, #32]	; (5ac <ssi_init+0x40>)
     58c:	220a      	movs	r2, #10
     58e:	611a      	str	r2, [r3, #16]
     590:	4b06      	ldr	r3, [pc, #24]	; (5ac <ssi_init+0x40>)
     592:	4a07      	ldr	r2, [pc, #28]	; (5b0 <ssi_init+0x44>)
     594:	601a      	str	r2, [r3, #0]
     596:	4b05      	ldr	r3, [pc, #20]	; (5ac <ssi_init+0x40>)
     598:	2202      	movs	r2, #2
     59a:	605a      	str	r2, [r3, #4]
     59c:	46c0      	nop			; (mov r8, r8)
     59e:	46bd      	mov	sp, r7
     5a0:	bd80      	pop	{r7, pc}
     5a2:	46c0      	nop			; (mov r8, r8)
     5a4:	40020000 	.word	0x40020000
     5a8:	02000200 	.word	0x02000200
     5ac:	400a0000 	.word	0x400a0000
     5b0:	0000021b 	.word	0x0000021b

000005b4 <b2g>:
     5b4:	b580      	push	{r7, lr}
     5b6:	b082      	sub	sp, #8
     5b8:	af00      	add	r7, sp, #0
     5ba:	6078      	str	r0, [r7, #4]
     5bc:	687b      	ldr	r3, [r7, #4]
     5be:	085a      	lsrs	r2, r3, #1
     5c0:	687b      	ldr	r3, [r7, #4]
     5c2:	4053      	eors	r3, r2
     5c4:	0018      	movs	r0, r3
     5c6:	46bd      	mov	sp, r7
     5c8:	b002      	add	sp, #8
     5ca:	bd80      	pop	{r7, pc}

000005cc <g2b>:
     5cc:	b580      	push	{r7, lr}
     5ce:	b084      	sub	sp, #16
     5d0:	af00      	add	r7, sp, #0
     5d2:	6078      	str	r0, [r7, #4]
     5d4:	2300      	movs	r3, #0
     5d6:	60fb      	str	r3, [r7, #12]
     5d8:	2300      	movs	r3, #0
     5da:	60fb      	str	r3, [r7, #12]
     5dc:	e006      	b.n	5ec <g2b+0x20>
     5de:	68fa      	ldr	r2, [r7, #12]
     5e0:	687b      	ldr	r3, [r7, #4]
     5e2:	4053      	eors	r3, r2
     5e4:	60fb      	str	r3, [r7, #12]
     5e6:	687b      	ldr	r3, [r7, #4]
     5e8:	085b      	lsrs	r3, r3, #1
     5ea:	607b      	str	r3, [r7, #4]
     5ec:	687b      	ldr	r3, [r7, #4]
     5ee:	2b00      	cmp	r3, #0
     5f0:	d1f5      	bne.n	5de <g2b+0x12>
     5f2:	68fb      	ldr	r3, [r7, #12]
     5f4:	0018      	movs	r0, r3
     5f6:	46bd      	mov	sp, r7
     5f8:	b004      	add	sp, #16
     5fa:	bd80      	pop	{r7, pc}

000005fc <SystemInit>:
     5fc:	b580      	push	{r7, lr}
     5fe:	af00      	add	r7, sp, #0
     600:	f7ff fe36 	bl	270 <ClkConfig>
     604:	f7ff fd7a 	bl	fc <PortConfig>
     608:	f7ff fe6c 	bl	2e4 <TimerConfig>
     60c:	f7ff ff6e 	bl	4ec <adc_init>
     610:	f7ff ff96 	bl	540 <dac_init>
     614:	f7ff ffaa 	bl	56c <ssi_init>
     618:	f000 fa52 	bl	ac0 <adc_dma_init>
     61c:	46c0      	nop			; (mov r8, r8)
     61e:	46bd      	mov	sp, r7
     620:	bd80      	pop	{r7, pc}
     622:	46c0      	nop			; (mov r8, r8)

00000624 <timer_wait>:
     624:	b580      	push	{r7, lr}
     626:	af00      	add	r7, sp, #0
     628:	46c0      	nop			; (mov r8, r8)
     62a:	4b05      	ldr	r3, [pc, #20]	; (640 <timer_wait+0x1c>)
     62c:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     62e:	2202      	movs	r2, #2
     630:	4013      	ands	r3, r2
     632:	d0fa      	beq.n	62a <timer_wait+0x6>
     634:	4b02      	ldr	r3, [pc, #8]	; (640 <timer_wait+0x1c>)
     636:	2200      	movs	r2, #0
     638:	655a      	str	r2, [r3, #84]	; 0x54
     63a:	46c0      	nop			; (mov r8, r8)
     63c:	46bd      	mov	sp, r7
     63e:	bd80      	pop	{r7, pc}
     640:	40098000 	.word	0x40098000

00000644 <main>:
     644:	b580      	push	{r7, lr}
     646:	b0a6      	sub	sp, #152	; 0x98
     648:	af00      	add	r7, sp, #0
     64a:	2300      	movs	r3, #0
     64c:	2294      	movs	r2, #148	; 0x94
     64e:	18ba      	adds	r2, r7, r2
     650:	6013      	str	r3, [r2, #0]
     652:	2300      	movs	r3, #0
     654:	67fb      	str	r3, [r7, #124]	; 0x7c
     656:	2300      	movs	r3, #0
     658:	67bb      	str	r3, [r7, #120]	; 0x78
     65a:	2300      	movs	r3, #0
     65c:	2290      	movs	r2, #144	; 0x90
     65e:	18ba      	adds	r2, r7, r2
     660:	6013      	str	r3, [r2, #0]
     662:	2300      	movs	r3, #0
     664:	228c      	movs	r2, #140	; 0x8c
     666:	18ba      	adds	r2, r7, r2
     668:	6013      	str	r3, [r2, #0]
     66a:	2300      	movs	r3, #0
     66c:	2288      	movs	r2, #136	; 0x88
     66e:	18ba      	adds	r2, r7, r2
     670:	6013      	str	r3, [r2, #0]
     672:	2300      	movs	r3, #0
     674:	2284      	movs	r2, #132	; 0x84
     676:	18ba      	adds	r2, r7, r2
     678:	6013      	str	r3, [r2, #0]
     67a:	23fa      	movs	r3, #250	; 0xfa
     67c:	009b      	lsls	r3, r3, #2
     67e:	677b      	str	r3, [r7, #116]	; 0x74
     680:	2300      	movs	r3, #0
     682:	603b      	str	r3, [r7, #0]
     684:	f7ff ffba 	bl	5fc <SystemInit>
     688:	2396      	movs	r3, #150	; 0x96
     68a:	009a      	lsls	r2, r3, #2
     68c:	2396      	movs	r3, #150	; 0x96
     68e:	0099      	lsls	r1, r3, #2
     690:	2334      	movs	r3, #52	; 0x34
     692:	18fb      	adds	r3, r7, r3
     694:	0018      	movs	r0, r3
     696:	f000 fa99 	bl	bcc <reg_init>
     69a:	2396      	movs	r3, #150	; 0x96
     69c:	009a      	lsls	r2, r3, #2
     69e:	2396      	movs	r3, #150	; 0x96
     6a0:	0099      	lsls	r1, r3, #2
     6a2:	2324      	movs	r3, #36	; 0x24
     6a4:	18fb      	adds	r3, r7, r3
     6a6:	0018      	movs	r0, r3
     6a8:	f000 fa90 	bl	bcc <reg_init>
     6ac:	23fa      	movs	r3, #250	; 0xfa
     6ae:	011a      	lsls	r2, r3, #4
     6b0:	2314      	movs	r3, #20
     6b2:	18fb      	adds	r3, r7, r3
     6b4:	2100      	movs	r1, #0
     6b6:	0018      	movs	r0, r3
     6b8:	f000 fa88 	bl	bcc <reg_init>
     6bc:	4ad8      	ldr	r2, [pc, #864]	; (a20 <main+0x3dc>)
     6be:	1d3b      	adds	r3, r7, #4
     6c0:	2100      	movs	r1, #0
     6c2:	0018      	movs	r0, r3
     6c4:	f000 fa82 	bl	bcc <reg_init>
     6c8:	4bd6      	ldr	r3, [pc, #856]	; (a24 <main+0x3e0>)
     6ca:	2200      	movs	r2, #0
     6cc:	601a      	str	r2, [r3, #0]
     6ce:	2300      	movs	r3, #0
     6d0:	2290      	movs	r2, #144	; 0x90
     6d2:	18ba      	adds	r2, r7, r2
     6d4:	6013      	str	r3, [r2, #0]
     6d6:	2300      	movs	r3, #0
     6d8:	228c      	movs	r2, #140	; 0x8c
     6da:	18ba      	adds	r2, r7, r2
     6dc:	6013      	str	r3, [r2, #0]
     6de:	4bd2      	ldr	r3, [pc, #840]	; (a28 <main+0x3e4>)
     6e0:	2200      	movs	r2, #0
     6e2:	601a      	str	r2, [r3, #0]
     6e4:	4bd1      	ldr	r3, [pc, #836]	; (a2c <main+0x3e8>)
     6e6:	2200      	movs	r2, #0
     6e8:	601a      	str	r2, [r3, #0]
     6ea:	2300      	movs	r3, #0
     6ec:	2294      	movs	r2, #148	; 0x94
     6ee:	18ba      	adds	r2, r7, r2
     6f0:	6013      	str	r3, [r2, #0]
     6f2:	e047      	b.n	784 <main+0x140>
     6f4:	f7ff ff96 	bl	624 <timer_wait>
     6f8:	f000 fa22 	bl	b40 <adc_dma_start>
     6fc:	4bcc      	ldr	r3, [pc, #816]	; (a30 <main+0x3ec>)
     6fe:	4acd      	ldr	r2, [pc, #820]	; (a34 <main+0x3f0>)
     700:	609a      	str	r2, [r3, #8]
     702:	f000 fa31 	bl	b68 <adc_dma_wait>
     706:	4bcc      	ldr	r3, [pc, #816]	; (a38 <main+0x3f4>)
     708:	685b      	ldr	r3, [r3, #4]
     70a:	051b      	lsls	r3, r3, #20
     70c:	0d1a      	lsrs	r2, r3, #20
     70e:	2390      	movs	r3, #144	; 0x90
     710:	18fb      	adds	r3, r7, r3
     712:	681b      	ldr	r3, [r3, #0]
     714:	18d3      	adds	r3, r2, r3
     716:	2290      	movs	r2, #144	; 0x90
     718:	18ba      	adds	r2, r7, r2
     71a:	6013      	str	r3, [r2, #0]
     71c:	4bc6      	ldr	r3, [pc, #792]	; (a38 <main+0x3f4>)
     71e:	689b      	ldr	r3, [r3, #8]
     720:	051b      	lsls	r3, r3, #20
     722:	0d1a      	lsrs	r2, r3, #20
     724:	238c      	movs	r3, #140	; 0x8c
     726:	18fb      	adds	r3, r7, r3
     728:	681b      	ldr	r3, [r3, #0]
     72a:	18d3      	adds	r3, r2, r3
     72c:	228c      	movs	r2, #140	; 0x8c
     72e:	18ba      	adds	r2, r7, r2
     730:	6013      	str	r3, [r2, #0]
     732:	4bc1      	ldr	r3, [pc, #772]	; (a38 <main+0x3f4>)
     734:	68db      	ldr	r3, [r3, #12]
     736:	051b      	lsls	r3, r3, #20
     738:	0d1a      	lsrs	r2, r3, #20
     73a:	4bbb      	ldr	r3, [pc, #748]	; (a28 <main+0x3e4>)
     73c:	681b      	ldr	r3, [r3, #0]
     73e:	18d3      	adds	r3, r2, r3
     740:	001a      	movs	r2, r3
     742:	4bb9      	ldr	r3, [pc, #740]	; (a28 <main+0x3e4>)
     744:	601a      	str	r2, [r3, #0]
     746:	4bba      	ldr	r3, [pc, #744]	; (a30 <main+0x3ec>)
     748:	689b      	ldr	r3, [r3, #8]
     74a:	051b      	lsls	r3, r3, #20
     74c:	0d1b      	lsrs	r3, r3, #20
     74e:	0018      	movs	r0, r3
     750:	f7ff ff3c 	bl	5cc <g2b>
     754:	0002      	movs	r2, r0
     756:	4bb5      	ldr	r3, [pc, #724]	; (a2c <main+0x3e8>)
     758:	681b      	ldr	r3, [r3, #0]
     75a:	18d3      	adds	r3, r2, r3
     75c:	001a      	movs	r2, r3
     75e:	4bb3      	ldr	r3, [pc, #716]	; (a2c <main+0x3e8>)
     760:	601a      	str	r2, [r3, #0]
     762:	4bb5      	ldr	r3, [pc, #724]	; (a38 <main+0x3f4>)
     764:	681b      	ldr	r3, [r3, #0]
     766:	051b      	lsls	r3, r3, #20
     768:	0d1a      	lsrs	r2, r3, #20
     76a:	0013      	movs	r3, r2
     76c:	009b      	lsls	r3, r3, #2
     76e:	189b      	adds	r3, r3, r2
     770:	0018      	movs	r0, r3
     772:	f000 fe27 	bl	13c4 <mfilter>
     776:	2394      	movs	r3, #148	; 0x94
     778:	18fb      	adds	r3, r7, r3
     77a:	681b      	ldr	r3, [r3, #0]
     77c:	3301      	adds	r3, #1
     77e:	2294      	movs	r2, #148	; 0x94
     780:	18ba      	adds	r2, r7, r2
     782:	6013      	str	r3, [r2, #0]
     784:	2394      	movs	r3, #148	; 0x94
     786:	18fb      	adds	r3, r7, r3
     788:	681b      	ldr	r3, [r3, #0]
     78a:	4aac      	ldr	r2, [pc, #688]	; (a3c <main+0x3f8>)
     78c:	4293      	cmp	r3, r2
     78e:	ddb1      	ble.n	6f4 <main+0xb0>
     790:	2390      	movs	r3, #144	; 0x90
     792:	18fb      	adds	r3, r7, r3
     794:	681b      	ldr	r3, [r3, #0]
     796:	129b      	asrs	r3, r3, #10
     798:	2290      	movs	r2, #144	; 0x90
     79a:	18ba      	adds	r2, r7, r2
     79c:	6013      	str	r3, [r2, #0]
     79e:	238c      	movs	r3, #140	; 0x8c
     7a0:	18fb      	adds	r3, r7, r3
     7a2:	681b      	ldr	r3, [r3, #0]
     7a4:	129b      	asrs	r3, r3, #10
     7a6:	228c      	movs	r2, #140	; 0x8c
     7a8:	18ba      	adds	r2, r7, r2
     7aa:	6013      	str	r3, [r2, #0]
     7ac:	4b9e      	ldr	r3, [pc, #632]	; (a28 <main+0x3e4>)
     7ae:	681b      	ldr	r3, [r3, #0]
     7b0:	129a      	asrs	r2, r3, #10
     7b2:	4b9d      	ldr	r3, [pc, #628]	; (a28 <main+0x3e4>)
     7b4:	601a      	str	r2, [r3, #0]
     7b6:	4b9c      	ldr	r3, [pc, #624]	; (a28 <main+0x3e4>)
     7b8:	681a      	ldr	r2, [r3, #0]
     7ba:	4ba1      	ldr	r3, [pc, #644]	; (a40 <main+0x3fc>)
     7bc:	601a      	str	r2, [r3, #0]
     7be:	4b9b      	ldr	r3, [pc, #620]	; (a2c <main+0x3e8>)
     7c0:	681b      	ldr	r3, [r3, #0]
     7c2:	129a      	asrs	r2, r3, #10
     7c4:	4b99      	ldr	r3, [pc, #612]	; (a2c <main+0x3e8>)
     7c6:	601a      	str	r2, [r3, #0]
     7c8:	f7ff ff2c 	bl	624 <timer_wait>
     7cc:	4b9d      	ldr	r3, [pc, #628]	; (a44 <main+0x400>)
     7ce:	4a9d      	ldr	r2, [pc, #628]	; (a44 <main+0x400>)
     7d0:	6812      	ldr	r2, [r2, #0]
     7d2:	2140      	movs	r1, #64	; 0x40
     7d4:	438a      	bics	r2, r1
     7d6:	601a      	str	r2, [r3, #0]
     7d8:	f000 f9b2 	bl	b40 <adc_dma_start>
     7dc:	4b94      	ldr	r3, [pc, #592]	; (a30 <main+0x3ec>)
     7de:	4a95      	ldr	r2, [pc, #596]	; (a34 <main+0x3f0>)
     7e0:	609a      	str	r2, [r3, #8]
     7e2:	f000 f9c1 	bl	b68 <adc_dma_wait>
     7e6:	4b97      	ldr	r3, [pc, #604]	; (a44 <main+0x400>)
     7e8:	4a96      	ldr	r2, [pc, #600]	; (a44 <main+0x400>)
     7ea:	6812      	ldr	r2, [r2, #0]
     7ec:	2140      	movs	r1, #64	; 0x40
     7ee:	430a      	orrs	r2, r1
     7f0:	601a      	str	r2, [r3, #0]
     7f2:	4b91      	ldr	r3, [pc, #580]	; (a38 <main+0x3f4>)
     7f4:	681b      	ldr	r3, [r3, #0]
     7f6:	051b      	lsls	r3, r3, #20
     7f8:	0d1a      	lsrs	r2, r3, #20
     7fa:	0013      	movs	r3, r2
     7fc:	009b      	lsls	r3, r3, #2
     7fe:	189b      	adds	r3, r3, r2
     800:	0018      	movs	r0, r3
     802:	f000 fddf 	bl	13c4 <mfilter>
     806:	0003      	movs	r3, r0
     808:	2294      	movs	r2, #148	; 0x94
     80a:	18ba      	adds	r2, r7, r2
     80c:	6013      	str	r3, [r2, #0]
     80e:	2394      	movs	r3, #148	; 0x94
     810:	18fb      	adds	r3, r7, r3
     812:	681b      	ldr	r3, [r3, #0]
     814:	10da      	asrs	r2, r3, #3
     816:	2394      	movs	r3, #148	; 0x94
     818:	18fb      	adds	r3, r7, r3
     81a:	681b      	ldr	r3, [r3, #0]
     81c:	18d3      	adds	r3, r2, r3
     81e:	10db      	asrs	r3, r3, #3
     820:	2291      	movs	r2, #145	; 0x91
     822:	0092      	lsls	r2, r2, #2
     824:	189a      	adds	r2, r3, r2
     826:	4b86      	ldr	r3, [pc, #536]	; (a40 <main+0x3fc>)
     828:	601a      	str	r2, [r3, #0]
     82a:	4b83      	ldr	r3, [pc, #524]	; (a38 <main+0x3f4>)
     82c:	685b      	ldr	r3, [r3, #4]
     82e:	051b      	lsls	r3, r3, #20
     830:	0d1a      	lsrs	r2, r3, #20
     832:	2390      	movs	r3, #144	; 0x90
     834:	18fb      	adds	r3, r7, r3
     836:	681b      	ldr	r3, [r3, #0]
     838:	1ad3      	subs	r3, r2, r3
     83a:	673b      	str	r3, [r7, #112]	; 0x70
     83c:	4b7e      	ldr	r3, [pc, #504]	; (a38 <main+0x3f4>)
     83e:	689b      	ldr	r3, [r3, #8]
     840:	051b      	lsls	r3, r3, #20
     842:	0d1a      	lsrs	r2, r3, #20
     844:	238c      	movs	r3, #140	; 0x8c
     846:	18fb      	adds	r3, r7, r3
     848:	681b      	ldr	r3, [r3, #0]
     84a:	1ad3      	subs	r3, r2, r3
     84c:	66fb      	str	r3, [r7, #108]	; 0x6c
     84e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     850:	425a      	negs	r2, r3
     852:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     854:	1ad3      	subs	r3, r2, r3
     856:	66bb      	str	r3, [r7, #104]	; 0x68
     858:	4b77      	ldr	r3, [pc, #476]	; (a38 <main+0x3f4>)
     85a:	68db      	ldr	r3, [r3, #12]
     85c:	051b      	lsls	r3, r3, #20
     85e:	0d1a      	lsrs	r2, r3, #20
     860:	4b79      	ldr	r3, [pc, #484]	; (a48 <main+0x404>)
     862:	601a      	str	r2, [r3, #0]
     864:	4b72      	ldr	r3, [pc, #456]	; (a30 <main+0x3ec>)
     866:	689b      	ldr	r3, [r3, #8]
     868:	051b      	lsls	r3, r3, #20
     86a:	0d1b      	lsrs	r3, r3, #20
     86c:	0018      	movs	r0, r3
     86e:	f7ff fead 	bl	5cc <g2b>
     872:	0003      	movs	r3, r0
     874:	667b      	str	r3, [r7, #100]	; 0x64
     876:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     878:	059b      	lsls	r3, r3, #22
     87a:	0d9b      	lsrs	r3, r3, #22
     87c:	67bb      	str	r3, [r7, #120]	; 0x78
     87e:	2384      	movs	r3, #132	; 0x84
     880:	18fb      	adds	r3, r7, r3
     882:	681b      	ldr	r3, [r3, #0]
     884:	3301      	adds	r3, #1
     886:	2284      	movs	r2, #132	; 0x84
     888:	18ba      	adds	r2, r7, r2
     88a:	6013      	str	r3, [r2, #0]
     88c:	2384      	movs	r3, #132	; 0x84
     88e:	18fb      	adds	r3, r7, r3
     890:	681b      	ldr	r3, [r3, #0]
     892:	2207      	movs	r2, #7
     894:	4013      	ands	r3, r2
     896:	d151      	bne.n	93c <main+0x2f8>
     898:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     89a:	003a      	movs	r2, r7
     89c:	0011      	movs	r1, r2
     89e:	0018      	movs	r0, r3
     8a0:	f000 fd6a 	bl	1378 <get_speed>
     8a4:	0003      	movs	r3, r0
     8a6:	663b      	str	r3, [r7, #96]	; 0x60
     8a8:	4b5e      	ldr	r3, [pc, #376]	; (a24 <main+0x3e0>)
     8aa:	681a      	ldr	r2, [r3, #0]
     8ac:	683b      	ldr	r3, [r7, #0]
     8ae:	1ad1      	subs	r1, r2, r3
     8b0:	1d3b      	adds	r3, r7, #4
     8b2:	2200      	movs	r2, #0
     8b4:	0018      	movs	r0, r3
     8b6:	f000 f98f 	bl	bd8 <reg_update>
     8ba:	1d3b      	adds	r3, r7, #4
     8bc:	68db      	ldr	r3, [r3, #12]
     8be:	131b      	asrs	r3, r3, #12
     8c0:	677b      	str	r3, [r7, #116]	; 0x74
     8c2:	6f7a      	ldr	r2, [r7, #116]	; 0x74
     8c4:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     8c6:	1ad1      	subs	r1, r2, r3
     8c8:	2314      	movs	r3, #20
     8ca:	18fb      	adds	r3, r7, r3
     8cc:	2200      	movs	r2, #0
     8ce:	0018      	movs	r0, r3
     8d0:	f000 f982 	bl	bd8 <reg_update>
     8d4:	2314      	movs	r3, #20
     8d6:	18fb      	adds	r3, r7, r3
     8d8:	68db      	ldr	r3, [r3, #12]
     8da:	131b      	asrs	r3, r3, #12
     8dc:	2280      	movs	r2, #128	; 0x80
     8de:	18ba      	adds	r2, r7, r2
     8e0:	6013      	str	r3, [r2, #0]
     8e2:	2380      	movs	r3, #128	; 0x80
     8e4:	18fb      	adds	r3, r7, r3
     8e6:	681a      	ldr	r2, [r3, #0]
     8e8:	23fa      	movs	r3, #250	; 0xfa
     8ea:	009b      	lsls	r3, r3, #2
     8ec:	429a      	cmp	r2, r3
     8ee:	dd04      	ble.n	8fa <main+0x2b6>
     8f0:	23fa      	movs	r3, #250	; 0xfa
     8f2:	009b      	lsls	r3, r3, #2
     8f4:	2280      	movs	r2, #128	; 0x80
     8f6:	18ba      	adds	r2, r7, r2
     8f8:	6013      	str	r3, [r2, #0]
     8fa:	2380      	movs	r3, #128	; 0x80
     8fc:	18fb      	adds	r3, r7, r3
     8fe:	681b      	ldr	r3, [r3, #0]
     900:	4a52      	ldr	r2, [pc, #328]	; (a4c <main+0x408>)
     902:	4293      	cmp	r3, r2
     904:	da03      	bge.n	90e <main+0x2ca>
     906:	4b51      	ldr	r3, [pc, #324]	; (a4c <main+0x408>)
     908:	2280      	movs	r2, #128	; 0x80
     90a:	18ba      	adds	r2, r7, r2
     90c:	6013      	str	r3, [r2, #0]
     90e:	4a50      	ldr	r2, [pc, #320]	; (a50 <main+0x40c>)
     910:	4b46      	ldr	r3, [pc, #280]	; (a2c <main+0x3e8>)
     912:	6819      	ldr	r1, [r3, #0]
     914:	683b      	ldr	r3, [r7, #0]
     916:	1acb      	subs	r3, r1, r3
     918:	119b      	asrs	r3, r3, #6
     91a:	2180      	movs	r1, #128	; 0x80
     91c:	0109      	lsls	r1, r1, #4
     91e:	468c      	mov	ip, r1
     920:	4463      	add	r3, ip
     922:	6053      	str	r3, [r2, #4]
     924:	4b46      	ldr	r3, [pc, #280]	; (a40 <main+0x3fc>)
     926:	681a      	ldr	r2, [r3, #0]
     928:	4b3f      	ldr	r3, [pc, #252]	; (a28 <main+0x3e4>)
     92a:	681b      	ldr	r3, [r3, #0]
     92c:	1ad2      	subs	r2, r2, r3
     92e:	0013      	movs	r3, r2
     930:	00db      	lsls	r3, r3, #3
     932:	1a9b      	subs	r3, r3, r2
     934:	00da      	lsls	r2, r3, #3
     936:	1ad2      	subs	r2, r2, r3
     938:	4b3a      	ldr	r3, [pc, #232]	; (a24 <main+0x3e0>)
     93a:	601a      	str	r2, [r3, #0]
     93c:	6fbb      	ldr	r3, [r7, #120]	; 0x78
     93e:	22bc      	movs	r2, #188	; 0xbc
     940:	0092      	lsls	r2, r2, #2
     942:	4694      	mov	ip, r2
     944:	4463      	add	r3, ip
     946:	059b      	lsls	r3, r3, #22
     948:	0d9b      	lsrs	r3, r3, #22
     94a:	67bb      	str	r3, [r7, #120]	; 0x78
     94c:	2344      	movs	r3, #68	; 0x44
     94e:	18fb      	adds	r3, r7, r3
     950:	6f3a      	ldr	r2, [r7, #112]	; 0x70
     952:	601a      	str	r2, [r3, #0]
     954:	2344      	movs	r3, #68	; 0x44
     956:	18fb      	adds	r3, r7, r3
     958:	6eba      	ldr	r2, [r7, #104]	; 0x68
     95a:	605a      	str	r2, [r3, #4]
     95c:	2344      	movs	r3, #68	; 0x44
     95e:	18fb      	adds	r3, r7, r3
     960:	6efa      	ldr	r2, [r7, #108]	; 0x6c
     962:	609a      	str	r2, [r3, #8]
     964:	6fba      	ldr	r2, [r7, #120]	; 0x78
     966:	2350      	movs	r3, #80	; 0x50
     968:	18f9      	adds	r1, r7, r3
     96a:	2344      	movs	r3, #68	; 0x44
     96c:	18fb      	adds	r3, r7, r3
     96e:	0018      	movs	r0, r3
     970:	f000 f958 	bl	c24 <abc_to_dq>
     974:	2350      	movs	r3, #80	; 0x50
     976:	18fb      	adds	r3, r7, r3
     978:	681b      	ldr	r3, [r3, #0]
     97a:	425b      	negs	r3, r3
     97c:	65fb      	str	r3, [r7, #92]	; 0x5c
     97e:	2350      	movs	r3, #80	; 0x50
     980:	18fb      	adds	r3, r7, r3
     982:	685b      	ldr	r3, [r3, #4]
     984:	2280      	movs	r2, #128	; 0x80
     986:	18ba      	adds	r2, r7, r2
     988:	6812      	ldr	r2, [r2, #0]
     98a:	1ad3      	subs	r3, r2, r3
     98c:	65bb      	str	r3, [r7, #88]	; 0x58
     98e:	2388      	movs	r3, #136	; 0x88
     990:	18fb      	adds	r3, r7, r3
     992:	681a      	ldr	r2, [r3, #0]
     994:	6df9      	ldr	r1, [r7, #92]	; 0x5c
     996:	2334      	movs	r3, #52	; 0x34
     998:	18fb      	adds	r3, r7, r3
     99a:	0018      	movs	r0, r3
     99c:	f000 f91c 	bl	bd8 <reg_update>
     9a0:	2388      	movs	r3, #136	; 0x88
     9a2:	18fb      	adds	r3, r7, r3
     9a4:	681a      	ldr	r2, [r3, #0]
     9a6:	6db9      	ldr	r1, [r7, #88]	; 0x58
     9a8:	2324      	movs	r3, #36	; 0x24
     9aa:	18fb      	adds	r3, r7, r3
     9ac:	0018      	movs	r0, r3
     9ae:	f000 f913 	bl	bd8 <reg_update>
     9b2:	2334      	movs	r3, #52	; 0x34
     9b4:	18fb      	adds	r3, r7, r3
     9b6:	68db      	ldr	r3, [r3, #12]
     9b8:	109a      	asrs	r2, r3, #2
     9ba:	2350      	movs	r3, #80	; 0x50
     9bc:	18fb      	adds	r3, r7, r3
     9be:	601a      	str	r2, [r3, #0]
     9c0:	2324      	movs	r3, #36	; 0x24
     9c2:	18fb      	adds	r3, r7, r3
     9c4:	68db      	ldr	r3, [r3, #12]
     9c6:	109a      	asrs	r2, r3, #2
     9c8:	2350      	movs	r3, #80	; 0x50
     9ca:	18fb      	adds	r3, r7, r3
     9cc:	605a      	str	r2, [r3, #4]
     9ce:	6fba      	ldr	r2, [r7, #120]	; 0x78
     9d0:	2350      	movs	r3, #80	; 0x50
     9d2:	18f9      	adds	r1, r7, r3
     9d4:	2344      	movs	r3, #68	; 0x44
     9d6:	18fb      	adds	r3, r7, r3
     9d8:	0018      	movs	r0, r3
     9da:	f000 fb4f 	bl	107c <svpwm>
     9de:	0003      	movs	r3, r0
     9e0:	2288      	movs	r2, #136	; 0x88
     9e2:	18ba      	adds	r2, r7, r2
     9e4:	6013      	str	r3, [r2, #0]
     9e6:	4a1b      	ldr	r2, [pc, #108]	; (a54 <main+0x410>)
     9e8:	2344      	movs	r3, #68	; 0x44
     9ea:	18fb      	adds	r3, r7, r3
     9ec:	681b      	ldr	r3, [r3, #0]
     9ee:	2180      	movs	r1, #128	; 0x80
     9f0:	0089      	lsls	r1, r1, #2
     9f2:	468c      	mov	ip, r1
     9f4:	4463      	add	r3, ip
     9f6:	6113      	str	r3, [r2, #16]
     9f8:	4a16      	ldr	r2, [pc, #88]	; (a54 <main+0x410>)
     9fa:	2344      	movs	r3, #68	; 0x44
     9fc:	18fb      	adds	r3, r7, r3
     9fe:	685b      	ldr	r3, [r3, #4]
     a00:	2180      	movs	r1, #128	; 0x80
     a02:	0089      	lsls	r1, r1, #2
     a04:	468c      	mov	ip, r1
     a06:	4463      	add	r3, ip
     a08:	6153      	str	r3, [r2, #20]
     a0a:	4a12      	ldr	r2, [pc, #72]	; (a54 <main+0x410>)
     a0c:	2344      	movs	r3, #68	; 0x44
     a0e:	18fb      	adds	r3, r7, r3
     a10:	689b      	ldr	r3, [r3, #8]
     a12:	2180      	movs	r1, #128	; 0x80
     a14:	0089      	lsls	r1, r1, #2
     a16:	468c      	mov	ip, r1
     a18:	4463      	add	r3, ip
     a1a:	6193      	str	r3, [r2, #24]
     a1c:	e6d4      	b.n	7c8 <main+0x184>
     a1e:	46c0      	nop			; (mov r8, r8)
     a20:	00002710 	.word	0x00002710
     a24:	20000004 	.word	0x20000004
     a28:	2000000c 	.word	0x2000000c
     a2c:	20000010 	.word	0x20000010
     a30:	400a0000 	.word	0x400a0000
     a34:	00000555 	.word	0x00000555
     a38:	20100200 	.word	0x20100200
     a3c:	000003ff 	.word	0x000003ff
     a40:	20000008 	.word	0x20000008
     a44:	400b8000 	.word	0x400b8000
     a48:	20000014 	.word	0x20000014
     a4c:	fffffc18 	.word	0xfffffc18
     a50:	40090000 	.word	0x40090000
     a54:	40098000 	.word	0x40098000

00000a58 <handler_reset>:
     a58:	b580      	push	{r7, lr}
     a5a:	b082      	sub	sp, #8
     a5c:	af00      	add	r7, sp, #0
     a5e:	4b11      	ldr	r3, [pc, #68]	; (aa4 <handler_reset+0x4c>)
     a60:	607b      	str	r3, [r7, #4]
     a62:	4b11      	ldr	r3, [pc, #68]	; (aa8 <handler_reset+0x50>)
     a64:	603b      	str	r3, [r7, #0]
     a66:	e007      	b.n	a78 <handler_reset+0x20>
     a68:	683b      	ldr	r3, [r7, #0]
     a6a:	1d1a      	adds	r2, r3, #4
     a6c:	603a      	str	r2, [r7, #0]
     a6e:	687a      	ldr	r2, [r7, #4]
     a70:	1d11      	adds	r1, r2, #4
     a72:	6079      	str	r1, [r7, #4]
     a74:	6812      	ldr	r2, [r2, #0]
     a76:	601a      	str	r2, [r3, #0]
     a78:	683a      	ldr	r2, [r7, #0]
     a7a:	4b0c      	ldr	r3, [pc, #48]	; (aac <handler_reset+0x54>)
     a7c:	429a      	cmp	r2, r3
     a7e:	d3f3      	bcc.n	a68 <handler_reset+0x10>
     a80:	4b0b      	ldr	r3, [pc, #44]	; (ab0 <handler_reset+0x58>)
     a82:	603b      	str	r3, [r7, #0]
     a84:	e004      	b.n	a90 <handler_reset+0x38>
     a86:	683b      	ldr	r3, [r7, #0]
     a88:	1d1a      	adds	r2, r3, #4
     a8a:	603a      	str	r2, [r7, #0]
     a8c:	2200      	movs	r2, #0
     a8e:	601a      	str	r2, [r3, #0]
     a90:	683a      	ldr	r2, [r7, #0]
     a92:	4b08      	ldr	r3, [pc, #32]	; (ab4 <handler_reset+0x5c>)
     a94:	429a      	cmp	r2, r3
     a96:	d3f6      	bcc.n	a86 <handler_reset+0x2e>
     a98:	f7ff fdd4 	bl	644 <main>
     a9c:	46c0      	nop			; (mov r8, r8)
     a9e:	46bd      	mov	sp, r7
     aa0:	b002      	add	sp, #8
     aa2:	bd80      	pop	{r7, pc}
     aa4:	00002444 	.word	0x00002444
     aa8:	20000000 	.word	0x20000000
     aac:	20000004 	.word	0x20000004
     ab0:	20000004 	.word	0x20000004
     ab4:	200000ac 	.word	0x200000ac

00000ab8 <default_handler>:
     ab8:	b580      	push	{r7, lr}
     aba:	af00      	add	r7, sp, #0
     abc:	e7fe      	b.n	abc <default_handler+0x4>
     abe:	46c0      	nop			; (mov r8, r8)

00000ac0 <adc_dma_init>:
     ac0:	b580      	push	{r7, lr}
     ac2:	af00      	add	r7, sp, #0
     ac4:	4b18      	ldr	r3, [pc, #96]	; (b28 <adc_dma_init+0x68>)
     ac6:	4a18      	ldr	r2, [pc, #96]	; (b28 <adc_dma_init+0x68>)
     ac8:	69d2      	ldr	r2, [r2, #28]
     aca:	2120      	movs	r1, #32
     acc:	430a      	orrs	r2, r1
     ace:	61da      	str	r2, [r3, #28]
     ad0:	4b16      	ldr	r3, [pc, #88]	; (b2c <adc_dma_init+0x6c>)
     ad2:	4a17      	ldr	r2, [pc, #92]	; (b30 <adc_dma_init+0x70>)
     ad4:	609a      	str	r2, [r3, #8]
     ad6:	4b15      	ldr	r3, [pc, #84]	; (b2c <adc_dma_init+0x6c>)
     ad8:	2201      	movs	r2, #1
     ada:	4252      	negs	r2, r2
     adc:	62da      	str	r2, [r3, #44]	; 0x2c
     ade:	4b13      	ldr	r3, [pc, #76]	; (b2c <adc_dma_init+0x6c>)
     ae0:	2201      	movs	r2, #1
     ae2:	4252      	negs	r2, r2
     ae4:	621a      	str	r2, [r3, #32]
     ae6:	4b11      	ldr	r3, [pc, #68]	; (b2c <adc_dma_init+0x6c>)
     ae8:	2201      	movs	r2, #1
     aea:	4252      	negs	r2, r2
     aec:	635a      	str	r2, [r3, #52]	; 0x34
     aee:	4b0f      	ldr	r3, [pc, #60]	; (b2c <adc_dma_init+0x6c>)
     af0:	2280      	movs	r2, #128	; 0x80
     af2:	05d2      	lsls	r2, r2, #23
     af4:	61da      	str	r2, [r3, #28]
     af6:	4b0d      	ldr	r3, [pc, #52]	; (b2c <adc_dma_init+0x6c>)
     af8:	2280      	movs	r2, #128	; 0x80
     afa:	05d2      	lsls	r2, r2, #23
     afc:	625a      	str	r2, [r3, #36]	; 0x24
     afe:	4b0b      	ldr	r3, [pc, #44]	; (b2c <adc_dma_init+0x6c>)
     b00:	2201      	movs	r2, #1
     b02:	605a      	str	r2, [r3, #4]
     b04:	4a0a      	ldr	r2, [pc, #40]	; (b30 <adc_dma_init+0x70>)
     b06:	23f0      	movs	r3, #240	; 0xf0
     b08:	005b      	lsls	r3, r3, #1
     b0a:	490a      	ldr	r1, [pc, #40]	; (b34 <adc_dma_init+0x74>)
     b0c:	50d1      	str	r1, [r2, r3]
     b0e:	490a      	ldr	r1, [pc, #40]	; (b38 <adc_dma_init+0x78>)
     b10:	4a07      	ldr	r2, [pc, #28]	; (b30 <adc_dma_init+0x70>)
     b12:	23f2      	movs	r3, #242	; 0xf2
     b14:	005b      	lsls	r3, r3, #1
     b16:	50d1      	str	r1, [r2, r3]
     b18:	4a05      	ldr	r2, [pc, #20]	; (b30 <adc_dma_init+0x70>)
     b1a:	23f4      	movs	r3, #244	; 0xf4
     b1c:	005b      	lsls	r3, r3, #1
     b1e:	4907      	ldr	r1, [pc, #28]	; (b3c <adc_dma_init+0x7c>)
     b20:	50d1      	str	r1, [r2, r3]
     b22:	46c0      	nop			; (mov r8, r8)
     b24:	46bd      	mov	sp, r7
     b26:	bd80      	pop	{r7, pc}
     b28:	40020000 	.word	0x40020000
     b2c:	40028000 	.word	0x40028000
     b30:	20100000 	.word	0x20100000
     b34:	40088018 	.word	0x40088018
     b38:	2010020c 	.word	0x2010020c
     b3c:	ae000031 	.word	0xae000031

00000b40 <adc_dma_start>:
     b40:	b580      	push	{r7, lr}
     b42:	af00      	add	r7, sp, #0
     b44:	4b06      	ldr	r3, [pc, #24]	; (b60 <adc_dma_start+0x20>)
     b46:	4a06      	ldr	r2, [pc, #24]	; (b60 <adc_dma_start+0x20>)
     b48:	6812      	ldr	r2, [r2, #0]
     b4a:	2108      	movs	r1, #8
     b4c:	430a      	orrs	r2, r1
     b4e:	601a      	str	r2, [r3, #0]
     b50:	4b04      	ldr	r3, [pc, #16]	; (b64 <adc_dma_start+0x24>)
     b52:	2280      	movs	r2, #128	; 0x80
     b54:	05d2      	lsls	r2, r2, #23
     b56:	629a      	str	r2, [r3, #40]	; 0x28
     b58:	46c0      	nop			; (mov r8, r8)
     b5a:	46bd      	mov	sp, r7
     b5c:	bd80      	pop	{r7, pc}
     b5e:	46c0      	nop			; (mov r8, r8)
     b60:	40088000 	.word	0x40088000
     b64:	40028000 	.word	0x40028000

00000b68 <adc_dma_wait>:
     b68:	b580      	push	{r7, lr}
     b6a:	af00      	add	r7, sp, #0
     b6c:	46c0      	nop			; (mov r8, r8)
     b6e:	4a0a      	ldr	r2, [pc, #40]	; (b98 <adc_dma_wait+0x30>)
     b70:	23f4      	movs	r3, #244	; 0xf4
     b72:	005b      	lsls	r3, r3, #1
     b74:	58d3      	ldr	r3, [r2, r3]
     b76:	2207      	movs	r2, #7
     b78:	4013      	ands	r3, r2
     b7a:	d1f8      	bne.n	b6e <adc_dma_wait+0x6>
     b7c:	4b07      	ldr	r3, [pc, #28]	; (b9c <adc_dma_wait+0x34>)
     b7e:	4a07      	ldr	r2, [pc, #28]	; (b9c <adc_dma_wait+0x34>)
     b80:	6812      	ldr	r2, [r2, #0]
     b82:	2108      	movs	r1, #8
     b84:	438a      	bics	r2, r1
     b86:	601a      	str	r2, [r3, #0]
     b88:	4a03      	ldr	r2, [pc, #12]	; (b98 <adc_dma_wait+0x30>)
     b8a:	23f4      	movs	r3, #244	; 0xf4
     b8c:	005b      	lsls	r3, r3, #1
     b8e:	4904      	ldr	r1, [pc, #16]	; (ba0 <adc_dma_wait+0x38>)
     b90:	50d1      	str	r1, [r2, r3]
     b92:	46c0      	nop			; (mov r8, r8)
     b94:	46bd      	mov	sp, r7
     b96:	bd80      	pop	{r7, pc}
     b98:	20100000 	.word	0x20100000
     b9c:	40088000 	.word	0x40088000
     ba0:	ae000031 	.word	0xae000031

00000ba4 <mycos>:
     ba4:	4b02      	ldr	r3, [pc, #8]	; (bb0 <mycos+0xc>)
     ba6:	0580      	lsls	r0, r0, #22
     ba8:	0d00      	lsrs	r0, r0, #20
     baa:	58c0      	ldr	r0, [r0, r3]
     bac:	4770      	bx	lr
     bae:	46c0      	nop			; (mov r8, r8)
     bb0:	000013ec 	.word	0x000013ec

00000bb4 <mysin>:
     bb4:	23c0      	movs	r3, #192	; 0xc0
     bb6:	009b      	lsls	r3, r3, #2
     bb8:	469c      	mov	ip, r3
     bba:	4460      	add	r0, ip
     bbc:	4b02      	ldr	r3, [pc, #8]	; (bc8 <mysin+0x14>)
     bbe:	0580      	lsls	r0, r0, #22
     bc0:	0d00      	lsrs	r0, r0, #20
     bc2:	58c0      	ldr	r0, [r0, r3]
     bc4:	4770      	bx	lr
     bc6:	46c0      	nop			; (mov r8, r8)
     bc8:	000013ec 	.word	0x000013ec

00000bcc <reg_init>:
     bcc:	2300      	movs	r3, #0
     bce:	6001      	str	r1, [r0, #0]
     bd0:	6042      	str	r2, [r0, #4]
     bd2:	6083      	str	r3, [r0, #8]
     bd4:	60c3      	str	r3, [r0, #12]
     bd6:	4770      	bx	lr

00000bd8 <reg_update>:
     bd8:	b510      	push	{r4, lr}
     bda:	6804      	ldr	r4, [r0, #0]
     bdc:	6883      	ldr	r3, [r0, #8]
     bde:	434c      	muls	r4, r1
     be0:	2a00      	cmp	r2, #0
     be2:	d004      	beq.n	bee <reg_update+0x16>
     be4:	2b00      	cmp	r3, #0
     be6:	dd09      	ble.n	bfc <reg_update+0x24>
     be8:	2c00      	cmp	r4, #0
     bea:	dd00      	ble.n	bee <reg_update+0x16>
     bec:	2400      	movs	r4, #0
     bee:	6842      	ldr	r2, [r0, #4]
     bf0:	18e3      	adds	r3, r4, r3
     bf2:	4351      	muls	r1, r2
     bf4:	18c9      	adds	r1, r1, r3
     bf6:	60c1      	str	r1, [r0, #12]
     bf8:	6083      	str	r3, [r0, #8]
     bfa:	bd10      	pop	{r4, pc}
     bfc:	2b00      	cmp	r3, #0
     bfe:	d0f6      	beq.n	bee <reg_update+0x16>
     c00:	43e2      	mvns	r2, r4
     c02:	17d2      	asrs	r2, r2, #31
     c04:	4014      	ands	r4, r2
     c06:	e7f2      	b.n	bee <reg_update+0x16>

00000c08 <dot3>:
     c08:	6803      	ldr	r3, [r0, #0]
     c0a:	680a      	ldr	r2, [r1, #0]
     c0c:	b510      	push	{r4, lr}
     c0e:	435a      	muls	r2, r3
     c10:	6844      	ldr	r4, [r0, #4]
     c12:	684b      	ldr	r3, [r1, #4]
     c14:	6880      	ldr	r0, [r0, #8]
     c16:	4363      	muls	r3, r4
     c18:	18d2      	adds	r2, r2, r3
     c1a:	688b      	ldr	r3, [r1, #8]
     c1c:	4343      	muls	r3, r0
     c1e:	18d0      	adds	r0, r2, r3
     c20:	bd10      	pop	{r4, pc}
     c22:	46c0      	nop			; (mov r8, r8)

00000c24 <abc_to_dq>:
     c24:	23c0      	movs	r3, #192	; 0xc0
     c26:	b5f0      	push	{r4, r5, r6, r7, lr}
     c28:	4647      	mov	r7, r8
     c2a:	009b      	lsls	r3, r3, #2
     c2c:	18d3      	adds	r3, r2, r3
     c2e:	4d1b      	ldr	r5, [pc, #108]	; (c9c <abc_to_dq+0x78>)
     c30:	059b      	lsls	r3, r3, #22
     c32:	0d1b      	lsrs	r3, r3, #20
     c34:	595b      	ldr	r3, [r3, r5]
     c36:	b480      	push	{r7}
     c38:	4698      	mov	r8, r3
     c3a:	4b19      	ldr	r3, [pc, #100]	; (ca0 <abc_to_dq+0x7c>)
     c3c:	18d4      	adds	r4, r2, r3
     c3e:	05a4      	lsls	r4, r4, #22
     c40:	4b18      	ldr	r3, [pc, #96]	; (ca4 <abc_to_dq+0x80>)
     c42:	0d24      	lsrs	r4, r4, #20
     c44:	5967      	ldr	r7, [r4, r5]
     c46:	18d4      	adds	r4, r2, r3
     c48:	05a4      	lsls	r4, r4, #22
     c4a:	4b17      	ldr	r3, [pc, #92]	; (ca8 <abc_to_dq+0x84>)
     c4c:	0d24      	lsrs	r4, r4, #20
     c4e:	5966      	ldr	r6, [r4, r5]
     c50:	18d4      	adds	r4, r2, r3
     c52:	05a4      	lsls	r4, r4, #22
     c54:	0d24      	lsrs	r4, r4, #20
     c56:	5964      	ldr	r4, [r4, r5]
     c58:	6843      	ldr	r3, [r0, #4]
     c5a:	4363      	muls	r3, r4
     c5c:	0094      	lsls	r4, r2, #2
     c5e:	469c      	mov	ip, r3
     c60:	3256      	adds	r2, #86	; 0x56
     c62:	32ff      	adds	r2, #255	; 0xff
     c64:	6803      	ldr	r3, [r0, #0]
     c66:	5964      	ldr	r4, [r4, r5]
     c68:	0592      	lsls	r2, r2, #22
     c6a:	0d12      	lsrs	r2, r2, #20
     c6c:	5955      	ldr	r5, [r2, r5]
     c6e:	435c      	muls	r4, r3
     c70:	6883      	ldr	r3, [r0, #8]
     c72:	4464      	add	r4, ip
     c74:	435d      	muls	r5, r3
     c76:	4643      	mov	r3, r8
     c78:	1964      	adds	r4, r4, r5
     c7a:	12a4      	asrs	r4, r4, #10
     c7c:	600c      	str	r4, [r1, #0]
     c7e:	6802      	ldr	r2, [r0, #0]
     c80:	435a      	muls	r2, r3
     c82:	6843      	ldr	r3, [r0, #4]
     c84:	437b      	muls	r3, r7
     c86:	18d3      	adds	r3, r2, r3
     c88:	6882      	ldr	r2, [r0, #8]
     c8a:	4372      	muls	r2, r6
     c8c:	189b      	adds	r3, r3, r2
     c8e:	425b      	negs	r3, r3
     c90:	129b      	asrs	r3, r3, #10
     c92:	604b      	str	r3, [r1, #4]
     c94:	bc04      	pop	{r2}
     c96:	4690      	mov	r8, r2
     c98:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c9a:	46c0      	nop			; (mov r8, r8)
     c9c:	000013ec 	.word	0x000013ec
     ca0:	000005aa 	.word	0x000005aa
     ca4:	00000455 	.word	0x00000455
     ca8:	000002aa 	.word	0x000002aa

00000cac <dq_to_abc>:
     cac:	b570      	push	{r4, r5, r6, lr}
     cae:	4d1a      	ldr	r5, [pc, #104]	; (d18 <dq_to_abc+0x6c>)
     cb0:	0093      	lsls	r3, r2, #2
     cb2:	680c      	ldr	r4, [r1, #0]
     cb4:	595b      	ldr	r3, [r3, r5]
     cb6:	684e      	ldr	r6, [r1, #4]
     cb8:	435c      	muls	r4, r3
     cba:	23c0      	movs	r3, #192	; 0xc0
     cbc:	009b      	lsls	r3, r3, #2
     cbe:	18d3      	adds	r3, r2, r3
     cc0:	059b      	lsls	r3, r3, #22
     cc2:	0d1b      	lsrs	r3, r3, #20
     cc4:	595b      	ldr	r3, [r3, r5]
     cc6:	4373      	muls	r3, r6
     cc8:	1ae3      	subs	r3, r4, r3
     cca:	151b      	asrs	r3, r3, #20
     ccc:	6003      	str	r3, [r0, #0]
     cce:	4b13      	ldr	r3, [pc, #76]	; (d1c <dq_to_abc+0x70>)
     cd0:	680c      	ldr	r4, [r1, #0]
     cd2:	18d3      	adds	r3, r2, r3
     cd4:	059b      	lsls	r3, r3, #22
     cd6:	0d1b      	lsrs	r3, r3, #20
     cd8:	595b      	ldr	r3, [r3, r5]
     cda:	684e      	ldr	r6, [r1, #4]
     cdc:	435c      	muls	r4, r3
     cde:	4b10      	ldr	r3, [pc, #64]	; (d20 <dq_to_abc+0x74>)
     ce0:	18d3      	adds	r3, r2, r3
     ce2:	059b      	lsls	r3, r3, #22
     ce4:	0d1b      	lsrs	r3, r3, #20
     ce6:	595b      	ldr	r3, [r3, r5]
     ce8:	4373      	muls	r3, r6
     cea:	1ae3      	subs	r3, r4, r3
     cec:	151b      	asrs	r3, r3, #20
     cee:	6043      	str	r3, [r0, #4]
     cf0:	0013      	movs	r3, r2
     cf2:	3356      	adds	r3, #86	; 0x56
     cf4:	33ff      	adds	r3, #255	; 0xff
     cf6:	059b      	lsls	r3, r3, #22
     cf8:	0d1b      	lsrs	r3, r3, #20
     cfa:	595b      	ldr	r3, [r3, r5]
     cfc:	680c      	ldr	r4, [r1, #0]
     cfe:	435c      	muls	r4, r3
     d00:	4b08      	ldr	r3, [pc, #32]	; (d24 <dq_to_abc+0x78>)
     d02:	469c      	mov	ip, r3
     d04:	4462      	add	r2, ip
     d06:	0592      	lsls	r2, r2, #22
     d08:	0d12      	lsrs	r2, r2, #20
     d0a:	5952      	ldr	r2, [r2, r5]
     d0c:	684b      	ldr	r3, [r1, #4]
     d0e:	4353      	muls	r3, r2
     d10:	1ae3      	subs	r3, r4, r3
     d12:	151b      	asrs	r3, r3, #20
     d14:	6083      	str	r3, [r0, #8]
     d16:	bd70      	pop	{r4, r5, r6, pc}
     d18:	000013ec 	.word	0x000013ec
     d1c:	000002aa 	.word	0x000002aa
     d20:	000005aa 	.word	0x000005aa
     d24:	00000455 	.word	0x00000455

00000d28 <cord_atan>:
     d28:	b5f0      	push	{r4, r5, r6, r7, lr}
     d2a:	464f      	mov	r7, r9
     d2c:	4646      	mov	r6, r8
     d2e:	b4c0      	push	{r6, r7}
     d30:	4b63      	ldr	r3, [pc, #396]	; (ec0 <cord_atan+0x198>)
     d32:	b091      	sub	sp, #68	; 0x44
     d34:	001c      	movs	r4, r3
     d36:	4694      	mov	ip, r2
     d38:	466a      	mov	r2, sp
     d3a:	4699      	mov	r9, r3
     d3c:	cca8      	ldmia	r4!, {r3, r5, r7}
     d3e:	c2a8      	stmia	r2!, {r3, r5, r7}
     d40:	cca8      	ldmia	r4!, {r3, r5, r7}
     d42:	c2a8      	stmia	r2!, {r3, r5, r7}
     d44:	cc28      	ldmia	r4!, {r3, r5}
     d46:	c228      	stmia	r2!, {r3, r5}
     d48:	464b      	mov	r3, r9
     d4a:	aa08      	add	r2, sp, #32
     d4c:	3320      	adds	r3, #32
     d4e:	4690      	mov	r8, r2
     d50:	cbb0      	ldmia	r3!, {r4, r5, r7}
     d52:	c2b0      	stmia	r2!, {r4, r5, r7}
     d54:	cbb0      	ldmia	r3!, {r4, r5, r7}
     d56:	c2b0      	stmia	r2!, {r4, r5, r7}
     d58:	cb30      	ldmia	r3!, {r4, r5}
     d5a:	c230      	stmia	r2!, {r4, r5}
     d5c:	6802      	ldr	r2, [r0, #0]
     d5e:	6845      	ldr	r5, [r0, #4]
     d60:	17d4      	asrs	r4, r2, #31
     d62:	1913      	adds	r3, r2, r4
     d64:	466e      	mov	r6, sp
     d66:	4063      	eors	r3, r4
     d68:	2d00      	cmp	r5, #0
     d6a:	dd69      	ble.n	e40 <cord_atan+0x118>
     d6c:	195f      	adds	r7, r3, r5
     d6e:	1aeb      	subs	r3, r5, r3
     d70:	9d00      	ldr	r5, [sp, #0]
     d72:	2b00      	cmp	r3, #0
     d74:	d100      	bne.n	d78 <cord_atan+0x50>
     d76:	e091      	b.n	e9c <cord_atan+0x174>
     d78:	105c      	asrs	r4, r3, #1
     d7a:	2b00      	cmp	r3, #0
     d7c:	dd65      	ble.n	e4a <cord_atan+0x122>
     d7e:	1078      	asrs	r0, r7, #1
     d80:	1a1b      	subs	r3, r3, r0
     d82:	6870      	ldr	r0, [r6, #4]
     d84:	19e4      	adds	r4, r4, r7
     d86:	4681      	mov	r9, r0
     d88:	444d      	add	r5, r9
     d8a:	2b00      	cmp	r3, #0
     d8c:	d100      	bne.n	d90 <cord_atan+0x68>
     d8e:	e087      	b.n	ea0 <cord_atan+0x178>
     d90:	1098      	asrs	r0, r3, #2
     d92:	2b00      	cmp	r3, #0
     d94:	dd5f      	ble.n	e56 <cord_atan+0x12e>
     d96:	1907      	adds	r7, r0, r4
     d98:	10a4      	asrs	r4, r4, #2
     d9a:	1b18      	subs	r0, r3, r4
     d9c:	68b3      	ldr	r3, [r6, #8]
     d9e:	4699      	mov	r9, r3
     da0:	444d      	add	r5, r9
     da2:	2800      	cmp	r0, #0
     da4:	d100      	bne.n	da8 <cord_atan+0x80>
     da6:	e07e      	b.n	ea6 <cord_atan+0x17e>
     da8:	10c3      	asrs	r3, r0, #3
     daa:	2800      	cmp	r0, #0
     dac:	dd59      	ble.n	e62 <cord_atan+0x13a>
     dae:	10fc      	asrs	r4, r7, #3
     db0:	1b00      	subs	r0, r0, r4
     db2:	68f4      	ldr	r4, [r6, #12]
     db4:	19db      	adds	r3, r3, r7
     db6:	46a1      	mov	r9, r4
     db8:	444d      	add	r5, r9
     dba:	2800      	cmp	r0, #0
     dbc:	d100      	bne.n	dc0 <cord_atan+0x98>
     dbe:	e074      	b.n	eaa <cord_atan+0x182>
     dc0:	1104      	asrs	r4, r0, #4
     dc2:	2800      	cmp	r0, #0
     dc4:	dd53      	ble.n	e6e <cord_atan+0x146>
     dc6:	18e7      	adds	r7, r4, r3
     dc8:	111b      	asrs	r3, r3, #4
     dca:	1ac4      	subs	r4, r0, r3
     dcc:	6933      	ldr	r3, [r6, #16]
     dce:	4699      	mov	r9, r3
     dd0:	444d      	add	r5, r9
     dd2:	2c00      	cmp	r4, #0
     dd4:	d06c      	beq.n	eb0 <cord_atan+0x188>
     dd6:	1163      	asrs	r3, r4, #5
     dd8:	2c00      	cmp	r4, #0
     dda:	dd4e      	ble.n	e7a <cord_atan+0x152>
     ddc:	1178      	asrs	r0, r7, #5
     dde:	1a20      	subs	r0, r4, r0
     de0:	6974      	ldr	r4, [r6, #20]
     de2:	19db      	adds	r3, r3, r7
     de4:	46a1      	mov	r9, r4
     de6:	444d      	add	r5, r9
     de8:	2800      	cmp	r0, #0
     dea:	d063      	beq.n	eb4 <cord_atan+0x18c>
     dec:	1184      	asrs	r4, r0, #6
     dee:	2800      	cmp	r0, #0
     df0:	dd49      	ble.n	e86 <cord_atan+0x15e>
     df2:	18e7      	adds	r7, r4, r3
     df4:	119b      	asrs	r3, r3, #6
     df6:	1ac0      	subs	r0, r0, r3
     df8:	69b3      	ldr	r3, [r6, #24]
     dfa:	4699      	mov	r9, r3
     dfc:	444d      	add	r5, r9
     dfe:	2800      	cmp	r0, #0
     e00:	d05b      	beq.n	eba <cord_atan+0x192>
     e02:	dd46      	ble.n	e92 <cord_atan+0x16a>
     e04:	69f3      	ldr	r3, [r6, #28]
     e06:	11c0      	asrs	r0, r0, #7
     e08:	19c7      	adds	r7, r0, r7
     e0a:	18ed      	adds	r5, r5, r3
     e0c:	2307      	movs	r3, #7
     e0e:	2a00      	cmp	r2, #0
     e10:	db12      	blt.n	e38 <cord_atan+0x110>
     e12:	2d00      	cmp	r5, #0
     e14:	da03      	bge.n	e1e <cord_atan+0xf6>
     e16:	2280      	movs	r2, #128	; 0x80
     e18:	00d2      	lsls	r2, r2, #3
     e1a:	4691      	mov	r9, r2
     e1c:	444d      	add	r5, r9
     e1e:	4642      	mov	r2, r8
     e20:	009b      	lsls	r3, r3, #2
     e22:	58d0      	ldr	r0, [r2, r3]
     e24:	4663      	mov	r3, ip
     e26:	4378      	muls	r0, r7
     e28:	1280      	asrs	r0, r0, #10
     e2a:	600d      	str	r5, [r1, #0]
     e2c:	6018      	str	r0, [r3, #0]
     e2e:	b011      	add	sp, #68	; 0x44
     e30:	bc0c      	pop	{r2, r3}
     e32:	4690      	mov	r8, r2
     e34:	4699      	mov	r9, r3
     e36:	bdf0      	pop	{r4, r5, r6, r7, pc}
     e38:	2280      	movs	r2, #128	; 0x80
     e3a:	0092      	lsls	r2, r2, #2
     e3c:	1b55      	subs	r5, r2, r5
     e3e:	e7e8      	b.n	e12 <cord_atan+0xea>
     e40:	9800      	ldr	r0, [sp, #0]
     e42:	1b5f      	subs	r7, r3, r5
     e44:	195b      	adds	r3, r3, r5
     e46:	4245      	negs	r5, r0
     e48:	e793      	b.n	d72 <cord_atan+0x4a>
     e4a:	1078      	asrs	r0, r7, #1
     e4c:	18c3      	adds	r3, r0, r3
     e4e:	6870      	ldr	r0, [r6, #4]
     e50:	1b3c      	subs	r4, r7, r4
     e52:	1a2d      	subs	r5, r5, r0
     e54:	e799      	b.n	d8a <cord_atan+0x62>
     e56:	1a27      	subs	r7, r4, r0
     e58:	10a0      	asrs	r0, r4, #2
     e5a:	18c0      	adds	r0, r0, r3
     e5c:	68b3      	ldr	r3, [r6, #8]
     e5e:	1aed      	subs	r5, r5, r3
     e60:	e79f      	b.n	da2 <cord_atan+0x7a>
     e62:	10fc      	asrs	r4, r7, #3
     e64:	1820      	adds	r0, r4, r0
     e66:	68f4      	ldr	r4, [r6, #12]
     e68:	1afb      	subs	r3, r7, r3
     e6a:	1b2d      	subs	r5, r5, r4
     e6c:	e7a5      	b.n	dba <cord_atan+0x92>
     e6e:	1b1f      	subs	r7, r3, r4
     e70:	111c      	asrs	r4, r3, #4
     e72:	6933      	ldr	r3, [r6, #16]
     e74:	1824      	adds	r4, r4, r0
     e76:	1aed      	subs	r5, r5, r3
     e78:	e7ab      	b.n	dd2 <cord_atan+0xaa>
     e7a:	1178      	asrs	r0, r7, #5
     e7c:	1900      	adds	r0, r0, r4
     e7e:	6974      	ldr	r4, [r6, #20]
     e80:	1afb      	subs	r3, r7, r3
     e82:	1b2d      	subs	r5, r5, r4
     e84:	e7b0      	b.n	de8 <cord_atan+0xc0>
     e86:	1b1f      	subs	r7, r3, r4
     e88:	119b      	asrs	r3, r3, #6
     e8a:	1818      	adds	r0, r3, r0
     e8c:	69b3      	ldr	r3, [r6, #24]
     e8e:	1aed      	subs	r5, r5, r3
     e90:	e7b5      	b.n	dfe <cord_atan+0xd6>
     e92:	69f3      	ldr	r3, [r6, #28]
     e94:	11c4      	asrs	r4, r0, #7
     e96:	1b3f      	subs	r7, r7, r4
     e98:	1aed      	subs	r5, r5, r3
     e9a:	e7b7      	b.n	e0c <cord_atan+0xe4>
     e9c:	2300      	movs	r3, #0
     e9e:	e7b6      	b.n	e0e <cord_atan+0xe6>
     ea0:	0027      	movs	r7, r4
     ea2:	2301      	movs	r3, #1
     ea4:	e7b3      	b.n	e0e <cord_atan+0xe6>
     ea6:	2302      	movs	r3, #2
     ea8:	e7b1      	b.n	e0e <cord_atan+0xe6>
     eaa:	001f      	movs	r7, r3
     eac:	2303      	movs	r3, #3
     eae:	e7ae      	b.n	e0e <cord_atan+0xe6>
     eb0:	2304      	movs	r3, #4
     eb2:	e7ac      	b.n	e0e <cord_atan+0xe6>
     eb4:	001f      	movs	r7, r3
     eb6:	2305      	movs	r3, #5
     eb8:	e7a9      	b.n	e0e <cord_atan+0xe6>
     eba:	2306      	movs	r3, #6
     ebc:	e7a7      	b.n	e0e <cord_atan+0xe6>
     ebe:	46c0      	nop			; (mov r8, r8)
     ec0:	00002404 	.word	0x00002404

00000ec4 <sinpwm>:
     ec4:	b5f0      	push	{r4, r5, r6, r7, lr}
     ec6:	4646      	mov	r6, r8
     ec8:	464f      	mov	r7, r9
     eca:	b4c0      	push	{r6, r7}
     ecc:	b089      	sub	sp, #36	; 0x24
     ece:	466c      	mov	r4, sp
     ed0:	4b65      	ldr	r3, [pc, #404]	; (1068 <sinpwm+0x1a4>)
     ed2:	46e9      	mov	r9, sp
     ed4:	3320      	adds	r3, #32
     ed6:	cbe0      	ldmia	r3!, {r5, r6, r7}
     ed8:	c4e0      	stmia	r4!, {r5, r6, r7}
     eda:	cbe0      	ldmia	r3!, {r5, r6, r7}
     edc:	c4e0      	stmia	r4!, {r5, r6, r7}
     ede:	cb60      	ldmia	r3!, {r5, r6}
     ee0:	c460      	stmia	r4!, {r5, r6}
     ee2:	680b      	ldr	r3, [r1, #0]
     ee4:	17dc      	asrs	r4, r3, #31
     ee6:	191e      	adds	r6, r3, r4
     ee8:	4698      	mov	r8, r3
     eea:	684b      	ldr	r3, [r1, #4]
     eec:	4066      	eors	r6, r4
     eee:	469c      	mov	ip, r3
     ef0:	2b00      	cmp	r3, #0
     ef2:	dc00      	bgt.n	ef6 <sinpwm+0x32>
     ef4:	e086      	b.n	1004 <sinpwm+0x140>
     ef6:	18f7      	adds	r7, r6, r3
     ef8:	1b9b      	subs	r3, r3, r6
     efa:	2b00      	cmp	r3, #0
     efc:	d100      	bne.n	f00 <sinpwm+0x3c>
     efe:	e0a0      	b.n	1042 <sinpwm+0x17e>
     f00:	105e      	asrs	r6, r3, #1
     f02:	2b00      	cmp	r3, #0
     f04:	dc00      	bgt.n	f08 <sinpwm+0x44>
     f06:	e081      	b.n	100c <sinpwm+0x148>
     f08:	107c      	asrs	r4, r7, #1
     f0a:	19f6      	adds	r6, r6, r7
     f0c:	1b1b      	subs	r3, r3, r4
     f0e:	2b00      	cmp	r3, #0
     f10:	d100      	bne.n	f14 <sinpwm+0x50>
     f12:	e098      	b.n	1046 <sinpwm+0x182>
     f14:	109c      	asrs	r4, r3, #2
     f16:	2b00      	cmp	r3, #0
     f18:	dc00      	bgt.n	f1c <sinpwm+0x58>
     f1a:	e07b      	b.n	1014 <sinpwm+0x150>
     f1c:	19a7      	adds	r7, r4, r6
     f1e:	10b6      	asrs	r6, r6, #2
     f20:	1b9c      	subs	r4, r3, r6
     f22:	2c00      	cmp	r4, #0
     f24:	d100      	bne.n	f28 <sinpwm+0x64>
     f26:	e091      	b.n	104c <sinpwm+0x188>
     f28:	10e6      	asrs	r6, r4, #3
     f2a:	2c00      	cmp	r4, #0
     f2c:	dc00      	bgt.n	f30 <sinpwm+0x6c>
     f2e:	e075      	b.n	101c <sinpwm+0x158>
     f30:	10fd      	asrs	r5, r7, #3
     f32:	19f6      	adds	r6, r6, r7
     f34:	1b64      	subs	r4, r4, r5
     f36:	2c00      	cmp	r4, #0
     f38:	d100      	bne.n	f3c <sinpwm+0x78>
     f3a:	e089      	b.n	1050 <sinpwm+0x18c>
     f3c:	1125      	asrs	r5, r4, #4
     f3e:	2c00      	cmp	r4, #0
     f40:	dc00      	bgt.n	f44 <sinpwm+0x80>
     f42:	e06f      	b.n	1024 <sinpwm+0x160>
     f44:	19af      	adds	r7, r5, r6
     f46:	1136      	asrs	r6, r6, #4
     f48:	1ba5      	subs	r5, r4, r6
     f4a:	2d00      	cmp	r5, #0
     f4c:	d100      	bne.n	f50 <sinpwm+0x8c>
     f4e:	e082      	b.n	1056 <sinpwm+0x192>
     f50:	116e      	asrs	r6, r5, #5
     f52:	2d00      	cmp	r5, #0
     f54:	dd6a      	ble.n	102c <sinpwm+0x168>
     f56:	117c      	asrs	r4, r7, #5
     f58:	19f6      	adds	r6, r6, r7
     f5a:	1b2c      	subs	r4, r5, r4
     f5c:	2c00      	cmp	r4, #0
     f5e:	d100      	bne.n	f62 <sinpwm+0x9e>
     f60:	e07b      	b.n	105a <sinpwm+0x196>
     f62:	11a3      	asrs	r3, r4, #6
     f64:	2c00      	cmp	r4, #0
     f66:	dd65      	ble.n	1034 <sinpwm+0x170>
     f68:	199b      	adds	r3, r3, r6
     f6a:	11b6      	asrs	r6, r6, #6
     f6c:	1ba4      	subs	r4, r4, r6
     f6e:	2c00      	cmp	r4, #0
     f70:	d100      	bne.n	f74 <sinpwm+0xb0>
     f72:	e075      	b.n	1060 <sinpwm+0x19c>
     f74:	dd62      	ble.n	103c <sinpwm+0x178>
     f76:	11e4      	asrs	r4, r4, #7
     f78:	18e7      	adds	r7, r4, r3
     f7a:	2307      	movs	r3, #7
     f7c:	464c      	mov	r4, r9
     f7e:	4646      	mov	r6, r8
     f80:	009b      	lsls	r3, r3, #2
     f82:	58e4      	ldr	r4, [r4, r3]
     f84:	4b39      	ldr	r3, [pc, #228]	; (106c <sinpwm+0x1a8>)
     f86:	0095      	lsls	r5, r2, #2
     f88:	58ed      	ldr	r5, [r5, r3]
     f8a:	437c      	muls	r4, r7
     f8c:	436e      	muls	r6, r5
     f8e:	25c0      	movs	r5, #192	; 0xc0
     f90:	4667      	mov	r7, ip
     f92:	00ad      	lsls	r5, r5, #2
     f94:	1955      	adds	r5, r2, r5
     f96:	05ad      	lsls	r5, r5, #22
     f98:	0d2d      	lsrs	r5, r5, #20
     f9a:	58ed      	ldr	r5, [r5, r3]
     f9c:	1524      	asrs	r4, r4, #20
     f9e:	437d      	muls	r5, r7
     fa0:	1b75      	subs	r5, r6, r5
     fa2:	152d      	asrs	r5, r5, #20
     fa4:	6005      	str	r5, [r0, #0]
     fa6:	4d32      	ldr	r5, [pc, #200]	; (1070 <sinpwm+0x1ac>)
     fa8:	684f      	ldr	r7, [r1, #4]
     faa:	1955      	adds	r5, r2, r5
     fac:	05ad      	lsls	r5, r5, #22
     fae:	0d2d      	lsrs	r5, r5, #20
     fb0:	58ee      	ldr	r6, [r5, r3]
     fb2:	680d      	ldr	r5, [r1, #0]
     fb4:	4375      	muls	r5, r6
     fb6:	4e2f      	ldr	r6, [pc, #188]	; (1074 <sinpwm+0x1b0>)
     fb8:	1996      	adds	r6, r2, r6
     fba:	05b6      	lsls	r6, r6, #22
     fbc:	0d36      	lsrs	r6, r6, #20
     fbe:	58f6      	ldr	r6, [r6, r3]
     fc0:	437e      	muls	r6, r7
     fc2:	1bae      	subs	r6, r5, r6
     fc4:	0015      	movs	r5, r2
     fc6:	3556      	adds	r5, #86	; 0x56
     fc8:	35ff      	adds	r5, #255	; 0xff
     fca:	1536      	asrs	r6, r6, #20
     fcc:	05ad      	lsls	r5, r5, #22
     fce:	6046      	str	r6, [r0, #4]
     fd0:	0d2d      	lsrs	r5, r5, #20
     fd2:	58ee      	ldr	r6, [r5, r3]
     fd4:	680d      	ldr	r5, [r1, #0]
     fd6:	436e      	muls	r6, r5
     fd8:	4d27      	ldr	r5, [pc, #156]	; (1078 <sinpwm+0x1b4>)
     fda:	46ac      	mov	ip, r5
     fdc:	4462      	add	r2, ip
     fde:	0592      	lsls	r2, r2, #22
     fe0:	0d12      	lsrs	r2, r2, #20
     fe2:	58d2      	ldr	r2, [r2, r3]
     fe4:	684b      	ldr	r3, [r1, #4]
     fe6:	435a      	muls	r2, r3
     fe8:	23fa      	movs	r3, #250	; 0xfa
     fea:	1ab2      	subs	r2, r6, r2
     fec:	1512      	asrs	r2, r2, #20
     fee:	6082      	str	r2, [r0, #8]
     ff0:	005b      	lsls	r3, r3, #1
     ff2:	2001      	movs	r0, #1
     ff4:	429c      	cmp	r4, r3
     ff6:	dc00      	bgt.n	ffa <sinpwm+0x136>
     ff8:	2000      	movs	r0, #0
     ffa:	b009      	add	sp, #36	; 0x24
     ffc:	bc0c      	pop	{r2, r3}
     ffe:	4690      	mov	r8, r2
    1000:	4699      	mov	r9, r3
    1002:	bdf0      	pop	{r4, r5, r6, r7, pc}
    1004:	1af7      	subs	r7, r6, r3
    1006:	0033      	movs	r3, r6
    1008:	4463      	add	r3, ip
    100a:	e776      	b.n	efa <sinpwm+0x36>
    100c:	107c      	asrs	r4, r7, #1
    100e:	1bbe      	subs	r6, r7, r6
    1010:	18e3      	adds	r3, r4, r3
    1012:	e77c      	b.n	f0e <sinpwm+0x4a>
    1014:	1b37      	subs	r7, r6, r4
    1016:	10b4      	asrs	r4, r6, #2
    1018:	18e4      	adds	r4, r4, r3
    101a:	e782      	b.n	f22 <sinpwm+0x5e>
    101c:	10fd      	asrs	r5, r7, #3
    101e:	1bbe      	subs	r6, r7, r6
    1020:	192c      	adds	r4, r5, r4
    1022:	e788      	b.n	f36 <sinpwm+0x72>
    1024:	1b77      	subs	r7, r6, r5
    1026:	1135      	asrs	r5, r6, #4
    1028:	192d      	adds	r5, r5, r4
    102a:	e78e      	b.n	f4a <sinpwm+0x86>
    102c:	117c      	asrs	r4, r7, #5
    102e:	1bbe      	subs	r6, r7, r6
    1030:	1964      	adds	r4, r4, r5
    1032:	e793      	b.n	f5c <sinpwm+0x98>
    1034:	1af3      	subs	r3, r6, r3
    1036:	11b6      	asrs	r6, r6, #6
    1038:	1934      	adds	r4, r6, r4
    103a:	e798      	b.n	f6e <sinpwm+0xaa>
    103c:	11e5      	asrs	r5, r4, #7
    103e:	1b5f      	subs	r7, r3, r5
    1040:	e79b      	b.n	f7a <sinpwm+0xb6>
    1042:	2300      	movs	r3, #0
    1044:	e79a      	b.n	f7c <sinpwm+0xb8>
    1046:	0037      	movs	r7, r6
    1048:	2301      	movs	r3, #1
    104a:	e797      	b.n	f7c <sinpwm+0xb8>
    104c:	2302      	movs	r3, #2
    104e:	e795      	b.n	f7c <sinpwm+0xb8>
    1050:	0037      	movs	r7, r6
    1052:	2303      	movs	r3, #3
    1054:	e792      	b.n	f7c <sinpwm+0xb8>
    1056:	2304      	movs	r3, #4
    1058:	e790      	b.n	f7c <sinpwm+0xb8>
    105a:	0037      	movs	r7, r6
    105c:	2305      	movs	r3, #5
    105e:	e78d      	b.n	f7c <sinpwm+0xb8>
    1060:	001f      	movs	r7, r3
    1062:	2306      	movs	r3, #6
    1064:	e78a      	b.n	f7c <sinpwm+0xb8>
    1066:	46c0      	nop			; (mov r8, r8)
    1068:	00002404 	.word	0x00002404
    106c:	000013ec 	.word	0x000013ec
    1070:	000002aa 	.word	0x000002aa
    1074:	000005aa 	.word	0x000005aa
    1078:	00000455 	.word	0x00000455

0000107c <svpwm>:
    107c:	b5f0      	push	{r4, r5, r6, r7, lr}
    107e:	464f      	mov	r7, r9
    1080:	4646      	mov	r6, r8
    1082:	b4c0      	push	{r6, r7}
    1084:	4bb2      	ldr	r3, [pc, #712]	; (1350 <svpwm+0x2d4>)
    1086:	b091      	sub	sp, #68	; 0x44
    1088:	001c      	movs	r4, r3
    108a:	4694      	mov	ip, r2
    108c:	466a      	mov	r2, sp
    108e:	4699      	mov	r9, r3
    1090:	cca8      	ldmia	r4!, {r3, r5, r7}
    1092:	c2a8      	stmia	r2!, {r3, r5, r7}
    1094:	cca8      	ldmia	r4!, {r3, r5, r7}
    1096:	c2a8      	stmia	r2!, {r3, r5, r7}
    1098:	cc28      	ldmia	r4!, {r3, r5}
    109a:	c228      	stmia	r2!, {r3, r5}
    109c:	464b      	mov	r3, r9
    109e:	aa08      	add	r2, sp, #32
    10a0:	3320      	adds	r3, #32
    10a2:	4690      	mov	r8, r2
    10a4:	cbb0      	ldmia	r3!, {r4, r5, r7}
    10a6:	c2b0      	stmia	r2!, {r4, r5, r7}
    10a8:	cbb0      	ldmia	r3!, {r4, r5, r7}
    10aa:	c2b0      	stmia	r2!, {r4, r5, r7}
    10ac:	cb30      	ldmia	r3!, {r4, r5}
    10ae:	c230      	stmia	r2!, {r4, r5}
    10b0:	680a      	ldr	r2, [r1, #0]
    10b2:	684d      	ldr	r5, [r1, #4]
    10b4:	17d4      	asrs	r4, r2, #31
    10b6:	1913      	adds	r3, r2, r4
    10b8:	466e      	mov	r6, sp
    10ba:	4063      	eors	r3, r4
    10bc:	2d00      	cmp	r5, #0
    10be:	dd78      	ble.n	11b2 <svpwm+0x136>
    10c0:	195f      	adds	r7, r3, r5
    10c2:	1aeb      	subs	r3, r5, r3
    10c4:	9d00      	ldr	r5, [sp, #0]
    10c6:	2b00      	cmp	r3, #0
    10c8:	d100      	bne.n	10cc <svpwm+0x50>
    10ca:	e130      	b.n	132e <svpwm+0x2b2>
    10cc:	105c      	asrs	r4, r3, #1
    10ce:	2b00      	cmp	r3, #0
    10d0:	dd74      	ble.n	11bc <svpwm+0x140>
    10d2:	1079      	asrs	r1, r7, #1
    10d4:	1a5b      	subs	r3, r3, r1
    10d6:	6871      	ldr	r1, [r6, #4]
    10d8:	19e4      	adds	r4, r4, r7
    10da:	4689      	mov	r9, r1
    10dc:	444d      	add	r5, r9
    10de:	2b00      	cmp	r3, #0
    10e0:	d100      	bne.n	10e4 <svpwm+0x68>
    10e2:	e126      	b.n	1332 <svpwm+0x2b6>
    10e4:	1099      	asrs	r1, r3, #2
    10e6:	2b00      	cmp	r3, #0
    10e8:	dd6e      	ble.n	11c8 <svpwm+0x14c>
    10ea:	190f      	adds	r7, r1, r4
    10ec:	10a4      	asrs	r4, r4, #2
    10ee:	1b19      	subs	r1, r3, r4
    10f0:	68b3      	ldr	r3, [r6, #8]
    10f2:	4699      	mov	r9, r3
    10f4:	444d      	add	r5, r9
    10f6:	2900      	cmp	r1, #0
    10f8:	d100      	bne.n	10fc <svpwm+0x80>
    10fa:	e11d      	b.n	1338 <svpwm+0x2bc>
    10fc:	10cb      	asrs	r3, r1, #3
    10fe:	2900      	cmp	r1, #0
    1100:	dd68      	ble.n	11d4 <svpwm+0x158>
    1102:	10fc      	asrs	r4, r7, #3
    1104:	1b09      	subs	r1, r1, r4
    1106:	68f4      	ldr	r4, [r6, #12]
    1108:	19db      	adds	r3, r3, r7
    110a:	46a1      	mov	r9, r4
    110c:	444d      	add	r5, r9
    110e:	2900      	cmp	r1, #0
    1110:	d100      	bne.n	1114 <svpwm+0x98>
    1112:	e113      	b.n	133c <svpwm+0x2c0>
    1114:	110c      	asrs	r4, r1, #4
    1116:	2900      	cmp	r1, #0
    1118:	dd62      	ble.n	11e0 <svpwm+0x164>
    111a:	18e7      	adds	r7, r4, r3
    111c:	111b      	asrs	r3, r3, #4
    111e:	1acc      	subs	r4, r1, r3
    1120:	6933      	ldr	r3, [r6, #16]
    1122:	4699      	mov	r9, r3
    1124:	444d      	add	r5, r9
    1126:	2c00      	cmp	r4, #0
    1128:	d100      	bne.n	112c <svpwm+0xb0>
    112a:	e10a      	b.n	1342 <svpwm+0x2c6>
    112c:	1163      	asrs	r3, r4, #5
    112e:	2c00      	cmp	r4, #0
    1130:	dd5c      	ble.n	11ec <svpwm+0x170>
    1132:	1179      	asrs	r1, r7, #5
    1134:	1a61      	subs	r1, r4, r1
    1136:	6974      	ldr	r4, [r6, #20]
    1138:	19db      	adds	r3, r3, r7
    113a:	46a1      	mov	r9, r4
    113c:	444d      	add	r5, r9
    113e:	2900      	cmp	r1, #0
    1140:	d100      	bne.n	1144 <svpwm+0xc8>
    1142:	e100      	b.n	1346 <svpwm+0x2ca>
    1144:	118c      	asrs	r4, r1, #6
    1146:	2900      	cmp	r1, #0
    1148:	dd56      	ble.n	11f8 <svpwm+0x17c>
    114a:	18e7      	adds	r7, r4, r3
    114c:	119b      	asrs	r3, r3, #6
    114e:	1ac9      	subs	r1, r1, r3
    1150:	69b3      	ldr	r3, [r6, #24]
    1152:	4699      	mov	r9, r3
    1154:	444d      	add	r5, r9
    1156:	2900      	cmp	r1, #0
    1158:	d100      	bne.n	115c <svpwm+0xe0>
    115a:	e0f7      	b.n	134c <svpwm+0x2d0>
    115c:	dc00      	bgt.n	1160 <svpwm+0xe4>
    115e:	e0e1      	b.n	1324 <svpwm+0x2a8>
    1160:	69f3      	ldr	r3, [r6, #28]
    1162:	11c9      	asrs	r1, r1, #7
    1164:	19cf      	adds	r7, r1, r7
    1166:	18ed      	adds	r5, r5, r3
    1168:	2307      	movs	r3, #7
    116a:	2a00      	cmp	r2, #0
    116c:	db1d      	blt.n	11aa <svpwm+0x12e>
    116e:	2d00      	cmp	r5, #0
    1170:	da03      	bge.n	117a <svpwm+0xfe>
    1172:	2280      	movs	r2, #128	; 0x80
    1174:	00d2      	lsls	r2, r2, #3
    1176:	4691      	mov	r9, r2
    1178:	444d      	add	r5, r9
    117a:	4642      	mov	r2, r8
    117c:	009b      	lsls	r3, r3, #2
    117e:	58d1      	ldr	r1, [r2, r3]
    1180:	23fa      	movs	r3, #250	; 0xfa
    1182:	4379      	muls	r1, r7
    1184:	4465      	add	r5, ip
    1186:	05ad      	lsls	r5, r5, #22
    1188:	1509      	asrs	r1, r1, #20
    118a:	0dad      	lsrs	r5, r5, #22
    118c:	005b      	lsls	r3, r3, #1
    118e:	2600      	movs	r6, #0
    1190:	4299      	cmp	r1, r3
    1192:	dd01      	ble.n	1198 <svpwm+0x11c>
    1194:	0019      	movs	r1, r3
    1196:	3601      	adds	r6, #1
    1198:	006a      	lsls	r2, r5, #1
    119a:	1952      	adds	r2, r2, r5
    119c:	1252      	asrs	r2, r2, #9
    119e:	2a05      	cmp	r2, #5
    11a0:	d84b      	bhi.n	123a <svpwm+0x1be>
    11a2:	4b6c      	ldr	r3, [pc, #432]	; (1354 <svpwm+0x2d8>)
    11a4:	0092      	lsls	r2, r2, #2
    11a6:	589b      	ldr	r3, [r3, r2]
    11a8:	469f      	mov	pc, r3
    11aa:	2280      	movs	r2, #128	; 0x80
    11ac:	0092      	lsls	r2, r2, #2
    11ae:	1b55      	subs	r5, r2, r5
    11b0:	e7dd      	b.n	116e <svpwm+0xf2>
    11b2:	9900      	ldr	r1, [sp, #0]
    11b4:	1b5f      	subs	r7, r3, r5
    11b6:	195b      	adds	r3, r3, r5
    11b8:	424d      	negs	r5, r1
    11ba:	e784      	b.n	10c6 <svpwm+0x4a>
    11bc:	1079      	asrs	r1, r7, #1
    11be:	18cb      	adds	r3, r1, r3
    11c0:	6871      	ldr	r1, [r6, #4]
    11c2:	1b3c      	subs	r4, r7, r4
    11c4:	1a6d      	subs	r5, r5, r1
    11c6:	e78a      	b.n	10de <svpwm+0x62>
    11c8:	1a67      	subs	r7, r4, r1
    11ca:	10a1      	asrs	r1, r4, #2
    11cc:	18c9      	adds	r1, r1, r3
    11ce:	68b3      	ldr	r3, [r6, #8]
    11d0:	1aed      	subs	r5, r5, r3
    11d2:	e790      	b.n	10f6 <svpwm+0x7a>
    11d4:	10fc      	asrs	r4, r7, #3
    11d6:	1861      	adds	r1, r4, r1
    11d8:	68f4      	ldr	r4, [r6, #12]
    11da:	1afb      	subs	r3, r7, r3
    11dc:	1b2d      	subs	r5, r5, r4
    11de:	e796      	b.n	110e <svpwm+0x92>
    11e0:	1b1f      	subs	r7, r3, r4
    11e2:	111c      	asrs	r4, r3, #4
    11e4:	6933      	ldr	r3, [r6, #16]
    11e6:	1864      	adds	r4, r4, r1
    11e8:	1aed      	subs	r5, r5, r3
    11ea:	e79c      	b.n	1126 <svpwm+0xaa>
    11ec:	1179      	asrs	r1, r7, #5
    11ee:	1909      	adds	r1, r1, r4
    11f0:	6974      	ldr	r4, [r6, #20]
    11f2:	1afb      	subs	r3, r7, r3
    11f4:	1b2d      	subs	r5, r5, r4
    11f6:	e7a2      	b.n	113e <svpwm+0xc2>
    11f8:	1b1f      	subs	r7, r3, r4
    11fa:	119b      	asrs	r3, r3, #6
    11fc:	1859      	adds	r1, r3, r1
    11fe:	69b3      	ldr	r3, [r6, #24]
    1200:	1aed      	subs	r5, r5, r3
    1202:	e7a8      	b.n	1156 <svpwm+0xda>
    1204:	4b54      	ldr	r3, [pc, #336]	; (1358 <svpwm+0x2dc>)
    1206:	4a55      	ldr	r2, [pc, #340]	; (135c <svpwm+0x2e0>)
    1208:	1b5b      	subs	r3, r3, r5
    120a:	3556      	adds	r5, #86	; 0x56
    120c:	059b      	lsls	r3, r3, #22
    120e:	05ad      	lsls	r5, r5, #22
    1210:	0d1b      	lsrs	r3, r3, #20
    1212:	0d2d      	lsrs	r5, r5, #20
    1214:	589b      	ldr	r3, [r3, r2]
    1216:	58ac      	ldr	r4, [r5, r2]
    1218:	434b      	muls	r3, r1
    121a:	434c      	muls	r4, r1
    121c:	129b      	asrs	r3, r3, #10
    121e:	12a1      	asrs	r1, r4, #10
    1220:	1aca      	subs	r2, r1, r3
    1222:	6002      	str	r2, [r0, #0]
    1224:	425a      	negs	r2, r3
    1226:	1a52      	subs	r2, r2, r1
    1228:	1859      	adds	r1, r3, r1
    122a:	6042      	str	r2, [r0, #4]
    122c:	6081      	str	r1, [r0, #8]
    122e:	0030      	movs	r0, r6
    1230:	b011      	add	sp, #68	; 0x44
    1232:	bc0c      	pop	{r2, r3}
    1234:	4690      	mov	r8, r2
    1236:	4699      	mov	r9, r3
    1238:	bdf0      	pop	{r4, r5, r6, r7, pc}
    123a:	4b49      	ldr	r3, [pc, #292]	; (1360 <svpwm+0x2e4>)
    123c:	4c47      	ldr	r4, [pc, #284]	; (135c <svpwm+0x2e0>)
    123e:	1b5b      	subs	r3, r3, r5
    1240:	059b      	lsls	r3, r3, #22
    1242:	0d1b      	lsrs	r3, r3, #20
    1244:	591a      	ldr	r2, [r3, r4]
    1246:	23c0      	movs	r3, #192	; 0xc0
    1248:	009b      	lsls	r3, r3, #2
    124a:	469c      	mov	ip, r3
    124c:	4465      	add	r5, ip
    124e:	05ad      	lsls	r5, r5, #22
    1250:	0d2d      	lsrs	r5, r5, #20
    1252:	592c      	ldr	r4, [r5, r4]
    1254:	434a      	muls	r2, r1
    1256:	4361      	muls	r1, r4
    1258:	1292      	asrs	r2, r2, #10
    125a:	1289      	asrs	r1, r1, #10
    125c:	1853      	adds	r3, r2, r1
    125e:	6003      	str	r3, [r0, #0]
    1260:	1a8b      	subs	r3, r1, r2
    1262:	4252      	negs	r2, r2
    1264:	1a52      	subs	r2, r2, r1
    1266:	6043      	str	r3, [r0, #4]
    1268:	6082      	str	r2, [r0, #8]
    126a:	e7e0      	b.n	122e <svpwm+0x1b2>
    126c:	4b3d      	ldr	r3, [pc, #244]	; (1364 <svpwm+0x2e8>)
    126e:	4a3b      	ldr	r2, [pc, #236]	; (135c <svpwm+0x2e0>)
    1270:	1b5b      	subs	r3, r3, r5
    1272:	059b      	lsls	r3, r3, #22
    1274:	0d1b      	lsrs	r3, r3, #20
    1276:	589f      	ldr	r7, [r3, r2]
    1278:	4b3b      	ldr	r3, [pc, #236]	; (1368 <svpwm+0x2ec>)
    127a:	434f      	muls	r7, r1
    127c:	469c      	mov	ip, r3
    127e:	4465      	add	r5, ip
    1280:	05ad      	lsls	r5, r5, #22
    1282:	0d2d      	lsrs	r5, r5, #20
    1284:	58ac      	ldr	r4, [r5, r2]
    1286:	12bf      	asrs	r7, r7, #10
    1288:	4361      	muls	r1, r4
    128a:	1289      	asrs	r1, r1, #10
    128c:	1a7b      	subs	r3, r7, r1
    128e:	6003      	str	r3, [r0, #0]
    1290:	187b      	adds	r3, r7, r1
    1292:	427f      	negs	r7, r7
    1294:	1a7f      	subs	r7, r7, r1
    1296:	6043      	str	r3, [r0, #4]
    1298:	6087      	str	r7, [r0, #8]
    129a:	e7c8      	b.n	122e <svpwm+0x1b2>
    129c:	4b33      	ldr	r3, [pc, #204]	; (136c <svpwm+0x2f0>)
    129e:	4a2f      	ldr	r2, [pc, #188]	; (135c <svpwm+0x2e0>)
    12a0:	1b5b      	subs	r3, r3, r5
    12a2:	35ac      	adds	r5, #172	; 0xac
    12a4:	059b      	lsls	r3, r3, #22
    12a6:	35ff      	adds	r5, #255	; 0xff
    12a8:	0d1b      	lsrs	r3, r3, #20
    12aa:	05ad      	lsls	r5, r5, #22
    12ac:	589b      	ldr	r3, [r3, r2]
    12ae:	0d2d      	lsrs	r5, r5, #20
    12b0:	58ac      	ldr	r4, [r5, r2]
    12b2:	434b      	muls	r3, r1
    12b4:	4361      	muls	r1, r4
    12b6:	129b      	asrs	r3, r3, #10
    12b8:	1289      	asrs	r1, r1, #10
    12ba:	425a      	negs	r2, r3
    12bc:	1a52      	subs	r2, r2, r1
    12be:	6002      	str	r2, [r0, #0]
    12c0:	185a      	adds	r2, r3, r1
    12c2:	1ac9      	subs	r1, r1, r3
    12c4:	6042      	str	r2, [r0, #4]
    12c6:	6081      	str	r1, [r0, #8]
    12c8:	e7b1      	b.n	122e <svpwm+0x1b2>
    12ca:	4b29      	ldr	r3, [pc, #164]	; (1370 <svpwm+0x2f4>)
    12cc:	4a23      	ldr	r2, [pc, #140]	; (135c <svpwm+0x2e0>)
    12ce:	1b5b      	subs	r3, r3, r5
    12d0:	3501      	adds	r5, #1
    12d2:	059b      	lsls	r3, r3, #22
    12d4:	35ff      	adds	r5, #255	; 0xff
    12d6:	0d1b      	lsrs	r3, r3, #20
    12d8:	05ad      	lsls	r5, r5, #22
    12da:	589b      	ldr	r3, [r3, r2]
    12dc:	0d2d      	lsrs	r5, r5, #20
    12de:	58ac      	ldr	r4, [r5, r2]
    12e0:	434b      	muls	r3, r1
    12e2:	434c      	muls	r4, r1
    12e4:	129b      	asrs	r3, r3, #10
    12e6:	12a1      	asrs	r1, r4, #10
    12e8:	425a      	negs	r2, r3
    12ea:	1a52      	subs	r2, r2, r1
    12ec:	6002      	str	r2, [r0, #0]
    12ee:	1a5a      	subs	r2, r3, r1
    12f0:	1859      	adds	r1, r3, r1
    12f2:	6042      	str	r2, [r0, #4]
    12f4:	6081      	str	r1, [r0, #8]
    12f6:	e79a      	b.n	122e <svpwm+0x1b2>
    12f8:	4b1e      	ldr	r3, [pc, #120]	; (1374 <svpwm+0x2f8>)
    12fa:	4a18      	ldr	r2, [pc, #96]	; (135c <svpwm+0x2e0>)
    12fc:	1b5b      	subs	r3, r3, r5
    12fe:	3d55      	subs	r5, #85	; 0x55
    1300:	059b      	lsls	r3, r3, #22
    1302:	05ad      	lsls	r5, r5, #22
    1304:	0d1b      	lsrs	r3, r3, #20
    1306:	0d2d      	lsrs	r5, r5, #20
    1308:	589b      	ldr	r3, [r3, r2]
    130a:	58ac      	ldr	r4, [r5, r2]
    130c:	434b      	muls	r3, r1
    130e:	4361      	muls	r1, r4
    1310:	129b      	asrs	r3, r3, #10
    1312:	1289      	asrs	r1, r1, #10
    1314:	185a      	adds	r2, r3, r1
    1316:	6002      	str	r2, [r0, #0]
    1318:	425a      	negs	r2, r3
    131a:	1a52      	subs	r2, r2, r1
    131c:	1a59      	subs	r1, r3, r1
    131e:	6042      	str	r2, [r0, #4]
    1320:	6081      	str	r1, [r0, #8]
    1322:	e784      	b.n	122e <svpwm+0x1b2>
    1324:	69f3      	ldr	r3, [r6, #28]
    1326:	11cc      	asrs	r4, r1, #7
    1328:	1b3f      	subs	r7, r7, r4
    132a:	1aed      	subs	r5, r5, r3
    132c:	e71c      	b.n	1168 <svpwm+0xec>
    132e:	2300      	movs	r3, #0
    1330:	e71b      	b.n	116a <svpwm+0xee>
    1332:	0027      	movs	r7, r4
    1334:	2301      	movs	r3, #1
    1336:	e718      	b.n	116a <svpwm+0xee>
    1338:	2302      	movs	r3, #2
    133a:	e716      	b.n	116a <svpwm+0xee>
    133c:	001f      	movs	r7, r3
    133e:	2303      	movs	r3, #3
    1340:	e713      	b.n	116a <svpwm+0xee>
    1342:	2304      	movs	r3, #4
    1344:	e711      	b.n	116a <svpwm+0xee>
    1346:	001f      	movs	r7, r3
    1348:	2305      	movs	r3, #5
    134a:	e70e      	b.n	116a <svpwm+0xee>
    134c:	2306      	movs	r3, #6
    134e:	e70c      	b.n	116a <svpwm+0xee>
    1350:	00002404 	.word	0x00002404
    1354:	000023ec 	.word	0x000023ec
    1358:	00000a54 	.word	0x00000a54
    135c:	000013ec 	.word	0x000013ec
    1360:	000007aa 	.word	0x000007aa
    1364:	00000854 	.word	0x00000854
    1368:	00000256 	.word	0x00000256
    136c:	000008ff 	.word	0x000008ff
    1370:	000009aa 	.word	0x000009aa
    1374:	00000aff 	.word	0x00000aff

00001378 <get_speed>:
    1378:	4a0f      	ldr	r2, [pc, #60]	; (13b8 <get_speed+0x40>)
    137a:	b510      	push	{r4, lr}
    137c:	6813      	ldr	r3, [r2, #0]
    137e:	6854      	ldr	r4, [r2, #4]
    1380:	1ac3      	subs	r3, r0, r3
    1382:	6050      	str	r0, [r2, #4]
    1384:	6014      	str	r4, [r2, #0]
    1386:	17da      	asrs	r2, r3, #31
    1388:	1898      	adds	r0, r3, r2
    138a:	4050      	eors	r0, r2
    138c:	22fa      	movs	r2, #250	; 0xfa
    138e:	0092      	lsls	r2, r2, #2
    1390:	4290      	cmp	r0, r2
    1392:	dd04      	ble.n	139e <get_speed+0x26>
    1394:	2b00      	cmp	r3, #0
    1396:	db0a      	blt.n	13ae <get_speed+0x36>
    1398:	4a08      	ldr	r2, [pc, #32]	; (13bc <get_speed+0x44>)
    139a:	4694      	mov	ip, r2
    139c:	4463      	add	r3, ip
    139e:	680a      	ldr	r2, [r1, #0]
    13a0:	4807      	ldr	r0, [pc, #28]	; (13c0 <get_speed+0x48>)
    13a2:	18d2      	adds	r2, r2, r3
    13a4:	105b      	asrs	r3, r3, #1
    13a6:	4343      	muls	r3, r0
    13a8:	600a      	str	r2, [r1, #0]
    13aa:	1318      	asrs	r0, r3, #12
    13ac:	bd10      	pop	{r4, pc}
    13ae:	2280      	movs	r2, #128	; 0x80
    13b0:	0152      	lsls	r2, r2, #5
    13b2:	4694      	mov	ip, r2
    13b4:	4463      	add	r3, ip
    13b6:	e7f2      	b.n	139e <get_speed+0x26>
    13b8:	2000001c 	.word	0x2000001c
    13bc:	fffff000 	.word	0xfffff000
    13c0:	0002ae7c 	.word	0x0002ae7c

000013c4 <mfilter>:
    13c4:	221f      	movs	r2, #31
    13c6:	4908      	ldr	r1, [pc, #32]	; (13e8 <mfilter+0x24>)
    13c8:	b510      	push	{r4, lr}
    13ca:	688b      	ldr	r3, [r1, #8]
    13cc:	3301      	adds	r3, #1
    13ce:	4013      	ands	r3, r2
    13d0:	608b      	str	r3, [r1, #8]
    13d2:	009b      	lsls	r3, r3, #2
    13d4:	18cb      	adds	r3, r1, r3
    13d6:	68ca      	ldr	r2, [r1, #12]
    13d8:	691c      	ldr	r4, [r3, #16]
    13da:	6118      	str	r0, [r3, #16]
    13dc:	1b12      	subs	r2, r2, r4
    13de:	1812      	adds	r2, r2, r0
    13e0:	1150      	asrs	r0, r2, #5
    13e2:	60ca      	str	r2, [r1, #12]
    13e4:	bd10      	pop	{r4, pc}
    13e6:	46c0      	nop			; (mov r8, r8)
    13e8:	2000001c 	.word	0x2000001c

000013ec <cos_tb>:
    13ec:	00000400 00000400 00000400 00000400     ................
    13fc:	00000400 00000400 000003ff 000003ff     ................
    140c:	000003ff 000003fe 000003fe 000003fe     ................
    141c:	000003fd 000003fd 000003fc 000003fc     ................
    142c:	000003fb 000003fa 000003fa 000003f9     ................
    143c:	000003f8 000003f8 000003f7 000003f6     ................
    144c:	000003f5 000003f4 000003f3 000003f2     ................
    145c:	000003f1 000003f0 000003ef 000003ee     ................
    146c:	000003ec 000003eb 000003ea 000003e8     ................
    147c:	000003e7 000003e6 000003e4 000003e3     ................
    148c:	000003e1 000003e0 000003de 000003dd     ................
    149c:	000003db 000003d9 000003d7 000003d6     ................
    14ac:	000003d4 000003d2 000003d0 000003ce     ................
    14bc:	000003cc 000003ca 000003c8 000003c6     ................
    14cc:	000003c4 000003c2 000003c0 000003be     ................
    14dc:	000003bb 000003b9 000003b7 000003b4     ................
    14ec:	000003b2 000003b0 000003ad 000003ab     ................
    14fc:	000003a8 000003a6 000003a3 000003a0     ................
    150c:	0000039e 0000039b 00000398 00000395     ................
    151c:	00000393 00000390 0000038d 0000038a     ................
    152c:	00000387 00000384 00000381 0000037e     ............~...
    153c:	0000037b 00000378 00000375 00000372     {...x...u...r...
    154c:	0000036e 0000036b 00000368 00000364     n...k...h...d...
    155c:	00000361 0000035e 0000035a 00000357     a...^...Z...W...
    156c:	00000353 00000350 0000034c 00000349     S...P...L...I...
    157c:	00000345 00000342 0000033e 0000033a     E...B...>...:...
    158c:	00000336 00000333 0000032f 0000032b     6...3.../...+...
    159c:	00000327 00000323 0000031f 0000031c     '...#...........
    15ac:	00000318 00000314 00000310 0000030b     ................
    15bc:	00000307 00000303 000002ff 000002fb     ................
    15cc:	000002f7 000002f3 000002ee 000002ea     ................
    15dc:	000002e6 000002e1 000002dd 000002d9     ................
    15ec:	000002d4 000002d0 000002cb 000002c7     ................
    15fc:	000002c2 000002be 000002b9 000002b4     ................
    160c:	000002b0 000002ab 000002a6 000002a2     ................
    161c:	0000029d 00000298 00000293 0000028e     ................
    162c:	0000028a 00000285 00000280 0000027b     ............{...
    163c:	00000276 00000271 0000026c 00000267     v...q...l...g...
    164c:	00000262 0000025d 00000258 00000253     b...]...X...S...
    165c:	0000024e 00000248 00000243 0000023e     N...H...C...>...
    166c:	00000239 00000234 0000022e 00000229     9...4.......)...
    167c:	00000224 0000021f 00000219 00000214     $...............
    168c:	0000020e 00000209 00000204 000001fe     ................
    169c:	000001f9 000001f3 000001ee 000001e8     ................
    16ac:	000001e3 000001dd 000001d8 000001d2     ................
    16bc:	000001cc 000001c7 000001c1 000001bb     ................
    16cc:	000001b6 000001b0 000001aa 000001a5     ................
    16dc:	0000019f 00000199 00000193 0000018e     ................
    16ec:	00000188 00000182 0000017c 00000176     ........|...v...
    16fc:	00000171 0000016b 00000165 0000015f     q...k...e..._...
    170c:	00000159 00000153 0000014d 00000147     Y...S...M...G...
    171c:	00000141 0000013b 00000135 0000012f     A...;...5.../...
    172c:	00000129 00000123 0000011d 00000117     )...#...........
    173c:	00000111 0000010b 00000105 000000ff     ................
    174c:	000000f9 000000f3 000000ed 000000e6     ................
    175c:	000000e0 000000da 000000d4 000000ce     ................
    176c:	000000c8 000000c2 000000bb 000000b5     ................
    177c:	000000af 000000a9 000000a3 0000009c     ................
    178c:	00000096 00000090 0000008a 00000084     ................
    179c:	0000007d 00000077 00000071 0000006b     }...w...q...k...
    17ac:	00000064 0000005e 00000058 00000052     d...^...X...R...
    17bc:	0000004b 00000045 0000003f 00000039     K...E...?...9...
    17cc:	00000032 0000002c 00000026 0000001f     2...,...&.......
    17dc:	00000019 00000013 0000000d 00000006     ................
    17ec:	00000000 fffffffa fffffff3 ffffffed     ................
    17fc:	ffffffe7 ffffffe1 ffffffda ffffffd4     ................
    180c:	ffffffce ffffffc7 ffffffc1 ffffffbb     ................
    181c:	ffffffb5 ffffffae ffffffa8 ffffffa2     ................
    182c:	ffffff9c ffffff95 ffffff8f ffffff89     ................
    183c:	ffffff83 ffffff7c ffffff76 ffffff70     ....|...v...p...
    184c:	ffffff6a ffffff64 ffffff5d ffffff57     j...d...]...W...
    185c:	ffffff51 ffffff4b ffffff45 ffffff3e     Q...K...E...>...
    186c:	ffffff38 ffffff32 ffffff2c ffffff26     8...2...,...&...
    187c:	ffffff20 ffffff1a ffffff13 ffffff0d      ...............
    188c:	ffffff07 ffffff01 fffffefb fffffef5     ................
    189c:	fffffeef fffffee9 fffffee3 fffffedd     ................
    18ac:	fffffed7 fffffed1 fffffecb fffffec5     ................
    18bc:	fffffebf fffffeb9 fffffeb3 fffffead     ................
    18cc:	fffffea7 fffffea1 fffffe9b fffffe95     ................
    18dc:	fffffe8f fffffe8a fffffe84 fffffe7e     ............~...
    18ec:	fffffe78 fffffe72 fffffe6d fffffe67     x...r...m...g...
    18fc:	fffffe61 fffffe5b fffffe56 fffffe50     a...[...V...P...
    190c:	fffffe4a fffffe45 fffffe3f fffffe39     J...E...?...9...
    191c:	fffffe34 fffffe2e fffffe28 fffffe23     4.......(...#...
    192c:	fffffe1d fffffe18 fffffe12 fffffe0d     ................
    193c:	fffffe07 fffffe02 fffffdfc fffffdf7     ................
    194c:	fffffdf2 fffffdec fffffde7 fffffde1     ................
    195c:	fffffddc fffffdd7 fffffdd2 fffffdcc     ................
    196c:	fffffdc7 fffffdc2 fffffdbd fffffdb8     ................
    197c:	fffffdb2 fffffdad fffffda8 fffffda3     ................
    198c:	fffffd9e fffffd99 fffffd94 fffffd8f     ................
    199c:	fffffd8a fffffd85 fffffd80 fffffd7b     ............{...
    19ac:	fffffd76 fffffd72 fffffd6d fffffd68     v...r...m...h...
    19bc:	fffffd63 fffffd5e fffffd5a fffffd55     c...^...Z...U...
    19cc:	fffffd50 fffffd4c fffffd47 fffffd42     P...L...G...B...
    19dc:	fffffd3e fffffd39 fffffd35 fffffd30     >...9...5...0...
    19ec:	fffffd2c fffffd27 fffffd23 fffffd1f     ,...'...#.......
    19fc:	fffffd1a fffffd16 fffffd12 fffffd0d     ................
    1a0c:	fffffd09 fffffd05 fffffd01 fffffcfd     ................
    1a1c:	fffffcf9 fffffcf5 fffffcf0 fffffcec     ................
    1a2c:	fffffce8 fffffce4 fffffce1 fffffcdd     ................
    1a3c:	fffffcd9 fffffcd5 fffffcd1 fffffccd     ................
    1a4c:	fffffcca fffffcc6 fffffcc2 fffffcbe     ................
    1a5c:	fffffcbb fffffcb7 fffffcb4 fffffcb0     ................
    1a6c:	fffffcad fffffca9 fffffca6 fffffca2     ................
    1a7c:	fffffc9f fffffc9c fffffc98 fffffc95     ................
    1a8c:	fffffc92 fffffc8e fffffc8b fffffc88     ................
    1a9c:	fffffc85 fffffc82 fffffc7f fffffc7c     ............|...
    1aac:	fffffc79 fffffc76 fffffc73 fffffc70     y...v...s...p...
    1abc:	fffffc6d fffffc6b fffffc68 fffffc65     m...k...h...e...
    1acc:	fffffc62 fffffc60 fffffc5d fffffc5a     b...`...]...Z...
    1adc:	fffffc58 fffffc55 fffffc53 fffffc50     X...U...S...P...
    1aec:	fffffc4e fffffc4c fffffc49 fffffc47     N...L...I...G...
    1afc:	fffffc45 fffffc42 fffffc40 fffffc3e     E...B...@...>...
    1b0c:	fffffc3c fffffc3a fffffc38 fffffc36     <...:...8...6...
    1b1c:	fffffc34 fffffc32 fffffc30 fffffc2e     4...2...0.......
    1b2c:	fffffc2c fffffc2a fffffc29 fffffc27     ,...*...)...'...
    1b3c:	fffffc25 fffffc23 fffffc22 fffffc20     %...#..."... ...
    1b4c:	fffffc1f fffffc1d fffffc1c fffffc1a     ................
    1b5c:	fffffc19 fffffc18 fffffc16 fffffc15     ................
    1b6c:	fffffc14 fffffc12 fffffc11 fffffc10     ................
    1b7c:	fffffc0f fffffc0e fffffc0d fffffc0c     ................
    1b8c:	fffffc0b fffffc0a fffffc09 fffffc08     ................
    1b9c:	fffffc08 fffffc07 fffffc06 fffffc06     ................
    1bac:	fffffc05 fffffc04 fffffc04 fffffc03     ................
    1bbc:	fffffc03 fffffc02 fffffc02 fffffc02     ................
    1bcc:	fffffc01 fffffc01 fffffc01 fffffc00     ................
    1bdc:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1bec:	fffffc00 fffffc00 fffffc00 fffffc00     ................
    1bfc:	fffffc00 fffffc00 fffffc01 fffffc01     ................
    1c0c:	fffffc01 fffffc02 fffffc02 fffffc02     ................
    1c1c:	fffffc03 fffffc03 fffffc04 fffffc04     ................
    1c2c:	fffffc05 fffffc06 fffffc06 fffffc07     ................
    1c3c:	fffffc08 fffffc08 fffffc09 fffffc0a     ................
    1c4c:	fffffc0b fffffc0c fffffc0d fffffc0e     ................
    1c5c:	fffffc0f fffffc10 fffffc11 fffffc12     ................
    1c6c:	fffffc14 fffffc15 fffffc16 fffffc18     ................
    1c7c:	fffffc19 fffffc1a fffffc1c fffffc1d     ................
    1c8c:	fffffc1f fffffc20 fffffc22 fffffc23     .... ..."...#...
    1c9c:	fffffc25 fffffc27 fffffc29 fffffc2a     %...'...)...*...
    1cac:	fffffc2c fffffc2e fffffc30 fffffc32     ,.......0...2...
    1cbc:	fffffc34 fffffc36 fffffc38 fffffc3a     4...6...8...:...
    1ccc:	fffffc3c fffffc3e fffffc40 fffffc42     <...>...@...B...
    1cdc:	fffffc45 fffffc47 fffffc49 fffffc4c     E...G...I...L...
    1cec:	fffffc4e fffffc50 fffffc53 fffffc55     N...P...S...U...
    1cfc:	fffffc58 fffffc5a fffffc5d fffffc60     X...Z...]...`...
    1d0c:	fffffc62 fffffc65 fffffc68 fffffc6b     b...e...h...k...
    1d1c:	fffffc6d fffffc70 fffffc73 fffffc76     m...p...s...v...
    1d2c:	fffffc79 fffffc7c fffffc7f fffffc82     y...|...........
    1d3c:	fffffc85 fffffc88 fffffc8b fffffc8e     ................
    1d4c:	fffffc92 fffffc95 fffffc98 fffffc9c     ................
    1d5c:	fffffc9f fffffca2 fffffca6 fffffca9     ................
    1d6c:	fffffcad fffffcb0 fffffcb4 fffffcb7     ................
    1d7c:	fffffcbb fffffcbe fffffcc2 fffffcc6     ................
    1d8c:	fffffcca fffffccd fffffcd1 fffffcd5     ................
    1d9c:	fffffcd9 fffffcdd fffffce1 fffffce4     ................
    1dac:	fffffce8 fffffcec fffffcf0 fffffcf5     ................
    1dbc:	fffffcf9 fffffcfd fffffd01 fffffd05     ................
    1dcc:	fffffd09 fffffd0d fffffd12 fffffd16     ................
    1ddc:	fffffd1a fffffd1f fffffd23 fffffd27     ........#...'...
    1dec:	fffffd2c fffffd30 fffffd35 fffffd39     ,...0...5...9...
    1dfc:	fffffd3e fffffd42 fffffd47 fffffd4c     >...B...G...L...
    1e0c:	fffffd50 fffffd55 fffffd5a fffffd5e     P...U...Z...^...
    1e1c:	fffffd63 fffffd68 fffffd6d fffffd72     c...h...m...r...
    1e2c:	fffffd76 fffffd7b fffffd80 fffffd85     v...{...........
    1e3c:	fffffd8a fffffd8f fffffd94 fffffd99     ................
    1e4c:	fffffd9e fffffda3 fffffda8 fffffdad     ................
    1e5c:	fffffdb2 fffffdb8 fffffdbd fffffdc2     ................
    1e6c:	fffffdc7 fffffdcc fffffdd2 fffffdd7     ................
    1e7c:	fffffddc fffffde1 fffffde7 fffffdec     ................
    1e8c:	fffffdf2 fffffdf7 fffffdfc fffffe02     ................
    1e9c:	fffffe07 fffffe0d fffffe12 fffffe18     ................
    1eac:	fffffe1d fffffe23 fffffe28 fffffe2e     ....#...(.......
    1ebc:	fffffe34 fffffe39 fffffe3f fffffe45     4...9...?...E...
    1ecc:	fffffe4a fffffe50 fffffe56 fffffe5b     J...P...V...[...
    1edc:	fffffe61 fffffe67 fffffe6d fffffe72     a...g...m...r...
    1eec:	fffffe78 fffffe7e fffffe84 fffffe8a     x...~...........
    1efc:	fffffe8f fffffe95 fffffe9b fffffea1     ................
    1f0c:	fffffea7 fffffead fffffeb3 fffffeb9     ................
    1f1c:	fffffebf fffffec5 fffffecb fffffed1     ................
    1f2c:	fffffed7 fffffedd fffffee3 fffffee9     ................
    1f3c:	fffffeef fffffef5 fffffefb ffffff01     ................
    1f4c:	ffffff07 ffffff0d ffffff13 ffffff1a     ................
    1f5c:	ffffff20 ffffff26 ffffff2c ffffff32      ...&...,...2...
    1f6c:	ffffff38 ffffff3e ffffff45 ffffff4b     8...>...E...K...
    1f7c:	ffffff51 ffffff57 ffffff5d ffffff64     Q...W...]...d...
    1f8c:	ffffff6a ffffff70 ffffff76 ffffff7c     j...p...v...|...
    1f9c:	ffffff83 ffffff89 ffffff8f ffffff95     ................
    1fac:	ffffff9c ffffffa2 ffffffa8 ffffffae     ................
    1fbc:	ffffffb5 ffffffbb ffffffc1 ffffffc7     ................
    1fcc:	ffffffce ffffffd4 ffffffda ffffffe1     ................
    1fdc:	ffffffe7 ffffffed fffffff3 fffffffa     ................
    1fec:	00000000 00000006 0000000d 00000013     ................
    1ffc:	00000019 0000001f 00000026 0000002c     ........&...,...
    200c:	00000032 00000039 0000003f 00000045     2...9...?...E...
    201c:	0000004b 00000052 00000058 0000005e     K...R...X...^...
    202c:	00000064 0000006b 00000071 00000077     d...k...q...w...
    203c:	0000007d 00000084 0000008a 00000090     }...............
    204c:	00000096 0000009c 000000a3 000000a9     ................
    205c:	000000af 000000b5 000000bb 000000c2     ................
    206c:	000000c8 000000ce 000000d4 000000da     ................
    207c:	000000e0 000000e6 000000ed 000000f3     ................
    208c:	000000f9 000000ff 00000105 0000010b     ................
    209c:	00000111 00000117 0000011d 00000123     ............#...
    20ac:	00000129 0000012f 00000135 0000013b     ).../...5...;...
    20bc:	00000141 00000147 0000014d 00000153     A...G...M...S...
    20cc:	00000159 0000015f 00000165 0000016b     Y..._...e...k...
    20dc:	00000171 00000176 0000017c 00000182     q...v...|.......
    20ec:	00000188 0000018e 00000193 00000199     ................
    20fc:	0000019f 000001a5 000001aa 000001b0     ................
    210c:	000001b6 000001bb 000001c1 000001c7     ................
    211c:	000001cc 000001d2 000001d8 000001dd     ................
    212c:	000001e3 000001e8 000001ee 000001f3     ................
    213c:	000001f9 000001fe 00000204 00000209     ................
    214c:	0000020e 00000214 00000219 0000021f     ................
    215c:	00000224 00000229 0000022e 00000234     $...).......4...
    216c:	00000239 0000023e 00000243 00000248     9...>...C...H...
    217c:	0000024e 00000253 00000258 0000025d     N...S...X...]...
    218c:	00000262 00000267 0000026c 00000271     b...g...l...q...
    219c:	00000276 0000027b 00000280 00000285     v...{...........
    21ac:	0000028a 0000028e 00000293 00000298     ................
    21bc:	0000029d 000002a2 000002a6 000002ab     ................
    21cc:	000002b0 000002b4 000002b9 000002be     ................
    21dc:	000002c2 000002c7 000002cb 000002d0     ................
    21ec:	000002d4 000002d9 000002dd 000002e1     ................
    21fc:	000002e6 000002ea 000002ee 000002f3     ................
    220c:	000002f7 000002fb 000002ff 00000303     ................
    221c:	00000307 0000030b 00000310 00000314     ................
    222c:	00000318 0000031c 0000031f 00000323     ............#...
    223c:	00000327 0000032b 0000032f 00000333     '...+.../...3...
    224c:	00000336 0000033a 0000033e 00000342     6...:...>...B...
    225c:	00000345 00000349 0000034c 00000350     E...I...L...P...
    226c:	00000353 00000357 0000035a 0000035e     S...W...Z...^...
    227c:	00000361 00000364 00000368 0000036b     a...d...h...k...
    228c:	0000036e 00000372 00000375 00000378     n...r...u...x...
    229c:	0000037b 0000037e 00000381 00000384     {...~...........
    22ac:	00000387 0000038a 0000038d 00000390     ................
    22bc:	00000393 00000395 00000398 0000039b     ................
    22cc:	0000039e 000003a0 000003a3 000003a6     ................
    22dc:	000003a8 000003ab 000003ad 000003b0     ................
    22ec:	000003b2 000003b4 000003b7 000003b9     ................
    22fc:	000003bb 000003be 000003c0 000003c2     ................
    230c:	000003c4 000003c6 000003c8 000003ca     ................
    231c:	000003cc 000003ce 000003d0 000003d2     ................
    232c:	000003d4 000003d6 000003d7 000003d9     ................
    233c:	000003db 000003dd 000003de 000003e0     ................
    234c:	000003e1 000003e3 000003e4 000003e6     ................
    235c:	000003e7 000003e8 000003ea 000003eb     ................
    236c:	000003ec 000003ee 000003ef 000003f0     ................
    237c:	000003f1 000003f2 000003f3 000003f4     ................
    238c:	000003f5 000003f6 000003f7 000003f8     ................
    239c:	000003f8 000003f9 000003fa 000003fa     ................
    23ac:	000003fb 000003fc 000003fc 000003fd     ................
    23bc:	000003fd 000003fe 000003fe 000003fe     ................
    23cc:	000003ff 000003ff 000003ff 00000400     ................
    23dc:	00000400 00000400 00000400 00000400     ................
    23ec:	0000123a 0000126c 0000129c 000012ca     :...l...........
    23fc:	00001204 000012f8 00000080 0000004c     ............L...
    240c:	00000028 00000014 0000000a 00000005     (...............
    241c:	00000003 00000001 000002d4 00000288     ................
    242c:	00000274 0000026f 0000026f 0000026e     t...o...o...n...
    243c:	0000026e 0000026e                       n...n...
