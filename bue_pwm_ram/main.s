
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b0a2      	sub	sp, #136	; 0x88
20100004:	af00      	add	r7, sp, #0
20100006:	2300      	movs	r3, #0
20100008:	67bb      	str	r3, [r7, #120]	; 0x78
2010000a:	2300      	movs	r3, #0
2010000c:	677b      	str	r3, [r7, #116]	; 0x74
2010000e:	2300      	movs	r3, #0
20100010:	2284      	movs	r2, #132	; 0x84
20100012:	18ba      	adds	r2, r7, r2
20100014:	6013      	str	r3, [r2, #0]
20100016:	2300      	movs	r3, #0
20100018:	2280      	movs	r2, #128	; 0x80
2010001a:	18ba      	adds	r2, r7, r2
2010001c:	6013      	str	r3, [r2, #0]
2010001e:	23fa      	movs	r3, #250	; 0xfa
20100020:	009b      	lsls	r3, r3, #2
20100022:	673b      	str	r3, [r7, #112]	; 0x70
20100024:	f000 fb84 	bl	20100730 <SystemInit>
20100028:	23fa      	movs	r3, #250	; 0xfa
2010002a:	009b      	lsls	r3, r3, #2
2010002c:	0018      	movs	r0, r3
2010002e:	f000 fc41 	bl	201008b4 <wait_timer_ticks>
20100032:	f000 fb8f 	bl	20100754 <get_dcA>
20100036:	0003      	movs	r3, r0
20100038:	66fb      	str	r3, [r7, #108]	; 0x6c
2010003a:	f000 fbb5 	bl	201007a8 <get_dcB>
2010003e:	0003      	movs	r3, r0
20100040:	66bb      	str	r3, [r7, #104]	; 0x68
20100042:	2324      	movs	r3, #36	; 0x24
20100044:	18fb      	adds	r3, r7, r3
20100046:	2264      	movs	r2, #100	; 0x64
20100048:	601a      	str	r2, [r3, #0]
2010004a:	2324      	movs	r3, #36	; 0x24
2010004c:	18fb      	adds	r3, r7, r3
2010004e:	22c8      	movs	r2, #200	; 0xc8
20100050:	605a      	str	r2, [r3, #4]
20100052:	2324      	movs	r3, #36	; 0x24
20100054:	18fb      	adds	r3, r7, r3
20100056:	2200      	movs	r2, #0
20100058:	609a      	str	r2, [r3, #8]
2010005a:	2324      	movs	r3, #36	; 0x24
2010005c:	18fb      	adds	r3, r7, r3
2010005e:	2200      	movs	r2, #0
20100060:	60da      	str	r2, [r3, #12]
20100062:	2314      	movs	r3, #20
20100064:	18fb      	adds	r3, r7, r3
20100066:	2264      	movs	r2, #100	; 0x64
20100068:	601a      	str	r2, [r3, #0]
2010006a:	2314      	movs	r3, #20
2010006c:	18fb      	adds	r3, r7, r3
2010006e:	22c8      	movs	r2, #200	; 0xc8
20100070:	605a      	str	r2, [r3, #4]
20100072:	2314      	movs	r3, #20
20100074:	18fb      	adds	r3, r7, r3
20100076:	2200      	movs	r2, #0
20100078:	609a      	str	r2, [r3, #8]
2010007a:	2314      	movs	r3, #20
2010007c:	18fb      	adds	r3, r7, r3
2010007e:	2200      	movs	r2, #0
20100080:	60da      	str	r2, [r3, #12]
20100082:	1d3b      	adds	r3, r7, #4
20100084:	2200      	movs	r2, #0
20100086:	601a      	str	r2, [r3, #0]
20100088:	1d3b      	adds	r3, r7, #4
2010008a:	22fa      	movs	r2, #250	; 0xfa
2010008c:	00d2      	lsls	r2, r2, #3
2010008e:	605a      	str	r2, [r3, #4]
20100090:	1d3b      	adds	r3, r7, #4
20100092:	2200      	movs	r2, #0
20100094:	609a      	str	r2, [r3, #8]
20100096:	1d3b      	adds	r3, r7, #4
20100098:	2200      	movs	r2, #0
2010009a:	60da      	str	r2, [r3, #12]
2010009c:	4b6e      	ldr	r3, [pc, #440]	; (20100258 <main+0x258>)
2010009e:	4a6e      	ldr	r2, [pc, #440]	; (20100258 <main+0x258>)
201000a0:	6812      	ldr	r2, [r2, #0]
201000a2:	2120      	movs	r1, #32
201000a4:	430a      	orrs	r2, r1
201000a6:	601a      	str	r2, [r3, #0]
201000a8:	4b6c      	ldr	r3, [pc, #432]	; (2010025c <main+0x25c>)
201000aa:	4a6d      	ldr	r2, [pc, #436]	; (20100260 <main+0x260>)
201000ac:	609a      	str	r2, [r3, #8]
201000ae:	4b6d      	ldr	r3, [pc, #436]	; (20100264 <main+0x264>)
201000b0:	2237      	movs	r2, #55	; 0x37
201000b2:	601a      	str	r2, [r3, #0]
201000b4:	46c0      	nop			; (mov r8, r8)
201000b6:	4b6b      	ldr	r3, [pc, #428]	; (20100264 <main+0x264>)
201000b8:	6a1b      	ldr	r3, [r3, #32]
201000ba:	2204      	movs	r2, #4
201000bc:	4013      	ands	r3, r2
201000be:	d0fa      	beq.n	201000b6 <main+0xb6>
201000c0:	4b68      	ldr	r3, [pc, #416]	; (20100264 <main+0x264>)
201000c2:	699b      	ldr	r3, [r3, #24]
201000c4:	051b      	lsls	r3, r3, #20
201000c6:	0d1a      	lsrs	r2, r3, #20
201000c8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201000ca:	1ad3      	subs	r3, r2, r3
201000cc:	667b      	str	r3, [r7, #100]	; 0x64
201000ce:	4b65      	ldr	r3, [pc, #404]	; (20100264 <main+0x264>)
201000d0:	2247      	movs	r2, #71	; 0x47
201000d2:	601a      	str	r2, [r3, #0]
201000d4:	46c0      	nop			; (mov r8, r8)
201000d6:	4b63      	ldr	r3, [pc, #396]	; (20100264 <main+0x264>)
201000d8:	6a1b      	ldr	r3, [r3, #32]
201000da:	2204      	movs	r2, #4
201000dc:	4013      	ands	r3, r2
201000de:	d0fa      	beq.n	201000d6 <main+0xd6>
201000e0:	4b60      	ldr	r3, [pc, #384]	; (20100264 <main+0x264>)
201000e2:	699b      	ldr	r3, [r3, #24]
201000e4:	051b      	lsls	r3, r3, #20
201000e6:	0d1a      	lsrs	r2, r3, #20
201000e8:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201000ea:	1ad3      	subs	r3, r2, r3
201000ec:	663b      	str	r3, [r7, #96]	; 0x60
201000ee:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201000f0:	425a      	negs	r2, r3
201000f2:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201000f4:	1ad3      	subs	r3, r2, r3
201000f6:	65fb      	str	r3, [r7, #92]	; 0x5c
201000f8:	46c0      	nop			; (mov r8, r8)
201000fa:	4b5b      	ldr	r3, [pc, #364]	; (20100268 <main+0x268>)
201000fc:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201000fe:	2202      	movs	r2, #2
20100100:	4013      	ands	r3, r2
20100102:	d0fa      	beq.n	201000fa <main+0xfa>
20100104:	4b58      	ldr	r3, [pc, #352]	; (20100268 <main+0x268>)
20100106:	2200      	movs	r2, #0
20100108:	655a      	str	r2, [r3, #84]	; 0x54
2010010a:	4b53      	ldr	r3, [pc, #332]	; (20100258 <main+0x258>)
2010010c:	4a52      	ldr	r2, [pc, #328]	; (20100258 <main+0x258>)
2010010e:	6812      	ldr	r2, [r2, #0]
20100110:	2120      	movs	r1, #32
20100112:	438a      	bics	r2, r1
20100114:	601a      	str	r2, [r3, #0]
20100116:	4b51      	ldr	r3, [pc, #324]	; (2010025c <main+0x25c>)
20100118:	689b      	ldr	r3, [r3, #8]
2010011a:	051b      	lsls	r3, r3, #20
2010011c:	0d1b      	lsrs	r3, r3, #20
2010011e:	0018      	movs	r0, r3
20100120:	f000 faee 	bl	20100700 <g2b>
20100124:	0003      	movs	r3, r0
20100126:	65bb      	str	r3, [r7, #88]	; 0x58
20100128:	2380      	movs	r3, #128	; 0x80
2010012a:	18fb      	adds	r3, r7, r3
2010012c:	681b      	ldr	r3, [r3, #0]
2010012e:	3301      	adds	r3, #1
20100130:	2280      	movs	r2, #128	; 0x80
20100132:	18ba      	adds	r2, r7, r2
20100134:	6013      	str	r3, [r2, #0]
20100136:	2380      	movs	r3, #128	; 0x80
20100138:	18fb      	adds	r3, r7, r3
2010013a:	681b      	ldr	r3, [r3, #0]
2010013c:	2207      	movs	r2, #7
2010013e:	4013      	ands	r3, r2
20100140:	d11b      	bne.n	2010017a <main+0x17a>
20100142:	6dbb      	ldr	r3, [r7, #88]	; 0x58
20100144:	0018      	movs	r0, r3
20100146:	f001 f837 	bl	201011b8 <get_speed>
2010014a:	0003      	movs	r3, r0
2010014c:	657b      	str	r3, [r7, #84]	; 0x54
2010014e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20100150:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20100152:	1ad3      	subs	r3, r2, r3
20100154:	653b      	str	r3, [r7, #80]	; 0x50
20100156:	6d39      	ldr	r1, [r7, #80]	; 0x50
20100158:	1d3b      	adds	r3, r7, #4
2010015a:	2200      	movs	r2, #0
2010015c:	0018      	movs	r0, r3
2010015e:	f000 fbeb 	bl	20100938 <update>
20100162:	1d3b      	adds	r3, r7, #4
20100164:	68db      	ldr	r3, [r3, #12]
20100166:	129b      	asrs	r3, r3, #10
20100168:	67fb      	str	r3, [r7, #124]	; 0x7c
2010016a:	4b40      	ldr	r3, [pc, #256]	; (2010026c <main+0x26c>)
2010016c:	6d7a      	ldr	r2, [r7, #84]	; 0x54
2010016e:	1052      	asrs	r2, r2, #1
20100170:	2180      	movs	r1, #128	; 0x80
20100172:	0109      	lsls	r1, r1, #4
20100174:	468c      	mov	ip, r1
20100176:	4462      	add	r2, ip
20100178:	605a      	str	r2, [r3, #4]
2010017a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
2010017c:	059b      	lsls	r3, r3, #22
2010017e:	0d9b      	lsrs	r3, r3, #22
20100180:	677b      	str	r3, [r7, #116]	; 0x74
20100182:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20100184:	33fa      	adds	r3, #250	; 0xfa
20100186:	059b      	lsls	r3, r3, #22
20100188:	0d9b      	lsrs	r3, r3, #22
2010018a:	677b      	str	r3, [r7, #116]	; 0x74
2010018c:	2334      	movs	r3, #52	; 0x34
2010018e:	18fb      	adds	r3, r7, r3
20100190:	6e7a      	ldr	r2, [r7, #100]	; 0x64
20100192:	601a      	str	r2, [r3, #0]
20100194:	2334      	movs	r3, #52	; 0x34
20100196:	18fb      	adds	r3, r7, r3
20100198:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
2010019a:	605a      	str	r2, [r3, #4]
2010019c:	2334      	movs	r3, #52	; 0x34
2010019e:	18fb      	adds	r3, r7, r3
201001a0:	6e3a      	ldr	r2, [r7, #96]	; 0x60
201001a2:	609a      	str	r2, [r3, #8]
201001a4:	6f7a      	ldr	r2, [r7, #116]	; 0x74
201001a6:	2340      	movs	r3, #64	; 0x40
201001a8:	18f9      	adds	r1, r7, r3
201001aa:	2334      	movs	r3, #52	; 0x34
201001ac:	18fb      	adds	r3, r7, r3
201001ae:	0018      	movs	r0, r3
201001b0:	f000 fbe8 	bl	20100984 <abc_to_dq>
201001b4:	2340      	movs	r3, #64	; 0x40
201001b6:	18fb      	adds	r3, r7, r3
201001b8:	681b      	ldr	r3, [r3, #0]
201001ba:	425b      	negs	r3, r3
201001bc:	64fb      	str	r3, [r7, #76]	; 0x4c
201001be:	2340      	movs	r3, #64	; 0x40
201001c0:	18fb      	adds	r3, r7, r3
201001c2:	685b      	ldr	r3, [r3, #4]
201001c4:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
201001c6:	1ad3      	subs	r3, r2, r3
201001c8:	64bb      	str	r3, [r7, #72]	; 0x48
201001ca:	2384      	movs	r3, #132	; 0x84
201001cc:	18fb      	adds	r3, r7, r3
201001ce:	681a      	ldr	r2, [r3, #0]
201001d0:	6cf9      	ldr	r1, [r7, #76]	; 0x4c
201001d2:	2324      	movs	r3, #36	; 0x24
201001d4:	18fb      	adds	r3, r7, r3
201001d6:	0018      	movs	r0, r3
201001d8:	f000 fbae 	bl	20100938 <update>
201001dc:	2384      	movs	r3, #132	; 0x84
201001de:	18fb      	adds	r3, r7, r3
201001e0:	681a      	ldr	r2, [r3, #0]
201001e2:	6cb9      	ldr	r1, [r7, #72]	; 0x48
201001e4:	2314      	movs	r3, #20
201001e6:	18fb      	adds	r3, r7, r3
201001e8:	0018      	movs	r0, r3
201001ea:	f000 fba5 	bl	20100938 <update>
201001ee:	2324      	movs	r3, #36	; 0x24
201001f0:	18fb      	adds	r3, r7, r3
201001f2:	68da      	ldr	r2, [r3, #12]
201001f4:	2340      	movs	r3, #64	; 0x40
201001f6:	18fb      	adds	r3, r7, r3
201001f8:	601a      	str	r2, [r3, #0]
201001fa:	2314      	movs	r3, #20
201001fc:	18fb      	adds	r3, r7, r3
201001fe:	68da      	ldr	r2, [r3, #12]
20100200:	2340      	movs	r3, #64	; 0x40
20100202:	18fb      	adds	r3, r7, r3
20100204:	605a      	str	r2, [r3, #4]
20100206:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20100208:	2340      	movs	r3, #64	; 0x40
2010020a:	18f9      	adds	r1, r7, r3
2010020c:	2334      	movs	r3, #52	; 0x34
2010020e:	18fb      	adds	r3, r7, r3
20100210:	0018      	movs	r0, r3
20100212:	f000 fe15 	bl	20100e40 <svpwm>
20100216:	0003      	movs	r3, r0
20100218:	2284      	movs	r2, #132	; 0x84
2010021a:	18ba      	adds	r2, r7, r2
2010021c:	6013      	str	r3, [r2, #0]
2010021e:	4a12      	ldr	r2, [pc, #72]	; (20100268 <main+0x268>)
20100220:	2334      	movs	r3, #52	; 0x34
20100222:	18fb      	adds	r3, r7, r3
20100224:	681b      	ldr	r3, [r3, #0]
20100226:	2180      	movs	r1, #128	; 0x80
20100228:	0089      	lsls	r1, r1, #2
2010022a:	468c      	mov	ip, r1
2010022c:	4463      	add	r3, ip
2010022e:	6113      	str	r3, [r2, #16]
20100230:	4a0d      	ldr	r2, [pc, #52]	; (20100268 <main+0x268>)
20100232:	2334      	movs	r3, #52	; 0x34
20100234:	18fb      	adds	r3, r7, r3
20100236:	685b      	ldr	r3, [r3, #4]
20100238:	2180      	movs	r1, #128	; 0x80
2010023a:	0089      	lsls	r1, r1, #2
2010023c:	468c      	mov	ip, r1
2010023e:	4463      	add	r3, ip
20100240:	6153      	str	r3, [r2, #20]
20100242:	4a09      	ldr	r2, [pc, #36]	; (20100268 <main+0x268>)
20100244:	2334      	movs	r3, #52	; 0x34
20100246:	18fb      	adds	r3, r7, r3
20100248:	689b      	ldr	r3, [r3, #8]
2010024a:	2180      	movs	r1, #128	; 0x80
2010024c:	0089      	lsls	r1, r1, #2
2010024e:	468c      	mov	ip, r1
20100250:	4463      	add	r3, ip
20100252:	6193      	str	r3, [r2, #24]
20100254:	e722      	b.n	2010009c <main+0x9c>
20100256:	46c0      	nop			; (mov r8, r8)
20100258:	400b8000 	.word	0x400b8000
2010025c:	400a0000 	.word	0x400a0000
20100260:	00000555 	.word	0x00000555
20100264:	40088000 	.word	0x40088000
20100268:	40098000 	.word	0x40098000
2010026c:	40090000 	.word	0x40090000

20100270 <sleep>:
20100270:	b580      	push	{r7, lr}
20100272:	b084      	sub	sp, #16
20100274:	af00      	add	r7, sp, #0
20100276:	6078      	str	r0, [r7, #4]
20100278:	4b08      	ldr	r3, [pc, #32]	; (2010029c <sleep+0x2c>)
2010027a:	447b      	add	r3, pc
2010027c:	681a      	ldr	r2, [r3, #0]
2010027e:	687b      	ldr	r3, [r7, #4]
20100280:	18d3      	adds	r3, r2, r3
20100282:	60fb      	str	r3, [r7, #12]
20100284:	46c0      	nop			; (mov r8, r8)
20100286:	4b06      	ldr	r3, [pc, #24]	; (201002a0 <sleep+0x30>)
20100288:	447b      	add	r3, pc
2010028a:	681a      	ldr	r2, [r3, #0]
2010028c:	68fb      	ldr	r3, [r7, #12]
2010028e:	429a      	cmp	r2, r3
20100290:	d3f9      	bcc.n	20100286 <sleep+0x16>
20100292:	46c0      	nop			; (mov r8, r8)
20100294:	0018      	movs	r0, r3
20100296:	46bd      	mov	sp, r7
20100298:	b004      	add	sp, #16
2010029a:	bd80      	pop	{r7, pc}
2010029c:	ffeffd96 	.word	0xffeffd96
201002a0:	ffeffd88 	.word	0xffeffd88

201002a4 <PortConfig>:
201002a4:	b580      	push	{r7, lr}
201002a6:	af00      	add	r7, sp, #0
201002a8:	4b45      	ldr	r3, [pc, #276]	; (201003c0 <PortConfig+0x11c>)
201002aa:	4a45      	ldr	r2, [pc, #276]	; (201003c0 <PortConfig+0x11c>)
201002ac:	69d2      	ldr	r2, [r2, #28]
201002ae:	2180      	movs	r1, #128	; 0x80
201002b0:	0389      	lsls	r1, r1, #14
201002b2:	430a      	orrs	r2, r1
201002b4:	61da      	str	r2, [r3, #28]
201002b6:	4b43      	ldr	r3, [pc, #268]	; (201003c4 <PortConfig+0x120>)
201002b8:	4a42      	ldr	r2, [pc, #264]	; (201003c4 <PortConfig+0x120>)
201002ba:	6892      	ldr	r2, [r2, #8]
201002bc:	4942      	ldr	r1, [pc, #264]	; (201003c8 <PortConfig+0x124>)
201002be:	400a      	ands	r2, r1
201002c0:	609a      	str	r2, [r3, #8]
201002c2:	4b40      	ldr	r3, [pc, #256]	; (201003c4 <PortConfig+0x120>)
201002c4:	4a3f      	ldr	r2, [pc, #252]	; (201003c4 <PortConfig+0x120>)
201002c6:	6892      	ldr	r2, [r2, #8]
201002c8:	4940      	ldr	r1, [pc, #256]	; (201003cc <PortConfig+0x128>)
201002ca:	430a      	orrs	r2, r1
201002cc:	609a      	str	r2, [r3, #8]
201002ce:	4b3d      	ldr	r3, [pc, #244]	; (201003c4 <PortConfig+0x120>)
201002d0:	4a3c      	ldr	r2, [pc, #240]	; (201003c4 <PortConfig+0x120>)
201002d2:	6852      	ldr	r2, [r2, #4]
201002d4:	21fc      	movs	r1, #252	; 0xfc
201002d6:	0109      	lsls	r1, r1, #4
201002d8:	430a      	orrs	r2, r1
201002da:	605a      	str	r2, [r3, #4]
201002dc:	4b39      	ldr	r3, [pc, #228]	; (201003c4 <PortConfig+0x120>)
201002de:	4a39      	ldr	r2, [pc, #228]	; (201003c4 <PortConfig+0x120>)
201002e0:	68d2      	ldr	r2, [r2, #12]
201002e2:	21fc      	movs	r1, #252	; 0xfc
201002e4:	0109      	lsls	r1, r1, #4
201002e6:	430a      	orrs	r2, r1
201002e8:	60da      	str	r2, [r3, #12]
201002ea:	4b36      	ldr	r3, [pc, #216]	; (201003c4 <PortConfig+0x120>)
201002ec:	4a35      	ldr	r2, [pc, #212]	; (201003c4 <PortConfig+0x120>)
201002ee:	6992      	ldr	r2, [r2, #24]
201002f0:	4937      	ldr	r1, [pc, #220]	; (201003d0 <PortConfig+0x12c>)
201002f2:	430a      	orrs	r2, r1
201002f4:	619a      	str	r2, [r3, #24]
201002f6:	4b32      	ldr	r3, [pc, #200]	; (201003c0 <PortConfig+0x11c>)
201002f8:	4a31      	ldr	r2, [pc, #196]	; (201003c0 <PortConfig+0x11c>)
201002fa:	69d2      	ldr	r2, [r2, #28]
201002fc:	2180      	movs	r1, #128	; 0x80
201002fe:	0489      	lsls	r1, r1, #18
20100300:	430a      	orrs	r2, r1
20100302:	61da      	str	r2, [r3, #28]
20100304:	4b33      	ldr	r3, [pc, #204]	; (201003d4 <PortConfig+0x130>)
20100306:	4a33      	ldr	r2, [pc, #204]	; (201003d4 <PortConfig+0x130>)
20100308:	68d2      	ldr	r2, [r2, #12]
2010030a:	2102      	movs	r1, #2
2010030c:	438a      	bics	r2, r1
2010030e:	60da      	str	r2, [r3, #12]
20100310:	4b2b      	ldr	r3, [pc, #172]	; (201003c0 <PortConfig+0x11c>)
20100312:	4a2b      	ldr	r2, [pc, #172]	; (201003c0 <PortConfig+0x11c>)
20100314:	69d2      	ldr	r2, [r2, #28]
20100316:	2180      	movs	r1, #128	; 0x80
20100318:	0449      	lsls	r1, r1, #17
2010031a:	430a      	orrs	r2, r1
2010031c:	61da      	str	r2, [r3, #28]
2010031e:	4b2e      	ldr	r3, [pc, #184]	; (201003d8 <PortConfig+0x134>)
20100320:	4a2d      	ldr	r2, [pc, #180]	; (201003d8 <PortConfig+0x134>)
20100322:	68d2      	ldr	r2, [r2, #12]
20100324:	492d      	ldr	r1, [pc, #180]	; (201003dc <PortConfig+0x138>)
20100326:	400a      	ands	r2, r1
20100328:	60da      	str	r2, [r3, #12]
2010032a:	4b2b      	ldr	r3, [pc, #172]	; (201003d8 <PortConfig+0x134>)
2010032c:	4a2a      	ldr	r2, [pc, #168]	; (201003d8 <PortConfig+0x134>)
2010032e:	6892      	ldr	r2, [r2, #8]
20100330:	492b      	ldr	r1, [pc, #172]	; (201003e0 <PortConfig+0x13c>)
20100332:	400a      	ands	r2, r1
20100334:	609a      	str	r2, [r3, #8]
20100336:	4b28      	ldr	r3, [pc, #160]	; (201003d8 <PortConfig+0x134>)
20100338:	4a27      	ldr	r2, [pc, #156]	; (201003d8 <PortConfig+0x134>)
2010033a:	6892      	ldr	r2, [r2, #8]
2010033c:	21a0      	movs	r1, #160	; 0xa0
2010033e:	02c9      	lsls	r1, r1, #11
20100340:	430a      	orrs	r2, r1
20100342:	609a      	str	r2, [r3, #8]
20100344:	4b24      	ldr	r3, [pc, #144]	; (201003d8 <PortConfig+0x134>)
20100346:	4a24      	ldr	r2, [pc, #144]	; (201003d8 <PortConfig+0x134>)
20100348:	68d2      	ldr	r2, [r2, #12]
2010034a:	21c0      	movs	r1, #192	; 0xc0
2010034c:	0089      	lsls	r1, r1, #2
2010034e:	430a      	orrs	r2, r1
20100350:	60da      	str	r2, [r3, #12]
20100352:	4b21      	ldr	r3, [pc, #132]	; (201003d8 <PortConfig+0x134>)
20100354:	4a20      	ldr	r2, [pc, #128]	; (201003d8 <PortConfig+0x134>)
20100356:	6992      	ldr	r2, [r2, #24]
20100358:	21c0      	movs	r1, #192	; 0xc0
2010035a:	0309      	lsls	r1, r1, #12
2010035c:	430a      	orrs	r2, r1
2010035e:	619a      	str	r2, [r3, #24]
20100360:	4b1d      	ldr	r3, [pc, #116]	; (201003d8 <PortConfig+0x134>)
20100362:	4a1d      	ldr	r2, [pc, #116]	; (201003d8 <PortConfig+0x134>)
20100364:	6852      	ldr	r2, [r2, #4]
20100366:	2180      	movs	r1, #128	; 0x80
20100368:	0089      	lsls	r1, r1, #2
2010036a:	430a      	orrs	r2, r1
2010036c:	605a      	str	r2, [r3, #4]
2010036e:	4b1a      	ldr	r3, [pc, #104]	; (201003d8 <PortConfig+0x134>)
20100370:	4a19      	ldr	r2, [pc, #100]	; (201003d8 <PortConfig+0x134>)
20100372:	6852      	ldr	r2, [r2, #4]
20100374:	491b      	ldr	r1, [pc, #108]	; (201003e4 <PortConfig+0x140>)
20100376:	400a      	ands	r2, r1
20100378:	605a      	str	r2, [r3, #4]
2010037a:	4b11      	ldr	r3, [pc, #68]	; (201003c0 <PortConfig+0x11c>)
2010037c:	4a10      	ldr	r2, [pc, #64]	; (201003c0 <PortConfig+0x11c>)
2010037e:	69d2      	ldr	r2, [r2, #28]
20100380:	2180      	movs	r1, #128	; 0x80
20100382:	0409      	lsls	r1, r1, #16
20100384:	430a      	orrs	r2, r1
20100386:	61da      	str	r2, [r3, #28]
20100388:	4b17      	ldr	r3, [pc, #92]	; (201003e8 <PortConfig+0x144>)
2010038a:	2200      	movs	r2, #0
2010038c:	609a      	str	r2, [r3, #8]
2010038e:	4b16      	ldr	r3, [pc, #88]	; (201003e8 <PortConfig+0x144>)
20100390:	2200      	movs	r2, #0
20100392:	601a      	str	r2, [r3, #0]
20100394:	4b14      	ldr	r3, [pc, #80]	; (201003e8 <PortConfig+0x144>)
20100396:	4a14      	ldr	r2, [pc, #80]	; (201003e8 <PortConfig+0x144>)
20100398:	6852      	ldr	r2, [r2, #4]
2010039a:	2120      	movs	r1, #32
2010039c:	430a      	orrs	r2, r1
2010039e:	605a      	str	r2, [r3, #4]
201003a0:	4b11      	ldr	r3, [pc, #68]	; (201003e8 <PortConfig+0x144>)
201003a2:	4a11      	ldr	r2, [pc, #68]	; (201003e8 <PortConfig+0x144>)
201003a4:	68d2      	ldr	r2, [r2, #12]
201003a6:	2120      	movs	r1, #32
201003a8:	430a      	orrs	r2, r1
201003aa:	60da      	str	r2, [r3, #12]
201003ac:	4b0e      	ldr	r3, [pc, #56]	; (201003e8 <PortConfig+0x144>)
201003ae:	4a0e      	ldr	r2, [pc, #56]	; (201003e8 <PortConfig+0x144>)
201003b0:	6992      	ldr	r2, [r2, #24]
201003b2:	21c0      	movs	r1, #192	; 0xc0
201003b4:	0109      	lsls	r1, r1, #4
201003b6:	430a      	orrs	r2, r1
201003b8:	619a      	str	r2, [r3, #24]
201003ba:	46c0      	nop			; (mov r8, r8)
201003bc:	46bd      	mov	sp, r7
201003be:	bd80      	pop	{r7, pc}
201003c0:	40020000 	.word	0x40020000
201003c4:	400a8000 	.word	0x400a8000
201003c8:	ff000fff 	.word	0xff000fff
201003cc:	00aaa000 	.word	0x00aaa000
201003d0:	00fff000 	.word	0x00fff000
201003d4:	400c8000 	.word	0x400c8000
201003d8:	400c0000 	.word	0x400c0000
201003dc:	fffff3ff 	.word	0xfffff3ff
201003e0:	fff0ffff 	.word	0xfff0ffff
201003e4:	fffffeff 	.word	0xfffffeff
201003e8:	400b8000 	.word	0x400b8000

201003ec <ClkConfig>:
201003ec:	b580      	push	{r7, lr}
201003ee:	af00      	add	r7, sp, #0
201003f0:	4b18      	ldr	r3, [pc, #96]	; (20100454 <ClkConfig+0x68>)
201003f2:	4a18      	ldr	r2, [pc, #96]	; (20100454 <ClkConfig+0x68>)
201003f4:	6892      	ldr	r2, [r2, #8]
201003f6:	2101      	movs	r1, #1
201003f8:	430a      	orrs	r2, r1
201003fa:	609a      	str	r2, [r3, #8]
201003fc:	46c0      	nop			; (mov r8, r8)
201003fe:	4b15      	ldr	r3, [pc, #84]	; (20100454 <ClkConfig+0x68>)
20100400:	681b      	ldr	r3, [r3, #0]
20100402:	2204      	movs	r2, #4
20100404:	4013      	ands	r3, r2
20100406:	d0fa      	beq.n	201003fe <ClkConfig+0x12>
20100408:	4b12      	ldr	r3, [pc, #72]	; (20100454 <ClkConfig+0x68>)
2010040a:	4a12      	ldr	r2, [pc, #72]	; (20100454 <ClkConfig+0x68>)
2010040c:	68d2      	ldr	r2, [r2, #12]
2010040e:	2102      	movs	r1, #2
20100410:	430a      	orrs	r2, r1
20100412:	60da      	str	r2, [r3, #12]
20100414:	4b0f      	ldr	r3, [pc, #60]	; (20100454 <ClkConfig+0x68>)
20100416:	4a10      	ldr	r2, [pc, #64]	; (20100458 <ClkConfig+0x6c>)
20100418:	605a      	str	r2, [r3, #4]
2010041a:	46c0      	nop			; (mov r8, r8)
2010041c:	4b0d      	ldr	r3, [pc, #52]	; (20100454 <ClkConfig+0x68>)
2010041e:	681b      	ldr	r3, [r3, #0]
20100420:	2202      	movs	r2, #2
20100422:	4013      	ands	r3, r2
20100424:	d0fa      	beq.n	2010041c <ClkConfig+0x30>
20100426:	4b0d      	ldr	r3, [pc, #52]	; (2010045c <ClkConfig+0x70>)
20100428:	4a0c      	ldr	r2, [pc, #48]	; (2010045c <ClkConfig+0x70>)
2010042a:	6812      	ldr	r2, [r2, #0]
2010042c:	2120      	movs	r1, #32
2010042e:	430a      	orrs	r2, r1
20100430:	601a      	str	r2, [r3, #0]
20100432:	4b08      	ldr	r3, [pc, #32]	; (20100454 <ClkConfig+0x68>)
20100434:	4a07      	ldr	r2, [pc, #28]	; (20100454 <ClkConfig+0x68>)
20100436:	68d2      	ldr	r2, [r2, #12]
20100438:	2180      	movs	r1, #128	; 0x80
2010043a:	0049      	lsls	r1, r1, #1
2010043c:	430a      	orrs	r2, r1
2010043e:	60da      	str	r2, [r3, #12]
20100440:	4b04      	ldr	r3, [pc, #16]	; (20100454 <ClkConfig+0x68>)
20100442:	4a04      	ldr	r2, [pc, #16]	; (20100454 <ClkConfig+0x68>)
20100444:	68d2      	ldr	r2, [r2, #12]
20100446:	2104      	movs	r1, #4
20100448:	430a      	orrs	r2, r1
2010044a:	60da      	str	r2, [r3, #12]
2010044c:	46c0      	nop			; (mov r8, r8)
2010044e:	46bd      	mov	sp, r7
20100450:	bd80      	pop	{r7, pc}
20100452:	46c0      	nop			; (mov r8, r8)
20100454:	40020000 	.word	0x40020000
20100458:	00000e04 	.word	0x00000e04
2010045c:	40018000 	.word	0x40018000

20100460 <TimerConfig>:
20100460:	b580      	push	{r7, lr}
20100462:	af00      	add	r7, sp, #0
20100464:	4b71      	ldr	r3, [pc, #452]	; (2010062c <TimerConfig+0x1cc>)
20100466:	4a71      	ldr	r2, [pc, #452]	; (2010062c <TimerConfig+0x1cc>)
20100468:	69d2      	ldr	r2, [r2, #28]
2010046a:	2180      	movs	r1, #128	; 0x80
2010046c:	0309      	lsls	r1, r1, #12
2010046e:	430a      	orrs	r2, r1
20100470:	61da      	str	r2, [r3, #28]
20100472:	4b6e      	ldr	r3, [pc, #440]	; (2010062c <TimerConfig+0x1cc>)
20100474:	4a6d      	ldr	r2, [pc, #436]	; (2010062c <TimerConfig+0x1cc>)
20100476:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100478:	2180      	movs	r1, #128	; 0x80
2010047a:	04c9      	lsls	r1, r1, #19
2010047c:	430a      	orrs	r2, r1
2010047e:	629a      	str	r2, [r3, #40]	; 0x28
20100480:	4b6a      	ldr	r3, [pc, #424]	; (2010062c <TimerConfig+0x1cc>)
20100482:	4a6a      	ldr	r2, [pc, #424]	; (2010062c <TimerConfig+0x1cc>)
20100484:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100486:	496a      	ldr	r1, [pc, #424]	; (20100630 <TimerConfig+0x1d0>)
20100488:	400a      	ands	r2, r1
2010048a:	629a      	str	r2, [r3, #40]	; 0x28
2010048c:	4b69      	ldr	r3, [pc, #420]	; (20100634 <TimerConfig+0x1d4>)
2010048e:	2200      	movs	r2, #0
20100490:	601a      	str	r2, [r3, #0]
20100492:	4b68      	ldr	r3, [pc, #416]	; (20100634 <TimerConfig+0x1d4>)
20100494:	2204      	movs	r2, #4
20100496:	605a      	str	r2, [r3, #4]
20100498:	4b66      	ldr	r3, [pc, #408]	; (20100634 <TimerConfig+0x1d4>)
2010049a:	4a67      	ldr	r2, [pc, #412]	; (20100638 <TimerConfig+0x1d8>)
2010049c:	609a      	str	r2, [r3, #8]
2010049e:	4b65      	ldr	r3, [pc, #404]	; (20100634 <TimerConfig+0x1d4>)
201004a0:	2280      	movs	r2, #128	; 0x80
201004a2:	0092      	lsls	r2, r2, #2
201004a4:	611a      	str	r2, [r3, #16]
201004a6:	4b63      	ldr	r3, [pc, #396]	; (20100634 <TimerConfig+0x1d4>)
201004a8:	2280      	movs	r2, #128	; 0x80
201004aa:	0092      	lsls	r2, r2, #2
201004ac:	615a      	str	r2, [r3, #20]
201004ae:	4b61      	ldr	r3, [pc, #388]	; (20100634 <TimerConfig+0x1d4>)
201004b0:	2280      	movs	r2, #128	; 0x80
201004b2:	0092      	lsls	r2, r2, #2
201004b4:	619a      	str	r2, [r3, #24]
201004b6:	4b5f      	ldr	r3, [pc, #380]	; (20100634 <TimerConfig+0x1d4>)
201004b8:	4a5e      	ldr	r2, [pc, #376]	; (20100634 <TimerConfig+0x1d4>)
201004ba:	6a12      	ldr	r2, [r2, #32]
201004bc:	495f      	ldr	r1, [pc, #380]	; (2010063c <TimerConfig+0x1dc>)
201004be:	400a      	ands	r2, r1
201004c0:	621a      	str	r2, [r3, #32]
201004c2:	4b5c      	ldr	r3, [pc, #368]	; (20100634 <TimerConfig+0x1d4>)
201004c4:	4a5b      	ldr	r2, [pc, #364]	; (20100634 <TimerConfig+0x1d4>)
201004c6:	6a12      	ldr	r2, [r2, #32]
201004c8:	21e0      	movs	r1, #224	; 0xe0
201004ca:	0109      	lsls	r1, r1, #4
201004cc:	430a      	orrs	r2, r1
201004ce:	621a      	str	r2, [r3, #32]
201004d0:	4b58      	ldr	r3, [pc, #352]	; (20100634 <TimerConfig+0x1d4>)
201004d2:	4a58      	ldr	r2, [pc, #352]	; (20100634 <TimerConfig+0x1d4>)
201004d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004d6:	210f      	movs	r1, #15
201004d8:	438a      	bics	r2, r1
201004da:	631a      	str	r2, [r3, #48]	; 0x30
201004dc:	4b55      	ldr	r3, [pc, #340]	; (20100634 <TimerConfig+0x1d4>)
201004de:	4a55      	ldr	r2, [pc, #340]	; (20100634 <TimerConfig+0x1d4>)
201004e0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004e2:	210c      	movs	r1, #12
201004e4:	430a      	orrs	r2, r1
201004e6:	631a      	str	r2, [r3, #48]	; 0x30
201004e8:	4b52      	ldr	r3, [pc, #328]	; (20100634 <TimerConfig+0x1d4>)
201004ea:	4a52      	ldr	r2, [pc, #328]	; (20100634 <TimerConfig+0x1d4>)
201004ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004ee:	2101      	movs	r1, #1
201004f0:	430a      	orrs	r2, r1
201004f2:	631a      	str	r2, [r3, #48]	; 0x30
201004f4:	4b4f      	ldr	r3, [pc, #316]	; (20100634 <TimerConfig+0x1d4>)
201004f6:	4a4f      	ldr	r2, [pc, #316]	; (20100634 <TimerConfig+0x1d4>)
201004f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004fa:	4951      	ldr	r1, [pc, #324]	; (20100640 <TimerConfig+0x1e0>)
201004fc:	400a      	ands	r2, r1
201004fe:	631a      	str	r2, [r3, #48]	; 0x30
20100500:	4b4c      	ldr	r3, [pc, #304]	; (20100634 <TimerConfig+0x1d4>)
20100502:	4a4c      	ldr	r2, [pc, #304]	; (20100634 <TimerConfig+0x1d4>)
20100504:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100506:	21c0      	movs	r1, #192	; 0xc0
20100508:	0109      	lsls	r1, r1, #4
2010050a:	430a      	orrs	r2, r1
2010050c:	631a      	str	r2, [r3, #48]	; 0x30
2010050e:	4b49      	ldr	r3, [pc, #292]	; (20100634 <TimerConfig+0x1d4>)
20100510:	4a48      	ldr	r2, [pc, #288]	; (20100634 <TimerConfig+0x1d4>)
20100512:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100514:	2180      	movs	r1, #128	; 0x80
20100516:	0049      	lsls	r1, r1, #1
20100518:	430a      	orrs	r2, r1
2010051a:	631a      	str	r2, [r3, #48]	; 0x30
2010051c:	4b45      	ldr	r3, [pc, #276]	; (20100634 <TimerConfig+0x1d4>)
2010051e:	4a45      	ldr	r2, [pc, #276]	; (20100634 <TimerConfig+0x1d4>)
20100520:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100522:	4946      	ldr	r1, [pc, #280]	; (2010063c <TimerConfig+0x1dc>)
20100524:	400a      	ands	r2, r1
20100526:	625a      	str	r2, [r3, #36]	; 0x24
20100528:	4b42      	ldr	r3, [pc, #264]	; (20100634 <TimerConfig+0x1d4>)
2010052a:	4a42      	ldr	r2, [pc, #264]	; (20100634 <TimerConfig+0x1d4>)
2010052c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010052e:	21e0      	movs	r1, #224	; 0xe0
20100530:	0109      	lsls	r1, r1, #4
20100532:	430a      	orrs	r2, r1
20100534:	625a      	str	r2, [r3, #36]	; 0x24
20100536:	4b3f      	ldr	r3, [pc, #252]	; (20100634 <TimerConfig+0x1d4>)
20100538:	4a3e      	ldr	r2, [pc, #248]	; (20100634 <TimerConfig+0x1d4>)
2010053a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010053c:	210f      	movs	r1, #15
2010053e:	438a      	bics	r2, r1
20100540:	635a      	str	r2, [r3, #52]	; 0x34
20100542:	4b3c      	ldr	r3, [pc, #240]	; (20100634 <TimerConfig+0x1d4>)
20100544:	4a3b      	ldr	r2, [pc, #236]	; (20100634 <TimerConfig+0x1d4>)
20100546:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100548:	210c      	movs	r1, #12
2010054a:	430a      	orrs	r2, r1
2010054c:	635a      	str	r2, [r3, #52]	; 0x34
2010054e:	4b39      	ldr	r3, [pc, #228]	; (20100634 <TimerConfig+0x1d4>)
20100550:	4a38      	ldr	r2, [pc, #224]	; (20100634 <TimerConfig+0x1d4>)
20100552:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100554:	2101      	movs	r1, #1
20100556:	430a      	orrs	r2, r1
20100558:	635a      	str	r2, [r3, #52]	; 0x34
2010055a:	4b36      	ldr	r3, [pc, #216]	; (20100634 <TimerConfig+0x1d4>)
2010055c:	4a35      	ldr	r2, [pc, #212]	; (20100634 <TimerConfig+0x1d4>)
2010055e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100560:	4937      	ldr	r1, [pc, #220]	; (20100640 <TimerConfig+0x1e0>)
20100562:	400a      	ands	r2, r1
20100564:	635a      	str	r2, [r3, #52]	; 0x34
20100566:	4b33      	ldr	r3, [pc, #204]	; (20100634 <TimerConfig+0x1d4>)
20100568:	4a32      	ldr	r2, [pc, #200]	; (20100634 <TimerConfig+0x1d4>)
2010056a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010056c:	21c0      	movs	r1, #192	; 0xc0
2010056e:	0109      	lsls	r1, r1, #4
20100570:	430a      	orrs	r2, r1
20100572:	635a      	str	r2, [r3, #52]	; 0x34
20100574:	4b2f      	ldr	r3, [pc, #188]	; (20100634 <TimerConfig+0x1d4>)
20100576:	4a2f      	ldr	r2, [pc, #188]	; (20100634 <TimerConfig+0x1d4>)
20100578:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010057a:	2180      	movs	r1, #128	; 0x80
2010057c:	0049      	lsls	r1, r1, #1
2010057e:	430a      	orrs	r2, r1
20100580:	635a      	str	r2, [r3, #52]	; 0x34
20100582:	4b2c      	ldr	r3, [pc, #176]	; (20100634 <TimerConfig+0x1d4>)
20100584:	4a2b      	ldr	r2, [pc, #172]	; (20100634 <TimerConfig+0x1d4>)
20100586:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100588:	492c      	ldr	r1, [pc, #176]	; (2010063c <TimerConfig+0x1dc>)
2010058a:	400a      	ands	r2, r1
2010058c:	629a      	str	r2, [r3, #40]	; 0x28
2010058e:	4b29      	ldr	r3, [pc, #164]	; (20100634 <TimerConfig+0x1d4>)
20100590:	4a28      	ldr	r2, [pc, #160]	; (20100634 <TimerConfig+0x1d4>)
20100592:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100594:	21e0      	movs	r1, #224	; 0xe0
20100596:	0109      	lsls	r1, r1, #4
20100598:	430a      	orrs	r2, r1
2010059a:	629a      	str	r2, [r3, #40]	; 0x28
2010059c:	4b25      	ldr	r3, [pc, #148]	; (20100634 <TimerConfig+0x1d4>)
2010059e:	4a25      	ldr	r2, [pc, #148]	; (20100634 <TimerConfig+0x1d4>)
201005a0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005a2:	210f      	movs	r1, #15
201005a4:	438a      	bics	r2, r1
201005a6:	639a      	str	r2, [r3, #56]	; 0x38
201005a8:	4b22      	ldr	r3, [pc, #136]	; (20100634 <TimerConfig+0x1d4>)
201005aa:	4a22      	ldr	r2, [pc, #136]	; (20100634 <TimerConfig+0x1d4>)
201005ac:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005ae:	210c      	movs	r1, #12
201005b0:	430a      	orrs	r2, r1
201005b2:	639a      	str	r2, [r3, #56]	; 0x38
201005b4:	4b1f      	ldr	r3, [pc, #124]	; (20100634 <TimerConfig+0x1d4>)
201005b6:	4a1f      	ldr	r2, [pc, #124]	; (20100634 <TimerConfig+0x1d4>)
201005b8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005ba:	2101      	movs	r1, #1
201005bc:	430a      	orrs	r2, r1
201005be:	639a      	str	r2, [r3, #56]	; 0x38
201005c0:	4b1c      	ldr	r3, [pc, #112]	; (20100634 <TimerConfig+0x1d4>)
201005c2:	4a1c      	ldr	r2, [pc, #112]	; (20100634 <TimerConfig+0x1d4>)
201005c4:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005c6:	491e      	ldr	r1, [pc, #120]	; (20100640 <TimerConfig+0x1e0>)
201005c8:	400a      	ands	r2, r1
201005ca:	639a      	str	r2, [r3, #56]	; 0x38
201005cc:	4b19      	ldr	r3, [pc, #100]	; (20100634 <TimerConfig+0x1d4>)
201005ce:	4a19      	ldr	r2, [pc, #100]	; (20100634 <TimerConfig+0x1d4>)
201005d0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005d2:	21c0      	movs	r1, #192	; 0xc0
201005d4:	0109      	lsls	r1, r1, #4
201005d6:	430a      	orrs	r2, r1
201005d8:	639a      	str	r2, [r3, #56]	; 0x38
201005da:	4b16      	ldr	r3, [pc, #88]	; (20100634 <TimerConfig+0x1d4>)
201005dc:	4a15      	ldr	r2, [pc, #84]	; (20100634 <TimerConfig+0x1d4>)
201005de:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005e0:	2180      	movs	r1, #128	; 0x80
201005e2:	0049      	lsls	r1, r1, #1
201005e4:	430a      	orrs	r2, r1
201005e6:	639a      	str	r2, [r3, #56]	; 0x38
201005e8:	4b12      	ldr	r3, [pc, #72]	; (20100634 <TimerConfig+0x1d4>)
201005ea:	4a12      	ldr	r2, [pc, #72]	; (20100634 <TimerConfig+0x1d4>)
201005ec:	6c12      	ldr	r2, [r2, #64]	; 0x40
201005ee:	21c8      	movs	r1, #200	; 0xc8
201005f0:	01c9      	lsls	r1, r1, #7
201005f2:	430a      	orrs	r2, r1
201005f4:	641a      	str	r2, [r3, #64]	; 0x40
201005f6:	4b0f      	ldr	r3, [pc, #60]	; (20100634 <TimerConfig+0x1d4>)
201005f8:	4a0e      	ldr	r2, [pc, #56]	; (20100634 <TimerConfig+0x1d4>)
201005fa:	6c52      	ldr	r2, [r2, #68]	; 0x44
201005fc:	21c8      	movs	r1, #200	; 0xc8
201005fe:	01c9      	lsls	r1, r1, #7
20100600:	430a      	orrs	r2, r1
20100602:	645a      	str	r2, [r3, #68]	; 0x44
20100604:	4b0b      	ldr	r3, [pc, #44]	; (20100634 <TimerConfig+0x1d4>)
20100606:	4a0b      	ldr	r2, [pc, #44]	; (20100634 <TimerConfig+0x1d4>)
20100608:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010060a:	21c8      	movs	r1, #200	; 0xc8
2010060c:	01c9      	lsls	r1, r1, #7
2010060e:	430a      	orrs	r2, r1
20100610:	649a      	str	r2, [r3, #72]	; 0x48
20100612:	4b08      	ldr	r3, [pc, #32]	; (20100634 <TimerConfig+0x1d4>)
20100614:	4a07      	ldr	r2, [pc, #28]	; (20100634 <TimerConfig+0x1d4>)
20100616:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100618:	21f0      	movs	r1, #240	; 0xf0
2010061a:	0149      	lsls	r1, r1, #5
2010061c:	430a      	orrs	r2, r1
2010061e:	659a      	str	r2, [r3, #88]	; 0x58
20100620:	4b04      	ldr	r3, [pc, #16]	; (20100634 <TimerConfig+0x1d4>)
20100622:	2201      	movs	r2, #1
20100624:	60da      	str	r2, [r3, #12]
20100626:	46c0      	nop			; (mov r8, r8)
20100628:	46bd      	mov	sp, r7
2010062a:	bd80      	pop	{r7, pc}
2010062c:	40020000 	.word	0x40020000
20100630:	ff00ffff 	.word	0xff00ffff
20100634:	40098000 	.word	0x40098000
20100638:	000003ff 	.word	0x000003ff
2010063c:	fffff1ff 	.word	0xfffff1ff
20100640:	fffff0ff 	.word	0xfffff0ff

20100644 <adc_init>:
20100644:	b580      	push	{r7, lr}
20100646:	af00      	add	r7, sp, #0
20100648:	4b07      	ldr	r3, [pc, #28]	; (20100668 <adc_init+0x24>)
2010064a:	4a07      	ldr	r2, [pc, #28]	; (20100668 <adc_init+0x24>)
2010064c:	69d2      	ldr	r2, [r2, #28]
2010064e:	2180      	movs	r1, #128	; 0x80
20100650:	0289      	lsls	r1, r1, #10
20100652:	430a      	orrs	r2, r1
20100654:	61da      	str	r2, [r3, #28]
20100656:	4b04      	ldr	r3, [pc, #16]	; (20100668 <adc_init+0x24>)
20100658:	4a04      	ldr	r2, [pc, #16]	; (2010066c <adc_init+0x28>)
2010065a:	615a      	str	r2, [r3, #20]
2010065c:	4b04      	ldr	r3, [pc, #16]	; (20100670 <adc_init+0x2c>)
2010065e:	2245      	movs	r2, #69	; 0x45
20100660:	601a      	str	r2, [r3, #0]
20100662:	46c0      	nop			; (mov r8, r8)
20100664:	46bd      	mov	sp, r7
20100666:	bd80      	pop	{r7, pc}
20100668:	40020000 	.word	0x40020000
2010066c:	00002020 	.word	0x00002020
20100670:	40088000 	.word	0x40088000

20100674 <dac_init>:
20100674:	b580      	push	{r7, lr}
20100676:	af00      	add	r7, sp, #0
20100678:	4b07      	ldr	r3, [pc, #28]	; (20100698 <dac_init+0x24>)
2010067a:	4a07      	ldr	r2, [pc, #28]	; (20100698 <dac_init+0x24>)
2010067c:	69d2      	ldr	r2, [r2, #28]
2010067e:	2180      	movs	r1, #128	; 0x80
20100680:	02c9      	lsls	r1, r1, #11
20100682:	430a      	orrs	r2, r1
20100684:	61da      	str	r2, [r3, #28]
20100686:	4b05      	ldr	r3, [pc, #20]	; (2010069c <dac_init+0x28>)
20100688:	4a04      	ldr	r2, [pc, #16]	; (2010069c <dac_init+0x28>)
2010068a:	6812      	ldr	r2, [r2, #0]
2010068c:	2104      	movs	r1, #4
2010068e:	430a      	orrs	r2, r1
20100690:	601a      	str	r2, [r3, #0]
20100692:	46c0      	nop			; (mov r8, r8)
20100694:	46bd      	mov	sp, r7
20100696:	bd80      	pop	{r7, pc}
20100698:	40020000 	.word	0x40020000
2010069c:	40090000 	.word	0x40090000

201006a0 <ssi_init>:
201006a0:	b580      	push	{r7, lr}
201006a2:	af00      	add	r7, sp, #0
201006a4:	4b0c      	ldr	r3, [pc, #48]	; (201006d8 <ssi_init+0x38>)
201006a6:	4a0c      	ldr	r2, [pc, #48]	; (201006d8 <ssi_init+0x38>)
201006a8:	69d2      	ldr	r2, [r2, #28]
201006aa:	2180      	movs	r1, #128	; 0x80
201006ac:	0349      	lsls	r1, r1, #13
201006ae:	430a      	orrs	r2, r1
201006b0:	61da      	str	r2, [r3, #28]
201006b2:	4b09      	ldr	r3, [pc, #36]	; (201006d8 <ssi_init+0x38>)
201006b4:	4a09      	ldr	r2, [pc, #36]	; (201006dc <ssi_init+0x3c>)
201006b6:	62da      	str	r2, [r3, #44]	; 0x2c
201006b8:	4b09      	ldr	r3, [pc, #36]	; (201006e0 <ssi_init+0x40>)
201006ba:	2200      	movs	r2, #0
201006bc:	605a      	str	r2, [r3, #4]
201006be:	4b08      	ldr	r3, [pc, #32]	; (201006e0 <ssi_init+0x40>)
201006c0:	2210      	movs	r2, #16
201006c2:	611a      	str	r2, [r3, #16]
201006c4:	4b06      	ldr	r3, [pc, #24]	; (201006e0 <ssi_init+0x40>)
201006c6:	4a07      	ldr	r2, [pc, #28]	; (201006e4 <ssi_init+0x44>)
201006c8:	601a      	str	r2, [r3, #0]
201006ca:	4b05      	ldr	r3, [pc, #20]	; (201006e0 <ssi_init+0x40>)
201006cc:	2202      	movs	r2, #2
201006ce:	605a      	str	r2, [r3, #4]
201006d0:	46c0      	nop			; (mov r8, r8)
201006d2:	46bd      	mov	sp, r7
201006d4:	bd80      	pop	{r7, pc}
201006d6:	46c0      	nop			; (mov r8, r8)
201006d8:	40020000 	.word	0x40020000
201006dc:	02000a00 	.word	0x02000a00
201006e0:	400a0000 	.word	0x400a0000
201006e4:	0000021b 	.word	0x0000021b

201006e8 <b2g>:
201006e8:	b580      	push	{r7, lr}
201006ea:	b082      	sub	sp, #8
201006ec:	af00      	add	r7, sp, #0
201006ee:	6078      	str	r0, [r7, #4]
201006f0:	687b      	ldr	r3, [r7, #4]
201006f2:	085a      	lsrs	r2, r3, #1
201006f4:	687b      	ldr	r3, [r7, #4]
201006f6:	4053      	eors	r3, r2
201006f8:	0018      	movs	r0, r3
201006fa:	46bd      	mov	sp, r7
201006fc:	b002      	add	sp, #8
201006fe:	bd80      	pop	{r7, pc}

20100700 <g2b>:
20100700:	b580      	push	{r7, lr}
20100702:	b084      	sub	sp, #16
20100704:	af00      	add	r7, sp, #0
20100706:	6078      	str	r0, [r7, #4]
20100708:	2300      	movs	r3, #0
2010070a:	60fb      	str	r3, [r7, #12]
2010070c:	2300      	movs	r3, #0
2010070e:	60fb      	str	r3, [r7, #12]
20100710:	e006      	b.n	20100720 <g2b+0x20>
20100712:	68fa      	ldr	r2, [r7, #12]
20100714:	687b      	ldr	r3, [r7, #4]
20100716:	4053      	eors	r3, r2
20100718:	60fb      	str	r3, [r7, #12]
2010071a:	687b      	ldr	r3, [r7, #4]
2010071c:	085b      	lsrs	r3, r3, #1
2010071e:	607b      	str	r3, [r7, #4]
20100720:	687b      	ldr	r3, [r7, #4]
20100722:	2b00      	cmp	r3, #0
20100724:	d1f5      	bne.n	20100712 <g2b+0x12>
20100726:	68fb      	ldr	r3, [r7, #12]
20100728:	0018      	movs	r0, r3
2010072a:	46bd      	mov	sp, r7
2010072c:	b004      	add	sp, #16
2010072e:	bd80      	pop	{r7, pc}

20100730 <SystemInit>:
20100730:	b580      	push	{r7, lr}
20100732:	af00      	add	r7, sp, #0
20100734:	f7ff fe5a 	bl	201003ec <ClkConfig>
20100738:	f7ff fdb4 	bl	201002a4 <PortConfig>
2010073c:	f7ff fe90 	bl	20100460 <TimerConfig>
20100740:	f7ff ff80 	bl	20100644 <adc_init>
20100744:	f7ff ff96 	bl	20100674 <dac_init>
20100748:	f7ff ffaa 	bl	201006a0 <ssi_init>
2010074c:	46c0      	nop			; (mov r8, r8)
2010074e:	46bd      	mov	sp, r7
20100750:	bd80      	pop	{r7, pc}
20100752:	46c0      	nop			; (mov r8, r8)

20100754 <get_dcA>:
20100754:	b580      	push	{r7, lr}
20100756:	b082      	sub	sp, #8
20100758:	af00      	add	r7, sp, #0
2010075a:	2300      	movs	r3, #0
2010075c:	603b      	str	r3, [r7, #0]
2010075e:	2300      	movs	r3, #0
20100760:	607b      	str	r3, [r7, #4]
20100762:	e012      	b.n	2010078a <get_dcA+0x36>
20100764:	4b0e      	ldr	r3, [pc, #56]	; (201007a0 <get_dcA+0x4c>)
20100766:	2237      	movs	r2, #55	; 0x37
20100768:	601a      	str	r2, [r3, #0]
2010076a:	46c0      	nop			; (mov r8, r8)
2010076c:	4b0c      	ldr	r3, [pc, #48]	; (201007a0 <get_dcA+0x4c>)
2010076e:	6a1b      	ldr	r3, [r3, #32]
20100770:	2204      	movs	r2, #4
20100772:	4013      	ands	r3, r2
20100774:	d0fa      	beq.n	2010076c <get_dcA+0x18>
20100776:	4b0a      	ldr	r3, [pc, #40]	; (201007a0 <get_dcA+0x4c>)
20100778:	699b      	ldr	r3, [r3, #24]
2010077a:	051b      	lsls	r3, r3, #20
2010077c:	0d1a      	lsrs	r2, r3, #20
2010077e:	683b      	ldr	r3, [r7, #0]
20100780:	18d3      	adds	r3, r2, r3
20100782:	603b      	str	r3, [r7, #0]
20100784:	687b      	ldr	r3, [r7, #4]
20100786:	3301      	adds	r3, #1
20100788:	607b      	str	r3, [r7, #4]
2010078a:	687b      	ldr	r3, [r7, #4]
2010078c:	4a05      	ldr	r2, [pc, #20]	; (201007a4 <get_dcA+0x50>)
2010078e:	4293      	cmp	r3, r2
20100790:	dde8      	ble.n	20100764 <get_dcA+0x10>
20100792:	683b      	ldr	r3, [r7, #0]
20100794:	129b      	asrs	r3, r3, #10
20100796:	0018      	movs	r0, r3
20100798:	46bd      	mov	sp, r7
2010079a:	b002      	add	sp, #8
2010079c:	bd80      	pop	{r7, pc}
2010079e:	46c0      	nop			; (mov r8, r8)
201007a0:	40088000 	.word	0x40088000
201007a4:	000003ff 	.word	0x000003ff

201007a8 <get_dcB>:
201007a8:	b580      	push	{r7, lr}
201007aa:	b082      	sub	sp, #8
201007ac:	af00      	add	r7, sp, #0
201007ae:	2300      	movs	r3, #0
201007b0:	603b      	str	r3, [r7, #0]
201007b2:	2300      	movs	r3, #0
201007b4:	607b      	str	r3, [r7, #4]
201007b6:	e012      	b.n	201007de <get_dcB+0x36>
201007b8:	4b0e      	ldr	r3, [pc, #56]	; (201007f4 <get_dcB+0x4c>)
201007ba:	2247      	movs	r2, #71	; 0x47
201007bc:	601a      	str	r2, [r3, #0]
201007be:	46c0      	nop			; (mov r8, r8)
201007c0:	4b0c      	ldr	r3, [pc, #48]	; (201007f4 <get_dcB+0x4c>)
201007c2:	6a1b      	ldr	r3, [r3, #32]
201007c4:	2204      	movs	r2, #4
201007c6:	4013      	ands	r3, r2
201007c8:	d0fa      	beq.n	201007c0 <get_dcB+0x18>
201007ca:	4b0a      	ldr	r3, [pc, #40]	; (201007f4 <get_dcB+0x4c>)
201007cc:	699b      	ldr	r3, [r3, #24]
201007ce:	051b      	lsls	r3, r3, #20
201007d0:	0d1a      	lsrs	r2, r3, #20
201007d2:	683b      	ldr	r3, [r7, #0]
201007d4:	18d3      	adds	r3, r2, r3
201007d6:	603b      	str	r3, [r7, #0]
201007d8:	687b      	ldr	r3, [r7, #4]
201007da:	3301      	adds	r3, #1
201007dc:	607b      	str	r3, [r7, #4]
201007de:	687b      	ldr	r3, [r7, #4]
201007e0:	4a05      	ldr	r2, [pc, #20]	; (201007f8 <get_dcB+0x50>)
201007e2:	4293      	cmp	r3, r2
201007e4:	dde8      	ble.n	201007b8 <get_dcB+0x10>
201007e6:	683b      	ldr	r3, [r7, #0]
201007e8:	129b      	asrs	r3, r3, #10
201007ea:	0018      	movs	r0, r3
201007ec:	46bd      	mov	sp, r7
201007ee:	b002      	add	sp, #8
201007f0:	bd80      	pop	{r7, pc}
201007f2:	46c0      	nop			; (mov r8, r8)
201007f4:	40088000 	.word	0x40088000
201007f8:	000003ff 	.word	0x000003ff

201007fc <vector_sync_motor_controller>:
201007fc:	b580      	push	{r7, lr}
201007fe:	b090      	sub	sp, #64	; 0x40
20100800:	af00      	add	r7, sp, #0
20100802:	6078      	str	r0, [r7, #4]
20100804:	6039      	str	r1, [r7, #0]
20100806:	683a      	ldr	r2, [r7, #0]
20100808:	232c      	movs	r3, #44	; 0x2c
2010080a:	18f9      	adds	r1, r7, r3
2010080c:	687b      	ldr	r3, [r7, #4]
2010080e:	0018      	movs	r0, r3
20100810:	f000 f8b8 	bl	20100984 <abc_to_dq>
20100814:	232c      	movs	r3, #44	; 0x2c
20100816:	18fb      	adds	r3, r7, r3
20100818:	681b      	ldr	r3, [r3, #0]
2010081a:	425b      	negs	r3, r3
2010081c:	63fb      	str	r3, [r7, #60]	; 0x3c
2010081e:	232c      	movs	r3, #44	; 0x2c
20100820:	18fb      	adds	r3, r7, r3
20100822:	685b      	ldr	r3, [r3, #4]
20100824:	22c8      	movs	r2, #200	; 0xc8
20100826:	1ad3      	subs	r3, r2, r3
20100828:	63bb      	str	r3, [r7, #56]	; 0x38
2010082a:	6b7a      	ldr	r2, [r7, #52]	; 0x34
2010082c:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
2010082e:	231c      	movs	r3, #28
20100830:	18fb      	adds	r3, r7, r3
20100832:	0018      	movs	r0, r3
20100834:	f000 f880 	bl	20100938 <update>
20100838:	6b7a      	ldr	r2, [r7, #52]	; 0x34
2010083a:	6bb9      	ldr	r1, [r7, #56]	; 0x38
2010083c:	230c      	movs	r3, #12
2010083e:	18fb      	adds	r3, r7, r3
20100840:	0018      	movs	r0, r3
20100842:	f000 f879 	bl	20100938 <update>
20100846:	231c      	movs	r3, #28
20100848:	18fb      	adds	r3, r7, r3
2010084a:	68da      	ldr	r2, [r3, #12]
2010084c:	232c      	movs	r3, #44	; 0x2c
2010084e:	18fb      	adds	r3, r7, r3
20100850:	601a      	str	r2, [r3, #0]
20100852:	230c      	movs	r3, #12
20100854:	18fb      	adds	r3, r7, r3
20100856:	68da      	ldr	r2, [r3, #12]
20100858:	232c      	movs	r3, #44	; 0x2c
2010085a:	18fb      	adds	r3, r7, r3
2010085c:	605a      	str	r2, [r3, #4]
2010085e:	683b      	ldr	r3, [r7, #0]
20100860:	33fa      	adds	r3, #250	; 0xfa
20100862:	059b      	lsls	r3, r3, #22
20100864:	0d9a      	lsrs	r2, r3, #22
20100866:	232c      	movs	r3, #44	; 0x2c
20100868:	18f9      	adds	r1, r7, r3
2010086a:	687b      	ldr	r3, [r7, #4]
2010086c:	0018      	movs	r0, r3
2010086e:	f000 f8d1 	bl	20100a14 <dq_to_abc>
20100872:	4a0f      	ldr	r2, [pc, #60]	; (201008b0 <vector_sync_motor_controller+0xb4>)
20100874:	687b      	ldr	r3, [r7, #4]
20100876:	3308      	adds	r3, #8
20100878:	681b      	ldr	r3, [r3, #0]
2010087a:	2180      	movs	r1, #128	; 0x80
2010087c:	0089      	lsls	r1, r1, #2
2010087e:	468c      	mov	ip, r1
20100880:	4463      	add	r3, ip
20100882:	6113      	str	r3, [r2, #16]
20100884:	4a0a      	ldr	r2, [pc, #40]	; (201008b0 <vector_sync_motor_controller+0xb4>)
20100886:	687b      	ldr	r3, [r7, #4]
20100888:	3304      	adds	r3, #4
2010088a:	681b      	ldr	r3, [r3, #0]
2010088c:	2180      	movs	r1, #128	; 0x80
2010088e:	0089      	lsls	r1, r1, #2
20100890:	468c      	mov	ip, r1
20100892:	4463      	add	r3, ip
20100894:	6153      	str	r3, [r2, #20]
20100896:	4a06      	ldr	r2, [pc, #24]	; (201008b0 <vector_sync_motor_controller+0xb4>)
20100898:	687b      	ldr	r3, [r7, #4]
2010089a:	681b      	ldr	r3, [r3, #0]
2010089c:	2180      	movs	r1, #128	; 0x80
2010089e:	0089      	lsls	r1, r1, #2
201008a0:	468c      	mov	ip, r1
201008a2:	4463      	add	r3, ip
201008a4:	6193      	str	r3, [r2, #24]
201008a6:	46c0      	nop			; (mov r8, r8)
201008a8:	46bd      	mov	sp, r7
201008aa:	b010      	add	sp, #64	; 0x40
201008ac:	bd80      	pop	{r7, pc}
201008ae:	46c0      	nop			; (mov r8, r8)
201008b0:	40098000 	.word	0x40098000

201008b4 <wait_timer_ticks>:
201008b4:	b580      	push	{r7, lr}
201008b6:	b084      	sub	sp, #16
201008b8:	af00      	add	r7, sp, #0
201008ba:	6078      	str	r0, [r7, #4]
201008bc:	2300      	movs	r3, #0
201008be:	60fb      	str	r3, [r7, #12]
201008c0:	e00b      	b.n	201008da <wait_timer_ticks+0x26>
201008c2:	46c0      	nop			; (mov r8, r8)
201008c4:	4b09      	ldr	r3, [pc, #36]	; (201008ec <wait_timer_ticks+0x38>)
201008c6:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201008c8:	2202      	movs	r2, #2
201008ca:	4013      	ands	r3, r2
201008cc:	d0fa      	beq.n	201008c4 <wait_timer_ticks+0x10>
201008ce:	4b07      	ldr	r3, [pc, #28]	; (201008ec <wait_timer_ticks+0x38>)
201008d0:	2200      	movs	r2, #0
201008d2:	655a      	str	r2, [r3, #84]	; 0x54
201008d4:	68fb      	ldr	r3, [r7, #12]
201008d6:	3301      	adds	r3, #1
201008d8:	60fb      	str	r3, [r7, #12]
201008da:	68fa      	ldr	r2, [r7, #12]
201008dc:	687b      	ldr	r3, [r7, #4]
201008de:	429a      	cmp	r2, r3
201008e0:	dbef      	blt.n	201008c2 <wait_timer_ticks+0xe>
201008e2:	46c0      	nop			; (mov r8, r8)
201008e4:	46bd      	mov	sp, r7
201008e6:	b004      	add	sp, #16
201008e8:	bd80      	pop	{r7, pc}
201008ea:	46c0      	nop			; (mov r8, r8)
201008ec:	40098000 	.word	0x40098000

201008f0 <mycos>:
201008f0:	4b05      	ldr	r3, [pc, #20]	; (20100908 <mycos+0x18>)
201008f2:	4a06      	ldr	r2, [pc, #24]	; (2010090c <mycos+0x1c>)
201008f4:	447b      	add	r3, pc
201008f6:	0580      	lsls	r0, r0, #22
201008f8:	589b      	ldr	r3, [r3, r2]
201008fa:	0d00      	lsrs	r0, r0, #20
201008fc:	58c0      	ldr	r0, [r0, r3]
201008fe:	b082      	sub	sp, #8
20100900:	9301      	str	r3, [sp, #4]
20100902:	b002      	add	sp, #8
20100904:	4770      	bx	lr
20100906:	46c0      	nop			; (mov r8, r8)
20100908:	ffeff70c 	.word	0xffeff70c
2010090c:	00000000 	.word	0x00000000

20100910 <mysin>:
20100910:	4b07      	ldr	r3, [pc, #28]	; (20100930 <mysin+0x20>)
20100912:	4a08      	ldr	r2, [pc, #32]	; (20100934 <mysin+0x24>)
20100914:	447b      	add	r3, pc
20100916:	589b      	ldr	r3, [r3, r2]
20100918:	b082      	sub	sp, #8
2010091a:	9301      	str	r3, [sp, #4]
2010091c:	23c0      	movs	r3, #192	; 0xc0
2010091e:	009b      	lsls	r3, r3, #2
20100920:	469c      	mov	ip, r3
20100922:	4460      	add	r0, ip
20100924:	9b01      	ldr	r3, [sp, #4]
20100926:	0580      	lsls	r0, r0, #22
20100928:	0d00      	lsrs	r0, r0, #20
2010092a:	58c0      	ldr	r0, [r0, r3]
2010092c:	b002      	add	sp, #8
2010092e:	4770      	bx	lr
20100930:	ffeff6ec 	.word	0xffeff6ec
20100934:	00000000 	.word	0x00000000

20100938 <update>:
20100938:	b510      	push	{r4, lr}
2010093a:	6804      	ldr	r4, [r0, #0]
2010093c:	6883      	ldr	r3, [r0, #8]
2010093e:	434c      	muls	r4, r1
20100940:	2a00      	cmp	r2, #0
20100942:	d004      	beq.n	2010094e <update+0x16>
20100944:	2b00      	cmp	r3, #0
20100946:	dd09      	ble.n	2010095c <update+0x24>
20100948:	2c00      	cmp	r4, #0
2010094a:	dd00      	ble.n	2010094e <update+0x16>
2010094c:	2400      	movs	r4, #0
2010094e:	6842      	ldr	r2, [r0, #4]
20100950:	18e3      	adds	r3, r4, r3
20100952:	4351      	muls	r1, r2
20100954:	18c9      	adds	r1, r1, r3
20100956:	60c1      	str	r1, [r0, #12]
20100958:	6083      	str	r3, [r0, #8]
2010095a:	bd10      	pop	{r4, pc}
2010095c:	2b00      	cmp	r3, #0
2010095e:	d0f6      	beq.n	2010094e <update+0x16>
20100960:	43e2      	mvns	r2, r4
20100962:	17d2      	asrs	r2, r2, #31
20100964:	4014      	ands	r4, r2
20100966:	e7f2      	b.n	2010094e <update+0x16>

20100968 <dot3>:
20100968:	6803      	ldr	r3, [r0, #0]
2010096a:	680a      	ldr	r2, [r1, #0]
2010096c:	b510      	push	{r4, lr}
2010096e:	435a      	muls	r2, r3
20100970:	6844      	ldr	r4, [r0, #4]
20100972:	684b      	ldr	r3, [r1, #4]
20100974:	6880      	ldr	r0, [r0, #8]
20100976:	4363      	muls	r3, r4
20100978:	18d2      	adds	r2, r2, r3
2010097a:	688b      	ldr	r3, [r1, #8]
2010097c:	4343      	muls	r3, r0
2010097e:	18d0      	adds	r0, r2, r3
20100980:	bd10      	pop	{r4, pc}
20100982:	46c0      	nop			; (mov r8, r8)

20100984 <abc_to_dq>:
20100984:	b5f0      	push	{r4, r5, r6, r7, lr}
20100986:	4647      	mov	r7, r8
20100988:	b480      	push	{r7}
2010098a:	4b1d      	ldr	r3, [pc, #116]	; (20100a00 <abc_to_dq+0x7c>)
2010098c:	4c1d      	ldr	r4, [pc, #116]	; (20100a04 <abc_to_dq+0x80>)
2010098e:	447b      	add	r3, pc
20100990:	591d      	ldr	r5, [r3, r4]
20100992:	23c0      	movs	r3, #192	; 0xc0
20100994:	009b      	lsls	r3, r3, #2
20100996:	18d3      	adds	r3, r2, r3
20100998:	059b      	lsls	r3, r3, #22
2010099a:	0d1b      	lsrs	r3, r3, #20
2010099c:	595b      	ldr	r3, [r3, r5]
2010099e:	4698      	mov	r8, r3
201009a0:	4b19      	ldr	r3, [pc, #100]	; (20100a08 <abc_to_dq+0x84>)
201009a2:	18d4      	adds	r4, r2, r3
201009a4:	05a4      	lsls	r4, r4, #22
201009a6:	4b19      	ldr	r3, [pc, #100]	; (20100a0c <abc_to_dq+0x88>)
201009a8:	0d24      	lsrs	r4, r4, #20
201009aa:	5967      	ldr	r7, [r4, r5]
201009ac:	18d4      	adds	r4, r2, r3
201009ae:	05a4      	lsls	r4, r4, #22
201009b0:	4b17      	ldr	r3, [pc, #92]	; (20100a10 <abc_to_dq+0x8c>)
201009b2:	0d24      	lsrs	r4, r4, #20
201009b4:	5966      	ldr	r6, [r4, r5]
201009b6:	18d4      	adds	r4, r2, r3
201009b8:	05a4      	lsls	r4, r4, #22
201009ba:	0d24      	lsrs	r4, r4, #20
201009bc:	5964      	ldr	r4, [r4, r5]
201009be:	6843      	ldr	r3, [r0, #4]
201009c0:	4363      	muls	r3, r4
201009c2:	0094      	lsls	r4, r2, #2
201009c4:	469c      	mov	ip, r3
201009c6:	3256      	adds	r2, #86	; 0x56
201009c8:	32ff      	adds	r2, #255	; 0xff
201009ca:	6803      	ldr	r3, [r0, #0]
201009cc:	5964      	ldr	r4, [r4, r5]
201009ce:	0592      	lsls	r2, r2, #22
201009d0:	0d12      	lsrs	r2, r2, #20
201009d2:	5955      	ldr	r5, [r2, r5]
201009d4:	435c      	muls	r4, r3
201009d6:	6883      	ldr	r3, [r0, #8]
201009d8:	4464      	add	r4, ip
201009da:	435d      	muls	r5, r3
201009dc:	4643      	mov	r3, r8
201009de:	1964      	adds	r4, r4, r5
201009e0:	12a4      	asrs	r4, r4, #10
201009e2:	600c      	str	r4, [r1, #0]
201009e4:	6802      	ldr	r2, [r0, #0]
201009e6:	435a      	muls	r2, r3
201009e8:	6843      	ldr	r3, [r0, #4]
201009ea:	437b      	muls	r3, r7
201009ec:	18d3      	adds	r3, r2, r3
201009ee:	6882      	ldr	r2, [r0, #8]
201009f0:	4372      	muls	r2, r6
201009f2:	189b      	adds	r3, r3, r2
201009f4:	425b      	negs	r3, r3
201009f6:	129b      	asrs	r3, r3, #10
201009f8:	604b      	str	r3, [r1, #4]
201009fa:	bc04      	pop	{r2}
201009fc:	4690      	mov	r8, r2
201009fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100a00:	ffeff672 	.word	0xffeff672
20100a04:	00000000 	.word	0x00000000
20100a08:	000005aa 	.word	0x000005aa
20100a0c:	00000455 	.word	0x00000455
20100a10:	000002aa 	.word	0x000002aa

20100a14 <dq_to_abc>:
20100a14:	b570      	push	{r4, r5, r6, lr}
20100a16:	4b1c      	ldr	r3, [pc, #112]	; (20100a88 <dq_to_abc+0x74>)
20100a18:	4c1c      	ldr	r4, [pc, #112]	; (20100a8c <dq_to_abc+0x78>)
20100a1a:	447b      	add	r3, pc
20100a1c:	591d      	ldr	r5, [r3, r4]
20100a1e:	0093      	lsls	r3, r2, #2
20100a20:	680c      	ldr	r4, [r1, #0]
20100a22:	595b      	ldr	r3, [r3, r5]
20100a24:	684e      	ldr	r6, [r1, #4]
20100a26:	435c      	muls	r4, r3
20100a28:	23c0      	movs	r3, #192	; 0xc0
20100a2a:	009b      	lsls	r3, r3, #2
20100a2c:	18d3      	adds	r3, r2, r3
20100a2e:	059b      	lsls	r3, r3, #22
20100a30:	0d1b      	lsrs	r3, r3, #20
20100a32:	595b      	ldr	r3, [r3, r5]
20100a34:	4373      	muls	r3, r6
20100a36:	1ae3      	subs	r3, r4, r3
20100a38:	151b      	asrs	r3, r3, #20
20100a3a:	6003      	str	r3, [r0, #0]
20100a3c:	4b14      	ldr	r3, [pc, #80]	; (20100a90 <dq_to_abc+0x7c>)
20100a3e:	680c      	ldr	r4, [r1, #0]
20100a40:	18d3      	adds	r3, r2, r3
20100a42:	059b      	lsls	r3, r3, #22
20100a44:	0d1b      	lsrs	r3, r3, #20
20100a46:	595b      	ldr	r3, [r3, r5]
20100a48:	684e      	ldr	r6, [r1, #4]
20100a4a:	435c      	muls	r4, r3
20100a4c:	4b11      	ldr	r3, [pc, #68]	; (20100a94 <dq_to_abc+0x80>)
20100a4e:	18d3      	adds	r3, r2, r3
20100a50:	059b      	lsls	r3, r3, #22
20100a52:	0d1b      	lsrs	r3, r3, #20
20100a54:	595b      	ldr	r3, [r3, r5]
20100a56:	4373      	muls	r3, r6
20100a58:	1ae3      	subs	r3, r4, r3
20100a5a:	151b      	asrs	r3, r3, #20
20100a5c:	6043      	str	r3, [r0, #4]
20100a5e:	0013      	movs	r3, r2
20100a60:	3356      	adds	r3, #86	; 0x56
20100a62:	33ff      	adds	r3, #255	; 0xff
20100a64:	059b      	lsls	r3, r3, #22
20100a66:	0d1b      	lsrs	r3, r3, #20
20100a68:	595b      	ldr	r3, [r3, r5]
20100a6a:	680c      	ldr	r4, [r1, #0]
20100a6c:	435c      	muls	r4, r3
20100a6e:	4b0a      	ldr	r3, [pc, #40]	; (20100a98 <dq_to_abc+0x84>)
20100a70:	469c      	mov	ip, r3
20100a72:	4462      	add	r2, ip
20100a74:	0592      	lsls	r2, r2, #22
20100a76:	0d12      	lsrs	r2, r2, #20
20100a78:	5952      	ldr	r2, [r2, r5]
20100a7a:	684b      	ldr	r3, [r1, #4]
20100a7c:	4353      	muls	r3, r2
20100a7e:	1ae3      	subs	r3, r4, r3
20100a80:	151b      	asrs	r3, r3, #20
20100a82:	6083      	str	r3, [r0, #8]
20100a84:	bd70      	pop	{r4, r5, r6, pc}
20100a86:	46c0      	nop			; (mov r8, r8)
20100a88:	ffeff5e6 	.word	0xffeff5e6
20100a8c:	00000000 	.word	0x00000000
20100a90:	000002aa 	.word	0x000002aa
20100a94:	000005aa 	.word	0x000005aa
20100a98:	00000455 	.word	0x00000455

20100a9c <cord_atan>:
20100a9c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a9e:	4645      	mov	r5, r8
20100aa0:	4657      	mov	r7, sl
20100aa2:	464e      	mov	r6, r9
20100aa4:	b4e0      	push	{r5, r6, r7}
20100aa6:	4b65      	ldr	r3, [pc, #404]	; (20100c3c <cord_atan+0x1a0>)
20100aa8:	b090      	sub	sp, #64	; 0x40
20100aaa:	447b      	add	r3, pc
20100aac:	001c      	movs	r4, r3
20100aae:	4694      	mov	ip, r2
20100ab0:	466a      	mov	r2, sp
20100ab2:	468a      	mov	sl, r1
20100ab4:	cca2      	ldmia	r4!, {r1, r5, r7}
20100ab6:	c2a2      	stmia	r2!, {r1, r5, r7}
20100ab8:	cca2      	ldmia	r4!, {r1, r5, r7}
20100aba:	c2a2      	stmia	r2!, {r1, r5, r7}
20100abc:	cc22      	ldmia	r4!, {r1, r5}
20100abe:	c222      	stmia	r2!, {r1, r5}
20100ac0:	3320      	adds	r3, #32
20100ac2:	aa08      	add	r2, sp, #32
20100ac4:	4690      	mov	r8, r2
20100ac6:	cb32      	ldmia	r3!, {r1, r4, r5}
20100ac8:	c232      	stmia	r2!, {r1, r4, r5}
20100aca:	cb32      	ldmia	r3!, {r1, r4, r5}
20100acc:	c232      	stmia	r2!, {r1, r4, r5}
20100ace:	cb12      	ldmia	r3!, {r1, r4}
20100ad0:	c212      	stmia	r2!, {r1, r4}
20100ad2:	6802      	ldr	r2, [r0, #0]
20100ad4:	6845      	ldr	r5, [r0, #4]
20100ad6:	17d1      	asrs	r1, r2, #31
20100ad8:	1853      	adds	r3, r2, r1
20100ada:	466e      	mov	r6, sp
20100adc:	404b      	eors	r3, r1
20100ade:	2d00      	cmp	r5, #0
20100ae0:	dd6c      	ble.n	20100bbc <cord_atan+0x120>
20100ae2:	195f      	adds	r7, r3, r5
20100ae4:	1aeb      	subs	r3, r5, r3
20100ae6:	9d00      	ldr	r5, [sp, #0]
20100ae8:	2b00      	cmp	r3, #0
20100aea:	d100      	bne.n	20100aee <cord_atan+0x52>
20100aec:	e094      	b.n	20100c18 <cord_atan+0x17c>
20100aee:	105c      	asrs	r4, r3, #1
20100af0:	2b00      	cmp	r3, #0
20100af2:	dd68      	ble.n	20100bc6 <cord_atan+0x12a>
20100af4:	1078      	asrs	r0, r7, #1
20100af6:	1a1b      	subs	r3, r3, r0
20100af8:	6870      	ldr	r0, [r6, #4]
20100afa:	19e4      	adds	r4, r4, r7
20100afc:	4681      	mov	r9, r0
20100afe:	444d      	add	r5, r9
20100b00:	2b00      	cmp	r3, #0
20100b02:	d100      	bne.n	20100b06 <cord_atan+0x6a>
20100b04:	e08a      	b.n	20100c1c <cord_atan+0x180>
20100b06:	1098      	asrs	r0, r3, #2
20100b08:	2b00      	cmp	r3, #0
20100b0a:	dd62      	ble.n	20100bd2 <cord_atan+0x136>
20100b0c:	1907      	adds	r7, r0, r4
20100b0e:	10a4      	asrs	r4, r4, #2
20100b10:	1b18      	subs	r0, r3, r4
20100b12:	68b3      	ldr	r3, [r6, #8]
20100b14:	4699      	mov	r9, r3
20100b16:	444d      	add	r5, r9
20100b18:	2800      	cmp	r0, #0
20100b1a:	d100      	bne.n	20100b1e <cord_atan+0x82>
20100b1c:	e081      	b.n	20100c22 <cord_atan+0x186>
20100b1e:	10c3      	asrs	r3, r0, #3
20100b20:	2800      	cmp	r0, #0
20100b22:	dd5c      	ble.n	20100bde <cord_atan+0x142>
20100b24:	10fc      	asrs	r4, r7, #3
20100b26:	1b00      	subs	r0, r0, r4
20100b28:	68f4      	ldr	r4, [r6, #12]
20100b2a:	19db      	adds	r3, r3, r7
20100b2c:	46a1      	mov	r9, r4
20100b2e:	444d      	add	r5, r9
20100b30:	2800      	cmp	r0, #0
20100b32:	d100      	bne.n	20100b36 <cord_atan+0x9a>
20100b34:	e077      	b.n	20100c26 <cord_atan+0x18a>
20100b36:	1104      	asrs	r4, r0, #4
20100b38:	2800      	cmp	r0, #0
20100b3a:	dd56      	ble.n	20100bea <cord_atan+0x14e>
20100b3c:	18e7      	adds	r7, r4, r3
20100b3e:	111b      	asrs	r3, r3, #4
20100b40:	1ac4      	subs	r4, r0, r3
20100b42:	6933      	ldr	r3, [r6, #16]
20100b44:	4699      	mov	r9, r3
20100b46:	444d      	add	r5, r9
20100b48:	2c00      	cmp	r4, #0
20100b4a:	d100      	bne.n	20100b4e <cord_atan+0xb2>
20100b4c:	e06e      	b.n	20100c2c <cord_atan+0x190>
20100b4e:	1163      	asrs	r3, r4, #5
20100b50:	2c00      	cmp	r4, #0
20100b52:	dd50      	ble.n	20100bf6 <cord_atan+0x15a>
20100b54:	1178      	asrs	r0, r7, #5
20100b56:	1a20      	subs	r0, r4, r0
20100b58:	6974      	ldr	r4, [r6, #20]
20100b5a:	19db      	adds	r3, r3, r7
20100b5c:	46a1      	mov	r9, r4
20100b5e:	444d      	add	r5, r9
20100b60:	2800      	cmp	r0, #0
20100b62:	d065      	beq.n	20100c30 <cord_atan+0x194>
20100b64:	1184      	asrs	r4, r0, #6
20100b66:	2800      	cmp	r0, #0
20100b68:	dd4b      	ble.n	20100c02 <cord_atan+0x166>
20100b6a:	18e7      	adds	r7, r4, r3
20100b6c:	119b      	asrs	r3, r3, #6
20100b6e:	1ac0      	subs	r0, r0, r3
20100b70:	69b3      	ldr	r3, [r6, #24]
20100b72:	4699      	mov	r9, r3
20100b74:	444d      	add	r5, r9
20100b76:	2800      	cmp	r0, #0
20100b78:	d05d      	beq.n	20100c36 <cord_atan+0x19a>
20100b7a:	dd48      	ble.n	20100c0e <cord_atan+0x172>
20100b7c:	69f3      	ldr	r3, [r6, #28]
20100b7e:	11c0      	asrs	r0, r0, #7
20100b80:	19c7      	adds	r7, r0, r7
20100b82:	18ed      	adds	r5, r5, r3
20100b84:	2307      	movs	r3, #7
20100b86:	2a00      	cmp	r2, #0
20100b88:	db14      	blt.n	20100bb4 <cord_atan+0x118>
20100b8a:	2d00      	cmp	r5, #0
20100b8c:	da03      	bge.n	20100b96 <cord_atan+0xfa>
20100b8e:	2280      	movs	r2, #128	; 0x80
20100b90:	00d2      	lsls	r2, r2, #3
20100b92:	4691      	mov	r9, r2
20100b94:	444d      	add	r5, r9
20100b96:	4652      	mov	r2, sl
20100b98:	6015      	str	r5, [r2, #0]
20100b9a:	4642      	mov	r2, r8
20100b9c:	009b      	lsls	r3, r3, #2
20100b9e:	58d0      	ldr	r0, [r2, r3]
20100ba0:	4663      	mov	r3, ip
20100ba2:	4378      	muls	r0, r7
20100ba4:	1280      	asrs	r0, r0, #10
20100ba6:	6018      	str	r0, [r3, #0]
20100ba8:	b010      	add	sp, #64	; 0x40
20100baa:	bc1c      	pop	{r2, r3, r4}
20100bac:	4690      	mov	r8, r2
20100bae:	4699      	mov	r9, r3
20100bb0:	46a2      	mov	sl, r4
20100bb2:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100bb4:	2280      	movs	r2, #128	; 0x80
20100bb6:	0092      	lsls	r2, r2, #2
20100bb8:	1b55      	subs	r5, r2, r5
20100bba:	e7e6      	b.n	20100b8a <cord_atan+0xee>
20100bbc:	9900      	ldr	r1, [sp, #0]
20100bbe:	1b5f      	subs	r7, r3, r5
20100bc0:	195b      	adds	r3, r3, r5
20100bc2:	424d      	negs	r5, r1
20100bc4:	e790      	b.n	20100ae8 <cord_atan+0x4c>
20100bc6:	6871      	ldr	r1, [r6, #4]
20100bc8:	1078      	asrs	r0, r7, #1
20100bca:	1b3c      	subs	r4, r7, r4
20100bcc:	18c3      	adds	r3, r0, r3
20100bce:	1a6d      	subs	r5, r5, r1
20100bd0:	e796      	b.n	20100b00 <cord_atan+0x64>
20100bd2:	1a27      	subs	r7, r4, r0
20100bd4:	10a0      	asrs	r0, r4, #2
20100bd6:	18c0      	adds	r0, r0, r3
20100bd8:	68b3      	ldr	r3, [r6, #8]
20100bda:	1aed      	subs	r5, r5, r3
20100bdc:	e79c      	b.n	20100b18 <cord_atan+0x7c>
20100bde:	68f1      	ldr	r1, [r6, #12]
20100be0:	10fc      	asrs	r4, r7, #3
20100be2:	1afb      	subs	r3, r7, r3
20100be4:	1820      	adds	r0, r4, r0
20100be6:	1a6d      	subs	r5, r5, r1
20100be8:	e7a2      	b.n	20100b30 <cord_atan+0x94>
20100bea:	1b1f      	subs	r7, r3, r4
20100bec:	111c      	asrs	r4, r3, #4
20100bee:	6933      	ldr	r3, [r6, #16]
20100bf0:	1824      	adds	r4, r4, r0
20100bf2:	1aed      	subs	r5, r5, r3
20100bf4:	e7a8      	b.n	20100b48 <cord_atan+0xac>
20100bf6:	6971      	ldr	r1, [r6, #20]
20100bf8:	1178      	asrs	r0, r7, #5
20100bfa:	1afb      	subs	r3, r7, r3
20100bfc:	1900      	adds	r0, r0, r4
20100bfe:	1a6d      	subs	r5, r5, r1
20100c00:	e7ae      	b.n	20100b60 <cord_atan+0xc4>
20100c02:	1b1f      	subs	r7, r3, r4
20100c04:	119b      	asrs	r3, r3, #6
20100c06:	1818      	adds	r0, r3, r0
20100c08:	69b3      	ldr	r3, [r6, #24]
20100c0a:	1aed      	subs	r5, r5, r3
20100c0c:	e7b3      	b.n	20100b76 <cord_atan+0xda>
20100c0e:	69f3      	ldr	r3, [r6, #28]
20100c10:	11c4      	asrs	r4, r0, #7
20100c12:	1b3f      	subs	r7, r7, r4
20100c14:	1aed      	subs	r5, r5, r3
20100c16:	e7b5      	b.n	20100b84 <cord_atan+0xe8>
20100c18:	2300      	movs	r3, #0
20100c1a:	e7b4      	b.n	20100b86 <cord_atan+0xea>
20100c1c:	0027      	movs	r7, r4
20100c1e:	2301      	movs	r3, #1
20100c20:	e7b1      	b.n	20100b86 <cord_atan+0xea>
20100c22:	2302      	movs	r3, #2
20100c24:	e7af      	b.n	20100b86 <cord_atan+0xea>
20100c26:	001f      	movs	r7, r3
20100c28:	2303      	movs	r3, #3
20100c2a:	e7ac      	b.n	20100b86 <cord_atan+0xea>
20100c2c:	2304      	movs	r3, #4
20100c2e:	e7aa      	b.n	20100b86 <cord_atan+0xea>
20100c30:	001f      	movs	r7, r3
20100c32:	2305      	movs	r3, #5
20100c34:	e7a7      	b.n	20100b86 <cord_atan+0xea>
20100c36:	2306      	movs	r3, #6
20100c38:	e7a5      	b.n	20100b86 <cord_atan+0xea>
20100c3a:	46c0      	nop			; (mov r8, r8)
20100c3c:	00001766 	.word	0x00001766

20100c40 <sinpwm>:
20100c40:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c42:	465f      	mov	r7, fp
20100c44:	4656      	mov	r6, sl
20100c46:	464d      	mov	r5, r9
20100c48:	4644      	mov	r4, r8
20100c4a:	b4f0      	push	{r4, r5, r6, r7}
20100c4c:	b089      	sub	sp, #36	; 0x24
20100c4e:	466c      	mov	r4, sp
20100c50:	4b75      	ldr	r3, [pc, #468]	; (20100e28 <sinpwm+0x1e8>)
20100c52:	46eb      	mov	fp, sp
20100c54:	447b      	add	r3, pc
20100c56:	469a      	mov	sl, r3
20100c58:	4b74      	ldr	r3, [pc, #464]	; (20100e2c <sinpwm+0x1ec>)
20100c5a:	447b      	add	r3, pc
20100c5c:	3320      	adds	r3, #32
20100c5e:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c60:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c62:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c64:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c66:	cb60      	ldmia	r3!, {r5, r6}
20100c68:	c460      	stmia	r4!, {r5, r6}
20100c6a:	680b      	ldr	r3, [r1, #0]
20100c6c:	684f      	ldr	r7, [r1, #4]
20100c6e:	17dd      	asrs	r5, r3, #31
20100c70:	195c      	adds	r4, r3, r5
20100c72:	469c      	mov	ip, r3
20100c74:	406c      	eors	r4, r5
20100c76:	2f00      	cmp	r7, #0
20100c78:	dc00      	bgt.n	20100c7c <sinpwm+0x3c>
20100c7a:	e09c      	b.n	20100db6 <sinpwm+0x176>
20100c7c:	19e3      	adds	r3, r4, r7
20100c7e:	1b3c      	subs	r4, r7, r4
20100c80:	46a0      	mov	r8, r4
20100c82:	4644      	mov	r4, r8
20100c84:	2c00      	cmp	r4, #0
20100c86:	d100      	bne.n	20100c8a <sinpwm+0x4a>
20100c88:	e0bc      	b.n	20100e04 <sinpwm+0x1c4>
20100c8a:	dc00      	bgt.n	20100c8e <sinpwm+0x4e>
20100c8c:	e097      	b.n	20100dbe <sinpwm+0x17e>
20100c8e:	4644      	mov	r4, r8
20100c90:	4645      	mov	r5, r8
20100c92:	1064      	asrs	r4, r4, #1
20100c94:	18e4      	adds	r4, r4, r3
20100c96:	105b      	asrs	r3, r3, #1
20100c98:	1aeb      	subs	r3, r5, r3
20100c9a:	4698      	mov	r8, r3
20100c9c:	4643      	mov	r3, r8
20100c9e:	2b00      	cmp	r3, #0
20100ca0:	d100      	bne.n	20100ca4 <sinpwm+0x64>
20100ca2:	e0b1      	b.n	20100e08 <sinpwm+0x1c8>
20100ca4:	dc00      	bgt.n	20100ca8 <sinpwm+0x68>
20100ca6:	e08f      	b.n	20100dc8 <sinpwm+0x188>
20100ca8:	4643      	mov	r3, r8
20100caa:	4645      	mov	r5, r8
20100cac:	109b      	asrs	r3, r3, #2
20100cae:	191b      	adds	r3, r3, r4
20100cb0:	10a4      	asrs	r4, r4, #2
20100cb2:	1b2c      	subs	r4, r5, r4
20100cb4:	46a0      	mov	r8, r4
20100cb6:	4644      	mov	r4, r8
20100cb8:	2c00      	cmp	r4, #0
20100cba:	d100      	bne.n	20100cbe <sinpwm+0x7e>
20100cbc:	e0a7      	b.n	20100e0e <sinpwm+0x1ce>
20100cbe:	dc00      	bgt.n	20100cc2 <sinpwm+0x82>
20100cc0:	e087      	b.n	20100dd2 <sinpwm+0x192>
20100cc2:	4644      	mov	r4, r8
20100cc4:	4645      	mov	r5, r8
20100cc6:	10e4      	asrs	r4, r4, #3
20100cc8:	18e4      	adds	r4, r4, r3
20100cca:	10db      	asrs	r3, r3, #3
20100ccc:	1aeb      	subs	r3, r5, r3
20100cce:	4698      	mov	r8, r3
20100cd0:	4643      	mov	r3, r8
20100cd2:	2b00      	cmp	r3, #0
20100cd4:	d100      	bne.n	20100cd8 <sinpwm+0x98>
20100cd6:	e09c      	b.n	20100e12 <sinpwm+0x1d2>
20100cd8:	dc00      	bgt.n	20100cdc <sinpwm+0x9c>
20100cda:	e07f      	b.n	20100ddc <sinpwm+0x19c>
20100cdc:	4643      	mov	r3, r8
20100cde:	4645      	mov	r5, r8
20100ce0:	111b      	asrs	r3, r3, #4
20100ce2:	191b      	adds	r3, r3, r4
20100ce4:	1124      	asrs	r4, r4, #4
20100ce6:	1b2c      	subs	r4, r5, r4
20100ce8:	2c00      	cmp	r4, #0
20100cea:	d100      	bne.n	20100cee <sinpwm+0xae>
20100cec:	e094      	b.n	20100e18 <sinpwm+0x1d8>
20100cee:	1165      	asrs	r5, r4, #5
20100cf0:	46a8      	mov	r8, r5
20100cf2:	2c00      	cmp	r4, #0
20100cf4:	dc00      	bgt.n	20100cf8 <sinpwm+0xb8>
20100cf6:	e076      	b.n	20100de6 <sinpwm+0x1a6>
20100cf8:	4498      	add	r8, r3
20100cfa:	46c1      	mov	r9, r8
20100cfc:	115b      	asrs	r3, r3, #5
20100cfe:	1ae4      	subs	r4, r4, r3
20100d00:	2c00      	cmp	r4, #0
20100d02:	d100      	bne.n	20100d06 <sinpwm+0xc6>
20100d04:	e08a      	b.n	20100e1c <sinpwm+0x1dc>
20100d06:	11a3      	asrs	r3, r4, #6
20100d08:	2c00      	cmp	r4, #0
20100d0a:	dc00      	bgt.n	20100d0e <sinpwm+0xce>
20100d0c:	e070      	b.n	20100df0 <sinpwm+0x1b0>
20100d0e:	444b      	add	r3, r9
20100d10:	4698      	mov	r8, r3
20100d12:	464b      	mov	r3, r9
20100d14:	119b      	asrs	r3, r3, #6
20100d16:	1ae4      	subs	r4, r4, r3
20100d18:	2c00      	cmp	r4, #0
20100d1a:	d100      	bne.n	20100d1e <sinpwm+0xde>
20100d1c:	e081      	b.n	20100e22 <sinpwm+0x1e2>
20100d1e:	dd6d      	ble.n	20100dfc <sinpwm+0x1bc>
20100d20:	11e4      	asrs	r4, r4, #7
20100d22:	0023      	movs	r3, r4
20100d24:	4443      	add	r3, r8
20100d26:	2407      	movs	r4, #7
20100d28:	465d      	mov	r5, fp
20100d2a:	00a4      	lsls	r4, r4, #2
20100d2c:	592c      	ldr	r4, [r5, r4]
20100d2e:	4655      	mov	r5, sl
20100d30:	4666      	mov	r6, ip
20100d32:	4363      	muls	r3, r4
20100d34:	4c3e      	ldr	r4, [pc, #248]	; (20100e30 <sinpwm+0x1f0>)
20100d36:	151b      	asrs	r3, r3, #20
20100d38:	592d      	ldr	r5, [r5, r4]
20100d3a:	0094      	lsls	r4, r2, #2
20100d3c:	5964      	ldr	r4, [r4, r5]
20100d3e:	4374      	muls	r4, r6
20100d40:	26c0      	movs	r6, #192	; 0xc0
20100d42:	00b6      	lsls	r6, r6, #2
20100d44:	1996      	adds	r6, r2, r6
20100d46:	05b6      	lsls	r6, r6, #22
20100d48:	0d36      	lsrs	r6, r6, #20
20100d4a:	5976      	ldr	r6, [r6, r5]
20100d4c:	4377      	muls	r7, r6
20100d4e:	1be7      	subs	r7, r4, r7
20100d50:	4c38      	ldr	r4, [pc, #224]	; (20100e34 <sinpwm+0x1f4>)
20100d52:	153f      	asrs	r7, r7, #20
20100d54:	1914      	adds	r4, r2, r4
20100d56:	05a4      	lsls	r4, r4, #22
20100d58:	6007      	str	r7, [r0, #0]
20100d5a:	0d24      	lsrs	r4, r4, #20
20100d5c:	5964      	ldr	r4, [r4, r5]
20100d5e:	680e      	ldr	r6, [r1, #0]
20100d60:	684f      	ldr	r7, [r1, #4]
20100d62:	4366      	muls	r6, r4
20100d64:	4c34      	ldr	r4, [pc, #208]	; (20100e38 <sinpwm+0x1f8>)
20100d66:	1914      	adds	r4, r2, r4
20100d68:	05a4      	lsls	r4, r4, #22
20100d6a:	0d24      	lsrs	r4, r4, #20
20100d6c:	5964      	ldr	r4, [r4, r5]
20100d6e:	437c      	muls	r4, r7
20100d70:	1b34      	subs	r4, r6, r4
20100d72:	1524      	asrs	r4, r4, #20
20100d74:	6044      	str	r4, [r0, #4]
20100d76:	0014      	movs	r4, r2
20100d78:	3456      	adds	r4, #86	; 0x56
20100d7a:	34ff      	adds	r4, #255	; 0xff
20100d7c:	05a4      	lsls	r4, r4, #22
20100d7e:	0d24      	lsrs	r4, r4, #20
20100d80:	680e      	ldr	r6, [r1, #0]
20100d82:	5964      	ldr	r4, [r4, r5]
20100d84:	4374      	muls	r4, r6
20100d86:	4e2d      	ldr	r6, [pc, #180]	; (20100e3c <sinpwm+0x1fc>)
20100d88:	46b4      	mov	ip, r6
20100d8a:	4462      	add	r2, ip
20100d8c:	0592      	lsls	r2, r2, #22
20100d8e:	0d12      	lsrs	r2, r2, #20
20100d90:	5955      	ldr	r5, [r2, r5]
20100d92:	684a      	ldr	r2, [r1, #4]
20100d94:	436a      	muls	r2, r5
20100d96:	1aa2      	subs	r2, r4, r2
20100d98:	1512      	asrs	r2, r2, #20
20100d9a:	6082      	str	r2, [r0, #8]
20100d9c:	22fa      	movs	r2, #250	; 0xfa
20100d9e:	2001      	movs	r0, #1
20100da0:	0052      	lsls	r2, r2, #1
20100da2:	4293      	cmp	r3, r2
20100da4:	dc00      	bgt.n	20100da8 <sinpwm+0x168>
20100da6:	2000      	movs	r0, #0
20100da8:	b009      	add	sp, #36	; 0x24
20100daa:	bc3c      	pop	{r2, r3, r4, r5}
20100dac:	4690      	mov	r8, r2
20100dae:	4699      	mov	r9, r3
20100db0:	46a2      	mov	sl, r4
20100db2:	46ab      	mov	fp, r5
20100db4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100db6:	46a0      	mov	r8, r4
20100db8:	1be3      	subs	r3, r4, r7
20100dba:	44b8      	add	r8, r7
20100dbc:	e761      	b.n	20100c82 <sinpwm+0x42>
20100dbe:	1064      	asrs	r4, r4, #1
20100dc0:	1b1c      	subs	r4, r3, r4
20100dc2:	105b      	asrs	r3, r3, #1
20100dc4:	4498      	add	r8, r3
20100dc6:	e769      	b.n	20100c9c <sinpwm+0x5c>
20100dc8:	109b      	asrs	r3, r3, #2
20100dca:	1ae3      	subs	r3, r4, r3
20100dcc:	10a4      	asrs	r4, r4, #2
20100dce:	44a0      	add	r8, r4
20100dd0:	e771      	b.n	20100cb6 <sinpwm+0x76>
20100dd2:	10e4      	asrs	r4, r4, #3
20100dd4:	1b1c      	subs	r4, r3, r4
20100dd6:	10db      	asrs	r3, r3, #3
20100dd8:	4498      	add	r8, r3
20100dda:	e779      	b.n	20100cd0 <sinpwm+0x90>
20100ddc:	111b      	asrs	r3, r3, #4
20100dde:	1ae3      	subs	r3, r4, r3
20100de0:	1124      	asrs	r4, r4, #4
20100de2:	4444      	add	r4, r8
20100de4:	e780      	b.n	20100ce8 <sinpwm+0xa8>
20100de6:	1b5d      	subs	r5, r3, r5
20100de8:	115b      	asrs	r3, r3, #5
20100dea:	46a9      	mov	r9, r5
20100dec:	191c      	adds	r4, r3, r4
20100dee:	e787      	b.n	20100d00 <sinpwm+0xc0>
20100df0:	464d      	mov	r5, r9
20100df2:	1aeb      	subs	r3, r5, r3
20100df4:	4698      	mov	r8, r3
20100df6:	11ab      	asrs	r3, r5, #6
20100df8:	191c      	adds	r4, r3, r4
20100dfa:	e78d      	b.n	20100d18 <sinpwm+0xd8>
20100dfc:	4643      	mov	r3, r8
20100dfe:	11e4      	asrs	r4, r4, #7
20100e00:	1b1b      	subs	r3, r3, r4
20100e02:	e790      	b.n	20100d26 <sinpwm+0xe6>
20100e04:	2400      	movs	r4, #0
20100e06:	e78f      	b.n	20100d28 <sinpwm+0xe8>
20100e08:	0023      	movs	r3, r4
20100e0a:	2401      	movs	r4, #1
20100e0c:	e78c      	b.n	20100d28 <sinpwm+0xe8>
20100e0e:	2402      	movs	r4, #2
20100e10:	e78a      	b.n	20100d28 <sinpwm+0xe8>
20100e12:	0023      	movs	r3, r4
20100e14:	2403      	movs	r4, #3
20100e16:	e787      	b.n	20100d28 <sinpwm+0xe8>
20100e18:	2404      	movs	r4, #4
20100e1a:	e785      	b.n	20100d28 <sinpwm+0xe8>
20100e1c:	464b      	mov	r3, r9
20100e1e:	2405      	movs	r4, #5
20100e20:	e782      	b.n	20100d28 <sinpwm+0xe8>
20100e22:	4643      	mov	r3, r8
20100e24:	2406      	movs	r4, #6
20100e26:	e77f      	b.n	20100d28 <sinpwm+0xe8>
20100e28:	ffeff3ac 	.word	0xffeff3ac
20100e2c:	000015b6 	.word	0x000015b6
20100e30:	00000000 	.word	0x00000000
20100e34:	000002aa 	.word	0x000002aa
20100e38:	000005aa 	.word	0x000005aa
20100e3c:	00000455 	.word	0x00000455

20100e40 <svpwm>:
20100e40:	b5f0      	push	{r4, r5, r6, r7, lr}
20100e42:	465f      	mov	r7, fp
20100e44:	4656      	mov	r6, sl
20100e46:	4644      	mov	r4, r8
20100e48:	464d      	mov	r5, r9
20100e4a:	b4f0      	push	{r4, r5, r6, r7}
20100e4c:	0005      	movs	r5, r0
20100e4e:	48d0      	ldr	r0, [pc, #832]	; (20101190 <svpwm+0x350>)
20100e50:	b091      	sub	sp, #68	; 0x44
20100e52:	4478      	add	r0, pc
20100e54:	0006      	movs	r6, r0
20100e56:	466c      	mov	r4, sp
20100e58:	4bce      	ldr	r3, [pc, #824]	; (20101194 <svpwm+0x354>)
20100e5a:	4693      	mov	fp, r2
20100e5c:	447b      	add	r3, pc
20100e5e:	469a      	mov	sl, r3
20100e60:	468c      	mov	ip, r1
20100e62:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100e64:	c40e      	stmia	r4!, {r1, r2, r3}
20100e66:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100e68:	c40e      	stmia	r4!, {r1, r2, r3}
20100e6a:	ce0c      	ldmia	r6!, {r2, r3}
20100e6c:	c40c      	stmia	r4!, {r2, r3}
20100e6e:	ae08      	add	r6, sp, #32
20100e70:	0034      	movs	r4, r6
20100e72:	3020      	adds	r0, #32
20100e74:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e76:	c40e      	stmia	r4!, {r1, r2, r3}
20100e78:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e7a:	c40e      	stmia	r4!, {r1, r2, r3}
20100e7c:	c80c      	ldmia	r0!, {r2, r3}
20100e7e:	c40c      	stmia	r4!, {r2, r3}
20100e80:	4663      	mov	r3, ip
20100e82:	681c      	ldr	r4, [r3, #0]
20100e84:	466f      	mov	r7, sp
20100e86:	17e2      	asrs	r2, r4, #31
20100e88:	18a3      	adds	r3, r4, r2
20100e8a:	4053      	eors	r3, r2
20100e8c:	4698      	mov	r8, r3
20100e8e:	4663      	mov	r3, ip
20100e90:	685b      	ldr	r3, [r3, #4]
20100e92:	2b00      	cmp	r3, #0
20100e94:	dc00      	bgt.n	20100e98 <svpwm+0x58>
20100e96:	e0b5      	b.n	20101004 <svpwm+0x1c4>
20100e98:	4641      	mov	r1, r8
20100e9a:	18c8      	adds	r0, r1, r3
20100e9c:	1a5b      	subs	r3, r3, r1
20100e9e:	4698      	mov	r8, r3
20100ea0:	9b00      	ldr	r3, [sp, #0]
20100ea2:	4641      	mov	r1, r8
20100ea4:	2900      	cmp	r1, #0
20100ea6:	d100      	bne.n	20100eaa <svpwm+0x6a>
20100ea8:	e15f      	b.n	2010116a <svpwm+0x32a>
20100eaa:	dc00      	bgt.n	20100eae <svpwm+0x6e>
20100eac:	e0b0      	b.n	20101010 <svpwm+0x1d0>
20100eae:	4641      	mov	r1, r8
20100eb0:	1049      	asrs	r1, r1, #1
20100eb2:	4689      	mov	r9, r1
20100eb4:	1041      	asrs	r1, r0, #1
20100eb6:	4481      	add	r9, r0
20100eb8:	4640      	mov	r0, r8
20100eba:	1a41      	subs	r1, r0, r1
20100ebc:	4688      	mov	r8, r1
20100ebe:	6879      	ldr	r1, [r7, #4]
20100ec0:	468c      	mov	ip, r1
20100ec2:	4463      	add	r3, ip
20100ec4:	4641      	mov	r1, r8
20100ec6:	2900      	cmp	r1, #0
20100ec8:	d100      	bne.n	20100ecc <svpwm+0x8c>
20100eca:	e150      	b.n	2010116e <svpwm+0x32e>
20100ecc:	dc00      	bgt.n	20100ed0 <svpwm+0x90>
20100ece:	e0a7      	b.n	20101020 <svpwm+0x1e0>
20100ed0:	4641      	mov	r1, r8
20100ed2:	1089      	asrs	r1, r1, #2
20100ed4:	4449      	add	r1, r9
20100ed6:	0008      	movs	r0, r1
20100ed8:	4649      	mov	r1, r9
20100eda:	4642      	mov	r2, r8
20100edc:	1089      	asrs	r1, r1, #2
20100ede:	1a51      	subs	r1, r2, r1
20100ee0:	68ba      	ldr	r2, [r7, #8]
20100ee2:	4688      	mov	r8, r1
20100ee4:	4694      	mov	ip, r2
20100ee6:	4463      	add	r3, ip
20100ee8:	4641      	mov	r1, r8
20100eea:	2900      	cmp	r1, #0
20100eec:	d100      	bne.n	20100ef0 <svpwm+0xb0>
20100eee:	e141      	b.n	20101174 <svpwm+0x334>
20100ef0:	4642      	mov	r2, r8
20100ef2:	dc00      	bgt.n	20100ef6 <svpwm+0xb6>
20100ef4:	e09c      	b.n	20101030 <svpwm+0x1f0>
20100ef6:	10c9      	asrs	r1, r1, #3
20100ef8:	1809      	adds	r1, r1, r0
20100efa:	10c0      	asrs	r0, r0, #3
20100efc:	1a12      	subs	r2, r2, r0
20100efe:	4690      	mov	r8, r2
20100f00:	68fa      	ldr	r2, [r7, #12]
20100f02:	4694      	mov	ip, r2
20100f04:	4463      	add	r3, ip
20100f06:	4640      	mov	r0, r8
20100f08:	2800      	cmp	r0, #0
20100f0a:	d100      	bne.n	20100f0e <svpwm+0xce>
20100f0c:	e134      	b.n	20101178 <svpwm+0x338>
20100f0e:	4642      	mov	r2, r8
20100f10:	dc00      	bgt.n	20100f14 <svpwm+0xd4>
20100f12:	e094      	b.n	2010103e <svpwm+0x1fe>
20100f14:	1100      	asrs	r0, r0, #4
20100f16:	1840      	adds	r0, r0, r1
20100f18:	1109      	asrs	r1, r1, #4
20100f1a:	1a52      	subs	r2, r2, r1
20100f1c:	4690      	mov	r8, r2
20100f1e:	693a      	ldr	r2, [r7, #16]
20100f20:	4694      	mov	ip, r2
20100f22:	4463      	add	r3, ip
20100f24:	4641      	mov	r1, r8
20100f26:	2900      	cmp	r1, #0
20100f28:	d100      	bne.n	20100f2c <svpwm+0xec>
20100f2a:	e128      	b.n	2010117e <svpwm+0x33e>
20100f2c:	4642      	mov	r2, r8
20100f2e:	dc00      	bgt.n	20100f32 <svpwm+0xf2>
20100f30:	e08c      	b.n	2010104c <svpwm+0x20c>
20100f32:	1149      	asrs	r1, r1, #5
20100f34:	4689      	mov	r9, r1
20100f36:	1141      	asrs	r1, r0, #5
20100f38:	1a51      	subs	r1, r2, r1
20100f3a:	697a      	ldr	r2, [r7, #20]
20100f3c:	4481      	add	r9, r0
20100f3e:	4694      	mov	ip, r2
20100f40:	4463      	add	r3, ip
20100f42:	2900      	cmp	r1, #0
20100f44:	d100      	bne.n	20100f48 <svpwm+0x108>
20100f46:	e11c      	b.n	20101182 <svpwm+0x342>
20100f48:	1188      	asrs	r0, r1, #6
20100f4a:	2900      	cmp	r1, #0
20100f4c:	dc00      	bgt.n	20100f50 <svpwm+0x110>
20100f4e:	e086      	b.n	2010105e <svpwm+0x21e>
20100f50:	464a      	mov	r2, r9
20100f52:	4448      	add	r0, r9
20100f54:	4680      	mov	r8, r0
20100f56:	1190      	asrs	r0, r2, #6
20100f58:	69ba      	ldr	r2, [r7, #24]
20100f5a:	1a09      	subs	r1, r1, r0
20100f5c:	4694      	mov	ip, r2
20100f5e:	4463      	add	r3, ip
20100f60:	2900      	cmp	r1, #0
20100f62:	d100      	bne.n	20100f66 <svpwm+0x126>
20100f64:	e110      	b.n	20101188 <svpwm+0x348>
20100f66:	dc00      	bgt.n	20100f6a <svpwm+0x12a>
20100f68:	e0e2      	b.n	20101130 <svpwm+0x2f0>
20100f6a:	11c9      	asrs	r1, r1, #7
20100f6c:	4441      	add	r1, r8
20100f6e:	0008      	movs	r0, r1
20100f70:	69f9      	ldr	r1, [r7, #28]
20100f72:	185b      	adds	r3, r3, r1
20100f74:	2107      	movs	r1, #7
20100f76:	2c00      	cmp	r4, #0
20100f78:	db40      	blt.n	20100ffc <svpwm+0x1bc>
20100f7a:	2b00      	cmp	r3, #0
20100f7c:	da03      	bge.n	20100f86 <svpwm+0x146>
20100f7e:	2280      	movs	r2, #128	; 0x80
20100f80:	00d2      	lsls	r2, r2, #3
20100f82:	4694      	mov	ip, r2
20100f84:	4463      	add	r3, ip
20100f86:	22fa      	movs	r2, #250	; 0xfa
20100f88:	0089      	lsls	r1, r1, #2
20100f8a:	5871      	ldr	r1, [r6, r1]
20100f8c:	445b      	add	r3, fp
20100f8e:	4341      	muls	r1, r0
20100f90:	059b      	lsls	r3, r3, #22
20100f92:	1509      	asrs	r1, r1, #20
20100f94:	0d9b      	lsrs	r3, r3, #22
20100f96:	0052      	lsls	r2, r2, #1
20100f98:	2400      	movs	r4, #0
20100f9a:	4291      	cmp	r1, r2
20100f9c:	dd01      	ble.n	20100fa2 <svpwm+0x162>
20100f9e:	0011      	movs	r1, r2
20100fa0:	3401      	adds	r4, #1
20100fa2:	0058      	lsls	r0, r3, #1
20100fa4:	18c0      	adds	r0, r0, r3
20100fa6:	1240      	asrs	r0, r0, #9
20100fa8:	3801      	subs	r0, #1
20100faa:	4a7b      	ldr	r2, [pc, #492]	; (20101198 <svpwm+0x358>)
20100fac:	2804      	cmp	r0, #4
20100fae:	d920      	bls.n	20100ff2 <svpwm+0x1b2>
20100fb0:	26c0      	movs	r6, #192	; 0xc0
20100fb2:	4650      	mov	r0, sl
20100fb4:	00b6      	lsls	r6, r6, #2
20100fb6:	46b4      	mov	ip, r6
20100fb8:	5880      	ldr	r0, [r0, r2]
20100fba:	4a78      	ldr	r2, [pc, #480]	; (2010119c <svpwm+0x35c>)
20100fbc:	1ad2      	subs	r2, r2, r3
20100fbe:	4463      	add	r3, ip
20100fc0:	0592      	lsls	r2, r2, #22
20100fc2:	059b      	lsls	r3, r3, #22
20100fc4:	0d12      	lsrs	r2, r2, #20
20100fc6:	0d1b      	lsrs	r3, r3, #20
20100fc8:	581b      	ldr	r3, [r3, r0]
20100fca:	5812      	ldr	r2, [r2, r0]
20100fcc:	434a      	muls	r2, r1
20100fce:	4359      	muls	r1, r3
20100fd0:	1292      	asrs	r2, r2, #10
20100fd2:	1289      	asrs	r1, r1, #10
20100fd4:	1853      	adds	r3, r2, r1
20100fd6:	602b      	str	r3, [r5, #0]
20100fd8:	1a8b      	subs	r3, r1, r2
20100fda:	4252      	negs	r2, r2
20100fdc:	1a52      	subs	r2, r2, r1
20100fde:	606b      	str	r3, [r5, #4]
20100fe0:	60aa      	str	r2, [r5, #8]
20100fe2:	0020      	movs	r0, r4
20100fe4:	b011      	add	sp, #68	; 0x44
20100fe6:	bc3c      	pop	{r2, r3, r4, r5}
20100fe8:	4690      	mov	r8, r2
20100fea:	4699      	mov	r9, r3
20100fec:	46a2      	mov	sl, r4
20100fee:	46ab      	mov	fp, r5
20100ff0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100ff2:	f000 f905 	bl	20101200 <__gnu_thumb1_case_uqi>
20100ff6:	856c      	.short	0x856c
20100ff8:	553d      	.short	0x553d
20100ffa:	a3          	.byte	0xa3
20100ffb:	00          	.byte	0x00
20100ffc:	2480      	movs	r4, #128	; 0x80
20100ffe:	00a4      	lsls	r4, r4, #2
20101000:	1ae3      	subs	r3, r4, r3
20101002:	e7ba      	b.n	20100f7a <svpwm+0x13a>
20101004:	4642      	mov	r2, r8
20101006:	4498      	add	r8, r3
20101008:	1ad0      	subs	r0, r2, r3
2010100a:	9b00      	ldr	r3, [sp, #0]
2010100c:	425b      	negs	r3, r3
2010100e:	e748      	b.n	20100ea2 <svpwm+0x62>
20101010:	1049      	asrs	r1, r1, #1
20101012:	1a42      	subs	r2, r0, r1
20101014:	4691      	mov	r9, r2
20101016:	687a      	ldr	r2, [r7, #4]
20101018:	1041      	asrs	r1, r0, #1
2010101a:	4488      	add	r8, r1
2010101c:	1a9b      	subs	r3, r3, r2
2010101e:	e751      	b.n	20100ec4 <svpwm+0x84>
20101020:	464a      	mov	r2, r9
20101022:	1089      	asrs	r1, r1, #2
20101024:	1a50      	subs	r0, r2, r1
20101026:	1091      	asrs	r1, r2, #2
20101028:	68ba      	ldr	r2, [r7, #8]
2010102a:	4488      	add	r8, r1
2010102c:	1a9b      	subs	r3, r3, r2
2010102e:	e75b      	b.n	20100ee8 <svpwm+0xa8>
20101030:	10c9      	asrs	r1, r1, #3
20101032:	68fa      	ldr	r2, [r7, #12]
20101034:	1a41      	subs	r1, r0, r1
20101036:	10c0      	asrs	r0, r0, #3
20101038:	4480      	add	r8, r0
2010103a:	1a9b      	subs	r3, r3, r2
2010103c:	e763      	b.n	20100f06 <svpwm+0xc6>
2010103e:	1100      	asrs	r0, r0, #4
20101040:	693a      	ldr	r2, [r7, #16]
20101042:	1a08      	subs	r0, r1, r0
20101044:	1109      	asrs	r1, r1, #4
20101046:	4488      	add	r8, r1
20101048:	1a9b      	subs	r3, r3, r2
2010104a:	e76b      	b.n	20100f24 <svpwm+0xe4>
2010104c:	1149      	asrs	r1, r1, #5
2010104e:	1a42      	subs	r2, r0, r1
20101050:	1140      	asrs	r0, r0, #5
20101052:	0001      	movs	r1, r0
20101054:	4691      	mov	r9, r2
20101056:	697a      	ldr	r2, [r7, #20]
20101058:	4441      	add	r1, r8
2010105a:	1a9b      	subs	r3, r3, r2
2010105c:	e771      	b.n	20100f42 <svpwm+0x102>
2010105e:	464a      	mov	r2, r9
20101060:	1a12      	subs	r2, r2, r0
20101062:	4690      	mov	r8, r2
20101064:	464a      	mov	r2, r9
20101066:	1190      	asrs	r0, r2, #6
20101068:	69ba      	ldr	r2, [r7, #24]
2010106a:	1841      	adds	r1, r0, r1
2010106c:	1a9b      	subs	r3, r3, r2
2010106e:	e777      	b.n	20100f60 <svpwm+0x120>
20101070:	4650      	mov	r0, sl
20101072:	5880      	ldr	r0, [r0, r2]
20101074:	4a4a      	ldr	r2, [pc, #296]	; (201011a0 <svpwm+0x360>)
20101076:	1ad2      	subs	r2, r2, r3
20101078:	3301      	adds	r3, #1
2010107a:	0592      	lsls	r2, r2, #22
2010107c:	33ff      	adds	r3, #255	; 0xff
2010107e:	0d12      	lsrs	r2, r2, #20
20101080:	059b      	lsls	r3, r3, #22
20101082:	5812      	ldr	r2, [r2, r0]
20101084:	0d1b      	lsrs	r3, r3, #20
20101086:	581b      	ldr	r3, [r3, r0]
20101088:	434a      	muls	r2, r1
2010108a:	434b      	muls	r3, r1
2010108c:	1292      	asrs	r2, r2, #10
2010108e:	1299      	asrs	r1, r3, #10
20101090:	4253      	negs	r3, r2
20101092:	1a5b      	subs	r3, r3, r1
20101094:	602b      	str	r3, [r5, #0]
20101096:	1a53      	subs	r3, r2, r1
20101098:	1851      	adds	r1, r2, r1
2010109a:	606b      	str	r3, [r5, #4]
2010109c:	60a9      	str	r1, [r5, #8]
2010109e:	e7a0      	b.n	20100fe2 <svpwm+0x1a2>
201010a0:	4650      	mov	r0, sl
201010a2:	5880      	ldr	r0, [r0, r2]
201010a4:	4a3f      	ldr	r2, [pc, #252]	; (201011a4 <svpwm+0x364>)
201010a6:	1ad2      	subs	r2, r2, r3
201010a8:	3356      	adds	r3, #86	; 0x56
201010aa:	0592      	lsls	r2, r2, #22
201010ac:	059b      	lsls	r3, r3, #22
201010ae:	0d12      	lsrs	r2, r2, #20
201010b0:	0d1b      	lsrs	r3, r3, #20
201010b2:	5816      	ldr	r6, [r2, r0]
201010b4:	581b      	ldr	r3, [r3, r0]
201010b6:	434e      	muls	r6, r1
201010b8:	434b      	muls	r3, r1
201010ba:	12b6      	asrs	r6, r6, #10
201010bc:	1299      	asrs	r1, r3, #10
201010be:	1b8b      	subs	r3, r1, r6
201010c0:	602b      	str	r3, [r5, #0]
201010c2:	4273      	negs	r3, r6
201010c4:	1a5b      	subs	r3, r3, r1
201010c6:	1871      	adds	r1, r6, r1
201010c8:	606b      	str	r3, [r5, #4]
201010ca:	60a9      	str	r1, [r5, #8]
201010cc:	e789      	b.n	20100fe2 <svpwm+0x1a2>
201010ce:	4650      	mov	r0, sl
201010d0:	5886      	ldr	r6, [r0, r2]
201010d2:	4a35      	ldr	r2, [pc, #212]	; (201011a8 <svpwm+0x368>)
201010d4:	1ad2      	subs	r2, r2, r3
201010d6:	0592      	lsls	r2, r2, #22
201010d8:	0d12      	lsrs	r2, r2, #20
201010da:	5990      	ldr	r0, [r2, r6]
201010dc:	4a33      	ldr	r2, [pc, #204]	; (201011ac <svpwm+0x36c>)
201010de:	4348      	muls	r0, r1
201010e0:	4694      	mov	ip, r2
201010e2:	4463      	add	r3, ip
201010e4:	059b      	lsls	r3, r3, #22
201010e6:	0d1b      	lsrs	r3, r3, #20
201010e8:	599b      	ldr	r3, [r3, r6]
201010ea:	1280      	asrs	r0, r0, #10
201010ec:	4359      	muls	r1, r3
201010ee:	1289      	asrs	r1, r1, #10
201010f0:	1a43      	subs	r3, r0, r1
201010f2:	602b      	str	r3, [r5, #0]
201010f4:	1843      	adds	r3, r0, r1
201010f6:	4240      	negs	r0, r0
201010f8:	1a40      	subs	r0, r0, r1
201010fa:	606b      	str	r3, [r5, #4]
201010fc:	60a8      	str	r0, [r5, #8]
201010fe:	e770      	b.n	20100fe2 <svpwm+0x1a2>
20101100:	4650      	mov	r0, sl
20101102:	5880      	ldr	r0, [r0, r2]
20101104:	4a2a      	ldr	r2, [pc, #168]	; (201011b0 <svpwm+0x370>)
20101106:	1ad2      	subs	r2, r2, r3
20101108:	33ac      	adds	r3, #172	; 0xac
2010110a:	0592      	lsls	r2, r2, #22
2010110c:	33ff      	adds	r3, #255	; 0xff
2010110e:	0d12      	lsrs	r2, r2, #20
20101110:	059b      	lsls	r3, r3, #22
20101112:	5816      	ldr	r6, [r2, r0]
20101114:	0d1b      	lsrs	r3, r3, #20
20101116:	581b      	ldr	r3, [r3, r0]
20101118:	434e      	muls	r6, r1
2010111a:	4359      	muls	r1, r3
2010111c:	12b6      	asrs	r6, r6, #10
2010111e:	1289      	asrs	r1, r1, #10
20101120:	4273      	negs	r3, r6
20101122:	1a5b      	subs	r3, r3, r1
20101124:	602b      	str	r3, [r5, #0]
20101126:	1873      	adds	r3, r6, r1
20101128:	1b89      	subs	r1, r1, r6
2010112a:	606b      	str	r3, [r5, #4]
2010112c:	60a9      	str	r1, [r5, #8]
2010112e:	e758      	b.n	20100fe2 <svpwm+0x1a2>
20101130:	4642      	mov	r2, r8
20101132:	11c9      	asrs	r1, r1, #7
20101134:	1a50      	subs	r0, r2, r1
20101136:	69f9      	ldr	r1, [r7, #28]
20101138:	1a5b      	subs	r3, r3, r1
2010113a:	e71b      	b.n	20100f74 <svpwm+0x134>
2010113c:	4650      	mov	r0, sl
2010113e:	5882      	ldr	r2, [r0, r2]
20101140:	481c      	ldr	r0, [pc, #112]	; (201011b4 <svpwm+0x374>)
20101142:	1ac0      	subs	r0, r0, r3
20101144:	3b55      	subs	r3, #85	; 0x55
20101146:	0580      	lsls	r0, r0, #22
20101148:	059b      	lsls	r3, r3, #22
2010114a:	0d00      	lsrs	r0, r0, #20
2010114c:	0d1b      	lsrs	r3, r3, #20
2010114e:	589b      	ldr	r3, [r3, r2]
20101150:	5880      	ldr	r0, [r0, r2]
20101152:	4348      	muls	r0, r1
20101154:	4359      	muls	r1, r3
20101156:	1280      	asrs	r0, r0, #10
20101158:	1289      	asrs	r1, r1, #10
2010115a:	1843      	adds	r3, r0, r1
2010115c:	602b      	str	r3, [r5, #0]
2010115e:	4243      	negs	r3, r0
20101160:	1a5b      	subs	r3, r3, r1
20101162:	1a41      	subs	r1, r0, r1
20101164:	606b      	str	r3, [r5, #4]
20101166:	60a9      	str	r1, [r5, #8]
20101168:	e73b      	b.n	20100fe2 <svpwm+0x1a2>
2010116a:	2100      	movs	r1, #0
2010116c:	e703      	b.n	20100f76 <svpwm+0x136>
2010116e:	4648      	mov	r0, r9
20101170:	2101      	movs	r1, #1
20101172:	e700      	b.n	20100f76 <svpwm+0x136>
20101174:	2102      	movs	r1, #2
20101176:	e6fe      	b.n	20100f76 <svpwm+0x136>
20101178:	0008      	movs	r0, r1
2010117a:	2103      	movs	r1, #3
2010117c:	e6fb      	b.n	20100f76 <svpwm+0x136>
2010117e:	2104      	movs	r1, #4
20101180:	e6f9      	b.n	20100f76 <svpwm+0x136>
20101182:	4648      	mov	r0, r9
20101184:	2105      	movs	r1, #5
20101186:	e6f6      	b.n	20100f76 <svpwm+0x136>
20101188:	4640      	mov	r0, r8
2010118a:	2106      	movs	r1, #6
2010118c:	e6f3      	b.n	20100f76 <svpwm+0x136>
2010118e:	46c0      	nop			; (mov r8, r8)
20101190:	000013be 	.word	0x000013be
20101194:	ffeff1a4 	.word	0xffeff1a4
20101198:	00000000 	.word	0x00000000
2010119c:	000007aa 	.word	0x000007aa
201011a0:	000009aa 	.word	0x000009aa
201011a4:	00000a54 	.word	0x00000a54
201011a8:	00000854 	.word	0x00000854
201011ac:	00000256 	.word	0x00000256
201011b0:	000008ff 	.word	0x000008ff
201011b4:	00000aff 	.word	0x00000aff

201011b8 <get_speed>:
201011b8:	4a0e      	ldr	r2, [pc, #56]	; (201011f4 <get_speed+0x3c>)
201011ba:	447a      	add	r2, pc
201011bc:	6813      	ldr	r3, [r2, #0]
201011be:	6851      	ldr	r1, [r2, #4]
201011c0:	1ac3      	subs	r3, r0, r3
201011c2:	6011      	str	r1, [r2, #0]
201011c4:	6050      	str	r0, [r2, #4]
201011c6:	17da      	asrs	r2, r3, #31
201011c8:	1899      	adds	r1, r3, r2
201011ca:	4051      	eors	r1, r2
201011cc:	22fa      	movs	r2, #250	; 0xfa
201011ce:	0092      	lsls	r2, r2, #2
201011d0:	4291      	cmp	r1, r2
201011d2:	dd04      	ble.n	201011de <get_speed+0x26>
201011d4:	2b00      	cmp	r3, #0
201011d6:	db07      	blt.n	201011e8 <get_speed+0x30>
201011d8:	4a07      	ldr	r2, [pc, #28]	; (201011f8 <get_speed+0x40>)
201011da:	4694      	mov	ip, r2
201011dc:	4463      	add	r3, ip
201011de:	4807      	ldr	r0, [pc, #28]	; (201011fc <get_speed+0x44>)
201011e0:	105b      	asrs	r3, r3, #1
201011e2:	4343      	muls	r3, r0
201011e4:	1318      	asrs	r0, r3, #12
201011e6:	4770      	bx	lr
201011e8:	2280      	movs	r2, #128	; 0x80
201011ea:	0152      	lsls	r2, r2, #5
201011ec:	4694      	mov	ip, r2
201011ee:	4463      	add	r3, ip
201011f0:	e7f5      	b.n	201011de <get_speed+0x26>
201011f2:	46c0      	nop			; (mov r8, r8)
201011f4:	ffefee5a 	.word	0xffefee5a
201011f8:	fffff000 	.word	0xfffff000
201011fc:	0002ae7c 	.word	0x0002ae7c

20101200 <__gnu_thumb1_case_uqi>:
20101200:	b402      	push	{r1}
20101202:	4671      	mov	r1, lr
20101204:	0849      	lsrs	r1, r1, #1
20101206:	0049      	lsls	r1, r1, #1
20101208:	5c09      	ldrb	r1, [r1, r0]
2010120a:	0049      	lsls	r1, r1, #1
2010120c:	448e      	add	lr, r1
2010120e:	bc02      	pop	{r1}
20101210:	4770      	bx	lr
20101212:	46c0      	nop			; (mov r8, r8)
