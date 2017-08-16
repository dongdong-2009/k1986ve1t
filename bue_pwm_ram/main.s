
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b0a8      	sub	sp, #160	; 0xa0
20100004:	af00      	add	r7, sp, #0
20100006:	2300      	movs	r3, #0
20100008:	2290      	movs	r2, #144	; 0x90
2010000a:	18ba      	adds	r2, r7, r2
2010000c:	6013      	str	r3, [r2, #0]
2010000e:	2300      	movs	r3, #0
20100010:	228c      	movs	r2, #140	; 0x8c
20100012:	18ba      	adds	r2, r7, r2
20100014:	6013      	str	r3, [r2, #0]
20100016:	2300      	movs	r3, #0
20100018:	229c      	movs	r2, #156	; 0x9c
2010001a:	18ba      	adds	r2, r7, r2
2010001c:	6013      	str	r3, [r2, #0]
2010001e:	2300      	movs	r3, #0
20100020:	2298      	movs	r2, #152	; 0x98
20100022:	18ba      	adds	r2, r7, r2
20100024:	6013      	str	r3, [r2, #0]
20100026:	23fa      	movs	r3, #250	; 0xfa
20100028:	009b      	lsls	r3, r3, #2
2010002a:	2288      	movs	r2, #136	; 0x88
2010002c:	18ba      	adds	r2, r7, r2
2010002e:	6013      	str	r3, [r2, #0]
20100030:	2300      	movs	r3, #0
20100032:	607b      	str	r3, [r7, #4]
20100034:	2300      	movs	r3, #0
20100036:	2284      	movs	r2, #132	; 0x84
20100038:	18ba      	adds	r2, r7, r2
2010003a:	6013      	str	r3, [r2, #0]
2010003c:	2300      	movs	r3, #0
2010003e:	2280      	movs	r2, #128	; 0x80
20100040:	18ba      	adds	r2, r7, r2
20100042:	6013      	str	r3, [r2, #0]
20100044:	f000 fc34 	bl	201008b0 <SystemInit>
20100048:	23fa      	movs	r3, #250	; 0xfa
2010004a:	009b      	lsls	r3, r3, #2
2010004c:	0018      	movs	r0, r3
2010004e:	f000 fc95 	bl	2010097c <wait_timer_ticks>
20100052:	f000 fc3f 	bl	201008d4 <get_dcA>
20100056:	0003      	movs	r3, r0
20100058:	67fb      	str	r3, [r7, #124]	; 0x7c
2010005a:	f000 fc65 	bl	20100928 <get_dcB>
2010005e:	0003      	movs	r3, r0
20100060:	67bb      	str	r3, [r7, #120]	; 0x78
20100062:	2338      	movs	r3, #56	; 0x38
20100064:	18fb      	adds	r3, r7, r3
20100066:	2264      	movs	r2, #100	; 0x64
20100068:	601a      	str	r2, [r3, #0]
2010006a:	2338      	movs	r3, #56	; 0x38
2010006c:	18fb      	adds	r3, r7, r3
2010006e:	22c8      	movs	r2, #200	; 0xc8
20100070:	605a      	str	r2, [r3, #4]
20100072:	2338      	movs	r3, #56	; 0x38
20100074:	18fb      	adds	r3, r7, r3
20100076:	2200      	movs	r2, #0
20100078:	609a      	str	r2, [r3, #8]
2010007a:	2338      	movs	r3, #56	; 0x38
2010007c:	18fb      	adds	r3, r7, r3
2010007e:	2200      	movs	r2, #0
20100080:	60da      	str	r2, [r3, #12]
20100082:	2328      	movs	r3, #40	; 0x28
20100084:	18fb      	adds	r3, r7, r3
20100086:	2264      	movs	r2, #100	; 0x64
20100088:	601a      	str	r2, [r3, #0]
2010008a:	2328      	movs	r3, #40	; 0x28
2010008c:	18fb      	adds	r3, r7, r3
2010008e:	22c8      	movs	r2, #200	; 0xc8
20100090:	605a      	str	r2, [r3, #4]
20100092:	2328      	movs	r3, #40	; 0x28
20100094:	18fb      	adds	r3, r7, r3
20100096:	2200      	movs	r2, #0
20100098:	609a      	str	r2, [r3, #8]
2010009a:	2328      	movs	r3, #40	; 0x28
2010009c:	18fb      	adds	r3, r7, r3
2010009e:	2200      	movs	r2, #0
201000a0:	60da      	str	r2, [r3, #12]
201000a2:	2318      	movs	r3, #24
201000a4:	18fb      	adds	r3, r7, r3
201000a6:	2200      	movs	r2, #0
201000a8:	601a      	str	r2, [r3, #0]
201000aa:	2318      	movs	r3, #24
201000ac:	18fb      	adds	r3, r7, r3
201000ae:	22fa      	movs	r2, #250	; 0xfa
201000b0:	00d2      	lsls	r2, r2, #3
201000b2:	605a      	str	r2, [r3, #4]
201000b4:	2318      	movs	r3, #24
201000b6:	18fb      	adds	r3, r7, r3
201000b8:	2200      	movs	r2, #0
201000ba:	609a      	str	r2, [r3, #8]
201000bc:	2318      	movs	r3, #24
201000be:	18fb      	adds	r3, r7, r3
201000c0:	2200      	movs	r2, #0
201000c2:	60da      	str	r2, [r3, #12]
201000c4:	2308      	movs	r3, #8
201000c6:	18fb      	adds	r3, r7, r3
201000c8:	2200      	movs	r2, #0
201000ca:	601a      	str	r2, [r3, #0]
201000cc:	2308      	movs	r3, #8
201000ce:	18fb      	adds	r3, r7, r3
201000d0:	4ab5      	ldr	r2, [pc, #724]	; (201003a8 <main+0x3a8>)
201000d2:	605a      	str	r2, [r3, #4]
201000d4:	2308      	movs	r3, #8
201000d6:	18fb      	adds	r3, r7, r3
201000d8:	2200      	movs	r2, #0
201000da:	609a      	str	r2, [r3, #8]
201000dc:	2308      	movs	r3, #8
201000de:	18fb      	adds	r3, r7, r3
201000e0:	2200      	movs	r2, #0
201000e2:	60da      	str	r2, [r3, #12]
201000e4:	4bb1      	ldr	r3, [pc, #708]	; (201003ac <main+0x3ac>)
201000e6:	447b      	add	r3, pc
201000e8:	2200      	movs	r2, #0
201000ea:	601a      	str	r2, [r3, #0]
201000ec:	4bb0      	ldr	r3, [pc, #704]	; (201003b0 <main+0x3b0>)
201000ee:	2257      	movs	r2, #87	; 0x57
201000f0:	601a      	str	r2, [r3, #0]
201000f2:	46c0      	nop			; (mov r8, r8)
201000f4:	4bae      	ldr	r3, [pc, #696]	; (201003b0 <main+0x3b0>)
201000f6:	6a1b      	ldr	r3, [r3, #32]
201000f8:	2204      	movs	r2, #4
201000fa:	4013      	ands	r3, r2
201000fc:	d0fa      	beq.n	201000f4 <main+0xf4>
201000fe:	4bac      	ldr	r3, [pc, #688]	; (201003b0 <main+0x3b0>)
20100100:	699b      	ldr	r3, [r3, #24]
20100102:	051b      	lsls	r3, r3, #20
20100104:	0d1b      	lsrs	r3, r3, #20
20100106:	2280      	movs	r2, #128	; 0x80
20100108:	18ba      	adds	r2, r7, r2
2010010a:	6013      	str	r3, [r2, #0]
2010010c:	4ba9      	ldr	r3, [pc, #676]	; (201003b4 <main+0x3b4>)
2010010e:	447b      	add	r3, pc
20100110:	2280      	movs	r2, #128	; 0x80
20100112:	18ba      	adds	r2, r7, r2
20100114:	6812      	ldr	r2, [r2, #0]
20100116:	601a      	str	r2, [r3, #0]
20100118:	4ba7      	ldr	r3, [pc, #668]	; (201003b8 <main+0x3b8>)
2010011a:	4aa7      	ldr	r2, [pc, #668]	; (201003b8 <main+0x3b8>)
2010011c:	6812      	ldr	r2, [r2, #0]
2010011e:	2120      	movs	r1, #32
20100120:	430a      	orrs	r2, r1
20100122:	601a      	str	r2, [r3, #0]
20100124:	4ba5      	ldr	r3, [pc, #660]	; (201003bc <main+0x3bc>)
20100126:	4aa6      	ldr	r2, [pc, #664]	; (201003c0 <main+0x3c0>)
20100128:	609a      	str	r2, [r3, #8]
2010012a:	4ba1      	ldr	r3, [pc, #644]	; (201003b0 <main+0x3b0>)
2010012c:	2237      	movs	r2, #55	; 0x37
2010012e:	601a      	str	r2, [r3, #0]
20100130:	46c0      	nop			; (mov r8, r8)
20100132:	4b9f      	ldr	r3, [pc, #636]	; (201003b0 <main+0x3b0>)
20100134:	6a1b      	ldr	r3, [r3, #32]
20100136:	2204      	movs	r2, #4
20100138:	4013      	ands	r3, r2
2010013a:	d0fa      	beq.n	20100132 <main+0x132>
2010013c:	4b9c      	ldr	r3, [pc, #624]	; (201003b0 <main+0x3b0>)
2010013e:	699b      	ldr	r3, [r3, #24]
20100140:	051b      	lsls	r3, r3, #20
20100142:	0d1a      	lsrs	r2, r3, #20
20100144:	6ffb      	ldr	r3, [r7, #124]	; 0x7c
20100146:	1ad3      	subs	r3, r2, r3
20100148:	677b      	str	r3, [r7, #116]	; 0x74
2010014a:	4b99      	ldr	r3, [pc, #612]	; (201003b0 <main+0x3b0>)
2010014c:	2247      	movs	r2, #71	; 0x47
2010014e:	601a      	str	r2, [r3, #0]
20100150:	46c0      	nop			; (mov r8, r8)
20100152:	4b97      	ldr	r3, [pc, #604]	; (201003b0 <main+0x3b0>)
20100154:	6a1b      	ldr	r3, [r3, #32]
20100156:	2204      	movs	r2, #4
20100158:	4013      	ands	r3, r2
2010015a:	d0fa      	beq.n	20100152 <main+0x152>
2010015c:	4b94      	ldr	r3, [pc, #592]	; (201003b0 <main+0x3b0>)
2010015e:	699b      	ldr	r3, [r3, #24]
20100160:	051b      	lsls	r3, r3, #20
20100162:	0d1a      	lsrs	r2, r3, #20
20100164:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20100166:	1ad3      	subs	r3, r2, r3
20100168:	673b      	str	r3, [r7, #112]	; 0x70
2010016a:	6f7b      	ldr	r3, [r7, #116]	; 0x74
2010016c:	425a      	negs	r2, r3
2010016e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20100170:	1ad3      	subs	r3, r2, r3
20100172:	66fb      	str	r3, [r7, #108]	; 0x6c
20100174:	4b8e      	ldr	r3, [pc, #568]	; (201003b0 <main+0x3b0>)
20100176:	2257      	movs	r2, #87	; 0x57
20100178:	601a      	str	r2, [r3, #0]
2010017a:	46c0      	nop			; (mov r8, r8)
2010017c:	4b8c      	ldr	r3, [pc, #560]	; (201003b0 <main+0x3b0>)
2010017e:	6a1b      	ldr	r3, [r3, #32]
20100180:	2204      	movs	r2, #4
20100182:	4013      	ands	r3, r2
20100184:	d0fa      	beq.n	2010017c <main+0x17c>
20100186:	4b8a      	ldr	r3, [pc, #552]	; (201003b0 <main+0x3b0>)
20100188:	699b      	ldr	r3, [r3, #24]
2010018a:	051b      	lsls	r3, r3, #20
2010018c:	0d1b      	lsrs	r3, r3, #20
2010018e:	2284      	movs	r2, #132	; 0x84
20100190:	18ba      	adds	r2, r7, r2
20100192:	6013      	str	r3, [r2, #0]
20100194:	46c0      	nop			; (mov r8, r8)
20100196:	4b8b      	ldr	r3, [pc, #556]	; (201003c4 <main+0x3c4>)
20100198:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010019a:	2202      	movs	r2, #2
2010019c:	4013      	ands	r3, r2
2010019e:	d0fa      	beq.n	20100196 <main+0x196>
201001a0:	4b88      	ldr	r3, [pc, #544]	; (201003c4 <main+0x3c4>)
201001a2:	2200      	movs	r2, #0
201001a4:	655a      	str	r2, [r3, #84]	; 0x54
201001a6:	4b84      	ldr	r3, [pc, #528]	; (201003b8 <main+0x3b8>)
201001a8:	4a83      	ldr	r2, [pc, #524]	; (201003b8 <main+0x3b8>)
201001aa:	6812      	ldr	r2, [r2, #0]
201001ac:	2120      	movs	r1, #32
201001ae:	438a      	bics	r2, r1
201001b0:	601a      	str	r2, [r3, #0]
201001b2:	4b82      	ldr	r3, [pc, #520]	; (201003bc <main+0x3bc>)
201001b4:	689b      	ldr	r3, [r3, #8]
201001b6:	051b      	lsls	r3, r3, #20
201001b8:	0d1b      	lsrs	r3, r3, #20
201001ba:	0018      	movs	r0, r3
201001bc:	f000 fb60 	bl	20100880 <g2b>
201001c0:	0003      	movs	r3, r0
201001c2:	66bb      	str	r3, [r7, #104]	; 0x68
201001c4:	2398      	movs	r3, #152	; 0x98
201001c6:	18fb      	adds	r3, r7, r3
201001c8:	681b      	ldr	r3, [r3, #0]
201001ca:	3301      	adds	r3, #1
201001cc:	2298      	movs	r2, #152	; 0x98
201001ce:	18ba      	adds	r2, r7, r2
201001d0:	6013      	str	r3, [r2, #0]
201001d2:	2398      	movs	r3, #152	; 0x98
201001d4:	18fb      	adds	r3, r7, r3
201001d6:	681b      	ldr	r3, [r3, #0]
201001d8:	2207      	movs	r2, #7
201001da:	4013      	ands	r3, r2
201001dc:	d146      	bne.n	2010026c <main+0x26c>
201001de:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201001e0:	1d3a      	adds	r2, r7, #4
201001e2:	0011      	movs	r1, r2
201001e4:	0018      	movs	r0, r3
201001e6:	f001 f84b 	bl	20101280 <get_speed>
201001ea:	0003      	movs	r3, r0
201001ec:	667b      	str	r3, [r7, #100]	; 0x64
201001ee:	4b76      	ldr	r3, [pc, #472]	; (201003c8 <main+0x3c8>)
201001f0:	447b      	add	r3, pc
201001f2:	681a      	ldr	r2, [r3, #0]
201001f4:	687b      	ldr	r3, [r7, #4]
201001f6:	1ad1      	subs	r1, r2, r3
201001f8:	2308      	movs	r3, #8
201001fa:	18fb      	adds	r3, r7, r3
201001fc:	2200      	movs	r2, #0
201001fe:	0018      	movs	r0, r3
20100200:	f000 fbfe 	bl	20100a00 <update>
20100204:	2308      	movs	r3, #8
20100206:	18fb      	adds	r3, r7, r3
20100208:	68db      	ldr	r3, [r3, #12]
2010020a:	129b      	asrs	r3, r3, #10
2010020c:	2288      	movs	r2, #136	; 0x88
2010020e:	18ba      	adds	r2, r7, r2
20100210:	6013      	str	r3, [r2, #0]
20100212:	2388      	movs	r3, #136	; 0x88
20100214:	18fb      	adds	r3, r7, r3
20100216:	681a      	ldr	r2, [r3, #0]
20100218:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010021a:	1ad1      	subs	r1, r2, r3
2010021c:	2318      	movs	r3, #24
2010021e:	18fb      	adds	r3, r7, r3
20100220:	2200      	movs	r2, #0
20100222:	0018      	movs	r0, r3
20100224:	f000 fbec 	bl	20100a00 <update>
20100228:	2318      	movs	r3, #24
2010022a:	18fb      	adds	r3, r7, r3
2010022c:	68db      	ldr	r3, [r3, #12]
2010022e:	129b      	asrs	r3, r3, #10
20100230:	2294      	movs	r2, #148	; 0x94
20100232:	18ba      	adds	r2, r7, r2
20100234:	6013      	str	r3, [r2, #0]
20100236:	2394      	movs	r3, #148	; 0x94
20100238:	18fb      	adds	r3, r7, r3
2010023a:	681a      	ldr	r2, [r3, #0]
2010023c:	23fa      	movs	r3, #250	; 0xfa
2010023e:	005b      	lsls	r3, r3, #1
20100240:	429a      	cmp	r2, r3
20100242:	dd04      	ble.n	2010024e <main+0x24e>
20100244:	23fa      	movs	r3, #250	; 0xfa
20100246:	005b      	lsls	r3, r3, #1
20100248:	2294      	movs	r2, #148	; 0x94
2010024a:	18ba      	adds	r2, r7, r2
2010024c:	6013      	str	r3, [r2, #0]
2010024e:	2394      	movs	r3, #148	; 0x94
20100250:	18fb      	adds	r3, r7, r3
20100252:	681b      	ldr	r3, [r3, #0]
20100254:	4a5d      	ldr	r2, [pc, #372]	; (201003cc <main+0x3cc>)
20100256:	4293      	cmp	r3, r2
20100258:	da03      	bge.n	20100262 <main+0x262>
2010025a:	4b5c      	ldr	r3, [pc, #368]	; (201003cc <main+0x3cc>)
2010025c:	2294      	movs	r2, #148	; 0x94
2010025e:	18ba      	adds	r2, r7, r2
20100260:	6013      	str	r3, [r2, #0]
20100262:	4b5b      	ldr	r3, [pc, #364]	; (201003d0 <main+0x3d0>)
20100264:	2284      	movs	r2, #132	; 0x84
20100266:	18ba      	adds	r2, r7, r2
20100268:	6812      	ldr	r2, [r2, #0]
2010026a:	605a      	str	r2, [r3, #4]
2010026c:	2398      	movs	r3, #152	; 0x98
2010026e:	18fb      	adds	r3, r7, r3
20100270:	681b      	ldr	r3, [r3, #0]
20100272:	041b      	lsls	r3, r3, #16
20100274:	0c1b      	lsrs	r3, r3, #16
20100276:	d11d      	bne.n	201002b4 <main+0x2b4>
20100278:	4b56      	ldr	r3, [pc, #344]	; (201003d4 <main+0x3d4>)
2010027a:	447b      	add	r3, pc
2010027c:	681b      	ldr	r3, [r3, #0]
2010027e:	4a56      	ldr	r2, [pc, #344]	; (201003d8 <main+0x3d8>)
20100280:	189a      	adds	r2, r3, r2
20100282:	4b56      	ldr	r3, [pc, #344]	; (201003dc <main+0x3dc>)
20100284:	447b      	add	r3, pc
20100286:	601a      	str	r2, [r3, #0]
20100288:	4b55      	ldr	r3, [pc, #340]	; (201003e0 <main+0x3e0>)
2010028a:	447b      	add	r3, pc
2010028c:	681b      	ldr	r3, [r3, #0]
2010028e:	425a      	negs	r2, r3
20100290:	4b54      	ldr	r3, [pc, #336]	; (201003e4 <main+0x3e4>)
20100292:	447b      	add	r3, pc
20100294:	601a      	str	r2, [r3, #0]
20100296:	4b54      	ldr	r3, [pc, #336]	; (201003e8 <main+0x3e8>)
20100298:	447b      	add	r3, pc
2010029a:	681a      	ldr	r2, [r3, #0]
2010029c:	2380      	movs	r3, #128	; 0x80
2010029e:	18fb      	adds	r3, r7, r3
201002a0:	681b      	ldr	r3, [r3, #0]
201002a2:	1ad2      	subs	r2, r2, r3
201002a4:	0013      	movs	r3, r2
201002a6:	00db      	lsls	r3, r3, #3
201002a8:	1a9b      	subs	r3, r3, r2
201002aa:	00da      	lsls	r2, r3, #3
201002ac:	1ad2      	subs	r2, r2, r3
201002ae:	4b4f      	ldr	r3, [pc, #316]	; (201003ec <main+0x3ec>)
201002b0:	447b      	add	r3, pc
201002b2:	601a      	str	r2, [r3, #0]
201002b4:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201002b6:	059b      	lsls	r3, r3, #22
201002b8:	0d9b      	lsrs	r3, r3, #22
201002ba:	228c      	movs	r2, #140	; 0x8c
201002bc:	18ba      	adds	r2, r7, r2
201002be:	6013      	str	r3, [r2, #0]
201002c0:	238c      	movs	r3, #140	; 0x8c
201002c2:	18fb      	adds	r3, r7, r3
201002c4:	681b      	ldr	r3, [r3, #0]
201002c6:	33fa      	adds	r3, #250	; 0xfa
201002c8:	059b      	lsls	r3, r3, #22
201002ca:	0d9b      	lsrs	r3, r3, #22
201002cc:	228c      	movs	r2, #140	; 0x8c
201002ce:	18ba      	adds	r2, r7, r2
201002d0:	6013      	str	r3, [r2, #0]
201002d2:	2348      	movs	r3, #72	; 0x48
201002d4:	18fb      	adds	r3, r7, r3
201002d6:	6f7a      	ldr	r2, [r7, #116]	; 0x74
201002d8:	601a      	str	r2, [r3, #0]
201002da:	2348      	movs	r3, #72	; 0x48
201002dc:	18fb      	adds	r3, r7, r3
201002de:	6efa      	ldr	r2, [r7, #108]	; 0x6c
201002e0:	605a      	str	r2, [r3, #4]
201002e2:	2348      	movs	r3, #72	; 0x48
201002e4:	18fb      	adds	r3, r7, r3
201002e6:	6f3a      	ldr	r2, [r7, #112]	; 0x70
201002e8:	609a      	str	r2, [r3, #8]
201002ea:	238c      	movs	r3, #140	; 0x8c
201002ec:	18fb      	adds	r3, r7, r3
201002ee:	681a      	ldr	r2, [r3, #0]
201002f0:	2354      	movs	r3, #84	; 0x54
201002f2:	18f9      	adds	r1, r7, r3
201002f4:	2348      	movs	r3, #72	; 0x48
201002f6:	18fb      	adds	r3, r7, r3
201002f8:	0018      	movs	r0, r3
201002fa:	f000 fba7 	bl	20100a4c <abc_to_dq>
201002fe:	2354      	movs	r3, #84	; 0x54
20100300:	18fb      	adds	r3, r7, r3
20100302:	681b      	ldr	r3, [r3, #0]
20100304:	425b      	negs	r3, r3
20100306:	663b      	str	r3, [r7, #96]	; 0x60
20100308:	2354      	movs	r3, #84	; 0x54
2010030a:	18fb      	adds	r3, r7, r3
2010030c:	685b      	ldr	r3, [r3, #4]
2010030e:	2294      	movs	r2, #148	; 0x94
20100310:	18ba      	adds	r2, r7, r2
20100312:	6812      	ldr	r2, [r2, #0]
20100314:	1ad3      	subs	r3, r2, r3
20100316:	65fb      	str	r3, [r7, #92]	; 0x5c
20100318:	239c      	movs	r3, #156	; 0x9c
2010031a:	18fb      	adds	r3, r7, r3
2010031c:	681a      	ldr	r2, [r3, #0]
2010031e:	6e39      	ldr	r1, [r7, #96]	; 0x60
20100320:	2338      	movs	r3, #56	; 0x38
20100322:	18fb      	adds	r3, r7, r3
20100324:	0018      	movs	r0, r3
20100326:	f000 fb6b 	bl	20100a00 <update>
2010032a:	239c      	movs	r3, #156	; 0x9c
2010032c:	18fb      	adds	r3, r7, r3
2010032e:	681a      	ldr	r2, [r3, #0]
20100330:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20100332:	2328      	movs	r3, #40	; 0x28
20100334:	18fb      	adds	r3, r7, r3
20100336:	0018      	movs	r0, r3
20100338:	f000 fb62 	bl	20100a00 <update>
2010033c:	2338      	movs	r3, #56	; 0x38
2010033e:	18fb      	adds	r3, r7, r3
20100340:	68da      	ldr	r2, [r3, #12]
20100342:	2354      	movs	r3, #84	; 0x54
20100344:	18fb      	adds	r3, r7, r3
20100346:	601a      	str	r2, [r3, #0]
20100348:	2328      	movs	r3, #40	; 0x28
2010034a:	18fb      	adds	r3, r7, r3
2010034c:	68da      	ldr	r2, [r3, #12]
2010034e:	2354      	movs	r3, #84	; 0x54
20100350:	18fb      	adds	r3, r7, r3
20100352:	605a      	str	r2, [r3, #4]
20100354:	238c      	movs	r3, #140	; 0x8c
20100356:	18fb      	adds	r3, r7, r3
20100358:	681a      	ldr	r2, [r3, #0]
2010035a:	2354      	movs	r3, #84	; 0x54
2010035c:	18f9      	adds	r1, r7, r3
2010035e:	2348      	movs	r3, #72	; 0x48
20100360:	18fb      	adds	r3, r7, r3
20100362:	0018      	movs	r0, r3
20100364:	f000 fdd0 	bl	20100f08 <svpwm>
20100368:	0003      	movs	r3, r0
2010036a:	229c      	movs	r2, #156	; 0x9c
2010036c:	18ba      	adds	r2, r7, r2
2010036e:	6013      	str	r3, [r2, #0]
20100370:	4a14      	ldr	r2, [pc, #80]	; (201003c4 <main+0x3c4>)
20100372:	2348      	movs	r3, #72	; 0x48
20100374:	18fb      	adds	r3, r7, r3
20100376:	681b      	ldr	r3, [r3, #0]
20100378:	2180      	movs	r1, #128	; 0x80
2010037a:	0089      	lsls	r1, r1, #2
2010037c:	468c      	mov	ip, r1
2010037e:	4463      	add	r3, ip
20100380:	6113      	str	r3, [r2, #16]
20100382:	4a10      	ldr	r2, [pc, #64]	; (201003c4 <main+0x3c4>)
20100384:	2348      	movs	r3, #72	; 0x48
20100386:	18fb      	adds	r3, r7, r3
20100388:	685b      	ldr	r3, [r3, #4]
2010038a:	2180      	movs	r1, #128	; 0x80
2010038c:	0089      	lsls	r1, r1, #2
2010038e:	468c      	mov	ip, r1
20100390:	4463      	add	r3, ip
20100392:	6153      	str	r3, [r2, #20]
20100394:	4a0b      	ldr	r2, [pc, #44]	; (201003c4 <main+0x3c4>)
20100396:	2348      	movs	r3, #72	; 0x48
20100398:	18fb      	adds	r3, r7, r3
2010039a:	689b      	ldr	r3, [r3, #8]
2010039c:	2180      	movs	r1, #128	; 0x80
2010039e:	0089      	lsls	r1, r1, #2
201003a0:	468c      	mov	ip, r1
201003a2:	4463      	add	r3, ip
201003a4:	6193      	str	r3, [r2, #24]
201003a6:	e6b7      	b.n	20100118 <main+0x118>
201003a8:	00000bb8 	.word	0x00000bb8
201003ac:	ffefff2e 	.word	0xffefff2e
201003b0:	40088000 	.word	0x40088000
201003b4:	ffefff0a 	.word	0xffefff0a
201003b8:	400b8000 	.word	0x400b8000
201003bc:	400a0000 	.word	0x400a0000
201003c0:	00000555 	.word	0x00000555
201003c4:	40098000 	.word	0x40098000
201003c8:	ffeffe24 	.word	0xffeffe24
201003cc:	fffffe0c 	.word	0xfffffe0c
201003d0:	40090000 	.word	0x40090000
201003d4:	ffeffd86 	.word	0xffeffd86
201003d8:	00000898 	.word	0x00000898
201003dc:	ffeffd94 	.word	0xffeffd94
201003e0:	ffeffd76 	.word	0xffeffd76
201003e4:	ffeffd6e 	.word	0xffeffd6e
201003e8:	ffeffd80 	.word	0xffeffd80
201003ec:	ffeffd64 	.word	0xffeffd64

201003f0 <sleep>:
201003f0:	b580      	push	{r7, lr}
201003f2:	b084      	sub	sp, #16
201003f4:	af00      	add	r7, sp, #0
201003f6:	6078      	str	r0, [r7, #4]
201003f8:	4b08      	ldr	r3, [pc, #32]	; (2010041c <sleep+0x2c>)
201003fa:	447b      	add	r3, pc
201003fc:	681a      	ldr	r2, [r3, #0]
201003fe:	687b      	ldr	r3, [r7, #4]
20100400:	18d3      	adds	r3, r2, r3
20100402:	60fb      	str	r3, [r7, #12]
20100404:	46c0      	nop			; (mov r8, r8)
20100406:	4b06      	ldr	r3, [pc, #24]	; (20100420 <sleep+0x30>)
20100408:	447b      	add	r3, pc
2010040a:	681a      	ldr	r2, [r3, #0]
2010040c:	68fb      	ldr	r3, [r7, #12]
2010040e:	429a      	cmp	r2, r3
20100410:	d3f9      	bcc.n	20100406 <sleep+0x16>
20100412:	46c0      	nop			; (mov r8, r8)
20100414:	0018      	movs	r0, r3
20100416:	46bd      	mov	sp, r7
20100418:	b004      	add	sp, #16
2010041a:	bd80      	pop	{r7, pc}
2010041c:	ffeffc22 	.word	0xffeffc22
20100420:	ffeffc14 	.word	0xffeffc14

20100424 <PortConfig>:
20100424:	b580      	push	{r7, lr}
20100426:	af00      	add	r7, sp, #0
20100428:	4b45      	ldr	r3, [pc, #276]	; (20100540 <PortConfig+0x11c>)
2010042a:	4a45      	ldr	r2, [pc, #276]	; (20100540 <PortConfig+0x11c>)
2010042c:	69d2      	ldr	r2, [r2, #28]
2010042e:	2180      	movs	r1, #128	; 0x80
20100430:	0389      	lsls	r1, r1, #14
20100432:	430a      	orrs	r2, r1
20100434:	61da      	str	r2, [r3, #28]
20100436:	4b43      	ldr	r3, [pc, #268]	; (20100544 <PortConfig+0x120>)
20100438:	4a42      	ldr	r2, [pc, #264]	; (20100544 <PortConfig+0x120>)
2010043a:	6892      	ldr	r2, [r2, #8]
2010043c:	4942      	ldr	r1, [pc, #264]	; (20100548 <PortConfig+0x124>)
2010043e:	400a      	ands	r2, r1
20100440:	609a      	str	r2, [r3, #8]
20100442:	4b40      	ldr	r3, [pc, #256]	; (20100544 <PortConfig+0x120>)
20100444:	4a3f      	ldr	r2, [pc, #252]	; (20100544 <PortConfig+0x120>)
20100446:	6892      	ldr	r2, [r2, #8]
20100448:	4940      	ldr	r1, [pc, #256]	; (2010054c <PortConfig+0x128>)
2010044a:	430a      	orrs	r2, r1
2010044c:	609a      	str	r2, [r3, #8]
2010044e:	4b3d      	ldr	r3, [pc, #244]	; (20100544 <PortConfig+0x120>)
20100450:	4a3c      	ldr	r2, [pc, #240]	; (20100544 <PortConfig+0x120>)
20100452:	6852      	ldr	r2, [r2, #4]
20100454:	21fc      	movs	r1, #252	; 0xfc
20100456:	0109      	lsls	r1, r1, #4
20100458:	430a      	orrs	r2, r1
2010045a:	605a      	str	r2, [r3, #4]
2010045c:	4b39      	ldr	r3, [pc, #228]	; (20100544 <PortConfig+0x120>)
2010045e:	4a39      	ldr	r2, [pc, #228]	; (20100544 <PortConfig+0x120>)
20100460:	68d2      	ldr	r2, [r2, #12]
20100462:	21fc      	movs	r1, #252	; 0xfc
20100464:	0109      	lsls	r1, r1, #4
20100466:	430a      	orrs	r2, r1
20100468:	60da      	str	r2, [r3, #12]
2010046a:	4b36      	ldr	r3, [pc, #216]	; (20100544 <PortConfig+0x120>)
2010046c:	4a35      	ldr	r2, [pc, #212]	; (20100544 <PortConfig+0x120>)
2010046e:	6992      	ldr	r2, [r2, #24]
20100470:	4937      	ldr	r1, [pc, #220]	; (20100550 <PortConfig+0x12c>)
20100472:	430a      	orrs	r2, r1
20100474:	619a      	str	r2, [r3, #24]
20100476:	4b32      	ldr	r3, [pc, #200]	; (20100540 <PortConfig+0x11c>)
20100478:	4a31      	ldr	r2, [pc, #196]	; (20100540 <PortConfig+0x11c>)
2010047a:	69d2      	ldr	r2, [r2, #28]
2010047c:	2180      	movs	r1, #128	; 0x80
2010047e:	0489      	lsls	r1, r1, #18
20100480:	430a      	orrs	r2, r1
20100482:	61da      	str	r2, [r3, #28]
20100484:	4b33      	ldr	r3, [pc, #204]	; (20100554 <PortConfig+0x130>)
20100486:	4a33      	ldr	r2, [pc, #204]	; (20100554 <PortConfig+0x130>)
20100488:	68d2      	ldr	r2, [r2, #12]
2010048a:	2102      	movs	r1, #2
2010048c:	438a      	bics	r2, r1
2010048e:	60da      	str	r2, [r3, #12]
20100490:	4b2b      	ldr	r3, [pc, #172]	; (20100540 <PortConfig+0x11c>)
20100492:	4a2b      	ldr	r2, [pc, #172]	; (20100540 <PortConfig+0x11c>)
20100494:	69d2      	ldr	r2, [r2, #28]
20100496:	2180      	movs	r1, #128	; 0x80
20100498:	0449      	lsls	r1, r1, #17
2010049a:	430a      	orrs	r2, r1
2010049c:	61da      	str	r2, [r3, #28]
2010049e:	4b2e      	ldr	r3, [pc, #184]	; (20100558 <PortConfig+0x134>)
201004a0:	4a2d      	ldr	r2, [pc, #180]	; (20100558 <PortConfig+0x134>)
201004a2:	68d2      	ldr	r2, [r2, #12]
201004a4:	492d      	ldr	r1, [pc, #180]	; (2010055c <PortConfig+0x138>)
201004a6:	400a      	ands	r2, r1
201004a8:	60da      	str	r2, [r3, #12]
201004aa:	4b2b      	ldr	r3, [pc, #172]	; (20100558 <PortConfig+0x134>)
201004ac:	4a2a      	ldr	r2, [pc, #168]	; (20100558 <PortConfig+0x134>)
201004ae:	6892      	ldr	r2, [r2, #8]
201004b0:	492b      	ldr	r1, [pc, #172]	; (20100560 <PortConfig+0x13c>)
201004b2:	400a      	ands	r2, r1
201004b4:	609a      	str	r2, [r3, #8]
201004b6:	4b28      	ldr	r3, [pc, #160]	; (20100558 <PortConfig+0x134>)
201004b8:	4a27      	ldr	r2, [pc, #156]	; (20100558 <PortConfig+0x134>)
201004ba:	6892      	ldr	r2, [r2, #8]
201004bc:	21a0      	movs	r1, #160	; 0xa0
201004be:	02c9      	lsls	r1, r1, #11
201004c0:	430a      	orrs	r2, r1
201004c2:	609a      	str	r2, [r3, #8]
201004c4:	4b24      	ldr	r3, [pc, #144]	; (20100558 <PortConfig+0x134>)
201004c6:	4a24      	ldr	r2, [pc, #144]	; (20100558 <PortConfig+0x134>)
201004c8:	68d2      	ldr	r2, [r2, #12]
201004ca:	21c0      	movs	r1, #192	; 0xc0
201004cc:	0089      	lsls	r1, r1, #2
201004ce:	430a      	orrs	r2, r1
201004d0:	60da      	str	r2, [r3, #12]
201004d2:	4b21      	ldr	r3, [pc, #132]	; (20100558 <PortConfig+0x134>)
201004d4:	4a20      	ldr	r2, [pc, #128]	; (20100558 <PortConfig+0x134>)
201004d6:	6992      	ldr	r2, [r2, #24]
201004d8:	21c0      	movs	r1, #192	; 0xc0
201004da:	0309      	lsls	r1, r1, #12
201004dc:	430a      	orrs	r2, r1
201004de:	619a      	str	r2, [r3, #24]
201004e0:	4b1d      	ldr	r3, [pc, #116]	; (20100558 <PortConfig+0x134>)
201004e2:	4a1d      	ldr	r2, [pc, #116]	; (20100558 <PortConfig+0x134>)
201004e4:	6852      	ldr	r2, [r2, #4]
201004e6:	2180      	movs	r1, #128	; 0x80
201004e8:	0089      	lsls	r1, r1, #2
201004ea:	430a      	orrs	r2, r1
201004ec:	605a      	str	r2, [r3, #4]
201004ee:	4b1a      	ldr	r3, [pc, #104]	; (20100558 <PortConfig+0x134>)
201004f0:	4a19      	ldr	r2, [pc, #100]	; (20100558 <PortConfig+0x134>)
201004f2:	6852      	ldr	r2, [r2, #4]
201004f4:	491b      	ldr	r1, [pc, #108]	; (20100564 <PortConfig+0x140>)
201004f6:	400a      	ands	r2, r1
201004f8:	605a      	str	r2, [r3, #4]
201004fa:	4b11      	ldr	r3, [pc, #68]	; (20100540 <PortConfig+0x11c>)
201004fc:	4a10      	ldr	r2, [pc, #64]	; (20100540 <PortConfig+0x11c>)
201004fe:	69d2      	ldr	r2, [r2, #28]
20100500:	2180      	movs	r1, #128	; 0x80
20100502:	0409      	lsls	r1, r1, #16
20100504:	430a      	orrs	r2, r1
20100506:	61da      	str	r2, [r3, #28]
20100508:	4b17      	ldr	r3, [pc, #92]	; (20100568 <PortConfig+0x144>)
2010050a:	2200      	movs	r2, #0
2010050c:	609a      	str	r2, [r3, #8]
2010050e:	4b16      	ldr	r3, [pc, #88]	; (20100568 <PortConfig+0x144>)
20100510:	2200      	movs	r2, #0
20100512:	601a      	str	r2, [r3, #0]
20100514:	4b14      	ldr	r3, [pc, #80]	; (20100568 <PortConfig+0x144>)
20100516:	4a14      	ldr	r2, [pc, #80]	; (20100568 <PortConfig+0x144>)
20100518:	6852      	ldr	r2, [r2, #4]
2010051a:	2120      	movs	r1, #32
2010051c:	430a      	orrs	r2, r1
2010051e:	605a      	str	r2, [r3, #4]
20100520:	4b11      	ldr	r3, [pc, #68]	; (20100568 <PortConfig+0x144>)
20100522:	4a11      	ldr	r2, [pc, #68]	; (20100568 <PortConfig+0x144>)
20100524:	68d2      	ldr	r2, [r2, #12]
20100526:	2120      	movs	r1, #32
20100528:	430a      	orrs	r2, r1
2010052a:	60da      	str	r2, [r3, #12]
2010052c:	4b0e      	ldr	r3, [pc, #56]	; (20100568 <PortConfig+0x144>)
2010052e:	4a0e      	ldr	r2, [pc, #56]	; (20100568 <PortConfig+0x144>)
20100530:	6992      	ldr	r2, [r2, #24]
20100532:	21c0      	movs	r1, #192	; 0xc0
20100534:	0109      	lsls	r1, r1, #4
20100536:	430a      	orrs	r2, r1
20100538:	619a      	str	r2, [r3, #24]
2010053a:	46c0      	nop			; (mov r8, r8)
2010053c:	46bd      	mov	sp, r7
2010053e:	bd80      	pop	{r7, pc}
20100540:	40020000 	.word	0x40020000
20100544:	400a8000 	.word	0x400a8000
20100548:	ff000fff 	.word	0xff000fff
2010054c:	00aaa000 	.word	0x00aaa000
20100550:	00fff000 	.word	0x00fff000
20100554:	400c8000 	.word	0x400c8000
20100558:	400c0000 	.word	0x400c0000
2010055c:	fffff3ff 	.word	0xfffff3ff
20100560:	fff0ffff 	.word	0xfff0ffff
20100564:	fffffeff 	.word	0xfffffeff
20100568:	400b8000 	.word	0x400b8000

2010056c <ClkConfig>:
2010056c:	b580      	push	{r7, lr}
2010056e:	af00      	add	r7, sp, #0
20100570:	4b18      	ldr	r3, [pc, #96]	; (201005d4 <ClkConfig+0x68>)
20100572:	4a18      	ldr	r2, [pc, #96]	; (201005d4 <ClkConfig+0x68>)
20100574:	6892      	ldr	r2, [r2, #8]
20100576:	2101      	movs	r1, #1
20100578:	430a      	orrs	r2, r1
2010057a:	609a      	str	r2, [r3, #8]
2010057c:	46c0      	nop			; (mov r8, r8)
2010057e:	4b15      	ldr	r3, [pc, #84]	; (201005d4 <ClkConfig+0x68>)
20100580:	681b      	ldr	r3, [r3, #0]
20100582:	2204      	movs	r2, #4
20100584:	4013      	ands	r3, r2
20100586:	d0fa      	beq.n	2010057e <ClkConfig+0x12>
20100588:	4b12      	ldr	r3, [pc, #72]	; (201005d4 <ClkConfig+0x68>)
2010058a:	4a12      	ldr	r2, [pc, #72]	; (201005d4 <ClkConfig+0x68>)
2010058c:	68d2      	ldr	r2, [r2, #12]
2010058e:	2102      	movs	r1, #2
20100590:	430a      	orrs	r2, r1
20100592:	60da      	str	r2, [r3, #12]
20100594:	4b0f      	ldr	r3, [pc, #60]	; (201005d4 <ClkConfig+0x68>)
20100596:	4a10      	ldr	r2, [pc, #64]	; (201005d8 <ClkConfig+0x6c>)
20100598:	605a      	str	r2, [r3, #4]
2010059a:	46c0      	nop			; (mov r8, r8)
2010059c:	4b0d      	ldr	r3, [pc, #52]	; (201005d4 <ClkConfig+0x68>)
2010059e:	681b      	ldr	r3, [r3, #0]
201005a0:	2202      	movs	r2, #2
201005a2:	4013      	ands	r3, r2
201005a4:	d0fa      	beq.n	2010059c <ClkConfig+0x30>
201005a6:	4b0d      	ldr	r3, [pc, #52]	; (201005dc <ClkConfig+0x70>)
201005a8:	4a0c      	ldr	r2, [pc, #48]	; (201005dc <ClkConfig+0x70>)
201005aa:	6812      	ldr	r2, [r2, #0]
201005ac:	2120      	movs	r1, #32
201005ae:	430a      	orrs	r2, r1
201005b0:	601a      	str	r2, [r3, #0]
201005b2:	4b08      	ldr	r3, [pc, #32]	; (201005d4 <ClkConfig+0x68>)
201005b4:	4a07      	ldr	r2, [pc, #28]	; (201005d4 <ClkConfig+0x68>)
201005b6:	68d2      	ldr	r2, [r2, #12]
201005b8:	2180      	movs	r1, #128	; 0x80
201005ba:	0049      	lsls	r1, r1, #1
201005bc:	430a      	orrs	r2, r1
201005be:	60da      	str	r2, [r3, #12]
201005c0:	4b04      	ldr	r3, [pc, #16]	; (201005d4 <ClkConfig+0x68>)
201005c2:	4a04      	ldr	r2, [pc, #16]	; (201005d4 <ClkConfig+0x68>)
201005c4:	68d2      	ldr	r2, [r2, #12]
201005c6:	2104      	movs	r1, #4
201005c8:	430a      	orrs	r2, r1
201005ca:	60da      	str	r2, [r3, #12]
201005cc:	46c0      	nop			; (mov r8, r8)
201005ce:	46bd      	mov	sp, r7
201005d0:	bd80      	pop	{r7, pc}
201005d2:	46c0      	nop			; (mov r8, r8)
201005d4:	40020000 	.word	0x40020000
201005d8:	00000e04 	.word	0x00000e04
201005dc:	40018000 	.word	0x40018000

201005e0 <TimerConfig>:
201005e0:	b580      	push	{r7, lr}
201005e2:	af00      	add	r7, sp, #0
201005e4:	4b71      	ldr	r3, [pc, #452]	; (201007ac <TimerConfig+0x1cc>)
201005e6:	4a71      	ldr	r2, [pc, #452]	; (201007ac <TimerConfig+0x1cc>)
201005e8:	69d2      	ldr	r2, [r2, #28]
201005ea:	2180      	movs	r1, #128	; 0x80
201005ec:	0309      	lsls	r1, r1, #12
201005ee:	430a      	orrs	r2, r1
201005f0:	61da      	str	r2, [r3, #28]
201005f2:	4b6e      	ldr	r3, [pc, #440]	; (201007ac <TimerConfig+0x1cc>)
201005f4:	4a6d      	ldr	r2, [pc, #436]	; (201007ac <TimerConfig+0x1cc>)
201005f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
201005f8:	2180      	movs	r1, #128	; 0x80
201005fa:	04c9      	lsls	r1, r1, #19
201005fc:	430a      	orrs	r2, r1
201005fe:	629a      	str	r2, [r3, #40]	; 0x28
20100600:	4b6a      	ldr	r3, [pc, #424]	; (201007ac <TimerConfig+0x1cc>)
20100602:	4a6a      	ldr	r2, [pc, #424]	; (201007ac <TimerConfig+0x1cc>)
20100604:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100606:	496a      	ldr	r1, [pc, #424]	; (201007b0 <TimerConfig+0x1d0>)
20100608:	400a      	ands	r2, r1
2010060a:	629a      	str	r2, [r3, #40]	; 0x28
2010060c:	4b69      	ldr	r3, [pc, #420]	; (201007b4 <TimerConfig+0x1d4>)
2010060e:	2200      	movs	r2, #0
20100610:	601a      	str	r2, [r3, #0]
20100612:	4b68      	ldr	r3, [pc, #416]	; (201007b4 <TimerConfig+0x1d4>)
20100614:	2204      	movs	r2, #4
20100616:	605a      	str	r2, [r3, #4]
20100618:	4b66      	ldr	r3, [pc, #408]	; (201007b4 <TimerConfig+0x1d4>)
2010061a:	4a67      	ldr	r2, [pc, #412]	; (201007b8 <TimerConfig+0x1d8>)
2010061c:	609a      	str	r2, [r3, #8]
2010061e:	4b65      	ldr	r3, [pc, #404]	; (201007b4 <TimerConfig+0x1d4>)
20100620:	2280      	movs	r2, #128	; 0x80
20100622:	0092      	lsls	r2, r2, #2
20100624:	611a      	str	r2, [r3, #16]
20100626:	4b63      	ldr	r3, [pc, #396]	; (201007b4 <TimerConfig+0x1d4>)
20100628:	2280      	movs	r2, #128	; 0x80
2010062a:	0092      	lsls	r2, r2, #2
2010062c:	615a      	str	r2, [r3, #20]
2010062e:	4b61      	ldr	r3, [pc, #388]	; (201007b4 <TimerConfig+0x1d4>)
20100630:	2280      	movs	r2, #128	; 0x80
20100632:	0092      	lsls	r2, r2, #2
20100634:	619a      	str	r2, [r3, #24]
20100636:	4b5f      	ldr	r3, [pc, #380]	; (201007b4 <TimerConfig+0x1d4>)
20100638:	4a5e      	ldr	r2, [pc, #376]	; (201007b4 <TimerConfig+0x1d4>)
2010063a:	6a12      	ldr	r2, [r2, #32]
2010063c:	495f      	ldr	r1, [pc, #380]	; (201007bc <TimerConfig+0x1dc>)
2010063e:	400a      	ands	r2, r1
20100640:	621a      	str	r2, [r3, #32]
20100642:	4b5c      	ldr	r3, [pc, #368]	; (201007b4 <TimerConfig+0x1d4>)
20100644:	4a5b      	ldr	r2, [pc, #364]	; (201007b4 <TimerConfig+0x1d4>)
20100646:	6a12      	ldr	r2, [r2, #32]
20100648:	21e0      	movs	r1, #224	; 0xe0
2010064a:	0109      	lsls	r1, r1, #4
2010064c:	430a      	orrs	r2, r1
2010064e:	621a      	str	r2, [r3, #32]
20100650:	4b58      	ldr	r3, [pc, #352]	; (201007b4 <TimerConfig+0x1d4>)
20100652:	4a58      	ldr	r2, [pc, #352]	; (201007b4 <TimerConfig+0x1d4>)
20100654:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100656:	210f      	movs	r1, #15
20100658:	438a      	bics	r2, r1
2010065a:	631a      	str	r2, [r3, #48]	; 0x30
2010065c:	4b55      	ldr	r3, [pc, #340]	; (201007b4 <TimerConfig+0x1d4>)
2010065e:	4a55      	ldr	r2, [pc, #340]	; (201007b4 <TimerConfig+0x1d4>)
20100660:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100662:	210c      	movs	r1, #12
20100664:	430a      	orrs	r2, r1
20100666:	631a      	str	r2, [r3, #48]	; 0x30
20100668:	4b52      	ldr	r3, [pc, #328]	; (201007b4 <TimerConfig+0x1d4>)
2010066a:	4a52      	ldr	r2, [pc, #328]	; (201007b4 <TimerConfig+0x1d4>)
2010066c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010066e:	2101      	movs	r1, #1
20100670:	430a      	orrs	r2, r1
20100672:	631a      	str	r2, [r3, #48]	; 0x30
20100674:	4b4f      	ldr	r3, [pc, #316]	; (201007b4 <TimerConfig+0x1d4>)
20100676:	4a4f      	ldr	r2, [pc, #316]	; (201007b4 <TimerConfig+0x1d4>)
20100678:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010067a:	4951      	ldr	r1, [pc, #324]	; (201007c0 <TimerConfig+0x1e0>)
2010067c:	400a      	ands	r2, r1
2010067e:	631a      	str	r2, [r3, #48]	; 0x30
20100680:	4b4c      	ldr	r3, [pc, #304]	; (201007b4 <TimerConfig+0x1d4>)
20100682:	4a4c      	ldr	r2, [pc, #304]	; (201007b4 <TimerConfig+0x1d4>)
20100684:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100686:	21c0      	movs	r1, #192	; 0xc0
20100688:	0109      	lsls	r1, r1, #4
2010068a:	430a      	orrs	r2, r1
2010068c:	631a      	str	r2, [r3, #48]	; 0x30
2010068e:	4b49      	ldr	r3, [pc, #292]	; (201007b4 <TimerConfig+0x1d4>)
20100690:	4a48      	ldr	r2, [pc, #288]	; (201007b4 <TimerConfig+0x1d4>)
20100692:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100694:	2180      	movs	r1, #128	; 0x80
20100696:	0049      	lsls	r1, r1, #1
20100698:	430a      	orrs	r2, r1
2010069a:	631a      	str	r2, [r3, #48]	; 0x30
2010069c:	4b45      	ldr	r3, [pc, #276]	; (201007b4 <TimerConfig+0x1d4>)
2010069e:	4a45      	ldr	r2, [pc, #276]	; (201007b4 <TimerConfig+0x1d4>)
201006a0:	6a52      	ldr	r2, [r2, #36]	; 0x24
201006a2:	4946      	ldr	r1, [pc, #280]	; (201007bc <TimerConfig+0x1dc>)
201006a4:	400a      	ands	r2, r1
201006a6:	625a      	str	r2, [r3, #36]	; 0x24
201006a8:	4b42      	ldr	r3, [pc, #264]	; (201007b4 <TimerConfig+0x1d4>)
201006aa:	4a42      	ldr	r2, [pc, #264]	; (201007b4 <TimerConfig+0x1d4>)
201006ac:	6a52      	ldr	r2, [r2, #36]	; 0x24
201006ae:	21e0      	movs	r1, #224	; 0xe0
201006b0:	0109      	lsls	r1, r1, #4
201006b2:	430a      	orrs	r2, r1
201006b4:	625a      	str	r2, [r3, #36]	; 0x24
201006b6:	4b3f      	ldr	r3, [pc, #252]	; (201007b4 <TimerConfig+0x1d4>)
201006b8:	4a3e      	ldr	r2, [pc, #248]	; (201007b4 <TimerConfig+0x1d4>)
201006ba:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006bc:	210f      	movs	r1, #15
201006be:	438a      	bics	r2, r1
201006c0:	635a      	str	r2, [r3, #52]	; 0x34
201006c2:	4b3c      	ldr	r3, [pc, #240]	; (201007b4 <TimerConfig+0x1d4>)
201006c4:	4a3b      	ldr	r2, [pc, #236]	; (201007b4 <TimerConfig+0x1d4>)
201006c6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006c8:	210c      	movs	r1, #12
201006ca:	430a      	orrs	r2, r1
201006cc:	635a      	str	r2, [r3, #52]	; 0x34
201006ce:	4b39      	ldr	r3, [pc, #228]	; (201007b4 <TimerConfig+0x1d4>)
201006d0:	4a38      	ldr	r2, [pc, #224]	; (201007b4 <TimerConfig+0x1d4>)
201006d2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006d4:	2101      	movs	r1, #1
201006d6:	430a      	orrs	r2, r1
201006d8:	635a      	str	r2, [r3, #52]	; 0x34
201006da:	4b36      	ldr	r3, [pc, #216]	; (201007b4 <TimerConfig+0x1d4>)
201006dc:	4a35      	ldr	r2, [pc, #212]	; (201007b4 <TimerConfig+0x1d4>)
201006de:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006e0:	4937      	ldr	r1, [pc, #220]	; (201007c0 <TimerConfig+0x1e0>)
201006e2:	400a      	ands	r2, r1
201006e4:	635a      	str	r2, [r3, #52]	; 0x34
201006e6:	4b33      	ldr	r3, [pc, #204]	; (201007b4 <TimerConfig+0x1d4>)
201006e8:	4a32      	ldr	r2, [pc, #200]	; (201007b4 <TimerConfig+0x1d4>)
201006ea:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006ec:	21c0      	movs	r1, #192	; 0xc0
201006ee:	0109      	lsls	r1, r1, #4
201006f0:	430a      	orrs	r2, r1
201006f2:	635a      	str	r2, [r3, #52]	; 0x34
201006f4:	4b2f      	ldr	r3, [pc, #188]	; (201007b4 <TimerConfig+0x1d4>)
201006f6:	4a2f      	ldr	r2, [pc, #188]	; (201007b4 <TimerConfig+0x1d4>)
201006f8:	6b52      	ldr	r2, [r2, #52]	; 0x34
201006fa:	2180      	movs	r1, #128	; 0x80
201006fc:	0049      	lsls	r1, r1, #1
201006fe:	430a      	orrs	r2, r1
20100700:	635a      	str	r2, [r3, #52]	; 0x34
20100702:	4b2c      	ldr	r3, [pc, #176]	; (201007b4 <TimerConfig+0x1d4>)
20100704:	4a2b      	ldr	r2, [pc, #172]	; (201007b4 <TimerConfig+0x1d4>)
20100706:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100708:	492c      	ldr	r1, [pc, #176]	; (201007bc <TimerConfig+0x1dc>)
2010070a:	400a      	ands	r2, r1
2010070c:	629a      	str	r2, [r3, #40]	; 0x28
2010070e:	4b29      	ldr	r3, [pc, #164]	; (201007b4 <TimerConfig+0x1d4>)
20100710:	4a28      	ldr	r2, [pc, #160]	; (201007b4 <TimerConfig+0x1d4>)
20100712:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100714:	21e0      	movs	r1, #224	; 0xe0
20100716:	0109      	lsls	r1, r1, #4
20100718:	430a      	orrs	r2, r1
2010071a:	629a      	str	r2, [r3, #40]	; 0x28
2010071c:	4b25      	ldr	r3, [pc, #148]	; (201007b4 <TimerConfig+0x1d4>)
2010071e:	4a25      	ldr	r2, [pc, #148]	; (201007b4 <TimerConfig+0x1d4>)
20100720:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100722:	210f      	movs	r1, #15
20100724:	438a      	bics	r2, r1
20100726:	639a      	str	r2, [r3, #56]	; 0x38
20100728:	4b22      	ldr	r3, [pc, #136]	; (201007b4 <TimerConfig+0x1d4>)
2010072a:	4a22      	ldr	r2, [pc, #136]	; (201007b4 <TimerConfig+0x1d4>)
2010072c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010072e:	210c      	movs	r1, #12
20100730:	430a      	orrs	r2, r1
20100732:	639a      	str	r2, [r3, #56]	; 0x38
20100734:	4b1f      	ldr	r3, [pc, #124]	; (201007b4 <TimerConfig+0x1d4>)
20100736:	4a1f      	ldr	r2, [pc, #124]	; (201007b4 <TimerConfig+0x1d4>)
20100738:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010073a:	2101      	movs	r1, #1
2010073c:	430a      	orrs	r2, r1
2010073e:	639a      	str	r2, [r3, #56]	; 0x38
20100740:	4b1c      	ldr	r3, [pc, #112]	; (201007b4 <TimerConfig+0x1d4>)
20100742:	4a1c      	ldr	r2, [pc, #112]	; (201007b4 <TimerConfig+0x1d4>)
20100744:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100746:	491e      	ldr	r1, [pc, #120]	; (201007c0 <TimerConfig+0x1e0>)
20100748:	400a      	ands	r2, r1
2010074a:	639a      	str	r2, [r3, #56]	; 0x38
2010074c:	4b19      	ldr	r3, [pc, #100]	; (201007b4 <TimerConfig+0x1d4>)
2010074e:	4a19      	ldr	r2, [pc, #100]	; (201007b4 <TimerConfig+0x1d4>)
20100750:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100752:	21c0      	movs	r1, #192	; 0xc0
20100754:	0109      	lsls	r1, r1, #4
20100756:	430a      	orrs	r2, r1
20100758:	639a      	str	r2, [r3, #56]	; 0x38
2010075a:	4b16      	ldr	r3, [pc, #88]	; (201007b4 <TimerConfig+0x1d4>)
2010075c:	4a15      	ldr	r2, [pc, #84]	; (201007b4 <TimerConfig+0x1d4>)
2010075e:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100760:	2180      	movs	r1, #128	; 0x80
20100762:	0049      	lsls	r1, r1, #1
20100764:	430a      	orrs	r2, r1
20100766:	639a      	str	r2, [r3, #56]	; 0x38
20100768:	4b12      	ldr	r3, [pc, #72]	; (201007b4 <TimerConfig+0x1d4>)
2010076a:	4a12      	ldr	r2, [pc, #72]	; (201007b4 <TimerConfig+0x1d4>)
2010076c:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010076e:	21c8      	movs	r1, #200	; 0xc8
20100770:	01c9      	lsls	r1, r1, #7
20100772:	430a      	orrs	r2, r1
20100774:	641a      	str	r2, [r3, #64]	; 0x40
20100776:	4b0f      	ldr	r3, [pc, #60]	; (201007b4 <TimerConfig+0x1d4>)
20100778:	4a0e      	ldr	r2, [pc, #56]	; (201007b4 <TimerConfig+0x1d4>)
2010077a:	6c52      	ldr	r2, [r2, #68]	; 0x44
2010077c:	21c8      	movs	r1, #200	; 0xc8
2010077e:	01c9      	lsls	r1, r1, #7
20100780:	430a      	orrs	r2, r1
20100782:	645a      	str	r2, [r3, #68]	; 0x44
20100784:	4b0b      	ldr	r3, [pc, #44]	; (201007b4 <TimerConfig+0x1d4>)
20100786:	4a0b      	ldr	r2, [pc, #44]	; (201007b4 <TimerConfig+0x1d4>)
20100788:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010078a:	21c8      	movs	r1, #200	; 0xc8
2010078c:	01c9      	lsls	r1, r1, #7
2010078e:	430a      	orrs	r2, r1
20100790:	649a      	str	r2, [r3, #72]	; 0x48
20100792:	4b08      	ldr	r3, [pc, #32]	; (201007b4 <TimerConfig+0x1d4>)
20100794:	4a07      	ldr	r2, [pc, #28]	; (201007b4 <TimerConfig+0x1d4>)
20100796:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100798:	21f0      	movs	r1, #240	; 0xf0
2010079a:	0149      	lsls	r1, r1, #5
2010079c:	430a      	orrs	r2, r1
2010079e:	659a      	str	r2, [r3, #88]	; 0x58
201007a0:	4b04      	ldr	r3, [pc, #16]	; (201007b4 <TimerConfig+0x1d4>)
201007a2:	2201      	movs	r2, #1
201007a4:	60da      	str	r2, [r3, #12]
201007a6:	46c0      	nop			; (mov r8, r8)
201007a8:	46bd      	mov	sp, r7
201007aa:	bd80      	pop	{r7, pc}
201007ac:	40020000 	.word	0x40020000
201007b0:	ff00ffff 	.word	0xff00ffff
201007b4:	40098000 	.word	0x40098000
201007b8:	000003ff 	.word	0x000003ff
201007bc:	fffff1ff 	.word	0xfffff1ff
201007c0:	fffff0ff 	.word	0xfffff0ff

201007c4 <adc_init>:
201007c4:	b580      	push	{r7, lr}
201007c6:	af00      	add	r7, sp, #0
201007c8:	4b07      	ldr	r3, [pc, #28]	; (201007e8 <adc_init+0x24>)
201007ca:	4a07      	ldr	r2, [pc, #28]	; (201007e8 <adc_init+0x24>)
201007cc:	69d2      	ldr	r2, [r2, #28]
201007ce:	2180      	movs	r1, #128	; 0x80
201007d0:	0289      	lsls	r1, r1, #10
201007d2:	430a      	orrs	r2, r1
201007d4:	61da      	str	r2, [r3, #28]
201007d6:	4b04      	ldr	r3, [pc, #16]	; (201007e8 <adc_init+0x24>)
201007d8:	4a04      	ldr	r2, [pc, #16]	; (201007ec <adc_init+0x28>)
201007da:	615a      	str	r2, [r3, #20]
201007dc:	4b04      	ldr	r3, [pc, #16]	; (201007f0 <adc_init+0x2c>)
201007de:	2245      	movs	r2, #69	; 0x45
201007e0:	601a      	str	r2, [r3, #0]
201007e2:	46c0      	nop			; (mov r8, r8)
201007e4:	46bd      	mov	sp, r7
201007e6:	bd80      	pop	{r7, pc}
201007e8:	40020000 	.word	0x40020000
201007ec:	00002020 	.word	0x00002020
201007f0:	40088000 	.word	0x40088000

201007f4 <dac_init>:
201007f4:	b580      	push	{r7, lr}
201007f6:	af00      	add	r7, sp, #0
201007f8:	4b07      	ldr	r3, [pc, #28]	; (20100818 <dac_init+0x24>)
201007fa:	4a07      	ldr	r2, [pc, #28]	; (20100818 <dac_init+0x24>)
201007fc:	69d2      	ldr	r2, [r2, #28]
201007fe:	2180      	movs	r1, #128	; 0x80
20100800:	02c9      	lsls	r1, r1, #11
20100802:	430a      	orrs	r2, r1
20100804:	61da      	str	r2, [r3, #28]
20100806:	4b05      	ldr	r3, [pc, #20]	; (2010081c <dac_init+0x28>)
20100808:	4a04      	ldr	r2, [pc, #16]	; (2010081c <dac_init+0x28>)
2010080a:	6812      	ldr	r2, [r2, #0]
2010080c:	2104      	movs	r1, #4
2010080e:	430a      	orrs	r2, r1
20100810:	601a      	str	r2, [r3, #0]
20100812:	46c0      	nop			; (mov r8, r8)
20100814:	46bd      	mov	sp, r7
20100816:	bd80      	pop	{r7, pc}
20100818:	40020000 	.word	0x40020000
2010081c:	40090000 	.word	0x40090000

20100820 <ssi_init>:
20100820:	b580      	push	{r7, lr}
20100822:	af00      	add	r7, sp, #0
20100824:	4b0c      	ldr	r3, [pc, #48]	; (20100858 <ssi_init+0x38>)
20100826:	4a0c      	ldr	r2, [pc, #48]	; (20100858 <ssi_init+0x38>)
20100828:	69d2      	ldr	r2, [r2, #28]
2010082a:	2180      	movs	r1, #128	; 0x80
2010082c:	0349      	lsls	r1, r1, #13
2010082e:	430a      	orrs	r2, r1
20100830:	61da      	str	r2, [r3, #28]
20100832:	4b09      	ldr	r3, [pc, #36]	; (20100858 <ssi_init+0x38>)
20100834:	4a09      	ldr	r2, [pc, #36]	; (2010085c <ssi_init+0x3c>)
20100836:	62da      	str	r2, [r3, #44]	; 0x2c
20100838:	4b09      	ldr	r3, [pc, #36]	; (20100860 <ssi_init+0x40>)
2010083a:	2200      	movs	r2, #0
2010083c:	605a      	str	r2, [r3, #4]
2010083e:	4b08      	ldr	r3, [pc, #32]	; (20100860 <ssi_init+0x40>)
20100840:	2210      	movs	r2, #16
20100842:	611a      	str	r2, [r3, #16]
20100844:	4b06      	ldr	r3, [pc, #24]	; (20100860 <ssi_init+0x40>)
20100846:	4a07      	ldr	r2, [pc, #28]	; (20100864 <ssi_init+0x44>)
20100848:	601a      	str	r2, [r3, #0]
2010084a:	4b05      	ldr	r3, [pc, #20]	; (20100860 <ssi_init+0x40>)
2010084c:	2202      	movs	r2, #2
2010084e:	605a      	str	r2, [r3, #4]
20100850:	46c0      	nop			; (mov r8, r8)
20100852:	46bd      	mov	sp, r7
20100854:	bd80      	pop	{r7, pc}
20100856:	46c0      	nop			; (mov r8, r8)
20100858:	40020000 	.word	0x40020000
2010085c:	02000a00 	.word	0x02000a00
20100860:	400a0000 	.word	0x400a0000
20100864:	0000021b 	.word	0x0000021b

20100868 <b2g>:
20100868:	b580      	push	{r7, lr}
2010086a:	b082      	sub	sp, #8
2010086c:	af00      	add	r7, sp, #0
2010086e:	6078      	str	r0, [r7, #4]
20100870:	687b      	ldr	r3, [r7, #4]
20100872:	085a      	lsrs	r2, r3, #1
20100874:	687b      	ldr	r3, [r7, #4]
20100876:	4053      	eors	r3, r2
20100878:	0018      	movs	r0, r3
2010087a:	46bd      	mov	sp, r7
2010087c:	b002      	add	sp, #8
2010087e:	bd80      	pop	{r7, pc}

20100880 <g2b>:
20100880:	b580      	push	{r7, lr}
20100882:	b084      	sub	sp, #16
20100884:	af00      	add	r7, sp, #0
20100886:	6078      	str	r0, [r7, #4]
20100888:	2300      	movs	r3, #0
2010088a:	60fb      	str	r3, [r7, #12]
2010088c:	2300      	movs	r3, #0
2010088e:	60fb      	str	r3, [r7, #12]
20100890:	e006      	b.n	201008a0 <g2b+0x20>
20100892:	68fa      	ldr	r2, [r7, #12]
20100894:	687b      	ldr	r3, [r7, #4]
20100896:	4053      	eors	r3, r2
20100898:	60fb      	str	r3, [r7, #12]
2010089a:	687b      	ldr	r3, [r7, #4]
2010089c:	085b      	lsrs	r3, r3, #1
2010089e:	607b      	str	r3, [r7, #4]
201008a0:	687b      	ldr	r3, [r7, #4]
201008a2:	2b00      	cmp	r3, #0
201008a4:	d1f5      	bne.n	20100892 <g2b+0x12>
201008a6:	68fb      	ldr	r3, [r7, #12]
201008a8:	0018      	movs	r0, r3
201008aa:	46bd      	mov	sp, r7
201008ac:	b004      	add	sp, #16
201008ae:	bd80      	pop	{r7, pc}

201008b0 <SystemInit>:
201008b0:	b580      	push	{r7, lr}
201008b2:	af00      	add	r7, sp, #0
201008b4:	f7ff fe5a 	bl	2010056c <ClkConfig>
201008b8:	f7ff fdb4 	bl	20100424 <PortConfig>
201008bc:	f7ff fe90 	bl	201005e0 <TimerConfig>
201008c0:	f7ff ff80 	bl	201007c4 <adc_init>
201008c4:	f7ff ff96 	bl	201007f4 <dac_init>
201008c8:	f7ff ffaa 	bl	20100820 <ssi_init>
201008cc:	46c0      	nop			; (mov r8, r8)
201008ce:	46bd      	mov	sp, r7
201008d0:	bd80      	pop	{r7, pc}
201008d2:	46c0      	nop			; (mov r8, r8)

201008d4 <get_dcA>:
201008d4:	b580      	push	{r7, lr}
201008d6:	b082      	sub	sp, #8
201008d8:	af00      	add	r7, sp, #0
201008da:	2300      	movs	r3, #0
201008dc:	603b      	str	r3, [r7, #0]
201008de:	2300      	movs	r3, #0
201008e0:	607b      	str	r3, [r7, #4]
201008e2:	e012      	b.n	2010090a <get_dcA+0x36>
201008e4:	4b0e      	ldr	r3, [pc, #56]	; (20100920 <get_dcA+0x4c>)
201008e6:	2237      	movs	r2, #55	; 0x37
201008e8:	601a      	str	r2, [r3, #0]
201008ea:	46c0      	nop			; (mov r8, r8)
201008ec:	4b0c      	ldr	r3, [pc, #48]	; (20100920 <get_dcA+0x4c>)
201008ee:	6a1b      	ldr	r3, [r3, #32]
201008f0:	2204      	movs	r2, #4
201008f2:	4013      	ands	r3, r2
201008f4:	d0fa      	beq.n	201008ec <get_dcA+0x18>
201008f6:	4b0a      	ldr	r3, [pc, #40]	; (20100920 <get_dcA+0x4c>)
201008f8:	699b      	ldr	r3, [r3, #24]
201008fa:	051b      	lsls	r3, r3, #20
201008fc:	0d1a      	lsrs	r2, r3, #20
201008fe:	683b      	ldr	r3, [r7, #0]
20100900:	18d3      	adds	r3, r2, r3
20100902:	603b      	str	r3, [r7, #0]
20100904:	687b      	ldr	r3, [r7, #4]
20100906:	3301      	adds	r3, #1
20100908:	607b      	str	r3, [r7, #4]
2010090a:	687b      	ldr	r3, [r7, #4]
2010090c:	4a05      	ldr	r2, [pc, #20]	; (20100924 <get_dcA+0x50>)
2010090e:	4293      	cmp	r3, r2
20100910:	dde8      	ble.n	201008e4 <get_dcA+0x10>
20100912:	683b      	ldr	r3, [r7, #0]
20100914:	129b      	asrs	r3, r3, #10
20100916:	0018      	movs	r0, r3
20100918:	46bd      	mov	sp, r7
2010091a:	b002      	add	sp, #8
2010091c:	bd80      	pop	{r7, pc}
2010091e:	46c0      	nop			; (mov r8, r8)
20100920:	40088000 	.word	0x40088000
20100924:	000003ff 	.word	0x000003ff

20100928 <get_dcB>:
20100928:	b580      	push	{r7, lr}
2010092a:	b082      	sub	sp, #8
2010092c:	af00      	add	r7, sp, #0
2010092e:	2300      	movs	r3, #0
20100930:	603b      	str	r3, [r7, #0]
20100932:	2300      	movs	r3, #0
20100934:	607b      	str	r3, [r7, #4]
20100936:	e012      	b.n	2010095e <get_dcB+0x36>
20100938:	4b0e      	ldr	r3, [pc, #56]	; (20100974 <get_dcB+0x4c>)
2010093a:	2247      	movs	r2, #71	; 0x47
2010093c:	601a      	str	r2, [r3, #0]
2010093e:	46c0      	nop			; (mov r8, r8)
20100940:	4b0c      	ldr	r3, [pc, #48]	; (20100974 <get_dcB+0x4c>)
20100942:	6a1b      	ldr	r3, [r3, #32]
20100944:	2204      	movs	r2, #4
20100946:	4013      	ands	r3, r2
20100948:	d0fa      	beq.n	20100940 <get_dcB+0x18>
2010094a:	4b0a      	ldr	r3, [pc, #40]	; (20100974 <get_dcB+0x4c>)
2010094c:	699b      	ldr	r3, [r3, #24]
2010094e:	051b      	lsls	r3, r3, #20
20100950:	0d1a      	lsrs	r2, r3, #20
20100952:	683b      	ldr	r3, [r7, #0]
20100954:	18d3      	adds	r3, r2, r3
20100956:	603b      	str	r3, [r7, #0]
20100958:	687b      	ldr	r3, [r7, #4]
2010095a:	3301      	adds	r3, #1
2010095c:	607b      	str	r3, [r7, #4]
2010095e:	687b      	ldr	r3, [r7, #4]
20100960:	4a05      	ldr	r2, [pc, #20]	; (20100978 <get_dcB+0x50>)
20100962:	4293      	cmp	r3, r2
20100964:	dde8      	ble.n	20100938 <get_dcB+0x10>
20100966:	683b      	ldr	r3, [r7, #0]
20100968:	129b      	asrs	r3, r3, #10
2010096a:	0018      	movs	r0, r3
2010096c:	46bd      	mov	sp, r7
2010096e:	b002      	add	sp, #8
20100970:	bd80      	pop	{r7, pc}
20100972:	46c0      	nop			; (mov r8, r8)
20100974:	40088000 	.word	0x40088000
20100978:	000003ff 	.word	0x000003ff

2010097c <wait_timer_ticks>:
2010097c:	b580      	push	{r7, lr}
2010097e:	b084      	sub	sp, #16
20100980:	af00      	add	r7, sp, #0
20100982:	6078      	str	r0, [r7, #4]
20100984:	2300      	movs	r3, #0
20100986:	60fb      	str	r3, [r7, #12]
20100988:	e00b      	b.n	201009a2 <wait_timer_ticks+0x26>
2010098a:	46c0      	nop			; (mov r8, r8)
2010098c:	4b09      	ldr	r3, [pc, #36]	; (201009b4 <wait_timer_ticks+0x38>)
2010098e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100990:	2202      	movs	r2, #2
20100992:	4013      	ands	r3, r2
20100994:	d0fa      	beq.n	2010098c <wait_timer_ticks+0x10>
20100996:	4b07      	ldr	r3, [pc, #28]	; (201009b4 <wait_timer_ticks+0x38>)
20100998:	2200      	movs	r2, #0
2010099a:	655a      	str	r2, [r3, #84]	; 0x54
2010099c:	68fb      	ldr	r3, [r7, #12]
2010099e:	3301      	adds	r3, #1
201009a0:	60fb      	str	r3, [r7, #12]
201009a2:	68fa      	ldr	r2, [r7, #12]
201009a4:	687b      	ldr	r3, [r7, #4]
201009a6:	429a      	cmp	r2, r3
201009a8:	dbef      	blt.n	2010098a <wait_timer_ticks+0xe>
201009aa:	46c0      	nop			; (mov r8, r8)
201009ac:	46bd      	mov	sp, r7
201009ae:	b004      	add	sp, #16
201009b0:	bd80      	pop	{r7, pc}
201009b2:	46c0      	nop			; (mov r8, r8)
201009b4:	40098000 	.word	0x40098000

201009b8 <mycos>:
201009b8:	4b05      	ldr	r3, [pc, #20]	; (201009d0 <mycos+0x18>)
201009ba:	4a06      	ldr	r2, [pc, #24]	; (201009d4 <mycos+0x1c>)
201009bc:	447b      	add	r3, pc
201009be:	0580      	lsls	r0, r0, #22
201009c0:	589b      	ldr	r3, [r3, r2]
201009c2:	0d00      	lsrs	r0, r0, #20
201009c4:	58c0      	ldr	r0, [r0, r3]
201009c6:	b082      	sub	sp, #8
201009c8:	9301      	str	r3, [sp, #4]
201009ca:	b002      	add	sp, #8
201009cc:	4770      	bx	lr
201009ce:	46c0      	nop			; (mov r8, r8)
201009d0:	ffeff648 	.word	0xffeff648
201009d4:	00000000 	.word	0x00000000

201009d8 <mysin>:
201009d8:	4b07      	ldr	r3, [pc, #28]	; (201009f8 <mysin+0x20>)
201009da:	4a08      	ldr	r2, [pc, #32]	; (201009fc <mysin+0x24>)
201009dc:	447b      	add	r3, pc
201009de:	589b      	ldr	r3, [r3, r2]
201009e0:	b082      	sub	sp, #8
201009e2:	9301      	str	r3, [sp, #4]
201009e4:	23c0      	movs	r3, #192	; 0xc0
201009e6:	009b      	lsls	r3, r3, #2
201009e8:	469c      	mov	ip, r3
201009ea:	4460      	add	r0, ip
201009ec:	9b01      	ldr	r3, [sp, #4]
201009ee:	0580      	lsls	r0, r0, #22
201009f0:	0d00      	lsrs	r0, r0, #20
201009f2:	58c0      	ldr	r0, [r0, r3]
201009f4:	b002      	add	sp, #8
201009f6:	4770      	bx	lr
201009f8:	ffeff628 	.word	0xffeff628
201009fc:	00000000 	.word	0x00000000

20100a00 <update>:
20100a00:	b510      	push	{r4, lr}
20100a02:	6804      	ldr	r4, [r0, #0]
20100a04:	6883      	ldr	r3, [r0, #8]
20100a06:	434c      	muls	r4, r1
20100a08:	2a00      	cmp	r2, #0
20100a0a:	d004      	beq.n	20100a16 <update+0x16>
20100a0c:	2b00      	cmp	r3, #0
20100a0e:	dd09      	ble.n	20100a24 <update+0x24>
20100a10:	2c00      	cmp	r4, #0
20100a12:	dd00      	ble.n	20100a16 <update+0x16>
20100a14:	2400      	movs	r4, #0
20100a16:	6842      	ldr	r2, [r0, #4]
20100a18:	18e3      	adds	r3, r4, r3
20100a1a:	4351      	muls	r1, r2
20100a1c:	18c9      	adds	r1, r1, r3
20100a1e:	60c1      	str	r1, [r0, #12]
20100a20:	6083      	str	r3, [r0, #8]
20100a22:	bd10      	pop	{r4, pc}
20100a24:	2b00      	cmp	r3, #0
20100a26:	d0f6      	beq.n	20100a16 <update+0x16>
20100a28:	43e2      	mvns	r2, r4
20100a2a:	17d2      	asrs	r2, r2, #31
20100a2c:	4014      	ands	r4, r2
20100a2e:	e7f2      	b.n	20100a16 <update+0x16>

20100a30 <dot3>:
20100a30:	6803      	ldr	r3, [r0, #0]
20100a32:	680a      	ldr	r2, [r1, #0]
20100a34:	b510      	push	{r4, lr}
20100a36:	435a      	muls	r2, r3
20100a38:	6844      	ldr	r4, [r0, #4]
20100a3a:	684b      	ldr	r3, [r1, #4]
20100a3c:	6880      	ldr	r0, [r0, #8]
20100a3e:	4363      	muls	r3, r4
20100a40:	18d2      	adds	r2, r2, r3
20100a42:	688b      	ldr	r3, [r1, #8]
20100a44:	4343      	muls	r3, r0
20100a46:	18d0      	adds	r0, r2, r3
20100a48:	bd10      	pop	{r4, pc}
20100a4a:	46c0      	nop			; (mov r8, r8)

20100a4c <abc_to_dq>:
20100a4c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a4e:	4647      	mov	r7, r8
20100a50:	b480      	push	{r7}
20100a52:	4b1d      	ldr	r3, [pc, #116]	; (20100ac8 <abc_to_dq+0x7c>)
20100a54:	4c1d      	ldr	r4, [pc, #116]	; (20100acc <abc_to_dq+0x80>)
20100a56:	447b      	add	r3, pc
20100a58:	591d      	ldr	r5, [r3, r4]
20100a5a:	23c0      	movs	r3, #192	; 0xc0
20100a5c:	009b      	lsls	r3, r3, #2
20100a5e:	18d3      	adds	r3, r2, r3
20100a60:	059b      	lsls	r3, r3, #22
20100a62:	0d1b      	lsrs	r3, r3, #20
20100a64:	595b      	ldr	r3, [r3, r5]
20100a66:	4698      	mov	r8, r3
20100a68:	4b19      	ldr	r3, [pc, #100]	; (20100ad0 <abc_to_dq+0x84>)
20100a6a:	18d4      	adds	r4, r2, r3
20100a6c:	05a4      	lsls	r4, r4, #22
20100a6e:	4b19      	ldr	r3, [pc, #100]	; (20100ad4 <abc_to_dq+0x88>)
20100a70:	0d24      	lsrs	r4, r4, #20
20100a72:	5967      	ldr	r7, [r4, r5]
20100a74:	18d4      	adds	r4, r2, r3
20100a76:	05a4      	lsls	r4, r4, #22
20100a78:	4b17      	ldr	r3, [pc, #92]	; (20100ad8 <abc_to_dq+0x8c>)
20100a7a:	0d24      	lsrs	r4, r4, #20
20100a7c:	5966      	ldr	r6, [r4, r5]
20100a7e:	18d4      	adds	r4, r2, r3
20100a80:	05a4      	lsls	r4, r4, #22
20100a82:	0d24      	lsrs	r4, r4, #20
20100a84:	5964      	ldr	r4, [r4, r5]
20100a86:	6843      	ldr	r3, [r0, #4]
20100a88:	4363      	muls	r3, r4
20100a8a:	0094      	lsls	r4, r2, #2
20100a8c:	469c      	mov	ip, r3
20100a8e:	3256      	adds	r2, #86	; 0x56
20100a90:	32ff      	adds	r2, #255	; 0xff
20100a92:	6803      	ldr	r3, [r0, #0]
20100a94:	5964      	ldr	r4, [r4, r5]
20100a96:	0592      	lsls	r2, r2, #22
20100a98:	0d12      	lsrs	r2, r2, #20
20100a9a:	5955      	ldr	r5, [r2, r5]
20100a9c:	435c      	muls	r4, r3
20100a9e:	6883      	ldr	r3, [r0, #8]
20100aa0:	4464      	add	r4, ip
20100aa2:	435d      	muls	r5, r3
20100aa4:	4643      	mov	r3, r8
20100aa6:	1964      	adds	r4, r4, r5
20100aa8:	12a4      	asrs	r4, r4, #10
20100aaa:	600c      	str	r4, [r1, #0]
20100aac:	6802      	ldr	r2, [r0, #0]
20100aae:	435a      	muls	r2, r3
20100ab0:	6843      	ldr	r3, [r0, #4]
20100ab2:	437b      	muls	r3, r7
20100ab4:	18d3      	adds	r3, r2, r3
20100ab6:	6882      	ldr	r2, [r0, #8]
20100ab8:	4372      	muls	r2, r6
20100aba:	189b      	adds	r3, r3, r2
20100abc:	425b      	negs	r3, r3
20100abe:	129b      	asrs	r3, r3, #10
20100ac0:	604b      	str	r3, [r1, #4]
20100ac2:	bc04      	pop	{r2}
20100ac4:	4690      	mov	r8, r2
20100ac6:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100ac8:	ffeff5ae 	.word	0xffeff5ae
20100acc:	00000000 	.word	0x00000000
20100ad0:	000005aa 	.word	0x000005aa
20100ad4:	00000455 	.word	0x00000455
20100ad8:	000002aa 	.word	0x000002aa

20100adc <dq_to_abc>:
20100adc:	b570      	push	{r4, r5, r6, lr}
20100ade:	4b1c      	ldr	r3, [pc, #112]	; (20100b50 <dq_to_abc+0x74>)
20100ae0:	4c1c      	ldr	r4, [pc, #112]	; (20100b54 <dq_to_abc+0x78>)
20100ae2:	447b      	add	r3, pc
20100ae4:	591d      	ldr	r5, [r3, r4]
20100ae6:	0093      	lsls	r3, r2, #2
20100ae8:	680c      	ldr	r4, [r1, #0]
20100aea:	595b      	ldr	r3, [r3, r5]
20100aec:	684e      	ldr	r6, [r1, #4]
20100aee:	435c      	muls	r4, r3
20100af0:	23c0      	movs	r3, #192	; 0xc0
20100af2:	009b      	lsls	r3, r3, #2
20100af4:	18d3      	adds	r3, r2, r3
20100af6:	059b      	lsls	r3, r3, #22
20100af8:	0d1b      	lsrs	r3, r3, #20
20100afa:	595b      	ldr	r3, [r3, r5]
20100afc:	4373      	muls	r3, r6
20100afe:	1ae3      	subs	r3, r4, r3
20100b00:	151b      	asrs	r3, r3, #20
20100b02:	6003      	str	r3, [r0, #0]
20100b04:	4b14      	ldr	r3, [pc, #80]	; (20100b58 <dq_to_abc+0x7c>)
20100b06:	680c      	ldr	r4, [r1, #0]
20100b08:	18d3      	adds	r3, r2, r3
20100b0a:	059b      	lsls	r3, r3, #22
20100b0c:	0d1b      	lsrs	r3, r3, #20
20100b0e:	595b      	ldr	r3, [r3, r5]
20100b10:	684e      	ldr	r6, [r1, #4]
20100b12:	435c      	muls	r4, r3
20100b14:	4b11      	ldr	r3, [pc, #68]	; (20100b5c <dq_to_abc+0x80>)
20100b16:	18d3      	adds	r3, r2, r3
20100b18:	059b      	lsls	r3, r3, #22
20100b1a:	0d1b      	lsrs	r3, r3, #20
20100b1c:	595b      	ldr	r3, [r3, r5]
20100b1e:	4373      	muls	r3, r6
20100b20:	1ae3      	subs	r3, r4, r3
20100b22:	151b      	asrs	r3, r3, #20
20100b24:	6043      	str	r3, [r0, #4]
20100b26:	0013      	movs	r3, r2
20100b28:	3356      	adds	r3, #86	; 0x56
20100b2a:	33ff      	adds	r3, #255	; 0xff
20100b2c:	059b      	lsls	r3, r3, #22
20100b2e:	0d1b      	lsrs	r3, r3, #20
20100b30:	595b      	ldr	r3, [r3, r5]
20100b32:	680c      	ldr	r4, [r1, #0]
20100b34:	435c      	muls	r4, r3
20100b36:	4b0a      	ldr	r3, [pc, #40]	; (20100b60 <dq_to_abc+0x84>)
20100b38:	469c      	mov	ip, r3
20100b3a:	4462      	add	r2, ip
20100b3c:	0592      	lsls	r2, r2, #22
20100b3e:	0d12      	lsrs	r2, r2, #20
20100b40:	5952      	ldr	r2, [r2, r5]
20100b42:	684b      	ldr	r3, [r1, #4]
20100b44:	4353      	muls	r3, r2
20100b46:	1ae3      	subs	r3, r4, r3
20100b48:	151b      	asrs	r3, r3, #20
20100b4a:	6083      	str	r3, [r0, #8]
20100b4c:	bd70      	pop	{r4, r5, r6, pc}
20100b4e:	46c0      	nop			; (mov r8, r8)
20100b50:	ffeff522 	.word	0xffeff522
20100b54:	00000000 	.word	0x00000000
20100b58:	000002aa 	.word	0x000002aa
20100b5c:	000005aa 	.word	0x000005aa
20100b60:	00000455 	.word	0x00000455

20100b64 <cord_atan>:
20100b64:	b5f0      	push	{r4, r5, r6, r7, lr}
20100b66:	4645      	mov	r5, r8
20100b68:	4657      	mov	r7, sl
20100b6a:	464e      	mov	r6, r9
20100b6c:	b4e0      	push	{r5, r6, r7}
20100b6e:	4b65      	ldr	r3, [pc, #404]	; (20100d04 <cord_atan+0x1a0>)
20100b70:	b090      	sub	sp, #64	; 0x40
20100b72:	447b      	add	r3, pc
20100b74:	001c      	movs	r4, r3
20100b76:	4694      	mov	ip, r2
20100b78:	466a      	mov	r2, sp
20100b7a:	468a      	mov	sl, r1
20100b7c:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b7e:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b80:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b82:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b84:	cc22      	ldmia	r4!, {r1, r5}
20100b86:	c222      	stmia	r2!, {r1, r5}
20100b88:	3320      	adds	r3, #32
20100b8a:	aa08      	add	r2, sp, #32
20100b8c:	4690      	mov	r8, r2
20100b8e:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b90:	c232      	stmia	r2!, {r1, r4, r5}
20100b92:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b94:	c232      	stmia	r2!, {r1, r4, r5}
20100b96:	cb12      	ldmia	r3!, {r1, r4}
20100b98:	c212      	stmia	r2!, {r1, r4}
20100b9a:	6802      	ldr	r2, [r0, #0]
20100b9c:	6845      	ldr	r5, [r0, #4]
20100b9e:	17d1      	asrs	r1, r2, #31
20100ba0:	1853      	adds	r3, r2, r1
20100ba2:	466e      	mov	r6, sp
20100ba4:	404b      	eors	r3, r1
20100ba6:	2d00      	cmp	r5, #0
20100ba8:	dd6c      	ble.n	20100c84 <cord_atan+0x120>
20100baa:	195f      	adds	r7, r3, r5
20100bac:	1aeb      	subs	r3, r5, r3
20100bae:	9d00      	ldr	r5, [sp, #0]
20100bb0:	2b00      	cmp	r3, #0
20100bb2:	d100      	bne.n	20100bb6 <cord_atan+0x52>
20100bb4:	e094      	b.n	20100ce0 <cord_atan+0x17c>
20100bb6:	105c      	asrs	r4, r3, #1
20100bb8:	2b00      	cmp	r3, #0
20100bba:	dd68      	ble.n	20100c8e <cord_atan+0x12a>
20100bbc:	1078      	asrs	r0, r7, #1
20100bbe:	1a1b      	subs	r3, r3, r0
20100bc0:	6870      	ldr	r0, [r6, #4]
20100bc2:	19e4      	adds	r4, r4, r7
20100bc4:	4681      	mov	r9, r0
20100bc6:	444d      	add	r5, r9
20100bc8:	2b00      	cmp	r3, #0
20100bca:	d100      	bne.n	20100bce <cord_atan+0x6a>
20100bcc:	e08a      	b.n	20100ce4 <cord_atan+0x180>
20100bce:	1098      	asrs	r0, r3, #2
20100bd0:	2b00      	cmp	r3, #0
20100bd2:	dd62      	ble.n	20100c9a <cord_atan+0x136>
20100bd4:	1907      	adds	r7, r0, r4
20100bd6:	10a4      	asrs	r4, r4, #2
20100bd8:	1b18      	subs	r0, r3, r4
20100bda:	68b3      	ldr	r3, [r6, #8]
20100bdc:	4699      	mov	r9, r3
20100bde:	444d      	add	r5, r9
20100be0:	2800      	cmp	r0, #0
20100be2:	d100      	bne.n	20100be6 <cord_atan+0x82>
20100be4:	e081      	b.n	20100cea <cord_atan+0x186>
20100be6:	10c3      	asrs	r3, r0, #3
20100be8:	2800      	cmp	r0, #0
20100bea:	dd5c      	ble.n	20100ca6 <cord_atan+0x142>
20100bec:	10fc      	asrs	r4, r7, #3
20100bee:	1b00      	subs	r0, r0, r4
20100bf0:	68f4      	ldr	r4, [r6, #12]
20100bf2:	19db      	adds	r3, r3, r7
20100bf4:	46a1      	mov	r9, r4
20100bf6:	444d      	add	r5, r9
20100bf8:	2800      	cmp	r0, #0
20100bfa:	d100      	bne.n	20100bfe <cord_atan+0x9a>
20100bfc:	e077      	b.n	20100cee <cord_atan+0x18a>
20100bfe:	1104      	asrs	r4, r0, #4
20100c00:	2800      	cmp	r0, #0
20100c02:	dd56      	ble.n	20100cb2 <cord_atan+0x14e>
20100c04:	18e7      	adds	r7, r4, r3
20100c06:	111b      	asrs	r3, r3, #4
20100c08:	1ac4      	subs	r4, r0, r3
20100c0a:	6933      	ldr	r3, [r6, #16]
20100c0c:	4699      	mov	r9, r3
20100c0e:	444d      	add	r5, r9
20100c10:	2c00      	cmp	r4, #0
20100c12:	d100      	bne.n	20100c16 <cord_atan+0xb2>
20100c14:	e06e      	b.n	20100cf4 <cord_atan+0x190>
20100c16:	1163      	asrs	r3, r4, #5
20100c18:	2c00      	cmp	r4, #0
20100c1a:	dd50      	ble.n	20100cbe <cord_atan+0x15a>
20100c1c:	1178      	asrs	r0, r7, #5
20100c1e:	1a20      	subs	r0, r4, r0
20100c20:	6974      	ldr	r4, [r6, #20]
20100c22:	19db      	adds	r3, r3, r7
20100c24:	46a1      	mov	r9, r4
20100c26:	444d      	add	r5, r9
20100c28:	2800      	cmp	r0, #0
20100c2a:	d065      	beq.n	20100cf8 <cord_atan+0x194>
20100c2c:	1184      	asrs	r4, r0, #6
20100c2e:	2800      	cmp	r0, #0
20100c30:	dd4b      	ble.n	20100cca <cord_atan+0x166>
20100c32:	18e7      	adds	r7, r4, r3
20100c34:	119b      	asrs	r3, r3, #6
20100c36:	1ac0      	subs	r0, r0, r3
20100c38:	69b3      	ldr	r3, [r6, #24]
20100c3a:	4699      	mov	r9, r3
20100c3c:	444d      	add	r5, r9
20100c3e:	2800      	cmp	r0, #0
20100c40:	d05d      	beq.n	20100cfe <cord_atan+0x19a>
20100c42:	dd48      	ble.n	20100cd6 <cord_atan+0x172>
20100c44:	69f3      	ldr	r3, [r6, #28]
20100c46:	11c0      	asrs	r0, r0, #7
20100c48:	19c7      	adds	r7, r0, r7
20100c4a:	18ed      	adds	r5, r5, r3
20100c4c:	2307      	movs	r3, #7
20100c4e:	2a00      	cmp	r2, #0
20100c50:	db14      	blt.n	20100c7c <cord_atan+0x118>
20100c52:	2d00      	cmp	r5, #0
20100c54:	da03      	bge.n	20100c5e <cord_atan+0xfa>
20100c56:	2280      	movs	r2, #128	; 0x80
20100c58:	00d2      	lsls	r2, r2, #3
20100c5a:	4691      	mov	r9, r2
20100c5c:	444d      	add	r5, r9
20100c5e:	4652      	mov	r2, sl
20100c60:	6015      	str	r5, [r2, #0]
20100c62:	4642      	mov	r2, r8
20100c64:	009b      	lsls	r3, r3, #2
20100c66:	58d0      	ldr	r0, [r2, r3]
20100c68:	4663      	mov	r3, ip
20100c6a:	4378      	muls	r0, r7
20100c6c:	1280      	asrs	r0, r0, #10
20100c6e:	6018      	str	r0, [r3, #0]
20100c70:	b010      	add	sp, #64	; 0x40
20100c72:	bc1c      	pop	{r2, r3, r4}
20100c74:	4690      	mov	r8, r2
20100c76:	4699      	mov	r9, r3
20100c78:	46a2      	mov	sl, r4
20100c7a:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100c7c:	2280      	movs	r2, #128	; 0x80
20100c7e:	0092      	lsls	r2, r2, #2
20100c80:	1b55      	subs	r5, r2, r5
20100c82:	e7e6      	b.n	20100c52 <cord_atan+0xee>
20100c84:	9900      	ldr	r1, [sp, #0]
20100c86:	1b5f      	subs	r7, r3, r5
20100c88:	195b      	adds	r3, r3, r5
20100c8a:	424d      	negs	r5, r1
20100c8c:	e790      	b.n	20100bb0 <cord_atan+0x4c>
20100c8e:	6871      	ldr	r1, [r6, #4]
20100c90:	1078      	asrs	r0, r7, #1
20100c92:	1b3c      	subs	r4, r7, r4
20100c94:	18c3      	adds	r3, r0, r3
20100c96:	1a6d      	subs	r5, r5, r1
20100c98:	e796      	b.n	20100bc8 <cord_atan+0x64>
20100c9a:	1a27      	subs	r7, r4, r0
20100c9c:	10a0      	asrs	r0, r4, #2
20100c9e:	18c0      	adds	r0, r0, r3
20100ca0:	68b3      	ldr	r3, [r6, #8]
20100ca2:	1aed      	subs	r5, r5, r3
20100ca4:	e79c      	b.n	20100be0 <cord_atan+0x7c>
20100ca6:	68f1      	ldr	r1, [r6, #12]
20100ca8:	10fc      	asrs	r4, r7, #3
20100caa:	1afb      	subs	r3, r7, r3
20100cac:	1820      	adds	r0, r4, r0
20100cae:	1a6d      	subs	r5, r5, r1
20100cb0:	e7a2      	b.n	20100bf8 <cord_atan+0x94>
20100cb2:	1b1f      	subs	r7, r3, r4
20100cb4:	111c      	asrs	r4, r3, #4
20100cb6:	6933      	ldr	r3, [r6, #16]
20100cb8:	1824      	adds	r4, r4, r0
20100cba:	1aed      	subs	r5, r5, r3
20100cbc:	e7a8      	b.n	20100c10 <cord_atan+0xac>
20100cbe:	6971      	ldr	r1, [r6, #20]
20100cc0:	1178      	asrs	r0, r7, #5
20100cc2:	1afb      	subs	r3, r7, r3
20100cc4:	1900      	adds	r0, r0, r4
20100cc6:	1a6d      	subs	r5, r5, r1
20100cc8:	e7ae      	b.n	20100c28 <cord_atan+0xc4>
20100cca:	1b1f      	subs	r7, r3, r4
20100ccc:	119b      	asrs	r3, r3, #6
20100cce:	1818      	adds	r0, r3, r0
20100cd0:	69b3      	ldr	r3, [r6, #24]
20100cd2:	1aed      	subs	r5, r5, r3
20100cd4:	e7b3      	b.n	20100c3e <cord_atan+0xda>
20100cd6:	69f3      	ldr	r3, [r6, #28]
20100cd8:	11c4      	asrs	r4, r0, #7
20100cda:	1b3f      	subs	r7, r7, r4
20100cdc:	1aed      	subs	r5, r5, r3
20100cde:	e7b5      	b.n	20100c4c <cord_atan+0xe8>
20100ce0:	2300      	movs	r3, #0
20100ce2:	e7b4      	b.n	20100c4e <cord_atan+0xea>
20100ce4:	0027      	movs	r7, r4
20100ce6:	2301      	movs	r3, #1
20100ce8:	e7b1      	b.n	20100c4e <cord_atan+0xea>
20100cea:	2302      	movs	r3, #2
20100cec:	e7af      	b.n	20100c4e <cord_atan+0xea>
20100cee:	001f      	movs	r7, r3
20100cf0:	2303      	movs	r3, #3
20100cf2:	e7ac      	b.n	20100c4e <cord_atan+0xea>
20100cf4:	2304      	movs	r3, #4
20100cf6:	e7aa      	b.n	20100c4e <cord_atan+0xea>
20100cf8:	001f      	movs	r7, r3
20100cfa:	2305      	movs	r3, #5
20100cfc:	e7a7      	b.n	20100c4e <cord_atan+0xea>
20100cfe:	2306      	movs	r3, #6
20100d00:	e7a5      	b.n	20100c4e <cord_atan+0xea>
20100d02:	46c0      	nop			; (mov r8, r8)
20100d04:	0000176e 	.word	0x0000176e

20100d08 <sinpwm>:
20100d08:	b5f0      	push	{r4, r5, r6, r7, lr}
20100d0a:	465f      	mov	r7, fp
20100d0c:	4656      	mov	r6, sl
20100d0e:	464d      	mov	r5, r9
20100d10:	4644      	mov	r4, r8
20100d12:	b4f0      	push	{r4, r5, r6, r7}
20100d14:	b089      	sub	sp, #36	; 0x24
20100d16:	466c      	mov	r4, sp
20100d18:	4b75      	ldr	r3, [pc, #468]	; (20100ef0 <sinpwm+0x1e8>)
20100d1a:	46eb      	mov	fp, sp
20100d1c:	447b      	add	r3, pc
20100d1e:	469a      	mov	sl, r3
20100d20:	4b74      	ldr	r3, [pc, #464]	; (20100ef4 <sinpwm+0x1ec>)
20100d22:	447b      	add	r3, pc
20100d24:	3320      	adds	r3, #32
20100d26:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100d28:	c4e0      	stmia	r4!, {r5, r6, r7}
20100d2a:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100d2c:	c4e0      	stmia	r4!, {r5, r6, r7}
20100d2e:	cb60      	ldmia	r3!, {r5, r6}
20100d30:	c460      	stmia	r4!, {r5, r6}
20100d32:	680b      	ldr	r3, [r1, #0]
20100d34:	684f      	ldr	r7, [r1, #4]
20100d36:	17dd      	asrs	r5, r3, #31
20100d38:	195c      	adds	r4, r3, r5
20100d3a:	469c      	mov	ip, r3
20100d3c:	406c      	eors	r4, r5
20100d3e:	2f00      	cmp	r7, #0
20100d40:	dc00      	bgt.n	20100d44 <sinpwm+0x3c>
20100d42:	e09c      	b.n	20100e7e <sinpwm+0x176>
20100d44:	19e3      	adds	r3, r4, r7
20100d46:	1b3c      	subs	r4, r7, r4
20100d48:	46a0      	mov	r8, r4
20100d4a:	4644      	mov	r4, r8
20100d4c:	2c00      	cmp	r4, #0
20100d4e:	d100      	bne.n	20100d52 <sinpwm+0x4a>
20100d50:	e0bc      	b.n	20100ecc <sinpwm+0x1c4>
20100d52:	dc00      	bgt.n	20100d56 <sinpwm+0x4e>
20100d54:	e097      	b.n	20100e86 <sinpwm+0x17e>
20100d56:	4644      	mov	r4, r8
20100d58:	4645      	mov	r5, r8
20100d5a:	1064      	asrs	r4, r4, #1
20100d5c:	18e4      	adds	r4, r4, r3
20100d5e:	105b      	asrs	r3, r3, #1
20100d60:	1aeb      	subs	r3, r5, r3
20100d62:	4698      	mov	r8, r3
20100d64:	4643      	mov	r3, r8
20100d66:	2b00      	cmp	r3, #0
20100d68:	d100      	bne.n	20100d6c <sinpwm+0x64>
20100d6a:	e0b1      	b.n	20100ed0 <sinpwm+0x1c8>
20100d6c:	dc00      	bgt.n	20100d70 <sinpwm+0x68>
20100d6e:	e08f      	b.n	20100e90 <sinpwm+0x188>
20100d70:	4643      	mov	r3, r8
20100d72:	4645      	mov	r5, r8
20100d74:	109b      	asrs	r3, r3, #2
20100d76:	191b      	adds	r3, r3, r4
20100d78:	10a4      	asrs	r4, r4, #2
20100d7a:	1b2c      	subs	r4, r5, r4
20100d7c:	46a0      	mov	r8, r4
20100d7e:	4644      	mov	r4, r8
20100d80:	2c00      	cmp	r4, #0
20100d82:	d100      	bne.n	20100d86 <sinpwm+0x7e>
20100d84:	e0a7      	b.n	20100ed6 <sinpwm+0x1ce>
20100d86:	dc00      	bgt.n	20100d8a <sinpwm+0x82>
20100d88:	e087      	b.n	20100e9a <sinpwm+0x192>
20100d8a:	4644      	mov	r4, r8
20100d8c:	4645      	mov	r5, r8
20100d8e:	10e4      	asrs	r4, r4, #3
20100d90:	18e4      	adds	r4, r4, r3
20100d92:	10db      	asrs	r3, r3, #3
20100d94:	1aeb      	subs	r3, r5, r3
20100d96:	4698      	mov	r8, r3
20100d98:	4643      	mov	r3, r8
20100d9a:	2b00      	cmp	r3, #0
20100d9c:	d100      	bne.n	20100da0 <sinpwm+0x98>
20100d9e:	e09c      	b.n	20100eda <sinpwm+0x1d2>
20100da0:	dc00      	bgt.n	20100da4 <sinpwm+0x9c>
20100da2:	e07f      	b.n	20100ea4 <sinpwm+0x19c>
20100da4:	4643      	mov	r3, r8
20100da6:	4645      	mov	r5, r8
20100da8:	111b      	asrs	r3, r3, #4
20100daa:	191b      	adds	r3, r3, r4
20100dac:	1124      	asrs	r4, r4, #4
20100dae:	1b2c      	subs	r4, r5, r4
20100db0:	2c00      	cmp	r4, #0
20100db2:	d100      	bne.n	20100db6 <sinpwm+0xae>
20100db4:	e094      	b.n	20100ee0 <sinpwm+0x1d8>
20100db6:	1165      	asrs	r5, r4, #5
20100db8:	46a8      	mov	r8, r5
20100dba:	2c00      	cmp	r4, #0
20100dbc:	dc00      	bgt.n	20100dc0 <sinpwm+0xb8>
20100dbe:	e076      	b.n	20100eae <sinpwm+0x1a6>
20100dc0:	4498      	add	r8, r3
20100dc2:	46c1      	mov	r9, r8
20100dc4:	115b      	asrs	r3, r3, #5
20100dc6:	1ae4      	subs	r4, r4, r3
20100dc8:	2c00      	cmp	r4, #0
20100dca:	d100      	bne.n	20100dce <sinpwm+0xc6>
20100dcc:	e08a      	b.n	20100ee4 <sinpwm+0x1dc>
20100dce:	11a3      	asrs	r3, r4, #6
20100dd0:	2c00      	cmp	r4, #0
20100dd2:	dc00      	bgt.n	20100dd6 <sinpwm+0xce>
20100dd4:	e070      	b.n	20100eb8 <sinpwm+0x1b0>
20100dd6:	444b      	add	r3, r9
20100dd8:	4698      	mov	r8, r3
20100dda:	464b      	mov	r3, r9
20100ddc:	119b      	asrs	r3, r3, #6
20100dde:	1ae4      	subs	r4, r4, r3
20100de0:	2c00      	cmp	r4, #0
20100de2:	d100      	bne.n	20100de6 <sinpwm+0xde>
20100de4:	e081      	b.n	20100eea <sinpwm+0x1e2>
20100de6:	dd6d      	ble.n	20100ec4 <sinpwm+0x1bc>
20100de8:	11e4      	asrs	r4, r4, #7
20100dea:	0023      	movs	r3, r4
20100dec:	4443      	add	r3, r8
20100dee:	2407      	movs	r4, #7
20100df0:	465d      	mov	r5, fp
20100df2:	00a4      	lsls	r4, r4, #2
20100df4:	592c      	ldr	r4, [r5, r4]
20100df6:	4655      	mov	r5, sl
20100df8:	4666      	mov	r6, ip
20100dfa:	4363      	muls	r3, r4
20100dfc:	4c3e      	ldr	r4, [pc, #248]	; (20100ef8 <sinpwm+0x1f0>)
20100dfe:	151b      	asrs	r3, r3, #20
20100e00:	592d      	ldr	r5, [r5, r4]
20100e02:	0094      	lsls	r4, r2, #2
20100e04:	5964      	ldr	r4, [r4, r5]
20100e06:	4374      	muls	r4, r6
20100e08:	26c0      	movs	r6, #192	; 0xc0
20100e0a:	00b6      	lsls	r6, r6, #2
20100e0c:	1996      	adds	r6, r2, r6
20100e0e:	05b6      	lsls	r6, r6, #22
20100e10:	0d36      	lsrs	r6, r6, #20
20100e12:	5976      	ldr	r6, [r6, r5]
20100e14:	4377      	muls	r7, r6
20100e16:	1be7      	subs	r7, r4, r7
20100e18:	4c38      	ldr	r4, [pc, #224]	; (20100efc <sinpwm+0x1f4>)
20100e1a:	153f      	asrs	r7, r7, #20
20100e1c:	1914      	adds	r4, r2, r4
20100e1e:	05a4      	lsls	r4, r4, #22
20100e20:	6007      	str	r7, [r0, #0]
20100e22:	0d24      	lsrs	r4, r4, #20
20100e24:	5964      	ldr	r4, [r4, r5]
20100e26:	680e      	ldr	r6, [r1, #0]
20100e28:	684f      	ldr	r7, [r1, #4]
20100e2a:	4366      	muls	r6, r4
20100e2c:	4c34      	ldr	r4, [pc, #208]	; (20100f00 <sinpwm+0x1f8>)
20100e2e:	1914      	adds	r4, r2, r4
20100e30:	05a4      	lsls	r4, r4, #22
20100e32:	0d24      	lsrs	r4, r4, #20
20100e34:	5964      	ldr	r4, [r4, r5]
20100e36:	437c      	muls	r4, r7
20100e38:	1b34      	subs	r4, r6, r4
20100e3a:	1524      	asrs	r4, r4, #20
20100e3c:	6044      	str	r4, [r0, #4]
20100e3e:	0014      	movs	r4, r2
20100e40:	3456      	adds	r4, #86	; 0x56
20100e42:	34ff      	adds	r4, #255	; 0xff
20100e44:	05a4      	lsls	r4, r4, #22
20100e46:	0d24      	lsrs	r4, r4, #20
20100e48:	680e      	ldr	r6, [r1, #0]
20100e4a:	5964      	ldr	r4, [r4, r5]
20100e4c:	4374      	muls	r4, r6
20100e4e:	4e2d      	ldr	r6, [pc, #180]	; (20100f04 <sinpwm+0x1fc>)
20100e50:	46b4      	mov	ip, r6
20100e52:	4462      	add	r2, ip
20100e54:	0592      	lsls	r2, r2, #22
20100e56:	0d12      	lsrs	r2, r2, #20
20100e58:	5955      	ldr	r5, [r2, r5]
20100e5a:	684a      	ldr	r2, [r1, #4]
20100e5c:	436a      	muls	r2, r5
20100e5e:	1aa2      	subs	r2, r4, r2
20100e60:	1512      	asrs	r2, r2, #20
20100e62:	6082      	str	r2, [r0, #8]
20100e64:	22fa      	movs	r2, #250	; 0xfa
20100e66:	2001      	movs	r0, #1
20100e68:	0052      	lsls	r2, r2, #1
20100e6a:	4293      	cmp	r3, r2
20100e6c:	dc00      	bgt.n	20100e70 <sinpwm+0x168>
20100e6e:	2000      	movs	r0, #0
20100e70:	b009      	add	sp, #36	; 0x24
20100e72:	bc3c      	pop	{r2, r3, r4, r5}
20100e74:	4690      	mov	r8, r2
20100e76:	4699      	mov	r9, r3
20100e78:	46a2      	mov	sl, r4
20100e7a:	46ab      	mov	fp, r5
20100e7c:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100e7e:	46a0      	mov	r8, r4
20100e80:	1be3      	subs	r3, r4, r7
20100e82:	44b8      	add	r8, r7
20100e84:	e761      	b.n	20100d4a <sinpwm+0x42>
20100e86:	1064      	asrs	r4, r4, #1
20100e88:	1b1c      	subs	r4, r3, r4
20100e8a:	105b      	asrs	r3, r3, #1
20100e8c:	4498      	add	r8, r3
20100e8e:	e769      	b.n	20100d64 <sinpwm+0x5c>
20100e90:	109b      	asrs	r3, r3, #2
20100e92:	1ae3      	subs	r3, r4, r3
20100e94:	10a4      	asrs	r4, r4, #2
20100e96:	44a0      	add	r8, r4
20100e98:	e771      	b.n	20100d7e <sinpwm+0x76>
20100e9a:	10e4      	asrs	r4, r4, #3
20100e9c:	1b1c      	subs	r4, r3, r4
20100e9e:	10db      	asrs	r3, r3, #3
20100ea0:	4498      	add	r8, r3
20100ea2:	e779      	b.n	20100d98 <sinpwm+0x90>
20100ea4:	111b      	asrs	r3, r3, #4
20100ea6:	1ae3      	subs	r3, r4, r3
20100ea8:	1124      	asrs	r4, r4, #4
20100eaa:	4444      	add	r4, r8
20100eac:	e780      	b.n	20100db0 <sinpwm+0xa8>
20100eae:	1b5d      	subs	r5, r3, r5
20100eb0:	115b      	asrs	r3, r3, #5
20100eb2:	46a9      	mov	r9, r5
20100eb4:	191c      	adds	r4, r3, r4
20100eb6:	e787      	b.n	20100dc8 <sinpwm+0xc0>
20100eb8:	464d      	mov	r5, r9
20100eba:	1aeb      	subs	r3, r5, r3
20100ebc:	4698      	mov	r8, r3
20100ebe:	11ab      	asrs	r3, r5, #6
20100ec0:	191c      	adds	r4, r3, r4
20100ec2:	e78d      	b.n	20100de0 <sinpwm+0xd8>
20100ec4:	4643      	mov	r3, r8
20100ec6:	11e4      	asrs	r4, r4, #7
20100ec8:	1b1b      	subs	r3, r3, r4
20100eca:	e790      	b.n	20100dee <sinpwm+0xe6>
20100ecc:	2400      	movs	r4, #0
20100ece:	e78f      	b.n	20100df0 <sinpwm+0xe8>
20100ed0:	0023      	movs	r3, r4
20100ed2:	2401      	movs	r4, #1
20100ed4:	e78c      	b.n	20100df0 <sinpwm+0xe8>
20100ed6:	2402      	movs	r4, #2
20100ed8:	e78a      	b.n	20100df0 <sinpwm+0xe8>
20100eda:	0023      	movs	r3, r4
20100edc:	2403      	movs	r4, #3
20100ede:	e787      	b.n	20100df0 <sinpwm+0xe8>
20100ee0:	2404      	movs	r4, #4
20100ee2:	e785      	b.n	20100df0 <sinpwm+0xe8>
20100ee4:	464b      	mov	r3, r9
20100ee6:	2405      	movs	r4, #5
20100ee8:	e782      	b.n	20100df0 <sinpwm+0xe8>
20100eea:	4643      	mov	r3, r8
20100eec:	2406      	movs	r4, #6
20100eee:	e77f      	b.n	20100df0 <sinpwm+0xe8>
20100ef0:	ffeff2e8 	.word	0xffeff2e8
20100ef4:	000015be 	.word	0x000015be
20100ef8:	00000000 	.word	0x00000000
20100efc:	000002aa 	.word	0x000002aa
20100f00:	000005aa 	.word	0x000005aa
20100f04:	00000455 	.word	0x00000455

20100f08 <svpwm>:
20100f08:	b5f0      	push	{r4, r5, r6, r7, lr}
20100f0a:	465f      	mov	r7, fp
20100f0c:	4656      	mov	r6, sl
20100f0e:	4644      	mov	r4, r8
20100f10:	464d      	mov	r5, r9
20100f12:	b4f0      	push	{r4, r5, r6, r7}
20100f14:	0005      	movs	r5, r0
20100f16:	48d0      	ldr	r0, [pc, #832]	; (20101258 <svpwm+0x350>)
20100f18:	b091      	sub	sp, #68	; 0x44
20100f1a:	4478      	add	r0, pc
20100f1c:	0006      	movs	r6, r0
20100f1e:	466c      	mov	r4, sp
20100f20:	4bce      	ldr	r3, [pc, #824]	; (2010125c <svpwm+0x354>)
20100f22:	4693      	mov	fp, r2
20100f24:	447b      	add	r3, pc
20100f26:	469a      	mov	sl, r3
20100f28:	468c      	mov	ip, r1
20100f2a:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f2c:	c40e      	stmia	r4!, {r1, r2, r3}
20100f2e:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f30:	c40e      	stmia	r4!, {r1, r2, r3}
20100f32:	ce0c      	ldmia	r6!, {r2, r3}
20100f34:	c40c      	stmia	r4!, {r2, r3}
20100f36:	ae08      	add	r6, sp, #32
20100f38:	0034      	movs	r4, r6
20100f3a:	3020      	adds	r0, #32
20100f3c:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f3e:	c40e      	stmia	r4!, {r1, r2, r3}
20100f40:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f42:	c40e      	stmia	r4!, {r1, r2, r3}
20100f44:	c80c      	ldmia	r0!, {r2, r3}
20100f46:	c40c      	stmia	r4!, {r2, r3}
20100f48:	4663      	mov	r3, ip
20100f4a:	681c      	ldr	r4, [r3, #0]
20100f4c:	466f      	mov	r7, sp
20100f4e:	17e2      	asrs	r2, r4, #31
20100f50:	18a3      	adds	r3, r4, r2
20100f52:	4053      	eors	r3, r2
20100f54:	4698      	mov	r8, r3
20100f56:	4663      	mov	r3, ip
20100f58:	685b      	ldr	r3, [r3, #4]
20100f5a:	2b00      	cmp	r3, #0
20100f5c:	dc00      	bgt.n	20100f60 <svpwm+0x58>
20100f5e:	e0b5      	b.n	201010cc <svpwm+0x1c4>
20100f60:	4641      	mov	r1, r8
20100f62:	18c8      	adds	r0, r1, r3
20100f64:	1a5b      	subs	r3, r3, r1
20100f66:	4698      	mov	r8, r3
20100f68:	9b00      	ldr	r3, [sp, #0]
20100f6a:	4641      	mov	r1, r8
20100f6c:	2900      	cmp	r1, #0
20100f6e:	d100      	bne.n	20100f72 <svpwm+0x6a>
20100f70:	e15f      	b.n	20101232 <svpwm+0x32a>
20100f72:	dc00      	bgt.n	20100f76 <svpwm+0x6e>
20100f74:	e0b0      	b.n	201010d8 <svpwm+0x1d0>
20100f76:	4641      	mov	r1, r8
20100f78:	1049      	asrs	r1, r1, #1
20100f7a:	4689      	mov	r9, r1
20100f7c:	1041      	asrs	r1, r0, #1
20100f7e:	4481      	add	r9, r0
20100f80:	4640      	mov	r0, r8
20100f82:	1a41      	subs	r1, r0, r1
20100f84:	4688      	mov	r8, r1
20100f86:	6879      	ldr	r1, [r7, #4]
20100f88:	468c      	mov	ip, r1
20100f8a:	4463      	add	r3, ip
20100f8c:	4641      	mov	r1, r8
20100f8e:	2900      	cmp	r1, #0
20100f90:	d100      	bne.n	20100f94 <svpwm+0x8c>
20100f92:	e150      	b.n	20101236 <svpwm+0x32e>
20100f94:	dc00      	bgt.n	20100f98 <svpwm+0x90>
20100f96:	e0a7      	b.n	201010e8 <svpwm+0x1e0>
20100f98:	4641      	mov	r1, r8
20100f9a:	1089      	asrs	r1, r1, #2
20100f9c:	4449      	add	r1, r9
20100f9e:	0008      	movs	r0, r1
20100fa0:	4649      	mov	r1, r9
20100fa2:	4642      	mov	r2, r8
20100fa4:	1089      	asrs	r1, r1, #2
20100fa6:	1a51      	subs	r1, r2, r1
20100fa8:	68ba      	ldr	r2, [r7, #8]
20100faa:	4688      	mov	r8, r1
20100fac:	4694      	mov	ip, r2
20100fae:	4463      	add	r3, ip
20100fb0:	4641      	mov	r1, r8
20100fb2:	2900      	cmp	r1, #0
20100fb4:	d100      	bne.n	20100fb8 <svpwm+0xb0>
20100fb6:	e141      	b.n	2010123c <svpwm+0x334>
20100fb8:	4642      	mov	r2, r8
20100fba:	dc00      	bgt.n	20100fbe <svpwm+0xb6>
20100fbc:	e09c      	b.n	201010f8 <svpwm+0x1f0>
20100fbe:	10c9      	asrs	r1, r1, #3
20100fc0:	1809      	adds	r1, r1, r0
20100fc2:	10c0      	asrs	r0, r0, #3
20100fc4:	1a12      	subs	r2, r2, r0
20100fc6:	4690      	mov	r8, r2
20100fc8:	68fa      	ldr	r2, [r7, #12]
20100fca:	4694      	mov	ip, r2
20100fcc:	4463      	add	r3, ip
20100fce:	4640      	mov	r0, r8
20100fd0:	2800      	cmp	r0, #0
20100fd2:	d100      	bne.n	20100fd6 <svpwm+0xce>
20100fd4:	e134      	b.n	20101240 <svpwm+0x338>
20100fd6:	4642      	mov	r2, r8
20100fd8:	dc00      	bgt.n	20100fdc <svpwm+0xd4>
20100fda:	e094      	b.n	20101106 <svpwm+0x1fe>
20100fdc:	1100      	asrs	r0, r0, #4
20100fde:	1840      	adds	r0, r0, r1
20100fe0:	1109      	asrs	r1, r1, #4
20100fe2:	1a52      	subs	r2, r2, r1
20100fe4:	4690      	mov	r8, r2
20100fe6:	693a      	ldr	r2, [r7, #16]
20100fe8:	4694      	mov	ip, r2
20100fea:	4463      	add	r3, ip
20100fec:	4641      	mov	r1, r8
20100fee:	2900      	cmp	r1, #0
20100ff0:	d100      	bne.n	20100ff4 <svpwm+0xec>
20100ff2:	e128      	b.n	20101246 <svpwm+0x33e>
20100ff4:	4642      	mov	r2, r8
20100ff6:	dc00      	bgt.n	20100ffa <svpwm+0xf2>
20100ff8:	e08c      	b.n	20101114 <svpwm+0x20c>
20100ffa:	1149      	asrs	r1, r1, #5
20100ffc:	4689      	mov	r9, r1
20100ffe:	1141      	asrs	r1, r0, #5
20101000:	1a51      	subs	r1, r2, r1
20101002:	697a      	ldr	r2, [r7, #20]
20101004:	4481      	add	r9, r0
20101006:	4694      	mov	ip, r2
20101008:	4463      	add	r3, ip
2010100a:	2900      	cmp	r1, #0
2010100c:	d100      	bne.n	20101010 <svpwm+0x108>
2010100e:	e11c      	b.n	2010124a <svpwm+0x342>
20101010:	1188      	asrs	r0, r1, #6
20101012:	2900      	cmp	r1, #0
20101014:	dc00      	bgt.n	20101018 <svpwm+0x110>
20101016:	e086      	b.n	20101126 <svpwm+0x21e>
20101018:	464a      	mov	r2, r9
2010101a:	4448      	add	r0, r9
2010101c:	4680      	mov	r8, r0
2010101e:	1190      	asrs	r0, r2, #6
20101020:	69ba      	ldr	r2, [r7, #24]
20101022:	1a09      	subs	r1, r1, r0
20101024:	4694      	mov	ip, r2
20101026:	4463      	add	r3, ip
20101028:	2900      	cmp	r1, #0
2010102a:	d100      	bne.n	2010102e <svpwm+0x126>
2010102c:	e110      	b.n	20101250 <svpwm+0x348>
2010102e:	dc00      	bgt.n	20101032 <svpwm+0x12a>
20101030:	e0e2      	b.n	201011f8 <svpwm+0x2f0>
20101032:	11c9      	asrs	r1, r1, #7
20101034:	4441      	add	r1, r8
20101036:	0008      	movs	r0, r1
20101038:	69f9      	ldr	r1, [r7, #28]
2010103a:	185b      	adds	r3, r3, r1
2010103c:	2107      	movs	r1, #7
2010103e:	2c00      	cmp	r4, #0
20101040:	db40      	blt.n	201010c4 <svpwm+0x1bc>
20101042:	2b00      	cmp	r3, #0
20101044:	da03      	bge.n	2010104e <svpwm+0x146>
20101046:	2280      	movs	r2, #128	; 0x80
20101048:	00d2      	lsls	r2, r2, #3
2010104a:	4694      	mov	ip, r2
2010104c:	4463      	add	r3, ip
2010104e:	22fa      	movs	r2, #250	; 0xfa
20101050:	0089      	lsls	r1, r1, #2
20101052:	5871      	ldr	r1, [r6, r1]
20101054:	445b      	add	r3, fp
20101056:	4341      	muls	r1, r0
20101058:	059b      	lsls	r3, r3, #22
2010105a:	1509      	asrs	r1, r1, #20
2010105c:	0d9b      	lsrs	r3, r3, #22
2010105e:	0052      	lsls	r2, r2, #1
20101060:	2400      	movs	r4, #0
20101062:	4291      	cmp	r1, r2
20101064:	dd01      	ble.n	2010106a <svpwm+0x162>
20101066:	0011      	movs	r1, r2
20101068:	3401      	adds	r4, #1
2010106a:	0058      	lsls	r0, r3, #1
2010106c:	18c0      	adds	r0, r0, r3
2010106e:	1240      	asrs	r0, r0, #9
20101070:	3801      	subs	r0, #1
20101072:	4a7b      	ldr	r2, [pc, #492]	; (20101260 <svpwm+0x358>)
20101074:	2804      	cmp	r0, #4
20101076:	d920      	bls.n	201010ba <svpwm+0x1b2>
20101078:	26c0      	movs	r6, #192	; 0xc0
2010107a:	4650      	mov	r0, sl
2010107c:	00b6      	lsls	r6, r6, #2
2010107e:	46b4      	mov	ip, r6
20101080:	5880      	ldr	r0, [r0, r2]
20101082:	4a78      	ldr	r2, [pc, #480]	; (20101264 <svpwm+0x35c>)
20101084:	1ad2      	subs	r2, r2, r3
20101086:	4463      	add	r3, ip
20101088:	0592      	lsls	r2, r2, #22
2010108a:	059b      	lsls	r3, r3, #22
2010108c:	0d12      	lsrs	r2, r2, #20
2010108e:	0d1b      	lsrs	r3, r3, #20
20101090:	581b      	ldr	r3, [r3, r0]
20101092:	5812      	ldr	r2, [r2, r0]
20101094:	434a      	muls	r2, r1
20101096:	4359      	muls	r1, r3
20101098:	1292      	asrs	r2, r2, #10
2010109a:	1289      	asrs	r1, r1, #10
2010109c:	1853      	adds	r3, r2, r1
2010109e:	602b      	str	r3, [r5, #0]
201010a0:	1a8b      	subs	r3, r1, r2
201010a2:	4252      	negs	r2, r2
201010a4:	1a52      	subs	r2, r2, r1
201010a6:	606b      	str	r3, [r5, #4]
201010a8:	60aa      	str	r2, [r5, #8]
201010aa:	0020      	movs	r0, r4
201010ac:	b011      	add	sp, #68	; 0x44
201010ae:	bc3c      	pop	{r2, r3, r4, r5}
201010b0:	4690      	mov	r8, r2
201010b2:	4699      	mov	r9, r3
201010b4:	46a2      	mov	sl, r4
201010b6:	46ab      	mov	fp, r5
201010b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
201010ba:	f000 f909 	bl	201012d0 <__gnu_thumb1_case_uqi>
201010be:	856c      	.short	0x856c
201010c0:	553d      	.short	0x553d
201010c2:	a3          	.byte	0xa3
201010c3:	00          	.byte	0x00
201010c4:	2480      	movs	r4, #128	; 0x80
201010c6:	00a4      	lsls	r4, r4, #2
201010c8:	1ae3      	subs	r3, r4, r3
201010ca:	e7ba      	b.n	20101042 <svpwm+0x13a>
201010cc:	4642      	mov	r2, r8
201010ce:	4498      	add	r8, r3
201010d0:	1ad0      	subs	r0, r2, r3
201010d2:	9b00      	ldr	r3, [sp, #0]
201010d4:	425b      	negs	r3, r3
201010d6:	e748      	b.n	20100f6a <svpwm+0x62>
201010d8:	1049      	asrs	r1, r1, #1
201010da:	1a42      	subs	r2, r0, r1
201010dc:	4691      	mov	r9, r2
201010de:	687a      	ldr	r2, [r7, #4]
201010e0:	1041      	asrs	r1, r0, #1
201010e2:	4488      	add	r8, r1
201010e4:	1a9b      	subs	r3, r3, r2
201010e6:	e751      	b.n	20100f8c <svpwm+0x84>
201010e8:	464a      	mov	r2, r9
201010ea:	1089      	asrs	r1, r1, #2
201010ec:	1a50      	subs	r0, r2, r1
201010ee:	1091      	asrs	r1, r2, #2
201010f0:	68ba      	ldr	r2, [r7, #8]
201010f2:	4488      	add	r8, r1
201010f4:	1a9b      	subs	r3, r3, r2
201010f6:	e75b      	b.n	20100fb0 <svpwm+0xa8>
201010f8:	10c9      	asrs	r1, r1, #3
201010fa:	68fa      	ldr	r2, [r7, #12]
201010fc:	1a41      	subs	r1, r0, r1
201010fe:	10c0      	asrs	r0, r0, #3
20101100:	4480      	add	r8, r0
20101102:	1a9b      	subs	r3, r3, r2
20101104:	e763      	b.n	20100fce <svpwm+0xc6>
20101106:	1100      	asrs	r0, r0, #4
20101108:	693a      	ldr	r2, [r7, #16]
2010110a:	1a08      	subs	r0, r1, r0
2010110c:	1109      	asrs	r1, r1, #4
2010110e:	4488      	add	r8, r1
20101110:	1a9b      	subs	r3, r3, r2
20101112:	e76b      	b.n	20100fec <svpwm+0xe4>
20101114:	1149      	asrs	r1, r1, #5
20101116:	1a42      	subs	r2, r0, r1
20101118:	1140      	asrs	r0, r0, #5
2010111a:	0001      	movs	r1, r0
2010111c:	4691      	mov	r9, r2
2010111e:	697a      	ldr	r2, [r7, #20]
20101120:	4441      	add	r1, r8
20101122:	1a9b      	subs	r3, r3, r2
20101124:	e771      	b.n	2010100a <svpwm+0x102>
20101126:	464a      	mov	r2, r9
20101128:	1a12      	subs	r2, r2, r0
2010112a:	4690      	mov	r8, r2
2010112c:	464a      	mov	r2, r9
2010112e:	1190      	asrs	r0, r2, #6
20101130:	69ba      	ldr	r2, [r7, #24]
20101132:	1841      	adds	r1, r0, r1
20101134:	1a9b      	subs	r3, r3, r2
20101136:	e777      	b.n	20101028 <svpwm+0x120>
20101138:	4650      	mov	r0, sl
2010113a:	5880      	ldr	r0, [r0, r2]
2010113c:	4a4a      	ldr	r2, [pc, #296]	; (20101268 <svpwm+0x360>)
2010113e:	1ad2      	subs	r2, r2, r3
20101140:	3301      	adds	r3, #1
20101142:	0592      	lsls	r2, r2, #22
20101144:	33ff      	adds	r3, #255	; 0xff
20101146:	0d12      	lsrs	r2, r2, #20
20101148:	059b      	lsls	r3, r3, #22
2010114a:	5812      	ldr	r2, [r2, r0]
2010114c:	0d1b      	lsrs	r3, r3, #20
2010114e:	581b      	ldr	r3, [r3, r0]
20101150:	434a      	muls	r2, r1
20101152:	434b      	muls	r3, r1
20101154:	1292      	asrs	r2, r2, #10
20101156:	1299      	asrs	r1, r3, #10
20101158:	4253      	negs	r3, r2
2010115a:	1a5b      	subs	r3, r3, r1
2010115c:	602b      	str	r3, [r5, #0]
2010115e:	1a53      	subs	r3, r2, r1
20101160:	1851      	adds	r1, r2, r1
20101162:	606b      	str	r3, [r5, #4]
20101164:	60a9      	str	r1, [r5, #8]
20101166:	e7a0      	b.n	201010aa <svpwm+0x1a2>
20101168:	4650      	mov	r0, sl
2010116a:	5880      	ldr	r0, [r0, r2]
2010116c:	4a3f      	ldr	r2, [pc, #252]	; (2010126c <svpwm+0x364>)
2010116e:	1ad2      	subs	r2, r2, r3
20101170:	3356      	adds	r3, #86	; 0x56
20101172:	0592      	lsls	r2, r2, #22
20101174:	059b      	lsls	r3, r3, #22
20101176:	0d12      	lsrs	r2, r2, #20
20101178:	0d1b      	lsrs	r3, r3, #20
2010117a:	5816      	ldr	r6, [r2, r0]
2010117c:	581b      	ldr	r3, [r3, r0]
2010117e:	434e      	muls	r6, r1
20101180:	434b      	muls	r3, r1
20101182:	12b6      	asrs	r6, r6, #10
20101184:	1299      	asrs	r1, r3, #10
20101186:	1b8b      	subs	r3, r1, r6
20101188:	602b      	str	r3, [r5, #0]
2010118a:	4273      	negs	r3, r6
2010118c:	1a5b      	subs	r3, r3, r1
2010118e:	1871      	adds	r1, r6, r1
20101190:	606b      	str	r3, [r5, #4]
20101192:	60a9      	str	r1, [r5, #8]
20101194:	e789      	b.n	201010aa <svpwm+0x1a2>
20101196:	4650      	mov	r0, sl
20101198:	5886      	ldr	r6, [r0, r2]
2010119a:	4a35      	ldr	r2, [pc, #212]	; (20101270 <svpwm+0x368>)
2010119c:	1ad2      	subs	r2, r2, r3
2010119e:	0592      	lsls	r2, r2, #22
201011a0:	0d12      	lsrs	r2, r2, #20
201011a2:	5990      	ldr	r0, [r2, r6]
201011a4:	4a33      	ldr	r2, [pc, #204]	; (20101274 <svpwm+0x36c>)
201011a6:	4348      	muls	r0, r1
201011a8:	4694      	mov	ip, r2
201011aa:	4463      	add	r3, ip
201011ac:	059b      	lsls	r3, r3, #22
201011ae:	0d1b      	lsrs	r3, r3, #20
201011b0:	599b      	ldr	r3, [r3, r6]
201011b2:	1280      	asrs	r0, r0, #10
201011b4:	4359      	muls	r1, r3
201011b6:	1289      	asrs	r1, r1, #10
201011b8:	1a43      	subs	r3, r0, r1
201011ba:	602b      	str	r3, [r5, #0]
201011bc:	1843      	adds	r3, r0, r1
201011be:	4240      	negs	r0, r0
201011c0:	1a40      	subs	r0, r0, r1
201011c2:	606b      	str	r3, [r5, #4]
201011c4:	60a8      	str	r0, [r5, #8]
201011c6:	e770      	b.n	201010aa <svpwm+0x1a2>
201011c8:	4650      	mov	r0, sl
201011ca:	5880      	ldr	r0, [r0, r2]
201011cc:	4a2a      	ldr	r2, [pc, #168]	; (20101278 <svpwm+0x370>)
201011ce:	1ad2      	subs	r2, r2, r3
201011d0:	33ac      	adds	r3, #172	; 0xac
201011d2:	0592      	lsls	r2, r2, #22
201011d4:	33ff      	adds	r3, #255	; 0xff
201011d6:	0d12      	lsrs	r2, r2, #20
201011d8:	059b      	lsls	r3, r3, #22
201011da:	5816      	ldr	r6, [r2, r0]
201011dc:	0d1b      	lsrs	r3, r3, #20
201011de:	581b      	ldr	r3, [r3, r0]
201011e0:	434e      	muls	r6, r1
201011e2:	4359      	muls	r1, r3
201011e4:	12b6      	asrs	r6, r6, #10
201011e6:	1289      	asrs	r1, r1, #10
201011e8:	4273      	negs	r3, r6
201011ea:	1a5b      	subs	r3, r3, r1
201011ec:	602b      	str	r3, [r5, #0]
201011ee:	1873      	adds	r3, r6, r1
201011f0:	1b89      	subs	r1, r1, r6
201011f2:	606b      	str	r3, [r5, #4]
201011f4:	60a9      	str	r1, [r5, #8]
201011f6:	e758      	b.n	201010aa <svpwm+0x1a2>
201011f8:	4642      	mov	r2, r8
201011fa:	11c9      	asrs	r1, r1, #7
201011fc:	1a50      	subs	r0, r2, r1
201011fe:	69f9      	ldr	r1, [r7, #28]
20101200:	1a5b      	subs	r3, r3, r1
20101202:	e71b      	b.n	2010103c <svpwm+0x134>
20101204:	4650      	mov	r0, sl
20101206:	5882      	ldr	r2, [r0, r2]
20101208:	481c      	ldr	r0, [pc, #112]	; (2010127c <svpwm+0x374>)
2010120a:	1ac0      	subs	r0, r0, r3
2010120c:	3b55      	subs	r3, #85	; 0x55
2010120e:	0580      	lsls	r0, r0, #22
20101210:	059b      	lsls	r3, r3, #22
20101212:	0d00      	lsrs	r0, r0, #20
20101214:	0d1b      	lsrs	r3, r3, #20
20101216:	589b      	ldr	r3, [r3, r2]
20101218:	5880      	ldr	r0, [r0, r2]
2010121a:	4348      	muls	r0, r1
2010121c:	4359      	muls	r1, r3
2010121e:	1280      	asrs	r0, r0, #10
20101220:	1289      	asrs	r1, r1, #10
20101222:	1843      	adds	r3, r0, r1
20101224:	602b      	str	r3, [r5, #0]
20101226:	4243      	negs	r3, r0
20101228:	1a5b      	subs	r3, r3, r1
2010122a:	1a41      	subs	r1, r0, r1
2010122c:	606b      	str	r3, [r5, #4]
2010122e:	60a9      	str	r1, [r5, #8]
20101230:	e73b      	b.n	201010aa <svpwm+0x1a2>
20101232:	2100      	movs	r1, #0
20101234:	e703      	b.n	2010103e <svpwm+0x136>
20101236:	4648      	mov	r0, r9
20101238:	2101      	movs	r1, #1
2010123a:	e700      	b.n	2010103e <svpwm+0x136>
2010123c:	2102      	movs	r1, #2
2010123e:	e6fe      	b.n	2010103e <svpwm+0x136>
20101240:	0008      	movs	r0, r1
20101242:	2103      	movs	r1, #3
20101244:	e6fb      	b.n	2010103e <svpwm+0x136>
20101246:	2104      	movs	r1, #4
20101248:	e6f9      	b.n	2010103e <svpwm+0x136>
2010124a:	4648      	mov	r0, r9
2010124c:	2105      	movs	r1, #5
2010124e:	e6f6      	b.n	2010103e <svpwm+0x136>
20101250:	4640      	mov	r0, r8
20101252:	2106      	movs	r1, #6
20101254:	e6f3      	b.n	2010103e <svpwm+0x136>
20101256:	46c0      	nop			; (mov r8, r8)
20101258:	000013c6 	.word	0x000013c6
2010125c:	ffeff0e0 	.word	0xffeff0e0
20101260:	00000000 	.word	0x00000000
20101264:	000007aa 	.word	0x000007aa
20101268:	000009aa 	.word	0x000009aa
2010126c:	00000a54 	.word	0x00000a54
20101270:	00000854 	.word	0x00000854
20101274:	00000256 	.word	0x00000256
20101278:	000008ff 	.word	0x000008ff
2010127c:	00000aff 	.word	0x00000aff

20101280 <get_speed>:
20101280:	4a10      	ldr	r2, [pc, #64]	; (201012c4 <get_speed+0x44>)
20101282:	b510      	push	{r4, lr}
20101284:	447a      	add	r2, pc
20101286:	6813      	ldr	r3, [r2, #0]
20101288:	6854      	ldr	r4, [r2, #4]
2010128a:	1ac3      	subs	r3, r0, r3
2010128c:	6050      	str	r0, [r2, #4]
2010128e:	6014      	str	r4, [r2, #0]
20101290:	17da      	asrs	r2, r3, #31
20101292:	1898      	adds	r0, r3, r2
20101294:	4050      	eors	r0, r2
20101296:	22fa      	movs	r2, #250	; 0xfa
20101298:	0092      	lsls	r2, r2, #2
2010129a:	4290      	cmp	r0, r2
2010129c:	dd04      	ble.n	201012a8 <get_speed+0x28>
2010129e:	2b00      	cmp	r3, #0
201012a0:	db0a      	blt.n	201012b8 <get_speed+0x38>
201012a2:	4a09      	ldr	r2, [pc, #36]	; (201012c8 <get_speed+0x48>)
201012a4:	4694      	mov	ip, r2
201012a6:	4463      	add	r3, ip
201012a8:	680a      	ldr	r2, [r1, #0]
201012aa:	4808      	ldr	r0, [pc, #32]	; (201012cc <get_speed+0x4c>)
201012ac:	18d2      	adds	r2, r2, r3
201012ae:	105b      	asrs	r3, r3, #1
201012b0:	4343      	muls	r3, r0
201012b2:	600a      	str	r2, [r1, #0]
201012b4:	1318      	asrs	r0, r3, #12
201012b6:	bd10      	pop	{r4, pc}
201012b8:	2280      	movs	r2, #128	; 0x80
201012ba:	0152      	lsls	r2, r2, #5
201012bc:	4694      	mov	ip, r2
201012be:	4463      	add	r3, ip
201012c0:	e7f2      	b.n	201012a8 <get_speed+0x28>
201012c2:	46c0      	nop			; (mov r8, r8)
201012c4:	ffefed9c 	.word	0xffefed9c
201012c8:	fffff000 	.word	0xfffff000
201012cc:	0002ae7c 	.word	0x0002ae7c

201012d0 <__gnu_thumb1_case_uqi>:
201012d0:	b402      	push	{r1}
201012d2:	4671      	mov	r1, lr
201012d4:	0849      	lsrs	r1, r1, #1
201012d6:	0049      	lsls	r1, r1, #1
201012d8:	5c09      	ldrb	r1, [r1, r0]
201012da:	0049      	lsls	r1, r1, #1
201012dc:	448e      	add	lr, r1
201012de:	bc02      	pop	{r1}
201012e0:	4770      	bx	lr
201012e2:	46c0      	nop			; (mov r8, r8)
