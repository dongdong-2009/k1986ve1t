
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b0a6      	sub	sp, #152	; 0x98
20100004:	af00      	add	r7, sp, #0
20100006:	2300      	movs	r3, #0
20100008:	2284      	movs	r2, #132	; 0x84
2010000a:	18ba      	adds	r2, r7, r2
2010000c:	6013      	str	r3, [r2, #0]
2010000e:	2300      	movs	r3, #0
20100010:	2280      	movs	r2, #128	; 0x80
20100012:	18ba      	adds	r2, r7, r2
20100014:	6013      	str	r3, [r2, #0]
20100016:	2300      	movs	r3, #0
20100018:	2290      	movs	r2, #144	; 0x90
2010001a:	18ba      	adds	r2, r7, r2
2010001c:	6013      	str	r3, [r2, #0]
2010001e:	2300      	movs	r3, #0
20100020:	228c      	movs	r2, #140	; 0x8c
20100022:	18ba      	adds	r2, r7, r2
20100024:	6013      	str	r3, [r2, #0]
20100026:	23fa      	movs	r3, #250	; 0xfa
20100028:	009b      	lsls	r3, r3, #2
2010002a:	67fb      	str	r3, [r7, #124]	; 0x7c
2010002c:	2300      	movs	r3, #0
2010002e:	67bb      	str	r3, [r7, #120]	; 0x78
20100030:	2300      	movs	r3, #0
20100032:	677b      	str	r3, [r7, #116]	; 0x74
20100034:	2300      	movs	r3, #0
20100036:	673b      	str	r3, [r7, #112]	; 0x70
20100038:	f000 fbba 	bl	201007b0 <SystemInit>
2010003c:	23fa      	movs	r3, #250	; 0xfa
2010003e:	009b      	lsls	r3, r3, #2
20100040:	0018      	movs	r0, r3
20100042:	f000 fc1b 	bl	2010087c <wait_timer_ticks>
20100046:	f000 fbc5 	bl	201007d4 <get_dcA>
2010004a:	0003      	movs	r3, r0
2010004c:	66fb      	str	r3, [r7, #108]	; 0x6c
2010004e:	f000 fbeb 	bl	20100828 <get_dcB>
20100052:	0003      	movs	r3, r0
20100054:	66bb      	str	r3, [r7, #104]	; 0x68
20100056:	2330      	movs	r3, #48	; 0x30
20100058:	18fb      	adds	r3, r7, r3
2010005a:	2264      	movs	r2, #100	; 0x64
2010005c:	601a      	str	r2, [r3, #0]
2010005e:	2330      	movs	r3, #48	; 0x30
20100060:	18fb      	adds	r3, r7, r3
20100062:	22c8      	movs	r2, #200	; 0xc8
20100064:	605a      	str	r2, [r3, #4]
20100066:	2330      	movs	r3, #48	; 0x30
20100068:	18fb      	adds	r3, r7, r3
2010006a:	2200      	movs	r2, #0
2010006c:	609a      	str	r2, [r3, #8]
2010006e:	2330      	movs	r3, #48	; 0x30
20100070:	18fb      	adds	r3, r7, r3
20100072:	2200      	movs	r2, #0
20100074:	60da      	str	r2, [r3, #12]
20100076:	2320      	movs	r3, #32
20100078:	18fb      	adds	r3, r7, r3
2010007a:	2264      	movs	r2, #100	; 0x64
2010007c:	601a      	str	r2, [r3, #0]
2010007e:	2320      	movs	r3, #32
20100080:	18fb      	adds	r3, r7, r3
20100082:	22c8      	movs	r2, #200	; 0xc8
20100084:	605a      	str	r2, [r3, #4]
20100086:	2320      	movs	r3, #32
20100088:	18fb      	adds	r3, r7, r3
2010008a:	2200      	movs	r2, #0
2010008c:	609a      	str	r2, [r3, #8]
2010008e:	2320      	movs	r3, #32
20100090:	18fb      	adds	r3, r7, r3
20100092:	2200      	movs	r2, #0
20100094:	60da      	str	r2, [r3, #12]
20100096:	2310      	movs	r3, #16
20100098:	18fb      	adds	r3, r7, r3
2010009a:	2200      	movs	r2, #0
2010009c:	601a      	str	r2, [r3, #0]
2010009e:	2310      	movs	r3, #16
201000a0:	18fb      	adds	r3, r7, r3
201000a2:	22fa      	movs	r2, #250	; 0xfa
201000a4:	00d2      	lsls	r2, r2, #3
201000a6:	605a      	str	r2, [r3, #4]
201000a8:	2310      	movs	r3, #16
201000aa:	18fb      	adds	r3, r7, r3
201000ac:	2200      	movs	r2, #0
201000ae:	609a      	str	r2, [r3, #8]
201000b0:	2310      	movs	r3, #16
201000b2:	18fb      	adds	r3, r7, r3
201000b4:	2200      	movs	r2, #0
201000b6:	60da      	str	r2, [r3, #12]
201000b8:	003b      	movs	r3, r7
201000ba:	2200      	movs	r2, #0
201000bc:	601a      	str	r2, [r3, #0]
201000be:	003b      	movs	r3, r7
201000c0:	4a83      	ldr	r2, [pc, #524]	; (201002d0 <main+0x2d0>)
201000c2:	605a      	str	r2, [r3, #4]
201000c4:	003b      	movs	r3, r7
201000c6:	2200      	movs	r2, #0
201000c8:	609a      	str	r2, [r3, #8]
201000ca:	003b      	movs	r3, r7
201000cc:	2200      	movs	r2, #0
201000ce:	60da      	str	r2, [r3, #12]
201000d0:	4b80      	ldr	r3, [pc, #512]	; (201002d4 <main+0x2d4>)
201000d2:	447b      	add	r3, pc
201000d4:	2200      	movs	r2, #0
201000d6:	601a      	str	r2, [r3, #0]
201000d8:	4b7f      	ldr	r3, [pc, #508]	; (201002d8 <main+0x2d8>)
201000da:	2257      	movs	r2, #87	; 0x57
201000dc:	601a      	str	r2, [r3, #0]
201000de:	46c0      	nop			; (mov r8, r8)
201000e0:	4b7d      	ldr	r3, [pc, #500]	; (201002d8 <main+0x2d8>)
201000e2:	6a1b      	ldr	r3, [r3, #32]
201000e4:	2204      	movs	r2, #4
201000e6:	4013      	ands	r3, r2
201000e8:	d0fa      	beq.n	201000e0 <main+0xe0>
201000ea:	4b7b      	ldr	r3, [pc, #492]	; (201002d8 <main+0x2d8>)
201000ec:	699b      	ldr	r3, [r3, #24]
201000ee:	051b      	lsls	r3, r3, #20
201000f0:	0d1b      	lsrs	r3, r3, #20
201000f2:	673b      	str	r3, [r7, #112]	; 0x70
201000f4:	4b79      	ldr	r3, [pc, #484]	; (201002dc <main+0x2dc>)
201000f6:	447b      	add	r3, pc
201000f8:	6f3a      	ldr	r2, [r7, #112]	; 0x70
201000fa:	601a      	str	r2, [r3, #0]
201000fc:	f000 fbdc 	bl	201008b8 <init_pos>
20100100:	4b77      	ldr	r3, [pc, #476]	; (201002e0 <main+0x2e0>)
20100102:	4a77      	ldr	r2, [pc, #476]	; (201002e0 <main+0x2e0>)
20100104:	6812      	ldr	r2, [r2, #0]
20100106:	2120      	movs	r1, #32
20100108:	430a      	orrs	r2, r1
2010010a:	601a      	str	r2, [r3, #0]
2010010c:	4b75      	ldr	r3, [pc, #468]	; (201002e4 <main+0x2e4>)
2010010e:	4a76      	ldr	r2, [pc, #472]	; (201002e8 <main+0x2e8>)
20100110:	609a      	str	r2, [r3, #8]
20100112:	4b71      	ldr	r3, [pc, #452]	; (201002d8 <main+0x2d8>)
20100114:	2207      	movs	r2, #7
20100116:	601a      	str	r2, [r3, #0]
20100118:	46c0      	nop			; (mov r8, r8)
2010011a:	4b6f      	ldr	r3, [pc, #444]	; (201002d8 <main+0x2d8>)
2010011c:	6a1b      	ldr	r3, [r3, #32]
2010011e:	2204      	movs	r2, #4
20100120:	4013      	ands	r3, r2
20100122:	d0fa      	beq.n	2010011a <main+0x11a>
20100124:	4b6c      	ldr	r3, [pc, #432]	; (201002d8 <main+0x2d8>)
20100126:	699b      	ldr	r3, [r3, #24]
20100128:	051b      	lsls	r3, r3, #20
2010012a:	0d1a      	lsrs	r2, r3, #20
2010012c:	0013      	movs	r3, r2
2010012e:	009b      	lsls	r3, r3, #2
20100130:	189b      	adds	r3, r3, r2
20100132:	0018      	movs	r0, r3
20100134:	f001 f86a 	bl	2010120c <mfilter>
20100138:	0003      	movs	r3, r0
2010013a:	2284      	movs	r2, #132	; 0x84
2010013c:	18ba      	adds	r2, r7, r2
2010013e:	6013      	str	r3, [r2, #0]
20100140:	2384      	movs	r3, #132	; 0x84
20100142:	18fb      	adds	r3, r7, r3
20100144:	681b      	ldr	r3, [r3, #0]
20100146:	10da      	asrs	r2, r3, #3
20100148:	2384      	movs	r3, #132	; 0x84
2010014a:	18fb      	adds	r3, r7, r3
2010014c:	681b      	ldr	r3, [r3, #0]
2010014e:	18d3      	adds	r3, r2, r3
20100150:	10db      	asrs	r3, r3, #3
20100152:	22af      	movs	r2, #175	; 0xaf
20100154:	0092      	lsls	r2, r2, #2
20100156:	189a      	adds	r2, r3, r2
20100158:	4b64      	ldr	r3, [pc, #400]	; (201002ec <main+0x2ec>)
2010015a:	447b      	add	r3, pc
2010015c:	601a      	str	r2, [r3, #0]
2010015e:	4b64      	ldr	r3, [pc, #400]	; (201002f0 <main+0x2f0>)
20100160:	4a5d      	ldr	r2, [pc, #372]	; (201002d8 <main+0x2d8>)
20100162:	6992      	ldr	r2, [r2, #24]
20100164:	0512      	lsls	r2, r2, #20
20100166:	0d12      	lsrs	r2, r2, #20
20100168:	605a      	str	r2, [r3, #4]
2010016a:	4b5b      	ldr	r3, [pc, #364]	; (201002d8 <main+0x2d8>)
2010016c:	2237      	movs	r2, #55	; 0x37
2010016e:	601a      	str	r2, [r3, #0]
20100170:	46c0      	nop			; (mov r8, r8)
20100172:	4b59      	ldr	r3, [pc, #356]	; (201002d8 <main+0x2d8>)
20100174:	6a1b      	ldr	r3, [r3, #32]
20100176:	2204      	movs	r2, #4
20100178:	4013      	ands	r3, r2
2010017a:	d0fa      	beq.n	20100172 <main+0x172>
2010017c:	4b56      	ldr	r3, [pc, #344]	; (201002d8 <main+0x2d8>)
2010017e:	699b      	ldr	r3, [r3, #24]
20100180:	051b      	lsls	r3, r3, #20
20100182:	0d1a      	lsrs	r2, r3, #20
20100184:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100186:	1ad3      	subs	r3, r2, r3
20100188:	667b      	str	r3, [r7, #100]	; 0x64
2010018a:	4b53      	ldr	r3, [pc, #332]	; (201002d8 <main+0x2d8>)
2010018c:	2247      	movs	r2, #71	; 0x47
2010018e:	601a      	str	r2, [r3, #0]
20100190:	46c0      	nop			; (mov r8, r8)
20100192:	4b51      	ldr	r3, [pc, #324]	; (201002d8 <main+0x2d8>)
20100194:	6a1b      	ldr	r3, [r3, #32]
20100196:	2204      	movs	r2, #4
20100198:	4013      	ands	r3, r2
2010019a:	d0fa      	beq.n	20100192 <main+0x192>
2010019c:	4b4e      	ldr	r3, [pc, #312]	; (201002d8 <main+0x2d8>)
2010019e:	699b      	ldr	r3, [r3, #24]
201001a0:	051b      	lsls	r3, r3, #20
201001a2:	0d1a      	lsrs	r2, r3, #20
201001a4:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201001a6:	1ad3      	subs	r3, r2, r3
201001a8:	663b      	str	r3, [r7, #96]	; 0x60
201001aa:	6e7b      	ldr	r3, [r7, #100]	; 0x64
201001ac:	425a      	negs	r2, r3
201001ae:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201001b0:	1ad3      	subs	r3, r2, r3
201001b2:	65fb      	str	r3, [r7, #92]	; 0x5c
201001b4:	4b48      	ldr	r3, [pc, #288]	; (201002d8 <main+0x2d8>)
201001b6:	2257      	movs	r2, #87	; 0x57
201001b8:	601a      	str	r2, [r3, #0]
201001ba:	46c0      	nop			; (mov r8, r8)
201001bc:	4b46      	ldr	r3, [pc, #280]	; (201002d8 <main+0x2d8>)
201001be:	6a1b      	ldr	r3, [r3, #32]
201001c0:	2204      	movs	r2, #4
201001c2:	4013      	ands	r3, r2
201001c4:	d0fa      	beq.n	201001bc <main+0x1bc>
201001c6:	4b44      	ldr	r3, [pc, #272]	; (201002d8 <main+0x2d8>)
201001c8:	699b      	ldr	r3, [r3, #24]
201001ca:	051b      	lsls	r3, r3, #20
201001cc:	0d1b      	lsrs	r3, r3, #20
201001ce:	677b      	str	r3, [r7, #116]	; 0x74
201001d0:	46c0      	nop			; (mov r8, r8)
201001d2:	4b48      	ldr	r3, [pc, #288]	; (201002f4 <main+0x2f4>)
201001d4:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201001d6:	2202      	movs	r2, #2
201001d8:	4013      	ands	r3, r2
201001da:	d0fa      	beq.n	201001d2 <main+0x1d2>
201001dc:	4b45      	ldr	r3, [pc, #276]	; (201002f4 <main+0x2f4>)
201001de:	2200      	movs	r2, #0
201001e0:	655a      	str	r2, [r3, #84]	; 0x54
201001e2:	4b3f      	ldr	r3, [pc, #252]	; (201002e0 <main+0x2e0>)
201001e4:	4a3e      	ldr	r2, [pc, #248]	; (201002e0 <main+0x2e0>)
201001e6:	6812      	ldr	r2, [r2, #0]
201001e8:	2120      	movs	r1, #32
201001ea:	438a      	bics	r2, r1
201001ec:	601a      	str	r2, [r3, #0]
201001ee:	4b3d      	ldr	r3, [pc, #244]	; (201002e4 <main+0x2e4>)
201001f0:	689b      	ldr	r3, [r3, #8]
201001f2:	051b      	lsls	r3, r3, #20
201001f4:	0d1b      	lsrs	r3, r3, #20
201001f6:	0018      	movs	r0, r3
201001f8:	f000 fac2 	bl	20100780 <g2b>
201001fc:	0003      	movs	r3, r0
201001fe:	65bb      	str	r3, [r7, #88]	; 0x58
20100200:	238c      	movs	r3, #140	; 0x8c
20100202:	18fb      	adds	r3, r7, r3
20100204:	681b      	ldr	r3, [r3, #0]
20100206:	3301      	adds	r3, #1
20100208:	228c      	movs	r2, #140	; 0x8c
2010020a:	18ba      	adds	r2, r7, r2
2010020c:	6013      	str	r3, [r2, #0]
2010020e:	6dbb      	ldr	r3, [r7, #88]	; 0x58
20100210:	059b      	lsls	r3, r3, #22
20100212:	0d9b      	lsrs	r3, r3, #22
20100214:	2280      	movs	r2, #128	; 0x80
20100216:	18ba      	adds	r2, r7, r2
20100218:	6013      	str	r3, [r2, #0]
2010021a:	238c      	movs	r3, #140	; 0x8c
2010021c:	18fb      	adds	r3, r7, r3
2010021e:	681b      	ldr	r3, [r3, #0]
20100220:	041b      	lsls	r3, r3, #16
20100222:	0c1b      	lsrs	r3, r3, #16
20100224:	d10d      	bne.n	20100242 <main+0x242>
20100226:	2388      	movs	r3, #136	; 0x88
20100228:	18fb      	adds	r3, r7, r3
2010022a:	681b      	ldr	r3, [r3, #0]
2010022c:	2b00      	cmp	r3, #0
2010022e:	d104      	bne.n	2010023a <main+0x23a>
20100230:	23c8      	movs	r3, #200	; 0xc8
20100232:	2288      	movs	r2, #136	; 0x88
20100234:	18ba      	adds	r2, r7, r2
20100236:	6013      	str	r3, [r2, #0]
20100238:	e003      	b.n	20100242 <main+0x242>
2010023a:	2300      	movs	r3, #0
2010023c:	2288      	movs	r2, #136	; 0x88
2010023e:	18ba      	adds	r2, r7, r2
20100240:	6013      	str	r3, [r2, #0]
20100242:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100244:	22c8      	movs	r2, #200	; 0xc8
20100246:	1ad3      	subs	r3, r2, r3
20100248:	657b      	str	r3, [r7, #84]	; 0x54
2010024a:	2390      	movs	r3, #144	; 0x90
2010024c:	18fb      	adds	r3, r7, r3
2010024e:	681a      	ldr	r2, [r3, #0]
20100250:	6d79      	ldr	r1, [r7, #84]	; 0x54
20100252:	2330      	movs	r3, #48	; 0x30
20100254:	18fb      	adds	r3, r7, r3
20100256:	0018      	movs	r0, r3
20100258:	f000 fb70 	bl	2010093c <update>
2010025c:	2330      	movs	r3, #48	; 0x30
2010025e:	18fb      	adds	r3, r7, r3
20100260:	68db      	ldr	r3, [r3, #12]
20100262:	129b      	asrs	r3, r3, #10
20100264:	2294      	movs	r2, #148	; 0x94
20100266:	18ba      	adds	r2, r7, r2
20100268:	6013      	str	r3, [r2, #0]
2010026a:	2300      	movs	r3, #0
2010026c:	2290      	movs	r2, #144	; 0x90
2010026e:	18ba      	adds	r2, r7, r2
20100270:	6013      	str	r3, [r2, #0]
20100272:	2394      	movs	r3, #148	; 0x94
20100274:	18fb      	adds	r3, r7, r3
20100276:	681b      	ldr	r3, [r3, #0]
20100278:	4a1f      	ldr	r2, [pc, #124]	; (201002f8 <main+0x2f8>)
2010027a:	4293      	cmp	r3, r2
2010027c:	dd07      	ble.n	2010028e <main+0x28e>
2010027e:	2301      	movs	r3, #1
20100280:	2290      	movs	r2, #144	; 0x90
20100282:	18ba      	adds	r2, r7, r2
20100284:	6013      	str	r3, [r2, #0]
20100286:	4b1c      	ldr	r3, [pc, #112]	; (201002f8 <main+0x2f8>)
20100288:	2294      	movs	r2, #148	; 0x94
2010028a:	18ba      	adds	r2, r7, r2
2010028c:	6013      	str	r3, [r2, #0]
2010028e:	2394      	movs	r3, #148	; 0x94
20100290:	18fb      	adds	r3, r7, r3
20100292:	681b      	ldr	r3, [r3, #0]
20100294:	4a19      	ldr	r2, [pc, #100]	; (201002fc <main+0x2fc>)
20100296:	4293      	cmp	r3, r2
20100298:	da07      	bge.n	201002aa <main+0x2aa>
2010029a:	2301      	movs	r3, #1
2010029c:	2290      	movs	r2, #144	; 0x90
2010029e:	18ba      	adds	r2, r7, r2
201002a0:	6013      	str	r3, [r2, #0]
201002a2:	4b16      	ldr	r3, [pc, #88]	; (201002fc <main+0x2fc>)
201002a4:	2294      	movs	r2, #148	; 0x94
201002a6:	18ba      	adds	r2, r7, r2
201002a8:	6013      	str	r3, [r2, #0]
201002aa:	4b12      	ldr	r3, [pc, #72]	; (201002f4 <main+0x2f4>)
201002ac:	2294      	movs	r2, #148	; 0x94
201002ae:	18ba      	adds	r2, r7, r2
201002b0:	6812      	ldr	r2, [r2, #0]
201002b2:	2180      	movs	r1, #128	; 0x80
201002b4:	0089      	lsls	r1, r1, #2
201002b6:	468c      	mov	ip, r1
201002b8:	4462      	add	r2, ip
201002ba:	611a      	str	r2, [r3, #16]
201002bc:	4b0c      	ldr	r3, [pc, #48]	; (201002f0 <main+0x2f0>)
201002be:	6e7a      	ldr	r2, [r7, #100]	; 0x64
201002c0:	0092      	lsls	r2, r2, #2
201002c2:	2180      	movs	r1, #128	; 0x80
201002c4:	0109      	lsls	r1, r1, #4
201002c6:	468c      	mov	ip, r1
201002c8:	4462      	add	r2, ip
201002ca:	605a      	str	r2, [r3, #4]
201002cc:	e718      	b.n	20100100 <main+0x100>
201002ce:	46c0      	nop			; (mov r8, r8)
201002d0:	00000bb8 	.word	0x00000bb8
201002d4:	ffefff3e 	.word	0xffefff3e
201002d8:	40088000 	.word	0x40088000
201002dc:	ffefff1e 	.word	0xffefff1e
201002e0:	400b8000 	.word	0x400b8000
201002e4:	400a0000 	.word	0x400a0000
201002e8:	00000555 	.word	0x00000555
201002ec:	ffeffeba 	.word	0xffeffeba
201002f0:	40090000 	.word	0x40090000
201002f4:	40098000 	.word	0x40098000
201002f8:	000001ff 	.word	0x000001ff
201002fc:	fffffe01 	.word	0xfffffe01

20100300 <sleep>:
20100300:	b580      	push	{r7, lr}
20100302:	b084      	sub	sp, #16
20100304:	af00      	add	r7, sp, #0
20100306:	6078      	str	r0, [r7, #4]
20100308:	4b08      	ldr	r3, [pc, #32]	; (2010032c <sleep+0x2c>)
2010030a:	447b      	add	r3, pc
2010030c:	681a      	ldr	r2, [r3, #0]
2010030e:	687b      	ldr	r3, [r7, #4]
20100310:	18d3      	adds	r3, r2, r3
20100312:	60fb      	str	r3, [r7, #12]
20100314:	46c0      	nop			; (mov r8, r8)
20100316:	4b06      	ldr	r3, [pc, #24]	; (20100330 <sleep+0x30>)
20100318:	447b      	add	r3, pc
2010031a:	681a      	ldr	r2, [r3, #0]
2010031c:	68fb      	ldr	r3, [r7, #12]
2010031e:	429a      	cmp	r2, r3
20100320:	d3f9      	bcc.n	20100316 <sleep+0x16>
20100322:	46c0      	nop			; (mov r8, r8)
20100324:	0018      	movs	r0, r3
20100326:	46bd      	mov	sp, r7
20100328:	b004      	add	sp, #16
2010032a:	bd80      	pop	{r7, pc}
2010032c:	ffeffd0e 	.word	0xffeffd0e
20100330:	ffeffd00 	.word	0xffeffd00

20100334 <PortConfig>:
20100334:	b580      	push	{r7, lr}
20100336:	af00      	add	r7, sp, #0
20100338:	4b42      	ldr	r3, [pc, #264]	; (20100444 <PortConfig+0x110>)
2010033a:	4a42      	ldr	r2, [pc, #264]	; (20100444 <PortConfig+0x110>)
2010033c:	69d2      	ldr	r2, [r2, #28]
2010033e:	2180      	movs	r1, #128	; 0x80
20100340:	0389      	lsls	r1, r1, #14
20100342:	430a      	orrs	r2, r1
20100344:	61da      	str	r2, [r3, #28]
20100346:	4b40      	ldr	r3, [pc, #256]	; (20100448 <PortConfig+0x114>)
20100348:	4a3f      	ldr	r2, [pc, #252]	; (20100448 <PortConfig+0x114>)
2010034a:	6892      	ldr	r2, [r2, #8]
2010034c:	493f      	ldr	r1, [pc, #252]	; (2010044c <PortConfig+0x118>)
2010034e:	400a      	ands	r2, r1
20100350:	609a      	str	r2, [r3, #8]
20100352:	4b3d      	ldr	r3, [pc, #244]	; (20100448 <PortConfig+0x114>)
20100354:	4a3c      	ldr	r2, [pc, #240]	; (20100448 <PortConfig+0x114>)
20100356:	6892      	ldr	r2, [r2, #8]
20100358:	493d      	ldr	r1, [pc, #244]	; (20100450 <PortConfig+0x11c>)
2010035a:	430a      	orrs	r2, r1
2010035c:	609a      	str	r2, [r3, #8]
2010035e:	4b3a      	ldr	r3, [pc, #232]	; (20100448 <PortConfig+0x114>)
20100360:	4a39      	ldr	r2, [pc, #228]	; (20100448 <PortConfig+0x114>)
20100362:	6852      	ldr	r2, [r2, #4]
20100364:	21fc      	movs	r1, #252	; 0xfc
20100366:	0109      	lsls	r1, r1, #4
20100368:	430a      	orrs	r2, r1
2010036a:	605a      	str	r2, [r3, #4]
2010036c:	4b36      	ldr	r3, [pc, #216]	; (20100448 <PortConfig+0x114>)
2010036e:	4a36      	ldr	r2, [pc, #216]	; (20100448 <PortConfig+0x114>)
20100370:	68d2      	ldr	r2, [r2, #12]
20100372:	21fc      	movs	r1, #252	; 0xfc
20100374:	0109      	lsls	r1, r1, #4
20100376:	430a      	orrs	r2, r1
20100378:	60da      	str	r2, [r3, #12]
2010037a:	4b33      	ldr	r3, [pc, #204]	; (20100448 <PortConfig+0x114>)
2010037c:	4a32      	ldr	r2, [pc, #200]	; (20100448 <PortConfig+0x114>)
2010037e:	6992      	ldr	r2, [r2, #24]
20100380:	4934      	ldr	r1, [pc, #208]	; (20100454 <PortConfig+0x120>)
20100382:	430a      	orrs	r2, r1
20100384:	619a      	str	r2, [r3, #24]
20100386:	4b2f      	ldr	r3, [pc, #188]	; (20100444 <PortConfig+0x110>)
20100388:	4a2e      	ldr	r2, [pc, #184]	; (20100444 <PortConfig+0x110>)
2010038a:	69d2      	ldr	r2, [r2, #28]
2010038c:	2180      	movs	r1, #128	; 0x80
2010038e:	0489      	lsls	r1, r1, #18
20100390:	430a      	orrs	r2, r1
20100392:	61da      	str	r2, [r3, #28]
20100394:	4b30      	ldr	r3, [pc, #192]	; (20100458 <PortConfig+0x124>)
20100396:	4a30      	ldr	r2, [pc, #192]	; (20100458 <PortConfig+0x124>)
20100398:	68d2      	ldr	r2, [r2, #12]
2010039a:	2102      	movs	r1, #2
2010039c:	438a      	bics	r2, r1
2010039e:	60da      	str	r2, [r3, #12]
201003a0:	4b28      	ldr	r3, [pc, #160]	; (20100444 <PortConfig+0x110>)
201003a2:	4a28      	ldr	r2, [pc, #160]	; (20100444 <PortConfig+0x110>)
201003a4:	69d2      	ldr	r2, [r2, #28]
201003a6:	2180      	movs	r1, #128	; 0x80
201003a8:	0449      	lsls	r1, r1, #17
201003aa:	430a      	orrs	r2, r1
201003ac:	61da      	str	r2, [r3, #28]
201003ae:	4b2b      	ldr	r3, [pc, #172]	; (2010045c <PortConfig+0x128>)
201003b0:	4a2a      	ldr	r2, [pc, #168]	; (2010045c <PortConfig+0x128>)
201003b2:	6892      	ldr	r2, [r2, #8]
201003b4:	492a      	ldr	r1, [pc, #168]	; (20100460 <PortConfig+0x12c>)
201003b6:	400a      	ands	r2, r1
201003b8:	609a      	str	r2, [r3, #8]
201003ba:	4b28      	ldr	r3, [pc, #160]	; (2010045c <PortConfig+0x128>)
201003bc:	4a27      	ldr	r2, [pc, #156]	; (2010045c <PortConfig+0x128>)
201003be:	6892      	ldr	r2, [r2, #8]
201003c0:	21a0      	movs	r1, #160	; 0xa0
201003c2:	02c9      	lsls	r1, r1, #11
201003c4:	430a      	orrs	r2, r1
201003c6:	609a      	str	r2, [r3, #8]
201003c8:	4b24      	ldr	r3, [pc, #144]	; (2010045c <PortConfig+0x128>)
201003ca:	4a24      	ldr	r2, [pc, #144]	; (2010045c <PortConfig+0x128>)
201003cc:	68d2      	ldr	r2, [r2, #12]
201003ce:	21c0      	movs	r1, #192	; 0xc0
201003d0:	0089      	lsls	r1, r1, #2
201003d2:	430a      	orrs	r2, r1
201003d4:	60da      	str	r2, [r3, #12]
201003d6:	4b21      	ldr	r3, [pc, #132]	; (2010045c <PortConfig+0x128>)
201003d8:	4a20      	ldr	r2, [pc, #128]	; (2010045c <PortConfig+0x128>)
201003da:	6992      	ldr	r2, [r2, #24]
201003dc:	21c0      	movs	r1, #192	; 0xc0
201003de:	0309      	lsls	r1, r1, #12
201003e0:	430a      	orrs	r2, r1
201003e2:	619a      	str	r2, [r3, #24]
201003e4:	4b1d      	ldr	r3, [pc, #116]	; (2010045c <PortConfig+0x128>)
201003e6:	4a1d      	ldr	r2, [pc, #116]	; (2010045c <PortConfig+0x128>)
201003e8:	6852      	ldr	r2, [r2, #4]
201003ea:	2180      	movs	r1, #128	; 0x80
201003ec:	0089      	lsls	r1, r1, #2
201003ee:	430a      	orrs	r2, r1
201003f0:	605a      	str	r2, [r3, #4]
201003f2:	4b1a      	ldr	r3, [pc, #104]	; (2010045c <PortConfig+0x128>)
201003f4:	4a19      	ldr	r2, [pc, #100]	; (2010045c <PortConfig+0x128>)
201003f6:	6852      	ldr	r2, [r2, #4]
201003f8:	491a      	ldr	r1, [pc, #104]	; (20100464 <PortConfig+0x130>)
201003fa:	400a      	ands	r2, r1
201003fc:	605a      	str	r2, [r3, #4]
201003fe:	4b11      	ldr	r3, [pc, #68]	; (20100444 <PortConfig+0x110>)
20100400:	4a10      	ldr	r2, [pc, #64]	; (20100444 <PortConfig+0x110>)
20100402:	69d2      	ldr	r2, [r2, #28]
20100404:	2180      	movs	r1, #128	; 0x80
20100406:	0409      	lsls	r1, r1, #16
20100408:	430a      	orrs	r2, r1
2010040a:	61da      	str	r2, [r3, #28]
2010040c:	4b16      	ldr	r3, [pc, #88]	; (20100468 <PortConfig+0x134>)
2010040e:	2200      	movs	r2, #0
20100410:	609a      	str	r2, [r3, #8]
20100412:	4b15      	ldr	r3, [pc, #84]	; (20100468 <PortConfig+0x134>)
20100414:	2200      	movs	r2, #0
20100416:	601a      	str	r2, [r3, #0]
20100418:	4b13      	ldr	r3, [pc, #76]	; (20100468 <PortConfig+0x134>)
2010041a:	4a13      	ldr	r2, [pc, #76]	; (20100468 <PortConfig+0x134>)
2010041c:	6852      	ldr	r2, [r2, #4]
2010041e:	2120      	movs	r1, #32
20100420:	430a      	orrs	r2, r1
20100422:	605a      	str	r2, [r3, #4]
20100424:	4b10      	ldr	r3, [pc, #64]	; (20100468 <PortConfig+0x134>)
20100426:	4a10      	ldr	r2, [pc, #64]	; (20100468 <PortConfig+0x134>)
20100428:	68d2      	ldr	r2, [r2, #12]
2010042a:	2120      	movs	r1, #32
2010042c:	430a      	orrs	r2, r1
2010042e:	60da      	str	r2, [r3, #12]
20100430:	4b0d      	ldr	r3, [pc, #52]	; (20100468 <PortConfig+0x134>)
20100432:	4a0d      	ldr	r2, [pc, #52]	; (20100468 <PortConfig+0x134>)
20100434:	6992      	ldr	r2, [r2, #24]
20100436:	21c0      	movs	r1, #192	; 0xc0
20100438:	0109      	lsls	r1, r1, #4
2010043a:	430a      	orrs	r2, r1
2010043c:	619a      	str	r2, [r3, #24]
2010043e:	46c0      	nop			; (mov r8, r8)
20100440:	46bd      	mov	sp, r7
20100442:	bd80      	pop	{r7, pc}
20100444:	40020000 	.word	0x40020000
20100448:	400a8000 	.word	0x400a8000
2010044c:	ff000fff 	.word	0xff000fff
20100450:	00aaa000 	.word	0x00aaa000
20100454:	00fff000 	.word	0x00fff000
20100458:	400c8000 	.word	0x400c8000
2010045c:	400c0000 	.word	0x400c0000
20100460:	fff0ffff 	.word	0xfff0ffff
20100464:	fffffeff 	.word	0xfffffeff
20100468:	400b8000 	.word	0x400b8000

2010046c <ClkConfig>:
2010046c:	b580      	push	{r7, lr}
2010046e:	af00      	add	r7, sp, #0
20100470:	4b18      	ldr	r3, [pc, #96]	; (201004d4 <ClkConfig+0x68>)
20100472:	4a18      	ldr	r2, [pc, #96]	; (201004d4 <ClkConfig+0x68>)
20100474:	6892      	ldr	r2, [r2, #8]
20100476:	2101      	movs	r1, #1
20100478:	430a      	orrs	r2, r1
2010047a:	609a      	str	r2, [r3, #8]
2010047c:	46c0      	nop			; (mov r8, r8)
2010047e:	4b15      	ldr	r3, [pc, #84]	; (201004d4 <ClkConfig+0x68>)
20100480:	681b      	ldr	r3, [r3, #0]
20100482:	2204      	movs	r2, #4
20100484:	4013      	ands	r3, r2
20100486:	d0fa      	beq.n	2010047e <ClkConfig+0x12>
20100488:	4b12      	ldr	r3, [pc, #72]	; (201004d4 <ClkConfig+0x68>)
2010048a:	4a12      	ldr	r2, [pc, #72]	; (201004d4 <ClkConfig+0x68>)
2010048c:	68d2      	ldr	r2, [r2, #12]
2010048e:	2102      	movs	r1, #2
20100490:	430a      	orrs	r2, r1
20100492:	60da      	str	r2, [r3, #12]
20100494:	4b0f      	ldr	r3, [pc, #60]	; (201004d4 <ClkConfig+0x68>)
20100496:	4a10      	ldr	r2, [pc, #64]	; (201004d8 <ClkConfig+0x6c>)
20100498:	605a      	str	r2, [r3, #4]
2010049a:	46c0      	nop			; (mov r8, r8)
2010049c:	4b0d      	ldr	r3, [pc, #52]	; (201004d4 <ClkConfig+0x68>)
2010049e:	681b      	ldr	r3, [r3, #0]
201004a0:	2202      	movs	r2, #2
201004a2:	4013      	ands	r3, r2
201004a4:	d0fa      	beq.n	2010049c <ClkConfig+0x30>
201004a6:	4b0d      	ldr	r3, [pc, #52]	; (201004dc <ClkConfig+0x70>)
201004a8:	4a0c      	ldr	r2, [pc, #48]	; (201004dc <ClkConfig+0x70>)
201004aa:	6812      	ldr	r2, [r2, #0]
201004ac:	2120      	movs	r1, #32
201004ae:	430a      	orrs	r2, r1
201004b0:	601a      	str	r2, [r3, #0]
201004b2:	4b08      	ldr	r3, [pc, #32]	; (201004d4 <ClkConfig+0x68>)
201004b4:	4a07      	ldr	r2, [pc, #28]	; (201004d4 <ClkConfig+0x68>)
201004b6:	68d2      	ldr	r2, [r2, #12]
201004b8:	2180      	movs	r1, #128	; 0x80
201004ba:	0049      	lsls	r1, r1, #1
201004bc:	430a      	orrs	r2, r1
201004be:	60da      	str	r2, [r3, #12]
201004c0:	4b04      	ldr	r3, [pc, #16]	; (201004d4 <ClkConfig+0x68>)
201004c2:	4a04      	ldr	r2, [pc, #16]	; (201004d4 <ClkConfig+0x68>)
201004c4:	68d2      	ldr	r2, [r2, #12]
201004c6:	2104      	movs	r1, #4
201004c8:	430a      	orrs	r2, r1
201004ca:	60da      	str	r2, [r3, #12]
201004cc:	46c0      	nop			; (mov r8, r8)
201004ce:	46bd      	mov	sp, r7
201004d0:	bd80      	pop	{r7, pc}
201004d2:	46c0      	nop			; (mov r8, r8)
201004d4:	40020000 	.word	0x40020000
201004d8:	00000e04 	.word	0x00000e04
201004dc:	40018000 	.word	0x40018000

201004e0 <TimerConfig>:
201004e0:	b580      	push	{r7, lr}
201004e2:	af00      	add	r7, sp, #0
201004e4:	4b71      	ldr	r3, [pc, #452]	; (201006ac <TimerConfig+0x1cc>)
201004e6:	4a71      	ldr	r2, [pc, #452]	; (201006ac <TimerConfig+0x1cc>)
201004e8:	69d2      	ldr	r2, [r2, #28]
201004ea:	2180      	movs	r1, #128	; 0x80
201004ec:	0309      	lsls	r1, r1, #12
201004ee:	430a      	orrs	r2, r1
201004f0:	61da      	str	r2, [r3, #28]
201004f2:	4b6e      	ldr	r3, [pc, #440]	; (201006ac <TimerConfig+0x1cc>)
201004f4:	4a6d      	ldr	r2, [pc, #436]	; (201006ac <TimerConfig+0x1cc>)
201004f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
201004f8:	2180      	movs	r1, #128	; 0x80
201004fa:	04c9      	lsls	r1, r1, #19
201004fc:	430a      	orrs	r2, r1
201004fe:	629a      	str	r2, [r3, #40]	; 0x28
20100500:	4b6a      	ldr	r3, [pc, #424]	; (201006ac <TimerConfig+0x1cc>)
20100502:	4a6a      	ldr	r2, [pc, #424]	; (201006ac <TimerConfig+0x1cc>)
20100504:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100506:	496a      	ldr	r1, [pc, #424]	; (201006b0 <TimerConfig+0x1d0>)
20100508:	400a      	ands	r2, r1
2010050a:	629a      	str	r2, [r3, #40]	; 0x28
2010050c:	4b69      	ldr	r3, [pc, #420]	; (201006b4 <TimerConfig+0x1d4>)
2010050e:	2200      	movs	r2, #0
20100510:	601a      	str	r2, [r3, #0]
20100512:	4b68      	ldr	r3, [pc, #416]	; (201006b4 <TimerConfig+0x1d4>)
20100514:	2204      	movs	r2, #4
20100516:	605a      	str	r2, [r3, #4]
20100518:	4b66      	ldr	r3, [pc, #408]	; (201006b4 <TimerConfig+0x1d4>)
2010051a:	4a67      	ldr	r2, [pc, #412]	; (201006b8 <TimerConfig+0x1d8>)
2010051c:	609a      	str	r2, [r3, #8]
2010051e:	4b65      	ldr	r3, [pc, #404]	; (201006b4 <TimerConfig+0x1d4>)
20100520:	2280      	movs	r2, #128	; 0x80
20100522:	0092      	lsls	r2, r2, #2
20100524:	611a      	str	r2, [r3, #16]
20100526:	4b63      	ldr	r3, [pc, #396]	; (201006b4 <TimerConfig+0x1d4>)
20100528:	2280      	movs	r2, #128	; 0x80
2010052a:	0092      	lsls	r2, r2, #2
2010052c:	615a      	str	r2, [r3, #20]
2010052e:	4b61      	ldr	r3, [pc, #388]	; (201006b4 <TimerConfig+0x1d4>)
20100530:	2280      	movs	r2, #128	; 0x80
20100532:	0092      	lsls	r2, r2, #2
20100534:	619a      	str	r2, [r3, #24]
20100536:	4b5f      	ldr	r3, [pc, #380]	; (201006b4 <TimerConfig+0x1d4>)
20100538:	4a5e      	ldr	r2, [pc, #376]	; (201006b4 <TimerConfig+0x1d4>)
2010053a:	6a12      	ldr	r2, [r2, #32]
2010053c:	495f      	ldr	r1, [pc, #380]	; (201006bc <TimerConfig+0x1dc>)
2010053e:	400a      	ands	r2, r1
20100540:	621a      	str	r2, [r3, #32]
20100542:	4b5c      	ldr	r3, [pc, #368]	; (201006b4 <TimerConfig+0x1d4>)
20100544:	4a5b      	ldr	r2, [pc, #364]	; (201006b4 <TimerConfig+0x1d4>)
20100546:	6a12      	ldr	r2, [r2, #32]
20100548:	21e0      	movs	r1, #224	; 0xe0
2010054a:	0109      	lsls	r1, r1, #4
2010054c:	430a      	orrs	r2, r1
2010054e:	621a      	str	r2, [r3, #32]
20100550:	4b58      	ldr	r3, [pc, #352]	; (201006b4 <TimerConfig+0x1d4>)
20100552:	4a58      	ldr	r2, [pc, #352]	; (201006b4 <TimerConfig+0x1d4>)
20100554:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100556:	210f      	movs	r1, #15
20100558:	438a      	bics	r2, r1
2010055a:	631a      	str	r2, [r3, #48]	; 0x30
2010055c:	4b55      	ldr	r3, [pc, #340]	; (201006b4 <TimerConfig+0x1d4>)
2010055e:	4a55      	ldr	r2, [pc, #340]	; (201006b4 <TimerConfig+0x1d4>)
20100560:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100562:	210c      	movs	r1, #12
20100564:	430a      	orrs	r2, r1
20100566:	631a      	str	r2, [r3, #48]	; 0x30
20100568:	4b52      	ldr	r3, [pc, #328]	; (201006b4 <TimerConfig+0x1d4>)
2010056a:	4a52      	ldr	r2, [pc, #328]	; (201006b4 <TimerConfig+0x1d4>)
2010056c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010056e:	2101      	movs	r1, #1
20100570:	430a      	orrs	r2, r1
20100572:	631a      	str	r2, [r3, #48]	; 0x30
20100574:	4b4f      	ldr	r3, [pc, #316]	; (201006b4 <TimerConfig+0x1d4>)
20100576:	4a4f      	ldr	r2, [pc, #316]	; (201006b4 <TimerConfig+0x1d4>)
20100578:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010057a:	4951      	ldr	r1, [pc, #324]	; (201006c0 <TimerConfig+0x1e0>)
2010057c:	400a      	ands	r2, r1
2010057e:	631a      	str	r2, [r3, #48]	; 0x30
20100580:	4b4c      	ldr	r3, [pc, #304]	; (201006b4 <TimerConfig+0x1d4>)
20100582:	4a4c      	ldr	r2, [pc, #304]	; (201006b4 <TimerConfig+0x1d4>)
20100584:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100586:	21c0      	movs	r1, #192	; 0xc0
20100588:	0109      	lsls	r1, r1, #4
2010058a:	430a      	orrs	r2, r1
2010058c:	631a      	str	r2, [r3, #48]	; 0x30
2010058e:	4b49      	ldr	r3, [pc, #292]	; (201006b4 <TimerConfig+0x1d4>)
20100590:	4a48      	ldr	r2, [pc, #288]	; (201006b4 <TimerConfig+0x1d4>)
20100592:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100594:	2180      	movs	r1, #128	; 0x80
20100596:	0049      	lsls	r1, r1, #1
20100598:	430a      	orrs	r2, r1
2010059a:	631a      	str	r2, [r3, #48]	; 0x30
2010059c:	4b45      	ldr	r3, [pc, #276]	; (201006b4 <TimerConfig+0x1d4>)
2010059e:	4a45      	ldr	r2, [pc, #276]	; (201006b4 <TimerConfig+0x1d4>)
201005a0:	6a52      	ldr	r2, [r2, #36]	; 0x24
201005a2:	4946      	ldr	r1, [pc, #280]	; (201006bc <TimerConfig+0x1dc>)
201005a4:	400a      	ands	r2, r1
201005a6:	625a      	str	r2, [r3, #36]	; 0x24
201005a8:	4b42      	ldr	r3, [pc, #264]	; (201006b4 <TimerConfig+0x1d4>)
201005aa:	4a42      	ldr	r2, [pc, #264]	; (201006b4 <TimerConfig+0x1d4>)
201005ac:	6a52      	ldr	r2, [r2, #36]	; 0x24
201005ae:	21e0      	movs	r1, #224	; 0xe0
201005b0:	0109      	lsls	r1, r1, #4
201005b2:	430a      	orrs	r2, r1
201005b4:	625a      	str	r2, [r3, #36]	; 0x24
201005b6:	4b3f      	ldr	r3, [pc, #252]	; (201006b4 <TimerConfig+0x1d4>)
201005b8:	4a3e      	ldr	r2, [pc, #248]	; (201006b4 <TimerConfig+0x1d4>)
201005ba:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005bc:	210f      	movs	r1, #15
201005be:	438a      	bics	r2, r1
201005c0:	635a      	str	r2, [r3, #52]	; 0x34
201005c2:	4b3c      	ldr	r3, [pc, #240]	; (201006b4 <TimerConfig+0x1d4>)
201005c4:	4a3b      	ldr	r2, [pc, #236]	; (201006b4 <TimerConfig+0x1d4>)
201005c6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005c8:	210c      	movs	r1, #12
201005ca:	430a      	orrs	r2, r1
201005cc:	635a      	str	r2, [r3, #52]	; 0x34
201005ce:	4b39      	ldr	r3, [pc, #228]	; (201006b4 <TimerConfig+0x1d4>)
201005d0:	4a38      	ldr	r2, [pc, #224]	; (201006b4 <TimerConfig+0x1d4>)
201005d2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005d4:	2101      	movs	r1, #1
201005d6:	430a      	orrs	r2, r1
201005d8:	635a      	str	r2, [r3, #52]	; 0x34
201005da:	4b36      	ldr	r3, [pc, #216]	; (201006b4 <TimerConfig+0x1d4>)
201005dc:	4a35      	ldr	r2, [pc, #212]	; (201006b4 <TimerConfig+0x1d4>)
201005de:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005e0:	4937      	ldr	r1, [pc, #220]	; (201006c0 <TimerConfig+0x1e0>)
201005e2:	400a      	ands	r2, r1
201005e4:	635a      	str	r2, [r3, #52]	; 0x34
201005e6:	4b33      	ldr	r3, [pc, #204]	; (201006b4 <TimerConfig+0x1d4>)
201005e8:	4a32      	ldr	r2, [pc, #200]	; (201006b4 <TimerConfig+0x1d4>)
201005ea:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005ec:	21c0      	movs	r1, #192	; 0xc0
201005ee:	0109      	lsls	r1, r1, #4
201005f0:	430a      	orrs	r2, r1
201005f2:	635a      	str	r2, [r3, #52]	; 0x34
201005f4:	4b2f      	ldr	r3, [pc, #188]	; (201006b4 <TimerConfig+0x1d4>)
201005f6:	4a2f      	ldr	r2, [pc, #188]	; (201006b4 <TimerConfig+0x1d4>)
201005f8:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005fa:	2180      	movs	r1, #128	; 0x80
201005fc:	0049      	lsls	r1, r1, #1
201005fe:	430a      	orrs	r2, r1
20100600:	635a      	str	r2, [r3, #52]	; 0x34
20100602:	4b2c      	ldr	r3, [pc, #176]	; (201006b4 <TimerConfig+0x1d4>)
20100604:	4a2b      	ldr	r2, [pc, #172]	; (201006b4 <TimerConfig+0x1d4>)
20100606:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100608:	492c      	ldr	r1, [pc, #176]	; (201006bc <TimerConfig+0x1dc>)
2010060a:	400a      	ands	r2, r1
2010060c:	629a      	str	r2, [r3, #40]	; 0x28
2010060e:	4b29      	ldr	r3, [pc, #164]	; (201006b4 <TimerConfig+0x1d4>)
20100610:	4a28      	ldr	r2, [pc, #160]	; (201006b4 <TimerConfig+0x1d4>)
20100612:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100614:	21e0      	movs	r1, #224	; 0xe0
20100616:	0109      	lsls	r1, r1, #4
20100618:	430a      	orrs	r2, r1
2010061a:	629a      	str	r2, [r3, #40]	; 0x28
2010061c:	4b25      	ldr	r3, [pc, #148]	; (201006b4 <TimerConfig+0x1d4>)
2010061e:	4a25      	ldr	r2, [pc, #148]	; (201006b4 <TimerConfig+0x1d4>)
20100620:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100622:	210f      	movs	r1, #15
20100624:	438a      	bics	r2, r1
20100626:	639a      	str	r2, [r3, #56]	; 0x38
20100628:	4b22      	ldr	r3, [pc, #136]	; (201006b4 <TimerConfig+0x1d4>)
2010062a:	4a22      	ldr	r2, [pc, #136]	; (201006b4 <TimerConfig+0x1d4>)
2010062c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010062e:	210c      	movs	r1, #12
20100630:	430a      	orrs	r2, r1
20100632:	639a      	str	r2, [r3, #56]	; 0x38
20100634:	4b1f      	ldr	r3, [pc, #124]	; (201006b4 <TimerConfig+0x1d4>)
20100636:	4a1f      	ldr	r2, [pc, #124]	; (201006b4 <TimerConfig+0x1d4>)
20100638:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010063a:	2101      	movs	r1, #1
2010063c:	430a      	orrs	r2, r1
2010063e:	639a      	str	r2, [r3, #56]	; 0x38
20100640:	4b1c      	ldr	r3, [pc, #112]	; (201006b4 <TimerConfig+0x1d4>)
20100642:	4a1c      	ldr	r2, [pc, #112]	; (201006b4 <TimerConfig+0x1d4>)
20100644:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100646:	491e      	ldr	r1, [pc, #120]	; (201006c0 <TimerConfig+0x1e0>)
20100648:	400a      	ands	r2, r1
2010064a:	639a      	str	r2, [r3, #56]	; 0x38
2010064c:	4b19      	ldr	r3, [pc, #100]	; (201006b4 <TimerConfig+0x1d4>)
2010064e:	4a19      	ldr	r2, [pc, #100]	; (201006b4 <TimerConfig+0x1d4>)
20100650:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100652:	21c0      	movs	r1, #192	; 0xc0
20100654:	0109      	lsls	r1, r1, #4
20100656:	430a      	orrs	r2, r1
20100658:	639a      	str	r2, [r3, #56]	; 0x38
2010065a:	4b16      	ldr	r3, [pc, #88]	; (201006b4 <TimerConfig+0x1d4>)
2010065c:	4a15      	ldr	r2, [pc, #84]	; (201006b4 <TimerConfig+0x1d4>)
2010065e:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100660:	2180      	movs	r1, #128	; 0x80
20100662:	0049      	lsls	r1, r1, #1
20100664:	430a      	orrs	r2, r1
20100666:	639a      	str	r2, [r3, #56]	; 0x38
20100668:	4b12      	ldr	r3, [pc, #72]	; (201006b4 <TimerConfig+0x1d4>)
2010066a:	4a12      	ldr	r2, [pc, #72]	; (201006b4 <TimerConfig+0x1d4>)
2010066c:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010066e:	21c8      	movs	r1, #200	; 0xc8
20100670:	01c9      	lsls	r1, r1, #7
20100672:	430a      	orrs	r2, r1
20100674:	641a      	str	r2, [r3, #64]	; 0x40
20100676:	4b0f      	ldr	r3, [pc, #60]	; (201006b4 <TimerConfig+0x1d4>)
20100678:	4a0e      	ldr	r2, [pc, #56]	; (201006b4 <TimerConfig+0x1d4>)
2010067a:	6c52      	ldr	r2, [r2, #68]	; 0x44
2010067c:	21c8      	movs	r1, #200	; 0xc8
2010067e:	01c9      	lsls	r1, r1, #7
20100680:	430a      	orrs	r2, r1
20100682:	645a      	str	r2, [r3, #68]	; 0x44
20100684:	4b0b      	ldr	r3, [pc, #44]	; (201006b4 <TimerConfig+0x1d4>)
20100686:	4a0b      	ldr	r2, [pc, #44]	; (201006b4 <TimerConfig+0x1d4>)
20100688:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010068a:	21c8      	movs	r1, #200	; 0xc8
2010068c:	01c9      	lsls	r1, r1, #7
2010068e:	430a      	orrs	r2, r1
20100690:	649a      	str	r2, [r3, #72]	; 0x48
20100692:	4b08      	ldr	r3, [pc, #32]	; (201006b4 <TimerConfig+0x1d4>)
20100694:	4a07      	ldr	r2, [pc, #28]	; (201006b4 <TimerConfig+0x1d4>)
20100696:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100698:	21f0      	movs	r1, #240	; 0xf0
2010069a:	0149      	lsls	r1, r1, #5
2010069c:	430a      	orrs	r2, r1
2010069e:	659a      	str	r2, [r3, #88]	; 0x58
201006a0:	4b04      	ldr	r3, [pc, #16]	; (201006b4 <TimerConfig+0x1d4>)
201006a2:	2201      	movs	r2, #1
201006a4:	60da      	str	r2, [r3, #12]
201006a6:	46c0      	nop			; (mov r8, r8)
201006a8:	46bd      	mov	sp, r7
201006aa:	bd80      	pop	{r7, pc}
201006ac:	40020000 	.word	0x40020000
201006b0:	ff00ffff 	.word	0xff00ffff
201006b4:	40098000 	.word	0x40098000
201006b8:	000003ff 	.word	0x000003ff
201006bc:	fffff1ff 	.word	0xfffff1ff
201006c0:	fffff0ff 	.word	0xfffff0ff

201006c4 <adc_init>:
201006c4:	b580      	push	{r7, lr}
201006c6:	af00      	add	r7, sp, #0
201006c8:	4b07      	ldr	r3, [pc, #28]	; (201006e8 <adc_init+0x24>)
201006ca:	4a07      	ldr	r2, [pc, #28]	; (201006e8 <adc_init+0x24>)
201006cc:	69d2      	ldr	r2, [r2, #28]
201006ce:	2180      	movs	r1, #128	; 0x80
201006d0:	0289      	lsls	r1, r1, #10
201006d2:	430a      	orrs	r2, r1
201006d4:	61da      	str	r2, [r3, #28]
201006d6:	4b04      	ldr	r3, [pc, #16]	; (201006e8 <adc_init+0x24>)
201006d8:	4a04      	ldr	r2, [pc, #16]	; (201006ec <adc_init+0x28>)
201006da:	615a      	str	r2, [r3, #20]
201006dc:	4b04      	ldr	r3, [pc, #16]	; (201006f0 <adc_init+0x2c>)
201006de:	2245      	movs	r2, #69	; 0x45
201006e0:	601a      	str	r2, [r3, #0]
201006e2:	46c0      	nop			; (mov r8, r8)
201006e4:	46bd      	mov	sp, r7
201006e6:	bd80      	pop	{r7, pc}
201006e8:	40020000 	.word	0x40020000
201006ec:	00002020 	.word	0x00002020
201006f0:	40088000 	.word	0x40088000

201006f4 <dac_init>:
201006f4:	b580      	push	{r7, lr}
201006f6:	af00      	add	r7, sp, #0
201006f8:	4b07      	ldr	r3, [pc, #28]	; (20100718 <dac_init+0x24>)
201006fa:	4a07      	ldr	r2, [pc, #28]	; (20100718 <dac_init+0x24>)
201006fc:	69d2      	ldr	r2, [r2, #28]
201006fe:	2180      	movs	r1, #128	; 0x80
20100700:	02c9      	lsls	r1, r1, #11
20100702:	430a      	orrs	r2, r1
20100704:	61da      	str	r2, [r3, #28]
20100706:	4b05      	ldr	r3, [pc, #20]	; (2010071c <dac_init+0x28>)
20100708:	4a04      	ldr	r2, [pc, #16]	; (2010071c <dac_init+0x28>)
2010070a:	6812      	ldr	r2, [r2, #0]
2010070c:	2104      	movs	r1, #4
2010070e:	430a      	orrs	r2, r1
20100710:	601a      	str	r2, [r3, #0]
20100712:	46c0      	nop			; (mov r8, r8)
20100714:	46bd      	mov	sp, r7
20100716:	bd80      	pop	{r7, pc}
20100718:	40020000 	.word	0x40020000
2010071c:	40090000 	.word	0x40090000

20100720 <ssi_init>:
20100720:	b580      	push	{r7, lr}
20100722:	af00      	add	r7, sp, #0
20100724:	4b0c      	ldr	r3, [pc, #48]	; (20100758 <ssi_init+0x38>)
20100726:	4a0c      	ldr	r2, [pc, #48]	; (20100758 <ssi_init+0x38>)
20100728:	69d2      	ldr	r2, [r2, #28]
2010072a:	2180      	movs	r1, #128	; 0x80
2010072c:	0349      	lsls	r1, r1, #13
2010072e:	430a      	orrs	r2, r1
20100730:	61da      	str	r2, [r3, #28]
20100732:	4b09      	ldr	r3, [pc, #36]	; (20100758 <ssi_init+0x38>)
20100734:	4a09      	ldr	r2, [pc, #36]	; (2010075c <ssi_init+0x3c>)
20100736:	62da      	str	r2, [r3, #44]	; 0x2c
20100738:	4b09      	ldr	r3, [pc, #36]	; (20100760 <ssi_init+0x40>)
2010073a:	2200      	movs	r2, #0
2010073c:	605a      	str	r2, [r3, #4]
2010073e:	4b08      	ldr	r3, [pc, #32]	; (20100760 <ssi_init+0x40>)
20100740:	2210      	movs	r2, #16
20100742:	611a      	str	r2, [r3, #16]
20100744:	4b06      	ldr	r3, [pc, #24]	; (20100760 <ssi_init+0x40>)
20100746:	4a07      	ldr	r2, [pc, #28]	; (20100764 <ssi_init+0x44>)
20100748:	601a      	str	r2, [r3, #0]
2010074a:	4b05      	ldr	r3, [pc, #20]	; (20100760 <ssi_init+0x40>)
2010074c:	2202      	movs	r2, #2
2010074e:	605a      	str	r2, [r3, #4]
20100750:	46c0      	nop			; (mov r8, r8)
20100752:	46bd      	mov	sp, r7
20100754:	bd80      	pop	{r7, pc}
20100756:	46c0      	nop			; (mov r8, r8)
20100758:	40020000 	.word	0x40020000
2010075c:	02000a00 	.word	0x02000a00
20100760:	400a0000 	.word	0x400a0000
20100764:	0000021b 	.word	0x0000021b

20100768 <b2g>:
20100768:	b580      	push	{r7, lr}
2010076a:	b082      	sub	sp, #8
2010076c:	af00      	add	r7, sp, #0
2010076e:	6078      	str	r0, [r7, #4]
20100770:	687b      	ldr	r3, [r7, #4]
20100772:	085a      	lsrs	r2, r3, #1
20100774:	687b      	ldr	r3, [r7, #4]
20100776:	4053      	eors	r3, r2
20100778:	0018      	movs	r0, r3
2010077a:	46bd      	mov	sp, r7
2010077c:	b002      	add	sp, #8
2010077e:	bd80      	pop	{r7, pc}

20100780 <g2b>:
20100780:	b580      	push	{r7, lr}
20100782:	b084      	sub	sp, #16
20100784:	af00      	add	r7, sp, #0
20100786:	6078      	str	r0, [r7, #4]
20100788:	2300      	movs	r3, #0
2010078a:	60fb      	str	r3, [r7, #12]
2010078c:	2300      	movs	r3, #0
2010078e:	60fb      	str	r3, [r7, #12]
20100790:	e006      	b.n	201007a0 <g2b+0x20>
20100792:	68fa      	ldr	r2, [r7, #12]
20100794:	687b      	ldr	r3, [r7, #4]
20100796:	4053      	eors	r3, r2
20100798:	60fb      	str	r3, [r7, #12]
2010079a:	687b      	ldr	r3, [r7, #4]
2010079c:	085b      	lsrs	r3, r3, #1
2010079e:	607b      	str	r3, [r7, #4]
201007a0:	687b      	ldr	r3, [r7, #4]
201007a2:	2b00      	cmp	r3, #0
201007a4:	d1f5      	bne.n	20100792 <g2b+0x12>
201007a6:	68fb      	ldr	r3, [r7, #12]
201007a8:	0018      	movs	r0, r3
201007aa:	46bd      	mov	sp, r7
201007ac:	b004      	add	sp, #16
201007ae:	bd80      	pop	{r7, pc}

201007b0 <SystemInit>:
201007b0:	b580      	push	{r7, lr}
201007b2:	af00      	add	r7, sp, #0
201007b4:	f7ff fe5a 	bl	2010046c <ClkConfig>
201007b8:	f7ff fdbc 	bl	20100334 <PortConfig>
201007bc:	f7ff fe90 	bl	201004e0 <TimerConfig>
201007c0:	f7ff ff80 	bl	201006c4 <adc_init>
201007c4:	f7ff ff96 	bl	201006f4 <dac_init>
201007c8:	f7ff ffaa 	bl	20100720 <ssi_init>
201007cc:	46c0      	nop			; (mov r8, r8)
201007ce:	46bd      	mov	sp, r7
201007d0:	bd80      	pop	{r7, pc}
201007d2:	46c0      	nop			; (mov r8, r8)

201007d4 <get_dcA>:
201007d4:	b580      	push	{r7, lr}
201007d6:	b082      	sub	sp, #8
201007d8:	af00      	add	r7, sp, #0
201007da:	2300      	movs	r3, #0
201007dc:	603b      	str	r3, [r7, #0]
201007de:	2300      	movs	r3, #0
201007e0:	607b      	str	r3, [r7, #4]
201007e2:	e012      	b.n	2010080a <get_dcA+0x36>
201007e4:	4b0e      	ldr	r3, [pc, #56]	; (20100820 <get_dcA+0x4c>)
201007e6:	2237      	movs	r2, #55	; 0x37
201007e8:	601a      	str	r2, [r3, #0]
201007ea:	46c0      	nop			; (mov r8, r8)
201007ec:	4b0c      	ldr	r3, [pc, #48]	; (20100820 <get_dcA+0x4c>)
201007ee:	6a1b      	ldr	r3, [r3, #32]
201007f0:	2204      	movs	r2, #4
201007f2:	4013      	ands	r3, r2
201007f4:	d0fa      	beq.n	201007ec <get_dcA+0x18>
201007f6:	4b0a      	ldr	r3, [pc, #40]	; (20100820 <get_dcA+0x4c>)
201007f8:	699b      	ldr	r3, [r3, #24]
201007fa:	051b      	lsls	r3, r3, #20
201007fc:	0d1a      	lsrs	r2, r3, #20
201007fe:	683b      	ldr	r3, [r7, #0]
20100800:	18d3      	adds	r3, r2, r3
20100802:	603b      	str	r3, [r7, #0]
20100804:	687b      	ldr	r3, [r7, #4]
20100806:	3301      	adds	r3, #1
20100808:	607b      	str	r3, [r7, #4]
2010080a:	687b      	ldr	r3, [r7, #4]
2010080c:	4a05      	ldr	r2, [pc, #20]	; (20100824 <get_dcA+0x50>)
2010080e:	4293      	cmp	r3, r2
20100810:	dde8      	ble.n	201007e4 <get_dcA+0x10>
20100812:	683b      	ldr	r3, [r7, #0]
20100814:	129b      	asrs	r3, r3, #10
20100816:	0018      	movs	r0, r3
20100818:	46bd      	mov	sp, r7
2010081a:	b002      	add	sp, #8
2010081c:	bd80      	pop	{r7, pc}
2010081e:	46c0      	nop			; (mov r8, r8)
20100820:	40088000 	.word	0x40088000
20100824:	000003ff 	.word	0x000003ff

20100828 <get_dcB>:
20100828:	b580      	push	{r7, lr}
2010082a:	b082      	sub	sp, #8
2010082c:	af00      	add	r7, sp, #0
2010082e:	2300      	movs	r3, #0
20100830:	603b      	str	r3, [r7, #0]
20100832:	2300      	movs	r3, #0
20100834:	607b      	str	r3, [r7, #4]
20100836:	e012      	b.n	2010085e <get_dcB+0x36>
20100838:	4b0e      	ldr	r3, [pc, #56]	; (20100874 <get_dcB+0x4c>)
2010083a:	2247      	movs	r2, #71	; 0x47
2010083c:	601a      	str	r2, [r3, #0]
2010083e:	46c0      	nop			; (mov r8, r8)
20100840:	4b0c      	ldr	r3, [pc, #48]	; (20100874 <get_dcB+0x4c>)
20100842:	6a1b      	ldr	r3, [r3, #32]
20100844:	2204      	movs	r2, #4
20100846:	4013      	ands	r3, r2
20100848:	d0fa      	beq.n	20100840 <get_dcB+0x18>
2010084a:	4b0a      	ldr	r3, [pc, #40]	; (20100874 <get_dcB+0x4c>)
2010084c:	699b      	ldr	r3, [r3, #24]
2010084e:	051b      	lsls	r3, r3, #20
20100850:	0d1a      	lsrs	r2, r3, #20
20100852:	683b      	ldr	r3, [r7, #0]
20100854:	18d3      	adds	r3, r2, r3
20100856:	603b      	str	r3, [r7, #0]
20100858:	687b      	ldr	r3, [r7, #4]
2010085a:	3301      	adds	r3, #1
2010085c:	607b      	str	r3, [r7, #4]
2010085e:	687b      	ldr	r3, [r7, #4]
20100860:	4a05      	ldr	r2, [pc, #20]	; (20100878 <get_dcB+0x50>)
20100862:	4293      	cmp	r3, r2
20100864:	dde8      	ble.n	20100838 <get_dcB+0x10>
20100866:	683b      	ldr	r3, [r7, #0]
20100868:	129b      	asrs	r3, r3, #10
2010086a:	0018      	movs	r0, r3
2010086c:	46bd      	mov	sp, r7
2010086e:	b002      	add	sp, #8
20100870:	bd80      	pop	{r7, pc}
20100872:	46c0      	nop			; (mov r8, r8)
20100874:	40088000 	.word	0x40088000
20100878:	000003ff 	.word	0x000003ff

2010087c <wait_timer_ticks>:
2010087c:	b580      	push	{r7, lr}
2010087e:	b084      	sub	sp, #16
20100880:	af00      	add	r7, sp, #0
20100882:	6078      	str	r0, [r7, #4]
20100884:	2300      	movs	r3, #0
20100886:	60fb      	str	r3, [r7, #12]
20100888:	e00b      	b.n	201008a2 <wait_timer_ticks+0x26>
2010088a:	46c0      	nop			; (mov r8, r8)
2010088c:	4b09      	ldr	r3, [pc, #36]	; (201008b4 <wait_timer_ticks+0x38>)
2010088e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100890:	2202      	movs	r2, #2
20100892:	4013      	ands	r3, r2
20100894:	d0fa      	beq.n	2010088c <wait_timer_ticks+0x10>
20100896:	4b07      	ldr	r3, [pc, #28]	; (201008b4 <wait_timer_ticks+0x38>)
20100898:	2200      	movs	r2, #0
2010089a:	655a      	str	r2, [r3, #84]	; 0x54
2010089c:	68fb      	ldr	r3, [r7, #12]
2010089e:	3301      	adds	r3, #1
201008a0:	60fb      	str	r3, [r7, #12]
201008a2:	68fa      	ldr	r2, [r7, #12]
201008a4:	687b      	ldr	r3, [r7, #4]
201008a6:	429a      	cmp	r2, r3
201008a8:	dbef      	blt.n	2010088a <wait_timer_ticks+0xe>
201008aa:	46c0      	nop			; (mov r8, r8)
201008ac:	46bd      	mov	sp, r7
201008ae:	b004      	add	sp, #16
201008b0:	bd80      	pop	{r7, pc}
201008b2:	46c0      	nop			; (mov r8, r8)
201008b4:	40098000 	.word	0x40098000

201008b8 <init_pos>:
201008b8:	b580      	push	{r7, lr}
201008ba:	b082      	sub	sp, #8
201008bc:	af00      	add	r7, sp, #0
201008be:	4b0b      	ldr	r3, [pc, #44]	; (201008ec <init_pos+0x34>)
201008c0:	4a0b      	ldr	r2, [pc, #44]	; (201008f0 <init_pos+0x38>)
201008c2:	609a      	str	r2, [r3, #8]
201008c4:	46c0      	nop			; (mov r8, r8)
201008c6:	4b09      	ldr	r3, [pc, #36]	; (201008ec <init_pos+0x34>)
201008c8:	68db      	ldr	r3, [r3, #12]
201008ca:	2204      	movs	r2, #4
201008cc:	4013      	ands	r3, r2
201008ce:	d0fa      	beq.n	201008c6 <init_pos+0xe>
201008d0:	4b06      	ldr	r3, [pc, #24]	; (201008ec <init_pos+0x34>)
201008d2:	689b      	ldr	r3, [r3, #8]
201008d4:	051b      	lsls	r3, r3, #20
201008d6:	0d1b      	lsrs	r3, r3, #20
201008d8:	0018      	movs	r0, r3
201008da:	f7ff ff51 	bl	20100780 <g2b>
201008de:	0003      	movs	r3, r0
201008e0:	607b      	str	r3, [r7, #4]
201008e2:	46c0      	nop			; (mov r8, r8)
201008e4:	46bd      	mov	sp, r7
201008e6:	b002      	add	sp, #8
201008e8:	bd80      	pop	{r7, pc}
201008ea:	46c0      	nop			; (mov r8, r8)
201008ec:	400a0000 	.word	0x400a0000
201008f0:	00000555 	.word	0x00000555

201008f4 <mycos>:
201008f4:	4b05      	ldr	r3, [pc, #20]	; (2010090c <mycos+0x18>)
201008f6:	4a06      	ldr	r2, [pc, #24]	; (20100910 <mycos+0x1c>)
201008f8:	447b      	add	r3, pc
201008fa:	0580      	lsls	r0, r0, #22
201008fc:	589b      	ldr	r3, [r3, r2]
201008fe:	0d00      	lsrs	r0, r0, #20
20100900:	58c0      	ldr	r0, [r0, r3]
20100902:	b082      	sub	sp, #8
20100904:	9301      	str	r3, [sp, #4]
20100906:	b002      	add	sp, #8
20100908:	4770      	bx	lr
2010090a:	46c0      	nop			; (mov r8, r8)
2010090c:	ffeff708 	.word	0xffeff708
20100910:	00000000 	.word	0x00000000

20100914 <mysin>:
20100914:	4b07      	ldr	r3, [pc, #28]	; (20100934 <mysin+0x20>)
20100916:	4a08      	ldr	r2, [pc, #32]	; (20100938 <mysin+0x24>)
20100918:	447b      	add	r3, pc
2010091a:	589b      	ldr	r3, [r3, r2]
2010091c:	b082      	sub	sp, #8
2010091e:	9301      	str	r3, [sp, #4]
20100920:	23c0      	movs	r3, #192	; 0xc0
20100922:	009b      	lsls	r3, r3, #2
20100924:	469c      	mov	ip, r3
20100926:	4460      	add	r0, ip
20100928:	9b01      	ldr	r3, [sp, #4]
2010092a:	0580      	lsls	r0, r0, #22
2010092c:	0d00      	lsrs	r0, r0, #20
2010092e:	58c0      	ldr	r0, [r0, r3]
20100930:	b002      	add	sp, #8
20100932:	4770      	bx	lr
20100934:	ffeff6e8 	.word	0xffeff6e8
20100938:	00000000 	.word	0x00000000

2010093c <update>:
2010093c:	b510      	push	{r4, lr}
2010093e:	6804      	ldr	r4, [r0, #0]
20100940:	6883      	ldr	r3, [r0, #8]
20100942:	434c      	muls	r4, r1
20100944:	2a00      	cmp	r2, #0
20100946:	d004      	beq.n	20100952 <update+0x16>
20100948:	2b00      	cmp	r3, #0
2010094a:	dd09      	ble.n	20100960 <update+0x24>
2010094c:	2c00      	cmp	r4, #0
2010094e:	dd00      	ble.n	20100952 <update+0x16>
20100950:	2400      	movs	r4, #0
20100952:	6842      	ldr	r2, [r0, #4]
20100954:	18e3      	adds	r3, r4, r3
20100956:	4351      	muls	r1, r2
20100958:	18c9      	adds	r1, r1, r3
2010095a:	60c1      	str	r1, [r0, #12]
2010095c:	6083      	str	r3, [r0, #8]
2010095e:	bd10      	pop	{r4, pc}
20100960:	2b00      	cmp	r3, #0
20100962:	d0f6      	beq.n	20100952 <update+0x16>
20100964:	43e2      	mvns	r2, r4
20100966:	17d2      	asrs	r2, r2, #31
20100968:	4014      	ands	r4, r2
2010096a:	e7f2      	b.n	20100952 <update+0x16>

2010096c <dot3>:
2010096c:	6803      	ldr	r3, [r0, #0]
2010096e:	680a      	ldr	r2, [r1, #0]
20100970:	b510      	push	{r4, lr}
20100972:	435a      	muls	r2, r3
20100974:	6844      	ldr	r4, [r0, #4]
20100976:	684b      	ldr	r3, [r1, #4]
20100978:	6880      	ldr	r0, [r0, #8]
2010097a:	4363      	muls	r3, r4
2010097c:	18d2      	adds	r2, r2, r3
2010097e:	688b      	ldr	r3, [r1, #8]
20100980:	4343      	muls	r3, r0
20100982:	18d0      	adds	r0, r2, r3
20100984:	bd10      	pop	{r4, pc}
20100986:	46c0      	nop			; (mov r8, r8)

20100988 <abc_to_dq>:
20100988:	b5f0      	push	{r4, r5, r6, r7, lr}
2010098a:	4647      	mov	r7, r8
2010098c:	b480      	push	{r7}
2010098e:	4b1d      	ldr	r3, [pc, #116]	; (20100a04 <abc_to_dq+0x7c>)
20100990:	4c1d      	ldr	r4, [pc, #116]	; (20100a08 <abc_to_dq+0x80>)
20100992:	447b      	add	r3, pc
20100994:	591d      	ldr	r5, [r3, r4]
20100996:	23c0      	movs	r3, #192	; 0xc0
20100998:	009b      	lsls	r3, r3, #2
2010099a:	18d3      	adds	r3, r2, r3
2010099c:	059b      	lsls	r3, r3, #22
2010099e:	0d1b      	lsrs	r3, r3, #20
201009a0:	595b      	ldr	r3, [r3, r5]
201009a2:	4698      	mov	r8, r3
201009a4:	4b19      	ldr	r3, [pc, #100]	; (20100a0c <abc_to_dq+0x84>)
201009a6:	18d4      	adds	r4, r2, r3
201009a8:	05a4      	lsls	r4, r4, #22
201009aa:	4b19      	ldr	r3, [pc, #100]	; (20100a10 <abc_to_dq+0x88>)
201009ac:	0d24      	lsrs	r4, r4, #20
201009ae:	5967      	ldr	r7, [r4, r5]
201009b0:	18d4      	adds	r4, r2, r3
201009b2:	05a4      	lsls	r4, r4, #22
201009b4:	4b17      	ldr	r3, [pc, #92]	; (20100a14 <abc_to_dq+0x8c>)
201009b6:	0d24      	lsrs	r4, r4, #20
201009b8:	5966      	ldr	r6, [r4, r5]
201009ba:	18d4      	adds	r4, r2, r3
201009bc:	05a4      	lsls	r4, r4, #22
201009be:	0d24      	lsrs	r4, r4, #20
201009c0:	5964      	ldr	r4, [r4, r5]
201009c2:	6843      	ldr	r3, [r0, #4]
201009c4:	4363      	muls	r3, r4
201009c6:	0094      	lsls	r4, r2, #2
201009c8:	469c      	mov	ip, r3
201009ca:	3256      	adds	r2, #86	; 0x56
201009cc:	32ff      	adds	r2, #255	; 0xff
201009ce:	6803      	ldr	r3, [r0, #0]
201009d0:	5964      	ldr	r4, [r4, r5]
201009d2:	0592      	lsls	r2, r2, #22
201009d4:	0d12      	lsrs	r2, r2, #20
201009d6:	5955      	ldr	r5, [r2, r5]
201009d8:	435c      	muls	r4, r3
201009da:	6883      	ldr	r3, [r0, #8]
201009dc:	4464      	add	r4, ip
201009de:	435d      	muls	r5, r3
201009e0:	4643      	mov	r3, r8
201009e2:	1964      	adds	r4, r4, r5
201009e4:	12a4      	asrs	r4, r4, #10
201009e6:	600c      	str	r4, [r1, #0]
201009e8:	6802      	ldr	r2, [r0, #0]
201009ea:	435a      	muls	r2, r3
201009ec:	6843      	ldr	r3, [r0, #4]
201009ee:	437b      	muls	r3, r7
201009f0:	18d3      	adds	r3, r2, r3
201009f2:	6882      	ldr	r2, [r0, #8]
201009f4:	4372      	muls	r2, r6
201009f6:	189b      	adds	r3, r3, r2
201009f8:	425b      	negs	r3, r3
201009fa:	129b      	asrs	r3, r3, #10
201009fc:	604b      	str	r3, [r1, #4]
201009fe:	bc04      	pop	{r2}
20100a00:	4690      	mov	r8, r2
20100a02:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100a04:	ffeff66e 	.word	0xffeff66e
20100a08:	00000000 	.word	0x00000000
20100a0c:	000005aa 	.word	0x000005aa
20100a10:	00000455 	.word	0x00000455
20100a14:	000002aa 	.word	0x000002aa

20100a18 <dq_to_abc>:
20100a18:	b570      	push	{r4, r5, r6, lr}
20100a1a:	4b1c      	ldr	r3, [pc, #112]	; (20100a8c <dq_to_abc+0x74>)
20100a1c:	4c1c      	ldr	r4, [pc, #112]	; (20100a90 <dq_to_abc+0x78>)
20100a1e:	447b      	add	r3, pc
20100a20:	591d      	ldr	r5, [r3, r4]
20100a22:	0093      	lsls	r3, r2, #2
20100a24:	680c      	ldr	r4, [r1, #0]
20100a26:	595b      	ldr	r3, [r3, r5]
20100a28:	684e      	ldr	r6, [r1, #4]
20100a2a:	435c      	muls	r4, r3
20100a2c:	23c0      	movs	r3, #192	; 0xc0
20100a2e:	009b      	lsls	r3, r3, #2
20100a30:	18d3      	adds	r3, r2, r3
20100a32:	059b      	lsls	r3, r3, #22
20100a34:	0d1b      	lsrs	r3, r3, #20
20100a36:	595b      	ldr	r3, [r3, r5]
20100a38:	4373      	muls	r3, r6
20100a3a:	1ae3      	subs	r3, r4, r3
20100a3c:	151b      	asrs	r3, r3, #20
20100a3e:	6003      	str	r3, [r0, #0]
20100a40:	4b14      	ldr	r3, [pc, #80]	; (20100a94 <dq_to_abc+0x7c>)
20100a42:	680c      	ldr	r4, [r1, #0]
20100a44:	18d3      	adds	r3, r2, r3
20100a46:	059b      	lsls	r3, r3, #22
20100a48:	0d1b      	lsrs	r3, r3, #20
20100a4a:	595b      	ldr	r3, [r3, r5]
20100a4c:	684e      	ldr	r6, [r1, #4]
20100a4e:	435c      	muls	r4, r3
20100a50:	4b11      	ldr	r3, [pc, #68]	; (20100a98 <dq_to_abc+0x80>)
20100a52:	18d3      	adds	r3, r2, r3
20100a54:	059b      	lsls	r3, r3, #22
20100a56:	0d1b      	lsrs	r3, r3, #20
20100a58:	595b      	ldr	r3, [r3, r5]
20100a5a:	4373      	muls	r3, r6
20100a5c:	1ae3      	subs	r3, r4, r3
20100a5e:	151b      	asrs	r3, r3, #20
20100a60:	6043      	str	r3, [r0, #4]
20100a62:	0013      	movs	r3, r2
20100a64:	3356      	adds	r3, #86	; 0x56
20100a66:	33ff      	adds	r3, #255	; 0xff
20100a68:	059b      	lsls	r3, r3, #22
20100a6a:	0d1b      	lsrs	r3, r3, #20
20100a6c:	595b      	ldr	r3, [r3, r5]
20100a6e:	680c      	ldr	r4, [r1, #0]
20100a70:	435c      	muls	r4, r3
20100a72:	4b0a      	ldr	r3, [pc, #40]	; (20100a9c <dq_to_abc+0x84>)
20100a74:	469c      	mov	ip, r3
20100a76:	4462      	add	r2, ip
20100a78:	0592      	lsls	r2, r2, #22
20100a7a:	0d12      	lsrs	r2, r2, #20
20100a7c:	5952      	ldr	r2, [r2, r5]
20100a7e:	684b      	ldr	r3, [r1, #4]
20100a80:	4353      	muls	r3, r2
20100a82:	1ae3      	subs	r3, r4, r3
20100a84:	151b      	asrs	r3, r3, #20
20100a86:	6083      	str	r3, [r0, #8]
20100a88:	bd70      	pop	{r4, r5, r6, pc}
20100a8a:	46c0      	nop			; (mov r8, r8)
20100a8c:	ffeff5e2 	.word	0xffeff5e2
20100a90:	00000000 	.word	0x00000000
20100a94:	000002aa 	.word	0x000002aa
20100a98:	000005aa 	.word	0x000005aa
20100a9c:	00000455 	.word	0x00000455

20100aa0 <cord_atan>:
20100aa0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100aa2:	4645      	mov	r5, r8
20100aa4:	4657      	mov	r7, sl
20100aa6:	464e      	mov	r6, r9
20100aa8:	b4e0      	push	{r5, r6, r7}
20100aaa:	4b65      	ldr	r3, [pc, #404]	; (20100c40 <cord_atan+0x1a0>)
20100aac:	b090      	sub	sp, #64	; 0x40
20100aae:	447b      	add	r3, pc
20100ab0:	001c      	movs	r4, r3
20100ab2:	4694      	mov	ip, r2
20100ab4:	466a      	mov	r2, sp
20100ab6:	468a      	mov	sl, r1
20100ab8:	cca2      	ldmia	r4!, {r1, r5, r7}
20100aba:	c2a2      	stmia	r2!, {r1, r5, r7}
20100abc:	cca2      	ldmia	r4!, {r1, r5, r7}
20100abe:	c2a2      	stmia	r2!, {r1, r5, r7}
20100ac0:	cc22      	ldmia	r4!, {r1, r5}
20100ac2:	c222      	stmia	r2!, {r1, r5}
20100ac4:	3320      	adds	r3, #32
20100ac6:	aa08      	add	r2, sp, #32
20100ac8:	4690      	mov	r8, r2
20100aca:	cb32      	ldmia	r3!, {r1, r4, r5}
20100acc:	c232      	stmia	r2!, {r1, r4, r5}
20100ace:	cb32      	ldmia	r3!, {r1, r4, r5}
20100ad0:	c232      	stmia	r2!, {r1, r4, r5}
20100ad2:	cb12      	ldmia	r3!, {r1, r4}
20100ad4:	c212      	stmia	r2!, {r1, r4}
20100ad6:	6802      	ldr	r2, [r0, #0]
20100ad8:	6845      	ldr	r5, [r0, #4]
20100ada:	17d1      	asrs	r1, r2, #31
20100adc:	1853      	adds	r3, r2, r1
20100ade:	466e      	mov	r6, sp
20100ae0:	404b      	eors	r3, r1
20100ae2:	2d00      	cmp	r5, #0
20100ae4:	dd6c      	ble.n	20100bc0 <cord_atan+0x120>
20100ae6:	195f      	adds	r7, r3, r5
20100ae8:	1aeb      	subs	r3, r5, r3
20100aea:	9d00      	ldr	r5, [sp, #0]
20100aec:	2b00      	cmp	r3, #0
20100aee:	d100      	bne.n	20100af2 <cord_atan+0x52>
20100af0:	e094      	b.n	20100c1c <cord_atan+0x17c>
20100af2:	105c      	asrs	r4, r3, #1
20100af4:	2b00      	cmp	r3, #0
20100af6:	dd68      	ble.n	20100bca <cord_atan+0x12a>
20100af8:	1078      	asrs	r0, r7, #1
20100afa:	1a1b      	subs	r3, r3, r0
20100afc:	6870      	ldr	r0, [r6, #4]
20100afe:	19e4      	adds	r4, r4, r7
20100b00:	4681      	mov	r9, r0
20100b02:	444d      	add	r5, r9
20100b04:	2b00      	cmp	r3, #0
20100b06:	d100      	bne.n	20100b0a <cord_atan+0x6a>
20100b08:	e08a      	b.n	20100c20 <cord_atan+0x180>
20100b0a:	1098      	asrs	r0, r3, #2
20100b0c:	2b00      	cmp	r3, #0
20100b0e:	dd62      	ble.n	20100bd6 <cord_atan+0x136>
20100b10:	1907      	adds	r7, r0, r4
20100b12:	10a4      	asrs	r4, r4, #2
20100b14:	1b18      	subs	r0, r3, r4
20100b16:	68b3      	ldr	r3, [r6, #8]
20100b18:	4699      	mov	r9, r3
20100b1a:	444d      	add	r5, r9
20100b1c:	2800      	cmp	r0, #0
20100b1e:	d100      	bne.n	20100b22 <cord_atan+0x82>
20100b20:	e081      	b.n	20100c26 <cord_atan+0x186>
20100b22:	10c3      	asrs	r3, r0, #3
20100b24:	2800      	cmp	r0, #0
20100b26:	dd5c      	ble.n	20100be2 <cord_atan+0x142>
20100b28:	10fc      	asrs	r4, r7, #3
20100b2a:	1b00      	subs	r0, r0, r4
20100b2c:	68f4      	ldr	r4, [r6, #12]
20100b2e:	19db      	adds	r3, r3, r7
20100b30:	46a1      	mov	r9, r4
20100b32:	444d      	add	r5, r9
20100b34:	2800      	cmp	r0, #0
20100b36:	d100      	bne.n	20100b3a <cord_atan+0x9a>
20100b38:	e077      	b.n	20100c2a <cord_atan+0x18a>
20100b3a:	1104      	asrs	r4, r0, #4
20100b3c:	2800      	cmp	r0, #0
20100b3e:	dd56      	ble.n	20100bee <cord_atan+0x14e>
20100b40:	18e7      	adds	r7, r4, r3
20100b42:	111b      	asrs	r3, r3, #4
20100b44:	1ac4      	subs	r4, r0, r3
20100b46:	6933      	ldr	r3, [r6, #16]
20100b48:	4699      	mov	r9, r3
20100b4a:	444d      	add	r5, r9
20100b4c:	2c00      	cmp	r4, #0
20100b4e:	d100      	bne.n	20100b52 <cord_atan+0xb2>
20100b50:	e06e      	b.n	20100c30 <cord_atan+0x190>
20100b52:	1163      	asrs	r3, r4, #5
20100b54:	2c00      	cmp	r4, #0
20100b56:	dd50      	ble.n	20100bfa <cord_atan+0x15a>
20100b58:	1178      	asrs	r0, r7, #5
20100b5a:	1a20      	subs	r0, r4, r0
20100b5c:	6974      	ldr	r4, [r6, #20]
20100b5e:	19db      	adds	r3, r3, r7
20100b60:	46a1      	mov	r9, r4
20100b62:	444d      	add	r5, r9
20100b64:	2800      	cmp	r0, #0
20100b66:	d065      	beq.n	20100c34 <cord_atan+0x194>
20100b68:	1184      	asrs	r4, r0, #6
20100b6a:	2800      	cmp	r0, #0
20100b6c:	dd4b      	ble.n	20100c06 <cord_atan+0x166>
20100b6e:	18e7      	adds	r7, r4, r3
20100b70:	119b      	asrs	r3, r3, #6
20100b72:	1ac0      	subs	r0, r0, r3
20100b74:	69b3      	ldr	r3, [r6, #24]
20100b76:	4699      	mov	r9, r3
20100b78:	444d      	add	r5, r9
20100b7a:	2800      	cmp	r0, #0
20100b7c:	d05d      	beq.n	20100c3a <cord_atan+0x19a>
20100b7e:	dd48      	ble.n	20100c12 <cord_atan+0x172>
20100b80:	69f3      	ldr	r3, [r6, #28]
20100b82:	11c0      	asrs	r0, r0, #7
20100b84:	19c7      	adds	r7, r0, r7
20100b86:	18ed      	adds	r5, r5, r3
20100b88:	2307      	movs	r3, #7
20100b8a:	2a00      	cmp	r2, #0
20100b8c:	db14      	blt.n	20100bb8 <cord_atan+0x118>
20100b8e:	2d00      	cmp	r5, #0
20100b90:	da03      	bge.n	20100b9a <cord_atan+0xfa>
20100b92:	2280      	movs	r2, #128	; 0x80
20100b94:	00d2      	lsls	r2, r2, #3
20100b96:	4691      	mov	r9, r2
20100b98:	444d      	add	r5, r9
20100b9a:	4652      	mov	r2, sl
20100b9c:	6015      	str	r5, [r2, #0]
20100b9e:	4642      	mov	r2, r8
20100ba0:	009b      	lsls	r3, r3, #2
20100ba2:	58d0      	ldr	r0, [r2, r3]
20100ba4:	4663      	mov	r3, ip
20100ba6:	4378      	muls	r0, r7
20100ba8:	1280      	asrs	r0, r0, #10
20100baa:	6018      	str	r0, [r3, #0]
20100bac:	b010      	add	sp, #64	; 0x40
20100bae:	bc1c      	pop	{r2, r3, r4}
20100bb0:	4690      	mov	r8, r2
20100bb2:	4699      	mov	r9, r3
20100bb4:	46a2      	mov	sl, r4
20100bb6:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100bb8:	2280      	movs	r2, #128	; 0x80
20100bba:	0092      	lsls	r2, r2, #2
20100bbc:	1b55      	subs	r5, r2, r5
20100bbe:	e7e6      	b.n	20100b8e <cord_atan+0xee>
20100bc0:	9900      	ldr	r1, [sp, #0]
20100bc2:	1b5f      	subs	r7, r3, r5
20100bc4:	195b      	adds	r3, r3, r5
20100bc6:	424d      	negs	r5, r1
20100bc8:	e790      	b.n	20100aec <cord_atan+0x4c>
20100bca:	6871      	ldr	r1, [r6, #4]
20100bcc:	1078      	asrs	r0, r7, #1
20100bce:	1b3c      	subs	r4, r7, r4
20100bd0:	18c3      	adds	r3, r0, r3
20100bd2:	1a6d      	subs	r5, r5, r1
20100bd4:	e796      	b.n	20100b04 <cord_atan+0x64>
20100bd6:	1a27      	subs	r7, r4, r0
20100bd8:	10a0      	asrs	r0, r4, #2
20100bda:	18c0      	adds	r0, r0, r3
20100bdc:	68b3      	ldr	r3, [r6, #8]
20100bde:	1aed      	subs	r5, r5, r3
20100be0:	e79c      	b.n	20100b1c <cord_atan+0x7c>
20100be2:	68f1      	ldr	r1, [r6, #12]
20100be4:	10fc      	asrs	r4, r7, #3
20100be6:	1afb      	subs	r3, r7, r3
20100be8:	1820      	adds	r0, r4, r0
20100bea:	1a6d      	subs	r5, r5, r1
20100bec:	e7a2      	b.n	20100b34 <cord_atan+0x94>
20100bee:	1b1f      	subs	r7, r3, r4
20100bf0:	111c      	asrs	r4, r3, #4
20100bf2:	6933      	ldr	r3, [r6, #16]
20100bf4:	1824      	adds	r4, r4, r0
20100bf6:	1aed      	subs	r5, r5, r3
20100bf8:	e7a8      	b.n	20100b4c <cord_atan+0xac>
20100bfa:	6971      	ldr	r1, [r6, #20]
20100bfc:	1178      	asrs	r0, r7, #5
20100bfe:	1afb      	subs	r3, r7, r3
20100c00:	1900      	adds	r0, r0, r4
20100c02:	1a6d      	subs	r5, r5, r1
20100c04:	e7ae      	b.n	20100b64 <cord_atan+0xc4>
20100c06:	1b1f      	subs	r7, r3, r4
20100c08:	119b      	asrs	r3, r3, #6
20100c0a:	1818      	adds	r0, r3, r0
20100c0c:	69b3      	ldr	r3, [r6, #24]
20100c0e:	1aed      	subs	r5, r5, r3
20100c10:	e7b3      	b.n	20100b7a <cord_atan+0xda>
20100c12:	69f3      	ldr	r3, [r6, #28]
20100c14:	11c4      	asrs	r4, r0, #7
20100c16:	1b3f      	subs	r7, r7, r4
20100c18:	1aed      	subs	r5, r5, r3
20100c1a:	e7b5      	b.n	20100b88 <cord_atan+0xe8>
20100c1c:	2300      	movs	r3, #0
20100c1e:	e7b4      	b.n	20100b8a <cord_atan+0xea>
20100c20:	0027      	movs	r7, r4
20100c22:	2301      	movs	r3, #1
20100c24:	e7b1      	b.n	20100b8a <cord_atan+0xea>
20100c26:	2302      	movs	r3, #2
20100c28:	e7af      	b.n	20100b8a <cord_atan+0xea>
20100c2a:	001f      	movs	r7, r3
20100c2c:	2303      	movs	r3, #3
20100c2e:	e7ac      	b.n	20100b8a <cord_atan+0xea>
20100c30:	2304      	movs	r3, #4
20100c32:	e7aa      	b.n	20100b8a <cord_atan+0xea>
20100c34:	001f      	movs	r7, r3
20100c36:	2305      	movs	r3, #5
20100c38:	e7a7      	b.n	20100b8a <cord_atan+0xea>
20100c3a:	2306      	movs	r3, #6
20100c3c:	e7a5      	b.n	20100b8a <cord_atan+0xea>
20100c3e:	46c0      	nop			; (mov r8, r8)
20100c40:	00001796 	.word	0x00001796

20100c44 <sinpwm>:
20100c44:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c46:	465f      	mov	r7, fp
20100c48:	4656      	mov	r6, sl
20100c4a:	464d      	mov	r5, r9
20100c4c:	4644      	mov	r4, r8
20100c4e:	b4f0      	push	{r4, r5, r6, r7}
20100c50:	b089      	sub	sp, #36	; 0x24
20100c52:	466c      	mov	r4, sp
20100c54:	4b75      	ldr	r3, [pc, #468]	; (20100e2c <sinpwm+0x1e8>)
20100c56:	46eb      	mov	fp, sp
20100c58:	447b      	add	r3, pc
20100c5a:	469a      	mov	sl, r3
20100c5c:	4b74      	ldr	r3, [pc, #464]	; (20100e30 <sinpwm+0x1ec>)
20100c5e:	447b      	add	r3, pc
20100c60:	3320      	adds	r3, #32
20100c62:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c64:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c66:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c68:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c6a:	cb60      	ldmia	r3!, {r5, r6}
20100c6c:	c460      	stmia	r4!, {r5, r6}
20100c6e:	680b      	ldr	r3, [r1, #0]
20100c70:	684f      	ldr	r7, [r1, #4]
20100c72:	17dd      	asrs	r5, r3, #31
20100c74:	195c      	adds	r4, r3, r5
20100c76:	469c      	mov	ip, r3
20100c78:	406c      	eors	r4, r5
20100c7a:	2f00      	cmp	r7, #0
20100c7c:	dc00      	bgt.n	20100c80 <sinpwm+0x3c>
20100c7e:	e09c      	b.n	20100dba <sinpwm+0x176>
20100c80:	19e3      	adds	r3, r4, r7
20100c82:	1b3c      	subs	r4, r7, r4
20100c84:	46a0      	mov	r8, r4
20100c86:	4644      	mov	r4, r8
20100c88:	2c00      	cmp	r4, #0
20100c8a:	d100      	bne.n	20100c8e <sinpwm+0x4a>
20100c8c:	e0bc      	b.n	20100e08 <sinpwm+0x1c4>
20100c8e:	dc00      	bgt.n	20100c92 <sinpwm+0x4e>
20100c90:	e097      	b.n	20100dc2 <sinpwm+0x17e>
20100c92:	4644      	mov	r4, r8
20100c94:	4645      	mov	r5, r8
20100c96:	1064      	asrs	r4, r4, #1
20100c98:	18e4      	adds	r4, r4, r3
20100c9a:	105b      	asrs	r3, r3, #1
20100c9c:	1aeb      	subs	r3, r5, r3
20100c9e:	4698      	mov	r8, r3
20100ca0:	4643      	mov	r3, r8
20100ca2:	2b00      	cmp	r3, #0
20100ca4:	d100      	bne.n	20100ca8 <sinpwm+0x64>
20100ca6:	e0b1      	b.n	20100e0c <sinpwm+0x1c8>
20100ca8:	dc00      	bgt.n	20100cac <sinpwm+0x68>
20100caa:	e08f      	b.n	20100dcc <sinpwm+0x188>
20100cac:	4643      	mov	r3, r8
20100cae:	4645      	mov	r5, r8
20100cb0:	109b      	asrs	r3, r3, #2
20100cb2:	191b      	adds	r3, r3, r4
20100cb4:	10a4      	asrs	r4, r4, #2
20100cb6:	1b2c      	subs	r4, r5, r4
20100cb8:	46a0      	mov	r8, r4
20100cba:	4644      	mov	r4, r8
20100cbc:	2c00      	cmp	r4, #0
20100cbe:	d100      	bne.n	20100cc2 <sinpwm+0x7e>
20100cc0:	e0a7      	b.n	20100e12 <sinpwm+0x1ce>
20100cc2:	dc00      	bgt.n	20100cc6 <sinpwm+0x82>
20100cc4:	e087      	b.n	20100dd6 <sinpwm+0x192>
20100cc6:	4644      	mov	r4, r8
20100cc8:	4645      	mov	r5, r8
20100cca:	10e4      	asrs	r4, r4, #3
20100ccc:	18e4      	adds	r4, r4, r3
20100cce:	10db      	asrs	r3, r3, #3
20100cd0:	1aeb      	subs	r3, r5, r3
20100cd2:	4698      	mov	r8, r3
20100cd4:	4643      	mov	r3, r8
20100cd6:	2b00      	cmp	r3, #0
20100cd8:	d100      	bne.n	20100cdc <sinpwm+0x98>
20100cda:	e09c      	b.n	20100e16 <sinpwm+0x1d2>
20100cdc:	dc00      	bgt.n	20100ce0 <sinpwm+0x9c>
20100cde:	e07f      	b.n	20100de0 <sinpwm+0x19c>
20100ce0:	4643      	mov	r3, r8
20100ce2:	4645      	mov	r5, r8
20100ce4:	111b      	asrs	r3, r3, #4
20100ce6:	191b      	adds	r3, r3, r4
20100ce8:	1124      	asrs	r4, r4, #4
20100cea:	1b2c      	subs	r4, r5, r4
20100cec:	2c00      	cmp	r4, #0
20100cee:	d100      	bne.n	20100cf2 <sinpwm+0xae>
20100cf0:	e094      	b.n	20100e1c <sinpwm+0x1d8>
20100cf2:	1165      	asrs	r5, r4, #5
20100cf4:	46a8      	mov	r8, r5
20100cf6:	2c00      	cmp	r4, #0
20100cf8:	dc00      	bgt.n	20100cfc <sinpwm+0xb8>
20100cfa:	e076      	b.n	20100dea <sinpwm+0x1a6>
20100cfc:	4498      	add	r8, r3
20100cfe:	46c1      	mov	r9, r8
20100d00:	115b      	asrs	r3, r3, #5
20100d02:	1ae4      	subs	r4, r4, r3
20100d04:	2c00      	cmp	r4, #0
20100d06:	d100      	bne.n	20100d0a <sinpwm+0xc6>
20100d08:	e08a      	b.n	20100e20 <sinpwm+0x1dc>
20100d0a:	11a3      	asrs	r3, r4, #6
20100d0c:	2c00      	cmp	r4, #0
20100d0e:	dc00      	bgt.n	20100d12 <sinpwm+0xce>
20100d10:	e070      	b.n	20100df4 <sinpwm+0x1b0>
20100d12:	444b      	add	r3, r9
20100d14:	4698      	mov	r8, r3
20100d16:	464b      	mov	r3, r9
20100d18:	119b      	asrs	r3, r3, #6
20100d1a:	1ae4      	subs	r4, r4, r3
20100d1c:	2c00      	cmp	r4, #0
20100d1e:	d100      	bne.n	20100d22 <sinpwm+0xde>
20100d20:	e081      	b.n	20100e26 <sinpwm+0x1e2>
20100d22:	dd6d      	ble.n	20100e00 <sinpwm+0x1bc>
20100d24:	11e4      	asrs	r4, r4, #7
20100d26:	0023      	movs	r3, r4
20100d28:	4443      	add	r3, r8
20100d2a:	2407      	movs	r4, #7
20100d2c:	465d      	mov	r5, fp
20100d2e:	00a4      	lsls	r4, r4, #2
20100d30:	592c      	ldr	r4, [r5, r4]
20100d32:	4655      	mov	r5, sl
20100d34:	4666      	mov	r6, ip
20100d36:	4363      	muls	r3, r4
20100d38:	4c3e      	ldr	r4, [pc, #248]	; (20100e34 <sinpwm+0x1f0>)
20100d3a:	151b      	asrs	r3, r3, #20
20100d3c:	592d      	ldr	r5, [r5, r4]
20100d3e:	0094      	lsls	r4, r2, #2
20100d40:	5964      	ldr	r4, [r4, r5]
20100d42:	4374      	muls	r4, r6
20100d44:	26c0      	movs	r6, #192	; 0xc0
20100d46:	00b6      	lsls	r6, r6, #2
20100d48:	1996      	adds	r6, r2, r6
20100d4a:	05b6      	lsls	r6, r6, #22
20100d4c:	0d36      	lsrs	r6, r6, #20
20100d4e:	5976      	ldr	r6, [r6, r5]
20100d50:	4377      	muls	r7, r6
20100d52:	1be7      	subs	r7, r4, r7
20100d54:	4c38      	ldr	r4, [pc, #224]	; (20100e38 <sinpwm+0x1f4>)
20100d56:	153f      	asrs	r7, r7, #20
20100d58:	1914      	adds	r4, r2, r4
20100d5a:	05a4      	lsls	r4, r4, #22
20100d5c:	6007      	str	r7, [r0, #0]
20100d5e:	0d24      	lsrs	r4, r4, #20
20100d60:	5964      	ldr	r4, [r4, r5]
20100d62:	680e      	ldr	r6, [r1, #0]
20100d64:	684f      	ldr	r7, [r1, #4]
20100d66:	4366      	muls	r6, r4
20100d68:	4c34      	ldr	r4, [pc, #208]	; (20100e3c <sinpwm+0x1f8>)
20100d6a:	1914      	adds	r4, r2, r4
20100d6c:	05a4      	lsls	r4, r4, #22
20100d6e:	0d24      	lsrs	r4, r4, #20
20100d70:	5964      	ldr	r4, [r4, r5]
20100d72:	437c      	muls	r4, r7
20100d74:	1b34      	subs	r4, r6, r4
20100d76:	1524      	asrs	r4, r4, #20
20100d78:	6044      	str	r4, [r0, #4]
20100d7a:	0014      	movs	r4, r2
20100d7c:	3456      	adds	r4, #86	; 0x56
20100d7e:	34ff      	adds	r4, #255	; 0xff
20100d80:	05a4      	lsls	r4, r4, #22
20100d82:	0d24      	lsrs	r4, r4, #20
20100d84:	680e      	ldr	r6, [r1, #0]
20100d86:	5964      	ldr	r4, [r4, r5]
20100d88:	4374      	muls	r4, r6
20100d8a:	4e2d      	ldr	r6, [pc, #180]	; (20100e40 <sinpwm+0x1fc>)
20100d8c:	46b4      	mov	ip, r6
20100d8e:	4462      	add	r2, ip
20100d90:	0592      	lsls	r2, r2, #22
20100d92:	0d12      	lsrs	r2, r2, #20
20100d94:	5955      	ldr	r5, [r2, r5]
20100d96:	684a      	ldr	r2, [r1, #4]
20100d98:	436a      	muls	r2, r5
20100d9a:	1aa2      	subs	r2, r4, r2
20100d9c:	1512      	asrs	r2, r2, #20
20100d9e:	6082      	str	r2, [r0, #8]
20100da0:	22fa      	movs	r2, #250	; 0xfa
20100da2:	2001      	movs	r0, #1
20100da4:	0052      	lsls	r2, r2, #1
20100da6:	4293      	cmp	r3, r2
20100da8:	dc00      	bgt.n	20100dac <sinpwm+0x168>
20100daa:	2000      	movs	r0, #0
20100dac:	b009      	add	sp, #36	; 0x24
20100dae:	bc3c      	pop	{r2, r3, r4, r5}
20100db0:	4690      	mov	r8, r2
20100db2:	4699      	mov	r9, r3
20100db4:	46a2      	mov	sl, r4
20100db6:	46ab      	mov	fp, r5
20100db8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100dba:	46a0      	mov	r8, r4
20100dbc:	1be3      	subs	r3, r4, r7
20100dbe:	44b8      	add	r8, r7
20100dc0:	e761      	b.n	20100c86 <sinpwm+0x42>
20100dc2:	1064      	asrs	r4, r4, #1
20100dc4:	1b1c      	subs	r4, r3, r4
20100dc6:	105b      	asrs	r3, r3, #1
20100dc8:	4498      	add	r8, r3
20100dca:	e769      	b.n	20100ca0 <sinpwm+0x5c>
20100dcc:	109b      	asrs	r3, r3, #2
20100dce:	1ae3      	subs	r3, r4, r3
20100dd0:	10a4      	asrs	r4, r4, #2
20100dd2:	44a0      	add	r8, r4
20100dd4:	e771      	b.n	20100cba <sinpwm+0x76>
20100dd6:	10e4      	asrs	r4, r4, #3
20100dd8:	1b1c      	subs	r4, r3, r4
20100dda:	10db      	asrs	r3, r3, #3
20100ddc:	4498      	add	r8, r3
20100dde:	e779      	b.n	20100cd4 <sinpwm+0x90>
20100de0:	111b      	asrs	r3, r3, #4
20100de2:	1ae3      	subs	r3, r4, r3
20100de4:	1124      	asrs	r4, r4, #4
20100de6:	4444      	add	r4, r8
20100de8:	e780      	b.n	20100cec <sinpwm+0xa8>
20100dea:	1b5d      	subs	r5, r3, r5
20100dec:	115b      	asrs	r3, r3, #5
20100dee:	46a9      	mov	r9, r5
20100df0:	191c      	adds	r4, r3, r4
20100df2:	e787      	b.n	20100d04 <sinpwm+0xc0>
20100df4:	464d      	mov	r5, r9
20100df6:	1aeb      	subs	r3, r5, r3
20100df8:	4698      	mov	r8, r3
20100dfa:	11ab      	asrs	r3, r5, #6
20100dfc:	191c      	adds	r4, r3, r4
20100dfe:	e78d      	b.n	20100d1c <sinpwm+0xd8>
20100e00:	4643      	mov	r3, r8
20100e02:	11e4      	asrs	r4, r4, #7
20100e04:	1b1b      	subs	r3, r3, r4
20100e06:	e790      	b.n	20100d2a <sinpwm+0xe6>
20100e08:	2400      	movs	r4, #0
20100e0a:	e78f      	b.n	20100d2c <sinpwm+0xe8>
20100e0c:	0023      	movs	r3, r4
20100e0e:	2401      	movs	r4, #1
20100e10:	e78c      	b.n	20100d2c <sinpwm+0xe8>
20100e12:	2402      	movs	r4, #2
20100e14:	e78a      	b.n	20100d2c <sinpwm+0xe8>
20100e16:	0023      	movs	r3, r4
20100e18:	2403      	movs	r4, #3
20100e1a:	e787      	b.n	20100d2c <sinpwm+0xe8>
20100e1c:	2404      	movs	r4, #4
20100e1e:	e785      	b.n	20100d2c <sinpwm+0xe8>
20100e20:	464b      	mov	r3, r9
20100e22:	2405      	movs	r4, #5
20100e24:	e782      	b.n	20100d2c <sinpwm+0xe8>
20100e26:	4643      	mov	r3, r8
20100e28:	2406      	movs	r4, #6
20100e2a:	e77f      	b.n	20100d2c <sinpwm+0xe8>
20100e2c:	ffeff3a8 	.word	0xffeff3a8
20100e30:	000015e6 	.word	0x000015e6
20100e34:	00000000 	.word	0x00000000
20100e38:	000002aa 	.word	0x000002aa
20100e3c:	000005aa 	.word	0x000005aa
20100e40:	00000455 	.word	0x00000455

20100e44 <svpwm>:
20100e44:	b5f0      	push	{r4, r5, r6, r7, lr}
20100e46:	465f      	mov	r7, fp
20100e48:	4656      	mov	r6, sl
20100e4a:	4644      	mov	r4, r8
20100e4c:	464d      	mov	r5, r9
20100e4e:	b4f0      	push	{r4, r5, r6, r7}
20100e50:	0005      	movs	r5, r0
20100e52:	48d0      	ldr	r0, [pc, #832]	; (20101194 <svpwm+0x350>)
20100e54:	b091      	sub	sp, #68	; 0x44
20100e56:	4478      	add	r0, pc
20100e58:	0006      	movs	r6, r0
20100e5a:	466c      	mov	r4, sp
20100e5c:	4bce      	ldr	r3, [pc, #824]	; (20101198 <svpwm+0x354>)
20100e5e:	4693      	mov	fp, r2
20100e60:	447b      	add	r3, pc
20100e62:	469a      	mov	sl, r3
20100e64:	468c      	mov	ip, r1
20100e66:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100e68:	c40e      	stmia	r4!, {r1, r2, r3}
20100e6a:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100e6c:	c40e      	stmia	r4!, {r1, r2, r3}
20100e6e:	ce0c      	ldmia	r6!, {r2, r3}
20100e70:	c40c      	stmia	r4!, {r2, r3}
20100e72:	ae08      	add	r6, sp, #32
20100e74:	0034      	movs	r4, r6
20100e76:	3020      	adds	r0, #32
20100e78:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e7a:	c40e      	stmia	r4!, {r1, r2, r3}
20100e7c:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e7e:	c40e      	stmia	r4!, {r1, r2, r3}
20100e80:	c80c      	ldmia	r0!, {r2, r3}
20100e82:	c40c      	stmia	r4!, {r2, r3}
20100e84:	4663      	mov	r3, ip
20100e86:	681c      	ldr	r4, [r3, #0]
20100e88:	466f      	mov	r7, sp
20100e8a:	17e2      	asrs	r2, r4, #31
20100e8c:	18a3      	adds	r3, r4, r2
20100e8e:	4053      	eors	r3, r2
20100e90:	4698      	mov	r8, r3
20100e92:	4663      	mov	r3, ip
20100e94:	685b      	ldr	r3, [r3, #4]
20100e96:	2b00      	cmp	r3, #0
20100e98:	dc00      	bgt.n	20100e9c <svpwm+0x58>
20100e9a:	e0b5      	b.n	20101008 <svpwm+0x1c4>
20100e9c:	4641      	mov	r1, r8
20100e9e:	18c8      	adds	r0, r1, r3
20100ea0:	1a5b      	subs	r3, r3, r1
20100ea2:	4698      	mov	r8, r3
20100ea4:	9b00      	ldr	r3, [sp, #0]
20100ea6:	4641      	mov	r1, r8
20100ea8:	2900      	cmp	r1, #0
20100eaa:	d100      	bne.n	20100eae <svpwm+0x6a>
20100eac:	e15f      	b.n	2010116e <svpwm+0x32a>
20100eae:	dc00      	bgt.n	20100eb2 <svpwm+0x6e>
20100eb0:	e0b0      	b.n	20101014 <svpwm+0x1d0>
20100eb2:	4641      	mov	r1, r8
20100eb4:	1049      	asrs	r1, r1, #1
20100eb6:	4689      	mov	r9, r1
20100eb8:	1041      	asrs	r1, r0, #1
20100eba:	4481      	add	r9, r0
20100ebc:	4640      	mov	r0, r8
20100ebe:	1a41      	subs	r1, r0, r1
20100ec0:	4688      	mov	r8, r1
20100ec2:	6879      	ldr	r1, [r7, #4]
20100ec4:	468c      	mov	ip, r1
20100ec6:	4463      	add	r3, ip
20100ec8:	4641      	mov	r1, r8
20100eca:	2900      	cmp	r1, #0
20100ecc:	d100      	bne.n	20100ed0 <svpwm+0x8c>
20100ece:	e150      	b.n	20101172 <svpwm+0x32e>
20100ed0:	dc00      	bgt.n	20100ed4 <svpwm+0x90>
20100ed2:	e0a7      	b.n	20101024 <svpwm+0x1e0>
20100ed4:	4641      	mov	r1, r8
20100ed6:	1089      	asrs	r1, r1, #2
20100ed8:	4449      	add	r1, r9
20100eda:	0008      	movs	r0, r1
20100edc:	4649      	mov	r1, r9
20100ede:	4642      	mov	r2, r8
20100ee0:	1089      	asrs	r1, r1, #2
20100ee2:	1a51      	subs	r1, r2, r1
20100ee4:	68ba      	ldr	r2, [r7, #8]
20100ee6:	4688      	mov	r8, r1
20100ee8:	4694      	mov	ip, r2
20100eea:	4463      	add	r3, ip
20100eec:	4641      	mov	r1, r8
20100eee:	2900      	cmp	r1, #0
20100ef0:	d100      	bne.n	20100ef4 <svpwm+0xb0>
20100ef2:	e141      	b.n	20101178 <svpwm+0x334>
20100ef4:	4642      	mov	r2, r8
20100ef6:	dc00      	bgt.n	20100efa <svpwm+0xb6>
20100ef8:	e09c      	b.n	20101034 <svpwm+0x1f0>
20100efa:	10c9      	asrs	r1, r1, #3
20100efc:	1809      	adds	r1, r1, r0
20100efe:	10c0      	asrs	r0, r0, #3
20100f00:	1a12      	subs	r2, r2, r0
20100f02:	4690      	mov	r8, r2
20100f04:	68fa      	ldr	r2, [r7, #12]
20100f06:	4694      	mov	ip, r2
20100f08:	4463      	add	r3, ip
20100f0a:	4640      	mov	r0, r8
20100f0c:	2800      	cmp	r0, #0
20100f0e:	d100      	bne.n	20100f12 <svpwm+0xce>
20100f10:	e134      	b.n	2010117c <svpwm+0x338>
20100f12:	4642      	mov	r2, r8
20100f14:	dc00      	bgt.n	20100f18 <svpwm+0xd4>
20100f16:	e094      	b.n	20101042 <svpwm+0x1fe>
20100f18:	1100      	asrs	r0, r0, #4
20100f1a:	1840      	adds	r0, r0, r1
20100f1c:	1109      	asrs	r1, r1, #4
20100f1e:	1a52      	subs	r2, r2, r1
20100f20:	4690      	mov	r8, r2
20100f22:	693a      	ldr	r2, [r7, #16]
20100f24:	4694      	mov	ip, r2
20100f26:	4463      	add	r3, ip
20100f28:	4641      	mov	r1, r8
20100f2a:	2900      	cmp	r1, #0
20100f2c:	d100      	bne.n	20100f30 <svpwm+0xec>
20100f2e:	e128      	b.n	20101182 <svpwm+0x33e>
20100f30:	4642      	mov	r2, r8
20100f32:	dc00      	bgt.n	20100f36 <svpwm+0xf2>
20100f34:	e08c      	b.n	20101050 <svpwm+0x20c>
20100f36:	1149      	asrs	r1, r1, #5
20100f38:	4689      	mov	r9, r1
20100f3a:	1141      	asrs	r1, r0, #5
20100f3c:	1a51      	subs	r1, r2, r1
20100f3e:	697a      	ldr	r2, [r7, #20]
20100f40:	4481      	add	r9, r0
20100f42:	4694      	mov	ip, r2
20100f44:	4463      	add	r3, ip
20100f46:	2900      	cmp	r1, #0
20100f48:	d100      	bne.n	20100f4c <svpwm+0x108>
20100f4a:	e11c      	b.n	20101186 <svpwm+0x342>
20100f4c:	1188      	asrs	r0, r1, #6
20100f4e:	2900      	cmp	r1, #0
20100f50:	dc00      	bgt.n	20100f54 <svpwm+0x110>
20100f52:	e086      	b.n	20101062 <svpwm+0x21e>
20100f54:	464a      	mov	r2, r9
20100f56:	4448      	add	r0, r9
20100f58:	4680      	mov	r8, r0
20100f5a:	1190      	asrs	r0, r2, #6
20100f5c:	69ba      	ldr	r2, [r7, #24]
20100f5e:	1a09      	subs	r1, r1, r0
20100f60:	4694      	mov	ip, r2
20100f62:	4463      	add	r3, ip
20100f64:	2900      	cmp	r1, #0
20100f66:	d100      	bne.n	20100f6a <svpwm+0x126>
20100f68:	e110      	b.n	2010118c <svpwm+0x348>
20100f6a:	dc00      	bgt.n	20100f6e <svpwm+0x12a>
20100f6c:	e0e2      	b.n	20101134 <svpwm+0x2f0>
20100f6e:	11c9      	asrs	r1, r1, #7
20100f70:	4441      	add	r1, r8
20100f72:	0008      	movs	r0, r1
20100f74:	69f9      	ldr	r1, [r7, #28]
20100f76:	185b      	adds	r3, r3, r1
20100f78:	2107      	movs	r1, #7
20100f7a:	2c00      	cmp	r4, #0
20100f7c:	db40      	blt.n	20101000 <svpwm+0x1bc>
20100f7e:	2b00      	cmp	r3, #0
20100f80:	da03      	bge.n	20100f8a <svpwm+0x146>
20100f82:	2280      	movs	r2, #128	; 0x80
20100f84:	00d2      	lsls	r2, r2, #3
20100f86:	4694      	mov	ip, r2
20100f88:	4463      	add	r3, ip
20100f8a:	22fa      	movs	r2, #250	; 0xfa
20100f8c:	0089      	lsls	r1, r1, #2
20100f8e:	5871      	ldr	r1, [r6, r1]
20100f90:	445b      	add	r3, fp
20100f92:	4341      	muls	r1, r0
20100f94:	059b      	lsls	r3, r3, #22
20100f96:	1509      	asrs	r1, r1, #20
20100f98:	0d9b      	lsrs	r3, r3, #22
20100f9a:	0052      	lsls	r2, r2, #1
20100f9c:	2400      	movs	r4, #0
20100f9e:	4291      	cmp	r1, r2
20100fa0:	dd01      	ble.n	20100fa6 <svpwm+0x162>
20100fa2:	0011      	movs	r1, r2
20100fa4:	3401      	adds	r4, #1
20100fa6:	0058      	lsls	r0, r3, #1
20100fa8:	18c0      	adds	r0, r0, r3
20100faa:	1240      	asrs	r0, r0, #9
20100fac:	3801      	subs	r0, #1
20100fae:	4a7b      	ldr	r2, [pc, #492]	; (2010119c <svpwm+0x358>)
20100fb0:	2804      	cmp	r0, #4
20100fb2:	d920      	bls.n	20100ff6 <svpwm+0x1b2>
20100fb4:	26c0      	movs	r6, #192	; 0xc0
20100fb6:	4650      	mov	r0, sl
20100fb8:	00b6      	lsls	r6, r6, #2
20100fba:	46b4      	mov	ip, r6
20100fbc:	5880      	ldr	r0, [r0, r2]
20100fbe:	4a78      	ldr	r2, [pc, #480]	; (201011a0 <svpwm+0x35c>)
20100fc0:	1ad2      	subs	r2, r2, r3
20100fc2:	4463      	add	r3, ip
20100fc4:	0592      	lsls	r2, r2, #22
20100fc6:	059b      	lsls	r3, r3, #22
20100fc8:	0d12      	lsrs	r2, r2, #20
20100fca:	0d1b      	lsrs	r3, r3, #20
20100fcc:	581b      	ldr	r3, [r3, r0]
20100fce:	5812      	ldr	r2, [r2, r0]
20100fd0:	434a      	muls	r2, r1
20100fd2:	4359      	muls	r1, r3
20100fd4:	1292      	asrs	r2, r2, #10
20100fd6:	1289      	asrs	r1, r1, #10
20100fd8:	1853      	adds	r3, r2, r1
20100fda:	602b      	str	r3, [r5, #0]
20100fdc:	1a8b      	subs	r3, r1, r2
20100fde:	4252      	negs	r2, r2
20100fe0:	1a52      	subs	r2, r2, r1
20100fe2:	606b      	str	r3, [r5, #4]
20100fe4:	60aa      	str	r2, [r5, #8]
20100fe6:	0020      	movs	r0, r4
20100fe8:	b011      	add	sp, #68	; 0x44
20100fea:	bc3c      	pop	{r2, r3, r4, r5}
20100fec:	4690      	mov	r8, r2
20100fee:	4699      	mov	r9, r3
20100ff0:	46a2      	mov	sl, r4
20100ff2:	46ab      	mov	fp, r5
20100ff4:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100ff6:	f000 f91d 	bl	20101234 <__gnu_thumb1_case_uqi>
20100ffa:	856c      	.short	0x856c
20100ffc:	553d      	.short	0x553d
20100ffe:	a3          	.byte	0xa3
20100fff:	00          	.byte	0x00
20101000:	2480      	movs	r4, #128	; 0x80
20101002:	00a4      	lsls	r4, r4, #2
20101004:	1ae3      	subs	r3, r4, r3
20101006:	e7ba      	b.n	20100f7e <svpwm+0x13a>
20101008:	4642      	mov	r2, r8
2010100a:	4498      	add	r8, r3
2010100c:	1ad0      	subs	r0, r2, r3
2010100e:	9b00      	ldr	r3, [sp, #0]
20101010:	425b      	negs	r3, r3
20101012:	e748      	b.n	20100ea6 <svpwm+0x62>
20101014:	1049      	asrs	r1, r1, #1
20101016:	1a42      	subs	r2, r0, r1
20101018:	4691      	mov	r9, r2
2010101a:	687a      	ldr	r2, [r7, #4]
2010101c:	1041      	asrs	r1, r0, #1
2010101e:	4488      	add	r8, r1
20101020:	1a9b      	subs	r3, r3, r2
20101022:	e751      	b.n	20100ec8 <svpwm+0x84>
20101024:	464a      	mov	r2, r9
20101026:	1089      	asrs	r1, r1, #2
20101028:	1a50      	subs	r0, r2, r1
2010102a:	1091      	asrs	r1, r2, #2
2010102c:	68ba      	ldr	r2, [r7, #8]
2010102e:	4488      	add	r8, r1
20101030:	1a9b      	subs	r3, r3, r2
20101032:	e75b      	b.n	20100eec <svpwm+0xa8>
20101034:	10c9      	asrs	r1, r1, #3
20101036:	68fa      	ldr	r2, [r7, #12]
20101038:	1a41      	subs	r1, r0, r1
2010103a:	10c0      	asrs	r0, r0, #3
2010103c:	4480      	add	r8, r0
2010103e:	1a9b      	subs	r3, r3, r2
20101040:	e763      	b.n	20100f0a <svpwm+0xc6>
20101042:	1100      	asrs	r0, r0, #4
20101044:	693a      	ldr	r2, [r7, #16]
20101046:	1a08      	subs	r0, r1, r0
20101048:	1109      	asrs	r1, r1, #4
2010104a:	4488      	add	r8, r1
2010104c:	1a9b      	subs	r3, r3, r2
2010104e:	e76b      	b.n	20100f28 <svpwm+0xe4>
20101050:	1149      	asrs	r1, r1, #5
20101052:	1a42      	subs	r2, r0, r1
20101054:	1140      	asrs	r0, r0, #5
20101056:	0001      	movs	r1, r0
20101058:	4691      	mov	r9, r2
2010105a:	697a      	ldr	r2, [r7, #20]
2010105c:	4441      	add	r1, r8
2010105e:	1a9b      	subs	r3, r3, r2
20101060:	e771      	b.n	20100f46 <svpwm+0x102>
20101062:	464a      	mov	r2, r9
20101064:	1a12      	subs	r2, r2, r0
20101066:	4690      	mov	r8, r2
20101068:	464a      	mov	r2, r9
2010106a:	1190      	asrs	r0, r2, #6
2010106c:	69ba      	ldr	r2, [r7, #24]
2010106e:	1841      	adds	r1, r0, r1
20101070:	1a9b      	subs	r3, r3, r2
20101072:	e777      	b.n	20100f64 <svpwm+0x120>
20101074:	4650      	mov	r0, sl
20101076:	5880      	ldr	r0, [r0, r2]
20101078:	4a4a      	ldr	r2, [pc, #296]	; (201011a4 <svpwm+0x360>)
2010107a:	1ad2      	subs	r2, r2, r3
2010107c:	3301      	adds	r3, #1
2010107e:	0592      	lsls	r2, r2, #22
20101080:	33ff      	adds	r3, #255	; 0xff
20101082:	0d12      	lsrs	r2, r2, #20
20101084:	059b      	lsls	r3, r3, #22
20101086:	5812      	ldr	r2, [r2, r0]
20101088:	0d1b      	lsrs	r3, r3, #20
2010108a:	581b      	ldr	r3, [r3, r0]
2010108c:	434a      	muls	r2, r1
2010108e:	434b      	muls	r3, r1
20101090:	1292      	asrs	r2, r2, #10
20101092:	1299      	asrs	r1, r3, #10
20101094:	4253      	negs	r3, r2
20101096:	1a5b      	subs	r3, r3, r1
20101098:	602b      	str	r3, [r5, #0]
2010109a:	1a53      	subs	r3, r2, r1
2010109c:	1851      	adds	r1, r2, r1
2010109e:	606b      	str	r3, [r5, #4]
201010a0:	60a9      	str	r1, [r5, #8]
201010a2:	e7a0      	b.n	20100fe6 <svpwm+0x1a2>
201010a4:	4650      	mov	r0, sl
201010a6:	5880      	ldr	r0, [r0, r2]
201010a8:	4a3f      	ldr	r2, [pc, #252]	; (201011a8 <svpwm+0x364>)
201010aa:	1ad2      	subs	r2, r2, r3
201010ac:	3356      	adds	r3, #86	; 0x56
201010ae:	0592      	lsls	r2, r2, #22
201010b0:	059b      	lsls	r3, r3, #22
201010b2:	0d12      	lsrs	r2, r2, #20
201010b4:	0d1b      	lsrs	r3, r3, #20
201010b6:	5816      	ldr	r6, [r2, r0]
201010b8:	581b      	ldr	r3, [r3, r0]
201010ba:	434e      	muls	r6, r1
201010bc:	434b      	muls	r3, r1
201010be:	12b6      	asrs	r6, r6, #10
201010c0:	1299      	asrs	r1, r3, #10
201010c2:	1b8b      	subs	r3, r1, r6
201010c4:	602b      	str	r3, [r5, #0]
201010c6:	4273      	negs	r3, r6
201010c8:	1a5b      	subs	r3, r3, r1
201010ca:	1871      	adds	r1, r6, r1
201010cc:	606b      	str	r3, [r5, #4]
201010ce:	60a9      	str	r1, [r5, #8]
201010d0:	e789      	b.n	20100fe6 <svpwm+0x1a2>
201010d2:	4650      	mov	r0, sl
201010d4:	5886      	ldr	r6, [r0, r2]
201010d6:	4a35      	ldr	r2, [pc, #212]	; (201011ac <svpwm+0x368>)
201010d8:	1ad2      	subs	r2, r2, r3
201010da:	0592      	lsls	r2, r2, #22
201010dc:	0d12      	lsrs	r2, r2, #20
201010de:	5990      	ldr	r0, [r2, r6]
201010e0:	4a33      	ldr	r2, [pc, #204]	; (201011b0 <svpwm+0x36c>)
201010e2:	4348      	muls	r0, r1
201010e4:	4694      	mov	ip, r2
201010e6:	4463      	add	r3, ip
201010e8:	059b      	lsls	r3, r3, #22
201010ea:	0d1b      	lsrs	r3, r3, #20
201010ec:	599b      	ldr	r3, [r3, r6]
201010ee:	1280      	asrs	r0, r0, #10
201010f0:	4359      	muls	r1, r3
201010f2:	1289      	asrs	r1, r1, #10
201010f4:	1a43      	subs	r3, r0, r1
201010f6:	602b      	str	r3, [r5, #0]
201010f8:	1843      	adds	r3, r0, r1
201010fa:	4240      	negs	r0, r0
201010fc:	1a40      	subs	r0, r0, r1
201010fe:	606b      	str	r3, [r5, #4]
20101100:	60a8      	str	r0, [r5, #8]
20101102:	e770      	b.n	20100fe6 <svpwm+0x1a2>
20101104:	4650      	mov	r0, sl
20101106:	5880      	ldr	r0, [r0, r2]
20101108:	4a2a      	ldr	r2, [pc, #168]	; (201011b4 <svpwm+0x370>)
2010110a:	1ad2      	subs	r2, r2, r3
2010110c:	33ac      	adds	r3, #172	; 0xac
2010110e:	0592      	lsls	r2, r2, #22
20101110:	33ff      	adds	r3, #255	; 0xff
20101112:	0d12      	lsrs	r2, r2, #20
20101114:	059b      	lsls	r3, r3, #22
20101116:	5816      	ldr	r6, [r2, r0]
20101118:	0d1b      	lsrs	r3, r3, #20
2010111a:	581b      	ldr	r3, [r3, r0]
2010111c:	434e      	muls	r6, r1
2010111e:	4359      	muls	r1, r3
20101120:	12b6      	asrs	r6, r6, #10
20101122:	1289      	asrs	r1, r1, #10
20101124:	4273      	negs	r3, r6
20101126:	1a5b      	subs	r3, r3, r1
20101128:	602b      	str	r3, [r5, #0]
2010112a:	1873      	adds	r3, r6, r1
2010112c:	1b89      	subs	r1, r1, r6
2010112e:	606b      	str	r3, [r5, #4]
20101130:	60a9      	str	r1, [r5, #8]
20101132:	e758      	b.n	20100fe6 <svpwm+0x1a2>
20101134:	4642      	mov	r2, r8
20101136:	11c9      	asrs	r1, r1, #7
20101138:	1a50      	subs	r0, r2, r1
2010113a:	69f9      	ldr	r1, [r7, #28]
2010113c:	1a5b      	subs	r3, r3, r1
2010113e:	e71b      	b.n	20100f78 <svpwm+0x134>
20101140:	4650      	mov	r0, sl
20101142:	5882      	ldr	r2, [r0, r2]
20101144:	481c      	ldr	r0, [pc, #112]	; (201011b8 <svpwm+0x374>)
20101146:	1ac0      	subs	r0, r0, r3
20101148:	3b55      	subs	r3, #85	; 0x55
2010114a:	0580      	lsls	r0, r0, #22
2010114c:	059b      	lsls	r3, r3, #22
2010114e:	0d00      	lsrs	r0, r0, #20
20101150:	0d1b      	lsrs	r3, r3, #20
20101152:	589b      	ldr	r3, [r3, r2]
20101154:	5880      	ldr	r0, [r0, r2]
20101156:	4348      	muls	r0, r1
20101158:	4359      	muls	r1, r3
2010115a:	1280      	asrs	r0, r0, #10
2010115c:	1289      	asrs	r1, r1, #10
2010115e:	1843      	adds	r3, r0, r1
20101160:	602b      	str	r3, [r5, #0]
20101162:	4243      	negs	r3, r0
20101164:	1a5b      	subs	r3, r3, r1
20101166:	1a41      	subs	r1, r0, r1
20101168:	606b      	str	r3, [r5, #4]
2010116a:	60a9      	str	r1, [r5, #8]
2010116c:	e73b      	b.n	20100fe6 <svpwm+0x1a2>
2010116e:	2100      	movs	r1, #0
20101170:	e703      	b.n	20100f7a <svpwm+0x136>
20101172:	4648      	mov	r0, r9
20101174:	2101      	movs	r1, #1
20101176:	e700      	b.n	20100f7a <svpwm+0x136>
20101178:	2102      	movs	r1, #2
2010117a:	e6fe      	b.n	20100f7a <svpwm+0x136>
2010117c:	0008      	movs	r0, r1
2010117e:	2103      	movs	r1, #3
20101180:	e6fb      	b.n	20100f7a <svpwm+0x136>
20101182:	2104      	movs	r1, #4
20101184:	e6f9      	b.n	20100f7a <svpwm+0x136>
20101186:	4648      	mov	r0, r9
20101188:	2105      	movs	r1, #5
2010118a:	e6f6      	b.n	20100f7a <svpwm+0x136>
2010118c:	4640      	mov	r0, r8
2010118e:	2106      	movs	r1, #6
20101190:	e6f3      	b.n	20100f7a <svpwm+0x136>
20101192:	46c0      	nop			; (mov r8, r8)
20101194:	000013ee 	.word	0x000013ee
20101198:	ffeff1a0 	.word	0xffeff1a0
2010119c:	00000000 	.word	0x00000000
201011a0:	000007aa 	.word	0x000007aa
201011a4:	000009aa 	.word	0x000009aa
201011a8:	00000a54 	.word	0x00000a54
201011ac:	00000854 	.word	0x00000854
201011b0:	00000256 	.word	0x00000256
201011b4:	000008ff 	.word	0x000008ff
201011b8:	00000aff 	.word	0x00000aff

201011bc <get_speed>:
201011bc:	4a10      	ldr	r2, [pc, #64]	; (20101200 <get_speed+0x44>)
201011be:	b510      	push	{r4, lr}
201011c0:	447a      	add	r2, pc
201011c2:	6813      	ldr	r3, [r2, #0]
201011c4:	6854      	ldr	r4, [r2, #4]
201011c6:	1ac3      	subs	r3, r0, r3
201011c8:	6050      	str	r0, [r2, #4]
201011ca:	6014      	str	r4, [r2, #0]
201011cc:	17da      	asrs	r2, r3, #31
201011ce:	1898      	adds	r0, r3, r2
201011d0:	4050      	eors	r0, r2
201011d2:	22fa      	movs	r2, #250	; 0xfa
201011d4:	0092      	lsls	r2, r2, #2
201011d6:	4290      	cmp	r0, r2
201011d8:	dd04      	ble.n	201011e4 <get_speed+0x28>
201011da:	2b00      	cmp	r3, #0
201011dc:	db0a      	blt.n	201011f4 <get_speed+0x38>
201011de:	4a09      	ldr	r2, [pc, #36]	; (20101204 <get_speed+0x48>)
201011e0:	4694      	mov	ip, r2
201011e2:	4463      	add	r3, ip
201011e4:	680a      	ldr	r2, [r1, #0]
201011e6:	4808      	ldr	r0, [pc, #32]	; (20101208 <get_speed+0x4c>)
201011e8:	18d2      	adds	r2, r2, r3
201011ea:	105b      	asrs	r3, r3, #1
201011ec:	4343      	muls	r3, r0
201011ee:	600a      	str	r2, [r1, #0]
201011f0:	1318      	asrs	r0, r3, #12
201011f2:	bd10      	pop	{r4, pc}
201011f4:	2280      	movs	r2, #128	; 0x80
201011f6:	0152      	lsls	r2, r2, #5
201011f8:	4694      	mov	ip, r2
201011fa:	4463      	add	r3, ip
201011fc:	e7f2      	b.n	201011e4 <get_speed+0x28>
201011fe:	46c0      	nop			; (mov r8, r8)
20101200:	ffefee5c 	.word	0xffefee5c
20101204:	fffff000 	.word	0xfffff000
20101208:	0002ae7c 	.word	0x0002ae7c

2010120c <mfilter>:
2010120c:	221f      	movs	r2, #31
2010120e:	4908      	ldr	r1, [pc, #32]	; (20101230 <mfilter+0x24>)
20101210:	b510      	push	{r4, lr}
20101212:	4479      	add	r1, pc
20101214:	688b      	ldr	r3, [r1, #8]
20101216:	3301      	adds	r3, #1
20101218:	4013      	ands	r3, r2
2010121a:	608b      	str	r3, [r1, #8]
2010121c:	009b      	lsls	r3, r3, #2
2010121e:	18cb      	adds	r3, r1, r3
20101220:	68ca      	ldr	r2, [r1, #12]
20101222:	691c      	ldr	r4, [r3, #16]
20101224:	6118      	str	r0, [r3, #16]
20101226:	1b12      	subs	r2, r2, r4
20101228:	1812      	adds	r2, r2, r0
2010122a:	1150      	asrs	r0, r2, #5
2010122c:	60ca      	str	r2, [r1, #12]
2010122e:	bd10      	pop	{r4, pc}
20101230:	ffefee0a 	.word	0xffefee0a

20101234 <__gnu_thumb1_case_uqi>:
20101234:	b402      	push	{r1}
20101236:	4671      	mov	r1, lr
20101238:	0849      	lsrs	r1, r1, #1
2010123a:	0049      	lsls	r1, r1, #1
2010123c:	5c09      	ldrb	r1, [r1, r0]
2010123e:	0049      	lsls	r1, r1, #1
20101240:	448e      	add	lr, r1
20101242:	bc02      	pop	{r1}
20101244:	4770      	bx	lr
20101246:	46c0      	nop			; (mov r8, r8)
