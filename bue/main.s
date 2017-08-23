
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

00000000 <table_interrupt_vector>:
       0:	00 80 00 20 d1 12 00 00 31 13 00 00 31 13 00 00     ... ....1...1...
	...
      2c:	31 13 00 00 00 00 00 00 00 00 00 00 31 13 00 00     1...........1...
      3c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      4c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      5c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      6c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      7c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      8c:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      9c:	31 13 00 00 31 13 00 00 00 00 00 00 00 00 00 00     1...1...........
      ac:	31 13 00 00 31 13 00 00 31 13 00 00 31 13 00 00     1...1...1...1...
      bc:	31 13 00 00                                         1...

000000c0 <sleep>:
      c0:	b580      	push	{r7, lr}
      c2:	b084      	sub	sp, #16
      c4:	af00      	add	r7, sp, #0
      c6:	6078      	str	r0, [r7, #4]
      c8:	4b07      	ldr	r3, [pc, #28]	; (e8 <sleep+0x28>)
      ca:	681a      	ldr	r2, [r3, #0]
      cc:	687b      	ldr	r3, [r7, #4]
      ce:	18d3      	adds	r3, r2, r3
      d0:	60fb      	str	r3, [r7, #12]
      d2:	46c0      	nop			; (mov r8, r8)
      d4:	4b04      	ldr	r3, [pc, #16]	; (e8 <sleep+0x28>)
      d6:	681a      	ldr	r2, [r3, #0]
      d8:	68fb      	ldr	r3, [r7, #12]
      da:	429a      	cmp	r2, r3
      dc:	d3fa      	bcc.n	d4 <sleep+0x14>
      de:	46c0      	nop			; (mov r8, r8)
      e0:	0018      	movs	r0, r3
      e2:	46bd      	mov	sp, r7
      e4:	b004      	add	sp, #16
      e6:	bd80      	pop	{r7, pc}
      e8:	2000000c 	.word	0x2000000c

000000ec <PortConfig>:
      ec:	b580      	push	{r7, lr}
      ee:	af00      	add	r7, sp, #0
      f0:	4b42      	ldr	r3, [pc, #264]	; (1fc <PortConfig+0x110>)
      f2:	4a42      	ldr	r2, [pc, #264]	; (1fc <PortConfig+0x110>)
      f4:	69d2      	ldr	r2, [r2, #28]
      f6:	2180      	movs	r1, #128	; 0x80
      f8:	0389      	lsls	r1, r1, #14
      fa:	430a      	orrs	r2, r1
      fc:	61da      	str	r2, [r3, #28]
      fe:	4b40      	ldr	r3, [pc, #256]	; (200 <PortConfig+0x114>)
     100:	4a3f      	ldr	r2, [pc, #252]	; (200 <PortConfig+0x114>)
     102:	6892      	ldr	r2, [r2, #8]
     104:	493f      	ldr	r1, [pc, #252]	; (204 <PortConfig+0x118>)
     106:	400a      	ands	r2, r1
     108:	609a      	str	r2, [r3, #8]
     10a:	4b3d      	ldr	r3, [pc, #244]	; (200 <PortConfig+0x114>)
     10c:	4a3c      	ldr	r2, [pc, #240]	; (200 <PortConfig+0x114>)
     10e:	6892      	ldr	r2, [r2, #8]
     110:	493d      	ldr	r1, [pc, #244]	; (208 <PortConfig+0x11c>)
     112:	430a      	orrs	r2, r1
     114:	609a      	str	r2, [r3, #8]
     116:	4b3a      	ldr	r3, [pc, #232]	; (200 <PortConfig+0x114>)
     118:	4a39      	ldr	r2, [pc, #228]	; (200 <PortConfig+0x114>)
     11a:	6852      	ldr	r2, [r2, #4]
     11c:	21fc      	movs	r1, #252	; 0xfc
     11e:	0109      	lsls	r1, r1, #4
     120:	430a      	orrs	r2, r1
     122:	605a      	str	r2, [r3, #4]
     124:	4b36      	ldr	r3, [pc, #216]	; (200 <PortConfig+0x114>)
     126:	4a36      	ldr	r2, [pc, #216]	; (200 <PortConfig+0x114>)
     128:	68d2      	ldr	r2, [r2, #12]
     12a:	21fc      	movs	r1, #252	; 0xfc
     12c:	0109      	lsls	r1, r1, #4
     12e:	430a      	orrs	r2, r1
     130:	60da      	str	r2, [r3, #12]
     132:	4b33      	ldr	r3, [pc, #204]	; (200 <PortConfig+0x114>)
     134:	4a32      	ldr	r2, [pc, #200]	; (200 <PortConfig+0x114>)
     136:	6992      	ldr	r2, [r2, #24]
     138:	4934      	ldr	r1, [pc, #208]	; (20c <PortConfig+0x120>)
     13a:	430a      	orrs	r2, r1
     13c:	619a      	str	r2, [r3, #24]
     13e:	4b2f      	ldr	r3, [pc, #188]	; (1fc <PortConfig+0x110>)
     140:	4a2e      	ldr	r2, [pc, #184]	; (1fc <PortConfig+0x110>)
     142:	69d2      	ldr	r2, [r2, #28]
     144:	2180      	movs	r1, #128	; 0x80
     146:	0489      	lsls	r1, r1, #18
     148:	430a      	orrs	r2, r1
     14a:	61da      	str	r2, [r3, #28]
     14c:	4b30      	ldr	r3, [pc, #192]	; (210 <PortConfig+0x124>)
     14e:	4a30      	ldr	r2, [pc, #192]	; (210 <PortConfig+0x124>)
     150:	68d2      	ldr	r2, [r2, #12]
     152:	2102      	movs	r1, #2
     154:	438a      	bics	r2, r1
     156:	60da      	str	r2, [r3, #12]
     158:	4b28      	ldr	r3, [pc, #160]	; (1fc <PortConfig+0x110>)
     15a:	4a28      	ldr	r2, [pc, #160]	; (1fc <PortConfig+0x110>)
     15c:	69d2      	ldr	r2, [r2, #28]
     15e:	2180      	movs	r1, #128	; 0x80
     160:	0449      	lsls	r1, r1, #17
     162:	430a      	orrs	r2, r1
     164:	61da      	str	r2, [r3, #28]
     166:	4b2b      	ldr	r3, [pc, #172]	; (214 <PortConfig+0x128>)
     168:	4a2a      	ldr	r2, [pc, #168]	; (214 <PortConfig+0x128>)
     16a:	6892      	ldr	r2, [r2, #8]
     16c:	492a      	ldr	r1, [pc, #168]	; (218 <PortConfig+0x12c>)
     16e:	400a      	ands	r2, r1
     170:	609a      	str	r2, [r3, #8]
     172:	4b28      	ldr	r3, [pc, #160]	; (214 <PortConfig+0x128>)
     174:	4a27      	ldr	r2, [pc, #156]	; (214 <PortConfig+0x128>)
     176:	6892      	ldr	r2, [r2, #8]
     178:	21a0      	movs	r1, #160	; 0xa0
     17a:	02c9      	lsls	r1, r1, #11
     17c:	430a      	orrs	r2, r1
     17e:	609a      	str	r2, [r3, #8]
     180:	4b24      	ldr	r3, [pc, #144]	; (214 <PortConfig+0x128>)
     182:	4a24      	ldr	r2, [pc, #144]	; (214 <PortConfig+0x128>)
     184:	68d2      	ldr	r2, [r2, #12]
     186:	21c0      	movs	r1, #192	; 0xc0
     188:	0089      	lsls	r1, r1, #2
     18a:	430a      	orrs	r2, r1
     18c:	60da      	str	r2, [r3, #12]
     18e:	4b21      	ldr	r3, [pc, #132]	; (214 <PortConfig+0x128>)
     190:	4a20      	ldr	r2, [pc, #128]	; (214 <PortConfig+0x128>)
     192:	6992      	ldr	r2, [r2, #24]
     194:	21c0      	movs	r1, #192	; 0xc0
     196:	0309      	lsls	r1, r1, #12
     198:	430a      	orrs	r2, r1
     19a:	619a      	str	r2, [r3, #24]
     19c:	4b1d      	ldr	r3, [pc, #116]	; (214 <PortConfig+0x128>)
     19e:	4a1d      	ldr	r2, [pc, #116]	; (214 <PortConfig+0x128>)
     1a0:	6852      	ldr	r2, [r2, #4]
     1a2:	2180      	movs	r1, #128	; 0x80
     1a4:	0089      	lsls	r1, r1, #2
     1a6:	430a      	orrs	r2, r1
     1a8:	605a      	str	r2, [r3, #4]
     1aa:	4b1a      	ldr	r3, [pc, #104]	; (214 <PortConfig+0x128>)
     1ac:	4a19      	ldr	r2, [pc, #100]	; (214 <PortConfig+0x128>)
     1ae:	6852      	ldr	r2, [r2, #4]
     1b0:	491a      	ldr	r1, [pc, #104]	; (21c <PortConfig+0x130>)
     1b2:	400a      	ands	r2, r1
     1b4:	605a      	str	r2, [r3, #4]
     1b6:	4b11      	ldr	r3, [pc, #68]	; (1fc <PortConfig+0x110>)
     1b8:	4a10      	ldr	r2, [pc, #64]	; (1fc <PortConfig+0x110>)
     1ba:	69d2      	ldr	r2, [r2, #28]
     1bc:	2180      	movs	r1, #128	; 0x80
     1be:	0409      	lsls	r1, r1, #16
     1c0:	430a      	orrs	r2, r1
     1c2:	61da      	str	r2, [r3, #28]
     1c4:	4b16      	ldr	r3, [pc, #88]	; (220 <PortConfig+0x134>)
     1c6:	2200      	movs	r2, #0
     1c8:	609a      	str	r2, [r3, #8]
     1ca:	4b15      	ldr	r3, [pc, #84]	; (220 <PortConfig+0x134>)
     1cc:	2200      	movs	r2, #0
     1ce:	601a      	str	r2, [r3, #0]
     1d0:	4b13      	ldr	r3, [pc, #76]	; (220 <PortConfig+0x134>)
     1d2:	4a13      	ldr	r2, [pc, #76]	; (220 <PortConfig+0x134>)
     1d4:	6852      	ldr	r2, [r2, #4]
     1d6:	2120      	movs	r1, #32
     1d8:	430a      	orrs	r2, r1
     1da:	605a      	str	r2, [r3, #4]
     1dc:	4b10      	ldr	r3, [pc, #64]	; (220 <PortConfig+0x134>)
     1de:	4a10      	ldr	r2, [pc, #64]	; (220 <PortConfig+0x134>)
     1e0:	68d2      	ldr	r2, [r2, #12]
     1e2:	2120      	movs	r1, #32
     1e4:	430a      	orrs	r2, r1
     1e6:	60da      	str	r2, [r3, #12]
     1e8:	4b0d      	ldr	r3, [pc, #52]	; (220 <PortConfig+0x134>)
     1ea:	4a0d      	ldr	r2, [pc, #52]	; (220 <PortConfig+0x134>)
     1ec:	6992      	ldr	r2, [r2, #24]
     1ee:	21c0      	movs	r1, #192	; 0xc0
     1f0:	0109      	lsls	r1, r1, #4
     1f2:	430a      	orrs	r2, r1
     1f4:	619a      	str	r2, [r3, #24]
     1f6:	46c0      	nop			; (mov r8, r8)
     1f8:	46bd      	mov	sp, r7
     1fa:	bd80      	pop	{r7, pc}
     1fc:	40020000 	.word	0x40020000
     200:	400a8000 	.word	0x400a8000
     204:	ff000fff 	.word	0xff000fff
     208:	00aaa000 	.word	0x00aaa000
     20c:	00fff000 	.word	0x00fff000
     210:	400c8000 	.word	0x400c8000
     214:	400c0000 	.word	0x400c0000
     218:	fff0ffff 	.word	0xfff0ffff
     21c:	fffffeff 	.word	0xfffffeff
     220:	400b8000 	.word	0x400b8000

00000224 <ClkConfig>:
     224:	b580      	push	{r7, lr}
     226:	af00      	add	r7, sp, #0
     228:	4b18      	ldr	r3, [pc, #96]	; (28c <ClkConfig+0x68>)
     22a:	4a18      	ldr	r2, [pc, #96]	; (28c <ClkConfig+0x68>)
     22c:	6892      	ldr	r2, [r2, #8]
     22e:	2101      	movs	r1, #1
     230:	430a      	orrs	r2, r1
     232:	609a      	str	r2, [r3, #8]
     234:	46c0      	nop			; (mov r8, r8)
     236:	4b15      	ldr	r3, [pc, #84]	; (28c <ClkConfig+0x68>)
     238:	681b      	ldr	r3, [r3, #0]
     23a:	2204      	movs	r2, #4
     23c:	4013      	ands	r3, r2
     23e:	d0fa      	beq.n	236 <ClkConfig+0x12>
     240:	4b12      	ldr	r3, [pc, #72]	; (28c <ClkConfig+0x68>)
     242:	4a12      	ldr	r2, [pc, #72]	; (28c <ClkConfig+0x68>)
     244:	68d2      	ldr	r2, [r2, #12]
     246:	2102      	movs	r1, #2
     248:	430a      	orrs	r2, r1
     24a:	60da      	str	r2, [r3, #12]
     24c:	4b0f      	ldr	r3, [pc, #60]	; (28c <ClkConfig+0x68>)
     24e:	4a10      	ldr	r2, [pc, #64]	; (290 <ClkConfig+0x6c>)
     250:	605a      	str	r2, [r3, #4]
     252:	46c0      	nop			; (mov r8, r8)
     254:	4b0d      	ldr	r3, [pc, #52]	; (28c <ClkConfig+0x68>)
     256:	681b      	ldr	r3, [r3, #0]
     258:	2202      	movs	r2, #2
     25a:	4013      	ands	r3, r2
     25c:	d0fa      	beq.n	254 <ClkConfig+0x30>
     25e:	4b0d      	ldr	r3, [pc, #52]	; (294 <ClkConfig+0x70>)
     260:	4a0c      	ldr	r2, [pc, #48]	; (294 <ClkConfig+0x70>)
     262:	6812      	ldr	r2, [r2, #0]
     264:	2120      	movs	r1, #32
     266:	430a      	orrs	r2, r1
     268:	601a      	str	r2, [r3, #0]
     26a:	4b08      	ldr	r3, [pc, #32]	; (28c <ClkConfig+0x68>)
     26c:	4a07      	ldr	r2, [pc, #28]	; (28c <ClkConfig+0x68>)
     26e:	68d2      	ldr	r2, [r2, #12]
     270:	2180      	movs	r1, #128	; 0x80
     272:	0049      	lsls	r1, r1, #1
     274:	430a      	orrs	r2, r1
     276:	60da      	str	r2, [r3, #12]
     278:	4b04      	ldr	r3, [pc, #16]	; (28c <ClkConfig+0x68>)
     27a:	4a04      	ldr	r2, [pc, #16]	; (28c <ClkConfig+0x68>)
     27c:	68d2      	ldr	r2, [r2, #12]
     27e:	2104      	movs	r1, #4
     280:	430a      	orrs	r2, r1
     282:	60da      	str	r2, [r3, #12]
     284:	46c0      	nop			; (mov r8, r8)
     286:	46bd      	mov	sp, r7
     288:	bd80      	pop	{r7, pc}
     28a:	46c0      	nop			; (mov r8, r8)
     28c:	40020000 	.word	0x40020000
     290:	00000e04 	.word	0x00000e04
     294:	40018000 	.word	0x40018000

00000298 <TimerConfig>:
     298:	b580      	push	{r7, lr}
     29a:	af00      	add	r7, sp, #0
     29c:	4b71      	ldr	r3, [pc, #452]	; (464 <_stack_size+0x64>)
     29e:	4a71      	ldr	r2, [pc, #452]	; (464 <_stack_size+0x64>)
     2a0:	69d2      	ldr	r2, [r2, #28]
     2a2:	2180      	movs	r1, #128	; 0x80
     2a4:	0309      	lsls	r1, r1, #12
     2a6:	430a      	orrs	r2, r1
     2a8:	61da      	str	r2, [r3, #28]
     2aa:	4b6e      	ldr	r3, [pc, #440]	; (464 <_stack_size+0x64>)
     2ac:	4a6d      	ldr	r2, [pc, #436]	; (464 <_stack_size+0x64>)
     2ae:	6a92      	ldr	r2, [r2, #40]	; 0x28
     2b0:	2180      	movs	r1, #128	; 0x80
     2b2:	04c9      	lsls	r1, r1, #19
     2b4:	430a      	orrs	r2, r1
     2b6:	629a      	str	r2, [r3, #40]	; 0x28
     2b8:	4b6a      	ldr	r3, [pc, #424]	; (464 <_stack_size+0x64>)
     2ba:	4a6a      	ldr	r2, [pc, #424]	; (464 <_stack_size+0x64>)
     2bc:	6a92      	ldr	r2, [r2, #40]	; 0x28
     2be:	496a      	ldr	r1, [pc, #424]	; (468 <_stack_size+0x68>)
     2c0:	400a      	ands	r2, r1
     2c2:	629a      	str	r2, [r3, #40]	; 0x28
     2c4:	4b69      	ldr	r3, [pc, #420]	; (46c <_stack_size+0x6c>)
     2c6:	2200      	movs	r2, #0
     2c8:	601a      	str	r2, [r3, #0]
     2ca:	4b68      	ldr	r3, [pc, #416]	; (46c <_stack_size+0x6c>)
     2cc:	2204      	movs	r2, #4
     2ce:	605a      	str	r2, [r3, #4]
     2d0:	4b66      	ldr	r3, [pc, #408]	; (46c <_stack_size+0x6c>)
     2d2:	4a67      	ldr	r2, [pc, #412]	; (470 <_stack_size+0x70>)
     2d4:	609a      	str	r2, [r3, #8]
     2d6:	4b65      	ldr	r3, [pc, #404]	; (46c <_stack_size+0x6c>)
     2d8:	2280      	movs	r2, #128	; 0x80
     2da:	0092      	lsls	r2, r2, #2
     2dc:	611a      	str	r2, [r3, #16]
     2de:	4b63      	ldr	r3, [pc, #396]	; (46c <_stack_size+0x6c>)
     2e0:	2280      	movs	r2, #128	; 0x80
     2e2:	0092      	lsls	r2, r2, #2
     2e4:	615a      	str	r2, [r3, #20]
     2e6:	4b61      	ldr	r3, [pc, #388]	; (46c <_stack_size+0x6c>)
     2e8:	2280      	movs	r2, #128	; 0x80
     2ea:	0092      	lsls	r2, r2, #2
     2ec:	619a      	str	r2, [r3, #24]
     2ee:	4b5f      	ldr	r3, [pc, #380]	; (46c <_stack_size+0x6c>)
     2f0:	4a5e      	ldr	r2, [pc, #376]	; (46c <_stack_size+0x6c>)
     2f2:	6a12      	ldr	r2, [r2, #32]
     2f4:	495f      	ldr	r1, [pc, #380]	; (474 <_stack_size+0x74>)
     2f6:	400a      	ands	r2, r1
     2f8:	621a      	str	r2, [r3, #32]
     2fa:	4b5c      	ldr	r3, [pc, #368]	; (46c <_stack_size+0x6c>)
     2fc:	4a5b      	ldr	r2, [pc, #364]	; (46c <_stack_size+0x6c>)
     2fe:	6a12      	ldr	r2, [r2, #32]
     300:	21e0      	movs	r1, #224	; 0xe0
     302:	0109      	lsls	r1, r1, #4
     304:	430a      	orrs	r2, r1
     306:	621a      	str	r2, [r3, #32]
     308:	4b58      	ldr	r3, [pc, #352]	; (46c <_stack_size+0x6c>)
     30a:	4a58      	ldr	r2, [pc, #352]	; (46c <_stack_size+0x6c>)
     30c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     30e:	210f      	movs	r1, #15
     310:	438a      	bics	r2, r1
     312:	631a      	str	r2, [r3, #48]	; 0x30
     314:	4b55      	ldr	r3, [pc, #340]	; (46c <_stack_size+0x6c>)
     316:	4a55      	ldr	r2, [pc, #340]	; (46c <_stack_size+0x6c>)
     318:	6b12      	ldr	r2, [r2, #48]	; 0x30
     31a:	210c      	movs	r1, #12
     31c:	430a      	orrs	r2, r1
     31e:	631a      	str	r2, [r3, #48]	; 0x30
     320:	4b52      	ldr	r3, [pc, #328]	; (46c <_stack_size+0x6c>)
     322:	4a52      	ldr	r2, [pc, #328]	; (46c <_stack_size+0x6c>)
     324:	6b12      	ldr	r2, [r2, #48]	; 0x30
     326:	2101      	movs	r1, #1
     328:	430a      	orrs	r2, r1
     32a:	631a      	str	r2, [r3, #48]	; 0x30
     32c:	4b4f      	ldr	r3, [pc, #316]	; (46c <_stack_size+0x6c>)
     32e:	4a4f      	ldr	r2, [pc, #316]	; (46c <_stack_size+0x6c>)
     330:	6b12      	ldr	r2, [r2, #48]	; 0x30
     332:	4951      	ldr	r1, [pc, #324]	; (478 <_stack_size+0x78>)
     334:	400a      	ands	r2, r1
     336:	631a      	str	r2, [r3, #48]	; 0x30
     338:	4b4c      	ldr	r3, [pc, #304]	; (46c <_stack_size+0x6c>)
     33a:	4a4c      	ldr	r2, [pc, #304]	; (46c <_stack_size+0x6c>)
     33c:	6b12      	ldr	r2, [r2, #48]	; 0x30
     33e:	21c0      	movs	r1, #192	; 0xc0
     340:	0109      	lsls	r1, r1, #4
     342:	430a      	orrs	r2, r1
     344:	631a      	str	r2, [r3, #48]	; 0x30
     346:	4b49      	ldr	r3, [pc, #292]	; (46c <_stack_size+0x6c>)
     348:	4a48      	ldr	r2, [pc, #288]	; (46c <_stack_size+0x6c>)
     34a:	6b12      	ldr	r2, [r2, #48]	; 0x30
     34c:	2180      	movs	r1, #128	; 0x80
     34e:	0049      	lsls	r1, r1, #1
     350:	430a      	orrs	r2, r1
     352:	631a      	str	r2, [r3, #48]	; 0x30
     354:	4b45      	ldr	r3, [pc, #276]	; (46c <_stack_size+0x6c>)
     356:	4a45      	ldr	r2, [pc, #276]	; (46c <_stack_size+0x6c>)
     358:	6a52      	ldr	r2, [r2, #36]	; 0x24
     35a:	4946      	ldr	r1, [pc, #280]	; (474 <_stack_size+0x74>)
     35c:	400a      	ands	r2, r1
     35e:	625a      	str	r2, [r3, #36]	; 0x24
     360:	4b42      	ldr	r3, [pc, #264]	; (46c <_stack_size+0x6c>)
     362:	4a42      	ldr	r2, [pc, #264]	; (46c <_stack_size+0x6c>)
     364:	6a52      	ldr	r2, [r2, #36]	; 0x24
     366:	21e0      	movs	r1, #224	; 0xe0
     368:	0109      	lsls	r1, r1, #4
     36a:	430a      	orrs	r2, r1
     36c:	625a      	str	r2, [r3, #36]	; 0x24
     36e:	4b3f      	ldr	r3, [pc, #252]	; (46c <_stack_size+0x6c>)
     370:	4a3e      	ldr	r2, [pc, #248]	; (46c <_stack_size+0x6c>)
     372:	6b52      	ldr	r2, [r2, #52]	; 0x34
     374:	210f      	movs	r1, #15
     376:	438a      	bics	r2, r1
     378:	635a      	str	r2, [r3, #52]	; 0x34
     37a:	4b3c      	ldr	r3, [pc, #240]	; (46c <_stack_size+0x6c>)
     37c:	4a3b      	ldr	r2, [pc, #236]	; (46c <_stack_size+0x6c>)
     37e:	6b52      	ldr	r2, [r2, #52]	; 0x34
     380:	210c      	movs	r1, #12
     382:	430a      	orrs	r2, r1
     384:	635a      	str	r2, [r3, #52]	; 0x34
     386:	4b39      	ldr	r3, [pc, #228]	; (46c <_stack_size+0x6c>)
     388:	4a38      	ldr	r2, [pc, #224]	; (46c <_stack_size+0x6c>)
     38a:	6b52      	ldr	r2, [r2, #52]	; 0x34
     38c:	2101      	movs	r1, #1
     38e:	430a      	orrs	r2, r1
     390:	635a      	str	r2, [r3, #52]	; 0x34
     392:	4b36      	ldr	r3, [pc, #216]	; (46c <_stack_size+0x6c>)
     394:	4a35      	ldr	r2, [pc, #212]	; (46c <_stack_size+0x6c>)
     396:	6b52      	ldr	r2, [r2, #52]	; 0x34
     398:	4937      	ldr	r1, [pc, #220]	; (478 <_stack_size+0x78>)
     39a:	400a      	ands	r2, r1
     39c:	635a      	str	r2, [r3, #52]	; 0x34
     39e:	4b33      	ldr	r3, [pc, #204]	; (46c <_stack_size+0x6c>)
     3a0:	4a32      	ldr	r2, [pc, #200]	; (46c <_stack_size+0x6c>)
     3a2:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3a4:	21c0      	movs	r1, #192	; 0xc0
     3a6:	0109      	lsls	r1, r1, #4
     3a8:	430a      	orrs	r2, r1
     3aa:	635a      	str	r2, [r3, #52]	; 0x34
     3ac:	4b2f      	ldr	r3, [pc, #188]	; (46c <_stack_size+0x6c>)
     3ae:	4a2f      	ldr	r2, [pc, #188]	; (46c <_stack_size+0x6c>)
     3b0:	6b52      	ldr	r2, [r2, #52]	; 0x34
     3b2:	2180      	movs	r1, #128	; 0x80
     3b4:	0049      	lsls	r1, r1, #1
     3b6:	430a      	orrs	r2, r1
     3b8:	635a      	str	r2, [r3, #52]	; 0x34
     3ba:	4b2c      	ldr	r3, [pc, #176]	; (46c <_stack_size+0x6c>)
     3bc:	4a2b      	ldr	r2, [pc, #172]	; (46c <_stack_size+0x6c>)
     3be:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3c0:	492c      	ldr	r1, [pc, #176]	; (474 <_stack_size+0x74>)
     3c2:	400a      	ands	r2, r1
     3c4:	629a      	str	r2, [r3, #40]	; 0x28
     3c6:	4b29      	ldr	r3, [pc, #164]	; (46c <_stack_size+0x6c>)
     3c8:	4a28      	ldr	r2, [pc, #160]	; (46c <_stack_size+0x6c>)
     3ca:	6a92      	ldr	r2, [r2, #40]	; 0x28
     3cc:	21e0      	movs	r1, #224	; 0xe0
     3ce:	0109      	lsls	r1, r1, #4
     3d0:	430a      	orrs	r2, r1
     3d2:	629a      	str	r2, [r3, #40]	; 0x28
     3d4:	4b25      	ldr	r3, [pc, #148]	; (46c <_stack_size+0x6c>)
     3d6:	4a25      	ldr	r2, [pc, #148]	; (46c <_stack_size+0x6c>)
     3d8:	6b92      	ldr	r2, [r2, #56]	; 0x38
     3da:	210f      	movs	r1, #15
     3dc:	438a      	bics	r2, r1
     3de:	639a      	str	r2, [r3, #56]	; 0x38
     3e0:	4b22      	ldr	r3, [pc, #136]	; (46c <_stack_size+0x6c>)
     3e2:	4a22      	ldr	r2, [pc, #136]	; (46c <_stack_size+0x6c>)
     3e4:	6b92      	ldr	r2, [r2, #56]	; 0x38
     3e6:	210c      	movs	r1, #12
     3e8:	430a      	orrs	r2, r1
     3ea:	639a      	str	r2, [r3, #56]	; 0x38
     3ec:	4b1f      	ldr	r3, [pc, #124]	; (46c <_stack_size+0x6c>)
     3ee:	4a1f      	ldr	r2, [pc, #124]	; (46c <_stack_size+0x6c>)
     3f0:	6b92      	ldr	r2, [r2, #56]	; 0x38
     3f2:	2101      	movs	r1, #1
     3f4:	430a      	orrs	r2, r1
     3f6:	639a      	str	r2, [r3, #56]	; 0x38
     3f8:	4b1c      	ldr	r3, [pc, #112]	; (46c <_stack_size+0x6c>)
     3fa:	4a1c      	ldr	r2, [pc, #112]	; (46c <_stack_size+0x6c>)
     3fc:	6b92      	ldr	r2, [r2, #56]	; 0x38
     3fe:	491e      	ldr	r1, [pc, #120]	; (478 <_stack_size+0x78>)
     400:	400a      	ands	r2, r1
     402:	639a      	str	r2, [r3, #56]	; 0x38
     404:	4b19      	ldr	r3, [pc, #100]	; (46c <_stack_size+0x6c>)
     406:	4a19      	ldr	r2, [pc, #100]	; (46c <_stack_size+0x6c>)
     408:	6b92      	ldr	r2, [r2, #56]	; 0x38
     40a:	21c0      	movs	r1, #192	; 0xc0
     40c:	0109      	lsls	r1, r1, #4
     40e:	430a      	orrs	r2, r1
     410:	639a      	str	r2, [r3, #56]	; 0x38
     412:	4b16      	ldr	r3, [pc, #88]	; (46c <_stack_size+0x6c>)
     414:	4a15      	ldr	r2, [pc, #84]	; (46c <_stack_size+0x6c>)
     416:	6b92      	ldr	r2, [r2, #56]	; 0x38
     418:	2180      	movs	r1, #128	; 0x80
     41a:	0049      	lsls	r1, r1, #1
     41c:	430a      	orrs	r2, r1
     41e:	639a      	str	r2, [r3, #56]	; 0x38
     420:	4b12      	ldr	r3, [pc, #72]	; (46c <_stack_size+0x6c>)
     422:	4a12      	ldr	r2, [pc, #72]	; (46c <_stack_size+0x6c>)
     424:	6c12      	ldr	r2, [r2, #64]	; 0x40
     426:	21c8      	movs	r1, #200	; 0xc8
     428:	01c9      	lsls	r1, r1, #7
     42a:	430a      	orrs	r2, r1
     42c:	641a      	str	r2, [r3, #64]	; 0x40
     42e:	4b0f      	ldr	r3, [pc, #60]	; (46c <_stack_size+0x6c>)
     430:	4a0e      	ldr	r2, [pc, #56]	; (46c <_stack_size+0x6c>)
     432:	6c52      	ldr	r2, [r2, #68]	; 0x44
     434:	21c8      	movs	r1, #200	; 0xc8
     436:	01c9      	lsls	r1, r1, #7
     438:	430a      	orrs	r2, r1
     43a:	645a      	str	r2, [r3, #68]	; 0x44
     43c:	4b0b      	ldr	r3, [pc, #44]	; (46c <_stack_size+0x6c>)
     43e:	4a0b      	ldr	r2, [pc, #44]	; (46c <_stack_size+0x6c>)
     440:	6c92      	ldr	r2, [r2, #72]	; 0x48
     442:	21c8      	movs	r1, #200	; 0xc8
     444:	01c9      	lsls	r1, r1, #7
     446:	430a      	orrs	r2, r1
     448:	649a      	str	r2, [r3, #72]	; 0x48
     44a:	4b08      	ldr	r3, [pc, #32]	; (46c <_stack_size+0x6c>)
     44c:	4a07      	ldr	r2, [pc, #28]	; (46c <_stack_size+0x6c>)
     44e:	6d92      	ldr	r2, [r2, #88]	; 0x58
     450:	21f0      	movs	r1, #240	; 0xf0
     452:	0149      	lsls	r1, r1, #5
     454:	430a      	orrs	r2, r1
     456:	659a      	str	r2, [r3, #88]	; 0x58
     458:	4b04      	ldr	r3, [pc, #16]	; (46c <_stack_size+0x6c>)
     45a:	2201      	movs	r2, #1
     45c:	60da      	str	r2, [r3, #12]
     45e:	46c0      	nop			; (mov r8, r8)
     460:	46bd      	mov	sp, r7
     462:	bd80      	pop	{r7, pc}
     464:	40020000 	.word	0x40020000
     468:	ff00ffff 	.word	0xff00ffff
     46c:	40098000 	.word	0x40098000
     470:	000003ff 	.word	0x000003ff
     474:	fffff1ff 	.word	0xfffff1ff
     478:	fffff0ff 	.word	0xfffff0ff

0000047c <adc_init>:
     47c:	b580      	push	{r7, lr}
     47e:	af00      	add	r7, sp, #0
     480:	4b07      	ldr	r3, [pc, #28]	; (4a0 <adc_init+0x24>)
     482:	4a07      	ldr	r2, [pc, #28]	; (4a0 <adc_init+0x24>)
     484:	69d2      	ldr	r2, [r2, #28]
     486:	2180      	movs	r1, #128	; 0x80
     488:	0289      	lsls	r1, r1, #10
     48a:	430a      	orrs	r2, r1
     48c:	61da      	str	r2, [r3, #28]
     48e:	4b04      	ldr	r3, [pc, #16]	; (4a0 <adc_init+0x24>)
     490:	4a04      	ldr	r2, [pc, #16]	; (4a4 <adc_init+0x28>)
     492:	615a      	str	r2, [r3, #20]
     494:	4b04      	ldr	r3, [pc, #16]	; (4a8 <adc_init+0x2c>)
     496:	2245      	movs	r2, #69	; 0x45
     498:	601a      	str	r2, [r3, #0]
     49a:	46c0      	nop			; (mov r8, r8)
     49c:	46bd      	mov	sp, r7
     49e:	bd80      	pop	{r7, pc}
     4a0:	40020000 	.word	0x40020000
     4a4:	00002020 	.word	0x00002020
     4a8:	40088000 	.word	0x40088000

000004ac <dac_init>:
     4ac:	b580      	push	{r7, lr}
     4ae:	af00      	add	r7, sp, #0
     4b0:	4b07      	ldr	r3, [pc, #28]	; (4d0 <dac_init+0x24>)
     4b2:	4a07      	ldr	r2, [pc, #28]	; (4d0 <dac_init+0x24>)
     4b4:	69d2      	ldr	r2, [r2, #28]
     4b6:	2180      	movs	r1, #128	; 0x80
     4b8:	02c9      	lsls	r1, r1, #11
     4ba:	430a      	orrs	r2, r1
     4bc:	61da      	str	r2, [r3, #28]
     4be:	4b05      	ldr	r3, [pc, #20]	; (4d4 <dac_init+0x28>)
     4c0:	4a04      	ldr	r2, [pc, #16]	; (4d4 <dac_init+0x28>)
     4c2:	6812      	ldr	r2, [r2, #0]
     4c4:	2104      	movs	r1, #4
     4c6:	430a      	orrs	r2, r1
     4c8:	601a      	str	r2, [r3, #0]
     4ca:	46c0      	nop			; (mov r8, r8)
     4cc:	46bd      	mov	sp, r7
     4ce:	bd80      	pop	{r7, pc}
     4d0:	40020000 	.word	0x40020000
     4d4:	40090000 	.word	0x40090000

000004d8 <ssi_init>:
     4d8:	b580      	push	{r7, lr}
     4da:	af00      	add	r7, sp, #0
     4dc:	4b0c      	ldr	r3, [pc, #48]	; (510 <ssi_init+0x38>)
     4de:	4a0c      	ldr	r2, [pc, #48]	; (510 <ssi_init+0x38>)
     4e0:	69d2      	ldr	r2, [r2, #28]
     4e2:	2180      	movs	r1, #128	; 0x80
     4e4:	0349      	lsls	r1, r1, #13
     4e6:	430a      	orrs	r2, r1
     4e8:	61da      	str	r2, [r3, #28]
     4ea:	4b09      	ldr	r3, [pc, #36]	; (510 <ssi_init+0x38>)
     4ec:	4a09      	ldr	r2, [pc, #36]	; (514 <ssi_init+0x3c>)
     4ee:	62da      	str	r2, [r3, #44]	; 0x2c
     4f0:	4b09      	ldr	r3, [pc, #36]	; (518 <ssi_init+0x40>)
     4f2:	2200      	movs	r2, #0
     4f4:	605a      	str	r2, [r3, #4]
     4f6:	4b08      	ldr	r3, [pc, #32]	; (518 <ssi_init+0x40>)
     4f8:	2210      	movs	r2, #16
     4fa:	611a      	str	r2, [r3, #16]
     4fc:	4b06      	ldr	r3, [pc, #24]	; (518 <ssi_init+0x40>)
     4fe:	4a07      	ldr	r2, [pc, #28]	; (51c <ssi_init+0x44>)
     500:	601a      	str	r2, [r3, #0]
     502:	4b05      	ldr	r3, [pc, #20]	; (518 <ssi_init+0x40>)
     504:	2202      	movs	r2, #2
     506:	605a      	str	r2, [r3, #4]
     508:	46c0      	nop			; (mov r8, r8)
     50a:	46bd      	mov	sp, r7
     50c:	bd80      	pop	{r7, pc}
     50e:	46c0      	nop			; (mov r8, r8)
     510:	40020000 	.word	0x40020000
     514:	02000a00 	.word	0x02000a00
     518:	400a0000 	.word	0x400a0000
     51c:	0000021b 	.word	0x0000021b

00000520 <b2g>:
     520:	b580      	push	{r7, lr}
     522:	b082      	sub	sp, #8
     524:	af00      	add	r7, sp, #0
     526:	6078      	str	r0, [r7, #4]
     528:	687b      	ldr	r3, [r7, #4]
     52a:	085a      	lsrs	r2, r3, #1
     52c:	687b      	ldr	r3, [r7, #4]
     52e:	4053      	eors	r3, r2
     530:	0018      	movs	r0, r3
     532:	46bd      	mov	sp, r7
     534:	b002      	add	sp, #8
     536:	bd80      	pop	{r7, pc}

00000538 <g2b>:
     538:	b580      	push	{r7, lr}
     53a:	b084      	sub	sp, #16
     53c:	af00      	add	r7, sp, #0
     53e:	6078      	str	r0, [r7, #4]
     540:	2300      	movs	r3, #0
     542:	60fb      	str	r3, [r7, #12]
     544:	2300      	movs	r3, #0
     546:	60fb      	str	r3, [r7, #12]
     548:	e006      	b.n	558 <g2b+0x20>
     54a:	68fa      	ldr	r2, [r7, #12]
     54c:	687b      	ldr	r3, [r7, #4]
     54e:	4053      	eors	r3, r2
     550:	60fb      	str	r3, [r7, #12]
     552:	687b      	ldr	r3, [r7, #4]
     554:	085b      	lsrs	r3, r3, #1
     556:	607b      	str	r3, [r7, #4]
     558:	687b      	ldr	r3, [r7, #4]
     55a:	2b00      	cmp	r3, #0
     55c:	d1f5      	bne.n	54a <g2b+0x12>
     55e:	68fb      	ldr	r3, [r7, #12]
     560:	0018      	movs	r0, r3
     562:	46bd      	mov	sp, r7
     564:	b004      	add	sp, #16
     566:	bd80      	pop	{r7, pc}

00000568 <SystemInit>:
     568:	b580      	push	{r7, lr}
     56a:	af00      	add	r7, sp, #0
     56c:	f7ff fe5a 	bl	224 <ClkConfig>
     570:	f7ff fdbc 	bl	ec <PortConfig>
     574:	f7ff fe90 	bl	298 <TimerConfig>
     578:	f7ff ff80 	bl	47c <adc_init>
     57c:	f7ff ff96 	bl	4ac <dac_init>
     580:	f7ff ffaa 	bl	4d8 <ssi_init>
     584:	46c0      	nop			; (mov r8, r8)
     586:	46bd      	mov	sp, r7
     588:	bd80      	pop	{r7, pc}
     58a:	46c0      	nop			; (mov r8, r8)

0000058c <get_dcA>:
     58c:	b580      	push	{r7, lr}
     58e:	b082      	sub	sp, #8
     590:	af00      	add	r7, sp, #0
     592:	2300      	movs	r3, #0
     594:	603b      	str	r3, [r7, #0]
     596:	2300      	movs	r3, #0
     598:	607b      	str	r3, [r7, #4]
     59a:	e012      	b.n	5c2 <get_dcA+0x36>
     59c:	4b0e      	ldr	r3, [pc, #56]	; (5d8 <get_dcA+0x4c>)
     59e:	2237      	movs	r2, #55	; 0x37
     5a0:	601a      	str	r2, [r3, #0]
     5a2:	46c0      	nop			; (mov r8, r8)
     5a4:	4b0c      	ldr	r3, [pc, #48]	; (5d8 <get_dcA+0x4c>)
     5a6:	6a1b      	ldr	r3, [r3, #32]
     5a8:	2204      	movs	r2, #4
     5aa:	4013      	ands	r3, r2
     5ac:	d0fa      	beq.n	5a4 <get_dcA+0x18>
     5ae:	4b0a      	ldr	r3, [pc, #40]	; (5d8 <get_dcA+0x4c>)
     5b0:	699b      	ldr	r3, [r3, #24]
     5b2:	051b      	lsls	r3, r3, #20
     5b4:	0d1a      	lsrs	r2, r3, #20
     5b6:	683b      	ldr	r3, [r7, #0]
     5b8:	18d3      	adds	r3, r2, r3
     5ba:	603b      	str	r3, [r7, #0]
     5bc:	687b      	ldr	r3, [r7, #4]
     5be:	3301      	adds	r3, #1
     5c0:	607b      	str	r3, [r7, #4]
     5c2:	687b      	ldr	r3, [r7, #4]
     5c4:	4a05      	ldr	r2, [pc, #20]	; (5dc <get_dcA+0x50>)
     5c6:	4293      	cmp	r3, r2
     5c8:	dde8      	ble.n	59c <get_dcA+0x10>
     5ca:	683b      	ldr	r3, [r7, #0]
     5cc:	129b      	asrs	r3, r3, #10
     5ce:	0018      	movs	r0, r3
     5d0:	46bd      	mov	sp, r7
     5d2:	b002      	add	sp, #8
     5d4:	bd80      	pop	{r7, pc}
     5d6:	46c0      	nop			; (mov r8, r8)
     5d8:	40088000 	.word	0x40088000
     5dc:	000003ff 	.word	0x000003ff

000005e0 <get_dcB>:
     5e0:	b580      	push	{r7, lr}
     5e2:	b082      	sub	sp, #8
     5e4:	af00      	add	r7, sp, #0
     5e6:	2300      	movs	r3, #0
     5e8:	603b      	str	r3, [r7, #0]
     5ea:	2300      	movs	r3, #0
     5ec:	607b      	str	r3, [r7, #4]
     5ee:	e012      	b.n	616 <get_dcB+0x36>
     5f0:	4b0e      	ldr	r3, [pc, #56]	; (62c <get_dcB+0x4c>)
     5f2:	2247      	movs	r2, #71	; 0x47
     5f4:	601a      	str	r2, [r3, #0]
     5f6:	46c0      	nop			; (mov r8, r8)
     5f8:	4b0c      	ldr	r3, [pc, #48]	; (62c <get_dcB+0x4c>)
     5fa:	6a1b      	ldr	r3, [r3, #32]
     5fc:	2204      	movs	r2, #4
     5fe:	4013      	ands	r3, r2
     600:	d0fa      	beq.n	5f8 <get_dcB+0x18>
     602:	4b0a      	ldr	r3, [pc, #40]	; (62c <get_dcB+0x4c>)
     604:	699b      	ldr	r3, [r3, #24]
     606:	051b      	lsls	r3, r3, #20
     608:	0d1a      	lsrs	r2, r3, #20
     60a:	683b      	ldr	r3, [r7, #0]
     60c:	18d3      	adds	r3, r2, r3
     60e:	603b      	str	r3, [r7, #0]
     610:	687b      	ldr	r3, [r7, #4]
     612:	3301      	adds	r3, #1
     614:	607b      	str	r3, [r7, #4]
     616:	687b      	ldr	r3, [r7, #4]
     618:	4a05      	ldr	r2, [pc, #20]	; (630 <get_dcB+0x50>)
     61a:	4293      	cmp	r3, r2
     61c:	dde8      	ble.n	5f0 <get_dcB+0x10>
     61e:	683b      	ldr	r3, [r7, #0]
     620:	129b      	asrs	r3, r3, #10
     622:	0018      	movs	r0, r3
     624:	46bd      	mov	sp, r7
     626:	b002      	add	sp, #8
     628:	bd80      	pop	{r7, pc}
     62a:	46c0      	nop			; (mov r8, r8)
     62c:	40088000 	.word	0x40088000
     630:	000003ff 	.word	0x000003ff

00000634 <wait_timer_ticks>:
     634:	b580      	push	{r7, lr}
     636:	b084      	sub	sp, #16
     638:	af00      	add	r7, sp, #0
     63a:	6078      	str	r0, [r7, #4]
     63c:	2300      	movs	r3, #0
     63e:	60fb      	str	r3, [r7, #12]
     640:	e00b      	b.n	65a <wait_timer_ticks+0x26>
     642:	46c0      	nop			; (mov r8, r8)
     644:	4b09      	ldr	r3, [pc, #36]	; (66c <wait_timer_ticks+0x38>)
     646:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     648:	2202      	movs	r2, #2
     64a:	4013      	ands	r3, r2
     64c:	d0fa      	beq.n	644 <wait_timer_ticks+0x10>
     64e:	4b07      	ldr	r3, [pc, #28]	; (66c <wait_timer_ticks+0x38>)
     650:	2200      	movs	r2, #0
     652:	655a      	str	r2, [r3, #84]	; 0x54
     654:	68fb      	ldr	r3, [r7, #12]
     656:	3301      	adds	r3, #1
     658:	60fb      	str	r3, [r7, #12]
     65a:	68fa      	ldr	r2, [r7, #12]
     65c:	687b      	ldr	r3, [r7, #4]
     65e:	429a      	cmp	r2, r3
     660:	dbef      	blt.n	642 <wait_timer_ticks+0xe>
     662:	46c0      	nop			; (mov r8, r8)
     664:	46bd      	mov	sp, r7
     666:	b004      	add	sp, #16
     668:	bd80      	pop	{r7, pc}
     66a:	46c0      	nop			; (mov r8, r8)
     66c:	40098000 	.word	0x40098000

00000670 <get_phase>:
     670:	b580      	push	{r7, lr}
     672:	af00      	add	r7, sp, #0
     674:	4b09      	ldr	r3, [pc, #36]	; (69c <get_phase+0x2c>)
     676:	4a0a      	ldr	r2, [pc, #40]	; (6a0 <get_phase+0x30>)
     678:	609a      	str	r2, [r3, #8]
     67a:	46c0      	nop			; (mov r8, r8)
     67c:	4b07      	ldr	r3, [pc, #28]	; (69c <get_phase+0x2c>)
     67e:	68db      	ldr	r3, [r3, #12]
     680:	2204      	movs	r2, #4
     682:	4013      	ands	r3, r2
     684:	d0fa      	beq.n	67c <get_phase+0xc>
     686:	4b05      	ldr	r3, [pc, #20]	; (69c <get_phase+0x2c>)
     688:	689b      	ldr	r3, [r3, #8]
     68a:	051b      	lsls	r3, r3, #20
     68c:	0d1b      	lsrs	r3, r3, #20
     68e:	0018      	movs	r0, r3
     690:	f7ff ff52 	bl	538 <g2b>
     694:	0003      	movs	r3, r0
     696:	0018      	movs	r0, r3
     698:	46bd      	mov	sp, r7
     69a:	bd80      	pop	{r7, pc}
     69c:	400a0000 	.word	0x400a0000
     6a0:	00000555 	.word	0x00000555

000006a4 <main>:
     6a4:	b580      	push	{r7, lr}
     6a6:	b0a8      	sub	sp, #160	; 0xa0
     6a8:	af00      	add	r7, sp, #0
     6aa:	2300      	movs	r3, #0
     6ac:	2290      	movs	r2, #144	; 0x90
     6ae:	18ba      	adds	r2, r7, r2
     6b0:	6013      	str	r3, [r2, #0]
     6b2:	2300      	movs	r3, #0
     6b4:	228c      	movs	r2, #140	; 0x8c
     6b6:	18ba      	adds	r2, r7, r2
     6b8:	6013      	str	r3, [r2, #0]
     6ba:	2300      	movs	r3, #0
     6bc:	229c      	movs	r2, #156	; 0x9c
     6be:	18ba      	adds	r2, r7, r2
     6c0:	6013      	str	r3, [r2, #0]
     6c2:	2300      	movs	r3, #0
     6c4:	2298      	movs	r2, #152	; 0x98
     6c6:	18ba      	adds	r2, r7, r2
     6c8:	6013      	str	r3, [r2, #0]
     6ca:	23fa      	movs	r3, #250	; 0xfa
     6cc:	009b      	lsls	r3, r3, #2
     6ce:	2288      	movs	r2, #136	; 0x88
     6d0:	18ba      	adds	r2, r7, r2
     6d2:	6013      	str	r3, [r2, #0]
     6d4:	2300      	movs	r3, #0
     6d6:	603b      	str	r3, [r7, #0]
     6d8:	2300      	movs	r3, #0
     6da:	2284      	movs	r2, #132	; 0x84
     6dc:	18ba      	adds	r2, r7, r2
     6de:	6013      	str	r3, [r2, #0]
     6e0:	2300      	movs	r3, #0
     6e2:	2280      	movs	r2, #128	; 0x80
     6e4:	18ba      	adds	r2, r7, r2
     6e6:	6013      	str	r3, [r2, #0]
     6e8:	2300      	movs	r3, #0
     6ea:	67fb      	str	r3, [r7, #124]	; 0x7c
     6ec:	f7ff ff3c 	bl	568 <SystemInit>
     6f0:	23fa      	movs	r3, #250	; 0xfa
     6f2:	009b      	lsls	r3, r3, #2
     6f4:	0018      	movs	r0, r3
     6f6:	f7ff ff9d 	bl	634 <wait_timer_ticks>
     6fa:	f7ff ff47 	bl	58c <get_dcA>
     6fe:	0003      	movs	r3, r0
     700:	67bb      	str	r3, [r7, #120]	; 0x78
     702:	f7ff ff6d 	bl	5e0 <get_dcB>
     706:	0003      	movs	r3, r0
     708:	677b      	str	r3, [r7, #116]	; 0x74
     70a:	2334      	movs	r3, #52	; 0x34
     70c:	18fb      	adds	r3, r7, r3
     70e:	2264      	movs	r2, #100	; 0x64
     710:	601a      	str	r2, [r3, #0]
     712:	2334      	movs	r3, #52	; 0x34
     714:	18fb      	adds	r3, r7, r3
     716:	22c8      	movs	r2, #200	; 0xc8
     718:	605a      	str	r2, [r3, #4]
     71a:	2334      	movs	r3, #52	; 0x34
     71c:	18fb      	adds	r3, r7, r3
     71e:	2200      	movs	r2, #0
     720:	609a      	str	r2, [r3, #8]
     722:	2334      	movs	r3, #52	; 0x34
     724:	18fb      	adds	r3, r7, r3
     726:	2200      	movs	r2, #0
     728:	60da      	str	r2, [r3, #12]
     72a:	2324      	movs	r3, #36	; 0x24
     72c:	18fb      	adds	r3, r7, r3
     72e:	2264      	movs	r2, #100	; 0x64
     730:	601a      	str	r2, [r3, #0]
     732:	2324      	movs	r3, #36	; 0x24
     734:	18fb      	adds	r3, r7, r3
     736:	22c8      	movs	r2, #200	; 0xc8
     738:	605a      	str	r2, [r3, #4]
     73a:	2324      	movs	r3, #36	; 0x24
     73c:	18fb      	adds	r3, r7, r3
     73e:	2200      	movs	r2, #0
     740:	609a      	str	r2, [r3, #8]
     742:	2324      	movs	r3, #36	; 0x24
     744:	18fb      	adds	r3, r7, r3
     746:	2200      	movs	r2, #0
     748:	60da      	str	r2, [r3, #12]
     74a:	2314      	movs	r3, #20
     74c:	18fb      	adds	r3, r7, r3
     74e:	2200      	movs	r2, #0
     750:	601a      	str	r2, [r3, #0]
     752:	2314      	movs	r3, #20
     754:	18fb      	adds	r3, r7, r3
     756:	22fa      	movs	r2, #250	; 0xfa
     758:	00d2      	lsls	r2, r2, #3
     75a:	605a      	str	r2, [r3, #4]
     75c:	2314      	movs	r3, #20
     75e:	18fb      	adds	r3, r7, r3
     760:	2200      	movs	r2, #0
     762:	609a      	str	r2, [r3, #8]
     764:	2314      	movs	r3, #20
     766:	18fb      	adds	r3, r7, r3
     768:	2200      	movs	r2, #0
     76a:	60da      	str	r2, [r3, #12]
     76c:	1d3b      	adds	r3, r7, #4
     76e:	2200      	movs	r2, #0
     770:	601a      	str	r2, [r3, #0]
     772:	1d3b      	adds	r3, r7, #4
     774:	4abd      	ldr	r2, [pc, #756]	; (a6c <main+0x3c8>)
     776:	605a      	str	r2, [r3, #4]
     778:	1d3b      	adds	r3, r7, #4
     77a:	2200      	movs	r2, #0
     77c:	609a      	str	r2, [r3, #8]
     77e:	1d3b      	adds	r3, r7, #4
     780:	2200      	movs	r2, #0
     782:	60da      	str	r2, [r3, #12]
     784:	4bba      	ldr	r3, [pc, #744]	; (a70 <main+0x3cc>)
     786:	2200      	movs	r2, #0
     788:	601a      	str	r2, [r3, #0]
     78a:	4bba      	ldr	r3, [pc, #744]	; (a74 <main+0x3d0>)
     78c:	2257      	movs	r2, #87	; 0x57
     78e:	601a      	str	r2, [r3, #0]
     790:	46c0      	nop			; (mov r8, r8)
     792:	4bb8      	ldr	r3, [pc, #736]	; (a74 <main+0x3d0>)
     794:	6a1b      	ldr	r3, [r3, #32]
     796:	2204      	movs	r2, #4
     798:	4013      	ands	r3, r2
     79a:	d0fa      	beq.n	792 <main+0xee>
     79c:	4bb5      	ldr	r3, [pc, #724]	; (a74 <main+0x3d0>)
     79e:	699b      	ldr	r3, [r3, #24]
     7a0:	051b      	lsls	r3, r3, #20
     7a2:	0d1b      	lsrs	r3, r3, #20
     7a4:	2280      	movs	r2, #128	; 0x80
     7a6:	18ba      	adds	r2, r7, r2
     7a8:	6013      	str	r3, [r2, #0]
     7aa:	4bb3      	ldr	r3, [pc, #716]	; (a78 <main+0x3d4>)
     7ac:	2280      	movs	r2, #128	; 0x80
     7ae:	18ba      	adds	r2, r7, r2
     7b0:	6812      	ldr	r2, [r2, #0]
     7b2:	601a      	str	r2, [r3, #0]
     7b4:	f7ff ff5c 	bl	670 <get_phase>
     7b8:	0003      	movs	r3, r0
     7ba:	67fb      	str	r3, [r7, #124]	; 0x7c
     7bc:	4baf      	ldr	r3, [pc, #700]	; (a7c <main+0x3d8>)
     7be:	4aaf      	ldr	r2, [pc, #700]	; (a7c <main+0x3d8>)
     7c0:	6812      	ldr	r2, [r2, #0]
     7c2:	2120      	movs	r1, #32
     7c4:	430a      	orrs	r2, r1
     7c6:	601a      	str	r2, [r3, #0]
     7c8:	4bad      	ldr	r3, [pc, #692]	; (a80 <main+0x3dc>)
     7ca:	4aae      	ldr	r2, [pc, #696]	; (a84 <main+0x3e0>)
     7cc:	609a      	str	r2, [r3, #8]
     7ce:	4ba9      	ldr	r3, [pc, #676]	; (a74 <main+0x3d0>)
     7d0:	2207      	movs	r2, #7
     7d2:	601a      	str	r2, [r3, #0]
     7d4:	46c0      	nop			; (mov r8, r8)
     7d6:	4ba7      	ldr	r3, [pc, #668]	; (a74 <main+0x3d0>)
     7d8:	6a1b      	ldr	r3, [r3, #32]
     7da:	2204      	movs	r2, #4
     7dc:	4013      	ands	r3, r2
     7de:	d0fa      	beq.n	7d6 <main+0x132>
     7e0:	4ba4      	ldr	r3, [pc, #656]	; (a74 <main+0x3d0>)
     7e2:	699b      	ldr	r3, [r3, #24]
     7e4:	051b      	lsls	r3, r3, #20
     7e6:	0d1a      	lsrs	r2, r3, #20
     7e8:	0013      	movs	r3, r2
     7ea:	009b      	lsls	r3, r3, #2
     7ec:	189b      	adds	r3, r3, r2
     7ee:	0018      	movs	r0, r3
     7f0:	f000 fd5a 	bl	12a8 <mfilter>
     7f4:	0003      	movs	r3, r0
     7f6:	2290      	movs	r2, #144	; 0x90
     7f8:	18ba      	adds	r2, r7, r2
     7fa:	6013      	str	r3, [r2, #0]
     7fc:	2390      	movs	r3, #144	; 0x90
     7fe:	18fb      	adds	r3, r7, r3
     800:	681b      	ldr	r3, [r3, #0]
     802:	10da      	asrs	r2, r3, #3
     804:	2390      	movs	r3, #144	; 0x90
     806:	18fb      	adds	r3, r7, r3
     808:	681b      	ldr	r3, [r3, #0]
     80a:	18d3      	adds	r3, r2, r3
     80c:	10db      	asrs	r3, r3, #3
     80e:	22af      	movs	r2, #175	; 0xaf
     810:	0092      	lsls	r2, r2, #2
     812:	189a      	adds	r2, r3, r2
     814:	4b98      	ldr	r3, [pc, #608]	; (a78 <main+0x3d4>)
     816:	601a      	str	r2, [r3, #0]
     818:	4b96      	ldr	r3, [pc, #600]	; (a74 <main+0x3d0>)
     81a:	2237      	movs	r2, #55	; 0x37
     81c:	601a      	str	r2, [r3, #0]
     81e:	46c0      	nop			; (mov r8, r8)
     820:	4b94      	ldr	r3, [pc, #592]	; (a74 <main+0x3d0>)
     822:	6a1b      	ldr	r3, [r3, #32]
     824:	2204      	movs	r2, #4
     826:	4013      	ands	r3, r2
     828:	d0fa      	beq.n	820 <main+0x17c>
     82a:	4b92      	ldr	r3, [pc, #584]	; (a74 <main+0x3d0>)
     82c:	699b      	ldr	r3, [r3, #24]
     82e:	051b      	lsls	r3, r3, #20
     830:	0d1a      	lsrs	r2, r3, #20
     832:	6fbb      	ldr	r3, [r7, #120]	; 0x78
     834:	1ad3      	subs	r3, r2, r3
     836:	673b      	str	r3, [r7, #112]	; 0x70
     838:	4b8e      	ldr	r3, [pc, #568]	; (a74 <main+0x3d0>)
     83a:	2247      	movs	r2, #71	; 0x47
     83c:	601a      	str	r2, [r3, #0]
     83e:	46c0      	nop			; (mov r8, r8)
     840:	4b8c      	ldr	r3, [pc, #560]	; (a74 <main+0x3d0>)
     842:	6a1b      	ldr	r3, [r3, #32]
     844:	2204      	movs	r2, #4
     846:	4013      	ands	r3, r2
     848:	d0fa      	beq.n	840 <main+0x19c>
     84a:	4b8a      	ldr	r3, [pc, #552]	; (a74 <main+0x3d0>)
     84c:	699b      	ldr	r3, [r3, #24]
     84e:	051b      	lsls	r3, r3, #20
     850:	0d1a      	lsrs	r2, r3, #20
     852:	6f7b      	ldr	r3, [r7, #116]	; 0x74
     854:	1ad3      	subs	r3, r2, r3
     856:	66fb      	str	r3, [r7, #108]	; 0x6c
     858:	6f3b      	ldr	r3, [r7, #112]	; 0x70
     85a:	425a      	negs	r2, r3
     85c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
     85e:	1ad3      	subs	r3, r2, r3
     860:	66bb      	str	r3, [r7, #104]	; 0x68
     862:	4b84      	ldr	r3, [pc, #528]	; (a74 <main+0x3d0>)
     864:	2257      	movs	r2, #87	; 0x57
     866:	601a      	str	r2, [r3, #0]
     868:	46c0      	nop			; (mov r8, r8)
     86a:	4b82      	ldr	r3, [pc, #520]	; (a74 <main+0x3d0>)
     86c:	6a1b      	ldr	r3, [r3, #32]
     86e:	2204      	movs	r2, #4
     870:	4013      	ands	r3, r2
     872:	d0fa      	beq.n	86a <main+0x1c6>
     874:	4b7f      	ldr	r3, [pc, #508]	; (a74 <main+0x3d0>)
     876:	699b      	ldr	r3, [r3, #24]
     878:	051b      	lsls	r3, r3, #20
     87a:	0d1b      	lsrs	r3, r3, #20
     87c:	2284      	movs	r2, #132	; 0x84
     87e:	18ba      	adds	r2, r7, r2
     880:	6013      	str	r3, [r2, #0]
     882:	46c0      	nop			; (mov r8, r8)
     884:	4b80      	ldr	r3, [pc, #512]	; (a88 <main+0x3e4>)
     886:	6d5b      	ldr	r3, [r3, #84]	; 0x54
     888:	2202      	movs	r2, #2
     88a:	4013      	ands	r3, r2
     88c:	d0fa      	beq.n	884 <main+0x1e0>
     88e:	4b7e      	ldr	r3, [pc, #504]	; (a88 <main+0x3e4>)
     890:	2200      	movs	r2, #0
     892:	655a      	str	r2, [r3, #84]	; 0x54
     894:	4b79      	ldr	r3, [pc, #484]	; (a7c <main+0x3d8>)
     896:	4a79      	ldr	r2, [pc, #484]	; (a7c <main+0x3d8>)
     898:	6812      	ldr	r2, [r2, #0]
     89a:	2120      	movs	r1, #32
     89c:	438a      	bics	r2, r1
     89e:	601a      	str	r2, [r3, #0]
     8a0:	4b77      	ldr	r3, [pc, #476]	; (a80 <main+0x3dc>)
     8a2:	689b      	ldr	r3, [r3, #8]
     8a4:	051b      	lsls	r3, r3, #20
     8a6:	0d1b      	lsrs	r3, r3, #20
     8a8:	0018      	movs	r0, r3
     8aa:	f7ff fe45 	bl	538 <g2b>
     8ae:	0003      	movs	r3, r0
     8b0:	667b      	str	r3, [r7, #100]	; 0x64
     8b2:	2398      	movs	r3, #152	; 0x98
     8b4:	18fb      	adds	r3, r7, r3
     8b6:	681b      	ldr	r3, [r3, #0]
     8b8:	3301      	adds	r3, #1
     8ba:	2298      	movs	r2, #152	; 0x98
     8bc:	18ba      	adds	r2, r7, r2
     8be:	6013      	str	r3, [r2, #0]
     8c0:	2398      	movs	r3, #152	; 0x98
     8c2:	18fb      	adds	r3, r7, r3
     8c4:	681b      	ldr	r3, [r3, #0]
     8c6:	2207      	movs	r2, #7
     8c8:	4013      	ands	r3, r2
     8ca:	d155      	bne.n	978 <main+0x2d4>
     8cc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     8ce:	003a      	movs	r2, r7
     8d0:	0011      	movs	r1, r2
     8d2:	0018      	movs	r0, r3
     8d4:	f000 fcc2 	bl	125c <get_speed>
     8d8:	0003      	movs	r3, r0
     8da:	663b      	str	r3, [r7, #96]	; 0x60
     8dc:	4b64      	ldr	r3, [pc, #400]	; (a70 <main+0x3cc>)
     8de:	681a      	ldr	r2, [r3, #0]
     8e0:	683b      	ldr	r3, [r7, #0]
     8e2:	1ad1      	subs	r1, r2, r3
     8e4:	1d3b      	adds	r3, r7, #4
     8e6:	2200      	movs	r2, #0
     8e8:	0018      	movs	r0, r3
     8ea:	f000 f8e7 	bl	abc <update>
     8ee:	1d3b      	adds	r3, r7, #4
     8f0:	68db      	ldr	r3, [r3, #12]
     8f2:	129b      	asrs	r3, r3, #10
     8f4:	2288      	movs	r2, #136	; 0x88
     8f6:	18ba      	adds	r2, r7, r2
     8f8:	6013      	str	r3, [r2, #0]
     8fa:	2388      	movs	r3, #136	; 0x88
     8fc:	18fb      	adds	r3, r7, r3
     8fe:	681a      	ldr	r2, [r3, #0]
     900:	6e3b      	ldr	r3, [r7, #96]	; 0x60
     902:	1ad1      	subs	r1, r2, r3
     904:	2314      	movs	r3, #20
     906:	18fb      	adds	r3, r7, r3
     908:	2200      	movs	r2, #0
     90a:	0018      	movs	r0, r3
     90c:	f000 f8d6 	bl	abc <update>
     910:	2314      	movs	r3, #20
     912:	18fb      	adds	r3, r7, r3
     914:	68db      	ldr	r3, [r3, #12]
     916:	129b      	asrs	r3, r3, #10
     918:	2294      	movs	r2, #148	; 0x94
     91a:	18ba      	adds	r2, r7, r2
     91c:	6013      	str	r3, [r2, #0]
     91e:	2394      	movs	r3, #148	; 0x94
     920:	18fb      	adds	r3, r7, r3
     922:	681a      	ldr	r2, [r3, #0]
     924:	23fa      	movs	r3, #250	; 0xfa
     926:	00db      	lsls	r3, r3, #3
     928:	429a      	cmp	r2, r3
     92a:	dd04      	ble.n	936 <main+0x292>
     92c:	23fa      	movs	r3, #250	; 0xfa
     92e:	00db      	lsls	r3, r3, #3
     930:	2294      	movs	r2, #148	; 0x94
     932:	18ba      	adds	r2, r7, r2
     934:	6013      	str	r3, [r2, #0]
     936:	2394      	movs	r3, #148	; 0x94
     938:	18fb      	adds	r3, r7, r3
     93a:	681b      	ldr	r3, [r3, #0]
     93c:	4a53      	ldr	r2, [pc, #332]	; (a8c <main+0x3e8>)
     93e:	4293      	cmp	r3, r2
     940:	da03      	bge.n	94a <main+0x2a6>
     942:	4b52      	ldr	r3, [pc, #328]	; (a8c <main+0x3e8>)
     944:	2294      	movs	r2, #148	; 0x94
     946:	18ba      	adds	r2, r7, r2
     948:	6013      	str	r3, [r2, #0]
     94a:	4b51      	ldr	r3, [pc, #324]	; (a90 <main+0x3ec>)
     94c:	683a      	ldr	r2, [r7, #0]
     94e:	6ff9      	ldr	r1, [r7, #124]	; 0x7c
     950:	1a8a      	subs	r2, r1, r2
     952:	1052      	asrs	r2, r2, #1
     954:	2180      	movs	r1, #128	; 0x80
     956:	0109      	lsls	r1, r1, #4
     958:	468c      	mov	ip, r1
     95a:	4462      	add	r2, ip
     95c:	605a      	str	r2, [r3, #4]
     95e:	4b46      	ldr	r3, [pc, #280]	; (a78 <main+0x3d4>)
     960:	681a      	ldr	r2, [r3, #0]
     962:	2380      	movs	r3, #128	; 0x80
     964:	18fb      	adds	r3, r7, r3
     966:	681b      	ldr	r3, [r3, #0]
     968:	1ad2      	subs	r2, r2, r3
     96a:	0013      	movs	r3, r2
     96c:	00db      	lsls	r3, r3, #3
     96e:	1a9b      	subs	r3, r3, r2
     970:	00da      	lsls	r2, r3, #3
     972:	1ad2      	subs	r2, r2, r3
     974:	4b3e      	ldr	r3, [pc, #248]	; (a70 <main+0x3cc>)
     976:	601a      	str	r2, [r3, #0]
     978:	6e7b      	ldr	r3, [r7, #100]	; 0x64
     97a:	059b      	lsls	r3, r3, #22
     97c:	0d9b      	lsrs	r3, r3, #22
     97e:	228c      	movs	r2, #140	; 0x8c
     980:	18ba      	adds	r2, r7, r2
     982:	6013      	str	r3, [r2, #0]
     984:	238c      	movs	r3, #140	; 0x8c
     986:	18fb      	adds	r3, r7, r3
     988:	681b      	ldr	r3, [r3, #0]
     98a:	33fa      	adds	r3, #250	; 0xfa
     98c:	059b      	lsls	r3, r3, #22
     98e:	0d9b      	lsrs	r3, r3, #22
     990:	228c      	movs	r2, #140	; 0x8c
     992:	18ba      	adds	r2, r7, r2
     994:	6013      	str	r3, [r2, #0]
     996:	2344      	movs	r3, #68	; 0x44
     998:	18fb      	adds	r3, r7, r3
     99a:	6f3a      	ldr	r2, [r7, #112]	; 0x70
     99c:	601a      	str	r2, [r3, #0]
     99e:	2344      	movs	r3, #68	; 0x44
     9a0:	18fb      	adds	r3, r7, r3
     9a2:	6eba      	ldr	r2, [r7, #104]	; 0x68
     9a4:	605a      	str	r2, [r3, #4]
     9a6:	2344      	movs	r3, #68	; 0x44
     9a8:	18fb      	adds	r3, r7, r3
     9aa:	6efa      	ldr	r2, [r7, #108]	; 0x6c
     9ac:	609a      	str	r2, [r3, #8]
     9ae:	238c      	movs	r3, #140	; 0x8c
     9b0:	18fb      	adds	r3, r7, r3
     9b2:	681a      	ldr	r2, [r3, #0]
     9b4:	2350      	movs	r3, #80	; 0x50
     9b6:	18f9      	adds	r1, r7, r3
     9b8:	2344      	movs	r3, #68	; 0x44
     9ba:	18fb      	adds	r3, r7, r3
     9bc:	0018      	movs	r0, r3
     9be:	f000 f8a3 	bl	b08 <abc_to_dq>
     9c2:	2350      	movs	r3, #80	; 0x50
     9c4:	18fb      	adds	r3, r7, r3
     9c6:	681b      	ldr	r3, [r3, #0]
     9c8:	425b      	negs	r3, r3
     9ca:	65fb      	str	r3, [r7, #92]	; 0x5c
     9cc:	2350      	movs	r3, #80	; 0x50
     9ce:	18fb      	adds	r3, r7, r3
     9d0:	685b      	ldr	r3, [r3, #4]
     9d2:	2294      	movs	r2, #148	; 0x94
     9d4:	18ba      	adds	r2, r7, r2
     9d6:	6812      	ldr	r2, [r2, #0]
     9d8:	1ad3      	subs	r3, r2, r3
     9da:	65bb      	str	r3, [r7, #88]	; 0x58
     9dc:	239c      	movs	r3, #156	; 0x9c
     9de:	18fb      	adds	r3, r7, r3
     9e0:	681a      	ldr	r2, [r3, #0]
     9e2:	6df9      	ldr	r1, [r7, #92]	; 0x5c
     9e4:	2334      	movs	r3, #52	; 0x34
     9e6:	18fb      	adds	r3, r7, r3
     9e8:	0018      	movs	r0, r3
     9ea:	f000 f867 	bl	abc <update>
     9ee:	239c      	movs	r3, #156	; 0x9c
     9f0:	18fb      	adds	r3, r7, r3
     9f2:	681a      	ldr	r2, [r3, #0]
     9f4:	6db9      	ldr	r1, [r7, #88]	; 0x58
     9f6:	2324      	movs	r3, #36	; 0x24
     9f8:	18fb      	adds	r3, r7, r3
     9fa:	0018      	movs	r0, r3
     9fc:	f000 f85e 	bl	abc <update>
     a00:	2334      	movs	r3, #52	; 0x34
     a02:	18fb      	adds	r3, r7, r3
     a04:	68da      	ldr	r2, [r3, #12]
     a06:	2350      	movs	r3, #80	; 0x50
     a08:	18fb      	adds	r3, r7, r3
     a0a:	601a      	str	r2, [r3, #0]
     a0c:	2324      	movs	r3, #36	; 0x24
     a0e:	18fb      	adds	r3, r7, r3
     a10:	68da      	ldr	r2, [r3, #12]
     a12:	2350      	movs	r3, #80	; 0x50
     a14:	18fb      	adds	r3, r7, r3
     a16:	605a      	str	r2, [r3, #4]
     a18:	238c      	movs	r3, #140	; 0x8c
     a1a:	18fb      	adds	r3, r7, r3
     a1c:	681a      	ldr	r2, [r3, #0]
     a1e:	2350      	movs	r3, #80	; 0x50
     a20:	18f9      	adds	r1, r7, r3
     a22:	2344      	movs	r3, #68	; 0x44
     a24:	18fb      	adds	r3, r7, r3
     a26:	0018      	movs	r0, r3
     a28:	f000 fa9a 	bl	f60 <svpwm>
     a2c:	0003      	movs	r3, r0
     a2e:	229c      	movs	r2, #156	; 0x9c
     a30:	18ba      	adds	r2, r7, r2
     a32:	6013      	str	r3, [r2, #0]
     a34:	4a14      	ldr	r2, [pc, #80]	; (a88 <main+0x3e4>)
     a36:	2344      	movs	r3, #68	; 0x44
     a38:	18fb      	adds	r3, r7, r3
     a3a:	681b      	ldr	r3, [r3, #0]
     a3c:	2180      	movs	r1, #128	; 0x80
     a3e:	0089      	lsls	r1, r1, #2
     a40:	468c      	mov	ip, r1
     a42:	4463      	add	r3, ip
     a44:	6113      	str	r3, [r2, #16]
     a46:	4a10      	ldr	r2, [pc, #64]	; (a88 <main+0x3e4>)
     a48:	2344      	movs	r3, #68	; 0x44
     a4a:	18fb      	adds	r3, r7, r3
     a4c:	685b      	ldr	r3, [r3, #4]
     a4e:	2180      	movs	r1, #128	; 0x80
     a50:	0089      	lsls	r1, r1, #2
     a52:	468c      	mov	ip, r1
     a54:	4463      	add	r3, ip
     a56:	6153      	str	r3, [r2, #20]
     a58:	4a0b      	ldr	r2, [pc, #44]	; (a88 <main+0x3e4>)
     a5a:	2344      	movs	r3, #68	; 0x44
     a5c:	18fb      	adds	r3, r7, r3
     a5e:	689b      	ldr	r3, [r3, #8]
     a60:	2180      	movs	r1, #128	; 0x80
     a62:	0089      	lsls	r1, r1, #2
     a64:	468c      	mov	ip, r1
     a66:	4463      	add	r3, ip
     a68:	6193      	str	r3, [r2, #24]
     a6a:	e6a7      	b.n	7bc <main+0x118>
     a6c:	00000bb8 	.word	0x00000bb8
     a70:	20000004 	.word	0x20000004
     a74:	40088000 	.word	0x40088000
     a78:	20000008 	.word	0x20000008
     a7c:	400b8000 	.word	0x400b8000
     a80:	400a0000 	.word	0x400a0000
     a84:	00000555 	.word	0x00000555
     a88:	40098000 	.word	0x40098000
     a8c:	fffff830 	.word	0xfffff830
     a90:	40090000 	.word	0x40090000

00000a94 <mycos>:
     a94:	4b02      	ldr	r3, [pc, #8]	; (aa0 <mycos+0xc>)
     a96:	0580      	lsls	r0, r0, #22
     a98:	0d00      	lsrs	r0, r0, #20
     a9a:	58c0      	ldr	r0, [r0, r3]
     a9c:	4770      	bx	lr
     a9e:	46c0      	nop			; (mov r8, r8)
     aa0:	00001338 	.word	0x00001338

00000aa4 <mysin>:
     aa4:	23c0      	movs	r3, #192	; 0xc0
     aa6:	009b      	lsls	r3, r3, #2
     aa8:	469c      	mov	ip, r3
     aaa:	4460      	add	r0, ip
     aac:	4b02      	ldr	r3, [pc, #8]	; (ab8 <mysin+0x14>)
     aae:	0580      	lsls	r0, r0, #22
     ab0:	0d00      	lsrs	r0, r0, #20
     ab2:	58c0      	ldr	r0, [r0, r3]
     ab4:	4770      	bx	lr
     ab6:	46c0      	nop			; (mov r8, r8)
     ab8:	00001338 	.word	0x00001338

00000abc <update>:
     abc:	b510      	push	{r4, lr}
     abe:	6804      	ldr	r4, [r0, #0]
     ac0:	6883      	ldr	r3, [r0, #8]
     ac2:	434c      	muls	r4, r1
     ac4:	2a00      	cmp	r2, #0
     ac6:	d004      	beq.n	ad2 <update+0x16>
     ac8:	2b00      	cmp	r3, #0
     aca:	dd09      	ble.n	ae0 <update+0x24>
     acc:	2c00      	cmp	r4, #0
     ace:	dd00      	ble.n	ad2 <update+0x16>
     ad0:	2400      	movs	r4, #0
     ad2:	6842      	ldr	r2, [r0, #4]
     ad4:	18e3      	adds	r3, r4, r3
     ad6:	4351      	muls	r1, r2
     ad8:	18c9      	adds	r1, r1, r3
     ada:	60c1      	str	r1, [r0, #12]
     adc:	6083      	str	r3, [r0, #8]
     ade:	bd10      	pop	{r4, pc}
     ae0:	2b00      	cmp	r3, #0
     ae2:	d0f6      	beq.n	ad2 <update+0x16>
     ae4:	43e2      	mvns	r2, r4
     ae6:	17d2      	asrs	r2, r2, #31
     ae8:	4014      	ands	r4, r2
     aea:	e7f2      	b.n	ad2 <update+0x16>

00000aec <dot3>:
     aec:	6803      	ldr	r3, [r0, #0]
     aee:	680a      	ldr	r2, [r1, #0]
     af0:	b510      	push	{r4, lr}
     af2:	435a      	muls	r2, r3
     af4:	6844      	ldr	r4, [r0, #4]
     af6:	684b      	ldr	r3, [r1, #4]
     af8:	6880      	ldr	r0, [r0, #8]
     afa:	4363      	muls	r3, r4
     afc:	18d2      	adds	r2, r2, r3
     afe:	688b      	ldr	r3, [r1, #8]
     b00:	4343      	muls	r3, r0
     b02:	18d0      	adds	r0, r2, r3
     b04:	bd10      	pop	{r4, pc}
     b06:	46c0      	nop			; (mov r8, r8)

00000b08 <abc_to_dq>:
     b08:	23c0      	movs	r3, #192	; 0xc0
     b0a:	b5f0      	push	{r4, r5, r6, r7, lr}
     b0c:	4647      	mov	r7, r8
     b0e:	009b      	lsls	r3, r3, #2
     b10:	18d3      	adds	r3, r2, r3
     b12:	4d1b      	ldr	r5, [pc, #108]	; (b80 <abc_to_dq+0x78>)
     b14:	059b      	lsls	r3, r3, #22
     b16:	0d1b      	lsrs	r3, r3, #20
     b18:	595b      	ldr	r3, [r3, r5]
     b1a:	b480      	push	{r7}
     b1c:	4698      	mov	r8, r3
     b1e:	4b19      	ldr	r3, [pc, #100]	; (b84 <abc_to_dq+0x7c>)
     b20:	18d4      	adds	r4, r2, r3
     b22:	05a4      	lsls	r4, r4, #22
     b24:	4b18      	ldr	r3, [pc, #96]	; (b88 <abc_to_dq+0x80>)
     b26:	0d24      	lsrs	r4, r4, #20
     b28:	5967      	ldr	r7, [r4, r5]
     b2a:	18d4      	adds	r4, r2, r3
     b2c:	05a4      	lsls	r4, r4, #22
     b2e:	4b17      	ldr	r3, [pc, #92]	; (b8c <abc_to_dq+0x84>)
     b30:	0d24      	lsrs	r4, r4, #20
     b32:	5966      	ldr	r6, [r4, r5]
     b34:	18d4      	adds	r4, r2, r3
     b36:	05a4      	lsls	r4, r4, #22
     b38:	0d24      	lsrs	r4, r4, #20
     b3a:	5964      	ldr	r4, [r4, r5]
     b3c:	6843      	ldr	r3, [r0, #4]
     b3e:	4363      	muls	r3, r4
     b40:	0094      	lsls	r4, r2, #2
     b42:	469c      	mov	ip, r3
     b44:	3256      	adds	r2, #86	; 0x56
     b46:	32ff      	adds	r2, #255	; 0xff
     b48:	6803      	ldr	r3, [r0, #0]
     b4a:	5964      	ldr	r4, [r4, r5]
     b4c:	0592      	lsls	r2, r2, #22
     b4e:	0d12      	lsrs	r2, r2, #20
     b50:	5955      	ldr	r5, [r2, r5]
     b52:	435c      	muls	r4, r3
     b54:	6883      	ldr	r3, [r0, #8]
     b56:	4464      	add	r4, ip
     b58:	435d      	muls	r5, r3
     b5a:	4643      	mov	r3, r8
     b5c:	1964      	adds	r4, r4, r5
     b5e:	12a4      	asrs	r4, r4, #10
     b60:	600c      	str	r4, [r1, #0]
     b62:	6802      	ldr	r2, [r0, #0]
     b64:	435a      	muls	r2, r3
     b66:	6843      	ldr	r3, [r0, #4]
     b68:	437b      	muls	r3, r7
     b6a:	18d3      	adds	r3, r2, r3
     b6c:	6882      	ldr	r2, [r0, #8]
     b6e:	4372      	muls	r2, r6
     b70:	189b      	adds	r3, r3, r2
     b72:	425b      	negs	r3, r3
     b74:	129b      	asrs	r3, r3, #10
     b76:	604b      	str	r3, [r1, #4]
     b78:	bc04      	pop	{r2}
     b7a:	4690      	mov	r8, r2
     b7c:	bdf0      	pop	{r4, r5, r6, r7, pc}
     b7e:	46c0      	nop			; (mov r8, r8)
     b80:	00001338 	.word	0x00001338
     b84:	000005aa 	.word	0x000005aa
     b88:	00000455 	.word	0x00000455
     b8c:	000002aa 	.word	0x000002aa

00000b90 <dq_to_abc>:
     b90:	b570      	push	{r4, r5, r6, lr}
     b92:	4d1a      	ldr	r5, [pc, #104]	; (bfc <dq_to_abc+0x6c>)
     b94:	0093      	lsls	r3, r2, #2
     b96:	680c      	ldr	r4, [r1, #0]
     b98:	595b      	ldr	r3, [r3, r5]
     b9a:	684e      	ldr	r6, [r1, #4]
     b9c:	435c      	muls	r4, r3
     b9e:	23c0      	movs	r3, #192	; 0xc0
     ba0:	009b      	lsls	r3, r3, #2
     ba2:	18d3      	adds	r3, r2, r3
     ba4:	059b      	lsls	r3, r3, #22
     ba6:	0d1b      	lsrs	r3, r3, #20
     ba8:	595b      	ldr	r3, [r3, r5]
     baa:	4373      	muls	r3, r6
     bac:	1ae3      	subs	r3, r4, r3
     bae:	151b      	asrs	r3, r3, #20
     bb0:	6003      	str	r3, [r0, #0]
     bb2:	4b13      	ldr	r3, [pc, #76]	; (c00 <dq_to_abc+0x70>)
     bb4:	680c      	ldr	r4, [r1, #0]
     bb6:	18d3      	adds	r3, r2, r3
     bb8:	059b      	lsls	r3, r3, #22
     bba:	0d1b      	lsrs	r3, r3, #20
     bbc:	595b      	ldr	r3, [r3, r5]
     bbe:	684e      	ldr	r6, [r1, #4]
     bc0:	435c      	muls	r4, r3
     bc2:	4b10      	ldr	r3, [pc, #64]	; (c04 <dq_to_abc+0x74>)
     bc4:	18d3      	adds	r3, r2, r3
     bc6:	059b      	lsls	r3, r3, #22
     bc8:	0d1b      	lsrs	r3, r3, #20
     bca:	595b      	ldr	r3, [r3, r5]
     bcc:	4373      	muls	r3, r6
     bce:	1ae3      	subs	r3, r4, r3
     bd0:	151b      	asrs	r3, r3, #20
     bd2:	6043      	str	r3, [r0, #4]
     bd4:	0013      	movs	r3, r2
     bd6:	3356      	adds	r3, #86	; 0x56
     bd8:	33ff      	adds	r3, #255	; 0xff
     bda:	059b      	lsls	r3, r3, #22
     bdc:	0d1b      	lsrs	r3, r3, #20
     bde:	595b      	ldr	r3, [r3, r5]
     be0:	680c      	ldr	r4, [r1, #0]
     be2:	435c      	muls	r4, r3
     be4:	4b08      	ldr	r3, [pc, #32]	; (c08 <dq_to_abc+0x78>)
     be6:	469c      	mov	ip, r3
     be8:	4462      	add	r2, ip
     bea:	0592      	lsls	r2, r2, #22
     bec:	0d12      	lsrs	r2, r2, #20
     bee:	5952      	ldr	r2, [r2, r5]
     bf0:	684b      	ldr	r3, [r1, #4]
     bf2:	4353      	muls	r3, r2
     bf4:	1ae3      	subs	r3, r4, r3
     bf6:	151b      	asrs	r3, r3, #20
     bf8:	6083      	str	r3, [r0, #8]
     bfa:	bd70      	pop	{r4, r5, r6, pc}
     bfc:	00001338 	.word	0x00001338
     c00:	000002aa 	.word	0x000002aa
     c04:	000005aa 	.word	0x000005aa
     c08:	00000455 	.word	0x00000455

00000c0c <cord_atan>:
     c0c:	b5f0      	push	{r4, r5, r6, r7, lr}
     c0e:	464f      	mov	r7, r9
     c10:	4646      	mov	r6, r8
     c12:	b4c0      	push	{r6, r7}
     c14:	4b63      	ldr	r3, [pc, #396]	; (da4 <cord_atan+0x198>)
     c16:	b091      	sub	sp, #68	; 0x44
     c18:	001c      	movs	r4, r3
     c1a:	4694      	mov	ip, r2
     c1c:	466a      	mov	r2, sp
     c1e:	4699      	mov	r9, r3
     c20:	cca8      	ldmia	r4!, {r3, r5, r7}
     c22:	c2a8      	stmia	r2!, {r3, r5, r7}
     c24:	cca8      	ldmia	r4!, {r3, r5, r7}
     c26:	c2a8      	stmia	r2!, {r3, r5, r7}
     c28:	cc28      	ldmia	r4!, {r3, r5}
     c2a:	c228      	stmia	r2!, {r3, r5}
     c2c:	464b      	mov	r3, r9
     c2e:	aa08      	add	r2, sp, #32
     c30:	3320      	adds	r3, #32
     c32:	4690      	mov	r8, r2
     c34:	cbb0      	ldmia	r3!, {r4, r5, r7}
     c36:	c2b0      	stmia	r2!, {r4, r5, r7}
     c38:	cbb0      	ldmia	r3!, {r4, r5, r7}
     c3a:	c2b0      	stmia	r2!, {r4, r5, r7}
     c3c:	cb30      	ldmia	r3!, {r4, r5}
     c3e:	c230      	stmia	r2!, {r4, r5}
     c40:	6802      	ldr	r2, [r0, #0]
     c42:	6845      	ldr	r5, [r0, #4]
     c44:	17d4      	asrs	r4, r2, #31
     c46:	1913      	adds	r3, r2, r4
     c48:	466e      	mov	r6, sp
     c4a:	4063      	eors	r3, r4
     c4c:	2d00      	cmp	r5, #0
     c4e:	dd69      	ble.n	d24 <cord_atan+0x118>
     c50:	195f      	adds	r7, r3, r5
     c52:	1aeb      	subs	r3, r5, r3
     c54:	9d00      	ldr	r5, [sp, #0]
     c56:	2b00      	cmp	r3, #0
     c58:	d100      	bne.n	c5c <cord_atan+0x50>
     c5a:	e091      	b.n	d80 <cord_atan+0x174>
     c5c:	105c      	asrs	r4, r3, #1
     c5e:	2b00      	cmp	r3, #0
     c60:	dd65      	ble.n	d2e <cord_atan+0x122>
     c62:	1078      	asrs	r0, r7, #1
     c64:	1a1b      	subs	r3, r3, r0
     c66:	6870      	ldr	r0, [r6, #4]
     c68:	19e4      	adds	r4, r4, r7
     c6a:	4681      	mov	r9, r0
     c6c:	444d      	add	r5, r9
     c6e:	2b00      	cmp	r3, #0
     c70:	d100      	bne.n	c74 <cord_atan+0x68>
     c72:	e087      	b.n	d84 <cord_atan+0x178>
     c74:	1098      	asrs	r0, r3, #2
     c76:	2b00      	cmp	r3, #0
     c78:	dd5f      	ble.n	d3a <cord_atan+0x12e>
     c7a:	1907      	adds	r7, r0, r4
     c7c:	10a4      	asrs	r4, r4, #2
     c7e:	1b18      	subs	r0, r3, r4
     c80:	68b3      	ldr	r3, [r6, #8]
     c82:	4699      	mov	r9, r3
     c84:	444d      	add	r5, r9
     c86:	2800      	cmp	r0, #0
     c88:	d100      	bne.n	c8c <cord_atan+0x80>
     c8a:	e07e      	b.n	d8a <cord_atan+0x17e>
     c8c:	10c3      	asrs	r3, r0, #3
     c8e:	2800      	cmp	r0, #0
     c90:	dd59      	ble.n	d46 <cord_atan+0x13a>
     c92:	10fc      	asrs	r4, r7, #3
     c94:	1b00      	subs	r0, r0, r4
     c96:	68f4      	ldr	r4, [r6, #12]
     c98:	19db      	adds	r3, r3, r7
     c9a:	46a1      	mov	r9, r4
     c9c:	444d      	add	r5, r9
     c9e:	2800      	cmp	r0, #0
     ca0:	d100      	bne.n	ca4 <cord_atan+0x98>
     ca2:	e074      	b.n	d8e <cord_atan+0x182>
     ca4:	1104      	asrs	r4, r0, #4
     ca6:	2800      	cmp	r0, #0
     ca8:	dd53      	ble.n	d52 <cord_atan+0x146>
     caa:	18e7      	adds	r7, r4, r3
     cac:	111b      	asrs	r3, r3, #4
     cae:	1ac4      	subs	r4, r0, r3
     cb0:	6933      	ldr	r3, [r6, #16]
     cb2:	4699      	mov	r9, r3
     cb4:	444d      	add	r5, r9
     cb6:	2c00      	cmp	r4, #0
     cb8:	d06c      	beq.n	d94 <cord_atan+0x188>
     cba:	1163      	asrs	r3, r4, #5
     cbc:	2c00      	cmp	r4, #0
     cbe:	dd4e      	ble.n	d5e <cord_atan+0x152>
     cc0:	1178      	asrs	r0, r7, #5
     cc2:	1a20      	subs	r0, r4, r0
     cc4:	6974      	ldr	r4, [r6, #20]
     cc6:	19db      	adds	r3, r3, r7
     cc8:	46a1      	mov	r9, r4
     cca:	444d      	add	r5, r9
     ccc:	2800      	cmp	r0, #0
     cce:	d063      	beq.n	d98 <cord_atan+0x18c>
     cd0:	1184      	asrs	r4, r0, #6
     cd2:	2800      	cmp	r0, #0
     cd4:	dd49      	ble.n	d6a <cord_atan+0x15e>
     cd6:	18e7      	adds	r7, r4, r3
     cd8:	119b      	asrs	r3, r3, #6
     cda:	1ac0      	subs	r0, r0, r3
     cdc:	69b3      	ldr	r3, [r6, #24]
     cde:	4699      	mov	r9, r3
     ce0:	444d      	add	r5, r9
     ce2:	2800      	cmp	r0, #0
     ce4:	d05b      	beq.n	d9e <cord_atan+0x192>
     ce6:	dd46      	ble.n	d76 <cord_atan+0x16a>
     ce8:	69f3      	ldr	r3, [r6, #28]
     cea:	11c0      	asrs	r0, r0, #7
     cec:	19c7      	adds	r7, r0, r7
     cee:	18ed      	adds	r5, r5, r3
     cf0:	2307      	movs	r3, #7
     cf2:	2a00      	cmp	r2, #0
     cf4:	db12      	blt.n	d1c <cord_atan+0x110>
     cf6:	2d00      	cmp	r5, #0
     cf8:	da03      	bge.n	d02 <cord_atan+0xf6>
     cfa:	2280      	movs	r2, #128	; 0x80
     cfc:	00d2      	lsls	r2, r2, #3
     cfe:	4691      	mov	r9, r2
     d00:	444d      	add	r5, r9
     d02:	4642      	mov	r2, r8
     d04:	009b      	lsls	r3, r3, #2
     d06:	58d0      	ldr	r0, [r2, r3]
     d08:	4663      	mov	r3, ip
     d0a:	4378      	muls	r0, r7
     d0c:	1280      	asrs	r0, r0, #10
     d0e:	600d      	str	r5, [r1, #0]
     d10:	6018      	str	r0, [r3, #0]
     d12:	b011      	add	sp, #68	; 0x44
     d14:	bc0c      	pop	{r2, r3}
     d16:	4690      	mov	r8, r2
     d18:	4699      	mov	r9, r3
     d1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
     d1c:	2280      	movs	r2, #128	; 0x80
     d1e:	0092      	lsls	r2, r2, #2
     d20:	1b55      	subs	r5, r2, r5
     d22:	e7e8      	b.n	cf6 <cord_atan+0xea>
     d24:	9800      	ldr	r0, [sp, #0]
     d26:	1b5f      	subs	r7, r3, r5
     d28:	195b      	adds	r3, r3, r5
     d2a:	4245      	negs	r5, r0
     d2c:	e793      	b.n	c56 <cord_atan+0x4a>
     d2e:	1078      	asrs	r0, r7, #1
     d30:	18c3      	adds	r3, r0, r3
     d32:	6870      	ldr	r0, [r6, #4]
     d34:	1b3c      	subs	r4, r7, r4
     d36:	1a2d      	subs	r5, r5, r0
     d38:	e799      	b.n	c6e <cord_atan+0x62>
     d3a:	1a27      	subs	r7, r4, r0
     d3c:	10a0      	asrs	r0, r4, #2
     d3e:	18c0      	adds	r0, r0, r3
     d40:	68b3      	ldr	r3, [r6, #8]
     d42:	1aed      	subs	r5, r5, r3
     d44:	e79f      	b.n	c86 <cord_atan+0x7a>
     d46:	10fc      	asrs	r4, r7, #3
     d48:	1820      	adds	r0, r4, r0
     d4a:	68f4      	ldr	r4, [r6, #12]
     d4c:	1afb      	subs	r3, r7, r3
     d4e:	1b2d      	subs	r5, r5, r4
     d50:	e7a5      	b.n	c9e <cord_atan+0x92>
     d52:	1b1f      	subs	r7, r3, r4
     d54:	111c      	asrs	r4, r3, #4
     d56:	6933      	ldr	r3, [r6, #16]
     d58:	1824      	adds	r4, r4, r0
     d5a:	1aed      	subs	r5, r5, r3
     d5c:	e7ab      	b.n	cb6 <cord_atan+0xaa>
     d5e:	1178      	asrs	r0, r7, #5
     d60:	1900      	adds	r0, r0, r4
     d62:	6974      	ldr	r4, [r6, #20]
     d64:	1afb      	subs	r3, r7, r3
     d66:	1b2d      	subs	r5, r5, r4
     d68:	e7b0      	b.n	ccc <cord_atan+0xc0>
     d6a:	1b1f      	subs	r7, r3, r4
     d6c:	119b      	asrs	r3, r3, #6
     d6e:	1818      	adds	r0, r3, r0
     d70:	69b3      	ldr	r3, [r6, #24]
     d72:	1aed      	subs	r5, r5, r3
     d74:	e7b5      	b.n	ce2 <cord_atan+0xd6>
     d76:	69f3      	ldr	r3, [r6, #28]
     d78:	11c4      	asrs	r4, r0, #7
     d7a:	1b3f      	subs	r7, r7, r4
     d7c:	1aed      	subs	r5, r5, r3
     d7e:	e7b7      	b.n	cf0 <cord_atan+0xe4>
     d80:	2300      	movs	r3, #0
     d82:	e7b6      	b.n	cf2 <cord_atan+0xe6>
     d84:	0027      	movs	r7, r4
     d86:	2301      	movs	r3, #1
     d88:	e7b3      	b.n	cf2 <cord_atan+0xe6>
     d8a:	2302      	movs	r3, #2
     d8c:	e7b1      	b.n	cf2 <cord_atan+0xe6>
     d8e:	001f      	movs	r7, r3
     d90:	2303      	movs	r3, #3
     d92:	e7ae      	b.n	cf2 <cord_atan+0xe6>
     d94:	2304      	movs	r3, #4
     d96:	e7ac      	b.n	cf2 <cord_atan+0xe6>
     d98:	001f      	movs	r7, r3
     d9a:	2305      	movs	r3, #5
     d9c:	e7a9      	b.n	cf2 <cord_atan+0xe6>
     d9e:	2306      	movs	r3, #6
     da0:	e7a7      	b.n	cf2 <cord_atan+0xe6>
     da2:	46c0      	nop			; (mov r8, r8)
     da4:	00002350 	.word	0x00002350

00000da8 <sinpwm>:
     da8:	b5f0      	push	{r4, r5, r6, r7, lr}
     daa:	4646      	mov	r6, r8
     dac:	464f      	mov	r7, r9
     dae:	b4c0      	push	{r6, r7}
     db0:	b089      	sub	sp, #36	; 0x24
     db2:	466c      	mov	r4, sp
     db4:	4b65      	ldr	r3, [pc, #404]	; (f4c <sinpwm+0x1a4>)
     db6:	46e9      	mov	r9, sp
     db8:	3320      	adds	r3, #32
     dba:	cbe0      	ldmia	r3!, {r5, r6, r7}
     dbc:	c4e0      	stmia	r4!, {r5, r6, r7}
     dbe:	cbe0      	ldmia	r3!, {r5, r6, r7}
     dc0:	c4e0      	stmia	r4!, {r5, r6, r7}
     dc2:	cb60      	ldmia	r3!, {r5, r6}
     dc4:	c460      	stmia	r4!, {r5, r6}
     dc6:	680b      	ldr	r3, [r1, #0]
     dc8:	17dc      	asrs	r4, r3, #31
     dca:	191e      	adds	r6, r3, r4
     dcc:	4698      	mov	r8, r3
     dce:	684b      	ldr	r3, [r1, #4]
     dd0:	4066      	eors	r6, r4
     dd2:	469c      	mov	ip, r3
     dd4:	2b00      	cmp	r3, #0
     dd6:	dc00      	bgt.n	dda <sinpwm+0x32>
     dd8:	e086      	b.n	ee8 <sinpwm+0x140>
     dda:	18f7      	adds	r7, r6, r3
     ddc:	1b9b      	subs	r3, r3, r6
     dde:	2b00      	cmp	r3, #0
     de0:	d100      	bne.n	de4 <sinpwm+0x3c>
     de2:	e0a0      	b.n	f26 <sinpwm+0x17e>
     de4:	105e      	asrs	r6, r3, #1
     de6:	2b00      	cmp	r3, #0
     de8:	dc00      	bgt.n	dec <sinpwm+0x44>
     dea:	e081      	b.n	ef0 <sinpwm+0x148>
     dec:	107c      	asrs	r4, r7, #1
     dee:	19f6      	adds	r6, r6, r7
     df0:	1b1b      	subs	r3, r3, r4
     df2:	2b00      	cmp	r3, #0
     df4:	d100      	bne.n	df8 <sinpwm+0x50>
     df6:	e098      	b.n	f2a <sinpwm+0x182>
     df8:	109c      	asrs	r4, r3, #2
     dfa:	2b00      	cmp	r3, #0
     dfc:	dc00      	bgt.n	e00 <sinpwm+0x58>
     dfe:	e07b      	b.n	ef8 <sinpwm+0x150>
     e00:	19a7      	adds	r7, r4, r6
     e02:	10b6      	asrs	r6, r6, #2
     e04:	1b9c      	subs	r4, r3, r6
     e06:	2c00      	cmp	r4, #0
     e08:	d100      	bne.n	e0c <sinpwm+0x64>
     e0a:	e091      	b.n	f30 <sinpwm+0x188>
     e0c:	10e6      	asrs	r6, r4, #3
     e0e:	2c00      	cmp	r4, #0
     e10:	dc00      	bgt.n	e14 <sinpwm+0x6c>
     e12:	e075      	b.n	f00 <sinpwm+0x158>
     e14:	10fd      	asrs	r5, r7, #3
     e16:	19f6      	adds	r6, r6, r7
     e18:	1b64      	subs	r4, r4, r5
     e1a:	2c00      	cmp	r4, #0
     e1c:	d100      	bne.n	e20 <sinpwm+0x78>
     e1e:	e089      	b.n	f34 <sinpwm+0x18c>
     e20:	1125      	asrs	r5, r4, #4
     e22:	2c00      	cmp	r4, #0
     e24:	dc00      	bgt.n	e28 <sinpwm+0x80>
     e26:	e06f      	b.n	f08 <sinpwm+0x160>
     e28:	19af      	adds	r7, r5, r6
     e2a:	1136      	asrs	r6, r6, #4
     e2c:	1ba5      	subs	r5, r4, r6
     e2e:	2d00      	cmp	r5, #0
     e30:	d100      	bne.n	e34 <sinpwm+0x8c>
     e32:	e082      	b.n	f3a <sinpwm+0x192>
     e34:	116e      	asrs	r6, r5, #5
     e36:	2d00      	cmp	r5, #0
     e38:	dd6a      	ble.n	f10 <sinpwm+0x168>
     e3a:	117c      	asrs	r4, r7, #5
     e3c:	19f6      	adds	r6, r6, r7
     e3e:	1b2c      	subs	r4, r5, r4
     e40:	2c00      	cmp	r4, #0
     e42:	d100      	bne.n	e46 <sinpwm+0x9e>
     e44:	e07b      	b.n	f3e <sinpwm+0x196>
     e46:	11a3      	asrs	r3, r4, #6
     e48:	2c00      	cmp	r4, #0
     e4a:	dd65      	ble.n	f18 <sinpwm+0x170>
     e4c:	199b      	adds	r3, r3, r6
     e4e:	11b6      	asrs	r6, r6, #6
     e50:	1ba4      	subs	r4, r4, r6
     e52:	2c00      	cmp	r4, #0
     e54:	d100      	bne.n	e58 <sinpwm+0xb0>
     e56:	e075      	b.n	f44 <sinpwm+0x19c>
     e58:	dd62      	ble.n	f20 <sinpwm+0x178>
     e5a:	11e4      	asrs	r4, r4, #7
     e5c:	18e7      	adds	r7, r4, r3
     e5e:	2307      	movs	r3, #7
     e60:	464c      	mov	r4, r9
     e62:	4646      	mov	r6, r8
     e64:	009b      	lsls	r3, r3, #2
     e66:	58e4      	ldr	r4, [r4, r3]
     e68:	4b39      	ldr	r3, [pc, #228]	; (f50 <sinpwm+0x1a8>)
     e6a:	0095      	lsls	r5, r2, #2
     e6c:	58ed      	ldr	r5, [r5, r3]
     e6e:	437c      	muls	r4, r7
     e70:	436e      	muls	r6, r5
     e72:	25c0      	movs	r5, #192	; 0xc0
     e74:	4667      	mov	r7, ip
     e76:	00ad      	lsls	r5, r5, #2
     e78:	1955      	adds	r5, r2, r5
     e7a:	05ad      	lsls	r5, r5, #22
     e7c:	0d2d      	lsrs	r5, r5, #20
     e7e:	58ed      	ldr	r5, [r5, r3]
     e80:	1524      	asrs	r4, r4, #20
     e82:	437d      	muls	r5, r7
     e84:	1b75      	subs	r5, r6, r5
     e86:	152d      	asrs	r5, r5, #20
     e88:	6005      	str	r5, [r0, #0]
     e8a:	4d32      	ldr	r5, [pc, #200]	; (f54 <sinpwm+0x1ac>)
     e8c:	684f      	ldr	r7, [r1, #4]
     e8e:	1955      	adds	r5, r2, r5
     e90:	05ad      	lsls	r5, r5, #22
     e92:	0d2d      	lsrs	r5, r5, #20
     e94:	58ee      	ldr	r6, [r5, r3]
     e96:	680d      	ldr	r5, [r1, #0]
     e98:	4375      	muls	r5, r6
     e9a:	4e2f      	ldr	r6, [pc, #188]	; (f58 <sinpwm+0x1b0>)
     e9c:	1996      	adds	r6, r2, r6
     e9e:	05b6      	lsls	r6, r6, #22
     ea0:	0d36      	lsrs	r6, r6, #20
     ea2:	58f6      	ldr	r6, [r6, r3]
     ea4:	437e      	muls	r6, r7
     ea6:	1bae      	subs	r6, r5, r6
     ea8:	0015      	movs	r5, r2
     eaa:	3556      	adds	r5, #86	; 0x56
     eac:	35ff      	adds	r5, #255	; 0xff
     eae:	1536      	asrs	r6, r6, #20
     eb0:	05ad      	lsls	r5, r5, #22
     eb2:	6046      	str	r6, [r0, #4]
     eb4:	0d2d      	lsrs	r5, r5, #20
     eb6:	58ee      	ldr	r6, [r5, r3]
     eb8:	680d      	ldr	r5, [r1, #0]
     eba:	436e      	muls	r6, r5
     ebc:	4d27      	ldr	r5, [pc, #156]	; (f5c <sinpwm+0x1b4>)
     ebe:	46ac      	mov	ip, r5
     ec0:	4462      	add	r2, ip
     ec2:	0592      	lsls	r2, r2, #22
     ec4:	0d12      	lsrs	r2, r2, #20
     ec6:	58d2      	ldr	r2, [r2, r3]
     ec8:	684b      	ldr	r3, [r1, #4]
     eca:	435a      	muls	r2, r3
     ecc:	23fa      	movs	r3, #250	; 0xfa
     ece:	1ab2      	subs	r2, r6, r2
     ed0:	1512      	asrs	r2, r2, #20
     ed2:	6082      	str	r2, [r0, #8]
     ed4:	005b      	lsls	r3, r3, #1
     ed6:	2001      	movs	r0, #1
     ed8:	429c      	cmp	r4, r3
     eda:	dc00      	bgt.n	ede <sinpwm+0x136>
     edc:	2000      	movs	r0, #0
     ede:	b009      	add	sp, #36	; 0x24
     ee0:	bc0c      	pop	{r2, r3}
     ee2:	4690      	mov	r8, r2
     ee4:	4699      	mov	r9, r3
     ee6:	bdf0      	pop	{r4, r5, r6, r7, pc}
     ee8:	1af7      	subs	r7, r6, r3
     eea:	0033      	movs	r3, r6
     eec:	4463      	add	r3, ip
     eee:	e776      	b.n	dde <sinpwm+0x36>
     ef0:	107c      	asrs	r4, r7, #1
     ef2:	1bbe      	subs	r6, r7, r6
     ef4:	18e3      	adds	r3, r4, r3
     ef6:	e77c      	b.n	df2 <sinpwm+0x4a>
     ef8:	1b37      	subs	r7, r6, r4
     efa:	10b4      	asrs	r4, r6, #2
     efc:	18e4      	adds	r4, r4, r3
     efe:	e782      	b.n	e06 <sinpwm+0x5e>
     f00:	10fd      	asrs	r5, r7, #3
     f02:	1bbe      	subs	r6, r7, r6
     f04:	192c      	adds	r4, r5, r4
     f06:	e788      	b.n	e1a <sinpwm+0x72>
     f08:	1b77      	subs	r7, r6, r5
     f0a:	1135      	asrs	r5, r6, #4
     f0c:	192d      	adds	r5, r5, r4
     f0e:	e78e      	b.n	e2e <sinpwm+0x86>
     f10:	117c      	asrs	r4, r7, #5
     f12:	1bbe      	subs	r6, r7, r6
     f14:	1964      	adds	r4, r4, r5
     f16:	e793      	b.n	e40 <sinpwm+0x98>
     f18:	1af3      	subs	r3, r6, r3
     f1a:	11b6      	asrs	r6, r6, #6
     f1c:	1934      	adds	r4, r6, r4
     f1e:	e798      	b.n	e52 <sinpwm+0xaa>
     f20:	11e5      	asrs	r5, r4, #7
     f22:	1b5f      	subs	r7, r3, r5
     f24:	e79b      	b.n	e5e <sinpwm+0xb6>
     f26:	2300      	movs	r3, #0
     f28:	e79a      	b.n	e60 <sinpwm+0xb8>
     f2a:	0037      	movs	r7, r6
     f2c:	2301      	movs	r3, #1
     f2e:	e797      	b.n	e60 <sinpwm+0xb8>
     f30:	2302      	movs	r3, #2
     f32:	e795      	b.n	e60 <sinpwm+0xb8>
     f34:	0037      	movs	r7, r6
     f36:	2303      	movs	r3, #3
     f38:	e792      	b.n	e60 <sinpwm+0xb8>
     f3a:	2304      	movs	r3, #4
     f3c:	e790      	b.n	e60 <sinpwm+0xb8>
     f3e:	0037      	movs	r7, r6
     f40:	2305      	movs	r3, #5
     f42:	e78d      	b.n	e60 <sinpwm+0xb8>
     f44:	001f      	movs	r7, r3
     f46:	2306      	movs	r3, #6
     f48:	e78a      	b.n	e60 <sinpwm+0xb8>
     f4a:	46c0      	nop			; (mov r8, r8)
     f4c:	00002350 	.word	0x00002350
     f50:	00001338 	.word	0x00001338
     f54:	000002aa 	.word	0x000002aa
     f58:	000005aa 	.word	0x000005aa
     f5c:	00000455 	.word	0x00000455

00000f60 <svpwm>:
     f60:	b5f0      	push	{r4, r5, r6, r7, lr}
     f62:	464f      	mov	r7, r9
     f64:	4646      	mov	r6, r8
     f66:	b4c0      	push	{r6, r7}
     f68:	4bb2      	ldr	r3, [pc, #712]	; (1234 <svpwm+0x2d4>)
     f6a:	b091      	sub	sp, #68	; 0x44
     f6c:	001c      	movs	r4, r3
     f6e:	4694      	mov	ip, r2
     f70:	466a      	mov	r2, sp
     f72:	4699      	mov	r9, r3
     f74:	cca8      	ldmia	r4!, {r3, r5, r7}
     f76:	c2a8      	stmia	r2!, {r3, r5, r7}
     f78:	cca8      	ldmia	r4!, {r3, r5, r7}
     f7a:	c2a8      	stmia	r2!, {r3, r5, r7}
     f7c:	cc28      	ldmia	r4!, {r3, r5}
     f7e:	c228      	stmia	r2!, {r3, r5}
     f80:	464b      	mov	r3, r9
     f82:	aa08      	add	r2, sp, #32
     f84:	3320      	adds	r3, #32
     f86:	4690      	mov	r8, r2
     f88:	cbb0      	ldmia	r3!, {r4, r5, r7}
     f8a:	c2b0      	stmia	r2!, {r4, r5, r7}
     f8c:	cbb0      	ldmia	r3!, {r4, r5, r7}
     f8e:	c2b0      	stmia	r2!, {r4, r5, r7}
     f90:	cb30      	ldmia	r3!, {r4, r5}
     f92:	c230      	stmia	r2!, {r4, r5}
     f94:	680a      	ldr	r2, [r1, #0]
     f96:	684d      	ldr	r5, [r1, #4]
     f98:	17d4      	asrs	r4, r2, #31
     f9a:	1913      	adds	r3, r2, r4
     f9c:	466e      	mov	r6, sp
     f9e:	4063      	eors	r3, r4
     fa0:	2d00      	cmp	r5, #0
     fa2:	dd78      	ble.n	1096 <svpwm+0x136>
     fa4:	195f      	adds	r7, r3, r5
     fa6:	1aeb      	subs	r3, r5, r3
     fa8:	9d00      	ldr	r5, [sp, #0]
     faa:	2b00      	cmp	r3, #0
     fac:	d100      	bne.n	fb0 <svpwm+0x50>
     fae:	e130      	b.n	1212 <svpwm+0x2b2>
     fb0:	105c      	asrs	r4, r3, #1
     fb2:	2b00      	cmp	r3, #0
     fb4:	dd74      	ble.n	10a0 <svpwm+0x140>
     fb6:	1079      	asrs	r1, r7, #1
     fb8:	1a5b      	subs	r3, r3, r1
     fba:	6871      	ldr	r1, [r6, #4]
     fbc:	19e4      	adds	r4, r4, r7
     fbe:	4689      	mov	r9, r1
     fc0:	444d      	add	r5, r9
     fc2:	2b00      	cmp	r3, #0
     fc4:	d100      	bne.n	fc8 <svpwm+0x68>
     fc6:	e126      	b.n	1216 <svpwm+0x2b6>
     fc8:	1099      	asrs	r1, r3, #2
     fca:	2b00      	cmp	r3, #0
     fcc:	dd6e      	ble.n	10ac <svpwm+0x14c>
     fce:	190f      	adds	r7, r1, r4
     fd0:	10a4      	asrs	r4, r4, #2
     fd2:	1b19      	subs	r1, r3, r4
     fd4:	68b3      	ldr	r3, [r6, #8]
     fd6:	4699      	mov	r9, r3
     fd8:	444d      	add	r5, r9
     fda:	2900      	cmp	r1, #0
     fdc:	d100      	bne.n	fe0 <svpwm+0x80>
     fde:	e11d      	b.n	121c <svpwm+0x2bc>
     fe0:	10cb      	asrs	r3, r1, #3
     fe2:	2900      	cmp	r1, #0
     fe4:	dd68      	ble.n	10b8 <svpwm+0x158>
     fe6:	10fc      	asrs	r4, r7, #3
     fe8:	1b09      	subs	r1, r1, r4
     fea:	68f4      	ldr	r4, [r6, #12]
     fec:	19db      	adds	r3, r3, r7
     fee:	46a1      	mov	r9, r4
     ff0:	444d      	add	r5, r9
     ff2:	2900      	cmp	r1, #0
     ff4:	d100      	bne.n	ff8 <svpwm+0x98>
     ff6:	e113      	b.n	1220 <svpwm+0x2c0>
     ff8:	110c      	asrs	r4, r1, #4
     ffa:	2900      	cmp	r1, #0
     ffc:	dd62      	ble.n	10c4 <svpwm+0x164>
     ffe:	18e7      	adds	r7, r4, r3
    1000:	111b      	asrs	r3, r3, #4
    1002:	1acc      	subs	r4, r1, r3
    1004:	6933      	ldr	r3, [r6, #16]
    1006:	4699      	mov	r9, r3
    1008:	444d      	add	r5, r9
    100a:	2c00      	cmp	r4, #0
    100c:	d100      	bne.n	1010 <svpwm+0xb0>
    100e:	e10a      	b.n	1226 <svpwm+0x2c6>
    1010:	1163      	asrs	r3, r4, #5
    1012:	2c00      	cmp	r4, #0
    1014:	dd5c      	ble.n	10d0 <svpwm+0x170>
    1016:	1179      	asrs	r1, r7, #5
    1018:	1a61      	subs	r1, r4, r1
    101a:	6974      	ldr	r4, [r6, #20]
    101c:	19db      	adds	r3, r3, r7
    101e:	46a1      	mov	r9, r4
    1020:	444d      	add	r5, r9
    1022:	2900      	cmp	r1, #0
    1024:	d100      	bne.n	1028 <svpwm+0xc8>
    1026:	e100      	b.n	122a <svpwm+0x2ca>
    1028:	118c      	asrs	r4, r1, #6
    102a:	2900      	cmp	r1, #0
    102c:	dd56      	ble.n	10dc <svpwm+0x17c>
    102e:	18e7      	adds	r7, r4, r3
    1030:	119b      	asrs	r3, r3, #6
    1032:	1ac9      	subs	r1, r1, r3
    1034:	69b3      	ldr	r3, [r6, #24]
    1036:	4699      	mov	r9, r3
    1038:	444d      	add	r5, r9
    103a:	2900      	cmp	r1, #0
    103c:	d100      	bne.n	1040 <svpwm+0xe0>
    103e:	e0f7      	b.n	1230 <svpwm+0x2d0>
    1040:	dc00      	bgt.n	1044 <svpwm+0xe4>
    1042:	e0e1      	b.n	1208 <svpwm+0x2a8>
    1044:	69f3      	ldr	r3, [r6, #28]
    1046:	11c9      	asrs	r1, r1, #7
    1048:	19cf      	adds	r7, r1, r7
    104a:	18ed      	adds	r5, r5, r3
    104c:	2307      	movs	r3, #7
    104e:	2a00      	cmp	r2, #0
    1050:	db1d      	blt.n	108e <svpwm+0x12e>
    1052:	2d00      	cmp	r5, #0
    1054:	da03      	bge.n	105e <svpwm+0xfe>
    1056:	2280      	movs	r2, #128	; 0x80
    1058:	00d2      	lsls	r2, r2, #3
    105a:	4691      	mov	r9, r2
    105c:	444d      	add	r5, r9
    105e:	4642      	mov	r2, r8
    1060:	009b      	lsls	r3, r3, #2
    1062:	58d1      	ldr	r1, [r2, r3]
    1064:	23fa      	movs	r3, #250	; 0xfa
    1066:	4379      	muls	r1, r7
    1068:	4465      	add	r5, ip
    106a:	05ad      	lsls	r5, r5, #22
    106c:	1509      	asrs	r1, r1, #20
    106e:	0dad      	lsrs	r5, r5, #22
    1070:	005b      	lsls	r3, r3, #1
    1072:	2600      	movs	r6, #0
    1074:	4299      	cmp	r1, r3
    1076:	dd01      	ble.n	107c <svpwm+0x11c>
    1078:	0019      	movs	r1, r3
    107a:	3601      	adds	r6, #1
    107c:	006a      	lsls	r2, r5, #1
    107e:	1952      	adds	r2, r2, r5
    1080:	1252      	asrs	r2, r2, #9
    1082:	2a05      	cmp	r2, #5
    1084:	d84b      	bhi.n	111e <svpwm+0x1be>
    1086:	4b6c      	ldr	r3, [pc, #432]	; (1238 <svpwm+0x2d8>)
    1088:	0092      	lsls	r2, r2, #2
    108a:	589b      	ldr	r3, [r3, r2]
    108c:	469f      	mov	pc, r3
    108e:	2280      	movs	r2, #128	; 0x80
    1090:	0092      	lsls	r2, r2, #2
    1092:	1b55      	subs	r5, r2, r5
    1094:	e7dd      	b.n	1052 <svpwm+0xf2>
    1096:	9900      	ldr	r1, [sp, #0]
    1098:	1b5f      	subs	r7, r3, r5
    109a:	195b      	adds	r3, r3, r5
    109c:	424d      	negs	r5, r1
    109e:	e784      	b.n	faa <svpwm+0x4a>
    10a0:	1079      	asrs	r1, r7, #1
    10a2:	18cb      	adds	r3, r1, r3
    10a4:	6871      	ldr	r1, [r6, #4]
    10a6:	1b3c      	subs	r4, r7, r4
    10a8:	1a6d      	subs	r5, r5, r1
    10aa:	e78a      	b.n	fc2 <svpwm+0x62>
    10ac:	1a67      	subs	r7, r4, r1
    10ae:	10a1      	asrs	r1, r4, #2
    10b0:	18c9      	adds	r1, r1, r3
    10b2:	68b3      	ldr	r3, [r6, #8]
    10b4:	1aed      	subs	r5, r5, r3
    10b6:	e790      	b.n	fda <svpwm+0x7a>
    10b8:	10fc      	asrs	r4, r7, #3
    10ba:	1861      	adds	r1, r4, r1
    10bc:	68f4      	ldr	r4, [r6, #12]
    10be:	1afb      	subs	r3, r7, r3
    10c0:	1b2d      	subs	r5, r5, r4
    10c2:	e796      	b.n	ff2 <svpwm+0x92>
    10c4:	1b1f      	subs	r7, r3, r4
    10c6:	111c      	asrs	r4, r3, #4
    10c8:	6933      	ldr	r3, [r6, #16]
    10ca:	1864      	adds	r4, r4, r1
    10cc:	1aed      	subs	r5, r5, r3
    10ce:	e79c      	b.n	100a <svpwm+0xaa>
    10d0:	1179      	asrs	r1, r7, #5
    10d2:	1909      	adds	r1, r1, r4
    10d4:	6974      	ldr	r4, [r6, #20]
    10d6:	1afb      	subs	r3, r7, r3
    10d8:	1b2d      	subs	r5, r5, r4
    10da:	e7a2      	b.n	1022 <svpwm+0xc2>
    10dc:	1b1f      	subs	r7, r3, r4
    10de:	119b      	asrs	r3, r3, #6
    10e0:	1859      	adds	r1, r3, r1
    10e2:	69b3      	ldr	r3, [r6, #24]
    10e4:	1aed      	subs	r5, r5, r3
    10e6:	e7a8      	b.n	103a <svpwm+0xda>
    10e8:	4b54      	ldr	r3, [pc, #336]	; (123c <svpwm+0x2dc>)
    10ea:	4a55      	ldr	r2, [pc, #340]	; (1240 <svpwm+0x2e0>)
    10ec:	1b5b      	subs	r3, r3, r5
    10ee:	3556      	adds	r5, #86	; 0x56
    10f0:	059b      	lsls	r3, r3, #22
    10f2:	05ad      	lsls	r5, r5, #22
    10f4:	0d1b      	lsrs	r3, r3, #20
    10f6:	0d2d      	lsrs	r5, r5, #20
    10f8:	589b      	ldr	r3, [r3, r2]
    10fa:	58ac      	ldr	r4, [r5, r2]
    10fc:	434b      	muls	r3, r1
    10fe:	434c      	muls	r4, r1
    1100:	129b      	asrs	r3, r3, #10
    1102:	12a1      	asrs	r1, r4, #10
    1104:	1aca      	subs	r2, r1, r3
    1106:	6002      	str	r2, [r0, #0]
    1108:	425a      	negs	r2, r3
    110a:	1a52      	subs	r2, r2, r1
    110c:	1859      	adds	r1, r3, r1
    110e:	6042      	str	r2, [r0, #4]
    1110:	6081      	str	r1, [r0, #8]
    1112:	0030      	movs	r0, r6
    1114:	b011      	add	sp, #68	; 0x44
    1116:	bc0c      	pop	{r2, r3}
    1118:	4690      	mov	r8, r2
    111a:	4699      	mov	r9, r3
    111c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    111e:	4b49      	ldr	r3, [pc, #292]	; (1244 <svpwm+0x2e4>)
    1120:	4c47      	ldr	r4, [pc, #284]	; (1240 <svpwm+0x2e0>)
    1122:	1b5b      	subs	r3, r3, r5
    1124:	059b      	lsls	r3, r3, #22
    1126:	0d1b      	lsrs	r3, r3, #20
    1128:	591a      	ldr	r2, [r3, r4]
    112a:	23c0      	movs	r3, #192	; 0xc0
    112c:	009b      	lsls	r3, r3, #2
    112e:	469c      	mov	ip, r3
    1130:	4465      	add	r5, ip
    1132:	05ad      	lsls	r5, r5, #22
    1134:	0d2d      	lsrs	r5, r5, #20
    1136:	592c      	ldr	r4, [r5, r4]
    1138:	434a      	muls	r2, r1
    113a:	4361      	muls	r1, r4
    113c:	1292      	asrs	r2, r2, #10
    113e:	1289      	asrs	r1, r1, #10
    1140:	1853      	adds	r3, r2, r1
    1142:	6003      	str	r3, [r0, #0]
    1144:	1a8b      	subs	r3, r1, r2
    1146:	4252      	negs	r2, r2
    1148:	1a52      	subs	r2, r2, r1
    114a:	6043      	str	r3, [r0, #4]
    114c:	6082      	str	r2, [r0, #8]
    114e:	e7e0      	b.n	1112 <svpwm+0x1b2>
    1150:	4b3d      	ldr	r3, [pc, #244]	; (1248 <svpwm+0x2e8>)
    1152:	4a3b      	ldr	r2, [pc, #236]	; (1240 <svpwm+0x2e0>)
    1154:	1b5b      	subs	r3, r3, r5
    1156:	059b      	lsls	r3, r3, #22
    1158:	0d1b      	lsrs	r3, r3, #20
    115a:	589f      	ldr	r7, [r3, r2]
    115c:	4b3b      	ldr	r3, [pc, #236]	; (124c <svpwm+0x2ec>)
    115e:	434f      	muls	r7, r1
    1160:	469c      	mov	ip, r3
    1162:	4465      	add	r5, ip
    1164:	05ad      	lsls	r5, r5, #22
    1166:	0d2d      	lsrs	r5, r5, #20
    1168:	58ac      	ldr	r4, [r5, r2]
    116a:	12bf      	asrs	r7, r7, #10
    116c:	4361      	muls	r1, r4
    116e:	1289      	asrs	r1, r1, #10
    1170:	1a7b      	subs	r3, r7, r1
    1172:	6003      	str	r3, [r0, #0]
    1174:	187b      	adds	r3, r7, r1
    1176:	427f      	negs	r7, r7
    1178:	1a7f      	subs	r7, r7, r1
    117a:	6043      	str	r3, [r0, #4]
    117c:	6087      	str	r7, [r0, #8]
    117e:	e7c8      	b.n	1112 <svpwm+0x1b2>
    1180:	4b33      	ldr	r3, [pc, #204]	; (1250 <svpwm+0x2f0>)
    1182:	4a2f      	ldr	r2, [pc, #188]	; (1240 <svpwm+0x2e0>)
    1184:	1b5b      	subs	r3, r3, r5
    1186:	35ac      	adds	r5, #172	; 0xac
    1188:	059b      	lsls	r3, r3, #22
    118a:	35ff      	adds	r5, #255	; 0xff
    118c:	0d1b      	lsrs	r3, r3, #20
    118e:	05ad      	lsls	r5, r5, #22
    1190:	589b      	ldr	r3, [r3, r2]
    1192:	0d2d      	lsrs	r5, r5, #20
    1194:	58ac      	ldr	r4, [r5, r2]
    1196:	434b      	muls	r3, r1
    1198:	4361      	muls	r1, r4
    119a:	129b      	asrs	r3, r3, #10
    119c:	1289      	asrs	r1, r1, #10
    119e:	425a      	negs	r2, r3
    11a0:	1a52      	subs	r2, r2, r1
    11a2:	6002      	str	r2, [r0, #0]
    11a4:	185a      	adds	r2, r3, r1
    11a6:	1ac9      	subs	r1, r1, r3
    11a8:	6042      	str	r2, [r0, #4]
    11aa:	6081      	str	r1, [r0, #8]
    11ac:	e7b1      	b.n	1112 <svpwm+0x1b2>
    11ae:	4b29      	ldr	r3, [pc, #164]	; (1254 <svpwm+0x2f4>)
    11b0:	4a23      	ldr	r2, [pc, #140]	; (1240 <svpwm+0x2e0>)
    11b2:	1b5b      	subs	r3, r3, r5
    11b4:	3501      	adds	r5, #1
    11b6:	059b      	lsls	r3, r3, #22
    11b8:	35ff      	adds	r5, #255	; 0xff
    11ba:	0d1b      	lsrs	r3, r3, #20
    11bc:	05ad      	lsls	r5, r5, #22
    11be:	589b      	ldr	r3, [r3, r2]
    11c0:	0d2d      	lsrs	r5, r5, #20
    11c2:	58ac      	ldr	r4, [r5, r2]
    11c4:	434b      	muls	r3, r1
    11c6:	434c      	muls	r4, r1
    11c8:	129b      	asrs	r3, r3, #10
    11ca:	12a1      	asrs	r1, r4, #10
    11cc:	425a      	negs	r2, r3
    11ce:	1a52      	subs	r2, r2, r1
    11d0:	6002      	str	r2, [r0, #0]
    11d2:	1a5a      	subs	r2, r3, r1
    11d4:	1859      	adds	r1, r3, r1
    11d6:	6042      	str	r2, [r0, #4]
    11d8:	6081      	str	r1, [r0, #8]
    11da:	e79a      	b.n	1112 <svpwm+0x1b2>
    11dc:	4b1e      	ldr	r3, [pc, #120]	; (1258 <svpwm+0x2f8>)
    11de:	4a18      	ldr	r2, [pc, #96]	; (1240 <svpwm+0x2e0>)
    11e0:	1b5b      	subs	r3, r3, r5
    11e2:	3d55      	subs	r5, #85	; 0x55
    11e4:	059b      	lsls	r3, r3, #22
    11e6:	05ad      	lsls	r5, r5, #22
    11e8:	0d1b      	lsrs	r3, r3, #20
    11ea:	0d2d      	lsrs	r5, r5, #20
    11ec:	589b      	ldr	r3, [r3, r2]
    11ee:	58ac      	ldr	r4, [r5, r2]
    11f0:	434b      	muls	r3, r1
    11f2:	4361      	muls	r1, r4
    11f4:	129b      	asrs	r3, r3, #10
    11f6:	1289      	asrs	r1, r1, #10
    11f8:	185a      	adds	r2, r3, r1
    11fa:	6002      	str	r2, [r0, #0]
    11fc:	425a      	negs	r2, r3
    11fe:	1a52      	subs	r2, r2, r1
    1200:	1a59      	subs	r1, r3, r1
    1202:	6042      	str	r2, [r0, #4]
    1204:	6081      	str	r1, [r0, #8]
    1206:	e784      	b.n	1112 <svpwm+0x1b2>
    1208:	69f3      	ldr	r3, [r6, #28]
    120a:	11cc      	asrs	r4, r1, #7
    120c:	1b3f      	subs	r7, r7, r4
    120e:	1aed      	subs	r5, r5, r3
    1210:	e71c      	b.n	104c <svpwm+0xec>
    1212:	2300      	movs	r3, #0
    1214:	e71b      	b.n	104e <svpwm+0xee>
    1216:	0027      	movs	r7, r4
    1218:	2301      	movs	r3, #1
    121a:	e718      	b.n	104e <svpwm+0xee>
    121c:	2302      	movs	r3, #2
    121e:	e716      	b.n	104e <svpwm+0xee>
    1220:	001f      	movs	r7, r3
    1222:	2303      	movs	r3, #3
    1224:	e713      	b.n	104e <svpwm+0xee>
    1226:	2304      	movs	r3, #4
    1228:	e711      	b.n	104e <svpwm+0xee>
    122a:	001f      	movs	r7, r3
    122c:	2305      	movs	r3, #5
    122e:	e70e      	b.n	104e <svpwm+0xee>
    1230:	2306      	movs	r3, #6
    1232:	e70c      	b.n	104e <svpwm+0xee>
    1234:	00002350 	.word	0x00002350
    1238:	00002338 	.word	0x00002338
    123c:	00000a54 	.word	0x00000a54
    1240:	00001338 	.word	0x00001338
    1244:	000007aa 	.word	0x000007aa
    1248:	00000854 	.word	0x00000854
    124c:	00000256 	.word	0x00000256
    1250:	000008ff 	.word	0x000008ff
    1254:	000009aa 	.word	0x000009aa
    1258:	00000aff 	.word	0x00000aff

0000125c <get_speed>:
    125c:	4a0f      	ldr	r2, [pc, #60]	; (129c <get_speed+0x40>)
    125e:	b510      	push	{r4, lr}
    1260:	6813      	ldr	r3, [r2, #0]
    1262:	6854      	ldr	r4, [r2, #4]
    1264:	1ac3      	subs	r3, r0, r3
    1266:	6050      	str	r0, [r2, #4]
    1268:	6014      	str	r4, [r2, #0]
    126a:	17da      	asrs	r2, r3, #31
    126c:	1898      	adds	r0, r3, r2
    126e:	4050      	eors	r0, r2
    1270:	22fa      	movs	r2, #250	; 0xfa
    1272:	0092      	lsls	r2, r2, #2
    1274:	4290      	cmp	r0, r2
    1276:	dd04      	ble.n	1282 <get_speed+0x26>
    1278:	2b00      	cmp	r3, #0
    127a:	db0a      	blt.n	1292 <get_speed+0x36>
    127c:	4a08      	ldr	r2, [pc, #32]	; (12a0 <get_speed+0x44>)
    127e:	4694      	mov	ip, r2
    1280:	4463      	add	r3, ip
    1282:	680a      	ldr	r2, [r1, #0]
    1284:	4807      	ldr	r0, [pc, #28]	; (12a4 <get_speed+0x48>)
    1286:	18d2      	adds	r2, r2, r3
    1288:	105b      	asrs	r3, r3, #1
    128a:	4343      	muls	r3, r0
    128c:	600a      	str	r2, [r1, #0]
    128e:	1318      	asrs	r0, r3, #12
    1290:	bd10      	pop	{r4, pc}
    1292:	2280      	movs	r2, #128	; 0x80
    1294:	0152      	lsls	r2, r2, #5
    1296:	4694      	mov	ip, r2
    1298:	4463      	add	r3, ip
    129a:	e7f2      	b.n	1282 <get_speed+0x26>
    129c:	20000010 	.word	0x20000010
    12a0:	fffff000 	.word	0xfffff000
    12a4:	0002ae7c 	.word	0x0002ae7c

000012a8 <mfilter>:
    12a8:	221f      	movs	r2, #31
    12aa:	4908      	ldr	r1, [pc, #32]	; (12cc <mfilter+0x24>)
    12ac:	b510      	push	{r4, lr}
    12ae:	688b      	ldr	r3, [r1, #8]
    12b0:	3301      	adds	r3, #1
    12b2:	4013      	ands	r3, r2
    12b4:	608b      	str	r3, [r1, #8]
    12b6:	009b      	lsls	r3, r3, #2
    12b8:	18cb      	adds	r3, r1, r3
    12ba:	68ca      	ldr	r2, [r1, #12]
    12bc:	691c      	ldr	r4, [r3, #16]
    12be:	6118      	str	r0, [r3, #16]
    12c0:	1b12      	subs	r2, r2, r4
    12c2:	1812      	adds	r2, r2, r0
    12c4:	1150      	asrs	r0, r2, #5
    12c6:	60ca      	str	r2, [r1, #12]
    12c8:	bd10      	pop	{r4, pc}
    12ca:	46c0      	nop			; (mov r8, r8)
    12cc:	20000010 	.word	0x20000010

000012d0 <handler_reset>:
    12d0:	b580      	push	{r7, lr}
    12d2:	b082      	sub	sp, #8
    12d4:	af00      	add	r7, sp, #0
    12d6:	4b11      	ldr	r3, [pc, #68]	; (131c <handler_reset+0x4c>)
    12d8:	607b      	str	r3, [r7, #4]
    12da:	4b11      	ldr	r3, [pc, #68]	; (1320 <handler_reset+0x50>)
    12dc:	603b      	str	r3, [r7, #0]
    12de:	e007      	b.n	12f0 <handler_reset+0x20>
    12e0:	683b      	ldr	r3, [r7, #0]
    12e2:	1d1a      	adds	r2, r3, #4
    12e4:	603a      	str	r2, [r7, #0]
    12e6:	687a      	ldr	r2, [r7, #4]
    12e8:	1d11      	adds	r1, r2, #4
    12ea:	6079      	str	r1, [r7, #4]
    12ec:	6812      	ldr	r2, [r2, #0]
    12ee:	601a      	str	r2, [r3, #0]
    12f0:	683a      	ldr	r2, [r7, #0]
    12f2:	4b0c      	ldr	r3, [pc, #48]	; (1324 <handler_reset+0x54>)
    12f4:	429a      	cmp	r2, r3
    12f6:	d3f3      	bcc.n	12e0 <handler_reset+0x10>
    12f8:	4b0b      	ldr	r3, [pc, #44]	; (1328 <handler_reset+0x58>)
    12fa:	603b      	str	r3, [r7, #0]
    12fc:	e004      	b.n	1308 <handler_reset+0x38>
    12fe:	683b      	ldr	r3, [r7, #0]
    1300:	1d1a      	adds	r2, r3, #4
    1302:	603a      	str	r2, [r7, #0]
    1304:	2200      	movs	r2, #0
    1306:	601a      	str	r2, [r3, #0]
    1308:	683a      	ldr	r2, [r7, #0]
    130a:	4b08      	ldr	r3, [pc, #32]	; (132c <handler_reset+0x5c>)
    130c:	429a      	cmp	r2, r3
    130e:	d3f6      	bcc.n	12fe <handler_reset+0x2e>
    1310:	f7ff f9c8 	bl	6a4 <main>
    1314:	46c0      	nop			; (mov r8, r8)
    1316:	46bd      	mov	sp, r7
    1318:	b002      	add	sp, #8
    131a:	bd80      	pop	{r7, pc}
    131c:	00002390 	.word	0x00002390
    1320:	20000000 	.word	0x20000000
    1324:	20000004 	.word	0x20000004
    1328:	20000004 	.word	0x20000004
    132c:	200000a0 	.word	0x200000a0

00001330 <default_handler>:
    1330:	b580      	push	{r7, lr}
    1332:	af00      	add	r7, sp, #0
    1334:	e7fe      	b.n	1334 <default_handler+0x4>
    1336:	46c0      	nop			; (mov r8, r8)

00001338 <cos_tb>:
    1338:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    1348:	0400 0000 0400 0000 03ff 0000 03ff 0000     ................
    1358:	03ff 0000 03fe 0000 03fe 0000 03fe 0000     ................
    1368:	03fd 0000 03fd 0000 03fc 0000 03fc 0000     ................
    1378:	03fb 0000 03fa 0000 03fa 0000 03f9 0000     ................
    1388:	03f8 0000 03f8 0000 03f7 0000 03f6 0000     ................
    1398:	03f5 0000 03f4 0000 03f3 0000 03f2 0000     ................
    13a8:	03f1 0000 03f0 0000 03ef 0000 03ee 0000     ................
    13b8:	03ec 0000 03eb 0000 03ea 0000 03e8 0000     ................
    13c8:	03e7 0000 03e6 0000 03e4 0000 03e3 0000     ................
    13d8:	03e1 0000 03e0 0000 03de 0000 03dd 0000     ................
    13e8:	03db 0000 03d9 0000 03d7 0000 03d6 0000     ................
    13f8:	03d4 0000 03d2 0000 03d0 0000 03ce 0000     ................
    1408:	03cc 0000 03ca 0000 03c8 0000 03c6 0000     ................
    1418:	03c4 0000 03c2 0000 03c0 0000 03be 0000     ................
    1428:	03bb 0000 03b9 0000 03b7 0000 03b4 0000     ................
    1438:	03b2 0000 03b0 0000 03ad 0000 03ab 0000     ................
    1448:	03a8 0000 03a6 0000 03a3 0000 03a0 0000     ................
    1458:	039e 0000 039b 0000 0398 0000 0395 0000     ................
    1468:	0393 0000 0390 0000 038d 0000 038a 0000     ................
    1478:	0387 0000 0384 0000 0381 0000 037e 0000     ............~...
    1488:	037b 0000 0378 0000 0375 0000 0372 0000     {...x...u...r...
    1498:	036e 0000 036b 0000 0368 0000 0364 0000     n...k...h...d...
    14a8:	0361 0000 035e 0000 035a 0000 0357 0000     a...^...Z...W...
    14b8:	0353 0000 0350 0000 034c 0000 0349 0000     S...P...L...I...
    14c8:	0345 0000 0342 0000 033e 0000 033a 0000     E...B...>...:...
    14d8:	0336 0000 0333 0000 032f 0000 032b 0000     6...3.../...+...
    14e8:	0327 0000 0323 0000 031f 0000 031c 0000     '...#...........
    14f8:	0318 0000 0314 0000 0310 0000 030b 0000     ................
    1508:	0307 0000 0303 0000 02ff 0000 02fb 0000     ................
    1518:	02f7 0000 02f3 0000 02ee 0000 02ea 0000     ................
    1528:	02e6 0000 02e1 0000 02dd 0000 02d9 0000     ................
    1538:	02d4 0000 02d0 0000 02cb 0000 02c7 0000     ................
    1548:	02c2 0000 02be 0000 02b9 0000 02b4 0000     ................
    1558:	02b0 0000 02ab 0000 02a6 0000 02a2 0000     ................
    1568:	029d 0000 0298 0000 0293 0000 028e 0000     ................
    1578:	028a 0000 0285 0000 0280 0000 027b 0000     ............{...
    1588:	0276 0000 0271 0000 026c 0000 0267 0000     v...q...l...g...
    1598:	0262 0000 025d 0000 0258 0000 0253 0000     b...]...X...S...
    15a8:	024e 0000 0248 0000 0243 0000 023e 0000     N...H...C...>...
    15b8:	0239 0000 0234 0000 022e 0000 0229 0000     9...4.......)...
    15c8:	0224 0000 021f 0000 0219 0000 0214 0000     $...............
    15d8:	020e 0000 0209 0000 0204 0000 01fe 0000     ................
    15e8:	01f9 0000 01f3 0000 01ee 0000 01e8 0000     ................
    15f8:	01e3 0000 01dd 0000 01d8 0000 01d2 0000     ................
    1608:	01cc 0000 01c7 0000 01c1 0000 01bb 0000     ................
    1618:	01b6 0000 01b0 0000 01aa 0000 01a5 0000     ................
    1628:	019f 0000 0199 0000 0193 0000 018e 0000     ................
    1638:	0188 0000 0182 0000 017c 0000 0176 0000     ........|...v...
    1648:	0171 0000 016b 0000 0165 0000 015f 0000     q...k...e..._...
    1658:	0159 0000 0153 0000 014d 0000 0147 0000     Y...S...M...G...
    1668:	0141 0000 013b 0000 0135 0000 012f 0000     A...;...5.../...
    1678:	0129 0000 0123 0000 011d 0000 0117 0000     )...#...........
    1688:	0111 0000 010b 0000 0105 0000 00ff 0000     ................
    1698:	00f9 0000 00f3 0000 00ed 0000 00e6 0000     ................
    16a8:	00e0 0000 00da 0000 00d4 0000 00ce 0000     ................
    16b8:	00c8 0000 00c2 0000 00bb 0000 00b5 0000     ................
    16c8:	00af 0000 00a9 0000 00a3 0000 009c 0000     ................
    16d8:	0096 0000 0090 0000 008a 0000 0084 0000     ................
    16e8:	007d 0000 0077 0000 0071 0000 006b 0000     }...w...q...k...
    16f8:	0064 0000 005e 0000 0058 0000 0052 0000     d...^...X...R...
    1708:	004b 0000 0045 0000 003f 0000 0039 0000     K...E...?...9...
    1718:	0032 0000 002c 0000 0026 0000 001f 0000     2...,...&.......
    1728:	0019 0000 0013 0000 000d 0000 0006 0000     ................
    1738:	0000 0000 fffa ffff fff3 ffff ffed ffff     ................
    1748:	ffe7 ffff ffe1 ffff ffda ffff ffd4 ffff     ................
    1758:	ffce ffff ffc7 ffff ffc1 ffff ffbb ffff     ................
    1768:	ffb5 ffff ffae ffff ffa8 ffff ffa2 ffff     ................
    1778:	ff9c ffff ff95 ffff ff8f ffff ff89 ffff     ................
    1788:	ff83 ffff ff7c ffff ff76 ffff ff70 ffff     ....|...v...p...
    1798:	ff6a ffff ff64 ffff ff5d ffff ff57 ffff     j...d...]...W...
    17a8:	ff51 ffff ff4b ffff ff45 ffff ff3e ffff     Q...K...E...>...
    17b8:	ff38 ffff ff32 ffff ff2c ffff ff26 ffff     8...2...,...&...
    17c8:	ff20 ffff ff1a ffff ff13 ffff ff0d ffff      ...............
    17d8:	ff07 ffff ff01 ffff fefb ffff fef5 ffff     ................
    17e8:	feef ffff fee9 ffff fee3 ffff fedd ffff     ................
    17f8:	fed7 ffff fed1 ffff fecb ffff fec5 ffff     ................
    1808:	febf ffff feb9 ffff feb3 ffff fead ffff     ................
    1818:	fea7 ffff fea1 ffff fe9b ffff fe95 ffff     ................
    1828:	fe8f ffff fe8a ffff fe84 ffff fe7e ffff     ............~...
    1838:	fe78 ffff fe72 ffff fe6d ffff fe67 ffff     x...r...m...g...
    1848:	fe61 ffff fe5b ffff fe56 ffff fe50 ffff     a...[...V...P...
    1858:	fe4a ffff fe45 ffff fe3f ffff fe39 ffff     J...E...?...9...
    1868:	fe34 ffff fe2e ffff fe28 ffff fe23 ffff     4.......(...#...
    1878:	fe1d ffff fe18 ffff fe12 ffff fe0d ffff     ................
    1888:	fe07 ffff fe02 ffff fdfc ffff fdf7 ffff     ................
    1898:	fdf2 ffff fdec ffff fde7 ffff fde1 ffff     ................
    18a8:	fddc ffff fdd7 ffff fdd2 ffff fdcc ffff     ................
    18b8:	fdc7 ffff fdc2 ffff fdbd ffff fdb8 ffff     ................
    18c8:	fdb2 ffff fdad ffff fda8 ffff fda3 ffff     ................
    18d8:	fd9e ffff fd99 ffff fd94 ffff fd8f ffff     ................
    18e8:	fd8a ffff fd85 ffff fd80 ffff fd7b ffff     ............{...
    18f8:	fd76 ffff fd72 ffff fd6d ffff fd68 ffff     v...r...m...h...
    1908:	fd63 ffff fd5e ffff fd5a ffff fd55 ffff     c...^...Z...U...
    1918:	fd50 ffff fd4c ffff fd47 ffff fd42 ffff     P...L...G...B...
    1928:	fd3e ffff fd39 ffff fd35 ffff fd30 ffff     >...9...5...0...
    1938:	fd2c ffff fd27 ffff fd23 ffff fd1f ffff     ,...'...#.......
    1948:	fd1a ffff fd16 ffff fd12 ffff fd0d ffff     ................
    1958:	fd09 ffff fd05 ffff fd01 ffff fcfd ffff     ................
    1968:	fcf9 ffff fcf5 ffff fcf0 ffff fcec ffff     ................
    1978:	fce8 ffff fce4 ffff fce1 ffff fcdd ffff     ................
    1988:	fcd9 ffff fcd5 ffff fcd1 ffff fccd ffff     ................
    1998:	fcca ffff fcc6 ffff fcc2 ffff fcbe ffff     ................
    19a8:	fcbb ffff fcb7 ffff fcb4 ffff fcb0 ffff     ................
    19b8:	fcad ffff fca9 ffff fca6 ffff fca2 ffff     ................
    19c8:	fc9f ffff fc9c ffff fc98 ffff fc95 ffff     ................
    19d8:	fc92 ffff fc8e ffff fc8b ffff fc88 ffff     ................
    19e8:	fc85 ffff fc82 ffff fc7f ffff fc7c ffff     ............|...
    19f8:	fc79 ffff fc76 ffff fc73 ffff fc70 ffff     y...v...s...p...
    1a08:	fc6d ffff fc6b ffff fc68 ffff fc65 ffff     m...k...h...e...
    1a18:	fc62 ffff fc60 ffff fc5d ffff fc5a ffff     b...`...]...Z...
    1a28:	fc58 ffff fc55 ffff fc53 ffff fc50 ffff     X...U...S...P...
    1a38:	fc4e ffff fc4c ffff fc49 ffff fc47 ffff     N...L...I...G...
    1a48:	fc45 ffff fc42 ffff fc40 ffff fc3e ffff     E...B...@...>...
    1a58:	fc3c ffff fc3a ffff fc38 ffff fc36 ffff     <...:...8...6...
    1a68:	fc34 ffff fc32 ffff fc30 ffff fc2e ffff     4...2...0.......
    1a78:	fc2c ffff fc2a ffff fc29 ffff fc27 ffff     ,...*...)...'...
    1a88:	fc25 ffff fc23 ffff fc22 ffff fc20 ffff     %...#..."... ...
    1a98:	fc1f ffff fc1d ffff fc1c ffff fc1a ffff     ................
    1aa8:	fc19 ffff fc18 ffff fc16 ffff fc15 ffff     ................
    1ab8:	fc14 ffff fc12 ffff fc11 ffff fc10 ffff     ................
    1ac8:	fc0f ffff fc0e ffff fc0d ffff fc0c ffff     ................
    1ad8:	fc0b ffff fc0a ffff fc09 ffff fc08 ffff     ................
    1ae8:	fc08 ffff fc07 ffff fc06 ffff fc06 ffff     ................
    1af8:	fc05 ffff fc04 ffff fc04 ffff fc03 ffff     ................
    1b08:	fc03 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1b18:	fc01 ffff fc01 ffff fc01 ffff fc00 ffff     ................
    1b28:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1b38:	fc00 ffff fc00 ffff fc00 ffff fc00 ffff     ................
    1b48:	fc00 ffff fc00 ffff fc01 ffff fc01 ffff     ................
    1b58:	fc01 ffff fc02 ffff fc02 ffff fc02 ffff     ................
    1b68:	fc03 ffff fc03 ffff fc04 ffff fc04 ffff     ................
    1b78:	fc05 ffff fc06 ffff fc06 ffff fc07 ffff     ................
    1b88:	fc08 ffff fc08 ffff fc09 ffff fc0a ffff     ................
    1b98:	fc0b ffff fc0c ffff fc0d ffff fc0e ffff     ................
    1ba8:	fc0f ffff fc10 ffff fc11 ffff fc12 ffff     ................
    1bb8:	fc14 ffff fc15 ffff fc16 ffff fc18 ffff     ................
    1bc8:	fc19 ffff fc1a ffff fc1c ffff fc1d ffff     ................
    1bd8:	fc1f ffff fc20 ffff fc22 ffff fc23 ffff     .... ..."...#...
    1be8:	fc25 ffff fc27 ffff fc29 ffff fc2a ffff     %...'...)...*...
    1bf8:	fc2c ffff fc2e ffff fc30 ffff fc32 ffff     ,.......0...2...
    1c08:	fc34 ffff fc36 ffff fc38 ffff fc3a ffff     4...6...8...:...
    1c18:	fc3c ffff fc3e ffff fc40 ffff fc42 ffff     <...>...@...B...
    1c28:	fc45 ffff fc47 ffff fc49 ffff fc4c ffff     E...G...I...L...
    1c38:	fc4e ffff fc50 ffff fc53 ffff fc55 ffff     N...P...S...U...
    1c48:	fc58 ffff fc5a ffff fc5d ffff fc60 ffff     X...Z...]...`...
    1c58:	fc62 ffff fc65 ffff fc68 ffff fc6b ffff     b...e...h...k...
    1c68:	fc6d ffff fc70 ffff fc73 ffff fc76 ffff     m...p...s...v...
    1c78:	fc79 ffff fc7c ffff fc7f ffff fc82 ffff     y...|...........
    1c88:	fc85 ffff fc88 ffff fc8b ffff fc8e ffff     ................
    1c98:	fc92 ffff fc95 ffff fc98 ffff fc9c ffff     ................
    1ca8:	fc9f ffff fca2 ffff fca6 ffff fca9 ffff     ................
    1cb8:	fcad ffff fcb0 ffff fcb4 ffff fcb7 ffff     ................
    1cc8:	fcbb ffff fcbe ffff fcc2 ffff fcc6 ffff     ................
    1cd8:	fcca ffff fccd ffff fcd1 ffff fcd5 ffff     ................
    1ce8:	fcd9 ffff fcdd ffff fce1 ffff fce4 ffff     ................
    1cf8:	fce8 ffff fcec ffff fcf0 ffff fcf5 ffff     ................
    1d08:	fcf9 ffff fcfd ffff fd01 ffff fd05 ffff     ................
    1d18:	fd09 ffff fd0d ffff fd12 ffff fd16 ffff     ................
    1d28:	fd1a ffff fd1f ffff fd23 ffff fd27 ffff     ........#...'...
    1d38:	fd2c ffff fd30 ffff fd35 ffff fd39 ffff     ,...0...5...9...
    1d48:	fd3e ffff fd42 ffff fd47 ffff fd4c ffff     >...B...G...L...
    1d58:	fd50 ffff fd55 ffff fd5a ffff fd5e ffff     P...U...Z...^...
    1d68:	fd63 ffff fd68 ffff fd6d ffff fd72 ffff     c...h...m...r...
    1d78:	fd76 ffff fd7b ffff fd80 ffff fd85 ffff     v...{...........
    1d88:	fd8a ffff fd8f ffff fd94 ffff fd99 ffff     ................
    1d98:	fd9e ffff fda3 ffff fda8 ffff fdad ffff     ................
    1da8:	fdb2 ffff fdb8 ffff fdbd ffff fdc2 ffff     ................
    1db8:	fdc7 ffff fdcc ffff fdd2 ffff fdd7 ffff     ................
    1dc8:	fddc ffff fde1 ffff fde7 ffff fdec ffff     ................
    1dd8:	fdf2 ffff fdf7 ffff fdfc ffff fe02 ffff     ................
    1de8:	fe07 ffff fe0d ffff fe12 ffff fe18 ffff     ................
    1df8:	fe1d ffff fe23 ffff fe28 ffff fe2e ffff     ....#...(.......
    1e08:	fe34 ffff fe39 ffff fe3f ffff fe45 ffff     4...9...?...E...
    1e18:	fe4a ffff fe50 ffff fe56 ffff fe5b ffff     J...P...V...[...
    1e28:	fe61 ffff fe67 ffff fe6d ffff fe72 ffff     a...g...m...r...
    1e38:	fe78 ffff fe7e ffff fe84 ffff fe8a ffff     x...~...........
    1e48:	fe8f ffff fe95 ffff fe9b ffff fea1 ffff     ................
    1e58:	fea7 ffff fead ffff feb3 ffff feb9 ffff     ................
    1e68:	febf ffff fec5 ffff fecb ffff fed1 ffff     ................
    1e78:	fed7 ffff fedd ffff fee3 ffff fee9 ffff     ................
    1e88:	feef ffff fef5 ffff fefb ffff ff01 ffff     ................
    1e98:	ff07 ffff ff0d ffff ff13 ffff ff1a ffff     ................
    1ea8:	ff20 ffff ff26 ffff ff2c ffff ff32 ffff      ...&...,...2...
    1eb8:	ff38 ffff ff3e ffff ff45 ffff ff4b ffff     8...>...E...K...
    1ec8:	ff51 ffff ff57 ffff ff5d ffff ff64 ffff     Q...W...]...d...
    1ed8:	ff6a ffff ff70 ffff ff76 ffff ff7c ffff     j...p...v...|...
    1ee8:	ff83 ffff ff89 ffff ff8f ffff ff95 ffff     ................
    1ef8:	ff9c ffff ffa2 ffff ffa8 ffff ffae ffff     ................
    1f08:	ffb5 ffff ffbb ffff ffc1 ffff ffc7 ffff     ................
    1f18:	ffce ffff ffd4 ffff ffda ffff ffe1 ffff     ................
    1f28:	ffe7 ffff ffed ffff fff3 ffff fffa ffff     ................
    1f38:	0000 0000 0006 0000 000d 0000 0013 0000     ................
    1f48:	0019 0000 001f 0000 0026 0000 002c 0000     ........&...,...
    1f58:	0032 0000 0039 0000 003f 0000 0045 0000     2...9...?...E...
    1f68:	004b 0000 0052 0000 0058 0000 005e 0000     K...R...X...^...
    1f78:	0064 0000 006b 0000 0071 0000 0077 0000     d...k...q...w...
    1f88:	007d 0000 0084 0000 008a 0000 0090 0000     }...............
    1f98:	0096 0000 009c 0000 00a3 0000 00a9 0000     ................
    1fa8:	00af 0000 00b5 0000 00bb 0000 00c2 0000     ................
    1fb8:	00c8 0000 00ce 0000 00d4 0000 00da 0000     ................
    1fc8:	00e0 0000 00e6 0000 00ed 0000 00f3 0000     ................
    1fd8:	00f9 0000 00ff 0000 0105 0000 010b 0000     ................
    1fe8:	0111 0000 0117 0000 011d 0000 0123 0000     ............#...
    1ff8:	0129 0000 012f 0000 0135 0000 013b 0000     ).../...5...;...
    2008:	0141 0000 0147 0000 014d 0000 0153 0000     A...G...M...S...
    2018:	0159 0000 015f 0000 0165 0000 016b 0000     Y..._...e...k...
    2028:	0171 0000 0176 0000 017c 0000 0182 0000     q...v...|.......
    2038:	0188 0000 018e 0000 0193 0000 0199 0000     ................
    2048:	019f 0000 01a5 0000 01aa 0000 01b0 0000     ................
    2058:	01b6 0000 01bb 0000 01c1 0000 01c7 0000     ................
    2068:	01cc 0000 01d2 0000 01d8 0000 01dd 0000     ................
    2078:	01e3 0000 01e8 0000 01ee 0000 01f3 0000     ................
    2088:	01f9 0000 01fe 0000 0204 0000 0209 0000     ................
    2098:	020e 0000 0214 0000 0219 0000 021f 0000     ................
    20a8:	0224 0000 0229 0000 022e 0000 0234 0000     $...).......4...
    20b8:	0239 0000 023e 0000 0243 0000 0248 0000     9...>...C...H...
    20c8:	024e 0000 0253 0000 0258 0000 025d 0000     N...S...X...]...
    20d8:	0262 0000 0267 0000 026c 0000 0271 0000     b...g...l...q...
    20e8:	0276 0000 027b 0000 0280 0000 0285 0000     v...{...........
    20f8:	028a 0000 028e 0000 0293 0000 0298 0000     ................
    2108:	029d 0000 02a2 0000 02a6 0000 02ab 0000     ................
    2118:	02b0 0000 02b4 0000 02b9 0000 02be 0000     ................
    2128:	02c2 0000 02c7 0000 02cb 0000 02d0 0000     ................
    2138:	02d4 0000 02d9 0000 02dd 0000 02e1 0000     ................
    2148:	02e6 0000 02ea 0000 02ee 0000 02f3 0000     ................
    2158:	02f7 0000 02fb 0000 02ff 0000 0303 0000     ................
    2168:	0307 0000 030b 0000 0310 0000 0314 0000     ................
    2178:	0318 0000 031c 0000 031f 0000 0323 0000     ............#...
    2188:	0327 0000 032b 0000 032f 0000 0333 0000     '...+.../...3...
    2198:	0336 0000 033a 0000 033e 0000 0342 0000     6...:...>...B...
    21a8:	0345 0000 0349 0000 034c 0000 0350 0000     E...I...L...P...
    21b8:	0353 0000 0357 0000 035a 0000 035e 0000     S...W...Z...^...
    21c8:	0361 0000 0364 0000 0368 0000 036b 0000     a...d...h...k...
    21d8:	036e 0000 0372 0000 0375 0000 0378 0000     n...r...u...x...
    21e8:	037b 0000 037e 0000 0381 0000 0384 0000     {...~...........
    21f8:	0387 0000 038a 0000 038d 0000 0390 0000     ................
    2208:	0393 0000 0395 0000 0398 0000 039b 0000     ................
    2218:	039e 0000 03a0 0000 03a3 0000 03a6 0000     ................
    2228:	03a8 0000 03ab 0000 03ad 0000 03b0 0000     ................
    2238:	03b2 0000 03b4 0000 03b7 0000 03b9 0000     ................
    2248:	03bb 0000 03be 0000 03c0 0000 03c2 0000     ................
    2258:	03c4 0000 03c6 0000 03c8 0000 03ca 0000     ................
    2268:	03cc 0000 03ce 0000 03d0 0000 03d2 0000     ................
    2278:	03d4 0000 03d6 0000 03d7 0000 03d9 0000     ................
    2288:	03db 0000 03dd 0000 03de 0000 03e0 0000     ................
    2298:	03e1 0000 03e3 0000 03e4 0000 03e6 0000     ................
    22a8:	03e7 0000 03e8 0000 03ea 0000 03eb 0000     ................
    22b8:	03ec 0000 03ee 0000 03ef 0000 03f0 0000     ................
    22c8:	03f1 0000 03f2 0000 03f3 0000 03f4 0000     ................
    22d8:	03f5 0000 03f6 0000 03f7 0000 03f8 0000     ................
    22e8:	03f8 0000 03f9 0000 03fa 0000 03fa 0000     ................
    22f8:	03fb 0000 03fc 0000 03fc 0000 03fd 0000     ................
    2308:	03fd 0000 03fe 0000 03fe 0000 03fe 0000     ................
    2318:	03ff 0000 03ff 0000 03ff 0000 0400 0000     ................
    2328:	0400 0000 0400 0000 0400 0000 0400 0000     ................
    2338:	111e 0000 1150 0000 1180 0000 11ae 0000     ....P...........
    2348:	10e8 0000 11dc 0000 0080 0000 004c 0000     ............L...
    2358:	0028 0000 0014 0000 000a 0000 0005 0000     (...............
    2368:	0003 0000 0001 0000 02d4 0000 0288 0000     ................
    2378:	0274 0000 026f 0000 026f 0000 026e 0000     t...o...o...n...
    2388:	026e 0000 026e 0000                         n...n...
